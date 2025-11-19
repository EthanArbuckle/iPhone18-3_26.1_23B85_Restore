void sub_20CE04D98(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_20CE13714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v8 = sub_20CE13D44();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = sub_20CE13744();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_27C811D18 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = sub_20CE12CB4();
  __swift_project_value_buffer(v10, qword_27C8177B0);
  v11 = sub_20CE12C94();
  v12 = sub_20CE13CD4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v53 = v14;
    *v13 = 136446210;
    v15 = sub_20CE14414();
    v17 = sub_20CD96DCC(v15, v16, &v53);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20CD70000, v11, v12, "[%{public}s] startOverButtonTapped ", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x20F314110](v14, -1, -1);
    MEMORY[0x20F314110](v13, -1, -1);
  }

  v18 = v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v24 = sub_20CE12C94();
    v31 = sub_20CE13CC4();
    if (os_log_type_enabled(v24, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v53 = v33;
      *v32 = 136446210;
      v34 = sub_20CE14414();
      v36 = sub_20CD96DCC(v34, v35, &v53);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_20CD70000, v24, v31, "[%{public}s] Interruption 'restart' button pressed without an active delegate", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x20F314110](v33, -1, -1);
      MEMORY[0x20F314110](v32, -1, -1);
    }

    goto LABEL_16;
  }

  v19 = v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption;
  v20 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  if (!v20)
  {
    v24 = sub_20CE12C94();
    v37 = sub_20CE13CC4();
    if (os_log_type_enabled(v24, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = v39;
      *v38 = 136446210;
      v40 = sub_20CE14414();
      v42 = sub_20CD96DCC(v40, v41, &v53);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_20CD70000, v24, v37, "[%{public}s] Start Over tapped on interruption screen but no active interruption is being tracked. Ignoring tap.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x20F314110](v39, -1, -1);
      MEMORY[0x20F314110](v38, -1, -1);
    }

    goto LABEL_15;
  }

  v21 = *(v19 + 8);
  if (v20 != a1)
  {
    v22 = v20;
    v23 = v21;
    v24 = sub_20CE12C94();
    v25 = sub_20CE13CD4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v53 = v27;
      *v26 = 136446210;
      v28 = sub_20CE14414();
      v30 = sub_20CD96DCC(v28, v29, &v53);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_20CD70000, v24, v25, "[%{public}s] Start Over tapped on an interruption that is not the active interruption. Ignoring tap.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x20F314110](v27, -1, -1);
      MEMORY[0x20F314110](v26, -1, -1);
    }

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:

    return;
  }

  v43 = *(v18 + 8);
  LOBYTE(v53) = 5;
  v44 = v20;
  v45 = v21;
  sub_20CE05FC8(&v53);
  v46 = *v19;
  if (*v19)
  {
    v47 = *(v19 + 8);
    sub_20CE06F14(*v19, v47);
    v48 = v47;
    [v48 dismissViewControllerAnimated:1 completion:0];

    v49 = *v19;
    v50 = *(v19 + 8);
    *v19 = 0;
    *(v19 + 8) = 0;
    sub_20CE06ED4(v49, v50);
  }

  ObjectType = swift_getObjectType();
  (*(v43 + 24))(ObjectType, v43);
  swift_unknownObjectRelease();
}

void sub_20CE05350(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v8 = a3;
      v7 = v6;
      sub_20CE053E4(v6, &v8);
    }
  }
}

void sub_20CE053E4(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_20CE13714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a2;
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v10 = sub_20CE13D44();
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  LOBYTE(a2) = sub_20CE13744();
  (*(v7 + 8))(v10, v6);
  if (a2)
  {
    if (qword_27C811D18 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_20CE12CB4();
  __swift_project_value_buffer(v12, qword_27C8177B0);
  v13 = sub_20CE12C94();
  v14 = sub_20CE13CD4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    HIDWORD(v50) = v11;
    v17 = v16;
    v51 = v16;
    *v15 = 136446210;
    v18 = sub_20CE14414();
    v20 = sub_20CD96DCC(v18, v19, &v51);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_20CD70000, v13, v14, "[%{public}s] interruptionCancelButtonTapped ", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v21 = v17;
    v11 = HIDWORD(v50);
    MEMORY[0x20F314110](v21, -1, -1);
    MEMORY[0x20F314110](v15, -1, -1);
  }

  v22 = v3 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v27 = sub_20CE12C94();
    v34 = sub_20CE13CC4();
    if (os_log_type_enabled(v27, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = 136446210;
      v37 = sub_20CE14414();
      v39 = sub_20CD96DCC(v37, v38, &v51);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_20CD70000, v27, v34, "[%{public}s] Interruption 'cancel' button pressed without an active delegate", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x20F314110](v36, -1, -1);
      MEMORY[0x20F314110](v35, -1, -1);
    }

    goto LABEL_16;
  }

  v23 = *(v3 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  if (!v23)
  {
    v27 = sub_20CE12C94();
    v40 = sub_20CE13CC4();
    if (os_log_type_enabled(v27, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51 = v42;
      *v41 = 136446210;
      v43 = sub_20CE14414();
      v45 = sub_20CD96DCC(v43, v44, &v51);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_20CD70000, v27, v40, "[%{public}s] Cancel tapped on interruption screen but no active interruption is being tracked. Ignoring tap.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x20F314110](v42, -1, -1);
      MEMORY[0x20F314110](v41, -1, -1);
    }

    goto LABEL_15;
  }

  v24 = *(v3 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption + 8);
  if (v23 != a1)
  {
    v25 = v23;
    v26 = v24;
    v27 = sub_20CE12C94();
    v28 = sub_20CE13CD4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51 = v30;
      *v29 = 136446210;
      v31 = sub_20CE14414();
      v33 = sub_20CD96DCC(v31, v32, &v51);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_20CD70000, v27, v28, "[%{public}s] Cancel tapped on an interruption that is not the active interruption. Ignoring tap.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x20F314110](v30, -1, -1);
      MEMORY[0x20F314110](v29, -1, -1);
    }

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:

    return;
  }

  v46 = *(v22 + 8);
  ObjectType = swift_getObjectType();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = *(v46 + 32);
  sub_20CE06F14(v23, v24);

  v49(a1, v11 < 7, sub_20CE07A6C, v48, ObjectType, v46);
  swift_unknownObjectRelease();
}

void sub_20CE059C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      a3();

      v5 = v7;
    }
  }
}

void sub_20CE05A5C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_20CE13714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v8 = sub_20CE13D44();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = sub_20CE13744();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_27C811D18 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = sub_20CE12CB4();
  __swift_project_value_buffer(v10, qword_27C8177B0);
  v11 = sub_20CE12C94();
  v12 = sub_20CE13CD4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v47 = v14;
    *v13 = 136446210;
    v15 = sub_20CE14414();
    v17 = sub_20CD96DCC(v15, v16, &v47);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20CD70000, v11, v12, "[%{public}s] interruptionDoneButtonTapped ", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x20F314110](v14, -1, -1);
    MEMORY[0x20F314110](v13, -1, -1);
  }

  v18 = v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v23 = sub_20CE12C94();
    v30 = sub_20CE13CC4();
    if (os_log_type_enabled(v23, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v32;
      *v31 = 136446210;
      v33 = sub_20CE14414();
      v35 = sub_20CD96DCC(v33, v34, &v47);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_20CD70000, v23, v30, "[%{public}s] Interruption 'done' button pressed without an active delegate", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x20F314110](v32, -1, -1);
      MEMORY[0x20F314110](v31, -1, -1);
    }

    goto LABEL_16;
  }

  v19 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  if (!v19)
  {
    v23 = sub_20CE12C94();
    v36 = sub_20CE13CC4();
    if (os_log_type_enabled(v23, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47 = v38;
      *v37 = 136446210;
      v39 = sub_20CE14414();
      v41 = sub_20CD96DCC(v39, v40, &v47);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_20CD70000, v23, v36, "[%{public}s] Done tapped on interruption screen but no active interruption is being tracked. Ignoring tap.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x20F314110](v38, -1, -1);
      MEMORY[0x20F314110](v37, -1, -1);
    }

    goto LABEL_15;
  }

  v20 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption + 8);
  if (v19 != a1)
  {
    v21 = v19;
    v22 = v20;
    v23 = sub_20CE12C94();
    v24 = sub_20CE13CD4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136446210;
      v27 = sub_20CE14414();
      v29 = sub_20CD96DCC(v27, v28, &v47);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20CD70000, v23, v24, "[%{public}s] Done tapped on an interruption that is not the active interruption. Ignoring tap.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x20F314110](v26, -1, -1);
      MEMORY[0x20F314110](v25, -1, -1);
    }

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:

    return;
  }

  v42 = *(v18 + 8);
  LOBYTE(v47) = 3;
  v43 = v19;
  v44 = v20;
  sub_20CE05FC8(&v47);
  ObjectType = swift_getObjectType();
  (*(v42 + 40))(ObjectType, v42);
  swift_unknownObjectRelease();
}

void sub_20CE05FC8(unsigned __int8 *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_20CE124E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v44[-v10];
  sub_20CE06DFC(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44[-v14];
  v16 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  if (v16)
  {
    v17 = *a1;
    LODWORD(v46) = v16[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionType];
    v18 = OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionStartTime;
    swift_beginAccess();
    sub_20CD7DC78(&v16[v18], v15);
    v19 = (*(v5 + 48))(v15, 1, v4);
    if (v19 == 1)
    {
      v20 = v16;
      v21 = 0.0;
    }

    else
    {
      v45 = v17;
      (*(v5 + 32))(v11, v15, v4);
      sub_20CE13B84();
      v29 = v16;
      sub_20CE13B74();
      sub_20CE13B24();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_20CE124D4();
      sub_20CE12494();
      v31 = v30;
      v32 = *(v5 + 8);
      v32(v9, v4);
      v32(v11, v4);

      v21 = v31;
      LOBYTE(v17) = v45;
    }

    v34 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_analyticsManager);
    v33 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_analyticsManager + 8);
    ObjectType = swift_getObjectType();
    v36 = *(v33 + 8);
    v37 = v36(ObjectType, v33);
    v38 = v21;
    if (v19 == 1)
    {
      v38 = 0.0;
    }

    *(v37 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalInterruptionDuration) = v38 + *(v37 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalInterruptionDuration);

    v39 = v36(ObjectType, v33);
    v40 = *(v39 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_interruptionCount);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (!v41)
    {
      *(v39 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_interruptionCount) = v42;

      v48 = v17;
      v47 = v46;
      (*(v33 + 40))(&v48, &v47, COERCE_DOUBLE(*&v21), v19 == 1, ObjectType, v33);

      return;
    }

    __break(1u);
  }

  else if (qword_27C811D18 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  v22 = sub_20CE12CB4();
  __swift_project_value_buffer(v22, qword_27C8177B0);
  v46 = sub_20CE12C94();
  v23 = sub_20CE13CC4();
  if (os_log_type_enabled(v46, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v49 = v25;
    *v24 = 136446210;
    v26 = sub_20CE14414();
    v28 = sub_20CD96DCC(v26, v27, &v49);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_20CD70000, v46, v23, "[%{public}s] Attempting to submit analytics for a non-active interruption VC", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x20F314110](v25, -1, -1);
    MEMORY[0x20F314110](v24, -1, -1);
  }

  else
  {
    v43 = v46;
  }
}

void sub_20CE064B8()
{
  swift_getObjectType();
  if (*(v0 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption))
  {
    v10 = *(v0 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption + 8);
    v1 = [v10 presentedViewController];
    if (v1)
    {

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
        v11 = v6;
        *v5 = 136446210;
        v7 = sub_20CE14414();
        v9 = sub_20CD96DCC(v7, v8, &v11);

        *(v5 + 4) = v9;
        _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] Dismissing UIViewController presented by the interruptions navigation stack.", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v6);
        MEMORY[0x20F314110](v6, -1, -1);
        MEMORY[0x20F314110](v5, -1, -1);
      }

      [v10 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_20CE06688(uint64_t a1, char a2)
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
    v4 = Strong;
    v5 = a2;
    sub_20CE02A94(&v5);
  }

  else
  {
  }
}

void sub_20CE06844(uint64_t a1)
{
  swift_getObjectType();
  v3 = v1 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v5 = sub_20CE12CB4();
    __swift_project_value_buffer(v5, qword_27C8177B0);
    v6 = sub_20CE12C94();
    v7 = sub_20CE13CD4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136446466;
      v10 = sub_20CE14414();
      v12 = sub_20CD96DCC(v10, v11, &v24);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_20CD96DCC(0xD00000000000001ALL, 0x800000020CE1E270, &v24);
      _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] %s called. Cancelling flow.", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v9, -1, -1);
      MEMORY[0x20F314110](v8, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = *(v4 + 32);

    v15(a1, 0, sub_20CE075A8, v14, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v16 = sub_20CE12CB4();
    __swift_project_value_buffer(v16, qword_27C8177B0);
    oslog = sub_20CE12C94();
    v17 = sub_20CE13CC4();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      v20 = sub_20CE14414();
      v22 = sub_20CD96DCC(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_20CD70000, oslog, v17, "[%{public}s] Cancellation of interruption fit/noise check without an active delegate", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x20F314110](v19, -1, -1);
      MEMORY[0x20F314110](v18, -1, -1);
    }

    else
    {
    }
  }
}

void sub_20CE06BD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = 4;
    sub_20CE05FC8(&v2);
  }
}

void sub_20CE06D20()
{
  sub_20CE06E60(0, &unk_27C813720, &qword_27C812CB0, 0x277CBEB70, MEMORY[0x277D11BF0]);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_20CE01EF4(v0 + v3, v5);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20CE06DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CE06E60(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_20CD83128(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_20CE06ED4(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_20CE06F14(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void *sub_20CE06F54(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = a4;
  v21[3] = sub_20CE12A34();
  v21[4] = &protocol witness table for HTRequirementStatusManager;
  v21[0] = a1;
  if (v8 == 4)
  {
    sub_20CD7C388(v21, v19);
    v9 = objc_allocWithZone(type metadata accessor for HearingTestNoiseInterruptionViewController());
    v10 = v20;
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v12 = *(*(v10 - 8) + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;

    v17 = sub_20CE071B0(4, v16, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    LOBYTE(v19[0]) = a4;
    objc_allocWithZone(type metadata accessor for HearingTestInterruptionsViewController());

    v17 = sub_20CD83D04(v19, a2, a3, 2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v17;
}

void sub_20CE070F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_20CE03EDC();
}

uint64_t objectdestroy_21Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

char *sub_20CE071B0(int a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v5 = sub_20CE12514();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[3] = sub_20CE12A34();
  v38[4] = &protocol witness table for HTRequirementStatusManager;
  v38[0] = a2;
  v10 = OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_automationIdentifierBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v11 = (a3 + v10);
  v13 = qword_27C817868;
  v12 = unk_27C817870;
  v14 = MEMORY[0x277D837D0];
  sub_20CDAA04C(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CE16360;
  *(v15 + 32) = v13;
  *(v15 + 40) = v12;
  *(v15 + 48) = 0xD000000000000012;
  *(v15 + 56) = 0x800000020CE1D080;
  *&v37[0] = v15;
  sub_20CDAA04C(0, &qword_27C8121F0, v14, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v16 = sub_20CE138C4();
  v18 = v17;

  *v11 = v16;
  v11[1] = v18;
  v19 = OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_noiseModel;
  v20 = sub_20CE13AE4();
  *(v20 + 16) = 16;
  v21 = type metadata accessor for HTUINoiseView.Model();
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0u;
  *(v20 + 112) = 0u;
  *(v20 + 128) = 0u;
  *(v20 + 144) = 0u;
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  sub_20CE12B24();
  *(v24 + 16) = 1;
  v25 = type metadata accessor for NoiseWaveformView.Model();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  *(v28 + 32) = MEMORY[0x277D84F90];
  sub_20CE12B24();
  *(v28 + 16) = 1;
  *(v28 + 24) = v20;
  sub_20CDAC7A8();
  *(v24 + 24) = v28;
  *(a3 + v19) = v24;
  sub_20CD7C388(v38, v37);
  type metadata accessor for NoiseDataProvider();
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20CE12504();
  v30 = sub_20CE124F4();
  v32 = v31;
  (*(v6 + 8))(v9, v5);
  *(v29 + 72) = v30;
  *(v29 + 80) = v32;
  *(v29 + 88) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 120) = 0;
  *(v29 + 128) = -1;
  sub_20CDAA09C(v37, v29 + 32);
  *(a3 + OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_noiseDataProvider) = v29;
  LOBYTE(v37[0]) = v36;
  v33 = sub_20CD83D04(v37, 0, 0, 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  *(*&v33[OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_noiseDataProvider] + 24) = &off_2823BCC10;
  swift_unknownObjectWeakAssign();
  return v33;
}

void sub_20CE07550()
{
  if (!qword_27C813748)
  {
    v0 = sub_20CE140B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813748);
    }
  }
}

void sub_20CE075C4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = v1 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v6 = sub_20CE12CB4();
    __swift_project_value_buffer(v6, qword_27C8177B0);
    v7 = sub_20CE12C94();
    v8 = sub_20CE13CD4();
    if (os_log_type_enabled(v7, v8))
    {
      osloga = v5;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136446722;
      v11 = sub_20CE14414();
      v13 = sub_20CD96DCC(v11, v12, &v35);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_20CD96DCC(0xD000000000000021, 0x800000020CE20B90, &v35);
      *(v9 + 22) = 2080;
      v14 = sub_20CDD108C(a1);
      v16 = sub_20CD96DCC(v14, v15, &v35);

      *(v9 + 24) = v16;
      _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] %s called with %s.", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v10, -1, -1);
      v17 = v9;
      v5 = osloga;
      MEMORY[0x20F314110](v17, -1, -1);
    }

    if (a1)
    {
      if (a1 == 1)
      {
        *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_encounteredInterruptionRequiringFitCheck) = 0;
        sub_20CE03F78(0);
LABEL_20:

        swift_unknownObjectRelease();
        return;
      }

      v25 = sub_20CE12C94();
      v26 = sub_20CE13CB4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35 = v28;
        *v27 = 136446466;
        v29 = sub_20CE14414();
        v31 = sub_20CD96DCC(v29, v30, &v35);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_20CD96DCC(0xD000000000000021, 0x800000020CE20B90, &v35);
        _os_log_impl(&dword_20CD70000, v25, v26, "[%{public}s] %s cancelling flow due to unhandled FitNoiseCheckStatus case.", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F314110](v28, -1, -1);
        MEMORY[0x20F314110](v27, -1, -1);
      }
    }

    ObjectType = swift_getObjectType();
    (v5[5].isa)(ObjectType, v5);
    goto LABEL_20;
  }

  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v18 = sub_20CE12CB4();
  __swift_project_value_buffer(v18, qword_27C8177B0);
  oslog = sub_20CE12C94();
  v19 = sub_20CE13CC4();
  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136446210;
    v22 = sub_20CE14414();
    v24 = sub_20CD96DCC(v22, v23, &v35);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_20CD70000, oslog, v19, "[%{public}s] Completion of interruption fit/noise check without an active delegate", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x20F314110](v21, -1, -1);
    MEMORY[0x20F314110](v20, -1, -1);
  }
}

uint64_t sub_20CE07A78()
{
  v1 = v0;
  v2 = sub_20CE12944();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D12D20])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v32[0] = 0x726145206E49;
    v32[1] = 0xE600000000000000;
    v30 = 32;
    v31 = 0xE100000000000000;
    sub_20CD935CC();
    v32[0] = sub_20CE13FB4();
    v32[1] = v9;
    MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
    v10 = [v8 identifier];
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_9:
    v13 = v10;
    sub_20CE13954();

    v14 = sub_20CDFA33C(5);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = v18;
    v22 = v16;
    v23 = v14;
LABEL_13:
    v26 = MEMORY[0x20F312EB0](v23, v22, v21, v20);
    v28 = v27;

    MEMORY[0x20F312EF0](v26, v28);

    return v32[0];
  }

  if (v7 == *MEMORY[0x277D12D28])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    strcpy(v32, "Out Ear");
    v32[1] = 0xE700000000000000;
    v30 = 32;
    v31 = 0xE100000000000000;
    sub_20CD935CC();
    v32[0] = sub_20CE13FB4();
    v32[1] = v11;
    MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
    v10 = [v8 identifier];
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x277D12D10])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v32[0] = 0x6E6F432074736F4CLL;
    v32[1] = 0xEF6E6F697463656ELL;
    v30 = 32;
    v31 = 0xE100000000000000;
    sub_20CD935CC();
    v32[0] = sub_20CE13FB4();
    v32[1] = v12;
    MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
    v10 = [v8 identifier];
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_12:
    v23 = sub_20CE13F64();
    v20 = v25;
    goto LABEL_13;
  }

  if (v7 == *MEMORY[0x277D12D18])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    strcpy(v32, "Incompatible");
    BYTE5(v32[1]) = 0;
    HIWORD(v32[1]) = -5120;
    v30 = 32;
    v31 = 0xE100000000000000;
    sub_20CD935CC();
    v32[0] = sub_20CE13FB4();
    v32[1] = v24;
    MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
    v10 = [v8 identifier];
    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  (*(v3 + 8))(v6, v2);
  return 0x6E776F6E6B6E55;
}

uint64_t sub_20CE07F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_20CE0940C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_20CD89A48(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_20CD8AD88();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_20CE08FA0(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t HearingTestFlowEvent.__allocating_init(metric:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t HearingTestFlowEvent.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t HearingTestFlowEvent.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t HearingTestFlowEvent.makeUnrestrictedEventPayload(with:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_20CDE7A24(a1);
  v5 = [a1 environmentDataSource];
  v6 = [v5 isImproveHealthAndActivityEnabled];

  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v7, 0xD000000000000021, 0x800000020CE1AA70, isUniquelyReferenced_nonNull_native);
  v9 = sub_20CE08230(v4);

  return v9;
}

unint64_t sub_20CE08230(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_20CE0963C();
    v2 = sub_20CE14204();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_20CDEBEC8();

        v20 = v19;
        swift_dynamicCast();
        sub_20CD8A9E8(&v26, v28);
        sub_20CD8A9E8(v28, v29);
        sub_20CD8A9E8(v29, &v27);
        result = sub_20CD89A48(v18, v17);
        if (v21)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_20CD8A9E8(&v27, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v2[6] + 16 * result);
          *v22 = v18;
          v22[1] = v17;
          result = sub_20CD8A9E8(&v27, (v2[7] + 32 * result));
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t HearingTestFlowEvent.makeIHAGatedEventPayload(with:)(void *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = [a1 healthDataSource];
  if (v4)
  {
    v5 = v4;
    v6 = v1[2];
    v7 = sub_20CDE7360();
    v8 = sub_20CE08230(v7);

    v9 = sub_20CE087F4(v5);
    v31 = MEMORY[0x277D837D0];
    *&v30 = v9;
    *(&v30 + 1) = v10;
    sub_20CD8A9E8(&v30, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v8;
    sub_20CE09150(v29, 0x6369676F6C6F6962, 0xED00007865536C61, isUniquelyReferenced_nonNull_native);
    v12 = v32;
    v13 = sub_20CE08A8C(v5);
    v31 = MEMORY[0x277D83B88];
    *&v30 = v13;
    sub_20CD8A9E8(&v30, v29);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v12;
    sub_20CE09150(v29, 6645601, 0xE300000000000000, v14);
    swift_unknownObjectRelease();
    return v32;
  }

  else
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v16 = sub_20CE12CB4();
    __swift_project_value_buffer(v16, qword_27C817780);
    v17 = sub_20CE12C94();
    v18 = sub_20CE13CC4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v30 = v20;
      *v19 = 136446210;
      v21 = sub_20CE14414();
      v23 = sub_20CD96DCC(v21, v22, &v30);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_20CD70000, v17, v18, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x20F314110](v20, -1, -1);
      MEMORY[0x20F314110](v19, -1, -1);
    }

    v24 = [v2 eventName];
    v25 = sub_20CE13954();
    v27 = v26;

    sub_20CE09584();
    swift_allocError();
    *v28 = v25;
    v28[1] = v27;
    return swift_willThrow();
  }
}

uint64_t sub_20CE087F4(void *a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v25[0] = 0;
  v3 = [a1 biologicalSexWithError_];
  if (v3)
  {
    v4 = v3;
    v5 = v25[0];
    v6 = HKAnalyticsPropertyValueForBiologicalSex();
    v7 = sub_20CE13954();
  }

  else
  {
    v8 = v25[0];
    v9 = sub_20CE12394();

    swift_willThrow();
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v10 = sub_20CE12CB4();
    __swift_project_value_buffer(v10, qword_27C817780);
    v11 = v9;
    v12 = sub_20CE12C94();
    v13 = sub_20CE13CB4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v14 = 136446466;
      v17 = sub_20CE14414();
      v19 = sub_20CD96DCC(v17, v18, v25);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2114;
      v20 = v9;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v21;
      *v15 = v21;
      _os_log_impl(&dword_20CD70000, v12, v13, "[%{public}s] HKAnalyticsHealthDataSource Error when retrieving biological sex: %{public}@", v14, 0x16u);
      sub_20CDFA454(v15);
      MEMORY[0x20F314110](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x20F314110](v16, -1, -1);
      MEMORY[0x20F314110](v14, -1, -1);
    }

    v22 = *MEMORY[0x277CCB800];
    v7 = sub_20CE13954();
  }

  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_20CE08A8C(void *a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = sub_20CE124E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE124D4();
  v9 = sub_20CE124A4();
  (*(v5 + 8))(v8, v4);
  v30[0] = 0;
  v10 = [a1 ageWithCurrentDate:v9 error:v30];

  if (v10)
  {
    v11 = v30[0];
    v12 = [v10 integerValue];
  }

  else
  {
    v13 = v30[0];
    v14 = sub_20CE12394();

    swift_willThrow();
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v15 = sub_20CE12CB4();
    __swift_project_value_buffer(v15, qword_27C817780);
    v16 = v14;
    v17 = sub_20CE12C94();
    v18 = sub_20CE13CB4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30[0] = v21;
      *v19 = 136446466;
      v22 = sub_20CE14414();
      v24 = sub_20CD96DCC(v22, v23, v30);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2114;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_20CD70000, v17, v18, "[%{public}s] HKAnalyticsHealthDataSource Error when retrieving age: %{public}@", v19, 0x16u);
      sub_20CDFA454(v20);
      MEMORY[0x20F314110](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x20F314110](v21, -1, -1);
      MEMORY[0x20F314110](v19, -1, -1);
    }

    v12 = [*MEMORY[0x277CCB7A0] integerValue];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_20CE08EB4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20CE140E4();
  MEMORY[0x20F312EF0](0xD000000000000051, 0x800000020CE20CA0);
  MEMORY[0x20F312EF0](v1, v2);
  return 0;
}

_OWORD *sub_20CE08F34(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20CD8A9E8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_20CE08FA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20CE14064() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_20CE14384();

      sub_20CE139C4();
      v13 = sub_20CE143B4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_20CE09150(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20CD89A48(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20CD8A9F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20CD89DC0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_20CD89A48(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_20CE142E4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_20CD8A9E8(a1, v23);
  }

  else
  {
    sub_20CE08F34(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_20CE092A0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_20CD89A48(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_20CD8A080(v16, a4 & 1);
      v20 = *v5;
      result = sub_20CD89A48(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_20CE142E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_20CD8AC1C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1 & 1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_20CE0940C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20CD89A48(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_20CD8A324(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_20CD89A48(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_20CE142E4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_20CD8AD88();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_20CE09584()
{
  result = qword_27C813750;
  if (!qword_27C813750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813750);
  }

  return result;
}

void sub_20CE0963C()
{
  if (!qword_27C812350)
  {
    v0 = sub_20CE14214();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812350);
    }
  }
}

uint64_t sub_20CE096A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F62412072657355;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v2)
    {
      v3 = 0xEA00000000007472;
    }

    else
    {
      v3 = 0x800000020CE1A980;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x800000020CE1A9B0;
    v4 = 0xD000000000000013;
  }

  else if (a1 == 3)
  {
    v3 = 0x800000020CE1A9D0;
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x646E452074736554;
    v3 = 0xEA00000000006465;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6F62412072657355;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (a2)
    {
      v5 = 0xEA00000000007472;
    }

    else
    {
      v5 = 0x800000020CE1A980;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x800000020CE1A9B0;
    if (v4 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000020CE1A9D0;
    if (v4 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEA00000000006465;
    if (v4 != 0x646E452074736554)
    {
LABEL_31:
      v7 = sub_20CE14284();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_20CE0984C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "available";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v3 == 2)
    {
      v4 = "audioDeviceIncompatible";
    }

    else
    {
      v4 = "audioDeviceNotInEar";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "audioDeviceNotConnected";
    }

    else
    {
      v4 = "available";
    }

    v5 = 0xD000000000000017;
  }

  v6 = "audioDeviceIncompatible";
  v7 = 0xD000000000000013;
  if (a2 != 2)
  {
    v7 = 0xD000000000000011;
    v6 = "audioDeviceNotInEar";
  }

  if (a2)
  {
    v2 = "audioDeviceNotConnected";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_20CE14284();
  }

  return v10 & 1;
}

unint64_t HearingTestFlowEventIHAFieldNames.rawValue.getter()
{
  result = 0x7275446C61746F74;
  switch(*v0)
  {
    case 1:
    case 0xA:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x6172754470657473;
      break;
    case 7:
      result = 0x72617453776F6C66;
      break;
    case 8:
      result = 6645601;
      break;
    case 9:
      result = 0x6369676F6C6F6962;
      break;
    case 0xB:
    case 0x11:
      result = 0xD000000000000016;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0xD000000000000017;
      break;
    case 0xE:
      result = 0xD000000000000018;
      break;
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0xD000000000000011;
      break;
    case 0x12:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t HearingTestFlowEventDUFieldNames.rawValue.getter()
{
  result = 1885697139;
  switch(*v0)
  {
    case 1:
      return 0x6E6F69746361;
    case 2:
      return 0x6174654470657473;
    case 3:
      return 0x6F73616552646E65;
    case 4:
      return 0x696F507972746E65;
    case 5:
      v4 = 10;
      goto LABEL_14;
    case 6:
      return 0x4673646F50726961;
    case 7:
      return 0xD000000000000018;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0xD000000000000021;
    case 0xA:
      return 0xD000000000000016;
    case 0xB:
      v3 = 1953721961;
      goto LABEL_16;
    case 0xC:
      v2 = 1953721961;
      goto LABEL_7;
    case 0xD:
      v3 = 1952543859;
LABEL_16:
      result = v3 | 0x73696F4E00000000;
      break;
    case 0xE:
      v2 = 1952543859;
LABEL_7:
      result = v2 | 0x73696F4E00000000;
      break;
    case 0xF:
      v4 = 5;
LABEL_14:
      result = v4 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t HearingTestFlowAnalyticsStep.rawValue.getter()
{
  result = 0x20676E6974746547;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      return result;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000026;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 8:
      result = 0xD000000000000026;
      break;
    case 9:
      result = 0xD000000000000026;
      break;
    case 0xA:
      result = 0x697461756C617645;
      break;
    case 0xB:
      result = 0xD00000000000002FLL;
      break;
    case 0xC:
      result = 0x73746C75736552;
      break;
    case 0xD:
      result = 0xD000000000000010;
      break;
    case 0xE:
      result = 0x7075727265746E49;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t HearingTestFlowActionType.rawValue.getter()
{
  result = 0x746E452070657453;
  switch(*v0)
  {
    case 1:
      result = 0x78654E2065766F4DLL;
      break;
    case 2:
      result = 0x6361422065766F4DLL;
      break;
    case 3:
      result = 1701736260;
      break;
    case 4:
      result = 0x46206C65636E6143;
      break;
    case 5:
      result = 0x764F207472617453;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x73736563637553;
      break;
    case 9:
      result = 0x6572756C696146;
      break;
    case 0xA:
      result = 0x74654420776F6853;
      break;
    case 0xB:
      result = 0x74724120776F6853;
      break;
    case 0xC:
      result = 0xD000000000000015;
      break;
    case 0xD:
      result = 0xD00000000000001CLL;
      break;
    case 0xE:
      result = 0xD000000000000010;
      break;
    case 0xF:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t HearingTestFlowEndReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F62412072657355;
  v3 = 0xD000000000000013;
  v4 = 0x646E452074736554;
  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20CE0A1DC()
{
  v1 = v0[1];
  v3 = *v0;
  HearingTestFlowAnalyticsStep.rawValue.getter();
  sub_20CE139C4();

  if (v1 == 16)
  {
    return sub_20CE143A4();
  }

  sub_20CE143A4();
  HearingTestFlowActionType.rawValue.getter();
  sub_20CE139C4();
}

uint64_t sub_20CE0A2AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20CE14384();
  HearingTestFlowAnalyticsStep.rawValue.getter();
  sub_20CE139C4();

  sub_20CE143A4();
  if (v2 != 16)
  {
    HearingTestFlowActionType.rawValue.getter();
    sub_20CE139C4();
  }

  return sub_20CE143B4();
}

uint64_t sub_20CE0A374()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20CE14384();
  HearingTestFlowAnalyticsStep.rawValue.getter();
  sub_20CE139C4();

  sub_20CE143A4();
  if (v2 != 16)
  {
    HearingTestFlowActionType.rawValue.getter();
    sub_20CE139C4();
  }

  return sub_20CE143B4();
}

HearingTestUI::HearingTestFlowAnalyticsStep_optional __swiftcall HearingTestFlowAnalyticsStep.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20CE14234();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_20CE0A4FC@<X0>(unint64_t *a1@<X8>)
{
  result = HearingTestFlowAnalyticsStep.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20CE0A544()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

uint64_t sub_20CE0A5B8()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

unint64_t sub_20CE0A5FC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20CE0B088(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

HearingTestUI::HearingTestFlowActionType_optional __swiftcall HearingTestFlowActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20CE14234();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_20CE0A6F8@<X0>(unint64_t *a1@<X8>)
{
  result = HearingTestFlowActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HearingTestUI::HearingTestFlowEndReason_optional __swiftcall HearingTestFlowEndReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20CE14234();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20CE0A788()
{
  v1 = *v0;
  sub_20CE14384();
  sub_20CE139C4();

  return sub_20CE143B4();
}

uint64_t sub_20CE0A880()
{
  *v0;
  sub_20CE139C4();
}

uint64_t sub_20CE0A964()
{
  v1 = *v0;
  sub_20CE14384();
  sub_20CE139C4();

  return sub_20CE143B4();
}

void sub_20CE0AA64(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007472;
  v4 = 0x6F62412072657355;
  v5 = 0x800000020CE1A9B0;
  v6 = 0xD000000000000013;
  v7 = 0x800000020CE1A9D0;
  v8 = 0x646E452074736554;
  if (v2 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xEA00000000006465;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x800000020CE1A980;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

HearingTestUI::HearingTestFlowEventDUFieldNames_optional __swiftcall HearingTestFlowEventDUFieldNames.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20CE14234();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20CE0ABEC@<X0>(uint64_t *a1@<X8>)
{
  result = HearingTestFlowEventDUFieldNames.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HearingTestUI::HearingTestFlowEventIHAFieldNames_optional __swiftcall HearingTestFlowEventIHAFieldNames.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20CE14294();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20CE0ACAC(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20CE14284();
  }

  return v11 & 1;
}

uint64_t sub_20CE0AD6C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_20CE14384();
  a3(v6);
  sub_20CE139C4();

  return sub_20CE143B4();
}

uint64_t sub_20CE0ADF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  sub_20CE139C4();
}

uint64_t sub_20CE0AE74(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_20CE14384();
  a4(v7);
  sub_20CE139C4();

  return sub_20CE143B4();
}

unint64_t sub_20CE0AEEC@<X0>(unint64_t *a1@<X8>)
{
  result = HearingTestFlowEventIHAFieldNames.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_20CE0AF24(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v17 = *a1;
  v16 = *a2;
  v4 = HearingTestFlowAnalyticsStep.rawValue.getter();
  v6 = v5;
  if (v4 != HearingTestFlowAnalyticsStep.rawValue.getter() || v6 != v7)
  {
    v9 = sub_20CE14284();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }

    if (v2 == 16)
    {
      return v3 == 16;
    }

LABEL_10:
    if (v3 != 16)
    {
      v11 = HearingTestFlowActionType.rawValue.getter();
      v13 = v12;
      if (v11 == HearingTestFlowActionType.rawValue.getter() && v13 == v14)
      {

        return 1;
      }

      v15 = sub_20CE14284();

      if (v15)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 != 16)
  {
    goto LABEL_10;
  }

  return v3 == 16;
}

unint64_t sub_20CE0B088(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20CE0B09C()
{
  result = qword_27C8137B8;
  if (!qword_27C8137B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8137B8);
  }

  return result;
}

unint64_t sub_20CE0B0F4()
{
  result = qword_27C8137C0;
  if (!qword_27C8137C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8137C0);
  }

  return result;
}

unint64_t sub_20CE0B14C()
{
  result = qword_27C8137C8;
  if (!qword_27C8137C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8137C8);
  }

  return result;
}

unint64_t sub_20CE0B1A4()
{
  result = qword_27C8137D0;
  if (!qword_27C8137D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8137D0);
  }

  return result;
}

unint64_t sub_20CE0B1FC()
{
  result = qword_27C8137D8;
  if (!qword_27C8137D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8137D8);
  }

  return result;
}

unint64_t sub_20CE0B284()
{
  result = qword_27C8137F0;
  if (!qword_27C8137F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8137F0);
  }

  return result;
}

uint64_t sub_20CE0B308(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_20CE0B358(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CE0B358(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_20CE13B04();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for HearingTestFlowEndReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HearingTestFlowEndReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20CE0B524(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_20CE0B5B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HearingTestFlowEventIHAFieldNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HearingTestFlowEventIHAFieldNames(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HearingTestFlowAnalyticsStepActionPair(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 65295 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65295 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65295;
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

      return (*a1 | (v4 << 16)) - 65295;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65295;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for HearingTestFlowAnalyticsStepActionPair(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65295 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65295 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 16) + 1;
    *result = a2 - 241;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20CE0B928()
{
  result = qword_27C813808;
  if (!qword_27C813808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813808);
  }

  return result;
}

void sub_20CE0B9C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 font];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() configurationWithFont_];

    v9 = sub_20CE13914();
    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

    if (v10)
    {
      v11 = [v10 imageWithRenderingMode_];
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
    [v12 setImage_];
    sub_20CE0BBDC();
    v16 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    MEMORY[0x20F312EF0](a1, a2);
    v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v14 = sub_20CE13914();

    v15 = [v13 initWithString_];

    [v16 appendAttributedString_];
    [v3 setAttributedText_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_20CE0BBDC()
{
  result = qword_27C813810;
  if (!qword_27C813810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C813810);
  }

  return result;
}

uint64_t sub_20CE0BC28(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x277D12CA0] + 4);
  v10 = (*MEMORY[0x277D12CA0] + MEMORY[0x277D12CA0]);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20CD7C660;

  return v10(a1, a2);
}

uint64_t dispatch thunk of Session.hearingTestStatusWithAverageNoise(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_20CD7C660;

  return v13(a1, a2, a3, a4);
}

uint64_t LabelledProgressView.init(model:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_20CE13384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LabelledProgressView();
  v10 = *(v9 + 20);
  v15 = 0x4008000000000000;
  v11 = *(v5 + 104);
  v11(v8, *MEMORY[0x277CE0AA0], v4);
  sub_20CDA1354();
  sub_20CE12EE4();
  v12 = *(v9 + 24);
  v15 = 0x4020000000000000;
  v11(v8, *MEMORY[0x277CE0A90], v4);
  result = sub_20CE12EE4();
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for LabelledProgressView()
{
  result = qword_27C8138D0;
  if (!qword_27C8138D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *LabelledProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LabelledProgressView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *(v5 + 32);
  sub_20CE0D274(0, &qword_27C813818, sub_20CDA1354, MEMORY[0x277D839F8], MEMORY[0x277CDF5B0]);
  sub_20CE12EF4();
  v9 = *v27;
  v10 = v2 + *(v5 + 28);
  sub_20CE12EF4();
  v11 = *v27;
  v12 = sub_20CE13114();
  v25 = 0;
  sub_20CE0C2F4(v2, v23);
  memcpy(v26, v23, sizeof(v26));
  memcpy(v27, v23, 0x128uLL);
  sub_20CE0EA3C(v26, v22, &qword_27C813820, sub_20CE0CCBC);
  sub_20CE0E9E0(v27, &qword_27C813820, sub_20CE0CCBC, MEMORY[0x277CE14B8]);
  memcpy(&v24[7], v26, 0x128uLL);
  v13 = v25;
  if (qword_27C811DD0 != -1)
  {
    swift_once();
  }

  v14 = qword_27C8179F0;
  KeyPath = swift_getKeyPath();
  sub_20CE0E2E4(v2, &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LabelledProgressView);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_20CE0E34C(&v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
  sub_20CE0E47C();
  v19 = (a1 + *(v18 + 36));
  v20 = *(sub_20CE12F44() + 20);

  sub_20CE13B94();
  *v19 = &unk_20CE1A278;
  v19[1] = v17;
  *a1 = v12;
  *(a1 + 8) = v9 + v11 * -0.5;
  *(a1 + 16) = v13;
  result = memcpy((a1 + 17), v24, 0x12FuLL);
  *(a1 + 320) = KeyPath;
  *(a1 + 328) = v14;
  return result;
}

uint64_t sub_20CE0C2F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v75 = a2;
  sub_20CE0E97C(0, &qword_27C8125C0, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v67 - v5;
  v6 = sub_20CE13154();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_20CE13B84();
  v76 = sub_20CE13B74();
  v67 = v8;
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE13144();
  sub_20CE13134();
  v9 = *a1;
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtCV13HearingTestUI20LabelledProgressView5Model___observationRegistrar;
  *&v109 = v9;
  v11 = sub_20CE0D3C0(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model);
  v73 = v10;
  v70 = v11;
  sub_20CE12AF4();

  v12 = *(v9 + 40);
  v74 = v9;
  v68 = a1;
  if (v12)
  {
    v13 = *(v9 + 32);
  }

  sub_20CE13124();

  sub_20CE13134();
  sub_20CE13164();
  v14 = sub_20CE133F4();
  v16 = v15;
  v18 = v17;
  sub_20CE13364();
  sub_20CE132E4();

  v19 = sub_20CE133E4();
  v21 = v20;
  v23 = v22;

  sub_20CD93620(v14, v16, v18 & 1);

  v24 = *MEMORY[0x277CE09A0];
  v25 = sub_20CE132F4();
  v26 = *(v25 - 8);
  v27 = v77;
  (*(v26 + 104))(v77, v24, v25);
  (*(v26 + 56))(v27, 0, 1, v25);
  v28 = sub_20CE13394();
  v71 = v29;
  v72 = v28;
  LOBYTE(v26) = v30;
  v78 = v31;
  sub_20CD93620(v19, v21, v23 & 1);

  sub_20CE0E9E0(v27, &qword_27C8125C0, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v32 = *(type metadata accessor for LabelledProgressView() + 20);
  sub_20CE0D274(0, &qword_27C813818, sub_20CDA1354, MEMORY[0x277D839F8], MEMORY[0x277CDF5B0]);
  v33 = v68;
  sub_20CE12EF4();
  v69 = sub_20CE132A4();
  sub_20CE12E94();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LODWORD(v77) = v26 & 1;
  v118 = v26 & 1;
  v115 = 0;
  v42 = sub_20CE135F4();
  v44 = v43;
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v45 = sub_20CE135F4();
  v47 = v46;
  sub_20CE0D408(v33, &v109);
  v86 = *&v113[32];
  v87 = *&v113[48];
  v88 = *&v113[64];
  v82 = v111;
  v83 = v112;
  v84 = *v113;
  v85 = *&v113[16];
  v80 = v109;
  v81 = v110;
  v90[6] = *&v113[32];
  v90[7] = *&v113[48];
  v90[8] = *&v113[64];
  v90[2] = v111;
  v90[3] = v112;
  v90[4] = *v113;
  v90[5] = *&v113[16];
  v89 = *&v113[80];
  v91 = *&v113[80];
  v90[0] = v109;
  v90[1] = v110;
  sub_20CE0EA3C(&v80, v108, &qword_27C813848, sub_20CE0CF00);
  sub_20CE0E9E0(v90, &qword_27C813848, sub_20CE0CF00, MEMORY[0x277CE14B8]);

  v102 = v86;
  v103 = v87;
  v104 = v88;
  v98 = v82;
  v99 = v83;
  v100 = v84;
  v101 = v85;
  v96 = v80;
  v97 = v81;
  v92[7] = v86;
  v92[8] = v87;
  v92[9] = v88;
  v92[3] = v82;
  v92[4] = v83;
  v92[5] = v84;
  v92[6] = v85;
  *&v92[0] = v45;
  *(&v92[0] + 1) = v47;
  v92[1] = v80;
  v92[2] = v81;
  *&v93 = v89;
  *(&v93 + 1) = v42;
  v94 = v44;
  *(&v119[11] + 7) = v44;
  *(&v119[7] + 7) = v86;
  *(&v119[3] + 7) = v82;
  *(&v119[8] + 7) = v87;
  *(&v119[9] + 7) = v88;
  *(&v119[4] + 7) = v83;
  *(&v119[5] + 7) = v84;
  *(&v119[6] + 7) = v85;
  *(v119 + 7) = v92[0];
  *(&v119[1] + 7) = v80;
  *(&v119[2] + 7) = v81;
  *(&v119[10] + 7) = v93;
  v95[0] = v45;
  v95[1] = v47;
  v105 = v89;
  v106 = v42;
  v107 = v44;
  sub_20CE0E2E4(v92, &v109, sub_20CE0CDB8);
  sub_20CE0EABC(v95, sub_20CE0CDB8);
  swift_getKeyPath();
  v48 = v74;
  *&v109 = v74;
  sub_20CE12AF4();

  v49 = *(v48 + 24);
  *&v109 = *(v48 + 16);
  *(&v109 + 1) = v49;
  sub_20CD935CC();

  v50 = sub_20CE13414();
  v52 = v51;
  v54 = v53;
  sub_20CE13334();
  sub_20CE132E4();

  v55 = sub_20CE133E4();
  v73 = v57;
  v74 = v56;
  v59 = v58;

  sub_20CD93620(v50, v52, v54 & 1);

  *(&v108[25] + 1) = v119[8];
  *(&v108[27] + 1) = v119[9];
  *(&v108[29] + 1) = v119[10];
  *&v108[31] = *(&v119[10] + 15);
  *(&v108[17] + 1) = v119[4];
  *(&v108[19] + 1) = v119[5];
  *(&v108[21] + 1) = v119[6];
  *(&v108[23] + 1) = v119[7];
  *(&v108[9] + 1) = v119[0];
  *(&v108[11] + 1) = v119[1];
  *(&v108[13] + 1) = v119[2];
  v61 = v71;
  v60 = v72;
  v108[0] = v72;
  v108[1] = v71;
  LOBYTE(v108[2]) = v77;
  *(&v108[2] + 1) = *v117;
  HIDWORD(v108[2]) = *&v117[3];
  v108[3] = v78;
  v62 = v69;
  LOBYTE(v108[4]) = v69;
  *(&v108[4] + 1) = *v116;
  HIDWORD(v108[4]) = *&v116[3];
  v108[5] = v35;
  v108[6] = v37;
  v108[7] = v39;
  v108[8] = v41;
  LOBYTE(v108[9]) = 0;
  *(&v108[15] + 1) = v119[3];
  LOBYTE(v50) = v59 & 1;
  v79 = v59 & 1;
  v63 = v75;
  memcpy(v75, v108, 0x108uLL);
  v65 = v73;
  v64 = v74;
  v63[33] = v55;
  v63[34] = v64;
  *(v63 + 280) = v50;
  v63[36] = v65;
  sub_20CE0E2E4(v108, &v109, sub_20CE0CD24);
  sub_20CD93B54(v55, v64, v50);

  sub_20CD93620(v55, v64, v50);

  *&v109 = v60;
  *(&v109 + 1) = v61;
  LOBYTE(v110) = v77;
  *(&v110 + 1) = *v117;
  DWORD1(v110) = *&v117[3];
  *(&v110 + 1) = v78;
  LOBYTE(v111) = v62;
  *(&v111 + 1) = *v116;
  DWORD1(v111) = *&v116[3];
  *(&v111 + 1) = v35;
  *&v112 = v37;
  *(&v112 + 1) = v39;
  *v113 = v41;
  v113[8] = 0;
  *&v113[137] = v119[8];
  *&v113[153] = v119[9];
  v114[0] = v119[10];
  *(v114 + 15) = *(&v119[10] + 15);
  *&v113[73] = v119[4];
  *&v113[89] = v119[5];
  *&v113[105] = v119[6];
  *&v113[121] = v119[7];
  *&v113[9] = v119[0];
  *&v113[25] = v119[1];
  *&v113[41] = v119[2];
  *&v113[57] = v119[3];
  sub_20CE0EABC(&v109, sub_20CE0CD24);
}

void sub_20CE0CCBC()
{
  if (!qword_27C813828)
  {
    sub_20CE0CD24();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C813828);
    }
  }
}

void sub_20CE0CD24()
{
  if (!qword_27C813830)
  {
    sub_20CE0D36C(255, &qword_27C812F60, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_20CE0CDB8();
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813830);
    }
  }
}

void sub_20CE0CDB8()
{
  if (!qword_27C813838)
  {
    sub_20CE0CE4C();
    sub_20CE0D3C0(&qword_27C8138A8, sub_20CE0CE4C);
    v0 = sub_20CE13004();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813838);
    }
  }
}

void sub_20CE0CE4C()
{
  if (!qword_27C813840)
  {
    sub_20CE0E97C(255, &qword_27C813848, sub_20CE0CF00, MEMORY[0x277CE14B8]);
    sub_20CE0E630(&qword_27C8138A0, &qword_27C813848, sub_20CE0CF00);
    v0 = sub_20CE13594();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813840);
    }
  }
}

void sub_20CE0CF00()
{
  if (!qword_27C813850)
  {
    sub_20CE0CF70();
    sub_20CE0D0E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C813850);
    }
  }
}

void sub_20CE0CF70()
{
  if (!qword_27C813858)
  {
    sub_20CE0D274(255, &qword_27C813860, sub_20CE0D040, MEMORY[0x277CE1120], MEMORY[0x277CDF770]);
    sub_20CE0E97C(255, &qword_27C812FE0, sub_20CE0D094, MEMORY[0x277CE0860]);
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813858);
    }
  }
}

unint64_t sub_20CE0D040()
{
  result = qword_27C813868;
  if (!qword_27C813868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813868);
  }

  return result;
}

void sub_20CE0D094()
{
  if (!qword_27C812FE8)
  {
    v0 = sub_20CE13F44();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812FE8);
    }
  }
}

void sub_20CE0D0E4()
{
  if (!qword_27C813870)
  {
    sub_20CE0D178();
    sub_20CE0D36C(255, &qword_27C813898, MEMORY[0x277D839F8], MEMORY[0x277D83A28], MEMORY[0x277CE0190]);
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813870);
    }
  }
}

void sub_20CE0D178()
{
  if (!qword_27C813878)
  {
    sub_20CE0D1D8();
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813878);
    }
  }
}

void sub_20CE0D1D8()
{
  if (!qword_27C813880)
  {
    sub_20CE0D274(255, &qword_27C813888, sub_20CE0D040, MEMORY[0x277CE1120], MEMORY[0x277CDF788]);
    sub_20CE0D2DC();
    v0 = sub_20CE12F34();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813880);
    }
  }
}

void sub_20CE0D274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_20CE0D2DC()
{
  result = qword_27C813890;
  if (!qword_27C813890)
  {
    sub_20CE0D274(255, &qword_27C813888, sub_20CE0D040, MEMORY[0x277CE1120], MEMORY[0x277CDF788]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813890);
  }

  return result;
}

void sub_20CE0D36C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_20CE0D3C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CE0D408@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(type metadata accessor for LabelledProgressView() + 20);
  sub_20CE0D274(0, &qword_27C813818, sub_20CDA1354, MEMORY[0x277D839F8], MEMORY[0x277CDF5B0]);
  sub_20CE12EF4();
  sub_20CE12EC4();
  v5 = v61;
  v27 = v63;
  v28 = v62;
  v6 = v64;
  v26 = v65;
  v7 = v66;
  if (qword_27C811DD8 != -1)
  {
    swift_once();
  }

  v24 = qword_27C8179F8;
  KeyPath = swift_getKeyPath();
  v8 = *a1;
  swift_getKeyPath();
  v52[0] = v8;
  sub_20CE0D3C0(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model);

  sub_20CE12AF4();

  if (*(v8 + 48) <= 1.0)
  {
    v9 = *(v8 + 48);
  }

  else
  {
    v9 = 1.0;
  }

  sub_20CE12EF4();
  sub_20CE12EC4();
  sub_20CE13664();
  v11 = v10;
  v13 = v12;
  swift_getKeyPath();
  v52[0] = v8;
  sub_20CE12AF4();

  *(v8 + 48);
  v14 = sub_20CE13604();
  swift_getKeyPath();
  v52[0] = v8;
  sub_20CE12AF4();

  v15 = *(v8 + 48);
  *&v48[0] = 0;
  *(v48 + 1) = v9;
  v48[1] = v41;
  v48[2] = v42;
  v16 = v43;
  *&v49 = v43;
  *(&v49 + 1) = 0x4012D97C7F3321D2;
  *&v50 = v11;
  *(&v50 + 1) = v13;
  *&v51 = v14;
  *(&v51 + 1) = v15;
  *&v40[24] = v41;
  *&v40[8] = v48[0];
  *&v40[88] = v51;
  *&v40[72] = v50;
  *&v40[56] = v49;
  *&v40[40] = v42;
  *(a2 + 144) = v15;
  *&v44 = v5;
  *(&v44 + 1) = __PAIR64__(v27, v28);
  *&v45 = v6;
  *(&v45 + 1) = v26;
  *&v46 = v7;
  *(&v46 + 1) = KeyPath;
  v47 = v24;
  *v40 = v24;
  v37 = v44;
  v38 = v45;
  v39 = v46;
  v17 = v45;
  *a2 = v44;
  *(a2 + 16) = v17;
  v18 = v39;
  v19 = *v40;
  v20 = *&v40[32];
  *(a2 + 64) = *&v40[16];
  *(a2 + 80) = v20;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  v21 = *&v40[48];
  v22 = *&v40[80];
  *(a2 + 112) = *&v40[64];
  *(a2 + 128) = v22;
  *(a2 + 96) = v21;
  v52[0] = 0;
  *&v52[1] = v9;
  v53 = v41;
  v54 = v42;
  v55 = v16;
  v56 = 0x4012D97C7F3321D2;
  v57 = v11;
  v58 = v13;
  v59 = v14;
  v60 = v15;
  sub_20CE0E2E4(&v44, &v29, sub_20CE0CF70);
  sub_20CE0E2E4(v48, &v29, sub_20CE0D0E4);
  sub_20CE0EABC(v52, sub_20CE0D0E4);
  v29 = v5;
  v30 = v28;
  v31 = v27;
  v32 = v6;
  v33 = v26;
  v34 = v7;
  v35 = KeyPath;
  v36 = v24;
  sub_20CE0EABC(&v29, sub_20CE0CF70);
}

uint64_t sub_20CE0D898()
{
  v0[2] = sub_20CE13B84();
  v0[3] = sub_20CE13B74();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20CE0D944;

  return sub_20CE0DAE0();
}

uint64_t sub_20CE0D944()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_20CE13B24();

  return MEMORY[0x2822009F8](sub_20CE0DA80, v5, v4);
}

uint64_t sub_20CE0DA80()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CE0DAE0()
{
  v1[7] = v0;
  v2 = sub_20CE14184();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = sub_20CE14194();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  sub_20CE13B84();
  v1[15] = sub_20CE13B74();
  v9 = sub_20CE13B24();
  v1[16] = v9;
  v1[17] = v8;

  return MEMORY[0x2822009F8](sub_20CE0DC3C, v9, v8);
}

uint64_t sub_20CE0DC3C()
{
  if (sub_20CE13BE4())
  {
    v1 = *(v0 + 120);

    v2 = *(v0 + 112);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 144) = **(v0 + 56);
    v7 = *(v0 + 112);
    sub_20CDB6728();
    sub_20CE14314();
    *(v0 + 40) = xmmword_20CE1A230;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x2822009F8](sub_20CE0DD2C, 0, 0);
  }
}

uint64_t sub_20CE0DD2C()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = sub_20CE0D3C0(&qword_27C811ED0, MEMORY[0x277D85928]);
  sub_20CE142F4();
  sub_20CE0D3C0(&qword_27C811ED8, MEMORY[0x277D858F8]);
  sub_20CE141A4();
  v8 = *(v5 + 8);
  v0[19] = v8;
  v0[20] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_20CE0DEB0;
  v11 = v0[14];
  v13 = v0[11];
  v12 = v0[12];

  return MEMORY[0x2822008C8](v13, v0 + 2, v12, v7);
}

uint64_t sub_20CE0DEB0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v16 = *v1;

  if (v0)
  {
    v5 = v2[19];
    v4 = v2[20];
    v6 = v2[11];
    v7 = v2[8];

    v5(v6, v7);
    v8 = sub_20CE0E10C;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = v2[20];
    v13 = v2[13];
    v12 = v2[14];
    v14 = v2[12];
    (v2[19])(v2[11], v2[8]);
    (*(v13 + 8))(v12, v14);
    v9 = v2[16];
    v10 = v2[17];
    v8 = sub_20CE0E024;
  }

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_20CE0E024()
{
  if (sub_20CE13BE4())
  {
    v1 = *(v0 + 120);

    v2 = *(v0 + 112);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 112);
    sub_20CDB6728();
    sub_20CE14314();
    *(v0 + 40) = xmmword_20CE1A230;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x2822009F8](sub_20CE0DD2C, 0, 0);
  }
}

uint64_t sub_20CE0E10C()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x2822009F8](sub_20CE0EB1C, v1, v2);
}

uint64_t sub_20CE0E180()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C8179E8;
  result = sub_20CE13524();
  qword_27C8179F0 = result;
  return result;
}

uint64_t sub_20CE0E208()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C8179E8;
  result = sub_20CE13524();
  qword_27C8179F8 = result;
  return result;
}

uint64_t sub_20CE0E28C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CE13054();
  *a1 = result;
  return result;
}

uint64_t sub_20CE0E2B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_20CE13064();
}

uint64_t sub_20CE0E2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE0E34C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabelledProgressView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE0E3B0()
{
  v1 = *(type metadata accessor for LabelledProgressView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_20CD7C660;

  return sub_20CE0D898();
}

void sub_20CE0E47C()
{
  if (!qword_27C8138B0)
  {
    sub_20CE0E4E4();
    sub_20CE12F44();
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8138B0);
    }
  }
}

void sub_20CE0E4E4()
{
  if (!qword_27C8138B8)
  {
    sub_20CE0E57C();
    sub_20CE0E97C(255, &qword_27C812FE0, sub_20CE0D094, MEMORY[0x277CE0860]);
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8138B8);
    }
  }
}

void sub_20CE0E57C()
{
  if (!qword_27C8138C0)
  {
    sub_20CE0E97C(255, &qword_27C813820, sub_20CE0CCBC, MEMORY[0x277CE14B8]);
    sub_20CE0E630(&qword_27C8138C8, &qword_27C813820, sub_20CE0CCBC);
    v0 = sub_20CE13574();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8138C0);
    }
  }
}

uint64_t sub_20CE0E630(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_20CE0E97C(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CE0E6D8()
{
  type metadata accessor for LabelledProgressView.Model();
  if (v0 <= 0x3F)
  {
    sub_20CE0D274(319, &qword_27C813818, sub_20CDA1354, MEMORY[0x277D839F8], MEMORY[0x277CDF5B0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20CE0E794()
{
  result = qword_27C8138E0;
  if (!qword_27C8138E0)
  {
    sub_20CE0E47C();
    sub_20CE0E844();
    sub_20CE0D3C0(&qword_27C8138F8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8138E0);
  }

  return result;
}

unint64_t sub_20CE0E844()
{
  result = qword_27C8138E8;
  if (!qword_27C8138E8)
  {
    sub_20CE0E4E4();
    sub_20CE0D3C0(&qword_27C8138F0, sub_20CE0E57C);
    sub_20CE0E8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8138E8);
  }

  return result;
}

unint64_t sub_20CE0E8F4()
{
  result = qword_27C813028;
  if (!qword_27C813028)
  {
    sub_20CE0E97C(255, &qword_27C812FE0, sub_20CE0D094, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813028);
  }

  return result;
}

void sub_20CE0E97C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE0E9E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_20CE0E97C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_20CE0EA3C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CE0E97C(0, a3, a4, MEMORY[0x277CE14B8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CE0EABC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CE0EB20()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3)
    {
      v4 = sub_20CE13914();
      v5 = [v0 hk:v4 keyExists:?];

      result = 2;
      if (v5)
      {
        v6 = sub_20CE13914();
        v7 = [v0 BOOLForKey_];

        if (v7)
        {
          return 0;
        }

        else
        {
          return 2;
        }
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0EC10()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults.overridenLeftEarInconclusive.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults.overridenRightEarInconclusive.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0EEBC@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v4 = result;
    v5 = [result isAppleInternalInstall];

    if (v5 && (v6 = sub_20CE13914(), v7 = [v1 hk:v6 keyExists:?], v6, v7))
    {
      v8 = sub_20CE13914();
      v9 = [v1 integerForKey_];

      return sub_20CDAB020(v9, a1);
    }

    else
    {
      v10 = sub_20CE129C4();
      v11 = *(*(v10 - 8) + 56);

      return v11(a1, 1, 1, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0F018()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0F0FC()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0F1E0()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0F2C4()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0F3A8()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults.overrideHearingTestSessionPauseThreshold.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5) && (v6 = sub_20CE13914(), objc_msgSend(v0, sel_doubleForKey_, v6), v8 = v7, v6, v8 > 1.0))
    {
      return *&v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults.overridenHTThresholds(channel:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20CE12854();
  v98 = *(v4 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x28223BE20](v4);
  v97 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CE12924();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277D12CD8], v7);
  sub_20CD8B030();
  sub_20CE13A84();
  sub_20CE13A84();
  v12 = *(v8 + 8);
  v99 = v11;
  v12(v11, v7);
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
LABEL_101:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = [result isAppleInternalInstall];

  if (!v15 || (v16 = sub_20CE13914(), v17 = [v1 hk:v16 keyExists:?], v16, (v17 & 1) == 0))
  {
LABEL_32:

    return 0;
  }

  v18 = sub_20CE13914();

  v19 = [v2 arrayForKey_];

  if (!v19)
  {
    return 0;
  }

  v20 = sub_20CE13AB4();

  v21 = sub_20CE10F38(v20);

  if (!v21)
  {
    return 0;
  }

  v89 = v8;
  v94 = v4;
  v95 = v7;
  v96 = a1;
  v23 = *(v21 + 16);
  v24 = MEMORY[0x277D84F90];
  if (!v23)
  {
    goto LABEL_35;
  }

  v25 = 0;
  v26 = 0;
  v27 = v21 + 40;
  v92 = v23 - 1;
  v93 = v21 + 40;
  do
  {
    v28 = v24;
    v24 = v27 + 16 * v25;
    v29 = v25;
    while (1)
    {
      if (v29 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_79;
      }

      v30 = *(v24 - 8);
      v17 = *v24;
      v103 = 0;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      *(&v89 - 2) = &v103;
      if ((v17 & 0x1000000000000000) == 0)
      {
        if ((v17 & 0x2000000000000000) != 0)
        {
          v100 = v30;
          v101 = v17 & 0xFFFFFFFFFFFFFFLL;

          if (v30 >= 0x21u || ((0x100003E01uLL >> v30) & 1) == 0)
          {
            v32 = _swift_stdlib_strtod_clocale();
            if (v32)
            {
LABEL_20:
              v102 = *v32 == 0;
              goto LABEL_22;
            }
          }

          goto LABEL_21;
        }

        if ((v30 & 0x1000000000000000) != 0)
        {
          v31 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v31 >= 0x21 || ((0x100003E01uLL >> v31) & 1) == 0)
          {
            v32 = _swift_stdlib_strtod_clocale();
            if (v32)
            {
              goto LABEL_20;
            }
          }

LABEL_21:
          v102 = 0;
          goto LABEL_22;
        }
      }

      sub_20CE140D4();
LABEL_22:

      if (v102)
      {
        break;
      }

      ++v29;
      v24 += 16;
      if (v23 == v29)
      {
        v24 = v28;
        goto LABEL_35;
      }
    }

    v33 = v103;
    v24 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_20CD895D4(0, *(v28 + 16) + 1, 1, v28);
      v24 = isUniquelyReferenced_nonNull_native;
    }

    v35 = *(v24 + 16);
    v34 = *(v24 + 24);
    v17 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_20CD895D4((v34 > 1), v35 + 1, 1, v24);
      v24 = isUniquelyReferenced_nonNull_native;
    }

    v25 = v29 + 1;
    *(v24 + 16) = v17;
    *(v24 + 8 * v35 + 32) = v33;
    v27 = v93;
  }

  while (v92 != v29);
LABEL_35:

  v26 = *(v24 + 16);
  v37 = _HKAudiogramStandardFrequencies();
  v17 = sub_20CD83128(0, &qword_27C812458, 0x277CCABB0);
  v38 = sub_20CE13AB4();

  if (v38 >> 62)
  {
LABEL_79:
    v39 = sub_20CE141C4();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((v39 * 3) >> 64 != (3 * v39) >> 63)
  {
    __break(1u);
LABEL_81:
    v68 = sub_20CE141C4();
    if (!v68)
    {
      goto LABEL_82;
    }

LABEL_69:
    v100 = MEMORY[0x277D84F90];
    result = sub_20CDB46B0(0, v68 & ~(v68 >> 63), 0);
    if ((v68 & 0x8000000000000000) == 0)
    {
      v69 = 0;
      v70 = v100;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v71 = MEMORY[0x20F313610](v69, v24);
        }

        else
        {
          v71 = *(v24 + 8 * v69 + 32);
        }

        v72 = v71;
        [v71 doubleValue];
        v74 = v73;

        v100 = v70;
        v76 = *(v70 + 16);
        v75 = *(v70 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_20CDB46B0((v75 > 1), v76 + 1, 1);
          v70 = v100;
        }

        ++v69;
        *(v70 + 16) = v76 + 1;
        *(v70 + 8 * v76 + 32) = v74;
      }

      while (v68 != v69);

      goto LABEL_83;
    }

LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v26 != 3 * v39)
  {
    goto LABEL_32;
  }

  v40 = *(v24 + 16);
  if (v40)
  {
    v90 = v17;
    v41 = 0;
    v42 = 0;
    v43 = v24 + 32;
    v44 = MEMORY[0x277D84F90];
    do
    {
      if (!(v41 + 3 * (v42 / 3)))
      {
        v48 = *(v43 + 8 * v42);
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v44;
        if ((v49 & 1) == 0)
        {
          sub_20CDB46D0(0, *(v44 + 16) + 1, 1);
          v44 = v100;
        }

        v46 = *(v44 + 16);
        v45 = *(v44 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_20CDB46D0((v45 > 1), v46 + 1, 1);
          v44 = v100;
        }

        *(v44 + 16) = v46 + 1;
        v47 = v44 + 16 * v46;
        *(v47 + 32) = v42;
        *(v47 + 40) = v48;
      }

      ++v42;
      --v41;
    }

    while (v40 != v42);
    v93 = v44;
    v50 = 0;
    v51 = MEMORY[0x277D84F90];
    v52 = 1;
    do
    {
      if (!(v52 + 3 * (v50 / 3)))
      {
        v56 = *(v43 + 8 * v50);
        v57 = v51;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v51 = v57;
        v100 = v57;
        if ((v58 & 1) == 0)
        {
          sub_20CDB46D0(0, *(v57 + 16) + 1, 1);
          v51 = v100;
        }

        v54 = *(v51 + 16);
        v53 = *(v51 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_20CDB46D0((v53 > 1), v54 + 1, 1);
          v51 = v100;
        }

        *(v51 + 16) = v54 + 1;
        v55 = v51 + 16 * v54;
        *(v55 + 32) = v50;
        *(v55 + 40) = v56;
      }

      ++v50;
      --v52;
    }

    while (v40 != v50);
    v91 = v24;
    v59 = 0;
    v26 = MEMORY[0x277D84F90];
    v60 = 2;
    do
    {
      if (!(v60 + 3 * (v59 / 3)))
      {
        v64 = v51;
        v65 = *(v43 + 8 * v59);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v26;
        if ((v66 & 1) == 0)
        {
          sub_20CDB46D0(0, *(v26 + 16) + 1, 1);
          v26 = v100;
        }

        v62 = *(v26 + 16);
        v61 = *(v26 + 24);
        v51 = v64;
        if (v62 >= v61 >> 1)
        {
          sub_20CDB46D0((v61 > 1), v62 + 1, 1);
          v51 = v64;
          v26 = v100;
        }

        *(v26 + 16) = v62 + 1;
        v63 = v26 + 16 * v62;
        *(v63 + 32) = v59;
        *(v63 + 40) = v65;
      }

      ++v59;
      --v60;
    }

    while (v40 != v59);
    v92 = v51;
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
    v92 = MEMORY[0x277D84F90];
    v93 = MEMORY[0x277D84F90];
  }

  v67 = _HKAudiogramStandardFrequencies();
  v24 = sub_20CE13AB4();

  if (v24 >> 62)
  {
    goto LABEL_81;
  }

  v68 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v68)
  {
    goto LABEL_69;
  }

LABEL_82:

  v70 = MEMORY[0x277D84F90];
LABEL_83:
  v77 = *(v70 + 16);
  v78 = v97;
  if (v77)
  {
    v100 = MEMORY[0x277D84F90];
    result = sub_20CDB4670(0, v77, 0);
    v79 = 0;
    v80 = *(v70 + 16);
    v90 = v70 + 32;
    v91 = v80;
    v36 = v100;
    v81 = (v89 + 16);
    v89 = v98 + 32;
    v82 = 40;
    while (v91 != v79)
    {
      if (v79 >= *(v70 + 16))
      {
        goto LABEL_96;
      }

      if (v79 >= *(v93 + 16))
      {
        goto LABEL_97;
      }

      v83 = *(v90 + 8 * v79);
      v84 = *(v93 + v82);
      result = (*v81)(v99, v96, v95);
      if (v79 >= *(v92 + 16))
      {
        goto LABEL_98;
      }

      if (v79 >= *(v26 + 16))
      {
        goto LABEL_99;
      }

      v85 = *(v92 + v82);
      v86 = *(v26 + v82);
      sub_20CE12824();
      v100 = v36;
      v88 = *(v36 + 16);
      v87 = *(v36 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_20CDB4670(v87 > 1, v88 + 1, 1);
        v36 = v100;
      }

      ++v79;
      *(v36 + 16) = v88 + 1;
      result = (*(v98 + 32))(v36 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v88, v78, v94);
      v82 += 16;
      if (v77 == v79)
      {

        return v36;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20CE10080()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults.overriddenLeftSessionResultState.getter@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v4 = result;
    v5 = [result isAppleInternalInstall];

    if (v5 && (v6 = sub_20CE13914(), v7 = [v1 hk:v6 keyExists:?], v6, v7))
    {
      v8 = sub_20CE13914();
      v9 = [v1 integerForKey_];

      return sub_20CD7D814(v9, a1);
    }

    else
    {
      v10 = sub_20CE12644();
      v11 = *(*(v10 - 8) + 56);

      return v11(a1, 1, 1, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults.overriddenRightSessionResultState.getter@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v4 = result;
    v5 = [result isAppleInternalInstall];

    if (v5 && (v6 = sub_20CE13914(), v7 = [v1 hk:v6 keyExists:?], v6, v7))
    {
      v8 = sub_20CE13914();
      v9 = [v1 integerForKey_];

      return sub_20CD7D814(v9, a1);
    }

    else
    {
      v10 = sub_20CE12644();
      v11 = *(*(v10 - 8) + 56);

      return v11(a1, 1, 1, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *NSUserDefaults.overriddenHearingLossSensitivity(ear:)(uint64_t a1)
{
  if (!a1)
  {
    v2 = "RightEarInconclusiveOverrideKey";
    v4 = 0xD000000000000025;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v2 = "ssSensitivityOverride";
    v4 = 0xD000000000000026;
LABEL_5:
    v5 = [objc_opt_self() sharedBehavior];
    if (!v5)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v6 = v5;
    v7 = [v5 isAppleInternalInstall];

    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = sub_20CE13914();
    v9 = [v74 hk:v8 keyExists:?];

    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }

    v10 = _HKAudiogramStandardFrequencies();
    sub_20CD83128(0, &qword_27C812458, 0x277CCABB0);
    v11 = sub_20CE13AB4();

    if (v11 >> 62)
    {
      v12 = sub_20CE141C4();
      v73 = v2;
      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v73 = v2;
      if (v12)
      {
LABEL_10:
        v72 = v4;
        v75 = MEMORY[0x277D84F90];
        sub_20CE14154();
        if (v12 < 0)
        {
LABEL_62:
          __break(1u);
LABEL_63:
          v2 = v11;
          v1 = v3;
          v52 = sub_20CE141C4();
          if ((v52 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          __break(1u);
          goto LABEL_65;
        }

        v13 = objc_opt_self();
        v14 = objc_opt_self();
        v15 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x20F313610](v15, v11);
          }

          else
          {
            v16 = *(v11 + 8 * v15 + 32);
          }

          v17 = v16;
          ++v15;
          v18 = [v13 hertzUnit];
          [v17 doubleValue];
          v19 = [v14 quantityWithUnit:v18 doubleValue:?];

          sub_20CE14134();
          v20 = v75[2];
          sub_20CE14164();
          sub_20CE14174();
          sub_20CE14144();
        }

        while (v12 != v15);

        v3 = v75;
LABEL_21:
        v23 = sub_20CE13914();
        v24 = [v74 arrayForKey_];

        v11 = v3 >> 62;
        if (v24)
        {
          v25 = sub_20CE13AB4();

          v26 = sub_20CE10F38(v25);

          if (v26)
          {
            v72 = v3 >> 62;
            v28 = *(v26 + 16);
            if (!v28)
            {
              *&v74 = MEMORY[0x277D84F90];
              goto LABEL_60;
            }

            v29 = 0;
            v30 = v26 + 40;
            v69 = v28 - 1;
            *&v74 = MEMORY[0x277D84F90];
            v70 = v26 + 40;
            v71 = v3;
            while (1)
            {
              v31 = (v30 + 16 * v29);
              v32 = v29;
              while (1)
              {
                if (v32 >= *(v26 + 16))
                {
                  __break(1u);
                  goto LABEL_62;
                }

                v11 = &v68;
                v34 = *(v31 - 1);
                v33 = *v31;
                v78 = 0;
                MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
                v3 = &v65;
                v66 = &v78;
                if ((v33 & 0x1000000000000000) == 0)
                {
                  if ((v33 & 0x2000000000000000) != 0)
                  {
                    v75 = v34;
                    v76 = v33 & 0xFFFFFFFFFFFFFFLL;

                    if (v34 >= 0x21u || ((0x100003E01uLL >> v34) & 1) == 0)
                    {
                      v36 = _swift_stdlib_strtod_clocale();
                      if (v36)
                      {
LABEL_37:
                        v77 = *v36 == 0;
                        goto LABEL_39;
                      }
                    }

                    goto LABEL_38;
                  }

                  if ((v34 & 0x1000000000000000) != 0)
                  {
                    v35 = *((v33 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                    if (v35 >= 0x21 || ((0x100003E01uLL >> v35) & 1) == 0)
                    {
                      v36 = _swift_stdlib_strtod_clocale();
                      if (v36)
                      {
                        goto LABEL_37;
                      }
                    }

LABEL_38:
                    v77 = 0;
                    goto LABEL_39;
                  }
                }

                sub_20CE140D4();
LABEL_39:

                if (v77)
                {
                  break;
                }

                ++v32;
                v31 += 2;
                if (v28 == v32)
                {
                  v3 = v71;
                  goto LABEL_60;
                }
              }

              v37 = v78;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                isUniquelyReferenced_nonNull_native = sub_20CD895D4(0, *(v74 + 16) + 1, 1, v74);
                *&v74 = isUniquelyReferenced_nonNull_native;
              }

              v3 = v71;
              v11 = *(v74 + 16);
              v38 = *(v74 + 24);
              if (v11 >= v38 >> 1)
              {
                isUniquelyReferenced_nonNull_native = sub_20CD895D4((v38 > 1), v11 + 1, 1, v74);
                *&v74 = isUniquelyReferenced_nonNull_native;
              }

              v29 = v32 + 1;
              v39 = v74;
              *(v74 + 16) = v11 + 1;
              *(v39 + 8 * v11 + 32) = v37;
              v30 = v70;
              if (v69 == v32)
              {
LABEL_60:

                v44 = v74;
                v11 = v72;
                goto LABEL_69;
              }
            }
          }
        }

        v40 = sub_20CE13914();

        [v74 doubleForKey_];
        v74 = v41;

        if (!v11)
        {
          v42 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v42)
          {
            goto LABEL_51;
          }

LABEL_68:
          v44 = MEMORY[0x277D84F90];
          goto LABEL_69;
        }

        goto LABEL_63;
      }
    }

    v3 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_66:
  v67 = 0;
  v66 = 134;
  v52 = sub_20CE141B4();
  __break(1u);
LABEL_67:
  v42 = v52;
  v3 = v1;
  v11 = v2;
  if (!v52)
  {
    goto LABEL_68;
  }

LABEL_51:
  v43 = sub_20CE13AE4();
  v44 = v43;
  *(v43 + 16) = v42;
  v45 = (v43 + 32);
  if (v42 < 4)
  {
    v46 = 0;
    v47 = v74;
LABEL_56:
    v51 = v42 - v46;
    do
    {
      *v45++ = v47;
      --v51;
    }

    while (v51);
    goto LABEL_69;
  }

  v46 = v42 & 0x7FFFFFFFFFFFFFFCLL;
  v45 += v42 & 0x7FFFFFFFFFFFFFFCLL;
  v47 = v74;
  v48 = vdupq_lane_s64(v74, 0);
  v49 = (v43 + 48);
  v50 = v42 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v49[-1] = v48;
    *v49 = v48;
    v49 += 2;
    v50 -= 4;
  }

  while (v50);
  if (v42 != v46)
  {
    goto LABEL_56;
  }

LABEL_69:
  v53 = *(v44 + 16);
  if (v11)
  {
    goto LABEL_87;
  }

  if (v53 != *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_90:

LABEL_16:

    return 0;
  }

  if (!v53)
  {
LABEL_89:

    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v75 = MEMORY[0x277D84F90];
    result = sub_20CDB4630(0, v53 & ~(v53 >> 63), 0);
    if (v53 < 0)
    {
      break;
    }

    v21 = v75;
    if (v11)
    {
      v54 = sub_20CE141C4();
    }

    else
    {
      v54 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v74 = objc_opt_self();
    result = objc_opt_self();
    v73 = result;
    if (v53 > *(v44 + 16))
    {
      goto LABEL_92;
    }

    v72 = v3 & 0xC000000000000001;
    v55 = 4;
    v56 = v54 & ~(v54 >> 63);
    v57 = v3;
    while (v56)
    {
      if (v72)
      {
        v58 = MEMORY[0x20F313610](v55 - 4, v3);
      }

      else
      {
        v58 = *(v3 + 8 * v55);
      }

      v59 = v58;
      v60 = [v74 decibelHearingLevelUnit];
      v11 = v44;
      v61 = [v73 quantityWithUnit:v60 doubleValue:*(v44 + 8 * v55)];

      v75 = v21;
      v63 = v21[2];
      v62 = v21[3];
      if (v63 >= v62 >> 1)
      {
        sub_20CDB4630((v62 > 1), v63 + 1, 1);
        v21 = v75;
      }

      v21[2] = v63 + 1;
      v64 = &v21[2 * v63];
      v64[4] = v59;
      v64[5] = v61;
      --v56;
      ++v55;
      --v53;
      v3 = v57;
      v44 = v11;
      if (!v53)
      {

        return v21;
      }
    }

    __break(1u);
LABEL_87:
    if (v53 != sub_20CE141C4())
    {
      goto LABEL_90;
    }

    v53 = sub_20CE141C4();
    if (!v53)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

unint64_t HearingTestUIUserDefaultsKey.rawValue.getter()
{
  result = 0x65746E4965646948;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 6:
    case 0xA:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD000000000000025;
      break;
    case 8:
    case 0x10:
      result = 0xD000000000000026;
      break;
    case 0xB:
      result = 0xD000000000000018;
      break;
    case 0xC:
      result = 0xD000000000000019;
      break;
    case 0xD:
    case 0x17:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0xD000000000000012;
      break;
    case 0xF:
      result = 0xD00000000000001CLL;
      break;
    case 0x11:
      result = 0xD000000000000020;
      break;
    case 0x12:
      result = 0xD000000000000022;
      break;
    case 0x13:
      result = 0xD000000000000028;
      break;
    case 0x14:
      result = 0xD000000000000019;
      break;
    case 0x15:
      result = 0xD000000000000015;
      break;
    case 0x16:
      return result;
    default:
      result = 0xD000000000000024;
      break;
  }

  return result;
}

uint64_t sub_20CE10F38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_20CDB4650(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_20CD8A98C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20CDB4650((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_20CE1104C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_20CDB4730(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_20CD8A98C(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20CDB4730((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

HearingTestUI::HearingTestUIUserDefaultsKey_optional __swiftcall HearingTestUIUserDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20CE14294();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20CE1129C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = HearingTestUIUserDefaultsKey.rawValue.getter();
  v4 = v3;
  if (v2 == HearingTestUIUserDefaultsKey.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_20CE14284();
  }

  return v7 & 1;
}

uint64_t sub_20CE11338()
{
  v1 = *v0;
  sub_20CE14384();
  HearingTestUIUserDefaultsKey.rawValue.getter();
  sub_20CE139C4();

  return sub_20CE143B4();
}

uint64_t sub_20CE113A0()
{
  v2 = *v0;
  HearingTestUIUserDefaultsKey.rawValue.getter();
  sub_20CE139C4();
}

uint64_t sub_20CE11404()
{
  v1 = *v0;
  sub_20CE14384();
  HearingTestUIUserDefaultsKey.rawValue.getter();
  sub_20CE139C4();

  return sub_20CE143B4();
}

unint64_t sub_20CE11474@<X0>(unint64_t *a1@<X8>)
{
  result = HearingTestUIUserDefaultsKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20CE114AC(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v25[1] = *MEMORY[0x277D85DE8];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (*(a4 + 16) <= a1)
  {
    goto LABEL_11;
  }

  v6 = *(a4 + 16 * a1 + 40);
  sub_20CD98B04();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16F10;
  v8 = objc_allocWithZone(MEMORY[0x277CCD050]);
  v25[0] = 0;
  v9 = a3;
  v10 = a2;
  v11 = v6;
  v12 = [v8 initWithSensitivity:v9 type:0 masked:0 side:0 clampingRange:0 error:v25];
  if (!v12)
  {
    v21 = v25[0];

    sub_20CE12394();
    swift_willThrow();

LABEL_8:
    *(v7 + 16) = 0;

    goto LABEL_9;
  }

  v13 = v12;
  v14 = v25[0];

  *(v7 + 32) = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CCD050]);
  v25[0] = 0;
  v16 = v11;
  v17 = [v15 initWithSensitivity:v16 type:0 masked:0 side:1 clampingRange:0 error:v25];
  v18 = v25[0];
  if (!v17)
  {
    v22 = v25[0];

    sub_20CE12394();
    swift_willThrow();

    v10 = *(v7 + 32);
    goto LABEL_8;
  }

  v19 = v17;
  sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
  v20 = v18;

  *(v7 + 40) = v19;
  v7 = sub_20CE11808(v10);

LABEL_9:
  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_20CE116F8()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE11808(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  sub_20CD83128(0, &qword_27C812338, 0x277CCD050);
  v2 = sub_20CE13AA4();

  v8[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() sensitivityPointWithFrequency:a1 tests:v2 error:v8];

  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_20CE12394();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_20CE11910()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (!v0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v1 = v0;
  v2 = [v0 isAppleInternalInstall];

  if (v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v4 = sub_20CE13914();
    v5 = [v3 initWithSuiteName_];

    if (v5)
    {
      sub_20CE116F8();

      return;
    }

    goto LABEL_7;
  }
}

void _sSo14NSUserDefaultsC13HearingTestUIE19overriddenAudiogram6device8metadataSo17HKAudiogramSampleCSgSo8HKDeviceCSg_SDySSypGSgtF_0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_20CE124E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - v7;
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_20CE13914();
  v11 = [v9 initWithSuiteName_];

  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = NSUserDefaults.overriddenHearingLossSensitivity(ear:)(0);
  if (!v12)
  {
LABEL_15:

    return;
  }

  v13 = v12;
  v14 = NSUserDefaults.overriddenHearingLossSensitivity(ear:)(1);
  if (!v14)
  {

    goto LABEL_15;
  }

  v15 = v14;
  v46 = v8;
  v16 = *(v13 + 2);
  if (v16 == *(v14 + 2))
  {
    if (v16)
    {
      v41 = ObjectType;
      v42 = v6;
      v43 = v2;
      v44 = v1;
      v45 = v11;
      v47 = MEMORY[0x277D84F90];
      sub_20CE14154();
      v17 = 0;
      if (*(v13 + 2) >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = *(v13 + 2);
      }

      v19 = (v13 + 40);
      while (v18 != v17)
      {
        if (v17 >= *(v13 + 2))
        {
          goto LABEL_23;
        }

        v20 = *v19;
        v21 = *(v19 - 1);
        v22 = v20;
        sub_20CE114AC(v17++, v21, v22, v15);

        sub_20CE14134();
        v23 = *(v47 + 16);
        sub_20CE14164();
        sub_20CE14174();
        sub_20CE14144();
        v19 += 2;
        if (v16 == v17)
        {

          v1 = v44;
          v11 = v45;
          v6 = v42;
          v2 = v43;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
      swift_once();
      v29 = sub_20CE12CB4();
      __swift_project_value_buffer(v29, qword_27C817768);
      v30 = 0;
      v31 = sub_20CE12C94();
      v32 = sub_20CE13CB4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v47 = v34;
        *v33 = 136446466;
        v35 = sub_20CE14414();
        v37 = sub_20CD96DCC(v35, v36, &v47);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2080;
        swift_getErrorValue();
        v38 = sub_20CE14324();
        v40 = sub_20CD96DCC(v38, v39, &v47);

        *(v33 + 14) = v40;
        _os_log_impl(&dword_20CD70000, v31, v32, "[%{public}s] Could not create HKAudiogramSample from values in the UserDefaults. Error: %s.", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F314110](v34, -1, -1);
        MEMORY[0x20F314110](v33, -1, -1);
      }

      else
      {
      }
    }

    else
    {

LABEL_18:
      v24 = v46;
      sub_20CE124C4();
      sub_20CE124C4();
      sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
      v25 = sub_20CE13AA4();

      v26 = sub_20CE124A4();
      v27 = sub_20CE124A4();
      [objc_opt_self() audiogramSampleWithSensitivityPoints:v25 startDate:v26 endDate:v27 device:0 metadata:0];

      v28 = *(v2 + 8);
      v28(v6, v1);
      v28(v24, v1);
    }
  }

  else
  {
  }
}

_BYTE *sub_20CE11F20@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_20CE11FA4()
{
  result = qword_27C813900;
  if (!qword_27C813900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813900);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HearingTestUIUserDefaultsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HearingTestUIUserDefaultsKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}