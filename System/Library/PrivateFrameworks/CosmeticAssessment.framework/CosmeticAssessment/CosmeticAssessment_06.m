void sub_247CBBBB0(char a1)
{
  v3 = objc_opt_self();
  v4 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_configuration + 32];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v15 = sub_247CBD990;
  v16 = v5;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_247CDD038;
  v14 = &block_descriptor_22;
  v6 = _Block_copy(&v11);
  v7 = v1;

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v15 = sub_247CBD9EC;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_247C57D8C;
  v14 = &block_descriptor_28;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v3 animateWithDuration:v6 animations:v9 completion:v4];
  _Block_release(v9);
  _Block_release(v6);
}

uint64_t sub_247CBBD54(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_247D1EF48();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_visibilityTimerTask;
  if (*(a2 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_visibilityTimerTask))
  {

    sub_247D1FF28();
  }

  *(a2 + v9) = 0;

  sub_247D1EF18();
  v10 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_timeLastHintHidden;
  swift_beginAccess();
  v11 = *(v6 + 40);
  v11(a2 + v10, v8, v5);
  swift_endAccess();
  v12 = a2 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastVisibleHint;
  v13 = *(a2 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastVisibleHint);
  v14 = *(a2 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastVisibleHint + 8);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  sub_247CBD714(v13, v14);
  if (a3)
  {
    sub_247D1EF18();
    v15 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_timeCaptureInitiated;
    swift_beginAccess();
    v11(a2 + v15, v8, v5);
    swift_endAccess();
  }
}

uint64_t sub_247CBBF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_247D20368();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_247D1FEA8();
  v4[6] = sub_247D1FE98();
  v7 = sub_247D1FE38();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_247CBC070, v7, v6);
}

uint64_t sub_247CBC070()
{
  v1 = sub_247D20688();
  v3 = v2;
  sub_247D205A8();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_247CBC164;

  return sub_247C2DC04(v1, v3, 0, 0, 1);
}

uint64_t sub_247CBC164()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_247CBDF40;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_247CBC2F8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_247CBC2F8()
{

  sub_247CBBBB0(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CBC36C(void *a1, double a2)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 setAlpha_];
}

uint64_t sub_247CBC42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_247D20368();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v6 = sub_247D1EF48();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  sub_247D1FEA8();
  v4[31] = sub_247D1FE98();
  v8 = sub_247D1FE38();
  v4[32] = v8;
  v4[33] = v7;

  return MEMORY[0x2822009F8](sub_247CBC5CC, v8, v7);
}

uint64_t sub_247CBC5CC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 168);
  v5 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastAnnouncementTime;
  *(v0 + 272) = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastAnnouncementTime;
  swift_beginAccess();
  sub_247C2BD10(v4 + v5, v3, &unk_27EE631E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 208);

    sub_247C27100(v6, &unk_27EE631E0);
LABEL_8:
    v15 = *(v0 + 272);
    v16 = *(v0 + 216);
    v17 = *(v0 + 224);
    v18 = *(v0 + 200);
    v19 = *(v0 + 168);
    sub_247D1EF38();
    (*(v17 + 56))(v18, 0, 1, v16);
    swift_beginAccess();
    sub_247C5E4C8(v18, v19 + v15);
    swift_endAccess();
    sub_247C2BD10(v19 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView__accessibilityNotifier, v0 + 16, &unk_27EE63970);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v20 = *MEMORY[0x277D76438];
    v21 = *(v19 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_nextAnnouncementString);
    if (v21)
    {
      v22 = sub_247C3194C(0, &qword_27EE63980);
      v23 = v21;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0;
    }

    *(v0 + 56) = v23;
    *(v0 + 80) = v22;
    sub_247C2BD10(v0 + 56, v0 + 88, &unk_27EE63300);
    v24 = *(v0 + 112);
    if (v24)
    {
      v25 = __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
      v26 = *(v24 - 8);
      v27 = swift_task_alloc();
      (*(v26 + 16))(v27, v25, v24);
      v28 = v21;
      v29 = sub_247D20528();
      (*(v26 + 8))(v27, v24);

      __swift_destroy_boxed_opaque_existential_1(v0 + 88);
    }

    else
    {
      v30 = v21;
      v29 = 0;
    }

    v31 = *(v0 + 168);
    UIAccessibilityPostNotification(v20, v29);
    swift_unknownObjectRelease();
    sub_247C27100(v0 + 56, &unk_27EE63300);
    *(v31 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_accessibilityNotifierTask) = 0;

    v32 = *(v0 + 8);

    return v32();
  }

  v7 = *(v0 + 232);
  v8 = *(v0 + 216);
  v9 = *(v0 + 224);
  v10 = *(v0 + 168);
  (*(v9 + 32))(*(v0 + 240), *(v0 + 208), v8);
  sub_247D1EF18();
  sub_247D1EE88();
  v12 = v11;
  v13 = *(v9 + 8);
  *(v0 + 280) = v13;
  *(v0 + 288) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v7, v8);
  v14 = *(v10 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_configuration + 24);
  *(v0 + 296) = v14;
  if (v12 >= v14)
  {
    v13(*(v0 + 240), *(v0 + 216));

    goto LABEL_8;
  }

  return MEMORY[0x2822009F8](sub_247CBCA04, 0, 0);
}

uint64_t sub_247CBCA04()
{
  v1 = sub_247D20688();
  v3 = v2;
  sub_247D205A8();
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  *v4 = v0;
  v4[1] = sub_247CBCAE0;

  return sub_247C2DC04(v1, v3, 0, 0, 1);
}

uint64_t sub_247CBCAE0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  *(*v1 + 312) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_247CBCF30;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = *(v2 + 256);
    v8 = *(v2 + 264);
    v6 = sub_247CBCC60;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_247CBCC60()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[27];

  v1(v2, v3);
  v4 = v0[34];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[21];
  sub_247D1EF38();
  (*(v6 + 56))(v7, 0, 1, v5);
  swift_beginAccess();
  sub_247C5E4C8(v7, v8 + v4);
  swift_endAccess();
  sub_247C2BD10(v8 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView__accessibilityNotifier, (v0 + 2), &unk_27EE63970);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v9 = *MEMORY[0x277D76438];
  v10 = *(v8 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_nextAnnouncementString);
  if (v10)
  {
    v11 = sub_247C3194C(0, &qword_27EE63980);
    v12 = v10;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v0[8] = 0;
    v0[9] = 0;
  }

  v0[7] = v12;
  v0[10] = v11;
  sub_247C2BD10((v0 + 7), (v0 + 11), &unk_27EE63300);
  v13 = v0[14];
  if (v13)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
    v15 = *(v13 - 8);
    v16 = swift_task_alloc();
    (*(v15 + 16))(v16, v14, v13);
    v17 = v10;
    v18 = sub_247D20528();
    (*(v15 + 8))(v16, v13);

    __swift_destroy_boxed_opaque_existential_1((v0 + 11));
  }

  else
  {
    v19 = v10;
    v18 = 0;
  }

  v20 = v0[21];
  UIAccessibilityPostNotification(v9, v18);
  swift_unknownObjectRelease();
  sub_247C27100((v0 + 7), &unk_27EE63300);
  *(v20 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_accessibilityNotifierTask) = 0;

  v21 = v0[1];

  return v21();
}

uint64_t sub_247CBCF48()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[27];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

void sub_247CBD008(void *a1)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_hintLabel);

    v5 = [a1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    LOBYTE(v5) = sub_247D20128();
    [v4 setTextAlignment_];
  }

  else
  {
  }
}

uint64_t type metadata accessor for UserHintView()
{
  result = qword_27EE63950;
  if (!qword_27EE63950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_247CBD3C8()
{
  sub_247D1F488();
  if (v0 <= 0x3F)
  {
    sub_247CBD508();
    if (v1 <= 0x3F)
    {
      sub_247D1EF48();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_247CBD508()
{
  if (!qword_27EE63960)
  {
    sub_247D1EF48();
    v0 = sub_247D20208();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE63960);
    }
  }
}

uint64_t sub_247CBD560(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247CBD580(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_247CBD5D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_247CBD620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247CBD6D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_247CBD714(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_247CBD75C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C2793C;

  return sub_247CBBF7C(a1, v4, v5, v6);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_247CBD84C()
{
  result = qword_27EE629D0;
  if (!qword_27EE629D0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE629D0);
  }

  return result;
}

uint64_t sub_247CBD8A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C2793C;

  return sub_247CBC42C(a1, v4, v5, v6);
}

uint64_t sub_247CBD958()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247CBD9B4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_247CBD9F8()
{
  MEMORY[0x24C1B9150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247CBDA38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_247D1FB98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1FB88();
  v8 = sub_247C88264(v7);
  v10 = v9;
  sub_247CBDC48(a1);
  (*(v5 + 8))(v7, v4);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_247CBDC48(uint64_t a1)
{
  v2 = _s5StateVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_247CBDCA4()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_visualEffectView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v3;
  v4 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_hintLabel;
  *(v0 + v4) = sub_247CBA414();
  sub_247D1F478();
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_traitChangeRegistration) = 0;
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v5 = qword_27EE72D00;
  v6 = *(qword_27EE72D00 + 16);

  [v6 lock];
  sub_247CAD684(v5, &_s24AccessibilityNotifierKeyON, v11);
  v7 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView__accessibilityNotifier;
  [v6 unlock];
  sub_247C3D044(v11, v0 + v7);

  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_accessibilityNotifierTask) = 0;
  v8 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastAnnouncementTime;
  v9 = sub_247D1EF48();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_nextAnnouncementString) = 0;
  sub_247D1EF18();
  sub_247D1EE78();
  v10 = v0 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastVisibleHint;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_visibilityTimerTask) = 0;
  sub_247D20398();
  __break(1u);
}

uint64_t sub_247CBDF50()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_247D1FBE8();
  }

  sub_247D1FC78();

  has_internal_ui = os_variant_has_internal_ui();

  return has_internal_ui;
}

uint64_t sub_247CBE018()
{
  type metadata accessor for AnalyticsActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27EE63A00 = v0;
  return result;
}

uint64_t sub_247CBE07C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 160);
  v9 = *(a1 + 100);
  v10 = *(a1 + 384);
  v11 = a1[49];
  v12 = a1[50];
  v13 = *(a3 + 8);
  v23 = *a1;
  v24 = v3;
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v14 = *(a1 + 4);
  v29 = *(a1 + 3);
  v30 = v14;
  v15 = *(a1 + 6);
  v31 = *(a1 + 5);
  v32 = v15;
  v16 = *(a1 + 8);
  v33 = *(a1 + 7);
  v34 = v16;
  v35 = *(a1 + 9);
  v36 = v8;
  v37 = *(a1 + 21);
  v38 = *(a1 + 23);
  v39 = v9;
  v17 = *(a1 + 14);
  v40 = *(a1 + 13);
  v41 = v17;
  v18 = *(a1 + 16);
  v42 = *(a1 + 15);
  v43 = v18;
  v19 = *(a1 + 18);
  v44 = *(a1 + 17);
  v45 = v19;
  v20 = *(a1 + 20);
  v46 = *(a1 + 19);
  v47 = v20;
  v21 = *(a1 + 22);
  v48 = *(a1 + 21);
  v49 = v21;
  v50 = *(a1 + 23);
  v51 = v10;
  v52 = v11;
  v53 = v12;
  return v13(&v23);
}

unint64_t sub_247CBE1B0()
{
  result = qword_27EE63A08;
  if (!qword_27EE63A08)
  {
    type metadata accessor for AnalyticsActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63A08);
  }

  return result;
}

uint64_t sub_247CBE208()
{
  if (qword_27EE625A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_247CBE264(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnalyticsActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_247CBE2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  if (qword_27EE625A8 != -1)
  {
    swift_once();
  }

  v6 = qword_27EE63A00;
  v5[9] = qword_27EE63A00;

  return MEMORY[0x2822009F8](sub_247CBE33C, v6, 0);
}

uint64_t sub_247CBE33C()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_247C5F368(v3, (v0 + 2));
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v4 = v0[8];
      v5 = v0[5];
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
      (*(v6 + 8))(v4, v5, v6);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_247CBE450(const void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = sub_247D1FEC8();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);

  sub_247C31784(a1, &v13);
  if (qword_27EE625A8 != -1)
  {
    swift_once();
  }

  v8 = qword_27EE63A00;
  v9 = sub_247CBE1B0();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v9;
  v10[4] = v6;
  memcpy(v10 + 5, a1, 0x198uLL);

  sub_247CD082C(0, 0, v5, &unk_247D26568, v10);
}

uint64_t sub_247CBE5DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_247D1EF78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v6 = qword_27EE72D00;
  v7 = *(qword_27EE72D00 + 16);
  swift_retain_n();
  [v7 lock];
  v33 = sub_247CAE904(v6, &_s14APIProviderKeyON);
  [v7 unlock];

  v8 = v6[2];
  [v8 lock];
  sub_247CADCE4(v6, &_s24ConfigurationProviderKeyON, v46);
  [v8 unlock];
  sub_247C3F2A4(v46, v47);

  sub_247CBE924(v47, &v36);
  sub_247C3F2A4(&v36, v35);
  v9 = __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v10 = v9[1];
  v36 = *v9;
  v37 = v10;
  v11 = v9[5];
  v13 = v9[2];
  v12 = v9[3];
  v40 = v9[4];
  v41 = v11;
  v38 = v13;
  v39 = v12;
  v14 = v9[9];
  v16 = v9[6];
  v15 = v9[7];
  v44 = v9[8];
  v45 = v14;
  v42 = v16;
  v43 = v15;
  sub_247C317E0(&v36, &v34);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63A10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_247D23880;
  v18 = type metadata accessor for CoreAnalyticsProvider();
  *(v17 + 56) = v18;
  *(v17 + 64) = &off_2859D7B68;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v17 + 32));
  sub_247D1F478();
  v20 = (boxed_opaque_existential_0 + *(v18 + 20));
  v21 = v37;
  *v20 = v36;
  v20[1] = v21;
  v22 = v38;
  v23 = v39;
  v24 = v41;
  v20[4] = v40;
  v20[5] = v24;
  v20[2] = v22;
  v20[3] = v23;
  v25 = v42;
  v26 = v43;
  v27 = v45;
  v20[8] = v44;
  v20[9] = v27;
  v20[6] = v25;
  v20[7] = v26;
  v28 = (boxed_opaque_existential_0 + *(v18 + 24));
  sub_247D1EF68();
  v29 = sub_247D1EF58();
  v31 = v30;
  (*(v3 + 8))(v5, v2);
  *v28 = v29;
  v28[1] = v31;
  a1[3] = &type metadata for AnalyticsManager;
  a1[4] = &off_2859DB2E0;
  swift_unknownObjectRelease();
  *a1 = v17;
  return sub_247CBE994(v47);
}

uint64_t sub_247CBE924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE634E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CBE994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE634E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247CBEA1C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 152))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 448, 7);
}

uint64_t sub_247CBEAF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C2793C;

  return sub_247CBE2A0(a1, v4, v5, v6, (v1 + 5));
}

void sub_247CBEBB8()
{
  v0 = sub_247D1FBB8();
  v1 = NSSelectorFromString(v0);

  sub_247CBED24();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_247D1FBB8();
  v4 = [ObjCClassFromMetadata valueForKey_];

  if (v4)
  {
    sub_247D20238();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      if ([v6 respondsToSelector_])
      {
        v5 = sub_247D1EDA8();
        [v6 performSelector:v1 withObject:v5];
      }

      else
      {
      }
    }
  }

  else
  {
    sub_247CBED70(v9);
  }
}

unint64_t sub_247CBED24()
{
  result = qword_27EE63A18;
  if (!qword_27EE63A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE63A18);
  }

  return result;
}

uint64_t sub_247CBED70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CheckingPhotosIconView.init(primaryColor:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F70);
  swift_storeEnumTagMultiPayload();
  v2 = (a1 + *(type metadata accessor for CheckingPhotosIconView() + 20));
  v4 = sub_247D1F888();
  sub_247C3D064();
  sub_247D1F8D8();
  sub_247D1F8F8();
  *v2 = v4;
  v2[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F80);
  return sub_247D1F918();
}

uint64_t sub_247CBEEC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_247D1F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F70);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_247C2BD10(v2, &v14 - v9, &qword_27EE62F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_247D1F4C8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_247D20048();
    v13 = sub_247D1F6F8();
    sub_247D1F458();

    sub_247D1F638();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t CheckingPhotosIconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = sub_247D1F4C8();
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CheckingPhotosIconView();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v21[1] = v5;
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63A20);
  MEMORY[0x28223BE20](v23);
  v8 = v21 - v7;
  *&v28 = &unk_2859D5FC0;
  sub_247CC1634(v1, v6);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_247CC169C(v6, v10 + v9);
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63A30);
  sub_247CC1780();
  sub_247CC17D4();
  sub_247C2A7FC(&qword_27EE63A78, &qword_27EE63A30);
  sub_247D1F528();
  sub_247D1F998();
  sub_247D1F508();
  v11 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63A80) + 36)];
  v12 = v29;
  *v11 = v28;
  *(v11 + 1) = v12;
  *(v11 + 2) = v30;
  v13 = v22;
  sub_247CC1634(v22, v6);
  v14 = swift_allocObject();
  sub_247CC169C(v6, v14 + v9);
  v15 = v24;
  v16 = &v8[*(v23 + 36)];
  *v16 = sub_247CC1944;
  v16[1] = v14;
  v16[2] = 0;
  v16[3] = 0;
  sub_247CBEEC4(v15);
  sub_247CC1634(v13, v6);
  v17 = swift_allocObject();
  sub_247CC169C(v6, v17 + v9);
  sub_247CC1AE4();
  sub_247CC1C28();
  v18 = v15;
  v19 = v25;
  sub_247D1F868();

  (*(v27 + 8))(v18, v19);
  return sub_247C27100(v8, &qword_27EE63A20);
}

uint64_t sub_247CBF4D8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_247D1F988();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63AE0);
  sub_247CBF61C(v5, a2, a3 + *(v7 + 44));
  sub_247D1F998();
  sub_247D1F508();

  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63A50) + 36));
  *v8 = v10;
  v8[1] = v11;
  v8[2] = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63A28);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_247CBF61C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63AE8);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v64[-v6];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63AF0);
  MEMORY[0x28223BE20](v71);
  v70 = &v64[-v7];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63AF8);
  v8 = MEMORY[0x28223BE20](v69);
  v75 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v64[-v11];
  MEMORY[0x28223BE20](v10);
  v74 = &v64[-v12];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B00);
  v13 = MEMORY[0x28223BE20](v66);
  v73 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v64[-v15];
  sub_247D1FEA8();
  v72 = sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v16 = sub_247D1F688();
  *(v16 + 1) = 0;
  v16[16] = 1;
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B08) + 44)];
  *v17 = sub_247D1F988();
  v17[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B10);
  sub_247CBFDD8(a1, a2, (v17 + *(v19 + 44)));
  v65 = a1;
  sub_247D1F988();
  sub_247D1F508();
  v20 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B18) + 36));
  v21 = v79;
  *v20 = v78;
  v20[1] = v21;
  v20[2] = v80;
  v22 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B20) + 36);
  v23 = sub_247D1F578();
  v24 = a2;
  v25 = *(v23 + 20);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_247D1F678();
  v28 = *(*(v27 - 8) + 104);
  v28(&v22[v25], v26, v27);
  __asm { FMOV            V0.2D, #6.0 }

  *v22 = _Q0;
  sub_247D1F998();
  sub_247D1F508();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B28);
  v34 = &v22[*(v33 + 36)];
  v35 = v82;
  *v34 = v81;
  *(v34 + 1) = v35;
  *(v34 + 2) = v83;

  sub_247D1F998();
  sub_247D1F508();
  v36 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B30) + 36)];
  v37 = v85;
  *v36 = v84;
  v36[1] = v37;
  v36[2] = v86;
  v38 = (v24 + *(type metadata accessor for CheckingPhotosIconView() + 20));
  v40 = *v38;
  v39 = v38[1];
  *&v87 = v40;
  *(&v87 + 1) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F80);
  sub_247D1F908();
  v41 = v77;
  LOBYTE(v24) = sub_247D1F738();
  v42 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B38) + 36)];
  *v42 = v41;
  v42[8] = v24;
  v43 = &v16[*(v66 + 36)];
  v28(&v43[*(v23 + 20)], v26, v27);
  __asm { FMOV            V0.2D, #10.0 }

  *v43 = _Q0;
  sub_247D1F998();
  sub_247D1F508();
  v45 = &v43[*(v33 + 36)];
  v46 = v88;
  *v45 = v87;
  *(v45 + 1) = v46;
  *(v45 + 2) = v89;
  v47 = sub_247D1F998();
  v48 = v67;
  *v67 = v47;
  v48[1] = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B40);
  sub_247CC0A04((v48 + *(v50 + 44)));
  v51 = v48;
  v52 = v70;
  sub_247CB1C14(v51, v70, &qword_27EE63AE8);
  _CF = v65 >= 3;
  v54 = 0.0;
  if (v65 == 3)
  {
    v54 = 1.0;
  }

  *&v52[*(v71 + 36)] = v54;
  if (_CF)
  {
    v55 = 48.0;
  }

  else
  {
    v55 = 85.0;
  }

  v56 = v68;
  sub_247CB1C14(v52, v68, &qword_27EE63AF0);
  v57 = &v56[*(v69 + 36)];
  *v57 = v55;
  *(v57 + 1) = 0;
  v58 = v74;
  sub_247CB1C14(v56, v74, &qword_27EE63AF8);
  v59 = v73;
  sub_247C2BD10(v16, v73, &qword_27EE63B00);
  v60 = v75;
  sub_247C2BD10(v58, v75, &qword_27EE63AF8);
  v61 = v76;
  sub_247C2BD10(v59, v76, &qword_27EE63B00);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B48);
  sub_247C2BD10(v60, v61 + *(v62 + 48), &qword_27EE63AF8);
  sub_247C27100(v58, &qword_27EE63AF8);
  sub_247C27100(v16, &qword_27EE63B00);
  sub_247C27100(v60, &qword_27EE63AF8);
  sub_247C27100(v59, &qword_27EE63B00);
}

uint64_t sub_247CBFDD8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v111 = a3;
  v113 = sub_247D1F4C8();
  v117 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63BB0);
  v7 = MEMORY[0x28223BE20](v114);
  v106 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v88 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63BB8);
  v11 = MEMORY[0x28223BE20](v107);
  v105 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v96 = &v88 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63BC0);
  v14 = MEMORY[0x28223BE20](v104);
  v110 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v109 = &v88 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v103 = &v88 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v116 = &v88 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v95 = &v88 - v23;
  MEMORY[0x28223BE20](v22);
  v115 = &v88 - v24;
  sub_247D1FEA8();
  v108 = sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = [objc_opt_self() systemBackgroundColor];
  v112 = sub_247D1F8C8();
  sub_247D1F998();
  sub_247D1F508();
  v102 = v129;
  v101 = v130;
  v100 = v131;
  v99 = v132;
  v97 = v134;
  v98 = v133;
  v94 = sub_247D1F578();
  v26 = *(v94 + 20);
  v92 = *MEMORY[0x277CE0118];
  v27 = v92;
  v28 = sub_247D1F678();
  v29 = *(v28 - 8);
  v91 = *(v29 + 104);
  v93 = v29 + 104;
  v91(&v10[v26], v27, v28);
  __asm { FMOV            V0.2D, #5.0 }

  *v10 = _Q0;
  sub_247CBEEC4(v6);
  v35 = sub_247CC0798(v6, a1);
  v36 = *(v117 + 8);
  v117 += 8;
  v90 = v36;
  v36(v6, v113);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63BC8);
  *&v10[*(v37 + 52)] = v35;
  *&v10[*(v37 + 56)] = 256;
  sub_247D1F998();
  sub_247D1F508();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63BD0);
  v88 = a2;
  v89 = v38;
  v39 = &v10[*(v38 + 36)];
  v40 = v136;
  *v39 = v135;
  *(v39 + 1) = v40;
  *(v39 + 2) = v137;
  sub_247D1F9E8();
  v41 = &v10[*(v114 + 36)];
  *v41 = 0x3FE921FB54442D18;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  v44 = v96;
  sub_247CB1C14(v10, v96, &qword_27EE63BB0);
  v45 = v107;
  *(v44 + *(v107 + 36)) = 0x3FF0000000000000;
  v46 = v44;
  v47 = v95;
  sub_247CB1C14(v46, v95, &qword_27EE63BB8);
  LODWORD(v96) = a1;
  v48 = 38.0;
  if (a1)
  {
    v48 = 19.0;
  }

  v49 = -1.0;
  if (!a1)
  {
    v49 = 10.0;
  }

  v50 = v104;
  v51 = (v47 + *(v104 + 36));
  *v51 = v49;
  v51[1] = v48;
  if (a1)
  {
    v52 = 18.0;
  }

  else
  {
    v52 = 41.0;
  }

  if (a1)
  {
    v53 = 22.0;
  }

  else
  {
    v53 = 10.0;
  }

  sub_247CB1C14(v47, v115, &qword_27EE63BC0);
  v54 = v106;
  v91(&v106[*(v94 + 20)], v92, v28);
  __asm { FMOV            V0.2D, #8.0 }

  *v54 = _Q0;
  v56 = v88;
  sub_247CBEEC4(v6);
  v57 = sub_247CC0798(v6, a1);
  v90(v6, v113);
  *(v54 + *(v37 + 52)) = v57;
  *(v54 + *(v37 + 56)) = 256;
  sub_247D1F998();
  sub_247D1F508();
  v58 = (v54 + *(v89 + 36));
  v59 = v139;
  *v58 = v138;
  v58[1] = v59;
  v58[2] = v140;
  sub_247D1F9E8();
  v60 = (v54 + *(v114 + 36));
  *v60 = 0x3FE921FB54442D18;
  v60[1] = v61;
  v60[2] = v62;
  v63 = v105;
  sub_247CB1C14(v54, v105, &qword_27EE63BB0);
  *(v63 + *(v45 + 36)) = 0x3FF0000000000000;
  v64 = v63;
  v65 = v103;
  sub_247CB1C14(v64, v103, &qword_27EE63BB8);
  v66 = (v65 + *(v50 + 36));
  *v66 = v53;
  v66[1] = v52;
  v67 = v116;
  sub_247CB1C14(v65, v116, &qword_27EE63BC0);
  v68 = (v56 + *(type metadata accessor for CheckingPhotosIconView() + 20));
  v70 = *v68;
  v69 = v68[1];
  v121 = v70;
  *v122 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F80);
  sub_247D1F908();
  v117 = *&v118[0];
  sub_247D1F998();
  sub_247D1F508();
  *&v128[6] = v141;
  *&v128[22] = v142;
  *&v128[38] = v143;
  if (v96 >= 2)
  {
    v71 = -22.0;
  }

  else
  {
    v71 = 14.0;
  }

  if ((a1 & 0xFE) == 2)
  {
    v72 = 1.0;
  }

  else
  {
    v72 = 0.0;
  }

  v73 = v115;
  v74 = v109;
  sub_247C2BD10(v115, v109, &qword_27EE63BC0);
  v75 = v67;
  v76 = v110;
  sub_247C2BD10(v75, v110, &qword_27EE63BC0);
  v77 = v111;
  v78 = v102;
  *v111 = v112;
  v77[1] = v78;
  *(v77 + 16) = v101;
  v77[3] = v100;
  *(v77 + 32) = v99;
  v79 = v97;
  v77[5] = v98;
  v77[6] = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63BD8);
  sub_247C2BD10(v74, v77 + v80[12], &qword_27EE63BC0);
  sub_247C2BD10(v76, v77 + v80[16], &qword_27EE63BC0);
  v81 = v77 + v80[20];
  v82 = v117;
  *&v118[0] = v117;
  WORD4(v118[0]) = 256;
  *(v118 + 10) = *v128;
  *(&v118[1] + 10) = *&v128[16];
  *(&v118[2] + 10) = *&v128[32];
  *(&v118[3] + 1) = *&v128[46];
  *&v119 = v72;
  *(&v119 + 1) = 0x4024000000000000;
  v120 = v71;
  v83 = v118[1];
  *v81 = v118[0];
  *(v81 + 1) = v83;
  v84 = v118[2];
  v85 = v118[3];
  v86 = v119;
  *(v81 + 10) = v120;
  *(v81 + 3) = v85;
  *(v81 + 4) = v86;
  *(v81 + 2) = v84;

  sub_247C2BD10(v118, &v121, &qword_27EE63BE0);
  sub_247C27100(v116, &qword_27EE63BC0);
  sub_247C27100(v73, &qword_27EE63BC0);
  v121 = v82;
  *v122 = 256;
  *&v122[2] = *v128;
  v123 = *&v128[16];
  *v124 = *&v128[32];
  *&v124[14] = *&v128[46];
  v125 = v72;
  v126 = 0x4024000000000000;
  v127 = v71;
  sub_247C27100(&v121, &qword_27EE63BE0);
  sub_247C27100(v76, &qword_27EE63BC0);
  sub_247C27100(v74, &qword_27EE63BC0);
}

uint64_t sub_247CC0798(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_247D1F878();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_247D1F4C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  LODWORD(a1) = (*(v9 + 88))(v11, v8);
  v12 = *MEMORY[0x277CDF3C0];
  (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
  v13 = sub_247D1F8B8();
  if (a1 != v12)
  {
    (*(v9 + 8))(v11, v8);
  }

  if ((a2 | 4) == 4)
  {
    v14 = [objc_opt_self() systemBackgroundColor];
    v15 = sub_247D1F8C8();

    return v15;
  }

  return v13;
}

uint64_t sub_247CC0A04@<X0>(_OWORD *a1@<X8>)
{
  v47 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v42 - v2;
  v44.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B58);
  v4 = MEMORY[0x28223BE20](v44.i64[0]);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B60);
  v9 = MEMORY[0x28223BE20](v8);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  sub_247D1FEA8();
  v46 = sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = objc_opt_self();
  v14 = [v13 systemBackgroundColor];
  v43 = sub_247D1F8C8();
  sub_247D1F998();
  sub_247D1F508();
  *&v49[6] = *&v54[19];
  *&v49[22] = *&v54[27];
  *&v49[38] = *&v54[35];
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_247D1F678();
  (*(*(v16 - 8) + 104))(v12, v15, v16);
  v17 = [v13 systemBackgroundColor];
  v18 = sub_247D1F8C8();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B68);
  *&v12[*(v19 + 52)] = v18;
  *&v12[*(v19 + 56)] = 256;
  sub_247D1F998();
  sub_247D1F508();
  v20 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B70) + 36)];
  v21 = *&v54[51];
  *v20 = *&v54[43];
  *(v20 + 1) = v21;
  *(v20 + 2) = *&v54[59];
  sub_247D1F9E8();
  v23 = v22;
  v25 = v24;
  v26 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B78) + 36)];
  *v26 = 0x3FE921FB54442D18;
  *(v26 + 1) = v23;
  *(v26 + 2) = v25;
  *&v12[*(v8 + 36)] = vdupq_n_s64(0x402151EB851EB852uLL);
  v27 = sub_247D1F8E8();
  v28 = sub_247D1F778();
  (*(*(v28 - 8) + 56))(v3, 1, 1, v28);
  v29 = sub_247D1F798();
  sub_247C27100(v3, &qword_27EE63B50);
  KeyPath = swift_getKeyPath();
  v51 = v27;
  *v52 = KeyPath;
  *&v52[8] = v29;
  sub_247D1F788();
  v42 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63B80);
  sub_247CC20B0();
  sub_247D1F838();

  v31 = [v13 systemBlueColor];
  *&v7[*(v44.i64[0] + 36)] = sub_247D1F8C8();
  v32 = v45;
  sub_247C2BD10(v12, v45, &qword_27EE63B60);
  v33 = v48;
  sub_247C2BD10(v7, v48, &qword_27EE63B58);
  v34 = v43;
  *&v50[0] = v43;
  WORD4(v50[0]) = 256;
  *(v50 + 10) = *v49;
  *(&v50[1] + 10) = *&v49[16];
  *(&v50[2] + 10) = *&v49[32];
  v44 = vdupq_n_s64(0xC00547AE147AE148);
  *(&v50[3] + 1) = *&v49[46];
  v50[4] = v44;
  v35 = v50[0];
  v36 = v50[1];
  v37 = v44;
  v38 = v47;
  v39 = v50[2];
  v47[3] = v50[3];
  v38[4] = v37;
  v38[1] = v36;
  v38[2] = v39;
  *v38 = v35;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63BA0);
  sub_247C2BD10(v32, v38 + *(v40 + 48), &qword_27EE63B60);
  sub_247C2BD10(v33, v38 + *(v40 + 64), &qword_27EE63B58);
  sub_247C2BD10(v50, &v51, &qword_27EE63BA8);
  sub_247C27100(v7, &qword_27EE63B58);
  sub_247C27100(v42, &qword_27EE63B60);
  sub_247C27100(v33, &qword_27EE63B58);
  sub_247C27100(v32, &qword_27EE63B60);
  v51 = v34;
  *v52 = 256;
  *&v52[2] = *v49;
  v53 = *&v49[16];
  *v54 = *&v49[32];
  *&v54[7] = *&v49[46];
  *&v54[11] = v44;
  sub_247C27100(&v51, &qword_27EE63BA8);
}

uint64_t sub_247CC10A0(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (v1 <= 1)
  {
    if (v1)
    {
      v3 = MEMORY[0x24C1B7880](isCurrentExecutor, 1.0, 1.0, 0.0);
    }

    else
    {
      v3 = sub_247D1F9B8();
    }

    goto LABEL_11;
  }

  if (v1 == 2 || v1 == 3)
  {
    v3 = sub_247D1F9D8();
LABEL_11:
    v4 = v3;
    goto LABEL_12;
  }

  sub_247D1F9D8();
  v4 = sub_247D1F9A8();

LABEL_12:

  return v4;
}

uint64_t sub_247CC119C(uint64_t a1, uint64_t a2)
{
  v22[1] = a2;
  v23 = a1;
  v2 = sub_247D1F878();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247D1F4C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_247CBEEC4(v12);
  (*(v7 + 16))(v10, v12, v6);
  v13 = (*(v7 + 88))(v10, v6);
  v14 = *MEMORY[0x277CDF3C0];
  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
  v15 = (v7 + 8);
  if (v13 == v14)
  {
    v16 = sub_247D1F8B8();
    (*v15)(v12, v6);
  }

  else
  {
    v16 = sub_247D1F8B8();
    v17 = *v15;
    (*v15)(v12, v6);
    v17(v10, v6);
  }

  v18 = (v23 + *(type metadata accessor for CheckingPhotosIconView() + 20));
  v20 = *v18;
  v19 = v18[1];
  v25 = v20;
  v26 = v19;
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F80);
  sub_247D1F918();
}

uint64_t sub_247CC151C(uint64_t a1)
{
  v2 = sub_247D1F4C8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_247D1F5A8();
}

uint64_t type metadata accessor for CheckingPhotosIconView()
{
  result = qword_27EE63AB8;
  if (!qword_27EE63AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247CC1634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CheckingPhotosIconView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CC169C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CheckingPhotosIconView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CC1700@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for CheckingPhotosIconView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_247CBF4D8(a1, v6, a2);
}

unint64_t sub_247CC1780()
{
  result = qword_27EE63A38;
  if (!qword_27EE63A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63A38);
  }

  return result;
}

unint64_t sub_247CC17D4()
{
  result = qword_27EE63A40;
  if (!qword_27EE63A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE63A28);
    sub_247CC188C();
    sub_247C2A7FC(&qword_27EE63A68, &qword_27EE63A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63A40);
  }

  return result;
}

unint64_t sub_247CC188C()
{
  result = qword_27EE63A48;
  if (!qword_27EE63A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE63A50);
    sub_247C2A7FC(&qword_27EE63A58, &qword_27EE63A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63A48);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for CheckingPhotosIconView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_247D1F4C8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_247CC1AE4()
{
  result = qword_27EE63A88;
  if (!qword_27EE63A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE63A20);
    sub_247CC1B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63A88);
  }

  return result;
}

unint64_t sub_247CC1B70()
{
  result = qword_27EE63A90;
  if (!qword_27EE63A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE63A80);
    sub_247C2A7FC(&qword_27EE63A98, &qword_27EE63AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63A90);
  }

  return result;
}

unint64_t sub_247CC1C28()
{
  result = qword_27EE63AA8;
  if (!qword_27EE63AA8)
  {
    sub_247D1F4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63AA8);
  }

  return result;
}

uint64_t sub_247CC1CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63AB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_247CC1D8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63AB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_247CC1E50()
{
  sub_247CC1ED4();
  if (v0 <= 0x3F)
  {
    sub_247CC1F2C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_247CC1ED4()
{
  if (!qword_27EE63AC8)
  {
    sub_247D1F4C8();
    v0 = sub_247D1F4D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE63AC8);
    }
  }
}

void sub_247CC1F2C()
{
  if (!qword_27EE63AD0)
  {
    v0 = sub_247D1F938();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE63AD0);
    }
  }
}

uint64_t sub_247CC1F7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE63A20);
  sub_247D1F4C8();
  sub_247CC1AE4();
  sub_247CC1C28();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_247CC2058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_247D1F618();
  *a1 = result;
  return result;
}

unint64_t sub_247CC20B0()
{
  result = qword_27EE63B88;
  if (!qword_27EE63B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE63B80);
    sub_247C2A7FC(&qword_27EE63B90, &qword_27EE63B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63B88);
  }

  return result;
}

unint64_t sub_247CC2170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_247D1F058();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - v9;
  v11 = *(a1 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = type metadata accessor for TulaError();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v11;
  v21 = *(v11 + 16);
  v35 = v3;
  v21(v16, v3, a1);
  v22 = swift_dynamicCast();
  v23 = *(v18 + 56);
  if (v22)
  {
    v23(v10, 0, 1, v17);
    sub_247C271A4(v10, v20);
    v24 = *v20;
    v25 = v20[8];
    sub_247C27208(v20);
    LOBYTE(v26) = 0;
    if (v25)
    {
      v26 = 0x80000101uLL >> v24;
    }
  }

  else
  {
    v23(v10, 1, 1, v17);
    sub_247C27100(v10, &qword_27EE62C10);
    v27 = v34;
    sub_247D1F048();
    v21(v14, v35, a1);
    v28 = sub_247D204F8();
    if (v28)
    {
      v29 = v28;
      (*(v33 + 8))(v14, a1);
    }

    else
    {
      v29 = swift_allocError();
      (*(v33 + 32))(v30, v14, a1);
    }

    sub_247CC3710(&qword_27EE63BE8, MEMORY[0x277CC9AC8]);
    v31 = v38;
    LOBYTE(v26) = sub_247D1EC68();

    (*(v37 + 8))(v27, v31);
  }

  return v26 & 1;
}

uint64_t sub_247CC2560(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_247D1F058();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_247D1FE78();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *(v10 + 16);
  v19(&v29 - v17, v34, a1);
  if (swift_dynamicCast())
  {
    (*(v6 + 8))(v9, v5);
    v20 = 1;
    (*(v10 + 8))(v18, a1);
  }

  else
  {
    v19(v16, v18, a1);
    v21 = v30;
    sub_247D1F088();
    v19(v13, v16, a1);
    v22 = sub_247D204F8();
    v23 = v21;
    if (v22)
    {
      v24 = v22;
      (*(v10 + 8))(v13, a1);
    }

    else
    {
      v24 = swift_allocError();
      (*(v10 + 32))(v25, v13, a1);
    }

    sub_247CC3710(&qword_27EE63BE8, MEMORY[0x277CC9AC8]);
    v26 = v33;
    v20 = sub_247D1EC68();

    (*(v32 + 8))(v23, v26);
    v27 = *(v10 + 8);
    v27(v16, a1);
    v27(v18, a1);
  }

  return v20 & 1;
}

uint64_t sub_247CC290C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TulaError();
  v55 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63BF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v46 - v16;
  v18 = *(a1 - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v53 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v46 - v21;
  v23 = 1;
  if ((sub_247CC326C(a1, a2) & 1) == 0)
  {
    v24 = *(v18 + 16);
    v49 = v2;
    v48 = v18 + 16;
    v47 = v24;
    v24(v22, v2, a1);
    v50 = a1;
    v25 = swift_dynamicCast();
    v26 = v55;
    v27 = *(v55 + 56);
    v27(v17, v25 ^ 1u, 1, v5);
    *(v14 + 4) = 0;
    *(v14 + 5) = 0xE000000000000000;
    sub_247D1F188();
    *v14 = 6;
    v14[8] = 1;
    *(v14 + 2) = 0xD00000000000002DLL;
    *(v14 + 3) = 0x8000000247D30C40;
    v27(v14, 0, 1, v5);
    v28 = v26;
    v29 = *(v7 + 48);
    v30 = v54;
    sub_247CC3650(v17, v54);
    sub_247CC3650(v14, v30 + v29);
    v31 = *(v28 + 48);
    v32 = v17;
    if (v31(v30, 1, v5) == 1)
    {
      sub_247C27100(v14, &qword_27EE62C10);
      if (v31(v30 + v29, 1, v5) == 1)
      {
        sub_247C27100(v30, &qword_27EE62C10);
        sub_247C27100(v17, &qword_27EE62C10);
        v23 = 1;
        return v23 & 1;
      }
    }

    else
    {
      v33 = v52;
      sub_247CC3650(v30, v52);
      if (v31(v30 + v29, 1, v5) != 1)
      {
        v36 = v51;
        sub_247C271A4(v30 + v29, v51);
        v37 = sub_247CF82C8(*v33, *(v33 + 8), *v36, *(v36 + 8));
        v34 = v50;
        v35 = v49;
        if (v37 && (*(v33 + 16) == *(v36 + 16) && *(v33 + 24) == *(v36 + 24) || (sub_247D20538() & 1) != 0) && (*(v33 + 32) == *(v36 + 32) && *(v33 + 40) == *(v36 + 40) || (sub_247D20538() & 1) != 0))
        {
          sub_247D1F198();
          sub_247CC3710(&qword_27EE63C00, MEMORY[0x277D216C8]);
          v38 = sub_247D1FB78();
          sub_247C27208(v36);
          sub_247C27100(v14, &qword_27EE62C10);
          sub_247C27208(v33);
          sub_247C27100(v30, &qword_27EE62C10);
          sub_247C27100(v32, &qword_27EE62C10);
          if (v38)
          {
            v23 = 1;
            return v23 & 1;
          }

          goto LABEL_19;
        }

        sub_247C27208(v36);
        sub_247C27100(v14, &qword_27EE62C10);
        sub_247C27208(v33);
        sub_247C27100(v30, &qword_27EE62C10);
LABEL_18:
        sub_247C27100(v32, &qword_27EE62C10);
LABEL_19:
        v47(v53, v35, v34);
        if (swift_dynamicCast())
        {
          v39 = v56;
          v40 = v57;
          v41 = v58;
          v42 = v59;
          v43 = v60;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63BF8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_247D246B0;
          *(inited + 32) = xmmword_247D22C40;
          *(inited + 48) = 0x8000000247D2D7D0;
          *(inited + 56) = 0;
          *(inited + 64) = 0xE000000000000000;
          *(inited + 72) = xmmword_247D22C50;
          *(inited + 88) = 0x8000000247D2D7F0;
          *(inited + 96) = 0;
          *(inited + 104) = 0xE000000000000000;
          *(inited + 112) = xmmword_247D22C50;
          *(inited + 128) = 0x8000000247D2D7F0;
          *(inited + 136) = 0;
          *(inited + 144) = 0xE000000000000000;
          v56 = v39;
          v57 = v40;
          v58 = v41;
          v59 = v42;
          v60 = v43;
          MEMORY[0x28223BE20](inited);
          *(&v46 - 2) = &v56;
          v23 = sub_247CCBFAC(sub_247CC36C0, (&v46 - 4), inited);
          swift_setDeallocating();
          swift_arrayDestroy();
        }

        else
        {
          v23 = 0;
        }

        return v23 & 1;
      }

      sub_247C27100(v14, &qword_27EE62C10);
      sub_247C27208(v33);
    }

    sub_247C27100(v30, &qword_27EE63BF0);
    v34 = v50;
    v35 = v49;
    goto LABEL_18;
  }

  return v23 & 1;
}

void sub_247CC30AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = *(v6 + 16);
  v10(v17 - v11, v3, a1);
  if (swift_dynamicCast())
  {
    v12 = v18;
    v13 = v17[1];
    *a2 = v17[0];
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
  }

  else
  {
    v10(v9, v3, a1);
    v14 = sub_247D204F8();
    if (v14)
    {
      v15 = v14;
      (*(v6 + 8))(v9, a1);
    }

    else
    {
      v15 = swift_allocError();
      (*(v6 + 32))(v16, v9, a1);
    }

    sub_247C25780(v15, a2);
  }
}

uint64_t sub_247CC326C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v5 = sub_247D1F058();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = *(a1 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = *(v11 + 16);
  v18(&v30 - v19, v3, a1);
  v20 = type metadata accessor for TulaError();
  v21 = swift_dynamicCast();
  v22 = *(*(v20 - 8) + 56);
  if (v21)
  {
    v23 = 1;
    v22(v10, 0, 1, v20);
    sub_247C27100(v10, &qword_27EE62C10);
  }

  else
  {
    v22(v10, 1, 1, v20);
    sub_247C27100(v10, &qword_27EE62C10);
    v18(v17, v3, a1);
    if (swift_dynamicCast())
    {

      v23 = 1;
    }

    else
    {
      v24 = v31;
      sub_247D1EFF8();
      v18(v14, v3, a1);
      v25 = sub_247D204F8();
      if (v25)
      {
        v26 = v25;
        (*(v11 + 8))(v14, a1);
      }

      else
      {
        v26 = swift_allocError();
        (*(v11 + 32))(v27, v14, a1);
      }

      sub_247CC3710(&qword_27EE63BE8, MEMORY[0x277CC9AC8]);
      v28 = v33;
      v23 = sub_247D1EC68();

      (*(v32 + 8))(v24, v28);
    }
  }

  return v23 & 1;
}

uint64_t sub_247CC3650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CC36C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v9 = *(v2 + 32);
  return sub_247CB08F4(v6, v8) & 1;
}

uint64_t sub_247CC3710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_18CosmeticAssessment18AnalyticsEventDataV13ImageMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_247CC3778(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 384))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_247CC37D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 384) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 384) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_247CC389C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6576653A707061;
  }

  else
  {
    v3 = 0x64616F6C3A707061;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  if (*a2)
  {
    v5 = 0x6E6576653A707061;
  }

  else
  {
    v5 = 0x64616F6C3A707061;
  }

  if (*a2)
  {
    v6 = 0xE900000000000074;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_247D20538();
  }

  return v8 & 1;
}

uint64_t sub_247CC3948()
{
  sub_247D20618();
  sub_247D1FCB8();

  return sub_247D20658();
}

uint64_t sub_247CC39D0()
{
  sub_247D1FCB8();
}

uint64_t sub_247CC3A44()
{
  sub_247D20618();
  sub_247D1FCB8();

  return sub_247D20658();
}

uint64_t sub_247CC3AC8@<X0>(char *a1@<X8>)
{
  v2 = sub_247D20408();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_247CC3B28(uint64_t *a1@<X8>)
{
  v2 = 0x64616F6C3A707061;
  if (*v1)
  {
    v2 = 0x6E6576653A707061;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000074;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_247CC3B6C()
{
  sub_247D20618();
  sub_247CC403C();
  sub_247D1FCB8();

  sub_247D1FCB8();
  return sub_247D20658();
}

uint64_t sub_247CC3C18()
{
  sub_247CC403C();
  sub_247D1FCB8();

  return sub_247D1FCB8();
}

uint64_t sub_247CC3CBC()
{
  sub_247D20618();
  sub_247CC403C();
  sub_247D1FCB8();

  sub_247D1FCB8();
  return sub_247D20658();
}

uint64_t sub_247CC3D64(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_247CC5124(v4, __dst) & 1;
}

uint64_t sub_247CC3DBC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_247D20618();
  MEMORY[0x24C1B84E0](v1);
  MEMORY[0x24C1B84E0](v2);
  MEMORY[0x24C1B84E0](v3);
  sub_247D1FCB8();
  sub_247D1FCB8();
  sub_247D1FCB8();
  return sub_247D20658();
}

uint64_t sub_247CC3E7C()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x24C1B84E0](*v0);
  MEMORY[0x24C1B84E0](v1);
  MEMORY[0x24C1B84E0](v2);
  sub_247D1FCB8();
  sub_247D1FCB8();

  return sub_247D1FCB8();
}

uint64_t sub_247CC3F24()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_247D20618();
  MEMORY[0x24C1B84E0](v1);
  MEMORY[0x24C1B84E0](v2);
  MEMORY[0x24C1B84E0](v3);
  sub_247D1FCB8();
  sub_247D1FCB8();
  sub_247D1FCB8();
  return sub_247D20658();
}

uint64_t sub_247CC3FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_247CC5270(v7, v9) & 1;
}

uint64_t sub_247CC403C()
{
  if (*(v0 + 8) == 1)
  {
    sub_247D20638();
  }

  else
  {
    v1 = *v0;
    sub_247D20638();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x24C1B8500](v2);
  }

  if (*(v0 + 24) == 1)
  {
    sub_247D20638();
  }

  else
  {
    v3 = v0[2];
    sub_247D20638();
    MEMORY[0x24C1B84E0](v3);
  }

  if (*(v0 + 40) == 1)
  {
    sub_247D20638();
    if (v0[7])
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = v0[4];
    sub_247D20638();
    MEMORY[0x24C1B84E0](v7);
    if (v0[7])
    {
LABEL_12:
      sub_247D20638();
      sub_247D1FCB8();
      if (v0[9])
      {
        goto LABEL_13;
      }

LABEL_17:
      sub_247D20638();
      if (v0[14])
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    }
  }

  sub_247D20638();
  if (!v0[9])
  {
    goto LABEL_17;
  }

LABEL_13:
  sub_247D20638();
  sub_247D1FCB8();
  if (v0[14])
  {
LABEL_14:
    v4 = v0[12];
    v5 = v0[10];
    v6 = v0[11];
    sub_247D20638();
    MEMORY[0x24C1B84E0](v5);
    MEMORY[0x24C1B84E0](v6);
    MEMORY[0x24C1B84E0](v4);
    sub_247D1FCB8();
    sub_247D1FCB8();
    sub_247D1FCB8();
    goto LABEL_19;
  }

LABEL_18:
  sub_247D20638();
LABEL_19:
  if (*(v0 + 160) == 1)
  {
    sub_247D20638();
    if (v0[22])
    {
      goto LABEL_21;
    }

LABEL_27:
    sub_247D20638();
    if (v0[24])
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  v8 = v0[19];
  sub_247D20638();
  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x24C1B8500](v9);
  if (!v0[22])
  {
    goto LABEL_27;
  }

LABEL_21:
  sub_247D20638();
  sub_247D1FCB8();
  if (v0[24])
  {
LABEL_22:
    sub_247D20638();
    sub_247D1FCB8();
    goto LABEL_29;
  }

LABEL_28:
  sub_247D20638();
LABEL_29:
  if (*(v0 + 200) != 2)
  {
    sub_247D20638();
  }

  sub_247D20638();
  if (*(v0 + 201) != 2)
  {
    sub_247D20638();
  }

  sub_247D20638();
  if (v0[27])
  {
    sub_247D20638();
    sub_247D1FCB8();
    if (v0[29])
    {
      goto LABEL_35;
    }
  }

  else
  {
    sub_247D20638();
    if (v0[29])
    {
LABEL_35:
      sub_247D20638();
      sub_247D1FCB8();
      if (v0[31])
      {
        goto LABEL_36;
      }

      goto LABEL_49;
    }
  }

  sub_247D20638();
  if (v0[31])
  {
LABEL_36:
    sub_247D20638();
    sub_247D1FCB8();
    if (v0[33])
    {
      goto LABEL_37;
    }

    goto LABEL_50;
  }

LABEL_49:
  sub_247D20638();
  if (v0[33])
  {
LABEL_37:
    sub_247D20638();
    sub_247D1FCB8();
    if (v0[35])
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  sub_247D20638();
  if (v0[35])
  {
LABEL_38:
    sub_247D20638();
    sub_247D1FCB8();
    if (v0[37])
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

LABEL_51:
  sub_247D20638();
  if (v0[37])
  {
LABEL_39:
    sub_247D20638();
    sub_247D1FCB8();
    if (v0[39])
    {
      goto LABEL_40;
    }

    goto LABEL_53;
  }

LABEL_52:
  sub_247D20638();
  if (v0[39])
  {
LABEL_40:
    sub_247D20638();
    sub_247D1FCB8();
    if (v0[41])
    {
      goto LABEL_41;
    }

    goto LABEL_54;
  }

LABEL_53:
  sub_247D20638();
  if (v0[41])
  {
LABEL_41:
    sub_247D20638();
    sub_247D1FCB8();
    if (v0[43])
    {
      goto LABEL_42;
    }

    goto LABEL_55;
  }

LABEL_54:
  sub_247D20638();
  if (v0[43])
  {
LABEL_42:
    sub_247D20638();
    sub_247D1FCB8();
    if (v0[45])
    {
      goto LABEL_43;
    }

LABEL_56:
    sub_247D20638();
    if (v0[47])
    {
      goto LABEL_44;
    }

    return sub_247D20638();
  }

LABEL_55:
  sub_247D20638();
  if (!v0[45])
  {
    goto LABEL_56;
  }

LABEL_43:
  sub_247D20638();
  sub_247D1FCB8();
  if (!v0[47])
  {
    return sub_247D20638();
  }

LABEL_44:
  sub_247D20638();

  return sub_247D1FCB8();
}

uint64_t sub_247CC4534()
{
  sub_247D20618();
  sub_247CC403C();
  return sub_247D20658();
}

uint64_t sub_247CC4578()
{
  sub_247D20618();
  sub_247CC403C();
  return sub_247D20658();
}

BOOL sub_247CC45B4(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_247CC4664(v4, __dst);
}

unint64_t sub_247CC4610()
{
  result = qword_27EE63C08;
  if (!qword_27EE63C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63C08);
  }

  return result;
}

BOOL sub_247CC4664(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v5 != v6)
    {
      v7 = a1;
      v8 = a2;
      v9 = sub_247D20538();
      a2 = v8;
      v10 = v9;
      a1 = v7;
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v6)
  {
    return 0;
  }

  v11 = *(a1 + 72);
  v12 = *(a2 + 72);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    if (*(a1 + 64) != *(a2 + 64) || v11 != v12)
    {
      v13 = a1;
      v14 = a2;
      v15 = sub_247D20538();
      a2 = v14;
      v16 = v15;
      a1 = v13;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v17 = *(a1 + 128);
  *&v88[32] = *(a1 + 112);
  *&v88[48] = v17;
  *&v88[64] = *(a1 + 144);
  v18 = *(a1 + 96);
  *v88 = *(a1 + 80);
  *&v88[16] = v18;
  v19 = *(a2 + 128);
  v85 = *(a2 + 112);
  v86 = v19;
  v87 = *(a2 + 144);
  v20 = *(a2 + 96);
  v84[0] = *(a2 + 80);
  v84[1] = v20;
  v21 = *v88;
  v22 = *&v88[8];
  v23 = *&v88[24];
  v25 = *&v88[40];
  v24 = *&v88[56];
  if (!*&v88[32])
  {
    if (!v85)
    {
      v69 = *&v88[64];
      v27 = a1;
      v28 = a2;
      sub_247CC4E54(v88, v76);
      sub_247CC4E54(v84, v76);
      goto LABEL_49;
    }

    goto LABEL_44;
  }

  if (!v85)
  {
LABEL_44:
    *v76 = *v88;
    *&v76[16] = *&v88[16];
    *&v76[32] = *&v88[32];
    v77 = *&v88[40];
    v78 = *&v88[56];
    v32 = *(a2 + 96);
    v79 = *(a2 + 80);
    v80 = v32;
    v81 = v85;
    v33 = *(a2 + 136);
    v82 = *(a2 + 120);
    v83 = v33;
    sub_247CC4E54(v88, &v70);
    sub_247CC4E54(v84, &v70);
    v34 = &unk_27EE63C10;
    v35 = v76;
LABEL_46:
    sub_247C27100(v35, v34);
    return 0;
  }

  v26 = *(a2 + 96);
  *v76 = *(a2 + 80);
  *&v76[16] = v26;
  *&v76[32] = v85;
  v77 = *(a2 + 120);
  v78 = *(a2 + 136);
  v69 = *&v88[64];
  if (*v88 != *v76 || *&v88[8] != *&v76[8] || (v27 = a1, v28 = a2, v30 = *(&v77 + 1), v29 = v77, *&v88[24] != __PAIR128__(v85, *&v76[24])) && (v31 = sub_247D20538(), v30 = *(&v77 + 1), v29 = v77, (v31 & 1) == 0) || *&v88[40] != __PAIR128__(v30, v29) && (sub_247D20538() & 1) == 0)
  {
    sub_247CC4E54(v88, &v70);
    sub_247CC4E54(v84, &v70);
    sub_247C27100(v76, &qword_27EE62E28);
    v70 = v21;
    v71 = v22;
    v72 = v23;
    v73 = v25;
    v74 = v24;
    v75 = v69;
    v35 = &v70;
    v34 = &qword_27EE62E28;
    goto LABEL_46;
  }

  if (*&v88[56] == v78)
  {
    sub_247CC4E54(v88, &v70);
    sub_247CC4E54(v84, &v70);
    sub_247C27100(v76, &qword_27EE62E28);
    goto LABEL_49;
  }

  v68 = sub_247D20538();
  sub_247CC4E54(v88, &v70);
  sub_247CC4E54(v84, &v70);
  sub_247C27100(v76, &qword_27EE62E28);
  if ((v68 & 1) == 0)
  {
    v70 = v21;
    v71 = v22;
    v72 = v23;
    v73 = v25;
    v74 = v24;
    v75 = v69;
    v34 = &qword_27EE62E28;
    v35 = &v70;
    goto LABEL_46;
  }

LABEL_49:
  *v76 = v21;
  *&v76[8] = v22;
  *&v76[24] = v23;
  v77 = v25;
  *&v78 = v24;
  *(&v78 + 1) = v69;
  sub_247C27100(v76, &qword_27EE62E28);
  v37 = *(v28 + 160);
  if (*(v27 + 160))
  {
    if (!*(v28 + 160))
    {
      return 0;
    }
  }

  else
  {
    if (*(v27 + 152) != *(v28 + 152))
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  v38 = *(v27 + 176);
  v39 = *(v28 + 176);
  if (v38)
  {
    if (!v39 || (*(v27 + 168) != *(v28 + 168) || v38 != v39) && (sub_247D20538() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v40 = *(v27 + 192);
  v41 = *(v28 + 192);
  if (v40)
  {
    if (!v41 || (*(v27 + 184) != *(v28 + 184) || v40 != v41) && (sub_247D20538() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = *(v27 + 200);
  v43 = *(v28 + 200);
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      return 0;
    }
  }

  else if (v43 == 2 || ((v43 ^ v42) & 1) != 0)
  {
    return 0;
  }

  v44 = *(v27 + 201);
  v45 = *(v28 + 201);
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else if (v45 == 2 || ((v45 ^ v44) & 1) != 0)
  {
    return 0;
  }

  v46 = *(v27 + 216);
  v47 = *(v28 + 216);
  if (v46)
  {
    if (!v47 || (*(v27 + 208) != *(v28 + 208) || v46 != v47) && (sub_247D20538() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  v48 = *(v27 + 232);
  v49 = *(v28 + 232);
  if (v48)
  {
    if (!v49 || (*(v27 + 224) != *(v28 + 224) || v48 != v49) && (sub_247D20538() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  v50 = *(v27 + 248);
  v51 = *(v28 + 248);
  if (v50)
  {
    if (!v51 || (*(v27 + 240) != *(v28 + 240) || v50 != v51) && (sub_247D20538() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  v52 = *(v27 + 264);
  v53 = *(v28 + 264);
  if (v52)
  {
    if (!v53 || (*(v27 + 256) != *(v28 + 256) || v52 != v53) && (sub_247D20538() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  v54 = *(v27 + 280);
  v55 = *(v28 + 280);
  if (v54)
  {
    if (!v55 || (*(v27 + 272) != *(v28 + 272) || v54 != v55) && (sub_247D20538() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  v56 = *(v27 + 296);
  v57 = *(v28 + 296);
  if (v56)
  {
    if (!v57 || (*(v27 + 288) != *(v28 + 288) || v56 != v57) && (sub_247D20538() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v58 = *(v27 + 312);
  v59 = *(v28 + 312);
  if (v58)
  {
    if (!v59 || (*(v27 + 304) != *(v28 + 304) || v58 != v59) && (sub_247D20538() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  v60 = *(v27 + 328);
  v61 = *(v28 + 328);
  if (v60)
  {
    if (!v61 || (*(v27 + 320) != *(v28 + 320) || v60 != v61) && (sub_247D20538() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v62 = *(v27 + 344);
  v63 = *(v28 + 344);
  if (v62)
  {
    if (!v63 || (*(v27 + 336) != *(v28 + 336) || v62 != v63) && (sub_247D20538() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v63)
  {
    return 0;
  }

  v64 = *(v27 + 360);
  v65 = *(v28 + 360);
  if (v64)
  {
    if (!v65 || (*(v27 + 352) != *(v28 + 352) || v64 != v65) && (sub_247D20538() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v65)
  {
    return 0;
  }

  v66 = *(v27 + 376);
  v67 = *(v28 + 376);
  if (!v66)
  {
    return !v67;
  }

  return v67 && (*(v27 + 368) == *(v28 + 368) && v66 == v67 || (sub_247D20538() & 1) != 0);
}

uint64_t sub_247CC4E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62E28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CC4ECC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 400);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_247CC4F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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
      *(result + 400) = (a2 - 1);
      return result;
    }

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247CC4FCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_247CC5014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_247CC5078()
{
  result = qword_27EE63C18;
  if (!qword_27EE63C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63C18);
  }

  return result;
}

unint64_t sub_247CC50D0()
{
  result = qword_27EE63C20;
  if (!qword_27EE63C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63C20);
  }

  return result;
}

uint64_t sub_247CC5124(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, a2, sizeof(v11));
  if (!sub_247CC4664(__dst, v11))
  {
    return 0;
  }

  if (*(__src + 384))
  {
    v4 = 0x6E6576653A707061;
  }

  else
  {
    v4 = 0x64616F6C3A707061;
  }

  if (*(__src + 384))
  {
    v5 = 0xE900000000000074;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*(a2 + 384))
  {
    v6 = 0x6E6576653A707061;
  }

  else
  {
    v6 = 0x64616F6C3A707061;
  }

  if (*(a2 + 384))
  {
    v7 = 0xE900000000000074;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_247D20538();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(__src + 49) == *(a2 + 392) && *(__src + 50) == *(a2 + 400))
  {
    return 1;
  }

  return sub_247D20538();
}

uint64_t sub_247CC5270(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] != a2[3] || a1[4] != a2[4])
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_247D20538();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[5] != a2[5] || a1[6] != a2[6])
  {
    v7 = a1;
    v8 = a2;
    v9 = sub_247D20538();
    a2 = v8;
    v10 = v9;
    a1 = v7;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[7] == a2[7] && a1[8] == a2[8])
  {
    return 1;
  }

  return sub_247D20538();
}

unint64_t sub_247CC5398()
{
  result = qword_27EE63C28;
  if (!qword_27EE63C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63C28);
  }

  return result;
}

id sub_247CC55D8()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment21LoadingViewController_activityIndicator];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_247D26CA0;
  v7 = [v1 centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v9 = [result centerXAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v10;
  v11 = [v1 centerYAnchor];
  result = [v0 view];
  if (result)
  {
    v12 = result;
    v13 = objc_opt_self();
    v14 = [v12 centerYAnchor];

    v15 = [v11 constraintEqualToAnchor_];
    *(v6 + 40) = v15;
    sub_247C7C6F8();
    v16 = sub_247D1FDB8();

    [v13 activateConstraints_];

    return [v1 startAnimating];
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_247CC595C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = *(v4 + 16);
  v11(&v20 - v12, v2, a1);
  if (swift_dynamicCast())
  {
    v13 = v21;
    v14 = sub_247CC5C94(v21);
  }

  else
  {
    v11(v10, v2, a1);
    if (swift_dynamicCast())
    {
      v14 = v21;
    }

    else
    {
      v11(v7, v2, a1);
      v15 = sub_247D204F8();
      if (v15)
      {
        v16 = v15;
        (*(v4 + 8))(v7, a1);
      }

      else
      {
        v16 = swift_allocError();
        (*(v4 + 32))(v17, v7, a1);
      }

      v18 = sub_247D1EC98();

      v14 = [v18 code];
    }
  }

  return v14;
}

uint64_t sub_247CC5BB8()
{
  sub_247D202C8();
  MEMORY[0x24C1B7B80](0xD00000000000002BLL, 0x8000000247D31230);
  sub_247D20388();
  MEMORY[0x24C1B7B80](8250, 0xE200000000000000);
  swift_getErrorValue();
  v0 = sub_247D205B8();
  MEMORY[0x24C1B7B80](v0);

  return 0;
}

id sub_247CC5C94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v13[1] = a1;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA8);
  v6 = type metadata accessor for TulaError();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v8(v4, 0, 1, v6);
    v9 = *v4;
    v10 = v4[8];
    sub_247C27208(v4);
    if (v10 == 1)
    {
      return qword_247D26DD0[v9];
    }
  }

  else
  {
    v8(v4, 1, 1, v6);
    sub_247CC5E04(v4);
    v11 = sub_247D1EC98();
    v9 = [v11 code];
  }

  return v9;
}

uint64_t sub_247CC5E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247CC5E6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_247CC5EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_247CC5F14(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 1) == 0)
  {
    v7 = [v4 navigationController];
    if (!v7)
    {
      return;
    }

    v8 = v7;
    v9 = [v7 presentingViewController];

    if (!v9)
    {
      return;
    }
  }

  v23 = sub_247D1FBB8();
  v10 = sub_247D1FBB8();
  v11 = [v4 navigationItem];
  v12 = [v11 leftBarButtonItem];

  v13 = v23;
  if (v12 && (v12, v14 = [v4 navigationItem], v15 = objc_msgSend(v14, sel_rightBarButtonItem), v14, v13 = v10, v15))
  {
    v16 = v23;
    v23 = v15;
  }

  else
  {
    v17 = v13;
    sub_247C3194C(0, &qword_27EE62FB8);
    sub_247C3194C(0, &unk_27EE62FC0);
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    v16 = v17;

    sub_247D20198();
    v19 = sub_247D20068();
    v20 = [v4 navigationItem];
    v21 = v19;
    v22 = &selRef_setRightBarButtonItem_;
    if (!v12)
    {
      v22 = &selRef_setLeftBarButtonItem_;
    }

    [v20 *v22];
  }
}

void sub_247CC61D4(void *a1)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 addSubview_];

  v5 = [a1 topAnchor];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v6 topAnchor];

  v9 = [v5 constraintEqualToAnchor_];
  [v9 setActive_];

  v10 = [a1 bottomAnchor];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  v13 = [v11 bottomAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  [v14 setActive_];

  v15 = [a1 leadingAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  [v19 setActive_];

  v20 = [a1 trailingAnchor];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  [v24 setActive_];
}

uint64_t sub_247CC64A4(uint64_t a1, void (*a2)(uint64_t))
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);
}

uint64_t sub_247CC655C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247CC659C()
{
  v1 = v0;
  sub_247D202C8();
  sub_247CF82F8(*v1, *(v1 + 8));
  v2 = sub_247D204D8();

  MEMORY[0x24C1B7B80](0x209380E220, 0xA500000000000000);
  MEMORY[0x24C1B7B80](*(v1 + 32), *(v1 + 40));
  MEMORY[0x24C1B7B80](0xA0C29380E220, 0xA600000000000000);
  MEMORY[0x24C1B7B80](*(v1 + 16), *(v1 + 24));
  return v2;
}

unint64_t sub_247CC6674()
{
  result = qword_27EE634F8;
  if (!qword_27EE634F8)
  {
    type metadata accessor for TulaError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE634F8);
  }

  return result;
}

void sub_247CC66CC()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_loadingTask;
  if (*&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_loadingTask])
  {

    sub_247D1FF28();
  }

  *&v0[v1] = 0;

  [*&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_loadingIndicator] stopAnimating];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_247CCAC2C;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_247CDD038;
  v6[3] = &block_descriptor_10;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v2 animateWithDuration:v4 animations:0.3];
  _Block_release(v4);
}

id sub_247CC6828(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_configuration;
  v5 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_configuration];
  swift_getKeyPath();
  sub_247CCA924();

  sub_247D1F0E8();

  v6 = *(v5 + 48);

  swift_getKeyPath();
  sub_247D1F0E8();

  v7 = *(a1 + 48);
  swift_getKeyPath();

  sub_247D1F0E8();

  v8 = *(a1 + 16);
  v9 = *(a1 + 24);

  sub_247CC6EC0(v8, v9);

  swift_getKeyPath();

  sub_247D1F0E8();

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);

  sub_247CC714C(v10, v11);

  v12 = *&v2[v4];
  swift_getKeyPath();

  sub_247D1F0E8();

  v13 = *(a1 + 48);
  if (*(v12 + 48) == v13)
  {
    *(v12 + 48) = v13;

    if (v6 == v7)
    {
      return result;
    }

    goto LABEL_3;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_247D1F0D8();

  if (v6 != v7)
  {
LABEL_3:
    v15 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_247D26F80;
    *(v16 + 32) = sub_247CC7A54(&OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___heightAspectRatioConstraint, sub_247CC77F4);
    *(v16 + 40) = sub_247CC7A54(&OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___widthAspectRatioConstraint, sub_247CC7928);
    *(v16 + 48) = sub_247CC7A54(&OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___previewWidthConstraint, sub_247CC7AB4);
    sub_247C7C6F8();
    v17 = sub_247D1FDB8();

    [v15 deactivateConstraints_];

    v18 = sub_247CC77F4();
    v19 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___heightAspectRatioConstraint;
    v20 = *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___heightAspectRatioConstraint];
    *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___heightAspectRatioConstraint] = v18;

    v21 = sub_247CC7928();
    v22 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___widthAspectRatioConstraint;
    v23 = *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___widthAspectRatioConstraint];
    *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___widthAspectRatioConstraint] = v21;

    v24 = sub_247CC7AB4();
    v25 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___previewWidthConstraint;
    v26 = *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___previewWidthConstraint];
    *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___previewWidthConstraint] = v24;

    v27 = swift_allocObject();
    v28 = *&v2[v19];
    v29 = *&v2[v22];
    *(v27 + 16) = xmmword_247D26F80;
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    v30 = *&v2[v25];
    *(v27 + 48) = v30;
    v31 = v28;
    v32 = v29;
    v33 = v30;
    v34 = sub_247D1FDB8();

    [v15 activateConstraints_];

    [v2 setNeedsDisplay];
    return [v2 setNeedsLayout];
  }

  return result;
}

void sub_247CC6CA0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_isDeviceInFocus);
  *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_isDeviceInFocus) = a1;
  if (v2 != (a1 & 1))
  {
    v4 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureBorderLayer);
    v5 = objc_allocWithZone(MEMORY[0x277D75348]);
    if (a1)
    {
      v6 = 0.2;
      v7 = 0.78;
      v8 = 0.35;
    }

    else
    {
      v6 = 0.29;
      v7 = 0.62;
      v8 = 0.97;
    }

    v9 = [v5 initWithRed:v6 green:v7 blue:v8 alpha:1.0];
    v10 = [v9 CGColor];

    [v4 setStrokeColor_];
  }
}

uint64_t sub_247CC6DAC()
{
  swift_getKeyPath();
  sub_247CCA924();
  sub_247D1F0E8();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_247CC6E2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_247CCA924();
  sub_247D1F0E8();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_247CC6EC0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_247D20538() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_247CCA924();
    sub_247D1F0D8();
  }
}

uint64_t sub_247CC6FF0()
{
  swift_getKeyPath();
  sub_247CCA924();
  sub_247D1F0E8();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_247CC7070@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_247CCA924();
  sub_247D1F0E8();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t keypath_set_6Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_247CC714C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_247D20538() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_247CCA924();
    sub_247D1F0D8();
  }
}

double sub_247CC727C()
{
  swift_getKeyPath();
  sub_247CCA924();
  sub_247D1F0E8();

  return *(v0 + 48);
}

double sub_247CC72EC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_247CCA924();
  sub_247D1F0E8();

  result = *(v3 + 48);
  *a2 = result;
  return result;
}

void sub_247CC7364(double a1)
{
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_247CCA924();
    sub_247D1F0D8();
  }
}

uint64_t sub_247CC744C()
{

  v1 = OBJC_IVAR____TtCC18CosmeticAssessment33AperturedCameraSessionOverlayView13Configuration___observationRegistrar;
  v2 = sub_247D1F108();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_247CC74F8()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___userHintView;
  v2 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___userHintView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___userHintView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_hintViewConfiguration + 16);
    v11 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_hintViewConfiguration);
    v12 = v4;
    v13 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_hintViewConfiguration + 32);
    v5 = objc_allocWithZone(type metadata accessor for UserHintView());
    v6 = v0;
    v7 = sub_247CBA5A4(&v11);
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setAlpha_];

    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_247CC75CC()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___instructionsView;
  v2 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___instructionsView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___instructionsView);
  }

  else
  {
    sub_247CC7630();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_247CC7630()
{
  v0 = type metadata accessor for CosmeticInstructionsLabelView();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = (&v10 - v4);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63CD8);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AperturedCameraSessionOverlayView.Configuration();
  sub_247CCA924();

  sub_247D1F978();
  sub_247CCAB34(v5, v3);
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63CE0));
  v7 = sub_247D1F6A8();
  v8 = [v7 view];

  if (v8)
  {
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_247CCAB98(v5);
  }

  else
  {
    __break(1u);
  }
}

id sub_247CC77F4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutGuideView) heightAnchor];
  v2 = [*(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutContainerView) widthAnchor];
  v3 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_configuration);
  swift_getKeyPath();
  sub_247CCA924();

  sub_247D1F0E8();

  v4 = *(v3 + 48);

  v5 = [v1 constraintEqualToAnchor:v2 multiplier:1.0 / v4];

  LODWORD(v6) = 1144750080;
  [v5 setPriority_];
  return v5;
}

id sub_247CC7928()
{
  v1 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutGuideView);
  v2 = [v1 widthAnchor];
  v3 = [v1 heightAnchor];
  v4 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_configuration);
  swift_getKeyPath();
  sub_247CCA924();

  sub_247D1F0E8();

  v5 = *(v4 + 48);

  v6 = [v2 constraintEqualToAnchor:v3 multiplier:v5];

  LODWORD(v7) = 1144750080;
  [v6 setPriority_];
  return v6;
}

id sub_247CC7A54(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_247CC7AB4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_imagePreviewView) widthAnchor];
  v2 = [*(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutGuideView) heightAnchor];
  v3 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_configuration);
  swift_getKeyPath();
  sub_247CCA924();

  sub_247D1F0E8();

  v4 = *(v3 + 48);

  v5 = [v1 constraintEqualToAnchor:v2 multiplier:v4 constant:28.0];

  LODWORD(v6) = 1144750080;
  [v5 setPriority_];
  return v5;
}

id sub_247CC7BE8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureLayerMask;
  v4 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v4 setFillRule_];
  *&v2[v3] = v4;
  v5 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureBorderLayer;
  v6 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.29 green:0.62 blue:0.97 alpha:1.0];
  v8 = [v7 CGColor];

  [v6 setStrokeColor_];
  [v6 setLineWidth_];
  *&v2[v5] = v6;
  v9 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_blurOverlayView;
  v10 = [objc_opt_self() effectWithStyle_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v9] = v11;
  v12 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutGuideView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  [v13 setBackgroundColor_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v12] = v13;
  v16 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutContainerView;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v18 = [v14 clearColor];
  [v17 setBackgroundColor_];

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v16] = v17;
  *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___userHintView] = 0;
  v19 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_imagePreviewView;
  v20 = [objc_allocWithZone(type metadata accessor for ImagePreviewView()) initWithFrame_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAlpha_];

  *&v2[v19] = v20;
  v21 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_loadingIndicator;
  v22 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v23 = [v14 whiteColor];
  [v22 setColor_];

  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v21] = v22;
  *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___instructionsView] = 0;
  *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___heightAspectRatioConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___widthAspectRatioConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___previewWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_loadingTask] = 0;
  v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_isDeviceInFocus] = 0;
  *&v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_configuration] = a1;
  v24 = &v2[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_hintViewConfiguration];
  v25 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 1) = v25;
  *(v24 + 4) = *(a2 + 32);
  v31.receiver = v2;
  v31.super_class = ObjectType;

  v26 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_247CC7FF8();

  return v26;
}

void sub_247CC7FF8()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  [v0 setContentMode_];
  v2 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_blurOverlayView];
  [v0 addSubview_];
  v3 = sub_247CC74F8();
  [v0 addSubview_];

  v4 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_imagePreviewView];
  [v0 addSubview_];
  [v4 addSubview_];
  v5 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutContainerView;
  [*&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutContainerView] addSubview_];
  v6 = [v2 contentView];
  [v6 addSubview_];

  v7 = [v2 contentView];
  v8 = sub_247CC75CC();
  [v7 addSubview_];

  sub_247CC86E0();
  v9 = [v2 layer];
  [v9 setMask_];

  v10 = [v2 layer];
  [v10 addSublayer_];
}

uint64_t sub_247CC81F0(void *a1)
{
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureLayerMask;
  v34 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureLayerMask;
  v3 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v3 setFillRule_];
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureBorderLayer;
  v33 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureBorderLayer;
  v5 = [objc_allocWithZone(MEMORY[0x277CD9F90]) &selRef_commit];
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.29 green:0.62 blue:0.97 alpha:1.0];
  v7 = [v6 CGColor];

  [v5 setStrokeColor_];
  [v5 setLineWidth_];
  *(v1 + v4) = v5;
  v8 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_blurOverlayView;
  v31 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_blurOverlayView;
  v9 = [objc_opt_self() effectWithStyle_];
  v10 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v8) = v10;
  v11 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutGuideView;
  v30 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutGuideView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef_commit];
  v13 = objc_opt_self();
  v14 = [v13 clearColor];
  [v12 setBackgroundColor_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v11) = v12;
  v15 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutContainerView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef_commit];
  v17 = [v13 clearColor];
  [v16 setBackgroundColor_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v15) = v16;
  v18 = v15;
  v19 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___userHintView;
  *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___userHintView) = 0;
  v20 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_imagePreviewView;
  v21 = [objc_allocWithZone(type metadata accessor for ImagePreviewView()) initWithFrame_];
  [v21 off_278EDD5B8 + 2];
  [v21 setAlpha_];

  *(v1 + v20) = v21;
  v22 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_loadingIndicator;
  v23 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v24 = [v13 whiteColor];
  [v23 setColor_];

  [v23 off_278EDD5B8 + 2];
  *(v1 + v22) = v23;
  v25 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___instructionsView;
  *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___instructionsView) = 0;
  v26 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___heightAspectRatioConstraint;
  *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___heightAspectRatioConstraint) = 0;
  v27 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___widthAspectRatioConstraint;
  *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___widthAspectRatioConstraint) = 0;
  v28 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___previewWidthConstraint;
  *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___previewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_loadingTask) = 0;
  *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_isDeviceInFocus) = 0;

  swift_deallocPartialClassInstance();
  return 0;
}

void sub_247CC86E0()
{
  v1 = [v0 constraints];
  sub_247C7C6F8();
  v2 = sub_247D1FDC8();

  if (v2 >> 62)
  {
    v3 = sub_247D203B8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_247D26F90;
    v5 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_blurOverlayView];
    v6 = [v5 topAnchor];
    v7 = [v0 &selRef_setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = [v6 constraintEqualToAnchor_];

    *(v4 + 32) = v8;
    v9 = [v5 leadingAnchor];
    v10 = [v0 leadingAnchor];
    v11 = [v9 &selRef:v10 initWithSuiteName:? + 5];

    *(v4 + 40) = v11;
    v12 = [v5 bottomAnchor];
    v13 = [v0 &selRef_constraintEqualToAnchor_multiplier_ + 5];
    v14 = [v12 &selRef:v13 initWithSuiteName:? + 5];

    *(v4 + 48) = v14;
    v15 = [v5 trailingAnchor];
    v16 = [v0 &selRef_tintColor + 4];
    v17 = [v15 &selRef:v16 initWithSuiteName:? + 5];

    *(v4 + 56) = v17;
    v18 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutContainerView;
    v19 = [*&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutContainerView] &selRef_setTranslatesAutoresizingMaskIntoConstraints_];
    v20 = [v5 safeAreaLayoutGuide];
    v21 = [v20 &selRef_setTranslatesAutoresizingMaskIntoConstraints_];

    v22 = [v19 constraintEqualToAnchor:v21 constant:40.0];
    *(v4 + 64) = v22;
    v23 = [*&v0[v18] leadingAnchor];
    v24 = [v5 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:40.0];

    *(v4 + 72) = v25;
    v26 = [v5 trailingAnchor];
    v97 = v18;
    v27 = [*&v0[v18] trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:40.0];

    *(v4 + 80) = v28;
    v29 = sub_247CC75CC();
    v30 = [v29 topAnchor];

    v31 = [*&v0[v18] bottomAnchor];
    v32 = 20.0;
    v33 = [v30 constraintEqualToAnchor:v31 constant:20.0];

    *(v4 + 88) = v33;
    v34 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___instructionsView;
    v35 = [*&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___instructionsView] leadingAnchor];
    v36 = [v5 safeAreaLayoutGuide];
    v37 = [v36 leadingAnchor];

    v38 = [v35 constraintEqualToAnchor:v37 constant:24.0];
    *(v4 + 96) = v38;
    v39 = [v5 bottomAnchor];
    v40 = [*&v0[v34] bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:20.0];

    *(v4 + 104) = v41;
    v42 = [v5 safeAreaLayoutGuide];
    v43 = [v42 trailingAnchor];

    v44 = [*&v0[v34] trailingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:24.0];

    *(v4 + 112) = v45;
    v46 = [*&v0[v34] heightAnchor];
    v47 = [v5 heightAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 multiplier:0.2];

    *(v4 + 120) = v48;
    v49 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutGuideView];
    v50 = [v49 centerYAnchor];
    v51 = [*&v0[v97] &selRef_setContentMode_];
    v52 = [v50 constraintEqualToAnchor_];

    *(v4 + 128) = v52;
    v53 = [v49 centerXAnchor];
    v54 = [*&v0[v97] &selRef_constraintEqualToAnchor_constant_ + 2];
    v55 = [v53 constraintEqualToAnchor_];

    *(v4 + 136) = v55;
    v56 = [v49 widthAnchor];
    v57 = [*&v0[v97] widthAnchor];
    v58 = [v56 constraintLessThanOrEqualToAnchor_];

    *(v4 + 144) = v58;
    v59 = [v49 heightAnchor];
    v60 = [*&v0[v97] heightAnchor];
    v61 = [v59 constraintLessThanOrEqualToAnchor_];

    *(v4 + 152) = v61;
    v62 = sub_247CC74F8();
    v63 = [v62 &selRef_constraintEqualToAnchor_constant_ + 2];

    v64 = [v49 &selRef_constraintEqualToAnchor_constant_ + 2];
    v65 = [v63 constraintEqualToAnchor_];

    *(v4 + 160) = v65;
    v66 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___userHintView;
    v67 = [*&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___userHintView] centerYAnchor];
    v68 = [v49 centerYAnchor];
    v69 = [v67 constraintEqualToAnchor_];

    *(v4 + 168) = v69;
    v70 = [*&v0[v66] leadingAnchor];
    v71 = [v49 leadingAnchor];
    v72 = [v70 constraintGreaterThanOrEqualToAnchor:v71 constant:20.0];

    *(v4 + 176) = v72;
    v73 = [*&v0[v66] trailingAnchor];
    v74 = [v49 trailingAnchor];
    v75 = [v73 constraintLessThanOrEqualToAnchor:v74 constant:-20.0];

    *(v4 + 184) = v75;
    v76 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_loadingIndicator];
    v77 = [v76 centerXAnchor];
    v78 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_imagePreviewView];
    v79 = [v78 centerXAnchor];
    v80 = [v77 constraintEqualToAnchor_];

    *(v4 + 192) = v80;
    v81 = [v76 centerYAnchor];
    v82 = [v78 centerYAnchor];
    v83 = [v81 constraintEqualToAnchor_];

    *(v4 + 200) = v83;
    *(v4 + 208) = sub_247CC7A54(&OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___heightAspectRatioConstraint, sub_247CC77F4);
    *(v4 + 216) = sub_247CC7A54(&OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___widthAspectRatioConstraint, sub_247CC7928);
    v84 = [v78 centerXAnchor];
    v85 = [*&v0[v97] centerXAnchor];
    v86 = [v84 constraintEqualToAnchor_];

    *(v4 + 224) = v86;
    v87 = [v78 bottomAnchor];
    v88 = [*&v0[v34] topAnchor];
    v89 = [v87 &selRef:v88 initWithSuiteName:? + 5];

    *(v4 + 232) = v89;
    v90 = [v78 topAnchor];
    v91 = [v0 safeAreaLayoutGuide];
    v92 = [v91 topAnchor];

    v93 = [v0 traitCollection];
    v94 = [v93 horizontalSizeClass];

    if (v94 == 2)
    {
      v32 = 30.0;
    }

    v95 = objc_opt_self();
    v96 = [v90 constraintEqualToAnchor:v92 constant:v32];

    *(v4 + 240) = v96;
    *(v4 + 248) = sub_247CC7A54(&OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView____lazy_storage___previewWidthConstraint, sub_247CC7AB4);
    v98 = sub_247D1FDB8();

    [v95 activateConstraints_];
  }
}

void sub_247CC932C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v27.receiver = v4;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_drawRect_, a1, a2, a3, a4);
  v10 = *&v4[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutContainerView];
  v11 = *&v4[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_cutoutGuideView];
  v12 = v10;
  [v11 frame];
  [v12 convertRect:v5 toCoordinateSpace:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [objc_opt_self() bezierPathWithRoundedRect:v14 cornerRadius:{v16, v18, v20, 25.0}];
  v22 = *&v5[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureLayerMask];
  Mutable = CGPathCreateMutable();
  v24 = [v21 CGPath];
  v28 = 0x3FF0000000000000;
  v29 = 0;
  v30 = 0;
  v31 = 0x3FF0000000000000;
  v32 = 0;
  v33 = 0;
  sub_247D20078();

  [*&v5[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_blurOverlayView] frame];
  sub_247D20088();
  [v22 setPath_];

  v25 = *&v5[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_apertureBorderLayer];
  v26 = [v21 CGPath];
  [v25 setPath_];
}

uint64_t sub_247CC95EC()
{
  v1[2] = v0;
  v1[3] = sub_247D1FEA8();
  v1[4] = sub_247D1FE98();
  v3 = sub_247D1FE38();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_247CC9688, v3, v2);
}

uint64_t sub_247CC9688()
{
  v1 = v0[2];
  [v1 bounds];
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v0[7] = v6;
  v7 = [objc_opt_self() whiteColor];
  [v6 setBackgroundColor_];

  [v6 setAlpha_];
  [v1 addSubview_];
  v8 = sub_247D1FE98();
  v0[8] = v8;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *(v9 + 16) = v1;
  *(v9 + 24) = v6;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_247CC9858;
  v11 = MEMORY[0x277D85700];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v10, v8, v11, 0xD00000000000001DLL, 0x8000000247D31610, sub_247CCAD68, v9, v12);
}

uint64_t sub_247CC9858()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_247CC99B8, v3, v2);
}

uint64_t sub_247CC99B8()
{
  v1 = *(v0 + 56);

  [v1 removeFromSuperview];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247CC9A30()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_loadingTask;
  if (*&v0[OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_loadingTask])
  {

    sub_247D1FF28();
  }

  v7 = sub_247D1FEC8();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_247D1FEA8();
  v8 = v0;
  v9 = sub_247D1FE98();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = ObjectType;
  *&v1[v6] = sub_247CD082C(0, 0, v5, &unk_247D27118, v10);
}

uint64_t sub_247CC9BB4(uint64_t a1, void *a2, void *a3)
{
  v19 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE635E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  sub_247D1FEA8();
  v20 = sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v25 = sub_247CCADB0;
  v26 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_247CDD038;
  v24 = &block_descriptor_28_0;
  v10 = _Block_copy(&aBlock);
  v11 = a2;
  v12 = a3;

  (*(v6 + 16))(v8, v19, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v8, v5);
  v25 = sub_247CCAE4C;
  v26 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_247C57D8C;
  v24 = &block_descriptor_34;
  v15 = _Block_copy(&aBlock);

  [v18 animateKeyframesWithDuration:0 delay:v10 options:v15 animations:0.3 completion:0.0];
  _Block_release(v15);
  _Block_release(v10);
}

uint64_t sub_247CC9E8C(void *a1, void *a2)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v16 = sub_247CCAEB8;
  v17 = v5;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_247CDD038;
  v15 = &block_descriptor_40;
  v6 = _Block_copy(&v12);
  v7 = a1;

  [v4 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:0.5];
  _Block_release(v6);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v16 = sub_247CCAEDC;
  v17 = v8;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_247CDD038;
  v15 = &block_descriptor_46;
  v9 = _Block_copy(&v12);
  v10 = a2;

  [v4 addKeyframeWithRelativeStartTime:v9 relativeDuration:0.0 animations:1.0];
  _Block_release(v9);
}

uint64_t sub_247CCA094(uint64_t a1, double a2)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(a1 + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_imagePreviewView) setAlpha_];
}

uint64_t sub_247CCA15C(void *a1)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 setAlpha_];
}

uint64_t sub_247CCA204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_247D20368();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = sub_247D1FEA8();
  v4[7] = sub_247D1FE98();

  return MEMORY[0x2822009F8](sub_247CCA2DC, 0, 0);
}

uint64_t sub_247CCA2DC()
{
  v1 = sub_247D20688();
  v3 = v2;
  sub_247D205A8();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_247CCA3B8;

  return sub_247C2DC04(v1, v3, 0, 0, 1);
}

uint64_t sub_247CCA3B8()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];

    (*(v4 + 8))(v3, v5);
    v6 = sub_247CCA5C4;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v9 = sub_247D1FE38();
    v11 = v10;
    v6 = sub_247CCA538;
    v7 = v9;
    v8 = v11;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_247CCA538()
{

  if ((sub_247D1FF48() & 1) == 0)
  {
    [*(*(v0 + 16) + OBJC_IVAR____TtC18CosmeticAssessment33AperturedCameraSessionOverlayView_loadingIndicator) startAnimating];
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CCA5C4()
{
  v1 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247CCAF14, v1, v0);
}

uint64_t type metadata accessor for AperturedCameraSessionOverlayView.Configuration()
{
  result = qword_27EE63CC0;
  if (!qword_27EE63CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247CCA84C()
{
  result = sub_247D1F108();
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

unint64_t sub_247CCA924()
{
  result = qword_27EE63CD0;
  if (!qword_27EE63CD0)
  {
    type metadata accessor for AperturedCameraSessionOverlayView.Configuration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63CD0);
  }

  return result;
}

double sub_247CCA9B4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 48) = result;
  return result;
}

uint64_t sub_247CCA9C4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_247CCAA04()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_247CCAA44(uint64_t a1)
{
  v2 = sub_247D1F558();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_247D1F5C8();
}

uint64_t sub_247CCAB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CosmeticInstructionsLabelView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CCAB98(uint64_t a1)
{
  v2 = type metadata accessor for CosmeticInstructionsLabelView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247CCABF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247CCAC68()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_247CCACA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C2793C;

  return sub_247CCA204(a1, v4, v5, v6);
}

uint64_t sub_247CCAD70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247CCADB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE635E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_247CCAF4C(uint64_t result, uint64_t a2, double a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v7 = a3 / a2;
      v8 = MEMORY[0x277D84F90];
      v9 = a4 / result;
      do
      {
        if (v5)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_247C804D4(0, *(v8 + 2) + 1, 1, v8);
          }

          v10 = 0;
          v11 = *(v8 + 2);
          v12 = 32 * v11;
          do
          {
            v13 = *(v8 + 3);
            v14 = v11 + 1;
            if (v11 >= v13 >> 1)
            {
              v8 = sub_247C804D4((v13 > 1), v11 + 1, 1, v8);
            }

            *(v8 + 2) = v14;
            v15 = &v8[v12];
            v15[4] = v7 * v6;
            v15[5] = v9 * v10;
            v15[6] = v7;
            v15[7] = v9;
            v12 += 32;
            v11 = v14;
            ++v10;
          }

          while (v5 != v10);
        }

        ++v6;
      }

      while (v6 != a2);
      return v8;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_247CCB094(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = sub_247D1F488();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1F478();
  [a1 extent];
  v15 = sub_247CCAF4C(a2, a3, v13, v14);
  if (v4)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v17 = v15;
    v47 = v10;
    v48 = v9;

    v18 = sub_247D1F468();
    v19 = sub_247D20058();

    v20 = os_log_type_enabled(v18, v19);
    v46[1] = 0;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v50 = v22;
      *v21 = 136315138;
      type metadata accessor for CGRect(0);
      v24 = MEMORY[0x24C1B7C90](v17, v23);
      v26 = sub_247CB03B4(v24, v25, &v50);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_247C1F000, v18, v19, "%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x24C1B9080](v22, -1, -1);
      MEMORY[0x24C1B9080](v21, -1, -1);
    }

    v28 = *(v17 + 16);
    if (v28)
    {
      v29 = 0;
      v30 = (v17 + 56);
      v31 = 0.0;
      v32 = 1.0;
      *&v27 = 134217984;
      v49 = v27;
      do
      {
        v33 = COERCE_DOUBLE(sub_247C31C14(*(v30 - 3), *(v30 - 2), *(v30 - 1), *v30));
        if (v34)
        {
          v35 = sub_247D1F468();
          v36 = sub_247D20038();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = v49;
            *(v37 + 4) = v29;
            _os_log_impl(&dword_247C1F000, v35, v36, "Failed to evaluate %ld.", v37, 0xCu);
            MEMORY[0x24C1B9080](v37, -1, -1);
          }
        }

        else
        {
          if (v32 > v33)
          {
            v32 = v33;
          }

          if (v31 <= v33)
          {
            v31 = v33;
          }
        }

        ++v29;
        v30 += 4;
      }

      while (v28 != v29);

      v38 = v31 - v32;
    }

    else
    {

      v38 = -1.0;
    }

    v39 = sub_247D1F468();
    v40 = sub_247D20058();
    v41 = os_log_type_enabled(v39, v40);
    v43 = v47;
    v42 = v48;
    if (v41)
    {
      v44 = swift_slowAlloc();
      *v44 = 67109632;
      *(v44 + 4) = v38 > a4;
      *(v44 + 8) = 2048;
      *(v44 + 10) = v38;
      *(v44 + 18) = 2048;
      *(v44 + 20) = a4;
      _os_log_impl(&dword_247C1F000, v39, v40, "%{BOOL}d;%f;%f.", v44, 0x1Cu);
      MEMORY[0x24C1B9080](v44, -1, -1);
    }

    (*(v43 + 8))(v12, v42);
    return v38 > a4;
  }

  return v16;
}

uint64_t sub_247CCB524(uint64_t a1)
{
  v2 = sub_247D1FC38();
  MEMORY[0x28223BE20](v2 - 8);
  v80 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_247D1EB88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v84 = &v76 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v83 = &v76 - v12;
  MEMORY[0x28223BE20](v11);
  v82 = &v76 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63220);
  v14 = MEMORY[0x28223BE20](v79);
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  v17 = sub_247D1EE08();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v85 = &v76 - v22;
  v23 = sub_247D1F488();
  v86 = *(v23 - 8);
  v87 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247C36700();
  sub_247D206B8();
  v88 = v25;
  sub_247D1F478();
  sub_247D1EB48();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_247C3674C(v16);
    (*(v5 + 16))(v8, a1, v4);
    v26 = sub_247D1F468();
    v27 = sub_247D20038();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v89[0] = v29;
      *v28 = 136315138;
      sub_247D1EB48();
      v30 = sub_247D1FC68();
      v32 = v31;
      (*(v5 + 8))(v8, v4);
      v33 = sub_247CB03B4(v30, v32, v89);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_247C1F000, v26, v27, "Attempting to make request to bad url: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x24C1B9080](v29, -1, -1);
      MEMORY[0x24C1B9080](v28, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    v34 = v85;
    (*(v18 + 32))(v85, v16, v17);
    (*(v18 + 16))(v21, v34, v17);
    v35 = *(v5 + 16);
    v36 = v82;
    v35(v82, a1, v4);
    v37 = v83;
    v35(v83, a1, v4);
    v35(v84, a1, v4);
    v38 = v81;
    v39 = sub_247D1F468();
    v40 = sub_247D20018();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v90 = v79;
      *v41 = 136446978;
      v78 = v39;
      v42 = sub_247D1ED98();
      v77 = v40;
      v44 = v43;
      v81 = *(v18 + 8);
      (v81)(v21, v17);
      v45 = sub_247CB03B4(v42, v44, &v90);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = sub_247D1EB08();
      if (v47)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0;
      }

      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0xE000000000000000;
      }

      v76 = *(v5 + 8);
      v76(v36, v4);
      v50 = sub_247CB03B4(v48, v49, &v90);

      *(v41 + 14) = v50;
      *(v41 + 22) = 2080;
      v51 = sub_247D1EB58();
      if (v52 >> 60 == 15)
      {
        v53 = 0;
      }

      else
      {
        v53 = v51;
      }

      if (v52 >> 60 == 15)
      {
        v54 = 0xC000000000000000;
      }

      else
      {
        v54 = v52;
      }

      sub_247D1FC28();
      v55 = v37;
      v56 = sub_247D1FC08();
      v58 = v57;
      sub_247C301C8(v53, v54);
      v89[0] = v56;
      v89[1] = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63200);
      v59 = sub_247D1FC68();
      v61 = v60;
      v62 = v55;
      v63 = v76;
      v76(v62, v4);
      v64 = sub_247CB03B4(v59, v61, &v90);

      *(v41 + 24) = v64;
      *(v41 + 32) = 2080;
      v65 = v84;
      v66 = sub_247D1EB28();
      sub_247CCD0F8(v66);

      v67 = sub_247D1FB28();
      v69 = v68;

      v63(v65, v4);
      v70 = sub_247CB03B4(v67, v69, &v90);

      *(v41 + 34) = v70;
      v71 = v78;
      _os_log_impl(&dword_247C1F000, v78, v77, "Making request to: %{public}s\tMethod: %s\tBody: %s\tHeaders: %s", v41, 0x2Au);
      v72 = v79;
      swift_arrayDestroy();
      MEMORY[0x24C1B9080](v72, -1, -1);
      MEMORY[0x24C1B9080](v41, -1, -1);

      (v81)(v85, v17);
    }

    else
    {

      v73 = *(v5 + 8);
      v73(v84, v4);
      v73(v37, v4);
      v73(v36, v4);
      v74 = *(v18 + 8);
      v74(v21, v17);
      v74(v85, v17);
    }
  }

  return (*(v86 + 8))(v88, v87);
}

uint64_t sub_247CCBDDC(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        sub_247D1EB78();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_247CCBF00(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_247CCBFAC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (a3 + 64);
    do
    {
      v9 = v7;
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = *(v8 - 2);
      v15 = *(v8 - 2);
      v16 = v12;
      v17 = v10;
      v18 = v11;

      v13 = a1(&v15);

      LOBYTE(v5) = (v4 != 0) | v13;
      if ((v4 != 0) | v13 & 1)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 5;
    }

    while (v9);
  }

  return v5 & 1;
}

uint64_t sub_247CCC07C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
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
        v8 = MEMORY[0x24C1B8190](v5, a3);
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
      v12 = sub_247D203B8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_247CCC1B8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 40) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  sub_247D1F058();
  *(v5 + 56) = swift_task_alloc();
  v6 = sub_247D1F098();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63220);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  sub_247D1FC38();
  *(v5 + 104) = swift_task_alloc();
  v7 = sub_247D1F488();
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  v8 = sub_247D1EB88();
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 - 8);
  *(v5 + 152) = swift_task_alloc();
  v9 = sub_247D1EE08();
  *(v5 + 160) = v9;
  *(v5 + 168) = *(v9 - 8);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247CCC440, 0, 0);
}

uint64_t sub_247CCC440()
{
  sub_247C906DC(v0[3], v0[4], v0[22]);
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[2];
  sub_247D1EDC8();

  v7 = *(v4 + 8);
  v0[24] = v7;
  v0[25] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  sub_247CCCF08(v1, v6);
  sub_247CCB524(v5);
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_247CCC5F0;
  v9 = v0[19];

  return MEMORY[0x28211ECF8](v9, 0);
}

uint64_t sub_247CCC5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[27] = a1;
  v5[28] = a2;
  v5[29] = a3;
  v5[30] = v3;

  if (v3)
  {
    v6 = sub_247CCCDF8;
  }

  else
  {
    v6 = sub_247CCC708;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_247CCC708()
{
  v74 = v0;
  sub_247C36700();
  sub_247D206B8();
  sub_247D1F478();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 232);
    sub_247D1FC28();
    v4 = sub_247D1FC08();
    if (v5)
    {
      v6 = v5;
      v64 = v4;
      v7 = [v2 URL];
      if (v7)
      {
        v8 = v7;
        sub_247D1EDD8();

        v9 = 0;
      }

      else
      {
        v9 = 1;
      }

      v34 = *(v0 + 160);
      v35 = *(v0 + 168);
      v37 = *(v0 + 88);
      v36 = *(v0 + 96);
      (*(v35 + 56))(v37, v9, 1, v34);
      sub_247CCD388(v37, v36);
      if ((*(v35 + 48))(v36, 1, v34) == 1)
      {
        sub_247C3674C(*(v0 + 96));
        v61 = 0;
        v38 = 0xE000000000000000;
      }

      else
      {
        v39 = *(v0 + 192);
        v40 = *(v0 + 160);
        v41 = *(v0 + 96);
        v61 = sub_247D1ED98();
        v38 = v42;
        v39(v41, v40);
      }

      v43 = *(v0 + 232);

      v44 = sub_247D1F468();
      v45 = sub_247D20028();

      v63 = v45;
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 192);
      v48 = *(v0 + 184);
      v71 = *(v0 + 152);
      v72 = *(v0 + 160);
      v49 = *(v0 + 144);
      v69 = *(v0 + 136);
      v50 = *(v0 + 120);
      v66 = *(v0 + 232);
      v67 = *(v0 + 128);
      v65 = *(v0 + 112);
      if (v46)
      {
        v60 = *(v0 + 192);
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v73[0] = v52;
        *v51 = 136315650;
        v53 = sub_247CB03B4(v61, v38, v73);
        v62 = v48;
        v54 = v53;

        *(v51 + 4) = v54;
        *(v51 + 12) = 2048;
        *(v51 + 14) = [v2 statusCode];

        *(v51 + 22) = 2080;
        v55 = sub_247CB03B4(v64, v6, v73);

        *(v51 + 24) = v55;
        _os_log_impl(&dword_247C1F000, v44, v63, "Request response:\n%s\n\tStatus Code:%ld\n\tBody:%s", v51, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1B9080](v52, -1, -1);
        MEMORY[0x24C1B9080](v51, -1, -1);

        (*(v50 + 8))(v67, v65);
        (*(v49 + 8))(v71, v69);
        v60(v62, v72);
      }

      else
      {

        (*(v50 + 8))(v67, v65);
        (*(v49 + 8))(v71, v69);
        v47(v48, v72);
      }

      v56 = *(v0 + 8);
      v57 = *(v0 + 224);
      v58 = *(v0 + 232);
      v59 = *(v0 + 216);

      return v56(v59, v57, v58);
    }
  }

  v10 = *(v0 + 232);
  v11 = sub_247D1F468();
  v12 = sub_247D20038();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 232);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v73[0] = v15;
    *v14 = 136315138;
    v16 = v13;
    v17 = [v16 description];
    v18 = sub_247D1FBE8();
    v20 = v19;

    v21 = sub_247CB03B4(v18, v20, v73);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_247C1F000, v11, v12, "Bad request response:\n%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x24C1B9080](v15, -1, -1);
    MEMORY[0x24C1B9080](v14, -1, -1);
  }

  v23 = *(v0 + 224);
  v22 = *(v0 + 232);
  v24 = *(v0 + 216);
  v25 = *(v0 + 120);
  v68 = *(v0 + 112);
  v70 = *(v0 + 128);
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  v28 = *(v0 + 64);
  sub_247D1F008();
  sub_247CD0244(MEMORY[0x277D84F90]);
  sub_247CCD330();
  sub_247D1EC88();
  sub_247D1F068();
  (*(v27 + 8))(v26, v28);
  swift_willThrow();
  sub_247C301C8(v24, v23);

  (*(v25 + 8))(v70, v68);
  v29 = *(v0 + 192);
  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  v29(v30, v31);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_247CCCDF8()
{
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[20];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_247CCCF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_247D1EE08();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_247D1EB38();
  sub_247D1EB18();
  sub_247CCBDDC(*(a2 + 40));
  sub_247D1EB78();
  sub_247D1EB78();
  sub_247C3E6D4(*(a2 + 8), *(a2 + 16));
  return sub_247D1EB68();
}

uint64_t sub_247CCD0A0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_247D20538() & 1;
  }
}

uint64_t sub_247CCD0F8(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = sub_247CD8184(MEMORY[0x277D84F90]);
  }

  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();

  v8 = 0;
  v17 = v1;
  v18 = v1;
LABEL_7:
  v9 = v8;
  if (!v5)
  {
    goto LABEL_9;
  }

  do
  {
    v8 = v9;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(v1 + 48) + ((v8 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];
    v19[0] = *v11;
    v19[1] = v12;
    MEMORY[0x28223BE20](result);
    v16[2] = v19;

    if (sub_247CCBF00(sub_247CCD3F8, v16, &unk_2859D5CE8))
    {

      v14 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19[0] = v14;
      sub_247CD76FC(0x657463616465723CLL, 0xEA00000000003E64, v13, v12, isUniquelyReferenced_nonNull_native);

      result = swift_bridgeObjectRelease_n();
      v17 = v19[0];
      v1 = v18;
      goto LABEL_7;
    }

    v9 = v8;
    v1 = v18;
  }

  while (v5);
LABEL_9:
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      swift_arrayDestroy();
      return v17;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_247CCD330()
{
  result = qword_27EE62C18;
  if (!qword_27EE62C18)
  {
    sub_247D1F098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE62C18);
  }

  return result;
}

uint64_t sub_247CCD388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CCD3F8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_247D20538() & 1;
  }
}

id sub_247CCD450(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FlowResponse(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247CCD5E4(a1, v6);
  v7 = *(v6 + 6);
  if (*(v7 + 16) && (v8 = sub_247CCFDA8(0xD000000000000015, 0x8000000247D316C0), (v9 & 1) != 0) && (v10 = (*(v7 + 56) + 16 * v8), v11 = *v10, v12 = v10[1], , v13 = sub_247CECA84(v11, v12), v15 = v14, , (v15 & 1) == 0))
  {
    sub_247CCD648(v6);
    v16 = MEMORY[0x277CE59A8];
    if (v13 == 1)
    {
      v16 = MEMORY[0x277CE5978];
    }

    if (!v13)
    {
      v16 = MEMORY[0x277CE5968];
    }
  }

  else
  {
    sub_247CCD648(v6);
    v16 = MEMORY[0x277CE59A8];
  }

  v17 = *v16;
  if ([a2 supportsAVCaptureSessionPreset_])
  {
    sub_247CCD648(a1);

    return v17;
  }

  else
  {
    v19 = *MEMORY[0x277CE5988];

    sub_247CCD648(a1);
    return v19;
  }
}

uint64_t sub_247CCD5E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CCD648(uint64_t a1)
{
  v2 = type metadata accessor for FlowResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247CCD6A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63CE8);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63CF0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63CF8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63D00);
  sub_247D1F138();
  sub_247CCDAA4();
  sub_247D1F128();
  v25 = a1;
  sub_247D1FD68();
  sub_247D1F148();

  v17 = *(v5 + 8);
  v17(v8, v4);
  v17(v10, v4);
  v19 = v26;
  v18 = v27;
  sub_247CCDB08(v16, v14);
  if ((*(v19 + 48))(v14, 1, v18) == 1)
  {
    sub_247CCDB78(v16);

    return v25;
  }

  else
  {
    v21 = v24;
    (*(v19 + 32))(v24, v14, v18);
    sub_247D1F158();

    v22 = MEMORY[0x24C1B7B40](v28, v29, v30, v31);

    (*(v19 + 8))(v21, v18);
    sub_247CCDB78(v16);
    return v22;
  }
}

unint64_t sub_247CCDAA4()
{
  result = qword_27EE63D08;
  if (!qword_27EE63D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE63CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63D08);
  }

  return result;
}

uint64_t sub_247CCDB08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63CF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CCDB78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247CCDBE0(uint64_t a1, uint64_t a2)
{
  v3[111] = v2;
  v3[110] = a2;
  v3[109] = a1;
  v5 = sub_247D20368();
  v3[112] = v5;
  v3[113] = *(v5 - 8);
  v3[114] = swift_task_alloc();
  sub_247D1FC38();
  v3[115] = swift_task_alloc();
  v6 = sub_247D1EF78();
  v3[116] = v6;
  v3[117] = *(v6 - 8);
  v3[118] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[119] = v7;
  *v7 = v3;
  v7[1] = sub_247CCDD6C;

  return sub_247CCF534((v3 + 27), a1);
}

uint64_t sub_247CCDD6C()
{
  v2 = *v1;
  *(*v1 + 960) = v0;

  v3 = *(v2 + 888);
  if (v0)
  {
    v4 = sub_247CCEF60;
  }

  else
  {
    v4 = sub_247CCDE98;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_247CCDE98()
{
  v41 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 944);
  v3 = *(v0 + 936);
  v4 = *(v0 + 928);
  v5 = *(v0 + 888);
  v6 = *(v0 + 256);
  *(v0 + 832) = v6;
  v7 = *(v0 + 232);
  v8 = *(v0 + 248);
  *(v0 + 352) = *(v0 + 280);
  *(v0 + 288) = *(v0 + 216);
  *(v0 + 304) = v7;
  v9 = *(v0 + 264);
  *(v0 + 320) = v8;
  *(v0 + 336) = v9;

  sub_247D1EF68();
  v10 = sub_247D1EF58();
  v12 = v11;
  *(v0 + 968) = v10;
  *(v0 + 976) = v11;
  (*(v3 + 8))(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247D246B0;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x8000000247D31800;
  v14 = *(v5 + 144);
  *(inited + 48) = *(v5 + 136);
  *(inited + 56) = v14;
  strcpy((inited + 64), "X-Apple-Txn-ID");
  *(inited + 79) = -18;
  *(inited + 80) = v10;
  *(inited + 88) = v12;
  *(inited + 96) = 0x6567412D72657355;
  *(inited + 104) = 0xEA0000000000746ELL;
  v15 = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_userAgent + 8);
  *(inited + 112) = *(v5 + OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_userAgent);
  *(inited + 120) = v15;

  v16 = sub_247CD8184(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63D48);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 864) = v6;
  sub_247CCFF20(v16, sub_247CCFED8, 0, isUniquelyReferenced_nonNull_native, (v0 + 864));
  if (v1)
  {
  }

  else
  {

    sub_247C27100(v0 + 832, &qword_27EE63D50);
    *(v0 + 328) = *(v0 + 864);
    *(v0 + 984) = OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_log;
    v19 = *(v0 + 304);
    *(v0 + 360) = *(v0 + 288);
    *(v0 + 376) = v19;
    v20 = *(v0 + 336);
    *(v0 + 392) = *(v0 + 320);
    *(v0 + 408) = v20;
    *(v0 + 424) = *(v0 + 352);

    sub_247CD01E8(v0 + 360, v0 + 432);
    v21 = sub_247D1F468();
    v22 = sub_247D20058();
    sub_247C82A58(v0 + 360);

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40[0] = v24;
      *v23 = 136446466;
      v25 = *(v0 + 392);
      v26 = "le/upload/tokens";
      v27 = "v2/ast2-tula/file/status";
      if (v25 == 2)
      {
        v28 = 0xD000000000000019;
      }

      else
      {
        v28 = 0xD000000000000018;
      }

      if (v25 != 2)
      {
        v27 = "";
      }

      v29 = 0xD000000000000020;
      if (*(v0 + 392))
      {
        v26 = "v1/ast2-tula/session/init";
      }

      else
      {
        v29 = 0xD000000000000018;
      }

      if (*(v0 + 392) <= 1u)
      {
        v30 = v29;
      }

      else
      {
        v30 = v28;
      }

      if (*(v0 + 392) <= 1u)
      {
        v31 = v26;
      }

      else
      {
        v31 = v27;
      }

      v32 = sub_247CB03B4(v30, v31 | 0x8000000000000000, v40);

      *(v23 + 4) = v32;
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_247CB03B4(v10, v12, v40);
      _os_log_impl(&dword_247C1F000, v21, v22, "Making request for path: %{public}s – %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1B9080](v24, -1, -1);
      MEMORY[0x24C1B9080](v23, -1, -1);
    }

    v33 = *(v0 + 888);
    swift_beginAccess();
    v34 = *(v0 + 336);
    *(v0 + 176) = *(v0 + 320);
    *(v0 + 192) = v34;
    *(v0 + 208) = *(v0 + 352);
    v35 = *(v0 + 304);
    *(v0 + 144) = *(v0 + 288);
    *(v0 + 160) = v35;
    v36 = *(v33 + 14);
    v37 = *(v33 + 15);
    v38 = v33[16];
    v39 = swift_task_alloc();
    *(v0 + 992) = v39;
    *v39 = v0;
    v39[1] = sub_247CCE35C;

    return sub_247CCC1B8(v0 + 144, v36, v37, v38);
  }
}

uint64_t sub_247CCE35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[125] = a1;
  v5[126] = a2;
  v5[127] = a3;
  v5[128] = v3;

  if (v3)
  {
    v6 = v5[111];

    v7 = sub_247CCF0FC;
    v8 = v6;
  }

  else
  {
    v8 = v5[111];
    v7 = sub_247CCE490;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_247CCE490()
{
  v53 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  sub_247C30174(v2, v1);
  v3 = sub_247D1F468();
  v4 = sub_247D20028();
  sub_247C301C8(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v52[0] = v6;
    *v5 = 136315138;
    sub_247D1FC28();
    v7 = sub_247D1FC08();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 0x61746164206F4ELL;
      v9 = 0xE700000000000000;
    }

    v10 = sub_247CB03B4(v7, v9, v52);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_247C1F000, v3, v4, "Response: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x24C1B9080](v6, -1, -1);
    MEMORY[0x24C1B9080](v5, -1, -1);
  }

  v11 = *(v0 + 1016);

  v12 = v11;
  v13 = sub_247D1F468();
  v14 = sub_247D20058();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v52[0] = v16;
    *v15 = 136446466;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    v18 = v17;
    if (v17)
    {
      v17 = [v17 statusCode];
    }

    v19 = v18 == 0;
    v20 = *(v0 + 976);
    v21 = *(v0 + 968);
    *(v0 + 816) = v17;
    *(v0 + 824) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE632B0);
    v22 = sub_247D1FC68();
    v24 = sub_247CB03B4(v22, v23, v52);

    *(v15 + 4) = v24;
    *(v15 + 12) = 2082;
    v25 = sub_247CB03B4(v21, v20, v52);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_247C1F000, v13, v14, "Request completed with status code: %{public}s) – %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B9080](v16, -1, -1);
    MEMORY[0x24C1B9080](v15, -1, -1);
  }

  else
  {
  }

  v26 = *(v0 + 1024);
  v27 = sub_247CD0354(*(v0 + 1000), *(v0 + 1008), *(v0 + 1016));
  if (v26)
  {
    v29 = *(v0 + 1016);
    v30 = *(v0 + 1008);
    v31 = *(v0 + 1000);
    v32 = *(v0 + 336);
    *(v0 + 608) = *(v0 + 320);
    *(v0 + 624) = v32;
    *(v0 + 640) = *(v0 + 352);
    v33 = *(v0 + 304);
    *(v0 + 576) = *(v0 + 288);
    *(v0 + 592) = v33;
    sub_247C82A58(v0 + 576);

    v34 = sub_247C301C8(v31, v30);
    *(v0 + 1032) = v26;
    v37 = *(v0 + 880);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    *(v0 + 1040) = v39;
    if (v38)
    {
      __break(1u);
    }

    else
    {
      if (v39 > 3)
      {
        swift_getErrorValue();
        if ((sub_247CC326C(*(v0 + 776), *(v0 + 784)) & 1) == 0)
        {
LABEL_16:
          swift_willThrow();

          v42 = *(v0 + 8);

          return v42();
        }

LABEL_15:
        v40 = *(*(v0 + 872) + 32);
        sub_247CB0868();
        swift_allocError();
        *v41 = v26;
        *(v41 + 8) = v40;
        goto LABEL_16;
      }

      swift_getErrorValue();
      if ((sub_247CC2170(*(v0 + 728), *(v0 + 736)) & 1) == 0)
      {
        swift_getErrorValue();
        if ((sub_247CC326C(*(v0 + 752), *(v0 + 760)) & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      *(v0 + 1048) = *(*(v0 + 872) + 64);
      v34 = sub_247CCEA1C;
      v35 = 0;
      v36 = 0;
    }

    return MEMORY[0x2822009F8](v34, v35, v36);
  }

  v44 = *(v0 + 1016);
  v45 = *(v0 + 1008);
  v46 = *(v0 + 1000);
  v47 = *(v0 + 336);
  *(v0 + 680) = *(v0 + 320);
  *(v0 + 696) = v47;
  *(v0 + 712) = *(v0 + 352);
  v48 = *(v0 + 304);
  *(v0 + 648) = *(v0 + 288);
  *(v0 + 664) = v48;
  v49 = v27;
  v50 = v28;
  sub_247C82A58(v0 + 648);

  sub_247C301C8(v46, v45);

  v51 = *(v0 + 8);

  return v51(v49, v50);
}

uint64_t sub_247CCEA1C()
{
  v1 = sub_247D20688();
  v3 = v2;
  sub_247D205A8();
  v4 = swift_task_alloc();
  *(v0 + 1056) = v4;
  *v4 = v0;
  v4[1] = sub_247CCEAF8;

  return sub_247C2DC04(v1, v3, 0, 0, 1);
}

uint64_t sub_247CCEAF8()
{
  v2 = *v1;
  v3 = *v1;
  v2[133] = v0;

  v4 = v2[114];
  v5 = v2[113];
  v6 = v2[112];
  if (v0)
  {
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_247CCEE1C, 0, 0);
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    v2[134] = v7;
    *v7 = v3;
    v7[1] = sub_247CCECD8;
    v8 = v2[130];
    v9 = v2[109];

    return sub_247CCDBE0(v9, v8);
  }
}

uint64_t sub_247CCECD8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[135] = v2;

  v7 = v6[111];
  if (v2)
  {
    v8 = sub_247CCF2B8;
  }

  else
  {
    v6[136] = a2;
    v6[137] = a1;
    v8 = sub_247CCEEC4;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_247CCEE38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CCEEC4()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_247CCEF60(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[120];
  v3[129] = v4;
  v5 = v3[110];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  v3[130] = v7;
  if (v6)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  if (v7 <= 3)
  {
    swift_getErrorValue();
    if ((sub_247CC2170(v3[91], v3[92]) & 1) == 0)
    {
      swift_getErrorValue();
      if ((sub_247CC326C(v3[94], v3[95]) & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_4;
    }

    v3[131] = *(v3[109] + 64);
    a1 = sub_247CCEA1C;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  swift_getErrorValue();
  if (sub_247CC326C(v3[97], v3[98]))
  {
LABEL_4:
    v8 = *(v3[109] + 32);
    sub_247CB0868();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v8;
  }

LABEL_10:
  swift_willThrow();

  v10 = v3[1];

  return v10();
}

uint64_t sub_247CCF0FC()
{
  v1 = *(v0 + 336);
  *(v0 + 536) = *(v0 + 320);
  *(v0 + 552) = v1;
  *(v0 + 568) = *(v0 + 352);
  v2 = *(v0 + 304);
  *(v0 + 504) = *(v0 + 288);
  *(v0 + 520) = v2;
  v3 = sub_247C82A58(v0 + 504);
  v6 = *(v0 + 1024);
  *(v0 + 1032) = v6;
  v7 = *(v0 + 880);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  *(v0 + 1040) = v9;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  if (v9 <= 3)
  {
    swift_getErrorValue();
    if ((sub_247CC2170(*(v0 + 728), *(v0 + 736)) & 1) == 0)
    {
      swift_getErrorValue();
      if ((sub_247CC326C(*(v0 + 752), *(v0 + 760)) & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_4;
    }

    *(v0 + 1048) = *(*(v0 + 872) + 64);
    v3 = sub_247CCEA1C;
    v4 = 0;
    v5 = 0;

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  swift_getErrorValue();
  if (sub_247CC326C(*(v0 + 776), *(v0 + 784)))
  {
LABEL_4:
    v10 = *(*(v0 + 872) + 32);
    sub_247CB0868();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v10;
  }

LABEL_10:
  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_247CCF2B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CCF344()
{
  sub_247C91380(*(v0 + 112), *(v0 + 120));

  v1 = OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_log;
  v2 = sub_247D1F488();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_baaHeadersProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_currentDeviceDetailsProvider);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for URLSessionAPIProvider()
{
  result = qword_27EE63D30;
  if (!qword_27EE63D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247CCF45C()
{
  result = sub_247D1F488();
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

uint64_t sub_247CCF534(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return MEMORY[0x2822009F8](sub_247CCF558, v2, 0);
}

uint64_t sub_247CCF558()
{
  v39 = v0;
  v1 = *(v0 + 320);
  v2 = *v1;
  *(v0 + 392) = *v1;
  v3 = *(v1 + 8);
  *(v0 + 336) = v3;
  v4 = *(v1 + 16);
  *(v0 + 344) = v4;
  if (v4 >> 60 == 15 || (v2 & 1) != 0)
  {
    goto LABEL_29;
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2 && *(v3 + 16) != *(v3 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

  if (v5)
  {
    if (v3 != v3 >> 32)
    {
      goto LABEL_9;
    }

LABEL_29:
    v27 = *(v1 + 40);
    v28 = *(v1 + 32);
    sub_247CD01E8(v1, v0 + 16);
    v30 = *(v0 + 312);
    v29 = *(v0 + 320);
    v31 = *(v29 + 64);
    v32 = *(v29 + 48);
    v33 = *(v29 + 56);
    v34 = *(v29 + 24);
    v35 = *(v0 + 336);
    *v30 = *(v0 + 392);
    *(v30 + 8) = v35;
    *(v30 + 24) = v34;
    *(v30 + 32) = v28;
    *(v30 + 40) = v27;
    *(v30 + 48) = v32;
    *(v30 + 56) = v33;
    *(v30 + 64) = v31;
    v36 = *(v0 + 8);

    return v36();
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_9:
  *(v0 + 352) = OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_log;
  v6 = v1;
  sub_247CD01E8(v1, v0 + 88);
  v7 = sub_247D1F468();
  v8 = sub_247D20058();
  sub_247C82A58(v6);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 320);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v10 = 136446210;
    v12 = *(v9 + 32);
    v13 = "le/upload/tokens";
    v14 = "v2/ast2-tula/file/status";
    if (v12 == 2)
    {
      v15 = 0xD000000000000019;
    }

    else
    {
      v15 = 0xD000000000000018;
    }

    if (v12 != 2)
    {
      v14 = "";
    }

    v16 = 0xD000000000000020;
    if (*(v9 + 32))
    {
      v13 = "v1/ast2-tula/session/init";
    }

    else
    {
      v16 = 0xD000000000000018;
    }

    if (*(v9 + 32) <= 1u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    if (*(v9 + 32) <= 1u)
    {
      v18 = v13;
    }

    else
    {
      v18 = v14;
    }

    v19 = sub_247CB03B4(v17, v18 | 0x8000000000000000, &v38);

    *(v10 + 4) = v19;
    _os_log_impl(&dword_247C1F000, v7, v8, "Signing: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x24C1B9080](v11, -1, -1);
    MEMORY[0x24C1B9080](v10, -1, -1);
  }

  v21 = *(v0 + 320);
  v20 = *(v0 + 328);
  *(v0 + 393) = *(v21 + 32);
  v22 = *(v20 + OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_baaHeadersProvider + 24);
  v23 = *(v20 + OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_baaHeadersProvider + 32);
  __swift_project_boxed_opaque_existential_1((v20 + OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_baaHeadersProvider), v22);
  v24 = *(v23 + 8);
  sub_247CD01E8(v21, v0 + 160);
  v37 = (v24 + *v24);
  v25 = swift_task_alloc();
  *(v0 + 360) = v25;
  *v25 = v0;
  v25[1] = sub_247CCF90C;

  return v37(v3, v4, v22, v23);
}

uint64_t sub_247CCF90C(uint64_t a1)
{
  v3 = *v2;
  v3[46] = a1;
  v3[47] = v1;

  v4 = v3[41];
  if (v1)
  {
    v5 = sub_247CCFB6C;
  }

  else
  {
    v6 = *(v3[40] + 40);
    v3[48] = v6;
    v3[38] = v6;
    v5 = sub_247CCFA30;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_247CCFA30()
{
  v18 = v0;
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v1;
  sub_247CCFF20(v3, sub_247CCFED8, 0, isUniquelyReferenced_nonNull_native, &v17);
  if (v2)
  {
  }

  else
  {

    sub_247C27100(v0 + 304, &qword_27EE63D50);
    v6 = v17;
    v7 = *(v0 + 393);
    v8 = *(v0 + 392);
    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = *(v9 + 64);
    v12 = *(v9 + 48);
    v13 = *(v9 + 56);
    v14 = *(v9 + 24);
    LOBYTE(v17) = v13;
    v15 = *(v0 + 336);
    *v10 = v8;
    *(v10 + 8) = v15;
    *(v10 + 24) = v14;
    *(v10 + 32) = v7;
    *(v10 + 40) = v6;
    *(v10 + 48) = v12;
    *(v10 + 56) = v13;
    *(v10 + 64) = v11;
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_247CCFB6C()
{
  v23 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 320);
  sub_247C82A58(v2);
  sub_247CD01E8(v2, v0 + 232);
  v3 = v1;
  v4 = sub_247D1F468();
  v5 = sub_247D20038();
  sub_247C82A58(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 393);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v7 = 136315394;
    v10 = "le/upload/tokens";
    v11 = "v2/ast2-tula/file/status";
    if (v6 == 2)
    {
      v12 = 0xD000000000000019;
    }

    else
    {
      v12 = 0xD000000000000018;
    }

    if (v6 != 2)
    {
      v11 = "";
    }

    v13 = 0xD000000000000020;
    if (v6)
    {
      v10 = "v1/ast2-tula/session/init";
    }

    else
    {
      v13 = 0xD000000000000018;
    }

    if (v6 <= 1)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v6 <= 1)
    {
      v15 = v10;
    }

    else
    {
      v15 = v11;
    }

    v16 = *(v0 + 376);
    v17 = sub_247CB03B4(v14, v15 | 0x8000000000000000, &v22);

    *(v7 + 4) = v17;
    *(v7 + 12) = 2112;
    v18 = v16;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v19;
    *v8 = v19;
    _os_log_impl(&dword_247C1F000, v4, v5, "Failed to sign request %s: %@", v7, 0x16u);
    sub_247C27100(v8, &qword_27EE62EE0);
    MEMORY[0x24C1B9080](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x24C1B9080](v9, -1, -1);
    MEMORY[0x24C1B9080](v7, -1, -1);
  }

  swift_willThrow();
  v20 = *(v0 + 8);

  return v20();
}

unint64_t sub_247CCFDA8(uint64_t a1, uint64_t a2)
{
  sub_247D20618();
  sub_247D1FCB8();
  v4 = sub_247D20658();

  return sub_247CCFE20(a1, a2, v4);
}

unint64_t sub_247CCFE20(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_247D20538())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_247CCFED8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_247CCFF20(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v47 = a5;
  v48 = v7;
  v46 = v11;
  while (v10)
  {
    v57 = a4;
    v18 = v12;
LABEL_14:
    v20 = (v18 << 10) | (16 * __clz(__rbit64(v10)));
    v21 = (*(a1 + 48) + v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(a1 + 56) + v20);
    v25 = *v24;
    v26 = v24[1];
    v56[0] = v22;
    v56[1] = v23;
    v56[2] = v25;
    v56[3] = v26;

    a2(&v52, v56);

    v28 = v52;
    v27 = v53;
    v29 = v55;
    v51 = v54;
    v30 = *a5;
    v32 = sub_247CCFDA8(v52, v53);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_25;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if ((v57 & 1) == 0)
      {
        sub_247CB14C8();
      }
    }

    else
    {
      sub_247CD6C9C(v35, v57 & 1);
      v37 = sub_247CCFDA8(v28, v27);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v32 = v37;
    }

    v10 &= v10 - 1;
    v39 = *a5;
    if (v36)
    {
      v13 = 16 * v32;
      v14 = (v39[7] + 16 * v32);
      v16 = *v14;
      v15 = v14[1];

      v17 = (v39[7] + v13);
      *v17 = v16;
      v17[1] = v15;
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v39[7] + 16 * v32);
      *v41 = v51;
      v41[1] = v29;
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_26;
      }

      v39[2] = v44;
    }

    a4 = 1;
    v12 = v18;
    a5 = v47;
    v7 = v48;
    v11 = v46;
  }

  v19 = v12;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
      sub_247CD0824();
    }

    v10 = *(v7 + 8 * v18);
    ++v19;
    if (v10)
    {
      v57 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_247D20578();
  __break(1u);
  return result;
}

unint64_t sub_247CD0244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637B0);
    v3 = sub_247D203E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_247CD07B4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_247CCFDA8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_247C30320(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_247CD0354(uint64_t a1, unint64_t a2, void *a3)
{
  v21 = a1;
  v6 = sub_247D1F1C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_247D1F058();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_247D1F098();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = a3;
    v15 = [v13 statusCode];
    if ((v15 - 300) >= 0xFFFFFFFFFFFFFF9CLL)
    {
      v16 = v21;
      sub_247C30174(v21, a2);
    }

    else
    {
      if (v15 == 403)
      {
        sub_247D1F048();
        goto LABEL_11;
      }

      if (v15 == 401)
      {
        sub_247D1EFF8();
LABEL_11:
        sub_247CD0244(MEMORY[0x277D84F90]);
        sub_247CD076C(&qword_27EE62C18, MEMORY[0x277CC9AE8]);
        sub_247D1EC88();
        v16 = v11;
        sub_247D1F068();
        (*(v9 + 8))(v11, v8);
        swift_willThrow();

        return v16;
      }

      if ((v15 - 601) < 0xFFFFFFFFFFFFFF37)
      {
        sub_247D1F018();
        goto LABEL_11;
      }

      v18 = type metadata accessor for TulaError();
      sub_247C30174(v21, a2);
      sub_247D1F1B8();
      sub_247D1F1A8();
      sub_247CD076C(&qword_27EE634F8, type metadata accessor for TulaError);
      v19 = swift_allocError();
      sub_247CD076C(&qword_27EE63D58, type metadata accessor for TulaError);
      v16 = v18;
      sub_247D1F308();
      if (v3)
      {

        MEMORY[0x24C1B8DC0](v19, v18);
      }

      else
      {
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_247D1F008();
    sub_247CD0244(MEMORY[0x277D84F90]);
    sub_247CD076C(&qword_27EE62C18, MEMORY[0x277CC9AE8]);
    sub_247D1EC88();
    v16 = v11;
    sub_247D1F068();
    (*(v9 + 8))(v11, v8);
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_247CD076C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247CD07B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CD082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_247C2BD10(a3, v25 - v10, &qword_27EE62FF0);
  v12 = sub_247D1FEC8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_247C27100(v11, &qword_27EE62FF0);
  }

  else
  {
    sub_247D1FEB8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_247D1FE38();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_247D1FC78() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_247C27100(a3, &qword_27EE62FF0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_247C27100(a3, &qword_27EE62FF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_247CD0B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_247C2BD10(a3, v25 - v10, &qword_27EE62FF0);
  v12 = sub_247D1FEC8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_247C27100(v11, &qword_27EE62FF0);
  }

  else
  {
    sub_247D1FEB8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_247D1FE38();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_247D1FC78() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63DE8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_247C27100(a3, &qword_27EE62FF0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_247C27100(a3, &qword_27EE62FF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63DE8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_247CD0E40()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController;
  v2 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
    v5 = [v4 interactivePopGestureRecognizer];
    if (v5)
    {
      v6 = v5;
      [v5 setEnabled_];
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

__n128 DeviceAssessmentViewController.Configuration.init(sessionID:context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v59 = *a3;
  if (qword_27EE62590 != -1)
  {
    swift_once();
  }

  v5 = qword_27EE72C60;
  v6 = [qword_27EE72C60 hostDeviceSerialNumber];
  if (v6)
  {
    v7 = v6;
    v8 = sub_247D1FBE8();
    v57 = v9;
    v58 = v8;
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  v10 = [v5 hostAppOverrideName];
  if (v10)
  {
    v11 = v10;
    v12 = sub_247D1FBE8();
    v55 = v13;
    v56 = v12;
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  v14 = [v5 hostAppOverrideVersion];
  if (v14)
  {
    v15 = v14;
    v16 = sub_247D1FBE8();
    v53 = v17;
    v54 = v16;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v18 = [v5 hostAppOverrideBundleIdentifier];
  if (v18)
  {
    v19 = v18;
    v20 = sub_247D1FBE8();
    v51 = v21;
    v52 = v20;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v22 = [v5 workflowIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = sub_247D1FBE8();
    v49 = v25;
    v50 = v24;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  if ([v5 connectionTimeout] < 1)
  {
    v26 = [v5 transactionIdentifier];
  }

  else
  {
    v26 = [v5 transactionIdentifier];
  }

  v27 = v26;
  if (v27)
  {
    v28 = v27;
    v29 = sub_247D1FBE8();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [v5 environmentURL];
  if (v32)
  {
    v33 = v32;
    v34 = sub_247D1FBE8();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = [v5 environmentURL];
  if (v37)
  {
    v38 = v37;
    v39 = sub_247D1FBE8();
    v41 = v40;

    v37 = sub_247C9101C(v39, v41);
  }

  else
  {
    v42 = 0;
  }

  v63.n128_u64[0] = v58;
  v63.n128_u64[1] = v57;
  v64.n128_u64[0] = v56;
  v64.n128_u64[1] = v55;
  v65.n128_u64[0] = v54;
  v65.n128_u64[1] = v53;
  v66.n128_u64[0] = v52;
  v66.n128_u64[1] = v51;
  v67.n128_u64[0] = v50;
  v67.n128_u64[1] = v49;
  v68.n128_u64[0] = v48;
  v68.n128_u64[1] = v29;
  v69.n128_u64[0] = v31;
  v69.n128_u64[1] = v34;
  v70.n128_u64[0] = v36;
  v70.n128_u64[1] = v37;
  v71 = v42;
  v72[0] = v58;
  v72[1] = v57;
  v72[2] = v56;
  v72[3] = v55;
  v72[4] = v54;
  v72[5] = v53;
  v72[6] = v52;
  v72[7] = v51;
  v72[8] = v50;
  v72[9] = v49;
  v72[10] = v48;
  v72[11] = v29;
  v72[12] = v31;
  v72[13] = v34;
  v72[14] = v36;
  v72[15] = v37;
  v72[16] = v42;
  sub_247CD125C(&v63, v62);
  sub_247CD1294(v72);
  *(&v73[6] + 7) = v69;
  *(&v73[5] + 7) = v68;
  *(&v73[2] + 7) = v65;
  *(&v73[1] + 7) = v64;
  *(&v73[7] + 7) = v70;
  *(v73[8].n128_u64 + 7) = v71;
  *(&v73[3] + 7) = v66;
  *(&v73[4] + 7) = v67;
  *(v73 + 7) = v63;
  v43 = v73[4];
  *(a4 + 97) = v73[5];
  v44 = v73[7];
  *(a4 + 113) = v73[6];
  *(a4 + 129) = v44;
  *(a4 + 144) = *(&v73[7] + 15);
  v45 = v73[0];
  *(a4 + 33) = v73[1];
  result = v73[2];
  v47 = v73[3];
  *(a4 + 49) = v73[2];
  *(a4 + 65) = v47;
  *(a4 + 81) = v43;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v59;
  *(a4 + 17) = v45;
  return result;
}

uint64_t DeviceAssessmentViewController.Configuration.AssessmentContext.rawValue.getter()
{
  if (*v0)
  {
    return 0x5245504C4548;
  }

  else
  {
    return 0x544547524154;
  }
}

uint64_t sub_247CD1310()
{
  v1 = *(*(v0[2] + OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_delegateProvider) + 32);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  v0[3] = v2;
  v3 = *(v1 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    ObjectType = swift_getObjectType();
    v9 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_247CD14A4;
    v6 = v0[2];

    return v9(v6, ObjectType, v3);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_247CD14A4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247CD15E0, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247CD15E0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CD1644(char a1, uint64_t a2)
{
  *(v3 + 96) = v2;
  *(v3 + 312) = a1;
  v4 = *(a2 + 16);
  *(v3 + 104) = *a2;
  *(v3 + 120) = v4;
  *(v3 + 136) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_247CD167C, 0, 0);
}

uint64_t sub_247CD167C()
{
  v77 = v0;
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 136);
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);

    v5 = sub_247D1F468();
    v6 = sub_247D20028();
    sub_247C3EF94(v4, v3, v1);
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_7;
    }

    v64 = *(v0 + 112);
    v65 = *(v0 + 128);
    v63 = *(v0 + 104);
    v7 = *(v0 + 312);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v76 = v10;
    *v8 = 136315394;
    v11 = sub_247C35234(v7);
    v13 = sub_247CB03B4(v11, v12, &v76);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    sub_247C250C8();
    swift_allocError();
    *v14 = v63;
    v14[1] = v64;
    v14[2] = v1;
    v14[3] = v65;
    v14[4] = v2;

    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_247C1F000, v5, v6, "Sending command: %s with error %@", v8, 0x16u);
    sub_247C27100(v9, &qword_27EE62EE0);
    MEMORY[0x24C1B9080](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x24C1B9080](v10, -1, -1);
    v16 = v8;
  }

  else
  {
    v5 = sub_247D1F468();
    v17 = sub_247D20028();
    if (!os_log_type_enabled(v5, v17))
    {
      goto LABEL_7;
    }

    v18 = *(v0 + 312);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v76 = v20;
    *v19 = 136315138;
    v21 = sub_247C35234(v18);
    v23 = sub_247CB03B4(v21, v22, &v76);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_247C1F000, v5, v17, "Sending command: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x24C1B9080](v20, -1, -1);
    v16 = v19;
  }

  MEMORY[0x24C1B9080](v16, -1, -1);
LABEL_7:

  v24 = *(v0 + 312);
  v25 = *(*(*(v0 + 96) + OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_delegateProvider) + 32);
  os_unfair_lock_lock((v25 + 32));
  v26 = *(v25 + 16);
  *(v0 + 144) = v26;
  v27 = *(v25 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v25 + 32));
  if (v24 > 4)
  {
    if (v24 <= 6)
    {
      if (v24 != 5)
      {
        if (v26)
        {
          ObjectType = swift_getObjectType();
          v75 = (v27[9] + *v27[9]);
          v61 = swift_task_alloc();
          *(v0 + 248) = v61;
          *v61 = v0;
          v61[1] = sub_247CD2C04;
          v30 = *(v0 + 96);
          v31 = ObjectType;
          v32 = v27;
          v33 = v75;

          return v33(v30, v31, v32);
        }

        goto LABEL_56;
      }

      if (!v26)
      {
        goto LABEL_56;
      }

      v46 = *(v0 + 136);
      v47 = swift_getObjectType();
      v48 = *(v0 + 104);
      *(v0 + 72) = *(v0 + 120);
      *(v0 + 56) = v48;
      *(v0 + 88) = v46;
      v69 = (v27[7] + *v27[7]);
      v49 = swift_task_alloc();
      *(v0 + 232) = v49;
      *v49 = v0;
      v49[1] = sub_247CD2AB4;
      v38 = *(v0 + 96);
      v39 = v0 + 56;
      v40 = v47;
      v41 = v27;
      v42 = v69;
    }

    else
    {
      if (v24 == 7)
      {
        if (v26)
        {
          v52 = swift_getObjectType();
          v71 = (v27[10] + *v27[10]);
          v53 = swift_task_alloc();
          *(v0 + 264) = v53;
          *v53 = v0;
          v53[1] = sub_247CD2D40;
          v30 = *(v0 + 96);
          v31 = v52;
          v32 = v27;
          v33 = v71;

          return v33(v30, v31, v32);
        }

        goto LABEL_56;
      }

      if (v24 != 8)
      {
        if (v26)
        {
          v56 = swift_getObjectType();
          v73 = (v27[11] + *v27[11]);
          v57 = swift_task_alloc();
          *(v0 + 296) = v57;
          *v57 = v0;
          v57[1] = sub_247CD2FCC;
          v30 = *(v0 + 96);
          v31 = v56;
          v32 = v27;
          v33 = v73;

          return v33(v30, v31, v32);
        }

        goto LABEL_56;
      }

      if (!v26)
      {
        goto LABEL_56;
      }

      v34 = *(v0 + 136);
      v35 = swift_getObjectType();
      v36 = *(v0 + 104);
      *(v0 + 32) = *(v0 + 120);
      *(v0 + 16) = v36;
      *(v0 + 48) = v34;
      v67 = (v27[8] + *v27[8]);
      v37 = swift_task_alloc();
      *(v0 + 280) = v37;
      *v37 = v0;
      v37[1] = sub_247CD2E7C;
      v38 = *(v0 + 96);
      v39 = v0 + 16;
      v40 = v35;
      v41 = v27;
      v42 = v67;
    }

    return v42(v38, v39, v40, v41);
  }

  if (v24 <= 1)
  {
    if (v24)
    {
      if (v26)
      {
        v58 = swift_getObjectType();
        v74 = (v27[3] + *v27[3]);
        v59 = swift_task_alloc();
        *(v0 + 168) = v59;
        *v59 = v0;
        v59[1] = sub_247CD25C4;
        v30 = *(v0 + 96);
        v31 = v58;
        v32 = v27;
        v33 = v74;

        return v33(v30, v31, v32);
      }
    }

    else if (v26)
    {
      v44 = swift_getObjectType();
      v68 = (v27[2] + *v27[2]);
      v45 = swift_task_alloc();
      *(v0 + 152) = v45;
      *v45 = v0;
      v45[1] = sub_247CD2488;
      v30 = *(v0 + 96);
      v31 = v44;
      v32 = v27;
      v33 = v68;

      return v33(v30, v31, v32);
    }
  }

  else if (v24 == 2)
  {
    if (v26)
    {
      v50 = swift_getObjectType();
      v70 = (v27[4] + *v27[4]);
      v51 = swift_task_alloc();
      *(v0 + 184) = v51;
      *v51 = v0;
      v51[1] = sub_247CD2700;
      v30 = *(v0 + 96);
      v31 = v50;
      v32 = v27;
      v33 = v70;

      return v33(v30, v31, v32);
    }
  }

  else if (v24 == 3)
  {
    if (v26)
    {
      v28 = swift_getObjectType();
      v66 = (v27[5] + *v27[5]);
      v29 = swift_task_alloc();
      *(v0 + 200) = v29;
      *v29 = v0;
      v29[1] = sub_247CD283C;
      v30 = *(v0 + 96);
      v31 = v28;
      v32 = v27;
      v33 = v66;

      return v33(v30, v31, v32);
    }
  }

  else if (v26)
  {
    v54 = swift_getObjectType();
    v72 = (v27[6] + *v27[6]);
    v55 = swift_task_alloc();
    *(v0 + 216) = v55;
    *v55 = v0;
    v55[1] = sub_247CD2978;
    v30 = *(v0 + 96);
    v31 = v54;
    v32 = v27;
    v33 = v72;

    return v33(v30, v31, v32);
  }

LABEL_56:
  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_247CD2488()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247CD3108, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247CD25C4()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247CD316C, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247CD2700()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247CD31D0, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247CD283C()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247CD3234, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247CD2978()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247CD3298, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247CD2AB4()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247CD32FC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247CD2C04()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247CD3314, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247CD2D40()
{
  v2 = *v1;
  *(v2 + 272) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247CD3378, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247CD2E7C()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247CD33DC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247CD2FCC()
{
  v2 = *v1;
  *(v2 + 304) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247CD33F4, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247CD3108()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CD316C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CD31D0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CD3234()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CD3298()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CD3314()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CD3378()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CD33F4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CD3458()
{
  sub_247C3F278(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t DeviceAssessmentPeerDeviceSession.delegate.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_delegateProvider) + 32);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  return v2;
}

void sub_247CD34F0(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(*a1 + OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_delegateProvider) + 32);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 32));
  *a2 = v4;
  a2[1] = v5;
}

void sub_247CD354C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*(*a2 + OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_delegateProvider) + 32);
  swift_unknownObjectRetain();
  os_unfair_lock_lock((v4 + 32));
  swift_unknownObjectRelease();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  os_unfair_lock_unlock((v4 + 32));
}

void DeviceAssessmentPeerDeviceSession.delegate.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_delegateProvider) + 32);
  os_unfair_lock_lock((v5 + 32));
  swift_unknownObjectRelease();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  os_unfair_lock_unlock((v5 + 32));
}

void (*DeviceAssessmentPeerDeviceSession.delegate.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_delegateProvider);
  a1[2] = v3;
  v4 = *(v3 + 32);
  os_unfair_lock_lock((v4 + 32));
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v4 + 32));
  *a1 = v5;
  a1[1] = v6;
  return sub_247CD3694;
}

void sub_247CD3694(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *(a1[2] + 32);
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock((v4 + 32));
    swift_unknownObjectRelease();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    os_unfair_lock_unlock((v4 + 32));

    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock((v4 + 32));
    swift_unknownObjectRelease();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;

    os_unfair_lock_unlock((v4 + 32));
  }
}

uint64_t DeviceAssessmentPeerDeviceSession.__allocating_init()()
{
  v0 = swift_allocObject();
  DeviceAssessmentPeerDeviceSession.init()();
  return v0;
}

uint64_t DeviceAssessmentPeerDeviceSession.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63D68);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  sub_247D1F478();
  v5 = OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_delegateProvider;
  type metadata accessor for DeviceAssessmentPeerDeviceSession.DelegateProvider();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63D78);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v6 + 32) = v7;
  *(v0 + v5) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637E8);
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
  sub_247D1FED8();
  (*(v2 + 8))(v4, v1);
  return v0;
}

uint64_t sub_247CD3954(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637E8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63D80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  sub_247C2BD10(v1 + OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_commandReceivedStream, v6, &qword_27EE637E8);
  v11 = *(v4 + 56);
  v15[1] = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63800);
  sub_247D1FEE8();
  (*(v8 + 8))(v10, v7);
  (*(*(v12 - 8) + 8))(&v6[v11], v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637F8);
  return (*(*(v13 - 8) + 8))(v6, v13);
}

Swift::Void __swiftcall DeviceAssessmentPeerDeviceSession.deviceAttitude(_:)(Swift::OpaquePointer a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637E8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63D80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  sub_247C2BD10(v1 + OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_commandReceivedStream, v6, &qword_27EE637E8);
  v11 = *(v4 + 56);
  v14[1] = a1._rawValue;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63800);
  sub_247D1FEE8();
  (*(v8 + 8))(v10, v7);
  (*(*(v12 - 8) + 8))(&v6[v11], v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637F8);
  (*(*(v13 - 8) + 8))(v6, v13);
}

uint64_t DeviceAssessmentPeerDeviceSession.deinit()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_log;
  v2 = sub_247D1F488();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_247C27100(v0 + OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_commandReceivedStream, &qword_27EE637E8);
  return v0;
}

uint64_t DeviceAssessmentPeerDeviceSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_log;
  v2 = sub_247D1F488();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_247C27100(v0 + OBJC_IVAR____TtC18CosmeticAssessment33DeviceAssessmentPeerDeviceSession_commandReceivedStream, &qword_27EE637E8);

  return swift_deallocClassInstance();
}

CosmeticAssessment::DeviceAssessmentViewController::Configuration::AssessmentContext_optional __swiftcall DeviceAssessmentViewController.Configuration.AssessmentContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247D20408();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_247CD3F2C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x5245504C4548;
  }

  else
  {
    v2 = 0x544547524154;
  }

  if (*a2)
  {
    v3 = 0x5245504C4548;
  }

  else
  {
    v3 = 0x544547524154;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_247D20538();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_247CD3FAC()
{
  sub_247D20618();
  sub_247D1FCB8();

  return sub_247D20658();
}

uint64_t sub_247CD401C()
{
  sub_247D1FCB8();
}

uint64_t sub_247CD4070()
{
  sub_247D20618();
  sub_247D1FCB8();

  return sub_247D20658();
}

uint64_t sub_247CD40DC@<X0>(char *a1@<X8>)
{
  v2 = sub_247D20408();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_247CD413C(uint64_t *a1@<X8>)
{
  v2 = 0x544547524154;
  if (*v1)
  {
    v2 = 0x5245504C4548;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t DeviceAssessmentViewController.Configuration.sessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceAssessmentViewController.Configuration.sessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceAssessmentViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DeviceAssessmentViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_247CD4388;
}

void sub_247CD4388(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
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

char *DeviceAssessmentViewController.init(configuration:peerDeviceSession:)(__int128 *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = a1[7];
  v39 = a1[6];
  v40 = v6;
  v7 = a1[9];
  v41 = a1[8];
  v42 = v7;
  v8 = a1[3];
  v35 = a1[2];
  v36 = v8;
  v9 = a1[5];
  v37 = a1[4];
  v38 = v9;
  v10 = a1[1];
  v33 = *a1;
  v34 = v10;
  *&v2[OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController] = 0;
  v11 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_tasks;
  *&v2[v11] = sub_247CD8A60(MEMORY[0x277D84F90]);
  sub_247D1F478();
  v12 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_flowInitiatedTimeStamp;
  v13 = sub_247D1EF48();
  (*(*(v13 - 8) + 56))(&v2[v12], 1, 1, v13);
  *&v2[OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_exitSessionTask] = 0;
  v14 = [objc_opt_self() processInfo];
  v15 = sub_247CD8E34();

  if ((v15 & 1) == 0)
  {
    if (qword_27EE625B8 != -1)
    {
      swift_once();
    }

    v16 = qword_27EE72D00;
    v17 = [objc_opt_self() currentDevice];
    sub_247C914E8(v17, v32);

    sub_247CD7F6C(v32, v16);
    if (qword_27EE62590 != -1)
    {
      swift_once();
    }

    v18 = qword_27EE72C60;
    sub_247CD808C(v18, v16);

    v31[6] = v39;
    v31[7] = v40;
    v31[8] = v41;
    v31[9] = v42;
    v31[2] = v35;
    v31[3] = v36;
    v31[4] = v37;
    v31[5] = v38;
    v31[0] = v33;
    v31[1] = v34;
    sub_247C317E0(&v33, v30);
    sub_247CD7E34(v31, v16);
  }

  v19 = &v2[OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_configuration];
  v20 = v40;
  *(v19 + 6) = v39;
  *(v19 + 7) = v20;
  v21 = v42;
  *(v19 + 8) = v41;
  *(v19 + 9) = v21;
  v22 = v36;
  *(v19 + 2) = v35;
  *(v19 + 3) = v22;
  v23 = v38;
  *(v19 + 4) = v37;
  *(v19 + 5) = v23;
  v24 = v34;
  *v19 = v33;
  *(v19 + 1) = v24;
  *&v2[OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_peerDeviceSession] = a2;
  v29.receiver = v2;
  v29.super_class = ObjectType;

  v25 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
  v26 = sub_247CD0E40();
  [v25 addChildViewController_];

  v27 = *&v25[OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController];
  [v27 didMoveToParentViewController_];

  return v25;
}

Swift::Void __swiftcall DeviceAssessmentViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_247D1EF78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = v0;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v9 = [v0 view];
  if (!v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [objc_opt_self() systemBackgroundColor];
  [v10 setBackgroundColor_];

  if (qword_27EE625A0 != -1)
  {
    swift_once();
  }

  v12 = sub_247CD0E40();
  v13 = [v12 view];

  if (!v13)
  {
    goto LABEL_9;
  }

  sub_247CC61D4(v13);

  v14 = [*&v0[OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController] interactivePopGestureRecognizer];
  if (v14)
  {
    v15 = v14;
    [v14 setEnabled_];
  }

  [v0 setModalInPresentation_];
  sub_247D1EF68();
  v16 = sub_247D1FEC8();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_247D1FEA8();
  v17 = v0;
  v18 = sub_247D1FE98();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  v21 = sub_247CD082C(0, 0, v4, &unk_247D273D0, v19);
  v22 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_tasks;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *&v17[v22];
  *&v17[v22] = 0x8000000000000000;
  sub_247CD7884(v21, v8, isUniquelyReferenced_nonNull_native);
  (*(v6 + 8))(v8, v5);
  *&v17[v22] = v24;
  swift_endAccess();
}

uint64_t sub_247CD4BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[135] = a4;
  v4[136] = _s15DiagnosticStyleOMa(0);
  v4[137] = swift_task_alloc();
  v5 = sub_247D1EF48();
  v4[138] = v5;
  v4[139] = *(v5 - 8);
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  v4[142] = swift_task_alloc();
  v4[143] = sub_247D1FEA8();
  v4[144] = sub_247D1FE98();
  v6 = swift_task_alloc();
  v4[145] = v6;
  *v6 = v4;
  v6[1] = sub_247CD4D34;

  return sub_247C964B0();
}

uint64_t sub_247CD4D34()
{
  v2 = *v1;
  *(*v1 + 1168) = v0;

  v3 = sub_247D1FE38();
  if (v0)
  {
    *(v2 + 1176) = v3;
    *(v2 + 1184) = v4;
    v5 = sub_247CD4F30;
  }

  else
  {
    v5 = sub_247CD4E9C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}