uint64_t sub_257DDE73C(void *a1)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4D0();
  v6 = a1;
  v7 = sub_257ECDA20();
  v8 = sub_257ECFBD0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_257BAC000, v7, v8, "singleTap sender: %@", v9, 0xCu);
    sub_257BE4084(v10, &unk_27F8F5490);
    MEMORY[0x259C74820](v10, -1, -1);
    MEMORY[0x259C74820](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = [objc_opt_self() defaultCenter];
    if (qword_281543EE0 != -1)
    {
      swift_once();
    }

    [v13 postNotificationName:qword_281548090 object:0];

    sub_257BDB830();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_257DDE9E0(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4D0();
  v8 = a1;
  v9 = sub_257ECDA20();
  v10 = sub_257ECFBD0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_257BAC000, v9, v10, "singleTap gestureRecognizer: %@", v11, 0xCu);
    sub_257BE4084(v12, &unk_27F8F5490);
    MEMORY[0x259C74820](v12, -1, -1);
    MEMORY[0x259C74820](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if ([v8 numberOfTouches] >= 1)
  {
    v14 = sub_257DD87E8();
    v15 = [v2 view];
    v16 = v15;
    if (v14)
    {
      [v8 locationInView_];
      v18 = v17;
      v20 = v19;

      v21 = *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView];
      [v21 maximumZoomScale];
      [v21 zoomToRect:1 animated:{sub_257DDE33C(v22 * 0.6, v18, v20)}];
      sub_257DDB720();
      sub_257DD65E0();
      return;
    }

    if (v15)
    {
      [v15 bounds];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v56.origin.x = v24;
      v56.origin.y = v26;
      v56.size.width = v28;
      v56.size.height = v30;
      MidX = CGRectGetMidX(v56);
      v32 = [v2 view];
      if (v32)
      {
        v33 = v32;
        [v32 bounds];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;

        v57.origin.x = v35;
        v57.origin.y = v37;
        v57.size.width = v39;
        v57.size.height = v41;
        MidY = CGRectGetMidY(v57);
        v43 = objc_opt_self();
        v44 = swift_allocObject();
        *(v44 + 2) = v2;
        v44[3] = MidX;
        v44[4] = MidY;
        v54 = sub_257DE05D8;
        v55 = v44;
        aBlock = MEMORY[0x277D85DD0];
        v51 = 1107296256;
        v52 = sub_257D231C0;
        v53 = &block_descriptor_52;
        v45 = _Block_copy(&aBlock);
        v46 = v2;

        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        v54 = sub_257DE063C;
        v55 = v47;
        aBlock = MEMORY[0x277D85DD0];
        v51 = 1107296256;
        v52 = sub_257DFE438;
        v53 = &block_descriptor_19_1;
        v48 = _Block_copy(&aBlock);
        v49 = v46;

        [v43 animateWithDuration:v45 animations:v48 completion:0.2];
        _Block_release(v48);
        _Block_release(v45);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_257DDEE48()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  sub_257ECD4D0();
  v9 = sub_257ECDA20();
  v10 = sub_257ECFBD0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_257BAC000, v9, v10, "resetZoom", v11, 2u);
    MEMORY[0x259C74820](v11, -1, -1);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
  [v13 contentSize];
  if (v15 == 0.0 && v14 == 0.0)
  {
    sub_257ECD4D0();
    v16 = sub_257ECDA20();
    v17 = sub_257ECFBD0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_257BAC000, v16, v17, "Tried resetting zoom on scrollView with contentSize zero.", v18, 2u);
      MEMORY[0x259C74820](v18, -1, -1);
    }

    return (v12)(v6, v2);
  }

  else
  {
    [v13 minimumZoomScale];
    sub_257DDDFE4(0, v20);
    return sub_257DDB720();
  }
}

void sub_257DDF0EC(void *a1)
{
  if ([a1 state] == 1)
  {
    [v1 becomeFirstResponder];
    v3 = [a1 view];
    [a1 locationInView_];
    v5 = v4;
    v7 = v6;

    v8 = &v1[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation];
    *v8 = v5;
    *(v8 + 1) = v7;
    sub_257BD2C2C(0, &unk_27F8F9790);
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    v9 = sub_257ECFE50();
    v10 = sub_257DD92BC();
    [v10 presentEditMenuWithConfiguration_];
  }
}

uint64_t sub_257DDF290(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257BDF858(*(a2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation), *(a2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation + 8), *(a2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation + 16), *(a2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation + 24));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_257DDF428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_257ECDA30();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_257ECF900();
  v5[8] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_257DDF51C, v8, v7);
}

uint64_t sub_257DDF51C()
{
  *(v0 + 88) = *(*(v0 + 24) + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_textDetectionService);
  sub_257ECC3F0();

  return MEMORY[0x2822009F8](sub_257DDF598, 0, 0);
}

uint64_t sub_257DDF598()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_257BD2C2C(0, &qword_27F8F97F0);
  *v4 = v0;
  v4[1] = sub_257DDF6A8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000018, 0x8000000257EFD680, sub_257DE0834, v3, v5);
}

uint64_t sub_257DDF6A8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_257DDF8B8;
  }

  else
  {

    v2 = sub_257DDF7C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257DDF7C4()
{

  v0[15] = v0[2];
  v1 = v0[9];
  v2 = v0[10];

  return MEMORY[0x2822009F8](sub_257DDF830, v1, v2);
}

uint64_t sub_257DDF830()
{
  v1 = v0[15];
  v2 = v0[3];

  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument);
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument) = v1;

  sub_257DD7E4C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_257DDF8B8()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_257DDF924, v1, v2);
}

uint64_t sub_257DDF924()
{
  v1 = v0[14];

  sub_257ECD400();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not handle Text Detection Request. Error : %@", v7, 0xCu);
    sub_257BE4084(v8, &unk_27F8F5490);
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

uint64_t type metadata accessor for FreezeFramePageContentViewController()
{
  result = qword_27F8F9778;
  if (!qword_27F8F9778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257DDFCB0()
{
  result = type metadata accessor for Asset();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_257DDFDB0()
{
  v1 = v0;
  v2 = sub_257ECFD20();
  v16 = *(v2 - 8);
  v17 = v2;
  MEMORY[0x28223BE20](v2);
  v15 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v4);
  v14[1] = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF190();
  MEMORY[0x28223BE20](v6 - 8);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_pageSelectionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v8 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument) = 0;
  v9 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_analyzer;
  sub_257ECF340();
  swift_allocObject();
  *(v1 + v9) = sub_257ECF330();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction) = 0;
  v10 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_filterSet) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_thumbnailWorkItem) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem) = 0;
  v11 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageProcessingQueue;
  sub_257BD2C2C(0, &qword_281543F10);
  sub_257ECF150();
  v18 = v10;
  sub_257DE066C(&qword_281543F30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000);
  sub_257ED0180();
  (*(v16 + 104))(v15, *MEMORY[0x277D85260], v17);
  *(v1 + v11) = sub_257ECFD80();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_delayedAssetSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_zoomSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___singleTapGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___longPressGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___doubleTapGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___editMenuInteraction) = 0;
  v12 = (v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_myLabel;
  *(v1 + v13) = sub_257DDA774();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController) = 0;
  sub_257ED0410();
  __break(1u);
}

void sub_257DE01E4()
{
  v11 = [objc_allocWithZone(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
  v1 = [v11 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() blackColor];
    [v2 setBackgroundColor_];

    v4 = [v11 presentationController];
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_257ED9BE0;
        v9 = objc_opt_self();
        *(v8 + 32) = [v9 mediumDetent];
        *(v8 + 40) = [v9 largeDetent];
        sub_257BD2C2C(0, &unk_27F8F9820);
        v10 = sub_257ECF7F0();

        [v7 setDetents_];

        [v7 setPrefersGrabberVisible_];
      }
    }

    [v0 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257DE03E0()
{
  sub_257BD2C2C(0, &unk_281543D90);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  *(swift_allocObject() + 16) = v0;
  v6 = v0;
  v7 = sub_257ECFF90();
  sub_257BD2C2C(0, qword_281543E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_257ED9BF0;
  *(v8 + 32) = v7;
  return sub_257ECFEA0();
}

_OWORD *sub_257DE05D8()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  sub_257DDEE48();
  return sub_257DDD9A0(*(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView), v2, v3);
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257DE066C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257DE06B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257DDF428(a1, v4, v5, v7, v6);
}

uint64_t sub_257DE0774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257BE3DE0;

  return sub_257DD8000(a1, v4, v5, v7, v6);
}

uint64_t sub_257DE083C()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage) == 1)
  {
    return sub_257DD8BD0();
  }

  return result;
}

uint64_t sub_257DE08C0()
{
  v1 = *(sub_257ECCB70() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_257DDCB3C(v2, v3);
}

uint64_t objectdestroy_68Tm()
{
  v1 = sub_257ECCB70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_257DE0B50()
{
  v1 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:73.0];
  v2 = [v0 imageByApplyingSymbolConfiguration_];

  if (v2)
  {
    v3 = [v2 imageWithRenderingMode_];

    v4 = [objc_opt_self() whiteColor];
    v2 = [v3 imageWithTintColor_];
  }

  return v2;
}

id sub_257DE0CCC(SEL *a1)
{
  v2 = sub_257ECF4C0();
  v3 = [objc_opt_self() systemImageNamed_];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:30.0];
  v5 = [v3 imageByApplyingSymbolConfiguration_];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 imageWithRenderingMode_];

  v7 = [objc_opt_self() *a1];
  v8 = [v6 imageWithTintColor_];

  return v8;
}

id sub_257DE0E18()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:30.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() whiteColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

id sub_257DE0F64()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() _systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:30.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() whiteColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

id sub_257DE10B0()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:30.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() whiteColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

id sub_257DE1234()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:19.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() whiteColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

id sub_257DE1380()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:73.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() systemYellowColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

id sub_257DE1504()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:73.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() systemYellowColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

id sub_257DE1680(double a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = sub_257ECF4C0();
  v7 = [objc_opt_self() systemImageNamed_];

  if (!v7)
  {
    return 0;
  }

  v8 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:a1];
  v9 = [v7 imageByApplyingSymbolConfiguration_];

  if (!v9)
  {
    return 0;
  }

  v10 = [v9 imageWithRenderingMode_];

  v11 = [objc_opt_self() *a4];
  v12 = [v10 imageWithTintColor_];

  return v12;
}

id MAGPulseFeedbackProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_257DE17F4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_257DE1848(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_257DE1900()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_257DE1954(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_257DE1A0C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_257DE1A60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_257DE1B18()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_257DE1B6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_257DE1C24()
{
  result = [objc_allocWithZone(ToneGenerator) init];
  qword_27F913140 = result;
  return result;
}

id MAGPulseFeedbackProcessor.init()()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
  *&v0[v1] = [objc_allocWithZone(ToneGenerator) init];
  v2 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  *&v0[v2] = [objc_allocWithZone(ToneGenerator) init];
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
  *&v0[v3] = [objc_allocWithZone(ToneGenerator) init];
  v4 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
  *&v0[v4] = [objc_allocWithZone(ToneGenerator) init];
  v5 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakFrequencyGenerator;
  if (qword_27F8F46B8 != -1)
  {
    swift_once();
  }

  v6 = qword_27F913140;
  [qword_27F913140 minPulseFrequency];
  v8 = v7;
  [v6 maxPulseFrequency];
  v10 = v9;
  type metadata accessor for PulseFrequencyGenerator();
  v11 = swift_allocObject();
  v12 = (v10 - v8) / -0.87;
  *(v11 + 16) = v12;
  *(v11 + 24) = v8 + v12 * -0.95;
  *&v0[v5] = v11;
  v13 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakVolumeGenerator;
  type metadata accessor for VolumeGenerator();
  *&v0[v13] = swift_allocObject();
  v14 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakPitchGenerator;
  *&v0[v14] = sub_257E592E4(0.25);
  swift_beginAccess();
  [*&v0[v1] setUseSoundFeedback_];
  [*&v0[v1] setUseHapticFeedback_];
  swift_beginAccess();
  [*&v0[v2] setUseSoundFeedback_];
  [*&v0[v2] setUseHapticFeedback_];
  swift_beginAccess();
  [*&v0[v3] setUseHapticFeedback_];
  [*&v0[v3] setUseSoundFeedback_];
  swift_beginAccess();
  [*&v0[v4] setUseSoundFeedback_];
  [*&v0[v4] setUseHapticFeedback_];
  v16.receiver = v0;
  v16.super_class = type metadata accessor for MAGPulseFeedbackProcessor();
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_257DE1F00(void *a1, unsigned int a2)
{
  v3 = v2;
  v61 = sub_257ECCB70();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v8 = &v55 - v7;
  v9 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
  swift_beginAccess();
  [*(v2 + v9) minPulseFrequency];
  v11 = v10;
  [*(v2 + v9) maxPulseFrequency];
  v13 = *(v2 + v9);
  if ((a2 & 0x80000000) != 0)
  {
    [v13 setPulseFrequency_];
    v14 = 0.0;
  }

  else
  {
    [v13 setPulseFrequency_];
    LODWORD(v14) = 1.0;
    if (a2 >= 0x726)
    {
      v14 = 0.0;
      if (a2 <= 0x1770)
      {
        *&v14 = (a2 - 6000) / -4170.0;
      }
    }
  }

  [*(v2 + v9) setVolume_];
  type metadata accessor for AudioBalanceGenerator();
  swift_initStackObject();
  v15 = sub_257DA3484();
  [a1 minPosition];
  v62 = v16;
  [a1 maxPosition];
  v18 = v17;
  v19 = v62;
  v62.n128_u32[0] = a2;
  v57 = v15;
  *&v20 = sub_257DA30F8(a2, v19, v18);
  v55 = v20;
  [*(v3 + v9) setLeftBalance_];
  HIDWORD(v21) = DWORD1(v55);
  LODWORD(v21) = DWORD1(v55);
  [*(v3 + v9) setRightBalance_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v22 = qword_281548348;
  v23 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold);
  swift_beginAccess();
  v24 = v23[1];
  v25 = v23[2];
  v66[0] = *v23;
  v66[1] = v24;
  v66[2] = v25;
  v26 = qword_2815447E0;

  if (v26 != -1)
  {
    v27 = swift_once();
  }

  MEMORY[0x28223BE20](v27);
  *(&v55 - 2) = v66;
  sub_257ECFD50();

  sub_257E592DC(v63[0]);
  v28 = v22 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  v29 = swift_beginAccess();
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  v63[0] = *v28;
  v63[1] = v30;
  v64 = v31;
  MEMORY[0x28223BE20](v29);
  *(&v55 - 2) = v63;
  sub_257ECC3F0();

  sub_257ECFD50();

  v32 = v65;
  v33 = v62.n128_u32[0];
  v34 = objc_opt_self();
  v35 = [v34 millimeters];
  sub_257DE3BF4();
  sub_257ECC740();
  if (v32)
  {
    v36 = [v34 feet];
    v37 = v58;
    sub_257ECC770();

    sub_257ECC750();
    v39 = round(v38);
    (*(v56 + 8))(v8, v37);
  }

  else
  {
    v40 = [v34 meters];
    v41 = v58;
    sub_257ECC770();

    sub_257ECC750();
    v43 = round(v42 + v42);
    (*(v56 + 8))(v8, v41);
    v39 = v43 * 0.5;
  }

  v44 = *(v3 + v9);
  sub_257ECC3F0();
  v45 = v44;
  v46 = v59;
  sub_257E58CF0(v59, v39);

  v47 = sub_257ECCAE0();
  (*(v60 + 8))(v46, v61);
  [v45 setAudioFileURL_];

  v48 = *(v3 + v9);
  v49 = sub_257E58C8C(v33);
  v50 = v48;

  *&v51 = v49;
  [v50 setPitchFactor_];

  v52 = &selRef_startPulse;
  if (([*(v3 + v9) useSoundFeedback] & 1) == 0 && !objc_msgSend(*(v3 + v9), sel_useHapticFeedback))
  {
    v52 = &selRef_stopPulse;
  }

  v53 = *(v3 + v9);
  [v53 *v52];
}

uint64_t sub_257DE25DC(unsigned int a1)
{
  v2 = v1;
  v63 = sub_257ECCB70();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v6 = &v55[-v5];
  v7 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
  swift_beginAccess();
  [*(v1 + v7) minPulseFrequency];
  v9 = v8;
  [*(v1 + v7) maxPulseFrequency];
  v11 = *(v1 + v7);
  if ((a1 & 0x80000000) != 0)
  {
    [v11 setPulseFrequency_];
    v12 = 0.0;
  }

  else
  {
    [v11 setPulseFrequency_];
    LODWORD(v12) = 1.0;
    if (a1 >= 0x726)
    {
      v12 = 0.0;
      if (a1 <= 0x1770)
      {
        *&v12 = (a1 - 6000) / -4170.0;
      }
    }
  }

  [*(v1 + v7) setVolume_];
  type metadata accessor for AudioBalanceGenerator();
  swift_initStackObject();
  v13 = sub_257DA3484();
  v56 = a1;
  v64 = v13;
  *&v14 = sub_257DA30F8(a1, xmmword_257ED6C30, 0);
  v65 = v14;
  [*(v1 + v7) setLeftBalance_];
  HIDWORD(v15) = DWORD1(v65);
  LODWORD(v15) = DWORD1(v65);
  [*(v1 + v7) setRightBalance_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = qword_281548348;
  v17 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold);
  swift_beginAccess();
  v18 = v17[1];
  v19 = v17[2];
  v72[0] = *v17;
  v72[1] = v18;
  v72[2] = v19;
  v20 = qword_2815447E0;

  if (v20 != -1)
  {
    v21 = swift_once();
  }

  v22 = qword_2815447E8;
  MEMORY[0x28223BE20](v21);
  *&v55[-16] = v72;
  sub_257ECFD50();

  *&v65 = sub_257E592D4(v70[0]);
  v57 = v16;
  v23 = v16 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  v24 = swift_beginAccess();
  v25 = *(v23 + 8);
  v26 = *(v23 + 16);
  v70[0] = *v23;
  v70[1] = v25;
  v71 = v26;
  MEMORY[0x28223BE20](v24);
  *&v55[-16] = v70;

  v58 = v22;
  sub_257ECFD50();

  v27 = v66;
  v28 = v56;
  v29 = objc_opt_self();
  v30 = [v29 millimeters];
  sub_257DE3BF4();
  sub_257ECC740();
  if (v27)
  {
    v31 = [v29 feet];
    v32 = v60;
    sub_257ECC770();

    sub_257ECC750();
    v34 = round(v33);
    (*(v59 + 8))(v6, v32);
  }

  else
  {
    v35 = [v29 meters];
    v36 = v60;
    sub_257ECC770();

    sub_257ECC750();
    v38 = round(v37 + v37);
    (*(v59 + 8))(v6, v36);
    v34 = v38 * 0.5;
  }

  v39 = *(v2 + v7);
  v40 = v61;
  sub_257E58CF0(v61, v34);
  v41 = sub_257ECCAE0();
  (*(v62 + 8))(v40, v63);
  [v39 setAudioFileURL_];

  v42 = *(v2 + v7);
  *&v43 = sub_257E58C8C(v28);
  [v42 setPitchFactor_];
  v44 = (v57 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
  v45 = swift_beginAccess();
  v46 = v44[1];
  v47 = v44[2];
  v66 = *v44;
  v67 = v46;
  v68 = v47;
  MEMORY[0x28223BE20](v45);
  *&v55[-16] = &v66;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
  sub_257ECFD50();

  LOBYTE(v46) = sub_257C592D0(2u, v69);

  v49 = &selRef_startPulse;
  if ((v46 & 1) == 0)
  {
    v50 = *v44;
    v51 = v44[1];
    v52 = v44[2];
    v66 = v50;
    v67 = v51;
    v68 = v52;
    MEMORY[0x28223BE20](v48);
    *&v55[-16] = &v66;

    sub_257ECFD50();

    v53 = sub_257C592D0(3u, v69);

    if (!v53)
    {
      v49 = &selRef_stopPulse;
    }
  }

  [*(v2 + v7) *v49];
}

uint64_t sub_257DE2E10(float a1)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v3 = v61 - v2;
  v65 = sub_257ECCB70();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348;
  v7 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold);
  swift_beginAccess();
  v8 = v7[1];
  v9 = v7[2];
  v75[0] = *v7;
  v75[1] = v8;
  v75[2] = v9;
  v10 = qword_2815447E0;

  if (v10 != -1)
  {
    v11 = swift_once();
  }

  v12 = qword_2815447E8;
  MEMORY[0x28223BE20](v11);
  v61[-2] = v75;
  sub_257ECFD50();

  v67 = sub_257E592DC(v74);
  v13 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
  v14 = v69;
  swift_beginAccess();
  v15 = *(v14 + v13);
  v62 = v6;
  v16 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  v17 = swift_beginAccess();
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  v72[0] = *v16;
  v72[1] = v18;
  v73 = v19;
  MEMORY[0x28223BE20](v17);
  v61[-2] = v72;
  v20 = v15;

  v63 = v12;
  sub_257ECFD50();
  v61[1] = 0;

  v21 = a1;
  v22 = v66;
  if (LOBYTE(v70[0]) == 1)
  {
    v23 = objc_opt_self();
    v24 = [v23 meters];
    sub_257DE3BF4();
    sub_257ECC740();
    v25 = [v23 feet];
    sub_257ECC770();

    sub_257ECC750();
    v21 = round(v26);
    (*(v68 + 8))(v3, v22);
  }

  sub_257E58CF0(v5, v21);
  v27 = sub_257ECCAE0();
  (*(v64 + 8))(v5, v65);
  [v20 setAudioFileURL_];

  v28 = *(v69 + v13);
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 meters];
  sub_257DE3BF4();
  sub_257ECC740();
  v32 = [v29 millimeters];
  sub_257ECC770();

  sub_257ECC750();
  v34 = round(v33);
  v35 = *(v68 + 8);
  v68 += 8;
  result = v35(v3, v22);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v34 <= -2147483650.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v34 >= 2147483650.0)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  *&v37 = sub_257E58C8C(v34);
  [v30 setPitchFactor_];

  v38 = v69;
  v39 = *(v69 + v13);
  [v39 minPulseFrequency];
  v41 = v40;
  [*(v38 + v13) maxPulseFrequency];
  v43 = v42;
  v44 = 0.0;
  if (a1 >= 0.0)
  {
    v45 = (v43 - v41) / -1830.0;
    v43 = v41 + v45 * -3660.0;
    v44 = v45 * a1 + v43;
  }

  [v39 setPulseFrequency_];

  v46 = *(v69 + v13);
  v47 = [v29 meters];
  sub_257ECC740();
  v48 = [v29 millimeters];
  sub_257ECC770();

  sub_257ECC750();
  v50 = round(v49);
  v35(v3, v22);
  v51 = 0.0;
  v52 = v62;
  if (v50 >= 0.0)
  {
    LODWORD(v51) = 1.0;
    if (v50 >= 1830.0)
    {
      v51 = 0.0;
      if (v50 <= 6000.0)
      {
        v51 = v50 + -6000.0;
        *&v51 = v50 + -6000.0;
        *&v51 = *&v51 / -4170.0;
      }
    }
  }

  [v46 setVolume_];

  v53 = (v52 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
  v54 = swift_beginAccess();
  v55 = v53[1];
  v56 = v53[2];
  v70[0] = *v53;
  v70[1] = v55;
  v70[2] = v56;
  MEMORY[0x28223BE20](v54);
  v61[-2] = v70;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
  sub_257ECFD50();

  v57 = v71;
  if (sub_257C592D0(3u, v71))
  {

    v58 = &selRef_startPulse;
  }

  else
  {
    v59 = sub_257C592D0(2u, v57);

    if (v59)
    {
      v58 = &selRef_startPulse;
    }

    else
    {
      v58 = &selRef_stopPulse;
    }
  }

  v60 = *(v69 + v13);
  [v60 *v58];
}

id sub_257DE3694(double a1)
{
  v2 = v1;
  v4 = sub_257ECCB70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (a1 >= 0.0)
  {
    [v9 setPulseFrequency_];
    LODWORD(v10) = 1.0;
    if (a1 >= 0.08)
    {
      v10 = 0.0;
      if (a1 <= 0.95)
      {
        v10 = a1 + -0.95;
        *&v10 = a1 + -0.95;
        *&v10 = *&v10 / -0.87;
      }
    }
  }

  else
  {
    [v9 setPulseFrequency_];
    v10 = 0.0;
  }

  [*(v1 + v8) setVolume_];
  v11 = *(v1 + v8);
  sub_257E58CF0(v7, a1);
  v12 = sub_257ECCAE0();
  (*(v5 + 8))(v7, v4);
  [v11 setAudioFileURL_];

  LODWORD(v13) = 1.0;
  [*(v2 + v8) setPitchFactor_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  swift_beginAccess();
  v15 = v14[1];
  v16 = v14[2];
  v29 = *v14;
  v30 = v15;
  v31 = v16;
  v17 = qword_2815447E0;

  if (v17 != -1)
  {
    v18 = swift_once();
  }

  MEMORY[0x28223BE20](v18);
  *&v28[-16] = &v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
  sub_257ECFD50();

  v19 = sub_257C592D0(2u, v32);

  v21 = &selRef_startPulse;
  if (!v19)
  {
    v22 = *v14;
    v23 = v14[1];
    v24 = v14[2];
    v29 = v22;
    v30 = v23;
    v31 = v24;
    MEMORY[0x28223BE20](v20);
    *&v28[-16] = v25;

    sub_257ECFD50();

    v26 = sub_257C592D0(3u, v32);

    if (!v26)
    {
      v21 = &selRef_stopPulse;
    }
  }

  return [*(v2 + v8) *v21];
}

id MAGPulseFeedbackProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGPulseFeedbackProcessor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_257DE3B80(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_257D12B14(*(a1 + 16));
  if (!v2)
  {
    *a2 = v4;
  }
}

unint64_t sub_257DE3BF4()
{
  result = qword_27F8F58F0;
  if (!qword_27F8F58F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F58F0);
  }

  return result;
}

void sub_257DE3C40(double *a1@<X8>)
{
  v4 = sub_257D12B14(*(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t sub_257DE3FF0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7618);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v27 - v3;
  v5 = sub_257ECCD90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_languageTranslator);
  sub_257ECCD80();
  v10 = sub_257ECCD60();
  (*(v6 + 8))(v8, v5);
  v11 = [v9 _proposedTranslationLocaleForLocale_];

  if (v11)
  {
    sub_257ECCD70();

    (*(v6 + 56))(v4, 0, 1, v5);
    sub_257DE4474(v4);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v27[0]) == 1)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_257ECF4C0();
      v15 = sub_257ECF4C0();
      v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

      v17 = v16;
      if (!v16)
      {
        sub_257ECF500();
        v17 = sub_257ECF4C0();
      }

      v27[0] = sub_257ECF500();
      v27[1] = v18;
      sub_257BDAB08();
      v19 = sub_257ED0100();
      v21 = v20;

      v22 = sub_257E003E8();
      v23 = sub_257E00504();
      sub_257DFD370(v19, v21, v22, v23);

      UIAccessibilitySpeakAndDoNotBeInterrupted();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v27[0]) = 1;
      sub_257ECC3F0();
      sub_257ECDD70();
    }

    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wifiConnected) == 1)
    {
      v24 = [objc_opt_self() shared];
      v25 = [v24 downloadManager];

      [v25 downloadImageCaptionAssets];
    }

    result = _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0();
    if (result)
    {
      return sub_257D1A130();
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    return sub_257DE4474(v4);
  }

  return result;
}

uint64_t sub_257DE4474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_257DE44DC()
{
  v0 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v0);
  v2 = (v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  if (byte_27F8F78A0 != 1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v25 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v6 = sub_257DFF054();
  result = [v6 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [result alpha];
  v10 = v9;

  if (v10 == 0.0)
  {
LABEL_10:
    v24[1] = v0;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v13 = sub_257ECF4C0();
    v14 = sub_257ECF4C0();
    v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

    v16 = v15;
    if (!v15)
    {
      sub_257ECF500();
      v16 = sub_257ECF4C0();
    }

    v25 = sub_257ECF500();
    v26 = v17;
    sub_257BDAB08();
    v18 = sub_257ED0100();
    v20 = v19;

    v21 = sub_257E003E8();
    v22 = sub_257E00504();
    sub_257DFD370(v18, v20, v21, v22);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }

LABEL_13:
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v25) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v2, &v5[v3[5]]);
  v5[v3[6]] = 1;
  v5[v3[7]] = 0;
  v23 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v2, type metadata accessor for MAGOutputEvent.EventType);
  *&v5[v3[8]] = v23;
  sub_257CBBC80(v5);
  return sub_257C15F24(v5, type metadata accessor for MAGOutputEvent);
}

uint64_t sub_257DE4958(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_257ECF900();
  v2[10] = sub_257ECF8F0();
  v4 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257DE49F0, v4, v3);
}

id sub_257DE49F0()
{
  v1 = v0[9];
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_engine);
  v4 = [v3 imageNode];
  if (v4)
  {

    result = [v3 imageNode];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = v0[9];
    v8 = v0[8];

    v9 = sub_257DE4CD8();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    *(v10 + 24) = v7;
    v0[6] = sub_257DE4EEC;
    v0[7] = v10;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_257BE8054;
    v0[5] = &block_descriptor_53;
    v11 = _Block_copy(v0 + 2);
    sub_257ECC3F0();
    v12 = v7;

    [v6 triggerWithPixelBuffer:v8 exifOrientation:6 options:v9 cacheKey:0 resultHandler:v11];
    _Block_release(v11);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

void sub_257DE4BC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  *(a3 + 16) = a1;
  v8 = a1;

  v9 = [objc_allocWithZone(MEMORY[0x277CE7E08]) init];
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  [v9 setHostAppBundleID_];
  v12 = *(a4 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_springBoardServer);
  swift_beginAccess();
  [v12 launchVoiceOverImageExplorerViewServiceForResult:*(a3 + 16) withData:v9];
}

id sub_257DE4CD8()
{
  v0 = sub_257ECCD90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CE6AE0]) init];
  v5 = AXRuntimeCheck_MediaAnalysisSupport();
  [v4 setDetectMADCaptions_];
  [v4 setDetectMADScenes_];
  [v4 setDetectScenes_];
  [v4 setDetectObjects_];
  [v4 setDetectProminentObjects_];
  [v4 setDetectCaptions_];
  [v4 setDetectText_];
  v6 = [objc_opt_self() defaultOptions];
  [v4 setTextDetectionOptions_];

  [v4 setDetectTraits_];
  [v4 setDetectModelClassifications_];
  [v4 setIncludeImageInResult_];
  sub_257ECCD80();
  v7 = sub_257ECCD60();
  (*(v1 + 8))(v3, v0);
  [v4 setPreferredOutputLocale_];

  return v4;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t MFReaderFont.rawValue.getter()
{
  result = 0x73616C65687441;
  switch(*v0)
  {
    case 1:
      result = 0x72657472616843;
      break;
    case 2:
      result = 0x616967726F6547;
      break;
    case 3:
      result = 0x6C4F206E61776F49;
      break;
    case 4:
      result = 0x6F6E6974616C6150;
      break;
    case 5:
      result = 0x6D6574737953;
      break;
    case 6:
      result = 0x6B657661726553;
      break;
    case 7:
      result = 0x654E2073656D6954;
      break;
    case 8:
      result = 0x63697465766C6548;
      break;
    case 9:
      result = 0x72656972756F43;
      break;
    case 0xA:
      result = 0x6F6C6E654DLL;
      break;
    case 0xB:
      result = 0x6568637562657254;
      break;
    case 0xC:
      result = 0x654E72696E657641;
      break;
    case 0xD:
      result = 0xD000000000000011;
      break;
    case 0xE:
      result = 0x6C70726570706F43;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_257DE50BC()
{
  result = 0x73616C65687441;
  switch(*v0)
  {
    case 1:
      result = 0x72657472616843;
      break;
    case 2:
      result = 0x616967726F6547;
      break;
    case 3:
      result = 0x6E61776F49;
      break;
    case 4:
      result = 0x6F6E6974616C6150;
      break;
    case 5:
      result = 0x6E617246206E6153;
      break;
    case 6:
      result = 0x6B657661726553;
      break;
    case 7:
      result = 0x654E2073656D6954;
      break;
    case 8:
      result = 0x63697465766C6548;
      break;
    case 9:
      result = 0x72656972756F43;
      break;
    case 0xA:
      result = 0x6F6C6E654DLL;
      break;
    case 0xB:
      result = 0x6568637562657254;
      break;
    case 0xC:
      result = 0x72696E657641;
      break;
    case 0xD:
      result = 0x65796F766153;
      break;
    case 0xE:
      result = 0x6C70726570706F43;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MFReaderFont.id.getter()
{
  v0 = sub_257ECCCF0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCCE0();
  v4 = sub_257ECCCA0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

MagnifierSupport::MFReaderFont_optional __swiftcall MFReaderFont.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_257DE5388()
{
  v0 = MFReaderFont.rawValue.getter();
  v2 = v1;
  if (v0 == MFReaderFont.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_257ED0640();
  }

  return v5 & 1;
}

unint64_t sub_257DE5428()
{
  result = qword_27F8F9868;
  if (!qword_27F8F9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9868);
  }

  return result;
}

uint64_t sub_257DE547C()
{
  sub_257ED07B0();
  MFReaderFont.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257DE54E4()
{
  MFReaderFont.rawValue.getter();
  sub_257ECF5D0();
}

uint64_t sub_257DE5548()
{
  sub_257ED07B0();
  MFReaderFont.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

unint64_t sub_257DE55B8@<X0>(unint64_t *a1@<X8>)
{
  result = MFReaderFont.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_257DE55E4()
{
  result = qword_27F8F9870;
  if (!qword_27F8F9870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9870);
  }

  return result;
}

uint64_t sub_257DE5658@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCCE0();
  v6 = sub_257ECCCA0();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for MFReaderFont(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MFReaderFont(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_257DE5934()
{
  result = qword_27F8F9878;
  if (!qword_27F8F9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9878);
  }

  return result;
}

uint64_t sub_257DE5988@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257DE5A08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

double sub_257DE5A7C(void *a1, double a2)
{
  v4 = sub_257ECF4C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v6 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_257DE8508();
  *(inited + 40) = a1;
  v7 = v6;
  v8 = a1;
  sub_257BE8668(inited);
  swift_setDeallocating();
  sub_257DE8554(inited + 32);
  _s3__C3KeyVMa_0(0);
  sub_257D3FC9C();
  v9 = sub_257ECF3C0();

  [v4 boundingRectWithSize:1 options:v9 attributes:0 context:{1.79769313e308, a2}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v19.origin.x = v11;
  v19.origin.y = v13;
  v19.size.width = v15;
  v19.size.height = v17;
  return ceil(CGRectGetWidth(v19));
}

id sub_257DE5D00(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
  swift_beginAccess();
  *(v3 + v4) = v2;
  result = [*(v3 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel) setHidden_];
  if (*(v3 + v4) == 1)
  {
    return [*(v3 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel) setHidden_];
  }

  return result;
}

uint64_t sub_257DE5D94()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_257DE5DD8(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel) setHidden_];
  if (*(v1 + v3) == 1)
  {
    return [*(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel) setHidden_];
  }

  return result;
}

void (*sub_257DE5E68(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_257DE5EF0;
}

void sub_257DE5EF0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    [*(v5 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel) setHidden_];
    if (*(v5 + v4) == 1)
    {
      [*(v3[3] + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel) setHidden_];
    }
  }

  free(v3);
}

double sub_257DE5F84()
{
  v1 = v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_257DE5FD0(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_257DE609C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_257DE60E0(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_257DE6190()
{
  result = [v0 superview];
  v2 = result;
  if (*&result != 0.0)
  {
    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 != 1)
    {
      [v2 bounds];
      v9 = CGRectGetWidth(v11) * 0.5;
      [v2 bounds];
      CGRectGetHeight(v12);

LABEL_11:
      *&result = v9;
      return result;
    }

    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 orientation];

    [v2 bounds];
    if (v4 != 2)
    {
      if (v4 == 4)
      {
        v9 = CGRectGetWidth(*&v5) + -34.0;
        [v2 bounds];
        CGRectGetHeight(v13);
      }

      else
      {
        if (v4 == 3)
        {
          CGRectGetHeight(*&v5);

          *&result = 34.0;
          return result;
        }

        v9 = CGRectGetWidth(*&v5) * 0.5;
        [v2 bounds];
        CGRectGetHeight(v14);
      }

      goto LABEL_11;
    }

    Width = CGRectGetWidth(*&v5);

    *&result = Width * 0.5;
  }

  return result;
}

id DetectedView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t DetectedView.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden) = 1;
  v3 = (v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets);
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kTargetPositionArrayMaxSize) = 40;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kFirstPointDepth) = 1048576000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kDepthLabelViewOpacity) = 0x3FE999999999999ALL;
  v5 = objc_opt_self();
  v6 = [v5 sharedApplication];
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  v9 = [v6 _keyWindowForScreen_];

  if (v9)
  {
    [v9 safeAreaInsets];
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaBottom) = v11;
  v12 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  v13 = [v12 navigationBar];

  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v33.origin.x = v15;
  v33.origin.y = v17;
  v33.size.width = v19;
  v33.size.height = v21;
  Height = CGRectGetHeight(v33);
  v23 = [v5 sharedApplication];
  v24 = [v7 mainScreen];
  v25 = [v23 _keyWindowForScreen_];

  if (v25)
  {
    [v25 safeAreaInsets];
    v27 = v26;
  }

  else
  {

    v27 = 0.0;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaTop) = Height + v27 + 20.0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaLeft) = 0x4041000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaRight) = 0x4041000000000000;
  v28 = v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__previousTargetPoint;
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  v29 = v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__currentTargetPoint;
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v30 = v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__nextTargetPoint;
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink) = 0;
  v31 = v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__startTargetTime;
  *v31 = 0;
  *(v31 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kTargetAnimationDuration) = 0x3FE0000000000000;
  type metadata accessor for DetectedView();
  swift_deallocPartialClassInstance();
  return 0;
}

char *sub_257DE673C(void *a1)
{
  v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden] = 1;
  v3 = &v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets];
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kTargetPositionArrayMaxSize] = 40;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kFirstPointDepth] = 1048576000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kDepthLabelViewOpacity] = 0x3FE999999999999ALL;
  v5 = objc_opt_self();
  v6 = [v5 sharedApplication];
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  v9 = [v6 _keyWindowForScreen_];

  v10 = 0.0;
  v11 = 0;
  if (v9)
  {
    [v9 safeAreaInsets];
    v11 = v12;
  }

  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaBottom] = v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  v14 = [v13 navigationBar];

  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v64.origin.x = v16;
  v64.origin.y = v18;
  v64.size.width = v20;
  v64.size.height = v22;
  Height = CGRectGetHeight(v64);
  v24 = [v5 sharedApplication];
  v25 = [v7 mainScreen];
  v26 = [v24 _keyWindowForScreen_];

  if (v26)
  {
    [v26 safeAreaInsets];
    v10 = v27;
  }

  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaTop] = Height + v10 + 20.0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaLeft] = 0x4041000000000000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaRight] = 0x4041000000000000;
  v28 = &v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__previousTargetPoint];
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = 1;
  v29 = &v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__currentTargetPoint];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v30 = &v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__nextTargetPoint];
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = 1;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink] = 0;
  v31 = &v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__startTargetTime];
  *v31 = 0;
  v31[8] = 1;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kTargetAnimationDuration] = 0x3FE0000000000000;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v33 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel] = v32;
  v34 = [v32 layer];
  [v34 setMasksToBounds_];

  v35 = [*&v1[v33] layer];
  v65.origin.x = 0.0;
  v65.origin.y = 0.0;
  v65.size.width = 11.0;
  v65.size.height = 11.0;
  [v35 setCornerRadius_];

  v36 = *&v1[v33];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 whiteColor];
  [v38 setBackgroundColor_];

  [*&v1[v33] setIsAccessibilityElement_];
  [*&v1[v33] setHidden_];
  v40 = [objc_allocWithZone(type metadata accessor for DottedLineLabel()) initWithFrame_];
  v41 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel] = v40;
  [v40 setTextAlignment_];
  v42 = *&v1[v41];
  result = [v42 font];
  if (result)
  {
    v44 = result;
    v45 = [result fontWithSize_];

    [v42 setFont_];
    [*&v1[v41] setNumberOfLines_];
    [*&v1[v41] setLineBreakMode_];
    [*&v1[v41] setIsAccessibilityElement_];
    [a1 bounds];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v63.receiver = v1;
    v63.super_class = type metadata accessor for DetectedView();
    v54 = objc_msgSendSuper2(&v63, sel_initWithFrame_, v47, v49, v51, v53);
    v55 = [v54 layer];
    [v55 setMasksToBounds_];

    [v54 setIsAccessibilityElement_];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v57 = [objc_opt_self() bundleForClass_];
    v58 = sub_257ECF4C0();
    v59 = sub_257ECF4C0();
    v60 = [v57 localizedStringForKey:v58 value:0 table:v59];

    if (!v60)
    {
      sub_257ECF500();
      v60 = sub_257ECF4C0();
    }

    [v54 setAccessibilityLabel_];

    [a1 addSubview_];
    [v54 addSubview_];
    v61 = *&v54[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel];
    [v54 addSubview_];

    v62 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
    swift_beginAccess();
    v54[v62] = 1;

    return v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257DE6E3C(__CVBuffer *a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 superview];
  if (v7)
  {
    v8 = v7;
    Height = CVPixelBufferGetHeight(a1);
    v10 = Height / CVPixelBufferGetWidth(a1);
    [v8 frame];
    Width = CGRectGetWidth(v25);
    [v8 frame];
    v12 = Width / CGRectGetHeight(v26);
    if (v12 >= v10)
    {
      if (v10 < v12)
      {
        [v8 frame];
        v20 = CGRectGetWidth(v29) / v10;
        [v8 frame];
        v21 = CGRectGetWidth(v30);

        v22 = (v20 - v21) * 0.5;
        v15 = 0.0;
LABEL_11:
        v23 = &v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets];
        result = swift_beginAccess();
        *v23 = v22;
        v23[1] = v15;
        v23[2] = v22;
        v23[3] = v15;
        return result;
      }

      v15 = 0.0;
    }

    else
    {
      [v8 frame];
      v13 = v10 * CGRectGetHeight(v27);
      [v8 frame];
      v14 = CGRectGetWidth(v28);

      v15 = (v13 - v14) * 0.5;
    }

    v22 = 0.0;
    goto LABEL_11;
  }

  sub_257ECD440();
  v16 = sub_257ECDA20();
  v17 = sub_257ECFBE0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_257BAC000, v16, v17, "Unable to update edge insets without superview", v18, 2u);
    MEMORY[0x259C74820](v18, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_257DE70B4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = (a2 & 1) == 0;
    v5 = Strong;
    [Strong setHidden_];
  }
}

uint64_t sub_257DE711C(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink;
  v14 = *&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink];
  if (v14)
  {
    [v14 setPaused_];
    v14 = *&v6[v13];
  }

  [v14 invalidate];
  v15 = *&v6[v13];
  *&v6[v13] = 0;

  if (a2 < 0 || (v61.origin.x = a3, v61.origin.y = a4, v61.size.width = a5, v61.size.height = a6, CGRectIsNull(v61)))
  {
    v16 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
    swift_beginAccess();
    v6[v16] = 1;
    [*&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel] setHidden_];
    if (v6[v16] == 1)
    {
      [*&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel] setHidden_];
    }

    v17 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__previousTargetPoint];
    *v17 = 0;
    *(v17 + 1) = 0;
    v17[16] = 1;
    v18 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__currentTargetPoint];
    *v18 = 0;
    *(v18 + 1) = 0;
    v18[16] = 1;
    v19 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__nextTargetPoint];
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = 1;
    v20 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__startTargetTime];
    *v20 = 0;
    v20[8] = 1;
    if (a2 < 0)
    {
      return 0;
    }
  }

  else
  {
    v21 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
    swift_beginAccess();
    v6[v21] = 0;
    [*&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel] setHidden_];
    if (v6[v21] == 1)
    {
      [*&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel] setHidden_];
    }
  }

  v62.origin.x = a3;
  v62.origin.y = a4;
  v62.size.width = a5;
  v62.size.height = a6;
  if (CGRectIsNull(v62))
  {
    return 0;
  }

  result = [v6 superview];
  if (result)
  {
    v23 = result;
    v24 = v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__currentTargetPoint + 16];
    v25 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__previousTargetPoint];
    *v25 = *&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__currentTargetPoint];
    v25[16] = v24;
    [result bounds];
    switch(a1)
    {
      case 1:
        c = -tx;
        a = 0.0;
        b = ty;
        d = 0.0;
        ty = 0.0;
        break;
      case 2:
        b = -ty;
        a = 0.0;
        c = tx;
        d = 0.0;
        tx = 0.0;
        break;
      case 4:
        a = -tx;
        d = -ty;
        b = 0.0;
        c = 0.0;
        break;
      default:
        CGAffineTransformMakeScale(&v60, tx, ty);
        a = v60.a;
        b = v60.b;
        c = v60.c;
        d = v60.d;
        tx = v60.tx;
        ty = v60.ty;
        break;
    }

    v60.a = a;
    v60.b = b;
    v60.c = c;
    v60.d = d;
    v60.tx = tx;
    v60.ty = ty;
    v63.origin.x = a3;
    v63.origin.y = a4;
    v63.size.width = a5;
    v63.size.height = a6;
    v64 = CGRectApplyAffineTransform(v63, &v60);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    v36 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets];
    swift_beginAccess();
    v58 = v36[3];
    v59 = v36[1];
    [v23 frame];
    v56 = CGRectGetWidth(v65);
    v57 = v36[1];
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    MidX = CGRectGetMidX(v66);
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    MidY = CGRectGetMidY(v67);
    v38 = *v36;
    v39 = v36[2];
    [v23 frame];
    v40 = CGRectGetHeight(v68);
    v41 = *v36;
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    CGRectGetMidX(v69);
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    v42 = CGRectGetMidY(v70);
    v43 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled;
    swift_beginAccess();
    if (v6[v43] == 1)
    {
      [v23 bounds];
      v45 = v44 * 0.5;
      [v23 bounds];
      v47 = v46 * 0.5;
    }

    else
    {
      v45 = MidX * ((v59 + v58) / v56 + 1.0) - v57;
      v47 = ((v38 + v39) / v40 + 1.0) * v42 - v41;
    }

    v48 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__nextTargetPoint];
    *v48 = v45;
    v48[1] = v47;
    *(v48 + 16) = 0;
    v49 = CACurrentMediaTime();
    v50 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__startTargetTime];
    *v50 = v49;
    *(v50 + 8) = 0;
    v51 = [objc_opt_self() displayLinkWithTarget:v6 selector:sel_updateTargetAnimation];
    v52 = *&v6[v13];
    *&v6[v13] = v51;
    v53 = v51;

    if (v53)
    {
      v54 = [objc_opt_self() mainRunLoop];
      [v53 addToRunLoop:v54 forMode:*MEMORY[0x277CBE738]];
    }

    return 1;
  }

  return result;
}

void sub_257DE7638()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__nextTargetPoint);
  if ((*(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__nextTargetPoint + 16) & 1) == 0)
  {
    v3 = *v1;
    v2 = v1[1];
    v4 = COERCE_DOUBLE(sub_257DE6190());
    if ((v6 & 1) == 0)
    {
      v7 = v4;
      v8 = v5;
      v9 = (v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__previousTargetPoint);
      if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__previousTargetPoint + 16) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__startTargetTime + 8))
      {
        v10 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink;
        v11 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink);
        if (v11)
        {
          [v11 setPaused_];
          v11 = *(v0 + v10);
        }

        [v11 invalidate];
        v12 = *(v0 + v10);
        *(v0 + v10) = 0;
      }

      else
      {
        v14 = *v9;
        v13 = v9[1];
        v15 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__startTargetTime);
        v16 = CACurrentMediaTime();
        v17 = v16 - v15 + v16 - v15;
        if (v17 >= 1.0)
        {
          v18 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink;
          v19 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink);
          if (v19)
          {
            [v19 setPaused_];
            v19 = *(v0 + v18);
          }

          [v19 invalidate];
          v20 = *(v0 + v18);
          *(v0 + v18) = 0;

          v17 = 1.0;
        }

        v3 = v14 + (v3 - v14) * v17;
        v2 = v13 + (v2 - v13) * v17;
      }

      v21 = v7;
      v22 = v8;
      v23 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel);
      [v23 frame];
      [v23 setFrame_];
      if (qword_27F8F4670 != -1)
      {
        swift_once();
      }

      v26 = v2 - v8;
      v27 = -1.0;
      v28 = 0.0;
      if (byte_27F8F8D89 == 1)
      {
        v29 = [objc_opt_self() currentDevice];
        v30 = [v29 orientation];

        v31 = v30 - 2;
        if ((v30 - 2) <= 2)
        {
          v28 = dbl_257EEA740[v31];
          v27 = dbl_257EEA758[v31];
        }
      }

      if ((v3 - v21) * v28 + v26 * v27 <= 0.0)
      {
        [*(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel) setHidden_];
      }

      else
      {
        sub_257DE796C(v21, v22, v3, v2);
        v32 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel);
        v33 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
        swift_beginAccess();
        [v32 setHidden_];
      }

      v34 = v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__currentTargetPoint;
      *v34 = v3;
      *(v34 + 8) = v2;
      *(v34 + 16) = 0;
    }
  }
}

void sub_257DE796C(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel);
  CGAffineTransformMakeRotation(&v34, 0.0);
  [v9 setTransform_];
  v10 = (a2 + a4) * 0.5;
  v31 = a4;
  v11 = sqrt((a3 - a1) * (a3 - a1) + (a4 - a2) * (a4 - a2));
  [v9 frame];
  v13 = v12;
  [v9 setFrame_];
  v14 = [v9 font];
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14;
  v16 = sub_257DE5A7C(v14, v13);

  v17 = floor(v11 / v16) * 1.2;
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v17 < 9.22337204e18)
  {
    v30 = v9;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    sub_257ECF6F0();
    v19 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v20 = sub_257ECF4C0();

    v21 = [v19 initWithString_];

    v22 = v18 >> 1;
    v23 = (v18 - 1);
    v33 = *MEMORY[0x277D740C0];
    v32 = *MEMORY[0x277D74158];
    v24 = (v18 >> 1) | 0x4000000000000000;
    v25 = 2 * (v18 >> 1);
    while ((v24 & 0x8000000000000000) == 0)
    {
      v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:2.0 - v25 / v23];
      [v21 addAttribute:v33 value:v26 range:{v22, 1}];
      v27 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:2.0 - v25 / v23];
      [v21 addAttribute:v32 value:v27 range:{v22, 1}];

      ++v24;
      v25 += 2;
      if (v18 == ++v22)
      {
        [v30 setAttributedText_];
        v28 = sqrt((a1 - a3) * (a1 - a3) + (a2 - v31) * (a2 - v31));
        v29 = atan2((a2 - v31) / v28, (a1 - a3) / v28);
        CGAffineTransformMakeRotation(&v34, v29);
        [v30 setTransform_];

        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_257DE7DE0()
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

  [v0 setAccessibilityLabel_];
}

id DetectedView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_257DE80E4(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_257DE8168(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_257DE81FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t keypath_get_4Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

unint64_t sub_257DE8508()
{
  result = qword_27F8F8FA0;
  if (!qword_27F8F8FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F8FA0);
  }

  return result;
}

uint64_t sub_257DE8554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257DE85DC()
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

uint64_t sub_257DE86E0()
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

size_t sub_257DE8828(void *a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_257C7DEC4(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    type metadata accessor for DetectedDoor(0);
    return sub_257DE890C;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_257DE891C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C67118(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_257ED05F0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_257DEC024(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_257DE8A50(void **a1)
{
  v2 = *(type metadata accessor for DetectedDoor(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_257C6712C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_257DEBCC8(v6);
  *a1 = v3;
  return result;
}

uint64_t DetectedDoor.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DetectedDoor.id.setter(uint64_t a1)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DetectedDoor.bbox.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for DetectedDoor(0);
  v10 = (v4 + *(result + 20));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t DetectedDoor.normalizedBbox.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for DetectedDoor(0);
  v10 = (v4 + *(result + 24));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t DetectedDoor.depth.setter(uint64_t a1)
{
  result = type metadata accessor for DetectedDoor(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t DetectedDoor.hash(into:)()
{
  sub_257ECCCF0();
  sub_257DEDA74(&qword_27F8F57B0, MEMORY[0x277CC95F0]);

  return sub_257ECF400();
}

uint64_t DetectedDoor.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257DEDA74(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257DE8F3C()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257DEDA74(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257DE8FC4()
{
  sub_257ECCCF0();
  sub_257DEDA74(&qword_27F8F57B0, MEMORY[0x277CC95F0]);

  return sub_257ECF400();
}

uint64_t sub_257DE9048()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257DEDA74(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257DE90F4(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void sub_257DE914C(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void *sub_257DE91D8()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_257DE924C(uint64_t a1, uint64_t a2)
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
  return sub_257DEDFE8(v7, v9) & 1;
}

uint64_t sub_257DE92A8(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 1056964608;
  *(v1 + 24) = 0x4081300000000000;
  *(v1 + 32) = 2;
  *(v1 + 40) = 1057803469;
  *(v1 + 48) = xmmword_257EEA770;
  *(v1 + 64) = a1;
  type metadata accessor for DoorAttributesModel();
  swift_allocObject();
  v3 = swift_retain_n();
  *(v1 + 72) = sub_257D78084(v3);
  v4 = [objc_opt_self() shared];
  v5 = [v4 doorAttributesClassifierProperties];

  if (!v5)
  {

    return v2;
  }

  *&v10 = 0xD000000000000017;
  *(&v10 + 1) = 0x8000000257F06580;
  v6 = [v5 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {

    sub_257BE4084(v12, &unk_27F8F62F0);
    return v2;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return v2;
  }

  *&v12[0] = 0xD000000000000010;
  *(&v12[0] + 1) = 0x8000000257F065A0;
  v7 = [v9 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v7)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();

    sub_257BEBE08(&v10, v12);
    swift_dynamicCast();
    *(v2 + 24) = v9;
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_257DE9550(unint64_t a1, __CVBuffer *a2, __CVBuffer *a3)
{
  v146 = a3;
  v145 = a2;
  v141 = type metadata accessor for DetectedDoor(0);
  v140 = *(v141 - 8);
  v6 = MEMORY[0x28223BE20](v141);
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v134 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v4 = a1 + 32;
    v162 = *(a1 + 32);
    v12 = *(v162 + 16);
    v156 = v11;
    if (v12)
    {
      v13 = sub_257ECF850();
      *(v13 + 16) = v12;
      bzero((v13 + 32), v12);
      v11 = v156;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v3 = sub_257DEE30C(v13, v11, &qword_27F8F59B0);

    v14 = *(v162 + 16);
    if (v14)
    {
      v15 = sub_257ECF850();
      *(v15 + 16) = v14;
      bzero((v15 + 32), 8 * v14);
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v161 = sub_257DEE30C(v15, v156, &unk_27F8F4D80);

    v16 = *(v162 + 16);
    if (v16)
    {
      v17 = sub_257ECF850();
      *(v17 + 16) = v16;
      bzero((v17 + 32), v16);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v164 = sub_257DEE30C(v17, v156, &qword_27F8F5990);

    v18 = v145;
    CVPixelBufferLockBaseAddress(v145, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v18);
    v19 = v146;
    CVPixelBufferLockBaseAddress(v146, 0);
    v152 = CVPixelBufferGetBaseAddress(v19);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v3;
      goto LABEL_13;
    }
  }

  else
  {
LABEL_164:
    __break(1u);
  }

  v20 = sub_257C7DEB0(v3);
LABEL_13:
  v21 = 0;
  v136 = 0;
  v154 = v20 + 4;
  v22 = v156;
  v23 = 1.0;
  v24 = 1.0 / v156;
  v151 = a1 + 24;
  v150 = v20 + 3;
  v25 = MEMORY[0x277D84F90];
  v155 = 1;
  v147 = MEMORY[0x277D84F90];
  v139 = v8;
  v138 = v10;
  v137 = v4;
  v26 = v162;
  v157 = v20;
  while (1)
  {
    if (v21 == v22)
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    v10 = *(v26 + 16);
    if (v10)
    {
      break;
    }

LABEL_142:
    if (++v21 == v22)
    {

      CVPixelBufferUnlockBaseAddress(v145, 0);
      CVPixelBufferUnlockBaseAddress(v146, 0);

      return v147;
    }
  }

  v3 = 0;
  v8 = v154;
  v143 = *(v26 + 16);
  v144 = v21;
  while (1)
  {
    if (v21 >= v20[2])
    {
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    a1 = *(v8 + 8 * v21);
    if (v3 >= *(a1 + 16))
    {
      goto LABEL_161;
    }

    if (*(a1 + v3 + 32) != 1)
    {
      break;
    }

LABEL_17:
    if (++v3 == v10)
    {
      goto LABEL_142;
    }
  }

  v27 = *(v4 + 8 * v21);
  if (v3 >= *(v27 + 16))
  {
    goto LABEL_162;
  }

  v28 = *(v27 + 8 * v3 + 32);
  if (v28 != 6 && v28 != 31)
  {
    v91 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 8 * v21) = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a1 = sub_257C7DE9C(a1);
      *(v8 + 8 * v21) = a1;
    }

    v22 = v156;
    v26 = v162;
    v93 = &v168;
    v20 = v157;
    if (v3 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_167;
    }

    v25 = v91;
    *(a1 + v3 + 32) = 1;
    goto LABEL_17;
  }

  v30 = v25;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v148 = v3;
  if (v31)
  {
    v32 = v157;
    v33 = v30;
  }

  else
  {
    v33 = sub_257BFD1A8(0, *(v30 + 2) + 1, 1, v30);
    v32 = v157;
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  v4 = v35 + 1;
  v36 = v156;
  v37 = v162;
  if (v35 >= v34 >> 1)
  {
    v132 = sub_257BFD1A8((v34 > 1), v35 + 1, 1, v33);
    v37 = v162;
    v36 = v156;
    v33 = v132;
    v32 = v157;
  }

  *&v163 = 0.0;
  *(v33 + 2) = v4;
  v38 = &v33[16 * v35];
  v39 = v148;
  *(v38 + 4) = v21;
  *(v38 + 5) = v39;
  v40 = *(v37 + 16);
  v41 = -1;
  v42 = NAN;
  v43 = *&v36;
  v44 = MEMORY[0x277D84F90];
  v45 = v164;
  while (2)
  {
    --v4;
    v46 = &v33[16 * v4];
    v10 = *(v46 + 4);
    a1 = *(v46 + 5);
    *(v33 + 2) = v4;
    if (v10 < 0)
    {
      goto LABEL_149;
    }

    if (v10 >= v32[2])
    {
      goto LABEL_150;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_151;
    }

    v3 = *(v8 + 8 * v10);
    if (a1 >= *(v3 + 16))
    {
      goto LABEL_152;
    }

    if ((*(v3 + a1 + 32) & 1) == 0)
    {
      v47 = v44;
      v159 = v43;
      v160 = v42;
      v4 = v41;
      v48 = v33;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 8 * v10) = v3;
      if ((v49 & 1) == 0)
      {
        v3 = sub_257C7DE9C(v3);
        *(v8 + 8 * v10) = v3;
      }

      v8 = v161;
      if (a1 >= *(v3 + 16))
      {
        goto LABEL_153;
      }

      *(v3 + a1 + 32) = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_257C7DE60(v8);
      }

      if (v10 >= *(v8 + 16))
      {
LABEL_154:
        __break(1u);
      }

      else
      {
        v3 = *(v8 + 32 + 8 * v10);
        v50 = swift_isUniquelyReferenced_nonNull_native();
        *(v8 + 32 + 8 * v10) = v3;
        if ((v50 & 1) == 0)
        {
          v3 = sub_257C7DE4C(v3);
          *(v8 + 32 + 8 * v10) = v3;
        }

        if (a1 < *(v3 + 16))
        {
          *(v3 + 8 * a1 + 32) = v155;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_257C7DE88(v45);
          }

          if (v10 < v45[2])
          {
            v51 = v45;
            v52 = v45 + 4;
            v3 = v52[v10];
            v53 = swift_isUniquelyReferenced_nonNull_native();
            v52[v10] = v3;
            if ((v53 & 1) == 0)
            {
              v3 = sub_257C7DE74(v3);
              v52[v10] = v3;
            }

            v54 = v162;
            v32 = v157;
            if (a1 < *(v3 + 16))
            {
              *(v3 + a1 + 32) = -1;
              if (!__OFADD__(v163, 1))
              {
                ++v163;
                v55 = v10 * a1;
                if ((v10 * a1) >> 64 == (v10 * a1) >> 63)
                {
                  v44 = v47;
                  v56 = v152[v55];
                  v57 = *(v153 + 32);
                  v161 = v8;
                  v164 = v51;
                  if (v57 <= v56)
                  {
                    v59 = BaseAddress[v55];
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      v44 = v47;
                    }

                    else
                    {
                      v44 = sub_257BFD06C(0, *(v47 + 2) + 1, 1, v47);
                    }

                    v61 = *(v44 + 2);
                    v60 = *(v44 + 3);
                    v3 = v61 + 1;
                    v58 = v156;
                    v54 = v162;
                    v32 = v157;
                    v42 = v160;
                    v43 = v159;
                    if (v61 >= v60 >> 1)
                    {
                      v44 = sub_257BFD06C((v60 > 1), v61 + 1, 1, v44);
                      v43 = v159;
                      v42 = v160;
                      v41 = v4;
                      v33 = v48;
                      v54 = v162;
                      v58 = v156;
                      v32 = v157;
                    }

                    else
                    {
                      v33 = v48;
                      v41 = v4;
                    }

                    *(v44 + 2) = v3;
                    *&v44[4 * v61 + 32] = v59;
                  }

                  else
                  {
                    v33 = v48;
                    v58 = v156;
                    v41 = v4;
                    v42 = v160;
                    v43 = v159;
                  }

                  v4 = 0;
                  if (v40 >= a1)
                  {
                    v40 = a1;
                  }

                  *&v158 = v40;
                  if (v41 <= a1)
                  {
                    v41 = a1;
                  }

                  if (*&v43 >= v10)
                  {
                    v43 = *&v10;
                  }

                  if (*&v42 <= v10)
                  {
                    v42 = *&v10;
                  }

                  v62 = (v10 - 1);
                  v63 = a1 - 1;
                  v8 = a1 + 1;
                  v64 = __OFADD__(a1, 1);
                  v65 = v151 + 8 * v10;
                  v66 = &v150[v10];
                  while (1)
                  {
                    v10 = &v62[v4];
                    v67 = &v62[v4] >= v58 || a1 == 0;
                    if (!v67 && v63 < *(v54 + 16))
                    {
                      if (v10 >= v32[2])
                      {
                        goto LABEL_146;
                      }

                      v68 = v66[v4];
                      if (v63 >= *(v68 + 16))
                      {
                        goto LABEL_147;
                      }

                      if ((*(v68 + v63 + 32) & 1) == 0)
                      {
                        v69 = *(v65 + 8 * v4);
                        if (v63 >= *(v69 + 16))
                        {
                          goto LABEL_148;
                        }

                        v70 = *(v69 + 8 * v63 + 32);
                        if (v70 == 31 || v70 == 6)
                        {
                          v73 = *(v33 + 2);
                          v72 = *(v33 + 3);
                          v3 = v73 + 1;
                          if (v73 >= v72 >> 1)
                          {
                            v135 = v44;
                            *&v142 = v41;
                            v160 = v42;
                            v159 = v43;
                            v134 = v65;
                            v88 = sub_257BFD1A8((v72 > 1), v73 + 1, 1, v33);
                            v65 = v134;
                            v43 = v159;
                            v42 = v160;
                            v41 = v142;
                            v54 = v162;
                            v58 = v156;
                            v33 = v88;
                            v44 = v135;
                            v32 = v157;
                          }

                          *(v33 + 2) = v3;
                          v74 = &v33[16 * v73];
                          *(v74 + 4) = v10;
                          *(v74 + 5) = v63;
                        }
                      }
                    }

                    if (v10 < v58 && a1 < *(v54 + 16))
                    {
                      if (v10 >= v32[2])
                      {
                        goto LABEL_146;
                      }

                      v75 = v66[v4];
                      if (a1 >= *(v75 + 16))
                      {
                        goto LABEL_147;
                      }

                      if ((*(v75 + a1 + 32) & 1) == 0 && v4 != 1)
                      {
                        v76 = *(v65 + 8 * v4);
                        if (a1 >= *(v76 + 16))
                        {
                          goto LABEL_148;
                        }

                        v77 = *(v76 + 8 * a1 + 32);
                        if (v77 == 31 || v77 == 6)
                        {
                          v80 = *(v33 + 2);
                          v79 = *(v33 + 3);
                          v3 = v80 + 1;
                          if (v80 >= v79 >> 1)
                          {
                            v135 = v44;
                            *&v142 = v41;
                            v160 = v42;
                            v159 = v43;
                            v134 = v65;
                            v89 = sub_257BFD1A8((v79 > 1), v80 + 1, 1, v33);
                            v65 = v134;
                            v43 = v159;
                            v42 = v160;
                            v41 = v142;
                            v54 = v162;
                            v58 = v156;
                            v33 = v89;
                            v44 = v135;
                            v32 = v157;
                          }

                          *(v33 + 2) = v3;
                          v81 = &v33[16 * v80];
                          *(v81 + 4) = v10;
                          *(v81 + 5) = a1;
                        }
                      }
                    }

                    if (v64)
                    {
                      break;
                    }

                    if (v10 < v58 && (v8 & 0x8000000000000000) == 0 && v8 < *(v54 + 16))
                    {
                      if (v10 >= v32[2])
                      {
                        goto LABEL_146;
                      }

                      v82 = v66[v4];
                      if (v8 >= *(v82 + 16))
                      {
                        goto LABEL_147;
                      }

                      if ((*(v82 + v8 + 32) & 1) == 0)
                      {
                        v83 = *(v65 + 8 * v4);
                        if (v8 >= *(v83 + 16))
                        {
                          goto LABEL_148;
                        }

                        v84 = *(v83 + 8 * v8 + 32);
                        if (v84 == 31 || v84 == 6)
                        {
                          v86 = *(v33 + 2);
                          v85 = *(v33 + 3);
                          v3 = v86 + 1;
                          if (v86 >= v85 >> 1)
                          {
                            v135 = v44;
                            *&v142 = v41;
                            v160 = v42;
                            v159 = v43;
                            v134 = v65;
                            v90 = sub_257BFD1A8((v85 > 1), v86 + 1, 1, v33);
                            v65 = v134;
                            v43 = v159;
                            v42 = v160;
                            v41 = v142;
                            v54 = v162;
                            v58 = v156;
                            v33 = v90;
                            v44 = v135;
                            v32 = v157;
                          }

                          *(v33 + 2) = v3;
                          v87 = &v33[16 * v86];
                          *(v87 + 4) = v10;
                          *(v87 + 5) = v8;
                        }
                      }
                    }

                    if (v4 == 2)
                    {
                      v4 = *(v33 + 2);
                      v45 = v164;
                      v8 = v154;
                      v40 = v158;
                      goto LABEL_33;
                    }

                    ++v4;
                    if (__OFADD__(v10, 1))
                    {
                      goto LABEL_145;
                    }
                  }

                  __break(1u);
LABEL_145:
                  __break(1u);
LABEL_146:
                  __break(1u);
LABEL_147:
                  __break(1u);
LABEL_148:
                  __break(1u);
LABEL_149:
                  __break(1u);
LABEL_150:
                  __break(1u);
LABEL_151:
                  __break(1u);
LABEL_152:
                  __break(1u);
LABEL_153:
                  __break(1u);
                  goto LABEL_154;
                }

LABEL_159:
                __break(1u);
                goto LABEL_160;
              }

LABEL_158:
              __break(1u);
              goto LABEL_159;
            }

LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

LABEL_156:
          __break(1u);
          goto LABEL_157;
        }
      }

      __break(1u);
      goto LABEL_156;
    }

LABEL_33:
    if (v4)
    {
      continue;
    }

    break;
  }

  v94 = *&v43;
  v95 = *&v42;
  *&v142 = v41;
  v96 = v40;
  v135 = v33;
  v97 = *(v44 + 2) / v163;
  v164 = v45;
  if (v97 > 0.55)
  {
    *&t1.a = v44;
    v101 = v44;
    swift_bridgeObjectRetain_n();
    v102 = v136;
    sub_257DE891C(&t1);
    v103 = v139;
    v100 = v138;
    v4 = v137;
    v93 = &v164;
    v136 = v102;
    if (v102)
    {
      goto LABEL_169;
    }

    a = t1.a;
    v105 = *(v101 + 2);

    v93 = v105 >> 1;
    if (v105 >> 1 < *(*&a + 16))
    {
      v98 = *(*&a + 4 * v93 + 32);

      v99 = v103;
      goto LABEL_135;
    }
  }

  else
  {

    v98 = 0;
    v99 = v139;
    v100 = v138;
    v4 = v137;
LABEL_135:
    v106 = v96;
    v107 = v96;
    v160 = v95;
    v159 = v142;
    v108 = v97 <= 0.55;
    v109 = (v142 - v106);
    v110 = v23 / *(v162 + 16);
    *&v163 = v24;
    CGAffineTransformMakeScale(&t1, v24, v110);
    tx = t1.tx;
    ty = t1.ty;
    v158 = *&t1.a;
    v142 = *&t1.c;
    CGAffineTransformMakeScale(&t1, 1.0, 1.0);
    v113 = *&t1.a;
    v114 = *&t1.c;
    v115 = *&t1.tx;
    *&t1.a = v158;
    *&t1.c = v142;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v113;
    *&t2.c = v114;
    *&t2.tx = v115;
    CGAffineTransformConcat(&v165, &t1, &t2);
    t1 = v165;
    v169.origin.x = v94;
    v169.origin.y = v107;
    v169.size.width = (v95 - v94);
    v169.size.height = v109;
    v170 = CGRectApplyAffineTransform(v169, &t1);
    x = v170.origin.x;
    y = v170.origin.y;
    width = v170.size.width;
    height = v170.size.height;
    sub_257ECCCE0();
    v120 = v141;
    v121 = (v100 + *(v141 + 20));
    *v121 = v94;
    v121[1] = v107;
    v121[2] = (v95 - v94);
    v121[3] = v109;
    v122 = (v100 + v120[6]);
    *v122 = x;
    v122[1] = y;
    v122[2] = width;
    v122[3] = height;
    v123 = (v100 + v120[7]);
    *v123 = v94;
    v123[1] = v107;
    v124 = (v100 + v120[8]);
    v125 = v159;
    *v124 = v160;
    v124[1] = v125;
    *(v100 + v120[9]) = v155;
    v126 = v100 + v120[10];
    *v126 = v98;
    *(v126 + 4) = v108;
    v127 = v100 + v120[11];
    *(v127 + 96) = 0;
    *(v127 + 64) = 0u;
    *(v127 + 80) = 0u;
    *(v127 + 32) = 0u;
    *(v127 + 48) = 0u;
    *v127 = 0u;
    *(v127 + 16) = 0u;
    *(v100 + v120[12]) = 0;
    sub_257DEED6C(v100, v99);
    v128 = v147;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = sub_257BFD044(0, v128[2] + 1, 1, v128);
    }

    v130 = v128[2];
    v129 = v128[3];
    a1 = v130 + 1;
    v8 = v154;
    v23 = 1.0;
    v24 = *&v163;
    if (v130 >= v129 >> 1)
    {
      v128 = sub_257BFD044(v129 > 1, v130 + 1, 1, v128);
    }

    sub_257DEEDD0(v100);
    v128[2] = a1;
    sub_257DEFC48(v99, v128 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v130);
    v131 = __OFADD__(v155, 1);
    v93 = ++v155;
    if (!v131)
    {
      v147 = v128;
      v22 = v156;
      v26 = v162;
      v20 = v157;
      v21 = v144;
      v25 = v135;
      v10 = v143;
      v3 = v148;
      goto LABEL_17;
    }

LABEL_167:
    __break(1u);
  }

  __break(1u);
LABEL_169:

  __break(1u);
  return result;
}

void sub_257DEA5C0(void *a1, int a2, void *a3, unint64_t a4, void (*a5)(void, void, void, uint64_t), uint64_t a6, double a7, double a8)
{
  v192 = a6;
  v193 = a5;
  v185 = a3;
  v186 = a2;
  imageOut[1] = *MEMORY[0x277D85DE8];
  v191 = sub_257ECDA30();
  *&v196 = *(v191 - 8);
  v12 = MEMORY[0x28223BE20](v191);
  v14 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v159 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v159 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v159 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v159 - v25;
  MEMORY[0x28223BE20](v24);
  v182 = &v159 - v27;
  v28 = type metadata accessor for DetectedDoor(0);
  v194 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v187 = &v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v159 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v159 - v34;
  v190 = a1;
  v36 = [a1 rawSceneUnderstandingData];
  if (!v36)
  {
    sub_257ECD450();
    v61 = sub_257ECDA20();
    v62 = sub_257ECFBD0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_257BAC000, v61, v62, "No scene understanding data", v63, 2u);
      MEMORY[0x259C74820](v63, -1, -1);
    }

    (*(v196 + 8))(v14, v191);
    v193(0, 0, 0, 1);
    return;
  }

  v37 = v36;
  v183 = [v36 semanticSegmentationBufferSampledForDepth];
  if (!v183)
  {
    v64 = v37;
    sub_257ECD450();
    v65 = sub_257ECDA20();
    v66 = sub_257ECFBD0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_257BAC000, v65, v66, "No semantic buffer", v67, 2u);
      MEMORY[0x259C74820](v67, -1, -1);
    }

    (*(v196 + 8))(v17, v191);
    v193(0, 0, 0, 1);

    return;
  }

  v174 = v37;
  v38 = [v37 semanticSegmentationConfidenceBufferSampledForDepth];
  if (!v38)
  {
    sub_257ECD450();
    v68 = sub_257ECDA20();
    v69 = sub_257ECFBD0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_257BAC000, v68, v69, "No semantic confidence buffer", v70, 2u);
      MEMORY[0x259C74820](v70, -1, -1);
    }

    (*(v196 + 8))(v20, v191);
    v193(0, 0, 0, 1);

    v71 = &v201;
    goto LABEL_28;
  }

  v173 = v38;
  v39 = v183;
  Width = CVPixelBufferGetWidth(v183);
  Height = CVPixelBufferGetHeight(v39);
  v169 = Width;
  v170 = Height;
  v42 = v190;
  v43 = [v190 capturedImage];
  *&v195 = CVPixelBufferGetWidth(v43);

  v44 = [v42 capturedImage];
  v189 = COERCE_DOUBLE(CVPixelBufferGetHeight(v44));

  v45 = [v42 sceneDepth];
  if (!v45)
  {
    sub_257ECD450();
    v72 = sub_257ECDA20();
    v73 = sub_257ECFBD0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_257BAC000, v72, v73, "No scene depth", v74, 2u);
      MEMORY[0x259C74820](v74, -1, -1);
    }

    (*(v196 + 8))(v23, v191);
    v193(0, *&v169, *&v170, 0);

    v71 = &v197;
LABEL_28:

    return;
  }

  v46 = v45;
  v47 = [v45 confidenceMap];
  if (v47)
  {
    v171 = a4;
    v48 = v47;
    v49 = sub_257DEE0D0(v39, v173);
    v162 = v46;
    v50 = [v46 depthMap];
    v161 = v48;
    v51 = sub_257DE9550(v49, v50, v48);

    *&v52 = COERCE_DOUBLE(sub_257DEE670(v51));

    v53 = *(v52 + 16);
    v54 = MEMORY[0x277D84F90];
    if (v53)
    {
      v55 = (*(v194 + 80) + 32) & ~*(v194 + 80);
      v56 = v52 + v55;
      v57 = *&v52;
      v58 = *(v194 + 72);
      v188 = v57;

      do
      {
        sub_257DEED6C(v56, v35);
        if (*(v198 + 24) >= *&v35[*(v28 + 20) + 16] * *&v35[*(v28 + 20) + 24])
        {
          sub_257DEEDD0(v35);
        }

        else
        {
          sub_257DEED6C(v35, v33);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_257BFD044(0, v54[2] + 1, 1, v54);
          }

          v60 = v54[2];
          v59 = v54[3];
          if (v60 >= v59 >> 1)
          {
            v54 = sub_257BFD044(v59 > 1, v60 + 1, 1, v54);
          }

          sub_257DEEDD0(v35);
          v54[2] = v60 + 1;
          sub_257DEFC48(v33, v54 + v55 + v60 * v58);
        }

        v56 += v58;
        --v53;
      }

      while (v53);
    }

    *&t1.a = v54;

    sub_257DE8A50(&t1);
    v75 = v183;
    swift_bridgeObjectRelease_n();
    a = t1.a;
    v201 = t1.a;
    imageOut[0] = 0;
    v77 = [v190 capturedImage];
    VTCreateCGImageFromCVPixelBuffer(v77, 0, imageOut);

    if (!imageOut[0])
    {

      v158 = imageOut[0];

      return;
    }

    v79 = *(*&a + 16);
    v80 = 3;
    if (v79 < 3)
    {
      v80 = *(*&a + 16);
    }

    v184 = v80;
    if (!v79)
    {
LABEL_79:
      v193(*&a, *&v169, *&v170, 0);

      v157 = imageOut[0];

      return;
    }

    v172 = 0;
    v81 = 0;
    v82 = v195;
    v83 = *&v189;
    v189 = 1.0 / v169;
    v188 = 1.0 / v170;
    v167 = a7;
    v164 = 1.0 / a7;
    v160 = (v196 + 8);
    *&v78 = 138412290;
    v159 = v78;
    v168 = a8;
    v163 = 1.0 / a8;
    v84 = v187;
    v166 = v195;
    v165 = v83;
    while (1)
    {
      v85 = objc_autoreleasePoolPush();
      if (v81 >= *(*&v201 + 16))
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
      }

      v86 = v85;
      v87 = (*(v194 + 80) + 32) & ~*(v194 + 80);
      v88 = *(v194 + 72) * v81;
      sub_257DEED6C(*&v201 + v87 + v88, v84);
      v89 = (v84 + *(v28 + 20));
      v90 = *v89;
      v91 = v89[1];
      v92 = v89[2];
      v93 = v89[3];
      CGAffineTransformMakeScale(&t1, v189, v188);
      tx = t1.tx;
      ty = t1.ty;
      v196 = *&t1.a;
      v195 = *&t1.c;
      CGAffineTransformMakeScale(&t1, v82, v83);
      v96 = *&t1.a;
      v97 = *&t1.c;
      v98 = *&t1.tx;
      *&t1.a = v196;
      *&t1.c = v195;
      t1.tx = tx;
      t1.ty = ty;
      *&t2.a = v96;
      *&t2.c = v97;
      *&t2.tx = v98;
      CGAffineTransformConcat(&v199, &t1, &t2);
      t1 = v199;
      v204.origin.x = v90;
      v204.origin.y = v91;
      *&v196 = v92;
      v204.size.width = v92;
      *&v195 = v93;
      v204.size.height = v93;
      v205 = CGRectApplyAffineTransform(v204, &t1);
      if (!imageOut[0])
      {
        goto LABEL_83;
      }

      v99 = CGImageCreateWithImageInRect(imageOut[0], v205);
      if (v99)
      {
        v100 = v99;
        sub_257DEBB04(256.0, 256.0);
        if (!v101)
        {
          sub_257DEEDD0(v84);

          goto LABEL_38;
        }

        v181 = v101;
        if ((v186 & 1) == 0)
        {
          goto LABEL_52;
        }

        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v102 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
        swift_beginAccess();
        v103 = *(v102 + 8);
        v104 = *(v102 + 16);
        t1.a = *v102;
        t1.b = v103;
        LOBYTE(t1.c) = v104;
        v105 = qword_2815447E0;

        if (v105 != -1)
        {
          v106 = swift_once();
        }

        MEMORY[0x28223BE20](v106);
        v107 = v172;
        sub_257ECFD50();
        v172 = v107;

        if (LOBYTE(t2.a) == 1)
        {
          v108 = objc_opt_self();
          t1.a = 0.0;
          v109 = v181;
          v110 = [v108 featureValueWithCGImage:v109 orientation:6 pixelsWide:256 pixelsHigh:256 pixelFormatType:32 options:0 error:&t1];
          if (!v110)
          {
            v142 = *&t1.a;
            v143 = sub_257ECC9F0();

            swift_willThrow();
            sub_257ECD450();
            v144 = v143;
            v145 = sub_257ECDA20();
            v146 = sub_257ECFBD0();

            if (os_log_type_enabled(v145, v146))
            {
              v147 = swift_slowAlloc();
              v148 = v109;
              v149 = swift_slowAlloc();
              *v147 = v159;
              v150 = v143;
              v151 = _swift_stdlib_bridgeErrorToNSError();
              *(v147 + 4) = v151;
              *v149 = v151;
              _os_log_impl(&dword_257BAC000, v145, v146, "%@", v147, 0xCu);
              sub_257BE4084(v149, &unk_27F8F5490);
              v152 = v149;
              v109 = v148;
              MEMORY[0x259C74820](v152, -1, -1);
              MEMORY[0x259C74820](v147, -1, -1);
            }

            (*v160)(v182, v191);
            v84 = v187;
            sub_257DEEDD0(v187);
            v172 = 0;
            goto LABEL_38;
          }

          v111 = v110;
          v112 = *&t1.a;

          v113 = [v111 imageBufferValue];
          v114 = v168;
          v115 = v167;
          if (!v113)
          {
            __break(1u);

            __break(1u);
            return;
          }

          sub_257D79228(v113, *(v198 + 72), &v201, v81);
        }

        else
        {
LABEL_52:
          v114 = v168;
          v115 = v167;
        }

        CGAffineTransformMakeScale(&t1, v189, v188);
        v116 = t1.tx;
        v117 = t1.ty;
        v180 = *&t1.a;
        v179 = *&t1.c;
        [v190 displayTransformForOrientation:1 viewportSize:{v115, v114}];
        v118 = t1.tx;
        v119 = t1.ty;
        v176 = *&t1.a;
        v175 = *&t1.c;
        CGAffineTransformMakeScale(&t1, v115, v114);
        v120 = t1.tx;
        v121 = t1.ty;
        v178 = *&t1.a;
        v177 = *&t1.c;
        *&t1.a = v180;
        *&t1.c = v179;
        t1.tx = v116;
        t1.ty = v117;
        *&t2.c = v175;
        *&t2.a = v176;
        t2.tx = v118;
        t2.ty = v119;
        CGAffineTransformConcat(&v199, &t1, &t2);
        t1 = v199;
        *&t2.c = v177;
        *&t2.a = v178;
        t2.tx = v120;
        t2.ty = v121;
        CGAffineTransformConcat(&v199, &t1, &t2);
        t1 = v199;
        v206.origin.x = v90;
        v206.origin.y = v91;
        *&v206.size.width = v196;
        *&v206.size.height = v195;
        v207 = CGRectApplyAffineTransform(v206, &t1);
        x = v207.origin.x;
        y = v207.origin.y;
        v124 = v207.size.width;
        v125 = v207.size.height;
        CGAffineTransformMakeScale(&t1, v164, v163);
        v126 = *&t1.tx;
        v196 = *&t1.a;
        v195 = *&t1.c;
        CGAffineTransformMakeScale(&t1, 1.0, 1.0);
        v127 = *&t1.a;
        v128 = *&t1.c;
        v129 = *&t1.tx;
        *&t1.a = v196;
        *&t1.c = v195;
        *&t1.tx = v126;
        *&t2.a = v127;
        *&t2.c = v128;
        *&t2.tx = v129;
        CGAffineTransformConcat(&v199, &t1, &t2);
        t1 = v199;
        v208.origin.x = x;
        v208.origin.y = y;
        v208.size.width = v124;
        v208.size.height = v125;
        v209 = CGRectApplyAffineTransform(v208, &t1);
        v130 = v209.origin.x;
        v131 = v209.origin.y;
        v132 = v209.size.width;
        v133 = v209.size.height;
        if (v185)
        {
          v134 = v185;
          v135 = sub_257DEEE2C(v134, v130, v131, v132, v133);
        }

        else
        {
          v135 = 0;
        }

        v82 = v166;
        v83 = v165;
        if (v171)
        {
          v136 = sub_257DEF500(v171, v130, v131, v132, v133);
        }

        else
        {
          v136 = 0;
        }

        v137 = v201;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = COERCE_DOUBLE(sub_257C7DEC4(*&v137));
        }

        if (v81 >= *(*&v137 + 16))
        {
          goto LABEL_82;
        }

        *(*&v137 + v87 + v88 + *(v28 + 48)) = MEMORY[0x277D84F90];

        v201 = v137;
        if (v135)
        {
          v138 = sub_257DE8828(&t1, v81);
          if (*(v139 + *(v28 + 48)))
          {
            sub_257EB0640(v135);
          }

          else
          {
          }

          v138(&t1, 0);
        }

        if (!v136)
        {
          v84 = v187;
          sub_257DEEDD0(v187);

          goto LABEL_38;
        }

        v140 = sub_257DE8828(&t1, v81);
        if (*(v141 + *(v28 + 48)))
        {
          sub_257EB0640(v136);
        }

        else
        {
        }

        v140(&t1, 0);

        v84 = v187;
      }

      sub_257DEEDD0(v84);
LABEL_38:
      ++v81;
      objc_autoreleasePoolPop(v86);
      if (v184 == v81)
      {
        a = v201;
        v75 = v183;
        goto LABEL_79;
      }
    }
  }

  v153 = v46;
  sub_257ECD450();
  v154 = sub_257ECDA20();
  v155 = sub_257ECFBD0();
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    *v156 = 0;
    _os_log_impl(&dword_257BAC000, v154, v155, "No scene depth confidence", v156, 2u);
    MEMORY[0x259C74820](v156, -1, -1);
  }

  (*(v196 + 8))(v26, v191);
  v193(0, *&v169, *&v170, 0);
}

void sub_257DEBB04(double a1, double a2)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(v2);
  v6 = CGImageGetColorSpace(v2);
  if (!v6)
  {
    v6 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  v7 = v6;
  BitmapInfo = CGImageGetBitmapInfo(v2);
  v9 = __CGBitmapContextCreate(a1, a2, BitsPerComponent, v7, BitmapInfo);

  if (v9)
  {
    CGContextSetInterpolationQuality(v9, kCGInterpolationLow);
    v10 = v9;
    sub_257ECFB70();

    CGBitmapContextCreateImage(v10);
  }
}

uint64_t sub_257DEBC88()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257DEBCC8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_257ED05F0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DetectedDoor(0);
        v6 = sub_257ECF850();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for DetectedDoor(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_257DEC580(v8, v9, a1, v4);
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
    return sub_257DEBDF4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_257DEBDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for DetectedDoor(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v31 - v17;
  v33 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v32 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v36 = v21;
    v37 = a3;
    v34 = v24;
    v35 = v23;
    v25 = v23;
    while (1)
    {
      sub_257DEED6C(v24, v18);
      sub_257DEED6C(v21, v14);
      v26 = *(v8 + 40);
      if (v18[v26 + 4])
      {
        v27 = 3.4028e38;
      }

      else
      {
        v27 = *&v18[v26];
      }

      v28 = &v14[v26];
      if (v28[4])
      {
        v29 = 3.4028e38;
      }

      else
      {
        v29 = *v28;
      }

      sub_257DEEDD0(v14);
      result = sub_257DEEDD0(v18);
      if (v27 >= v29)
      {
LABEL_4:
        a3 = v37 + 1;
        v21 = v36 + v32;
        v23 = v35 - 1;
        v24 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_257DEFC48(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_257DEFC48(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_257DEC024(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_257C66E20(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_257DECF48((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_257BFCB00(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_257BFCB00((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_257DECF48((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_257DEC580(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v126 = a1;
  v8 = type metadata accessor for DetectedDoor(0);
  v136 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v129 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v140 = &v121 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v121 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v121 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v135 = &v121 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v134 = &v121 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v123 = &v121 - v24;
  result = MEMORY[0x28223BE20](v23);
  v122 = &v121 - v26;
  v138 = a3;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_116:
    a4 = *v126;
    if (!*v126)
    {
      goto LABEL_155;
    }

    a3 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_149:
      result = sub_257C66E20(a3);
    }

    v142 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v138)
      {
        v117 = *(result + 16 * a3);
        v118 = result;
        v119 = *(result + 16 * (a3 - 1) + 40);
        sub_257DED13C(*v138 + *(v136 + 72) * v117, *v138 + *(v136 + 72) * *(result + 16 * (a3 - 1) + 32), *v138 + *(v136 + 72) * v119, a4);
        if (v5)
        {
        }

        if (v119 < v117)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_257C66E20(v118);
        }

        if (a3 - 2 >= *(v118 + 2))
        {
          goto LABEL_143;
        }

        v120 = &v118[16 * a3];
        *v120 = v117;
        *(v120 + 1) = v119;
        v142 = v118;
        sub_257C66D94(a3 - 1);
        result = v142;
        a3 = *(v142 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_153;
    }
  }

  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v125 = a4;
  v141 = v8;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v130 = v29;
    if (v31 >= v27)
    {
      v50 = v31;
    }

    else
    {
      v139 = v27;
      v124 = v5;
      a3 = *v138;
      v32 = *(v136 + 72);
      v33 = *v138 + v32 * v31;
      v34 = v122;
      sub_257DEED6C(v33, v122);
      v35 = a3 + v32 * v30;
      v127 = v30;
      v36 = v123;
      sub_257DEED6C(v35, v123);
      v37 = v8;
      v38 = *(v8 + 40);
      v39 = *(v34 + v38 + 4) ? 3.4028e38 : *(v34 + v38);
      v40 = v36 + v38;
      v41 = *(v40 + 4) ? 3.4028e38 : *v40;
      sub_257DEEDD0(v36);
      result = sub_257DEEDD0(v34);
      v42 = v127 + 2;
      v137 = v32;
      v43 = a3 + v32 * (v127 + 2);
      while (v139 != v42)
      {
        a3 = v39 < v41;
        v44 = v134;
        sub_257DEED6C(v43, v134);
        v45 = v135;
        sub_257DEED6C(v33, v135);
        v46 = *(v37 + 40);
        if (*(v44 + v46 + 4))
        {
          v47 = 3.4028e38;
        }

        else
        {
          v47 = *(v44 + v46);
        }

        v48 = v45 + v46;
        if (*(v48 + 4))
        {
          v49 = 3.4028e38;
        }

        else
        {
          v49 = *v48;
        }

        sub_257DEEDD0(v45);
        result = sub_257DEEDD0(v44);
        ++v42;
        v43 += v137;
        v33 += v137;
        if (v39 < v41 == v47 >= v49)
        {
          v50 = v42 - 1;
          goto LABEL_23;
        }
      }

      v50 = v139;
LABEL_23:
      v8 = v37;
      v30 = v127;
      a4 = v125;
      if (v39 >= v41)
      {
        v5 = v124;
      }

      else
      {
        v5 = v124;
        if (v50 < v127)
        {
          goto LABEL_146;
        }

        if (v127 < v50)
        {
          v51 = v137 * (v50 - 1);
          v52 = v50;
          v53 = v50 * v137;
          v139 = v50;
          v54 = v127;
          v55 = v127 * v137;
          do
          {
            if (v54 != --v52)
            {
              a3 = *v138;
              if (!*v138)
              {
                goto LABEL_152;
              }

              sub_257DEFC48(a3 + v55, v129);
              if (v55 < v51 || a3 + v55 >= a3 + v53)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v51)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_257DEFC48(v129, a3 + v51);
            }

            ++v54;
            v51 -= v137;
            v53 -= v137;
            v55 += v137;
          }

          while (v54 < v52);
          v5 = v124;
          a4 = v125;
          v8 = v141;
          v30 = v127;
          v50 = v139;
        }
      }
    }

    v56 = v138[1];
    if (v50 < v56)
    {
      if (__OFSUB__(v50, v30))
      {
        goto LABEL_145;
      }

      if (v50 - v30 < a4)
      {
        if (__OFADD__(v30, a4))
        {
          goto LABEL_147;
        }

        if (v30 + a4 >= v56)
        {
          v57 = v138[1];
        }

        else
        {
          v57 = v30 + a4;
        }

        if (v57 < v30)
        {
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (v50 != v57)
        {
          break;
        }
      }
    }

    v58 = v50;
    if (v50 < v30)
    {
      goto LABEL_144;
    }

LABEL_48:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v29 = v130;
    }

    else
    {
      result = sub_257BFCB00(0, *(v130 + 2) + 1, 1, v130);
      v29 = result;
    }

    a3 = *(v29 + 2);
    v59 = *(v29 + 3);
    v60 = a3 + 1;
    if (a3 >= v59 >> 1)
    {
      result = sub_257BFCB00((v59 > 1), a3 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 2) = v60;
    v61 = &v29[16 * a3];
    *(v61 + 4) = v30;
    *(v61 + 5) = v58;
    a4 = *v126;
    if (!*v126)
    {
      goto LABEL_154;
    }

    v131 = v58;
    if (a3)
    {
      while (1)
      {
        v62 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v63 = *(v29 + 4);
          v64 = *(v29 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_67:
          if (v66)
          {
            goto LABEL_133;
          }

          v79 = &v29[16 * v60];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_136;
          }

          v85 = &v29[16 * v62 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_140;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v60 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v89 = &v29[16 * v60];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_81:
        if (v84)
        {
          goto LABEL_135;
        }

        v92 = &v29[16 * v62];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_138;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_88:
        a3 = v62 - 1;
        if (v62 - 1 >= v60)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v138)
        {
          goto LABEL_151;
        }

        v100 = v29;
        v101 = *&v29[16 * a3 + 32];
        v102 = *&v29[16 * v62 + 40];
        sub_257DED13C(*v138 + *(v136 + 72) * v101, *v138 + *(v136 + 72) * *&v29[16 * v62 + 32], *v138 + *(v136 + 72) * v102, a4);
        if (v5)
        {
        }

        if (v102 < v101)
        {
          goto LABEL_129;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v103 = v100;
        }

        else
        {
          v103 = sub_257C66E20(v100);
        }

        v8 = v141;
        if (a3 >= *(v103 + 2))
        {
          goto LABEL_130;
        }

        v104 = &v103[16 * a3];
        *(v104 + 4) = v101;
        *(v104 + 5) = v102;
        v142 = v103;
        result = sub_257C66D94(v62);
        v29 = v142;
        v60 = *(v142 + 16);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v29[16 * v60 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_131;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_132;
      }

      v74 = &v29[16 * v60];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_134;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_137;
      }

      if (v78 >= v70)
      {
        v96 = &v29[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_141;
        }

        if (v65 < v99)
        {
          v62 = v60 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

LABEL_3:
    v27 = v138[1];
    v28 = v131;
    a4 = v125;
    if (v131 >= v27)
    {
      goto LABEL_116;
    }
  }

  v124 = v5;
  a3 = *v138;
  v105 = *(v136 + 72);
  v106 = *v138 + v105 * (v50 - 1);
  v107 = v30;
  v108 = -v105;
  v127 = v107;
  v128 = v105;
  v109 = v107 - v50;
  a4 = a3 + v50 * v105;
  v131 = v57;
LABEL_100:
  v139 = v50;
  v132 = a4;
  v133 = v109;
  v137 = v106;
  v110 = v141;
  while (1)
  {
    sub_257DEED6C(a4, v18);
    sub_257DEED6C(v106, v15);
    v111 = *(v110 + 40);
    if (v18[v111 + 4])
    {
      v112 = 3.4028e38;
    }

    else
    {
      v112 = *&v18[v111];
    }

    v113 = &v15[v111];
    if (v113[4])
    {
      v114 = 3.4028e38;
    }

    else
    {
      v114 = *v113;
    }

    sub_257DEEDD0(v15);
    result = sub_257DEEDD0(v18);
    if (v112 >= v114)
    {
LABEL_99:
      v50 = v139 + 1;
      v106 = v137 + v128;
      v109 = v133 - 1;
      a4 = v132 + v128;
      v58 = v131;
      if (v139 + 1 != v131)
      {
        goto LABEL_100;
      }

      v5 = v124;
      v8 = v141;
      v30 = v127;
      if (v131 < v127)
      {
        goto LABEL_144;
      }

      goto LABEL_48;
    }

    if (!a3)
    {
      break;
    }

    v115 = v140;
    sub_257DEFC48(a4, v140);
    v110 = v141;
    swift_arrayInitWithTakeFrontToBack();
    sub_257DEFC48(v115, v106);
    v106 += v108;
    a4 += v108;
    if (__CFADD__(v109++, 1))
    {
      goto LABEL_99;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_257DECF48(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_257DED13C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for DetectedDoor(0);
  v8 = MEMORY[0x28223BE20](v51);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v44 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v44 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_72;
  }

  v21 = (a2 - a1) / v19;
  v53 = a4;
  v54 = a1;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v23;
    if (v23 >= 1)
    {
      v31 = -v19;
      v32 = a4 + v23;
      v48 = v31;
      while (2)
      {
        while (1)
        {
          v45 = v30;
          v33 = a2 + v31;
          v47 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v54 = a2;
              v52 = v45;
              goto LABEL_69;
            }

            v34 = a3;
            v46 = v30;
            v36 = v48;
            v35 = v49;
            v37 = v32 + v48;
            sub_257DEED6C(v32 + v48, v49);
            a2 = v33;
            v38 = v33;
            v39 = v50;
            sub_257DEED6C(v38, v50);
            v40 = *(v51 + 40);
            v41 = *(v35 + v40 + 4) ? 3.4028e38 : *(v35 + v40);
            v42 = v39 + v40;
            v43 = *(v42 + 4) ? 3.4028e38 : *v42;
            a3 = v34 + v36;
            sub_257DEEDD0(v39);
            sub_257DEEDD0(v35);
            if (v41 < v43)
            {
              break;
            }

            v30 = v37;
            if (v34 < v32 || a3 >= v32)
            {
              swift_arrayInitWithTakeFrontToBack();
              v33 = a2;
            }

            else
            {
              v33 = a2;
              if (v34 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v32 = v37;
            a2 = v47;
            if (v37 <= a4)
            {
              goto LABEL_67;
            }
          }

          if (v34 < v47 || a3 >= v47)
          {
            break;
          }

          v30 = v46;
          v31 = v48;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v32 <= a4)
          {
            goto LABEL_67;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v30 = v46;
        v31 = v48;
        if (v32 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_67:
    v54 = a2;
    v52 = v30;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v22;
    v52 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      do
      {
        sub_257DEED6C(a2, v17);
        sub_257DEED6C(a4, v14);
        v26 = *(v51 + 40);
        if (v17[v26 + 4])
        {
          v27 = 3.4028e38;
        }

        else
        {
          v27 = *&v17[v26];
        }

        v28 = &v14[v26];
        if (v28[4])
        {
          v29 = 3.4028e38;
        }

        else
        {
          v29 = *v28;
        }

        sub_257DEEDD0(v14);
        sub_257DEEDD0(v17);
        if (v27 >= v29)
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = a4 + v19;
          a4 += v19;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        a1 += v19;
        v54 = a1;
      }

      while (a4 < v24 && a2 < a3);
    }
  }

LABEL_69:
  sub_257C761B4(&v54, &v53, &v52);
  return 1;
}

uint64_t _s16MagnifierSupport12DetectedDoorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedDoor(0);
  if (!CGRectEqualToRect(*(a1 + v4[5]), *(a2 + v4[5])) || !CGRectEqualToRect(*(a1 + v4[6]), *(a2 + v4[6])))
  {
    goto LABEL_26;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    goto LABEL_26;
  }

  v10 = v4[8];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    goto LABEL_26;
  }

  v15 = v4[10];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_26;
    }
  }

  v20 = a1 + v4[11];
  v21 = *(v20 + 80);
  v66[4] = *(v20 + 64);
  v67 = v21;
  v68 = *(v20 + 96);
  v22 = *(v20 + 48);
  v66[2] = *(v20 + 32);
  v66[3] = v22;
  v23 = *(v20 + 16);
  v66[0] = *v20;
  v66[1] = v23;
  v24 = a2 + v4[11];
  v25 = *(v24 + 80);
  v69[4] = *(v24 + 64);
  v69[5] = v25;
  v70 = *(v24 + 96);
  v26 = *(v24 + 48);
  v69[2] = *(v24 + 32);
  v69[3] = v26;
  v27 = *(v24 + 16);
  v69[0] = *v24;
  v69[1] = v27;
  v28 = *&v66[0];
  v29 = *(&v67 + 1);
  if (*&v66[0])
  {
    if (*&v69[0])
    {
      v44 = *&v69[0];
      v30 = *(v24 + 88);
      v31 = *(v24 + 56);
      v47 = *(v24 + 40);
      v48 = v31;
      v49 = *(v24 + 72);
      v50 = v30;
      v32 = *(v24 + 24);
      v45 = *(v24 + 8);
      v46 = v32;
      v33 = v30;
      v43 = v68;
      sub_257BE401C(v66, &v51, &qword_27F8F8B60);
      sub_257BE401C(v69, &v51, &qword_27F8F8B60);
      LOBYTE(v33) = sub_257D77B94(v29, v33);
      sub_257BE4084(&v44, &qword_27F8F8B60);
      v51 = v28;
      v53 = *(v20 + 24);
      v54 = *(v20 + 40);
      v55 = *(v20 + 56);
      v56 = *(v20 + 72);
      v52 = *(v20 + 8);
      v57 = v29;
      v58 = v43;
      sub_257BE4084(&v51, &qword_27F8F8B60);
      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

LABEL_25:
    v51 = *&v66[0];
    v53 = *(v20 + 24);
    v54 = *(v20 + 40);
    v55 = *(v20 + 56);
    v56 = *(v20 + 72);
    v52 = *(v20 + 8);
    v57 = *(&v67 + 1);
    v58 = v68;
    v59 = *&v69[0];
    v34 = *(v24 + 24);
    v60 = *(v24 + 8);
    v61 = v34;
    v35 = *(v24 + 40);
    v36 = *(v24 + 56);
    v37 = *(v24 + 88);
    v64 = *(v24 + 72);
    v65 = v37;
    v62 = v35;
    v63 = v36;
    sub_257BE401C(v66, &v44, &qword_27F8F8B60);
    sub_257BE401C(v69, &v44, &qword_27F8F8B60);
    sub_257BE4084(&v51, &qword_27F8F9968);
    goto LABEL_26;
  }

  if (*&v69[0])
  {
    goto LABEL_25;
  }

  v51 = 0;
  v53 = *(v20 + 24);
  v54 = *(v20 + 40);
  v55 = *(v20 + 56);
  v56 = *(v20 + 72);
  v52 = *(v20 + 8);
  v57 = *(&v67 + 1);
  v58 = v68;
  sub_257BE401C(v66, &v44, &qword_27F8F8B60);
  sub_257BE401C(v69, &v44, &qword_27F8F8B60);
  sub_257BE4084(&v51, &qword_27F8F8B60);
LABEL_29:
  v40 = v4[12];
  v41 = *(a1 + v40);
  v42 = *(a2 + v40);
  if (v41)
  {
    if (v42)
    {

      v38 = sub_257D564BC(v41, v42);

      return v38 & 1;
    }
  }

  else if (!v42)
  {
    v38 = 1;
    return v38 & 1;
  }

LABEL_26:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_257DEDA74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_257DEDB2C()
{
  sub_257ECCCF0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v2 <= 0x3F)
      {
        sub_257DEDC6C(319, &qword_27F8F9928);
        if (v3 <= 0x3F)
        {
          sub_257DEDC6C(319, &qword_27F8F9930);
          if (v4 <= 0x3F)
          {
            sub_257DEDE14(319, &qword_27F8F9938, &qword_27F8F9940, &unk_257EEA860, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_257DEDC6C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_257ED00C0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_257DEDD24()
{
  sub_257BFEB74();
  if (v0 <= 0x3F)
  {
    sub_257DEDE14(319, &qword_27F8F9958, &qword_27F8F6E08, &unk_257EDF418, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_257ECCC80();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGRect(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_257DEDE14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_257DEDE9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_257DEDEF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_257DEDF6C(uint64_t a1)
{
  result = sub_257DEDF94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_257DEDF94()
{
  result = qword_27F8F9960;
  if (!qword_27F8F9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9960);
  }

  return result;
}

uint64_t sub_257DEDFE8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 49) != *(a2 + 49))
  {
    goto LABEL_2;
  }

  v2 = *a2;
  if (*a1)
  {
    if (!v2)
    {
      return v2 & 1;
    }

    v4 = a1;
    v5 = a2;
    v6 = sub_257D55200(*a1, *a2);
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (v2)
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 50);
  v9 = *(a2 + 50);
  if (v8 == 4)
  {
    if (v9 == 4)
    {
      goto LABEL_13;
    }
  }

  else if (v8 == v9)
  {
LABEL_13:
    v10 = a1;
    v11 = a2;
    if (CGRectEqualToRect(*(a1 + 8), *(a2 + 8)) && *(v10 + 56) == *(v11 + 56) && *(v10 + 40) == *(v11 + 40))
    {
      LOBYTE(v2) = *(v10 + 48) ^ *(v11 + 48) ^ 1;
      return v2 & 1;
    }
  }

LABEL_2:
  LOBYTE(v2) = 0;
  return v2 & 1;
}

size_t sub_257DEE0D0(__CVBuffer *a1, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetHeight(a1);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v6 = result;
  if (result)
  {
    v7 = sub_257ECF850();
    *(v7 + 16) = v6;
    memset((v7 + 32), 255, 8 * v6);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = sub_257DEE30C(v7, Width, &unk_27F8F4D80);

  if (CVPixelBufferGetPixelFormatType(a2) != 1278226534)
  {
    return v8;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (!BaseAddressOfPlane)
  {
    return v8;
  }

  v10 = BaseAddressOfPlane;
  pixelBuffer = a1;
  CVPixelBufferLockBaseAddress(a2, 0);
  v20 = a2;
  result = CVPixelBufferGetBaseAddress(a2);
  if (!v6)
  {
LABEL_26:
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    CVPixelBufferUnlockBaseAddress(v20, 1uLL);
    return v8;
  }

  v21 = v6;
  if ((Width & 0x8000000000000000) == 0)
  {
    v11 = result;
    v12 = 0;
    while (!__OFADD__(v12, 1))
    {
      v22 = v12 + 1;
      if (Width)
      {
        v13 = v12 * Width;
        if ((v12 * Width) >> 64 != (v12 * Width) >> 63)
        {
          goto LABEL_32;
        }

        v14 = 0;
        while (1)
        {
          v15 = v13 + v14;
          if (__OFADD__(v13, v14))
          {
            break;
          }

          if (*(v11 + 4 * v15) >= 0.5)
          {
            v16 = v10[v15];
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_257C7DE60(v8);
              v8 = result;
            }

            if (v14 >= v8[2])
            {
              goto LABEL_29;
            }

            v17 = &v8[v14];
            v18 = v17[4];
            result = swift_isUniquelyReferenced_nonNull_native();
            v17[4] = v18;
            if ((result & 1) == 0)
            {
              result = sub_257C7DE4C(v18);
              v18 = result;
              v17[4] = result;
            }

            if (v12 >= *(v18 + 16))
            {
              goto LABEL_30;
            }

            *(v18 + 8 * v12 + 32) = v16;
          }

          if (Width == ++v14)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        break;
      }

LABEL_10:
      ++v12;
      if (v22 == v21)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_257DEE30C(uint64_t result, uint64_t a2, uint64_t *a3)
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

    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v5 = sub_257ECF850();
    v6 = v5;
    *(v5 + 16) = a2;
    *(v5 + 32) = v4;
    v7 = a2 - 1;
    if (v7)
    {
      v8 = (v5 + 40);
      do
      {
        *v8++ = v4;

        --v7;
      }

      while (v7);
    }

    return v6;
  }

  return result;
}

uint64_t sub_257DEE3A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F50);
  v27 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v24 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = (&v24 - v10);
  v29 = *(a1 + 16);
  if (!v29)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = 0;
  v13 = *(type metadata accessor for DetectedDoor(0) - 8);
  v28 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v14 = *(v13 + 72);
  v15 = MEMORY[0x277D84F90];
  v25 = v4;
  v26 = a2;
  do
  {
    v18 = v28 + v14 * v12;
    *v9 = v12++;
    sub_257DEED6C(v18, v9 + *(v4 + 48));
    sub_257C0DD14(v9, v11, &qword_27F8F5F50);
    v19 = *(*a2 + 16);
    v20 = (*a2 + 32);
    while (v19)
    {
      v21 = *v20++;
      --v19;
      if (v21 == *v11)
      {
        sub_257BE4084(v11, &qword_27F8F5F50);
        goto LABEL_6;
      }
    }

    sub_257C0DD14(v11, v30, &qword_27F8F5F50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_257BF27E4(0, *(v15 + 16) + 1, 1);
      v15 = v31;
    }

    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_257BF27E4(v16 > 1, v17 + 1, 1);
      v15 = v31;
    }

    *(v15 + 16) = v17 + 1;
    sub_257C0DD14(v30, v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v17, &qword_27F8F5F50);
    v4 = v25;
    a2 = v26;
LABEL_6:
    ;
  }

  while (v12 != v29);
  return v15;
}

uint64_t sub_257DEE670(uint64_t a1)
{
  v71 = type metadata accessor for DetectedDoor(0);
  v74 = *(v71 - 8);
  v2 = MEMORY[0x28223BE20](v71);
  v64 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v63 - v5;
  MEMORY[0x28223BE20](v4);
  v75 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F50);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = (&v63 - v12);
  v13 = &qword_27F8F5F40;
  v14 = &unk_257EDC140;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F40);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v63 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v68 = &v63 - v23;
  MEMORY[0x28223BE20](v22);
  v67 = (&v63 - v24);
  v25 = MEMORY[0x277D84F90];
  v82 = MEMORY[0x277D84F90];
  v26 = *(a1 + 16);
  v63 = v9;
  v79 = (v9 + 48);
  v80 = (v9 + 56);
  v72 = a1;

  v28 = 0;
  v69 = v25;
LABEL_3:
  if (v28 == v26)
  {
    v29 = 1;
    v70 = v26;
    v30 = v68;
  }

  else
  {
    if (v28 >= v26)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
LABEL_36:
      __break(1u);
      return result;
    }

    v32 = v73;
    v33 = v72 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v28;
    v34 = *(v8 + 48);
    *v73 = v28;
    sub_257DEED6C(v33, v32 + v34);
    v35 = v32;
    v30 = v68;
    sub_257C0DD14(v35, v68, &qword_27F8F5F50);
    v29 = 0;
    v70 = v31;
  }

  v78 = *v80;
  v78(v30, v29, 1, v8);
  v36 = v67;
  sub_257C0DD14(v30, v67, v13);
  v77 = *v79;
  if (v77(v36, 1, v8) != 1)
  {
    v76 = *v36;
    result = sub_257DEFC48(v36 + *(v8 + 48), v75);
    v37 = 0;
    v38 = v26 == 0;
    if (!v26)
    {
LABEL_12:
      v39 = 1;
      v37 = v26;
      goto LABEL_16;
    }

    while (!v38)
    {
      if (__OFADD__(v37, 1))
      {
        goto LABEL_34;
      }

      v40 = v72 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v37;
      v41 = *(v8 + 48);
      v42 = v14;
      v43 = v13;
      v44 = v73;
      *v73 = v37;
      sub_257DEED6C(v40, v44 + v41);
      v45 = v44;
      v13 = v43;
      v14 = v42;
      sub_257C0DD14(v45, v18, &qword_27F8F5F50);
      v39 = 0;
      ++v37;
LABEL_16:
      v78(v18, v39, 1, v8);
      sub_257C0DD14(v18, v21, v13);
      if (v77(v21, 1, v8) == 1)
      {
        result = sub_257DEEDD0(v75);
        v28 = v70;
        goto LABEL_3;
      }

      v46 = *v21;
      sub_257DEFC48(v21 + *(v8 + 48), v6);
      if (v76 == v46 || !CGRectContainsRect(*(v75 + *(v71 + 20)), *&v6[*(v71 + 20)]))
      {
        result = sub_257DEEDD0(v6);
        v38 = v37 >= v26;
        if (v37 == v26)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_257BFCF1C(0, *(v69 + 2) + 1, 1, v69);
        }

        v48 = *(v69 + 2);
        v47 = *(v69 + 3);
        v66 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v69 = sub_257BFCF1C((v47 > 1), v48 + 1, 1, v69);
        }

        result = sub_257DEEDD0(v6);
        v49 = v69;
        *(v69 + 2) = v66;
        *&v49[8 * v48 + 32] = v46;
        v82 = v49;
        v38 = v37 >= v26;
        if (v37 == v26)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v51 = sub_257DEE3A0(v50, &v82);

  v52 = *(v51 + 16);
  if (v52)
  {
    v81 = MEMORY[0x277D84F90];
    sub_257BF27C4(0, v52, 0);
    v53 = v81;
    v54 = *(v63 + 80);
    v80 = v51;
    v55 = v51 + ((v54 + 32) & ~v54);
    v56 = *(v63 + 72);
    v57 = v64;
    do
    {
      v58 = v73;
      sub_257BE401C(v55, v73, &qword_27F8F5F50);
      v59 = v58;
      v60 = v65;
      sub_257C0DD14(v59, v65, &qword_27F8F5F50);
      sub_257DEFC48(v60 + *(v8 + 48), v57);
      v81 = v53;
      v62 = *(v53 + 16);
      v61 = *(v53 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_257BF27C4(v61 > 1, v62 + 1, 1);
        v53 = v81;
      }

      *(v53 + 16) = v62 + 1;
      sub_257DEFC48(v57, v53 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v62);
      v55 += v56;
      --v52;
    }

    while (v52);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v53;
}

uint64_t sub_257DEED6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedDoor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257DEEDD0(uint64_t a1)
{
  v2 = type metadata accessor for DetectedDoor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_257DEEE2C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = [a1 blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
  sub_257BD2C2C(0, &qword_27F8F5FA8);
  v10 = sub_257ECF810();

  v11 = sub_257CCB040(v10);

  if (!v11)
  {
    return 0;
  }

  v81.origin.x = a2;
  v81.origin.y = a3;
  v81.size.width = a4;
  v81.size.height = a5;
  MidX = CGRectGetMidX(v81);
  v82.origin.x = a2;
  v82.origin.y = a3;
  v82.size.width = a4;
  v82.size.height = a5;
  MidY = CGRectGetMidY(v82);
  v83.origin.x = a2;
  v83.origin.y = a3;
  v83.size.width = a4;
  v83.size.height = a5;
  v75 = MidX - CGRectGetWidth(v83) * 0.5;
  v84.origin.x = a2;
  v84.origin.y = a3;
  v84.size.width = a4;
  v84.size.height = a5;
  v73 = MidX + CGRectGetWidth(v84) * 0.5;
  v85.origin.x = a2;
  v85.origin.y = a3;
  v85.size.width = a4;
  v85.size.height = a5;
  v14 = MidY - CGRectGetHeight(v85) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F69F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBE50;
  *(inited + 32) = MidX;
  *(inited + 40) = MidY;
  *(inited + 48) = v75;
  *(inited + 56) = MidY + 0.0;
  *(inited + 64) = v73;
  *(inited + 72) = MidY + 0.0;
  *(inited + 80) = MidX + 0.0;
  *(inited + 88) = v14;
  v16 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {
    v69 = v11;
    if (!i)
    {
      break;
    }

    v18 = 0;
    v74 = v11 & 0xC000000000000001;
    v72 = v11 + 32;
    v11 = &selRef_imageByApplyingSymbolConfiguration_;
    v76 = MEMORY[0x277D84F90];
    v71 = v16;
    v70 = i;
    while (1)
    {
      if (v74)
      {
        v19 = MEMORY[0x259C72E20](v18, v69);
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_54;
        }

        v19 = *(v72 + 8 * v18);
      }

      v20 = v19;
      if (__OFADD__(v18++, 1))
      {
        break;
      }

      v77 = MEMORY[0x277D84F90];

      sub_257BF2724(0, 4, 0);
      v22 = 0;
      v16 = v77;
      v23 = *(inited + 16);
      do
      {
        if (!v23)
        {
          __break(1u);
          goto LABEL_53;
        }

        v25 = *(inited + v22 + 32);
        v24 = *(inited + v22 + 40);
        [v20 boundingBox];
        x = v86.origin.x;
        y = v86.origin.y;
        width = v86.size.width;
        height = v86.size.height;
        v80.x = v25;
        v80.y = v24;
        v30 = 0.0;
        if (!CGRectContainsPoint(v86, v80))
        {
          v31 = x;
          v32 = y;
          v33 = v25;
          v34 = width;
          v35 = height;
          v36 = v31 + v34;
          if (v31 < v33)
          {
            v31 = v25;
          }

          if (v36 < v33)
          {
            v31 = v36;
          }

          v37 = v24;
          v38 = 1.0 - v32;
          v39 = v32 + v35;
          if (((1.0 - v32) - v35) < v37)
          {
            v32 = v24;
          }

          if (v38 < v37)
          {
            v32 = v39;
          }

          v30 = sqrtf(((v31 - v33) * (v31 - v33)) + ((v32 - v37) * (v32 - v37)));
        }

        v41 = *(v77 + 16);
        v40 = *(v77 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_257BF2724((v40 > 1), v41 + 1, 1);
        }

        *(v77 + 16) = v41 + 1;
        *(v77 + 32 + 8 * v41) = v30;
        --v23;
        v22 += 16;
      }

      while (v22 != 64);

      v42 = *(v77 + 16);
      if (v42)
      {
        v43 = *(v77 + 32);
        v44 = v42 - 1;
        if (v42 != 1)
        {
          v45 = (v77 + 40);
          do
          {
            v46 = *v45++;
            v47 = v46;
            if (v46 < v43)
            {
              v43 = v47;
            }

            --v44;
          }

          while (v44);
        }

        v48 = 0;
        while (*(v77 + 8 * v48 + 32) != v43)
        {
          if (v42 == ++v48)
          {

            goto LABEL_7;
          }
        }

        v49 = sub_257D11120();
        [v20 boundingBox];
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v57 = v56;
        [v20 confidence];
        v59 = v58;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v60 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages);
        swift_beginAccess();
        v78 = *v60;
        v61 = qword_2815447E0;

        if (v61 != -1)
        {
          v62 = swift_once();
        }

        MEMORY[0x28223BE20](v62);
        sub_257ECFD50();

        if (v48 >= 4)
        {
          LOBYTE(v48) = 4;
        }

        v63 = v76;
        v64 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_257BFD2F0(0, *(v76 + 2) + 1, 1, v76);
        }

        v76 = v63;
        v66 = *(v63 + 2);
        v65 = *(v63 + 3);
        if (v66 >= v65 >> 1)
        {
          v76 = sub_257BFD2F0((v65 > 1), v66 + 1, 1, v63);
        }

        *(v76 + 2) = v66 + 1;
        v67 = &v76[72 * v66];
        *(v67 + 4) = v64;
        *(v67 + 5) = v51;
        *(v67 + 6) = v53;
        *(v67 + 7) = v55;
        *(v67 + 8) = v57;
        *(v67 + 9) = v59;
        v67[80] = v79;
        v67[81] = 0;
        v67[82] = v48;
        *(v67 + 83) = v78;
        v67[87] = BYTE4(v78);
        *(v67 + 11) = v43;
        *(v67 + 12) = 0;
      }

      else
      {
      }

LABEL_7:
      v16 = v71;
      if (v18 == v70)
      {
        goto LABEL_51;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  v76 = MEMORY[0x277D84F90];
LABEL_51:

  swift_setDeallocating();
  return v76;
}

char *sub_257DEF500(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MidX = CGRectGetMidX(*&a2);
  v81.origin.x = a2;
  v81.origin.y = a3;
  v81.size.width = a4;
  v81.size.height = a5;
  MidY = CGRectGetMidY(v81);
  v82.origin.x = a2;
  v82.origin.y = a3;
  v82.size.width = a4;
  v82.size.height = a5;
  v75 = MidX - CGRectGetWidth(v82) * 0.5;
  v83.origin.x = a2;
  v83.origin.y = a3;
  v83.size.width = a4;
  v83.size.height = a5;
  v73 = MidX + CGRectGetWidth(v83) * 0.5;
  v84.origin.x = a2;
  v84.origin.y = a3;
  v84.size.width = a4;
  v84.size.height = a5;
  v12 = MidY - CGRectGetHeight(v84) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F69F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBE50;
  *(inited + 32) = MidX;
  *(inited + 40) = MidY;
  *(inited + 48) = v75;
  *(inited + 56) = MidY + 0.0;
  *(inited + 64) = v73;
  *(inited + 72) = MidY + 0.0;
  *(inited + 80) = MidX + 0.0;
  *(inited + 88) = v12;
  if (a1)
  {
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_54;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
    {
      v68 = v14;
      v16 = 0;
      v76 = a1 & 0xC000000000000001;
      v67 = a1 + 32;
      v72 = MEMORY[0x277D84F90];
      v66 = a1;
      v74 = i;
      while (1)
      {
        if (v76)
        {
          v17 = MEMORY[0x259C72E20](v16, a1);
        }

        else
        {
          if (v16 >= *(v68 + 16))
          {
            goto LABEL_53;
          }

          v17 = *(v67 + 8 * v16);
        }

        v18 = v17;
        if (__OFADD__(v16++, 1))
        {
          break;
        }

        v77 = MEMORY[0x277D84F90];

        sub_257BF2724(0, 4, 0);
        v14 = 0;
        v20 = *(inited + 16);
        v21 = v18;
        v22 = &v18[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_box];
        do
        {
          if (!v20)
          {
            __break(1u);
            goto LABEL_52;
          }

          v24 = *(inited + v14 + 32);
          v23 = *(inited + v14 + 40);
          v25 = *v22;
          v26 = v22[1];
          v27 = v22[2];
          v28 = v22[3];
          v85.origin.x = *v22;
          v85.origin.y = v26;
          v85.size.width = v27;
          v85.size.height = v28;
          v80.x = v24;
          v80.y = v23;
          v29 = 0.0;
          if (!CGRectContainsPoint(v85, v80))
          {
            v30 = v25;
            v31 = v26;
            v32 = v24;
            v33 = v27;
            v34 = v28;
            v35 = v30 + v33;
            if (v30 < v32)
            {
              v30 = v24;
            }

            if (v35 < v32)
            {
              v30 = v35;
            }

            v36 = v23;
            v37 = 1.0 - v31;
            v38 = v31 + v34;
            if (((1.0 - v31) - v34) < v36)
            {
              v31 = v23;
            }

            if (v37 < v36)
            {
              v31 = v38;
            }

            v29 = sqrtf(((v30 - v32) * (v30 - v32)) + ((v31 - v36) * (v31 - v36)));
          }

          v40 = *(v77 + 16);
          v39 = *(v77 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_257BF2724((v39 > 1), v40 + 1, 1);
          }

          *(v77 + 16) = v40 + 1;
          *(v77 + 32 + 8 * v40) = v29;
          --v20;
          v14 += 16;
        }

        while (v14 != 64);

        v41 = *(v77 + 16);
        if (!v41)
        {
LABEL_5:

          if (v16 != v74)
          {
            continue;
          }

          goto LABEL_50;
        }

        v42 = *(v77 + 32);
        v43 = v41 - 1;
        if (v41 != 1)
        {
          v44 = (v77 + 40);
          do
          {
            v45 = *v44++;
            v46 = v45;
            if (v45 < v42)
            {
              v42 = v46;
            }

            --v43;
          }

          while (v43);
        }

        v47 = 0;
        while (*(v77 + 8 * v47 + 32) != v42)
        {
          if (v41 == ++v47)
          {
            goto LABEL_5;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5258);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_257ED6D30;
        v49 = v21;
        v50 = *&v21[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_labelName + 8];
        v71 = *&v21[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_labelName];
        v51 = objc_opt_self();

        v52 = [v51 currentLanguageCode];
        v53 = sub_257ECF500();
        v55 = v54;

        *(v48 + 32) = v71;
        *(v48 + 40) = v50;
        *(v48 + 48) = v53;
        *(v48 + 56) = v55;
        v70 = *v22;
        v69 = *(v22 + 1);
        v56 = v49;
        v57 = *&v49[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_confidence];
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v58 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages);
        swift_beginAccess();
        v78 = *v58;
        v59 = qword_2815447E0;

        if (v59 != -1)
        {
          v60 = swift_once();
        }

        MEMORY[0x28223BE20](v60);
        sub_257ECFD50();

        v14 = v79;
        if (v47 >= 4)
        {
          v61 = 4;
        }

        else
        {
          v61 = v47;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_257BFD2F0(0, *(v72 + 2) + 1, 1, v72);
        }

        a1 = v66;
        v63 = *(v72 + 2);
        v62 = *(v72 + 3);
        if (v63 >= v62 >> 1)
        {
          v72 = sub_257BFD2F0((v62 > 1), v63 + 1, 1, v72);
        }

        *(v72 + 2) = v63 + 1;
        v64 = &v72[72 * v63];
        *(v64 + 4) = v48;
        *(v64 + 40) = v70;
        *(v64 + 56) = v69;
        *(v64 + 9) = v57;
        v64[80] = v79;
        v64[81] = 1;
        v64[82] = v61;
        *(v64 + 83) = v78;
        v64[87] = BYTE4(v78);
        *(v64 + 11) = 0;
        *(v64 + 12) = 0;
        if (v16 == v74)
        {
LABEL_50:
          swift_setDeallocating();
          return v72;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      ;
    }

    swift_setDeallocating();
    return MEMORY[0x277D84F90];
  }

  else
  {
    swift_setDeallocating();
    return 0;
  }
}

uint64_t sub_257DEFC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedDoor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257DEFD20()
{
  result = qword_27F8F9980;
  if (!qword_27F8F9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9980);
  }

  return result;
}

unint64_t sub_257DEFDA8()
{
  result = qword_27F8F9998;
  if (!qword_27F8F9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9998);
  }

  return result;
}

uint64_t type metadata accessor for MFReaderLoadingViewHostingController()
{
  result = qword_27F8F99A0;
  if (!qword_27F8F99A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257DEFE88()
{
  v1[45] = v0;
  v2 = sub_257ECD900();
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v3 = sub_257ECF120();
  v1[50] = v3;
  v1[51] = *(v3 - 8);
  v1[52] = swift_task_alloc();
  v4 = sub_257ECDA30();
  v1[53] = v4;
  v1[54] = *(v4 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  sub_257ECF900();
  v1[57] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v1[58] = v6;
  v1[59] = v5;

  return MEMORY[0x2822009F8](sub_257DF004C, v6, v5);
}

uint64_t sub_257DF004C()
{
  v30 = v0;
  v1 = *(v0 + 360);
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
  *(v0 + 480) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
  if (*(v1 + v2) || (v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument), (*(v0 + 488) = v5) == 0))
  {

LABEL_3:

    v3 = *(v0 + 8);

    return v3();
  }

  v6 = v5;
  v7 = sub_257EB69B8();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    sub_257E1BA40();

    goto LABEL_3;
  }

  if (!AXDeviceSupportsAccessibilityReader())
  {

    type metadata accessor for MFReaderSpeechFormatterModel(0);
    v13 = swift_allocObject();
    sub_257C353E4(1, 0xD000000000000022, 0x8000000257EFA770, 0, 0, v13 + OBJC_IVAR____TtC16MagnifierSupport28MFReaderSpeechFormatterModel__playbackSpeed);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v29[0] = *(v0 + 241);
    v14 = objc_allocWithZone(type metadata accessor for MFReaderBlockManager());
    v15 = v6;
    v27 = sub_257CD4C68(v5, v29);
    v28 = v15;

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = qword_281548350 + 184;
    swift_beginAccess();
    *(v0 + 242) = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 408);
    v18 = *(v0 + 416);
    v19 = *(v0 + 400);
    v26 = *(v0 + 360);
    sub_257ECF110();
    v20 = swift_task_alloc();
    *(v20 + 16) = v0 + 242;
    *(v20 + 24) = v16;
    sub_257ECFD40();

    (*(v17 + 8))(v18, v19);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 243) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    v21 = swift_allocObject();
    *(v21 + 16) = v26;
    v22 = objc_allocWithZone(type metadata accessor for MFReaderModeHostingController());
    v26;
    v23 = v27;
    sub_257ECC3F0();
    sub_257CCAC60(v23, sub_257DF2250, v21, (v0 + 80));
    v24 = sub_257ECE620();

    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 1;
    sub_257ECA76C(v24, v0 + 208, 0x3FD0000000000000, 1u);

    v25 = *(v1 + v2);
    *(v1 + v2) = v24;

    goto LABEL_3;
  }

  v11 = v6;
  v12 = swift_task_alloc();
  *(v0 + 496) = v12;
  *v12 = v0;
  v12[1] = sub_257DF0514;

  return sub_257DFCB40(v5);
}

uint64_t sub_257DF0514(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  *(*v1 + 247) = a1;

  v4 = *(v2 + 472);
  v5 = *(v2 + 464);

  return MEMORY[0x2822009F8](sub_257DF065C, v5, v4);
}

uint64_t sub_257DF065C()
{
  v1 = *(v0 + 247);

  if (v1 == 1)
  {
    v2 = (v0 + 246);
    sub_257ECD8C0();
    v3 = sub_257ECDA20();
    v4 = sub_257ECFBD0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_257BAC000, v3, v4, "Successfully opened Accessibility Reader from Magnifier", v5, 2u);
      MEMORY[0x259C74820](v5, -1, -1);
    }

    v6 = *(v0 + 448);
    v7 = *(v0 + 424);
    v8 = *(v0 + 432);

    (*(v8 + 8))(v6, v7);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v9 = qword_281548350 + 184;
    swift_beginAccess();
    *v2 = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 488);
    v12 = *(v0 + 408);
    v11 = *(v0 + 416);
    v13 = *(v0 + 400);
    sub_257ECF110();
    v14 = swift_task_alloc();
    *(v14 + 16) = v2;
    *(v14 + 24) = v9;
    sub_257ECFD40();

    (*(v12 + 8))(v11, v13);
    swift_endAccess();
  }

  else
  {
    v49 = (v0 + 244);
    sub_257ECD8C0();
    v15 = sub_257ECDA20();
    v16 = sub_257ECFBD0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_257BAC000, v15, v16, "Failed to open Accessibility Reader from Magnifier - Falling back to in-app mode.", v17, 2u);
      MEMORY[0x259C74820](v17, -1, -1);
    }

    v18 = *(v0 + 488);
    v20 = *(v0 + 432);
    v19 = *(v0 + 440);
    v21 = *(v0 + 424);
    v22 = *(v0 + 384);
    v23 = *(v0 + 392);
    v24 = *(v0 + 368);
    v25 = *(v0 + 376);

    (*(v20 + 8))(v19, v21);
    sub_257ECD930();
    swift_allocObject();
    sub_257ECD920();
    sub_257ECD910();

    (*(v25 + 16))(v22, v23, v24);
    v26 = objc_allocWithZone(sub_257ECD8F0());
    v27 = v18;
    v43 = sub_257ECD8E0();
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v48 = (v0 + 248);
    v28 = qword_281548350 + 184;
    swift_beginAccess();
    *v49 = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 488);
    v47 = *(v0 + 480);
    v29 = *(v0 + 408);
    v30 = *(v0 + 416);
    v31 = *(v0 + 400);
    v32 = *(v0 + 376);
    v44 = *(v0 + 368);
    v45 = *(v0 + 392);
    v33 = *(v0 + 360);
    sub_257ECF110();
    v34 = swift_task_alloc();
    *(v34 + 16) = v49;
    *(v34 + 24) = v28;
    sub_257ECFD40();

    (*(v29 + 8))(v30, v31);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 245) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    v36 = objc_allocWithZone(type metadata accessor for MFReaderModeHostingController());
    v37 = v43;
    v33;
    sub_257ECC3F0();
    sub_257CCAAAC(v37, sub_257DF2258, v35, (v0 + 16));

    v38 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v38;
    v39 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v39;
    v40 = sub_257ECE620();

    *v48 = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 1;
    sub_257ECA76C(v40, v48, 0x3FD0000000000000, 1u);

    (*(v32 + 8))(v45, v44);
    v10 = *&v33[v47];
    *&v33[v47] = v40;
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_257DF0C70()
{
  v1[9] = v0;
  v2 = sub_257ECDA30();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_257ECF120();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = sub_257ECF190();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  sub_257ECF900();
  v1[19] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v1[20] = v6;
  v1[21] = v5;

  return MEMORY[0x2822009F8](sub_257DF0E1C, v6, v5);
}

uint64_t sub_257DF0E1C()
{
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_257DF0EC0;

  return MAGFrameProviderService.currentFrame.getter();
}

uint64_t sub_257DF0EC0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_257DF122C;
  }

  else
  {
    v4[24] = a1;
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_257DF0FE8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_257DF0FE8()
{
  v1 = v0[24];
  v2 = v0[18];
  v13 = v0[17];
  v14 = v0[16];
  v3 = v0[15];
  v12 = v0[14];
  v4 = v0[13];
  v5 = v0[9];

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[6] = sub_257DF2230;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_257D231C0;
  v0[5] = &block_descriptor_54;
  v7 = _Block_copy(v0 + 2);
  v8 = v5;
  v11 = v1;
  sub_257ECF150();
  v0[8] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v2, v3, v7);
  _Block_release(v7);

  (*(v12 + 8))(v3, v4);
  (*(v13 + 8))(v2, v14);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257DF122C()
{
  v1 = v0[23];

  sub_257ECD400();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not handle Text Detection Request. Error : %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v11 = v0[1];

  return v11();
}

void sub_257DF13C4(uint64_t a1, uint64_t a2)
{
  sub_257CB7AE4(a2, 1);
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument) = v4;
  v5 = v4;

  sub_257DF1478();
}

void sub_257DF1478()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 getBlocks];
    if (v3)
    {
      v4 = v3;
      sub_257DF21E4();
      v5 = sub_257ECF810();

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      if (v5 >> 62)
      {
        sub_257ED0210();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
    }

    sub_257ECDD70();
  }
}

void sub_257DF1620(uint64_t a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v13) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController);
  if (v3)
  {
    v4 = v3;
    [v4 willMoveToParentViewController_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = sub_257BEE444;
    v18 = v6;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257D231C0;
    v16 = &block_descriptor_38;
    v7 = _Block_copy(&v13);
    v8 = v4;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v17 = sub_257BEE44C;
    v18 = v9;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257DFE438;
    v16 = &block_descriptor_44_0;
    v10 = _Block_copy(&v13);
    v11 = v8;

    [v5 animateWithDuration:0x20000 delay:v7 options:v10 animations:0.25 completion:0.0];
    _Block_release(v10);
    _Block_release(v7);

    v12 = *(a1 + v2);
    *(a1 + v2) = 0;
  }
}

void sub_257DF1870(uint64_t a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v13) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController);
  if (v3)
  {
    v4 = v3;
    [v4 willMoveToParentViewController_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = sub_257DA0018;
    v18 = v6;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257D231C0;
    v16 = &block_descriptor_51_0;
    v7 = _Block_copy(&v13);
    v8 = v4;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v17 = sub_257DA0038;
    v18 = v9;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257DFE438;
    v16 = &block_descriptor_58_0;
    v10 = _Block_copy(&v13);
    v11 = v8;

    [v5 animateWithDuration:0x20000 delay:v7 options:v10 animations:0.25 completion:0.0];
    _Block_release(v10);
    _Block_release(v7);

    v12 = *(a1 + v2);
    *(a1 + v2) = 0;
  }
}

uint64_t sub_257DF1AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v33 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99B8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v33 - v7;
  *v4 = sub_257ECF060();
  v4[1] = v9;
  v10 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99C0) + 44);
  sub_257ECE030();
  v11 = sub_257ECEDC0();
  KeyPath = swift_getKeyPath();
  v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99C8) + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  LOBYTE(KeyPath) = sub_257ECE930();
  v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99D0) + 36)];
  *v14 = KeyPath;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  v14[40] = 1;
  v15 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99D8) + 36)];
  sub_257ECF000();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99E0);
  v17 = &v15[*(v16 + 52)];
  v18 = *(sub_257ECE2D0() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_257ECE570();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #10.0 }

  *v17 = _Q0;
  *&v15[*(v16 + 56)] = 256;
  sub_257ECF060();
  sub_257ECE2F0();
  sub_257C0DD14(v4, v8, &qword_27F8F99B0);
  v26 = &v8[*(v6 + 44)];
  v27 = v33[5];
  *(v26 + 4) = v33[4];
  *(v26 + 5) = v27;
  *(v26 + 6) = v33[6];
  v28 = v33[1];
  *v26 = v33[0];
  *(v26 + 1) = v28;
  v29 = v33[3];
  *(v26 + 2) = v33[2];
  *(v26 + 3) = v29;
  sub_257ECED90();
  v30 = sub_257ECEDA0();

  LOBYTE(v15) = sub_257ECE930();
  sub_257C0DD14(v8, a1, &qword_27F8F99B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99E8);
  v32 = a1 + *(result + 36);
  *v32 = v30;
  *(v32 + 8) = v15;
  return result;
}

uint64_t sub_257DF1E10@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_257ECF500();
  sub_257BDAB08();
  result = sub_257ECEAF0();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

void sub_257DF1F98(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257DF20F0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257DF2170()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

unint64_t sub_257DF21E4()
{
  result = qword_27F8F5FA8;
  if (!qword_27F8F5FA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F5FA8);
  }

  return result;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257DF2260()
{
  result = qword_27F8F99F0;
  if (!qword_27F8F99F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F99E8);
    sub_257DF2318();
    sub_257BD2D4C(&qword_27F8F6188, &qword_27F8F6190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F99F0);
  }

  return result;
}

unint64_t sub_257DF2318()
{
  result = qword_27F8F99F8;
  if (!qword_27F8F99F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F99B8);
    sub_257BD2D4C(&unk_27F8F9A00, &qword_27F8F99B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F99F8);
  }

  return result;
}

id MagnifierExtensionViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id MagnifierExtensionViewController.init(rootViewController:)(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for MagnifierExtensionViewController();
  v3 = objc_msgSendSuper2(&v9, sel_initWithRootViewController_, a1);
  [v3 setNavigationBarHidden:1 animated:0];
  v4 = [v3 navigationBar];
  v5 = [objc_opt_self() systemYellowColor];
  [v4 setTintColor_];

  v6 = [v3 navigationBar];
  v7 = [objc_opt_self() visualEffectViewAllowingBlur_];
  [v6 _setBackgroundView_];

  [v3 setModalPresentationStyle_];
  return v3;
}

id MagnifierExtensionViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id MagnifierExtensionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MagnifierExtensionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MagnifierExtensionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257DF2814(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A50);
    v1 = sub_257ED0480();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;
  sub_257ECC3F0();

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    sub_257BD2C2C(0, &qword_27F8F8FA0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_257BEBE08((v27 + 8), v25);
    sub_257BEBE08(v25, v27);
    sub_257ECF500();
    sub_257ED07B0();
    sub_257ECF5D0();
    v16 = sub_257ED0800();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_257BEBE08(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_257DF2ACC(unsigned __int8 a1)
{
  if (a1 > 2u || a1 == 0)
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

uint64_t sub_257DF2BF0(char a1)
{
  if (!a1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v1 = sub_257ECF500();
  return v1;
}

void sub_257DF2D44()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = [v0 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  [v1 setTitle_];
}

uint64_t sub_257DF2EE4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v2 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

    result = swift_unknownObjectRelease();
    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v4 = v0;
        v5 = qword_281548348;
        swift_beginAccess();
        v6 = v5[12];
        v7 = v5[13];
        v16[0] = v5[11];
        v16[1] = v6;
        v16[2] = v7;
        v8 = qword_2815447E0;

        if (v8 != -1)
        {
          v9 = swift_once();
        }

        MEMORY[0x28223BE20](v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
        sub_257ECFD50();

        if (*(v15[0] + 16))
        {
          v10 = sub_257C03F6C(v3, v2);
          v12 = v11;

          if (v12)
          {
            v13 = (*(v15[0] + 56) + 296 * v10);
            memcpy(v14, v13, sizeof(v14));
            memmove(v15, v13, 0x128uLL);
            CGSizeMake(v15);
            sub_257C09C58(v14, v16);

            memcpy(v16, v15, sizeof(v16));
LABEL_16:
            memcpy(v15, (v4 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), v16, 0x128uLL);
            return sub_257BE4084(v15, &unk_27F8F68B0);
          }
        }

        else
        {
        }

        sub_257C10998(v16);
        goto LABEL_16;
      }
    }
  }

  return result;
}

id sub_257DF31C0()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  v5 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  sub_257DF2EE4();
  v9 = *&v1[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_colorPickerController];
  [v9 setSupportsAlpha_];
  v10 = &v1[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity];
  memcpy(__dst, &v1[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity], sizeof(__dst));
  if (sub_257C108C4(__dst) != 1)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v10[27] green:v10[28] blue:v10[29] alpha:1.0];
    [v9 setSelectedColor_];
  }

  return [v9 setDelegate_];
}

id sub_257DF3484(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v6], __src, 0x128uLL);
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v11 = byte_286906070[v7 + 32];
    if (v11 != 3)
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
      v25 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF29A4(0, *(v8 + 16) + 1, 1);
        v8 = v25;
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257BF29A4((v9 > 1), v10 + 1, 1);
        v8 = v25;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = v11;
    }

    ++v7;
  }

  while (v7 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_availablePointSpeakFeedbacks] = v8;
  v12 = OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_tableView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 systemYellowColor];
  [v15 setTintColor_];

  [v15 setClipsToBounds_];
  *&v4[v12] = v15;
  v17 = OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_colorPickerController;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  if (a2)
  {
    v18 = sub_257ECF4C0();
  }

  else
  {
    v18 = 0;
  }

  v24.receiver = v4;
  v24.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, v18, a3, a1);

  return v19;
}

id sub_257DF3780(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v2[v4], __src, 0x128uLL);
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v9 = byte_286906098[v5 + 32];
    if (v9 != 3)
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
      v20 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF29A4(0, *(v6 + 16) + 1, 1);
        v6 = v20;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_257BF29A4((v7 > 1), v8 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + v8 + 32) = v9;
    }

    ++v5;
  }

  while (v5 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_availablePointSpeakFeedbacks] = v6;
  v10 = OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_tableView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemYellowColor];
  [v13 setTintColor_];

  [v13 setClipsToBounds_];
  *&v2[v10] = v13;
  v15 = OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_colorPickerController;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);

  if (v16)
  {
  }

  return v16;
}

unint64_t sub_257DF3BEC(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCEA0();
  if (v4 <= 1)
  {
    if (!v4)
    {
      v6 = sub_257ECF4C0();
      v7 = sub_257ECCE30();
      v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

      sub_257DF2EE4();
      v9 = [v8 textLabel];
      if (v9)
      {
        v10 = v9;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v12 = [objc_opt_self() bundleForClass_];
        v13 = sub_257ECF4C0();
        v14 = sub_257ECF4C0();
        v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

        if (!v15)
        {
          sub_257ECF500();
          v15 = sub_257ECF4C0();
        }

        [v10 setText_];
      }

      v16 = [v8 textLabel];
      if (v16)
      {
        v17 = v16;
        [v16 setNumberOfLines_];
      }

      v18 = [v8 textLabel];
      if (v18)
      {
        v19 = v18;
        [v18 setLineBreakMode_];
      }

      v20 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      v21 = v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
      memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
      if (sub_257C108C4(__dst) == 1)
      {
      }

      else
      {
        [v20 setOn_];
        v79 = v20;
        [v79 setTag_];
        [v79 addTarget:v2 action:sel_togglePointSpeakSwitchChanged_ forControlEvents:4096];
        [v8 setAccessoryView_];
      }

      return v8;
    }

    if (v4 == 1)
    {
      v5 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    switch(v4)
    {
      case 4:
        v5 = 4;
        goto LABEL_22;
      case 3:
        v5 = 3;
        goto LABEL_22;
      case 2:
        v5 = 2;
        goto LABEL_22;
    }
  }

  v5 = 5;
LABEL_22:
  v22 = sub_257ECF4C0();
  v23 = sub_257ECCE30();
  v8 = [a1 dequeueReusableCellWithIdentifier:v22 forIndexPath:v23];

  sub_257DF2EE4();
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v63 = [v8 textLabel];
      if (v63)
      {
        v64 = v63;
        type metadata accessor for MAGUtilities();
        v65 = swift_getObjCClassFromMetadata();
        v66 = [objc_opt_self() bundleForClass_];
        v67 = sub_257ECF4C0();
        v68 = sub_257ECF4C0();
        v69 = [v66 localizedStringForKey:v67 value:0 table:v68];

        if (!v69)
        {
          sub_257ECF500();
          v69 = sub_257ECF4C0();
        }

        [v64 setText_];
      }

      v70 = [v8 textLabel];
      if (v70)
      {
        v71 = v70;
        [v70 setNumberOfLines_];
      }

      v72 = [v8 textLabel];
      if (v72)
      {
        v73 = v72;
        [v72 setLineBreakMode_];
      }

      v74 = v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
      memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
      if (sub_257C108C4(__dst) == 1)
      {
        return v8;
      }

      v75 = *(v74 + 241);
      v61 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      [v61 setOn_];
      v76 = sel_didToggleFlashlightSwitch_;
    }

    else
    {
      if (v5 != 4)
      {
        return v8;
      }

      if (sub_257ECCE60())
      {
        v24 = (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity);
        memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
        if (sub_257C108C4(__dst) != 1)
        {
          v142 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v24[27] green:v24[28] blue:v24[29] alpha:1.0];
          type metadata accessor for MAGUtilities();
          v25 = swift_getObjCClassFromMetadata();
          v139 = objc_opt_self();
          v26 = [v139 bundleForClass_];
          v27 = sub_257ECF4C0();
          v28 = sub_257ECF4C0();
          v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

          v30 = v29;
          v31 = v29;
          if (!v29)
          {
            sub_257ECF500();
            v31 = sub_257ECF4C0();

            sub_257ECF500();
            v30 = sub_257ECF4C0();
          }

          v32 = v29;
          v33 = [v8 textLabel];
          if (v33)
          {
            v34 = v33;
            [v33 setText_];
          }

          v35 = [v8 textLabel];
          if (v35)
          {
            v36 = v35;
            [v35 setNumberOfLines_];
          }

          v140 = v25;
          v37 = [v8 textLabel];
          if (v37)
          {
            v38 = v37;
            [v37 setLineBreakMode_];
          }

          [v8 setAccessoryType_];
          [v8 setShowsReorderControl_];
          v39 = objc_opt_self();
          v40 = *MEMORY[0x277D76918];
          v41 = [v39 preferredFontForTextStyle_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F82F0);
          v42 = swift_allocObject();
          v43 = MEMORY[0x277D740A8];
          *(v42 + 16) = xmmword_257ED6D30;
          v44 = *v43;
          *(v42 + 32) = v44;
          *(v42 + 40) = v41;
          v45 = v44;
          v138 = v41;
          v46 = sub_257BE8D30(v42);
          swift_setDeallocating();
          sub_257BE4084(v42 + 32, &unk_27F8F58D0);
          swift_deallocClassInstance();
          sub_257DF2814(v46);

          _s3__C3KeyVMa_0(0);
          sub_257BFB0F4(&qword_27F8F8300, _s3__C3KeyVMa_0);
          v47 = sub_257ECF3C0();

          [v30 sizeWithAttributes_];

          v48 = [v39 preferredFontForTextStyle_];
          [v48 lineHeight];
          v50 = v49;

          v51 = sub_257ECF4C0();
          v52 = objc_opt_self();
          v53 = [v52 systemImageNamed_];

          if (v53)
          {
            v54 = [v53 imageWithTintColor_];
          }

          else
          {
            v54 = 0;
          }

          v94 = sub_257ECF4C0();
          v95 = [v52 systemImageNamed_];

          v96 = 0.0;
          if (v95)
          {
            v97 = [objc_opt_self() systemGrayColor];
            v98 = [v95 imageWithTintColor_];

            v99 = [v39 preferredFontForTextStyle_];
            v100 = [objc_opt_self() configurationWithFont_];

            v101 = [v98 imageWithSymbolConfiguration_];
            if (v101)
            {
              [v101 size];
              v96 = v102;
            }
          }

          else
          {
            v101 = 0;
          }

          v103 = v140;
          v144.width = v50 + v96 + 5.0;
          v144.height = v50;
          UIGraphicsBeginImageContextWithOptions(v144, 0, 0.0);
          v104 = [objc_opt_self() sharedApplication];
          v105 = [v104 userInterfaceLayoutDirection];

          v141 = v101;
          if (!v105)
          {
            if (v54)
            {
              [v54 drawInRect_];
            }

            if (!v101)
            {
              goto LABEL_92;
            }

            v115 = v50 + 5.0;
            v113 = v101;
            [v113 size];
            v111 = (v50 - v116) * 0.5;
            [v113 size];
            v50 = v117;
            [v113 size];
            v119 = v118;
            goto LABEL_91;
          }

          if (v101)
          {
            v106 = v101;
            [v106 size];
            v108 = (v50 - v107) * 0.5;
            [v106 size];
            v110 = v109;
            [v106 size];
            v111 = 0.0;
            [v106 drawInRect_];

            if (v54)
            {
              v113 = v54;
              [v106 size];
              v115 = v114 + 5.0;
LABEL_90:
              v119 = v50;
LABEL_91:
              [v113 drawInRect_];
            }
          }

          else if (v54)
          {
            v113 = v54;
            v111 = 0.0;
            v115 = 5.0;
            goto LABEL_90;
          }

LABEL_92:
          v137 = v54;
          v120 = UIGraphicsGetImageFromCurrentImageContext();
          UIGraphicsEndImageContext();
          v121 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
          [v8 setAccessoryView_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
          v122 = swift_allocObject();
          *(v122 + 16) = xmmword_257ED9BD0;
          v123 = [v139 bundleForClass_];
          v124 = sub_257ECF4C0();
          v125 = sub_257ECF4C0();
          v126 = [v123 localizedStringForKey:v124 value:0 table:v125];

          v127 = sub_257ECF500();
          v129 = v128;

          v130 = MEMORY[0x277D837D0];
          *(v122 + 56) = MEMORY[0x277D837D0];
          v131 = sub_257BFB13C();
          *(v122 + 64) = v131;
          *(v122 + 32) = v127;
          *(v122 + 40) = v129;
          v132 = [v142 _accessibilityNameWithLuma];
          v133 = sub_257ECF500();
          v135 = v134;

          *(v122 + 96) = v130;
          *(v122 + 104) = v131;
          *(v122 + 72) = v133;
          *(v122 + 80) = v135;
          sub_257ECF540();
          v136 = sub_257ECF4C0();

          [v8 setAccessibilityLabel_];
        }

        return v8;
      }

      v80 = v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
      memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
      if (sub_257C108C4(__dst) == 1)
      {
        return v8;
      }

      v81 = *(v80 + 240);
      v82 = [v8 textLabel];
      if (v82)
      {
        v83 = v82;
        type metadata accessor for MAGUtilities();
        v84 = swift_getObjCClassFromMetadata();
        v85 = [objc_opt_self() bundleForClass_];
        v86 = sub_257ECF4C0();
        v87 = sub_257ECF4C0();
        v88 = [v85 localizedStringForKey:v86 value:0 table:v87];

        if (!v88)
        {
          sub_257ECF500();
          v88 = sub_257ECF4C0();
        }

        [v83 setText_];
      }

      v61 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      [v61 setOn_];
      v76 = sel_didToggleOutlineSwitch_;
    }

    [v61 addTarget:v2 action:v76 forControlEvents:4096];
    [v8 setAccessoryView_];
    goto LABEL_65;
  }

  if (v5 != 1)
  {
    v77 = sub_257ECCE60();
    if (v77)
    {
      if (v77 != 1)
      {
        return v8;
      }

      v78 = 1;
    }

    else
    {
      v78 = 0;
    }

    v89 = [v8 textLabel];
    if (v89)
    {
      v90 = v89;
      sub_257CED550();
      v91 = sub_257ECF4C0();

      [v90 setText_];
    }

    v92 = (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity);
    memcpy(__dst, v92, 0x128uLL);
    if (sub_257C108C4(__dst) != 1 && v78 == v92[242])
    {
      v93 = 3;
    }

    else
    {
      v93 = 0;
    }

    [v8 setAccessoryType_];
    [v8 setAccessoryView_];
    return v8;
  }

  v55 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_availablePointSpeakFeedbacks);
  result = sub_257ECCE60();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v55 + 16))
  {
    v57 = *(v55 + result + 32);
    v58 = [v8 textLabel];
    if (v58)
    {
      v59 = v58;
      sub_257D238F4();
      v60 = sub_257ECF4C0();

      [v59 setText_];
    }

    v61 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v62 = v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
    if (sub_257C108C4(__dst) == 1)
    {
      goto LABEL_66;
    }

    [v61 setOn_];
    v61 = v61;
    [v61 setTag_];
    [v61 addTarget:v2 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
    [v8 setAccessoryView_];

LABEL_65:
    [v8 setAccessoryType_];
LABEL_66:

    return v8;
  }

  __break(1u);
  return result;
}