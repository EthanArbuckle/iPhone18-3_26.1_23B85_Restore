id sub_248260C58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_248260C90()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = DBDashboardAnimation.rootContainerBackgroundColor.getter();
  [v1 setBackgroundColor_];

  [v2 setAlpha_];
  [v3 setAlpha_];

  return [v4 setAlpha_];
}

unint64_t sub_248260D3C()
{
  result = qword_27EE90600;
  if (!qword_27EE90600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE90600);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_248260DE0()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = DBDashboardAnimation.rootContainerBackgroundColor.getter();
  [v1 setBackgroundColor_];

  if (v3)
  {
    CGAffineTransformMakeScale(&v8, 1.0, 1.0);
    [v3 setTransform_];
    v6 = [v3 layer];
    v7 = sub_248383CC0();
    [v6 setValue:v7 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    [v2 setAlpha_];
    [v4 setAlpha_];
    CGAffineTransformMakeScale(&v8, 0.95, 0.95);
    [v4 setTransform_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t objectdestroy_78Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248260F70()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

id sub_248260FB4()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

id sub_248261000()
{
  v1 = *(v0 + 2);
  v3 = *(v0 + 4);
  v2 = *(v0 + 5);
  v5 = *(v0 + 6);
  v4 = *(v0 + 7);
  v6 = v0[8];
  v8 = *(v0 + 9);
  v7 = *(v0 + 10);
  v9 = v0[11];
  v10 = *(v0 + 12);
  v11 = DBDashboardAnimation.rootContainerBackgroundColor.getter();
  [v1 setBackgroundColor_];

  [v2 iconImageFrame];
  [v2 convertRect:v5 toCoordinateSpace:?];
  [v3 setFrame_];
  [v3 bounds];
  sub_248383F00();
  [v4 setCenter_];
  CGAffineTransformMakeScale(&v15, v6, v6);
  result = [v4 setTransform_];
  if (v8)
  {
    CGAffineTransformMakeScale(&v15, 1.0, 1.0);
    [v8 setTransform_];
    v13 = [v8 layer];
    v14 = sub_248383CC0();
    [v13 setValue:v14 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    CGAffineTransformMakeScale(&v15, 1.0, 1.0);
    [v7 setTransform_];
    [v2 iconImageFrame];
    [v3 convertRect:v2 fromCoordinateSpace:?];
    sub_248383F00();
    [v7 setCenter_];
    [v7 setMorphFraction_];
    [v7 setCrossfadeCornerRadius_];
    CGAffineTransformMakeScale(&v15, 1.0, 1.0);
    [v10 setTransform_];
    [v2 iconImageFrame];
    [v3 convertRect:v2 fromCoordinateSpace:?];
    sub_248383F00();
    [v10 setCenter_];
    [v10 setMorphFraction_];
    return [v10 setCrossfadeCornerRadius_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2482612A4(uint64_t result)
{
  if (result)
  {
    v2 = v1[6];
    v3 = v1[7];
    v4 = v1[4];
    v5 = v1[5];
    v7 = v1[2];
    v6 = v1[3];
    [v7 cleanupAfterCrossfade];
    [v7 removeFromSuperview];
    [v6 cleanupAfterCrossfade];
    [v6 removeFromSuperview];
    [v4 setHidden_];
    result = [v5 setIconImageAlpha_];
    if (v2)
    {
      if (v4 != v2)
      {
        result = [v2 removeFromSuperview];
      }

      if (v3)
      {
        return v3(result);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_248261380(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for DBAppToHomeAnimationSettings()) init];
  (*(a1 + 16))(a1, v2);
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = type metadata accessor for _DBSuspendAppToHomeReducedMotionAnimation();
LABEL_7:
    v9 = objc_allocWithZone(v3);
    v8 = v2;
    return DBDashboardAnimation.init(settings:)(v8);
  }

  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x138);
  v5 = v4();
  if (!v5)
  {
    v3 = type metadata accessor for _DBSuspendAppToHomeScaleAnimation();
    goto LABEL_7;
  }

  v6 = objc_allocWithZone(type metadata accessor for _DBSuspendAppToHomeZoomAnimation());
  result = v4();
  if (result)
  {
    *&v6[OBJC_IVAR____TtC9DashBoardP33_D40E7872F70D8F122B999F93C1E1124D32_DBSuspendAppToHomeZoomAnimation_iconView] = result;
    v8 = v2;
    return DBDashboardAnimation.init(settings:)(v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_2482614C8()
{
  v0 = sub_248381210();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v24 = &v23 - v5;
  sub_248381200();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24839D8B0;
  sub_248381200();
  sub_2482625F8();
  v7 = sub_2482FA0DC(0xD000000000000026, 0x80000002483AAF80, 0xD000000000000015, 0x80000002483AAFB0);
  v8 = objc_allocWithZone(MEMORY[0x277CF9038]);
  v9 = sub_2483811E0();
  v10 = [v8 initWithID:v9 chsWidget:v7 suggestionSource:0];

  v11 = v1 + 8;
  v12 = *(v1 + 8);
  v23 = v11;
  v12(v3, v0);
  *(v6 + 32) = v10;
  sub_248381200();
  v13 = sub_2482FA0DC(0xD000000000000026, 0x80000002483AAF80, 0xD000000000000015, 0x80000002483AAFB0);
  v14 = objc_allocWithZone(MEMORY[0x277CF9038]);
  v15 = sub_2483811E0();
  v16 = [v14 initWithID:v15 chsWidget:v13 suggestionSource:0];

  v12(v3, v0);
  *(v6 + 40) = v16;
  v17 = objc_allocWithZone(MEMORY[0x277CF9048]);
  v18 = v24;
  v19 = sub_2483811E0();
  sub_248384160();
  v20 = sub_248383B00();

  v21 = [v17 initWithID:v19 widgets:v20];

  result = (v12)(v18, v0);
  qword_27EE98E68 = v21;
  return result;
}

uint64_t *sub_2482617D4()
{
  if (qword_27EE95768 != -1)
  {
    swift_once();
  }

  return &qword_27EE98E68;
}

uint64_t sub_248261848()
{
  v0 = sub_248381210();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v35 = v33 - v5;
  sub_248381200();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24839CCB0;
  sub_248381200();
  sub_2482625F8();
  v7 = sub_2482FA0DC(0xD000000000000026, 0x80000002483AAF80, 0xD000000000000015, 0x80000002483AAFB0);
  v8 = objc_allocWithZone(MEMORY[0x277CF9038]);
  v9 = sub_2483811E0();
  v10 = [v8 initWithID:v9 chsWidget:v7 suggestionSource:0];

  v11 = *(v1 + 8);
  v33[1] = v1 + 8;
  v34 = v11;
  v33[0] = v0;
  v11(v3, v0);
  *(v6 + 32) = v10;
  sub_248381200();
  v12 = sub_2482FA0DC(0xD00000000000002BLL, 0x80000002483AAFF0, 0xD000000000000013, 0x80000002483AA2E0);
  v13 = objc_allocWithZone(MEMORY[0x277CF9038]);
  v14 = sub_2483811E0();
  v15 = [v13 initWithID:v14 chsWidget:v12 suggestionSource:0];

  v16 = v0;
  v17 = v34;
  v34(v3, v16);
  *(v6 + 40) = v15;
  sub_248381200();
  v18 = sub_2482FA0DC(0xD00000000000002BLL, 0x80000002483AAFF0, 0xD000000000000013, 0x80000002483AA2E0);
  v19 = objc_allocWithZone(MEMORY[0x277CF9038]);
  v20 = sub_2483811E0();
  v21 = [v19 initWithID:v20 chsWidget:v18 suggestionSource:0];

  v22 = v33[0];
  v17(v3, v33[0]);
  *(v6 + 48) = v21;
  sub_248381200();
  v23 = sub_2482FA0DC(0xD00000000000001CLL, 0x80000002483AB080, 0x6C7070612E6D6F63, 0xEF636973754D2E65);
  v24 = objc_allocWithZone(MEMORY[0x277CF9038]);
  v25 = sub_2483811E0();
  v26 = [v24 initWithID:v25 chsWidget:v23 suggestionSource:0];

  v17(v3, v22);
  *(v6 + 56) = v26;
  v27 = objc_allocWithZone(MEMORY[0x277CF9048]);
  v28 = v35;
  v29 = sub_2483811E0();
  sub_248384160();
  v30 = sub_248383B00();

  v31 = [v27 initWithID:v29 widgets:v30];

  result = (v17)(v28, v22);
  qword_27EE98E70 = v31;
  return result;
}

uint64_t *sub_248261CCC()
{
  if (qword_27EE95770 != -1)
  {
    swift_once();
  }

  return &qword_27EE98E70;
}

uint64_t sub_248261D40()
{
  v0 = sub_248381210();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - v5;
  sub_248381200();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24839D8C0;
  sub_248381200();
  sub_2482625F8();
  v7 = sub_2482FA0DC(0xD000000000000018, 0x80000002483AAE10, 0xD000000000000011, 0x80000002483AAE30);
  v8 = objc_allocWithZone(MEMORY[0x277CF9038]);
  v9 = sub_2483811E0();
  v10 = [v8 initWithID:v9 chsWidget:v7 suggestionSource:0];

  v11 = *(v1 + 8);
  v11(v3, v0);
  *(v6 + 32) = v10;
  sub_248381200();
  v12 = sub_2482FA0DC(0xD000000000000025, 0x80000002483AAEB0, 0x6C7070612E6D6F63, 0xEE00656D6F482E65);
  v13 = objc_allocWithZone(MEMORY[0x277CF9038]);
  v14 = sub_2483811E0();
  v15 = [v13 initWithID:v14 chsWidget:v12 suggestionSource:0];

  v11(v3, v0);
  *(v6 + 40) = v15;
  sub_248381200();
  v16 = sub_2482FA0DC(0xD000000000000023, 0x80000002483AAF10, 0xD000000000000013, 0x80000002483AAF40);
  v17 = objc_allocWithZone(MEMORY[0x277CF9038]);
  v18 = sub_2483811E0();
  v19 = [v17 initWithID:v18 chsWidget:v16 suggestionSource:0];

  v11(v3, v0);
  *(v6 + 48) = v19;
  v20 = objc_allocWithZone(MEMORY[0x277CF9048]);
  v21 = v27;
  v22 = sub_2483811E0();
  sub_248384160();
  v23 = sub_248383B00();

  v24 = [v20 initWithID:v22 widgets:v23];

  result = (v11)(v21, v0);
  qword_27EE98E78 = v24;
  return result;
}

uint64_t *sub_248262100()
{
  if (qword_27EE95778 != -1)
  {
    swift_once();
  }

  return &qword_27EE98E78;
}

uint64_t sub_248262174()
{
  v0 = sub_248381210();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - v5;
  sub_248381200();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24839D8C0;
  sub_248381200();
  sub_2482625F8();
  v7 = sub_2482FA0DC(0xD00000000000002CLL, 0x80000002483AAD50, 0xD000000000000019, 0x80000002483AAD80);
  v8 = objc_allocWithZone(MEMORY[0x277CF9038]);
  v9 = sub_2483811E0();
  v10 = [v8 initWithID:v9 chsWidget:v7 suggestionSource:0];

  v11 = *(v1 + 8);
  v11(v3, v0);
  *(v6 + 32) = v10;
  sub_248381200();
  v12 = sub_2482FA0DC(0xD00000000000002CLL, 0x80000002483AADA0, 0xD00000000000001BLL, 0x80000002483AADD0);
  v13 = objc_allocWithZone(MEMORY[0x277CF9038]);
  v14 = sub_2483811E0();
  v15 = [v13 initWithID:v14 chsWidget:v12 suggestionSource:0];

  v11(v3, v0);
  *(v6 + 40) = v15;
  sub_248381200();
  v16 = sub_2482FA0DC(0xD000000000000018, 0x80000002483AAE10, 0xD000000000000011, 0x80000002483AAE30);
  v17 = objc_allocWithZone(MEMORY[0x277CF9038]);
  v18 = sub_2483811E0();
  v19 = [v17 initWithID:v18 chsWidget:v16 suggestionSource:0];

  v11(v3, v0);
  *(v6 + 48) = v19;
  v20 = objc_allocWithZone(MEMORY[0x277CF9048]);
  v21 = v27;
  v22 = sub_2483811E0();
  sub_248384160();
  v23 = sub_248383B00();

  v24 = [v20 initWithID:v22 widgets:v23];

  result = (v11)(v21, v0);
  qword_27EE98E80 = v24;
  return result;
}

uint64_t *sub_248262524()
{
  if (qword_27EE95780 != -1)
  {
    swift_once();
  }

  return &qword_27EE98E80;
}

id sub_248262598(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

unint64_t sub_2482625F8()
{
  result = qword_27EE90608;
  if (!qword_27EE90608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE90608);
  }

  return result;
}

uint64_t sub_248262644()
{
  result = sub_248383930();
  qword_27EE95790 = result;
  return result;
}

char *DBDynamicContentController.__allocating_init(windowScene:windowFrame:layoutEngine:environment:)(void *a1, char **a2, void *a3, double a4, double a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = sub_248263644(a1, a2, a3, a4, a5, a6, a7);

  swift_unknownObjectRelease();
  return v16;
}

char *DBDynamicContentController.init(windowScene:windowFrame:layoutEngine:environment:)(void *a1, char **a2, void *a3, double a4, double a5, double a6, double a7)
{
  v9 = sub_248263644(a1, a2, a3, a4, a5, a6, a7);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t DBDynamicContentController.isHidden.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_isHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

id DBDynamicContentController.isHidden.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_isHidden;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return [*(v1 + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__window) setHidden_];
}

void (*DBDynamicContentController.isHidden.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_isHidden;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_248262A10;
}

void sub_248262A10(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__window) setHidden_];
  }

  free(v3);
}

double DBDynamicContentController.cornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void DBDynamicContentController.cornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_cornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = [*(v1 + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__window) layer];
  [v4 setCornerRadius_];
}

void (*DBDynamicContentController.cornerRadius.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_cornerRadius;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_248262CBC;
}

void sub_248262CBC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = [*(v5 + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__window) layer];
    [v6 setCornerRadius_];
  }

  free(v3);
}

id DBDynamicContentController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBDynamicContentController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDynamicContentController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DBDynamicContentController.invalidate()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__sceneCoordinator);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__window);

    [v2 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

id DBDynamicContentController.displayIdentity.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__environmentConfiguration) displayIdentity];

  return v1;
}

id DBDynamicContentController.displayConfiguration.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__environmentConfiguration) displayConfiguration];

  return v1;
}

id sub_2482630C0(SEL *a1)
{
  v1 = [swift_unknownObjectUnownedLoadStrong() *a1];
  swift_unknownObjectRelease();
  return v1;
}

id sub_248263120(void *a1, uint64_t a2, SEL *a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = a1;
  v7 = [Strong *a3];

  swift_unknownObjectRelease();

  return v7;
}

id DBDynamicContentController.focusController.getter()
{
  v0 = [swift_unknownObjectUnownedLoadStrong() focusController];
  swift_unknownObjectRelease();
  return v0;
}

Swift::String __swiftcall DBDynamicContentController.sceneIdentifier(for:)(DBApplication *a1)
{
  v1 = [swift_unknownObjectUnownedLoadStrong() sceneIdentifierForApplication_];
  swift_unknownObjectRelease();
  v2 = sub_248383960();
  v4 = v3;

  MEMORY[0x24C1CAFD0](0x72657473756C633ALL, 0xE800000000000000);

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

__C::CGRect __swiftcall DBDynamicContentController.sceneFrame(for:)(DBApplication *a1)
{
  v1 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

__C::CGRect __swiftcall DBDynamicContentController.sceneFrame(for:proxyApplication:)(DBApplication *a1, DBApplication *proxyApplication)
{
  [v2 sceneFrameForApplication_];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

UIEdgeInsets __swiftcall DBDynamicContentController.safeAreaInsets(for:)(DBApplication *a1)
{
  v1 = *MEMORY[0x277D768C8];
  v2 = *(MEMORY[0x277D768C8] + 8);
  v3 = *(MEMORY[0x277D768C8] + 16);
  v4 = *(MEMORY[0x277D768C8] + 24);
  result.right = v4;
  result.bottom = v3;
  result.left = v2;
  result.top = v1;
  return result;
}

UIEdgeInsets __swiftcall DBDynamicContentController.safeAreaInsets(for:proxyApplication:)(DBApplication *a1, DBApplication *proxyApplication)
{
  [v2 safeAreaInsetsForApplication_];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

id sub_248263480(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if ([Strong respondsToSelector_])
  {
    v10 = [Strong *a3];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v11 = [v4 environmentConfiguration];
    v10 = [v11 *a4];
  }

  return v10;
}

id sub_248263554(void *a1, uint64_t a2, void *a3, void *a4, SEL *a5, SEL *a6)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if ([Strong respondsToSelector_])
  {
    v12 = [Strong *a5];
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = a3;
    v14 = a4;
    v15 = a1;
    swift_unknownObjectRelease();
    v16 = [v15 environmentConfiguration];
    v12 = [v16 *a6];
  }

  return v12;
}

char *sub_248263644(void *a1, char **a2, void *a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v125[3] = *MEMORY[0x277D85DE8];
  v123 = sub_2483822E0();
  v118 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v120 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v119 = &v104 - v19;
  v8[OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_isHidden] = 0;
  *&v8[OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_cornerRadius] = 0;
  v20 = &qword_27EE90000;
  *&v8[OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__sceneCoordinator] = 0;
  v21 = [a3 environmentConfiguration];
  v22 = [v21 systemUILayout];

  v109 = v22;
  if (!v22)
  {
    goto LABEL_31;
  }

  type metadata accessor for DBDynamicContentWindow();
  v23 = &qword_27EE90000;
  *&v8[OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__window] = DBDynamicContentWindow.__allocating_init(windowScene:frame:)(a1, a4, a5, a6, a7);
  v24 = &qword_27EE90000;
  *&v8[OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__carouselViewControllers] = MEMORY[0x277D84F90];
  swift_unknownObjectUnownedInit();
  v25 = [a3 displayConfiguration];
  v26 = objc_allocWithZone(MEMORY[0x277D0ACE8]);
  v108 = v25;
  v27 = [v26 initWithConfiguration_];
  v28 = sub_248383930();
  [v27 setUniqueIdentifier_];

  [v27 setDisplayType_];
  v107 = v27;
  v29 = [v27 buildConfigurationWithError_];
  v30 = [a3 environmentConfiguration];
  v31 = [objc_allocWithZone(DBEnvironmentConfigurationBuilder) initWithConfiguration_];

  v106 = v29;
  [v31 setDisplayConfiguration_];
  v125[0] = 0;
  v105 = v31;
  v32 = [v31 buildWithError_];
  v104 = v32;
  if (v32)
  {
    v33 = v32;
    v34 = v125[0];
    v35 = v33;
  }

  else
  {
    v36 = v125[0];
    v37 = sub_2483810C0();

    swift_willThrow();
    v35 = [a3 environmentConfiguration];
  }

  v39 = v119;
  v38 = v120;
  *&v8[OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__environmentConfiguration] = v35;
  v40 = type metadata accessor for DBDynamicContentController();
  v124.receiver = v8;
  v124.super_class = v40;
  v41 = objc_msgSendSuper2(&v124, sel_init);
  type metadata accessor for DBInstrumentClusterSceneCoordinator(0);
  v42 = qword_27EE95788;
  v43 = v41;
  if (v42 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v44 = sub_2482CB814(v43, qword_27EE95790);
    v45 = v20[200];
    v46 = *&v43[v45];
    v116 = v45;
    *&v43[v45] = v44;

    v117 = v23[195];
    [*&v43[v117] setHidden_];
    if ([a2 hasEmbeddedSecondaryContentArea])
    {
      type metadata accessor for DBDynamicContentBackgroundView();
      v47 = v117;
      [*&v43[v117] bounds];
      v52 = sub_248235C9C(v48, v49, v50, v51);
      v23 = &selRef_isEnabled;
      v53 = [*&v43[v47] layer];
      v54 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_cornerRadius;
      swift_beginAccess();
      [v53 setCornerRadius_];

      v55 = [*&v43[v47] layer];
      [v55 setMasksToBounds_];

      [*&v43[v47] addSubview_];
    }

    v56 = sub_248293D0C();
    v57 = v56;
    v115 = *(v56 + 16);
    if (!v115)
    {
      break;
    }

    v58 = 0;
    v113 = v24[197];
    v114 = v118 + 16;
    v111 = (v118 + 8);
    a2 = &selRef_setToView_;
    v112 = xmmword_24839CCB0;
    v20 = 0x1FBB28000;
    v110 = v56;
    v122 = v43;
    while (v58 < *(v57 + 16))
    {
      v59 = v57 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v58;
      v60 = *(v118 + 16);
      v61 = v123;
      v60(v39, v59, v123);
      v60(v38, v39, v61);
      v62 = *&v43[v116];
      if (!v62)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
      }

      type metadata accessor for DBCarouselViewController();
      v63 = v43;
      v64 = sub_248273694(v38, v62);
      v65 = v113;
      swift_beginAccess();
      v66 = v64;
      MEMORY[0x24C1CB0D0]();
      if (*((*&v43[v65] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v43[v65] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248383B50();
      }

      sub_248383B70();
      swift_endAccess();
      v67 = v117;
      v68 = *&v43[v117];
      v69 = v66;
      v70 = v68;
      v71 = [v69 view];
      if (!v71)
      {
        goto LABEL_25;
      }

      v72 = v71;
      [v70 addSubview_];

      sub_2483822B0();
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v81 = [v69 view];
      if (!v81)
      {
        goto LABEL_26;
      }

      v82 = v81;
      v121 = v58;
      [v81 setTranslatesAutoresizingMaskIntoConstraints_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
      v83 = swift_allocObject();
      *(v83 + 16) = v112;
      v84 = [v69 view];
      if (!v84)
      {
        goto LABEL_27;
      }

      v85 = v84;
      v86 = [v84 leadingAnchor];

      v87 = v122;
      v88 = [*(v67 + v122) leadingAnchor];
      v126.origin.x = v74;
      v126.origin.y = v76;
      v126.size.width = v78;
      v126.size.height = v80;
      v23 = v67;
      v89 = [v86 constraintEqualToAnchor:v88 constant:CGRectGetMinX(v126)];

      *(v83 + 32) = v89;
      v90 = [v69 view];
      if (!v90)
      {
        goto LABEL_28;
      }

      v91 = v90;
      v92 = [v90 topAnchor];

      v93 = [*(v23 + v87) topAnchor];
      v127.origin.x = v74;
      v127.origin.y = v76;
      v127.size.width = v78;
      v127.size.height = v80;
      v94 = [v92 constraintEqualToAnchor:v93 constant:CGRectGetMinY(v127)];

      *(v83 + 40) = v94;
      v95 = [v69 view];
      if (!v95)
      {
        goto LABEL_29;
      }

      v96 = v95;
      v97 = [v95 widthAnchor];

      v128.origin.x = v74;
      v128.origin.y = v76;
      v128.size.width = v78;
      v128.size.height = v80;
      v98 = [v97 0x1FBB28FF1];

      *(v83 + 48) = v98;
      v99 = [v69 view];

      if (!v99)
      {
        goto LABEL_30;
      }

      v58 = v121 + 1;
      v100 = objc_opt_self();
      v101 = [v99 heightAnchor];

      v129.origin.x = v74;
      v129.origin.y = v76;
      v129.size.width = v78;
      v129.size.height = v80;
      v102 = [v101 0x1FBB28FF1];

      *(v83 + 56) = v102;
      sub_248264108();
      v24 = sub_248383B00();

      [v100 activateConstraints_];

      v39 = v119;
      (*v111)(v119, v123);
      v38 = v120;
      v57 = v110;
      v43 = v122;
      if (v115 == v58)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

LABEL_21:

  return v43;
}

unint64_t sub_248264108()
{
  result = qword_27EE8FE90;
  if (!qword_27EE8FE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE8FE90);
  }

  return result;
}

id variable initialization expression of DBStatusBarDataBroadcaster.broadcaster()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

id DBStatusBarDataBroadcaster.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *DBStatusBarDataBroadcaster.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR___DBStatusBarDataBroadcaster_vehicleState;
  _s18VehicleStateSourceCMa();
  *&v0[v2] = sub_248294EFC();
  v3 = OBJC_IVAR___DBStatusBarDataBroadcaster_broadcaster;
  *&v1[v3] = [objc_opt_self() sharedInstance];
  swift_unknownObjectWeakInit();
  v10.receiver = v1;
  v10.super_class = DBStatusBarDataBroadcaster;
  v4 = objc_msgSendSuper2(&v10, sel_init);
  v5 = *&v4[OBJC_IVAR___DBStatusBarDataBroadcaster_vehicleState];
  v6 = *((*MEMORY[0x277D85000] & *v5) + 0x80);
  v7 = v4;
  v8 = v5;
  v6(v4, &off_285A51618);

  return v7;
}

uint64_t sub_248264480()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_2482644E4();
  return swift_unknownObjectRelease();
}

void sub_2482644E4()
{
  v0 = sub_248383D90();
  v1 = *sub_24827C040();
  if (os_log_type_enabled(v1, v0))
  {
    v2 = v1;
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_24814A378(0x626164616F6C6572, 0xEA0000000000656CLL, &v8);
    *(v3 + 12) = 2080;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v5 = 0xE300000000000000;
      v6 = 5457241;
    }

    else
    {
      v5 = 0xE200000000000000;
      v6 = 20302;
    }

    v7 = sub_24814A378(v6, v5, &v8);

    *(v3 + 14) = v7;
    _os_log_impl(&dword_248146000, v2, v0, "%s reloadable=%s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v4, -1, -1);
    MEMORY[0x24C1CD5F0](v3, -1, -1);
  }
}

uint64_t sub_248264738()
{
  v1 = [v0 vehicleState];
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();

  return v2;
}

uint64_t sub_248264814(uint64_t a1, unint64_t a2)
{
  v5 = sub_248383D90();
  v6 = *sub_24827C040();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_24814A378(0xD00000000000001BLL, 0x80000002483AB450, &v13);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24814A378(a1, a2, &v13);
    _os_log_impl(&dword_248146000, v7, v5, "%s identifier=%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v9, -1, -1);
    MEMORY[0x24C1CD5F0](v8, -1, -1);
  }

  if ((sub_248383A50() & 1) == 0)
  {
    return 0;
  }

  v10 = [v2 vehicleState];
  v11 = (*((*MEMORY[0x277D85000] & *v10) + 0x128))(a1, a2);

  return v11;
}

id sub_248264AD0()
{
  result = [v0 reloadable];
  if (result)
  {
    [result reload];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_248264B38(uint64_t a1, uint64_t a2)
{
  v5 = [v2 broadcaster];
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_24815A7A0;
  v7[3] = &block_descriptor_1;
  v6 = _Block_copy(v7);

  [v5 updateWithData_];
  _Block_release(v6);
}

void sub_248264C10(uint64_t a1, uint64_t a2)
{
  v5 = [v2 broadcaster];
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_24815A7A0;
  v7[3] = &block_descriptor_5;
  v6 = _Block_copy(v7);

  [v5 updateWithData_];
  _Block_release(v6);
}

uint64_t sub_248264CE8()
{
  v0 = sub_248383D90();
  v1 = *sub_24827C040();
  if (os_log_type_enabled(v1, v0))
  {
    v2 = v1;
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_24814A378(0xD000000000000027, 0x80000002483AB660, &v9);
    *(v3 + 12) = 2080;
    v5 = sub_248383960();
    v7 = sub_24814A378(v5, v6, &v9);

    *(v3 + 14) = v7;
    _os_log_impl(&dword_248146000, v2, v0, "%s identifier=%s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v4, -1, -1);
    MEMORY[0x24C1CD5F0](v3, -1, -1);
  }

  return 0;
}

unint64_t sub_248264E40()
{
  result = qword_27EE918F0;
  if (!qword_27EE918F0)
  {
    sub_24814FB28(255, &qword_27EE90740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE918F0);
  }

  return result;
}

char *DBCalendarLeafIcon.__allocating_init(with:drawBorder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [objc_allocWithZone(MEMORY[0x277D660A8]) init];
  *&v3[OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider] = v4;
  v5 = a1;
  v6 = DBLeafIcon.init(with:drawBorder:)();
  v7 = *&v6[OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider];
  v8 = v6;
  [v7 setDelegate_];

  return v8;
}

char *DBCalendarLeafIcon.init(with:drawBorder:)(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D660A8]) init];
  *(v1 + OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider) = v3;
  v4 = a1;
  v5 = DBLeafIcon.init(with:drawBorder:)();
  v6 = *&v5[OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider];
  v7 = v5;
  [v6 setDelegate_];

  return v7;
}

Swift::Void __swiftcall DBCalendarLeafIcon.localeChanged()()
{
  [v0 reloadIconImage];
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DBCalendarLeafIcon();
  objc_msgSendSuper2(&v1, sel_localeChanged);
}

id sub_2482651A8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [*(v4 + OBJC_IVAR____TtC9DashBoard18DBCalendarLeafIcon_imageProvider) *a4];

  return v5;
}

id DBCalendarLeafIcon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBCalendarLeafIcon();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2482652B8(uint64_t a1)
{
  v2 = sub_2483843C0();

  return sub_2482652FC(a1, v2);
}

unint64_t sub_2482652FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_248265550(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1CB9B0](v9, a1);
      sub_2482655AC(v9);
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

unint64_t sub_2482653C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE901E0);
    v3 = sub_2483845F0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2482654E0(v4, v13);
      result = sub_2482652B8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_24825E6A0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_2482654E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE935A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DBAssetWallpaperDataProvider.dataProviderDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider_dataProviderDelegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t DBAssetWallpaperDataProvider.init(themeAssetDocument:displayID:)(void *a1, uint64_t a2, unint64_t a3)
{
  v79 = a2;
  v80 = a3;
  v68 = sub_248381170();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v84 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v66 - v10;
  v11 = sub_2483825A0();
  v81 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v82 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90760);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v66 - v14;
  v15 = sub_248381840();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_248381690();
  v72 = *(v19 - 8);
  v73 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v3;
  v69 = OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider_dataProviderDelegate;
  *&v3[OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider_dataProviderDelegate] = 0;
  v70 = a1;
  DBThemeAssetDocument.document.getter(v18);
  sub_248381830();
  (*(v16 + 8))(v18, v15);
  v71 = v21;
  result = sub_248381680();
  v23 = result;
  v77 = *(result + 16);
  if (v77)
  {
    v24 = 0;
    v78 = v81 + 16;
    v25 = (v7 + 8);
    v76 = (v81 + 8);
    while (1)
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v81 + 16))(v82, v23 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v24, v11);
      sub_248382540();
      v88 = v79;
      v89 = v80;

      v26 = v11;
      MEMORY[0x24C1C8E70](&v88, v11, MEMORY[0x277D837D0]);
      sub_24822D648(&qword_27EE904D8, &qword_27EE8FED8);
      sub_248383AE0();
      sub_248383AE0();
      if (v88 == v86 && v89 == v87)
      {
        break;
      }

      v27 = sub_248384680();
      v28 = *v25;
      (*v25)(v84, v6);
      v28(v83, v6);

      if (v27)
      {
        goto LABEL_13;
      }

      ++v24;
      v11 = v26;
      result = (*v76)(v82, v26);
      if (v77 == v24)
      {
        goto LABEL_8;
      }
    }

    v44 = *v25;
    (*v25)(v84, v6);
    v44(v83, v6);

LABEL_13:

    v45 = v81;
    v46 = v75;
    (*(v81 + 32))(v75, v82, v26);
    (*(v45 + 56))(v46, 0, 1, v26);
    sub_24822D578(v46, &unk_27EE90760);
    v47 = v74;
    v48 = v70;
    *&v74[OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider_themeAssetDocument] = v70;
    v49 = &v47[OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider__displayID];
    v50 = v80;
    *v49 = v79;
    *(v49 + 1) = v50;
    v51 = v48;
    v52 = sub_248383D90();
    v53 = *sub_24827BA50();
    if (os_log_type_enabled(v53, v52))
    {
      v54 = v53;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v88 = v56;
      *v55 = 136315138;
      v57 = [v51 documentURL];
      v58 = v66;
      sub_248381120();

      sub_24826BEF4();
      v59 = v68;
      v60 = sub_248384650();
      v62 = v61;
      (*(v67 + 8))(v58, v59);
      v63 = sub_24814A378(v60, v62, &v88);

      *(v55 + 4) = v63;
      _os_log_impl(&dword_248146000, v54, v52, "[Wallpaper Data Provider] Loaded asset from %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x24C1CD5F0](v56, -1, -1);
      MEMORY[0x24C1CD5F0](v55, -1, -1);
    }

    (*(v72 + 8))(v71, v73);
    v64 = type metadata accessor for DBAssetWallpaperDataProvider();
    v85.receiver = v47;
    v85.super_class = v64;
    v65 = objc_msgSendSuper2(&v85, sel_init);

    return v65;
  }

  else
  {
LABEL_8:

    v29 = v75;
    (*(v81 + 56))(v75, 1, 1, v11);
    sub_24822D578(v29, &unk_27EE90760);
    v30 = sub_248383DA0();
    v31 = *sub_24827BA50();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = v31;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v88 = v34;
      *v33 = 136315394;
      v35 = v70;
      v36 = [v70 documentURL];
      v37 = v66;
      sub_248381120();

      sub_24826BEF4();
      v38 = v68;
      v39 = sub_248384650();
      v41 = v40;
      (*(v67 + 8))(v37, v38);
      v42 = sub_24814A378(v39, v41, &v88);

      *(v33 + 4) = v42;
      *(v33 + 12) = 2080;
      v43 = sub_24814A378(v79, v80, &v88);

      *(v33 + 14) = v43;
      _os_log_impl(&dword_248146000, v32, v30, "[Wallpaper Data Provider] Unable to load asset from %s: missing display (%s)", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v34, -1, -1);
      MEMORY[0x24C1CD5F0](v33, -1, -1);
    }

    else
    {
    }

    (*(v72 + 8))(v71, v73);
    swift_unknownObjectRelease();
    type metadata accessor for DBAssetWallpaperDataProvider();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_2482661BC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_248382770();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

Swift::Int __swiftcall DBAssetWallpaperDataProvider.version()()
{
  v0 = sub_248381690();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248381840();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  DBThemeAssetDocument.document.getter(v7);
  sub_248381830();
  (*(v5 + 8))(v7, v4);
  v8 = sub_248381670();
  result = (*(v1 + 8))(v3, v0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall DBAssetWallpaperDataProvider.displayID()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider__displayID);
  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider__displayID + 8);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

id sub_2482667D8()
{
  v0 = sub_248382750();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-v5];
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11];
  v19 = sub_2483826E0();
  sub_248382760();
  v13 = sub_248382730();
  v14 = *(v1 + 8);
  v14(v12, v0);
  sub_248382760();
  LOBYTE(v12) = sub_248382720();
  v14(v9, v0);
  sub_248382760();
  LOBYTE(v9) = sub_248382710();
  v14(v6, v0);
  sub_248382760();
  v15 = sub_248382740();
  v14(v3, v0);
  v16 = objc_allocWithZone(MEMORY[0x277CF93A0]);
  return [v16 initWithSupportsDynamicAppearance:v19 & 1 supportsDashboardPlatterMaterials:v13 & 1 iconLabelsRequireBackground:v12 & 1 hideRoundedCorners:v9 & 1 black:v15 & 1];
}

uint64_t sub_248266A14(uint64_t (*a1)(uint64_t, id))
{
  v3 = v1;
  v4 = sub_2483825A0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v1) + 0xD0))(v6);
  v9 = sub_248382590();
  (*(v5 + 8))(v8, v4);
  v10 = v3;
  v11 = a1(v9, v10);

  return v11;
}

uint64_t sub_248266B54(uint64_t a1, uint64_t a2, void (*a3)(char *, void, uint64_t, uint64_t))
{
  v69 = a2;
  v70 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v58 = &v57 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908F0);
  v6 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v59 = &v57 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93B90);
  MEMORY[0x28223BE20](v60);
  v61 = &v57 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90900);
  MEMORY[0x28223BE20](v71);
  v73 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFE8);
  v11 = *(v10 - 8);
  v67 = v10;
  v68 = v11;
  MEMORY[0x28223BE20](v10);
  v64 = &v57 - v12;
  v66 = sub_248381840();
  v13 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90908);
  MEMORY[0x28223BE20](v22 - 8);
  v65 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v57 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v57 - v28;
  sub_2483826F0();
  v62 = v4;
  v30 = *(v4 + 56);
  v31 = 1;
  v63 = v3;
  v30(v29, 0, 1, v3);
  v72 = v6;
  v32 = *(v6 + 56);
  v74 = v29;
  v32(v29, 0, 1, v75);
  sub_248382420();
  DBThemeAssetDocument.document.getter(v15);
  sub_248381820();
  (*(v13 + 8))(v15, v66);
  v33 = v67;
  sub_24825ED6C(v77, v76);
  sub_248232C78(v21, v18, &qword_27EE8FFE0);
  v34 = v68;
  if ((*(v68 + 48))(v18, 1, v33) != 1)
  {
    v35 = *(v34 + 32);
    v70 = v32;
    v36 = v64;
    v35(v64, v18, v33);
    __swift_project_boxed_opaque_existential_0(v76, v76[3]);
    sub_2483825C0();
    v37 = v36;
    v32 = v70;
    (*(v34 + 8))(v37, v33);
    v31 = 0;
  }

  sub_24822D578(v21, &qword_27EE8FFE0);
  v38 = v31;
  v39 = v75;
  v32(v26, v38, 1, v75);
  __swift_destroy_boxed_opaque_existential_0(v76);
  v40 = *(v71 + 48);
  v41 = v73;
  v42 = v74;
  sub_248232C78(v74, v73, &qword_27EE90908);
  sub_248232C78(v26, v41 + v40, &qword_27EE90908);
  v43 = *(v72 + 48);
  if (v43(v41, 1, v39) != 1)
  {
    v45 = v65;
    sub_248232C78(v41, v65, &qword_27EE90908);
    if (v43(v41 + v40, 1, v39) == 1)
    {
      sub_24822D578(v26, &qword_27EE90908);
      sub_24822D578(v42, &qword_27EE90908);
      sub_24822D578(v45, &unk_27EE908F0);
      goto LABEL_8;
    }

    v46 = *(v60 + 48);
    v47 = v45;
    v48 = v61;
    sub_248231B84(v47, v61, &unk_27EE908F0);
    sub_248231B84(v41 + v40, v48 + v46, &unk_27EE908F0);
    v49 = v62;
    v50 = *(v62 + 48);
    v51 = v63;
    if (v50(v48, 1, v63) == 1)
    {
      sub_24822D578(v26, &qword_27EE90908);
      sub_24822D578(v74, &qword_27EE90908);
      if (v50(v48 + v46, 1, v51) == 1)
      {
        sub_24822D578(v48, &unk_27EE908F0);
        v44 = 1;
LABEL_16:
        sub_24822D578(v41, &qword_27EE90908);
        return v44 & 1;
      }
    }

    else
    {
      v52 = v59;
      sub_248232C78(v48, v59, &unk_27EE908F0);
      if (v50(v48 + v46, 1, v51) != 1)
      {
        v53 = v58;
        (*(v49 + 32))(v58, v48 + v46, v51);
        sub_24826D8D0();
        v54 = v52;
        v44 = sub_248383910();
        v55 = *(v49 + 8);
        v55(v53, v51);
        sub_24822D578(v26, &qword_27EE90908);
        sub_24822D578(v74, &qword_27EE90908);
        v55(v54, v51);
        sub_24822D578(v48, &unk_27EE908F0);
        goto LABEL_16;
      }

      sub_24822D578(v26, &qword_27EE90908);
      sub_24822D578(v74, &qword_27EE90908);
      (*(v49 + 8))(v52, v51);
    }

    sub_24822D578(v48, &unk_27EE93B90);
    v44 = 0;
    goto LABEL_16;
  }

  sub_24822D578(v26, &qword_27EE90908);
  sub_24822D578(v42, &qword_27EE90908);
  if (v43(v41 + v40, 1, v39) != 1)
  {
LABEL_8:
    sub_24822D578(v41, &qword_27EE90900);
    v44 = 0;
    return v44 & 1;
  }

  sub_24822D578(v41, &qword_27EE90908);
  v44 = 1;
  return v44 & 1;
}

void sub_24826750C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_248382770();
  MEMORY[0x28223BE20](v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = MEMORY[0x277D84F90];
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24826BF4C(0, *(v23 + 16) + 1, 1);
          v23 = v39;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_24826BF4C(v25 > 1, v26 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v26 + 1;
        v36 = v23;
        v22((v23 + v13 + v26 * v14), v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

id sub_2482677F4(void *a1, uint64_t a2, void (*a3)(uint64_t, void *))
{
  v5 = sub_2483825A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v10 = a1;
  v9();
  v11 = sub_248382590();
  (*(v6 + 8))(v8, v5);
  v12 = v10;
  a3(v11, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE908D8);
  v13 = sub_248383B00();

  return v13;
}

uint64_t DBAssetWallpaperDataProvider.dynamicAppearanceWallpapers(for:)(void *a1)
{
  v2 = v1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v50 - v4;
  v60 = sub_2483824B0();
  v5 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = sub_2483825A0();
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v14 - 8);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v50 - v18;
  v20 = [a1 displayThemeData];
  if (!v20)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = v20;
  sub_24814FB28(0, &qword_27EE8FEF8);
  v22 = sub_2483838A0();

  if (!*(v22 + 16) || (v23 = sub_24822B8A0(*(v2 + OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider__displayID), *(v2 + OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider__displayID + 8)), (v24 & 1) == 0))
  {

    return MEMORY[0x277D84F90];
  }

  v50 = v19;
  v51 = v7;
  v57 = v5;
  v25 = *(*(v22 + 56) + 8 * v23);

  v26 = [v25 currentLayoutID];

  v27 = sub_248383960();
  v29 = v28;

  v30 = *((*MEMORY[0x277D85000] & *v2) + 0xD0);
  v52 = v2;
  v30();
  v31 = sub_248382590();
  (*(v56 + 8))(v13, v11);
  v32 = v60;
  v55 = *(v31 + 16);
  if (!v55)
  {
LABEL_11:

    v42 = 1;
    v44 = v51;
    v43 = v52;
    v45 = v57;
    v46 = v50;
LABEL_18:
    v49 = v53;
    (*(v45 + 56))(v46, v42, 1, v32);
    sub_248232C78(v46, v49, &qword_27EE8FE30);
    if ((*(v45 + 48))(v49, 1, v32) == 1)
    {
      sub_24822D578(v46, &qword_27EE8FE30);
    }

    else
    {
      (*(v45 + 32))(v44, v49, v32);
      sub_248268008(v44, v43, v61);
      (*(v45 + 8))(v44, v32);
      sub_24822D578(v46, &qword_27EE8FE30);
      result = v61[0];
      if (v61[0])
      {
        return result;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v33 = 0;
  v34 = v58;
  v56 = v57 + 16;
  v35 = v54 + 1;
  v54 = (v57 + 8);
  while (v33 < *(v31 + 16))
  {
    v5 = v31;
    (*(v57 + 16))(v10, v31 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v33, v32);
    v36 = v10;
    sub_248382450();
    swift_getKeyPath();
    v37 = v27;
    v38 = v29;
    v39 = v59;
    sub_248381870();

    v40 = v39;
    v29 = v38;
    v27 = v37;
    (*v35)(v34, v40);
    if (v61[0] == v37 && v61[1] == v29)
    {

LABEL_17:

      v32 = v60;
      v48 = v36;
      v45 = v57;
      v46 = v50;
      (*(v57 + 32))(v50, v48, v60);
      v42 = 0;
      v44 = v51;
      v43 = v52;
      goto LABEL_18;
    }

    v41 = sub_248384680();

    if (v41)
    {

      goto LABEL_17;
    }

    ++v33;
    v10 = v36;
    v32 = v60;
    (*v54)(v36, v60);
    v31 = v5;
    if (v55 == v33)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  result = (*(v5 + 8))(v29, v32);
  __break(1u);
  return result;
}

uint64_t sub_248268008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a2;
  v38 = a3;
  v6 = sub_248382770();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908E0);
  MEMORY[0x28223BE20](v10 - 8);
  v33 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v31 - v16;
  v35 = a1;
  v18 = sub_248382400();
  v36 = a1;
  v37 = a2;
  sub_2482661BC(sub_24826D874, v18, v17);

  sub_248232C78(v17, v14, &unk_27EE908E0);
  LODWORD(a1) = (*(v7 + 48))(v14, 1, v6);
  v19 = v14;
  v20 = v38;
  v21 = sub_24822D578(v19, &unk_27EE908E0);
  v22 = v35;
  if (a1 != 1)
  {
LABEL_10:
    MEMORY[0x28223BE20](v21);
    v31[-2] = v29;
    v31[-1] = v22;
    v30 = sub_2482690A0(sub_24826D8A4);
    result = sub_24822D578(v17, &unk_27EE908E0);
    *v20 = v30;
    return result;
  }

  v31[1] = v3;
  v32 = v17;
  result = sub_248382400();
  v24 = result;
  v25 = *(result + 16);
  if (!v25)
  {
LABEL_7:
    v17 = v32;
    sub_24822D578(v32, &unk_27EE908E0);

    v27 = 1;
    v28 = v33;
LABEL_9:
    (*(v7 + 56))(v28, v27, 1, v6);
    v21 = sub_248231B84(v28, v17, &unk_27EE908E0);
    v20 = v38;
    v22 = v35;
    goto LABEL_10;
  }

  v26 = 0;
  while (v26 < *(v24 + 16))
  {
    (*(v7 + 16))(v9, v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, v6);
    if (sub_2483826E0())
    {
      v17 = v32;
      sub_24822D578(v32, &unk_27EE908E0);

      v28 = v33;
      (*(v7 + 32))(v33, v9, v6);
      v27 = 0;
      goto LABEL_9;
    }

    ++v26;
    result = (*(v7 + 8))(v9, v6);
    if (v25 == v26)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2482683E0(uint64_t a1, uint64_t a2, void (*a3)(char *, void, uint64_t, uint64_t))
{
  v71 = a2;
  v72 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = &v59 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908F0);
  v7 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v60 = &v59 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93B90);
  MEMORY[0x28223BE20](v61);
  v62 = &v59 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90900);
  MEMORY[0x28223BE20](v73);
  v75 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFE8);
  v12 = *(v11 - 8);
  v69 = v11;
  v70 = v12;
  MEMORY[0x28223BE20](v11);
  v66 = &v59 - v13;
  v68 = sub_248381840();
  v14 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFE0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90908);
  MEMORY[0x28223BE20](v23 - 8);
  v67 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v59 - v29;
  v65 = a1;
  sub_2483826F0();
  v63 = v5;
  v31 = *(v5 + 56);
  v32 = 1;
  v64 = v4;
  v31(v30, 0, 1, v4);
  v74 = v7;
  v33 = *(v7 + 56);
  v76 = v30;
  v33(v30, 0, 1, v77);
  sub_248382420();
  DBThemeAssetDocument.document.getter(v16);
  sub_248381820();
  (*(v14 + 8))(v16, v68);
  v34 = v69;
  sub_24825ED6C(v79, v78);
  sub_248232C78(v22, v19, &qword_27EE8FFE0);
  v35 = v70;
  if ((*(v70 + 48))(v19, 1, v34) != 1)
  {
    v36 = *(v35 + 32);
    v72 = v33;
    v37 = v66;
    v36(v66, v19, v34);
    __swift_project_boxed_opaque_existential_0(v78, v78[3]);
    sub_2483825C0();
    v38 = v37;
    v33 = v72;
    (*(v35 + 8))(v38, v34);
    v32 = 0;
  }

  sub_24822D578(v22, &qword_27EE8FFE0);
  v39 = v77;
  v33(v27, v32, 1, v77);
  __swift_destroy_boxed_opaque_existential_0(v78);
  v40 = *(v73 + 48);
  v41 = v75;
  v42 = v76;
  sub_248232C78(v76, v75, &qword_27EE90908);
  sub_248232C78(v27, v41 + v40, &qword_27EE90908);
  v43 = *(v74 + 48);
  if (v43(v41, 1, v39) != 1)
  {
    v45 = v67;
    sub_248232C78(v41, v67, &qword_27EE90908);
    if (v43(v41 + v40, 1, v39) != 1)
    {
      v48 = *(v61 + 48);
      v49 = v45;
      v50 = v62;
      sub_248231B84(v49, v62, &unk_27EE908F0);
      sub_248231B84(v41 + v40, v50 + v48, &unk_27EE908F0);
      v51 = v63;
      v52 = *(v63 + 48);
      v53 = v64;
      if (v52(v50, 1, v64) == 1)
      {
        sub_24822D578(v27, &qword_27EE90908);
        sub_24822D578(v76, &qword_27EE90908);
        if (v52(v50 + v48, 1, v53) == 1)
        {
          sub_24822D578(v50, &unk_27EE908F0);
          goto LABEL_5;
        }
      }

      else
      {
        v54 = v60;
        sub_248232C78(v50, v60, &unk_27EE908F0);
        if (v52(v50 + v48, 1, v53) != 1)
        {
          v55 = v59;
          (*(v51 + 32))(v59, v50 + v48, v53);
          sub_24826D8D0();
          v56 = v54;
          v57 = sub_248383910();
          v58 = *(v51 + 8);
          v58(v55, v53);
          sub_24822D578(v27, &qword_27EE90908);
          sub_24822D578(v76, &qword_27EE90908);
          v58(v56, v53);
          sub_24822D578(v50, &unk_27EE908F0);
          sub_24822D578(v41, &qword_27EE90908);
          if (v57)
          {
            goto LABEL_6;
          }

LABEL_11:
          v44 = 0;
          return v44 & 1;
        }

        sub_24822D578(v27, &qword_27EE90908);
        sub_24822D578(v76, &qword_27EE90908);
        (*(v51 + 8))(v54, v53);
      }

      sub_24822D578(v50, &unk_27EE93B90);
      v46 = &qword_27EE90908;
LABEL_10:
      sub_24822D578(v41, v46);
      goto LABEL_11;
    }

    sub_24822D578(v27, &qword_27EE90908);
    sub_24822D578(v42, &qword_27EE90908);
    sub_24822D578(v45, &unk_27EE908F0);
LABEL_9:
    v46 = &qword_27EE90900;
    goto LABEL_10;
  }

  sub_24822D578(v27, &qword_27EE90908);
  sub_24822D578(v42, &qword_27EE90908);
  if (v43(v41 + v40, 1, v39) != 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_24822D578(v41, &qword_27EE90908);
LABEL_6:
  v44 = sub_2483826E0();
  return v44 & 1;
}

void sub_248268DB0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v22[1] = a2;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_24839C700;
  sub_2483826F0();
  sub_248381860();
  (*(v9 + 8))(v11, v8);
  v22[0] = *(a1 + OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider__displayID);
  sub_248382450();
  swift_getKeyPath();
  sub_248381870();

  (*(v5 + 8))(v7, v4);
  sub_2483271E8();
  v13 = v12;
  v14 = sub_2482667D8();
  v15 = sub_248383930();

  v16 = sub_248383930();
  v17 = sub_248383930();

  if (v13)
  {
    v18 = sub_248383930();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CF9200]) initWithIdentifier:v15 displayID:v16 layoutID:v17 cacheID:v18 traits:v14];

  v21 = v23;
  v20 = v24;
  *(v23 + 32) = v19;
  *v20 = v21;
}

uint64_t sub_2482690A0(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_248382770();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_248232C78(v1, &v11 - v8, &unk_27EE908E0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v13, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v13;
  }

  return result;
}

void *DBAssetWallpaperDataProvider.loadWallpaper(from:)(uint64_t a1)
{
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780);
  v96 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v94 - v2;
  v108 = sub_248382770();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v95 = &v94 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v94 - v7;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v98 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v94 - v9;
  v117 = sub_2483824B0();
  v111 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v114 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = &v94 - v12;
  MEMORY[0x28223BE20](v13);
  v100 = &v94 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8);
  v101 = *(v116 - 1);
  MEMORY[0x28223BE20](v116);
  v115 = &v94 - v15;
  v16 = sub_248381690();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_248381840();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90760);
  MEMORY[0x28223BE20](v24 - 8);
  v103 = &v94 - v25;
  v26 = sub_2483825A0();
  v118 = *(v26 - 8);
  v119 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v102 = &v94 - v30;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v120 = result;
  v94 = v8;
  v99 = a1;
  swift_unknownObjectRetain();
  DBThemeAssetDocument.document.getter(v23);
  sub_248381830();
  (*(v21 + 8))(v23, v20);
  v32 = sub_248381680();
  result = (*(v17 + 8))(v19, v16);
  v34 = v118;
  v33 = v119;
  v112 = *(v32 + 16);
  if (v112)
  {
    v35 = 0;
    v113 = v118 + 16;
    v36 = (v101 + 8);
    v37 = (v118 + 8);
    while (v35 < *(v32 + 16))
    {
      (*(v34 + 16))(v28, v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v35, v33);
      v38 = v115;
      sub_248382540();
      v39 = v116;
      sub_248381860();
      (*v36)(v38, v39);
      v41 = v121;
      v40 = v122;
      v42 = [v120 displayID];
      v43 = sub_248383960();
      v45 = v44;

      if (v41 == v43 && v40 == v45)
      {

LABEL_13:

        v34 = v118;
        v33 = v119;
        v49 = v103;
        (*(v118 + 32))(v103, v28, v119);
        v48 = 0;
        goto LABEL_14;
      }

      v47 = sub_248384680();

      if (v47)
      {
        goto LABEL_13;
      }

      ++v35;
      v33 = v119;
      result = (*v37)(v28, v119);
      v34 = v118;
      if (v112 == v35)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_11:

  v48 = 1;
  v49 = v103;
LABEL_14:
  (*(v34 + 56))(v49, v48, 1, v33);
  if ((*(v34 + 48))(v49, 1, v33) == 1)
  {
    swift_unknownObjectRelease();
    sub_24822D578(v49, &unk_27EE90760);
    return 0;
  }

  (*(v34 + 32))(v102, v49, v33);
  result = sub_248382590();
  v50 = result;
  v51 = result[2];
  if (!v51)
  {
LABEL_25:

    swift_unknownObjectRelease();
LABEL_37:
    (*(v118 + 8))(v102, v119);
    return 0;
  }

  v52 = 0;
  v53 = (v98 + 8);
  v116 = (v111 + 8);
  while (v52 < v50[2])
  {
    (*(v111 + 16))(v114, v50 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v52, v117);
    v54 = v109;
    sub_248382450();
    swift_getKeyPath();
    v55 = v110;
    sub_248381870();

    (*v53)(v54, v55);
    v57 = v121;
    v56 = v122;
    v58 = [v120 layoutID];
    v59 = sub_248383960();
    v61 = v60;

    if (v57 == v59 && v56 == v61)
    {

LABEL_27:

      v64 = *(v111 + 32);
      v65 = v97;
      v66 = v117;
      v64(v97, v114, v117);
      v64(v100, v65, v66);
      result = sub_248382400();
      v67 = result;
      v68 = result[2];
      if (!v68)
      {
LABEL_36:

        swift_unknownObjectRelease();
        (*v116)(v100, v117);
        goto LABEL_37;
      }

      v69 = 0;
      v70 = (v96 + 8);
      v115 = (v106 + 8);
      while (v69 < v67[2])
      {
        (*(v106 + 16))(v107, v67 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v69, v108);
        v71 = v104;
        sub_2483826F0();
        v72 = v105;
        sub_248381860();
        (*v70)(v71, v72);
        v74 = v121;
        v73 = v122;
        v75 = [v120 wallpaperID];
        v76 = sub_248383960();
        v78 = v77;

        if (v74 == v76 && v73 == v78)
        {

LABEL_41:

          v81 = *(v106 + 32);
          v82 = v95;
          v83 = v108;
          v81(v95, v107, v108);
          v84 = v94;
          v81(v94, v82, v83);
          v85 = v120;
          v86 = [v120 wallpaperID];
          if (!v86)
          {
            sub_248383960();
            v86 = sub_248383930();
          }

          v87 = [v85 displayID];
          if (!v87)
          {
            sub_248383960();
            v87 = sub_248383930();
          }

          v88 = [v85 layoutID];
          if (!v88)
          {
            sub_248383960();
            v88 = sub_248383930();
          }

          sub_2483271E8();
          v90 = v89;
          v91 = sub_2482667D8();
          if (v90)
          {
            v92 = sub_248383930();
          }

          else
          {
            v92 = 0;
          }

          v93 = [objc_allocWithZone(MEMORY[0x277CF9200]) initWithIdentifier:v86 displayID:v87 layoutID:v88 cacheID:v92 traits:v91];

          swift_unknownObjectRelease();
          (*v115)(v84, v108);
          (*v116)(v100, v117);
          (*(v118 + 8))(v102, v119);
          return v93;
        }

        v80 = sub_248384680();

        if (v80)
        {
          goto LABEL_41;
        }

        ++v69;
        result = (*v115)(v107, v108);
        if (v68 == v69)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_53;
    }

    v63 = sub_248384680();

    if (v63)
    {
      goto LABEL_27;
    }

    ++v52;
    result = (*v116)(v114, v117);
    if (v51 == v52)
    {
      goto LABEL_25;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t DBAssetWallpaperDataProvider.resolve(_:)(uint64_t a1)
{
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AC0);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v154 = &v148 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v2;
  MEMORY[0x28223BE20](v3);
  v155 = &v148 - v4;
  v160 = sub_248381610();
  v158 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v151 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v159 = &v148 - v7;
  v163 = sub_2483815D0();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v150 = (&v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v152 = &v148 - v10;
  MEMORY[0x28223BE20](v11);
  v164 = &v148 - v12;
  v161 = v13;
  MEMORY[0x28223BE20](v14);
  v165 = &v148 - v15;
  v169 = sub_2483826B0();
  v170 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v171 = (&v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780);
  v172 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = &v148 - v17;
  v18 = sub_248382770();
  v179 = *(v18 - 8);
  v180 = v18;
  MEMORY[0x28223BE20](v18);
  v183 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v148 - v21;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v174 = *(v185 - 1);
  MEMORY[0x28223BE20](v185);
  v184 = &v148 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v24 - 8);
  v176 = &v148 - v25;
  v26 = sub_2483824B0();
  v187 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v175 = &v148 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v148 - v33;
  v35 = sub_2483825A0();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v181 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v148 - v39;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v149 = v22;
    v186 = v26;
    v173 = a1;
    v42 = result;
    swift_unknownObjectRetain();
    v188 = v42;
    v43 = [v42 displayID];
    v44 = sub_248383960();
    v46 = v45;

    v47 = (*MEMORY[0x277D85000] & *v182) + 208;
    v167 = *((*MEMORY[0x277D85000] & *v182) + 0xD0);
    v166 = v47;
    v167();
    sub_248382540();
    v48 = *(v36 + 8);
    v168 = v35;
    v49 = v35;
    v50 = v48;
    v48(v40, v49);
    sub_248381860();
    (*(v32 + 8))(v34, v31);
    if (v44 == aBlock && v46 == v190)
    {
    }

    else
    {
      v52 = sub_248384680();

      if ((v52 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v53 = v181;
    (v167)(v51);
    v54 = sub_248382590();
    v50(v53, v168);
    v56 = v186;
    v55 = v187;
    v181 = *(v54 + 16);
    if (v181)
    {
      v57 = 0;
      v182 = (v187 + 16);
      v58 = (v174 + 8);
      v59 = (v187 + 8);
      while (v57 < *(v54 + 16))
      {
        (*(v55 + 16))(v28, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v57, v56);
        v60 = v184;
        sub_248382450();
        swift_getKeyPath();
        v61 = v185;
        sub_248381870();

        (*v58)(v60, v61);
        v63 = aBlock;
        v62 = v190;
        v64 = [v188 layoutID];
        v46 = sub_248383960();
        v66 = v65;

        if (v63 == v46 && v62 == v66)
        {

LABEL_17:

          v56 = v186;
          v55 = v187;
          v70 = v176;
          (*(v187 + 32))(v176, v28, v186);
          v69 = 0;
          goto LABEL_18;
        }

        v68 = sub_248384680();

        if (v68)
        {
          goto LABEL_17;
        }

        ++v57;
        v56 = v186;
        (*v59)(v28, v186);
        v55 = v187;
        if (v181 == v57)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_15:

    v69 = 1;
    v70 = v176;
LABEL_18:
    (*(v55 + 56))(v70, v69, 1, v56);
    if ((*(v55 + 48))(v70, 1, v56) == 1)
    {
      swift_unknownObjectRelease();
      sub_24822D578(v70, &qword_27EE8FE30);
      return 0;
    }

    (*(v55 + 32))(v175, v70, v56);
    v71 = sub_248382400();
    v54 = *(v71 + 16);
    v72 = v180;
    if (v54)
    {
      v59 = 0;
      v73 = v179 + 16;
      v46 = (v172 + 8);
      v185 = (v179 + 8);
      while (1)
      {
        if (v59 >= *(v71 + 16))
        {
          __break(1u);
          goto LABEL_60;
        }

        (*(v179 + 16))(v183, v71 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v59, v72);
        v74 = v177;
        sub_2483826F0();
        v75 = v178;
        sub_248381860();
        (*v46)(v74, v75);
        v77 = aBlock;
        v76 = v190;
        v78 = [v188 wallpaperIdentifier];
        v79 = sub_248383960();
        v81 = v80;

        if (v77 == v79 && v76 == v81)
        {
          break;
        }

        v83 = sub_248384680();

        if (v83)
        {
          goto LABEL_34;
        }

        v59 = (v59 + 1);
        v72 = v180;
        (*v185)(v183, v180);
        if (v54 == v59)
        {
          goto LABEL_29;
        }
      }

LABEL_34:

      v84 = v180;
      v54 = v149;
      (*(v179 + 32))(v149, v183, v180);
      v59 = v171;
      sub_248382700();
      v55 = v170;
      v56 = v169;
      v85 = (*(v170 + 88))(v59, v169);
      if (v85 == *MEMORY[0x277CF8EF0])
      {
        (*(v55 + 96))(v59, v56);
        sub_24814FB28(0, &unk_27EE907A8);
        swift_unknownObjectRetain();

        v86 = sub_248383FE0();
        v87 = objc_allocWithZone(MEMORY[0x277CF9338]);
        v88 = [v87 initWithWallpaperInformation:v188 color:v86];

        swift_unknownObjectRelease_n();

        (*v185)(v54, v84);
        (*(v187 + 8))(v175, v186);
        return v88;
      }

      v46 = v187;
      if (v85 == *MEMORY[0x277CF8EF8])
      {
        (*(v55 + 96))(v59, v56);
        v89 = v162;
        v90 = *(v162 + 32);
        v91 = v165;
        v92 = v163;
        v90(v165, v59, v163);
        v93 = v164;
        (*(v89 + 16))(v164, v91, v92);
        v94 = (*(v89 + 80) + 16) & ~*(v89 + 80);
        v95 = swift_allocObject();
        v90((v95 + v94), v93, v92);
        v96 = objc_allocWithZone(MEMORY[0x277CF9338]);
        v193 = sub_24826D818;
        v194 = v95;
        aBlock = MEMORY[0x277D85DD0];
        v190 = 1107296256;
        v191 = sub_24815A7A0;
        v192 = &block_descriptor_12;
        v97 = _Block_copy(&aBlock);
        v98 = [v96 initWithWallpaperInformation:v188 imageResolver:v97];
        swift_unknownObjectRelease();
        _Block_release(v97);

        (*(v89 + 8))(v91, v92);
LABEL_38:
        (*v185)(v54, v180);
        v46[1](v175, v186);
        return v98;
      }

      if (v85 == *MEMORY[0x277CF8F00])
      {
        (*(v55 + 96))(v59, v56);
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE907A0);
        v100 = *(v59 + *(v99 + 64) + 8);
        v101 = v158;
        v102 = v160;
        (*(v158 + 32))(v159, v59, v160);
        v103 = sub_248381600();
        if (v103)
        {
          v104 = v103;
          v105 = v103;
          if (v100)
          {
            v106 = sub_248383930();
          }

          else
          {
            v106 = 0;
          }

          v141 = [objc_allocWithZone(MEMORY[0x277CF9340]) initWithPackage:v104 state:v106];

          v142 = objc_allocWithZone(MEMORY[0x277CF9338]);
          v88 = [v142 initWithWallpaperInformation:v188 statefulPackage:v141];

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          v88 = 0;
        }

        v143 = *(v99 + 48);
        (*(v101 + 8))(v159, v102);
LABEL_55:
        (*v185)(v54, v180);
        v46[1](v175, v186);
        v144 = sub_2483826A0();
        (*(*(v144 - 8) + 8))(v59 + v143, v144);
        return v88;
      }

      v73 = v160;
      if (v85 == *MEMORY[0x277CF8ED8])
      {
        (*(v55 + 96))(v59, v56);
        v107 = v156;
        v108 = *(v156 + 32);
        v109 = v155;
        v110 = v157;
        v108(v155, v59, v157);
        v111 = v154;
        (*(v107 + 16))(v154, v109, v110);
        v112 = (*(v107 + 80) + 16) & ~*(v107 + 80);
        v113 = swift_allocObject();
        v108((v113 + v112), v111, v110);
        v114 = objc_allocWithZone(MEMORY[0x277D75348]);
        v193 = sub_24826D738;
        v194 = v113;
        aBlock = MEMORY[0x277D85DD0];
        v190 = 1107296256;
        v191 = sub_24815A7A0;
        v192 = &block_descriptor_6;
        v115 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v116 = [v114 initWithDynamicProvider_];
        _Block_release(v115);

        v117 = objc_allocWithZone(MEMORY[0x277CF9338]);
        v118 = [v117 initWithWallpaperInformation:v188 color:v116];
        swift_unknownObjectRelease_n();

        (*(v107 + 8))(v109, v110);
        (*v185)(v54, v180);
        v46[1](v175, v186);
        return v118;
      }

      if (v85 == *MEMORY[0x277CF8EE0])
      {
        (*(v55 + 96))(v59, v56);
        v119 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90798) + 48);
        v120 = v162;
        v121 = *(v162 + 32);
        v122 = v165;
        v123 = v163;
        v121(v165, v59, v163);
        v124 = (v59 + v119);
        v125 = v164;
        v121(v164, v124, v123);
        v126 = *(v120 + 16);
        v126(v152, v125, v123);
        v127 = v150;
        v126(v150, v122, v123);
        v128 = *(v120 + 80);
        v129 = (v128 + 16) & ~v128;
        v130 = (v161 + v128 + v129) & ~v128;
        v131 = swift_allocObject();
        v121((v131 + v129), v152, v123);
        v121((v131 + v130), v127, v123);
        v132 = objc_allocWithZone(MEMORY[0x277CF9338]);
        v193 = sub_24826D690;
        v194 = v131;
        aBlock = MEMORY[0x277D85DD0];
        v190 = 1107296256;
        v191 = sub_24815A7A0;
        v192 = &block_descriptor_2;
        v133 = _Block_copy(&aBlock);
        v98 = [v132 initWithWallpaperInformation:v188 imageResolver:v133];
        swift_unknownObjectRelease();
        _Block_release(v133);

        v134 = *(v120 + 8);
        v134(v164, v123);
        v134(v165, v123);
        goto LABEL_38;
      }

      if (v85 == *MEMORY[0x277CF8EE8])
      {
        (*(v55 + 96))(v59, v56);
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90790);
        v135 = *(v59 + v72[16] + 8);
        v136 = *(v59 + v72[20] + 8);
        (*(v158 + 32))(v151, v59, v73);
        v137 = sub_248381600();
        if (v137)
        {
          v138 = v137;
          v139 = v137;
          if (v135)
          {
            v140 = sub_248383930();
          }

          else
          {
            v140 = 0;
          }

          if (v136)
          {
            v145 = sub_248383930();
          }

          else
          {
            v145 = 0;
          }

          v146 = [objc_allocWithZone(MEMORY[0x277CF9340]) initWithPackage:v138 lightModeState:v140 darkModeState:v145];

          v147 = objc_allocWithZone(MEMORY[0x277CF9338]);
          v88 = [v147 initWithWallpaperInformation:v188 statefulPackage:v146];

          swift_unknownObjectRelease();
          goto LABEL_66;
        }

LABEL_60:
        swift_unknownObjectRelease();

        v88 = 0;
LABEL_66:
        v143 = v72[12];
        (*(v158 + 8))(v151, v73);
        goto LABEL_55;
      }

LABEL_58:
      swift_unknownObjectRelease();
      (*v185)(v54, v180);
      v46[1](v175, v186);
      (*(v55 + 8))(v59, v56);
      return 0;
    }

LABEL_29:
    (*(v187 + 8))(v175, v186);

LABEL_30:
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

id sub_24826B864(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = a4(a3);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_24826B8D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8);
  v27 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - v3;
  v4 = sub_2483825A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248381690();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248381840();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90760);
  MEMORY[0x28223BE20](v15 - 8);
  v29 = &v27 - v16;
  DBThemeAssetDocument.document.getter(v14);
  sub_248381830();
  (*(v12 + 8))(v14, v11);
  v17 = v10;
  v18 = sub_248381680();
  (*(v8 + 8))(v10, v7);
  v30 = *(v18 + 16);
  if (v30)
  {
    v19 = 0;
    v20 = (v2 + OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider__displayID);
    v31 = v5 + 16;
    v21 = (v27 + 8);
    while (v19 < *(v18 + 16))
    {
      v22 = v4;
      (*(v5 + 16))(v34, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v4);
      v23 = v32;
      sub_248382540();
      v24 = v33;
      sub_248381860();
      (*v21)(v23, v24);
      if (v35 == *v20 && v36 == v20[1])
      {

LABEL_10:

        v4 = v22;
        v17 = v29;
        (*(v5 + 32))(v29, v34, v22);
        v25 = 0;
        goto LABEL_11;
      }

      v17 = sub_248384680();

      if (v17)
      {
        goto LABEL_10;
      }

      ++v19;
      v4 = v22;
      (*(v5 + 8))(v34, v22);
      if (v30 == v19)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v25 = 1;
    v17 = v29;
LABEL_11:
    (*(v5 + 56))(v17, v25, 1, v4);
    if ((*(v5 + 48))(v17, 1, v4) != 1)
    {
      return (*(v5 + 32))(v28, v17, v4);
    }
  }

  result = sub_24822D578(v17, &unk_27EE90760);
  __break(1u);
  return result;
}

id DBAssetWallpaperDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBAssetWallpaperDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBAssetWallpaperDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24826BEF4()
{
  result = qword_27EE904E0;
  if (!qword_27EE904E0)
  {
    sub_248381170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE904E0);
  }

  return result;
}

size_t sub_24826BF4C(size_t a1, int64_t a2, char a3)
{
  result = sub_24826BF6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24826BF6C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90928);
  v10 = *(sub_248382770() - 8);
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
  v15 = *(sub_248382770() - 8);
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

uint64_t (*sub_24826C144(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1CBA50](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_24826C1C4;
  }

  __break(1u);
  return result;
}

uint64_t sub_24826C1CC(uint64_t a1, uint64_t a2)
{
  v91 = sub_248382750();
  v4 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v89 = &v70 - v7;
  MEMORY[0x28223BE20](v8);
  v88 = &v70 - v9;
  MEMORY[0x28223BE20](v10);
  v87 = &v70 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v12 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v70 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780);
  v14 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v70 - v15;
  v16 = sub_248382770();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v107 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D84F90];
  v74 = *(a1 + 16);
  if (!v74)
  {
    return v19;
  }

  v71 = (a2 + OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider__displayID);
  v20 = sub_2483824B0();
  v21 = 0;
  v22 = *(v20 - 8);
  v73 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v81 = v17 + 16;
  v80 = (v14 + 8);
  v79 = (v12 + 8);
  v78 = (v4 + 8);
  v72 = *(v22 + 72);
  v77 = (v17 + 8);
  v23 = v19;
  v97 = v17;
  v82 = v16;
  while (1)
  {
    v75 = v21;
    v98 = v73 + v72 * v21;
    v26 = sub_248382400();
    v27 = *(v26 + 16);
    if (v27)
    {
      break;
    }

    v50 = v19;
LABEL_14:
    v51 = v50 >> 62;
    if (v50 >> 62)
    {
      v52 = sub_248384360();
    }

    else
    {
      v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v23 >> 62;
    if (v23 >> 62)
    {
      v69 = sub_248384360();
      v55 = v69 + v52;
      if (__OFADD__(v69, v52))
      {
LABEL_41:
        __break(1u);
        return v19;
      }
    }

    else
    {
      v54 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v55 = v54 + v52;
      if (__OFADD__(v54, v52))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v106 = v52;
    if (result)
    {
      if (!v53)
      {
        v56 = v23 & 0xFFFFFFFFFFFFFF8;
        if (v55 <= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_248384360();
      goto LABEL_24;
    }

    if (v53)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = sub_248384480();
    v23 = result;
    v56 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v57 = *(v56 + 16);
    v58 = *(v56 + 24);
    if (v51)
    {
      v60 = v56;
      result = sub_248384360();
      v56 = v60;
      v59 = result;
      if (!result)
      {
LABEL_3:

        v25 = v75;
        if (v106 > 0)
        {
          goto LABEL_45;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v59 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v59)
      {
        goto LABEL_3;
      }
    }

    if (((v58 >> 1) - v57) < v106)
    {
      goto LABEL_46;
    }

    v76 = v23;
    v61 = v56 + 8 * v57 + 32;
    v105 = v56;
    if (v51)
    {
      if (v59 < 1)
      {
        goto LABEL_48;
      }

      sub_24822D648(&qword_27EE90920, &qword_27EE90918);
      for (i = 0; i != v59; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90918);
        v63 = sub_24826C144(v108, i, v50);
        v65 = *v64;
        swift_unknownObjectRetain();
        (v63)(v108, 0);
        *(v61 + 8 * i) = v65;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE908D8);
      swift_arrayInitWithCopy();
    }

    v17 = v97;
    v25 = v75;
    v23 = v76;
    v19 = MEMORY[0x277D84F90];
    if (v106 >= 1)
    {
      v66 = *(v105 + 16);
      v67 = __OFADD__(v66, v106);
      v68 = v66 + v106;
      if (v67)
      {
        goto LABEL_47;
      }

      *(v105 + 16) = v68;
    }

LABEL_4:
    v21 = v25 + 1;
    if (v21 == v74)
    {
      return v23;
    }
  }

  v76 = v23;
  v109 = v19;
  v28 = v26;
  sub_2483844C0();
  result = v28;
  v29 = 0;
  v94 = v28 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v30 = *v71;
  v92 = v71[1];
  v93 = v30;
  v95 = v27;
  v96 = v28;
  while (v29 < *(result + 16))
  {
    (*(v17 + 16))(v107, v94 + *(v17 + 72) * v29, v16);
    v32 = v83;
    sub_2483826F0();
    v33 = v84;
    sub_248381860();
    (*v80)(v32, v33);
    v105 = v108[1];
    v106 = v108[0];
    v34 = v85;
    sub_248382450();
    swift_getKeyPath();
    v35 = v86;
    sub_248381870();

    (*v79)(v34, v35);
    v103 = v108[5];
    v104 = v108[4];
    v99 = sub_2483271E8();
    v102 = v36;
    v101 = sub_2483826E0();
    v37 = v87;
    sub_248382760();
    v100 = sub_248382730();
    v38 = *v78;
    v39 = v91;
    (*v78)(v37, v91);
    v40 = v88;
    sub_248382760();
    LOBYTE(v37) = sub_248382720();
    v38(v40, v39);
    v41 = v89;
    sub_248382760();
    LOBYTE(v40) = sub_248382710();
    v38(v41, v39);
    v42 = v90;
    sub_248382760();
    v43 = sub_248382740();
    v38(v42, v39);
    v44 = objc_allocWithZone(MEMORY[0x277CF93A0]);
    v45 = [v44 initWithSupportsDynamicAppearance:v101 & 1 supportsDashboardPlatterMaterials:v100 & 1 iconLabelsRequireBackground:v37 & 1 hideRoundedCorners:v40 & 1 black:v43 & 1];
    v46 = sub_248383930();
    v47 = v102;

    v48 = sub_248383930();
    v49 = sub_248383930();

    if (v47)
    {
      v31 = sub_248383930();
    }

    else
    {
      v31 = 0;
    }

    ++v29;
    [objc_allocWithZone(MEMORY[0x277CF9200]) initWithIdentifier:v46 displayID:v48 layoutID:v49 cacheID:v31 traits:v45];

    v16 = v82;
    (*v77)(v107, v82);
    sub_2483844A0();
    sub_2483844D0();
    sub_2483844E0();
    sub_2483844B0();
    result = v96;
    v17 = v97;
    if (v95 == v29)
    {

      v50 = v109;
      v19 = MEMORY[0x277D84F90];
      v23 = v76;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_24826CBFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v96 = sub_248382750();
  v6 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v74 - v9;
  MEMORY[0x28223BE20](v10);
  v93 = &v74 - v11;
  MEMORY[0x28223BE20](v12);
  v92 = &v74 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v14 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v74 - v15;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90780);
  v16 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v74 - v17;
  v113 = sub_248382770();
  v18 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277D84F90];
  v78 = *(a1 + 16);
  if (!v78)
  {
    return v20;
  }

  v75 = (a2 + OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider__displayID);
  v21 = sub_2483824B0();
  v22 = 0;
  v23 = *(v21 - 8);
  v77 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v87 = v18 + 16;
  v86 = (v16 + 8);
  v85 = (v14 + 8);
  v84 = (v6 + 8);
  v76 = *(v23 + 72);
  v83 = (v18 + 8);
  v102 = v18;
  v79 = a2;
  while (1)
  {
    v80 = v22;
    v26 = v77 + v76 * v22;
    v27 = sub_248382400();
    MEMORY[0x28223BE20](v27);
    v103 = v26;
    *(&v74 - 2) = v26;
    *(&v74 - 1) = a2;
    sub_24826750C(sub_24826D94C, (&v74 - 4), v28);
    v30 = *(v29 + 16);
    v81 = v3;
    if (v30)
    {
      break;
    }

    v54 = MEMORY[0x277D84F90];
LABEL_14:
    v55 = v54 >> 62;
    if (v54 >> 62)
    {
      v56 = sub_248384360();
    }

    else
    {
      v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = v20 >> 62;
    if (v20 >> 62)
    {
      v73 = sub_248384360();
      v59 = v73 + v56;
      if (__OFADD__(v73, v56))
      {
LABEL_41:
        __break(1u);
        return v20;
      }
    }

    else
    {
      v58 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v59 = v58 + v56;
      if (__OFADD__(v58, v56))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v111 = v56;
    if (result)
    {
      if (!v57)
      {
        v60 = v20 & 0xFFFFFFFFFFFFFF8;
        if (v59 <= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_248384360();
      goto LABEL_24;
    }

    if (v57)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = sub_248384480();
    v20 = result;
    v60 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v61 = *(v60 + 16);
    v62 = *(v60 + 24);
    if (v55)
    {
      v64 = v60;
      result = sub_248384360();
      v60 = v64;
      v63 = result;
      if (!result)
      {
LABEL_3:

        v25 = v80;
        if (v111 > 0)
        {
          goto LABEL_44;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v63 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v63)
      {
        goto LABEL_3;
      }
    }

    if (((v62 >> 1) - v61) < v111)
    {
      goto LABEL_45;
    }

    v82 = v20;
    v65 = v60 + 8 * v61 + 32;
    v110 = v60;
    if (v55)
    {
      if (v63 < 1)
      {
        goto LABEL_47;
      }

      sub_24822D648(&qword_27EE90920, &qword_27EE90918);
      for (i = 0; i != v63; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90918);
        v67 = sub_24826C144(v114, i, v54);
        v69 = *v68;
        swift_unknownObjectRetain();
        (v67)(v114, 0);
        *(v65 + 8 * i) = v69;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE908D8);
      swift_arrayInitWithCopy();
    }

    v18 = v102;
    v25 = v80;
    v20 = v82;
    v3 = v81;
    a2 = v79;
    if (v111 >= 1)
    {
      v70 = *(v110 + 16);
      v71 = __OFADD__(v70, v111);
      v72 = v70 + v111;
      if (v71)
      {
        goto LABEL_46;
      }

      *(v110 + 16) = v72;
    }

LABEL_4:
    v22 = v25 + 1;
    if (v22 == v78)
    {
      return v20;
    }
  }

  v82 = v20;
  v115 = MEMORY[0x277D84F90];
  v31 = v29;
  sub_2483844C0();
  result = v31;
  v32 = 0;
  v99 = v31 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v33 = v75[1];
  v98 = *v75;
  v97 = v33;
  v100 = v30;
  v101 = v31;
  while (v32 < *(result + 16))
  {
    (*(v18 + 16))(v112, v99 + *(v18 + 72) * v32, v113);
    v35 = v88;
    sub_2483826F0();
    v36 = v89;
    sub_248381860();
    (*v86)(v35, v36);
    v110 = v114[1];
    v111 = v114[0];
    v37 = v90;
    sub_248382450();
    swift_getKeyPath();
    v38 = v91;
    sub_248381870();

    (*v85)(v37, v38);
    v108 = v114[5];
    v109 = v114[4];
    v104 = sub_2483271E8();
    v107 = v39;
    v106 = sub_2483826E0();
    v40 = v92;
    sub_248382760();
    v105 = sub_248382730();
    v41 = *v84;
    v42 = v96;
    (*v84)(v40, v96);
    v43 = v93;
    sub_248382760();
    LOBYTE(v40) = sub_248382720();
    v41(v43, v42);
    v44 = v94;
    sub_248382760();
    v45 = sub_248382710();
    v41(v44, v42);
    v46 = v95;
    sub_248382760();
    v47 = sub_248382740();
    v41(v46, v42);
    v48 = objc_allocWithZone(MEMORY[0x277CF93A0]);
    v49 = [v48 initWithSupportsDynamicAppearance:v106 & 1 supportsDashboardPlatterMaterials:v105 & 1 iconLabelsRequireBackground:v40 & 1 hideRoundedCorners:v45 & 1 black:v47 & 1];
    v50 = sub_248383930();
    v51 = v107;

    v52 = sub_248383930();
    v53 = sub_248383930();

    if (v51)
    {
      v34 = sub_248383930();
    }

    else
    {
      v34 = 0;
    }

    ++v32;
    [objc_allocWithZone(MEMORY[0x277CF9200]) initWithIdentifier:v50 displayID:v52 layoutID:v53 cacheID:v34 traits:v49];

    (*v83)(v112, v113);
    sub_2483844A0();
    sub_2483844D0();
    sub_2483844E0();
    sub_2483844B0();
    result = v101;
    v18 = v102;
    if (v100 == v32)
    {

      v54 = v115;
      v3 = v81;
      a2 = v79;
      v20 = v82;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_24826D690(void *a1)
{
  sub_2483815D0();
  [a1 userInterfaceStyle];
  return sub_2483815C0();
}

uint64_t sub_24826D738(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AC0);
  sub_24814FB28(0, &unk_27EE907A8);
  [a1 userInterfaceStyle];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AC0);
  sub_248381D60();
  return sub_248383FE0();
}

unint64_t sub_24826D8D0()
{
  result = qword_27EE90910;
  if (!qword_27EE90910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE90780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90910);
  }

  return result;
}

uint64_t sub_24826D9DC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24826DA3C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_environment;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2482284FC;
}

void *sub_24826DB18()
{
  v1 = OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentVolumeService;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24826DB64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentVolumeService;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DBAudioNotificationViewController.__allocating_init(environment:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider;
  type metadata accessor for DBVolumeSlider();
  *&v1[v2] = sub_248294EFC();
  *&v1[OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentVolumeService] = 0;
  *&v1[OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentTimer] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();
  return v3;
}

id DBAudioNotificationViewController.init(environment:)()
{
  v0 = sub_248270210();
  swift_unknownObjectRelease();
  return v0;
}

void sub_24826DD78()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider;
  type metadata accessor for DBVolumeSlider();
  *(v0 + v1) = sub_248294EFC();
  *(v0 + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentVolumeService) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentTimer) = 0;
  sub_248384580();
  __break(1u);
}

Swift::Void __swiftcall DBAudioNotificationViewController.loadView()()
{
  type metadata accessor for DBAudioView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView_];
}

Swift::Void __swiftcall DBAudioNotificationViewController.viewDidLoad()()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for DBAudioNotificationViewController();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider];
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0xE8);
  v4 = swift_unknownObjectRetain();
  v3(v4, &off_285A51798);
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAlpha_];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v5;
  [v5 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24839CCB0;
  v8 = [v2 bottomAnchor];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v9 bottomAnchor];

  v12 = [v8 constraintEqualToAnchor:v11 constant:-8.0];
  *(v7 + 32) = v12;
  v13 = [v2 widthAnchor];
  v14 = [v13 constraintEqualToConstant_];

  *(v7 + 40) = v14;
  v15 = [v2 heightAnchor];
  v16 = [v15 constraintEqualToConstant_];

  *(v7 + 48) = v16;
  v17 = [v2 centerXAnchor];
  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    v20 = objc_opt_self();
    v21 = [v19 centerXAnchor];

    v22 = [v17 constraintEqualToAnchor_];
    *(v7 + 56) = v22;
    sub_24814FB28(0, &qword_27EE8FE90);
    v23 = sub_248383B00();

    [v20 activateConstraints_];

    [v2 setContinuousSliderCornerRadius_];
    sub_24826E2F4();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_24826E2F4()
{
  v4 = [*(v0 + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider) layer];
  v1 = [objc_opt_self() blackColor];
  v2 = [v1 CGColor];

  [v4 setShadowColor_];
  LODWORD(v3) = 1043878380;
  [v4 setShadowOpacity_];
  [v4 setShadowOffset_];
  [v4 setShadowRadius_];
  [v4 setShadowPathIsBounds_];
  [v4 setCornerCurve_];
}

void DBAudioNotificationViewController.updateFor(service:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider);
  v5 = [a1 volumeDisabled];
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v4) + 0x1E0))(v5);
  if (((*((*v6 & *v4) + 0xF8))(v7) & 1) == 0 || [a1 hasMute] && (v8 = objc_msgSend(a1, sel_mute), v8 != ((*((*v6 & *v4) + 0x110))() & 1)))
  {
    v9 = *((*v6 & *v2) + 0x90);
    v10 = a1;
    v9(a1);
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v52 = v10;
    v13 = [v2 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 window];

      if (v15)
      {
        [v15 setHidden_];
      }

      v16 = *(v2 + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider);
      v17 = sub_248384130();
      (*((*v6 & *v16) + 0x190))(v17);
      v18 = [v12 volumeType];
      if (v18 <= 1)
      {
        if (!v18)
        {
          v19 = 0xE500000000000000;
          v20 = 0x636973756DLL;
          goto LABEL_30;
        }

        if (v18 == 1)
        {
          v19 = 0x80000002483ABBD0;
          v20 = 0xD00000000000001ALL;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v18)
        {
          case 2:
            v19 = 0xEA00000000006C6CLL;
            v20 = 0x69662E656E6F6870;
            goto LABEL_30;
          case 3:
            v19 = 0xE400000000000000;
            v20 = 1769105779;
            goto LABEL_30;
          case 4:
            v19 = 0xEF6C6C69662E6567;
            v20 = 0x6461622E6C6C6562;
            goto LABEL_30;
        }
      }

      v21 = [v12 volume];
      v22 = [v12 volumeRange];
      v23 = [v22 minimumValue];

      v24 = [v12 volumeRange];
      v25 = [v24 maximumValue];

      if (((v25 - v23) & 0xFFFFFF00) == 0)
      {
        v20 = 0xD000000000000013;
        v26 = (v25 - v23) / 3u;
        if (v21 >= 2 * v26)
        {
          v29 = "location.north.circle.fill";
        }

        else
        {
          v27 = 0xD000000000000012;
          v28 = "speaker.wave.2.fill";
          if (v21)
          {
            v27 = 0xD000000000000013;
            v28 = "speaker.slash.fill";
          }

          if (v21 >= v26)
          {
            v29 = "speaker.wave.3.fill";
          }

          else
          {
            v20 = v27;
            v29 = v28;
          }
        }

        v19 = v29 | 0x8000000000000000;
LABEL_30:
        (*((*v6 & *v16) + 0x1C0))(v20, v19);
        v30 = [v12 volumeRange];
        v31 = [v30 minimum];

        v32 = [v31 unsignedCharValue];
        v33 = [v12 volumeRange];
        v34 = [v33 maximum];

        v35 = [v34 unsignedCharValue];
        v36 = [v12 volume];
        if ([v12 hasMute])
        {
          v37 = [v12 mute];
          if (v35 >= v32)
          {
LABEL_32:
            (*((*v6 & *v16) + 0x118))(v37);
            (*((*v6 & *v16) + 0x160))(v32);
            (*((*v6 & *v16) + 0x178))(v35);
            (*((*v6 & *v16) + 0x148))(v36);
            v38 = sub_248383DC0();
            sub_24814FB28(0, &qword_27EE90950);
            v39 = sub_2483841B0();
            if (os_log_type_enabled(v39, v38))
            {
              v40 = swift_slowAlloc();
              v51 = v36;
              v41 = swift_slowAlloc();
              v53 = v41;
              *v40 = 136316162;
              v42 = sub_248384130();
              v44 = sub_24814A378(v42, v43, &v53);

              *(v40 + 4) = v44;
              *(v40 + 12) = 256;
              *(v40 + 14) = v32;
              *(v40 + 15) = 256;
              *(v40 + 17) = v35;
              *(v40 + 18) = 256;
              if (v37)
              {
                v45 = 1702195828;
              }

              else
              {
                v45 = 0x65736C6166;
              }

              *(v40 + 20) = v51;
              if (v37)
              {
                v46 = 0xE400000000000000;
              }

              else
              {
                v46 = 0xE500000000000000;
              }

              *(v40 + 21) = 2080;
              v47 = sub_24814A378(v45, v46, &v53);

              *(v40 + 23) = v47;
              _os_log_impl(&dword_248146000, v39, v38, "Show audio notification for volume service: %s, min: %hhu, max: %hhu, volume: %hhu mute: %s", v40, 0x1Fu);
              swift_arrayDestroy();
              MEMORY[0x24C1CD5F0](v41, -1, -1);
              MEMORY[0x24C1CD5F0](v40, -1, -1);
            }

            sub_24826EE70(1);
            goto LABEL_45;
          }
        }

        else
        {
          v37 = 0;
          if (v35 >= v32)
          {
            goto LABEL_32;
          }
        }

        v48 = sub_248383DA0();
        sub_24814FB28(0, &qword_27EE90950);
        v49 = sub_2483841B0();
        if (os_log_type_enabled(v49, v48))
        {
          v50 = swift_slowAlloc();
          *v50 = 16777728;
          *(v50 + 4) = v32;
          *(v50 + 5) = 256;
          *(v50 + 7) = v35;
          _os_log_impl(&dword_248146000, v49, v48, "Audio notification: Invalid volume range - min: %hhu > max: %hhu", v50, 8u);
          MEMORY[0x24C1CD5F0](v50, -1, -1);
        }

        goto LABEL_45;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_248383DC0();
  sub_24814FB28(0, &qword_27EE90950);
  v52 = sub_2483841B0();
  sub_248382A40();
LABEL_45:
}

Swift::Void __swiftcall DBAudioNotificationViewController.hideNotification()()
{
  [*(v0 + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider) alpha];
  if (v1 > 0.0)
  {
    sub_248383DC0();
    sub_24814FB28(0, &qword_27EE90950);
    v2 = sub_2483841B0();
    sub_248382A40();

    sub_24826EE70(0);
  }
}

id sub_24826EE70(char a1)
{
  v2 = v1;
  v4 = sub_248383DC0();
  sub_24814FB28(0, &qword_27EE90950);
  v5 = sub_2483841B0();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = COERCE_DOUBLE(swift_slowAlloc());
    v30.a = v7;
    *v6 = 67109378;
    *(v6 + 4) = a1 & 1;
    *(v6 + 8) = 2082;
    [*(v1 + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider) frame];
    v8 = a1;
    v9 = NSStringFromCGRect(v31);
    v10 = sub_248383960();
    v12 = v11;

    v13 = sub_24814A378(v10, v12, &v30);

    *(v6 + 10) = v13;
    a1 = v8;
    _os_log_impl(&dword_248146000, v5, v4, "Animate audio notification, isVisible: %{BOOL}d, current slider frame:%{public}s", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(*&v7);
    MEMORY[0x24C1CD5F0](*&v7, -1, -1);
    MEMORY[0x24C1CD5F0](v6, -1, -1);
  }

  v14 = OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentTimer;
  [*(v1 + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentTimer) invalidate];
  v15 = *(v1 + v14);
  *(v1 + v14) = 0;

  v16 = *(v1 + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider);
  [v16 alpha];
  if (v17 >= 1.0 || (a1 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_248383DC0();
  v18 = sub_2483841B0();
  sub_248382A40();

  v19 = (*((*MEMORY[0x277D85000] & *v2) + 0x70))();
  v20 = 0.0;
  if (v19)
  {
    v21 = v19;
    if ([v19 respondsToSelector_])
    {
      [v21 statusBarInsets];
      v20 = v22;
    }

    swift_unknownObjectRelease();
  }

  CGAffineTransformMakeTranslation(&v30, 0.0, vabdd_f64(-90.0, v20));
  CGAffineTransformScale(&v29, &v30, 0.5, 0.5);
  v30 = v29;
  [v16 setTransform_];
  [v16 setAlpha_];
  result = [v2 view];
  if (result)
  {
    v24 = result;
    v25 = [result window];

    if (v25)
    {
      [v25 setHidden_];
    }

LABEL_12:
    sub_24814FB28(0, &qword_27EE8FFC0);
    swift_allocObject();
    v26 = swift_unknownObjectWeakInit();
    MEMORY[0x28223BE20](v26);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = a1 & 1;

    sub_248383FC0();
  }

  __break(1u);
  return result;
}

id DBAudioNotificationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void sub_24826F514()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_24827031C;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24826F624;
  v6[3] = &block_descriptor_3;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:2.5];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentTimer);
  *(v0 + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentTimer) = v4;
}

void sub_24826F624(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_24826F6AC(char a1)
{
  v2 = v1;
  sub_248383DC0();
  sub_24814FB28(0, &qword_27EE90950);
  v4 = sub_2483841B0();
  sub_248382A40();

  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x88))();
  if (!v6)
  {
    return;
  }

  v18 = v6;
  v7 = [v6 volumeRange];
  v8 = [v7 step];

  v9 = [v8 unsignedCharValue];
  v10 = (*((*v5 & **(v2 + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider)) + 0x140))();
  v11 = [v18 volumeRange];
  v12 = v11;
  if (a1)
  {
    v13 = [v11 maximum];

    v14 = [v13 unsignedCharValue];
    if ((((v9 + v10) >> 8) & 1) == 0)
    {
      LODWORD(v15) = (v9 + v10);
      if (v15 >= v14)
      {
        LOBYTE(v15) = v14;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_15;
  }

  v16 = [v11 minimum];

  v17 = [v16 integerValue];
  v15 = v10 - v9;
  if (v15 <= v17)
  {
    v15 = v17;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 > 0xFF)
  {
LABEL_16:
    __break(1u);
    return;
  }

LABEL_11:
  [v18 setVolume_];
  sub_24826F514();
}

void sub_24826F940()
{
  v1 = v0;
  sub_248383DC0();
  sub_24814FB28(0, &qword_27EE90950);
  v2 = sub_2483841B0();
  sub_248382A40();

  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  if (v3)
  {
    v4 = v3;
    if ([v3 hasMute] && objc_msgSend(v4, sel_mute))
    {
      [v4 setMute_];
    }
  }
}

void sub_24826FA6C()
{
  sub_248383DC0();
  sub_24814FB28(0, &qword_27EE90950);
  v0 = sub_2483841B0();
  sub_248382A40();

  sub_24826F514();
}

void sub_24826FB00()
{
  v1 = v0;
  v2 = sub_248383DC0();
  sub_24814FB28(0, &qword_27EE90950);
  v3 = sub_2483841B0();
  v4 = os_log_type_enabled(v3, v2);
  v5 = MEMORY[0x277D85000];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v6 = 136315394;
    v7 = *((*v5 & *v0) + 0x88);
    v8 = v7();
    if (v8)
    {
      v9 = v8;
      sub_248384130();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10);
    v10 = sub_2483841D0();
    v12 = v11;

    v13 = sub_24814A378(v10, v12, &v23);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2080;
    v15 = (v7)(v14);
    v16 = v15;
    if (v15)
    {
      [v15 volume];
    }

    v5 = MEMORY[0x277D85000];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90960);
    v17 = sub_2483841D0();
    v19 = sub_24814A378(v17, v18, &v23);

    *(v6 + 14) = v19;
    _os_log_impl(&dword_248146000, v3, v2, "Audio notification slider used to update volume service: %s at volume:%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v22, -1, -1);
    MEMORY[0x24C1CD5F0](v6, -1, -1);
  }

  else
  {
  }

  v20 = (*((*v5 & *v1) + 0x88))();
  if (v20)
  {
    v21 = v20;
    [v20 setVolume_];
  }
}

id sub_24826FE30(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for DBAudioView();
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

id sub_24827000C(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DBAudioView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_2482700E0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DBAudioView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2482701D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_248270210()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider;
  type metadata accessor for DBVolumeSlider();
  *&v0[v1] = sub_248294EFC();
  *&v0[OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentVolumeService] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentTimer] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DBAudioNotificationViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

void sub_24827031C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_248383DC0();
    sub_24814FB28(0, &qword_27EE90950);
    v4 = sub_2483841B0();
    sub_248382A40();

    v5 = *&v3[OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentTimer];
    if (v5)
    {
      sub_24814FB28(0, &qword_27EE90968);
      v6 = v5;
      v7 = a1;
      v8 = sub_248384030();

      if (v8)
      {
        if ([v7 isValid])
        {
          v9 = *&v3[OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider];
          v10 = *((*MEMORY[0x277D85000] & *v9) + 0xF8);
          v11 = v9;
          LOBYTE(v10) = v10();

          if ((v10 & 1) == 0)
          {
            sub_24826EE70(0);
          }
        }
      }
    }
  }
}

void sub_24827049C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider);
    if (v1)
    {
      v6 = v5;
      v7 = xmmword_24839DAC0;
      v8 = xmmword_24839DAD0;
      v9 = 0uLL;
    }

    else
    {
      v10 = (*((*MEMORY[0x277D85000] & *Strong) + 0x70))(v5);
      v11 = 0.0;
      if (v10)
      {
        v12 = v10;
        if ([v10 respondsToSelector_])
        {
          [v12 statusBarInsets];
          v11 = v13;
        }

        swift_unknownObjectRelease();
      }

      CGAffineTransformMakeTranslation(&v15, 0.0, vabdd_f64(-90.0, v11));
      CGAffineTransformScale(&v14, &v15, 0.5, 0.5);
      v8 = *&v14.a;
      v7 = *&v14.c;
      v9 = *&v14.tx;
    }

    *&v15.a = v8;
    *&v15.c = v7;
    *&v15.tx = v9;
    [v5 setTransform_];

    if (v2)
    {
      v2();
    }
  }
}

void sub_248270630(char a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      if (!v3)
      {
        v6 = OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider;
        [*(Strong + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider) frame];
        MinY = CGRectGetMinY(v23);
        v8 = [v5 view];
        if (v8)
        {
          v9 = v8;
          [v8 bounds];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;

          v24.origin.x = v11;
          v24.origin.y = v13;
          v24.size.width = v15;
          v24.size.height = v17;
          if (CGRectGetHeight(v24) >= MinY)
          {
            goto LABEL_11;
          }

          sub_248383DC0();
          sub_24814FB28(0, &qword_27EE90950);
          v18 = sub_2483841B0();
          sub_248382A40();

          v19 = [v5 view];
          if (v19)
          {
            v20 = v19;
            v21 = [v19 window];

            if (v21)
            {
              [v21 setHidden_];
            }

            [*&v5[v6] setAlpha_];
            v22 = *&v5[OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentTimer];
            *&v5[OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentTimer] = 0;

            v5 = v22;
            goto LABEL_11;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      sub_24826F514();
    }

LABEL_11:
  }
}

id sub_248270828(double a1, double a2, double a3, double a4)
{
  v23.receiver = v4;
  v23.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setAutoresizesSubviews_];
  v10 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24839C700;
  *(v11 + 32) = [objc_opt_self() effectWithStyle_];
  sub_2482709F0();
  v12 = sub_248383B00();

  [v10 setBackgroundEffects_];

  v13 = v10;
  [v9 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v13 setFrame_];
  [v13 setAutoresizingMask_];

  [v9 addSubview_];
  return v9;
}

unint64_t sub_2482709F0()
{
  result = qword_27EE90970;
  if (!qword_27EE90970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE90970);
  }

  return result;
}

id sub_248270B18()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBDockSceneHostWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDockSceneHostWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *DBVoiceControlOverlayController.__allocating_init(windowScene:windowFrame:voiceControlScene:environment:)(void *a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v33 = v8;
  v16 = objc_allocWithZone(v8);
  v17 = OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__windowScene;
  *&v16[OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__windowScene] = a1;
  v18 = &v16[OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__windowFrame];
  *v18 = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v19 = OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlScene;
  *&v16[OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlScene] = a2;
  v20 = OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__environment;
  swift_unknownObjectUnownedInit();
  type metadata accessor for DBVoiceControlWindow();
  v21 = a1;
  v22 = a2;
  v23 = DBVoiceControlWindow.__allocating_init(windowScene:frame:)(v21);
  v24 = OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlWindow;
  *&v16[OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlWindow] = v23;
  type metadata accessor for DBVoiceControlViewController();
  v25 = v22;
  swift_unknownObjectRetain();
  v26 = sub_248307644(v25, a3);
  if (v26)
  {
    *&v16[OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlViewController] = v26;
    v34.receiver = v16;
    v34.super_class = v33;
    v27 = v26;
    v28 = objc_msgSendSuper2(&v34, sel_init);
    v29 = OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlWindow;
    v30 = *&v28[OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlWindow];
    v31 = v28;
    [v30 setFrame_];
    [*&v28[v29] setRootViewController_];
    [*&v28[v29] setHidden_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    sub_24825A8E8(&v16[v20]);

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v31;
}

char *DBVoiceControlOverlayController.init(windowScene:windowFrame:voiceControlScene:environment:)(void *a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__windowScene;
  *&v8[OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__windowScene] = a1;
  v17 = &v8[OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__windowFrame];
  *v17 = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  v18 = OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlScene;
  *&v8[OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlScene] = a2;
  v19 = OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__environment;
  swift_unknownObjectUnownedInit();
  type metadata accessor for DBVoiceControlWindow();
  v20 = a1;
  v21 = a2;
  v22 = DBVoiceControlWindow.__allocating_init(windowScene:frame:)(v20);
  v23 = OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlWindow;
  *&v8[OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlWindow] = v22;
  type metadata accessor for DBVoiceControlViewController();
  v24 = v21;
  swift_unknownObjectRetain();
  v25 = sub_248307644(v24, a3);
  if (v25)
  {
    *&v8[OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlViewController] = v25;
    v26 = v25;
    v33.receiver = v8;
    v33.super_class = type metadata accessor for DBVoiceControlOverlayController();
    v27 = v26;
    v28 = objc_msgSendSuper2(&v33, sel_init);
    v29 = OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlWindow;
    v30 = *&v28[OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlWindow];
    v31 = v28;
    [v30 setFrame_];
    [*&v28[v29] setRootViewController_];
    [*&v28[v29] setHidden_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    sub_24825A8E8(&v8[v19]);

    type metadata accessor for DBVoiceControlOverlayController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v31;
}

id DBVoiceControlOverlayController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBVoiceControlOverlayController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBVoiceControlOverlayController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBDashboardStartupScaleAnimator.__allocating_init(windows:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9DashBoard31DBDashboardStartupScaleAnimator__windows] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id DBDashboardStartupScaleAnimator.init(windows:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9DashBoard31DBDashboardStartupScaleAnimator__windows] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DBDashboardStartupScaleAnimator();
  return objc_msgSendSuper2(&v3, sel_init);
}

Swift::Void __swiftcall DBDashboardStartupScaleAnimator.prepareForAnimation()()
{
  v1 = OBJC_IVAR____TtC9DashBoard31DBDashboardStartupScaleAnimator__windows;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_248384320();
    sub_248271824();
    sub_248271870();
    sub_248383CB0();
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
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

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    *&a = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (a == 0.0)
    {
LABEL_18:
      sub_248167908();
      return;
    }

    while (1)
    {
      v16 = *&a;
      [v16 setHidden_];
      CGAffineTransformMakeScale(&v17, 4.0, 4.0);
      [v16 setTransform_];
      [v16 setAlpha_];

      v5 = v13;
      v6 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_248384390())
      {
        sub_248271824();
        swift_dynamicCast();
        a = v17.a;
        v13 = v5;
        v14 = v6;
        if (*&v17.a)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_18;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_248271824()
{
  result = qword_27EE91640;
  if (!qword_27EE91640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE91640);
  }

  return result;
}

unint64_t sub_248271870()
{
  result = qword_27EE909C0;
  if (!qword_27EE909C0)
  {
    sub_248271824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE909C0);
  }

  return result;
}

uint64_t DBDashboardStartupScaleAnimator.performAnimation(completion:)(uint64_t a1, uint64_t a2)
{
  v14 = objc_opt_self();
  v5 = [v14 factoryWithMass:3.0 stiffness:1000.0 damping:500.0];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_248271B5C;
  *(v7 + 24) = v6;
  v19 = sub_248271D98;
  v20 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_248271DC0;
  v18 = &block_descriptor_4;
  v8 = _Block_copy(&aBlock);
  v9 = v2;

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v19 = sub_248271DE8;
  v20 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2482614B8;
  v18 = &block_descriptor_9;
  v11 = _Block_copy(&aBlock);
  sub_248167910(a1);

  [v14 animateWithFactory:v5 actions:v8 completion:v11];
  _Block_release(v11);
  _Block_release(v8);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_248271B5C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC9DashBoard31DBDashboardStartupScaleAnimator__windows;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_248384320();
    sub_248271824();
    sub_248271870();
    sub_248383CB0();
    v3 = v18[9];
    v4 = v18[10];
    v5 = v18[11];
    v6 = v18[12];
    v7 = v18[13];
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = (v3 + 56);
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = (v10 & *(v3 + 56));

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_248167908();
      return;
    }

    while (1)
    {
      v17 = v16;
      [v17 setHidden_];
      v18[1] = 0;
      v18[2] = 0;
      v18[0] = 0x3FF0000000000000;
      v18[3] = 0x3FF0000000000000;
      v18[4] = 0;
      v18[5] = 0;
      [v17 setTransform_];
      [v17 setAlpha_];

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_248384390())
      {
        sub_248271824();
        swift_dynamicCast();
        v16 = v18[0];
        v14 = v6;
        v15 = v7;
        if (v18[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = v4[v14];
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id DBDashboardStartupScaleAnimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBDashboardStartupFadeInAnimator.__allocating_init(blackoutWindow:windows:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_windows;
  *&v5[OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_windows] = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *&v5[v6] = a2;
  *&v5[OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_blackoutWindow] = a1;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id DBDashboardStartupFadeInAnimator.init(blackoutWindow:windows:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_windows;
  *&v2[OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_windows] = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *&v2[v5] = a2;
  *&v2[OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_blackoutWindow] = a1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DBDashboardStartupFadeInAnimator();
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall DBDashboardStartupFadeInAnimator.prepareForAnimation()()
{
  v1 = OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_blackoutWindow;
  [*(v0 + OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_blackoutWindow) setHidden_];
  [*(v0 + v1) setAlpha_];
  v2 = OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_windows;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_248384320();
    sub_248271824();
    sub_248271870();
    sub_248383CB0();
    v5 = v20;
    v4 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v3;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_248167908();

      return;
    }

    while (1)
    {
      [v16 setHidden_];
      [v16 setAlpha_];

      v7 = v14;
      v8 = v15;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = sub_248384390();
      if (v17)
      {
        v18 = v17;
        sub_248271824();
        swift_dynamicCast();
        v16 = v19;
        v14 = v7;
        v15 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void DBDashboardStartupFadeInAnimator.performAnimation(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v15 = sub_248272A90;
  v16 = v6;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24814C01C;
  v14 = &block_descriptor_15;
  v7 = _Block_copy(&v11);
  v8 = v2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v15 = sub_248273690;
  v16 = v9;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24824BBE0;
  v14 = &block_descriptor_21;
  v10 = _Block_copy(&v11);
  sub_248167910(a1);

  [v5 animateWithDuration:v7 animations:v10 completion:0.25];
  _Block_release(v10);
  _Block_release(v7);
}

void sub_248272658(void *a1)
{
  swift_beginAccess();
  sub_248272854(&v3, a1);
  v2 = v3;
  swift_endAccess();
}

void sub_2482726D0(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v5 = a3;
  v6 = a1;
  sub_248272854(&v8, v5);
  v7 = v8;
  swift_endAccess();
}

id sub_2482727D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_248272854(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_248384370();

    if (v9)
    {

      sub_248271824();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_248384360();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_248272D20(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_248272F00();
    }

    v18 = v8;
    sub_248273128(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_248271824();
  v11 = sub_248384020();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_2482731AC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_248384030();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

void sub_248272A90()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_windows;
  swift_beginAccess();
  v19 = v1;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_248384320();
    sub_248271824();
    sub_248271870();
    sub_248383CB0();
    v5 = v21;
    v4 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v3;
  }

  v18 = v6;
  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_18:
      sub_248167908();

      [*(v19 + OBJC_IVAR____TtC9DashBoard32DBDashboardStartupFadeInAnimator_blackoutWindow) setAlpha_];
      return;
    }

    while (1)
    {
      [v17 setHidden_];
      [v17 setAlpha_];

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_248384390())
      {
        sub_248271824();
        swift_dynamicCast();
        v17 = v20;
        v15 = v7;
        v16 = v8;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_248272CD4(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t sub_248272D20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE909D8);
    v2 = sub_248384410();
    v14 = v2;
    sub_248384320();
    if (sub_248384390())
    {
      sub_248271824();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_248272F00();
        }

        v2 = v14;
        result = sub_248384020();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_248384390());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_248272F00()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE909D8);
  result = sub_248384400();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_248384020();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_248273128(uint64_t a1, uint64_t a2)
{
  sub_248384020();
  result = sub_248384300();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2482731AC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_248272F00();
  }

  else
  {
    if (v7 > v6)
    {
      sub_24827330C();
      goto LABEL_12;
    }

    sub_24827345C();
  }

  v8 = *v3;
  v9 = sub_248384020();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_248271824();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_248384030();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2483846D0();
  __break(1u);
}

id sub_24827330C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE909D8);
  v2 = *v0;
  v3 = sub_2483843F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_24827345C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE909D8);
  result = sub_248384400();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_248384020();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

id sub_248273694(int64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  *&v6[OBJC_IVAR____TtC9DashBoard24DBCarouselViewController____lazy_storage____nowPlayingViewController] = 0;
  v7 = OBJC_IVAR____TtC9DashBoard24DBCarouselViewController__zone;
  v8 = sub_2483822E0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a1, v8);
  *&v6[OBJC_IVAR____TtC9DashBoard24DBCarouselViewController__model] = sub_248277B58(a1);
  swift_unknownObjectUnownedInit();
  *&v6[OBJC_IVAR____TtC9DashBoard24DBCarouselViewController__sceneCoordinator] = a2;
  v13.receiver = v6;
  v13.super_class = v3;
  v10 = a2;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  (*(v9 + 8))(a1, v8);

  swift_unknownObjectRelease();
  return v11;
}

id sub_2482737DC(int64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC9DashBoard24DBCarouselViewController____lazy_storage____nowPlayingViewController] = 0;
  v5 = OBJC_IVAR____TtC9DashBoard24DBCarouselViewController__zone;
  v6 = sub_2483822E0();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR____TtC9DashBoard24DBCarouselViewController__model] = sub_248277B58(a1);
  swift_unknownObjectUnownedInit();
  *&v2[OBJC_IVAR____TtC9DashBoard24DBCarouselViewController__sceneCoordinator] = a2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for DBCarouselViewController();
  v8 = a2;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
  (*(v7 + 8))(a1, v6);

  swift_unknownObjectRelease();
  return v9;
}

void sub_24827391C()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard24DBCarouselViewController____lazy_storage____nowPlayingViewController) = 0;
  sub_248384580();
  __break(1u);
}

id sub_2482739EC()
{
  v1 = OBJC_IVAR____TtC9DashBoard24DBCarouselViewController____lazy_storage____nowPlayingViewController;
  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard24DBCarouselViewController____lazy_storage____nowPlayingViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9DashBoard24DBCarouselViewController____lazy_storage____nowPlayingViewController);
  }

  else
  {
    v4 = [objc_allocWithZone(DBNowPlayingWidgetViewController) initWithEnvironment_];
    swift_unknownObjectRelease();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_248273AEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBCarouselViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_248273BD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_248381210();
  v92 = *(v2 - 8);
  v93 = v2;
  MEMORY[0x28223BE20](v2);
  v91 = v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v88 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE909E0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v94 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v88 - v11;
  v13 = type metadata accessor for DBCarouselViewController();
  v95.receiver = v1;
  v95.super_class = v13;
  objc_msgSendSuper2(&v95, sel_viewDidLoad);
  v88[1] = OBJC_IVAR____TtC9DashBoard24DBCarouselViewController__model;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE909E8);
  sub_248279224();
  sub_248382620();
  KeyPath = swift_getKeyPath();
  v14 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A18) + 36)];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90060) + 28);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A28);
  sub_24827940C(&qword_27EE90A30, &qword_27EE90A28, &unk_24839DD30, sub_2482793DC);
  sub_248381B20();
  v16 = sub_248381B10();
  (*(*(v16 - 8) + 56))(v14 + v15, 0, 1, v16);
  *v14 = KeyPath;
  v17 = swift_getKeyPath();
  v18 = &v12[*(v8 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A78) + 28);
  sub_248381200();
  v21 = v91;
  v20 = v92;
  v22 = v93;
  (*(v92 + 16))(v91, v6, v93);
  v23 = sub_2483824B0();
  MEMORY[0x24C1C8E30](v21, v23, v22);
  (*(v20 + 8))(v6, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  (*(*(v24 - 8) + 56))(v18 + v19, 0, 1, v24);
  *v18 = v17;
  v93 = v12;
  sub_248232C78(v12, v94, &qword_27EE909E0);
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A88));
  v26 = sub_248383350();
  v27 = [v26 view];
  if (!v27)
  {
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  v29 = [objc_opt_self() clearColor];
  [v28 setBackgroundColor_];

  [v1 addChildViewController_];
  v30 = [v1 view];
  if (!v30)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v31 = v30;
  v32 = v1;
  v33 = [v26 view];
  if (!v33)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v34 = v33;
  [v31 addSubview_];

  [v26 didMoveToParentViewController_];
  v35 = [v26 view];
  if (!v35)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v36 = v35;
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_24839CCB0;
  v38 = [v26 view];
  if (!v38)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v1 view];
  if (!v41)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v42 = v41;
  v43 = [v41 leadingAnchor];

  v44 = [v40 constraintEqualToAnchor_];
  *(v37 + 32) = v44;
  v45 = [v26 view];
  if (!v45)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v46 = v45;
  v47 = [v45 trailingAnchor];

  v48 = [v1 view];
  if (!v48)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v49 = v48;
  v50 = [v48 trailingAnchor];

  v51 = [v47 constraintEqualToAnchor_];
  *(v37 + 40) = v51;
  v52 = [v26 view];
  if (!v52)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v53 = v52;
  v54 = [v52 topAnchor];

  v55 = [v1 view];
  if (!v55)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v56 = v55;
  v57 = [v55 topAnchor];

  v58 = [v54 constraintEqualToAnchor_];
  *(v37 + 48) = v58;
  v59 = [v26 view];

  if (!v59)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v60 = [v59 bottomAnchor];

  v61 = [v1 view];
  if (!v61)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v62 = v61;
  v63 = objc_opt_self();
  v64 = [v62 bottomAnchor];

  v65 = [v60 constraintEqualToAnchor_];
  *(v37 + 56) = v65;
  sub_24814FB28(0, &qword_27EE8FE90);
  v66 = sub_248383B00();

  [v63 activateConstraints_];

  v67 = objc_allocWithZone(MEMORY[0x277D75AE0]);
  v94 = v32;
  v68 = v32;
  v69 = [v67 initWithTarget:v68 action:sel__handleSwipeGestureUp];
  [v69 setDirection_];
  v70 = v69;
  [v70 setDelegate_];
  v71 = objc_opt_self();
  v72 = [v71 sharedInstance];
  v73 = v70;
  if (v72)
  {
    v74 = v72;
    v73 = [swift_unknownObjectUnownedLoadStrong() displayIdentity];
    swift_unknownObjectRelease();
    [v74 addGestureRecognizer:v70 toDisplayWithIdentity:v73];
  }

  v75 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v68 action:sel__handleSwipeGestureDown];
  [v75 setDirection_];
  v76 = v75;
  [v76 setDelegate_];
  v77 = [v71 sharedInstance];
  if (v77)
  {
    v78 = v77;
    v79 = [swift_unknownObjectUnownedLoadStrong() displayIdentity];
    swift_unknownObjectRelease();
    [v78 addGestureRecognizer:v76 toDisplayWithIdentity:v79];

    v80 = v76;
  }

  else
  {
    v80 = v70;
    v70 = v76;
  }

  v81 = v93;
  v82 = ObjectType;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_24839C7F0;
  v84 = sub_248382C50();
  v85 = MEMORY[0x277D74BF0];
  *(v83 + 32) = v84;
  *(v83 + 40) = v85;
  v86 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  *(v87 + 24) = v82;
  sub_248383DF0();
  swift_unknownObjectRelease();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2483819A0();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2483819E0();

  sub_24822D578(v81, &qword_27EE909E0);
}

uint64_t sub_2482747DC()
{
  v0 = sub_248382220();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_248382210();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B08);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = sub_2483817D0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_248382670();
  if (!*(v17 + 16))
  {

    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_7;
  }

  (*(v7 + 16))(v9, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

  sub_2483821A0();
  (*(v7 + 8))(v9, v6);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_7:
    v23 = &qword_27EE90B08;
    v24 = v12;
    return sub_24822D578(v24, v23);
  }

  (*(v14 + 32))(v16, v12, v13);
  v18 = sub_24824D52C();
  if (!v19)
  {
    return (*(v14 + 8))(v16, v13);
  }

  (*((*MEMORY[0x277D85000] & **(v28 + OBJC_IVAR____TtC9DashBoard24DBCarouselViewController__sceneCoordinator)) + 0xC8))(&v29, v18);

  if (v30)
  {
    sub_24825ED6C(&v29, v31);
    v20 = v32;
    v21 = v33;
    __swift_project_boxed_opaque_existential_0(v31, v32);
    sub_2483822A0();
    sub_24833AE40(v2, v5);
    (*(v26 + 8))(v2, v27);
    (*(v21 + 16))(v5, v20, v21);
    sub_24822D578(v5, &qword_27EE904C0);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_0(v31);
  }

  (*(v14 + 8))(v16, v13);
  v23 = &unk_27EE90B10;
  v24 = &v29;
  return sub_24822D578(v24, v23);
}

uint64_t sub_248274C80()
{
  v1 = sub_248382210();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_2483817D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_248382670();
  if (!*(v12 + 16))
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_7;
  }

  (*(v2 + 16))(v4, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  sub_2483821A0();
  (*(v2 + 8))(v4, v1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_7:
    v18 = &qword_27EE90B08;
    v19 = v7;
    return sub_24822D578(v19, v18);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = sub_24824D52C();
  if (!v14)
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR____TtC9DashBoard24DBCarouselViewController__sceneCoordinator)) + 0xC8))(&v20, v13);

  if (v21)
  {
    sub_24825ED6C(&v20, v22);
    v15 = v23;
    v16 = v24;
    __swift_project_boxed_opaque_existential_0(v22, v23);
    (*(v16 + 24))(v15, v16);
    (*(v9 + 8))(v11, v8);
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  (*(v9 + 8))(v11, v8);
  v18 = &unk_27EE90B10;
  v19 = &v20;
  return sub_24822D578(v19, v18);
}

id sub_24827504C(void *a1)
{
  result = [v1 view];
  if (result)
  {
    v4 = result;
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [v1 view];
    [a1 locationInView_];
    v15 = v14;
    v17 = v16;

    v19.origin.x = v6;
    v19.origin.y = v8;
    v19.size.width = v10;
    v19.size.height = v12;
    v18.x = v15;
    v18.y = v17;
    return CGRectContainsPoint(v19, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_248275230(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B00);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v6 + 104))(&v12 - v8, *a3, v5, v7);
  v10 = a1;

  sub_248381A20();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_248275358@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v50 = a2;
  v2 = sub_248381A30();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90BF8);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FEA0);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90C08);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90C10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_2483817B0();
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v40 = &v39 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B08);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v39 - v19;
  v21 = sub_2483821E0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_248382210();
  v25 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2483822B0();
  (*(v22 + 104))(v24, *MEMORY[0x277CF8D60], v21);
  sub_248383F20();
  v51 = 0u;
  v52 = 0u;
  v53 = 1;
  v28 = sub_2483817D0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v39 = v29 + 56;
  v30(v20, 1, 1, v28);
  v31 = v43;
  sub_2483821C0();
  sub_2483816C0();
  if ((*(v31 + 48))(v12, 1, v13) == 1)
  {
    sub_24822D578(v12, &qword_27EE90C10);
  }

  else
  {
    v32 = *(v31 + 32);
    v44 = v30;
    v33 = v40;
    v32(v40, v12, v13);
    (*(v31 + 16))(v15, v33, v13);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90C20);
    (*(*(v34 - 8) + 56))(v41, 1, 1, v34);
    sub_248381210();
    sub_248381880();
    sub_2483835F0();
    sub_248381780();
    v44(v20, 0, 1, v28);
    sub_2483821B0();
    (*(v31 + 8))(v33, v13);
  }

  sub_248382680();
  sub_248381210();
  sub_248381880();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90C18);
  v35 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_24839C7F0;
  v37 = v45;
  (*(v25 + 16))(v36 + v35, v27, v45);
  (*(v48 + 104))(v47, *MEMORY[0x277CF8B70], v49);
  sub_248382650();
  return (*(v25 + 8))(v27, v37);
}

uint64_t sub_248275ACC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_24827771C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_248382680();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_248275BF8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_248383760();
  a1[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B48);
  sub_248382670();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B60);
  sub_24822D648(&qword_27EE90B68, &qword_27EE90B50);
  sub_2482797D4();
  sub_2482799D4(&qword_27EE90BB0, MEMORY[0x277CF8D68]);
  sub_248383730();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE909E8) + 36);
  sub_248383740();
  v4 = sub_248383460();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A10);
  v3[*(result + 36)] = v4;
  return result;
}

uint64_t sub_248275DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_248382210();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  sub_248382630();
  sub_2483821F0();
  CGRectGetWidth(v16);
  sub_2483821F0();
  CGRectGetHeight(v17);
  sub_248383760();
  sub_248383090();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B90) + 36));
  v9 = v15[1];
  *v8 = v15[0];
  v8[1] = v9;
  v8[2] = v15[2];
  sub_2483821F0();
  MidX = CGRectGetMidX(v18);
  sub_2483821F0();
  MidY = CGRectGetMidY(v19);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B80) + 36));
  *v12 = MidX;
  v12[1] = MidY;
  v13 = sub_248382200();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B60);
  *(a2 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_248275F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_248232C78(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_248275FE8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v66 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90080);
  MEMORY[0x28223BE20](v72);
  v67 = &v55 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B28);
  MEMORY[0x28223BE20](v70);
  v71 = &v55 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90B30);
  MEMORY[0x28223BE20](v61);
  v62 = &v55 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A60);
  MEMORY[0x28223BE20](v69);
  v64 = &v55 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A70);
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v58 = &v55 - v11;
  v12 = sub_2483817B0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v73 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v55 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = sub_248381760();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a2;
  sub_2483817C0();
  v75 = *(v13 + 88);
  v24 = v75(v19, v12);
  v60 = *MEMORY[0x277CF8AF0];
  v65 = v21;
  v74 = a3;
  v68 = v4;
  if (v24 != v60)
  {
    (*(v13 + 8))(v19, v12);
LABEL_8:
    v34 = v75;
    v35 = v76;
    goto LABEL_11;
  }

  v57 = v13;
  (*(v13 + 96))(v19, v12);
  (*(v21 + 32))(v23, v19, v20);
  v25 = objc_opt_self();
  v26 = [v25 sharedInstance];
  sub_248381750();
  v27 = sub_248383930();

  v28 = [v26 applicationWithBundleIdentifier_];

  if (!v28)
  {
    (*(v21 + 8))(v23, v20);
    a3 = v74;
    v13 = v57;
    goto LABEL_8;
  }

  v29 = v23;
  v56 = v20;
  v30 = v28;
  v31 = [v25 &selRef_settingsWithDuration_timingFunction_];
  v32 = [v31 radioApplication];

  if (v32)
  {
    sub_24814FB28(0, &qword_27EE91E40);
    v33 = sub_248384030();

    a3 = v74;
    v34 = v75;
    v35 = v76;
    v36 = v65;
    if (v33)
    {
      v37 = sub_2482739EC();
      *(swift_allocObject() + 16) = v37;
      sub_24814FB28(0, &qword_27EE90B40);
      v38 = v58;
      sub_248381C30();
      v39 = v59;
      v40 = v63;
      (*(v59 + 16))(v62, v38, v63);
      swift_storeEnumTagMultiPayload();
      sub_24822D648(&qword_27EE90A68, &qword_27EE90A70);
      sub_24825D8D0();
      v77 = v30;
      v41 = v64;
      sub_248383420();
      sub_248232C78(v41, v71, &qword_27EE90A60);
      swift_storeEnumTagMultiPayload();
      sub_248279514();
      sub_248383420();

      sub_24822D578(v41, &qword_27EE90A60);
      (*(v39 + 8))(v38, v40);
      (*(v65 + 8))(v29, v56);
      v42 = 0;
      goto LABEL_17;
    }
  }

  else
  {

    a3 = v74;
    v34 = v75;
    v35 = v76;
    v36 = v65;
  }

  v43 = *(v36 + 8);
  v20 = v56;
  v43(v29, v56);
  v13 = v57;
LABEL_11:
  sub_2483817C0();
  v44 = v34(v35, v12);
  v45 = v73;
  if (v44 == *MEMORY[0x277CF8AE8])
  {
    (*(v13 + 96))(v35, v12);
    v46 = sub_248381770();
    (*(*(v46 - 8) + 8))(v35, v46);
    v47 = v67;
    sub_248276A48(v66, v67);
    sub_248232C78(v47, v62, &qword_27EE90080);
    swift_storeEnumTagMultiPayload();
    sub_24822D648(&qword_27EE90A68, &qword_27EE90A70);
    sub_24825D8D0();
    v48 = v64;
    sub_248383420();
    sub_248232C78(v48, v71, &qword_27EE90A60);
    swift_storeEnumTagMultiPayload();
    sub_248279514();
    sub_248383420();
    sub_24822D578(v48, &qword_27EE90A60);
    v49 = v47;
  }

  else
  {
    v50 = *(v13 + 8);
    v50(v35, v12);
    sub_2483817C0();
    v51 = v34(v45, v12);
    if (v51 != v60)
    {
      v50(v45, v12);
      v42 = 1;
      a3 = v74;
      goto LABEL_17;
    }

    (*(v13 + 96))(v45, v12);
    (*(v65 + 8))(v45, v20);
    v52 = v67;
    sub_248276FF8(v66, v67);
    sub_248232C78(v52, v71, &qword_27EE90080);
    swift_storeEnumTagMultiPayload();
    sub_248279514();
    sub_24825D8D0();
    a3 = v74;
    sub_248383420();
    v49 = v52;
  }

  sub_24822D578(v49, &qword_27EE90080);
  v42 = 0;
LABEL_17:
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A50);
  return (*(*(v53 - 8) + 56))(a3, v42, 1, v53);
}

uint64_t sub_248276A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v47 = a2;
  v3 = sub_248383140();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2483817B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  [v11 screenScale];
  v13 = v12;

  sub_2483817C0();
  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277CF8AE8])
  {
    (*(v8 + 96))(v10, v7);
    v14 = sub_248381770();
    (*(*(v14 - 8) + 8))(v10, v14);
    v15 = sub_24824D52C();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v19 = *(v2 + OBJC_IVAR____TtC9DashBoard24DBCarouselViewController__sceneCoordinator);
      sub_2483821F0();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      CGAffineTransformMakeScale(&v48, v13, v13);
      v54.origin.x = v21;
      v54.origin.y = v23;
      v54.size.width = v25;
      v54.size.height = v27;
      v55 = CGRectApplyAffineTransform(v54, &v48);
      x = v55.origin.x;
      y = v55.origin.y;
      width = v55.size.width;
      height = v55.size.height;
      sub_2483821D0();
      (*(v4 + 104))(v6, *MEMORY[0x277CDFA88], v3);
      sub_248383D60();
      v32 = sub_2482B1D74(v13, v31);
      (*((*MEMORY[0x277D85000] & *v19) + 0xB8))(&v49, v17, v18, x, y, width, height, v32, v33, v34, v35);

      if (v50)
      {
        sub_24825ED6C(&v49, v51);
        v36 = v52;
        v37 = v53;
        __swift_project_boxed_opaque_existential_0(v51, v52);
        v38 = (*(v37 + 8))(v36, v37);
        CGAffineTransformMakeScale(&v48, 1.0 / v13, 1.0 / v13);
        [v38 setTransform_];

        sub_24825D530(v51, &v48);
        v39 = swift_allocObject();
        sub_24825ED6C(&v48, v39 + 16);
        sub_24814FB28(0, &qword_27EE8FFC0);
        v40 = v47;
        sub_248382640();
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FFB0);
        (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
        return __swift_destroy_boxed_opaque_existential_0(v51);
      }

      sub_24822D578(&v49, &unk_27EE90B10);
    }
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FFB0);
  return (*(*(v43 - 8) + 56))(v47, 1, 1, v43);
}

uint64_t sub_248276FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v53 = a2;
  v52 = sub_248383140();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &x - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2483817B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &x - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248381760();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &x - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  [v12 screenScale];
  v14 = v13;

  sub_2483817C0();
  if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277CF8AF0])
  {
    (*(v5 + 96))(v7, v4);
    (*(v9 + 32))(v11, v7, v8);
    v15 = [objc_opt_self() sharedInstance];
    sub_248381750();
    v16 = sub_248383930();

    v17 = [v15 applicationWithBundleIdentifier_];

    v18 = v8;
    if (v17)
    {
      v19 = sub_24824D52C();
      if (v20)
      {
        v21 = v19;
        v22 = v20;
        v23 = *(v2 + OBJC_IVAR____TtC9DashBoard24DBCarouselViewController__sceneCoordinator);
        sub_2483821F0();
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        CGAffineTransformMakeScale(&v54, v14, v14);
        v60.origin.x = v25;
        v60.origin.y = v27;
        v60.size.width = v29;
        v60.size.height = v31;
        v61 = CGRectApplyAffineTransform(v60, &v54);
        x = v61.origin.x;
        y = v61.origin.y;
        width = v61.size.width;
        height = v61.size.height;
        sub_2483821D0();
        (*(v51 + 104))(v49, *MEMORY[0x277CDFA88], v52);
        sub_248383D60();
        v36 = sub_2482B1D74(v14, v35);
        (*((*MEMORY[0x277D85000] & *v23) + 0xC0))(&v55, v21, v22, v17, x, y, width, height, v36, v37, v38, v39);

        if (v56)
        {
          sub_24825ED6C(&v55, v57);
          v40 = v58;
          v41 = v59;
          __swift_project_boxed_opaque_existential_0(v57, v58);
          v42 = (*(v41 + 8))(v40, v41);
          CGAffineTransformMakeScale(&v54, 1.0 / v14, 1.0 / v14);
          [v42 setTransform_];

          sub_24825D530(v57, &v54);
          v43 = swift_allocObject();
          sub_24825ED6C(&v54, v43 + 16);
          sub_24814FB28(0, &qword_27EE8FFC0);
          v44 = v53;
          sub_248382640();

          (*(v9 + 8))(v11, v18);
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FFB0);
          (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
          return __swift_destroy_boxed_opaque_existential_0(v57);
        }

        (*(v9 + 8))(v11, v8);

        sub_24822D578(&v55, &unk_27EE90B10);
      }

      else
      {
        (*(v9 + 8))(v11, v8);
      }
    }

    else
    {
      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FFB0);
  return (*(*(v47 - 8) + 56))(v53, 1, 1, v47);
}

size_t sub_24827771C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BE8);
  v10 = *(sub_248382680() - 8);
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
  v15 = *(sub_248382680() - 8);
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

size_t sub_2482778F4(size_t a1, int64_t a2, char a3)
{
  result = sub_24827797C(a1, a2, a3, *v3, &qword_27EE90BE8, &unk_24839DE98, MEMORY[0x277CF8EB8]);
  *v3 = result;
  return result;
}

size_t sub_248277938(size_t a1, int64_t a2, char a3)
{
  result = sub_24827797C(a1, a2, a3, *v3, &qword_27EE90BF0, &unk_24839D640, MEMORY[0x277CF8AC8]);
  *v3 = result;
  return result;
}

size_t sub_24827797C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_248277B58(int64_t a1)
{
  v159 = a1;
  v164 = sub_248381740();
  v166 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v156 = &v133 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v155 = &v133 - v3;
  MEMORY[0x28223BE20](v4);
  v165 = &v133 - v5;
  v145 = sub_248382220();
  v157 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v135 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v136 = &v133 - v8;
  MEMORY[0x28223BE20](v9);
  v143 = &v133 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BB8);
  MEMORY[0x28223BE20](v11 - 8);
  v137 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v133 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B08);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v133 - v17;
  v172 = sub_2483817B0();
  v144 = *(v172 - 1);
  MEMORY[0x28223BE20](v172);
  v171 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_248382210();
  v21 = *(v20 - 8);
  v173 = v20;
  v174 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_248382680();
  v24 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v134 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v133 = &v133 - v27;
  MEMORY[0x28223BE20](v28);
  v142 = &v133 - v29;
  MEMORY[0x28223BE20](v30);
  v140 = &v133 - v31;
  MEMORY[0x28223BE20](v32);
  v139 = &v133 - v33;
  MEMORY[0x28223BE20](v34);
  v161 = &v133 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BC0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v138 = &v133 - v40;
  MEMORY[0x28223BE20](v41);
  v151 = &v133 - v42;
  v43 = sub_2483822E0();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v133 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v47);
  v148 = v44;
  v49 = *(v44 + 16);
  v141 = &v133 - v50;
  v51 = v159;
  v49(v48);
  v163 = v46;
  v146 = v43;
  (v49)(v46, v51, v43);
  v52 = sub_248382260();
  v53 = *(v52 + 16);
  v150 = v15;
  v160 = v38;
  v167 = v24;
  v149 = v53;
  if (v53)
  {
    v54 = 0;
    v154 = v52 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v153 = v24 + 16;
    v175 = v174 + 16;
    v55 = (v174 + 8);
    v170 = (v144 + 88);
    v169 = *MEMORY[0x277CF8AE8];
    v168 = (v144 + 8);
    v147 = (v24 + 8);
    v56 = v162;
    v57 = v173;
    v152 = v52;
    do
    {
      v60 = *(v52 + 16);
      if (v54 >= v60)
      {
        goto LABEL_67;
      }

      v61 = *(v24 + 72);
      v158 = v54;
      v51 = v161;
      (*(v24 + 16))(v161, v154 + v61 * v54, v56);
      v62 = sub_248382670();
      v56 = v62;
      v24 = v174;
      v177 = *(v62 + 16);
      if (v177)
      {
        v46 = 0;
        v176 = (v62 + ((*(v174 + 80) + 32) & ~*(v174 + 80)));
        do
        {
          v60 = *(v56 + 16);
          if (v46 >= v60)
          {
            __break(1u);
            goto LABEL_66;
          }

          (*(v24 + 16))(v23, &v176[*(v24 + 72) * v46], v57);
          v51 = v23;
          sub_2483821A0();
          v38 = sub_2483817D0();
          v63 = *(v38 - 8);
          if ((*(v63 + 48))(v18, 1, v38) == 1)
          {
            (*v55)(v23, v57);
            sub_24822D578(v18, &qword_27EE90B08);
          }

          else
          {
            v64 = v57;
            v65 = v171;
            sub_2483817C0();
            (*v55)(v23, v64);
            (*(v63 + 8))(v18, v38);
            v51 = v172;
            v66 = (*v170)(v65, v172);
            if (v66 == v169)
            {

              (*(v144 + 96))(v65, v51);
              v67 = sub_248381770();
              (*(*(v67 - 8) + 8))(v65, v67);
              v24 = v167;
              v68 = v151;
              v56 = v162;
              (*(v167 + 32))(v151, v161, v162);
              v69 = 0;
              v38 = v160;
              goto LABEL_15;
            }

            (*v168)(v65, v51);
            v57 = v173;
            v24 = v174;
          }

          ++v46;
        }

        while (v177 != v46);
      }

      v58 = v158 + 1;

      v56 = v162;
      (*v147)(v161, v162);
      v54 = v58;
      v59 = v58 == v149;
      v51 = v159;
      v38 = v160;
      v24 = v167;
      v46 = v157;
      v52 = v152;
    }

    while (!v59);

    v69 = 1;
    v68 = v151;
  }

  else
  {

    v69 = 1;
    v56 = v162;
    v68 = v151;
LABEL_15:
    v46 = v157;
  }

  v70 = (v24 + 56);
  v172 = *(v24 + 56);
  v172(v68, v69, 1, v56);
  v179 = MEMORY[0x277D84F90];
  v71 = v68;
  v72 = v138;
  sub_248232C78(v71, v138, &qword_27EE90BC0);
  v177 = *(v24 + 48);
  v73 = (v177)(v72, 1, v56);
  v18 = v143;
  v176 = (v24 + 48);
  if (v73 != 1)
  {
    v46 = *(v24 + 32);
    v74 = v72;
    v75 = v139;
    (v46)(v139, v74, v56);
    (*(v24 + 16))(v140, v75, v56);
    v23 = sub_24827771C(0, 1, 1, MEMORY[0x277D84F90]);
    v38 = *(v23 + 16);
    v60 = *(v23 + 24);
    v51 = v38 + 1;
    v56 = v24 + 56;
    if (v38 >= v60 >> 1)
    {
      goto LABEL_70;
    }

    goto LABEL_19;
  }

  sub_24822D578(v72, &qword_27EE90BC0);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_248382290();
    sub_2483822A0();
    v80 = *(v46 + 88);
    v56 = v145;
    if (v80(v18, v145) == *MEMORY[0x277CF8D88])
    {
      break;
    }

    v171 = v70;
    v170 = *(v148 + 8);
    v170(v141, v146);
    v93 = *(v46 + 8);
    v93(v18, v56);
    v94 = v136;
    sub_2483822A0();
    v95 = v80(v94, v56);
    v18 = *MEMORY[0x277CF8D78];
    if (v95 != v18)
    {
      v93(v94, v56);
LABEL_41:
      v112 = v80;
      v113 = v135;
      sub_2483822A0();
      v114 = v112(v113, v56);
      v38 = v160;
      if (v114 != v18)
      {
        v93(v113, v56);
        sub_248383DA0();
        v123 = *sub_24814FB80();
        sub_248382A40();

        goto LABEL_62;
      }

      (*(v157 + 96))(v113, v56);

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BD0) + 48);
      v115 = sub_248381D00();
      (*(*(v115 - 8) + 8))(&v113[v23], v115);
      v116 = sub_2483816F0();
      v117 = *(v116 + 16);
      if (!v117)
      {

LABEL_60:
        v56 = MEMORY[0x277D84F90];
LABEL_61:
        sub_248275ACC(v56);
LABEL_62:
        v87 = v150;
        v88 = v137;
        v85 = v146;
        v92 = v170;
        v172(v38, 1, 1, v162);
        goto LABEL_63;
      }

      v178 = MEMORY[0x277D84F90];
      v38 = v116;
      sub_2482778F4(0, v117, 0);
      v118 = 0;
      v56 = v178;
      v177 = (v38 + ((*(v166 + 80) + 32) & ~*(v166 + 80)));
      v175 = v166 + 8;
      v176 = (v166 + 16);
      v24 += 32;
      v51 = v162;
      v46 = v134;
      while (1)
      {
        v60 = *(v38 + 16);
        if (v118 >= v60)
        {
          break;
        }

        v23 = v165;
        v119 = v166;
        v120 = v164;
        (*(v166 + 16))(v165, &v177[*(v166 + 72) * v118], v164);
        sub_248275358(v23, v46);
        (*(v119 + 8))(v23, v120);
        v178 = v56;
        v122 = *(v56 + 16);
        v121 = *(v56 + 24);
        v18 = v122 + 1;
        if (v122 >= v121 >> 1)
        {
          sub_2482778F4(v121 > 1, v122 + 1, 1);
          v51 = v162;
          v56 = v178;
        }

        ++v118;
        *(v56 + 16) = v18;
        (*(v167 + 32))(v56 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v122, v46, v51);
        if (v117 == v118)
        {

          v38 = v160;
          goto LABEL_61;
        }
      }

LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v96 = *(v46 + 96);
    v46 += 96;
    v96(v94, v56);

    v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BD0) + 48);
    v98 = sub_248381D00();
    v99 = &v94[v97];
    v56 = v145;
    (*(*(v98 - 8) + 8))(v99, v98);
    if ((v177)(v151, 1, v162) != 1)
    {
      goto LABEL_41;
    }

    v100 = sub_2483816F0();
    v23 = MEMORY[0x277D84F90];
    v38 = v160;
    v177 = *(v100 + 16);
    if (v177)
    {
      v101 = 0;
      v173 = v166 + 8;
      v174 = v166 + 16;
      v175 = v100;
      v176 = (v166 + 32);
      v51 = v164;
      do
      {
        v60 = *(v100 + 16);
        if (v101 >= v60)
        {
          goto LABEL_68;
        }

        v102 = v38;
        v103 = v166;
        v56 = (*(v103 + 80) + 32) & ~*(v103 + 80);
        v46 = *(v166 + 72);
        v104 = v155;
        (*(v166 + 16))(v155, v100 + v56 + v46 * v101, v51);
        v105 = v165;
        sub_248381720();
        sub_2482799D4(&qword_27EE90BD8, MEMORY[0x277CF8AC8]);
        v106 = v51;
        v107 = sub_248383910();
        v18 = *(v103 + 8);
        (v18)(v105, v106);
        if (v107)
        {
          (v18)(v104, v106);
          v51 = v106;
          v38 = v102;
        }

        else
        {
          v108 = *v176;
          (*v176)(v156, v104, v106);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v178 = v23;
          if (isUniquelyReferenced_nonNull_native)
          {
            v51 = v106;
          }

          else
          {
            sub_248277938(0, *(v23 + 16) + 1, 1);
            v51 = v164;
            v23 = v178;
          }

          v111 = *(v23 + 16);
          v110 = *(v23 + 24);
          v18 = v111 + 1;
          if (v111 >= v110 >> 1)
          {
            sub_248277938(v110 > 1, v111 + 1, 1);
            v51 = v164;
            v23 = v178;
          }

          *(v23 + 16) = v18;
          v108(v23 + v56 + v111 * v46, v156, v51);
          v38 = v160;
        }

        ++v101;
        v24 = v167;
        v100 = v175;
      }

      while (v177 != v101);
    }

    v124 = *(v23 + 16);
    if (!v124)
    {

      goto LABEL_60;
    }

    v178 = MEMORY[0x277D84F90];
    sub_2482778F4(0, v124, 0);
    v125 = 0;
    v56 = v178;
    v177 = (v23 + ((*(v166 + 80) + 32) & ~*(v166 + 80)));
    v175 = v166 + 8;
    v176 = (v166 + 16);
    v24 += 32;
    v51 = v162;
    v38 = v133;
    while (1)
    {
      v60 = *(v23 + 16);
      if (v125 >= v60)
      {
        break;
      }

      v46 = v165;
      v126 = v166;
      v127 = v164;
      (*(v166 + 16))(v165, &v177[*(v166 + 72) * v125], v164);
      sub_248275358(v46, v38);
      (*(v126 + 8))(v46, v127);
      v178 = v56;
      v129 = *(v56 + 16);
      v128 = *(v56 + 24);
      v18 = v129 + 1;
      if (v129 >= v128 >> 1)
      {
        sub_2482778F4(v128 > 1, v129 + 1, 1);
        v51 = v162;
        v56 = v178;
      }

      ++v125;
      *(v56 + 16) = v18;
      (*(v167 + 32))(v56 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v129, v38, v51);
      if (v124 == v125)
      {

        v38 = v160;
        goto LABEL_61;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    v23 = sub_24827771C(v60 > 1, v51, 1, v23);
LABEL_19:
    v77 = v24 + 8;
    v76 = *(v24 + 8);
    v78 = v162;
    v76(v139, v162);
    *(v23 + 16) = v51;
    v79 = v78;
    v24 = v167;
    (v46)(v23 + ((*(v77 + 72) + 32) & ~*(v77 + 72)) + *(v77 + 64) * v38, v140, v79);
    v179 = v23;
    v38 = v160;
    v70 = v56;
    v46 = v157;
  }

  (*(v46 + 96))(v18, v56);

  v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BE0) + 64);
  v82 = sub_248381D00();
  (*(*(v82 - 8) + 8))(v18 + v81, v82);
  v83 = v165;
  sub_248381720();
  v84 = v141;
  sub_248275358(v83, v142);
  (*(v166 + 8))(v83, v164);
  v85 = v146;
  v86 = *(v148 + 8);
  v86(v84, v146);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_24827771C(0, *(v23 + 16) + 1, 1, v23);
  }

  v87 = v150;
  v88 = v137;
  v90 = *(v23 + 16);
  v89 = *(v23 + 24);
  if (v90 >= v89 >> 1)
  {
    v23 = sub_24827771C(v89 > 1, v90 + 1, 1, v23);
  }

  *(v23 + 16) = v90 + 1;
  v91 = v162;
  (*(v24 + 32))(v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v90, v142, v162);
  v179 = v23;
  v92 = v86;
  v172(v38, 1, 1, v91);
LABEL_63:
  sub_248232C78(v87, v88, &qword_27EE90BB8);
  v130 = sub_248381D00();
  if ((*(*(v130 - 8) + 48))(v88, 1, v130) == 1)
  {

    result = v92(v163, v85);
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BC8);
    swift_allocObject();
    v131 = sub_2483819F0();
    sub_24822D578(v87, &qword_27EE90BB8);
    sub_24822D578(v151, &qword_27EE90BC0);
    v92(v163, v85);
    return v131;
  }

  return result;
}

uint64_t type metadata accessor for DBCarouselViewController()
{
  result = qword_27EE957E0;
  if (!qword_27EE957E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_248279224()
{
  result = qword_27EE909F0;
  if (!qword_27EE909F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE909E8);
    sub_24822D648(&qword_27EE909F8, &qword_27EE90A00);
    sub_24822D648(&qword_27EE90A08, &qword_27EE90A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE909F0);
  }

  return result;
}

uint64_t sub_248279308@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_248275FE8(a1, a2, a3);

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A40);
  return (*(*(v9 - 8) + 56))(a3, v8, 1, v9);
}

uint64_t sub_24827940C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_248279488()
{
  result = qword_27EE90A48;
  if (!qword_27EE90A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90A50);
    sub_248279514();
    sub_24825D8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90A48);
  }

  return result;
}

unint64_t sub_248279514()
{
  result = qword_27EE90A58;
  if (!qword_27EE90A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90A60);
    sub_24822D648(&qword_27EE90A68, &qword_27EE90A70);
    sub_24825D8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90A58);
  }

  return result;
}

void sub_2482795CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9DashBoard24DBCarouselViewController__sceneCoordinator);

    (*((*MEMORY[0x277D85000] & *v2) + 0xE8))();
  }
}

void sub_248279698(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a2(a1);
  }
}

uint64_t sub_24827970C()
{
  result = sub_2483822E0();
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

unint64_t sub_2482797D4()
{
  result = qword_27EE90B70;
  if (!qword_27EE90B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90B60);
    sub_24827988C();
    sub_24822D648(&qword_27EE90BA0, &qword_27EE90BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90B70);
  }

  return result;
}

unint64_t sub_24827988C()
{
  result = qword_27EE90B78;
  if (!qword_27EE90B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90B80);
    sub_248279918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90B78);
  }

  return result;
}

unint64_t sub_248279918()
{
  result = qword_27EE90B88;
  if (!qword_27EE90B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90B90);
    sub_2482799D4(&qword_27EE90B98, MEMORY[0x277CF8EA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90B88);
  }

  return result;
}

uint64_t sub_2482799D4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_248279A1C(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v15.receiver = objc_allocWithZone(v6);
  v15.super_class = v6;
  v13 = objc_msgSendSuper2(&v15, sel_initWithWindowScene_, a1);
  [v13 setFrame_];
  [v13 setWindowLevel_];

  return v13;
}

id sub_248279ADC(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v15.receiver = v6;
  v15.super_class = type metadata accessor for DBWindow();
  v13 = objc_msgSendSuper2(&v15, sel_initWithWindowScene_, a1);
  [v13 setFrame_];
  [v13 setWindowLevel_];

  return v13;
}

double sub_248279B98(char a1)
{
  switch(a1)
  {
    case 2:
      v1 = MEMORY[0x277D772B0];
      return *v1;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      type metadata accessor for Level();
      sub_24827A5FC(&unk_27EE90F50);
      sub_248382B90();
      return v3;
    case 15:
      v1 = MEMORY[0x277D76A38];
      return *v1;
    default:
      type metadata accessor for Level();
      sub_24827A5FC(&unk_27EE90F50);
      sub_248382BA0();
      return v3;
  }
}

void type metadata accessor for Level()
{
  if (!qword_27EE911A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE911A0);
    }
  }
}

id DBWindow.__allocating_init(windowScene:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene_];

  return v3;
}

id DBWindow.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24827A16C(unsigned __int8 a1)
{
  sub_248384780();
  MEMORY[0x24C1CBD70](a1);
  return sub_2483847B0();
}

unint64_t sub_24827A1B8()
{
  result = qword_27EE90C30;
  if (!qword_27EE90C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90C30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DBWindowLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DBWindowLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24827A364(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x24C1C8A30](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24827A3B8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x24C1C8A40](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

double sub_24827A438@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_24827A444()
{
  sub_24827A5FC(&unk_27EE911C0);
  sub_24827A5FC(&qword_27EE90C48);
  sub_24827A640();
  return sub_248384600();
}

uint64_t sub_24827A560()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x24C1CBD80](*&v1);
}

uint64_t sub_24827A59C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

uint64_t sub_24827A5FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Level();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24827A640()
{
  result = qword_27EE911D0;
  if (!qword_27EE911D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE911D0);
  }

  return result;
}

id DBCAFCarManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DBCAFCarManager.init()()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC9DashBoard15DBCAFCarManager_car] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for DBCAFCarManager();
  v1 = objc_msgSendSuper2(&v11, sel_init);
  v2 = DBApp;
  v3 = v1;
  v4 = [v2 carManager];
  [v4 registerObserver_];

  v5 = [DBApp carManager];
  v6 = [v5 currentCar];

  v7 = OBJC_IVAR____TtC9DashBoard15DBCAFCarManager_car;
  swift_beginAccess();
  v8 = *&v3[v7];
  *&v3[v7] = v6;
  v9 = v6;

  sub_24827B060();
  return v3;
}

void DBCAFCarManager.delegate.setter()
{
  swift_beginAccess();
  v1 = swift_unknownObjectWeakAssign();
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))(v1);
  _s9DashBoard15DBCAFCarManagerC23carDidUpdateAccessoriesyySo6CAFCarCF_0(v2);
  swift_unknownObjectRelease();
}

void _s9DashBoard15DBCAFCarManagerC23carDidUpdateAccessoriesyySo6CAFCarCF_0(void *a1)
{
  if (!a1)
  {
    return;
  }

  v18 = a1;
  v2 = [v18 automakerExteriorCamera];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 receivedAllValues];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v18 hasAccessoryType_] | v4;
  v6 = [v18 audioSettings];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 receivedAllValues];

    LOBYTE(v5) = v8 | v5;
  }

  v9 = [v18 automakerRequestContent];
  sub_24827B6EC();
  v10 = sub_248383B10();

  if (v10 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248384360())
  {
    v12 = 0;
    while (1)
    {
      if (i == v12)
      {

        goto LABEL_24;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1CBA50](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v15 = [v13 receivedAllValues];

      ++v12;
      if ((v15 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  if (v5)
  {
LABEL_24:
    v17 = (*((*MEMORY[0x277D85000] & *v1) + 0x60))(v16);
    if (v17)
    {
      [v17 carManager:v1 didUpdateCar:v18];

      swift_unknownObjectRelease();
      return;
    }
  }
}

void (*DBCAFCarManager.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9DashBoard15DBCAFCarManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_24827AD60;
}

void sub_24827AD60(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[4];
    swift_endAccess();
    v5 = swift_unknownObjectRelease();
    v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x78))(v5);
    _s9DashBoard15DBCAFCarManagerC23carDidUpdateAccessoriesyySo6CAFCarCF_0(v6);
  }

  free(v3);
}

void *DBCAFCarManager.car.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBCAFCarManager_car;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24827AF38(void *a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBCAFCarManager_car;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_24827B060();
}

uint64_t sub_24827AFA0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

void sub_24827AFFC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9DashBoard15DBCAFCarManager_car;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_24827B060();
}

void sub_24827B060()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBCAFCarManager_car;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = [v2 positionManager];
  if (v3)
  {
    v4 = v3;
    [v3 registerObserver_];
  }

  v5 = *(v0 + v1);
  if (v5)
  {
    [v5 registerObserver_];
    v6 = *(v0 + v1);
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  v7 = v6;
  _s9DashBoard15DBCAFCarManagerC23carDidUpdateAccessoriesyySo6CAFCarCF_0(v6);
}

id DBCAFCarManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBCAFCarManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DBCAFCarManager.positionManager(_:didUpdate:)(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x78))();
    if (v4)
    {
      v6 = v4;
      v5 = (*((*v3 & *v2) + 0x60))();
      if (v5)
      {
        [v5 carManager:v2 didUpdateCar:v6];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_24827B568(void *a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBCAFCarManager_car;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_24827B060();
  v6 = sub_248383D90();
  v7 = *sub_24827BCC0();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v5;
    *v10 = a1;
    v11 = v5;
    _os_log_impl(&dword_248146000, v8, v6, "currentCar: %@", v9, 0xCu);
    sub_24827B684(v10);
    MEMORY[0x24C1CD5F0](v10, -1, -1);
    MEMORY[0x24C1CD5F0](v9, -1, -1);
  }
}

uint64_t sub_24827B684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24827B6EC()
{
  result = qword_27EE90CD0;
  if (!qword_27EE90CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE90CD0);
  }

  return result;
}

uint64_t *sub_24827B798()
{
  if (qword_27EE95BF8 != -1)
  {
    swift_once();
  }

  return &qword_27EE98E90;
}

uint64_t *sub_24827B834()
{
  if (qword_27EE95C00 != -1)
  {
    swift_once();
  }

  return &qword_27EE98E98;
}

uint64_t *sub_24827B8C4()
{
  if (qword_27EE95C08 != -1)
  {
    swift_once();
  }

  return &qword_27EE98EA0;
}

uint64_t *sub_24827B964()
{
  if (qword_27EE95C10 != -1)
  {
    swift_once();
  }

  return &qword_27EE98EA8;
}

uint64_t sub_24827B9D8()
{
  sub_24827C9FC();

  result = sub_2483841C0();
  qword_27EE98EB0 = result;
  return result;
}

uint64_t *sub_24827BA50()
{
  if (qword_27EE95C18 != -1)
  {
    swift_once();
  }

  return &qword_27EE98EB0;
}

uint64_t sub_24827BAC4()
{
  sub_24827C9FC();

  result = sub_2483841C0();
  qword_27EE98EB8 = result;
  return result;
}

uint64_t *sub_24827BB3C()
{
  if (qword_27EE95C20 != -1)
  {
    swift_once();
  }

  return &qword_27EE98EB8;
}

uint64_t sub_24827BBB0()
{
  sub_24827C9FC();

  result = sub_2483841C0();
  qword_27EE98EC0 = result;
  return result;
}

uint64_t *sub_24827BC28()
{
  if (qword_27EE95C28 != -1)
  {
    swift_once();
  }

  return &qword_27EE98EC0;
}

uint64_t *sub_24827BCC0()
{
  if (qword_27EE95C30 != -1)
  {
    swift_once();
  }

  return &qword_27EE98EC8;
}

uint64_t *sub_24827BD58()
{
  if (qword_27EE95C38 != -1)
  {
    swift_once();
  }

  return &qword_27EE98ED0;
}

uint64_t *sub_24827BDF0()
{
  if (qword_27EE95C40 != -1)
  {
    swift_once();
  }

  return &qword_27EE98ED8;
}

uint64_t *sub_24827BE88()
{
  if (qword_27EE95C48 != -1)
  {
    swift_once();
  }

  return &qword_27EE98EE0;
}

uint64_t *sub_24827BF14()
{
  if (qword_27EE95C50 != -1)
  {
    swift_once();
  }

  return &qword_27EE98EE8;
}

uint64_t *sub_24827BFA8()
{
  if (qword_27EE95C58 != -1)
  {
    swift_once();
  }

  return &qword_27EE98EF0;
}

uint64_t *sub_24827C040()
{
  if (qword_27EE95C60 != -1)
  {
    swift_once();
  }

  return &qword_27EE98EF8;
}

uint64_t *sub_24827C0E0()
{
  if (qword_27EE95C68 != -1)
  {
    swift_once();
  }

  return &qword_27EE98F00;
}

uint64_t *sub_24827C174()
{
  if (qword_27EE95C70 != -1)
  {
    swift_once();
  }

  return &qword_27EE98F08;
}

uint64_t sub_24827C208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_24827C9FC();

  result = sub_2483841C0();
  *a4 = result;
  return result;
}

uint64_t *sub_24827C280()
{
  if (qword_27EE95C78 != -1)
  {
    swift_once();
  }

  return &qword_27EE98F10;
}

uint64_t sub_24827C2F4()
{
  sub_24827C9FC();

  result = sub_2483841C0();
  qword_27EE98F18 = result;
  return result;
}

uint64_t *sub_24827C36C()
{
  if (qword_27EE95C80 != -1)
  {
    swift_once();
  }

  return &qword_27EE98F18;
}

uint64_t sub_24827C7D8(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_248382A90();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_248382AA0();
}

uint64_t sub_24827C888(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_248382A90();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_24827C900@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_248382A90();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_24827C9FC()
{
  result = qword_27EE90950;
  if (!qword_27EE90950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE90950);
  }

  return result;
}

id DBElevatedScreenResizeButton.init(transitionControlType:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9DashBoard28DBElevatedScreenResizeButton_transitionControlType] = a1;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for DBElevatedScreenResizeButton();
  v2 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24839C7F0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = v2;
  v7 = [v5 bundleForClass_];
  v8 = sub_248383930();
  v9 = sub_248383930();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  v11 = sub_248383960();
  v13 = v12;

  *(v3 + 32) = v11;
  *(v3 + 40) = v13;
  v14 = sub_248383B00();

  [v6 setAccessibilityUserInputLabels_];

  [v6 updateConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24839C7F0;
  v16 = sub_248383870();
  v17 = sub_24827CCC4();
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  MEMORY[0x24C1CB580](v15, sel_setNeedsUpdateConfiguration);

  swift_unknownObjectRelease();

  return v6;
}

unint64_t sub_24827CCC4()
{
  result = qword_27EE90CE8;
  if (!qword_27EE90CE8)
  {
    sub_248383870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90CE8);
  }

  return result;
}

uint64_t DBElevatedScreenResizeButton.transitionControlType.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard28DBElevatedScreenResizeButton_transitionControlType;
  swift_beginAccess();
  return *(v0 + v1);
}

id DBElevatedScreenResizeButton.transitionControlType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard28DBElevatedScreenResizeButton_transitionControlType;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 setNeedsUpdateConfiguration];
}

id (*DBElevatedScreenResizeButton.transitionControlType.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24827CFB0;
}

id sub_24827CFB0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsUpdateConfiguration];
  }

  return result;
}

Swift::Void __swiftcall DBElevatedScreenResizeButton.updateConfiguration()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90CF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_248384100();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2482EBEB8(v0);
  (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
  v8 = sub_248383930();

  v9 = [objc_opt_self() systemImageNamed_];

  sub_2483840C0();
  v10 = [objc_opt_self() configurationWithPointSize:7 weight:-1 scale:13.0];
  sub_248384040();
  (*(v5 + 16))(v3, v7, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_248384120();
  (*(v5 + 8))(v7, v4);
}