uint64_t sub_21534E69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id iOSLinkAcceleratorViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_21534E740(void *a1)
{
  *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController] = 0;
  *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_kvoToken] = 0;
  v3 = OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_maxWidth;
  if (qword_2811997A0 != -1)
  {
    swift_once();
  }

  *&v1[v3] = qword_28119B178;
  *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_minWidthCompactMultiplier] = 0x3FE8000000000000;
  v4 = _UISolariumEnabled();
  v5 = 12.0;
  if (v4)
  {
    v5 = 30.0;
  }

  *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_cornerRadius] = v5;
  *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_minimumSpacingToEdge] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_preferredWidthForNonCompactOrLandscape] = qword_28119B1A8;
  *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_editorXOffset] = 0xC030000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_editorYOffset] = 0x4010000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_editorYPadding] = 0x4040000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_verticalPadding] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_horizontalPadding] = 0x4024000000000000;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for iOSLinkAcceleratorViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t LinkEditorViewController.__allocating_init(editorController:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LinkEditorView();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = objc_allocWithZone(v2);
  *&v10[qword_27CA5AD58] = 0;
  *&v10[qword_27CA5AD60] = 0;
  *&v10[qword_27CA5AD68] = a1;
  v11 = &a1[OBJC_IVAR___LinkEditorController__viewModel];
  swift_beginAccess();
  v12 = *(v11 + 1);
  *&v10[qword_27CA5AD70] = v12;
  swift_retain_n();
  v13 = a1;
  LinkEditorView.init(viewModel:)(v12, v9);
  sub_21534EB8C(v9, v7);
  v14 = sub_2154A02AC();

  sub_21534EBF0(v9);
  return v14;
}

uint64_t LinkEditorViewController.init(editorController:)(char *a1)
{
  v3 = type metadata accessor for LinkEditorView();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  *(v1 + qword_27CA5AD58) = 0;
  *(v1 + qword_27CA5AD60) = 0;
  *(v1 + qword_27CA5AD68) = a1;
  v9 = &a1[OBJC_IVAR___LinkEditorController__viewModel];
  swift_beginAccess();
  v10 = *(v9 + 1);
  *(v1 + qword_27CA5AD70) = v10;
  swift_retain_n();
  v11 = a1;
  LinkEditorView.init(viewModel:)(v10, v8);
  sub_21534EB8C(v8, v6);
  v12 = sub_2154A02AC();

  sub_21534EBF0(v8);
  return v12;
}

uint64_t sub_21534EB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkEditorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21534EBF0(uint64_t a1)
{
  v2 = type metadata accessor for LinkEditorView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21534EC4C(uint64_t a1)
{
  *(a1 + qword_27CA5AD58) = 0;
  *(a1 + qword_27CA5AD60) = 0;
  sub_2154A2EDC();
  __break(1u);
}

uint64_t type metadata accessor for LinkEditorViewController()
{
  result = qword_27CA5AD78;
  if (!qword_27CA5AD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21534ED0C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for LinkEditorViewController();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_21534ED70();
  sub_21534EEA8();
}

void sub_21534ED70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A348);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2154BDB50;
  v2 = sub_21549F1AC();
  v3 = MEMORY[0x277D74C50];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  MEMORY[0x216068F00](v1, sel_horizontalSizeClassDidChange);
  swift_unknownObjectRelease();

  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 addObserver:v0 selector:sel_handleKeyboardDidHide name:*MEMORY[0x277D76BA0] object:0];

  v6 = [v4 defaultCenter];
  [v6 addObserver:v0 selector:sel_handleKeyboardWillShow name:*MEMORY[0x277D76C60] object:0];
}

void sub_21534EEA8()
{
  v1 = v0;
  v2 = [v0 navigationItem];

  sub_21549F52C();

  v3 = objc_opt_self();
  v4 = sub_2154A1D2C();
  v5 = [v3 localizedFrameworkStringForKey:v4 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  v6 = sub_2154A1D2C();

  v7 = sub_2154A1D2C();
  [v2 ic:v6 setTitle:v7 andSubtitle:?];

  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode_];

  v9 = [v1 navigationItem];
  v10 = sub_21534F388();
  [v9 setLeftBarButtonItem_];

  v11 = [v1 navigationItem];
  v12 = sub_21534F3A0();
  [v11 setRightBarButtonItem_];
}

void sub_21534F0B8(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for LinkEditorViewController();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, sel_viewWillDisappear_, a3);
  v5 = *(*&v4[qword_27CA5AD68] + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v5)
  {
    v6 = v5;
    LinkAcceleratorController.hideAccelerator()();
  }
}

void sub_21534F14C(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for LinkEditorViewController();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a3);
  v5 = *&v4[qword_27CA5AD68];
  v6 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  if (*(v5 + v6))
  {
    [swift_unknownObjectRetain() linkEditorDidDismiss];
    swift_unknownObjectRelease();
  }
}

void sub_21534F200()
{
  v1 = v0;
  v2 = type metadata accessor for LinkEditorView();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LinkEditorViewController();
  v12.receiver = v0;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
  v6 = qword_27CA5AD68;
  v7 = *(*&v0[qword_27CA5AD68] + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v7)
  {
    v8 = v7;
    v9 = LinkAcceleratorController.shouldShowLinkAccelerator.getter();

    if (v9)
    {
      sub_2154A02CC();
      LinkEditorView.updateAcceleratorFrame()();
      sub_21534EBF0(v4);
      if (*(*&v1[v6] + OBJC_IVAR___LinkEditorController_linkAcceleratorController))
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong acceleratorOriginNeedsUpdate];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_21534F340(void *a1)
{
  v1 = a1;
  sub_21534F200();
}

id sub_21534F3B8(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:a3 target:v3 action:*a2];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

void *sub_21534F43C()
{
  v1 = type metadata accessor for LinkEditorView();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21549F55C();

  sub_2154A02CC();
  LinkEditorView.updateAcceleratorFrame()();
  result = sub_21534EBF0(v3);
  if (*(*(v0 + qword_27CA5AD68) + OBJC_IVAR___LinkEditorController_linkAcceleratorController))
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result acceleratorOriginNeedsUpdate];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21534F554(void *a1)
{
  v1 = a1;
  sub_21534F43C();
}

uint64_t sub_21534F59C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-v2];
  v4 = type metadata accessor for LinkEditorView();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];

  sub_2154A02CC();
  v8 = &v7[*(v5 + 36)];
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v8) = v8[16];
  v17[8] = v9;
  v18 = v10;
  v19 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90);
  sub_21549F9AC();
  sub_21534EBF0(v7);
  sub_21549F55C();

  v11 = sub_2154A202C();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  sub_2154A1FFC();
  v12 = v0;
  v13 = sub_2154A1FEC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  sub_2152F4D50(0, 0, v3, &unk_2154BEF50, v14);
}

void sub_21534F790(void *a1)
{
  v1 = a1;
  sub_21534F59C();
}

id sub_21534F7D8()
{
  sub_215350B30();
  if (v0)
  {
    sub_2151A6C9C(0, &qword_27CA5AD88);
    v1 = sub_2154A1F3C();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_21534F850(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_215350CC4();
}

void sub_21534F8B4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_215350E48();
}

void sub_21534F914()
{
  v1 = *(*(v0 + qword_27CA5AD68) + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR___ICLinkAcceleratorController_viewController);
    type metadata accessor for iOSLinkAcceleratorViewController();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_21534CD3C();
    }
  }
}

void sub_21534F9B4(char *a1)
{
  v1 = *(*&a1[qword_27CA5AD68] + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v1)
  {
    v3 = *(v1 + OBJC_IVAR___ICLinkAcceleratorController_viewController);
    type metadata accessor for iOSLinkAcceleratorViewController();
    if (swift_dynamicCastClass())
    {
      v5 = a1;
      v4 = v3;
      sub_21534CD3C();
    }
  }
}

void sub_21534FA74()
{
  v1 = *(*(v0 + qword_27CA5AD68) + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v1)
  {
    v2 = v1;
    LinkAcceleratorController.hideAccelerator()();
  }
}

void sub_21534FAEC(char *a1)
{
  v1 = *(*&a1[qword_27CA5AD68] + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v1)
  {
    v3 = a1;
    v2 = v1;
    LinkAcceleratorController.hideAccelerator()();
  }
}

void sub_21534FB6C()
{
  v1 = *(v0 + qword_27CA5AD68);
  v2 = *&v1[OBJC_IVAR___LinkEditorController_linkAcceleratorController];
  if (v2 && (v3 = OBJC_IVAR___ICLinkAcceleratorController_isShowing, swift_beginAccess(), *(v2 + v3) == 1))
  {
    v4 = v1;
    v5 = v2;
    LinkAcceleratorController.hideAccelerator()();
  }

  else
  {
    v6 = *&v1[OBJC_IVAR___LinkEditorController_viewController];
    if (v6)
    {
      [v6 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_21534FC2C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  sub_21534FB6C();

  return sub_21532C870(v7);
}

uint64_t sub_21534FC98(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = *&a1[qword_27CA5AD68];
  sub_215368EF0();

  return sub_21532C870(v8);
}

uint64_t sub_21534FD20()
{
  v0 = type metadata accessor for LinkEditorView();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2154A02CC();
  v4 = &v3[*(v1 + 52)];
  v6 = *v4;
  v5 = *(v4 + 1);
  v9[2] = v6;
  v9[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00);
  sub_2154A0DEC();
  v7 = v9[1];
  sub_21534EBF0(v3);
  return v7;
}

void sub_21534FDDC(char *a1)
{
  v1 = *(*&a1[qword_27CA5AD68] + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v1)
  {
    v3 = a1;
    v2 = v1;
    LinkAcceleratorController.hideAccelerator()();
  }
}

uint64_t sub_21534FE5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_2154A202C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_2154A1FFC();
  v5 = v0;
  v6 = sub_2154A1FEC();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_2152F4D50(0, 0, v3, &unk_2154BEEF8, v7);
}

uint64_t sub_21534FF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2154A10EC();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_2154A110C();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_2154A1FFC();
  v4[16] = sub_2154A1FEC();
  v8 = sub_2154A1FCC();
  v4[17] = v8;
  v4[18] = v7;

  return MEMORY[0x2822009F8](sub_2153500D0, v8, v7);
}

uint64_t sub_2153500D0()
{
  v1 = *(*(v0[9] + qword_27CA5AD68) + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  v0[19] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_215350380;

    return LinkAcceleratorController.presentLinkAcceleratorIfNecessary()();
  }

  else
  {

    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[12];
    v15 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[9];
    sub_2151A6C9C(0, &unk_2811995C0);
    v14 = sub_2154A245C();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v0[6] = sub_21535144C;
    v0[7] = v10;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2151BD7E4;
    v0[5] = &block_descriptor_5;
    v11 = _Block_copy(v0 + 2);
    v12 = v9;
    sub_2154A10FC();
    v0[8] = MEMORY[0x277D84F90];
    sub_2151B5F20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
    sub_2151B5F78();
    sub_2154A2BEC();
    MEMORY[0x216069000](0, v4, v6, v11);
    _Block_release(v11);

    (*(v8 + 8))(v6, v7);
    (*(v5 + 8))(v4, v15);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_215350380()
{
  v1 = *v0;
  v2 = *(*v0 + 152);

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_2153504C0, v4, v3);
}

uint64_t sub_2153504C0()
{

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  sub_2151A6C9C(0, &unk_2811995C0);
  v12 = sub_2154A245C();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[6] = sub_21535144C;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2151BD7E4;
  v0[5] = &block_descriptor_5;
  v8 = _Block_copy(v0 + 2);
  v9 = v6;
  sub_2154A10FC();
  v0[8] = MEMORY[0x277D84F90];
  sub_2151B5F20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151B5F78();
  sub_2154A2BEC();
  MEMORY[0x216069000](0, v1, v3, v8);
  _Block_release(v8);

  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v13);

  v10 = v0[1];

  return v10();
}

id sub_2153506C0(uint64_t a1)
{
  v2 = type metadata accessor for LinkEditorView();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2154A02CC();
  LinkEditorView.updateAcceleratorFrame()();
  sub_21534EBF0(v4);
  return [*(a1 + qword_27CA5AD68) acceleratorOriginNeedsUpdate];
}

void sub_215350764(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_2154A202C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_2154A1FFC();
  v6 = a1;
  v7 = sub_2154A1FEC();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_2152F4D50(0, 0, v4, &unk_2154BEF48, v8);
}

void *sub_215350894()
{
  v1 = type metadata accessor for LinkEditorView();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2154A02CC();
  LinkEditorView.updateAcceleratorFrame()();
  result = sub_21534EBF0(v3);
  if (*(*(v0 + qword_27CA5AD68) + OBJC_IVAR___LinkEditorController_linkAcceleratorController))
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result acceleratorOriginNeedsUpdate];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_215350984(void *a1)
{
  v1 = a1;
  sub_215350894();
}

void sub_215350A2C()
{

  v1 = *(v0 + qword_27CA5AD60);
}

id LinkEditorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkEditorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_215350AC4(uint64_t a1)
{

  v2 = *(a1 + qword_27CA5AD60);
}

double sub_215350B30()
{
  v0 = *MEMORY[0x277D76AC0];
  v1 = objc_opt_self();
  v2 = [v1 keyCommandWithInput:v0 modifierFlags:0 action:sel_handleArrowDown_];
  v3 = [v1 keyCommandWithInput:*MEMORY[0x277D76B68] modifierFlags:0 action:sel_handleArrowUp_];
  v4 = [v1 keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:sel_handleEscape_];
  v5 = sub_2154A1D2C();
  v6 = [v1 keyCommandWithInput:v5 modifierFlags:0 action:sel_handleReturnKey_];

  [v2 setWantsPriorityOverSystemBehavior_];
  [v3 setWantsPriorityOverSystemBehavior_];
  [v4 setWantsPriorityOverSystemBehavior_];
  [v6 setWantsPriorityOverSystemBehavior_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v7 = swift_allocObject();
  *&result = 4;
  *(v7 + 16) = xmmword_2154BDB30;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v6;
  return result;
}

void sub_215350CC4()
{
  v1 = qword_27CA5AD68;
  v2 = *(*&v0[qword_27CA5AD68] + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v2)
  {
    v3 = v0;
    v4 = MEMORY[0x277D85000];
    v5 = *((*MEMORY[0x277D85000] & **&v2[OBJC_IVAR___ICLinkAcceleratorController_viewController]) + 0x110);
    v6 = v2;
    v7 = v5();

    if ((v7 & 1) == 0)
    {
      v8 = *(*&v3[v1] + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR___ICLinkAcceleratorController_viewController);
        v10 = *((*v4 & *v9) + 0x118);
        v11 = v9;
        v10();
      }

      v12 = [v3 view];
      if (v12)
      {
        v13 = v12;
        [v12 becomeFirstResponder];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_215350E48()
{
  v1 = qword_27CA5AD68;
  v2 = *(*&v0[qword_27CA5AD68] + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v2)
  {
    v3 = v0;
    v4 = MEMORY[0x277D85000];
    v5 = *((*MEMORY[0x277D85000] & **&v2[OBJC_IVAR___ICLinkAcceleratorController_viewController]) + 0x128);
    v6 = v2;
    v7 = v5();

    if ((v7 & 1) == 0)
    {
      v8 = *(*&v3[v1] + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR___ICLinkAcceleratorController_viewController);
        v10 = *((*v4 & *v9) + 0x118);
        v11 = v9;
        v10();
      }

      v12 = [v3 view];
      if (v12)
      {
        v13 = v12;
        [v12 becomeFirstResponder];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_215350FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_21534FF80(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_215351398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD278;

  return sub_21534FF80(a1, v4, v5, v6);
}

Swift::Void __swiftcall ICNoteEditorContextualBarButtonItem.ic_setMorphContainer(_:)(UIView_optional *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_view);
  sub_2151A6C9C(0, &qword_2811994D0);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6A0);
  if (swift_dynamicCast())
  {
    v5 = *(&v8 + 1);
    v6 = v9;
    __swift_project_boxed_opaque_existential_0Tm(&v7, *(&v8 + 1));
    (*(v6 + 8))(a1, v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_215327CF4(&v7);
  }
}

uint64_t sub_215351624()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2153271FC(v0);
    if (v2 != 3)
    {
      sub_21542B840(v2, 1);
      UIAccessibilityPostNotification(*MEMORY[0x277D76488], v0);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21535185C()
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v3 = Strong, v4 = [Strong accessibilityLabel], v3, !v4))
  {
    v8.receiver = v0;
    v8.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v8, sel_accessibilityLabel);
    if (!v5)
    {
      return 0;
    }

    v4 = v5;
  }

  v6 = sub_2154A1D6C();

  return v6;
}

uint64_t sub_21535195C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong accessibilityValue];

    if (v4)
    {
      v5 = sub_2154A1D6C();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v27 = v5;
    v28[0] = v7;
  }

  else
  {
    v27 = 0;
    v28[0] = 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = sub_215326FA8();
    v10 = v9;
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = 0;
  v28[1] = v8;
  v28[2] = v10;
  v12 = MEMORY[0x277D84F90];
LABEL_11:
  v13 = &v28[2 * v11];
  while (++v11 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_215317E44(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_215317E44((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ADE0);
  swift_arrayDestroy();
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9F0);
  sub_21535378C();
  v20 = sub_2154A1CBC();

  if (!sub_2154A1E0C())
  {

    v25.receiver = v1;
    v25.super_class = ObjectType;
    v21 = objc_msgSendSuper2(&v25, sel_accessibilityValue);
    if (v21)
    {
      v22 = v21;
      v20 = sub_2154A1D6C();
    }

    else
    {
      return 0;
    }
  }

  return v20;
}

id sub_215351BFC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_2154A1D2C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_215351C7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong accessibilityHint];

    if (v4)
    {
      v5 = sub_2154A1D6C();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v27 = v5;
    v28[0] = v7;
  }

  else
  {
    v27 = 0;
    v28[0] = 0;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v10 = *(v8 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_icaxAccessibilityHint);
    v9 = *(v8 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_icaxAccessibilityHint + 8);

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = 0;
  v28[1] = v10;
  v28[2] = v9;
  v12 = MEMORY[0x277D84F90];
LABEL_11:
  v13 = &v28[2 * v11];
  while (++v11 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_215317E44(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_215317E44((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ADE0);
  swift_arrayDestroy();
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9F0);
  sub_21535378C();
  v20 = sub_2154A1CBC();

  if (!sub_2154A1E0C())
  {

    v25.receiver = v1;
    v25.super_class = ObjectType;
    v21 = objc_msgSendSuper2(&v25, &selRef_attributionSidebarGestureIgnoredDistanceX + 5);
    if (v21)
    {
      v22 = v21;
      v20 = sub_2154A1D6C();
    }

    else
    {
      return 0;
    }
  }

  return v20;
}

void sub_215351F10(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_2154A1D6C();
    v8 = a1;
    a3 = sub_2154A1D2C();
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a4, a3);
}

void sub_2153520F4()
{
  sub_2151BD758(v0 + OBJC_IVAR____TtC11NotesEditor31ICNoteEditorContextualBarButton_accessibilityContextualBarButtonDelegate);

  JUMPOUT(0x21606B640);
}

uint64_t ICNoteEditorContextualBarButtonItem.selectionStateActive.getter()
{
  v1 = OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_selectionStateActive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ICNoteEditorContextualBarButtonItem.selectionStateActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_selectionStateActive;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_2153522C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 selectionStateActive];
  *a2 = result;
  return result;
}

char *sub_215352308(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2154A29AC();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2154A2AAC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  *&v2[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_observations] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_selectionStateActive] = 0;
  *&v2[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_accessibilityContextualBarButtonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_barButtonItem] = a1;
  v15 = a1;
  v16 = [v15 customView];
  if (!v16)
  {
    v36 = v9;
    v37 = ObjectType;
    sub_2154A2A7C();
    v17 = [v15 image];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 imageWithRenderingMode_];
    }

    v20 = v36;
    type metadata accessor for ICNoteEditorContextualBarButton();
    sub_2154A2A6C();
    (*(v38 + 104))(v7, *MEMORY[0x277D74FD8], v5);
    sub_2154A29BC();
    (*(v20 + 32))(v14, v12, v8);
    v21 = [v15 primaryAction];
    v22 = sub_2154A2ABC();
    swift_unknownObjectWeakAssign();
    if (_UISolariumEnabled())
    {
      v23 = v22;
      [v23 _setMonochromaticTreatment_];
      [v23 _setEnableMonochromaticTreatment_];
    }

    v16 = v22;
    v24 = [v16 window];
    ObjectType = v37;
    if (v24)
    {
      v25 = v24;
      v26 = [v24 tintColor];
      [v16 setTintColor_];

      v27 = [objc_opt_self() clearColor];
      [v16 setBackgroundColor_];
    }

    sub_2151A6C9C(0, &qword_2811995B8);
    sub_2154A249C();
    MEMORY[0x216069460]();

    swift_unknownObjectRelease();
  }

  *&v2[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_view] = v16;
  v39.receiver = v2;
  v39.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v39, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_view;
  v30 = *&v28[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_view];
  type metadata accessor for ICNoteEditorContextualBarButton();
  v31 = swift_dynamicCastClass();
  v32 = v28;
  if (v31)
  {
    v33 = v30;
    sub_2153527A0(v31);

    v30 = *&v28[v29];
  }

  [v32 addSubview_];
  [*&v28[v29] setClipsToBounds_];
  [*&v28[v29] ic_addAnchorsToFillSuperview];

  return v32;
}

void sub_2153527A0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *&v1[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_barButtonItem];
  if ([v5 action])
  {
    sub_2151A6C9C(0, &qword_281199480);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    v7 = v5;
    v8 = a1;
    v9 = sub_2154A295C();
    [v8 addAction:v9 forControlEvents:{64, 0, 0, 0, sub_215353850, v6}];
  }

  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v5;
  v11 = sub_21549E40C();

  v12 = OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_observations;
  swift_beginAccess();
  v13 = v11;
  MEMORY[0x216068AC0]();
  if (*((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2154A1F8C();
  }

  v31 = v13;
  sub_2154A1FAC();
  swift_endAccess();
  swift_getKeyPath();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v2;
  v16[5] = ObjectType;
  v17 = v10;
  v18 = v2;
  v19 = sub_21549E40C();

  swift_beginAccess();
  v20 = v19;
  MEMORY[0x216068AC0]();
  if (*((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2154A1F8C();
  }

  sub_2154A1FAC();
  swift_endAccess();
  swift_getKeyPath();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v18;
  v22[4] = ObjectType;
  v23 = v18;
  v24 = sub_21549E40C();

  swift_beginAccess();
  v25 = v24;
  MEMORY[0x216068AC0]();
  if (*((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2154A1F8C();
  }

  sub_2154A1FAC();
  swift_endAccess();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v17;
  v27 = sub_21549E40C();

  swift_beginAccess();
  v28 = v27;
  MEMORY[0x216068AC0]();
  if (*((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2154A1F8C();
  }

  sub_2154A1FAC();
  swift_endAccess();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = sub_21549E40C();

  swift_beginAccess();
  v30 = v29;
  MEMORY[0x216068AC0]();
  if (*((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2154A1F8C();
  }

  sub_2154A1FAC();
  swift_endAccess();
}

id sub_215352EC0(int a1, id a2, void *a3)
{
  result = [a2 target];
  if (result)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 && (v7 = v6, (v8 = [a2 action]) != 0))
    {
      v9 = v8;
      v10 = type metadata accessor for ICBarButtonItemViewProxy();
      v11 = objc_allocWithZone(v10);
      *&v11[OBJC_IVAR____TtC11NotesEditorP33_96838561D3E26AF679A44B1B79DAFE7124ICBarButtonItemViewProxy_originalBarButtonItem] = a2;
      *&v11[OBJC_IVAR____TtC11NotesEditorP33_96838561D3E26AF679A44B1B79DAFE7124ICBarButtonItemViewProxy_customView] = a3;
      v15.receiver = v11;
      v15.super_class = v10;
      v12 = a2;
      v13 = a3;
      v14 = objc_msgSendSuper2(&v15, sel_init);
      [v7 performSelector:v9 withObject:{v14, v15.receiver, v15.super_class}];

      return v7;
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_215352FF0(id *a1)
{
  v1 = *a1;
  if ([*a1 target])
  {
    swift_unknownObjectRelease();
    v2 = [v1 action] == 0;
  }

  else
  {
    v2 = 1;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v1 menu];
    [v4 setMenu_];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 setShowsMenuAsPrimaryAction_];
  }
}

void sub_2153530F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_215353858(v8, v7, a5);

      v7 = v9;
    }
  }
}

void sub_215353190(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_215353858(Strong, v5, a4);
  }
}

void sub_2153531FC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setEnabled_];
  }
}

void sub_215353274(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 image];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 imageWithRenderingMode_];
    }

    else
    {
      v6 = 0;
    }

    [v3 setImage:v6 forState:0];
  }
}

void sub_215353334()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_barButtonItem);
  v2 = [v1 customView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
  }

  else
  {
    v4 = [v1 image];
    if (!v4)
    {
      return;
    }

    v3 = v4;
    [v4 size];
  }
}

id ICNoteEditorContextualBarButtonItem.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_2153536E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICBarButtonItemViewProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21535378C()
{
  result = qword_2811996E8;
  if (!qword_2811996E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811996E8);
  }

  return result;
}

uint64_t sub_215353858(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_2154A29AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B4D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  if ([a3 selectionStateActive])
  {
    v13 = [*(a2 + OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_barButtonItem) isSelected];
  }

  else
  {
    v13 = 0;
  }

  [a1 setSelected_];
  v14 = [a1 window];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 tintColor];
    [a1 setTintColor_];

    v17 = [objc_opt_self() clearColor];
    [a1 setBackgroundColor_];
  }

  result = _UISolariumEnabled();
  if (result)
  {
    v19 = v13 ^ 1;
    [a1 _setEnableMonochromaticTreatment_];
    v20 = *(a2 + OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_barButtonItem);
    if (v19)
    {
      sub_2154A2A7C();
    }

    else
    {
      sub_2154A2A9C();
    }

    v21 = [v20 image];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 imageWithRenderingMode_];
    }

    sub_2154A2A6C();
    (*(v7 + 104))(v9, *MEMORY[0x277D74FD8], v6);
    sub_2154A29BC();
    v24 = sub_2154A2AAC();
    (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
    return sub_2154A2ADC();
  }

  return result;
}

uint64_t type metadata accessor for SummaryAlert()
{
  result = qword_27CA5ADE8;
  if (!qword_27CA5ADE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_215353BC0()
{
  result = type metadata accessor for SummaryViewModel();
  if (v1 <= 0x3F)
  {
    result = sub_21549FB6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_215353C44()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_215354828();
  sub_21549ED9C();

  v2 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  swift_beginAccess();
  if (*(v1 + v2) && *(v1 + v2) != 1)
  {
    return 0;
  }

  v3 = [objc_opt_self() mainBundle];
  v4 = sub_2154A1D2C();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  v6 = sub_2154A1D6C();
  return v6;
}

uint64_t sub_215353D90()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_215354828();
  sub_21549ED9C();

  v2 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    v3 = [objc_opt_self() mainBundle];
    goto LABEL_6;
  }

  if (*(v1 + v2) == 1)
  {
    [objc_opt_self() deviceIsWAPICapable];
    v3 = [objc_opt_self() mainBundle];
LABEL_6:
    v5 = sub_2154A1D2C();
    v6 = [v3 localizedStringForKey:v5 value:0 table:0];

    v4 = sub_2154A1D6C();
    return v4;
  }

  return 0;
}

uint64_t sub_215353F40()
{
  v1 = v0;
  v2 = type metadata accessor for SummaryAlert();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *v0;
  swift_getKeyPath();
  v26[5] = v5;
  sub_215354828();
  sub_21549ED9C();

  v6 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  swift_beginAccess();
  if (*(v5 + v6) && *(v5 + v6) != 1)
  {
    sub_2154A01BC();
    v20 = sub_2154A090C();
    v22 = v21;
    v24 = v23;
    sub_2154A0C6C();
    sub_215354880(v20, v22, v24 & 1);
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = sub_2154A1D2C();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    v10 = sub_2154A1D6C();
    v12 = v11;

    v26[2] = v10;
    v26[3] = v12;
    sub_215324954();
    v13 = sub_2154A092C();
    v15 = v14;
    v17 = v16;
    sub_215354890(v1, v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v19 = swift_allocObject();
    sub_2153548F4(v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    sub_2154A0C6C();
    sub_215354880(v13, v15, v17 & 1);
  }
}

uint64_t sub_215354328()
{
  v1 = v0;
  v2 = type metadata accessor for SummaryAlert();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *v0;
  swift_getKeyPath();
  v15[1] = v5;
  sub_215354828();
  sub_21549ED9C();

  v6 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  swift_beginAccess();
  if (*(v5 + v6) && *(v5 + v6) != 1)
  {
    sub_2154A01BC();
    v10 = sub_2154A090C();
    v12 = v11;
    v14 = v13;
    sub_2154A0C6C();
    sub_215354880(v10, v12, v14 & 1);
  }

  else
  {
    sub_215354890(v1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_2153548F4(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
    sub_2154A0C5C();
  }
}

uint64_t sub_215354584(uint64_t *a1)
{
  v1 = *a1;
  sub_21535A868(1);
  v2 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  result = swift_beginAccess();
  if (*(v1 + v2) != 2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_215354828();
    sub_21549ED8C();
  }

  return result;
}

id sub_215354684()
{
  type metadata accessor for SummaryAlert();
  sub_21549FB5C();
  v0 = objc_opt_self();

  return [v0 ic_openGeneralSettings];
}

uint64_t sub_2153546DC()
{
  sub_21535AB14();
  type metadata accessor for SummaryAlert();
  return sub_21549FB5C();
}

uint64_t sub_215354718(uint64_t *a1)
{
  type metadata accessor for SummaryAlert();
  sub_21549FB5C();
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  result = swift_beginAccess();
  if (*(v2 + v3) != 2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_215354828();
    sub_21549ED8C();
  }

  return result;
}

unint64_t sub_215354828()
{
  result = qword_27CA5E9E0;
  if (!qword_27CA5E9E0)
  {
    type metadata accessor for SummaryViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E9E0);
  }

  return result;
}

uint64_t sub_215354880(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_215354890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryAlert();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2153548F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryAlert();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for SummaryAlert() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_21549FB6C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_215354AC0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SummaryAlert() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_215354B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_215324EEC(a3, v22 - v9, &unk_27CA5ACE0);
  v11 = sub_2154A202C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2151ADCD8(v10, &unk_27CA5ACE0);
  }

  else
  {
    sub_2154A201C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2154A1FCC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2154A1DEC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2151ADCD8(a3, &unk_27CA5ACE0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2151ADCD8(a3, &unk_27CA5ACE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_215354DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_215324EEC(a3, v22 - v9, &unk_27CA5ACE0);
  v11 = sub_2154A202C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2151ADCD8(v10, &unk_27CA5ACE0);
  }

  else
  {
    sub_2154A201C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2154A1FCC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2154A1DEC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AD00);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2151ADCD8(a3, &unk_27CA5ACE0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2151ADCD8(a3, &unk_27CA5ACE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AD00);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2153550B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_215324EEC(a3, v22 - v9, &unk_27CA5ACE0);
  v11 = sub_2154A202C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2151ADCD8(v10, &unk_27CA5ACE0);
  }

  else
  {
    sub_2154A201C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2154A1FCC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2154A1DEC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A520);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2151ADCD8(a3, &unk_27CA5ACE0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2151ADCD8(a3, &unk_27CA5ACE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A520);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_215355370(uint64_t a1, uint64_t a2)
{
  v4 = sub_2154A22EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_21536028C(&qword_27CA5AEE8, MEMORY[0x277D36420]);
    v21 = sub_2154A1D1C();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_215355584(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_s64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

BOOL sub_2153555FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 64)
  {
    result = 0;
    v7 = a1 + i;
    v8 = a2 + i;
    if (*(a1 + i + 32) != *(a2 + i + 32) || *(v7 + 40) != *(v8 + 40))
    {
      break;
    }

    if (*(v7 + 48) != *(a2 + i + 48))
    {
      return 0;
    }

    if (*(v7 + 88))
    {
      if ((*(v8 + 88) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v8 + 88))
      {
        return 0;
      }

      result = CGRectEqualToRect(*(v7 + 56), *(v8 + 56));
      if (!result)
      {
        return result;
      }
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2153556DC(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_2154A2FAC() & 1) == 0)
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

uint64_t sub_21535576C()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5ADF8);
  __swift_project_value_buffer(v0, qword_27CA5ADF8);
  return sub_21549F0BC();
}

uint64_t SummaryViewModel.SummaryAlertType.hashValue.getter()
{
  v1 = *v0;
  sub_2154A30DC();
  MEMORY[0x216069C80](v1);
  return sub_2154A312C();
}

id sub_2153558EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

id sub_2153559E4()
{
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for SummaryViewModel()
{
  result = qword_27CA5AED8;
  if (!qword_27CA5AED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_215355AF4(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  sub_215355C44();
  v5 = v4;
  v6 = sub_2154A291C();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }
}

unint64_t sub_215355C44()
{
  result = qword_27CA5AE18;
  if (!qword_27CA5AE18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA5AE18);
  }

  return result;
}

void sub_215355C90(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
  v5 = a2;
}

void (*sub_215355D0C(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_21535589C();
  return sub_215355E44;
}

uint64_t sub_215355EA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_215355F60()
{
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED8C();
}

uint64_t sub_21535602C()
{
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  swift_beginAccess();
}

uint64_t sub_2153560E4()
{
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED8C();
}

uint64_t sub_2153561B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

void (*sub_215356238(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215355E50();
  return sub_215356370;
}

uint64_t sub_215356458(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21549E95C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__recordingState;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_21536028C(&qword_27CA5AE28, MEMORY[0x277D359F0]);
  v14[0] = a1;
  LOBYTE(a1) = sub_2154A1D1C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  return (v10)(v14[0], v4);
}

void (*sub_215356730(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_21535637C();
  return sub_215356868;
}

uint64_t sub_2153568D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v4 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2153569D0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v3 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_215356A94(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  return result;
}

uint64_t sub_215356BB8(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_215356C2C(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215356874();
  return sub_215356D64;
}

uint64_t sub_215356E48(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__showSummarizationErrorToggle;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_215356EC4(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215356D70();
  return sub_215356FFC;
}

uint64_t sub_21535707C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_215357180(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_21535725C(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  return result;
}

void (*sub_215357398(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215357008();
  return sub_2153574D0;
}

uint64_t sub_215357564@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v8 = *a2;
  swift_beginAccess();
  v9 = a3(0);
  return (*(*(v9 - 8) + 16))(a4, v7 + v8, v9);
}

uint64_t sub_215357694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_215357790@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v10 = v3;
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v10 + v7, v8);
}

uint64_t sub_215357890(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21549EA1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__errorState;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_21536028C(&qword_27CA5AE50, MEMORY[0x277D35A48]);
  v14[0] = a1;
  LOBYTE(a1) = sub_2154A1D1C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_215357B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(v8 + 16))(&v13 - v9, a2, v7);
  v11 = *a4;
  swift_beginAccess();
  (*(v8 + 40))(a1 + v11, v10, v7);
  return swift_endAccess();
}

void (*sub_215357C8C(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_2153574DC();
  return sub_215357DC4;
}

void (*sub_215357E98(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215357DD0();
  return sub_215357FD0;
}

uint64_t sub_215358050@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v6 = (v5 + *a2);
  swift_beginAccess();
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_21535814C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_21535823C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (sub_2154A2FAC() & 1) != 0)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }
}

void (*sub_215358394(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215357FDC();
  return sub_2153584CC;
}

uint64_t keypath_set_28Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_2153585E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

void (*sub_215358658(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_2153584D8();
  return sub_215358790;
}

uint64_t sub_215358874(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryViewed;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_2153588D0(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_21535879C();
  return sub_215358A08;
}

void (*sub_215358AF0(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215358A14();
  return sub_215358C28;
}

uint64_t sub_215358CA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_215358DB4()
{
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  swift_beginAccess();
}

uint64_t sub_215358E94(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  if (sub_2153556DC(*(v2 + v4), a1))
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }
}

uint64_t sub_215358FCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

void (*sub_215359038(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215358C34();
  return sub_215359170;
}

uint64_t sub_215359254(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSettingTextEffects;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_2153592B0(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_21535917C();
  return sub_2153593E8;
}

void (*sub_2153594CC(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_2153593F4();
  return sub_215359604;
}

void (*sub_2153596E8(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215359610();
  return sub_215359820;
}

void (*sub_215359904(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_21535982C();
  return sub_215359A3C;
}

void (*sub_215359B10(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215359A48();
  return sub_215359C48;
}

uint64_t keypath_set_76Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_215359D64(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      v8 = *v6 == a1 && v7 == a2;
      if (v8 || (sub_2154A2FAC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v6 = a1;
    v6[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED8C();
}

void (*sub_215359ECC(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21549EDBC();

  v4[7] = sub_215359C54();
  return sub_21535A004;
}

void sub_21535A010(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_21549EDAC();

  free(v1);
}

uint64_t sub_21535A0A4(uint64_t a1)
{
  v2 = v1;
  v4 = a1 != 0;
  v5 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSummarizing;
  swift_beginAccess();
  if ((v4 ^ *(v2 + v5)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  else
  {
    *(v2 + v5) = a1 != 0;
  }

  *(v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask) = a1;
}

uint64_t sub_21535A1FC()
{
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();
}

uint64_t sub_21535A2A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask);
}

uint64_t sub_21535A388(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask))
  {
    if (!a1)
    {
      goto LABEL_4;
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88);
  v3 = sub_2154A203C();

  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:

  return sub_21535A0A4(a1);
}

uint64_t sub_21535A520(uint64_t a1, uint64_t a2)
{
  v4 = a2 != 0;
  v5 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSummarizing;
  swift_beginAccess();
  if ((v4 ^ *(a1 + v5)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  else
  {
    *(a1 + v5) = a2 != 0;
  }

  *(a1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask) = a2;
}

id SummaryViewModel.__allocating_init(attachmentModel:liveTranscriptionCoordinator:)(void *a1)
{
  swift_allocObject();
  v2 = sub_21535EFE4(a1);

  return v2;
}

id SummaryViewModel.init(attachmentModel:liveTranscriptionCoordinator:)(void *a1)
{
  v2 = sub_21535EFE4(a1);

  return v2;
}

uint64_t sub_21535A73C()
{
  v1 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryViewed;
  result = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    *(v0 + v1) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  return result;
}

void sub_21535A868(char a1)
{
  if (a1)
  {
    swift_getKeyPath();
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED9C();

    v2 = (v1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summary);
    swift_beginAccess();
    v4 = *v2;
    v3 = v2[1];
    swift_getKeyPath();

    sub_21549ED9C();

    v5 = (v1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__unsafeSummary);
    swift_beginAccess();
    if (v4 == *v5 && v3 == v5[1])
    {
    }

    else
    {
      v7 = sub_2154A2FAC();

      if ((v7 & 1) == 0)
      {
        swift_getKeyPath();
        sub_21549ED9C();

        v9 = *v5;
        v8 = v5[1];
        swift_getKeyPath();

        sub_21549ED9C();

        swift_getKeyPath();
        sub_21549EDBC();

        swift_beginAccess();
        MEMORY[0x2160689F0](v9, v8);
        swift_endAccess();

        swift_getKeyPath();
        sub_21549EDAC();
      }
    }

    sub_21535D718();
  }

  else
  {

    sub_21535AB14();
  }
}

void sub_21535AB14()
{
  v1 = v0;
  v2 = sub_21549EA1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277D35A38], v2, v4);
  sub_21535D26C(v6);
  (*(v3 + 8))(v6, v2);
  if (*(v0 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v0;
    v10[-1] = 0;
    v10[3] = v0;
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  else
  {
    sub_21535A0A4(0);
  }

  v8 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  swift_beginAccess();
  if (*(v1 + v8) != 2)
  {
    v9 = swift_getKeyPath();
    MEMORY[0x28223BE20](v9);
    v10[-2] = v1;
    LOBYTE(v10[-1]) = 2;
    v10[2] = v1;
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  sub_215357E70(0, 0xE000000000000000);
  sub_21535D718();
}

uint64_t sub_21535ADE8()
{
  v1 = v0;
  v27 = *MEMORY[0x277D85DE8];
  v2 = sub_21549EA1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v26 = v0;
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  swift_beginAccess();
  v6 = *(v0 + 2);
  v25[0] = 0;
  v7 = [v6 deleteSummaryAndReturnError_];
  v8 = v25[0];
  if (v7)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D35A38], v2);
    v9 = v8;
    sub_21535D26C(v5);
    (*(v3 + 8))(v5, v2);
    if (*&v1[OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v24[-2] = v1;
      v24[-1] = 0;
      v25[0] = v1;
      sub_21549ED8C();
    }

    else
    {
      sub_21535A0A4(0);
    }

    v21 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
    swift_beginAccess();
    if (v1[v21] != 2)
    {
      v22 = swift_getKeyPath();
      MEMORY[0x28223BE20](v22);
      v24[-2] = v1;
      LOBYTE(v24[-1]) = 2;
      v24[1] = v1;
      sub_21549ED8C();
    }
  }

  else
  {
    v11 = v25[0];
    v12 = sub_21549E3DC();

    swift_willThrow();
    if (qword_27CA59820 != -1)
    {
      swift_once();
    }

    v13 = sub_21549F11C();
    __swift_project_value_buffer(v13, qword_27CA5ADF8);
    v14 = v12;
    v15 = sub_21549F0FC();
    v16 = sub_2154A226C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_2151A1000, v15, v16, "could not delete summary: %@", v17, 0xCu);
      sub_2151ADCD8(v18, &unk_27CA59E90);
      MEMORY[0x21606B520](v18, -1, -1);
      MEMORY[0x21606B520](v17, -1, -1);
    }

    else
    {
    }
  }

  return sub_215357E70(0, 0xE000000000000000);
}

void sub_21535B270()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v48 - v3;
  v5 = sub_21549EA1C();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21549E95C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v54 = v0;
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v12 = (v0 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summary);
  swift_beginAccess();
  v13 = v12[1];
  v14 = *v12 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v13) & 0xF;
  }

  if (!v14)
  {
    swift_getKeyPath();
    v53 = v1;
    sub_21549ED9C();

    v15 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__recordingState;
    swift_beginAccess();
    (*(v9 + 16))(v11, v1 + v15, v8);
    LODWORD(v15) = (*(v9 + 88))(v11, v8);
    v16 = *MEMORY[0x277D359E8];
    (*(v9 + 8))(v11, v8);
    if (v15 != v16)
    {
      swift_getKeyPath();
      v52 = v1;
      sub_21549ED9C();

      swift_beginAccess();
      if (*(v1 + 24))
      {

        v21 = sub_21549EC2C();
        v23 = v22;
      }

      else
      {
        swift_getKeyPath();
        v51 = v1;
        sub_21549ED9C();

        swift_beginAccess();
        v24 = [*(v1 + 16) audioDocument];
        if (!v24)
        {
          __break(1u);
          return;
        }

        v25 = v24;
        v26 = [v24 transcriptAsPlainText];

        v21 = sub_2154A1D6C();
        v23 = v27;
      }

      v28 = [objc_opt_self() sharedInstance];
      v29 = sub_2154A26AC();

      if (v29)
      {

        if (qword_27CA59820 != -1)
        {
          swift_once();
        }

        v30 = sub_21549F11C();
        __swift_project_value_buffer(v30, qword_27CA5ADF8);
        v31 = sub_21549F0FC();
        v32 = sub_2154A225C();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_2151A1000, v31, v32, "private cloud compute summary restricted", v33, 2u);
          MEMORY[0x21606B520](v33, -1, -1);
        }

        v34 = MEMORY[0x277D35A30];
      }

      else
      {
        sub_21549EA4C();
        if (MEMORY[0x2160655C0](v21, v23))
        {
          sub_215358214(0, 0xE000000000000000);
          v35 = sub_2154A202C();
          (*(*(v35 - 8) + 56))(v4, 1, 1, v35);
          sub_2154A1FFC();

          v36 = sub_2154A1FEC();
          v37 = swift_allocObject();
          v38 = MEMORY[0x277D85700];
          v37[2] = v36;
          v37[3] = v38;
          v37[4] = v21;
          v37[5] = v23;
          v37[6] = v1;
          v39 = sub_215354B4C(0, 0, v4, &unk_2154BF4C8, v37);
          if (*(v1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask) && (, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88), v40 = sub_2154A203C(), , (v40 & 1) != 0))
          {
            sub_21535A0A4(v39);
          }

          else
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v48 - 2) = v1;
            *(&v48 - 1) = v39;
            v50 = v1;
            sub_21549ED8C();
          }

          return;
        }

        if (qword_27CA59820 != -1)
        {
          swift_once();
        }

        v41 = sub_21549F11C();
        __swift_project_value_buffer(v41, qword_27CA5ADF8);
        v42 = sub_21549F0FC();
        v43 = sub_2154A226C();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_2151A1000, v42, v43, "synopsis generation failed: unable to summarize transcript", v44, 2u);
          MEMORY[0x21606B520](v44, -1, -1);
        }

        v34 = MEMORY[0x277D35A40];
      }

      v46 = v48;
      v45 = v49;
      (*(v48 + 104))(v7, *v34, v49);
      sub_21535D26C(v7);
      (*(v46 + 8))(v7, v45);
      return;
    }
  }

  if (qword_27CA59820 != -1)
  {
    swift_once();
  }

  v17 = sub_21549F11C();
  __swift_project_value_buffer(v17, qword_27CA5ADF8);
  v18 = sub_21549F0FC();
  v19 = sub_2154A225C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2151A1000, v18, v19, "synopsis generation failed: summary already exists or is recording", v20, 2u);
    MEMORY[0x21606B520](v20, -1, -1);
  }
}

uint64_t sub_21535BAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a6;
  v9 = sub_21549EA1C();
  v6[35] = v9;
  v6[36] = *(v9 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v10 = sub_21549E9DC();
  v6[41] = v10;
  v6[42] = *(v10 - 8);
  v6[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AEF0);
  v6[44] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AEF8);
  v6[45] = v11;
  v6[46] = *(v11 - 8);
  v12 = swift_task_alloc();
  v6[47] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AF00);
  v6[48] = v13;
  v6[49] = *(v13 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = sub_2154A1FFC();
  v6[52] = sub_2154A1FEC();
  sub_21549EA4C();
  v14 = swift_task_alloc();
  v6[53] = v14;
  *v14 = v6;
  v14[1] = sub_21535BDA8;

  return MEMORY[0x282195088](v12, a4, a5, 0);
}

uint64_t sub_21535BDA8()
{
  v1 = *v0;

  v3 = sub_2154A1FCC();
  *(v1 + 432) = v3;
  *(v1 + 440) = v2;

  return MEMORY[0x2822009F8](sub_21535BEEC, v3, v2);
}

uint64_t sub_21535BEEC()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  sub_2154A207C();
  (*(v2 + 8))(v1, v3);
  v4 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  v0[56] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__modelVersionInfo;
  v0[57] = v4;
  v5 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSummarizing;
  v0[58] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask;
  v0[59] = v5;
  v6 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__unsafeSummary;
  v0[60] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  v0[61] = v6;
  v0[62] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summary;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v7 = sub_2154A1FEC();
  v0[63] = v7;
  v8 = swift_task_alloc();
  v0[64] = v8;
  *v8 = v0;
  v8[1] = sub_21535C068;
  v9 = v0[48];
  v10 = v0[44];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v10, v7, v11, v9, v0 + 20);
}

uint64_t sub_21535C068()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 432);
  v4 = *(v2 + 440);
  if (v0)
  {
    v5 = sub_21535CB64;
  }

  else
  {
    v5 = sub_21535C18C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21535C18C()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[58];
    v5 = v0[34];
    (*(v0[49] + 8))(v0[50], v0[48]);

    if (*(v5 + v4))
    {
      v6 = v0[34];
      swift_getKeyPath();
      v7 = swift_task_alloc();
      *(v7 + 16) = v6;
      *(v7 + 24) = 0;
      v0[23] = v6;
      sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
      sub_21549ED8C();
    }

    else
    {
      sub_21535A0A4(0);
    }

    v15 = v0[34];
    v16 = (v15 + v0[61]);
    swift_getKeyPath();
    v0[22] = v15;
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED9C();

    swift_beginAccess();
    v17 = v16[1];
    v18 = *v16 & 0xFFFFFFFFFFFFLL;
    if ((v17 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v17) & 0xF;
    }

    if (v18)
    {
      if (qword_27CA59820 != -1)
      {
        swift_once();
      }

      v19 = sub_21549F11C();
      __swift_project_value_buffer(v19, qword_27CA5ADF8);
      v20 = sub_21549F0FC();
      v21 = sub_2154A225C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2151A1000, v20, v21, "unsafe summary, waiting to save till user decision", v22, 2u);
        MEMORY[0x21606B520](v22, -1, -1);
      }
    }

    else
    {
      sub_21535D718();
    }

    v23 = v0[1];

    return v23();
  }

  else
  {
    v8 = (v0[34] + v0[56]);
    (*(v3 + 32))(v0[43], v1, v2);
    v9 = sub_21549E99C();
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v13 = *v8 == v11 && v8[1] == v12;
    if (v13 || (sub_2154A2FAC() & 1) != 0)
    {
      v14 = (v0[34] + v0[56]);
      *v14 = v11;
      v14[1] = v12;
    }

    else
    {
      v25 = v0[34];
      swift_getKeyPath();
      v26 = swift_task_alloc();
      v26[2] = v25;
      v26[3] = v11;
      v26[4] = v12;
      v0[24] = v25;
      sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
      sub_21549ED8C();
    }

    if (sub_21549E9CC())
    {
      v27 = v0[42];
      v47 = v0[43];
      v49 = v0[41];
      v28 = v0[34];
      v45 = sub_21549E9BC();
      v30 = v29;
      swift_getKeyPath();
      v0[31] = v28;
      sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
      sub_21549ED9C();

      v0[32] = v28;
      swift_getKeyPath();
      sub_21549EDBC();

      swift_beginAccess();
      MEMORY[0x2160689F0](v45, v30);
      swift_endAccess();

      v0[33] = v28;
      swift_getKeyPath();
      sub_21549EDAC();

      (*(v27 + 8))(v47, v49);
    }

    else
    {
      v31 = v0[34];
      if (*(v31 + v0[58]))
      {
        swift_getKeyPath();
        v32 = swift_task_alloc();
        *(v32 + 16) = v31;
        *(v32 + 24) = 0;
        v0[30] = v31;
        sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
        sub_21549ED8C();
      }

      else
      {
        v33 = v0[59];
        if (*(v31 + v33))
        {
          swift_getKeyPath();
          v34 = swift_task_alloc();
          *(v34 + 16) = v31;
          *(v34 + 24) = 0;
          v0[29] = v31;
          sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
          sub_21549ED8C();
        }

        else
        {
          *(v31 + v33) = 0;
        }

        *(v0[34] + v0[58]) = 0;
      }

      v35 = v0[34];
      if (*(v35 + v0[60]))
      {
        swift_getKeyPath();
        v36 = swift_task_alloc();
        *(v36 + 16) = v35;
        *(v36 + 24) = 0;
        v0[25] = v35;
        sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
        sub_21549ED8C();

        v35 = v0[34];
      }

      v37 = v0[42];
      v48 = v0[43];
      v50 = v0[41];
      v46 = sub_21549E9BC();
      v39 = v38;
      swift_getKeyPath();
      v0[26] = v35;
      sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
      sub_21549ED9C();

      v0[27] = v35;
      swift_getKeyPath();
      sub_21549EDBC();

      swift_beginAccess();
      MEMORY[0x2160689F0](v46, v39);
      swift_endAccess();

      v0[28] = v35;
      swift_getKeyPath();
      sub_21549EDAC();

      (*(v37 + 8))(v48, v50);
    }

    v40 = sub_2154A1FEC();
    v0[63] = v40;
    v41 = swift_task_alloc();
    v0[64] = v41;
    *v41 = v0;
    v41[1] = sub_21535C068;
    v42 = v0[48];
    v43 = v0[44];
    v44 = MEMORY[0x277D85700];

    return MEMORY[0x2822005A8](v43, v40, v44, v42, v0 + 20);
  }
}

uint64_t sub_21535CB64()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 160);
  *(v0 + 168) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 320);
    v8 = *(v0 + 288);
    v7 = *(v0 + 296);
    v9 = *(v0 + 280);

    (*(v8 + 32))(v6, v7, v9);
    if (qword_27CA59820 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 312);
    v11 = *(v0 + 320);
    v12 = *(v0 + 280);
    v13 = *(v0 + 288);
    v14 = sub_21549F11C();
    __swift_project_value_buffer(v14, qword_27CA5ADF8);
    v15 = *(v13 + 16);
    v15(v10, v11, v12);
    v16 = sub_21549F0FC();
    v17 = sub_2154A226C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 312);
    v20 = *(v0 + 280);
    v21 = *(v0 + 288);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v22 = 138412290;
      sub_21536028C(&qword_27CA5AF08, MEMORY[0x277D35A48]);
      swift_allocError();
      v15(v23, v19, v20);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = *(v21 + 8);
      v25(v19, v20);
      *(v22 + 4) = v24;
      *v41 = v24;
      _os_log_impl(&dword_2151A1000, v16, v17, "synopsis generation failed: %@", v22, 0xCu);
      sub_2151ADCD8(v41, &unk_27CA59E90);
      MEMORY[0x21606B520](v41, -1, -1);
      MEMORY[0x21606B520](v22, -1, -1);
    }

    else
    {

      v25 = *(v21 + 8);
      v25(v19, v20);
    }

    v37 = *(v0 + 320);
    v38 = *(v0 + 280);
    sub_21535D26C(v37);
    v25(v37, v38);
  }

  else
  {

    if (qword_27CA59820 != -1)
    {
      swift_once();
    }

    v26 = sub_21549F11C();
    __swift_project_value_buffer(v26, qword_27CA5ADF8);
    v27 = v4;
    v28 = sub_21549F0FC();
    v29 = sub_2154A226C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v4;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_2151A1000, v28, v29, "synopsis generation failed: %@", v30, 0xCu);
      sub_2151ADCD8(v31, &unk_27CA59E90);
      MEMORY[0x21606B520](v31, -1, -1);
      MEMORY[0x21606B520](v30, -1, -1);
    }

    v34 = *(v0 + 304);
    v35 = *(v0 + 280);
    v36 = *(v0 + 288);

    (*(v36 + 104))(v34, *MEMORY[0x277D35A40], v35);
    sub_21535D26C(v34);

    (*(v36 + 8))(v34, v35);
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_21535D064(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (*(v1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  else
  {
    sub_21535A0A4(0);
  }

  v5 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  result = swift_beginAccess();
  if (*(v2 + v5) != v3)
  {
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  return result;
}

uint64_t sub_21535D26C(uint64_t a1)
{
  v2 = v1;
  v15[0] = a1;
  v3 = sub_21549EA1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v15[-2] = v1;
    v15[-1] = 0;
    v15[3] = v1;
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  else
  {
    sub_21535A0A4(0);
  }

  (*(v4 + 104))(v6, *MEMORY[0x277D35A38], v3);
  sub_21536028C(&qword_27CA5AE50, MEMORY[0x277D35A48]);
  v8 = v15[0];
  v9 = sub_2154A1D1C();
  v10 = v9 & 1;
  (*(v4 + 8))(v6, v3);
  v11 = v9 ^ 1;
  v12 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__showSummarizationErrorToggle;
  swift_beginAccess();
  if (v10 == *(v2 + v12))
  {
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    v15[-2] = v2;
    LOBYTE(v15[-1]) = v11 & 1;
    v15[2] = v2;
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  else
  {
    *(v2 + v12) = v11 & 1;
  }

  (*(v4 + 16))(v6, v8, v3);
  return sub_215357890(v6);
}

uint64_t sub_21535D5D0()
{
  v1 = [objc_opt_self() generalPasteboard];
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  swift_beginAccess();

  v2 = sub_2154A1D2C();

  [v1 setString_];

  return sub_21535DB90(*(v0 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_summaryTarget), *(v0 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_summaryTarget + 8), *(v0 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_copyActionType), *(v0 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_copyActionType + 8));
}

void sub_21535D718()
{
  v1 = v0;
  v2 = sub_21549E9DC();
  v10 = *(v2 - 8);
  v11 = v2;
  MEMORY[0x28223BE20](v2);
  v9 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = v0;
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  swift_beginAccess();
  v4 = *(v0 + 16);
  swift_getKeyPath();
  v15 = v0;
  v8[0] = v4;
  sub_21549ED9C();

  v5 = (v0 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summary);
  swift_beginAccess();
  v8[1] = *v5;
  swift_getKeyPath();
  v14 = v1;

  sub_21549ED9C();

  swift_beginAccess();
  swift_getKeyPath();
  v13 = v1;

  sub_21549ED9C();

  swift_beginAccess();
  swift_getKeyPath();
  v12 = v1;

  v6 = v8[0];
  sub_21549ED9C();

  swift_beginAccess();

  v7 = v9;
  sub_21549E9AC();
  sub_2154A25EC();
  (*(v10 + 8))(v7, v11);
}

uint64_t sub_21535DB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);

  sub_21549ED9C();

  v23 = v4;
  swift_getKeyPath();
  sub_21549EDBC();

  v9 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryInteractionTargets;
  swift_beginAccess();
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_215317E44(0, *(v10 + 2) + 1, 1, v10);
    *(v5 + v9) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_215317E44((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  *(v5 + v9) = v10;
  swift_endAccess();
  swift_getKeyPath();
  sub_21549EDAC();

  swift_getKeyPath();

  sub_21549ED9C();

  swift_getKeyPath();
  sub_21549EDBC();

  v15 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryInteractionActionTypes;
  swift_beginAccess();
  v16 = *(v5 + v15);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v15) = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_215317E44(0, *(v16 + 2) + 1, 1, v16);
    *(v5 + v15) = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_215317E44((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[16 * v19];
  *(v20 + 4) = a3;
  *(v20 + 5) = a4;
  *(v5 + v15) = v16;
  swift_endAccess();
  swift_getKeyPath();
  sub_21549EDAC();
}

uint64_t sub_21535DE94()
{
  v1 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryViewed;
  result = swift_beginAccess();
  if (*(v0 + v1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  else
  {
    *(v0 + v1) = 0;
  }

  return result;
}

uint64_t SummaryViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__recordingState;
  v2 = sub_21549E95C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__errorState;
  v4 = sub_21549EA1C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  v6 = sub_21549EDDC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t SummaryViewModel.__deallocating_deinit()
{
  SummaryViewModel.deinit();

  return swift_deallocClassInstance();
}

id ICTTAudioDocument.reportAConcernAttachmentDescription(forToplineSummary:createdDate:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v93 = a2;
  LODWORD(v100) = a1;
  v99 = a3;
  v4 = sub_21549E5CC();
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x28223BE20](v4);
  v84 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21549E5FC();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_21549E6AC();
  v96 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v80 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AEC0);
  MEMORY[0x28223BE20](v88);
  v91 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = &v77 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v77 - v15;
  MEMORY[0x28223BE20](v17);
  v90 = &v77 - v18;
  v95 = sub_21549E20C();
  MEMORY[0x28223BE20](v95);
  v19 = sub_21549E28C();
  v20 = *(v19 - 8);
  *&v21 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v3;
  [v3 isCallRecording];
  v24 = [objc_opt_self() mainBundle];
  v89 = v11;
  v92 = v16;
  v25 = sub_2154A1D2C();
  v26 = [v24 localizedStringForKey:v25 value:0 table:0];

  v27 = sub_2154A1D6C();
  v97 = v28;
  v98 = v27;

  v29 = [objc_opt_self() mainBundle];
  v30 = sub_2154A1D2C();
  v31 = [v29 localizedStringForKey:v30 value:0 table:0];

  v32 = sub_2154A1D6C();
  v34 = v33;

  if (v100)
  {
    v35 = &selRef_topLineSummaryAsPlainText;
  }

  else
  {
    v35 = &selRef_recordingSummaryAsPlainText;
  }

  v36 = v101;
  v37 = [v101 *v35];
  v38 = sub_2154A1D6C();
  v100 = v39;

  sub_2154A23BC();
  sub_21549EB7C();

  sub_21549E1AC();
  (*(v20 + 8))(v23, v19);
  sub_21536028C(&unk_27CA5C7C0, MEMORY[0x277CC8B30]);
  sub_2154A1EFC();
  v40 = sub_2154A1D2C();

  v41 = [v40 ic_whitespaceAndNewlineCoalescedString];

  v42 = sub_2154A1D6C();
  v44 = v43;

  result = [v36 isCallRecording];
  if (result)
  {
    v77 = v44;
    v78 = v38;
    v79 = v34;
    v95 = v32;
    v46 = v92;
    sub_21549E60C();
    v47 = v96;
    v48 = *(v96 + 56);
    v49 = v94;
    v48(v46, 0, 1, v94);
    v50 = *(v88 + 48);
    v51 = v91;
    sub_215324EEC(v93, v91, &unk_27CA5EA60);
    v52 = v51;
    sub_215324EEC(v46, v51 + v50, &unk_27CA5EA60);
    v53 = *(v47 + 48);
    if (v53(v52, 1, v49) == 1)
    {
      sub_2151ADCD8(v46, &unk_27CA5EA60);
      if (v53(v52 + v50, 1, v49) == 1)
      {
        sub_2151ADCD8(v52, &unk_27CA5EA60);
        v54 = v90;
LABEL_13:
        v48(v54, 1, 1, v49);
LABEL_14:
        v62 = v89;
        sub_215324EEC(v54, v89, &unk_27CA5EA60);
        if (v53(v62, 1, v49) == 1)
        {
          sub_2151ADCD8(v62, &unk_27CA5EA60);
          v63 = 0;
          v64 = 0;
        }

        else
        {
          v65 = v82;
          sub_21549E5EC();
          v66 = v84;
          sub_21549E5BC();
          v67 = v49;
          v63 = sub_21549E68C();
          v64 = v68;
          (*(v86 + 8))(v66, v87);
          (*(v83 + 8))(v65, v85);
          (*(v96 + 8))(v62, v67);
        }

        v69 = [v101 remoteSpeakerHandle];
        v38 = v78;
        if (v69 && (v102 = 0, v103 = 0, v70 = v69, sub_2154A1D5C(), v70, v103))
        {
          v71 = MEMORY[0x2160658B0](v102, v103);
          v73 = v72;

          if (!v64)
          {
LABEL_20:
            if (!v73)
            {
              v32 = v95;
              v34 = v79;
              v44 = v77;
              goto LABEL_27;
            }

            v102 = v71;
            v103 = v73;
LABEL_26:
            MEMORY[0x2160689F0](10, 0xE100000000000000);
            MEMORY[0x2160689F0](v42, v77);

            v42 = v102;
            v44 = v103;
            v32 = v95;
            v34 = v79;
LABEL_27:
            result = sub_2151ADCD8(v54, &unk_27CA5EA60);
            goto LABEL_28;
          }
        }

        else
        {
          v71 = 0;
          v73 = 0;
          if (!v64)
          {
            goto LABEL_20;
          }
        }

        if (v73)
        {
          v102 = v71;
          v103 = v73;
          MEMORY[0x2160689F0](10, 0xE100000000000000);
          MEMORY[0x2160689F0](v63, v64);
        }

        else
        {
          v102 = v63;
          v103 = v64;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v55 = v81;
      sub_215324EEC(v52, v81, &unk_27CA5EA60);
      if (v53(v52 + v50, 1, v49) != 1)
      {
        v56 = v96;
        v57 = *(v96 + 32);
        v88 = v42;
        v58 = v80;
        v57(v80, v52 + v50, v49);
        sub_21536028C(&qword_27CA5AEC8, MEMORY[0x277CC9578]);
        v59 = sub_2154A1D1C();
        v60 = *(v56 + 8);
        v61 = v58;
        v42 = v88;
        v60(v61, v94);
        sub_2151ADCD8(v92, &unk_27CA5EA60);
        v60(v55, v94);
        v49 = v94;
        sub_2151ADCD8(v91, &unk_27CA5EA60);
        v54 = v90;
        if (v59)
        {
          goto LABEL_13;
        }

LABEL_11:
        sub_215324EEC(v93, v54, &unk_27CA5EA60);
        goto LABEL_14;
      }

      sub_2151ADCD8(v92, &unk_27CA5EA60);
      (*(v96 + 8))(v55, v49);
    }

    sub_2151ADCD8(v52, &qword_27CA5AEC0);
    v54 = v90;
    goto LABEL_11;
  }

LABEL_28:
  v74 = v99;
  v75 = v97;
  *v99 = v98;
  v74[1] = v75;
  v74[2] = v42;
  v74[3] = v44;
  v74[4] = v32;
  v74[5] = v34;
  v76 = v100;
  v74[6] = v38;
  v74[7] = v76;
  return result;
}

void __swiftcall ICTTAudioDocument.reportAConcernAttachmentContent(forToplineSummary:)(Swift::tuple_transcript_tuple_content_String_fileName_String_summary_tuple_content_String_info_tuple_fileName_String_modelVersion_String *__return_ptr retstr, Swift::Bool forToplineSummary)
{
  v5 = [v2 transcriptAsPlainText];
  v6 = sub_2154A1D6C();
  v8 = v7;

  v9 = &selRef_topLineSummaryAsPlainText;
  if (!forToplineSummary)
  {
    v9 = &selRef_recordingSummaryAsPlainText;
  }

  v10 = [v2 *v9];
  v11 = sub_2154A1D6C();
  v13 = v12;

  v14 = sub_2154A23AC();
  if (v14)
  {
    v15 = v14;
    sub_2154A1D5C();
  }

  retstr->transcript.content._countAndFlagsBits = v6;
  retstr->transcript.content._object = v8;
  strcpy(&retstr->transcript.fileName, "transcript.txt");
  HIBYTE(retstr->transcript.fileName._object) = -18;
  retstr->summary.content._countAndFlagsBits = v11;
  retstr->summary.content._object = v13;
  retstr->summary.info.fileName._countAndFlagsBits = 0x2E7972616D6D7573;
  retstr->summary.info.fileName._object = 0xEB00000000747874;
  retstr->summary.info.modelVersion._countAndFlagsBits = 0;
  retstr->summary.info.modelVersion._object = 0xE000000000000000;
}

id sub_21535EFE4(void *a1)
{
  v2 = v1;
  *(v2 + 24) = 0;
  v4 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__recordingState;
  v5 = *MEMORY[0x277D359D0];
  v6 = sub_21549E95C();
  (*(*(v6 - 8) + 104))(v2 + v4, v5, v6);
  *(v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType) = 2;
  *(v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__showSummarizationErrorToggle) = 0;
  *(v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__showMontaraOnboarding) = 0;
  v7 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__errorState;
  v8 = *MEMORY[0x277D35A38];
  v9 = sub_21549EA1C();
  (*(*(v9 - 8) + 104))(v2 + v7, v8, v9);
  v10 = (v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summary);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__unsafeSummary);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__modelVersionInfo);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryViewed) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryInteractionTargets) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryInteractionActionTypes) = v13;
  *(v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSettingTextEffects) = 0;
  *(v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSummarizing) = 0;
  *(v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSummarizingExternally) = 0;
  *(v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isAwaitingMontaraSignIn) = 0;
  v14 = (v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__attributionIcon);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__attributionProvider);
  *v15 = 0;
  v15[1] = 0;
  *(v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask) = 0;
  v16 = v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_summaryTarget;
  strcpy((v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_summaryTarget), "audioSummary");
  *(v16 + 13) = 0;
  *(v16 + 14) = -5120;
  v17 = (v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_copyActionType);
  *v17 = 2037411683;
  v17[1] = 0xE400000000000000;
  sub_21549EDCC();
  *(v2 + 16) = a1;
  swift_getKeyPath();
  sub_21536028C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  v18 = a1;

  sub_21549ED8C();

  result = [v18 audioDocument];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v20 = result;
  v21 = sub_2154A239C();

  if (v21)
  {
    v22 = [v21 attributedString];

    if (v22)
    {
      v23 = [v22 string];
      v24 = sub_2154A1D6C();
      v26 = v25;

      sub_215357E70(v24, v26);
    }
  }

  result = [v18 audioDocument];
  if (!result)
  {
    goto LABEL_9;
  }

  v27 = result;
  v28 = [result externalModelAttributionSymbolName];

  sub_2154A1D5C();
  sub_215359AE8(0, 0);
  result = [v18 audioDocument];
  if (result)
  {
    v29 = result;
    v30 = [result externalModelAttributionProviderName];

    sub_2154A1D5C();
    sub_215359D3C(0, 0);
    return v2;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_21535F460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2151BD278;

  return sub_21535BAE4(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_21535F52C()
{
  result = qword_27CA5AED0;
  if (!qword_27CA5AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5AED0);
  }

  return result;
}

uint64_t sub_21535F588()
{
  result = sub_21549E95C();
  if (v1 <= 0x3F)
  {
    result = sub_21549EA1C();
    if (v2 <= 0x3F)
    {
      result = sub_21549EDDC();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21536028C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2153602D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_215360330(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t static Double.accessibilityElapsedAndRemainingString(elapsed:remaining:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = sub_2154A1D2C();
  v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2154BDB40;
  v8 = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:1 ignoreFractionalSeconds:a1];
  if (v8 && (v9 = v8, v10 = [v8 durationDescription], v9, v10))
  {
    v11 = sub_2154A1D6C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v15 = sub_215333D20();
  *(v7 + 64) = v15;
  *(v7 + 32) = v11;
  *(v7 + 40) = v13;
  v16 = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:1 ignoreFractionalSeconds:a2];
  if (v16 && (v17 = v16, v18 = [v16 durationDescription], v17, v18))
  {
    v19 = sub_2154A1D6C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  *(v7 + 96) = v14;
  *(v7 + 104) = v15;
  *(v7 + 72) = v19;
  *(v7 + 80) = v21;
  v22 = sub_2154A1D3C();

  return v22;
}

id sub_21536064C(char a1, double a2)
{
  result = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:a1 & 1 ignoreFractionalSeconds:a2];
  if (result)
  {
    v3 = result;
    v4 = [result durationDescription];

    if (v4)
    {
      v5 = sub_2154A1D6C();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _sSd11NotesEditorE34accessibilityElapsedAndTotalString7elapsed5totalSSSd_SdtFZ_0(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = sub_2154A1D2C();
  v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2154BDB40;
  v8 = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:1 ignoreFractionalSeconds:a1];
  if (v8 && (v9 = v8, v10 = [v8 durationDescription], v9, v10))
  {
    v11 = sub_2154A1D6C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v15 = sub_215333D20();
  *(v7 + 64) = v15;
  *(v7 + 32) = v11;
  *(v7 + 40) = v13;
  v16 = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:1 ignoreFractionalSeconds:a2];
  if (v16 && (v17 = v16, v18 = [v16 durationDescription], v17, v18))
  {
    v19 = sub_2154A1D6C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  *(v7 + 96) = v14;
  *(v7 + 104) = v15;
  *(v7 + 72) = v19;
  *(v7 + 80) = v21;
  v22 = sub_2154A1D3C();

  return v22;
}

uint64_t sub_2153608F8(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  v3 = (HIDWORD(a1) - a1);
  if (HIDWORD(a1) < a1)
  {
    v3 = -(a1 - HIDWORD(a1));
  }

  v7 = MEMORY[0x216068C70](v3 + 1, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  while (1)
  {
    sub_2153EE760(&v6, v1);
    if (v2 == v1)
    {
      break;
    }

    v4 = __CFADD__(v1, 1);
    v1 = (v1 + 1);
    if (v4)
    {
      __break(1u);
      return v7;
    }
  }

  return v7;
}

uint64_t sub_215360984()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5AF10);
  __swift_project_value_buffer(v0, qword_27CA5AF10);
  return sub_21549F08C();
}

void VisualAssetImportController.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___ICVisualAssetImportController_paperImageInsertionController) = 0;
  *(v1 + OBJC_IVAR___ICVisualAssetImportController_captureController) = 0;
  *(v1 + OBJC_IVAR___ICVisualAssetImportController_doNotAdvanceInsertionPointAfterInsertingAttachment) = 0;
  *(v1 + OBJC_IVAR___ICVisualAssetImportController_isShowing) = 0;
  sub_2154A2EDC();
  __break(1u);
}

id VisualAssetImportController.__allocating_init(note:textView:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_2151AEB64(a1, a2);

  return v6;
}

id VisualAssetImportController.init(note:textView:)(void *a1, void *a2)
{
  v4 = sub_2151AEB64(a1, a2);

  return v4;
}

uint64_t VisualAssetImportController.isShowing.getter()
{
  v1 = OBJC_IVAR___ICVisualAssetImportController_isShowing;
  swift_beginAccess();
  return *(v0 + v1);
}

Swift::Void __swiftcall VisualAssetImportController.presentVisualAssetPickerController()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AF48);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v32 - v3;
  v4 = sub_21549F03C();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2154A19BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2154A19FC();
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR___ICVisualAssetImportController_isShowing;
  swift_beginAccess();
  *(v1 + v17) = 1;
  sub_2154A19EC();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v19 = [Strong visibleTopLevelAttachmentsCount];

  if (__OFSUB__([objc_opt_self() maxNoteAttachments], v19))
  {
    __break(1u);
  }

  else
  {
    sub_2154A19AC();
    (*(v8 + 104))(v10, *MEMORY[0x277CD9D40], v7);
    sub_2154A19CC();
    v20 = swift_unknownObjectUnownedLoadStrong();
    v21 = [v20 isPasswordProtected];

    if ((v21 & 1) != 0 || (v22 = objc_opt_self(), sub_21549F00C(), sub_21549EF7C(), (*(v32 + 8))(v6, v33), v23 = sub_2154A1D2C(), , LODWORD(v22) = [v22 isTypeUTISupportedForPasswordProtectedNotes_], v23, v22))
    {
      v24 = v34;
      sub_2154A196C();
      v25 = sub_2154A197C();
      (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
      sub_2154A19DC();
    }

    sub_2151A6C9C(0, &qword_27CA5AF58);
    v27 = v35;
    v26 = v36;
    (*(v35 + 16))(v14, v16, v36);
    v28 = sub_2154A262C();
    sub_215365BE4(&qword_27CA5AF60, v29, type metadata accessor for VisualAssetImportController);
    swift_unknownObjectRetain();
    sub_2154A263C();
    v30 = swift_unknownObjectUnownedLoadStrong();
    v31 = [v30 editorController];

    if (v31)
    {
      [v31 presentViewController:v28 animated:1 completion:0];

      v28 = v31;
    }

    (*(v27 + 8))(v16, v26);
  }
}

Swift::Void __swiftcall VisualAssetImportController.presentVisualAssetCaptureController(disableAutorotate:)(Swift::Bool disableAutorotate)
{
  v3 = OBJC_IVAR___ICVisualAssetImportController_isShowing;
  swift_beginAccess();
  v1[v3] = 1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong editorController];

  if (v5)
  {
    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = v1;
    v8 = sub_215365408(v6, v7);
    v9 = OBJC_IVAR___ICVisualAssetImportController_captureController;
    v10 = *&v7[OBJC_IVAR___ICVisualAssetImportController_captureController];
    *&v7[OBJC_IVAR___ICVisualAssetImportController_captureController] = v8;

    v11 = *&v7[v9];
    if (v11)
    {
      v12 = v11;
      sub_2153DFFBC(v5, disableAutorotate);
    }
  }
}

Swift::Void __swiftcall VisualAssetImportController.add(_:typeIdentifier:forceAddToPaper:)(Swift::OpaquePointer _, Swift::String_optional typeIdentifier, Swift::Bool forceAddToPaper)
{
  object = typeIdentifier.value._object;
  v52 = forceAddToPaper;
  countAndFlagsBits = typeIdentifier.value._countAndFlagsBits;
  v46 = sub_21549F03C();
  MEMORY[0x28223BE20](v46);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(_._rawValue + 2);
  if (!v6)
  {
    return;
  }

  v7 = 0;
  v53 = OBJC_IVAR___ICVisualAssetImportController_paperImageInsertionController;
  v54 = OBJC_IVAR___ICVisualAssetImportController_note;
  v43 = (v4 + 8);
  v8 = (_._rawValue + 40);
  v44 = xmmword_2154BDB20;
  while (1)
  {
    v14 = *(v8 - 1);
    v13 = *v8;
    v15 = *v8 >> 62;
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_20;
      }

      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      v19 = v17 - v18;
      if (__OFSUB__(v17, v18))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!v15)
      {
        v16 = __OFADD__(v7, BYTE6(v13));
        v7 += BYTE6(v13);
        if (v16)
        {
          goto LABEL_49;
        }

        goto LABEL_20;
      }

      if (__OFSUB__(HIDWORD(v14), v14))
      {
        goto LABEL_52;
      }

      v19 = HIDWORD(v14) - v14;
    }

    sub_215324200(*(v8 - 1), *v8);
    v16 = __OFADD__(v7, v19);
    v7 += v19;
    if (v16)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_20:
    Strong = swift_unknownObjectUnownedLoadStrong();
    v21 = [Strong attachmentExceedsMaxSizeAllowed_];

    if (v21)
    {
      break;
    }

    if (object)
    {
      if (v52)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v22 = v45;
      sub_2153619F4(v45);
      sub_21549EF7C();
      (*v43)(v22, v46);
      if (v52)
      {
LABEL_23:

LABEL_27:
        v24 = sub_21549E58C();
        v25 = objc_allocWithZone(MEMORY[0x277CCAA88]);
        v26 = sub_2154A1D2C();

        v11 = [v25 initWithItem:v24 typeIdentifier:v26];

        v27 = *(v56 + v53);
        if (v27)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
          v9 = swift_allocObject();
          *(v9 + 16) = v44;
          *(v9 + 32) = v11;
          sub_2151A6C9C(0, &qword_27CA5A360);
          v10 = v27;
          v11 = v11;
          v12 = sub_2154A1F3C();

          [v10 addImagesToPaperWithItemProviders_];
          sub_215324170(v14, v13);
        }

        else
        {
          sub_215324170(v14, v13);
        }

        goto LABEL_5;
      }
    }

    v23 = *(v56 + v53);
    if (v23)
    {

      if ([v23 shouldAddImagesToPaper])
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    v50 = swift_unknownObjectUnownedLoadStrong();
    v49 = sub_2154A1D2C();
    v47 = v13;
    v48 = sub_21549E58C();
    v28 = objc_opt_self();
    v29 = sub_2154A1D2C();

    v30 = [v28 filenameExtensionForUTI_];

    if (!v30)
    {
      sub_2154A1D6C();
      v30 = sub_2154A1D2C();
    }

    v32 = v49;
    v31 = v50;
    v13 = v48;
    v33 = [v50 addAttachmentWithUTI:v49 data:v48 filenameExtension:v30];

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v37 = *(v14 + 16);
        v36 = *(v14 + 24);
        v35 = v36 - v37;
        if (__OFSUB__(v36, v37))
        {
          goto LABEL_53;
        }

        v34 = v47;
        goto LABEL_40;
      }

      v35 = 0;
      v34 = v47;
    }

    else
    {
      if (v15)
      {
        v34 = v47;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_54;
        }

        v35 = HIDWORD(v14) - v14;
LABEL_40:
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        goto LABEL_43;
      }

      v34 = v47;
      v35 = BYTE6(v47);
    }

LABEL_43:
    sub_215361C4C(v33, v35);

    sub_215324170(v14, v34);
LABEL_5:
    v8 += 2;
    if (!--v6)
    {
      return;
    }
  }

  if (qword_27CA59828 == -1)
  {
    goto LABEL_45;
  }

LABEL_55:
  swift_once();
LABEL_45:
  v38 = sub_21549F11C();
  __swift_project_value_buffer(v38, qword_27CA5AF10);
  v39 = sub_21549F0FC();
  v40 = sub_2154A225C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2151A1000, v39, v40, "Attachment size exceeded", v41, 2u);
    MEMORY[0x21606B520](v41, -1, -1);
  }

  sub_215324170(v14, v13);
}

uint64_t sub_2153619F4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_21549E58C();
  v6 = CGImageSourceCreateWithData(v5, 0);

  if (v6)
  {
    v7 = CGImageSourceGetType(v6);
    if (v7)
    {
      v8 = v7;
      sub_2154A1D6C();

      sub_21549F04C();
      v9 = sub_21549F03C();
      v10 = *(v9 - 8);
      result = (*(v10 + 48))(v4, 1, v9);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {

        return (*(v10 + 32))(a1, v4, v9);
      }

      return result;
    }
  }

  if (qword_27CA59828 != -1)
  {
    swift_once();
  }

  v12 = sub_21549F11C();
  __swift_project_value_buffer(v12, qword_27CA5AF10);
  v13 = sub_21549F0FC();
  v14 = sub_2154A226C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2151A1000, v13, v14, "Failed to determine image content type. Falling back to generic UTTypeImage", v15, 2u);
    MEMORY[0x21606B520](v15, -1, -1);
  }

  return sub_21549EFFC();
}

void sub_215361C4C(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong shouldAddMediaAsynchronously];

  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = v6;
  v9 = *MEMORY[0x277D36038] < 0 || *MEMORY[0x277D36038] < a2;
  [v6 setShouldAddMediaAsynchronously_];

  v10 = swift_unknownObjectUnownedLoadStrong();
  v11 = [v10 selectedRange];
  v13 = v12;

  v14 = swift_unknownObjectUnownedLoadStrong();
  v15 = [v14 editorController];

  v16 = [v15 attachmentInsertionController];
  v17 = [v16 addAttachment:a1 atTextLocation:&v11[v13]];

  v18 = swift_unknownObjectUnownedLoadStrong();
  v19 = [v18 editorController];

  if (v19)
  {
    [v19 setDoNotAdvanceInsertionPointAfterInsertingAttachment_];
  }

  v20 = swift_unknownObjectUnownedLoadStrong();
  v21 = [v20 managedObjectContext];

  [v21 ic_save];
  v22 = swift_unknownObjectUnownedLoadStrong();
  [v22 setShouldAddMediaAsynchronously_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AFA8);
  sub_2154A1D9C();
  v23 = swift_unknownObjectUnownedLoadStrong();
  v24 = objc_allocWithZone(MEMORY[0x277D35978]);
  v25 = sub_2154A1D2C();

  v26 = [v24 initWithSubTrackerName:v25 view:v23];

  [v26 submitAttachmentAddEventForAttachment_];
}

Swift::Void __swiftcall VisualAssetImportController.picker(_:didFinishPicking:)(PHPickerViewController *_, Swift::OpaquePointer didFinishPicking)
{
  v47 = sub_21549F03C();
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2154A199C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [(PHPickerViewController *)_ presentingViewController];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_215365B9C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2151BD7E4;
    aBlock[3] = &block_descriptor_6;
    v14 = _Block_copy(aBlock);

    [v12 dismissViewControllerAnimated:1 completion:v14];
    _Block_release(v14);
  }

  v15 = OBJC_IVAR___ICVisualAssetImportController_isShowing;
  swift_beginAccess();
  *(v2 + v15) = 0;
  v16 = *(didFinishPicking._rawValue + 2);
  if (v16)
  {
    v44 = v2;
    v45 = v5;
    v49 = MEMORY[0x277D84F90];
    v19 = *(v8 + 16);
    v18 = v8 + 16;
    v17 = v19;
    v20 = didFinishPicking._rawValue + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v21 = *(v18 + 56);
    do
    {
      v17(v10, v20, v7);
      sub_2154A198C();
      v22 = (*(v18 - 8))(v10, v7);
      MEMORY[0x216068AC0](v22);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v43 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2154A1F8C();
      }

      sub_2154A1FAC();
      v20 += v21;
      --v16;
    }

    while (v16);
    v23 = v49;
    v24 = OBJC_IVAR___ICVisualAssetImportController_paperImageInsertionController;
    v25 = *(v44 + OBJC_IVAR___ICVisualAssetImportController_paperImageInsertionController);
    if (v25 && [v25 shouldAddImagesToPaper])
    {
      v49 = MEMORY[0x277D84F90];
      if (v23 >> 62)
      {
        goto LABEL_26;
      }

      v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v45; v26; i = v45)
      {
        v43 = v24;
        v28 = 0;
        v45 = v23 & 0xC000000000000001;
        v24 = v23 & 0xFFFFFFFFFFFFFF8;
        v29 = (i + 8);
        while (1)
        {
          if (v45)
          {
            v30 = MEMORY[0x216069960](v28, v23);
          }

          else
          {
            if (v28 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v30 = *(v23 + 8 * v28 + 32);
          }

          v31 = v30;
          v32 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          v33 = v46;
          sub_21549EFFC();
          sub_21549EF7C();
          (*v29)(v33, v47);
          v34 = sub_2154A1D2C();

          v35 = [v31 hasItemConformingToTypeIdentifier_];

          if (v35)
          {
            sub_2154A2E0C();
            sub_2154A2E4C();
            sub_2154A2E5C();
            sub_2154A2E1C();
          }

          else
          {
          }

          ++v28;
          if (v32 == v26)
          {
            v24 = v43;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v26 = sub_2154A2C8C();
      }

LABEL_27:
      v36 = sub_215365A20(v23, &qword_27CA5A360, 0x277CCAA88, &qword_27CA5AF98, sub_2153EE234);

      v38 = sub_215365A20(v37, &qword_27CA5A360, 0x277CCAA88, &qword_27CA5AF98, sub_2153EE234);

      v49 = v36;
      sub_215364D68(v38);
      v39 = sub_215364B50(v49, sub_2153259E4, &qword_27CA5A360, 0x277CCAA88, &qword_27CA5AF98);

      v40 = *(v44 + v24);
      if (v40)
      {
        sub_2151A6C9C(0, &qword_27CA5A360);
        v41 = v40;
        v42 = sub_2154A1F3C();

        [v41 addImagesToPaperWithItemProviders_];
      }

      else
      {
      }

      sub_215362548(v39);
    }

    else
    {
      sub_215362548(v23);
    }
  }
}

void sub_2153624B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectUnownedLoadStrong();

    v3 = [v2 editorController];
    [v3 cleanupAfterAddImageAttachmentOperation];
  }
}

void sub_215362548(unint64_t a1)
{
  v71 = a1;
  v2 = sub_2154A10EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2154A110C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v70 = [Strong managedObjectContext];

  if (!v70)
  {
    return;
  }

  v11 = swift_unknownObjectUnownedLoadStrong();
  v72 = [v11 workerManagedObjectContext];

  if (!v72)
  {
    v24 = v70;
LABEL_12:

    return;
  }

  v12 = swift_unknownObjectUnownedLoadStrong();
  v66 = [v12 editorController];

  if (!v66)
  {

    v24 = v72;
    goto LABEL_12;
  }

  v13 = [v66 attachmentInsertionController];
  if (!v13)
  {

    v24 = v66;
    goto LABEL_12;
  }

  v58 = v13;
  v60 = v7;
  v62 = v6;
  v63 = v3;
  v64 = v2;
  v14 = dispatch_group_create();
  v15 = swift_unknownObjectUnownedLoadStrong();
  v69 = [v15 objectID];

  v68 = swift_allocObject();
  *(v68 + 16) = MEMORY[0x277D84F90];
  v16 = swift_unknownObjectUnownedLoadStrong();
  v17 = [v16 isFirstResponder];

  if (v17)
  {
    v18 = swift_unknownObjectUnownedLoadStrong();
    v19 = [v18 selectedRange];

    if (v19 != sub_21549E0EC())
    {
      v21 = swift_unknownObjectUnownedLoadStrong();
      v22 = [v21 selectedRange];
      goto LABEL_17;
    }
  }

  v20 = swift_unknownObjectUnownedLoadStrong();
  v21 = [v20 textStorage];

  if (v21)
  {
    v22 = [v21 ic_range];
LABEL_17:
    v25 = v22;
    v26 = v23;

    v57 = &v25[v26];
    goto LABEL_18;
  }

  v57 = 0;
LABEL_18:
  v61 = v5;
  v27 = v71;
  if (v71 >> 62)
  {
    v28 = sub_2154A2C8C();
  }

  else
  {
    v28 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = v9;
  v65 = v1;
  if (v28)
  {
    if (v28 < 1)
    {
      __break(1u);
      return;
    }

    v29 = 0;
    v30 = v27 & 0xC000000000000001;
    v67 = &v76;
    v31 = v68;
    do
    {
      if (v30)
      {
        v32 = MEMORY[0x216069960](v29, v27);
      }

      else
      {
        v32 = *(v27 + 8 * v29 + 32);
      }

      v33 = v32;
      sub_215365CC8(v32);
      if (v34)
      {
        dispatch_group_enter(v14);
        v35 = sub_2154A1D2C();

        v36 = swift_allocObject();
        v37 = v72;
        v36[2] = v14;
        v36[3] = v37;
        v38 = v69;
        v36[4] = v69;
        v36[5] = v31;
        v78 = sub_215365FA0;
        v79 = v36;
        aBlock = MEMORY[0x277D85DD0];
        v75 = 1107296256;
        v76 = sub_2153641B0;
        v77 = &block_descriptor_19;
        v39 = _Block_copy(&aBlock);
        v40 = v14;
        v41 = v72;
        v42 = v38;

        v43 = [v33 loadFileRepresentationForTypeIdentifier:v35 completionHandler:v39];
        _Block_release(v39);

        v27 = v71;
        v33 = v35;
      }

      ++v29;
    }

    while (v28 != v29);
  }

  sub_2151A6C9C(0, &unk_2811995C0);
  v71 = sub_2154A245C();
  v44 = swift_allocObject();
  v45 = v68;
  v44[2] = v72;
  v44[3] = v45;
  v46 = v58;
  v44[4] = v70;
  v44[5] = v46;
  v48 = v65;
  v47 = v66;
  v44[6] = v57;
  v44[7] = v47;
  v44[8] = v48;
  v78 = sub_215365F8C;
  v79 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v75 = 1107296256;
  v76 = sub_2151BD7E4;
  v77 = &block_descriptor_13;
  v49 = _Block_copy(&aBlock);
  v72 = v72;

  v70 = v70;
  v50 = v46;
  v51 = v66;
  v52 = v48;
  v53 = v59;
  sub_2154A10FC();
  v73 = MEMORY[0x277D84F90];
  sub_215365BE4(&qword_281199700, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151B5F78();
  v54 = v61;
  v55 = v64;
  sub_2154A2BEC();
  v56 = v71;
  sub_2154A240C();
  _Block_release(v49);

  (*(v63 + 8))(v54, v55);
  (*(v60 + 8))(v53, v62);
}

void sub_215362CC4(uint64_t a1)
{
  v2 = sub_21549E56C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = sub_21549E43C();
  if (v13)
  {
    if (qword_27CA59828 != -1)
    {
      swift_once();
    }

    v14 = sub_21549F11C();
    __swift_project_value_buffer(v14, qword_27CA5AF10);
    (*(v3 + 16))(v5, a1, v2);
    v15 = sub_21549F0FC();
    v16 = sub_2154A226C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v52 = v18;
      *v17 = 136315138;
      sub_215365BE4(&qword_281199D20, 255, MEMORY[0x277CC9260]);
      v19 = sub_2154A2F7C();
      v21 = v20;
      (*(v3 + 8))(v5, v2);
      v22 = sub_215348D98(v19, v21, &v52);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_2151A1000, v15, v16, "Cannot retrieve file size for %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x21606B520](v18, -1, -1);
      v23 = v17;
LABEL_6:
      MEMORY[0x21606B520](v23, -1, -1);

      return;
    }

    (*(v3 + 8))(v5, v2);
    return;
  }

  v24 = v12;
  Strong = swift_unknownObjectUnownedLoadStrong();
  LODWORD(v24) = [Strong attachmentExceedsMaxSizeAllowed_];

  if (v24)
  {
    if (qword_27CA59828 != -1)
    {
      swift_once();
    }

    v26 = sub_21549F11C();
    __swift_project_value_buffer(v26, qword_27CA5AF10);
    v51 = sub_21549F0FC();
    v27 = sub_2154A225C();
    if (os_log_type_enabled(v51, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2151A1000, v51, v27, "Attachment size exceeded", v28, 2u);
      MEMORY[0x21606B520](v28, -1, -1);
    }

    goto LABEL_25;
  }

  v29 = swift_unknownObjectUnownedLoadStrong();
  v30 = sub_21549E49C();
  v51 = [v29 addAttachmentWithFileURL_];

  if (v51)
  {
    v31 = sub_21549E43C();
    if (v32)
    {
      if (qword_27CA59828 != -1)
      {
        swift_once();
      }

      v33 = sub_21549F11C();
      __swift_project_value_buffer(v33, qword_27CA5AF10);
      (*(v3 + 16))(v11, a1, v2);
      v34 = sub_21549F0FC();
      v35 = sub_2154A226C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v52 = v37;
        *v36 = 136315138;
        sub_215365BE4(&qword_281199D20, 255, MEMORY[0x277CC9260]);
        v38 = sub_2154A2F7C();
        v40 = v39;
        (*(v3 + 8))(v11, v2);
        v41 = sub_215348D98(v38, v40, &v52);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_2151A1000, v34, v35, "Cannot determine the file size of the url: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x21606B520](v37, -1, -1);
        MEMORY[0x21606B520](v36, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v11, v2);
      }

      return;
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }

    sub_215361C4C(v51, v31);
LABEL_25:
    v50 = v51;

    return;
  }

  if (qword_27CA59828 != -1)
  {
    swift_once();
  }

  v42 = sub_21549F11C();
  __swift_project_value_buffer(v42, qword_27CA5AF10);
  (*(v3 + 16))(v8, a1, v2);
  v15 = sub_21549F0FC();
  v43 = sub_2154A226C();
  if (os_log_type_enabled(v15, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v52 = v45;
    *v44 = 136315138;
    sub_215365BE4(&qword_281199D20, 255, MEMORY[0x277CC9260]);
    v46 = sub_2154A2F7C();
    v48 = v47;
    (*(v3 + 8))(v8, v2);
    v49 = sub_215348D98(v46, v48, &v52);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_2151A1000, v15, v43, "Could not add attachment with url: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x21606B520](v45, -1, -1);
    v23 = v44;
    goto LABEL_6;
  }

  (*(v3 + 8))(v8, v2);
}

void sub_215363458(uint64_t a1, void *a2, NSObject *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v71 - v13;
  v15 = sub_21549E56C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  if (a2)
  {
    v24 = a2;
    dispatch_group_leave(a3);
    if (qword_27CA59828 != -1)
    {
      swift_once();
    }

    v25 = sub_21549F11C();
    __swift_project_value_buffer(v25, qword_27CA5AF10);
    v26 = a2;
    v27 = sub_21549F0FC();
    v28 = sub_2154A226C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v76 = a2;
      aBlock[0] = v30;
      *v29 = 136315138;
      v31 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88);
      v32 = sub_2154A1D9C();
      v34 = sub_215348D98(v32, v33, aBlock);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2151A1000, v27, v28, "Error loading file representation: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x21606B520](v30, -1, -1);
      MEMORY[0x21606B520](v29, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v72 = v23;
    v73 = a4;
    v74 = a5;
    v75 = a3;
    v35 = &v71 - v22;
    isEscapingClosureAtFileLocation = v21;
    sub_215365FAC(a1, v14);
    if ((*(v16 + 48))(v14, 1, isEscapingClosureAtFileLocation) == 1)
    {
      sub_2151ADCD8(v14, &unk_27CA5B090);
      dispatch_group_leave(v75);
      if (qword_27CA59828 != -1)
      {
        swift_once();
      }

      v37 = sub_21549F11C();
      __swift_project_value_buffer(v37, qword_27CA5AF10);
      v38 = sub_21549F0FC();
      v39 = sub_2154A226C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_2151A1000, v38, v39, "loaded URL is nil", v40, 2u);
        MEMORY[0x21606B520](v40, -1, -1);
      }
    }

    else
    {
      v41 = v16;
      v42 = *(v16 + 32);
      v42(v35, v14, isEscapingClosureAtFileLocation);
      v43 = sub_21549E43C();
      if (v44)
      {
        v45 = v41;
        dispatch_group_leave(v75);
        if (qword_27CA59828 != -1)
        {
          swift_once();
        }

        v46 = sub_21549F11C();
        __swift_project_value_buffer(v46, qword_27CA5AF10);
        v47 = v72;
        (*(v41 + 16))(v72, v35, isEscapingClosureAtFileLocation);
        v48 = v35;
        v49 = sub_21549F0FC();
        v50 = sub_2154A226C();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v75 = v48;
          v53 = v41;
          v54 = v52;
          aBlock[0] = v52;
          *v51 = 136315138;
          sub_215365BE4(&qword_281199D20, 255, MEMORY[0x277CC9260]);
          v55 = sub_2154A2F7C();
          v57 = v56;
          v58 = *(v53 + 8);
          v58(v47, isEscapingClosureAtFileLocation);
          v59 = sub_215348D98(v55, v57, aBlock);

          *(v51 + 4) = v59;
          _os_log_impl(&dword_2151A1000, v49, v50, "Cannot determine the file size of the url: %s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v54);
          MEMORY[0x21606B520](v54, -1, -1);
          MEMORY[0x21606B520](v51, -1, -1);

          v58(v75, isEscapingClosureAtFileLocation);
          return;
        }
      }

      else
      {
        v71 = a6 + 16;
        v60 = v43;
        (*(v41 + 16))(v19, v35, isEscapingClosureAtFileLocation);
        v61 = *(v41 + 80);
        v72 = v41;
        v62 = (v61 + 48) & ~v61;
        v63 = swift_allocObject();
        v65 = v73;
        v64 = v74;
        *(v63 + 2) = v73;
        *(v63 + 3) = v64;
        *(v63 + 4) = v60;
        v66 = v75;
        *(v63 + 5) = v75;
        v42(v63 + v62, v19, isEscapingClosureAtFileLocation);
        *(v63 + ((v17 + v62 + 7) & 0xFFFFFFFFFFFFFFF8)) = v71;
        v48 = v35;
        v49 = swift_allocObject();
        v49[2].isa = sub_21536601C;
        v49[3].isa = v63;
        aBlock[4] = sub_2153252BC;
        v78 = v49;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2152F1C04;
        aBlock[3] = &block_descriptor_28;
        v67 = _Block_copy(aBlock);
        v45 = v78;
        v47 = v65;
        v68 = v74;
        v69 = v66;

        [v47 performBlockAndWait_];
        _Block_release(v67);
        v72[1](v48, isEscapingClosureAtFileLocation);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
      }

      isa = v45[1].isa;
      isa(v47, isEscapingClosureAtFileLocation);
      isa(v48, isEscapingClosureAtFileLocation);
    }
  }
}

void sub_215363C4C(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, void *a6)
{
  v12 = sub_21549E56C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 objectWithID_];
  v38[3] = sub_2151A6C9C(0, &unk_27CA5AB90);
  v38[0] = v16;
  v17 = sub_2153D5A3C(v38);
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  if ([v17 attachmentExceedsMaxSizeAllowed_])
  {
    dispatch_group_leave(a4);
    if (qword_27CA59828 != -1)
    {
      swift_once();
    }

    v18 = sub_21549F11C();
    __swift_project_value_buffer(v18, qword_27CA5AF10);
    v19 = sub_21549F0FC();
    v20 = sub_2154A225C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2151A1000, v19, v20, "Attachment size exceeded", v21, 2u);
      MEMORY[0x21606B520](v21, -1, -1);
    }

LABEL_20:

    goto LABEL_21;
  }

  v22 = sub_21549E49C();
  v23 = [v17 addAttachmentWithFileURL_];

  if (v23)
  {
    if (([v23 ic_obtainPermanentObjectIDIfNecessary] & 1) == 0)
    {
      dispatch_group_leave(a4);
      if (qword_27CA59828 != -1)
      {
        swift_once();
      }

      v35 = sub_21549F11C();
      __swift_project_value_buffer(v35, qword_27CA5AF10);
      v19 = sub_21549F0FC();
      v36 = sub_2154A226C();
      if (os_log_type_enabled(v19, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2151A1000, v19, v36, "Could not obtain attachment ID", v37, 2u);
        MEMORY[0x21606B520](v37, -1, -1);
      }

      goto LABEL_20;
    }

    v24 = [v23 objectID];
    v25 = swift_beginAccess();
    MEMORY[0x216068AC0](v25);
    if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2154A1F8C();
    }

    sub_2154A1FAC();
    swift_endAccess();
    dispatch_group_leave(a4);
  }

  else
  {
    dispatch_group_leave(a4);
    if (qword_27CA59828 != -1)
    {
      swift_once();
    }

    v26 = sub_21549F11C();
    __swift_project_value_buffer(v26, qword_27CA5AF10);
    (*(v13 + 16))(v15, a5, v12);
    v27 = sub_21549F0FC();
    v28 = sub_2154A226C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38[0] = v30;
      *v29 = 136315138;
      sub_215365BE4(&qword_281199D20, 255, MEMORY[0x277CC9260]);
      v31 = sub_2154A2F7C();
      v33 = v32;
      (*(v13 + 8))(v15, v12);
      v34 = sub_215348D98(v31, v33, v38);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2151A1000, v27, v28, "Could not add attachment with url: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x21606B520](v30, -1, -1);
      MEMORY[0x21606B520](v29, -1, -1);

LABEL_21:
      return;
    }

    (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_2153641B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_21549E51C();
    v10 = sub_21549E56C();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_21549E56C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_2151ADCD8(v8, &unk_27CA5B090);
}

id sub_215364304(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v39 = a4;
  v40 = a5;
  v41 = a3;
  v35 = a7;
  ObjectType = swift_getObjectType();
  v10 = sub_2154A315C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  sub_2154A261C();
  swift_beginAccess();
  v13 = *(a2 + 16);
  if (v13 >> 62)
  {
    v14 = sub_2154A2C8C();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_2154A25FC();
    return [a6 setDoNotAdvanceInsertionPointAfterInsertingAttachment_];
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v11;
    v33 = v10;
    v37 = v13 & 0xC000000000000001;
    v38 = sub_2151A6C9C(0, &qword_281199690);

    v15 = 0;
    while (1)
    {
      v16 = v37 ? MEMORY[0x216069960](v15, v13) : *(v13 + 8 * v15 + 32);
      v17 = v16;
      v18 = [v41 objectWithID_];
      v45[3] = sub_2151A6C9C(0, &unk_27CA5AB90);
      v45[0] = v18;
      sub_21533FC88(v45, v44);
      if (!swift_dynamicCast())
      {
        break;
      }

      v19 = v43[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v45);

      [a6 setDoNotAdvanceInsertionPointAfterInsertingAttachment_];
      v20 = [a6 textView];
      if (v20)
      {
        v21 = v20;
        v45[0] = ObjectType;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AFA8);
        sub_2154A1D9C();
        v22 = objc_allocWithZone(MEMORY[0x277D35978]);
        v23 = v21;
        v24 = sub_2154A1D2C();

        v25 = [v22 initWithSubTrackerName:v24 view:v23];

        [v25 submitAttachmentAddEventForAttachment_];
      }

      ++v15;

      if (v14 == v15)
      {

        goto LABEL_13;
      }
    }
  }

  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_2154A2D9C();

  strcpy(v43, "Cannot cast ");
  BYTE5(v43[1]) = 0;
  HIWORD(v43[1]) = -5120;
  sub_21533FC88(v45, v44);
  v27 = v34;
  sub_2154A314C();
  v28 = v33;
  v29 = sub_2154A2F7C();
  MEMORY[0x2160689F0](v29);

  v30 = *(v32 + 8);
  v30(v27, v28);
  MEMORY[0x2160689F0](544432416, 0xE400000000000000);
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AFA0);
  v44[0] = v38;
  sub_2154A314C();
  v31 = sub_2154A2F7C();
  MEMORY[0x2160689F0](v31);

  v30(v27, v28);
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

id VisualAssetImportController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisualAssetImportController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21536496C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A608);
      v7 = *(sub_21549E93C() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_21549E93C();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_215364B50(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_2154A2C8C();
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v10, 0);

    a5 = sub_2153651D8(&v12, (a2 + 32), v10, a1, a3, a4, a5);
    sub_2151A66EC();
    if (a5 == v10)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v10 = *(a1 + 16);
    if (!v10)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

void sub_215364C3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_2151A6C9C(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_215364D68(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2154A2C3C();
    sub_2151A6C9C(0, &qword_27CA5A360);
    sub_21533FBE4(&qword_27CA5AF98, &qword_27CA5A360);
    sub_2154A20FC();
    v3 = v30;
    v25 = v31;
    v4 = v32;
    v27 = v33;
    v5 = v34;
  }

  else
  {
    v27 = 0;
    v6 = -1 << *(a1 + 32);
    v25 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
  }

  sub_2151A6C9C(0, &qword_27CA5A360);
  v9 = (v4 + 64) >> 6;
  v26 = v3;
  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  v14 = sub_2154A2CDC();
  if (!v14)
  {
LABEL_30:
    sub_2151A66EC();
    return;
  }

  v28 = v14;
  swift_dynamicCast();
  for (i = v29; ; i = v29)
  {
    v15 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {
      v16 = i;
      v17 = sub_2154A2CEC();

      if ((v17 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (!*(v15 + 16) || (v19 = sub_2154A290C(), v20 = -1 << *(v15 + 32), v21 = v19 & ~v20, ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0))
      {
LABEL_9:
        sub_2153EE234(&v28, i);

        v3 = v26;
        if (v26 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v15 + 48) + 8 * v21);
        v24 = sub_2154A291C();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    v18 = sub_2153EB3F0(i);

    v3 = v26;
    if (v26 < 0)
    {
      goto LABEL_18;
    }

LABEL_10:
    if (!v5)
    {
      break;
    }

    v10 = v27;
LABEL_17:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v29 = *(*(v3 + 48) + ((v10 << 9) | (8 * v12)));
  }

  v11 = v27;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      goto LABEL_30;
    }

    v5 = *(v25 + 8 * v10);
    ++v11;
    if (v5)
    {
      v27 = v10;
      goto LABEL_17;
    }
  }

  __break(1u);
}

void *sub_215365080(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_2153651D8(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v14 = 0;
    v23 = -1 << *(v8 + 32);
    v12 = v8 + 56;
    v13 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v15 = v25 & *(v8 + 56);
    v16 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    goto LABEL_32;
  }

  sub_2154A2C3C();
  sub_2151A6C9C(0, a5);
  sub_21533FBE4(a7, a5);
  result = sub_2154A20FC();
  v8 = v31;
  v12 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v16)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (v16 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v17 = 0;
  v27 = v13;
  a5 = ((v13 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_2154A2CDC())
      {
        goto LABEL_30;
      }

      sub_2151A6C9C(0, v28);
      swift_dynamicCast();
      result = v30;
      v16 = a3;
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v14;
    if (!v15)
    {
      break;
    }

    v20 = v14;
LABEL_13:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    result = *(*(v8 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v16)
    {
      v17 = v16;
      goto LABEL_30;
    }

    ++a2;
    v17 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v14 = v20;
      goto LABEL_13;
    }
  }

  v15 = 0;
  if (a5 <= (v14 + 1))
  {
    v26 = (v14 + 1);
  }

  else
  {
    v26 = a5;
  }

  v14 = v26 - 1;
LABEL_30:
  v13 = v27;
LABEL_32:
  *v10 = v8;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  return v17;
}

id sub_215365408(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v16[3] = ObjectType;
  v16[4] = &off_282750A00;
  v16[0] = a2;
  v5 = type metadata accessor for VisualAssetCaptureController();
  v6 = objc_allocWithZone(v5);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v16, ObjectType);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v15[3] = ObjectType;
  v15[4] = &off_282750A00;
  v15[0] = v11;
  *&v6[OBJC_IVAR____TtC11NotesEditor28VisualAssetCaptureController_note] = a1;
  sub_215333D74(v15, &v6[OBJC_IVAR____TtC11NotesEditor28VisualAssetCaptureController_delegate]);
  v14.receiver = v6;
  v14.super_class = v5;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return v12;
}

uint64_t sub_215365564(uint64_t a1)
{
  v2 = sub_21549E70C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_215365BE4(&qword_281199D00, 255, MEMORY[0x277CC95F0]);
  result = MEMORY[0x216068C70](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2153EE480(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_215365764(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AF80);
  v4 = sub_215365C2C();
  result = MEMORY[0x216068C70](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      v8 = v7;
      sub_2153EE870(&v9, v7);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2153657FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for TextList(0);
  v4 = v3;
  v5 = sub_215365BE4(&qword_27CA59D00, 255, type metadata accessor for TextList);
  result = MEMORY[0x216068C70](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_2153EE848(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2153658BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ComponentKey(0);
  v4 = v3;
  v5 = sub_215365BE4(&qword_27CA59D10, 255, type metadata accessor for ComponentKey);
  result = MEMORY[0x216068C70](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_2153EEA18(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_21536597C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x216068C70](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2153EEBFC(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_215365A20(unint64_t a1, unint64_t *j, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2154A2C8C())
  {
    v11 = sub_2151A6C9C(0, j);
    v12 = sub_21533FBE4(a4, j);
    result = MEMORY[0x216068C70](i, v11, v12);
    v17 = result;
    if (v9)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; j = (j + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x216069960](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v15);

      if (v9 == v14)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v14 = sub_2154A2C8C();
  result = a4;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_215365BE4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_215365C2C()
{
  result = qword_27CA5AF88;
  if (!qword_27CA5AF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5AF80);
    sub_21533FBE4(&qword_27CA5AF90, &unk_27CA5C800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5AF88);
  }

  return result;
}

uint64_t sub_215365CC8(void *a1)
{
  v2 = sub_21549F03C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549EFFC();
  sub_21549EF7C();
  v6 = *(v3 + 8);
  v6(v5, v2);
  v7 = sub_2154A1D2C();

  v8 = [a1 hasItemConformingToTypeIdentifier_];

  if (v8)
  {
    sub_21549EFFC();
LABEL_5:
    v11 = sub_21549EF7C();
    v6(v5, v2);
    return v11;
  }

  sub_21549F00C();
  sub_21549EF7C();
  v6(v5, v2);
  v9 = sub_2154A1D2C();

  v10 = [a1 hasItemConformingToTypeIdentifier_];

  if (v10)
  {
    sub_21549F00C();
    goto LABEL_5;
  }

  if (qword_27CA59828 != -1)
  {
    swift_once();
  }

  v12 = sub_21549F11C();
  __swift_project_value_buffer(v12, qword_27CA5AF10);
  v13 = a1;
  v14 = sub_21549F0FC();
  v15 = sub_2154A226C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_2151A1000, v14, v15, "Item Provider %@ doesn't have a type conforming to image or video", v16, 0xCu);
    sub_2151ADCD8(v17, &unk_27CA59E90);
    MEMORY[0x21606B520](v17, -1, -1);
    MEMORY[0x21606B520](v16, -1, -1);
  }

  return 0;
}

uint64_t sub_215365FAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21536601C()
{
  v1 = *(sub_21549E56C() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_215363C4C(v3, v4, v5, v6, v0 + v2, v7);
}

uint64_t sub_2153660B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2154A25FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_215366128()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5AFB0);
  __swift_project_value_buffer(v0, qword_27CA5AFB0);
  return sub_21549F0CC();
}

uint64_t sub_215366280(uint64_t a1)
{
  v3 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_2153662D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_2153663E8()
{
  v1 = OBJC_IVAR___LinkEditorController_addApproach;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_215366480(uint64_t a1)
{
  v3 = OBJC_IVAR___LinkEditorController_addApproach;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *LinkEditorController.init(textSelection:addApproach:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = type metadata accessor for LinkEditorView();
  v7 = MEMORY[0x28223BE20](v44);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v11 = &v45[-v10 - 8];
  *&v3[OBJC_IVAR___LinkEditorController_viewController] = 0;
  *&v3[OBJC_IVAR___LinkEditorController_delegate] = 0;
  *&v3[OBJC_IVAR___LinkEditorController_linkAcceleratorController] = 0;
  *&v3[OBJC_IVAR___LinkEditorController_linkTextChanged] = 0;
  *&v3[OBJC_IVAR___LinkEditorController_selectedNoteChange] = 0;
  *&v3[OBJC_IVAR___LinkEditorController_selectedURLChange] = 0;
  *&v3[OBJC_IVAR___LinkEditorController_selectedURLTextChange] = 0;
  v12 = &v3[OBJC_IVAR___LinkEditorController_currentQueryString];
  *v12 = 0;
  *(v12 + 1) = 0;
  sub_21536B7BC(a1, &v3[OBJC_IVAR___LinkEditorController_textSelection], type metadata accessor for TextSelection);
  *&v3[OBJC_IVAR___LinkEditorController_addApproach] = a2;
  sub_21536B348(a1);
  v13 = &v3[OBJC_IVAR___LinkEditorController__viewModel];
  swift_beginAccess();
  sub_21549F69C();
  sub_21536BE9C(&unk_27CA5B010, MEMORY[0x277D36360]);
  *v13 = sub_21549FC0C();
  v13[1] = v14;
  swift_endAccess();
  v15 = type metadata accessor for LinkEditorController();
  v46.receiver = v3;
  v46.super_class = v15;
  v16 = objc_msgSendSuper2(&v46, sel_init);
  v17 = objc_allocWithZone(type metadata accessor for LinkEditorViewController());
  *&v17[qword_27CA5AD58] = 0;
  *&v17[qword_27CA5AD60] = 0;
  *&v17[qword_27CA5AD68] = v16;
  v18 = &v16[OBJC_IVAR___LinkEditorController__viewModel];
  swift_beginAccess();
  v19 = *(v18 + 1);
  *&v17[qword_27CA5AD70] = v19;
  v20 = v16;
  swift_retain_n();
  v21 = v20;
  LinkEditorView.init(viewModel:)(v19, v11);
  sub_21536B7BC(v11, v9, type metadata accessor for LinkEditorView);
  v22 = sub_2154A02AC();

  sub_21536B82C(v11, type metadata accessor for LinkEditorView);
  v23 = OBJC_IVAR___LinkEditorController_viewController;
  v24 = *&v21[OBJC_IVAR___LinkEditorController_viewController];
  *&v21[OBJC_IVAR___LinkEditorController_viewController] = v22;

  v25 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  *&v21[v25] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v26 = [objc_opt_self() sharedConfiguration];
  v27 = objc_allocWithZone(type metadata accessor for LinkAcceleratorController());
  v28 = LinkAcceleratorController.init(cloudConfiguration:mode:)(v26, 1);
  v29 = OBJC_IVAR___LinkEditorController_linkAcceleratorController;
  v30 = *&v21[OBJC_IVAR___LinkEditorController_linkAcceleratorController];
  *&v21[OBJC_IVAR___LinkEditorController_linkAcceleratorController] = v28;

  if (*&v21[v29])
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    if (*&v21[v29])
    {
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }
  }

  v31 = *&v21[v23];
  if (v31)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = v21;
    v33 = v21;
    v34 = v31;
    v35 = sub_2154A02BC();
    v37 = (v36 + *(v44 + 60));
    v38 = *v37;
    *v37 = sub_21536B824;
    v37[1] = v32;
    sub_21532594C(v38);
    v35(v45, 0);
  }

  sub_215366DF0();
  v39 = *&v21[v23];
  if (v39)
  {
    v40 = v39;
    v41 = sub_21534F3A0();

    v42 = sub_21549F62C();

    [v41 setEnabled_];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_21536B82C(a1, type metadata accessor for TextSelection);
  return v21;
}

void sub_215366ACC(char *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = *&a1[OBJC_IVAR___LinkEditorController_viewController];
  if (v3)
  {
    v8[4] = sub_21536C4A0;
    v8[5] = v2;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_2151BD7E4;
    v8[3] = &block_descriptor_114;
    v4 = _Block_copy(v8);
    v5 = a1;
    v6 = v3;

    [v6 dismissViewControllerAnimated:1 completion:v4];

    _Block_release(v4);
  }

  else
  {
    v7 = a1;
  }
}

uint64_t sub_215366DF0()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B0A0);
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  MEMORY[0x28223BE20](v1);
  v27 = &ObjectType - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B0A8);
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x28223BE20](v4);
  v26 = &ObjectType - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B0B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &ObjectType - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B0B8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &ObjectType - v13;
  swift_beginAccess();

  sub_21549F67C();

  sub_2151ACC5C(&qword_27CA5B0C0, &qword_27CA5B0B0);
  sub_21549F3CC();
  (*(v8 + 8))(v10, v7);
  v15 = swift_allocObject();
  v16 = ObjectType;
  *(v15 + 16) = v0;
  *(v15 + 24) = v16;
  sub_2151ACC5C(&qword_27CA5B0C8, &qword_27CA5B0B8);
  v17 = v0;
  v18 = sub_21549F3EC();

  (*(v12 + 8))(v14, v11);
  *&v17[OBJC_IVAR___LinkEditorController_linkTextChanged] = v18;

  v19 = v27;
  sub_21549F5DC();

  sub_2151ACC5C(&qword_27CA5B0D0, &qword_27CA5B0A0);
  v20 = v26;
  v21 = v28;
  sub_21549F3CC();
  (*(v29 + 8))(v19, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2151ACC5C(&qword_27CA5B0D8, &qword_27CA5B0A8);
  v22 = v30;
  v23 = sub_21549F3EC();

  (*(v31 + 8))(v20, v22);
  *&v17[OBJC_IVAR___LinkEditorController_selectedNoteChange] = v23;
}

uint64_t sub_2153672CC(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v37 - v5;
  v6 = sub_2154A10EC();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2154A110C();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  swift_beginAccess();

  v14 = sub_21549F65C();
  v16 = v15;

  if (v12 == v14 && v13 == v16)
  {
  }

  v18 = sub_2154A2FAC();

  if ((v18 & 1) == 0 && (v12 != 9142498 || v13 != 0xA300000000000000))
  {
    result = sub_2154A2FAC();
    if ((result & 1) == 0)
    {
      v37 = sub_21536BD88();
      v39 = v20;

      v21 = sub_21549F5BC();

      if (v21)
      {

        sub_21549F5CC();
      }

      sub_21549F55C();

      sub_2151A6C9C(0, &unk_2811995C0);
      v22 = sub_2154A245C();
      v23 = swift_allocObject();
      *(v23 + 16) = a2;
      aBlock[4] = sub_21536BEE4;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2151BD7E4;
      aBlock[3] = &block_descriptor_87;
      v24 = _Block_copy(aBlock);
      v38 = a2;

      sub_2154A10FC();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21536BE9C(&qword_281199700, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
      sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
      sub_2154A2BEC();
      MEMORY[0x216069000](0, v11, v8, v24);
      _Block_release(v24);

      (*(v42 + 8))(v8, v6);
      (*(v40 + 8))(v11, v41);

      v25 = sub_21549F65C();
      v27 = v26;

      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {

        v29 = 0;
      }

      else
      {
        v30 = sub_2154A1E0C();

        v29 = v30 == 1;
      }

      v31 = sub_2154A202C();
      v32 = v43;
      (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
      sub_2154A1FFC();
      v33 = v38;
      v34 = sub_2154A1FEC();
      v35 = swift_allocObject();
      v36 = MEMORY[0x277D85700];
      *(v35 + 16) = v34;
      *(v35 + 24) = v36;
      *(v35 + 32) = v33;
      *(v35 + 40) = v29;
      sub_2152F4D50(0, 0, v32, &unk_2154BF7B8, v35);
    }
  }

  return result;
}

void sub_21536786C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___LinkEditorController_viewController);
  if (v1)
  {
    v2 = v1;
    v4 = sub_21534F3A0();

    v3 = sub_21549F62C();

    [v4 setEnabled_];
  }
}

uint64_t sub_215367914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 256) = a5;
  *(v5 + 120) = a4;
  v6 = sub_2154A10EC();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  v7 = sub_2154A110C();
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();
  v8 = sub_21549F8CC();
  *(v5 + 176) = v8;
  *(v5 + 184) = *(v8 - 8);
  *(v5 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  sub_2154A1FFC();
  *(v5 + 216) = sub_2154A1FEC();
  v10 = sub_2154A1FCC();
  *(v5 + 224) = v10;
  *(v5 + 232) = v9;

  return MEMORY[0x2822009F8](sub_215367B08, v10, v9);
}

uint64_t sub_215367B08()
{
  v1 = *(v0[15] + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  v0[30] = v1;
  if (v1)
  {
    (*(v0[23] + 56))(v0[26], 1, 1, v0[22]);
    v1;
    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_215367D0C;

    return LinkAcceleratorController.presentLinkAcceleratorIfNecessary()();
  }

  else
  {

    if (qword_27CA59830 != -1)
    {
      swift_once();
    }

    v4 = sub_21549F11C();
    __swift_project_value_buffer(v4, qword_27CA5AFB0);
    v5 = sub_21549F0FC();
    v6 = sub_2154A226C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2151A1000, v5, v6, "linkAcceleratorController wasn't available in setupObservers callback.", v7, 2u);
      MEMORY[0x21606B520](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_215367D0C()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x2822009F8](sub_215367E2C, v3, v2);
}

uint64_t sub_215367E2C()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];

  sub_2151ADCD8(v2, &qword_27CA5B140);
  v6 = *(v1 + OBJC_IVAR___ICLinkAcceleratorController_viewController);
  v7 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  swift_beginAccess();
  sub_215324EEC(v6 + v7, v2, &qword_27CA5B140);
  sub_215324EEC(v2, v3, &qword_27CA5B140);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2151ADCD8(v0[25], &qword_27CA5B140);
    if (qword_27CA59830 != -1)
    {
      swift_once();
    }

    v8 = sub_21549F11C();
    __swift_project_value_buffer(v8, qword_27CA5AFB0);
    v9 = sub_21549F0FC();
    v10 = sub_2154A226C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[30];
    v13 = v0[26];
    if (v11)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2151A1000, v9, v10, "Container wasn't available in setupObservers callback.", v14, 2u);
      MEMORY[0x21606B520](v14, -1, -1);
    }

    goto LABEL_18;
  }

  (*(v0[23] + 32))(v0[24], v0[25], v0[22]);
  if (sub_21549F8AC())
  {
    goto LABEL_17;
  }

  swift_beginAccess();

  v15 = sub_21549F65C();
  v17 = v16;

  v18 = sub_21549F89C();
  if (!v19)
  {

    goto LABEL_17;
  }

  if (v15 != v18 || v19 != v17)
  {
    v20 = sub_2154A2FAC();

    if (v20)
    {
      goto LABEL_14;
    }

LABEL_17:
    v13 = v0[26];
    v35 = v0[23];
    v34 = v0[24];
    v36 = v0[22];

    (*(v35 + 8))(v34, v36);
LABEL_18:
    sub_2151ADCD8(v13, &qword_27CA5B140);
    goto LABEL_19;
  }

LABEL_14:
  v21 = *(v0 + 256);

  sub_21549F86C();
  sub_21549F61C();

  sub_21549F87C();
  sub_21549F5FC();

  if (v21 == 1)
  {
    sub_21536BFB8();
  }

  v22 = v0[26];
  v24 = v0[23];
  v23 = v0[24];
  v25 = v0[21];
  v26 = v0[22];
  v40 = v0[20];
  v41 = v0[19];
  v27 = v0[18];
  v39 = v0[17];
  v28 = v0[15];
  v29 = v0[16];

  (*(v24 + 8))(v23, v26);
  sub_2151ADCD8(v22, &qword_27CA5B140);
  sub_2151A6C9C(0, &unk_2811995C0);
  v30 = sub_2154A245C();
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v0[6] = sub_21536BFB0;
  v0[7] = v31;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2151BD7E4;
  v0[5] = &block_descriptor_98;
  v32 = _Block_copy(v0 + 2);
  v33 = v28;
  sub_2154A10FC();
  v0[14] = MEMORY[0x277D84F90];
  sub_21536BE9C(&qword_281199700, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  sub_2154A2BEC();
  MEMORY[0x216069000](0, v25, v27, v32);
  _Block_release(v32);

  (*(v39 + 8))(v27, v29);
  (*(v40 + 8))(v25, v41);

LABEL_19:

  v37 = v0[1];

  return v37();
}

void sub_2153683FC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___LinkEditorController_viewController);
  if (v2)
  {
    v3 = v2;
    v4 = sub_21534F3A0();

    v5 = sub_21549F62C();

    [v4 setEnabled_];
  }

  swift_beginAccess();

  v6 = sub_21549F60C();

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = *(a1 + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
    if (v8)
    {
      v9 = *((*MEMORY[0x277D85000] & **&v8[OBJC_IVAR___ICLinkAcceleratorController_viewController]) + 0x110);
      v10 = v8;
      v9();
    }
  }
}

uint64_t sub_215368550(void **a1)
{
  v2 = sub_2154A10EC();
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2154A110C();
  v5 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_21536A220(v8);
  }

  sub_2151A6C9C(0, &unk_2811995C0);
  v11 = sub_2154A245C();
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  aBlock[4] = sub_21536BE94;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_81;
  v14 = _Block_copy(aBlock);

  sub_2154A10FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21536BE9C(&qword_281199700, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  sub_2154A2BEC();
  MEMORY[0x216069000](0, v7, v4, v14);
  _Block_release(v14);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

void sub_215368898(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + OBJC_IVAR___LinkEditorController_viewController);
    if (v1)
    {
      v2 = v1;
      v4 = sub_21534F3A0();

      v3 = sub_21549F62C();

      [v4 setEnabled_];
    }
  }
}

void sub_215368A18(uint64_t a1)
{
  swift_beginAccess();
  sub_215324EEC(a1 + 16, v9, &qword_27CA5ABC0);
  v2 = v10;
  if (v10)
  {
    v3 = __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v4 = *(v2 - 8);
    MEMORY[0x28223BE20](v3);
    v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    sub_2154A2F8C();
    (*(v4 + 8))(v6, v2);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v7 = sub_2154A1D2C();
  ICAccessibilityPostAnnouncementNotification();
  swift_unknownObjectRelease();
}

char *static LinkEditorController.present(from:delegate:textSelection:addApproach:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TextSelection();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21536B7BC(a3, v10, type metadata accessor for TextSelection);
  v11 = objc_allocWithZone(type metadata accessor for LinkEditorController());
  swift_unknownObjectRetain();
  v12 = LinkEditorController.init(textSelection:addApproach:delegate:)(v10, a4, a2);
  v13 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  *&v12[v13] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v14 = *&v12[OBJC_IVAR___LinkEditorController_viewController];
  if (v14)
  {
    v15 = objc_allocWithZone(MEMORY[0x277D757A0]);
    v16 = v14;
    v17 = [v15 initWithRootViewController_];
    [v17 setModalPresentationStyle_];
    [v17 setPreferredContentSize_];
    [a1 presentViewController:v17 animated:1 completion:0];
  }

  return v12;
}

void sub_215368D40(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___LinkEditorController_viewController);
  if (v3)
  {
    if (a1)
    {
      v7[4] = a1;
      v7[5] = a2;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 1107296256;
      v7[2] = sub_2151BD7E4;
      v7[3] = &block_descriptor_7;
      v5 = _Block_copy(v7);
      v6 = v3;
      sub_2151BD748(a1);
    }

    else
    {
      v6 = v3;
      v5 = 0;
    }

    [v6 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }
}

void sub_215368EF0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = sub_21549E56C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v9 = sub_21549F5BC();

  if (v9)
  {

    v10 = sub_21549F57C();

    if (v10)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v0;
      *(v11 + 24) = v9;
      v12 = *&v0[OBJC_IVAR___LinkEditorController_viewController];
      if (!v12)
      {
        v30 = v0;

        return;
      }

      aBlock[4] = sub_21536C478;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2151BD7E4;
      aBlock[3] = &block_descriptor_60;
      v13 = _Block_copy(aBlock);
      v14 = v0;
      v15 = v9;
      v9 = v12;

      [v9 dismissViewControllerAnimated:1 completion:v13];

      _Block_release(v13);

      goto LABEL_22;
    }

    v19 = objc_opt_self();
    sub_21549F4BC();
    v20 = sub_2154A1D2C();

    v21 = [v19 predicateForNotesWithIdentifier_];

    if (v21)
    {
      v22 = [objc_opt_self() sharedContext];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 managedObjectContext];

        if (v24)
        {
          v25 = [objc_opt_self() notesMatchingPredicate:v21 context:v24];
          sub_2151A6C9C(0, &qword_27CA5C700);
          v26 = sub_2154A1F4C();

          if (v26 >> 62)
          {
            if (sub_2154A2C8C())
            {
              goto LABEL_14;
            }
          }

          else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_14:
            if ((v26 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x216069960](0, v26);
            }

            else
            {
              if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return;
              }

              v27 = *(v26 + 32);
            }

            v28 = v27;

            sub_21536A9AC(v28);

            goto LABEL_22;
          }

          return;
        }
      }
    }

LABEL_22:

    return;
  }

  sub_21549F56C();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2151ADCD8(v4, &unk_27CA5B090);
    v16 = *&v0[OBJC_IVAR___LinkEditorController_linkAcceleratorController];
    if (v16 && (v17 = OBJC_IVAR___ICLinkAcceleratorController_isShowing, swift_beginAccess(), *(v16 + v17) == 1))
    {
      v18 = v16;
      LinkAcceleratorController.hideAccelerator()();
    }

    else
    {
      v29 = *&v1[OBJC_IVAR___LinkEditorController_viewController];
      if (v29)
      {
        [v29 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_215369934(v8);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_215369414(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *&v1[OBJC_IVAR___LinkEditorController_viewController];
  if (v4)
  {
    v11[4] = sub_21536BC20;
    v11[5] = v3;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_2151BD7E4;
    v11[3] = &block_descriptor_53;
    v5 = _Block_copy(v11);
    v6 = v1;
    v7 = a1;
    v8 = v4;

    [v8 dismissViewControllerAnimated:1 completion:v5];

    _Block_release(v5);
  }

  else
  {
    v9 = v1;
    v10 = a1;
  }
}

void sub_215369560(uint64_t a1)
{
  v2 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    swift_unknownObjectRetain();
    sub_21549F4BC();
    v4 = sub_2154A1D2C();

    v5 = a1 + OBJC_IVAR___LinkEditorController_textSelection;
    v6 = type metadata accessor for TextSelection();
    v7 = *(v5 + *(v6 + 28));
    v8 = (v5 + *(v6 + 32));
    v9 = *v8;
    v10 = v8[1];
    v11 = OBJC_IVAR___LinkEditorController_addApproach;
    swift_beginAccess();
    [v3 createNoteLinkAttachment:v4 textSelection:v7 range:v9 addApproach:{v10, *(a1 + v11)}];
    swift_unknownObjectRelease();
  }
}

void sub_2153696C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23[-v8];
  v10 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (v11)
  {
    sub_215324EEC(a2, v9, &unk_27CA5B090);
    v12 = sub_21549E56C();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v9, 1, v12);
    swift_unknownObjectRetain();
    v15 = 0;
    if (v14 != 1)
    {
      v15 = sub_21549E49C();
      (*(v13 + 8))(v9, v12);
    }

    if (a4)
    {
      a4 = sub_2154A1D2C();
    }

    v16 = a1 + OBJC_IVAR___LinkEditorController_textSelection;
    v17 = type metadata accessor for TextSelection();
    v18 = *(v16 + *(v17 + 28));
    v19 = (v16 + *(v17 + 32));
    v20 = *v19;
    v21 = v19[1];
    v22 = OBJC_IVAR___LinkEditorController_addApproach;
    swift_beginAccess();
    [v11 createLink:v15 title:a4 textSelection:v18 range:v20 addApproach:{v21, *(a1 + v22)}];
    swift_unknownObjectRelease();
  }
}

void sub_215369934(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21549E56C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  swift_beginAccess();

  v7 = sub_21549F63C();
  v9 = v8;

  if ((v9 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = sub_21549F63C();
  }

  else
  {
    v11 = sub_21549F65C();
  }

  v13 = v11;
  v14 = v12;

  (*(v5 + 16))(&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  (*(v5 + 32))(v16 + v15, &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v17 = (v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v13;
  v17[1] = v14;
  v18 = *&v2[OBJC_IVAR___LinkEditorController_viewController];
  if (v18)
  {
    aBlock[4] = sub_21536BB8C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2151BD7E4;
    aBlock[3] = &block_descriptor_47;
    v19 = _Block_copy(aBlock);
    v20 = v2;
    v21 = v18;

    [v21 dismissViewControllerAnimated:1 completion:v19];

    _Block_release(v19);
  }

  else
  {
    v22 = v2;
  }
}

void sub_215369BC4(uint64_t a1)
{
  v2 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    swift_unknownObjectRetain();
    v4 = sub_21549E49C();
    v5 = sub_2154A1D2C();
    v6 = a1 + OBJC_IVAR___LinkEditorController_textSelection;
    v7 = type metadata accessor for TextSelection();
    v8 = *(v6 + *(v7 + 28));
    v9 = (v6 + *(v7 + 32));
    v10 = *v9;
    v11 = v9[1];
    v12 = OBJC_IVAR___LinkEditorController_addApproach;
    swift_beginAccess();
    [v3 createLink:v4 title:v5 textSelection:v8 range:v10 addApproach:{v11, *(a1 + v12)}];
    swift_unknownObjectRelease();
  }
}

void sub_215369DB4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = *&v0[OBJC_IVAR___LinkEditorController_viewController];
  if (v2)
  {
    v7[4] = sub_21536BB84;
    v7[5] = v1;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_2151BD7E4;
    v7[3] = &block_descriptor_41;
    v3 = _Block_copy(v7);
    v4 = v0;
    v5 = v2;

    [v5 dismissViewControllerAnimated:1 completion:v3];

    _Block_release(v3);
  }

  else
  {
    v6 = v0;
  }
}

id sub_215369EF4(uint64_t a1)
{
  v2 = OBJC_IVAR___LinkEditorController_delegate;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4)
  {
    v5 = a1 + OBJC_IVAR___LinkEditorController_textSelection;
    v6 = type metadata accessor for TextSelection();
    return [v4 removeLinksFromTextSelection:*(v5 + *(v6 + 28)) range:{*(v5 + *(v6 + 32)), *(v5 + *(v6 + 32) + 8)}];
  }

  return result;
}

void sub_215369FBC()
{
  v1 = *(v0 + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v1 && (v2 = OBJC_IVAR___ICLinkAcceleratorController_isShowing, swift_beginAccess(), *(v1 + v2) == 1))
  {
    v3 = v1;
    LinkAcceleratorController.hideAccelerator()();
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___LinkEditorController_viewController);
    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_21536A0BC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_2151ADCD8(v9, &qword_27CA5ABC0);
}

void sub_21536A148()
{
  v1 = *(v0 + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
  if (v1)
  {
    v2 = v1;
    LinkAcceleratorController.hideAccelerator()();
  }
}

id sub_21536A220(id result)
{
  if (result)
  {
    swift_beginAccess();

    sub_21549F66C();

    sub_21549F55C();

    sub_21549F63C();

    sub_21549F58C();

    result = *(v1 + OBJC_IVAR___LinkEditorController_viewController);
    if (result)
    {
      return [result becomeFirstResponder];
    }
  }

  return result;
}

id sub_21536A384(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_215324EEC(a1, &v10 - v5, &unk_27CA5B090);
  v7 = sub_21549E56C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_2151ADCD8(v6, &unk_27CA5B090);
  }

  sub_21549E45C();
  (*(v8 + 8))(v6, v7);
  swift_beginAccess();

  sub_21549F55C();

  sub_21549F66C();

  sub_21549F58C();

  result = *(v2 + OBJC_IVAR___LinkEditorController_viewController);
  if (result)
  {
    return [result becomeFirstResponder];
  }

  return result;
}

void sub_21536A684()
{
  v1 = *(v0 + OBJC_IVAR___LinkEditorController_viewController);
  if (v1)
  {
    v2 = v1;
    v4 = sub_21534F3A0();

    v3 = sub_21549F62C();

    [v4 setEnabled_];
  }
}

id LinkEditorController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LinkEditorController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkEditorController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_21536A938(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_21536A9AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &aBlock[-1] - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &aBlock[-1] - v12;
  v14 = [objc_opt_self() entityURIForNote_];
  if (v14)
  {
    v15 = v14;
    sub_21549E51C();

    v16 = sub_21549E56C();
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  }

  else
  {
    v17 = sub_21549E56C();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  sub_215323B30(v11, v13);
  swift_beginAccess();

  v18 = sub_21549F63C();
  v20 = v19;

  if ((v20 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = sub_21549F63C();
    v24 = v23;
  }

  else
  {
    v25 = sub_21549F5BC();

    if (v25)
    {
      v22 = sub_21549F4CC();
      v24 = v26;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }
  }

  sub_215324EEC(v13, v8, &unk_27CA5B090);
  v27 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v2;
  sub_215323B30(v8, v28 + v27);
  v29 = (v28 + ((v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = v22;
  v29[1] = v24;
  v30 = *&v2[OBJC_IVAR___LinkEditorController_viewController];
  if (v30)
  {
    aBlock[4] = sub_21536BC28;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2151BD7E4;
    aBlock[3] = &block_descriptor_66;
    v31 = _Block_copy(aBlock);
    v32 = v2;
    v33 = v30;

    [v33 dismissViewControllerAnimated:1 completion:v31];
    _Block_release(v31);
  }

  else
  {
    v34 = v2;
  }

  return sub_2151ADCD8(v13, &unk_27CA5B090);
}

uint64_t sub_21536AD68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_21549E56C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    v10 = [v9 tokenContentIdentifier];
    if (v10)
    {
      v11 = v10;
      sub_2154A1D6C();

      sub_21549E55C();

      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        sub_2151ADCD8(v4, &unk_27CA5B090);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        v12 = objc_opt_self();
        v13 = sub_21549E49C();
        v14 = [v12 noteIdentifierFromNotesAppURL_];

        if (v14)
        {
          v15 = sub_2154A1D6C();

          (*(v6 + 8))(v8, v5);
          return v15;
        }

        (*(v6 + 8))(v8, v5);
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t _s11NotesEditor04LinkB10ControllerC4note3forSo6ICNoteCSg10Foundation3URLVSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_21549E56C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215324EEC(a1, v4, &unk_27CA5B090);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = [objc_opt_self() sharedContext];
    if (!v9 || (v10 = v9, v11 = [v9 managedObjectContext], v10, !v11))
    {
      (*(v6 + 8))(v8, v5);
      return 0;
    }

    sub_21549E54C();
    if (v12 && (v13 = sub_2154A1D2C(), , v14 = ICIsNotesURLScheme(), v13, (v14 & 1) != 0) && (v15 = objc_opt_self(), v16 = sub_21549E49C(), v17 = [v15 predicateForNotesMentionedInURL_], v16, v17))
    {
      v18 = [objc_opt_self() notesMatchingPredicate:v17 context:v11];
      sub_2151A6C9C(0, &qword_27CA5C700);
      v19 = sub_2154A1F4C();

      if (v19 >> 62)
      {
        result = sub_2154A2C8C();
        if (result)
        {
LABEL_10:
          if ((v19 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x216069960](0, v19);
          }

          else
          {
            if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v21 = *(v19 + 32);
          }

          v22 = v21;

          (*(v6 + 8))(v8, v5);
          return v22;
        }
      }

      else
      {
        result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_10;
        }
      }

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }

    return 0;
  }

  sub_2151ADCD8(v4, &unk_27CA5B090);
  return 0;
}

uint64_t sub_21536B348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v26 - v3;
  v5 = sub_21549E56C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549F69C();
  v9 = MEMORY[0x216066220]();
  v10 = type metadata accessor for TextSelection();
  v11 = *(a1 + *(v10 + 24));
  if (v11)
  {
    v12 = v11;
    sub_21536AD68(v11);
    if (v13)
    {
      sub_21549F53C();
      sub_21549F66C();
      v14 = [v12 altText];
      if (!v14)
      {
        v14 = [v12 displayText];
      }

      v15 = v14;
      sub_2154A1D6C();

      v16 = objc_allocWithZone(sub_21549F4DC());
      sub_21549F4AC();
      sub_21549F5CC();
      sub_21549F58C();

      return v9;
    }
  }

  v17 = *(v10 + 20);
  sub_215324EEC(a1 + v17, v4, &unk_27CA5B090);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v18 = _s11NotesEditor04LinkB10ControllerC4note3forSo6ICNoteCSg10Foundation3URLVSg_tFZ_0(a1 + v17);
    if (v18)
    {
      v19 = v18;
      v20 = [v18 contentIdentifier];
      if (v20)
      {
        v21 = v20;
        v26[1] = sub_2154A1D6C();

        sub_21549F53C();
        v22 = [v19 titleForLinking];
        if (v22)
        {
          v23 = v22;
          sub_2154A1D6C();
        }

        v24 = objc_allocWithZone(sub_21549F4DC());
        sub_21549F4AC();
        sub_21549F5CC();
        sub_21549F58C();

        sub_21549F64C();
        sub_21549F66C();

LABEL_19:
        (*(v6 + 8))(v8, v5);
        return v9;
      }
    }

    sub_21549F53C();
    sub_21549F55C();
    if (!*(a1 + 8))
    {
      sub_21549E45C();
    }

    sub_21549F64C();
    sub_21549E45C();
    sub_21549F66C();
    goto LABEL_19;
  }

  sub_2151ADCD8(v4, &unk_27CA5B090);
  if (*(a1 + 8))
  {

    sub_21549F64C();
  }

  return v9;
}

uint64_t type metadata accessor for LinkEditorController()
{
  result = qword_27CA5B020;
  if (!qword_27CA5B020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21536B7BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21536B82C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21536B894()
{
  result = type metadata accessor for TextSelection();
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

void sub_21536BB8C()
{
  sub_21549E56C();
  v1 = *(v0 + 16);

  sub_215369BC4(v1);
}

void sub_21536BC28()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_2153696C0(v3, v0 + v2, v5, v6);
}

void sub_21536BCC8()
{
  *(v0 + OBJC_IVAR___LinkEditorController_viewController) = 0;
  *(v0 + OBJC_IVAR___LinkEditorController_delegate) = 0;
  *(v0 + OBJC_IVAR___LinkEditorController_linkAcceleratorController) = 0;
  *(v0 + OBJC_IVAR___LinkEditorController_linkTextChanged) = 0;
  *(v0 + OBJC_IVAR___LinkEditorController_selectedNoteChange) = 0;
  *(v0 + OBJC_IVAR___LinkEditorController_selectedURLChange) = 0;
  *(v0 + OBJC_IVAR___LinkEditorController_selectedURLTextChange) = 0;
  v1 = (v0 + OBJC_IVAR___LinkEditorController_currentQueryString);
  *v1 = 0;
  v1[1] = 0;
  sub_2154A2EDC();
  __break(1u);
}

uint64_t sub_21536BD88()
{

  v0 = sub_2154A1E8C();
  v2 = v1;
  if (v1)
  {
    v3 = v0;
    do
    {
      if ((v3 != 9142498 || v2 != 0xA300000000000000) && (sub_2154A2FAC() & 1) == 0)
      {
        MEMORY[0x2160689E0](v3, v2);
      }

      v3 = sub_2154A1E8C();
      v2 = v4;
    }

    while (v4);
    v2 = 0;
  }

  return v2;
}

uint64_t sub_21536BE9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21536BEEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD278;

  return sub_215367914(a1, v4, v5, v6, v7);
}

uint64_t sub_21536BFB8()
{
  v30 = sub_2154A10EC();
  v33 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_2154A110C();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x28223BE20](v1);
  v28 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2154A112C();
  v27 = v3;
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = objc_opt_self();
  v11 = sub_2154A1D2C();
  v12 = [v10 localizedFrameworkStringForKey:v11 value:0 table:0 allowSiri:1];

  v13 = sub_2154A1D6C();
  v15 = v14;

  v16 = swift_allocObject();
  sub_2151A6C9C(0, &unk_2811995C0);
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  v17 = sub_2154A245C();
  sub_2154A111C();
  sub_2154A115C();
  v18 = v4 + 8;
  v19 = *(v4 + 8);
  v26 = v18;
  v19(v7, v3);
  v20 = swift_allocObject();
  v20[2] = v16;
  v20[3] = v13;
  v20[4] = v15;
  aBlock[4] = sub_21536C444;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_107;
  v21 = _Block_copy(aBlock);

  v22 = v28;
  sub_2154A10FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21536BE9C(&qword_281199700, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  v23 = v29;
  v24 = v30;
  sub_2154A2BEC();
  MEMORY[0x216068FC0](v9, v22, v23, v21);
  _Block_release(v21);

  (*(v33 + 8))(v23, v24);
  (*(v31 + 8))(v22, v32);
  v19(v9, v27);
}

uint64_t sub_21536C4A8()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5B0E0);
  __swift_project_value_buffer(v0, qword_27CA5B0E0);
  return sub_21549F09C();
}

unint64_t sub_21536C4F4()
{
  result = sub_215327BA8(MEMORY[0x277D84F90]);
  qword_2811997B8 = result;
  return result;
}

id sub_21536C51C()
{
  v0 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = *MEMORY[0x277D36148];

  return [v0 registerTextAttachmentViewProviderClass:ObjCClassFromMetadata forFileType:v2];
}

id sub_21536C5E4(void *a1, void *a2, void *a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___ICPaperDocumentTextAttachmentViewProvider_updatedLocationForRecycledViewProvider] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for PaperDocumentTextAttachmentViewProvider();
  v9 = objc_msgSendSuper2(&v11, sel_initWithTextAttachment_parentView_textLayoutManager_location_, a1, a2, a3, a4);
  [v9 setTracksTextAttachmentViewBounds_];
  [a1 setBounds_];
  [a1 setEmbeddingType_];
  [a1 setStandaloneAlignment_];
  [a1 setLineLayoutPadding_];

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_21536C8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR___ICPaperDocumentTextAttachmentViewProvider_updatedLocationForRecycledViewProvider;
  swift_beginAccess();
  *(a1 + v5) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_21536C920(uint64_t a1)
{
  v3 = OBJC_IVAR___ICPaperDocumentTextAttachmentViewProvider_updatedLocationForRecycledViewProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_21536C978(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICPaperDocumentTextAttachmentViewProvider_updatedLocationForRecycledViewProvider;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}