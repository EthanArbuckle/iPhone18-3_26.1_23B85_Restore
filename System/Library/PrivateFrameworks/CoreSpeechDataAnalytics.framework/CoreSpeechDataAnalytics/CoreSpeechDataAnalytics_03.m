unint64_t sub_24791EE78(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_24794EF94();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_24794F034();
}

unint64_t sub_24791EF2C()
{
  result = qword_27EE574E8;
  if (!qword_27EE574E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE574E8);
  }

  return result;
}

unint64_t sub_24791EF84()
{
  result = qword_27EE574F0;
  if (!qword_27EE574F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE574F0);
  }

  return result;
}

uint64_t sub_24791EFD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24791F02C()
{
  result = qword_27EE574F8;
  if (!qword_27EE574F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE574F8);
  }

  return result;
}

uint64_t (*sub_24791F080(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_24794EC04();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_247924B68(v4, v9);
  return sub_247927CF8;
}

uint64_t (*sub_24791F198(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_24794EBB4();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_247924CA4(v4, v9);
  return sub_24791F2B0;
}

void sub_24791F2B4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_24791F32C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24794EEF4();
  v2 = [v0 initWithSuiteName_];

  qword_27EE57500 = v2;
}

uint64_t static DataAnalyticsController.dataCollectionDefaults.getter()
{
  if (qword_27EE571B8 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE57500;
  v1 = qword_27EE57500;
  return v0;
}

id DataAnalyticsController.init(locale:fbfBundleId:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (qword_27EE571B8 != -1)
  {
    swift_once();
  }

  v8 = qword_27EE57500;
  if (qword_27EE57500)
  {
    v9 = qword_27EE57500;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  v10 = type metadata accessor for Utils();
  v21 = type metadata accessor for DataAnalyticsController();
  v11 = objc_allocWithZone(v21);
  v12 = &v11[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_samplingUtils];
  *v12 = v10;
  v12[1] = &off_285985D70;
  *&v11[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_policyConfigUserDefaults] = v9;
  v13 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  v14 = v8;
  v15 = v9;
  v23 = byte_285985048;
  if (sub_247918304(&v23, a1, a2, v15, a3, a4, v10, &off_285985D70, 0))
  {

    MEMORY[0x24C1AE560](v16);
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24794F084();
    }

    sub_24794F0A4();

    v13 = v24;
  }

  v23 = byte_285985049;
  if (sub_247918304(&v23, a1, a2, v15, a3, a4, v10, &off_285985D70, 0))
  {

    MEMORY[0x24C1AE560](v17);
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24794F084();
    }

    sub_24794F0A4();

    v13 = v24;
  }

  *&v11[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers] = v13;
  v22.receiver = v11;
  v22.super_class = v21;
  v18 = objc_msgSendSuper2(&v22, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v18;
}

id DataAnalyticsController.__allocating_init(policyConfigUserDefaults:locale:fbfBundleId:isMeDevice:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for Utils();
  v25 = type metadata accessor for DataAnalyticsController();
  v13 = objc_allocWithZone(v25);
  v14 = &v13[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_samplingUtils];
  *v14 = v12;
  v14[1] = &off_285985D70;
  *&v13[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_policyConfigUserDefaults] = a1;
  v15 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  v16 = a1;
  v28 = byte_285985070;
  v26 = a3;
  v17 = a3;
  v18 = a4;
  v19 = v16;
  if (sub_247918304(&v28, a2, v17, v16, v18, a5, v12, &off_285985D70, a6))
  {

    MEMORY[0x24C1AE560](v20);
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24794F084();
    }

    sub_24794F0A4();

    v15 = v29;
  }

  v28 = byte_285985071;
  if (sub_247918304(&v28, a2, v26, v19, v18, a5, v12, &off_285985D70, a6 & 1))
  {

    MEMORY[0x24C1AE560](v21);
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v24 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24794F084();
    }

    sub_24794F0A4();

    v15 = v29;
  }

  *&v13[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers] = v15;
  v27.receiver = v13;
  v27.super_class = v25;
  v22 = objc_msgSendSuper2(&v27, sel_init);

  return v22;
}

id DataAnalyticsController.__allocating_init(dataCollectionTypes:policyConfigUserDefaults:locale:fbfBundleId:isMeDevice:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v12 = type metadata accessor for Utils();
  v24.super_class = type metadata accessor for DataAnalyticsController();
  v13 = objc_allocWithZone(v24.super_class);
  v14 = &v13[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_samplingUtils];
  *v14 = v12;
  v14[1] = &off_285985D70;
  v24.receiver = v13;
  *&v13[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_policyConfigUserDefaults] = a2;
  v29 = MEMORY[0x277D84F90];
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 32);
    v17 = a2;
    v18 = MEMORY[0x277D84F90];
    do
    {
      v19 = *v16++;
      v28 = v19;
      if (sub_247918304(&v28, a3, a4, v17, a5, a6, v12, &off_285985D70, a7 & 1))
      {

        MEMORY[0x24C1AE560](v20);
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24794F084();
        }

        sub_24794F0A4();

        v18 = v29;
      }

      --v15;
    }

    while (v15);
  }

  else
  {
    v21 = a2;
    v18 = MEMORY[0x277D84F90];
  }

  *(v24.receiver + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers) = v18;
  v27 = v24;
  v22 = objc_msgSendSuper2(&v27, sel_init);

  return v22;
}

uint64_t sub_24791FB70(uint64_t result)
{
  v13 = result;
  v2 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v12 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers);
    }

    result = sub_24794F414();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_21:
    v4 = 0;
    return v4 & 1;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v3 >= 1)
  {

    v4 = 0;
    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1AE890](v5, v2);
        if ((v4 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);

        if ((v4 & 1) == 0)
        {
LABEL_11:
          swift_beginAccess();
          sub_2478E9680(v6 + 136, &v14, &qword_27EE574C0, &unk_247951550);
          if (v15)
          {
            sub_2478E2F88(&v14, v17);
            sub_247917728(v6 + 16, &v14);
            v7 = v15;
            v8 = v16;
            __swift_project_boxed_opaque_existential_1(&v14, v15);
            v9 = (*(v8 + 8))(v7, v8);
            __swift_destroy_boxed_opaque_existential_0(&v14);
            if (v9)
            {
              v10 = v18;
              v11 = v19;
              __swift_project_boxed_opaque_existential_1(v17, v18);
              v4 = (*(v11 + 8))(v13, v10, v11);
            }

            else
            {
              v4 = 0;
            }

            __swift_destroy_boxed_opaque_existential_0(v17);
          }

          else
          {

            sub_2478E9620(&v14, &qword_27EE574C0, &unk_247951550);
            v4 = 0;
          }

          goto LABEL_6;
        }
      }

      v4 = 1;
LABEL_6:
      if (v3 == ++v5)
      {

        return v4 & 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24791FDCC(uint64_t result, uint64_t a2)
{
  v11 = result;
  v3 = *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v10 = *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers);
    }

    result = sub_24794F414();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_18:
    v5 = 0;
    return v5 & 1;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1AE890](v6, v3);
        if ((v5 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);

        if ((v5 & 1) == 0)
        {
LABEL_11:
          swift_beginAccess();
          sub_2478E9680(v7 + 136, &v13, &qword_27EE574C0, &unk_247951550);
          if (v14)
          {
            sub_2478E2F88(&v13, v15);
            v9 = v16;
            v8 = v17;
            __swift_project_boxed_opaque_existential_1(v15, v16);
            v5 = (*(v8 + 16))(v11, a2, v9, v8);

            __swift_destroy_boxed_opaque_existential_0(v15);
          }

          else
          {

            sub_2478E9620(&v13, &qword_27EE574C0, &unk_247951550);
            v5 = 0;
          }

          goto LABEL_6;
        }
      }

      v5 = 1;
LABEL_6:
      if (v4 == ++v6)
      {

        return v5 & 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2479200BC(uint64_t a1, char a2)
{
  v3[2] = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0) - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v7 = sub_24794EBB4();
  v3[4] = v7;
  v8 = *(v7 - 8);
  v3[5] = v8;
  v9 = *(v8 + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v10 = *(*(type metadata accessor for DataAnalyticsProcessResult() - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v3[8] = v11;
  v12 = swift_task_alloc();
  v3[9] = v12;
  *v12 = v3;
  v12[1] = sub_24792023C;

  return sub_247920EB4(v11, a1, a2);
}

uint64_t sub_24792023C()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_247920338, 0, 0);
}

uint64_t sub_247920338()
{
  v43 = v0;
  v1 = v0[8];
  if (sub_247928418())
  {
    v2 = v0[4];
    v3 = v0[5];
    v4 = v0[3];
    sub_2478E9680(v0[8], v4, &qword_27EE572D0, &unk_2479504E0);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_2478E9620(v0[3], &qword_27EE572D0, &unk_2479504E0);
    }

    else
    {
      (*(v0[5] + 32))(v0[7], v0[3], v0[4]);
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v6 = v0[6];
      v5 = v0[7];
      v8 = v0[4];
      v7 = v0[5];
      v9 = sub_24794ED34();
      __swift_project_value_buffer(v9, qword_27EE58DF8);
      (*(v7 + 16))(v6, v5, v8);
      v10 = sub_24794ED14();
      v11 = sub_24794F154();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[5];
      v14 = v0[6];
      v15 = v0[4];
      if (v12)
      {
        v16 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = v41;
        *v16 = 136315138;
        sub_247927CAC(&qword_27EE57288, MEMORY[0x277CC9578]);
        v17 = sub_24794F4D4();
        v19 = v18;
        v20 = *(v13 + 8);
        v20(v14, v15);
        v21 = sub_247924380(v17, v19, &v42);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_2478E1000, v10, v11, "#DataAnalyticsController cleanup audio on and before date: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x24C1AF180](v41, -1, -1);
        MEMORY[0x24C1AF180](v16, -1, -1);
      }

      else
      {

        v20 = *(v13 + 8);
        v20(v14, v15);
      }

      v22 = (v0[2] + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_samplingUtils);
      v23 = *v22;
      (*(v22[1] + 120))(v0[7]);
      v24 = v0[5] + 8;
      v20(v0[7], v0[4]);
    }
  }

  v25 = v0[8];
  DataAnalyticsProcessResult.getFinishedStatus()();
  if (v42 == 2)
  {
    v26 = 0;
LABEL_14:
    v28 = v0[7];
    v29 = v0[8];
    v30 = v0[6];
    v31 = v0[3];
    v32 = sub_247928640();
    v34 = v33;
    sub_2478E95CC();
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v34;
    *(v35 + 16) = v26;
    swift_willThrow();
    sub_24792580C(v29);

    v36 = v0[1];
    goto LABEL_16;
  }

  v27 = v0[8];
  DataAnalyticsProcessResult.getFinishedStatus()();
  if (v42 == 1)
  {
    v26 = 1;
    goto LABEL_14;
  }

  v37 = v0[7];
  v38 = v0[6];
  v39 = v0[3];
  sub_24792580C(v0[8]);

  v36 = v0[1];
LABEL_16:

  return v36();
}

uint64_t sub_247920834(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v4;
  v7[2] = a1;
  v7[3] = v3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0) - 8) + 64) + 15;
  v7[4] = swift_task_alloc();
  v10 = sub_24794EBB4();
  v7[5] = v10;
  v11 = *(v10 - 8);
  v7[6] = v11;
  v12 = *(v11 + 64) + 15;
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[9] = v13;
  *v13 = v7;
  v13[1] = sub_247920994;

  return sub_247920EB4(a1, a2, a3);
}

uint64_t sub_247920994()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_247920A90, 0, 0);
}

uint64_t sub_247920A90()
{
  v32 = v0;
  v1 = v0[2];
  if (sub_247928418())
  {
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[4];
    sub_2478E9680(v0[2], v4, &qword_27EE572D0, &unk_2479504E0);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_2478E9620(v0[4], &qword_27EE572D0, &unk_2479504E0);
    }

    else
    {
      (*(v0[6] + 32))(v0[8], v0[4], v0[5]);
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v6 = v0[7];
      v5 = v0[8];
      v8 = v0[5];
      v7 = v0[6];
      v9 = sub_24794ED34();
      __swift_project_value_buffer(v9, qword_27EE58DF8);
      (*(v7 + 16))(v6, v5, v8);
      v10 = sub_24794ED14();
      v11 = sub_24794F154();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[6];
      v14 = v0[7];
      v15 = v0[5];
      if (v12)
      {
        v16 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v30;
        *v16 = 136315138;
        sub_247927CAC(&qword_27EE57288, MEMORY[0x277CC9578]);
        v17 = sub_24794F4D4();
        v19 = v18;
        v20 = *(v13 + 8);
        v20(v14, v15);
        v21 = sub_247924380(v17, v19, &v31);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_2478E1000, v10, v11, "#DataAnalyticsController cleanup audio on and before date: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x24C1AF180](v30, -1, -1);
        MEMORY[0x24C1AF180](v16, -1, -1);
      }

      else
      {

        v20 = *(v13 + 8);
        v20(v14, v15);
      }

      v22 = (v0[3] + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_samplingUtils);
      v23 = *v22;
      (*(v22[1] + 120))(v0[8]);
      v24 = v0[6] + 8;
      v20(v0[8], v0[5]);
    }
  }

  v26 = v0[7];
  v25 = v0[8];
  v27 = v0[4];

  v28 = v0[1];

  return v28();
}

uint64_t sub_247920EB4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 480) = a2;
  *(v4 + 488) = v3;
  *(v4 + 616) = a3;
  *(v4 + 472) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0) - 8) + 64) + 15;
  *(v4 + 496) = swift_task_alloc();
  v6 = type metadata accessor for DataAnalyticsProcessResult();
  *(v4 + 504) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 512) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247920F88, 0, 0);
}

uint64_t sub_247920F88()
{
  v51 = v0;
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[61];
  v4 = sub_24794EBB4();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = *(v2 + 20);
  v7 = MEMORY[0x277D84F90];
  *(v1 + v6) = MEMORY[0x277D84F90];
  sub_2478E9620(v1, &qword_27EE572D0, &unk_2479504E0);
  result = (v5)(v1, 1, 1, v4);
  v0[54] = v7;
  v9 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers);
  if (v9 >> 62)
  {
LABEL_57:
    result = sub_24794F414();
    v10 = result;
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    if (v10 < 1)
    {
      __break(1u);
LABEL_59:
      __break(1u);
      return result;
    }

    v49 = v9 & 0xC000000000000001;

    v12 = 0;
    v48 = v10;
    do
    {
      if (v49)
      {
        v13 = MEMORY[0x24C1AE890](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      sub_247917728(v13 + 16, (v0 + 2));
      v14 = v0[5];
      v15 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
      (*(v15 + 40))(v14, v15);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      sub_247917728(v13 + 96, (v0 + 7));
      v16 = v0[10];
      v17 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v16);
      (*(v17 + 88))(v16, v17);
      __swift_destroy_boxed_opaque_existential_0(v0 + 7);
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v18 = sub_24794ED34();
      __swift_project_value_buffer(v18, qword_27EE58DF8);

      v19 = sub_24794ED14();
      v20 = sub_24794F154();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v50 = v22;
        *v21 = 136315138;
        v23 = *(v13 + 184);
        v24 = 0xD000000000000013;
        if (v23 == 2)
        {
          v24 = 0xD000000000000011;
        }

        v25 = 0x80000002479525A0;
        if (v23 == 2)
        {
          v25 = 0x8000000247952580;
        }

        v26 = 0xD000000000000015;
        if (*(v13 + 184))
        {
          v26 = 0x72506E6F74747562;
        }

        v27 = 0xEE00435346737365;
        if (!*(v13 + 184))
        {
          v27 = 0x8000000247952550;
        }

        if (*(v13 + 184) <= 1u)
        {
          v28 = v26;
        }

        else
        {
          v28 = v24;
        }

        if (*(v13 + 184) <= 1u)
        {
          v29 = v27;
        }

        else
        {
          v29 = v25;
        }

        v30 = sub_247924380(v28, v29, &v50);

        *(v21 + 4) = v30;
        _os_log_impl(&dword_2478E1000, v19, v20, "#DataAnalyticsController: Successfully loaded sampling info for %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x24C1AF180](v22, -1, -1);
        MEMORY[0x24C1AF180](v21, -1, -1);

        v10 = v48;
      }

      else
      {
      }

      MEMORY[0x24C1AE560](v31);
      if (*((v0[54] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[54] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = v9;
        v34 = *((v0[54] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24794F084();
        v9 = v33;
      }

      sub_24794F0A4();

      v32 = v0[54];
      ++v12;
    }

    while (v10 != v12);

    v11 = MEMORY[0x277D84F90];
    if (!(v32 >> 62))
    {
LABEL_33:
      v9 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_34;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_33;
    }
  }

  result = sub_24794F414();
  v9 = result;
  if (result)
  {
LABEL_34:
    if (v9 >= 1)
    {
      v35 = 0;
      v36 = v32 & 0xC000000000000001;
      do
      {
        if (v36)
        {
          v37 = MEMORY[0x24C1AE890](v35, v32);
        }

        else
        {
          v37 = *(v32 + 8 * v35 + 32);
        }

        ++v35;
        sub_247917728(v37 + 16, (v0 + 12));
        v38 = v0[15];
        v39 = v0[16];
        __swift_project_boxed_opaque_existential_1(v0 + 12, v38);
        (*(v39 + 16))(v38, v39);

        __swift_destroy_boxed_opaque_existential_0(v0 + 12);
      }

      while (v9 != v35);
      v40 = 0;
      v50 = v11;
      while (1)
      {
        if (v36)
        {
          v41 = MEMORY[0x24C1AE890](v40, v32);
        }

        else
        {
          if (v40 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_57;
          }

          v41 = *(v32 + 8 * v40 + 32);
        }

        sub_247917728(v41 + 16, (v0 + 17));
        v42 = v0[20];
        v43 = v0[21];
        __swift_project_boxed_opaque_existential_1(v0 + 17, v42);
        v44 = (*(v43 + 8))(v42, v43);
        __swift_destroy_boxed_opaque_existential_0(v0 + 17);
        if (v44)
        {
          sub_24794F3A4();
          v45 = *(v50 + 16);
          sub_24794F3D4();
          sub_24794F3E4();
          sub_24794F3B4();
        }

        else
        {
        }

        if (v9 == ++v40)
        {
          v46 = v50;
          goto LABEL_53;
        }
      }
    }

    goto LABEL_59;
  }

LABEL_52:
  v46 = MEMORY[0x277D84F90];
LABEL_53:

  v0[65] = v46;
  v47 = swift_task_alloc();
  v0[66] = v47;
  *v47 = v0;
  v47[1] = sub_24792185C;

  return sub_247925B80(v46);
}

uint64_t sub_24792185C(uint64_t a1)
{
  v2 = *(*v1 + 528);
  v3 = *(*v1 + 520);
  v5 = *v1;
  *(*v1 + 536) = a1;

  return MEMORY[0x2822009F8](sub_24792197C, 0, 0);
}

uint64_t sub_24792197C()
{
  v36 = v0;
  v1 = *(v0 + 536);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v26 = *(v0 + 536);
    }

    v2 = sub_24794F414();
    *(v0 + 544) = v2;
    if (v2)
    {
LABEL_3:
      v3 = *(v0 + 512);
      v4 = *(v0 + 496);
      *(v0 + 552) = sub_247923368(v4, *(v0 + 480), *(v0 + 616));
      sub_2479096C8(v4, v3);
      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        v5 = *(v0 + 536);
        *(v0 + 560) = 0;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x24C1AE890](0);
        }

        else
        {
          v3 = *(v5 + 32);
        }

        *(v0 + 568) = v3;
        if (qword_27EE571C0 == -1)
        {
          goto LABEL_8;
        }
      }

      swift_once();
LABEL_8:
      v6 = sub_24794ED34();
      *(v0 + 576) = __swift_project_value_buffer(v6, qword_27EE58DF8);

      v7 = sub_24794ED14();
      v8 = sub_24794F154();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v35 = v10;
        *v9 = 136315138;
        *(v0 + 464) = v3;
        type metadata accessor for CollectionManager();
        sub_247927CAC(&qword_27EE57538, type metadata accessor for CollectionManager);
        v11 = sub_24794F4D4();
        v13 = sub_247924380(v11, v12, &v35);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_2478E1000, v7, v8, "#DataAnalyticsController start processing Records for : %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x24C1AF180](v10, -1, -1);
        MEMORY[0x24C1AF180](v9, -1, -1);
      }

      *(v0 + 352) = 0;
      *(v0 + 360) = 0;
      sub_247917728(v3 + 16, v0 + 176);
      v14 = *(v0 + 200);
      v15 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v14);
      v16 = (*(v15 + 32))(v14, v15);
      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      if (v16)
      {
        sub_247917728(v3 + 96, v0 + 216);
        v17 = *(v0 + 240);
        v18 = *(v0 + 248);
        __swift_project_boxed_opaque_existential_1((v0 + 216), v17);
        v19 = *(v18 + 64);
        v34 = (v19 + *v19);
        v20 = v19[1];
        v21 = swift_task_alloc();
        *(v0 + 584) = v21;
        *v21 = v0;
        v21[1] = sub_247921EAC;

        return v34(v17, v18);
      }

      else
      {
        v23 = swift_task_alloc();
        *(v0 + 600) = v23;
        *v23 = v0;
        v23[1] = sub_247922710;
        v24 = *(v0 + 568);
        v25 = *(v0 + 552);

        return sub_247911D74(v25);
      }
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 544) = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v27 = *(v0 + 536);

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v28 = sub_24794ED34();
  __swift_project_value_buffer(v28, qword_27EE58DF8);
  v29 = sub_24794ED14();
  v30 = sub_24794F154();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2478E1000, v29, v30, "#DataAnalyticsController - no collection manager should sample", v31, 2u);
    MEMORY[0x24C1AF180](v31, -1, -1);
  }

  v32 = *(v0 + 496);
  sub_247927C48(*(v0 + 512), *(v0 + 472));

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_247921EAC()
{
  v2 = *(*v1 + 584);
  v5 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_247922060;
  }

  else
  {
    v3 = sub_247921FC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247921FC0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v1 = swift_task_alloc();
  v0[75] = v1;
  *v1 = v0;
  v1[1] = sub_247922710;
  v2 = v0[71];
  v3 = v0[69];

  return sub_247911D74(v3);
}

uint64_t sub_247922060()
{
  v49 = v0;
  v1 = *(v0 + 568);
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  *(v0 + 416) = 0;
  *(v0 + 424) = 0xE000000000000000;
  sub_24794F344();
  v2 = *(v0 + 424);
  *(v0 + 400) = *(v0 + 416);
  *(v0 + 408) = v2;
  if (*(v1 + 184) > 1u)
  {
    if (*(v1 + 184) == 2)
    {
      v3 = 0x8000000247952580;
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x80000002479525A0;
      v4 = 0xD000000000000013;
    }
  }

  else if (*(v1 + 184))
  {
    v3 = 0xEE00435346737365;
    v4 = 0x72506E6F74747562;
  }

  else
  {
    v3 = 0x8000000247952550;
    v4 = 0xD000000000000015;
  }

  v5 = *(v0 + 592);
  v6 = *(v0 + 576);
  MEMORY[0x24C1AE4C0](v4, v3);

  MEMORY[0x24C1AE4C0](0xD00000000000002FLL, 0x8000000247956F00);
  *(v0 + 456) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
  sub_24794F3F4();
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  swift_beginAccess();
  *(v0 + 352) = v8;
  *(v0 + 360) = v7;
  v9 = sub_24794ED14();
  v10 = sub_24794F164();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v11 = 136315138;

    v13 = sub_247924380(v8, v7, &v48);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_2478E1000, v9, v10, "#DataAnalyticsController: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1AF180](v12, -1, -1);
    MEMORY[0x24C1AF180](v11, -1, -1);
  }

  v14 = *(v0 + 592);
  v15 = *(v0 + 544);
  v16 = *(v0 + 512);
  v17 = *(v0 + 560) + 1;
  v18 = *(*(v0 + 568) + 184);
  *(v0 + 256) = 0;
  *(v0 + 257) = v18;
  *(v0 + 264) = v8;
  *(v0 + 272) = v7;
  *(v0 + 280) = v14;

  sub_247928838(v0 + 256);

  if (v17 == v15)
  {
    v19 = *(v0 + 552);
    v20 = *(v0 + 536);
    v21 = *(v0 + 496);

    sub_2478E9620(v21, &qword_27EE572D0, &unk_2479504E0);
    v22 = *(v0 + 496);
    sub_247927C48(*(v0 + 512), *(v0 + 472));

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 560) + 1;
    *(v0 + 560) = v25;
    v26 = *(v0 + 536);
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x24C1AE890]();
    }

    else
    {
      v27 = *(v26 + 8 * v25 + 32);
    }

    *(v0 + 568) = v27;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v28 = sub_24794ED34();
    *(v0 + 576) = __swift_project_value_buffer(v28, qword_27EE58DF8);

    v29 = sub_24794ED14();
    v30 = sub_24794F154();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 136315138;
      *(v0 + 464) = v27;
      type metadata accessor for CollectionManager();
      sub_247927CAC(&qword_27EE57538, type metadata accessor for CollectionManager);
      v33 = sub_24794F4D4();
      v35 = sub_247924380(v33, v34, &v48);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_2478E1000, v29, v30, "#DataAnalyticsController start processing Records for : %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C1AF180](v32, -1, -1);
      MEMORY[0x24C1AF180](v31, -1, -1);
    }

    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
    sub_247917728(v27 + 16, v0 + 176);
    v36 = *(v0 + 200);
    v37 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v36);
    v38 = (*(v37 + 32))(v36, v37);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    if (v38)
    {
      sub_247917728(v27 + 96, v0 + 216);
      v39 = *(v0 + 240);
      v40 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v39);
      v41 = *(v40 + 64);
      v47 = (v41 + *v41);
      v42 = v41[1];
      v43 = swift_task_alloc();
      *(v0 + 584) = v43;
      *v43 = v0;
      v43[1] = sub_247921EAC;

      return v47(v39, v40);
    }

    else
    {
      v44 = swift_task_alloc();
      *(v0 + 600) = v44;
      *v44 = v0;
      v44[1] = sub_247922710;
      v45 = *(v0 + 568);
      v46 = *(v0 + 552);

      return sub_247911D74(v46);
    }
  }
}

uint64_t sub_247922710()
{
  v2 = *(*v1 + 600);
  v5 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = sub_247922CC0;
  }

  else
  {
    v3 = sub_247922824;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247922824()
{
  v35 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 512);
  v3 = *(v0 + 560) + 1;
  v4 = *(*(v0 + 568) + 184);
  *(v0 + 256) = 1;
  *(v0 + 257) = v4;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 264) = 0;
  sub_247928838(v0 + 256);

  if (v3 == v1)
  {
    v5 = *(v0 + 552);
    v6 = *(v0 + 536);
    v7 = *(v0 + 496);

    sub_2478E9620(v7, &qword_27EE572D0, &unk_2479504E0);
    v8 = *(v0 + 496);
    sub_247927C48(*(v0 + 512), *(v0 + 472));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 560) + 1;
    *(v0 + 560) = v11;
    v12 = *(v0 + 536);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1AE890]();
    }

    else
    {
      v13 = *(v12 + 8 * v11 + 32);
    }

    *(v0 + 568) = v13;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v14 = sub_24794ED34();
    *(v0 + 576) = __swift_project_value_buffer(v14, qword_27EE58DF8);

    v15 = sub_24794ED14();
    v16 = sub_24794F154();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v17 = 136315138;
      *(v0 + 464) = v13;
      type metadata accessor for CollectionManager();
      sub_247927CAC(&qword_27EE57538, type metadata accessor for CollectionManager);
      v19 = sub_24794F4D4();
      v21 = sub_247924380(v19, v20, &v34);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2478E1000, v15, v16, "#DataAnalyticsController start processing Records for : %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1AF180](v18, -1, -1);
      MEMORY[0x24C1AF180](v17, -1, -1);
    }

    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
    sub_247917728(v13 + 16, v0 + 176);
    v22 = *(v0 + 200);
    v23 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v22);
    v24 = (*(v23 + 32))(v22, v23);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    if (v24)
    {
      sub_247917728(v13 + 96, v0 + 216);
      v25 = *(v0 + 240);
      v26 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v25);
      v27 = *(v26 + 64);
      v33 = (v27 + *v27);
      v28 = v27[1];
      v29 = swift_task_alloc();
      *(v0 + 584) = v29;
      *v29 = v0;
      v29[1] = sub_247921EAC;

      return v33(v25, v26);
    }

    else
    {
      v30 = swift_task_alloc();
      *(v0 + 600) = v30;
      *v30 = v0;
      v30[1] = sub_247922710;
      v31 = *(v0 + 568);
      v32 = *(v0 + 552);

      return sub_247911D74(v32);
    }
  }
}

uint64_t sub_247922CC0()
{
  v49 = v0;
  v1 = *(v0 + 568);
  *(v0 + 384) = 0;
  *(v0 + 392) = 0xE000000000000000;
  sub_24794F344();
  v2 = *(v0 + 392);
  *(v0 + 368) = *(v0 + 384);
  *(v0 + 376) = v2;
  if (*(v1 + 184) > 1u)
  {
    if (*(v1 + 184) == 2)
    {
      v3 = 0x8000000247952580;
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x80000002479525A0;
      v4 = 0xD000000000000013;
    }
  }

  else if (*(v1 + 184))
  {
    v3 = 0xEE00435346737365;
    v4 = 0x72506E6F74747562;
  }

  else
  {
    v3 = 0x8000000247952550;
    v4 = 0xD000000000000015;
  }

  v5 = *(v0 + 608);
  v6 = *(v0 + 576);
  MEMORY[0x24C1AE4C0](v4, v3);

  MEMORY[0x24C1AE4C0](0xD000000000000027, 0x8000000247956ED0);
  *(v0 + 448) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
  sub_24794F3F4();
  v8 = *(v0 + 368);
  v7 = *(v0 + 376);
  swift_beginAccess();
  *(v0 + 352) = v8;
  *(v0 + 360) = v7;
  v9 = sub_24794ED14();
  v10 = sub_24794F164();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v11 = 136315138;

    v13 = sub_247924380(v8, v7, &v48);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_2478E1000, v9, v10, "#DataAnalyticsController: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1AF180](v12, -1, -1);
    MEMORY[0x24C1AF180](v11, -1, -1);
  }

  v14 = *(v0 + 608);
  v15 = *(v0 + 544);
  v16 = *(v0 + 512);
  v17 = *(v0 + 560) + 1;
  v18 = *(*(v0 + 568) + 184);
  *(v0 + 256) = 0;
  *(v0 + 257) = v18;
  *(v0 + 264) = v8;
  *(v0 + 272) = v7;
  *(v0 + 280) = v14;

  sub_247928838(v0 + 256);

  if (v17 == v15)
  {
    v19 = *(v0 + 552);
    v20 = *(v0 + 536);
    v21 = *(v0 + 496);

    sub_2478E9620(v21, &qword_27EE572D0, &unk_2479504E0);
    v22 = *(v0 + 496);
    sub_247927C48(*(v0 + 512), *(v0 + 472));

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 560) + 1;
    *(v0 + 560) = v25;
    v26 = *(v0 + 536);
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x24C1AE890]();
    }

    else
    {
      v27 = *(v26 + 8 * v25 + 32);
    }

    *(v0 + 568) = v27;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v28 = sub_24794ED34();
    *(v0 + 576) = __swift_project_value_buffer(v28, qword_27EE58DF8);

    v29 = sub_24794ED14();
    v30 = sub_24794F154();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 136315138;
      *(v0 + 464) = v27;
      type metadata accessor for CollectionManager();
      sub_247927CAC(&qword_27EE57538, type metadata accessor for CollectionManager);
      v33 = sub_24794F4D4();
      v35 = sub_247924380(v33, v34, &v48);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_2478E1000, v29, v30, "#DataAnalyticsController start processing Records for : %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C1AF180](v32, -1, -1);
      MEMORY[0x24C1AF180](v31, -1, -1);
    }

    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
    sub_247917728(v27 + 16, v0 + 176);
    v36 = *(v0 + 200);
    v37 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v36);
    v38 = (*(v37 + 32))(v36, v37);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    if (v38)
    {
      sub_247917728(v27 + 96, v0 + 216);
      v39 = *(v0 + 240);
      v40 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v39);
      v41 = *(v40 + 64);
      v47 = (v41 + *v41);
      v42 = v41[1];
      v43 = swift_task_alloc();
      *(v0 + 584) = v43;
      *v43 = v0;
      v43[1] = sub_247921EAC;

      return v47(v39, v40);
    }

    else
    {
      v44 = swift_task_alloc();
      *(v0 + 600) = v44;
      *v44 = v0;
      v44[1] = sub_247922710;
      v45 = *(v0 + 568);
      v46 = *(v0 + 552);

      return sub_247911D74(v46);
    }
  }
}

unint64_t sub_247923368(uint64_t a1, uint64_t a2, int a3)
{
  v132 = a3;
  v126 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v118 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v123 = &v114 - v8;
  v9 = sub_24794EBB4();
  v130 = *(v9 - 8);
  v10 = *(v130 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v122 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v121 = &v114 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v117 = &v114 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v131 = &v114 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v143 = &v114 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v114 - v22;
  MEMORY[0x28223BE20](v21);
  v137 = &v114 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57498, &unk_247951530);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v134 = &v114 - v30;
  if (qword_27EE571C0 != -1)
  {
LABEL_44:
    swift_once();
  }

  v31 = sub_24794ED34();
  v135 = __swift_project_value_buffer(v31, qword_27EE58DF8);
  v32 = sub_24794ED14();
  v33 = sub_24794F154();
  v34 = os_log_type_enabled(v32, v33);
  v139 = v29;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2478E1000, v32, v33, "#DatataAnalyticsController: randomRowsForEachDate", v35, 2u);
    v36 = v35;
    v29 = v139;
    MEMORY[0x24C1AF180](v36, -1, -1);
  }

  v37 = sub_2479270EC(a2);
  v125 = sub_24794E510(MEMORY[0x277D84F90]);
  v38 = v130 + 56;
  a2 = 1;
  v119 = *(v130 + 56);
  v119(v126, 1, 1, v9);
  v40 = 0;
  v41 = *(v37 + 64);
  v127 = v37 + 64;
  v129 = v37;
  v42 = 1 << *(v37 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v41;
  v45 = (v42 + 63) >> 6;
  v140 = (v38 - 40);
  v138 = (v38 - 24);
  v142 = (v38 - 48);
  v120 = v38;
  v124 = (v38 - 8);
  *&v39 = 136315138;
  v128 = v39;
  *&v39 = 134218242;
  v116 = v39;
  v136 = v23;
  v133 = v45;
LABEL_7:
  v46 = v40;
  while (1)
  {
    if (!v44)
    {
      if (v45 <= v46 + 1)
      {
        v48 = v46 + 1;
      }

      else
      {
        v48 = v45;
      }

      v49 = v48 - 1;
      while (1)
      {
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v47 >= v45)
        {
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
          (*(*(v75 - 8) + 56))(v29, 1, 1, v75);
          v44 = 0;
          goto LABEL_20;
        }

        v44 = *(v127 + 8 * v47);
        ++v46;
        if (v44)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    v47 = v46;
LABEL_19:
    v50 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v51 = v50 | (v47 << 6);
    v52 = v129;
    v53 = v130;
    v54 = v137;
    (*(v130 + 16))(v137, *(v129 + 48) + *(v130 + 72) * v51, v9);
    v55 = *(*(v52 + 56) + 8 * v51);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    v57 = *(v56 + 48);
    v58 = *(v53 + 32);
    v29 = v139;
    v58(v139, v54, v9);
    *&v29[v57] = v55;
    (*(*(v56 - 8) + 56))(v29, 0, 1, v56);

    v49 = v47;
    v23 = v136;
LABEL_20:
    v59 = v134;
    sub_247917674(v29, v134);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
    {
      break;
    }

    v141 = v49;
    v61 = *(v59 + *(v60 + 48));
    v62 = *v138;
    (*v138)(v23, v59, v9);
    type metadata accessor for Utils();
    v63 = v137;
    sub_24794EBA4();
    sub_247940B60(v63, v143);
    v64 = *v142;
    (*v142)(v63, v9);
    if (sub_24794EB84() & 1) == 0 || (v132)
    {
      v76 = v123;
      sub_2478E9680(v126, v123, &qword_27EE572D0, &unk_2479504E0);
      v77 = *v124;
      v78 = (*v124)(v76, 1, v9);
      sub_2478E9620(v76, &qword_27EE572D0, &unk_2479504E0);
      if (v78 == 1)
      {
        goto LABEL_32;
      }

      v79 = v118;
      sub_2478E9680(v126, v118, &qword_27EE572D0, &unk_2479504E0);
      if (v77(v79, 1, v9) == 1)
      {
        v80 = v117;
        sub_24794EB14();
        if (v77(v79, 1, v9) != 1)
        {
          sub_2478E9620(v79, &qword_27EE572D0, &unk_2479504E0);
        }
      }

      else
      {
        v81 = v117;
        v62(v117, v79, v9);
        v80 = v81;
      }

      v82 = sub_24794EB44();
      v64(v80, v9);
      if (v82)
      {
LABEL_32:
        v83 = v126;
        sub_2478E9620(v126, &qword_27EE572D0, &unk_2479504E0);
        v84 = *v140;
        (*v140)(v83, v143, v9);
        v119(v83, 0, 1, v9);
        v85 = v121;
        v84(v121, v136, v9);
        v86 = sub_24794ED14();
        v87 = sub_24794F154();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v115 = v88;
          v89 = swift_slowAlloc();
          v144[0] = v89;
          *v88 = v128;
          sub_247927CAC(&qword_27EE57288, MEMORY[0x277CC9578]);
          v90 = sub_24794F4D4();
          v92 = v91;
          v64(v85, v9);
          v93 = sub_247924380(v90, v92, v144);

          v94 = v115;
          *(v115 + 1) = v93;
          v95 = v94;
          _os_log_impl(&dword_2478E1000, v86, v87, "#DatataAnalyticsController: mostRecentDate set to %s for resutls processing", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v89);
          MEMORY[0x24C1AF180](v89, -1, -1);
          MEMORY[0x24C1AF180](v95, -1, -1);
        }

        else
        {

          v64(v85, v9);
        }
      }

      v96 = v125;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v144[0] = v96;
      v23 = v136;
      sub_24794B954(v61, v136, isUniquelyReferenced_nonNull_native);
      v125 = v144[0];
      v98 = v122;
      (*v140)(v122, v143, v9);

      v99 = sub_24794ED14();
      v100 = sub_24794F154();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = v98;
        v103 = swift_slowAlloc();
        v144[0] = v103;
        *v101 = v116;
        LODWORD(v115) = v100;
        v104 = *(v61 + 16);

        *(v101 + 4) = v104;

        *(v101 + 12) = 2080;
        sub_247927CAC(&qword_27EE57288, MEMORY[0x277CC9578]);
        v105 = sub_24794F4D4();
        v107 = v106;
        v108 = v102;
        v23 = v136;
        v64(v108, v9);
        a2 = sub_247924380(v105, v107, v144);

        *(v101 + 14) = a2;
        _os_log_impl(&dword_2478E1000, v99, v115, "#DatataAnalyticsController: randomRowsForEachDate rows count: %ld for date: %s", v101, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x24C1AF180](v103, -1, -1);
        MEMORY[0x24C1AF180](v101, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        a2 = v142;
        v64(v98, v9);
      }

      v64(v143, v9);
      v64(v23, v9);
      v29 = v139;
      v45 = v133;
      v40 = v141;
      goto LABEL_7;
    }

    v65 = v131;
    (*v140)(v131, v23, v9);
    a2 = sub_24794ED14();
    v66 = sub_24794F154();
    if (os_log_type_enabled(a2, v66))
    {
      v67 = v9;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v144[0] = v69;
      *v68 = v128;
      sub_247927CAC(&qword_27EE57288, MEMORY[0x277CC9578]);
      v70 = sub_24794F4D4();
      v72 = v71;
      v64(v65, v67);
      v73 = sub_247924380(v70, v72, v144);
      v23 = v136;

      *(v68 + 4) = v73;
      _os_log_impl(&dword_2478E1000, a2, v66, "#DatataAnalyticsController: skipping process of today: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x24C1AF180](v69, -1, -1);
      v74 = v68;
      v9 = v67;
      MEMORY[0x24C1AF180](v74, -1, -1);

      v64(v143, v67);
      v64(v23, v67);
    }

    else
    {

      a2 = v142;
      v64(v65, v9);
      v64(v143, v9);
      v64(v23, v9);
    }

    v46 = v141;
    v29 = v139;
    v45 = v133;
  }

  v109 = v125;

  v110 = sub_24794ED14();
  v111 = sub_24794F154();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 134217984;
    *(v112 + 4) = *(v109 + 16);

    _os_log_impl(&dword_2478E1000, v110, v111, "#DatataAnalyticsController: randomRowsForEachDate rows count: %ld", v112, 0xCu);
    MEMORY[0x24C1AF180](v112, -1, -1);
  }

  else
  {
  }

  return v109;
}

id DataAnalyticsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DataAnalyticsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataAnalyticsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_247924380(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24792444C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2478F65EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24792444C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_247924558(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24794F394();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_247924558(uint64_t a1, unint64_t a2)
{
  v4 = sub_2479245A4(a1, a2);
  sub_2479246D4(&unk_285984E68);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2479245A4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_247943568(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24794F394();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24794EFB4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247943568(v10, 0);
        result = sub_24794F324();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2479246D4(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2479247C0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2479247C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57530, &unk_247951740);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2479248B4(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = sub_24794F2A4();
    v19 = v17;
    v42 = (v18 + 1) & v17;
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v46 = *(v20 + 56);
    v40 = (v20 - 8);
    v41 = v21;
    do
    {
      v22 = v46 * v16;
      v23 = v19;
      v24 = v20;
      v41(v13, *(a2 + 48) + v46 * v16, v8);
      v25 = *(a2 + 40);
      sub_247927CAC(v43, v44);
      v26 = sub_24794EEB4();
      result = (*v40)(v13, v8);
      v19 = v23;
      v27 = v26 & v23;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v30 = *(a2 + 48);
          result = v30 + v46 * a1;
          v31 = v30 + v22 + v46;
          v32 = v46 * a1 < v22 || result >= v31;
          v20 = v24;
          if (!v32)
          {
            if (v46 * a1 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v19 = v23;
            }

            v33 = *(a2 + 56);
            v34 = (v33 + 8 * a1);
            v35 = (v33 + 8 * v16);
            if (a1 != v16 || v34 >= v35 + 1)
            {
              *v34 = *v35;
              a1 = v16;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v20 = v24;
LABEL_4:
      v16 = (v16 + 1) & v19;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t (*sub_247924B68(uint64_t *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_24794EC04();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_247925464(v7);
  v7[12] = sub_247924E7C(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_247927CFC;
}

uint64_t (*sub_247924CA4(uint64_t *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_24794EBB4();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_24792548C(v7);
  v7[12] = sub_247925170(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_247924DE0;
}

void sub_247924DE4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_247924E7C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_24794EC04();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_24792C228(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_24794C8A0();
      v15 = v23;
      goto LABEL_14;
    }

    sub_24794A550(v20, a3 & 1);
    v24 = *v4;
    v15 = sub_24792C228(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_24794F514();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return sub_24792502C;
}

void sub_24792502C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      sub_24794BBC4(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    sub_2479248B4(v6, v7, MEMORY[0x277CC95F0], &qword_27EE57528, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

void (*sub_247925170(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_24794EBB4();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_24792BFBC(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_24794CB48();
      v15 = v23;
      goto LABEL_14;
    }

    sub_24794AD08(v20, a3 & 1);
    v24 = *v4;
    v15 = sub_24792BFBC(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_24794F514();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return sub_247925320;
}

void sub_247925320(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      sub_24794BC94(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    sub_2479248B4(v6, v7, MEMORY[0x277CC9578], &qword_27EE574B0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

uint64_t (*sub_247925464(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_247927CF4;
}

uint64_t (*sub_24792548C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2479254B4;
}

void sub_2479254C0()
{
  sub_2478F0668();
  if (v0)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v1 = sub_24794ED34();
    __swift_project_value_buffer(v1, qword_27EE58DF8);
    v2 = v0;
    v3 = sub_24794ED14();
    v4 = sub_24794F164();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_2478E1000, v3, v4, "#DataAnalyticsController - Error while cleaning up local and remote events: %@", v5, 0xCu);
      sub_2478E9620(v6, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v6, -1, -1);
      MEMORY[0x24C1AF180](v5, -1, -1);
    }

    else
    {
    }
  }

  if (qword_27EE571B8 != -1)
  {
    swift_once();
  }

  v9 = qword_27EE57500;
  if (qword_27EE57500)
  {
    v10 = sub_24794EEF4();
    [v9 removePersistentDomainForName_];
  }

  sub_247947EF0();
}

void sub_2479256AC()
{
  sub_247947EF0();
  sub_2478F08E4();
  v1 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v2 = [v1 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v3 = [v2 AttentionAndInvocationSampling];
  swift_unknownObjectRelease();
  sub_2478F0540(v3);

  if (!v0)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v5 = sub_24794EEF4();
    v6 = [v4 initWithSuiteName_];

    if (v6)
    {
      sub_24793B51C(v6);
    }

    else
    {
      sub_2478E95CC();
      swift_allocError();
      *v7 = xmmword_247951680;
      *(v7 + 16) = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_24792580C(uint64_t a1)
{
  v2 = type metadata accessor for DataAnalyticsProcessResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of DataAnalyticsController.processRecords(siriRequestsRecords:processToday:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xA0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2478E8998;

  return v10(a1, a2);
}

uint64_t dispatch thunk of DataAnalyticsController.processRecordsAndGetResult(siriRequestsRecords:processToday:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xA8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2478E8998;

  return v12(a1, a2, a3);
}

uint64_t sub_247925BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = MEMORY[0x277D84F90];
  v7 = v4 + 15;
  v8 = v4[19];
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v32 = v4[19];
    }

    v9 = sub_24794F414();
    v4[20] = v9;
    if (v9)
    {
LABEL_3:
      if (v9 < 1)
      {
        __break(1u);
      }

      else
      {
        v10 = 0;
        v5 = 0xEE00435346737365;
        v34 = 0x8000000247952580;
        v35 = 0x8000000247952550;
        v36 = 0x80000002479525A0;
        v11 = MEMORY[0x277D84F90];
        while (1)
        {
          v4[21] = v10;
          v4[22] = v11;
          v12 = v4[19];
          if ((v12 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x24C1AE890](v10, v12, a3, a4);
          }

          else
          {
            v6 = *(v12 + 8 * v10 + 32);
          }

          v4[23] = v6;
          sub_247917728(v6 + 16, (v4 + 2));
          v13 = v4[5];
          v14 = v4[6];
          __swift_project_boxed_opaque_existential_1(v4 + 2, v13);
          v15 = (*(v14 + 24))(v13, v14);
          __swift_destroy_boxed_opaque_existential_0(v4 + 2);
          if (v15)
          {
            break;
          }

          MEMORY[0x24C1AE560](v16);
          if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v17 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_24794F084();
          }

          sub_24794F0A4();

          v11 = v4[15];
          v10 = v4[21] + 1;
          if (v10 == v4[20])
          {
            goto LABEL_29;
          }
        }

        if (qword_27EE571C0 == -1)
        {
          goto LABEL_14;
        }
      }

      swift_once();
LABEL_14:
      v18 = sub_24794ED34();
      __swift_project_value_buffer(v18, qword_27EE58DF8);

      v19 = sub_24794ED14();
      v20 = sub_24794F154();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v4[18] = v22;
        *v21 = 136315138;
        if (*(v6 + 184) > 1u)
        {
          if (*(v6 + 184) == 2)
          {
            v23 = 0xD000000000000011;
            v5 = v34;
          }

          else
          {
            v23 = 0xD000000000000013;
            v5 = v36;
          }
        }

        else
        {
          v23 = 0x72506E6F74747562;
          if (!*(v6 + 184))
          {
            v23 = 0xD000000000000015;
            v5 = v35;
          }
        }

        v24 = sub_247924380(v23, v5, v4 + 18);

        *(v21 + 4) = v24;
        _os_log_impl(&dword_2478E1000, v19, v20, "#DataAnalyticsController: Manager %s sampling cycle ended at start of processing", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x24C1AF180](v22, -1, -1);
        MEMORY[0x24C1AF180](v21, -1, -1);
      }

      sub_247917728(v6 + 96, (v4 + 7));
      v25 = v4[10];
      v26 = v4[11];
      __swift_project_boxed_opaque_existential_1(v4 + 7, v25);
      v27 = *(v26 + 8);
      v28 = *(v27 + 8);
      v37 = (v28 + *v28);
      v29 = v28[1];
      v30 = swift_task_alloc();
      v4[24] = v30;
      *v30 = v4;
      v30[1] = sub_247926284;

      return v37(v25, v27);
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4[20] = v9;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_29:
  v33 = v4[1];

  return v33(v11);
}

uint64_t sub_247926284()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_247926A54;
  }

  else
  {
    v3 = sub_247926398;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247926398()
{
  v1 = v0[23];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v3 = v0 + 22;
  v2 = v0[22];
  v4 = v0[21] + 1;
  if (v4 == v0[20])
  {
LABEL_2:
    v5 = v0[1];

    return v5(v2);
  }

  v7 = v0 + 2;
  v8 = v0 + 16;
  v56 = v0 + 18;
  v9 = 0xEE00435346737365;
  v10 = v0[25];
  v57 = v0 + 15;
  while (1)
  {
    v0[21] = v4;
    v0[22] = v2;
    v12 = v0[19];
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1AE890](v4);
    }

    else
    {
      v13 = *(v12 + 8 * v4 + 32);
    }

    v0[23] = v13;
    sub_247917728(v13 + 16, v7);
    v14 = v0[5];
    v15 = v0[6];
    __swift_project_boxed_opaque_existential_1(v7, v14);
    v16 = (*(v15 + 24))(v14, v15);
    __swift_destroy_boxed_opaque_existential_0(v7);
    if (!v10)
    {
      break;
    }

    v17 = v8;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v18 = v0[23];
    v19 = sub_24794ED34();
    __swift_project_value_buffer(v19, qword_27EE58DF8);

    v20 = v10;
    v21 = sub_24794ED14();
    v22 = sub_24794F164();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[23];
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v17 = v26;
      *v25 = 136315394;
      v27 = *(v24 + 184);
      v28 = 0xD000000000000013;
      if (v27 == 2)
      {
        v28 = 0xD000000000000011;
      }

      v29 = 0x80000002479525A0;
      if (v27 == 2)
      {
        v29 = 0x8000000247952580;
      }

      v30 = 0xD000000000000015;
      if (*(v24 + 184))
      {
        v30 = 0x72506E6F74747562;
      }

      v31 = 0x8000000247952550;
      if (*(v24 + 184))
      {
        v31 = 0xEE00435346737365;
      }

      if (*(v24 + 184) <= 1u)
      {
        v32 = v30;
      }

      else
      {
        v32 = v28;
      }

      if (*(v24 + 184) <= 1u)
      {
        v33 = v31;
      }

      else
      {
        v33 = v29;
      }

      v58 = v0[23];
      v34 = sub_247924380(v32, v33, v17);

      *(v25 + 4) = v34;
      *(v25 + 12) = 2080;
      swift_getErrorValue();
      v36 = v0[12];
      v35 = v0[13];
      v37 = v0[14];
      v38 = sub_24794F524();
      v40 = sub_247924380(v38, v39, v17);

      *(v25 + 14) = v40;
      _os_log_impl(&dword_2478E1000, v21, v22, "#DataAnalyticsController: Manager %s checkAndEndDeviceSampling failed: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v26, -1, -1);
      MEMORY[0x24C1AF180](v25, -1, -1);

      v3 = v0 + 22;
      v11 = v0 + 22;
      v9 = 0xEE00435346737365;
    }

    else
    {

      v11 = v3;
    }

    v8 = v17;
LABEL_8:
    v10 = 0;
    v2 = *v11;
    v4 = v0[21] + 1;
    if (v4 == v0[20])
    {
      goto LABEL_2;
    }
  }

  if ((v16 & 1) == 0)
  {

    MEMORY[0x24C1AE560](v41);
    if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v42 = *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24794F084();
    }

    sub_24794F0A4();

    v11 = v0 + 15;
    goto LABEL_8;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v43 = sub_24794ED34();
  __swift_project_value_buffer(v43, qword_27EE58DF8);

  v44 = sub_24794ED14();
  v45 = sub_24794F154();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v56 = v47;
    *v46 = 136315138;
    if (*(v13 + 184) > 1u)
    {
      if (*(v13 + 184) == 2)
      {
        v48 = 0xD000000000000011;
        v9 = 0x8000000247952580;
      }

      else
      {
        v48 = 0xD000000000000013;
        v9 = 0x80000002479525A0;
      }
    }

    else
    {
      v48 = 0x72506E6F74747562;
      if (!*(v13 + 184))
      {
        v48 = 0xD000000000000015;
        v9 = 0x8000000247952550;
      }
    }

    v49 = sub_247924380(v48, v9, v56);

    *(v46 + 4) = v49;
    _os_log_impl(&dword_2478E1000, v44, v45, "#DataAnalyticsController: Manager %s sampling cycle ended at start of processing", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x24C1AF180](v47, -1, -1);
    MEMORY[0x24C1AF180](v46, -1, -1);
  }

  sub_247917728(v13 + 96, (v0 + 7));
  v50 = v0[10];
  v51 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v50);
  v52 = *(v51 + 8);
  v53 = *(v52 + 8);
  v59 = (v53 + *v53);
  v54 = v53[1];
  v55 = swift_task_alloc();
  v0[24] = v55;
  *v55 = v0;
  v55[1] = sub_247926284;

  return v59(v50, v52);
}

uint64_t sub_247926A54()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[25];
  v2 = 0x8000000247952550;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v45 = sub_24794ED34();
  __swift_project_value_buffer(v45, qword_27EE58DF8);

  v4 = v1;
  v5 = sub_24794ED14();
  v6 = sub_24794F164();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v0[16] = v10;
    *v9 = 136315394;
    if (*(v8 + 184) > 1u)
    {
      if (*(v8 + 184) == 2)
      {
        v11 = 0xD000000000000011;
        v12 = 0x8000000247952580;
      }

      else
      {
        v11 = 0xD000000000000013;
        v12 = 0x80000002479525A0;
      }
    }

    else if (*(v8 + 184))
    {
      v11 = 0x72506E6F74747562;
      v12 = 0xEE00435346737365;
    }

    else
    {
      v11 = 0xD000000000000015;
      v12 = 0x8000000247952550;
    }

    v13 = v0[23];
    v14 = sub_247924380(v11, v12, v0 + 16);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[14];
    v18 = sub_24794F524();
    v20 = sub_247924380(v18, v19, v0 + 16);

    *(v9 + 14) = v20;
    _os_log_impl(&dword_2478E1000, v5, v6, "#DataAnalyticsController: Manager %s checkAndEndDeviceSampling failed: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v10, -1, -1);
    MEMORY[0x24C1AF180](v9, -1, -1);

    v2 = 0x8000000247952550;
  }

  else
  {
  }

  for (i = v0[22]; ; i = v0[15])
  {
    v22 = v0[21] + 1;
    if (v22 == v0[20])
    {
      break;
    }

    v0[21] = v22;
    v0[22] = i;
    v23 = v0[19];
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x24C1AE890](v22);
    }

    else
    {
      v24 = *(v23 + 8 * v22 + 32);
    }

    v0[23] = v24;
    sub_247917728(v24 + 16, (v0 + 2));
    v25 = v0[5];
    v26 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v25);
    v27 = (*(v26 + 24))(v25, v26);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (v27)
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v45, qword_27EE58DF8);

      v33 = sub_24794ED14();
      v34 = sub_24794F154();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v0[18] = v36;
        *v35 = 136315138;
        if (*(v24 + 184) > 1u)
        {
          if (*(v24 + 184) == 2)
          {
            v37 = 0xD000000000000011;
            v2 = 0x8000000247952580;
          }

          else
          {
            v37 = 0xD000000000000013;
            v2 = 0x80000002479525A0;
          }
        }

        else if (*(v24 + 184))
        {
          v37 = 0x72506E6F74747562;
          v2 = 0xEE00435346737365;
        }

        else
        {
          v37 = 0xD000000000000015;
        }

        v38 = sub_247924380(v37, v2, v0 + 18);

        *(v35 + 4) = v38;
        _os_log_impl(&dword_2478E1000, v33, v34, "#DataAnalyticsController: Manager %s sampling cycle ended at start of processing", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x24C1AF180](v36, -1, -1);
        MEMORY[0x24C1AF180](v35, -1, -1);
      }

      sub_247917728(v24 + 96, (v0 + 7));
      v39 = v0[10];
      v40 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v39);
      v41 = *(v40 + 8);
      v42 = *(v41 + 8);
      v46 = (v42 + *v42);
      v43 = v42[1];
      v44 = swift_task_alloc();
      v0[24] = v44;
      *v44 = v0;
      v44[1] = sub_247926284;

      return v46(v39, v41);
    }

    MEMORY[0x24C1AE560](v28);
    if (*((v0[15] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[15] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v29 = v2;
      v30 = *((v0[15] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24794F084();
      v2 = v29;
    }

    sub_24794F0A4();
  }

  v31 = v0[1];

  return v31(i);
}

unint64_t sub_2479270EC(uint64_t a1)
{
  v2 = sub_24794EBB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v101 = &v88 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v88 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v88 - v14;
  MEMORY[0x28223BE20](v13);
  v103 = &v88 - v16;
  v108 = sub_24794E510(MEMORY[0x277D84F90]);
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v91 = v7;
  v17 = sub_24794ED34();
  v104 = __swift_project_value_buffer(v17, qword_27EE58DF8);
  v18 = sub_24794ED14();
  v19 = sub_24794F154();
  v20 = os_log_type_enabled(v18, v19);
  v100 = v15;
  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2478E1000, v18, v19, "#DatataAnalyticsController: groupRowsByDate", v21, 2u);
    v22 = v21;
    v15 = v100;
    MEMORY[0x24C1AF180](v22, -1, -1);
  }

  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = (a1 + 32);
    v98 = (v3 + 16);
    v102 = (v3 + 8);
    v26 = 0x8000000247952D50;
    *&v23 = 136315650;
    v89 = v23;
    *&v23 = 136315138;
    v88 = v23;
    v92 = xmmword_247951560;
    v90 = v2;
    v99 = v12;
    v96 = 0x8000000247952D50;
    do
    {
      v27 = *v25;
      v105[0] = 0xD000000000000017;
      v105[1] = v26;

      sub_24794F2E4();
      if (*(v27 + 16) && (v28 = sub_24792BEB4(v106), (v29 & 1) != 0))
      {
        sub_2478F65EC(*(v27 + 56) + 32 * v28, v107);
        sub_2478F6598(v106);
        if (swift_dynamicCast())
        {
          v30 = v103;
          sub_24794EB64();
          type metadata accessor for Utils();
          sub_247940B60(v30, v15);
          v31 = *v98;
          (*v98)(v12, v15, v2);
          v32 = v101;
          v97 = v31;
          v31(v101, v30, v2);

          v33 = sub_24794ED14();
          v34 = sub_24794F154();

          if (os_log_type_enabled(v33, v34))
          {
            v95 = v33;
            v35 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v105[0] = v93;
            *v35 = v89;
            *&v107[0] = 0x5F74736575716572;
            *(&v107[0] + 1) = 0xEA00000000006469;
            sub_24794F2E4();
            v36 = *(v27 + 16);
            v94 = v34;
            if (v36 && (v37 = sub_24792BEB4(v106), (v38 & 1) != 0))
            {
              sub_2478F65EC(*(v27 + 56) + 32 * v37, v107);
              sub_2478F6598(v106);
            }

            else
            {
              sub_2478F6598(v106);
              memset(v107, 0, sizeof(v107));
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57348, &unk_2479521B0);
            v40 = sub_24794EF14();
            v42 = sub_247924380(v40, v41, v105);

            *(v35 + 4) = v42;
            *(v35 + 12) = 2080;
            sub_247927CAC(&qword_27EE57288, MEMORY[0x277CC9578]);
            v2 = v90;
            v43 = sub_24794F4D4();
            v44 = v12;
            v46 = v45;
            v47 = *v102;
            (*v102)(v44, v2);
            v48 = sub_247924380(v43, v46, v105);

            *(v35 + 14) = v48;
            *(v35 + 22) = 2080;
            v49 = v101;
            v50 = sub_24794F4D4();
            v52 = v51;
            v53 = v49;
            v39 = v47;
            v47(v53, v2);
            v54 = sub_247924380(v50, v52, v105);

            *(v35 + 24) = v54;
            v55 = v95;
            _os_log_impl(&dword_2478E1000, v95, v94, "#DatataAnalyticsController: record row: %s, start of date: %s and eventDate: %s", v35, 0x20u);
            v56 = v93;
            swift_arrayDestroy();
            MEMORY[0x24C1AF180](v56, -1, -1);
            MEMORY[0x24C1AF180](v35, -1, -1);
          }

          else
          {

            v39 = *v102;
            (*v102)(v32, v2);
            v39(v12, v2);
          }

          v57 = sub_24794ED14();
          v58 = sub_24794F154();

          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v106[0] = v95;
            *v59 = v88;
            v60 = sub_24794EE94();
            v62 = v2;
            v63 = v39;
            v64 = sub_247924380(v60, v61, v106);

            *(v59 + 4) = v64;
            v39 = v63;
            v2 = v62;
            _os_log_impl(&dword_2478E1000, v57, v58, "#DatataAnalyticsController: groupRowsByDate current row %s", v59, 0xCu);
            v65 = v95;
            __swift_destroy_boxed_opaque_existential_0(v95);
            MEMORY[0x24C1AF180](v65, -1, -1);
            MEMORY[0x24C1AF180](v59, -1, -1);
          }

          v12 = v99;
          v15 = v100;
          v66 = v108;
          if (*(v108 + 16) && (sub_24792BFBC(v100), (v67 & 1) != 0))
          {
            v68 = v91;
            v97(v91, v15, v2);
            v70 = sub_24791F198(v106);
            v71 = *v69;
            if (*v69)
            {
              v72 = v69;
              v73 = *v69;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v72 = v71;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v71 = sub_24793ACB4(0, v71[2] + 1, 1, v71);
                *v72 = v71;
              }

              v76 = v71[2];
              v75 = v71[3];
              if (v76 >= v75 >> 1)
              {
                v71 = sub_24793ACB4((v75 > 1), v76 + 1, 1, v71);
                *v72 = v71;
              }

              v26 = v96;
              v71[2] = v76 + 1;
              v71[v76 + 4] = v27;
              (v70)(v106, 0);
              v39(v91, v2);
              v15 = v100;
              v39(v100, v2);
              v39(v103, v2);
              v12 = v99;
            }

            else
            {

              (v70)(v106, 0);
              v39(v68, v2);
              v39(v15, v2);
              v39(v103, v2);
              v12 = v99;
              v26 = v96;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57520, &unk_247951730);
            v77 = swift_allocObject();
            *(v77 + 16) = v92;
            *(v77 + 32) = v27;
            v78 = swift_isUniquelyReferenced_nonNull_native();
            v106[0] = v66;
            sub_24794B954(v77, v15, v78);
            v108 = v106[0];
            v39(v15, v2);
            v39(v103, v2);
            v26 = v96;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_2478F6598(v106);
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  v79 = sub_24794ED14();
  v80 = sub_24794F154();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v106[0] = v82;
    *v81 = 136315138;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574B8, &qword_247951548);
    sub_247927CAC(&qword_27EE574B0, MEMORY[0x277CC9578]);
    v83 = sub_24794EE94();
    v85 = v84;

    v86 = sub_247924380(v83, v85, v106);

    *(v81 + 4) = v86;
    _os_log_impl(&dword_2478E1000, v79, v80, "#DatataAnalyticsController: groupRowsByDate results %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x24C1AF180](v82, -1, -1);
    MEMORY[0x24C1AF180](v81, -1, -1);
  }

  swift_beginAccess();
  return v108;
}

uint64_t sub_247927C48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataAnalyticsProcessResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247927CAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s23CoreSpeechDataAnalytics0cD5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v19 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v10 = sub_24794F4E4();
      sub_24792831C(v6, v5, 0);
      sub_24792831C(v3, v2, 0);
      sub_24791778C(v3, v2, 0);
      v11 = v6;
      v12 = v5;
      v13 = 0;
      goto LABEL_24;
    }

    sub_24792831C(v19, v2, 0);
    sub_24792831C(v3, v2, 0);
    sub_24791778C(v3, v2, 0);
    v18 = v3;
    v21 = v2;
    v22 = 0;
LABEL_190:
    sub_24791778C(v18, v21, v22);
    return 1;
  }

  if (v4 != 1)
  {
    v16 = *a1;
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v6 != 1 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v14 = 1;
        sub_24791778C(1, 0, 2u);
        return v14;
      case 2:
        if (v7 != 2 || v6 != 2 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 2;
        goto LABEL_189;
      case 3:
        if (v7 != 2 || v6 != 3 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 3;
        goto LABEL_189;
      case 4:
        if (v7 != 2 || v6 != 4 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 4;
        goto LABEL_189;
      case 5:
        if (v7 != 2 || v6 != 5 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 5;
        goto LABEL_189;
      case 6:
        if (v7 != 2 || v6 != 6 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 6;
        goto LABEL_189;
      case 7:
        if (v7 != 2 || v6 != 7 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 7;
        goto LABEL_189;
      case 8:
        if (v7 != 2 || v6 != 8 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 8;
        goto LABEL_189;
      case 9:
        if (v7 != 2 || v6 != 9 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 9;
        goto LABEL_189;
      case 10:
        if (v7 != 2 || v6 != 10 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 10;
        goto LABEL_189;
      case 11:
        if (v7 != 2 || v6 != 11 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 11;
        goto LABEL_189;
      case 12:
        if (v7 != 2 || v6 != 12 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 12;
        goto LABEL_189;
      case 13:
        if (v7 != 2 || v6 != 13 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 13;
        goto LABEL_189;
      case 14:
        if (v7 != 2 || v6 != 14 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 14;
        goto LABEL_189;
      case 15:
        if (v7 != 2 || v6 != 15 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 15;
        goto LABEL_189;
      case 16:
        if (v7 != 2 || v6 != 16 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 16;
        goto LABEL_189;
      case 17:
        if (v7 != 2 || v6 != 17 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 17;
        goto LABEL_189;
      case 18:
        if (v7 != 2 || v6 != 18 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 18;
        goto LABEL_189;
      default:
        if (v7 != 2 || (v5 | v6) != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v18 = 0;
LABEL_189:
        v21 = 0;
        v22 = 2;
        break;
    }

    goto LABEL_190;
  }

  if (v7 != 1)
  {
LABEL_10:
    sub_24792831C(*a2, *(a2 + 8), v7);
    sub_24792831C(v3, v2, v4);
    sub_24791778C(v3, v2, v4);
    sub_24791778C(v6, v5, v7);
    return 0;
  }

  if (v3 == v6 && v2 == v5)
  {
    v14 = 1;
    sub_24792831C(*a1, v2, 1u);
    sub_24792831C(v3, v2, 1u);
    sub_24791778C(v3, v2, 1u);
    sub_24791778C(v3, v2, 1u);
    return v14;
  }

  v9 = *a1;
  v10 = sub_24794F4E4();
  sub_24792831C(v6, v5, 1u);
  sub_24792831C(v3, v2, 1u);
  sub_24791778C(v3, v2, 1u);
  v11 = v6;
  v12 = v5;
  v13 = 1;
LABEL_24:
  sub_24791778C(v11, v12, v13);
  return v10 & 1;
}

uint64_t get_enum_tag_for_layout_string_23CoreSpeechDataAnalytics0cD5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_247928268(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2479282B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2479282F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24792831C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_247928334()
{
  v0 = sub_24794ED34();
  __swift_allocate_value_buffer(v0, qword_27EE58DF8);
  __swift_project_value_buffer(v0, qword_27EE58DF8);
  return sub_24794ED24();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_247928418()
{
  result = type metadata accessor for DataAnalyticsProcessResult();
  v2 = *(v0 + *(result + 20));
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = (v2 + 33);
  while (v4 < *(v2 + 16))
  {
    v6 = *(v5 - 1);
    if (*v5 > 1u || *v5)
    {
      v7 = sub_24794F4E4();

      if (v7 & v6)
      {
        return 1;
      }
    }

    else
    {

      if (v6)
      {
        return 1;
      }
    }

    ++v4;
    v5 += 32;
    if (v3 == v4)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

CoreSpeechDataAnalytics::DataAnalyticsProcessFinishStatus __swiftcall DataAnalyticsProcessResult.getFinishedStatus()()
{
  v2 = v0;
  v3 = type metadata accessor for DataAnalyticsProcessResult();
  v4 = *(v1 + *(v3 + 20));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    v7 = v5 + 1;
    v8 = v6;
    do
    {
      if (!--v7)
      {
        break;
      }

      v9 = *v8;
      v8 += 32;
    }

    while ((v9 & 1) != 0);
    v10 = v5 + 1;
    while (--v10)
    {
      v11 = *v6;
      v6 += 32;
      if (v11 == 1)
      {
        v12 = v7 != 0;
        goto LABEL_11;
      }
    }

    v12 = 2 * (v7 != 0);
  }

  else
  {
    v12 = 3;
  }

LABEL_11:
  *v2 = v12;
  return v3;
}

uint64_t type metadata accessor for DataAnalyticsProcessResult()
{
  result = qword_27EE57548;
  if (!qword_27EE57548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247928640()
{
  result = type metadata accessor for DataAnalyticsProcessResult();
  v2 = *(v0 + *(result + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    v22 = MEMORY[0x277D84F90];
    sub_247904798(0, v3, 0);
    v4 = v22;
    v5 = (v2 + 48);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v22 + 16);
      v8 = *(v22 + 24);
      v10 = v9 + 1;

      if (v9 >= v8 >> 1)
      {
        result = sub_247904798((v8 > 1), v9 + 1, 1);
      }

      v5 += 4;
      *(v22 + 16) = v10;
      v11 = v22 + 16 * v9;
      *(v11 + 32) = v7;
      *(v11 + 40) = v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
  }

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
LABEL_9:
  v14 = 16 * v12 + 40;
  while (1)
  {
    if (v10 == v12)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57560, &unk_2479519C0);
      sub_247928C30();
      v21 = sub_24794EEC4();

      return v21;
    }

    if (v12 >= *(v4 + 16))
    {
      break;
    }

    ++v12;
    v15 = v14 + 16;
    v16 = *(v4 + v14);
    v14 += 16;
    if (v16)
    {
      v17 = *(v4 + v15 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24793A9D0(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_24793A9D0((v18 > 1), v19 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_247928838(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(type metadata accessor for DataAnalyticsProcessResult() + 20);
  v8 = *(v1 + v7);
  v9 = *(v8 + 2);
  if (v9 >= 0x14)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v14 = sub_24794ED34();
    __swift_project_value_buffer(v14, qword_27EE58DF8);
    oslog = sub_24794ED14();
    v15 = sub_24794F164();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 16777472;
      v16[4] = 20;
      _os_log_impl(&dword_2478E1000, oslog, v15, "#DataAnalyticsProcessResult: Max number of collection manager process result reached (%hhu)", v16, 5u);
      MEMORY[0x24C1AF180](v16, -1, -1);
    }
  }

  else
  {

    v10 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_24793B124(0, v9 + 1, 1, v8);
    }

    v12 = *(v8 + 2);
    v11 = *(v8 + 3);
    if (v12 >= v11 >> 1)
    {
      v8 = sub_24793B124((v11 > 1), v12 + 1, 1, v8);
    }

    *(v8 + 2) = v12 + 1;
    v13 = &v8[32 * v12];
    v13[32] = v2;
    v13[33] = v3;
    *(v13 + 5) = v5;
    *(v13 + 6) = v4;
    *(v13 + 7) = v6;
    *(v1 + v7) = v8;
  }
}

CoreSpeechDataAnalytics::DataAnalyticsProcessFinishStatus_optional __swiftcall DataAnalyticsProcessFinishStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DataAnalyticsProcessResult.getCollectionManagerProcessResults()()
{
  v1 = *(v0 + *(type metadata accessor for DataAnalyticsProcessResult() + 20));
}

unint64_t sub_247928A78()
{
  result = qword_27EE57540;
  if (!qword_27EE57540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57540);
  }

  return result;
}

void sub_247928B04()
{
  sub_247928B88();
  if (v0 <= 0x3F)
  {
    sub_247928BE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_247928B88()
{
  if (!qword_27EE57320)
  {
    sub_24794EBB4();
    v0 = sub_24794F234();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE57320);
    }
  }
}

void sub_247928BE0()
{
  if (!qword_27EE57558)
  {
    v0 = sub_24794F0B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE57558);
    }
  }
}

unint64_t sub_247928C30()
{
  result = qword_27EE57568;
  if (!qword_27EE57568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE57560, &unk_2479519C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57568);
  }

  return result;
}

id DeterministicUserSelector.__allocating_init(locale:deviceID:siriSharedUserId:anchorDate:samplingPercentage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v10 = v9;
  v43 = *&a8;
  v44 = a6;
  v45 = a7;
  v46 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v42 - v18;
  v20 = sub_24794EBB4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v10;
  v25 = objc_allocWithZone(v10);
  v26 = &v25[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale];
  v42 = a1;
  *v26 = a1;
  v26[1] = a2;
  v27 = &v25[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID];
  *v27 = a3;
  *(v27 + 1) = a4;
  v28 = &v25[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId];
  v29 = v44;
  v30 = v45;
  *v28 = a5;
  *(v28 + 1) = v29;
  sub_2478EE3C8(v30, v19);
  v31 = *(v21 + 48);
  if (v31(v19, 1, v20) == 1)
  {
    v32 = qword_27EE571D0;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v20, qword_27EE57578);
    (*(v21 + 16))(v24, v33, v20);
    if (v31(v19, 1, v20) != 1)
    {
      sub_2478E9620(v19, &qword_27EE572D0, &unk_2479504E0);
    }
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
  }

  (*(v21 + 32))(&v25[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_anchorDate], v24, v20);
  if (v46)
  {
    if (qword_27EE571C8 != -1)
    {
      swift_once();
    }

    v34 = off_27EE57570;
    if (*(off_27EE57570 + 2))
    {
      v35 = sub_24792BEF8(v42, a2);
      v37 = v36;

      v38 = 1.0;
      if (v37)
      {
        v38 = *(v34[7] + 8 * v35);
      }
    }

    else
    {

      v38 = 1.0;
    }
  }

  else
  {

    v38 = v43;
  }

  v39 = fmin(v38, 1.0);
  if (v39 < 0.0)
  {
    v39 = 0.0;
  }

  *&v25[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_samplingPercentage] = v39;
  v48.receiver = v25;
  v48.super_class = v47;
  v40 = objc_msgSendSuper2(&v48, sel_init);
  sub_2478E9620(v30, &qword_27EE572D0, &unk_2479504E0);
  return v40;
}

uint64_t sub_24792901C()
{
  v0 = sub_24794E208(&unk_285984F70);
  result = sub_2478E9620(&unk_285984F90, &qword_27EE57620, &qword_247951A60);
  off_27EE57570 = v0;
  return result;
}

uint64_t sub_24792906C()
{
  v0 = sub_24794EBB4();
  __swift_allocate_value_buffer(v0, qword_27EE57578);
  v1 = __swift_project_value_buffer(v0, qword_27EE57578);
  return sub_2479290B8(v1);
}

uint64_t sub_2479290B8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE575F8, &qword_247951A48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57628, &qword_247951A68);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = sub_24794E974();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24794ECC4();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = sub_24794ED04();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_24794E964();
  sub_24794E934();
  sub_24794E954();
  sub_24794E924();
  if (qword_27EE571D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v19, qword_27EE57590);
  sub_24794EC74();
  v21 = sub_24794EBB4();
  v22 = *(v21 - 8);
  result = (*(v22 + 48))(v5, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 8))(v18, v14);
    return (*(v22 + 32))(a1, v5, v21);
  }

  return result;
}

uint64_t sub_247929474()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE575F8, &qword_247951A48);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_24794EC34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24794ECC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v12, qword_27EE57590);
  v15 = __swift_project_value_buffer(v9, qword_27EE57590);
  (*(v5 + 104))(v8, *MEMORY[0x277CC9830], v4);
  sub_24794EC44();
  (*(v5 + 8))(v8, v4);
  sub_24794ECD4();
  v16 = sub_24794ED04();
  result = (*(*(v16 - 8) + 48))(v3, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24794ECA4();
    return (*(v10 + 32))(v15, v14, v9);
  }

  return result;
}

uint64_t DeterministicUserSelector.locale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale);
  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale + 8);

  return v1;
}

uint64_t DeterministicUserSelector.deviceID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID);
  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID + 8);

  return v1;
}

uint64_t DeterministicUserSelector.siriSharedUserId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId);
  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId + 8);

  return v1;
}

uint64_t DeterministicUserSelector.anchorDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_anchorDate;
  v4 = sub_24794EBB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id DeterministicUserSelector.init(locale:deviceID:siriSharedUserId:anchorDate:samplingPercentage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v42 = *&a8;
  v43 = a6;
  v44 = a7;
  v45 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v40 - v17;
  v19 = sub_24794EBB4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v9[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale];
  v41 = a1;
  *v24 = a1;
  v24[1] = a2;
  v25 = &v9[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID];
  *v25 = a3;
  *(v25 + 1) = a4;
  v26 = &v9[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId];
  *v26 = a5;
  v27 = v44;
  *(v26 + 1) = v43;
  sub_2478EE3C8(v27, v18);
  v28 = *(v20 + 48);
  if (v28(v18, 1, v19) == 1)
  {
    v29 = qword_27EE571D0;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v19, qword_27EE57578);
    (*(v20 + 16))(v23, v30, v19);
    if (v28(v18, 1, v19) != 1)
    {
      sub_2478E9620(v18, &qword_27EE572D0, &unk_2479504E0);
    }
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
  }

  (*(v20 + 32))(&v9[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_anchorDate], v23, v19);
  if (v45)
  {
    if (qword_27EE571C8 != -1)
    {
      swift_once();
    }

    v31 = off_27EE57570;
    if (*(off_27EE57570 + 2))
    {
      v32 = sub_24792BEF8(v41, a2);
      v34 = v33;

      v35 = 1.0;
      if (v34)
      {
        v35 = *(v31[7] + 8 * v32);
      }
    }

    else
    {

      v35 = 1.0;
    }
  }

  else
  {

    v35 = v42;
  }

  v36 = fmin(v35, 1.0);
  if (v36 < 0.0)
  {
    v36 = 0.0;
  }

  *&v9[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_samplingPercentage] = v36;
  v37 = type metadata accessor for DeterministicUserSelector();
  v46.receiver = v9;
  v46.super_class = v37;
  v38 = objc_msgSendSuper2(&v46, sel_init);
  sub_2478E9620(v27, &qword_27EE572D0, &unk_2479504E0);
  return v38;
}

id sub_247929B98(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_24794EBB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  if (a3)
  {
    v20 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_samplingPercentage);
  }

  else
  {
    v20 = *&a2;
  }

  v21 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale);
  v22 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale + 8);
  v23 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID + 8);
  v41 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID);
  v42 = v21;
  v24 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId + 8);
  v40 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId);
  sub_2478EE3C8(a1, v17);
  v25 = *(v8 + 48);
  if (v25(v17, 1, v7) == 1)
  {
    (*(v8 + 16))(v19, v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_anchorDate, v7);
    v26 = v25(v17, 1, v7);

    if (v26 != 1)
    {
      sub_2478E9620(v17, &qword_27EE572D0, &unk_2479504E0);
    }
  }

  else
  {
    (*(v8 + 32))(v19, v17, v7);
  }

  (*(v8 + 56))(v19, 0, 1, v7);
  v27 = type metadata accessor for DeterministicUserSelector();
  v28 = objc_allocWithZone(v27);
  v29 = &v28[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale];
  v30 = v41;
  *v29 = v42;
  *(v29 + 1) = v22;
  v31 = &v28[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID];
  *v31 = v30;
  *(v31 + 1) = v23;
  v32 = &v28[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId];
  *v32 = v40;
  *(v32 + 1) = v24;
  v33 = v43;
  sub_2478EE3C8(v19, v43);
  if (v25(v33, 1, v7) == 1)
  {
    v34 = v44;
    if (qword_27EE571D0 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v7, qword_27EE57578);
    (*(v8 + 16))(v34, v35, v7);
    if (v25(v33, 1, v7) != 1)
    {
      sub_2478E9620(v33, &qword_27EE572D0, &unk_2479504E0);
    }
  }

  else
  {
    v34 = v44;
    (*(v8 + 32))(v44, v33, v7);
  }

  (*(v8 + 32))(&v28[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_anchorDate], v34, v7);
  v36 = fmin(v20, 1.0);
  if (v36 < 0.0)
  {
    v36 = 0.0;
  }

  *&v28[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_samplingPercentage] = v36;
  v45.receiver = v28;
  v45.super_class = v27;
  v37 = objc_msgSendSuper2(&v45, sel_init);
  sub_2478E9620(v19, &qword_27EE572D0, &unk_2479504E0);
  return v37;
}

BOOL sub_24792A018(uint64_t a1, uint64_t a2)
{
  v5 = sub_24794E974();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v71 - v12;
  v14 = sub_24794EBB4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v75 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v71 - v19;
  sub_2478EE3C8(a2, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2478E9620(v13, &qword_27EE572D0, &unk_2479504E0);
  }

  else
  {
    v71 = v2;
    v72 = v14;
    v73 = v15;
    v74 = a1;
    (*(v15 + 32))(v20, v13, v14);
    if (qword_27EE571D8 != -1)
    {
      swift_once();
    }

    v35 = sub_24794ECC4();
    __swift_project_value_buffer(v35, qword_27EE57590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574E0, &qword_247951588);
    v36 = sub_24794ECB4();
    v37 = *(v36 - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_247951560;
    (*(v37 + 104))(v40 + v39, *MEMORY[0x277CC9968], v36);
    sub_24792CE2C(v40);
    swift_setDeallocating();
    (*(v37 + 8))(v40 + v39, v36);
    swift_deallocClassInstance();
    a1 = v74;
    sub_24794EC64();

    v41 = sub_24794E914();
    v43 = v42;
    (*(v6 + 8))(v9, v5);
    v44 = v20;
    if (v43)
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v45 = sub_24794ED34();
      __swift_project_value_buffer(v45, qword_27EE58DF8);
      v46 = sub_24794ED14();
      v47 = sub_24794F164();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v73;
      if (v48)
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_2478E1000, v46, v47, "#DeterministicUserSelector: Failed to calculate days between collection start date and current date. Not sampling user.", v50, 2u);
        MEMORY[0x24C1AF180](v50, -1, -1);
      }

      (*(v49 + 8))(v20, v72);
      return 0;
    }

    v51 = v41 <= 30;
    v2 = v71;
    if (!v51)
    {
      v52 = v73;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v53 = sub_24794ED34();
      __swift_project_value_buffer(v53, qword_27EE58DF8);
      v54 = v75;
      v55 = v72;
      (*(v52 + 16))(v75, a1, v72);
      v56 = sub_24794ED14();
      v57 = sub_24794F144();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v76 = v59;
        *v58 = 136315394;
        sub_24792DC94(&qword_27EE57288, MEMORY[0x277CC9578]);
        v60 = sub_24794F4D4();
        v62 = v61;
        v63 = *(v52 + 8);
        v63(v54, v55);
        v64 = sub_247924380(v60, v62, &v76);

        *(v58 + 4) = v64;
        *(v58 + 12) = 2048;
        *(v58 + 14) = 30;
        _os_log_impl(&dword_2478E1000, v56, v57, "#DeterministicUserSelector: Current date (%s) is beyond the collection window duration (%ld days). Not sampling user.", v58, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x24C1AF180](v59, -1, -1);
        MEMORY[0x24C1AF180](v58, -1, -1);

        v63(v44, v55);
      }

      else
      {

        v69 = *(v52 + 8);
        v69(v54, v55);
        v69(v44, v55);
      }

      return 0;
    }

    (*(v73 + 8))(v20, v72);
  }

  v21 = _s23CoreSpeechDataAnalytics25DeterministicUserSelectorC09calculateF4Slot8deviceID010siriSharedF2Id6localeSo8NSNumberCSgSS_SSSgSStFZ_0(*(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID), *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID + 8), *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId), *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId + 8), *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale), *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale + 8));
  if (!v21)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v65 = sub_24794ED34();
    __swift_project_value_buffer(v65, qword_27EE58DF8);
    v66 = sub_24794ED14();
    v67 = sub_24794F164();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2478E1000, v66, v67, "#DeterministicUserSelector: Failed to calculate user slot. Not sampling user.", v68, 2u);
      MEMORY[0x24C1AF180](v68, -1, -1);
    }

    return 0;
  }

  v22 = v21;
  v23 = [v21 integerValue];

  v24 = sub_24792B37C(a1);
  if (v24 < 0)
  {
    v25 = -1;
  }

  else
  {
    v25 = v24 % 25;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v26 = sub_24794ED34();
  __swift_project_value_buffer(v26, qword_27EE58DF8);
  v27 = sub_24794ED14();
  v28 = sub_24794F144();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    *(v29 + 4) = v23;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v25;
    _os_log_impl(&dword_2478E1000, v27, v28, "#DeterministicUserSelector: userSlot: %ld, currentSlot: %ld", v29, 0x16u);
    MEMORY[0x24C1AF180](v29, -1, -1);
  }

  if (v23 != v25)
  {
    return 0;
  }

  v30 = sub_24794ED14();
  v31 = sub_24794F144();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2478E1000, v30, v31, "#DeterminisitcUserSelector: User is eligible to sample", v32, 2u);
    MEMORY[0x24C1AF180](v32, -1, -1);
  }

  v33 = sub_24792B37C(a1);
  return sub_24792B5F4(v33);
}

id sub_24792A954()
{
  v1 = _s23CoreSpeechDataAnalytics25DeterministicUserSelectorC09calculateF4Slot8deviceID010siriSharedF2Id6localeSo8NSNumberCSgSS_SSSgSStFZ_0(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID + 8), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId + 8), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale + 8));
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

uint64_t sub_24792A9DC(uint64_t a1)
{
  v1 = sub_24792B37C(a1);
  if (v1 < 0)
  {
    return -1;
  }

  else
  {
    return v1 % 25;
  }
}

uint64_t static DeterministicUserSelector.calculateAnchorDate(targetSlot:currentDate:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24794ECB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  if (a1 > 0x18)
  {
    v17 = sub_24794EBB4();
    v18 = *(*(v17 - 8) + 56);

    return v18(a2, 1, 1, v17);
  }

  else
  {
    if (qword_27EE571D8 != -1)
    {
      swift_once();
    }

    v13 = sub_24794ECC4();
    __swift_project_value_buffer(v13, qword_27EE57590);
    (*(v5 + 104))(v8, *MEMORY[0x277CC9968], v4);
    sub_24794EC84();
    (*(v5 + 8))(v8, v4);
    v14 = sub_24794EBB4();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {
      sub_2478E9620(v12, &qword_27EE572D0, &unk_2479504E0);
      return (*(v15 + 56))(a2, 1, 1, v14);
    }

    else
    {
      (*(v15 + 32))(a2, v12, v14);
      return (*(v15 + 56))(a2, 0, 1, v14);
    }
  }
}

uint64_t static DeterministicUserSelector.calculateAnchorDate(targetSlot:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24794ECB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = sub_24794EBB4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24794EBA4();
  if (a1 >= 0x19)
  {
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    if (qword_27EE571D8 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ECC4();
    __swift_project_value_buffer(v18, qword_27EE57590);
    (*(v5 + 104))(v8, *MEMORY[0x277CC9968], v4);
    sub_24794EC84();
    (*(v5 + 8))(v8, v4);
    (*(v14 + 8))(v17, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(a2, v12, v13);
      v19 = 0;
      return (*(v14 + 56))(a2, v19, 1, v13);
    }

    sub_2478E9620(v12, &qword_27EE572D0, &unk_2479504E0);
  }

  v19 = 1;
  return (*(v14 + 56))(a2, v19, 1, v13);
}

unint64_t sub_24792B37C(uint64_t a1)
{
  v16[1] = a1;
  v1 = sub_24794E974();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE571D8 != -1)
  {
    swift_once();
  }

  v6 = sub_24794ECC4();
  __swift_project_value_buffer(v6, qword_27EE57590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574E0, &qword_247951588);
  v7 = sub_24794ECB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_247951560;
  (*(v8 + 104))(v11 + v10, *MEMORY[0x277CC9968], v7);
  sub_24792CE2C(v11);
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);
  swift_deallocClassInstance();
  sub_24794EC64();

  v12 = sub_24794E914();
  LOBYTE(v10) = v13;
  (*(v2 + 8))(v5, v1);
  v14 = 0;
  if ((v10 & 1) == 0 && (v14 = v12, v12 < 0))
  {
    return -1;
  }

  else
  {
    return v14 / 0x1E;
  }
}

BOOL sub_24792B5F4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID);
  sub_24792D14C(v3, *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID + 8), *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId), *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId + 8), *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale), *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale + 8));
  v5 = sub_24792D294(v3, v4, 1);
  v7 = v6;

  if (v7)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v8 = sub_24794ED34();
    __swift_project_value_buffer(v8, qword_27EE58DF8);
    v9 = sub_24794ED14();
    v10 = sub_24794F164();
    if (!os_log_type_enabled(v9, v10))
    {
      v12 = 0;
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2478E1000, v9, v10, "#DeterministicUserSelector: Failed to calculate hash segment for sampling decision", v11, 2u);
    v12 = 0;
    goto LABEL_10;
  }

  v13 = vcvtd_n_f64_u64(v5, 0x40uLL);
  v14 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_samplingPercentage);
  v12 = v13 < v14;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v15 = sub_24794ED34();
  __swift_project_value_buffer(v15, qword_27EE58DF8);
  v9 = sub_24794ED14();
  v16 = sub_24794F154();
  if (os_log_type_enabled(v9, v16))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = a1;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v13 < v14;
    _os_log_impl(&dword_2478E1000, v9, v16, "#DeterministicUserSelector: Sampling decision for window %ld: %{BOOL}d", v11, 0x12u);
LABEL_10:
    MEMORY[0x24C1AF180](v11, -1, -1);
  }

LABEL_12:

  return v12;
}

uint64_t sub_24792B820(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57610, &qword_247951A50);
  if (swift_dynamicCast())
  {
    sub_2478E2F88(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_24794E9B4();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2478E9620(__src, &qword_27EE57618, &qword_247951A58);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_24794F394();
  }

  sub_24792C850(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_24792D1F4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_24792C918(sub_24792DD40);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_24794EAC4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_247943F60(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_24794EFB4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_24794EFE4();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_24794F394();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_247943F60(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_24794EFC4();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_24794EAD4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_24794EAD4();
    sub_24792DDA8(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_24792DDA8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_24792DC40(*&__src[0], *(&__src[0] + 1));

  sub_24791EFD8(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

id DeterministicUserSelector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeterministicUserSelector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeterministicUserSelector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24792BEB4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24794F2C4();

  return sub_24792C2FC(a1, v5);
}

unint64_t sub_24792BEF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24794F584();
  sub_24794EF74();
  v6 = sub_24794F5B4();

  return sub_24792C3C4(a1, a2, v6);
}

uint64_t type metadata accessor for DeterministicUserSelector()
{
  result = qword_27EE575C0;
  if (!qword_27EE575C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24792BFBC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24794EBB4();
  v5 = MEMORY[0x277CC9578];
  sub_24792DC94(&qword_27EE574B0, MEMORY[0x277CC9578]);
  v6 = sub_24794EEB4();
  return sub_24792C6B0(a1, v6, MEMORY[0x277CC9578], &qword_27EE575D0, v5, MEMORY[0x277CC9598]);
}

unint64_t sub_24792C090(int a1)
{
  v3 = *(v1 + 40);
  sub_24794F584();
  sub_24794F5A4();
  v4 = sub_24794F5B4();

  return sub_24792C47C(a1, v4);
}

unint64_t sub_24792C0FC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_24794F584();
  MEMORY[0x24C1AEAB0](a1);
  v4 = sub_24794F5B4();

  return sub_24792C4E8(a1, v4);
}

unint64_t sub_24792C168(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24794F584();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  sub_24794EF74();

  v6 = *(a1 + 32);
  sub_24794F5A4();
  v7 = *(a1 + 40);
  sub_24794F224();

  v8 = *(a1 + 80);
  *(a1 + 84);
  sub_24794F5A4();
  v9 = sub_24794F5B4();

  return sub_24792C558(a1, v9);
}

unint64_t sub_24792C228(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24794EC04();
  v5 = MEMORY[0x277CC95F0];
  sub_24792DC94(&qword_27EE57528, MEMORY[0x277CC95F0]);
  v6 = sub_24794EEB4();
  return sub_24792C6B0(a1, v6, MEMORY[0x277CC95F0], &qword_27EE575D8, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_24792C2FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24792DB98(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1AE7F0](v9, a1);
      sub_2478F6598(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24792C3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24794F4E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24792C47C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24792C4E8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24792C558(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      v10 = *(v9 + 16) == *(a1 + 16) && *(v9 + 24) == *(a1 + 24);
      if (v10 || (sub_24794F4E4()) && *(v9 + 32) == *(a1 + 32))
      {
        sub_24792DBF4();
        v11 = *(v9 + 40);
        v12 = *(a1 + 40);

        v13 = v11;
        v14 = v12;
        v15 = sub_24794F214();

        if (v15)
        {
          v16 = *(v9 + 80);
          v17 = *(v9 + 84);

          v18 = *(a1 + 84);
          if (v17)
          {
            if (*(a1 + 84))
            {
              return v5;
            }
          }

          else
          {
            if (v16 != *(a1 + 80))
            {
              v18 = 1;
            }

            if ((v18 & 1) == 0)
            {
              return v5;
            }
          }
        }

        else
        {
        }
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24792C6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_24792DC94(v24, v25);
      v20 = sub_24794EEE4();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_24792C850@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2479366F8(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_24794E904();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_24794E8B4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_24794EAB4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_24792C918(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_24791EFD8(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_24791EFD8(v6, v5);
    *v3 = xmmword_2479519D0;
    sub_24791EFD8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_24794E8C4() && __OFSUB__(v6, sub_24794E8F4()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_24794E904();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_24794E8A4();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_24792CD28(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_24791EFD8(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_2479519D0;
    sub_24791EFD8(0, 0xC000000000000000);
    sub_24794EA94();
    result = sub_24792CD28(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24792CCBC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_24792CD28(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_24794E8C4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_24794E8F4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_24794E8E4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_24792CDDC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_24794F354();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24792CE2C(uint64_t a1)
{
  v2 = sub_24794ECB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE575E0, &qword_247951A40);
    v10 = sub_24794F314();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_24792DC94(&qword_27EE575E8, MEMORY[0x277CC99D0]);
      v18 = sub_24794EEB4();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_24792DC94(&qword_27EE575F0, MEMORY[0x277CC99D0]);
          v25 = sub_24794EEE4();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_24792D14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {

    MEMORY[0x24C1AE4C0](95, 0xE100000000000000);
    MEMORY[0x24C1AE4C0](a3, a4);
  }

  else
  {
  }

  MEMORY[0x24C1AE4C0](95, 0xE100000000000000);
  MEMORY[0x24C1AE4C0](a5, a6);
}

uint64_t sub_24792D1F4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_247936010(result);
    }

    else
    {
      v2 = sub_24794E904();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_24794E8D4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_24794EAB4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_24792D294(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v50 = a3;
  v5 = sub_24794EE64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24794EE34();
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_24792B820(a1, a2);
  v16 = v15;
  sub_24792DC94(&qword_27EE57600, MEMORY[0x277CC5540]);
  sub_24794EE24();
  sub_24792DC40(v14, v16);
  sub_247935D50(v14, v16);
  v48 = v14;
  v49 = v16;
  sub_24791EFD8(v14, v16);
  v17 = v50;
  sub_24794EE14();
  (*(v6 + 8))(v9, v5);
  v18 = v51;
  v56 = v10;
  v57 = sub_24792DC94(&qword_27EE57608, MEMORY[0x277CC5290]);
  v19 = __swift_allocate_boxed_opaque_existential_1(&v54);
  (*(v18 + 16))(v19, v13, v10);
  __swift_project_boxed_opaque_existential_1(&v54, v56);
  sub_24794E9B4();
  v21 = v52;
  v20 = v53;
  __swift_destroy_boxed_opaque_existential_0(&v54);
  if ((v17 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_36;
  }

  v22 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    if (!v22)
    {
      v23 = BYTE6(v20);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v22 != 2)
  {
    v23 = 0;
    goto LABEL_12;
  }

  v25 = *(v21 + 16);
  v24 = *(v21 + 24);
  v23 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      __break(1u);
      goto LABEL_39;
    }

    v23 = HIDWORD(v21) - v21;
  }

LABEL_12:
  if (__OFADD__(8 * v17, 8))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v23 < 8 * v17 + 8)
  {
    if (qword_27EE571C0 == -1)
    {
LABEL_15:
      v26 = sub_24794ED34();
      __swift_project_value_buffer(v26, qword_27EE58DF8);
      v27 = sub_24794ED14();
      v28 = sub_24794F164();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = v17;
        v31 = v29;
        *v29 = 134217984;
        *(v29 + 4) = v30;
        _os_log_impl(&dword_2478E1000, v27, v28, "#DeterministicUserSelector: Requested hash segment %ld is out of bounds for SHA256 digest.", v29, 0xCu);
        MEMORY[0x24C1AF180](v31, -1, -1);

        sub_24791EFD8(v48, v49);
        sub_24791EFD8(v21, v20);
      }

      else
      {
        sub_24791EFD8(v21, v20);
        sub_24791EFD8(v48, v49);
      }

      v37 = 0;
      goto LABEL_34;
    }

LABEL_37:
    swift_once();
    goto LABEL_15;
  }

  v50 = 8 * v17 + 8;
  v32 = v10;
  v33 = v13;
  sub_24792DC40(v21, v20);
  sub_24791AD04(8 * v17, v21, v20, &v52);
  sub_24792E2E4(8, v52, v53, &v54);
  v34 = v54;
  v35 = v55;
  v36 = v55 >> 62;
  if ((v55 >> 62) > 1)
  {
    if (v36 != 2)
    {
      sub_24791EFD8(v54, v55);
      sub_24791EFD8(v48, v49);
      sub_24791EFD8(v21, v20);
      v37 = 0;
      goto LABEL_33;
    }

    v38 = *(v54 + 16);
    v39 = sub_24794E8C4();
    if (!v39)
    {
      goto LABEL_42;
    }

    v40 = v39;
    v41 = sub_24794E8F4();
    if (__OFSUB__(v38, v41))
    {
      goto LABEL_40;
    }

    v42 = (v38 - v41 + v40);
    sub_24794E8E4();
    if (v42)
    {
LABEL_31:
      v47 = *v42;
      sub_24791EFD8(v34, v35);
      sub_24791EFD8(v48, v49);
      sub_24791EFD8(v21, v20);
      v37 = bswap64(v47);
      v18 = v51;
      goto LABEL_33;
    }

    __break(1u);
  }

  else if (!v36)
  {
    sub_24791EFD8(v54, v55);
    sub_24791EFD8(v48, v49);
    sub_24791EFD8(v21, v20);
    v37 = bswap64(v34);
LABEL_33:
    v13 = v33;
    v10 = v32;
LABEL_34:
    (*(v18 + 8))(v13, v10);
    return v37;
  }

  if (v34 > v34 >> 32)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    sub_24794E8E4();
    __break(1u);
    goto LABEL_43;
  }

  v43 = sub_24794E8C4();
  if (!v43)
  {
LABEL_43:
    result = sub_24794E8E4();
    goto LABEL_44;
  }

  v44 = v43;
  v45 = sub_24794E8F4();
  if (__OFSUB__(v34, v45))
  {
    goto LABEL_41;
  }

  v42 = (v34 - v45 + v44);
  result = sub_24794E8E4();
  if (v42)
  {
    goto LABEL_31;
  }

LABEL_44:
  __break(1u);
  return result;
}

id _s23CoreSpeechDataAnalytics25DeterministicUserSelectorC09calculateF4Slot8deviceID010siriSharedF2Id6localeSo8NSNumberCSgSS_SSSgSStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24792D14C(a1, a2, a3, a4, a5, a6);
  v7 = sub_24792D294(a1, v6, 0);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v10 = sub_24794ED34();
  __swift_project_value_buffer(v10, qword_27EE58DF8);
  v11 = sub_24794ED14();
  v12 = sub_24794F164();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2478E1000, v11, v12, "#DeterministicUserSelector: Failed to calculate hash segment for user slot assignment", v13, 2u);
    MEMORY[0x24C1AF180](v13, -1, -1);
  }

  return 0;
}

uint64_t sub_24792D9B8()
{
  result = sub_24794EBB4();
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

unint64_t sub_24792DBF4()
{
  result = qword_27EE57408;
  if (!qword_27EE57408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE57408);
  }

  return result;
}

uint64_t sub_24792DC40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24792DC94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_24792DD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_24792CCBC(sub_24792DDBC, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_24792DDA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24791EFD8(a1, a2);
  }

  return a1;
}

uint64_t sub_24792DDDC()
{
  v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_voiceProfileId;
  v2 = sub_24794EC04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EnrollmentMetadata()
{
  result = qword_27EE57630;
  if (!qword_27EE57630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24792DEE0()
{
  result = sub_24794EC04();
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

uint64_t sub_24792DF78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v27 - v4;
  v6 = sub_24794EC04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v27 - v12;
  if (*(a1 + 16))
  {
    v14 = sub_24792BEF8(0x6F72506563696F76, 0xEE006449656C6966);
    if (v15)
    {
      sub_2478F65EC(*(a1 + 56) + 32 * v14, v28);
      if (swift_dynamicCast())
      {
        sub_24794EBC4();

        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {
          sub_2478FB164(v5);
        }

        else
        {
          v16 = *(v7 + 32);
          v16(v13, v5, v6);
          if (*(a1 + 16))
          {
            v17 = sub_24792BEF8(0x656C61636F6CLL, 0xE600000000000000);
            if (v18)
            {
              sub_2478F65EC(*(a1 + 56) + 32 * v17, v28);
              if (swift_dynamicCast())
              {
                v19 = v27[0];
                v20 = v27[1];
                v16(v11, v13, v6);
                v21 = type metadata accessor for EnrollmentMetadata();
                v22 = *(v21 + 48);
                v23 = *(v21 + 52);
                v24 = swift_allocObject();
                v16((v24 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_voiceProfileId), v11, v6);
                result = v24;
                v26 = (v24 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale);
                *v26 = v19;
                v26[1] = v20;
                return result;
              }
            }
          }

          (*(v7 + 8))(v13, v6);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_24792E250(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(sub_24794EC04() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_24792E2E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_24792FCA8(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_24792FC44(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_24794EAE4();
    v15 = v14;
    result = sub_24791EFD8(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_24792E42C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  *(v3 + 96) = xmmword_247951AA0;
  v8 = [a1 tdtiEnrollmentUtterances];
  if (v8)
  {
    v9 = v8;
    sub_2478E9538(0, &qword_27EE572E0, 0x277D65398);
    v10 = sub_24794F064();

    if (!(v10 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

LABEL_8:

      if (qword_27EE571C0 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }
  }

  if (!sub_24794F414())
  {
    goto LABEL_8;
  }

LABEL_4:
  v11 = [v7 locale];
  if (v11)
  {
    v12 = v11;
    v13 = sub_24794EF04();
    v15 = v14;
  }

  else
  {
    v15 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
  }

  v27 = [v7 profileID];
  if (!v27)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = v27;
  v29 = sub_24794EF04();
  v31 = v30;

  v32 = sub_24792FD5C(v10, v13, v15, a2, a3, v29, v31);

  if (!v32)
  {

    goto LABEL_23;
  }

  v4[3] = v15;
  v4[4] = v7;
  v4[2] = v13;
  v4[10] = a2;
  v4[11] = a3;
  v33 = v4[12];
  v34 = v4[13];
  *(v4 + 6) = xmmword_247951AA0;
  v7 = v7;
  sub_24792DDA8(v33, v34);
  v4[5] = v32;
  v35 = v10 & 0xC000000000000001;
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v36 = *(v10 + 32);
      goto LABEL_18;
    }

    __break(1u);
LABEL_33:
    swift_once();
LABEL_9:
    v16 = sub_24794ED34();
    __swift_project_value_buffer(v16, qword_27EE58DF8);
    v17 = v7;
    v18 = sub_24794ED14();
    v19 = sub_24794F164();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v48 = v21;
      *v20 = 136315138;
      v22 = [v17 profileID];

      if (!v22)
      {
LABEL_36:
        __break(1u);
        return;
      }

      v23 = sub_24794EF04();
      v25 = v24;

      v26 = sub_247924380(v23, v25, &v48);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_2478E1000, v18, v19, "#EnrollmentProfileData: enrollment Utterances from voice profile: %s is nil or empty", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1AF180](v21, -1, -1);
      MEMORY[0x24C1AF180](v20, -1, -1);
    }

    else
    {
    }

LABEL_23:
    sub_24792DDA8(v4[12], v4[13]);
    type metadata accessor for EnrollmentProfileData();
    swift_deallocPartialClassInstance();
    return;
  }

  v36 = MEMORY[0x24C1AE890](0, v10);
LABEL_18:
  v37 = v36;
  v38 = [v36 productVersion];

  if (!v38)
  {
    v4[8] = 0;
    v4[9] = 0;
    if (v35)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  v39 = sub_24794EF04();
  v41 = v40;

  v4[8] = v39;
  v4[9] = v41;
  if (!v35)
  {
LABEL_25:
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v42 = *(v10 + 32);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_20:
  v42 = MEMORY[0x24C1AE890](0, v10);
LABEL_27:
  v43 = v42;

  v44 = [v43 productType];

  if (v44)
  {
    v45 = sub_24794EF04();
    v47 = v46;
  }

  else
  {

    v45 = 0;
    v47 = 0;
  }

  v4[6] = v45;
  v4[7] = v47;
}

void sub_24792E89C()
{
  if (*(v0 + 104) >> 60 == 15)
  {
    v16 = v0;
    v2 = *(v0 + 40);
    if (v2 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24794F414())
    {
      v4 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1AE890](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_15;
        }

LABEL_12:
        if (*(v5 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes + 8) >> 60 == 15)
        {
          sub_247934B70();
          if (v1)
          {

            return;
          }
        }

        ++v4;
        if (v6 == i)
        {
          goto LABEL_18;
        }
      }

      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * v4 + 32);

      v6 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
    if (v2 >> 62)
    {
      v7 = sub_24794F414();
      if (v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_20:
        if (v7 < 1)
        {
          __break(1u);
          return;
        }

        v8 = 0;
        v17 = 0xF000000000000000;
        v18 = 0;
        v19 = -1;
        do
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x24C1AE890](v8, v2);
          }

          else
          {
            v9 = *(v2 + 8 * v8 + 32);
          }

          v10 = (v9 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes);
          v11 = *(v9 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes + 8);
          if (v11 >> 60 == 15)
          {
          }

          else
          {
            v12 = *v10;
            sub_24793044C(*v10, *(v9 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes + 8));
            v13 = sub_247930210(v12, v11);

            if (v13 >= v19)
            {
              sub_24792DDA8(v12, v11);
            }

            else
            {
              sub_24792DDA8(v18, v17);
              v19 = v13;
              v17 = v11;
              v18 = v12;
            }
          }

          ++v8;
        }

        while (v7 != v8);
        goto LABEL_33;
      }
    }

    v17 = 0xF000000000000000;
    v18 = 0;
LABEL_33:
    v14 = *(v16 + 96);
    v15 = *(v16 + 104);
    *(v16 + 96) = v18;
    *(v16 + 104) = v17;
    sub_24792DDA8(v14, v15);
  }
}

uint64_t sub_24792EB10()
{
  v1 = *(v0[2] + 40);
  v0[3] = v1;
  if (v1 >> 62)
  {
    result = sub_24794F414();
    v0[4] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v6 = v0[2];
    sub_24792E89C();
    v7 = v0[1];

    return v7();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[4] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = v0[3];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1AE890](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v0[5] = v4;
  v0[6] = 1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_24792EC70;

  return sub_2479337A4();
}

uint64_t sub_24792EC70()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_24792EED0;
  }

  else
  {
    v3 = sub_24792ED84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24792ED84()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];

  if (v2 == v3)
  {
    v5 = v0[8];
    v6 = v0[2];
    sub_24792E89C();
    v7 = v0[1];

    return v7();
  }

  v8 = v0[6];
  v9 = v0[3];
  if ((v9 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x24C1AE890](v0[6]);
    v10 = result;
  }

  else
  {
    if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v10 = *(v9 + 8 * v8 + 32);
  }

  v0[5] = v10;
  v0[6] = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_24792EC70;

  return sub_2479337A4();
}

uint64_t sub_24792EED0()
{
  v1 = v0[5];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

id sub_24792EF34()
{
  v5 = v0[5];
  v6 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_76;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1AE890](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_81;
      }

      v8 = *(v5 + 32);
    }

    v9 = [*(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance) productType];
    if (v9)
    {
      v1 = v9;
      v3 = sub_24794EF04();
      v2 = v10;

      v11 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v6)
      {
        goto LABEL_9;
      }

LABEL_13:
      if (!*(v11 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }
  }

  v3 = 0;
  v2 = 0;
  v11 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!sub_24794F414())
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x24C1AE890](0, v5);
    goto LABEL_17;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v5 + 32);

LABEL_17:
    v13 = [*(v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance) productVersion];
    if (v13)
    {
      v14 = v13;
      sub_24794EF04();
      v51 = v15;

LABEL_21:
      v50 = v3;
      v52 = v2;
      v53 = v6;
      v54 = MEMORY[0x277D84F90];
      v3 = v0;
      v2 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v6)
      {
        v4 = sub_24794F414();
      }

      else
      {
        v4 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = 0;
      v6 = v5 & 0xC000000000000001;
      v1 = MEMORY[0x277D84F90];
      while (v4 != v16)
      {
        if (v6)
        {
          v0 = MEMORY[0x24C1AE890](v16, v5);
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v16 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

          v0 = *(v5 + 8 * v16 + 32);

          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            v7 = sub_24794F414();
            goto LABEL_3;
          }
        }

        v18 = sub_247934FA4();

        ++v16;
        if (v18)
        {
          MEMORY[0x24C1AE560](v19);
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v20 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_24794F084();
          }

          v0 = &v54;
          sub_24794F0A4();
          v1 = v54;
          v16 = v17;
        }
      }

      v4 = v1 >> 62;
      if (v1 >> 62)
      {
        v21 = sub_24794F414();
      }

      else
      {
        v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v22 = v3;
      v3 = v53;
      if (v53)
      {
        if (v21 != sub_24794F414())
        {
LABEL_40:

          if (qword_27EE571C0 != -1)
          {
            goto LABEL_82;
          }

          goto LABEL_41;
        }
      }

      else if (v21 != *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      if (v4)
      {
        v29 = v51;
        v28 = v52;
        if (sub_24794F414())
        {
          goto LABEL_47;
        }
      }

      else
      {
        v29 = v51;
        v28 = v52;
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_47:
          v30 = v22[13];
          if (v30 >> 60 != 15)
          {
            v37 = v22[12];
            v38 = v22[2];
            v39 = v22[3];
            v40 = objc_allocWithZone(MEMORY[0x277D58900]);
            sub_24792DC40(v37, v30);
            sub_24792DC40(v37, v30);
            result = [v40 init];
            if (result)
            {
              v42 = result;
              v43 = result;
              v44 = _sSo17SISchemaISOLocaleC23CoreSpeechDataAnalyticsE10fromStringyABSgSSFZ_0(v38, v39);
              [v43 setSiriInputLocale_];

              if (v28)
              {
                v45 = sub_24794EEF4();
              }

              else
              {
                v45 = 0;
              }

              [v43 setDeviceType_];

              if (v29)
              {
                v47 = sub_24794EEF4();
              }

              else
              {
                v47 = 0;
              }

              [v43 setProductVersion_];

              sub_24792DC40(v37, v30);
              v48 = sub_24794EAF4();
              sub_24792DDA8(v37, v30);
              [v43 setEnrollmentDataDedupeHashBytes_];

              sub_2478E9538(0, &qword_27EE57640, 0x277D58908);
              v49 = sub_24794F054();

              [v43 setEnrollmentUtterances_];

              sub_24792DDA8(v37, v30);
              sub_24792DDA8(v37, v30);
              return v42;
            }

            else
            {
              __break(1u);
            }

            return result;
          }

          if (qword_27EE571C0 != -1)
          {
            swift_once();
          }

          v31 = sub_24794ED34();
          __swift_project_value_buffer(v31, qword_27EE58DF8);
          v32 = sub_24794ED14();
          v33 = sub_24794F164();
          if (!os_log_type_enabled(v32, v33))
          {
LABEL_59:

            return 0;
          }

          v34 = swift_slowAlloc();
          *v34 = 0;
          v35 = "#EnrollmentProfileData: enrollment dedupe hash bytes is nil";
LABEL_58:
          _os_log_impl(&dword_2478E1000, v32, v33, v35, v34, 2u);
          MEMORY[0x24C1AF180](v34, -1, -1);
          goto LABEL_59;
        }
      }

      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v36 = sub_24794ED34();
      __swift_project_value_buffer(v36, qword_27EE58DF8);
      v32 = sub_24794ED14();
      v33 = sub_24794F164();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_59;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "#EnrollmentProfileData: enrollmentUtterances schema are empty";
      goto LABEL_58;
    }

LABEL_20:
    v51 = 0;
    goto LABEL_21;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  swift_once();
LABEL_41:
  v23 = sub_24794ED34();
  __swift_project_value_buffer(v23, qword_27EE58DF8);

  v24 = sub_24794ED14();
  v25 = sub_24794F164();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    if (v3)
    {
      v27 = sub_24794F414();
    }

    else
    {
      v27 = *(v2 + 16);
    }

    *(v26 + 4) = v27;

    *(v26 + 12) = 2048;
    if (v4)
    {
      v46 = sub_24794F414();
    }

    else
    {
      v46 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 14) = v46;

    _os_log_impl(&dword_2478E1000, v24, v25, "#EnrollmentProfileData: Failed to generate schema for some utterances. Expected %ld, got %ld", v26, 0x16u);
    MEMORY[0x24C1AF180](v26, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return 0;
}

uint64_t sub_24792F6E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_24792DDA8(*(v0 + 96), *(v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_24792F768(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_24794EAD4();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_24792F8A0(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24792F8A0(uint64_t a1, uint64_t a2)
{
  result = sub_24794E8C4();
  if (!result || (result = sub_24794E8F4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_24794E8E4();
      return sub_24794EAD4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_24792F934(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_24791EFD8(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_2479519D0;
      sub_24791EFD8(0, 0xC000000000000000);
      result = sub_24792FB9C(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_24791EFD8(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *result;

  sub_24791EFD8(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_2479519D0;
  sub_24791EFD8(0, 0xC000000000000000);
  sub_24794EA94();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_24794E8C4();
  if (result)
  {
    v13 = result;
    v14 = sub_24794E8F4();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_24794E8E4();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24792FB9C(int *a1, int a2)
{
  result = sub_24794EAA4();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_24794E8C4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_24794E8F4();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_24794E8E4();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_24792FC44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_24792FCA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_24792FD5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v44 = a6;
  v9 = a1;
  v50 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_28:
    v10 = sub_24794F414();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = 0;
    v7 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    v14 = off_278EB5000;
    v46 = v9;
    do
    {
      if (v7)
      {
        v15 = MEMORY[0x24C1AE890](v12, v9);
      }

      else
      {
        if (v12 >= *(v13 + 16))
        {
          goto LABEL_27;
        }

        v15 = *(v9 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if ([v15 v14[489]])
      {
        sub_24794F3A4();
        v18 = v7;
        v19 = v10;
        v20 = a3;
        v21 = v14;
        v22 = *(v50 + 16);
        sub_24794F3D4();
        v14 = v21;
        a3 = v20;
        v10 = v19;
        v7 = v18;
        sub_24794F3E4();
        sub_24794F3B4();
        v9 = v46;
      }

      else
      {
      }

      ++v12;
    }

    while (v17 != v10);
    v23 = v50;
    v11 = MEMORY[0x277D84F90];
    if ((v50 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  v23 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v23 & 0x4000000000000000) != 0)
  {
LABEL_29:
    v24 = sub_24794F414();
    if (!v24)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_30:

    v7 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

LABEL_19:
  v50 = v11;
  sub_24794F3C4();
  if (v24 < 0)
  {
    __break(1u);
LABEL_45:
    swift_once();
    goto LABEL_34;
  }

  v25 = 0;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x24C1AE890](v25, v23);
    }

    else
    {
      v26 = *(v23 + 8 * v25 + 32);
    }

    v27 = v26;
    ++v25;
    v28 = type metadata accessor for EnrollmentUtteranceData();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    v31 = swift_allocObject();
    v32 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_donationId;
    v33 = sub_24794EC04();
    (*(*(v33 - 8) + 56))(v31 + v32, 1, 1, v33);
    *(v31 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes) = xmmword_247951AA0;
    v34 = (v31 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_locale);
    *v34 = a2;
    v34[1] = a3;
    *(v31 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance) = v27;
    v35 = (v31 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_samplingUtils);
    *v35 = a4;
    v35[1] = a5;

    sub_24794F3A4();
    v36 = *(v50 + 16);
    sub_24794F3D4();
    sub_24794F3E4();
    sub_24794F3B4();
  }

  while (v24 != v25);

  v7 = v50;
LABEL_31:
  v11 = v7 >> 62;
  if (v7 >> 62)
  {
    if (sub_24794F414() == 5)
    {
      return v7;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) == 5)
  {
    return v7;
  }

  if (qword_27EE571C0 != -1)
  {
    goto LABEL_45;
  }

LABEL_34:
  v37 = sub_24794ED34();
  __swift_project_value_buffer(v37, qword_27EE58DF8);

  v38 = sub_24794ED14();
  v39 = sub_24794F164();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v50 = v41;
    *v40 = 134218242;
    if (v11)
    {
      v42 = sub_24794F414();
    }

    else
    {
      v42 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v40 + 4) = v42;

    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_247924380(v44, a7, &v50);
    _os_log_impl(&dword_2478E1000, v38, v39, "#EnrollmentProfileData: Expected 5 enrollment utterances, but got %ld for voice profile: %s", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x24C1AF180](v41, -1, -1);
    MEMORY[0x24C1AF180](v40, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return 0;
}

uint64_t sub_247930210(uint64_t a1, unint64_t a2)
{
  sub_24792DC40(a1, a2);
  sub_24792E2E4(8, a1, a2, v35);
  v4 = v35[0];
  v5 = v35[1];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v7 = 0;
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v7) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = v7;
LABEL_10:
  v10 = __OFSUB__(8, v7);
  v11 = 8 - v7;
  if (v10)
  {
    __break(1u);
    goto LABEL_26;
  }

  v31 = sub_24792D1F4(v11 & ~(v11 >> 63));
  v32 = v12;
  sub_24792F934(&v31, 0);
  v13 = v31;
  v14 = v32;
  v36 = v4;
  v37 = v5;
  v33 = MEMORY[0x277CC9318];
  v34 = MEMORY[0x277CC9300];
  v15 = __swift_project_boxed_opaque_existential_1(&v31, MEMORY[0x277CC9318]);
  v16 = *v15;
  v17 = v15[1];
  sub_24792DC40(v4, v5);
  sub_24792DC40(v13, v14);
  sub_24792F768(v16, v17);
  sub_24791EFD8(v13, v14);
  sub_24791EFD8(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(&v31);
  v19 = v36;
  v18 = v37;
  v20 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v20 != 2)
    {
      sub_24791EFD8(v36, v37);
      return 0;
    }

    v22 = *(v36 + 16);
    v23 = sub_24794E8C4();
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = v23;
    v25 = sub_24794E8F4();
    if (!__OFSUB__(v22, v25))
    {
      v26 = (v22 - v25 + v24);
      sub_24794E8E4();
      if (v26)
      {
LABEL_23:
        v30 = *v26;
        sub_24791EFD8(v19, v18);
        return bswap64(v30);
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (!v20)
  {
    sub_24791EFD8(v36, v37);
    return bswap64(v19);
  }

  if (v36 > v36 >> 32)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_24794E8E4();
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = sub_24794E8C4();
  if (v27)
  {
    v28 = v27;
    v29 = sub_24794E8F4();
    if (!__OFSUB__(v19, v29))
    {
      v26 = (v19 - v29 + v28);
      result = sub_24794E8E4();
      if (v26)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_32:
  result = sub_24794E8E4();
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_24793044C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24792DC40(a1, a2);
  }

  return a1;
}

uint64_t sub_247930480()
{
  v1 = v0[2];
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  type metadata accessor for EnrollmentProfileData();
  swift_allocObject();
  sub_24792E42C(v3, v2, v4);
  v0[3] = v5;
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_247930644;

    return sub_24792EAF0();
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v8 = sub_24794ED34();
    __swift_project_value_buffer(v8, qword_27EE58DF8);
    v9 = sub_24794ED14();
    v10 = sub_24794F164();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2478E1000, v9, v10, "#EnrollmentProfileDataGenerator: cannot generate enrollmentProfile data", v11, 2u);
      MEMORY[0x24C1AF180](v11, -1, -1);
    }

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_247930644()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24793077C, 0, 0);
  }

  else
  {
    v4 = v3[3];
    v5 = v3[1];

    return v5(v4);
  }
}

uint64_t sub_24793077C()
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_24794ED34();
  __swift_project_value_buffer(v2, qword_27EE58DF8);
  v3 = v1;
  v4 = sub_24794ED14();
  v5 = sub_24794F164();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  v8 = v0[3];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2478E1000, v4, v5, "#EnrollmentProfileDataGenerator: Failed to prepare enrollment profile for upload: %@", v9, 0xCu);
    sub_2478EFF2C(v10);
    MEMORY[0x24C1AF180](v10, -1, -1);
    MEMORY[0x24C1AF180](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_247930928()
{

  return swift_deallocClassInstance();
}

uint64_t sub_247930984()
{
  v1[2] = v0;
  v2 = sub_24794EBB4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247930A44, 0, 0);
}

uint64_t sub_247930A44()
{
  v1 = [*(*(v0[2] + 16) + 16) getVoiceProfile];
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 dateAdded];
    if (v3)
    {
      v4 = v0[5];
      v5 = v3;
      sub_24794EB94();

      v6 = [v2 locale];
      if (v6)
      {
        v7 = v6;
        v8 = sub_24794EF04();
        v10 = v9;

        v0[7] = v8;
        v0[8] = v10;
        v11 = swift_task_alloc();
        v0[9] = v11;
        *v11 = v0;
        v11[1] = sub_247930D3C;
        v12 = v0[5];
        v13 = v0[2];

        return sub_247931E1C(v2, v12, v8, v10);
      }

      (*(v0[4] + 8))(v0[5], v0[3]);
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ED34();
    __swift_project_value_buffer(v18, qword_27EE58DF8);
    v19 = sub_24794ED14();
    v20 = sub_24794F164();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2478E1000, v19, v20, "#EnrollmentRecordsGenerator: enrolledDate or locale being nil for voiceProfile", v21, 2u);
      MEMORY[0x24C1AF180](v21, -1, -1);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v15 = sub_24794ED34();
    __swift_project_value_buffer(v15, qword_27EE58DF8);
    v2 = sub_24794ED14();
    v16 = sub_24794F164();
    if (os_log_type_enabled(v2, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2478E1000, v2, v16, "#EnrollmentRecordsGenerator: voiceProfile being nil", v17, 2u);
      MEMORY[0x24C1AF180](v17, -1, -1);
    }
  }

  v22 = v0[5];

  v23 = v0[1];
  v24 = MEMORY[0x277D84F90];

  return v23(v24);
}

uint64_t sub_247930D3C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v6 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return MEMORY[0x2822009F8](sub_247930E3C, 0, 0);
}

void sub_247930E3C()
{
  v30 = v0;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = sub_24794ED34();
  __swift_project_value_buffer(v3, qword_27EE58DF8);

  v4 = v2;
  v5 = sub_24794ED14();
  v6 = sub_24794F144();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315394;
    v11 = sub_24794EC04();
    v12 = MEMORY[0x24C1AE590](v7, v11);
    v14 = sub_247924380(v12, v13, &v29);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = [v8 profileID];

    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = sub_24794EF04();
    v18 = v17;

    v19 = sub_247924380(v16, v18, &v29);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_2478E1000, v5, v6, "#EnrollmentRecordsGenerator: generated donationIds: %s for profile: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v10, -1, -1);
    MEMORY[0x24C1AF180](v9, -1, -1);
  }

  else
  {
    v20 = v0[6];
  }

  v21 = v0[5];
  v22 = v0[6];
  v23 = v0[3];
  v24 = v0[4];
  v25 = v0[2];
  v26 = sub_2479310DC(v0[10], v0[11], v0[7], v0[8]);

  (*(v24 + 8))(v21, v23);
  v27 = v0[5];

  v28 = v0[1];

  v28(v26);
}

uint64_t sub_2479310DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = a3;
  v108 = a4;
  v110 = sub_24794EC04();
  v6 = *(v110 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v110);
  v111 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57668, &qword_247951BC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v92 - v11;
  v13 = sub_24794EEF4();
  v14 = MGGetStringAnswer();

  if (v14)
  {
    *&v94 = sub_24794EF04();
    *(&v94 + 1) = v15;
  }

  else
  {
    v94 = 0uLL;
  }

  v16 = sub_24794EEF4();
  v17 = MGGetStringAnswer();

  if (v17)
  {
    v18 = sub_24794EF04();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v106 = v92 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics26EnrollmentRecordsGenerator_currentDate;
  v116[54] = a1;
  v116[55] = 0;
  v104 = 0x8000000247952D50;
  v105 = (v6 + 32);
  v116[56] = a2;
  v116[57] = 0;
  v117 = 0;
  v102 = 0x8000000247952F10;
  v103 = 0x8000000247952EF0;
  v100 = 0x8000000247952D70;
  v101 = (v6 + 16);
  v21 = HIBYTE(*(&v94 + 1)) & 0xFLL;
  if ((*(&v94 + 1) & 0x2000000000000000) == 0)
  {
    v21 = v94 & 0xFFFFFFFFFFFFLL;
  }

  v22 = HIBYTE(v20) & 0xF;
  *&v93 = v18;
  *(&v93 + 1) = v20;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (*(&v94 + 1))
  {
    v23 = v21 == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  v99 = v24;
  v95 = (v6 + 8);
  if (v20)
  {
    v25 = v22 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v25;
  v96 = v26;

  v27 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D837D0];
  v98 = xmmword_247951B50;
  v97 = v12;
  v29 = v111;
  while (1)
  {
    sub_247931B7C(v12);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57670, &qword_247951BD0);
    if ((*(*(v30 - 8) + 48))(v12, 1, v30) == 1)
    {

      v69 = v27[2];
      if (!v69)
      {

        return MEMORY[0x277D84F90];
      }

      v70 = *(v92 + 24);
      v116[0] = MEMORY[0x277D84F90];
      sub_24794F3C4();
      v71 = *(v70 + 16);
      for (i = 4; ; ++i)
      {
        v78 = v27[i];
        if (v71 > 1)
        {
          if (v71 == 2)
          {
            v87 = type metadata accessor for MetricsCalcRecord(0);
            v88 = *(v87 + 48);
            v89 = *(v87 + 52);
            swift_allocObject();

            sub_247900C7C(v90);
            goto LABEL_58;
          }
        }

        else if (v71)
        {
          v79 = type metadata accessor for ButtonPressRequestRecord(0);
          v80 = *(v79 + 48);
          v81 = *(v79 + 52);
          *(swift_allocObject() + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = 0;

          v83 = sub_2478F0B18(v82);
          v84 = v83;
          if (*(v83 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8))
          {
            v85 = *(v83 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
            if (v85)
            {
              v111 = *(v83 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);

              v86 = v85;
              SISchemaISOLocale.toString()();

              LOBYTE(v86) = sub_247944340();

              *(v84 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = v86;
            }
          }

          goto LABEL_58;
        }

        v73 = type metadata accessor for SiriRequestRecord(0);
        v74 = *(v73 + 48);
        v75 = *(v73 + 52);
        swift_allocObject();

        sub_2478F0B18(v76);
LABEL_58:
        sub_24794F3A4();
        v77 = *(v116[0] + 16);
        sub_24794F3D4();
        sub_24794F3E4();
        sub_24794F3B4();
        if (!--v69)
        {

          return v116[0];
        }
      }
    }

    v109 = v27;
    v31 = &v12[*(v30 + 48)];
    v32 = *v31;
    v33 = *(v31 + 1);
    v34 = v110;
    (*v105)(v29, v12, v110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57678, &qword_247951BD8);
    inited = swift_initStackObject();
    *(inited + 16) = v98;
    v116[0] = 0xD000000000000017;
    v116[1] = v104;
    sub_24794F2E4();
    sub_24794EB74();
    *(inited + 96) = MEMORY[0x277D839F8];
    *(inited + 72) = v36;
    v116[0] = 0xD000000000000014;
    v116[1] = v103;
    sub_24794F2E4();
    *(inited + 168) = MEMORY[0x277D839B0];
    *(inited + 144) = 1;
    v116[0] = 0xD000000000000016;
    v116[1] = v102;
    sub_24794F2E4();
    *(inited + 240) = v34;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
    (*v101)(boxed_opaque_existential_1, v29, v34);
    strcpy(v116, "trigger_phrase");
    HIBYTE(v116[1]) = -18;
    sub_24794F2E4();
    *(inited + 312) = v28;
    *(inited + 288) = v32;
    *(inited + 296) = v33;
    v116[0] = 0xD000000000000011;
    v116[1] = v100;
    sub_24794F2E4();
    *(inited + 384) = v28;
    v38 = v108;
    *(inited + 360) = v107;
    *(inited + 368) = v38;

    v39 = sub_24794CF98(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57680, &unk_247951BE0);
    swift_arrayDestroy();
    if (v99)
    {
      v12 = v97;
      v27 = v109;
      if ((v96 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_50;
    }

    strcpy(&v114, "device_type");
    HIDWORD(v114) = -352321536;
    sub_24794F2E4();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
    v114 = v94;
    sub_247933794(&v114, v113);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v39;
    v41 = sub_24792BEB4(v116);
    v43 = v39[2];
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      break;
    }

    v47 = v42;
    if (v39[3] >= v46)
    {
      v12 = v97;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v62 = v41;
        sub_24794BD68();
        v41 = v62;
      }
    }

    else
    {
      sub_247949164(v46, isUniquelyReferenced_nonNull_native);
      v41 = sub_24792BEB4(v116);
      v12 = v97;
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_72;
      }
    }

    v27 = v109;
    v39 = v112;
    if (v47)
    {
      v49 = (v112[7] + 32 * v41);
      __swift_destroy_boxed_opaque_existential_0(v49);
      sub_247933794(v113, v49);
    }

    else
    {
      v112[(v41 >> 6) + 8] |= 1 << v41;
      v50 = v41;
      sub_24792DB98(v116, v39[6] + 40 * v41);
      sub_247933794(v113, (v39[7] + 32 * v50));
      v51 = v39[2];
      v45 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v45)
      {
        goto LABEL_70;
      }

      v39[2] = v52;
    }

    sub_2478F6598(v116);
    if ((v96 & 1) == 0)
    {
LABEL_39:
      strcpy(&v114, "system_build");
      BYTE13(v114) = 0;
      HIWORD(v114) = -5120;
      sub_24794F2E4();
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
      v114 = v93;
      sub_247933794(&v114, v113);

      v53 = swift_isUniquelyReferenced_nonNull_native();
      v112 = v39;
      v54 = sub_24792BEB4(v116);
      v56 = v39[2];
      v57 = (v55 & 1) == 0;
      v45 = __OFADD__(v56, v57);
      v58 = v56 + v57;
      if (v45)
      {
        goto LABEL_69;
      }

      v59 = v55;
      if (v39[3] >= v58)
      {
        if (v53)
        {
          goto LABEL_44;
        }

        v63 = v54;
        sub_24794BD68();
        v54 = v63;
        v39 = v112;
        if ((v59 & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_45:
        v61 = (v39[7] + 32 * v54);
        __swift_destroy_boxed_opaque_existential_0(v61);
        sub_247933794(v113, v61);
      }

      else
      {
        sub_247949164(v58, v53);
        v54 = sub_24792BEB4(v116);
        if ((v59 & 1) != (v60 & 1))
        {
          goto LABEL_72;
        }

LABEL_44:
        v39 = v112;
        if (v59)
        {
          goto LABEL_45;
        }

LABEL_47:
        v39[(v54 >> 6) + 8] |= 1 << v54;
        v64 = v54;
        sub_24792DB98(v116, v39[6] + 40 * v54);
        sub_247933794(v113, (v39[7] + 32 * v64));
        v65 = v39[2];
        v45 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v45)
        {
          goto LABEL_71;
        }

        v39[2] = v66;
      }

      sub_2478F6598(v116);
    }

LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_24793ACB4(0, v27[2] + 1, 1, v27);
    }

    v68 = v27[2];
    v67 = v27[3];
    if (v68 >= v67 >> 1)
    {
      v27 = sub_24793ACB4((v67 > 1), v68 + 1, 1, v27);
    }

    (*v95)(v111, v110);
    v27[2] = v68 + 1;
    v27[v68 + 4] = v39;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  result = sub_24794F514();
  __break(1u);
  return result;
}

uint64_t sub_247931B7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24794EC04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) != 1)
  {
    v11 = *(v1 + 8);
    v12 = *(*v1 + 16);
    if (v11 != v12)
    {
      if (v11 >= v12)
      {
        __break(1u);
      }

      else
      {
        v13 = *(v4 + 16);
        v14 = *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11;
        *(v1 + 8) = v11 + 1;
        result = v13(v8, v14, v3);
        v15 = *(v1 + 16);
        v16 = *(v1 + 24);
        v17 = *(v15 + 16);
        if (v16 == v17)
        {
          (*(v4 + 8))(v8, v3);
          goto LABEL_9;
        }

        if (v16 < v17)
        {
          v19 = v15 + 16 * v16;
          v21 = *(v19 + 32);
          v20 = *(v19 + 40);
          *(v1 + 24) = v16 + 1;
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57670, &qword_247951BD0);
          v23 = (a1 + *(v22 + 48));
          (*(v4 + 32))(a1, v8, v3);
          *v23 = v21;
          v23[1] = v20;
          (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
        }
      }

      __break(1u);
      return result;
    }

LABEL_9:
    *(v1 + 32) = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57670, &qword_247951BD0);
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57670, &qword_247951BD0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 1, 1, v9);
}

uint64_t sub_247931E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_24794EC24();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = sub_24794EC04();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v13 = sub_24794EA84();
  v5[16] = v13;
  v14 = *(v13 - 8);
  v5[17] = v14;
  v15 = *(v14 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v16 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_247932018, 0, 0);
}

void sub_247932018()
{
  v88 = v0;
  v87[1] = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 24) tdtiEnrollmentUtterances];
  if (!v1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 24);
    v48 = sub_24794ED34();
    __swift_project_value_buffer(v48, qword_27EE58DF8);
    v49 = v47;
    v50 = sub_24794ED14();
    v51 = sub_24794F164();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 24);
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v87[0] = v55;
      *v54 = 136315138;
      v56 = [v53 profileID];

      if (!v56)
      {
        __break(1u);
        return;
      }

      v57 = sub_24794EF04();
      v59 = v58;

      v60 = sub_247924380(v57, v59, v87);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_2478E1000, v50, v51, "#EnrollmentRecordsGenerator: enrollment Utterances from voice profile: %s is nil", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x24C1AF180](v55, -1, -1);
      MEMORY[0x24C1AF180](v54, -1, -1);
    }

    else
    {
    }

    goto LABEL_45;
  }

  v2 = v1;
  sub_2479336F0();
  v3 = sub_24794F064();
  *(v0 + 160) = v3;

  if (v3 >> 62)
  {
LABEL_43:
    v75 = sub_24794F414();
    *(v0 + 168) = v75;
    if (v75)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 168) = v4;
  if (!v4)
  {
LABEL_44:

LABEL_45:
    v77 = *(v0 + 144);
    v76 = *(v0 + 152);
    v79 = *(v0 + 112);
    v78 = *(v0 + 120);
    v81 = *(v0 + 80);
    v80 = *(v0 + 88);

    v82 = *(v0 + 8);
    v83 = *MEMORY[0x277D85DE8];
    v84 = MEMORY[0x277D84F90];
    v85 = MEMORY[0x277D84F90];

    v82(v84, v85);
    return;
  }

LABEL_4:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = 0x27EE57000;
  while (1)
  {
    *(v0 + 176) = v6;
    *(v0 + 184) = v6;
    v15 = *(v0 + 160);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x24C1AE890](v5);
    }

    else
    {
      if (v5 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v16 = *(v15 + 8 * v5 + 32);
    }

    v14 = v16;
    *(v0 + 192) = v16;
    *(v0 + 200) = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v17 = [v16 enrollmentUtteranceUrl];
    if (!v17)
    {
      if (*(v7 + 448) != -1)
      {
        swift_once();
      }

      v32 = sub_24794ED34();
      __swift_project_value_buffer(v32, qword_27EE58DF8);
      v33 = sub_24794ED14();
      v34 = sub_24794F164();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2478E1000, v33, v34, "#EnrollmentRecordsGenerator: cannot get audioUrl", v35, 2u);
        MEMORY[0x24C1AF180](v35, -1, -1);
      }

      goto LABEL_8;
    }

    v18 = *(v0 + 152);
    v19 = v17;
    sub_24794EA64();

    v20 = objc_allocWithZone(MEMORY[0x277CB8398]);
    v21 = sub_24794EA34();
    *(v0 + 16) = 0;
    v22 = [v20 initForReading:v21 commonFormat:3 interleaved:0 error:v0 + 16];

    v23 = *(v0 + 16);
    if (!v22)
    {
      v36 = v23;
      v37 = sub_24794E9D4();

      swift_willThrow();
      if (*(v7 + 448) != -1)
      {
        swift_once();
      }

      v38 = sub_24794ED34();
      __swift_project_value_buffer(v38, qword_27EE58DF8);
      v39 = v37;
      v40 = sub_24794ED14();
      v41 = sub_24794F164();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v37;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_2478E1000, v40, v41, "#EnrollmentRecordsGenerator: error creating AVAudioFile: %@", v42, 0xCu);
        sub_2478E9620(v43, &qword_27EE57280, &unk_2479503C0);
        v46 = v43;
        v7 = 0x27EE57000;
        MEMORY[0x24C1AF180](v46, -1, -1);
        MEMORY[0x24C1AF180](v42, -1, -1);
      }

      else
      {
      }

      goto LABEL_7;
    }

    v24 = v23;
    v25 = [v22 processingFormat];
    [v25 sampleRate];
    v27 = v26;

    if (v27 == 16000.0)
    {
      break;
    }

    if (*(v7 + 448) != -1)
    {
      swift_once();
    }

    v28 = sub_24794ED34();
    __swift_project_value_buffer(v28, qword_27EE58DF8);
    v29 = v22;
    v30 = sub_24794ED14();
    v31 = sub_24794F164();

    if (os_log_type_enabled(v30, v31))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = [v29 processingFormat];
      [v9 sampleRate];
      v11 = v10;

      *(v8 + 4) = v11;
      _os_log_impl(&dword_2478E1000, v30, v31, "#EnrollmentRecordsGenerator: audio sampling rate: %f is not 16kHz, skipping utterance sampling", v8, 0xCu);
      v12 = v8;
      v7 = 0x27EE57000uLL;
      MEMORY[0x24C1AF180](v12, -1, -1);
      v13 = v14;
      v14 = v30;
    }

    else
    {
      v13 = v29;
      v29 = v30;
    }

LABEL_7:
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
LABEL_8:
    v5 = *(v0 + 200);
    if (v5 == *(v0 + 168))
    {
      v61 = *(v0 + 160);
      goto LABEL_44;
    }
  }

  v62 = *(v0 + 80);
  v64 = *(v0 + 48);
  v63 = *(v0 + 56);
  v65 = *(v0 + 40);

  v67 = *(v63 + 32);
  v66 = *(v63 + 40);

  sub_24794EC14();
  v86 = (*(v66 + 208) + **(v66 + 208));
  v68 = *(*(v66 + 208) + 4);
  v69 = swift_task_alloc();
  *(v0 + 208) = v69;
  *v69 = v0;
  v69[1] = sub_2479328C8;
  v70 = *(v0 + 152);
  v72 = *(v0 + 80);
  v71 = *(v0 + 88);
  v73 = *(v0 + 32);
  v74 = *MEMORY[0x277D85DE8];

  v86(v71, v73, v70, v72, v67, v66);
}