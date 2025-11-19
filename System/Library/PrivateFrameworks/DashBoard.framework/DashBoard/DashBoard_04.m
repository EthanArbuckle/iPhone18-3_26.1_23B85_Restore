unint64_t sub_24827D270(uint64_t a1)
{
  v1 = 0xD000000000000022;
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return 0xD000000000000022;
  }

  else
  {
    return v1;
  }
}

Swift::Void __swiftcall DBElevatedScreenResizeButton.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DBElevatedScreenResizeButton();
  objc_msgSendSuper2(&v9, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v5 = [(objc_class *)in.super.isa nextFocusedItem];
  if (v5 && (v6 = v5, swift_unknownObjectRelease(), v6 == v2) || (v7 = [(objc_class *)in.super.isa previouslyFocusedItem]) != 0 && (v8 = v7, swift_unknownObjectRelease(), v8 == v2))
  {
    [v2 setNeedsUpdateConfiguration];
  }
}

id DBElevatedScreenResizeButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBElevatedScreenResizeButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBElevatedScreenResizeButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for CARScreenViewAreaTransitionControlType()
{
  if (!qword_27EE90CF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE90CF8);
    }
  }
}

char *DBMulticastLabel.init(multicast:signalLocked:)()
{
  v1 = sub_248382AB0();
  v2 = MEMORY[0x28223BE20](v1);
  (*(v4 + 104))(&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CF3930], v2);
  v5 = objc_allocWithZone(sub_248382AD0());
  *&v0[OBJC_IVAR____TtC9DashBoard16DBMulticastLabel_label] = sub_248382AC0();
  v6 = type metadata accessor for DBMulticastLabel();
  v29.receiver = v0;
  v29.super_class = v6;
  v7 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = OBJC_IVAR____TtC9DashBoard16DBMulticastLabel_label;
  v9 = *&v7[OBJC_IVAR____TtC9DashBoard16DBMulticastLabel_label];
  v10 = v7;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = *&v7[v8];
  v12 = v10;
  [v12 addSubview_];
  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24839CCB0;
  v15 = [*&v7[v8] topAnchor];
  v16 = [v12 topAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v14 + 32) = v17;
  v18 = [*&v7[v8] bottomAnchor];
  v19 = [v12 bottomAnchor];

  v20 = [v18 constraintEqualToAnchor_];
  *(v14 + 40) = v20;
  v21 = [*&v7[v8] leadingAnchor];
  v22 = [v12 leadingAnchor];

  v23 = [v21 constraintEqualToAnchor_];
  *(v14 + 48) = v23;
  v24 = [*&v7[v8] trailingAnchor];
  v25 = [v12 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  *(v14 + 56) = v26;
  sub_248264108();
  v27 = sub_248383B00();

  [v13 activateConstraints_];

  return v12;
}

id DBMulticastLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DBMulticastLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBMulticastLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBMulticastLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBWallpaperWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBWallpaperWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBCameraViewController.init(scene:environment:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC9DashBoard22DBCameraViewController_activeConstraints] = MEMORY[0x277D84F90];
  result = [a1 isLegacy];
  if (result)
  {
    __break(1u);
  }

  else
  {
    v6 = [objc_opt_self() sharedInstance];
    v7 = [v6 carCameraApplication];

    if (v7)
    {
      v9.receiver = v2;
      v9.super_class = type metadata accessor for DBCameraViewController();
      v8 = objc_msgSendSuper2(&v9, sel_initWithScene_application_environment_, a1, v7, a2);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();

      type metadata accessor for DBCameraViewController();
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v8;
  }

  return result;
}

void sub_24827DF94()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard22DBCameraViewController_activeConstraints) = MEMORY[0x277D84F90];
  sub_248384580();
  __break(1u);
}

Swift::Void __swiftcall DBCameraViewController.loadView()()
{
  v1 = [objc_allocWithZone(type metadata accessor for DBCameraView()) initWithFrame_];
  [v0 setView_];
}

Swift::Void __swiftcall DBCameraViewController.sendSceneUpdate(isForeground:)(Swift::Bool isForeground)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = isForeground;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24827E278;
  *(v5 + 24) = v4;
  v7[4] = sub_24827E2B0;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_24827E2DC;
  v7[3] = &block_descriptor_5;
  v6 = _Block_copy(v7);

  [v2 performSceneUpdateWithBlock:v6 completion:0];
  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

uint64_t sub_24827E278(void *a1)
{
  v2 = *(v1 + 16);
  if ((v2 & 1) == 0)
  {
    [a1 setDeactivationReasons_];
  }

  return v2;
}

uint64_t sub_24827E2DC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = a3;
  v7 = v4(v5, v6);

  return v7 & 1;
}

id DBCameraViewController.__allocating_init(scene:application:environment:)(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithScene:a1 application:a2 environment:a3];

  swift_unknownObjectRelease();
  return v6;
}

id DBCameraViewController.__allocating_init(scene:application:proxyApplication:environment:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(v4) initWithScene:a1 application:a2 proxyApplication:a3 environment:a4];

  swift_unknownObjectRelease();
  return v8;
}

id sub_24827E678(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for DBCameraView();
  v7 = objc_msgSendSuper2(&v12, sel_hitTest_withEvent_, a1, a2, a3);
  if (v7)
  {
    sub_24814CB58();
    v8 = v7;
    v9 = v3;
    v10 = sub_248384030();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id sub_24827E834(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DBCameraView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_24827E908(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DBCameraView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24827EA00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void __swiftcall DBWallpaperHostWindow.createAdditionalPresentationView()(UIView *__return_ptr retstr)
{
  v2 = type metadata accessor for DBWallpaperAdditionalPresentationView();
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = v1;
  v5 = [(UIView *)&v6 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(UIView *)v5 setBackgroundColor:0, v6.receiver, v6.super_class];
}

void sub_24827EDC4()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for DBWallpaperAdditionalPresentationView();
  objc_msgSendSuper2(&v20, sel_didMoveToSuperview);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0x78))(0xD00000000000002BLL, 0x80000002483AC8F0);
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_24839CCB0;
    v6 = [v4 topAnchor];
    v7 = [v1 topAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    *(v5 + 32) = v8;
    v9 = [v4 bottomAnchor];
    v10 = [v1 bottomAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v5 + 40) = v11;
    v12 = [v4 leadingAnchor];
    v13 = [v1 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v5 + 48) = v14;
    v15 = [v4 trailingAnchor];
    v16 = [v1 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v5 + 56) = v17;
    sub_248264108();
    v18 = sub_248383B00();

    [v1 addConstraints_];

    sub_248383D80();
    v19 = *sub_24827BD58();
    sub_248382A40();
  }
}

void sub_24827F11C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DBWallpaperAdditionalPresentationView();
  objc_msgSendSuper2(&v4, sel_removeFromSuperview);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x80))(0xD00000000000002BLL, 0x80000002483AC8F0);
    sub_248383D80();
    v3 = *sub_24827BD58();
    sub_248382A40();
  }
}

id sub_24827F2A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id DBNowPlayingIcon.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBNowPlayingIcon.init()()
{
  v1 = [v0 initWithLeafIdentifier:*MEMORY[0x277CF8FC8] applicationBundleID:*MEMORY[0x277CF8FC8]];
  type metadata accessor for DBLeafIconDataSource();
  v2 = sub_248383960();
  v4 = v3;
  v5 = v1;
  v6 = DBLeafIconDataSource.__allocating_init(identifier:application:sessionConfiguration:)(v2, v4, 0, 0);
  [v5 addIconDataSource_];

  return v5;
}

id DBNowPlayingIcon.__allocating_init(leafIdentifier:applicationBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_248383930();

  if (a4)
  {
    v7 = sub_248383930();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(v4) initWithLeafIdentifier:v6 applicationBundleID:v7];

  return v8;
}

id DBNowPlayingIcon.init(leafIdentifier:applicationBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_248383930();

  if (a4)
  {
    v7 = sub_248383930();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for DBNowPlayingIcon();
  v8 = objc_msgSendSuper2(&v10, sel_initWithLeafIdentifier_applicationBundleID_, v6, v7);

  return v8;
}

id DBNowPlayingIcon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBNowPlayingIcon();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DBDefaultUISyncSessionDelegate.eventDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DBDefaultUISyncSessionDelegate.eventDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9DashBoard30DBDefaultUISyncSessionDelegate_eventDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2482284FC;
}

id DBDefaultUISyncSessionDelegate.__allocating_init(uisyncSession:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9DashBoard30DBDefaultUISyncSessionDelegate_uisyncSession] = a1;
  v9.receiver = v3;
  v9.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x138);
  v7 = v5;
  v6(v5);

  return v7;
}

id DBDefaultUISyncSessionDelegate.init(uisyncSession:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9DashBoard30DBDefaultUISyncSessionDelegate_uisyncSession] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DBDefaultUISyncSessionDelegate();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v8, sel_init);
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x138);
  v6 = v4;
  v5(v4);

  return v6;
}

void sub_24827FC20(const char *a1, SEL *a2)
{
  v5 = sub_248382A90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24827C4F4();
  (*(v6 + 16))(v8, v9, v5);
  v10 = v2;
  v11 = sub_248382A80();
  v12 = sub_248383DC0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136446210;
    v16 = (*(v10 + OBJC_IVAR____TtC9DashBoard30DBDefaultUISyncSessionDelegate_uisyncSession) + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID);
    v26 = a1;
    v18 = *v16;
    v17 = v16[1];

    v19 = sub_24814A378(v18, v17, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_248146000, v11, v12, v26, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1CD5F0](v15, -1, -1);
    v20 = v14;
    a2 = v27;
    MEMORY[0x24C1CD5F0](v20, -1, -1);
  }

  v21 = (*(v6 + 8))(v8, v5);
  v22 = (*((*MEMORY[0x277D85000] & *v10) + 0x60))(v21);
  if (v22)
  {
    v23 = v22;
    if ([v22 respondsToSelector_])
    {

      v24 = sub_248383930();

      [v23 *a2];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t DBDefaultUISyncSessionDelegate.didReceiveData(_:)(uint64_t a1, unint64_t a2)
{
  v36[4] = *MEMORY[0x277D85DE8];
  v5 = sub_248382A90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_2483811A0();
  v36[0] = 0;
  v11 = [v9 propertyListWithData:v10 options:0 format:0 error:v36];

  if (!v11)
  {
    v17 = v36[0];
    v18 = sub_2483810C0();

    swift_willThrow();
    goto LABEL_14;
  }

  v12 = v36[0];
  sub_248384230();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v13 = v35;
  if (*(v35 + 16))
  {
    v14 = sub_24822B8A0(1701869940, 0xE400000000000000);
    if (v15)
    {
      sub_24814A550(*(v13 + 56) + 32 * v14, v36);
      if (swift_dynamicCast())
      {
        v16 = sub_24829D8F4(v35);
        if (v16 <= 9)
        {
          if (v16 == 4)
          {
            sub_248280820(v13);
          }
        }

        switch(v16)
        {
          case 0xAu:
            sub_2482803EC(v13);
            break;
          case 0xBu:
            sub_24828130C(v13);
            break;
          case 0x10u:
            goto LABEL_13;
        }
      }
    }
  }

LABEL_13:

LABEL_14:
  v19 = sub_24827C4F4();
  (*(v6 + 16))(v8, v19, v5);
  v20 = v2;
  sub_24825CD28(a1, a2);
  v21 = sub_248382A80();
  v22 = sub_248383DA0();

  sub_24823BD70(a1, a2);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v34 = v5;
    v25 = v24;
    v36[0] = v24;
    *v23 = 136446466;
    v26 = (*&v20[OBJC_IVAR____TtC9DashBoard30DBDefaultUISyncSessionDelegate_uisyncSession] + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID);
    v27 = *v26;
    v28 = v26[1];

    v29 = sub_24814A378(v27, v28, v36);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2082;
    v30 = sub_248381190();
    v32 = sub_24814A378(v30, v31, v36);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_248146000, v21, v22, "Received unknown command for %{public}s: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v25, -1, -1);
    MEMORY[0x24C1CD5F0](v23, -1, -1);

    return (*(v6 + 8))(v8, v34);
  }

  else
  {

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_2482803EC(uint64_t a1)
{
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v36 - v8;
  if (*(a1 + 16) && (v10 = sub_24822B8A0(1635017060, 0xE400000000000000), (v11 & 1) != 0) && (sub_24814A550(*(a1 + 56) + 32 * v10, v36), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0), (swift_dynamicCast() & 1) != 0))
  {
    v12 = sub_24827C4F4();
    (*(v4 + 16))(v9, v12, v3);
    v13 = v1;

    v14 = sub_248382A80();
    v15 = sub_248383DC0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36[0] = v17;
      *v16 = 136446466;
      v18 = (*&v13[OBJC_IVAR____TtC9DashBoard30DBDefaultUISyncSessionDelegate_uisyncSession] + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID);
      v19 = *v18;
      v20 = v18[1];

      v21 = sub_24814A378(v19, v20, v36);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v22 = sub_2483838B0();
      v24 = v23;

      v25 = sub_24814A378(v22, v24, v36);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_248146000, v14, v15, "Received allowTransitions command for %{public}s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v17, -1, -1);
      MEMORY[0x24C1CD5F0](v16, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v9, v3);
  }

  else
  {
    v26 = sub_24827C4F4();
    (*(v4 + 16))(v6, v26, v3);

    v27 = sub_248382A80();
    v28 = sub_248383DA0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[0] = v30;
      *v29 = 136315138;
      v31 = sub_2483838B0();
      v33 = sub_24814A378(v31, v32, v36);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_248146000, v27, v28, "Bad payload: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1CD5F0](v30, -1, -1);
      MEMORY[0x24C1CD5F0](v29, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_248280820(uint64_t a1)
{
  v78[4] = *MEMORY[0x277D85DE8];
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v70 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  if (*(a1 + 16) && (v13 = sub_24822B8A0(1635017060, 0xE400000000000000), (v14 & 1) != 0) && (sub_24814A550(*(a1 + 56) + 32 * v13, v78), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0), (swift_dynamicCast() & 1) != 0))
  {
    v15 = v76;
    v16 = sub_24827C4F4();
    v17 = *(v4 + 16);
    v71 = v16;
    v72 = (v4 + 16);
    v70 = v17;
    (v17)(v12);
    v18 = v1;

    v19 = sub_248382A80();
    v20 = sub_248383DC0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v75 = v15;
      v23 = v22;
      v78[0] = v22;
      *v21 = 136446466;
      v24 = (*(v18 + OBJC_IVAR____TtC9DashBoard30DBDefaultUISyncSessionDelegate_uisyncSession) + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID);
      v74 = v18;
      v26 = *v24;
      v25 = v24[1];

      v27 = sub_24814A378(v26, v25, v78);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      v28 = sub_2483838B0();
      v30 = sub_24814A378(v28, v29, v78);

      *(v21 + 14) = v30;
      v18 = v74;
      _os_log_impl(&dword_248146000, v19, v20, "Received requestLayout command for %{public}s: %s", v21, 0x16u);
      swift_arrayDestroy();
      v31 = v23;
      v15 = v75;
      MEMORY[0x24C1CD5F0](v31, -1, -1);
      MEMORY[0x24C1CD5F0](v21, -1, -1);
    }

    v73 = *(v4 + 8);
    v73(v12, v3);
    v32 = *(v18 + OBJC_IVAR____TtC9DashBoard30DBDefaultUISyncSessionDelegate_uisyncSession);
    sub_248281044(v15);
    v33 = sub_248383880();

    v78[0] = 0;
    v34 = [v32 sendLayoutChangeEnd:v33 error:v78];

    if (v34)
    {
      v35 = v78[0];
    }

    else
    {
      v44 = v78[0];
      v45 = sub_2483810C0();

      swift_willThrow();
      v78[0] = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90);
      sub_248281B3C();
      swift_dynamicCast();
      v46 = v76;
      v70(v6, v71, v3);
      v47 = v46;
      v48 = sub_248382A80();
      v49 = sub_248383DA0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v74 = v18;
        v51 = v50;
        v71 = swift_slowAlloc();
        v77 = v71;
        *v51 = 136446722;
        v52 = [v47 localizedDescription];
        v53 = sub_248383960();
        v72 = v32;
        v54 = v53;
        v75 = v15;
        v56 = v55;

        v57 = sub_24814A378(v54, v56, &v77);

        *(v51 + 4) = v57;
        *(v51 + 12) = 2050;
        v58 = [v47 code];

        *(v51 + 14) = v58;
        *(v51 + 22) = 2082;
        v59 = [v47 domain];
        v60 = sub_248383960();
        v62 = v61;

        v63 = sub_24814A378(v60, v62, &v77);
        v15 = v75;

        *(v51 + 24) = v63;
        _os_log_impl(&dword_248146000, v48, v49, "Unable to send Layout Change Ended: %{public}s / %{public}ld %{public}s", v51, 0x20u);
        v64 = v71;
        swift_arrayDestroy();
        MEMORY[0x24C1CD5F0](v64, -1, -1);
        v65 = v51;
        v18 = v74;
        MEMORY[0x24C1CD5F0](v65, -1, -1);
      }

      else
      {
      }

      v73(v6, v3);
    }

    v66 = (*((*MEMORY[0x277D85000] & *v18) + 0x60))(v35);
    if (v66)
    {
      v67 = v66;
      if ([v66 respondsToSelector_])
      {

        v68 = sub_248383930();

        [v67 didForegroundAssetForDisplayID_];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v69 = sub_24833F634(v15);
    sub_24828157C(v69);
  }

  else
  {
    v36 = sub_24827C4F4();
    (*(v4 + 16))(v9, v36, v3);

    v37 = sub_248382A80();
    v38 = sub_248383DA0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v78[0] = v40;
      *v39 = 136315138;
      v41 = sub_2483838B0();
      v43 = sub_24814A378(v41, v42, v78);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_248146000, v37, v38, "Bad payload: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x24C1CD5F0](v40, -1, -1);
      MEMORY[0x24C1CD5F0](v39, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
  }
}

uint64_t sub_248281044(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE901E0);
    v2 = sub_2483845F0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24814A550(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_24825E6A0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_24825E6A0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_24825E6A0(v31, v32);
    result = sub_2483843C0();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_24825E6A0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_24828130C(uint64_t a1)
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v6 = sub_24822B8A0(1635017060, 0xE400000000000000), (v7 & 1) != 0) && (sub_24814A550(*(a1 + 56) + 32 * v6, v18), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0), (swift_dynamicCast() & 1) != 0))
  {
    v8 = sub_24833F634(v17[1]);
    sub_24828157C(v8);
  }

  else
  {
    v9 = sub_24827C568();
    (*(v3 + 16))(v5, v9, v2);

    v10 = sub_248382A80();
    v11 = sub_248383DA0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136315138;
      v14 = sub_2483838B0();
      v16 = sub_24814A378(v14, v15, v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_248146000, v10, v11, "Bad payload: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1CD5F0](v13, -1, -1);
      MEMORY[0x24C1CD5F0](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_24828157C(uint64_t a1)
{
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = sub_24827C4F4();
  v11 = *(v4 + 16);
  if (a1 == -1)
  {
    v11(v6, v10, v3);
    v28 = v1;
    v29 = sub_248382A80();
    v30 = sub_248383DA0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43 = v32;
      *v31 = 136446466;
      v33 = (*&v28[OBJC_IVAR____TtC9DashBoard30DBDefaultUISyncSessionDelegate_uisyncSession] + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID);
      v34 = *v33;
      v35 = v33[1];

      v36 = sub_24814A378(v34, v35, &v43);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2082;
      v42 = -1;
      type metadata accessor for CARUserInterfaceStyle(0);
      v37 = sub_2483839A0();
      v39 = sub_24814A378(v37, v38, &v43);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_248146000, v29, v30, "Invalid Target Appearance Change command for %{public}s: missing appearanceMode %{public}s.", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v32, -1, -1);
      MEMORY[0x24C1CD5F0](v31, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v41 = a1;
    v11(v9, v10, v3);
    v12 = v1;
    v13 = sub_248382A80();
    v14 = sub_248383DC0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v43 = v16;
      *v15 = 136446466;
      v17 = (*(v12 + OBJC_IVAR____TtC9DashBoard30DBDefaultUISyncSessionDelegate_uisyncSession) + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID);
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_24814A378(v18, v19, &v43);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2082;
      v42 = v41;
      type metadata accessor for CARUserInterfaceStyle(0);
      v21 = sub_2483839A0();
      v23 = sub_24814A378(v21, v22, &v43);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_248146000, v13, v14, "Forwarding Target Appearance Change command for %{public}s: %{public}s.", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v16, -1, -1);
      MEMORY[0x24C1CD5F0](v15, -1, -1);
    }

    v24 = (*(v4 + 8))(v9, v3);
    v25 = (*((*MEMORY[0x277D85000] & *v12) + 0x60))(v24);
    if (v25)
    {
      v26 = v25;
      if ([v25 respondsToSelector_])
      {

        v27 = sub_248383930();

        [v26 didChangeAppearanceMode:v41 forDisplayID:v27];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

id DBDefaultUISyncSessionDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBDefaultUISyncSessionDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDefaultUISyncSessionDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_248281B3C()
{
  result = qword_27EE90D98;
  if (!qword_27EE90D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE90D98);
  }

  return result;
}

uint64_t sub_248281BE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v3 + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_delegate;
  swift_beginAccess();
  *(v5 + 1) = a2;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = MEMORY[0x277D85000];
  if (Strong)
  {
    v8 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*((*v7 & *v3) + 0xB8))();
    (*(v8 + 8))(ObjectType, v8);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v5 + 1);
    v11 = swift_getObjectType();
    v12 = (*((*v7 & *v3) + 0xD0))();
    (*(v10 + 16))(v12 & 1, v11, v10);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*sub_248281D54(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9DashBoard23DBClimateViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_248281DF4;
}

void sub_248281DF4(uint64_t a1, char a2)
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
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = v4 + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = MEMORY[0x277D85000];
    if (Strong)
    {
      v8 = v3[5];
      v9 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*((*v7 & *v8) + 0xB8))();
      (*(v9 + 8))(ObjectType, v9);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = v3[5];
      v12 = *(v5 + 8);
      v13 = swift_getObjectType();
      v14 = (*((*v7 & *v11) + 0xD0))();
      (*(v12 + 16))(v14 & 1, v13, v12);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

double sub_248281FB8()
{
  v1 = v0 + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_insets;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_248282004(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_insets);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_248282078()
{
  v1 = OBJC_IVAR____TtC9DashBoard23DBClimateViewController_isOverlayHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2482820BC(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard23DBClimateViewController_isOverlayHidden;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void DBClimateViewController.init(scene:environment:sceneFrame:layoutEngine:)(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v14 = &v7[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_delegate];
  *&v7[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = &v7[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_insets];
  v16 = *(MEMORY[0x277D768C8] + 16);
  *v15 = *MEMORY[0x277D768C8];
  v15[1] = v16;
  v7[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_isOverlayHidden] = 0;
  v17 = OBJC_IVAR____TtC9DashBoard23DBClimateViewController_persistentElements;
  *&v7[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_persistentElements] = 0;
  v18 = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_activeConstraints] = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtC9DashBoard23DBClimateViewController_tapDismissGestureRecognizer;
  *&v7[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_tapDismissGestureRecognizer] = 0;
  *&v7[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_presentedPopoverFrames] = v18;
  v20 = &v7[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_climateSceneFrame];
  *v20 = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v21 = OBJC_IVAR____TtC9DashBoard23DBClimateViewController_layoutEngine;
  *&v7[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_layoutEngine] = a3;
  v22 = a3;
  v23 = a2;
  v24 = v22;
  v25 = [a2 environmentConfiguration];
  v26 = [v25 traitCollection];

  v27 = [v26 userInterfaceStyle];
  *&v7[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_currentInterfaceStyle] = v27;
  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 climateApplication];

  if (!v29)
  {

    swift_unknownObjectRelease();
    sub_24816783C(v14);

    type metadata accessor for DBClimateViewController();
    swift_deallocPartialClassInstance();
    return;
  }

  v30 = v24;
  v52.receiver = v7;
  v52.super_class = type metadata accessor for DBClimateViewController();
  v31 = objc_msgSendSuper2(&v52, sel_initWithScene_application_environment_, a1, v29, v23);
  v32 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v31 action:sel_performCancelTapGesture_];
  v33 = OBJC_IVAR____TtC9DashBoard23DBClimateViewController_tapDismissGestureRecognizer;
  v34 = *&v31[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_tapDismissGestureRecognizer];
  *&v31[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_tapDismissGestureRecognizer] = v32;
  v35 = v32;

  if (!v35)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v35 setCancelsTouchesInView_];

  v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v37 = *&v31[v33];
  if (!v37)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v38 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24839C700;
  *(v39 + 32) = v38;
  sub_24814FB28(0, &qword_27EE90740);
  v40 = v38;
  v41 = v37;
  v42 = sub_248383B00();

  [v41 setAllowedTouchTypes_];

  v43 = *&v31[v33];
  if (!v43)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v43 setEnabled_];
  v44 = [objc_opt_self() sharedInstance];
  v45 = v30;
  if (v44)
  {
    v46 = v44;
    v47 = [v31 environment];
    if (v47)
    {
      v48 = [v47 environmentConfiguration];
      swift_unknownObjectRelease();
      v49 = *&v31[v33];
      v50 = [v48 displayIdentity];
      [v46 addGestureRecognizer:v49 toDisplayWithIdentity:v50];
    }

    else
    {
    }
  }

  swift_unknownObjectRelease();
}

void sub_24828266C(void *a1)
{
  v2 = v1;
  v4 = [v2 view];
  [a1 locationInView_];
  v6 = v5;
  v8 = v7;

  v9 = *&v2[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_presentedPopoverFrames];
  v10 = *(v9 + 16);

  v11 = v9 + 56;
  v12 = -v10;
  v13 = -1;
  do
  {
    if (v12 + v13 == -1)
    {
      sub_24814FB28(0, &qword_27EE90950);
      v16 = sub_2483841B0();
      v17 = sub_248383DC0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_248146000, v16, v17, "Should hide presented climate popovers.", v18, 2u);
        MEMORY[0x24C1CD5F0](v18, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24839C700;
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CF9220]) init];
      sub_24814F838(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_24814FB28(0, &unk_27EE91610);
      sub_248284AB4();
      v20 = sub_248383C70();
      [v2 sendSceneActions_];

      v21 = *&v2[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_tapDismissGestureRecognizer];
      if (v21)
      {
        v22 = v21;

        [v22 setEnabled_];

        return;
      }

      goto LABEL_13;
    }

    if (++v13 >= *(v9 + 16))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v14 = v11 + 32;
    v24.x = v6;
    v24.y = v8;
    v15 = CGRectContainsPoint(*(v11 - 24), v24);
    v11 = v14;
  }

  while (!v15);
}

void sub_248282978()
{
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_248384580();
  __break(1u);
}

void sub_2482829F4()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_insets);
  v2 = *(MEMORY[0x277D768C8] + 16);
  *v1 = *MEMORY[0x277D768C8];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_isOverlayHidden) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_persistentElements) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_activeConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_tapDismissGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_presentedPopoverFrames) = v3;
  sub_248384580();
  __break(1u);
}

Swift::Void __swiftcall DBClimateViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DBClimateViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_248282B00();
}

id sub_248282B00()
{
  result = [v0 environment];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    *(v4 + 40) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_248284BD0;
    *(v5 + 24) = v4;
    v7[4] = sub_24827EA40;
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_24827E2DC;
    v7[3] = &block_descriptor_91_0;
    v6 = _Block_copy(v7);
    swift_unknownObjectRetain();

    [v0 performSceneUpdateWithBlock:v6 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v6);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall DBClimateViewController.viewDidLayoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for DBClimateViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_248282E74;
  *(v2 + 24) = v1;
  v5[4] = sub_248282F14;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_248282F3C;
  v5[3] = &block_descriptor_6;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v4 updateSceneSettingsWithBlock_];
  _Block_release(v3);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

id sub_248282E74(void *a1)
{
  result = [*(v1 + 16) view];
  if (result)
  {
    v4 = result;
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    return [a1 setFrame_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_248282F3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

Swift::Void __swiftcall DBClimateViewController.loadView()()
{
  v1 = [objc_allocWithZone(type metadata accessor for DBClimateView()) initWithFrame_];
  [v0 setView_];
}

id DBClimateViewController.__allocating_init(scene:application:environment:)(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithScene:a1 application:a2 environment:a3];

  swift_unknownObjectRelease();
  return v6;
}

id DBClimateViewController.__allocating_init(scene:application:proxyApplication:environment:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(v4) initWithScene:a1 application:a2 proxyApplication:a3 environment:a4];

  swift_unknownObjectRelease();
  return v8;
}

void DBClimateViewController.clientSceneSettingsDidUpdate(_:)(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = a1;
  v7 = [v5 presentedPopoverFrames];
  sub_24814FB28(0, &unk_27EE90E00);
  v8 = sub_248383B10();

  if (v8 >> 62)
  {
    v9 = sub_248384360();
    v62 = v6;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_14:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v62 = v6;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_4:
  v63 = MEMORY[0x277D84F90];
  sub_248284964(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v10 = 0;
  v11 = v63;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C1CBA50](v10, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    [v12 CGRectValue];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v23 = *(v63 + 16);
    v22 = *(v63 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_248284964((v22 > 1), v23 + 1, 1);
    }

    ++v10;
    *(v63 + 16) = v23 + 1;
    v24 = (v63 + 32 * v23);
    v24[4] = v15;
    v24[5] = v17;
    v24[6] = v19;
    v24[7] = v21;
  }

  while (v9 != v10);

LABEL_15:
  v8 = *&v2[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_presentedPopoverFrames];
  *&v2[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_presentedPopoverFrames] = v11;

  v25 = OBJC_IVAR____TtC9DashBoard23DBClimateViewController_tapDismissGestureRecognizer;
  v26 = *&v2[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_tapDismissGestureRecognizer];
  if (!v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = *(v11 + 16);
  v28 = v26;

  [v28 setEnabled_];

  sub_24814FB28(0, &qword_27EE90950);
  v29 = sub_2483841B0();
  v8 = v2;
  v30 = sub_248383DC0();
  if (!os_log_type_enabled(v29, v30))
  {

    v29 = v8;
    goto LABEL_20;
  }

  v31 = swift_slowAlloc();
  *v31 = 67109120;
  v32 = *&v2[v25];
  if (!v32)
  {
LABEL_30:

    __break(1u);
    return;
  }

  *(v31 + 4) = [v32 isEnabled];

  _os_log_impl(&dword_248146000, v29, v30, "Climate tap recognizer enabled: %{BOOL}d", v31, 8u);
  MEMORY[0x24C1CD5F0](v31, -1, -1);
LABEL_20:

  [v5 stepperInsets];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = (v8 + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_insets);
  swift_beginAccess();
  *v41 = v34;
  v41[1] = v36;
  v41[2] = v38;
  v41[3] = v40;
  v42 = [v5 isOverlayHidden];
  v43 = OBJC_IVAR____TtC9DashBoard23DBClimateViewController_isOverlayHidden;
  swift_beginAccess();
  *(v8 + v43) = v42;
  v44 = sub_2483841B0();
  v45 = sub_248383DC0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = MEMORY[0x277D85000];
  if (v46)
  {
    v48 = swift_slowAlloc();
    *v48 = 134218240;
    v49 = *((*v47 & *v8) + 0xB8);
    v50 = v49();
    *(v48 + 4) = v51;
    *(v48 + 12) = 2048;
    (v49)(v50);
    *(v48 + 14) = v52;
    _os_log_impl(&dword_248146000, v44, v45, "Climate overlay insets updated: %f, %f", v48, 0x16u);
    MEMORY[0x24C1CD5F0](v48, -1, -1);
  }

  v53 = *((*v47 & *v8) + 0xA0);
  v54 = v53();
  if (v54)
  {
    v56 = v55;
    ObjectType = swift_getObjectType();
    (*((*v47 & *v8) + 0xB8))();
    (*(v56 + 8))(ObjectType, v56);
    v54 = swift_unknownObjectRelease();
  }

  if ((v53)(v54))
  {
    v59 = v58;
    v60 = swift_getObjectType();
    v61 = (*((*v47 & *v8) + 0xD0))();
    (*(v59 + 16))(v61 & 1, v60, v59);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id DBClimateViewController.updateDock(style:)(id a1)
{
  if (!a1)
  {
    v2 = [v1 traitCollection];
    v3 = [v2 userInterfaceStyle];

    a1 = v3;
  }

  *&v1[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_currentInterfaceStyle] = a1;
  result = [v1 environment];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_248284984;
    *(v8 + 24) = v7;
    v10[4] = sub_24827E2B0;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_24827E2DC;
    v10[3] = &block_descriptor_15_0;
    v9 = _Block_copy(v10);
    swift_unknownObjectRetain();

    [v1 performSceneUpdateWithBlock:v9 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v9);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall DBClimateViewController.update(deactivationReasons:)(__C::UIApplicationSceneDeactivationReasonMask deactivationReasons)
{
  v3 = [v1 environment];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = deactivationReasons;
    *(v6 + 32) = 0;
    *(v6 + 40) = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_248284BD0;
    *(v7 + 24) = v6;
    v9[4] = sub_24827EA40;
    v9[5] = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24827E2DC;
    v9[3] = &block_descriptor_27;
    v8 = _Block_copy(v9);
    swift_unknownObjectRetain();

    [v1 performSceneUpdateWithBlock:v8 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v8);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall DBClimateViewController.update(persistentElements:)(NSNumber_optional persistentElements)
{
  v2 = *&v1[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_persistentElements];
  *&v1[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_persistentElements] = persistentElements.value.super.super.isa;
  v3 = persistentElements.value.super.super.isa;

  v4 = [v1 environment];
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_248284BD0;
    *(v8 + 24) = v7;
    v10[4] = sub_24827EA40;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_24827E2DC;
    v10[3] = &block_descriptor_39;
    v9 = _Block_copy(v10);
    swift_unknownObjectRetain();

    [v1 performSceneUpdateWithBlock:v9 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v9);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall DBClimateViewController.updateForViewAreaChange()()
{
  v1 = [v0 environment];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    *(v4 + 40) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_248284BD0;
    *(v5 + 24) = v4;
    v7[4] = sub_24827EA40;
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_24827E2DC;
    v7[3] = &block_descriptor_51;
    v6 = _Block_copy(v7);
    swift_unknownObjectRetain();

    [v0 performSceneUpdateWithBlock:v6 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v6);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }
}

void sub_2482841AC(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ((a4 & 1) == 0)
    {
      [a1 setDeactivationReasons_];
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = a1;
      v14 = [a5 environmentConfiguration];
      v15 = [v14 hasPhysicalControlBars];

      [v12 setHasPhysicalControlBars_];
      [v12 setPersistentElements_];
      [v12 setUserInterfaceStyle_];
      v16 = OBJC_IVAR____TtC9DashBoard23DBClimateViewController_layoutEngine;
      [*&v10[OBJC_IVAR____TtC9DashBoard23DBClimateViewController_layoutEngine] primaryDockWindowFrame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [*&v10[v16] primaryDockMargins];
      [v12 setPrimaryDockFrame_];
      sub_24814FB28(0, &qword_27EE90950);
      v27 = sub_2483841B0();
      v28 = sub_248383DC0();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v51 = v13;
        v30 = swift_slowAlloc();
        v52 = v30;
        *v29 = 136315650;
        [v12 primaryDockFrame];
        type metadata accessor for CGRect(0);
        v31 = sub_2483839A0();
        v33 = sub_24814A378(v31, v32, &v52);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        [*&v10[v16] primaryDockWindowFrame];
        v34 = sub_2483839A0();
        v36 = sub_24814A378(v34, v35, &v52);

        *(v29 + 14) = v36;
        *(v29 + 22) = 2080;
        [*&v10[v16] primaryDockMargins];
        type metadata accessor for UIEdgeInsets(0);
        v37 = sub_2483839A0();
        v39 = sub_24814A378(v37, v38, &v52);

        *(v29 + 24) = v39;
        _os_log_impl(&dword_248146000, v27, v28, "Updating climateSettings.primaryDockFrame: %s; layoutEngine.primaryDockWindowFrame: %s; layoutEngine.primaryDockMargins: %s", v29, 0x20u);
        swift_arrayDestroy();
        v40 = v30;
        v13 = v51;
        MEMORY[0x24C1CD5F0](v40, -1, -1);
        MEMORY[0x24C1CD5F0](v29, -1, -1);
      }

      [*&v10[v16] secondaryDockWindowFrame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      [*&v10[v16] secondaryDockMargins];
      [v12 setSecondaryDockFrame_];

      v10 = v13;
    }
  }
}

id sub_248284584(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for DBClimateView();
  v7 = objc_msgSendSuper2(&v12, sel_hitTest_withEvent_, a1, a2, a3);
  if (v7)
  {
    sub_24814FB28(0, &qword_27EE8FFC0);
    v8 = v7;
    v9 = v3;
    v10 = sub_248384030();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id sub_248284760(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DBClimateView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_248284834(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DBClimateView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24828492C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_248284964(char *a1, int64_t a2, char a3)
{
  result = sub_2482849B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2482849B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE932F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

unint64_t sub_248284AB4()
{
  result = qword_27EE90E30;
  if (!qword_27EE90E30)
  {
    sub_24814FB28(255, &unk_27EE91610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90E30);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

char *DBDockController.init(windowScene:dockLocalScene:layoutEngine:iconProvider:environment:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v106 = OBJC_IVAR____TtC9DashBoard16DBDockController_persistentElementsManager;
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR____TtC9DashBoard16DBDockController_isHidden] = 0;
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController_cornerRadius] = 0;
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion] = 0;
  v104 = OBJC_IVAR____TtC9DashBoard16DBDockController__environment;
  swift_unknownObjectUnownedInit();
  v102 = OBJC_IVAR____TtC9DashBoard16DBDockController__layoutEngine;
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__layoutEngine] = a3;
  type metadata accessor for DBDockSceneHostWindow();
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v110 = v11;
  [v11 dockHostWindowFrame];
  DBDockSceneHostWindow.__allocating_init(localScene:windowScene:frame:)(v12, v13, v14, v15, v16, v17);
  v19 = v18;
  v100 = OBJC_IVAR____TtC9DashBoard16DBDockController__dockSceneHostWindow;
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__dockSceneHostWindow] = v18;
  sub_24814FB28(0, &qword_27EE90E78);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = *((*MEMORY[0x277D85000] & *v19) + 0x70);
  v22 = v19;
  v23 = v21();
  v24 = [ObjCClassFromMetadata _sceneForFBSScene_];

  if (!v24)
  {
    sub_248383DA0();
    v38 = *sub_24827BF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_24839C7F0;
    v40 = v38;
    v41 = v21();

    *(v39 + 56) = sub_24814FB28(0, &qword_27EE90E88);
    *(v39 + 64) = sub_248151298(&qword_27EE90E90, &qword_27EE90E88);
    *(v39 + 32) = v41;
    sub_248382A40();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    MEMORY[0x24C1CD720](&v6[v106]);
    sub_24825A8E8(&v6[v104]);

    swift_unknownObjectRelease();
    type metadata accessor for DBDockController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v97 = v13;
  v98 = v12;

  v25 = [objc_allocWithZone(DBStatusBarStateProvider) initWithEnvironment_];
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStateProvider] = v25;
  type metadata accessor for DBStatusBarDataBroadcaster(0);
  v107 = v25;
  v26 = DBStatusBarDataBroadcaster.init()();
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarDataBroadcaster] = v26;
  type metadata accessor for DBDockWindow();
  v105 = v26;
  v27 = v24;
  [v110 primaryDockWindowFrame];
  v101 = v27;
  v32 = DBDockWindow.__allocating_init(windowScene:frame:)(v27, v28, v29, v30, v31);
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow] = v32;
  v96 = v32;
  v33 = [a5 environmentConfiguration];
  v34 = [v33 hasDualStatusBar];
  v35 = [v33 hasTopStatusBar];

  v109 = a5;
  v99 = v22;
  if (v34)
  {
    v36 = a4;
    if ((v35 & 1) == 0)
    {
      v37 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v36 = a4;
    if (v35)
    {
      v37 = 4;
      goto LABEL_9;
    }
  }

  v37 = 0;
LABEL_9:
  v43 = [objc_allocWithZone(DBDockRootViewController) initWithEnvironment:v109 layout:v37 layoutEngine:v110 iconProvider:v36 stateProvider:v107 dataBroadcaster:v105];
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockViewController] = v43;
  v103 = v43;
  v44 = [v109 environmentConfiguration];
  v45 = [v44 hasDualStatusBar];
  v46 = [v44 hasTopStatusBar];

  if (v45)
  {
    if ((v46 & 1) == 0)
    {
      v47 = 2;
      goto LABEL_14;
    }
  }

  else if (v46)
  {
    v47 = 3;
LABEL_14:
    v48 = v101;
    [v110 secondaryDockWindowFrame];
    *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow] = DBDockWindow.__allocating_init(windowScene:frame:)(v48, v49, v50, v51, v52);
    v53 = v109;
    v54 = [objc_allocWithZone(DBDockRootViewController) initWithEnvironment:v109 layout:v47 layoutEngine:v110 iconProvider:0 stateProvider:v107 dataBroadcaster:v105];
    v55 = 0;
    *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockViewController] = v54;
    if (v45)
    {
      v55 = [objc_allocWithZone(MEMORY[0x277CF9348]) initWithInterfaceStyle_];
    }

    goto LABEL_17;
  }

  v55 = 0;
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow] = 0;
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockViewController] = 0;
  v53 = v109;
LABEL_17:
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStyleAssertion] = v55;
  v56 = [objc_allocWithZone(MEMORY[0x277CF9350]) init];
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStyleService] = v56;
  v57 = objc_opt_self();
  v58 = sub_248383930();
  v59 = [v57 activateManualDomain_];

  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStyleServiceDomainActivationToken] = v59;
  v60 = [objc_allocWithZone(DBHomeButtonStateManager) initWithDelegate_];
  *&v6[OBJC_IVAR____TtC9DashBoard16DBDockController__homeButtonStateManager] = v60;
  v111.receiver = v6;
  v111.super_class = type metadata accessor for DBDockController();
  v42 = objc_msgSendSuper2(&v111, sel_init);
  v61 = OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockViewController;
  v62 = *&v42[OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockViewController];
  v63 = v42;
  [v62 setDelegate_];
  [*&v63[OBJC_IVAR____TtC9DashBoard16DBDockController__dockSceneHostWindow] setHidden_];
  v64 = [v53 environmentConfiguration];
  v65 = [v64 hasDualStatusBar];

  v66 = v53;
  v67 = OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow;
  v68 = *&v63[OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow];
  v69 = [v66 environmentConfiguration];
  v70 = [v69 isRightHandDrive];

  (*((*MEMORY[0x277D85000] & *v68) + 0x70))(v70);
  [*&v63[v67] setClipsToBounds_];
  v71 = [*&v63[v67] layer];
  v72 = *MEMORY[0x277CDA138];
  [v71 setCornerCurve_];

  v73 = [v66 environmentConfiguration];
  v74 = [v73 currentViewAreaTransitionControlType];

  if (v65)
  {
    v75 = 0;
  }

  else
  {
    v75 = v74;
  }

  [*&v42[v61] setTransitionControlType_];
  v76 = *&v63[OBJC_IVAR____TtC9DashBoard16DBDockController__layoutEngine];
  v77 = *&v42[v61];
  [v77 setBackgroundDisabled_];

  [*&v63[v67] setRootViewController_];
  [*&v63[v67] setHidden_];
  v78 = OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow;
  v79 = *&v63[OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow];
  if (v79)
  {
    v80 = [v79 layer];
    [v80 setCornerCurve_];

    v81 = *&v63[v78];
    if (v81)
    {
      [v81 setClipsToBounds_];
      v82 = *&v63[v78];
      if (v82)
      {
        v83 = v82;
        v84 = [v109 environmentConfiguration];
        v85 = [v84 isRightHandDrive];

        (*((*MEMORY[0x277D85000] & *v83) + 0x70))(v85);
      }
    }
  }

  v86 = OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockViewController;
  v87 = *&v63[OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockViewController];
  if (v87)
  {
    [v87 setTransitionControlType_];
  }

  v88 = *&v63[v78];
  if (v88)
  {
    [v88 setRootViewController_];
    v89 = *&v63[v78];
    if (v89)
    {
      [v89 setHidden_];
    }
  }

  v90 = OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStyleService;
  [*&v63[OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStyleService] addObserver_];
  if (*&v63[v86])
  {
    [*&v63[v90] addObserver_];
  }

  v91 = *&v63[OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStyleAssertion];
  if (v91)
  {
    v92 = objc_allocWithZone(MEMORY[0x277CF0B70]);
    v93 = v91;
    v94 = [v92 init];
    [v93 acquireWithAnimationSettings_];
  }

  else
  {
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v42;
}

void DBDockController.persistentElementsManager.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DBPersistentElementsManager.addObserver(_:for:)(v1, 1);
  }
}

void (*DBDockController.persistentElementsManager.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC9DashBoard16DBDockController_persistentElementsManager;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2482859C0;
}

void sub_2482859C0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      DBPersistentElementsManager.addObserver(_:for:)(*(v3 + 32), 1);
    }
  }

  free(v3);
}

Swift::Void __swiftcall DBDockController.updateLayoutForCurrentViewArea()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow);
  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__layoutEngine);
  [v2 primaryDockWindowFrame];
  [v1 setFrame_];
  v3 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow);
  if (v3)
  {
    [v2 secondaryDockWindowFrame];
    [v3 setFrame_];
  }

  v4 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v5 = [v4 currentStatusBarEdge];

  if (v5 == 1)
  {
    v5 = 12;
  }

  else if (v5 != 3)
  {
    v6 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    v7 = [v6 isRightHandDrive];

    if (v7)
    {
      v5 = 10;
    }

    else
    {
      v5 = 5;
    }
  }

  v8 = [*(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow) layer];
  [v8 setMaskedCorners_];

  v9 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v10 = [v9 hasDualStatusBar];

  if (v10)
  {
    v11 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    v12 = [v11 isRightHandDrive];

    v13 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow);
    if (v13)
    {
      if (v12)
      {
        v14 = 5;
      }

      else
      {
        v14 = 10;
      }

      v15 = [v13 layer];
      [v15 setMaskedCorners_];
    }
  }

  v16 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v17 = [v16 hasDualStatusBar];

  v18 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockViewController);
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v20 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    v19 = [v20 currentViewAreaTransitionControlType];
  }

  [v18 setTransitionControlType_];
  v21 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockViewController);
  if (v21)
  {
    [v21 setTransitionControlType_];
  }

  v22 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStateProvider);

  [v22 updateStatusBarData];
}

Swift::Void __swiftcall DBDockController.updateAppearanceForWallpaper()()
{
  v1 = sub_248382BD0();
  [*(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockViewController) updateAppearanceForWallpaper];
  [*(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockViewController) updateAppearanceForWallpaper];
  v2 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v3 = [v2 wallpaperPreferences];

  if (v3)
  {
    v4 = [v3 currentWallpaper];

    if (v4)
    {
      v5 = [v4 traits];
      swift_unknownObjectRelease();
      [v5 supportsDashboardPlatterMaterials];
      sub_248383F80();
      sub_248382BB0();
      sub_248383F90();
      sub_248383F80();
      sub_248382BB0();
      sub_248383F90();
      if (*(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow))
      {
        sub_248383F80();
        sub_248382BB0();
        sub_248383F90();
      }
    }
  }
}

uint64_t DBDockController.isHidden.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard16DBDockController_isHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

id DBDockController.isHidden.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard16DBDockController_isHidden;
  swift_beginAccess();
  *(v1 + v3) = a1;
  [*(v1 + OBJC_IVAR____TtC9DashBoard16DBDockController__dockSceneHostWindow) setHidden_];
  [*(v1 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow) setHidden_];
  result = *(v1 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow);
  if (result)
  {
    return [result setHidden_];
  }

  return result;
}

void (*DBDockController.isHidden.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9DashBoard16DBDockController_isHidden;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_2482862C4;
}

void sub_2482862C4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    [*(v5 + OBJC_IVAR____TtC9DashBoard16DBDockController__dockSceneHostWindow) setHidden_];
    [*(v5 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow) setHidden_];
    v6 = *(v5 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow);
    if (v6)
    {
      [v6 setHidden_];
    }
  }

  free(v3);
}

double DBDockController.cornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard16DBDockController_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*DBDockController.cornerRadius.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9DashBoard16DBDockController_cornerRadius;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_24828647C;
}

void sub_24828647C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = [*(v5 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow) layer];
    [v6 setCornerRadius_];

    v7 = *(v5 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow);
    if (v7)
    {
      v9 = v3[3];
      v8 = v3[4];
      v10 = [v7 layer];
      [v10 setCornerRadius_];
    }
  }

  free(v3);
}

uint64_t DBDockController.traitOverridableObjects.getter()
{
  v5 = [*(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow) windowScene];
  v1 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  if (v5)
  {
    v2 = swift_unknownObjectRetain();
    MEMORY[0x24C1CB0D0](v2);
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248383B50();
    }

    sub_248383B70();
    v1 = v4;
  }

  sub_248287640(&v5);
  return v1;
}

void *DBDockController.prepareForSlideAnimation()()
{
  type metadata accessor for DBDockSlideAnimator();
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow);
  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow);
  v3 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__layoutEngine);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = v2;
  v6 = v3;
  v7 = v1;
  v8 = [Strong environmentConfiguration];
  swift_unknownObjectRelease();
  v9 = DBDockSlideAnimator.__allocating_init(driverDockWindow:passengerDockWindow:layoutEngine:environmentConfiguration:)(v7, v2, v6, v8);
  (*((*MEMORY[0x277D85000] & *v9) + 0x88))();
  return v9;
}

Swift::Void __swiftcall DBDockController.acquireFocus(heading:focusedFrame:)(UIFocusHeading heading, __C::CGRect focusedFrame)
{
  v3 = v2;
  height = focusedFrame.size.height;
  width = focusedFrame.size.width;
  y = focusedFrame.origin.y;
  x = focusedFrame.origin.x;
  v9 = OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion;
  v10 = *(v2 + OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion);
  if (v10)
  {
    [v10 invalidate];
  }

  v11 = [swift_unknownObjectUnownedLoadStrong() focusController];
  v12 = swift_unknownObjectRelease();
  if (v11)
  {
    v13 = *(v2 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow);
    v14 = (*((*MEMORY[0x277D85000] & **(v2 + OBJC_IVAR____TtC9DashBoard16DBDockController__dockSceneHostWindow)) + 0x68))(v12);
    v15 = sub_248383930();
    v16 = [v11 deferFocusToWindow:v13 scene:v14 priority:4 reason:v15 heading:heading focusedFrame:{x, y, width, height}];
  }

  else
  {
    v16 = 0;
  }

  *(v3 + v9) = v16;

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DBDockController.relinquishFocus()()
{
  v1 = OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion;
  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion);
  if (v2)
  {
    [v2 invalidate];
  }

  *(v0 + v1) = 0;

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DBDockController.relinquishFocus(heading:focusedFrame:)(UIFocusHeading heading, __C::CGRect focusedFrame)
{
  v4 = OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion;
  v5 = *(v2 + OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion);
  if (v5)
  {
    [v5 invalidateWithHeading:heading focusedFrame:{focusedFrame.origin.x, focusedFrame.origin.y, focusedFrame.size.width, focusedFrame.size.height}];
  }

  *(v2 + v4) = 0;

  swift_unknownObjectRelease();
}

uint64_t DBDockController.nowRecordingBundleIdentifier.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStateProvider) nowRecordingBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_248383960();

  return v3;
}

Swift::Void __swiftcall DBDockController.setAlwaysVisibleSecondaryDockWindowLevel()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__dockSceneHostWindow);
  type metadata accessor for Level();
  sub_248279B98(9);
  sub_24827A5FC(&unk_27EE90F50);
  sub_248382B90();
  [v1 setWindowLevel_];
  [v1 setHidden_];
  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow);
  if (v2)
  {
    [v2 setHidden_];
  }

  [*(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow) setHidden_];
}

Swift::Void __swiftcall DBDockController.resetAlwaysVisibleSecondaryDockWindowLevel()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__dockSceneHostWindow);
  v2 = sub_248279B98(6);

  [v1 setWindowLevel_];
}

id DBDockController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBDockController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDockController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DBDockController.invalidate()()
{
  [*(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__dockSceneHostWindow) invalidate];
  [*(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow);
  if (v1)
  {
    [v1 setHidden_];
  }

  [*(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStateProvider) invalidate];
  [*(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStyleService) invalidate];
  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStyleServiceDomainActivationToken);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = *(v0 + OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStyleAssertion);

  [v3 invalidate];
}

Swift::Void __swiftcall DBDockController.dashboardRootViewController(_:didUpdateActiveBundleIdentifier:animated:)(DBDashboardRootViewController *_, Swift::String_optional didUpdateActiveBundleIdentifier, Swift::Bool animated)
{
  object = didUpdateActiveBundleIdentifier.value._object;
  v5 = [*(v3 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockViewController) appDockViewController];
  if (object)
  {
    v6 = sub_248383930();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v5 setActiveBundleIdentifier_animated_];
}

uint64_t sub_248287640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2482876A8(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow) windowScene];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 _FBSScene];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24839C700;
    *(inited + 32) = a1;
    v7 = a1;
    sub_24814F838(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_24814FB28(0, &unk_27EE91610);
    sub_248151298(&qword_27EE90E30, &unk_27EE91610);
    v8 = sub_248383C70();

    [v5 sendActions_];
  }
}

void *DBDashboardAnimation.fromTransitionContainerView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_fromTransitionContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2482878B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_fromTransitionContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_248287910@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

void *DBDashboardAnimation.fromView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_fromView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_248287A24(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_fromView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_248287A7C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

double DBDashboardAnimation.dbCornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_dbCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_248287BC4(double a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_dbCornerRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_248287C70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_dbCornerRadius;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void *DBDashboardAnimation.toView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_toView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_248287D70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_toView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_248287DC8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

void *DBDashboardAnimation.toTransitionContainerView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_toTransitionContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_248287EDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_toTransitionContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_248287F34@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

void *DBDashboardAnimation.rootContainerView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_rootContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_248288048(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_rootContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2482880A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

void *DBDashboardAnimation.rootContainerBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_rootContainerBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2482881BC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_248288218(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_rootContainerBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_248288270@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

void sub_2482882E0(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id DBDashboardAnimation.__allocating_init(settings:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_248288540(a1);

  return v4;
}

id DBDashboardAnimation.init(settings:)(void *a1)
{
  v2 = sub_248288540(a1);

  return v2;
}

id DBDashboardAnimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBDashboardAnimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDashboardAnimation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_248288540(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_fromTransitionContainerView;
  *&v2[OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_fromTransitionContainerView] = 0;
  v5 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_fromView;
  *&v2[OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_fromView] = 0;
  v6 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_toView;
  *&v2[OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_toView] = 0;
  v7 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_toTransitionContainerView;
  *&v2[OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_toTransitionContainerView] = 0;
  v8 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_rootContainerView;
  *&v2[OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_rootContainerView] = 0;
  v9 = OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_rootContainerBackgroundColor;
  *&v2[OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_rootContainerBackgroundColor] = 0;
  v10 = MEMORY[0x277D85000];
  v11 = (*((*MEMORY[0x277D85000] & *a1) + 0x100))();
  swift_beginAccess();
  v12 = *&v2[v4];
  *&v2[v4] = v11;

  v13 = (*((*v10 & *a1) + 0xE8))();
  swift_beginAccess();
  v14 = *&v2[v5];
  *&v2[v5] = v13;

  *&v2[OBJC_IVAR____TtC9DashBoard20DBDashboardAnimation_dbCornerRadius] = (*((*v10 & *a1) + 0x118))();
  v15 = (*((*v10 & *a1) + 0xB8))();
  swift_beginAccess();
  v16 = *&v2[v6];
  *&v2[v6] = v15;

  v17 = (*((*v10 & *a1) + 0xD0))();
  swift_beginAccess();
  v18 = *&v2[v7];
  *&v2[v7] = v17;

  v19 = (*((*v10 & *a1) + 0x88))();
  swift_beginAccess();
  v20 = *&v2[v8];
  *&v2[v8] = v19;

  v21 = (*((*v10 & *a1) + 0xA0))();
  swift_beginAccess();
  v22 = *&v2[v9];
  *&v2[v9] = v21;

  v24.receiver = v2;
  v24.super_class = type metadata accessor for DBDashboardAnimation();
  return objc_msgSendSuper2(&v24, sel_init);
}

id DBDynamicContentWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDynamicContentWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBResizeWindow.__allocating_init(windowScene:frame:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = a1;
  v13 = sub_248279ADC(v12, 12, a2, a3, a4, a5);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 blackColor];
  [v15 setBackgroundColor_];

  return v15;
}

id DBResizeWindow.init(windowScene:frame:)(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = sub_248279ADC(v9, 12, a2, a3, a4, a5);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 blackColor];
  [v12 setBackgroundColor_];

  return v12;
}

id DBResizeWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBResizeWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBDockSlideAnimator.__allocating_init(driverDockWindow:passengerDockWindow:layoutEngine:environmentConfiguration:)(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  swift_unknownObjectUnownedInit();
  *&v10[OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__layoutEngine] = a3;
  *&v10[OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__driverDockWindow] = a1;
  v11 = a3;
  v12 = a1;
  [v12 frame];
  v13 = &v10[OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__driverDockFrame];
  *v13 = v14;
  *(v13 + 1) = v15;
  *(v13 + 2) = v16;
  *(v13 + 3) = v17;
  *&v10[OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__passengerDockWindow] = a2;
  if (a2)
  {
    [a2 frame];
    *(&v19 + 1) = v18;
    *(&v21 + 1) = v20;
  }

  else
  {
    v19 = 0uLL;
    v21 = 0uLL;
  }

  v22 = &v10[OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__passengerDockFrame];
  *v22 = v19;
  *(v22 + 1) = v21;
  v22[32] = a2 == 0;
  v25.receiver = v10;
  v25.super_class = v5;
  v23 = objc_msgSendSuper2(&v25, sel_init);

  return v23;
}

id DBDockSlideAnimator.init(driverDockWindow:passengerDockWindow:layoutEngine:environmentConfiguration:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = sub_2482894C4(a1, a2, a3);

  return v8;
}

void sub_248288EC8()
{
  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__driverDockFrame);
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__driverDockFrame + 8);
  v3 = *(v0 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__driverDockFrame + 16);
  v4 = *(v0 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__driverDockFrame + 24);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = [Strong currentStatusBarEdge];

  if (v6 == 1)
  {
    v7 = *(v0 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__layoutEngine);
    [v7 dockShortAxisLength];
    v1 = v1 + v8;
  }

  else
  {
    v9 = swift_unknownObjectUnownedLoadStrong();
    v10 = [v9 currentStatusBarEdge];

    if (v10 == 3)
    {
      v7 = *(v0 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__layoutEngine);
      [v7 dockShortAxisLength];
      v1 = v1 - v11;
    }

    else
    {
      v12 = swift_unknownObjectUnownedLoadStrong();
      v13 = [v12 isRightHandDrive];

      v7 = *(v0 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__layoutEngine);
      [v7 dockShortAxisLength];
      v15 = v2 - v14;
      v16 = v2 + v14;
      if (v13)
      {
        v2 = v16;
      }

      else
      {
        v2 = v15;
      }
    }
  }

  [*(v0 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__driverDockWindow) setFrame_];
  v17 = *(v0 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__passengerDockWindow);
  if (v17)
  {
    v18 = (v0 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__passengerDockFrame);
    if ((*(v0 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__passengerDockFrame + 32) & 1) == 0)
    {
      v20 = v18[2];
      v19 = v18[3];
      v22 = *v18;
      v21 = v18[1];
      v23 = swift_unknownObjectUnownedLoadStrong();
      v26 = v17;
      v24 = [v23 isRightHandDrive];

      [v7 dockShortAxisLength];
      if (v24)
      {
        v25 = -v25;
      }

      [v26 setFrame_];
    }
  }
}

void DBDockSlideAnimator.animate(duration:delay:completion:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  v19 = sub_2482895B4;
  v20 = v10;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_24814C01C;
  v18 = &block_descriptor_7;
  v11 = _Block_copy(&v15);
  v12 = v4;

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v19 = sub_248272CD4;
  v20 = v13;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2482614B8;
  v18 = &block_descriptor_6_0;
  v14 = _Block_copy(&v15);
  sub_248167910(a1);

  [v9 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
  _Block_release(v14);
  _Block_release(v11);
}

id DBDockSlideAnimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBDockSlideAnimator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDockSlideAnimator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2482894C4(void *a1, void *a2, void *a3)
{
  swift_unknownObjectUnownedInit();
  *&v3[OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__layoutEngine] = a3;
  *&v3[OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__driverDockWindow] = a1;
  v7 = a3;
  [a1 frame];
  v8 = &v3[OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__driverDockFrame];
  *v8 = v9;
  *(v8 + 1) = v10;
  *(v8 + 2) = v11;
  *(v8 + 3) = v12;
  *&v3[OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__passengerDockWindow] = a2;
  if (a2)
  {
    [a2 frame];
    *(&v14 + 1) = v13;
    *(&v16 + 1) = v15;
  }

  else
  {
    v14 = 0uLL;
    v16 = 0uLL;
  }

  v17 = &v3[OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__passengerDockFrame];
  *v17 = v14;
  *(v17 + 1) = v16;
  v17[32] = a2 == 0;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for DBDockSlideAnimator();
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_2482895B4()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__driverDockWindow) setFrame_];
  result = *(v1 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__passengerDockWindow);
  if (result)
  {
    v3 = (v1 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__passengerDockFrame);
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if ((*(v1 + OBJC_IVAR____TtC9DashBoard19DBDockSlideAnimator__passengerDockFrame + 32) & 1) == 0)
    {
      v6 = v3[2];
      v7 = v3[3];
      v4 = *v3;
      v5 = v3[1];
    }

    return [result setFrame_];
  }

  return result;
}

uint64_t sub_2482896A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_LiveActivityErrorDomain);

  return v1;
}

double DBLiveActivityWidgetViewController.rectForSystemMetrics.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_rectForSystemMetrics;
  swift_beginAccess();
  return *v1;
}

uint64_t DBLiveActivityWidgetViewController.rectForSystemMetrics.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_rectForSystemMetrics);
  v10 = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return (*((*MEMORY[0x277D85000] & *v4) + 0x120))(v10, a1, a2, a3, a4);
}

void (*DBLiveActivityWidgetViewController.rectForSystemMetrics.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_rectForSystemMetrics;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_2482899D8;
}

void sub_2482899D8(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    (*((*MEMORY[0x277D85000] & *v5) + 0x120))(v4, *(v5 + v3[4]), *(v5 + v3[4] + 8), *(v5 + v3[4] + 16), *(v5 + v3[4] + 24));
  }

  free(v3);
}

id DBLiveActivityWidgetViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBLiveActivityWidgetViewController.init()()
{
  v1 = &v0[OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_LiveActivityErrorDomain];
  *v1 = 0xD000000000000020;
  *(v1 + 1) = 0x80000002483AD5B0;
  *&v0[OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController] = 0;
  v2 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_identifierToViewController;
  *&v0[v2] = sub_24828CB78(MEMORY[0x277D84F90]);
  *&v0[OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_systemMetricsRequest] = 0;
  v3 = &v0[OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_rectForSystemMetrics];
  v4 = type metadata accessor for DBLiveActivityWidgetViewController();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

id sub_248289B7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24828CDB0();

  return v4;
}

void DBLiveActivityWidgetViewController.activateLiveActivity(descriptor:completion:)(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  v4 = v3;
  v8 = sub_248382CC0();
  v99 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = &v95 - v12;
  MEMORY[0x28223BE20](v13);
  v98 = &v95 - v14;
  v15 = sub_2483812C0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_systemMetricsRequest;
  v20 = *(v4 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_systemMetricsRequest);
  v101 = a3;
  if (!v20)
  {
    v45 = *(v4 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController);
    *(v4 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91278);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24839C7F0;
    *(inited + 32) = sub_248383960();
    *(inited + 40) = v47;
    v103 = 0;
    v104 = 0xE000000000000000;
    sub_248384440();
    MEMORY[0x24C1CAFD0](0xD00000000000002ELL, 0x80000002483AD5E0);
    sub_248384530();
    MEMORY[0x24C1CAFD0](0x7363697274654D20, 0xEA0000000000203ALL);
    v108 = *(v4 + v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91280);
    v48 = sub_2483841E0();
    MEMORY[0x24C1CAFD0](v48);

    v49 = v103;
    v50 = v104;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v49;
    *(inited + 56) = v50;
    sub_24828CCA0(inited);
    swift_setDeallocating();
    sub_24822D578(inited + 32, &unk_27EE945D0);
    v51 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v52 = sub_248383930();
    v53 = sub_248383880();

    v54 = [v51 initWithDomain:v52 code:0 userInfo:v53];

    v44 = v54;
    a2(v54);
    v36 = v44;
    goto LABEL_22;
  }

  v95 = v8;
  v96 = a2;
  v102 = v20;
  v21 = sub_2483812A0();
  v23 = v22;
  v24 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_identifierToViewController;
  swift_beginAccess();
  v25 = *(v4 + v24);
  v26 = *(v25 + 16);
  v100 = a1;
  if (!v26)
  {

    goto LABEL_13;
  }

  v27 = sub_24822B8A0(v21, v23);
  v29 = v28;

  if ((v29 & 1) == 0)
  {

LABEL_12:
    a1 = v100;
LABEL_13:
    (*(v16 + 16))(v18, a1, v15);
    v55 = objc_allocWithZone(sub_248382870());
    v44 = v102;
    v56 = sub_248382860();
    if (_UISolariumEnabled())
    {
      v102 = v44;
      v57 = [v56 view];
      if (!v57)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v58 = v57;
      sub_248382C90();
      v59 = v97;
      sub_248382CA0();
      v60 = *(v99 + 8);
      v61 = v95;
      v60(v10, v95);
      sub_248382C80();
      v60(v59, v61);
      v105 = sub_248382CE0();
      v106 = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(&v103);
      sub_248382CF0();
      sub_248383F70();

      a1 = v100;
      v44 = v102;
    }

    v62 = v56;
    v63 = [v62 view];
    if (v63)
    {
      v64 = v63;
      [v63 setHidden_];

      v65 = [v62 view];
      if (v65)
      {
        v66 = v65;
        [v65 setClipsToBounds_];

        [v4 addChildViewController_];
        v67 = [v62 view];

        if (v67)
        {
          (*((*MEMORY[0x277D85000] & *v4) + 0x118))(v67, v4);

          [v62 didMoveToParentViewController_];
          v68 = a1;
          v69 = sub_2483812A0();
          v71 = v70;
          swift_beginAccess();
          v72 = v62;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v107 = *(v4 + v24);
          *(v4 + v24) = 0x8000000000000000;
          sub_24828C894(v72, v69, v71, isUniquelyReferenced_nonNull_native);

          *(v4 + v24) = v107;
          swift_endAccess();
          v74 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController;
          v75 = *(v4 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController);
          *(v4 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController) = v62;
          v36 = v72;

          sub_248382810();
          v76 = *(v4 + v74);
          if (v76)
          {
            sub_24814FB28(0, &qword_27EE90280);
            v77 = v76;
            v78 = sub_248383E50();
            v79 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v80 = swift_allocObject();
            v81 = v96;
            v80[2] = v79;
            v80[3] = v81;
            v80[4] = v101;

            sub_248382800();
          }

          (*((*MEMORY[0x277D85000] & *v4) + 0x110))(v68);
          goto LABEL_22;
        }

        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v30 = *(*(v25 + 56) + 8 * v27);

  sub_24814FB28(0, &qword_27EE92190);
  v31 = v30;
  v32 = sub_248382820();

  v33 = sub_248384030();
  if ((v33 & 1) == 0)
  {

    goto LABEL_12;
  }

  v34 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController;
  v35 = *(v4 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController);
  if (v35)
  {
    sub_248382870();
    v36 = v31;
    v37 = v35;
    v38 = sub_248384030();

    v39 = v101;
    v40 = v96;
    if (v38)
    {

      v41 = *(v4 + v34);
      v42 = *(v4 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController);
      *(v4 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController) = v41;
      v43 = v41;

      (*((*MEMORY[0x277D85000] & *v4) + 0x110))(v100);
      v40(0);
      v44 = v102;
LABEL_22:

      return;
    }
  }

  else
  {
    v82 = v31;
    v39 = v101;
    v40 = v96;
  }

  v83 = v31;
  v84 = [v83 view];
  if (!v84)
  {
    goto LABEL_33;
  }

  v85 = v84;
  [v84 setHidden_];

  [v4 addChildViewController_];
  v86 = [v83 view];

  if (v86)
  {
    v87 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v4) + 0x118))(v86, v4);

    [v83 didMoveToParentViewController_];
    v88 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController;
    v89 = *(v4 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController);
    *(v4 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController) = v83;
    v36 = v83;

    sub_248382810();
    v90 = *(v4 + v88);
    if (v90)
    {
      sub_24814FB28(0, &qword_27EE90280);
      v91 = v90;
      v92 = sub_248383E50();
      v93 = swift_allocObject();
      v93[2] = v4;
      v93[3] = v40;
      v93[4] = v39;
      v94 = v4;

      sub_248382800();
    }

    (*((*v87 & *v4) + 0x110))(v100);
    v44 = v102;
    goto LABEL_22;
  }

LABEL_34:
  __break(1u);
}

void sub_24828A790(void *a1, void *a2, void (*a3)(void))
{
  v6 = sub_248382A90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248160784();
  (*(v7 + 16))(v9, v10, v6);
  v11 = a2;
  v12 = a1;
  v13 = sub_248382A80();
  v14 = sub_248383D80();

  if (os_log_type_enabled(v13, v14))
  {
    v22 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543618;
    *(v15 + 4) = v11;
    *v16 = v11;
    *(v15 + 12) = 2114;
    v17 = v11;
    if (a1)
    {
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v15 + 14) = v19;
    v16[1] = v20;
    _os_log_impl(&dword_248146000, v13, v14, "<%{public}@>  VC exists: ensuredContent for upcomingHostViewController via activateLiveActivity with error %{public}@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE40);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v16, -1, -1);
    MEMORY[0x24C1CD5F0](v15, -1, -1);
    a3 = v22;
  }

  (*(v7 + 8))(v9, v6);
  if (a1)
  {
    a1 = sub_2483810B0();
  }

  a3(a1);
}

void sub_24828A9D8(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_248382A90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248160784();
  (*(v6 + 16))(v8, v9, v5);

  v10 = a1;
  v11 = sub_248382A80();
  v12 = sub_248383D80();

  if (os_log_type_enabled(v11, v12))
  {
    v19 = a3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543618;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v13 + 4) = Strong;
    *v14 = Strong;
    *(v13 + 12) = 2112;
    if (a1)
    {
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v13 + 14) = v17;
    v14[1] = v18;
    _os_log_impl(&dword_248146000, v11, v12, "<%{public}@>  new VC: ensuredContent for upcomingHostViewController in activateLiveActivity with error %@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE40);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v14, -1, -1);
    MEMORY[0x24C1CD5F0](v13, -1, -1);
    a3 = v19;
  }

  (*(v6 + 8))(v8, v5);
  if (a1)
  {
    a1 = sub_2483810B0();
  }

  a3(a1);
}

void DBLiveActivityWidgetViewController.showLiveActivity(descriptor:)(uint64_t a1)
{
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController))
  {
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);

    v18(a1, sub_24828CF68, v17);

    return;
  }

  v7 = sub_248160784();
  (*(v4 + 16))(v6, v7, v3);
  v8 = v1;
  v9 = sub_248382A80();
  LODWORD(v10) = sub_248383D80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543618;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2112;
    v13 = v8;
    v14 = [v13 parentViewController];
    if (v14)
    {
      v21 = v10;
      v15 = v14;
      v10 = [v14 view];

      if (!v10)
      {
        __break(1u);
        return;
      }

      v16 = [v10 window];

      LOBYTE(v10) = v21;
    }

    else
    {

      v16 = 0;
    }

    *(v11 + 14) = v16;
    v12[1] = v16;
    _os_log_impl(&dword_248146000, v9, v10, "<%{public}@> showLiveActivity. Parent window: %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE40);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v12, -1, -1);
    MEMORY[0x24C1CD5F0](v11, -1, -1);
  }

  else
  {
  }

  v19 = (*(v4 + 8))(v6, v3);
  (*((*MEMORY[0x277D85000] & *v8) + 0x108))(v19);
}

void sub_24828B0AC(void *a1)
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = sub_248160784();
  v12 = *(v3 + 16);
  if (a1)
  {
    v12(v10, v11, v2);
    v13 = a1;

    v14 = sub_248382A80();
    v15 = sub_248383DA0();

    if (os_log_type_enabled(v14, v15))
    {
      v39 = v12;
      v40 = v2;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543618;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v16 + 4) = Strong;
      *(v16 + 12) = 2114;
      *(v16 + 14) = v13;
      *v17 = Strong;
      v17[1] = a1;
      v19 = v13;
      _os_log_impl(&dword_248146000, v14, v15, "<%{public}@>  showLiveActivity - unable to activate live activity with error: %{public}@", v16, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE40);
      swift_arrayDestroy();
LABEL_6:
      MEMORY[0x24C1CD5F0](v17, -1, -1);
      MEMORY[0x24C1CD5F0](v16, -1, -1);
      v2 = v40;
      v22 = v41;
      v12 = v39;
      goto LABEL_9;
    }
  }

  else
  {
    v12(v7, v11, v2);

    v14 = sub_248382A80();
    v20 = sub_248383D80();

    if (os_log_type_enabled(v14, v20))
    {
      v39 = v12;
      v40 = v2;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      *(v16 + 4) = v21;
      *v17 = v21;
      _os_log_impl(&dword_248146000, v14, v20, "<%{public}@>  showLiveActivity - activated live activity", v16, 0xCu);
      sub_24822D578(v17, &qword_27EE8FE40);
      v10 = v7;
      goto LABEL_6;
    }

    v10 = v7;
  }

  v22 = v41;
LABEL_9:

  v23 = *(v3 + 8);
  v23(v10, v2);
  v24 = sub_248160784();
  v12(v22, v24, v2);

  v25 = sub_248382A80();
  v26 = sub_248383D80();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v2;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138543618;
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    *(v28 + 4) = v30;
    *v29 = v30;
    *(v28 + 12) = 2112;
    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v32 = v31;
      v33 = [v31 parentViewController];

      if (v33)
      {
        v34 = [v33 view];

        if (!v34)
        {
          __break(1u);
          return;
        }

        v33 = [v34 window];

        v35 = v33;
      }

      else
      {

        v35 = 0;
      }

      v22 = v41;
    }

    else
    {

      v33 = 0;
      v35 = 0;
    }

    *(v28 + 14) = v33;
    v29[1] = v35;
    _os_log_impl(&dword_248146000, v25, v26, "<%{public}@> showLiveActivity after activateLiveActivity. Parent window: %@", v28, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE40);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v29, -1, -1);
    MEMORY[0x24C1CD5F0](v28, -1, -1);

    v2 = v27;
  }

  else
  {
  }

  v23(v22, v2);
  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = v36;
    (*((*MEMORY[0x277D85000] & *v36) + 0x108))();
  }
}

void sub_24828B754()
{
  v1 = v0;
  v2 = [v0 childViewControllers];
  sub_24814FB28(0, &qword_27EE91288);
  v3 = sub_248383B10();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_248384360();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v31 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController;
      v29 = v3 & 0xFFFFFFFFFFFFFF8;
      v30 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x24C1CBA50](v5, v3);
        }

        else
        {
          if (v5 >= *(v29 + 16))
          {
            goto LABEL_22;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v9 = *(v0 + v31);
        if (v9)
        {
          v10 = v6;
          v11 = v9;
          v12 = sub_248384030();

          if (v12)
          {

            goto LABEL_5;
          }
        }

        else
        {
          v13 = v6;
        }

        v14 = *(v0 + v30);
        if (v14)
        {
          v15 = v14;
          v16 = sub_248384030();

          if (v16)
          {
            goto LABEL_5;
          }
        }

        else
        {
        }

        [v7 willMoveToParentViewController_];
        v17 = [v7 view];
        if (!v17)
        {
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v18 = v17;
        [v17 removeFromSuperview];

        [v7 removeFromParentViewController];
LABEL_5:

        ++v5;
      }

      while (v8 != v4);
    }
  }

  v19 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController;
  v20 = *(v0 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController);
  if (v20)
  {
    v21 = [v20 view];
    if (!v21)
    {
      goto LABEL_32;
    }

    v22 = v21;
    [v21 setHidden_];

    v23 = *(v1 + v19);
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v1 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController);
  *(v1 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController) = v23;
  v25 = v23;

  v26 = *(v1 + v19);
  *(v1 + v19) = 0;

  v32 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v27 = [objc_opt_self() clearColor];
  [v32 setBackgroundColor_];

  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = [v32 layer];
  [v28 setHitTestsAsOpaque_];

  (*((*MEMORY[0x277D85000] & *v1) + 0x118))(v32, v1);
}

uint64_t sub_24828BAE8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_identifierToViewController;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v18[2] = a1;

  result = sub_24828BC64(sub_24828CF70, v18, v5);
  v7 = result;
  v8 = *(result + 16);
  if (!v8)
  {
  }

  v9 = 0;
  v10 = (result + 40);
  while (v9 < *(v7 + 16))
  {
    v12 = *(v10 - 1);
    v11 = *v10;
    swift_beginAccess();

    v13 = sub_24822B8A0(v12, v11);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v2 + v4);
      v19 = v17;
      *(v2 + v4) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24828CA0C();
        v17 = v19;
      }

      sub_24828C6E4(v15, v17);
      *(v2 + v4) = v17;
    }

    ++v9;
    swift_endAccess();

    v10 += 2;
    if (v8 == v9)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24828BC64(uint64_t result, uint64_t a2, uint64_t a3)
{
  v22 = result;
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
  v10 = MEMORY[0x277D84F90];
  v21 = a3;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v10;
    }

    v8 = *(v5 + 8 * v12);
    ++v4;
    if (v8)
    {
      v11 = v10;
      v4 = v12;
      while (1)
      {
        v13 = a3;
        v14 = (*(a3 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v8)))));
        v16 = *v14;
        v15 = v14[1];
        v23[0] = *v14;
        v23[1] = v15;

        v17 = v22(v23);
        if (v3)
        {
          break;
        }

        v8 &= v8 - 1;
        v10 = v11;
        if (v17)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v24 = v11;
          if ((result & 1) == 0)
          {
            result = sub_24822C8F0(0, *(v11 + 16) + 1, 1);
            v10 = v24;
          }

          v19 = *(v10 + 16);
          v18 = *(v10 + 24);
          v3 = 0;
          if (v19 >= v18 >> 1)
          {
            result = sub_24822C8F0((v18 > 1), v19 + 1, 1);
            v3 = 0;
            v10 = v24;
          }

          *(v10 + 16) = v19 + 1;
          v20 = v10 + 16 * v19;
          *(v20 + 32) = v16;
          *(v20 + 40) = v15;
          a3 = v21;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

        else
        {

          a3 = v13;
          v3 = 0;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = v10;
      }

      v10 = v11;

      return v10;
    }
  }

  __break(1u);
  return result;
}

void sub_24828BE40(void *a1, id a2)
{
  v4 = [a2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 addSubview_];

  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24839CCB0;
  v7 = [a1 topAnchor];
  v8 = [a2 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  v12 = [a1 leadingAnchor];
  v13 = [a2 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v6 + 40) = v16;
  v17 = [a1 trailingAnchor];
  v18 = [a2 view];
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 trailingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v6 + 48) = v21;
  v22 = [a1 bottomAnchor];
  v23 = [a2 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v24 bottomAnchor];

  v27 = [v22 constraintEqualToAnchor_];
  *(v6 + 56) = v27;
  sub_24814FB28(0, &qword_27EE8FE90);
  v28 = sub_248383B00();

  [v25 activateConstraints_];
}

void sub_24828C160()
{
  v1 = v0;
  sub_248382850();
  sub_2483828A0();
  sub_248382880();
  sub_248382880();
  v2 = sub_248382840();
  sub_248382890();
  sub_248382880();
  sub_2483827D0();
  sub_2483827C0();
  v3 = sub_248382830();
  sub_248382890();
  sub_248382880();
  sub_2483827C0();
  v4 = sub_248382830();
  v5 = objc_allocWithZone(sub_2483828C0());
  v6 = v2;
  v7 = v3;
  v8 = v4;
  sub_2483828B0();
  v9 = objc_allocWithZone(sub_2483827F0());
  v10 = v6;
  v11 = sub_2483827E0();

  v12 = *(v1 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_systemMetricsRequest);
  *(v1 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_systemMetricsRequest) = v11;
}

id DBLiveActivityWidgetViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBLiveActivityWidgetViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24828C440(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91290);
  v35 = a2;
  result = sub_2483845D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_248384780();
      sub_2483839E0();
      result = sub_2483847B0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24828C6E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2483842F0() + 1) & ~v5;
    do
    {
      sub_248384780();

      sub_2483839E0();
      v9 = sub_2483847B0();

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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
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

uint64_t sub_24828C894(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
      sub_24828C440(v16, a4 & 1);
      v11 = sub_24822B8A0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_2483846E0();
        __break(1u);
        return MEMORY[0x2821F96F8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_24828CA0C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

id sub_24828CA0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91290);
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

        result = v20;
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

unint64_t sub_24828CB78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91290);
    v3 = sub_2483845F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24822B8A0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_24828CCA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91298);
    v3 = sub_2483845F0();
    v4 = a1 + 32;

    while (1)
    {
      sub_24828DCDC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_24822B8A0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24825E6A0(&v15, (v3[7] + 32 * result));
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

id sub_24828CDB0()
{

  v1 = &v0[OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_LiveActivityErrorDomain];
  *v1 = 0xD000000000000020;
  *(v1 + 1) = 0x80000002483AD5B0;
  *&v0[OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController] = 0;
  v2 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_identifierToViewController;
  *&v0[v2] = sub_24828CB78(MEMORY[0x277D84F90]);
  *&v0[OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_systemMetricsRequest] = 0;
  v3 = &v0[OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_rectForSystemMetrics];
  v4 = type metadata accessor for DBLiveActivityWidgetViewController();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

void sub_24828CE74()
{
  v1 = (v0 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_LiveActivityErrorDomain);
  *v1 = 0xD000000000000020;
  v1[1] = 0x80000002483AD5B0;
  *(v0 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController) = 0;
  v2 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_identifierToViewController;
  *(v0 + v2) = sub_24828CB78(MEMORY[0x277D84F90]);
  *(v0 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_systemMetricsRequest) = 0;
  v3 = (v0 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_rectForSystemMetrics);
  *v3 = 0u;
  v3[1] = 0u;
  sub_248384580();
  __break(1u);
}

uint64_t sub_24828CF70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_2483812A0() == v1 && v3 == v2)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_248384680();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

unint64_t sub_24828CFEC()
{
  result = qword_27EE91780;
  if (!qword_27EE91780)
  {
    sub_2483812C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE91780);
  }

  return result;
}

void sub_24828D044(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v6 = sub_248382CC0();
  v96 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = &v91 - v10;
  MEMORY[0x28223BE20](v11);
  v95 = &v91 - v12;
  v13 = sub_2483812C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  v18 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_systemMetricsRequest;
  v19 = *(a2 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_systemMetricsRequest);
  v98 = v17;
  if (!v19)
  {
    v41 = *(a2 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController);
    *(a2 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController) = 0;
    _Block_copy(a3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91278);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24839C7F0;
    *(inited + 32) = sub_248383960();
    *(inited + 40) = v43;
    v99 = 0;
    v100 = 0xE000000000000000;
    sub_248384440();
    MEMORY[0x24C1CAFD0](0xD00000000000002ELL, 0x80000002483AD5E0);
    sub_248384530();
    MEMORY[0x24C1CAFD0](0x7363697274654D20, 0xEA0000000000203ALL);
    v104 = *(a2 + v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91280);
    v44 = sub_2483841E0();
    MEMORY[0x24C1CAFD0](v44);

    v45 = v99;
    v46 = v100;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v45;
    *(inited + 56) = v46;
    sub_24828CCA0(inited);
    swift_setDeallocating();
    sub_24822D578(inited + 32, &unk_27EE945D0);
    v47 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v48 = sub_248383930();
    v49 = sub_248383880();

    v34 = [v47 initWithDomain:v48 code:0 userInfo:v49];

    (a3)[2](a3, v34);

LABEL_22:

    return;
  }

  v93 = v6;
  v91 = a3;
  _Block_copy(a3);
  v97 = v19;
  v20 = sub_2483812A0();
  v22 = v21;
  v23 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_identifierToViewController;
  swift_beginAccess();
  v24 = *(a2 + v23);
  if (!*(v24 + 16))
  {

    goto LABEL_13;
  }

  v92 = a1;

  v25 = sub_24822B8A0(v20, v22);
  v27 = v26;

  if ((v27 & 1) == 0)
  {

LABEL_12:
    a1 = v92;
LABEL_13:
    (*(v14 + 16))(v16, a1, v13);
    v50 = objc_allocWithZone(sub_248382870());
    v37 = v97;
    v51 = sub_248382860();
    if (_UISolariumEnabled())
    {
      v92 = v23;
      v97 = v37;
      v52 = [v51 view];
      if (!v52)
      {
LABEL_33:
        _Block_release(v91);
        __break(1u);
LABEL_34:
        _Block_release(v37);
        __break(1u);
        goto LABEL_35;
      }

      v53 = v52;
      sub_248382C90();
      v54 = v94;
      sub_248382CA0();
      v55 = *(v96 + 8);
      v56 = v93;
      v55(v8, v93);
      sub_248382C80();
      v55(v54, v56);
      v101 = sub_248382CE0();
      v102 = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(&v99);
      sub_248382CF0();
      sub_248383F70();

      v37 = v97;
      v23 = v92;
    }

    v57 = a1;
    v58 = v51;
    v59 = [v58 view];
    if (v59)
    {
      v60 = v59;
      [v59 setHidden_];

      v61 = [v58 view];
      if (v61)
      {
        v62 = v61;
        [v61 setClipsToBounds_];

        [a2 addChildViewController_];
        v63 = [v58 view];

        if (v63)
        {
          (*((*MEMORY[0x277D85000] & *a2) + 0x118))(v63, a2);

          [v58 didMoveToParentViewController_];
          v64 = sub_2483812A0();
          v66 = v65;
          swift_beginAccess();
          v67 = v58;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = *(a2 + v23);
          *(a2 + v23) = 0x8000000000000000;
          sub_24828C894(v67, v64, v66, isUniquelyReferenced_nonNull_native);

          *(a2 + v23) = v103;
          swift_endAccess();
          v69 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController;
          v70 = *(a2 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController);
          *(a2 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController) = v58;
          v34 = v67;

          sub_248382810();
          v71 = *(a2 + v69);
          v72 = v98;
          if (v71)
          {
            sub_24814FB28(0, &qword_27EE90280);
            v73 = v71;
            v74 = sub_248383E50();
            v75 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v76 = swift_allocObject();
            v76[2] = v75;
            v76[3] = sub_24825D51C;
            v76[4] = v72;

            sub_248382800();
          }

          (*((*MEMORY[0x277D85000] & *a2) + 0x110))(v57);

          goto LABEL_22;
        }

        goto LABEL_32;
      }
    }

    else
    {
      _Block_release(v91);
      __break(1u);
    }

    _Block_release(v91);
    __break(1u);
LABEL_32:
    _Block_release(v91);
    __break(1u);
    goto LABEL_33;
  }

  v28 = *(*(v24 + 56) + 8 * v25);

  sub_24814FB28(0, &qword_27EE92190);
  v29 = v28;
  v30 = sub_248382820();

  v31 = sub_248384030();
  if ((v31 & 1) == 0)
  {

    goto LABEL_12;
  }

  v32 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController;
  v33 = *(a2 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_activeHostViewController);
  if (v33)
  {
    sub_248382870();
    v34 = v29;
    v35 = v33;
    v36 = sub_248384030();

    v37 = v91;
    if (v36)
    {

      v38 = *(a2 + v32);
      v39 = *(a2 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController);
      *(a2 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController) = v38;
      v40 = v38;

      (*((*MEMORY[0x277D85000] & *a2) + 0x110))(v92);
      (*(v37 + 2))(v37, 0);
LABEL_29:

      goto LABEL_22;
    }
  }

  else
  {
    v77 = v29;
    v37 = v91;
  }

  v78 = v29;
  v79 = [v78 view];
  if (!v79)
  {
    goto LABEL_34;
  }

  v80 = v79;
  [v79 setHidden_];

  [a2 addChildViewController_];
  v81 = [v78 view];

  if (v81)
  {
    v82 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *a2) + 0x118))(v81, a2);

    [v78 didMoveToParentViewController_];
    v83 = OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController;
    v84 = *(a2 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController);
    *(a2 + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_upcomingHostViewController) = v78;
    v34 = v78;

    sub_248382810();
    v85 = *(a2 + v83);
    v86 = v98;
    if (v85)
    {
      sub_24814FB28(0, &qword_27EE90280);
      v87 = v85;
      v88 = sub_248383E50();
      v89 = swift_allocObject();
      v89[2] = a2;
      v89[3] = sub_24825D51C;
      v89[4] = v86;

      v90 = a2;
      sub_248382800();
    }

    (*((*v82 & *a2) + 0x110))(v92);
    goto LABEL_29;
  }

LABEL_35:
  _Block_release(v37);
  __break(1u);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24828DCDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE945D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24828DD54()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912A0);
    sub_24822D648(&qword_27EE912C8, &qword_27EE912A0);
    v1 = sub_248382F10();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_24828DE18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC48);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_248381D50();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912A0);
  swift_allocObject();
  return sub_248382E20();
}

void *sub_24828DEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24828FA88(a1, a2, a3, a4);

  return v8;
}

void *sub_24828DF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24828FA88(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_24828DFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a1;
  v100 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91348);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v77 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91350);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v77 - v8);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91358);
  v91 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v98 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91360);
  MEMORY[0x28223BE20](v14 - 8);
  v88 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v89 = &v77 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  v21 = sub_248381D40();
  v102 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v90 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = &v77 - v24;
  MEMORY[0x28223BE20](v25);
  v96 = &v77 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91308);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v77 - v28;
  v30 = sub_2483820C0();
  MEMORY[0x28223BE20](v30);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v33;
  v36 = v35;
  sub_248232C78(a2, v29, &qword_27EE91308);
  if ((*(v34 + 48))(v29, 1, v36) == 1)
  {
    sub_24822D578(v29, &qword_27EE91308);
    goto LABEL_26;
  }

  (*(v34 + 32))(v32, v29, v36);
  sub_248382080();
  v37 = sub_24828ECA0();

  if (!v37 || (sub_2483820B0() & 1) == 0)
  {
    (*(v34 + 8))(v32, v36);
    goto LABEL_26;
  }

  v86 = v11;
  v38 = sub_248380EA0();
  v40 = v39;
  v84 = sub_248380EF0();
  v82 = sub_248380EB0();
  v83 = sub_248380ED0();
  v41 = (v40 >> 56) & 0xF;
  v97 = v38;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {
    (*(v34 + 8))(v32, v36);

    goto LABEL_26;
  }

  v87 = v40;
  v78 = v32;
  v42 = [v84 entrys];
  sub_2482902A8();
  v43 = sub_248383B10();

  if (v43 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248384360())
  {
    v79 = v34;
    v80 = v36;
    v81 = v9;
    v77 = v6;
    if (i)
    {
      v45 = 0;
      v94 = v43 & 0xFFFFFFFFFFFFFF8;
      v95 = v43 & 0xC000000000000001;
      v46 = (v102 + 48);
      v34 = v102 + 32;
      v9 = MEMORY[0x277D84F90];
      v6 = v87;
      v93 = i;
      v85 = v43;
      while (1)
      {
        if (v95)
        {
          v47 = MEMORY[0x24C1CBA50](v45, v43);
        }

        else
        {
          if (v45 >= *(v94 + 16))
          {
            goto LABEL_44;
          }

          v47 = *(v43 + 8 * v45 + 32);
        }

        v36 = v47;
        v48 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        sub_24828EEE4(v45, v47, v97, v6, v20);

        if ((*v46)(v20, 1, v21) == 1)
        {
          sub_24822D578(v20, &qword_27EE91360);
        }

        else
        {
          v49 = *v34;
          v50 = v96;
          (*v34)(v96, v20, v21);
          v49(v101, v50, v21);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_24828F8B0(0, v9[2] + 1, 1, v9);
          }

          v52 = v9[2];
          v51 = v9[3];
          v36 = (v52 + 1);
          if (v52 >= v51 >> 1)
          {
            v9 = sub_24828F8B0(v51 > 1, v52 + 1, 1, v9);
          }

          v9[2] = v36;
          v49(v9 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v52, v101, v21);
          v6 = v87;
          v43 = v85;
        }

        ++v45;
        if (v48 == v93)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_29:

    v101 = v9;
    v55 = v9[2];
    v9 = v90;
    v96 = v55;
    if (!v55)
    {
      break;
    }

    v43 = 0;
    v95 = v102 + 16;
    v94 = v82;
    v34 = v91 + 8;
    v6 = (v102 + 8);
    while (v43 < *(v101 + 2))
    {
      (*(v102 + 16))(v9, &v101[((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v43], v21);
      v56 = v98;
      sub_248381D30();
      v103[0] = v94;
      v57 = v86;
      MEMORY[0x24C1C8E70](v103, v21, MEMORY[0x277D83B88]);
      v36 = sub_24822D648(&qword_27EE91370, &qword_27EE91358);
      v20 = v99;
      sub_248383AE0();
      sub_248383AE0();
      v58 = *v34;
      (*v34)(v57, v20);
      (v58)(v56, v20);
      if (v103[0] == v103[2])
      {
        v59 = v102;
        v60 = v89;
        (*(v102 + 32))(v89, v9, v21);
        (*(v59 + 56))(v60, 0, 1, v21);
        v64 = v80;
        v65 = v87;
        goto LABEL_39;
      }

      ++v43;
      (*v6)(v9, v21);
      if (v96 == v43)
      {
        goto LABEL_34;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

LABEL_34:
  v59 = v102;
  v60 = v89;
  (*(v102 + 56))(v89, 1, 1, v21);
  v61 = sub_248383DA0();
  v62 = *sub_24827B964();
  v63 = os_log_type_enabled(v62, v61);
  v64 = v80;
  v65 = v87;
  if (v63)
  {
    v66 = v62;
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v103[0] = v68;
    *v67 = 136315394;
    *(v67 + 4) = sub_24814A378(v97, v65, v103);
    *(v67 + 12) = 256;
    *(v67 + 14) = v82;
    _os_log_impl(&dword_248146000, v66, v61, "SingleSelectMenu(%s): Invalid currentUserVisibleValue: %hhu", v67, 0xFu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x24C1CD5F0](v68, -1, -1);
    v69 = v67;
    v59 = v102;
    MEMORY[0x24C1CD5F0](v69, -1, -1);
  }

  if (v83)
  {
LABEL_39:
    v103[0] = v97;
    v103[1] = v65;
    v70 = sub_248381D50();

    MEMORY[0x24C1C8E70](v103, v70, MEMORY[0x277D837D0]);
    v71 = v88;
    sub_248232C78(v60, v88, &qword_27EE91360);
    if ((*(v59 + 48))(v71, 1, v21) == 1)
    {
      sub_24822D578(v71, &qword_27EE91360);
      v72 = 1;
      v73 = v77;
    }

    else
    {
      v73 = v77;
      sub_248381D30();
      (*(v59 + 8))(v71, v21);
      v72 = 0;
    }

    (*(v91 + 56))(v73, v72, 1, v99);
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v75 = swift_allocObject();
    v75[2] = v97;
    v75[3] = v65;
    v75[4] = v74;

    v76 = v100;
    sub_248381D10();

    sub_24822D578(v60, &qword_27EE91360);
    (*(v79 + 8))(v78, v64);

    return (*(*(v70 - 8) + 56))(v76, 0, 1, v70);
  }

  else
  {

    sub_24822D578(v60, &qword_27EE91360);
    (*(v79 + 8))(v78, v64);
LABEL_26:
    v53 = sub_248381D50();
    return (*(*(v53 - 8) + 56))(v100, 1, 1, v53);
  }
}

BOOL sub_24828ECA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_248381170();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381140();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24822D578(v2, &qword_27EE904C0);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = sub_248381130();
  v10 = v9;
  v11 = sub_248383960();
  if (!v10)
  {
    (*(v4 + 8))(v6, v3);

    return 0;
  }

  if (v8 != v11 || v10 != v12)
  {
    v14 = sub_248384680();

    (*(v4 + 8))(v6, v3);
    return (v14 & 1) != 0;
  }

  (*(v4 + 8))(v6, v3);
  return 1;
}

uint64_t sub_24828EEE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91358);
  v11 = [a2 userVisibleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = sub_248383960();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v28 = a1;
      v17 = sub_248381D40();
      MEMORY[0x24C1C8E70](&v28, v17, MEMORY[0x277D83B88]);
      v18 = [a2 symbolName];
      if (v18)
      {
        v19 = v18;
        sub_248383960();
      }

      sub_248381D20();
      return (*(*(v17 - 8) + 56))(a5, 0, 1, v17);
    }
  }

  v20 = sub_248383DA0();
  v21 = *sub_24827B964();
  if (os_log_type_enabled(v21, v20))
  {
    v22 = v21;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_24814A378(a3, a4, &v28);
    *(v23 + 12) = 2048;
    *(v23 + 14) = a1;
    _os_log_impl(&dword_248146000, v22, v20, "SingleSelectMenu(%s): Invalid menu contents update, entry %ld missing name.", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C1CD5F0](v24, -1, -1);
    MEMORY[0x24C1CD5F0](v23, -1, -1);
  }

  v25 = sub_248381D40();
  v26 = *(*(v25 - 8) + 56);

  return v26(a5, 1, 1, v25);
}

void sub_24828F1C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91358);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - v8;
  v10 = sub_248383D80();
  v11 = *sub_24827B964();
  (*(v7 + 16))(v9, a1, v6);
  if (os_log_type_enabled(v11, v10))
  {
    v12 = v11;
    v13 = swift_slowAlloc();
    v22[1] = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_24814A378(a2, a3, v24);
    *(v14 + 12) = 2080;
    sub_24822D648(&qword_27EE91378, &qword_27EE91358);
    v16 = sub_248384650();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = sub_24814A378(v16, v18, v24);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_248146000, v12, v10, "SingleSelectMenu(%s): Entry %s was selected", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v15, -1, -1);
    MEMORY[0x24C1CD5F0](v14, -1, -1);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_248381860();
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 <= 0xFF)
    {
      sub_248380EC0();

      return;
    }

    __break(1u);
  }
}

uint64_t sub_24828F480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91340) + 48);

  return sub_24828DFB4(v3, v4, a2);
}

uint64_t sub_24828F4E4()
{

  return v0;
}

uint64_t sub_24828F51C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24828F56C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912A8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = sub_24828DD54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC50);
  sub_24822D648(&qword_27EE8FC58, &qword_27EE8FC50);
  sub_24829013C();
  sub_248382FD0();

  sub_24822D648(&qword_27EE912C0, &qword_27EE912A8);
  v4 = sub_248382F10();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_24828F70C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912A8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = sub_24828DD54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC50);
  sub_24822D648(&qword_27EE8FC58, &qword_27EE8FC50);
  sub_24829013C();
  sub_248382FD0();

  sub_24822D648(&qword_27EE912C0, &qword_27EE912A8);
  v4 = sub_248382F10();
  (*(v1 + 8))(v3, v0);
  return v4;
}

size_t sub_24828F8B0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91380);
  v10 = *(sub_248381D40() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_248381D40() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_24828FA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912D0);
  MEMORY[0x28223BE20](v39);
  v35 = v32 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912D8);
  MEMORY[0x28223BE20](v36);
  v32[1] = v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912E0);
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912E8);
  v16 = *(v15 - 8);
  v40 = v15;
  v41 = v16;
  MEMORY[0x28223BE20](v15);
  v34 = v32 - v17;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC48);
  MEMORY[0x28223BE20](v33);
  v19 = v32 - v18;
  v4[2] = 0;
  v20 = sub_248381D50();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912A0);
  swift_allocObject();
  v21 = sub_248382E20();
  v22 = MEMORY[0x277D84FA0];
  v4[3] = v21;
  v4[4] = v22;
  v4[5] = a2;
  v42 = a1;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912F0);
  sub_24822D648(&qword_27EE912F8, &qword_27EE912F0);
  sub_248382F70();

  v42 = sub_248382B00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91300);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91308) - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_24839C7F0;
  v27 = sub_2483820C0();
  (*(*(v27 - 8) + 56))(v26 + v25, 1, 1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91310);
  sub_24822D648(&qword_27EE91318, &qword_27EE91310);
  sub_248382F90();

  sub_24822D648(&qword_27EE91320, &qword_27EE912D8);
  sub_24822D648(&qword_27EE91328, &qword_27EE912D0);
  sub_248382D00();
  sub_24822D648(&qword_27EE91330, &qword_27EE912E0);
  v28 = v34;
  v29 = v37;
  sub_248382F60();
  (*(v38 + 8))(v14, v29);
  swift_allocObject();
  swift_weakInit();
  sub_24822D648(&qword_27EE91338, &qword_27EE912E8);
  v30 = v40;
  sub_248383000();

  (*(v41 + 8))(v28, v30);
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  return v4;
}

unint64_t sub_24829013C()
{
  result = qword_27EE912B0;
  if (!qword_27EE912B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8FC48);
    sub_2482901C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE912B0);
  }

  return result;
}

unint64_t sub_2482901C0()
{
  result = qword_27EE912B8;
  if (!qword_27EE912B8)
  {
    sub_248381D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE912B8);
  }

  return result;
}

uint64_t sub_24829023C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (sub_248380EE0() == v1 && v3 == v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_248384680();
  }

  return v5 & 1;
}

unint64_t sub_2482902A8()
{
  result = qword_27EE91368;
  if (!qword_27EE91368)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE91368);
  }

  return result;
}

void *DBAnimationSettings.rootContainerView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_rootContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBAnimationSettings.rootContainerView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_rootContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DBAnimationSettings.rootContainerBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_rootContainerBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBAnimationSettings.rootContainerBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_rootContainerBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DBAnimationSettings.toView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_toView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBAnimationSettings.toView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_toView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DBAnimationSettings.toTransitionContainerView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_toTransitionContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBAnimationSettings.toTransitionContainerView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_toTransitionContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DBAnimationSettings.fromView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_fromView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBAnimationSettings.fromView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_fromView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DBAnimationSettings.fromTransitionContainerView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_fromTransitionContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBAnimationSettings.fromTransitionContainerView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_fromTransitionContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double DBAnimationSettings.dbCornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_dbCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DBAnimationSettings.dbCornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_dbCornerRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DBAnimationSettings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBAnimationSettings.init()()
{
  *&v0[OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_rootContainerView] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_rootContainerBackgroundColor] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_toView] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_toTransitionContainerView] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_fromView] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_fromTransitionContainerView] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard19DBAnimationSettings_dbCornerRadius] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBAnimationSettings();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DBAnimationSettings.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBAnimationSettings();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBPassengerWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBPassengerWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_248291068()
{
  _s5DummyCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2483810A0();

  return v2;
}

id sub_248291154(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_248383930();

  v8 = [v6 initWithThemeAssetDocument:a1 displayID:v7 environmentConfiguration:a4];

  return v8;
}

uint64_t sub_2482911E8(void *a1, void (**a2)(char *, uint64_t), void *a3, void *a4)
{
  v170 = a4;
  v179 = a2;
  v180 = a3;
  v160 = sub_248381170();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_248382A90();
  v168 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v144[1] = v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v163 = v144 - v8;
  MEMORY[0x28223BE20](v9);
  v157 = v144 - v10;
  MEMORY[0x28223BE20](v11);
  v151 = v144 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE913C0);
  MEMORY[0x28223BE20](v13 - 8);
  v147 = v144 - v14;
  v150 = sub_2483832F0();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v146 = v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v148 = v144 - v17;
  v172 = sub_248381B00();
  v155 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v144[0] = v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v145 = v144 - v20;
  MEMORY[0x28223BE20](v21);
  v152 = v144 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE913C8);
  MEMORY[0x28223BE20](v23 - 8);
  v153 = v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v174 = v144 - v26;
  v161 = sub_2483824B0();
  v173 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v156 = v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v154 = v144 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v182 = (v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v35 = v144 - v34;
  v36 = sub_2483825A0();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v181 = (v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39);
  v162 = v144 - v40;
  v41 = sub_248381840();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = v144 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_248381690();
  v167 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v46 = v144 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = a1;
  DBThemeAssetDocument.document.getter(v44);
  sub_248381830();
  (*(v42 + 8))(v44, v41);
  v165 = v46;
  result = sub_248381680();
  v48 = result;
  v175 = *(result + 16);
  if (v175)
  {
    v49 = v31;
    v50 = 0;
    v51 = (v49 + 8);
    v176 = (v37 + 8);
    v177 = v37 + 16;
    v178 = v36;
    while (1)
    {
      if (v50 >= *(v48 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      (*(v37 + 16))(v181, v48 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v50, v36);
      sub_248382540();
      v186 = v179;
      v187 = v180;

      MEMORY[0x24C1C8E70](&v186, v36, MEMORY[0x277D837D0]);
      sub_248294600();
      sub_248383AE0();
      sub_248383AE0();
      if (v186 == v184 && v187 == v185)
      {
        break;
      }

      v52 = sub_248384680();
      v53 = *v51;
      (*v51)(v182, v30);
      v53(v35, v30);

      if (v52)
      {
        goto LABEL_12;
      }

      ++v50;
      v36 = v178;
      result = (*v176)(v181, v178);
      if (v175 == v50)
      {
        goto LABEL_8;
      }
    }

    v74 = *v51;
    (*v51)(v182, v30);
    v74(v35, v30);

LABEL_12:

    (*(v37 + 32))(v162, v181, v178);
    result = sub_248382590();
    v75 = result;
    v76 = *(result + 16);
    v77 = v161;
    v78 = v156;
    if (v76)
    {
      v79 = 0;
      v80 = (v155 + 48);
      v182 = (v173 + 8);
      while (v79 < *(v75 + 16))
      {
        (*(v173 + 16))(v78, v75 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v79, v77);
        sub_248382430();
        v81 = v174;
        v82 = *v80;
        if ((*v80)(v174, 1, v172) != 1)
        {

          sub_24822D578(v81, &qword_27EE913C8);
          (*(v173 + 32))(v154, v78, v77);
          v102 = v153;
          sub_248382430();
          v103 = v172;
          if (v82(v102, 1, v172) == 1)
          {
            sub_24822D578(v102, &qword_27EE913C8);
            v104 = sub_24827C568();
            v105 = v168;
            v106 = v151;
            v107 = v171;
            (*(v168 + 16))(v151, v104, v171);
            v108 = v164;
            v109 = sub_248382A80();
            v110 = sub_248383DA0();

            if (os_log_type_enabled(v109, v110))
            {
              v111 = swift_slowAlloc();
              v180 = swift_slowAlloc();
              v181 = swift_slowAlloc();
              v186 = v181;
              *v111 = 136446466;
              v112 = [v108 documentURL];
              v113 = v158;
              sub_248381120();

              sub_248294704(&qword_27EE904E0, MEMORY[0x277CC9260]);
              v114 = v160;
              v115 = sub_248384650();
              v117 = v116;
              (*(v159 + 8))(v113, v114);
              v118 = sub_24814A378(v115, v117, &v186);

              *(v111 + 4) = v118;
              *(v111 + 12) = 2114;
              sub_2482946B0();
              swift_allocError();
              *v119 = xmmword_24839E920;
              v120 = _swift_stdlib_bridgeErrorToNSError();
              *(v111 + 14) = v120;
              v121 = v180;
              *v180 = v120;
              _os_log_impl(&dword_248146000, v109, v110, "Unable to load system UI layout from %{public}s: %{public}@", v111, 0x16u);
              sub_24822D578(v121, &qword_27EE8FE40);
              MEMORY[0x24C1CD5F0](v121, -1, -1);
              v122 = v181;
              __swift_destroy_boxed_opaque_existential_0(v181);
              MEMORY[0x24C1CD5F0](v122, -1, -1);
              MEMORY[0x24C1CD5F0](v111, -1, -1);

              (*(v105 + 8))(v106, v171);
            }

            else
            {

              (*(v105 + 8))(v106, v107);
            }

            (*v182)(v154, v161);
            goto LABEL_28;
          }

          v123 = v152;
          v181 = *(v155 + 32);
          (v181)(v152, v102, v103);
          v124 = v146;
          sub_2483832E0();
          v125 = [v170 isRightHandDrive];
          v126 = sub_248381A80();
          v127 = *(v126 - 8);
          v128 = MEMORY[0x277CF8B88];
          if (!v125)
          {
            v128 = MEMORY[0x277CF8B80];
          }

          v129 = v147;
          (*(*(v126 - 8) + 104))(v147, *v128, v126);
          (*(v127 + 56))(v129, 0, 1, v126);
          sub_2483831A0();
          v130 = v149;
          v131 = v148;
          v132 = v124;
          v133 = v150;
          (*(v149 + 32))(v148, v132, v150);
          v134 = v145;
          sub_248381800();
          (*(v130 + 8))(v131, v133);
          v135 = v155;
          v136 = *(v155 + 8);
          v136(v123, v103);
          (v181)(v123, v134, v103);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE913D8);
          v137 = v144[0];
          (*(v135 + 16))(v144[0], v123, v103);
          v138 = sub_248294AA4(v137);
          v139 = v169;
          *&v169[OBJC_IVAR___DBSystemUILayout__systemUILayout] = v138;
          v140 = v170;
          [v170 screenScale];
          v142 = v141;
          v136(v123, v103);
          (*v182)(v154, v161);
          (*v176)(v162, v178);
          (*(v167 + 8))(v165, v166);
          *&v139[OBJC_IVAR___DBSystemUILayout_displayScale] = v142;
          v183.receiver = v139;
          v183.super_class = DBSystemUILayout;
          v143 = objc_msgSendSuper2(&v183, sel_init);

          return v143;
        }

        ++v79;
        (*v182)(v78, v77);
        result = sub_24822D578(v81, &qword_27EE913C8);
        if (v76 == v79)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_31;
    }

LABEL_17:

    v83 = sub_24827C568();
    v84 = v168;
    v85 = v157;
    v86 = v171;
    (*(v168 + 16))(v157, v83, v171);
    v87 = v164;
    v88 = sub_248382A80();
    v89 = sub_248383DA0();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v186 = v182;
      *v90 = 136446466;
      v92 = [v87 documentURL];
      v93 = v158;
      sub_248381120();

      sub_248294704(&qword_27EE904E0, MEMORY[0x277CC9260]);
      v94 = v160;
      v95 = sub_248384650();
      v97 = v96;
      (*(v159 + 8))(v93, v94);
      v98 = sub_24814A378(v95, v97, &v186);

      *(v90 + 4) = v98;
      *(v90 + 12) = 2114;
      sub_2482946B0();
      swift_allocError();
      *v99 = 0;
      v99[1] = 0;
      v100 = _swift_stdlib_bridgeErrorToNSError();
      *(v90 + 14) = v100;
      *v91 = v100;
      _os_log_impl(&dword_248146000, v88, v89, "Unable to load system UI layout from %{public}s: %{public}@", v90, 0x16u);
      sub_24822D578(v91, &qword_27EE8FE40);
      MEMORY[0x24C1CD5F0](v91, -1, -1);
      v101 = v182;
      __swift_destroy_boxed_opaque_existential_0(v182);
      MEMORY[0x24C1CD5F0](v101, -1, -1);
      MEMORY[0x24C1CD5F0](v90, -1, -1);

      (*(v84 + 8))(v157, v171);
    }

    else
    {

      (*(v84 + 8))(v85, v86);
    }

LABEL_28:
    (*v176)(v162, v178);
  }

  else
  {
LABEL_8:

    v54 = sub_24827C568();
    v55 = v168;
    v56 = v163;
    v57 = v171;
    (*(v168 + 16))(v163, v54, v171);

    v58 = v164;
    v59 = sub_248382A80();
    v60 = sub_248383DA0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v186 = v182;
      *v61 = 136446466;
      v63 = [v58 documentURL];
      v64 = v158;
      sub_248381120();

      sub_248294704(&qword_27EE904E0, MEMORY[0x277CC9260]);
      v65 = v160;
      v66 = sub_248384650();
      v68 = v67;
      (*(v159 + 8))(v64, v65);
      v69 = sub_24814A378(v66, v68, &v186);

      *(v61 + 4) = v69;
      *(v61 + 12) = 2114;
      sub_2482946B0();
      swift_allocError();
      v70 = v180;
      *v71 = v179;
      v71[1] = v70;
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 14) = v72;
      *v62 = v72;
      _os_log_impl(&dword_248146000, v59, v60, "Unable to load system UI layout from %{public}s: %{public}@", v61, 0x16u);
      sub_24822D578(v62, &qword_27EE8FE40);
      MEMORY[0x24C1CD5F0](v62, -1, -1);
      v73 = v182;
      __swift_destroy_boxed_opaque_existential_0(v182);
      MEMORY[0x24C1CD5F0](v73, -1, -1);
      MEMORY[0x24C1CD5F0](v61, -1, -1);

      (*(v55 + 8))(v163, v171);
    }

    else
    {

      (*(v55 + 8))(v56, v57);
    }
  }

  (*(v167 + 8))(v165, v166);
  type metadata accessor for DBSystemUILayout();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t DBEnvironmentConfiguration.toSwiftUIEnvironment()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE913C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  sub_2483832E0();
  v4 = [v0 isRightHandDrive];
  v5 = sub_248381A80();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x277CF8B88];
  if (!v4)
  {
    v7 = MEMORY[0x277CF8B80];
  }

  (*(*(v5 - 8) + 104))(v3, *v7, v5);
  sub_248381A80();
  (*(v6 + 56))(v3, 0, 1, v5);
  return sub_2483831A0();
}

void sub_248292C80()
{
  v1 = v0;
  v2 = sub_248381AB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248381B00();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *&v1[OBJC_IVAR___DBSystemUILayout__systemUILayout] + *((*MEMORY[0x277D85000] & **&v1[OBJC_IVAR___DBSystemUILayout__systemUILayout]) + 0x58), v6, v8);
  sub_248381AD0();
  (*(v7 + 8))(v10, v6);
  sub_248381A90();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v3 + 8))(v5, v2);
  [v1 displayScale];
  v20 = 1.0 / v19;
  [v1 displayScale];
  CGAffineTransformMakeScale(&v22, v20, 1.0 / v21);
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  CGRectApplyAffineTransform(v23, &v22);
}

BOOL sub_2482930A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE913F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_248381B00();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, *(v0 + OBJC_IVAR___DBSystemUILayout__systemUILayout) + *((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR___DBSystemUILayout__systemUILayout)) + 0x58), v4, v6);
  sub_248381AE0();
  (*(v5 + 8))(v8, v4);
  v9 = sub_248381AB0();
  v10 = (*(*(v9 - 8) + 48))(v3, 1, v9) != 1;
  sub_24822D578(v3, &qword_27EE913F0);
  return v10;
}

double sub_24829328C(void *a1, uint64_t a2, double (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  return v5;
}

uint64_t sub_2482932F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE913F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_248381B00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248381AB0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, *&v1[OBJC_IVAR___DBSystemUILayout__systemUILayout] + *((*MEMORY[0x277D85000] & **&v1[OBJC_IVAR___DBSystemUILayout__systemUILayout]) + 0x58), v5, v11);
  sub_248381AE0();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    return sub_24822D578(v4, &qword_27EE913F0);
  }

  (*(v10 + 32))(v13, v4, v9);
  sub_248381A90();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v1 displayScale];
  v24 = 1.0 / v23;
  [v1 displayScale];
  CGAffineTransformMakeScale(&v26, v24, 1.0 / v25);
  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  CGRectApplyAffineTransform(v27, &v26);
  return (*(v10 + 8))(v13, v9);
}

id sub_2482936B8()
{
  v1 = sub_248381B00();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE913F8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  (*(v2 + 16))(v4, *(v0 + OBJC_IVAR___DBSystemUILayout__systemUILayout) + *((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR___DBSystemUILayout__systemUILayout)) + 0x58), v1, v6);
  sub_248381AC0();
  (*(v2 + 8))(v4, v1);
  v9 = sub_248381C20();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24822D578(v8, &qword_27EE913F8);
    v11 = 0;
  }

  else
  {
    v11 = sub_248381C10();
    (*(v10 + 8))(v8, v9);
  }

  return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
}

uint64_t sub_248293910()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE913F8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_248381B00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248381C20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  (*(v5 + 16))(v7, *(v0 + OBJC_IVAR___DBSystemUILayout__systemUILayout) + *((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR___DBSystemUILayout__systemUILayout)) + 0x58), v4, v13);
  sub_248381AC0();
  (*(v5 + 8))(v7, v4);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_24822D578(v3, &qword_27EE913F8);
    v16 = 0;
  }

  else
  {
    (*(v9 + 32))(v15, v3, v8);
    sub_248381C00();
    sub_248294704(&unk_27EE91400, MEMORY[0x277CF8C10]);
    v17 = sub_248384240();
    v18 = *(v9 + 8);
    v18(v11, v8);
    if (v17)
    {
      v18(v15, v8);
      v16 = 1;
    }

    else
    {
      sub_248381BF0();
      v16 = sub_248384240();
      v18(v11, v8);
      v18(v15, v8);
    }
  }

  return v16 & 1;
}

void __swiftcall DBSystemUILayout.init()(DBSystemUILayout *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_248293D0C()
{
  v1 = sub_2483822E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v35 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v30 = v29 - v5;
  v6 = sub_248381B00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE913F0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v29 - v12;
  v36 = v0;
  (*(v7 + 16))(v9, *&v0[OBJC_IVAR___DBSystemUILayout__systemUILayout] + *((*MEMORY[0x277D85000] & **&v0[OBJC_IVAR___DBSystemUILayout__systemUILayout]) + 0x58), v6, v11);
  sub_248381AE0();
  (*(v7 + 8))(v9, v6);
  v14 = sub_248381AB0();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24822D578(v13, &qword_27EE913F0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v17 = sub_248381AA0();
    (*(v15 + 8))(v13, v14);
    v16 = MEMORY[0x277D84F90];
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v37 = MEMORY[0x277D84F90];
        sub_24829474C(0, v18, 0);
        v16 = v37;
        v20 = *(v2 + 16);
        v19 = v2 + 16;
        v21 = *(v19 + 64);
        v29[1] = v17;
        v32 = (v21 + 32) & ~v21;
        v33 = v20;
        v22 = v17 + v32;
        v31 = *(v19 + 56);
        v34 = v19;
        v23 = v30;
        do
        {
          v24 = v35;
          v33(v35, v22, v1);
          [v36 displayScale];
          sub_2483822D0();
          (*(v19 - 8))(v24, v1);
          v37 = v16;
          v26 = *(v16 + 16);
          v25 = *(v16 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_24829474C(v25 > 1, v26 + 1, 1);
            v16 = v37;
          }

          *(v16 + 16) = v26 + 1;
          v27 = v31;
          (*(v19 + 16))(v16 + v32 + v26 * v31, v23, v1);
          v22 += v27;
          --v18;
        }

        while (v18);
      }
    }
  }

  return v16;
}

uint64_t sub_24829412C(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_248381B00();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, *&a1[OBJC_IVAR___DBSystemUILayout__systemUILayout] + *((*MEMORY[0x277D85000] & **&a1[OBJC_IVAR___DBSystemUILayout__systemUILayout]) + 0x58), v5, v7);
  v10 = a1;
  LOBYTE(a3) = a3();
  (*(v6 + 8))(v9, v5);

  return a3 & 1;
}

uint64_t sub_24829427C(uint64_t (*a1)(uint64_t))
{
  v3 = sub_248381B00();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(v4 + 16))(v7, *(v1 + OBJC_IVAR___DBSystemUILayout__systemUILayout) + *((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR___DBSystemUILayout__systemUILayout)) + 0x58), v3, v5);
  LOBYTE(a1) = a1(v8);
  (*(v4 + 8))(v7, v3);
  return a1 & 1;
}

uint64_t DBSystemUILayout.dualStatusBarSecondaryMaterial.getter()
{
  v1 = sub_248381B00();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, *(v0 + OBJC_IVAR___DBSystemUILayout__systemUILayout) + *((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR___DBSystemUILayout__systemUILayout)) + 0x58), v1, v3);
  v6 = sub_248381AF0();
  v8 = v7;
  (*(v2 + 8))(v5, v1);
  if (v8)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_248294600()
{
  result = qword_27EE904D8;
  if (!qword_27EE904D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8FED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE904D8);
  }

  return result;
}

unint64_t type metadata accessor for DBSystemUILayout()
{
  result = qword_27EE962E0[0];
  if (!qword_27EE962E0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27EE962E0);
  }

  return result;
}

unint64_t sub_2482946B0()
{
  result = qword_27EE913D0;
  if (!qword_27EE913D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE913D0);
  }

  return result;
}

uint64_t sub_248294704(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_24829474C(size_t a1, int64_t a2, char a3)
{
  result = sub_248294864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9DashBoard21DBSystemUILayoutErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_248294784(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2482947D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_248294834(void *result, int a2)
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

size_t sub_248294864(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE904C8);
  v10 = *(sub_2483822E0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2483822E0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id sub_248294AA4(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_248295040(a1);
  (*(*(*(v2 + 10) - 8) + 8))(a1);
  return v5;
}

id sub_248294B1C(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = sub_248295040(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_248294BA8(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = sub_2483841F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  (*(v5 + 16))(v7, a1, v4, v13);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    v16 = *(v5 + 8);
    v16(a1, v4);
    v16(v7, v4);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v15, v7, v3);
    (*(v8 + 16))(v11, v15, v3);
    v18 = (*(v1 + 96))(v11);
    (*(v5 + 8))(a1, v4);
    (*(v8 + 8))(v15, v3);
    return v18;
  }
}

uint64_t sub_248294E00(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v1 + 96))(v6);
  (*(v4 + 8))(a1, v3);
  return v7;
}

id sub_248294EFC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_248294F80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBBox();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_248295040(uint64_t a1)
{
  (*(*(*((*MEMORY[0x277D85000] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x58)], a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DBBox();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_24829513C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void _sSo11DBDashboardC9DashBoardE21_updateTraitOverrides3for4with18userInterfaceStyleySaySo07UITraitF0_pG_So012CRHomeScreenK4DataCSo06UIUserjK0VtF_0(unint64_t a1, void *a2, uint64_t a3)
{
  sub_24814FB28(0, &qword_27EE91478);
  v11 = SBHIconImageAppearance.init(homeScreenStyleData:userInterfaceStyle:)(a2, a3);
  if (a1 >> 62)
  {
    v6 = sub_248384360();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  sub_24814FB28(0, &unk_27EE91480);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v8 = ObjCClassFromMetadata;
  for (i = 0; i != v6; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C1CBA50](i, a1);
    }

    else
    {
      v10 = *(a1 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v10 setObject:v11 forTrait:v8];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

uint64_t sub_2482953DC()
{
  v3[4] = sub_2482954B4;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_24827E2DC;
  v3[3] = &block_descriptor_8;
  v1 = _Block_copy(v3);

  [v0 performSceneUpdateWithBlock:v1 completion:0];
  _Block_release(v1);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

id sub_2482954D0(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithScene:a1 application:a2 environment:a3];

  swift_unknownObjectRelease();
  return v6;
}

id sub_248295538(void *a1, void *a2, uint64_t a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DBPassengerSceneViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithScene_application_environment_, a1, a2, a3);

  swift_unknownObjectRelease();
  return v7;
}

id sub_248295630(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(v4) initWithScene:a1 application:a2 proxyApplication:a3 environment:a4];

  swift_unknownObjectRelease();
  return v8;
}

id sub_2482956AC(void *a1, void *a2, void *a3, uint64_t a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DBPassengerSceneViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithScene_application_proxyApplication_environment_, a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v9;
}

id sub_2482957A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBPassengerSceneViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2482957E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_248381170();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v10 = result;
    v11 = a1;
    sub_248381140();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      return sub_2482959EC(v4);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      [v10 setDisplayLocation_];
      v12 = objc_opt_self();
      v13 = sub_2483810F0();
      [v12 applySettingsForClusterURL:v13 toSceneSettings:v10];

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_2482959EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_248295AB0(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnvironmentConfiguration:a1 rootScene:a2];

  return v4;
}

id sub_248295B0C(void *a1, void *a2)
{
  v2[OBJC_IVAR___DBFocusController__invalidated] = 0;
  *&v2[OBJC_IVAR___DBFocusController__assertions] = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR___DBFocusController__lastAssertion;
  *&v2[OBJC_IVAR___DBFocusController__lastAssertion] = 0;
  *&v2[OBJC_IVAR___DBFocusController__focusDeferral] = 0;
  v6 = [a1 displayConfiguration];
  v7 = [v6 hardwareIdentifier];

  if (v7)
  {
    v8 = [objc_opt_self() displayWithHardwareIdentifier_];

    *&v2[OBJC_IVAR___DBFocusController__display] = v8;
    *&v2[OBJC_IVAR___DBFocusController__rootScene] = a2;
    v9 = a2;
    v10 = [a1 session];
    v11 = [v10 inputDeviceManager];

    *&v2[OBJC_IVAR___DBFocusController__inputDeviceManager] = v11;
    v15.receiver = v2;
    v15.super_class = DBFocusController;
    v12 = objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {

    v13 = swift_unknownObjectRelease();
    type metadata accessor for DBFocusController(v13);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

id sub_248295D38(uint64_t a1, uint64_t a2)
{
  v5 = sub_248383930();
  v6 = [v2 deferFocusToWindow:a1 scene:0 priority:a2 reason:v5 heading:0 focusedFrame:{0.0, 0.0, 0.0, 0.0}];

  return v6;
}

id sub_248295E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_248383930();
  v8 = [v3 deferFocusToWindow:a1 scene:a2 priority:a3 reason:v7 heading:0 focusedFrame:{0.0, 0.0, 0.0, 0.0}];

  return v8;
}

void sub_248295F04(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  if (a2 && (v20 = a2, v21 = [v20 definition], v22 = objc_msgSend(v21, sel_clientIdentity), v21, LODWORD(v21) = objc_msgSend(v22, sel_isLocal), v22, v20, !v21))
  {
    __break(1u);
  }

  else
  {
    v23 = type metadata accessor for _DBFocusAssertion();
    v24 = objc_allocWithZone(v23);
    swift_unknownObjectWeakInit();
    v25 = a6;
    v26 = OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process;
    *&v24[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process] = 0;
    v27 = &v24[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__name];
    *v27 = a4;
    *(v27 + 1) = a5;
    *&v24[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__priority] = a3;
    v28 = &v24[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target];
    *v28 = a1;
    *(v28 + 1) = a2;
    v28[16] = 0;
    v29 = objc_opt_self();
    v30 = a2;

    v31 = a1;
    v32 = [v29 currentProcess];
    v33 = *&v24[v26];
    *&v24[v26] = v32;

    v35.receiver = v24;
    v35.super_class = v23;
    v34 = objc_msgSendSuper2(&v35, sel_init);
    swift_unknownObjectWeakAssign();
    sub_2481559B4(v34, v25, a7, a8, a9, a10);
  }
}

id sub_2482961C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_248383930();
  v6 = [v2 deferFocusToScene:a1 priority:a2 reason:v5 heading:0 focusedFrame:{0.0, 0.0, 0.0, 0.0}];

  return v6;
}

id sub_248296244(uint64_t a1)
{
  v3 = sub_248383930();
  v4 = [v1 suspendFocusWithPriority:a1 reason:v3 heading:0 focusedFrame:{0.0, 0.0, 0.0, 0.0}];

  return v4;
}

char *sub_248296308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = type metadata accessor for _DBFocusAssertion();
  v17 = objc_allocWithZone(v16);
  swift_unknownObjectWeakInit();
  *&v17[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process] = 0;
  v18 = &v17[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__name];
  *v18 = a2;
  *(v18 + 1) = a3;
  *&v17[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__priority] = a1;
  v19 = &v17[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 2;
  v22.receiver = v17;
  v22.super_class = v16;

  v20 = objc_msgSendSuper2(&v22, sel_init);
  swift_unknownObjectWeakAssign();
  sub_2481559B4(v20, a4, a5, a6, a7, a8);
  return v20;
}

id sub_2482964E8()
{
  type metadata accessor for _DBFocusAssertion();
  v1 = sub_248383B00();
  [v0 set:v1 assertions:?];

  [v0 set:0 lastAssertion:?];
  v2 = [v0 _focusDeferral];
  if (v2)
  {
    [v2 invalidate];
    swift_unknownObjectRelease();
  }

  return [v0 set:1 invalidated:?];
}

id DBFocusController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_248296818()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _DBFocusAssertion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2482968AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = sub_248383930();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 descriptionBuilderWithMultilinePrefix_];

  if (v5)
  {
    v6 = [v5 build];

    if (v6)
    {
      sub_248383960();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_248296B88(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_248382A90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24827C6F0();
  (*(v7 + 16))(v9, v10, v6);
  v11 = a2;
  v12 = sub_248382A80();
  v13 = sub_248383DC0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 134218242;
    *(v14 + 4) = a1;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_248146000, v12, v13, "[DBFocusController] Received request to perform feedback of type %lu for touchpad %@", v14, 0x16u);
    sub_24827B684(v15);
    MEMORY[0x24C1CD5F0](v15, -1, -1);
    MEMORY[0x24C1CD5F0](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v17 = [v3 _inputDeviceManager];
  v18 = [v17 touchpadWithSenderID_];

  if (v18)
  {
    [v18 performFeedbackOfType_];
  }
}

void type metadata accessor for DBFocusPriority()
{
  if (!qword_27EE915C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE915C8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9DashBoard17_DBFocusAssertion33_21D9A798E2D51C24F8F346867CF839AFLLC6TargetO(uint64_t a1)
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

uint64_t sub_248296E80(uint64_t a1, unsigned int a2)
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

uint64_t sub_248296EC8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_248296F0C(uint64_t result, unsigned int a2)
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

void sub_248296F34(void *a1)
{
  v2 = [a1 clientHandle];
  v3 = [v2 processHandle];

  v4 = *&v1[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process];
  *&v1[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process] = v3;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (([Strong _invalidated] & 1) == 0)
    {
      sub_248383DC0();
      v6 = *sub_24814FB80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_24839C7F0;
      *(v7 + 56) = type metadata accessor for _DBFocusAssertion();
      *(v7 + 64) = sub_24814FBD0(&qword_27EE915D8, v8, type metadata accessor for _DBFocusAssertion);
      *(v7 + 32) = v1;
      v9 = v6;
      v10 = v1;
      sub_248382A40();

      sub_248150140(0, 0.0, 0.0, 0.0, 0.0);
    }
  }
}

unint64_t sub_2482970D8()
{
  result = qword_27EE915E0;
  if (!qword_27EE915E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE915E0);
  }

  return result;
}

uint64_t variable initialization expression of DBInstrumentClusterSignpostCoordinator.workQueue()
{
  v7 = sub_248383E40();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_248383E20();
  MEMORY[0x28223BE20](v3);
  v4 = sub_2483837E0();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_248297394();
  sub_2483837C0();
  v8 = MEMORY[0x277D84F90];
  sub_24814BF08(&unk_27EE92360, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93790);
  sub_24822D648(&qword_27EE92370, &unk_27EE93790);
  sub_2483842D0();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_248383E70();
}

unint64_t sub_248297394()
{
  result = qword_27EE90280;
  if (!qword_27EE90280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE90280);
  }

  return result;
}

uint64_t DBInstrumentClusterSignpostCoordinator.trackData(identifier:source:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2483837A0();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2483837E0();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v48 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_248381DC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v47 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v41[-v14];
  v16 = sub_248383D90();
  v17 = *sub_24827BC28();
  v45 = *(v11 + 16);
  v45(v15, a1, v10);
  if (os_log_type_enabled(v17, v16))
  {
    v43 = v17;
    v18 = swift_slowAlloc();
    v46 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v44 = a1;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136315138;
    v22 = sub_248381DB0();
    v42 = v16;
    v23 = v3;
    v24 = v22;
    v26 = v25;
    (*(v11 + 8))(v15, v10);
    v27 = v24;
    v3 = v23;
    v28 = sub_24814A378(v27, v26, aBlock);

    *(v19 + 4) = v28;
    v29 = v43;
    _os_log_impl(&dword_248146000, v43, v42, "track %s requested", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v30 = v21;
    a1 = v44;
    MEMORY[0x24C1CD5F0](v30, -1, -1);
    v31 = v19;
    a2 = v46;
    MEMORY[0x24C1CD5F0](v31, -1, -1);
  }

  else
  {
    (*(v11 + 8))(v15, v10);
  }

  v46 = *(v3 + 24);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v47;
  v45(v47, a1, v10);
  v34 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  (*(v11 + 32))(v35 + v34, v33, v10);
  *(v35 + ((v12 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_24829B79C;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_9;
  v36 = _Block_copy(aBlock);

  v37 = v48;
  sub_2483837C0();
  v54 = MEMORY[0x277D84F90];
  sub_24814BF08(&qword_27EE91EB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
  sub_24822D648(&qword_27EE91EC0, &unk_27EE90290);
  v38 = v51;
  v39 = v53;
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v37, v38, v36);
  _Block_release(v36);
  (*(v52 + 8))(v38, v39);
  (*(v49 + 8))(v37, v50);
}

uint64_t sub_248297974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91670);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-v6];
  v8 = sub_248381DC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v32[-v12];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v39 = v5;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v15 + 40);
    *(v15 + 40) = 0x8000000000000000;
    sub_248299C4C(0, a2, isUniquelyReferenced_nonNull_native);
    *(v15 + 40) = v42;
    swift_endAccess();
    v17 = sub_248383D90();
    v18 = *sub_24827BC28();
    v37 = *(v9 + 16);
    v38 = a2;
    v37(v13);
    if (os_log_type_enabled(v18, v17))
    {
      v34 = v18;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v4;
      v21 = v20;
      v43[0] = v20;
      *v19 = 136315138;
      v33 = v17;
      v22 = sub_248381DB0();
      v35 = v7;
      v24 = v23;
      (*(v9 + 8))(v13, v8);
      v25 = sub_24814A378(v22, v24, v43);
      v7 = v35;

      *(v19 + 4) = v25;
      v26 = v34;
      _os_log_impl(&dword_248146000, v34, v33, "track %s tracking", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v27 = v21;
      v4 = v36;
      MEMORY[0x24C1CD5F0](v27, -1, -1);
      MEMORY[0x24C1CD5F0](v19, -1, -1);
    }

    else
    {
      (*(v9 + 8))(v13, v8);
    }

    sub_248381C90();
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v40;
    (v37)(v40, v38, v8);
    v30 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    (*(v9 + 32))(v31 + v30, v29, v8);
    sub_24822D648(&qword_27EE91678, &qword_27EE91670);
    sub_248383000();

    (*(v39 + 8))(v7, v4);
    swift_beginAccess();
    sub_248382DB0();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_248297DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a3;
  v3 = sub_2483837A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2483837E0();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248381DC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 24);
    v23 = v7;
    v22 = v15;

    v16 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_248232C78(v24, v29, &qword_27EE91680);
    (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v10);
    v17 = (*(v11 + 80) + 64) & ~*(v11 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v19 = v29[1];
    *(v18 + 24) = v29[0];
    *(v18 + 40) = v19;
    *(v18 + 56) = v30;
    (*(v11 + 32))(v18 + v17, v13, v10);
    aBlock[4] = sub_24829B980;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24814C01C;
    aBlock[3] = &block_descriptor_33;
    v20 = _Block_copy(aBlock);

    sub_2483837C0();
    v27 = MEMORY[0x277D84F90];
    sub_24814BF08(&qword_27EE91EB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
    sub_24822D648(&qword_27EE91EC0, &unk_27EE90290);
    sub_2483842D0();
    v21 = v22;
    MEMORY[0x24C1CB440](0, v9, v6, v20);
    _Block_release(v20);

    (*(v4 + 8))(v6, v3);
    (*(v26 + 8))(v9, v23);
  }

  return result;
}

uint64_t sub_248298260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_248381DC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (*(a2 + 24))
    {
      swift_beginAccess();
      v11 = *(v10 + 40);
      if (*(v11 + 16))
      {

        v12 = sub_248299634(a3);
        if (v13)
        {
          v14 = *(*(v11 + 56) + v12);

          if ((v14 & 1) == 0)
          {
            v15 = sub_248383D90();
            v16 = *sub_24827BC28();
            (*(v6 + 16))(v8, a3, v5);
            if (os_log_type_enabled(v16, v15))
            {
              v26 = v16;
              v17 = swift_slowAlloc();
              v18 = swift_slowAlloc();
              v28[0] = v18;
              *v17 = 136315138;
              v19 = sub_248381DB0();
              v21 = v20;
              (*(v6 + 8))(v8, v5);
              v22 = sub_24814A378(v19, v21, v28);

              *(v17 + 4) = v22;
              v23 = v26;
              _os_log_impl(&dword_248146000, v26, v15, "track %s valueSeen", v17, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v18);
              MEMORY[0x24C1CD5F0](v18, -1, -1);
              MEMORY[0x24C1CD5F0](v17, -1, -1);
            }

            else
            {
              (*(v6 + 8))(v8, v5);
            }

            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v27 = *(v10 + 40);
            *(v10 + 40) = 0x8000000000000000;
            sub_248299C4C(1, a3, isUniquelyReferenced_nonNull_native);
            *(v10 + 40) = v27;
            swift_endAccess();
            sub_24829873C();
          }
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_248298540()
{
  v1 = sub_248383D90();
  v2 = *sub_24827BC28();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v2;

    v4 = swift_slowAlloc();
    *v4 = 67109120;
    swift_beginAccess();
    *(v4 + 4) = *(v0 + 48);

    _os_log_impl(&dword_248146000, v3, v1, "didAppear=%{BOOL}d", v4, 8u);
    MEMORY[0x24C1CD5F0](v4, -1, -1);
  }

  sub_24829873C();
  result = swift_beginAccess();
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 32) = 0;
    *(v0 + 34) = 0;
  }

  return result;
}

uint64_t DBInstrumentClusterSignpostCoordinator.didAppear.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return sub_248298540();
}

uint64_t (*DBInstrumentClusterSignpostCoordinator.didAppear.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_248298708;
}

uint64_t sub_248298708(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_248298540();
  }

  return result;
}

uint64_t sub_24829873C()
{
  v0 = sub_2483837A0();
  v13 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2483837E0();
  v11 = *(v3 - 8);
  v12 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248383D90();
  v6 = *sub_24827BC28();
  v7 = MEMORY[0x277D84F90];
  sub_248382A40();

  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24829B8B8;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_22;
  v9 = _Block_copy(aBlock);

  sub_2483837C0();
  v14 = v7;
  sub_24814BF08(&qword_27EE91EB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
  sub_24822D648(&qword_27EE91EC0, &unk_27EE90290);
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v5, v2, v9);
  _Block_release(v9);
  (*(v13 + 8))(v2, v0);
  (*(v11 + 8))(v5, v12);
}

void sub_248298A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91658);
  MEMORY[0x28223BE20](v1);
  v3 = &v63[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v63[-v5];
  MEMORY[0x28223BE20](v7);
  v9 = &v63[-v8];
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v63[-v12];
  if ((*(v0 + 32) & 1) == 0 && ((*(*v0 + 264))(v11) & 1) != 0 && (swift_beginAccess(), *(*(v0 + 40) + 16)))
  {

    sub_24829A114(v14);
    v16 = v15;
    v68 = 0;

    if (!*(v16 + 16))
    {

      sub_248383D90();
      v56 = *sub_24827BC28();
      sub_248382A40();

      *(v0 + 32) = 1;
      CAFSignpostEmit_InstantOn();
      return;
    }

    v77 = v13;
    v17 = sub_248383D90();
    v18 = *sub_24827BC28();
    if (!os_log_type_enabled(v18, v17))
    {

      return;
    }

    v76 = v9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v82[0] = v66;
    v67 = v20;
    *v20 = 136315138;
    v21 = *(v16 + 16);
    if (v21)
    {
      v64 = v17;
      v74 = v6;
      v65 = v19;
      v75 = v3;
      v81 = MEMORY[0x277D84F90];
      sub_24822C8F0(0, v21, 0);
      v22 = v81;
      v23 = v16 + 64;
      v24 = sub_2483842E0();
      v25 = 0;
      v80 = *(v16 + 36);
      v69 = v16 + 72;
      v70 = v21;
      v26 = v76;
      v71 = v1;
      v72 = v16;
      v73 = v16 + 64;
      while ((v24 & 0x8000000000000000) == 0 && v24 < 1 << *(v16 + 32))
      {
        v32 = v24 >> 6;
        if ((*(v23 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
        {
          goto LABEL_35;
        }

        if (v80 != *(v16 + 36))
        {
          goto LABEL_36;
        }

        v78 = v25;
        v79 = 1 << v24;
        v33 = *(v16 + 48);
        v34 = sub_248381DC0();
        v35 = *(v34 - 8);
        v36 = v22;
        v37 = v77;
        (*(v35 + 16))(v77, v33 + *(v35 + 72) * v24, v34);
        LOBYTE(v33) = *(*(v16 + 56) + v24);
        v38 = *(v35 + 32);
        v38(v26, v37, v34);
        *(v26 + *(v1 + 48)) = v33;
        v39 = v74;
        sub_248232C78(v26, v74, &qword_27EE91658);
        v40 = *(v1 + 48);
        v41 = *(v39 + v40);
        v42 = v75;
        v43 = v39;
        v22 = v36;
        v38(v75, v43, v34);
        *(v42 + v40) = v41;
        v26 = v76;
        v21 = sub_248381DB0();
        v45 = v44;
        sub_24829B850(v42);
        sub_24829B850(v26);
        v81 = v36;
        v47 = *(v36 + 2);
        v46 = *(v36 + 3);
        if (v47 >= v46 >> 1)
        {
          sub_24822C8F0((v46 > 1), v47 + 1, 1);
          v22 = v81;
        }

        *(v22 + 2) = v47 + 1;
        v48 = &v22[16 * v47];
        *(v48 + 4) = v21;
        *(v48 + 5) = v45;
        v16 = v72;
        v23 = v73;
        v31 = 1 << *(v72 + 32);
        if (v24 >= v31)
        {
          goto LABEL_37;
        }

        v49 = *(v73 + 8 * v32);
        if ((v49 & v79) == 0)
        {
          goto LABEL_38;
        }

        if (v80 != *(v72 + 36))
        {
          goto LABEL_39;
        }

        v50 = v49 & (-2 << (v24 & 0x3F));
        if (v50)
        {
          v31 = __clz(__rbit64(v50)) | v24 & 0x7FFFFFFFFFFFFFC0;
          v1 = v71;
        }

        else
        {
          v51 = v32 << 6;
          v52 = v32 + 1;
          v53 = (v69 + 8 * v32);
          v1 = v71;
          while (v52 < (v31 + 63) >> 6)
          {
            v55 = *v53++;
            v54 = v55;
            v51 += 64;
            ++v52;
            if (v55)
            {
              sub_248235F68(v24, v80, 0);
              v31 = __clz(__rbit64(v54)) + v51;
              goto LABEL_12;
            }
          }

          sub_248235F68(v24, v80, 0);
        }

LABEL_12:
        v25 = v78 + 1;
        v24 = v31;
        v21 = v70;
        if ((v78 + 1) == v70)
        {

          v19 = v65;
          LOBYTE(v17) = v64;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
LABEL_32:
      v81 = v22;

      v21 = v68;
      sub_24829AAC8(&v81);
      if (!v21)
      {

        v57 = MEMORY[0x24C1CB100](v81, MEMORY[0x277D837D0]);
        v59 = v58;

        v60 = sub_24814A378(v57, v59, v82);

        v61 = v67;
        *(v67 + 1) = v60;
        _os_log_impl(&dword_248146000, v19, v17, "InstantOn: notSeen %s", v61, 0xCu);
        v62 = v66;
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x24C1CD5F0](v62, -1, -1);
        MEMORY[0x24C1CD5F0](v61, -1, -1);

        return;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = sub_248383D90();
    v28 = *sub_24827BC28();
    if (os_log_type_enabled(v28, v27))
    {

      v29 = v28;
      v30 = swift_slowAlloc();
      *v30 = 67109632;
      *(v30 + 4) = *(v0 + 32);
      *(v30 + 8) = 1024;
      *(v30 + 10) = (*(*v0 + 264))() & 1;
      *(v30 + 14) = 2048;
      swift_beginAccess();
      *(v30 + 16) = *(*(v0 + 40) + 16);

      _os_log_impl(&dword_248146000, v29, v27, "InstantOn: emitted=%{BOOL}d didAppear=%{BOOL}d tracking.count=%ld", v30, 0x18u);
      MEMORY[0x24C1CD5F0](v30, -1, -1);
    }
  }
}

uint64_t DBInstrumentClusterSignpostCoordinator.deinit()
{

  return v0;
}

uint64_t DBInstrumentClusterSignpostCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_248299268()
{
  v0 = swift_allocObject();
  sub_2482992A0();
  return v0;
}

uint64_t sub_2482992A0()
{
  v9 = sub_248383E40();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248383E20();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2483837E0();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + 16) = MEMORY[0x277D84FA0];
  v6 = sub_248297394();
  v8[0] = " assertion (%d/%d) %{public}@";
  v8[1] = v6;
  sub_2483837C0();
  v10 = MEMORY[0x277D84F90];
  sub_24814BF08(&unk_27EE92360, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93790);
  sub_24822D648(&qword_27EE92370, &unk_27EE93790);
  sub_2483842D0();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9);
  *(v0 + 24) = sub_248383E70();
  *(v0 + 32) = 0;
  *(v0 + 34) = 0;
  *(v0 + 40) = sub_24829B5B4(MEMORY[0x277D84F90]);
  *(v0 + 48) = 0;
  return v0;
}

char *sub_248299530(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE91CB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_248299634(uint64_t a1)
{
  sub_248381DC0();
  sub_24814BF08(&qword_27EE91668, MEMORY[0x277CF8D08]);
  v2 = sub_2483838D0();

  return sub_2482996CC(a1, v2);
}

unint64_t sub_2482996CC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_248381DC0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      sub_24814BF08(&qword_27EE91688, MEMORY[0x277CF8D08]);
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

uint64_t sub_24829988C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_248381DC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91660);
  v40 = a2;
  result = sub_2483845D0();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_24814BF08(&qword_27EE91668, MEMORY[0x277CF8D08]);
      result = sub_2483838D0();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_248299C4C(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_248381DC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_248299634(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_248299EA4();
    goto LABEL_7;
  }

  sub_24829988C(result, a3 & 1);
  result = sub_248299634(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_2483846E0();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_248299DEC(v14, v11, a1 & 1, v20);
}

uint64_t sub_248299DEC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_248381DC0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

char *sub_248299EA4()
{
  v1 = v0;
  v31 = sub_248381DC0();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91660);
  v3 = *v0;
  v4 = sub_2483845C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

void sub_24829A114(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_24829A6B8(v7, v4, v2);
      MEMORY[0x24C1CD5F0](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_24829A274(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_24829A274(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a1;
  v4 = sub_248381DC0();
  MEMORY[0x28223BE20](v4);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v12 = MEMORY[0x28223BE20](v9);
  v63 = &v41 - v13;
  v46 = 0;
  v14 = 0;
  v15 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 64);
  v48 = (v16 + 63) >> 6;
  v53 = (v11 + 88);
  v19 = *MEMORY[0x277CF8CD0];
  v51 = *MEMORY[0x277CF8CD8];
  v52 = v19;
  v50 = *MEMORY[0x277CF8CE0];
  v56 = *MEMORY[0x277CF8D00];
  v55 = *MEMORY[0x277CF8CE8];
  v60 = v11;
  v61 = (v11 + 8);
  v45 = *MEMORY[0x277CF8CF8];
  v44 = *MEMORY[0x277CF8CF0];
  v58 = v11 + 16;
  v59 = v10;
  v54 = a3;
  v47 = v8;
  while (1)
  {
    v21 = v63;
    if (!v18)
    {
      break;
    }

    v22 = __clz(__rbit64(v18));
    v62 = (v18 - 1) & v18;
LABEL_13:
    v25 = v22 | (v14 << 6);
    v26 = v59;
    v27 = *(v60 + 16);
    v27(v63, *(a3 + 48) + *(v60 + 72) * v25, v59, v12);
    v28 = *(a3 + 56);
    v57 = v25;
    if (*(v28 + v25) == 1)
    {
      v20 = *v61;
      goto LABEL_5;
    }

    (v27)(v8, v21, v26);
    v29 = *v53;
    v30 = (*v53)(v8, v26);
    if (v30 == v52 || v30 == v51 || v30 == v50 || v30 == v56 || v30 == v55)
    {
      v35 = v49;
      v36 = v21;
      v37 = v50;
      (v27)(v49, v36, v26);
      v38 = v29(v35, v26);
      v39 = *v61;
      if (v38 == v37 || v38 == v56 || v38 == v45 || v38 == v55 || v38 == v44)
      {
        v39(v63, v26);
        *(v43 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
        v8 = v47;
        v40 = __OFADD__(v46++, 1);
        a3 = v54;
        v18 = v62;
        if (v40)
        {
          __break(1u);
LABEL_37:
          sub_24829A730(v43, v42, v46, a3);
          return;
        }
      }

      else
      {
        v39(v49, v26);
        v39(v63, v26);
        a3 = v54;
        v8 = v47;
        v18 = v62;
      }
    }

    else
    {
      v20 = *v61;
      (*v61)(v8, v26);
      a3 = v54;
LABEL_5:
      v18 = v62;
      v20(v63, v26);
    }
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v48)
    {
      goto LABEL_37;
    }

    v24 = *(v15 + 8 * v14);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v62 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_24829A6B8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_24829A274(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_24829A730(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = sub_248381DC0();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v36 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91660);
  result = sub_2483845F0();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = v45 + 16;
  v39 = result;
  v46 = v45 + 32;
  v16 = result + 64;
  v40 = a1;
  v37 = a4;
  v17 = v47;
  while (v14)
  {
    v18 = v9;
    v19 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v45;
    v44 = *(v45 + 72);
    v25 = v41;
    (*(v45 + 16))(v41, v23 + v44 * v22, v17);
    v43 = *(a4[7] + v22);
    v26 = *(v24 + 32);
    v9 = v18;
    v26(v18, v25, v17);
    v13 = v39;
    sub_24814BF08(&qword_27EE91668, MEMORY[0x277CF8D08]);
    result = sub_2483838D0();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      a1 = v40;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    a1 = v40;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = (v26)(*(v13 + 48) + v30 * v44, v9, v47);
    *(*(v13 + 56) + v30) = v43;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v9;
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
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

uint64_t sub_24829AAC8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24829B5A0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24829AB34(v5);
  *a1 = v2;
  return result;
}