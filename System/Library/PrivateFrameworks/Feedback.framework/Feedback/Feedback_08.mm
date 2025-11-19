BOOL sub_1B8BE6C4C(unsigned __int8 a1)
{
  if ([objc_opt_self() isMainThread])
  {
    swift_getKeyPath();
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23588();

    return *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState) == a1;
  }

  else
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v4 = sub_1B8C23C38();
    __swift_project_value_buffer(v4, qword_1EDC85D40);
    v5 = sub_1B8C23C18();
    v6 = sub_1B8C25478();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B8B22000, v5, v6, "BUG in Feedback.framework client.  Reading state must occur on main thread / queue.", v7, 2u);
      MEMORY[0x1B8CCB0E0](v7, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1B8BE6DE4()
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v1 = v0 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1B8BE6E98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B8BE6F54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23578();
}

uint64_t sub_1B8BE7024(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B8C24408();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent;
  swift_beginAccess();
  v10 = v5[2];
  v10(v8, v2 + v9, v4);
  sub_1B8BFA3AC(&unk_1EBAA8590, MEMORY[0x1E697C4F8]);
  LOBYTE(v9) = sub_1B8C250E8();
  v11 = v5[1];
  v11(v8, v4);
  if (v9)
  {
    v10(v8, a1, v4);
    sub_1B8BE8194(v8);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v14[-2] = v2;
    v14[-1] = a1;
    v14[2] = v2;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23578();
  }

  return (v11)(a1, v4);
}

uint64_t sub_1B8BE72DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__subject;
  swift_beginAccess();
  sub_1B8B34450(v1 + v7, v6, &qword_1EBAA6590, &qword_1B8C2EFD0);
  v8 = sub_1B8BF9EC0(v6, a1);
  sub_1B8B3433C(v6, &qword_1EBAA6590, &qword_1B8C2EFD0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23578();
  }

  else
  {
    sub_1B8B34450(a1, v6, &qword_1EBAA6590, &qword_1B8C2EFD0);
    swift_beginAccess();
    sub_1B8BFD360(v6, v1 + v7, &qword_1EBAA6590, &qword_1B8C2EFD0);
    swift_endAccess();
  }

  return sub_1B8B3433C(a1, &qword_1EBAA6590, &qword_1B8C2EFD0);
}

void sub_1B8BE750C(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + *a2);
  if (!v6)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23578();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1B8C23978();
  v7 = v6;
  v8 = a1;
  v9 = sub_1B8C255E8();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

uint64_t sub_1B8BE7690(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D0, &qword_1B8C2F018);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__actionPerformed;
  swift_beginAccess();
  sub_1B8B34450(v1 + v7, v6, &qword_1EBAA84D0, &qword_1B8C2F018);
  v8 = sub_1B8BF97A8(v6, a1);
  sub_1B8B3433C(v6, &qword_1EBAA84D0, &qword_1B8C2F018);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23578();
  }

  else
  {
    sub_1B8B34450(a1, v6, &qword_1EBAA84D0, &qword_1B8C2F018);
    swift_beginAccess();
    sub_1B8BFD360(v6, v1 + v7, &qword_1EBAA84D0, &qword_1B8C2F018);
    swift_endAccess();
  }

  return sub_1B8B3433C(a1, &qword_1EBAA84D0, &qword_1B8C2F018);
}

void sub_1B8BE78C0(void *a1, char a2)
{
  v4 = type metadata accessor for FBKEvaluation.Response(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E68, &qword_1B8C2E158);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v35 = v5;
    swift_getKeyPath();
    v36 = v17;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23588();

    v18 = &v17[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate];
    if (!swift_unknownObjectWeakLoadStrong())
    {
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v21 = sub_1B8C23C38();
      __swift_project_value_buffer(v21, qword_1EDC85D40);
      v22 = sub_1B8C23C18();
      v23 = sub_1B8C25498();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1B8B22000, v22, v23, "Evaluation finished but delegate is nil. No updates will be sent", v24, 2u);
        MEMORY[0x1B8CCB0E0](v24, -1, -1);

        return;
      }

      goto LABEL_16;
    }

    v34 = v15;
    v19 = *(v18 + 1);
    ObjectType = swift_getObjectType();
    if (a2)
    {
      (v19)[3](v17, a1, ObjectType, v19);
      swift_unknownObjectRelease();
LABEL_16:

      return;
    }

    (v19)[1](v17, a1, ObjectType, v19);
    v25 = a1;
    v26 = v34;
    sub_1B8BBE208(v25, v34);
    sub_1B8B34450(v26, v13, &qword_1EBAA7E68, &qword_1B8C2E158);
    if ((*(v35 + 48))(v13, 1, v4) == 1)
    {
      sub_1B8B3433C(v13, &qword_1EBAA7E68, &qword_1B8C2E158);
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v27 = sub_1B8C23C38();
      __swift_project_value_buffer(v27, qword_1EDC85D40);
      v28 = sub_1B8C23C18();
      v29 = sub_1B8C25478();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v34;
      if (v30)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1B8B22000, v28, v29, "Failed to convert FBKSEvaluation to FBKEvaluation.Response.  Deprecated delegate method will not be called.", v32, 2u);
        MEMORY[0x1B8CCB0E0](v32, -1, -1);
      }

      swift_unknownObjectRelease();
      v33 = v31;
    }

    else
    {
      sub_1B8BF9E58(v13, v8, type metadata accessor for FBKEvaluation.Response);
      (v19)[2](v17, v8, ObjectType, v19);

      swift_unknownObjectRelease();
      sub_1B8BFD64C(v8, type metadata accessor for FBKEvaluation.Response);
      v33 = v26;
    }

    sub_1B8B3433C(v33, &qword_1EBAA7E68, &qword_1B8C2E158);
  }
}

uint64_t sub_1B8BE7DB0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *(a2 + 8);
  v6 = objc_allocWithZone(type metadata accessor for FBKEvaluationController(0));

  return sub_1B8BF92BC(a1, v6, ObjectType, v5);
}

void sub_1B8BE7E14()
{
  v1 = v0;
  v2 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v11 = sub_1B8C23C38();
  __swift_project_value_buffer(v11, qword_1EDC85D40);
  v12 = sub_1B8C23C18();
  v13 = sub_1B8C25458();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B8B22000, v12, v13, "Using detent that shows only the title of Feedback UI", v14, 2u);
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
  }

  swift_getKeyPath();
  v20[1] = v1;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v15 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
  swift_beginAccess();
  sub_1B8B34450(v1 + v15, v10, &qword_1EBAA84D8, &qword_1B8C2F020);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_1B8B3433C(v10, &qword_1EBAA84D8, &qword_1B8C2F020);
  }

  else
  {
    sub_1B8BFCC3C(v10, v6, type metadata accessor for FBKEvaluationController.FormContext);
    sub_1B8B3433C(v10, &qword_1EBAA84D8, &qword_1B8C2F020);
    v19 = *&v6[*(v2 + 24)];
    v16 = v19;
    sub_1B8BFD64C(v6, type metadata accessor for FBKEvaluationController.FormContext);
    if (v19)
    {
      sub_1B8BB2444();
      goto LABEL_11;
    }
  }

  v16 = sub_1B8C23C18();
  v17 = sub_1B8C25478();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B8B22000, v16, v17, "No drafting controller. Cannot dismiss keyboard", v18, 2u);
    MEMORY[0x1B8CCB0E0](v18, -1, -1);
  }

LABEL_11:
}

uint64_t sub_1B8BE8194(uint64_t a1)
{
  v3 = sub_1B8C24408();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  swift_getKeyPath();
  v13 = v1;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = MEMORY[0x1B8CC90A0](v7, v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController_customSmallDetentForSwiftUI);
  v10 = *(v4 + 8);
  v10(v7, v3);
  if (v9)
  {
    sub_1B8BE7E14();
  }

  return (v10)(a1, v3);
}

uint64_t sub_1B8BE8370@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v3 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent;
  swift_beginAccess();
  v4 = sub_1B8C24408();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1B8BE8468(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B8C24408();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2);
  return sub_1B8BE8194(v6);
}

id FBKEvaluationController.init(subject:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - v5;
  v7 = sub_1B8C24408();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage] = 0;
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___presentAsEmbeddedView] = 0;
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = *MEMORY[0x1E699C110];
  sub_1B8C243F8();
  sub_1B8C243E8();
  (*(v8 + 32))(&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent], v11, v7);
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction] = 0;
  v13 = &v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation];
  *v13 = 0;
  v13[8] = -1;
  v14 = &v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__subject;
  v16 = sub_1B8C23738();
  v17 = *(*(v16 - 8) + 56);
  v17(&v1[v15], 1, 1, v16);
  v17(&v1[v15], 1, 1, v16);
  *&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction] = 0;
  v18 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
  v19 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v20 = *(*(v19 - 8) + 56);
  v20(&v1[v18], 1, 1, v19);
  v20(&v1[v18], 1, 1, v19);
  v21 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__actionPerformed;
  v22 = sub_1B8C236E8();
  (*(*(v22 - 8) + 56))(&v1[v21], 1, 1, v22);
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___shouldShortenForRemoteView] = 0;
  sub_1B8C235B8();
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType] = 1;
  sub_1B8B34450(a1, v6, &qword_1EBAA6590, &qword_1B8C2EFD0);
  sub_1B8B3433C(&v1[v15], &qword_1EBAA6590, &qword_1B8C2EFD0);
  sub_1B8BF9DB8(v6, &v1[v15]);
  v23 = type metadata accessor for FBKEvaluationController(0);
  v26.receiver = v1;
  v26.super_class = v23;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  sub_1B8B3433C(a1, &qword_1EBAA6590, &qword_1B8C2EFD0);
  return v24;
}

id FBKEvaluationController.init(evaluatedFeature:)(uint64_t a1)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v49 = (&v45 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84A0, &qword_1B8C2EFD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v45 - v7;
  v9 = type metadata accessor for FBKEvaluation.Input(0);
  v10 = *(v9 - 8);
  v50 = v9;
  v51 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v48 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v45 - v14;
  v15 = sub_1B8C24408();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage] = 0;
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___presentAsEmbeddedView] = 0;
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  v20 = *MEMORY[0x1E699C110];
  sub_1B8C243F8();
  sub_1B8C243E8();
  (*(v16 + 32))(&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent], v19, v15);
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction] = 0;
  v21 = &v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation];
  *v21 = 0;
  v21[8] = -1;
  v22 = &v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler];
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__subject;
  v24 = sub_1B8C23738();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v26(&v1[v23], 1, 1, v24);
  v46 = v23;
  v26(&v1[v23], 1, 1, v24);
  *&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction] = 0;
  v27 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
  v28 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v29 = *(*(v28 - 8) + 56);
  v29(&v1[v27], 1, 1, v28);
  v29(&v1[v27], 1, 1, v28);
  v30 = v50;
  v31 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__actionPerformed;
  v32 = sub_1B8C236E8();
  v33 = &v1[v31];
  v34 = v52;
  (*(*(v32 - 8) + 56))(v33, 1, 1, v32);
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___shouldShortenForRemoteView] = 0;
  sub_1B8C235B8();
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType] = 1;
  sub_1B8B34450(v34, v8, &unk_1EBAA84A0, &qword_1B8C2EFD8);
  if ((*(v51 + 48))(v8, 1, v30) == 1)
  {
    sub_1B8B3433C(v8, &unk_1EBAA84A0, &qword_1B8C2EFD8);
  }

  else
  {
    v35 = v8;
    v36 = v47;
    sub_1B8BF9E58(v35, v47, type metadata accessor for FBKEvaluation.Input);
    v37 = v48;
    sub_1B8BF9E58(v36, v48, type metadata accessor for FBKEvaluation.Input);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v49;
      *v49 = *v37;
      v39 = MEMORY[0x1E699C218];
    }

    else
    {
      v40 = sub_1B8C23568();
      v38 = v49;
      (*(*(v40 - 8) + 32))(v49, v37, v40);
      v39 = MEMORY[0x1E699C230];
    }

    (*(v25 + 104))(v38, *v39, v24);
    v26(v38, 0, 1, v24);
    v41 = v46;
    sub_1B8B3433C(&v1[v46], &qword_1EBAA6590, &qword_1B8C2EFD0);
    sub_1B8BF9DB8(v38, &v1[v41]);
  }

  v42 = type metadata accessor for FBKEvaluationController(0);
  v53.receiver = v1;
  v53.super_class = v42;
  v43 = objc_msgSendSuper2(&v53, sel_init);
  sub_1B8B3433C(v34, &unk_1EBAA84A0, &qword_1B8C2EFD8);
  return v43;
}

uint64_t sub_1B8BE8F9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23578();
}

id sub_1B8BE9070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation;
  v5 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation);
  *a2 = v5;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_1B8BF9E28(v5, v6);
}

void *sub_1B8BE9134()
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v1 = v0 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation;
  v2 = *(v0 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation);
  v3 = *(v0 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation + 8);
  sub_1B8BF9E28(v2, *(v1 + 8));
  return v2;
}

void sub_1B8BE91F8(void *a1, char a2)
{
  v5 = ~a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E68, &qword_1B8C2E158);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if (v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v17 - 4) = v2;
    *(&v17 - 3) = a1;
    *(&v17 - 16) = a2;
    v18 = v2;
    sub_1B8B2DE30(a1);
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23578();
    sub_1B8BF9E40(a1, a2);

    if (a2)
    {
      sub_1B8BF9E40(a1, a2);
    }

    else
    {
      sub_1B8B2DE30(a1);
      sub_1B8BBE208(a1, v12);
      sub_1B8B34450(v12, v10, &qword_1EBAA7E68, &qword_1B8C2E158);
      v15 = type metadata accessor for FBKEvaluation.Response(0);
      if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
      {
        sub_1B8B3433C(v10, &qword_1EBAA7E68, &qword_1B8C2E158);
        sub_1B8BF9E40(a1, a2);
        v16 = v12;
      }

      else
      {
        sub_1B8BF9E40(a1, a2);
        sub_1B8B3433C(v12, &qword_1EBAA7E68, &qword_1B8C2E158);
        v16 = v10;
      }

      sub_1B8B3433C(v16, &qword_1EBAA7E68, &qword_1B8C2E158);
    }
  }

  else
  {
    v14 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v14);
    *(&v17 - 4) = v2;
    *(&v17 - 3) = a1;
    *(&v17 - 16) = -1;
    v18 = v2;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23578();
  }
}

id sub_1B8BE9560@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for FBKEvaluation.Response(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E68, &qword_1B8C2E158);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  swift_getKeyPath();
  v25 = v1;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v15 = (v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation);
  v16 = *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation + 8);
  if (v16 == 255)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84B0, &unk_1B8C2E160);
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }

  else
  {
    v17 = *v15;
    if (v16)
    {
      *a1 = v17;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84B0, &unk_1B8C2E160);
      swift_storeEnumTagMultiPayload();
      (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
      return sub_1B8B2DE30(v17);
    }

    else
    {
      sub_1B8BF9E28(*v15, v16);
      sub_1B8B2DE30(v17);
      sub_1B8BBE208(v17, v14);
      sub_1B8B34450(v14, v12, &qword_1EBAA7E68, &qword_1B8C2E158);
      if ((*(v4 + 48))(v12, 1, v3) == 1)
      {
        sub_1B8B3433C(v12, &qword_1EBAA7E68, &qword_1B8C2E158);
        sub_1B8BD0C60();
        v21 = swift_allocError();
        *v22 = 3;
        sub_1B8BF9E40(v17, v16);
        sub_1B8B3433C(v14, &qword_1EBAA7E68, &qword_1B8C2E158);
        *a1 = v21;
      }

      else
      {
        sub_1B8BF9E40(v17, v16);
        sub_1B8B3433C(v14, &qword_1EBAA7E68, &qword_1B8C2E158);
        sub_1B8BF9E58(v12, v7, type metadata accessor for FBKEvaluation.Response);
        sub_1B8BF9E58(v7, a1, type metadata accessor for FBKEvaluation.Response);
      }

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84B0, &unk_1B8C2E160);
      swift_storeEnumTagMultiPayload();
      return (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
    }
  }
}

void (*sub_1B8BE99AC(uint64_t **a1))(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84C0, &unk_1B8C2F008) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(v2);
  }

  *a1 = v3;
  sub_1B8BE9560(v3);
  return sub_1B8BE9A44;
}

void sub_1B8BE9A44(uint64_t *a1)
{
  v1 = *a1;
  sub_1B8B3433C(*a1, &qword_1EBAA84C0, &unk_1B8C2F008);

  free(v1);
}

uint64_t sub_1B8BE9A90()
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v1 = *(v0 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  v2 = *(v0 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler + 8);
  sub_1B8B247D4(v1);
  return v1;
}

uint64_t sub_1B8BE9B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  v4 = *(a1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  v5 = *(a1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1B8B247D4(a2);
  return sub_1B8B30A44(v4);
}

void sub_1B8BE9BA8(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_1B8BE6C4C(2u);
  if (v10)
  {
    sub_1B8B2DE30(a1);
    v11 = a1;
    v12 = a2;
  }

  else
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8C23C38();
    __swift_project_value_buffer(v13, qword_1EDC85D40);
    v14 = sub_1B8C23C18();
    v15 = sub_1B8C25478();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B8B22000, v14, v15, "Finished evaluation while not in .evaluating state.", v16, 2u);
      MEMORY[0x1B8CCB0E0](v16, -1, -1);
    }

    sub_1B8BD0C60();
    v11 = swift_allocError();
    *v17 = 7;
    v12 = 1;
  }

  sub_1B8B2DE30(a1);
  sub_1B8BE91F8(a1, a2 & 1);
  swift_getKeyPath();
  v26 = v3;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v18 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType);
  swift_getKeyPath();
  if (v18 == 1)
  {
    v26 = v3;
    sub_1B8C23588();

    v19 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
    if (v19)
    {
      v20 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler + 8);

      v19(v11, v12 & 1);
      sub_1B8B30A44(v19);
    }

    sub_1B8BF2DF8();
    if (!v10)
    {
      goto LABEL_13;
    }

LABEL_12:
    v21 = type metadata accessor for FBKEvaluationController.FormContext(0);
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v26 = v3;
    sub_1B8C23578();

    sub_1B8B3433C(v9, &qword_1EBAA84D8, &qword_1B8C2F020);
    sub_1B8BE640C(0);
LABEL_13:
    sub_1B8B30A54(v11);
    return;
  }

  v26 = v3;
  sub_1B8C23588();

  v23 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  if (v23)
  {
    v24 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler + 8);

    v23(v11, v12 & 1);
    sub_1B8B30A44(v23);
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_1B8C258A8();
  __break(1u);
}

void *sub_1B8BEA044(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1B8BEA0EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction);
  *a2 = v4;

  return v4;
}

uint64_t sub_1B8BEA1F4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1B8B34450(a1, &v10[-v6], &qword_1EBAA84D8, &qword_1B8C2F020);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23578();

  return sub_1B8B3433C(v7, &qword_1EBAA84D8, &qword_1B8C2F020);
}

uint64_t sub_1B8BEA344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16 - v12;
  sub_1B8B34450(a2, &v16 - v12, a3, a4);
  v14 = *a5;
  swift_beginAccess();
  sub_1B8BFD360(v13, a1 + v14, a3, a4);
  return swift_endAccess();
}

void sub_1B8BEA428(uint64_t a1, void (*a2)(void, void), void (*a3)(unint64_t, _BYTE *, uint64_t))
{
  v4 = v3;
  v71 = a3;
  v7 = sub_1B8C24FD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1B8C25008();
  v67 = *(v69 - 8);
  v11 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1B8C23568();
  v13 = *(v70 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v64 = v15;
  v65 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B8C23738();
  v63 = *(v16 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v20 = sub_1B8C23C38();
  __swift_project_value_buffer(v20, qword_1EDC85D40);
  v21 = sub_1B8C23C18();
  v22 = sub_1B8C25498();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v62 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v61 = v16;
    v26 = v13;
    v27 = v4;
    v28 = v8;
    v29 = v7;
    v30 = a2;
    v31 = v19;
    v32 = v25;
    aBlock[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_1B8B5DD48(0xD00000000000002CLL, 0x80000001B8C35C60, aBlock);
    _os_log_impl(&dword_1B8B22000, v21, v22, "%{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v33 = v32;
    v19 = v31;
    a2 = v30;
    v7 = v29;
    v8 = v28;
    v4 = v27;
    v13 = v26;
    v16 = v61;
    MEMORY[0x1B8CCB0E0](v33, -1, -1);
    v34 = v24;
    a1 = v62;
    MEMORY[0x1B8CCB0E0](v34, -1, -1);
  }

  if (sub_1B8BFA1E0())
  {
    if (!a2)
    {
      return;
    }

    v35 = sub_1B8C23628();
    sub_1B8BFA3AC(&qword_1EBAA84C8, MEMORY[0x1E699C178]);
    v36 = swift_allocError();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E699C170], v35);
    a2(v36, 1);
    v38 = v36;
    goto LABEL_8;
  }

  if (![objc_opt_self() isMainThread])
  {
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v63 = sub_1B8C25538();
    v43 = *(v13 + 16);
    v44 = v65;
    v45 = v13;
    v46 = v70;
    v43(v65, a1, v70);
    v47 = (*(v45 + 80) + 24) & ~*(v45 + 80);
    v48 = (v64 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    *(v49 + 16) = v4;
    (*(v45 + 32))(v49 + v47, v44, v46);
    v50 = (v49 + v48);
    v51 = v71;
    *v50 = a2;
    v50[1] = v51;
    aBlock[4] = sub_1B8BFA368;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B8B9F4;
    aBlock[3] = &block_descriptor_9;
    v52 = v4;
    v53 = _Block_copy(aBlock);
    sub_1B8B247D4(a2);
    v54 = v52;

    v55 = v66;
    sub_1B8C24FF8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    v56 = v68;
    sub_1B8C256D8();
    v57 = v63;
    MEMORY[0x1B8CCA210](0, v55, v56, v53);
    _Block_release(v53);

    (*(v8 + 8))(v56, v7);
    (*(v67 + 8))(v55, v69);
    return;
  }

  if (sub_1B8BE640C(1u))
  {
    (*(v13 + 16))(v19, a1, v70);
    v39 = v63;
    (*(v63 + 104))(v19, *MEMORY[0x1E699C230], v16);
    v40 = v4;
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = v71;
    sub_1B8B247D4(a2);
    sub_1B8BFA3F4(v19, v40, v41, a2, v42);
    sub_1B8B30A44(a2);
    (*(v39 + 8))(v19, v16);

    return;
  }

  if (a2)
  {
    sub_1B8BD0C60();
    v58 = swift_allocError();
    *v59 = 6;
    a2(v58, 1);
    v38 = v58;
LABEL_8:
  }
}

uint64_t sub_1B8BEABF0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1B8C24FD8();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B8C25008();
  v23 = *(v14 - 8);
  v24 = v14;
  v15 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v22 = sub_1B8C25538();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2 & 1;
  aBlock[4] = sub_1B8BFD578;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_276;
  v19 = _Block_copy(aBlock);

  sub_1B8B247D4(a4);
  sub_1B8B2DE30(a1);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  v20 = v22;
  MEMORY[0x1B8CCA210](0, v17, v13, v19);
  _Block_release(v19);

  (*(v25 + 8))(v13, v10);
  return (*(v23 + 8))(v17, v24);
}

void sub_1B8BEAEEC(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1B8BE640C(0);
  }

  if (a2)
  {
    a2(a4, a5 & 1);
  }
}

void sub_1B8BEAF7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D0, &qword_1B8C2F018);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v36 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - v12;
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v14 = sub_1B8C23C38();
  __swift_project_value_buffer(v14, qword_1EDC85D40);
  v15 = sub_1B8C23C18();
  v16 = sub_1B8C25498();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1B8B5DD48(0x29287465736572, 0xE700000000000000, &v38);
    _os_log_impl(&dword_1B8B22000, v15, v16, "%{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1B8CCB0E0](v18, -1, -1);
    MEMORY[0x1B8CCB0E0](v17, -1, -1);
  }

  if (sub_1B8BFA1E0())
  {
    swift_getKeyPath();
    v38 = v1;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23588();

    v19 = v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler;
    v20 = *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
    if (v20)
    {
      v21 = *(v19 + 8);
      v22 = sub_1B8C23628();
      sub_1B8BFA3AC(&qword_1EBAA84C8, MEMORY[0x1E699C178]);
      v23 = swift_allocError();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E699C170], v22);

      v20(v23, 1);
      sub_1B8B30A44(v20);
    }
  }

  else if (sub_1B8BE6C4C(0))
  {
    v25 = sub_1B8C23738();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    sub_1B8BE72DC(v13);
    v26 = *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction);
    v37 = v5;
    if (v26)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v36 - 2) = v1;
      *(&v36 - 1) = 0;
      v38 = v1;
      sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
      sub_1B8C23578();
    }

    v28 = type metadata accessor for FBKEvaluationController.FormContext(0);
    (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
    v29 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v29);
    *(&v36 - 2) = v1;
    *(&v36 - 1) = v9;
    v38 = v1;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23578();

    sub_1B8B3433C(v9, &qword_1EBAA84D8, &qword_1B8C2F020);
    v30 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v30);
    *(&v36 - 4) = v1;
    *(&v36 - 3) = 0;
    *(&v36 - 16) = -1;
    v38 = v1;
    sub_1B8C23578();

    v31 = sub_1B8C236E8();
    v32 = v37;
    (*(*(v31 - 8) + 56))(v37, 1, 1, v31);
    sub_1B8BE7690(v32);
  }

  else
  {
    v37 = sub_1B8C23C18();
    v33 = sub_1B8C25478();
    if (os_log_type_enabled(v37, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B8B22000, v37, v33, "Ignoring attempt to reset() FBKEvaluationController while not .idling", v34, 2u);
      MEMORY[0x1B8CCB0E0](v34, -1, -1);
    }

    v35 = v37;
  }
}

void sub_1B8BEB6B0(uint64_t a1, void (*a2)(void *, uint64_t), void (*a3)(void *, uint64_t))
{
  v4 = v3;
  v81 = a2;
  v82 = a3;
  v6 = sub_1B8C23568();
  v79 = *(v6 - 8);
  v7 = v79[8];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v77 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v72 - v12;
  v80 = sub_1B8C23738();
  v13 = *(v80 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v16 = (&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_1B8BE6C4C(0))
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v67 = sub_1B8C23C38();
    __swift_project_value_buffer(v67, qword_1EDC85D40);
    v68 = sub_1B8C23C18();
    v69 = sub_1B8C25478();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v83 = v71;
      *v70 = 136446210;
      *(v70 + 4) = sub_1B8B5DD48(0xD00000000000002ALL, 0x80000001B8C36410, &v83);
      _os_log_impl(&dword_1B8B22000, v68, v69, "%{public}s called while FBKEvaluationController is idling.", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x1B8CCB0E0](v71, -1, -1);
      MEMORY[0x1B8CCB0E0](v70, -1, -1);
    }

    sub_1B8C258A8();
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v83 = v3;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23588();

    v17 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction);
    if (v17)
    {
      v18 = v17;
      if (sub_1B8C23708())
      {
        if (qword_1EDC85598 != -1)
        {
          swift_once();
        }

        v19 = sub_1B8C23C38();
        __swift_project_value_buffer(v19, qword_1EDC85D40);
        v20 = sub_1B8C23C18();
        v21 = sub_1B8C25498();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1B8B22000, v20, v21, "Using cached interaction", v22, 2u);
          MEMORY[0x1B8CCB0E0](v22, -1, -1);
        }

        v23 = v18;
        v81(v17, 0);

        return;
      }
    }

    v24 = v80;
    (*(v13 + 16))(v16, a1, v80);
    v25 = (*(v13 + 88))(v16, v24);
    if (v25 == *MEMORY[0x1E699C230])
    {
      (*(v13 + 96))(v16, v24);
      v27 = v78;
      v26 = v79;
      v28 = v79[4];
      v80 = (v79 + 4);
      v76 = v28;
      v28(v78, v16, v6);
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v29 = sub_1B8C23C38();
      __swift_project_value_buffer(v29, qword_1EDC85D40);
      v75 = v26[2];
      v75(v11, v27, v6);
      v30 = sub_1B8C23C18();
      v31 = sub_1B8C25498();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v83 = v72;
        *v32 = 136446210;
        v33 = sub_1B8C23538();
        v35 = v34;
        v36 = v79[1];
        v73 = (v79 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v74 = v36;
        v36(v11, v6);
        v37 = sub_1B8B5DD48(v33, v35, &v83);
        v27 = v78;

        *(v32 + 4) = v37;
        _os_log_impl(&dword_1B8B22000, v30, v31, "Prefetching interaction for uuid %{public}s", v32, 0xCu);
        v38 = v72;
        __swift_destroy_boxed_opaque_existential_0(v72);
        MEMORY[0x1B8CCB0E0](v38, -1, -1);
        v39 = v32;
        v26 = v79;
        MEMORY[0x1B8CCB0E0](v39, -1, -1);
      }

      else
      {

        v46 = v26[1];
        v73 = (v26 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v74 = v46;
        v46(v11, v6);
      }

      v79 = sub_1B8C23688();
      v47 = v77;
      v75(v77, v27, v6);
      v48 = (*(v26 + 80) + 16) & ~*(v26 + 80);
      v49 = (v7 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      v76(v50 + v48, v47, v6);
      *(v50 + v49) = v4;
      v51 = (v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8));
      v52 = v82;
      *v51 = v81;
      v51[1] = v52;
      v53 = v4;

      MEMORY[0x1B8CC8340](v27, sub_1B8BFD160, v50);

      v74(v27, v6);
    }

    else if (v25 == *MEMORY[0x1E699C218])
    {
      (*(v13 + 96))(v16, v24);
      v40 = *v16;
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v41 = sub_1B8C23C38();
      __swift_project_value_buffer(v41, qword_1EDC85D40);
      v42 = sub_1B8C23C18();
      v43 = sub_1B8C25498();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1B8B22000, v42, v43, "Interaction already available", v44, 2u);
        MEMORY[0x1B8CCB0E0](v44, -1, -1);
      }

      v45 = v40;
      sub_1B8BE74E4(v40);
      v81(v40, 0);
    }

    else
    {
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v54 = sub_1B8C23C38();
      __swift_project_value_buffer(v54, qword_1EDC85D40);
      v55 = sub_1B8C23C18();
      v56 = sub_1B8C25498();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v83 = v58;
        *v57 = 136446210;
        *(v57 + 4) = sub_1B8B5DD48(0xD00000000000002ALL, 0x80000001B8C36410, &v83);
        _os_log_impl(&dword_1B8B22000, v55, v56, "%{public}s Unknown Subject case", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x1B8CCB0E0](v58, -1, -1);
        MEMORY[0x1B8CCB0E0](v57, -1, -1);
      }

      sub_1B8BD0C60();
      v59 = swift_allocError();
      v61 = v60;
      if (qword_1EBAA5910 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v54, qword_1EBAB39C8);
      v62 = sub_1B8C23C18();
      v63 = sub_1B8C25478();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v83 = v65;
        *v64 = 136446210;
        *(v64 + 4) = sub_1B8B5DD48(0xD000000000000014, 0x80000001B8C363F0, &v83);
        _os_log_impl(&dword_1B8B22000, v62, v63, "Unexpected Error: %{public}s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        v66 = v65;
        v24 = v80;
        MEMORY[0x1B8CCB0E0](v66, -1, -1);
        MEMORY[0x1B8CCB0E0](v64, -1, -1);
      }

      *v61 = 0;
      v81(v59, 1);

      (*(v13 + 8))(v16, v24);
    }
  }
}

uint64_t sub_1B8BEC1B8(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v31 = a2;
  v37 = sub_1B8C24FD8();
  v40 = *(v37 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8C25008();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8C23568();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v35 = sub_1B8C25538();
  (*(v15 + 16))(&v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v14);
  v17 = (*(v15 + 80) + 25) & ~*(v15 + 80);
  v18 = (v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v31 & 1;
  (*(v15 + 32))(v19 + v17, &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)], v14);
  v21 = v32;
  v20 = v33;
  *(v19 + v18) = v32;
  v22 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v34;
  *v22 = v20;
  v22[1] = v23;
  aBlock[4] = sub_1B8BFD164;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_246;
  v24 = _Block_copy(aBlock);
  sub_1B8B2DE30(a1);
  v25 = v21;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  v27 = v36;
  v26 = v37;
  sub_1B8C256D8();
  v28 = v35;
  MEMORY[0x1B8CCA210](0, v13, v27, v24);
  _Block_release(v24);

  (*(v40 + 8))(v27, v26);
  return (*(v38 + 8))(v13, v39);
}

uint64_t sub_1B8BEC5A0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v12 = sub_1B8C23568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v17 = sub_1B8C23C38();
    __swift_project_value_buffer(v17, qword_1EDC85D40);
    v18 = a1;
    v19 = sub_1B8C23C18();
    v20 = sub_1B8C25478();
    sub_1B8B30A54(a1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1B8B22000, v19, v20, "Failed to fetch evaluation from daemon with error: %{public}@", v21, 0xCu);
      sub_1B8B3433C(v22, &qword_1EBAA69A0, &qword_1B8C29670);
      MEMORY[0x1B8CCB0E0](v22, -1, -1);
      MEMORY[0x1B8CCB0E0](v21, -1, -1);
    }

    v25 = a1;
    v26 = 1;
  }

  else
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v27 = sub_1B8C23C38();
    __swift_project_value_buffer(v27, qword_1EDC85D40);
    (*(v13 + 16))(v16, a3, v12);
    v28 = sub_1B8C23C18();
    v29 = sub_1B8C25498();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v42 = a5;
      v31 = v30;
      v32 = swift_slowAlloc();
      v41[1] = a6;
      v33 = v32;
      v43 = v32;
      *v31 = 136446210;
      v34 = sub_1B8C23538();
      v41[0] = a4;
      v36 = v35;
      (*(v13 + 8))(v16, v12);
      v37 = sub_1B8B5DD48(v34, v36, &v43);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_1B8B22000, v28, v29, "Did fetch feature interaction for uuid %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1B8CCB0E0](v33, -1, -1);
      v38 = v31;
      a5 = v42;
      MEMORY[0x1B8CCB0E0](v38, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    v39 = a1;
    sub_1B8BE74E4(a1);
    v25 = a1;
    v26 = 0;
  }

  return a5(v25, v26);
}

uint64_t sub_1B8BEC97C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v9 = *a1;
  swift_beginAccess();
  return sub_1B8B34450(v11 + v9, a4, a2, a3);
}

uint64_t sub_1B8BECA5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v10 = *a2;
  swift_beginAccess();
  return sub_1B8B34450(v9 + v10, a5, a3, a4);
}

uint64_t sub_1B8BECB40(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18 - v14;
  sub_1B8B34450(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

uint64_t sub_1B8BECBF8(void *a1, char a2, void *a3)
{
  v6 = sub_1B8C24FD8();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B8C25008();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v14 = sub_1B8C25538();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2 & 1;
  *(v15 + 32) = a3;
  aBlock[4] = sub_1B8BFD150;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_237;
  v16 = _Block_copy(aBlock);
  sub_1B8B2DE30(a1);
  v17 = a3;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v13, v9, v16);
  _Block_release(v16);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

void sub_1B8BECEE0(void *a1, char a2)
{
  if (a2)
  {
    sub_1B8BD0C60();
    v2 = swift_allocError();
    v4 = v3;
    if (qword_1EBAA5910 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8C23C38();
    __swift_project_value_buffer(v5, qword_1EBAB39C8);
    v6 = sub_1B8C23C18();
    v7 = sub_1B8C25478();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1B8B5DD48(0xD000000000000015, 0x80000001B8C363D0, &v10);
      _os_log_impl(&dword_1B8B22000, v6, v7, "Unexpected Error: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B8CCB0E0](v9, -1, -1);
      MEMORY[0x1B8CCB0E0](v8, -1, -1);
    }

    *v4 = 0;
    sub_1B8BE9BA8(v2, 1);
  }

  else
  {
    sub_1B8BE9BA8(a1, 0);
  }
}

void sub_1B8BED0A4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v6 = v5;
  v182 = a5;
  v185 = a4;
  v158 = a3;
  v178 = a2;
  v190 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v157 = &v155 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D0, &qword_1B8C2F018);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v174 = &v155 - v12;
  v169 = sub_1B8C24FD8();
  v168 = *(v169 - 8);
  v13 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v166 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1B8C25008();
  v165 = *(v167 - 8);
  v15 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v164 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1B8C23738();
  v171 = *(v172 - 8);
  v17 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v170 = v18;
  v180 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1B8C24FC8();
  v162 = *(v163 - 1);
  v19 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v161 = (&v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = sub_1B8C25028();
  v181 = *(v177 - 8);
  v21 = *(v181 + 64);
  v22 = MEMORY[0x1EEE9AC00](v177);
  v159 = &v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v176 = &v155 - v24;
  v25 = sub_1B8C236E8();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x1EEE9AC00](v25);
  v173 = &v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v175 = &v155 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v160 = &v155 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v179 = &v155 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v155 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v155 - v38;
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v156 = sub_1B8C23C38();
  v40 = __swift_project_value_buffer(v156, qword_1EDC85D40);
  v188 = v26[2];
  v189 = v26 + 2;
  v188(v39, v190, v25);
  v41 = sub_1B8C23C18();
  v42 = sub_1B8C25498();
  v43 = os_log_type_enabled(v41, v42);
  v186 = v25;
  v187 = v26;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v183 = v40;
    v45 = v44;
    v46 = swift_slowAlloc();
    v184 = v5;
    v47 = v46;
    aBlock[0] = v46;
    *v45 = 136446722;
    *(v45 + 4) = sub_1B8B5DD48(0xD00000000000005BLL, 0x80000001B8C35CB0, aBlock);
    *(v45 + 12) = 2082;
    sub_1B8BFA3AC(&qword_1EBAA83E8, MEMORY[0x1E699C1F8]);
    v48 = sub_1B8C259E8();
    v49 = v25;
    v51 = v50;
    v52 = v26[1];
    v52(v39, v49);
    v53 = sub_1B8B5DD48(v48, v51, aBlock);

    *(v45 + 14) = v53;
    *(v45 + 22) = 2080;
    v191 = v185;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84F0, &unk_1B8C2F0D0);
    v54 = sub_1B8C25178();
    v56 = sub_1B8B5DD48(v54, v55, aBlock);

    *(v45 + 24) = v56;
    _os_log_impl(&dword_1B8B22000, v41, v42, "%{public}s action: %{public}s, associateWithAppleAccount %s", v45, 0x20u);
    swift_arrayDestroy();
    v57 = v47;
    v6 = v184;
    MEMORY[0x1B8CCB0E0](v57, -1, -1);
    v58 = v45;
    v40 = v183;
    MEMORY[0x1B8CCB0E0](v58, -1, -1);
  }

  else
  {

    v52 = v26[1];
    v52(v39, v25);
  }

  if (sub_1B8BF2540())
  {
    v59 = sub_1B8C23C18();
    v60 = sub_1B8C25498();
    if (!os_log_type_enabled(v59, v60))
    {
LABEL_35:

      return;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_1B8B22000, v59, v60, "Form is already presented. Moving to full screen", v61, 2u);
    v62 = v61;
LABEL_34:
    MEMORY[0x1B8CCB0E0](v62, -1, -1);
    goto LABEL_35;
  }

  swift_getKeyPath();
  aBlock[0] = v6;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  if (v6[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState] == 1)
  {
    v184 = v6;
    v63 = v186;
    v188(v37, v190, v186);
    v64 = sub_1B8C23C18();
    v65 = sub_1B8C25498();
    v66 = os_log_type_enabled(v64, v65);
    v183 = v40;
    v155 = v52;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock[0] = v68;
      *v67 = 136315138;
      sub_1B8BFA3AC(&qword_1EBAA83E8, MEMORY[0x1E699C1F8]);
      v69 = sub_1B8C259E8();
      v70 = v63;
      v72 = v71;
      v52(v37, v70);
      v73 = sub_1B8B5DD48(v69, v72, aBlock);
      v63 = v70;

      *(v67 + 4) = v73;
      _os_log_impl(&dword_1B8B22000, v64, v65, "[%s] performed while loading. Will retry momentarily", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x1B8CCB0E0](v68, -1, -1);
      MEMORY[0x1B8CCB0E0](v67, -1, -1);
    }

    else
    {

      v52(v37, v63);
    }

    if (v182 > 9)
    {
      sub_1B8BD0C60();
      v126 = swift_allocError();
      *v127 = 0;
      sub_1B8BE9BA8(v126, 1);

      v128 = v160;
      v188(v160, v190, v63);
      v59 = sub_1B8C23C18();
      v117 = sub_1B8C25488();
      if (!os_log_type_enabled(v59, v117))
      {

        v155(v128, v63);
        return;
      }

      v129 = v63;
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      aBlock[0] = v120;
      *v119 = 136315138;
      sub_1B8BFA3AC(&qword_1EBAA83E8, MEMORY[0x1E699C1F8]);
      v130 = sub_1B8C259E8();
      v132 = v131;
      v155(v128, v129);
      v133 = sub_1B8B5DD48(v130, v132, aBlock);

      *(v119 + 4) = v133;
      v125 = "[%s] action performed while controller stuck in loading state";
LABEL_33:
      _os_log_impl(&dword_1B8B22000, v59, v117, v125, v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v120);
      MEMORY[0x1B8CCB0E0](v120, -1, -1);
      v62 = v119;
      goto LABEL_34;
    }

    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v160 = sub_1B8C25538();
    v74 = v159;
    sub_1B8C25018();
    v75 = v161;
    *v161 = 500;
    v76 = v162;
    v77 = v163;
    (*(v162 + 104))(v75, *MEMORY[0x1E69E7F38], v163);
    MEMORY[0x1B8CC9D30](v74, v75);
    (*(v76 + 8))(v75, v77);
    v78 = *(v181 + 8);
    v181 += 8;
    v163 = v78;
    (v78)(v74, v177);
    v188(v179, v190, v63);
    v79 = v171;
    v80 = v172;
    (*(v171 + 16))(v180, v178, v172);
    v81 = v187;
    v82 = v63;
    v83 = (*(v187 + 80) + 24) & ~*(v187 + 80);
    v84 = (v27 + *(v79 + 80) + v83) & ~*(v79 + 80);
    v85 = (v170 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v86 = swift_allocObject();
    v87 = v184;
    *(v86 + 16) = v184;
    (v81[4])(v86 + v83, v179, v82);
    (*(v79 + 32))(v86 + v84, v180, v80);
    *(v86 + v85) = v182;
    v6 = v87;
    aBlock[4] = sub_1B8BFB1FC;
    aBlock[5] = v86;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B8B9F4;
    aBlock[3] = &block_descriptor_45;
    v88 = _Block_copy(aBlock);
    v89 = v87;

    v90 = v164;
    sub_1B8C24FF8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    v91 = v166;
    v92 = v169;
    sub_1B8C256D8();
    v93 = v176;
    v94 = v160;
    MEMORY[0x1B8CCA1C0](v176, v90, v91, v88);
    _Block_release(v88);

    (*(v168 + 8))(v91, v92);
    (*(v165 + 8))(v90, v167);
    (v163)(v93, v177);
  }

  v95 = sub_1B8BE640C(2u);
  v96 = v186;
  if ((v95 & 1) == 0)
  {
    v116 = v173;
    v188(v173, v190, v186);
    v59 = sub_1B8C23C18();
    v117 = sub_1B8C25478();
    if (!os_log_type_enabled(v59, v117))
    {

      (v187[1])(v116, v96);
      return;
    }

    v118 = v96;
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    aBlock[0] = v120;
    *v119 = 136315138;
    v121 = sub_1B8C236D8();
    v123 = v122;
    (v187[1])(v116, v118);
    v124 = sub_1B8B5DD48(v121, v123, aBlock);

    *(v119 + 4) = v124;
    v125 = "Ignoring %s action as FBKEvaluationController is not idling";
    goto LABEL_33;
  }

  v97 = v174;
  v98 = v190;
  v99 = v188;
  v188(v174, v190, v186);
  v100 = v187;
  (v187[7])(v97, 0, 1, v96);
  sub_1B8BE7690(v97);
  v101 = v175;
  v99(v175, v98, v96);
  v102 = (v100[11])(v101, v96);
  if (v102 != *MEMORY[0x1E699C1F0] && v102 != *MEMORY[0x1E699C1C8] && v102 != *MEMORY[0x1E699C1D8])
  {
    if (v102 != *MEMORY[0x1E699C1E8] && v102 != *MEMORY[0x1E699C1D0] && v102 != *MEMORY[0x1E699C1E0])
    {
      v103 = sub_1B8C23C18();
      v104 = sub_1B8C25498();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        aBlock[0] = v106;
        *v105 = 136446210;
        *(v105 + 4) = sub_1B8B5DD48(0xD00000000000005BLL, 0x80000001B8C35CB0, aBlock);
        _os_log_impl(&dword_1B8B22000, v103, v104, "%{public}s Unknown Action case", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v106);
        MEMORY[0x1B8CCB0E0](v106, -1, -1);
        MEMORY[0x1B8CCB0E0](v105, -1, -1);
      }

      sub_1B8BD0C60();
      v107 = swift_allocError();
      v109 = v108;
      if (qword_1EBAA5910 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v156, qword_1EBAB39C8);
      v110 = sub_1B8C23C18();
      v111 = sub_1B8C25478();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = v100;
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        aBlock[0] = v114;
        *v113 = 136446210;
        *(v113 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C35C90, aBlock);
        _os_log_impl(&dword_1B8B22000, v110, v111, "Unexpected Error: %{public}s", v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v114);
        MEMORY[0x1B8CCB0E0](v114, -1, -1);
        v115 = v113;
        v100 = v112;
        MEMORY[0x1B8CCB0E0](v115, -1, -1);
      }

      *v109 = 0;
      sub_1B8BE9BA8(v107, 1);

      (v100[1])(v175, v186);
      return;
    }

    v152 = v179;
    v188(v179, v190, v96);
    v153 = (*(v100 + 80) + 24) & ~*(v100 + 80);
    v143 = swift_allocObject();
    *(v143 + 16) = v6;
    (v100[4])(v143 + v153, v152, v96);
    v154 = v6;
    v145 = sub_1B8BFB178;
LABEL_44:
    sub_1B8BEB6B0(v178, v145, v143);

    return;
  }

  if (v158)
  {
    v134 = v179;
    v188(v179, v190, v96);
    v135 = v171;
    v136 = v172;
    (*(v171 + 16))(v180, v178, v172);
    v137 = (*(v100 + 80) + 24) & ~*(v100 + 80);
    v138 = v137 + v27;
    v139 = *(v135 + 80);
    v140 = v139 + v137 + v27 + 1;
    v141 = v96;
    v142 = v140 & ~v139;
    v143 = swift_allocObject();
    *(v143 + 16) = v6;
    (v100[4])(v143 + v137, v134, v141);
    *(v143 + v138) = v185;
    (*(v135 + 32))(v143 + v142, v180, v136);
    v144 = v6;
    v145 = sub_1B8BFB088;
    goto LABEL_44;
  }

  v146 = sub_1B8C23C18();
  v147 = sub_1B8C25498();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    *v148 = 0;
    MEMORY[0x1B8CCB0E0](v148, -1, -1);
  }

  v149 = sub_1B8C236A8();
  v150 = v157;
  (*(*(v149 - 8) + 56))(v157, 1, 1, v149);
  *(swift_allocObject() + 16) = v6;
  v151 = v6;
  sub_1B8C23728();

  sub_1B8B3433C(v150, &unk_1EBAA84E0, &qword_1B8C2F0A0);
}

uint64_t sub_1B8BEE6F8(void *a1, int a2, void *a3, uint64_t a4)
{
  v25 = a2;
  v28 = sub_1B8C24FD8();
  v31 = *(v28 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B8C25008();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1B8C236E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v26 = sub_1B8C25538();
  (*(v14 + 16))(&v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], a4, v13);
  v16 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v25 & 1;
  *(v17 + 32) = a3;
  (*(v14 + 32))(v17 + v16, &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v13);
  aBlock[4] = sub_1B8BFD0D8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_228;
  v18 = _Block_copy(aBlock);
  sub_1B8B2DE30(a1);
  v19 = a3;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  v21 = v27;
  v20 = v28;
  sub_1B8C256D8();
  v22 = v26;
  MEMORY[0x1B8CCA210](0, v12, v21, v18);
  _Block_release(v18);

  (*(v31 + 8))(v21, v20);
  return (*(v29 + 8))(v12, v30);
}

void sub_1B8BEEAB0(void *a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  if (a2)
  {
    sub_1B8BE9BA8(a1, 1);
  }

  else if (a1)
  {
    v10 = sub_1B8C236A8();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    *(swift_allocObject() + 16) = a3;
    sub_1B8B2DE30(a1);
    v11 = a3;
    sub_1B8C23958();

    sub_1B8B30A54(a1);
    sub_1B8B3433C(v9, &unk_1EBAA84E0, &qword_1B8C2F0A0);
  }
}

uint64_t sub_1B8BEEC14(void *a1, int a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v34 = a4;
  v35 = a6;
  v40 = a5;
  v38 = a3;
  v37 = a2;
  v33 = a1;
  v42 = sub_1B8C24FD8();
  v45 = *(v42 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8C25008();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8C23738();
  v31 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B8C236E8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v36 = sub_1B8C25538();
  (*(v16 + 16))(v18, v34, v15);
  (*(v13 + 16))(&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v12);
  v19 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v20 = v19 + v17;
  v21 = (*(v13 + 80) + v20 + 1) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v37 & 1;
  v23 = v38;
  *(v22 + 32) = v38;
  (*(v16 + 32))(v22 + v19, v18, v15);
  *(v22 + v20) = v40;
  (*(v13 + 32))(v22 + v21, v32, v31);
  aBlock[4] = sub_1B8BFD208;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_252;
  v24 = _Block_copy(aBlock);
  sub_1B8B2DE30(v33);
  v25 = v23;

  v26 = v39;
  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  v28 = v41;
  v27 = v42;
  sub_1B8C256D8();
  v29 = v36;
  MEMORY[0x1B8CCA210](0, v26, v28, v24);
  _Block_release(v24);

  (*(v45 + 8))(v28, v27);
  return (*(v43 + 8))(v26, v44);
}

void sub_1B8BEF0B8(void *a1, char a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v39 - v14;
  v16 = sub_1B8C23738();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1B8BE9BA8(a1, 1);
  }

  else if (a1)
  {
    sub_1B8BF08C0(a4, a1, a5);

    sub_1B8B30A54(a1);
  }

  else
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v21 = sub_1B8C23C38();
    __swift_project_value_buffer(v21, qword_1EDC85D40);
    (*(v17 + 16))(v20, a6, v16);
    v22 = sub_1B8C23C18();
    v23 = sub_1B8C25498();
    if (os_log_type_enabled(v22, v23))
    {
      v41 = v23;
      v42 = v21;
      v43 = a3;
      v24 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v24 = 136446210;
      sub_1B8C23718();
      v25 = sub_1B8C23568();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v15, 1, v25) == 1)
      {
        sub_1B8B3433C(v15, &qword_1EBAA79C0, &qword_1B8C2D150);
        v27 = 0;
        v28 = 0xE000000000000000;
      }

      else
      {
        v27 = sub_1B8C23538();
        v28 = v29;
        (*(v26 + 8))(v15, v25);
      }

      (*(v17 + 8))(v20, v16);
      v30 = sub_1B8B5DD48(v27, v28, &v44);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_1B8B22000, v22, v41, "Interaction not found: %{public}s", v24, 0xCu);
      v31 = v40;
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1B8CCB0E0](v31, -1, -1);
      MEMORY[0x1B8CCB0E0](v24, -1, -1);

      v21 = v42;
    }

    else
    {

      (*(v17 + 8))(v20, v16);
    }

    sub_1B8BD0C60();
    v32 = swift_allocError();
    v34 = v33;
    if (qword_1EBAA5910 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v21, qword_1EBAB39C8);
    v35 = sub_1B8C23C18();
    v36 = sub_1B8C25478();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44 = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_1B8B5DD48(0xD000000000000015, 0x80000001B8C363D0, &v44);
      _os_log_impl(&dword_1B8B22000, v35, v36, "Unexpected Error: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1B8CCB0E0](v38, -1, -1);
      MEMORY[0x1B8CCB0E0](v37, -1, -1);
    }

    *v34 = 0;
    sub_1B8BE9BA8(v32, 1);
  }
}

void sub_1B8BEF5BC(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v70 = a2;
  v7 = sub_1B8C24FD8();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1B8C25008();
  v65 = *(v67 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8C23738();
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v61 = &v58 - v16;
  v17 = sub_1B8C23568();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v21 = sub_1B8C23C38();
  __swift_project_value_buffer(v21, qword_1EDC85D40);
  v22 = sub_1B8C23C18();
  v23 = sub_1B8C25498();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v58 = a1;
    v59 = v12;
    v25 = v4;
    v26 = v18;
    v27 = a3;
    v28 = v24;
    v29 = v17;
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v28 = 136446210;
    *(v28 + 4) = sub_1B8B5DD48(0xD00000000000002FLL, 0x80000001B8C35D10, aBlock);
    _os_log_impl(&dword_1B8B22000, v22, v23, "%{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v31 = v30;
    v17 = v29;
    MEMORY[0x1B8CCB0E0](v31, -1, -1);
    v32 = v28;
    a3 = v27;
    v18 = v26;
    v4 = v25;
    a1 = v58;
    v12 = v59;
    MEMORY[0x1B8CCB0E0](v32, -1, -1);
  }

  if ([objc_opt_self() isMainThread])
  {
    if (sub_1B8BE640C(1u))
    {
      v33 = v61;
      sub_1B8C23718();
      if ((*(v18 + 48))(v33, 1, v17) == 1)
      {
        sub_1B8B3433C(v33, &qword_1EBAA79C0, &qword_1B8C2D150);
        sub_1B8BE640C(0);
        v70(0, 0);
      }

      else
      {
        v52 = v60;
        (*(v18 + 32))(v60, v33, v17);
        sub_1B8C23758();
        v53 = swift_allocObject();
        v54 = v4;
        v55 = v53;
        v56 = v70;
        v53[2] = v54;
        v53[3] = v56;
        v53[4] = a3;
        v57 = v54;

        MEMORY[0x1B8CC8390](v52, sub_1B8BFB3D4, v55);

        (*(v18 + 8))(v52, v17);
      }
    }

    else
    {
      v47 = sub_1B8C23C18();
      v48 = sub_1B8C25498();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1B8B22000, v47, v48, "Failed to transition to .loading. Other operations in-flight.", v49, 2u);
        MEMORY[0x1B8CCB0E0](v49, -1, -1);
      }

      sub_1B8BD0C60();
      v50 = swift_allocError();
      *v51 = 6;
      v70(v50, 1);
    }
  }

  else
  {
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v34 = sub_1B8C25538();
    v36 = v62;
    v35 = v63;
    (*(v63 + 16))(v62, a1, v12);
    v37 = (*(v35 + 80) + 24) & ~*(v35 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v4;
    (*(v35 + 32))(v38 + v37, v36, v12);
    v39 = (v38 + ((v13 + v37 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v39 = v70;
    v39[1] = a3;
    aBlock[4] = sub_1B8BFB304;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B8B9F4;
    aBlock[3] = &block_descriptor_51_1;
    v40 = _Block_copy(aBlock);
    v41 = v4;
    v42 = v40;
    v43 = v41;

    v44 = v64;
    sub_1B8C24FF8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    v45 = v66;
    v46 = v69;
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v44, v45, v42);
    _Block_release(v42);

    (*(v68 + 8))(v45, v46);
    (*(v65 + 8))(v44, v67);
  }
}

uint64_t sub_1B8BEFDC4(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1B8C24FD8();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B8C25008();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v24 = sub_1B8C25538();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2 & 1;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  aBlock[4] = sub_1B8BFD0C4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_222;
  v19 = _Block_copy(aBlock);
  sub_1B8B2DE30(a1);
  v20 = a3;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  v21 = v24;
  MEMORY[0x1B8CCA210](0, v17, v13, v19);
  _Block_release(v19);

  (*(v26 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v25);
}

void sub_1B8BF00C0(void *a1, char a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  if (a2)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8C23C38();
    __swift_project_value_buffer(v6, qword_1EDC85D40);
    v7 = a1;
    v8 = sub_1B8C23C18();
    v9 = sub_1B8C25478();
    sub_1B8B30A54(a1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1B8B22000, v8, v9, "checkIfFeatureHadFeedback returned error: %{public}@", v10, 0xCu);
      sub_1B8B3433C(v11, &qword_1EBAA69A0, &qword_1B8C29670);
      MEMORY[0x1B8CCB0E0](v11, -1, -1);
      MEMORY[0x1B8CCB0E0](v10, -1, -1);
    }

    sub_1B8BE640C(0);
    v14 = a1;
    v15 = 1;
LABEL_20:
    a4(v14, v15);
    return;
  }

  if (!a1)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v27 = sub_1B8C23C38();
    __swift_project_value_buffer(v27, qword_1EDC85D40);
    v28 = sub_1B8C23C18();
    v29 = sub_1B8C25468();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1B8B22000, v28, v29, "checkIfFeatureHadFeedback returned no response", v30, 2u);
      MEMORY[0x1B8CCB0E0](v30, -1, -1);
    }

    sub_1B8BE640C(0);
    v14 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  v16 = qword_1EDC85598;
  v17 = a1;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_1B8C23C38();
  __swift_project_value_buffer(v18, qword_1EDC85D40);
  v19 = v17;
  v20 = sub_1B8C23C18();
  v21 = sub_1B8C25458();
  sub_1B8B30A54(a1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138543362;
    *(v22 + 4) = v19;
    *v23 = a1;
    v24 = v19;
    _os_log_impl(&dword_1B8B22000, v20, v21, "checkIfFeatureHadFeedback returned: %{public}@", v22, 0xCu);
    sub_1B8B3433C(v23, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v23, -1, -1);
    MEMORY[0x1B8CCB0E0](v22, -1, -1);
  }

  v25 = v19;
  sub_1B8BE91F8(a1, 0);
  sub_1B8BE640C(0);
  v26 = v25;
  a4(a1, 0);
  sub_1B8B30A54(a1);

  sub_1B8B30A54(a1);
}

uint64_t sub_1B8BF04EC(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23578();
  }

  return result;
}

void (*sub_1B8BF05F0(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v5 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___shouldShortenForRemoteView;
  *(v4 + 32) = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___shouldShortenForRemoteView;
  *(v4 + 40) = *(v1 + v5);
  return sub_1B8BF06F4;
}

void sub_1B8BF0728(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 40);
  v6 = v5 ^ *(v4 + v3);
  if ((a2 & 1) == 0)
  {
    if ((v5 ^ *(v4 + v3)))
    {
      v10 = v2[2];
      v9 = v2[3];
      goto LABEL_6;
    }

LABEL_7:
    *(v4 + v3) = v5;
    goto LABEL_8;
  }

  if (((v5 ^ *(v4 + v3)) & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = v2[2];
  v7 = v2[3];
LABEL_6:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *v2 = v4;
  sub_1B8C23578();

LABEL_8:
  free(v2);
}

uint64_t sub_1B8BF0820(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  return *(v2 + *a2);
}

uint64_t sub_1B8BF08C0(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v28 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_1B8C236E8();
  v26 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  v15 = sub_1B8C253A8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v10, a1, v7);
  sub_1B8C25368();
  v16 = v4;
  v17 = a2;
  v18 = sub_1B8C25358();
  v19 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v20 = v19 + v9;
  v21 = (v19 + v9) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 2) = v18;
  *(v22 + 3) = v23;
  *(v22 + 4) = v16;
  *(v22 + 5) = v17;
  (*(v8 + 32))(&v22[v19], v10, v26);
  v22[v20] = v28;
  *&v22[v21 + 8] = ObjectType;
  sub_1B8BE33EC(0, 0, v14, &unk_1B8C2F418, v22);
}

uint64_t sub_1B8BF0B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 208) = a7;
  *(v7 + 128) = a5;
  *(v7 + 136) = a6;
  *(v7 + 120) = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020) - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20) - 8) + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  sub_1B8C25368();
  *(v7 + 160) = sub_1B8C25358();
  v11 = sub_1B8C25328();
  *(v7 + 168) = v11;
  *(v7 + 176) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1B8BF0C18, v11, v10);
}

uint64_t sub_1B8BF0C18()
{
  v15 = v0;
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  v0[23] = __swift_project_value_buffer(v1, qword_1EDC85D40);
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25498();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B8B5DD48(0xD00000000000003FLL, 0x80000001B8C36140, &v14);
    _os_log_impl(&dword_1B8B22000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
    MEMORY[0x1B8CCB0E0](v4, -1, -1);
  }

  v6 = v0[15];
  if (!sub_1B8BE6C4C(2u))
  {
    return sub_1B8C258A8();
  }

  v7 = v0[19];
  v8 = sub_1B8C23498();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_1B8BF0E8C;
  v10 = v0[19];
  v12 = v0[16];
  v11 = v0[17];

  return FBKSInteraction.feedbackForm(interaction:action:attachmentDirectory:)(v12, v11, v10);
}

uint64_t sub_1B8BF0E8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 200) = a1;

  sub_1B8B3433C(v4, &qword_1EBAA85A0, &qword_1B8C28C20);
  v5 = *(v2 + 176);
  v6 = *(v2 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1B8BF0FE8, v6, v5);
}

uint64_t sub_1B8BF0FE8()
{
  v80 = v0;
  v1 = *(v0 + 208);
  if (v1 != 2 && (v1 & 1) == 0 && MEMORY[0x1B8CCA870]())
  {
    v2 = *(v0 + 200);
    v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
    swift_beginAccess();
    *(v2 + v3) = 0;
  }

  v4 = *(v0 + 200);
  v5 = objc_allocWithZone(type metadata accessor for FBKFeedbackDraftViewController());
  v6 = FBKFeedbackDraftViewController.init(feedbackForm:)(v4);
  v7 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage;
  swift_beginAccess();
  v6[v7] = 0;
  if (*&v6[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection])
  {
    v8 = sub_1B8BB192C();
    if (v8)
    {
      [v8 setShowsCompletionPage_];
      swift_unknownObjectRelease();
    }
  }

  v9 = *(v0 + 136);
  v10 = *(v0 + 144);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v13 = sub_1B8C236E8();
  (*(*(v13 - 8) + 16))(v10, v9, v13);
  v14 = type metadata accessor for FBKEvaluationController.FormContext(0);
  *(v10 + *(v14 + 20)) = v11;
  *(v10 + *(v14 + 24)) = v6;
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  swift_getKeyPath();
  v15 = swift_task_alloc();
  *(v15 + 16) = v12;
  *(v15 + 24) = v10;
  *(v0 + 88) = v12;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  v77 = v6;
  v16 = v11;
  sub_1B8C23578();

  sub_1B8B3433C(v10, &qword_1EBAA84D8, &qword_1B8C2F020);
  swift_getKeyPath();
  *(v0 + 96) = v12;
  sub_1B8C23588();

  v17 = *(v0 + 184);
  if (*(v12 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType) == 1)
  {
    v18 = *(v0 + 160);

    v19 = sub_1B8C23C18();
    v20 = sub_1B8C25468();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B8B22000, v19, v20, "Will use SwiftUI APIs", v21, 2u);
      MEMORY[0x1B8CCB0E0](v21, -1, -1);
    }

    v22 = *(v0 + 120);
    v23 = *(v0 + 128);

    v24 = v23;
    sub_1B8BE72B4(v23);
    v25 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented;
    v26 = *(v0 + 200);
    if (*(v22 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented) == 1)
    {

      *(v22 + v25) = 1;
    }

    else
    {
      v34 = *(v0 + 120);
      swift_getKeyPath();
      v35 = swift_task_alloc();
      *(v35 + 16) = v34;
      *(v35 + 24) = 1;
      *(v0 + 104) = v34;
      sub_1B8C23578();
    }

    goto LABEL_42;
  }

  v27 = sub_1B8C23C18();
  v28 = sub_1B8C25468();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1B8B22000, v27, v28, "Will use UIKit or AppKit APIs", v29, 2u);
    MEMORY[0x1B8CCB0E0](v29, -1, -1);
  }

  v30 = *(v0 + 120);

  swift_getKeyPath();
  *(v0 + 112) = v30;
  sub_1B8C23588();

  if (swift_unknownObjectWeakLoadStrong())
  {
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = v31;
      v33 = *(v0 + 160);

      swift_unknownObjectRetain_n();
    }

    else
    {
      swift_getObjectType();
      v44 = swift_conformsToProtocol2();
      if (!v44)
      {
        return sub_1B8C258A8();
      }

      v45 = v44;
      v46 = *(v0 + 160);
      v47 = *(v0 + 120);

      ObjectType = swift_getObjectType();
      v32 = (*(v45 + 16))(v47, ObjectType, v45);
    }

    v49 = *(v0 + 184);
    v50 = sub_1B8C23C18();
    v51 = sub_1B8C25468();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1B8B22000, v50, v51, "Will present iOS UIKit ViewController as Sheet", v52, 2u);
      MEMORY[0x1B8CCB0E0](v52, -1, -1);
    }

    v53 = *(v0 + 120);

    v54 = v77;
    [v32 presentViewController:v54 animated:1 completion:0];
    LOBYTE(v53) = sub_1B8BF1AB4(v32);

    if (v53)
    {
      v55 = *(v0 + 184);
      v56 = sub_1B8C23C18();
      v57 = sub_1B8C25468();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1B8B22000, v56, v57, "Is compact horizontal size class. Will use detents", v58, 2u);
        MEMORY[0x1B8CCB0E0](v58, -1, -1);
      }

      v59 = [v54 presentationController];
      if (v59)
      {
        objc_opt_self();
        v60 = swift_dynamicCastObjCClass();
        if (v60)
        {
          v61 = v60;
          if (qword_1EBAA5958 != -1)
          {
            swift_once();
          }

          v76 = *(v0 + 120);
          v78 = *(v0 + 200);
          v75 = qword_1EBAB39F8;
          sub_1B8B46130(0, &qword_1EBAA85A8, 0x1E69DCF58);
          v62 = sub_1B8C25598();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA85B0, &unk_1B8C2BBE0);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_1B8C2BBD0;
          *(v63 + 32) = [objc_opt_self() largeDetent];
          *(v63 + 40) = v62;
          v64 = v62;
          v65 = sub_1B8C252B8();

          [v61 setDetents_];

          [v61 setPrefersGrabberVisible_];
          [v61 setSelectedDetentIdentifier_];
          [v61 setLargestUndimmedDetentIdentifier_];
          [v61 setDelegate_];

          swift_unknownObjectRelease();
          goto LABEL_42;
        }
      }

      v67 = *(v0 + 184);
      v38 = sub_1B8C23C18();
      v68 = sub_1B8C25478();
      v69 = os_log_type_enabled(v38, v68);
      v70 = *(v0 + 200);
      if (v69)
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_1B8B22000, v38, v68, "No Sheet Presentation Controller. Cannot customize detents", v71, 2u);
        MEMORY[0x1B8CCB0E0](v71, -1, -1);

        swift_unknownObjectRelease();
        goto LABEL_42;
      }
    }

    else
    {
      v38 = *(v0 + 200);
    }

    swift_unknownObjectRelease();
LABEL_41:

    goto LABEL_42;
  }

  v36 = *(v0 + 184);
  v37 = *(v0 + 160);

  v38 = sub_1B8C23C18();
  v39 = sub_1B8C25478();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 200);
  if (!v40)
  {

    goto LABEL_41;
  }

  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v79 = v43;
  *v42 = 136446210;
  *(v42 + 4) = sub_1B8B5DD48(0xD00000000000003FLL, 0x80000001B8C36140, &v79);
  _os_log_impl(&dword_1B8B22000, v38, v39, "%{public}s: delegate is nil. Cannot open form", v42, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v43);
  MEMORY[0x1B8CCB0E0](v43, -1, -1);
  MEMORY[0x1B8CCB0E0](v42, -1, -1);

LABEL_42:
  v73 = *(v0 + 144);
  v72 = *(v0 + 152);

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_1B8BF1AB4(void *a1)
{
  if ((sub_1B8BF1BDC() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 != 1)
  {
    return 0;
  }

  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EDC85D40);
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25468();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B8B22000, v5, v6, "Is compact horizontal size class. Will use presentation detents", v7, 2u);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  return 1;
}

uint64_t sub_1B8BF1BDC()
{
  v1 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 == 1)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v3 = sub_1B8C23C38();
    __swift_project_value_buffer(v3, qword_1EDC85D40);
    v4 = sub_1B8C23C18();
    v5 = sub_1B8C25468();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B8B22000, v4, v5, "blockPresentationDetentUsage. Will not use presentation detents", v6, 2u);
      MEMORY[0x1B8CCB0E0](v6, -1, -1);
    }
  }

  return v2 ^ 1u;
}

uint64_t sub_1B8BF1D0C(uint64_t a1, int a2, unsigned int *a3)
{
  v6 = sub_1B8C236E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *a3, v6);
  sub_1B8BED0A4(v10, a1, a2, 2, 0);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1B8BF1E3C(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  v8 = sub_1B8C236E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *a4, v8);
  sub_1B8BED0A4(v12, a1, a2, a3, 0);
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1B8BF1F4C(uint64_t a1)
{
  v3 = sub_1B8C236E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8500, &qword_1B8C2F108);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D0, &qword_1B8C2F018);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  if ([objc_opt_self() isMainThread])
  {
    v36 = v7;
    v37 = v16;
    swift_getKeyPath();
    v19 = a1;
    v39[0] = v1;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23588();

    v20 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__actionPerformed;
    swift_beginAccess();
    v21 = *(v4 + 16);
    v38 = v19;
    v21(v18, v19, v3);
    (*(v4 + 56))(v18, 0, 1, v3);
    v22 = *(v8 + 48);
    sub_1B8B34450(v1 + v20, v11, &qword_1EBAA84D0, &qword_1B8C2F018);
    sub_1B8B34450(v18, &v11[v22], &qword_1EBAA84D0, &qword_1B8C2F018);
    v23 = *(v4 + 48);
    if (v23(v11, 1, v3) == 1)
    {
      sub_1B8B3433C(v18, &qword_1EBAA84D0, &qword_1B8C2F018);
      v24 = v23(&v11[v22], 1, v3);
      v25 = v38;
      if (v24 == 1)
      {
        sub_1B8B3433C(v11, &qword_1EBAA84D0, &qword_1B8C2F018);
        v26 = 1;
        return _s8Feedback23FBKEvaluationControllerC15systemImageName3for11hasResponseSS0A7Service14FBKSEvaluationC6ActionO_SbtFZ_0(v25, v26 & 1);
      }
    }

    else
    {
      v33 = v37;
      sub_1B8B34450(v11, v37, &qword_1EBAA84D0, &qword_1B8C2F018);
      if (v23(&v11[v22], 1, v3) != 1)
      {
        v34 = v36;
        (*(v4 + 32))(v36, &v11[v22], v3);
        sub_1B8BFA3AC(&qword_1EBAA8508, MEMORY[0x1E699C1F8]);
        v26 = sub_1B8C250E8();
        v35 = *(v4 + 8);
        v35(v34, v3);
        sub_1B8B3433C(v18, &qword_1EBAA84D0, &qword_1B8C2F018);
        v35(v33, v3);
        sub_1B8B3433C(v11, &qword_1EBAA84D0, &qword_1B8C2F018);
        v25 = v38;
        return _s8Feedback23FBKEvaluationControllerC15systemImageName3for11hasResponseSS0A7Service14FBKSEvaluationC6ActionO_SbtFZ_0(v25, v26 & 1);
      }

      sub_1B8B3433C(v18, &qword_1EBAA84D0, &qword_1B8C2F018);
      (*(v4 + 8))(v33, v3);
      v25 = v38;
    }

    sub_1B8B3433C(v11, &qword_1EBAA8500, &qword_1B8C2F108);
    v26 = 0;
    return _s8Feedback23FBKEvaluationControllerC15systemImageName3for11hasResponseSS0A7Service14FBKSEvaluationC6ActionO_SbtFZ_0(v25, v26 & 1);
  }

  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v27 = sub_1B8C23C38();
  __swift_project_value_buffer(v27, qword_1EDC85D40);
  v28 = sub_1B8C23C18();
  v29 = sub_1B8C25478();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39[0] = v31;
    *v30 = 136446210;
    *(v30 + 4) = sub_1B8B5DD48(0xD000000000000018, 0x80000001B8C35D40, v39);
    _os_log_impl(&dword_1B8B22000, v28, v29, "%{public}s called off main thread.  Assuming no evaluation response.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1B8CCB0E0](v31, -1, -1);
    MEMORY[0x1B8CCB0E0](v30, -1, -1);
  }

  return _s8Feedback23FBKEvaluationControllerC15systemImageName3for11hasResponseSS0A7Service14FBKSEvaluationC6ActionO_SbtFZ_0(a1, 0);
}

uint64_t sub_1B8BF2540()
{
  v1 = v0;
  v2 = sub_1B8C24408();
  v57 = *(v2 - 8);
  v3 = *(v57 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v54 - v6;
  v7 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v54 - v14;
  swift_getKeyPath();
  v58[0] = v0;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v16 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType;
  if (!v0[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType])
  {
    swift_getKeyPath();
    v58[0] = v0;
    sub_1B8C23588();

    v23 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
    swift_beginAccess();
    sub_1B8B34450(&v1[v23], v15, &qword_1EBAA84D8, &qword_1B8C2F020);
    if ((*(v8 + 48))(v15, 1, v7))
    {
      sub_1B8B3433C(v15, &qword_1EBAA84D8, &qword_1B8C2F020);
LABEL_8:
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v24 = sub_1B8C23C38();
      __swift_project_value_buffer(v24, qword_1EDC85D40);
      v25 = sub_1B8C23C18();
      v26 = sub_1B8C25468();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1B8B22000, v25, v26, "Form UI View Controller is nil. Assuming not presented yet", v27, 2u);
        MEMORY[0x1B8CCB0E0](v27, -1, -1);
      }

      goto LABEL_29;
    }

    sub_1B8BFCC3C(v15, v11, type metadata accessor for FBKEvaluationController.FormContext);
    sub_1B8B3433C(v15, &qword_1EBAA84D8, &qword_1B8C2F020);
    v35 = *&v11[*(v7 + 24)];
    v30 = v35;
    sub_1B8BFD64C(v11, type metadata accessor for FBKEvaluationController.FormContext);
    if (!v35)
    {
      goto LABEL_8;
    }

    v36 = [v30 sheetPresentationController];
    if (!v36)
    {
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v48 = sub_1B8C23C38();
      __swift_project_value_buffer(v48, qword_1EDC85D40);
      v49 = sub_1B8C23C18();
      v50 = sub_1B8C25478();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1B8B22000, v49, v50, "Form UI View Controller is presented but has no Sheet Presentation Controller. Cannot go full screen", v51, 2u);
        MEMORY[0x1B8CCB0E0](v51, -1, -1);

        goto LABEL_29;
      }

LABEL_28:
LABEL_29:
      v22 = 0;
      return v22 & 1;
    }

    v37 = v36;
    v38 = [v36 selectedDetentIdentifier];
    if (v38)
    {
      v39 = v38;
      v40 = *MEMORY[0x1E69DE3B0];
      v41 = sub_1B8C25128();
      v43 = v42;
      if (v41 == sub_1B8C25128() && v43 == v44)
      {

LABEL_36:

        goto LABEL_28;
      }

      v52 = sub_1B8C25A08();

      if (v52)
      {
        goto LABEL_36;
      }
    }

    v53 = sub_1B8BF2DF8();

    v22 = v53;
    return v22 & 1;
  }

  if (v0[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType] != 1)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v28 = sub_1B8C23C38();
    __swift_project_value_buffer(v28, qword_1EDC85D40);
    v29 = v0;
    v30 = sub_1B8C23C18();
    v31 = sub_1B8C25498();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58[0] = v57;
      *v32 = 136446466;
      *(v32 + 4) = sub_1B8B5DD48(0xD000000000000020, 0x80000001B8C364E0, v58);
      *(v32 + 12) = 2080;
      swift_getKeyPath();
      v58[3] = v29;
      sub_1B8C23588();

      if (v0[v16])
      {
        if (v0[v16] == 1)
        {
          v33 = 0xE700000000000000;
          v34 = 0x49557466697753;
        }

        else
        {
          v33 = 0xE600000000000000;
          v34 = 0x74694B707041;
        }
      }

      else
      {
        v33 = 0xE500000000000000;
        v34 = 0x74694B4955;
      }

      v45 = v57;
      v46 = sub_1B8B5DD48(v34, v33, v58);

      *(v32 + 14) = v46;
      _os_log_impl(&dword_1B8B22000, v30, v31, "%{public}s not applicable for api type: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v45, -1, -1);
      MEMORY[0x1B8CCB0E0](v32, -1, -1);
    }

    goto LABEL_28;
  }

  swift_getKeyPath();
  v58[0] = v0;
  sub_1B8C23588();

  if (v0[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented] != 1)
  {
    goto LABEL_29;
  }

  swift_getKeyPath();
  v58[0] = v0;
  sub_1B8C23588();

  v17 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent;
  swift_beginAccess();
  v18 = v57;
  v19 = v55;
  (*(v57 + 16))(v55, &v1[v17], v2);
  v20 = v56;
  sub_1B8C243E8();
  sub_1B8BFA3AC(&unk_1EBAA8590, MEMORY[0x1E697C4F8]);
  LOBYTE(v17) = sub_1B8C250E8();
  v21 = *(v18 + 8);
  v21(v20, v2);
  v21(v19, v2);
  if (v17)
  {
    goto LABEL_29;
  }

  v22 = sub_1B8BF2DF8();
  return v22 & 1;
}

uint64_t sub_1B8BF2DF8()
{
  v1 = v0;
  v2 = sub_1B8C24408();
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - v7;
  v9 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v50 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___observationRegistrar;
  aBlock[0] = v1;
  v52 = sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  v53 = v18;
  sub_1B8C23588();

  v19 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType;
  if (!v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType])
  {
    swift_getKeyPath();
    aBlock[0] = v1;
    sub_1B8C23588();

    v24 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
    swift_beginAccess();
    sub_1B8B34450(&v1[v24], v17, &qword_1EBAA84D8, &qword_1B8C2F020);
    if ((*(v10 + 48))(v17, 1, v9))
    {
      sub_1B8B3433C(v17, &qword_1EBAA84D8, &qword_1B8C2F020);
    }

    else
    {
      sub_1B8BFCC3C(v17, v13, type metadata accessor for FBKEvaluationController.FormContext);
      sub_1B8B3433C(v17, &qword_1EBAA84D8, &qword_1B8C2F020);
      v38 = *&v13[*(v9 + 24)];
      v39 = v38;
      sub_1B8BFD64C(v13, type metadata accessor for FBKEvaluationController.FormContext);
      if (v38)
      {
        v40 = [v39 sheetPresentationController];
        if (!v40)
        {
          if (qword_1EDC85598 != -1)
          {
            swift_once();
          }

          v46 = sub_1B8C23C38();
          __swift_project_value_buffer(v46, qword_1EDC85D40);
          v47 = sub_1B8C23C18();
          v48 = sub_1B8C25478();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&dword_1B8B22000, v47, v48, "Form UI View Controller has no Sheet Presentation Controller. Cannot go full screen", v49, 2u);
            MEMORY[0x1B8CCB0E0](v49, -1, -1);
          }

          else
          {
          }

          return 0;
        }

        v41 = v40;
        v42 = swift_allocObject();
        *(v42 + 16) = v41;
        v43 = swift_allocObject();
        *(v43 + 16) = sub_1B8BB75C0;
        *(v43 + 24) = v42;
        aBlock[4] = sub_1B8B621CC;
        v55 = v43;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B8BE5460;
        aBlock[3] = &block_descriptor_176;
        v33 = _Block_copy(aBlock);
        v32 = v55;
        v31 = v41;

        [v31 animateChanges:v33];

        _Block_release(v33);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        result = 1;
        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return result;
        }

        __break(1u);
        goto LABEL_24;
      }
    }

    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v25 = sub_1B8C23C38();
    __swift_project_value_buffer(v25, qword_1EDC85D40);
    v26 = sub_1B8C23C18();
    v27 = sub_1B8C25478();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1B8B22000, v26, v27, "Form UI View Controller is nil. Cannot go full screen", v28, 2u);
      MEMORY[0x1B8CCB0E0](v28, -1, -1);
    }

    return 0;
  }

  if (v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType] != 1)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v29 = sub_1B8C23C38();
    __swift_project_value_buffer(v29, qword_1EDC85D40);
    v30 = v1;
    v31 = sub_1B8C23C18();
    v32 = sub_1B8C25498();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_27;
    }

    v33 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v33 = 136446466;
    *(v33 + 1) = sub_1B8B5DD48(0xD000000000000018, 0x80000001B8C360B0, aBlock);
    *(v33 + 6) = 2080;
    swift_getKeyPath();
    v56 = v30;
    sub_1B8C23588();

    if (v1[v19])
    {
      if (v1[v19] == 1)
      {
        v34 = 0xE700000000000000;
        v35 = 0x49557466697753;
      }

      else
      {
        v34 = 0xE600000000000000;
        v35 = 0x74694B707041;
      }

      goto LABEL_26;
    }

LABEL_24:
    v34 = 0xE500000000000000;
    v35 = 0x74694B4955;
LABEL_26:
    v45 = sub_1B8B5DD48(v35, v34, aBlock);

    *(v33 + 14) = v45;
    _os_log_impl(&dword_1B8B22000, v31, v32, "%{public}s not applicable for api type: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
    MEMORY[0x1B8CCB0E0](v33, -1, -1);
LABEL_27:

    return 0;
  }

  sub_1B8C243E8();
  v20 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent;
  swift_beginAccess();
  v21 = v51;
  v22 = *(v51 + 16);
  v22(v6, &v1[v20], v2);
  sub_1B8BFA3AC(&unk_1EBAA8590, MEMORY[0x1E697C4F8]);
  LOBYTE(v20) = sub_1B8C250E8();
  v23 = *(v21 + 8);
  v23(v6, v2);
  if (v20)
  {
    v22(v6, v8, v2);
    sub_1B8BE8194(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v50 - 2) = v1;
    *(&v50 - 1) = v8;
    v56 = v1;
    sub_1B8C23578();
  }

  v23(v8, v2);
  return 1;
}

void sub_1B8BF373C(uint64_t a1, void (*a2)(void, void), void (*a3)(unint64_t, _BYTE *, uint64_t))
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EDC85D40);
  v7 = sub_1B8C23C18();
  v8 = sub_1B8C25498();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B8B5DD48(0xD000000000000022, 0x80000001B8C35D60, &v11);
    _os_log_impl(&dword_1B8B22000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  sub_1B8BEA428(a1, a2, a3);
}

uint64_t sub_1B8BF38B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EDC85D40);
  v7 = sub_1B8C23C18();
  v8 = sub_1B8C25498();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B8B5DD48(0xD000000000000025, 0x80000001B8C35D90, &v13);
    _os_log_impl(&dword_1B8B22000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_1B8B247D4(a2);
  sub_1B8BEA428(a1, sub_1B8BFB3FC, v11);
}

void sub_1B8BF3A68(void *a1, char a2, void (*a3)(void *, uint64_t))
{
  if (!a3)
  {
    return;
  }

  if (a2)
  {

    a3(a1, 1);
LABEL_10:

    sub_1B8B30A44(a3);
    return;
  }

  if (!a1)
  {
    sub_1B8BD0C60();
    v6 = swift_allocError();
    *v7 = 4;

    a3(v6, 1);

    goto LABEL_10;
  }

  sub_1B8B247D4(a3);
  sub_1B8B2DE30(a1);
  a3(a1, 0);
  sub_1B8B30A44(a3);

  sub_1B8B30A54(a1);
}

uint64_t sub_1B8BF3B94(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8510, &unk_1B8C2F138);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - v5);
  sub_1B8BD0C60();
  v7 = swift_allocError();
  *v8 = 4;
  *v6 = v7;
  swift_storeEnumTagMultiPayload();
  a2(v6);
  return sub_1B8B3433C(v6, &unk_1EBAA8510, &unk_1B8C2F138);
}

void sub_1B8BF3C7C(char *a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v40 = type metadata accessor for FBKEvaluation.Input(0);
  v5 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1B8C23738();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1B8C236E8();
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v19 = sub_1B8C23C38();
  __swift_project_value_buffer(v19, qword_1EDC85D40);
  v20 = sub_1B8C23C18();
  v21 = sub_1B8C25498();
  if (os_log_type_enabled(v20, v21))
  {
    v37 = v9;
    v38 = v8;
    v39 = v3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v44 = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_1B8B5DD48(0xD00000000000002DLL, 0x80000001B8C35DC0, &v44);
    *(v22 + 12) = 2082;
    v24 = 0xEB000000006E776FLL;
    if (v18 == 1)
    {
      v25 = 0x442073626D756854;
    }

    else
    {
      v25 = 0xD000000000000010;
    }

    if (v18 != 1)
    {
      v24 = 0x80000001B8C354A0;
    }

    if (v18)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x552073626D756854;
    }

    if (v18)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0xE900000000000070;
    }

    v28 = sub_1B8B5DD48(v26, v27, &v44);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_1B8B22000, v20, v21, "%{public}s response %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v23, -1, -1);
    MEMORY[0x1B8CCB0E0](v22, -1, -1);

    v8 = v38;
    v3 = v39;
    v9 = v37;
    if (!sub_1B8BFA1E0())
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (!sub_1B8BFA1E0())
    {
LABEL_16:
      v29 = v42;
      (*(v43 + 104))(v17, **(&unk_1E7EB6650 + v18), v42);
      sub_1B8BFCC3C(v41, v7, type metadata accessor for FBKEvaluation.Input);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *v12 = *v7;
        v30 = MEMORY[0x1E699C218];
      }

      else
      {
        v36 = sub_1B8C23568();
        (*(*(v36 - 8) + 32))(v12, v7, v36);
        v30 = MEMORY[0x1E699C230];
      }

      (*(v9 + 104))(v12, *v30, v8);
      sub_1B8BED0A4(v17, v12, 1, 2, 0);
      (*(v9 + 8))(v12, v8);
      (*(v43 + 8))(v17, v29);
      return;
    }
  }

  swift_getKeyPath();
  v44 = v3;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v31 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  if (v31)
  {
    v32 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler + 8);
    v33 = sub_1B8C23628();
    sub_1B8BFA3AC(&qword_1EBAA84C8, MEMORY[0x1E699C178]);
    v34 = swift_allocError();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E699C170], v33);

    v31(v34, 1);
    sub_1B8B30A44(v31);
  }
}

unint64_t sub_1B8BF42CC(char *a1)
{
  v2 = sub_1B8C236E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8C23C38();
  __swift_project_value_buffer(v8, qword_1EDC85D40);
  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25468();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1B8B5DD48(0xD000000000000016, 0x80000001B8C35DF0, &v16);
    _os_log_impl(&dword_1B8B22000, v9, v10, "%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  (*(v3 + 104))(v6, **(&unk_1E7EB6650 + v7), v2);
  v13 = sub_1B8BF1F4C(v6);
  (*(v3 + 8))(v6, v2);
  return v13;
}

id FBKEvaluationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKEvaluationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKEvaluationController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8BF4770()
{
  v1 = sub_1B8C23A08();
  v77 = *(v1 - 8);
  v2 = *(v77 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v86 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v77 - v5;
  v7 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formResponses;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (v8)
  {
    v9 = v8[2];

    v10 = MEMORY[0x1E69E7CC0];
    if (!v9)
    {
      goto LABEL_15;
    }

    v11 = 0;
    v12 = v9 - 1;
    while (1)
    {
      v13 = &v8[8 * v11 + 4];
      v14 = v11;
      while (1)
      {
        if (v14 >= v8[2])
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v15 = *v13;
        v16 = v13[1];
        v17 = v13[3];
        v90 = v13[2];
        v91 = v17;
        v88 = v15;
        v89 = v16;
        v11 = v14 + 1;
        if (v17 != 3 || *(&v90 + 1) >= 2uLL)
        {
          break;
        }

        v13 += 4;
        ++v14;
        if (v9 == v11)
        {
          goto LABEL_15;
        }
      }

      sub_1B8B96144(&v88, v87);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B8C1406C(0, *(v10 + 16) + 1, 1);
        v10 = v92;
      }

      v19 = v10;
      v20 = *(v10 + 16);
      v21 = *(v19 + 24);
      if (v20 >= v21 >> 1)
      {
        v85 = v12;
        sub_1B8C1406C((v21 > 1), v20 + 1, 1);
        v12 = v85;
        v19 = v92;
      }

      *(v19 + 16) = v20 + 1;
      v22 = (v19 + (v20 << 6));
      v23 = v88;
      v24 = v89;
      v25 = v91;
      v22[4] = v90;
      v22[5] = v25;
      v22[2] = v23;
      v22[3] = v24;
      v10 = v19;
      if (v12 == v14)
      {
LABEL_15:

        v83 = *(v10 + 16);
        if (v83)
        {
          v26 = 0;
          v81 = v10 + 32;
          v85 = (v77 + 16);
          v79 = (v77 + 8);
          v8 = MEMORY[0x1E69E7CC8];
          v78 = v1;
          v80 = v6;
          v82 = v10;
          while (1)
          {
            v27 = (v81 + (v26 << 6));
            v29 = *v27;
            v28 = v27[1];
            v30 = v27[3];
            v90 = v27[2];
            v91 = v30;
            v88 = v29;
            v89 = v28;
            v31 = *(&v30 + 1);
            sub_1B8B96144(&v88, v87);

            sub_1B8C239E8();
            v84 = *v85;
            v84(v86, v6, v1);
            v32 = *(v31 + 16);
            if (v32)
            {
              v87[0] = MEMORY[0x1E69E7CC0];
              sub_1B8C13FE8(0, v32, 0);
              v33 = v87[0];
              v34 = (v31 + 64);
              do
              {
                v35 = *(v34 - 2);
                v36 = *(v34 - 1);
                if (*v34 == 1)
                {
                  v37 = *(v34 - 1);
                }

                else
                {
                  v39 = *(v34 - 4);
                  v38 = *(v34 - 3);
                  sub_1B8BFD084(v39, v38, *(v34 - 2), *(v34 - 1), 0);
                  v35 = v39;
                  v36 = v38;
                }

                v87[0] = v33;
                v41 = *(v33 + 16);
                v40 = *(v33 + 24);
                if (v41 >= v40 >> 1)
                {
                  sub_1B8C13FE8((v40 > 1), v41 + 1, 1);
                  v33 = v87[0];
                }

                *(v33 + 16) = v41 + 1;
                v42 = v33 + 16 * v41;
                *(v42 + 32) = v35;
                *(v42 + 40) = v36;
                v34 += 40;
                --v32;
              }

              while (v32);
              sub_1B8B9F188(&v88);
              v1 = v78;
            }

            else
            {
              sub_1B8B9F188(&v88);
              v33 = MEMORY[0x1E69E7CC0];
            }

            v43 = swift_isUniquelyReferenced_nonNull_native();
            v87[0] = v8;
            v44 = sub_1B8B5E56C(v86);
            v46 = v8[2];
            v47 = (v45 & 1) == 0;
            v48 = __OFADD__(v46, v47);
            v49 = v46 + v47;
            v50 = v82;
            if (v48)
            {
              goto LABEL_53;
            }

            v51 = v45;
            if (v8[3] < v49)
            {
              break;
            }

            if (v43)
            {
              goto LABEL_32;
            }

            v56 = v44;
            sub_1B8B94C14();
            v44 = v56;
            v8 = v87[0];
            if (v51)
            {
LABEL_33:
              v53 = v8[7];
              v54 = *(v53 + 8 * v44);
              *(v53 + 8 * v44) = v33;

              v55 = *v79;
              (*v79)(v86, v1);
              v6 = v80;
              v55(v80, v1);
              goto LABEL_37;
            }

LABEL_35:
            v8[(v44 >> 6) + 8] |= 1 << v44;
            v57 = v77;
            v58 = v44;
            v59 = v86;
            v84(v8[6] + *(v77 + 72) * v44, v86, v1);
            *(v8[7] + 8 * v58) = v33;
            v60 = *(v57 + 8);
            v60(v59, v1);
            v6 = v80;
            v60(v80, v1);
            v61 = v8[2];
            v48 = __OFADD__(v61, 1);
            v62 = v61 + 1;
            if (v48)
            {
              goto LABEL_54;
            }

            v8[2] = v62;
LABEL_37:
            if (++v26 == v83)
            {

              goto LABEL_47;
            }

            if (v26 >= *(v50 + 16))
            {
              __break(1u);
              goto LABEL_40;
            }
          }

          sub_1B8B93D0C(v49, v43);
          v44 = sub_1B8B5E56C(v86);
          if ((v51 & 1) != (v52 & 1))
          {
            result = sub_1B8C25A58();
            __break(1u);
            return result;
          }

LABEL_32:
          v8 = v87[0];
          if (v51)
          {
            goto LABEL_33;
          }

          goto LABEL_35;
        }

        v8 = MEMORY[0x1E69E7CC8];
LABEL_47:
        if (qword_1EDC85598 == -1)
        {
LABEL_48:
          v67 = sub_1B8C23C38();
          __swift_project_value_buffer(v67, qword_1EDC85D40);
          v68 = sub_1B8C23C18();
          v69 = sub_1B8C25468();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *&v88 = v71;
            *v70 = 136315138;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7478, &qword_1B8C2BC80);
            sub_1B8BFA3AC(&qword_1EBAA85E0, MEMORY[0x1E699C658]);
            v72 = sub_1B8C250A8();
            v74 = v73;

            v75 = sub_1B8B5DD48(v72, v74, &v88);

            *(v70 + 4) = v75;
            _os_log_impl(&dword_1B8B22000, v68, v69, "Filtered question-answer pairs: \n%s", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v71);
            MEMORY[0x1B8CCB0E0](v71, -1, -1);
            MEMORY[0x1B8CCB0E0](v70, -1, -1);
          }

          return v8;
        }

LABEL_55:
        swift_once();
        goto LABEL_48;
      }
    }
  }

LABEL_40:
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v63 = sub_1B8C23C38();
  __swift_project_value_buffer(v63, qword_1EDC85D40);
  v64 = sub_1B8C23C18();
  v65 = sub_1B8C25478();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_1B8B22000, v64, v65, "No detailed answers found in FBKFeedbackForm. Cannot record answers", v66, 2u);
    MEMORY[0x1B8CCB0E0](v66, -1, -1);
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1B8BF4FBC(char *a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_1B8C236E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v46 = v1;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v17 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
  swift_beginAccess();
  sub_1B8B34450(v2 + v17, v11, &qword_1EBAA84D8, &qword_1B8C2F020);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B8B3433C(v11, &qword_1EBAA84D8, &qword_1B8C2F020);
    if (qword_1EBAA5910 != -1)
    {
      swift_once();
    }

    v18 = sub_1B8C23C38();
    __swift_project_value_buffer(v18, qword_1EBAB39C8);
    v19 = sub_1B8C23C18();
    v20 = sub_1B8C25478();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1B8B5DD48(0xD000000000000037, 0x80000001B8C36240, &v45);
      _os_log_impl(&dword_1B8B22000, v19, v20, "Unexpected Error: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1B8CCB0E0](v22, -1, -1);
      MEMORY[0x1B8CCB0E0](v21, -1, -1);
    }

    sub_1B8BD0C60();
    v23 = swift_allocError();
    *v24 = 0;
    sub_1B8BE9BA8(v23, 1);
  }

  else
  {
    sub_1B8BF9E58(v11, v16, type metadata accessor for FBKEvaluationController.FormContext);
    (*(v4 + 16))(v7, v16, v3);
    v25 = (*(v4 + 88))(v7, v3);
    if (v25 == *MEMORY[0x1E699C1F0] || v25 == *MEMORY[0x1E699C1C8] || v25 == *MEMORY[0x1E699C1D8])
    {
      v39 = *&v16[*(v12 + 20)];
      *(swift_allocObject() + 16) = v2;
      v40 = v2;
      sub_1B8C23958();

      sub_1B8BFD64C(v16, type metadata accessor for FBKEvaluationController.FormContext);
    }

    else
    {
      v26 = v3;
      if (v25 == *MEMORY[0x1E699C1E8] || v25 == *MEMORY[0x1E699C1D0] || v25 == *MEMORY[0x1E699C1E0])
      {
        sub_1B8C258A8();
        __break(1u);
      }

      else
      {
        v43 = v2;
        v44 = v7;
        v42 = v4;
        if (qword_1EDC85598 != -1)
        {
          swift_once();
        }

        v27 = sub_1B8C23C38();
        __swift_project_value_buffer(v27, qword_1EDC85D40);
        v28 = sub_1B8C23C18();
        v29 = sub_1B8C25498();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v45 = v31;
          *v30 = 136446210;
          *(v30 + 4) = sub_1B8B5DD48(0xD000000000000038, 0x80000001B8C36280, &v45);
          _os_log_impl(&dword_1B8B22000, v28, v29, "%{public}s Unknown Action case", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x1B8CCB0E0](v31, -1, -1);
          MEMORY[0x1B8CCB0E0](v30, -1, -1);
        }

        sub_1B8BD0C60();
        v32 = swift_allocError();
        v34 = v33;
        if (qword_1EBAA5910 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v27, qword_1EBAB39C8);
        v35 = sub_1B8C23C18();
        v36 = sub_1B8C25478();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v45 = v38;
          *v37 = 136446210;
          *(v37 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C35C90, &v45);
          _os_log_impl(&dword_1B8B22000, v35, v36, "Unexpected Error: %{public}s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x1B8CCB0E0](v38, -1, -1);
          MEMORY[0x1B8CCB0E0](v37, -1, -1);
        }

        *v34 = 0;
        sub_1B8BE9BA8(v32, 1);

        sub_1B8BFD64C(v16, type metadata accessor for FBKEvaluationController.FormContext);
        (*(v42 + 8))(v44, v26);
      }
    }
  }
}

uint64_t FBKEvaluationController.feedbackDraftViewControllerDidCancel(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18[-v4];
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EDC85D40);
  v7 = sub_1B8C23C18();
  v8 = sub_1B8C25498();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B8B5DD48(0xD000000000000028, 0x80000001B8C35E40, &v19);
    _os_log_impl(&dword_1B8B22000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  v11 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v12 = *(a1 + v11);
  v13 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v14 = *(v12 + v13);

  sub_1B8BFB710(v15);

  v16 = sub_1B8C236A8();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_1B8BF4FBC(v5);
  return sub_1B8B3433C(v5, &unk_1EBAA84E0, &qword_1B8C2F0A0);
}

void FBKEvaluationController.feedbackDraftViewController(_:didFailToSubmitFeedback:)(uint64_t a1, void *a2)
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EDC85D40);
  v5 = a2;
  v6 = sub_1B8C23C18();
  v7 = sub_1B8C25498();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B8B5DD48(0xD000000000000037, 0x80000001B8C35E70, &v19);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&dword_1B8B22000, v6, v7, "%{public}s, error: %@", v8, 0x16u);
    sub_1B8B3433C(v9, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  v12 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v13 = *(a1 + v12);
  v14 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v15 = *(v13 + v14);

  sub_1B8BFB710(v16);

  sub_1B8BD0C60();
  v17 = swift_allocError();
  *v18 = 1;
  sub_1B8BE9BA8(v17, 1);
}

uint64_t sub_1B8BF5F7C(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v9 = sub_1B8C24FD8();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B8C25008();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v17 = sub_1B8C25538();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2 & 1;
  aBlock[4] = v22;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);
  v20 = a3;
  sub_1B8B2DE30(a1);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v16, v12, v19);
  _Block_release(v19);

  (*(v25 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v24);
}

void sub_1B8BF6254(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B8C23498();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - v10;
  sub_1B8C23418();
  sub_1B8BF73B0(v11, v9);
  v12 = *(v3 + 8);
  v44 = v2;
  v42 = v12;
  v12(v11, v2);
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  sub_1B8C23468();
  v15 = sub_1B8C250F8();

  v16 = [v14 fileExistsAtPath_];

  if (v16)
  {
    v17 = [v13 defaultManager];
    v18 = sub_1B8C233E8();
    v46[0] = 0;
    v19 = [v17 removeItemAtURL:v18 error:v46];

    if (v19)
    {
      v20 = v46[0];
    }

    else
    {
      v21 = v46[0];
      v22 = sub_1B8C23368();

      swift_willThrow();
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v23 = sub_1B8C23C38();
      __swift_project_value_buffer(v23, qword_1EDC85D40);
      v25 = v43;
      v24 = v44;
      (*(v3 + 16))(v43, a1, v44);
      v26 = v22;
      v27 = sub_1B8C23C18();
      v28 = sub_1B8C25478();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v45 = v22;
        v46[0] = v41;
        *v29 = 136380931;
        v30 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v31 = sub_1B8C25178();
        v33 = sub_1B8B5DD48(v31, v32, v46);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2081;
        v34 = sub_1B8C23468();
        v36 = v35;
        v42(v25, v24);
        v37 = sub_1B8B5DD48(v34, v36, v46);

        *(v29 + 14) = v37;
        _os_log_impl(&dword_1B8B22000, v27, v28, "Failed to remove attachment: error: %{private}s path: %{private}s", v29, 0x16u);
        v38 = v41;
        swift_arrayDestroy();
        MEMORY[0x1B8CCB0E0](v38, -1, -1);
        MEMORY[0x1B8CCB0E0](v29, -1, -1);
      }

      else
      {

        v42(v25, v24);
      }
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

void sub_1B8BF66A8(uint64_t a1)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B8C23498();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 defaultManager];
  sub_1B8C23468();
  v8 = sub_1B8C250F8();

  v9 = [v7 fileExistsAtPath_];

  if (v9)
  {
    v10 = [v6 defaultManager];
    v11 = sub_1B8C233E8();
    v36[0] = 0;
    v12 = [v10 removeItemAtURL:v11 error:v36];

    if (v12)
    {
      v13 = v36[0];
    }

    else
    {
      v14 = v36[0];
      v15 = sub_1B8C23368();

      swift_willThrow();
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v16 = sub_1B8C23C38();
      __swift_project_value_buffer(v16, qword_1EDC85D40);
      v17 = v34;
      (*(v34 + 16))(v5, a1, v2);
      v18 = v15;
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25478();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v35 = v15;
        v36[0] = v33;
        *v21 = 136380931;
        v22 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v23 = sub_1B8C25178();
        v25 = sub_1B8B5DD48(v23, v24, v36);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2081;
        v26 = sub_1B8C23468();
        v28 = v27;
        (*(v17 + 8))(v5, v2);
        v29 = sub_1B8B5DD48(v26, v28, v36);

        *(v21 + 14) = v29;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Failed to remove attachment directory: error: %{private}s path: %{private}s", v21, 0x16u);
        v30 = v33;
        swift_arrayDestroy();
        MEMORY[0x1B8CCB0E0](v30, -1, -1);
        MEMORY[0x1B8CCB0E0](v21, -1, -1);
      }

      else
      {

        (*(v17 + 8))(v5, v2);
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall FBKEvaluationController.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(UISheetPresentationController a1)
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EDC85D40);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25468();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1B8B5DD48(0xD000000000000040, 0x80000001B8C35EB0, &v14);
    _os_log_impl(&dword_1B8B22000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  v7 = [(objc_class *)a1.super.super.isa selectedDetentIdentifier];
  v8 = v7;
  if (qword_1EBAA5958 == -1)
  {
    if (!v7)
    {
      return;
    }
  }

  else
  {
    swift_once();
    if (!v8)
    {
      return;
    }
  }

  v9 = sub_1B8C25128();
  v11 = v10;
  if (v9 == sub_1B8C25128() && v11 == v12)
  {
  }

  else
  {
    v13 = sub_1B8C25A08();

    if ((v13 & 1) == 0)
    {
      return;
    }
  }

  sub_1B8BE7E14();
}

uint64_t sub_1B8BF6D1C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B8BF6E14;

  return v7(a1);
}

uint64_t sub_1B8BF6E14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1B8BF6F0C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1B8BF6F80(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B8C237B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1B8BFA3AC(&qword_1EBAA64E0, MEMORY[0x1E699C390]);
  v36 = a2;
  v13 = sub_1B8C250B8();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1B8BFA3AC(&unk_1EBAA8610, MEMORY[0x1E699C390]);
      v23 = sub_1B8C250E8();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1B8BF7FA8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1B8BF7260(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B8C25AB8();
  sub_1B8C251B8();
  v9 = sub_1B8C25AF8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B8C25A08() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1B8BF8270(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B8BF73B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B8C23498();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1B8BFA3AC(&unk_1EBAA85C0, MEMORY[0x1E6968FB0]);
  v36 = a2;
  v13 = sub_1B8C250B8();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1B8BFA3AC(&qword_1EBAA63A0, MEMORY[0x1E6968FB0]);
      v23 = sub_1B8C250E8();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1B8BF83F0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1B8BF7690(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1B8C237B8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7348, &qword_1B8C2BA10);
  result = sub_1B8C257A8();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1B8BFA3AC(&qword_1EBAA64E0, MEMORY[0x1E699C390]);
      result = sub_1B8C250B8();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1B8BF79EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8600, qword_1B8C2F4E0);
  result = sub_1B8C257A8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1B8C25AB8();
      sub_1B8C251B8();
      result = sub_1B8C25AF8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B8BF7C4C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1B8C23498();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA85D0, &unk_1B8C2F4C8);
  result = sub_1B8C257A8();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1B8BFA3AC(&unk_1EBAA85C0, MEMORY[0x1E6968FB0]);
      result = sub_1B8C250B8();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1B8BF7FA8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B8C237B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B8BF7690(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1B8BF8814(MEMORY[0x1E699C390], &qword_1EBAA7348, &qword_1B8C2BA10);
      goto LABEL_12;
    }

    sub_1B8BF8A4C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1B8BFA3AC(&qword_1EBAA64E0, MEMORY[0x1E699C390]);
  v15 = sub_1B8C250B8();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1B8BFA3AC(&unk_1EBAA8610, MEMORY[0x1E699C390]);
      v23 = sub_1B8C250E8();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B8C25A48();
  __break(1u);
  return result;
}

uint64_t sub_1B8BF8270(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B8BF79EC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B8BF86B8();
      goto LABEL_16;
    }

    sub_1B8BF8D68(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B8C25AB8();
  sub_1B8C251B8();
  result = sub_1B8C25AF8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B8C25A08();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B8C25A48();
  __break(1u);
  return result;
}

uint64_t sub_1B8BF83F0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B8C23498();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B8BF7C4C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1B8BF8814(MEMORY[0x1E6968FB0], &unk_1EBAA85D0, &unk_1B8C2F4C8);
      goto LABEL_12;
    }

    sub_1B8BF8FA0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1B8BFA3AC(&unk_1EBAA85C0, MEMORY[0x1E6968FB0]);
  v15 = sub_1B8C250B8();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1B8BFA3AC(&qword_1EBAA63A0, MEMORY[0x1E6968FB0]);
      v23 = sub_1B8C250E8();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B8C25A48();
  __break(1u);
  return result;
}

void *sub_1B8BF86B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8600, qword_1B8C2F4E0);
  v2 = *v0;
  v3 = sub_1B8C25798();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1B8BF8814(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_1B8C25798();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_1B8BF8A4C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B8C237B8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7348, &qword_1B8C2BA10);
  v10 = sub_1B8C257A8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1B8BFA3AC(&qword_1EBAA64E0, MEMORY[0x1E699C390]);
      result = sub_1B8C250B8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1B8BF8D68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8600, qword_1B8C2F4E0);
  result = sub_1B8C257A8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1B8C25AB8();

      sub_1B8C251B8();
      result = sub_1B8C25AF8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B8BF8FA0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B8C23498();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA85D0, &unk_1B8C2F4C8);
  v10 = sub_1B8C257A8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1B8BFA3AC(&unk_1EBAA85C0, MEMORY[0x1E6968FB0]);
      result = sub_1B8C250B8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1B8BF92BC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B8C24408();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage] = 0;
  a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___presentAsEmbeddedView] = 0;
  a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState] = 0;
  v12 = &a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate];
  *&a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = *MEMORY[0x1E699C110];
  sub_1B8C243F8();
  sub_1B8C243E8();
  (*(v8 + 32))(&a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent], v11, v7);
  a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented] = 0;
  *&a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction] = 0;
  v14 = &a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation];
  *v14 = 0;
  v14[8] = -1;
  v15 = &a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__subject;
  v17 = sub_1B8C23738();
  v18 = *(*(v17 - 8) + 56);
  v18(&a2[v16], 1, 1, v17);
  v18(&a2[v16], 1, 1, v17);
  *&a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction] = 0;
  v19 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
  v20 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v21 = *(*(v20 - 8) + 56);
  v21(&a2[v19], 1, 1, v20);
  v21(&a2[v19], 1, 1, v20);
  v22 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__actionPerformed;
  v23 = sub_1B8C236E8();
  (*(*(v23 - 8) + 56))(&a2[v22], 1, 1, v23);
  a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___shouldShortenForRemoteView] = 0;
  sub_1B8C235B8();
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (swift_getObjectType(), swift_conformsToProtocol2()) && a1)
  {
    swift_unknownObjectRetain();
    sub_1B8B3099C(v12);
    *(v12 + 8) = a4;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType] = 0;
    v24 = type metadata accessor for FBKEvaluationController(0);
    v32.receiver = a2;
    v32.super_class = v24;
    v25 = objc_msgSendSuper2(&v32, sel_init);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v31[-4] = v25;
    v31[-3] = sub_1B8BFD5E8;
    v30 = v26;
    v31[1] = v25;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    v28 = v25;

    sub_1B8C23578();

    swift_unknownObjectRelease();
    return v28;
  }

  else
  {
    result = sub_1B8C258A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8BF97A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C236E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D0, &qword_1B8C2F018);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8500, &qword_1B8C2F108);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1B8B34450(a1, &v24 - v16, &qword_1EBAA84D0, &qword_1B8C2F018);
  sub_1B8B34450(a2, &v17[v18], &qword_1EBAA84D0, &qword_1B8C2F018);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1B8B34450(v17, v12, &qword_1EBAA84D0, &qword_1B8C2F018);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1B8BFA3AC(&qword_1EBAA8508, MEMORY[0x1E699C1F8]);
      v21 = sub_1B8C250E8();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1B8B3433C(v17, &qword_1EBAA84D0, &qword_1B8C2F018);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1B8B3433C(v17, &qword_1EBAA8500, &qword_1B8C2F108);
    v20 = 1;
    return v20 & 1;
  }

  sub_1B8B3433C(v17, &qword_1EBAA84D0, &qword_1B8C2F018);
  v20 = 0;
  return v20 & 1;
}

unint64_t _s8Feedback23FBKEvaluationControllerC15systemImageName3for11hasResponseSS0A7Service14FBKSEvaluationC6ActionO_SbtFZ_0(uint64_t a1, char a2)
{
  v4 = sub_1B8C236E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = 0x6C6C69662ELL;
  }

  else
  {
    v9 = 0;
  }

  if (a2)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 88))(v8, v4);
  if (v11 == *MEMORY[0x1E699C1F0])
  {
    v12 = 0x7568742E646E6168;
    v13 = 0xED0000707573626DLL;
  }

  else
  {
    if (v11 == *MEMORY[0x1E699C1C8])
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_1B8C257E8();

      v18 = 0x7568742E646E6168;
      v19 = 0xEF6E776F6473626DLL;
      goto LABEL_14;
    }

    if (v11 == *MEMORY[0x1E699C1D8])
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_1B8C257E8();

      v18 = 0xD000000000000016;
      v19 = 0x80000001B8C35480;
      goto LABEL_14;
    }

    if (v11 != *MEMORY[0x1E699C1E8] && v11 != *MEMORY[0x1E699C1D0] && v11 != *MEMORY[0x1E699C1E0])
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_1B8C257E8();

      v18 = 0xD000000000000013;
      v19 = 0x80000001B8C36530;
      MEMORY[0x1B8CC9EB0](v9, v10);

      v17 = v18;
      (*(v5 + 8))(v8, v4);
      return v17;
    }

    v12 = 0x656C637269632E78;
    v13 = 0xE800000000000000;
  }

  v18 = v12;
  v19 = v13;
LABEL_14:
  MEMORY[0x1B8CC9EB0](v9, v10);

  return v18;
}

uint64_t sub_1B8BF9DB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1B8BF9E28(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1B8B2DE30(a1);
  }

  return a1;
}

void sub_1B8BF9E40(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1B8B30A54(a1);
  }
}

uint64_t sub_1B8BF9E58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BF9EC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23738();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85E8, &qword_1B8C2F4D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1B8B34450(a1, &v24 - v16, &qword_1EBAA6590, &qword_1B8C2EFD0);
  sub_1B8B34450(a2, &v17[v18], &qword_1EBAA6590, &qword_1B8C2EFD0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1B8B34450(v17, v12, &qword_1EBAA6590, &qword_1B8C2EFD0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1B8BFA3AC(&unk_1EBAA85F0, MEMORY[0x1E699C248]);
      v21 = sub_1B8C250E8();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1B8B3433C(v17, &qword_1EBAA6590, &qword_1B8C2EFD0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1B8B3433C(v17, &qword_1EBAA85E8, &qword_1B8C2F4D8);
    v20 = 1;
    return v20 & 1;
  }

  sub_1B8B3433C(v17, &qword_1EBAA6590, &qword_1B8C2EFD0);
  v20 = 0;
  return v20 & 1;
}

BOOL sub_1B8BFA1E0()
{
  v0 = sub_1B8C23638();
  v8[3] = v0;
  v8[4] = sub_1B8BFA3AC(&unk_1EBAA7810, MEMORY[0x1E699C198]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E699C188], v0);
  v2 = sub_1B8C235D8();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if ((v2 & 1) == 0)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v3 = sub_1B8C23C38();
    __swift_project_value_buffer(v3, qword_1EDC85D40);
    v4 = sub_1B8C23C18();
    v5 = sub_1B8C25478();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B8B22000, v4, v5, "CentralizedFeedback feature flag is not enabled.", v6, 2u);
      MEMORY[0x1B8CCB0E0](v6, -1, -1);
    }
  }

  return (v2 & 1) == 0;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B8BFA3AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B8BFA3F4(uint64_t a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t), void (*a4)(_BYTE *, _BYTE *, uint64_t), void (*a5)(unint64_t, _BYTE *, uint64_t))
{
  v10 = sub_1B8C23568();
  v88 = *(v10 - 8);
  v11 = v88[8];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v82 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v81 = &v77[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v77[-v15];
  v89 = sub_1B8C23738();
  v16 = *(v89 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v19 = &v77[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v85 = a3;

  v86 = a4;
  v87 = a5;
  sub_1B8B247D4(a4);
  if (sub_1B8BE6C4C(0))
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v72 = sub_1B8C23C38();
    __swift_project_value_buffer(v72, qword_1EDC85D40);
    v73 = sub_1B8C23C18();
    v74 = sub_1B8C25478();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v90 = v76;
      *v75 = 136446210;
      *(v75 + 4) = sub_1B8B5DD48(0xD00000000000002ALL, 0x80000001B8C36410, &v90);
      _os_log_impl(&dword_1B8B22000, v73, v74, "%{public}s called while FBKEvaluationController is idling.", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x1B8CCB0E0](v76, -1, -1);
      MEMORY[0x1B8CCB0E0](v75, -1, -1);
    }

    sub_1B8B30A44(v86);
    sub_1B8C258A8();
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v90 = a2;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23588();

    v21 = *(a2 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction);
    v22 = v10;
    if (v21)
    {
      v84 = v20;
      v23 = v21;
      if (sub_1B8C23708())
      {
        if (qword_1EDC85598 != -1)
        {
          swift_once();
        }

        v24 = sub_1B8C23C38();
        __swift_project_value_buffer(v24, qword_1EDC85D40);
        v25 = sub_1B8C23C18();
        v26 = sub_1B8C25498();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1B8B22000, v25, v26, "Using cached interaction", v27, 2u);
          MEMORY[0x1B8CCB0E0](v27, -1, -1);
        }

        v28 = v23;
        sub_1B8BEABF0(v21, 0, v85, v86, v87);

        return;
      }

      v20 = v84;
    }

    v29 = v89;
    (*(v16 + 16))(v19, a1, v89);
    v30 = (*(v16 + 88))(v19, v29);
    if (v30 == *MEMORY[0x1E699C230])
    {
      (*(v16 + 96))(v19, v29);
      v31 = v88;
      v32 = v88[4];
      v33 = v83;
      v89 = (v88 + 4);
      v87 = v32;
      v32(v83, v19, v22);
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v34 = sub_1B8C23C38();
      __swift_project_value_buffer(v34, qword_1EDC85D40);
      v35 = v81;
      v86 = v31[2];
      v86(v81, v33, v22);
      v36 = sub_1B8C23C18();
      v37 = sub_1B8C25498();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v90 = v79;
        *v38 = 136446210;
        v78 = v37;
        v39 = sub_1B8C23538();
        v84 = v20;
        v41 = v40;
        v42 = v88[1];
        v80 = (v88 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v85 = v42;
        v42(v35, v22);
        v43 = sub_1B8B5DD48(v39, v41, &v90);
        v20 = v84;

        *(v38 + 4) = v43;
        _os_log_impl(&dword_1B8B22000, v36, v78, "Prefetching interaction for uuid %{public}s", v38, 0xCu);
        v44 = v79;
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x1B8CCB0E0](v44, -1, -1);
        v45 = v38;
        v31 = v88;
        v33 = v83;
        MEMORY[0x1B8CCB0E0](v45, -1, -1);
      }

      else
      {

        v52 = v31[1];
        v80 = (v31 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v85 = v52;
        v52(v35, v22);
      }

      v88 = sub_1B8C23688();
      v53 = v82;
      v86(v82, v33, v22);
      v54 = (*(v31 + 80) + 16) & ~*(v31 + 80);
      v55 = (v11 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = v33;
      v57 = swift_allocObject();
      v87(v57 + v54, v53, v22);
      *(v57 + v55) = a2;
      v58 = (v57 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v58 = sub_1B8BFD3FC;
      v58[1] = v20;
      v59 = a2;

      MEMORY[0x1B8CC8340](v56, sub_1B8BFD7D4, v57);

      v85(v56, v22);
LABEL_32:

      return;
    }

    if (v30 != *MEMORY[0x1E699C218])
    {
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v60 = sub_1B8C23C38();
      __swift_project_value_buffer(v60, qword_1EDC85D40);
      v61 = sub_1B8C23C18();
      v62 = sub_1B8C25498();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v90 = v64;
        *v63 = 136446210;
        *(v63 + 4) = sub_1B8B5DD48(0xD00000000000002ALL, 0x80000001B8C36410, &v90);
        _os_log_impl(&dword_1B8B22000, v61, v62, "%{public}s Unknown Subject case", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x1B8CCB0E0](v64, -1, -1);
        MEMORY[0x1B8CCB0E0](v63, -1, -1);
      }

      sub_1B8BD0C60();
      v65 = swift_allocError();
      v67 = v66;
      if (qword_1EBAA5910 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v60, qword_1EBAB39C8);
      v68 = sub_1B8C23C18();
      v69 = sub_1B8C25478();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v90 = v71;
        *v70 = 136446210;
        *(v70 + 4) = sub_1B8B5DD48(0xD000000000000014, 0x80000001B8C363F0, &v90);
        _os_log_impl(&dword_1B8B22000, v68, v69, "Unexpected Error: %{public}s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x1B8CCB0E0](v71, -1, -1);
        MEMORY[0x1B8CCB0E0](v70, -1, -1);
      }

      *v67 = 0;
      sub_1B8BEABF0(v65, 1, v85, v86, v87);

      (*(v16 + 8))(v19, v89);
      goto LABEL_32;
    }

    (*(v16 + 96))(v19, v29);
    v46 = *v19;
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v47 = sub_1B8C23C38();
    __swift_project_value_buffer(v47, qword_1EDC85D40);
    v48 = sub_1B8C23C18();
    v49 = sub_1B8C25498();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1B8B22000, v48, v49, "Interaction already available", v50, 2u);
      MEMORY[0x1B8CCB0E0](v50, -1, -1);
    }

    v51 = v46;
    sub_1B8BE74E4(v46);
    sub_1B8BEABF0(v46, 0, v85, v86, v87);
  }
}

void sub_1B8BFB004()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction);
  *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction) = v2;
  v4 = v2;
}

uint64_t sub_1B8BFB088(void *a1, char a2)
{
  v5 = *(sub_1B8C236E8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1B8C23738() - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + v7);
  v11 = v2 + ((v7 + *(v8 + 80) + 1) & ~*(v8 + 80));

  return sub_1B8BEEC14(a1, a2 & 1, v9, v2 + v6, v10, v11);
}

uint64_t sub_1B8BFB178(void *a1, char a2)
{
  v5 = *(sub_1B8C236E8() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1B8BEE6F8(a1, a2 & 1, v6, v7);
}

uint64_t sub_1B8BFB1FC()
{
  v1 = *(sub_1B8C236E8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1B8C23738();
  v6 = *(v4 - 8);
  result = v4 - 8;
  v7 = (v2 + v3 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 16);
    return sub_1B8BED0A4(v0 + v2, v0 + v7, 1, 2, v9);
  }

  return result;
}

uint64_t sub_1B8BFB330(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, void, void))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + 16);
  return a2(v2 + v5, *(v2 + v6), *(v2 + v6 + 8));
}

uint64_t sub_1B8BFB408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[2] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v24 - v7;
  v9 = sub_1B8C236A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v14 = sub_1B8C23C38();
  __swift_project_value_buffer(v14, qword_1EDC85D40);
  v15 = sub_1B8C23C18();
  v16 = sub_1B8C25498();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24[1] = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1B8B5DD48(0xD000000000000046, 0x80000001B8C36380, &v25);
    _os_log_impl(&dword_1B8B22000, v15, v16, "%{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1B8CCB0E0](v19, -1, -1);
    MEMORY[0x1B8CCB0E0](v18, -1, -1);
  }

  v20 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v21 = *(a1 + v20);

  v22 = v21;
  sub_1B8BF4770();

  sub_1B8C23698();
  (*(v10 + 16))(v8, v13, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1B8BF4FBC(v8);
  sub_1B8B3433C(v8, &unk_1EBAA84E0, &qword_1B8C2F0A0);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1B8BFB710(uint64_t a1)
{
  v2 = sub_1B8C23498();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7CD0];
  v20 = MEMORY[0x1E69E7CD0];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1B8BF6254(v9);
      v9 += v10;
      --v8;
    }

    while (v8);
    v7 = v20;
  }

  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 56);
  v14 = (v11 + 63) >> 6;
  v19[1] = v3 + 16;
  v15 = (v3 + 8);

  for (i = 0; v13; i = v17)
  {
    v17 = i;
LABEL_12:
    (*(v3 + 16))(v6, *(v7 + 48) + *(v3 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v2);
    sub_1B8BF66A8(v6);
    v13 &= v13 - 1;
    (*v15)(v6, v2);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v7 + 56 + 8 * v17);
    ++i;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);

  result = (*v15)(v6, v2);
  __break(1u);
  return result;
}

void _s8Feedback23FBKEvaluationControllerC017feedbackDraftViewC0_23didFailToStartWithErroryAA011FBKFeedbackefC0C_AA08FBKDraftL0OtF_0(uint64_t a1)
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EDC85D40);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25498();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1B8B5DD48(0xD000000000000037, 0x80000001B8C36340, &v14);
    _os_log_impl(&dword_1B8B22000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  v7 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v10 = *(v8 + v9);

  sub_1B8BFB710(v11);

  sub_1B8BD0C60();
  v12 = swift_allocError();
  *v13 = 1;
  sub_1B8BE9BA8(v12, 1);
}

uint64_t _s8Feedback23FBKEvaluationControllerC017feedbackDraftViewC0_18didFailToAttachURL5erroryAA011FBKFeedbackefC0C_10Foundation0K0VAA18FBKAttachmentErrorOtF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23498();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8C23C38();
  __swift_project_value_buffer(v9, qword_1EDC85D40);
  (*(v5 + 16))(v8, a2, v4);
  v10 = sub_1B8C23C18();
  v11 = sub_1B8C25498();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_1B8B5DD48(0xD000000000000038, 0x80000001B8C36300, v25);
    *(v12 + 12) = 2082;
    v14 = sub_1B8C233B8();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_1B8B5DD48(v14, v16, v25);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_1B8B22000, v10, v11, "%{public}s: %{public}s ", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v13, -1, -1);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v18 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v21 = *(v19 + v20);

  sub_1B8BFB710(v22);
}

uint64_t _s8Feedback23FBKEvaluationControllerC017feedbackDraftViewC11DidLoadFormyyAA011FBKFeedbackefC0CF_0(uint64_t a1)
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EDC85D40);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25498();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1B8B5DD48(0xD00000000000002ALL, 0x80000001B8C36210, &v13);
    _os_log_impl(&dword_1B8B22000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  v7 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v10 = *(v8 + v9);

  sub_1B8BFB710(v11);
}

unint64_t sub_1B8BFBF88()
{
  result = qword_1EBAA8520;
  if (!qword_1EBAA8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8520);
  }

  return result;
}

void sub_1B8BFBFE4()
{
  v0 = sub_1B8C24408();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1B8BFCA74(319, &unk_1EDC85820, MEMORY[0x1E699C248]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1B8BFCA74(319, qword_1EDC857B8, type metadata accessor for FBKEvaluationController.FormContext);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1B8BFCA74(319, &unk_1EDC85830, MEMORY[0x1E699C1F8]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1B8C235C8();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1B8BFCA74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C25608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B8BFCB10()
{
  sub_1B8C236E8();
  if (v0 <= 0x3F)
  {
    sub_1B8C23978();
    if (v1 <= 0x3F)
    {
      sub_1B8BFCA74(319, &unk_1EDC856D0, type metadata accessor for FBKFeedbackDraftViewController);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B8BFCBCC()
{
  result = qword_1EBAA8588;
  if (!qword_1EBAA8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8588);
  }

  return result;
}

uint64_t sub_1B8BFCC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BFCCA4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B8C236E8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1B8B5115C;

  return sub_1B8BF0B08(a1, v8, v9, v10, v11, v1 + v6, v13);
}

uint64_t sub_1B8BFCDEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B8BFD788;

  return sub_1B8BF6D1C(a1, v5);
}

uint64_t sub_1B8BFCEA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B8B5115C;

  return sub_1B8BF6D1C(a1, v5);
}

uint64_t sub_1B8BFCF74()
{
  v1 = v0[3];
  *(v0[2] + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate + 8) = v0[4];
  return swift_unknownObjectWeakAssign();
}

void sub_1B8BFCFA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction);
  *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction) = v2;
  v4 = v2;
}

void sub_1B8BFD058()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_1B8BE9BA8(v1, v2);
}

uint64_t sub_1B8BFD084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

void sub_1B8BFD0D8()
{
  v1 = *(*(sub_1B8C236E8() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  sub_1B8BEEAB0(v2, v3, v4);
}

uint64_t sub_1B8BFD164()
{
  v1 = *(sub_1B8C23568() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1B8BEC5A0(v4, v5, v0 + v2, v6, v8, v9);
}

void sub_1B8BFD208()
{
  v1 = *(sub_1B8C236E8() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_1B8C23738() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + v3);
  v9 = v0 + ((v3 + *(v4 + 80) + 1) & ~*(v4 + 80));

  sub_1B8BEF0B8(v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t objectdestroy_211Tm()
{
  v1 = *(v0 + 32);
  sub_1B8B30A54(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1B8BFD360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_239Tm()
{
  v1 = sub_1B8C23568();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1B8BFD4BC(void *a1, char a2)
{
  v5 = *(sub_1B8C23568() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1B8BEC1B8(a1, a2 & 1, v2 + v6, v8, v10, v11);
}

void sub_1B8BFD588()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation;
  v3 = *v2;
  v4 = *(v0 + 32);
  *v2 = v1;
  v5 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_1B8BF9E28(v1, v4);
  sub_1B8BF9E40(v3, v5);
}

uint64_t sub_1B8BFD5F4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1B8B247D4(v1);
  return sub_1B8B30A44(v4);
}

uint64_t sub_1B8BFD64C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8BFD7F0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1B8C25708();
    v5 = v4;
    v6 = sub_1B8C25778();
    v8 = v7;
    v9 = MEMORY[0x1B8CCA3F0](v3, v5, v6, v7);
    sub_1B8BFDE40(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1B8BFDE40(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_1B8C256E8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1B8BFD90C(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1B8BFDE40(v3, v5, v2 != 0);
  return v13;
}

void sub_1B8BFD90C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B8CCA420](a1, a2, v7);
      sub_1B8BFDD9C();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1B8BFDD9C();
    if (sub_1B8C25738() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1B8C25748();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_1B8C255D8();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_1B8C255E8();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

void sub_1B8BFDB0C()
{
  v1 = [v0 currentUser];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v1 bugFormStubs];

  if (!v3 || (sub_1B8BFDD9C(), sub_1B8BFDDE8(), v4 = sub_1B8C253E8(), v3, v5 = sub_1B8BFD7F0(v4), , !v5))
  {
LABEL_9:
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v14 = sub_1B8C23C38();
    __swift_project_value_buffer(v14, qword_1EBAB3A00);
    v8 = sub_1B8C23C18();
    v15 = sub_1B8C25478();
    if (os_log_type_enabled(v8, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B8B22000, v8, v15, "Could not find FBKFormStub", v16, 2u);
      MEMORY[0x1B8CCB0E0](v16, -1, -1);
    }

    goto LABEL_13;
  }

  if (qword_1EBAA5968 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EBAB3A00);
  v7 = v5;
  v8 = sub_1B8C23C18();
  v9 = sub_1B8C25498();
  if (!os_log_type_enabled(v8, v9))
  {

    v8 = v7;
    goto LABEL_13;
  }

  v10 = swift_slowAlloc();
  *v10 = 134349056;
  v11 = [v7 ID];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 integerValue];

    *(v10 + 4) = v13;
    _os_log_impl(&dword_1B8B22000, v8, v9, "Will start draft with form [%{public}ld]", v10, 0xCu);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
LABEL_13:

    return;
  }

  __break(1u);
}

unint64_t sub_1B8BFDD9C()
{
  result = qword_1EBAA8680;
  if (!qword_1EBAA8680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA8680);
  }

  return result;
}

unint64_t sub_1B8BFDDE8()
{
  result = qword_1EBAA8688;
  if (!qword_1EBAA8688)
  {
    sub_1B8BFDD9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8688);
  }

  return result;
}

uint64_t sub_1B8BFDE40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void _s8Feedback31FBKEvaluationControllerDelegatePAAE21evaluationDidComplete10controller0E0yAA0bC0C_0A7Service14FBKSEvaluationCtF_0()
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EDC85D40);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25498();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_1B8B5DD48(0xD00000000000002DLL, 0x80000001B8C368C0, &v5);
    _os_log_impl(&dword_1B8B22000, oslog, v1, "%{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B8CCB0E0](v3, -1, -1);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

void _s8Feedback31FBKEvaluationControllerDelegatePAAE21evaluationDidComplete10controller8responseyAA0bC0C_AA0B0V8ResponseVtF_0()
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EDC85D40);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25498();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_1B8B5DD48(0xD00000000000002BLL, 0x80000001B8C368F0, &v5);
    _os_log_impl(&dword_1B8B22000, oslog, v1, "%{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B8CCB0E0](v3, -1, -1);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

void _s8Feedback31FBKEvaluationControllerDelegatePAAE17evaluationDidFail10controller5erroryAA0bC0C_s5Error_ptF_0()
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EDC85D40);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25498();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_1B8B5DD48(0xD000000000000024, 0x80000001B8C36920, &v5);
    _os_log_impl(&dword_1B8B22000, oslog, v1, "%{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B8CCB0E0](v3, -1, -1);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

uint64_t FBKAnswerType.description.getter(uint64_t a1)
{
  v1 = a1 + 1;
  result = 0x6C65694674786554;
  switch(v1)
  {
    case 0:
      result = 0x6E776F6E6B6E55;
      break;
    case 1:
      return result;
    case 2:
      result = 0x6165724174786554;
      break;
    case 3:
      result = 0x7055706F50;
      break;
    case 4:
      result = 0x6F69646152;
      break;
    case 5:
      result = 0x786F426B63656843;
      break;
    case 6:
      result = 0x656E6F5A656C6946;
      break;
    case 7:
      result = 0x74616D726F666E49;
      break;
    case 8:
      result = 0x726564696C53;
      break;
    case 9:
      result = 1702125892;
      break;
    case 10:
      result = 0x656D695465746144;
      break;
    case 11:
      result = 1701669204;
      break;
    case 12:
      result = 0x6C61646F4DLL;
      break;
    case 13:
      result = 0x656C67676F54;
      break;
    default:
      result = 0x206E776F6E6B6E55;
      break;
  }

  return result;
}

uint64_t FBKImageTransformer.__allocating_init(_:targetFileSize:resizeScale:attemptLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a5;
  *(result + 48) = a4;
  *(result + 56) = 0;
  return result;
}

uint64_t FBKImageTransformer.init(_:targetFileSize:resizeScale:attemptLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 48) = a4;
  *(v5 + 56) = 0;
  return v5;
}

void sub_1B8BFE498()
{
  v1 = v0;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAB3A30);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25468();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v86.a = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v86);
    _os_log_impl(&dword_1B8B22000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  v7 = *(v0 + 7);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  *(v0 + 7) = v9;
  v10 = *(v0 + 6);
  if (v10 < v9)
  {
    v11 = sub_1B8C23C18();
    v12 = sub_1B8C25468();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v86.a = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v86);
      _os_log_impl(&dword_1B8B22000, v11, v12, "%s - reached attempt limit", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1B8CCB0E0](v14, -1, -1);
      MEMORY[0x1B8CCB0E0](v13, -1, -1);
    }

    sub_1B8BFF1A4();
    swift_allocError();
    *v15 = v10;
    *(v15 + 8) = 0;
LABEL_10:
    swift_willThrow();
    return;
  }

  v16 = sub_1B8C23C18();
  v17 = sub_1B8C25468();
  if (!os_log_type_enabled(v16, v17))
  {

    goto LABEL_24;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  *&v86.a = v19;
  *v18 = 136315394;
  *(v18 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v86);
  *(v18 + 12) = 2048;
  v20 = *(v0 + 2);
  v21 = *(v0 + 3);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      v20 = 0;
      goto LABEL_23;
    }

    v25 = v20 + 16;
    v23 = *(v20 + 16);
    v24 = *(v25 + 8);
    v8 = __OFSUB__(v24, v23);
    v20 = v24 - v23;
    if (!v8)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    v8 = __OFSUB__(HIDWORD(v20), v20);
    LODWORD(v20) = HIDWORD(v20) - v20;
    if (v8)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v20 = v20;
    goto LABEL_23;
  }

  if (v22)
  {
    goto LABEL_20;
  }

  v20 = BYTE6(v21);
LABEL_23:
  *(v18 + 14) = v20;

  _os_log_impl(&dword_1B8B22000, v16, v17, "%s - size: %ld", v18, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v19);
  MEMORY[0x1B8CCB0E0](v19, -1, -1);
  MEMORY[0x1B8CCB0E0](v18, -1, -1);

LABEL_24:
  v26 = *(v0 + 2);
  v27 = *(v0 + 3);
  v28 = v27 >> 62;
  if ((v27 >> 62) <= 1)
  {
    if (!v28)
    {
      v29 = BYTE6(v27);
      goto LABEL_34;
    }

LABEL_31:
    LODWORD(v29) = HIDWORD(v26) - v26;
    if (!__OFSUB__(HIDWORD(v26), v26))
    {
      v29 = v29;
      goto LABEL_34;
    }

    goto LABEL_79;
  }

  if (v28 == 2)
  {
    v31 = *(v26 + 16);
    v30 = *(v26 + 24);
    v8 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (v8)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_34:
  if (v29 < *(v0 + 4))
  {
    v32 = sub_1B8C23C18();
    v33 = sub_1B8C25468();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v86.a = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v86);
      _os_log_impl(&dword_1B8B22000, v32, v33, "%s - image is less than 1 mb, will not resize", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B8CCB0E0](v35, -1, -1);
      MEMORY[0x1B8CCB0E0](v34, -1, -1);
    }

    sub_1B8B7B54C(*(v1 + 2), *(v1 + 3));
    return;
  }

  v85 = *(v0 + 4);
  v36 = objc_allocWithZone(MEMORY[0x1E695F658]);
  sub_1B8B7B54C(v26, v27);
  v37 = sub_1B8C234A8();
  v38 = [v36 initWithData_];

  sub_1B8B4645C(v26, v27);
  if (!v38)
  {
    v56 = sub_1B8C23C18();
    v57 = sub_1B8C25478();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v86.a = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v86);
      _os_log_impl(&dword_1B8B22000, v56, v57, "%s - Failed to create CIImage from image Data", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x1B8CCB0E0](v59, -1, -1);
      MEMORY[0x1B8CCB0E0](v58, -1, -1);
    }

    sub_1B8BFF1A4();
    swift_allocError();
    *v60 = 0;
    *(v60 + 8) = 1;
    goto LABEL_10;
  }

  v39 = v0[5];
  CGAffineTransformMakeScale(&v86, v39, v39);
  v40 = [v38 imageByApplyingTransform_];

  v41 = sub_1B8C23C18();
  v42 = sub_1B8C25468();

  v84 = v40;
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v86.a = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v86);
    *(v43 + 12) = 2048;
    *(v43 + 14) = v39;
    _os_log_impl(&dword_1B8B22000, v41, v42, "%s - resized image by %f", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B8CCB0E0](v44, -1, -1);
    v45 = v43;
    v40 = v84;
    MEMORY[0x1B8CCB0E0](v45, -1, -1);
  }

  v46 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCIImage_];
  v47 = UIImagePNGRepresentation(v46);

  if (v47)
  {
    v83 = v38;
    v48 = sub_1B8C234B8();
    v50 = v49;

    sub_1B8B7B54C(v48, v50);
    v51 = sub_1B8C23C18();
    v52 = sub_1B8C25468();
    if (!os_log_type_enabled(v51, v52))
    {

      v54 = v50 >> 62;
LABEL_61:
      v68 = *(v0 + 2);
      v69 = *(v0 + 3);
      *(v0 + 2) = v48;
      *(v0 + 3) = v50;
      sub_1B8B7B54C(v48, v50);
      sub_1B8B4645C(v68, v69);
      if (v54 > 1)
      {
        if (v54 != 2)
        {
          if (v85 <= 0)
          {
            goto LABEL_71;
          }

          goto LABEL_75;
        }

        v72 = *(v48 + 16);
        v71 = *(v48 + 24);
        v8 = __OFSUB__(v71, v72);
        v70 = v71 - v72;
        if (!v8)
        {
LABEL_70:
          if (v70 >= v85)
          {
LABEL_71:
            v73 = sub_1B8C23C18();
            v74 = sub_1B8C25468();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              *&v86.a = v76;
              *v75 = 136315138;
              *(v75 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v86);
              _os_log_impl(&dword_1B8B22000, v73, v74, "%s - resized image is still too big, will resize again", v75, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v76);
              v77 = v76;
              v40 = v84;
              MEMORY[0x1B8CCB0E0](v77, -1, -1);
              MEMORY[0x1B8CCB0E0](v75, -1, -1);
            }

            sub_1B8BFE498();
            sub_1B8B4645C(v48, v50);
            sub_1B8B4645C(v48, v50);

            return;
          }

LABEL_75:
          sub_1B8B4645C(v48, v50);
          v78 = sub_1B8C23C18();
          v79 = sub_1B8C25468();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            *&v86.a = v81;
            *v80 = 136315138;
            *(v80 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v86);
            _os_log_impl(&dword_1B8B22000, v78, v79, "%s - resized image is valid, will return", v80, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v81);
            MEMORY[0x1B8CCB0E0](v81, -1, -1);
            MEMORY[0x1B8CCB0E0](v80, -1, -1);
          }

          else
          {
          }

          return;
        }

        __break(1u);
      }

      else if (!v54)
      {
        v70 = BYTE6(v50);
        goto LABEL_70;
      }

      LODWORD(v70) = HIDWORD(v48) - v48;
      if (!__OFSUB__(HIDWORD(v48), v48))
      {
        v70 = v70;
        goto LABEL_70;
      }

      goto LABEL_81;
    }

    v53 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v86.a = v82;
    *v53 = 136315394;
    *(v53 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v86);
    *(v53 + 12) = 2048;
    v54 = v50 >> 62;
    if ((v50 >> 62) > 1)
    {
      if (v54 != 2)
      {
        v55 = 0;
        goto LABEL_60;
      }

      v67 = *(v48 + 16);
      v66 = *(v48 + 24);
      v8 = __OFSUB__(v66, v67);
      v55 = v66 - v67;
      if (!v8)
      {
        goto LABEL_60;
      }

      __break(1u);
    }

    else if (!v54)
    {
      v55 = BYTE6(v50);
LABEL_60:
      *(v53 + 14) = v55;
      _os_log_impl(&dword_1B8B22000, v51, v52, "%s - resized data is %ld bytes", v53, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x1B8CCB0E0](v82, -1, -1);
      MEMORY[0x1B8CCB0E0](v53, -1, -1);

      v40 = v84;
      goto LABEL_61;
    }

    LODWORD(v55) = HIDWORD(v48) - v48;
    if (__OFSUB__(HIDWORD(v48), v48))
    {
LABEL_82:
      __break(1u);
      return;
    }

    v55 = v55;
    goto LABEL_60;
  }

  v61 = sub_1B8C23C18();
  v62 = sub_1B8C25478();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&v86.a = v64;
    *v63 = 136315138;
    *(v63 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v86);
    _os_log_impl(&dword_1B8B22000, v61, v62, "%s - Failed to convert CIImage to Data", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x1B8CCB0E0](v64, -1, -1);
    MEMORY[0x1B8CCB0E0](v63, -1, -1);
  }

  sub_1B8BFF1A4();
  swift_allocError();
  *v65 = 1;
  *(v65 + 8) = 1;
  swift_willThrow();
}

uint64_t FBKImageTransformer.__deallocating_deinit()
{
  sub_1B8B4645C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

void sub_1B8BFF16C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_1B8BFF1A4()
{
  result = qword_1EBAA8690;
  if (!qword_1EBAA8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8690);
  }

  return result;
}

uint64_t sub_1B8BFF290(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B8C25838();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_1B8C02988(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1B8BFF590@<X0>(unint64_t a1@<X8>)
{
  v2 = v1;
  v113 = sub_1B8C23258();
  v4 = *(v113 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v113);
  v107 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v117 = &v100 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v100 - v10;
  v11 = sub_1B8C23218();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1B8C232C8();
  v108 = *(v109 - 8);
  v16 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C232B8();
  MEMORY[0x1B8CC7F60](7824750, 0xE300000000000000);
  v116 = v18;
  sub_1B8C232A8();
  v19 = v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
  swift_beginAccess();
  if (*(v19 + 8))
  {
    goto LABEL_12;
  }

  v20 = *v19;
  v21 = (v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment);
  swift_beginAccess();
  if (v21[1])
  {
    goto LABEL_12;
  }

  LODWORD(v114) = *v21;
  v22 = (v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host);
  swift_beginAccess();
  v23 = v22[1];
  if (!v23 || (v24 = *v22, v25 = (v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken), swift_beginAccess(), (v26 = v25[1]) == 0))
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6618, &qword_1B8C29460);
    v44 = *(v4 + 72);
    v45 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    *(swift_allocObject() + 16) = xmmword_1B8C2A740;
    v46 = (v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
    swift_beginAccess();
    v48 = *v46;
    v47 = v46[1];

    sub_1B8C23228();

    v49 = v116;
    sub_1B8C23278();
    goto LABEL_13;
  }

  v106 = *v25;
  v112 = v20;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6618, &qword_1B8C29460);
  v28 = v4;
  v29 = *(v4 + 72);
  v110 = v28;
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  v105 = v31;
  *(v31 + 16) = xmmword_1B8C293A0;
  v111 = v30;
  v104 = v31 + v30;
  v119 = v24;
  v120 = v23;

  sub_1B8C231F8();
  sub_1B8B34CA8();
  sub_1B8C25698();
  (*(v12 + 8))(v15, v11);

  sub_1B8C23228();

  v32 = MEMORY[0x1B8CCA890](v114);
  sub_1B8C25128();

  sub_1B8C23228();

  v33 = (2 * v29);
  v119 = v112;
  sub_1B8C259E8();
  sub_1B8C23228();

  v112 = v29;
  sub_1B8C23228();

  sub_1B8C23278();
  v34 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds;
  swift_beginAccess();
  v35 = *(v2 + v34);
  v104 = a1;
  if (v35)
  {
    v33 = *(v35 + 16);
    if (v33)
    {
      v114 = v2;
      v119 = MEMORY[0x1E69E7CC0];

      sub_1B8C13FE8(0, v33, 0);
      v36 = 32;
      v37 = v119;
      do
      {
        v121 = *(v35 + v36);
        v38 = sub_1B8C259E8();
        v40 = v39;
        v119 = v37;
        v42 = *(v37 + 16);
        v41 = *(v37 + 24);
        v27 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          sub_1B8C13FE8((v41 > 1), v42 + 1, 1);
          v37 = v119;
        }

        *(v37 + 16) = v27;
        v43 = v37 + 16 * v42;
        *(v43 + 32) = v38;
        *(v43 + 40) = v40;
        v36 += 8;
        --v33;
      }

      while (v33);

      v119 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7478, &qword_1B8C2BC80);
      sub_1B8C03380();
      sub_1B8C250D8();
      v33 = v51;

      v52 = sub_1B8C23268();
      v54 = v52;
      if (*v53)
      {
        v55 = v53;
        v27 = v115;
        sub_1B8C23228();

        v33 = *v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v55 = v33;
        v2 = v114;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_16;
      }

      (v54)(&v119, 0);
      v2 = v114;
    }
  }

LABEL_20:
  v60 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v61 = *(v2 + v60);
  v54 = v61 + 64;
  v62 = 1 << *(v61 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v105 = v63 & *(v61 + 64);
  v64 = (v62 + 63) >> 6;
  v106 = 0x80000001B8C33DC0;
  v110 += 4;
  v102 = v61;

  v55 = 0;
  v100 = v54;
  v101 = v64;
  while (1)
  {
    v65 = v105;
    if (!v105)
    {
      break;
    }

LABEL_30:
    v105 = (v65 - 1) & v65;
    v103 = v55;
    v67 = __clz(__rbit64(v65)) | (v55 << 6);
    v68 = (*(v102 + 48) + 16 * v67);
    v54 = v68[1];
    v33 = *(*(v102 + 56) + 8 * v67);
    v69 = *(v33 + 2);
    v115 = *v68;
    sub_1B8B5FB10(v115, v54);

    v27 = 0;
    v55 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v70 = &v33[16 * v27 + 40];
    while (v69 != v27)
    {
      if (v27 >= *(v33 + 2))
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        v33 = sub_1B8B5D994(0, *(v33 + 2) + 1, 1, v33);
        *v55 = v33;
LABEL_16:
        v57 = v110;
        v59 = *(v33 + 2);
        v58 = *(v33 + 3);
        if (v59 >= v58 >> 1)
        {
          v33 = sub_1B8B5D994(v58 > 1, v59 + 1, 1, v33);
          *v55 = v33;
        }

        *(v33 + 2) = v59 + 1;
        v57[4](&v33[v111 + v59 * v112], v27, v113);
        (v54)(&v119, 0);
        goto LABEL_20;
      }

      ++v27;
      v2 = *(v70 - 1);
      v71 = *v70;
      v70 += 2;
      v72 = HIBYTE(v71) & 0xF;
      if ((v71 & 0x2000000000000000) == 0)
      {
        v72 = v2 & 0xFFFFFFFFFFFFLL;
      }

      if (v72)
      {

        v73 = swift_isUniquelyReferenced_nonNull_native();
        v119 = v55;
        if ((v73 & 1) == 0)
        {
          sub_1B8C13FE8(0, *(v55 + 16) + 1, 1);
          v55 = v119;
        }

        v75 = *(v55 + 16);
        v74 = *(v55 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_1B8C13FE8((v74 > 1), v75 + 1, 1);
          v55 = v119;
        }

        *(v55 + 16) = v75 + 1;
        v76 = v55 + 16 * v75;
        *(v76 + 32) = v2;
        *(v76 + 40) = v71;
        goto LABEL_31;
      }
    }

    v77 = *(v55 + 16);
    if (v77 >= 2)
    {
      v78 = 0;
      v79 = (v55 + 40);
      v114 = *(v55 + 16);
      while (1)
      {
        if (v78 >= *(v55 + 16))
        {
          goto LABEL_95;
        }

        v80 = v55;
        v81 = *(v79 - 1);
        v33 = *v79;
        v119 = 0x6E6F697473657571;
        v120 = 0xEA00000000005B73;
        v118 = v78;

        v82 = sub_1B8C259E8();
        MEMORY[0x1B8CC9EB0](v82);

        MEMORY[0x1B8CC9EB0](23389, 0xE200000000000000);
        if (v54 > 2)
        {
          switch(v54)
          {
            case 3:
              v2 = 0x657275746165663ALL;
              v84 = 0xEF6E69616D6F645FLL;
              break;
            case 4:
              v2 = 0x6165665F6275733ALL;
              v83 = 1701999988;
              goto LABEL_61;
            case 5:
              v2 = 0xD000000000000012;
              v84 = v106;
              break;
            default:
              goto LABEL_58;
          }
        }

        else
        {
          if (v54)
          {
            if (v54 == 1)
            {
              v84 = 0xE500000000000000;
              v2 = 0x616572613ALL;
              goto LABEL_62;
            }

            if (v54 == 2)
            {
              v2 = 0x706972637365643ALL;
              v83 = 1852795252;
LABEL_61:
              v84 = v83 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              goto LABEL_62;
            }

LABEL_58:
            v2 = v115;
            v84 = v54;
            goto LABEL_62;
          }

          v84 = 0xE600000000000000;
          v2 = 0x656C7469743ALL;
        }

LABEL_62:
        sub_1B8B5FB10(v115, v54);
        MEMORY[0x1B8CC9EB0](v2, v84);

        MEMORY[0x1B8CC9EB0](93, 0xE100000000000000);
        v27 = v119;
        v86 = sub_1B8C23268();
        if (*v85)
        {
          v2 = v85;
          sub_1B8C23228();

          v33 = *v2;
          v87 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v33;
          if ((v87 & 1) == 0)
          {
            v33 = sub_1B8B5D994(0, *(v33 + 2) + 1, 1, v33);
            *v2 = v33;
          }

          v27 = *(v33 + 2);
          v88 = *(v33 + 3);
          if (v27 >= v88 >> 1)
          {
            v33 = sub_1B8B5D994(v88 > 1, v27 + 1, 1, v33);
            *v2 = v33;
          }

          *(v33 + 2) = v27 + 1;
          (*v110)(&v33[v111 + v27 * v112], v117, v113);
        }

        else
        {
        }

        v86(&v119, 0);
        ++v78;
        v79 += 2;
        v55 = v80;
        if (v114 == v78)
        {

          sub_1B8B5E4C4(v115, v54);
          v54 = v100;
          v64 = v101;
          goto LABEL_24;
        }
      }
    }

    v64 = v101;
    if (v77)
    {
      v89 = *(v55 + 32);
      v33 = *(v55 + 40);

      v119 = 0x6E6F697473657571;
      v120 = 0xE90000000000005BLL;
      if (v54 > 2)
      {
        if (v54 == 3)
        {
          v90 = 0x657275746165663ALL;
          v92 = 0xEF6E69616D6F645FLL;
          goto LABEL_85;
        }

        if (v54 != 4)
        {
          if (v54 == 5)
          {
            v90 = 0xD000000000000012;
            v92 = v106;
            goto LABEL_85;
          }

LABEL_81:
          v90 = v115;
          v92 = v54;
          goto LABEL_85;
        }

        v90 = 0x6165665F6275733ALL;
        v91 = 1701999988;
      }

      else
      {
        if (!v54)
        {
          v92 = 0xE600000000000000;
          v90 = 0x656C7469743ALL;
          goto LABEL_85;
        }

        if (v54 == 1)
        {
          v92 = 0xE500000000000000;
          v90 = 0x616572613ALL;
          goto LABEL_85;
        }

        if (v54 != 2)
        {
          goto LABEL_81;
        }

        v90 = 0x706972637365643ALL;
        v91 = 1852795252;
      }

      v92 = v91 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_85:
      v93 = v115;
      sub_1B8B5FB10(v115, v54);
      MEMORY[0x1B8CC9EB0](v90, v92);

      sub_1B8B5E4C4(v93, v54);
      MEMORY[0x1B8CC9EB0](93, 0xE100000000000000);
      v27 = v119;
      v95 = sub_1B8C23268();
      if (!*v94)
      {

        v95(&v119, 0);
        goto LABEL_92;
      }

      v96 = v94;
      sub_1B8C23228();

      v33 = *v96;
      v97 = swift_isUniquelyReferenced_nonNull_native();
      *v96 = v33;
      if ((v97 & 1) == 0)
      {
        v33 = sub_1B8B5D994(0, *(v33 + 2) + 1, 1, v33);
        *v96 = v33;
      }

      v99 = *(v33 + 2);
      v98 = *(v33 + 3);
      if (v99 >= v98 >> 1)
      {
        v33 = sub_1B8B5D994(v98 > 1, v99 + 1, 1, v33);
        *v96 = v33;
      }

      v55 = v103;
      *(v33 + 2) = v99 + 1;
      (*v110)(&v33[v111 + v99 * v112], v107, v113);
      v95(&v119, 0);
      v54 = v100;
      v64 = v101;
    }

    else
    {
      sub_1B8B5E4C4(v115, v54);

LABEL_92:
      v54 = v100;
LABEL_24:
      v55 = v103;
    }
  }

  while (1)
  {
    v66 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_96;
    }

    if (v66 >= v64)
    {
      break;
    }

    v65 = *(v54 + 8 * v66);
    ++v55;
    if (v65)
    {
      v55 = v66;
      goto LABEL_30;
    }
  }

  v49 = v116;
LABEL_13:
  sub_1B8C23288();
  return (*(v108 + 8))(v49, v109);
}

uint64_t FBKFeedbackForm.__allocating_init(url:)(uint64_t a1)
{
  v2 = sub_1B8C23258();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v250 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v250 - v8);
  v10 = sub_1B8C23498();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v250 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  v15 = objc_allocWithZone(MEMORY[0x1E696AF20]);
  v16 = sub_1B8C233E8();
  v17 = [v15 initWithURL:v16 resolvingAgainstBaseURL:1];

  v18 = *(v11 + 8);
  v277 = v10;
  v276 = v11 + 8;
  v275 = v18;
  v18(v14, v10);
  if (!v17)
  {
    goto LABEL_212;
  }

  v274 = v9;
  v278 = a1;
  v279 = v17;
  v19 = [v17 queryItems];
  if (!v19)
  {
    goto LABEL_211;
  }

  v20 = v19;
  v21 = sub_1B8C252C8();

  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = 0x6E6564496D726F66;
    v280 = v3 + 16;
    v25 = (v3 + 8);
    while (1)
    {
      if (v23 >= *(v21 + 16))
      {
        goto LABEL_196;
      }

      (*(v3 + 16))(v7, v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v2);
      if (sub_1B8C23238() == v24 && v26 == 0xEE00726569666974)
      {
        break;
      }

      v27 = v24;
      v28 = sub_1B8C25A08();

      if (v28)
      {
        goto LABEL_12;
      }

      ++v23;
      (*v25)(v7, v2);
      v24 = v27;
      if (v22 == v23)
      {
        goto LABEL_10;
      }
    }

LABEL_12:

    v29 = v274;
    (*(v3 + 32))(v274, v7, v2);
    v30 = sub_1B8C23248();
    v32 = v279;
    if (v31)
    {
      v33 = v30;
      v34 = v31;
      v35 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
      v36 = FBKFeedbackForm.init(identifier:)(v33, v34);
      v37 = v2;
      v38 = v36;

      v275(v278, v277);
      (*v25)(v29, v37);
      return v38;
    }

    (*v25)(v29, v2);
  }

  else
  {
LABEL_10:
  }

  v39 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
  v38 = FBKFeedbackForm.init(identifier:)(0, 0xE000000000000000);
  v40 = sub_1B8C254B8();
  v41 = v40;
  v42 = v40 + 64;
  v43 = 1 << *(v40 + 32);
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  else
  {
    v44 = -1;
  }

  v45 = v44 & *(v40 + 64);
  v272 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  v46 = &v38[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken];
  v47 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds;
  v48 = &v38[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host];
  v49 = &v38[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment];
  v274 = &v38[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId];
  swift_beginAccess();
  v273 = v49;
  swift_beginAccess();
  v271 = v48;
  swift_beginAccess();
  v269 = v47;
  swift_beginAccess();
  v268 = v46;
  swift_beginAccess();
  v50 = 0;
  v51 = (v43 + 63) >> 6;
  v270 = xmmword_1B8C2A740;
  while (1)
  {
LABEL_20:
    if (v45)
    {
      goto LABEL_25;
    }

    do
    {
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
        goto LABEL_209;
      }

      if (v52 >= v51)
      {
        v275(v278, v277);

        return v38;
      }

      v45 = *(v42 + 8 * v52);
      ++v50;
    }

    while (!v45);
    v50 = v52;
LABEL_25:
    v53 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v54 = v53 | (v50 << 6);
    v55 = (*(v41 + 48) + 16 * v54);
    v56 = *v55;
    v57 = v55[1];
    v280 = *(*(v41 + 56) + 8 * v54);
    v58 = v56 == 0x64496D726F66 && v57 == 0xE600000000000000;
    if (!v58 && (sub_1B8C25A08() & 1) == 0)
    {
      break;
    }

    v281 = v280;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      v59 = sub_1B8BFF290(v283, v284);
      v61 = v60;
      swift_unknownObjectRelease();
      v62 = v274;
      *v274 = v59;
      *(v62 + 8) = v61 & 1;
      continue;
    }

LABEL_19:
    swift_unknownObjectRelease();
  }

  v63 = v56 == 0x6D6E6F7269766E65 && v57 == 0xEB00000000746E65;
  if (v63 || (sub_1B8C25A08() & 1) != 0)
  {
    v281 = v280;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      v267 = v41;
      sub_1B8C023B0();
      v64 = sub_1B8C25578();
      v41 = v267;

      swift_unknownObjectRelease();
      v65 = v273;
      *v273 = v64;
      v65[2] = BYTE2(v64) & 1;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v66 = v56 == 1953722216 && v57 == 0xE400000000000000;
  if (v66 || (sub_1B8C25A08() & 1) != 0)
  {
    v281 = v280;
    swift_unknownObjectRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    v67 = v283;
    v68 = v284;
    v69 = &v288;
LABEL_46:
    v70 = *(v69 - 32);
    v71 = v70[1];
    *v70 = v67;
    v70[1] = v68;

    goto LABEL_20;
  }

  if (v56 == 0x6D726F4667756C70 && v57 == 0xEB00000000736449 || (sub_1B8C25A08() & 1) != 0)
  {
    v281 = v280;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      v267 = v41;
      v281 = 44;
      v282 = 0xE100000000000000;
      sub_1B8B34CA8();
      v72 = sub_1B8C25668();

      v73 = 0;
      v266 = *(v72 + 16);
      v74 = v72 + 40;
      v265 = MEMORY[0x1E69E7CC0];
      v264 = v72 + 40;
LABEL_52:
      v75 = (v74 + 16 * v73);
      while (v266 != v73)
      {
        if (v73 >= *(v72 + 16))
        {
          goto LABEL_197;
        }

        ++v73;
        v76 = v38;
        v77 = v75 + 2;
        v79 = *(v75 - 1);
        v78 = *v75;

        v80 = sub_1B8BFF290(v79, v78);
        v75 = v77;
        v38 = v76;
        if ((v81 & 1) == 0)
        {
          v263 = v80;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v265 = sub_1B8B5DBC0(0, *(v265 + 2) + 1, 1, v265);
          }

          v83 = *(v265 + 2);
          v82 = *(v265 + 3);
          v84 = v263;
          if (v83 >= v82 >> 1)
          {
            v265 = sub_1B8B5DBC0((v82 > 1), v83 + 1, 1, v265);
            v84 = v263;
          }

          v85 = v265;
          *(v265 + 2) = v83 + 1;
          *&v85[8 * v83 + 32] = v84;
          v74 = v264;
          goto LABEL_52;
        }
      }

      swift_unknownObjectRelease();

      v86 = *&v38[v269];
      *&v38[v269] = v265;

      v41 = v267;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v56 == 0x6E656B6F54707061 && v57 == 0xE800000000000000 || (sub_1B8C25A08() & 1) != 0)
  {
    v281 = v280;
    swift_unknownObjectRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    v67 = v283;
    v68 = v284;
    v69 = &v287;
    goto LABEL_46;
  }

  if (v56 == 0x6E6F697473657571 && v57 == 0xE900000000000073 || (sub_1B8C25A08() & 1) != 0)
  {
    v283 = v280;
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86A0, &qword_1B8C2F690);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v87 = 0;
    v88 = v281;
    v89 = *(v281 + 64);
    v255 = v281 + 64;
    v90 = 1 << *(v281 + 32);
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    else
    {
      v91 = -1;
    }

    v92 = v91 & v89;
    v93 = (v90 + 63) >> 6;
    v257 = v281;
    v256 = v93;
    do
    {
LABEL_76:
      if (v92)
      {
        goto LABEL_81;
      }

      do
      {
        v94 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_200;
        }

        if (v94 >= v93)
        {

          goto LABEL_19;
        }

        v92 = *(v255 + 8 * v94);
        ++v87;
      }

      while (!v92);
      v87 = v94;
LABEL_81:
      v95 = __clz(__rbit64(v92));
      v92 &= v92 - 1;
      v96 = v95 | (v87 << 6);
      v97 = *(*(v88 + 56) + 8 * v96);
      v262 = *(v97 + 2);
    }

    while (!v262);
    v258 = v92;
    v259 = v87;
    v98 = *(v88 + 48) + 16 * v96;
    v99 = *(v98 + 8);
    v265 = *v98;
    i = (v97 + 32);
    v266 = v99;

    swift_beginAccess();
    v100 = 0;
    v260 = v97;
    while (2)
    {
      if (v100 >= *(v97 + 2))
      {
        goto LABEL_198;
      }

      v264 = v100;
      v103 = (i + 16 * v100);
      v105 = *v103;
      v104 = v103[1];
      v106 = *&v38[v272];
      v107 = *(v106 + 16);

      if (v107)
      {

        v108 = sub_1B8B5E354(v265, v266);
        if (v109)
        {
          v110 = *(*(v106 + 56) + 8 * v108);

          v111 = v110;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_1B8B5D1AC(0, *(v110 + 16) + 1, 1, v110);
          }

          v112 = v111;
          v114 = *(v111 + 2);
          v113 = *(v111 + 3);
          if (v114 >= v113 >> 1)
          {
            v112 = sub_1B8B5D1AC((v113 > 1), v114 + 1, 1, v111);
          }

          *(v112 + 2) = v114 + 1;
          v263 = v112;
          v115 = &v112[16 * v114];
          *(v115 + 4) = v105;
          *(v115 + 5) = v104;
          v116 = v272;
          swift_beginAccess();
          v117 = *&v38[v116];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v281 = *&v38[v116];
          v119 = v281;
          *&v38[v116] = 0x8000000000000000;
          v120 = sub_1B8B5E354(v265, v266);
          v122 = *(v119 + 16);
          v123 = (v121 & 1) == 0;
          v124 = __OFADD__(v122, v123);
          v125 = v122 + v123;
          if (v124)
          {
            goto LABEL_202;
          }

          v126 = v121;
          if (*(v119 + 24) >= v125)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v127 = v119;
              goto LABEL_108;
            }

            v254 = v42;
            v253 = v51;
            v267 = v41;
            v252 = v38;
            v251 = v120;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6608, &qword_1B8C2BC60);
            v164 = sub_1B8C258C8();
            v127 = v164;
            if (*(v119 + 16))
            {
              v165 = (v164 + 64);
              v166 = v119 + 64;
              v167 = ((1 << *(v127 + 32)) + 63) >> 6;
              if (v127 != v119 || v165 >= v166 + 8 * v167)
              {
                memmove(v165, (v119 + 64), 8 * v167);
              }

              v168 = 0;
              *(v127 + 16) = *(v119 + 16);
              v169 = 1 << *(v119 + 32);
              v170 = *(v119 + 64);
              if (v169 < 64)
              {
                v171 = ~(-1 << v169);
              }

              else
              {
                v171 = -1;
              }

              v172 = v171 & v170;
              v173 = (v169 + 63) >> 6;
              if ((v171 & v170) != 0)
              {
                do
                {
                  v174 = __clz(__rbit64(v172));
                  v172 &= v172 - 1;
LABEL_142:
                  v177 = v174 | (v168 << 6);
                  v178 = *(*(v119 + 56) + 8 * v177);
                  v179 = *(*(v119 + 48) + 16 * v177);
                  *(*(v127 + 48) + 16 * v177) = v179;
                  *(*(v127 + 56) + 8 * v177) = v178;
                  sub_1B8B5FB10(v179, *(&v179 + 1));
                }

                while (v172);
              }

              v175 = v168;
              while (1)
              {
                v168 = v175 + 1;
                if (__OFADD__(v175, 1))
                {
                  goto LABEL_210;
                }

                if (v168 >= v173)
                {
                  break;
                }

                v176 = *(v166 + 8 * v168);
                ++v175;
                if (v176)
                {
                  v174 = __clz(__rbit64(v176));
                  v172 = (v176 - 1) & v176;
                  goto LABEL_142;
                }
              }
            }

            v120 = v251;
            v38 = v252;
            v41 = v267;
            v51 = v253;
            v42 = v254;
            if ((v126 & 1) == 0)
            {
              goto LABEL_145;
            }

LABEL_109:
            v146 = *(v127 + 56);
            v147 = *(v146 + 8 * v120);
            *(v146 + 8 * v120) = v263;
          }

          else
          {
            sub_1B8B93050(v125, isUniquelyReferenced_nonNull_native);
            v127 = v281;
            v120 = sub_1B8B5E354(v265, v266);
            if ((v126 & 1) != (v128 & 1))
            {
              goto LABEL_213;
            }

LABEL_108:
            if (v126)
            {
              goto LABEL_109;
            }

LABEL_145:
            *(v127 + 8 * (v120 >> 6) + 64) |= 1 << v120;
            v180 = (*(v127 + 48) + 16 * v120);
            v181 = v266;
            *v180 = v265;
            v180[1] = v181;
            *(*(v127 + 56) + 8 * v120) = v263;
            v182 = *(v127 + 16);
            v124 = __OFADD__(v182, 1);
            v183 = v182 + 1;
            if (v124)
            {
              goto LABEL_203;
            }

            *(v127 + 16) = v183;
          }

LABEL_84:
          *&v38[v272] = v127;
          swift_endAccess();
          v100 = v264 + 1;
          v97 = v260;
          if ((v264 + 1) == v262)
          {

            v88 = v257;
            v87 = v259;
            v93 = v256;
            v92 = v258;
            goto LABEL_76;
          }

          continue;
        }
      }

      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
    v129 = swift_allocObject();
    *(v129 + 16) = v270;
    *(v129 + 32) = v105;
    *(v129 + 40) = v104;
    v263 = v129;
    v130 = v272;
    swift_beginAccess();
    v131 = *&v38[v130];
    v132 = swift_isUniquelyReferenced_nonNull_native();
    v281 = *&v38[v130];
    v133 = v281;
    *&v38[v130] = 0x8000000000000000;
    v135 = sub_1B8B5E354(v265, v266);
    v136 = *(v133 + 16);
    v137 = (v134 & 1) == 0;
    v138 = v136 + v137;
    if (__OFADD__(v136, v137))
    {
      goto LABEL_199;
    }

    if (*(v133 + 24) >= v138)
    {
      if (v132)
      {
        v127 = v133;
        v140 = v266;
        if ((v134 & 1) == 0)
        {
LABEL_104:
          *(v127 + 8 * (v135 >> 6) + 64) |= 1 << v135;
          v143 = (*(v127 + 48) + 16 * v135);
          *v143 = v265;
          v143[1] = v140;
          *(*(v127 + 56) + 8 * v135) = v263;
          v144 = *(v127 + 16);
          v124 = __OFADD__(v144, 1);
          v145 = v144 + 1;
          if (v124)
          {
            goto LABEL_201;
          }

          *(v127 + 16) = v145;
          goto LABEL_84;
        }
      }

      else
      {
        LODWORD(v251) = v134;
        v254 = v42;
        v253 = v51;
        v267 = v41;
        v252 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6608, &qword_1B8C2BC60);
        v148 = sub_1B8C258C8();
        v127 = v148;
        if (*(v133 + 16))
        {
          v149 = (v148 + 64);
          v150 = v133 + 64;
          v151 = ((1 << *(v127 + 32)) + 63) >> 6;
          if (v127 != v133 || v149 >= v150 + 8 * v151)
          {
            memmove(v149, (v133 + 64), 8 * v151);
          }

          v152 = 0;
          *(v127 + 16) = *(v133 + 16);
          v153 = 1 << *(v133 + 32);
          v154 = *(v133 + 64);
          if (v153 < 64)
          {
            v155 = ~(-1 << v153);
          }

          else
          {
            v155 = -1;
          }

          v156 = v155 & v154;
          v157 = (v153 + 63) >> 6;
          if ((v155 & v154) != 0)
          {
            do
            {
              v158 = __clz(__rbit64(v156));
              v156 &= v156 - 1;
LABEL_124:
              v161 = v158 | (v152 << 6);
              v162 = *(*(v133 + 56) + 8 * v161);
              v163 = *(*(v133 + 48) + 16 * v161);
              *(*(v127 + 48) + 16 * v161) = v163;
              *(*(v127 + 56) + 8 * v161) = v162;
              sub_1B8B5FB10(v163, *(&v163 + 1));
            }

            while (v156);
          }

          v159 = v152;
          while (1)
          {
            v152 = v159 + 1;
            if (__OFADD__(v159, 1))
            {
              goto LABEL_208;
            }

            if (v152 >= v157)
            {
              break;
            }

            v160 = *(v150 + 8 * v152);
            ++v159;
            if (v160)
            {
              v158 = __clz(__rbit64(v160));
              v156 = (v160 - 1) & v160;
              goto LABEL_124;
            }
          }
        }

        v38 = v252;
        v41 = v267;
        v51 = v253;
        v42 = v254;
        v140 = v266;
        if ((v251 & 1) == 0)
        {
          goto LABEL_104;
        }
      }
    }

    else
    {
      v139 = v134;
      sub_1B8B93050(v138, v132);
      v127 = v281;
      v140 = v266;
      v141 = sub_1B8B5E354(v265, v266);
      if ((v139 & 1) != (v142 & 1))
      {
        goto LABEL_213;
      }

      v135 = v141;
      if ((v139 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

    v101 = *(v127 + 56);
    v102 = *(v101 + 8 * v135);
    *(v101 + 8 * v135) = v263;

    goto LABEL_84;
  }

  if ((v56 != 0x6E6F697473657571 || v57 != 0xE800000000000000) && (sub_1B8C25A08() & 1) == 0)
  {
    goto LABEL_20;
  }

  v283 = v280;
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8698, &qword_1B8C2F688);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v184 = *(v281 + 64);
  v264 = v281 + 64;
  v263 = v281;
  v185 = 1 << *(v281 + 32);
  if (v185 < 64)
  {
    v186 = ~(-1 << v185);
  }

  else
  {
    v186 = -1;
  }

  v187 = v186 & v184;
  swift_beginAccess();
  v188 = 0;
  v189 = (v185 + 63) >> 6;
  for (i = v189; ; v189 = i)
  {
    if (v187)
    {
      goto LABEL_165;
    }

    do
    {
      v193 = v188 + 1;
      if (__OFADD__(v188, 1))
      {
        goto LABEL_204;
      }

      if (v193 >= v189)
      {

        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      v187 = *(v264 + 8 * v193);
      ++v188;
    }

    while (!v187);
    v188 = v193;
LABEL_165:
    v194 = __clz(__rbit64(v187));
    v187 &= v187 - 1;
    v195 = (v188 << 10) | (16 * v194);
    v196 = (*(v263 + 48) + v195);
    v198 = *v196;
    v197 = v196[1];
    v199 = *(v263 + 56) + v195;
    v200 = *(v199 + 8);
    v265 = *v199;
    v283 = v198;
    v284 = v197;

    v267 = sub_1B8C25278();
    v266 = v201;
    v202 = *&v38[v272];
    if (!*(v202 + 16))
    {
      goto LABEL_176;
    }

    v203 = *&v38[v272];

    v204 = sub_1B8B5E354(v267, v266);
    if ((v205 & 1) == 0)
    {
      break;
    }

    v262 = v200;
    v206 = *(*(v202 + 56) + 8 * v204);

    v207 = v206;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v207 = sub_1B8B5D1AC(0, *(v206 + 16) + 1, 1, v206);
    }

    v208 = v207;
    v209 = *(v207 + 2);
    v210 = *(v208 + 3);
    v211 = v209 + 1;
    v212 = v262;
    if (v209 >= v210 >> 1)
    {
      v260 = (v209 + 1);
      v246 = sub_1B8B5D1AC((v210 > 1), v209 + 1, 1, v208);
      v211 = v260;
      v208 = v246;
    }

    *(v208 + 2) = v211;
    v260 = v208;
    v213 = &v208[16 * v209];
    *(v213 + 4) = v265;
    *(v213 + 5) = v212;
    v214 = v272;
    swift_beginAccess();
    v215 = *&v38[v214];
    LODWORD(v265) = swift_isUniquelyReferenced_nonNull_native();
    v281 = *&v38[v214];
    v216 = v281;
    *&v38[v214] = 0x8000000000000000;
    v217 = v266;
    v218 = sub_1B8B5E354(v267, v266);
    v220 = *(v216 + 16);
    v221 = (v219 & 1) == 0;
    v124 = __OFADD__(v220, v221);
    v222 = v220 + v221;
    if (v124)
    {
      goto LABEL_207;
    }

    if (*(v216 + 24) >= v222)
    {
      if ((v265 & 1) == 0)
      {
        v265 = v218;
        v247 = v219;
        sub_1B8B94514();
        LOBYTE(v219) = v247;
        v218 = v265;
      }
    }

    else
    {
      LODWORD(v262) = v219;
      sub_1B8B93050(v222, v265);
      v218 = sub_1B8B5E354(v267, v217);
      v223 = v219 & 1;
      LOBYTE(v219) = v262;
      if ((v262 & 1) != v223)
      {
        goto LABEL_213;
      }
    }

    v240 = v267;
    v235 = v281;
    if ((v219 & 1) == 0)
    {
      *(v281 + 8 * (v218 >> 6) + 64) |= 1 << v218;
      v242 = (v235[6] + 16 * v218);
      v243 = v266;
      *v242 = v240;
      v242[1] = v243;
      *(v235[7] + 8 * v218) = v260;
      v244 = v235[2];
      v124 = __OFADD__(v244, 1);
      v239 = v244 + 1;
      if (!v124)
      {
LABEL_191:
        v235[2] = v239;
        goto LABEL_159;
      }

LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:

LABEL_212:
      v289 = 0;
      v290 = 0xE000000000000000;
      sub_1B8C257E8();

      v289 = 0xD000000000000026;
      v290 = 0x80000001B8C369E0;
      sub_1B8C02358();
      v249 = sub_1B8C259E8();
      MEMORY[0x1B8CC9EB0](v249);

      sub_1B8C258A8();
      __break(1u);
      goto LABEL_213;
    }

    v190 = *(v281 + 56);
    v241 = *(v190 + 8 * v218);
    v192 = &v285;
LABEL_158:
    *(v190 + 8 * v218) = *(v192 - 32);

LABEL_159:
    *&v38[v272] = v235;
    swift_endAccess();
  }

LABEL_176:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
  v224 = swift_allocObject();
  *(v224 + 16) = v270;
  *(v224 + 32) = v265;
  *(v224 + 40) = v200;
  v265 = v224;
  v225 = v272;
  swift_beginAccess();
  v226 = *&v38[v225];
  LODWORD(v262) = swift_isUniquelyReferenced_nonNull_native();
  v281 = *&v38[v225];
  v227 = v281;
  *&v38[v225] = 0x8000000000000000;
  v228 = v266;
  v218 = sub_1B8B5E354(v267, v266);
  v230 = *(v227 + 16);
  v231 = (v229 & 1) == 0;
  v124 = __OFADD__(v230, v231);
  v232 = v230 + v231;
  if (v124)
  {
    goto LABEL_205;
  }

  if (*(v227 + 24) >= v232)
  {
    if ((v262 & 1) == 0)
    {
      v262 = v218;
      v245 = v229;
      sub_1B8B94514();
      LOBYTE(v229) = v245;
      v218 = v262;
    }

LABEL_182:
    v234 = v267;
    v235 = v281;
    if (v229)
    {
      v190 = *(v281 + 56);
      v191 = *(v190 + 8 * v218);
      v192 = &v286;
      goto LABEL_158;
    }

    *(v281 + 8 * (v218 >> 6) + 64) |= 1 << v218;
    v236 = (v235[6] + 16 * v218);
    v237 = v266;
    *v236 = v234;
    v236[1] = v237;
    *(v235[7] + 8 * v218) = v265;
    v238 = v235[2];
    v124 = __OFADD__(v238, 1);
    v239 = v238 + 1;
    if (!v124)
    {
      goto LABEL_191;
    }

    goto LABEL_206;
  }

  LODWORD(v260) = v229;
  sub_1B8B93050(v232, v262);
  v218 = sub_1B8B5E354(v267, v228);
  v233 = v229 & 1;
  LOBYTE(v229) = v260;
  if ((v260 & 1) == v233)
  {
    goto LABEL_182;
  }

LABEL_213:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}