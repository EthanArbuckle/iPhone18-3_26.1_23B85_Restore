uint64_t sub_20D085F14(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config;
  result = swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

char *sub_20D0860B0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config];
  *v7 = xmmword_20D5BD1F0;
  v7[16] = 1;
  sub_20CECF7A0(a1, &v3[OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_actionSetBuilderContainer]);
  *&v3[OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle] = 0;
  v8 = &v3[OBJC_IVAR___HUActionSetItemModule_filter];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR___HUActionSetItemModule_sortBlock];
  *v9 = sub_20D0D7EEC;
  v9[1] = 0;
  *&v3[OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider] = 0;
  *&v3[OBJC_IVAR___HUActionSetItemModule_home] = a2;
  v17.receiver = v3;
  v17.super_class = type metadata accessor for ActionSetItemModule();
  v10 = a2;
  v11 = objc_msgSendSuper2(&v17, sel_initWithItemUpdater_, a3);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = &v11[OBJC_IVAR___HUActionSetItemModule_filter];
  swift_beginAccess();
  v14 = *v13;
  *v13 = sub_20D0864A0;
  v13[1] = v12;
  v15 = v11;

  sub_20CEC8164(v14);

  return v15;
}

uint64_t sub_20D086258(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 hf_isAnonymous])
    {
      v4 = 0;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_actionSetBuilderContainer], *&v3[OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_actionSetBuilderContainer + 24]);
      v4 = sub_20D565D48();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id ActionSetContainerSummaryGridItemModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionSetContainerSummaryGridItemModule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for ActionSetContainerSummaryGridItemModule.Config(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActionSetContainerSummaryGridItemModule.Config(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_20D0864A8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20CEED7C0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_20CF9DB4C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_20D563818();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_20D089E94(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_20D086570()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = sub_20CF51348(*(v2 + 16), 0);
  v5 = sub_20CF50B0C(&v8, (v4 + 32), v3, v2);
  sub_20D5663C8();
  sub_20CEC80DC();
  if (v5 != v3)
  {
    __break(1u);
LABEL_5:
    v4 = MEMORY[0x277D84F90];
  }

  *(v0 + 16) = v4;

  v1 = *(v0 + 16);
LABEL_7:
  if (v1)
  {
    v6 = v1;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  sub_20D5663C8();
  return v6;
}

uint64_t sub_20D08666C(uint64_t a1, void *a2)
{
  v5 = sub_20D563818();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v9 = [sub_20D5681A8() uniqueIdentifier];
  swift_unknownObjectRelease();
  sub_20D5637E8();

  swift_beginAccess();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_20CEF0274(a1, v8, isUniquelyReferenced_nonNull_native);
  *(v2 + 24) = v16;
  swift_endAccess();
  *(v2 + 16) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BA040;
  *(inited + 32) = a2;
  v12 = a2;
  v13 = sub_20CEF32E4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_20D086854(uint64_t a1, void *a2)
{
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getObjectType();
  v8 = [sub_20D5681A8() uniqueIdentifier];
  swift_unknownObjectRelease();
  sub_20D5637E8();

  swift_beginAccess();
  sub_20D0864A8(v7);
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v2 + 16) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BA040;
  *(inited + 32) = a2;
  v10 = a2;
  v11 = sub_20CEF32E4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_20D086A14()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v5 = [sub_20D5681A8() uniqueIdentifier];
  swift_unknownObjectRelease();
  sub_20D5637E8();

  swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {
    sub_20D5663C8();
    sub_20CEED7C0(v4);
    if (v6)
    {
      v7 = *(v2 + 8);
      swift_unknownObjectRetain();
      v7(v4, v1);
      swift_unknownObjectRelease();

      return 1;
    }
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t SimpleAccessoryRepresentableObjectSelectionController.deinit()
{

  return v0;
}

uint64_t SimpleAccessoryRepresentableObjectSelectionController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20D086D18()
{
  swift_getWitnessTable();

  return sub_20D565ED8();
}

uint64_t sub_20D086D78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28216DBA0](a1, a2, WitnessTable);
}

unint64_t sub_20D086DE4()
{
  result = qword_27C81EAA0;
  if (!qword_27C81EAA0)
  {
    type metadata accessor for SimpleAccessoryRepresentableObjectSelectionController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EAA0);
  }

  return result;
}

char *sub_20D086F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithBarButtonSystemItem:a1 target:0 action:sel_performAction];
  v7 = &v6[OBJC_IVAR___HUNavigationBarButton_actionHandler];
  v8 = *&v6[OBJC_IVAR___HUNavigationBarButton_actionHandler];
  *v7 = a2;
  *(v7 + 1) = a3;
  v9 = v6;

  sub_20CEC8164(v8);
  [v9 setTarget_];

  return v9;
}

char *sub_20D086FAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(v4) initWithImage:a1 style:0 target:0 action:sel_performAction];
  v9 = &v8[OBJC_IVAR___HUNavigationBarButton_actionHandler];
  v10 = *&v8[OBJC_IVAR___HUNavigationBarButton_actionHandler];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11 = v8;

  sub_20CEC8164(v10);
  [v11 setTarget_];

  return v11;
}

id sub_20D087068()
{
  v1 = &v0[OBJC_IVAR___HUNavigationBarButton_buttonIdentifier];
  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___HUNavigationBarButton_badgeValue] = 0;
  v2 = &v0[OBJC_IVAR___HUNavigationBarButton_actionHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR___HUNavigationBarButton____lazy_storage___tapGestureRecognizer] = 0;
  v3 = &v0[OBJC_IVAR___HUNavigationBarButton_badgedSystemImageName];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR___HUNavigationBarButton_systemImageName];
  v5 = type metadata accessor for NavigationBarButton();
  *v4 = 0;
  *(v4 + 1) = 0;
  v8.receiver = v0;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_20D088610();

  return v6;
}

id sub_20D08714C(void *a1)
{
  v3 = &v1[OBJC_IVAR___HUNavigationBarButton_buttonIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___HUNavigationBarButton_badgeValue] = 0;
  v4 = &v1[OBJC_IVAR___HUNavigationBarButton_actionHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR___HUNavigationBarButton____lazy_storage___tapGestureRecognizer] = 0;
  v5 = &v1[OBJC_IVAR___HUNavigationBarButton_badgedSystemImageName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR___HUNavigationBarButton_systemImageName];
  v7 = type metadata accessor for NavigationBarButton();
  *v6 = 0;
  *(v6 + 1) = 0;
  v12.receiver = v1;
  v12.super_class = v7;
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_20D088610();
  }

  return v9;
}

id sub_20D0872B4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D2C8F8]) initWithObject_];
  if (!v1)
  {
    v9.receiver = v0;
    v9.super_class = type metadata accessor for NavigationBarButton();
    v5 = objc_msgSendSuper2(&v9, sel_description);
    v6 = sub_20D567838();
LABEL_8:

    return v6;
  }

  v2 = v1;
  v3 = &v0[OBJC_IVAR___HUNavigationBarButton_buttonIdentifier];
  swift_beginAccess();
  if (*(v3 + 1))
  {
    sub_20D5663C8();
    v4 = sub_20D5677F8();
  }

  else
  {
    v4 = 0;
  }

  v7 = sub_20D5677F8();
  [v2 appendString:v4 withName:v7];

  result = [v2 build];
  if (result)
  {
    v5 = result;
    v6 = sub_20D567838();

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_20D087490(uint64_t a1)
{
  v3 = [v1 target];
  if (v3)
  {
    v4 = v3;
    v5 = sub_20D08858C();
    [v5 removeTarget:v4 action:0];
    swift_unknownObjectRelease();
  }

  v12.receiver = v1;
  v12.super_class = type metadata accessor for NavigationBarButton();
  objc_msgSendSuper2(&v12, sel_setTarget_, a1);
  v6 = [v1 target];
  if (v6)
  {
    v7 = v6;
    v8 = [v1 action];
    if (v8)
    {
      v9 = v8;
      v10 = sub_20D08858C();
      [v10 addTarget:v7 action:v9];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

void sub_20D087630(uint64_t a1)
{
  v3 = [v1 action];
  if (v3)
  {
    v4 = v3;
    v5 = sub_20D08858C();
    [v5 removeTarget:0 action:v4];
  }

  v11.receiver = v1;
  v11.super_class = type metadata accessor for NavigationBarButton();
  objc_msgSendSuper2(&v11, sel_setAction_, a1);
  v6 = [v1 target];
  if (v6)
  {
    v7 = v6;
    v8 = [v1 action];
    if (v8)
    {
      v9 = v8;
      v10 = sub_20D08858C();
      [v10 addTarget:v7 action:v9];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

id sub_20D087730(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for NavigationBarButton();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

void sub_20D0877F8()
{
  v1 = [v0 customView];
  if (v1)
  {
    v8 = v1;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = [v0 menu];
      [v3 setMenu_];

      v5 = v8;
      v6 = [v0 menu];
      v7 = v6;
      if (v6)
      {
      }

      [v3 setShowsMenuAsPrimaryAction_];
    }
  }
}

uint64_t sub_20D087994()
{
  v1 = (v0 + OBJC_IVAR___HUNavigationBarButton_buttonIdentifier);
  swift_beginAccess();
  v2 = *v1;
  sub_20D5663C8();
  return v2;
}

uint64_t sub_20D087A68(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HUNavigationBarButton_buttonIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_20D087AC8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___HUNavigationBarButton_buttonIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_20D5663C8();
}

uint64_t sub_20D087C94()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20D087CF4(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___HUNavigationBarButton_owner;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

void *sub_20D087DD8()
{
  v1 = OBJC_IVAR___HUNavigationBarButton_badgeValue;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20D087E80(id a1)
{
  v3 = OBJC_IVAR___HUNavigationBarButton_badgeValue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    a1 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_20CECF940(0, &qword_28111FB20), a1 = a1, v5 = v4, v6 = sub_20D5683F8(), v5, (v6 & 1) == 0))
  {
LABEL_7:
    sub_20D088D58();

    goto LABEL_8;
  }

  v4 = v5;
LABEL_8:
}

void (*sub_20D087F54(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___HUNavigationBarButton_badgeValue;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_20D087FF0;
}

void sub_20D087FF0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v6 = v2[4];
    v5 = v2[5];
    v7 = *(v6 + v5);
    *(v6 + v5) = v3;
    if (v7)
    {
      if (v3)
      {
        sub_20CECF940(0, &qword_28111FB20);
        v3 = v3;
        v8 = v7;
        v9 = sub_20D5683F8();

        if (v9)
        {

          goto LABEL_10;
        }
      }
    }

    else
    {
      if (!v3)
      {
        goto LABEL_11;
      }

      v3 = v3;
    }

    sub_20D088D58();

    v3 = v7;
    goto LABEL_10;
  }

  v4 = v3;
  sub_20D087E80(v3);
  v3 = v2[3];
LABEL_10:

LABEL_11:

  free(v2);
}

id sub_20D088118()
{
  result = [v0 titleTextAttributesForState_];
  if (result)
  {
    v2 = result;
    type metadata accessor for Key(0);
    sub_20D08B4A0(&qword_28111FE70, type metadata accessor for Key);
    v3 = sub_20D567758();

    if (*(v3 + 16) && (v4 = sub_20CEF9358(*MEMORY[0x277D740A8]), (v5 & 1) != 0))
    {
      sub_20CED43FC(*(v3 + 56) + 32 * v4, v7);

      sub_20CECF940(0, &qword_27C820918);
      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_20D0882A8(id a1)
{
  v2 = v1;
  v4 = [v1 titleTextAttributesForState_];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for Key(0);
    sub_20D08B4A0(&qword_28111FE70, type metadata accessor for Key);
    v6 = sub_20D567758();
  }

  else
  {
    v6 = sub_20CEF488C(MEMORY[0x277D84F90]);
  }

  v15 = v6;
  v7 = *MEMORY[0x277D740A8];
  if (a1)
  {
    v14 = sub_20CECF940(0, &qword_27C820918);
    *&v13 = a1;
    sub_20CEC80B0(&v13, v12);
    v8 = v7;
    a1 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20CEF0440(v12, v8, isUniquelyReferenced_nonNull_native);

    v15 = v6;
  }

  else
  {
    v10 = v7;
    sub_20D089780(sub_20CEF9358, sub_20CF9DDCC, &v13);

    sub_20CEF928C(&v13, &qword_27C81BF00);
  }

  type metadata accessor for Key(0);
  sub_20D08B4A0(&qword_28111FE70, type metadata accessor for Key);
  v11 = sub_20D567738();

  [v2 setTitleTextAttributes:v11 forState:0];
}

void (*sub_20D0884DC(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_20D088118();
  return sub_20D088524;
}

void sub_20D088524(id *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_20D0882A8(v2);
  }

  else
  {
    sub_20D0882A8(*a1);
  }
}

id sub_20D08858C()
{
  v1 = OBJC_IVAR___HUNavigationBarButton____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR___HUNavigationBarButton____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HUNavigationBarButton____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_handleTap_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_20D088610()
{
  v1 = [v0 target];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 action];
    if (v3)
    {
      v4 = v3;
      v5 = sub_20D08858C();
      [v5 addTarget:v2 action:v4];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20D5BA040;
  *(v6 + 32) = sub_20D08858C();
  sub_20CECF940(0, &qword_28111FEB0);
  v7 = sub_20D567A58();

  [v0 _setGestureRecognizers_];
}

id sub_20D088738(char a1, double a2)
{
  v3 = v2;
  v6 = sub_20D567648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D567678();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D567698();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v27 - v19;
  if (a2 <= 0.0)
  {

    return [v3 setEnabled_];
  }

  else
  {
    sub_20CECF940(0, &qword_28111FF30);
    v28 = v7;
    v27 = sub_20D567FC8();
    sub_20D567688();
    sub_20D5676D8();
    v21 = *(v14 + 8);
    v21(v16, v13);
    v22 = swift_allocObject();
    *(v22 + 16) = v3;
    *(v22 + 24) = a1 & 1;
    aBlock[4] = sub_20D08B458;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CFFFE8C;
    aBlock[3] = &block_descriptor_38;
    v23 = _Block_copy(aBlock);
    v24 = v3;

    sub_20D567658();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20D08B4A0(&qword_281120070, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F1F0);
    sub_20CFC41D0();
    sub_20D5686B8();
    v25 = v27;
    MEMORY[0x20F31D440](v20, v12, v9, v23);
    _Block_release(v23);

    (*(v28 + 8))(v9, v6);
    (*(v29 + 8))(v12, v30);
    return (v21)(v20, v13);
  }
}

char *sub_20D088C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([objc_opt_self() isAMac])
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_opt_self() hu_navigationBarGlyphSize];
  }

  v9 = sub_20D5677F8();
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  v11 = sub_20D567F28();
  v12 = &v11[OBJC_IVAR___HUNavigationBarButton_systemImageName];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = v11;

  v14 = &v13[OBJC_IVAR___HUNavigationBarButton_badgedSystemImageName];
  *v14 = a3;
  *(v14 + 1) = a4;

  return v13;
}

void sub_20D088D58()
{
  if (*&v0[OBJC_IVAR___HUNavigationBarButton_badgedSystemImageName + 8] && *&v0[OBJC_IVAR___HUNavigationBarButton_systemImageName + 8])
  {
    v1 = OBJC_IVAR___HUNavigationBarButton_badgeValue;
    swift_beginAccess();
    v2 = *&v0[v1];
    if (v2)
    {
      sub_20D5663C8();
      sub_20D5663C8();
      if (![v2 integerValue])
      {

        v6 = [v0 image];
        v4 = [v6 configuration];

        v5 = sub_20D5677F8();
        goto LABEL_9;
      }
    }

    else
    {
      sub_20D5663C8();
    }

    v3 = [v0 image];
    v4 = [v3 configuration];

    v5 = sub_20D5677F8();
LABEL_9:

    v7 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

    [v0 setImage_];
  }
}

id NavigationBarButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20D089008(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong homeForNavigationBarButton_];
    v5 = [v3 roomForNavigationBarButton_];
    sub_20D088738(0, 0.0);
    v6 = [objc_allocWithZone(HUHomeControlServiceContext) initWithServiceType:1 home:v4 room:v5];
    v7 = sub_20D5677F8();
    v8 = [a1 valueForKey_];

    if (v8)
    {
      sub_20D568628();
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
    }

    v31[0] = v29;
    v31[1] = v30;
    if (*(&v30 + 1))
    {
      sub_20CECF940(0, &qword_28111FB70);
      if (swift_dynamicCast())
      {
        [v28 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = [objc_opt_self() mainScreen];
        v18 = [v17 coordinateSpace];

        [v28 convertRect:v18 toCoordinateSpace:{v10, v12, v14, v16}];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        swift_unknownObjectRelease();
        [v6 setAnimationOriginRect_];
      }
    }

    else
    {
      sub_20CEF928C(v31, &qword_27C81BF00);
    }

    v27 = [objc_opt_self() sharedInstance];
    [v27 launchServiceWithContext_];

    sub_20D088738(1, 1.0);
    swift_unknownObjectRelease();
  }
}

void sub_20D0892D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void *sub_20D089354(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [objc_msgSend(v3 editActionDelegateForNavigationBarButton_];
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {
      result = sub_20D568A58();
      __break(1u);
    }
  }

  return result;
}

id sub_20D08947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a4(a3);
  swift_unknownObjectRelease();

  return v6;
}

double sub_20D089500@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v8 = v5;
  v10 = sub_20CEED668(a1, a2);
  if (v11)
  {
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v5;
    v16 = *v8;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v14 = v16;
    }

    a3(*(v14 + 56) + 32 * v12, a5);
    sub_20D0899E4(v12, v14);
    *v8 = v14;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t sub_20D0895E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_20CEED7C0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20CF9D5D4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_20D563818();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_20D089B94(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = sub_20D563818();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_20D089780@<D0>(uint64_t (*a1)(void)@<X1>, void (*a2)(void)@<X2>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v7 = a1();
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a2();
      v11 = v13;
    }

    sub_20CEC80B0((*(v11 + 56) + 32 * v9), a3);
    sub_20D08A1B4(v9, v11);
    *v5 = v11;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_20D089834(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20D5686D8() + 1) & ~v5;
    do
    {
      sub_20D568D48();
      sub_20D5663C8();
      sub_20D5678C8();
      v9 = sub_20D568D98();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20D0899E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20D5686D8() + 1) & ~v5;
    do
    {
      sub_20D568D48();
      sub_20D5663C8();
      sub_20D5678C8();
      v10 = sub_20D568D98();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_20D089B94(int64_t a1, uint64_t a2)
{
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_20D5686D8();
    v14 = v12;
    v33 = (v13 + 1) & v12;
    v34 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v31 = (v15 - 8);
    v32 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v32(v8, *(a2 + 48) + v17 * v11, v4);
      sub_20D08B4A0(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
      v21 = sub_20D5677B8();
      result = (*v31)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v33)
      {
        if (v22 >= v33 && a1 >= v22)
        {
LABEL_15:
          v25 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v25 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = *(a2 + 56);
          result = v26 + v25;
          if (v25 < v18 || result >= v26 + v18 + v17)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v27 = v25 == v18;
            v15 = v20;
            v14 = v19;
            if (!v27)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v33 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v34;
    }

    while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

void sub_20D089E94(int64_t a1, uint64_t a2)
{
  v38 = sub_20D563818();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_20D5686D8();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_20D08B4A0(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
      v22 = sub_20D5677B8();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_20D08A1B4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20D5686D8() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_20D567838();
      sub_20D568D48();
      v11 = v10;
      sub_20D5678C8();
      v12 = sub_20D568D98();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_20D08A37C(int64_t a1, uint64_t a2)
{
  v4 = sub_20D564868();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_20D5686D8();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_20D08B4A0(&qword_27C81C060, MEMORY[0x277D16B10]);
      v21 = sub_20D5677B8();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(sub_20D563CF8() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

BOOL sub_20D08A6C0()
{
  if (qword_27C81A320 != -1)
  {
    swift_once();
  }

  v1 = qword_27C8382B8;
  v2 = sub_20D567EC8();
  result = os_log_type_enabled(v1, v2);
  if (result)
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v0;
    *v5 = v0;
    v6 = v0;
    _os_log_impl(&dword_20CEB6000, v1, v2, "User tapped navigation button: %@", v4, 0xCu);
    sub_20CEF928C(v5, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v5, -1, -1);

    JUMPOUT(0x20F31FC70);
  }

  return result;
}

char *_s6HomeUI19NavigationBarButtonC03addE04withAcA0cdE5Owner_p_tFZ_0()
{
  type metadata accessor for NavigationBarButton();
  v0 = sub_20D567F18();
  v1 = sub_20D567838();
  v3 = v2;
  v4 = &v0[OBJC_IVAR___HUNavigationBarButton_buttonIdentifier];
  swift_beginAccess();
  *v4 = v1;
  v4[1] = v3;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = v0;
  v6 = sub_20D5677F8();
  [v5 setAccessibilityIdentifier_];

  type metadata accessor for NavigationMenuFactory();
  v7 = sub_20CF6C6A0(v5);
  [v5 setMenu_];

  return v5;
}

void _s6HomeUI19NavigationBarButtonC08announceE04withAcA0cdE5Owner_p_tFZ_0(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_20D5677F8();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (v4)
  {
    type metadata accessor for NavigationBarButton();

    v5 = sub_20D086FAC(v4, sub_20D08B48C, v2);
    v6 = sub_20D567838();
    v8 = v7;
    v9 = &v5[OBJC_IVAR___HUNavigationBarButton_buttonIdentifier];
    swift_beginAccess();
    *v9 = v6;
    v9[1] = v8;

    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v10 = v5;
    v11 = [a1 roomForNavigationBarButton_];
    if (v11)
    {
    }

    v12 = sub_20D5677F8();
    v13 = HULocalizedString(v12);

    sub_20D567838();
    v14 = sub_20D5677F8();

    [v10 setAccessibilityLabel_];

    sub_20CECF940(0, &unk_28111FB00);
    v15 = v10;
    v16 = sub_20D5677F8();
    v17 = HULocalizedString(v16);

    sub_20D567838();
    v18 = [v15 image];
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = sub_20D08B48C;
    v20[4] = v2;

    v21 = sub_20D568438();
    [v15 setMenuRepresentation_];
  }

  else
  {
    __break(1u);
  }
}

char *_s6HomeUI19NavigationBarButtonC08editDoneE04withAcA0cdE5Owner_p_tFZ_0()
{
  type metadata accessor for NavigationBarButton();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = sub_20D086F04(0, sub_20D08B484, v0);
  v2 = sub_20D567838();
  v4 = v3;
  v5 = &v1[OBJC_IVAR___HUNavigationBarButton_buttonIdentifier];
  swift_beginAccess();
  *v5 = v2;
  v5[1] = v4;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v1;
}

char *_s6HomeUI19NavigationBarButtonC04homeE04withAcA0cdE5Owner_p_tFZ_0()
{
  type metadata accessor for NavigationBarButton();
  v0 = sub_20D088C2C(0x73697370696C6C65, 0xE800000000000000, 0x73697370696C6C65, 0xE800000000000000);
  v1 = sub_20D567838();
  v3 = v2;
  v4 = &v0[OBJC_IVAR___HUNavigationBarButton_buttonIdentifier];
  swift_beginAccess();
  *v4 = v1;
  v4[1] = v3;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = v0;
  v6 = sub_20D5677F8();
  [v5 setAccessibilityIdentifier_];

  v7 = type metadata accessor for NavigationMenuFactory();
  v28 = MEMORY[0x277D84F90];
  if ([objc_opt_self() isAMac])
  {
    v8 = sub_20CF6F054(v5);
    sub_20CF6BF24(v8);
  }

  else
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    *(v11 + 24) = v10;
    aBlock[4] = sub_20CF6D6C4;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CF6CF70;
    aBlock[3] = &block_descriptor_30;
    v12 = _Block_copy(aBlock);

    v13 = [v9 elementWithUncachedProvider_];
    _Block_release(v12);
    v14 = v13;
    MEMORY[0x20F31CEE0]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    sub_20D567B08();
  }

  sub_20CECF940(0, &qword_28111FB78);
  v26 = v28;
  v15 = sub_20D568308();
  [v5 setMenu_];

  v16 = v5;
  v17 = sub_20D5677F8();
  v18 = HULocalizedString(v17);

  sub_20D567838();
  v19 = [v16 image];
  v20 = [v16 menu];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 children];

    sub_20CECF940(0, &unk_28111FFC0);
    v23 = sub_20D567A78();
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v24 = sub_20D568308();
  [v16 setMenuRepresentation_];

  return v16;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D08B4A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D08B4F0()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_27C838220);
  __swift_project_value_buffer(v0, qword_27C838220);
  return sub_20D565978();
}

id sub_20D08B578(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_20D563818();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A288 != -1)
  {
    swift_once();
  }

  v10 = sub_20D565988();
  __swift_project_value_buffer(v10, qword_27C838220);
  v11 = a1;
  v12 = a2;
  v13 = sub_20D565968();
  v14 = sub_20D567EC8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v15 = 136446466;
    v16 = [v11 uniqueIdentifier];
    v41 = v14;
    v17 = v16;
    sub_20D5637E8();

    sub_20D092428();
    v43 = v3;
    v18 = sub_20D568BB8();
    v19 = v11;
    v20 = v12;
    v22 = v21;
    v40 = v13;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_20CEE913C(v18, v22, &v44);
    v12 = v20;
    v11 = v19;

    *(v15 + 4) = v24;
    *(v15 + 12) = 2082;
    v25 = [v12 uniqueIdentifier];
    sub_20D5637E8();

    v26 = sub_20D568BB8();
    v28 = v27;
    v23(v9, v6);
    v29 = sub_20CEE913C(v26, v28, &v44);

    *(v15 + 14) = v29;
    v30 = v40;
    _os_log_impl(&dword_20CEB6000, v40, v41, "HUServiceDetailsViewController: creating instance for homePod: %{public}s, home: %{public}s", v15, 0x16u);
    v31 = v42;
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v31, -1, -1);
    MEMORY[0x20F31FC70](v15, -1, -1);
  }

  else
  {
  }

  v32 = [v11 mediaProfile];
  if (v32)
  {
    v33 = v32;
    v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v35 = [v12 hf_characteristicValueManager];
    v36 = [objc_allocWithZone(MEMORY[0x277D147E8]) initWithValueSource:v35 mediaProfileContainer:v33];

    v37 = [v34 initWithServiceLikeItem_];
  }

  else
  {

    return 0;
  }

  return v37;
}

id sub_20D08B934(_BYTE *a1, _BYTE *a2, unint64_t a3)
{
  v7 = sub_20D563818();
  v67 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v58[-v11];
  MEMORY[0x28223BE20](v13);
  v64 = &v58[-v14];
  MEMORY[0x28223BE20](v15);
  v17 = &v58[-v16];
  v69 = a2;
  v18 = sub_20D0721E0(sub_20D0924A0, v68, a3);

  v65 = a1;
  v66 = a2;
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = [v18 accessories];
  sub_20CECF940(0, &qword_28111FFF0);
  v20 = sub_20D567A78();

  MEMORY[0x28223BE20](v21);
  *&v58[-16] = a1;
  v22 = sub_20D0721E0(sub_20D0924A0, &v58[-32], v20);

  if (!v22)
  {

    a2 = v66;
LABEL_8:
    if (qword_27C81A288 != -1)
    {
      swift_once();
    }

    v41 = sub_20D565988();
    __swift_project_value_buffer(v41, qword_27C838220);
    v42 = v67;
    v43 = *(v67 + 16);
    v43(v12, a2, v7);
    v43(v9, a1, v7);
    v44 = sub_20D565968();
    v45 = sub_20D567EA8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v70[0] = v64;
      *v46 = 136446466;
      sub_20D092428();
      LODWORD(v63) = v45;
      v47 = sub_20D568BB8();
      v49 = v48;
      v34 = *(v67 + 8);
      v34(v12, v7);
      v50 = sub_20CEE913C(v47, v49, v70);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2082;
      v51 = sub_20D568BB8();
      v53 = v52;
      v34(v9, v7);
      v54 = sub_20CEE913C(v51, v53, v70);
      a2 = v66;

      *(v46 + 14) = v54;
      _os_log_impl(&dword_20CEB6000, v44, v63, "HUServiceDetailsViewController: Failed to find home: %{public}s or accessory: %{public}s", v46, 0x16u);
      v55 = v64;
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v55, -1, -1);
      MEMORY[0x20F31FC70](v46, -1, -1);
    }

    else
    {

      v34 = *(v42 + 8);
      v34(v9, v7);
      v34(v12, v7);
    }

    goto LABEL_15;
  }

  v61 = v22;
  v62 = v18;
  v63 = v3;
  a2 = v66;
  if (qword_27C81A288 != -1)
  {
    swift_once();
  }

  v23 = sub_20D565988();
  __swift_project_value_buffer(v23, qword_27C838220);
  v24 = v67;
  v25 = *(v67 + 16);
  v25(v17, a2, v7);
  v26 = v64;
  v25(v64, a1, v7);
  v27 = sub_20D565968();
  v28 = sub_20D567EC8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v24;
    v30 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v70[0] = v60;
    *v30 = 136446466;
    sub_20D092428();
    v59 = v28;
    v31 = sub_20D568BB8();
    v33 = v32;
    v34 = *(v29 + 8);
    v34(v17, v7);
    v35 = sub_20CEE913C(v31, v33, v70);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    a2 = v66;
    v36 = sub_20D568BB8();
    v38 = v37;
    v34(v26, v7);
    v39 = sub_20CEE913C(v36, v38, v70);

    *(v30 + 14) = v39;
    _os_log_impl(&dword_20CEB6000, v27, v59, "HUServiceDetailsViewController: Found matching home: %{public}s and accessory: %{public}s", v30, 0x16u);
    v40 = v60;
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v40, -1, -1);
    MEMORY[0x20F31FC70](v30, -1, -1);
  }

  else
  {

    v34 = *(v24 + 8);
    v34(v26, v7);
    v34(v17, v7);
  }

  v56 = sub_20D08B578(v61, v62);
  if (!v56)
  {
LABEL_15:
    v56 = 0;
  }

  v34(a2, v7);
  v34(v65, v7);
  return v56;
}

uint64_t static HUHomePodServiceDetails.homePodCardWithQuickControls(forDeviceUUID:inHomeWith:cornerRadius:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_20D563818();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v14 = *(v7 + 16);
  v14(v23 - v12, a1, v6, v11);
  (v14)(v9, a2, v6);
  v15 = *(v7 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = (v8 + v15 + v16) & ~v15;
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = *(v7 + 32);
  v20(v19 + v16, v13, v6);
  v20(v19 + v17, v9, v6);
  *(v19 + v18) = v23[1];
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_20CECF940(0, &qword_27C820940);
  v21 = sub_20D5659C8();

  return v21;
}

uint64_t sub_20D08C208(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_20D563818();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  sub_20D567C18();
  *(v3 + 72) = sub_20D567C08();
  v6 = sub_20D567BA8();
  *(v3 + 80) = v6;
  *(v3 + 88) = v5;

  return MEMORY[0x2822009F8](sub_20D08C30C, v6, v5);
}

uint64_t sub_20D08C30C()
{
  v32 = v0;
  if (qword_27C81A288 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_20D565988();
  v0[12] = __swift_project_value_buffer(v7, qword_27C838220);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v8(v1, v5, v3);
  v9 = sub_20D565968();
  v10 = sub_20D567EC8();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[7];
  v12 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  if (v11)
  {
    v29 = v10;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v16 = 136446466;
    sub_20D092428();
    v17 = sub_20D568BB8();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_20CEE913C(v17, v19, &v31);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v22 = sub_20D568BB8();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_20CEE913C(v22, v24, &v31);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_20CEB6000, v9, v29, "homePodCardWithQuickControlsForDeviceUUID: Setting up HMMutableHomeManagerConfiguration to HMHomeManagerOptionsAppleMediaAccessories. %{public}s. %{public}s.", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v30, -1, -1);
    MEMORY[0x20F31FC70](v16, -1, -1);
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = swift_task_alloc();
  v0[13] = v27;
  *v27 = v0;
  v27[1] = sub_20D08C5EC;

  return sub_20D08FAE4();
}

uint64_t sub_20D08C5EC(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 14) = a1;

  v5 = swift_task_alloc();
  *(v3 + 15) = v5;
  *v5 = v4;
  v5[1] = sub_20D08C754;
  v6 = v3[4];
  v7 = *(v3 + 3);
  v8 = *(v3 + 2);

  return sub_20D090A18(v8, v7, a1, v6);
}

uint64_t sub_20D08C754(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = v3[11];
    v6 = sub_20D08C9E0;
  }

  else
  {

    v4 = v3[10];
    v5 = v3[11];
    v6 = sub_20D08C870;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D08C870()
{
  v1 = *(v0 + 128);

  if (v1)
  {
    v2 = *(v0 + 128);

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    v5 = sub_20D565968();
    v6 = sub_20D567EA8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20CEB6000, v5, v6, "homePodCardWithQuickControlsForDeviceUUID: failed to build HomeDetailsViewController", v7, 2u);
      MEMORY[0x20F31FC70](v7, -1, -1);
    }

    [objc_opt_self() hf:48 errorWithCode:?];
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_20D08C9E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D08CA60()
{
  v2 = *(sub_20D563818() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + ((((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20CEF9350;

  return sub_20D08C208(v0 + v4, v0 + v6, v7);
}

id sub_20D08CE60(uint64_t a1, uint64_t a2, SEL *a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_20D5637C8();
  v6 = sub_20D5637C8();
  v7 = [ObjCClassFromMetadata *a3];

  return v7;
}

id sub_20D08CF00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = sub_20D563818();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_20D5637E8();
  sub_20D5637E8();
  v14 = sub_20D5637C8();
  v15 = sub_20D5637C8();
  v16 = [a1 *a5];

  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);

  return v16;
}

id static HUHomePodServiceDetails.saHomePodCardWithQuickControls(forDeviceUUID:inHomeWith:cornerRadius:)(double a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 setUseSAConfig_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_20D5637C8();
  v5 = sub_20D5637C8();
  v6 = [ObjCClassFromMetadata homePodCardWithQuickControlsForDeviceUUID:v4 inHomeWithUUID:v5 cornerRadius:a1];

  return v6;
}

id static HUHomePodServiceDetails.saHomePodCard(forMediaRoutingIdentifier:deviceName:mediaAccessoryItemType:cornerRadius:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [objc_opt_self() sharedInstance];
  [v8 setUseSAConfig_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = sub_20D5677F8();
  v11 = sub_20D5677F8();
  v12 = [ObjCClassFromMetadata homePodCardForMediaRoutingIdentifier:v10 deviceName:v11 mediaAccessoryItemType:a6 cornerRadius:a1];

  return v12;
}

uint64_t static HUHomePodServiceDetails.homePodCard(forDeviceUUID:inHomeWith:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_20D563818();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = *(v6 + 16);
  v13(&v21 - v11, a1, v5, v10);
  (v13)(v8, a2, v5);
  v14 = *(v6 + 80);
  v15 = (v14 + 24) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  v18 = *(v6 + 32);
  v18(v17 + v15, v12, v5);
  v18(v17 + v16, v8, v5);
  sub_20CECF940(0, &qword_27C81EC50);
  v19 = sub_20D5659C8();

  return v19;
}

uint64_t sub_20D08D704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_20D563818();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = sub_20D567C18();
  v3[9] = sub_20D567C08();
  v5 = swift_task_alloc();
  v3[10] = v5;
  *v5 = v3;
  v5[1] = sub_20D08D814;

  return sub_20D08FAE4();
}

uint64_t sub_20D08D814(uint64_t a1)
{
  *(*v1 + 88) = a1;

  v3 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D08D958, v3, v2);
}

uint64_t sub_20D08D958()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  sub_20CECF940(0, &qword_27C81EC50);
  v8 = *(v5 + 16);
  v8(v2, v7, v4);
  v8(v3, v6, v4);
  v9 = sub_20D08B934(v2, v3, v1);
  if (v9)
  {
    v10 = v9;

    v11 = v0[1];

    return v11(v10);
  }

  else
  {
    [objc_opt_self() hf:48 errorWithCode:?];
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_20D08DAF4()
{
  v2 = *(sub_20D563818() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20CEF9350;

  return sub_20D08D704(v6, v0 + v4, v0 + v5);
}

id sub_20D08DE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_20D5677F8();
  v10 = sub_20D5677F8();
  v11 = [ObjCClassFromMetadata *a6];

  return v11;
}

id sub_20D08DF7C()
{
  result = [objc_opt_self() configuration];
  if (result)
  {
    v1 = result;
    [result mutableCopy];

    sub_20D568628();
    swift_unknownObjectRelease();
    sub_20CECF940(0, &unk_27C820968);
    if (swift_dynamicCast())
    {
      [v2 setOptions_];
      return v2;
    }

    else
    {
      return [objc_allocWithZone(MEMORY[0x277CD1C60]) initWithOptions:105 cachePolicy:0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static HUHomePodServiceDetails.homePodCard(forMediaRoutingIdentifier:deviceName:mediaAccessoryItemType:cornerRadius:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  *(v13 + 48) = a4;
  *(v13 + 56) = a5;
  *(v13 + 64) = a6;
  sub_20CECF940(0, &qword_27C820940);
  sub_20D5663C8();
  sub_20D5663C8();
  v14 = sub_20D5659C8();

  return v14;
}

uint64_t sub_20D08E150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 200) = a7;
  *(v7 + 184) = a5;
  *(v7 + 192) = a6;
  *(v7 + 168) = a3;
  *(v7 + 176) = a4;
  *(v7 + 152) = a1;
  *(v7 + 160) = a2;
  *(v7 + 208) = sub_20D567C18();
  *(v7 + 216) = sub_20D567C08();
  v8 = swift_task_alloc();
  *(v7 + 224) = v8;
  *v8 = v7;
  v8[1] = sub_20D08E204;

  return sub_20D08FAE4();
}

uint64_t sub_20D08E204()
{
  v1 = *v0;

  v3 = sub_20D567BA8();
  *(v1 + 232) = v3;
  *(v1 + 240) = v2;

  return MEMORY[0x2822009F8](sub_20D08E354, v3, v2);
}

uint64_t sub_20D08E354()
{
  v1 = v0[25];
  v2 = *(v0 + 24);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_20D5677F8();
  *(v0 + 31) = v4;
  v5 = sub_20D5677F8();
  *(v0 + 32) = v5;
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = sub_20D08E4D4;
  v6 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820958);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_20D08E9CC;
  *(v0 + 13) = &block_descriptor_39;
  *(v0 + 14) = v6;
  [ObjCClassFromMetadata _homePodDetailsViewControllerForMediaRoutingIdentifier_deviceName_mediaAccessoryItemType_cornerRadius_completionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20D08E4D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_20D08E87C;
  }

  else
  {
    v5 = sub_20D08E604;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D08E604()
{
  v18 = v0;
  v2 = v0[31];
  v1 = v0[32];

  v3 = v0[18];

  if (v3)
  {
    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    if (qword_27C81A288 != -1)
    {
      swift_once();
    }

    v6 = sub_20D565988();
    __swift_project_value_buffer(v6, qword_27C838220);
    sub_20D5663C8();
    sub_20D5663C8();
    v7 = sub_20D565968();
    v8 = sub_20D567EA8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[23];
      v10 = v0[24];
      v12 = v0[21];
      v11 = v0[22];
      v13 = v0[20];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17[0] = v15;
      *v14 = 136446722;
      *(v14 + 4) = sub_20CEE913C(v13, v12, v17);
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_20CEE913C(v11, v9, v17);
      *(v14 + 22) = 2050;
      *(v14 + 24) = v10;
      _os_log_impl(&dword_20CEB6000, v7, v8, "Failed to create HomePodDetailsViewController. mediaRoutingIdentifier: %{public}s, deviceName: %{public}s, mediaAccessoryItemType: %{public}ld", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v15, -1, -1);
      MEMORY[0x20F31FC70](v14, -1, -1);
    }

    [objc_opt_self() hf:48 errorWithCode:?];
    swift_willThrow();
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_20D08E87C()
{
  v1 = v0[32];
  v2 = v0[31];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_20D08E8FC()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_20CEF9350;

  return sub_20D08E150(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_20D08E9CC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_20D08EB9C(id *a1)
{
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_20D5637E8();

  v8 = sub_20D5637D8();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_20D08ECA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 64) = v6;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  sub_20D567C18();
  *(v7 + 72) = sub_20D567C08();
  v9 = sub_20D567BA8();
  *(v7 + 80) = v9;
  *(v7 + 88) = v8;

  return MEMORY[0x2822009F8](sub_20D08ED50, v9, v8);
}

uint64_t sub_20D08ED50()
{
  v18 = v0;
  if (qword_27C81A288 != -1)
  {
    swift_once();
  }

  v1 = sub_20D565988();
  v0[12] = __swift_project_value_buffer(v1, qword_27C838220);
  sub_20D5663C8();
  sub_20D5663C8();
  v2 = sub_20D565968();
  v3 = sub_20D567EC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = v0[6];
    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_20CEE913C(v8, v7, &v17);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20CEE913C(v6, v4, &v17);
    *(v9 + 22) = 2048;
    *(v9 + 24) = v5;
    _os_log_impl(&dword_20CEB6000, v2, v3, "_homePodDetailsViewController mediaRoutingIdentifier:%s, deviceName:%s, mediaAccessoryItemType:%ld", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  v11 = [objc_opt_self() sharedInstance];
  v0[13] = v11;
  v12 = sub_20D5677F8();
  v13 = [v11 startMonitoringUpdatesForMediaRemoteIdentifier_];
  v0[14] = v13;

  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_20D08EFE0;
  v15 = MEMORY[0x277D84F68] + 8;

  return MEMORY[0x28216D8F8](v13, v15);
}

uint64_t sub_20D08EFE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  if (v1)
  {
    v7 = sub_20D08F408;
  }

  else
  {
    v7 = sub_20D08F124;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20D08F124()
{

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1 && [v1 BOOLValue])
  {
    v2 = sub_20D565968();
    v3 = sub_20D567EA8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20CEB6000, v2, v3, "_homePodDetailsViewController proxClientManagerFuture succeeded", v4, 2u);
      MEMORY[0x20F31FC70](v4, -1, -1);
    }

    v5 = v0[7];
    v6 = *(v0 + 6);

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = sub_20D5677F8();
    v9 = sub_20D5677F8();
    v10 = [ObjCClassFromMetadata homePodDetailsViewControllerForMediaRoutingIdentifier:v8 deviceName:v9 mediaAccessoryItemType:v6 cornerRadius:v5];

    if (v10)
    {
      v12 = *(v0 + 13);
      v11 = *(v0 + 14);
      swift_unknownObjectRelease();

      v13 = v10;
      goto LABEL_11;
    }

    v21 = sub_20D565968();
    v22 = sub_20D567EA8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20CEB6000, v21, v22, "_homePodDetailsViewController failed to create homePodDetailsViewController", v23, 2u);
      MEMORY[0x20F31FC70](v23, -1, -1);
    }

    v24 = *(v0 + 13);
    v25 = *(v0 + 14);

    [v24 invalidateProxClient];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v14 = sub_20D565968();
    v15 = sub_20D567EA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20CEB6000, v14, v15, "_homePodDetailsViewController proxClientManagerFuture failed", v16, 2u);
      MEMORY[0x20F31FC70](v16, -1, -1);
    }

    v17 = *(v0 + 13);
    v18 = *(v0 + 14);

    [v17 invalidateProxClient];
  }

  v13 = 0;
LABEL_11:
  v19 = *(v0 + 1);

  return v19(v13);
}

uint64_t sub_20D08F408()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D08F628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 40) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  sub_20D567C18();
  *(v6 + 64) = sub_20D567C08();
  v8 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D08F6CC, v8, v7);
}

uint64_t sub_20D08F6CC()
{
  v1 = *(v0 + 6);

  *(v0 + 9) = _Block_copy(v1);
  v2 = sub_20D567838();
  v4 = v3;
  *(v0 + 10) = v3;
  v5 = sub_20D567838();
  v7 = v6;
  *(v0 + 11) = v6;
  swift_getObjCClassMetadata();
  v8 = swift_task_alloc();
  *(v0 + 12) = v8;
  *v8 = v0;
  v8[1] = sub_20D08F7D0;
  v9 = v0[5];
  v10 = *(v0 + 4);

  return sub_20D08ECA8(v2, v4, v5, v7, v10, v9);
}

uint64_t sub_20D08F7D0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 72);
  if (v3)
  {
    v8 = sub_20D5635C8();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](*(v5 + 72), a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

HUHomePodServiceDetails __swiftcall HUHomePodServiceDetails.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_20D08FAE4()
{
  sub_20D567C18();
  v0[2] = sub_20D567C08();
  v2 = sub_20D567BA8();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_20D08FB78, v2, v1);
}

uint64_t sub_20D08FB78()
{
  v1 = objc_opt_self();
  v2 = sub_20D08DF7C();
  [v1 setConfiguration_];

  if (qword_27C81A288 != -1)
  {
    swift_once();
  }

  v3 = sub_20D565988();
  __swift_project_value_buffer(v3, qword_27C838220);
  v4 = sub_20D565968();
  v5 = sub_20D567EC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, v5, "bindHomeKitDispatcher() Setting up HMMutableHomeManagerConfiguration to HMHomeManagerOptionsAppleMediaAccessories", v6, 2u);
    MEMORY[0x20F31FC70](v6, -1, -1);
  }

  *(v0 + 40) = [v1 sharedDispatcher];
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_20D08FD14;

  return MEMORY[0x28216DC50]();
}

uint64_t sub_20D08FD14(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = v4[3];
    v6 = v4[4];
    v7 = sub_20D08FEA8;
  }

  else
  {
    v4[8] = a1;
    v5 = v4[3];
    v6 = v4[4];
    v7 = sub_20D08FE3C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D08FE3C()
{
  v1 = v0[5];

  v2 = v0[8];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_20D08FEA8()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];
  v4 = MEMORY[0x277D84F90];

  return v3(v4);
}

id sub_20D08FF24(void *a1, void *a2, double a3)
{
  v6 = sub_20D563818();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D565988();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 hf:a1 mediaSystemForAccessory:v12];
  if (v15 || (v15 = [a1 mediaProfile]) != 0)
  {
    v16 = v15;
    v98 = MEMORY[0x277D84F90];
    v17 = [a2 hf_characteristicValueManager];
    sub_20CECF940(0, &qword_27C820140);
    sub_20CECF940(0, &qword_27C820978);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = v17;
    swift_unknownObjectRetain();
    v20 = [objc_allocWithZone(ObjCClassFromMetadata) initWithValueSource:v19 mediaProfileContainer:v16];

    swift_unknownObjectRelease();
    v97[1] = &unk_2825BD120;
    v21 = swift_dynamicCastObjCProtocolConditional();
    if (v21)
    {
      v22 = v21;
      v23 = v19;
    }

    else
    {
      v22 = [objc_msgSend(v20 mediaProfileContainer)];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRetain();
    v24 = [v20 mediaProfileContainer];
    v25 = [v20 mediaAccessoryItemType];
    v26 = [objc_allocWithZone(MEMORY[0x277D14800]) initWithValueSource:v22 mediaProfileContainer:v24 mediaAccessoryItemType:v25 displayResults:0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (qword_27C81A288 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v10, qword_27C838220);
    swift_unknownObjectRetain();
    v28 = v26;
    v29 = sub_20D565968();
    v30 = sub_20D567EC8();

    swift_unknownObjectRelease();
    v31 = os_log_type_enabled(v29, v30);
    v94 = v19;
    v95 = v16;
    v93 = v28;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v92 = v20;
      v33 = v32;
      v34 = swift_slowAlloc();
      v91 = v27;
      v35 = v34;
      v96 = v22;
      v97[0] = v34;
      *v33 = 136446466;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8209E8);
      v36 = sub_20D567858();
      v38 = sub_20CEE913C(v36, v37, v97);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;
      v39 = v28;
      v40 = [v39 description];
      v41 = sub_20D567838();
      v42 = a2;
      v44 = v43;

      v45 = sub_20CEE913C(v41, v44, v97);
      a2 = v42;

      *(v33 + 14) = v45;
      _os_log_impl(&dword_20CEB6000, v29, v30, "homePodDetailsViewController mediaValueSource = %{public}s, mediaControlItem = %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v35, -1, -1);
      v46 = v33;
      v20 = v92;
      MEMORY[0x20F31FC70](v46, -1, -1);
    }

    if ([a2 hf_currentUserIsAdministrator])
    {
      if ([v20 supportsAlarmQuickControls])
      {
        v47 = [v20 mediaProfileContainer];
        v48 = [objc_allocWithZone(MEMORY[0x277D14708]) initWithMediaProfileContainer:v47 displayResults:0];
        swift_unknownObjectRelease();
        v49 = v48;
        MEMORY[0x20F31CEE0]();
        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        sub_20D567B08();
      }

      if ([v20 supportsTimerQuickControls])
      {
        v50 = [v20 mediaProfileContainer];
        v51 = [objc_allocWithZone(MEMORY[0x277D14718]) initWithMediaProfileContainer:v50 displayResults:0];
        swift_unknownObjectRelease();
        v52 = v51;
        MEMORY[0x20F31CEE0]();
        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        sub_20D567B08();
      }
    }

    v53 = v20;
    v54 = v93;
    MEMORY[0x20F31CEE0]();
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    v93 = v54;
    sub_20D567B08();
    v55 = v98;
    v56 = [objc_allocWithZone(HUQuickControlPresentationCoordinator) initWithCornerRadius_];
    v57 = [objc_allocWithZone(HUQuickControlPresentationContext) init];
    sub_20CEF3080(v55);

    sub_20CECF940(0, &unk_27C81A3F0);
    sub_20D091FD8();
    v58 = sub_20D567CD8();

    [v57 setControlItems_];

    [v57 setItem_];
    [v57 setHome_];
    [v57 setPrefersSystemTransitions_];
    v59 = v53;
    v60 = sub_20D565968();
    v61 = sub_20D567EC8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v97[0] = v63;
      *v62 = 136446210;
      v96 = [v59 mediaProfileContainer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DC80);
      v64 = sub_20D567858();
      v66 = sub_20CEE913C(v64, v65, v97);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_20CEB6000, v60, v61, "homePodDetailsViewController Returning Nav Controller for mediaProfileContainer = %{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x20F31FC70](v63, -1, -1);
      MEMORY[0x20F31FC70](v62, -1, -1);
    }

    v67 = v94;
    v68 = [v56 createNavigationControllerForPresentationContext_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_20D565958();
    v70 = a1;
    v71 = a2;
    v72 = sub_20D565968();
    v73 = sub_20D567EA8();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v92 = v71;
      v75 = v74;
      v95 = swift_slowAlloc();
      v98 = v95;
      *v75 = 136446466;
      v76 = [v70 uniqueIdentifier];
      v94 = v72;
      v77 = v76;
      sub_20D5637E8();

      v91 = sub_20D092428();
      v78 = sub_20D568BB8();
      LODWORD(v93) = v73;
      v80 = v79;
      v81 = *(v7 + 8);
      v81(v9, v6);
      v82 = sub_20CEE913C(v78, v80, &v98);

      *(v75 + 4) = v82;
      *(v75 + 12) = 2082;
      v83 = [v92 uniqueIdentifier];
      sub_20D5637E8();

      v84 = sub_20D568BB8();
      v86 = v85;
      v81(v9, v6);
      v87 = sub_20CEE913C(v84, v86, &v98);

      *(v75 + 14) = v87;
      v88 = v94;
      _os_log_impl(&dword_20CEB6000, v94, v93, "homePodDetailsViewController Failed to find mediaSystem: %{public}s in home: %{public}s", v75, 0x16u);
      v89 = v95;
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v89, -1, -1);
      MEMORY[0x20F31FC70](v75, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v14, v10);
    return 0;
  }

  return v68;
}

uint64_t sub_20D090A18(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_20D563818();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  sub_20D567C18();
  *(v4 + 128) = sub_20D567C08();
  v7 = sub_20D567BA8();
  *(v4 + 136) = v7;
  *(v4 + 144) = v6;

  return MEMORY[0x2822009F8](sub_20D090B68, v7, v6);
}

uint64_t sub_20D090B68()
{
  v124 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_20D0721E0(sub_20D092480, v3, v1);
  v0[19] = v4;

  if (v4)
  {
    v5 = v0[2];
    v6 = [v4 accessories];
    sub_20CECF940(0, &qword_28111FFF0);
    v7 = sub_20D567A78();

    v8 = swift_task_alloc();
    *(v8 + 16) = v5;
    v9 = sub_20D0721E0(sub_20D0924A0, v8, v7);
    v0[20] = v9;

    if (v9)
    {
      if (qword_27C81A288 != -1)
      {
        swift_once();
      }

      v10 = v0[14];
      v11 = v0[15];
      v13 = v0[6];
      v12 = v0[7];
      v15 = v0[2];
      v14 = v0[3];
      v16 = sub_20D565988();
      v0[21] = __swift_project_value_buffer(v16, qword_27C838220);
      v17 = *(v12 + 16);
      v17(v11, v14, v13);
      v114 = v17;
      v17(v10, v15, v13);
      v18 = sub_20D565968();
      v19 = sub_20D567EC8();
      v20 = os_log_type_enabled(v18, v19);
      v22 = v0[14];
      v21 = v0[15];
      v24 = v0[6];
      v23 = v0[7];
      if (v20)
      {
        v25 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v123[0] = v112;
        *v25 = 136446466;
        sub_20D092428();
        v110 = v19;
        v26 = sub_20D568BB8();
        v28 = v27;
        v29 = *(v23 + 8);
        (v29)(v21, v24);
        v30 = sub_20CEE913C(v26, v28, v123);

        *(v25 + 4) = v30;
        *(v25 + 12) = 2082;
        v31 = sub_20D568BB8();
        v33 = v32;
        buf = v29;
        (v29)(v22, v24);
        v34 = sub_20CEE913C(v31, v33, v123);

        *(v25 + 14) = v34;
        _os_log_impl(&dword_20CEB6000, v18, v110, "homeDetailsViewController(accessoryID:homeID:in:cornerRadius:) Found matching home: %{public}s and accessory: %{public}s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v112, -1, -1);
        MEMORY[0x20F31FC70](v25, -1, -1);
      }

      else
      {

        v63 = *(v23 + 8);
        (v63)(v22, v24);
        buf = v63;
        (v63)(v21, v24);
      }

      v64 = v0[12];
      v65 = v0[13];
      v66 = v0[6];
      v67 = v0[3];
      v68 = v0[2];
      v69 = [objc_opt_self() sharedInstance];
      v0[22] = v69;
      v70 = sub_20D5637C8();
      v71 = sub_20D5637C8();
      v113 = [v69 startMonitoringUpdatesForAccessoryID:v70 homeID:v71];
      v0[23] = v113;

      v114(v65, v68, v66);
      v114(v64, v67, v66);
      sub_20D5663C8();
      v72 = sub_20D565968();
      v73 = sub_20D567EC8();

      v74 = os_log_type_enabled(v72, v73);
      v76 = v0[12];
      v75 = v0[13];
      v77 = v0[6];
      if (v74)
      {
        v115 = v73;
        v116 = v72;
        v118 = v0[4];
        v78 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v122 = v111;
        *v78 = 136446722;
        sub_20D092428();
        v79 = sub_20D568BB8();
        v81 = v80;
        (buf)(v75, v77);
        v82 = sub_20CEE913C(v79, v81, &v122);

        *(v78 + 4) = v82;
        *(v78 + 12) = 2082;
        v83 = sub_20D568BB8();
        v85 = v84;
        (buf)(v76, v77);
        v86 = sub_20CEE913C(v83, v85, &v122);

        *(v78 + 14) = v86;
        bufa = v78;
        *(v78 + 22) = 2082;
        if (v118 >> 62)
        {
          v87 = sub_20D568768();
        }

        else
        {
          v87 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v88 = MEMORY[0x277D84F90];
        if (v87)
        {
          v123[0] = MEMORY[0x277D84F90];
          v89 = sub_20CEF0B08(0, v87 & ~(v87 >> 63), 0);
          if (v87 < 0)
          {
            __break(1u);
            return MEMORY[0x28216D8F8](v89, v90);
          }

          v88 = v123[0];
          v91 = v0[7];
          if ((v118 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v87; ++i)
            {
              MEMORY[0x20F31DD20](i, v0[4]);
              v93 = [swift_unknownObjectRetain() uniqueIdentifier];
              sub_20D5637E8();

              swift_unknownObjectRelease_n();
              v123[0] = v88;
              v95 = *(v88 + 16);
              v94 = *(v88 + 24);
              if (v95 >= v94 >> 1)
              {
                sub_20CEF0B08(v94 > 1, v95 + 1, 1);
                v88 = v123[0];
              }

              v96 = v0[11];
              v97 = v0[6];
              *(v88 + 16) = v95 + 1;
              (*(v91 + 32))(v88 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v95, v96, v97);
            }
          }

          else
          {
            v98 = (v0[4] + 32);
            do
            {
              v99 = *v98;
              v100 = [v99 uniqueIdentifier];
              sub_20D5637E8();

              v123[0] = v88;
              v102 = *(v88 + 16);
              v101 = *(v88 + 24);
              if (v102 >= v101 >> 1)
              {
                sub_20CEF0B08(v101 > 1, v102 + 1, 1);
                v88 = v123[0];
              }

              v103 = v0[8];
              v104 = v0[6];
              *(v88 + 16) = v102 + 1;
              (*(v91 + 32))(v88 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v102, v103, v104);
              ++v98;
              --v87;
            }

            while (v87);
          }
        }

        v105 = MEMORY[0x20F31CF30](v88, v0[6]);
        v107 = v106;

        v108 = sub_20CEE913C(v105, v107, &v122);

        *(bufa + 3) = v108;
        _os_log_impl(&dword_20CEB6000, v116, v115, "homeDetailsViewController(accessoryID:homeID:in:cornerRadius:) homePodUUID = %{public}s, homeUUID = %{public}s, homes = %{public}s", bufa, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v111, -1, -1);
        MEMORY[0x20F31FC70](bufa, -1, -1);
      }

      else
      {

        (buf)(v76, v77);
        (buf)(v75, v77);
      }

      v109 = swift_task_alloc();
      v0[24] = v109;
      *v109 = v0;
      v109[1] = sub_20D091718;
      v90 = MEMORY[0x277D84F68] + 8;
      v89 = v113;

      return MEMORY[0x28216D8F8](v89, v90);
    }
  }

  if (qword_27C81A288 != -1)
  {
    swift_once();
  }

  v35 = v0[9];
  v36 = v0[10];
  v37 = v0[6];
  v38 = v0[7];
  v40 = v0[2];
  v39 = v0[3];
  v41 = sub_20D565988();
  __swift_project_value_buffer(v41, qword_27C838220);
  v42 = *(v38 + 16);
  v42(v36, v39, v37);
  v42(v35, v40, v37);
  v43 = sub_20D565968();
  v44 = sub_20D567EA8();
  v45 = os_log_type_enabled(v43, v44);
  v47 = v0[9];
  v46 = v0[10];
  v49 = v0[6];
  v48 = v0[7];
  if (v45)
  {
    v117 = v44;
    v50 = swift_slowAlloc();
    bufb = swift_slowAlloc();
    v123[0] = bufb;
    *v50 = 136446466;
    sub_20D092428();
    v51 = sub_20D568BB8();
    v53 = v52;
    v54 = *(v48 + 8);
    v54(v46, v49);
    v55 = sub_20CEE913C(v51, v53, v123);

    *(v50 + 4) = v55;
    *(v50 + 12) = 2082;
    v56 = sub_20D568BB8();
    v58 = v57;
    v54(v47, v49);
    v59 = sub_20CEE913C(v56, v58, v123);

    *(v50 + 14) = v59;
    _os_log_impl(&dword_20CEB6000, v43, v117, "homeDetailsViewController(accessoryID:homeID:in:cornerRadius:) Failed to find home: %{public}s or accessory: %{public}s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](bufb, -1, -1);
    MEMORY[0x20F31FC70](v50, -1, -1);
  }

  else
  {

    v60 = *(v48 + 8);
    v60(v47, v49);
    v60(v46, v49);
  }

  [objc_opt_self() hf:48 errorWithCode:?];
  swift_willThrow();

  v61 = v0[1];

  return v61();
}

uint64_t sub_20D091718(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_20D091B40;
  }

  else
  {
    v7 = sub_20D09185C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20D09185C()
{

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1 && [v1 BOOLValue])
  {
    v2 = sub_20D565968();
    v3 = sub_20D567EC8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20CEB6000, v2, v3, "homeDetailsViewController(accessoryID:homeID:in:cornerRadius:) proxClientManagerFuture succeeded", v4, 2u);
      MEMORY[0x20F31FC70](v4, -1, -1);
    }

    v6 = *(v0 + 19);
    v5 = *(v0 + 20);
    v7 = v0[5];

    v8 = sub_20D08FF24(v5, v6, v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(v0 + 22);
      v11 = *(v0 + 23);
      v13 = *(v0 + 19);
      v12 = *(v0 + 20);
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v19 = sub_20D565968();
    v20 = sub_20D567EA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20CEB6000, v19, v20, "homePodDetailsViewController(forMediaRoutingIdentifier:deviceName:mediaAccessoryItemType:cornerRadius:) _homePodDetailsViewController", v21, 2u);
      MEMORY[0x20F31FC70](v21, -1, -1);
    }

    v10 = *(v0 + 22);
    v11 = *(v0 + 23);
    v13 = *(v0 + 19);
    v12 = *(v0 + 20);

    [v10 invalidateProxClient];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v14 = sub_20D565968();
    v15 = sub_20D567EA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20CEB6000, v14, v15, "homeDetailsViewController(accessoryID:homeID:in:cornerRadius:) proxClientManagerFuture failed", v16, 2u);
      MEMORY[0x20F31FC70](v16, -1, -1);
    }

    v10 = *(v0 + 22);
    v11 = *(v0 + 23);
    v13 = *(v0 + 19);
    v12 = *(v0 + 20);

    [v10 invalidateProxClient];
  }

  v9 = 0;
LABEL_11:

  v17 = *(v0 + 1);

  return v17(v9);
}

uint64_t sub_20D091B40()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];

  v5 = v0[1];

  return v5();
}

id sub_20D091C20(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = MEMORY[0x277D84FA0];
  v8 = objc_allocWithZone(MEMORY[0x277D14800]);
  v9 = sub_20D5677F8();
  v10 = sub_20D5677F8();
  v11 = [v8 initWithMediaRoutingIdentifier:v9 deviceName:v10 mediaAccessoryItemType:a6];

  v12 = v11;
  sub_20CEE9B54(&v37, v12);

  v13 = [objc_allocWithZone(HUQuickControlPresentationCoordinator) initWithCornerRadius_];
  v14 = [objc_allocWithZone(HUQuickControlPresentationContext) init];
  sub_20CECF940(0, &unk_27C81A3F0);
  sub_20D091FD8();
  v15 = sub_20D567CD8();

  [v14 setControlItems_];

  [v14 setPrefersSystemTransitions_];
  [v14 setIsConfiguredForNonHomeUser_];
  v16 = [v13 createNavigationControllerForPresentationContext_];
  if (qword_27C81A288 != -1)
  {
    swift_once();
  }

  v17 = sub_20D565988();
  __swift_project_value_buffer(v17, qword_27C838220);
  v18 = v16;
  v19 = v14;
  v20 = sub_20D565968();
  v21 = sub_20D567EC8();

  if (os_log_type_enabled(v20, v21))
  {
    v35 = v13;
    v36 = v12;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v22 = 136315394;
    if (v18)
    {
      v24 = [v18 description];
      v25 = sub_20D567838();
      v27 = v26;
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v28 = sub_20CEE913C(v25, v27, &v37);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 description];
    v30 = sub_20D567838();
    v32 = v31;

    v33 = sub_20CEE913C(v30, v32, &v37);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_20CEB6000, v20, v21, "homePodDetailsViewController(forMediaRoutingIdentifier:deviceName:mediaAccessoryItemType:cornerRadius:) navController:%s presentationContext:%s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v23, -1, -1);
    MEMORY[0x20F31FC70](v22, -1, -1);
  }

  else
  {
  }

  return v18;
}

unint64_t sub_20D091FD8()
{
  result = qword_27C81D280;
  if (!qword_27C81D280)
  {
    sub_20CECF940(255, &unk_27C81A3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D280);
  }

  return result;
}

uint64_t sub_20D092040()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v7 = *(v0 + 6);
  v6 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20CEF934C;

  return sub_20D08F628(v2, v3, v4, v7, v6, v5);
}

uint64_t objectdestroy_7Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v6, v4 | 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t sub_20D0922E4()
{
  v2 = *(sub_20D563818() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + ((((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20CEF7788;

  return sub_20D08C208(v0 + v4, v0 + v6, v7);
}

unint64_t sub_20D092428()
{
  result = qword_2811209D0;
  if (!qword_2811209D0)
  {
    sub_20D563818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811209D0);
  }

  return result;
}

uint64_t sub_20D0924E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a1;
  v106 = a3;
  v109 = sub_20D566D38();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A18);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v96 - v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A20);
  MEMORY[0x28223BE20](v108);
  v113 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v112 = &v96 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A28);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v96 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A30);
  MEMORY[0x28223BE20](v13 - 8);
  v111 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v96 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v96 - v21;
  v100 = sub_20D565BD8();
  v23 = a2;
  v24 = sub_20D565C18();
  v116 = v22;
  v117 = a2;
  v114 = v10;
  v115 = v9;
  if (v24)
  {

    v25 = sub_20D5677F8();
    v26 = HULocalizedString(v25);

    v27 = sub_20D567838();
    v29 = v28;

    *&v121 = v27;
    *(&v121 + 1) = v29;
    sub_20CEF44D8();
    v30 = sub_20D5670E8();
    v32 = v31;
    LOBYTE(v29) = v33;
    sub_20D567048();
    v34 = v19;
    v35 = sub_20D5670C8();
    v37 = v36;
    v39 = v38;
    v99 = v12;

    sub_20CF13F34(v30, v32, v29 & 1);

    LODWORD(v121) = sub_20D566D68();
    v40 = sub_20D5670B8();
    v42 = v41;
    LOBYTE(v32) = v43;
    v45 = v44;
    v46 = v35;
    v19 = v34;
    v47 = v37;
    v9 = v115;
    sub_20CF13F34(v46, v47, v39 & 1);
    v12 = v99;

    sub_20D566F08();
    v121 = 0u;
    v122 = 0u;
    v123 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A60);
    v48 = v116;
    sub_20D566DB8();
    *v12 = v40;
    *(v12 + 1) = v42;
    v49 = v114;
    v23 = v117;
    v12[16] = v32 & 1;
    *(v12 + 3) = v45;
    sub_20CF15584(v12, v48, &qword_27C820A28);
    v50 = *(v49 + 56);
    v50(v48, 0, 1, v9);
  }

  else
  {
    v50 = *(v10 + 56);
    v50(v22, 1, 1, v9);
  }

  v51 = sub_20D092F30();
  v52 = 1;
  if (v51)
  {
    v53 = sub_20D5677F8();
    v54 = HULocalizedString(v53);

    v55 = sub_20D567838();
    v57 = v56;

    *&v118 = v55;
    *(&v118 + 1) = v57;
    sub_20CEF44D8();
    v58 = sub_20D5670E8();
    v60 = v59;
    LOBYTE(v57) = v61;
    sub_20D567048();
    v62 = sub_20D5670C8();
    v98 = v50;
    v63 = v62;
    v65 = v64;
    v99 = v19;
    v67 = v66;
    v96 = v68;

    sub_20CF13F34(v58, v60, v57 & 1);

    LODWORD(v118) = sub_20D566D68();
    v69 = sub_20D5670B8();
    v71 = v70;
    LOBYTE(v57) = v72;
    v97 = v73;
    v74 = v99;
    v75 = v63;
    v50 = v98;
    sub_20CF13F34(v75, v65, v67 & 1);

    sub_20D566F08();
    v118 = 0u;
    v119 = 0u;
    v120 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A60);
    sub_20D566DB8();
    *v12 = v69;
    *(v12 + 1) = v71;
    v9 = v115;
    v12[16] = v57 & 1;
    *(v12 + 3) = v97;
    v19 = v74;
    sub_20CF15584(v12, v74, &qword_27C820A28);
    v52 = 0;
  }

  v76 = v19;
  v77 = (v50)(v19, v52, 1, v9);
  MEMORY[0x28223BE20](v77);
  v78 = v100;
  v79 = v101;
  *(&v96 - 4) = v100;
  *(&v96 - 3) = v79;
  *(&v96 - 2) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A38);
  sub_20CF156D0(&qword_27C820A40, &qword_27C820A38);
  v80 = v102;
  sub_20D567088();
  v81 = v105;
  sub_20D566D28();
  sub_20CF156D0(&qword_27C820A48, &qword_27C820A18);
  v82 = v112;
  v83 = v104;
  v84 = v109;
  sub_20D567288();
  (*(v107 + 8))(v81, v84);
  (*(v103 + 8))(v80, v83);
  v85 = sub_20D5675F8();
  v86 = (v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A50) + 36));
  *v86 = v85;
  v86[1] = v78;
  sub_20D565C28();
  sub_20D095D20(&qword_27C820580, MEMORY[0x277D13280]);
  v87 = sub_20D566618();
  v88 = (v82 + *(v108 + 36));
  *v88 = v87;
  v88[1] = v23;
  v89 = v116;
  v90 = v110;
  sub_20CEF9178(v116, v110, &qword_27C820A30);
  v91 = v111;
  sub_20CEF9178(v76, v111, &qword_27C820A30);
  v92 = v113;
  sub_20CEC5030(v82, v113);
  v93 = v106;
  sub_20CEF9178(v90, v106, &qword_27C820A30);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A58);
  sub_20CEF9178(v91, v93 + *(v94 + 48), &qword_27C820A30);
  sub_20CEC5030(v92, v93 + *(v94 + 64));

  sub_20CEC50A0(v82);
  sub_20CEF928C(v76, &qword_27C820A30);
  sub_20CEF928C(v89, &qword_27C820A30);
  sub_20CEC50A0(v92);
  sub_20CEF928C(v91, &qword_27C820A30);
  return sub_20CEF928C(v90, &qword_27C820A30);
}

BOOL sub_20D092F30()
{
  v0 = sub_20D565C08();
  v1 = [v0 residentDevices];

  sub_20D095738();
  v2 = sub_20D567A78();

  v11 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F31DD20](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (([v5 capabilities] & 0x8000000) != 0)
      {
        sub_20D5688C8();
        sub_20D568908();
        sub_20D568918();
        sub_20D5688D8();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v8 = v11;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_18:

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v9 = sub_20D568768();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  return v9 == 0;
}

uint64_t sub_20D0930DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A68);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A70);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A78);
  v37 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v35 - v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v35[0] = v7;
    v35[1] = a2;
    v18 = v35 - v15;
    v36 = v12;
    v19 = sub_20CF4A838(v17, 0);
    v20 = *(sub_20D5637A8() - 8);
    sub_20CF50C7C(&v44, &v19[(*(v20 + 80) + 32) & ~*(v20 + 80)], v17, a1);
    v22 = v21;
    sub_20D5663C8();
    sub_20CEC80DC();
    if (v22 != v17)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v16 = v18;
    v12 = v36;
    v7 = v35[0];
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v44 = v19;
  sub_20D094310(&v44);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  sub_20D5663C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A80);
  type metadata accessor for ActivityLogSection();
  sub_20CF156D0(&qword_27C820A88, &qword_27C820A80);
  sub_20D095D20(&qword_27C820780, MEMORY[0x277CC9578]);
  sub_20D095D20(&qword_27C820A90, type metadata accessor for ActivityLogSection);
  sub_20D567538();
  if (sub_20D565BF8())
  {
    sub_20D563808();
    sub_20CF15584(v7, v12, &qword_27C820A68);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = v12;
  (*(v39 + 56))(v12, v23, 1, v40);
  v25 = v37;
  v26 = v38;
  v27 = *(v37 + 16);
  v28 = v16;
  v40 = v16;
  v29 = v41;
  v27(v38, v28, v41);
  v30 = v42;
  sub_20CEF9178(v24, v42, &qword_27C820A70);
  v31 = v43;
  v27(v43, v26, v29);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A98);
  sub_20CEF9178(v30, &v31[*(v32 + 48)], &qword_27C820A70);
  sub_20CEF928C(v24, &qword_27C820A70);
  v33 = *(v25 + 8);
  v33(v40, v29);
  sub_20CEF928C(v30, &qword_27C820A70);
  return (v33)(v26, v29);
}

uint64_t sub_20D093638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16) && (v6 = sub_20CEEDAF4(a1), (v7 & 1) != 0))
  {
    v8 = *(*(a2 + 56) + 8 * v6);
    sub_20D5663C8();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(type metadata accessor for ActivityLogSection() + 24);
  v10 = sub_20D5637A8();
  (*(*(v10 - 8) + 16))(a3 + v9, a1, v10);
  sub_20D565C28();
  sub_20D095D20(&qword_27C820580, MEMORY[0x277D13280]);
  result = sub_20D5669A8();
  *a3 = result;
  a3[1] = v12;
  a3[2] = v8;
  return result;
}

id sub_20D093748()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  result = [v0 setFormattingContext_];
  qword_27C8209F0 = v0;
  return result;
}

id sub_20D0937C0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  [v0 setFormattingContext_];
  result = [v0 setDoesRelativeDateFormatting_];
  qword_27C8209F8 = v0;
  return result;
}

uint64_t sub_20D09384C()
{
  v0 = sub_20D5637A8();
  __swift_allocate_value_buffer(v0, qword_27C820A00);
  __swift_project_value_buffer(v0, qword_27C820A00);
  return sub_20D563748();
}

uint64_t sub_20D0938A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityLogSection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v20 = v1;
  if (qword_27C81A2A0 != -1)
  {
    swift_once();
  }

  v7 = sub_20D5637A8();
  __swift_project_value_buffer(v7, qword_27C820A00);
  if (sub_20D563728())
  {
    if (qword_27C81A298 != -1)
    {
      swift_once();
    }

    v8 = &qword_27C8209F8;
  }

  else
  {
    if (qword_27C81A290 != -1)
    {
      swift_once();
    }

    v8 = &qword_27C8209F0;
  }

  v9 = *v8;
  v10 = sub_20D563718();
  v11 = [v9 stringFromDate_];

  sub_20D567838();
  sub_20CEF44D8();
  v21 = sub_20D5670E8();
  v22 = v12;
  v23 = v13 & 1;
  v24 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820AD0);
  sub_20D095984();
  sub_20D567578();
  sub_20D095A38(v2, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_20D095A9C(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820AE8) + 36));
  sub_20D566878();
  result = sub_20D567C38();
  *v17 = &unk_20D5C7EC0;
  v17[1] = v16;
  return result;
}

uint64_t sub_20D093B88()
{
  sub_20D5663C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820AF0);
  type metadata accessor for ActivityLogListCell();
  sub_20CF156D0(&qword_27C820AF8, &qword_27C820AF0);
  sub_20D095D20(&qword_27C820AE0, type metadata accessor for ActivityLogListCell);
  sub_20D095D20(&qword_27C820B00, MEMORY[0x277D132C8]);
  return sub_20D567548();
}

id sub_20D093CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D565FA8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *(type metadata accessor for ActivityLogListCell() + 20);
  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v6 setDateStyle_];
  [v6 setTimeStyle_];
  result = [v6 setFormattingContext_];
  *(a2 + v5) = v6;
  return result;
}

uint64_t sub_20D093D9C(uint64_t a1)
{
  v1[2] = a1;
  sub_20D567C18();
  v1[3] = sub_20D567C08();
  v3 = sub_20D567BA8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_20D093E34, v3, v2);
}

uint64_t sub_20D093E34()
{
  v1 = v0[2];
  v2 = *v1;
  v0[6] = *v1;
  if (v2)
  {
    v3 = *(type metadata accessor for ActivityLogSection() + 24);
    v9 = (*MEMORY[0x277D13278] + MEMORY[0x277D13278]);

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_20D093F8C;

    return v9(&v1[v3]);
  }

  else
  {
    v6 = *(v1 + 1);
    v7 = sub_20D565C28();
    v8 = sub_20D095D20(&qword_27C820580, MEMORY[0x277D13280]);

    return MEMORY[0x282131568](0, v6, v7, v8);
  }
}

uint64_t sub_20D093F8C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_20D0940D0, v3, v2);
}

uint64_t sub_20D0940D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D094134@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  sub_20D566808();
  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820B10);
  v9((a1 + *(v10 + 48)), v5, v2);
  v11 = a1 + *(v10 + 64);
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = *(v3 + 8);
  v12(v8, v2);
  return (v12)(v5, v2);
}

uint64_t sub_20D0942C0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D566B38();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820B08);
  return sub_20D094134(a1 + *(v2 + 44));
}

void sub_20D094310(void **a1)
{
  v2 = *(sub_20D5637A8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20D057CD8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20D0943B8(v5);
  *a1 = v3;
}

void sub_20D0943B8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20D568BA8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20D5637A8();
        v6 = sub_20D567AE8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20D5637A8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20D094768(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20D0944E4(0, v2, 1, a1);
  }
}

void sub_20D0944E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20D5637A8();
  MEMORY[0x28223BE20](v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v30 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      (v41)(v43, v21, v8, v14);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_20D563728();
      v26 = *v18;
      (*v18)(v24, v8);
      v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = &v35[v31];
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20D094768(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_20D5637A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v125 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v133 = &v118 - v13;
  MEMORY[0x28223BE20](v14);
  v139 = &v118 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v138 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v112 = a4;
    }

    else
    {
LABEL_130:
      v112 = sub_20D057C88(a4);
    }

    v113 = v6;
    v141 = v112;
    a4 = *(v112 + 2);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *&v112[16 * a4];
        v116 = v112;
        v6 = *&v112[16 * a4 + 24];
        sub_20D095154(*v10 + a3[9] * v115, *v10 + a3[9] * *&v112[16 * a4 + 16], *v10 + a3[9] * v6, v5);
        if (v113)
        {
          goto LABEL_107;
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_20D057C88(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        sub_20D057BFC(a4 - 1);
        v112 = v141;
        a4 = *(v141 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v120 = v6;
      v128 = *a3;
      v23 = v128;
      v24 = v10[9];
      v5 = v128 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v138;
      v25(v138, v5, v9, v17);
      v27 = v23 + v24 * v22;
      v28 = v139;
      v130 = v25;
      (v25)(v139, v27, v9);
      LODWORD(v132) = sub_20D563728();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v129 = v30;
      v30(v26, v29);
      v119 = v22;
      v31 = v22 + 2;
      v134 = v24;
      v32 = v128 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v131;
        if (v131 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v138;
        v36 = v140;
        v37 = v130;
        (v130)(v138, v32, v140);
        v38 = v139;
        v37(v139, v5, v36);
        v39 = sub_20D563728() & 1;
        v40 = v129;
        (v129)(v38, v36);
        v41 = v35;
        v10 = v34;
        v40(v41, v36);
        ++v31;
        v32 += v134;
        v5 += v134;
        if ((v132 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v123;
      v21 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v22 = v119;
      if (v132)
      {
        if (v33 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v33)
        {
          v118 = v10;
          v42 = v134 * (v33 - 1);
          v43 = v33 * v134;
          v44 = v33;
          v45 = v119;
          v46 = v119 * v134;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = &v48[v46];
              v132 = *v135;
              (v132)(v125, &v48[v46], v140, v21);
              if (v46 < v42 || v5 >= &v48[v43])
              {
                v47 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v140;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v132(&v48[v42], v125, v47);
              a3 = v123;
              v21 = v126;
              v33 = v49;
            }

            ++v45;
            v42 -= v134;
            v43 -= v134;
            v46 += v134;
          }

          while (v45 < v44);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v22 = v119;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v126;
    }

    else
    {
      v21 = sub_20CEE81E4(0, *(v126 + 2) + 1, 1, v126);
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      v21 = sub_20CEE81E4((v53 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_20D095154(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[16 * v56 + 32], *a3 + v10[9] * v5, v55);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_20D057C88(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v141 = v94;
        sub_20D057BFC(v56);
        v21 = v141;
        v5 = *(v141 + 2);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v121;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v97 = *a3;
  v98 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v119 = v22;
  v101 = (v22 - v33);
  v132 = v97;
  v124 = v98;
  v5 = v97 + v33 * v98;
  v127 = v51;
LABEL_85:
  v130 = v99;
  v131 = v33;
  v128 = v5;
  v129 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v138;
    v104 = v134;
    (v134)(v138, v5, v9, v21);
    v105 = v139;
    v104(v139, v102, v140);
    v106 = sub_20D563728();
    a4 = v136;
    v107 = *v136;
    v108 = v105;
    v9 = v140;
    (*v136)(v108, v140);
    v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v131 + 1;
      v99 = &v130[v124];
      v101 = v129 - 1;
      v5 = v128 + v124;
      v52 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v22 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v109 = *v135;
    v110 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_20D095154(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = sub_20D5637A8();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v44 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v55 = a3;
  v15 = (a2 - a1) / v13;
  v59 = a1;
  v58 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v17;
    if (v17 < 1)
    {
      v32 = a4 + v17;
    }

    else
    {
      v29 = -v13;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v17;
      v31 = v55;
      v32 = v28;
      v46 = a1;
      v47 = a4;
      v50 = -v13;
      do
      {
        v44 = v32;
        v33 = a2;
        v34 = a2 + v29;
        v51 = v33;
        v52 = v34;
        while (1)
        {
          if (v33 <= a1)
          {
            v59 = v33;
            v57 = v44;
            goto LABEL_59;
          }

          v36 = v31;
          v45 = v32;
          v55 = v31 + v29;
          v37 = v30 + v29;
          v38 = *v49;
          v39 = v53;
          v40 = v56;
          v41 = v30;
          (*v49)(v53, v37, v56);
          v42 = v54;
          (v38)(v54, v34, v40);
          LOBYTE(v38) = sub_20D563728();
          v43 = *v48;
          (*v48)(v42, v40);
          v43(v39, v40);
          if (v38)
          {
            break;
          }

          v32 = v37;
          v31 = v55;
          if (v36 < v41 || v55 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v52;
            a1 = v46;
          }

          else
          {
            v34 = v52;
            a1 = v46;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v37;
          v35 = v37 > v47;
          v29 = v50;
          v33 = v51;
          if (!v35)
          {
            a2 = v51;
            goto LABEL_58;
          }
        }

        v44 = v41;
        v31 = v55;
        if (v36 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v45;
          a1 = v46;
          v29 = v50;
        }

        else
        {
          a2 = v52;
          v32 = v45;
          a1 = v46;
          v29 = v50;
          if (v36 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v44;
      }

      while (v44 > v47);
    }

LABEL_58:
    v59 = a2;
    v57 = v32;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v16;
    v57 = a4 + v16;
    if (v16 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v13;
      v49 = (v8 + 8);
      do
      {
        v19 = v53;
        v20 = v56;
        v21 = v50;
        (v50)(v53, a2, v56);
        v22 = a2;
        v23 = v54;
        v21(v54, a4, v20);
        v24 = sub_20D563728();
        v25 = *v49;
        (*v49)(v23, v20);
        v25(v19, v20);
        if (v24)
        {
          v26 = v48;
          a2 = v48 + v22;
          if (a1 < v22 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v22;
          }

          else
          {
            a2 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

LABEL_59:
  sub_20CF4EC84(&v59, &v58, &v57);
}

uint64_t type metadata accessor for ActivityLogSection()
{
  result = qword_27C820AA0;
  if (!qword_27C820AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20D095738()
{
  result = qword_27C81E8B0;
  if (!qword_27C81E8B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C81E8B0);
  }

  return result;
}

void sub_20D0957BC()
{
  sub_20D095858();
  if (v0 <= 0x3F)
  {
    sub_20D0958EC();
    if (v1 <= 0x3F)
    {
      sub_20D5637A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D095858()
{
  if (!qword_27C820AB0)
  {
    sub_20D565C28();
    sub_20D095D20(&qword_27C820580, MEMORY[0x277D13280]);
    v0 = sub_20D5669B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27C820AB0);
    }
  }
}

void sub_20D0958EC()
{
  if (!qword_27C820AB8)
  {
    sub_20D565FA8();
    v0 = sub_20D567B58();
    if (!v1)
    {
      atomic_store(v0, &qword_27C820AB8);
    }
  }
}

unint64_t sub_20D095984()
{
  result = qword_27C820AD8;
  if (!qword_27C820AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820AD0);
    sub_20D095D20(&qword_27C820AE0, type metadata accessor for ActivityLogListCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820AD8);
  }

  return result;
}

uint64_t sub_20D095A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityLogSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D095A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityLogSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D095B00()
{
  v2 = *(type metadata accessor for ActivityLogSection() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF5FFC;

  return sub_20D093D9C(v0 + v3);
}

unint64_t sub_20D095BCC()
{
  result = qword_27C820B18;
  if (!qword_27C820B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820AE8);
    sub_20D095C88();
    sub_20D095D20(&qword_281120098, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820B18);
  }

  return result;
}

unint64_t sub_20D095C88()
{
  result = qword_27C820B20;
  if (!qword_27C820B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820B28);
    sub_20D095984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820B20);
  }

  return result;
}

uint64_t sub_20D095D20(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_20D095DB4()
{
  v1 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_item;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20D095E60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_item;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_20D095EB8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_item;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_20D096004(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled) != (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled) = result & 1;
    return sub_20D096A38(0);
  }

  return result;
}

uint64_t (*sub_20D09602C(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_20D096060;
}

uint64_t sub_20D096060(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != *(*result + v1))
  {
    *(*result + v1) = v2;
    return sub_20D096A38(0);
  }

  return result;
}

uint64_t sub_20D0961A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20D096200(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_20D0962CC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for HUCollectionViewSwitchCell();
  return objc_msgSendSuper2(&v2, sel_isSelected);
}

id HUCollectionViewSwitchCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *HUCollectionViewSwitchCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E350);
  MEMORY[0x28223BE20](v9 - 8);
  v43 = &v37 - v10;
  v11 = sub_20D566048();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D566028();
  v41 = *(v14 - 8);
  v42 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20D566058();
  v40 = *(v44 - 8);
  v17 = v40;
  MEMORY[0x28223BE20](v44);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_item] = 0;
  v4[OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled] = 0;
  v20 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_switchView;
  *&v4[v20] = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  *&v4[OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_delegate] = 0;
  v21 = type metadata accessor for HUCollectionViewSwitchCell();
  v45.receiver = v4;
  v45.super_class = v21;
  v22 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_switchView;
  v24 = *&v22[OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_switchView];
  v25 = v22;
  [v24 addTarget:v25 action:sel__toggleOn forControlEvents:64];
  v26 = *&v22[v23];
  v27 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F6C0) + 48)];
  v28 = *MEMORY[0x277D74A98];
  v29 = sub_20D565FD8();
  (*(*(v29 - 8) + 104))(v13, v28, v29);
  *v27 = sub_20D097258;
  v27[1] = 0;
  (*(v38 + 104))(v13, *MEMORY[0x277D74AD8], v39);
  v30 = sub_20D566008();
  (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
  v31 = v26;
  sub_20D566018();
  sub_20D565FC8();
  (*(v41 + 8))(v16, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F650);
  v32 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_20D5BC410;
  v34 = v33 + v32;
  v35 = v44;
  (*(v17 + 16))(v34, v19, v44);
  sub_20D568268();

  (*(v17 + 8))(v19, v35);
  return v25;
}

id HUCollectionViewSwitchCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HUCollectionViewSwitchCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_item) = 0;
  *(v0 + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled) = 0;
  v1 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_switchView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  *(v0 + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_delegate) = 0;
  sub_20D568A58();
  __break(1u);
}

uint64_t sub_20D096A38(int a1)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_20D566258();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D566228();
  v7 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_item;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8)
  {
    v9 = [v8 latestResults];
    if (v9)
    {
      v10 = v9;
      v11 = sub_20D567758();

      v12 = sub_20D567838();
      if (*(v11 + 16))
      {
        v14 = sub_20CEED668(v12, v13);
        v16 = v15;

        if (v16)
        {
          sub_20CED43FC(*(v11 + 56) + 32 * v14, v43);

          swift_dynamicCast();
          goto LABEL_8;
        }
      }

      else
      {
      }
    }
  }

LABEL_8:
  sub_20D566248();
  v17 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled;
  v18 = *(v2 + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled);
  v19 = objc_opt_self();
  v20 = &selRef_systemGrayColor;
  if (!v18)
  {
    v20 = &selRef_labelColor;
  }

  v21 = [v19 *v20];
  v22 = sub_20D566218();
  sub_20D5661F8();
  v22(v43, 0);
  v43[3] = v3;
  v43[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(v4 + 16))(boxed_opaque_existential_1, v6, v3);
  MEMORY[0x20F31D5C0](v43);
  v24 = *(v2 + v7);
  v25 = &unk_27C820000;
  if (!v24)
  {
    goto LABEL_21;
  }

  v26 = [v24 latestResults];
  if (!v26)
  {
    goto LABEL_21;
  }

  v27 = v26;
  v28 = sub_20D567758();

  v29 = sub_20D567838();
  if (!*(v28 + 16))
  {

LABEL_21:
    v34 = 0;
    goto LABEL_22;
  }

  v31 = sub_20CEED668(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {

    v25 = &unk_27C820000;
    goto LABEL_21;
  }

  sub_20CED43FC(*(v28 + 56) + 32 * v31, v43);

  sub_20CF28748();
  if (swift_dynamicCast())
  {
    v34 = v42;
    v35 = [v42 integerValue];
    v25 = &unk_27C820000;
    if (v35 == 1)
    {
      v39 = *(v2 + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_switchView);
      if ([v39 isOn])
      {
        [v39 setOn:0 animated:v41 & 1];
      }
    }

    else if (v35 == 2)
    {
      v36 = *(v2 + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_switchView);
      if (([v36 isOn] & 1) == 0)
      {
        [v36 setOn:1 animated:v41 & 1];
      }
    }
  }

  else
  {
    v34 = 0;
    v25 = &unk_27C820000;
  }

LABEL_22:
  v37 = *(v2 + v25[364]);
  [v37 setUserInteractionEnabled_];
  [v37 setEnabled_];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20D096F28()
{
  v1 = sub_20D565988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A320 != -1)
  {
    swift_once();
  }

  v5 = qword_27C8382B8;
  sub_20D565998();
  v6 = v0;
  v7 = sub_20D565968();
  v8 = sub_20D567EC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 1024;
    *(v9 + 14) = [*(&v6->isa + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_switchView) isOn];
    _os_log_impl(&dword_20CEB6000, v7, v8, "User tapped switch cell: %@ to turn %{BOOL}d", v9, 0x12u);
    sub_20CF31DFC(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  (*(v2 + 8))(v4, v1);
  v11 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_delegate;
  result = swift_beginAccess();
  v13 = *(&v6->isa + v11);
  if (v13)
  {
    v14 = *(&v6->isa + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_switchView);
    swift_unknownObjectRetain();
    [v13 switchCell:v6 didTurnOn:{objc_msgSend(v14, sel_isOn)}];
    return swift_unknownObjectRelease();
  }

  return result;
}

id HUCollectionViewSwitchCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HUCollectionViewSwitchCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id HomeHubsAndBridgesHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HomeHubsAndBridgesHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeHubsAndBridgesHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HomeHubsAndBridgesHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeHubsAndBridgesHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s6HomeUI0A20HubsAndBridgesHelperC23presentBridgeDetailView3for4withSo8NAFutureCySo6NSNullCGSo11HMAccessoryC_So6HMHomeCtFZ_0(void *a1, void *a2)
{
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = objc_allocWithZone(type metadata accessor for HomeHubsAndBridgesListViewHostingController(0));
  HomeHubsAndBridgesListViewHostingController.init(home:)(a2);
  v13 = v12;
  if (qword_281120928 != -1)
  {
    swift_once();
  }

  v14 = sub_20D565988();
  __swift_project_value_buffer(v14, qword_281120930);
  v15 = a1;
  v16 = sub_20D565968();
  v17 = sub_20D567EC8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v13;
    v19 = v4;
    v20 = v18;
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v15;
    *v21 = v15;
    v22 = v15;
    _os_log_impl(&dword_20CEB6000, v16, v17, "[HomeHubsAndBridgesHelper-presentBridgeDetailView] accessory = %@", v20, 0xCu);
    sub_20CF31DFC(v21);
    MEMORY[0x20F31FC70](v21, -1, -1);
    v23 = v20;
    v4 = v19;
    v13 = v32;
    MEMORY[0x20F31FC70](v23, -1, -1);
  }

  v24 = [v15 uniqueIdentifier];
  sub_20D5637E8();

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, v10, v4);
  v26 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  (*(v5 + 32))(v27 + v26, v7, v4);
  aBlock[4] = sub_20CF512B4;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF13714;
  aBlock[3] = &block_descriptor_40;
  v28 = _Block_copy(aBlock);
  v29 = [objc_opt_self() futureWithBlock_];
  _Block_release(v28);

  (*(v5 + 8))(v10, v4);
  return v29;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20D097A0C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v10[1] = MEMORY[0x277D84FA0];
    sub_20CF7E714(Strong);
    v3 = v2;
    if (v2 >> 62)
    {
      v4 = sub_20D568768();
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
        }

        else
        {
          v5 = 0;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v6 = MEMORY[0x20F31DD20](v5, v3);
            }

            else
            {
              v6 = *(v3 + 8 * v5 + 32);
            }

            v7 = v6;
            ++v5;
            v8 = [v6 asGeneric];
            v9 = [objc_allocWithZone(type metadata accessor for EventAccessoryItemModule.TransformItemProvider()) initWithSourceProvider_];

            swift_unknownObjectWeakAssign();
            sub_20CEEA3F4(v10, [v9 asGeneric]);
          }

          while (v4 != v5);
        }

        return;
      }
    }

    else
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    return;
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_20D568768())
  {
    sub_20CEF7FC4(MEMORY[0x277D84F90]);
  }
}

id sub_20D097C88(void *a1)
{
  v2 = v1;
  v44[1] = &unk_28251AC90;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    v42 = a1;
    v6 = [v5 accessoryRepresentableObject];
    swift_getObjectType();
    v7 = sub_20D568218();
    swift_unknownObjectRelease();
    v8 = v2;
    v9 = sub_20D098E34(v7, v8);

    v10 = *(v9 + 16);
    if (v10 < 2)
    {

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_20D099A50();
      }

      objc_allocWithZone(sub_20D565F48());
      v31 = v42;
      v32 = sub_20D565F28();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v34 = Strong;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BF60);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_20D5BC410;
        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *(v35 + 32) = sub_20CF869EC;
        *(v35 + 40) = v36;
        v37 = v32;
      }

      else
      {
        v38 = v32;
      }

      sub_20D565D88();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20D5BA040;
      *(inited + 32) = v32;
      v40 = sub_20CEF32E4(inited);

      return v40;
    }

    else
    {
      v44[0] = MEMORY[0x277D84FA0];
      v11 = 32;
      do
      {
        v12 = v9;
        v13 = *(v9 + v11);
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_20D099A50();
        }

        objc_allocWithZone(sub_20D565F48());
        v41 = v42;
        sub_20D5663C8();
        v14 = sub_20D565F28();
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BF60);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_20D5BC410;
          v18 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *(v17 + 32) = sub_20CF87B8C;
          *(v17 + 40) = v18;
          v19 = v14;
        }

        else
        {
          v20 = v14;
        }

        sub_20D565D88();
        v21 = swift_allocObject();
        *(v21 + 16) = v13;
        v22 = sub_20D565D78();
        v24 = v23;
        v25 = *v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v24 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_20CEE8B30(0, v25[2] + 1, 1, v25);
          *v24 = v25;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v25 = sub_20CEE8B30((v27 > 1), v28 + 1, 1, v25);
          *v24 = v25;
        }

        v25[2] = v28 + 1;
        v29 = &v25[2 * v28];
        v29[4] = sub_20D099AA8;
        v29[5] = v21;
        v22(v43, 0);

        sub_20CEEA1BC(v43, v14);
        v11 += 8;
        --v10;
        v9 = v12;
      }

      while (v10);

      return v44[0];
    }
  }

  else
  {
    v43[0] = MEMORY[0x277D84FA0];
    sub_20CEEA1BC(v44, a1);

    return v43[0];
  }
}

uint64_t sub_20D098120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  sub_20D5663C8();
  sub_20D5663C8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_20D0992EC(a2, sub_20D098CA4, 0, isUniquelyReferenced_nonNull_native, &v8);

  result = v8;
  *a3 = v8;
  return result;
}

id sub_20D09827C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v44 = OBJC_IVAR____TtCC6HomeUI24EventAccessoryItemModuleP33_731A90F5CE0D8EE558856A09C091B34921TransformItemProvider_splitCharacteristicTransformResults;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BEE70;
  *(inited + 32) = sub_20D567838();
  *(inited + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA90);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_20D5BC4B0;
  v6 = *MEMORY[0x277D13E20];
  *(v5 + 32) = *MEMORY[0x277D13E20];
  v43 = v6;
  v7 = sub_20D5677F8();
  v8 = HFLocalizedString();

  v9 = sub_20D567838();
  v11 = v10;

  v12 = MEMORY[0x277D837D0];
  *(v5 + 40) = v9;
  *(v5 + 48) = v11;
  v13 = *MEMORY[0x277D13E88];
  *(v5 + 64) = v12;
  *(v5 + 72) = v13;
  v14 = *MEMORY[0x277D136F0];
  v15 = objc_allocWithZone(MEMORY[0x277D14440]);
  v16 = v13;
  v17 = [v15 initWithPackageIdentifier_];
  v18 = sub_20CECF940(0, &unk_27C820BA0);
  *(v5 + 104) = v18;
  *(v5 + 80) = v17;
  v19 = sub_20CEF452C(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2C8);
  swift_arrayDestroy();
  *(inited + 48) = v19;
  *(inited + 56) = sub_20D567838();
  *(inited + 64) = v20;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_20D5BC4B0;
  *(v21 + 32) = v43;
  v22 = sub_20D5677F8();
  v23 = HFLocalizedString();

  v24 = sub_20D567838();
  v26 = v25;

  *(v21 + 40) = v24;
  *(v21 + 48) = v26;
  *(v21 + 64) = MEMORY[0x277D837D0];
  *(v21 + 72) = v16;
  v27 = v16;
  v28 = [objc_allocWithZone(MEMORY[0x277D14440]) initWithPackageIdentifier_];
  *(v21 + 104) = v18;
  *(v21 + 80) = v28;
  v29 = sub_20CEF452C(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 72) = v29;
  *(inited + 80) = sub_20D567838();
  *(inited + 88) = v30;
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_20D5BC4B0;
  *(v31 + 32) = v43;
  v32 = sub_20D5677F8();
  v33 = HFLocalizedString();

  v34 = sub_20D567838();
  v36 = v35;

  *(v31 + 40) = v34;
  *(v31 + 48) = v36;
  *(v31 + 64) = MEMORY[0x277D837D0];
  *(v31 + 72) = v27;
  v37 = [objc_allocWithZone(MEMORY[0x277D14440]) initWithPackageIdentifier_];
  *(v31 + 104) = v18;
  *(v31 + 80) = v37;
  v38 = sub_20CEF452C(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 96) = v38;
  v39 = sub_20CEF5220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820BB0);
  swift_arrayDestroy();
  *&v45[v44] = v39;
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20D098BEC;
  aBlock[3] = &block_descriptor_41;
  v40 = _Block_copy(aBlock);

  v49.receiver = v45;
  v49.super_class = type metadata accessor for EventAccessoryItemModule.TransformItemProvider();
  v41 = objc_msgSendSuper2(&v49, sel_initWithSourceProvider_multipleTransformationBlock_, a1, v40);

  _Block_release(v40);
  return v41;
}

uint64_t sub_20D0987E4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820BB8);
  sub_20D099B18(&unk_27C820BC0, &qword_27C820BB8);
  v3 = sub_20D567D08();

  return v3;
}

char *EventAccessoryItemModule.__allocating_init(context:in:itemUpdater:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v7[OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider] = 0;
  *&v7[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = a1;
  swift_getObjectType();
  v9 = a1;
  v10 = sub_20CF86924(a2, a3, 0, 0, v7);

  swift_unknownObjectRelease();
  v11 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v12 = *&v9[v11];
  v13 = v10;

  v14 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  *&v13[v14] = v12;

  return v13;
}

char *EventAccessoryItemModule.init(context:in:itemUpdater:)(void *a1, void *a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider] = 0;
  *&v3[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = a1;
  swift_getObjectType();
  v8 = a1;
  v9 = sub_20CF86924(a2, a3, 0, 0, v3);

  swift_unknownObjectRelease();
  v10 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v11 = *&v8[v10];
  v12 = v9;

  v13 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  *&v12[v13] = v11;

  return v12;
}

id sub_20D098BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_20D098BEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820BB8);
  sub_20D099B18(&unk_27C820BC0, &qword_27C820BB8);
  v5 = sub_20D567CD8();

  return v5;
}

id sub_20D098CA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_20CED43FC((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

id sub_20D098CF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_20CED43FC(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_20CEC80B0(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_20D099AB0(&v18);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20D098E34(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &unk_27C81AE40);
    sub_20CEF7F74(&qword_27C81FC10, &unk_27C81AE40);
    sub_20D567D58();
    v2 = v53;
    v3 = v54;
    v5 = v55;
    v4 = v56;
    v6 = v57;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    sub_20D5663C8();
    v4 = 0;
  }

  v46 = *MEMORY[0x277D14080];
  v47 = MEMORY[0x277D84F90];
LABEL_8:
  v10 = v4;
  while (v2 < 0)
  {
    v15 = sub_20D568798();
    if (!v15 || (*&v50[0] = v15, sub_20CECF940(0, &unk_27C81AE40), swift_dynamicCast(), v14 = v51, v4 = v10, v13 = v6, !v51))
    {
LABEL_38:
      sub_20CEC80DC();
      return v47;
    }

LABEL_20:
    v49 = v13;
    v16 = *(a2 + OBJC_IVAR____TtCC6HomeUI24EventAccessoryItemModuleP33_731A90F5CE0D8EE558856A09C091B34921TransformItemProvider_splitCharacteristicTransformResults);
    v17 = [v14 characteristicType];
    v18 = sub_20D567838();
    v20 = v19;

    if (*(v16 + 16))
    {
      v21 = sub_20CEED668(v18, v20);
      v23 = v22;

      if (v23)
      {
        v24 = *(*(v16 + 56) + 8 * v21);
        v52 = sub_20CECF940(0, &unk_27C81AE40);
        *&v51 = v14;
        sub_20CEC80B0(&v51, v50);
        sub_20D5663C8();
        v25 = v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v24;
        v27 = sub_20CEF9358(v46);
        v29 = v24[2];
        v30 = (v28 & 1) == 0;
        v31 = __OFADD__(v29, v30);
        v32 = v29 + v30;
        if (v31)
        {
          goto LABEL_40;
        }

        v33 = v28;
        v34 = v47;
        if (v24[3] >= v32)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_28;
          }

          v36 = v25;
          v39 = v27;
          sub_20CF9CD08();
          v27 = v39;
          v37 = v58;
          if ((v33 & 1) == 0)
          {
            goto LABEL_31;
          }

LABEL_29:
          v38 = (v37[7] + 32 * v27);
          __swift_destroy_boxed_opaque_existential_1(v38);
          sub_20CEC80B0(v50, v38);
        }

        else
        {
          sub_20CF989F0(v32, isUniquelyReferenced_nonNull_native);
          v27 = sub_20CEF9358(v46);
          if ((v33 & 1) != (v35 & 1))
          {
            goto LABEL_42;
          }

LABEL_28:
          v36 = v25;
          v37 = v58;
          if (v33)
          {
            goto LABEL_29;
          }

LABEL_31:
          v37[(v27 >> 6) + 8] |= 1 << v27;
          *(v37[6] + 8 * v27) = v46;
          sub_20CEC80B0(v50, (v37[7] + 32 * v27));
          v40 = v37[2];
          v31 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v31)
          {
            goto LABEL_41;
          }

          v37[2] = v41;
          v42 = v46;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_20CEE8C70(0, v47[2] + 1, 1, v47);
        }

        v44 = v34[2];
        v43 = v34[3];
        if (v44 >= v43 >> 1)
        {
          v34 = sub_20CEE8C70((v43 > 1), v44 + 1, 1, v34);
        }

        v34[2] = v44 + 1;
        v47 = v34;
        v34[v44 + 4] = v37;
        v6 = v49;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v10 = v4;
    v6 = v49;
  }

  v11 = v10;
  v12 = v6;
  v4 = v10;
  if (v6)
  {
LABEL_16:
    v13 = (v12 - 1) & v12;
    v14 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v14)
    {
      goto LABEL_38;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_38;
    }

    v12 = *(v3 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  type metadata accessor for HFItemResultKey(0);
  result = sub_20D568C68();
  __break(1u);
  return result;
}

unint64_t sub_20D0992EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;
  sub_20D5663C8();

  sub_20D098CF4(&v40);
  v12 = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  sub_20CEC80B0(v41, v39);
  v13 = *a5;
  result = sub_20CEF9358(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_20CF989F0(v19, a4 & 1);
    result = sub_20CEF9358(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for HFItemResultKey(0);
    result = sub_20D568C68();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_20CF9CD08();
    result = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_20CEC80B0(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_20CEC80B0(v39, (v22[7] + 32 * result));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_20D098CF4(&v40);
    v12 = v40;
    if (v40)
    {
      v20 = 1;
      do
      {
        sub_20CEC80B0(v41, v39);
        v30 = *a5;
        result = sub_20CEF9358(v12);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v30[3] < v34)
        {
          sub_20CF989F0(v34, 1);
          result = sub_20CEF9358(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = result;

          v29 = (v36[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_1(v29);
          sub_20CEC80B0(v39, v29);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_20CEC80B0(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_20D098CF4(&v40);
        v12 = v40;
      }

      while (v40);
    }

LABEL_25:
    sub_20CEC80DC();
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_20D0995CC(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v39 = OBJC_IVAR____TtCC6HomeUI24EventAccessoryItemModuleP33_731A90F5CE0D8EE558856A09C091B34921TransformItemProvider_splitCharacteristicTransformResults;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BEE70;
  *(inited + 32) = sub_20D567838();
  *(inited + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA90);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_20D5BC4B0;
  v4 = *MEMORY[0x277D13E20];
  *(v3 + 32) = *MEMORY[0x277D13E20];
  v38 = v4;
  v5 = sub_20D5677F8();
  v6 = HFLocalizedString();

  v7 = sub_20D567838();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  *(v3 + 40) = v7;
  *(v3 + 48) = v9;
  v11 = *MEMORY[0x277D13E88];
  *(v3 + 64) = v10;
  *(v3 + 72) = v11;
  v12 = *MEMORY[0x277D136F0];
  v13 = objc_allocWithZone(MEMORY[0x277D14440]);
  v37 = v11;
  v14 = [v13 initWithPackageIdentifier_];
  v15 = sub_20CECF940(0, &unk_27C820BA0);
  *(v3 + 104) = v15;
  *(v3 + 80) = v14;
  v16 = sub_20CEF452C(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2C8);
  swift_arrayDestroy();
  *(inited + 48) = v16;
  *(inited + 56) = sub_20D567838();
  *(inited + 64) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_20D5BC4B0;
  *(v18 + 32) = v38;
  v19 = sub_20D5677F8();
  v20 = HFLocalizedString();

  v21 = sub_20D567838();
  v23 = v22;

  *(v18 + 40) = v21;
  *(v18 + 48) = v23;
  *(v18 + 64) = MEMORY[0x277D837D0];
  *(v18 + 72) = v37;
  v24 = [objc_allocWithZone(MEMORY[0x277D14440]) initWithPackageIdentifier_];
  *(v18 + 104) = v15;
  *(v18 + 80) = v24;
  v25 = sub_20CEF452C(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 72) = v25;
  *(inited + 80) = sub_20D567838();
  *(inited + 88) = v26;
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_20D5BC4B0;
  *(v27 + 32) = v38;
  v28 = sub_20D5677F8();
  v29 = HFLocalizedString();

  v30 = sub_20D567838();
  v32 = v31;

  *(v27 + 40) = v30;
  *(v27 + 48) = v32;
  *(v27 + 64) = MEMORY[0x277D837D0];
  *(v27 + 72) = v37;
  v33 = [objc_allocWithZone(MEMORY[0x277D14440]) initWithPackageIdentifier_];
  *(v27 + 104) = v15;
  *(v27 + 80) = v33;
  v34 = sub_20CEF452C(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 96) = v34;
  v35 = sub_20CEF5220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820BB0);
  swift_arrayDestroy();
  *&v40[v39] = v35;
  v42.receiver = v40;
  v42.super_class = type metadata accessor for EventAccessoryItemModule.TransformItemProvider();
  return objc_msgSendSuper2(&v42, sel_initWithSourceProvider_, a1);
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20D099A50()
{
  result = qword_27C81DB80;
  if (!qword_27C81DB80)
  {
    type metadata accessor for AccessoryRepresentableItemModule();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DB80);
  }

  return result;
}

uint64_t sub_20D099AB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D099B18(unint64_t *a1, uint64_t *a2)
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

id DashboardAccessoryControlAnimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DashboardAccessoryControlAnimator.init()()
{
  v0[OBJC_IVAR___HUAccessoryControlAnimator_currentTransitionType] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardAccessoryControlAnimator();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_20D099C90(void *a1)
{
  if (*(v1 + OBJC_IVAR___HUAccessoryControlAnimator_currentTransitionType))
  {
    sub_20D09A58C(a1);
  }

  else
  {
    sub_20D099D30(a1);
  }
}

void sub_20D099D30(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = [a1 viewForKey_];
      if (v7)
      {
        v8 = v7;
        v9 = [a1 containerView];
        [v9 bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        [v8 setFrame_];
        v18 = [a1 containerView];
        [v18 addSubview_];

        v19 = v4;
        v20 = [v6 collectionView];
        if (v20)
        {
          v21 = v20;
          [v20 setShowsVerticalScrollIndicator_];

          v22 = [v6 collectionView];
          if (v22)
          {
            [v22 _setSafeAreaInsetsFrozen_];

            if ([objc_opt_self() shouldUseControlCenterMaterials])
            {
              v23 = sub_20D09AE50();
              MEMORY[0x28223BE20](v23);
              *(swift_allocObject() + 16) = a1;
              swift_unknownObjectRetain();
              sub_20D568318();
            }

            else
            {
              v32 = objc_opt_self();
              v33 = swift_allocObject();
              *(v33 + 16) = v6;
              v42 = sub_20D09AE1C;
              v43 = v33;
              aBlock = MEMORY[0x277D85DD0];
              v39 = 1107296256;
              v40 = sub_20CFFFE8C;
              v41 = &block_descriptor_42;
              v34 = _Block_copy(&aBlock);
              v35 = v19;

              v36 = swift_allocObject();
              *(v36 + 16) = a1;
              v42 = sub_20D09AE3C;
              v43 = v36;
              aBlock = MEMORY[0x277D85DD0];
              v39 = 1107296256;
              v40 = sub_20D000F04;
              v41 = &block_descriptor_18_1;
              v37 = _Block_copy(&aBlock);
              swift_unknownObjectRetain();

              [v32 animateKeyframesWithDuration:3074 delay:v34 options:v37 animations:0.348748 completion:0.0];

              _Block_release(v37);
              _Block_release(v34);
            }

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
    }
  }

  v24 = sub_20D567EA8();
  if (qword_27C81A308 != -1)
  {
    swift_once();
  }

  v25 = qword_27C8382A8;
  if (os_log_type_enabled(qword_27C8382A8, v24))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412802;
    *(v26 + 4) = v1;
    *v27 = v1;
    *(v26 + 12) = 2112;
    v28 = swift_unknownObjectWeakLoadStrong();
    *(v26 + 14) = v28;
    v27[1] = v28;
    *(v26 + 22) = 2112;
    v29 = *MEMORY[0x277D77248];
    v30 = v1;
    v31 = [a1 viewForKey_];
    *(v26 + 24) = v31;
    v27[2] = v31;
    _os_log_impl(&dword_20CEB6000, v25, v24, "%@ Unexpected source view controller (%@) and/or destination view (%@) for presentation animation", v26, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v27, -1, -1);
    MEMORY[0x20F31FC70](v26, -1, -1);
  }

  [a1 completeTransition_];
}

void sub_20D09A2A4(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13 = sub_20D09AEA4;
  v14 = v3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_20CFFFE8C;
  v12 = &block_descriptor_27_0;
  v4 = _Block_copy(&v9);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.2];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_20D09AECC;
  v14 = v6;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_20CFFFE8C;
  v12 = &block_descriptor_33_0;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.1 animations:0.9];
  _Block_release(v7);
}

void sub_20D09A458(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    v4.a = 1.0;
    v4.b = 0.0;
    v4.c = 0.0;
    v4.d = 1.0;
    v4.tx = 0.0;
    v4.ty = 0.0;
    CGAffineTransformScale(&v3, &v4, 0.925, 0.925);
    v4 = v3;
    [v2 setTransform_];
  }

  else
  {
    __break(1u);
  }
}

void sub_20D09A4EC(void *a1)
{
  v1 = [a1 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (v3)
    {
      [v3 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20D09A58C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      if (qword_27C81A2A8 != -1)
      {
        swift_once();
      }

      v7 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:qword_27C838238 timingParameters:0.5125];
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      v27 = sub_20D09AED4;
      v28 = v8;
      v23 = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_20CFFFE8C;
      v26 = &block_descriptor_39_0;
      v9 = _Block_copy(&v23);
      v10 = v4;

      [v7 addAnimations_];
      _Block_release(v9);
      if (([objc_opt_self() shouldUseControlCenterMaterials] & 1) == 0)
      {
        v11 = swift_allocObject();
        *(v11 + 16) = v6;
        v27 = sub_20D09AEDC;
        v28 = v11;
        v23 = MEMORY[0x277D85DD0];
        v24 = 1107296256;
        v25 = sub_20CFFFE8C;
        v26 = &block_descriptor_45_0;
        v12 = _Block_copy(&v23);
        v13 = v10;

        [v7 addAnimations:v12 delayFactor:0.2092488];
        _Block_release(v12);
      }

      v14 = swift_allocObject();
      *(v14 + 16) = v6;
      *(v14 + 24) = a1;
      v27 = sub_20D09AEFC;
      v28 = v14;
      v23 = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_20CFC382C;
      v26 = &block_descriptor_51_0;
      v15 = _Block_copy(&v23);
      v16 = v10;
      swift_unknownObjectRetain();

      [v7 addCompletion_];
      _Block_release(v15);
      [v7 startAnimation];

      return;
    }
  }

  v17 = sub_20D567EA8();
  if (qword_27C81A308 != -1)
  {
    swift_once();
  }

  v18 = qword_27C8382A8;
  if (os_log_type_enabled(qword_27C8382A8, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v1;
    *v20 = v1;
    *(v19 + 12) = 2112;
    v21 = swift_unknownObjectWeakLoadStrong();
    *(v19 + 14) = v21;
    v20[1] = v21;
    v22 = v1;
    _os_log_impl(&dword_20CEB6000, v18, v17, "%@ Unexpected source view controller (%@) for dismissal animation", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v20, -1, -1);
    MEMORY[0x20F31FC70](v19, -1, -1);
  }

  [a1 completeTransition_];
}

void sub_20D09A9E0(void *a1)
{
  if (([objc_opt_self() shouldUseControlCenterMaterials] & 1) == 0)
  {
    v4 = [a1 collectionView];
    if (v4)
    {
      v5 = v4;
      v9[0] = 0x3FF0000000000000;
      v9[1] = 0;
      v9[2] = 0;
      v9[3] = 0x3FF0000000000000;
      v9[4] = 0;
      v9[5] = 0;
      [v4 setTransform_];

      v6 = [a1 collectionView];
      if (v6)
      {
        v7 = v6;
        [v6 _setHiddenPocketEdges_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v2 = [a1 parentViewController];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v8 = [v2 view];

  if (!v8)
  {
    goto LABEL_13;
  }

  [v8 setAlpha_];
}

void sub_20D09AB2C(void *a1, double a2)
{
  v3 = [a1 collectionView];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

id sub_20D09AB98(int a1, id a2, void *a3)
{
  result = [a2 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  [result setShowsVerticalScrollIndicator_];

  result = [a2 collectionView];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  [result _setSafeAreaInsetsFrozen_];

  if (([objc_opt_self() shouldUseControlCenterMaterials] & 1) == 0)
  {
    result = [a2 collectionView];
    if (result)
    {
      v8 = result;
      [result _setHiddenPocketEdges_];

      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_6:

  return [a3 completeTransition_];
}

id DashboardAccessoryControlAnimator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardAccessoryControlAnimator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20D09AD78()
{
  result = qword_27C820BF8;
  if (!qword_27C820BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820BF8);
  }

  return result;
}

id sub_20D09ADCC()
{
  result = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:324.591 damping:72.0656 initialVelocity:{0.0, 0.0}];
  qword_27C838238 = result;
  return result;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20D09AE50()
{
  result = qword_28111FB70;
  if (!qword_28111FB70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FB70);
  }

  return result;
}

uint64_t sub_20D09AF54(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v6 = a1;
  v7 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_20D568768())
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = MEMORY[0x277D84FA0];
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = -1 << *(v6 + 32);
    v10 = v6 + 56;
    v11 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v6 + 56);

    result = sub_20D5663C8();
    v31 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820C50);
  v8 = sub_20D568838();
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_20D5663C8();
  sub_20D568718();
  sub_20CECF940(0, a2);
  sub_20CEF7F74(a4, a2);
  result = sub_20D567D58();
  v6 = v35;
  v10 = v36;
  v11 = v37;
  v31 = v38;
  v12 = v39;
LABEL_11:
  v16 = v8 + 56;
  while (v6 < 0)
  {
    v20 = sub_20D568798();
    if (!v20)
    {
LABEL_34:
      sub_20CEC80DC();

      return v8;
    }

    *&v32 = v20;
    sub_20CECF940(0, a2);
    swift_dynamicCast();
LABEL_25:
    sub_20CECF940(0, a2);
    swift_dynamicCast();
    result = sub_20D5687D8();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v26);
      }

      while (v30 == -1);
      v17 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = *(v8 + 48) + 40 * v17;
    *(v18 + 32) = v34;
    *v18 = v32;
    *(v18 + 16) = v33;
    ++*(v8 + 16);
  }

  if (v12)
  {
    v19 = v31;
LABEL_24:
    v22 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v23 = *(*(v6 + 48) + ((v19 << 9) | (8 * v22)));
    goto LABEL_25;
  }

  v21 = v31;
  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v19 >= ((v11 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v12 = *(v10 + 8 * v19);
    ++v21;
    if (v12)
    {
      v31 = v19;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_20D09B2B4(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_20D568768())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820C70);
  v3 = sub_20D568838();
LABEL_6:
  if (sub_20CECF940(0, &qword_281120AC0) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_20D5663C8();
      sub_20D568718();
      sub_20CECF940(0, &qword_27C81DFD0);
      sub_20CEF7F74(&unk_27C820C80, &qword_27C81DFD0);
      sub_20D567D58();
      v1 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      sub_20D5663C8();
      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_20D568798())
        {
LABEL_55:
          sub_20CEC80DC();

          return;
        }

        sub_20CECF940(0, &qword_27C81DFD0);
        swift_dynamicCast();
        v35 = v37;
      }

      else
      {
        if (v11)
        {
          v33 = v10;
        }

        else
        {
          v36 = v10;
          do
          {
            v33 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }

            if (v33 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v33);
            ++v36;
          }

          while (!v11);
          v10 = v33;
        }

        v34 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
      }

      sub_20D0A1768(v35, &qword_281120AC0);
    }
  }

  if (v2)
  {

    sub_20D5663C8();
    sub_20D568718();
    sub_20CECF940(0, &qword_27C81DFD0);
    sub_20CEF7F74(&unk_27C820C80, &qword_27C81DFD0);
    sub_20D567D58();
    v1 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    sub_20D5663C8();
    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_20D568798())
    {
      goto LABEL_55;
    }

    sub_20CECF940(0, &qword_27C81DFD0);
    swift_dynamicCast();
    v19 = v37;
LABEL_29:
    v22 = sub_20D5683E8();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v37 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v37;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

BOOL sub_20D09B7D8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_20D5638C8();
    ++v2;
    sub_20D0A34E4();
  }

  while ((sub_20D5677E8() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_20D09B8B0(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_20CECF940(0, &qword_28111FB60);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x20F31DD20](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x20F31DD20](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_20D5683F8();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_20D5683F8();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_20D568768();
  }

  result = sub_20D568768();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_20D09BB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0) - 8;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_20D0A36A4(v13, v10);
        sub_20D0A36A4(v14, v6);
        v16 = _s6HomeUI32ControlCenterModuleConfigurationV9ElementIDO2eeoiySbAE_AEtFZ_0(v10, v6);
        sub_20D0A3708(v6);
        sub_20D0A3708(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_20D09BC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_20D568BF8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20D09BD04(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D5638C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_20D0A34E4();
    v22 = sub_20D5677E8();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_20D09BEE8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_62;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v37 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v35 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v33 = v1;
    while (1)
    {
      if (v37)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x20F31DD20](v2, v32);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v2 >= *(v36 + 16))
        {
          goto LABEL_56;
        }

        v4 = *(v35 + 8 * v2);
        isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_55;
        }
      }

      v6 = [objc_opt_self() accessoryLikeObjectsForAccessoryRepresentable_];
      sub_20CECF940(0, &unk_27C81BF40);
      sub_20CEF7F74(&qword_27C81ECE0, &unk_27C81BF40);
      v7 = sub_20D567D08();

      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = sub_20D568768();
        if (!v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v8 = *(v7 + 16);
        if (!v8)
        {
LABEL_16:
          swift_unknownObjectRelease();

          v10 = MEMORY[0x277D84F90];
          goto LABEL_20;
        }
      }

      v9 = v3;
      if (v8 < 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
        v10 = swift_allocObject();
        v11 = _swift_stdlib_malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 25;
        }

        *(v10 + 16) = v8;
        *(v10 + 24) = (2 * (v12 >> 3)) | 1;
      }

      sub_20D5663C8();
      v13 = sub_20CF50F3C(&v38, (v10 + 32), v8, v7);
      isUniquelyReferenced_nonNull_bridgeObject = sub_20CEC80DC();
      if (v13 != v8)
      {
        goto LABEL_58;
      }

      swift_unknownObjectRelease();

      v3 = v9;
LABEL_20:
      v14 = v10 < 0 || (v10 & 0x4000000000000000) != 0;
      v15 = v14 ? sub_20D568768() : *(v10 + 16);
      v16 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = isUniquelyReferenced_nonNull_bridgeObject + v15;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
      {
        goto LABEL_54;
      }

LABEL_27:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v16)
        {
          goto LABEL_35;
        }

        v18 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v39 = v3;
          v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (!v14)
          {
            goto LABEL_31;
          }

          goto LABEL_37;
        }
      }

      else if (v16)
      {
LABEL_35:
        sub_20D568768();
      }

      isUniquelyReferenced_nonNull_bridgeObject = sub_20D568888();
      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v18 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
      v19 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (!v14)
      {
LABEL_31:
        v21 = *(v10 + 16);
        if (v21)
        {
          goto LABEL_38;
        }

        goto LABEL_4;
      }

LABEL_37:
      v22 = v18;
      isUniquelyReferenced_nonNull_bridgeObject = sub_20D568768();
      v18 = v22;
      v21 = isUniquelyReferenced_nonNull_bridgeObject;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
LABEL_38:
        if (((v20 >> 1) - v19) < v15)
        {
          goto LABEL_59;
        }

        v23 = v18 + 8 * v19 + 32;
        v34 = v18;
        if (v14)
        {
          if (v21 < 1)
          {
            goto LABEL_61;
          }

          sub_20D0A3480();
          for (i = 0; i != v21; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820C58);
            v25 = sub_20CEFDF58(&v38, i, v10);
            v27 = *v26;
            (v25)(&v38, 0);
            *(v23 + 8 * i) = v27;
          }
        }

        else
        {
          swift_arrayInitWithCopy();
        }

        v1 = v33;
        v3 = v39;
        if (v15 >= 1)
        {
          v28 = *(v34 + 16);
          v5 = __OFADD__(v28, v15);
          v29 = v28 + v15;
          if (v5)
          {
            goto LABEL_60;
          }

          *(v34 + 16) = v29;
        }

        goto LABEL_5;
      }

LABEL_4:

      v3 = v39;
      if (v15 > 0)
      {
        goto LABEL_57;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_20D568768();
    v17 = isUniquelyReferenced_nonNull_bridgeObject + v15;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
    {
      goto LABEL_27;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_20D568768();
    isUniquelyReferenced_nonNull_bridgeObject = v30;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20D09C36C(uint64_t a1)
{
  v1 = a1;
  v24 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &unk_27C81BF40);
    sub_20CEF7F74(&qword_27C81ECE0, &unk_27C81BF40);
    result = sub_20D567D58();
    v1 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    result = sub_20D5663C8();
    v5 = 0;
  }

  v17 = v4;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_20CEC80DC();
      return v24;
    }

    while (1)
    {
      v15 = [v14 profiles];
      sub_20CECF940(0, &unk_27C81D480);
      sub_20CEF7F74(&unk_27C81BF30, &unk_27C81D480);
      v16 = sub_20D567D08();

      result = sub_20CF6C26C(v16);
      v5 = v12;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_20D568798())
      {
        sub_20CECF940(0, &unk_27C81BF40);
        swift_dynamicCast();
        v14 = v18;
        v12 = v5;
        v13 = v6;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

id DashboardFilterBarController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DashboardFilterBarController.init()()
{
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR___HUDashboardFilterBarController_contextTypeDescriptionForAnalytics];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR___HUDashboardFilterBarController_layoutConstraints] = 0;
  *&v0[OBJC_IVAR___HUDashboardFilterBarController____lazy_storage___heightConstraint] = 0;
  *&v0[OBJC_IVAR___HUDashboardFilterBarController_preferredHeight] = 0;
  *&v0[OBJC_IVAR___HUDashboardFilterBarController____lazy_storage___blurGroupingEffectView] = 0;
  *&v0[OBJC_IVAR___HUDashboardFilterBarController__layoutOptions] = 0;
  type metadata accessor for DashboardFilterBarItemManager();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DashboardFilterBarController();
  v3 = objc_msgSendSuper2(&v5, sel_initUsingCompositionalLayoutWithItemManager_, v2);

  return v3;
}

id sub_20D09C758()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for DashboardFilterBarController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  [v0 setConstrainCellReorderingToBounds_];
  [v0 setClearsSelectionOnViewWillAppear_];
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  [result setInsetsLayoutMarginsFromSafeArea_];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  [result setBounces_];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v0 view];
  if (result)
  {
    v7 = result;
    v8 = sub_20D09F408();
    [v7 insertSubview:v8 atIndex:0];

    return sub_20D09F4A0();
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_20D09C95C(char a1)
{
  v2 = v1;
  if (qword_281120928 != -1)
  {
    swift_once();
  }

  v4 = sub_20D565988();
  __swift_project_value_buffer(v4, qword_281120930);
  v5 = sub_20D565968();
  v6 = sub_20D567EC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v5, v6, "[DashboardFilterBarController-viewWillAppear]", v7, 2u);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for DashboardFilterBarController();
  return objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
}

id sub_20D09CABC(char a1)
{
  v2 = v1;
  if (qword_281120928 != -1)
  {
    swift_once();
  }

  v4 = sub_20D565988();
  __swift_project_value_buffer(v4, qword_281120930);
  v5 = sub_20D565968();
  v6 = sub_20D567EC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v5, v6, "[DashboardFilterBarController-viewWillDisappear]", v7, 2u);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for DashboardFilterBarController();
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
  result = [v2 presentedViewController];
  if (result)
  {

    return [v2 dismissViewControllerAnimated:a1 & 1 completion:0];
  }

  return result;
}

uint64_t sub_20D09CEA0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20D09CF00(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___HUDashboardFilterBarController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

uint64_t sub_20D09D024()
{
  v1 = (v0 + OBJC_IVAR___HUDashboardFilterBarController_contextTypeDescriptionForAnalytics);
  swift_beginAccess();
  v2 = *v1;
  sub_20D5663C8();
  return v2;
}

uint64_t sub_20D09D0F8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___HUDashboardFilterBarController_contextTypeDescriptionForAnalytics);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_20D5663C8();
}

void sub_20D09D164(int a1)
{
  v2 = v1;
  HIDWORD(v17) = a1;
  v3 = sub_20D5638C8();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2;
  v8 = [v2 collectionView];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 indexPathsForSelectedItems];

  if (v10)
  {
    v11 = sub_20D567A78();

    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      while (v13 < *(v11 + 16))
      {
        (*(v4 + 16))(v7, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v3);
        v14 = [v18 collectionView];
        if (!v14)
        {
          goto LABEL_11;
        }

        v15 = v14;
        ++v13;
        v16 = sub_20D563868();
        [v15 deselectItemAtIndexPath:v16 animated:BYTE4(v17) & 1];

        (*(v4 + 8))(v7, v3);
        if (v12 == v13)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_8:
  }
}

id sub_20D09D3A8(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = a2;
  v5 = sub_20D5638C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  MEMORY[0x28223BE20](v9 - 8);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = sub_20CFE86BC();
  v22 = v21;
  v43 = v3;
  v23 = &v3[OBJC_IVAR___HUDashboardFilterBarController_contextTypeDescriptionForAnalytics];
  swift_beginAccess();
  *v23 = v20;
  v23[1] = v22;

  (*(v6 + 56))(v19, 1, 1, v5);
  v24 = (a1 + OBJC_IVAR___HUDashboardContext_type);
  if (!*(a1 + OBJC_IVAR___HUDashboardContext_type + 8))
  {
    v25 = *v24;
    v26 = *v24;
    v27 = [v43 itemManager];
    type metadata accessor for DashboardFilterBarItemManager();
    swift_dynamicCastClassUnconditional();
    sub_20CF5BB88(v26, v16);

    sub_20CFEE3D0(v25, 0);
    sub_20CEF928C(v19, &qword_27C81D5C0);
    sub_20CF5E4EC(v16, v19);
  }

  sub_20D0A158C(v19, v13);
  v28 = *(v6 + 48);
  v29 = &selRef_cameraContainsMotionServiceItem_;
  if (v28(v13, 1, v5) == 1)
  {
    sub_20CEF928C(v13, &qword_27C81D5C0);
  }

  else
  {
    (*(v6 + 32))(v8, v13, v5);
    result = [v43 collectionView];
    if (!result)
    {
      goto LABEL_20;
    }

    v31 = result;
    v32 = [result indexPathsForSelectedItems];

    if (v32)
    {
      v33 = sub_20D567A78();
    }

    else
    {
      v33 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820C40);
    v34 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_20D5BC410;
    (*(v6 + 16))(v35 + v34, v8, v5);
    if (v33)
    {
      v36 = sub_20D09BD04(v33, v35);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v6 + 8))(v8, v5);
      v29 = &selRef_cameraContainsMotionServiceItem_;
      if (v36)
      {
        return sub_20CEF928C(v19, &qword_27C81D5C0);
      }
    }

    else
    {
      v37 = *(v6 + 8);
      v37(v8, v5);
      swift_setDeallocating();
      v37((v35 + v34), v5);
      swift_deallocClassInstance();
      v29 = &selRef_cameraContainsMotionServiceItem_;
    }
  }

  result = [v43 v29[306]];
  if (result)
  {
    v38 = result;
    v39 = v41;
    sub_20D0A158C(v19, v41);
    if (v28(v39, 1, v5) == 1)
    {
      v40 = 0;
    }

    else
    {
      v40 = sub_20D563868();
      (*(v6 + 8))(v39, v5);
    }

    [v38 selectItemAtIndexPath:v40 animated:v42 & 1 scrollPosition:0];

    return sub_20CEF928C(v19, &qword_27C81D5C0);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_20D09D97C()
{
  v1 = [v0 itemManager];
  v2 = [v1 allDisplayedItems];

  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v3 = sub_20D567D08();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_20D568768();
  }

  else
  {
    v4 = *(v3 + 16);
  }

  if (v4)
  {
    result = [v0 collectionView];
    if (result)
    {
      v6 = result;
      [result contentInset];

      result = [v0 collectionView];
      if (result)
      {
        v7 = result;
        [result contentInset];

        [sub_20D0A1F24() sectionTopMargin];
        v8 = [sub_20D0A1F24() filterCategoryCellOptions];
        [v8 cellHeight];

        return [sub_20D0A1F24() sectionBottomMargin];
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_20D09DC14(void *a1, uint64_t a2)
{
  v20.receiver = v2;
  v20.super_class = type metadata accessor for DashboardFilterBarController();
  objc_msgSendSuper2(&v20, sel_configureCell_forItem_, a1, a2);
  type metadata accessor for DashboardFilterCategoryCell();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    v8 = [sub_20D0A1F24() filterCategoryCellOptions];
    v9 = OBJC_IVAR___HUDashboardFilterCategoryCell_layoutOptions;
    swift_beginAccess();
    v10 = *&v6[v9];
    *&v6[v9] = v8;

    v11 = sub_20D09F408();
    v12 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundEffectGrouper;
    swift_beginAccess();
    v13 = *&v6[v12];
    *&v6[v12] = v11;
    v14 = v11;
    if (v13)
    {
      v15 = v11 == v13;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      [v6 setNeedsUpdateConfiguration];
    }

    swift_unknownObjectRelease();

    v16 = *MEMORY[0x277D13DC8];
    v17 = v7;
    MEMORY[0x20F31D7A0](v19, v16);
    if (v19[3])
    {
      if (swift_dynamicCast())
      {
        v18 = sub_20D5677F8();

LABEL_12:
        [v6 setAccessibilityIdentifier_];

        return;
      }
    }

    else
    {
      sub_20CEF928C(v19, &qword_27C81BF00);
    }

    v18 = 0;
    goto LABEL_12;
  }
}

void sub_20D09DF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v10 = sub_20D567CD8();
  v11 = sub_20D567CD8();
  v12 = sub_20D567CD8();
  v17.receiver = v5;
  v17.super_class = type metadata accessor for DashboardFilterBarController();
  objc_msgSendSuper2(&v17, sel_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad_, a1, v10, v11, v12, a5 & 1);

  if ((a3 & 0xC000000000000001) != 0)
  {
    if (sub_20D568768())
    {
      goto LABEL_9;
    }
  }

  else if (*(a3 + 16))
  {
    goto LABEL_9;
  }

  if ((a4 & 0xC000000000000001) != 0)
  {
    if (!sub_20D568768())
    {
      return;
    }
  }

  else if (!*(a4 + 16))
  {
    return;
  }

LABEL_9:
  v13 = sub_20D09F340();
  [v13 setActive_];

  v14 = [v5 collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = [sub_20D0A1F24() filterCategoryCellOptions];
    [v16 cellHeight];

    [v15 frame];
    [v15 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20D09E248(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v31 = MEMORY[0x277D84F90];
  sub_20D09E58C(Strong, a4);
  MEMORY[0x20F31CEE0]();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  v10 = [a5 indexPathsForSelectedItems];
  if (!v10 || (v11 = v10, sub_20D5638C8(), v12 = sub_20D567A78(), v11, LOBYTE(v11) = sub_20D09B7D8(a3, v12), v13 = , (v11 & 1) == 0))
  {
    sub_20CECF940(0, &unk_28111FB00);
    v14 = sub_20D5677F8();
    v15 = HULocalizedString(v14);

    sub_20D567838();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a4;
    v17[4] = 0xD000000000000030;
    v17[5] = 0x800000020D5D8E20;
    v18 = a4;
    v19 = sub_20D568438();
    MEMORY[0x20F31CEE0](v19, v20, v21, v22, v23);
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    v13 = sub_20D567B08();
  }

  v24 = sub_20D09E7AC(v13, a4);
  MEMORY[0x20F31CEE0](v24, v25, v26, v27, v28);
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  sub_20CECF940(0, &qword_28111FB78);
  v29 = sub_20D568308();

  return v29;
}

uint64_t sub_20D09E58C(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = [v2 itemManager];
  type metadata accessor for DashboardFilterBarItemManager();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    sub_20CECF940(0, &qword_28111FB78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20D5BA040;
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = a2;
    v9[4] = ObjectType;
    aBlock[4] = sub_20D0A3650;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CF6CF70;
    aBlock[3] = &block_descriptor_45_1;
    v10 = _Block_copy(aBlock);
    v11 = objc_opt_self();
    v12 = v5;
    v13 = a2;
    v14 = [v11 elementWithProvider_];
    _Block_release(v10);

    *(v8 + 32) = v14;
    v15 = sub_20D568308();

    return v15;
  }

  else
  {

    sub_20CECF940(0, &qword_28111FB78);
    return sub_20D568308();
  }
}

uint64_t sub_20D09E7AC(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = [v3 itemManager];
  type metadata accessor for DashboardFilterBarItemManager();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = dispatch_semaphore_create(0);
    v9 = swift_allocObject();
    *(v9 + 16) = MEMORY[0x277D84F90];
    if (*(v7 + OBJC_IVAR____TtC6HomeUI29DashboardFilterBarItemManager_actionSetItemProvider))
    {
      v10 = [a2 sortedActionSetItemsWithProvider_];
    }

    else
    {
      sub_20CECF940(0, &qword_27C820CA0);
      v12 = MEMORY[0x20F31D7D0](MEMORY[0x277D84F90]);
      v10 = [objc_opt_self() futureWithResult_];
    }

    v13 = [v10 reschedule_];

    swift_unknownObjectRelease();
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v8;
    aBlock[4] = sub_20D0A360C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CF48BDC;
    aBlock[3] = &block_descriptor_36_1;
    v15 = _Block_copy(aBlock);

    v16 = v8;

    v17 = [v13 addCompletionBlock_];
    _Block_release(v15);

    sub_20D568148();
    swift_beginAccess();
    if (*(v9 + 16) >> 62)
    {
      sub_20CECF940(0, &unk_28111FFC0);
      sub_20D5663C8();
      sub_20D568A78();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_20D568C08();
      sub_20CECF940(0, &unk_28111FFC0);
    }

    sub_20CECF940(0, &qword_28111FB78);
    v18 = sub_20D568308();

    return v18;
  }

  else
  {

    sub_20CECF940(0, &qword_28111FB78);
    return sub_20D568308();
  }
}