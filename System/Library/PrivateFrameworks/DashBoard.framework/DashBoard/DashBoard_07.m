Swift::Void __swiftcall DBInstrumentClusterRootViewController.navigationStateProvider(_:frontmostIdentifierDidChange:)(DBNavigationStateProvider *_, Swift::String frontmostIdentifierDidChange)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = sub_248383930();
  v7 = [v5 applicationWithBundleIdentifier_];

  if (v7)
  {
    if ([v7 supportsInstrumentClusterNavigation] && objc_msgSend(v7, sel_presentsFullScreen))
    {
      v15 = v7;
      v8 = v7;
LABEL_9:
      sub_2482C764C(v8);

      goto LABEL_10;
    }
  }

  v9 = [(DBNavigationStateProvider *)_ mostRecentClusterNavigatingApp];
  if (v9)
  {
    v10 = v9;
    v11 = [v4 sharedInstance];
    v12 = [v11 applicationWithBundleIdentifier_];

    if (v12)
    {
      v15 = v12;
      v8 = v12;
      goto LABEL_9;
    }
  }

  if (*&v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController])
  {
    return;
  }

  v13 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible;
  if (v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible] != 1)
  {
    return;
  }

  v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible] = 0;
  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 setHidden_];
LABEL_10:
}

uint64_t MKZoomDirection.db_description.getter(uint64_t a1)
{
  v1 = 1701736302;
  if (a1 == 2)
  {
    v1 = 7632239;
  }

  if (a1 == 1)
  {
    return 28265;
  }

  else
  {
    return v1;
  }
}

void sub_2482C84CC()
{
  v1 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v2 = [v1 wallpaperPreferences];

  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = [v2 currentWallpaper];
  if (!v3)
  {
LABEL_6:

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = [v3 traits];
  v5 = [v4 isBlack];

  if ((v5 & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceStyle];

  swift_unknownObjectRelease();
  v8 = v7 == 2;
LABEL_8:
  v9 = *&v0[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene];
  if (v9)
  {
    v10 = *&v0[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController];
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      sub_248383DC0();
      v13 = *sub_24827BA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24839CCA0;
      v15 = sub_2482970D8();
      v16 = 0x64656C6261736964;
      if (v8)
      {
        v16 = 0x64656C62616E65;
      }

      v17 = 0xE800000000000000;
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = v15;
      if (v8)
      {
        v17 = 0xE700000000000000;
      }

      *(v14 + 32) = v16;
      *(v14 + 40) = v17;
      v18 = v13;
      v19 = [v11 identity];
      *(v14 + 96) = sub_24814FB28(0, &unk_27EE92560);
      *(v14 + 104) = sub_248151298(&unk_27EE91ED0, &unk_27EE92560);
      *(v14 + 72) = v19;
      sub_248382A40();

      v20 = swift_allocObject();
      *(v20 + 16) = v8;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_2482CAF38;
      *(v21 + 24) = v20;
      v24[4] = sub_2482BB938;
      v24[5] = v21;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 1107296256;
      v24[2] = sub_248282F3C;
      v24[3] = &block_descriptor_15;
      v22 = _Block_copy(v24);

      [v12 updateSceneSettingsWithBlock_];

      _Block_release(v22);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_2482C88DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_248381170();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = DBIsInternalInstall_0();
  if (result)
  {
    sub_248381140();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      return sub_24822D578(v2, &qword_27EE904C0);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      sub_2482C6A5C(v6);
      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_2482C8AC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_248381170();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = DBIsInternalInstall_0();
  if (result)
  {
    sub_248381140();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      return sub_24822D578(v2, &qword_27EE904C0);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      sub_2482C6A5C(v6);
      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_2482C8CAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_248381170();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = DBIsInternalInstall_0();
  if (result)
  {
    sub_248381140();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      return sub_24822D578(v2, &qword_27EE904C0);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      sub_2482C6A5C(v6);
      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

id sub_2482C8E94(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__application] = 0;
  *&v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene] = 0;
  *&v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController] = 0;
  v4 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__lastShowUIURL;
  v5 = sub_248381170();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  swift_unknownObjectUnownedInit();
  v6 = [objc_allocWithZone(DBSceneWorkspace) initWithIdentifier_];
  *&v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__clusterSceneWorkspace] = v6;
  v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for DBInstrumentClusterRootViewController();
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

void _s9DashBoard37DBInstrumentClusterRootViewControllerC06updateF9AreaFrame_04safeI6InsetsySo6CGRectV_So06UIEdgeL0VtF_0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  MinY = CGRectGetMinY(*&a1);
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  MinX = CGRectGetMinX(v39);
  v10 = [swift_unknownObjectUnownedLoadStrong() displayConfiguration];
  swift_unknownObjectRelease();
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v40.origin.x = v12;
  v40.origin.y = v14;
  v40.size.width = v16;
  v40.size.height = v18;
  MaxY = CGRectGetMaxY(v40);
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  v34 = MaxY - CGRectGetMaxY(v41);
  v20 = [swift_unknownObjectUnownedLoadStrong() displayConfiguration];
  swift_unknownObjectRelease();
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v42.origin.x = v22;
  v42.origin.y = v24;
  v42.size.width = v26;
  v42.size.height = v28;
  MaxX = CGRectGetMaxX(v42);
  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = a4;
  [v4 setAdditionalSafeAreaInsets_];
  v30 = *&v4[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController];
  if (v30)
  {
    v31 = *((*MEMORY[0x277D85000] & *v30) + 0xA8);
    v32 = v30;
    v31();
  }

  v33 = [v5 view];
  if (v33)
  {
    v37 = v33;
    [v33 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for DBInstrumentClusterRootViewController()
{
  result = qword_27EE96E88;
  if (!qword_27EE96E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DBIsInternalInstall_0()
{
  v0 = DBIsInternalInstall_onceToken_5;
  v1 = &__block_literal_global_51;
  if (v0 != -1)
  {
    dispatch_once(&DBIsInternalInstall_onceToken_5, &__block_literal_global_51);
  }

  return DBIsInternalInstall_isInternal_5;
}

uint64_t sub_2482C9288(void *a1, uint64_t a2)
{
  v3 = v2;
  v24 = sub_2483837A0();
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2483837E0();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248381170();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_24814FB28(0, &qword_27EE90280);
  v23 = sub_248383E50();
  (*(v12 + 16))(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v3;
  (*(v12 + 32))(v15 + v14, &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_2482CB6CC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_65;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = v3;

  sub_2483837C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24815C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
  sub_24815C9C8();
  v19 = v24;
  sub_2483842D0();
  v20 = v23;
  MEMORY[0x24C1CB440](0, v10, v7, v16);
  _Block_release(v16);

  (*(v27 + 8))(v7, v19);
  return (*(v25 + 8))(v10, v26);
}

uint64_t sub_2482C95F0(void *a1)
{
  v3 = sub_2483837A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2483837E0();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24814FB28(0, &qword_27EE90280);
  v10 = sub_248383E50();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  aBlock[4] = sub_2482CB5BC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_59;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = v1;

  sub_2483837C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24815C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
  sub_24815C9C8();
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_2482C988C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2483837A0();
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2483837E0();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24814FB28(0, &qword_27EE90280);
  v13 = sub_248383E50();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v3;
  v14[4] = a1;
  v14[5] = a2;
  aBlock[4] = sub_2482CB0A4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_53;
  v15 = _Block_copy(aBlock);

  v16 = v3;

  sub_2483837C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24815C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
  sub_24815C9C8();
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v12, v9, v15);
  _Block_release(v15);

  (*(v19 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v18);
}

void _s9DashBoard37DBInstrumentClusterRootViewControllerC011applicationG0_17addedApplications07updatedJ007removedJ0ySo013DBApplicationG0C_ShySo0M0CGA2LtF_0()
{
  v1 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene;
  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene);
  if (!v2)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController;
  v4 = *(v0 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController);
  if (!v4)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__application;
  v6 = *(v0 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__application);
  if (!v6)
  {
    return;
  }

  v7 = v2;
  v8 = v4;
  v23 = v6;
  v9 = [v7 settings];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v11 proxiedApplicationBundleIdentifier];
  if (!v13)
  {
    sub_248383960();
    v13 = sub_248383930();
  }

  v14 = [v12 applicationWithBundleIdentifier_];

  if (!v14)
  {
LABEL_11:

    if ([v23 isLockedOrHidden])
    {
      goto LABEL_12;
    }

LABEL_14:

    v21 = v23;
    goto LABEL_15;
  }

  if (![v23 isLockedOrHidden])
  {
    v22 = [v14 isLockedOrHidden];

    if (v22)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_12:
  sub_248383DC0();
  v15 = *sub_24827BA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24839C7F0;
  v17 = v15;
  v18 = [v7 identity];
  *(v16 + 56) = sub_24814FB28(0, &unk_27EE92560);
  *(v16 + 64) = sub_248151298(&unk_27EE91ED0, &unk_27EE92560);
  *(v16 + 32) = v18;
  sub_248382A40();

  [v7 invalidate];
  v19 = *(v0 + v1);
  *(v0 + v1) = 0;

  [v8 invalidate];
  v20 = *(v0 + v3);
  *(v0 + v3) = 0;

  v21 = *(v0 + v5);
  *(v0 + v5) = 0;
LABEL_15:
}

uint64_t sub_2482C9E70(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController);
    if (v3)
    {
      v4 = result;
      v5 = v2;
      v6 = v3;
      sub_248383DC0();
      v7 = *sub_24827BA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v8 = swift_allocObject();
      v9 = MEMORY[0x277D83B88];
      *(v8 + 16) = xmmword_24839CCA0;
      v10 = MEMORY[0x277D83C10];
      *(v8 + 56) = v9;
      *(v8 + 64) = v10;
      *(v8 + 32) = v4;
      v11 = v7;
      v12 = [v5 identity];
      *(v8 + 96) = sub_24814FB28(0, &unk_27EE92560);
      *(v8 + 104) = sub_248151298(&unk_27EE91ED0, &unk_27EE92560);
      *(v8 + 72) = v12;
      sub_248382A40();

      v13 = swift_allocObject();
      *(v13 + 16) = v4;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_2482CB094;
      *(v14 + 24) = v13;
      v16[4] = sub_2482BB938;
      v16[5] = v14;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 1107296256;
      v16[2] = sub_248282F3C;
      v16[3] = &block_descriptor_47;
      v15 = _Block_copy(v16);

      [v6 updateSceneSettingsWithBlock_];

      _Block_release(v15);
      LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

      if (v5)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_2482CA10C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController);
    if (v3)
    {
      v4 = result;
      v5 = v2;
      v6 = v3;
      sub_248383DC0();
      v7 = *sub_24827BA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v8 = swift_allocObject();
      v9 = MEMORY[0x277D83B88];
      *(v8 + 16) = xmmword_24839CCA0;
      v10 = MEMORY[0x277D83C10];
      *(v8 + 56) = v9;
      *(v8 + 64) = v10;
      *(v8 + 32) = v4;
      v11 = v7;
      v12 = [v5 identity];
      *(v8 + 96) = sub_24814FB28(0, &unk_27EE92560);
      *(v8 + 104) = sub_248151298(&unk_27EE91ED0, &unk_27EE92560);
      *(v8 + 72) = v12;
      sub_248382A40();

      v13 = swift_allocObject();
      *(v13 + 16) = v4;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_2482BB7D4;
      *(v14 + 24) = v13;
      v16[4] = sub_2482BB938;
      v16[5] = v14;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 1107296256;
      v16[2] = sub_248282F3C;
      v16[3] = &block_descriptor_37;
      v15 = _Block_copy(v16);

      [v6 updateSceneSettingsWithBlock_];

      _Block_release(v15);
      LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

      if (v5)
      {
        __break(1u);
      }
    }
  }

  return result;
}

void _s9DashBoard37DBInstrumentClusterRootViewControllerC23navigationStateProvider_30navigatingIdentifiersDidChangeySo012DBNavigationiJ0C_SaySSGtF_0(void *a1)
{
  sub_248383D80();
  v3 = *sub_24827BA50();
  sub_248382A40();

  v4 = [a1 mostRecentClusterNavigatingApp];
  if (v4 && (v5 = v4, v6 = [objc_opt_self() sharedInstance], v7 = objc_msgSend(v6, sel_applicationWithBundleIdentifier_, v5), v6, v5, v7))
  {
    v10 = v7;
    sub_2482C764C(v7);
  }

  else
  {
    if (*&v1[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController])
    {
      return;
    }

    v8 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible;
    if (v1[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible] != 1)
    {
      return;
    }

    v1[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible] = 0;
    v9 = [v1 view];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 setHidden_];
  }
}

void sub_2482CA534(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_248382A90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = sub_24827C568();
  v55 = *(v7 + 2);
  v56 = v15;
  v54 = v7 + 16;
  v55(v14);

  v16 = sub_248382A80();
  v17 = sub_248383DC0();

  v18 = os_log_type_enabled(v16, v17);
  v57 = v11;
  if (v18)
  {
    v19 = v7;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v58 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_24814A378(a1, a2, &v58);
    *(v20 + 12) = 1026;
    *(v20 + 14) = a3 & 1;
    _os_log_impl(&dword_248146000, v16, v17, "Handling death of process with identifier: %{public}s isCrash: %{BOOL,public}d", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C1CD5F0](v21, -1, -1);
    v22 = v20;
    v7 = v19;
    MEMORY[0x24C1CD5F0](v22, -1, -1);

    v23 = v19;
  }

  else
  {

    v23 = v7;
  }

  v24 = *(v23 + 1);
  v24(v14, v6);
  v25 = [objc_opt_self() sharedInstance];
  v26 = sub_248383930();
  v27 = [v25 applicationWithBundleIdentifier_];

  if (v27)
  {
    v28 = [v27 appPolicy];
    if (!v28)
    {
LABEL_20:

      return;
    }

    v29 = v28;
    if ([v28 launchUsingTemplateUI])
    {
      v30 = v57;
      (v55)(v57, v56, v6);

      v31 = sub_248382A80();
      v32 = sub_248383DC0();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v51 = v24;
        v35 = v7;
        v36 = v34;
        v58 = v34;
        *v33 = 136446210;
        *(v33 + 4) = sub_24814A378(a1, a2, &v58);
        _os_log_impl(&dword_248146000, v31, v32, "[DBInstrumentClusterRootViewController] Dead process is template app %{public}s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v37 = v36;
        v7 = v35;
        v24 = v51;
        MEMORY[0x24C1CD5F0](v37, -1, -1);
        MEMORY[0x24C1CD5F0](v33, -1, -1);

        v38 = v57;
      }

      else
      {

        v38 = v30;
      }

      v24(v38, v6);
      v39 = *(v53 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene);
      if (!v39)
      {
LABEL_17:
        v50 = v29;
        v29 = v27;
LABEL_19:

        v27 = v29;
        goto LABEL_20;
      }

      v40 = *(v53 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__application);
      if (v40)
      {
        v51 = v24;
        sub_24814FB28(0, &qword_27EE91E40);
        v41 = v39;
        v27 = v27;
        v42 = v40;
        v43 = sub_248384030();

        if (v43)
        {
          v57 = v7;
          (v55)(v52, v56, v6);
          v44 = v41;
          v45 = sub_248382A80();
          v46 = sub_248383DC0();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            *v47 = 138412290;
            v49 = [v44 identity];
            *(v47 + 4) = v49;
            *v48 = v49;
            _os_log_impl(&dword_248146000, v45, v46, "[DBInstrumentClusterRootViewController] Dead process had template host scene, deactivating %@", v47, 0xCu);
            sub_24822D578(v48, &qword_27EE8FE40);
            MEMORY[0x24C1CD5F0](v48, -1, -1);
            MEMORY[0x24C1CD5F0](v47, -1, -1);
          }

          v51(v52, v6);
          [v44 deactivate_];
        }

        goto LABEL_17;
      }
    }

    v50 = v27;
    goto LABEL_19;
  }
}

void sub_2482CAAE8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = [objc_opt_self() sharedInstance];
  v9 = sub_248383930();
  v25 = [v8 applicationWithBundleIdentifier_];

  if (!v25)
  {
    return;
  }

  v10 = [v25 appPolicy];
  if (!v10)
  {
    goto LABEL_14;
  }

  v24 = v10;
  if ([v10 launchUsingTemplateUI])
  {
    v11 = *(v2 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController);
    if (!v11)
    {
LABEL_12:
      v12 = v24;
      goto LABEL_13;
    }

    v12 = v24;
    if ((*(v2 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible) & 1) == 0)
    {
LABEL_13:

LABEL_14:
      v22 = v25;
      goto LABEL_15;
    }

    v13 = *(v2 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__application);
    if (v13)
    {
      v14 = v2;
      sub_24814FB28(0, &qword_27EE91E40);
      v15 = v11;
      v25 = v25;
      v16 = v13;
      v17 = sub_248384030();

      if (v17)
      {
        sub_248383DC0();
        v18 = *sub_24827BA50();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_24839C7F0;
        *(v19 + 56) = MEMORY[0x277D837D0];
        *(v19 + 64) = sub_2482970D8();
        *(v19 + 32) = a1;
        *(v19 + 40) = a2;
        v20 = v18;

        sub_248382A40();

        v21 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__lastShowUIURL;
        swift_beginAccess();
        sub_2482B04BC(v14 + v21, v7);
        (*((*MEMORY[0x277D85000] & *v15) + 0x98))(v7);

        sub_24822D578(v7, &qword_27EE904C0);
        return;
      }

      goto LABEL_12;
    }
  }

  v22 = v24;
LABEL_15:
}

void sub_2482CAE20()
{
  sub_2482CAEE0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2482CAEE0()
{
  if (!qword_27EE92550)
  {
    sub_248381170();
    v0 = sub_2483841F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE92550);
    }
  }
}

void sub_2482CAF48(void *a1)
{
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = [swift_unknownObjectUnownedLoadStrong() sceneIdentifierForApplication_];
  swift_unknownObjectRelease();
  if (!v6)
  {
    sub_248383960();
    v6 = sub_248383930();
  }

  [a1 setIdentifier_];

  v7 = [v5 info];
  v8 = [v7 processIdentity];

  if (v8)
  {
    v9 = [objc_opt_self() defaultIdentityForProcessIdentity_];

    [a1 setClientIdentity_];

    [a1 setSpecification_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2482CB0A4()
{
  v1 = v0;
  v2 = v0[2];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v35[0] = 1684632949;
  v35[1] = 0xE400000000000000;
  sub_2483843E0();
  if (!*(v2 + 16) || (v6 = sub_2482652B8(v36), (v7 & 1) == 0))
  {
    sub_2482655AC(v36);
    return;
  }

  sub_24814A550(*(v2 + 56) + 32 * v6, v37);
  sub_2482655AC(v36);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v8 = [swift_unknownObjectUnownedLoadStrong() displayConfiguration];
  swift_unknownObjectRelease();
  v9 = [v8 hardwareIdentifier];

  if (!v9)
  {

    return;
  }

  v10 = sub_248383960();
  v12 = v11;

  if (v10 == v35[0] && v12 == v35[1])
  {
  }

  else
  {
    v13 = sub_248384680();

    if ((v13 & 1) == 0)
    {
      return;
    }
  }

  if (sub_248383960() == v3 && v14 == v5)
  {
  }

  else
  {
    v15 = sub_248384680();

    if ((v15 & 1) == 0)
    {
      return;
    }
  }

  strcpy(v35, "zoomDirection");
  HIWORD(v35[1]) = -4864;
  v16 = MEMORY[0x277D837D0];
  sub_2483843E0();
  if (!*(v2 + 16) || (v17 = sub_2482652B8(v36), (v18 & 1) == 0))
  {
    sub_2482655AC(v36);
    goto LABEL_23;
  }

  sub_24814A550(*(v2 + 56) + 32 * v17, v37);
  sub_2482655AC(v36);
  if (!swift_dynamicCast())
  {
LABEL_23:
    v19 = 1;
    goto LABEL_24;
  }

  if (v35[0])
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

LABEL_24:
  v20 = *(v4 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene);
  if (v20)
  {
    v21 = *(v4 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController);
    if (v21)
    {
      v22 = v21;
      v23 = v20;
      sub_248383DC0();
      v24 = *sub_24827BA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v25 = swift_allocObject();
      v26 = v25;
      *(v25 + 16) = xmmword_24839CCA0;
      if (v19 == 1)
      {
        v27 = 28265;
      }

      else
      {
        v27 = 7632239;
      }

      if (v19 == 1)
      {
        v28 = 0xE200000000000000;
      }

      else
      {
        v28 = 0xE300000000000000;
      }

      *(v25 + 56) = v16;
      *(v25 + 64) = sub_2482970D8();
      v26[4] = v27;
      v26[5] = v28;
      v29 = v24;
      v30 = [v23 identity];
      v26[12] = sub_24814FB28(0, &unk_27EE92560);
      v26[13] = sub_248151298(&unk_27EE91ED0, &unk_27EE92560);
      v26[9] = v30;
      sub_248382A40();

      v31 = [objc_allocWithZone(MEMORY[0x277CF92A0]) initWithZoomDirection_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24839C700;
      *(inited + 32) = v31;
      v33 = v31;
      sub_24814F838(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_24814FB28(0, &unk_27EE91610);
      sub_248151298(&qword_27EE90E30, &unk_27EE91610);
      v34 = sub_248383C70();

      [v22 sendSceneActions_];
    }
  }
}

void sub_2482CB5BC()
{
  sub_24814FB28(0, &qword_27EE92190);
  v0 = [swift_unknownObjectUnownedLoadStrong() screenInfo];
  swift_unknownObjectRelease();
  v1 = sub_248384030();

  if (v1)
  {
    sub_2482C7230();
  }
}

uint64_t sub_2482CB65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2482CB6CC()
{
  v1 = v0;
  v2 = *(*(sub_248381170() - 8) + 80);
  sub_24814FB28(0, &qword_27EE92190);
  v3 = [swift_unknownObjectUnownedLoadStrong() screenInfo];
  swift_unknownObjectRelease();
  v4 = sub_248384030();

  if (v4)
  {
    sub_2482C6A5C(v1 + ((v2 + 32) & ~v2));
  }
}

uint64_t __DBIsInternalInstall_block_invoke_5()
{
  result = MGGetBoolAnswer();
  DBIsInternalInstall_isInternal_5 = result;
  return result;
}

id sub_2482CB858(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x277D84F98];
  *&v2[OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__wallpaperScenes] = MEMORY[0x277D84F98];
  *&v2[OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__wallpaperViewControllers] = v4;
  *&v2[OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__wallpaperPresenters] = v4;
  *&v2[OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationScenes] = v4;
  *&v2[OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationSceneViewControllers] = v4;
  *&v2[OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationPresenters] = v4;
  *&v2[OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__navigationApp] = 0;
  v5 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__lastNavigationURL;
  v6 = sub_248381170();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  swift_unknownObjectUnownedInit();
  v7 = [objc_allocWithZone(DBSceneWorkspace) initWithIdentifier_];
  *&v2[OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__sceneWorkspace] = v7;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for DBInstrumentClusterSceneCoordinator(0);
  v8 = objc_msgSendSuper2(&v14, sel_init);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = v8;
  v11 = [Strong environmentConfiguration];
  swift_unknownObjectRelease();
  v12 = [v11 processMonitor];

  [v12 addObserver_];
  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_2482CBA50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_248381170();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_2482CBABC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v92 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v92 - v14;
  v16 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__wallpaperPresenters;
  swift_beginAccess();
  v17 = *&v2[v16];
  if (*(v17 + 16))
  {

    v18 = sub_2482D1138(a1);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      a2[3] = type metadata accessor for _DBInstrumentClusterScenePresenter(0);
      a2[4] = &off_285A541A8;
      *a2 = v20;
      return;
    }
  }

  v98 = a2;
  v95 = v16;
  v96 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__environment;
  v21 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v22 = [v21 wallpaperPreferences];

  if (!v22 || (swift_getKeyPath(), sub_248381870(), , v23 = sub_248383930(), , v24 = [v22 wallpaperForLayoutIdentifier_], v22, v23, (v97 = v24) == 0))
  {
    v39 = sub_248383DA0();
    v40 = *sub_24827BA50();
    (*(v7 + 16))(v9, a1, v6);
    if (os_log_type_enabled(v40, v39))
    {
      v41 = v40;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v100[0] = v43;
      *v42 = 136446210;
      sub_2482D11E4();
      v44 = sub_248384650();
      v46 = v45;
      (*(v7 + 8))(v9, v6);
      v47 = sub_24814A378(v44, v46, v100);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_248146000, v41, v39, "[DBInstrumentClusterSceneCoordinator] Unable to get wallpaper for layoutID %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x24C1CD5F0](v43, -1, -1);
      MEMORY[0x24C1CD5F0](v42, -1, -1);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    goto LABEL_13;
  }

  v25 = sub_2482CC5A4(a1);
  v26 = a1;
  if (!v25)
  {
    v49 = sub_248383DA0();
    v50 = *sub_24827BA50();
    (*(v7 + 16))(v12, a1, v6);
    if (os_log_type_enabled(v50, v49))
    {
      v51 = v50;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v100[0] = v53;
      *v52 = 136446210;
      sub_2482D11E4();
      v54 = sub_248384650();
      v56 = v55;
      (*(v7 + 8))(v12, v6);
      v57 = sub_24814A378(v54, v56, v100);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_248146000, v51, v49, "[DBInstrumentClusterSceneCoordinator] Unable to create wallpaper scene for layoutID %{public}s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x24C1CD5F0](v53, -1, -1);
      MEMORY[0x24C1CD5F0](v52, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      (*(v7 + 8))(v12, v6);
    }

LABEL_13:
    v48 = v98;
    v98[4] = 0;
    *v48 = 0u;
    v48[1] = 0u;
    return;
  }

  v27 = v25;
  v28 = sub_248383DC0();
  v29 = *sub_24827BA50();
  (*(v7 + 16))(v15, v26, v6);
  v30 = os_log_type_enabled(v29, v28);
  v94 = v26;
  if (v30)
  {
    v93 = v29;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v100[0] = v32;
    *v31 = 136446210;
    sub_2482D11E4();
    v33 = sub_248384650();
    v35 = v34;
    (*(v7 + 8))(v15, v6);
    v36 = sub_24814A378(v33, v35, v100);

    *(v31 + 4) = v36;
    v37 = v93;
    _os_log_impl(&dword_248146000, v93, v28, "[DBInstrumentClusterSceneCoordinator] Creating wallpaper view controller for layoutID %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v38 = v32;
    v26 = v94;
    MEMORY[0x24C1CD5F0](v38, -1, -1);
    MEMORY[0x24C1CD5F0](v31, -1, -1);
  }

  else
  {
    (*(v7 + 8))(v15, v6);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v59 = objc_allocWithZone(DBWallpaperViewController);
  v60 = v27;
  v61 = [v59 initWithScene:v60 environment:Strong wallpaper:v97 isDimmed:0];

  swift_unknownObjectRelease();
  v62 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__wallpaperScenes;
  swift_beginAccess();
  v63 = v60;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v99 = *&v3[v62];
  *&v3[v62] = 0x8000000000000000;
  v93 = v63;
  sub_2482D24B0(v63, v26, isUniquelyReferenced_nonNull_native, &unk_27EE92738, &unk_24839FDD8);
  *&v3[v62] = v99;
  swift_endAccess();
  v65 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__wallpaperViewControllers;
  swift_beginAccess();
  v66 = v61;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *&v3[v65];
  *&v3[v65] = 0x8000000000000000;
  sub_2482D24B0(v66, v26, v67, &qword_27EE92730, &qword_24839FDD0);
  *&v3[v65] = v99;
  swift_endAccess();
  swift_getKeyPath();
  sub_248381870();

  v69 = v100[0];
  v68 = v100[1];
  v70 = type metadata accessor for _DBInstrumentClusterScenePresenter(0);
  v71 = swift_allocObject();
  *(v71 + 7) = 0;
  *(v71 + 8) = 0;
  *(v71 + 6) = 0;
  v72 = OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__lastURL;
  v73 = sub_248381170();
  v74 = *(*(v73 - 8) + 56);
  v96 = v66;
  v75 = v3;
  v74(&v71[v72], 1, 1, v73);
  v76 = OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application;
  *&v71[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application] = 0;
  v71[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive] = 0;
  *(v71 + 3) = v69;
  *(v71 + 4) = v68;
  swift_unknownObjectUnownedInit();
  v77 = *(v71 + 6);
  *(v71 + 6) = 0;

  v78 = [objc_opt_self() sharedInstance];
  v79 = [v78 wallpaperApplication];

  if (!v79)
  {
    goto LABEL_23;
  }

  v80 = *&v71[v76];
  *&v71[v76] = v79;
  v81 = v79;

  v82 = &v71[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__frame];
  *v82 = 0u;
  *(v82 + 1) = 0u;
  v83 = &v71[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__safeAreaInsets];
  v84 = *(MEMORY[0x277D768C8] + 16);
  *v83 = *MEMORY[0x277D768C8];
  *(v83 + 1) = v84;
  *&v71[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__scaleFactor] = 0x3FF0000000000000;
  v85 = v96;
  v86 = [v85 view];
  v87 = *(v71 + 7);
  *(v71 + 7) = v86;

  v88 = [v85 view];
  if (!v88)
  {
    __break(1u);
LABEL_23:
    sub_248384580();
    __break(1u);
    return;
  }

  *(v71 + 2) = v88;

  v89 = v95;
  swift_beginAccess();

  v90 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *&v3[v89];
  *&v3[v89] = 0x8000000000000000;
  sub_2482D22DC(v71, v94, v90);
  *&v3[v89] = v99;
  swift_endAccess();
  v91 = v98;
  v98[3] = v70;
  v91[4] = &off_285A541A8;

  swift_unknownObjectRelease();
  *v91 = v71;
}

void *sub_2482CC4F0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_248384560();

    if (v4)
    {
      type metadata accessor for DBInstrumentClusterSceneViewController();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_24814C91C(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id sub_2482CC5A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 wallpaperApplication];

  if (!v8)
  {
    return 0;
  }

  v9 = *&v1[OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__sceneWorkspace];
  (*(v4 + 16))(v6, a1, v3);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v8;
  (*(v4 + 32))(v11 + v10, v6, v3);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2482D4E14;
  *(v12 + 24) = v11;
  aBlock[4] = sub_2482BB938;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2482BB934;
  aBlock[3] = &block_descriptor_93;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  v15 = v8;

  v16 = [v9 createScene_];

  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    return 0;
  }

  return v16;
}

void sub_2482CC844(void *a1)
{
  v60 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v59 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE925B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v51 - v10;
  v11 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v12 = [v11 wallpaperPreferences];

  if (v12)
  {
    v13 = [v12 dataProvider];

    v58 = v13;
    if (v13)
    {
      v14 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__wallpaperViewControllers;
      swift_beginAccess();
      v15 = *(v1 + v14);
      v16 = *(v15 + 64);
      v51 = v15 + 64;
      v17 = 1 << *(v15 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & v16;
      v20 = (v17 + 63) >> 6;
      v54 = v59 + 16;
      v55 = v15;
      v21 = (v59 + 32);
      v56 = (v59 + 8);

      v22 = 0;
      v62 = v8;
      v52 = v3;
      v53 = v21;
      if (v19)
      {
        while (1)
        {
          v23 = v22;
LABEL_13:
          v25 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v26 = v25 | (v23 << 6);
          v27 = v55;
          v28 = v59;
          v29 = v57;
          v30 = v64;
          (*(v59 + 16))(v57, *(v55 + 48) + *(v59 + 72) * v26, v64);
          v31 = *(*(v27 + 56) + 8 * v26);
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE925C0);
          v33 = *(v32 + 48);
          v34 = *(v28 + 32);
          v8 = v62;
          v35 = v30;
          v21 = v53;
          v34(v62, v29, v35);
          *&v8[v33] = v31;
          (*(*(v32 - 8) + 56))(v8, 0, 1, v32);
          v36 = v31;
          v63 = v23;
          v3 = v52;
LABEL_14:
          v37 = v61;
          sub_2482D36F8(v8, v61);
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE925C0);
          if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
          {
            swift_unknownObjectRelease();
            goto LABEL_25;
          }

          v39 = *(v37 + *(v38 + 48));
          v40 = v64;
          (*v21)(v3, v37, v64);
          v41 = [v60 wallpaperForLayout];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92628);
          v42 = sub_2483838A0();

          swift_getKeyPath();
          v43 = v40;
          v44 = v3;
          sub_248381870();

          if (!*(v42 + 16))
          {

LABEL_23:

            swift_unknownObjectRelease();

            (*v56)(v44, v43);
            return;
          }

          v45 = sub_24822B8A0(v65, v66);
          v47 = v46;

          if ((v47 & 1) == 0)
          {
            goto LABEL_23;
          }

          v48 = *(*(v42 + 56) + 8 * v45);
          swift_unknownObjectRetain();

          v49 = [v58 loadWallpaperFromData_];
          if (!v49)
          {
            break;
          }

          [v39 setWallpaper_];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v3 = v44;
          (*v56)(v44, v43);
          v8 = v62;
          v22 = v63;
          if (!v19)
          {
            goto LABEL_7;
          }
        }

        (*v56)(v44, v43);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_25:
      }

      else
      {
LABEL_7:
        if (v20 <= v22 + 1)
        {
          v24 = v22 + 1;
        }

        else
        {
          v24 = v20;
        }

        while (1)
        {
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v23 >= v20)
          {
            v63 = v24 - 1;
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE925C0);
            (*(*(v50 - 8) + 56))(v8, 1, 1, v50);
            v19 = 0;
            goto LABEL_14;
          }

          v19 = *(v51 + 8 * v23);
          ++v22;
          if (v19)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_2482CCE80(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>, double a4@<D0>, double a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>)
{
  v12 = v11;
  v24 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationPresenters;
  swift_beginAccess();
  v25 = *(v11 + v24);
  if (*(v25 + 16))
  {

    v26 = sub_24822B8A0(a1, a2);
    if (v27)
    {
      v28 = *(*(v25 + 56) + 8 * v26);

      a3[3] = type metadata accessor for _DBInstrumentClusterScenePresenter(0);
      a3[4] = &off_285A541A8;
      goto LABEL_16;
    }
  }

  v66 = a11;
  v67 = a3;
  v29 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v30 = [v29 navigationStateProvider];

  [v30 addObserver_];
  v31 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  [v31 screenScale];
  v33 = v32;

  sub_248383DC0();
  v34 = *sub_24827BA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_24839C7F0;
  *(v35 + 56) = MEMORY[0x277D837D0];
  *(v35 + 64) = sub_2482970D8();
  *(v35 + 32) = a1;
  *(v35 + 40) = a2;
  v36 = v34;

  sub_248382A40();

  v37 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v38 = [v37 navigationStateProvider];

  v39 = [v38 mostRecentClusterNavigatingApp];
  v68 = a1;
  if (v39 && (sub_248383960(), v39, v40 = objc_opt_self(), , v41 = [v40 sharedInstance], v42 = sub_248383930(), v43 = objc_msgSend(v41, sel_applicationWithBundleIdentifier_, v42), swift_bridgeObjectRelease_n(), v41, v42, v43))
  {
    v44 = v43;
    v45 = sub_2482CD554(v44);
    v65 = v44;
  }

  else
  {
    v45 = 0;
    v65 = 0;
  }

  v46 = type metadata accessor for _DBInstrumentClusterScenePresenter(0);
  v28 = swift_allocObject();
  *(v28 + 7) = 0;
  *(v28 + 8) = 0;
  *(v28 + 6) = 0;
  v47 = OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__lastURL;
  v48 = sub_248381170();
  (*(*(v48 - 8) + 56))(&v28[v47], 1, 1, v48);
  v49 = OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application;
  *&v28[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application] = 0;
  v28[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive] = 0;
  *(v28 + 3) = v68;
  *(v28 + 4) = a2;
  swift_unknownObjectUnownedInit();
  v50 = *(v28 + 6);
  *(v28 + 6) = v45;
  v51 = v45;

  v52 = v51;

  if (v45)
  {
    v53 = [v52 application];
  }

  else
  {
    v53 = 0;
  }

  v54 = *&v28[v49];
  *&v28[v49] = v53;

  v55 = &v28[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__frame];
  *v55 = a4;
  v55[1] = a5;
  v55[2] = a6;
  v55[3] = a7;
  v56 = &v28[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__safeAreaInsets];
  *v56 = a8;
  v56[1] = a9;
  v56[2] = a10;
  v56[3] = v66;
  *&v28[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__scaleFactor] = v33;
  v57 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  if (v45)
  {
    v58 = sub_248383930();
    v59 = [objc_opt_self() clearColor];
    v60 = [v52 presentationViewWithIdentifier:v58 activate:0 backgroundColor:v59];

    if (v60)
    {
      [v57 addSubview_];
      CGAffineTransformMakeScale(&v69, 1.0 / v33, 1.0 / v33);
      v71.origin.x = 0.0;
      v71.origin.y = 0.0;
      v71.size.width = a6;
      v71.size.height = a7;
      v72 = CGRectApplyAffineTransform(v71, &v69);
      [v60 setFrame_];
      v61 = [v60 layer];
      [v61 setAnchorPoint_];

      v62 = [v60 layer];
      [v62 setPosition_];

      CGAffineTransformMakeScale(&v69, v33, v33);
      [v60 setTransform_];
      v63 = *(v28 + 7);
      *(v28 + 7) = v60;
    }
  }

  *(v28 + 2) = v57;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(v12 + v24);
  *(v12 + v24) = 0x8000000000000000;
  sub_2482D26B4(v28, v68, a2, isUniquelyReferenced_nonNull_native);

  *(v12 + v24) = v70;
  swift_endAccess();
  a3 = v67;
  v67[3] = v46;
  v67[4] = &off_285A541A8;

LABEL_16:
  *a3 = v28;
}

uint64_t sub_2482CD554(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationSceneViewControllers;
  swift_beginAccess();
  v5 = *(v1 + v4);

  v6 = sub_2482CC4F0(a1, v5);

  if (v6)
  {
    goto LABEL_19;
  }

  v7 = sub_2482D056C(a1);
  v9 = v8;
  if (!v7)
  {

    return 0;
  }

  v10 = v7;
  type metadata accessor for DBInstrumentClusterSceneViewController();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v12 = v9;
  v6 = v10;
  v13 = a1;
  v14 = sub_248295630(v6, v13, v9, Strong);
  v15 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationScenes;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if ((v16 & 0xC000000000000001) != 0)
  {
    if (v16 < 0)
    {
      v17 = *(v2 + v15);
    }

    else
    {
      v17 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    v18 = v6;
    result = sub_248384360();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v2 + v15) = sub_2482B6BB4(v17, result + 1);
  }

  else
  {
    v21 = v6;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v2 + v15);
  sub_2482D2830(v6, v13, isUniquelyReferenced_nonNull_native, &unk_27EE926A0);
  *(v2 + v15) = v29;
  swift_endAccess();
  swift_beginAccess();
  v23 = *(v2 + v4);
  if ((v23 & 0xC000000000000001) == 0)
  {
    v26 = v14;
    goto LABEL_18;
  }

  if (v23 < 0)
  {
    v24 = *(v2 + v4);
  }

  else
  {
    v24 = v23 & 0xFFFFFFFFFFFFFF8;
  }

  v25 = v14;
  result = sub_248384360();
  if (!__OFADD__(result, 1))
  {
    *(v2 + v4) = sub_2482D13B0(v24, result + 1);
LABEL_18:
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v2 + v4);
    sub_2482D2830(v14, v13, v27, &qword_27EE92698);
    *(v2 + v4) = v30;
    swift_endAccess();

LABEL_19:
    v28 = *(v2 + v4);

    v20 = sub_2482CC4F0(a1, v28);

    return v20;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_2482CD7D8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, double a12@<D7>)
{
  v13 = v12;
  v26 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationPresenters;
  swift_beginAccess();
  v27 = *(v12 + v26);
  if (*(v27 + 16))
  {

    v28 = sub_24822B8A0(a1, a2);
    if (v29)
    {
      v30 = *(*(v27 + 56) + 8 * v28);

      *(a4 + 24) = type metadata accessor for _DBInstrumentClusterScenePresenter(0);
      *(a4 + 32) = &off_285A541A8;
      *a4 = v30;
      return;
    }
  }

  sub_248383DC0();
  v31 = *sub_24827BA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_24839CCA0;
  *(v32 + 56) = sub_24814FB28(0, &qword_27EE91E40);
  *(v32 + 64) = sub_2482D3768();
  *(v32 + 32) = a3;
  *(v32 + 96) = MEMORY[0x277D837D0];
  *(v32 + 104) = sub_2482970D8();
  *(v32 + 72) = a1;
  *(v32 + 80) = a2;
  v33 = v31;
  v34 = a3;

  sub_248382A40();

  v35 = sub_2482CD554(v34);
  if (v35)
  {
    v36 = v35;
    v37 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    [v37 screenScale];
    v61 = a12;
    v39 = v38;

    v60 = type metadata accessor for _DBInstrumentClusterScenePresenter(0);
    v40 = swift_allocObject();
    *(v40 + 7) = 0;
    *(v40 + 8) = 0;
    *(v40 + 6) = 0;
    v41 = OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__lastURL;
    v42 = sub_248381170();
    (*(*(v42 - 8) + 56))(&v40[v41], 1, 1, v42);
    v43 = OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application;
    *&v40[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application] = 0;
    v40[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive] = 0;
    *(v40 + 3) = a1;
    *(v40 + 4) = a2;
    swift_unknownObjectUnownedInit();
    v44 = a1;
    v45 = *(v40 + 6);
    *(v40 + 6) = v36;
    v46 = v36;

    v47 = v46;

    v48 = [v47 application];
    v49 = *&v40[v43];
    *&v40[v43] = v48;

    v50 = &v40[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__frame];
    *v50 = a5;
    v50[1] = a6;
    v50[2] = a7;
    v50[3] = a8;
    v51 = &v40[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__safeAreaInsets];
    *v51 = a9;
    v51[1] = a10;
    v51[2] = a11;
    v51[3] = v61;
    *&v40[OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__scaleFactor] = v39;
    v62 = v44;
    v52 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v53 = sub_248383930();
    v54 = [objc_opt_self() clearColor];
    v55 = [v47 presentationViewWithIdentifier:v53 activate:0 backgroundColor:v54];

    if (v55)
    {
      [v52 addSubview_];
      CGAffineTransformMakeScale(&v63, 1.0 / v39, 1.0 / v39);
      v65.origin.x = 0.0;
      v65.origin.y = 0.0;
      v65.size.width = a7;
      v65.size.height = a8;
      v66 = CGRectApplyAffineTransform(v65, &v63);
      [v55 setFrame_];
      v56 = [v55 layer];
      [v56 setAnchorPoint_];

      v57 = [v55 layer];
      [v57 setPosition_];

      CGAffineTransformMakeScale(&v63, v39, v39);
      [v55 setTransform_];
      v58 = *(v40 + 7);
      *(v40 + 7) = v55;
    }

    *(v40 + 2) = v52;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v13 + v26);
    *(v13 + v26) = 0x8000000000000000;
    sub_2482D26B4(v40, v62, a2, isUniquelyReferenced_nonNull_native);

    *(v13 + v26) = v64;
    swift_endAccess();
    *(a4 + 24) = v60;
    *(a4 + 32) = &off_285A541A8;

    *a4 = v40;
  }

  else
  {
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }
}

double sub_2482CDD70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationPresenters;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_24822B8A0(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      *(a3 + 24) = type metadata accessor for _DBInstrumentClusterScenePresenter(0);
      *(a3 + 32) = &off_285A541A8;
      *a3 = v11;
      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

void sub_2482CDE38()
{
  sub_248383DC0();
  v1 = *sub_24827BA50();
  sub_248382A40();

  v2 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationPresenters;
  swift_beginAccess();
  v69 = v0;
  v3 = *(v0 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v67 = v3;
LABEL_5:
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      v41 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationSceneViewControllers;
      swift_beginAccess();
      v42 = *(v69 + v41);
      if ((v42 & 0xC000000000000001) != 0)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = sub_248384540() | 0x8000000000000000;
      }

      else
      {
        v47 = -1 << *(v42 + 32);
        v44 = ~v47;
        v43 = v42 + 64;
        v48 = -v47;
        if (v48 < 64)
        {
          v49 = ~(-1 << v48);
        }

        else
        {
          v49 = -1;
        }

        v45 = v49 & *(v42 + 64);
        v46 = v42;
      }

      v50 = 0;
      v51 = (v44 + 64) >> 6;
      while (2)
      {
        if ((v46 & 0x8000000000000000) != 0)
        {
          if (!sub_248384570() || (sub_24814FB28(0, &qword_27EE91E40), swift_dynamicCast(), v56 = v70, type metadata accessor for DBInstrumentClusterSceneViewController(), swift_dynamicCast(), (v57 = v70) == 0))
          {
LABEL_71:
            sub_248167908();
            return;
          }
        }

        else
        {
          v52 = v50;
          for (i = v45; !i; ++v52)
          {
            v50 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_73;
            }

            if (v50 >= v51)
            {
              goto LABEL_71;
            }

            i = *(v43 + 8 * v50);
          }

          v45 = (i - 1) & i;
          v54 = (v50 << 9) | (8 * __clz(__rbit64(i)));
          v55 = *(*(v46 + 56) + v54);
          v56 = *(*(v46 + 48) + v54);
          v57 = v55;
          if (!v56)
          {
            goto LABEL_71;
          }
        }

        v58 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationScenes;
        swift_beginAccess();
        v59 = *(v69 + v58);
        if ((v59 & 0xC000000000000001) != 0)
        {

          v60 = v56;
          v61 = sub_248384560();

          if (!v61)
          {
            goto LABEL_51;
          }

          sub_24814FB28(0, &unk_27EE91E30);
          swift_dynamicCast();
          v62 = v70;
          if (!v70)
          {
            goto LABEL_51;
          }

LABEL_68:
          if ([v62 isActive])
          {
            (*((*MEMORY[0x277D85000] & *v57) + 0xA0))();
          }

          goto LABEL_51;
        }

        if (*(v59 + 16))
        {

          v63 = sub_24814C91C(v56);
          if (v64)
          {
            v62 = *(*(v59 + 56) + 8 * v63);

            if (v62)
            {
              goto LABEL_68;
            }
          }

          else
          {
          }
        }

LABEL_51:

        continue;
      }
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
LABEL_10:
      v11 = *(*(v3 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
      v12 = OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive;
      if (*(v11 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive) == 1)
      {
        v13 = *(v11 + 56);

        if (v13)
        {
          v13 = [v13 snapshotViewAfterScreenUpdates_];
        }

        [*(v11 + 64) removeFromSuperview];
        v14 = *(v11 + 64);
        *(v11 + 64) = 0;

        if (v13)
        {
          [v13 setFrame_];
          [*(v11 + 16) addSubview_];
          v15 = *(v11 + 64);
          *(v11 + 64) = v13;
        }
      }

      else
      {
      }

      v7 &= v7 - 1;
      v16 = *(v11 + 48);
      if (!v16)
      {

        goto LABEL_5;
      }

      v17 = v16;
      v18 = sub_248383930();
      [v17 deactivatePresentationViewWithIdentifier_];

      *(v11 + v12) = 0;
      Strong = swift_unknownObjectUnownedLoadStrong();
      v20 = *(v11 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application);
      if (!v20)
      {

        v3 = v67;
        goto LABEL_5;
      }

      v66 = v17;
      v21 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationScenes;
      swift_beginAccess();
      v68 = Strong;
      v22 = *&Strong[v21];
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = v20;

        v24 = sub_248384560();

        if (v24)
        {
          sub_24814FB28(0, &unk_27EE91E30);
          swift_dynamicCast();
          v25 = v71;
          goto LABEL_25;
        }

LABEL_29:

        goto LABEL_30;
      }

      v26 = *(v22 + 16);
      v27 = v20;
      if (!v26)
      {
        goto LABEL_30;
      }

      v28 = v27;

      v29 = sub_24814C91C(v28);
      if ((v30 & 1) == 0)
      {
        goto LABEL_29;
      }

      v25 = *(*(v22 + 56) + 8 * v29);
LABEL_25:

      if (!v25)
      {
LABEL_30:

LABEL_39:

        v3 = v67;
        goto LABEL_5;
      }

      v31 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationSceneViewControllers;
      swift_beginAccess();
      v32 = *&v68[v31];
      if ((v32 & 0xC000000000000001) != 0)
      {
        v33 = v20;

        v34 = sub_248384560();

        if (v34)
        {
          type metadata accessor for DBInstrumentClusterSceneViewController();
          swift_dynamicCast();
          v35 = v71;
          goto LABEL_34;
        }

LABEL_37:

        goto LABEL_38;
      }

      if (!*(v32 + 16))
      {
        goto LABEL_38;
      }

      v36 = sub_24814C91C(v20);
      if ((v37 & 1) == 0)
      {
        goto LABEL_37;
      }

      v35 = *(*(v32 + 56) + 8 * v36);
LABEL_34:

      if (!v35)
      {
LABEL_38:

        goto LABEL_39;
      }

      v65 = v35;
      swift_beginAccess();

      v39 = sub_2482D3950(v38, sub_2482D37D0);

      v40 = *(v39 + 16);

      if (v40)
      {

        goto LABEL_30;
      }

      if ([v25 isActive])
      {
        (*((*MEMORY[0x277D85000] & *v65) + 0xA0))();
      }

      v3 = v67;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
}

void sub_2482CE6B4()
{
  sub_248383DC0();
  v1 = *sub_24827BA50();
  sub_248382A40();

  v2 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationPresenters;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(v3 + 56) + ((v9 << 9) | (8 * v10)));
    v12 = *(v11 + 64);

    [v12 removeFromSuperview];
    v13 = *(v11 + 64);
    *(v11 + 64) = 0;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2482CE824(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationPresenters;
  result = swift_beginAccess();
  v5 = 0;
  v6 = *(v1 + v3);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  while (v9)
  {
    v10 = v5;
LABEL_10:
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = *(*(v6 + 56) + ((v10 << 9) | (8 * v11)));
    if (*(v12 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive) == 1)
    {
      v13 = *(v12 + 48);

      if (v13)
      {
        v14 = v13;
        sub_248383D80();
        v15 = *sub_24827BA50();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
        v16 = swift_allocObject();
        v17 = MEMORY[0x277D83E88];
        *(v16 + 16) = xmmword_24839CCA0;
        v18 = MEMORY[0x277D83ED0];
        *(v16 + 56) = v17;
        *(v16 + 64) = v18;
        *(v16 + 32) = a1;
        v19 = v15;
        v20 = [v14 application];
        *(v16 + 96) = sub_24814FB28(0, &qword_27EE91E40);
        *(v16 + 104) = sub_2482D3768();
        *(v16 + 72) = v20;
        sub_248382A40();

        v21 = (*((*MEMORY[0x277D85000] & *v14) + 0xB0))(a1);
      }

      else
      {
        v21 = 0;
      }

      return v21 & 1;
    }
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= ((v7 + 63) >> 6))
    {
      v21 = 0;
      return v21 & 1;
    }

    v9 = *(v6 + 64 + 8 * v10);
    ++v5;
    if (v9)
    {
      v5 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2482CEA68()
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v1 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v77 = &v70 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE925B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v70 - v7;
  v70 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__environment;
  v9 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v82 = [v9 resolvedUserInterfaceStyle];

  v10 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__wallpaperViewControllers;
  swift_beginAccess();
  v71 = v0;
  v11 = *(v0 + v10);
  v12 = *(v11 + 64);
  v72 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v74 = v1 + 16;
  v73 = v1 + 32;
  v81 = &v89;
  v78 = v1;
  v80 = (v1 + 8);
  v79 = v11;

  v18 = 0;
  v76 = v5;
  v75 = v8;
  v84 = 0;
  v85 = 0;
  if (!v15)
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE925C0);
        (*(*(v35 - 8) + 56))(v5, 1, 1, v35);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v72 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  while (1)
  {
    v19 = v18;
LABEL_12:
    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v23 = v22 | (v19 << 6);
    v24 = v79;
    v25 = v78;
    (*(v78 + 16))(v77, *(v79 + 48) + *(v78 + 72) * v23, v83);
    v26 = *(*(v24 + 56) + 8 * v23);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE925C0);
    v28 = *(v27 + 48);
    v5 = v76;
    (*(v25 + 32))();
    *&v5[v28] = v26;
    (*(*(v27 - 8) + 56))(v5, 0, 1, v27);
    v29 = v26;
    v21 = v19;
    v8 = v75;
LABEL_13:
    sub_2482D36F8(v5, v8);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE925C0);
    if ((*(*(v30 - 8) + 48))(v8, 1, v30) == 1)
    {
      break;
    }

    v18 = v21;
    v31 = *&v8[*(v30 + 48)];
    v32 = swift_allocObject();
    *(v32 + 16) = v82;
    sub_248167864(v85);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_2482CB094;
    *(v33 + 24) = v32;
    v91 = sub_2482BB938;
    v92 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = sub_248282F3C;
    v90 = &block_descriptor_13;
    v34 = _Block_copy(&aBlock);

    [v31 updateSceneSettingsWithBlock_];

    _Block_release(v34);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      goto LABEL_41;
    }

    result = (*v80)(v8, v83);
    v84 = v32;
    v85 = sub_2482CB094;
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  v36 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationSceneViewControllers;
  v37 = v71;
  swift_beginAccess();
  v38 = *(v37 + v36);
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = sub_248384540() | 0x8000000000000000;
  }

  else
  {
    v43 = -1 << *(v38 + 32);
    v40 = ~v43;
    v39 = v38 + 64;
    v44 = -v43;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v41 = v45 & *(v38 + 64);
    v42 = v38;
  }

  v46 = 0;
  v47 = 0;
  v79 = v40;
  v48 = (v40 + 64) >> 6;
  v80 = &v89;
  v81 = v42;
  while ((v42 & 0x8000000000000000) != 0)
  {
    v61 = sub_248384570();
    if (!v61 || (v63 = v62, v86 = v61, sub_24814FB28(0, &qword_27EE91E40), swift_dynamicCast(), v59 = aBlock, v86 = v63, type metadata accessor for DBInstrumentClusterSceneViewController(), swift_dynamicCast(), v60 = aBlock, v55 = v47, v83 = v41, !v59))
    {
LABEL_39:
      sub_248167908();
      sub_248167864(v85);
      return sub_248167864(v46);
    }

LABEL_35:
    Strong = swift_unknownObjectUnownedLoadStrong();
    v65 = [Strong respondsToSelector_];
    v66 = v82;
    if (v65)
    {
      v66 = [Strong sceneInterfaceStyleForApplication:v59 proxyApplication:0];
    }

    swift_unknownObjectRelease();
    v67 = swift_unknownObjectUnownedLoadStrong();
    v68 = [v67 respondsToSelector_];
    v69 = v82;
    if (v68)
    {
      v69 = [v67 sceneMapInterfaceStyleForApplication:v59 proxyApplication:0];
    }

    swift_unknownObjectRelease();
    v49 = swift_allocObject();
    *(v49 + 16) = v66;
    *(v49 + 24) = v69;
    sub_248167864(v46);
    v50 = swift_allocObject();
    v46 = sub_2482D3AD0;
    *(v50 + 16) = sub_2482D3AD0;
    *(v50 + 24) = v49;
    v91 = sub_2482BB938;
    v92 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = sub_248282F3C;
    v90 = &block_descriptor_16;
    v51 = _Block_copy(&aBlock);

    [v60 updateSceneSettingsWithBlock_];

    _Block_release(v51);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v47 = v55;
    v41 = v83;
    v42 = v81;
    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_43;
    }
  }

  v53 = v47;
  v54 = v41;
  v55 = v47;
  if (v41)
  {
LABEL_31:
    v83 = (v54 - 1) & v54;
    v56 = (v55 << 9) | (8 * __clz(__rbit64(v54)));
    v57 = *(*(v42 + 48) + v56);
    v58 = *(*(v42 + 56) + v56);
    v59 = v57;
    v60 = v58;
    if (!v59)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v55 >= v48)
    {
      goto LABEL_39;
    }

    v54 = *(v39 + 8 * v55);
    ++v53;
    if (v54)
    {
      goto LABEL_31;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

id sub_2482CF46C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBInstrumentClusterSceneCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2482CF574()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__wallpaperScenes;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      [*(*(v3 + 56) + ((v9 << 9) | (8 * v10))) invalidate];
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  v11 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__wallpaperViewControllers;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  while (v15)
  {
    v18 = v17;
LABEL_19:
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    [*(*(v12 + 56) + ((v18 << 9) | (8 * v19))) invalidate];
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      v20 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__wallpaperPresenters;
      swift_beginAccess();
      *(v1 + v20) = MEMORY[0x277D84F98];

      v21 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationScenes;
      swift_beginAccess();
      v22 = *(v1 + v21);
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = sub_248384540() | 0x8000000000000000;
      }

      else
      {
        v27 = -1 << *(v22 + 32);
        v24 = ~v27;
        v23 = v22 + 64;
        v28 = -v27;
        if (v28 < 64)
        {
          v29 = ~(-1 << v28);
        }

        else
        {
          v29 = -1;
        }

        v25 = v29 & *(v22 + 64);
        v26 = v22;
      }

      v30 = 0;
      v31 = (v24 + 64) >> 6;
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v32 = v30;
        v33 = v25;
        v34 = v30;
        if (!v25)
        {
          break;
        }

LABEL_32:
        v35 = (v33 - 1) & v33;
        v36 = *(*(v26 + 56) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));
        if (!v36)
        {
LABEL_38:
          sub_248167908();
          v39 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationSceneViewControllers;
          swift_beginAccess();
          v40 = *(v1 + v39);
          if ((v40 & 0xC000000000000001) != 0)
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = sub_248384540() | 0x8000000000000000;
          }

          else
          {
            v45 = -1 << *(v40 + 32);
            v42 = ~v45;
            v41 = v40 + 64;
            v46 = -v45;
            if (v46 < 64)
            {
              v47 = ~(-1 << v46);
            }

            else
            {
              v47 = -1;
            }

            v43 = v47 & *(v40 + 64);
            v44 = v40;
          }

          v48 = 0;
          v49 = (v42 + 64) >> 6;
          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          while (1)
          {
            v50 = v48;
            v51 = v43;
            v52 = v48;
            if (!v43)
            {
              break;
            }

LABEL_49:
            v53 = (v51 - 1) & v51;
            v54 = *(*(v44 + 56) + ((v52 << 9) | (8 * __clz(__rbit64(v51)))));
            if (!v54)
            {
LABEL_55:
              sub_248167908();
              v55 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationPresenters;
              swift_beginAccess();
              *(v1 + v55) = MEMORY[0x277D84F98];

              [*(v1 + OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__sceneWorkspace) invalidate];
              return;
            }

            while (1)
            {
              [v54 invalidate];

              v48 = v52;
              v43 = v53;
              if ((v44 & 0x8000000000000000) == 0)
              {
                break;
              }

LABEL_51:
              if (sub_248384570())
              {
                swift_unknownObjectRelease();
                type metadata accessor for DBInstrumentClusterSceneViewController();
                swift_dynamicCast();
                v54 = v56;
                v52 = v48;
                v53 = v43;
                if (v56)
                {
                  continue;
                }
              }

              goto LABEL_55;
            }
          }

          while (1)
          {
            v52 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              goto LABEL_59;
            }

            if (v52 >= v49)
            {
              goto LABEL_55;
            }

            v51 = *(v41 + 8 * v52);
            ++v50;
            if (v51)
            {
              goto LABEL_49;
            }
          }
        }

        while (1)
        {
          [v36 invalidate];

          v30 = v34;
          v25 = v35;
          if ((v26 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_34:
          if (sub_248384570())
          {
            v38 = v37;
            swift_unknownObjectRelease();
            v56 = v38;
            sub_24814FB28(0, &unk_27EE91E30);
            swift_dynamicCast();
            v36 = v57;
            v34 = v30;
            v35 = v25;
            if (v57)
            {
              continue;
            }
          }

          goto LABEL_38;
        }
      }

      while (1)
      {
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_58;
        }

        if (v34 >= v31)
        {
          goto LABEL_38;
        }

        v33 = *(v23 + 8 * v34);
        ++v32;
        if (v33)
        {
          goto LABEL_32;
        }
      }
    }

    v15 = *(v12 + 64 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_19;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_2482CFB20(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v53 - v5 + 96;
  v7 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__navigationApp;
  v8 = *(v1 + OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__navigationApp);
  if (v8)
  {
    sub_24814FB28(0, &qword_27EE91E40);
    v9 = v8;
    v10 = a1;
    v11 = sub_248384030();

    if (v11)
    {
      return;
    }

    v12 = *(v2 + v7);
    if (v12)
    {
      v13 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationScenes;
      swift_beginAccess();
      v14 = *(v2 + v13);
      v15 = v12;

      v16 = sub_24814C858(v15, v14);

      [v16 invalidate];

      swift_beginAccess();
      v17 = v15;
      v18 = sub_2482D1248(v17, &unk_27EE926A0, &unk_24839F6C0, sub_2482B6BB4);
      swift_endAccess();

      v19 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationSceneViewControllers;
      swift_beginAccess();
      v20 = *(v2 + v19);

      v21 = sub_2482CC4F0(v17, v20);

      [v21 invalidate];

      swift_beginAccess();
      v22 = v17;
      v23 = sub_2482D1248(v22, &qword_27EE92698, &unk_24839FDB0, sub_2482D13B0);
      swift_endAccess();
    }
  }

  sub_248383D80();
  v24 = *sub_24827BA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_24839C7F0;
  *(v25 + 56) = sub_24814FB28(0, &qword_27EE91E40);
  *(v25 + 64) = sub_2482D3768();
  *(v25 + 32) = a1;
  v26 = a1;
  v27 = v24;
  sub_248382A40();

  v28 = sub_2482CD554(v26);
  if (v28)
  {
    v29 = v28;
    v30 = swift_beginAccess();
    MEMORY[0x28223BE20](v30);
    *(&v52 - 2) = v2;

    v32 = sub_2482D3950(v31, sub_2482D4D78);

    v33 = 0;
    v34 = v32 + 64;
    v35 = 1 << *(v32 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v32 + 64);
    while (v37)
    {
      v38 = v33;
LABEL_15:
      v39 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v40 = *(*(v32 + 56) + ((v38 << 9) | (8 * v39)));
      if (*(v40 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive) == 1)
      {
        v55[0] = *(v40 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__frame);
        v55[1] = *(v40 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__frame + 16);
        v56 = 0;
        v52 = *((*MEMORY[0x277D85000] & *v29) + 0x70);

        v52(v55);
        v41 = *(v40 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__safeAreaInsets + 16);
        v53[0] = *(v40 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__safeAreaInsets);
        v53[1] = v41;
        v54 = 0;
        (*((*MEMORY[0x277D85000] & *v29) + 0x88))(v53);
        v42 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__lastNavigationURL;
        swift_beginAccess();
        sub_2482B04BC(v2 + v42, v6);
        (*((*MEMORY[0x277D85000] & *v29) + 0x98))(v6);

        sub_24822D578(v6, &qword_27EE904C0);
LABEL_17:
        v43 = 0;
        v44 = 1 << *(v32 + 32);
        v45 = *(v32 + 64);
        v46 = -1;
        if (v44 < 64)
        {
          v46 = ~(-1 << v44);
        }

        v47 = v46 & v45;
        v48 = (v44 + 63) >> 6;
        if ((v46 & v45) != 0)
        {
          goto LABEL_25;
        }

        while (1)
        {
          v49 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          if (v49 >= v48)
          {

            v50 = *(v2 + v7);
            *(v2 + v7) = v26;
            v51 = v26;

            return;
          }

          v47 = *(v34 + 8 * v49);
          ++v43;
          if (v47)
          {
            v43 = v49;
            do
            {
LABEL_25:
              v47 &= v47 - 1;

              sub_2482D0DD8(v29);
            }

            while (v47);
            continue;
          }
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    while (1)
    {
      v38 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v38 >= ((v35 + 63) >> 6))
      {
        goto LABEL_17;
      }

      v37 = *(v34 + 8 * v38);
      ++v33;
      if (v37)
      {
        v33 = v38;
        goto LABEL_15;
      }
    }

LABEL_30:
    __break(1u);
  }
}

void sub_2482D01C8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_248383D80();
  v6 = *sub_24827BA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24839C7F0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2482970D8();
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  v8 = v6;

  sub_248382A40();

  v9 = objc_opt_self();
  v10 = [v9 sharedInstance];
  v11 = sub_248383930();
  v16 = [v10 applicationWithBundleIdentifier_];

  if (!v16)
  {
LABEL_6:
    v13 = [a1 mostRecentClusterNavigatingApp];
    if (!v13)
    {
      return;
    }

    v14 = v13;
    v15 = [v9 sharedInstance];
    v17 = [v15 applicationWithBundleIdentifier_];

    v12 = v17;
    if (!v17)
    {
      return;
    }

    goto LABEL_8;
  }

  if (![v16 supportsInstrumentClusterNavigation] || (objc_msgSend(v16, sel_presentsFullScreen) & 1) == 0)
  {

    goto LABEL_6;
  }

  v12 = v16;
LABEL_8:
  v18 = v12;
  sub_2482CFB20(v12);
}

id sub_2482D056C(void *a1)
{
  result = [a1 appPolicy];
  if (result)
  {
    v4 = result;
    if ([result launchUsingTemplateUI])
    {
      v5 = [objc_opt_self() sharedInstance];
      v6 = [v5 templateUIHostApplication];

      if (!v6)
      {
        sub_248383DA0();
        v20 = *sub_24827BA50();
        sub_248382A40();

        return 0;
      }

      v7 = objc_allocWithZone(MEMORY[0x277CF9378]);
      v8 = v6;
      v9 = [v7 init];
    }

    else
    {
      v10 = objc_allocWithZone(MEMORY[0x277CF92C8]);
      v11 = a1;
      v9 = [v10 init];
      v8 = v11;
    }

    v12 = v9;
    v21 = *&v1[OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__sceneWorkspace];
    v13 = swift_allocObject();
    v13[2] = v1;
    v13[3] = a1;
    v13[4] = v8;
    v13[5] = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2482D4C2C;
    *(v14 + 24) = v13;
    aBlock[4] = sub_248282F14;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2482BB934;
    aBlock[3] = &block_descriptor_81;
    v15 = _Block_copy(aBlock);
    v16 = a1;
    v17 = v1;

    v18 = [v21 createScene_];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      return v18;
    }
  }

  return result;
}

void sub_2482D0848(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = *(a1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application);
  v10 = *(v3 + OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__navigationApp);
  if (v9)
  {
    if (v10)
    {
      sub_24814FB28(0, &qword_27EE91E40);
      v11 = v10;
      v12 = v9;
      v13 = sub_248384030();

      if (v13)
      {
        goto LABEL_4;
      }
    }
  }

  else if (!v10)
  {
LABEL_4:
    sub_2482B04BC(a2, v8);
    v14 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__lastNavigationURL;
    swift_beginAccess();
    sub_2482CB65C(v8, v3 + v14);
    swift_endAccess();
  }
}

uint64_t sub_2482D097C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application);
  v4 = *(a2 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application);
  if (v3)
  {
    if (v4)
    {
      sub_24814FB28(0, &qword_27EE91E40);
      v5 = v4;
      v6 = v3;
      v7 = sub_248384030();

      if (v7)
      {
        return *(a1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive);
      }
    }
  }

  else if (!v4)
  {
    return *(a1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive);
  }

  return 0;
}

void sub_2482D0A18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__lastURL;
  swift_beginAccess();
  sub_2482D4BBC(a1, v1 + v3);
  swift_endAccess();
  v4 = *(v1 + 48);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__frame + 16);
    v16[0] = *(v1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__frame);
    v16[1] = v5;
    v17 = 0;
    v6 = MEMORY[0x277D85000];
    v7 = *((*MEMORY[0x277D85000] & *v4) + 0x70);
    v8 = v4;
    v9 = v1;
    v7(v16);
    v10 = *(v1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__safeAreaInsets + 16);
    v14[0] = *(v1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__safeAreaInsets);
    v14[1] = v10;
    v15 = 0;
    (*((*v6 & *v8) + 0x88))(v14);
    (*((*v6 & *v8) + 0x98))(a1);
    v11 = sub_248383930();
    [v8 activatePresentationViewWithIdentifier_];

    *(v9 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive) = 1;
    [*(v9 + 64) removeFromSuperview];
    v12 = *(v9 + 64);
    *(v9 + 64) = 0;

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_2482D0848(v9, a1);
  }
}

void sub_2482D0BD8()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = v1;
    v3 = sub_248383930();
    [v2 deactivatePresentationViewWithIdentifier_];

    *(v0 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive) = 0;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v5 = *(v0 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application);
    if (v5)
    {
      v6 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationScenes;
      swift_beginAccess();
      v7 = *&Strong[v6];

      v8 = v5;
      v9 = sub_24814C858(v8, v7);

      if (v9)
      {
        v10 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationSceneViewControllers;
        swift_beginAccess();
        v11 = *&Strong[v10];

        v12 = sub_2482CC4F0(v8, v11);

        if (v12)
        {
          swift_beginAccess();

          v14 = sub_2482D3950(v13, sub_2482D50D4);

          v15 = *(v14 + 16);

          if (!v15)
          {
            if ([v9 isActive])
            {
              (*((*MEMORY[0x277D85000] & *v12) + 0xA0))();
            }
          }
        }

        else
        {
          v16 = v9;
          v9 = v8;
          v8 = v16;
        }
      }
    }
  }
}

void sub_2482D0DD8(void *a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  v3 = a1;

  v4 = [v3 application];
  v5 = *(v1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application);
  *(v1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application) = v4;

  [*(v1 + 56) removeFromSuperview];
  v6 = *(v1 + 56);
  *(v1 + 56) = 0;

  v7 = sub_248383930();
  v8 = *(v1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive);
  v9 = [objc_opt_self() clearColor];
  v10 = [v3 presentationViewWithIdentifier:v7 activate:v8 backgroundColor:v9];

  [*(v1 + 16) addSubview_];
  v11 = *(v1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__frame + 16);
  v12 = *(v1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__frame + 24);
  v13 = *(v1 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__scaleFactor);
  CGAffineTransformMakeScale(&v17, 1.0 / v13, 1.0 / v13);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v11;
  v18.size.height = v12;
  v19 = CGRectApplyAffineTransform(v18, &v17);
  [v10 setFrame_];
  v14 = [v10 layer];
  [v14 setAnchorPoint_];

  v15 = [v10 layer];
  [v15 setPosition_];

  CGAffineTransformMakeScale(&v17, v13, v13);
  [v10 setTransform_];
  v16 = *(v1 + 56);
  *(v1 + 56) = v10;
}

uint64_t sub_2482D1004()
{

  swift_unknownObjectUnownedDestroy();

  sub_24822D578(v0 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__lastURL, &qword_27EE904C0);

  return swift_deallocClassInstance();
}

uint64_t sub_2482D110C(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 24) == *(*a2 + 24) && *(*a1 + 32) == *(*a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_248384680();
  }
}

unint64_t sub_2482D1138(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  sub_2482D5040(&unk_27EE92720, &qword_27EE91CD8);
  v2 = sub_2483838D0();

  return sub_2482D2A90(a1, v2);
}

unint64_t sub_2482D11E4()
{
  result = qword_27EE8FEC0;
  if (!qword_27EE8FEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FEC0);
  }

  return result;
}

uint64_t sub_2482D1248(void *a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    v13 = a2;
    v17 = sub_24814C91C(a1);
    if (v18)
    {
      v6 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v4;
      v22 = *v4;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v16 = *(*(v20 + 56) + 8 * v6);
        sub_2482B7068(v6, v20);
        *v5 = v20;
        return v16;
      }

LABEL_14:
      sub_2482D32D4(v13);
      v20 = v22;
      goto LABEL_10;
    }

    return 0;
  }

  if (v6 < 0)
  {
    v8 = *v4;
  }

  else
  {
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v9 = a1;
  v10 = sub_248384560();

  if (!v10)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v11 = sub_248384360();
  v12 = a4(v8, v11);

  v13 = sub_24814C91C(v9);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = *(*(v12 + 56) + 8 * v13);
  sub_2482B7068(v13, v12);

  *v5 = v12;
  return v16;
}

uint64_t sub_2482D13B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92698);
    v2 = sub_2483845E0();
    v19 = v2;
    sub_248384540();
    v3 = sub_248384570();
    if (v3)
    {
      v4 = v3;
      sub_24814FB28(0, &qword_27EE91E40);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for DBInstrumentClusterSceneViewController();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2482D207C(v12 + 1, 1, &qword_27EE92698);
        }

        v2 = v19;
        result = sub_248384020();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_248384570();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2482D15FC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92718);
  v39 = a2;
  result = sub_2483845D0();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2482D5040(&unk_27EE92720, &qword_27EE91CD8);
      result = sub_2483838D0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2482D19E8(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v41 = a2;
  result = sub_2483845D0();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = (v8 + 16);
    v39 = v11;
    v40 = v8;
    v42 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      sub_2482D5040(&unk_27EE92720, &qword_27EE91CD8);
      result = sub_2483838D0();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v7);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v5 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_2482D1DD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92710);
  v34 = a2;
  result = sub_2483845D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_248384780();
      sub_2483839E0();
      result = sub_2483847B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2482D207C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_2483845D0();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_248384020();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v6 + 32);
      if (v32 >= 64)
      {
        bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_2482D22DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = *v3;
  v14 = sub_2482D1138(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2482D2C60();
      goto LABEL_7;
    }

    sub_2482D15FC(v17, a3 & 1);
    v22 = sub_2482D1138(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2482D29CC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2483846E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_2482D24B0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v27[0] = a4;
  v27[1] = a5;
  v6 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v14 = *v5;
  v16 = sub_2482D1138(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_2482D2EE8(v27[0]);
      goto LABEL_7;
    }

    sub_2482D19E8(v19, a3 & 1, v27[0]);
    v25 = sub_2482D1138(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      sub_2482D29CC(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    sub_2483846E0();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t sub_2482D26B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24822B8A0(a2, a3);
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
      sub_2482D1DD4(v16, a4 & 1);
      v11 = sub_24822B8A0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2483846E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2482D3164();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

id sub_2482D2830(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v9 = *v4;
  v10 = sub_24814C91C(a2);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a3 & 1) == 0)
  {
    if (v17 < v15 || (a3 & 1) != 0)
    {
      sub_2482D207C(v15, a3 & 1, a4);
      v10 = sub_24814C91C(a2);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_24814FB28(0, &qword_27EE91E40);
        v10 = sub_2483846E0();
        __break(1u);
        return MEMORY[0x2821F96F8](v10, v22);
      }
    }

    else
    {
      v18 = v10;
      sub_2482D32D4(a4);
      v10 = v18;
    }
  }

  v20 = *v6;
  if (v16)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v10);
    *(v21 + 8 * v10) = a1;

    return MEMORY[0x2821F96F8](v10, v22);
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a2;
  *(v20[7] + 8 * v10) = a1;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v24;

  return a2;
}

uint64_t sub_2482D29CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_2482D2A90(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_2482D5040(&qword_27EE92748, &unk_27EE91CE0);
      v16 = sub_248383910();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_2482D2C60()
{
  v1 = v0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92718);
  v3 = *v0;
  v4 = sub_2483845C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_2482D2EE8(uint64_t *a1)
{
  v3 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v1;
  v6 = sub_2483845C0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v3;
    v29 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;
        result = v25;
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v28;
        v7 = v34;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v3 = v7;
  }

  return result;
}

void *sub_2482D3164()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92710);
  v2 = *v0;
  v3 = sub_2483845C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_2482D32D4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2483845C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
        result = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_2482D3424(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2482D37DC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2482D34B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92710);
  result = sub_2483845F0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_248384780();

    sub_2483839E0();
    result = sub_2483847B0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2482D36F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE925B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2482D3768()
{
  result = qword_27EE92280;
  if (!qword_27EE92280)
  {
    sub_24814FB28(255, &qword_27EE91E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE92280);
  }

  return result;
}

uint64_t sub_2482D37DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v21 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_2482D34B4(v21, a2, v22, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_2482D34B4(v21, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2482D3950(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_2482D37DC(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_2482D3424(v10, v6, v4, a2);
  result = MEMORY[0x24C1CD5F0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

id sub_2482D3AD0(void *a1)
{
  v2 = *(v1 + 24);
  [a1 setUserInterfaceStyle_];
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result setMapStyle_];
  }

  return result;
}

void sub_2482D3B40(void *a1)
{
  sub_248383D80();
  v2 = *sub_24827BA50();
  sub_248382A40();

  v3 = [a1 mostRecentClusterNavigatingApp];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 applicationWithBundleIdentifier_];

    if (v6)
    {
      sub_2482CFB20(v6);
    }
  }
}

void sub_2482D3C58(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_248382A90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v52 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = sub_24827C568();
  v57 = *(v7 + 16);
  v58 = v15;
  v57(v14);

  v16 = sub_248382A80();
  v17 = sub_248383DC0();

  v18 = os_log_type_enabled(v16, v17);
  v55 = v9;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v53 = v7 + 16;
    v20 = v7;
    v21 = v19;
    v22 = swift_slowAlloc();
    v59[0] = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_24814A378(a1, a2, v59);
    *(v21 + 12) = 1026;
    *(v21 + 14) = a3 & 1;
    _os_log_impl(&dword_248146000, v16, v17, "Handling death of process with identifier: %{public}s isCrash: %{BOOL,public}d", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C1CD5F0](v22, -1, -1);
    v23 = v21;
    v7 = v20;
    MEMORY[0x24C1CD5F0](v23, -1, -1);
  }

  v24 = *(v7 + 8);
  v24(v14, v6);
  v25 = v6;
  v26 = [objc_opt_self() sharedInstance];
  v27 = sub_248383930();
  v28 = [v26 applicationWithBundleIdentifier_];

  if (v28)
  {
    v29 = [v28 appPolicy];
    if (v29)
    {
      v30 = v29;
      if ([v29 launchUsingTemplateUI])
      {
        v53 = a1;
        v31 = v56;
        (v57)(v56, v58, v25);

        v32 = sub_248382A80();
        v33 = v25;
        v34 = sub_248383DC0();

        v35 = os_log_type_enabled(v32, v34);
        v52 = v7;
        if (v35)
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v59[0] = v37;
          *v36 = 136446210;
          *(v36 + 4) = sub_24814A378(v53, a2, v59);
          _os_log_impl(&dword_248146000, v32, v34, "[DBInstrumentClusterSceneCoordinator] Dead process is template app %{public}s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x24C1CD5F0](v37, -1, -1);
          MEMORY[0x24C1CD5F0](v36, -1, -1);

          v38 = v56;
        }

        else
        {

          v38 = v31;
        }

        v40 = v24;
        v24(v38, v33);
        v41 = v54;
        v42 = v55;
        v43 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationScenes;
        swift_beginAccess();
        v44 = *(v41 + v43);

        v45 = sub_24814C858(v28, v44);

        if (v45)
        {
          (v57)(v42, v58, v33);
          v46 = v45;
          v47 = sub_248382A80();
          v48 = sub_248383DC0();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *v49 = 138412290;
            v51 = [v46 identity];
            *(v49 + 4) = v51;
            *v50 = v51;
            _os_log_impl(&dword_248146000, v47, v48, "[DBInstrumentClusterSceneCoordinator] Dead process had template host scene, deactivating %@", v49, 0xCu);
            sub_24822D578(v50, &qword_27EE8FE40);
            MEMORY[0x24C1CD5F0](v50, -1, -1);
            MEMORY[0x24C1CD5F0](v49, -1, -1);
          }

          v40(v42, v33);
          [v46 deactivate_];
        }

        v39 = v30;
      }

      else
      {
        v39 = v28;
        v28 = v30;
      }
    }
  }
}

void sub_2482D41D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v75 - v3;
  v5 = [objc_opt_self() sharedInstance];
  v6 = sub_248383930();
  v88 = [v5 applicationWithBundleIdentifier_];

  if (!v88)
  {
    return;
  }

  v7 = [v88 appPolicy];
  if (!v7)
  {
    v17 = v88;
LABEL_9:

    return;
  }

  v87 = v7;
  if (([v7 launchUsingTemplateUI] & 1) == 0)
  {

    v17 = v87;
    goto LABEL_9;
  }

  v80 = v4;
  v8 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationPresenters;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationSceneViewControllers;
  v81 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__environment;
  v82 = OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__applicationScenes;

  v84 = v14;
  swift_beginAccess();
  v15 = 0;
  v16 = (v11 + 63) >> 6;
  v83 = xmmword_24839C7F0;
  v86 = v9;
  while (v13)
  {
LABEL_19:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = *(*(v9 + 56) + ((v15 << 9) | (8 * v19)));
    v21 = *(v20 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application);
    if (v21)
    {
      v22 = sub_24814FB28(0, &qword_27EE91E40);

      v23 = v88;
      v24 = v21;
      v25 = sub_248384030();

      if ((v25 & 1) == 0 || (*(v20 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__isActive) & 1) == 0)
      {
        goto LABEL_13;
      }

      sub_248383DC0();
      v26 = *sub_24827BA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v27 = swift_allocObject();
      v85 = v1;
      v28 = v27;
      *(v27 + 16) = v83;
      *(v27 + 56) = v22;
      *(v27 + 64) = sub_2482D3768();
      *(v28 + 32) = v23;
      v29 = v23;
      v30 = v26;
      sub_248382A40();

      v31 = v84;
      v32 = *(v85 + v84);
      if ((v32 & 0xC000000000000001) != 0)
      {
        v33 = v29;
        v34 = v29;

        v35 = sub_248384560();

        if (!v35)
        {
          goto LABEL_30;
        }

        v89 = v35;
        type metadata accessor for DBInstrumentClusterSceneViewController();
        swift_dynamicCast();
        v36 = v90;
      }

      else
      {
        v33 = v29;
        if (!*(v32 + 16))
        {
          goto LABEL_31;
        }

        v37 = sub_24814C91C(v29);
        if ((v38 & 1) == 0)
        {
LABEL_30:

          goto LABEL_31;
        }

        v36 = *(*(v32 + 56) + 8 * v37);
      }

      if (v36)
      {
LABEL_48:

        v65 = v31;
        v1 = v85;
        v66 = *(v85 + v65);
        if ((v66 & 0xC000000000000001) != 0)
        {
          v67 = v33;

          v68 = sub_248384560();

          if (!v68)
          {
            goto LABEL_12;
          }

          v89 = v68;
          type metadata accessor for DBInstrumentClusterSceneViewController();
          swift_dynamicCast();
          v69 = v90;
        }

        else
        {
          if (!*(v66 + 16))
          {
            goto LABEL_13;
          }

          v70 = sub_24814C91C(v33);
          if ((v71 & 1) == 0)
          {
LABEL_12:

            goto LABEL_13;
          }

          v69 = *(*(v66 + 56) + 8 * v70);
        }

        if (v69)
        {
          v72 = OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__lastURL;
          swift_beginAccess();
          v73 = v20 + v72;
          v74 = v80;
          sub_2482B04BC(v73, v80);
          (*((*MEMORY[0x277D85000] & *v69) + 0x98))(v74);

          sub_24822D578(v74, &qword_27EE904C0);
          v9 = v86;
        }

        else
        {
LABEL_13:

          v9 = v86;
        }
      }

      else
      {
LABEL_31:
        v1 = v85;
        v39 = sub_2482D056C(v33);
        v41 = v40;
        if (v39)
        {
          v42 = v39;
          v78 = type metadata accessor for DBInstrumentClusterSceneViewController();
          Strong = swift_unknownObjectUnownedLoadStrong();
          v75 = v41;
          v76 = v33;
          v44 = v33;
          v45 = v42;
          v79 = v44;
          v46 = sub_248295630(v45, v44, v41, Strong);
          v47 = v82;
          swift_beginAccess();
          v48 = *(v1 + v47);
          v78 = v46;
          v77 = v45;
          if ((v48 & 0xC000000000000001) != 0)
          {
            if (v48 < 0)
            {
              v49 = v48;
            }

            else
            {
              v49 = v48 & 0xFFFFFFFFFFFFFF8;
            }

            v50 = v45;
            v51 = sub_248384360();
            v31 = v84;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_59;
            }

            v52 = sub_2482B6BB4(v49, v51 + 1);
            v53 = v85;
            v47 = v82;
            *(v85 + v82) = v52;
            v45 = v77;
          }

          else
          {
            v54 = v45;
            v31 = v84;
            v53 = v85;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v89 = *(v53 + v47);
          *(v53 + v47) = 0x8000000000000000;
          sub_2482D2830(v45, v79, isUniquelyReferenced_nonNull_native, &unk_27EE926A0);
          *(v53 + v47) = v89;
          swift_endAccess();
          swift_beginAccess();
          v56 = *(v53 + v31);
          if ((v56 & 0xC000000000000001) != 0)
          {
            if (v56 < 0)
            {
              v57 = *(v53 + v31);
            }

            else
            {
              v57 = v56 & 0xFFFFFFFFFFFFFF8;
            }

            v58 = v78;
            v59 = sub_248384360();
            v33 = v76;
            if (__OFADD__(v59, 1))
            {
              goto LABEL_60;
            }

            v60 = sub_2482D13B0(v57, v59 + 1);
            v61 = v85;
            *(v85 + v31) = v60;
            v62 = v78;
          }

          else
          {
            v62 = v78;
            v63 = v78;
            v61 = v85;
            v33 = v76;
          }

          v64 = swift_isUniquelyReferenced_nonNull_native();
          v89 = *(v61 + v31);
          *(v61 + v31) = 0x8000000000000000;
          sub_2482D2830(v62, v79, v64, &qword_27EE92698);
          *(v61 + v31) = v89;
          swift_endAccess();

          v36 = v77;
          goto LABEL_48;
        }

        v9 = v86;
      }
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      return;
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void sub_2482D4A08()
{
  sub_2482CAEE0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2482D4ADC()
{
  sub_2482CAEE0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2482D4BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2482D4C2C(void *a1)
{
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = [swift_unknownObjectUnownedLoadStrong() sceneIdentifierForApplication_];
  swift_unknownObjectRelease();
  if (!v6)
  {
    sub_248383960();
    v6 = sub_248383930();
  }

  [a1 setIdentifier_];

  v7 = [v5 info];
  v8 = [v7 processIdentity];

  if (v8)
  {
    v9 = [objc_opt_self() defaultIdentityForProcessIdentity_];

    [a1 setClientIdentity_];

    [a1 setSpecification_];
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_2482D4D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC9DashBoardP33_AA18878D27B62631944FB3DCC9C5524734_DBInstrumentClusterScenePresenter__application);
  v5 = *(*(v3 + 16) + OBJC_IVAR____TtC9DashBoard35DBInstrumentClusterSceneCoordinator__navigationApp);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    sub_24814FB28(0, &qword_27EE91E40);
    v8 = v5;
    v9 = v4;
    v10 = sub_248384030();

    return v10 & 1;
  }

  return result;
}

void sub_2482D4E14(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v3 = *(v1 + 24);
  v4 = [swift_unknownObjectUnownedLoadStrong() sceneIdentifierForApplication_];
  swift_unknownObjectRelease();
  sub_248383960();

  MEMORY[0x24C1CAFD0](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  sub_2482D11E4();
  v5 = sub_248384650();
  MEMORY[0x24C1CAFD0](v5);

  v6 = sub_248383930();

  [a1 setIdentifier_];

  v7 = [v3 info];
  v8 = [v7 processIdentity];

  if (v8)
  {
    v9 = [objc_opt_self() defaultIdentityForProcessIdentity_];

    [a1 setClientIdentity_];
    v10 = [objc_allocWithZone(MEMORY[0x277CF9398]) init];
    [a1 setSpecification_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2482D5040(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90A80);
    sub_2482ADA48(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double variable initialization expression of DBWidgetHomeViewController.widgetStackRows()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92878);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_24839C7F0;
  *(v0 + 32) = MEMORY[0x277D84F90];
  return result;
}

id variable initialization expression of DBWidgetHomeViewController.widgetStackViewControllerByFocusView()
{
  v0 = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:5];

  return v0;
}

uint64_t sub_2482D5200()
{
  v1 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController____lazy_storage___timelinePlaybackController;
  if (*(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController____lazy_storage___timelinePlaybackController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController____lazy_storage___timelinePlaybackController);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TimelinePlaybackController(0);
    v2 = sub_24822DD80();
    (*(*v2 + 128))(*(v3 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_foreground));
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_2482D52AC()
{
  v1 = v0;
  sub_24814FB28(0, &unk_27EE92CB8);
  result = sub_248383D70();
  if (result)
  {
    v3 = result;
    v4 = [result focusedItem];

    if (v4)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        result = [v1 view];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v7 = result;
        sub_24814FB28(0, &qword_27EE8FFC0);
        swift_unknownObjectRetain();
        v8 = sub_248383E90();

        swift_unknownObjectRelease();
        if (v8)
        {
          return v6;
        }
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

id sub_2482D53BC()
{
  v1 = v0;
  sub_24814FB28(0, &unk_27EE92CB8);
  result = sub_248383D70();
  if (result)
  {
    v3 = result;
    v4 = [result focusedItem];

    if (v4)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        result = [v1 view];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v7 = result;
        sub_24814FB28(0, &qword_27EE8FFC0);
        swift_unknownObjectRetain();
        v8 = sub_248383E90();

        swift_unknownObjectRelease();
        if (v8)
        {
          v9 = [*&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackViewControllerByFocusView] objectForKey_];
          swift_unknownObjectRelease();
          return v9;
        }
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

id DBWidgetHomeViewController.enabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_state);
  if (v1)
  {
    return [v1 showWidgets];
  }

  else
  {
    return [*(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetLayoutDataProvider) isEnabled];
  }
}

uint64_t DBWidgetHomeViewController.showWallpaper.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_state);
  if (v1)
  {
    return [v1 showWallpaper];
  }

  else
  {
    return 1;
  }
}

id DBWidgetHomeViewController.linearFocusItems.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController);
  if (v1)
  {
    v2 = v1;
    result = [v2 view];
    if (result)
    {
      v4 = result;
      result = [v2 view];
      if (result)
      {
        v5 = result;
        [result bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        v14 = [v4 focusItemsInRect_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE928F8);
        v15 = sub_248383B10();

        return v15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v16 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusViews);
    if (v16 >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE928F8);
      v15 = sub_248384590();

      return v15;
    }

    swift_bridgeObjectRetain_n();
    sub_2483846A0();

    return v16;
  }

  return result;
}

id sub_2482D57BC(void *a1, uint64_t a2, void (*a3)(void), uint64_t *a4)
{
  v6 = a1;
  a3();

  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v7 = sub_248383B00();

  return v7;
}

uint64_t DBWidgetHomeViewController.preferredFocusEnvironments.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24839C700;
    *(v2 + 32) = v1;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for DBWidgetHomeViewController();
    v3 = objc_msgSendSuper2(&v6, sel_preferredFocusEnvironments);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92960);
    v2 = sub_248383B10();
  }

  v4 = v1;
  return v2;
}

uint64_t DBWidgetHomeViewController.init(environment:layoutEngine:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v6 - 8);
  v117 = &v114 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92968);
  MEMORY[0x28223BE20](v8 - 8);
  v114 = &v114 - v9;
  v120 = sub_248382A90();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v11 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v119 = &v114 - v13;
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusRingSpacing] = 0x4010000000000000;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackRows;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92878);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24839C7F0;
  v16 = MEMORY[0x277D84F90];
  *(v15 + 32) = MEMORY[0x277D84F90];
  *&v2[v14] = v15;
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_currentConstraints] = 0;
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack] = 0;
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController] = 0;
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_cancelTouchesAssertions] = v16;
  v115 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions;
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions] = 0;
  v17 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackViewControllerByFocusView;
  *&v2[v17] = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:5];
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusViews] = v16;
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusTimer] = 0;
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_state] = 0;
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_proactiveSuggestionsProcessingTimer] = 0;
  v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_foreground] = 0;
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController____lazy_storage___timelinePlaybackController] = 0;
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_legibilitySettings] = 0;
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_contentVisibility] = 0;
  v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_shouldBeIndicatedInPageControl] = 1;
  v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_shouldObscureBackgroundWhileVisible] = 0;
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_layoutEngine] = a2;
  v116 = a2;
  v18 = &selRef_button;
  v19 = [a1 environmentConfiguration];
  v20 = [v19 vehicleID];

  v21 = sub_248383960();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = [a1 environmentConfiguration];
    v26 = [v25 vehicleID];

    v27 = sub_248383960();
    v29 = v28;

    v30 = &v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_vehicleID];
    *v30 = v27;
    v30[1] = v29;
    v31 = sub_24814A31C();
    v32 = v118;
    v33 = v120;
    (v118)[2](v119, v31, v120);
    v34 = v2;
    v35 = sub_248382A80();
    v36 = sub_248383DC0();

    v37 = v32;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v38 = 136446210;
      v40 = *v30;
      v39 = v30[1];

      v41 = sub_24814A378(v40, v39, &aBlock);

      *(v38 + 4) = v41;
      v18 = &selRef_button;
      _os_log_impl(&dword_248146000, v35, v36, "Initializing proactive with CarPlay identifier: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C1CD5F0](v32, -1, -1);
      MEMORY[0x24C1CD5F0](v38, -1, -1);

      (*(v37 + 8))(v119, v120);
    }

    else
    {

      (*(v32 + 8))(v119, v33);
    }

    v50 = v114;
    sub_248382A20();
    v51 = sub_248382A30();
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
      goto LABEL_25;
    }

    sub_248382A10();
    swift_allocObject();
    v49 = sub_2483829F0();
  }

  else
  {
    v42 = &v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_vehicleID];
    *v42 = 0x746C7561666544;
    *(v42 + 1) = 0xE700000000000000;
    v43 = sub_24814A31C();
    v44 = v118;
    v45 = v120;
    (v118)[2](v11, v43, v120);
    v46 = sub_248382A80();
    v47 = sub_248383DC0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_248146000, v46, v47, "Initializing proactive with CarPlay default identifier", v48, 2u);
      MEMORY[0x24C1CD5F0](v48, -1, -1);
    }

    (v44[1])(v11, v45);
    sub_248382A10();
    swift_allocObject();
    v49 = sub_248382A00();
  }

  *&v3[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_proactiveClient] = v49;
  v32 = v18;
  v52 = [a1 v18[472]];
  v53 = [v52 displayConfiguration];

  [v53 pointScale];
  v55 = [objc_allocWithZone(MEMORY[0x277CFA398]) initWithScale:sub_2482D68A4(objc_msgSend(v53 colorGamut:{sel_colorGamut)), v54}];
  v56 = &v3[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_vehicleID];
  sub_248381BD0();
  swift_allocObject();
  v57 = v55;

  v58 = sub_248381BB0();
  v59 = [objc_opt_self() rootSettings];
  if (!v59)
  {
    __break(1u);
    goto LABEL_19;
  }

  v60 = v59;
  v61 = [v59 widgetSettings];

  if (!v61)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v118 = v57;
  v119 = v53;
  [v61 setStackFlashesPageControlOnAppearance_];
  [v61 setStackPageControlScale_];
  sub_2482D6978();
  v62 = objc_allocWithZone(sub_248382190());

  v114 = v61;
  *&v3[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetMultiStackViewController] = sub_248382160();
  *&v3[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetHostManager] = v58;

  v120 = a1;
  v63 = [a1 v18 + 1912];
  v64 = [v63 statusBarInsetViewAreas];

  v65 = v64;
  if (!v64)
  {
    sub_24814FB28(0, &unk_27EE90E00);
    sub_248383B10();
    v65 = sub_248383B00();
  }

  sub_24814FB28(0, &unk_27EE90E00);
  v32 = sub_248383B10();
  v66 = DBApp;

  v67 = sub_248383930();

  v68 = [v66 createWidgetLayoutDataProviderForVehicleID:v67 viewAreas:v65];

  if (v68)
  {
    v69 = v68;

    *&v3[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetLayoutDataProvider] = v69;
    v70 = v69;

    v71 = sub_2483829C0();

    *&v3[v115] = v71;

    v72 = type metadata accessor for DBWidgetHomeViewController();
    v127.receiver = v3;
    v127.super_class = v72;
    v73 = objc_msgSendSuper2(&v127, sel_initWithNibName_bundle_, 0, 0);
    v74 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetMultiStackViewController;
    v75 = *&v73[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetMultiStackViewController];
    v76 = objc_allocWithZone(MEMORY[0x277CFA430]);
    v77 = v73;
    v78 = v75;
    [v76 initWithRenderingMode:0 backgroundViewPolicy:1];
    sub_248382150();

    v79 = *&v73[v74];
    sub_2482E64FC(&qword_27EE92A20, v80, type metadata accessor for DBWidgetHomeViewController);
    v81 = v77;
    v82 = v79;
    sub_248382180();

    sub_2482E64FC(&qword_27EE92A28, v83, type metadata accessor for DBWidgetHomeViewController);

    sub_2483829E0();

    v84 = sub_248383BE0();
    v85 = v117;
    (*(*(v84 - 8) + 56))(v117, 1, 1, v84);
    sub_248383BB0();
    v86 = v81;
    v87 = sub_248383BA0();
    v88 = swift_allocObject();
    v89 = MEMORY[0x277D85700];
    *(v88 + 16) = v87;
    *(v88 + 24) = v89;
    *(v88 + 32) = 0;
    *(v88 + 40) = v86;
    sub_2482D8C74(0, 0, v85, &unk_24839FE68, v88);

    v90 = [objc_opt_self() defaultCenter];
    v91 = [objc_opt_self() mainQueue];
    v92 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v125 = sub_2482E65E0;
    v126 = v92;
    aBlock = MEMORY[0x277D85DD0];
    v122 = 1107296256;
    v123 = sub_2482D6D10;
    v124 = &block_descriptor_17;
    v93 = _Block_copy(&aBlock);
    v94 = v86;

    v95 = [v90 addObserverForName:@"DBWidgetLayoutStateChangedNotification" object:0 queue:v91 usingBlock:v93];
    _Block_release(v93);
    swift_unknownObjectRelease();

    v96 = [objc_opt_self() sharedInstance];
    [v96 addObserver_];
    swift_unknownObjectRelease();

    return v94;
  }

LABEL_20:
  aBlock = 0;
  v122 = 0xE000000000000000;
  sub_248384440();
  MEMORY[0x24C1CAFD0](0xD000000000000037, 0x80000002483B0A60);
  v98 = *v56;
  v99 = *(v56 + 1);

  MEMORY[0x24C1CAFD0](v98, v99);

  MEMORY[0x24C1CAFD0](0xD000000000000011, 0x80000002483B0AA0);
  if (v32 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248384360())
  {
    v101 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v128 = MEMORY[0x277D84F90];
    sub_24822C8F0(0, i & ~(i >> 63), 0);
    if ((i & 0x8000000000000000) == 0)
    {
      v102 = 0;
      v101 = v128;
      do
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v103 = MEMORY[0x24C1CBA50](v102, v32);
        }

        else
        {
          v103 = *(v32 + 8 * v102 + 32);
        }

        v104 = v103;
        [v104 CGRectValue];
        v105 = sub_248383F10();
        v107 = v106;

        v128 = v101;
        v109 = *(v101 + 16);
        v108 = *(v101 + 24);
        if (v109 >= v108 >> 1)
        {
          sub_24822C8F0((v108 > 1), v109 + 1, 1);
          v101 = v128;
        }

        ++v102;
        *(v101 + 16) = v109 + 1;
        v110 = v101 + 16 * v109;
        *(v110 + 32) = v105;
        *(v110 + 40) = v107;
      }

      while (i != v102);
      break;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v111 = MEMORY[0x24C1CB100](v101, MEMORY[0x277D837D0]);
  v113 = v112;

  MEMORY[0x24C1CAFD0](v111, v113);

  result = sub_248384580();
  __break(1u);
  return result;
}

uint64_t sub_2482D68A4(uint64_t a1)
{
  if ((a1 + 1) < 3)
  {
    return qword_2483A0250[a1 + 1];
  }

  sub_248384440();
  MEMORY[0x24C1CAFD0](0xD00000000000001BLL, 0x80000002483B0B10);
  type metadata accessor for FBSDisplayGamut(0);
  sub_248384530();
  result = sub_248384580();
  __break(1u);
  return result;
}

size_t sub_2482D6978()
{
  v17 = sub_248382110();
  v1 = *(v17 - 8);
  *&v2 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0;
  v5 = [v0 environmentConfiguration];
  v6 = [v5 statusBarInsetViewAreas];

  sub_24814FB28(0, &unk_27EE90E00);
  v7 = sub_248383B10();

  v8 = Array<A>.rectValues.getter(v7);

  v9 = *(v8 + 2);
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    result = sub_2482E64DC(0, v9, 0);
    v11 = 0;
    v12 = v20;
    v13 = (v8 + 48);
    while (v11 < *(v8 + 2))
    {
      v14 = *v13;
      v19[0] = *(v13 - 1);
      v19[1] = v14;
      sub_2482E5D1C(v19, v18);
      v20 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2482E64DC(v15 > 1, v16 + 1, 1);
        v12 = v20;
      }

      ++v11;
      *(v12 + 16) = v16 + 1;
      result = (*(v1 + 32))(v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v16, v4, v17);
      v13 += 2;
      if (v9 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2482D6BAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_248383BE0();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_248383BB0();
    v6 = v4;
    v7 = sub_248383BA0();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    *(v8 + 16) = v7;
    *(v8 + 24) = v9;
    *(v8 + 32) = 1;
    *(v8 + 40) = v6;
    sub_2482D8C74(0, 0, v2, &unk_2483A0228, v8);
  }
}

uint64_t sub_2482D6D10(uint64_t a1)
{
  v2 = sub_248380FF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_248380FE0();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall DBWidgetHomeViewController.setForeground(_:)(Swift::Bool a1)
{
  if (v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_foreground] != a1)
  {
    v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_foreground] = a1;
    if (a1 && !*&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController])
    {
      v3 = v1;
      v4 = sub_2482D53BC();
      v5 = v4;
      if (v4)
      {
      }

      [v3 updatePageControlsOffsetAndFlash_];
    }

    v6 = sub_2482D5200();
    (*(*v6 + 128))(a1);

    sub_248382140();
    sub_2482D6FAC();
    sub_2482DB234(a1);

    if (a1)
    {
      sub_2483829B0();
    }

    else
    {
      sub_2483829D0();
    }
  }
}

void sub_2482D6FAC()
{
  v1 = v0;
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v38 - v8;
  v10 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_proactiveSuggestionsProcessingTimer;
  [*&v0[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_proactiveSuggestionsProcessingTimer] invalidate];
  v11 = *&v0[v10];
  *&v0[v10] = 0;

  v12 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController;
  if (*&v0[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController] || v0[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_foreground] != 1)
  {
    v23 = sub_24814A31C();
    (*(v3 + 16))(v5, v23, v2);
    v24 = v0;
    v25 = sub_248382A80();
    v26 = sub_248383DC0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v2;
      aBlock[0] = v28;
      v29 = v28;
      *v27 = 67240706;
      *(v27 + 4) = *&v0[v12] != 0;
      *(v27 + 8) = 1026;
      *(v27 + 10) = v24[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_foreground];

      *(v27 + 14) = 2082;
      v42 = *&v24[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92C28);
      sub_24822D648(&qword_27EE92C30, &qword_27EE92C38);
      v30 = sub_2483841D0();
      v32 = sub_24814A378(v30, v31, aBlock);

      *(v27 + 16) = v32;
      _os_log_impl(&dword_248146000, v25, v26, "Skipping setting of proactiveSuggestionsProcessingTimer. IntroViewController = %{BOOL,public}d, isForegrounded: %{BOOL,public}d, Proactive Suggestions: %{public}s", v27, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1CD5F0](v29, -1, -1);
      MEMORY[0x24C1CD5F0](v27, -1, -1);

      (*(v3 + 8))(v5, v40);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    v13 = sub_24814A31C();
    (*(v3 + 16))(v9, v13, v2);
    v14 = v0;
    v15 = sub_248382A80();
    v16 = sub_248383DC0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v40 = v2;
      v18 = v17;
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v18 = 136446210;
      v42 = *&v14[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92C28);
      sub_24822D648(&qword_27EE92C30, &qword_27EE92C38);
      v19 = sub_2483841D0();
      v21 = sub_24814A378(v19, v20, aBlock);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_248146000, v15, v16, "Setting timer to delay processing suggestions: %{public}s", v18, 0xCu);
      v22 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x24C1CD5F0](v22, -1, -1);
      MEMORY[0x24C1CD5F0](v18, -1, -1);

      (*(v3 + 8))(v9, v40);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    v33 = objc_opt_self();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_2482EBD2C;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24826F624;
    aBlock[3] = &block_descriptor_168;
    v35 = _Block_copy(aBlock);

    v36 = [v33 scheduledTimerWithTimeInterval:0 repeats:v35 block:10.0];
    _Block_release(v35);
    v37 = *&v1[v10];
    *&v1[v10] = v36;
  }
}

Swift::Void __swiftcall DBWidgetHomeViewController.beginCancelingTouches()()
{
  _s9DashBoard26DBWidgetHomeViewControllerC19endCancelingTouchesyyF_0();
  v1 = sub_248382130();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248384360())
  {
    v4 = 0;
    v5 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_cancelTouchesAssertions;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1CBA50](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v6 cancelTouchesForCurrentEventInHostedContent])
      {
        swift_beginAccess();
        v9 = swift_unknownObjectRetain();
        MEMORY[0x24C1CB0D0](v9);
        if (*((*(v0 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_248383B50();
        }

        sub_248383B70();
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
}

uint64_t _s9DashBoard26DBWidgetHomeViewControllerC19endCancelingTouchesyyF_0()
{
  v1 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_cancelTouchesAssertions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_248384360();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1CBA50](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      [v5 invalidate];
      swift_unknownObjectRelease();
      ++v4;
    }

    while (v6 != v3);
  }

  *(v0 + v1) = MEMORY[0x277D84F90];
}

uint64_t DBWidgetHomeViewController.legibilitySettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_legibilitySettings;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t DBWidgetHomeViewController.contentVisibility.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_contentVisibility;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DBWidgetHomeViewController.contentVisibility.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_contentVisibility;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2482D7C84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 280) = a5;
  *(v5 + 432) = a4;
  v6 = sub_248382A90();
  *(v5 + 288) = v6;
  *(v5 + 296) = *(v6 - 8);
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  sub_248383BB0();
  *(v5 + 336) = sub_248383BA0();
  v8 = sub_248383B90();
  *(v5 + 344) = v8;
  *(v5 + 352) = v7;

  return MEMORY[0x2822009F8](sub_2482D7DA0, v8, v7);
}

uint64_t sub_2482D7DA0()
{
  v46 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = sub_24814A31C();
  *(v0 + 360) = v4;
  v5 = *(v3 + 16);
  *(v0 + 368) = v5;
  *(v0 + 376) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_248382A80();
  v7 = sub_248383DC0();
  if (os_log_type_enabled(v6, v7))
  {
    v44 = v5;
    v8 = *(v0 + 432);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45 = v10;
    *v9 = 136446210;
    v11 = 0xE700000000000000;
    v12 = 0x6C616974696E69;
    v13 = 0xD000000000000011;
    v14 = 0x80000002483B0BC0;
    if (v8 != 2)
    {
      v13 = 0xD000000000000016;
      v14 = 0x80000002483B0BA0;
    }

    if (v8)
    {
      v12 = 0xD000000000000011;
      v11 = 0x80000002483B0BE0;
    }

    if (v8 <= 1)
    {
      v15 = v12;
    }

    else
    {
      v15 = v13;
    }

    if (v8 <= 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v14;
    }

    v17 = *(v0 + 296);
    v42 = *(v0 + 288);
    v43 = *(v0 + 328);
    v18 = sub_24814A378(v15, v16, &v45);

    *(v9 + 4) = v18;
    _os_log_impl(&dword_248146000, v6, v7, "Widget state fetch requested (updateType: %{public}s)", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1CD5F0](v10, -1, -1);
    MEMORY[0x24C1CD5F0](v9, -1, -1);

    v19 = *(v17 + 8);
    v19(v43, v42);
    v5 = v44;
  }

  else
  {
    v20 = *(v0 + 328);
    v21 = *(v0 + 288);
    v22 = *(v0 + 296);

    v19 = *(v22 + 8);
    v19(v20, v21);
  }

  *(v0 + 384) = v19;
  if (sub_248382170())
  {
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 392) = Strong;
    if (Strong)
    {
      v24 = *(*(v0 + 280) + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetLayoutDataProvider);
      *(v0 + 400) = v24;
      v25 = [Strong environmentConfiguration];
      v26 = [v25 statusBarInsetViewAreas];

      if (!v26)
      {
        sub_24814FB28(0, &unk_27EE90E00);
        sub_248383B10();
        v26 = sub_248383B00();
      }

      *(v0 + 408) = v26;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_2482D82EC;
      v27 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92DA0);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_2482D8AF0;
      *(v0 + 168) = &block_descriptor_186;
      *(v0 + 176) = v27;
      [v24 updateViewAreas:v26 completion:v0 + 144];

      return MEMORY[0x282200938](v0 + 16);
    }

    v37 = *(v0 + 320);
    v38 = *(v0 + 288);

    v5(v37, v4, v38);
    v30 = sub_248382A80();
    v31 = sub_248383DA0();
    v39 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 320);
    v34 = *(v0 + 288);
    if (v39)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Couldn't fetch widget layout state: no environment";
      goto LABEL_25;
    }
  }

  else
  {
    v28 = *(v0 + 312);
    v29 = *(v0 + 288);

    v5(v28, v4, v29);
    v30 = sub_248382A80();
    v31 = sub_248383DA0();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 312);
    v34 = *(v0 + 288);
    if (v32)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Delegate not set. VC must have been invalidated";
LABEL_25:
      _os_log_impl(&dword_248146000, v30, v31, v36, v35, 2u);
      MEMORY[0x24C1CD5F0](v35, -1, -1);
    }
  }

  v19(v33, v34);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2482D82EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_2482D8754;
  }

  else
  {
    v5 = sub_2482D841C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2482D841C()
{
  v1 = *(v0 + 400);

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 272;
  *(v0 + 88) = sub_2482D853C;
  v2 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92DA8);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_2482D8B9C;
  *(v0 + 232) = &block_descriptor_189;
  *(v0 + 240) = v2;
  [v1 getWidgetStateWithCompletion_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_2482D853C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 424) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_2482D8924;
  }

  else
  {
    v5 = sub_2482D866C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2482D866C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 432);

  v3 = *(v1 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_state);
  *(v1 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_state) = *(v0 + 272);

  sub_2482D8F74(v2);
  if ((v2 | 2) == 3)
  {
    [*(v0 + 280) updatePageControlsOffsetAndFlash_];
  }

  swift_unknownObjectRelease();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2482D8754()
{
  v1 = *(v0 + 408);

  swift_willThrow();
  swift_unknownObjectRelease();

  v2 = *(v0 + 416);
  (*(v0 + 368))(*(v0 + 304), *(v0 + 360), *(v0 + 288));
  v3 = v2;
  v4 = sub_248382A80();
  v5 = sub_248383DA0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_248146000, v4, v5, "Couldn't fetch widget layout data: %{public}@", v6, 0xCu);
    sub_24822D578(v7, &qword_27EE8FE40);
    MEMORY[0x24C1CD5F0](v7, -1, -1);
    MEMORY[0x24C1CD5F0](v6, -1, -1);
  }

  else
  {
  }

  (*(v0 + 384))(*(v0 + 304), *(v0 + 288));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2482D8924()
{

  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 424);
  (*(v0 + 368))(*(v0 + 304), *(v0 + 360), *(v0 + 288));
  v2 = v1;
  v3 = sub_248382A80();
  v4 = sub_248383DA0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_248146000, v3, v4, "Couldn't fetch widget layout data: %{public}@", v5, 0xCu);
    sub_24822D578(v6, &qword_27EE8FE40);
    MEMORY[0x24C1CD5F0](v6, -1, -1);
    MEMORY[0x24C1CD5F0](v5, -1, -1);
  }

  else
  {
  }

  (*(v0 + 384))(*(v0 + 304), *(v0 + 288));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2482D8AF0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2482D8B9C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2482D8C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_248232C78(a3, v25 - v10, &qword_27EE90480);
  v12 = sub_248383BE0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24822D578(v11, &qword_27EE90480);
  }

  else
  {
    sub_248383BD0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_248383B90();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2483839C0() + 32;
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

      sub_24822D578(a3, &qword_27EE90480);

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

  sub_24822D578(a3, &qword_27EE90480);
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

void sub_2482D8F74(int a1)
{
  v226 = sub_248382110();
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v224 = &v221 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v3 - 8);
  v223 = &v221 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92A98);
  MEMORY[0x28223BE20](v5 - 8);
  v251 = &v221 - v6;
  v263 = sub_248381D90();
  v265 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v262 = &v221 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
  v233 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v275 = &v221 - v8;
  v274 = sub_248382500();
  v264 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v261 = &v221 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v273 = &v221 - v11;
  v269 = sub_248381210();
  v266 = *(v269 - 8);
  MEMORY[0x28223BE20](v269);
  v268 = &v221 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v253 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v254 = &v221 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v249 = &v221 - v15;
  v16 = sub_248382A90();
  v17 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  *&v272 = &v221 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v221 - v20;
  v22 = sub_24814A31C();
  v23 = *(v17 + 16);
  v270 = v22;
  v23(v21);
  v24 = sub_248382A80();
  v25 = sub_248383DC0();
  v26 = os_log_type_enabled(v24, v25);
  v227 = a1;
  if (v26)
  {
    v27 = v17;
    v271 = v16;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v281 = v29;
    *v28 = 136446210;
    v30 = 0xE700000000000000;
    v31 = 0x6C616974696E69;
    v32 = 0xD000000000000011;
    v33 = 0x80000002483B0BC0;
    if (a1 != 2)
    {
      v32 = 0xD000000000000016;
      v33 = 0x80000002483B0BA0;
    }

    if (a1)
    {
      v31 = 0xD000000000000011;
      v30 = 0x80000002483B0BE0;
    }

    if (a1 <= 1u)
    {
      v34 = v31;
    }

    else
    {
      v34 = v32;
    }

    if (a1 <= 1u)
    {
      v35 = v30;
    }

    else
    {
      v35 = v33;
    }

    v36 = sub_24814A378(v34, v35, &v281);

    *(v28 + 4) = v36;
    _os_log_impl(&dword_248146000, v24, v25, "Reconfiguring view with updateType: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x24C1CD5F0](v29, -1, -1);
    MEMORY[0x24C1CD5F0](v28, -1, -1);

    v37 = *(v27 + 8);
    v16 = v271;
    v37(v21, v271);
  }

  else
  {

    v37 = *(v17 + 8);
    v37(v21, v16);
  }

  v38 = v267;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v39 = *&v38[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_state];
  if (!v39)
  {
    swift_unknownObjectRelease();
    return;
  }

  v271 = v39;
  sub_2482D6FAC();
  sub_2482DB234(0);
  sub_2483429E8();
  swift_beginAccess();

  v40 = sub_248342C58();

  if (*(v40 + 16))
  {
    v41 = v16;
    v42 = *&v38[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_vehicleID];
    v43 = *&v38[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_vehicleID + 8];

    v44 = sub_24822B8A0(v42, v43);
    v46 = v45;

    if (v46)
    {
      v47 = *(*(v40 + 56) + 8 * v44);
    }

    else
    {
      v47 = 0;
    }

    v16 = v41;
  }

  else
  {
    v47 = 0;
  }

  v48 = v270;

  v49 = v272;
  (v23)(v272, v48, v16);
  v50 = v49;

  v51 = sub_248382A80();
  v52 = sub_248383DC0();

  v53 = os_log_type_enabled(v51, v52);
  v248 = v47;
  if (v53)
  {
    v54 = v16;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v277 = v56;
    *v55 = 136446210;
    v280 = v248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF8);
    sub_24822D648(&qword_27EE92D00, &qword_27EE92D08);
    v57 = sub_2483841D0();
    v59 = sub_24814A378(v57, v58, &v277);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_248146000, v51, v52, "Configuring starting widgets: %{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x24C1CD5F0](v56, -1, -1);
    MEMORY[0x24C1CD5F0](v55, -1, -1);

    v60 = v50;
    v61 = v54;
  }

  else
  {

    v60 = v50;
    v61 = v16;
  }

  v37(v60, v61);
  v62 = [Strong environmentConfiguration];
  [v62 currentStatusBarInsetSafeViewAreaFrame];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;

  v71 = sub_2482F8348(v64, v66, v68, v70);
  v232 = v71;
  v240 = v71 >> 62;
  if (v71 >> 62)
  {
    goto LABEL_102;
  }

  for (i = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248384360())
  {
    v280 = MEMORY[0x277D84F90];
    sub_2482E65FC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_187;
    }

    v73 = 0;
    v74 = v280;
    v260 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetHostManager;
    v234 = v232 & 0xC000000000000001;
    v229 = (v232 + 32);
    v266 += 8;
    v257 = *MEMORY[0x277CF8CA8];
    v259 = (v265 + 104);
    v256 = *MEMORY[0x277CF8CB8];
    v258 = *MEMORY[0x277CF8CB0];
    *&v272 = v264 + 32;
    v235 = v232 & 0xFFFFFFFFFFFFFF8;
    if (v232 < 0)
    {
      v75 = v232;
    }

    else
    {
      v75 = v232 & 0xFFFFFFFFFFFFFF8;
    }

    v231 = v75;
    v244 = (v253 + 16);
    v243 = (v233 + 56);
    v230 = v233 + 16;
    v242 = (v253 + 8);
    v245 = i;
    while (1)
    {
      if (__OFADD__(v73, 1))
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v228 = v73 + 1;
      if (v234)
      {
        v76 = MEMORY[0x24C1CBA50]();
      }

      else
      {
        if (v73 >= *(v235 + 16))
        {
          goto LABEL_186;
        }

        v76 = v229[v73];
      }

      v238 = v76;
      v77 = [v76 stacks];
      sub_248383DD0();
      v52 = sub_248383B10();

      v241 = v52;
      if (!(v52 >> 62))
      {
        v78 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v78)
        {
          break;
        }

        goto LABEL_89;
      }

      v78 = sub_248384360();
      if (v78)
      {
        break;
      }

LABEL_89:

      v52 = MEMORY[0x277D84F90];
LABEL_90:
      v280 = v74;
      v122 = v74[2];
      v121 = v74[3];
      if (v122 >= v121 >> 1)
      {
        sub_2482E65FC((v121 > 1), v122 + 1, 1);
        v74 = v280;
      }

      v74[2] = v122 + 1;
      v74[v122 + 4] = v52;
      v73 = v228;
      if (v228 == i)
      {
LABEL_96:

        v123 = v74;
        goto LABEL_104;
      }
    }

    v222 = v74;
    v279 = MEMORY[0x277D84F90];
    sub_2483844C0();
    if ((v78 & 0x8000000000000000) == 0)
    {
      v79 = 0;
      v247 = v241 & 0xC000000000000001;
      v237 = v241 & 0xFFFFFFFFFFFFFF8;
      v236 = v241 + 32;
      v246 = v78;
      while (1)
      {
        if (__OFADD__(v79, 1))
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v253 = v79 + 1;
        if (v247)
        {
          v82 = MEMORY[0x24C1CBA50]();
        }

        else
        {
          if (v79 >= *(v237 + 16))
          {
            goto LABEL_98;
          }

          v82 = *(v236 + 8 * v79);
        }

        v83 = v82;
        v84 = [v82 id];
        v85 = v268;
        sub_2483811F0();

        v86 = sub_2483811D0();
        v88 = v87;
        v265 = *v266;
        (v265)(v85, v269);
        v277 = v86;
        v278 = v88;
        v89 = sub_248381DD0();
        MEMORY[0x24C1C8E70](&v277, v89, MEMORY[0x277D837D0]);
        v74 = [v83 widgets];
        sub_248384160();
        v90 = sub_248383B10();

        if (v90 >> 62)
        {
          v91 = sub_248384360();
        }

        else
        {
          v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v252 = v83;
        if (v91)
        {
          v92 = 0;
          v270 = v90 & 0xC000000000000001;
          v93 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v270)
            {
              v94 = MEMORY[0x24C1CBA50](v92, v90);
            }

            else
            {
              if (v92 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_95;
              }

              v94 = *(v90 + 8 * v92 + 32);
            }

            v95 = v94;
            v50 = (v92 + 1);
            if (__OFADD__(v92, 1))
            {
              break;
            }

            if (([v271 showSuggestions] & 1) == 0 && objc_msgSend(v95, sel_suggestionSource) == 1)
            {
            }

            else
            {
              v96 = [v95 id];
              v97 = v268;
              sub_2483811F0();

              v98 = sub_2483811D0();
              v100 = v99;
              (v265)(v97, v269);
              v277 = v98;
              v278 = v100;
              v101 = sub_248381C80();
              MEMORY[0x24C1C8E70](&v277, v101, MEMORY[0x277D837D0]);
              v102 = [v95 chsWidget];
              v103 = sub_248381BC0();
              sub_248384140();

              v104 = [v95 suggestionSource];
              v105 = v258;
              if (v104)
              {
                v106 = v104;
                v105 = v257;
                if (v104 != 2)
                {
                  v105 = v256;
                  if (v104 != 1)
                  {
                    goto LABEL_201;
                  }
                }
              }

              (*v259)(v262, v105, v263);
              v107 = v261;
              sub_2483824E0();

              v108 = *v272;
              (*v272)(v273, v107, v274);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v93 = sub_2482E6304(0, *(v93 + 2) + 1, 1, v93);
              }

              v110 = *(v93 + 2);
              v109 = *(v93 + 3);
              v74 = (v110 + 1);
              if (v110 >= v109 >> 1)
              {
                v93 = sub_2482E6304(v109 > 1, v110 + 1, 1, v93);
              }

              *(v93 + 2) = v74;
              v108(&v93[((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v110], v273, v274);
            }

            ++v92;
            if (v50 == v91)
            {
              goto LABEL_70;
            }
          }

          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_70:

        v111 = [v271 showSuggestions];
        i = v245;
        if (v245 == 1)
        {
          v112 = v249;
          v113 = v248;
          goto LABEL_82;
        }

        v112 = v249;
        v113 = v248;
        if ((v111 & 1) == 0)
        {
          goto LABEL_82;
        }

        if (v240)
        {
          if (!sub_248384360())
          {
            goto LABEL_82;
          }
        }

        else if (!*(v235 + 16))
        {
          goto LABEL_82;
        }

        if (v234)
        {
          v52 = v238;
          v114 = v238;
          v115 = MEMORY[0x24C1CBA50](0, v232);
        }

        else
        {
          v52 = v238;
          if (!*(v235 + 16))
          {
            goto LABEL_99;
          }

          v116 = *v229;
          v117 = v238;
          v115 = v116;
        }

        v118 = v115;
        sub_248383E00();
        sub_248384030();

LABEL_82:
        (*v244)(v254, v112, v255);
        [v271 smartRotate];
        if (v113 && v113[2] && (v119 = sub_2482E6D00(v112), (v120 & 1) != 0))
        {
          (*(v233 + 16))(v251, v113[7] + *(v233 + 72) * v119, v250);
          v80 = 0;
        }

        else
        {
          v80 = 1;
        }

        (*v243)(v251, v80, 1, v250);
        v81 = objc_allocWithZone(sub_248381930());
        sub_2483818F0();

        (*v242)(v112, v255);
        sub_2483844A0();
        v52 = *(v279 + 16);
        sub_2483844D0();
        sub_2483844E0();
        sub_2483844B0();
        v79 = v253;
        if (v253 == v246)
        {

          v52 = v279;
          v74 = v222;
          goto LABEL_90;
        }
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    ;
  }

  v123 = MEMORY[0x277D84F90];
LABEL_104:
  i = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackRows;
  v277 = *&v267[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackRows];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92AA0);
  sub_24822D648(&qword_27EE92AA8, &qword_27EE92AA0);
  sub_24822D648(&qword_27EE92AB0, &qword_27EE92AB8);
  v52 = sub_248383AB0();
  v50 = v123;
  v277 = v123;
  v124 = sub_248383AB0();
  v125 = v124;
  if (!v227)
  {

    v128 = 1;
    goto LABEL_111;
  }

  if (v227 != 2)
  {
    v137 = sub_248383BE0();
    v130 = v223;
    (*(*(v137 - 8) + 56))(v223, 1, 1, v137);
    sub_248383BB0();
    v131 = v267;
    v138 = v267;
    v139 = sub_248383BA0();
    v134 = swift_allocObject();
    v140 = MEMORY[0x277D85700];
    v134[2] = v139;
    v134[3] = v140;
    v134[4] = v52;
    v134[5] = v125;
    v134[6] = v138;
    v136 = &unk_2483A01B0;
    goto LABEL_113;
  }

  if (v124 >> 62)
  {
    goto LABEL_192;
  }

  v126 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v52 >> 62)
  {
    goto LABEL_193;
  }

LABEL_108:
  v127 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_109:

  v128 = v126 != v127;
LABEL_111:
  v129 = sub_248383BE0();
  v130 = v223;
  (*(*(v129 - 8) + 56))(v223, 1, 1, v129);
  sub_248383BB0();
  v131 = v267;
  v132 = v267;
  v133 = sub_248383BA0();
  v134 = swift_allocObject();
  v135 = MEMORY[0x277D85700];
  v134[2] = v133;
  v134[3] = v135;
  v134[4] = v125;
  v134[5] = v132;
  *(v134 + 48) = v128;
  v136 = &unk_2483A01B8;
LABEL_113:
  sub_2482E9E44(0, 0, v130, 0, 0, v136, v134);

  sub_24822D578(v130, &qword_27EE90480);
  v141 = *&v131[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetMultiStackViewController];
  v142 = v224;
  sub_2482DB8A8();
  sub_248382120();
  (*(v225 + 8))(v142, v226);
  *&v131[i] = v50;

  v269 = v141;
  v143 = sub_248382130();
  v52 = v143;
  i = v131;
  if (!(v143 >> 62))
  {
    v144 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_115;
  }

  while (1)
  {
    v144 = sub_248384360();
LABEL_115:
    v270 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackViewControllerByFocusView;
    if (v144)
    {
      break;
    }

LABEL_145:

    [*(i + v270) removeAllObjects];
    v266 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusViews;
    v182 = *(i + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusViews);
    if (v182 >> 62)
    {
      v183 = sub_248384360();
    }

    else
    {
      v183 = *((v182 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v183)
    {
      v52 = 0;
      i = v182 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v182 & 0xC000000000000001) != 0)
        {
          v184 = MEMORY[0x24C1CBA50](v52, v182);
        }

        else
        {
          if (v52 >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_183;
          }

          v184 = *(v182 + 8 * v52 + 32);
        }

        v185 = v184;
        v186 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        [v184 removeFromSuperview];

        ++v52;
        if (v186 == v183)
        {
          goto LABEL_156;
        }
      }

LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
    }

    else
    {
LABEL_156:

      v187 = sub_248382130();
      v188 = v187;
      if (v187 >> 62)
      {
        v125 = sub_248384360();
      }

      else
      {
        v125 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      i = v267;
      if (!v125)
      {

        v219 = MEMORY[0x277D84F90];
LABEL_174:
        *&v266[i] = v219;

        if (v227 == 1)
        {
          v220 = [objc_opt_self() defaultCenter];
          [v220 postNotificationName:@"DBWidgetHomeVCLayoutStateChangedNotification" object:0 userInfo:0];
        }

        else if (v227 == 2)
        {
          sub_2482DBE28();
        }

        sub_2482DB234(*(i + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_foreground));
        swift_unknownObjectRelease();

        return;
      }

      v277 = MEMORY[0x277D84F90];
      sub_2483844C0();
      if (v125 < 0)
      {
        __break(1u);
LABEL_192:
        v126 = sub_248384360();
        if (v52 >> 62)
        {
LABEL_193:
          v127 = sub_248384360();
          goto LABEL_109;
        }

        goto LABEL_108;
      }

      v189 = 0;
      v273 = (v188 & 0xC000000000000001);
      v268 = (v188 & 0xFFFFFFFFFFFFFF8);
      v272 = xmmword_24839CCB0;
      v270 = v125;
      v269 = v188;
      while (1)
      {
        v52 = v189 + 1;
        if (__OFADD__(v189, 1))
        {
          break;
        }

        if (v273)
        {
          v190 = MEMORY[0x24C1CBA50](v189, v188);
          v106 = 0x278F0E000;
        }

        else
        {
          v106 = &selRef_setToView_;
          if (v189 >= *(v268 + 2))
          {
            goto LABEL_185;
          }

          v190 = *(v188 + 8 * v189 + 32);
        }

        v191 = [Strong environmentConfiguration];
        [v190 iconImageInfo];
        v193 = [objc_allocWithZone(DBWidgetView) initWithFrame:0 focusEnabledProvider:v191 environmentConfiguration:0.0 cornerRadius:{0.0, 0.0, 0.0, v192 + 4.0}];

        [v193 setShowPlatter_];
        [v193 setHitTestPassThrough_];
        v50 = v193;
        [v50 setTranslatesAutoresizingMaskIntoConstraints_];
        v194 = [v190 *(v106 + 4032)];
        if (!v194)
        {
          goto LABEL_196;
        }

        v195 = v194;
        [v194 insertSubview:v50 atIndex:0];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
        v196 = swift_allocObject();
        *(v196 + 16) = v272;
        v197 = [v50 leftAnchor];
        v198 = [v190 *(v106 + 4032)];
        if (!v198)
        {
          goto LABEL_197;
        }

        v199 = v198;
        v200 = [v198 leftAnchor];

        v201 = [v197 constraintEqualToAnchor:v200 constant:-4.0];
        *(v196 + 32) = v201;
        v202 = [v50 rightAnchor];
        v203 = [v190 *(v106 + 4032)];
        if (!v203)
        {
          goto LABEL_195;
        }

        v204 = v203;
        v274 = v189;
        v275 = (v189 + 1);
        v205 = [v203 rightAnchor];

        v206 = [v202 constraintEqualToAnchor:v205 constant:4.0];
        *(v196 + 40) = v206;
        v207 = [v50 topAnchor];
        v208 = [v190 *(v106 + 4032)];
        if (!v208)
        {
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
          goto LABEL_199;
        }

        v209 = v208;
        v210 = [v208 topAnchor];

        v211 = [v207 constraintEqualToAnchor:v210 constant:-4.0];
        *(v196 + 48) = v211;
        v212 = [v50 bottomAnchor];

        v213 = [v190 *(v106 + 4032)];
        if (!v213)
        {
          goto LABEL_198;
        }

        v214 = v213;
        v215 = objc_opt_self();
        v216 = [v214 bottomAnchor];

        v217 = [v212 &selRef_externalURI + 6];
        *(v196 + 56) = v217;
        sub_24814FB28(0, &qword_27EE8FE90);
        v218 = sub_248383B00();

        [v215 activateConstraints_];

        i = v267;
        [*&v267[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackViewControllerByFocusView] setObject:v190 forKey:v50];

        sub_2483844A0();
        sub_2483844D0();
        sub_2483844E0();
        sub_2483844B0();
        v189 = v274 + 1;
        v188 = v269;
        if (v275 == v270)
        {

          v219 = v277;
          goto LABEL_174;
        }
      }
    }

    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
  }

  v145 = 0;
  v274 = v52 & 0xFFFFFFFFFFFFFF8;
  v275 = (v52 & 0xC000000000000001);
  v50 = &selRef__setupMainDisplayWithDisplayConfiguration_session_defaultSceneWorkspaceIdentifier_;
  v273 = v52;
  while (1)
  {
    if (v275)
    {
      v147 = MEMORY[0x24C1CBA50](v145, v52);
    }

    else
    {
      if (v145 >= *(v274 + 16))
      {
        goto LABEL_181;
      }

      v147 = *(v52 + 8 * v145 + 32);
    }

    v148 = v147;
    v149 = v145 + 1;
    if (__OFADD__(v145, 1))
    {
      __break(1u);
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    v106 = v52;
    v150 = v144;
    [v147 addObserver_];
    v151 = [v148 widgetIcon];
    if (v151)
    {
      v152 = v151;
      [v151 addObserver_];
    }

    v153 = [v148 pageControl];
    v154 = [v148 pageControl];
    v155 = [v154 numberOfPages];

    v156 = v155;
    i = v267;
    [v153 sizeForNumberOfPages_];
    v158 = v157;

    v159 = v158 * 0.25 + 1.0;
    sub_24814FB28(0, &unk_27EE92CB8);
    v160 = sub_248383D70();
    if (!v160)
    {
      goto LABEL_118;
    }

    v161 = v160;
    v162 = [v160 focusedItem];

    if (!v162)
    {
      goto LABEL_118;
    }

    objc_opt_self();
    v163 = swift_dynamicCastObjCClass();
    if (v163)
    {
      break;
    }

    swift_unknownObjectRelease();
    i = v267;
LABEL_118:
    v144 = v150;
    v52 = v106;
LABEL_119:
    v146 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    [v148 setFixedPageControlOffset_];

    ++v145;
    if (v149 == v144)
    {
      goto LABEL_145;
    }
  }

  v164 = v163;
  v165 = [v267 view];
  if (v165)
  {
    v166 = v165;
    v167 = sub_24814FB28(0, &qword_27EE8FFC0);
    swift_unknownObjectRetain();
    *&v272 = v167;
    v106 = sub_248383E90();

    swift_unknownObjectRelease();
    if ((v106 & 1) == 0)
    {
      goto LABEL_141;
    }

    v168 = [*&v267[v270] objectForKey_];
    swift_unknownObjectRelease();
    if (v168 && (sub_24814FB28(0, &qword_27EE92A90), v169 = v148, v170 = sub_248384030(), v168, v169, (v170 & 1) != 0))
    {
      i = v267;
      v171 = sub_248383D70();
      if (v171)
      {
        v172 = v171;
        v173 = [v171 focusedItem];

        if (v173)
        {
          objc_opt_self();
          v174 = swift_dynamicCastObjCClass();
          if (v174)
          {
            v175 = v174;
            v176 = [v267 view];
            if (!v176)
            {
              goto LABEL_200;
            }

            v177 = v176;
            swift_unknownObjectRetain();
            v178 = sub_248383E90();

            swift_unknownObjectRelease();
            if (v178)
            {
              v179 = [v175 focusView];
              swift_unknownObjectRelease();
              [v179 alpha];
              v181 = v180;

              v144 = v150;
              v52 = v273;
              if (v181 > 0.0)
              {
                v159 = v159 + 4.0;
              }

              i = v267;
              goto LABEL_119;
            }
          }

LABEL_141:
          swift_unknownObjectRelease();
          goto LABEL_142;
        }
      }
    }

    else
    {
LABEL_142:
      i = v267;
    }

    v144 = v150;
    v52 = v273;
    goto LABEL_119;
  }

LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  v277 = 0;
  v278 = 0xE000000000000000;
  sub_248384440();
  MEMORY[0x24C1CAFD0](0xD00000000000001FLL, 0x80000002483B0B30);
  v276 = v106;
  type metadata accessor for CRSWidgetSuggestionSource(0);
  sub_248384530();
  sub_248384580();
  __break(1u);
}

uint64_t sub_2482DB234(int a1)
{
  LODWORD(v2) = a1;
  aBlock[0] = *(v1 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackRows);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92AA0);
  sub_24822D648(&qword_27EE92AA8, &qword_27EE92AA0);
  sub_24822D648(&qword_27EE92AB0, &qword_27EE92AB8);
  v3 = sub_248383AB0();
  i = v3;
  v38 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_43:
    v35 = i & 0xFFFFFFFFFFFFFF8;
    v5 = sub_248384360();
  }

  else
  {
    v35 = v3 & 0xFFFFFFFFFFFFFF8;
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v32;
  if (!v5)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v6 = 0;
  v34 = i & 0xC000000000000001;
  v7 = MEMORY[0x277D84F90];
  v31 = v2;
  v33 = i;
  do
  {
    v2 = v6;
    while (1)
    {
      if (v34)
      {
        v8 = MEMORY[0x24C1CBA50](v2, i);
      }

      else
      {
        if (v2 >= *(v35 + 16))
        {
          goto LABEL_40;
        }

        v8 = *(i + 8 * v2 + 32);
      }

      v9 = v8;
      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v10 = sub_248381910();
      v11 = [v10 activeWidget];

      if (v11)
      {
        break;
      }

LABEL_7:
      ++v2;
      if (v6 == v5)
      {
        LODWORD(v2) = v31;
        goto LABEL_27;
      }
    }

    v12 = v11;
    v13 = [v12 uniqueIdentifier];
    v14 = sub_248383960();
    v16 = v15;

    v17 = sub_248381910();
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v16;
    aBlock[4] = sub_2482EBEB4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2482DEDC0;
    aBlock[3] = &block_descriptor_164;
    v19 = _Block_copy(aBlock);

    v20 = [v17 firstWidgetPassingTest_];
    _Block_release(v19);

    if (!v20)
    {

      goto LABEL_17;
    }

    v21 = sub_248381BC0();
    v22 = sub_2483818D0();

    if (!v22)
    {

LABEL_17:
      i = v33;
      goto LABEL_7;
    }

    v23 = v22;
    v24 = [v20 uniqueIdentifier];
    if (!v24)
    {
      sub_248383960();
      v24 = sub_248383930();
    }

    v25 = [v20 suggestionSource] == 1;
    [objc_allocWithZone(MEMORY[0x277CFC800]) initWithIdentifier:v24 chsWidget:v23 suggestedWidget:v25];

    MEMORY[0x24C1CB0D0]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248383B50();
    }

    sub_248383B70();
    v7 = v38;
    LODWORD(v2) = v31;
    i = v33;
  }

  while (v6 != v5);
LABEL_27:

  if (v7 >> 62)
  {
    v26 = sub_248384360();
    if (v26)
    {
LABEL_29:
      for (i = 0; ; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x24C1CBA50](i, v7);
        }

        else
        {
          if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v27 = *(v7 + 8 * i + 32);
        }

        v28 = v27;
        v29 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v2)
        {
          sub_248382960();
        }

        else
        {
          sub_248382940();
        }

        if (v29 == v26)
        {
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_29;
    }
  }
}

uint64_t sub_2482DB77C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 3)
  {
    sub_248384440();
    MEMORY[0x24C1CAFD0](0xD00000000000001FLL, 0x80000002483B0B30);
    type metadata accessor for CRSWidgetSuggestionSource(0);
    sub_248384530();
    result = sub_248384580();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_278F048B8 + a1);
    v4 = sub_248381D90();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

uint64_t sub_2482DB8A8()
{
  v1 = sub_2483820F0();
  v2 = [v0 environmentConfiguration];
  [v2 currentStatusBarInsetSafeViewAreaFrame];

  v3 = [v0 environmentConfiguration];
  [v3 screenScale];

  sub_2483820E0();
  return sub_248382100();
}

id sub_2482DB9E8(void *a1)
{
  v2 = [a1 pageControl];
  v3 = [a1 pageControl];
  v4 = [v3 numberOfPages];

  [v2 sizeForNumberOfPages_];
  v6 = v5;

  v7 = v6 * 0.25 + 1.0;
  v8 = sub_2482D53BC();
  if (v8)
  {
    v9 = v8;
    sub_24814FB28(0, &qword_27EE92A90);
    v10 = a1;
    v11 = sub_248384030();

    if (v11)
    {
      v12 = sub_2482D52AC();
      if (v12)
      {
        v13 = v12;
        v14 = [v12 focusView];

        [v14 alpha];
        v16 = v15;

        if (v16 > 0.0)
        {
          v7 = v7 + 4.0;
        }
      }
    }
  }

  v17 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v17 initWithDouble_];
}

void sub_2482DBB5C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v2 action:a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24839C700;
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v7 = v4;
  *(v5 + 32) = [v6 initWithInteger_];
  sub_24814FB28(0, &qword_27EE90740);
  v8 = sub_248383B00();

  [v7 setAllowedPressTypes_];

  v9 = [v2 view];
  if (v9)
  {
    v10 = v9;
    [v9 addGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2482DBCB4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v2 action:a2];
  [v4 setDirection_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24839C700;
  *(v6 + 32) = v5;
  sub_24814FB28(0, &qword_27EE90740);
  v7 = v4;
  v8 = v5;
  v9 = sub_248383B00();

  [v7 setAllowedTouchTypes_];

  v10 = [v2 view];
  if (v10)
  {
    v11 = v10;
    [v10 addGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2482DBE28()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_currentConstraints;
  if (*&v0[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_currentConstraints])
  {
    v3 = objc_opt_self();
    sub_24814FB28(0, &qword_27EE8FE90);

    v4 = sub_248383B00();

    [v3 deactivateConstraints_];

    *&v0[v2] = 0;
  }

  v56 = MEMORY[0x277D84F90];
  v5 = *&v0[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetMultiStackViewController];
  result = [*&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetMultiStackViewController] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  v8 = *&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_layoutEngine];
  [v8 widgetViewAdditionalInsets];
  [v5 setAdditionalSafeAreaInsets_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839CCB0;
  result = [v5 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = result;
  v55 = v2;
  v11 = [result topAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = result;
  v13 = [result topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(inited + 32) = v14;
  result = [v5 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = result;
  v16 = [result bottomAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = result;
  v18 = [result bottomAnchor];

  v19 = [v16 &selRef_exportIconLayoutState + 5];
  *(inited + 40) = v19;
  result = [v5 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v20 = result;
  v21 = [result leftAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v22 = result;
  v23 = [result leftAnchor];

  v24 = [v21 &selRef_exportIconLayoutState + 5];
  *(inited + 48) = v24;
  result = [v5 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25 = result;
  v26 = [result rightAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v27 = result;
  v28 = [result rightAnchor];

  v29 = [v26 &selRef_exportIconLayoutState + 5];
  *(inited + 56) = v29;
  sub_2482DC558(inited);
  v30 = *&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController];
  if (!v30)
  {
LABEL_22:
    v53 = objc_opt_self();
    sub_24814FB28(0, &qword_27EE8FE90);
    v54 = sub_248383B00();
    [v53 activateConstraints_];

    *&v1[v55] = v56;
  }

  v31 = v30;
  [v8 widgetViewAdditionalInsets];
  [v31 setAdditionalSafeAreaInsets_];
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_24839CCB0;
  result = [v31 view];
  if (!result)
  {
    goto LABEL_32;
  }

  v33 = result;
  v34 = [result topAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v35 = result;
  v36 = [result topAnchor];

  v37 = [v34 &selRef_exportIconLayoutState + 5];
  *(v32 + 32) = v37;
  result = [v31 view];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v38 = result;
  v39 = [result leadingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v40 = result;
  v41 = [result leadingAnchor];

  v42 = [v39 &selRef_exportIconLayoutState + 5];
  *(v32 + 40) = v42;
  result = [v31 view];
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v43 = result;
  v44 = [result trailingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v45 = result;
  v46 = [result trailingAnchor];

  v47 = [v44 &selRef_exportIconLayoutState + 5];
  *(v32 + 48) = v47;
  result = [v31 view];
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v48 = result;
  v49 = [result bottomAnchor];

  result = [v1 view];
  if (result)
  {
    v50 = result;
    v51 = [result bottomAnchor];

    v52 = [v49 &selRef_exportIconLayoutState + 5];
    *(v32 + 56) = v52;
    sub_2482DC558(v32);

    goto LABEL_22;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2482DC558(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_248384360();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_248384360();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_248156154(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2482E8DB8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

id DBWidgetHomeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_248383930();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DBWidgetHomeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBWidgetHomeViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DBWidgetHomeViewController.updatePageControlsOffset(flash:)(Swift::Bool flash)
{
  v1 = sub_248382130();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248384360())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1CBA50](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 pageControl];
      [v8 alpha];
      v10 = v9;

      if (v10 == 0.0)
      {
        goto LABEL_11;
      }

      v27 = v6;
      v28 = sub_2482D53BC();
      if (v28)
      {
        v29 = v28;
        sub_24814FB28(0, &qword_27EE92A90);
        v30 = sub_248384030();

        if (v30)
        {
          v31 = sub_2482D52AC();
          if (v31)
          {
            v32 = v31;
            v33 = [v31 focusView];

            [v33 alpha];
            v35 = v34;

            if (v35 > 0.0)
            {
LABEL_11:
              v11 = [v6 pageControl];
              v12 = [v6 pageControl];
              v13 = [v12 numberOfPages];

              [v11 sizeForNumberOfPages_];
              v15 = v14;

              v16 = v15 * 0.25 + 1.0;
              v17 = sub_2482D53BC();
              if (v17)
              {
                v18 = v17;
                sub_24814FB28(0, &qword_27EE92A90);
                v19 = v6;
                v20 = sub_248384030();

                if (v20)
                {
                  v21 = sub_2482D52AC();
                  if (v21)
                  {
                    v22 = v21;
                    v23 = [v21 focusView];

                    [v23 alpha];
                    v25 = v24;

                    if (v25 > 0.0)
                    {
                      v16 = v16 + 4.0;
                    }
                  }
                }
              }

              v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
              [v6 setFixedPageControlOffset_];

              if (flash)
              {
                [v6 flashPageControlAnimated:1 withTimeInterval:1.0];
              }
            }
          }
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
}

Swift::Void __swiftcall DBWidgetHomeViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92A30);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v37 - v6);
  v8 = type metadata accessor for DBWidgetHomeViewController();
  v37.receiver = v0;
  v37.super_class = v8;
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  [v0 setOverrideUserInterfaceStyle_];
  sub_2482DBB5C(7, sel_handleBackTap);
  sub_2482DBCB4(4, sel_downButtonHandler);
  sub_2482DBCB4(8, sel_upButtonHandler);
  v9 = *&v0[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetMultiStackViewController];
  [v0 addChildViewController_];
  v10 = [v0 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [v9 view];
  if (!v12)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  [v11 addSubview_];

  [v9 didMoveToParentViewController_];
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = sub_248383930();
  v16 = [v14 BOOLForKey_];

  if (v16)
  {
LABEL_10:
    sub_2482DBE28();
    return;
  }

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2482305B0(sub_2482E9138, v17, sub_2482E9844, v18, v7);
  KeyPath = swift_getKeyPath();
  v20 = sub_2482D5200();
  v21 = (v7 + *(v2 + 36));
  *v21 = KeyPath;
  v21[1] = v20;
  sub_248232C78(v7, v4, &qword_27EE92A30);
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92A38));
  v23 = sub_248383350();
  v24 = [v23 view];
  if (!v24)
  {
    goto LABEL_13;
  }

  v25 = v24;
  v26 = [objc_opt_self() clearColor];
  [v25 setBackgroundColor_];

  v27 = [v23 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];

  [v23 willMoveToParentViewController_];
  [v1 addChildViewController_];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v29;
  v31 = [v23 view];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = v31;
  [v30 addSubview_];

  [v23 didMoveToParentViewController_];
  v33 = *&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController];
  *&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController] = v23;

  v34 = [v9 view];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 layer];

    [v36 setOpacity_];
    sub_24822D578(v7, &qword_27EE92A30);
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}