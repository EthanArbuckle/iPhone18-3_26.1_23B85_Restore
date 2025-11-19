uint64_t sub_1CFC6218C()
{
  v1 = v0[3];
  v2 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider];
  if (v2)
  {
    v3 = v0[9];
    v4 = v2;

    v0[14] = v4;
    v5 = v0[7];
    v6 = v0[8];

    return MEMORY[0x1EEE6DFA0](sub_1CFC62510, v5, v6);
  }

  else
  {
    v7 = v0[4];
    v8 = sub_1CFC9F998();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v10 = v1;
    v11 = sub_1CFC57758(0, 0, v7, &unk_1CFCA7BC8, v9);
    v0[12] = v11;
    sub_1CFBC2FB0(v7, &qword_1EC4ED950, &qword_1CFCA2710);
    v12 = *(MEMORY[0x1E69E86C0] + 4);
    v13 = swift_task_alloc();
    v0[13] = v13;
    v14 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v13 = v0;
    v13[1] = sub_1CFC62360;

    return MEMORY[0x1EEE6DA40](v0 + 2, v11, v14);
  }
}

uint64_t sub_1CFC62360()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1CFC624A4, v5, v4);
}

uint64_t sub_1CFC624A4()
{
  v1 = v0[9];

  v0[14] = v0[2];
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1CFC62510, v2, v3);
}

uint64_t sub_1CFC62510()
{
  v1 = v0[14];
  v2 = v0[6];

  [v1 setFilterAsNewCallersEnabledForPhone_];

  v3 = v0[3];
  v4 = [objc_opt_self() defaultCenter];
  v5 = sub_1CFC9F728();
  [v4 postNotificationName:v5 object:0];

  v6 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController;
  v7 = *(v3 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController);
  if (v7)
  {
    [v7 dismissViewControllerAnimated:1 completion:0];
    v8 = *(v3 + v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[4];
  *(v3 + v6) = 0;

  v10 = v0[1];

  return v10();
}

Swift::Void __swiftcall RecentsViewController.presentAccountProvisioning()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v2, &v6, &qword_1EC4EE538, qword_1CFCA9BD0);
  if (v7)
  {
    sub_1CFBAD070(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 40))(v3, v4);
    [v1 presentViewController:v5 animated:1 completion:0];

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_1CFBC2FB0(&v6, &qword_1EC4EE538, qword_1CFCA9BD0);
  }
}

uint64_t sub_1CFC62964(uint64_t a1)
{
  v1[9] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = sub_1CFC9F968();
  v1[12] = sub_1CFC9F958();
  sub_1CFC9C1D8();
  v3 = *(MEMORY[0x1E69D88F8] + 4);
  v4 = swift_task_alloc();
  v1[13] = v4;
  *v4 = v1;
  v4[1] = sub_1CFC62A54;

  return MEMORY[0x1EEE48730]();
}

uint64_t sub_1CFC62A54(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 112) = a1;

  v6 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC62B98, v6, v5);
}

uint64_t sub_1CFC62B98()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  sub_1CFC9C1A8();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v7 = v0[10];
    v6 = v0[11];
    v8 = sub_1CFC9F998();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v5;
    v10 = sub_1CFC9F958();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    sub_1CFBDC030(0, 0, v7, &unk_1CFCA7C60, v11);

    if ((v9[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasSubscribedToTips] & 1) == 0)
    {
      v9[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasSubscribedToTips] = 1;
      sub_1CFC9D1B8();
      sub_1CFC9D1A8();
      v13 = sub_1CFC9D198();

      v0[8] = v13;
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1CFC6BD3C;
      *(v15 + 24) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFAF0, &qword_1CFCA7C68);
      sub_1CFBA57C0(&qword_1EE04D5B8, &unk_1EC4EFAF0, &qword_1CFCA7C68);
      sub_1CFC9DDA8();

      swift_beginAccess();
      sub_1CFC9DC88();
      swift_endAccess();
    }
  }

  v16 = v0[10];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1CFC62E34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_1CFC9F998();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1CFC9F968();

  v7 = sub_1CFC9F958();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_1CFBDC330(0, 0, v5, &unk_1CFCA7C78, v8);
}

uint64_t sub_1CFC62F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = sub_1CFC9F968();
  v4[9] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC6302C, v7, v6);
}

uint64_t sub_1CFC6302C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = sub_1CFC9F998();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = Strong;
    v8 = sub_1CFC9F958();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_1CFBDC030(0, 0, v5, &unk_1CFCA7C80, v9);
  }

  v11 = *(v0 + 56);
  **(v0 + 40) = Strong == 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1CFC63184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = sub_1CFC9F968();
  v4[6] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CFC63258, v7, v6);
}

uint64_t sub_1CFC63258()
{
  v0[9] = *(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);
  v1 = *(MEMORY[0x1E6993720] + 4);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1CFC632FC;

  return MEMORY[0x1EEDF2A80]();
}

uint64_t sub_1CFC632FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = a1;

  v4 = *(v2 + 64);
  v5 = *(v2 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1CFC63424, v5, v4);
}

uint64_t sub_1CFC63424()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v0[12] = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v0[6];
    v5 = v3;

    v6 = v5;
    if (([v6 isReceptionistAvailable] & 1) == 0 || (objc_msgSend(v6, sel_isReceptionistEnabled) & 1) != 0 || (v7 = objc_msgSend(objc_opt_self(), sel_currentDevice), v8 = objc_msgSend(v7, sel_userInterfaceIdiom), v7, v8) || (sub_1CFC9D1B8(), sub_1CFC9D1A8(), v9 = sub_1CFC9D148(), , (v9 & 1) == 0))
    {
      v11 = 0;
    }

    else
    {
      v10 = v0[11];
      v11 = v10 >= sub_1CFC9D188();
    }

    *(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowScreeningTip) = v11;
    v12 = [v6 isFilterAsNewCallersEnabledForPhone];

    if ((v12 & 1) != 0 || (sub_1CFC9D1B8(), sub_1CFC9D1A8(), v13 = sub_1CFC9D138(), , (v13 & 1) == 0))
    {
      v16 = 0;
    }

    else
    {
      v14 = v0[9];
      v15 = sub_1CFC9C798();
      v16 = v15 >= sub_1CFC9D178();
    }

    *(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowFilteringTip) = v16;
    sub_1CFC9D1B8();
    sub_1CFC9D1A8();
    v17 = sub_1CFC9D148();

    if ((v17 & 1) == 0)
    {
      v19 = v0[4];
      v18 = v0[5];
      v20 = v0[3];
      v21 = sub_1CFC9F998();
      (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
      v22 = v20;
      v23 = sub_1CFC9F958();
      v24 = swift_allocObject();
      v25 = MEMORY[0x1E69E85E0];
      v24[2] = v23;
      v24[3] = v25;
      v24[4] = v22;
      sub_1CFBDC030(0, 0, v19, &unk_1CFCA7C90, v24);
    }

    v26 = v0[4];

    v27 = v0[1];

    return v27();
  }

  else
  {
    v29 = v0[5];
    v0[13] = sub_1CFC9F958();
    v31 = sub_1CFC9F938();
    v0[14] = v31;
    v0[15] = v30;

    return MEMORY[0x1EEE6DFA0](sub_1CFC63734, v31, v30);
  }
}

uint64_t sub_1CFC63734()
{
  v1 = v0[3];
  v2 = *&v1[v0[12]];
  if (v2)
  {
    v3 = v0[13];
    v4 = v2;

    v0[18] = v4;
    v5 = v0[7];
    v6 = v0[8];

    return MEMORY[0x1EEE6DFA0](sub_1CFC63AB4, v5, v6);
  }

  else
  {
    v7 = v0[4];
    v8 = sub_1CFC9F998();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v10 = v1;
    v11 = sub_1CFC57758(0, 0, v7, &unk_1CFCA7C88, v9);
    v0[16] = v11;
    sub_1CFBC2FB0(v7, &qword_1EC4ED950, &qword_1CFCA2710);
    v12 = *(MEMORY[0x1E69E86C0] + 4);
    v13 = swift_task_alloc();
    v0[17] = v13;
    v14 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v13 = v0;
    v13[1] = sub_1CFC63904;

    return MEMORY[0x1EEE6DA40](v0 + 2, v11, v14);
  }
}

uint64_t sub_1CFC63904()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1CFC63A48, v5, v4);
}

uint64_t sub_1CFC63A48()
{
  v1 = v0[13];

  v0[18] = v0[2];
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1CFC63AB4, v2, v3);
}

uint64_t sub_1CFC63AB4()
{
  v1 = v0[18];
  v2 = v0[6];

  v3 = v1;
  v4 = v0[18];
  if (![v4 isReceptionistAvailable] || (objc_msgSend(v4, sel_isReceptionistEnabled) & 1) != 0 || (v5 = objc_msgSend(objc_opt_self(), sel_currentDevice), v6 = objc_msgSend(v5, sel_userInterfaceIdiom), v5, v6) || (sub_1CFC9D1B8(), sub_1CFC9D1A8(), v7 = sub_1CFC9D148(), , (v7 & 1) == 0))
  {
    v9 = 0;
  }

  else
  {
    v8 = v0[11];
    v9 = v8 >= sub_1CFC9D188();
  }

  *(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowScreeningTip) = v9;
  v10 = [v4 isFilterAsNewCallersEnabledForPhone];

  if ((v10 & 1) != 0 || (sub_1CFC9D1B8(), sub_1CFC9D1A8(), v11 = sub_1CFC9D138(), , (v11 & 1) == 0))
  {
    v14 = 0;
  }

  else
  {
    v12 = v0[9];
    v13 = sub_1CFC9C798();
    v14 = v13 >= sub_1CFC9D178();
  }

  *(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowFilteringTip) = v14;
  sub_1CFC9D1B8();
  sub_1CFC9D1A8();
  v15 = sub_1CFC9D148();

  if ((v15 & 1) == 0)
  {
    v17 = v0[4];
    v16 = v0[5];
    v18 = v0[3];
    v19 = sub_1CFC9F998();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    v20 = v18;
    v21 = sub_1CFC9F958();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v20;
    sub_1CFBDC030(0, 0, v17, &unk_1CFCA7C90, v22);
  }

  v24 = v0[4];

  v25 = v0[1];

  return v25();
}

id sub_1CFC63DB0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v5 = sub_1CFC6A6B0(a3, a4);
  swift_beginAccess();

  sub_1CFBA73C4(0, 0, a2, v5);
  swift_endAccess();

  return sub_1CFBA76C8();
}

Swift::Void __swiftcall RecentsViewController.dismissCallFilteringTip()()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection))
  {
    v2 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    if (*(*(v0 + v2) + 16))
    {
      sub_1CFBCB5C4(0, 1);
      swift_endAccess();
      sub_1CFBA76C8();
      v3 = *(v0 + v1);
      *(v0 + v1) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall RecentsViewController.didTapTurnOnFiltering()()
{
  v1 = v0;
  RecentsViewController.handleCallFilteringAction()();
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection))
  {
    v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    if (*(*(v1 + v3) + 16))
    {
      sub_1CFBCB5C4(0, 1);
      swift_endAccess();
      sub_1CFBA76C8();
      v4 = *(v1 + v2);
      *(v1 + v2) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1CFC63F8C()
{
  v1 = v0;
  RecentsViewController.handleCallFilteringAction()();
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection))
  {
    v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    if (*(*(v1 + v3) + 16))
    {
      sub_1CFBCB5C4(0, 1);
      swift_endAccess();
      sub_1CFBA76C8();
      v4 = *(v1 + v2);
      *(v1 + v2) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1CFC6402C()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection))
  {
    v2 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    result = swift_beginAccess();
    if (*(*(v0 + v2) + 16))
    {
      sub_1CFBCB5C4(0, 1);
      swift_endAccess();
      sub_1CFBA76C8();
      v4 = *(v0 + v1);
      *(v0 + v1) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1CFC640E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_1CFC9F998();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1CFC9F968();
  v9 = v2;
  v10 = sub_1CFC9F958();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_1CFBDC030(0, 0, v7, a2, v11);
}

uint64_t sub_1CFC64208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = sub_1CFC9F968();
  v4[6] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CFC642DC, v7, v6);
}

uint64_t sub_1CFC642DC()
{
  if (![*(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_featureFlags) deviceExpertMigrationEnabled])
  {
    v7 = v0[6];

    v8 = *MEMORY[0x1E69D8DD0];
    sub_1CFC9F768();
    v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v10 = sub_1CFC9F728();

    v11 = [v9 initWithSuiteName_];

    if (v11)
    {
      [v11 setBool:0 forKey:*MEMORY[0x1E69D8FC0]];
      [v11 setBool:0 forKey:*MEMORY[0x1E69D8EE8]];
    }

    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    v15 = [objc_opt_self() defaultCenter];
    v16 = sub_1CFC9F728();
    [v15 postNotificationName:v16 object:0];

    v17 = sub_1CFC9F998();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    v18 = v14;
    v19 = sub_1CFC9F958();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v18;
    sub_1CFBDC030(0, 0, v13, &unk_1CFCA7C20, v20);

    goto LABEL_7;
  }

  v1 = v0[3];
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v0[9] = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v0[6];
    v5 = v3;

    v6 = v5;
    [v6 setReceptionistEnabled_];
    [v6 setCallScreeningEnabled_];

LABEL_7:
    v22 = v0[4];

    v23 = v0[1];

    return v23();
  }

  v25 = v0[5];
  v0[10] = sub_1CFC9F958();
  v27 = sub_1CFC9F938();
  v0[11] = v27;
  v0[12] = v26;

  return MEMORY[0x1EEE6DFA0](sub_1CFC645F8, v27, v26);
}

uint64_t sub_1CFC645F8()
{
  v1 = v0[3];
  v2 = *&v1[v0[9]];
  if (v2)
  {
    v3 = v0[10];
    v4 = v2;

    v0[15] = v4;
    v5 = v0[7];
    v6 = v0[8];

    return MEMORY[0x1EEE6DFA0](sub_1CFC64978, v5, v6);
  }

  else
  {
    v7 = v0[4];
    v8 = sub_1CFC9F998();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v10 = v1;
    v11 = sub_1CFC57758(0, 0, v7, &unk_1CFCA7C28, v9);
    v0[13] = v11;
    sub_1CFBC2FB0(v7, &qword_1EC4ED950, &qword_1CFCA2710);
    v12 = *(MEMORY[0x1E69E86C0] + 4);
    v13 = swift_task_alloc();
    v0[14] = v13;
    v14 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v13 = v0;
    v13[1] = sub_1CFC647C8;

    return MEMORY[0x1EEE6DA40](v0 + 2, v11, v14);
  }
}

uint64_t sub_1CFC647C8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1CFC6490C, v5, v4);
}

uint64_t sub_1CFC6490C()
{
  v1 = v0[10];

  v0[15] = v0[2];
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1CFC64978, v2, v3);
}

uint64_t sub_1CFC64978()
{
  v1 = v0[15];
  v2 = v0[6];

  v3 = v1;
  v4 = v0[15];
  [v4 setReceptionistEnabled_];
  [v4 setCallScreeningEnabled_];

  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1CFC64A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = sub_1CFC9F968();
  v4[9] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CFC64AF0, v7, v6);
}

uint64_t sub_1CFC64AF0()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection;
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection))
  {
    v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    v4 = swift_beginAccess();
    if (*(*(v1 + v3) + 16))
    {
      v7 = v0[8];
      v8 = v0[6];
      sub_1CFBCB5C4(0, 1);
      swift_endAccess();
      sub_1CFBA76C8();
      v9 = *(v1 + v2);
      *(v1 + v2) = 0;

      v0[12] = sub_1CFC9F958();
      v10 = sub_1CFC9F938();
      v6 = v11;
      v0[13] = v10;
      v0[14] = v11;
      v4 = sub_1CFC64C48;
      v5 = v10;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  else
  {
    v12 = v0[9];

    v13 = v0[7];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1CFC64C48()
{
  v1 = v0[6];
  v2 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider];
  if (v2)
  {
    v3 = v0[12];
    v4 = v2;

    v0[17] = v4;
    v5 = v0[10];
    v6 = v0[11];

    return MEMORY[0x1EEE6DFA0](sub_1CFC64FCC, v5, v6);
  }

  else
  {
    v7 = v0[7];
    v8 = sub_1CFC9F998();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v10 = v1;
    v11 = sub_1CFC57758(0, 0, v7, &unk_1CFCA7C30, v9);
    v0[15] = v11;
    sub_1CFBC2FB0(v7, &qword_1EC4ED950, &qword_1CFCA2710);
    v12 = *(MEMORY[0x1E69E86C0] + 4);
    v13 = swift_task_alloc();
    v0[16] = v13;
    v14 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v13 = v0;
    v13[1] = sub_1CFC64E1C;

    return MEMORY[0x1EEE6DA40](v0 + 5, v11, v14);
  }
}

uint64_t sub_1CFC64E1C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1CFC64F60, v5, v4);
}

uint64_t sub_1CFC64F60()
{
  v1 = v0[12];

  v0[17] = v0[5];
  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1CFC64FCC, v2, v3);
}

uint64_t sub_1CFC64FCC()
{
  v1 = v0[17];
  v2 = v0[9];

  [v1 setEligibleForReceptionistOnboardingNotification_];

  v3 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v4 = sub_1CFC9F728();
  v5 = [v3 initWithBundleIdentifier_];

  v6 = sub_1CFC9F898();
  [v5 removeDeliveredNotificationsWithIdentifiers_];

  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1CFC65110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_1CFC9F998();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1CFC9F968();
  v11 = v4;
  v12 = sub_1CFC9F958();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_1CFBDC030(0, 0, v9, a4, v13);
}

id sub_1CFC65230(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v34 - v6;
  v8 = sub_1CFC9CF08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v37 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v34 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v34 - v16;
  v18 = *MEMORY[0x1E6995AA0];
  v35 = *(v9 + 104);
  v35(v34 - v16, v18, v8);
  sub_1CFC6A6B0(&qword_1EE04D668, MEMORY[0x1E6995AA8]);
  v19 = sub_1CFC9F6F8();
  v36 = *(v9 + 8);
  v36(v17, v8);
  if (v19)
  {
    v20 = sub_1CFC9F998();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    sub_1CFC9F968();
    v21 = a2;
    v22 = sub_1CFC9F958();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v21;
    sub_1CFBDC030(0, 0, v7, &unk_1CFCA7D10, v23);
  }

  else
  {
    v34[1] = a1;
    v34[2] = a2;
    v26 = *&a2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection];
    v27 = *(v9 + 16);
    v27(v17, a1, v8);
    v28 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
    swift_beginAccess();
    v27(v15, v26 + v28, v8);
    swift_beginAccess();
    v29 = v26 + v28;
    v30 = v37;
    (*(v9 + 24))(v29, v17, v8);
    swift_endAccess();
    sub_1CFC744A0();
    v31 = v36;
    v36(v15, v8);
    v31(v17, v8);
    v35(v30, *MEMORY[0x1E6995A70], v8);
    sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8]);
    sub_1CFC9F878();
    sub_1CFC9F878();
    v32 = v31;
    if (v40 == v38 && v41 == v39)
    {
      v33 = 0;
    }

    else
    {
      v33 = sub_1CFCA02B8() ^ 1;
    }

    v32(v30, v8);

    return sub_1CFC5E0B0(v33 & 1);
  }
}

uint64_t sub_1CFC6569C()
{
  v0[2] = sub_1CFC9F968();
  v0[3] = sub_1CFC9F958();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1CFC0DFF4;

  return sub_1CFC60AB8();
}

id sub_1CFC65748()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  v1 = Strong;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  KeyPath = swift_getKeyPath();
  v4 = v1;
  v5 = sub_1CFC9EBC8();
  sub_1CFC9DE18();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v22[0] = 0;
  v14 = sub_1CFC9EBD8();
  sub_1CFC9DE18();
  *&v30 = sub_1CFC6BEB4;
  *(&v30 + 1) = v2;
  *&v31 = KeyPath;
  BYTE8(v31) = 0;
  LOBYTE(v32) = v5;
  *(&v32 + 1) = v7;
  *&v33 = v9;
  *(&v33 + 1) = v11;
  *&v34 = v13;
  BYTE8(v34) = 0;
  LOBYTE(v35) = v14;
  *(&v35 + 1) = v15;
  *v36 = v16;
  *&v36[8] = v17;
  *&v36[16] = v18;
  v36[24] = 0;
  v27 = v34;
  v28 = v35;
  v29[0] = *v36;
  *(v29 + 9) = *&v36[9];
  v23 = v30;
  v24 = v31;
  v25 = v32;
  v26 = v33;
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB08, &qword_1CFCA7CC8));
  sub_1CFBA29FC(&v30, v22, &unk_1EC4EFB10, &qword_1CFCA7CD0);
  v20 = sub_1CFC9E108();

  sub_1CFBC2FB0(&v30, &unk_1EC4EFB10, &qword_1CFCA7CD0);
  return v20;
}

void sub_1CFC65920(uint64_t a1)
{
  v2 = sub_1CFC9CF08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    RecentsViewController.update(filterMode:animated:)(a1, 1);
    v9 = *&v8[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
    (*(v3 + 16))(v6, a1, v2);
    v10 = v9;
    sub_1CFC9CE98();
  }
}

uint64_t sub_1CFC65A48(uint64_t a1, void (*a2)(char *), uint64_t a3, unsigned int *a4)
{
  v6 = sub_1CFC9CF08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *a4, v6);
  a2(v10);
  return (*(v7 + 8))(v10, v6);
}

Swift::Void __swiftcall RecentsViewController.configurationChanged()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = sub_1CFC9F998();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1CFC9F968();
  v7 = v0;

  v8 = sub_1CFC9F958();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = sub_1CFC6AB0C;
  v9[6] = v5;
  sub_1CFBDC030(0, 0, v4, &unk_1CFCA79C8, v9);
}

void sub_1CFC65CB4()
{
  v0 = sub_1CFC9CF08();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v24 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
    v13 = *(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel);
    sub_1CFC9CE88();

    v14 = *MEMORY[0x1E6995A90];
    v23 = v1[13];
    v23(v7, v14, v0);
    sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8]);
    sub_1CFC9F878();
    sub_1CFC9F878();
    v25 = v4;
    if (v28 == v26 && v29 == v27)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1CFCA02B8();
    }

    v16 = v1[1];
    v16(v7, v0);
    v16(v10, v0);

    if (v15)
    {
      v17 = *MEMORY[0x1E6995A70];
      v18 = v25;
      v19 = v23;
      v23(v25, v17, v0);
      RecentsViewController.update(filterMode:animated:)(v18, 0);
      v16(v18, v0);
      v20 = *&v12[v24];
      v19(v18, v17, v0);
      v21 = v20;
      sub_1CFC9CE98();
    }

    sub_1CFC5C900(0, 1);
    v22 = *&v12[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource];
    sub_1CFC9C8A8();
  }
}

uint64_t sub_1CFC65FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = sub_1CFC9CF08();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = sub_1CFC9F968();
  v6[29] = sub_1CFC9F958();
  v12 = sub_1CFC9F938();
  v6[30] = v12;
  v6[31] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1CFC66130, v12, v11);
}

uint64_t sub_1CFC66130()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v0[32] = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v3 = *(v1 + v2);
  if (!v3)
  {
    v25 = v0[28];
    v0[33] = sub_1CFC9F958();
    v27 = sub_1CFC9F938();
    v0[34] = v27;
    v0[35] = v26;

    return MEMORY[0x1EEE6DFA0](sub_1CFC66AD8, v27, v26);
  }

  v0[39] = v3;
  v4 = v0[26];
  v6 = v0[18];
  v5 = v0[19];
  v7 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
  v8 = *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel);
  v9 = v3;
  v10 = v8;
  v11 = sub_1CFC9CF28();

  v83 = *MEMORY[0x1E6995A90];
  v82 = *(v5 + 104);
  v82(v4);
  LOBYTE(v10) = sub_1CFC1D758(v4, v11);

  v81 = *(v5 + 8);
  v81(v4, v6);
  if ((v10 & 1) != 0 && ([v9 isFilterAsNewCallersEnabledForPhone] & 1) == 0)
  {
    v29 = v0[29];

    if (qword_1EE050010 != -1)
    {
LABEL_59:
      swift_once();
    }

    v30 = sub_1CFC9D938();
    __swift_project_value_buffer(v30, qword_1EE052308);
    v31 = sub_1CFC9D918();
    v32 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1CFB9F000, v31, v32, "Requests toggled off, updating UI", v33, 2u);
      MEMORY[0x1D3873280](v33, -1, -1);
    }

    v72 = *(v1 + v7);
    v34 = sub_1CFC9CF18();
    v78 = v35;
    v7 = *v35;
    v73 = *(*v35 + 16);
    v71 = v34;
    if (!v73)
    {
      v1 = 0;
      v43 = 0;
      goto LABEL_31;
    }

    v70 = v9;
    v1 = 0;
    v75 = v0[19];
    while (1)
    {
      if (v1 >= *(v7 + 16))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v36 = v0[24];
      v37 = v0[18];
      v77 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v80 = *(v75 + 72);
      v79 = *(v75 + 16);
      v79(v0[25], v7 + v77 + v80 * v1, v37);
      (v82)(v36, v83, v37);
      sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8]);
      sub_1CFC9F878();
      sub_1CFC9F878();
      v39 = v0[24];
      v38 = v0[25];
      v40 = v0[18];
      if (v0[6] == v0[8] && v0[7] == v0[9])
      {
        break;
      }

      v41 = v0[7];
      v42 = v0[9];
      v9 = sub_1CFCA02B8();
      v81(v39, v40);
      v81(v38, v40);

      if (v9)
      {
        goto LABEL_29;
      }

      if (v73 == ++v1)
      {
        v1 = *(*v78 + 16);
        v43 = v1;
        goto LABEL_30;
      }
    }

    v81(v0[24], v0[18]);
    v81(v38, v40);

LABEL_29:
    v43 = v1 + 1;
    v44 = *v78;
    v45 = *(*v78 + 16);
    if (v45 - 1 == v1)
    {
LABEL_30:
      v9 = v70;
LABEL_31:
      v47 = v0[16];
      v46 = v0[17];
      sub_1CFBCCBFC(v1, v43);
      v71();

      v47();
      goto LABEL_32;
    }

    v74 = (v0[19] + 40);
    v9 = v77 + v80 * v43;
    v7 = v79;
    while (1)
    {
      if (v43 >= v45)
      {
        goto LABEL_58;
      }

      v57 = v0[22];
      v58 = v0[18];
      (v7)(v0[23], v44 + v9, v58);
      (v82)(v57, v83, v58);
      sub_1CFC9F878();
      sub_1CFC9F878();
      v60 = v0[22];
      v59 = v0[23];
      v61 = v0[18];
      if (v0[10] == v0[12] && v0[11] == v0[13])
      {
        v81(v0[22], v0[18]);
        v81(v59, v61);
      }

      else
      {
        v63 = v0[11];
        v64 = v0[13];
        v76 = sub_1CFCA02B8();
        v81(v60, v61);
        v81(v59, v61);

        if ((v76 & 1) == 0)
        {
          v7 = v79;
          if (v43 != v1)
          {
            if ((v1 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            v65 = *v78;
            v66 = *(*v78 + 16);
            if (v1 >= v66)
            {
              goto LABEL_61;
            }

            v79(v0[21], v65 + v77 + v1 * v80, v0[18]);
            if (v43 >= v66)
            {
              goto LABEL_62;
            }

            v79(v0[20], v65 + v9, v0[18]);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v78 = v65;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v65 = sub_1CFC829E8(v65);
              *v78 = v65;
            }

            if (v1 >= v65[2])
            {
              goto LABEL_63;
            }

            v68 = v65 + v77;
            v69 = *v74;
            (*v74)(&v68[v1 * v80], v0[20], v0[18]);
            if (v43 >= *(*v78 + 16))
            {
              goto LABEL_64;
            }

            v69(*v78 + v9, v0[21], v0[18]);
          }

          ++v1;
          goto LABEL_38;
        }
      }

      v7 = v79;
LABEL_38:
      ++v43;
      v44 = *v78;
      v45 = *(*v78 + 16);
      v9 += v80;
      if (v43 == v45)
      {
        v9 = v70;
        if (v43 >= v1)
        {
          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_57;
      }
    }
  }

  v12 = v0[26];
  v13 = v0[18];
  v14 = *(v1 + v7);
  v15 = sub_1CFC9CF28();

  (v82)(v12, v83, v13);
  LOBYTE(v14) = sub_1CFC1D758(v12, v15);

  v81(v12, v13);
  if ((v14 & 1) != 0 || ![v9 isFilterAsNewCallersEnabledForPhone])
  {
    v28 = v0[29];

LABEL_32:

    v49 = v0[26];
    v48 = v0[27];
    v51 = v0[24];
    v50 = v0[25];
    v53 = v0[22];
    v52 = v0[23];
    v55 = v0[20];
    v54 = v0[21];

    v56 = v0[1];

    return v56();
  }

  if (qword_1EE050010 != -1)
  {
LABEL_65:
    swift_once();
  }

  v16 = sub_1CFC9D938();
  __swift_project_value_buffer(v16, qword_1EE052308);
  v17 = sub_1CFC9D918();
  v18 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1CFB9F000, v17, v18, "Requests toggled on, updating UI", v19, 2u);
    MEMORY[0x1D3873280](v19, -1, -1);
  }

  v20 = *(v1 + v7);
  v0[40] = v20;
  v21 = v20;
  v22 = swift_task_alloc();
  v0[41] = v22;
  *v22 = v0;
  v22[1] = sub_1CFC67774;
  v23 = v0[15];

  return sub_1CFC5C050();
}

uint64_t sub_1CFC66AD8()
{
  v1 = v0[15];
  v2 = *&v1[v0[32]];
  if (v2)
  {
    v3 = v0[33];
    v4 = v2;

    v0[38] = v4;
    v5 = v0[30];
    v6 = v0[31];

    return MEMORY[0x1EEE6DFA0](sub_1CFC66E58, v5, v6);
  }

  else
  {
    v7 = v0[27];
    v8 = sub_1CFC9F998();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v10 = v1;
    v11 = sub_1CFC57758(0, 0, v7, &unk_1CFCA7C08, v9);
    v0[36] = v11;
    sub_1CFBC2FB0(v7, &qword_1EC4ED950, &qword_1CFCA2710);
    v12 = *(MEMORY[0x1E69E86C0] + 4);
    v13 = swift_task_alloc();
    v0[37] = v13;
    v14 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v13 = v0;
    v13[1] = sub_1CFC66CA8;

    return MEMORY[0x1EEE6DA40](v0 + 14, v11, v14);
  }
}

uint64_t sub_1CFC66CA8()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v7 = *v0;

  v4 = *(v1 + 280);
  v5 = *(v1 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1CFC66DEC, v5, v4);
}

uint64_t sub_1CFC66DEC()
{
  v1 = v0[33];

  v0[38] = v0[14];
  v2 = v0[30];
  v3 = v0[31];

  return MEMORY[0x1EEE6DFA0](sub_1CFC66E58, v2, v3);
}

uint64_t sub_1CFC66E58()
{
  v1 = v0[38];
  v0[39] = v1;
  v2 = v0[26];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v6 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
  v7 = *(v5 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel);
  v8 = sub_1CFC9CF28();

  v77 = *MEMORY[0x1E6995A90];
  v76 = *(v3 + 104);
  v76(v2);
  LOBYTE(v7) = sub_1CFC1D758(v2, v8);

  v75 = *(v3 + 8);
  v75(v2, v4);
  if ((v7 & 1) != 0 && ([v1 isFilterAsNewCallersEnabledForPhone] & 1) == 0)
  {
    v23 = v0[29];

    if (qword_1EE050010 != -1)
    {
LABEL_55:
      swift_once();
    }

    v24 = sub_1CFC9D938();
    __swift_project_value_buffer(v24, qword_1EE052308);
    v25 = sub_1CFC9D918();
    v26 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1CFB9F000, v25, v26, "Requests toggled off, updating UI", v27, 2u);
      MEMORY[0x1D3873280](v27, -1, -1);
    }

    v66 = *(v5 + v6);
    v28 = sub_1CFC9CF18();
    v72 = v29;
    v6 = *v29;
    v67 = *(*v29 + 16);
    v65 = v28;
    if (!v67)
    {
      v5 = 0;
      v37 = 0;
      goto LABEL_27;
    }

    v64 = v1;
    v5 = 0;
    v69 = v0[19];
    while (1)
    {
      if (v5 >= *(v6 + 16))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v30 = v0[24];
      v31 = v0[18];
      v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v74 = *(v69 + 72);
      v73 = *(v69 + 16);
      v73(v0[25], v6 + v71 + v74 * v5, v31);
      (v76)(v30, v77, v31);
      sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8]);
      sub_1CFC9F878();
      sub_1CFC9F878();
      v33 = v0[24];
      v32 = v0[25];
      v34 = v0[18];
      if (v0[6] == v0[8] && v0[7] == v0[9])
      {
        break;
      }

      v35 = v0[7];
      v36 = v0[9];
      v1 = sub_1CFCA02B8();
      v75(v33, v34);
      v75(v32, v34);

      if (v1)
      {
        goto LABEL_25;
      }

      if (v67 == ++v5)
      {
        v5 = *(*v72 + 16);
        v37 = v5;
        goto LABEL_26;
      }
    }

    v75(v0[24], v0[18]);
    v75(v32, v34);

LABEL_25:
    v37 = v5 + 1;
    v38 = *v72;
    v39 = *(*v72 + 16);
    if (v39 - 1 == v5)
    {
LABEL_26:
      v1 = v64;
LABEL_27:
      v41 = v0[16];
      v40 = v0[17];
      sub_1CFBCCBFC(v5, v37);
      v65();

      v41();
      goto LABEL_28;
    }

    v68 = (v0[19] + 40);
    v1 = v71 + v74 * v37;
    v6 = v73;
    while (1)
    {
      if (v37 >= v39)
      {
        goto LABEL_54;
      }

      v51 = v0[22];
      v52 = v0[18];
      (v6)(v0[23], v38 + v1, v52);
      (v76)(v51, v77, v52);
      sub_1CFC9F878();
      sub_1CFC9F878();
      v54 = v0[22];
      v53 = v0[23];
      v55 = v0[18];
      if (v0[10] == v0[12] && v0[11] == v0[13])
      {
        v75(v0[22], v0[18]);
        v75(v53, v55);
      }

      else
      {
        v57 = v0[11];
        v58 = v0[13];
        v70 = sub_1CFCA02B8();
        v75(v54, v55);
        v75(v53, v55);

        if ((v70 & 1) == 0)
        {
          v6 = v73;
          if (v37 != v5)
          {
            if ((v5 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            v59 = *v72;
            v60 = *(*v72 + 16);
            if (v5 >= v60)
            {
              goto LABEL_57;
            }

            v73(v0[21], v59 + v71 + v5 * v74, v0[18]);
            if (v37 >= v60)
            {
              goto LABEL_58;
            }

            v73(v0[20], v59 + v1, v0[18]);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v72 = v59;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v59 = sub_1CFC829E8(v59);
              *v72 = v59;
            }

            if (v5 >= v59[2])
            {
              goto LABEL_59;
            }

            v62 = v59 + v71;
            v63 = *v68;
            (*v68)(&v62[v5 * v74], v0[20], v0[18]);
            if (v37 >= *(*v72 + 16))
            {
              goto LABEL_60;
            }

            v63(*v72 + v1, v0[21], v0[18]);
          }

          ++v5;
          goto LABEL_34;
        }
      }

      v6 = v73;
LABEL_34:
      ++v37;
      v38 = *v72;
      v39 = *(*v72 + 16);
      v1 += v74;
      if (v37 == v39)
      {
        v1 = v64;
        if (v37 >= v5)
        {
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_53;
      }
    }
  }

  v9 = v0[26];
  v10 = v0[18];
  v11 = *(v5 + v6);
  v12 = sub_1CFC9CF28();

  (v76)(v9, v77, v10);
  LOBYTE(v11) = sub_1CFC1D758(v9, v12);

  v75(v9, v10);
  if ((v11 & 1) != 0 || ![v1 isFilterAsNewCallersEnabledForPhone])
  {
    v22 = v0[29];

LABEL_28:

    v43 = v0[26];
    v42 = v0[27];
    v45 = v0[24];
    v44 = v0[25];
    v47 = v0[22];
    v46 = v0[23];
    v49 = v0[20];
    v48 = v0[21];

    v50 = v0[1];

    return v50();
  }

  if (qword_1EE050010 != -1)
  {
LABEL_61:
    swift_once();
  }

  v13 = sub_1CFC9D938();
  __swift_project_value_buffer(v13, qword_1EE052308);
  v14 = sub_1CFC9D918();
  v15 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1CFB9F000, v14, v15, "Requests toggled on, updating UI", v16, 2u);
    MEMORY[0x1D3873280](v16, -1, -1);
  }

  v17 = *(v5 + v6);
  v0[40] = v17;
  v18 = v17;
  v19 = swift_task_alloc();
  v0[41] = v19;
  *v19 = v0;
  v19[1] = sub_1CFC67774;
  v20 = v0[15];

  return sub_1CFC5C050();
}

uint64_t sub_1CFC67774(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = a1;

  v4 = *(v2 + 248);
  v5 = *(v2 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1CFC6789C, v5, v4);
}

uint64_t sub_1CFC6789C()
{
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[29];
  v6 = v0[16];
  v5 = v0[17];

  sub_1CFC9CF38();

  v6();
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v12 = v0[22];
  v11 = v0[23];
  v14 = v0[20];
  v13 = v0[21];

  v15 = v0[1];

  return v15();
}

id sub_1CFC67A3C()
{
  [v0 dismissViewControllerAnimated:1 completion:0];
  v1 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_snapController];

  return [v1 startOnboardingOrEditForMode:1 fromViewController:v0];
}

uint64_t RecentsViewController.presentVoicemailDetails(uuid:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1CFC9F968();
  v2[4] = sub_1CFC9F958();
  v4 = sub_1CFC9F938();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CFC67B2C, v4, v3);
}

uint64_t sub_1CFC67B2C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1CFC67BD0;
  v3 = v0[2];

  return sub_1CFC8B30C(v3);
}

uint64_t sub_1CFC67BD0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1CFC67CF0, v4, v3);
}

uint64_t sub_1CFC67CF0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t RecentsViewController.presentCallHistoryDetails(uniqueID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1CFC9F968();
  v3[5] = sub_1CFC9F958();
  v5 = sub_1CFC9F938();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CFC67DEC, v5, v4);
}

uint64_t sub_1CFC67DEC()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1CFC67E90;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1CFC8BC88(v4, v3);
}

uint64_t sub_1CFC67E90()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1CFC67FB0, v4, v3);
}

uint64_t sub_1CFC67FB0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFC68010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1CFC38B78;

  return RecentsDetailProvider.voicemailDetailViewController(for:deleteAction:callbackAction:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t RecentsDetailProvider.voicemailDetailViewController(for:deleteAction:callbackAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = 1;
  v15 = *(a7 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1CFC38B78;

  return v19(a1, v7 + 24, a2, a3, a4, a5, a6, a7);
}

void sub_1CFC68300()
{
  v1 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_searchResultsController];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = [v5 view];
      if (v6)
      {
        v7 = v6;
        [v4 addSubview_];

        [v0 addChildViewController_];
        [v5 didMoveToParentViewController_];
        v8 = [v5 view];

        if (v8)
        {
          v9 = [v0 view];
          if (v9)
          {
            v10 = v9;
            [v9 bounds];
            v12 = v11;
            v14 = v13;
            v16 = v15;
            v18 = v17;

            [v8 setFrame_];
            v19 = [v0 collectionView];
            if (v19)
            {
              v20 = v19;
              [v19 setHidden_];

              type metadata accessor for BundleClass();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v22 = [objc_opt_self() bundleForClass_];
              sub_1CFC9BE28();

              sub_1CFC5F074();

              v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isSearching] = 1;
              return;
            }

LABEL_13:
            __break(1u);
            return;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1CFC68564()
{
  v1 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_searchResultsController];
  if (!v1)
  {
    return;
  }

  v8 = v1;
  v2 = [v8 view];
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = [v2 superview];

  if (!v4)
  {

    goto LABEL_9;
  }

  v5 = [v8 view];
  if (!v5)
  {
    goto LABEL_13;
  }

  [v5 removeFromSuperview];

  [v8 removeFromParentViewController];
  v6 = [v0 collectionView];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 setHidden_];

  v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isSearching] = 0;
  RecentsViewController.selectedItemsDidChange()();
LABEL_9:
}

uint64_t sub_1CFC68864(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1CFC9BE98();
  if (a1)
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v4 = sub_1CFC9F898();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for ObservingNavigationItem();
  objc_msgSendSuper2(&v6, sel_setRightBarButtonItems_, v4);

  v7 = v2;
  swift_getKeyPath();
  return sub_1CFC9BEA8();
}

void sub_1CFC68934(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 rightBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v5 = sub_1CFC9F8A8();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1CFC689B4(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v3 = sub_1CFC9F898();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setRightBarButtonItems_];
}

uint64_t sub_1CFC68A3C(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_1CFC9BE98();
  if (a1)
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v6 = sub_1CFC9F898();
  }

  else
  {
    v6 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ObservingNavigationItem();
  objc_msgSendSuper2(&v8, sel_setRightBarButtonItems_animated_, v6, a2 & 1);

  v9 = v3;
  swift_getKeyPath();
  return sub_1CFC9BEA8();
}

id sub_1CFC68C54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObservingNavigationItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFC68C88@<X0>(void *a1@<X8>)
{
  if (qword_1EE04F6F0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE052300;
  swift_getKeyPath();
  sub_1CFC6A6B0(&qword_1EE04F6E8, type metadata accessor for ObservableLayoutManager);

  sub_1CFC9C158();

  v3 = *(v2 + 16);

  *a1 = v3;
  return result;
}

uint64_t sub_1CFC68D80(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1CFC68DCC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFC68EC4;

  return v7(a1);
}

uint64_t sub_1CFC68EC4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1CFC68FBC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1CFC690B0;

  return v6(v2 + 16);
}

uint64_t sub_1CFC690B0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

void sub_1CFC691E0(void *a1, void *a2)
{
  sub_1CFBAB5EC();
  sub_1CFBAD088();
  if (([a1 isEditing] & 1) == 0)
  {
    v4 = [a2 splitViewControllerLayoutEnvironment];
    v5 = [a1 traitCollection];
    v6 = [v5 splitViewControllerLayoutEnvironment];

    if (v4 == 2)
    {
      if (v6 == 1)
      {
        sub_1CFC5B528();
      }
    }

    else if (v4 == 1 && v6 == 2)
    {
      sub_1CFBC5F74(0);
    }
  }
}

void _s10CallsAppUI21RecentsViewControllerC27goToCallFilteringInSettingsyyF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB0, &qword_1CFCA4DA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_1CFC9BF28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v9 = sub_1CFC9D938();
  __swift_project_value_buffer(v9, qword_1EE052308);
  v10 = sub_1CFC9D918();
  v11 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1CFB9F000, v10, v11, "RecentsViewController: Did call  goToCallFilteringInSettings", v12, 2u);
    MEMORY[0x1D3873280](v12, -1, -1);
  }

  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 5)
  {
    v15 = [objc_opt_self() defaultCenter];
    v19 = sub_1CFC9F728();
    [v15 postNotificationName:v19 object:0];

    v16 = v19;
  }

  else
  {
    sub_1CFC9BF08();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1CFBC2FB0(v3, &qword_1EC4EFAB0, &qword_1CFCA4DA0);
    }

    else
    {
      (*(v5 + 32))(v8, v3, v4);
      v17 = sub_1CFC9BEE8();
      TUOpenSensitiveURL();

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_1CFC695D0(void *a1, uint64_t a2)
{
  v41 = a2;
  v2 = *a1;
  v3 = *a1 + 16;
  v37 = *v3;
  if (!*v3)
  {
    return *v3;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = v2;
    v7 = &v2[v4];
    v8 = v7[4];
    v9 = v7[5];
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 40);
    swift_unknownObjectRetain();
    v11(v39, ObjectType, v9);
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v12 = sub_1CFC9F6D8();
    v13 = *(v41 + 64);
    sub_1CFCA0338();
    v14 = v13 ? 3 : 1;
    MEMORY[0x1D3872880](v14);
    v15 = sub_1CFCA0378();
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    result = swift_unknownObjectRelease();
    if (v12 == v15)
    {
      break;
    }

    ++v5;
    v4 += 2;
    v2 = v6;
    if (v37 == v5)
    {
      return *v3;
    }
  }

  v17 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    goto LABEL_34;
  }

  v18 = *v3;
  if (v17 == *v3)
  {
    return v5;
  }

  v19 = v6;
  while (v17 < v18)
  {
    v21 = v17;
    v38 = v19;
    v22 = v19[v4 + 6];
    v23 = v19[v4 + 7];
    v35 = &v19[v4];
    v24 = swift_getObjectType();
    v25 = *(v23 + 40);
    swift_unknownObjectRetain();
    v25(v39, v24, v23);
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v26 = sub_1CFC9F6D8();
    v27 = *(v41 + 64);
    sub_1CFCA0338();
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 1;
    }

    MEMORY[0x1D3872880](v28);
    v29 = sub_1CFCA0378();
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    result = swift_unknownObjectRelease();
    if (v26 == v29)
    {
      v19 = v38;
      v20 = v21;
    }

    else
    {
      v20 = v21;
      if (v21 == v5)
      {
        v19 = v38;
        ++v5;
      }

      else
      {
        v19 = v38;
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v5 >= *v3)
        {
          goto LABEL_31;
        }

        if (v21 >= *v3)
        {
          goto LABEL_32;
        }

        v34 = *&v38[2 * v5 + 4];
        v36 = *(v35 + 3);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1CFC829C0(v38);
        }

        v30 = &v19[2 * v5];
        v31 = v30[4];
        *(v30 + 2) = v36;
        result = swift_unknownObjectRelease();
        if (v21 >= v19[2])
        {
          goto LABEL_33;
        }

        v32 = v19[v4 + 6];
        *&v19[v4 + 6] = v34;
        result = swift_unknownObjectRelease();
        *a1 = v19;
        ++v5;
      }
    }

    v17 = v20 + 1;
    v3 = (v19 + 2);
    v18 = v19[2];
    v4 += 2;
    if (v17 == v18)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

char *sub_1CFC698E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v96 = a7;
  v97 = a4;
  v94 = a6;
  v98 = a5;
  v100 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v95 = &v93 - v13;
  v14 = sub_1CFC9CC98();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v93 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1CFC9CF08();
  v17 = *(*(v102 - 1) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v101 = sub_1CFC9CED8();
  v18 = *(v101 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem) = 0;
  v22 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_featureFlags;
  *(v8 + v22) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v23 = v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDetailProvider;
  *(v23 + 32) = 0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersDataSource) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection) = 0;
  v24 = v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = (v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider);
  *v25 = 0;
  v25[1] = 0;
  v25[2] = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController) = 0;
  v26 = (v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction);
  *v26 = 0;
  v26[1] = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasLegacyUnreadVoicemails) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasSubscribedToTips) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowScreeningTip) = 2;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowFilteringTip) = 2;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection) = 0;
  v27 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_snapController;
  v28 = [objc_allocWithZone(MEMORY[0x1E695CE18]) &selRef_avatar];
  v29 = [objc_allocWithZone(MEMORY[0x1E695D1A0]) initWithContactStore_];

  *(v8 + v27) = v29;
  v30 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager;
  *(v8 + v30) = [objc_opt_self() shared];
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterSegmentedControl) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_acceptedContactsDidChangeSubscription) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isSearching) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___doneButtonItem) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___clearAllButtonItem) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem) = 0;
  p_prots = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate.prots;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterTitleButton) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadButtonItem) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___addFavoriteItem) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___keyPadPrototypeView) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keyPadKeysGenerated) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  sub_1CFBA2AA8(a1, v23);
  swift_endAccess();
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource) = a2;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource) = v100;
  v99 = a1;
  sub_1CFBA29FC(a1, v103, &unk_1EC4EF810, &qword_1CFCA7900);
  v32 = type metadata accessor for DetailsPresenter();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v35 + 72) = 0;
  v36 = OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView;
  v37 = sub_1CFC9C448();
  (*(*(v37 - 8) + 56))(v35 + v36, 1, 1, v37);
  *(v35 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_contactDetailsCoordinator) = 0;
  *(v35 + 16) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v38 = v103[1];
  *(v35 + 32) = v103[0];
  *(v35 + 48) = v38;
  *(v35 + 64) = v104;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter) = v35;
  v39 = type metadata accessor for RecentsSectionController();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();

  v42 = a2;
  swift_retain_n();
  v43 = sub_1CFC748C0(v42, v35, 0);
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD60, &unk_1CFCA8700);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1CFCA1DD0;
  v45 = sub_1CFC6A6B0(&qword_1EE04F4F8, type metadata accessor for RecentsSectionController);
  *(v44 + 32) = v43;
  *(v44 + 40) = v45;
  (*(v18 + 104))(v21, *MEMORY[0x1E6995A50], v101);

  sub_1CFC9CD28();
  sub_1CFBE5C7C(MEMORY[0x1E69E7CC0]);
  v46 = objc_allocWithZone(sub_1CFC9CF48());
  v47 = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate.prots;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel) = sub_1CFC9CEE8();
  sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_editMenuButtonItem) = sub_1CFC9FB08();
  v48 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  result = [v48 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v50 = result;
  v51 = [objc_opt_self() secondarySystemBackgroundColor];
  [v50 setBackgroundColor_];

  v101 = objc_opt_self();
  v52 = [v101 currentDevice];
  v53 = [v52 userInterfaceIdiom];

  v102 = v48;
  if (!v53)
  {
    v67 = 0;
    goto LABEL_6;
  }

  v54 = [objc_opt_self() sharedControllerWithCoalescingStrategy:2 options:7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1CFCA3B60;
  *(v55 + 32) = [objc_allocWithZone(MEMORY[0x1E69D8A68]) init];
  *(v55 + 40) = [objc_allocWithZone(MEMORY[0x1E69D8C30]) init];
  *(v55 + 48) = [objc_allocWithZone(MEMORY[0x1E69D8D08]) init];
  *(v55 + 56) = [objc_allocWithZone(MEMORY[0x1E69D8BF8]) init];
  v56 = objc_allocWithZone(MEMORY[0x1E69D8C38]);
  sub_1CFBA2D80(0, &qword_1EC4EFB30, 0x1E69D8C40);
  v57 = sub_1CFC9F898();

  v58 = [v56 initWithDataProviders_];

  v59 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v60 = objc_opt_self();
  result = [v60 contactStore];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v61 = result;
  v62 = [v60 suggestedContactStore];
  v63 = objc_allocWithZone(MEMORY[0x1E69BDD08]);
  v64 = v54;
  v65 = [v63 initWithCallHistoryController:v64 callProviderManager:v59 contactStore:v61 suggestedContactStore:v62 metadataCache:v58];

  v66 = objc_allocWithZone(type metadata accessor for SearchResultsViewController());
  v67 = sub_1CFC711E8(v65);

  p_prots = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 16);
  v47 = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 16);
LABEL_6:
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_searchResultsController) = v67;
  SectionnedCollectionViewController.init(sections:)(v44);
  v69 = v68;
  swift_unknownObjectWeakAssign();
  v70 = v47[266];
  v71 = *(&v70->count + v69);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = v69;
  v73 = v71;

  sub_1CFC9CE68();

  v74 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection;
  *(*&v72[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection] + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_delegate + 8) = &off_1F4C6E200;
  swift_unknownObjectWeakAssign();
  v75 = *&v72[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_searchResultsController];
  if (v75)
  {
    *(v75 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_delegate + 8) = &off_1F4C6E2C0;
    swift_unknownObjectWeakAssign();
  }

  v76 = *&v72[v74];
  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v78 = (v76 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader);
  v79 = *(v76 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader);
  v80 = *(v76 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader + 8);
  *v78 = sub_1CFC6BFD4;
  v78[1] = v77;

  sub_1CFBABFA0(v79);

  v81 = [v101 currentDevice];
  v82 = [v81 userInterfaceIdiom];

  if (v82 == 6)
  {
    v83 = *(&v70->count + v69);
    sub_1CFC9CC88();
    v84 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB38, &qword_1CFCA7D30));
    v85 = sub_1CFC9E108();
    v86 = p_prots[256];
    v87 = *(&v86->count + v72);
    *(&v86->count + v72) = v85;

    v88 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
    [v88 setTitleView_];
  }

  v89 = sub_1CFC9F998();
  v90 = v95;
  (*(*(v89 - 8) + 56))(v95, 1, 1, v89);
  v91 = swift_allocObject();
  v91[2] = 0;
  v91[3] = 0;
  v91[4] = v72;
  v92 = v72;
  sub_1CFC57A48(0, 0, v90, &unk_1CFCA7D28, v91);

  sub_1CFBABFA0(v94);
  sub_1CFBABFA0(v97);

  sub_1CFBC2FB0(v99, &unk_1EC4EF810, &qword_1CFCA7900);
  sub_1CFBC2FB0(v90, &qword_1EC4ED950, &qword_1CFCA2710);
  return v92;
}

void *sub_1CFC6A630(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *sub_1CFC6A670(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFC6A6B0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CFC6A6F8()
{
  v1 = *(sub_1CFC9CF08() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CFC65230(v0 + v2, v3);
}

uint64_t sub_1CFC6A784()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD4A14;

  return sub_1CFC62964(v0);
}

uint64_t sub_1CFC6A824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC5BD18(a1, v4, v5, v6);
}

uint64_t sub_1CFC6A8D8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD4A14;

  return sub_1CFC5CF08(v0);
}

uint64_t sub_1CFC6A9A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC64A1C(a1, v4, v5, v6);
}

uint64_t sub_1CFC6AA58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC64208(a1, v4, v5, v6);
}

uint64_t sub_1CFC6AB14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD4A14;

  return sub_1CFC65FB4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CFC6ABDC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);

  v6 = 0;
  if (v4)
  {
    v7 = (v3 + 40);
    while (v6 < *(v3 + 16))
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 40);
      swift_unknownObjectRetain();
      v11(v14, ObjectType, v9);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      v12 = sub_1CFC9F6D8();
      sub_1CFCA0338();
      MEMORY[0x1D3872880](0);
      v13 = sub_1CFCA0378();
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
      if (v12 == v13)
      {
        goto LABEL_7;
      }

      ++v6;
      v7 += 2;
      if (v4 == v6)
      {
        v6 = 0;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return v6;
  }

  return result;
}

void sub_1CFC6AD3C()
{
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem) = 0;
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_featureFlags;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v2 = v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDetailProvider;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection) = 0;
  v3 = v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v4 = (v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController) = 0;
  v5 = (v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasLegacyUnreadVoicemails) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasSubscribedToTips) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowScreeningTip) = 2;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowFilteringTip) = 2;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection) = 0;
  v6 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_snapController;
  v7 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v8 = [objc_allocWithZone(MEMORY[0x1E695D1A0]) initWithContactStore_];

  *(v0 + v6) = v8;
  v9 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager;
  *(v0 + v9) = [objc_opt_self() shared];
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterSegmentedControl) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_acceptedContactsDidChangeSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isSearching) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___doneButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___clearAllButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterTitleButton) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___addFavoriteItem) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___keyPadPrototypeView) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keyPadKeysGenerated) = 0;
  swift_unknownObjectWeakInit();
  sub_1CFCA01D8();
  __break(1u);
}

uint64_t _s10CallsAppUI21RecentsViewControllerC017willPresentSearchF0yySo08UISearchF0CF_0()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 6 || (result = [*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_featureFlags) communicationDetailsEnabled], (result & 1) == 0))
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    sub_1CFC5F074();
  }

  return result;
}

uint64_t dispatch thunk of RecentsDetailProvider.detailViewController(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1CFC6C1A0;

  return v11(a1, a2, a3);
}

{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1CFC6C1A0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of RecentsDetailProvider.voicemailDetailViewController(for:deleteAction:callbackAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 24);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1CFC6C1A0;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of RecentsDetailProvider.voicemailDetailViewController(for:appType:deleteAction:callbackAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 32);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_1CFC6C1A0;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of RecentsDetailProvider.contactDetailViewController(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1CFC38B78;

  return v11(a1, a2, a3);
}

uint64_t sub_1CFC6B7BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFC6B824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFC6B88C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFC6B8F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC61E98(a1, v4, v5, v6);
}

uint64_t sub_1CFC6B9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC57250(a1, v4, v5, v6);
}

uint64_t sub_1CFC6BA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFC57614(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_206Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFC6BC88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC63184(a1, v4, v5, v6);
}

uint64_t sub_1CFC6BD44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC62F58(a1, v4, v5, v6);
}

uint64_t sub_1CFC6BDF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD431C;

  return sub_1CFC63184(a1, v4, v5, v6);
}

id sub_1CFC6BEB4(uint64_t a1)
{
  v3 = *(v1 + 16);
  [v3 dismissViewControllerAnimated:1 completion:0];
  v4 = *&v3[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager];

  return [v4 setLayout_];
}

uint64_t sub_1CFC6BF18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CFBD4A14;

  return sub_1CFC6569C();
}

uint64_t sub_1CFC6BFDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC5A950(a1, v4, v5, v6);
}

uint64_t type metadata accessor for VoicemailCustomBannerView()
{
  result = qword_1EE04EC30;
  if (!qword_1EE04EC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFC6C268()
{
  sub_1CFBB02CC();
  if (v0 <= 0x3F)
  {
    sub_1CFC6C2EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFC6C2EC()
{
  if (!qword_1EE04D168)
  {
    type metadata accessor for VoicemailSmartActionsBannerViewModel();
    v0 = sub_1CFC9F428();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04D168);
    }
  }
}

uint64_t sub_1CFC6C360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v102 = a2;
  v2 = type metadata accessor for VoicemailCustomBannerView();
  v96 = *(v2 - 8);
  v95 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v92 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
  v5 = *(v4 - 8);
  v98 = v4;
  v99 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBA0, &qword_1CFCA7E48);
  v9 = *(v8 - 8);
  v100 = v8 - 8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v85 - v13;
  v88 = sub_1CFC9E668();
  v108 = *(v88 - 8);
  v14 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBA8, &qword_1CFCA7E50);
  v18 = *(v17 - 8);
  v86 = v17;
  v87 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v85 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBB0, &qword_1CFCA7E58);
  v22 = *(v21 - 8);
  v90 = v21 - 8;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v97 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v103 = &v85 - v26;
  v27 = sub_1CFC9F1B8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBB8, &unk_1CFCA7E60);
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v107 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v85 - v37;

  sub_1CFC9F1A8();
  (*(v28 + 104))(v31, *MEMORY[0x1E6981630], v27);
  v39 = sub_1CFC9F1E8();

  (*(v28 + 8))(v31, v27);
  sub_1CFC9F538();
  sub_1CFC9DF68();
  LOBYTE(v115[0]) = 1;
  *&v111[3] = *&v111[27];
  *&v111[11] = *&v111[35];
  *&v111[19] = *&v111[43];
  v40 = &v38[*(v33 + 44)];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEED8, &qword_1CFCA5DF0);
  v41 = v40 + *(v89 + 28);
  sub_1CFC9E278();
  *v40 = swift_getKeyPath();
  v106 = v38;
  *v38 = v39;
  *(v38 + 1) = 0;
  *(v38 + 8) = 257;
  v42 = *&v111[8];
  *(v38 + 18) = *v111;
  *(v38 + 34) = v42;
  *(v38 + 50) = *&v111[16];
  *(v38 + 8) = *&v111[23];
  v91 = sub_1CFC9E688();
  LOBYTE(v115[0]) = 1;
  v43 = v104;
  sub_1CFC6CF60(v112);
  *&v110[7] = v112[0];
  *&v110[23] = v112[1];
  *&v110[39] = v112[2];
  *&v110[55] = v112[3];
  v105 = LOBYTE(v115[0]);
  sub_1CFC9E5E8();
  v109 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBC0, &qword_1CFCA7EA0);
  sub_1CFBA57C0(&qword_1EC4EFBC8, &qword_1EC4EFBC0, &qword_1CFCA7EA0);
  v44 = v85;
  sub_1CFC9ED18();
  sub_1CFC9E658();
  sub_1CFBA57C0(&qword_1EC4EFBD0, &qword_1EC4EFBA8, &qword_1CFCA7E50);
  sub_1CFC6EBF4(&qword_1EE04D360, MEMORY[0x1E697C540]);
  v45 = v103;
  v46 = v86;
  v47 = v88;
  sub_1CFC9EEC8();
  v48 = *(v108 + 8);
  v108 += 8;
  v48(v16, v47);
  (*(v87 + 8))(v44, v46);
  v49 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBD8, &unk_1CFCA7EA8) + 36));
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEEE0, &qword_1CFCA3630) + 28);
  v51 = *MEMORY[0x1E697DC08];
  v52 = sub_1CFC9DE78();
  (*(*(v52 - 8) + 104))(v49 + v50, v51, v52);
  *v49 = swift_getKeyPath();
  v53 = sub_1CFC9F108();
  KeyPath = swift_getKeyPath();
  v55 = (v45 + *(v90 + 44));
  v56 = v45;
  *v55 = KeyPath;
  v55[1] = v53;
  v57 = v92;
  sub_1CFC6EAB0(v104, v92);
  v58 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v59 = swift_allocObject();
  sub_1CFC6EB14(v57, v59 + v58);
  v60 = v94;
  sub_1CFC9F298();
  sub_1CFC9E658();
  sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20);
  v61 = v93;
  v62 = v98;
  sub_1CFC9EEC8();
  v48(v16, v47);
  (*(v99 + 8))(v60, v62);
  v63 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBE0, &qword_1CFCA7F18) + 36);
  sub_1CFC9F4A8();
  LOBYTE(v16) = sub_1CFC9EBB8();
  *(v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB88, &qword_1CFCA7E28) + 36)) = v16;
  v64 = sub_1CFC9F188();
  v65 = swift_getKeyPath();
  v66 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBE8, &qword_1CFCA7F20) + 36));
  *v66 = v65;
  v66[1] = v64;
  v67 = (v61 + *(v100 + 44));
  v68 = v61;
  v69 = v67 + *(v89 + 28);
  sub_1CFC9E278();
  *v67 = swift_getKeyPath();
  v70 = v107;
  sub_1CFBA29FC(v106, v107, &qword_1EC4EFBB8, &unk_1CFCA7E60);
  v71 = v97;
  sub_1CFBA29FC(v56, v97, &qword_1EC4EFBB0, &qword_1CFCA7E58);
  v72 = v101;
  sub_1CFBA29FC(v61, v101, &qword_1EC4EFBA0, &qword_1CFCA7E48);
  v73 = v70;
  v74 = v102;
  sub_1CFBA29FC(v73, v102, &qword_1EC4EFBB8, &unk_1CFCA7E60);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBF0, &unk_1CFCA7F28);
  v76 = v74 + v75[12];
  v77 = v91;
  v113[0] = v91;
  v113[1] = 0;
  v114[0] = v105;
  *&v114[1] = *v110;
  *&v114[17] = *&v110[16];
  *&v114[33] = *&v110[32];
  *&v114[49] = *&v110[48];
  v78 = *&v110[63];
  *&v114[64] = *&v110[63];
  v79 = *v114;
  *v76 = v91;
  *(v76 + 16) = v79;
  v80 = *&v114[16];
  v81 = *&v114[32];
  v82 = *&v114[48];
  *(v76 + 80) = v78;
  *(v76 + 48) = v81;
  *(v76 + 64) = v82;
  *(v76 + 32) = v80;
  v83 = v74 + v75[16];
  *v83 = 0;
  *(v83 + 8) = 1;
  sub_1CFBA29FC(v71, v74 + v75[20], &qword_1EC4EFBB0, &qword_1CFCA7E58);
  sub_1CFBA29FC(v72, v74 + v75[24], &qword_1EC4EFBA0, &qword_1CFCA7E48);
  sub_1CFBA29FC(v113, v115, &qword_1EC4EEF80, &qword_1CFCA5EF0);
  sub_1CFBC2FB0(v68, &qword_1EC4EFBA0, &qword_1CFCA7E48);
  sub_1CFBC2FB0(v103, &qword_1EC4EFBB0, &qword_1CFCA7E58);
  sub_1CFBC2FB0(v106, &qword_1EC4EFBB8, &unk_1CFCA7E60);
  sub_1CFBC2FB0(v72, &qword_1EC4EFBA0, &qword_1CFCA7E48);
  sub_1CFBC2FB0(v71, &qword_1EC4EFBB0, &qword_1CFCA7E58);
  v115[0] = v77;
  v115[1] = 0;
  v116 = v105;
  v118 = *&v110[16];
  v119 = *&v110[32];
  *v120 = *&v110[48];
  *&v120[15] = *&v110[63];
  v117 = *v110;
  sub_1CFBC2FB0(v115, &qword_1EC4EEF80, &qword_1CFCA5EF0);
  return sub_1CFBC2FB0(v107, &qword_1EC4EFBB8, &unk_1CFCA7E60);
}

uint64_t sub_1CFC6CF60@<X0>(uint64_t a1@<X8>)
{
  v43 = qword_1EC4EFB60;
  sub_1CFBB4460();

  v2 = sub_1CFC9EDF8();
  v4 = v3;
  v6 = v5;
  sub_1CFC9EC48();
  v7 = sub_1CFC9EDC8();
  v9 = v8;
  v11 = v10;

  sub_1CFBB44C0(v2, v4, v6 & 1);

  sub_1CFC9EC78();
  v12 = sub_1CFC9ED38();
  v14 = v13;
  LOBYTE(v2) = v15;
  sub_1CFBB44C0(v7, v9, v11 & 1);

  sub_1CFC9F178();
  v16 = sub_1CFC9ED58();
  v40 = v17;
  v41 = v16;
  v39 = v18;
  v42 = v19;

  sub_1CFBB44C0(v12, v14, v2 & 1);

  v20 = *(type metadata accessor for VoicemailCustomBannerView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  sub_1CFC9F408();
  swift_getKeyPath();
  sub_1CFC6EBF4(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v22 = *(v43 + 16);
  v21 = *(v43 + 24);

  v23 = sub_1CFC9EDF8();
  v25 = v24;
  LOBYTE(v22) = v26;
  sub_1CFC9EC58();
  v27 = sub_1CFC9EDC8();
  v29 = v28;
  v31 = v30;

  sub_1CFBB44C0(v23, v25, v22 & 1);

  sub_1CFC9F188();
  v32 = sub_1CFC9ED58();
  v34 = v33;
  LOBYTE(v14) = v35;
  v37 = v36;

  sub_1CFBB44C0(v27, v29, v31 & 1);

  *a1 = v41;
  *(a1 + 8) = v40;
  *(a1 + 16) = v39 & 1;
  *(a1 + 24) = v42;
  *(a1 + 32) = v32;
  *(a1 + 40) = v34;
  *(a1 + 48) = v14 & 1;
  *(a1 + 56) = v37;
  sub_1CFBB45F4(v41, v40, v39 & 1);

  sub_1CFBB45F4(v32, v34, v14 & 1);

  sub_1CFBB44C0(v32, v34, v14 & 1);

  sub_1CFBB44C0(v41, v40, v39 & 1);
}

uint64_t sub_1CFC6D2D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for VoicemailCustomBannerView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBF8, &qword_1CFCA7F60);
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v44 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = v39 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC00, &qword_1CFCA7F68);
  v41 = *(v43 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v50 = a1;
  v48 = v39 - v16;
  sub_1CFC9F3E8();
  v17 = *(v4 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  sub_1CFC9F408();
  v18 = v51;
  swift_getKeyPath();
  v51 = v18;
  sub_1CFC6EBF4(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v19 = *(v18 + 5);

  v20 = *(v19 + 16);
  if (!v20)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v39[0] = v5;
  v39[1] = v6;
  v40 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CFC7B7FC(v20, 0);
  v22 = sub_1CFC6EC44(&v51, v21 + 4, v20, v19);

  sub_1CFC4CEA4();
  if (v22 == v20)
  {
    v7 = v40;
    v5 = v39[0];
LABEL_5:
    v51 = v21;
    sub_1CFC6E070(&v51);

    swift_getKeyPath();
    sub_1CFC6EAB0(a1, v7);
    v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v24 = swift_allocObject();
    sub_1CFC6EB14(v7, v24 + v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0F0, &unk_1CFCA2000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED838, &qword_1CFCA7FC0);
    sub_1CFBA57C0(&qword_1EC4EFC08, &qword_1EC4ED0F0, &unk_1CFCA2000);
    sub_1CFBA57C0(&qword_1EC4ED8C0, &qword_1EC4ED838, &qword_1CFCA7FC0);
    v25 = v49;
    sub_1CFC9F3B8();
    v27 = v41;
    v26 = v42;
    v28 = *(v41 + 16);
    v29 = v43;
    v28(v42, v48, v43);
    v31 = v44;
    v30 = v45;
    v40 = *(v45 + 16);
    v32 = v25;
    v33 = v46;
    (v40)(v44, v32, v46);
    v34 = v47;
    v28(v47, v26, v29);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC10, &unk_1CFCA7FC8);
    (v40)(&v34[*(v35 + 48)], v31, v33);
    v36 = *(v30 + 8);
    v36(v49, v33);
    v37 = *(v27 + 8);
    v37(v48, v29);
    v36(v31, v33);
    return (v37)(v26, v29);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1CFC6D8AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for VoicemailCustomBannerView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  sub_1CFC9F408();
  swift_getKeyPath();
  sub_1CFC6EBF4(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v3 = *(v9 + 16);
  v4 = *(v9 + 24);

  sub_1CFBB4460();
  sub_1CFC9FED8();

  result = sub_1CFC9EDF8();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1CFC6D9F0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailCustomBannerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = *a1;
  v7 = a1[1];
  sub_1CFC6EAB0(a2, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1CFC6EB14(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v11 = (v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v8;
  v11[1] = v7;
  v14 = v8;
  v15 = v7;
  v16 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED840, &qword_1CFCA29B0);
  sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0);
  return sub_1CFC9F298();
}

uint64_t sub_1CFC6DB94(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for VoicemailCustomBannerView() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  sub_1CFC9F408();
  swift_getKeyPath();
  sub_1CFC6EBF4(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v5 = *(v12 + 40);

  if (*(v5 + 16))
  {
    v6 = sub_1CFC94B54(a1, a2);
    if (v7)
    {
      v8 = (*(v5 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
    }
  }

  sub_1CFBB4460();
  return sub_1CFC9F218();
}

uint64_t sub_1CFC6DCF8()
{
  sub_1CFC9F568();
  sub_1CFC9E018();
}

uint64_t sub_1CFC6DD64()
{
  v0 = *(type metadata accessor for VoicemailCustomBannerView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  sub_1CFC9F408();
  if (*(v3 + 48) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC6EBF4(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
    sub_1CFC9C148();
  }

  else
  {
    *(v3 + 48) = 0;
  }
}

uint64_t sub_1CFC6DEC0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC6DF0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1CFC9E588();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB70, &qword_1CFCA7E10);
  sub_1CFC6C360(v1, a1 + *(v3 + 44));
  v4 = sub_1CFC9EBB8();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB78, &qword_1CFCA7E18) + 36);
  *v5 = v4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB80, &qword_1CFCA7E20) + 36);
  sub_1CFC9F4C8();
  v7 = sub_1CFC9EBB8();
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB88, &qword_1CFCA7E28) + 36)) = v7;
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB90, &qword_1CFCA7E30) + 36);
  v9 = *MEMORY[0x1E697F468];
  v10 = sub_1CFC9E608();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB98, &unk_1CFCA7E38);
  *(v8 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1CFC6E070(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CFC7B8A8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1CFC6E0DC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1CFC6E0DC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CFCA0278();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1CFC9F8E8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1CFC6E2A4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CFC6E1D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CFC6E1D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1CFCA02B8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CFC6E2A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1CFC7E7DC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1CFC6E880((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1CFCA02B8();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1CFCA02B8();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CFBB2454(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1CFBB2454((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1CFC6E880((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1CFC7E7DC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1CFBB26AC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1CFCA02B8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1CFC6E880(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1CFCA02B8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1CFCA02B8() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1CFC6EAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailCustomBannerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC6EB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailCustomBannerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC6EB78()
{
  v0 = *(*(type metadata accessor for VoicemailCustomBannerView() - 8) + 80);

  return sub_1CFC6DCF8();
}

uint64_t sub_1CFC6EBF4(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1CFC6EC44(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for VoicemailCustomBannerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFC6EE90(uint64_t *a1)
{
  v3 = *(type metadata accessor for VoicemailCustomBannerView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CFC6D9F0(a1, v4);
}

uint64_t sub_1CFC6EF10()
{
  v1 = *(type metadata accessor for VoicemailCustomBannerView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = (v0 + v3);
  v6 = *(v4 + 8);
  return (*v4)(*v5, v5[1]);
}

unint64_t sub_1CFC6EFB0()
{
  result = qword_1EC4EFC18;
  if (!qword_1EC4EFC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EFB90, &qword_1CFCA7E30);
    sub_1CFC6F068();
    sub_1CFBA57C0(&qword_1EC4EFC48, &qword_1EC4EFB98, &unk_1CFCA7E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFC18);
  }

  return result;
}

unint64_t sub_1CFC6F068()
{
  result = qword_1EC4EFC20;
  if (!qword_1EC4EFC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EFB80, &qword_1CFCA7E20);
    sub_1CFC6F120();
    sub_1CFBA57C0(&qword_1EC4EFC40, &qword_1EC4EFB88, &qword_1CFCA7E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFC20);
  }

  return result;
}

unint64_t sub_1CFC6F120()
{
  result = qword_1EC4EFC28;
  if (!qword_1EC4EFC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EFB78, &qword_1CFCA7E18);
    sub_1CFBA57C0(&qword_1EC4EFC30, &qword_1EC4EFC38, qword_1CFCA8000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFC28);
  }

  return result;
}

uint64_t sub_1CFC6F1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 192);
  if (*(v4 + v5))
  {
    v6 = *(v4 + v5);
  }

  else
  {
    v6 = sub_1CFC6F25C(v4, a1, a2, a3, a4);
    v7 = *(v4 + v5);
    *(v4 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1CFC6F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = sub_1CFC6F538();
  v8 = v7;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1CFC9BE28();
  v13 = v12;

  swift_allocObject();
  swift_weakInit();
  v14 = type metadata accessor for SectionHeaderConfiguration();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 49) = 0;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 56) = 0;
  *(v17 + 64) = 0;
  *(v17 + 72) = 512;

  sub_1CFC9C188();
  *(v17 + 16) = v6;
  *(v17 + 24) = v8;
  v18 = *(v17 + 40);

  *(v17 + 32) = v11;
  *(v17 + 40) = v13;
  *(v17 + 48) = 1;
  if (*(v17 + 49) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC72428(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
    sub_1CFC9C148();
  }

  else
  {
    *(v17 + 49) = 0;
  }

  v20 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v20);
  sub_1CFC72428(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C148();

  return v17;
}

uint64_t sub_1CFC6F538()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1CFC9BE28();

  return v2;
}

uint64_t sub_1CFC6F670()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    *(result + 104) = (*(result + 104) & 1) == 0;
    sub_1CFC70CE0();
    sub_1CFC6F1D8(&unk_1F4C6EC28, sub_1CFBFA988, sub_1CFC72470, sub_1CFBB2738);
    v1[104];
    v1[104];
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_1CFC9BE28();
    v6 = v5;

    sub_1CFC861B8(v4, v6);

    v7 = *&v1[*(*v1 + 192)];
    v8 = v1[104];
    if (v8 == *(v7 + 49))
    {
      v10 = *&v1[*(*v1 + 192)];

      *(v7 + 49) = v8;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1CFC72428(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);

      sub_1CFC9C148();
    }
  }

  return result;
}

uint64_t sub_1CFC6F93C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    *(result + 104) = (*(result + 104) & 1) == 0;
    sub_1CFC70920();
    sub_1CFC6F1D8(&unk_1F4C6EC50, sub_1CFBFAC38, sub_1CFC72478, sub_1CFC72FBC);
    v1[104];
    v1[104];
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_1CFC9BE28();
    v6 = v5;

    sub_1CFC861B8(v4, v6);

    v7 = *&v1[*(*v1 + 192)];
    v8 = v1[104];
    if (v8 == *(v7 + 49))
    {
      v10 = *&v1[*(*v1 + 192)];

      *(v7 + 49) = v8;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1CFC72428(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);

      sub_1CFC9C148();
    }
  }

  return result;
}

void *sub_1CFC6FC08(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFD90, &unk_1CFCA8280);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = MEMORY[0x1E69E7CC0];
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = v14;
  *(v4 + 48) = 0;
  v4[7] = v14;
  v4[11] = 0;
  v4[12] = 0;
  v4[10] = 0;
  *(v4 + 104) = 0;
  v4[14] = 5;
  *(v4 + *(*v4 + 192)) = 0;
  v15 = *(*v4 + 200);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
  *(v4 + 16) = a1;
  v4[8] = a2;
  v4[9] = a3;
  type metadata accessor for RecentsStyleListCell();
  sub_1CFBA2D80(0, &qword_1EC4EFC60, 0x1E69BDCF8);
  swift_retain_n();

  sub_1CFC9FB68();
  (*(v10 + 32))(v4 + *(*v4 + 184), v13, v9);
  if (v8 == 2)
  {
    v17 = v4[8];
    v18 = type metadata accessor for PagedIDSFetcher();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();

    v22 = sub_1CFBFA9FC(v21);

    v23 = v4[12];
    v4[12] = v22;
  }

  else
  {
  }

  return v4;
}

void *sub_1CFC6FE88(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = MEMORY[0x1E69E7CC0];
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = v14;
  *(v4 + 48) = 0;
  v4[7] = v14;
  v4[11] = 0;
  v4[12] = 0;
  v4[10] = 0;
  *(v4 + 104) = 0;
  v4[14] = 5;
  *(v4 + *(*v4 + 192)) = 0;
  v15 = *(*v4 + 200);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
  *(v4 + 16) = a1;
  v4[8] = a2;
  v4[9] = a3;
  type metadata accessor for RecentsStyleListCell();
  sub_1CFC9C448();
  swift_retain_n();

  sub_1CFC9FB68();
  (*(v10 + 32))(v4 + *(*v4 + 184), v13, v9);
  if (v8 == 2)
  {
    v17 = v4[8];
    v18 = type metadata accessor for PagedIDSFetcher();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();

    v22 = sub_1CFBFA9FC(v21);

    v23 = v4[12];
    v4[12] = v22;
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1CFC700F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDA0, &unk_1CFCA8290);
  v5 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v20 - v6;
  v8 = sub_1CFC9C4E8();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  v23 = 0uLL;
  swift_retain_n();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF7C0, &qword_1CFCA78D8);
  sub_1CFC9F228();
  v13 = sub_1CFC9F178();
  v14 = v12;
  sub_1CFC9DCE8();
  v22 = v23;
  sub_1CFC9F228();

  v15 = v25;
  v16 = v24;
  *v7 = v14;
  *(v7 + 8) = v16;
  *(v7 + 3) = v15;
  *(v7 + 4) = v8;
  *(v7 + 5) = sub_1CFC72AC4;
  *(v7 + 6) = v9;
  *(v7 + 7) = sub_1CFC72ACC;
  *(v7 + 8) = v10;
  *(v7 + 9) = sub_1CFC72B14;
  *(v7 + 10) = v11;
  *(v7 + 11) = v13;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDB0, &unk_1CFCA82A0);
  sub_1CFC00A80();
  sub_1CFC00B68();
  v17 = v21;
  sub_1CFC9E798();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDD0, &unk_1CFCA82B0);
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_1CFC70380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDA0, &unk_1CFCA8290);
  v5 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = v54 - v6;
  v7 = sub_1CFC9C448();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v58 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v54 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v54 - v14;
  v55 = type metadata accessor for RecentsItemCell(0);
  v16 = *(*(v55 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v55);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v59 = v54 - v20;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDB0, &unk_1CFCA82A0);
  v21 = *(*(v61 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v61);
  v57 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v60 = v54 - v24;
  v25 = *(v8 + 16);
  v25(v15, a1, v7);
  v54[1] = a2;
  v56 = sub_1CFC9C4E8();
  v25(v13, a1, v7);
  v26 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  v62 = v8;
  v28 = v27 + v26;
  v29 = v7;
  v30 = v55;
  (*(v8 + 32))(v28, v13, v29);
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  *(v19 + 2) = swift_getKeyPath();
  v19[24] = 0;
  v31 = v30[6];
  *&v19[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDE0, &unk_1CFCA3E80);
  swift_storeEnumTagMultiPayload();
  v25(&v19[v30[7]], v15, v29);
  v32 = &v19[v30[8]];
  *v32 = sub_1CFC72B70;
  v32[1] = v27;

  v33 = sub_1CFC9C408();
  v34 = v33;
  if (v33)
  {
  }

  v35 = v34 == 0;
  v36 = &v19[v30[10]];
  v66 = v35;
  sub_1CFC9F228();
  v37 = v68;
  *v36 = v67;
  *(v36 + 1) = v37;
  v38 = v58;
  v25(v58, v15, v29);
  v39 = type metadata accessor for VoicemailResultCellState();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v56;

  v43 = sub_1CFC954B0(v38, v42);

  v44 = &v19[v30[9]];
  v44[3] = v39;
  v44[4] = sub_1CFC72428(&qword_1EC4EE250, type metadata accessor for VoicemailResultCellState);

  *v44 = v43;
  (*(v62 + 8))(v15, v29);
  v45 = v59;
  sub_1CFC00438(v19, v59);
  KeyPath = swift_getKeyPath();
  v47 = v45;
  v48 = v57;
  sub_1CFC00438(v47, v57);
  v49 = v60;
  v50 = v48 + *(v61 + 36);
  *v50 = KeyPath;
  *(v50 + 8) = 0;
  sub_1CFC72BD4(v48, v49);
  sub_1CFC72C44(v49, v64);
  swift_storeEnumTagMultiPayload();
  sub_1CFC00A80();
  sub_1CFC00B68();
  v51 = v65;
  sub_1CFC9E798();
  sub_1CFBC2FB0(v49, &unk_1EC4EFDB0, &unk_1CFCA82A0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDD0, &unk_1CFCA82B0);
  return (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
}

uint64_t sub_1CFC70920()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFD10, &unk_1CFCA3AA8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v30 - v4;
  v6 = *(v0 + 64);
  sub_1CFC9C548();
  v7 = sub_1CFC9C538();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_1CFBC2FB0(v5, &unk_1EC4EFD10, &unk_1CFCA3AA8);
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = *(v1 + 72);
    swift_getAtKeyPath();
    v9 = v30[0];
    (*(v8 + 8))(v5, v7);
  }

  v11 = sub_1CFC6F1D8(&unk_1F4C6EC50, sub_1CFBFAC38, sub_1CFC72478, sub_1CFC72FBC);
  v12 = *(v9 + 16);
  v13 = *(v1 + 112);
  if (((*(v11 + 72) ^ (v13 >= v12)) & 1) == 0)
  {
    *(v11 + 72) = v13 >= v12;

    if (*(v1 + 104))
    {
      goto LABEL_17;
    }

LABEL_8:
    v20 = sub_1CFC82D18(*(v1 + 112), v9);
    if (v19)
    {
      v22 = v19;
      v23 = v18;
      v24 = v17;
      sub_1CFCA02D8();
      swift_unknownObjectRetain_n();
      v25 = swift_dynamicCastClass();
      if (!v25)
      {
        swift_unknownObjectRelease();
        v25 = MEMORY[0x1E69E7CC0];
      }

      v26 = *(v25 + 16);

      if (__OFSUB__(v22 >> 1, v23))
      {
        __break(1u);
      }

      else if (v26 == (v22 >> 1) - v23)
      {
        v9 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v9)
        {
          goto LABEL_17;
        }

        v9 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
      v19 = v22;
      v18 = v23;
      v17 = v24;
    }

    sub_1CFC84830(v20, v17, v18, v19);
    v9 = v21;
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v14 = v13 >= v12;
  v15 = v11;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v30[-2] = v15;
  LOBYTE(v30[-1]) = v14;
  v30[0] = v15;
  sub_1CFC72428(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C148();

  if ((*(v1 + 104) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_17:
  v27 = *(v1 + 40);
  *(v1 + 40) = v9;

  result = swift_beginAccess();
  if (*(v1 + 24))
  {
    v29 = *(v1 + 32);
    swift_getObjectType();
    swift_unknownObjectRetain();
    SectionControllerParent.sectionItemsDidChange()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CFC70CE0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFD10, &unk_1CFCA3AA8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v35 - v5;
  v7 = *(v0 + 64);
  sub_1CFC9C548();
  v8 = sub_1CFC9C538();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_1CFBC2FB0(v6, &unk_1EC4EFD10, &unk_1CFCA3AA8);
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = *(v2 + 72);
    swift_getAtKeyPath();
    v10 = v35[0];
    (*(v9 + 8))(v6, v8);
  }

  v12 = v2;
  v13 = sub_1CFC6F1D8(&unk_1F4C6EC28, sub_1CFBFA988, sub_1CFC72470, sub_1CFBB2738);
  v14 = v10 >> 62;
  if (v10 >> 62)
  {
    v12 = v13;
    v15 = sub_1CFC9FFD8();
    v13 = v12;
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = *(v2 + 112);
  if (((*(v13 + 72) ^ (v16 >= v15)) & 1) == 0)
  {
    *(v13 + 72) = v16 >= v15;

    if (*(v2 + 104))
    {
      goto LABEL_50;
    }

LABEL_10:
    v20 = *(v2 + 112);
    if (v20 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v14)
      {
        if (v10 < 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        v6 = sub_1CFC9FFD8();
        if (sub_1CFC9FFD8() < 0)
        {
          goto LABEL_56;
        }

        if (v6 >= v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v6;
        }

        if (v6 < 0)
        {
          v23 = v20;
        }

        if (v20)
        {
          KeyPath = v23;
        }

        else
        {
          KeyPath = 0;
        }

        v21 = sub_1CFC9FFD8();
      }

      else
      {
        v21 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21 >= v20)
        {
          v22 = *(v2 + 112);
        }

        else
        {
          v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v20)
        {
          KeyPath = v22;
        }

        else
        {
          KeyPath = 0;
        }
      }

      if (v21 >= KeyPath)
      {
        if ((v10 & 0xC000000000000001) != 0 && KeyPath)
        {
          sub_1CFBA2D80(0, &qword_1EC4EFC60, 0x1E69BDCF8);

          v24 = 0;
          do
          {
            v25 = v24 + 1;
            sub_1CFCA00F8();
            v24 = v25;
          }

          while (KeyPath != v25);
        }

        else
        {
        }

        if (v14)
        {
          v12 = sub_1CFCA0208();
          v20 = v26;
          v6 = v27;
          KeyPath = v28;

          if (KeyPath)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v6 = 0;
          v12 = v10 & 0xFFFFFFFFFFFFFF8;
          v20 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
          KeyPath = (2 * KeyPath) | 1;
          if (KeyPath)
          {
LABEL_43:
            sub_1CFCA02D8();
            swift_unknownObjectRetain_n();
            v30 = swift_dynamicCastClass();
            if (!v30)
            {
              swift_unknownObjectRelease();
              v30 = MEMORY[0x1E69E7CC0];
            }

            v31 = *(v30 + 16);

            if (!__OFSUB__(KeyPath >> 1, v6))
            {
              if (v31 == (KeyPath >> 1) - v6)
              {
                v10 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                if (v10)
                {
                  goto LABEL_50;
                }

                v10 = MEMORY[0x1E69E7CC0];
                goto LABEL_49;
              }

              goto LABEL_58;
            }

LABEL_57:
            __break(1u);
LABEL_58:
            swift_unknownObjectRelease_n();
          }
        }

        sub_1CFC84720(v12, v20, v6, KeyPath);
        v10 = v29;
LABEL_49:
        swift_unknownObjectRelease();
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v17 = v16 >= v15;
  v18 = v13;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v35[-2] = v18;
  LOBYTE(v35[-1]) = v17;
  v19 = OBJC_IVAR____TtC10CallsAppUI26SectionHeaderConfiguration___observationRegistrar;
  v35[0] = v18;
  sub_1CFC72428(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  v12 = v18 + v19;
  v6 = 0;
  sub_1CFC9C148();

  if ((*(v2 + 104) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_50:
  v32 = *(v2 + 40);
  *(v2 + 40) = v10;

  result = swift_beginAccess();
  if (*(v2 + 24))
  {
    v34 = *(v2 + 32);
    swift_getObjectType();
    swift_unknownObjectRetain();
    SectionControllerParent.sectionItemsDidChange()();
    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1CFC711E8(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CFC9FFD8())
  {
    v4 = sub_1CFC72480(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_cancellables) = v4;
  v5 = sub_1CFC9C568();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v49 = a1;
  v8 = sub_1CFC9C4D8();
  v9 = OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_searchManager;
  *(v2 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_searchManager) = v8;
  KeyPath = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD50, &qword_1CFCA81F8);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v14 = sub_1CFC6FE88(0, v8, KeyPath);
  v15 = OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_callsSection;
  *(v2 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_callsSection) = v14;
  v16 = *(v2 + v9);
  v17 = swift_getKeyPath();
  v18 = *(v11 + 48);
  v19 = *(v11 + 52);
  swift_allocObject();

  v20 = sub_1CFC6FE88(1u, v16, v17);
  v21 = OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_voicemailSection;
  *(v2 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_voicemailSection) = v20;
  v22 = *(v2 + v9);
  v23 = swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD58, &unk_1CFCA8260);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = sub_1CFC6FC08(2u, v22, v23);
  *(v2 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_contactsSection) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD60, &unk_1CFCA8700);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1CFCA4C30;
  v29 = *(v2 + v15);
  v30 = sub_1CFBA57C0(&qword_1EC4EFD68, &qword_1EC4EFD50, &qword_1CFCA81F8);
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  *(v28 + 48) = *(v2 + v21);
  *(v28 + 56) = v30;
  v31 = sub_1CFBA57C0(&unk_1EC4EFD70, &qword_1EC4EFD58, &unk_1CFCA8260);
  *(v28 + 64) = v27;
  *(v28 + 72) = v31;

  SectionnedCollectionViewController.init(sections:)(v28);
  v33 = v32;
  v34 = *&v32[OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_callsSection];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = *(v34 + 80);
  v37 = *(v34 + 88);
  *(v34 + 80) = sub_1CFC72FD4;
  *(v34 + 88) = v35;
  v38 = v33;

  sub_1CFBABFA0(v36);

  v39 = *&v38[OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_voicemailSection];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = *(v39 + 80);
  v42 = *(v39 + 88);
  *(v39 + 80) = sub_1CFC72A34;
  *(v39 + 88) = v40;

  sub_1CFBABFA0(v41);

  v43 = *&v38[OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_contactsSection];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = *(v43 + 80);
  v46 = *(v43 + 88);
  *(v43 + 80) = sub_1CFC72A50;
  *(v43 + 88) = v44;

  sub_1CFBABFA0(v45);

  v47 = *&v38[OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_searchManager];

  sub_1CFC9C4B8();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF890, &unk_1CFCA8270);
  sub_1CFBA57C0(&qword_1EC4EFD80, &qword_1EC4EF890, &unk_1CFCA8270);
  sub_1CFC9DDA8();

  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  return v38;
}

void sub_1CFC716E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter);
      sub_1CFC88EA4(a1);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1CFC71778(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      v5 = [v1 contact];
      v6 = *(v4 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1CFCA2540;
      *(v7 + 32) = v5;
      v8 = v5;
      sub_1CFC8C10C(v7);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1CFC71874()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1CFC71A20();
  }
}

uint64_t sub_1CFC71A20()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1CFC72420;
  *(v3 + 24) = v2;
  v18 = sub_1CFBF63A4;
  v19 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1CFC63D88;
  v17 = &block_descriptor_13;
  v4 = _Block_copy(&aBlock);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    _s10CallsAppUI34SectionnedCollectionViewControllerC24sectionNeedsLayoutUpdate8animatedySb_tF_0(0);
    v8 = *&v5[OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_searchManager];
    sub_1CFC9C4E8();
    sub_1CFC9DCE8();

    v9 = v15;
    if (!v15)
    {
    }

    v10 = aBlock;

    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1CFC68300();
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      sub_1CFC9BE28();

      sub_1CFC5F074();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1CFC71CD4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_callsSection);
  sub_1CFC70920();
  v3 = *(a1 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_voicemailSection);
  sub_1CFC70920();
  v4 = *(a1 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_contactsSection);
  return sub_1CFC70CE0();
}

uint64_t sub_1CFC71D54()
{
  sub_1CFBA79B8(v0 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_searchManager);

  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_callsSection);

  v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_voicemailSection);

  v4 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_contactsSection);

  v5 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_cancellables);
}

id sub_1CFC71DD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFC71E94(void *a1)
{
  sub_1CFBC5F74(0);
  v3 = [a1 searchBar];
  v4 = [v3 text];

  if (v4)
  {
    v5 = sub_1CFC9F768();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [a1 searchBar];
  v9 = [v8 searchTextField];

  v10 = [v9 tokens];
  sub_1CFBA2D80(0, &qword_1EC4EFD08, 0x1E69DCF30);
  v11 = sub_1CFC9F8A8();

  if (!v7)
  {
    goto LABEL_10;
  }

  v12 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v12 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    goto LABEL_10;
  }

  if (v11 >> 62)
  {
    if (sub_1CFC9FFD8())
    {
      goto LABEL_10;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    v13 = *(v1 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_searchManager);
    sub_1CFC9C498();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1CFC68564();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MPContactSearchResult.valuesForHash.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CFCA1DD0;
  [v0 contact];
  sub_1CFBA2D80(0, &unk_1EE04CED8, 0x1E695CD58);
  sub_1CFC72300(&qword_1EE04CED0, &unk_1EE04CED8, 0x1E695CD58);
  sub_1CFCA0078();
  return v1;
}

uint64_t sub_1CFC721CC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFCA1DD0;
  [v1 contact];
  sub_1CFBA2D80(0, &unk_1EE04CED8, 0x1E695CD58);
  sub_1CFC72300(&qword_1EE04CED0, &unk_1EE04CED8, 0x1E695CD58);
  sub_1CFCA0078();
  return v2;
}

uint64_t sub_1CFC722AC(uint64_t a1)
{
  result = sub_1CFC72300(&qword_1EC4EFC58, &qword_1EC4EFC60, 0x1E69BDCF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CFC72300(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CFBA2D80(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFC723CC()
{
  result = qword_1EC4EFD00;
  if (!qword_1EC4EFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFD00);
  }

  return result;
}

uint64_t sub_1CFC72428(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CFC72480(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1CFC9FFD8();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD20, &qword_1CFCA81B8);
      result = sub_1CFCA00B8();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1CFC9FFD8();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x1D3872640](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_1CFC9DC98();
    sub_1CFC72428(&qword_1EC4EFD28, MEMORY[0x1E695BF10]);
    result = sub_1CFC9F6B8();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1CFC72428(&qword_1EC4EFD30, MEMORY[0x1E695BF10]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_1CFC9F6F8();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1CFC72714(uint64_t a1)
{
  v2 = sub_1CFC9C068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD38, &qword_1CFCA81C0);
    v10 = sub_1CFCA00B8();
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
      sub_1CFC72428(&qword_1EC4EFD40, MEMORY[0x1E6969AD0]);
      v18 = sub_1CFC9F6B8();
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
          sub_1CFC72428(&qword_1EC4EFD48, MEMORY[0x1E6969AD0]);
          v25 = sub_1CFC9F6F8();
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1CFC72AC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1CFBF86CC();
}

uint64_t sub_1CFC72ACC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1CFBF86F4();
}

uint64_t objectdestroy_80Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFC72B14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1CFBF8720();
}

uint64_t sub_1CFC72B70()
{
  v1 = *(*(sub_1CFC9C448() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1CFBF86A4();
}

uint64_t sub_1CFC72BD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDB0, &unk_1CFCA82A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC72C44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDB0, &unk_1CFCA82A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFC72CB4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1CFC9FFD8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDF0, &qword_1CFCA8348);
      v3 = sub_1CFCA00B8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1CFC9FFD8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x1D3872640](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1CFC9FDD8();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1CFBA2D80(0, &qword_1EE04CF00, 0x1E69D8C00);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1CFC9FDE8();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_1CFC9FDD8();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1CFBA2D80(0, &qword_1EE04CF00, 0x1E69D8C00);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1CFC9FDE8();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1CFC72FD8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1CFC730AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFC73114()
{
  result = qword_1EE04D6A0;
  if (!qword_1EE04D6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
    sub_1CFBB240C(&qword_1EE04D6B0, MEMORY[0x1E69936F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D6A0);
  }

  return result;
}

void sub_1CFC731C8(uint64_t a1, int a2, uint64_t a3)
{
  v124 = a3;
  v122 = a2;
  v123 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v121[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v121[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v121[-v11];
  v13 = sub_1CFC9CEA8();
  v127 = *(v13 - 8);
  v128 = v13;
  v14 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v126 = &v121[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1CFC9C448();
  v141 = *(v16 - 8);
  v17 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v121[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v21 = [v20 junkFilteringEnabled];

  if (v21)
  {
    LODWORD(v140) = [objc_opt_self() isFilterAsNewCallersEnabledForPhone];
  }

  else
  {
    LODWORD(v140) = 0;
  }

  v22 = *(v125 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
  v23 = sub_1CFC9C7B8();
  v24 = v23;
  v139 = *(v23 + 16);
  if (v139)
  {
    v143 = 0;
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v25 = 0;
    v138 = v141 + 16;
    v26 = *MEMORY[0x1E69935E0];
    v136 = v12;
    v137 = v26;
    v133 = (v141 + 8);
    v134 = v23;
    v142 = v7;
    v135 = v16;
    while (1)
    {
      if (v25 >= *(v24 + 16))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      (*(v141 + 16))(v19, v24 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v25, v16);
      if (v140)
      {
        sub_1CFC9C418();
        v27 = sub_1CFC9CC18();
        v28 = *(v27 - 8);
        if ((*(v28 + 48))(v12, 1, v27) == 1)
        {
          sub_1CFBC2FB0(v12, &qword_1EC4ED0D8, &qword_1CFCA4220);
        }

        else
        {
          v29 = sub_1CFC9CBE8();
          (*(v28 + 8))(v12, v27);
          if ((v29 & 1) == 0)
          {
            sub_1CFC9C668();
            v48 = sub_1CFC9C658();
            v30 = sub_1CFC9C628();

            goto LABEL_14;
          }
        }
      }

      v30 = 0;
LABEL_14:
      v31 = sub_1CFC9C308();
      if (!v31 || (v32 = v31, v33 = [v31 serviceProvider], v32, !v33))
      {
        sub_1CFC9F768();
LABEL_21:

        goto LABEL_22;
      }

      v34 = sub_1CFC9F768();
      v36 = v35;

      v37 = sub_1CFC9F768();
      if (!v36)
      {
        goto LABEL_21;
      }

      if (v34 == v37 && v36 == v38)
      {

LABEL_23:
        if (__OFADD__(v143, 1))
        {
          goto LABEL_65;
        }

        ++v143;
        goto LABEL_25;
      }

      v49 = sub_1CFCA02B8();

      if (v49)
      {
        goto LABEL_23;
      }

LABEL_22:
      if (sub_1CFC9C358())
      {
        goto LABEL_23;
      }

LABEL_25:
      sub_1CFC9C418();
      v39 = sub_1CFC9CC18();
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);
      v42 = v41(v10, 1, v39);
      v43 = v142;
      if (v42 == 1)
      {
        sub_1CFBC2FB0(v10, &qword_1EC4ED0D8, &qword_1CFCA4220);
      }

      else
      {
        v44 = sub_1CFC9CBF8();
        (*(v40 + 8))(v10, v39);
        if (v44)
        {
          v45 = sub_1CFC9C308();
          if (v45)
          {
            v46 = v45;
            v47 = [v45 read];

            if ((v47 | v30))
            {
              v43 = v142;
            }

            else
            {
              v43 = v142;
              if (__OFADD__(v129, 1))
              {
                goto LABEL_69;
              }

              ++v129;
            }
          }
        }
      }

      v50 = sub_1CFC9C408();
      if (v50)
      {
        v51 = v50;
        v52 = sub_1CFC9D658();

        if ((v52 & 1) == 0)
        {
          v53 = sub_1CFC9C408();
          if (v53)
          {
            v54 = v53;
            sub_1CFC9D5B8();

            LODWORD(v54) = sub_1CFC9D758();
            if (v54 == sub_1CFC9D758() && __OFADD__(v130++, 1))
            {
              goto LABEL_67;
            }
          }
        }
      }

      v56 = sub_1CFC9C408();
      if (v56)
      {
        v57 = v56;
        sub_1CFC9D5E8();

        LODWORD(v57) = sub_1CFC9D6B8();
        if (v57 == sub_1CFC9D6B8())
        {
          v58 = sub_1CFC9C408();
          if (v58)
          {
            v59 = v58;
            v60 = sub_1CFC9D658();

            if ((v60 & 1) == 0)
            {
              if (__OFADD__(v131, 1))
              {
                goto LABEL_68;
              }

              ++v131;
            }
          }
        }
      }

      sub_1CFC9C418();
      if (v41(v43, 1, v39) == 1)
      {
        sub_1CFBC2FB0(v43, &qword_1EC4ED0D8, &qword_1CFCA4220);
        v16 = v135;
        v12 = v136;
        v24 = v134;
      }

      else
      {
        v61 = sub_1CFC9CBE8();
        (*(v40 + 8))(v43, v39);
        v24 = v134;
        v16 = v135;
        if (v61)
        {
          v12 = v136;
          if (__OFADD__(v132, 1))
          {
            goto LABEL_66;
          }

          ++v132;
        }

        else
        {
          v12 = v136;
        }
      }

      ++v25;
      (*v133)(v19, v16);
      if (v139 == v25)
      {

        if ((v122 & 1) == 0)
        {
          v68 = v130;
          goto LABEL_59;
        }

        if (!v130)
        {
          goto LABEL_57;
        }

        v62 = sub_1CFC747B0();
        sub_1CFBA2D80(0, &qword_1EE04CF08, 0x1E696AD98);
        v63 = sub_1CFC9FDC8();
        v64 = [v62 stringFromNumber_];

        if (v64)
        {
          v65 = sub_1CFC9F768();
          v67 = v66;
        }

        else
        {
          v65 = 0;
          v67 = 0xE000000000000000;
        }

        v144 = v65;
        v145 = v67;

        MEMORY[0x1D3871D30](43, 0xE100000000000000);

        v76 = v145;
        v74 = v126;
        *v126 = v144;
        v74[1] = v76;
LABEL_62:
        v75 = MEMORY[0x1E6995A48];
        goto LABEL_63;
      }
    }
  }

  v131 = 0;
  v132 = 0;
  v129 = 0;
  v143 = 0;
  v68 = 0;
  if (v122)
  {
LABEL_57:
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v70 = [objc_opt_self() bundleForClass_];
    v71 = sub_1CFC9BE28();
    v73 = v72;

    v74 = v126;
    *v126 = v71;
    v74[1] = v73;
    goto LABEL_62;
  }

LABEL_59:
  v74 = v126;
  *v126 = v68;
  v75 = MEMORY[0x1E6995A40];
LABEL_63:
  v77 = *v75;
  v78 = v128;
  v139 = *(v127 + 104);
  v140 = v127 + 104;
  v139(v74, v77, v128);
  *(v125 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_mostRecentRequestsCount) = v124;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE98, &qword_1CFCA8710);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDA78, &qword_1CFCA2D20);
  v80 = *(*(v79 - 8) + 72);
  v81 = (*(*(v79 - 8) + 80) + 32) & ~*(*(v79 - 8) + 80);
  v134 = 8 * v80;
  v141 = v80;
  v82 = swift_allocObject();
  v135 = v82;
  *(v82 + 16) = xmmword_1CFCA8360;
  v83 = v82 + v81;
  v84 = *(v79 + 48);
  v85 = v79;
  v86 = *MEMORY[0x1E6995A70];
  v142 = sub_1CFC9CF08();
  v87 = *(v142 - 8);
  v88 = *(v87 + 104);
  v89 = (v87 + 104);
  v88(v83, v86, v142);
  v136 = v89;
  *(v83 + v84) = 0;
  v90 = *MEMORY[0x1E6995A40];
  v91 = v139;
  v139((v83 + v84), v90, v78);
  v92 = v83 + v80;
  v130 = v83;
  v93 = *(v85 + 48);
  v88(v92, *MEMORY[0x1E6995A88], v142);
  *(v92 + v93) = v143;
  LODWORD(v137) = v90;
  v91(v92 + v93, v90, v78);
  v94 = v91;
  v95 = v141;
  v96 = v83 + 2 * v141;
  v97 = v85;
  v98 = *(v85 + 48);
  v88(v96, *MEMORY[0x1E6995A78], v142);
  *(v96 + v98) = v129;
  v99 = v90;
  v100 = v128;
  v94(v96 + v98, v99, v128);
  v101 = v130;
  v102 = *(v97 + 48);
  v138 = v97;
  v103 = v142;
  v88(v130 + 3 * v95, *MEMORY[0x1E6995AA0], v142);
  (*(v127 + 16))(v101 + 3 * v95 + v102, v126, v100);
  v104 = v101 + 4 * v95;
  v105 = *(v97 + 48);
  v88(v104, *MEMORY[0x1E6995A98], v103);
  v133 = v88;
  *(v104 + v105) = v131;
  v106 = (v104 + v105);
  v107 = v100;
  v108 = v139;
  v139(v106, v137, v100);
  v109 = v141;
  v110 = v101 + 4 * v95 + v141;
  v111 = *(v138 + 48);
  v88(v110, *MEMORY[0x1E6995A68], v103);
  *(v110 + v111) = v132;
  v112 = v137;
  v108((v110 + v111), v137, v107);
  v113 = v101 + 6 * v109;
  v114 = v138;
  v115 = *(v138 + 48);
  v116 = v103;
  v117 = v133;
  v133(v113, *MEMORY[0x1E6995A80], v116);
  *(v113 + v115) = 0;
  v118 = v128;
  v108((v113 + v115), v112, v128);
  v119 = v101 + v134 - v141;
  v120 = *(v114 + 48);
  v117(v119, *MEMORY[0x1E6995A90], v142);
  *(v119 + v120) = v124;
  v108((v119 + v120), v112, v118);
  sub_1CFBE5C7C(v135);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1CFC9CE78();
  (*(v127 + 8))(v126, v118);
}

uint64_t sub_1CFC73EF4()
{
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v0 = sub_1CFC9D938();
  __swift_project_value_buffer(v0, qword_1EE052308);
  v1 = sub_1CFC9D918();
  v2 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1CFB9F000, v1, v2, "handleRequestsCacheUpdated", v3, 2u);
    MEMORY[0x1D3873280](v3, -1, -1);
  }

  return sub_1CFC76444();
}

uint64_t Sections.hashValue.getter()
{
  v1 = *v0;
  sub_1CFCA0338();
  MEMORY[0x1D3872880](v1);
  return sub_1CFCA0378();
}

uint64_t sub_1CFC74068(uint64_t result)
{
  v2 = v1;
  v3 = result & 1;
  v4 = *(v1 + 48);
  if (*(v4 + 16) == (result & 1))
  {
    *(v4 + 16) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB240C(&qword_1EE04FD50, type metadata accessor for RecentsEditMode);
    sub_1CFC9C148();
  }

  *(v2 + 40) = v3;
  return result;
}

uint64_t sub_1CFC7418C()
{
  v0 = sub_1CFC9C408();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1CFC9D658();

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1CFC741D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);

    sub_1CFC9C808();
  }
}

uint64_t sub_1CFC74260(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFC78FE8(a1);
  }

  return result;
}

id sub_1CFC742C0()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___callReportingViewModel;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___callReportingViewModel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___callReportingViewModel);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
    if (sub_1CFC9C818())
    {
      sub_1CFC72300(&qword_1EC4EFE80, &qword_1EC4EFE88, 0x1E69BDD08);
    }

    v6 = objc_allocWithZone(sub_1CFC9CA48());
    v7 = sub_1CFC9C998();
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1CFC74394(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  if (swift_unknownObjectWeakLoadStrong())
  {
    if (*(v1 + 64))
    {
      sub_1CFBA5878();
    }

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v1 + 32);
    swift_getObjectType();
    SectionControllerParent.sectionItemsDidChange()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CFC744A0()
{
  v1 = v0;
  v2 = sub_1CFC9C138();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9CF08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
  swift_beginAccess();
  (*(v8 + 16))(v11, v0 + v12, v7);
  sub_1CFBB240C(&qword_1EE04D668, MEMORY[0x1E6995AA8]);
  v13 = sub_1CFC9F6F8();
  result = (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerConfiguration))
    {
      v15 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerConfiguration);

      v16 = sub_1CFC77E6C();
      sub_1CFC85EFC(v16, v17);
    }

    MEMORY[0x1D386E620](0, 0);
    v18 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls);
    v19 = sub_1CFC9C0F8();
    v20 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_callsIndex;
    swift_beginAccess();
    v21 = *(v1 + v20);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = sub_1CFC94BCC(v19);
      if (v24)
      {
        v22 = *(*(v21 + 56) + 8 * v23);
      }

      else
      {
        v22 = 0;
      }
    }

    result = v18 - v22;
    if (__OFSUB__(v18, v22))
    {
      __break(1u);
    }

    else
    {
      v25 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
      sub_1CFC9C7C8();
      (*(v3 + 8))(v6, v2);
      sub_1CFC76444();
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v26 = *(v1 + 32);
        ObjectType = swift_getObjectType();
        (*(v26 + 16))(0, ObjectType, v26);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id sub_1CFC747B0()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___numberFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___numberFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___numberFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1CFC74824()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___remindMeActionConfigurator;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___remindMeActionConfigurator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___remindMeActionConfigurator);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
    v5 = sub_1CFC9C878();
    v6 = type metadata accessor for RecentsRemindMeActionConfigurator();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v2 = RecentsRemindMeActionConfigurator.init(recentsReminderActionProvider:)(v5);
    v9 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1CFC748C0(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v43 = a3;
  v42 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE540, &qword_1CFCA4690);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  v44 = v9;
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  v41 = sub_1CFC9CB88();
  v14 = *(v41 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = 1;
  *(v4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 40) = 0;
  *(v4 + 56) = 0;
  v18 = v10[7];
  v45 = v10 + 7;
  v46 = v18;
  v18(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_requestsCellRegistration, 1, 1, v9);
  v19 = *MEMORY[0x1E69DDC08];
  sub_1CFC9F768();
  type metadata accessor for SectionHeaderView();
  sub_1CFC9FB88();
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerConfiguration) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_contactActionsController) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_classificationControllerDelegate) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___callReportingViewModel) = 0;
  v20 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_requestsHandlerPresenter;
  v48 = 0u;
  v49 = 0u;
  v50 = 1;
  v21 = objc_allocWithZone(sub_1CFC9CAC8());
  *(v4 + v20) = sub_1CFC9CA98();
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_mostRecentRequestsCount) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_updateCancellable) = 0;
  v22 = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items) = MEMORY[0x1E69E7CC0];
  sub_1CFC9CF08();
  sub_1CFC9CD28();
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___numberFormatter) = 0;
  v23 = (v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader);
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_featureFlags;
  *(v4 + v24) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___remindMeActionConfigurator) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController__configurationProvider) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls) = 0;
  v25 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_callsIndex;
  *(v4 + v25) = sub_1CFBE5BA0(v22);
  v26 = a1;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource) = a1;
  v27 = v42;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_detailsPresenter) = v42;
  LOBYTE(v25) = v43 & 1;
  *(v4 + 64) = v43 & 1;
  v28 = *(v4 + v20);
  v29 = v26;

  v30 = v28;
  sub_1CFC9C7F8();
  sub_1CFC9CB68();
  (*(v14 + 8))(v17, v41);
  sub_1CFC9CA78();

  v31 = type metadata accessor for RecentsEditMode(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  sub_1CFC9C188();
  *(v4 + 48) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = v25;
  *(v35 + 24) = v27;
  *(v35 + 32) = v34;
  type metadata accessor for RecentsStyleListCell();
  sub_1CFC9C448();
  swift_retain_n();

  sub_1CFC9FB68();
  v36 = v10[4];
  v37 = v44;
  v36(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_cellRegistration, v13, v44);
  sub_1CFC9FB68();
  v36(v4 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_junkCellRegistration, v13, v37);
  swift_allocObject();
  swift_weakInit();
  v38 = v47;
  sub_1CFC9FB68();

  v46(v38, 0, 1, v37);
  v39 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_requestsCellRegistration;
  swift_beginAccess();
  sub_1CFC7F41C(v38, v4 + v39);
  swift_endAccess();
  return v4;
}

uint64_t sub_1CFC74F48(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - v14;
  if (a4)
  {
    sub_1CFC9C378();
  }

  else
  {
    v16 = sub_1CFC9C5A8();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  v17 = sub_1CFC9F728();
  [a1 setAccessibilityIdentifier_];

  MEMORY[0x1EEE9AC00](v18);
  *(&v20 - 6) = a3;
  *(&v20 - 5) = v15;
  *(&v20 - 4) = a5;
  *(&v20 - 3) = a6;
  *(&v20 - 2) = a2;
  sub_1CFBFFF24(sub_1CFC7F494, (&v20 - 8));
  return sub_1CFBC2FB0(v15, &qword_1EC4ED0B8, &unk_1CFCA49D0);
}

uint64_t sub_1CFC750D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a5;
  v85 = a4;
  v93 = a2;
  v94 = a3;
  v95 = a1;
  v87 = a6;
  v6 = sub_1CFC9E968();
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFC9C138();
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v72 - v14;
  v16 = sub_1CFC9C448();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v78 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v72 - v23;
  v72 = &v72 - v23;
  v25 = type metadata accessor for RecentsItemCell(0);
  v26 = *(*(v25 - 1) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v77 = &v72 - v30;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE200, &qword_1CFCA8720);
  v31 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v72 - v32;
  v34 = v17 + 16;
  v33 = *(v17 + 16);
  v35 = v24;
  v36 = v95;
  v33(v35, v95, v16);
  v76 = v15;
  sub_1CFBA29FC(v93, v15, &qword_1EC4ED0B8, &unk_1CFCA49D0);
  v33(v22, v36, v16);
  v37 = *(v17 + 80);
  v73 = ~v37;
  v79 = v18;
  v38 = swift_allocObject();
  *(v38 + 16) = v94;
  v39 = *(v17 + 32);
  v93 = v17 + 32;
  v90 = v39;
  v39((v38 + ((v37 + 24) & ~v37)), v22, v16);
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  *(v29 + 2) = swift_getKeyPath();
  v29[24] = 0;
  v40 = v25[6];
  *&v29[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFDE0, &unk_1CFCA3E80);
  swift_storeEnumTagMultiPayload();
  v41 = &v29[v25[7]];
  v42 = v16;
  v43 = v72;
  v75 = v34;
  v74 = v33;
  (v33)(v41);
  v44 = &v29[v25[8]];
  *v44 = sub_1CFC18310;
  v44[1] = v38;

  v45 = sub_1CFC9C408();
  v46 = v45;
  if (v45)
  {
  }

  v47 = v46 == 0;
  v48 = &v29[v25[10]];
  v96 = v47;
  sub_1CFC9F228();
  v49 = v98;
  *v48 = v97;
  *(v48 + 1) = v49;
  v50 = &v29[v25[9]];
  v51 = type metadata accessor for RecentsCellState();
  v50[3] = v51;
  v50[4] = sub_1CFBB240C(&unk_1EE04F9A8, type metadata accessor for RecentsCellState);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v50);
  v53 = v42;
  v90(boxed_opaque_existential_0Tm, v43, v42);
  *(boxed_opaque_existential_0Tm + *(v51 + 20)) = 1;
  sub_1CFBCCE88(v76, boxed_opaque_existential_0Tm + *(v51 + 24), &qword_1EC4ED0B8, &unk_1CFCA49D0);
  v54 = v77;
  sub_1CFC00438(v29, v77);
  KeyPath = swift_getKeyPath();
  v56 = v54;
  v57 = v91;
  sub_1CFC00438(v56, v91);
  v58 = (v57 + *(v92 + 36));
  v59 = v84;
  v60 = v85;
  *v58 = KeyPath;
  v58[1] = v60;
  v61 = v82;
  v62 = v83;
  v63 = v80;
  (*(v82 + 16))(v80, v59, v83);
  v64 = v78;
  v74(v78, v95, v53);
  v65 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v66 = (v81 + v37 + v65) & v73;
  v67 = swift_allocObject();
  v68 = v94;
  *(v67 + 16) = v60;
  *(v67 + 24) = v68;
  (*(v61 + 32))(v67 + v65, v63, v62);
  v90((v67 + v66), v64, v53);
  swift_retain_n();

  v69 = v86;
  sub_1CFC9E958();
  sub_1CFBB6E30();
  v70 = v91;
  sub_1CFC9EF98();

  (*(v88 + 8))(v69, v89);
  return sub_1CFBC2FB0(v70, &qword_1EC4EE200, &qword_1CFCA8720);
}

uint64_t sub_1CFC75814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  swift_getKeyPath();
  sub_1CFBB240C(&qword_1EE04FD50, type metadata accessor for RecentsEditMode);
  sub_1CFC9C158();

  if ((*(a1 + 16) & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      type metadata accessor for SectionnedCollectionViewController();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = [v11 collectionView];
        if (v12)
        {
          v13 = v12;
          if ([v12 allowsSelection])
          {
            sub_1CFBC5F74(0);
            v14 = sub_1CFC9C0C8();
            [v13 selectItemAtIndexPath:v14 animated:1 scrollPosition:0];

            v10 = v13;
            v13 = v14;
          }

          v10 = v13;
        }
      }
    }

    v15 = objc_opt_self();
    v16 = [v15 shared];
    v17 = [v16 current];

    if (v17 || (v21 = sub_1CFC9C408()) == 0)
    {
      v18 = [v15 shared];
      v19 = [v18 tapRecentsToCall];

      if (v19)
      {
        v20 = *(a2 + 16);
        sub_1CFC9C898();
LABEL_16:
        v8 = MEMORY[0x1E697C980];
        goto LABEL_17;
      }
    }

    else
    {
    }

    sub_1CFC88EA4(a3);
    goto LABEL_16;
  }

  *a4 = 0;
  v8 = MEMORY[0x1E697C978];
LABEL_17:
  v22 = *v8;
  v23 = sub_1CFC9E9D8();
  return (*(*(v23 - 8) + 104))(a4, v22, v23);
}

uint64_t sub_1CFC75A80()
{
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFEA0, &qword_1CFCA8718);
  v1[4] = sub_1CFBA57C0(&qword_1EC4EFEA8, &qword_1EC4EFEA0, &qword_1CFCA8718);
  __swift_allocate_boxed_opaque_existential_0Tm(v1);
  sub_1CFC9CD18();
  sub_1CFBB240C(&qword_1EC4EFEB0, MEMORY[0x1E69959A8]);
  sub_1CFC9E938();
  return MEMORY[0x1D38721F0](v1);
}

uint64_t sub_1CFC75B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CFC9C448();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return sub_1CFBF708C(v7, a2);
}

uint64_t sub_1CFC75C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFBFDCBC(a1, a3);
  }

  return result;
}

uint64_t sub_1CFC75CBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CFC9CF08();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v69 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = v67 - v8;
  v9 = sub_1CFC9C138();
  v76 = *(v9 - 8);
  v10 = *(v76 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v67 - v14;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v16 = sub_1CFC9D938();
  v17 = __swift_project_value_buffer(v16, qword_1EE052308);

  v73 = v17;
  v18 = sub_1CFC9D918();
  v19 = sub_1CFC9FAF8();

  v20 = os_log_type_enabled(v18, v19);
  v74 = v13;
  if (v20)
  {
    v75 = a1;
    v21 = swift_slowAlloc();
    v22 = v2;
    v23 = swift_slowAlloc();
    v82[0] = v23;
    *v21 = 136315394;
    v81 = *(v22 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls);
    v24 = sub_1CFCA0288();
    v26 = sub_1CFBB531C(v24, v25, v82);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v22 + 32);
      ObjectType = swift_getObjectType();
      v29 = (*(v27 + 40))(ObjectType, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
    }

    v81 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE70, &qword_1CFCA86E0);
    v30 = sub_1CFC9F798();
    v32 = sub_1CFBB531C(v30, v31, v82);

    *(v21 + 14) = v32;
    _os_log_impl(&dword_1CFB9F000, v18, v19, "Updated numberOfCalls %s visible: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3873280](v23, -1, -1);
    MEMORY[0x1D3873280](v21, -1, -1);

    v2 = v22;
    a1 = v75;
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_19;
  }

  v34 = *(v2 + 32);
  v35 = swift_getObjectType();
  v36 = (*(v34 + 40))(v35, v34);
  swift_unknownObjectRelease();
  v37 = *(v36 + 16);
  if (!v37)
  {

LABEL_19:
    v38 = 0;
    goto LABEL_20;
  }

  v75 = a1;
  v68 = v2;
  v38 = 0;
  v39 = *(v76 + 16);
  v40 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v67[1] = v36;
  v41 = v36 + v40;
  v42 = *(v76 + 72);
  v43 = (v76 + 8);
  v39(v15, v41, v9);
  while (1)
  {
    if (v38 < sub_1CFC9C0F8() && !sub_1CFC9C128())
    {
      v38 = sub_1CFC9C0F8();
    }

    (*v43)(v15, v9);
    v41 += v42;
    if (!--v37)
    {
      break;
    }

    v39(v15, v41, v9);
  }

  v2 = v68;
  a1 = v75;
LABEL_20:
  v44 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls;
  v45 = *(v2 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls);
  if (v45 >= a1)
  {
    if (v45 >= *(v2 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_mostRecentRequestsCount))
    {
      return result;
    }

    v57 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
    swift_beginAccess();
    v58 = v71;
    v59 = v2 + v57;
    v60 = v72;
    (*(v71 + 16))(v70, v59, v72);
    (*(v58 + 104))(v69, *MEMORY[0x1E6995A90], v60);
    sub_1CFBB240C(&qword_1EE04D660, MEMORY[0x1E6995AA8]);
    sub_1CFC9F878();
    sub_1CFC9F878();
    if (v77 == v79 && v78 == v80)
    {
      v61 = v72;
      v62 = *(v71 + 8);
      v62(v69, v72);
      v62(v70, v61);
    }

    else
    {
      v64 = sub_1CFCA02B8();
      v65 = v72;
      v66 = *(v71 + 8);
      v66(v69, v72);
      v66(v70, v65);

      if ((v64 & 1) == 0)
      {
        return result;
      }
    }
  }

  v46 = sub_1CFC9D918();
  v47 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1CFB9F000, v46, v47, "numberOfCalls has decreased, or our list of loaded requests is less than the total request #, see if we need to load older calls", v48, 2u);
    MEMORY[0x1D3873280](v48, -1, -1);
  }

  v49 = v74;
  MEMORY[0x1D386E620](v38, 0);
  v50 = *(v2 + v44);
  v51 = sub_1CFC9C0F8();
  v52 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_callsIndex;
  swift_beginAccess();
  v53 = *(v2 + v52);
  v54 = *(v53 + 16);
  if (v54)
  {
    v55 = sub_1CFC94BCC(v51);
    if (v56)
    {
      v54 = *(*(v53 + 56) + 8 * v55);
    }

    else
    {
      v54 = 0;
    }
  }

  result = v50 - v54;
  if (__OFSUB__(v50, v54))
  {
    __break(1u);
  }

  else
  {
    v63 = *(v2 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
    sub_1CFC9C7C8();
    return (*(v76 + 8))(v49, v9);
  }

  return result;
}

uint64_t sub_1CFC76444()
{
  v1 = v0;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE60, &qword_1CFCA86D0);
  v90 = *(v109 - 8);
  v2 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v104 = (&v89 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE68, &qword_1CFCA86D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v112 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v89 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v89 - v12;
  v103 = sub_1CFC9CF08();
  v14 = *(v103 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v102 = (&v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1CFC9C448();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v111 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v95 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v89 - v24);
  v26 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_callsIndex;
  swift_beginAccess();
  v27 = *(v1 + v26);
  v91 = v26;
  *(v1 + v26) = MEMORY[0x1E69E7CC8];

  v28 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
  v29 = sub_1CFC9C7B8();
  v30 = *(v29 + 16);
  v106 = v1;
  v101 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
  swift_beginAccess();
  v110 = v9;
  v108 = v18;
  if (!v30)
  {
    v96 = MEMORY[0x1E69E7CC0];
    v33 = v111;
LABEL_21:

    v114 = v96;

    sub_1CFC7CB2C(&v114);

    v102 = 0;
    v55 = 0;
    v103 = v18 + 16;
    v56 = (v90 + 56);
    v105 = v114;
    v57 = v114[2];
    v58 = (v90 + 48);
    v59 = v18;
    v60 = (v18 + 32);
    v61 = (v59 + 8);
    v25 = v109;
    v107 = v57;
    while (1)
    {
      while (1)
      {
        if (v55 == v57)
        {
          v62 = 1;
          v55 = v57;
        }

        else
        {
          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          if (v55 >= v105[2])
          {
            goto LABEL_47;
          }

          v63 = v108;
          v64 = v105 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v55;
          v65 = v25[12];
          v66 = v104;
          *v104 = v55;
          (*(v63 + 16))(v66 + v65, v64, v17);
          v9 = v110;
          sub_1CFBCCE88(v66, v112, &qword_1EC4EFE60, &qword_1CFCA86D0);
          v62 = 0;
          ++v55;
          v33 = v111;
        }

        v67 = v112;
        (*v56)(v112, v62, 1, v25);
        sub_1CFBCCE88(v67, v9, &qword_1EC4EFE68, &qword_1CFCA86D8);
        if ((*v58)(v9, 1, v25) == 1)
        {
          v87 = *(v106 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls);
          *(v106 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls) = v102;
          sub_1CFC75CBC(v87);
          return sub_1CFC74394(v105);
        }

        v68 = v25;
        v25 = *v9;
        (*v60)(v33, v9 + v68[12], v17);
        v69 = sub_1CFC9C308();
        if (v69)
        {
          break;
        }

        (*v61)(v33, v17);
        v25 = v109;
        v57 = v107;
      }

      v70 = v106;
      v71 = v91;
      swift_beginAccess();
      v72 = *(v70 + v71);
      LODWORD(v101) = swift_isUniquelyReferenced_nonNull_native();
      v73 = v71;
      v74 = *(v70 + v71);
      v113 = v74;
      *(v70 + v73) = 0x8000000000000000;
      v76 = sub_1CFC94BCC(v25);
      v77 = v74[2];
      v78 = (v75 & 1) == 0;
      v79 = v77 + v78;
      if (__OFADD__(v77, v78))
      {
        goto LABEL_48;
      }

      v80 = v75;
      if (v74[3] >= v79)
      {
        v33 = v111;
        if (v101)
        {
          goto LABEL_36;
        }

        v101 = v76;
        sub_1CFC7BE58();
        v76 = v101;
      }

      else
      {
        sub_1CFC7C8C8(v79, v101);
        v81 = sub_1CFC94BCC(v25);
        if ((v80 & 1) != (v82 & 1))
        {
          goto LABEL_51;
        }

        v76 = v81;
      }

      v33 = v111;
LABEL_36:
      v83 = v113;
      if (v80)
      {
        v25 = v102;
        *(v113[7] + 8 * v76) = v102;
      }

      else
      {
        v113[(v76 >> 6) + 8] |= 1 << v76;
        *(v83[6] + 8 * v76) = v25;
        v25 = v102;
        *(v83[7] + 8 * v76) = v102;
        v84 = v83[2];
        v85 = __OFADD__(v84, 1);
        v86 = v84 + 1;
        if (v85)
        {
          goto LABEL_50;
        }

        v83[2] = v86;
      }

      *(v106 + v91) = v83;
      swift_endAccess();
      (*v61)(v33, v17);
      v85 = __OFADD__(v25, 1);
      v102 = (v25 + 1);
      v25 = v109;
      v57 = v107;
      if (v85)
      {
        goto LABEL_49;
      }
    }
  }

  v94 = v13;
  v31 = v14;
  v32 = 0;
  v107 = (v18 + 16);
  v105 = (v18 + 8);
  v98 = (v31 + 16);
  v97 = (v31 + 8);
  v93 = (v18 + 32);
  v96 = MEMORY[0x1E69E7CC0];
  v100 = v29;
  v99 = v17;
  while (v32 < *(v29 + 16))
  {
    v34 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v35 = *(v18 + 72);
    (*(v18 + 16))(v25, v29 + v34 + v35 * v32, v17);
    v36 = sub_1CFC9C408();
    if (v36 && (v37 = v36, sub_1CFC9D5B8(), v38 = sub_1CFC9D758(), v39 = sub_1CFC9D758(), v37, v40 = v38 == v39, v18 = v108, !v40) || *(v106 + 64) == 1 && (MEMORY[0x1D386E830]() & 1) == 0)
    {
      (*v105)(v25, v17);
      v33 = v111;
    }

    else
    {
      v41 = v30;
      v42 = v102;
      v43 = v103;
      (*v98)(v102, v106 + v101, v103);
      sub_1CFC9C668();
      v44 = sub_1CFC9C658();
      v45 = sub_1CFC76F10(v25, v44);

      (*v97)(v42, v43);
      if (v45)
      {
        v46 = v94;
        sub_1CFC9C3A8();
        v47 = sub_1CFC9BFB8();
        v30 = v41;
        if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
        {
          v17 = v99;
          (*v105)(v25, v99);
          sub_1CFBC2FB0(v46, &qword_1EC4ED0D0, &unk_1CFCA1FE0);
          v33 = v111;
          v29 = v100;
        }

        else
        {
          sub_1CFBC2FB0(v46, &qword_1EC4ED0D0, &unk_1CFCA1FE0);
          v49 = *v93;
          v17 = v99;
          (*v93)(v95, v25, v99);
          v50 = v96;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v114 = v50;
          v29 = v100;
          v92 = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1CFBB22BC(0, v50[2] + 1, 1);
            v50 = v114;
          }

          v33 = v111;
          v53 = v50[2];
          v52 = v50[3];
          v54 = v50;
          if (v53 >= v52 >> 1)
          {
            sub_1CFBB22BC(v52 > 1, v53 + 1, 1);
            v33 = v111;
            v54 = v114;
          }

          v54[2] = (v53 + 1);
          v96 = v54;
          v92(v54 + v34 + v53 * v35, v95, v17);
          v18 = v108;
        }
      }

      else
      {
        v48 = v99;
        (*v105)(v25, v99);
        v33 = v111;
        v29 = v100;
        v30 = v41;
        v17 = v48;
      }
    }

    ++v32;
    v9 = v110;
    if (v30 == v32)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_1CFCA0308();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1CFC76F10(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v72 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v69 = &v67 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v71 = &v67 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v70 = &v67 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v67 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v74 = &v67 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v67 - v17;
  v19 = sub_1CFC9CF08();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v25 = [v24 junkFilteringEnabled];

  if (v25)
  {
    v25 = [objc_opt_self() isFilterAsNewCallersEnabledForPhone];
  }

  sub_1CFC9C668();
  v26 = sub_1CFC9C658();
  v73 = sub_1CFC9C638();

  (*(v20 + 16))(v23, v75, v19);
  v27 = (*(v20 + 88))(v23, v19);
  if (v27 == *MEMORY[0x1E6995A70])
  {
    v28 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v29 = [v28 junkFilteringEnabled];

    if (v29)
    {
      sub_1CFC9C418();
      v30 = sub_1CFC9CC18();
      v31 = *(v30 - 8);
      v32 = *(v31 + 48);
      if (v32(v18, 1, v30) == 1)
      {
        sub_1CFBC2FB0(v18, &qword_1EC4ED0D8, &qword_1CFCA4220);
      }

      else
      {
        v38 = sub_1CFC9CBE8();
        (*(v31 + 8))(v18, v30);
        if (v38 & v73)
        {
          goto LABEL_36;
        }
      }

      v39 = v74;
      sub_1CFC9C418();
      if (v32(v39, 1, v30) == 1)
      {
        sub_1CFBC2FB0(v39, &qword_1EC4ED0D8, &qword_1CFCA4220);
      }

      else
      {
        v47 = sub_1CFC9CBE8();
        (*(v31 + 8))(v39, v30);
        if (v47 & 1) == 0 && ((v25 ^ 1) & 1) == 0 && (sub_1CFC9C628())
        {
          goto LABEL_36;
        }
      }
    }

    v37 = sub_1CFC9C308();
    if (v37)
    {
      goto LABEL_19;
    }

    v37 = sub_1CFC9C408();
    if (v37)
    {
      goto LABEL_19;
    }

LABEL_36:
    LOBYTE(v33) = 0;
    return v33 & 1;
  }

  if (v27 == *MEMORY[0x1E6995A78])
  {
    sub_1CFC9C418();
    v33 = sub_1CFC9CC18();
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    if (v35(v14, 1, v33) == 1)
    {
      v36 = v14;
LABEL_10:
      sub_1CFBC2FB0(v36, &qword_1EC4ED0D8, &qword_1CFCA4220);
      goto LABEL_36;
    }

    v40 = v25;
    v41 = sub_1CFC9CBF8();
    v42 = *(v34 + 8);
    v42(v14, v33);
    if ((v41 & 1) == 0)
    {
      goto LABEL_36;
    }

    v43 = v70;
    sub_1CFC9C418();
    if (v35(v43, 1, v33) == 1)
    {
      sub_1CFBC2FB0(v43, &qword_1EC4ED0D8, &qword_1CFCA4220);
      v44 = v71;
    }

    else
    {
      v52 = sub_1CFC9CBE8();
      v42(v43, v33);
      v44 = v71;
      if (v52 & v73)
      {
        goto LABEL_36;
      }
    }

    sub_1CFC9C418();
    if (v35(v44, 1, v33) == 1)
    {
      sub_1CFBC2FB0(v44, &qword_1EC4ED0D8, &qword_1CFCA4220);
      goto LABEL_20;
    }

    v56 = sub_1CFC9CBE8();
    v42(v44, v33);
    LOBYTE(v33) = 1;
    if (v56 & 1) != 0 || ((v40 ^ 1))
    {
      return v33 & 1;
    }

    goto LABEL_45;
  }

  if (v27 == *MEMORY[0x1E6995AA0])
  {
    v37 = sub_1CFC9C408();
    if (v37)
    {
LABEL_19:

LABEL_20:
      LOBYTE(v33) = 1;
      return v33 & 1;
    }

    goto LABEL_36;
  }

  if (v27 == *MEMORY[0x1E6995A98])
  {
    v45 = sub_1CFC9C408();
    if (v45)
    {
      v46 = v45;
      sub_1CFC9D5E8();

      LODWORD(v33) = sub_1CFC9D6B8();
      LOBYTE(v33) = v33 == sub_1CFC9D6B8();
      return v33 & 1;
    }

    goto LABEL_36;
  }

  if (v27 == *MEMORY[0x1E6995A90])
  {
    v48 = v69;
    sub_1CFC9C418();
    v49 = sub_1CFC9CC18();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v48, 1, v49) != 1)
    {
      v51 = sub_1CFC9CBE8();
      (*(v50 + 8))(v48, v49);
      if ((v51 & 1) == 0)
      {
        LOBYTE(v33) = sub_1CFC9C628();
        return v33 & 1;
      }

      goto LABEL_36;
    }

    goto LABEL_42;
  }

  if (v27 == *MEMORY[0x1E6995A68])
  {
    v48 = v68;
    sub_1CFC9C418();
    v54 = sub_1CFC9CC18();
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v48, 1, v54) != 1)
    {
      LOBYTE(v33) = sub_1CFC9CBE8();
      (*(v55 + 8))(v48, v54);
      return v33 & 1;
    }

LABEL_42:
    v36 = v48;
    goto LABEL_10;
  }

  LOBYTE(v33) = 0;
  if (v27 == *MEMORY[0x1E6995A80] || v27 == *MEMORY[0x1E6995A60])
  {
    return v33 & 1;
  }

  if (v27 == *MEMORY[0x1E6995A88])
  {
    if ((sub_1CFC9C358() & 1) == 0)
    {
      v57 = sub_1CFC9C308();
      if (v57 && (v58 = v57, v59 = [v57 serviceProvider], v58, v59))
      {
        v60 = sub_1CFC9F768();
        v62 = v61;

        v63 = *MEMORY[0x1E69935E0];
        v64 = sub_1CFC9F768();
        if (v62)
        {
          if (v60 == v64 && v62 == v65)
          {

            if (!v25)
            {
              goto LABEL_20;
            }
          }

          else
          {
            LODWORD(v33) = sub_1CFCA02B8();

            if ((v33 & v25 & 1) == 0)
            {
              return v33 & 1;
            }
          }

          goto LABEL_45;
        }
      }

      else
      {
        v66 = *MEMORY[0x1E69935E0];
        sub_1CFC9F768();
      }

      goto LABEL_36;
    }

    if (!v25)
    {
      goto LABEL_20;
    }

LABEL_45:
    LOBYTE(v33) = sub_1CFC9C628() ^ 1;
    return v33 & 1;
  }

  result = sub_1CFCA01D8();
  __break(1u);
  return result;
}

uint64_t sub_1CFC77890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
  if ((sub_1CFC9C868() & 1) != 0 && (v5 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items, swift_beginAccess(), !*(*(v2 + v5) + 16)))
  {
    sub_1CFC9DB98();
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    sub_1CFC9DB88();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1CFC9DBB8();
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t sub_1CFC779F8()
{
  v1 = [objc_opt_self() shared];
  v2 = [v1 current];

  if (v2 == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 != 6)
    {
      sub_1CFC9CD28();
      if (v10 & 1) != 0 || (*(v0 + 64))
      {
        v5 = 1;
        return v5 & 1;
      }

      v7 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader);
      if (v7)
      {
        v8 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader + 8);

        v5 = v7(v9);
        sub_1CFBABFA0(v7);
        return v5 & 1;
      }
    }
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1CFC77BD8@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_1CFC77C48@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v8 = *(v5 - 8);
  (*(v8 + 104))(a3, v4, v5);
  v6 = *(v8 + 56);

  return v6(a3, 0, 1, v5);
}

uint64_t sub_1CFC77D1C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id sub_1CFC77D9C(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CFC791AC(a1);
  }

  sub_1CFBA2D80(0, &qword_1EC4EE600, 0x1E69DC8E8);
  v2 = sub_1CFC9F898();

  v3 = [objc_opt_self() configurationWithActions_];

  return v3;
}

uint64_t sub_1CFC77E6C()
{
  v1 = sub_1CFC9CEA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1CFC9CF08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  if (*(v0 + 64))
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_1CFC9BE28();

    return v16;
  }

  else
  {
    v29 = v2;
    v30 = v1;
    v18 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
    swift_beginAccess();
    v27 = *(v7 + 16);
    v27(v13, v0 + v18, v6);
    v19 = (*(v7 + 88))(v13, v6);
    v20 = *MEMORY[0x1E6995A70];
    v28 = *(v7 + 8);
    v28(v13, v6);
    if (v19 == v20)
    {
      *(v0 + 64);
      *(v0 + 64);
      type metadata accessor for BundleClass();
      v21 = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      v23 = sub_1CFC9BE28();
    }

    else
    {
      v27(v11, v0 + v18, v6);
      *v5 = 0;
      v25 = v29;
      v24 = v30;
      (*(v29 + 104))(v5, *MEMORY[0x1E6995A40], v30);
      v23 = sub_1CFC9CEF8();
      (*(v25 + 8))(v5, v24);
      v28(v11, v6);
    }

    return v23;
  }
}

uint64_t sub_1CFC78260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_1CFC9F998();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1CFC9F968();

  v7 = sub_1CFC9F958();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_1CFBDC330(0, 0, v5, &unk_1CFCA8678, v8);
}

uint64_t sub_1CFC78384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1CFC9F968();
  v4[7] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC7841C, v6, v5);
}

uint64_t sub_1CFC7841C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), *(v0 + 80) = Strong, , Strong))
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1CFC78538;

    return sub_1CFC60AB8();
  }

  else
  {
    v5 = *(v0 + 56);

    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1CFC78538()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1CFC7867C, v5, v4);
}

uint64_t sub_1CFC7867C()
{
  v1 = *(v0 + 56);

  **(v0 + 40) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFC786E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
    v2 = result;
    sub_1CFC9C878();
    v3 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
    swift_beginAccess();
    v4 = *(v2 + v3);

    sub_1CFC9CB58();
  }

  return result;
}

uint64_t sub_1CFC78790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9F638();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9F658();
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFC9F678();
  v26 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v24 = sub_1CFC9FC28();
  sub_1CFC9F668();
  sub_1CFC9F688();
  v25 = *(v13 + 8);
  v25(v16, v12);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  aBlock[4] = sub_1CFC182D0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC56F38;
  aBlock[3] = &block_descriptor_14;
  v21 = _Block_copy(aBlock);

  sub_1CFC9F648();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CFBB240C(&qword_1EE04D130, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBA57C0(&qword_1EE04D110, &unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFC9FF58();
  v22 = v24;
  MEMORY[0x1D3872120](v19, v11, v7, v21);
  _Block_release(v21);

  (*(v29 + 8))(v7, v4);
  (*(v27 + 8))(v11, v28);
  return (v25)(v19, v26);
}

uint64_t sub_1CFC78B70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CFC9C448();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9C088();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFC9C0A8();
  v13 = sub_1CFBB240C(&qword_1EE04D6D8, MEMORY[0x1E6969B50]);
  v14 = sub_1CFC9FA28();
  if (v14)
  {
    v15 = v14;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1CFBB22BC(0, v14 & ~(v14 >> 63), 0);
    v16 = v40;
    result = sub_1CFC9FA18();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v37 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
      swift_beginAccess();
      v31 = (v38 + 32);
      v32 = v38 + 16;
      v35 = a1;
      v36 = v1;
      v33 = v13;
      v34 = v12;
      while (1)
      {
        v18 = sub_1CFC9FA88();
        v20 = *v19;
        result = v18(v39, 0);
        if ((v20 & 0x8000000000000000) != 0)
        {
          break;
        }

        v21 = *(v2 + v37);
        if (v20 >= *(v21 + 16))
        {
          goto LABEL_18;
        }

        v22 = v11;
        v23 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v24 = *(v38 + 72);
        (*(v38 + 16))(v7, v21 + v23 + v24 * v20, v4);
        v40 = v16;
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1CFBB22BC(v25 > 1, v26 + 1, 1);
          v16 = v40;
        }

        *(v16 + 16) = v26 + 1;
        (*v31)(v16 + v23 + v26 * v24, v7, v4);
        v11 = v22;
        sub_1CFC9FA58();
        --v15;
        v2 = v36;
        if (!v15)
        {
          (*(v29 + 8))(v22, v30);
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v27 = *(v2 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
    sub_1CFC9C888();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE48, &unk_1CFCA86C0);
    sub_1CFBA57C0(&qword_1EC4EFE50, &qword_1EC4EFE48, &unk_1CFCA86C0);
    sub_1CFBA57C0(&qword_1EC4EFE58, &qword_1EC4EFE48, &unk_1CFCA86C0);
    sub_1CFC9FA98();
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (*(v2 + 64))
      {
        sub_1CFBA5878();
      }

      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v28 = *(v2 + 32);
      swift_getObjectType();
      SectionControllerParent.sectionItemsDidChange()();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1CFC78FE8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
  sub_1CFC9C888();
  v5 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
  swift_beginAccess();

  v6 = sub_1CFC7EEAC((v2 + v5), a1);

  v8 = *(*(v2 + v5) + 16);
  if (v8 < v6)
  {
    __break(1u);
  }

  else
  {
    sub_1CFBCC85C(v6, v8);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (*(v2 + 64))
      {
        sub_1CFBA5878();
      }

      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(v2 + 32);
      swift_getObjectType();
      SectionControllerParent.sectionItemsDidChange()();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1CFC79104()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_numberOfCalls);
  v3 = sub_1CFC9C0F8();
  v4 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_callsIndex;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_1CFC94BCC(v3);
    if (v8)
    {
      v6 = *(*(v5 + 56) + 8 * v7);
    }

    else
    {
      v6 = 0;
    }
  }

  result = v2 - v6;
  if (__OFSUB__(v2, v6))
  {
    __break(1u);
  }

  else
  {
    v10 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
    return sub_1CFC9C7C8();
  }

  return result;
}

uint64_t sub_1CFC791AC(void *a1)
{
  v2 = v1;
  v4 = sub_1CFC9C138();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v69 = sub_1CFC9C448();
  v7 = *(v69 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v69);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = a1;
  v68 = &v61 - v10;
  v11 = sub_1CFC9C0F8();
  v12 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
  swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v2 + v12);
    if (v11 < *(v13 + 16))
    {
      v14 = *(v7 + 80);
      v15 = v13 + ((v14 + 32) & ~v14) + v7[9] * v11;
      v64 = v6;
      v16 = v7[2];
      v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = v68;
      v18 = v7;
      v19 = v69;
      v16(v68, v15, v69);
      v77 = MEMORY[0x1E69E7CC0];
      v63 = swift_allocObject();
      v65 = v2;
      swift_weakInit();
      v20 = v66;
      v16(v66, v17, v19);
      v21 = v62;
      (*(v5 + 16))(v62, v67, v4);
      v22 = (v14 + 24) & ~v14;
      v23 = (v22 + v8 + *(v5 + 80)) & ~*(v5 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v63;
      v67 = v18;
      (v18[4])(v24 + v22, v20, v19);
      (*(v5 + 32))(v24 + v23, v21, v4);
      v75 = sub_1CFC7EDAC;
      v76 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v72 = 1107296256;
      v73 = sub_1CFC1A29C;
      v74 = &block_descriptor_110;
      v25 = _Block_copy(&aBlock);
      v26 = objc_opt_self();

      v27 = [v26 contextualActionWithStyle:1 title:0 handler:v25];
      _Block_release(v25);

      v28 = objc_opt_self();
      v29 = sub_1CFC9F728();
      v30 = [v28 __systemImageNamedSwift_];

      [v27 setImage_];
      v75 = sub_1CFC11EB4;
      v76 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v72 = 1107296256;
      v73 = sub_1CFC1A370;
      v74 = &block_descriptor_113_0;
      v31 = _Block_copy(&aBlock);
      v32 = v27;
      [v32 setAccessibilityIdentifierBlock_];
      _Block_release(v31);

      v7 = v32;
      MEMORY[0x1D3871DC0]();
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_26:
  sub_1CFC9F8C8();
LABEL_4:
  sub_1CFC9F8F8();
  v33 = v77;
  v34 = v65;
  v35 = sub_1CFC74824();
  v36 = v34 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v37 = *(*(v36 + 8) + 8);
  }

  else
  {
    v37 = 0;
  }

  v38 = &v35[OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate];
  swift_beginAccess();
  *(v38 + 1) = v37;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  v39 = *(v34 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___remindMeActionConfigurator);

  v40 = v68;
  v41 = sub_1CFC1A858(v68);

  if (v41)
  {
    v42 = v41;
    MEMORY[0x1D3871DC0]();
    if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v59 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1CFC9F8C8();
    }

    sub_1CFC9F8F8();

    v33 = v77;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    (v67[1])(v40, v69);
    return v33;
  }

  v44 = Strong;
  v45 = type metadata accessor for ClassificationControllerDelegate();
  v46 = objc_allocWithZone(v45);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v70.receiver = v46;
  v70.super_class = v45;
  v47 = objc_msgSendSuper2(&v70, sel_init);
  v48 = *(v34 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_classificationControllerDelegate);
  *(v34 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_classificationControllerDelegate) = v47;
  v49 = v47;

  v50 = sub_1CFC9C308();
  if (!v50)
  {
    (v67[1])(v40, v69);
LABEL_22:

    swift_unknownObjectRelease();
    return v33;
  }

  v51 = v50;
  v52 = *(v34 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
  v53 = sub_1CFC9C818();
  if (!v53)
  {
    (v67[1])(v40, v69);

    goto LABEL_22;
  }

  v54 = v53;
  v55 = sub_1CFC742C0();
  v56 = sub_1CFBCE2E8(v51, v54, v44, v49);

  if (!v56)
  {
    (v67[1])(v40, v69);

    goto LABEL_22;
  }

  v57 = v56;
  MEMORY[0x1D3871DC0]();
  if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v60 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CFC9F8C8();
  }

  sub_1CFC9F8F8();

  swift_unknownObjectRelease();
  (v67[1])(v40, v69);
  return v77;
}

uint64_t sub_1CFC799A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1CFC9C0A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 64) == 1)
    {
      v14 = *(result + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
      sub_1CFC9C878();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED500, &qword_1CFCA2420);
      v15 = sub_1CFC9C448();
      v16 = *(v15 - 8);
      v17 = *(v16 + 72);
      v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1CFCA1DD0;
      (*(v16 + 16))(v19 + v18, a6, v15);
      sub_1CFC9CB58();
    }

    else
    {
      v20 = sub_1CFC9C0F8();
      sub_1CFBB240C(&unk_1EE04D6C8, MEMORY[0x1E6969B50]);
      sub_1CFC9FF48();
      v21[1] = v20;
      sub_1CFC9FF38();
      sub_1CFC78B70(v12);
      (*(v9 + 8))(v12, v8);
    }

    a3(1);
  }

  return result;
}

uint64_t sub_1CFC79C2C()
{
  sub_1CFBA79B8(v0 + 24);
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_cellRegistration;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_junkCellRegistration, v4);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_requestsCellRegistration, &qword_1EC4EE540, &qword_1CFCA4690);
  v6 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerRegistration;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerConfiguration);

  sub_1CFBA79B8(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_delegate);

  v9 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_detailsPresenter);

  v10 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_updateCancellable);

  v11 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items);

  v12 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
  v13 = sub_1CFC9CF08();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);

  v14 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader + 8);
  sub_1CFBABFA0(*(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader));

  v15 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController____lazy_storage___remindMeActionConfigurator);

  v16 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_callsIndex);

  return v0;
}

uint64_t sub_1CFC79E90()
{
  sub_1CFC79C2C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*sub_1CFC79EE8(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1CFC13CB4;
}

uint64_t (*sub_1CFC79F88(uint64_t a1))(uint64_t result, char a2)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(v1 + 40);
  return sub_1CFC79FB4;
}

uint64_t sub_1CFC79FB4(uint64_t result, char a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(v3 + 48);
  v6 = v4 ^ *(v5 + 16);
  if (a2)
  {
    if ((v4 ^ *(v5 + 16)))
    {
      goto LABEL_5;
    }

LABEL_6:
    *(v5 + 16) = v4;
    goto LABEL_7;
  }

  if (((v4 ^ *(v5 + 16)) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *v2 = v5;
  sub_1CFBB240C(&qword_1EE04FD50, type metadata accessor for RecentsEditMode);
  sub_1CFC9C148();

  v3 = v2[1];
LABEL_7:
  *(v3 + 40) = v4;
  return result;
}

uint64_t sub_1CFC7A184()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1CFC7A210()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
  v3 = sub_1CFC9C828();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(type metadata accessor for ContactActionsController());
  v6 = sub_1CFC9619C(v3, v4);
  v7 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_contactActionsController);
  *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_contactActionsController) = v6;
  v8 = v6;

  v9 = sub_1CFC96E60();
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1CFCA2540;
    *(v11 + 32) = v10;
  }

  else
  {

    return 0;
  }

  return v11;
}

uint64_t sub_1CFC7A33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB240C(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_1CFC7A40C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB240C(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1CFBF6EB4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1CFBB256C(v4);
}

uint64_t sub_1CFC7A4F8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1CFC7ED84;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1CFBB256C(v3);
  sub_1CFBB240C(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C148();
  sub_1CFBABFA0(v6);
}

uint64_t sub_1CFC7A654(uint64_t a1)
{
  result = sub_1CFBB240C(&qword_1EE04D6C0, MEMORY[0x1E6993688]);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Sections(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Sections(uint64_t result, unsigned int a2, unsigned int a3)
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