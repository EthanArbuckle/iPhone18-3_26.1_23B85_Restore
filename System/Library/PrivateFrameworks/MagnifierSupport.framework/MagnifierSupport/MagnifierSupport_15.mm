double sub_257D0B9D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v3 = v1(v2);

  return v3;
}

BOOL sub_257D0BA28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = [Strong navigationController];
    if (v2)
    {
      v3 = v2;
      v4 = sub_257D0A4AC(&OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___filterCustomizationViewController, type metadata accessor for FilterCustomizationViewController);
      [v3 pushViewController:v4 animated:1];
    }
  }

  return v1 != 0;
}

void sub_257D0BAEC()
{
  v0 = sub_257D0F410();
  v2 = v1;
  v4 = v3;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_2815447E0;

  if (v5 != -1)
  {
    v6 = swift_once();
  }

  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
  sub_257ECFD50();

  sub_257D53B38(v11, v0, v2, v4);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();

    if (v9)
    {
      sub_257E0EF78(1);
      v10 = sub_257DFF3FC();
      sub_257D839A4();
      swift_unknownObjectRelease();
    }
  }
}

void sub_257D0BD10()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_tableView];
    [v1 addSubview_];

    [v3 setDelegate_];
    sub_257BD2C2C(0, &qword_27F8F5560);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = sub_257ECF4C0();
    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

    v6 = sub_257ECF4C0();
    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];

    v7 = sub_257ECF4C0();
    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

    [v3 setAllowsSelectionDuringEditing_];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = [v0 view];
    if (v8)
    {
      v9 = v8;
      sub_257EB6FD8(v8, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257D0BF44(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7E90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  [*&v2[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_tableView] setEditing_];
  sub_257D0C0E4();
  sub_257D0C34C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = off_286912048;
    type metadata accessor for AppViewController();
    v9();
    swift_unknownObjectRelease();
  }

  v10 = sub_257D0A89C();
  sub_257D0C764();
  sub_257ECDBF0();

  return (*(v6 + 8))(v8, v5);
}

void sub_257D0C0E4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_handleDoneButtonTap_];
  v2 = [objc_opt_self() systemYellowColor];
  [v1 setTintColor_];

  v3 = [v0 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257ED9BF0;
  *(v4 + 32) = v1;
  sub_257BD2C2C(0, qword_27F8F7638);
  v5 = v1;
  v6 = sub_257ECF7F0();

  [v3 setRightBarButtonItems_];

  v7 = [v0 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    sub_257ECF500();
    v12 = sub_257ECF4C0();
  }

  [v7 setTitle_];
}

void sub_257D0C34C()
{
  if (sub_257ECF030())
  {
    v1 = sub_257ECF4C0();
    v2 = [objc_opt_self() systemImageNamed_];

    if (v2)
    {
      v3 = [v2 imageWithRenderingMode_];

      v4 = [objc_opt_self() systemYellowColor];
      v5 = [v3 imageWithTintColor_];
    }

    else
    {
      v5 = 0;
    }

    v15 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v5 style:0 target:v0 action:sel_handleInfoButtonTap_];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = objc_opt_self();
    v14 = v15;
    v18 = [v17 bundleForClass_];
    v19 = sub_257ECF4C0();
    v20 = sub_257ECF4C0();
    v7 = [v18 localizedStringForKey:v19 value:0 table:v20];

    if (!v7)
    {
      sub_257ECF500();
      v7 = sub_257ECF4C0();
    }

    [v14 setAccessibilityLabel_];
  }

  else
  {
    v6 = [objc_opt_self() buttonWithType_];
    [v6 addTarget:v0 action:sel_handleInfoButtonTap_ forControlEvents:64];
    v7 = v6;
    [v7 setShowsLargeContentViewer_];
    type metadata accessor for MAGUtilities();
    v8 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = sub_257ECF4C0();
    v11 = sub_257ECF4C0();
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    if (!v12)
    {
      sub_257ECF500();
      v12 = sub_257ECF4C0();
    }

    [v7 setLargeContentTitle_];

    v13 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
    [v7 addInteraction_];

    v14 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
    v5 = v7;
  }

  v21 = [v0 navigationItem];
  [v21 setLeftBarButtonItem_];
}

uint64_t sub_257D0C764()
{
  sub_257D0F954();
  sub_257D0F9A8();
  sub_257ECDBB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7E90);
  sub_257ECDB50();
  sub_257ECDB20();
  sub_257ECDB50();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2815447E0;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  sub_257ECFD50();

  sub_257D0F074(v5);

  sub_257ECDB20();

  sub_257ECDB50();
  v2 = swift_beginAccess();
  MEMORY[0x28223BE20](v2);

  sub_257ECFD50();

  sub_257D0F074(v6);

  sub_257ECDB20();

  sub_257ECDB50();
  v3 = sub_257D53928();
  sub_257D0F074(v3);

  sub_257ECDB20();

  result = AXIsInternalInstall();
  if (result)
  {
    sub_257ECDB50();
    return sub_257ECDB20();
  }

  return result;
}

void sub_257D0CB6C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_257E27A60();
    swift_unknownObjectRelease();
  }

  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_257D0CC10(void *a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_257E27A60();
    swift_unknownObjectRelease();
  }

  v5 = [v2 presentingViewController];
  if (v5)
  {
    v6 = v5;
    if (a1)
    {
      v7[4] = a1;
      v7[5] = a2;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 1107296256;
      v7[2] = sub_257D231C0;
      v7[3] = &block_descriptor_27;
      a1 = _Block_copy(v7);
      sub_257ECC3F0();
    }

    [v6 dismissViewControllerAnimated:1 completion:a1];
    _Block_release(a1);
  }
}

void sub_257D0CD34()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_257ECF500();
    v5 = sub_257ECF4C0();
  }

  v6 = sub_257ECF4C0();
  v7 = [objc_opt_self() systemImageNamed_];

  v10 = [objc_allocWithZone(type metadata accessor for OnboardingViewController()) initWithTitle:v5 detailText:0 icon:v7];
  v8 = [v0 navigationController];
  if (v8)
  {
    v9 = v8;
    [v8 presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_257D0CF20(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_257ED0160();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_257C3A464(v9);
}

id sub_257D0CF9C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___activitiesCustomizationViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___captureSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___detectionModeSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___filterCustomizationViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___internalDetectionOptionsViewController] = 0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___dataSource] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v12 = sub_257ECF4C0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, a3);

  return v13;
}

id sub_257D0D18C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___activitiesCustomizationViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___captureSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___detectionModeSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___filterCustomizationViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___internalDetectionOptionsViewController] = 0;
  v4 = OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  *&v1[v4] = v7;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___dataSource] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_257D0D814@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_257ECCEA0();
  if (v6 == sub_257ECCEA0())
  {
    v7 = sub_257ECCEB0();
    v8 = *(*(v7 - 8) + 16);
    v9 = v7;
    v10 = a3;
    v11 = a2;
LABEL_18:

    return v8(v10, v11, v9);
  }

  v12 = sub_257ECCEA0();
  v13 = v12 - 1;
  if ((v12 - 1) > 3)
  {
    v22 = sub_257ECCEB0();
    v8 = *(*(v22 - 8) + 16);
    v9 = v22;
    v10 = a3;
    v11 = a1;
    goto LABEL_18;
  }

  if (sub_257ECCEA0() != 1)
  {
    goto LABEL_25;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = qword_2815447E0;

  if (v14 != -1)
  {
    v15 = swift_once();
  }

  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  sub_257ECFD50();

  v16 = *(v24 + 16);

  if (!v16)
  {
    v23 = sub_257ECCEB0();
    return (*(*(v23 - 8) + 16))(a3, a1, v23);
  }

  else
  {
    if (!(1u >> (v13 & 0xF)))
    {
      goto LABEL_16;
    }

LABEL_25:
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = qword_2815447E0;

    if (v17 != -1)
    {
      v18 = swift_once();
    }

    MEMORY[0x28223BE20](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
    sub_257ECFD50();

    v19 = *(v25 + 16);

    if (v19 >= 2)
    {
      return MEMORY[0x259C6F970](0, 2);
    }

    else
    {
LABEL_16:
      v20 = sub_257ECCEB0();
      return (*(*(v20 - 8) + 16))(a3, a2, v20);
    }
  }
}

void sub_257D0DDF4(void *a1)
{
  v2 = v1;
  v4 = sub_257D0A89C();
  sub_257ECDBE0();

  if (v13 <= 0xEFu)
  {
    v5 = sub_257ECCE30();
    [a1 deselectRowAtIndexPath:v5 animated:1];

    if (!(v13 >> 6))
    {
      v10 = [v2 navigationController];
      v7 = v10;
      if (v13)
      {
        if (v13 == 1)
        {
          if (!v10)
          {
            return;
          }

          v8 = &OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___captureSettingsViewController;
          v9 = type metadata accessor for CaptureSettingsViewController;
        }

        else
        {
          if (!v10)
          {
            return;
          }

          v8 = &OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___detectionModeSettingsViewController;
          v9 = type metadata accessor for DetectionModeSettingsViewController;
        }
      }

      else
      {
        if (!v10)
        {
          return;
        }

        v8 = &OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___activitiesCustomizationViewController;
        v9 = type metadata accessor for ActivitiesCustomizationViewController;
      }

      goto LABEL_18;
    }

    if (v13 >> 6 != 1)
    {
      v11 = [v2 navigationController];
      if (!v11)
      {
        return;
      }

      v7 = v11;
      v8 = &OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___internalDetectionOptionsViewController;
      v9 = type metadata accessor for InternalDetectionOptionsViewController;
      goto LABEL_18;
    }

    if ((v13 & 0x3F) == 3 && !UIAccessibilityIsVoiceOverRunning())
    {
      v6 = [v2 navigationController];
      if (v6)
      {
        v7 = v6;
        v8 = &OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___filterCustomizationViewController;
        v9 = type metadata accessor for FilterCustomizationViewController;
LABEL_18:
        v12 = sub_257D0A4AC(v8, v9);
        [v7 pushViewController:v12 animated:1];
      }
    }
  }
}

uint64_t type metadata accessor for EditControlsViewController.DataSource()
{
  result = qword_27F8F7E60;
  if (!qword_27F8F7E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_257D0E1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  a5(a4);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_257D0E218(void *a1)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_257ECCE40();
  sub_257ECCE40();
  v9 = a1;
  sub_257D0E708(v8, v6, 0);

  v10 = *(v3 + 8);
  v10(v6, v2);
  return (v10)(v8, v2);
}

uint64_t sub_257D0E354(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 1)
  {
    a2 = 3;
    goto LABEL_5;
  }

  if (a2 == 2)
  {
LABEL_5:
    MEMORY[0x259C6F990]([a1 numberOfRowsInSection_], a2);
    sub_257D0E708(a3, v10, 1);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_257D0E470(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_257ECCEB0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_257ECCE40();
  if (a4 == 1)
  {
    a4 = 3;
  }

  else if (a4 != 2)
  {
    return (*(v8 + 8))(v13, v7);
  }

  v15 = a3;
  v16 = a1;
  MEMORY[0x259C6F990]([v15 numberOfRowsInSection_], a4);
  sub_257D0E708(v13, v11, 1);

  v17 = *(v8 + 8);
  v17(v11, v7);
  return (v17)(v13, v7);
}

BOOL sub_257D0E600(void *a1)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v6 = a1;
  sub_257ECDBE0();

  (*(v3 + 8))(v5, v2);
  return v10 < 0xF0u && (v10 & 0xC0) == 64;
}

unint64_t sub_257D0E708(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7E90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  sub_257ECCEB0();
  sub_257CE50DC();
  result = sub_257ECF450();
  if (result)
  {
    return result;
  }

  result = sub_257ECDBE0();
  v9 = v35;
  if (v35 > 0xEFu)
  {
    return result;
  }

  sub_257ECDBE0();
  v10 = v34;
  sub_257ECDC00();
  if (v10 > 0xEF)
  {
    v11 = sub_257ECDB80();
    result = sub_257ECCEA0();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v11 + 16))
    {
      v12 = *(v11 + result + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7EA0);
      v13 = swift_allocObject();
      v22 = xmmword_257ED6D30;
      *(v13 + 16) = xmmword_257ED6D30;
      *(v13 + 32) = v9;
      sub_257ECDB30();

      v14 = swift_allocObject();
      *(v14 + 16) = v22;
      *(v14 + 32) = v9;
      v33 = v12;
      sub_257ECDB20();

      goto LABEL_17;
    }

    __break(1u);
    return result;
  }

  v32 = v9;
  v15 = sub_257ECDB40();
  if ((v16 & 1) == 0)
  {
    v17 = v15;
    v31 = v10;
    v18 = sub_257ECDB40();
    if ((v19 & 1) == 0)
    {
      if (v17 < v18)
      {
        v27 = v9;
        sub_257ECDB70();
        v20 = v28;
        v25 = v10;
        sub_257ECDB70();
        if (v20 == 5)
        {
          if (v26 != 5)
          {
            goto LABEL_16;
          }
        }

        else if (v26 == 5 || v20 != v26)
        {
          goto LABEL_16;
        }

        v24 = v9;
        v23 = v10;
        sub_257ECDB90();
        goto LABEL_17;
      }

LABEL_16:
      v30 = v9;
      v29 = v10;
      sub_257ECDBA0();
    }
  }

LABEL_17:
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  v21 = (v5 + 8);
  if (a3)
  {
    sub_257ECDBF0();
  }

  else
  {
    sub_257ECDBC0();
  }

  (*v21)(v7, v4);
}

uint64_t sub_257D0EA8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7E90);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_257ECDC00();
    v6 = *&v5[qword_27F8F7E48];
    if (v6)
    {
      sub_257ECC3F0();
      v6(v3);
      sub_257BBD88C(v6);
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

id sub_257D0EBDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditControlsViewController.DataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257D0EC28()
{
  v0 = objc_allocWithZone(type metadata accessor for EditControlsViewController.DataSource()) + qword_27F8F7E48;
  *v0 = 0;
  v0[1] = 0;
  return sub_257ECDBD0();
}

uint64_t getEnumTagSinglePayload for EditControlsViewController.Item(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 242 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 242) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 242;
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

      return (*a1 | (v4 << 8)) - 242;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 242;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for EditControlsViewController.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
    *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_257D0EDF0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 0xFu) + 2;
  }
}

_BYTE *sub_257D0EE1C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xF | (a2 << 6);
  }

  else
  {
    *result = (a2 + 14) & 0xF | 0x80;
  }

  return result;
}

unint64_t sub_257D0EE70()
{
  result = qword_27F8F7E70;
  if (!qword_27F8F7E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7E70);
  }

  return result;
}

unint64_t sub_257D0EED8()
{
  result = qword_27F8F7E80;
  if (!qword_27F8F7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7E80);
  }

  return result;
}

unint64_t sub_257D0EF30()
{
  result = qword_27F8F7E88;
  if (!qword_27F8F7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7E88);
  }

  return result;
}

uint64_t sub_257D0EF84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 <= 0x3F)
    {
      v8 = v2 == v3;
      return v8 & 1;
    }

LABEL_11:
    v8 = 0;
    return v8 & 1;
  }

  if (v2 >> 6 != 1)
  {
    if (v3 == 128)
    {
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_11;
  }

  if ((v3 & 0xC0) != 0x40)
  {
    goto LABEL_11;
  }

  v4 = Control.rawValue.getter();
  v6 = v5;
  if (v4 == Control.rawValue.getter() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_257ED0640();
  }

  return v8 & 1;
}

char *sub_257D0F074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    while (2)
    {
      v5 = *v2++;
      v4 = v5;
      switch(v5)
      {
        case 4:

          goto LABEL_8;
        default:
          v6 = sub_257ED0640();

          if ((v6 & 1) == 0)
          {
            goto LABEL_11;
          }

LABEL_8:
          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          v7 = sub_257ECF4C0();
          v8 = MGGetBoolAnswer();

          if (v8)
          {
LABEL_11:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_257BFDE5C(0, *(v3 + 2) + 1, 1, v3);
            }

            v10 = *(v3 + 2);
            v9 = *(v3 + 3);
            if (v10 >= v9 >> 1)
            {
              v3 = sub_257BFDE5C((v9 > 1), v10 + 1, 1, v3);
            }

            *(v3 + 2) = v10 + 1;
            v3[v10 + 32] = v4 | 0x40;
          }

          if (--v1)
          {
            continue;
          }

          return v3;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_257D0F410()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7E90);
  result = sub_257ECDB60();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
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
      return result;
    }

    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_33;
    }

    v6 = *(v1 + v2++ + 32);
    if ((v6 & 0xC0) == 0x40)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB14(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_257BFCB14((v7 > 1), v8 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v8 + 1;
      *(v4 + v8 + 32) = v6 & 0x3F;
      v2 = v5;
    }
  }

  result = sub_257ECDB60();
  v9 = result;
  v10 = 0;
  v11 = *(result + 16);
  v12 = MEMORY[0x277D84F90];
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      goto LABEL_34;
    }

    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_35;
    }

    v14 = *(v9 + v10++ + 32);
    if ((v14 & 0xC0) == 0x40)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB14(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_257BFCB14((v15 > 1), v16 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v16 + 1;
      *(v12 + v16 + 32) = v14 & 0x3F;
      v10 = v13;
    }
  }

  result = sub_257ECDB60();
  v17 = result;
  v18 = 0;
  v19 = *(result + 16);
  v20 = MEMORY[0x277D84F90];
  while (v19 != v18)
  {
    if (v18 >= v19)
    {
      goto LABEL_36;
    }

    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_37;
    }

    v22 = *(v17 + v18++ + 32);
    if ((v22 & 0xC0) == 0x40)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB14(0, *(v20 + 16) + 1, 1, v20);
        v20 = result;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_257BFCB14((v23 > 1), v24 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 16) = v24 + 1;
      *(v20 + v24 + 32) = v22 & 0x3F;
      v18 = v21;
    }
  }

  return v4;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D0F728(void *a1)
{
  v2 = sub_257ECCEA0();
  if (v2 == 3)
  {
    return 2;
  }

  if (v2 == 2)
  {
    return 1;
  }

  if (v2 != 1)
  {
    return 0;
  }

  v3 = [a1 numberOfRowsInSection_];
  if (qword_281544FE0 != -1)
  {
    v5 = v3;
    swift_once();
    v3 = v5;
  }

  return v3 > 0;
}

uint64_t sub_257D0F7D8(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return sub_257D0A748(a1);
  }
}

uint64_t sub_257D0F808(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

unint64_t sub_257D0F954()
{
  result = qword_27F8F7EA8;
  if (!qword_27F8F7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7EA8);
  }

  return result;
}

unint64_t sub_257D0F9A8()
{
  result = qword_27F8F7EB0;
  if (!qword_27F8F7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7EB0);
  }

  return result;
}

uint64_t sub_257D0FA58()
{
  sub_257ECF5D0();
}

CHHapticPattern __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MAGHapticEffect.hapticPattern(duration:volume:)(Swift::Double duration, Swift::Double volume)
{
  v3 = v2;
  *&v131 = sub_257ECCB70();
  v129 = *(v131 - 8);
  v6 = MEMORY[0x28223BE20](v131);
  MEMORY[0x28223BE20](v6);
  v8 = MEMORY[0x28223BE20](&v125 - v7);
  v9 = MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v125 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v125 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v125 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v125 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v125 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v125 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v125 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v42 = &v125 - v41;
  v43 = *v3;
  v44 = 0.0;
  if (v43 <= 5)
  {
    if (*v3 > 3u)
    {
      if (v43 == 4)
      {
        v44 = 0.66;
      }

      else if (v43 == 5)
      {
        v44 = 0.25;
      }
    }

    else if (v43 == 2)
    {
      v44 = 0.5;
    }

    else if (v43 == 3)
    {
      v44 = 0.75;
    }

    goto LABEL_31;
  }

  if (*v3 <= 7u)
  {
    if (v43 == 6)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v72 = [objc_opt_self() bundleForClass_];
      v73 = sub_257ECF4C0();
      v74 = sub_257ECF4C0();
      v75 = [v72 URLForResource:v73 withExtension:v74];

      if (v75)
      {
        sub_257ECCB20();

        v60 = v129;
        v66 = v131;
        (*(v129 + 32))(v42, v33, v131);
        (*(v60 + 16))(v30, v42, v66);
        v76 = objc_allocWithZone(MEMORY[0x277CBF6D0]);
        v77 = v30;
LABEL_29:
        v81 = v130;
        v82 = sub_257D10C50(v77);
        v70 = v81;
        if (v81)
        {
          goto LABEL_30;
        }

        v124.super.isa = v82;
LABEL_35:
        (*(v60 + 8))(v42, v66);
        return v124;
      }
    }

    else if (v43 == 7)
    {
      v42 = v36;
      v46 = v35;
      type metadata accessor for MAGUtilities();
      v52 = swift_getObjCClassFromMetadata();
      v53 = [objc_opt_self() bundleForClass_];
      v54 = sub_257ECF4C0();
      v55 = sub_257ECF4C0();
      v56 = [v53 URLForResource:v54 withExtension:v55];

      if (v56)
      {
        sub_257ECCB20();

        v57 = *(v129 + 32);
        v58 = v42;
        v59 = v17;
        v60 = v129;
LABEL_28:
        v66 = v131;
        v57(v58, v59, v131);
        (*(v60 + 16))(v46, v42, v66);
        v80 = objc_allocWithZone(MEMORY[0x277CBF6D0]);
        v77 = v46;
        goto LABEL_29;
      }
    }

    goto LABEL_31;
  }

  if (v43 != 8)
  {
    if (v43 == 9)
    {
      v45 = v37;
      v42 = v13;
      v46 = v40;
      type metadata accessor for MAGUtilities();
      v78 = swift_getObjCClassFromMetadata();
      v48 = [objc_opt_self() bundleForClass_];
      v49 = sub_257ECF4C0();
      v50 = sub_257ECF4C0();
      v51 = [v48 URLForResource:v49 withExtension:v50];
    }

    else
    {
      if (v43 != 10)
      {
        goto LABEL_31;
      }

      v45 = v34;
      v42 = v39;
      v46 = v38;
      type metadata accessor for MAGUtilities();
      v47 = swift_getObjCClassFromMetadata();
      v48 = [objc_opt_self() bundleForClass_];
      v49 = sub_257ECF4C0();
      v50 = sub_257ECF4C0();
      v51 = [v48 URLForResource:v49 withExtension:v50];
    }

    v79 = v51;

    if (v79)
    {
      sub_257ECCB20();

      v60 = v129;
      v57 = *(v129 + 32);
      v58 = v42;
      v59 = v45;
      goto LABEL_28;
    }

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7EB8);
    inited = swift_initStackObject();
    v128 = inited;
    v131 = xmmword_257ED6D30;
    *(inited + 16) = xmmword_257ED6D30;
    v84 = *MEMORY[0x277CBF688];
    *(inited + 32) = *MEMORY[0x277CBF688];
    v129 = inited + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7EC0);
    v127 = swift_allocObject();
    *(v127 + 16) = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7EC8);
    v85 = swift_initStackObject();
    v125 = v85;
    *(v85 + 16) = v131;
    v86 = *MEMORY[0x277CBF658];
    *(v85 + 32) = *MEMORY[0x277CBF658];
    v126 = v85 + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FB2D0);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_257EDC1F0;
    v132 = *MEMORY[0x277CBF670];
    v88 = v132;
    type metadata accessor for Key(0);
    sub_257D10EC0(&qword_27F8F4CC8, type metadata accessor for Key);
    v89 = v84;
    v90 = v86;
    v91 = v88;
    sub_257ED0280();
    v92 = *MEMORY[0x277CBF650];
    type metadata accessor for EventType(0);
    *(v87 + 96) = v93;
    *(v87 + 72) = v92;
    v132 = *MEMORY[0x277CBF690];
    v94 = v132;
    v95 = v92;
    v96 = v94;
    sub_257ED0280();
    v97 = MEMORY[0x277D839F8];
    *(v87 + 168) = MEMORY[0x277D839F8];
    v98 = v97;
    *(v87 + 144) = 0;
    v132 = *MEMORY[0x277CBF660];
    v99 = v132;
    sub_257ED0280();
    *(v87 + 240) = v98;
    *(v87 + 216) = duration;
    v132 = *MEMORY[0x277CBF668];
    v100 = v132;
    sub_257ED0280();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7ED0);
    v101 = swift_allocObject();
    *(v101 + 16) = v131;
    v102 = swift_initStackObject();
    *(v102 + 16) = xmmword_257ED9BD0;
    v103 = *MEMORY[0x277CBF678];
    *(v102 + 32) = *MEMORY[0x277CBF678];
    v104 = *MEMORY[0x277CBF638];
    type metadata accessor for ParameterID(0);
    v105 = MEMORY[0x277CBF680];
    *(v102 + 40) = v104;
    v106 = *v105;
    *(v102 + 64) = v107;
    *(v102 + 72) = v106;
    *(v102 + 104) = MEMORY[0x277D839F8];
    *(v102 + 80) = volume;
    v108 = v103;
    v109 = v104;
    v110 = v106;
    v111 = sub_257BE9DF4(v102);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56C8);
    swift_arrayDestroy();
    *(v101 + 32) = v111;
    *(v87 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7ED8);
    *(v87 + 288) = v101;
    v132 = *MEMORY[0x277CBF640];
    v112 = v132;
    sub_257D10EC0(&qword_27F8F4CA8, type metadata accessor for ParameterID);
    v113 = v112;
    sub_257ED0280();
    *(v87 + 384) = MEMORY[0x277D839F8];
    *(v87 + 360) = v44;
    v114 = sub_257BE88A0(v87);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54A0);
    swift_arrayDestroy();
    v115 = v125;
    *(v125 + 40) = v114;
    v116 = sub_257BE9F1C(v115);
    swift_setDeallocating();
    sub_257BE4084(v126, &qword_27F8F7EE0);
    v117 = v127;
    *(v127 + 32) = v116;
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7EE8);
    v119 = v128;
    *(v128 + 64) = v118;
    *(v119 + 40) = v117;
    sub_257BE9DF4(v119);
    swift_setDeallocating();
    sub_257BE4084(v129, &qword_27F8F56C8);
    v120 = objc_allocWithZone(MEMORY[0x277CBF6D0]);
    v121 = v130;
    result.super.isa = sub_257D10D9C();
    v70 = v121;
    if (!v121)
    {
      return result;
    }

    goto LABEL_32;
  }

  type metadata accessor for MAGUtilities();
  v61 = swift_getObjCClassFromMetadata();
  v62 = [objc_opt_self() bundleForClass_];
  v63 = sub_257ECF4C0();
  v64 = sub_257ECF4C0();
  v65 = [v62 URLForResource:v63 withExtension:v64];

  if (!v65)
  {
    goto LABEL_31;
  }

  sub_257ECCB20();

  v60 = v129;
  v66 = v131;
  (*(v129 + 32))(v27, v24, v131);
  (*(v60 + 16))(v21, v27, v66);
  v67 = objc_allocWithZone(MEMORY[0x277CBF6D0]);
  v68 = v130;
  v69 = sub_257D10C50(v21);
  v70 = v68;
  if (!v68)
  {
    v124.super.isa = v69;
    v42 = v27;
    goto LABEL_35;
  }

  v42 = v27;
LABEL_30:
  (*(v60 + 8))(v42, v66);
LABEL_32:
  sub_257BEBEF0();
  swift_allocError();
  *(v123 + 8) = 0;
  *(v123 + 16) = 0;
  *v123 = 1;
  *(v123 + 24) = 4;
  swift_willThrow();

  return result;
}

unint64_t sub_257D1095C()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x48746C7561666564;
    v8 = 0x65746544726F6F64;
    v9 = 0x657053746E696F70;
    if (v1 != 3)
    {
      v9 = 0xD000000000000012;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6544656C706F6570;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x65636E6164697567;
    v3 = 0x75476E4F6B636F6CLL;
    if (v1 != 9)
    {
      v3 = 0x4766664F6B636F6CLL;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000014;
    v5 = 0x6E616353706F6F6CLL;
    if (v1 != 6)
    {
      v5 = 0x65636E6164697567;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

MagnifierSupport::MAGHapticEffect_optional __swiftcall MAGHapticEffect.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_257D10BA0()
{
  sub_257ED07B0();
  sub_257D0FA58();
  return sub_257ED0800();
}

uint64_t sub_257D10BF0()
{
  sub_257ED07B0();
  sub_257D0FA58();
  return sub_257ED0800();
}

id sub_257D10C50(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECCAE0();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_257ECCB70();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_257ECC9F0();

    swift_willThrow();
    v11 = sub_257ECCB70();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

id sub_257D10D9C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for Key(0);
  sub_257D10EC0(&qword_27F8F4CC8, type metadata accessor for Key);
  v1 = sub_257ECF3C0();

  v6[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_257ECC9F0();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_257D10EC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_257D10F0C()
{
  result = qword_27F8F7EF0;
  if (!qword_27F8F7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7EF0);
  }

  return result;
}

unint64_t sub_257D10F64()
{
  result = qword_27F8F7EF8;
  if (!qword_27F8F7EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7EF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MAGHapticEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MAGHapticEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_257D11120()
{
  v1 = v0;
  v71 = sub_257ECD9D0();
  v2 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v80 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECD990();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v66 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v66 - v12;
  if (qword_27F8F45B0 != -1)
  {
LABEL_58:
    swift_once();
  }

  v14 = sub_257ECD9C0();
  v15 = __swift_project_value_buffer(v14, qword_27F8F5DA8);
  sub_257ECD980();
  v72 = v15;
  v16 = sub_257ECD9A0();
  v17 = sub_257ECFDC0();
  v18 = sub_257ED0090();
  v78 = v2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v16, v17, v20, "AXTagLanguage", "", v19, 2u);
    v21 = v19;
    v2 = v78;
    MEMORY[0x259C74820](v21, -1, -1);
  }

  (*(v5 + 16))(v11, v13, v4);
  sub_257ECDA00();
  swift_allocObject();
  v79 = sub_257ECD9F0();
  v23 = *(v5 + 8);
  v22 = v5 + 8;
  v73 = v23;
  v23(v13, v4);
  v24 = [v1 getLines];
  sub_257BD2C2C(0, &qword_27F8F5FB0);
  v11 = sub_257ECF810();

  if (v11 >> 62)
  {
    v25 = sub_257ED0210();
  }

  else
  {
    v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v80;

  if (v25 < 1)
  {
    v82 = MEMORY[0x277D84F90];
LABEL_50:
    v60 = sub_257ECD9A0();
    sub_257ECD9E0();
    v61 = sub_257ECFDB0();
    if (sub_257ED0090())
    {
      sub_257ECC3F0();
      sub_257ECDA10();

      v62 = v71;
      if ((*(v2 + 88))(v26, v71) == *MEMORY[0x277D85B00])
      {
        v63 = "[Error] Interval already ended";
      }

      else
      {
        (*(v2 + 8))(v26, v62);
        v63 = "";
      }

      v64 = swift_slowAlloc();
      *v64 = 0;
      v65 = sub_257ECD970();
      _os_signpost_emit_with_name_impl(&dword_257BAC000, v60, v61, v65, "AXTagLanguage", v63, v64, 2u);
      MEMORY[0x259C74820](v64, -1, -1);
    }

    v73(v8, v4);
    return v82;
  }

  v27 = [v1 getLines];
  v28 = sub_257ECF810();

  v1 = v28;
  v13 = v79;
  if (v28 >> 62)
  {
    v29 = sub_257ED0210();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = v8;
  v69 = v22;
  v70 = v4;
  if (!v29)
  {
    v82 = MEMORY[0x277D84F90];
LABEL_49:

    v4 = v70;
    v8 = v68;
    goto LABEL_50;
  }

  v5 = v29;
  v8 = 0;
  v4 = v28 & 0xC000000000000001;
  v76 = v28 & 0xFFFFFFFFFFFFFF8;
  v82 = MEMORY[0x277D84F90];
  v74 = v28;
  v75 = v29;
  v77 = v28 & 0xC000000000000001;
  while (1)
  {
    if (v4)
    {
      v30 = MEMORY[0x259C72E20](v8, v1);
    }

    else
    {
      if (v8 >= *(v76 + 16))
      {
        goto LABEL_57;
      }

      v30 = *(v1 + v8 + 4);
    }

    v31 = v30;
    v32 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v11 = [v30 getCROutputRegion];
    v33 = [v11 text];
    if (v33)
    {
      break;
    }

LABEL_12:
    ++v8;
    if (v32 == v5)
    {
      goto LABEL_49;
    }
  }

  v34 = v33;
  v81 = sub_257ECF500();
  v36 = v35;
  v37 = [objc_allocWithZone(MEMORY[0x277CE7DB0]) initWithContent_];

  if (!v37)
  {

    v2 = v78;
    v26 = v80;
LABEL_43:
    v13 = v79;
    goto LABEL_12;
  }

  [v37 tagContent];
  if (([v37 isTagged] & 1) == 0)
  {
    v41 = [objc_opt_self() currentLanguageCode];
    v42 = sub_257ECF500();
    v44 = v43;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = sub_257BFD468(0, *(v82 + 2) + 1, 1, v82);
    }

    v46 = *(v82 + 2);
    v45 = *(v82 + 3);
    if (v46 >= v45 >> 1)
    {
      v82 = sub_257BFD468((v45 > 1), v46 + 1, 1, v82);
    }

    v48 = v81;
    v47 = v82;
    *(v82 + 2) = v46 + 1;
    v49 = &v47[32 * v46];
    *(v49 + 4) = v48;
    *(v49 + 5) = v36;
    *(v49 + 6) = v42;
    *(v49 + 7) = v44;
    v2 = v78;
    v13 = v79;
    v26 = v80;
    v1 = v74;
LABEL_46:
    v5 = v75;
    v4 = v77;
    goto LABEL_12;
  }

  result = [v37 tags];
  if (result)
  {
    v39 = result;
    v40 = [result firstObject];

    if (v40)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = 0u;
      v85 = 0u;
    }

    v26 = v80;
    v4 = v77;
    v86[0] = v84;
    v86[1] = v85;
    if (*(&v85 + 1))
    {
      sub_257BD2C2C(0, &qword_27F8F7F08);
      if (swift_dynamicCast())
      {
        v50 = v83;
        result = [v83 dialect];
        if (!result)
        {
          goto LABEL_62;
        }

        v51 = result;
        v52 = [result specificLanguageID];

        if (v52)
        {
          v67 = sub_257ECF500();
          v66 = v53;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_257BFD468(0, *(v82 + 2) + 1, 1, v82);
          }

          v55 = *(v82 + 2);
          v54 = *(v82 + 3);
          if (v55 >= v54 >> 1)
          {
            v82 = sub_257BFD468((v54 > 1), v55 + 1, 1, v82);
          }

          v57 = v81;
          v56 = v82;
          *(v82 + 2) = v55 + 1;
          v58 = &v56[32 * v55];
          *(v58 + 4) = v57;
          *(v58 + 5) = v36;
          v59 = v66;
          *(v58 + 6) = v67;
          *(v58 + 7) = v59;
        }

        else
        {
        }

        v2 = v78;
        v13 = v79;
        v26 = v80;
        goto LABEL_46;
      }
    }

    else
    {

      sub_257C3A464(v86);
    }

    v2 = v78;
    goto LABEL_43;
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

void sub_257D11A58()
{
  v1 = v0;
  v2 = sub_257ECD9D0();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECD990();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v56 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  if (qword_27F8F45B0 != -1)
  {
    swift_once();
  }

  v15 = sub_257ECD9C0();
  v16 = __swift_project_value_buffer(v15, qword_27F8F5DA8);
  sub_257ECD980();
  v61 = v16;
  v17 = sub_257ECD9A0();
  v18 = sub_257ECFDC0();
  v19 = sub_257ED0090();
  v65 = v4;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v17, v18, v21, "CRTagLanguage", "", v20, 2u);
    v22 = v20;
    v4 = v65;
    MEMORY[0x259C74820](v22, -1, -1);
  }

  (*(v6 + 16))(v12, v14, v5);
  sub_257ECDA00();
  swift_allocObject();
  v66 = sub_257ECD9F0();
  v24 = *(v6 + 8);
  v23 = v6 + 8;
  v62 = v24;
  v24(v14, v5);
  v25 = [v1 getLines];
  sub_257BD2C2C(0, &qword_27F8F5FB0);
  v26 = sub_257ECF810();

  if (v26 >> 62)
  {
    v27 = sub_257ED0210();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27 < 1)
  {
    goto LABEL_29;
  }

  v28 = [v1 getLines];
  v29 = sub_257ECF810();

  v57 = v23;
  v58 = v5;
  v56 = v9;
  if (v29 >> 62)
  {
    v30 = sub_257ED0210();
    if (v30)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_10:
      if (v30 < 1)
      {
        __break(1u);
        return;
      }

      v31 = 0;
      v32 = MEMORY[0x277D84F90];
      v67 = v29 & 0xC000000000000001;
      v63 = v30;
      v64 = v29;
      do
      {
        if (v67)
        {
          v33 = MEMORY[0x259C72E20](v31, v29);
        }

        else
        {
          v33 = *(v29 + 8 * v31 + 32);
        }

        v34 = v33;
        v35 = [v33 getCROutputRegion];
        v36 = [v35 text];
        if (v36)
        {
          v37 = v36;
          v38 = sub_257ECF500();
          v40 = v39;

          v41 = [v35 recognizedLocale];
          if (!v41)
          {
            v41 = [objc_opt_self() currentLanguageCode];
          }

          v42 = v41;
          v43 = sub_257ECF500();
          v45 = v44;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_257BFD468(0, *(v32 + 2) + 1, 1, v32);
          }

          v47 = *(v32 + 2);
          v46 = *(v32 + 3);
          if (v47 >= v46 >> 1)
          {
            v32 = sub_257BFD468((v46 > 1), v47 + 1, 1, v32);
          }

          *(v32 + 2) = v47 + 1;
          v48 = &v32[32 * v47];
          *(v48 + 4) = v38;
          *(v48 + 5) = v40;
          *(v48 + 6) = v43;
          *(v48 + 7) = v45;
          v4 = v65;
          v30 = v63;
          v29 = v64;
        }

        else
        {
        }

        ++v31;
      }

      while (v30 != v31);
    }
  }

  v5 = v58;
  v9 = v56;
LABEL_29:
  v49 = sub_257ECD9A0();
  sub_257ECD9E0();
  v50 = sub_257ECFDB0();
  if (sub_257ED0090())
  {
    sub_257ECC3F0();
    sub_257ECDA10();

    v52 = v59;
    v51 = v60;
    if ((*(v59 + 88))(v4, v60) == *MEMORY[0x277D85B00])
    {
      v53 = "[Error] Interval already ended";
    }

    else
    {
      (*(v52 + 8))(v4, v51);
      v53 = "";
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v49, v50, v55, "CRTagLanguage", v53, v54, 2u);
    MEMORY[0x259C74820](v54, -1, -1);
  }

  v62(v9, v5);
}

uint64_t sub_257D120B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_257ECF4C0();
  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    v12 = sub_257ECF4C0();
    v13 = [v11 stringForKey_];

    if (v13)
    {
      sub_257ECF500();

      sub_257ECF550();
      v14 = sub_257ECF510();
      v16 = v15;

      (*(v6 + 8))(v8, v5);
      if (v16 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257D166C0();
        sub_257ECC6D0();
        if (v3)
        {

          sub_257D16714(v14, v16);
        }

        else
        {
          sub_257D16714(v14, v16);

          v17 = v20;
          if (v20 != 8)
          {
            return v17;
          }
        }

        return a3;
      }
    }
  }

  return a3;
}

void sub_257D12354(int a1@<W2>, _BYTE *a2@<X8>)
{
  v18 = a1;
  v4 = sub_257ECF560();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = sub_257ECF4C0();
  v10 = [v8 initWithSuiteName_];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = sub_257ECF4C0();
  v12 = [v10 stringForKey_];

  if (!v12)
  {
    goto LABEL_7;
  }

  sub_257ECF500();

  sub_257ECF550();
  v13 = sub_257ECF510();
  v15 = v14;

  (*(v5 + 8))(v7, v4);
  if (v15 >> 60 == 15)
  {
    goto LABEL_7;
  }

  sub_257ECC6F0();
  swift_allocObject();
  sub_257ECC6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E70);
  sub_257D16C64();
  sub_257ECC6D0();
  if (v2)
  {

    sub_257D16714(v13, v15);

LABEL_7:
    v16 = v18;
    goto LABEL_8;
  }

  sub_257D16714(v13, v15);

  v16 = v19;
  if (v19 == 13)
  {
    goto LABEL_7;
  }

LABEL_8:
  *a2 = v16;
}

uint64_t sub_257D12604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v23 = a5;
  v24 = a6;
  v22 = a4;
  v8 = sub_257ECF560();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v13 = sub_257ECF4C0();
  v14 = [v12 initWithSuiteName_];

  if (v14)
  {
    v15 = sub_257ECF4C0();
    v16 = [v14 stringForKey_];

    if (v16)
    {
      sub_257ECF500();

      sub_257ECF550();
      v17 = sub_257ECF510();
      v19 = v18;

      (*(v9 + 8))(v11, v8);
      if (v19 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v22);
        v24();
        sub_257ECC6D0();
        if (v6)
        {

          sub_257D16714(v17, v19);
        }

        else
        {
          sub_257D16714(v17, v19);

          if (v25)
          {
            return v25;
          }
        }
      }
    }
  }

  return a3;
}

uint64_t sub_257D128B8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_257ECF4C0();
  v11 = [v9 initWithSuiteName_];

  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = sub_257ECF4C0();
  v13 = [v11 stringForKey_];

  if (!v13)
  {
    goto LABEL_7;
  }

  sub_257ECF500();

  sub_257ECF550();
  v14 = sub_257ECF510();
  v16 = v15;

  (*(v6 + 8))(v8, v5);
  if (v16 >> 60 == 15)
  {
    goto LABEL_7;
  }

  sub_257ECC6F0();
  swift_allocObject();
  sub_257ECC6E0();
  sub_257D17548();
  sub_257ECC6D0();
  if (v3)
  {

    sub_257D16714(v14, v16);

LABEL_7:
    v17 = a3;
    return v17 & 1;
  }

  sub_257D16714(v14, v16);

  v17 = v20;
  if (v20 == 2)
  {
    goto LABEL_7;
  }

  return v17 & 1;
}

double sub_257D12B14(double a1)
{
  v3 = sub_257ECF560();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_257ECF4C0();
  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    v10 = sub_257ECF4C0();
    v11 = [v9 stringForKey_];

    if (v11)
    {
      sub_257ECF500();

      sub_257ECF550();
      v12 = sub_257ECF510();
      v14 = v13;

      (*(v4 + 8))(v6, v3);
      if (v14 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257ECC6D0();
        if (v1)
        {

          sub_257D16714(v12, v14);
        }

        else
        {
          sub_257D16714(v12, v14);

          return v16;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_257D12DA0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_257ECF4C0();
  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    v12 = sub_257ECF4C0();
    v13 = [v11 stringForKey_];

    if (v13)
    {
      sub_257ECF500();

      sub_257ECF550();
      v14 = sub_257ECF510();
      v16 = v15;

      (*(v6 + 8))(v8, v5);
      if (v16 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257ECC6D0();
        if (v3)
        {

          sub_257D16714(v14, v16);
        }

        else
        {
          sub_257D16714(v14, v16);

          v17 = v20;
          if (v20 != 2)
          {
LABEL_8:
            a3 = v17;
            return a3 & 1;
          }
        }

        v17 = a3;
        goto LABEL_8;
      }
    }
  }

  return a3 & 1;
}

uint64_t sub_257D13000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v4 = sub_257ECF560();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = sub_257ECF4C0();
  v10 = [v8 initWithSuiteName_];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = sub_257ECF4C0();
  v12 = [v10 stringForKey_];

  if (!v12)
  {
    goto LABEL_7;
  }

  sub_257ECF500();

  sub_257ECF550();
  v13 = sub_257ECF510();
  v15 = v14;

  (*(v5 + 8))(v7, v4);
  if (v15 >> 60 == 15)
  {
    goto LABEL_7;
  }

  sub_257ECC6F0();
  swift_allocObject();
  sub_257ECC6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257D16D3C(&qword_27F8F7F30, &unk_27F8F4D70);
  sub_257ECC6D0();
  if (v3)
  {

    sub_257D16714(v13, v15);

LABEL_7:

    return v18;
  }

  sub_257D16714(v13, v15);

  if (v17[1] == 1)
  {
    goto LABEL_7;
  }

  return v17[0];
}

double sub_257D13368(uint64_t a1)
{
  v3 = sub_257ECF560();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = sub_257ECF4C0();
  v10 = [v8 initWithSuiteName_];

  if (v10)
  {
    v11 = sub_257ECF4C0();
    v12 = [v10 stringForKey_];

    if (v12)
    {
      sub_257ECF500();

      sub_257ECF550();
      v13 = sub_257ECF510();
      v15 = v14;

      (*(v4 + 8))(v6, v3);
      if (v15 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257D16AE4();
        sub_257ECC6D0();
        if (v1)
        {

          sub_257D16714(v13, v15);
        }

        else
        {
          sub_257D16714(v13, v15);

          return v17;
        }
      }
    }
  }

  return v7;
}

uint64_t sub_257D136FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_257ECF4C0();
  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    v12 = sub_257ECF4C0();
    v13 = [v11 stringForKey_];

    if (v13)
    {
      sub_257ECF500();

      sub_257ECF550();
      v14 = sub_257ECF510();
      v16 = v15;

      (*(v6 + 8))(v8, v5);
      if (v16 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
        sub_257D16D3C(&qword_27F8F7F40, &qword_27F8F9D90);
        sub_257ECC6D0();
        if (v3)
        {

          sub_257D16714(v14, v16);
        }

        else
        {
          sub_257D16714(v14, v16);

          if (v19)
          {
            return v19;
          }
        }
      }
    }
  }

  return a3;
}

float sub_257D139CC(float a1)
{
  v3 = sub_257ECF560();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_257ECF4C0();
  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    v10 = sub_257ECF4C0();
    v11 = [v9 stringForKey_];

    if (v11)
    {
      sub_257ECF500();

      sub_257ECF550();
      v12 = sub_257ECF510();
      v14 = v13;

      (*(v4 + 8))(v6, v3);
      if (v14 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257ECC6D0();
        if (v1)
        {

          sub_257D16714(v12, v14);
        }

        else
        {
          sub_257D16714(v12, v14);

          return v17;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_257D13C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_257ECF4C0();
  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    v12 = sub_257ECF4C0();
    v13 = [v11 stringForKey_];

    if (v13)
    {
      sub_257ECF500();

      sub_257ECF550();
      v14 = sub_257ECF510();
      v16 = v15;

      (*(v6 + 8))(v8, v5);
      if (v16 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257D16F0C();
        sub_257ECC6D0();
        if (v3)
        {

          sub_257D16714(v14, v16);
        }

        else
        {
          sub_257D16714(v14, v16);

          v17 = v20;
          if (v20 != 4)
          {
            return v17;
          }
        }

        return a3;
      }
    }
  }

  return a3;
}

uint64_t sub_257D13EAC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_257ECF4C0();
  v11 = [v9 initWithSuiteName_];

  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = sub_257ECF4C0();
  v13 = [v11 stringForKey_];

  if (!v13)
  {
    goto LABEL_7;
  }

  sub_257ECF500();

  sub_257ECF550();
  v14 = sub_257ECF510();
  v16 = v15;

  (*(v6 + 8))(v8, v5);
  if (v16 >> 60 == 15)
  {
    goto LABEL_7;
  }

  sub_257ECC6F0();
  swift_allocObject();
  sub_257ECC6E0();
  sub_257D16808();
  sub_257ECC6D0();
  if (v3)
  {

    sub_257D16714(v14, v16);

LABEL_7:
    v17 = a3;
    return v17 & 1;
  }

  sub_257D16714(v14, v16);

  v17 = v20;
  if (v20 == 2)
  {
    goto LABEL_7;
  }

  return v17 & 1;
}

double sub_257D14144(double a1)
{
  v3 = sub_257ECF560();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_257ECF4C0();
  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    v10 = sub_257ECF4C0();
    v11 = [v9 stringForKey_];

    if (v11)
    {
      sub_257ECF500();

      sub_257ECF550();
      v12 = sub_257ECF510();
      v14 = v13;

      (*(v4 + 8))(v6, v3);
      if (v14 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257BF9650();
        sub_257ECC6D0();
        if (v1)
        {

          sub_257D16714(v12, v14);
        }

        else
        {
          sub_257D16714(v12, v14);

          return v16;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_257D143C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[0] = a4;
  v21[1] = a5;
  v7 = sub_257ECF560();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_257ECF4C0();
  v13 = [v11 initWithSuiteName_];

  if (v13)
  {
    v14 = sub_257ECF4C0();
    v15 = [v13 stringForKey_];

    if (v15)
    {
      sub_257ECF500();

      sub_257ECF550();
      v16 = sub_257ECF510();
      v18 = v17;

      (*(v8 + 8))(v10, v7);
      if (v18 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        (v21[0])();
        sub_257ECC6D0();
        if (v5)
        {

          sub_257D16714(v16, v18);
        }

        else
        {
          sub_257D16714(v16, v18);

          v19 = v22;
          if (v22 != 3)
          {
            return v19;
          }
        }

        return a3;
      }
    }
  }

  return a3;
}

uint64_t sub_257D14634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7838);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = sub_257ECF560();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v13 = sub_257ECF4C0();
  v14 = [v12 initWithSuiteName_];

  if (v14 && (v15 = sub_257ECF4C0(), v16 = [v14 stringForKey_], v14, v15, v16) && (sub_257ECF500(), v16, sub_257ECF550(), v17 = sub_257ECF510(), v19 = v18, , (*(v9 + 8))(v11, v8), v19 >> 60 != 15))
  {
    sub_257ECC6F0();
    swift_allocObject();
    sub_257ECC6E0();
    v23 = sub_257ECCC80();
    sub_257D16D9C();
    v24 = v33;
    sub_257ECC6D0();
    if (v24)
    {

      v25 = 1;
    }

    else
    {
      v25 = 0;
    }

    sub_257D16714(v17, v19);

    v26 = *(v23 - 8);
    (*(v26 + 56))(v7, v25, 1, v23);
    v27 = v7;
    v28 = v31;
    sub_257D16DF4(v27, v31);
    v29 = *(v26 + 48);
    if (v29(v28, 1, v23) == 1)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F48);
      (*(v26 + 16))(v32, a1 + *(v30 + 44), v23);
      result = v29(v28, 1, v23);
      if (result != 1)
      {
        return sub_257CF0448(v28);
      }
    }

    else
    {
      return (*(v26 + 32))(v32, v28, v23);
    }
  }

  else
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F48) + 44);
    v21 = sub_257ECCC80();
    return (*(*(v21 - 8) + 16))(v32, a1 + v20, v21);
  }

  return result;
}

uint64_t sub_257D14A40()
{
  v0 = Control.rawValue.getter();
  MEMORY[0x259C72150](v0);

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

id sub_257D14B7C()
{
  switch(*v0)
  {
    case 1:
      v15 = sub_257ECF4C0();
      v2 = [objc_opt_self() systemImageNamed_];

      if (!v2)
      {
        return 0;
      }

      goto LABEL_3;
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xD:
    case 0xE:
    case 0xF:
      v8 = sub_257ECF4C0();
      v9 = [objc_opt_self() systemImageNamed_];
      goto LABEL_10;
    case 3:
      v10 = [objc_opt_self() systemWhiteColor];
      v11 = [objc_opt_self() configurationWithHierarchicalColor_];

      v12 = v11;
      v13 = sub_257ECF4C0();
      v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

      if (!v14)
      {
        return 0;
      }

      goto LABEL_11;
    case 0xC:
      v8 = sub_257ECF4C0();
      v9 = [objc_opt_self() _systemImageNamed_];
LABEL_10:
      v14 = v9;

      if (!v14)
      {
        return 0;
      }

LABEL_11:
      v16 = objc_opt_self();
      v5 = v14;
      v7 = [v16 configurationWithPointSize:4 weight:-1 scale:25.0];
      v6 = [v5 imageByApplyingSymbolConfiguration_];
      v4 = v5;
      goto LABEL_12;
    default:
      v1 = sub_257ECF4C0();
      v2 = [objc_opt_self() systemImageNamed_];

      if (!v2)
      {
        return 0;
      }

LABEL_3:
      v3 = objc_opt_self();
      v4 = v2;
      v5 = [v3 configurationWithPointSize:4 weight:3 scale:25.0];
      v6 = [v4 imageByApplyingSymbolConfiguration_];
      v7 = v4;
LABEL_12:
      v17 = v6;

      return v17;
  }
}

uint64_t Control.rawValue.getter()
{
  result = 0x746361466D6F6F7ALL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x4379616C70736964;
      break;
    case 3:
      result = 0x737265746C6966;
      break;
    case 4:
      result = 0x67696C6873616C66;
      break;
    case 5:
      result = 0x6544656C706F6570;
      break;
    case 6:
      result = 0x636F4C7375636F66;
      break;
    case 7:
      result = 0x79546172656D6163;
      break;
    case 8:
      result = 0x4D65727574706163;
      break;
    case 9:
      result = 0x6F69746365746564;
      break;
    case 0xA:
      v2 = 1919905636;
      goto LABEL_16;
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0x7061436567616D69;
      break;
    case 0xD:
      result = 0x657053746E696F70;
      break;
    case 0xE:
      v2 = 1954047348;
LABEL_16:
      result = v2 | 0x6574654400000000;
      break;
    case 0xF:
      result = 0x6974697669746361;
      break;
    default:
      return result;
  }

  return result;
}

id sub_257D15408()
{
  if (*v0 != 4)
  {
    return sub_257D14B7C();
  }

  v1 = sub_257ECF4C0();
  v2 = [objc_opt_self() systemImageNamed_];

  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 configurationWithPointSize:4 weight:-1 scale:25.0];
  v6 = [v4 imageByApplyingSymbolConfiguration_];

  return v6;
}

uint64_t sub_257D15518()
{
  result = 0x2E6E696D2E6E7573;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x662E6172656D6163;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000025;
      break;
    case 6:
      v2 = 1801678700;
      goto LABEL_15;
    case 7:
      result = 0xD000000000000022;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x646E696677656976;
      break;
    case 0xA:
      result = 0xD000000000000016;
      break;
    case 0xB:
      v2 = 1634103155;
LABEL_15:
      result = v2 | 0x6C69662E00000000;
      break;
    case 0xC:
      result = 0x75622E6F746F6870;
      break;
    case 0xD:
      result = 0xD000000000000020;
      break;
    case 0xE:
      result = 0x6569762E74786574;
      break;
    case 0xF:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t Control.angelIconName.getter()
{
  v1 = *v0;
  if (v1 > 0xB)
  {
    if (v1 == 12)
    {
      return 0x75622E6F746F6870;
    }

    if (v1 != 13)
    {
      if (v1 == 14)
      {
        return 0x6569762E74786574;
      }

      return 0x75622E6F746F6870;
    }

    return 0xD000000000000020;
  }

  else
  {
    switch(v1)
    {
      case 5u:
        return 0xD000000000000025;
      case 0xAu:
        return 0xD000000000000016;
      case 0xBu:
        return 0x6C69662E61666F73;
      default:
        return 0x75622E6F746F6870;
    }
  }
}

uint64_t Control.accessibilityLabel.getter()
{
  if (*v0 != 13)
  {
    return sub_257D14A40();
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257D15920()
{
  switch(*v0)
  {
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      result = sub_257ED0410();
      __break(1u);
      break;
    default:
      return result;
  }

  return result;
}

void sub_257D15BB4()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 4:
      return;
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      sub_257ED0410();
      __break(1u);
      break;
    default:
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if ((v5 & 1) == 0)
      {
        swift_beginAccess();
        v1 = qword_2815447E0;

        if (v1 != -1)
        {
          v2 = swift_once();
        }

        MEMORY[0x28223BE20](v2);
        sub_257ECFD50();

        if (v4 != 2)
        {
          MEMORY[0x28223BE20](v3);

          sub_257ECFD50();
        }
      }

      break;
  }
}

MagnifierSupport::Control_optional __swiftcall Control.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_257D16168()
{
  v0 = Control.rawValue.getter();
  v2 = v1;
  if (v0 == Control.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_257ED0640();
  }

  return v5 & 1;
}

uint64_t sub_257D16210@<X0>(uint64_t *a1@<X8>)
{
  result = Control.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_257D1623C()
{
  result = qword_27F8F7F10;
  if (!qword_27F8F7F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F70B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F10);
  }

  return result;
}

unint64_t sub_257D16364()
{
  result = qword_2815444C0;
  if (!qword_2815444C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815444C0);
  }

  return result;
}

uint64_t sub_257D163B8()
{
  sub_257ED07B0();
  Control.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257D16420()
{
  Control.rawValue.getter();
  sub_257ECF5D0();
}

uint64_t sub_257D16484()
{
  sub_257ED07B0();
  Control.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t getEnumTagSinglePayload for Control(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Control(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_257D16638@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D120B8(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_257D16688@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D120B8(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_257D166C0()
{
  result = qword_281545A70;
  if (!qword_281545A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545A70);
  }

  return result;
}

uint64_t sub_257D16714(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_257BF2550(a1, a2);
  }

  return a1;
}

unint64_t sub_257D16728()
{
  result = qword_281544058;
  if (!qword_281544058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F4D90);
    sub_257D167B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544058);
  }

  return result;
}

unint64_t sub_257D167B4()
{
  result = qword_281544FE8;
  if (!qword_281544FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544FE8);
  }

  return result;
}

unint64_t sub_257D16808()
{
  result = qword_281544BE8;
  if (!qword_281544BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544BE8);
  }

  return result;
}

unint64_t sub_257D1685C()
{
  result = qword_281543FC8;
  if (!qword_281543FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F70B0);
    sub_257D168E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FC8);
  }

  return result;
}

unint64_t sub_257D168E0()
{
  result = qword_2815444B0;
  if (!qword_2815444B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815444B0);
  }

  return result;
}

unint64_t sub_257D16934()
{
  result = qword_27F8F7F18;
  if (!qword_27F8F7F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6A20);
    sub_257D169B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F18);
  }

  return result;
}

unint64_t sub_257D169B8()
{
  result = qword_27F8F7F20;
  if (!qword_27F8F7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F20);
  }

  return result;
}

unint64_t sub_257D16A0C()
{
  result = qword_281544038;
  if (!qword_281544038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5A90);
    sub_257D16A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544038);
  }

  return result;
}

unint64_t sub_257D16A90()
{
  result = qword_2815458D0;
  if (!qword_2815458D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815458D0);
  }

  return result;
}

unint64_t sub_257D16AE4()
{
  result = qword_281545AA0;
  if (!qword_281545AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545AA0);
  }

  return result;
}

unint64_t sub_257D16B38()
{
  result = qword_2815457E8;
  if (!qword_2815457E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815457E8);
  }

  return result;
}

unint64_t sub_257D16B8C()
{
  result = qword_281544048;
  if (!qword_281544048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7F28);
    sub_257D16C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544048);
  }

  return result;
}

unint64_t sub_257D16C10()
{
  result = qword_2815459A8;
  if (!qword_2815459A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815459A8);
  }

  return result;
}

unint64_t sub_257D16C64()
{
  result = qword_281545998;
  if (!qword_281545998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9E70);
    sub_257D16C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545998);
  }

  return result;
}

unint64_t sub_257D16CE8()
{
  result = qword_27F8F7F38;
  if (!qword_27F8F7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F38);
  }

  return result;
}

uint64_t sub_257D16D3C(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_257D16D9C()
{
  result = qword_27F8F7F50;
  if (!qword_27F8F7F50)
  {
    sub_257ECCC80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F50);
  }

  return result;
}

uint64_t sub_257D16DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7838);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257D16E64()
{
  result = qword_27F8F7F58;
  if (!qword_27F8F7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F58);
  }

  return result;
}

unint64_t sub_257D16EB8()
{
  result = qword_2815444B8;
  if (!qword_2815444B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815444B8);
  }

  return result;
}

unint64_t sub_257D16F0C()
{
  result = qword_27F8F7F60;
  if (!qword_27F8F7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F60);
  }

  return result;
}

unint64_t sub_257D16F60()
{
  result = qword_281544008;
  if (!qword_281544008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F8470);
    sub_257D16FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544008);
  }

  return result;
}

unint64_t sub_257D16FE4()
{
  result = qword_2815447B8;
  if (!qword_2815447B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815447B8);
  }

  return result;
}

unint64_t sub_257D17038()
{
  result = qword_281543FE8;
  if (!qword_281543FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5540);
    sub_257D170BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FE8);
  }

  return result;
}

unint64_t sub_257D170BC()
{
  result = qword_281544698;
  if (!qword_281544698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544698);
  }

  return result;
}

unint64_t sub_257D17110()
{
  result = qword_281544028;
  if (!qword_281544028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6AD8);
    sub_257D17194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544028);
  }

  return result;
}

unint64_t sub_257D17194()
{
  result = qword_281544820;
  if (!qword_281544820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544820);
  }

  return result;
}

unint64_t sub_257D171E8()
{
  result = qword_281543FF8;
  if (!qword_281543FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5880);
    sub_257D1726C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FF8);
  }

  return result;
}

unint64_t sub_257D1726C()
{
  result = qword_2815446B8;
  if (!qword_2815446B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815446B8);
  }

  return result;
}

unint64_t sub_257D172C0()
{
  result = qword_281544018;
  if (!qword_281544018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5F90);
    sub_257D17344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544018);
  }

  return result;
}

unint64_t sub_257D17344()
{
  result = qword_281544808;
  if (!qword_281544808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544808);
  }

  return result;
}

unint64_t sub_257D17398()
{
  result = qword_281543FD8;
  if (!qword_281543FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7080);
    sub_257D1741C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FD8);
  }

  return result;
}

unint64_t sub_257D1741C()
{
  result = qword_281544590;
  if (!qword_281544590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544590);
  }

  return result;
}

unint64_t sub_257D17470()
{
  result = qword_27F8F7F68;
  if (!qword_27F8F7F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F4B90);
    sub_257D174F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F68);
  }

  return result;
}

unint64_t sub_257D174F4()
{
  result = qword_27F8F7F70;
  if (!qword_27F8F7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F70);
  }

  return result;
}

unint64_t sub_257D17548()
{
  result = qword_2815458E8;
  if (!qword_2815458E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815458E8);
  }

  return result;
}

unint64_t sub_257D1759C()
{
  result = qword_27F8F7F78;
  if (!qword_27F8F7F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6B38);
    sub_257D17620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F78);
  }

  return result;
}

unint64_t sub_257D17620()
{
  result = qword_27F8F7F80;
  if (!qword_27F8F7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F80);
  }

  return result;
}

uint64_t MAGOutputAnnouncement.speechContent.getter@<X0>(uint64_t *a1@<X8>)
{
  MAGOutputAnnouncement.displayContent.getter();
  v2 = sub_257ECD1A0();
  v3 = MEMORY[0x277D70398];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_257ECD1B0();
}

uint64_t MAGOutputAnnouncement.displayContent.getter()
{
  switch(*v0)
  {
    case 4:
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v2 = objc_opt_self();
      v3 = [v2 bundleForClass_];
      v4 = sub_257ECF4C0();
      v5 = sub_257ECF4C0();
      v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

      sub_257ECF500();
      v7 = [v2 bundleForClass_];
      v8 = sub_257ECF4C0();
      v9 = sub_257ECF4C0();
      v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

      sub_257ECF500();
      v18 = sub_257ECF710();
      sub_257ECF620();

      v11 = v18;
      break;
    case 0xD:
      if (qword_27F8F4668 != -1)
      {
        swift_once();
      }

      goto LABEL_5;
    default:
LABEL_5:
      type metadata accessor for MAGUtilities();
      v12 = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_257ECF4C0();
      v15 = sub_257ECF4C0();
      v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

      v11 = sub_257ECF500();
      break;
  }

  return v11;
}

uint64_t MAGOutputAnnouncement.hashValue.getter()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

unint64_t sub_257D1841C()
{
  result = qword_27F8F7F88;
  if (!qword_27F8F7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F88);
  }

  return result;
}

uint64_t sub_257D18488()
{
  sub_257D188B4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257D18590(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v29 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = (v29 + 40 * v1);
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v7 = (*(v6 + 8))(v5, v6);
    v8 = v7;
    v9 = v7 >> 62;
    if (v7 >> 62)
    {
      v10 = sub_257ED0210();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_257ED0210();
      v13 = v27 + v10;
      if (__OFADD__(v27, v10))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v10;
    if (result)
    {
      if (!v11)
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_257ED0210();
      goto LABEL_15;
    }

    if (v11)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_257ED0310();
    v2 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v16 >> 1) - v15) < v34)
    {
      goto LABEL_36;
    }

    v31 = v1;
    v32 = v2;
    v19 = v14 + 8 * v15 + 32;
    v28 = v14;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_38;
      }

      sub_257C6AB38(&qword_27F8F7FB0, &qword_27F8F7FA8);
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7FA8);
        v21 = sub_257CA8910(v33, i, v8);
        v23 = *v22;
        (v21)(v33, 0);
        *(v19 + 8 * i) = v23;
      }
    }

    else
    {
      sub_257D195A0();
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v24 = *(v28 + 16);
      v25 = __OFADD__(v24, v34);
      v26 = v24 + v34;
      if (v25)
      {
        goto LABEL_37;
      }

      *(v28 + 16) = v26;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v18 = v14;
  result = sub_257ED0210();
  v14 = v18;
  v17 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

MagnifierSupport::ColorFilter_optional __swiftcall ColorFilter.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_257D188B4()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  if (v2 > 5)
  {
    v7 = 0xD000000000000022;
    v8 = 0xD000000000000021;
    if (v2 != 10)
    {
      v8 = 0xD000000000000020;
    }

    if (v2 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD00000000000001FLL;
    if (v2 == 7)
    {
      v9 = 0xD00000000000001ELL;
    }

    if (v2 == 6)
    {
      v9 = 0xD00000000000001BLL;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v3 = 0xD000000000000019;
    v4 = 0xD000000000000018;
    if (v2 != 4)
    {
      v4 = 0xD000000000000017;
    }

    if (v2 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000015;
    if (v2 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      v1 = v5;
    }

    if (*v0 <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_257D18A0C()
{
  v1 = *v0;
  if (v1 > 5)
  {
    if (*v0 > 8u)
    {
      if (v1 == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_257ED9BF0;
        v17 = objc_opt_self();
        v12 = [v17 yellowColor];
        v13 = [v17 blackColor];
      }

      else
      {
        if (v1 == 10)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
          v2 = swift_allocObject();
          *(v2 + 16) = xmmword_257ED9BF0;
          v12 = [objc_opt_self() yellowColor];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
          v2 = swift_allocObject();
          *(v2 + 16) = xmmword_257ED9BF0;
          v12 = [objc_opt_self() whiteColor];
        }

        v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.5 alpha:1.0];
      }
    }

    else
    {
      if (v1 == 6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_257ED9BF0;
        v15 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        result = v14;
        *(v14 + 32) = v15;
        return result;
      }

      if (v1 == 7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_257ED9BE0;
        v7 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        v8 = sub_257ECCF50();
        v9 = sub_257ECF4C0();
        [v7 setValue:v8 forKey:v9];

        *(v6 + 32) = v7;
        v10 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        result = v6;
        *(v6 + 40) = v10;
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_257ED9BF0;
      v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.75 green:0.0 blue:0.0 alpha:1.0];
      v13 = [objc_opt_self() blackColor];
    }

    goto LABEL_25;
  }

  if (*v0 > 2u)
  {
    if (v1 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_257ED9BF0;
      v16 = objc_opt_self();
      v12 = [v16 blackColor];
      v13 = [v16 yellowColor];
    }

    else if (v1 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_257ED9BF0;
      v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.5 alpha:1.0];
      v13 = [objc_opt_self() yellowColor];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_257ED9BF0;
      v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.5 alpha:1.0];
      v13 = [objc_opt_self() whiteColor];
    }

    goto LABEL_25;
  }

  if (!*v0)
  {
    return MEMORY[0x277D84F90];
  }

  if (v1 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_257ED9BF0;
    v12 = [objc_opt_self() blackColor];
    v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.75 green:0.0 blue:0.0 alpha:1.0];
LABEL_25:
    v3 = sub_257D19088(v12, v13);

    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_257ED9BF0;
  v3 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v4 = sub_257ECCF50();
  v5 = sub_257ECF4C0();
  [v3 setValue:v4 forKey:v5];

LABEL_26:
  result = v2;
  *(v2 + 32) = v3;
  return result;
}

id sub_257D19088(void *a1, void *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v23 = 0.0;
  v24[0] = 0.0;
  v21 = 0;
  v22 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v17 = 0;
  v18 = 0.0;
  [a1 getRed:v24 green:&v23 blue:&v22 alpha:&v21];
  [a2 getRed:&v20 green:&v19 blue:&v18 alpha:&v17];
  v5 = (v20 - v24[0]) * 0.33333333;
  v6 = v24[0];
  v7 = (v19 - v23) * 0.33333333;
  v8 = v23;
  v9 = (v18 - v22) * 0.33333333;
  v10 = v22;
  *v14 = v5;
  *&v14[1] = v5;
  *&v14[2] = v5;
  v14[3] = 0;
  *&v14[4] = v6;
  *&v14[5] = v7;
  *&v14[6] = v7;
  *&v14[7] = v7;
  v14[8] = 0;
  *&v14[9] = v8;
  *&v14[10] = v9;
  *&v14[11] = v9;
  *&v14[12] = v9;
  v14[13] = 0;
  *&v14[14] = v10;
  v15 = xmmword_257ED6CD0;
  v16 = 0;
  v11 = [objc_opt_self() valueWithCAColorMatrix_];
  v12 = sub_257ECF4C0();
  [v4 setValue:v11 forKey:v12];

  return v4;
}

unint64_t sub_257D19288()
{
  result = qword_27F8F7F90;
  if (!qword_27F8F7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F90);
  }

  return result;
}

unint64_t sub_257D193DC()
{
  result = qword_27F8F7FA0;
  if (!qword_27F8F7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7FA0);
  }

  return result;
}

uint64_t sub_257D1945C(uint64_t a1, char a2)
{
  if (!a2)
  {
    v2 = MEMORY[0x277CDA290];
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v2 = MEMORY[0x277CDA2A0];
LABEL_5:
    v3 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v4 = sub_257ECCF50();
    v5 = sub_257ECF4C0();
    [v3 setValue:v4 forKey:v5];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    result = swift_allocObject();
    *(result + 16) = xmmword_257ED9BF0;
    *(result + 32) = v3;
    return result;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_257D195A0()
{
  result = qword_281543DD0;
  if (!qword_281543DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543DD0);
  }

  return result;
}

unint64_t sub_257D195EC()
{
  result = qword_2815459B0;
  if (!qword_2815459B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815459B0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DisplayFilter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for DisplayFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_257D196E0(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_257D196F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_257D19724(uint64_t result, uint64_t (*a2)(void))
{
  if (result)
  {
    return a2();
  }

  return result;
}

unint64_t sub_257D19758()
{
  result = qword_27F8F7FB8;
  if (!qword_27F8F7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7FB8);
  }

  return result;
}

unint64_t sub_257D197B0()
{
  result = qword_27F8F7FC0;
  if (!qword_27F8F7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7FC0);
  }

  return result;
}

uint64_t sub_257D19870()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F912FA0);
  __swift_project_value_buffer(v0, qword_27F912FA0);
  return sub_257ECCA00();
}

uint64_t sub_257D198D4()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257D199C4, v3, v2);
}

uint64_t sub_257D199C4()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = xmmword_257EE0FB0;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257D19AA8;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D19AA8()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257D19BE8;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257D19BE8()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete ReaderModeIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257D19D64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4628 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F912FA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257D19E0C(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D19EE0, v3, v2);
}

uint64_t sub_257D19EE0()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EE3A60, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257D19FF4(uint64_t a1)
{
  v2 = sub_257CF97BC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257D1A040()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257D198D4();
}

uint64_t sub_257D1A0EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v1(v2);
}

uint64_t sub_257D1A130()
{
  v1 = sub_257ECF120();
  v31 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_257ECF190();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECCB70();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECDA30();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257D21CB8(0, 0, 0);
  if ((_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0() & 1) != 0 && (v14 = _s16MagnifierSupport013MAGAutomationB0V23detectionModeReplayPathSSSgvgZ_0(), v15))
  {
    v16 = v15;
    v17 = v14;
    v31 = v0;
    sub_257ECD3B0();

    v18 = sub_257ECDA20();
    v19 = sub_257ECFBD0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_257BF1FC8(v17, v16, aBlock);
      _os_log_impl(&dword_257BAC000, v18, v19, "Automation replay path is set to %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x259C74820](v21, -1, -1);
      MEMORY[0x259C74820](v20, -1, -1);
    }

    (*(v27 + 8))(v12, v10);
    sub_257ECCAC0();

    sub_257D1DCA0(v9, v13);

    return (*(v28 + 8))(v9, v29);
  }

  else
  {
    v29 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_captureSessionQueue);
    v23 = swift_allocObject();
    *(v23 + 16) = v0;
    *(v23 + 24) = v13;
    aBlock[4] = sub_257D22FA8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_101_0;
    v24 = _Block_copy(aBlock);
    v25 = v0;
    v26 = v13;
    sub_257ECF150();
    v32 = MEMORY[0x277D84F90];
    sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257C31C28(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v6, v3, v24);
    _Block_release(v24);

    v31[1](v3, v1);
    (*(v4 + 8))(v6, v30);
  }
}

void *sub_257D1A64C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_257D1A698(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_257D1A750()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_257D1A794(double a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_257D1A844(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *sub_257D1A8A0()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_pixelBuffer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_257D1A8EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_pixelBuffer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MAGARService.init(eventHandler:captureSessionQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v24 = sub_257ECFD20();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v7);
  v8 = sub_257ECF190();
  MEMORY[0x28223BE20](v8 - 8);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession] = 0;
  v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionIsInterrupted] = 0;
  v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp] = 0;
  v21 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arDelegateQueue;
  v20[4] = sub_257BD2C2C(0, &qword_281543F10);
  sub_257ECF150();
  v26 = MEMORY[0x277D84F90];
  v20[3] = sub_257D1B5A4(&qword_281543F30, MEMORY[0x277D85230]);
  v20[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  sub_257C31C28(&unk_281543FA0, &unk_27F8F8000);
  sub_257ED0180();
  v9 = *MEMORY[0x277D85260];
  v10 = v4 + 104;
  v11 = *(v4 + 104);
  v20[1] = v10;
  v11(v6, v9, v24);
  *&v2[v21] = sub_257ECFD80();
  v21 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionQueue;
  sub_257ECF150();
  v26 = MEMORY[0x277D84F90];
  sub_257ED0180();
  v11(v6, v9, v24);
  *&v2[v21] = sub_257ECFD80();
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arFrame] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_pixelBuffer] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arRecordingConfiguration] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arReplayConfiguration] = 0;
  v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arIsRecording] = 0;
  v12 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService____lazy_storage___currentRecordingURL;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastRecordingURL;
  v15 = sub_257ECCB70();
  v16 = *(*(v15 - 8) + 56);
  v16(&v3[v14], 1, 1, v15);
  v16(&v3[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastScreenRecordingURL], 1, 1, v15);
  v17 = v23;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_eventHandler] = v22;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_captureSessionQueue] = v17;
  v18 = type metadata accessor for MAGARService();
  v25.receiver = v3;
  v25.super_class = v18;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t type metadata accessor for MAGARService()
{
  result = qword_27F8F8130;
  if (!qword_27F8F8130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257D1AED4(int a1, int a2, int a3)
{
  v4 = v3;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v5 = sub_257ECF120();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF190();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECD990();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v15 = sub_257ECD9C0();
  __swift_project_value_buffer(v15, qword_27F8F5D90);
  sub_257ECD980();
  v16 = sub_257ECD9A0();
  v17 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v18 = swift_slowAlloc();
    v28 = v10;
    v19 = v18;
    *v18 = 0;
    v20 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v16, v17, v20, "StartARKit", "", v19, 2u);
    v21 = v19;
    v4 = v3;
    v10 = v28;
    MEMORY[0x259C74820](v21, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = v29 & 1;
  *(v22 + 25) = v30 & 1;
  *(v22 + 26) = v31 & 1;
  aBlock[4] = sub_257D1B578;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_28;
  v23 = _Block_copy(aBlock);
  v24 = v4;
  sub_257ECF150();
  v35 = MEMORY[0x277D84F90];
  sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v10, v7, v23);
  _Block_release(v23);
  (*(v34 + 8))(v7, v5);
  (*(v32 + 8))(v10, v33);

  v25 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
  result = swift_beginAccess();
  *&v24[v25] = 0;
  v24[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted] = 1;
  return result;
}

uint64_t sub_257D1B36C(char *a1, char a2, char a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  if (!*&a1[v11])
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CE5370]) init];
    v19 = *&a1[v11];
    *&a1[v11] = v18;
    v20 = v18;

    if (v20)
    {
      [v20 _addObserver_];
    }

    v21 = *&a1[v11];
    if (v21)
    {
      [v21 setDelegate_];
      v22 = *&a1[v11];
      if (v22)
      {
        [v22 setDelegateQueue_];
      }
    }
  }

  v12 = sub_257D21CB8(a2 & 1, a3 & 1, a4 & 1);
  v13 = *&a1[v11];
  if (v13)
  {
    [v13 runWithConfiguration:v12 options:1];
  }

  v14 = sub_257ECF930();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v16 = a1;
  sub_257E81524(0, 0, v10, &unk_257EE3DC0, v15);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D1B5A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257D1B60C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 5;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257D1B6C4;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1B6C4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257D231CC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_257D1B7F8()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF190();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECD990();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  result = swift_beginAccess();
  if (*&v1[v13])
  {
    v24 = v6;
    v25 = v3;
    if (qword_27F8F45A8 != -1)
    {
      swift_once();
    }

    v26 = v2;
    v15 = sub_257ECD9C0();
    __swift_project_value_buffer(v15, qword_27F8F5D90);
    sub_257ECD980();
    v16 = sub_257ECD9A0();
    v17 = sub_257ECFDD0();
    if (sub_257ED0090())
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_257ECD970();
      _os_signpost_emit_with_name_impl(&dword_257BAC000, v16, v17, v19, "StopARKit", "", v18, 2u);
      MEMORY[0x259C74820](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    if (v1[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arIsRecording] == 1)
    {
      MAGARService.stopRecording(handler:)(0, 0);
    }

    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    aBlock[4] = sub_257D216F4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_6_3;
    v21 = _Block_copy(aBlock);
    v22 = v1;
    sub_257ECF150();
    v28 = MEMORY[0x277D84F90];
    sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257C31C28(&qword_281543FB0, &unk_27F8F5480);
    v23 = v26;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v8, v5, v21);
    _Block_release(v21);
    (*(v25 + 8))(v5, v23);
    (*(v27 + 8))(v8, v24);
  }

  return result;
}

void MAGARService.stopRecording(handler:)(void (*a1)(void), uint64_t a2)
{
  v27[1] = a2;
  v29 = a1;
  v3 = sub_257ECCC80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v27 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v27 - v14;
  sub_257ECCC70();
  sub_257D1E308(v6, v15);
  (*(v4 + 8))(v6, v3);
  v16 = sub_257ECCB70();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastScreenRecordingURL;
  swift_beginAccess();
  sub_257CB4B80(v15, v2 + v18);
  swift_endAccess();
  v28 = v2;
  sub_257BE401C(v2 + v18, v13, &qword_27F8F5F30);
  v19 = *(v17 + 48);
  v20 = v19(v13, 1, v16);
  sub_257BE4084(v13, &qword_27F8F5F30);
  if (v20 != 1)
  {
    v21 = v29;
    v22 = [objc_opt_self() sharedRecorder];
    v23 = v28 + v18;
    v24 = v28;
    sub_257BE401C(v23, v10, &qword_27F8F5F30);
    if (v19(v10, 1, v16) == 1)
    {
      __break(1u);
    }

    else
    {
      v25 = sub_257ECCAE0();
      (*(v17 + 8))(v10, v16);
      aBlock[4] = sub_257D1E718;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231E8;
      aBlock[3] = &block_descriptor_9_0;
      v26 = _Block_copy(aBlock);
      [v22 stopRecordingWithOutputURL:v25 completionHandler:v26];
      _Block_release(v26);

      *(v24 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arIsRecording) = 0;
      if (v21)
      {
        v21();
      }
    }
  }
}

uint64_t sub_257D1C00C(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  [*&a1[v5] pause];
  a1[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted] = 0;
  v6 = *&a1[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arFrame];
  *&a1[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arFrame] = 0;

  v7 = sub_257ECF930();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v9 = a1;
  sub_257E81524(0, 0, v4, &unk_257EE3DB0, v8);
}

uint64_t sub_257D1C184()
{
  *(v0 + 16) = xmmword_257EDA120;
  *(v0 + 32) = 5;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257D1C240;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1C240()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257D1C374, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_257D1C38C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-v6];
  if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted) == 1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v15[15] & 1) == 0)
    {
      v8 = sub_257ECF930();
      (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = a1;
      v9[5] = a2;
      v9[6] = v2;
      v10 = a1;
      v11 = a2;
      v12 = v2;
      sub_257E81524(0, 0, v7, &unk_257EE3AC0, v9);

      v13 = *&v12[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arFrame];
      *&v12[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arFrame] = v11;
      v14 = v11;
    }
  }
}

uint64_t sub_257D1C570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_257D1C594, 0, 0);
}

uint64_t sub_257D1C594()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_257D1C660;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1C660()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_257D1C7DC;
  }

  else
  {
    v2 = sub_257D1C774;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257D1C774()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257D1C7DC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257D1C8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_257D1C904, 0, 0);
}

uint64_t sub_257D1C904()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 1;
  v3 = v2;

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_257D1C9D8;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1C9D8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_257D231C4;
  }

  else
  {
    v2 = sub_257D231C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257D1CB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_257D1CB58, 0, 0);
}

uint64_t sub_257D1CB58()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 2;
  v3 = v2;

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_257D1CC2C;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1CC2C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_257D1CDAC;
  }

  else
  {
    v2 = sub_257D1CD40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257D1CD40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257D1CDAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257D1CE40(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(id, uint64_t))
{
  sub_257BD2C2C(0, a5);
  v10 = sub_257ECF810();
  v11 = a3;
  v12 = a1;
  a7(v11, v10);
}

uint64_t sub_257D1CEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_257D1CF1C, 0, 0);
}

uint64_t sub_257D1CF1C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 3;
  v3 = v2;

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_257D1C9D8;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1D038(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16[-v10];
  if (*(v4 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted) == 1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v16[15] & 1) == 0)
    {
      v12 = sub_257ECF930();
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = a1;
      v13[5] = a2;
      v13[6] = v4;
      v14 = a1;

      v15 = v4;
      sub_257E81524(0, 0, v11, a4, v13);
    }
  }

  return result;
}

uint64_t sub_257D1D1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_257D1D220, 0, 0);
}

uint64_t sub_257D1D220()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 4;
  v3 = v2;

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_257D1C9D8;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1D368()
{
  *(v0 + 16) = xmmword_257EE0F90;
  *(v0 + 32) = 5;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257D1B6C4;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1D4B8(void *a1, const char *a2, int a3, uint64_t a4, uint64_t a5)
{
  v45 = a3;
  v42 = a2;
  v8 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = v40 - v11;
  v12 = sub_257ECD990();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECDA30();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD460();
  v19 = a1;
  v20 = sub_257ECDA20();
  v21 = sub_257ECFC00();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = a5;
    v23 = v22;
    v24 = swift_slowAlloc();
    v40[1] = a4;
    v25 = v8;
    v26 = v24;
    *v23 = 138412290;
    *(v23 + 4) = v19;
    *v24 = v19;
    v27 = v19;
    _os_log_impl(&dword_257BAC000, v20, v21, "%@", v23, 0xCu);
    sub_257BE4084(v26, &unk_27F8F5490);
    v28 = v26;
    v8 = v25;
    MEMORY[0x259C74820](v28, -1, -1);
    v29 = v23;
    a5 = v41;
    MEMORY[0x259C74820](v29, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v30 = sub_257ECD9C0();
  __swift_project_value_buffer(v30, qword_27F8F5D90);
  sub_257ECD980();
  v31 = sub_257ECD9A0();
  v32 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v31, v32, v34, v42, "", v33, 2u);
    MEMORY[0x259C74820](v33, -1, -1);
  }

  (*(v43 + 8))(v14, v44);
  v8[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionIsInterrupted] = v45;
  v35 = sub_257ECF930();
  v36 = v46;
  (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v8;
  v38 = v8;
  sub_257E81524(0, 0, v36, a5, v37);
}

uint64_t sub_257D1D8DC()
{
  *(v0 + 16) = xmmword_257EE0FA0;
  *(v0 + 32) = 5;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257D1B6C4;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

id MAGARService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAGARService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGARService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257D1DBE4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MAGARService();
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall MAGARService.updateAngelARSession(sceneDepth:personSegmentation:sceneReconstruction:)(Swift::Bool sceneDepth, Swift::Bool personSegmentation, Swift::Bool sceneReconstruction)
{
  v4 = sub_257D21CB8(sceneDepth, personSegmentation, sceneReconstruction);
  v5 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6)
  {
    v7 = v6;
    [v7 runWithConfiguration:v4 options:1];
  }
}

void sub_257D1DCA0(uint64_t a1, void *a2)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v4 = sub_257ECDA30();
  v24[2] = *(v4 - 8);
  v24[3] = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECCB70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF120();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  byte_27F8F87B0 = 1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v24[1] = v6;
  v15 = qword_281548358 + 48;
  swift_beginAccess();
  v27 = MEMORY[0x277D84F90];
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v16 = sub_257ECF110();
  MEMORY[0x28223BE20](v16);
  v24[-2] = &v27;
  v24[-1] = v15;
  sub_257ECFD40();
  (*(v12 + 8))(v14, v11);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
  swift_beginAccess();
  *(v2 + v17) = 0;
  (*(v8 + 16))(v10, v25, v7);
  v18 = objc_allocWithZone(MEMORY[0x277CE5360]);
  v19 = v26;
  v20 = sub_257D22438(v19, v10, 0);

  [v20 setDelegate_];
  v21 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (v22)
  {
    v23 = v22;
    [v23 pause];
    [v23 _addObserver_];
    [v23 setDelegate_];
    [v23 runWithConfiguration:v20 options:11];
  }
}

id sub_257D1E1AC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  result = *(a1 + v4);
  if (result)
  {
    return [result runWithConfiguration:a2 options:1];
  }

  return result;
}

Swift::Void __swiftcall MAGARService.startRecording()()
{
  v1 = [objc_opt_self() sharedRecorder];
  v3[4] = sub_257D1E2FC;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_257D231E8;
  v3[3] = &block_descriptor_42;
  v2 = _Block_copy(v3);
  [v1 startRecordingWithHandler_];
  _Block_release(v2);

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arIsRecording) = 1;
}

uint64_t sub_257D1E308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v2 = sub_257ECCB70();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8178);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_257ECCD90();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(MEMORY[0x277CCA968]);
  v17 = [v16 init];
  sub_257ECCD00();
  v18 = sub_257ECCD60();
  (*(v13 + 8))(v15, v12);
  [v17 setLocale_];

  sub_257ECCE00();
  v19 = sub_257ECCE20();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v11, 1, v19) != 1)
  {
    v21 = sub_257ECCE10();
    (*(v20 + 8))(v11, v19);
  }

  [v17 setTimeZone_];

  v22 = sub_257ECF4C0();
  [v17 setDateFormat_];

  v33 = 0xD000000000000011;
  v34 = 0x8000000257F006A0;
  v23 = sub_257ECCBD0();
  v24 = [v17 stringFromDate_];

  v25 = sub_257ECF500();
  v27 = v26;

  MEMORY[0x259C72150](v25, v27);

  v28 = NSTemporaryDirectory();
  sub_257ECF500();

  sub_257ECCAC0();

  sub_257ECCB00();

  v29 = *(v3 + 8);
  v29(v6, v2);
  sub_257ECCB10();

  return (v29)(v8, v2);
}

uint64_t sub_257D1E724(void *a1, const char *a2)
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_257ECD3B0();
    v9 = a1;
    v10 = sub_257ECDA20();
    v11 = sub_257ECFBD0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = a1;
      v19 = v13;
      *v12 = 136315138;
      v14 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8160);
      v15 = sub_257ECF570();
      v17 = sub_257BF1FC8(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_257BAC000, v10, v11, a2, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x259C74820](v13, -1, -1);
      MEMORY[0x259C74820](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_257D1E8FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v4 = a2;
  v3(a2);
}

Swift::Void __swiftcall MAGARService.createRadar()()
{
  v1 = v0;
  v179 = sub_257ECF120();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v176 = &v169 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_257ECF190();
  v175 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v174 = &v169 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_257ECC7D0();
  v4 = *(v204 - 8);
  v5 = MEMORY[0x28223BE20](v204);
  v7 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v186 = &v169 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v185 = &v169 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v184 = &v169 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v183 = &v169 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v182 = &v169 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v181 = &v169 - v19;
  MEMORY[0x28223BE20](v18);
  v180 = &v169 - v20;
  v191 = sub_257ECCC80();
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v22 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v187 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v188 = &v169 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v192 = &v169 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v169 - v30;
  v32 = sub_257ECCB70();
  v198 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v172 = &v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v173 = &v169 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v169 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v203 = &v169 - v41;
  v171 = v42;
  MEMORY[0x28223BE20](v40);
  v202 = &v169 - v43;
  if (qword_281544FE0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v44 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  v189 = v44;
  sub_257ECDD60();

  v208 = MEMORY[0x277D84F90];
  v197 = v32;
  v193 = v22;
  v205 = v4;
  v170 = v7;
  v169 = v39;
  if (aBlock == 1)
  {
    if (qword_27F8F4610 != -1)
    {
      swift_once();
    }

    v45 = qword_27F912F78;
    swift_beginAccess();
    v201 = *(v45 + 24);
    if (v201 >> 62)
    {
      v46 = sub_257ED0210();
      if (v46)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v46 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
LABEL_7:
        v22 = v201;
        v207 = v201 & 0xC000000000000001;
        v196 = v201 & 0xFFFFFFFFFFFFFF8;
        v200 = (v198 + 48);
        v199 = (v198 + 32);
        v195 = (v198 + 16);
        v194 = v198 + 8;

        v47 = 0;
        v208 = MEMORY[0x277D84F90];
        v206 = v1;
        while (1)
        {
          if (v207)
          {
            v48 = MEMORY[0x259C72E20](v47, v22);
          }

          else
          {
            if (v47 >= *(v196 + 16))
            {
              goto LABEL_30;
            }

            v48 = *&v22[8 * v47 + 32];
          }

          v1 = v48;
          v7 = (v47 + 1);
          if (__OFADD__(v47, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v4 = v46;
          v49 = sub_257CEFE48(v48);
          if (v49)
          {
            v50 = v49;
            *&v211 = 0x6675426C65786970;
            *(&v211 + 1) = 0xEB00000000726566;
            v39 = sub_257ED06A0();
            v51 = [v50 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v51)
            {
              sub_257ED0160();
              swift_unknownObjectRelease();
            }

            else
            {
              v211 = 0u;
              v212 = 0u;
            }

            aBlock = v211;
            v214 = v212;
            sub_257BE401C(&aBlock, &v209, &unk_27F8F62F0);
            if (!v210)
            {
              __break(1u);
LABEL_104:
              __break(1u);
              return;
            }

            sub_257BEBE08(&v209, &v211);
            type metadata accessor for CVBuffer(0);
            swift_dynamicCast();
            v52 = v217[0];
            sub_257D20560(v217[0], v1, v31);

            if ((*v200)(v31, 1, v32) == 1)
            {
              sub_257BE4084(&aBlock, &unk_27F8F62F0);

              sub_257BE4084(v31, &qword_27F8F5F30);
            }

            else
            {
              v39 = *v199;
              v53 = v202;
              (*v199)(v202, v31, v32);
              (*v195)(v203, v53, v32);
              v54 = v208;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v54 = sub_257BFDA50(0, v54[2] + 1, 1, v54);
              }

              v208 = v54;
              v56 = v54[2];
              v55 = v54[3];
              if (v56 >= v55 >> 1)
              {
                v208 = sub_257BFDA50(v55 > 1, v56 + 1, 1, v208);
              }

              v57 = v198;
              v58 = v197;
              (*(v198 + 8))(v202, v197);
              sub_257BE4084(&aBlock, &unk_27F8F62F0);
              v59 = v208;
              v208[2] = v56 + 1;
              v60 = v59 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v56;
              v32 = v58;
              (v39)(v60, v203, v58);
            }

            v22 = v201;
          }

          else
          {
          }

          ++v47;
          v46 = v4;
          v1 = v206;
          if (v7 == v4)
          {

            goto LABEL_34;
          }
        }
      }
    }

    v208 = MEMORY[0x277D84F90];
  }

LABEL_34:
  v61 = v32;
  sub_257ECCC70();
  v62 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v63 = sub_257ECF4C0();
  [v62 setDateFormat_];

  v64 = sub_257ECCBD0();
  v200 = v62;
  v65 = [v62 stringFromDate_];

  v66 = sub_257ECF500();
  v207 = v67;

  v68 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastScreenRecordingURL;
  swift_beginAccess();
  v69 = v192;
  sub_257BE401C(v1 + v68, v192, &qword_27F8F5F30);
  v70 = v1;
  v72 = (v198 + 48);
  v71 = *(v198 + 48);
  v73 = v61;
  LODWORD(v61) = v71(v69, 1, v61);
  sub_257BE4084(v69, &qword_27F8F5F30);
  v199 = v72;
  v196 = v71;
  if (v61 == 1)
  {
    v74 = v66;
    v75 = v207;
  }

  else
  {
    v76 = v188;
    sub_257BE401C(v70 + v68, v188, &qword_27F8F5F30);
    if (v71(v76, 1, v73) == 1)
    {
      goto LABEL_104;
    }

    v74 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v208 = sub_257BFDA50(0, v208[2] + 1, 1, v208);
    }

    v75 = v207;
    v78 = v208[2];
    v77 = v208[3];
    if (v78 >= v77 >> 1)
    {
      v208 = sub_257BFDA50(v77 > 1, v78 + 1, 1, v208);
    }

    v79 = v208;
    v208[2] = v78 + 1;
    (*(v198 + 32))(v79 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v78, v76, v197);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v80 = aBlock;
  v81 = "[Detection] - Recording";
  if (aBlock)
  {
    v81 = "[Point and Speak] - Recording";
  }

  v82 = v81 - 32;
  v83 = (v81 - 32) | 0x8000000000000000;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_257ED02D0();

  strcpy(&aBlock, "Capture taken ");
  HIBYTE(aBlock) = -18;
  MEMORY[0x259C72150](v74, v75);

  v84 = *(&aBlock + 1);
  if ((v82 & 0x2F00000000000000) == 0x2000000000000000)
  {

    v85 = sub_257ECF4C0();
    v86 = sub_257ECF4C0();
    v87 = [objc_opt_self() alertControllerWithTitle:v85 message:v86 preferredStyle:1];

    v88 = sub_257ECF4C0();
    v89 = [objc_opt_self() actionWithTitle:v88 style:0 handler:0];

    [v87 addAction_];
    v90 = [objc_opt_self() sharedApplication];
    v91 = sub_257CA7C64();

    v92 = v193;
    if (v91 && (v93 = [v91 rootViewController], v91, v93))
    {
      [v93 presentViewController:v87 animated:1 completion:0];
    }

    else
    {
    }

    (*(v190 + 8))(v92, v191);
  }

  else
  {
    v207 = aBlock;
    v94 = 7;
    if (v80)
    {
      v94 = 13;
    }

    v206 = (v94 - 0x2FFFFFFFFFFFFFF0);
    *&v209 = 0xD000000000000013;
    *(&v209 + 1) = 0x8000000257F003E0;
    strcpy(&aBlock, "ComponentID=");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v217[0] = 1356406;
    v95 = sub_257ED0600();
    MEMORY[0x259C72150](v95);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_257ED02D0();

    strcpy(&aBlock, "ComponentName=");
    HIBYTE(aBlock) = -18;
    v96 = v180;
    sub_257ECC780();
    sub_257ECC7B0();
    strcpy(v217, "Magnifier");
    WORD1(v217[1]) = 0;
    HIDWORD(v217[1]) = -385875968;
    v97 = sub_257BDAB08();
    v195 = v83;
    v194 = v84;
    v98 = sub_257ED0130();
    if (v99)
    {
      v100 = v98;
    }

    else
    {
      v100 = 0;
    }

    if (v99)
    {
      v101 = v99;
    }

    else
    {
      v101 = 0xE000000000000000;
    }

    v103 = v205 + 8;
    v102 = *(v205 + 1);
    v104 = v96;
    v105 = v204;
    v102(v104, v204);
    MEMORY[0x259C72150](v100, v101);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v106 = 0xE000000000000000;
    sub_257ED02D0();

    *&aBlock = 0xD000000000000011;
    *(&aBlock + 1) = 0x8000000257F00420;
    v107 = v181;
    sub_257ECC780();
    sub_257ECC7B0();
    v217[0] = 0xD000000000000010;
    v217[1] = 0x8000000257F00400;
    v108 = sub_257ED0130();
    if (v109)
    {
      v110 = v108;
    }

    else
    {
      v110 = 0;
    }

    if (v109)
    {
      v106 = v109;
    }

    v102(v107, v105);
    MEMORY[0x259C72150](v110, v106);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v111 = 0xE000000000000000;
    sub_257ED02D0();

    *&aBlock = 0x6966697373616C43;
    *(&aBlock + 1) = 0xEF3D6E6F69746163;
    v112 = v182;
    sub_257ECC780();
    sub_257ECC7B0();
    v217[0] = 1802723668;
    v217[1] = 0xE400000000000000;
    v113 = sub_257ED0130();
    if (v114)
    {
      v115 = v113;
    }

    else
    {
      v115 = 0;
    }

    if (v114)
    {
      v111 = v114;
    }

    v102(v112, v105);
    MEMORY[0x259C72150](v115, v111);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v116 = 0xE000000000000000;
    sub_257ED02D0();

    *&aBlock = 0xD000000000000010;
    *(&aBlock + 1) = 0x8000000257F00440;
    v117 = v183;
    sub_257ECC780();
    sub_257ECC7B0();
    strcpy(v217, "Not Applicable");
    HIBYTE(v217[1]) = -18;
    v118 = sub_257ED0130();
    if (v119)
    {
      v120 = v118;
    }

    else
    {
      v120 = 0;
    }

    if (v119)
    {
      v116 = v119;
    }

    v102(v117, v105);
    MEMORY[0x259C72150](v120, v116);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    *&aBlock = 0x3D656C746954;
    *(&aBlock + 1) = 0xE600000000000000;
    v121 = v184;
    sub_257ECC780();
    sub_257ECC7B0();
    v217[0] = v206;
    v217[1] = v195;
    v122 = sub_257ED0130();
    if (v123)
    {
      v124 = v122;
    }

    else
    {
      v124 = 0;
    }

    if (v123)
    {
      v125 = v123;
    }

    else
    {
      v125 = 0xE000000000000000;
    }

    v102(v121, v105);
    MEMORY[0x259C72150](v124, v125);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    v126 = 0xE000000000000000;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_257ED02D0();

    strcpy(&aBlock, "Description=");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v127 = v185;
    sub_257ECC780();
    sub_257ECC7B0();
    v217[0] = v207;
    v217[1] = v194;
    v128 = sub_257ED0130();
    if (v129)
    {
      v130 = v128;
    }

    else
    {
      v130 = 0;
    }

    if (v129)
    {
      v126 = v129;
    }

    v102(v127, v105);
    MEMORY[0x259C72150](v130, v126);

    v131 = v186;
    sub_257ECC780();
    sub_257ECC7B0();
    v132 = 0xE000000000000000;
    v217[0] = 0;
    v217[1] = 0xE000000000000000;
    v133 = v105;
    v134 = v103;
    v135 = v97;
    v136 = sub_257ED0130();
    if (v137)
    {
      v138 = v136;
    }

    else
    {
      v138 = 0;
    }

    if (v137)
    {
      v132 = v137;
    }

    v102(v131, v133);
    MEMORY[0x259C72150](v138, v132);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    MEMORY[0x259C72150](0xD000000000000012, 0x8000000257F00460);
    v139 = v208;
    if (v208[2])
    {
      MEMORY[0x259C72150](0x656D686361747441, 0xEC0000003D73746ELL);
      v140 = v139[2];
      if (v140)
      {
        v206 = *(v198 + 16);
        v141 = v139 + ((*(v198 + 80) + 32) & ~*(v198 + 80));
        v203 = *(v198 + 72);
        v207 = v198 + 16;
        v142 = (v198 + 8);
        v202 = v102;
        v143 = v197;
        v205 = v134;
        v201 = v135;
        v144 = v170;
        v145 = v169;
        do
        {
          v206(v145, v141, v143);
          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          v146 = sub_257ECCB50();
          v148 = v147;
          (*v142)(v145, v143);
          sub_257ECC780();
          sub_257ECC7B0();
          v217[0] = v146;
          v217[1] = v148;
          v149 = sub_257ED0130();
          v151 = v150;

          if (v151)
          {
            v152 = v149;
          }

          else
          {
            v152 = 0;
          }

          if (!v151)
          {
            v151 = 0xE000000000000000;
          }

          (v202)(v144, v204);
          MEMORY[0x259C72150](v152, v151);

          MEMORY[0x259C72150](44, 0xE100000000000000);
          MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

          v141 = &v203[v141];
          --v140;
        }

        while (v140);
      }
    }

    sub_257D2168C(v153);

    v154 = v187;
    sub_257ECCB60();

    v155 = v197;
    if ((v196)(v154, 1, v197) == 1)
    {
      sub_257BE4084(v154, &qword_27F8F5F30);
    }

    else
    {
      v156 = v198;
      v157 = *(v198 + 32);
      v158 = v173;
      v157(v173, v154, v155);
      sub_257BD2C2C(0, &qword_281543F10);
      v208 = sub_257ECFD30();
      v159 = v172;
      (*(v156 + 16))(v172, v158, v155);
      v160 = (*(v156 + 80) + 16) & ~*(v156 + 80);
      v161 = (v171 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
      v162 = swift_allocObject();
      v157((v162 + v160), v159, v155);
      v163 = (v162 + v161);
      *v163 = 0;
      v163[1] = 0;
      v215 = sub_257D223A8;
      v216 = v162;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v214 = sub_257D231C0;
      *(&v214 + 1) = &block_descriptor_54;
      v164 = _Block_copy(&aBlock);

      v165 = v174;
      sub_257ECF150();
      *&aBlock = MEMORY[0x277D84F90];
      sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
      sub_257C31C28(&qword_281543FB0, &unk_27F8F5480);
      v166 = v176;
      v167 = v179;
      sub_257ED0180();
      v168 = v208;
      MEMORY[0x259C72880](0, v165, v166, v164);

      _Block_release(v164);

      (*(v178 + 8))(v166, v167);
      (*(v175 + 8))(v165, v177);
      (*(v156 + 8))(v158, v155);
    }

    (*(v190 + 8))(v193, v191);
  }
}

uint64_t sub_257D20560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v6 = sub_257ECCB70();
  v61 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  v20 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v21 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];

  v22 = UIImageJPEGRepresentation(v21, 1.0);
  if (v22 || (v22 = UIImagePNGRepresentation(v21)) != 0)
  {
    v60 = v6;
    v23 = a2;
    v57 = v8;
    v58 = v19;
    v24 = a3;
    v25 = v22;
    v26 = sub_257ECCBA0();
    v28 = v27;

    v29 = [objc_opt_self() defaultManager];
    v62[0] = 0;
    v30 = [v29 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:0 error:v62];

    v31 = v62[0];
    if (v30)
    {
      v32 = v30;
      v53 = v26;
      v54 = v28;
      v56 = v24;
      v33 = objc_allocWithZone(MEMORY[0x277CCA968]);
      v34 = v31;
      v35 = [v33 init];
      v36 = sub_257ECF4C0();
      [v35 setDateFormat_];

      v37 = [v35 stringFromDate_];
      if (!v37)
      {
        sub_257ECF500();
        v37 = sub_257ECF4C0();
      }

      v38 = [v30 URLByAppendingPathComponent_];

      v40 = v58;
      v39 = v59;
      v55 = v21;
      if (v38)
      {
        sub_257ECCB20();

        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

      v45 = v60;
      v46 = *(v61 + 56);
      v46(v14, v41, 1, v60);
      sub_257D22FD0(v14, v17);
      v47 = *(v61 + 48);
      if (v47(v17, 1, v45) == 1)
      {
        sub_257BE4084(v17, &qword_27F8F5F30);
        v48 = 1;
      }

      else
      {
        sub_257ECCB10();
        (*(v61 + 8))(v17, v45);
        v48 = 0;
      }

      v46(v40, v48, 1, v45);
      sub_257BE401C(v40, v39, &qword_27F8F5F30);
      if (v47(v39, 1, v45) == 1)
      {
        sub_257BE4084(v40, &qword_27F8F5F30);

        sub_257BF2550(v53, v54);
        sub_257BE4084(v39, &qword_27F8F5F30);
        return (v46)(v56, 1, 1, v45);
      }

      else
      {
        v49 = v57;
        (*(v61 + 32))(v57, v39, v45);
        v51 = v53;
        v50 = v54;
        sub_257ECCBB0();
        (*(v61 + 8))(v49, v45);

        sub_257BF2550(v51, v50);
        return sub_257D22FD0(v40, v56);
      }
    }

    else
    {
      v42 = v62[0];
      v43 = sub_257ECC9F0();

      swift_willThrow();
      sub_257BF2550(v26, v28);

      return (*(v61 + 56))(v24, 1, 1, v60);
    }
  }

  else
  {

    v52 = *(v61 + 56);

    return v52(a3, 1, 1, v6);
  }
}

Swift::Void __swiftcall MAGARService.restartReplay()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - v5;
  v7 = sub_257ECCB70();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277CE53B0]) init];
  [v14 setAllowCameraInMultipleForegroundAppLayout_];
  v15 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
  swift_beginAccess();
  *(v0 + v15) = 0;
  sub_257BD2C2C(0, &qword_27F8F8060);
  if ([swift_getObjCClassFromMetadata() supportsFrameSemantics_])
  {
    [v14 setFrameSemantics_];
    [v14 setFrameDebugOptions_];
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionReplayFile);
  v17 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
  swift_beginAccess();
  sub_257BE401C(v16 + v17, v6, &qword_27F8F5F30);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_257BE4084(v6, &qword_27F8F5F30);
  }

  else
  {
    v30 = v4;
    v31 = v0;
    (*(v8 + 32))(v13, v6, v7);
    v18 = *(v8 + 16);
    v18(v11, v13, v7);
    v19 = objc_allocWithZone(MEMORY[0x277CE5360]);
    sub_257ECC3F0();
    v20 = sub_257D22438(v14, v11, 0);
    if (v20)
    {
      v21 = v20;
      v22 = v31;
      [v20 setDelegate_];
      v23 = *(v22 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arReplayConfiguration);
      *(v22 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arReplayConfiguration) = v21;
      v24 = v21;

      v25 = v30;
      v18(v30, v13, v7);
      (*(v8 + 56))(v25, 0, 1, v7);
      v26 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastRecordingURL;
      swift_beginAccess();
      sub_257CB4B80(v25, v22 + v26);
      swift_endAccess();
      v27 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
      swift_beginAccess();
      [*(v22 + v27) pause];
      v28 = *(v22 + v27);
      if (v28)
      {
        [v28 runWithConfiguration:v24 options:1];
        v29 = v14;
      }

      else
      {
        v29 = v24;
        v24 = v14;
      }

      (*(v8 + 8))(v13, v7);
    }

    else
    {
      (*(v8 + 8))(v13, v7);
    }
  }
}

uint64_t MAGARService.replayConfigurationDidFinishReplaying(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  result = swift_beginAccess();
  if (byte_27F8F87B0 == 1)
  {
    byte_27F8F87B0 = 0;
  }

  else
  {
    v5 = sub_257ECF930();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v0;
    v7 = v0;
    sub_257E81524(0, 0, v3, &unk_257EE3B88, v6);
  }

  return result;
}

uint64_t sub_257D21288()
{
  *(v0 + 16) = xmmword_257EDE770;
  *(v0 + 32) = 5;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257D1B6C4;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

void sub_257D21484()
{
  v1 = [objc_opt_self() sharedRecorder];
  v3[4] = sub_257D1E2FC;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_257D231E8;
  v3[3] = &block_descriptor_109;
  v2 = _Block_copy(v3);
  [v1 startRecordingWithHandler_];
  _Block_release(v2);

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arIsRecording) = 1;
}

uint64_t sub_257D21588(char *a1)
{
  sub_257D71A44(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D21618()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D2168C(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_257ECF600();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t sub_257D216FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257D1C570(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_257D217C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257D1C8E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_257D2188C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257D1CB34(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_257D21954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257D1CEF8(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257D21A6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257D1D1FC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_257D21B34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D1D348(a1, v4, v5, v6);
}

uint64_t sub_257D21BE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D1D8BC(a1, v4, v5, v6);
}

id sub_257D21CB8(int a1, char a2, int a3)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CE53B0]) init];
  sub_257BD2C2C(0, &qword_27F8F8060);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [ObjCClassFromMetadata supportedVideoFormats];
  sub_257BD2C2C(0, &qword_27F8F8168);
  v11 = sub_257ECF810();

  if (v11 >> 62)
  {
    v12 = sub_257ED0210();
    LODWORD(v39) = a1;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_17:

    goto LABEL_18;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  LODWORD(v39) = a1;
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
LABEL_42:
    v33 = swift_once();
    goto LABEL_33;
  }

  HIDWORD(v39) = a3;
  v40 = a2;
  v13 = 0;
  v14 = 0;
  v15 = 8294401.0;
  v16 = 30;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x259C72E20](v14, v11);
    }

    else
    {
      v17 = *(v11 + 8 * v14 + 32);
    }

    v18 = v17;
    [v17 imageResolution];
    if (v19 * v20 < v15 && [v18 framesPerSecond] == v16)
    {

      v21 = v18;
      [v21 imageResolution];
      v15 = v22 * v23;
      v16 = [v21 framesPerSecond];
      v13 = v18;
    }

    ++v14;
  }

  while (v12 != v14);

  if (v13)
  {
    v12 = v13;
    [v8 setVideoFormat_];
    v24 = [v12 device];
    v41[0] = 0;
    sub_257D15BB4();
    [v24 setMaxAvailableVideoZoomFactorOverride_];
  }

  else
  {
    v12 = 0;
  }

  a2 = v40;
  LOBYTE(a3) = BYTE4(v39);
LABEL_18:
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v26 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v4 = &selRef_imageByApplyingSymbolConfiguration_;
  if (v41[0] & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , v41[0] == 1) && (v42 = &type metadata for MFFeatureFlags, v43 = sub_257C73100(), v41[0] = 0, v27 = sub_257ECCF60(), __swift_destroy_boxed_opaque_existential_0(v41), (v27) || (v39)
  {
    [v8 setPlaneDetection_];
    if ([ObjCClassFromMetadata supportsFrameSemantics_])
    {
      v28 = v8;
      [v28 setFrameSemantics_];
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v41[0] & 1) != 0 || (a3) && [objc_opt_self() supportsSceneReconstruction_])
  {
    [v8 setSceneReconstruction_];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v41[0])
  {
    goto LABEL_35;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v41[0] != 1)
  {
    goto LABEL_34;
  }

  v3 = ObjCClassFromMetadata;
  ObjCClassFromMetadata = v8;
  v29 = v26 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
  swift_beginAccess();
  v30 = *(v29 + 8);
  v31 = *(v29 + 16);
  v44 = *v29;
  v45 = v30;
  v46 = v31;
  v32 = qword_2815447E0;

  if (v32 != -1)
  {
    goto LABEL_42;
  }

LABEL_33:
  MEMORY[0x28223BE20](v33);
  sub_257ECFD50();

  v8 = ObjCClassFromMetadata;
  ObjCClassFromMetadata = v3;
  if ((v47 & 1) == 0)
  {
LABEL_34:
    if ((a2 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_35:
  if ([ObjCClassFromMetadata v4[237]])
  {
    v34 = v8;
    v35 = [v34 frameSemantics];
    if ((~v35 & 3) != 0)
    {
      v36 = v35 | 3;
    }

    else
    {
      v36 = v35;
    }

    [v34 setFrameSemantics_];
  }

LABEL_40:
  v37 = v8;
  [v37 setAllowCameraInMultipleForegroundAppLayout_];

  return v37;
}

void sub_257D223A8()
{
  v1 = *(sub_257ECCB70() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_257EB6080(v0 + v2, v4, v5);
}

id sub_257D22438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = sub_257ECCAE0();
  v17[0] = 0;
  v9 = [v4 initWithBaseConfiguration:a1 fileURL:v8 replayMode:a3 outError:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_257ECCB70();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a2, v11);
  }

  else
  {
    v14 = v17[0];
    sub_257ECC9F0();

    swift_willThrow();
    v15 = sub_257ECCB70();
    (*(*(v15 - 8) + 8))(a2, v15);
  }

  return v9;
}

void sub_257D22594(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  sub_257BD2C2C(0, &qword_27F8F8060);
  v6 = [swift_getObjCClassFromMetadata() configurableCaptureDeviceForPrimaryCamera];
  if (v6)
  {
    v7 = v6;
    v21[0] = 0;
    if ([v6 lockForConfiguration_])
    {
      v8 = v21[0];
      [v7 setFocusMode_];
      [v7 unlockForConfiguration];
    }

    else
    {
      v9 = v21[0];
      v10 = sub_257ECC9F0();

      swift_willThrow();
      sub_257ECD440();
      v11 = v10;
      v12 = sub_257ECDA20();
      v13 = sub_257ECFBD0();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v20 = v3;
        v15 = v14;
        v16 = swift_slowAlloc();
        v21[0] = v16;
        *v15 = 136315138;
        swift_getErrorValue();
        v17 = sub_257ED0720();
        v19 = sub_257BF1FC8(v17, v18, v21);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_257BAC000, v12, v13, "Cannot change ARKit focus mode: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x259C74820](v16, -1, -1);
        MEMORY[0x259C74820](v15, -1, -1);

        (*(v20 + 8))(v5, v2);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }
    }
  }
}

uint64_t sub_257D22870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D21268(a1, v4, v5, v6);
}

id keypath_get_59Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void sub_257D22990()
{
  sub_257D22EF4();
  if (v0 <= 0x3F)
  {
    sub_257C6A75C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MAGARService.session(_:didUpdate:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x210))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x218))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x228))();
}

void sub_257D22EF4()
{
  if (!qword_281545C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5F30);
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_281545C40);
    }
  }
}

uint64_t sub_257D22FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257D23040(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257D1C164(a1, v4, v5, v6);
}

uint64_t sub_257D230F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D1B5EC(a1, v4, v5, v6);
}

void sub_257D231EC()
{
  if (AXDeviceSupportsBackTap())
  {
    v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_backTapEventProcessor;
    v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_backTapEventProcessor);
    if (v2)
    {
      [v2 setHIDEventFilterMask_];
      v3 = *(v0 + v1);
      if (v3)
      {
        v4 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10[4] = sub_257D2382C;
        v10[5] = v4;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 1107296256;
        v10[2] = sub_257D23834;
        v10[3] = &block_descriptor_29;
        v5 = _Block_copy(v10);
        v6 = v3;

        [v6 setHIDEventHandler_];
        _Block_release(v5);

        v7 = *(v0 + v1);
        if (v7)
        {
          v8 = v7;
          v9 = sub_257ECF4C0();
          [v8 beginHandlingHIDEventsForReason_];
        }
      }
    }
  }
}

uint64_t sub_257D2335C(void *a1)
{
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v5);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v7 = qword_281548348;
  v8 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__backTapEnabled;
  swift_beginAccess();
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v37[0] = *v8;
  v37[1] = v9;
  v38 = v10;
  v11 = qword_2815447E0;

  if (v11 != -1)
  {
    v12 = swift_once();
  }

  MEMORY[0x28223BE20](v12);
  *(&v32 - 2) = v37;
  sub_257ECFD50();

  result = 0;
  if (v39 == 1)
  {
    if (a1)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v14 = *(result + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
        v15 = result;
        v16 = v14;
        v17 = a1;

        if (v14)
        {
          v18 = [v16 accessibilityElements];

          if (v18)
          {
            v19 = sub_257ECF810();

            v20 = [v17 accessibilityData];
            if (v20)
            {
              v21 = v20;
              if ([v20 page] == 1 && objc_msgSend(v21, sel_usage) == 1 && *(v19 + 16))
              {
                v22 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
                v23 = *(v19 + 16);
                if (v23)
                {
                  v33 = v17;
                  v34 = v21;
                  v32 = v19;
                  v24 = v19 + 32;
                  do
                  {
                    sub_257BE41F4(v24, v37);
                    sub_257D238A8();
                    swift_dynamicCast();
                    v25 = v36;
                    v26 = [v36 accessibilityAttributedLabel];
                    if (v26)
                    {
                      v27 = v26;
                      [v22 appendAttributedString_];
                    }

                    v24 += 32;
                    --v23;
                  }

                  while (v23);

                  v17 = v33;
                  v21 = v34;
                }

                else
                {
                }

                swift_beginAccess();
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v29 = Strong;
                  sub_257ECC3F0();

                  *v4 = v22;
                  swift_storeEnumTagMultiPayload();
                  v30 = v22;
                  v31 = v35;
                  sub_257ECCCE0();
                  sub_257C15EC0(v4, v31 + v5[5]);
                  *(v31 + v5[6]) = 1;
                  *(v31 + v5[7]) = 0;
                  sub_257ECC3F0();
                  sub_257C15F24(v4, type metadata accessor for MAGOutputEvent.EventType);
                  *(v31 + v5[8]) = v7;
                  sub_257CBBC80(v31);

                  sub_257C15F24(v31, type metadata accessor for MAGOutputEvent);
                }

                else
                {
                }

                return 1;
              }
            }
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_257D23834(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v4 = a2;
  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257D238A8()
{
  result = qword_27F8F82A0;
  if (!qword_27F8F82A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F82A0);
  }

  return result;
}

uint64_t sub_257D238F4()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257D23B04(unsigned __int8 a1)
{
  if (a1 - 2 < 2)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  return v7;
}

uint64_t sub_257D23C28()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

id sub_257D23D6C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v44.receiver = v1;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, sel_viewDidLoad);
  v13 = *&v1[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_tableView];
  [v13 setDataSource_];
  [v13 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = sub_257ECF4C0();
  [v13 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v15];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v17 = result;
  v36 = v6;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v18 = result;
  v33 = v12;
  v35 = v9;
  sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  v19 = *&v1[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_colorPickerController];
  [v19 setSupportsAlpha_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v34 = v10;
  v20 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
  swift_beginAccess();
  v21 = *(v20 + 8);
  v22 = *(v20 + 32);
  v23 = *(v20 + 16);
  v38[0] = *v20;
  v38[1] = v21;
  v39 = v23;
  v40 = v22;
  v24 = qword_2815447E0;

  if (v24 != -1)
  {
    v25 = swift_once();
  }

  MEMORY[0x28223BE20](v25);
  *(&v33 - 2) = v38;
  sub_257ECFD50();

  v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v41 green:v42 blue:v43 alpha:1.0];
  [v19 setSelectedColor_];

  [v19 setDelegate_];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  v27 = [objc_opt_self() mainRunLoop];
  v38[0] = v27;
  v28 = sub_257ED0080();
  (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257BD2C74();
  v29 = v33;
  v30 = v36;
  sub_257ECDDF0();
  sub_257BE4084(v5, &unk_27F8F4DB0);

  (*(v37 + 8))(v8, v30);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v31 = v35;
  v32 = sub_257ECDE50();

  (*(v34 + 8))(v29, v31);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_speechFeedbackSubscription] = v32;
}

void sub_257D24424()
{
  v0 = sub_257ECCEB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v9[7] == 1)
    {
      [v5 beginUpdates];
      MEMORY[0x259C6F970](1, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
      v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_257ED6D30;
      (*(v1 + 16))(v7 + v6, v3, v0);
      v8 = sub_257ECF7F0();

      [v5 reloadRowsAtIndexPaths:v8 withRowAnimation:100];

      [v5 endUpdates];
      (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }
}

void sub_257D246B8(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257D24874(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v10 = byte_286905758[v6 + 32];
    if (v10 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v24 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF29A4(0, *(v7 + 16) + 1, 1);
        v7 = v24;
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257BF29A4((v8 > 1), v9 + 1, 1);
        v7 = v24;
      }

      *(v7 + 16) = v9 + 1;
      *(v7 + v9 + 32) = v10;
    }

    ++v6;
  }

  while (v6 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_availablePointSpeakFeedbacks] = v7;
  v11 = OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_tableView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemYellowColor];
  [v14 setTintColor_];

  [v14 setClipsToBounds_];
  *&v4[v11] = v14;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_speechFeedbackSubscription] = 0;
  v16 = OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_colorPickerController;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  if (a2)
  {
    v17 = sub_257ECF4C0();
  }

  else
  {
    v17 = 0;
  }

  v23.receiver = v4;
  v23.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, v17, a3, a1);

  return v18;
}

id sub_257D24B44(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v8 = byte_286905780[v4 + 32];
    if (v8 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v19 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF29A4(0, *(v5 + 16) + 1, 1);
        v5 = v19;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_257BF29A4((v6 > 1), v7 + 1, 1);
        v5 = v19;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_availablePointSpeakFeedbacks] = v5;
  v9 = OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_tableView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemYellowColor];
  [v12 setTintColor_];

  [v12 setClipsToBounds_];
  *&v2[v9] = v12;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_speechFeedbackSubscription] = 0;
  v14 = OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_colorPickerController;
  *&v2[v14] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);

  if (v15)
  {
  }

  return v15;
}

id sub_257D24EA4(void *a1)
{
  v2 = v1;
  v4 = sub_257ECF4C0();
  v5 = sub_257ECCE30();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  v7 = sub_257ECCEA0();
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v52 = [v6 textLabel];
      if (v52)
      {
        v53 = v52;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v55 = [objc_opt_self() bundleForClass_];
        v56 = sub_257ECF4C0();
        v57 = sub_257ECF4C0();
        v58 = [v55 localizedStringForKey:v56 value:0 table:v57];

        if (!v58)
        {
          sub_257ECF500();
          v58 = sub_257ECF4C0();
        }

        [v53 setText_];
      }

      v59 = [v6 textLabel];
      if (v59)
      {
        v60 = v59;
        [v59 setNumberOfLines_];
      }

      v61 = [v6 textLabel];
      if (v61)
      {
        v62 = v61;
        [v61 setLineBreakMode_];
      }

      v43 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 == -1)
      {
        goto LABEL_41;
      }

      goto LABEL_89;
    }

    if (v7 != 3)
    {
      return v6;
    }

    if (!sub_257ECCE60())
    {
      v66 = [v6 textLabel];
      if (v66)
      {
        v67 = v66;
        type metadata accessor for MAGUtilities();
        v68 = swift_getObjCClassFromMetadata();
        v69 = [objc_opt_self() bundleForClass_];
        v70 = sub_257ECF4C0();
        v71 = sub_257ECF4C0();
        v72 = [v69 localizedStringForKey:v70 value:0 table:v71];

        if (!v72)
        {
          sub_257ECF500();
          v72 = sub_257ECF4C0();
        }

        [v67 setText_];
      }

      v43 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v73 = qword_2815447E0;

      if (v73 != -1)
      {
        v74 = swift_once();
      }

      MEMORY[0x28223BE20](v74);
      sub_257ECFD50();

      [v43 setOn_];
      v65 = sel_didToggleOutlineSwitch_;
      goto LABEL_53;
    }

    type metadata accessor for MAGUtilities();
    v10 = swift_getObjCClassFromMetadata();
    v130 = objc_opt_self();
    v131 = v10;
    v11 = [v130 bundleForClass_];
    v12 = sub_257ECF4C0();
    v13 = sub_257ECF4C0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    v15 = v14;
    v16 = v14;
    if (!v14)
    {
      sub_257ECF500();
      v16 = sub_257ECF4C0();

      sub_257ECF500();
      v15 = sub_257ECF4C0();
    }

    v17 = v14;
    v18 = [v6 textLabel];
    if (v18)
    {
      v19 = v18;
      [v18 setText_];
    }

    v20 = [v6 textLabel];
    if (v20)
    {
      v21 = v20;
      [v20 setNumberOfLines_];
    }

    v22 = [v6 textLabel];
    if (v22)
    {
      v23 = v22;
      [v22 setLineBreakMode_];
    }

    [v6 setAccessoryType_];
    [v6 setShowsReorderControl_];
    v24 = objc_opt_self();
    v25 = *MEMORY[0x277D76918];
    v26 = [v24 preferredFontForTextStyle_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F82F0);
    inited = swift_initStackObject();
    v28 = MEMORY[0x277D740A8];
    *(inited + 16) = xmmword_257ED6D30;
    v29 = *v28;
    *(inited + 32) = v29;
    *(inited + 40) = v26;
    v30 = v29;
    v129 = v26;
    v31 = sub_257BE8D30(inited);
    swift_setDeallocating();
    sub_257BE4084(inited + 32, &unk_27F8F58D0);
    sub_257DF2814(v31);

    _s3__C3KeyVMa_0(0);
    sub_257BFB0F4(&qword_27F8F8300, _s3__C3KeyVMa_0);
    v32 = sub_257ECF3C0();

    [v15 sizeWithAttributes_];

    v33 = [v24 preferredFontForTextStyle_];
    [v33 lineHeight];
    v35 = v34;

    v36 = sub_257ECF4C0();
    v37 = objc_opt_self();
    v38 = [v37 systemImageNamed_];

    if (v38)
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v39 = qword_2815447E0;

      if (v39 != -1)
      {
        v40 = swift_once();
      }

      MEMORY[0x28223BE20](v40);
      sub_257ECFD50();

      v41 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v135 green:v136 blue:v137 alpha:1.0];
      v42 = [v38 imageWithTintColor_];
    }

    else
    {
      v42 = 0;
    }

    v81 = sub_257ECF4C0();
    v82 = [v37 systemImageNamed_];

    v83 = 0.0;
    if (v82)
    {
      v84 = [objc_opt_self() systemGrayColor];
      v85 = [v82 imageWithTintColor_];

      v86 = [v24 preferredFontForTextStyle_];
      v87 = [objc_opt_self() configurationWithFont_];

      v88 = [v85 imageWithSymbolConfiguration_];
      if (v88)
      {
        [v88 size];
        v83 = v89;
      }
    }

    else
    {
      v88 = 0;
    }

    v138.width = v35 + v83 + 5.0;
    v138.height = v35;
    UIGraphicsBeginImageContextWithOptions(v138, 0, 0.0);
    v90 = [objc_opt_self() sharedApplication];
    v91 = [v90 userInterfaceLayoutDirection];

    if (!v91)
    {
      if (v42)
      {
        [v42 drawInRect_];
      }

      if (!v88)
      {
        goto LABEL_82;
      }

      v101 = v35 + 5.0;
      v99 = v88;
      [v99 size];
      v97 = (v35 - v102) * 0.5;
      [v99 size];
      v35 = v103;
      [v99 size];
      v105 = v104;
      goto LABEL_81;
    }

    if (v88)
    {
      v92 = v88;
      [v92 size];
      v94 = (v35 - v93) * 0.5;
      [v92 size];
      v96 = v95;
      [v92 size];
      v97 = 0.0;
      [v92 drawInRect_];

      if (v42)
      {
        v99 = v42;
        [v92 size];
        v101 = v100 + 5.0;
LABEL_80:
        v105 = v35;
LABEL_81:
        [v99 drawInRect_];
      }
    }

    else if (v42)
    {
      v99 = v42;
      v97 = 0.0;
      v101 = 5.0;
      goto LABEL_80;
    }

LABEL_82:
    v127 = v88;
    v128 = v42;
    v106 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v107 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    [v6 setAccessoryView_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_257ED9BD0;
    v109 = [v130 bundleForClass_];
    v110 = sub_257ECF4C0();
    v111 = sub_257ECF4C0();
    v112 = [v109 localizedStringForKey:v110 value:0 table:v111];

    v113 = sub_257ECF500();
    v115 = v114;

    v116 = MEMORY[0x277D837D0];
    *(v108 + 56) = MEMORY[0x277D837D0];
    v117 = sub_257BFB13C();
    *(v108 + 64) = v117;
    *(v108 + 32) = v113;
    *(v108 + 40) = v115;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v118 = qword_2815447E0;

    if (v118 != -1)
    {
      v119 = swift_once();
    }

    MEMORY[0x28223BE20](v119);
    sub_257ECFD50();

    v120 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*&v132 green:v133 blue:v134 alpha:1.0];
    v121 = [v120 _accessibilityNameWithLuma];

    v122 = sub_257ECF500();
    v124 = v123;

    *(v108 + 96) = v116;
    *(v108 + 104) = v117;
    *(v108 + 72) = v122;
    *(v108 + 80) = v124;
    sub_257ECF540();
    v125 = sub_257ECF4C0();

    [v6 setAccessibilityLabel_];

    return v6;
  }

  if (!v7)
  {
    v43 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_availablePointSpeakFeedbacks);
    v44 = sub_257ECCE60();
    if ((v44 & 0x8000000000000000) == 0)
    {
      if (v44 >= v43[2])
      {
        __break(1u);
      }

      else
      {
        v43 = *(v43 + v44 + 32);
        v45 = [v6 textLabel];
        if (v45)
        {
          v46 = v45;
          sub_257D238F4();
          v47 = sub_257ECF4C0();

          [v46 setText_];
        }

        v5 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
        if (qword_281544FE0 == -1)
        {
          goto LABEL_29;
        }
      }

      swift_once();
LABEL_29:
      swift_beginAccess();
      v48 = qword_2815447E0;

      if (v48 != -1)
      {
        v49 = swift_once();
      }

      MEMORY[0x28223BE20](v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
      sub_257ECFD50();

      v50 = sub_257C592D0(v43, v132);

      [v5 setOn_];
      v51 = v5;
      [v51 setTag_];
      [v51 addTarget:v2 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
      [v6 setAccessoryView_];

      [v6 setAccessoryType_];
      return v6;
    }

    __break(1u);
LABEL_89:
    swift_once();
LABEL_41:
    swift_beginAccess();
    v63 = qword_2815447E0;

    if (v63 != -1)
    {
      v64 = swift_once();
    }

    MEMORY[0x28223BE20](v64);
    sub_257ECFD50();

    [v43 setOn_];
    v65 = sel_didToggleFlashlightSwitch_;
LABEL_53:
    [v43 addTarget:v2 action:v65 forControlEvents:4096];
    [v6 setAccessoryView_];
    [v6 setAccessoryType_];

    return v6;
  }

  if (v7 == 1)
  {
    v8 = sub_257ECCE60();
    if (v8)
    {
      if (v8 != 1)
      {
        return v6;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v75 = [v6 textLabel];
    if (v75)
    {
      v76 = v75;
      sub_257CED550();
      v77 = sub_257ECF4C0();

      [v76 setText_];
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v78 = qword_2815447E0;

    if (v78 != -1)
    {
      v79 = swift_once();
    }

    MEMORY[0x28223BE20](v79);
    sub_257ECFD50();

    if ((v9 ^ v132))
    {
      v80 = 0;
    }

    else
    {
      v80 = 3;
    }

    [v6 setAccessoryType_];
    [v6 setAccessoryView_];
  }

  return v6;
}

id sub_257D26690(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257D27C4C(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_257D267D8(void *a1)
{
  v3 = sub_257ECCDF0();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECCEB0();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECF120();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECCE30();
  v34 = [a1 cellForRowAtIndexPath_];

  if (!v34)
  {
    return;
  }

  v14 = sub_257ECCEA0();
  if (v14 <= 1)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        v15 = sub_257ECCE30();
        [a1 deselectRowAtIndexPath:v15 animated:1];

        v16 = sub_257ECCE60();
        if (v16)
        {
          if (v16 != 1)
          {
LABEL_23:
            v22 = (v31 + 8);
            MEMORY[0x259C6F970](byte_2869057C8, 1);
            v23 = sub_257ECCE30();
            v24 = [a1 cellForRowAtIndexPath_];

            if (v24)
            {
              [v24 setAccessoryType_];
            }

            v25 = *v22;
            (*v22)(v8, v6);
            MEMORY[0x259C6F970](byte_2869057C9, 1);
            v26 = sub_257ECCE30();
            v27 = [a1 cellForRowAtIndexPath_];

            if (v27)
            {
              [v27 setAccessoryType_];
            }

            v25(v8, v6);
            [v34 setAccessoryType_];
            [a1 beginUpdates];
            v36 = &unk_2869057D0;
            sub_257BFB0F4(&qword_27F8F58A0, MEMORY[0x277CC9A28]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80);
            sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80);
            v28 = v33;
            sub_257ED0180();
            v29 = sub_257ECCDE0();
            (*(v32 + 8))(v5, v28);
            [a1 reloadSections:v29 withRowAnimation:100];

            [a1 endUpdates];
            return;
          }

          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v20 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFingerLocation;
        swift_beginAccess();
        v35 = v17;
        if (qword_2815447E0 != -1)
        {
          swift_once();
        }

        v21 = sub_257ECF110();
        MEMORY[0x28223BE20](v21);
        *(&v30 - 2) = &v35;
        *(&v30 - 1) = v20;
        sub_257ECFD40();
        (*(v10 + 8))(v12, v9);
        swift_endAccess();
        goto LABEL_23;
      }

      goto LABEL_12;
    }

LABEL_13:
    v33 = sub_257ECCE30();
    [a1 deselectRowAtIndexPath:v33 animated:1];

    v19 = v33;
    goto LABEL_14;
  }

  if (v14 == 2)
  {
    goto LABEL_13;
  }

  if (v14 == 3)
  {
    v18 = sub_257ECCE30();
    [a1 deselectRowAtIndexPath:v18 animated:1];

    if (sub_257ECCE60())
    {
      [v1 presentViewController:*&v1[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_colorPickerController] animated:1 completion:0];
    }
  }

LABEL_12:
  v19 = v34;
LABEL_14:
}

uint64_t sub_257D26F08(void *a1)
{
  v3 = v1;
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 selectedColor];
  v10 = [v9 CGColor];

  v11 = sub_257ECFB30();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_2869057F8;
  }

  if (qword_281544FE0 == -1)
  {
    v13 = v12[2];
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v12;
  swift_once();
  v12 = v11;
  v13 = v11[2];
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (v13 == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 >= 3)
  {
    v11 = qword_281548348;
    v14 = v12[4];
    v15 = v12[5];
    v16 = v12[6];

    v2 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
    swift_beginAccess();
    v52[0] = v14;
    v52[1] = v15;
    v52[2] = v16;
    if (qword_2815447E0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_9:
  v17 = sub_257ECF110();
  MEMORY[0x28223BE20](v17);
  *(&v43 - 2) = v52;
  *(&v43 - 1) = v2;
  sub_257ECFD40();
  (*(v6 + 8))(v8, v5);
  swift_endAccess();
  v18 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_tableView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
  sub_257ECCEB0();
  *(swift_allocObject() + 16) = xmmword_257ED6D30;
  MEMORY[0x259C6F990](1, 3);
  v19 = sub_257ECF7F0();

  [v18 reloadRowsAtIndexPaths:v19 withRowAnimation:5];

  v20 = swift_beginAccess();
  v21 = v11[16];
  v22 = v11[17];
  v23 = v11[18];
  v43 = v11[15];
  v44 = v21;
  *&v45 = v22;
  *(&v45 + 1) = v23;
  MEMORY[0x28223BE20](v20);
  *(&v43 - 2) = &v43;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v25 = v51;
  if (!v51)
  {
    return result;
  }

  v26 = v50;
  v27 = swift_beginAccess();
  v28 = v11[12];
  v29 = v11[13];
  v43 = v11[11];
  v44 = v28;
  *&v45 = v29;
  MEMORY[0x28223BE20](v27);
  *(&v43 - 2) = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v31 = v47;
  if (!*(*&v47 + 16))
  {
  }

  v32 = sub_257C03F6C(v26, v25);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
  }

  v35 = (*(*&v31 + 56) + 296 * v32);
  v37 = v35[27];
  v36 = v35[28];
  v38 = v35[29];

  v40 = *(v2 + 1);
  v41 = *(v2 + 4);
  v42 = *(v2 + 1);
  v43 = *v2;
  v44 = v40;
  v45 = v42;
  v46 = v41;
  MEMORY[0x28223BE20](v39);
  *(&v43 - 2) = &v43;

  sub_257ECFD50();

  if (v37 != v47 || v36 != v48 || v38 != v49)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v43) = 1;
    sub_257ECC3F0();
    return sub_257ECDD70();
  }

  return result;
}