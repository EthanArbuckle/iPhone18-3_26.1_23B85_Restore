char *sub_214A61638(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v2 = OBJC_IVAR___MUIBusinessConnectServiceProvider_service;
  sub_214A61B74();
  *v2 = sub_214A61730();
  MEMORY[0x277D82BE0](a1);
  *&v7[OBJC_IVAR___MUIBusinessConnectServiceProvider_messageRepository] = a1;
  v5.receiver = v7;
  v5.super_class = MUIBusinessConnectServiceProvider;
  v4 = objc_msgSendSuper2(&v5, sel_init);
  MEMORY[0x277D82BE0](v4);
  v7 = v4;
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v7);
  return v4;
}

uint64_t static Logger.mailUILogger<A>(for:)()
{
  sub_214A619A8();

  sub_214CD03B4();
  v0 = sub_214CCF614();
  MEMORY[0x21605E650](v0);

  sub_214A61B10();
  v1 = sub_214CCF614();
  MEMORY[0x21605E650](v1);

  sub_214A61B48();
  sub_214CCF5F4();
  return sub_214CCDA64();
}

void *sub_214A619A8()
{
  if (qword_280C7EB90 != -1)
  {
    swift_once();
  }

  return qword_280C7EB98;
}

uint64_t sub_214A61A2C()
{
  result = sub_214CCF614();
  qword_280C7EB40 = result;
  qword_280C7EB48 = v1;
  return result;
}

uint64_t *sub_214A61A70()
{
  if (qword_280C7EB38 != -1)
  {
    swift_once();
  }

  return &qword_280C7EB40;
}

void *sub_214A61AD0(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_214A61B10()
{
  v0 = sub_214CD0654();
  MEMORY[0x21605D900](v0);
}

unint64_t sub_214A61B74()
{
  v2 = qword_280C7C948;
  if (!qword_280C7C948)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C948);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t MUISolariumFeatureEnabled()
{
  if (MUISolariumFeatureEnabled_onceToken != -1)
  {
    MUISolariumFeatureEnabled_cold_1();
  }

  return MUISolariumFeatureEnabled_isFeatureEnabled;
}

void __MUISolariumFeatureEnabled_block_invoke()
{
  if (_UISolariumEnabled())
  {
    v0 = [MEMORY[0x277D07148] currentDevice];
    MUISolariumFeatureEnabled_isFeatureEnabled = [v0 isRealityDevice] ^ 1;
  }

  else
  {
    MUISolariumFeatureEnabled_isFeatureEnabled = 0;
  }
}

id _ef_log_MUIMessageListViewController()
{
  if (_ef_log_MUIMessageListViewController_onceToken != -1)
  {
    _ef_log_MUIMessageListViewController_cold_1();
  }

  v1 = _ef_log_MUIMessageListViewController_log;

  return v1;
}

void sub_214A62078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214A621CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t sub_214A621F8()
{
  v2 = qword_280C7C4E0;
  if (!qword_280C7C4E0)
  {
    sub_214A63684();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C4E0);
    return WitnessTable;
  }

  return v2;
}

void sub_214A624A4(unsigned int a1)
{
  v53 = a1;
  v43 = a1;
  v56 = 0;
  v81 = 0;
  v80 = 0;
  v44 = 0;
  v52 = sub_214CCDA74();
  v46 = v52;
  v47 = *(v52 - 8);
  v51 = v47;
  v48 = v47;
  v49 = *(v47 + 64);
  v1 = v21 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v1;
  v81 = MEMORY[0x28223BE20](v53);
  v80 = v2;
  v3 = sub_214A660E0();
  (*(v51 + 16))(v1, v3, v52);
  v57 = 17;
  v63 = 7;
  v60 = swift_allocObject();
  *(v60 + 16) = v53;
  v74 = sub_214CCDA54();
  v54 = v74;
  v73 = sub_214CCFBB4();
  v55 = v73;
  v67 = swift_allocObject();
  v58 = v67;
  *(v67 + 16) = v56;
  v68 = swift_allocObject();
  v59 = v68;
  *(v68 + 16) = 4;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v60;
  v61 = v4;
  *(v4 + 16) = sub_214A66754;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v61;
  v64 = v6;
  *(v6 + 16) = sub_214A66720;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v64;
  v65 = v8;
  *(v8 + 16) = sub_214A66714;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v65;
  v71 = v10;
  v66 = v10;
  *(v10 + 16) = sub_214A664B8;
  *(v10 + 24) = v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v69 = sub_214CD03C4();
  v70 = v12;

  v13 = v67;
  v14 = v70;
  *v70 = sub_214A662DC;
  v14[1] = v13;

  v15 = v68;
  v16 = v70;
  v70[2] = sub_214A662DC;
  v16[3] = v15;

  v17 = v70;
  v18 = v71;
  v70[4] = sub_214A66358;
  v17[5] = v18;
  sub_214A63280();

  if (os_log_type_enabled(v74, v73))
  {
    v19 = v44;
    v37 = sub_214CCFF24();
    v33 = v37;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v35 = 0;
    v38 = sub_214A632C4(0);
    v36 = v38;
    v39 = sub_214A632C4(v35);
    v79[0] = v37;
    v78 = v38;
    v77 = v39;
    v40 = v79;
    sub_214A6627C(0, v79);
    sub_214A6627C(1, v40);
    v75 = sub_214A662DC;
    v76 = v58;
    sub_214A66290(&v75, v40, &v78, &v77);
    v41 = v19;
    v42 = v19;
    if (v19)
    {
      v31 = 0;

      __break(1u);
    }

    else
    {
      v75 = sub_214A662DC;
      v76 = v59;
      sub_214A66290(&v75, v79, &v78, &v77);
      v29 = 0;
      v30 = 0;
      v75 = sub_214A66358;
      v76 = v66;
      sub_214A66290(&v75, v79, &v78, &v77);
      v27 = 0;
      v28 = 0;
      _os_log_impl(&dword_214A5E000, v54, v55, "Queueing - Reloading highlighted messages, applyEmptyUpdate: %{BOOL}d", v33, 8u);
      v26 = 0;
      sub_214A669DC(v36);
      sub_214A669DC(v39);
      sub_214CCFF04();

      v32 = v27;
    }
  }

  else
  {
    v20 = v44;

    v32 = v20;
  }

  (*(v48 + 8))(v50, v46);
  if (v43)
  {
    v25 = [v45 reloadWithEmptyUpdateDebouncer];
    memset(&v79[1], 0, 32);
    v24 = 0;
    v23 = 0;
    [v25 debounceResult_];
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = [v45 reloadDebouncer];
    memset(&v79[5], 0, 32);
    v21[8] = 0;
    [v22 debounceResult_];
    swift_unknownObjectRelease();
  }
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

unint64_t sub_214A63208()
{
  v2 = qword_280C7EB80;
  if (!qword_280C7EB80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EB80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A632C4(uint64_t a1)
{
  if (a1)
  {
    return sub_214CCFF24();
  }

  else
  {
    return 0;
  }
}

_BYTE **sub_214A63318(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

char *sub_214A634BC(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR___MUIHighlightedMessagesController____lazy_storage___reloadDebouncer = 0;
  *&v9[OBJC_IVAR___MUIHighlightedMessagesController____lazy_storage___reloadWithEmptyUpdateDebouncer] = 0;
  v3 = OBJC_IVAR___MUIHighlightedMessagesController_mailboxes;
  sub_214A63684();
  *&v9[v3] = sub_214CD03C4();
  *&v9[OBJC_IVAR___MUIHighlightedMessagesController_filterPredicate] = 0;
  *&v9[OBJC_IVAR___MUIHighlightedMessagesController_model] = 0;
  MEMORY[0x277D82BE0](a1);
  *&v9[OBJC_IVAR___MUIHighlightedMessagesController_repository] = a1;
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v6.receiver = v9;
  v6.super_class = MUIHighlightedMessagesController;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x277D82BE0](v5);
  v9 = v5;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v9);
  return v5;
}

unint64_t sub_214A63684()
{
  v2 = qword_280C7C4F0;
  if (!qword_280C7C4F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C4F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214A63778()
{
  swift_beginAccess();

  swift_endAccess();
  sub_214A63684();
  sub_214A621F8();
  v2 = sub_214CCF8E4();
  sub_214A62278();
  result = v2;
  if ((v2 & 1) == 0)
  {
    return [v1 reloadApplyingEmptyUpdate_];
  }

  return result;
}

uint64_t sub_214A63874(uint64_t a1)
{
  swift_beginAccess();

  swift_endAccess();

  v3 = (v1 + OBJC_IVAR___MUIHighlightedMessagesController_mailboxes);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
  sub_214A63778();
}

id _ef_log_MessageListPositionHelper()
{
  if (_ef_log_MessageListPositionHelper_onceToken != -1)
  {
    _ef_log_MessageListPositionHelper_cold_1();
  }

  v1 = _ef_log_MessageListPositionHelper_log;

  return v1;
}

id MUIOnboardingTipKeyForBucket(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(&unk_27818A480 + a1 - 1);
  }

  return v2;
}

id NSStringKeyForStorageFromContext(void *a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = a1;
  v3 = [v1 numberWithUnsignedInteger:{objc_msgSend(v2, "hash")}];
  v4 = [v3 stringValue];

  v5 = [v2 focus];

  if (v5)
  {
    v6 = [v4 stringByAppendingString:@"Focus"];

    v4 = v6;
  }

  return v4;
}

void __swiftcall MUIMessageListViewController.configuredBucketsViewController(withMailboxes:)(UIViewController *__return_ptr retstr, Swift::OpaquePointer withMailboxes)
{
  v14 = [v2 bucketsViewController];
  if (v14)
  {
    type metadata accessor for BucketsViewController();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v11 = v12;
    }

    else
    {
      MEMORY[0x277D82BD8](v14);
      v11 = 0;
    }

    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    BucketsViewController.update(mailboxes:)(withMailboxes);
  }

  else
  {
    type metadata accessor for BucketsViewController();
    v8 = *sub_214A650A0();

    v3 = [v2 selectedBucket];
    v4 = [v2 messageRepository];
    v5 = [v2 mailboxRepository];

    v6 = [v2 mailboxCategoryCloudStorage];
    type metadata accessor for BucketsViewControllerPreferences();
    v7 = BucketsViewControllerPreferences.__allocating_init()();
    (MEMORY[0x277D82BE0])();
    v15 = BucketsViewController.__allocating_init(buckets:initialSelection:messageRepository:mailboxRepository:mailboxes:mailboxCategoryStorage:preferences:delegate:)(v8, v3, v4, v5, withMailboxes._rawValue, v6, v7, v2, &protocol witness table for MUIMessageListViewController);
    (MEMORY[0x277D82BE0])();
    v9 = &v15[OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate];
    swift_beginAccess();
    *(v9 + 1) = &protocol witness table for MUIMessageListViewController;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_endAccess();
    [v2 setBucketsViewController_];
    MEMORY[0x277D82BD8](v15);
  }
}

uint64_t type metadata accessor for BucketsViewController()
{
  v1 = qword_280C7DCD0;
  if (!qword_280C7DCD0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_214A64FAC()
{
  v4 = qword_280C7CBB0;
  if (!qword_280C7CBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35508);
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280C7CBB0);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_214A650A0()
{
  if (qword_280C7C4B8 != -1)
  {
    swift_once();
  }

  return &qword_280C7C4C0;
}

uint64_t BucketsViewControllerPreferences.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = sub_214B510D4;
  *(v0 + 32) = 0;
  return result;
}

_BYTE *BucketsViewController.init(buckets:initialSelection:messageRepository:mailboxRepository:mailboxes:mailboxCategoryStorage:preferences:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  memset(&v54[7], 0, 0x38uLL);
  v71 = a1;
  v70 = a2;
  v69 = a3;
  v68 = a4;
  v67 = a5;
  v66 = a6;
  v65 = a7;
  v63 = a8;
  v64 = a9;
  v72 = v9;
  *&v9[OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper] = 0;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView] = 0;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionViewLayout] = 0;
  v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_layoutConfiguration] = 0;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource] = 0;
  v23 = v72;
  v22 = OBJC_IVAR____TtC6MailUI21BucketsViewController_cellRegistration;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35508);
  (*(*(v10 - 8) + 56))(&v23[v22], 1);
  v11 = &v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSize];
  *v11 = 0;
  v11[1] = 0;
  v12 = *(MEMORY[0x277D768C8] + 8);
  v13 = *(MEMORY[0x277D768C8] + 16);
  v14 = *(MEMORY[0x277D768C8] + 24);
  v15 = &v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_previousLayoutMargins];
  *v15 = *MEMORY[0x277D768C8];
  v15[1] = v12;
  v15[2] = v13;
  v15[3] = v14;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_contentSizeToken] = 0;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_preferredFontToken] = 0;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneForegroundToken] = 0;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneBackgroundToken] = 0;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem] = 0;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSelectedItem] = 0;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_addAllMailSwipeGestureRecognizer] = 0;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_removeAllMailSwipeGestureRecognizer] = 0;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_dropSessionHelper] = 0;
  *&v72[OBJC_IVAR____TtC6MailUI21BucketsViewController_dropToChangeCategoriesInternalSettingsObservationToken] = 0;
  v24 = v72;
  v50 = type metadata accessor for BucketItem();
  *&v24[OBJC_IVAR____TtC6MailUI21BucketsViewController_allMailBucketItem] = BucketItem.__allocating_init(_:)(5);
  v26 = v72;

  *&v26[OBJC_IVAR____TtC6MailUI21BucketsViewController_preferences] = a7;
  v27 = v72;
  swift_unknownObjectRetain();
  v28 = &v27[OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate];
  swift_beginAccess();
  *(v28 + 1) = a9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v62.receiver = v72;
  v62.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v62, sel_initWithNibName_bundle_, 0);
  MEMORY[0x277D82BE0](v31);
  v72 = v31;
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a6);
  v36 = swift_allocObject();
  MEMORY[0x277D82BE0](v31);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v31);

  v35 = swift_allocObject();
  MEMORY[0x277D82BE0](v31);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v31);

  MUILastSeenBucketHelper.Configuration.init(messageRepository:mailboxRepository:mailboxCategoryStorage:predicateUpdater:unseenCountUpdater:)(a3, a4, a6, sub_214B4328C, v36, sub_214B43294, v35, &v55);

  v38 = v55;
  v39 = v56;
  v40 = v57;
  v41 = v58;
  v42 = v59;
  v43 = v60;
  v44 = v61;
  v54[7] = v55;
  v54[8] = v56;
  v54[9] = v57;
  v54[10] = v58;
  v54[11] = v59;
  v54[12] = v60;
  v54[13] = v61;
  v45 = v72;
  type metadata accessor for MUILastSeenBucketHelper();

  MEMORY[0x277D82BE0](v38);
  MEMORY[0x277D82BE0](v39);
  MEMORY[0x277D82BE0](v40);

  v54[0] = v38;
  v54[1] = v39;
  v54[2] = v40;
  v54[3] = v41;
  v54[4] = v42;
  v54[5] = v43;
  v54[6] = v44;
  v47 = MUILastSeenBucketHelper.__allocating_init(mailboxes:configuration:)(a5, v54);
  v46 = &v45[OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper];
  swift_beginAccess();
  v16 = *v46;
  *v46 = v47;
  MEMORY[0x277D82BD8](v16);
  swift_endAccess();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35518);
  v17 = sub_214A69444();
  v52 = sub_214A6E4F4(sub_214A6EDD8, 0, v49, v50, MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v51);
  type metadata accessor for MUIBucket();
  sub_214A694CC();
  if (sub_214CD03F4())
  {
    v19 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35520);
    sub_214A6B3B4();
    sub_214CCFA74();
    v20 = &v19[OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSelectedItem];
    swift_beginAccess();
    *v20 = v53;

    swift_endAccess();
  }

  sub_214B3AD4C(v52, a2, a5);

  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](a6);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v72);
  return v31;
}

id MUIBucket.foregroundColor.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
    case 2:
    case 3:
    case 4:
      sub_214A65CE0();
      return static UIColor.platformWhite.getter();
    case 5:
      sub_214A65CE0();
      v7 = sub_214CCF614();
      v6 = v1;
      sub_214A6E0F4();
      sub_214CCF614();
      v2 = sub_214A65D44();
      return sub_214C01A24(v7, v6, v2);
    default:
      sub_214CD03B4();
      v3 = sub_214CCF614();
      MEMORY[0x21605E650](v3);

      type metadata accessor for MUIBucket();
      sub_214CD0374();
      v4 = sub_214CCF614();
      MEMORY[0x21605E650](v4);

      sub_214A61B48();
      sub_214CCF5F4();
      sub_214CD0204();
      __break(1u);
      break;
  }

  return v8;
}

unint64_t sub_214A65CE0()
{
  v2 = qword_280C7C5C0;
  if (!qword_280C7C5C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C5C0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214A65D44()
{
  v1 = sub_214CCF544();
  v2 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];
  MEMORY[0x277D82BD8](v1);

  return v2;
}

id MUIPlatformColorForBucket(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v1 = off_27818A440[a1 - 1];
    v2 = MEMORY[0x277D75348];
    v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MailUI"];
    v4 = [v2 colorNamed:v1 bundle:v3];
  }

  return v4;
}

uint64_t sub_214A660E0()
{
  if (qword_280C7C6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_280C7C700);
}

uint64_t sub_214A6614C()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_280C7C700);
  __swift_project_value_buffer(v1, qword_280C7C700);
  type metadata accessor for MUIHighlightedMessagesController();
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

unint64_t type metadata accessor for MUIHighlightedMessagesController()
{
  v2 = qword_280C7C6E8;
  if (!qword_280C7C6E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C6E8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214A6627C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_214A662E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_214B035B8();
  v5 = MEMORY[0x277D83B88];

  return sub_214A664C4(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_214A66358(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_214A66440();
  v5 = MEMORY[0x277D849A8];

  return sub_214A664C4(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_214A663CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_214B8A620();
  v5 = MEMORY[0x277D84A28];

  return sub_214A664C4(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_214A66440()
{
  v2 = qword_280C7C410;
  if (!qword_280C7C410)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C410);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A664C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  (MEMORY[0x28223BE20])();
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = sub_214CD01E4() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = sub_214CD02B4();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = MEMORY[0x28223BE20](v22);
    v15 = v28;
    v16 = v10;
    sub_214A667EC(v9, sub_214A667BC, v14, v11, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v12, MEMORY[0x277D84F78]);
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t sub_214A666D8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_214A667EC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_214CD02B4();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_214A669DC(uint64_t result)
{
  if (result)
  {
    sub_214CCFF14();
    return sub_214CCFF04();
  }

  return result;
}

id sub_214A66AB8()
{
  v7 = (v0 + OBJC_IVAR___MUIHighlightedMessagesController____lazy_storage___reloadWithEmptyUpdateDebouncer);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214A66BC4(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController____lazy_storage___reloadWithEmptyUpdateDebouncer);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214A66BC4(uint64_t a1)
{
  sub_214A66CCC();
  v3 = [objc_opt_self() mainThreadScheduler];
  v4 = swift_allocObject();
  MEMORY[0x277D82BE0](a1);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](a1);

  v5 = sub_214A66D30(v3, 0, sub_214A7A9D4, v4, 0.1);

  return v5;
}

unint64_t sub_214A66CCC()
{
  v2 = qword_280C7CD38;
  if (!qword_280C7CD38)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CD38);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214A66D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v17 = a3;
  v18 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_214A7A910;
  v16 = &block_descriptor_382;
  v9 = _Block_copy(&aBlock);
  v11 = [v8 initWithTimeInterval:a1 scheduler:a2 startAfter:a5 block:?];
  _Block_release(v9);

  swift_unknownObjectRelease();
  return v11;
}

double sub_214A66EDC(uint64_t a1)
{
  v4 = (v1 + OBJC_IVAR___MUIHighlightedMessagesController_filterPredicate);
  swift_beginAccess();
  v6 = *v4;
  MEMORY[0x277D82BE0](*v4);
  swift_endAccess();
  MEMORY[0x277D82BE0](a1);
  v5 = (v1 + OBJC_IVAR___MUIHighlightedMessagesController_filterPredicate);
  swift_beginAccess();
  v2 = *v5;
  *v5 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  sub_214A66FE0(v6);
  MEMORY[0x277D82BD8](v6);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

void sub_214A66FE0(uint64_t a1)
{
  v13[4] = 0;
  v13[5] = a1;
  v6 = (v1 + OBJC_IVAR___MUIHighlightedMessagesController_filterPredicate);
  swift_beginAccess();
  v8 = *v6;
  MEMORY[0x277D82BE0](*v6);
  swift_endAccess();
  MEMORY[0x277D82BE0](v8);
  v13[0] = a1;
  v11 = v8;
  sub_214A671A8(v13, &v12);
  if (v8)
  {
    sub_214A671A8(&v11, &v10);
    if (v12)
    {
      v9 = v12;
      sub_214A7C550();
      v3 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      sub_214A671E8(&v11);
      v4 = v3;
      goto LABEL_7;
    }

    MEMORY[0x277D82BD8](v10);
    goto LABEL_9;
  }

  if (v12)
  {
LABEL_9:
    sub_214A68120(&v11);
    v4 = 0;
    goto LABEL_7;
  }

  sub_214A671E8(&v11);
  v4 = 1;
LABEL_7:
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if ((v4 & 1) == 0)
  {
    [v5 reloadApplyingEmptyUpdate_];
  }
}

void *sub_214A671A8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0]();
  result = a2;
  *a2 = v3;
  return result;
}

id sub_214A6721C()
{
  v7 = (v0 + OBJC_IVAR___MUIHighlightedMessagesController____lazy_storage___reloadDebouncer);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214A6739C(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController____lazy_storage___reloadDebouncer);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214A6739C(uint64_t a1)
{
  sub_214A66CCC();
  v3 = [objc_opt_self() mainThreadScheduler];
  v4 = swift_allocObject();
  MEMORY[0x277D82BE0](a1);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](a1);

  v5 = sub_214A66D30(v3, 0, sub_214A7D288, v4, 0.1);

  return v5;
}

id NSPredicateFromBucket(uint64_t a1)
{
  v2 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v3 = MEMORY[0x277D06E08];
      v4 = 2;
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_11;
      }

      v3 = MEMORY[0x277D06E08];
      v4 = 3;
    }
  }

  else
  {
    if (a1 == 1)
    {
      v2 = [MEMORY[0x277D06E08] predicateForPrimaryMessages];
      goto LABEL_11;
    }

    if (a1 != 2)
    {
      goto LABEL_11;
    }

    v3 = MEMORY[0x277D06E08];
    v4 = 1;
  }

  v2 = [v3 predicateForMessagesWithCategoryType:v4];
LABEL_11:

  return v2;
}

void *sub_214A68120(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  return a1;
}

uint64_t sub_214A6836C()
{
  type metadata accessor for MUIBucket();
  result = sub_214CD03C4();
  *v1 = 1;
  v1[1] = 2;
  v1[2] = 3;
  v1[3] = 4;
  v1[4] = 5;
  sub_214A63280();
  qword_280C7C4C0 = result;
  return result;
}

uint64_t type metadata accessor for MUIBucket()
{
  v4 = qword_280C7C460;
  if (!qword_280C7C460)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280C7C460);
      return v1;
    }
  }

  return v4;
}

uint64_t MUIBucket.localizedTitle.getter(void *a1)
{
  v2 = MUILocalizedStringFromBucket(a1);
  v3 = sub_214CCF564();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

id MUILocalizedStringFromBucket(void *a1)
{
  if (a1 <= 5)
  {
    a1 = _EFLocalizedString();
  }

  return a1;
}

id MUIBucket.backgroundColor.getter(uint64_t a1)
{
  v1 = MUIPlatformColorForBucket(a1);

  return v1;
}

void *MUILastSeenBucketHelper.Configuration.init(messageRepository:mailboxRepository:mailboxCategoryStorage:predicateUpdater:unseenCountUpdater:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  memset(__b, 0, sizeof(__b));
  MEMORY[0x277D82BE0](a1);
  __b[0] = a1;
  MEMORY[0x277D82BE0](a2);
  __b[1] = a2;
  MEMORY[0x277D82BE0](a3);
  __b[2] = a3;

  __b[3] = a4;
  __b[4] = a5;

  __b[5] = a6;
  __b[6] = a7;
  sub_214A68750(__b, a8);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return sub_214A68834(__b);
}

void *sub_214A68750(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v3;
  v4 = a1[1];
  MEMORY[0x277D82BE0](v4);
  a2[1] = v4;
  v5 = a1[2];
  MEMORY[0x277D82BE0](v5);
  a2[2] = v5;
  v7 = a1[3];
  v8 = a1[4];

  a2[3] = v7;
  a2[4] = v8;
  v10 = a1[5];
  v11 = a1[6];

  result = a2;
  a2[5] = v10;
  a2[6] = v11;
  return result;
}

void *sub_214A68834(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  MEMORY[0x277D82BD8](a1[2]);

  return a1;
}

uint64_t type metadata accessor for MUILastSeenBucketHelper()
{
  v1 = qword_280C7DC18;
  if (!qword_280C7DC18)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_214A6891C()
{
  updated = sub_214A68A44();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_214A68A44()
{
  v4 = qword_280C7EAE0;
  if (!qword_280C7EAE0)
  {
    sub_214CCD254();
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280C7EAE0);
      return v1;
    }
  }

  return v4;
}

char *MUILastSeenBucketHelper.init(mailboxes:configuration:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v37 = 0;
  memset(__b, 0, 0x38uLL);
  __b[7] = a1;
  v28 = a2[1];
  v29 = a2[2];
  v21 = a2[3];
  v30 = a2[4];
  v22 = a2[5];
  v31 = a2[6];
  __b[0] = *a2;
  v27 = __b[0];
  __b[1] = v28;
  __b[2] = v29;
  __b[3] = v21;
  __b[4] = v30;
  __b[5] = v22;
  __b[6] = v31;
  v37 = v2;
  v6 = OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper____lazy_storage___defaultDate;
  v17 = sub_214CCD254();
  (*(*(v17 - 8) + 56))(&v2[v6], 1);
  v8 = v37;
  v7 = OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_externalMailboxURLs;
  sub_214CCD154();
  *&v8[v7] = sub_214CD03C4();
  v10 = v37;
  v9 = OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueryTokens;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37940);
  *&v10[v9] = sub_214CD03C4();
  v12 = v37;
  v11 = OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueries;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37950);
  _s3__C7OptionsVMa_0();
  sub_214CD03C4();
  sub_214A6E1B0();
  sub_214CD0084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34E10);
  sub_214A69284();
  *&v12[v11] = sub_214A692E8(512, v35);
  v14 = v37;
  v13 = OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSeenDatesByBucket;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37908);
  sub_214CD03C4();
  type metadata accessor for MUIBucket();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0);
  sub_214A69344();
  *&v14[v13] = sub_214CCF344();
  v16 = v37;
  v15 = OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_sessionLastSeenDatesByBucket;
  sub_214CD03C4();
  *&v16[v15] = sub_214CCF344();
  v19 = v37;
  v18 = OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSelectedDateByBucket;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37900);
  sub_214CD03C4();
  *&v19[v18] = sub_214CCF344();
  v20 = v37;
  MEMORY[0x277D82BE0](v27);
  MEMORY[0x277D82BE0](v28);
  MEMORY[0x277D82BE0](v29);

  v3 = &v20[OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration];
  *v3 = v27;
  *(v3 + 1) = v28;
  *(v3 + 2) = v29;
  *(v3 + 3) = v21;
  *(v3 + 4) = v30;
  *(v3 + 5) = v22;
  *(v3 + 6) = v31;
  v23 = v37;

  *&v23[OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_mailboxes] = a1;
  v34.receiver = v37;
  v34.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v34, sel_init);
  MEMORY[0x277D82BE0](v33);
  v37 = v33;
  v25 = sub_214C52384(a1);
  v26 = &v33[OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_externalMailboxURLs];
  swift_beginAccess();
  *v26 = v25;

  swift_endAccess();
  MEMORY[0x277D82BE0](v29);
  MEMORY[0x277D82BE0](v33);
  [v29 addCloudStorageObserver_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);

  MEMORY[0x277D82BD8](v37);
  return v33;
}

uint64_t _s3__C7OptionsVMa_0()
{
  v4 = qword_280C7C878;
  if (!qword_280C7C878)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280C7C878);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_214A69170()
{
  v2 = qword_280C7C8A8;
  if (!qword_280C7C8A8)
  {
    _s3__C7OptionsVMa_0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C8A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A69208()
{
  v2 = qword_280C7D000;
  if (!qword_280C7D000)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7D000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A69284()
{
  v2 = qword_280C7C538;
  if (!qword_280C7C538)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C538);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214A692E8(uint64_t a1, uint64_t a2)
{
  v2 = [swift_getObjCClassFromMetadata() mapTableWithKeyOptions:a1 valueOptions:a2];

  return v2;
}

unint64_t sub_214A69344()
{
  v2 = qword_280C7C490;
  if (!qword_280C7C490)
  {
    type metadata accessor for MUIBucket();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A693C4()
{
  v2 = qword_280C7C480;
  if (!qword_280C7C480)
  {
    type metadata accessor for MUIBucket();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A69444()
{
  v2 = qword_280C7CD90;
  if (!qword_280C7CD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35518);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CD90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A694CC()
{
  v2 = qword_280C7C470;
  if (!qword_280C7C470)
  {
    type metadata accessor for MUIBucket();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C470);
    return WitnessTable;
  }

  return v2;
}

id BucketCollectionViewLayout.__allocating_init(sectionProvider:)(uint64_t a1, uint64_t a2)
{
  v6 = objc_allocWithZone(v2);
  v14 = a1;
  v15 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = 0;
  v12 = sub_214A7590C;
  v13 = &block_descriptor_1;
  v7 = _Block_copy(&aBlock);
  v8 = [v6 initWithSectionProvider_];
  _Block_release(v7);

  return v8;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  return sub_214A80098(a2 + 32, a1 + 32);
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  return sub_214A80098(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214A69E94()
{
  v2 = qword_280C7CBA0;
  if (!qword_280C7CBA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CBA0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214A69F80()
{
  v2 = qword_280C7EA10;
  if (!qword_280C7EA10)
  {
    type metadata accessor for BucketItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EA10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A6A018()
{
  v2 = qword_280C7EA18;
  if (!qword_280C7EA18)
  {
    type metadata accessor for BucketItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EA18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A6A0C4()
{
  v2 = qword_280C7E0A0;
  if (!qword_280C7E0A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E0A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A6A140(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  swift_beginAccess();
  v6 = *v3;

  swift_endAccess();
  sub_214A6A234();

  v5 = (v4 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  swift_beginAccess();
  *v5 = a1;

  swift_endAccess();
  sub_214A6A268(v6);
}

uint64_t sub_214A6A268(uint64_t a1)
{
  v12 = 0;
  v13 = a1;
  MEMORY[0x277D82BE0](v1);

  v10 = v1;
  v11 = a1;
  sub_214B39E60(a1, sub_214B43278, v9);
  (MEMORY[0x277D82BD8])();

  v4 = (v5 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  swift_beginAccess();
  v6 = *v4;

  swift_endAccess();
  (MEMORY[0x277D82BE0])();
  v8 = v5;
  sub_214B39E60(v6, sub_214B43284, v7);
  (MEMORY[0x277D82BD8])();
}

uint64_t BucketsDataSource.indexPath(for:)()
{
  v2 = *(v0 + 24);
  MEMORY[0x277D82BE0](v2);
  sub_214A6A428();
  sub_214CCDEF4();
  return MEMORY[0x277D82BD8](v2);
}

{
  v2 = *(v0 + 24);
  MEMORY[0x277D82BE0](v2);
  sub_214A6E0D8();
  sub_214CCDEF4();
  return MEMORY[0x277D82BD8](v2);
}

uint64_t sub_214A6A428()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2;
}

uint64_t sub_214A6A480(uint64_t a1)
{
  v3 = sub_214CCD374();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t BucketsDataSource.append(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  swift_endAccess();

  sub_214CCD484();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_214B36FC0(0, 1, sub_214A6B224, v7, a2, a3);
}

uint64_t sub_214A6A6BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35520);
  sub_214A6A758();
  return sub_214CCD574();
}

unint64_t sub_214A6A758()
{
  v2 = qword_280C7CF70;
  if (!qword_280C7CF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA35520);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF70);
    return WitnessTable;
  }

  return v2;
}

uint64_t static BucketItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v43 = a2;
  v42 = v2;
  v30 = sub_214A6A428();
  v31 = sub_214A6A428();

  if (v30 == v31)
  {
    v26 = sub_214A7658C();
    v27 = v3;
    v4 = sub_214A7658C();
    v28 = MEMORY[0x21605D8D0](v26, v27, v4);

    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    v24 = sub_214A76A2C();
    v25 = (v24 & 1) == (sub_214A76A2C() & 1);
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    sub_214A77084();
    v21 = sub_214A76A88();
    v20 = sub_214A76A88();
    v22 = sub_214CCFD64();
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v18 = sub_214A76AEC();
    MEMORY[0x277D82BE0](v18);
    v19 = sub_214A76AEC();
    MEMORY[0x277D82BE0](v19);
    v35 = v18;
    v36 = v19;
    if (v18)
    {
      sub_214A671A8(&v35, &v34);
      if (v36)
      {
        v33 = v34;
        v32 = v36;
        sub_214A65CE0();
        v16 = sub_214CCFD64();
        MEMORY[0x277D82BD8](v32);
        MEMORY[0x277D82BD8](v33);
        sub_214A671E8(&v35);
        v17 = v16;
LABEL_17:
        MEMORY[0x277D82BD8](v19);
        MEMORY[0x277D82BD8](v18);
        v15 = v17;
        goto LABEL_21;
      }

      MEMORY[0x277D82BD8](v34);
    }

    else if (!v36)
    {
      sub_214A671E8(&v35);
      v17 = 1;
      goto LABEL_17;
    }

    sub_214A68120(&v35);
    v17 = 0;
    goto LABEL_17;
  }

  v15 = 0;
LABEL_21:

  if ((v15 & 1) == 0)
  {
    v8 = 0;
    goto LABEL_32;
  }

  v12 = sub_214A76B50();
  v13 = v5;

  v11 = sub_214A76B50();
  v14 = v6;

  v40[0] = v12;
  v40[1] = v13;
  *&v41 = v11;
  *(&v41 + 1) = v14;
  if (!v13)
  {
    if (!*(&v41 + 1))
    {
      sub_214A61B48();
      v10 = 1;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  sub_214A61AD0(v40, &v39);
  if (!*(&v41 + 1))
  {
    sub_214A61B48();
LABEL_29:
    sub_214A76610();
    v10 = 0;
    goto LABEL_28;
  }

  v38 = v39;
  v37 = v41;
  v9 = MEMORY[0x21605D8D0](v39, *(&v39 + 1), v41, *(&v41 + 1));
  sub_214A61B48();
  sub_214A61B48();
  sub_214A61B48();
  v10 = v9;
LABEL_28:

  v8 = v10;
LABEL_32:

  return v8 & 1;
}

unint64_t sub_214A6AD28()
{
  v2 = qword_280C7CF50;
  if (!qword_280C7CF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35488);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF50);
    return WitnessTable;
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for AccountEntityQuery(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountEntityQuery(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

unint64_t sub_214A6B11C()
{
  v2 = qword_280C7E0A8;
  if (!qword_280C7E0A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E0A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A6B22C()
{
  KeyPath = swift_getKeyPath();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35520);
  v0 = sub_214A6B3B4();
  sub_214A6E4F4(sub_214A6B43C, KeyPath, v3, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v0, MEMORY[0x277D84AC0], v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35480);
  sub_214CCDDA4();

  type metadata accessor for BucketItem();
  return sub_214CCF854();
}

unint64_t sub_214A6B3B4()
{
  v2 = qword_280C7CF68;
  if (!qword_280C7CF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA35520);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A6B470()
{

  swift_getAtKeyPath();
}

uint64_t sub_214A6B528@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214A6A428();
}

uint64_t sub_214A6B584(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_214A6B5B8()
{
  v2 = qword_280C7C8E8;
  if (!qword_280C7C8E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C8E8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214A6B664(void *a1, uint64_t a2)
{
  v15 = a2;
  v16 = a1;
  if (a1[3])
  {
    v9 = v16[3];
    __swift_project_boxed_opaque_existential_0(v16, v9);
    v7 = *(v9 - 8);
    v8 = v7;
    v11 = &v5;
    v2 = MEMORY[0x28223BE20](&v5);
    v10 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v2);
    v12 = sub_214CD03D4();
    (*(v8 + 8))(v10, v9);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v6 = [v14 initWithTarget:v13 action:?];
  swift_unknownObjectRelease();
  return v6;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t type metadata accessor for UIUserInterfaceLayoutDirection()
{
  v4 = qword_280C7C718;
  if (!qword_280C7C718)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280C7C718);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_214A6B96C()
{
  v2 = qword_280C7C728;
  if (!qword_280C7C728)
  {
    type metadata accessor for UIUserInterfaceLayoutDirection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C728);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for Direction()
{
  v4 = qword_280C7C680;
  if (!qword_280C7C680)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280C7C680);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_214A6BA84()
{
  v2 = qword_280C7C690;
  if (!qword_280C7C690)
  {
    type metadata accessor for Direction();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C690);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A6BB04()
{
  v2 = qword_280C7C688;
  if (!qword_280C7C688)
  {
    type metadata accessor for Direction();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C688);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A6BBD0@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_36_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

BOOL sub_214A6C35C(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  sub_214A6FB64(a1, a2);
  sub_214A6FB64(a3, a4);
  v10 = (a2 >> 5) & 7;
  switch(v10)
  {
    case 0:
      if (((a4 >> 5) & 7) != 0 || a1 != a3)
      {
        goto LABEL_45;
      }

      sub_214A6FB18(a1, a2);
      sub_214A6FB18(a3, a4);
      return (a2 & 1) == (a4 & 1);
    case 1:
      if (((a4 >> 5) & 7) != 1)
      {
        goto LABEL_45;
      }

      goto LABEL_25;
    case 2:
      if (((a4 >> 5) & 7) != 2)
      {
        goto LABEL_45;
      }

      goto LABEL_25;
    case 3:
      if (((a4 >> 5) & 7) != 3)
      {
        goto LABEL_45;
      }

LABEL_25:
      sub_214A6FB18(a1, a2);
      sub_214A6FB18(a3, a4);
      return a1 == a3;
  }

  if (v10 != 4)
  {
    if (a1 | a2 ^ 0xA0)
    {
      if (a1 ^ 1 | a2 ^ 0xA0)
      {
        if (((a4 >> 5) & 7) == 5 && a3 == 2 && a4 == 160)
        {
LABEL_39:
          sub_214A6FB18(a1, a2);
          sub_214A6FB18(a3, a4);
          return 1;
        }
      }

      else if (((a4 >> 5) & 7) == 5 && a3 == 1 && a4 == 160)
      {
        goto LABEL_39;
      }
    }

    else if (((a4 >> 5) & 7) == 5 && !a3 && a4 == 160)
    {
      goto LABEL_39;
    }

LABEL_45:
    sub_214A6FB18(a1, a2);
    sub_214A6FB18(a3, a4);
    return 0;
  }

  if (((a4 >> 5) & 7) != 4)
  {
    goto LABEL_45;
  }

  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a3);
  type metadata accessor for MessageListSection();
  sub_214B012B0();
  if (sub_214CD03F4())
  {
    MEMORY[0x277D82BD8](a3);
    MEMORY[0x277D82BD8](a1);
    sub_214A6FB18(a1, a2);
    sub_214A6FB18(a3, a4);
    return 1;
  }

  else
  {
    MEMORY[0x277D82BD8](a3);
    MEMORY[0x277D82BD8](a1);
    sub_214A6FB18(a1, a2);
    sub_214A6FB18(a3, a4);
    return 0;
  }
}

uint64_t MUIMessageListSectionDataSourceChange.ef_publicDescription.getter()
{
  v10 = OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  v11 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  if ((*(v11 + 8) & 0xFE) == 0xFE)
  {
    swift_endAccess();
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v3 = *(v9 + v10);
    v4 = *(v9 + v10 + 8);
    sub_214A6FB64(v3, v4);
    swift_endAccess();
    v5 = sub_214A6CB90(v3, v4);
    v6 = v1;
    sub_214A6FB18(v3, v4);
    v7 = v5;
    v8 = v6;
  }

  if (v8)
  {
    return v7;
  }

  else
  {
    return sub_214CCF614();
  }
}

uint64_t sub_214A6CB90(uint64_t a1, unsigned __int8 a2)
{
  v15 = (a2 >> 5) & 7;
  if (v15)
  {
    switch(v15)
    {
      case 1:
        sub_214CD03B4();
        v5 = sub_214CCF614();
        MEMORY[0x21605E650](v5);

        sub_214A63208();
        sub_214CD0014();
        sub_214CD0394();
        sub_214A61B48();
        v6 = sub_214CCF614();
        MEMORY[0x21605E650](v6);

        sub_214A61B48();
        return sub_214CCF5F4();
      case 2:
      case 3:
        sub_214CD03B4();
        v7 = sub_214CCF614();
        MEMORY[0x21605E650](v7);

        sub_214CD0384();
        v8 = sub_214CCF614();
        MEMORY[0x21605E650](v8);

        sub_214A61B48();
        return sub_214CCF5F4();
      case 4:
        MEMORY[0x277D82BE0](a1);
        sub_214CD03B4();
        v9 = sub_214CCF614();
        MEMORY[0x21605E650](v9);

        type metadata accessor for MessageListSection();
        sub_214CD0374();
        v10 = sub_214CCF614();
        MEMORY[0x21605E650](v10);

        sub_214A61B48();
        v12 = sub_214CCF5F4();
        MEMORY[0x277D82BD8](a1);
        return v12;
      default:
        return sub_214CCF614();
    }
  }

  else
  {
    sub_214CD03B4();
    v2 = sub_214CCF614();
    MEMORY[0x21605E650](v2);

    sub_214A63208();
    sub_214CD0014();
    sub_214CD0394();
    sub_214A61B48();
    v3 = sub_214CCF614();
    MEMORY[0x21605E650](v3);

    sub_214CD0384();
    v4 = sub_214CCF614();
    MEMORY[0x21605E650](v4);

    sub_214A61B48();
    return sub_214CCF5F4();
  }
}

uint64_t sub_214A6D370(uint64_t result, unsigned __int8 a2)
{
  if ((a2 & 0xFE) != 0xFE)
  {
    return sub_214A6FB64(result, a2);
  }

  return result;
}

Swift::Void __swiftcall MUIMessageListViewController.bucketBarUserInteractionEnabled(_:)(Swift::Bool a1)
{
  v6 = [v1 bucketsViewController];
  if (v6)
  {
    type metadata accessor for BucketsViewController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      MEMORY[0x277D82BD8](v6);
      v3 = 0;
    }

    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    BucketsViewController.userInteractionEnabled(_:)(a1);
    MEMORY[0x277D82BD8](v2);
  }
}

unint64_t sub_214A6D6C8()
{
  v2 = qword_280C7CF88;
  if (!qword_280C7CF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA354E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF88);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ScrollPosition()
{
  v4 = qword_280C7C730;
  if (!qword_280C7C730)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280C7C730);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214A6D818()
{
  sub_214A704F4();
  sub_214A69208();
  return sub_214CD0644();
}

uint64_t BucketsDataSource.item(at:)()
{
  sub_214CCD354();
  return BucketsDataSource.item(at:)();
}

{
  swift_beginAccess();

  swift_endAccess();
  type metadata accessor for BucketItem();
  sub_214CCD484();

  return v1;
}

uint64_t sub_214A6DB44()
{
  updated = sub_214A64FAC();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

void *BucketItem.init(_:)(void *a1)
{
  v21 = a1;
  v20 = v1;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  sub_214A6E0D8();
  *(v1 + 16) = v2;
  *(v1 + 24) = MUIBucket.localizedTitle.getter(a1);
  *(v1 + 32) = v3;
  v18 = MUIBucket.foregroundColor.getter(a1);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = [objc_opt_self() systemWhiteColor];
  }

  v16[6] = v19;
  v14 = MUIBucket.backgroundColor.getter(a1);
  swift_beginAccess();
  v4 = v16[7];
  v16[7] = v14;
  MEMORY[0x277D82BD8](v4);
  swift_endAccess();
  v15 = MUIAccessibilityIdentifierForBucket(a1);
  if (v15)
  {
    v10 = sub_214CCF564();
    v11 = v5;
    MEMORY[0x277D82BD8](v15);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  swift_beginAccess();
  v16[8] = v12;
  v16[9] = v13;

  swift_endAccess();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v16[13] = sub_214A76298;
  v16[14] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v16[15] = sub_214A79B38;
  v16[16] = v7;
  v8 = swift_allocObject();
  result = v16;
  *(v8 + 16) = a1;
  v16[17] = sub_214B362E0;
  v16[18] = v8;
  return result;
}

unint64_t sub_214A6E0F4()
{
  v2 = qword_280C7C540;
  if (!qword_280C7C540)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C540);
    return ObjCClassMetadata;
  }

  return v2;
}

id MUIAccessibilityIdentifierForBucket(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(&unk_27818A3A0 + a1 - 1);
  }

  return v2;
}

unint64_t sub_214A6E1B0()
{
  v2 = qword_280C7C8A0;
  if (!qword_280C7C8A0)
  {
    _s3__C7OptionsVMa_0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C8A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A6E230()
{
  v2 = qword_280C7C8B8;
  if (!qword_280C7C8B8)
  {
    _s3__C7OptionsVMa_0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C8B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A6E2C8()
{
  v2 = qword_280C7C890;
  if (!qword_280C7C890)
  {
    _s3__C7OptionsVMa_0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C890);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A6E348()
{
  sub_214A6E38C();
  sub_214A69208();
  return sub_214CD0644();
}

unint64_t sub_214A6E38C()
{
  v2 = qword_280C7C888;
  if (!qword_280C7C888)
  {
    _s3__C7OptionsVMa_0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C888);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A6E424@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_214A6E46C()
{
  v2 = qword_280C7CF98;
  if (!qword_280C7CF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37918);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A6E4F4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v72 = a3;
  v71 = a4;
  v70 = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v50);
  v55 = &v15 - v54;
  v56 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v59);
  v64 = &v15 - v63;
  v65 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v66 = &v15 - v65;
  v67 = sub_214CCFA24();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69 = sub_214CD0184();
  v33 = sub_214CD0194();
  sub_214CD0164();
  result = sub_214CCFA14();
  if (v67 < 0)
  {
    sub_214CD01F4();
    __break(1u);
LABEL_24:
    v17 = sub_214CCF824();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_214CCFA34();
    swift_getAssociatedConformanceWitness();
    v22 = sub_214CCF4A4();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_214CD02B4();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69;

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      sub_214CD01F4();
      __break(1u);
LABEL_18:
      sub_214CD02B4();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_214CCFAD4();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_214A75F80();
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_214CD0174();
    sub_214CCFA44();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}

void *sub_214A6EDD8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for BucketItem();
  result = BucketItem.__allocating_init(_:)(v3);
  *a2 = result;
  return result;
}

Swift::Void __swiftcall BucketsViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v5 = v0;
  (MEMORY[0x277D82BE0])();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  (MEMORY[0x277D82BD8])();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35530);
  sub_214CD03C4();
  v2 = v1;
  *v1 = sub_214CCDD94();
  v2[1] = MEMORY[0x277D74C50];
  v2[2] = sub_214CCDB94();
  v2[3] = MEMORY[0x277D74BB8];
  sub_214A63280();
  *(swift_allocObject() + 16) = ObjectType;
  sub_214CCFC04();

  swift_unknownObjectRelease();
}

id BucketCollectionViewLayout.init(sectionProvider:)(uint64_t a1, uint64_t a2)
{
  v5.super_class = swift_getObjectType();
  v17 = a1;
  v18 = a2;
  v19 = v2;
  *&v2[OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v19;

  v15 = a1;
  v16 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_214A7590C;
  v14 = &block_descriptor_3;
  v6 = _Block_copy(&aBlock);

  v9 = v5;
  v8 = objc_msgSendSuper2(&v9, sel_initWithSectionProvider_, v6);
  _Block_release(v6);
  MEMORY[0x277D82BE0](v8);
  v19 = v8;

  MEMORY[0x277D82BD8](v19);
  return v8;
}

uint64_t block_copy_helper_1_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_214A6F324(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = [v5 initWithFrame:a2 collectionViewLayout:{a3, a4, a5}];
  MEMORY[0x277D82BD8](a1);
  return v8;
}

unint64_t sub_214A6F394()
{
  v2 = qword_280C7CB00;
  if (!qword_280C7CB00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CB00);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_214A6F3F8(const void *a1, void *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35508);
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35510);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35510);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t BucketsDataSource.init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a1);
  *(v3 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35468);
  type metadata accessor for BucketItem();
  sub_214CD03C4();
  sub_214A6A018();
  sub_214CCD564();
  *(v9 + 32) = sub_214CCD4A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35470);
  MEMORY[0x277D82BE0](a1);

  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v9 + 24) = sub_214CCDE94();

  MEMORY[0x277D82BD8](a1);
  return v9;
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return [v3 insertObject:a3 atIndex:0];
}

unint64_t type metadata accessor for MUIMessageListSectionDataSourceChange()
{
  v2 = qword_280C7C620;
  if (!qword_280C7C620)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C620);
    return ObjCClassMetadata;
  }

  return v2;
}

char *sub_214A6FA30(uint64_t a1, unsigned __int8 a2)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  MEMORY[0x277D82BE0](v8);
  sub_214A6FB64(a1, a2);
  v5 = &v8[OBJC_IVAR___MUIMessageListSectionDataSourceChange_change];
  swift_beginAccess();
  v2 = *v5;
  v3 = v5[8];
  *v5 = a1;
  v5[8] = a2;
  sub_214A70FA8(v2, v3);
  swift_endAccess();
  sub_214A6FB18(a1, a2);
  MEMORY[0x277D82BD8](v8);
  return v8;
}

uint64_t sub_214A6FB18(uint64_t result, unsigned __int8 a2)
{
  if (((a2 >> 5) & 7) == 4)
  {
    return MEMORY[0x277D82BD8](result);
  }

  return result;
}

uint64_t sub_214A6FB64(uint64_t result, unsigned __int8 a2)
{
  if (((a2 >> 5) & 7) == 4)
  {
    return MEMORY[0x277D82BE0](result);
  }

  return result;
}

uint64_t sub_214A6FC90(uint64_t a1)
{
  if ((*(a1 + 8) & 0xFE) != 0xFE)
  {
    sub_214A6FB18(*a1, *(a1 + 8));
  }

  return a1;
}

Swift::Void __swiftcall BucketsViewController.userInteractionEnabled(_:)(Swift::Bool a1)
{
  v14 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
  swift_beginAccess();
  v15 = *v14;
  MEMORY[0x277D82BE0](*v14);
  swift_endAccess();
  if (v15)
  {
    v11 = v15;
  }

  else
  {
    LOBYTE(v2) = 2;
    v4 = 328;
    LODWORD(v6) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v11 setUserInteractionEnabled_];
  MEMORY[0x277D82BD8](v11);
  v9 = (v13 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
  swift_beginAccess();
  v10 = *v9;
  MEMORY[0x277D82BE0](*v9);
  swift_endAccess();
  if (v10)
  {
    v8 = v10;
  }

  else
  {
    LOBYTE(v3) = 2;
    v5 = 329;
    LODWORD(v7) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  if (a1)
  {
    [v8 setAlpha_];
  }

  else
  {
    [v8 setAlpha_];
  }

  MEMORY[0x277D82BD8](v8);
}

void *BucketsViewController.select(bucket:notifyObserver:)(uint64_t a1, int a2)
{
  v16 = a1;
  v15 = a2;
  v10 = "Fatal error";
  v11 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v12 = "MailUI/BucketsViewController.swift";
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA353A0);
  v13 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v14 = v7 - v13;
  v17 = sub_214CCD374();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v16);
  v21 = v7 - v20;
  v29 = v7 - v20;
  v28 = v4;
  v27 = v5 & 1;
  v26 = v2;
  v22 = (v2 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  v23 = &v25;
  swift_beginAccess();
  v24 = *v22;

  swift_endAccess();
  if (v24)
  {
    v8 = v24;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v7[1] = v8;
  BucketsDataSource.indexPath(for:)();

  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {
    sub_214A6A480(v14);
  }

  else
  {
    (*(v18 + 32))(v21, v14, v17);
    sub_214B40C1C(v21);
    (*(v18 + 8))(v21, v17);
  }

  return sub_214A712CC((v15 & 1), v9, v16);
}

unint64_t sub_214A70374()
{
  v2 = qword_280C7C750;
  if (!qword_280C7C750)
  {
    type metadata accessor for ScrollPosition();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C750);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A703F4()
{
  v2 = qword_280C7C768;
  if (!qword_280C7C768)
  {
    type metadata accessor for ScrollPosition();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C768);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A70474()
{
  v2 = qword_280C7C740;
  if (!qword_280C7C740)
  {
    type metadata accessor for ScrollPosition();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A704F4()
{
  v2 = qword_280C7C738;
  if (!qword_280C7C738)
  {
    type metadata accessor for ScrollPosition();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A70574()
{
  v2 = qword_280C7C758;
  if (!qword_280C7C758)
  {
    type metadata accessor for ScrollPosition();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C758);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A70614()
{

  type metadata accessor for BucketItem();
  sub_214A6A018();
  sub_214CCD594();
}

uint64_t MUIMessageListSectionDataSourceChange.failed.getter()
{
  v17 = 0;
  v4 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  sub_214A6D370(*v4, v6);
  swift_endAccess();
  sub_214A6D370(v5, v6);
  v13 = v5;
  v14 = v6;
  v15 = 1;
  v16 = -96;
  if ((v6 & 0xFE) == 0xFE)
  {
    if ((v16 & 0xFE) == 0xFE)
    {
      sub_214A6FC90(&v13);
      v3 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  sub_214A708B0(&v13, &v11);
  if ((v16 & 0xFE) == 0xFE)
  {
    sub_214A7093C(&v11);
LABEL_8:
    sub_214C60678(&v13);
    v3 = 0;
    goto LABEL_7;
  }

  v9 = v11;
  v10 = v12;
  v7 = v15;
  v8 = v16;
  v2 = sub_214A6C35C(v11, v12, v15, v16);
  sub_214A7093C(&v7);
  sub_214A7093C(&v9);
  sub_214A6FC90(&v13);
  v3 = v2;
LABEL_7:
  sub_214A70FA8(v5, v6);
  return v3 & 1;
}

uint64_t sub_214A708B0(uint64_t *a1, uint64_t a2)
{
  if ((a1[1] & 0xFE) == 0xFE)
  {
    *a2 = *a1;
    *(a2 + 8) = *(a1 + 8);
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    sub_214A6FB64(*a1, v4);
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  return a2;
}

uint64_t MUIMessageListSectionDataSourceChange.skipped.getter()
{
  v17 = 0;
  v4 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  sub_214A6D370(*v4, v6);
  swift_endAccess();
  sub_214A6D370(v5, v6);
  v13 = v5;
  v14 = v6;
  v15 = 0;
  v16 = -96;
  if ((v6 & 0xFE) == 0xFE)
  {
    if ((v16 & 0xFE) == 0xFE)
    {
      sub_214A6FC90(&v13);
      v3 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  sub_214A708B0(&v13, &v11);
  if ((v16 & 0xFE) == 0xFE)
  {
    sub_214A7093C(&v11);
LABEL_8:
    sub_214C60678(&v13);
    v3 = 0;
    goto LABEL_7;
  }

  v9 = v11;
  v10 = v12;
  v7 = v15;
  v8 = v16;
  v2 = sub_214A6C35C(v11, v12, v15, v16);
  sub_214A7093C(&v7);
  sub_214A7093C(&v9);
  sub_214A6FC90(&v13);
  v3 = v2;
LABEL_7:
  sub_214A70FA8(v5, v6);
  return v3 & 1;
}

uint64_t MUIMessageListSectionDataSourceChange.isCleanSnapshot.getter()
{
  v17 = 0;
  v4 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  sub_214A6D370(*v4, v6);
  swift_endAccess();
  sub_214A6D370(v5, v6);
  v13 = v5;
  v14 = v6;
  v15 = 2;
  v16 = -96;
  if ((v6 & 0xFE) == 0xFE)
  {
    if ((v16 & 0xFE) == 0xFE)
    {
      sub_214A6FC90(&v13);
      v3 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  sub_214A708B0(&v13, &v11);
  if ((v16 & 0xFE) == 0xFE)
  {
    sub_214A7093C(&v11);
LABEL_8:
    sub_214C60678(&v13);
    v3 = 0;
    goto LABEL_7;
  }

  v9 = v11;
  v10 = v12;
  v7 = v15;
  v8 = v16;
  v2 = sub_214A6C35C(v11, v12, v15, v16);
  sub_214A7093C(&v7);
  sub_214A7093C(&v9);
  sub_214A6FC90(&v13);
  v3 = v2;
LABEL_7:
  sub_214A70FA8(v5, v6);
  return v3 & 1;
}

id MUIMessageListSectionDataSourceChange.init()()
{
  v4 = 0;
  v0 = OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  *OBJC_IVAR___MUIMessageListSectionDataSourceChange_change = 0;
  *(v0 + 8) = -2;
  v3.receiver = v4;
  v3.super_class = MUIMessageListSectionDataSourceChange;
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x277D82BE0](v2);
  v4 = v2;
  MEMORY[0x277D82BD8](v2);
  return v2;
}

uint64_t sub_214A70FA8(uint64_t result, unsigned __int8 a2)
{
  if ((a2 & 0xFE) != 0xFE)
  {
    return sub_214A6FB18(result, a2);
  }

  return result;
}

uint64_t MUIMessageListSectionDataSourceChange.description.getter()
{
  v2 = [v0 ef_publicDescription];
  v3 = sub_214CCF564();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

Swift::Void __swiftcall BucketsDataSource.reconfigureVisibleBuckets()()
{
  v1 = *(v0 + 16);
  MEMORY[0x277D82BE0](v1);
  v2 = [v1 indexPathsForVisibleItems];
  sub_214CCD374();
  v4 = sub_214CCF7E4();
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v2);

  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  v3 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v3 + 24) = v0;
  sub_214B36FC0(0, 1, sub_214A71238, v3, 0, 0);

  swift_unownedRelease();
}

uint64_t sub_214A711CC()
{

  swift_unownedRelease();
  return swift_deallocObject();
}

unint64_t sub_214A71244()
{
  v2 = qword_280C7CF90;
  if (!qword_280C7CF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA354E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF90);
    return WitnessTable;
  }

  return v2;
}

void *sub_214A712CC(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return sub_214B46894(a3);
  }

  return result;
}

uint64_t MUIMessageListSectionDataSourceChange.hasChanges.getter()
{
  v8 = [v0 isAddition];
  *&v1 = MEMORY[0x277D82BE0](v0).n128_u64[0];
  if (v8)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v0 isRemoval];
  }

  MEMORY[0x277D82BD8](v0);
  *&v2 = MEMORY[0x277D82BE0](v0).n128_u64[0];
  if (v7)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v0 isUpdate];
  }

  MEMORY[0x277D82BD8](v0);
  *&v3 = MEMORY[0x277D82BE0](v0).n128_u64[0];
  if (v6)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v0 isMove];
  }

  MEMORY[0x277D82BD8](v0);
  return v5 & 1;
}

uint64_t MUIMessageListSectionDataSourceChange.isAddition.getter()
{
  v3 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_214A6D370(*v3, v5);
  swift_endAccess();
  if ((v5 & 0xFE) == 0xFE)
  {
    goto LABEL_5;
  }

  if (((v5 >> 5) & 7) != 0)
  {
    sub_214A6FB18(v4, v5);
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t MUIMessageListSectionDataSourceChange.isUpdate.getter()
{
  v3 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_214A6D370(*v3, v5);
  swift_endAccess();
  if ((v5 & 0xFE) == 0xFE)
  {
    goto LABEL_5;
  }

  if (((v5 >> 5) & 7) != 3)
  {
    sub_214A6FB18(v4, v5);
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t MUILastSeenBucketHelper.updateLastSelectedDateIfNecessary(for:)(uint64_t a1)
{
  v74 = a1;
  v60 = sub_214C530E0;
  v61 = sub_214B4C108;
  v62 = sub_214A7E854;
  v63 = sub_214A7E768;
  v64 = sub_214A7E854;
  v65 = sub_214A662DC;
  v66 = sub_214A662DC;
  v67 = sub_214A7E40C;
  v68 = sub_214A662DC;
  v69 = sub_214A662DC;
  v70 = sub_214A7E40C;
  v94 = 0;
  v93 = 0;
  v71 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
  v72 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v73 = v31 - v72;
  v75 = 0;
  v76 = sub_214CCDA74();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v75);
  v80 = v31 - v79;
  v94 = v3;
  v93 = v1;
  v83 = &v92;
  v92 = v3;
  v81 = &v91;
  v91 = 1;
  v82 = type metadata accessor for MUIBucket();
  sub_214A693C4();
  result = sub_214CCF4A4();
  if ((result & 1) == 0)
  {
    v5 = v80;
    v6 = sub_214C50524();
    (*(v77 + 16))(v5, v6, v76);
    v46 = 7;
    v40 = swift_allocObject();
    *(v40 + 16) = v74;
    v45 = 32;
    v7 = swift_allocObject();
    v47 = v7;
    *(v7 + 16) = v60;
    *(v7 + 24) = 0;
    v58 = sub_214CCDA54();
    v59 = sub_214CCFB94();
    v43 = 17;
    v49 = swift_allocObject();
    v42 = 32;
    *(v49 + 16) = 32;
    v50 = swift_allocObject();
    v44 = 8;
    *(v50 + 16) = 8;
    v8 = swift_allocObject();
    v9 = v40;
    v41 = v8;
    *(v8 + 16) = v61;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v41;
    v51 = v10;
    *(v10 + 16) = v62;
    *(v10 + 24) = v11;
    v52 = swift_allocObject();
    *(v52 + 16) = v42;
    v53 = swift_allocObject();
    *(v53 + 16) = v44;
    v12 = swift_allocObject();
    v13 = v47;
    v48 = v12;
    *(v12 + 16) = v63;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v48;
    v55 = v14;
    *(v14 + 16) = v64;
    *(v14 + 24) = v15;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v54 = sub_214CD03C4();
    v56 = v16;

    v17 = v49;
    v18 = v56;
    *v56 = v65;
    v18[1] = v17;

    v19 = v50;
    v20 = v56;
    v56[2] = v66;
    v20[3] = v19;

    v21 = v51;
    v22 = v56;
    v56[4] = v67;
    v22[5] = v21;

    v23 = v52;
    v24 = v56;
    v56[6] = v68;
    v24[7] = v23;

    v25 = v53;
    v26 = v56;
    v56[8] = v69;
    v26[9] = v25;

    v27 = v55;
    v28 = v56;
    v56[10] = v70;
    v28[11] = v27;
    sub_214A63280();

    if (os_log_type_enabled(v58, v59))
    {
      v29 = v71;
      v32 = sub_214CCFF24();
      v31[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v33 = sub_214A632C4(0);
      v34 = sub_214A632C4(2);
      v36 = &v88;
      v88 = v32;
      v37 = &v87;
      v87 = v33;
      v38 = &v86;
      v86 = v34;
      v35 = 2;
      sub_214A6627C(2, &v88);
      sub_214A6627C(v35, v36);
      v84 = v65;
      v85 = v49;
      sub_214A66290(&v84, v36, v37, v38);
      v39 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v84 = v66;
        v85 = v50;
        sub_214A66290(&v84, &v88, &v87, &v86);
        v31[5] = 0;
        v84 = v67;
        v85 = v51;
        sub_214A66290(&v84, &v88, &v87, &v86);
        v31[4] = 0;
        v84 = v68;
        v85 = v52;
        sub_214A66290(&v84, &v88, &v87, &v86);
        v31[3] = 0;
        v84 = v69;
        v85 = v53;
        sub_214A66290(&v84, &v88, &v87, &v86);
        v31[2] = 0;
        v84 = v70;
        v85 = v55;
        sub_214A66290(&v84, &v88, &v87, &v86);
        _os_log_impl(&dword_214A5E000, v58, v59, "Setting last selected date for bucket %s to %s", v32, 0x16u);
        sub_214A669DC(v33);
        sub_214A669DC(v34);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v58);
    (*(v77 + 8))(v80, v76);
    sub_214CCD234();
    v30 = sub_214CCD254();
    (*(*(v30 - 8) + 56))(v73, 0, 1);
    v31[0] = &v90;
    v90 = v74;
    v31[1] = &v89;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378C8);
    sub_214CCF3E4();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_214A727B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unownedRetainStrong();
  v6 = *(a3 + 24);
  MEMORY[0x277D82BE0](v6);

  sub_214A72950(v6);
  MEMORY[0x277D82BD8](v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA354E0);
  sub_214A71244();
  sub_214CCF6F4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35480);
  sub_214CCDE14();
  v4 = sub_214CCF854();

  return v4;
}

uint64_t (*sub_214A72950(uint64_t a1))()
{
  MEMORY[0x277D82BE0](a1);
  v1 = swift_allocObject();
  result = sub_214B38010;
  *(v1 + 16) = a1;
  return result;
}

uint64_t MUIMessageListSectionDataSourceChange.isRemoval.getter()
{
  v3 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_214A6D370(*v3, v5);
  swift_endAccess();
  if ((v5 & 0xFE) == 0xFE)
  {
    goto LABEL_5;
  }

  if (((v5 >> 5) & 7) != 1)
  {
    sub_214A6FB18(v4, v5);
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t MUIMessageListSectionDataSourceChange.isMove.getter()
{
  v3 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_214A6D370(*v3, v5);
  swift_endAccess();
  if ((v5 & 0xFE) == 0xFE)
  {
    goto LABEL_5;
  }

  if (((v5 >> 5) & 7) != 2)
  {
    sub_214A6FB18(v4, v5);
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = 1;
  return v2 & 1;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

double BucketsViewController.preferredHeight.getter()
{
  v11 = 0;
  type metadata accessor for BucketCellContentView();
  sub_214A72EE0(v7);
  v3[0] = v7[0];
  v3[1] = v7[1];
  v3[2] = v7[2];
  v4 = v8;
  v5 = v9;
  v6 = v10;
  static BucketCellContentView.preferredSize(withConfiguration:)(v3);
  v2 = v0;
  sub_214A73A88(v3);
  return v2;
}

void *sub_214A72F24()
{
  if (qword_280C7DAB8 != -1)
  {
    swift_once();
  }

  return &unk_280C7DAC0;
}

id MUIBucket.image.getter(uint64_t a1)
{
  v10 = MUIImageNameForBucket(a1);
  if (v10)
  {
    v6 = sub_214CCF564();
    v7 = v1;
    MEMORY[0x277D82BD8](v10);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  sub_214A731BC();
  v5 = static UIImage.mui_systemImage(with:)(v8, v9);
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  return v4;
}

__CFString *MUIImageNameForBucket(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_27818A3F0[a1 - 1];
  }

  return v2;
}

unint64_t sub_214A731BC()
{
  v2 = qword_280C7C580;
  if (!qword_280C7C580)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C580);
    return ObjCClassMetadata;
  }

  return v2;
}

id static UIImage.mui_systemImage(with:)(uint64_t a1, uint64_t a2)
{
  sub_214A731BC();

  return sub_214A73284(a1, a2);
}

id sub_214A73284(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_214CCF544();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];
  MEMORY[0x277D82BD8](v5);
  return v3;
}

uint64_t sub_214A73354@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_214A73370(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v3;
  *(a2 + 8) = a1[1];
  v4 = a1[2];

  *(a2 + 16) = v4;
  *(a2 + 24) = *(a1 + 24);
  v5 = a1[4];
  MEMORY[0x277D82BE0](v5);
  result = a2;
  *(a2 + 32) = v5;
  *(a2 + 40) = *(a1 + 40);
  return result;
}

double static BucketCellContentView.preferredSize(withConfiguration:)(uint64_t a1)
{
  memset(__b, 0, 0x29uLL);
  v26 = 0;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  __b[0] = *a1;
  v12 = __b[0];
  __b[1] = v13;
  __b[2] = v14;
  LOBYTE(__b[3]) = v15;
  __b[4] = v16;
  LOBYTE(__b[5]) = v17;
  v26 = v1;
  sub_214B28ABC();
  MEMORY[0x277D82BE0](v12);

  MEMORY[0x277D82BE0](v16);
  swift_beginAccess();
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  type metadata accessor for CGSize();
  sub_214A73978();
  sub_214CCF3D4();
  sub_214A73A88(v20);
  v18 = v24;
  if (v25)
  {
    swift_endAccess();
    v5 = sub_214B28958();
    swift_beginAccess();
    v6 = *v5;
    MEMORY[0x277D82BE0](*v5);
    swift_endAccess();
    MEMORY[0x277D82BE0](v12);

    MEMORY[0x277D82BE0](v16);
    v19[3] = &type metadata for BucketContentConfiguration;
    v19[4] = sub_214A74A40();
    v2 = swift_allocObject();
    v19[0] = v2;
    *(v2 + 16) = v12;
    *(v2 + 24) = v13;
    *(v2 + 32) = v14;
    *(v2 + 40) = v15;
    *(v2 + 48) = v16;
    *(v2 + 56) = v17;
    BucketCellContentView.configuration.setter(v19);
    MEMORY[0x277D82BD8](v6);
    v7 = sub_214B28958();
    swift_beginAccess();
    v8 = *v7;
    MEMORY[0x277D82BE0](*v7);
    swift_endAccess();
    [v8 systemLayoutSizeFittingSize_];
    v9 = v3;
    MEMORY[0x277D82BD8](v8);
    sub_214B28ABC();
    MEMORY[0x277D82BE0](v12);

    MEMORY[0x277D82BE0](v16);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35310);
    sub_214CCF3E4();
    swift_endAccess();
    return v9;
  }

  else
  {
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_214A73880()
{
  MEMORY[0x277D82BD8](*(v0 + 16));

  MEMORY[0x277D82BD8](*(v0 + 48));
  return swift_deallocObject();
}

uint64_t type metadata accessor for CGSize()
{
  v4 = qword_280C7C5F8;
  if (!qword_280C7C5F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280C7C5F8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_214A73978()
{
  v2 = qword_280C7DAA8;
  if (!qword_280C7DAA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DAA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A73A0C()
{
  v2 = qword_280C7DAA0;
  if (!qword_280C7DAA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DAA0);
    return WitnessTable;
  }

  return v2;
}

void *sub_214A73A88(void *a1)
{
  MEMORY[0x277D82BD8](*a1);

  MEMORY[0x277D82BD8](a1[4]);
  return a1;
}

uint64_t BucketCellContentView.init(configuration:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v37 = 0;
  memset(__b, 0, 0x29uLL);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v2 = *(a1 + 24);
  v11 = v2;
  v12 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = v3;
  __b[0] = *a1;
  __b[1] = v9;
  __b[2] = v10;
  LOBYTE(__b[3]) = v2;
  __b[4] = v12;
  LOBYTE(__b[5]) = v3;
  v37 = v1;
  sub_214A73E9C(&v1[OBJC_IVAR____TtC6MailUI21BucketCellContentView_appliedConfiguration]);
  v15 = v37;
  v14 = OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView;
  sub_214A73F04();
  *&v15[v14] = sub_214A61730();
  v17 = v37;
  v16 = OBJC_IVAR____TtC6MailUI21BucketCellContentView_label;
  sub_214A73F68();
  *&v17[v16] = sub_214A61730();
  v19 = v37;
  v18 = OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView;
  sub_214A73FCC();
  *&v19[v18] = sub_214A61730();
  v21 = v37;
  v20 = OBJC_IVAR____TtC6MailUI21BucketCellContentView_labelCountStackView;
  *&v21[v20] = sub_214A61730();
  v22 = v37;
  v23 = OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageViewFontConfiguration;
  sub_214A74030();
  v24 = objc_opt_self();
  v25 = *MEMORY[0x277D76918];
  MEMORY[0x277D82BE0](*MEMORY[0x277D76918]);
  v26 = [v24 _preferredFontForTextStyle_weight_];
  MEMORY[0x277D82BD8](v25);
  if (v26)
  {
    *&v22[v23] = sub_214A74094(v26);
    v35.receiver = v37;
    v35.super_class = ObjectType;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v5 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    MEMORY[0x277D82BE0](v5);
    v37 = v5;
    sub_214B2A2E0();
    v27[0] = v8;
    v27[1] = v9;
    v27[2] = v10;
    v28 = v11;
    v29 = v12;
    v30 = v13;
    sub_214B290DC(v27);
    MEMORY[0x277D82BD8](v8);

    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v37);
    return v5;
  }

  else
  {
    result = sub_214CD01F4();
    __break(1u);
  }

  return result;
}

void *sub_214A73E9C@<X0>(void *a1@<X8>)
{
  memset(__b, 0, 0x29uLL);
  memset(__b, 0, 24);
  LOBYTE(__b[3]) = 2;
  __b[4] = 0;
  LOBYTE(__b[5]) = 0;
  return memcpy(a1, __b, 0x29uLL);
}

unint64_t sub_214A73F04()
{
  v2 = qword_280C7CD20;
  if (!qword_280C7CD20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CD20);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214A73F68()
{
  v2 = qword_280C7C560;
  if (!qword_280C7C560)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C560);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214A73FCC()
{
  v2 = qword_280C7CD18;
  if (!qword_280C7CD18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CD18);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214A74030()
{
  v2 = qword_280C7C7B8;
  if (!qword_280C7C7B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C7B8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214A74094(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() configurationWithFont_];
  MEMORY[0x277D82BD8](a1);
  return v3;
}

BOOL static BucketContentConfiguration.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v41 = 0;
  v40 = 0;
  v20 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v41 = a1;
  v21 = *a2;
  v16 = *(a2 + 1);
  v17 = *(a2 + 24);
  v18 = a2[4];
  v19 = *(a2 + 40);
  v40 = a2;
  MEMORY[0x277D82BE0](v20);
  MEMORY[0x277D82BE0](v20);
  MEMORY[0x277D82BE0](v21);
  MEMORY[0x277D82BE0](v21);
  v38 = v20;
  v39 = v21;
  if (v20)
  {
    sub_214A671A8(&v38, &v24);
    if (v39)
    {
      v23 = v24;
      v22 = v39;
      sub_214A731BC();
      v9 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      sub_214A671E8(&v38);
      v10 = v9;
      goto LABEL_7;
    }

    MEMORY[0x277D82BD8](v24);
    goto LABEL_9;
  }

  if (v39)
  {
LABEL_9:
    sub_214A68120(&v38);
    v10 = 0;
    goto LABEL_7;
  }

  sub_214A671E8(&v38);
  v10 = 1;
LABEL_7:
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v20);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v36[0] = v11;
  v36[1] = v12;
  v37 = v16;
  if (v12)
  {
    sub_214A61AD0(v36, &v27);
    if (*(&v37 + 1))
    {
      v26 = v27;
      v25 = v37;
      v7 = MEMORY[0x21605D8D0](v27, *(&v27 + 1), v37, *(&v37 + 1));
      sub_214A61B48();
      sub_214A61B48();
      sub_214A61B48();
      v8 = v7;
      goto LABEL_17;
    }

    sub_214A61B48();
    goto LABEL_19;
  }

  if (*(&v37 + 1))
  {
LABEL_19:
    sub_214A76610();
    v8 = 0;
    goto LABEL_17;
  }

  sub_214A61B48();
  v8 = 1;
LABEL_17:

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v34 = v13;
  v35 = v17;
  if (v13 != 2)
  {
    v28 = v13;
    if (v35 != 2)
    {
      v6 = (v28 & 1) == (v35 & 1);
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  if (v35 != 2)
  {
LABEL_29:
    v6 = 0;
    goto LABEL_27;
  }

  v6 = 1;
LABEL_27:
  if (!v6)
  {
    return 0;
  }

  MEMORY[0x277D82BE0](v14);
  MEMORY[0x277D82BE0](v14);
  MEMORY[0x277D82BE0](v18);
  MEMORY[0x277D82BE0](v18);
  v32 = v14;
  v33 = v18;
  if (v14)
  {
    sub_214A671A8(&v32, &v31);
    if (v33)
    {
      v30 = v31;
      v29 = v33;
      sub_214A65CE0();
      v4 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      sub_214A671E8(&v32);
      v5 = v4;
      goto LABEL_37;
    }

    MEMORY[0x277D82BD8](v31);
    goto LABEL_39;
  }

  if (v33)
  {
LABEL_39:
    sub_214A68120(&v32);
    v5 = 0;
    goto LABEL_37;
  }

  sub_214A671E8(&v32);
  v5 = 1;
LABEL_37:
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v14);
  return (v5 & 1) != 0 && (v15 & 1) == (v19 & 1);
}

uint64_t sub_214A746A8(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t block_destroy_helper_2()
{
}

{
}

uint64_t block_destroy_helper_6()
{
}

{
}

uint64_t block_destroy_helper_8()
{
}

{
}

uint64_t block_destroy_helper_11()
{
}

{
}

uint64_t block_destroy_helper_12()
{
}

{
}

uint64_t block_destroy_helper_13()
{
}

{
}

uint64_t block_destroy_helper_19()
{
}

{
}

uint64_t block_destroy_helper_20()
{
}

{
}

uint64_t block_destroy_helper_21()
{
}

{
}

uint64_t block_destroy_helper_23()
{
}

{
}

uint64_t block_destroy_helper_25()
{
}

{
}

uint64_t block_destroy_helper_26()
{
}

{
}

unint64_t sub_214A74A40()
{
  v2 = qword_280C7DAB0;
  if (!qword_280C7DAB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DAB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t BucketCellContentView.configuration.setter(uint64_t a1)
{
  memset(__b, 0, 0x29uLL);
  v20 = a1;
  v19 = v1;
  sub_214A74CE0(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA366C0);
  if (swift_dynamicCast())
  {
    v3 = __b[6];
    v4 = __b[7];
    v5 = __b[8];
    v6 = v15;
    v7 = v16;
    v8 = v17 & 1;
  }

  else
  {
    v3 = 1;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  if (v3 != 1)
  {
    __b[0] = v3;
    __b[1] = v4;
    __b[2] = v5;
    LOBYTE(__b[3]) = v6;
    __b[4] = v7;
    LOBYTE(__b[5]) = v8 & 1;
    v10[0] = v3;
    v10[1] = v4;
    v10[2] = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8 & 1;
    sub_214B290DC(v10);
    MEMORY[0x277D82BD8](v3);

    MEMORY[0x277D82BD8](v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_214A74CE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t BucketContentConfiguration.hash(into:)(uint64_t a1)
{
  v13 = 0;
  v14 = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  v7 = v1[4];
  v13 = v1;
  MEMORY[0x277D82BE0](v3);
  v12 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E8);
  sub_214A74F50();
  sub_214CD0554();
  sub_214A671E8(&v12);

  v10 = v4;
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0);
  sub_214A75068();
  sub_214CD0554();
  sub_214A61B48();
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F8);
  sub_214A750FC();
  sub_214CD0554();
  MEMORY[0x277D82BE0](v7);
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35300);
  sub_214A75190();
  sub_214CD0554();
  sub_214A671E8(&v8);
  return sub_214CD0554();
}

unint64_t sub_214A74F50()
{
  v2 = qword_280C7C570;
  if (!qword_280C7C570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA352E8);
    sub_214A74FE8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A74FE8()
{
  v2 = qword_280C7C568;
  if (!qword_280C7C568)
  {
    sub_214A731BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A75068()
{
  v2 = qword_280C7CFC0;
  if (!qword_280C7CFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA352F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CFC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A750FC()
{
  v2 = qword_280C7CD80;
  if (!qword_280C7CD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA352F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CD80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A75190()
{
  v2 = qword_280C7C5A0;
  if (!qword_280C7C5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35300);
    sub_214A75228();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A75228()
{
  v2 = qword_280C7C590;
  if (!qword_280C7C590)
  {
    sub_214A65CE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C590);
    return WitnessTable;
  }

  return v2;
}

Swift::Void __swiftcall BucketsViewController.viewDidLayoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v29 = v0;
  *&v1 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, sel_viewDidLayoutSubviews, v1);
  (MEMORY[0x277D82BD8])();
  v24 = &v0[OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSize];
  swift_beginAccess();
  v25 = *v24;
  swift_endAccess();
  v27 = [v26 view];
  *&v2 = (MEMORY[0x277D82BD8])().n128_u64[0];
  if (v27)
  {
    v22 = v27;
  }

  else
  {
    LOBYTE(v8) = 2;
    v10 = 164;
    LODWORD(v12) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v22 frame];
  v21.width = v3;
  v21.height = v4;
  MEMORY[0x277D82BD8](v22);
  if (!CGSizeEqualToSize(v25, v21))
  {
    v20 = [v26 view];
    *&v5 = (MEMORY[0x277D82BD8])().n128_u64[0];
    if (v20)
    {
      v19 = v20;
    }

    else
    {
      LOBYTE(v9) = 2;
      v11 = 165;
      LODWORD(v13) = 0;
      sub_214CD01F4();
      __break(1u);
    }

    [v19 frame];
    v14 = v6;
    v16 = v7;
    v15 = &v26[OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSize];
    swift_beginAccess();
    *v15 = v14;
    *(v15 + 1) = v16;
    swift_endAccess();
    MEMORY[0x277D82BD8](v19);
    v17 = &v26[OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource];
    swift_beginAccess();
    v18 = *v17;

    swift_endAccess();
    if (!v18)
    {
      sub_214CD01F4();
      __break(1u);
    }

    BucketsDataSource.reconfigureVisibleBuckets()();
  }
}

id sub_214A7590C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v7 = v5(a2, a3);
  swift_unknownObjectRelease();

  return v7;
}

id sub_214A75998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

uint64_t MUIMessageListViewController.bucketsViewControllerIsLandscape(_:)()
{
  v6 = [objc_opt_self() currentDevice];
  [v6 orientation];
  MEMORY[0x277D82BD8](v6);
  type metadata accessor for UIDeviceOrientation();
  sub_214A75CA4();
  if (sub_214CD03F4())
  {
    v5 = 1;
  }

  else
  {
    v4 = [objc_opt_self() currentDevice];
    [v4 orientation];
    MEMORY[0x277D82BD8](v4);
    v5 = sub_214CD03F4();
  }

  if (v5)
  {
    v1 = [objc_opt_self() currentDevice];
    v2 = [v1 isPhone];
    MEMORY[0x277D82BD8](v1);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t type metadata accessor for UIDeviceOrientation()
{
  v4 = qword_280C7CAB8;
  if (!qword_280C7CAB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280C7CAB8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_214A75CA4()
{
  v2 = qword_280C7CAC8;
  if (!qword_280C7CAC8)
  {
    type metadata accessor for UIDeviceOrientation();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CAC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t BucketsDataSource.bucketItems()()
{
  swift_beginAccess();

  swift_endAccess();
  sub_214CCD494();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35478);
  v4 = type metadata accessor for BucketItem();
  v0 = sub_214A75E48();
  v2 = sub_214A6E4F4(sub_214A75ED0, 0, v3, v4, MEMORY[0x277D84A98], v0, MEMORY[0x277D84AC0], v5);
  sub_214A75F10();
  return v2;
}

unint64_t sub_214A75E48()
{
  v2 = qword_280C7EA98;
  if (!qword_280C7EA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35478);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EA98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A75ED0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

void *sub_214A75F48(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_214A75FAC()
{
  v2 = qword_280C7EAB0;
  if (!qword_280C7EAB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EAB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A76024()
{
  v2 = qword_280C7CF78;
  if (!qword_280C7CF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA35520);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A760AC()
{
  v2 = qword_280C7C458;
  if (!qword_280C7C458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35440);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C458);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A76148()
{
  swift_beginAccess();
  v6 = *(v0 + 80);
  MEMORY[0x277D82BE0](v6);
  swift_endAccess();
  if (v6)
  {
    return v6;
  }

  v3 = sub_214A7623C();
  MEMORY[0x277D82BE0](v3);
  swift_beginAccess();
  v1 = *(v5 + 80);
  *(v5 + 80) = v3;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v3;
}

uint64_t sub_214A7623C()
{
  v0 = sub_214B35E14();
  v2 = v0();

  return v2;
}

id MUIBucket.selectedImage.getter(uint64_t a1)
{
  v10 = MUISelectedImageNameForBucket(a1);
  if (v10)
  {
    v6 = sub_214CCF564();
    v7 = v1;
    MEMORY[0x277D82BD8](v10);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  sub_214A731BC();
  v5 = static UIImage.mui_systemImage(with:)(v8, v9);
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  return v4;
}

uint64_t sub_214A76458(uint64_t a1)
{
  if (MUISolariumFeatureEnabled())
  {
    v2 = MUIBucket.selectedImage.getter(a1);
  }

  else
  {
    v2 = MUIBucket.image.getter(a1);
  }

  if (v2)
  {
    return v2;
  }

  sub_214B11080();
  result = sub_214CD0204();
  __break(1u);
  return result;
}

__CFString *MUISelectedImageNameForBucket(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_27818A418[a1 - 1];
  }

  return v2;
}

uint64_t sub_214A7658C()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

void __swiftcall BucketCollectionViewLayoutFactory.ItemSize.init(min:max:isSelected:)(MailUI::BucketCollectionViewLayoutFactory::ItemSize *__return_ptr retstr, CGSize min, CGSize max, Swift::Bool isSelected)
{
  __b[0] = *&min.width;
  __b[1] = *&min.height;
  __b[2] = *&max.width;
  __b[3] = *&max.height;
  LOBYTE(__b[4]) = isSelected;
  memcpy(retstr, __b, 0x21uLL);
}

uint64_t sub_214A76730(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 32) & 0xFE) != 0)
      {
        v3 = (*(a1 + 32) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_214A76854(uint64_t a1)
{
  v13 = a1;
  v12 = v1;
  v11 = sub_214A6A428();
  sub_214CD0554();
  v9 = sub_214A7658C();
  v10 = v2;
  sub_214CD0554();
  sub_214A61B48();
  v8 = sub_214A76A2C() & 1;
  sub_214CD0554();
  v7 = sub_214A76A88();
  sub_214A65CE0();
  sub_214A75228();
  sub_214CD0554();
  MEMORY[0x277D82BD8](v7);
  v6 = sub_214A76AEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35300);
  sub_214A75190();
  sub_214CD0554();
  sub_214A671E8(&v6);
  v5[0] = sub_214A76B50();
  v5[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0);
  sub_214A75068();
  sub_214CD0554();
  result = v5;
  sub_214A61B48();
  return result;
}

uint64_t sub_214A76A2C()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_214A76A88()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

uint64_t sub_214A76AEC()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

uint64_t sub_214A76B50()
{
  swift_beginAccess();
  v2 = *(v0 + 64);

  swift_endAccess();
  return v2;
}

double sub_214A76BB8(char *a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v19 = a2;
  v18 = a3;
  v21 = a2;
  v16 = *(a2 - 8);
  v14 = a2 - 8;
  v15 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a3);
  v17 = v4 - v15;
  (*(v16 + 16))(v4 - v15);
  if (sub_214CD0034() > 64)
  {
    v4[1] = sub_214B27D4C();
    sub_214B27DC4();
    sub_214CCF2F4();
    v5 = *(v16 + 8);
    v4[2] = v16 + 8;
    v5(v13, v19);
    v5(v17, v19);
    return v20;
  }

  else if (sub_214CD0044())
  {
    v8 = sub_214CD0024();
    v7 = *(v16 + 8);
    v6 = v16 + 8;
    v7(v13, v19);
    v7(v17, v19);
    return v8;
  }

  else
  {
    v11 = sub_214CD0024();
    v10 = *(v16 + 8);
    v9 = v16 + 8;
    v10(v13, v19);
    v10(v17, v19);
    return v11;
  }
}

unint64_t sub_214A76E40()
{
  v2 = qword_280C7CFF0;
  if (!qword_280C7CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35458);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CFF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A76EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 33);
  if (a2 > 0xFE)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 32) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_214A77084()
{
  v2 = qword_280C7C530;
  if (!qword_280C7C530)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C530);
    return ObjCClassMetadata;
  }

  return v2;
}

_BYTE *sub_214A770E8@<X0>(_BYTE *result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = *result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

BOOL static BucketCollectionViewLayout.Configuration.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    if (v5 == 1)
    {
      v4 = 1;
    }

    else if (v5 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (v6 == 1)
    {
      v3 = 1;
    }

    else if (v6 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_214A77224(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 32);

  result = a2;
  *(a2 + 32) = v4;
  return result;
}

unint64_t sub_214A7727C()
{
  v2 = qword_280C7C9B0;
  if (!qword_280C7C9B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C9B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214A772E0()
{
  v2 = qword_280C7C9A8;
  if (!qword_280C7C9A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C9A8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214A77344(uint64_t a1, uint64_t a2)
{
  v5 = [swift_getObjCClassFromMetadata() sizeWithWidthDimension:a1 heightDimension:a2];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v5;
}

id sub_214A773B8(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() itemWithLayoutSize_];
  MEMORY[0x277D82BD8](a1);
  return v3;
}

unint64_t sub_214A77414()
{
  v2 = qword_280C7C790;
  if (!qword_280C7C790)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C790);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214A77478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [swift_getObjCClassFromMetadata() spacingForLeading:a1 top:a2 trailing:a3 bottom:a4];
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v9;
}

unint64_t sub_214A77548()
{
  v2 = qword_280C7C8C8;
  if (!qword_280C7C8C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C8C8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214A775AC(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() sectionWithGroup_];
  MEMORY[0x277D82BD8](a1);
  return v3;
}

Swift::OpaquePointer_optional __swiftcall BucketCollectionViewLayout.layoutAttributesForElements(in:)(__C::CGRect in)
{
  *&v10 = in.origin.x;
  *(&v10 + 1) = *&in.origin.y;
  *&v11 = in.size.width;
  *(&v11 + 1) = *&in.size.height;
  ObjectType = swift_getObjectType();
  v16 = v10;
  v17 = v11;
  v15 = v1;
  (MEMORY[0x277D82BE0])();
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_layoutAttributesForElementsInRect_, v10, v11);
  if (v12)
  {
    sub_214A77A7C();
    v7 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v12);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA353A8);
    sub_214A77A7C();
    sub_214A77AE0();
    v6 = sub_214CCF6F4();
    sub_214A62278();
    (MEMORY[0x277D82BD8])();
    v5 = v6;
  }

  else
  {
    (MEMORY[0x277D82BD8])();
    v5 = 0;
  }

  if (v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA353A8);
    sub_214A77C04();
    sub_214CCFAC4();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA353B8);
      sub_214CD01B4();
      if (!v13)
      {
        break;
      }

      sub_214B2FB0C(v13);
      (MEMORY[0x277D82BD8])();
    }

    sub_214A62278();
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  v3 = v4;
  result.value._rawValue = v3;
  result.is_nil = v2;
  return result;
}

unint64_t sub_214A77A7C()
{
  v2 = qword_280C7C6E0;
  if (!qword_280C7C6E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C6E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214A77AE0()
{
  v2 = qword_280C7CDF0;
  if (!qword_280C7CDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA353A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CDF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A77B68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  [*a1 copy];
  sub_214CD0054();
  sub_214A77A7C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *a2 = 0;
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_214A77C04()
{
  v2 = qword_280C7CDE0;
  if (!qword_280C7CDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA353A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CDE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A77C8C()
{
  result = sub_214CCD354();
  if (!__OFSUB__(0x7FFFFFFFFFFFFFFFLL, result))
  {
    return 0x7FFFFFFFFFFFFFFFLL - result;
  }

  __break(1u);
  return result;
}

void *sub_214A77D2C(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35508);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35510);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

_BYTE *BucketCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  *&v9 = a3;
  *(&v9 + 1) = a4;
  ObjectType = swift_getObjectType();
  v12 = v8;
  v13 = v9;
  v14 = v4;
  v4[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isStacked] = 0;
  v14[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isExpanded] = 0;
  v14[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isPreselected] = 0;
  v14[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_shouldHighlightBadge] = 0;
  *&v14[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_item] = 0;
  v6 = OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_customBackgroundView;
  type metadata accessor for BucketCollectionViewCellBackgroundView();
  *&v14[v6] = sub_214A61730();
  v11.receiver = v14;
  v11.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v11, sel_initWithFrame_, v8, v9);
  MEMORY[0x277D82BE0](v10);
  v14 = v10;
  MEMORY[0x277D82BD8](v10);
  return v10;
}

unint64_t sub_214A7802C()
{
  v2 = qword_280C7C5D0;
  if (!qword_280C7C5D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C5D0);
    return ObjCClassMetadata;
  }

  return v2;
}

id BucketCollectionViewCell.update(item:isPreselected:isExpanded:isStacked:shouldHighlightBadge:)(uint64_t a1, char a2, char a3, char a4, char a5)
{

  v7 = (v5 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_item);
  swift_beginAccess();
  *v7 = a1;

  swift_endAccess();
  BucketCollectionViewCell.isPreselected.setter(a2 & 1);
  BucketCollectionViewCell.isExpanded.setter(a3 & 1);
  BucketCollectionViewCell.isStacked.setter(a4 & 1);
  sub_214B2D1FC(a5 & 1);
  return [v13 setNeedsUpdateConfiguration];
}

unint64_t BucketCollectionViewCell.isPreselected.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isPreselected);
  swift_beginAccess();
  v6 = *v3;
  swift_endAccess();
  v4 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isPreselected);
  swift_beginAccess();
  *v4 = a1;
  swift_endAccess();
  return sub_214A78278(v6 & 1);
}

unint64_t sub_214A78278(unsigned int a1)
{
  v4 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isPreselected);
  swift_beginAccess();
  v5 = *v4;
  swift_endAccess();
  result = a1;
  if ((v5 & 1) != (a1 & 1))
  {
    return [v3 setNeedsUpdateConfiguration];
  }

  return result;
}

unint64_t BucketCollectionViewCell.isExpanded.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isExpanded);
  swift_beginAccess();
  v6 = *v3;
  swift_endAccess();
  v4 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isExpanded);
  swift_beginAccess();
  *v4 = a1;
  swift_endAccess();
  return sub_214A783E8(v6 & 1);
}

unint64_t sub_214A783E8(unsigned int a1)
{
  v4 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isExpanded);
  swift_beginAccess();
  v5 = *v4;
  swift_endAccess();
  result = a1;
  if ((v5 & 1) != (a1 & 1))
  {
    return [v3 setNeedsUpdateConfiguration];
  }

  return result;
}

unint64_t BucketCollectionViewCell.isStacked.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isStacked);
  swift_beginAccess();
  v6 = *v3;
  swift_endAccess();
  v4 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isStacked);
  swift_beginAccess();
  *v4 = a1;
  swift_endAccess();
  return sub_214A78558(v6 & 1);
}

unint64_t sub_214A78558(unsigned int a1)
{
  v4 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isStacked);
  swift_beginAccess();
  v5 = *v4;
  swift_endAccess();
  result = a1;
  if ((v5 & 1) != (a1 & 1))
  {
    return [v3 setNeedsUpdateConfiguration];
  }

  return result;
}

void *BucketCollectionViewCell.updateConfiguration(using:)(uint64_t a1)
{
  v156 = a1;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v160 = __b;
  memset(__b, 0, 0x29uLL);
  v179 = 0;
  v177 = 0.0;
  v172 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA366A0);
  v146 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v147 = &v50 - v146;
  v155 = 0;
  v148 = sub_214CCDCB4();
  v149 = *(v148 - 8);
  v150 = v148 - 8;
  v151 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v156);
  v152 = &v50 - v151;
  v153 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v154 = &v50 - v153;
  v196 = &v50 - v153;
  v195 = v5;
  v194 = v1;
  sub_214A73E9C(v189);
  v163 = v185;
  v185[0] = v189[0];
  v185[1] = v189[1];
  v185[2] = v189[2];
  v186 = v190;
  v187 = v191;
  v188 = v192;
  v157 = sub_214CCDB84();
  v162 = v184;
  v184[3] = v157;
  v184[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v184);
  v7 = *(v157 - 8);
  v158 = *(v7 + 16);
  v159 = v7 + 16;
  v158(boxed_opaque_existential_1, v156);
  BucketContentConfiguration.updated(for:)(v162, v160);
  v8 = v161;
  __swift_destroy_boxed_opaque_existential_0(v162);
  sub_214A73A88(v163);
  v164 = &v8[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_item];
  v165 = &v183;
  swift_beginAccess();
  v166 = *v164;

  swift_endAccess();
  if (v166)
  {
    v145 = v166;
    v141 = v166;
    v172 = v166;
    v142 = &v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isExpanded];
    v143 = &v171;
    swift_beginAccess();
    v144 = *v142;
    swift_endAccess();
    MEMORY[0x277D82BE0](v161);
    if (v144)
    {
      v140 = 1;
    }

    else
    {
      v137 = &v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isPreselected];
      v138 = &v170;
      swift_beginAccess();
      v139 = *v137;
      swift_endAccess();
      v140 = v139;
    }

    v136 = v140;
    MEMORY[0x277D82BD8](v161);
    if (v136)
    {
      __b[1] = sub_214A7658C();
      __b[2] = v9;

      v133 = &v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isPreselected];
      v134 = &v168;
      swift_beginAccess();
      v135 = *v133;
      swift_endAccess();
      if (v135)
      {
        v132 = sub_214A79998();
      }

      else
      {
        v132 = sub_214A76148();
      }

      v10 = __b[0];
      __b[0] = v132;
      MEMORY[0x277D82BD8](v10);
      v129 = &v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isPreselected];
      v130 = &v167;
      swift_beginAccess();
      v131 = *v129;
      swift_endAccess();
      if (v131)
      {
        v128 = sub_214A76A88();
      }

      else
      {
        v128 = [objc_opt_self() secondaryLabelColor];
      }

      v11 = __b[4];
      __b[4] = v128;
      MEMORY[0x277D82BD8](v11);
    }

    else
    {
      v127 = sub_214A76A2C();
      MEMORY[0x277D82BE0](v161);
      if (v127)
      {
        v123 = &v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_shouldHighlightBadge];
        v124 = &v169;
        swift_beginAccess();
        v125 = *v123;
        swift_endAccess();
        v126 = v125;
      }

      else
      {
        v126 = 0;
      }

      v122 = v126;
      MEMORY[0x277D82BD8](v161);
      LOBYTE(__b[3]) = v122 & 1;
      v12 = [objc_opt_self() secondaryLabelColor];
      v13 = __b[4];
      __b[4] = v12;
      MEMORY[0x277D82BD8](v13);
      if (sub_214A76A2C())
      {
        v121 = sub_214B35B5C();
      }

      else
      {
        v121 = sub_214A76148();
      }

      v14 = __b[0];
      __b[0] = v121;
      MEMORY[0x277D82BD8](v14);
    }
  }

  MEMORY[0x277D82BE0](v161);
  v111 = __b[0];
  v112 = __b[1];
  v113 = __b[2];
  v114 = LOBYTE(__b[3]);
  v115 = __b[4];
  v116 = LOBYTE(__b[5]);
  MEMORY[0x277D82BE0](__b[0]);

  MEMORY[0x277D82BE0](v115);
  v117 = v182;
  v182[3] = &type metadata for BucketContentConfiguration;
  v182[4] = sub_214A74A40();
  v15 = swift_allocObject();
  v16 = v112;
  v17 = v113;
  v18 = v114;
  v19 = v115;
  v20 = v116;
  v21 = v15;
  v22 = v117;
  v182[0] = v21;
  *(v21 + 16) = v111;
  *(v21 + 24) = v16;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  *(v21 + 48) = v19;
  *(v21 + 56) = v20;
  MEMORY[0x21605DF70](v22);
  MEMORY[0x277D82BD8](v161);
  sub_214CCDC84();
  v118 = v181;
  v181[3] = v157;
  v181[4] = MEMORY[0x277D74BA8];
  v23 = __swift_allocate_boxed_opaque_existential_1(v181);
  (v158)(v23, v156, v157);
  sub_214CCDC94();
  __swift_destroy_boxed_opaque_existential_0(v118);
  v119 = *(v149 + 8);
  v120 = v149 + 8;
  v119(v152, v148);
  if (MUISolariumFeatureEnabled())
  {
    *&v24 = MEMORY[0x277D82BE0](v161).n128_u64[0];
    [v161 bounds];
    v173 = v25;
    v174 = v26;
    v175 = v27;
    v176 = v28;
    v106 = v28;
    MEMORY[0x277D82BD8](v161);
    v107 = v106 * 0.5;
    MEMORY[0x277D82BE0](v161);
    v108 = v161;
    UIRoundToViewScale();
    v109 = v29;
    MEMORY[0x277D82BD8](v108);
    v110 = v109;
  }

  else
  {
    *&v30 = MEMORY[0x277D82BE0](v161).n128_u64[0];
    [v161 bounds];
    v180[3] = v31;
    v180[4] = v32;
    v180[5] = v33;
    *&v180[6] = v34;
    v102 = v34;
    MEMORY[0x277D82BD8](v161);
    v103 = v102 * 0.42;
    MEMORY[0x277D82BE0](v161);
    v104 = v161;
    UIRoundToViewScale();
    v105 = v35;
    MEMORY[0x277D82BD8](v104);
    v110 = v105;
  }

  sub_214CCDBD4();
  v99 = &v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isStacked];
  v100 = v180;
  swift_beginAccess();
  v101 = *v99;
  swift_endAccess();
  if (v101)
  {
    *&v36 = MEMORY[0x277D82BE0](v161).n128_u64[0];
    [v161 contentScaleFactor];
    v95 = v37;
    MEMORY[0x277D82BD8](v161);
    v96 = 2.0 / v95;
    v177 = 2.0 / v95;
    sub_214CCDBC4();
    sub_214CCDBE4();
    *&v38 = MEMORY[0x277D82BE0](v161).n128_u64[0];
    v97 = [v161 traitCollection];
    *&v39 = MEMORY[0x277D82BD8](v161).n128_u64[0];
    v98 = [v97 mf_useSplitViewStyling];
    MEMORY[0x277D82BD8](v97);
    if (v98)
    {
      v94 = [objc_opt_self() systemGroupedBackgroundColor];
    }

    else
    {
      v94 = [objc_opt_self() systemBackgroundColor];
    }

    sub_214CCDBB4();
  }

  v92 = *&v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_customBackgroundView];
  MEMORY[0x277D82BE0](v92);
  sub_214CCDBA4();
  v93 = &v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_item];
  swift_beginAccess();
  if (*v93)
  {
    v89 = *v93;

    swift_endAccess();
    v90 = sub_214A76AEC();

    v91 = v90;
  }

  else
  {
    swift_endAccess();
    v91 = 0;
  }

  v88 = v91;
  if (v91)
  {
    v87 = v88;
    v83 = v88;
    v179 = v88;
    v84 = &v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isPreselected];
    v85 = &v178;
    swift_beginAccess();
    v86 = *v84;
    swift_endAccess();
    if (v86)
    {
      v82 = *&v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_customBackgroundView];
      MEMORY[0x277D82BE0](v82);
      MEMORY[0x277D82BE0](v83);
      sub_214B2D3F0(v83);
      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BD8](v83);
      goto LABEL_41;
    }

    MEMORY[0x277D82BD8](v83);
  }

  v81 = *&v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_customBackgroundView];
  MEMORY[0x277D82BE0](v81);
  v40 = [objc_opt_self() secondarySystemFillColor];
  sub_214B2D3F0(v40);
  MEMORY[0x277D82BD8](v81);
LABEL_41:
  v41 = MEMORY[0x277D82BE0](v161);
  (*(v149 + 16))(v147, v154, v148, v41);
  (*(v149 + 56))(v147, 0, 1, v148);
  MEMORY[0x21605DF80](v147);
  MEMORY[0x277D82BD8](v161);
  *&v42 = MEMORY[0x277D82BE0](v161).n128_u64[0];
  v79 = [v161 contentView];
  MEMORY[0x277D82BD8](v161);
  v80 = &v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_item];
  swift_beginAccess();
  if (*v80)
  {
    v74 = *v80;

    swift_endAccess();
    v75 = sub_214A7658C();
    v76 = v43;

    v77 = v75;
    v78 = v76;
  }

  else
  {
    swift_endAccess();
    v77 = 0;
    v78 = 0;
  }

  v72 = v78;
  v73 = v77;
  if (v78)
  {
    v70 = v73;
    v71 = v72;
    v67 = v72;
    v68 = sub_214CCF544();

    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  v64 = v69;
  [v79 setAccessibilityLabel_];
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v79);
  *&v44 = MEMORY[0x277D82BE0](v161).n128_u64[0];
  v65 = [v161 contentView];
  MEMORY[0x277D82BD8](v161);
  v66 = &v161[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_item];
  swift_beginAccess();
  if (*v66)
  {
    v59 = *v66;

    swift_endAccess();
    v60 = sub_214A76B50();
    v61 = v45;

    v62 = v60;
    v63 = v61;
  }

  else
  {
    swift_endAccess();
    v62 = 0;
    v63 = 0;
  }

  v57 = v63;
  v58 = v62;
  if (v63)
  {
    v55 = v58;
    v56 = v57;
    v52 = v57;
    v53 = sub_214CCF544();

    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  [v65 setAccessibilityIdentifier_];
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v65);
  *&v46 = MEMORY[0x277D82BE0](v161).n128_u64[0];
  v51 = [v161 contentView];
  *&v47 = MEMORY[0x277D82BD8](v161).n128_u64[0];
  [v51 setIsAccessibilityElement_];
  v48 = MEMORY[0x277D82BD8](v51);
  (v119)(v154, v148, v48);
  return sub_214A73A88(__b);
}

uint64_t sub_214A79778()
{
  MEMORY[0x277D82BD8](*(v0 + 16));

  MEMORY[0x277D82BD8](*(v0 + 48));
  return swift_deallocObject();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

void BucketContentConfiguration.updated(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x29uLL);
  __b[6] = a1;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v3 = *(v2 + 24);
  v8 = v3;
  v9 = *(v2 + 32);
  v11 = *(v2 + 40);
  __b[0] = *v2;
  v5 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  LOBYTE(__b[3]) = v3;
  __b[4] = v9;
  LOBYTE(__b[5]) = v11;
  MEMORY[0x277D82BE0](__b[0]);

  MEMORY[0x277D82BE0](v9);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
}

uint64_t sub_214A7993C()
{
  v0 = sub_214B35F74();
  v2 = v0();

  return v2;
}

uint64_t sub_214A79998()
{
  swift_beginAccess();
  v6 = *(v0 + 88);
  MEMORY[0x277D82BE0](v6);
  swift_endAccess();
  if (v6)
  {
    return v6;
  }

  v3 = sub_214A7993C();
  MEMORY[0x277D82BE0](v3);
  swift_beginAccess();
  v1 = *(v5 + 88);
  *(v5 + 88) = v3;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v3;
}

uint64_t sub_214A79A8C(uint64_t a1)
{
  v2 = MUIBucket.selectedImage.getter(a1);
  if (v2)
  {
    return v2;
  }

  sub_214B11080();
  result = sub_214CD0204();
  __break(1u);
  return result;
}

uint64_t BucketContentConfiguration.makeContentView()()
{
  memset(__b, 0, 0x29uLL);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v1 = *(v0 + 24);
  v7 = v1;
  v8 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = v2;
  __b[0] = *v0;
  v4 = __b[0];
  __b[1] = v5;
  __b[2] = v6;
  LOBYTE(__b[3]) = v1;
  __b[4] = v8;
  LOBYTE(__b[5]) = v2;
  type metadata accessor for BucketCellContentView();
  MEMORY[0x277D82BE0](v4);

  MEMORY[0x277D82BE0](v8);
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v10 = BucketCellContentView.__allocating_init(configuration:)(v11);
  sub_214A79CF0();
  return v10;
}

id sub_214A79C6C()
{
  sub_214A65CE0();
  v1 = sub_214CCF7D4();
  v2 = [swift_getObjCClassFromMetadata() configurationWithPaletteColors_];
  MEMORY[0x277D82BD8](v1);

  return v2;
}

unint64_t sub_214A79CF0()
{
  v2 = qword_280C7DDA0;
  if (!qword_280C7DDA0)
  {
    type metadata accessor for BucketCellContentView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DDA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t MUIMessageListSectionDataSourceChange.isFirstChange.getter()
{
  v8 = OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  v9 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  if ((*(v9 + 8) & 0xFE) == 0xFE)
  {
    swift_endAccess();
    v6 = 2;
  }

  else
  {
    v4 = *(v7 + v8);
    v3 = *(v7 + v8 + 8);
    sub_214A6FB64(v4, v3);
    swift_endAccess();
    v5 = sub_214A79F0C(v4, v3);
    sub_214A6FB18(v4, v3);
    v6 = v5 & 1;
  }

  if (v6 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v6;
  }

  return v2 & 1;
}

uint64_t sub_214A79F0C(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 >> 5) & 7) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  return v3 & 1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t MUIMessageListSectionDataSourceChange.numberOfChanges.getter()
{
  v11 = OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  v12 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  if ((*(v12 + 8) & 0xFE) == 0xFE)
  {
    swift_endAccess();
    v8 = 0;
    v9 = 1;
  }

  else
  {
    v4 = *(v10 + v11);
    v5 = *(v10 + v11 + 8);
    sub_214A6FB64(v4, v5);
    swift_endAccess();
    v6 = sub_214A7A398(v4, v5);
    v7 = v1;
    sub_214A6FB18(v4, v5);
    v8 = v6;
    v9 = v7;
  }

  if (v9)
  {
    return -1;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_214A7A398(uint64_t a1, unsigned __int8 a2)
{
  v5 = (a2 >> 5) & 7;
  switch(v5)
  {
    case 0:
      return a1;
    case 1:
      return a1;
    case 2:
      return a1;
    case 3:
      return a1;
  }

  return 0;
}

Swift::Void __swiftcall BucketsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v7 = a1;
  v6 = v1;
  *&v2 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v5.receiver = v1;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1, v2);
  (MEMORY[0x277D82BD8])();
  sub_214B3DA50();
}

uint64_t block_copy_helper_18_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_22_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_214A7A88C(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);

  v4(a2);
}

uint64_t sub_214A7A910(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);

  swift_unknownObjectRetain();
  if (a2)
  {
    v6[3] = swift_getObjectType();
    v6[0] = a2;
    v2 = sub_214B11A4C(v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v4(v2);
  sub_214A7D24C(v7);
}

double sub_214A7A9DC(uint64_t a1, uint64_t a2)
{
  v4[5] = a1;
  v4[4] = a2 + 16;
  swift_beginAccess();
  v4[0] = swift_unknownObjectWeakLoadStrong();
  if (v4[0])
  {
    v3 = v4[0];
    MEMORY[0x277D82BE0](v4[0]);
    sub_214A671E8(v4);
    swift_endAccess();
    sub_214A7AAAC(1u);
    *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  }

  else
  {
    sub_214A671E8(v4);
    swift_endAccess();
  }

  return result;
}

void sub_214A7AAAC(unsigned int a1)
{
  v83 = a1;
  v85 = sub_214A66754;
  v87 = sub_214A66720;
  v89 = sub_214A66714;
  v93 = sub_214A664B8;
  v95 = sub_214A662DC;
  v97 = sub_214A662DC;
  v100 = sub_214A66358;
  v70 = MEMORY[0x277D85700];
  v71 = &unk_214CF32F8;
  v72 = sub_214C1D914;
  v73 = &unk_214CF32E0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v111 = 0;
  v74 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30);
  v75 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v76 = v33 - v75;
  v82 = sub_214CCDA74();
  v80 = *(v82 - 8);
  v81 = v82 - 8;
  v78 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v83);
  v3 = v33 - v78;
  v79 = v33 - v78;
  v117 = v2 & 1;
  v116 = v4;
  v5 = sub_214A660E0();
  (*(v80 + 16))(v3, v5, v82);
  v84 = 17;
  v91 = 7;
  v86 = swift_allocObject();
  *(v86 + 16) = v83;
  v104 = sub_214CCDA54();
  v105 = sub_214CCFBB4();
  v96 = swift_allocObject();
  *(v96 + 16) = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = 4;
  v90 = 32;
  v6 = swift_allocObject();
  v7 = v86;
  v88 = v6;
  *(v6 + 16) = v85;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v88;
  v92 = v8;
  *(v8 + 16) = v87;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v92;
  v94 = v10;
  *(v10 + 16) = v89;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v94;
  v101 = v12;
  *(v12 + 16) = v93;
  *(v12 + 24) = v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v99 = sub_214CD03C4();
  v102 = v14;

  v15 = v96;
  v16 = v102;
  *v102 = v95;
  v16[1] = v15;

  v17 = v98;
  v18 = v102;
  v102[2] = v97;
  v18[3] = v17;

  v19 = v101;
  v20 = v102;
  v102[4] = v100;
  v20[5] = v19;
  sub_214A63280();

  if (os_log_type_enabled(v104, v105))
  {
    v21 = v74;
    v63 = sub_214CCFF24();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v62 = 0;
    v64 = sub_214A632C4(0);
    v65 = sub_214A632C4(v62);
    v66 = &v110;
    v110 = v63;
    v67 = &v109;
    v109 = v64;
    v68 = &v108;
    v108 = v65;
    sub_214A6627C(0, &v110);
    sub_214A6627C(1, v66);
    v106 = v95;
    v107 = v96;
    sub_214A66290(&v106, v66, v67, v68);
    v69 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v106 = v97;
      v107 = v98;
      sub_214A66290(&v106, &v110, &v109, &v108);
      v60 = 0;
      v106 = v100;
      v107 = v101;
      sub_214A66290(&v106, &v110, &v109, &v108);
      _os_log_impl(&dword_214A5E000, v104, v105, "Reloading highlighted messages, applyEmptyUpdate: %{BOOL}d", v63, 8u);
      v59 = 0;
      sub_214A669DC(v64);
      sub_214A669DC(v65);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v22 = MEMORY[0x277D82BD8](v104);
  (*(v80 + 8))(v79, v82, v22);
  v115 = v83;
  v58 = (v77 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v58)
  {
    v55 = *v58;

    swift_endAccess();
    v56 = *(v55 + 112);
    MEMORY[0x277D82BE0](v56);

    v57 = v56;
  }

  else
  {
    swift_endAccess();
    v57 = 0;
  }

  v54 = v57;
  if (v57)
  {
    v53 = v54;
    v51 = v54;
    v111 = v54;
    MEMORY[0x277D82BE0](v77);
    [v51 stopObserving_];
    swift_unknownObjectRelease();
    if (v83)
    {
      v48 = 0;
      v23 = sub_214CCF994();
      (*(*(v23 - 8) + 56))(v76, 1);
      MEMORY[0x277D82BE0](v77);
      sub_214CCF964();
      v47 = sub_214CCF954();
      v24 = swift_allocObject();
      v25 = v70;
      v26 = v77;
      v49 = v24;
      v24[2] = v47;
      v24[3] = v25;
      v24[4] = v26;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0);
      sub_214B88C30(v48, v48, v76, v71, v49, v27);

      v115 = 0;
      v50 = 0;
    }

    else
    {
      v50 = v83;
    }

    v46 = v50;
    MEMORY[0x277D82BD8](v51);
    v52 = v46;
  }

  else
  {
    v52 = v83;
  }

  v44 = v52;
  v45 = sub_214A7BB0C();
  if (v45)
  {
    v43 = v45;
    v42 = v45;
    v113 = v45;
    type metadata accessor for HighlightedMessagesControllerModel();
    MEMORY[0x277D82BE0](v42);
    v38 = swift_allocObject();
    v37 = v38 + 16;
    MEMORY[0x277D82BE0](v77);
    swift_unknownObjectWeakInit();
    MEMORY[0x277D82BD8](v77);

    v40 = sub_214A7D0B0(v42, v72, v38);

    v39 = (v77 + OBJC_IVAR___MUIHighlightedMessagesController_model);
    v41 = &v112;
    swift_beginAccess();
    *v39 = v40;

    swift_endAccess();
    MEMORY[0x277D82BE0](v77);
    [v42 beginObserving_];
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v42);
  }

  else
  {
    if (v44)
    {
      v35 = 0;
      v28 = sub_214CCF994();
      (*(*(v28 - 8) + 56))(v76, 1);
      MEMORY[0x277D82BE0](v77);
      sub_214CCF964();
      v34 = sub_214CCF954();
      v29 = swift_allocObject();
      v30 = v70;
      v31 = v77;
      v36 = v29;
      v29[2] = v34;
      v29[3] = v30;
      v29[4] = v31;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0);
      sub_214B88C30(v35, v35, v76, v73, v36, v32);
    }

    v33[0] = v77 + OBJC_IVAR___MUIHighlightedMessagesController_model;
    v33[1] = &v114;
    swift_beginAccess();
    *v33[0] = 0;

    swift_endAccess();
  }
}

uint64_t sub_214A7BA6C()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_214A7BABC()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

id sub_214A7BB0C()
{
  v4 = sub_214A7BBE0();
  if (!v4)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FE0);
  v1 = [v3 repository];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E80);
  return sub_214A7CFC4(v4, v1);
}

id sub_214A7BBE0()
{
  v12 = sub_214A7BE64();
  if (!v12)
  {
    return 0;
  }

  v10 = [v11 delegate];
  if (v10)
  {
    swift_getObjectType();
    v8 = [v10 highlightedMessagesControllerShouldUseThreads_];
    swift_unknownObjectRelease();
    v9 = v8;
  }

  else
  {
    v9 = 2;
  }

  if (v9 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = v9;
  }

  if (v7)
  {
    v6 = sub_214A7C774();
  }

  else
  {
    v6 = sub_214B71394();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34E10);
  MEMORY[0x277D82BE0](v12);
  v2 = sub_214A7C7D8();
  type metadata accessor for EMQueryOptions();
  sub_214CD03C4();
  sub_214A7C95C();
  sub_214CD0084();
  v3 = sub_214A7CC80();
  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E80);
  v13 = sub_214A7CE78(v6, v12, v2, 0x7FFFFFFFFFFFFFFFLL, v14, 0, v3, v4);
  MEMORY[0x277D82BD8](v12);
  return v13;
}

id sub_214A7BE64()
{
  v17 = [v0 mailboxes];
  sub_214A63684();
  sub_214CCF7E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36150);
  sub_214A7C404();
  v18 = sub_214CCFA94();

  *&v1 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  if (v18)
  {
    return 0;
  }

  v16 = [v0 mailboxes];
  sub_214CCF7E4();
  sub_214A7C48C();
  sub_214CD0154();
  MEMORY[0x277D82BD8](v16);
  if (sub_214CCFA94())
  {

    return 0;
  }

  else
  {
    v10 = objc_opt_self();

    v11 = sub_214CCF7D4();

    v12 = [v10 predicateForMessagesInMailboxes_];
    MEMORY[0x277D82BD8](v11);
    v13 = [objc_opt_self() predicateForUrgentMessages];
    sub_214A7C550();
    sub_214CD03C4();
    v14 = v2;
    MEMORY[0x277D82BE0](v12);
    *v14 = v12;
    MEMORY[0x277D82BE0](v13);
    v14[1] = v13;
    sub_214A63280();
    v15 = [v0 filterPredicate];
    if (v15)
    {
      MEMORY[0x277D82BE0](v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35950);
      sub_214CCF884();
      MEMORY[0x277D82BD8](v15);
    }

    v7 = objc_opt_self();

    v8 = sub_214CCF7D4();

    v9 = [v7 ef:v8 andCompoundPredicateWithSubpredicates:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BE0](v9);
    if (v9)
    {
      v5 = [v9 ef_simplifiedPredicate];
      MEMORY[0x277D82BD8](v9);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x277D82BD8](v9);
    sub_214A62278();
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v12);

    return v6;
  }
}

uint64_t sub_214A7C39C()
{
  v2 = (v0 + OBJC_IVAR___MUIHighlightedMessagesController_mailboxes);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

unint64_t sub_214A7C404()
{
  v2 = qword_280C7CDA0;
  if (!qword_280C7CDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36150);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CDA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A7C48C()
{
  v2 = qword_280C7CD98;
  if (!qword_280C7CD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36150);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CD98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A7C550()
{
  v2 = qword_280C7EB50;
  if (!qword_280C7EB50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7EB50);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214A7C628()
{
  v2 = (v0 + OBJC_IVAR___MUIHighlightedMessagesController_filterPredicate);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_214A7C70C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

unint64_t sub_214A7C774()
{
  v2 = qword_280C7C550;
  if (!qword_280C7C550)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C550);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214A7C7D8()
{
  sub_214A7C860();
  v4 = sub_214CD03C4();
  v3 = v0;
  v1 = [objc_opt_self() sortDescriptorForDateAscending_];
  result = v4;
  *v3 = v1;
  sub_214A63280();
  return result;
}

unint64_t sub_214A7C860()
{
  v2 = qword_280C7CBC0;
  if (!qword_280C7CBC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CBC0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for EMQueryOptions()
{
  v4 = qword_280C7CC88;
  if (!qword_280C7CC88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280C7CC88);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_214A7C95C()
{
  v2 = qword_280C7CCB0;
  if (!qword_280C7CCB0)
  {
    type metadata accessor for EMQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CCB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A7C9DC()
{
  v2 = qword_280C7CCC8;
  if (!qword_280C7CCC8)
  {
    type metadata accessor for EMQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CCC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A7CA74()
{
  v2 = qword_280C7CCA0;
  if (!qword_280C7CCA0)
  {
    type metadata accessor for EMQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CCA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A7CB0C()
{
  v2 = qword_280C7CC90;
  if (!qword_280C7CC90)
  {
    type metadata accessor for EMQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CC90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A7CB8C()
{
  sub_214A7CB0C();
  sub_214A69208();
  return sub_214CD0644();
}

unint64_t sub_214A7CBD0()
{
  v2 = qword_280C7CCB8;
  if (!qword_280C7CCB8)
  {
    type metadata accessor for EMQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CCB8);
    return WitnessTable;
  }

  return v2;
}

id sub_214A7CCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_214A7C860();
  v21 = sub_214CCF7D4();
  if (a6)
  {
    v12 = sub_214CCF304();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a8)
  {
    v10 = sub_214CCF544();

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v9 = [v18 initWithTargetClass:ObjCClassFromMetadata predicate:a2 sortDescriptors:v21 limit:a4 queryOptions:a5 targetClassOptions:v13 label:v11];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v21);

  MEMORY[0x277D82BD8](a2);
  return v9;
}

uint64_t sub_214A7CF7C()
{
  v2 = *(v0 + OBJC_IVAR___MUIHighlightedMessagesController_repository);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

id sub_214A7D018(uint64_t a1, uint64_t a2)
{
  v6 = [v2 initWithQuery:a1 repository:?];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v6;
}

uint64_t sub_214A7D10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  type metadata accessor for MUIHighlightedMessage();
  v3[17] = sub_214CD03C4();
  v3[18] = sub_214CD03C4();
  MEMORY[0x277D82BE0](a1);
  v3[14] = a1;

  v3[15] = a2;
  v3[16] = a3;

  MEMORY[0x277D82BD8](a1);
  return v8;
}

unint64_t type metadata accessor for MUIHighlightedMessage()
{
  v2 = qword_280C7CA78;
  if (!qword_280C7CA78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CA78);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214A7D24C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

double sub_214A7D290(uint64_t a1, uint64_t a2)
{
  v4[5] = a1;
  v4[4] = a2 + 16;
  swift_beginAccess();
  v4[0] = swift_unknownObjectWeakLoadStrong();
  if (v4[0])
  {
    v3 = v4[0];
    MEMORY[0x277D82BE0](v4[0]);
    sub_214A671E8(v4);
    swift_endAccess();
    sub_214A7AAAC(0);
    *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  }

  else
  {
    sub_214A671E8(v4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_214A7D360()
{
  MEMORY[0x277D82BD8](*(v0 + 112));

  sub_214A62278();
  sub_214A62278();
  swift_defaultActor_destroy();
  return v2;
}

uint64_t MUIHighlightedMessagesController.collection(_:addedItemIDs:before:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v69 = a2;
  v73 = a3;
  v70 = sub_214A7E9D4;
  v74 = sub_214A7E698;
  v76 = sub_214A7E854;
  v81 = sub_214A800FC;
  v85 = sub_214A7E854;
  v87 = sub_214A662DC;
  v89 = sub_214A662DC;
  v91 = sub_214A7E40C;
  v93 = sub_214A662DC;
  v95 = sub_214A662DC;
  v98 = sub_214A7E40C;
  v58 = &unk_214CF3348;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v59 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30);
  v60 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v61 = &v42 - v60;
  v68 = sub_214CCDA74();
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v64 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v4 = &v42 - v64;
  v65 = &v42 - v64;
  v112 = v5;
  v111 = v6;
  v110 = v7;
  v109 = v8;
  v9 = sub_214A660E0();
  (*(v66 + 16))(v4, v9, v68);

  v72 = 24;
  v83 = 7;
  v71 = swift_allocObject();
  *(v71 + 16) = v69;

  v82 = 32;
  v10 = swift_allocObject();
  v11 = v71;
  v75 = v10;
  *(v10 + 16) = v70;
  *(v10 + 24) = v11;

  swift_unknownObjectRetain();
  v84 = swift_allocObject();
  *(v84 + 16) = v73;
  v102 = sub_214CCDA54();
  v103 = sub_214CCFBB4();
  v79 = 17;
  v88 = swift_allocObject();
  v78 = 32;
  *(v88 + 16) = 32;
  v90 = swift_allocObject();
  v80 = 8;
  *(v90 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v75;
  v77 = v12;
  *(v12 + 16) = v74;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v77;
  v92 = v14;
  *(v14 + 16) = v76;
  *(v14 + 24) = v15;
  v94 = swift_allocObject();
  *(v94 + 16) = v78;
  v96 = swift_allocObject();
  *(v96 + 16) = v80;
  v16 = swift_allocObject();
  v17 = v84;
  v86 = v16;
  *(v16 + 16) = v81;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v86;
  v99 = v18;
  *(v18 + 16) = v85;
  *(v18 + 24) = v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v97 = sub_214CD03C4();
  v100 = v20;

  v21 = v88;
  v22 = v100;
  *v100 = v87;
  v22[1] = v21;

  v23 = v90;
  v24 = v100;
  v100[2] = v89;
  v24[3] = v23;

  v25 = v92;
  v26 = v100;
  v100[4] = v91;
  v26[5] = v25;

  v27 = v94;
  v28 = v100;
  v100[6] = v93;
  v28[7] = v27;

  v29 = v96;
  v30 = v100;
  v100[8] = v95;
  v30[9] = v29;

  v31 = v99;
  v32 = v100;
  v100[10] = v98;
  v32[11] = v31;
  sub_214A63280();

  if (os_log_type_enabled(v102, v103))
  {
    v33 = v59;
    v50 = sub_214CCFF24();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v51 = sub_214A632C4(0);
    v52 = sub_214A632C4(2);
    v54 = &v108;
    v108 = v50;
    v55 = &v107;
    v107 = v51;
    v56 = &v106;
    v106 = v52;
    v53 = 2;
    sub_214A6627C(2, &v108);
    sub_214A6627C(v53, v54);
    v104 = v87;
    v105 = v88;
    sub_214A66290(&v104, v54, v55, v56);
    v57 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v104 = v89;
      v105 = v90;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v48 = 0;
      v104 = v91;
      v105 = v92;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v47 = 0;
      v104 = v93;
      v105 = v94;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v46 = 0;
      v104 = v95;
      v105 = v96;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v45 = 0;
      v104 = v98;
      v105 = v99;
      sub_214A66290(&v104, &v108, &v107, &v106);
      _os_log_impl(&dword_214A5E000, v102, v103, "addedItemIDs %s before %s", v50, 0x16u);
      sub_214A669DC(v51);
      sub_214A669DC(v52);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v34 = MEMORY[0x277D82BD8](v102);
  (*(v66 + 8))(v65, v68, v34);
  v43 = 0;
  v35 = sub_214CCF994();
  (*(*(v35 - 8) + 56))(v61, 1);
  MEMORY[0x277D82BE0](v62);

  swift_unknownObjectRetain();
  v36 = swift_allocObject();
  v37 = v62;
  v38 = v69;
  v39 = v73;
  v44 = v36;
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v37;
  v36[5] = v38;
  v36[6] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0);
  sub_214B88C30(v43, v43, v61, v58, v44, v40);
}

uint64_t sub_214A7E3AC()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

void *sub_214A7E418(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_214A7EA10(v4, v5, a3);
  v8 = *a1;

  sub_214CCFF54();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_214A7E4B4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  v1 = sub_214B2196C();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

uint64_t sub_214A7E51C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_214CCD374();
  v1 = sub_214B4C088();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

uint64_t sub_214A7E578()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for MUICatchUpFeedbackFeature();
  v1 = sub_214B59DF8();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

uint64_t sub_214A7E5D4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364C0);
  v1 = sub_214BC5458();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

uint64_t sub_214A7E63C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_214CCD154();
  v1 = sub_214C0FABC();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

uint64_t sub_214A7E698()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FF0);
  v1 = sub_214A7E868();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

uint64_t sub_214A7E700()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36150);
  v1 = sub_214C42FC0();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

uint64_t sub_214A7E768()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_214CCD254();
  v1 = sub_214C56C94();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

uint64_t sub_214A7E7C4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37B10);
  v1 = sub_214C5F934();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

unint64_t sub_214A7E868()
{
  v2 = qword_280C7CE50;
  if (!qword_280C7CE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA36FF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A7E8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_214CD0354();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_214A7E9DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_214A7EA10(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_214A7F5C4(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_214A80098(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_214A80098(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

void *sub_214A7EBB4(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35230);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

uint64_t sub_214A7ECF8(uint64_t a1, uint64_t a2)
{
  v16[15] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_214CCF674();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_214B22BD8();
  }

  v10 = sub_214A7EBB4(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_214CD02B4();
    __break(1u);
    return sub_214B22BD8();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_214A7FAD4(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_214CD0144();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_214A7FAD4(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_214CD0124();
  if (v2)
  {
LABEL_29:
    sub_214CD01F4();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v16[13] = 0;
  v16[14] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_214CD01F4();
    __break(1u);
  }

  sub_214A61B48();
  return v10;
}

uint64_t sub_214A7F508(uint64_t a1, uint64_t a2)
{
  v7 = sub_214A7ECF8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35230);
  inited = swift_initStackObject();
  v3 = sub_214A7FC84(inited, 1);
  *v4 = 0;
  sub_214A7FC24();
  sub_214A7FCD0(v3);

  v8 = sub_214A80078(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_214A7F5C4(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_214CD01F4();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_214B227E8(v22, v17, v16);
        sub_214CCFF64();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_214A7F508(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_214CD0144();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_214CD01F4();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void sub_214A7FA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_214A7FAD4(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_214CD02B4();
    __break(1u);
  }

  result = sub_214CD02B4();
  __break(1u);
  return result;
}

uint64_t sub_214A7FC84(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_214A7FCD0(uint64_t a1)
{
  v18 = sub_214A80078(a1);
  v2 = sub_214A80078(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_214B22C08(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_214CD02B4();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_214A80090(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_214CD01F4();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_214CD01F4();
    __break(1u);
    goto LABEL_21;
  }

  sub_214A7FAD4((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_214A66270();
    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_214A80098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_214A80104()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370A0);
  return sub_214CCF5B4();
}

uint64_t MUIHighlightedMessagesController.collectionDidFinishInitialLoad(_:)(uint64_t a1)
{
  v35 = a1;
  ObjectType = swift_getObjectType();
  v45 = 0;
  v54 = 0;
  v53 = 0;
  v31 = 0;
  v32 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v33 = v15 - v32;
  v42 = sub_214CCDA74();
  v36 = v42;
  v37 = *(v42 - 8);
  v41 = v37;
  v38 = v37;
  v39 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v1 = v15 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v1;
  v54 = v2;
  v53 = v3;
  v4 = sub_214A660E0();
  (*(v41 + 16))(v1, v4, v42);
  v47 = sub_214CCDA54();
  v43 = v47;
  v46 = sub_214CCFBB4();
  v44 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v48 = sub_214CD03C4();
  if (os_log_type_enabled(v47, v46))
  {
    v5 = v31;
    v21 = sub_214CCFF24();
    v17 = v21;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v19 = 0;
    v22 = sub_214A632C4(0);
    v20 = v22;
    v23 = sub_214A632C4(v19);
    v52 = v21;
    v51 = v22;
    v50 = v23;
    v24 = 0;
    v25 = &v52;
    sub_214A6627C(0, &v52);
    sub_214A6627C(v24, v25);
    v49 = v48;
    v26 = v15;
    MEMORY[0x28223BE20](v15);
    v27 = &v15[-6];
    v15[-4] = v6;
    v15[-3] = &v51;
    v15[-2] = &v50;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
    sub_214A810E0();
    sub_214CCF764();
    v29 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v43, v44, "Did finish initial load", v17, 2u);
      v15[1] = 0;
      sub_214A669DC(v20);
      sub_214A669DC(v23);
      sub_214CCFF04();

      v16 = v29;
    }
  }

  else
  {

    v16 = v31;
  }

  (*(v38 + 8))(v40, v36);
  v15[0] = 0;
  v7 = sub_214CCF994();
  (*(*(v7 - 8) + 56))(v33, 1);
  v8 = v34;
  v9 = swift_allocObject();
  v10 = v34;
  v11 = ObjectType;
  v12 = v15[0];
  v13 = v33;
  v9[2] = v15[0];
  v9[3] = v12;
  v9[4] = v10;
  v9[5] = v11;
  sub_214B88C30(v12, v12, v13, &unk_214CF3330, v9, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_214A806FC()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_214A8074C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214A80840(a1, v6);
}

uint64_t sub_214A80840(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82988;

  return v6(a1);
}

uint64_t sub_214A80954(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214A80A44(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_214A80A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[11] = a5;
  v6[10] = a4;
  v6[9] = a1;
  v6[5] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = a6;
  return MEMORY[0x2822009F8](sub_214A80AA8, 0);
}

uint64_t sub_214A80AA8()
{
  v6 = *(v0 + 80);
  *(v0 + 40) = v0;
  v7 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v8 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v8)
  {
    v3 = *(v6 + v7);
    v5[13] = v3;

    swift_endAccess();

    return MEMORY[0x2822009F8](sub_214A80FB0, v3);
  }

  else
  {
    v4 = v5[9];
    swift_endAccess();
    *v4 = 1;
    v1 = *(v5[5] + 8);

    return v1();
  }
}

uint64_t sub_214A80C24(uint64_t a1, uint64_t a2)
{
  v8[3] = 0;
  v8[5] = a1;
  v8[4] = a2;
  v8[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FF0);
  v2 = sub_214A80F28();
  v8[1] = sub_214A6E4F4(sub_214C17504, 0, v5, &type metadata for CollectionItemID, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v6);
  swift_unknownObjectRetain();
  CollectionItemID.init(itemID:)(a2, v8);
  if (!v8[0])
  {
    goto LABEL_7;
  }

  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000);
  sub_214A817A8();
  sub_214B5B214();
  sub_214CCFAB4();
  sub_214A62278();
  if (v7)
  {
    swift_unknownObjectRelease();
LABEL_7:

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000);
    sub_214A8118C();
    sub_214CCF874();
    swift_endAccess();
    goto LABEL_8;
  }

  swift_beginAccess();
  sub_214C1DAD8();
  sub_214CCFAF4();
  swift_endAccess();
  swift_unknownObjectRelease();
LABEL_8:
  sub_214A8121C();
}

unint64_t sub_214A80F28()
{
  v2 = qword_280C7CE58;
  if (!qword_280C7CE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA36FF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A80FB0()
{
  v1 = v0[12];
  v2 = v0[11];
  v0[5] = v0;
  sub_214A80C24(v2, v1);

  return MEMORY[0x2822009F8](sub_214A827F8, 0);
}

uint64_t *CollectionItemID.init(itemID:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = 0;
  swift_unknownObjectRetain();
  if (a1)
  {
    swift_unknownObjectRetain();
    v5 = a1;
    swift_unknownObjectRelease();
    sub_214B5AEEC(&v5, a2);
    swift_unknownObjectRelease();
    result = &v5;
    sub_214A759F4();
  }

  else
  {
    result = swift_unknownObjectRelease();
    *a2 = 0;
  }

  return result;
}

{
  v5 = 0;
  swift_unknownObjectRetain();
  v5 = a1;
  sub_214B5AEEC(&v5, a2);
  swift_unknownObjectRelease();
  result = &v5;
  sub_214A759F4();
  return result;
}

unint64_t sub_214A810E0()
{
  v2 = qword_280C7EB60;
  if (!qword_280C7EB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37030);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A8118C()
{
  v2 = qword_280C7CF48;
  if (!qword_280C7CF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A8121C()
{
  v38 = 0u;
  v39 = 0u;
  v35 = 0;
  v33 = 0;
  v32 = 0;
  v43 = v0;
  swift_beginAccess();
  v14 = *(v0 + 144);

  swift_endAccess();
  v40 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000);
  sub_214A817A8();
  sub_214CCFA84();
  v38 = v41;
  v39 = v42;
  v36 = v41;
  v37 = v42;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37020);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v1 = sub_214A81830();
  v35 = sub_214A6E4F4(sub_214C17F90, 0, v15, v16, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v17);
  v34 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FF0);
  sub_214A80F28();
  if (sub_214CCFA94())
  {
    sub_214A818B8();
    sub_214A819AC();

    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = *(v13 + 112);
    MEMORY[0x277D82BE0](v4);

    v3 = sub_214CCF7D4();

    v5 = [v4 messageListItemsForItemIDs_];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E00);
    v33 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v5);
    v6 = objc_opt_self();

    v7 = sub_214CCF7D4();

    v12 = [v6 join_];
    MEMORY[0x277D82BD8](v7);
    v32 = v12;
    v8 = swift_allocObject();

    swift_weakInit();

    v30 = sub_214C1DC14;
    v31 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = 0;
    v28 = sub_214B100BC;
    v29 = &block_descriptor_15;
    v9 = _Block_copy(&aBlock);

    [v12 addSuccessBlock_];
    _Block_release(v9);
    v10 = swift_allocObject();

    swift_weakInit();

    v23 = sub_214C1DC1C;
    v24 = v10;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = 0;
    v21 = sub_214C18604;
    v22 = &block_descriptor_68;
    v11 = _Block_copy(&v18);

    [v12 addFailureBlock_];
    _Block_release(v11);
    MEMORY[0x277D82BD8](v12);

    return swift_unknownObjectRelease();
  }
}

unint64_t sub_214A817A8()
{
  v2 = qword_280C7CF40;
  if (!qword_280C7CF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A81830()
{
  v2 = qword_280C7C450;
  if (!qword_280C7C450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37020);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C450);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A818EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E90);
  type metadata accessor for MUIHighlightedMessage();
  sub_214A819F8();
  return sub_214CCF6F4();
}

unint64_t sub_214A819F8()
{
  v2 = qword_280C7CE78;
  if (!qword_280C7CE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA34E90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A81A80(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 136) = a1;

  swift_endAccess();
  sub_214A81AFC();
}

uint64_t sub_214A81AFC()
{
  v16 = MEMORY[0x277D85700];
  v12[1] = 0;
  v19 = &unk_214CF3308;
  v24 = 0;
  v22 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30);
  v13 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v18 = v12 - v13;
  v24 = v0;
  v14 = &v23;
  swift_beginAccess();
  v21 = *(v0 + 136);

  swift_endAccess();
  v22 = v21;
  v17 = 0;
  v2 = sub_214CCF994();
  (*(*(v2 - 8) + 56))(v18, 1);

  sub_214CCF964();
  v3 = sub_214CCF954();
  v4 = v15;
  v20 = v3;
  v5 = swift_allocObject();
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = v21;
  v5[2] = v20;
  v5[3] = v6;
  v5[4] = v4;
  v5[5] = v10;
  sub_214B88C30(v7, v7, v8, v9, v5, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_214A81CCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_214A81D1C(uint64_t a1)
{
  v3 = sub_214CCF994();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_214A81DC4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214A81EA8(a1, v6, v7, v8);
}

uint64_t sub_214A81EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[5] = v4;
  v4[6] = 0;
  v4[7] = 0;
  v5 = sub_214CCDA74();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[6] = a4;

  return MEMORY[0x2822009F8](sub_214A81FA4, 0);
}

uint64_t sub_214A81FA4()
{
  v34 = v0;
  v26 = *(v0 + 64);
  *(v0 + 40) = v0;
  v27 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v28 = (v26 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v28)
  {
    v13 = *(v26 + v27);
    v25[12] = v13;

    swift_endAccess();

    return MEMORY[0x2822009F8](sub_214A82ABC, v13);
  }

  else
  {
    swift_endAccess();
    v1 = v25[11];
    v15 = v25[9];
    v14 = v25[10];
    v25[7] = 0;
    v2 = sub_214A660E0();
    (*(v14 + 16))(v1, v2, v15);

    v16 = swift_allocObject();
    *(v16 + 16) = 0;

    v17 = swift_allocObject();
    *(v17 + 16) = sub_214A83268;
    *(v17 + 24) = v16;

    v23 = sub_214CCDA54();
    v24 = sub_214CCFBB4();
    v19 = swift_allocObject();
    *(v19 + 16) = 32;
    v20 = swift_allocObject();
    *(v20 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_214C1E148;
    *(v18 + 24) = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_214A7E854;
    *(v21 + 24) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    sub_214CD03C4();
    v22 = v3;

    *v22 = sub_214A662DC;
    v22[1] = v19;

    v22[2] = sub_214A662DC;
    v22[3] = v20;

    v22[4] = sub_214A7E40C;
    v22[5] = v21;
    sub_214A63280();

    if (os_log_type_enabled(v23, v24))
    {
      buf = sub_214CCFF24();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v11 = sub_214A632C4(0);
      v12 = sub_214A632C4(1);
      v29 = buf;
      v30 = v11;
      v31 = v12;
      sub_214A6627C(2, &v29);
      sub_214A6627C(1, &v29);
      v32 = sub_214A662DC;
      v33 = v19;
      sub_214A66290(&v32, &v29, &v30, &v31);
      v32 = sub_214A662DC;
      v33 = v20;
      sub_214A66290(&v32, &v29, &v30, &v31);
      v32 = sub_214A7E40C;
      v33 = v21;
      sub_214A66290(&v32, &v29, &v30, &v31);
      _os_log_impl(&dword_214A5E000, v23, v24, "collectionDidFinishLoad: %s", buf, 0xCu);
      sub_214A669DC(v11);
      sub_214A669DC(v12);
      sub_214CCFF04();
    }

    else
    {
    }

    v9 = v25[11];
    v8 = v25[9];
    v7 = v25[10];
    v4 = MEMORY[0x277D82BD8](v23);
    (*(v7 + 8))(v9, v8, v4);

    v5 = *(v25[5] + 8);

    return v5();
  }
}

uint64_t sub_214A827F8()
{
  v1 = *(v0 + 72);
  *(v0 + 40) = v0;
  *v1 = 0;
  return (*(*(v0 + 40) + 8))();
}

uint64_t sub_214A82860()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_214A82988()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_214A82ABC()
{
  *(v0 + 40) = v0;
  *(v0 + 104) = sub_214A82B44();

  return MEMORY[0x2822009F8](sub_214A82BA0, 0);
}

uint64_t sub_214A82B44()
{
  swift_beginAccess();
  v2 = *(v0 + 144);

  swift_endAccess();
  return v2;
}

uint64_t sub_214A82BA0()
{
  v31 = v0;
  v16 = v0[13];
  v0[5] = v0;
  v1 = v0[11];
  v14 = v0[10];
  v15 = v0[9];
  v0[7] = v16;
  v2 = sub_214A660E0();
  (*(v14 + 16))(v1, v2, v15);

  v17 = swift_allocObject();
  *(v17 + 16) = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = sub_214A83268;
  *(v18 + 24) = v17;

  v24 = sub_214CCDA54();
  v25 = sub_214CCFBB4();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_214C1E148;
  *(v19 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214A7E854;
  *(v22 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  sub_214CD03C4();
  v23 = v3;

  *v23 = sub_214A662DC;
  v23[1] = v20;

  v23[2] = sub_214A662DC;
  v23[3] = v21;

  v23[4] = sub_214A7E40C;
  v23[5] = v22;
  sub_214A63280();

  if (os_log_type_enabled(v24, v25))
  {
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v11 = sub_214A632C4(0);
    v12 = sub_214A632C4(1);
    v26 = buf;
    v27 = v11;
    v28 = v12;
    sub_214A6627C(2, &v26);
    sub_214A6627C(1, &v26);
    v29 = sub_214A662DC;
    v30 = v20;
    sub_214A66290(&v29, &v26, &v27, &v28);
    v29 = sub_214A662DC;
    v30 = v21;
    sub_214A66290(&v29, &v26, &v27, &v28);
    v29 = sub_214A7E40C;
    v30 = v22;
    sub_214A66290(&v29, &v26, &v27, &v28);
    _os_log_impl(&dword_214A5E000, v24, v25, "collectionDidFinishLoad: %s", buf, 0xCu);
    sub_214A669DC(v11);
    sub_214A669DC(v12);
    sub_214CCFF04();
  }

  else
  {
  }

  v9 = v13[11];
  v8 = v13[9];
  v7 = v13[10];
  v4 = MEMORY[0x277D82BD8](v24);
  (*(v7 + 8))(v9, v8, v4);

  v5 = *(v13[5] + 8);

  return v5();
}

unint64_t sub_214A831E0()
{
  v2 = qword_280C7CF38;
  if (!qword_280C7CF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF38);
    return WitnessTable;
  }

  return v2;
}

void *sub_214A83270@<X0>(void *a1@<X0>, void *a2@<X8>)
{

  result = a1;
  v5 = a1;
  if (a1)
  {
    *a2 = v5;
  }

  else
  {
    result = sub_214CD03C4();
    *a2 = result;
    if (v5)
    {
      result = &v5;
      sub_214A62278();
    }
  }

  return result;
}

void MUIBucketEnumerateAllBuckets(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [&unk_282705AE8 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(&unk_282705AE8);
        }

        v1[2](v1, [*(*(&v6 + 1) + 8 * v5++) integerValue]);
      }

      while (v3 != v5);
      v3 = [&unk_282705AE8 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

id BucketsViewController.lastSeenDates(for:)(uint64_t a1)
{
  v6 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
  swift_beginAccess();
  v7 = *v6;
  MEMORY[0x277D82BE0](*v6);
  swift_endAccess();
  if (v7)
  {
    v4 = v7;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v3 = MUILastSeenBucketHelper.lastSeenDates(for:)(a1);
  MEMORY[0x277D82BD8](v4);
  return v3;
}

id MUILastSeenBucketHelper.lastSeenDates(for:)(uint64_t a1)
{
  v79 = a1;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v96 = 0;
  v95 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA378D0);
  v54 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v55 = &v25 - v54;
  v56 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v57 = &v25 - v56;
  v58 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v85 = &v25 - v58;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
  v59 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v60 = &v25 - v59;
  v61 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v25 - v59);
  v62 = &v25 - v61;
  v80 = 0;
  v63 = sub_214CCD254();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79);
  v67 = &v25 - v66;
  v68 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v69 = &v25 - v68;
  v70 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v71 = &v25 - v70;
  v72 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v73 = &v25 - v72;
  v74 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v75 = &v25 - v74;
  v102 = &v25 - v74;
  v76 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v77 = &v25 - v76;
  v101 = &v25 - v76;
  v100 = v19;
  v99 = v1;
  v78 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSeenDatesByBucket);
  swift_beginAccess();
  v81 = *v78;
  v83 = &v97;
  v97 = v79;
  v82 = type metadata accessor for MUIBucket();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0);
  v84 = sub_214A69344();
  sub_214CCF3D4();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = *(v87 + 48);
  v90 = v87 + 48;
  if (v89(v85, 1) == 0)
  {
    (*(v64 + 16))(v62, v85, v63);
    sub_214A84F00(v85);
    swift_endAccess();
    (*(v64 + 56))(v62, 0, 1, v63);
  }

  else
  {
    sub_214A84F00(v85);
    swift_endAccess();
    (*(v64 + 56))(v62, 1, 1, v63);
  }

  v51 = *(v64 + 48);
  v52 = v64 + 48;
  if (v51(v62, 1, v63) == 1)
  {
    sub_214A871C0(v62);
LABEL_12:
    v96 = v73;
    MUILastSeenBucketHelper.lastSeenDate(for:)(v79, v73);
    v95 = v71;
    MUILastSeenBucketHelper.lastSeenDisplayDate(for:)(v79, v71);
    v27 = &v55[*(v86 + 48)];
    v31 = *(v64 + 16);
    v30 = v64 + 16;
    v31();
    (v31)(v27, v71, v63);
    (*(v87 + 56))(v55, 0, 1, v86);
    v28 = &v94;
    v94 = v79;
    v29 = &v93;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E8);
    sub_214CCF3E4();
    v22 = v69;
    swift_endAccess();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA378F0);
    (v31)(v22, v73, v63);
    v34 = sub_214CCD1C4();
    (v31)(v67, v71, v63);
    v33 = sub_214CCD1C4();
    sub_214A8539C();
    v37 = sub_214A85108(v34, v33);
    v36 = *(v64 + 8);
    v35 = v64 + 8;
    v36(v67, v63);
    v36(v69, v63);
    v23 = MEMORY[0x277D82BE0](v37);
    v98 = v37;
    (v36)(v71, v63, v23);
    v36(v73, v63);
    v46 = v37;
    goto LABEL_13;
  }

  v47 = *(v64 + 32);
  v48 = v64 + 32;
  v47(v77, v62, v63);
  v49 = v53 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSeenDatesByBucket;
  swift_beginAccess();
  v92 = v79;
  sub_214CCF3D4();
  if ((v89)(v57, 1, v86) == 0)
  {
    (*(v64 + 16))(v60, v57 + *(v86 + 48), v63);
    sub_214A84F00(v57);
    swift_endAccess();
    (*(v64 + 56))(v60, 0, 1, v63);
  }

  else
  {
    sub_214A84F00(v57);
    swift_endAccess();
    (*(v64 + 56))(v60, 1, 1, v63);
  }

  if (v51(v60, 1, v63) == 1)
  {
    sub_214A871C0(v60);
    (*(v64 + 8))(v77, v63);
    goto LABEL_12;
  }

  v20 = v73;
  v47(v75, v60, v63);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA378F0);
  v39 = *(v64 + 16);
  v38 = v64 + 16;
  v39(v20, v77, v63);
  v42 = sub_214CCD1C4();
  v39(v71, v75, v63);
  v41 = sub_214CCD1C4();
  sub_214A8539C();
  v45 = sub_214A85108(v42, v41);
  v44 = *(v64 + 8);
  v43 = v64 + 8;
  v44(v71, v63);
  v44(v73, v63);
  v21 = MEMORY[0x277D82BE0](v45);
  v98 = v45;
  (v44)(v75, v63, v21);
  v44(v77, v63);
  v46 = v45;
LABEL_13:
  v26 = v46;
  MEMORY[0x277D82BD8](v98);
  return v26;
}