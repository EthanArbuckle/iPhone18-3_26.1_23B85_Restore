Swift::Void __swiftcall FBKFeedbackDraftViewController.feedbackRestartDidFail(error:)(NSNumber error)
{
  v2 = sub_1B8C24FD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B8C25008();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v11 = sub_1B8C23C38();
  __swift_project_value_buffer(v11, qword_1EBAA7A60);
  v12 = sub_1B8C23C18();
  v13 = sub_1B8C25468();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v2;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1B8B5DD48(0xD00000000000001ELL, 0x80000001B8C34F70, aBlock);
    _os_log_impl(&dword_1B8B22000, v12, v13, "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v2 = v24;
    MEMORY[0x1B8CCB0E0](v16, -1, -1);
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v17 = sub_1B8C25538();
  v18 = swift_allocObject();
  v19 = v26;
  v18[2].super.super.isa = v26;
  v18[3].super.super.isa = error.super.super.isa;
  aBlock[4] = sub_1B8BB6C2C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_24;
  v20 = _Block_copy(aBlock);
  v21 = v19;
  v22 = error.super.super.isa;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v10, v6, v20);
  _Block_release(v20);

  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v25);
}

Swift::Void __swiftcall FBKFeedbackDraftViewController.didBeginHosting()()
{
  v1 = v0;
  v52 = type metadata accessor for URLError();
  v2 = *(v52 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v52);
  v56 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - v6;
  v8 = sub_1B8BB192C();
  if (v8)
  {
    v9 = v8;
    v10 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
    swift_beginAccess();
    v11 = *&v0[v10];
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v12 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
    swift_beginAccess();
    v13 = *&v11[v12];
    v14 = v11;

    v16 = sub_1B8B869B0(v15, aBlock);

    v17 = *&v14[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments];
    *&v14[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments] = v16;

    v18 = *(aBlock[0] + 16);
    if (v18)
    {
      v50 = v10;
      v51 = v9;
      v19 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_delegate;
      v20 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v49 = aBlock[0];
      v21 = aBlock[0] + v20;
      swift_beginAccess();
      v55 = *(v2 + 72);
      *&v22 = 136315138;
      v53 = v22;
      v23 = v56;
      v54 = v7;
      while (1)
      {
        sub_1B8B9628C(v21, v7);
        if (qword_1EBAA5918 != -1)
        {
          swift_once();
        }

        v26 = sub_1B8C23C38();
        __swift_project_value_buffer(v26, qword_1EBAA7A60);
        sub_1B8B9628C(v7, v23);
        v27 = sub_1B8C23C18();
        v28 = sub_1B8C25498();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = v19;
          v31 = v1;
          v32 = swift_slowAlloc();
          aBlock[0] = v32;
          *v29 = v53;
          v33 = URLError.description.getter();
          v35 = v34;
          sub_1B8B962F0(v56);
          v36 = sub_1B8B5DD48(v33, v35, aBlock);
          v23 = v56;

          *(v29 + 4) = v36;
          _os_log_impl(&dword_1B8B22000, v27, v28, "Error generating sandbox extensions %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          v37 = v32;
          v1 = v31;
          v19 = v30;
          v7 = v54;
          MEMORY[0x1B8CCB0E0](v37, -1, -1);
          MEMORY[0x1B8CCB0E0](v29, -1, -1);
        }

        else
        {

          sub_1B8B962F0(v23);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v39 = Strong;
          if (([Strong respondsToSelector_] & 1) == 0)
          {
            sub_1B8B962F0(v7);
            swift_unknownObjectRelease();
            goto LABEL_6;
          }

          v24 = *&v7[*(v52 + 20)];
          v25 = sub_1B8C233E8();
          [v39 feedbackDraftViewController:v1 didFailToAttachURL:v25 error:v24];

          swift_unknownObjectRelease();
        }

        sub_1B8B962F0(v7);
LABEL_6:
        v21 += v55;
        if (!--v18)
        {

          v9 = v51;
          v10 = v50;
          goto LABEL_24;
        }
      }
    }

LABEL_24:
    v44 = *&v1[v10];
    v45 = swift_allocObject();
    *(v45 + 16) = v9;
    *(v45 + 24) = v1;
    aBlock[4] = sub_1B8BB6C6C;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8BB57A8;
    aBlock[3] = &block_descriptor_30;
    v46 = _Block_copy(aBlock);
    v47 = v44;
    swift_unknownObjectRetain();
    v48 = v1;

    [v9 setFeedbackForm:v47 reply:v46];
    _Block_release(v46);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EBAA5918 != -1)
    {
      swift_once();
    }

    v40 = sub_1B8C23C38();
    __swift_project_value_buffer(v40, qword_1EBAA7A60);
    v56 = sub_1B8C23C18();
    v41 = sub_1B8C25478();
    if (os_log_type_enabled(v56, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1B8B22000, v56, v41, "Failed to start feedback form, proxy object is nil.", v42, 2u);
      MEMORY[0x1B8CCB0E0](v42, -1, -1);
    }

    v43 = v56;
  }
}

void sub_1B8BB4BC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 feedbackDraftViewController:v1 didFailToStartWithError:7];
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall FBKFeedbackDraftViewController.didFailToHost()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong feedbackDraftViewController:v0 didFailToStartWithError:7];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1B8BB4D94(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1B8C24FD8();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B8C25008();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v14 = sub_1B8C25538();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_1B8BB74E4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_113;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  swift_unknownObjectRetain();
  v18 = a3;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v13, v9, v16);
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_1B8BB5044(void *a1, unsigned __int8 *a2, void *a3)
{
  v6 = sub_1B8C24FD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B8C25008();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage;
  swift_beginAccess();
  [a1 setShowsCompletionPage_];
  if (a3)
  {
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v17 = a3;
    v18 = sub_1B8C25538();
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = v17;
    v39 = sub_1B8BB74F8;
    v40 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1B8B8B9F4;
    v38 = &block_descriptor_123;
    v20 = _Block_copy(&aBlock);
    v34 = v12;
    v21 = v7;
    v22 = v11;
    v23 = v20;
    v24 = v17;
    v25 = a2;

    sub_1B8C24FF8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B8B6220C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v15, v10, v23);
    v26 = v23;
    v11 = v22;
    v7 = v21;
    v12 = v34;
    _Block_release(v26);
  }

  else
  {
    if (qword_1EBAA5918 != -1)
    {
      swift_once();
    }

    v27 = sub_1B8C23C38();
    __swift_project_value_buffer(v27, qword_1EBAA7A60);
    v28 = sub_1B8C23C18();
    v29 = sub_1B8C25498();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1B8B22000, v28, v29, "Feedback form was set, and draft start successful.", v30, 2u);
      MEMORY[0x1B8CCB0E0](v30, -1, -1);
    }

    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v18 = sub_1B8C25538();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = sub_1B8BB74F0;
    v40 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1B8B8B9F4;
    v38 = &block_descriptor_117;
    v32 = _Block_copy(&aBlock);

    sub_1B8C24FF8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B8B6220C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v15, v10, v32);
    _Block_release(v32);
  }

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

void sub_1B8BB5528(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  v13[4] = a4;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B8B8B9F4;
  v13[3] = a5;
  v11 = _Block_copy(v13);
  v12 = a2;

  [a1 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
}

void sub_1B8BB5624(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1B8B8B4E4([a2 integerValue]);
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7;
      }

      [v6 feedbackDraftViewController:v4 didFailToStartWithError:v9];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1B8BB56EC()
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
      v3 = v2;
      if ([v2 respondsToSelector_])
      {
        [v3 feedbackDraftViewControllerDidLoadForm_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1B8BB57A8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1B8BB5814(void *a1)
{
  v2 = OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController;
  if (*(v1 + OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController))
  {
    return;
  }

  v3 = [a1 extensions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7BB8, &qword_1B8C2D468);
  v4 = sub_1B8C252C8();

  v23 = v2;
  v24 = v1;
  if (v4 >> 62)
  {
LABEL_23:
    v5 = sub_1B8C258B8();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_24:

    if (qword_1EBAA5918 != -1)
    {
      swift_once();
    }

    v17 = sub_1B8C23C38();
    __swift_project_value_buffer(v17, qword_1EBAA7A60);
    v18 = sub_1B8C23C18();
    v19 = sub_1B8C25478();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B8B22000, v18, v19, "Failed to find drafting extension.", v20, 2u);
      MEMORY[0x1B8CCB0E0](v20, -1, -1);
    }

    v21 = *(v24 + v23);
    *(v24 + v23) = 0;

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_4:
  v6 = 0;
  v7 = *MEMORY[0x1E699C100];
  while ((v4 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8CCA4C0](v6, v4);
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_17;
    }

LABEL_8:
    v10 = [v8 bundleIdentifier];
    v11 = sub_1B8C25128();
    v13 = v12;

    if (v11 == sub_1B8C25128() && v13 == v14)
    {
      goto LABEL_18;
    }

    v16 = sub_1B8C25A08();

    if (v16)
    {
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
    ++v6;
    if (v9 == v5)
    {
      goto LABEL_24;
    }
  }

  if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = *(v4 + 8 * v6 + 32);
  swift_unknownObjectRetain();
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_8;
  }

LABEL_17:
  __break(1u);
LABEL_18:

LABEL_19:

  sub_1B8BB5BA4(v8);
  [a1 suspend];

  swift_unknownObjectRelease();
}

uint64_t sub_1B8BB5BA4(uint64_t a1)
{
  v3 = sub_1B8C24FD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B8C25008();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v12 = sub_1B8C25538();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1B8BB6F20;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_79;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  swift_unknownObjectRetain();

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v11, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v18);
}

void sub_1B8BB5E44(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = [objc_allocWithZone(MEMORY[0x1E6966D58]) init];
  [v6 setExtension_];
  v35 = [objc_allocWithZone(MEMORY[0x1E6966D50]) initWithConfiguration_];
  [v35 setDelegate_];
  v7 = [v35 view];
  if (!v7)
  {

    v34 = v35;
    goto LABEL_11;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = v5;
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  [v10 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA85B0, &unk_1B8C2BBE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B8C2D390;
  v13 = [v9 view];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v8 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v12 + 32) = v17;
  v18 = [v9 view];
  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v18;
  v20 = [v18 trailingAnchor];

  v21 = [v8 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v12 + 40) = v22;
  v23 = [v9 view];
  if (!v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v8 topAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v12 + 48) = v27;
  v28 = [v9 view];

  if (!v28)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v29 = objc_opt_self();
  v30 = [v28 bottomAnchor];

  v31 = [v8 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v12 + 56) = v32;
  sub_1B8B46130(0, &qword_1EBAA7BB0, 0x1E696ACD8);
  v33 = sub_1B8C252B8();

  [v29 activateConstraints_];

  [v9 addChildViewController_];
  v34 = *(a1 + OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController);
  *(a1 + OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController) = v35;
LABEL_11:
}

id sub_1B8BB62B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B8BB6354()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_hostViewController] = 0;
  swift_unknownObjectWeakAssign();
  v1 = type metadata accessor for FBK_EXHostViewControllerDelegateWrapper();
  v2 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v2;
  v5.super_class = v1;
  *&v0[OBJC_IVAR____TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper_extensionKitHostViewControllerDelegate] = objc_msgSendSuper2(&v5, sel_init);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FBK_EXQueryObserverDelegateWrapper();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B8BB6444()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_extensionKitQueryDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection) = 0;
  *(v0 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage) = 1;
  sub_1B8C258A8();
  __break(1u);
}

uint64_t _s8Feedback30FBKFeedbackDraftViewControllerC010didRequestD9Dismissal5savedySb_tF_0()
{
  v1 = v0;
  v2 = sub_1B8C24FD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8C25008();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v12 = sub_1B8C23C38();
  __swift_project_value_buffer(v12, qword_1EBAA7A60);
  v13 = sub_1B8C23C18();
  v14 = sub_1B8C25468();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v8;
    aBlock[0] = v16;
    v17 = v3;
    v18 = v1;
    v19 = v7;
    v20 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1B8B5DD48(0xD00000000000001FLL, 0x80000001B8C352D0, aBlock);
    _os_log_impl(&dword_1B8B22000, v13, v14, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v21 = v20;
    v7 = v19;
    v1 = v18;
    v3 = v17;
    v8 = v28;
    MEMORY[0x1B8CCB0E0](v21, -1, -1);
    MEMORY[0x1B8CCB0E0](v15, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v22 = sub_1B8C25538();
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  aBlock[4] = sub_1B8BB75B0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_157;
  v24 = _Block_copy(aBlock);
  v25 = v1;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v11, v6, v24);
  _Block_release(v24);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void _s8Feedback30FBKFeedbackDraftViewControllerC22draftDirtyStateUpdatedyySbF_0()
{
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EBAA7A60);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25468();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1B8B5DD48(0xD00000000000001ALL, 0x80000001B8C352B0, &v5);
    _os_log_impl(&dword_1B8B22000, oslog, v1, "%s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B8CCB0E0](v3, -1, -1);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

void _s8Feedback30FBKFeedbackDraftViewControllerC26feedbackDidBeginSubmissionyyF_0()
{
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EBAA7A60);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25468();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1B8B5DD48(0xD00000000000001CLL, 0x80000001B8C35290, &v5);
    _os_log_impl(&dword_1B8B22000, oslog, v1, "%s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B8CCB0E0](v3, -1, -1);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

void sub_1B8BB6B9C()
{
  v1 = *(sub_1B8C23498() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1B8BB3F04(v3, v0 + v2, v4);
}

void sub_1B8BB6F28()
{
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EBAA7A60);
  v1 = sub_1B8C23C18();
  v2 = sub_1B8C25498();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B8B22000, v1, v2, "hostViewController didBegingHosting", v3, 2u);
    MEMORY[0x1B8CCB0E0](v3, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    FBKFeedbackDraftViewController.didBeginHosting()();
  }
}

void sub_1B8BB7054(void *a1)
{
  v2 = v1;
  v4 = sub_1B8C24FD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8C25008();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5918 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8C23C38();
  __swift_project_value_buffer(v13, qword_1EBAA7A60);
  v14 = a1;
  v15 = sub_1B8C23C18();
  v16 = sub_1B8C25478();

  if (os_log_type_enabled(v15, v16))
  {
    v27 = v1;
    v28 = v5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v19 = sub_1B8C25A68();
      v21 = v20;
    }

    else
    {
      v21 = 0xE600000000000000;
      v19 = 0x296C6C756E28;
    }

    v22 = sub_1B8B5DD48(v19, v21, aBlock);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1B8B22000, v15, v16, "Failed to host view controller: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1B8CCB0E0](v18, -1, -1);
    MEMORY[0x1B8CCB0E0](v17, -1, -1);

    v2 = v27;
    v5 = v28;
    if (a1)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (a1)
    {
LABEL_10:
      sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
      v23 = sub_1B8C25538();
      v24 = swift_allocObject();
      *(v24 + 16) = v2;
      aBlock[4] = sub_1B8BB744C;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B8B8B9F4;
      aBlock[3] = &block_descriptor_85;
      v25 = _Block_copy(aBlock);
      v26 = v2;

      sub_1B8C24FF8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B8B6220C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
      sub_1B8B62264();
      sub_1B8C256D8();
      MEMORY[0x1B8CCA210](0, v12, v8, v25);
      _Block_release(v25);

      (*(v5 + 8))(v8, v4);
      (*(v29 + 8))(v12, v30);
    }
  }
}

uint64_t objectdestroy_26Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1B8BB769C(uint64_t a1)
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

uint64_t sub_1B8BB7820(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x206E776F6E6B6E55;
      }

      if (a1 == 1)
      {
        return 0xD000000000000013;
      }

LABEL_20:
      result = sub_1B8C25A28();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000022;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0x6E61432072657355;
        case 7:
          return 0xD000000000000018;
        case 8:
          return 0xD000000000000020;
      }

      goto LABEL_20;
    }

    if (a1 == 4)
    {
      return 0x2064696C61766E49;
    }

    else
    {
      return 0x6F7774656E206F4ELL;
    }
  }
}

void sub_1B8BB79D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1B8BB7A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_1B8BB7AAC()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA7BE0);
  __swift_project_value_buffer(v0, qword_1EBAA7BE0);
  return sub_1B8C23C28();
}

uint64_t sub_1B8BB7B2C(void *a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  v4 = sub_1B8C23608();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + 32) = sub_1B8C235F8();
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  swift_unknownObjectWeakInit();
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 16) = a1;
  v7 = a1;
  if (MEMORY[0x1B8CCA870]())
  {
    v8 = &v7[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment];
    swift_beginAccess();
    if ((v8[2] & 1) == 0)
    {
      v9 = *v8;
      v10 = &v7[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host];
      swift_beginAccess();
      if (*(v10 + 1))
      {
        v11 = *v10;
        sub_1B8B46130(0, &qword_1EBAA8840, 0x1E699C158);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v13 = sub_1B8C250F8();

        [ObjCClassFromMetadata overrideEnvironment:v9 host:v13];
      }
    }
  }

  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 loginManager];

  if (v15)
  {

    [v15 setReAuthHandler_];
  }

  return v2;
}

uint64_t sub_1B8BB7CEC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EBAA5920 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8C23C38();
  __swift_project_value_buffer(v8, qword_1EBAA7BE0);
  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25498();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1B8B5DD48(0xD000000000000029, 0x80000001B8C35430, &v21);
    _os_log_impl(&dword_1B8B22000, v9, v10, "%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  v13 = *(v4 + 80);
  v14 = *(v4 + 88);
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;

  sub_1B8B30A44(v13);
  swift_unknownObjectWeakAssign();
  v15 = objc_opt_self();
  v16 = [v15 standardUserDefaults];
  v17 = sub_1B8BD93C0();

  v18 = [v15 standardUserDefaults];
  LOBYTE(v16) = sub_1B8BD94E4();

  v19 = swift_allocObject();
  swift_weakInit();
  sub_1B8BBD468(a1, v17 & 1, v16 & 1, v4, v19);
}

uint64_t sub_1B8BB7F14(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B8BB7F88(a1, a2 & 1);
  }

  return result;
}

void sub_1B8BB7F88(uint64_t a1, char a2)
{
  v3 = v2;
  v80 = sub_1B8C24FD8();
  v6 = *(v80 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8C25008();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AgreementConsentView();
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  if ((a2 & 1) == 0)
  {
    v60 = v3[10];
    if (!v60)
    {
      return;
    }

    v61 = v3[11];

    v60(a1, 1);
    v62 = v60;
    goto LABEL_22;
  }

  v76 = v19;
  v77 = (&v70 - v18);
  v78 = v11;
  v20 = objc_opt_self();
  v21 = [v20 sharedInstance];
  v22 = [v21 currentUser];

  if (!v22)
  {
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v63 = sub_1B8C23C38();
    __swift_project_value_buffer(v63, qword_1EBAA7BE0);
    v64 = sub_1B8C23C18();
    v65 = sub_1B8C25478();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1B8B22000, v64, v65, "Failed to authenticate. No user", v66, 2u);
      MEMORY[0x1B8CCB0E0](v66, -1, -1);
    }

    v67 = v3[10];
    if (!v67)
    {
      return;
    }

    v68 = v3[11];

    v67(0, 1);
    v62 = v67;
LABEL_22:

    sub_1B8B30A44(v62);
    return;
  }

  v72 = v10;
  v73 = v6;
  if (qword_1EBAA5920 != -1)
  {
    swift_once();
  }

  v23 = sub_1B8C23C38();
  __swift_project_value_buffer(v23, qword_1EBAA7BE0);
  v24 = v22;
  v25 = sub_1B8C23C18();
  v26 = sub_1B8C25498();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v74 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v27;
    v29 = swift_slowAlloc();
    v75 = v9;
    v30 = v29;
    *v28 = 138412290;
    v31 = [v24 ID];
    *(v28 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&dword_1B8B22000, v25, v26, "Logged in as user %@", v28, 0xCu);
    sub_1B8BA7B2C(v30);
    v32 = v30;
    v9 = v75;
    MEMORY[0x1B8CCB0E0](v32, -1, -1);
    v33 = v28;
    v17 = v74;
    MEMORY[0x1B8CCB0E0](v33, -1, -1);
  }

  v34 = v3[5];
  v3[5] = v22;
  v35 = v24;

  swift_retain_n();
  v36 = [v20 sharedInstance];
  v37 = [v36 pendingConsents];

  if (!v37)
  {
    goto LABEL_27;
  }

  sub_1B8B46130(0, &qword_1EBAA5D60, 0x1E699C708);
  v38 = sub_1B8C252C8();

  if (v38 >> 62)
  {
    if (sub_1B8C258B8())
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:

LABEL_27:

    sub_1B8BBD068(v69, v3);

    return;
  }

LABEL_10:
  v74 = v17;
  v75 = v9;
  v71 = v35;
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1B8CCA4C0](0, v38);
    goto LABEL_13;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v38 + 32);
LABEL_13:
    v40 = v39;

    v41 = swift_allocObject();
    *(v41 + 2) = v40;
    *(v41 + 3) = v3;
    *(v41 + 4) = sub_1B8BBD95C;
    *(v41 + 5) = v3;
    KeyPath = swift_getKeyPath();
    v43 = v77;
    *v77 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
    swift_storeEnumTagMultiPayload();
    v44 = v14[5];
    *(v43 + v44) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D78, &qword_1B8C27998);
    swift_storeEnumTagMultiPayload();
    v45 = v43 + v14[7];
    v87 = 0;
    v46 = v40;
    swift_retain_n();
    v47 = v46;
    sub_1B8C24D58();
    v48 = v82;
    *v45 = aBlock;
    *(v45 + 8) = v48;
    v49 = (v43 + v14[8]);
    v50 = (v43 + v14[6]);
    sub_1B8BBD974();
    *v50 = sub_1B8C23F88();
    v50[1] = v51;
    *v49 = sub_1B8BBD968;
    v49[1] = v41;
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v52 = sub_1B8C25538();
    v53 = v74;
    sub_1B8B3860C(v43, v74);
    v54 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v55 = swift_allocObject();
    sub_1B8B38670(v53, v55 + v54);
    *(v55 + ((v15 + v54 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
    v85 = sub_1B8BBD9DC;
    v86 = v55;
    aBlock = MEMORY[0x1E69E9820];
    v82 = 1107296256;
    v83 = sub_1B8B8B9F4;
    v84 = &block_descriptor_78;
    v56 = _Block_copy(&aBlock);

    v57 = v79;
    sub_1B8C24FF8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B8B6220C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    v58 = v75;
    v59 = v80;
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v57, v58, v56);
    _Block_release(v56);

    (*(v73 + 8))(v58, v59);
    (*(v78 + 8))(v57, v72);
    sub_1B8BBDA68(v43);
    return;
  }

  __break(1u);
}

void sub_1B8BB8834(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8C23C38();
    __swift_project_value_buffer(v5, qword_1EBAA7BE0);
    v6 = sub_1B8C23C18();
    v7 = sub_1B8C25478();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      v10 = sub_1B8BB7820(a1);
      v12 = sub_1B8B5DD48(v10, v11, &v23);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B8B22000, v6, v7, "Failed to authenticate with error %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B8CCB0E0](v9, -1, -1);
      MEMORY[0x1B8CCB0E0](v8, -1, -1);
    }

    v13 = *(a3 + 80);
    if (v13)
    {
      v14 = 1;
LABEL_14:
      v22 = *(a3 + 88);

      v13(a1, v14);

      sub_1B8B30A44(v13);
    }
  }

  else
  {
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v15 = sub_1B8C23C38();
    __swift_project_value_buffer(v15, qword_1EBAA7BE0);
    v16 = a1;
    v17 = sub_1B8C23C18();
    v18 = sub_1B8C25498();
    sub_1B8B96138(a1, 0);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = a1;
      v21 = v16;
      _os_log_impl(&dword_1B8B22000, v17, v18, "Loaded stub %@", v19, 0xCu);
      sub_1B8BA7B2C(v20);
      MEMORY[0x1B8CCB0E0](v20, -1, -1);
      MEMORY[0x1B8CCB0E0](v19, -1, -1);
    }

    v13 = *(a3 + 80);
    if (v13)
    {
      v14 = 0;
      goto LABEL_14;
    }
  }
}

void sub_1B8BB8AF8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = [objc_opt_self() sharedInstance];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  v13[4] = sub_1B8BBDAC4;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B8B8B9F4;
  v13[3] = &block_descriptor_84;
  v12 = _Block_copy(v13);

  [v10 recordConsentResponseForConsent:a2 response:v9 ^ 1u completion:v12];
  _Block_release(v12);
}

void sub_1B8BB8C34(char a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a1)
  {
    v4 = *(a2 + 80);
    if (v4)
    {
      v5 = *(a2 + 88);

      v4(8, 1);

      sub_1B8B30A44(v4);
    }
  }

  else
  {
    sub_1B8BB9498(a3, a4);
  }
}

void sub_1B8BB8CB0(uint64_t a1)
{
  v2 = type metadata accessor for AgreementConsentView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8B3860C(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C60, &qword_1B8C2D558));
  v6 = sub_1B8C244B8();
  [v6 setModalPresentationStyle_];
  [v6 setModalInPresentation_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong presentViewController:v6 animated:1 completion:0];
  }
}

uint64_t sub_1B8BB8DAC(uint64_t a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B8BB8E40(a2, a3 & 1, a4 & 1, a5, a6);
  }

  return result;
}

void sub_1B8BB8E40(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 loginManager];
  if (v13)
  {
    v14 = v13;
    v35 = v12;
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v15 = a3;
    v16 = sub_1B8C23C38();
    __swift_project_value_buffer(v16, qword_1EBAA7BE0);
    v17 = a1;
    v18 = sub_1B8C23C18();
    v19 = sub_1B8C25468();

    v34 = a2;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_1B8B22000, v18, v19, "Parent %@", v20, 0xCu);
      sub_1B8BA7B2C(v21);
      MEMORY[0x1B8CCB0E0](v21, -1, -1);
      MEMORY[0x1B8CCB0E0](v20, -1, -1);
    }

    v23 = type metadata accessor for Authentication();
    v24 = *(v6 + 16);
    v25 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
    swift_beginAccess();
    v26 = *(v24 + v25);
    v27 = swift_allocObject();
    *(v27 + 16) = a4;
    *(v27 + 24) = a5;
    if (!v26)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = sub_1B8BBD930;
      *(v29 + 24) = v27;

      sub_1B8BA7B94(v14, sub_1B8BBD954, v29);
      goto LABEL_10;
    }

    if (sub_1B8BA7E74(v15 & 1))
    {
      v28 = swift_allocObject();
      *(v28 + 16) = sub_1B8BBD930;
      *(v28 + 24) = v27;

      sub_1B8BA2510(v14, sub_1B8BBD94C, v28);
LABEL_10:

      return;
    }

    v30 = swift_allocObject();
    *(v30 + 16) = sub_1B8BBD930;
    *(v30 + 24) = v27;
    *(v30 + 32) = v26;
    *(v30 + 40) = v23;
    *(v30 + 48) = v14;
    *(v30 + 56) = v17;
    aBlock[4] = sub_1B8BBD938;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8BB7A4C;
    aBlock[3] = &block_descriptor_60;
    v31 = _Block_copy(aBlock);
    v32 = v17;

    v33 = v14;

    [v33 interactiveStartupUsingSystemAccount:v34 & 1 completion:v31];

    _Block_release(v31);
  }

  else
  {
    sub_1B8C258A8();
    __break(1u);
  }
}

uint64_t sub_1B8BB9264(int a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = sub_1B8B851D4(a2);
  if (v5)
  {
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8C23C38();
    __swift_project_value_buffer(v6, qword_1EBAA7BE0);
    v7 = sub_1B8C23C18();
    v8 = sub_1B8C25498();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B8B22000, v7, v8, "Login complete", v9, 2u);
      MEMORY[0x1B8CCB0E0](v9, -1, -1);
    }

    v10 = 0;
    v11 = 1;
  }

  else
  {
    v12 = v4;
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8C23C38();
    __swift_project_value_buffer(v13, qword_1EBAA7BE0);
    v14 = sub_1B8C23C18();
    v15 = sub_1B8C25478();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136446210;
      v18 = sub_1B8BB7820(v12);
      v20 = sub_1B8B5DD48(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B8B22000, v14, v15, "Error authenticating: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CCB0E0](v17, -1, -1);
      MEMORY[0x1B8CCB0E0](v16, -1, -1);
    }

    v10 = v12;
    v11 = 0;
  }

  return a3(v10, v11);
}

void sub_1B8BB9498(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = (v5 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
  swift_beginAccess();
  v7 = v6[1];
  v8 = *v6 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  if (v8 || (v9 = v5 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId, swift_beginAccess(), *(v9 + 8) != 1))
  {
    v14 = (v5 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId);
    swift_beginAccess();
    v15 = 0;
    if ((v14[1] & 1) == 0)
    {
      v16 = *v14;
      v15 = sub_1B8C25658();
    }

    v17 = [objc_opt_self() sharedInstance];
    v18 = *v6;
    v19 = v6[1];

    v20 = sub_1B8C250F8();

    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = a1;
    v22[4] = a2;
    aBlock[4] = sub_1B8BBD45C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B963EC;
    aBlock[3] = &block_descriptor_51_0;
    v23 = _Block_copy(aBlock);

    [v17 feedbackFrameworkLoadDataWithFormTat:v20 orFormID:v15 completion:v23];
    _Block_release(v23);
  }

  else
  {
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v10 = sub_1B8C23C38();
    __swift_project_value_buffer(v10, qword_1EBAA7BE0);
    v11 = sub_1B8C23C18();
    v12 = sub_1B8C25498();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B8B22000, v11, v12, "FeedbackForm is misconfigured. Cannot load Form", v13, 2u);
      MEMORY[0x1B8CCB0E0](v13, -1, -1);
    }

    a1(4, 1);
  }
}

void sub_1B8BB977C(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_opt_self() sharedInstance];
    v7 = *(v5 + 16);
    sub_1B8BFDB0C();
    v9 = v8;

    v10 = *(v5 + 24);
    *(v5 + 24) = v9;
    v11 = v9;

    if (v9)
    {
      v12 = v11;
      a3(v9, 0);
    }

    else
    {
      a3(1, 1);
    }
  }
}

uint64_t sub_1B8BB98A8()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 loginManager];
  v0[3] = v2;

  if (!v2)
  {
    return sub_1B8C258A8();
  }

  v3 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  type metadata accessor for Authentication();
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_1B8BD94E4();

  v7 = swift_allocObject();
  v0[5] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;

  v8 = v2;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1B8BB9AA8;

  return sub_1B8BA2B50(Strong, v8, 0, v6 & 1, sub_1B8BBDB34, v7);
}

uint64_t sub_1B8BB9AA8(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v7 = *v2;
  *(*v2 + 56) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B8BB9BDC, 0, 0);
}

uint64_t sub_1B8BB9BDC()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v1;
  v5 = sub_1B8B851D4(v1);
  v7 = v6;

  sub_1B8BB7F88(v5, v7 & 1);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1B8BB9C84(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v114 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v110 - v9;
  v10 = a3[7];
  v122 = a3;
  if (v10)
  {
    v11 = a3[6];
    if (v11)
    {
      strcpy(v135, "StashedFiles-");
      v135[7] = -4864;
      v12 = v11;
      v13 = v10;
      v14 = [v12 ID];
      if (!v14)
      {
        goto LABEL_117;
      }

      v15 = v14;
      v16 = [v14 stringValue];

      v17 = sub_1B8C25128();
      v19 = v18;

      MEMORY[0x1B8CC9EB0](v17, v19);

      v20 = sub_1B8BBA6CC();

      a3 = v122;
      if (v20)
      {
        v21 = v122[2];
        v22 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
        swift_beginAccess();
        v23 = *(v21 + v22);
        *(v21 + v22) = v20;
        a3 = v122;
      }
    }
  }

  v24 = a3[8];
  if (!v24)
  {
    goto LABEL_110;
  }

  v111 = a4;
  v112 = a2;
  v25 = a3[2];
  v110 = v24;
  v26 = sub_1B8B9CA60(v25);
  v27 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v28 = *(v25 + v27);
  *(v25 + v27) = MEMORY[0x1E69E7CC8];

  v29 = v26;
  v30 = 0;
  v31 = *(v26 + 64);
  v113 = v26 + 64;
  v32 = 1 << *(v26 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v35 = (v32 + 63) >> 6;
  v118 = 0x80000001B8C33DC0;
  v129 = xmmword_1B8C2A740;
  v117 = v26;
  v116 = v35;
  v126 = v25;
  do
  {
LABEL_11:
    if (v34)
    {
      goto LABEL_16;
    }

    do
    {
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_113;
      }

      if (v36 >= v35)
      {

        a2 = v112;
        a4 = v111;
LABEL_110:
        v105 = sub_1B8C253A8();
        v106 = v115;
        (*(*(v105 - 8) + 56))(v115, 1, 1, v105);
        v107 = swift_allocObject();
        v107[2] = 0;
        v107[3] = 0;
        v107[4] = a3;
        v107[5] = a4;
        v107[6] = v114;
        v107[7] = a2;

        v108 = a4;

        sub_1B8BE33EC(0, 0, v106, &unk_1B8C2D570, v107);
      }

      v34 = *(v113 + 8 * v36);
      ++v30;
    }

    while (!v34);
    v30 = v36;
LABEL_16:
    v37 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v38 = v37 | (v30 << 6);
    v39 = *(*(v29 + 56) + 8 * v38);
    v133 = *(v39 + 16);
  }

  while (!v133);
  v119 = v34;
  v120 = v30;
  v40 = (*(v29 + 48) + 16 * v38);
  v42 = *v40;
  v41 = v40[1];
  v44 = *v40 == 0x656C7469743ALL && v41 == 0xE600000000000000;
  v132 = v44;
  v46 = v42 == 0x616572613ALL && v41 == 0xE500000000000000;
  v127 = v46;
  v48 = v42 == 0x706972637365643ALL && v41 == 0xEC0000006E6F6974;
  v50 = v42 == 0x657275746165663ALL && v41 == 0xEF6E69616D6F645FLL;
  v124 = v50;
  v125 = v48;
  v52 = v42 == 0x6165665F6275733ALL && v41 == 0xEC00000065727574;
  v123 = v52;
  v54 = v42 == 0xD000000000000012 && v118 == v41;
  v121 = v54;
  v128 = v41;

  v55 = 0;
  v56 = (v39 + 40);
  v130 = v42;
  v131 = v39;
  while (v55 < *(v39 + 16))
  {
    v59 = *(v56 - 1);
    v60 = *v56;
    if (v132)
    {
      v42 = 0;
      v61 = 0;
    }

    else
    {
      v62 = v128;
      v63 = sub_1B8C25A08();
      if ((v63 | v127))
      {
        v42 = 0;
        v61 = ~v63 & 1;
      }

      else
      {
        v64 = sub_1B8C25A08();
        if (v64)
        {
          v61 = 1;
        }

        else
        {
          v61 = 2;
        }

        if ((v64 | v125) & 1) != 0 || ((v65 = sub_1B8C25A08(), (v65) ? (v61 = 2) : (v61 = 3), ((v65 | v124) & 1) != 0 || ((v66 = sub_1B8C25A08(), (v66) ? (v61 = 3) : (v61 = 4), ((v66 | v123) & 1) != 0 || ((v67 = sub_1B8C25A08(), (v67) ? (v61 = 4) : (v61 = 5), ((v67 | v121)))))
        {
          v42 = 0;
        }

        else if (sub_1B8C25A08())
        {
          v42 = 0;
          v61 = 5;
        }

        else
        {

          v61 = v62;
        }
      }
    }

    v68 = *(v25 + v27);
    v69 = *(v68 + 16);

    if (!v69)
    {
      goto LABEL_89;
    }

    v70 = sub_1B8B5E354(v42, v61);
    if ((v71 & 1) == 0)
    {

LABEL_89:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
      v72 = swift_allocObject();
      *(v72 + 16) = v129;
      *(v72 + 32) = v59;
      *(v72 + 40) = v60;
      swift_beginAccess();
      v88 = *(v25 + v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134 = *(v25 + v27);
      v90 = v134;
      *(v25 + v27) = 0x8000000000000000;
      v80 = sub_1B8B5E354(v42, v61);
      v92 = v90[2];
      v93 = (v91 & 1) == 0;
      v84 = __OFADD__(v92, v93);
      v94 = v92 + v93;
      if (v84)
      {
        goto LABEL_112;
      }

      v95 = v91;
      if (v90[3] < v94)
      {
        sub_1B8B93050(v94, isUniquelyReferenced_nonNull_native);
        v80 = sub_1B8B5E354(v42, v61);
        if ((v95 & 1) != (v96 & 1))
        {
          goto LABEL_118;
        }

LABEL_94:
        v97 = v134;
        if ((v95 & 1) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_54;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_94;
      }

      v103 = v80;
      sub_1B8B94514();
      v80 = v103;
      v97 = v134;
      if ((v95 & 1) == 0)
      {
LABEL_95:
        v97[(v80 >> 6) + 8] |= 1 << v80;
        v98 = (v97[6] + 16 * v80);
        *v98 = v42;
        v98[1] = v61;
        *(v97[7] + 8 * v80) = v72;
        v99 = v97[2];
        v84 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v84)
        {
          goto LABEL_114;
        }

LABEL_101:
        v97[2] = v100;
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    v72 = *(*(v68 + 56) + 8 * v70);

    v73 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = sub_1B8B5D1AC(0, *(v72 + 16) + 1, 1, v72);
    }

    v75 = *(v72 + 16);
    v74 = *(v72 + 24);
    if (v75 >= v74 >> 1)
    {
      v72 = sub_1B8B5D1AC((v74 > 1), v75 + 1, 1, v72);
    }

    *(v72 + 16) = v75 + 1;
    v76 = v72 + 16 * v75;
    *(v76 + 32) = v73;
    *(v76 + 40) = v60;
    v25 = v126;
    swift_beginAccess();
    v77 = *(v25 + v27);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v134 = *(v25 + v27);
    v79 = v134;
    *(v25 + v27) = 0x8000000000000000;
    v80 = sub_1B8B5E354(v42, v61);
    v82 = v79[2];
    v83 = (v81 & 1) == 0;
    v84 = __OFADD__(v82, v83);
    v85 = v82 + v83;
    if (v84)
    {
      goto LABEL_115;
    }

    v86 = v81;
    if (v79[3] < v85)
    {
      sub_1B8B93050(v85, v78);
      v80 = sub_1B8B5E354(v42, v61);
      if ((v86 & 1) != (v87 & 1))
      {
        goto LABEL_118;
      }

LABEL_99:
      v97 = v134;
      if ((v86 & 1) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_54;
    }

    if (v78)
    {
      goto LABEL_99;
    }

    v104 = v80;
    sub_1B8B94514();
    v80 = v104;
    v97 = v134;
    if ((v86 & 1) == 0)
    {
LABEL_100:
      v97[(v80 >> 6) + 8] |= 1 << v80;
      v101 = (v97[6] + 16 * v80);
      *v101 = v42;
      v101[1] = v61;
      *(v97[7] + 8 * v80) = v72;
      v102 = v97[2];
      v84 = __OFADD__(v102, 1);
      v100 = v102 + 1;
      if (v84)
      {
        goto LABEL_116;
      }

      goto LABEL_101;
    }

LABEL_54:
    v57 = v97[7];
    v58 = *(v57 + 8 * v80);
    *(v57 + 8 * v80) = v72;

    sub_1B8B5E4C4(v42, v61);
LABEL_55:
    *(v25 + v27) = v97;
    swift_endAccess();
    v42 = v130;
    v39 = v131;
    ++v55;
    v56 += 2;
    if (v133 == v55)
    {

      a3 = v122;
      v29 = v117;
      v30 = v120;
      v35 = v116;
      v34 = v119;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}

void *sub_1B8BBA6CC()
{
  v114[1] = *MEMORY[0x1E69E9840];
  v113 = sub_1B8C23498();
  v101 = *(v113 - 8);
  v0 = *(v101 + 64);
  v1 = MEMORY[0x1EEE9AC00](v113);
  v3 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v93 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v105 = &v93 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v108 = &v93 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v93 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v93 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v93 - v17;
  v111 = sub_1B8C25588();
  if (!v111)
  {
    v110 = 0;
    goto LABEL_40;
  }

  type metadata accessor for FBKFeedbackForm();
  sub_1B8C2061C(v16);
  sub_1B8C233F8();
  v18 = v101 + 8;
  v106 = *(v101 + 8);
  v106(v16, v113);
  v104 = objc_opt_self();
  v19 = [v104 defaultManager];
  sub_1B8C23468();
  v20 = sub_1B8C250F8();

  v21 = [v19 fileExistsAtPath_];

  if (v21)
  {
LABEL_5:
    if (v111 >> 62)
    {
      v26 = sub_1B8C258B8();
      if (v26)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v26 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
LABEL_7:
        if (v26 >= 1)
        {
          v112 = v13;
          v99 = v3;
          v27 = 0;
          v109 = v111 & 0xC000000000000001;
          v102 = (v101 + 16);
          v98 = v101 + 32;
          v110 = MEMORY[0x1E69E7CC0];
          *&v22 = 138412290;
          v96 = v22;
          *&v22 = 136446722;
          v95 = v22;
          v28 = v108;
          v100 = v18;
          v103 = v26;
          v94 = v6;
          v29 = v99;
          do
          {
            if (v109)
            {
              v32 = MEMORY[0x1B8CCA4C0](v27, v111);
            }

            else
            {
              v32 = *(v111 + 8 * v27 + 32);
            }

            v33 = v32;
            v34 = [v32 fileURL];
            if (v34)
            {
              v35 = v34;
              sub_1B8C23448();

              sub_1B8C233D8();
              sub_1B8C233F8();

              v36 = [v104 defaultManager];
              v37 = sub_1B8C233E8();
              v38 = sub_1B8C233E8();
              v114[0] = 0;
              v39 = v28;
              v40 = [v36 copyItemAtURL:v37 toURL:v38 error:v114];

              v41 = v114[0];
              if (v40)
              {
                (*v102)(v105, v39, v113);
                v42 = v41;
                v28 = v39;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v110 = sub_1B8B5D3EC(0, v110[2] + 1, 1, v110);
                }

                v44 = v110[2];
                v43 = v110[3];
                if (v44 >= v43 >> 1)
                {
                  v110 = sub_1B8B5D3EC(v43 > 1, v44 + 1, 1, v110);
                }

                v45 = v113;
                v46 = v106;
                v106(v28, v113);
                v46(v112, v45);
                v47 = v110;
                v110[2] = v44 + 1;
                (*(v101 + 32))(v47 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v44, v105, v45);
              }

              else
              {
                v56 = v114[0];
                v57 = sub_1B8C23368();

                swift_willThrow();
                if (qword_1EBAA5920 != -1)
                {
                  swift_once();
                }

                v58 = sub_1B8C23C38();
                __swift_project_value_buffer(v58, qword_1EBAA7BE0);
                v59 = *v102;
                v60 = v113;
                (*v102)(v6, v112, v113);
                v59(v29, v108, v60);
                v61 = v57;
                v62 = sub_1B8C23C18();
                v63 = sub_1B8C25478();

                if (os_log_type_enabled(v62, v63))
                {
                  v64 = swift_slowAlloc();
                  v97 = swift_slowAlloc();
                  v114[0] = v97;
                  *v64 = v95;
                  v65 = sub_1B8C23468();
                  v67 = v66;
                  v68 = v6;
                  v69 = v106;
                  v106(v68, v113);
                  v70 = sub_1B8B5DD48(v65, v67, v114);

                  *(v64 + 4) = v70;
                  *(v64 + 12) = 2082;
                  v71 = sub_1B8C23468();
                  v73 = v72;
                  v69(v29, v113);
                  v74 = sub_1B8B5DD48(v71, v73, v114);

                  *(v64 + 14) = v74;
                  *(v64 + 22) = 2082;
                  swift_getErrorValue();
                  v75 = sub_1B8C25A68();
                  v77 = sub_1B8B5DD48(v75, v76, v114);

                  *(v64 + 24) = v77;
                  _os_log_impl(&dword_1B8B22000, v62, v63, "Failed to stash file from %{public}s to %{public}s: %{public}s", v64, 0x20u);
                  v78 = v97;
                  swift_arrayDestroy();
                  v79 = v78;
                  v80 = v113;
                  MEMORY[0x1B8CCB0E0](v79, -1, -1);
                  MEMORY[0x1B8CCB0E0](v64, -1, -1);

                  v28 = v108;
                  v69(v108, v80);
                  v69(v112, v80);
                  v6 = v94;
                }

                else
                {

                  v30 = v113;
                  v31 = v106;
                  v106(v29, v113);
                  v31(v6, v30);
                  v28 = v108;
                  v31(v108, v30);
                  v31(v112, v30);
                }
              }

              v26 = v103;
            }

            else
            {
              if (qword_1EBAA5920 != -1)
              {
                swift_once();
              }

              v48 = sub_1B8C23C38();
              __swift_project_value_buffer(v48, qword_1EBAA7BE0);
              v49 = v33;
              v50 = sub_1B8C23C18();
              v51 = sub_1B8C25478();

              if (os_log_type_enabled(v50, v51))
              {
                v52 = swift_slowAlloc();
                v53 = swift_slowAlloc();
                *v52 = v96;
                *(v52 + 4) = v49;
                *v53 = v49;
                v54 = v49;
                _os_log_impl(&dword_1B8B22000, v50, v51, "Cannot stash attachment %@", v52, 0xCu);
                sub_1B8BA7B2C(v53);
                v55 = v53;
                v28 = v108;
                MEMORY[0x1B8CCB0E0](v55, -1, -1);
                MEMORY[0x1B8CCB0E0](v52, -1, -1);
              }

              else
              {
              }
            }

            ++v27;
          }

          while (v26 != v27);
          goto LABEL_39;
        }

        __break(1u);
        goto LABEL_42;
      }
    }

    v110 = MEMORY[0x1E69E7CC0];
LABEL_39:

    v106(v107, v113);
    goto LABEL_40;
  }

  v23 = [v104 defaultManager];
  v24 = sub_1B8C233E8();
  v114[0] = 0;
  v20 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v114];

  if (v20)
  {
    v25 = v114[0];
    goto LABEL_5;
  }

  v81 = v114[0];

  v20 = sub_1B8C23368();

  swift_willThrow();
  if (qword_1EBAA5920 != -1)
  {
LABEL_42:
    swift_once();
  }

  v82 = sub_1B8C23C38();
  __swift_project_value_buffer(v82, qword_1EBAA7BE0);
  v83 = v20;
  v84 = sub_1B8C23C18();
  v85 = sub_1B8C25478();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v114[0] = v87;
    *v86 = 136446210;
    swift_getErrorValue();
    v88 = sub_1B8C25A68();
    v90 = sub_1B8B5DD48(v88, v89, v114);

    *(v86 + 4) = v90;
    _os_log_impl(&dword_1B8B22000, v84, v85, "Stashing files failed: %{public}s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x1B8CCB0E0](v87, -1, -1);
    MEMORY[0x1B8CCB0E0](v86, -1, -1);
  }

  else
  {
  }

  v106(v107, v113);
  v110 = MEMORY[0x1E69E7CC0];
LABEL_40:
  v91 = *MEMORY[0x1E69E9840];
  return v110;
}

uint64_t sub_1B8BBB290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B8BBB2B4, 0, 0);
}

uint64_t sub_1B8BBB2B4()
{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_1B8C25368();
    v0[7] = sub_1B8C25358();
    v4 = sub_1B8C25328();

    return MEMORY[0x1EEE6DFA0](sub_1B8BBB3C4, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_1B8BBB464;
    v6 = v0[2];

    return sub_1B8BBB910();
  }
}

uint64_t sub_1B8BBB3C4()
{
  v2 = v0[6];
  v1 = v0[7];

  DraftingExtensionViewController.prepareUIForLogOut()();

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1B8BBB464;
  v4 = v0[2];

  return sub_1B8BBB910();
}

uint64_t sub_1B8BBB464()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v1[9] = sub_1B8C25368();
  v1[10] = sub_1B8C25358();
  v4 = sub_1B8C25328();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B8BBB5A0, v4, v3);
}

uint64_t sub_1B8BBB5A0()
{
  v1 = v0[9];
  v2 = v0[3];
  v0[13] = sub_1B8C25358();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1B8BBB6A8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B8BBB6A8()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1B8BBB808, v6, v5);
}

uint64_t sub_1B8BBB808()
{
  v1 = *(v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1B8BBB870, 0, 0);
}

uint64_t sub_1B8BBB870()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v3[3];
  v3[3] = 0;

  v5 = v3[5];
  v3[5] = 0;

  v6 = v3[6];
  v3[6] = 0;

  v7 = v3[7];
  v3[7] = 0;

  v1();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1B8BBB910()
{
  v1[22] = v0;
  sub_1B8C25368();
  v1[23] = sub_1B8C25358();
  v3 = sub_1B8C25328();
  v1[24] = v3;
  v1[25] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B8BBB9A8, v3, v2);
}

uint64_t sub_1B8BBB9A8()
{
  v1 = v0[22];
  v2 = *(v1 + 48);
  v0[26] = v2;
  if (v2)
  {
    v3 = *(v1 + 56);
    v4 = v2;
    [v3 abortAllSessions];
    v5 = [objc_opt_self() sharedInstance];
    v0[27] = v5;
    v6 = [v4 contentItem];
    v0[28] = v6;
    if (v6)
    {
      v7 = v6;
      v0[2] = v0;
      v0[3] = sub_1B8BBBC30;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C58, &qword_1B8C2D4F0);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1B8BBC08C;
      v0[13] = &block_descriptor_42_0;
      v0[14] = v8;
      [v5 deleteDraftFromContentItem:v7 completion:v0 + 10];
      v6 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEC8](v6);
  }

  else
  {
    v9 = v0[23];

    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v10 = sub_1B8C23C38();
    __swift_project_value_buffer(v10, qword_1EBAA7BE0);
    v11 = sub_1B8C23C18();
    v12 = sub_1B8C25498();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B8B22000, v11, v12, "No form response to delete, exiting early.", v13, 2u);
      MEMORY[0x1B8CCB0E0](v13, -1, -1);
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1B8BBBC30()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  v4 = *(v1 + 200);
  v5 = *(v1 + 192);
  if (v3)
  {
    v6 = sub_1B8BBBE9C;
  }

  else
  {
    v6 = sub_1B8BBBD60;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1B8BBBD60()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[23];

  if (qword_1EBAA5920 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAA7BE0);
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25498();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[26];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B8B22000, v5, v6, "Deleted draft.", v9, 2u);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  else
  {

    v5 = v8;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8BBBE9C()
{
  v24 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[23];

  swift_willThrow();

  if (qword_1EBAA5920 != -1)
  {
    swift_once();
  }

  v5 = v0[29];
  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EBAA7BE0);
  v7 = v5;
  v8 = sub_1B8C23C18();
  v9 = sub_1B8C25478();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[29];
  v12 = v0[26];
  if (v10)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[20];
    v18 = sub_1B8C25A68();
    v20 = sub_1B8B5DD48(v18, v19, &v23);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1B8B22000, v8, v9, "Encountered error deleting draft: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
    MEMORY[0x1B8CCB0E0](v13, -1, -1);
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1B8BBC08C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1B8BBC138()
{
  v1 = *(v0 + 32);

  MEMORY[0x1B8CCB1A0](v0 + 72);
  v2 = *(v0 + 88);
  sub_1B8B30A44(*(v0 + 80));
  return v0;
}

uint64_t sub_1B8BBC198()
{
  sub_1B8BBC138();

  return swift_deallocClassInstance();
}

void sub_1B8BBC1F0()
{
  v1 = v0;
  if (qword_1EBAA5920 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAA7BE0);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25498();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B8B5DD48(0xD00000000000001ALL, 0x80000001B8C353B0, &aBlock);
    _os_log_impl(&dword_1B8B22000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = sub_1B8C23C18();
    v22 = sub_1B8C25488();
    if (os_log_type_enabled(Strong, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1B8B5DD48(0xD00000000000001ALL, 0x80000001B8C353B0, &aBlock);
      _os_log_impl(&dword_1B8B22000, Strong, v22, "Presenter is nil, cannot continue with %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B8CCB0E0](v24, -1, -1);
      MEMORY[0x1B8CCB0E0](v23, -1, -1);
LABEL_26:

      return;
    }

LABEL_24:

    goto LABEL_26;
  }

  v7 = *(v0 + 40);
  if (!v7)
  {
    v25 = sub_1B8C23C18();
    v26 = sub_1B8C25488();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1B8B5DD48(0xD00000000000001ALL, 0x80000001B8C353B0, &aBlock);
      _os_log_impl(&dword_1B8B22000, v25, v26, "User is nil, cannot continue with %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B8CCB0E0](v28, -1, -1);
      MEMORY[0x1B8CCB0E0](v27, -1, -1);

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedInstance];
  v11 = [v10 loginManager];

  if (!v11)
  {
    sub_1B8C258A8();
    __break(1u);
    return;
  }

  v12 = type metadata accessor for Authentication();
  v13 = objc_opt_self();
  v14 = Strong;
  v15 = [v13 standardUserDefaults];
  sub_1B8BD93C0();

  v16 = [v13 standardUserDefaults];
  v17 = sub_1B8BD94E4();

  swift_retain_n();
  if ([v9 isUnauthenticatedUser])
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_1EBAA77B0);
    v18 = sub_1B8C23C18();
    v19 = sub_1B8C25498();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B8B22000, v18, v19, "Cannot recover from invalid session with unauthenticated user", v20, 2u);
      MEMORY[0x1B8CCB0E0](v20, -1, -1);
    }

    v21 = FBKErrorOfType();
    sub_1B8BBCB7C(v21);

    goto LABEL_20;
  }

  if (sub_1B8BA7E74(v17 & 1))
  {
    v29 = swift_allocObject();
    v29[2] = sub_1B8BBD060;
    v29[3] = v1;
    v29[4] = v9;
    v30 = v9;

    sub_1B8BA29A8(v11, sub_1B8BBD438, v29);

LABEL_20:

    return;
  }

  if ([v9 isSystemAccount])
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_1EBAA77B0);
    v31 = sub_1B8C23C18();
    v32 = sub_1B8C25498();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1B8B22000, v31, v32, "Recovering from invalid session with system account", v33, 2u);
      MEMORY[0x1B8CCB0E0](v33, -1, -1);
    }

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v35[2] = sub_1B8BBD060;
    v35[3] = v1;
    v35[4] = v34;
    v35[5] = v12;
    v35[6] = Strong;
    v35[7] = v9;
    v49 = sub_1B8BBD408;
    v50 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1B8BB79D4;
    v48 = &block_descriptor_36;
    v36 = _Block_copy(&aBlock);
    v37 = v9;
    v38 = v14;

    [v11 loginWithSystemAccountWithCompletion_];
  }

  else
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_1EBAA77B0);
    v39 = sub_1B8C23C18();
    v40 = sub_1B8C25498();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1B8B22000, v39, v40, "Recovering from invalid session with regular user account", v41, 2u);
      MEMORY[0x1B8CCB0E0](v41, -1, -1);
    }

    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = swift_allocObject();
    v43[2] = sub_1B8BBD060;
    v43[3] = v1;
    v43[4] = v42;
    v43[5] = v12;
    v43[6] = Strong;
    v43[7] = v9;
    v49 = sub_1B8BBD388;
    v50 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1B8BB79D4;
    v48 = &block_descriptor_6;
    v36 = _Block_copy(&aBlock);
    v37 = v9;
    v38 = v14;

    [v11 autoLoginWithCompletion_];
  }

  _Block_release(v36);
}

void sub_1B8BBCB7C(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1EBAA5920 != -1)
    {
      swift_once();
    }

    v12 = sub_1B8C23C38();
    __swift_project_value_buffer(v12, qword_1EBAA7BE0);
    oslog = sub_1B8C23C18();
    v13 = sub_1B8C25498();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B8B22000, oslog, v13, "Recovered from invalid session error", v14, 2u);
      MEMORY[0x1B8CCB0E0](v14, -1, -1);
    }

    goto LABEL_15;
  }

  if (qword_1EBAA5920 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  __swift_project_value_buffer(v1, qword_1EBAA7BE0);
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25498();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B8B22000, v2, v3, "Failed to recover from invalid session", v4, 2u);
    MEMORY[0x1B8CCB0E0](v4, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    oslog = Strong;
    v6 = FBKErrorOfType();
    if (v6)
    {
      v7 = v6;
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        sub_1B8BBFD3C();
        v11 = v10;

        if (!v11)
        {

LABEL_15:

          return;
        }

LABEL_19:
        v15 = sub_1B8C23358();
        v16 = objc_allocWithZone(type metadata accessor for FBKSubmissionError());
        v17 = sub_1B8BCD868(v15);
        [v11 didFailSubmissionWithError_];

        swift_unknownObjectRelease();
        return;
      }

      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    sub_1B8C258A8();
    __break(1u);
  }
}

void sub_1B8BBCEB0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C68, &qword_1B8C2D578);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1B8BBDC18;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_117_0;
  v11 = _Block_copy(aBlock);

  [a2 logOutIfNeededAndRun_];
  _Block_release(v11);
}

void sub_1B8BBD068(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = (v3 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
  swift_beginAccess();
  v5 = v4[1];
  v6 = *v4 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  if (v6 || (v7 = v3 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId, swift_beginAccess(), *(v7 + 8) != 1))
  {
    v13 = (v3 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId);
    swift_beginAccess();
    if (v13[1])
    {

      v14 = 0;
    }

    else
    {
      v15 = *v13;

      v14 = sub_1B8C25658();
    }

    v16 = [objc_opt_self() sharedInstance];
    v17 = *v4;
    v18 = v4[1];

    v19 = sub_1B8C250F8();

    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = sub_1B8BBDCC8;
    v21[4] = a2;
    aBlock[4] = sub_1B8BBDCA4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B963EC;
    aBlock[3] = &block_descriptor_93;
    v22 = _Block_copy(aBlock);

    [v16 feedbackFrameworkLoadDataWithFormTat:v19 orFormID:v14 completion:v22];
    _Block_release(v22);
  }

  else
  {
    v8 = qword_1EBAA5920;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B8C23C38();
    __swift_project_value_buffer(v9, qword_1EBAA7BE0);
    v10 = sub_1B8C23C18();
    v11 = sub_1B8C25498();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B8B22000, v10, v11, "FeedbackForm is misconfigured. Cannot load Form", v12, 2u);
      MEMORY[0x1B8CCB0E0](v12, -1, -1);
    }

    sub_1B8BB8834(4, 1, a2);
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_28Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1B8BBD468(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();

  v11 = [v10 sharedInstance];
  v12 = [v11 loginManager];
  if (v12)
  {
    v29 = v12;
    if ([v12 loginState] == 1 && (v13 = objc_msgSend(v11, sel_currentUser)) != 0)
    {
      v14 = v13;
      if (([v13 isUnauthenticatedUser] & 1) != 0 || (v15 = *(a4 + 16), v16 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod, swift_beginAccess(), !*(v15 + v16)))
      {
        if (qword_1EBAA5920 != -1)
        {
          swift_once();
        }

        v21 = sub_1B8C23C38();
        __swift_project_value_buffer(v21, qword_1EBAA7BE0);
        v22 = sub_1B8C23C18();
        v23 = sub_1B8C25498();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1B8B22000, v22, v23, "Logging out for unauthenticated session.", v24, 2u);
          MEMORY[0x1B8CCB0E0](v24, -1, -1);
        }

        v25 = swift_allocObject();
        swift_weakInit();
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        *(v26 + 24) = a1;
        *(v26 + 32) = a2 & 1;
        *(v26 + 33) = a3 & 1;
        *(v26 + 40) = sub_1B8BBDB14;
        *(v26 + 48) = a5;
        aBlock[4] = sub_1B8BBDB20;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B8B8B9F4;
        aBlock[3] = &block_descriptor_101_0;
        v27 = _Block_copy(aBlock);
        v28 = a1;

        [v29 logOutIfNeededAndRun_];

        _Block_release(v27);
      }

      else
      {
        if (qword_1EBAA5920 != -1)
        {
          swift_once();
        }

        v17 = sub_1B8C23C38();
        __swift_project_value_buffer(v17, qword_1EBAA7BE0);
        v18 = sub_1B8C23C18();
        v19 = sub_1B8C25498();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_1B8B22000, v18, v19, "Extension is already logged in, resetting form+content items.", v20, 2u);
          MEMORY[0x1B8CCB0E0](v20, -1, -1);
        }

        [v11 resetContentAndFormItems];
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1B8BB7F88(0, 1);
        }

        else
        {
        }
      }
    }

    else
    {
      sub_1B8BB8E40(a1, a2 & 1, a3 & 1, sub_1B8BBDB14, a5);
    }
  }

  else
  {

    sub_1B8C258A8();
    __break(1u);
  }
}

unint64_t sub_1B8BBD974()
{
  result = qword_1EBAA5D68;
  if (!qword_1EBAA5D68)
  {
    sub_1B8B46130(255, &qword_1EBAA5D60, 0x1E699C708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5D68);
  }

  return result;
}

void sub_1B8BBD9DC()
{
  v1 = *(type metadata accessor for AgreementConsentView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1B8BB8CB0(v0 + v2);
}

uint64_t sub_1B8BBDA68(uint64_t a1)
{
  v2 = type metadata accessor for AgreementConsentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_47Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8BBDB3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B8B5115C;

  return sub_1B8BBB290(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1B8BBDC18()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C68, &qword_1B8C2D578) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1B8C25348();
}

unint64_t static FBKEvaluation.systemImageName(for:hasResponse:)(_BYTE *a1, char a2)
{
  if (a2)
  {
    v2 = 0x6C6C69662ELL;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  if (*a1)
  {
    if (*a1 != 1)
    {
      sub_1B8C257E8();

      v5 = 0xD000000000000016;
      goto LABEL_12;
    }

    sub_1B8C257E8();
  }

  v5 = 0x7568742E646E6168;
LABEL_12:
  MEMORY[0x1B8CC9EB0](v2, v3);

  return v5;
}

uint64_t FBKEvaluation.Response.Action.description.getter()
{
  v1 = 0x442073626D756854;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x552073626D756854;
  }
}

uint64_t FBKEvaluation.Response.Action.hashValue.getter()
{
  v1 = *v0;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BBDED8()
{
  v1 = 0x442073626D756854;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x552073626D756854;
  }
}

uint64_t FBKEvaluation.Response.ID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B8C23568();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FBKEvaluation.Response.action.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FBKEvaluation.Response(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t FBKEvaluation.Response.feedback.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FBKEvaluation.Response(0) + 24);

  return sub_1B8BBE044(v3, a1);
}

uint64_t sub_1B8BBE044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FBKEvaluation.Response.description.getter()
{
  v1 = type metadata accessor for FBKEvaluation.Response(0);
  if (*(v0 + *(v1 + 20)))
  {
    if (*(v0 + *(v1 + 20)) == 1)
    {
      v2 = 0xEB000000006E776FLL;
      v3 = 0x442073626D756854;
    }

    else
    {
      v2 = 0x80000001B8C354A0;
      v3 = 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0xE900000000000070;
    v3 = 0x552073626D756854;
  }

  MEMORY[0x1B8CC9EB0](v3, v2);

  MEMORY[0x1B8CC9EB0](0x5B203A4449205DLL, 0xE700000000000000);
  sub_1B8C23568();
  sub_1B8BBF00C(&qword_1EBAA6260, MEMORY[0x1E69695A8]);
  v4 = sub_1B8C259E8();
  MEMORY[0x1B8CC9EB0](v4);

  MEMORY[0x1B8CC9EB0](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1B8BBE208@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1B8C236E8();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8C23738();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8C23568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FBKEvaluation.Response(0);
  v32 = *(v17 - 8);
  v33 = v17;
  v18 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23748();
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x1E699C230])
  {
    (*(v8 + 96))(v11, v7);
    (*(v13 + 32))(v16, v11, v12);
    sub_1B8C236F8();
    v21 = v31;
    v22 = (*(v31 + 88))(v6, v3);
    if (v22 == *MEMORY[0x1E699C1F0])
    {
      v23 = 0;
LABEL_10:
      (*(v13 + 16))(v20, v16, v12);
      v26 = v33;
      v20[*(v33 + 20)] = v23;
      v27 = &v20[*(v26 + 24)];
      sub_1B8C236B8();

      (*(v13 + 8))(v16, v12);
      v25 = v34;
      sub_1B8BBF294(v20, v34);
      v24 = 0;
      return (*(v32 + 56))(v25, v24, 1, v26);
    }

    if (v22 == *MEMORY[0x1E699C1C8])
    {
      v23 = 1;
      goto LABEL_10;
    }

    if (v22 == *MEMORY[0x1E699C1D8])
    {
      v23 = 2;
      goto LABEL_10;
    }

    if (v22 == *MEMORY[0x1E699C1E8] || v22 == *MEMORY[0x1E699C1D0])
    {
    }

    else
    {
      v29 = *MEMORY[0x1E699C1E0];
      v30 = v22;

      if (v30 != v29)
      {
        (*(v21 + 8))(v6, v3);
      }
    }

    (*(v13 + 8))(v16, v12);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v24 = 1;
  v26 = v33;
  v25 = v34;
  return (*(v32 + 56))(v25, v24, 1, v26);
}

unint64_t FBKEvaluation.Input.description.getter()
{
  v1 = v0;
  v2 = sub_1B8C23568();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FBKEvaluation.Input(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B8BBE8C0(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1B8C257E8();

    v19 = 0xD000000000000013;
    v20 = 0x80000001B8C354C0;
    v12 = [v11 description];
    v13 = sub_1B8C25128();
    v15 = v14;

    MEMORY[0x1B8CC9EB0](v13, v15);

    return v19;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v19 = 540689481;
    v20 = 0xE400000000000000;
    sub_1B8BBF00C(&qword_1EBAA6260, MEMORY[0x1E69695A8]);
    v17 = sub_1B8C259E8();
    MEMORY[0x1B8CC9EB0](v17);

    v16 = v19;
    (*(v3 + 8))(v6, v2);
  }

  return v16;
}

uint64_t sub_1B8BBE8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKEvaluation.Input(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void FBKEvaluation.Input.hash(into:)()
{
  v1 = sub_1B8C23568();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FBKEvaluation.Input(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B8BBE8C0(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    MEMORY[0x1B8CCA790](1);
    sub_1B8C255F8();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x1B8CCA790](0);
    sub_1B8BBF00C(&qword_1EBAA6230, MEMORY[0x1E69695A8]);
    sub_1B8C250C8();
    (*(v2 + 8))(v5, v1);
  }
}

uint64_t FBKEvaluation.Input.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1B8C23568();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FBKEvaluation.Input(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B8C25AB8();
  sub_1B8BBE8C0(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    MEMORY[0x1B8CCA790](1);
    sub_1B8C255F8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x1B8CCA790](0);
    sub_1B8BBF00C(&qword_1EBAA6230, MEMORY[0x1E69695A8]);
    sub_1B8C250C8();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1B8C25AF8();
}

uint64_t sub_1B8BBECD8()
{
  sub_1B8C25AB8();
  FBKEvaluation.Input.hash(into:)();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BBED1C()
{
  sub_1B8C25AB8();
  FBKEvaluation.Input.hash(into:)();
  return sub_1B8C25AF8();
}

uint64_t _s8Feedback13FBKEvaluationV5InputO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23568();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FBKEvaluation.Input(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7CA8, &qword_1B8C2D728);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_1B8BBE8C0(a1, &v27 - v19);
  sub_1B8BBE8C0(a2, &v20[v21]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B8BBE8C0(v20, v13);
    v22 = *v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *&v20[v21];
      sub_1B8B47A9C();
      v24 = sub_1B8C255E8();

LABEL_9:
      sub_1B8BBF360(v20);
      return v24 & 1;
    }
  }

  else
  {
    sub_1B8BBE8C0(v20, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v8, &v20[v21], v4);
      v24 = sub_1B8C23548();
      v25 = *(v5 + 8);
      v25(v8, v4);
      v25(v15, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v15, v4);
  }

  sub_1B8BBF2F8(v20);
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1B8BBF00C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8BBF058()
{
  result = qword_1EBAA7C70;
  if (!qword_1EBAA7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7C70);
  }

  return result;
}

void sub_1B8BBF12C()
{
  sub_1B8C23568();
  if (v0 <= 0x3F)
  {
    sub_1B8BBF1B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8BBF1B8()
{
  if (!qword_1EBAA7C90)
  {
    sub_1B8C236A8();
    v0 = sub_1B8C25608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA7C90);
    }
  }
}

uint64_t sub_1B8BBF220()
{
  result = sub_1B8C23568();
  if (v1 <= 0x3F)
  {
    result = sub_1B8C23978();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8BBF294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKEvaluation.Response(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8BBF2F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7CA8, &qword_1B8C2D728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8BBF360(uint64_t a1)
{
  v2 = type metadata accessor for FBKEvaluation.Input(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8BBF3BC()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA7CB0);
  __swift_project_value_buffer(v0, qword_1EBAA7CB0);
  return sub_1B8C23C28();
}

void sub_1B8BBF43C()
{
  sub_1B8B46130(0, &qword_1EBAA8840, 0x1E699C158);
  [swift_getObjCClassFromMetadata() platform];
  v1 = OBJC_IVAR___ExtensionController_contentViewController;
  if (*&v0[OBJC_IVAR___ExtensionController_contentViewController])
  {
    if (qword_1EBAA5928 != -1)
    {
      swift_once();
    }

    v2 = sub_1B8C23C38();
    __swift_project_value_buffer(v2, qword_1EBAA7CB0);
    oslog = sub_1B8C23C18();
    v3 = sub_1B8C25488();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B8B22000, oslog, v3, "contentViewController is nil in ExtensionController", v4, 2u);
      MEMORY[0x1B8CCB0E0](v4, -1, -1);
    }

    goto LABEL_16;
  }

  v5 = [v0 makeContentViewController];
  if (!v5)
  {
LABEL_21:
    sub_1B8C258A8();
    __break(1u);
    return;
  }

  v6 = v5;
  type metadata accessor for DraftingExtensionViewController();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
LABEL_20:

    goto LABEL_21;
  }

  v8 = v7;
  v9 = *&v0[v1];
  *&v0[v1] = v7;
  v6 = v6;

  swift_unknownObjectWeakAssign();
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v0 setView_];

  v11 = [v8 view];
  if (!v11)
  {
    if (qword_1EBAA5928 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8C23C38();
    __swift_project_value_buffer(v13, qword_1EBAA7CB0);
    oslog = sub_1B8C23C18();
    v14 = sub_1B8C25488();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B8B22000, oslog, v14, "DraftingExtensionViewController has no view. Cannot load extension UI", v15, 2u);
      MEMORY[0x1B8CCB0E0](v15, -1, -1);
    }

    goto LABEL_15;
  }

  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_20;
  }

  oslog = v12;
  sub_1B8C254C8();
LABEL_15:

LABEL_16:
}

uint64_t sub_1B8BBF7A8(void *a1)
{
  v3 = sub_1B8C250F8();
  v4 = [a1 valueForEntitlement_];

  if (v4)
  {
    sub_1B8C256B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v24 = v29;
  v25 = v30;
  if (*(&v30 + 1))
  {
    sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v5 = [v28 BOOLValue];

      if (v5)
      {
        [a1 setExportedObject_];
        v6 = sub_1B8B88E34();
        [a1 setExportedInterface_];

        v7 = sub_1B8B89014();
        [a1 setRemoteObjectInterface_];

        v8 = [a1 serviceName];
        if (v8)
        {
          v9 = v8;
          v10 = sub_1B8C25128();
          v12 = v11;
        }

        else
        {
          v12 = 0xE600000000000000;
          v10 = 0x296C6C756E28;
        }

        v18 = swift_allocObject();
        *(v18 + 16) = v10;
        *(v18 + 24) = v12;
        v26 = sub_1B8BC028C;
        v27 = v18;
        *&v24 = MEMORY[0x1E69E9820];
        *(&v24 + 1) = 1107296256;
        *&v25 = sub_1B8B8B9F4;
        *(&v25 + 1) = &block_descriptor_7;
        v19 = _Block_copy(&v24);

        [a1 setInvalidationHandler_];
        _Block_release(v19);
        v20 = swift_allocObject();
        *(v20 + 16) = v10;
        *(v20 + 24) = v12;
        v26 = sub_1B8BC02C8;
        v27 = v20;
        *&v24 = MEMORY[0x1E69E9820];
        *(&v24 + 1) = 1107296256;
        *&v25 = sub_1B8B8B9F4;
        *(&v25 + 1) = &block_descriptor_12_0;
        v21 = _Block_copy(&v24);

        [a1 setInterruptionHandler_];
        _Block_release(v21);
        v22 = *(v1 + OBJC_IVAR___ExtensionController_xpcConnection);
        *(v1 + OBJC_IVAR___ExtensionController_xpcConnection) = a1;
        v23 = a1;

        [v23 resume];
        return 1;
      }
    }
  }

  else
  {
    sub_1B8BC0224(&v24);
  }

  if (qword_1EBAA5928 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8C23C38();
  __swift_project_value_buffer(v13, qword_1EBAA7CB0);
  v14 = sub_1B8C23C18();
  v15 = sub_1B8C25478();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1B8B22000, v14, v15, "Process is not entitled to draft a new feedback.", v16, 2u);
    MEMORY[0x1B8CCB0E0](v16, -1, -1);
  }

  return 0;
}

void sub_1B8BBFB94(uint64_t a1, unint64_t a2, const char *a3)
{
  if (qword_1EBAA5928 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EBAA7CB0);

  oslog = sub_1B8C23C18();
  v7 = sub_1B8C25498();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1B8B5DD48(a1, a2, &v11);
    _os_log_impl(&dword_1B8B22000, oslog, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }
}

void sub_1B8BBFD3C()
{
  v1 = *(v0 + OBJC_IVAR___ExtensionController_xpcConnection);
  if (v1)
  {
    aBlock[4] = sub_1B8BBFF38;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8BB1CC4;
    aBlock[3] = &block_descriptor_15;
    v2 = _Block_copy(aBlock);
    v3 = v1;
    v4 = [v3 remoteObjectProxyWithErrorHandler_];
    _Block_release(v2);

    sub_1B8C256B8();
    swift_unknownObjectRelease();
    sub_1B8B5FDD4(aBlock, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7CD8, &unk_1B8C2D760);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    else
    {
      if (qword_1EBAA5928 != -1)
      {
        swift_once();
      }

      v5 = sub_1B8C23C38();
      __swift_project_value_buffer(v5, qword_1EBAA7CB0);
      v6 = sub_1B8C23C18();
      v7 = sub_1B8C25478();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1B8B22000, v6, v7, "Failed to get remote object proxy", v8, 2u);
        MEMORY[0x1B8CCB0E0](v8, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1B8BBFF38()
{
  if (qword_1EBAA5928 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EBAA7CB0);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25478();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1B8B22000, oslog, v1, "Failed to get remote object proxy", v2, 2u);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

id sub_1B8BC0180()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8BC0224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA7DF0, &unk_1B8C2D750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t static FBKAttachmentError.withError(nsError:)(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1B8C25128();
  v5 = v4;

  if (v3 == 0xD000000000000025 && 0x80000001B8C34450 == v5)
  {

LABEL_8:
    result = sub_1B8BC08A8([a1 code]);
    if ((v9 & 1) == 0)
    {
      return result;
    }

    return 6;
  }

  v7 = sub_1B8C25A08();

  if (v7)
  {
    goto LABEL_8;
  }

  return 6;
}

uint64_t FBKAttachmentError.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0xD000000000000014;
      case 1:
        return 0xD000000000000024;
      case 2:
        return 0xD000000000000013;
    }

LABEL_16:
    result = sub_1B8C25A28();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0xD000000000000015;
    }

    if (a1 == 6)
    {
      return 0x6E776F6E6B6E55;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t sub_1B8BC0550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8BC0B14();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

unint64_t sub_1B8BC059C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B8BC08A8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B8BC05D0(uint64_t a1)
{
  v2 = sub_1B8BC0B14();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1B8BC060C(uint64_t a1)
{
  v2 = sub_1B8BC0B14();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1B8BC066C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8BC0B14();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

uint64_t URLError.description.getter()
{
  v1 = type metadata accessor for URLError();
  v2 = *(v0 + *(v1 + 20));
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        v3 = 0xD000000000000014;
        goto LABEL_16;
      case 1:
        v3 = 0xD000000000000024;
LABEL_16:
        v4 = sub_1B8C23468();
        MEMORY[0x1B8CC9EB0](v4);

        MEMORY[0x1B8CC9EB0](93, 0xE100000000000000);

        MEMORY[0x1B8CC9EB0](23306, 0xE200000000000000);

        return v3;
      case 2:
        v3 = 0xD000000000000013;
        goto LABEL_16;
    }
  }

  else
  {
    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v3 = 0xD000000000000021;
      }

      else
      {
        v3 = 0xD000000000000023;
      }

      goto LABEL_16;
    }

    if (v2 == 5)
    {
      v3 = 0xD000000000000015;
      goto LABEL_16;
    }

    if (v2 == 6)
    {
      v3 = 0x6E776F6E6B6E55;
      goto LABEL_16;
    }
  }

  v6 = *(v0 + *(v1 + 20));
  result = sub_1B8C25A28();
  __break(1u);
  return result;
}

unint64_t sub_1B8BC08A8(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for URLError()
{
  result = qword_1EBAA7D00;
  if (!qword_1EBAA7D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B8BC0908()
{
  result = qword_1EBAA7CE0;
  if (!qword_1EBAA7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7CE0);
  }

  return result;
}

unint64_t sub_1B8BC0960()
{
  result = qword_1EBAA7CE8;
  if (!qword_1EBAA7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7CE8);
  }

  return result;
}

unint64_t sub_1B8BC09B8()
{
  result = qword_1EBAA7CF0;
  if (!qword_1EBAA7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7CF0);
  }

  return result;
}

unint64_t sub_1B8BC0A10()
{
  result = qword_1EBAA7CF8;
  if (!qword_1EBAA7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7CF8);
  }

  return result;
}

uint64_t sub_1B8BC0AA0()
{
  result = sub_1B8C23498();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B8BC0B14()
{
  result = qword_1EBAA7D10;
  if (!qword_1EBAA7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7D10);
  }

  return result;
}

void sub_1B8BC0B68(uint64_t a1)
{
  v3 = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  if (v3 == a1)
  {
    sub_1B8BC1B64();
    sub_1B8C23588();

    v5 = *(v1 + 24);
    v6 = [objc_opt_self() sharedUserDefaults];
    v7 = sub_1B8C25A38();
    v8 = sub_1B8C250F8();
    [v6 setObject:v7 forKey:v8];

    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BC1B64();
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC0D00()
{
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  return *(v0 + 24);
}

uint64_t sub_1B8BC0D70()
{
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  return *(v0 + 18);
}

void sub_1B8BC0DE0(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
    swift_getKeyPath();
    sub_1B8BC1B64();
    sub_1B8C23588();

    v3 = *(v1 + 17);
    v4 = [objc_opt_self() sharedUserDefaults];
    v5 = sub_1B8C25A38();
    v6 = sub_1B8C250F8();
    [v4 setObject:v5 forKey:v6];

    swift_unknownObjectRelease();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BC1B64();
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC0F88()
{
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  return *(v0 + 16);
}

uint64_t sub_1B8BC0FF8()
{
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  return *(v0 + 17);
}

void sub_1B8BC1068(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
    swift_getKeyPath();
    sub_1B8BC1B64();
    sub_1B8C23588();

    v3 = *(v1 + 16);
    v4 = [objc_opt_self() sharedUserDefaults];
    v5 = sub_1B8C25A38();
    v6 = sub_1B8C250F8();
    [v4 setObject:v5 forKey:v6];

    swift_unknownObjectRelease();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BC1B64();
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC1210()
{
  v0 = type metadata accessor for UserDefaultsController();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B8BC1250();
  qword_1EBAB39E0 = result;
  return result;
}

uint64_t sub_1B8BC1250()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedUserDefaults];
  v3 = sub_1B8C250F8();
  v4 = [v2 BOOLForKey_];

  *(v0 + 16) = v4;
  v5 = [v1 sharedUserDefaults];
  v6 = sub_1B8C250F8();
  v7 = [v5 BOOLForKey_];

  *(v0 + 17) = v7;
  v8 = [v1 sharedUserDefaults];
  v9 = sub_1B8C250F8();
  v10 = [v8 BOOLForKey_];

  *(v0 + 18) = v10;
  v11 = [v1 sharedUserDefaults];
  v12 = sub_1B8C250F8();
  v13 = [v11 integerForKey_];

  *(v0 + 24) = v13;
  sub_1B8C235B8();
  return v0;
}

void sub_1B8BC1418(char a1)
{
  if (*(v1 + 18) == (a1 & 1))
  {
    *(v1 + 18) = a1 & 1;
    swift_getKeyPath();
    sub_1B8BC1B64();
    sub_1B8C23588();

    v3 = *(v1 + 18);
    v4 = [objc_opt_self() sharedUserDefaults];
    v5 = sub_1B8C25A38();
    v6 = sub_1B8C250F8();
    [v4 setObject:v5 forKey:v6];

    swift_unknownObjectRelease();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BC1B64();
    sub_1B8C23578();
  }
}

void sub_1B8BC15C0(uint64_t a1, char a2)
{
  v2 = a1;
  *(a1 + 16) = a2;
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  LOBYTE(v2) = *(v2 + 16);
  v3 = [objc_opt_self() sharedUserDefaults];
  v4 = sub_1B8C25A38();
  v5 = sub_1B8C250F8();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
}

void sub_1B8BC16C0(uint64_t a1, char a2)
{
  v2 = a1;
  *(a1 + 17) = a2;
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  LOBYTE(v2) = *(v2 + 17);
  v3 = [objc_opt_self() sharedUserDefaults];
  v4 = sub_1B8C25A38();
  v5 = sub_1B8C250F8();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
}

void sub_1B8BC17C0(uint64_t a1, char a2)
{
  v2 = a1;
  *(a1 + 18) = a2;
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  LOBYTE(v2) = *(v2 + 18);
  v3 = [objc_opt_self() sharedUserDefaults];
  v4 = sub_1B8C25A38();
  v5 = sub_1B8C250F8();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
}

void sub_1B8BC18C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  v3 = *(a1 + 24);
  v4 = [objc_opt_self() sharedUserDefaults];
  v5 = sub_1B8C25A38();
  v6 = sub_1B8C250F8();
  [v4 setObject:v5 forKey:v6];

  swift_unknownObjectRelease();
}

uint64_t sub_1B8BC19C8()
{
  v1 = OBJC_IVAR____TtC8Feedback22UserDefaultsController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserDefaultsController()
{
  result = qword_1EBAA7D20;
  if (!qword_1EBAA7D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8BC1AB8()
{
  result = sub_1B8C235C8();
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

unint64_t sub_1B8BC1B64()
{
  result = qword_1EBAA5F10;
  if (!qword_1EBAA5F10)
  {
    type metadata accessor for UserDefaultsController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F10);
  }

  return result;
}

uint64_t sub_1B8BC1BDC()
{
  v1 = v0;
  v33 = type metadata accessor for BatchInteraction(0);
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  swift_getKeyPath();
  *&v34[0] = v0;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  v16 = *(v0 + 24);
  if (*(v16 + 16))
  {
    v30 = v6;
    v31 = v8;
    v17 = *(v2 + 80);
    v18 = (v17 + 32) & ~v17;
    sub_1B8B548DC(v16 + v18, v15);
    v29 = *(v2 + 56);
    v29(v15, 0, 1, v33);
    sub_1B8B3433C(v15, &qword_1EBAA6588, &unk_1B8C2DB50);
    swift_getKeyPath();
    *&v34[0] = v0;
    sub_1B8C23588();

    *&v34[0] = v0;
    swift_getKeyPath();
    sub_1B8C235A8();

    result = swift_beginAccess();
    v20 = *(v0 + 24);
    if (*(v20 + 16))
    {
      v28 = ~v17;
      v21 = v31;
      sub_1B8B548DC(v20 + v18, v31);
      sub_1B8BCC558(0, 1);
      swift_endAccess();
      *&v34[0] = v0;
      swift_getKeyPath();
      sub_1B8C23598();

      sub_1B8B548DC(v21, v13);
      v29(v13, 0, 1, v33);
      sub_1B8BC3D58(v13);
      v22 = sub_1B8C24F68();
      v23 = v30;
      sub_1B8B548DC(v21, v30);
      v24 = (v17 + 24) & v28;
      v25 = swift_allocObject();
      *(v25 + 16) = v1;
      sub_1B8B54940(v23, v25 + v24);
      swift_retain_n();
      sub_1B8B61E24(v22, sub_1B8BCD2D4, v1, sub_1B8BCD2DC, v25);

      return sub_1B8B54C40(v21);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v2 + 56))(v15, 1, 1, v33);
    sub_1B8B3433C(v15, &qword_1EBAA6588, &unk_1B8C2DB50);
    swift_getKeyPath();
    *&v34[0] = v0;
    sub_1B8C23588();

    v26 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
    swift_beginAccess();
    v27 = *(v1 + v26);
    v34[0] = xmmword_1B8C2DAB0;
    memset(&v34[1], 0, 41);

    sub_1B8BA0D30(v34);
  }

  return result;
}

uint64_t sub_1B8BC20B4()
{
  v1[7] = v0;
  v2 = sub_1B8C23528();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_1B8C25368();
  v1[11] = sub_1B8C25358();
  v6 = sub_1B8C25328();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B8BC21A8, v6, v5);
}

uint64_t sub_1B8BC21A8()
{
  v1 = v0[10];
  v2 = v0[7];
  v0[2] = 0;
  sub_1B8C23518();
  if (*(v2 + 64) == 1)
  {
    *(v2 + 64) = 1;
  }

  else
  {
    v3 = v0[7];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v0[3] = v3;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  v5 = v0[7];
  if (*(v5 + 56))
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v0[4] = v5;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1B8BC23DC;
  v8 = v0[7];

  return sub_1B8BC8AA8();
}

uint64_t sub_1B8BC23DC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_1B8BC2694;
  }

  else
  {
    v7 = sub_1B8BC2518;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B8BC2518()
{
  v1 = v0[11];
  v2 = v0[7];

  if (*(v2 + 64))
  {
    v3 = v0[15];
    v4 = v0[7];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    v0[6] = v4;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  else
  {
    *(v0[7] + 64) = 0;
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  sub_1B8BCB9F4(v0 + 2);
  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B8BC2694()
{
  v24 = v0;
  v1 = v0[11];

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1B8C23C38();
  __swift_project_value_buffer(v3, qword_1EBAB3A30);
  v4 = v2;
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25478();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B8B5DD48(0x696E496863746566, 0xEE0029286C616974, &v23);
    *(v8 + 12) = 2114;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1B8B22000, v5, v6, "%{public}s error: %{public}@", v8, 0x16u);
    sub_1B8B3433C(v9, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  v13 = v0[7];
  sub_1B8BC535C();
  v14 = *(v13 + 64);
  v15 = v0[15];
  v16 = v0[7];
  if (v14)
  {
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    v0[5] = v16;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  else
  {

    *(v16 + 64) = 0;
  }

  v19 = v0[9];
  v18 = v0[10];
  v20 = v0[8];
  sub_1B8BCB9F4(v0 + 2);
  (*(v19 + 8))(v18, v20);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1B8BC29A4()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  return *(v0 + 65);
}

uint64_t sub_1B8BC2A68()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  return *(v0 + 64);
}

uint64_t sub_1B8BC2B08()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v1 = *(v0 + 32);
}

uint64_t sub_1B8BC2BAC()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1B8BC2C64()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1B8BC2D40@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v9 = *a1;
  swift_beginAccess();
  return sub_1B8B34450(v11 + v9, a4, a2, a3);
}

uint64_t sub_1B8BC2E20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B8BC2EE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B8BC2F0C(v4);
}

uint64_t sub_1B8BC2F0C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_1B8B4491C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC3054(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t sub_1B8BC30BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1B8BC317C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B8BC31A8(v4);
}

uint64_t sub_1B8BC31A8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  v5 = sub_1B8B44B6C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC32F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
}

uint64_t sub_1B8BC3358(uint64_t a1)
{
  v3 = *(v1 + 32);

  v5 = sub_1B8B44B6C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC34AC()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  return *(v0 + 40);
}

uint64_t sub_1B8BC354C(uint64_t result)
{
  if (*(v1 + 40) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8BC3650()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  return *(v0 + 48);
}

uint64_t sub_1B8BC36F0(uint64_t result)
{
  if (*(v1 + 48) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8BC37F4()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  return *(v0 + 56);
}

uint64_t sub_1B8BC3894@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1B8BC3964(uint64_t result)
{
  if (*(v1 + 56) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8BC3A68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1B8BC3B38(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8BC3C48(uint64_t result)
{
  if (*(v1 + 65) == (result & 1))
  {
    *(v1 + 65) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8BC3D58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC8Feedback18DonationController__nextDonation;
  swift_beginAccess();
  sub_1B8B34450(v1 + v7, v6, &qword_1EBAA6588, &unk_1B8C2DB50);
  v8 = sub_1B8BCC618(v6, a1);
  sub_1B8B3433C(v6, &qword_1EBAA6588, &unk_1B8C2DB50);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  else
  {
    swift_beginAccess();
    sub_1B8B6196C(a1, v1 + v7, &qword_1EBAA6588, &unk_1B8C2DB50);
    swift_endAccess();
  }

  return sub_1B8B3433C(a1, &qword_1EBAA6588, &unk_1B8C2DB50);
}

uint64_t sub_1B8BC3F54(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC8Feedback18DonationController__currentID;
  swift_beginAccess();
  sub_1B8B34450(v1 + v7, v6, &qword_1EBAA79C0, &qword_1B8C2D150);
  v8 = sub_1B8BCCA50(v6, a1);
  sub_1B8B3433C(v6, &qword_1EBAA79C0, &qword_1B8C2D150);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  else
  {
    swift_beginAccess();
    sub_1B8B6196C(a1, v1 + v7, &qword_1EBAA79C0, &qword_1B8C2D150);
    swift_endAccess();
  }

  return sub_1B8B3433C(a1, &qword_1EBAA79C0, &qword_1B8C2D150);
}

uint64_t DonationController.stateController.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v1 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1B8BC4210@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v4 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B8BC42D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return DonationController.stateController.setter(v4);
}

uint64_t type metadata accessor for DonationController()
{
  result = qword_1EBAA7D58;
  if (!qword_1EBAA7D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DonationController.stateController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC4480(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*DonationController.stateController.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC8Feedback18DonationController___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  *v4 = v1;
  swift_getKeyPath();
  sub_1B8C235A8();

  swift_beginAccess();
  return sub_1B8BC4654;
}

void sub_1B8BC4654(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1B8C23598();

  free(v1);
}

uint64_t sub_1B8BC46D8(uint64_t a1)
{
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  *(v1 + 56) = 0;
  v3 = OBJC_IVAR____TtC8Feedback18DonationController__nextDonation;
  v4 = type metadata accessor for BatchInteraction(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC8Feedback18DonationController_TARGET_SIZE) = 10;
  v5 = OBJC_IVAR____TtC8Feedback18DonationController__currentID;
  v6 = sub_1B8C23568();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  sub_1B8C235B8();
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = v7;
  *(v1 + 16) = v7;
  *(v1 + OBJC_IVAR____TtC8Feedback18DonationController__stateController) = a1;
  return v1;
}

void sub_1B8BC47DC()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x1B8CCA4C0](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_1B8C258B8())
  {
    goto LABEL_20;
  }

  if (!sub_1B8C258B8())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = sub_1B8C258B8();
LABEL_16:
    if (v4)
    {
      sub_1B8BCD12C(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1B8BC48B4(uint64_t result)
{
  if (*(result + 65) == 1)
  {
    *(result + 65) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8BC49C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  swift_getKeyPath();
  v25 = a1;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v25 = a1;
  swift_getKeyPath();
  sub_1B8C235A8();

  v13 = *(a1 + 40);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 40) = v15;
    v25 = a1;
    swift_getKeyPath();
    sub_1B8C23598();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6620, &qword_1B8C29468);
    v16 = type metadata accessor for BatchInteraction(0);
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1B8C2A740;
    sub_1B8B548DC(a2, v20 + v19);
    sub_1B8BC3358(v20);
    v21 = sub_1B8C23568();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v11, a2, v21);
    (*(v22 + 56))(v11, 0, 1, v21);
    sub_1B8BC3F54(v11);
    (*(v17 + 56))(v7, 1, 1, v16);
    result = sub_1B8BC3D58(v7);
    if (*(a1 + 65))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v24 - 2) = a1;
      *(&v24 - 8) = 0;
      v25 = a1;
      sub_1B8C23578();
    }

    else
    {
      *(a1 + 65) = 0;
    }
  }

  return result;
}

uint64_t sub_1B8BC4D78(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v30 = &v27 - v9;
  v27 = type metadata accessor for BatchInteraction(0);
  v10 = *(v27 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 40))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v27 - 2) = v1;
    *(&v27 - 1) = 0;
    v33 = v1;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  if (*(v1 + 48) != 1)
  {
    v14 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v14);
    *(&v27 - 2) = v1;
    *(&v27 - 1) = 1;
    v33 = v1;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6620, &qword_1B8C29468);
  v15 = *(v10 + 72);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  v29 = xmmword_1B8C2A740;
  *(v17 + 16) = xmmword_1B8C2A740;
  sub_1B8B548DC(a1, v17 + v16);
  sub_1B8BC31A8(v17);
  swift_getKeyPath();
  v33 = v2;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  v18 = *(v2 + 24);
  if (!*(v18 + 16))
  {
    return sub_1B8BC3358(MEMORY[0x1E69E7CC0]);
  }

  v19 = v31;
  sub_1B8B548DC(v18 + v16, v31);
  v20 = swift_allocObject();
  *(v20 + 16) = v29;
  sub_1B8B548DC(v19, v20 + v16);
  sub_1B8BC3358(v20);
  v21 = sub_1B8C23568();
  v22 = *(v21 - 8);
  v23 = v30;
  (*(v22 + 16))(v30, v19, v21);
  (*(v22 + 56))(v23, 0, 1, v21);
  sub_1B8BC3F54(v23);
  swift_getKeyPath();
  v32 = v2;
  sub_1B8C23588();

  v32 = v2;
  swift_getKeyPath();
  sub_1B8C235A8();

  result = swift_beginAccess();
  v25 = *(v2 + 24);
  if (*(v25 + 16))
  {
    v26 = v28;
    sub_1B8B548DC(v25 + v16, v28);
    (*(v10 + 56))(v26, 0, 1, v27);
    result = sub_1B8B3433C(v26, &qword_1EBAA6588, &unk_1B8C2DB50);
    if (*(v25 + 16))
    {
      sub_1B8BCC558(0, 1);
      swift_endAccess();
      v32 = v2;
      swift_getKeyPath();
      sub_1B8C23598();

      return sub_1B8B54C40(v31);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8BC535C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = sub_1B8C23348();
  v6 = v5;

  v7 = [v2 mainBundle];
  v8 = sub_1B8C23348();
  v10 = v9;

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v11 = sub_1B8C23C38();
  __swift_project_value_buffer(v11, qword_1EBAB3A30);
  v12 = sub_1B8C23C18();
  v13 = sub_1B8C25498();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B8B22000, v12, v13, "Showing Load More Button", v14, 2u);
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
  }

  *&v21 = v4;
  *(&v21 + 1) = v6;
  *&v22 = v8;
  *(&v22 + 1) = v10;
  LOBYTE(v23) = 1;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v18[0] = v21;
  v18[1] = v22;
  v19[0] = v23;
  *(v19 + 9) = 0u;
  swift_getKeyPath();
  v20 = v1;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v15 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
  swift_beginAccess();
  v16 = *(v1 + v15);

  sub_1B8BA0D30(v18);

  return sub_1B8BCCE58(&v21);
}

uint64_t sub_1B8BC5608()
{
  v1[28] = v0;
  v2 = sub_1B8C23568();
  v1[29] = v2;
  v3 = *(v2 - 8);
  v1[30] = v3;
  v4 = *(v3 + 64) + 15;
  v1[31] = swift_task_alloc();
  v5 = *(type metadata accessor for BatchInteraction(0) - 8);
  v1[32] = v5;
  v6 = *(v5 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BC5738, 0, 0);
}

uint64_t sub_1B8BC5738()
{
  v55 = v0;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_1B8C23C38();
  v0[36] = __swift_project_value_buffer(v2, qword_1EBAB3A30);

  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25468();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  if (!v5)
  {
    v13 = v0[28];

    KeyPath = 0x80000001B8C35940;
    goto LABEL_8;
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v54 = v8;
  *v7 = 136315394;
  KeyPath = 0x80000001B8C35940;
  *(v7 + 4) = sub_1B8B5DD48(0xD000000000000024, 0x80000001B8C35940, &v54);
  *(v7 + 12) = 2048;
  swift_getKeyPath();
  v0[27] = v6;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  v10 = *(v6 + 16);
  if (v10 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8C258B8())
  {
    v12 = v0[28];
    *(v7 + 14) = i;

    _os_log_impl(&dword_1B8B22000, v3, v4, "%s - nullableInteractions.count = %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);

LABEL_8:
    v14 = v0[28];
    v15 = OBJC_IVAR____TtC8Feedback18DonationController___observationRegistrar;
    v0[37] = KeyPath;
    v0[38] = v15;
    swift_beginAccess();
    v16 = v0[38];
    v17 = v0[28];
    swift_getKeyPath();
    v0[14] = v17;
    v3 = sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    v0[39] = v3;
    sub_1B8C23588();

    v18 = *(v17 + 16);
    if (v18 >> 62)
    {
      if (v18 < 0)
      {
        v53 = *(v17 + 16);
      }

      v19 = sub_1B8C258B8();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v0[36];
    v21 = sub_1B8C23C18();
    v22 = sub_1B8C25468();
    v23 = os_log_type_enabled(v21, v22);
    if (!v19)
    {
      break;
    }

    if (v23)
    {
      v24 = v0[37];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v54 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1B8B5DD48(0xD000000000000024, v24, &v54);
      _os_log_impl(&dword_1B8B22000, v21, v22, "%s - loop iteration", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1B8CCB0E0](v26, -1, -1);
      MEMORY[0x1B8CCB0E0](v25, -1, -1);
    }

    v27 = v0[38];
    v28 = v0[36];
    v29 = v0[28];
    swift_getKeyPath();
    v0[15] = v29;
    sub_1B8C23588();

    v0[16] = v29;
    swift_getKeyPath();
    sub_1B8C235A8();

    swift_beginAccess();
    sub_1B8BC47DC();
    v4 = v30;
    v0[40] = v30;
    swift_endAccess();
    v0[17] = v29;
    swift_getKeyPath();
    sub_1B8C23598();

    v31 = sub_1B8C23C18();
    v32 = sub_1B8C25468();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[37];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1B8B5DD48(0xD000000000000024, v33, &v54);
      _os_log_impl(&dword_1B8B22000, v31, v32, "%s - Will load nullable interaction", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B8CCB0E0](v35, -1, -1);
      MEMORY[0x1B8CCB0E0](v34, -1, -1);
    }

    v8 = v0[38];
    v36 = v0[28];
    KeyPath = swift_getKeyPath();
    v0[18] = v36;
    sub_1B8C23588();

    v0[19] = v36;
    v7 = swift_getKeyPath();
    sub_1B8C235A8();

    v37 = *(v36 + 56);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (!v38)
    {
      v40 = v0[38];
      v41 = v0[28];
      *(v41 + 56) = v39;
      v0[20] = v41;
      swift_getKeyPath();
      sub_1B8C23598();

      v42 = swift_task_alloc();
      v0[41] = v42;
      *v42 = v0;
      v42[1] = sub_1B8BC5EBC;
      v43 = v0[34];

      return sub_1B8B42B38(v43);
    }

    __break(1u);
LABEL_28:
    ;
  }

  if (v23)
  {
    v45 = v0[37];
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_1B8B5DD48(0xD000000000000024, v45, &v54);
    _os_log_impl(&dword_1B8B22000, v21, v22, "%s - exited loop", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1B8CCB0E0](v47, -1, -1);
    MEMORY[0x1B8CCB0E0](v46, -1, -1);
  }

  v49 = v0[34];
  v48 = v0[35];
  v50 = v0[33];
  v51 = v0[31];

  v52 = v0[1];

  return v52();
}

uint64_t sub_1B8BC5EBC()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1B8BC686C;
  }

  else
  {
    v3 = sub_1B8BC5FD0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8BC5FD0()
{
  v71 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[28];
  sub_1B8B54940(v0[34], v3);
  sub_1B8B548DC(v3, v4);
  swift_getKeyPath();
  v0[21] = v5;
  sub_1B8C23588();

  v0[22] = v5;
  swift_getKeyPath();
  sub_1B8C235A8();

  swift_beginAccess();
  v6 = *(v5 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v68 = v0[28];
    v6 = sub_1B8B5D028(0, v6[2] + 1, 1, v6);
    *(v68 + 24) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1B8B5D028(v8 > 1, v9 + 1, 1, v6);
  }

  v11 = v0[38];
  v10 = v0[39];
  v13 = v0[32];
  v12 = v0[33];
  v14 = v0[28];
  v6[2] = v9 + 1;
  sub_1B8B54940(v12, v6 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9);
  *(v14 + 24) = v6;
  swift_endAccess();
  v0[23] = v14;
  swift_getKeyPath();
  sub_1B8C23598();

  swift_getKeyPath();
  v0[24] = v14;
  sub_1B8C23588();

  v0[25] = v14;
  swift_getKeyPath();
  sub_1B8C235A8();

  v15 = *(v14 + 48);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = v0[38];
    v19 = v0[39];
    v20 = v0[36];
    v21 = v0[28];
    *(v21 + 48) = v17;
    v0[26] = v21;
    swift_getKeyPath();
    sub_1B8C23598();

    v22 = sub_1B8C23C18();
    v23 = sub_1B8C25468();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[40];
    if (v24)
    {
      v26 = v0[37];
      v69 = v0[35];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v70 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1B8B5DD48(0xD000000000000024, v26, &v70);
      _os_log_impl(&dword_1B8B22000, v22, v23, "%s - successfully fetched interaction", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B8CCB0E0](v28, -1, -1);
      MEMORY[0x1B8CCB0E0](v27, -1, -1);

      v29 = v69;
    }

    else
    {
      v30 = v0[35];

      v29 = v30;
    }

    sub_1B8B54C40(v29);
    v31 = v0[38];
    v32 = v0[28];
    swift_getKeyPath();
    v0[14] = v32;
    v0[39] = sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23588();

    v33 = *(v32 + 16);
    if (!(v33 >> 62))
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }
  }

  v34 = sub_1B8C258B8();
LABEL_11:
  v35 = v0[36];
  v36 = sub_1B8C23C18();
  v37 = sub_1B8C25468();
  v38 = os_log_type_enabled(v36, v37);
  if (v34)
  {
    if (v38)
    {
      v39 = v0[37];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v70 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_1B8B5DD48(0xD000000000000024, v39, &v70);
      _os_log_impl(&dword_1B8B22000, v36, v37, "%s - loop iteration", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1B8CCB0E0](v41, -1, -1);
      MEMORY[0x1B8CCB0E0](v40, -1, -1);
    }

    v42 = v0[38];
    v43 = v0[36];
    v44 = v0[28];
    swift_getKeyPath();
    v0[15] = v44;
    sub_1B8C23588();

    v0[16] = v44;
    swift_getKeyPath();
    sub_1B8C235A8();

    swift_beginAccess();
    sub_1B8BC47DC();
    v0[40] = v45;
    swift_endAccess();
    v0[17] = v44;
    swift_getKeyPath();
    sub_1B8C23598();

    v46 = sub_1B8C23C18();
    v47 = sub_1B8C25468();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v0[37];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v70 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_1B8B5DD48(0xD000000000000024, v48, &v70);
      _os_log_impl(&dword_1B8B22000, v46, v47, "%s - Will load nullable interaction", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x1B8CCB0E0](v50, -1, -1);
      MEMORY[0x1B8CCB0E0](v49, -1, -1);
    }

    v51 = v0[38];
    v52 = v0[28];
    swift_getKeyPath();
    v0[18] = v52;
    sub_1B8C23588();

    v0[19] = v52;
    swift_getKeyPath();
    sub_1B8C235A8();

    v54 = *(v52 + 56);
    v16 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      v56 = v0[38];
      v57 = v0[28];
      *(v57 + 56) = v55;
      v0[20] = v57;
      swift_getKeyPath();
      sub_1B8C23598();

      v58 = swift_task_alloc();
      v0[41] = v58;
      *v58 = v0;
      v58[1] = sub_1B8BC5EBC;
      v59 = v0[34];

      return sub_1B8B42B38(v59);
    }
  }

  else
  {
    if (v38)
    {
      v60 = v0[37];
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70 = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_1B8B5DD48(0xD000000000000024, v60, &v70);
      _os_log_impl(&dword_1B8B22000, v36, v37, "%s - exited loop", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x1B8CCB0E0](v62, -1, -1);
      MEMORY[0x1B8CCB0E0](v61, -1, -1);
    }

    v64 = v0[34];
    v63 = v0[35];
    v65 = v0[33];
    v66 = v0[31];

    v67 = v0[1];

    return v67();
  }

  return result;
}

uint64_t sub_1B8BC686C()
{
  v63 = v0;
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[36];

  v4 = v1;
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25478();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[42];
  v9 = v0[40];
  if (v7)
  {
    v10 = v0[37];
    v12 = v0[30];
    v11 = v0[31];
    v13 = v0[29];
    v14 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = v61;
    *v14 = 136446722;
    *(v14 + 4) = sub_1B8B5DD48(0xD000000000000024, v10, &v62);
    *(v14 + 12) = 2082;
    (*(v12 + 16))(v11, v9 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id, v13);
    sub_1B8BCD078(&qword_1EBAA6260, MEMORY[0x1E69695A8]);
    v15 = sub_1B8C259E8();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1B8B5DD48(v15, v17, &v62);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    v19 = v8;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v20;
    *v60 = v20;
    _os_log_impl(&dword_1B8B22000, v5, v6, "%{public}s - Error fetching interaction %{public}s: %{public}@", v14, 0x20u);
    sub_1B8B3433C(v60, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v60, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v61, -1, -1);
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
  }

  else
  {
  }

  v21 = v0[38];
  v22 = v0[28];
  swift_getKeyPath();
  v0[14] = v22;
  v0[39] = sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v23 = *(v22 + 16);
  if (v23 >> 62)
  {
    if (v23 < 0)
    {
      v59 = *(v22 + 16);
    }

    v24 = sub_1B8C258B8();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v0[36];
  v26 = sub_1B8C23C18();
  v27 = sub_1B8C25468();
  v28 = os_log_type_enabled(v26, v27);
  if (v24)
  {
    if (v28)
    {
      v29 = v0[37];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v62 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1B8B5DD48(0xD000000000000024, v29, &v62);
      _os_log_impl(&dword_1B8B22000, v26, v27, "%s - loop iteration", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1B8CCB0E0](v31, -1, -1);
      MEMORY[0x1B8CCB0E0](v30, -1, -1);
    }

    v32 = v0[38];
    v33 = v0[36];
    v34 = v0[28];
    swift_getKeyPath();
    v0[15] = v34;
    sub_1B8C23588();

    v0[16] = v34;
    swift_getKeyPath();
    sub_1B8C235A8();

    swift_beginAccess();
    sub_1B8BC47DC();
    v0[40] = v35;
    swift_endAccess();
    v0[17] = v34;
    swift_getKeyPath();
    sub_1B8C23598();

    v36 = sub_1B8C23C18();
    v37 = sub_1B8C25468();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v0[37];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v62 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1B8B5DD48(0xD000000000000024, v38, &v62);
      _os_log_impl(&dword_1B8B22000, v36, v37, "%s - Will load nullable interaction", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1B8CCB0E0](v40, -1, -1);
      MEMORY[0x1B8CCB0E0](v39, -1, -1);
    }

    v41 = v0[38];
    v42 = v0[28];
    swift_getKeyPath();
    v0[18] = v42;
    sub_1B8C23588();

    v0[19] = v42;
    swift_getKeyPath();
    sub_1B8C235A8();

    v44 = *(v42 + 56);
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      __break(1u);
    }

    else
    {
      v47 = v0[38];
      v48 = v0[28];
      *(v48 + 56) = v46;
      v0[20] = v48;
      swift_getKeyPath();
      sub_1B8C23598();

      v49 = swift_task_alloc();
      v0[41] = v49;
      *v49 = v0;
      v49[1] = sub_1B8BC5EBC;
      v50 = v0[34];

      return sub_1B8B42B38(v50);
    }
  }

  else
  {
    if (v28)
    {
      v51 = v0[37];
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v62 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_1B8B5DD48(0xD000000000000024, v51, &v62);
      _os_log_impl(&dword_1B8B22000, v26, v27, "%s - exited loop", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x1B8CCB0E0](v53, -1, -1);
      MEMORY[0x1B8CCB0E0](v52, -1, -1);
    }

    v55 = v0[34];
    v54 = v0[35];
    v56 = v0[33];
    v57 = v0[31];

    v58 = v0[1];

    return v58();
  }

  return result;
}

uint64_t sub_1B8BC702C()
{
  v24 = v0;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  v0[11] = __swift_project_value_buffer(v1, qword_1EBAB3A30);
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25468();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1B8B5DD48(0xD00000000000001BLL, 0x80000001B8C35920, &v23);
    _os_log_impl(&dword_1B8B22000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
    MEMORY[0x1B8CCB0E0](v4, -1, -1);
  }

  else
  {
  }

  v6 = v0[10];
  v7 = OBJC_IVAR____TtC8Feedback18DonationController___observationRegistrar;
  v0[12] = 0x80000001B8C35920;
  v0[13] = v7;
  swift_beginAccess();
  v8 = v0[10];
  v9 = v0[11];

  v10 = sub_1B8C23C18();
  v11 = sub_1B8C25468();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    swift_getKeyPath();
    v0[9] = v13;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23588();

    v15 = *(v13 + 16);
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v22 = *(v13 + 16);
      }

      v16 = sub_1B8C258B8();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v0[10];
    *(v14 + 4) = v16;

    _os_log_impl(&dword_1B8B22000, v10, v11, "countOfNullable in loop: %ld", v14, 0xCu);
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
  }

  else
  {
    v18 = v0[10];
  }

  v19 = swift_task_alloc();
  v0[14] = v19;
  *v19 = v0;
  v19[1] = sub_1B8BC7350;
  v20 = v0[10];

  return sub_1B8BC5608();
}

uint64_t sub_1B8BC7350()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8BC744C, 0, 0);
}

uint64_t sub_1B8BC744C()
{
  v47 = v0;
  v1 = v0[11];
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25468();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B8B5DD48(0xD00000000000001BLL, v4, &v46);
    _os_log_impl(&dword_1B8B22000, v2, v3, "%s - finished loop iteration", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  v7 = v0[13];
  v8 = v0[10];
  swift_getKeyPath();
  v0[5] = v8;
  v0[15] = sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v9 = *(v8 + 16);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v31 = *(v8 + 16);
    }

    if (sub_1B8C258B8())
    {
      goto LABEL_5;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v10 = v0[15];
    v11 = v0[13];
    v12 = v0[10];
    swift_getKeyPath();
    v0[6] = v12;
    sub_1B8C23588();

    if (*(v12 + 48) > 9)
    {
LABEL_32:
      v42 = v0[1];
      goto LABEL_33;
    }

    v13 = v0[15];
    v14 = v0[13];
    v15 = v0[10];
    swift_getKeyPath();
    v0[7] = v15;
    sub_1B8C23588();

    v16 = *(v15 + 16);
    if (!(v16 >> 62))
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        v17 = v0[10];
        v18 = v0[11];

        v19 = sub_1B8C23C18();
        v20 = sub_1B8C25468();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = v0[13];
          v22 = v0[10];
          v23 = swift_slowAlloc();
          *v23 = 134217984;
          swift_getKeyPath();
          v0[9] = v22;
          sub_1B8C23588();

          v24 = *(v22 + 16);
          if (v24 >> 62)
          {
            if (v24 < 0)
            {
              v45 = *(v22 + 16);
            }

            v25 = sub_1B8C258B8();
          }

          else
          {
            v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v26 = v0[10];
          *(v23 + 4) = v25;

          _os_log_impl(&dword_1B8B22000, v19, v20, "countOfNullable in loop: %ld", v23, 0xCu);
          MEMORY[0x1B8CCB0E0](v23, -1, -1);
        }

        else
        {
          v27 = v0[10];
        }

        v28 = swift_task_alloc();
        v0[14] = v28;
        *v28 = v0;
        v28[1] = sub_1B8BC7350;
        v29 = v0[10];

        return sub_1B8BC5608();
      }

      goto LABEL_32;
    }

LABEL_31:
    if (sub_1B8C258B8())
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

  v32 = v0[13];
  v33 = v0[10];
  swift_getKeyPath();
  v0[8] = v33;
  sub_1B8C23588();

  v34 = *(v33 + 48);
  v35 = 10 - v34;
  if (__OFSUB__(10, v34))
  {
    __break(1u);
    goto LABEL_31;
  }

  v36 = v0[11];
  v37 = sub_1B8C23C18();
  v38 = sub_1B8C25468();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = v35;
    _os_log_impl(&dword_1B8B22000, v37, v38, "countOfNullable needs to be refetched, will fetch %ld", v39, 0xCu);
    MEMORY[0x1B8CCB0E0](v39, -1, -1);
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
    v40 = 0;
    goto LABEL_26;
  }

  if (HIDWORD(v35))
  {
    v40 = 1;
LABEL_26:
    sub_1B8BCD024();
    swift_allocError();
    *v41 = v40;
    swift_willThrow();
    v42 = v0[1];
LABEL_33:

    return v42();
  }

  v43 = swift_task_alloc();
  v0[16] = v43;
  *v43 = v0;
  v43[1] = sub_1B8BC79CC;
  v44 = v0[10];

  return sub_1B8BC7DC4(v35);
}

uint64_t sub_1B8BC79CC()
{
  v2 = *(*v1 + 128);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8BC7AFC, 0, 0);
  }
}

uint64_t sub_1B8BC7AFC()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  swift_getKeyPath();
  v0[6] = v3;
  sub_1B8C23588();

  if (*(v3 + 48) < 10)
  {
    v4 = v0[15];
    v5 = v0[13];
    v6 = v0[10];
    swift_getKeyPath();
    v0[7] = v6;
    sub_1B8C23588();

    v7 = *(v6 + 16);
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v22 = *(v6 + 16);
      }

      if (sub_1B8C258B8())
      {
        goto LABEL_4;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v8 = v0[10];
      v9 = v0[11];

      v10 = sub_1B8C23C18();
      v11 = sub_1B8C25468();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = v0[13];
        v13 = v0[10];
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        swift_getKeyPath();
        v0[9] = v13;
        sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
        sub_1B8C23588();

        v15 = *(v13 + 16);
        if (v15 >> 62)
        {
          if (v15 < 0)
          {
            v24 = *(v13 + 16);
          }

          v16 = sub_1B8C258B8();
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v17 = v0[10];
        *(v14 + 4) = v16;

        _os_log_impl(&dword_1B8B22000, v10, v11, "countOfNullable in loop: %ld", v14, 0xCu);
        MEMORY[0x1B8CCB0E0](v14, -1, -1);
      }

      else
      {
        v18 = v0[10];
      }

      v19 = swift_task_alloc();
      v0[14] = v19;
      *v19 = v0;
      v19[1] = sub_1B8BC7350;
      v20 = v0[10];

      return sub_1B8BC5608();
    }
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1B8BC7DC4(int a1)
{
  *(v2 + 96) = v1;
  *(v2 + 216) = a1;
  v3 = *(type metadata accessor for BatchInteraction(0) - 8);
  *(v2 + 104) = v3;
  v4 = *(v3 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v5 = sub_1B8C23568();
  *(v2 + 120) = v5;
  v6 = *(v5 - 8);
  *(v2 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BC7F10, 0, 0);
}

uint64_t sub_1B8BC7F10()
{
  v77 = v0;
  v1 = *(v0 + 96);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  *(v0 + 72) = v1;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v76 = v2;

    sub_1B8C14008(0, v4, 0);
    v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v73 = *(v6 + 72);
    do
    {
      v8 = *(v0 + 168);
      v9 = *(v0 + 112);
      v10 = *(v0 + 120);
      sub_1B8B548DC(v7, v9);
      (*(v5 + 16))(v8, v9, v10);
      sub_1B8B54C40(v9);
      v76 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1B8C14008(v11 > 1, v12 + 1, 1);
        v2 = v76;
      }

      v13 = *(v0 + 168);
      v14 = *(v0 + 120);
      *(v2 + 16) = v12 + 1;
      (*(v5 + 32))(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v13, v14);
      v7 += v73;
      --v4;
    }

    while (v4);
  }

  v15 = *(v0 + 96);
  sub_1B8B58A04(v2);
  swift_getKeyPath();
  *(v0 + 80) = v15;
  sub_1B8C23588();

  swift_beginAccess();
  v16 = *(v15 + 16);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v68 = *(v15 + 16);
    }

    v17 = sub_1B8C258B8();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v76 = MEMORY[0x1E69E7CC0];

    v19 = sub_1B8C14008(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE03E78](v19, v20, v21);
    }

    v22 = 0;
    v23 = *(v0 + 128);
    v18 = v76;
    v71 = v16 & 0xC000000000000001;
    v74 = v16;
    v24 = (v23 + 16);
    do
    {
      v25 = v17;
      v26 = *(v0 + 160);
      v27 = *(v0 + 120);
      if (v71)
      {
        v28 = MEMORY[0x1B8CCA4C0](v22, v74);
        (*v24)(v26, v28 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id, v27);
        swift_unknownObjectRelease();
      }

      else
      {
        (*v24)(v26, *(v74 + 8 * v22 + 32) + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id, v27);
      }

      v76 = v18;
      v30 = *(v18 + 16);
      v29 = *(v18 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1B8C14008(v29 > 1, v30 + 1, 1);
        v18 = v76;
      }

      v31 = *(v0 + 160);
      v32 = *(v0 + 120);
      ++v22;
      *(v18 + 16) = v30 + 1;
      (*(v23 + 32))(v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v30, v31, v32);
      v17 = v25;
    }

    while (v25 != v22);
  }

  v33 = *(v0 + 96);
  sub_1B8B58A04(v18);
  swift_getKeyPath();
  *(v0 + 88) = v33;
  sub_1B8C23588();

  v34 = *(v33 + 32);
  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v37 = *(v0 + 128);
    v38 = *(v0 + 104);
    v76 = MEMORY[0x1E69E7CC0];

    sub_1B8C14008(0, v35, 0);
    v36 = v76;
    v39 = v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v75 = *(v38 + 72);
    do
    {
      v40 = *(v0 + 152);
      v42 = *(v0 + 112);
      v41 = *(v0 + 120);
      sub_1B8B548DC(v39, v42);
      (*(v37 + 16))(v40, v42, v41);
      sub_1B8B54C40(v42);
      v76 = v36;
      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1B8C14008(v43 > 1, v44 + 1, 1);
        v36 = v76;
      }

      v45 = *(v0 + 152);
      v46 = *(v0 + 120);
      *(v36 + 16) = v44 + 1;
      (*(v37 + 32))(v36 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v44, v45, v46);
      v39 += v75;
      --v35;
    }

    while (v35);
  }

  sub_1B8B58A04(v36);
  v47 = *(v0 + 64);
  *(v0 + 176) = v47;
  v48 = *(v47 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v50 = *(v0 + 128);
    v76 = MEMORY[0x1E69E7CC0];
    sub_1B8C13FE8(0, v48, 0);
    v49 = v76;
    v51 = *(v50 + 16);
    v50 += 16;
    v52 = v47 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
    v70 = *(v50 + 56);
    v72 = v51;
    v53 = (v50 - 8);
    do
    {
      v54 = *(v0 + 144);
      v55 = *(v0 + 120);
      v72(v54, v52, v55);
      v56 = sub_1B8C23538();
      v58 = v57;
      (*v53)(v54, v55);
      v76 = v49;
      v60 = *(v49 + 16);
      v59 = *(v49 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1B8C13FE8((v59 > 1), v60 + 1, 1);
        v49 = v76;
      }

      *(v49 + 16) = v60 + 1;
      v61 = v49 + 16 * v60;
      *(v61 + 32) = v56;
      *(v61 + 40) = v58;
      v52 += v70;
      --v48;
    }

    while (v48);
  }

  v62 = sub_1B8BCC8B8(v49);

  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = sub_1B8BCBD9C(*(v62 + 16), 0);
    v65 = sub_1B8BCC130(&v76, v64 + 4, v63, v62);
    sub_1B8B29F70();
    if (v65 == v63)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  v64 = MEMORY[0x1E69E7CC0];
LABEL_34:
  *(v0 + 184) = v64;
  sub_1B8C23688();
  v66 = *(MEMORY[0x1E699C1A8] + 4);
  v67 = swift_task_alloc();
  *(v0 + 192) = v67;
  *v67 = v0;
  v67[1] = sub_1B8BC8680;
  v19 = *(v0 + 216);
  v20 = 1;
  v21 = v64;

  return MEMORY[0x1EEE03E78](v19, v20, v21);
}

uint64_t sub_1B8BC8680(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 184);
  v9 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v6 = v3[22];

    v7 = sub_1B8BC8A00;
  }

  else
  {
    v7 = sub_1B8BC87C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8BC87C4()
{
  v1 = v0[25];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[16];
    v31 = MEMORY[0x1E69E7CC0];
    sub_1B8C25868();
    v5 = *(v3 + 16);
    v4 = v3 + 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v29 = *(v4 + 56);
    v30 = v5;
    do
    {
      v8 = v0[17];
      v7 = v0[18];
      v9 = v0[15];
      v30(v7, v6, v9);
      v30(v8, v7, v9);
      v10 = type metadata accessor for NullableBatchInteraction(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      *(v13 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation) = 0;
      sub_1B8C235B8();
      (*(v4 - 8))(v7, v9);
      (*(v4 + 16))(v13 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id, v8, v9);
      sub_1B8C25848();
      v14 = *(v31 + 16);
      sub_1B8C25878();
      sub_1B8C25888();
      sub_1B8C25858();
      v6 += v29;
      --v2;
    }

    while (v2);
    v15 = v0[25];
    v16 = v0[22];

    v17 = v31;
  }

  else
  {
    v18 = v0[22];
    v19 = v0[25];

    v17 = MEMORY[0x1E69E7CC0];
  }

  v21 = v0[20];
  v20 = v0[21];
  v23 = v0[18];
  v22 = v0[19];
  v24 = v0[17];
  v25 = v0[14];
  v26 = v0[12];
  sub_1B8BC2F0C(v17);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1B8BC8A00()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[14];

  v7 = v0[1];
  v8 = v0[26];

  return v7();
}

uint64_t sub_1B8BC8AA8()
{
  v1[25] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v3 = type metadata accessor for BatchInteraction(0);
  v1[27] = v3;
  v4 = *(v3 - 8);
  v1[28] = v4;
  v5 = *(v4 + 64) + 15;
  v1[29] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BC8BFC, 0, 0);
}

uint64_t sub_1B8BC8BFC()
{
  v45 = v0;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  v0[34] = __swift_project_value_buffer(v1, qword_1EBAB3A30);
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25468();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v44[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1B8B5DD48(0xD000000000000016, 0x80000001B8C35900, v44);
    _os_log_impl(&dword_1B8B22000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
    MEMORY[0x1B8CCB0E0](v4, -1, -1);
  }

  v6 = v0[32];
  v7 = v0[33];
  v8 = v0[27];
  v9 = v0[28];
  v10 = v0[25];
  v11 = *(v9 + 56);
  v0[35] = v11;
  v0[36] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v7, 1, 1, v8);
  v0[37] = OBJC_IVAR____TtC8Feedback18DonationController___observationRegistrar;
  swift_beginAccess();
  sub_1B8B34450(v7, v6, &qword_1EBAA6588, &unk_1B8C2DB50);
  v12 = *(v9 + 48);
  v0[38] = v12;
  if (v12(v6, 1, v8) == 1)
  {
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    v13 = swift_task_alloc();
    v0[39] = v13;
    *v13 = v0;
    v13[1] = sub_1B8BC924C;
    v14 = v0[25];

    return sub_1B8BC7DC4(10);
  }

  else
  {
    v16 = v0[33];
    v17 = v0[30];
    v18 = v0[27];
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    sub_1B8B34450(v16, v17, &qword_1EBAA6588, &unk_1B8C2DB50);
    if (v12(v17, 1, v18) == 1)
    {
      v19 = v0[25];
      sub_1B8B3433C(v0[30], &qword_1EBAA6588, &unk_1B8C2DB50);
      if (*(v19 + 64))
      {
        v20 = v0[37];
        v21 = v0[25];
        swift_getKeyPath();
        v22 = swift_task_alloc();
        *(v22 + 16) = v21;
        *(v22 + 24) = 0;
        v0[23] = v21;
        sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
        sub_1B8C23578();
      }

      else
      {
        *(v19 + 64) = 0;
      }

      sub_1B8BCCF1C();
      swift_allocError();
      swift_willThrow();
      v39 = v0[32];
      v41 = v0[30];
      v40 = v0[31];
      v42 = v0[29];
      v43 = v0[26];
      sub_1B8B3433C(v0[33], &qword_1EBAA6588, &unk_1B8C2DB50);

      v38 = v0[1];
    }

    else
    {
      v23 = v0[37];
      v24 = v0[33];
      v25 = v0[29];
      v27 = v0[25];
      v26 = v0[26];
      sub_1B8B54940(v0[30], v25);
      sub_1B8BC4D78(v25);
      swift_getKeyPath();
      v0[24] = v27;
      sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
      sub_1B8C23588();

      v28 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
      swift_beginAccess();
      v29 = *(v27 + v28);
      v44[0] = xmmword_1B8C28170;
      memset(&v44[1], 0, 41);

      sub_1B8BA0D30(v44);

      v30 = sub_1B8C253A8();
      (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v27;

      sub_1B8BE33EC(0, 0, v26, &unk_1B8C2DD78, v31);

      sub_1B8B54C40(v25);
      sub_1B8B3433C(v24, &qword_1EBAA6588, &unk_1B8C2DB50);
      v33 = v0[32];
      v32 = v0[33];
      v35 = v0[30];
      v34 = v0[31];
      v36 = v0[29];
      v37 = v0[26];

      v38 = v0[1];
    }

    return v38();
  }
}

uint64_t sub_1B8BC924C()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_1B8BCAE44;
  }

  else
  {
    v3 = sub_1B8BC9360;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8BC9360()
{
  v82 = v0;
  v1 = v0[37];
  v2 = v0[25];
  swift_getKeyPath();
  v0[14] = v2;
  v0[41] = sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v35 = *(v2 + 16);
    }

    if (sub_1B8C258B8())
    {
      goto LABEL_3;
    }

LABEL_35:
    v36 = v0[37];
    v37 = v0[33];
    v38 = v0[25];
    swift_getKeyPath();
    v0[22] = v38;
    sub_1B8C23588();

    v39 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
    swift_beginAccess();
    v40 = *(v38 + v39);
    v79 = xmmword_1B8C293B0;
    v80 = 0u;
    memset(v81, 0, sizeof(v81));

    sub_1B8BA0D30(&v79);

    v41 = v37;
    goto LABEL_36;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

LABEL_3:
  v4 = v0[40];
  v5 = v0[41];
  v6 = v0[37];
  v7 = v0[25];
  swift_getKeyPath();
  v0[15] = v7;
  sub_1B8C23588();

  v8 = *(v7 + 16);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v49 = *(v7 + 16);
    }

    if (sub_1B8C258B8())
    {
LABEL_5:
      v9 = v0[41];
      v10 = v0[37];
      v11 = v0[25];
      swift_getKeyPath();
      v0[16] = v11;
      sub_1B8C23588();

      v0[17] = v11;
      KeyPath = swift_getKeyPath();
      sub_1B8C235A8();

      swift_beginAccess();
      v13 = *(v11 + 16);
      v14 = (v13 >> 62);
      if (v13 >> 62)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          v77 = *(v11 + 16);
        }

        result = sub_1B8C258B8();
        if (!result)
        {
          goto LABEL_69;
        }

        if (sub_1B8C258B8())
        {
LABEL_7:
          if ((v13 & 0xC000000000000001) == 0)
          {
            if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_61;
            }

            v15 = *(v13 + 32);

LABEL_10:
            v0[42] = v15;
            if (v14)
            {
              result = sub_1B8C258B8();
              if (!result)
              {
LABEL_67:
                __break(1u);
                goto LABEL_68;
              }

              result = sub_1B8C258B8();
              if (result < 1)
              {
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
                goto LABEL_70;
              }

              result = sub_1B8C258B8();
            }

            else
            {
              result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!result)
              {
                goto LABEL_67;
              }
            }

            KeyPath = (result - 1);
            if (!__OFSUB__(result, 1))
            {
              v17 = v0[25];
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v17 + 16) = v13;
              if (isUniquelyReferenced_nonNull_bridgeObject)
              {
                if (!v14)
                {
                  v14 = (v13 & 0xFFFFFFFFFFFFFF8);
                  if (KeyPath <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_23;
                }
              }

              else if (!v14)
              {
                v14 = (v13 & 0xFFFFFFFFFFFFFF8);
LABEL_23:
                v19 = v14[2];
LABEL_25:
                v20 = v0[25];
                v13 = sub_1B8C25808();
                *(v20 + 16) = v13;
                v14 = (v13 & 0xFFFFFFFFFFFFFF8);
LABEL_26:
                KeyPath = v14 + 4;
                v21 = v14[4];

                if (!(v13 >> 62))
                {
                  v22 = v14[2];
                  result = memmove(v14 + 4, v14 + 5, 8 * v22 - 8);
                  v23 = v22 - 1;
                  if (!__OFSUB__(v22, 1))
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_65;
                }

LABEL_62:
                result = sub_1B8C258B8();
                if (__OFSUB__(result, 1))
                {
LABEL_70:
                  __break(1u);
                  return result;
                }

                memmove(KeyPath, v14 + 5, 8 * (result - 1));
                result = sub_1B8C258B8();
                v23 = result - 1;
                if (!__OFSUB__(result, 1))
                {
LABEL_28:
                  v24 = v0[41];
                  v25 = v0[37];
                  v26 = v0[25];
                  v14[2] = v23;
                  *(v26 + 16) = v13;
                  swift_endAccess();
                  v0[18] = v26;
                  swift_getKeyPath();
                  sub_1B8C23598();

                  swift_getKeyPath();
                  v0[19] = v26;
                  sub_1B8C23588();

                  v0[20] = v26;
                  swift_getKeyPath();
                  sub_1B8C235A8();

                  v27 = *(v26 + 56);
                  v28 = __OFADD__(v27, 1);
                  v29 = v27 + 1;
                  if (!v28)
                  {
                    v30 = v0[41];
                    v31 = v0[37];
                    v32 = v0[25];
                    *(v32 + 56) = v29;
                    v0[21] = v32;
                    swift_getKeyPath();
                    sub_1B8C23598();

                    v33 = swift_task_alloc();
                    v0[43] = v33;
                    *v33 = v0;
                    v33[1] = sub_1B8BC9D70;
                    v34 = v0[31];

                    return sub_1B8B42B38(v34);
                  }

                  goto LABEL_66;
                }

LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
                goto LABEL_67;
              }

              sub_1B8C258B8();
              goto LABEL_25;
            }

LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

LABEL_59:
          v15 = MEMORY[0x1B8CCA4C0](0, v13);
          goto LABEL_10;
        }

        __break(1u);
      }

      else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_59;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  v50 = v0[38];
  v51 = v0[32];
  v52 = v0[27];
  v53 = v0[28] + 48;
  sub_1B8B34450(v0[33], v51, &qword_1EBAA6588, &unk_1B8C2DB50);
  if (v50(v51, 1, v52) == 1)
  {
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    v54 = swift_task_alloc();
    v0[39] = v54;
    *v54 = v0;
    v54[1] = sub_1B8BC924C;
    v55 = v0[25];

    return sub_1B8BC7DC4(10);
  }

  v56 = v0[38];
  v57 = v0[33];
  v58 = v0[30];
  v59 = v0[27];
  sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
  sub_1B8B34450(v57, v58, &qword_1EBAA6588, &unk_1B8C2DB50);
  if (v56(v58, 1, v59) == 1)
  {
    v60 = v0[25];
    sub_1B8B3433C(v0[30], &qword_1EBAA6588, &unk_1B8C2DB50);
    if (*(v60 + 64))
    {
      v61 = v0[37];
      v62 = v0[25];
      swift_getKeyPath();
      v63 = swift_task_alloc();
      *(v63 + 16) = v62;
      *(v63 + 24) = 0;
      v0[23] = v62;
      sub_1B8C23578();
    }

    else
    {
      *(v60 + 64) = 0;
    }

    sub_1B8BCCF1C();
    swift_allocError();
    swift_willThrow();
    v72 = v0[32];
    v74 = v0[30];
    v73 = v0[31];
    v75 = v0[29];
    v76 = v0[26];
    sub_1B8B3433C(v0[33], &qword_1EBAA6588, &unk_1B8C2DB50);

    v48 = v0[1];
    goto LABEL_37;
  }

  v64 = v0[37];
  v78 = v0[33];
  v65 = v0[29];
  v67 = v0[25];
  v66 = v0[26];
  sub_1B8B54940(v0[30], v65);
  sub_1B8BC4D78(v65);
  swift_getKeyPath();
  v0[24] = v67;
  sub_1B8C23588();

  v68 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
  swift_beginAccess();
  v69 = *(v67 + v68);
  v79 = xmmword_1B8C28170;
  v80 = 0u;
  memset(v81, 0, sizeof(v81));

  sub_1B8BA0D30(&v79);

  v70 = sub_1B8C253A8();
  (*(*(v70 - 8) + 56))(v66, 1, 1, v70);
  v71 = swift_allocObject();
  v71[2] = 0;
  v71[3] = 0;
  v71[4] = v67;

  sub_1B8BE33EC(0, 0, v66, &unk_1B8C2DD78, v71);

  sub_1B8B54C40(v65);
  v41 = v78;
LABEL_36:
  sub_1B8B3433C(v41, &qword_1EBAA6588, &unk_1B8C2DB50);
  v43 = v0[32];
  v42 = v0[33];
  v45 = v0[30];
  v44 = v0[31];
  v46 = v0[29];
  v47 = v0[26];

  v48 = v0[1];
LABEL_37:

  return v48();
}

uint64_t sub_1B8BC9D70()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_1B8BCA3C0;
  }

  else
  {
    v3 = sub_1B8BC9E84;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8BC9E84()
{
  v45 = v0;
  v1 = v0[42];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[27];

  sub_1B8B3433C(v4, &qword_1EBAA6588, &unk_1B8C2DB50);
  v3(v5, 0, 1, v6);
  sub_1B8BCCEAC(v5, v4);
  v7 = v0[44];
  v8 = v0[38];
  v9 = v0[32];
  v10 = v0[27];
  v11 = v0[28] + 48;
  sub_1B8B34450(v0[33], v9, &qword_1EBAA6588, &unk_1B8C2DB50);
  if (v8(v9, 1, v10) == 1)
  {
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    v12 = swift_task_alloc();
    v0[39] = v12;
    *v12 = v0;
    v12[1] = sub_1B8BC924C;
    v13 = v0[25];

    return sub_1B8BC7DC4(10);
  }

  else
  {
    v15 = v0[38];
    v16 = v0[33];
    v17 = v0[30];
    v18 = v0[27];
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    sub_1B8B34450(v16, v17, &qword_1EBAA6588, &unk_1B8C2DB50);
    if (v15(v17, 1, v18) == 1)
    {
      v19 = v0[25];
      sub_1B8B3433C(v0[30], &qword_1EBAA6588, &unk_1B8C2DB50);
      if (*(v19 + 64))
      {
        v20 = v0[37];
        v21 = v0[25];
        swift_getKeyPath();
        v22 = swift_task_alloc();
        *(v22 + 16) = v21;
        *(v22 + 24) = 0;
        v0[23] = v21;
        sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
        sub_1B8C23578();
      }

      else
      {
        *(v19 + 64) = 0;
      }

      sub_1B8BCCF1C();
      swift_allocError();
      swift_willThrow();
      v39 = v0[32];
      v41 = v0[30];
      v40 = v0[31];
      v42 = v0[29];
      v43 = v0[26];
      sub_1B8B3433C(v0[33], &qword_1EBAA6588, &unk_1B8C2DB50);

      v38 = v0[1];
    }

    else
    {
      v23 = v0[37];
      v24 = v0[33];
      v25 = v0[29];
      v27 = v0[25];
      v26 = v0[26];
      sub_1B8B54940(v0[30], v25);
      sub_1B8BC4D78(v25);
      swift_getKeyPath();
      v0[24] = v27;
      sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
      sub_1B8C23588();

      v28 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
      swift_beginAccess();
      v29 = *(v27 + v28);
      v44[0] = xmmword_1B8C28170;
      memset(&v44[1], 0, 41);

      sub_1B8BA0D30(v44);

      v30 = sub_1B8C253A8();
      (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v27;

      sub_1B8BE33EC(0, 0, v26, &unk_1B8C2DD78, v31);

      sub_1B8B54C40(v25);
      sub_1B8B3433C(v24, &qword_1EBAA6588, &unk_1B8C2DB50);
      v33 = v0[32];
      v32 = v0[33];
      v35 = v0[30];
      v34 = v0[31];
      v36 = v0[29];
      v37 = v0[26];

      v38 = v0[1];
    }

    return v38();
  }
}

uint64_t sub_1B8BCA3C0()
{
  v83 = v0;
  v1 = v0[44];
  v2 = v0[34];
  v3 = v1;
  v4 = sub_1B8C23C18();
  v5 = sub_1B8C25478();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[44];
  v8 = v0[42];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v82[0] = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_1B8B5DD48(0xD000000000000016, 0x80000001B8C35900, v82);
    *(v9 + 12) = 2114;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1B8B22000, v4, v5, "%{public}s - error loading interaction: %{public}@", v9, 0x16u);
    sub_1B8B3433C(v10, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  else
  {
    v14 = v0[42];
  }

  v15 = v0[41];
  v16 = v0[37];
  v17 = v0[25];
  swift_getKeyPath();
  v0[15] = v17;
  sub_1B8C23588();

  v18 = *(v17 + 16);
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v45 = *(v17 + 16);
    }

    if (sub_1B8C258B8())
    {
LABEL_6:
      v19 = v0[41];
      v20 = v0[37];
      v21 = v0[25];
      swift_getKeyPath();
      v0[16] = v21;
      sub_1B8C23588();

      v0[17] = v21;
      KeyPath = swift_getKeyPath();
      sub_1B8C235A8();

      swift_beginAccess();
      v23 = *(v21 + 16);
      v24 = (v23 >> 62);
      if (v23 >> 62)
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          v81 = *(v21 + 16);
        }

        result = sub_1B8C258B8();
        if (!result)
        {
          goto LABEL_65;
        }

        if (sub_1B8C258B8())
        {
LABEL_8:
          if ((v23 & 0xC000000000000001) == 0)
          {
            if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_57;
            }

            v25 = *(v23 + 32);

LABEL_11:
            v0[42] = v25;
            if (v24)
            {
              result = sub_1B8C258B8();
              if (!result)
              {
LABEL_63:
                __break(1u);
                goto LABEL_64;
              }

              result = sub_1B8C258B8();
              if (result < 1)
              {
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
                goto LABEL_66;
              }

              result = sub_1B8C258B8();
            }

            else
            {
              result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!result)
              {
                goto LABEL_63;
              }
            }

            KeyPath = (result - 1);
            if (!__OFSUB__(result, 1))
            {
              v27 = v0[25];
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v27 + 16) = v23;
              if (isUniquelyReferenced_nonNull_bridgeObject)
              {
                if (!v24)
                {
                  v24 = (v23 & 0xFFFFFFFFFFFFFF8);
                  if (KeyPath <= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_24;
                }
              }

              else if (!v24)
              {
                v24 = (v23 & 0xFFFFFFFFFFFFFF8);
LABEL_24:
                v29 = v24[2];
LABEL_26:
                v30 = v0[25];
                v23 = sub_1B8C25808();
                *(v30 + 16) = v23;
                v24 = (v23 & 0xFFFFFFFFFFFFFF8);
LABEL_27:
                KeyPath = v24 + 4;
                v31 = v24[4];

                if (!(v23 >> 62))
                {
                  v32 = v24[2];
                  result = memmove(v24 + 4, v24 + 5, 8 * v32 - 8);
                  v33 = v32 - 1;
                  if (!__OFSUB__(v32, 1))
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_61;
                }

LABEL_58:
                result = sub_1B8C258B8();
                if (__OFSUB__(result, 1))
                {
LABEL_66:
                  __break(1u);
                  return result;
                }

                memmove(KeyPath, v24 + 5, 8 * (result - 1));
                result = sub_1B8C258B8();
                v33 = result - 1;
                if (!__OFSUB__(result, 1))
                {
LABEL_29:
                  v34 = v0[41];
                  v35 = v0[37];
                  v36 = v0[25];
                  v24[2] = v33;
                  *(v36 + 16) = v23;
                  swift_endAccess();
                  v0[18] = v36;
                  swift_getKeyPath();
                  sub_1B8C23598();

                  swift_getKeyPath();
                  v0[19] = v36;
                  sub_1B8C23588();

                  v0[20] = v36;
                  swift_getKeyPath();
                  sub_1B8C235A8();

                  v37 = *(v36 + 56);
                  v38 = __OFADD__(v37, 1);
                  v39 = v37 + 1;
                  if (!v38)
                  {
                    v40 = v0[41];
                    v41 = v0[37];
                    v42 = v0[25];
                    *(v42 + 56) = v39;
                    v0[21] = v42;
                    swift_getKeyPath();
                    sub_1B8C23598();

                    v43 = swift_task_alloc();
                    v0[43] = v43;
                    *v43 = v0;
                    v43[1] = sub_1B8BC9D70;
                    v44 = v0[31];

                    return sub_1B8B42B38(v44);
                  }

                  goto LABEL_62;
                }

LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

              sub_1B8C258B8();
              goto LABEL_26;
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

LABEL_55:
          v25 = MEMORY[0x1B8CCA4C0](0, v23);
          goto LABEL_11;
        }

        __break(1u);
      }

      else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  v46 = v0[38];
  v47 = v0[32];
  v48 = v0[27];
  v49 = v0[28] + 48;
  sub_1B8B34450(v0[33], v47, &qword_1EBAA6588, &unk_1B8C2DB50);
  if (v46(v47, 1, v48) == 1)
  {
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    v50 = swift_task_alloc();
    v0[39] = v50;
    *v50 = v0;
    v50[1] = sub_1B8BC924C;
    v51 = v0[25];

    return sub_1B8BC7DC4(10);
  }

  else
  {
    v52 = v0[38];
    v53 = v0[33];
    v54 = v0[30];
    v55 = v0[27];
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    sub_1B8B34450(v53, v54, &qword_1EBAA6588, &unk_1B8C2DB50);
    if (v52(v54, 1, v55) == 1)
    {
      v56 = v0[25];
      sub_1B8B3433C(v0[30], &qword_1EBAA6588, &unk_1B8C2DB50);
      if (*(v56 + 64))
      {
        v57 = v0[37];
        v58 = v0[25];
        swift_getKeyPath();
        v59 = swift_task_alloc();
        *(v59 + 16) = v58;
        *(v59 + 24) = 0;
        v0[23] = v58;
        sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
        sub_1B8C23578();
      }

      else
      {
        *(v56 + 64) = 0;
      }

      sub_1B8BCCF1C();
      swift_allocError();
      swift_willThrow();
      v76 = v0[32];
      v78 = v0[30];
      v77 = v0[31];
      v79 = v0[29];
      v80 = v0[26];
      sub_1B8B3433C(v0[33], &qword_1EBAA6588, &unk_1B8C2DB50);

      v75 = v0[1];
    }

    else
    {
      v60 = v0[37];
      v61 = v0[33];
      v62 = v0[29];
      v64 = v0[25];
      v63 = v0[26];
      sub_1B8B54940(v0[30], v62);
      sub_1B8BC4D78(v62);
      swift_getKeyPath();
      v0[24] = v64;
      sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
      sub_1B8C23588();

      v65 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
      swift_beginAccess();
      v66 = *(v64 + v65);
      v82[0] = xmmword_1B8C28170;
      memset(&v82[1], 0, 41);

      sub_1B8BA0D30(v82);

      v67 = sub_1B8C253A8();
      (*(*(v67 - 8) + 56))(v63, 1, 1, v67);
      v68 = swift_allocObject();
      v68[2] = 0;
      v68[3] = 0;
      v68[4] = v64;

      sub_1B8BE33EC(0, 0, v63, &unk_1B8C2DD78, v68);

      sub_1B8B54C40(v62);
      sub_1B8B3433C(v61, &qword_1EBAA6588, &unk_1B8C2DB50);
      v70 = v0[32];
      v69 = v0[33];
      v72 = v0[30];
      v71 = v0[31];
      v73 = v0[29];
      v74 = v0[26];

      v75 = v0[1];
    }

    return v75();
  }
}

uint64_t sub_1B8BCAE44()
{
  v1 = v0[40];
  v2 = v0[32];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[26];
  sub_1B8B3433C(v0[33], &qword_1EBAA6588, &unk_1B8C2DB50);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B8BCAF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_1B8BCAFA4;

  return sub_1B8BC700C();
}

uint64_t sub_1B8BCAFA4()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1B8BCB1F0;
  }

  else
  {
    v3 = sub_1B8BCB0B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8BCB0B8()
{
  v1 = v0[3];
  if (*(v1 + 64))
  {
    v2 = v0[5];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 0;
    v0[2] = v1;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  else
  {
    *(v1 + 64) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B8BCB1F0()
{
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAB3A30);
  v3 = v1;
  v4 = sub_1B8C23C18();
  v5 = sub_1B8C25478();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B8B22000, v4, v5, "Error populating interactions queue. %{public}@", v8, 0xCu);
    sub_1B8B3433C(v9, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[3];
  if (*(v12 + 64))
  {
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    v0[2] = v12;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
    sub_1B8C23578();
  }

  else
  {
    *(v12 + 64) = 0;
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8BCB478()
{
  v23 = v0;
  v1 = *(v0 + 320);
  swift_getKeyPath();
  *(v0 + 296) = v1;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  if (*(v1 + 64))
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v2 = sub_1B8C23C38();
    __swift_project_value_buffer(v2, qword_1EBAB3A30);
    v3 = sub_1B8C23C18();
    v4 = sub_1B8C25498();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_15;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B8B5DD48(0xD000000000000011, 0x80000001B8C35790, &v22);
    v7 = "%s - Synching. Cannot load more";
LABEL_14:
    _os_log_impl(&dword_1B8B22000, v3, v4, v7, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
LABEL_15:

    v21 = *(v0 + 8);

    return v21();
  }

  v8 = *(v0 + 320);
  swift_getKeyPath();
  *(v0 + 304) = v8;
  sub_1B8C23588();

  v9 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
  swift_beginAccess();
  v10 = *(v8 + v9);
  swift_getKeyPath();
  *(v0 + 312) = v10;
  sub_1B8BCD078(&qword_1EBAA64D0, type metadata accessor for StateController);

  sub_1B8C23588();

  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[3];
  *(v0 + 185) = *(v10 + 57);
  *(v0 + 160) = v12;
  *(v0 + 176) = v13;
  *(v0 + 144) = v11;
  sub_1B8B50FF8(v0 + 144, v0 + 208);

  v14 = *(v0 + 160);
  v15 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v14;
  *(v0 + 48) = v15;
  *(v0 + 57) = *(v0 + 185);
  *(v0 + 80) = xmmword_1B8C293B0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 121) = 0u;
  v16 = *(v0 + 152);
  sub_1B8B3433C(v0 + 16, &qword_1EBAA64D8, &qword_1B8C2DB40);
  if (v16 != 3)
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v20 = sub_1B8C23C38();
    __swift_project_value_buffer(v20, qword_1EBAB3A30);
    v3 = sub_1B8C23C18();
    v4 = sub_1B8C25478();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_15;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B8B5DD48(0xD000000000000011, 0x80000001B8C35790, &v22);
    v7 = "%s - Not empty. Cannot load more";
    goto LABEL_14;
  }

  v17 = swift_task_alloc();
  *(v0 + 328) = v17;
  *v17 = v0;
  v17[1] = sub_1B8BCB900;
  v18 = *(v0 + 320);

  return sub_1B8BC20B4();
}

uint64_t sub_1B8BCB900()
{
  v1 = *(*v0 + 328);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1B8BCB9F4(void *a1)
{
  v2 = sub_1B8C23528();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B8C23518();
  sub_1B8C234D8();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  *a1 = v8;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8C23C38();
  __swift_project_value_buffer(v9, qword_1EBAB3A30);
  v10 = sub_1B8C23C18();
  v11 = sub_1B8C25498();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    swift_beginAccess();
    *(v12 + 4) = *a1;
    _os_log_impl(&dword_1B8B22000, v10, v11, "Donation fetch took: [%{public}f] seconds", v12, 0xCu);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }
}

char *DonationController.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  sub_1B8B3433C(&v0[OBJC_IVAR____TtC8Feedback18DonationController__nextDonation], &qword_1EBAA6588, &unk_1B8C2DB50);
  sub_1B8B3433C(&v0[OBJC_IVAR____TtC8Feedback18DonationController__currentID], &qword_1EBAA79C0, &qword_1B8C2D150);
  v4 = *&v0[OBJC_IVAR____TtC8Feedback18DonationController__stateController];

  v5 = OBJC_IVAR____TtC8Feedback18DonationController___observationRegistrar;
  v6 = sub_1B8C235C8();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t DonationController.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  sub_1B8B3433C(&v0[OBJC_IVAR____TtC8Feedback18DonationController__nextDonation], &qword_1EBAA6588, &unk_1B8C2DB50);
  sub_1B8B3433C(&v0[OBJC_IVAR____TtC8Feedback18DonationController__currentID], &qword_1EBAA79C0, &qword_1B8C2D150);
  v4 = *&v0[OBJC_IVAR____TtC8Feedback18DonationController__stateController];

  v5 = OBJC_IVAR____TtC8Feedback18DonationController___observationRegistrar;
  v6 = sub_1B8C235C8();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_1B8BCBD9C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1B8BCBE20(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7DA0, &unk_1B8C31280);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void sub_1B8BCBEAC()
{
  sub_1B8BCC03C(319, &qword_1EBAA7D68, type metadata accessor for BatchInteraction);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B8BCC03C(319, &qword_1EBAA7D70, MEMORY[0x1E69695A8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1B8C235C8();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8BCC03C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1B8BCC090(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1B8C258B8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1B8C25808();
  *v1 = result;
  return result;
}

void *sub_1B8BCC130(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B8BCC288(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 12) | (v17 << 6)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v22 = *v18;
      v23 = v18[1];
      v24 = v18[3];
      v11[2] = v18[2];
      v11[3] = v24;
      *v11 = v22;
      v11[1] = v23;
      if (v14 == v10)
      {
        sub_1B8B96144(v28, v27);
        goto LABEL_24;
      }

      v11 += 4;
      sub_1B8B96144(v28, v27);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B8BCC410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for BatchInteraction(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1B8BCC558(unint64_t result, uint64_t a2)
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

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1B8B5D028(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1B8BCC410(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1B8BCC618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7D88, &qword_1B8C2DCB8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1B8B34450(a1, &v23 - v16, &qword_1EBAA6588, &unk_1B8C2DB50);
  sub_1B8B34450(a2, &v17[v18], &qword_1EBAA6588, &unk_1B8C2DB50);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1B8B34450(v17, v12, &qword_1EBAA6588, &unk_1B8C2DB50);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_1B8B54940(&v17[v18], v8);
      v21 = sub_1B8B46048(v12, v8);
      sub_1B8B54C40(v8);
      sub_1B8B54C40(v12);
      sub_1B8B3433C(v17, &qword_1EBAA6588, &unk_1B8C2DB50);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    sub_1B8B54C40(v12);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1B8B3433C(v17, &qword_1EBAA7D88, &qword_1B8C2DCB8);
    v20 = 1;
    return v20 & 1;
  }

  sub_1B8B3433C(v17, &qword_1EBAA6588, &unk_1B8C2DB50);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1B8BCC8B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8CCA0C0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B8BF7260(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B8BCC950(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for NullableBatchInteraction(0);
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
  result = sub_1B8C258B8();
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
    result = sub_1B8C258B8();
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

uint64_t sub_1B8BCCA50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23568();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7D78, &qword_1B8C2DC38);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1B8B34450(a1, &v24 - v16, &qword_1EBAA79C0, &qword_1B8C2D150);
  sub_1B8B34450(a2, &v17[v18], &qword_1EBAA79C0, &qword_1B8C2D150);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1B8B34450(v17, v12, &qword_1EBAA79C0, &qword_1B8C2D150);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1B8BCD078(&qword_1EBAA7D80, MEMORY[0x1E69695A8]);
      v21 = sub_1B8C250E8();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1B8B3433C(v17, &qword_1EBAA79C0, &qword_1B8C2D150);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1B8B3433C(v17, &qword_1EBAA7D78, &qword_1B8C2DC38);
    v20 = 1;
    return v20 & 1;
  }

  sub_1B8B3433C(v17, &qword_1EBAA79C0, &qword_1B8C2D150);
  v20 = 0;
  return v20 & 1;
}