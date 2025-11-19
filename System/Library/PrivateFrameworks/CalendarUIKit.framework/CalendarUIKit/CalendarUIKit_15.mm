uint64_t sub_1CACF7E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  v10 = (a2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus);
  if (*(a2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus + 8))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-3] = 0;
    v17[-2] = 0;
    v17[-4] = a2;
    v17[1] = a2;
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }

  else
  {
    *v10 = 0;
    v10[1] = 0;
  }

  v12 = sub_1CAD4E304();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_1CAD4E2C4();

  sub_1CAB380F0(a3);
  v13 = sub_1CAD4E2B4();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a4;
  sub_1CACA6D34(0, 0, v9, &unk_1CAD68838, v14);
}

uint64_t sub_1CACF8090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1CAD4E2C4();
  v6[3] = sub_1CAD4E2B4();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1CABCE498;

  return sub_1CACF8D88(a5, a6);
}

void sub_1CACF8154(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1CACF81BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1CAD4E2C4();
  v6[3] = sub_1CAD4E2B4();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1CABCFDC4;

  return sub_1CACF8D88(a5, a6);
}

uint64_t sub_1CACF8280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[6] = a4;
  type metadata accessor for EventModelObject();
  v7[9] = swift_task_alloc();
  v7[10] = sub_1CAD4E2C4();
  v7[11] = sub_1CAD4E2B4();
  v9 = swift_task_alloc();
  v7[12] = v9;
  *v9 = v7;
  v9[1] = sub_1CACF8370;

  return sub_1CACF9B48(a5);
}

uint64_t sub_1CACF8370()
{

  if (v0)
  {

    v1 = sub_1CAD4E2A4();
    v3 = v2;
    v4 = sub_1CAD007BC;
  }

  else
  {
    v1 = sub_1CAD4E2A4();
    v3 = v5;
    v4 = sub_1CACF84F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v1, v3);
}

uint64_t sub_1CACF84F4()
{
  v1 = v0[7];

  if (v1)
  {
    (v0[7])(v2);
  }

  v3 = v0[9];
  v4 = v0[6];
  swift_getKeyPath();
  v0[5] = v4;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v5 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  sub_1CACFE380(v4 + v5, v3, type metadata accessor for EventModelObject);
  sub_1CACEE394(v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1CACF8640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  type metadata accessor for EventModelObject();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_1CAD4E2C4();
  v4[15] = sub_1CAD4E2B4();
  v6 = sub_1CAD4E2A4();
  v4[16] = v6;
  v4[17] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CACF8710, v6, v5);
}

uint64_t sub_1CACF8710()
{
  v1 = v0[14];
  v13 = v0[13];
  v2 = v0[12];
  swift_getKeyPath();
  v0[8] = v2;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v3 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__editDataSource);
  v0[18] = v3;
  swift_getKeyPath();
  v0[9] = v2;
  v4 = v3;
  sub_1CAD4C424();

  v5 = *(v2 + 16);
  v0[19] = v5;
  swift_getKeyPath();
  v0[10] = v2;
  v6 = v5;
  sub_1CAD4C424();

  v7 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  sub_1CACFE380(v2 + v7, v1, type metadata accessor for EventModelObject);
  swift_getKeyPath();
  v0[11] = v2;
  sub_1CAD4C424();

  v8 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__originalEventModelObject;
  swift_beginAccess();
  sub_1CACFE380(v2 + v8, v13, type metadata accessor for EventModelObject);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1CACF8974;
  v11 = v0[13];
  v10 = v0[14];

  return sub_1CAC1D290(v6, v10, v11, v4);
}

uint64_t sub_1CACF8974()
{
  v2 = *v1;
  v3 = (*v1)[19];
  v4 = (*v1)[18];
  v2[21] = v0;

  v5 = v2[14];
  v6 = v2[13];
  if (v0)
  {
    sub_1CACFE3E8(v2[13], type metadata accessor for EventModelObject);
    sub_1CACFE3E8(v5, type metadata accessor for EventModelObject);
    v7 = v2[16];
    v8 = v2[17];
    v9 = sub_1CACF8BCC;
  }

  else
  {

    sub_1CACFE3E8(v6, type metadata accessor for EventModelObject);
    sub_1CACFE3E8(v5, type metadata accessor for EventModelObject);
    v7 = v2[16];
    v8 = v2[17];
    v9 = sub_1CACF8B5C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CACF8B5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CACF8BCC()
{

  if (qword_1EC462388 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = sub_1CAD4C564();
  __swift_project_value_buffer(v2, qword_1EC47D838);
  v3 = v1;
  v4 = sub_1CAD4C544();
  v5 = sub_1CAD4E3E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 168);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1CAB19000, v4, v5, "EventEditViewModel updateEKEventFromModelObject error: %@", v8, 0xCu);
    sub_1CAB21B68(v9, &unk_1EC465A90);
    MEMORY[0x1CCAA9440](v9, -1, -1);
    MEMORY[0x1CCAA9440](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1CACF8D88(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  type metadata accessor for EventModelObject();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  sub_1CAD4E2C4();
  v3[39] = sub_1CAD4E2B4();
  v5 = sub_1CAD4E2A4();
  v3[40] = v5;
  v3[41] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CACF8E5C, v5, v4);
}

uint64_t sub_1CACF8E5C()
{
  v1 = v0[36];
  swift_getKeyPath();
  v0[24] = v1;
  v0[42] = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___observationRegistrar;
  v0[43] = sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v2 = v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v3 = *(v2 + 40);
  v4 = *(v2 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (!v4)
  {
    if (qword_1EC462C88 != -1)
    {
      swift_once();
    }

    v5 = v0[36];
    v6 = unk_1EC47DB50;
    v18 = qword_1EC47DB48;
    swift_getKeyPath();
    v0[31] = v5;

    sub_1CAD4C424();

    v0[32] = v5;
    swift_getKeyPath();
    sub_1CAD4C444();

    *(v2 + 32) = v18;
    *(v2 + 40) = v6;

    v0[33] = v5;
    swift_getKeyPath();
    sub_1CAD4C434();
  }

  v16 = v0[38];
  v19 = v0[37];
  v7 = v0[36];
  swift_getKeyPath();
  v0[25] = v7;
  sub_1CAD4C424();

  v8 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__editDataSource);
  v0[44] = v8;
  swift_getKeyPath();
  v0[26] = v7;
  v17 = v8;
  sub_1CAD4C424();

  v9 = *(v7 + 16);
  v0[45] = v9;
  swift_getKeyPath();
  v0[27] = v7;
  v10 = v9;
  sub_1CAD4C424();

  sub_1CACFE380(v2, v16, type metadata accessor for EventModelObject);
  swift_getKeyPath();
  v0[28] = v7;
  sub_1CAD4C424();

  v11 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__originalEventModelObject;
  swift_beginAccess();
  sub_1CACFE380(v7 + v11, v19, type metadata accessor for EventModelObject);
  v12 = swift_task_alloc();
  v0[46] = v12;
  *v12 = v0;
  v12[1] = sub_1CACF9210;
  v14 = v0[37];
  v13 = v0[38];

  return sub_1CAC1D290(v10, v13, v14, v17);
}

uint64_t sub_1CACF9210()
{
  v2 = *v1;
  v3 = (*v1)[45];
  v4 = (*v1)[44];
  v2[47] = v0;

  v5 = v2[38];
  v6 = v2[37];
  if (v0)
  {
    sub_1CACFE3E8(v2[37], type metadata accessor for EventModelObject);
    sub_1CACFE3E8(v5, type metadata accessor for EventModelObject);
    v7 = v2[40];
    v8 = v2[41];
    v9 = sub_1CACF97B8;
  }

  else
  {

    sub_1CACFE3E8(v6, type metadata accessor for EventModelObject);
    sub_1CACFE3E8(v5, type metadata accessor for EventModelObject);
    v7 = v2[40];
    v8 = v2[41];
    v9 = sub_1CACF93F8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CACF93F8()
{
  v1 = v0[36];
  swift_getKeyPath();
  v0[29] = v1;
  sub_1CAD4C424();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[48] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[36];
    swift_getKeyPath();
    v0[30] = v4;
    sub_1CAD4C424();

    v5 = *(v4 + 16);
    v0[49] = v5;
    v0[2] = v0;
    v0[3] = sub_1CACF961C;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467978);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1CACF9B14;
    v0[13] = &block_descriptor_6;
    v0[14] = v6;
    [v3 attemptSaveForEvent:v5 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v8 = v0[34];
    if (v8)
    {
      v8(v7);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1CACF961C()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1CACF9724, v2, v1);
}

uint64_t sub_1CACF9724()
{
  v1 = v0[49];

  swift_unknownObjectRelease();

  v2 = v0[34];
  if (v2)
  {
    v2();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CACF97B8()
{
  if (qword_1EC462388 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = sub_1CAD4C564();
  __swift_project_value_buffer(v2, qword_1EC47D838);
  v3 = v1;
  v4 = sub_1CAD4C544();
  v5 = sub_1CAD4E3E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[47];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1CAB19000, v4, v5, "EventEditViewModel updateEKEventFromModelObject error: %@", v8, 0xCu);
    sub_1CAB21B68(v9, &unk_1EC465A90);
    MEMORY[0x1CCAA9440](v9, -1, -1);
    MEMORY[0x1CCAA9440](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[36];
  swift_getKeyPath();
  v0[29] = v12;
  sub_1CAD4C424();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[48] = Strong;
  if (Strong)
  {
    v14 = Strong;
    v15 = v0[36];
    swift_getKeyPath();
    v0[30] = v15;
    sub_1CAD4C424();

    v16 = *(v15 + 16);
    v0[49] = v16;
    v0[2] = v0;
    v0[3] = sub_1CACF961C;
    v17 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467978);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1CACF9B14;
    v0[13] = &block_descriptor_6;
    v0[14] = v17;
    [v14 attemptSaveForEvent:v16 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v19 = v0[34];
    if (v19)
    {
      v19(v18);
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1CACF9B14(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_1CACF9B48(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_1CAD4E2C4();
  v2[5] = sub_1CAD4E2B4();
  v4 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CACF9C14, v4, v3);
}

uint64_t sub_1CACF9C14()
{
  v1 = v0[4];

  swift_getKeyPath();
  v0[2] = v1;
  v2 = (v0 + 2);
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = v0[4];
    v5 = [Strong editorForViewControllerManager];
    swift_unknownObjectRelease();
    swift_getKeyPath();
    v0[2] = v4;
    sub_1CAD4C424();

    v6 = *(v4 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldRecordPrecommitEvent);
    swift_getKeyPath();
    v7 = v0[3];
    v0[2] = v0[4];
    sub_1CAD4C424();

    v8 = *(v4 + 16);
    v0[2] = 0;
    if (v6 != 1)
    {
      v22 = [v5 saveEvent:v8 span:v7 error:v0 + 2];
      v23 = *v2;
      if (v22)
      {
        v24 = v23;
      }

      else
      {
        v27 = v23;
        v28 = sub_1CAD4BF54();

        swift_willThrow();
      }

      goto LABEL_15;
    }

    v9 = [v5 saveEventForOOPModificationRecording:v8 span:v7 error:v0 + 2];
    v10 = *v2;
    v11 = v5;
    if (v9)
    {
      v12 = v0[4];
      v13 = objc_allocWithZone(sub_1CAD4DE64());
      v14 = v10;
      v15 = [v13 init];
      swift_getKeyPath();
      v40 = v11;
      v0[2] = v12;
      sub_1CAD4C424();

      v16 = *(v4 + 16);
      v17 = sub_1CAD4DE54();

      sub_1CACF6A5C(v17);
      swift_getKeyPath();
      v0[2] = v12;
      sub_1CAD4C424();

      v18 = *(v4 + 16);
      v0[2] = 0;
      v19 = [v40 commitEventForOOPModificationRecording:v18 error:v0 + 2];
      v20 = v0[2];
      if (v19)
      {
        v21 = v20;

LABEL_15:
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      v29 = v20;
      v26 = sub_1CAD4BF54();

      swift_willThrow();
    }

    else
    {
      v25 = v10;
      v26 = sub_1CAD4BF54();

      swift_willThrow();
    }

    if (qword_1EC462388 != -1)
    {
      swift_once();
    }

    v30 = sub_1CAD4C564();
    __swift_project_value_buffer(v30, qword_1EC47D838);
    v31 = v26;
    v32 = sub_1CAD4C544();
    v33 = sub_1CAD4E3E4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v26;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1CAB19000, v32, v33, "Failed trying to save event for OOPModificationRecording: %@", v34, 0xCu);
      sub_1CAB21B68(v35, &unk_1EC465A90);
      MEMORY[0x1CCAA9440](v35, -1, -1);
      MEMORY[0x1CCAA9440](v34, -1, -1);

      goto LABEL_15;
    }

    swift_unknownObjectRelease();
  }

LABEL_16:
  v38 = v0[1];

  return v38();
}

void sub_1CACFA104(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v50 - v5;
  v6 = sub_1CAD4C0F4();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v50 - v9;
  v10 = sub_1CAD4BC94();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1CAD4BFF4();
  v12 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v50 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - v18;
  v20 = [a1 title];
  v56 = v12;
  if (v20)
  {
    v21 = v20;
    v22 = sub_1CAD4DF94();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  swift_getKeyPath();
  v59 = v2;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  if (v22 == *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title) && v24 == *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title + 8) || (sub_1CAD4E9E4() & 1) != 0)
  {

    v25 = v56;
  }

  else
  {
    sub_1CACEFC6C(v22, v24);

    swift_getKeyPath();
    v59 = v2;
    sub_1CAD4C424();

    v25 = v56;
    if (*(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___allowTitleChangesToKickoffAutocomplete))
    {
      sub_1CACB5048();
    }
  }

  v26 = [a1 notes];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1CAD4DF94();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = v57;
  sub_1CACF5934(v28, v30);
  v32 = [a1 URL];
  if (v32)
  {
    v33 = v32;
    sub_1CAD4BFC4();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  (*(v25 + 56))(v17, v34, 1, v31);
  sub_1CABA62E4(v17, v19, &qword_1EC465450);
  if ((*(v25 + 48))(v19, 1, v31))
  {
    sub_1CAB21B68(v19, &qword_1EC465450);
    v35 = 0;
    v36 = 0xE000000000000000;
  }

  else
  {
    v37 = v50;
    (*(v25 + 16))(v50, v19, v31);
    sub_1CAB21B68(v19, &qword_1EC465450);
    v38 = sub_1CAD4BFA4();
    v40 = v39;
    (*(v25 + 8))(v37, v31);
    v36 = v40;
    v35 = v38;
  }

  sub_1CACF5D0C(v35, v36);
  v41 = [a1 startDate];
  if (!v41)
  {
    __break(1u);
    goto LABEL_26;
  }

  v42 = v41;
  sub_1CAD4C0B4();

  v43 = [a1 endDate];
  if (!v43)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v44 = v43;
  sub_1CAD4C0B4();

  v45 = v52;
  sub_1CAD4BC54();
  sub_1CACF1DA4(v45);
  (*(v53 + 8))(v45, v54);
  sub_1CACF21D4([a1 isAllDay]);
  v46 = [a1 singleRecurrenceRule];
  if (!v46)
  {
LABEL_22:
    sub_1CACEE0FC(a1);
    return;
  }

  v47 = [a1 singleRecurrenceRule];
  if (v47)
  {
    v48 = v51;
    EventRecurrenceRuleModelObject.init(ekRecurrenceRule:)(v47, v51);
    v49 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    sub_1CACF2F98(v48);
    sub_1CAB21B68(v48, &qword_1EC463170);
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1CACFA7B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for EventCalendarModelObject();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v8 = v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v9 = type metadata accessor for EventModelObject();
  sub_1CAB23A9C(v8 + *(v9 + 104), v3, &qword_1EC464020);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1CAB21B68(v3, &qword_1EC464020);
    swift_getKeyPath();
    v12 = v0;
    sub_1CAD4C424();

    v10 = *(v8 + *(v9 + 172));
  }

  else
  {
    sub_1CACFE318(v3, v7, type metadata accessor for EventCalendarModelObject);
    swift_getKeyPath();
    v12 = v0;
    sub_1CAD4C424();

    if (*(v8 + *(v9 + 172)) == 1)
    {
      v10 = v7[245] ^ 1;
    }

    else
    {
      v10 = 0;
    }

    sub_1CACFE3E8(v7, type metadata accessor for EventCalendarModelObject);
  }

  return v10 & 1;
}

uint64_t sub_1CACFAA84()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v1 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteSearchString);

  return v1;
}

uint64_t sub_1CACFAB40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteSearchString + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteSearchString);
  a2[1] = v4;
}

uint64_t sub_1CACFABF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CACFAC38(v1, v2);
}

uint64_t sub_1CACFAC38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteSearchString);
  v6 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteSearchString + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1CAD4E9E4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1CACFADB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteSearchString);
  *v3 = a2;
  v3[1] = a3;
}

void *sub_1CACFAE10(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1CACFAEB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteTimer);
  *a2 = v4;

  return v4;
}

void sub_1CACFAF78(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CACFAFA8(v1);
}

void sub_1CACFAFA8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteTimer;
  v5 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteTimer);
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
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1CABD4070(0, &qword_1EC467970);
  v6 = v5;
  v7 = a1;
  v8 = sub_1CAD4E494();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1CACFB140(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteTimer);
  *(a1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteTimer) = a2;
  v3 = a2;
}

uint64_t sub_1CACFB17C()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  return swift_unknownObjectRetain();
}

uint64_t sub_1CACFB228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  *a2 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___pendingSearch);
  return swift_unknownObjectRetain();
}

uint64_t sub_1CACFB2FC(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___pendingSearch) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1CACFB3A0(void *a1, char a2)
{
  v3 = v2;
  v154 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v149 = &v144 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v148 = &v144 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v147 = &v144 - v11;
  v12 = sub_1CAD4C0F4();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v151 = &v144 - v16;
  v157 = sub_1CAD4BC94();
  v158 = *(v157 - 8);
  v17 = MEMORY[0x1EEE9AC00](v157);
  v150 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v156 = &v144 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v153 = &v144 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v152 = &v144 - v23;
  v159 = type metadata accessor for EventModelObject();
  v24 = MEMORY[0x1EEE9AC00](v159);
  v26 = &v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v144 - v27;
  if (a2)
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  *&v162 = v3;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v29 = [v3[2] eventIdentifier];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1CAD4DF94();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = [a1 eventIdentifier];
  if (!v34)
  {
    if (!v33)
    {
      return;
    }

    goto LABEL_14;
  }

  v35 = v34;
  v36 = sub_1CAD4DF94();
  v38 = v37;

  if (!v33)
  {
    if (!v38)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!v38)
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v31 == v36 && v33 == v38)
  {

    return;
  }

  v143 = sub_1CAD4E9E4();

  if ((v143 & 1) == 0)
  {
LABEL_15:
    v146 = v15;
    v39 = a1;
    sub_1CACEE0FC(v39);
    *(&v163 + 1) = &type metadata for EKEventModelWrapper;
    v40 = sub_1CAB29AA4();
    *&v164 = v40;
    *&v162 = v39;
    v41 = v39;
    EventModelObject.init(_:)(&v162, v28);
    v155 = v28;
    sub_1CACFE380(v28, v26, type metadata accessor for EventModelObject);
    sub_1CACEE27C(v26);
    *&v164 = v40;
    *(&v163 + 1) = &type metadata for EKEventModelWrapper;
    *&v162 = v41;
    v42 = v41;
    EventModelObject.init(_:)(&v162, v26);
    sub_1CACEE394(v26);
    v43 = [v42 eventStore];
    if (v43)
    {
      v44 = v43;
      v45 = sub_1CAC1CD88(v43);
      sub_1CACEE73C(v45);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v144 - 2) = v3;
      *(&v144 - 1) = v44;
      v47 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___observationRegistrar;
      *&v162 = v3;
      v48 = sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
      v49 = v44;
      v161 = v47;
      sub_1CAD4C414();

      v145 = v49;

      v50 = v42;
      v51 = [v42 eventStore];
      if (v51)
      {
        v52 = v51;
        v53 = type metadata accessor for EventKitDataSource();
        v54 = swift_allocObject();
        *(v54 + 16) = [objc_allocWithZone(MEMORY[0x1E69669B8]) initWithEventStore:v52 visibilityChangedCallback:0 queue:0];
        *(v54 + 24) = v52;
        *&v164 = &off_1F4AA7430;
        *(&v163 + 1) = v53;
        *&v162 = v54;
        v55 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v55);
        *(&v144 - 2) = v3;
        *(&v144 - 1) = &v162;
        v173 = v3;

        v160 = v48;
        sub_1CAD4C414();

        __swift_destroy_boxed_opaque_existential_1(&v162);
        v56 = v159;
        v57 = v155;
        v58 = &v155[*(v159 + 120)];
        v59 = v152;
        if (v58[1])
        {
          v60 = *v58;
          v61 = v58[1];
        }

        else
        {
          v60 = 0;
          v61 = 0xE000000000000000;
        }

        v62 = v50;

        sub_1CACF5934(v60, v61);
        sub_1CAB23A9C(&v57[*(v56 + 148)], v59, &qword_1EC465450);
        v63 = sub_1CAD4BFF4();
        v64 = *(v63 - 8);
        if ((*(v64 + 48))(v59, 1, v63) == 1)
        {
          sub_1CAB21B68(v59, &qword_1EC465450);
          v65 = 0;
          v66 = 0xE000000000000000;
        }

        else
        {
          v67 = sub_1CAD4BFA4();
          v69 = v68;
          (*(v64 + 8))(v59, v63);
          v66 = v69;
          v65 = v67;
        }

        sub_1CACF5D0C(v65, v66);
        v70 = v159;
        v71 = *&v57[*(v159 + 108)];
        if (((v71 != 0) ^ *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isPrivate)))
        {
          v72 = v71 != 0;
          v73 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v73);
          *(&v144 - 2) = v3;
          *(&v144 - 8) = v72;
          *&v162 = v3;
          sub_1CAD4C414();
        }

        else
        {
          *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isPrivate) = v71 != 0;
          sub_1CACF5258();
        }

        v74 = *&v57[*(v70 + 124)] + 1;
        if (v74 >= 5)
        {
          v75 = 4;
        }

        else
        {
          v75 = 0x302010004uLL >> (8 * v74);
        }

        v76 = v50;
        if (*(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__selectedAvailability) == (v75 & 7))
        {
          sub_1CACF4CC4();
        }

        else
        {
          v77 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v77);
          *(&v144 - 2) = v3;
          *(&v144 - 8) = v75;
          *&v162 = v3;
          sub_1CAD4C414();
        }

        v78 = [v50 calendar];
        if (v78)
        {
          v79 = v78;
          v80 = [v78 calendarIdentifier];

          v81 = sub_1CAD4DF94();
          v83 = v82;
        }

        else
        {
          v81 = 0;
          v83 = 0xE000000000000000;
        }

        sub_1CACF4540(v81, v83);
        v84 = v153;
        sub_1CAC658C4(v50, v153);
        v85 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v85);
        *(&v144 - 2) = v3;
        *(&v144 - 1) = v84;
        *&v162 = v3;
        sub_1CAD4C414();

        sub_1CAB21B68(v84, &qword_1EC465AC8);
        v86 = sub_1CAC65D20(v50);
        sub_1CACF4660(v86);

        v87 = [v50 startDate];
        if (v87)
        {
          v88 = v87;
          sub_1CAD4C0B4();

          v89 = [v50 endDateUnadjustedForLegacyClients];
          if (v89)
          {
            v90 = v89;
            sub_1CAD4C0B4();

            v91 = v156;
            sub_1CAD4BC54();
            v92 = v158;
            v93 = v150;
            v94 = v157;
            (*(v158 + 16))(v150, v91, v157);
            sub_1CACF1DA4(v93);
            v95 = *(v92 + 8);
            v158 = v92 + 8;
            v95(v93, v94);
            swift_getKeyPath();
            *&v162 = v3;
            sub_1CAD4C424();

            Strong = swift_unknownObjectWeakLoadStrong();
            v97 = v155;
            if (Strong && (v98 = [Strong disregardInitialDateTimeOfEvent], swift_unknownObjectRelease(), (v98 & 1) != 0))
            {
              v99 = v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__dateIntervalImplicit;
              v100 = 1;
              if (*(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__dateIntervalImplicit) != 1)
              {
LABEL_40:
                v101 = swift_getKeyPath();
                MEMORY[0x1EEE9AC00](v101);
                *(&v144 - 2) = v3;
                *(&v144 - 8) = v100;
                *&v162 = v3;
                sub_1CAD4C414();

                goto LABEL_43;
              }
            }

            else
            {
              [v76 isNew];
              v100 = 0;
              v99 = v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__dateIntervalImplicit;
              if (*(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__dateIntervalImplicit))
              {
                goto LABEL_40;
              }
            }

            *v99 = v100;
LABEL_43:
            sub_1CACF21D4([v76 isAllDay]);
            v102 = [v76 title];
            if (v102)
            {
              v103 = v102;
              v104 = sub_1CAD4DF94();
              v106 = v105;

              v107 = HIBYTE(v106) & 0xF;
              if ((v106 & 0x2000000000000000) == 0)
              {
                v107 = v104 & 0xFFFFFFFFFFFFLL;
              }

              if (!v107 && ([v76 isNew] & 1) == 0)
              {
                v113 = v159;
                if (qword_1EC462C88 != -1)
                {
                  swift_once();
                }

                v110 = qword_1EC47DB48;
                v112 = unk_1EC47DB50;

LABEL_50:
                swift_getKeyPath();
                *&v162 = v3;
                sub_1CAD4C424();

                if (v110 == *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title) && v112 == *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title + 8))
                {

                  v114 = v149;
                }

                else
                {
                  v115 = sub_1CAD4E9E4();
                  v114 = v149;
                  if (v115)
                  {
                  }

                  else
                  {
                    sub_1CACEFC6C(v110, v112);

                    swift_getKeyPath();
                    *&v162 = v3;
                    sub_1CAD4C424();

                    if (*(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___allowTitleChangesToKickoffAutocomplete))
                    {
                      sub_1CACB5048();
                    }
                  }
                }

                v116 = (v97 + v113[19]);
                v117 = v116[9];
                v170 = v116[8];
                v171 = v117;
                v172 = v116[10];
                v118 = v116[5];
                v166 = v116[4];
                v167 = v118;
                v119 = v116[7];
                v168 = v116[6];
                v169 = v119;
                v120 = v116[1];
                v162 = *v116;
                v163 = v120;
                v121 = v116[3];
                v164 = v116[2];
                v165 = v121;
                sub_1CACF11BC(&v162);
                v122 = *(v97 + v113[33]);
                if (v122)
                {
                  v123 = *(v122 + 16);
                  v124 = type metadata accessor for EventRecurrenceRuleModelObject(0);
                  v125 = *(v124 - 8);
                  v126 = v125;
                  if (v123)
                  {
                    v127 = v122 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
                    v128 = v147;
                    sub_1CACFE380(v127, v147, type metadata accessor for EventRecurrenceRuleModelObject);
                    (*(v126 + 56))(v128, 0, 1, v124);
                  }

                  else
                  {
                    v128 = v147;
                    (*(v125 + 56))(v147, 1, 1, v124);
                  }

                  v113 = v159;
                }

                else
                {
                  v129 = type metadata accessor for EventRecurrenceRuleModelObject(0);
                  v128 = v147;
                  (*(*(v129 - 8) + 56))(v147, 1, 1, v129);
                }

                sub_1CACF2F98(v128);
                sub_1CAB21B68(v128, &qword_1EC463170);

                sub_1CACF5FA4(v130);
                v131 = [v62 timeZone];
                v132 = v148;
                if (v131)
                {
                  v133 = v131;
                  sub_1CAD4C3E4();

                  v134 = 0;
                }

                else
                {
                  v134 = 1;
                }

                v135 = sub_1CAD4C404();
                (*(*(v135 - 8) + 56))(v132, v134, 1, v135);
                sub_1CACF2704(v132);
                sub_1CAB23A9C(v97 + v113[15], v114, &qword_1EC467A40);
                v136 = type metadata accessor for EventVirtualConferenceModelObject(0);
                v137 = (*(*(v136 - 8) + 48))(v114, 1, v136);
                sub_1CAB21B68(v114, &qword_1EC467A40);
                v138 = (v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus);
                v139 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus + 8);
                if (v137 == 1)
                {
                  if (!v139)
                  {
                    *v138 = 0;
                    v138[1] = 0;
                    goto LABEL_77;
                  }

                  v140 = swift_getKeyPath();
                  MEMORY[0x1EEE9AC00](v140);
                  *(&v144 - 3) = 0;
                  *(&v144 - 2) = 0;
                  *(&v144 - 4) = v3;
                  *&v162 = v3;
                }

                else
                {
                  if (v139 == 2)
                  {
                    *v138 = 0;
LABEL_77:
                    v142 = v145;
                    if (sub_1CAC65230())
                    {
                      sub_1CAC672DC();
                    }

                    sub_1CACF6C0C(1);

                    v95(v156, v157);
                    sub_1CACFE3E8(v97, type metadata accessor for EventModelObject);
                    return;
                  }

                  v141 = swift_getKeyPath();
                  MEMORY[0x1EEE9AC00](v141);
                  *(&v144 - 4) = v3;
                  *(&v144 - 3) = xmmword_1CAD5D940;
                  *&v162 = v3;
                }

                sub_1CAD4C414();

                goto LABEL_77;
              }

              v108 = [v76 title];
              if (v108)
              {
                v109 = v108;
                v110 = sub_1CAD4DF94();
                v112 = v111;

                v113 = v159;
                goto LABEL_50;
              }

LABEL_88:
              __break(1u);
              return;
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_85;
  }
}

uint64_t sub_1CACFC838()
{
  sub_1CACFE3E8(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject, type metadata accessor for EventModelObject);
  sub_1CACFE3E8(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__originalEventModelObject, type metadata accessor for EventModelObject);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventDataSource);
  sub_1CABEDD0C(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__delegate);

  v1 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 128);
  v11[9] = v1;
  v11[10] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 160);
  v2 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 64);
  v11[5] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 96);
  v11[7] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  v11[1] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 32);
  v11[3] = v5;
  sub_1CAB21B68(v11, &qword_1EC463C00);
  sub_1CABED134(*(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus), *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus + 8));
  v6 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____dateInterval;
  v7 = sub_1CAD4BC94();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__timeZone, &qword_1EC4635D0);
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__endTimeZone, &qword_1EC4635D0);
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____recurrenceRule, &qword_1EC463170);

  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__displayOrganizer, &qword_1EC465AC8);

  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__titleSelection, &qword_1EC467980);

  swift_unknownObjectRelease();
  v8 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___observationRegistrar;
  v9 = sub_1CAD4C464();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t sub_1CACFCB68()
{
  sub_1CACFC838();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EventEditViewModel()
{
  result = qword_1EC467880;
  if (!qword_1EC467880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CACFCC14()
{
  type metadata accessor for EventModelObject();
  if (v0 <= 0x3F)
  {
    sub_1CAD4BC94();
    if (v1 <= 0x3F)
    {
      sub_1CACFCF5C(319, &qword_1EDA5F890, MEMORY[0x1E6969BC0]);
      if (v2 <= 0x3F)
      {
        sub_1CACFCF5C(319, &qword_1EC462258, type metadata accessor for EventRecurrenceRuleModelObject);
        if (v3 <= 0x3F)
        {
          sub_1CACFCF5C(319, &qword_1EC467890, type metadata accessor for DisplayOrganizerPerson);
          if (v4 <= 0x3F)
          {
            sub_1CACFCF5C(319, &qword_1EC467898, MEMORY[0x1E697BFE0]);
            if (v5 <= 0x3F)
            {
              sub_1CAD4C464();
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CACFCF5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CAD4E4D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13CalendarUIKit23VirtualConferenceStatusO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CACFCFD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CACFD034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1CACFD084(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CACFD0B4(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return sub_1CAD4E9E4();
}

unint64_t sub_1CACFD130()
{
  result = qword_1EC467960;
  if (!qword_1EC467960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467960);
  }

  return result;
}

uint64_t sub_1CACFD19C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___pendingSearch) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1CACFD1E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteTimer);
  *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteTimer) = v2;
  v4 = v2;
}

uint64_t sub_1CACFD220()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteSearchString);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1CACFD26C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  v19 = type metadata accessor for EventAttendeeModelObject(0);
  if ((*(a1 + *(v19 + 52)) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 0;
  }

  v45 = v7;
  v46 = v2;
  sub_1CAB23A9C(a1 + *(v19 + 28), v18, &qword_1EC465450);
  v21 = sub_1CAD4BFF4();
  v22 = *(v21 - 8);
  v40 = *(v22 + 48);
  v23 = v40(v18, 1, v21);
  v39 = v22;
  if (v23 == 1)
  {
    sub_1CAB21B68(v18, &qword_1EC465450);
    v44 = 0;
    if (*(a1 + 24))
    {
      goto LABEL_5;
    }

LABEL_8:
    v43 = 0;
    if (*(a1 + 40))
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1CAD4BFA4();
  (*(v22 + 8))(v18, v21);
  v44 = sub_1CAD4DF54();

  if (!*(a1 + 24))
  {
    goto LABEL_8;
  }

LABEL_5:
  v43 = sub_1CAD4DF54();
  if (*(a1 + 40))
  {
LABEL_6:
    v42 = sub_1CAD4DF54();
    goto LABEL_10;
  }

LABEL_9:
  v42 = 0;
LABEL_10:
  v41 = *(type metadata accessor for EventModelObject() + 136);
  sub_1CAB23A9C(v47 + v41, v12, &qword_1EC465AC0);
  v24 = type metadata accessor for EventOrganizerModelObject(0);
  v25 = *(*(v24 - 8) + 48);
  if (v25(v12, 1, v24) == 1)
  {
    v26 = &qword_1EC465AC0;
    v27 = v12;
LABEL_14:
    sub_1CAB21B68(v27, v26);
    v28 = 0;
    goto LABEL_16;
  }

  sub_1CAB23A9C(&v12[*(v24 + 28)], v16, &qword_1EC465450);
  sub_1CACFE3E8(v12, type metadata accessor for EventOrganizerModelObject);
  if (v40(v16, 1, v21) == 1)
  {
    v26 = &qword_1EC465450;
    v27 = v16;
    goto LABEL_14;
  }

  sub_1CAD4BFA4();
  (*(v39 + 8))(v16, v21);
  v28 = sub_1CAD4DF54();

LABEL_16:
  v29 = v41;
  sub_1CAB23A9C(v47 + v41, v10, &qword_1EC465AC0);
  if (v25(v10, 1, v24) == 1)
  {
    sub_1CAB21B68(v10, &qword_1EC465AC0);
  }

  else
  {
    v30 = *(v10 + 3);

    sub_1CACFE3E8(v10, type metadata accessor for EventOrganizerModelObject);
    if (v30)
    {
      v31 = sub_1CAD4DF54();

      goto LABEL_21;
    }
  }

  v31 = 0;
LABEL_21:
  v32 = v45;
  sub_1CAB23A9C(v47 + v29, v45, &qword_1EC465AC0);
  if (v25(v32, 1, v24) == 1)
  {
    sub_1CAB21B68(v32, &qword_1EC465AC0);
LABEL_25:
    v34 = 0;
    goto LABEL_26;
  }

  v33 = *(v32 + 40);

  sub_1CACFE3E8(v32, type metadata accessor for EventOrganizerModelObject);
  if (!v33)
  {
    goto LABEL_25;
  }

  v34 = sub_1CAD4DF54();

LABEL_26:
  v36 = v43;
  v35 = v44;
  v37 = v42;
  v38 = doURLsEmailsPhoneNumbersMatch();

  return v38 ^ 1u;
}

void sub_1CACFD854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__editDataSource);
  *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__editDataSource) = v2;
  v4 = v2;
}

void sub_1CACFD8C8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_1CAC1628C(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_1CABD4070(0, &qword_1EC467A38);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_1CAD4E494();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1CACFDA48(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1CAC1628C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CACFDB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[3] = a3;
  v8[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C414();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void sub_1CACFDC9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__precommitSerializedEvent);
  *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__precommitSerializedEvent) = v2;
  v4 = v2;
}

uint64_t sub_1CACFDCDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4C814();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467980);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467988);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1CAB23A9C(a1, &v21 - v13, &qword_1EC467980);
  sub_1CAB23A9C(a2, &v14[v15], &qword_1EC467980);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1CAB23A9C(v14, v10, &qword_1EC467980);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1CACFFD50(&unk_1EC467990, MEMORY[0x1E697BFE0]);
      v18 = sub_1CAD4DED4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1CAB21B68(v14, &qword_1EC467980);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1CAB21B68(v14, &qword_1EC467988);
    v17 = 1;
    return v17 & 1;
  }

  sub_1CAB21B68(v14, &qword_1EC467980);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1CACFE1BC(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2[4];
  v5 = (v2[2] + *a1);
  *v5 = v2[3];
  v5[1] = v4;

  return a2(v6);
}

uint64_t sub_1CACFE220(uint64_t a1)
{
  v4 = *(type metadata accessor for EventCalendarModelObject() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CABCCCB0;

  return sub_1CACF3F04(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1CACFE318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CACFE380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CACFE3E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CACFE448(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4C404();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679E0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1CAB23A9C(a1, &v21 - v13, &qword_1EC4635D0);
  sub_1CAB23A9C(a2, &v14[v15], &qword_1EC4635D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1CAB23A9C(v14, v10, &qword_1EC4635D0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1CACFFD50(&qword_1EC464E68, MEMORY[0x1E6969BC0]);
      v18 = sub_1CAD4DED4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1CAB21B68(v14, &qword_1EC4635D0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1CAB21B68(v14, &unk_1EC4679E0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1CAB21B68(v14, &qword_1EC4635D0);
  v17 = 0;
  return v17 & 1;
}

void *sub_1CACFE768(void *a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v7 = v6;
  v178 = a5;
  v179 = a6;
  v177 = a4;
  v186 = a3;
  v168 = a2;
  v180 = a1;
  v172 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v166 = &v155 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v165 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v173 = &v155 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v164 = &v155 - v15;
  v183 = sub_1CAD4BC94();
  v185 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v184 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v171 = &v155 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v174 = &v155 - v20;
  v187 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v187);
  v22 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CAD4C0F4();
  v157 = *(v23 - 8);
  v158 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v167 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v169 = &v155 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v155 - v28;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__pendingChanges) = 0;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventCreationMethod) = 0;
  v176 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing) = 0;
  v175 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__allowsEditing;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__allowsEditing) = 0;
  v30 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__delegate;
  swift_unknownObjectWeakInit();
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__hasModifiedAttendeesFromSuggestion) = 0;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__pushAction) = 0;
  v31 = (v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = MEMORY[0x1E69E7CC0];
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__autocompleteItems) = MEMORY[0x1E69E7CC0];
  v33 = (v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  sub_1CABED564(v211);
  v34 = v211[9];
  v33[8] = v211[8];
  v33[9] = v34;
  v33[10] = v211[10];
  v35 = v211[5];
  v33[4] = v211[4];
  v33[5] = v35;
  v36 = v211[7];
  v33[6] = v211[6];
  v33[7] = v36;
  v37 = v211[1];
  *v33 = v211[0];
  v33[1] = v37;
  v38 = v211[3];
  v33[2] = v211[2];
  v33[3] = v38;
  v39 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__timeZone;
  v40 = sub_1CAD4C404();
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v43 = v41 + 56;
  v42(v7 + v39, 1, 1, v40);
  v163 = v40;
  v181 = v43;
  v182 = v42;
  v42(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__endTimeZone, 1, 1, v40);
  v44 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____recurrenceRule;
  v45 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v159 = *(v45 - 8);
  v161 = *(v159 + 56);
  v162 = v159 + 56;
  v161(v7 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__displayOrganizer;
  v47 = type metadata accessor for DisplayOrganizerPerson(0);
  v48 = *(*(v47 - 8) + 56);
  v170 = v46;
  v48(v7 + v46, 1, 1, v47);
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldEnableDoneButton) = 0;
  v49 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel_availabilityQueue;
  *(v7 + v49) = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__numberOfConflicts) = 0;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__displayPeopleIdsWithAvailStatus) = sub_1CAC2893C(v32);
  v50 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__titleSelection;
  v51 = sub_1CAD4C814();
  (*(*(v51 - 8) + 56))(v7 + v50, 1, 1, v51);
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__focusAndSelectStartDate) = 0;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__focusAndSelectTitle) = 0;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__focusTitle) = 0;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldRecordPrecommitEvent) = 0;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__precommitSerializedEvent) = 0;
  v52 = (v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteSearchString);
  *v52 = 0;
  v52[1] = 0;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteTimer) = 0;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___pendingSearch) = 0;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___allowTitleChangesToKickoffAutocomplete) = 1;
  sub_1CAD4C454();
  v53 = v180;
  v54 = v180;
  if (!v180)
  {
    v156 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
    v55 = [objc_opt_self() eventWithEventStore_];
    sub_1CAD4C0E4();
    v56 = sub_1CAD4C084();
    v57 = *(v157 + 8);
    v157 = v30;
    v58 = v22;
    v59 = v45;
    v60 = v158;
    v57(v29, v158);
    [v55 setStartDate_];

    sub_1CAD4C0E4();
    v61 = sub_1CAD4C084();
    v62 = v60;
    v45 = v59;
    v22 = v58;
    v30 = v157;
    v57(v29, v62);
    [v55 setEndDate_];

    v54 = v55;
    v63 = v156;
    v64 = [v156 defaultCalendarForNewEvents];
    [v54 setCalendar_];

    v53 = v180;
  }

  v65 = v53;
  swift_unknownObjectRetain();
  v66 = v54;
  sub_1CABEDD0C(v7 + v30);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v7[2] = v66;
  v67 = v175;
  *(v7 + v176) = v177 & 1;
  *(v7 + v67) = v178 & 1;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__needsInlineEditButton) = v179 & 1;
  *(&v201 + 1) = &type metadata for EKEventModelWrapper;
  *&v202 = sub_1CAB29AA4();
  *&v200 = v66;
  v68 = v66;
  EventModelObject.init(_:)(&v200, v22);
  sub_1CACFE380(v22, v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject, type metadata accessor for EventModelObject);
  sub_1CACFE380(v22, v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__originalEventModelObject, type metadata accessor for EventModelObject);
  result = [v68 eventStore];
  if (!result)
  {
    __break(1u);
    goto LABEL_47;
  }

  v70 = result;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__calendars) = sub_1CAC1CD88(result);
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__editDataSource) = v70;
  v180 = v70;
  result = [v68 eventStore];
  v71 = v174;
  if (!result)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v72 = result;
  v73 = type metadata accessor for EventKitDataSource();
  v74 = swift_allocObject();
  *(v74 + 16) = [objc_allocWithZone(MEMORY[0x1E69669B8]) initWithEventStore:v72 visibilityChangedCallback:0 queue:0];
  *(v74 + 24) = v72;
  *&v202 = &off_1F4AA7430;
  *(&v201 + 1) = v73;
  *&v200 = v74;
  sub_1CAB284E0(&v200, v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventDataSource);
  v75 = v187;
  v76 = &v22[v187[30]];
  v77 = *(v76 + 1);
  if (v77)
  {
    v78 = *v76;
  }

  else
  {
    v78 = 0;
  }

  v79 = 0xE000000000000000;
  if (v77)
  {
    v79 = v77;
  }

  v80 = (v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__notes);
  *v80 = v78;
  v80[1] = v79;
  sub_1CAB23A9C(&v22[v75[37]], v71, &qword_1EC465450);
  v81 = sub_1CAD4BFF4();
  v82 = *(v81 - 8);
  v83 = (*(v82 + 48))(v71, 1, v81);

  v160 = v45;
  if (v83 == 1)
  {
    sub_1CAB21B68(v71, &qword_1EC465450);
    v84 = 0;
    v85 = 0xE000000000000000;
  }

  else
  {
    v84 = sub_1CAD4BFA4();
    v85 = v86;
    (*(v82 + 8))(v71, v81);
  }

  v87 = (v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__url);
  *v87 = v84;
  v87[1] = v85;
  v88 = v187;
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isPrivate) = *&v22[v187[27]] != 0;
  v89 = *&v22[v88[31]] + 1;
  if (v89 >= 5)
  {
    v90 = 4;
  }

  else
  {
    v90 = 0x302010004uLL >> (8 * v89);
  }

  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__selectedAvailability) = v90;
  v91 = v68;
  v92 = [v91 calendar];
  v93 = v173;
  if (v92)
  {
    v94 = v92;
    v95 = [v92 calendarIdentifier];

    v96 = sub_1CAD4DF94();
    v98 = v97;
  }

  else
  {
    v96 = 0;
    v98 = 0xE000000000000000;
  }

  v99 = (v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__selectedCalendarID);
  *v99 = v96;
  v99[1] = v98;
  v100 = v171;
  sub_1CAC658C4(v91, v171);
  v101 = v170;
  sub_1CAB21B68(v7 + v170, &qword_1EC465AC8);
  sub_1CABA62E4(v100, v7 + v101, &qword_1EC465AC8);
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____displayPeople) = sub_1CAC65D20(v91);
  result = [v91 startDate];
  if (!result)
  {
    goto LABEL_48;
  }

  v102 = result;
  sub_1CAD4C0B4();

  result = [v91 endDateUnadjustedForLegacyClients];
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v103 = result;
  sub_1CAD4C0B4();

  v104 = v184;
  sub_1CAD4BC54();
  (*(v185 + 16))(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____dateInterval, v104, v183);
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__dateIntervalImplicit) = v168 == 2;
  v105 = [v91 isAllDay];
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____allDay) = v105;
  result = [v91 title];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v106 = result;
  v107 = v93;
  v108 = sub_1CAD4DF94();
  v110 = v109;

  v111 = HIBYTE(v110) & 0xF;
  if ((v110 & 0x2000000000000000) == 0)
  {
    v111 = v108 & 0xFFFFFFFFFFFFLL;
  }

  if (!v111 && ([v91 isNew] & 1) == 0)
  {
    v116 = &qword_1EC467000;
    if (qword_1EC462C88 != -1)
    {
      swift_once();
    }

    v113 = qword_1EC47DB48;
    v115 = unk_1EC47DB50;

    goto LABEL_28;
  }

  result = [v91 title];
  if (!result)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v112 = result;
  v113 = sub_1CAD4DF94();
  v115 = v114;

  v116 = &qword_1EC467000;
LABEL_28:
  v117 = (v7 + v116[239]);

  *v117 = v113;
  v117[1] = v115;
  v118 = v187;
  v119 = &v22[v187[19]];
  v120 = *(v119 + 9);
  v197 = *(v119 + 8);
  v198 = v120;
  v199 = *(v119 + 10);
  v121 = *(v119 + 5);
  v193 = *(v119 + 4);
  v194 = v121;
  v122 = *(v119 + 7);
  v195 = *(v119 + 6);
  v196 = v122;
  v123 = *(v119 + 1);
  v189 = *v119;
  v190 = v123;
  v124 = *(v119 + 3);
  v191 = *(v119 + 2);
  v192 = v124;
  v125 = (v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  v126 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 144);
  v208 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 128);
  v209 = v126;
  v210 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 160);
  v127 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 80);
  v204 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 64);
  v205 = v127;
  v128 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 112);
  v206 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 96);
  v207 = v128;
  v129 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 16);
  v200 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  v201 = v129;
  v130 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 48);
  v202 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 32);
  v203 = v130;
  sub_1CAB23A9C(&v189, &v188, &qword_1EC463C00);
  sub_1CAB21B68(&v200, &qword_1EC463C00);
  v131 = v194;
  v125[4] = v193;
  v125[5] = v131;
  v132 = v199;
  v125[9] = v198;
  v125[10] = v132;
  v133 = v197;
  v125[7] = v196;
  v125[8] = v133;
  v125[6] = v195;
  v134 = v190;
  *v125 = v189;
  v125[1] = v134;
  v135 = v192;
  v125[2] = v191;
  v125[3] = v135;
  v136 = *&v22[v118[33]];
  if (v136)
  {
    v137 = v164;
    v138 = v161;
    if (*(v136 + 16))
    {
      sub_1CACFE380(v136 + ((*(v159 + 80) + 32) & ~*(v159 + 80)), v164, type metadata accessor for EventRecurrenceRuleModelObject);
      v139 = 0;
    }

    else
    {
      v139 = 1;
    }
  }

  else
  {
    v139 = 1;
    v137 = v164;
    v138 = v161;
  }

  v140 = 1;
  v138(v137, v139, 1, v160);
  v141 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____recurrenceRule;
  sub_1CAB21B68(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____recurrenceRule, &qword_1EC463170);
  sub_1CABA62E4(v137, v7 + v141, &qword_1EC463170);
  *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__attachments) = *&v22[v187[39]];

  v142 = [v91 timeZone];
  if (v142)
  {
    v143 = v142;
    sub_1CAD4C3E4();

    v140 = 0;
  }

  v144 = v163;
  v145 = 1;
  v182(v107, v140, 1, v163);
  v146 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__timeZone;
  sub_1CAB21B68(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__timeZone, &qword_1EC4635D0);
  sub_1CABA62E4(v107, v7 + v146, &qword_1EC4635D0);
  v147 = [v91 endTimeZone];

  v148 = v165;
  if (v147)
  {
    sub_1CAD4C3E4();

    v145 = 0;
  }

  v149 = v166;
  v182(v148, v145, 1, v144);
  v150 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__endTimeZone;
  sub_1CAB21B68(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__endTimeZone, &qword_1EC4635D0);
  sub_1CABA62E4(v148, v7 + v150, &qword_1EC4635D0);
  sub_1CAB23A9C(&v22[v187[15]], v149, &qword_1EC467A40);
  v151 = type metadata accessor for EventVirtualConferenceModelObject(0);
  LODWORD(v150) = (*(*(v151 - 8) + 48))(v149, 1, v151);
  sub_1CAB21B68(v149, &qword_1EC467A40);
  v152 = (v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus);
  if (v150 == 1)
  {
    *v152 = 0;
    v152[1] = 0;
  }

  else
  {
    *v152 = xmmword_1CAD5D940;
  }

  v153 = v180;
  v154 = v183;
  if (sub_1CAC65230())
  {
    sub_1CAC672DC();
  }

  sub_1CACF6C0C(1);
  swift_unknownObjectRelease();

  (*(v185 + 8))(v184, v154);
  sub_1CACFE3E8(v22, type metadata accessor for EventModelObject);
  return v7;
}

uint64_t sub_1CACFF998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679D0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1CAB23A9C(a1, &v20 - v13, &qword_1EC463170);
  sub_1CAB23A9C(a2, &v14[v15], &qword_1EC463170);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1CAB23A9C(v14, v10, &qword_1EC463170);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1CACFE318(&v14[v15], v7, type metadata accessor for EventRecurrenceRuleModelObject);
      v18 = _s13CalendarUIKit30EventRecurrenceRuleModelObjectV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1CACFE3E8(v7, type metadata accessor for EventRecurrenceRuleModelObject);
      sub_1CACFE3E8(v10, type metadata accessor for EventRecurrenceRuleModelObject);
      sub_1CAB21B68(v14, &qword_1EC463170);
      v17 = !v18;
      return v17 & 1;
    }

    sub_1CACFE3E8(v10, type metadata accessor for EventRecurrenceRuleModelObject);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1CAB21B68(v14, &unk_1EC4679D0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1CAB21B68(v14, &qword_1EC463170);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1CACFFD50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CACFFDCC()
{
  v1 = *(v0 + 24);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  v4 = v2[1];
  v3 = v2[2];
  v21[0] = *v2;
  v21[1] = v4;
  v21[2] = v3;
  v5 = v2[6];
  v7 = v2[3];
  v6 = v2[4];
  v21[5] = v2[5];
  v21[6] = v5;
  v21[3] = v7;
  v21[4] = v6;
  v8 = v2[10];
  v10 = v2[7];
  v9 = v2[8];
  v21[9] = v2[9];
  v21[10] = v8;
  v21[7] = v10;
  v21[8] = v9;
  v11 = v1[7];
  v12 = v1[8];
  v13 = v1[10];
  v2[9] = v1[9];
  v2[10] = v13;
  v2[7] = v11;
  v2[8] = v12;
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[6];
  v2[5] = v1[5];
  v2[6] = v16;
  v2[3] = v14;
  v2[4] = v15;
  v17 = *v1;
  v18 = v1[2];
  v2[1] = v1[1];
  v2[2] = v18;
  *v2 = v17;
  sub_1CAB23A9C(v1, &v20, &qword_1EC463C00);
  return sub_1CAB21B68(v21, &qword_1EC463C00);
}

uint64_t sub_1CACFFEF4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1CAD001F0(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1CAD00258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventModelObject();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAD002BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventModelObject();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1CAD00344()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_1CAD003DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CABCD46C;

  return sub_1CACF81BC(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_412(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_406Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CAD00518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CABCCCB0;

  return sub_1CACF8090(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CAD00678()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1CABED120(v1, v2);
  return sub_1CABED134(v4, v5);
}

uint64_t sub_1CAD0083C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  *v6 = sub_1CAD4CC94();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A50);
  sub_1CAD00964(a1, &v6[*(v7 + 44)]);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v15 = *(a1 + 16);
  v16 = v8;
  v17 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30]((&v14 + 7), v10);
  if (HIBYTE(v14) == 1)
  {
    v11 = sub_1CAD4D8A4();
  }

  else
  {
    v11 = sub_1CAD4D8B4();
  }

  v12 = v11;
  sub_1CAD00C64(v6, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A58);
  *(a2 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_1CAD00964@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464970);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = *(a1 + 64);
  if (v11)
  {
    if (*(a1 + 80))
    {
      v32 = *(a1 + 72);
      v12 = *(a1 + 24);
      v13 = *(a1 + 32);
      v37 = *(a1 + 16);
      v38 = v12;
      LOBYTE(v39) = v13;

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
      MEMORY[0x1CCAA6D30](v33, v14);
    }

    else
    {
    }

    v11 = sub_1CAD4D8F4();
    sub_1CAD4DC94();
    sub_1CAD4C744();
    v31 = v38;
    v32 = v37;
    v29 = v40;
    v30 = v39;
    v15 = v42;
    v28 = v41;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v15 = 0;
  }

  v16 = *(a1 + 48);
  v35 = *(a1 + 40);
  v36 = v16;
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v33[0] = *(a1 + 16);
  v33[1] = v17;
  v34 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  sub_1CAD4DAE4();
  sub_1CABA6054();
  sub_1CAD4DA74();
  v19 = *(v5 + 16);
  v19(v8, v10, v4);
  v21 = v31;
  v20 = v32;
  *a2 = v11;
  a2[1] = v20;
  v23 = v29;
  v22 = v30;
  a2[2] = v21;
  a2[3] = v22;
  v24 = v28;
  a2[4] = v23;
  a2[5] = v24;
  a2[6] = v15;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A60);
  v19(a2 + *(v25 + 48), v8, v4);
  v26 = *(v5 + 8);
  v26(v10, v4);
  v26(v8, v4);
}

uint64_t sub_1CAD00C64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CAD00CD4()
{
  result = qword_1EC467A68;
  if (!qword_1EC467A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467A70);
    sub_1CAD00D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467A68);
  }

  return result;
}

unint64_t sub_1CAD00D58()
{
  result = qword_1EC467A78;
  if (!qword_1EC467A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467A58);
    sub_1CAB23B0C(&qword_1EC467A80, &qword_1EC467A48);
    sub_1CAB23B0C(&unk_1EC462040, &qword_1EC463760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467A78);
  }

  return result;
}

uint64_t type metadata accessor for LocationView()
{
  result = qword_1EC467A98;
  if (!qword_1EC467A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CAD00EB0()
{
  sub_1CAD00FFC(319, &qword_1EC467AA8, MEMORY[0x1E697E180], MEMORY[0x1E697DCC8]);
  if (v0 <= 0x3F)
  {
    sub_1CAD00FFC(319, &qword_1EC467AB0, type metadata accessor for LocationViewModel, MEMORY[0x1E6981A98]);
    if (v1 <= 0x3F)
    {
      sub_1CACAD4A0(319, &qword_1EC463108, MEMORY[0x1E6981940]);
      if (v2 <= 0x3F)
      {
        sub_1CACAD4A0(319, &qword_1EC463558, MEMORY[0x1E6981788]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CAD00FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CAD0107C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a2;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467AB8);
  MEMORY[0x1EEE9AC00](v180);
  v168 = &v159 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467AC0);
  v186 = *(v4 - 8);
  v187 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v169 = &v159 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467AC8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v183 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v188 = &v159 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467AD0);
  v181 = *(v10 - 8);
  v182 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v195 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v200 = &v159 - v13;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467AD8);
  MEMORY[0x1EEE9AC00](v178);
  v160 = (&v159 - v14);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467AE0);
  MEMORY[0x1EEE9AC00](v174);
  v161 = (&v159 - v15);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v159 - v16;
  v164 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v165 = &v159 - v19;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467AE8);
  MEMORY[0x1EEE9AC00](v175);
  v177 = &v159 - v20;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467AF0);
  MEMORY[0x1EEE9AC00](v171);
  v172 = &v159 - v21;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467AF8);
  MEMORY[0x1EEE9AC00](v176);
  v173 = &v159 - v22;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467B00);
  MEMORY[0x1EEE9AC00](v170);
  v162 = (&v159 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467B08);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v194 = &v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v199 = &v159 - v27;
  v28 = type metadata accessor for LocationView();
  v196 = *(v28 - 8);
  v29 = v196[8];
  MEMORY[0x1EEE9AC00](v28);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467B10);
  v192 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v31 = &v159 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467B18);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v193 = &v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v159 - v35;
  v37 = *(v28 + 20);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  v191 = v37;
  v185 = a1;
  sub_1CAD4DBF4();
  v38 = (v227 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v39 = *(v227 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
  v41 = *(v227 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v40 = *(v227 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
  v229 = *(v227 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 32);
  v230 = v39;
  v227 = v41;
  v228 = v40;
  v42 = v38[7];
  v44 = v38[4];
  v43 = v38[5];
  v233 = v38[6];
  v234 = v42;
  v231 = v44;
  v232 = v43;
  v45 = v38[10];
  v47 = v38[8];
  v46 = v38[9];
  v238 = v38[11];
  v237 = v45;
  v235 = v47;
  v236 = v46;
  v212 = v47;
  v213 = v46;
  v214 = v45;
  v215 = v238;
  v208 = v231;
  v209 = v232;
  v210 = v233;
  v211 = v42;
  v204 = v227;
  v205 = v228;
  v206 = v229;
  v207 = v230;
  sub_1CAB23A9C(&v227, v203, &qword_1EC463C30);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C30);
  MEMORY[0x1CCAA6D30](&v216, v48);

  sub_1CAB21B68(&v227, &qword_1EC463C30);
  v203[8] = v224;
  v203[9] = v225;
  v203[10] = v226;
  v203[4] = v220;
  v203[5] = v221;
  v203[6] = v222;
  v203[7] = v223;
  v203[0] = v216;
  v203[1] = v217;
  v203[2] = v218;
  v203[3] = v219;
  v212 = v224;
  v213 = v225;
  v214 = v226;
  v208 = v220;
  v209 = v221;
  v210 = v222;
  v211 = v223;
  v204 = v216;
  v205 = v217;
  v206 = v218;
  v207 = v219;
  enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0 = get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v204);
  v197 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v28;
  v189 = v29;
  if (enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0 == 1)
  {
    v50 = 1;
    v51 = v185;
    v52 = v179;
  }

  else
  {
    sub_1CAB21B68(v203, &qword_1EC463C00);
    *v31 = sub_1CAD4CC94();
    *(v31 + 1) = 0;
    v31[16] = 1;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C18);
    v54 = v185;
    sub_1CAD02838(v185, &v31[*(v53 + 44)]);
    v55 = v54 + *(v28 + 24);
    v56 = *v55;
    v57 = *(v55 + 8);
    LOBYTE(v55) = *(v55 + 16);
    *&v216 = v56;
    *(&v216 + 1) = v57;
    LOBYTE(v217) = v55;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
    MEMORY[0x1CCAA6D30](&v201, v58);
    v59 = v201;
    sub_1CAD07920(v54, &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    v60 = (*(v196 + 80) + 16) & ~*(v196 + 80);
    v61 = swift_allocObject();
    sub_1CAD07984(&v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v61 + v60);
    v62 = v179;
    v63 = &v31[*(v179 + 36)];
    *v63 = v59;
    *(v63 + 1) = sub_1CAD081D0;
    *(v63 + 2) = v61;
    sub_1CAB35F30(v31, v36);
    v50 = 0;
    v51 = v54;
    v52 = v62;
  }

  v64 = *(v192 + 7);
  v192 = v36;
  v64(v36, v50, 1, v52);
  sub_1CAD4DBF4();
  v65 = *(v216 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 8);
  v67 = *(v216 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 16);
  v66 = *(v216 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 24);
  *&v216 = *(v216 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus);
  *(&v216 + 1) = v65;
  *&v217 = v67;
  *(&v217 + 1) = v66;

  sub_1CABED120(v67, v66);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4651D0);
  MEMORY[0x1CCAA6D30](&v201);

  sub_1CABED134(v67, v66);
  if (v202 == 1)
  {
    v68 = sub_1CAD4CC94();
    v69 = v51;
    v70 = v162;
    *v162 = v68;
    *(v70 + 8) = 0;
    *(v70 + 16) = 1;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C10);
    sub_1CAD040C8(v69, v70 + *(v71 + 44));
    v72 = v69 + *(v198 + 24);
    v73 = *v72;
    v74 = *(v72 + 8);
    LOBYTE(v72) = *(v72 + 16);
    *&v216 = v73;
    *(&v216 + 1) = v74;
    LOBYTE(v217) = v72;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
    MEMORY[0x1CCAA6D30](&v201, v75);
    v76 = v201;
    v77 = v197;
    sub_1CAD07920(v69, v197);
    v78 = (*(v196 + 80) + 16) & ~*(v196 + 80);
    v79 = swift_allocObject();
    sub_1CAD07984(v77, v79 + v78);
    v80 = v70 + *(v170 + 36);
    *v80 = v76;
    *(v80 + 8) = sub_1CAD081B8;
    *(v80 + 16) = v79;
    sub_1CAB23A9C(v70, v172, &qword_1EC467B00);
    swift_storeEnumTagMultiPayload();
    sub_1CAD07E4C();
    sub_1CAD07F04();
    v81 = v173;
    sub_1CAD4CE24();
    sub_1CAB23A9C(v81, v177, &qword_1EC467AF8);
    swift_storeEnumTagMultiPayload();
    sub_1CAD07DC0();
    sub_1CAD08074();
    v82 = v199;
    sub_1CAD4CE24();
    v83 = v81;
    v84 = v196;
    sub_1CAB21B68(v83, &qword_1EC467AF8);
    sub_1CAB21B68(v70, &qword_1EC467B00);
    v85 = 0;
    v51 = v185;
    goto LABEL_12;
  }

  sub_1CABED134(v201, v202);
  sub_1CAD4DBF4();
  v86 = v166;
  sub_1CAB23A9C(v216 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, v166, &qword_1EC463FA8);
  v87 = v163;
  MEMORY[0x1CCAA6D30](v167);

  sub_1CAB21B68(v86, &qword_1EC463FA8);
  v88 = v165;
  sub_1CAB23A9C(v87 + *(v164 + 60), v165, &qword_1EC467A40);
  sub_1CAD078C4(v87);
  v89 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v90 = (*(*(v89 - 8) + 48))(v88, 1, v89);
  sub_1CAB21B68(v88, &qword_1EC467A40);
  v84 = v196;
  if (v90 == 1)
  {
    sub_1CAD4DBF4();
    v91 = *(v216 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 8);
    v92 = *(v216 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 16);
    v93 = *(v216 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 24);
    *&v216 = *(v216 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus);
    *(&v216 + 1) = v91;
    *&v217 = v92;
    *(&v217 + 1) = v93;

    sub_1CABED120(v92, v93);
    MEMORY[0x1CCAA6D30](&v201, v179);

    sub_1CABED134(v92, v93);
    v94 = v201;
    v95 = v202;
    if (v202 < 3)
    {
      sub_1CABED134(v201, v202);
      v85 = 1;
      v82 = v199;
      v77 = v197;
      goto LABEL_12;
    }

    v114 = sub_1CAD4CC94();
    v115 = v160;
    *v160 = v114;
    *(v115 + 8) = 0;
    *(v115 + 16) = 1;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467BA0);
    sub_1CAD055BC(v51, v94, v95, v115 + *(v116 + 44));
    sub_1CABED134(v94, v95);
    v117 = v51 + *(v198 + 24);
    v118 = *v117;
    v119 = *(v117 + 8);
    LOBYTE(v117) = *(v117 + 16);
    *&v216 = v118;
    *(&v216 + 1) = v119;
    LOBYTE(v217) = v117;
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
    MEMORY[0x1CCAA6D30](&v201, v120);
    v121 = v201;
    v77 = v197;
    sub_1CAD07920(v51, v197);
    v122 = (*(v196 + 80) + 16) & ~*(v196 + 80);
    v123 = swift_allocObject();
    sub_1CAD07984(v77, v123 + v122);
    v124 = v177;
    v125 = v115 + *(v178 + 36);
    *v125 = v121;
    *(v125 + 8) = sub_1CAD08FF4;
    *(v125 + 16) = v123;
    sub_1CAB23A9C(v115, v124, &qword_1EC467AD8);
    swift_storeEnumTagMultiPayload();
    sub_1CAD07DC0();
    sub_1CAD08074();
    v82 = v199;
    sub_1CAD4CE24();
    v112 = v115;
    v84 = v196;
    v113 = &qword_1EC467AD8;
  }

  else
  {
    v96 = sub_1CAD4CC94();
    v97 = v161;
    *v161 = v96;
    *(v97 + 8) = 0;
    *(v97 + 16) = 1;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C08);
    sub_1CAD04664(v51, v97 + *(v98 + 44));
    v99 = sub_1CAD4CFC4();
    *(v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467BD8) + 36)) = v99;
    v100 = v51 + *(v198 + 24);
    v101 = *v100;
    v102 = *(v100 + 8);
    LOBYTE(v100) = *(v100 + 16);
    *&v216 = v101;
    *(&v216 + 1) = v102;
    LOBYTE(v217) = v100;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
    MEMORY[0x1CCAA6D30](&v201, v103);
    v104 = v201;
    v105 = v197;
    sub_1CAD07920(v51, v197);
    v106 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v107 = swift_allocObject();
    sub_1CAD07984(v105, v107 + v106);
    v108 = v97 + *(v174 + 36);
    *v108 = v104;
    *(v108 + 8) = sub_1CAD0812C;
    *(v108 + 16) = v107;
    sub_1CAB23A9C(v97, v172, &qword_1EC467AE0);
    swift_storeEnumTagMultiPayload();
    sub_1CAD07E4C();
    sub_1CAD07F04();
    v109 = v84;
    v110 = v173;
    sub_1CAD4CE24();
    sub_1CAB23A9C(v110, v177, &qword_1EC467AF8);
    swift_storeEnumTagMultiPayload();
    sub_1CAD07DC0();
    sub_1CAD08074();
    v82 = v199;
    v77 = v197;
    sub_1CAD4CE24();
    v111 = v110;
    v84 = v109;
    sub_1CAB21B68(v111, &qword_1EC467AF8);
    v112 = v97;
    v113 = &qword_1EC467AE0;
  }

  sub_1CAB21B68(v112, v113);
  v85 = 0;
LABEL_12:
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467B20);
  (*(*(v126 - 8) + 56))(v82, v85, 1, v126);
  sub_1CAD4DBF4();
  v127 = sub_1CAC30DA4();

  *&v216 = v127;
  sub_1CAD07920(v51, v77);
  v128 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v129 = swift_allocObject();
  sub_1CAD07984(v77, v129 + v128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467B30);
  sub_1CAB23B0C(&qword_1EC467B38, &qword_1EC467B28);
  sub_1CAD07A68();
  sub_1CAD07BAC();
  sub_1CAD4DB74();
  v130 = v51;
  v131 = v51 + *(v198 + 24);
  v132 = *v131;
  v133 = *(v131 + 8);
  LOBYTE(v131) = *(v131 + 16);
  *&v216 = v132;
  *(&v216 + 1) = v133;
  LOBYTE(v217) = v131;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v201, v134);
  v135 = 1;
  if (v201 == 1)
  {
    v136 = v197;
    sub_1CAD07920(v51, v197);
    v137 = swift_allocObject();
    v138 = sub_1CAD07984(v136, v137 + v128);
    v196 = &v159;
    MEMORY[0x1EEE9AC00](v138);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467B78);
    sub_1CAB23B0C(&qword_1EC467B80, &qword_1EC467B78);
    v139 = v168;
    sub_1CAD4D9E4();
    *(v139 + *(v180 + 36)) = sub_1CAD4D8B4();
    v140 = v130 + *(v198 + 28);
    v141 = *v140;
    v142 = *(v140 + 8);
    LOBYTE(v201) = v141;
    v202 = v142;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
    sub_1CAD4D9B4();
    v143 = v197;
    sub_1CAD07920(v130, v197);
    v144 = swift_allocObject();
    sub_1CAD07984(v143, v144 + v128);
    type metadata accessor for LocationChooser(0);
    sub_1CAD07C78();
    sub_1CAD08998(&qword_1EC465780, type metadata accessor for LocationChooser);
    v145 = v169;
    sub_1CAD4D6E4();

    sub_1CAB21B68(v139, &qword_1EC467AB8);
    (*(v186 + 32))(v188, v145, v187);
    v135 = 0;
  }

  v146 = v188;
  (*(v186 + 56))(v188, v135, 1, v187);
  v147 = v193;
  sub_1CAB23A9C(v192, v193, &qword_1EC467B18);
  v148 = v194;
  sub_1CAB23A9C(v199, v194, &qword_1EC467B08);
  v150 = v181;
  v149 = v182;
  v151 = *(v181 + 16);
  v151(v195, v200, v182);
  v152 = v183;
  sub_1CAB23A9C(v146, v183, &qword_1EC467AC8);
  v153 = v147;
  v154 = v184;
  sub_1CAB23A9C(v153, v184, &qword_1EC467B18);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467B70);
  sub_1CAB23A9C(v148, v154 + v155[12], &qword_1EC467B08);
  v156 = v195;
  v151((v154 + v155[16]), v195, v149);
  sub_1CAB23A9C(v152, v154 + v155[20], &qword_1EC467AC8);
  sub_1CAB21B68(v146, &qword_1EC467AC8);
  v157 = *(v150 + 8);
  v157(v200, v149);
  sub_1CAB21B68(v199, &qword_1EC467B08);
  sub_1CAB21B68(v192, &qword_1EC467B18);
  sub_1CAB21B68(v152, &qword_1EC467AC8);
  v157(v156, v149);
  sub_1CAB21B68(v194, &qword_1EC467B08);
  return sub_1CAB21B68(v193, &qword_1EC467B18);
}

uint64_t sub_1CAD02838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_1CAD4CF64();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C20);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C28);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C30);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - v12;
  v14 = type metadata accessor for LocationView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C38);
  v18 = v17 - 8;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v46 - v22;
  sub_1CAD07920(a1, &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v25 = swift_allocObject();
  sub_1CAD07984(&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v58 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C40);
  sub_1CAB23B0C(&qword_1EC467C48, &qword_1EC467C40);
  sub_1CAD4D9E4();
  *&v23[*(v18 + 44)] = sub_1CAD4CFC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  sub_1CAD4DBF4();
  v26 = v59;
  swift_getKeyPath();
  v59 = v26;
  sub_1CAD08998(&qword_1EC463FB8, type metadata accessor for LocationViewModel);
  sub_1CAD4C424();

  v27 = *(v26 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__mapMarkerItem);
  v28 = v27;

  if (v27)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    MEMORY[0x1EEE9AC00](v29);
    *(&v46 - 2) = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C58);
    sub_1CAD08224();
    v31 = v48;
    sub_1CAD4D9E4();
    v32 = v51;
    sub_1CAD4CF54();
    sub_1CAB23B0C(&qword_1EC467C88, &qword_1EC467C20);
    sub_1CAD08998(&qword_1EC464380, MEMORY[0x1E697C728]);
    v33 = v47;
    v34 = v50;
    v35 = v53;
    sub_1CAD4D4E4();

    (*(v52 + 8))(v32, v35);
    (*(v49 + 8))(v31, v34);
    v37 = v54;
    v36 = v55;
    (*(v54 + 32))(v13, v33, v55);
    v38 = 0;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    v38 = 1;
    v40 = v54;
    v39 = v55;
  }

  (*(v40 + 56))(v13, v38, 1, v39);
  sub_1CAB23A9C(v23, v21, &qword_1EC467C38);
  v41 = v56;
  sub_1CAB23A9C(v13, v56, &qword_1EC467C30);
  v42 = v57;
  sub_1CAB23A9C(v21, v57, &qword_1EC467C38);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C50);
  v44 = v42 + *(v43 + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_1CAB23A9C(v41, v42 + *(v43 + 64), &qword_1EC467C30);
  sub_1CAB21B68(v13, &qword_1EC467C30);
  sub_1CAB21B68(v23, &qword_1EC467C38);
  sub_1CAB21B68(v41, &qword_1EC467C30);
  return sub_1CAB21B68(v21, &qword_1EC467C38);
}

double sub_1CAD02FA8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4CDA4();
  v15 = 0;
  sub_1CAD030C8(&v8);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v16 = v8;
  v17 = v9;
  v23 = v13;
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v22[0] = v8;
  v22[1] = v9;
  sub_1CAB23A9C(&v16, v7, &qword_1EC467CA8);
  sub_1CAB21B68(v22, &qword_1EC467CA8);
  *&v14[39] = v18;
  *&v14[55] = v19;
  *&v14[71] = v20;
  *&v14[87] = v21;
  *&v14[7] = v16;
  *&v14[23] = v17;
  v3 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v3;
  *(a1 + 81) = *&v14[64];
  *(a1 + 96) = *&v14[79];
  result = *&v14[16];
  v5 = *v14;
  *(a1 + 33) = *&v14[16];
  v6 = v15;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return result;
}

uint64_t sub_1CAD030C8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LocationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  sub_1CAD4DBF4();
  v2 = (v140 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v148 = *(v140 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 128);
  v149 = *(v140 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 144);
  v150 = *(v140 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 160);
  v151 = *(v140 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 176);
  v144 = *(v140 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 64);
  v145 = *(v140 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 80);
  v146 = *(v140 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 96);
  v147 = *(v140 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 112);
  v140 = *(v140 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v141 = v2[1];
  v142 = v2[2];
  v143 = v2[3];
  v136 = v148;
  v137 = v149;
  v138 = v150;
  v139 = v151;
  v132 = v144;
  v133 = v145;
  v134 = v146;
  v135 = v147;
  v128 = v140;
  v129 = v141;
  v130 = v142;
  v131 = v143;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C30);
  MEMORY[0x1CCAA6D30](&v105);
  v152[8] = v113;
  v152[9] = v114;
  v152[10] = v115;
  v152[4] = v109;
  v152[5] = v110;
  v152[7] = v112;
  v152[6] = v111;
  v152[0] = v105;
  v152[1] = v106;
  v152[3] = v108;
  v152[2] = v107;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v152) == 1)
  {
    v136 = v113;
    v137 = v114;
    v138 = v115;
    v132 = v109;
    v133 = v110;
    v135 = v112;
    v134 = v111;
    v128 = v105;
    v129 = v106;
    v131 = v108;
    v130 = v107;
    sub_1CAB21B68(&v128, &qword_1EC463C00);
  }

  else
  {
    v136 = v113;
    v137 = v114;
    v138 = v115;
    v132 = v109;
    v133 = v110;
    v135 = v112;
    v134 = v111;
    v128 = v105;
    v129 = v106;
    v4 = *(&v105 + 1);
    v5 = v105;
    v131 = v108;
    v130 = v107;

    sub_1CAB21B68(&v128, &qword_1EC463C00);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  if (qword_1EC462B98 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC47D968;
  v4 = unk_1EC47D970;

LABEL_7:

  *&v128 = v5;
  *(&v128 + 1) = v4;
  sub_1CABA6054();
  v6 = sub_1CAD4D444();
  v67 = v7;
  v68 = v6;
  v66 = v8;
  v69 = v9;
  sub_1CAD4DBF4();
  v10 = (v128 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v11 = *(v128 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 32);
  v13 = *(v128 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v12 = *(v128 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
  v131 = *(v128 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
  v130 = v11;
  v128 = v13;
  v129 = v12;
  v14 = v10[6];
  v16 = v10[4];
  v15 = v10[5];
  v135 = v10[7];
  v134 = v14;
  v132 = v16;
  v133 = v15;
  v17 = v10[10];
  v19 = v10[8];
  v18 = v10[9];
  v139 = v10[11];
  v138 = v17;
  v136 = v19;
  v137 = v18;
  v113 = v19;
  v114 = v18;
  v115 = v17;
  v116 = v139;
  v109 = v132;
  v110 = v133;
  v111 = v134;
  v112 = v135;
  v105 = v128;
  v106 = v129;
  v107 = v130;
  v108 = v131;
  sub_1CAB23A9C(&v128, &v93, &qword_1EC463C30);
  MEMORY[0x1CCAA6D30](&v93, v3);

  sub_1CAB21B68(&v128, &qword_1EC463C30);
  v117[8] = v101;
  v117[9] = v102;
  v117[10] = v103;
  v117[4] = v97;
  v117[5] = v98;
  v117[7] = v100;
  v117[6] = v99;
  v117[0] = v93;
  v117[1] = v94;
  v117[3] = v96;
  v117[2] = v95;
  v125 = v101;
  v126 = v102;
  v127 = v103;
  v121 = v97;
  v122 = v98;
  v124 = v100;
  v123 = v99;
  v118[0] = v93;
  v118[1] = v94;
  v120 = v96;
  v119 = v95;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v118) == 1)
  {
LABEL_15:
    v65 = 0;
    v31 = 1;
    goto LABEL_19;
  }

  if (!*(&v119 + 1))
  {
    sub_1CAB21B68(v117, &qword_1EC463C00);
    goto LABEL_15;
  }

  sub_1CAB21B68(v117, &qword_1EC463C00);
  sub_1CAD4DBF4();
  v20 = *(v93 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
  v22 = *(v93 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v21 = *(v93 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
  v107 = *(v93 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 32);
  v108 = v20;
  v105 = v22;
  v106 = v21;
  v23 = *(v93 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 112);
  v25 = *(v93 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 64);
  v24 = *(v93 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 80);
  v111 = *(v93 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 96);
  v112 = v23;
  v109 = v25;
  v110 = v24;
  v26 = *(v93 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 176);
  v28 = *(v93 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 128);
  v27 = *(v93 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 144);
  v115 = *(v93 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 160);
  v116 = v26;
  v113 = v28;
  v114 = v27;
  v101 = v28;
  v102 = v27;
  v103 = v115;
  v104 = v26;
  v97 = v109;
  v98 = v110;
  v99 = v111;
  v100 = v112;
  v93 = v105;
  v94 = v106;
  v95 = v107;
  v96 = v108;
  sub_1CAB23A9C(&v105, &v71, &qword_1EC463C30);
  MEMORY[0x1CCAA6D30](&v71, v3);

  sub_1CAB21B68(&v105, &qword_1EC463C30);
  v70[8] = v79;
  v70[9] = v80;
  v70[10] = v81;
  v70[4] = v75;
  v70[5] = v76;
  v70[6] = v77;
  v70[7] = v78;
  v70[0] = v71;
  v70[1] = v72;
  v70[2] = v73;
  v70[3] = v74;
  v90 = v79;
  v91 = v80;
  v92 = v81;
  v86 = v75;
  v87 = v76;
  v88 = v77;
  v89 = v78;
  v82 = v71;
  v83 = v72;
  v84 = v73;
  v85 = v74;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v82) != 1)
  {
    v29 = *(&v84 + 1);
    if (*(&v84 + 1))
    {
      v30 = v84;

      sub_1CAB21B68(v70, &qword_1EC463C00);
      if (!v30 && v29 == 0xE000000000000000)
      {

        goto LABEL_15;
      }

      v32 = sub_1CAD4E9E4();

      if (v32)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1CAB21B68(v70, &qword_1EC463C00);
    }
  }

  v31 = 0;
  v65 = 1;
LABEL_19:
  KeyPath = swift_getKeyPath();
  sub_1CAD4DBF4();
  v33 = (v105 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v34 = *(v105 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
  v36 = *(v105 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v35 = *(v105 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
  v107 = *(v105 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 32);
  v108 = v34;
  v105 = v36;
  v106 = v35;
  v37 = v33[7];
  v39 = v33[4];
  v38 = v33[5];
  v111 = v33[6];
  v112 = v37;
  v109 = v39;
  v110 = v38;
  v40 = v33[11];
  v42 = v33[8];
  v41 = v33[9];
  v115 = v33[10];
  v116 = v40;
  v113 = v42;
  v114 = v41;
  v101 = v42;
  v102 = v41;
  v103 = v115;
  v104 = v40;
  v97 = v109;
  v98 = v110;
  v99 = v111;
  v100 = v112;
  v93 = v105;
  v94 = v106;
  v95 = v107;
  v96 = v108;
  sub_1CAB23A9C(&v105, &v71, &qword_1EC463C30);
  MEMORY[0x1CCAA6D30](&v82, v3);

  sub_1CAB21B68(&v105, &qword_1EC463C30);
  v79 = v90;
  v80 = v91;
  v81 = v92;
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v78 = v89;
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v74 = v85;
  v101 = v90;
  v102 = v91;
  v103 = v92;
  v97 = v86;
  v98 = v87;
  v99 = v88;
  v100 = v89;
  v93 = v82;
  v94 = v83;
  v95 = v84;
  v96 = v85;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v93) == 1)
  {
    v43 = 0;
LABEL_24:
    v56 = 0;
    v60 = 0;
    v59 = 0;
    goto LABEL_25;
  }

  v43 = *(&v95 + 1);
  if (!*(&v95 + 1))
  {
    sub_1CAB21B68(&v71, &qword_1EC463C00);
    goto LABEL_24;
  }

  v44 = v95;

  sub_1CAB21B68(&v71, &qword_1EC463C00);
  *&v82 = v44;
  *(&v82 + 1) = v43;
  v45 = sub_1CAD4D444();
  v47 = v46;
  v49 = v48;
  sub_1CAD4D324();
  v50 = sub_1CAD4D424();
  v52 = v51;
  v54 = v53;

  sub_1CABA6128(v45, v47, v49 & 1);

  LODWORD(v82) = sub_1CAD4CFE4();
  v43 = sub_1CAD4D3E4();
  v56 = v55;
  LOBYTE(v47) = v57;
  v59 = v58;
  sub_1CABA6128(v50, v52, v54 & 1);

  v60 = v47 & 1;
  sub_1CABA4F48(v43, v56, v47 & 1);

LABEL_25:
  LOBYTE(v82) = v66 & 1;
  LOBYTE(v70[0]) = v31;
  sub_1CABA4F48(v68, v67, v66 & 1);

  sub_1CABC12F0(v43, v56, v60, v59);
  sub_1CABC1334(v43, v56, v60, v59);
  v61 = v82;
  v62 = v70[0];
  *a1 = v68;
  *(a1 + 8) = v67;
  *(a1 + 16) = v61;
  *(a1 + 24) = v69;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v65;
  *(a1 + 48) = v62;
  *(a1 + 56) = v43;
  *(a1 + 64) = v56;
  *(a1 + 72) = v60;
  *(a1 + 80) = v59;
  sub_1CABC1334(v43, v56, v60, v59);
  sub_1CABA6128(v68, v67, v66 & 1);
}

uint64_t sub_1CAD03ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1CAD4C4C4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C78);
  v7 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v32 - v8;
  v10 = sub_1CAD4C4A4();
  v33 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  sub_1CAD4C494();
  (*(v11 + 16))(v14, v16, v10);
  v17 = sub_1CAD4C484();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  sub_1CAD4C4B4();
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C98);
  sub_1CAB23B0C(&qword_1EC467CA0, &qword_1EC467C98);
  sub_1CAD4C474();
  sub_1CAB23B0C(&qword_1EC467C80, &qword_1EC467C78);
  v19 = v34;
  v18 = v35;
  sub_1CAD4D464();
  (*(v7 + 8))(v9, v19);
  sub_1CAD4DC94();
  sub_1CAD4C744();
  (*(v11 + 8))(v16, v33);
  v20 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C70) + 36));
  v21 = v38;
  *v20 = v37;
  v20[1] = v21;
  v20[2] = v39;
  v22 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467C58) + 36));
  v23 = *(sub_1CAD4C974() + 20);
  v24 = *MEMORY[0x1E697F470];
  v25 = sub_1CAD4CD24();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #8.0 }

  *v22 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463808);
  *&v22[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1CAD03F34()
{
  type metadata accessor for LocationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  sub_1CAD4DBF4();
  v0 = *&v36[0];
  sub_1CABED564(&v23);
  v1 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
  v3 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v2 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
  v26 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 32);
  v27 = v1;
  v24 = v3;
  v25 = v2;
  v4 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 112);
  v6 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 64);
  v5 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 80);
  v30 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 96);
  v31 = v4;
  v28 = v6;
  v29 = v5;
  v7 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 176);
  v9 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 128);
  v8 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 144);
  v34 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 160);
  v35 = v7;
  v32 = v9;
  v33 = v8;
  v19 = v9;
  v20 = v8;
  v21 = v34;
  v22 = v7;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v18 = v31;
  v11 = v24;
  v12 = v25;
  v13 = v26;
  v14 = v27;
  sub_1CAB23A9C(&v24, v36, &qword_1EC463C30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C30);
  sub_1CAD4DAC4();

  v36[8] = v19;
  v36[9] = v20;
  v36[10] = v21;
  v36[11] = v22;
  v36[4] = v15;
  v36[5] = v16;
  v36[6] = v17;
  v36[7] = v18;
  v36[0] = v11;
  v36[1] = v12;
  v36[2] = v13;
  v36[3] = v14;
  return sub_1CAB21B68(v36, &qword_1EC463C30);
}

uint64_t sub_1CAD040C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v38 = a2;
  v2 = type metadata accessor for LocationView();
  v34 = *(v2 - 8);
  v33 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467CB0) - 8;
  v4 = MEMORY[0x1EEE9AC00](v36);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - v6;
  v8 = sub_1CAD4D054();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467CB8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467CC0);
  v16 = v15 - 8;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  sub_1CAD4C6F4();
  sub_1CAD4C114();
  sub_1CAD4D044();
  sub_1CAB23B0C(&qword_1EC467CC8, &qword_1EC467CB8);
  sub_1CAD08998(&qword_1EC467CD0, MEMORY[0x1E697C9C0]);
  sub_1CAD4D4A4();
  (*(v9 + 8))(v11, v8);
  sub_1CAB21B68(v14, &qword_1EC467CB8);
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v22 = &v21[*(v16 + 44)];
  v23 = v40;
  *v22 = v39;
  *(v22 + 1) = v23;
  *(v22 + 2) = v41;
  v24 = v32;
  sub_1CAD07920(v35, v32);
  v25 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v26 = swift_allocObject();
  sub_1CAD07984(v24, v26 + v25);
  sub_1CAD4D9E4();
  *&v7[*(v36 + 44)] = sub_1CAD4CFC4();
  sub_1CAB23A9C(v21, v19, &qword_1EC467CC0);
  v27 = v37;
  sub_1CAB23A9C(v7, v37, &qword_1EC467CB0);
  v28 = v38;
  sub_1CAB23A9C(v19, v38, &qword_1EC467CC0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467CD8);
  sub_1CAB23A9C(v27, v28 + *(v29 + 48), &qword_1EC467CB0);
  sub_1CAB21B68(v7, &qword_1EC467CB0);
  sub_1CAB21B68(v21, &qword_1EC467CC0);
  sub_1CAB21B68(v27, &qword_1EC467CB0);
  return sub_1CAB21B68(v19, &qword_1EC467CC0);
}

uint64_t sub_1CAD045C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC462C00 != -1)
  {
    swift_once();
  }

  sub_1CABA6054();

  result = sub_1CAD4D444();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1CAD04664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467CE0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = sub_1CAD4D8F4();
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v28 = v30;
  v27 = v31;
  v26 = v32;
  v25 = v33;
  v23 = v35;
  v24 = v34;
  sub_1CAD07920(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1CAD07984(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467CE8);
  sub_1CAB23B0C(&qword_1EC467CF0, &qword_1EC467CE8);
  sub_1CAD4D9E4();
  v17 = *(v8 + 16);
  v17(v11, v13, v7);
  v18 = v28;
  *a2 = v14;
  *(a2 + 8) = v18;
  *(a2 + 16) = v27;
  *(a2 + 24) = v26;
  *(a2 + 32) = v25;
  v19 = v23;
  *(a2 + 40) = v24;
  *(a2 + 48) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467CF8);
  v17((a2 + *(v20 + 48)), v11, v7);
  v21 = *(v8 + 8);

  v21(v13, v7);
  v21(v11, v7);
}

uint64_t sub_1CAD049A4(uint64_t a1)
{
  v2 = sub_1CAD4C7C4();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  v7 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - v14;
  v16 = sub_1CAD4BFF4();
  v38 = *(v16 - 8);
  v39 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v35 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LocationView();
  v19 = (a1 + *(v18 + 24));
  v20 = *v19;
  v21 = v19[1];
  LOBYTE(v19) = *(v19 + 16);
  v41 = v20;
  v42 = v21;
  v43 = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v40, v22);
  if (v40 == 1)
  {
    v23 = (a1 + *(v18 + 28));
    v24 = *v23;
    v25 = *(v23 + 1);
    LOBYTE(v41) = v24;
    v42 = v25;
    v40 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
    return sub_1CAD4D9A4();
  }

  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  sub_1CAD4DBF4();
  v34 = a1;
  sub_1CAB23A9C(v41 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, v6, &qword_1EC463FA8);
  MEMORY[0x1CCAA6D30](v4);

  sub_1CAB21B68(v6, &qword_1EC463FA8);
  sub_1CAB23A9C(&v9[*(v7 + 60)], v12, &qword_1EC467A40);
  sub_1CAD078C4(v9);
  v27 = type metadata accessor for EventVirtualConferenceModelObject(0);
  if ((*(*(v27 - 8) + 48))(v12, 1, v27))
  {
    sub_1CAB21B68(v12, &qword_1EC467A40);
    (*(v38 + 56))(v15, 1, 1, v39);
    return sub_1CAB21B68(v15, &qword_1EC465450);
  }

  sub_1CAB23A9C(&v12[*(v27 + 44)], v15, &qword_1EC465450);
  sub_1CAB21B68(v12, &qword_1EC467A40);
  v29 = v38;
  v28 = v39;
  if ((*(v38 + 48))(v15, 1, v39) == 1)
  {
    return sub_1CAB21B68(v15, &qword_1EC465450);
  }

  v30 = v35;
  (*(v29 + 32))(v35, v15, v28);
  v31 = v36;
  sub_1CABF18B4(v36);
  sub_1CAD4C7B4();
  (*(v37 + 8))(v31, v33);
  return (*(v29 + 8))(v30, v28);
}

__n128 sub_1CAD04ECC@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4CDA4();
  sub_1CAD04F6C(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  *(a1 + 49) = *&v4[32];
  *&v4[71] = v6;
  *(a1 + 65) = *&v4[48];
  result = *&v4[63];
  *(a1 + 80) = *&v4[63];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_1CAD04F6C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LocationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CAD08998(&qword_1EC463FB8, type metadata accessor for LocationViewModel);
  sub_1CAD4C424();

  v3 = *(v27 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__vcTitle);
  v2 = *(v27 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__vcTitle + 8);

  if (v2)
  {
    *&v28 = v3;
    *(&v28 + 1) = v2;
    sub_1CABA6054();
    sub_1CAD4D444();
  }

  else
  {
    if (qword_1EC462C08 != -1)
    {
      swift_once();
    }

    v28 = xmmword_1EC47DA48;
    sub_1CABA6054();

    sub_1CAD4D444();
  }

  sub_1CAD4CE24();
  v4 = v28;
  sub_1CAD08434(v28, *(&v28 + 1), v29);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CAD4C424();

  v5 = *(v28 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__vcSubtitle + 8);

  if (v5)
  {
    sub_1CABA6054();
    v6 = sub_1CAD4D444();
    v8 = v7;
    v10 = v9;
    sub_1CAD4D324();
    v26 = a1;
    v11 = sub_1CAD4D424();
    v13 = v12;
    v15 = v14;

    sub_1CABA6128(v6, v8, v10 & 1);

    sub_1CAD4CFE4();
    v5 = sub_1CAD4D3E4();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = v15 & 1;
    v23 = v11;
    v4 = v28;
    a1 = v26;
    sub_1CABA6128(v23, v13, v22);

    v24 = v19 & 1;
    sub_1CABA4F48(v5, v17, v19 & 1);
  }

  else
  {
    v17 = 0;
    v24 = 0;
    v21 = 0;
  }

  sub_1CAD08434(v4, *(&v28 + 1), v29);
  sub_1CABC12F0(v5, v17, v24, v21);
  sub_1CAD08470(v4, *(&v28 + 1), v29);
  sub_1CABC1334(v5, v17, v24, v21);
  *a1 = v28;
  *(a1 + 16) = v29;
  *(a1 + 32) = v30;
  *(a1 + 40) = v5;
  *(a1 + 48) = v17;
  *(a1 + 56) = v24;
  *(a1 + 64) = v21;
  sub_1CABC1334(v5, v17, v24, v21);
  return sub_1CAD08470(v4, *(&v28 + 1), v29);
}

uint64_t sub_1CAD05394()
{
  v0 = type metadata accessor for EventModelObject();
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v13 - v8;
  type metadata accessor for LocationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  sub_1CAD4DBF4();
  v10 = v13[1];
  v11 = type metadata accessor for EventVirtualConferenceModelObject(0);
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1CAB23A9C(v10 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, v6, &qword_1EC463FA8);
  MEMORY[0x1CCAA6D30](v4);
  sub_1CAC358B0(v9, &v3[*(v1 + 68)]);
  sub_1CAD4DAC4();
  sub_1CAB21B68(v6, &qword_1EC463FA8);
  sub_1CAC30074();

  return sub_1CAB21B68(v9, &qword_1EC467A40);
}

uint64_t sub_1CAD055BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v6 = type metadata accessor for LocationView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467CB0);
  v10 = v9 - 8;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  v16 = sub_1CAD4D8F4();
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v17 = v36;
  v29 = v37;
  v30 = v35;
  v28 = v38;
  v26 = v40;
  v27 = v39;
  sub_1CAD07920(a1, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1CAD07984(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v33 = v31;
  v34 = v32;
  sub_1CAD4D9E4();
  *&v15[*(v10 + 44)] = sub_1CAD4CFC4();
  sub_1CAB23A9C(v15, v13, &qword_1EC467CB0);
  v20 = v29;
  v21 = v30;
  *a4 = v16;
  *(a4 + 8) = v21;
  *(a4 + 16) = v17;
  *(a4 + 24) = v20;
  *(a4 + 32) = v28;
  v22 = v26;
  *(a4 + 40) = v27;
  *(a4 + 48) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D00);
  sub_1CAB23A9C(v13, a4 + *(v23 + 48), &qword_1EC467CB0);

  sub_1CAB21B68(v15, &qword_1EC467CB0);
  sub_1CAB21B68(v13, &qword_1EC467CB0);
}

uint64_t sub_1CAD0588C()
{
  type metadata accessor for LocationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  sub_1CAD4DBF4();
  v0 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 16);
  v1 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 24);

  sub_1CABED120(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4651D0);
  sub_1CAD4DAC4();

  return sub_1CABED134(v0, v1);
}

double sub_1CAD05978@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocationView();
  v7 = v6 - 8;
  v30 = *(v6 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[3];
  v45 = a1[2];
  v46 = v9;
  v47 = a1[4];
  v10 = a1[1];
  v43 = *a1;
  v44 = v10;
  v11 = sub_1CAD4CC94();
  v42 = 1;
  sub_1CAD05C60(&v43, &v32);
  v54 = v38;
  v55 = v39;
  v50 = v34;
  v51 = v35;
  v52 = v36;
  v53 = v37;
  v48 = v32;
  v49 = v33;
  v57[6] = v38;
  v57[7] = v39;
  v57[2] = v34;
  v57[3] = v35;
  v57[4] = v36;
  v57[5] = v37;
  v56 = v40;
  v58 = v40;
  v57[0] = v32;
  v57[1] = v33;
  sub_1CAB23A9C(&v48, v31, &qword_1EC467D30);
  sub_1CAB21B68(v57, &qword_1EC467D30);
  *&v41[71] = v52;
  *&v41[55] = v51;
  *&v41[39] = v50;
  *&v41[23] = v49;
  *&v41[119] = v55;
  *&v41[103] = v54;
  *&v41[87] = v53;
  v41[135] = v56;
  *&v41[7] = v48;
  v12 = v42;
  v13 = a2 + *(v7 + 32);
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v13) = *(v13 + 16);
  *&v32 = v14;
  *(&v32 + 1) = v15;
  LOBYTE(v33) = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](v31, v16);
  v17 = v31[0];
  sub_1CAD07920(a2, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v19 = swift_allocObject();
  sub_1CAD07984(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = (v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v46;
  v20[2] = v45;
  v20[3] = v21;
  v20[4] = v47;
  v22 = v44;
  *v20 = v43;
  v20[1] = v22;
  sub_1CABC2CD8(&v43, &v32);
  v23 = sub_1CAD4CD84();
  v24 = *&v41[64];
  *(a3 + 97) = *&v41[80];
  v25 = *&v41[112];
  *(a3 + 113) = *&v41[96];
  *(a3 + 129) = v25;
  v26 = *v41;
  *(a3 + 33) = *&v41[16];
  result = *&v41[32];
  v28 = *&v41[48];
  *(a3 + 49) = *&v41[32];
  *(a3 + 65) = v28;
  *(a3 + 81) = v24;
  *a3 = v11;
  *(a3 + 8) = 0;
  *(a3 + 16) = v12;
  *(a3 + 145) = *&v41[128];
  *(a3 + 17) = v26;
  *(a3 + 160) = v17;
  *(a3 + 168) = sub_1CAD08A6C;
  *(a3 + 176) = v19;
  *(a3 + 184) = v23;
  *(a3 + 192) = sub_1CAC3E60C;
  *(a3 + 200) = 0;
  return result;
}

uint64_t sub_1CAD05C60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CAD05E08(a1, &v25);
  v4 = sub_1CAD4D8A4();
  KeyPath = swift_getKeyPath();
  if (a1[1])
  {
    v6 = *a1;
    v7 = a1[1];
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *&v22[0] = v6;
  *(&v22[0] + 1) = v7;
  sub_1CABA6054();

  v8 = sub_1CAD4D444();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = swift_getKeyPath();
  v17 = v26;
  v20[0] = v25;
  v16 = v25;
  v20[1] = v26;
  v18 = v28;
  v20[2] = v27;
  v20[3] = v28;
  *&v21 = KeyPath;
  *(&v21 + 1) = v4;
  *(a2 + 32) = v27;
  *(a2 + 48) = v18;
  *(a2 + 64) = v21;
  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 80) = v8;
  *(a2 + 88) = v10;
  *(a2 + 96) = v12 & 1;
  *(a2 + 104) = v14;
  *(a2 + 112) = v15;
  *(a2 + 120) = 1;
  *(a2 + 128) = 0;
  sub_1CAB23A9C(v20, v22, &qword_1EC467D38);
  sub_1CABA4F48(v8, v10, v12 & 1);

  sub_1CABA6128(v8, v10, v12 & 1);

  v22[0] = v25;
  v22[1] = v26;
  v22[2] = v27;
  v22[3] = v28;
  v23 = KeyPath;
  v24 = v4;
  return sub_1CAB21B68(v22, &qword_1EC467D38);
}

double sub_1CAD05E08@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 72);
  if (v3 == 1 || v3 == 2)
  {
    sub_1CAD4D8F4();
    sub_1CAD4DC94();
    sub_1CAD4C744();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465B90);
    sub_1CAC6E10C();
    sub_1CAD4CE24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D28);
    sub_1CAD08EC0();
    sub_1CAD4CE24();

    v8 = v5;
    v9 = v6;
    *v10 = *v7;
    *&v10[10] = *&v7[10];
  }

  else
  {
    sub_1CAD4D8F4();
    sub_1CAD4DC94();
    sub_1CAD4C744();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465B90);
    sub_1CAD08EC0();
    sub_1CAC6E10C();
    sub_1CAD4CE24();
  }

  *a2 = v8;
  a2[1] = v9;
  a2[2] = *v10;
  result = *&v10[10];
  *(a2 + 42) = *&v10[10];
  return result;
}

uint64_t sub_1CAD06118(char *a1, uint64_t a2)
{
  type metadata accessor for LocationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  sub_1CAD4DBF4();
  sub_1CABC2CD8(a2, v11);
  v11[0] = sub_1CAC30DA4();
  v4 = sub_1CAD08AF8(v11, a2);
  sub_1CABC2D10(a2);
  v5 = v11[0];
  v6 = *(v11[0] + 16);
  if (v4 > v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(v6, v4 - v6))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    a1 = sub_1CABF1BCC(a1);
    goto LABEL_11;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v4 > *(v5 + 3) >> 1)
  {
    if (v6 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    v5 = sub_1CAD34F64(isUniquelyReferenced_nonNull_native, v8, 1, v5);
    v11[0] = v5;
  }

  sub_1CABF2E54(v4, v6, 0);
  sub_1CAC315BC(v5);

  sub_1CAD4DBF4();
  a1 = sub_1CAC30DA4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v9 = *(a1 + 2);
  v11[0] = (a1 + 32);
  v11[1] = v9;
  sub_1CAC34838(v11);
  sub_1CAC315BC(a1);
}

uint64_t sub_1CAD062A8()
{
  type metadata accessor for LocationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  return sub_1CAD4D9A4();
}

double sub_1CAD0631C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4CC94();
  v17 = 1;
  sub_1CAD06458(&v9);
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v25[0] = v9;
  v25[1] = v10;
  v25[2] = v11;
  v25[3] = v12;
  v25[4] = v13;
  v25[5] = v14;
  v26 = v15;
  sub_1CAB23A9C(&v18, &v8, &qword_1EC467D08);
  sub_1CAB21B68(v25, &qword_1EC467D08);
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[103] = v24;
  *&v16[7] = v18;
  *&v16[23] = v19;
  *&v16[39] = v20;
  v3 = *&v16[32];
  *(a1 + 65) = *&v16[48];
  v4 = *&v16[80];
  *(a1 + 81) = *&v16[64];
  *(a1 + 97) = v4;
  *(a1 + 106) = *&v16[89];
  result = *v16;
  v6 = *&v16[16];
  *(a1 + 17) = *v16;
  *(a1 + 33) = v6;
  v7 = v17;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 49) = v3;
  return result;
}

uint64_t sub_1CAD06458@<X0>(__int128 *a1@<X8>)
{
  v94 = a1;
  *&v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v96);
  v2 = &v93 - v1;
  v3 = type metadata accessor for EventModelObject();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v93 - v8;
  v10 = *(type metadata accessor for LocationView() + 20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  sub_1CAD4DBF4();
  sub_1CAB23A9C(v174 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, v2, &qword_1EC463FA8);
  MEMORY[0x1CCAA6D30](v96);

  sub_1CAB21B68(v2, &qword_1EC463FA8);
  sub_1CAB23A9C(&v6[*(v4 + 68)], v9, &qword_1EC467A40);
  sub_1CAD078C4(v6);
  v12 = type metadata accessor for EventVirtualConferenceModelObject(0);
  LOBYTE(v13) = 1;
  v14 = (*(*(v12 - 8) + 48))(v9, 1, v12);
  sub_1CAB21B68(v9, &qword_1EC467A40);
  *&v95 = v10;
  *&v96 = v11;
  if (v14 == 1)
  {
    sub_1CAD4DBF4();
    v15 = *(v174 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 8);
    v16 = *(v174 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 16);
    v17 = *(v174 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 24);
    *&v174 = *(v174 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus);
    *(&v174 + 1) = v15;
    *&v175 = v16;
    *(&v175 + 1) = v17;

    sub_1CABED120(v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4651D0);
    MEMORY[0x1CCAA6D30](&v158, v18);

    sub_1CABED134(v16, v17);
    if (*(&v158 + 1) >= 3uLL)
    {
      sub_1CABED134(v158, *(&v158 + 1));
    }

    else
    {
      v13 = 6u >> (BYTE8(v158) & 7);
    }
  }

  sub_1CAD4DBF4();
  v19 = (v174 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v20 = *(v174 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 32);
  v22 = *(v174 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v21 = *(v174 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
  v177 = *(v174 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
  v176 = v20;
  v174 = v22;
  v175 = v21;
  v23 = v19[6];
  v25 = v19[4];
  v24 = v19[5];
  v181 = v19[7];
  v180 = v23;
  v178 = v25;
  v179 = v24;
  v26 = v19[10];
  v28 = v19[8];
  v27 = v19[9];
  v185 = v19[11];
  v184 = v26;
  v182 = v28;
  v183 = v27;
  v165 = v28;
  v166 = v27;
  v167 = v26;
  v168 = v185;
  v161 = v178;
  v162 = v179;
  v163 = v180;
  v164 = v181;
  v158 = v174;
  v159 = v175;
  v160[0] = v176;
  v160[1] = v177;
  sub_1CAB23A9C(&v174, &v147, &qword_1EC463C30);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C30);
  MEMORY[0x1CCAA6D30](&v134);

  sub_1CAB21B68(&v174, &qword_1EC463C30);
  v186[8] = v141;
  v186[9] = v142;
  v186[10] = v143;
  v186[4] = v137;
  v186[5] = v138;
  v186[7] = v140;
  v186[6] = v139;
  v186[0] = v134;
  v186[1] = v135;
  v186[3] = v136[1];
  v186[2] = v136[0];
  v187[8] = v141;
  v187[9] = v142;
  v187[10] = v143;
  v187[4] = v137;
  v187[5] = v138;
  v187[7] = v140;
  v187[6] = v139;
  v187[0] = v134;
  v187[1] = v135;
  v187[3] = v136[1];
  v187[2] = v136[0];
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v187) != 1)
  {
    sub_1CAB21B68(v186, &qword_1EC463C00);
    v32 = v13;
    goto LABEL_9;
  }

  sub_1CAD4DBF4();
  v30 = sub_1CAC30DA4();

  v31 = *(v30 + 2);

  v32 = v13;
  if (v13 & 1 | (v31 != 0))
  {
LABEL_9:
    v34 = sub_1CAD4D8F4();
    sub_1CAD4DC94();
    sub_1CAD4C744();
    LOBYTE(v134) = v189;
    LOBYTE(v121) = v191;
    LOBYTE(v97) = 1;
    *&v147 = v34;
    *(&v147 + 1) = v188;
    LOBYTE(v148) = v189;
    *(&v148 + 1) = v190;
    LOBYTE(v149[0]) = v191;
    *(v149 + 8) = v192;
    BYTE8(v149[1]) = 1;
    goto LABEL_10;
  }

  v33 = sub_1CAD4D8F4();
  sub_1CAD4DC94();
  sub_1CAD4C744();
  LOBYTE(v134) = v189;
  LOBYTE(v121) = v191;
  LOBYTE(v97) = 0;
  *&v147 = v33;
  *(&v147 + 1) = v188;
  LOBYTE(v148) = v189;
  *(&v148 + 1) = v190;
  LOBYTE(v149[0]) = v191;
  *(v149 + 8) = v192;
  BYTE8(v149[1]) = 0;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465B90);
  sub_1CAC6E10C();
  sub_1CAD4CE24();
  v169 = v158;
  v170 = v159;
  v171[0] = v160[0];
  *(v171 + 9) = *(v160 + 9);
  v172[0] = v158;
  v172[1] = v159;
  v173[0] = v160[0];
  *(v173 + 9) = *(v160 + 9);
  sub_1CAB23A9C(v172, &v158, &qword_1EC467D10);
  sub_1CAD4DBF4();
  v35 = (v158 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v36 = *(v158 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 32);
  v38 = *(v158 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v37 = *(v158 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
  v160[1] = *(v158 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
  v160[0] = v36;
  v158 = v38;
  v159 = v37;
  v39 = v35[6];
  v41 = v35[4];
  v40 = v35[5];
  v164 = v35[7];
  v163 = v39;
  v161 = v41;
  v162 = v40;
  v42 = v35[10];
  v44 = v35[8];
  v43 = v35[9];
  v168 = v35[11];
  v167 = v42;
  v165 = v44;
  v166 = v43;
  v154 = v44;
  v155 = v43;
  v156 = v42;
  v157 = v168;
  v150 = v161;
  v151 = v162;
  v152 = v163;
  v153 = v164;
  v147 = v158;
  v148 = v159;
  v149[0] = v160[0];
  v149[1] = v160[1];
  sub_1CAB23A9C(&v158, &v134, &qword_1EC463C30);
  MEMORY[0x1CCAA6D30](&v121, v29);

  sub_1CAB21B68(&v158, &qword_1EC463C30);
  v145[8] = v128;
  v145[9] = v129;
  v145[10] = v130;
  v145[4] = v124;
  v145[5] = v125;
  v145[7] = v127;
  v145[6] = v126;
  v145[0] = v121;
  v145[1] = v122;
  v145[3] = v123[1];
  v145[2] = v123[0];
  v146[8] = v128;
  v146[9] = v129;
  v146[10] = v130;
  v146[4] = v124;
  v146[5] = v125;
  v146[7] = v127;
  v146[6] = v126;
  v146[0] = v121;
  v146[1] = v122;
  v146[3] = v123[1];
  v146[2] = v123[0];
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v146) != 1)
  {
    sub_1CAB21B68(v145, &qword_1EC463C00);
    if (v32)
    {
      if (qword_1EC462BA0 != -1)
      {
        swift_once();
      }

      v147 = xmmword_1EC47D978;
      sub_1CABA6054();

      v45 = sub_1CAD4D444();
      v47 = v46;
      *&v134 = v45;
      *(&v134 + 1) = v46;
      v49 = v48 & 1;
      *&v135 = v48 & 1;
      *(&v135 + 1) = v50;
      LOBYTE(v136[0]) = 0;
      sub_1CABA4F48(v45, v46, v48 & 1);

      sub_1CAD4CE24();
      v134 = v147;
      v135 = v148;
      LOWORD(v136[0]) = LOBYTE(v149[0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D18);
      sub_1CAD089E0();
      sub_1CAD4CE24();
      sub_1CABA6128(v45, v47, v49);

      v95 = v147;
      v96 = v148;
      v51 = v149[0];
      v52 = BYTE1(v149[0]);
      goto LABEL_30;
    }
  }

  sub_1CAD4DBF4();
  v53 = *(v134 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 32);
  v55 = *(v134 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v54 = *(v134 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
  v149[1] = *(v134 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
  v149[0] = v53;
  v147 = v55;
  v148 = v54;
  v56 = *(v134 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 96);
  v58 = *(v134 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 64);
  v57 = *(v134 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 80);
  v153 = *(v134 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 112);
  v152 = v56;
  v150 = v58;
  v151 = v57;
  v59 = *(v134 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 160);
  v61 = *(v134 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 128);
  v60 = *(v134 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 144);
  v157 = *(v134 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 176);
  v156 = v59;
  v154 = v61;
  v155 = v60;
  v141 = v61;
  v142 = v60;
  v143 = v59;
  v144 = v157;
  v137 = v150;
  v138 = v151;
  v139 = v152;
  v140 = v153;
  v134 = v147;
  v135 = v148;
  v136[0] = v149[0];
  v136[1] = v149[1];
  sub_1CAB23A9C(&v147, &v121, &qword_1EC463C30);
  MEMORY[0x1CCAA6D30](&v97, v29);

  sub_1CAB21B68(&v147, &qword_1EC463C30);
  v132[8] = v105;
  v132[9] = v106;
  v132[10] = v107;
  v132[4] = v101;
  v132[5] = v102;
  v132[7] = v104;
  v132[6] = v103;
  v132[0] = v97;
  v132[1] = v98;
  v132[2] = v99;
  v132[3] = v100;
  v133[8] = v105;
  v133[9] = v106;
  v133[10] = v107;
  v133[4] = v101;
  v133[5] = v102;
  v133[7] = v104;
  v133[6] = v103;
  v133[0] = v97;
  v133[1] = v98;
  v133[3] = v100;
  v133[2] = v99;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v133) == 1 || (sub_1CAB21B68(v132, &qword_1EC463C00), (v32 & 1) != 0))
  {
    sub_1CAD4DBF4();
    v62 = *(v121 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 32);
    v64 = *(v121 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
    v63 = *(v121 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
    v136[1] = *(v121 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
    v136[0] = v62;
    v134 = v64;
    v135 = v63;
    v65 = *(v121 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 96);
    v67 = *(v121 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 64);
    v66 = *(v121 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 80);
    v140 = *(v121 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 112);
    v139 = v65;
    v137 = v67;
    v138 = v66;
    v68 = *(v121 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 160);
    v70 = *(v121 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 128);
    v69 = *(v121 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 144);
    v144 = *(v121 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 176);
    v143 = v68;
    v141 = v70;
    v142 = v69;
    v128 = v70;
    v129 = v69;
    v130 = v68;
    v131 = v144;
    v124 = v137;
    v125 = v138;
    v126 = v139;
    v127 = v140;
    v121 = v134;
    v122 = v135;
    v123[0] = v136[0];
    v123[1] = v136[1];
    sub_1CAB23A9C(&v134, &v97, &qword_1EC463C30);
    MEMORY[0x1CCAA6D30](&v108, v29);

    sub_1CAB21B68(&v134, &qword_1EC463C30);
    v119[8] = v116;
    v119[9] = v117;
    v119[10] = v118;
    v119[4] = v112;
    v119[5] = v113;
    v119[6] = v114;
    v119[7] = v115;
    v119[0] = v108;
    v119[1] = v109;
    v119[2] = v110;
    v119[3] = v111;
    v120[8] = v116;
    v120[9] = v117;
    v120[10] = v118;
    v120[4] = v112;
    v120[5] = v113;
    v120[6] = v114;
    v120[7] = v115;
    v120[0] = v108;
    v120[1] = v109;
    v120[2] = v110;
    v120[3] = v111;
    if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v120) == 1)
    {
      if (v32)
      {
        if (qword_1EC462BB0 != -1)
        {
          swift_once();
        }

        v121 = xmmword_1EC47D998;
        sub_1CABA6054();

        v71 = sub_1CAD4D444();
        v73 = v72;
        *&v97 = v71;
        *(&v97 + 1) = v72;
        v75 = v74 & 1;
        *&v98 = v74 & 1;
        *(&v98 + 1) = v76;
        LOBYTE(v99) = 0;
        sub_1CABA4F48(v71, v72, v74 & 1);

        sub_1CAD4CE24();
        v97 = v121;
        v98 = v122;
        LOBYTE(v99) = v123[0];
        BYTE1(v99) = 1;
LABEL_26:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D18);
        sub_1CAD089E0();
        sub_1CAD4CE24();
        sub_1CABA6128(v71, v73, v75);

        v95 = v121;
        v96 = v122;
        v51 = v123[0];
        v52 = BYTE1(v123[0]);
        goto LABEL_30;
      }
    }

    else
    {
      sub_1CAB21B68(v119, &qword_1EC463C00);
    }

    if (qword_1EC462B98 != -1)
    {
      swift_once();
    }

    v121 = xmmword_1EC47D968;
    sub_1CABA6054();

    v71 = sub_1CAD4D444();
    v73 = v77;
    v75 = v78 & 1;
    *&v97 = v71;
    *(&v97 + 1) = v77;
    *&v98 = v78 & 1;
    *(&v98 + 1) = v79;
    LOBYTE(v99) = 1;
    sub_1CABA4F48(v71, v77, v78 & 1);

    sub_1CAD4CE24();
    v97 = v121;
    v98 = v122;
    LOBYTE(v99) = v123[0];
    BYTE1(v99) = 1;
    goto LABEL_26;
  }

  if (qword_1EC462BA8 != -1)
  {
    swift_once();
  }

  v134 = xmmword_1EC47D988;
  sub_1CABA6054();

  v80 = sub_1CAD4D444();
  v82 = v81;
  v84 = v83 & 1;
  *&v121 = v80;
  *(&v121 + 1) = v81;
  *&v122 = v83 & 1;
  *(&v122 + 1) = v85;
  LOBYTE(v123[0]) = 1;
  sub_1CABA4F48(v80, v81, v83 & 1);

  sub_1CAD4CE24();
  v121 = v134;
  v122 = v135;
  LOWORD(v123[0]) = LOBYTE(v136[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D18);
  sub_1CAD089E0();
  sub_1CAD4CE24();
  sub_1CABA6128(v80, v82, v84);

  v95 = v134;
  v96 = v135;
  v51 = v136[0];
  v52 = BYTE1(v136[0]);
LABEL_30:
  v121 = v169;
  v122 = v170;
  v123[0] = v171[0];
  *(v123 + 9) = *(v171 + 9);
  v147 = v169;
  v148 = v170;
  v149[0] = v171[0];
  *(v149 + 9) = *(v171 + 9);
  sub_1CAB23A9C(&v121, &v134, &qword_1EC467D28);
  v86 = v95;
  v87 = v96;
  sub_1CAD08A5C(v95, *(&v95 + 1), v96);
  sub_1CAB21B68(v172, &qword_1EC467D10);
  LOBYTE(v97) = v52;
  v88 = v148;
  v89 = v94;
  *v94 = v147;
  v89[1] = v88;
  v90 = v149[1];
  v89[2] = v149[0];
  v89[3] = v90;
  v91 = v96;
  v89[4] = v95;
  v89[5] = v91;
  *(v89 + 96) = v51;
  *(v89 + 97) = v52;
  sub_1CAD08A64(v86, *(&v86 + 1), v87);
  v134 = v169;
  v135 = v170;
  v136[0] = v171[0];
  *(v136 + 9) = *(v171 + 9);
  return sub_1CAB21B68(&v134, &qword_1EC467D10);
}

uint64_t sub_1CAD07614@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  type metadata accessor for LocationView();
  sub_1CAD4DC04();
  swift_getKeyPath();
  v6 = type metadata accessor for LocationChooser(0);
  sub_1CAD4DC24();

  (*(v3 + 8))(v5, v2);
  sub_1CAD4DBF4();
  sub_1CAC336C4(v19);
  v7 = v20;
  v8 = v21;
  LOWORD(v5) = v22;
  v14 = v19[0];
  v13 = v19[1];

  v23[1] = v13;
  v23[0] = v14;
  v24 = v7;
  v25 = v8;
  v26 = v5;
  v9 = a1 + v6[6];
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1CAD4D984();
  v10 = v16;
  *v9 = v15;
  *(v9 + 16) = v10;
  v11 = v6[8];
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LocationDataModel(0);
  swift_allocObject();
  sub_1CAD088E8(v19, &v15);
  sub_1CAD1B9E0(2047, v23);
  sub_1CAD08944(v19);
  sub_1CAD08998(&qword_1EC465790, type metadata accessor for LocationDataModel);
  sub_1CAD4DC14();
  result = sub_1CAD08944(v19);
  *(a1 + v6[7]) = 1;
  return result;
}

uint64_t sub_1CAD078C4(uint64_t a1)
{
  v2 = type metadata accessor for EventModelObject();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CAD07920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAD07984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1CAD079E8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LocationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CAD05978(a1, v6, a2);
}

unint64_t sub_1CAD07A68()
{
  result = qword_1EC467B40;
  if (!qword_1EC467B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467B30);
    sub_1CAD07AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467B40);
  }

  return result;
}

unint64_t sub_1CAD07AF4()
{
  result = qword_1EC467B48;
  if (!qword_1EC467B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467B50);
    sub_1CAB23B0C(&qword_1EC467B58, &qword_1EC467B60);
    sub_1CAC2F5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467B48);
  }

  return result;
}

unint64_t sub_1CAD07BAC()
{
  result = qword_1EC467B68;
  if (!qword_1EC467B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467B68);
  }

  return result;
}

uint64_t sub_1CAD07C08@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LocationView();

  return sub_1CAD07614(a1);
}

unint64_t sub_1CAD07C78()
{
  result = qword_1EC467B88;
  if (!qword_1EC467B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467AB8);
    sub_1CAB23B0C(&qword_1EC467B90, &qword_1EC467B98);
    sub_1CAB23B0C(&unk_1EC462040, &qword_1EC463760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467B88);
  }

  return result;
}

unint64_t sub_1CAD07DC0()
{
  result = qword_1EC467BA8;
  if (!qword_1EC467BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467AF8);
    sub_1CAD07E4C();
    sub_1CAD07F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467BA8);
  }

  return result;
}

unint64_t sub_1CAD07E4C()
{
  result = qword_1EC467BB0;
  if (!qword_1EC467BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467B00);
    sub_1CAB23B0C(&qword_1EC467BB8, &qword_1EC467BC0);
    sub_1CAC2F5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467BB0);
  }

  return result;
}

unint64_t sub_1CAD07F04()
{
  result = qword_1EC467BC8;
  if (!qword_1EC467BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467AE0);
    sub_1CAD07F90();
    sub_1CAC2F5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467BC8);
  }

  return result;
}

unint64_t sub_1CAD07F90()
{
  result = qword_1EC467BD0;
  if (!qword_1EC467BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467BD8);
    sub_1CAB23B0C(&qword_1EC467BE0, &qword_1EC467BE8);
    sub_1CAB23B0C(&qword_1EC462050, &qword_1EC4631C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467BD0);
  }

  return result;
}

unint64_t sub_1CAD08074()
{
  result = qword_1EC467BF0;
  if (!qword_1EC467BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467AD8);
    sub_1CAB23B0C(&qword_1EC467BF8, &qword_1EC467C00);
    sub_1CAC2F5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467BF0);
  }

  return result;
}

uint64_t sub_1CAD08144(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LocationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1CAD08224()
{
  result = qword_1EC467C60;
  if (!qword_1EC467C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467C58);
    sub_1CAD082DC();
    sub_1CAB23B0C(&qword_1EC463838, &qword_1EC463808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467C60);
  }

  return result;
}

unint64_t sub_1CAD082DC()
{
  result = qword_1EC467C68;
  if (!qword_1EC467C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467C78);
    sub_1CAB23B0C(&qword_1EC467C80, &qword_1EC467C78);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467C68);
  }

  return result;
}

uint64_t sub_1CAD083D8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEDE8A50](v1);
}

uint64_t sub_1CAD08434(uint64_t a1, uint64_t a2, char a3)
{
  sub_1CABA4F48(a1, a2, a3 & 1);
}

uint64_t sub_1CAD08470(uint64_t a1, uint64_t a2, char a3)
{
  sub_1CABA6128(a1, a2, a3 & 1);
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for LocationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1CAD4C7C4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A90);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAD08638(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v31 = *(a2 + 65);
  v4 = a2[1];
  v43 = *a2;
  v36 = a2[2];
  v44 = a2[3];
  v37 = a2[5];
  v38 = *(a1 + 16);
  v5 = (a1 + 56);
  v34 = a2[4];
  v35 = a2[6];
  v33 = a2[7];
  v42 = v4;
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v9 = *v5;
    v8 = v5[1];
    v10 = v5[2];
    v11 = v5[3];
    v12 = v5[4];
    v13 = *(v5 + 40);
    v14 = *(v5 + 41);
    v15 = v5[6];
    if (v6)
    {
      if (!v4)
      {
        goto LABEL_4;
      }

      if (*(v5 - 3) != v43 || v6 != v4)
      {
        v40 = v5[3];
        v41 = v5[4];
        v39 = *(v5 + 40);
        v16 = *(v5 + 41);
        v17 = v5[6];
        v18 = v5[2];
        v19 = v5[1];
        v20 = sub_1CAD4E9E4();
        v8 = v19;
        v10 = v18;
        v15 = v17;
        v14 = v16;
        v13 = v39;
        v11 = v40;
        v12 = v41;
        v4 = v42;
        v2 = v38;
        if ((v20 & 1) == 0)
        {
          goto LABEL_4;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_4;
    }

    if (v9)
    {
      if (!v44)
      {
        goto LABEL_4;
      }

      if (v7 != v36 || v9 != v44)
      {
        v21 = v15;
        v22 = v10;
        v23 = v8;
        v24 = sub_1CAD4E9E4();
        v8 = v23;
        v10 = v22;
        v15 = v21;
        v4 = v42;
        v2 = v38;
        if ((v24 & 1) == 0)
        {
          goto LABEL_4;
        }
      }
    }

    else if (v44)
    {
      goto LABEL_4;
    }

    if (v10)
    {
      if (!v37)
      {
        goto LABEL_4;
      }

      if (v8 != v34 || v10 != v37)
      {
        v25 = v15;
        v26 = sub_1CAD4E9E4();
        v15 = v25;
        v4 = v42;
        v2 = v38;
        if ((v26 & 1) == 0)
        {
          goto LABEL_4;
        }
      }
    }

    else if (v37)
    {
      goto LABEL_4;
    }

    if (v11 == v35 && v12 == v33 || (v27 = v14, v28 = v15, v29 = sub_1CAD4E9E4(), v15 = v28, v14 = v27, v4 = v42, v2 = v38, (v29 & 1) != 0))
    {
      if (v13 == (a2[8] & 1) && ((v14 ^ v31) & 1) == 0 && v15 == a2[9])
      {
        return v3;
      }
    }

LABEL_4:
    ++v3;
    v5 += 10;
  }

  while (v2 != v3);
  return 0;
}

uint64_t sub_1CAD08998(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CAD089E0()
{
  result = qword_1EC467D20;
  if (!qword_1EC467D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467D20);
  }

  return result;
}

uint64_t sub_1CAD08A6C()
{
  v1 = *(type metadata accessor for LocationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1CAD06118((v0 + v2), v3);
}

uint64_t sub_1CAD08AF8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_1CAD08638(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_51;
  }

  v9 = *(v4 + 16);
  if (v8 == v9)
  {
    return v7;
  }

  v10 = 80 * result + 112;
  while (v8 < v9)
  {
    v94 = v7;
    v11 = v4 + v10;
    v12 = *(v4 + v10 + 8);
    v13 = *(v4 + v10 + 16);
    v15 = *(v4 + v10 + 24);
    v14 = *(v4 + v10 + 32);
    v17 = *(v4 + v10 + 40);
    v16 = *(v4 + v10 + 48);
    v18 = *(v4 + v10 + 56);
    v19 = *(v4 + v10 + 64);
    v20 = *(v4 + v10 + 65);
    v21 = *(v4 + v10 + 72);
    v22 = *(a2 + 8);
    v23 = *(a2 + 16);
    v25 = *(a2 + 24);
    v24 = *(a2 + 32);
    v27 = *(a2 + 40);
    v26 = *(a2 + 48);
    v28 = *(a2 + 56);
    if (v12)
    {
      if (!v22)
      {
        goto LABEL_37;
      }

      result = *v11;
      if (*v11 != *a2 || v12 != v22)
      {
        v58 = *(a2 + 16);
        v60 = *(v4 + v10 + 65);
        v75 = *(v4 + v10 + 48);
        v78 = *(v4 + v10 + 72);
        v29 = *(v4 + v10 + 64);
        v59 = *(v4 + v10 + 56);
        v69 = *(a2 + 56);
        v72 = *(a2 + 48);
        v65 = *(v4 + v10 + 32);
        v67 = *(v4 + v10 + 40);
        v61 = *(a2 + 32);
        v63 = *(a2 + 40);
        result = sub_1CAD4E9E4();
        v23 = v58;
        v24 = v61;
        v27 = v63;
        v14 = v65;
        v17 = v67;
        v28 = v69;
        v26 = v72;
        v18 = v59;
        v16 = v75;
        v21 = v78;
        v19 = v29;
        v20 = v60;
        if ((result & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v22)
    {
      goto LABEL_37;
    }

    if (v15)
    {
      if (!v25)
      {
        goto LABEL_37;
      }

      if (v13 != v23 || v15 != v25)
      {
        v76 = v16;
        v79 = v21;
        v30 = v19;
        v31 = v18;
        v70 = v28;
        v73 = v26;
        v66 = v14;
        v68 = v17;
        v62 = v24;
        v64 = v27;
        result = sub_1CAD4E9E4();
        v24 = v62;
        v27 = v64;
        v14 = v66;
        v17 = v68;
        v28 = v70;
        v26 = v73;
        v18 = v31;
        v16 = v76;
        v21 = v79;
        v19 = v30;
        if ((result & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v25)
    {
      goto LABEL_37;
    }

    if (v17)
    {
      if (!v27)
      {
        goto LABEL_37;
      }

      if (v14 != v24 || v17 != v27)
      {
        v77 = v16;
        v80 = v21;
        v32 = v19;
        v33 = v18;
        v71 = v28;
        v74 = v26;
        result = sub_1CAD4E9E4();
        v28 = v71;
        v26 = v74;
        v18 = v33;
        v16 = v77;
        v21 = v80;
        v19 = v32;
        if ((result & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v27)
    {
      goto LABEL_37;
    }

    if (v16 == v26 && v18 == v28 || (v34 = v21, v35 = v19, result = sub_1CAD4E9E4(), v19 = v35, v21 = v34, (result & 1) != 0))
    {
      if (v19 == (*(a2 + 64) & 1) && ((v20 ^ *(a2 + 65)) & 1) == 0 && v21 == *(a2 + 72))
      {
        v7 = v94;
        goto LABEL_45;
      }
    }

LABEL_37:
    v36 = v94;
    if (v8 != v94)
    {
      if (v94 >= v9)
      {
        goto LABEL_48;
      }

      v37 = (v4 + 32 + 80 * v94);
      v84 = *v37;
      v38 = v37[1];
      v39 = v37[2];
      v40 = v37[4];
      v87 = v37[3];
      v88 = v40;
      v85 = v38;
      v86 = v39;
      v41 = *(v11 + 64);
      v43 = *(v11 + 16);
      v42 = *(v11 + 32);
      v92 = *(v11 + 48);
      v93 = v41;
      v90 = v43;
      v91 = v42;
      v89 = *v11;
      sub_1CABC2CD8(&v84, v83);
      sub_1CABC2CD8(&v89, v83);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1CABF1BCC(v4);
        v4 = result;
      }

      if (v36 >= *(v4 + 16))
      {
        goto LABEL_49;
      }

      v44 = (v4 + 80 * v36);
      v82[0] = v44[2];
      v45 = v44[3];
      v46 = v44[4];
      v47 = v44[6];
      v82[3] = v44[5];
      v82[4] = v47;
      v82[1] = v45;
      v82[2] = v46;
      v48 = v93;
      v50 = v90;
      v49 = v91;
      v44[5] = v92;
      v44[6] = v48;
      v44[3] = v50;
      v44[4] = v49;
      v44[2] = v89;
      result = sub_1CABC2D10(v82);
      if (v8 >= *(v4 + 16))
      {
        goto LABEL_50;
      }

      v51 = (v4 + v10);
      v83[0] = *(v4 + v10);
      v52 = *(v4 + v10 + 16);
      v53 = *(v4 + v10 + 32);
      v54 = *(v4 + v10 + 64);
      v83[3] = *(v4 + v10 + 48);
      v83[4] = v54;
      v83[1] = v52;
      v83[2] = v53;
      v55 = v88;
      v57 = v85;
      v56 = v86;
      v51[3] = v87;
      v51[4] = v55;
      v51[1] = v57;
      v51[2] = v56;
      *v51 = v84;
      result = sub_1CABC2D10(v83);
      *a1 = v4;
    }

    v7 = v36 + 1;
LABEL_45:
    ++v8;
    v9 = *(v4 + 16);
    v10 += 80;
    if (v8 == v9)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

unint64_t sub_1CAD08EC0()
{
  result = qword_1EC467D40;
  if (!qword_1EC467D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467D28);
    sub_1CAC6E10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467D40);
  }

  return result;
}

unint64_t sub_1CAD08F44()
{
  result = qword_1EC467D48;
  if (!qword_1EC467D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467D50);
    sub_1CAB23B0C(&qword_1EC467D58, &qword_1EC467D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467D48);
  }

  return result;
}

void sub_1CAD09044()
{
  sub_1CAD091A0(319, &qword_1EC467D88, type metadata accessor for LocationDataModel, MEMORY[0x1E6981A98]);
  if (v0 <= 0x3F)
  {
    sub_1CAD091A0(319, &qword_1EC467D90, type metadata accessor for LocationModelObject, MEMORY[0x1E6981940]);
    if (v1 <= 0x3F)
    {
      sub_1CACD9D28(319, &qword_1EC463A48);
      if (v2 <= 0x3F)
      {
        sub_1CAD091A0(319, &qword_1EC463A50, MEMORY[0x1E697BF88], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CAD091A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CAD09220@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CAD4CC04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LocationChooser(0);
  sub_1CAB23A9C(v1 + *(v10 + 32), v9, &qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C784();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1CAD4E3F4();
    v13 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1CAD09428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for LocationChooser(0);
  v4 = v3 - 8;
  v82 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v85 = v5;
  v86 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1CAD4CC34();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CAD4CE94();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1CAD4CEA4();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467DC8);
  MEMORY[0x1EEE9AC00](v89);
  v15 = &v62 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467DC0);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v88 = (&v62 - v16);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467DB8);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v62 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467DB0);
  v71 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v70 = &v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467DA8);
  v80 = *(v19 - 8);
  v81 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v62 - v20;
  sub_1CAD0A09C(a1, v15);
  v21 = *(v4 + 32);
  v91 = a1;
  v22 = (a1 + v21);
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v79 = v23;
  v98 = v23;
  v99 = v24;
  v78 = v24;
  v77 = v25;
  v100 = v25;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B08);
  sub_1CAD4D9B4();
  sub_1CAD4CE84();
  sub_1CAD4CE74();
  (*(v9 + 8))(v11, v8);
  if (qword_1EC462BC0 != -1)
  {
    swift_once();
  }

  v94 = qword_1EC47D9B8;
  v95 = qword_1EC47D9C0;
  v26 = sub_1CAD0E120();
  v27 = sub_1CABA6054();

  v28 = MEMORY[0x1E69E6158];
  sub_1CAD4D4C4();

  (*(v63 + 8))(v13, v64);
  sub_1CAB21B68(v15, &qword_1EC467DC8);
  if (qword_1EC462BB8 != -1)
  {
    swift_once();
  }

  v98 = qword_1EC47D9A8;
  v99 = unk_1EC47D9B0;
  v94 = v89;
  v95 = v28;
  v96 = v26;
  v97 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v66;
  v31 = v67;
  v32 = v88;
  sub_1CAD4D5D4();
  (*(v65 + 8))(v32, v31);
  v33 = v73;
  v34 = v72;
  v35 = v74;
  (*(v73 + 104))(v72, *MEMORY[0x1E697C430], v74);
  v94 = v31;
  v95 = v28;
  v96 = OpaqueTypeConformance2;
  v97 = v27;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v70;
  v38 = v69;
  sub_1CAD4D694();
  (*(v33 + 8))(v34, v35);
  v39 = (*(v68 + 8))(v30, v38);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v91;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A70);
  v94 = v38;
  v95 = v36;
  v89 = swift_getOpaqueTypeConformance2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463AE8);
  v43 = sub_1CAB23B0C(&qword_1EC463AF0, &qword_1EC463AE8);
  v94 = v42;
  v95 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v75;
  sub_1CAD4D734();
  (*(v71 + 8))(v37, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D68);
  sub_1CAD4DBF4();
  v46 = v94;
  swift_getKeyPath();
  v94 = v46;
  sub_1CAD0E348(&qword_1EC465790, type metadata accessor for LocationDataModel);
  sub_1CAD4C424();

  v47 = OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel__selectedLocationResult;
  swift_beginAccess();
  v48 = v84;
  sub_1CAD0E390(v46 + v47, v84, type metadata accessor for LocationModelObject);

  v88 = type metadata accessor for LocationChooser;
  v49 = v86;
  sub_1CAD0E390(v40, v86, type metadata accessor for LocationChooser);
  v50 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v51 = swift_allocObject();
  v82 = type metadata accessor for LocationChooser;
  sub_1CAD0E8F0(v49, v51 + v50, type metadata accessor for LocationChooser);
  v94 = v45;
  v95 = v41;
  v96 = v89;
  v97 = v44;
  swift_getOpaqueTypeConformance2();
  sub_1CAD0E348(&qword_1EC467E28, type metadata accessor for LocationModelObject);
  v52 = v87;
  v53 = v81;
  v54 = v90;
  sub_1CAD4D754();

  sub_1CAD0ECCC(v48, type metadata accessor for LocationModelObject);
  (*(v80 + 8))(v54, v53);
  v94 = v79;
  v95 = v78;
  v96 = v77;
  sub_1CAD4D994();
  v55 = v92;
  v56 = v93;
  sub_1CAD0E390(v91, v49, v88);
  v57 = swift_allocObject();
  sub_1CAD0E8F0(v49, v57 + v50, v82);
  v58 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D98) + 36));
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B00);
  result = sub_1CAD4E2E4();
  v61 = (v58 + *(v59 + 40));
  *v61 = v55;
  v61[1] = v56;
  *v58 = &unk_1CAD68DA8;
  v58[1] = v57;
  return result;
}

uint64_t sub_1CAD0A09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E20);
  v104 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v103 = &v95 - v3;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E30);
  MEMORY[0x1EEE9AC00](v112);
  v115 = &v95 - v4;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E10);
  MEMORY[0x1EEE9AC00](v114);
  v100 = &v95 - v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463AD0);
  v98 = *(v99 - 8);
  v6 = MEMORY[0x1EEE9AC00](v99);
  v97 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E38);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v106 = &v95 - v10;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E00);
  MEMORY[0x1EEE9AC00](v124);
  v113 = &v95 - v11;
  v12 = type metadata accessor for LocationSearchResults(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E40);
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v95 - v16;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467DF0);
  MEMORY[0x1EEE9AC00](v122);
  v111 = &v95 - v17;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463AB0);
  v109 = *(v110 - 8);
  v18 = MEMORY[0x1EEE9AC00](v110);
  v107 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v95 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E48);
  v117 = *(v21 - 8);
  v118 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v101 = &v95 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E50);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v105 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v119 = &v95 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v120 = &v95 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E58);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v95 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D68);
  v32 = a1;
  sub_1CAD4DBF4();
  v33 = v128;
  swift_getKeyPath();
  v128 = v33;
  sub_1CAD0E348(&qword_1EC465790, type metadata accessor for LocationDataModel);
  sub_1CAD4C424();

  v34 = OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel__result;
  swift_beginAccess();
  sub_1CAB23A9C(v33 + v34, v31, &qword_1EC467E58);

  if ((*(v13 + 48))(v31, 1, v12) == 1)
  {
    v35 = type metadata accessor for LocationChooser(0);
    if (*(v32 + *(v35 + 28)) == 1)
    {
      v36 = (v32 + *(v35 + 24));
      v37 = *v36;
      v38 = *(v36 + 2);
      v126 = v37;
      v127 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B08);
      sub_1CAD4D994();
      v39 = sub_1CAD4E064();

      v41 = v120;
      if (v39 < 1)
      {
        v46 = 1;
        v44 = v117;
        v45 = v118;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v40);
        *(&v95 - 2) = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
        sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
        v42 = v101;
        sub_1CAD4D374();
        v44 = v117;
        v43 = v118;
        (*(v117 + 32))(v41, v42, v118);
        v45 = v43;
        v46 = 0;
      }
    }

    else
    {
      v46 = 1;
      v44 = v117;
      v45 = v118;
      v41 = v120;
    }

    (*(v44 + 56))(v41, v46, 1, v45);
    v86 = v108;
    sub_1CAD4C6F4();
    v87 = v119;
    sub_1CAB23A9C(v41, v119, &qword_1EC467E50);
    v88 = v109;
    v89 = *(v109 + 16);
    v90 = v107;
    v91 = v110;
    v89(v107, v86, v110);
    v92 = v111;
    sub_1CAB23A9C(v87, v111, &qword_1EC467E50);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E78);
    v89((v92 + *(v93 + 48)), v90, v91);
    v94 = *(v88 + 8);
    v94(v90, v91);
    sub_1CAB21B68(v87, &qword_1EC467E50);
    sub_1CAB23A9C(v92, v123, &qword_1EC467DF0);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC467DE8, &qword_1EC467DF0);
    sub_1CAD0E25C();
    sub_1CAD4CE24();
    sub_1CAB21B68(v92, &qword_1EC467DF0);
    v94(v86, v91);
    return sub_1CAB21B68(v120, &qword_1EC467E50);
  }

  else
  {
    v47 = v32;
    sub_1CAD0E8F0(v31, v15, type metadata accessor for LocationSearchResults);
    v48 = v106;
    sub_1CAB23A9C(v15, v106, &qword_1EC467E38);
    v49 = type metadata accessor for LocationSearchResult(0);
    v50 = (*(*(v49 - 8) + 48))(v48, 1, v49);
    v51 = sub_1CAB21B68(v48, &qword_1EC467E38);
    v52 = v15;
    if (v50 != 1 || (v53 = *&v15[*(v12 + 20)]) != 0 && *(v53 + 16))
    {
      MEMORY[0x1EEE9AC00](v51);
      *(&v95 - 2) = v47;
      *(&v95 - 1) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E68);
      sub_1CAB23B0C(&qword_1EC467E70, &qword_1EC467E68);
      v54 = v103;
      sub_1CAD4D374();
      v55 = v104;
      v56 = v116;
      (*(v104 + 16))(v115, v54, v116);
      swift_storeEnumTagMultiPayload();
      sub_1CAB23B0C(&qword_1EC467E08, &qword_1EC467E10);
      sub_1CAB23B0C(&qword_1EC467E18, &qword_1EC467E20);
      v57 = v113;
      sub_1CAD4CE24();
      (*(v55 + 8))(v54, v56);
    }

    else
    {
      v58 = type metadata accessor for LocationChooser(0);
      v59 = v58;
      v60 = v47;
      v61 = *(v47 + *(v58 + 28)) == 1;
      v57 = v113;
      v96 = v52;
      if (v61 && (v62 = (v60 + *(v58 + 24)), v63 = *v62, v64 = *(v62 + 2), v126 = v63, v127 = v64, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B08), sub_1CAD4D994(), v65 = sub_1CAD4E064(), v66 = , v65 >= 1))
      {
        MEMORY[0x1EEE9AC00](v66);
        *(&v95 - 2) = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
        sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
        v67 = v101;
        sub_1CAD4D374();
        v69 = v117;
        v68 = v118;
        (*(v117 + 32))(v105, v67, v118);
        v70 = v68;
        v71 = 0;
      }

      else
      {
        v71 = 1;
        v69 = v117;
        v70 = v118;
      }

      v72 = v105;
      (*(v69 + 56))(v105, v71, 1, v70);
      v73 = (v60 + *(v59 + 24));
      v74 = *v73;
      v75 = *(v73 + 2);
      v126 = v74;
      v127 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B08);
      sub_1CAD4D994();
      v76 = v102;
      sub_1CAD4CFA4();

      v77 = v119;
      sub_1CAB23A9C(v72, v119, &qword_1EC467E50);
      v78 = v98;
      v79 = *(v98 + 16);
      v80 = v97;
      v81 = v99;
      v79(v97, v76, v99);
      v82 = v100;
      sub_1CAB23A9C(v77, v100, &qword_1EC467E50);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E60);
      v79((v82 + *(v83 + 48)), v80, v81);
      v84 = *(v78 + 8);
      v84(v80, v81);
      sub_1CAB21B68(v77, &qword_1EC467E50);
      sub_1CAB23A9C(v82, v115, &qword_1EC467E10);
      swift_storeEnumTagMultiPayload();
      sub_1CAB23B0C(&qword_1EC467E08, &qword_1EC467E10);
      sub_1CAB23B0C(&qword_1EC467E18, &qword_1EC467E20);
      sub_1CAD4CE24();
      sub_1CAB21B68(v82, &qword_1EC467E10);
      v84(v102, v81);
      sub_1CAB21B68(v105, &qword_1EC467E50);
      v52 = v96;
    }

    sub_1CAB23A9C(v57, v123, &qword_1EC467E00);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC467DE8, &qword_1EC467DF0);
    sub_1CAD0E25C();
    sub_1CAD4CE24();
    sub_1CAB21B68(v57, &qword_1EC467E00);
    return sub_1CAD0ECCC(v52, type metadata accessor for LocationSearchResults);
  }
}

uint64_t sub_1CAD0B194(uint64_t a1)
{
  v2 = type metadata accessor for LocationChooser(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CAD0E390(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LocationChooser);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1CAD0E8F0(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for LocationChooser);
  v9 = a1;
  return sub_1CAD4D9E4();
}

uint64_t sub_1CAD0B2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E80);
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E88);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v67 - v10;
  v11 = type metadata accessor for LocationChooser.ResultView(0);
  v76 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E38);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v67 - v15;
  v75 = type metadata accessor for LocationSearchResult(0);
  v17 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v70 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E90);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v80 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v67 - v22;
  v23 = type metadata accessor for LocationChooser(0);
  v72 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v73 = v24;
  v74 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v67 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466440);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v77 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v85 = a1;
  v86 = &v67 - v32;
  if (*(a1 + *(v23 + 28)) == 1)
  {
    v69 = a2;
    v33 = a1 + *(v23 + 24);
    v34 = *v33;
    v35 = *(v33 + 16);
    v88 = v34;
    v89 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B08);
    sub_1CAD4D994();
    v36 = a1;
    v37 = sub_1CAD4E064();

    if (v37 < 1)
    {
      v44 = 1;
    }

    else
    {
      v68 = v13;
      v38 = v11;
      v39 = v74;
      sub_1CAD0E390(v36, v74, type metadata accessor for LocationChooser);
      v40 = (*(v72 + 80) + 16) & ~*(v72 + 80);
      v41 = swift_allocObject() + v40;
      v42 = v39;
      v11 = v38;
      v13 = v68;
      v43 = sub_1CAD0E8F0(v42, v41, type metadata accessor for LocationChooser);
      MEMORY[0x1EEE9AC00](v43);
      sub_1CAD4D9E4();
      (*(v26 + 32))(v86, v28, v25);
      v44 = 0;
    }

    v45 = v78;
    a2 = v69;
  }

  else
  {
    v44 = 1;
    v45 = v78;
  }

  (*(v26 + 56))(v86, v44, 1, v25);
  sub_1CAB23A9C(a2, v16, &qword_1EC467E38);
  if ((*(v17 + 48))(v16, 1, v75) == 1)
  {
    sub_1CAB21B68(v16, &qword_1EC467E38);
    v46 = 1;
  }

  else
  {
    v47 = v70;
    sub_1CAD0E8F0(v16, v70, type metadata accessor for LocationSearchResult);
    sub_1CAD0E390(v47, v13, type metadata accessor for LocationSearchResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D68);
    sub_1CAD4DBF4();
    v48 = v88;
    *&v13[v11[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
    swift_storeEnumTagMultiPayload();
    *&v13[v11[5]] = v48;
    v13[v11[6]] = 1;
    v49 = &v13[v11[8]];
    LOBYTE(v87) = 0;
    sub_1CAD4D984();
    sub_1CAD0ECCC(v47, type metadata accessor for LocationSearchResult);
    v50 = *(&v88 + 1);
    *v49 = v88;
    *(v49 + 1) = v50;
    sub_1CAD0E8F0(v13, v45, type metadata accessor for LocationChooser.ResultView);
    v46 = 0;
  }

  v51 = 1;
  (*(v76 + 56))(v45, v46, 1, v11);
  v52 = *(a2 + *(type metadata accessor for LocationSearchResults(0) + 20));
  if (v52)
  {
    *&v88 = v52;
    v53 = v74;
    sub_1CAD0E390(v85, v74, type metadata accessor for LocationChooser);
    v54 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v55 = swift_allocObject();
    sub_1CAD0E8F0(v53, v55 + v54, type metadata accessor for LocationChooser);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467EA8);
    sub_1CAB23B0C(&qword_1EC467EB0, &qword_1EC467EA0);
    sub_1CAD0EB2C();
    sub_1CAD0EC78();
    v56 = v71;
    sub_1CAD4DB74();
    v58 = v81;
    v57 = v82;
    v59 = v79;
    (*(v81 + 32))(v79, v56, v82);
    v51 = 0;
  }

  else
  {
    v59 = v79;
    v58 = v81;
    v57 = v82;
  }

  (*(v58 + 56))(v59, v51, 1, v57);
  v60 = v77;
  sub_1CAB23A9C(v86, v77, &qword_1EC466440);
  v61 = v45;
  v62 = v80;
  sub_1CAB23A9C(v45, v80, &qword_1EC467E90);
  v63 = v83;
  sub_1CAB23A9C(v59, v83, &qword_1EC467E88);
  v64 = v84;
  sub_1CAB23A9C(v60, v84, &qword_1EC466440);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E98);
  sub_1CAB23A9C(v62, v64 + *(v65 + 48), &qword_1EC467E90);
  sub_1CAB23A9C(v63, v64 + *(v65 + 64), &qword_1EC467E88);
  sub_1CAB21B68(v59, &qword_1EC467E88);
  sub_1CAB21B68(v61, &qword_1EC467E90);
  sub_1CAB21B68(v86, &qword_1EC466440);
  sub_1CAB21B68(v63, &qword_1EC467E88);
  sub_1CAB21B68(v62, &qword_1EC467E90);
  return sub_1CAB21B68(v60, &qword_1EC466440);
}

uint64_t sub_1CAD0BDD0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467EC8);
  sub_1CAD0EBC4();
  sub_1CABA6054();
  return sub_1CAD4DB94();
}

uint64_t sub_1CAD0BE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LocationChooser(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12[1] = a3;
  swift_getKeyPath();
  sub_1CAD0E390(a4, v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationChooser);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1CAD0E8F0(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LocationChooser);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467EE0);
  type metadata accessor for LocationChooser.ResultView(0);
  sub_1CAB23B0C(&qword_1EC467EE8, &qword_1EC467EE0);
  sub_1CAD0E348(&qword_1EC467EF0, type metadata accessor for LocationSearchResult);
  sub_1CAD0E348(&qword_1EC467ED0, type metadata accessor for LocationChooser.ResultView);
  return sub_1CAD4DB64();
}

uint64_t sub_1CAD0C0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CAD0E390(a1, a2, type metadata accessor for LocationSearchResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D68);
  sub_1CAD4DBF4();
  KeyPath = swift_getKeyPath();
  v4 = type metadata accessor for LocationChooser.ResultView(0);
  *(a2 + v4[7]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[5]) = v7;
  *(a2 + v4[6]) = 0;
  v5 = a2 + v4[8];
  result = sub_1CAD4D984();
  *v5 = v7;
  *(v5 + 8) = v8;
  return result;
}

uint64_t sub_1CAD0C1B8(uint64_t a1)
{
  v2 = sub_1CAD4CF14();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463AE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1CAD4CEE4();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
  sub_1CAD4C6E4();
  v7 = sub_1CAB23B0C(&qword_1EC463AF0, &qword_1EC463AE8);
  MEMORY[0x1CCAA6200](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CAD0C3A4(uint64_t a1)
{
  v2 = type metadata accessor for LocationChooser(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  if (qword_1EC462DF8 != -1)
  {
    swift_once();
  }

  v12[0] = qword_1EC47DE28;
  v12[1] = unk_1EC47DE30;

  sub_1CAD4C5B4();
  v8 = sub_1CAD4C5C4();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_1CAD0E390(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationChooser);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1CAD0E8F0(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LocationChooser);
  sub_1CABA6054();
  return sub_1CAD4D9F4();
}

uint64_t sub_1CAD0C5C4(uint64_t a1)
{
  v16 = sub_1CAD4CC04();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1CAD4C784();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocationChooser(0);
  sub_1CAB23A9C(a1 + *(v12 + 32), v7, &qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1CAD4E3F4();
    v13 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_1CAD4C774();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1CAD0C84C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CAD4C784();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationModelObject(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  sub_1CAD0E390(a2, &v14 - v11, type metadata accessor for LocationModelObject);
  type metadata accessor for LocationChooser(0);
  sub_1CAD0E390(v12, v10, type metadata accessor for LocationModelObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D70);
  sub_1CAD4DAC4();
  sub_1CAD0ECCC(v12, type metadata accessor for LocationModelObject);
  sub_1CAD09220(v6);
  sub_1CAD4C774();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CAD0CA14(uint64_t a1)
{
  *(v1 + 56) = a1;
  sub_1CAD4E2C4();
  *(v1 + 64) = sub_1CAD4E2B4();
  v3 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CAD0CAAC, v3, v2);
}

uint64_t sub_1CAD0CAAC()
{
  v1 = v0[7];

  v2 = (v1 + *(type metadata accessor for LocationChooser(0) + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v0[2] = *v2;
  v0[3] = v4;
  v0[4] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B08);
  sub_1CAD4D994();
  v6 = sub_1CAD4E064();

  if (v6 >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D68);
    sub_1CAD4DBF4();
    v7 = v0[2];
    v0[2] = v3;
    v0[3] = v4;
    v0[4] = v5;
    sub_1CAD4D994();
    v8 = *(v7 + 16);
    v9 = sub_1CAD4DF54();

    [v8 beginSearchForTerm_];
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1CAD0CC04(uint64_t a1)
{
  v17[0] = sub_1CAD4C784();
  v2 = *(v17[0] - 8);
  MEMORY[0x1EEE9AC00](v17[0]);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationModelObject(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  v11 = (a1 + *(type metadata accessor for LocationChooser(0) + 24));
  v12 = *v11;
  v13 = *(v11 + 2);
  v18 = v12;
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B08);
  sub_1CAD4D994();
  v14 = v17[1];
  v15 = v17[2];
  sub_1CABB8C08(0, 0xF000000000000000);
  v18 = 0uLL;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  sub_1CAB21B68(&v18, &qword_1EC463C20);
  *v10 = v14;
  *(v10 + 1) = v15;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 8) = 0;
  *(v10 + 9) = 0xF000000000000000;
  v10[80] = 0;
  *(v10 + 11) = 0;
  *(v10 + 12) = 0;
  *(v10 + 13) = 1;
  *(v10 + 7) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 10) = 0u;
  swift_storeEnumTagMultiPayload();
  sub_1CAD0E390(v10, v8, type metadata accessor for LocationModelObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D70);
  sub_1CAD4DAC4();
  sub_1CAD0ECCC(v10, type metadata accessor for LocationModelObject);
  sub_1CAD09220(v4);
  sub_1CAD4C774();
  return (*(v2 + 8))(v4, v17[0]);
}

uint64_t sub_1CAD0CE80@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4CCF4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CAD4CCE4();
  sub_1CAD4CCD4();
  type metadata accessor for LocationChooser(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B08);
  sub_1CAD4D994();
  sub_1CAD4CCC4();

  sub_1CAD4CCD4();
  sub_1CAD4CD14();
  v3 = sub_1CAD4D434();
  v5 = v4;
  v7 = v6;
  sub_1CAD4D8A4();
  v8 = sub_1CAD4D3D4();
  v10 = v9;
  v12 = v11;

  sub_1CABA6128(v3, v5, v7 & 1);

  sub_1CAD4D264();
  v13 = sub_1CAD4D424();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1CABA6128(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_1CAD0D080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for LocationChooser.ResultView(0);
  v72 = *(v3 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467F20);
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v75 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v61[-v8];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467F28);
  MEMORY[0x1EEE9AC00](v67);
  v10 = &v61[-v9];
  v11 = sub_1CAD4D904();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467F30);
  MEMORY[0x1EEE9AC00](v69);
  v16 = &v61[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467F38);
  v70 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v61[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467F40);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v71 = &v61[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v61[-v22];
  v23 = a1;
  v24 = *(a1 + 32);
  if (v24)
  {
    v66 = v17;
    v25 = v24;
    v26 = sub_1CAD4D8E4();
  }

  else
  {
    v65 = v3;
    if (!*(a1 + 48))
    {
      v45 = v79;
      (*(v70 + 56))(v79, 1, 1, v17);
      goto LABEL_9;
    }

    v66 = v17;

    v26 = sub_1CAD4D8F4();
    v3 = v65;
  }

  v27 = *(a1 + *(v3 + 24));
  (*(v12 + 104))(v14, *MEMORY[0x1E6981638], v11);
  v65 = v26;
  v28 = sub_1CAD4D954();
  (*(v12 + 8))(v14, v11);
  sub_1CAD4DC94();
  sub_1CAD4C744();
  if (v27 == 1)
  {
    v63 = v80;
    v62 = v81;
    v64 = v4;
    v29 = v82;
    v30 = v83;
    v31 = *(&v84 + 1);
    v32 = v84;
    v33 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467F70) + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467F80) + 28);
    sub_1CAD4CDD4();
    v35 = sub_1CAD4CDE4();
    (*(*(v35 - 8) + 56))(v33 + v34, 0, 1, v35);
    *v33 = swift_getKeyPath();
    v36 = v63;
    *v16 = v28;
    *(v16 + 1) = v36;
    v16[16] = v62;
    *(v16 + 3) = v29;
    v16[32] = v30;
    *(v16 + 5) = v32;
    *(v16 + 6) = v31;
    v23 = a1;
    v37 = sub_1CAD4D814();
    v38 = sub_1CAD4CFB4();
    v39 = &v16[*(v69 + 36)];
    *v39 = v37;
    *(v39 + 2) = v38;
    sub_1CAB23A9C(v16, v10, &qword_1EC467F30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465B90);
    sub_1CAD0EF6C();
    sub_1CAC6E10C();
    v40 = v68;
    sub_1CAD4CE24();

    sub_1CAB21B68(v16, &qword_1EC467F30);
  }

  else
  {
    v41 = v80;
    v42 = v81;
    v43 = v82;
    v44 = v83;
    *v10 = v28;
    *(v10 + 1) = v41;
    v10[16] = v42;
    *(v10 + 3) = v43;
    v10[32] = v44;
    *(v10 + 40) = v84;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465B90);
    sub_1CAD0EF6C();
    sub_1CAC6E10C();
    v40 = v68;
    sub_1CAD4CE24();
  }

  v45 = v79;
  sub_1CAD0F0DC(v40, v79);
  (*(v70 + 56))(v45, 0, 1, v66);
LABEL_9:
  v46 = v73;
  sub_1CAD0E390(v23, v73, type metadata accessor for LocationChooser.ResultView);
  v47 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v48 = swift_allocObject();
  v49 = sub_1CAD0E8F0(v46, v48 + v47, type metadata accessor for LocationChooser.ResultView);
  MEMORY[0x1EEE9AC00](v49);
  *&v61[-16] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467F48);
  sub_1CAB23B0C(&qword_1EC467F50, &qword_1EC467F48);
  v50 = v74;
  sub_1CAD4D9E4();
  v51 = v71;
  sub_1CAB23A9C(v45, v71, &qword_1EC467F40);
  v53 = v75;
  v52 = v76;
  v54 = *(v76 + 16);
  v55 = v77;
  v54(v75, v50, v77);
  v56 = v78;
  sub_1CAB23A9C(v51, v78, &qword_1EC467F40);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467F58);
  v54((v56 + *(v57 + 48)), v53, v55);
  v58 = v56 + *(v57 + 64);
  *v58 = 0;
  *(v58 + 8) = 1;
  v59 = *(v52 + 8);
  v59(v50, v55);
  sub_1CAB21B68(v79, &qword_1EC467F40);
  v59(v53, v55);
  return sub_1CAB21B68(v51, &qword_1EC467F40);
}

__n128 sub_1CAD0D9C8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAD4CDA4();
  sub_1CAD0DA5C(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t sub_1CAD0DA5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v14 = 0;
    v19 = 0;
    v18 = 0;
    v20 = *(a1 + 24);
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_5:
    v31 = 0;
    v40 = 0;
    v36 = 0;
    goto LABEL_6;
  }

  sub_1CABA6054();

  v4 = sub_1CAD4D444();
  v6 = v5;
  v8 = v7;
  sub_1CAD4D8A4();
  v43 = sub_1CAD4D3D4();
  v10 = v9;
  v12 = v11;

  sub_1CABA6128(v4, v6, v8 & 1);

  sub_1CAD4D264();
  v3 = sub_1CAD4D424();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_1CABA6128(v43, v10, v12 & 1);

  v19 = v16 & 1;
  sub_1CABA4F48(v3, v14, v16 & 1);

  v20 = *(a1 + 24);
  if (!v20)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1CABA6054();

  v21 = sub_1CAD4D444();
  v23 = v22;
  v25 = v24;
  sub_1CAD4D8B4();
  v44 = v14;
  v46 = v3;
  v26 = sub_1CAD4D3D4();
  v28 = v27;
  v42 = v18;
  v30 = v29;

  sub_1CABA6128(v21, v23, v25 & 1);

  sub_1CAD4D304();
  v31 = sub_1CAD4D424();
  v20 = v32;
  v34 = v33;
  v36 = v35;

  v37 = v30 & 1;
  v38 = v26;
  v3 = v46;
  v39 = v28;
  v18 = v42;
  v14 = v44;
  sub_1CABA6128(v38, v39, v37);

  v40 = v34 & 1;
  sub_1CABA4F48(v31, v20, v34 & 1);

LABEL_6:
  sub_1CABC12F0(v3, v14, v19, v18);
  sub_1CABC12F0(v31, v20, v40, v36);
  sub_1CABC1334(v3, v14, v19, v18);
  sub_1CABC1334(v31, v20, v40, v36);
  *a2 = v3;
  a2[1] = v14;
  a2[2] = v19;
  a2[3] = v18;
  a2[4] = v31;
  a2[5] = v20;
  a2[6] = v40;
  a2[7] = v36;
  sub_1CABC1334(v31, v20, v40, v36);
  return sub_1CABC1334(v3, v14, v19, v18);
}

uint64_t sub_1CAD0DD60@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1CAD4CC94();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467F18);
  return sub_1CAD0D080(v1, a1 + *(v3 + 44));
}

uint64_t sub_1CAD0DDB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D98);
  sub_1CAD0DE2C();
  return sub_1CAD4C924();
}

unint64_t sub_1CAD0DE2C()
{
  result = qword_1EC467DA0;
  if (!qword_1EC467DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467DA8);
    type metadata accessor for LocationModelObject(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467DB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467DB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467DC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467DC8);
    sub_1CAD0E120();
    sub_1CABA6054();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463AE8);
    sub_1CAB23B0C(&qword_1EC463AF0, &qword_1EC463AE8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1CAD0E348(&qword_1EC467E28, type metadata accessor for LocationModelObject);
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC463AF8, &qword_1EC463B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467DA0);
  }

  return result;
}

unint64_t sub_1CAD0E120()
{
  result = qword_1EC467DD0;
  if (!qword_1EC467DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467DC8);
    sub_1CAD0E1A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467DD0);
  }

  return result;
}

unint64_t sub_1CAD0E1A4()
{
  result = qword_1EC467DD8;
  if (!qword_1EC467DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467DE0);
    sub_1CAB23B0C(&qword_1EC467DE8, &qword_1EC467DF0);
    sub_1CAD0E25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467DD8);
  }

  return result;
}

unint64_t sub_1CAD0E25C()
{
  result = qword_1EC467DF8;
  if (!qword_1EC467DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467E00);
    sub_1CAB23B0C(&qword_1EC467E08, &qword_1EC467E10);
    sub_1CAB23B0C(&qword_1EC467E18, &qword_1EC467E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467DF8);
  }

  return result;
}

uint64_t sub_1CAD0E348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CAD0E390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAD0E3F8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LocationChooser(0);

  return sub_1CAD0C84C(a1, a2);
}

uint64_t objectdestroyTm_13()
{
  v1 = v0;
  v2 = type metadata accessor for LocationChooser(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D68);
  (*(*(v7 - 8) + 8))(v0 + v4, v7);
  v8 = v0 + v4 + *(v2 + 20);

  v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467D70) + 32);
  type metadata accessor for LocationModelObject(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_18;
      }
    }

    else
    {

      v17 = *(v9 + 72);
      if (v17 >> 60 != 15)
      {
        sub_1CABB8C1C(*(v9 + 64), v17);
      }

      if (*(v9 + 104) == 1)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  v22 = v1;

  v21 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v11 = *(v21 + 40);
  v12 = sub_1CAD4BFF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v9 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v15 = *(v21 + 44);
  v16 = v14(v9 + v15, 1, v12);
  v1 = v22;
  if (!v16)
  {
    (*(v13 + 8))(v9 + v15, v12);
  }

LABEL_18:

  v18 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_1CAD4C784();
    (*(*(v19 - 8) + 8))(v6 + v18, v19);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_1CAD0E804()
{
  v2 = *(type metadata accessor for LocationChooser(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1CABCCCB0;

  return sub_1CAD0CA14(v0 + v3);
}

uint64_t sub_1CAD0E8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAD0EA10(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LocationChooser(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1CAD0EAAC()
{
  type metadata accessor for LocationChooser(0);

  return sub_1CAD0BDD0();
}

unint64_t sub_1CAD0EB2C()
{
  result = qword_1EC467EB8;
  if (!qword_1EC467EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467EA8);
    sub_1CAD0EBC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467EB8);
  }

  return result;
}

unint64_t sub_1CAD0EBC4()
{
  result = qword_1EC467EC0;
  if (!qword_1EC467EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467EC8);
    sub_1CAD0E348(&qword_1EC467ED0, type metadata accessor for LocationChooser.ResultView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467EC0);
  }

  return result;
}

unint64_t sub_1CAD0EC78()
{
  result = qword_1EC467ED8;
  if (!qword_1EC467ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467ED8);
  }

  return result;
}

uint64_t sub_1CAD0ECCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CAD0ED38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LocationChooser(0);

  return sub_1CAD0C0B8(a1, a2);
}

void sub_1CAD0EDE0()
{
  type metadata accessor for LocationSearchResult(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocationDataModel(319);
    if (v1 <= 0x3F)
    {
      sub_1CAD091A0(319, &qword_1EC463A50, MEMORY[0x1E697BF88], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1CACD9D28(319, &qword_1EC463558);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_1CAD0EEF8()
{
  v1 = type metadata accessor for LocationChooser.ResultView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  return sub_1CAD19EC8(v2, *(v2 + *(v1 + 24)));
}

unint64_t sub_1CAD0EF6C()
{
  result = qword_1EC467F60;
  if (!qword_1EC467F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467F30);
    sub_1CAD0F024();
    sub_1CAB23B0C(&qword_1EC467F88, &qword_1EC467F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467F60);
  }

  return result;
}

unint64_t sub_1CAD0F024()
{
  result = qword_1EC467F68;
  if (!qword_1EC467F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467F70);
    sub_1CAC6E10C();
    sub_1CAB23B0C(&qword_1EC467F78, &qword_1EC467F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467F68);
  }

  return result;
}

uint64_t sub_1CAD0F0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467F38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAD0F14C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467F98);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CAB23A9C(a1, &v5 - v3, &qword_1EC467F98);
  return sub_1CAD4CAD4();
}

id sub_1CAD0F1FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  v7 = sub_1CAD4DF54();

  v8 = [objc_opt_self() locationWithTitle_];

  [v8 setGeoLocation_];
  [v8 setRadius_];
  if (v3)
  {
    v9 = sub_1CAD4DF54();
  }

  else
  {
    v9 = 0;
  }

  [v8 setAddress_];

  if (v6)
  {
    v10 = sub_1CAD4DF54();
  }

  else
  {
    v10 = 0;
  }

  [v8 setContactLabel_];

  if (v4 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1CAD4C014();
  }

  [v8 setMapKitHandle_];

  [v8 setImprecise_];
  return v8;
}

uint64_t sub_1CAD0F3D8(uint64_t result)
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

  result = sub_1CAD3461C(result, v10, 1, v3);
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

uint64_t sub_1CAD0F4F8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1CAD0F63C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventVirtualConferenceModelObject(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CAD1B670(v2, v9, type metadata accessor for LocationModelObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = v9[9];
      v40 = v9[8];
      v41 = v16;
      v42 = v9[10];
      v17 = v9[5];
      v36 = v9[4];
      v37 = v17;
      v18 = v9[7];
      v38 = v9[6];
      v39 = v18;
      v19 = v9[1];
      v32 = *v9;
      v33 = v19;
      v20 = v9[3];
      v34 = v9[2];
      v35 = v20;
      MEMORY[0x1CCAA7D10](1);
      v29 = v40;
      v30 = v41;
      v31 = v42;
      v25 = v36;
      v26 = v37;
      v27 = v38;
      v28 = v39;
      v21 = v32;
      v22 = v33;
      v23 = v34;
      v24 = v35;
      EventLocationModelObject.hash(into:)();
      sub_1CABD3C78(&v32);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v11 = v9[3];
      v34 = v9[2];
      v35 = v11;
      v36 = v9[4];
      v12 = v9[1];
      v32 = *v9;
      v33 = v12;
      MEMORY[0x1CCAA7D10](2);
      v21 = v32;
      v22 = v33;
      v23 = v34;
      v24 = v35;
      EventDirectoryRecordModelObject.hash(into:)();
      sub_1CAD4EAA4();
      v13 = *(&v36 + 1);
      sub_1CAD4EAA4();
      MEMORY[0x1CCAA7D10](v13);
      sub_1CABC2D10(&v32);
      return;
    }

    v14 = *v9;
    v15 = 3;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1CAD1AB98(v9, v6, type metadata accessor for EventVirtualConferenceModelObject);
    MEMORY[0x1CCAA7D10](4);
    EventVirtualConferenceModelObject.hash(into:)(a1);
    sub_1CAD1AC00(v6, type metadata accessor for EventVirtualConferenceModelObject);
    return;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v14 = *v9;
    v15 = 5;
LABEL_11:
    MEMORY[0x1CCAA7D10](v15);
    sub_1CAD4E4A4();

    return;
  }

  MEMORY[0x1CCAA7D10](0);
}

uint64_t sub_1CAD0F928(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LocationModelObject(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  if (*(v2 + 8))
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    if (*(v2 + 24))
    {
LABEL_3:
      sub_1CAD4EAA4();
      sub_1CAD4E054();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1CAD4EAA4();
    if (*(v2 + 24))
    {
      goto LABEL_3;
    }
  }

  sub_1CAD4EAA4();
LABEL_6:
  v11 = type metadata accessor for LocationSearchResult(0);
  sub_1CAB23A9C(v2 + *(v11 + 32), v10, &qword_1EC468060);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_1CAD4EAA4();
  }

  sub_1CAD1AB98(v10, v7, type metadata accessor for LocationModelObject);
  sub_1CAD4EAA4();
  sub_1CAD0F63C(a1);
  return sub_1CAD1AC00(v7, type metadata accessor for LocationModelObject);
}

uint64_t sub_1CAD0FB50(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1CAD4EA84();
  a3(v5);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAD0FBB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1CAD4EA84();
  a4(v6);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAD0FBFC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1CAD1AB50(&qword_1EC465790, type metadata accessor for LocationDataModel);
  sub_1CAD4C424();

  v3 = OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel__result;
  swift_beginAccess();
  return sub_1CAB23A9C(v5 + v3, a1, &qword_1EC467E58);
}

uint64_t sub_1CAD0FCD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAD1AB50(&qword_1EC465790, type metadata accessor for LocationDataModel);
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel__result;
  swift_beginAccess();
  return sub_1CAB23A9C(v3 + v4, a2, &qword_1EC467E58);
}

uint64_t sub_1CAD0FDAC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1CAB23A9C(a1, &v9[-v5], &qword_1EC467E58);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1CAD1AB50(&qword_1EC465790, type metadata accessor for LocationDataModel);
  sub_1CAD4C414();

  return sub_1CAB21B68(v6, &qword_1EC467E58);
}

uint64_t sub_1CAD0FEFC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1CAD1AB50(&qword_1EC465790, type metadata accessor for LocationDataModel);
  sub_1CAD4C424();

  v3 = OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel__selectedLocationResult;
  swift_beginAccess();
  return sub_1CAD1B670(v5 + v3, a1, type metadata accessor for LocationModelObject);
}

uint64_t sub_1CAD0FFD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAD1AB50(&qword_1EC465790, type metadata accessor for LocationDataModel);
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel__selectedLocationResult;
  swift_beginAccess();
  return sub_1CAD1B670(v3 + v4, a2, type metadata accessor for LocationModelObject);
}

uint64_t sub_1CAD100B4(uint64_t a1)
{
  v2 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAD1B670(a1, v4, type metadata accessor for LocationModelObject);
  return sub_1CAD10154(v4);
}

uint64_t sub_1CAD10154(uint64_t a1)
{
  v3 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel__selectedLocationResult;
  swift_beginAccess();
  sub_1CAD1B670(v1 + v6, v5, type metadata accessor for LocationModelObject);
  v7 = sub_1CAD1B078(v5, a1);
  sub_1CAD1AC00(v5, type metadata accessor for LocationModelObject);
  if (v7)
  {
    sub_1CAD1B670(a1, v5, type metadata accessor for LocationModelObject);
    swift_beginAccess();
    sub_1CAD1B8C8(v5, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_1CAD1AB50(&qword_1EC465790, type metadata accessor for LocationDataModel);
    sub_1CAD4C414();
  }

  return sub_1CAD1AC00(a1, type metadata accessor for LocationModelObject);
}

uint64_t sub_1CAD10364(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *a3;
  swift_beginAccess();
  a4(a2, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_1CAD1046C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CABCCCB0;

  return sub_1CAD10850();
}

id sub_1CAD106F4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationDataModel_conferenceRoomNamesToExclude);
  if (!v2)
  {
    goto LABEL_5;
  }

  result = [a1 location];
  if (result)
  {
    v4 = result;
    v5 = [result displayName];

    if (v5)
    {
      v6 = sub_1CAD4DF94();
      v8 = v7;

      v13[0] = v6;
      v13[1] = v8;
      MEMORY[0x1EEE9AC00](v9);
      v12[2] = v13;
      v10 = sub_1CAD41654(sub_1CACB32F4, v12, v2);

      v11 = v10 ^ 1;
      return (v11 & 1);
    }

LABEL_5:
    v11 = 1;
    return (v11 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAD10850()
{
  v1[107] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  v1[108] = swift_task_alloc();
  v2 = type metadata accessor for LocationSearchResults(0);
  v1[109] = v2;
  v3 = *(v2 - 8);
  v1[110] = v3;
  v1[111] = *(v3 + 64);
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v4 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  v1[114] = v4;
  v1[115] = *(v4 - 8);
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = type metadata accessor for EventVirtualConferenceModelObject(0);
  v1[119] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468150);
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v5 = sub_1CAD4BFF4();
  v1[130] = v5;
  v1[131] = *(v5 - 8);
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v6 = type metadata accessor for LocationSearchResult(0);
  v1[134] = v6;
  v1[135] = *(v6 - 8);
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467E38);
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CAD10C78, 0, 0);
}

uint64_t sub_1CAD10C78()
{
  v419 = v0;
  v3 = v0;
  v4 = v0[107];
  v5 = *(v0[135] + 56);
  (v5)(v0[153], 1, 1, v0[134]);
  v6 = *(v4 + 16);
  v0[154] = v6;
  v7 = [v6 currentLocation];
  v392 = v0;
  if (v7)
  {
    *(&v395 + 1) = &type metadata for EKLocationModelWrapper;
    *&v396 = &protocol witness table for EKLocationModelWrapper;
    *&v394 = v7;
    v8 = v7;
    EventLocationModelObject.init(_:)(&v394, &v408);
    if (qword_1EC462BC8 != -1)
    {
      swift_once();
    }

    v9 = v0[153];
    v10 = v0[152];
    v1 = v0[134];
    v11 = unk_1EC47D9D0;
    v384 = qword_1EC47D9C8;

    sub_1CAB21B68(v9, &qword_1EC467E38);
    v2 = (v10 + *(v1 + 32));
    v12 = v417;
    v2[8] = v416;
    v2[9] = v12;
    v2[10] = v418;
    v13 = v413;
    v2[4] = v412;
    v2[5] = v13;
    v14 = v415;
    v2[6] = v414;
    v2[7] = v14;
    v15 = v409;
    *v2 = v408;
    v2[1] = v15;
    v16 = v411;
    v2[2] = v410;
    v2[3] = v16;
    v17 = type metadata accessor for LocationModelObject(0);
    swift_storeEnumTagMultiPayload();
    v18 = *(*(v17 - 8) + 56);
    v19 = v17;
    v3 = v0;
    v18(v2, 0, 1, v19);
    *v10 = v384;
    v10[1] = v11;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0xD000000000000014;
    v10[6] = 0x80000001CAD77800;
    (v5)(v10, 0, 1, v1);
    sub_1CABA62E4(v10, v9, &qword_1EC467E38);
  }

  v20 = [v6 virtualConferenceRoomSearchResults];
  if (v20)
  {
    v21 = v20;
    sub_1CABD4070(0, &qword_1EC468130);
    v22 = sub_1CAD4E214();
    v3[155] = v22;

    if (v22 >> 62)
    {
      v23 = sub_1CAD4E604();
      v3[156] = v23;
      if (v23)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3[156] = v23;
      if (v23)
      {
LABEL_8:
        v24 = objc_opt_self();
        v3[157] = v24;
        if (v23 >= 1)
        {
          v3[159] = MEMORY[0x1E69E7CC0];
          v3[158] = 0;
          v25 = v3[155];
          if ((v25 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x1CCAA7940](0);
            v27 = v3[157];
          }

          else
          {
            v27 = v24;
            v26 = *(v25 + 32);
          }

          v3[160] = v26;
          v3[10] = v3;
          v3[15] = v3 + 104;
          v3[11] = sub_1CAD1385C;
          v28 = swift_continuation_init();
          v3[101] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468188);
          v3[98] = v28;
          v3[94] = MEMORY[0x1E69E9820];
          v3[95] = 1107296256;
          v3[96] = sub_1CAD194D8;
          v3[97] = &block_descriptor_57;
          [v27 imageForRoomType:v26 completionHandler:v3 + 94];
          v29 = (v3 + 10);
          goto LABEL_33;
        }

        while (1)
        {
          __break(1u);
LABEL_39:
          v51 = sub_1CAD4E604();
          v3[162] = v51;
          if (!v51)
          {
            goto LABEL_40;
          }

LABEL_18:
          v1 = 0;
          v34 = MEMORY[0x1E69E7CC0];
          v5 = &selRef_isNew;
          while (1)
          {
            v3[163] = v34;
            v35 = v3[161];
            if ((v35 & 0xC000000000000001) != 0)
            {
              v36 = MEMORY[0x1CCAA7940](v1);
            }

            else
            {
              if (v1 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_37;
              }

              v36 = *(v35 + 8 * v1 + 32);
            }

            v37 = v36;
            v3[164] = v36;
            v3[165] = v1 + 1;
            if (__OFADD__(v1, 1))
            {
              break;
            }

            v38 = [v36 joinMethods];
            v3[166] = sub_1CABD4070(0, &qword_1EC464E70);
            v39 = sub_1CAD4E214();

            if (v39 >> 62)
            {
              v29 = sub_1CAD4E604();
              if (v29)
              {
LABEL_29:
                if ((v39 & 0xC000000000000001) == 0)
                {
                  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v40 = *(v39 + 32);
                    goto LABEL_32;
                  }

                  __break(1u);
                  return MEMORY[0x1EEE6DEC8](v29);
                }

                v40 = MEMORY[0x1CCAA7940](0, v39);
LABEL_32:
                v41 = v40;
                v42 = v3[133];
                v43 = v3[132];
                v44 = v3[131];
                v45 = v3[130];
                v46 = v3[128];

                v47 = [v41 URL];

                sub_1CAD4BFC4();
                (*(v44 + 32))(v42, v43, v45);
                v48 = objc_opt_self();
                v49 = sub_1CAD4BFB4();
                v3[167] = v49;
                v3[2] = v3;
                v3[7] = v46;
                v3[3] = sub_1CAD1636C;
                v50 = swift_continuation_init();
                v3[93] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC468180);
                v3[90] = v50;
                v3[86] = MEMORY[0x1E69E9820];
                v3[87] = 1107296256;
                v3[88] = sub_1CAD1954C;
                v3[89] = &block_descriptor_7;
                [v48 displayDetailsForURL:v49 completionHandler:v3 + 86];
                v29 = (v3 + 2);
LABEL_33:

                return MEMORY[0x1EEE6DEC8](v29);
              }
            }

            else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v1 = v3[165];
            if (v1 == v3[162])
            {
              goto LABEL_40;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
        }
      }
    }
  }

  v30 = [v3[154] virtualConferenceCustomSearchResults];
  if (v30)
  {
    v31 = v30;
    sub_1CABD4070(0, &qword_1EC468178);
    v32 = sub_1CAD4E214();
    v3[161] = v32;

    if (v32 >> 62)
    {
      goto LABEL_39;
    }

    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3[162] = v33;
    if (v33)
    {
      goto LABEL_18;
    }

LABEL_40:
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    v336 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  if (qword_1EC462BF8 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v53 = qword_1EC47DA28;
    v52 = unk_1EC47DA30;

    v54 = MEMORY[0x1E69E7CC0];

    v55 = sub_1CAD355C8(0, 1, 1, v54);
    v1 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v1 >= v56 >> 1)
    {
      v55 = sub_1CAD355C8((v56 > 1), v1 + 1, 1, v55);
    }

    *(v55 + 2) = v1 + 1;
    v336 = v55;
    v57 = &v55[24 * v1];
    *(v57 + 4) = v53;
    *(v57 + 5) = v52;
    *(v57 + 6) = v54;
LABEL_47:
    v58 = [v3[154] recentsSearchResults];
    if (!v58)
    {
      break;
    }

    v59 = v58;
    sub_1CABD4070(0, &qword_1EC468170);
    v60 = sub_1CAD4E214();

    if (v60 >> 62)
    {
      v61 = sub_1CAD4E604();
      if (!v61)
      {
LABEL_69:
        v63 = MEMORY[0x1E69E7CC0];
LABEL_70:

        if (v63[2])
        {
          if (qword_1EC462BD0 != -1)
          {
            swift_once();
          }

          v76 = qword_1EC47D9D8;
          v75 = unk_1EC47D9E0;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v77 = v336;
          }

          else
          {
            v77 = sub_1CAD355C8(0, *(v336 + 2) + 1, 1, v336);
          }

          v1 = *(v77 + 2);
          v78 = *(v77 + 3);
          if (v1 >= v78 >> 1)
          {
            v77 = sub_1CAD355C8((v78 > 1), v1 + 1, 1, v77);
          }

          *(v77 + 2) = v1 + 1;
          v336 = v77;
          v79 = &v77[24 * v1];
          *(v79 + 4) = v76;
          *(v79 + 5) = v75;
          *(v79 + 6) = v63;
        }

        else
        {
        }

        break;
      }
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v61)
      {
        goto LABEL_69;
      }
    }

    v62 = 0;
    v373 = v3[135];
    v63 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1CCAA7940](v62, v60);
      }

      else
      {
        if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v64 = *(v60 + 8 * v62 + 32);
      }

      v2 = v64;
      v65 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      v1 = v61;
      v66 = v392[151];
      v5 = v392[134];
      v67 = v392[107];
      *&v408 = v64;
      sub_1CAD19750(&v408, v67, v66);

      v68 = v66;
      v3 = v392;
      v69 = (*(v373 + 48))(v68, 1, v5);
      v70 = v392[151];
      if (v69 == 1)
      {
        sub_1CAB21B68(v70, &qword_1EC467E38);
      }

      else
      {
        v71 = v392[146];
        v72 = v392[145];
        v2 = type metadata accessor for LocationSearchResult;
        sub_1CAD1AB98(v70, v71, type metadata accessor for LocationSearchResult);
        sub_1CAD1AB98(v71, v72, type metadata accessor for LocationSearchResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_1CAD353C4(0, v63[2] + 1, 1, v63);
        }

        v5 = v63[2];
        v73 = v63[3];
        if (v5 >= v73 >> 1)
        {
          v63 = sub_1CAD353C4(v73 > 1, v5 + 1, 1, v63);
        }

        v74 = v392[145];
        v63[2] = v5 + 1;
        sub_1CAD1AB98(v74, v63 + ((*(v373 + 80) + 32) & ~*(v373 + 80)) + *(v373 + 72) * v5, type metadata accessor for LocationSearchResult);
      }

      ++v62;
      v61 = v1;
      if (v65 == v1)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v80 = [v3[154] conferenceRoomSearchResults];
  if (!v80)
  {
    goto LABEL_119;
  }

  v81 = v80;
  sub_1CABD4070(0, &qword_1EC468168);
  v82 = sub_1CAD4E214();

  if (v82 >> 62)
  {
    goto LABEL_109;
  }

  v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v83)
  {
LABEL_82:
    v5 = 0;
    v347 = v3[143];
    v343 = v3[135];
    v84 = v82 & 0xC000000000000001;
    v85 = v82 & 0xFFFFFFFFFFFFFF8;
    v1 = MEMORY[0x1E69E7CC0];
    v335 = v3[134];
    v352 = v83;
    v356 = v82;
    v337 = (v82 & 0xFFFFFFFFFFFFFF8);
    v339 = v82 & 0xC000000000000001;
    while (1)
    {
      if (v84)
      {
        v86 = MEMORY[0x1CCAA7940](v5, v82);
      }

      else
      {
        if (v5 >= *(v85 + 16))
        {
          goto LABEL_108;
        }

        v86 = *(v82 + 8 * v5 + 32);
      }

      v87 = v86;
      v88 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        v83 = sub_1CAD4E604();
        if (!v83)
        {
          break;
        }

        goto LABEL_82;
      }

      v89 = [v86 location];
      if (v89)
      {
        v2 = v89;
        v90 = [v2 preferredAddress];
        if (v90)
        {
          v91 = v90;
          v92 = sub_1CAD4DF94();
          v374 = v93;

          v94 = [v2 displayName];
          if (v94)
          {
            v95 = v94;
            v367 = sub_1CAD4DF94();
            v97 = v96;
          }

          else
          {
            v367 = 0;
            v97 = 0;
          }

          v98 = [v2 firstName];
          if (v98)
          {
            v99 = v98;
            v100 = sub_1CAD4DF94();
            v102 = v101;
          }

          else
          {
            v100 = 0;
            v102 = 0;
          }

          v385 = v1;
          v103 = [v2 lastName];
          if (v103)
          {
            v104 = v103;
            v105 = sub_1CAD4DF94();
            v107 = v106;
          }

          else
          {

            v105 = 0;
            v107 = 0;
          }

          v2 = v392;
          v361 = v392[144];
          v108 = v392[143];
          v392[70] = v367;
          v392[71] = v97;
          v392[72] = v100;
          v392[73] = v102;
          v392[74] = v105;
          v392[75] = v107;
          v392[76] = v92;
          v392[77] = v374;
          v392[62] = v367;
          v392[63] = v97;
          v392[64] = v100;
          v392[65] = v102;
          v392[66] = v105;
          v392[67] = v107;
          v392[68] = v92;
          v392[69] = v374;
          sub_1CABC1A50((v392 + 70), (v392 + 78));
          sub_1CABC1AFC((v392 + 62));
          v109 = v392[70];
          v110 = v392[71];
          v111 = *(v392 + 37);
          v408 = *(v392 + 36);
          v409 = v111;
          v410 = *(v392 + 38);
          v112 = [v87 supportsAvailability];
          v113 = [v87 availabilityRequestInProgress];
          v114 = [v87 availability];

          v115 = v108 + *(v335 + 32);
          *v115 = v109;
          *(v115 + 1) = v110;
          v116 = v409;
          *(v115 + 1) = v408;
          *(v115 + 2) = v116;
          *(v115 + 3) = v410;
          v115[64] = v112;
          v115[65] = v113;
          *(v115 + 9) = v114;
          v117 = type metadata accessor for LocationModelObject(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v117 - 8) + 56))(v115, 0, 1, v117);
          *v108 = v109;
          v347[1] = v110;
          *(v347 + 1) = 0u;
          *(v347 + 2) = 0u;
          v347[6] = 0;
          sub_1CAD1AB98(v108, v361, type metadata accessor for LocationSearchResult);

          v1 = v385;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_1CAD353C4(0, v385[2] + 1, 1, v385);
          }

          v83 = v352;
          v82 = v356;
          v84 = v339;
          v119 = *(v1 + 16);
          v118 = *(v1 + 24);
          v3 = v392;
          if (v119 >= v118 >> 1)
          {
            v1 = sub_1CAD353C4(v118 > 1, v119 + 1, 1, v1);
          }

          v120 = v392[144];
          *(v1 + 16) = v119 + 1;
          sub_1CAD1AB98(v120, v1 + ((*(v343 + 80) + 32) & ~*(v343 + 80)) + *(v343 + 72) * v119, type metadata accessor for LocationSearchResult);
          v85 = v337;
          v88 = v5 + 1;
          goto LABEL_85;
        }
      }

LABEL_85:
      ++v5;
      if (v88 == v83)
      {
        goto LABEL_111;
      }
    }
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_111:

  if (*(v1 + 16))
  {
    if (qword_1EC462BD8 == -1)
    {
      goto LABEL_113;
    }

    goto LABEL_256;
  }

LABEL_119:
  v127 = [v3[154] contactsSearchResults];
  if (v127)
  {
    v128 = v127;
    sub_1CABD4070(0, &qword_1EC468158);
    v129 = sub_1CAD4E214();

    if (!(v129 >> 62))
    {
      v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_122;
    }

    goto LABEL_207;
  }

  while (1)
  {
    v393 = MEMORY[0x1E69E7CC0];
    v156 = [v3[154] locationFromMapsURL];
    if (v156)
    {
      v157 = v156;
      v158 = v3[141];
      v159 = v3[134];
      v160 = [v156 location];
      *(&v395 + 1) = &type metadata for EKLocationModelWrapper;
      *&v396 = &protocol witness table for EKLocationModelWrapper;
      *&v394 = v160;
      EventLocationModelObject.init(_:)(&v394, &v408);
      v161 = v417;
      *(v3 + 17) = v416;
      *(v3 + 18) = v161;
      *(v3 + 19) = v418;
      v162 = v413;
      *(v3 + 13) = v412;
      *(v3 + 14) = v162;
      v163 = v415;
      *(v3 + 15) = v414;
      *(v3 + 16) = v163;
      v164 = v409;
      *(v3 + 9) = v408;
      *(v3 + 10) = v164;
      v165 = v411;
      *(v3 + 11) = v410;
      *(v3 + 12) = v165;
      v166 = v3[19];
      v167 = v3[23];
      v387 = v3[22];
      v380 = v3[18];

      v168 = sub_1CABC17B0();
      v169 = (v158 + *(v159 + 32));
      v171 = *(v3 + 18);
      v170 = *(v3 + 19);
      v172 = *(v3 + 17);
      v169[7] = *(v3 + 16);
      v169[8] = v172;
      v169[9] = v171;
      v169[10] = v170;
      v174 = *(v3 + 14);
      v173 = *(v3 + 15);
      v175 = *(v3 + 13);
      v169[3] = *(v3 + 12);
      v169[4] = v175;
      v169[5] = v174;
      v169[6] = v173;
      v177 = *(v3 + 10);
      v176 = *(v3 + 11);
      *v169 = *(v3 + 9);
      v169[1] = v177;
      v169[2] = v176;
      v5 = type metadata accessor for LocationModelObject(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v5 - 8) + 56))(v169, 0, 1, v5);
      *&v179 = v380;
      *&v178 = v387;
      *(&v179 + 1) = v166;
      *(&v178 + 1) = v167;
      *v158 = v179;
      *(v158 + 16) = v178;
      *(v158 + 40) = 0;
      *(v158 + 48) = 0;
      *(v158 + 32) = v168;
      sub_1CABD3C1C((v3 + 18), (v3 + 40));
      v180 = sub_1CAD353C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v182 = v180[2];
      v181 = v180[3];
      if (v182 >= v181 >> 1)
      {
        v180 = sub_1CAD353C4(v181 > 1, v182 + 1, 1, v180);
      }

      v1 = v3[141];
      v183 = v3[135];

      sub_1CABD3C78((v3 + 18));
      v180[2] = v182 + 1;
      sub_1CAD1AB98(v1, v180 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v182, type metadata accessor for LocationSearchResult);
      v393 = v180;
    }

    v184 = [v3[154] eventsSearchResults];
    if (v184)
    {
      v185 = v184;
      sub_1CABD4070(0, &qword_1EC468160);
      v186 = sub_1CAD4E214();

      if (v186 >> 62)
      {
        v187 = sub_1CAD4E604();
      }

      else
      {
        v187 = *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v187)
      {
        v402 = MEMORY[0x1E69E7CC0];
        sub_1CACBA39C(0, v187 & ~(v187 >> 63), 0);
        if ((v187 & 0x8000000000000000) == 0)
        {
          v188 = 0;
          v189 = v3;
          v190 = v3[140];
          v191 = v186;
          v358 = v186 & 0xC000000000000001;
          v363 = v189[135];
          v349 = v189[134];
          v353 = (v187 - 1);
          v192 = v402;
          for (i = v191; ; v191 = i)
          {
            v388 = v188;
            v376 = v192;
            v193 = v358 ? MEMORY[0x1CCAA7940]() : *(v191 + 8 * v188 + 32);
            v194 = v193;
            v195 = [v193 location];
            v407 = &protocol witness table for EKLocationModelWrapper;
            v406 = &type metadata for EKLocationModelWrapper;
            v405[0] = v195;
            EventLocationModelObject.init(_:)(v405, &v408);
            v196 = v408;
            v403 = v409;
            v197 = v410;
            v398 = v415;
            v399 = v416;
            v400 = v417;
            v401 = v418;
            v394 = v411;
            v395 = v412;
            v396 = v413;
            v397 = v414;

            v198 = [v194 location];
            v199 = [v198 mapKitHandle];

            if (!v199)
            {
              break;
            }

            v200 = sub_1CAD4C024();
            v202 = v201;

            v203 = objc_opt_self();
            v204 = sub_1CAD4C014();
            v205 = [v203 mapItemForMapKitHandle_];

            if (!v205)
            {
              v5 = v197;

              sub_1CABB8C1C(v200, v202);
              goto LABEL_160;
            }

            v340 = v200;
            v344 = v202;
            v206 = objc_opt_self();
            v207 = objc_opt_self();
            v208 = [v207 mainScreen];
            v209 = [v208 traitCollection];

            [v209 displayScale];
            v211 = v210;

            v212 = [v206 imageForMapItem:v205 forScale:0 fallbackToBundleIcon:v211];
            if (v212)
            {
              v1 = v212;
              v5 = v197;
            }

            else
            {
              v338 = v206;
              v5 = v197;
              v213 = [objc_opt_self() markerStyleAttributes];
              v214 = [v207 mainScreen];
              v215 = [v214 traitCollection];

              [v215 displayScale];
              v217 = v216;

              v1 = [v338 imageForStyle:v213 size:4 forScale:0 format:v217];
            }

            sub_1CABB8C1C(v340, v344);
LABEL_163:
            v2 = v392;
            v218 = v392[140];
            v219 = v218 + v349[8];
            *v219 = v196;
            *(v219 + 1) = v403;
            *(v219 + 4) = v5;
            *(v219 + 5) = *(&v197 + 1);
            v220 = v399;
            *(v219 + 7) = v398;
            *(v219 + 8) = v220;
            v221 = v401;
            *(v219 + 9) = v400;
            *(v219 + 10) = v221;
            v222 = v395;
            *(v219 + 3) = v394;
            *(v219 + 4) = v222;
            v223 = v397;
            *(v219 + 5) = v396;
            *(v219 + 6) = v223;
            v224 = type metadata accessor for LocationModelObject(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v224 - 8) + 56))(v219, 0, 1, v224);
            *v218 = v196;
            v190[1] = *(&v196 + 1);
            v190[2] = v5;
            v190[3] = *(&v197 + 1);
            v190[4] = v196;
            v190[5] = 0;
            v190[6] = 0;
            v192 = v376;
            v402 = v376;
            v226 = *(v376 + 16);
            v225 = *(v376 + 24);
            if (v226 >= v225 >> 1)
            {
              sub_1CACBA39C(v225 > 1, v226 + 1, 1);
              v192 = v402;
            }

            v227 = v392[140];
            *(v192 + 16) = v226 + 1;
            sub_1CAD1AB98(v227, v192 + ((*(v363 + 80) + 32) & ~*(v363 + 80)) + *(v363 + 72) * v226, type metadata accessor for LocationSearchResult);
            if (v353 == v388)
            {

              v3 = v392;
              goto LABEL_169;
            }

            v188 = v388 + 1;
          }

          v5 = v197;

LABEL_160:
          v1 = 0;
          goto LABEL_163;
        }

        goto LABEL_252;
      }

      v192 = MEMORY[0x1E69E7CC0];
LABEL_169:
      sub_1CAD0F4F8(v192, sub_1CAD353C4, type metadata accessor for LocationSearchResult);
    }

    v228 = [v3[154] frequentsSearchResults];
    if (v228)
    {
      v229 = v228;
      sub_1CABD4070(0, &qword_1EC468158);
      v230 = sub_1CAD4E214();

      if (v230 >> 62)
      {
        v231 = sub_1CAD4E604();
      }

      else
      {
        v231 = *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v231)
      {
        v232 = v230;
        v402 = MEMORY[0x1E69E7CC0];
        sub_1CACBA39C(0, v231 & ~(v231 >> 63), 0);
        if (v231 < 0)
        {
          __break(1u);
LABEL_256:
          swift_once();
LABEL_113:
          v122 = qword_1EC47D9E8;
          v121 = unk_1EC47D9F0;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v123 = v336;
          }

          else
          {
            v123 = sub_1CAD355C8(0, *(v336 + 2) + 1, 1, v336);
          }

          v125 = *(v123 + 2);
          v124 = *(v123 + 3);
          if (v125 >= v124 >> 1)
          {
            v123 = sub_1CAD355C8((v124 > 1), v125 + 1, 1, v123);
          }

          *(v123 + 2) = v125 + 1;
          v336 = v123;
          v126 = &v123[24 * v125];
          *(v126 + 4) = v122;
          *(v126 + 5) = v121;
          *(v126 + 6) = v1;
          goto LABEL_119;
        }

        v233 = v3[139];
        v359 = v3[134];
        v364 = v3[135];
        v1 = v402;
        v354 = objc_opt_self();
        v350 = objc_opt_self();
        v345 = objc_opt_self();
        v234 = 0;
        v235 = v232;
        v341 = v232 & 0xC000000000000001;
        for (j = v232; ; v235 = j)
        {
          v389 = v1;
          v381 = v234;
          if (v341)
          {
            v236 = MEMORY[0x1CCAA7940]();
          }

          else
          {
            v236 = *(v235 + 8 * v234 + 32);
          }

          v377 = v3[139];
          v407 = &protocol witness table for EKLocationModelWrapper;
          v406 = &type metadata for EKLocationModelWrapper;
          v405[0] = v236;
          v237 = v236;
          EventLocationModelObject.init(_:)(v405, &v408);
          v238 = *(&v408 + 1);
          v2 = v408;
          v403 = v409;
          v239 = v410;
          v398 = v415;
          v399 = v416;
          v400 = v417;
          v401 = v418;
          v394 = v411;
          v395 = v412;
          v396 = v413;
          v397 = v414;

          v240 = [v354 markerStyleAttributes];
          v241 = [v345 mainScreen];
          v242 = [v241 traitCollection];

          [v242 displayScale];
          v244 = v243;

          v245 = [v350 imageForStyle:v240 size:4 forScale:0 format:v244];
          v246 = (v377 + *(v359 + 32));
          *v246 = __PAIR128__(v238, v2);
          v246[1] = v403;
          v246[2] = v239;
          v247 = v399;
          v246[7] = v398;
          v246[8] = v247;
          v248 = v401;
          v246[9] = v400;
          v246[10] = v248;
          v249 = v395;
          v246[3] = v394;
          v246[4] = v249;
          v250 = v397;
          v246[5] = v396;
          v246[6] = v250;
          v251 = type metadata accessor for LocationModelObject(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v251 - 8) + 56))(v246, 0, 1, v251);
          *v377 = v2;
          *(v233 + 8) = v238;
          *(v233 + 16) = v239;
          *(v233 + 32) = v245;
          *(v233 + 40) = 0;
          *(v233 + 48) = 0;
          v1 = v389;
          v402 = v389;
          v253 = *(v389 + 16);
          v252 = *(v389 + 24);
          if (v253 >= v252 >> 1)
          {
            sub_1CACBA39C(v252 > 1, v253 + 1, 1);
            v1 = v402;
          }

          v254 = v3[139];
          *(v1 + 16) = v253 + 1;
          sub_1CAD1AB98(v254, v1 + ((*(v364 + 80) + 32) & ~*(v364 + 80)) + *(v364 + 72) * v253, type metadata accessor for LocationSearchResult);
          if (v231 - 1 == v381)
          {
            break;
          }

          v234 = v381 + 1;
        }
      }

      else
      {

        v1 = MEMORY[0x1E69E7CC0];
      }

      sub_1CAD0F4F8(v1, sub_1CAD353C4, type metadata accessor for LocationSearchResult);
    }

    v255 = [v3[154] mapCompletionSearchResults];
    if (!v255)
    {
      goto LABEL_213;
    }

    v256 = v255;
    sub_1CABD4070(0, &qword_1EC468118);
    v257 = sub_1CAD4E214();

    if (!(v257 >> 62))
    {
      v2 = *((v257 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        break;
      }

      goto LABEL_189;
    }

    v2 = sub_1CAD4E604();
    if (!v2)
    {
      break;
    }

LABEL_189:
    v5 = 0;
    v129 = v3[137];
    v346 = v3[135];
    v360 = v257 & 0xFFFFFFFFFFFFFF8;
    v365 = v257 & 0xC000000000000001;
    v258 = MEMORY[0x1E69E7CC0];
    v342 = v3[134];
    v351 = v2;
    v355 = v257;
    while (1)
    {
      if (v365)
      {
        v259 = MEMORY[0x1CCAA7940](v5, v257);
      }

      else
      {
        if (v5 >= *(v360 + 16))
        {
          goto LABEL_206;
        }

        v259 = *(v257 + 8 * v5 + 32);
      }

      v260 = v259;
      v1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v261 = [v259 mapItem];
      if (v261)
      {
        v262 = v261;
        v263 = [v260 title];
        v390 = sub_1CAD4DF94();
        v382 = v264;

        v265 = [v260 subtitle];
        v266 = sub_1CAD4DF94();
        v371 = v267;
        v378 = v266;

        v268 = objc_opt_self();
        v269 = objc_opt_self();
        v270 = [v269 mainScreen];
        v271 = [v270 traitCollection];

        [v271 displayScale];
        v273 = v272;

        v274 = [v268 imageForMapItem:v262 forScale:0 fallbackToBundleIcon:v273];
        if (!v274)
        {
          v275 = [objc_opt_self() markerStyleAttributes];
          v276 = [v269 mainScreen];
          v277 = [v276 traitCollection];

          [v277 displayScale];
          v279 = v278;

          v274 = [v268 imageForStyle:v275 size:4 forScale:0 format:v279];
        }

        v280 = v392[138];
        v281 = v392[137];

        v282 = *(v342 + 32);
        *(v281 + v282) = v260;
        v283 = type metadata accessor for LocationModelObject(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v283 - 8) + 56))(v281 + v282, 0, 1, v283);
        *v281 = v390;
        *(v129 + 8) = v382;
        *(v129 + 16) = v378;
        *(v129 + 24) = v371;
        *(v129 + 32) = v274;
        *(v129 + 40) = 0;
        *(v129 + 48) = 0;
        sub_1CAD1AB98(v281, v280, type metadata accessor for LocationSearchResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v258 = sub_1CAD353C4(0, v258[2] + 1, 1, v258);
        }

        v2 = v351;
        v257 = v355;
        v285 = v258[2];
        v284 = v258[3];
        v3 = v392;
        if (v285 >= v284 >> 1)
        {
          v258 = sub_1CAD353C4(v284 > 1, v285 + 1, 1, v258);
        }

        v286 = v392[138];
        v258[2] = v285 + 1;
        sub_1CAD1AB98(v286, v258 + ((*(v346 + 80) + 32) & ~*(v346 + 80)) + *(v346 + 72) * v285, type metadata accessor for LocationSearchResult);
      }

      else
      {

        v3 = v392;
      }

      ++v5;
      if (v1 == v2)
      {
        goto LABEL_212;
      }
    }

    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    v130 = sub_1CAD4E604();
LABEL_122:
    if (!v130)
    {

      v5 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_133;
      }

      goto LABEL_140;
    }

    v131 = v129;
    v402 = MEMORY[0x1E69E7CC0];
    sub_1CACBA39C(0, v130 & ~(v130 >> 63), 0);
    if (v130 < 0)
    {
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      swift_once();
LABEL_134:
      v151 = qword_1EC47D9F8;
      v150 = unk_1EC47DA00;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v152 = v336;
      }

      else
      {
        v152 = sub_1CAD355C8(0, *(v336 + 2) + 1, 1, v336);
      }

      v154 = *(v152 + 2);
      v153 = *(v152 + 3);
      if (v154 >= v153 >> 1)
      {
        v152 = sub_1CAD355C8((v153 > 1), v154 + 1, 1, v152);
      }

      *(v152 + 2) = v154 + 1;
      v336 = v152;
      v155 = &v152[24 * v154];
      *(v155 + 4) = v151;
      *(v155 + 5) = v150;
      *(v155 + 6) = v5;
    }

    else
    {
      v132 = 0;
      v133 = v3[142];
      v362 = v3[134];
      v368 = v3[135];
      v5 = v402;
      v134 = v131;
      v357 = v131 & 0xC000000000000001;
      v1 = &v408;
      v348 = (v130 - 1);
      for (k = v131; ; v134 = k)
      {
        v386 = v5;
        v379 = v132;
        if (v357)
        {
          v135 = MEMORY[0x1CCAA7940]();
        }

        else
        {
          v135 = *(v134 + 8 * v132 + 32);
        }

        v136 = v3;
        v137 = v3[142];
        v407 = &protocol witness table for EKLocationModelWrapper;
        v406 = &type metadata for EKLocationModelWrapper;
        v405[0] = v135;
        v138 = v135;
        EventLocationModelObject.init(_:)(v405, &v408);
        v139 = *(&v408 + 1);
        v2 = v408;
        v403 = v409;
        v404 = v410;
        v140 = v411;
        v398 = v416;
        v399 = v417;
        v400 = v418;
        v394 = v412;
        v395 = v413;
        v396 = v414;
        v397 = v415;

        v141 = (v137 + *(v362 + 32));
        *v141 = __PAIR128__(v139, v2);
        v142 = v404;
        v141[1] = v403;
        v141[2] = v142;
        v141[3] = v140;
        v143 = v399;
        v141[8] = v398;
        v141[9] = v143;
        v141[10] = v400;
        v144 = v395;
        v141[4] = v394;
        v141[5] = v144;
        v145 = v397;
        v141[6] = v396;
        v141[7] = v145;
        v146 = type metadata accessor for LocationModelObject(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v146 - 8) + 56))(v141, 0, 1, v146);
        *v137 = v140;
        *(v133 + 8) = *(&v140 + 1);
        *(v133 + 16) = __PAIR128__(v139, v2);
        *(v133 + 32) = xmmword_1CAD68FB0;
        *(v133 + 48) = 0x80000001CAD777A0;
        v5 = v386;
        v402 = v386;
        v148 = *(v386 + 16);
        v147 = *(v386 + 24);
        if (v148 >= v147 >> 1)
        {
          sub_1CACBA39C(v147 > 1, v148 + 1, 1);
          v5 = v402;
        }

        v149 = v136[142];
        *(v5 + 16) = v148 + 1;
        sub_1CAD1AB98(v149, v5 + ((*(v368 + 80) + 32) & ~*(v368 + 80)) + *(v368 + 72) * v148, type metadata accessor for LocationSearchResult);
        v3 = v136;
        if (v348 == v379)
        {
          break;
        }

        v132 = v379 + 1;
      }

      if (*(v5 + 16))
      {
LABEL_133:
        if (qword_1EC462BE0 == -1)
        {
          goto LABEL_134;
        }

        goto LABEL_253;
      }

LABEL_140:
    }
  }

  v258 = MEMORY[0x1E69E7CC0];
LABEL_212:

  sub_1CAD0F4F8(v258, sub_1CAD353C4, type metadata accessor for LocationSearchResult);
LABEL_213:
  if (v393[2])
  {
    if (qword_1EC462BE8 != -1)
    {
      swift_once();
    }

    v288 = qword_1EC47DA08;
    v287 = unk_1EC47DA10;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v289 = v336;
    }

    else
    {
      v289 = sub_1CAD355C8(0, *(v336 + 2) + 1, 1, v336);
    }

    v291 = *(v289 + 2);
    v290 = *(v289 + 3);
    if (v291 >= v290 >> 1)
    {
      v289 = sub_1CAD355C8((v290 > 1), v291 + 1, 1, v289);
    }

    *(v289 + 2) = v291 + 1;
    v336 = v289;
    v292 = &v289[24 * v291];
    *(v292 + 4) = v288;
    *(v292 + 5) = v287;
    *(v292 + 6) = v393;
  }

  v293 = [v3[154] textualSearchResults];
  if (!v293)
  {

    goto LABEL_244;
  }

  v294 = v293;
  sub_1CABD4070(0, &qword_1EC468158);
  v295 = sub_1CAD4E214();

  if (v295 >> 62)
  {
    v296 = sub_1CAD4E604();
  }

  else
  {
    v296 = *((v295 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v296)
  {

    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_237;
  }

  v297 = v295;
  v402 = MEMORY[0x1E69E7CC0];
  sub_1CACBA39C(0, v296 & ~(v296 >> 63), 0);
  if (v296 < 0)
  {
    __break(1u);
LABEL_259:
    swift_once();
LABEL_239:
    v315 = qword_1EC47DA18;
    v314 = qword_1EC47DA20;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v316 = v336;
    }

    else
    {
      v316 = sub_1CAD355C8(0, *(v336 + 2) + 1, 1, v336);
    }

    v318 = *(v316 + 2);
    v317 = *(v316 + 3);
    if (v318 >= v317 >> 1)
    {
      v316 = sub_1CAD355C8((v317 > 1), v318 + 1, 1, v316);
    }

    *(v316 + 2) = v318 + 1;
    v319 = &v316[24 * v318];
    *(v319 + 4) = v315;
    *(v319 + 5) = v314;
    *(v319 + 6) = v2;
    v320 = v316;
  }

  else
  {
    v298 = 0;
    v299 = v3[136];
    v366 = v3[134];
    v372 = v3[135];
    v2 = v402;
    for (m = v297; ; m = v297)
    {
      v391 = v2;
      v383 = v298;
      if ((v297 & 0xC000000000000001) != 0)
      {
        v301 = MEMORY[0x1CCAA7940]();
      }

      else
      {
        v301 = *(m + 8 * v298 + 32);
      }

      v302 = v3[136];
      v407 = &protocol witness table for EKLocationModelWrapper;
      v406 = &type metadata for EKLocationModelWrapper;
      v405[0] = v301;
      EventLocationModelObject.init(_:)(v405, &v408);
      v303 = v408;
      v403 = v409;
      v304 = v410;
      v398 = v415;
      v399 = v416;
      v400 = v417;
      v401 = v418;
      v394 = v411;
      v395 = v412;
      v396 = v413;
      v397 = v414;
      v305 = (v302 + *(v366 + 32));
      *v305 = v408;
      v305[1] = v403;
      v305[2] = v304;
      v306 = v399;
      v305[7] = v398;
      v305[8] = v306;
      v307 = v401;
      v305[9] = v400;
      v305[10] = v307;
      v308 = v395;
      v305[3] = v394;
      v305[4] = v308;
      v309 = v397;
      v305[5] = v396;
      v305[6] = v309;
      v310 = type metadata accessor for LocationModelObject(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v310 - 8) + 56))(v305, 0, 1, v310);
      *v302 = v303;
      *(v299 + 8) = *(&v303 + 1);
      *(v299 + 16) = v304;
      *(v299 + 32) = 0;
      *(v299 + 40) = 0;
      *(v299 + 48) = 0;
      v2 = v391;
      v402 = v391;
      v312 = *(v391 + 2);
      v311 = *(v391 + 3);

      if (v312 >= v311 >> 1)
      {
        sub_1CACBA39C(v311 > 1, v312 + 1, 1);
        v2 = v402;
      }

      v313 = v3[136];
      *(v2 + 2) = v312 + 1;
      sub_1CAD1AB98(v313, v2 + ((*(v372 + 80) + 32) & ~*(v372 + 80)) + *(v372 + 72) * v312, type metadata accessor for LocationSearchResult);
      if (v296 - 1 == v383)
      {
        break;
      }

      v298 = v383 + 1;
    }

LABEL_237:

    if (*(v2 + 2))
    {
      if (qword_1EC462BF0 == -1)
      {
        goto LABEL_239;
      }

      goto LABEL_259;
    }

LABEL_244:

    v320 = v336;
  }

  v321 = v3[153];
  v322 = v3[113];
  v323 = v3[112];
  v324 = v3[110];
  v325 = v3[109];
  v326 = v3[108];
  v327 = v3[107];
  sub_1CAB23A9C(v321, v322, &qword_1EC467E38);
  *(v322 + *(v325 + 20)) = v320;
  v328 = sub_1CAD4E304();
  (*(*(v328 - 8) + 56))(v326, 1, 1, v328);
  sub_1CAD1B670(v322, v323, type metadata accessor for LocationSearchResults);
  sub_1CAD4E2C4();

  v329 = sub_1CAD4E2B4();
  v330 = (*(v324 + 80) + 40) & ~*(v324 + 80);
  v331 = swift_allocObject();
  v332 = MEMORY[0x1E69E85E0];
  v331[2] = v329;
  v331[3] = v332;
  v331[4] = v327;
  sub_1CAD1AB98(v323, v331 + v330, type metadata accessor for LocationSearchResults);
  sub_1CACA6D34(0, 0, v326, &unk_1CAD69258, v331);

  sub_1CAD1AC00(v322, type metadata accessor for LocationSearchResults);
  sub_1CAB21B68(v321, &qword_1EC467E38);

  v333 = v392[1];

  return v333();
}