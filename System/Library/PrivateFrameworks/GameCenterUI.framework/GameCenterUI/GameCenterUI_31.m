id sub_24E26CE34()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController____lazy_storage___backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController____lazy_storage___backgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController____lazy_storage___backgroundView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for BackgroundView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v5 setAutoresizingMask_];
    [v5 setLayoutMargins_];

    sub_24DFEB9A0(0x6579614C656D6167, 0xEE0070756F724772);
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for PlayerCardTheme();
    v7 = __swift_project_value_buffer(v6, qword_27F20BF00);
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);
    v12 = *(v7 + 48);
    v13 = *(v7 + 56);
    v17[0] = *(v7 + 8);
    v17[1] = v8;
    v17[2] = v9;
    v17[3] = v10;
    v17[4] = v11;
    v17[5] = v12;
    v18 = v13;
    sub_24DFD7E3C(v17[0], v8, v9, v10, v11, v12, v13);
    sub_24DFEB8F4(v17);
    v14 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

id sub_24E26CF90()
{
  v1 = [v0 viewControllerForColumn_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    return v3;
  }

  v4 = [v2 navigationController];

  return v4;
}

id sub_24E26D020()
{
  v0 = objc_allocWithZone(MEMORY[0x277D757A0]);

  return [v0 init];
}

void sub_24E26D058(void *a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = ~a3;
  v11 = v4 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_cachedSecondarySource;
  v12 = *(v4 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_cachedSecondarySource);
  v13 = *(v11 + 8);
  *v11 = a1;
  *(v11 + 8) = a2;
  v14 = *(v11 + 16);
  *(v11 + 16) = a3;
  sub_24E26E7C0(a1, a2, a3);
  sub_24E26E824(v12, v13, v14);
  if (!v10)
  {
    sub_24E26DDD4([objc_allocWithZone(MEMORY[0x277D757A0]) init]);
    OUTLINED_FUNCTION_39_2();
    return;
  }

  if ((a3 & 1) == 0)
  {
    v29 = *(v5 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController);
    v30 = a1;
    v31 = OUTLINED_FUNCTION_2_70();
    sub_24E26E7C0(v31, v32, v33);
    v34 = v30;

    sub_24E26DDD4(a1);
    if ((a4 & 1) != 0 && (v35 = sub_24E26CF90()) != 0)
    {
      v36 = v35;

      v37 = [v36 viewControllers];
      sub_24DF88A8C(0, &qword_27F1E05B0);
      sub_24E347F08();

      OUTLINED_FUNCTION_1_127();
      sub_24E26C8F8(a2, v38, sub_24E05F670, sub_24E083C94);
      v60 = sub_24E347EE8();

      [v36 setViewControllers:v60 animated:1];
    }

    else
    {
      v39 = *(v29 + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController);
      if (!v39)
      {

        goto LABEL_23;
      }

      sub_24DF88A8C(0, &qword_27F1E05B0);
      v36 = v39;
      v61 = sub_24E347EE8();

      [v36 setViewControllers_];
    }

LABEL_17:
    v48 = OUTLINED_FUNCTION_2_70();
    sub_24E26E824(v48, v49, v50);

    goto LABEL_18;
  }

  v15 = *(v5 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController);
  v16 = objc_allocWithZone(MEMORY[0x277D757A0]);
  v17 = OUTLINED_FUNCTION_2_70();
  sub_24E26E7C0(v17, v18, v19);
  sub_24E26E7D8(a1, a2, 1);
  sub_24E26DDD4([v16 init]);
  if (a4)
  {
    v20 = sub_24E26CF90();
    if (v20)
    {
      v21 = v20;
    }

    v22 = sub_24E26CF90();
    if (v22)
    {
      [v22 pushViewController:a1 animated:1];
      v23 = OUTLINED_FUNCTION_2_70();
      sub_24E26E824(v23, v24, v25);
      v26 = OUTLINED_FUNCTION_2_70();
      sub_24E26E824(v26, v27, v28);
LABEL_18:
      OUTLINED_FUNCTION_39_2();

      return;
    }

    goto LABEL_21;
  }

  v40 = *(v15 + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24E369990;
    *(v41 + 32) = a1;
    v42 = OUTLINED_FUNCTION_2_70();
    sub_24E26E7C0(v42, v43, v44);
    sub_24DF88A8C(0, &qword_27F1E05B0);
    v36 = v40;
    v62 = sub_24E347EE8();

    [v36 setViewControllers_];
    v45 = OUTLINED_FUNCTION_2_70();
    sub_24E26E824(v45, v46, v47);
    goto LABEL_17;
  }

LABEL_21:
  v53 = OUTLINED_FUNCTION_2_70();
  sub_24E26E824(v53, v54, v55);
LABEL_23:
  OUTLINED_FUNCTION_2_70();
  OUTLINED_FUNCTION_39_2();

  sub_24E26E824(v56, v57, v58);
}

void sub_24E26D460()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryOverrideTraitCollection];
  swift_beginAccess();
  v3 = *v2;

  v4 = [v1 traitCollection];
  v5 = v3();

  [v1 setOverrideTraitCollection:v5 forChildViewController:*&v1[OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController]];
}

id sub_24E26D514()
{
  OUTLINED_FUNCTION_3_108(OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryOverrideTraitCollection);
  *&v0[OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController____lazy_storage___backgroundView] = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for ContainerNavigationController()) init];
  v2 = &v0[OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_cachedSecondarySource];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = -1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseDoubleColumnSplitViewController();
  return objc_msgSendSuper2(&v4, sel_initWithStyle_, 1);
}

void sub_24E26D5CC()
{
  OUTLINED_FUNCTION_3_108(OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryOverrideTraitCollection);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController____lazy_storage___backgroundView) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ContainerNavigationController()) init];
  v2 = v0 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_cachedSecondarySource;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = -1;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E26D6A4@<X0>(void *a1@<X8>)
{
  v2 = sub_24E26CCC4();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_24E26EA7C;
  a1[1] = result;
  return result;
}

uint64_t sub_24E26D708(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_24E26CD1C(sub_24E26EA3C, v3);
}

void sub_24E26D778()
{
  v1 = type metadata accessor for BaseDoubleColumnSplitViewController();
  v23.receiver = v0;
  v23.super_class = v1;
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v2 = OUTLINED_FUNCTION_7_60();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setBackgroundColor_];

  v4 = OUTLINED_FUNCTION_7_60();
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_24E26CE34();
  [v5 addSubview_];

  v7 = OUTLINED_FUNCTION_7_60();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController____lazy_storage___backgroundView;
  [v7 sendSubviewToBack_];

  v10 = *&v0[v9];
  v11 = OUTLINED_FUNCTION_7_60();
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v10 setFrame_];
    v21 = *&v0[OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController];
    v22.receiver = v0;
    v22.super_class = v1;
    objc_msgSendSuper2(&v22, sel_setViewController_forColumn_, v21, 2);
    [v0 setDelegate_];
    sub_24E26D460();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_24E26D964(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseDoubleColumnSplitViewController();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, a1);
  sub_24E26D460();
}

void sub_24E26DA18(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2 == 2)
  {
    if (a1)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      v5 = v3;
      if (v4)
      {
        v6 = [v4 viewControllers];
        sub_24DF88A8C(0, &qword_27F1E05B0);
        v7 = sub_24E347F08();

        v8 = 0;
        v3 = v4;
      }

      else
      {
        v7 = 0;
        v8 = 1;
      }
    }

    else
    {
      v7 = 0;
      v8 = -1;
    }

    sub_24E26D058(v3, v7, v8, [v2 isCollapsed]);

    sub_24E26E824(v3, v7, v8);
  }

  else
  {
    v10.receiver = v2;
    v10.super_class = type metadata accessor for BaseDoubleColumnSplitViewController();
    objc_msgSendSuper2(&v10, sel_setViewController_forColumn_, v3, a2);
  }
}

void sub_24E26DBDC(uint64_t a1)
{
  if ([v1 isCollapsed])
  {
    v3 = sub_24E26CF90();
    if (v3)
    {
      v5 = v3;
      [v3 pushViewController:a1 animated:1];
    }
  }

  else
  {
    v4 = *(*&v1[OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController] + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController);
    if (v4)
    {

      [v4 pushViewController:a1 animated:1];
    }
  }
}

void sub_24E26DDD4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController);
  *(v1 + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController) = a1;
  v2 = a1;
  sub_24E26E144(v3);
}

id BaseDoubleColumnSplitViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BaseDoubleColumnSplitViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle_];
}

id BaseDoubleColumnSplitViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseDoubleColumnSplitViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24E26E034()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

void sub_24E26E0A4()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E26E144(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    v6 = a1;
    goto LABEL_7;
  }

  if (a1)
  {
    sub_24DF88A8C(0, &qword_27F1E8F38);
    v5 = v4;
    v6 = a1;
    v7 = sub_24E348628();

    if (v7)
    {
      return;
    }

LABEL_7:
    v8 = [v6 parentViewController];
    if (v8)
    {
      v9 = v8;
      sub_24DF88A8C(0, &qword_27F1E05B0);
      v10 = v2;
      v11 = sub_24E348628();

      if (v11)
      {
        [a1 willMoveToParentViewController_];
        if ([v10 isViewLoaded])
        {
          v12 = [a1 view];
          if (!v12)
          {
            __break(1u);
            return;
          }

          v13 = v12;
          [v12 removeFromSuperview];
        }

        [a1 removeFromParentViewController];
      }
    }
  }

  if ([v2 isViewLoaded])
  {

    sub_24E26E2E0();
  }
}

void sub_24E26E2E0()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v22 = v1;
  v3 = [v22 parentViewController];
  if (!v3 || (v4 = v3, sub_24DF88A8C(0, &qword_27F1E05B0), v5 = v0, v6 = sub_24E348628(), v4, v5, (v6 & 1) == 0))
  {
    [v22 willMoveToParentViewController_];
    [v2 addChildViewController_];
    v7 = v22;
    if (![v2 isViewLoaded])
    {
LABEL_11:

      [v22 didMoveToParentViewController_];
      goto LABEL_12;
    }

    v8 = [v2 view];
    if (v8)
    {
      v9 = v8;
      v10 = [v22 view];
      if (v10)
      {
        v11 = v10;
        [v9 insertSubview:v10 atIndex:0];

        v7 = [v22 view];
        if (v7)
        {
          v12 = [v2 view];
          if (v12)
          {
            v13 = v12;
            [v12 bounds];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;

            [v7 setFrame_];
            goto LABEL_11;
          }

LABEL_19:
          __break(1u);
          return;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
}

void sub_24E26E518()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController;
  if (*&v0[OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController])
  {
    sub_24E26E2E0();
  }

  else
  {
    sub_24E26DDD4([objc_allocWithZone(MEMORY[0x277D757A0]) init]);
    v2 = *&v0[v1];
    if (v2)
    {
      [v2 setNavigationBarHidden_];
    }
  }
}

void sub_24E26E5EC()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
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

id sub_24E26E7C0(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24E26E7D8(result, a2, a3 & 1);
  }

  return result;
}

id sub_24E26E7D8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    v5 = a1;
  }
}

void sub_24E26E824(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_24E26E83C(a1, a2, a3 & 1);
  }
}

void sub_24E26E83C(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

uint64_t sub_24E26EA3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_24E26EA7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

void OUTLINED_FUNCTION_3_108(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = j__objc_retain;
  v2[1] = 0;
}

id OUTLINED_FUNCTION_7_60()
{

  return [v0 (v1 + 2808)];
}

uint64_t sub_24E26EB38(uint64_t a1)
{
  v2 = sub_24E347458();
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v98 = v5 - v4;
  v6 = sub_24E347478();
  v7 = OUTLINED_FUNCTION_4_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v96 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  v97 = &v86 - v12;
  v13 = sub_24E3433A8();
  v94 = *(v13 - 8);
  v95 = v13;
  MEMORY[0x28223BE20](v13);
  v93 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v86 - v16;
  v100 = type metadata accessor for DetailData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  v21 = v20 - v19;
  v22 = type metadata accessor for FriendsListAction();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  v99 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  v27 = OUTLINED_FUNCTION_4_5(v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v86 - v28;
  v30 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_1();
  v34 = v33 - v32;
  sub_24DF8BD90(a1, v29, &qword_27F1DF018);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_24DF8BFF4(v29, &qword_27F1DF018);
    return 0;
  }

  sub_24E0EF370(v29, v34);
  memcpy(v109, (v34 + 16), 0x199uLL);
  memcpy(v110, (v34 + 16), 0x199uLL);
  if (sub_24DF8BF80(v110) == 1)
  {
    OUTLINED_FUNCTION_2_109();
    return 0;
  }

  v36 = sub_24DFD8654();
  sub_24DFC2C38();
  v37 = *MEMORY[0x277D76A08];
  v38 = objc_opt_self();
  memcpy(v108, v109, 0x199uLL);
  sub_24E1D410C(v108, &v103);
  v39 = [v38 configurationWithTextStyle:v37 scale:-1];
  v91 = sub_24E1A5748(0x322E6E6F73726570, 0xED00006C6C69662ELL, v39);

  OUTLINED_FUNCTION_4_91();
  v40 = sub_24E347CB8();
  v41 = GKGameCenterUIFrameworkBundle();
  v42 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
  v43 = swift_allocObject();
  v92 = xmmword_24E367D20;
  v44 = MEMORY[0x277D83B88];
  *(v43 + 16) = xmmword_24E367D20;
  v45 = MEMORY[0x277D83C10];
  *(v43 + 56) = v44;
  *(v43 + 64) = v45;
  *(v43 + 32) = v36;
  v88 = v17;
  v46 = v36;
  v47 = sub_24E347D18();
  v89 = v48;
  v90 = v47;

  OUTLINED_FUNCTION_4_91();
  v49 = sub_24E347CB8();
  v50 = GKGameCenterUIFrameworkBundle();
  v51 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  v52 = swift_allocObject();
  *(v52 + 16) = v92;
  *(v52 + 56) = MEMORY[0x277D83B88];
  *(v52 + 64) = MEMORY[0x277D83C10];
  *(v52 + 32) = v46;
  v53 = sub_24E347CC8();
  v86 = v54;
  v87 = v53;

  v55 = [v110[1] playerID];
  v56 = sub_24E347CF8();
  v58 = v57;

  v59 = sub_24E347CF8();
  v61 = v60;
  v62 = sub_24E347CF8();
  v63 = v99;
  ActionMetrics.init(domain:eventType:)(v59, v61, v62, v64);
  *v63 = v56;
  *(v63 + 8) = v58;
  *(v63 + 16) = 1;
  *(v63 + *(v22 + 32)) = 0;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v107 = -1;
  v102[3] = v22;
  v102[4] = sub_24DF8C8A4(&qword_27F1DEEA8, type metadata accessor for FriendsListAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v102);
  sub_24E26F6F8(v63, boxed_opaque_existential_1, type metadata accessor for FriendsListAction);
  v66 = v91;
  *&v92 = v91;
  v67 = v88;
  sub_24E343398();
  v68 = v94;
  v69 = v95;
  (*(v94 + 16))(v93, v67, v95);
  sub_24DF8C8A4(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v68 + 8))(v67, v69);
  *(v21 + 216) = 0;
  *(v21 + 200) = 0u;
  *(v21 + 184) = 0u;
  v70 = v100;
  v71 = *(v100 + 56);
  v95 = v71;
  v72 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v21 + v71, 1, 1, v72);
  v73 = v21 + *(v70 + 60);
  sub_24DF8BD34(v101, v21);
  *(v21 + 40) = 1;
  v75 = v89;
  v74 = v90;
  *(v21 + 48) = v90;
  *(v21 + 56) = v75;
  v76 = v86;
  *(v21 + 64) = v87;
  *(v21 + 72) = v76;
  *(v21 + 80) = v66;
  sub_24DF8BD90(&v103, v21 + 88, &qword_27F1DEE88);
  *(v21 + 160) = 0;
  *(v21 + 168) = 0;
  *(v21 + 176) = 256;
  *v73 = 0;
  *(v73 + 8) = 0;

  sub_24DF8BDF0(v102, v21 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_24E369E30;
  strcpy((v77 + 32), "impressionType");
  *(v77 + 47) = -18;
  v78 = MEMORY[0x277D837D0];
  *(v77 + 48) = 0x74656C63696863;
  *(v77 + 56) = 0xE700000000000000;
  *(v77 + 72) = v78;
  *(v77 + 80) = 0x6973736572706D69;
  *(v77 + 88) = 0xEF7865646E496E6FLL;
  *(v77 + 96) = 0;
  *(v77 + 120) = MEMORY[0x277D83B88];
  *(v77 + 128) = 0x657079546469;
  *(v77 + 136) = 0xE600000000000000;
  *(v77 + 144) = 0x636974617473;
  *(v77 + 152) = 0xE600000000000000;
  *(v77 + 168) = v78;
  *(v77 + 176) = 1701667182;
  *(v77 + 216) = v78;
  *(v77 + 184) = 0xE400000000000000;
  *(v77 + 192) = v74;
  *(v77 + 200) = v75;

  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v79 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v79);
  v80 = v97;
  sub_24E347488();
  sub_24DF8BE60(v101);
  sub_24DF8BFF4(&v103, &qword_27F1DEE88);
  sub_24DF8BFF4(v102, &qword_27F1DEE90);
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v72);
  sub_24DF8BEB4(v80, v21 + v95);
  sub_24E076EE4();
  v35 = v81;
  v82 = *(v81 + 16);
  if (v82 >= *(v81 + 24) >> 1)
  {
    sub_24E076EE4();
    v35 = v85;
  }

  sub_24DF8BFF4(v109, &qword_27F1DF030);

  sub_24E26F758(v99, type metadata accessor for FriendsListAction);
  *(&v104 + 1) = v100;
  *&v105 = sub_24DF8C8A4(&qword_27F1DEE80, type metadata accessor for DetailData);
  v83 = __swift_allocate_boxed_opaque_existential_1(&v103);
  sub_24E26F6F8(v21, v83, type metadata accessor for DetailData);
  *(v35 + 16) = v82 + 1;
  sub_24DE56CE8(&v103, v35 + 40 * v82 + 32);
  sub_24E26F758(v21, type metadata accessor for DetailData);
  OUTLINED_FUNCTION_2_109();
  return v35;
}

double sub_24E26F5F4@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HeaderData();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = type metadata accessor for Shelf.Presentation(0);
  v4 = v3[5];
  v5 = type metadata accessor for FooterData(0);
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  v6 = a1 + v3[11];
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  v8 = a1 + v3[12];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a1 + v3[13]);
  v10 = (a1 + v3[14]);
  v11 = (a1 + v3[15]);
  *(a1 + v3[6]) = 1;
  *v9 = 0;
  v9[1] = 0;
  *v10 = 0;
  v10[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v3[7]) = 1;
  *(a1 + v3[8]) = 1;
  *(a1 + v3[9]) = 1;
  *(a1 + v3[10]) = 0;
  return result;
}

uint64_t sub_24E26F6F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E26F758(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_109()
{

  return sub_24E26F758(v0, type metadata accessor for DashboardRequiredDataPresenter.Data);
}

uint64_t sub_24E26F7EC(uint64_t result, double a2, double a3)
{
  if (a2 != 0.0 || a3 != 0.0)
  {
    switch(result)
    {
      case 0:
      case 1:
      case 2:
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
        return result;
      default:
        type metadata accessor for ContentMode(0);
        result = sub_24E348C58();
        __break(1u);
        break;
    }
  }

  return result;
}

uint64_t sub_24E26F8C0(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 32);
  if (!v6)
  {
    return v10;
  }

  while (1)
  {
    v9 = *v7;
    a2(&v10, &v9);
    if (v4)
    {
      break;
    }

    ++v7;
    if (!--v6)
    {
      return v10;
    }
  }
}

__n128 ActivityFeedLockupView.init(entry:theme:actionHandlers:)@<Q0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  type metadata accessor for ArtworkLoader();
  *a2 = sub_24E2002B8();
  v4 = type metadata accessor for ActivityFeedLockupView();
  v5 = a2 + v4[8];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = v4[9];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0);
  swift_storeEnumTagMultiPayload();
  sub_24E2716E4();
  sub_24E2716E4();
  v7 = a2 + v4[7];
  v8 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v7 + 2) = result;
  *(v7 + 3) = v10;
  return result;
}

uint64_t type metadata accessor for ActivityFeedLockupView()
{
  result = qword_27F1E8FD8;
  if (!qword_27F1E8FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityFeedLockupView.actionHandlers.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ActivityFeedLockupView() + 28));
  v4 = v3[2];
  v7 = v3[3];
  v6 = v3[1];
  *a1 = *v3;
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v7;
  return sub_24DFA9240();
}

double sub_24E26FC04()
{
  v1 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = (v0 + *(type metadata accessor for ActivityFeedLockupView() + 32));
  v9 = *v8;
  if (v8[8] == 1)
  {
    return *v8;
  }

  sub_24E348268();
  v11 = sub_24E346198();
  sub_24E343EA8();

  sub_24E345B58();
  swift_getAtKeyPath();
  sub_24DE73F34(v9, 0);
  (*(v3 + 8))(v7, v1);
  return v12;
}

uint64_t sub_24E26FD4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E345B68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for ActivityFeedLockupView();
  sub_24DFA9240();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24E347B98();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_24E348268();
    v11 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

void ActivityFeedLockupView.body.getter()
{
  OUTLINED_FUNCTION_32();
  v66 = v2;
  v3 = type metadata accessor for ActivityFeedLockupView();
  OUTLINED_FUNCTION_0_14();
  v70 = v4;
  MEMORY[0x28223BE20](v5);
  v71 = v6;
  v73 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_18_1();
  v69 = sub_24E345C88();
  OUTLINED_FUNCTION_0_14();
  v68 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v67 = v10 - v9;
  OUTLINED_FUNCTION_18_1();
  v64 = sub_24E345FF8();
  OUTLINED_FUNCTION_0_14();
  v63 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_23(v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19E0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  v18 = v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F48);
  OUTLINED_FUNCTION_4_5(v19);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F50) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_9();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F58);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v24);
  v26 = v58 - v25;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F60);
  OUTLINED_FUNCTION_0_14();
  v58[0] = v27;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v28);
  v30 = v58 - v29;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F68);
  OUTLINED_FUNCTION_0_14();
  v60 = v31;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v33);
  v58[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F70);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_23(v36);
  sub_24E2707EC();
  v65 = v3;
  v37 = *(v3 + 24);
  v72 = v0;
  v38 = v0 + v37;
  OUTLINED_FUNCTION_17_36();
  sub_24DFA9344();
  memcpy((v1 + *(v21 + 44)), v80, 0x70uLL);
  v75 = *(v38 + 40);
  v74 = *(v38 + 56);
  v39 = sub_24E3461E8();
  sub_24DFA9344();
  v40 = &v26[*(v23 + 36)];
  *v40 = v39;
  *(v40 + 24) = v74;
  *(v40 + 8) = v75;
  v40[40] = 0;
  type metadata accessor for ActivityFeedLockupTheme();
  sub_24E345658();
  sub_24E2754C0(&qword_27F1E1A18, MEMORY[0x277CDFA28]);
  OUTLINED_FUNCTION_25_19();
  if (sub_24E347CA8())
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_25_19();
    v41();
    v42 = sub_24E270CEC();
    v43 = sub_24DFB4C28(&qword_27F1E19E8, &qword_27F1E19E0);
    sub_24E346678();
    sub_24DF8BFF4(v18, &qword_27F1E19E0);
    sub_24DF8BFF4(v26, &qword_27F1E8F58);
    v44 = v62;
    sub_24E345FE8();
    v76 = v23;
    v77 = v15;
    v78 = v42;
    v79 = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v58[1];
    v47 = v59;
    sub_24E346778();
    OUTLINED_FUNCTION_34_0();
    v48(v44, v64);
    OUTLINED_FUNCTION_34_0();
    v49(v30, v47);
    type metadata accessor for ActivityFeedLockupViewModel();

    OUTLINED_FUNCTION_60();
    sub_24E345C48();
    v76 = v47;
    v77 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v50 = v58[3];
    OUTLINED_FUNCTION_60();
    v51 = v61;
    sub_24E346708();

    OUTLINED_FUNCTION_34_0();
    v52(v46, v51);
    v53 = v67;
    sub_24E345C78();
    sub_24E3456B8();
    OUTLINED_FUNCTION_34_0();
    v54(v53, v69);
    sub_24DE6E5DC(v50);
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_8_73();
    sub_24E2753C0();
    swift_allocObject();
    OUTLINED_FUNCTION_7_61();
    sub_24E2716E4();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8FD0);
    v57 = (v66 + *(v56 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FB8);
    sub_24E3454F8();
    *v57 = KeyPath;
    sub_24DE6E6C0();
    OUTLINED_FUNCTION_18();
  }

  else
  {
    __break(1u);
  }
}

void sub_24E2707EC()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v34[4] = v2;
  v34[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8FC8);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = v34 - v4;
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8FB8);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = v34 - v7;
  v34[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9000);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9008);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F98);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8FA8);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  v17 = v1 + *(type metadata accessor for ActivityFeedLockupView() + 24);
  if (*(v17 + 72))
  {
    if (*(v17 + 72) == 1)
    {
      v18 = *(v17 + 16);
      *v8 = sub_24E345BF8();
      *(v8 + 1) = v18;
      v8[16] = 0;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9018);
      sub_24E273940(v1, &v8[*(v19 + 44)]);
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_10_57();
      sub_24DFB4C28(v20, v21);
      OUTLINED_FUNCTION_6_78();
      sub_24DFB4C28(v22, &qword_27F1E8FB8);
      OUTLINED_FUNCTION_26_21();
      OUTLINED_FUNCTION_40_9();
      swift_storeEnumTagMultiPayload();
      sub_24E270EBC();
      sub_24DFB4C28(&qword_27F1E8FC0, &qword_27F1E8FC8);
      OUTLINED_FUNCTION_15_35();
      sub_24E345E38();
      sub_24DF8BFF4(v13, &qword_27F1E8F98);
      v23 = v8;
      v24 = &qword_27F1E8FB8;
    }

    else
    {
      v31 = sub_24E345D08();
      v32 = *(v17 + 16);
      *v5 = v31;
      *(v5 + 1) = v32;
      v5[16] = 0;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9010);
      sub_24E273D48(&v5[*(v33 + 44)]);
      OUTLINED_FUNCTION_60();
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      sub_24E270EBC();
      sub_24DFB4C28(&qword_27F1E8FC0, &qword_27F1E8FC8);
      OUTLINED_FUNCTION_15_35();
      sub_24E345E38();
      v23 = v5;
      v24 = &qword_27F1E8FC8;
    }
  }

  else
  {
    v25 = sub_24E345D08();
    v26 = *(v17 + 16);
    *v16 = v25;
    *(v16 + 1) = v26;
    v16[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9020);
    sub_24E2743C4(v1, &v16[*(v27 + 44)]);
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_10_57();
    sub_24DFB4C28(v28, &qword_27F1E8FA8);
    OUTLINED_FUNCTION_6_78();
    sub_24DFB4C28(v29, v30);
    OUTLINED_FUNCTION_26_21();
    OUTLINED_FUNCTION_40_9();
    swift_storeEnumTagMultiPayload();
    sub_24E270EBC();
    sub_24DFB4C28(&qword_27F1E8FC0, &qword_27F1E8FC8);
    OUTLINED_FUNCTION_15_35();
    sub_24E345E38();
    sub_24DF8BFF4(v13, &qword_27F1E8F98);
    v23 = v16;
    v24 = &qword_27F1E8FA8;
  }

  sub_24DF8BFF4(v23, v24);
  OUTLINED_FUNCTION_18();
}

unint64_t sub_24E270CEC()
{
  result = qword_27F1E8F78;
  if (!qword_27F1E8F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F58);
    sub_24E270D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8F78);
  }

  return result;
}

unint64_t sub_24E270D78()
{
  result = qword_27F1E8F80;
  if (!qword_27F1E8F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F50);
    sub_24E270E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8F80);
  }

  return result;
}

unint64_t sub_24E270E04()
{
  result = qword_27F1E8F88;
  if (!qword_27F1E8F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F48);
    sub_24E270EBC();
    sub_24DFB4C28(&qword_27F1E8FC0, &qword_27F1E8FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8F88);
  }

  return result;
}

unint64_t sub_24E270EBC()
{
  result = qword_27F1E8F90;
  if (!qword_27F1E8F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F98);
    sub_24DFB4C28(&qword_27F1E8FA0, &qword_27F1E8FA8);
    sub_24DFB4C28(&qword_27F1E8FB0, &qword_27F1E8FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8F90);
  }

  return result;
}

uint64_t sub_24E270FA0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E51A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v79 - v4;
  v6 = sub_24E343028();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E342F98();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_24DF8BFF4(v5, &qword_27F1E51A8);
    return sub_24E3454E8();
  }

  (*(v7 + 32))(v9, v5, v6);
  if ((static GKFeatureFlags.shouldDeepLinkToGameCenterUI.getter() & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = sub_24E342FF8();
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v11 == 0x65766F2D656D6167 && v12 == 0xEF69752D79616C72)
  {

    goto LABEL_20;
  }

  v14 = sub_24E348C08();

  if (v14)
  {
LABEL_20:
    sub_24E3454C8();
    return (*(v7 + 8))(v9, v6);
  }

LABEL_10:
  v15 = (a2 + *(type metadata accessor for ActivityFeedLockupView() + 28));
  v16 = v15[1];
  v90 = *v15;
  v91 = v16;
  v17 = v15[3];
  v92 = v15[2];
  v93 = v17;
  v18 = v90;
  if (v90)
  {
    v85 = v92;
    v86 = v91;
    v19 = *(&v92 + 1);
    v87 = v93;

    v84 = v19;

    v20 = sub_24E342FF8();
    if (v21)
    {
      if (v20 == 0xD000000000000014 && v21 == 0x800000024E3AA9E0)
      {
      }

      else
      {
        v23 = sub_24E348C08();

        if ((v23 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      sub_24E342FB8();
      if (!v24 || sub_24E18F3F4() == 7)
      {
LABEL_42:
        sub_24E3454E8();
      }

      else
      {
        sub_24E2038C8();
        v25 = sub_24E347C28();
        v83 = &v79;
        MEMORY[0x28223BE20](v25);
        *(&v79 - 2) = v9;
        v27 = sub_24E26F8C0(v26, sub_24E274D78, (&v79 - 4), &unk_286111660);
        switch(v83)
        {
          case 1:
            v67 = sub_24E12CC34(0, v27);
            v69 = v68;

            if (!v69)
            {
              goto LABEL_42;
            }

            v31 = v67;
            v32 = v69;
            v33 = 1;
            goto LABEL_47;
          case 2:
            v57 = sub_24E12CC34(0, v27);
            if (!v58)
            {
              goto LABEL_41;
            }

            v59 = v57;
            v60 = v58;
            v61 = sub_24E12CC34(3, v27);
            if (!v62)
            {
              goto LABEL_53;
            }

            v63 = v61;
            v64 = v62;
            v87 = sub_24E12CC34(2, v27);
            v66 = v65;

            if (!v66)
            {
              goto LABEL_53;
            }

            v86(v59, v60, v87, v66, v63, v64);

            goto LABEL_56;
          case 3:
            v34 = sub_24E12CC34(0, v27);
            if (!v35)
            {
              goto LABEL_41;
            }

            v36 = v34;
            v37 = v35;
            v38 = sub_24E12CC34(3, v27);
            if (!v39 || (v40 = v39, v82 = v38, v41 = sub_24E12CC34(2, v27), v43 = v42, , !v43))
            {
LABEL_53:

LABEL_41:

              goto LABEL_42;
            }

            v81 = v41;
            v88 = v36;
            v89 = v37;
            sub_24DF90C4C();
            v44 = sub_24E348798();

            v45 = *(v44 + 16);
            if (v45)
            {
              v79 = v43;
              v80 = v40;
              v88 = MEMORY[0x277D84F90];
              result = sub_24E12F080(0, v45, 0);
              v46 = 0;
              v47 = v88;
              v48 = (v44 + 56);
              v86 = v44;
              v83 = v45;
              do
              {
                if (v46 >= *(v44 + 16))
                {
                  __break(1u);
                  return result;
                }

                v49 = *(v48 - 2);
                v87 = *(v48 - 3);
                v50 = *(v48 - 1);
                v51 = *v48;

                v87 = MEMORY[0x25303E8C0](v87, v49, v50, v51);
                v53 = v52;

                v88 = v47;
                v55 = *(v47 + 16);
                v54 = *(v47 + 24);
                if (v55 >= v54 >> 1)
                {
                  result = sub_24E12F080((v54 > 1), v55 + 1, 1);
                  v47 = v88;
                }

                v46 = (v46 + 1);
                *(v47 + 16) = v55 + 1;
                v56 = v47 + 16 * v55;
                *(v56 + 32) = v87;
                *(v56 + 40) = v53;
                v48 += 4;
                v44 = v86;
              }

              while (v83 != v46);

              v43 = v79;
              v40 = v80;
            }

            else
            {

              v47 = MEMORY[0x277D84F90];
            }

            v85(v47, v81, v43, v82, v40);

LABEL_56:

LABEL_57:

            sub_24E3454D8();
            break;
          case 4:
            v70 = sub_24E12CC34(2, v27);
            v72 = v71;

            if (!v72)
            {
              goto LABEL_42;
            }

            v73 = v70;
            v74 = v72;
            v75 = 0;
            goto LABEL_52;
          case 5:
            v76 = sub_24E12CC34(2, v27);
            v78 = v77;

            if (!v78)
            {
              goto LABEL_42;
            }

            v73 = v76;
            v74 = v78;
            v75 = 1;
LABEL_52:
            v87(v73, v74, v75);
            goto LABEL_57;
          case 6:
            goto LABEL_41;
          default:
            v28 = sub_24E12CC34(0, v27);
            v30 = v29;

            if (!v30)
            {
              goto LABEL_42;
            }

            v31 = v28;
            v32 = v30;
            v33 = 0;
LABEL_47:
            v18(v31, v32, v33);
            goto LABEL_57;
        }
      }

      goto LABEL_43;
    }

LABEL_17:
    sub_24E3454C8();
LABEL_43:
    sub_24DF8BFF4(&v90, &qword_27F1E8F40);
    return (*(v7 + 8))(v9, v6);
  }

  sub_24E3454E8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24E2716E4()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24E271770(uint64_t *a1, unsigned __int8 *a2)
{
  v30 = a1;
  v4 = sub_24E342F68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v35 = *a2;
  result = sub_24E342F78();
  if (!result)
  {
    goto LABEL_16;
  }

  v12 = result;
  v31 = *(result + 16);
  if (!v31)
  {
LABEL_11:

LABEL_16:
    sub_24E203574();
  }

  v29[0] = v10;
  v29[1] = v2;
  v13 = 0;
  v34 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v33 = v5 + 16;
  v14 = *MEMORY[0x277D0BC18];
  v29[8] = *MEMORY[0x277D0B9B0];
  v29[9] = v14;
  v15 = *MEMORY[0x277D0B980];
  v29[6] = *MEMORY[0x277D0B978];
  v29[7] = v15;
  v16 = *MEMORY[0x277D0B9A8];
  v29[4] = *MEMORY[0x277D0B990];
  v29[5] = v16;
  v17 = *MEMORY[0x277D0B988];
  v29[2] = *MEMORY[0x277D0B9A0];
  v29[3] = v17;
  v32 = *MEMORY[0x277D0B998];
  while (1)
  {
    if (v13 >= *(v12 + 16))
    {
      __break(1u);
      return result;
    }

    v18 = v13 + 1;
    (*(v5 + 16))(v7, v34 + *(v5 + 72) * v13, v4);
    v19 = sub_24E342F48();
    v21 = v20;
    if (v19 == sub_24E347CF8() && v21 == v22)
    {
      break;
    }

    v24 = sub_24E348C08();

    if (v24)
    {
      goto LABEL_14;
    }

    result = (*(v5 + 8))(v7, v4);
    v13 = v18;
    if (v31 == v18)
    {
      goto LABEL_11;
    }
  }

LABEL_14:

  v25 = v29[0];
  (*(v5 + 32))(v29[0], v7, v4);
  sub_24E342F58();
  v27 = v26;
  (*(v5 + 8))(v25, v4);
  if (!v27)
  {
    goto LABEL_16;
  }

  v28 = v30;
  swift_isUniquelyReferenced_nonNull_native();
  v36 = *v28;
  result = sub_24E058F0C();
  *v28 = v36;
  return result;
}

void sub_24E271B18()
{
  OUTLINED_FUNCTION_32();
  v54 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9108);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  OUTLINED_FUNCTION_4_5(v5);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_3();
  v52 = v7;
  OUTLINED_FUNCTION_18_1();
  v53 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v47 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_23(v11);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9110);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9118);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9120);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_9();
  v16 = type metadata accessor for PlayerGroupView();
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v20 = (v19 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9128);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_21_20();
  v51 = v24;
  OUTLINED_FUNCTION_18_1();
  v25 = type metadata accessor for ActivityFeedLockupView();
  v48 = v0 + *(v25 + 20);
  v26 = *(v48 + *(type metadata accessor for ActivityFeedLockupViewModel() + 20));
  v27 = v0 + *(v25 + 24);
  v28 = *(v27 + 112);
  v29 = *(type metadata accessor for ActivityFeedLockupTheme() + 60);
  v30 = v17[8];
  sub_24E346E88();
  OUTLINED_FUNCTION_5_2();
  (*(v31 + 16))(&v20[v30], v27 + v29);
  v32 = v17[9];
  *&v20[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0);
  swift_storeEnumTagMultiPayload();
  v33 = v17[10];
  *&v20[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390);
  swift_storeEnumTagMultiPayload();
  v34 = &v20[v17[11]];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v35 = v17[12];
  type metadata accessor for ArtworkLoader();

  *&v20[v35] = sub_24E2002B8();
  *&v20[v17[13]] = 7;
  *v20 = v26;
  *(v20 + 1) = v28;
  if (*v27 == 1.79769313e308)
  {
    sub_24E346E28();
    sub_24E3457F8();
    OUTLINED_FUNCTION_6_83();
    sub_24E2753C0();
    memcpy((v1 + *(v49 + 36)), v55, 0x70uLL);
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_25_19();
    sub_24E275418(v36, v37);
    sub_24E275418(&qword_27F1E9140, &qword_27F1E9110);
    sub_24E345E38();
    OUTLINED_FUNCTION_25_19();
  }

  else
  {
    sub_24E346E28();
    sub_24E3453D8();
    OUTLINED_FUNCTION_6_83();
    sub_24E2753C0();
    v40 = (v44 + *(v50 + 36));
    v41 = v55[1];
    *v40 = v55[0];
    v40[1] = v41;
    v40[2] = v55[2];
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    sub_24E275418(&qword_27F1E9130, &qword_27F1E9120);
    sub_24E275418(&qword_27F1E9140, &qword_27F1E9110);
    sub_24E345E38();
    v38 = v44;
    v39 = &qword_27F1E9110;
  }

  sub_24DF8BFF4(v38, v39);
  sub_24E275508(v20);
  sub_24DFA9344();
  sub_24DFA9240();
  if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
  {
    sub_24DF8BFF4(v52, &qword_27F1DEFB8);
    sub_24DFA9240();
    sub_24E275564();
    v42 = sub_24E346C48();
  }

  else
  {
    (*(v47 + 32))(v46, v52, v53);
    v43 = (*(v47 + 16))(v45, v46, v53);
    MEMORY[0x28223BE20](v43);
    sub_24E275564();
    sub_24E3463A8();
    OUTLINED_FUNCTION_13_49(&qword_27F1E9150, &qword_27F1E9108);
    v42 = sub_24E346C48();
    (*(v47 + 8))(v46, v53);
  }

  *v54 = v42;
  sub_24DF8BFF4(v51, &qword_27F1E9128);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E272368@<X0>(double a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v128 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9048);
  OUTLINED_FUNCTION_0_14();
  v121 = v8;
  v122 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_38();
  v120 = v9;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_20();
  v119 = v11;
  OUTLINED_FUNCTION_18_1();
  v116 = sub_24E347B98();
  OUTLINED_FUNCTION_0_14();
  v115 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_23(v15);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9050);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_3();
  v125 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  OUTLINED_FUNCTION_4_5(v18);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_3();
  v123 = v20;
  OUTLINED_FUNCTION_18_1();
  v127 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v124 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_38();
  v117 = v23;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_21_20();
  v126 = v25;
  OUTLINED_FUNCTION_18_1();
  v26 = type metadata accessor for ActivityFeedLockupView();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v27);
  v28 = sub_24E344128();
  OUTLINED_FUNCTION_0_14();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_1();
  v34 = v33 - v32;
  v35 = *(v26 + 24);
  v129 = v4;
  v36 = v4 + v35;
  if (*(v36 + 96) == 1)
  {
    v112 = a3;
    if (a2)
    {
      v37 = *(v36 + 8);
    }

    else
    {
      v37 = v128;
    }

    GKHomeScreenIconsGetSize();
    sub_24E344138();
    sub_24E344118();
    v40 = v39;
    (*(v30 + 8))(v34, v28);
    GKHomeScreenIconsGetScaledCornerRadiusForSize(v37, v40);
    v41 = v129 + *(v26 + 20);
    v42 = type metadata accessor for ActivityFeedLockupViewModel();
    v43 = v41 + *(v42 + 40);
    v44 = *(v43 + 32);
    if (v44 == 255 || (LODWORD(v128) = *(v41 + *(v42 + 48)), LODWORD(v128) == 5))
    {
      result = sub_24E346C48();
      *v112 = result;
    }

    else
    {
      v45 = *v43;
      v111 = *(v43 + 8);
      v47 = *(v43 + 16);
      v46 = *(v43 + 24);
      v110 = v44;
      v109 = v46;
      v108 = v47;
      if (v44)
      {
        OUTLINED_FUNCTION_8_73();
        sub_24E2753C0();
        v48 = swift_allocObject();
        v49 = v45;
        *(v48 + 16) = v45;
        v50 = v111;
        *(v48 + 24) = v111;
        *(v48 + 32) = v47;
        *(v48 + 40) = v46;
        *(v48 + 48) = v44;
        *(v48 + 49) = LOBYTE(v128);
        *(v48 + 56) = v37;
        *(v48 + 64) = v40;
        OUTLINED_FUNCTION_7_61();
        sub_24E2716E4();
        v51 = objc_opt_self();
        v52 = OUTLINED_FUNCTION_31_10();
        sub_24E274F0C(v52, v53, v54, v55, v56);
        v57 = OUTLINED_FUNCTION_31_10();
        sub_24E117238(v57, v58, v59, v60, v61);
        v62 = [v51 tertiarySystemGroupedBackgroundColor];
        v63 = sub_24E346948();
        v64 = type metadata accessor for AsyncArtworkImageView();
        v131 = v64;
        v132 = sub_24E2754C0(&qword_27F1E8218, type metadata accessor for AsyncArtworkImageView);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v130);
        v66 = *(v64 + 24);
        sub_24E347BA8();
        v67 = sub_24E347BC8();
        OUTLINED_FUNCTION_41_10(v67);
        *boxed_opaque_existential_1 = sub_24E274EA4;
        boxed_opaque_existential_1[1] = v48;
        *(boxed_opaque_existential_1 + 16) = 0;
        boxed_opaque_existential_1[3] = v63;
      }

      else
      {
        v68 = type metadata accessor for ArtworkImageView();
        v131 = v68;
        v132 = sub_24E2754C0(&qword_27F1E7338, type metadata accessor for ArtworkImageView);
        v69 = __swift_allocate_boxed_opaque_existential_1(v130);
        v49 = v45;
        v50 = v111;
        OUTLINED_FUNCTION_39_7();
        sub_24E274F0C(v70, v71, v72, v73, v74);
        OUTLINED_FUNCTION_39_7();
        sub_24E117238(v75, v76, v77, v78, v79);
        sub_24E347BA8();
        v80 = sub_24E347BC8();
        OUTLINED_FUNCTION_41_10(v80);
        *v69 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390);
        swift_storeEnumTagMultiPayload();
        v81 = v68[5];
        *(v69 + v81) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FE8);
        swift_storeEnumTagMultiPayload();
        v66 = v68[6];
        *(v69 + v66) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0);
        swift_storeEnumTagMultiPayload();
        *(v69 + v68[7]) = v49;
        *(v69 + v68[8]) = LOBYTE(v128);
        v82 = (v69 + v68[9]);
        *v82 = v37;
        v82[1] = v40;
      }

      sub_24DFA9240();
      v83 = v127;
      if (__swift_getEnumTagSinglePayload(v123, 1, v127) == 1)
      {
        sub_24DF8BFF4(v123, &qword_27F1DEFB8);
        __swift_project_boxed_opaque_existential_1(v130, v131);
        OUTLINED_FUNCTION_24_16();
        MEMORY[0x28223BE20](v84);
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_17_9();
        (*(v85 + 16))(v66);
        OUTLINED_FUNCTION_25_19();
        v86 = sub_24E346C48();
        OUTLINED_FUNCTION_25_21(v49, v50);
        *v112 = v86;
      }

      else
      {
        (*(v124 + 32))(v126, v123, v127);
        v87 = sub_24E346E28();
        v88 = v125;
        *v125 = v87;
        v88[1] = v89;
        sub_24E26FD4C(v113);
        sub_24E347B88();
        v90 = sub_24E347B78();
        v91 = *(v115 + 8);
        v91(v114, v116);
        v91(v113, v116);
        v107 = v49;
        if (v90)
        {
          __swift_project_boxed_opaque_existential_1(v130, v131);
          OUTLINED_FUNCTION_24_16();
          MEMORY[0x28223BE20](v92);
          OUTLINED_FUNCTION_7_1();
          OUTLINED_FUNCTION_17_9();
          (*(v93 + 16))(v91);
          v94 = sub_24E346C48();
        }

        else
        {
          v94 = 0;
        }

        v95 = v124;
        v96 = (v125 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9058) + 44));
        v97 = (*(v124 + 16))(v117, v126, v83);
        MEMORY[0x28223BE20](v97);
        *(&v106 - 6) = v129;
        *(&v106 - 5) = v130;
        *(&v106 - 4) = v37;
        *(&v106 - 3) = v40;
        *(&v106 - 16) = LOBYTE(v128);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9060);
        sub_24E274F44();
        v98 = v119;
        sub_24E3463A8();
        v100 = v120;
        v99 = v121;
        v101 = *(v121 + 16);
        v102 = v122;
        v101(v120, v98, v122);
        *v96 = v94;
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9090);
        v101(v96 + *(v103 + 48), v100, v102);
        v104 = *(v99 + 8);
        v104(v98, v102);
        v104(v100, v102);

        sub_24DFB4C28(&qword_27F1E9098, &qword_27F1E9050);
        v105 = sub_24E346C48();
        OUTLINED_FUNCTION_25_21(v107, v111);
        *v112 = v105;
        (*(v95 + 8))(v126, v127);
      }

      return __swift_destroy_boxed_opaque_existential_1(v130);
    }
  }

  else
  {
    result = sub_24E346C48();
    *a3 = result;
  }

  return result;
}

id sub_24E272E70(uint64_t a1, unsigned __int8 a2, uint64_t *a3, double a4, double a5)
{
  type metadata accessor for AsyncArtworkViewConfig();
  v10 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v10;
  v17 = *(a1 + 32);
  v15 = a2;
  sub_24E228C04(a1, v14);
  v11 = sub_24E26FC04();
  v12 = *a3;

  return sub_24E0BD748(v16, &v15, v12, a4, a5, v11);
}

double sub_24E272F20@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_24E272FFC(a1, &v10);
  v3 = v10;
  v4 = v11;
  sub_24E346E28();
  sub_24E3453D8();
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v8 = v13;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  result = *&v14;
  *(a2 + 48) = v14;
  return result;
}

uint64_t sub_24E272FFC@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_24E347B98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  sub_24E26FD4C(&v19 - v9);
  sub_24E347B88();
  v11 = sub_24E347B78();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if (v11)
  {
    v19 = sub_24E3469A8();
    v20 = 0;
  }

  else
  {
    v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = MEMORY[0x28223BE20](v13);
    (*(v16 + 16))(&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    v19 = sub_24E346C48();
    v20 = 1;
  }

  result = sub_24E345E38();
  v18 = v22;
  *a2 = v21;
  *(a2 + 8) = v18;
  return result;
}

void sub_24E273234()
{
  OUTLINED_FUNCTION_32();
  v58 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E90A0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_3();
  v54 = v6;
  OUTLINED_FUNCTION_18_1();
  v55 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v47 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_38();
  v45 = v9;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_20();
  v46 = v11;
  OUTLINED_FUNCTION_18_1();
  sub_24E346188();
  OUTLINED_FUNCTION_0_14();
  v52 = v13;
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E90A8);
  OUTLINED_FUNCTION_0_14();
  v56 = v15;
  v57 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_38();
  v44 = v16;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_21_20();
  v51 = v18;
  OUTLINED_FUNCTION_18_1();
  v19 = type metadata accessor for ActivityFeedLockupView();
  type metadata accessor for ActivityFeedLockupViewModel();

  sub_24E345C48();
  v20 = sub_24E3464C8();
  v22 = v21;
  v24 = v23;
  v25 = v0 + *(v19 + 24);
  v26 = sub_24E3464B8();
  v49 = v27;
  v50 = v26;
  v29 = v28;
  v48 = v30;
  sub_24DFA92EC(v20, v22, v24 & 1);

  v31 = *(v25 + 24);
  KeyPath = swift_getKeyPath();
  v33 = sub_24E3469D8();
  v34 = swift_getKeyPath();
  v35 = v29 & 1;
  v60[0] = v29 & 1;
  LOBYTE(v59[0]) = 0;
  v36 = *(v25 + 104);
  v37 = swift_getKeyPath();

  sub_24E346E38();
  OUTLINED_FUNCTION_17_36();
  v59[0] = v50;
  v59[1] = v49;
  LOBYTE(v59[2]) = v35;
  v59[3] = v48;
  v59[4] = KeyPath;
  v59[5] = v31;
  LOBYTE(v59[6]) = 0;
  v59[7] = v34;
  v59[8] = v33;
  v59[9] = v37;
  v59[10] = v36;
  v59[25] = 0x3FF0000000000000;
  sub_24E346178();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E90B0);
  v39 = sub_24E275104();
  sub_24E346808();
  (*(v52 + 8))(v1, v53);
  memcpy(v60, v59, 0xD0uLL);
  sub_24DF8BFF4(v60, &qword_27F1E90B0);
  sub_24DFA9240();
  if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
  {
    sub_24DF8BFF4(v54, &qword_27F1DEFB8);
    (*(v56 + 16))(v44, v51, v57);
    v59[0] = v38;
    v59[1] = v39;
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_60();
    v40 = sub_24E346C48();
    v41 = v57;
    v42 = v56;
  }

  else
  {
    (*(v47 + 32))(v46, v54, v55);
    v43 = (*(v47 + 16))(v45, v46, v55);
    MEMORY[0x28223BE20](v43);
    sub_24E3463A8();
    OUTLINED_FUNCTION_13_49(&qword_27F1E9100, &qword_27F1E90A0);
    v40 = sub_24E346C48();
    (*(v47 + 8))(v46, v55);
    v42 = v56;
    v41 = v57;
  }

  *v58 = v40;
  (*(v42 + 8))(v51, v41);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E27381C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E90A8);
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(v11 - v6, a1, v4, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E90B0);
  v9 = sub_24E275104();
  v11[0] = v8;
  v11[1] = v9;
  swift_getOpaqueTypeConformance2();
  result = sub_24E346C48();
  *a2 = result;
  return result;
}

uint64_t sub_24E273940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9158);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9038);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  sub_24E271B18();
  v27 = v28;
  v24 = v18;
  sub_24E346648();

  sub_24E273234();
  v27 = v28;
  sub_24E346648();

  if (*(a1 + *(type metadata accessor for ActivityFeedLockupView() + 24) + 96) == 1)
  {
    sub_24E272368(0.0, 1, &v28);
    v27 = v28;
    sub_24E346648();

    sub_24DFA9344();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v19, 1, v23);
  v20 = v24;
  sub_24DFA9240();
  sub_24DFA9240();
  v21 = v25;
  sub_24DFA9240();
  v23 = v12;
  sub_24DFA9240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9160);
  sub_24DFA9240();
  sub_24DFA9240();
  sub_24DF8BFF4(v7, &qword_27F1E9158);
  sub_24DF8BFF4(v15, &qword_27F1E9038);
  sub_24DF8BFF4(v20, &qword_27F1E9038);
  sub_24DF8BFF4(v21, &qword_27F1E9158);
  sub_24DF8BFF4(v9, &qword_27F1E9038);
  return sub_24DF8BFF4(v23, &qword_27F1E9038);
}

uint64_t sub_24E273D48@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9038);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v11 - v6;
  v8 = type metadata accessor for ActivityFeedLockupView() - 8;
  MEMORY[0x28223BE20](v8);
  sub_24E2753C0();
  v9 = swift_allocObject();
  sub_24E2716E4();
  sub_24E273234();
  v11[0] = v11[1];
  sub_24E346648();

  sub_24DFA9240();
  *a1 = sub_24E275964;
  a1[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9168);
  sub_24DFA9240();

  sub_24DF8BFF4(v7, &qword_27F1E9038);
  sub_24DF8BFF4(v4, &qword_27F1E9038);
}

uint64_t sub_24E273FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_24E346E18();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9170);
  sub_24E274038(a2, a1, a3 + *(v7 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9178);
  v9 = a3 + *(result + 36);
  *v9 = 0x3FF0000000000000;
  *(v9 + 4) = 0;
  return result;
}

uint64_t sub_24E274038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9180);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9188);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9038);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v25 - v18;
  sub_24E271B18();
  v26 = v27;
  sub_24E346648();

  if (*(a1 + *(type metadata accessor for ActivityFeedLockupView() + 24) + 96) == 1)
  {
    v25[0] = a3;
    sub_24E345488();
    sub_24E272368(v20 * 0.5, 0, &v27);
    v26 = v27;
    sub_24E346648();

    sub_24E345488();
    v22 = &v7[*(v5 + 36)];
    *v22 = v21 * 0.5;
    *(v22 + 1) = 0;
    sub_24DFA9344();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v23, 1, v5);
  sub_24DFA9240();
  sub_24DFA9240();
  sub_24DFA9240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9190);
  sub_24DFA9240();
  sub_24DF8BFF4(v13, &qword_27F1E9188);
  sub_24DF8BFF4(v19, &qword_27F1E9038);
  sub_24DF8BFF4(v10, &qword_27F1E9188);
  return sub_24DF8BFF4(v16, &qword_27F1E9038);
}

uint64_t sub_24E2743C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9028);
  MEMORY[0x28223BE20](v3);
  v33 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32[1] = v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9030);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9038);
  MEMORY[0x28223BE20](v11 - 8);
  v35 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v34 = v32 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = v32 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v32 - v20;
  sub_24E271B18();
  v39 = __src[0];
  sub_24E346648();

  sub_24E273234();
  v39 = __src[0];
  v22 = v3;
  sub_24E346648();

  v23 = 1;
  if (*(a1 + *(type metadata accessor for ActivityFeedLockupView() + 24) + 96) == 1)
  {
    sub_24E272368(0.0, 1, __src);
    v39 = __src[0];
    sub_24E346648();

    sub_24E346E18();
    sub_24E3457F8();
    v24 = v33;
    sub_24DFA9344();
    memcpy(&v24[*(v3 + 36)], __src, 0x70uLL);
    sub_24DFA9344();
    sub_24DFA9344();
    v23 = 0;
  }

  v25 = v38;
  __swift_storeEnumTagSinglePayload(v38, v23, 1, v22);
  v26 = v21;
  v27 = v34;
  sub_24DFA9240();
  v28 = v18;
  v29 = v35;
  sub_24DFA9240();
  v30 = v36;
  sub_24DFA9240();
  sub_24DFA9240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9040);
  sub_24DFA9240();
  sub_24DFA9240();
  sub_24DF8BFF4(v25, &qword_27F1E9030);
  sub_24DF8BFF4(v28, &qword_27F1E9038);
  sub_24DF8BFF4(v26, &qword_27F1E9038);
  sub_24DF8BFF4(v30, &qword_27F1E9030);
  sub_24DF8BFF4(v29, &qword_27F1E9038);
  return sub_24DF8BFF4(v27, &qword_27F1E9038);
}

void sub_24E274950()
{
  type metadata accessor for ArtworkLoader();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivityFeedLockupViewModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ActivityFeedLockupTheme();
      if (v2 <= 0x3F)
      {
        sub_24E274A7C(319, &qword_27F1E8FE8, &type metadata for ActivityFeedLockupActionHandlers, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E274A7C(319, &qword_27F1E15F0, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_24E274ACC();
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

void sub_24E274A7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24E274ACC()
{
  if (!qword_27F1E6A90)
  {
    sub_24E347B98();
    v0 = sub_24E345278();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E6A90);
    }
  }
}

unint64_t sub_24E274B24()
{
  result = qword_27F1E8FF0;
  if (!qword_27F1E8FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8FD0);
    sub_24E274BDC();
    sub_24DFB4C28(&qword_27F1E0FE0, &qword_27F1E0FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8FF0);
  }

  return result;
}

unint64_t sub_24E274BDC()
{
  result = qword_27F1E8FF8;
  if (!qword_27F1E8FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E19E0);
    sub_24E270CEC();
    sub_24DFB4C28(&qword_27F1E19E8, &qword_27F1E19E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E2754C0(&qword_27F1DF850, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8FF8);
  }

  return result;
}

uint64_t sub_24E274DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

id sub_24E274EA4()
{
  v1 = type metadata accessor for ActivityFeedLockupView();
  OUTLINED_FUNCTION_4_5(v1);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 49);
  v6 = (v0 + ((*(v2 + 80) + 72) & ~*(v2 + 80)));

  return sub_24E272E70(v0 + 16, v5, v6, v3, v4);
}

id sub_24E274F0C(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_24E117238(result, a2, a3, a4, a5);
  }

  return result;
}

void sub_24E274F20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_24E0BE79C(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_24E274F44()
{
  result = qword_27F1E9068;
  if (!qword_27F1E9068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9060);
    sub_24E274FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9068);
  }

  return result;
}

unint64_t sub_24E274FD0()
{
  result = qword_27F1E9070;
  if (!qword_27F1E9070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9078);
    sub_24E275054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9070);
  }

  return result;
}

unint64_t sub_24E275054()
{
  result = qword_27F1E9080;
  if (!qword_27F1E9080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9080);
  }

  return result;
}

unint64_t sub_24E275104()
{
  result = qword_27F1E90B8;
  if (!qword_27F1E90B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E90B0);
    sub_24E2751BC();
    sub_24DFB4C28(&qword_27F1E90F0, &qword_27F1E90F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E90B8);
  }

  return result;
}

unint64_t sub_24E2751BC()
{
  result = qword_27F1E90C0;
  if (!qword_27F1E90C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E90C8);
    sub_24E275248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E90C0);
  }

  return result;
}

unint64_t sub_24E275248()
{
  result = qword_27F1E90D0;
  if (!qword_27F1E90D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E90D8);
    sub_24E275300();
    sub_24DFB4C28(&qword_27F1E2040, &qword_27F1E2048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E90D0);
  }

  return result;
}

unint64_t sub_24E275300()
{
  result = qword_27F1E90E0;
  if (!qword_27F1E90E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E90E8);
    sub_24E1F6600();
    sub_24DFB4C28(&qword_27F1E2040, &qword_27F1E2048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E90E0);
  }

  return result;
}

uint64_t sub_24E2753C0()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24E275418(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_24E2754C0(&qword_27F1E9138, type metadata accessor for PlayerGroupView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E2754C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E275508(uint64_t a1)
{
  v2 = type metadata accessor for PlayerGroupView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E275564()
{
  result = qword_27F1E9148;
  if (!qword_27F1E9148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9128);
    sub_24E275418(&qword_27F1E9130, &qword_27F1E9120);
    sub_24E275418(&qword_27F1E9140, &qword_27F1E9110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9148);
  }

  return result;
}

uint64_t objectdestroyTm_28()
{
  OUTLINED_FUNCTION_32();
  type metadata accessor for ActivityFeedLockupView();
  OUTLINED_FUNCTION_3_13();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v3 + v0[5];
  sub_24E3433A8();
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 8))(v4);
  type metadata accessor for ActivityFeedLockupViewModel();

  sub_24E343288();
  if (!OUTLINED_FUNCTION_14_39())
  {
    OUTLINED_FUNCTION_22_0();
    v6 = OUTLINED_FUNCTION_21_28();
    v7(v6);
  }

  OUTLINED_FUNCTION_34_14();
  if (!OUTLINED_FUNCTION_14_39())
  {
    OUTLINED_FUNCTION_22_0();
    v8 = OUTLINED_FUNCTION_21_28();
    v9(v8);
  }

  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_36_11();
  if (!v12)
  {
    sub_24E0BE79C(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), v10);
  }

  if (!OUTLINED_FUNCTION_14_39())
  {
    OUTLINED_FUNCTION_22_0();
    v13 = OUTLINED_FUNCTION_21_28();
    v14(v13);
  }

  OUTLINED_FUNCTION_34_14();
  v15 = v3 + v0[6];

  v16 = type metadata accessor for ActivityFeedLockupTheme();
  v17 = *(v16 + 60);
  sub_24E346E88();
  OUTLINED_FUNCTION_5_2();
  (*(v18 + 8))(v15 + v17);
  v19 = *(v16 + 64);
  sub_24E345658();
  OUTLINED_FUNCTION_5_2();
  (*(v20 + 8))(v15 + v19);
  if (*(v3 + v0[7]))
  {
  }

  sub_24DE73F34(*(v3 + v0[8]), *(v3 + v0[8] + 8));
  v21 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E347B98();
    OUTLINED_FUNCTION_5_2();
    (*(v22 + 8))(v3 + v21);
  }

  else
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v23, v24, v25);
}

uint64_t sub_24E27597C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for ActivityFeedLockupView();
  OUTLINED_FUNCTION_4_5(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

uint64_t OUTLINED_FUNCTION_13_49(unint64_t *a1, uint64_t *a2)
{

  return sub_24DFB4C28(a1, a2);
}

uint64_t OUTLINED_FUNCTION_14_39()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_36()
{

  return sub_24E3457F8();
}

void OUTLINED_FUNCTION_25_21(void *a1, uint64_t a2)
{
  v4 = *(v2 - 320);
  v5 = *(v2 - 312);
  v6 = *(v2 - 300);

  sub_24E274F20(a1, a2, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_26_21()
{

  return sub_24E345E38();
}

uint64_t OUTLINED_FUNCTION_34_14()
{
}

uint64_t OUTLINED_FUNCTION_40_9()
{

  return sub_24DFA9240();
}

uint64_t OUTLINED_FUNCTION_41_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, a1);
}

uint64_t sub_24E275C28(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E275C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id AchievementCard.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

uint64_t AchievementCard.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  OUTLINED_FUNCTION_30_13();
  swift_beginAccess();
  sub_24E275D74(a1, v1 + v3);
  swift_endAccess();
  sub_24E2770BC();
  return sub_24E2776C4(a1);
}

uint64_t sub_24E275D74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E23E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E275DE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_metrics;
  OUTLINED_FUNCTION_30_13();
  swift_beginAccess();
  sub_24E27B950(a1, v1 + v3);
  swift_endAccess();
  sub_24E276C08();
  return sub_24DF89DEC(a1);
}

uint64_t sub_24E275E4C()
{
  sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v55 = MEMORY[0x277D839F8];
    v56 = MEMORY[0x277D22A30];
    v53 = MEMORY[0x277D22A30];
    *&v54 = 0x4024000000000000;
    v52 = MEMORY[0x277D839F8];
    *&v51 = 0x4030000000000000;
    if (qword_27F1DDB78 != -1)
    {
      OUTLINED_FUNCTION_1_128();
    }

    v4 = sub_24E344158();
    __swift_project_value_buffer(v4, qword_27F20B2E8);
    OUTLINED_FUNCTION_5_98();
    v5 = OUTLINED_FUNCTION_16_38();
    *&v43 = v6;
    v6(v5);
    v7 = OUTLINED_FUNCTION_3_109();
    v1(v7);
    v8 = *MEMORY[0x277D76838];
    v49 = &type metadata for CappedSizeStaticDimension;
    v50 = sub_24E03A540();
    *&v47 = 0x403A000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98);
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_12_44();
    v11 = OUTLINED_FUNCTION_2_110(v10, *(v9 + 88));
    v12(v11);
    *(&v47 + 1) = v0;
    v48 = v8;
    v13 = qword_27F1DDB80;
    v14 = v8;
    if (v13 != -1)
    {
      v14 = OUTLINED_FUNCTION_0_164();
    }

    v15 = OUTLINED_FUNCTION_8_74(v14, qword_27F20B300);
    (v43)(v15);
    v16 = OUTLINED_FUNCTION_4_92();
    v1(v16);
    v45 = sub_24E3444F8();
    v46 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v44);
    OUTLINED_FUNCTION_36_12(MEMORY[0x277D22628]);
    OUTLINED_FUNCTION_6_84();
    v17();
    sub_24E344508();
    v18 = OUTLINED_FUNCTION_15_36();
    v19(v18);
    if (qword_27F1DD710 != -1)
    {
      OUTLINED_FUNCTION_19_29();
    }

    OUTLINED_FUNCTION_40_10(&xmmword_27F1E1468);
    xmmword_27F1E9198 = xmmword_24E3893D0;
    unk_27F1E91A8 = xmmword_24E3893E0;
    xmmword_27F1E91B8 = xmmword_24E3893F0;
    sub_24DF88BF0(&v54, &unk_27F1E91C8);
    v20 = 0x4061000000000000;
  }

  else
  {
    v55 = MEMORY[0x277D839F8];
    v56 = MEMORY[0x277D22A30];
    v53 = MEMORY[0x277D22A30];
    *&v54 = 0x4030000000000000;
    v52 = MEMORY[0x277D839F8];
    *&v51 = 0x4030000000000000;
    if (qword_27F1DDB78 != -1)
    {
      OUTLINED_FUNCTION_1_128();
    }

    v21 = sub_24E344158();
    __swift_project_value_buffer(v21, qword_27F20B2E8);
    OUTLINED_FUNCTION_5_98();
    v22 = OUTLINED_FUNCTION_16_38();
    *&v43 = v23;
    v23(v22);
    v24 = OUTLINED_FUNCTION_3_109();
    v1(v24);
    v25 = *MEMORY[0x277D76838];
    v49 = &type metadata for CappedSizeStaticDimension;
    v50 = sub_24E03A540();
    *&v47 = 0x4036000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98);
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_12_44();
    v28 = OUTLINED_FUNCTION_2_110(v27, *(v26 + 88));
    v29(v28);
    *(&v47 + 1) = v0;
    v48 = v25;
    v30 = qword_27F1DDB80;
    v31 = v25;
    if (v30 != -1)
    {
      v31 = OUTLINED_FUNCTION_0_164();
    }

    v32 = OUTLINED_FUNCTION_8_74(v31, qword_27F20B300);
    (v43)(v32);
    v33 = OUTLINED_FUNCTION_4_92();
    v1(v33);
    v45 = sub_24E3444F8();
    v46 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v44);
    OUTLINED_FUNCTION_36_12(MEMORY[0x277D22628]);
    OUTLINED_FUNCTION_6_84();
    v34();
    sub_24E344508();
    v35 = OUTLINED_FUNCTION_15_36();
    v36(v35);
    if (qword_27F1DD710 != -1)
    {
      OUTLINED_FUNCTION_19_29();
    }

    OUTLINED_FUNCTION_40_10(&xmmword_27F1E1468);
    xmmword_27F1E9198 = xmmword_24E3893A0;
    unk_27F1E91A8 = xmmword_24E3893B0;
    xmmword_27F1E91B8 = xmmword_24E3893C0;
    sub_24DF88BF0(&v54, &unk_27F1E91C8);
    v20 = 0x405C800000000000;
  }

  unk_27F1E91F0 = vdupq_n_s64(v20);
  sub_24DF88BF0(&v51, &unk_27F1E9218);
  unk_27F1E9200 = v43;
  qword_27F1E9210 = v2;
  __asm { FMOV            V0.2D, #10.0 }

  unk_27F1E9240 = _Q0;
  sub_24DF88BF0(&v47, &unk_27F1E9250);
  return OUTLINED_FUNCTION_42_9(&v44);
}

void sub_24E27639C()
{
  OUTLINED_FUNCTION_13_44();
  sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  GKIsXRUIIdiomShouldUsePadUI();
  OUTLINED_FUNCTION_28_18();
  if (qword_27F1DD718 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_27_16();
  *&v35 = 0x4030000000000000;
  if (qword_27F1DDB78 != -1)
  {
    OUTLINED_FUNCTION_1_128();
  }

  v6 = sub_24E344158();
  __swift_project_value_buffer(v6, qword_27F20B2E8);
  OUTLINED_FUNCTION_5_98();
  v7 = OUTLINED_FUNCTION_16_38();
  v27 = v8;
  v8(v7);
  v9 = OUTLINED_FUNCTION_3_109();
  v1(v9);
  v10 = *MEMORY[0x277D76838];
  v33 = &type metadata for CappedSizeStaticDimension;
  v34 = sub_24E03A540();
  *&v31 = 0x403A000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98);
  OUTLINED_FUNCTION_1_30();
  OUTLINED_FUNCTION_12_44();
  v13 = OUTLINED_FUNCTION_2_110(v12, *(v11 + 88));
  v14(v13);
  *(&v31 + 1) = v0;
  v32 = v10;
  v15 = qword_27F1DDB80;
  v16 = v10;
  if (v15 != -1)
  {
    v16 = OUTLINED_FUNCTION_0_164();
  }

  v17 = OUTLINED_FUNCTION_8_74(v16, qword_27F20B300);
  v27(v17);
  v18 = OUTLINED_FUNCTION_4_92();
  v1(v18);
  v29 = sub_24E3444F8();
  v30 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v28);
  OUTLINED_FUNCTION_18_38(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_84();
  v19();
  sub_24E344508();
  v20 = OUTLINED_FUNCTION_15_36();
  v21(v20);
  xmmword_27F1E92A8 = xmmword_24E3893D0;
  unk_27F1E92B8 = xmmword_24E3893E0;
  OUTLINED_FUNCTION_35_12(xmmword_24E3893F0);
  unk_27F1E9300 = vdupq_n_s64(0x405C800000000000uLL);
  sub_24DF88BF0(&v35, &unk_27F1E9328);
  qword_27F1E9310 = v2;
  unk_27F1E9318 = v3;
  qword_27F1E9320 = v4;
  __asm { FMOV            V0.2D, #10.0 }

  unk_27F1E9350 = _Q0;
  sub_24DF88BF0(&v31, &unk_27F1E9360);
  OUTLINED_FUNCTION_42_9(&v28);
  OUTLINED_FUNCTION_12_37();
}

void sub_24E2766B0()
{
  OUTLINED_FUNCTION_13_44();
  sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    OUTLINED_FUNCTION_28_18();
    if (qword_27F1DD720 != -1)
    {
      OUTLINED_FUNCTION_24_17();
    }

    OUTLINED_FUNCTION_27_16();
    *&v53 = 0x4035000000000000;
    if (qword_27F1DDB78 != -1)
    {
      OUTLINED_FUNCTION_1_128();
    }

    v6 = sub_24E344158();
    __swift_project_value_buffer(v6, qword_27F20B2E8);
    OUTLINED_FUNCTION_5_98();
    v7 = OUTLINED_FUNCTION_16_38();
    v44 = v8;
    v8(v7);
    v9 = OUTLINED_FUNCTION_3_109();
    v1(v9);
    v10 = *MEMORY[0x277D76838];
    v51 = &type metadata for CappedSizeStaticDimension;
    v52 = sub_24E03A540();
    *&v49 = 0x403B000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98);
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_12_44();
    v13 = OUTLINED_FUNCTION_2_110(v12, *(v11 + 88));
    v14(v13);
    *(&v49 + 1) = v0;
    v50 = v10;
    v15 = qword_27F1DDB80;
    v16 = v10;
    if (v15 != -1)
    {
      v16 = OUTLINED_FUNCTION_0_164();
    }

    v17 = OUTLINED_FUNCTION_8_74(v16, qword_27F20B300);
    v44(v17);
    v18 = OUTLINED_FUNCTION_4_92();
    v1(v18);
    v47 = sub_24E3444F8();
    v48 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v46);
    OUTLINED_FUNCTION_18_38(MEMORY[0x277D22628]);
    OUTLINED_FUNCTION_6_84();
    v19();
    sub_24E344508();
    v20 = OUTLINED_FUNCTION_15_36();
    v21(v20);
    xmmword_27F1E93B8 = xmmword_24E389430;
    unk_27F1E93C8 = xmmword_24E389440;
    OUTLINED_FUNCTION_35_12(xmmword_24E3893C0);
    v22 = 0x405B400000000000;
  }

  else
  {
    OUTLINED_FUNCTION_28_18();
    if (qword_27F1DD720 != -1)
    {
      OUTLINED_FUNCTION_24_17();
    }

    OUTLINED_FUNCTION_27_16();
    *&v53 = 0x4026000000000000;
    if (qword_27F1DDB78 != -1)
    {
      OUTLINED_FUNCTION_1_128();
    }

    v23 = sub_24E344158();
    __swift_project_value_buffer(v23, qword_27F20B2E8);
    OUTLINED_FUNCTION_5_98();
    v24 = OUTLINED_FUNCTION_16_38();
    v45 = v25;
    v25(v24);
    v26 = OUTLINED_FUNCTION_3_109();
    v1(v26);
    v27 = *MEMORY[0x277D76838];
    v51 = &type metadata for CappedSizeStaticDimension;
    v52 = sub_24E03A540();
    *&v49 = 0x4035000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98);
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_12_44();
    v30 = OUTLINED_FUNCTION_2_110(v29, *(v28 + 88));
    v31(v30);
    *(&v49 + 1) = v0;
    v50 = v27;
    v32 = qword_27F1DDB80;
    v33 = v27;
    if (v32 != -1)
    {
      v33 = OUTLINED_FUNCTION_0_164();
    }

    v34 = OUTLINED_FUNCTION_8_74(v33, qword_27F20B300);
    v45(v34);
    v35 = OUTLINED_FUNCTION_4_92();
    v1(v35);
    v47 = sub_24E3444F8();
    v48 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v46);
    OUTLINED_FUNCTION_18_38(MEMORY[0x277D22628]);
    OUTLINED_FUNCTION_6_84();
    v36();
    sub_24E344508();
    v37 = OUTLINED_FUNCTION_15_36();
    v38(v37);
    xmmword_27F1E93B8 = xmmword_24E389400;
    unk_27F1E93C8 = xmmword_24E389410;
    OUTLINED_FUNCTION_35_12(xmmword_24E389420);
    v22 = 0x4059000000000000;
  }

  unk_27F1E9410 = vdupq_n_s64(v22);
  sub_24DF88BF0(&v53, &unk_27F1E9438);
  qword_27F1E9420 = v2;
  unk_27F1E9428 = v3;
  qword_27F1E9430 = v4;
  __asm { FMOV            V0.2D, #10.0 }

  unk_27F1E9460 = _Q0;
  sub_24DF88BF0(&v49, &unk_27F1E9470);
  OUTLINED_FUNCTION_42_9(&v46);
  OUTLINED_FUNCTION_12_37();
}

uint64_t sub_24E276BB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_24DF89DB4(a2, a3);
}

id sub_24E276C08()
{
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_metrics];
  swift_beginAccess();
  v2 = *(v1 + 15);
  v4 = *(v1 + 104);
  v5 = v2;
  sub_24E2BF4EC(&v4);
  return [v0 setNeedsLayout];
}

id sub_24E276C8C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___highlightView;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___highlightView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___highlightView);
  }

  else
  {
    v4 = sub_24E276CEC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_24E276CEC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_opt_self() whiteColor];
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
  v3 = [v0 layer];
  [v3 setCornerCurve_];

  return v0;
}

id sub_24E276DC8()
{
  v1 = v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_isHighlighted];
  v2 = sub_24E276C8C();
  v3 = v2;
  if (v1 == 1)
  {
    [v0 insertSubview:v2 belowSubview:*&v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_badge]];
  }

  else
  {
    [v2 removeFromSuperview];
  }

  return [v0 setNeedsLayout];
}

id sub_24E276E94(uint64_t a1, uint64_t *a2, id *a3, uint64_t *a4)
{
  v7 = sub_24E344158();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  v12 = *a3;
  v9 = *a4;
  *v8 = *a3;
  v8[1] = v9;
  OUTLINED_FUNCTION_22_0();
  (*(v10 + 104))();

  return v12;
}

uint64_t AchievementCard.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_5_16();
  return sub_24DF8F3A8(v1 + v3, a1, &qword_27F1E23E0);
}

uint64_t sub_24E276FA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  swift_beginAccess();
  return sub_24DF8F3A8(v3 + v4, a2, &qword_27F1E23E0);
}

uint64_t sub_24E277010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E23E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24DF8F3A8(a1, &v6 - v3, &qword_27F1E23E0);
  return AchievementCard.model.setter(v4);
}

id sub_24E2770BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E23E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v50 - v3;
  v5 = type metadata accessor for Achievement();
  MEMORY[0x28223BE20](v5);
  v7 = (v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  swift_beginAccess();
  sub_24DF8F3A8(&v1[v8], v4, &qword_27F1E23E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_24E2776C4(v4);
    v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel];
    sub_24DF88A8C(0, &qword_27F1E2418);
    v10 = sub_24E079130(0, 0xE000000000000000);
    [v9 setAttributedText_];

    v11 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel];
    v12 = sub_24E079130(0, 0xE000000000000000);
    [v11 setAttributedText_];

    v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_isHighlighted] = 0;
    sub_24E276DC8();
    v53 = 0;
    v54 = 0;
    v55 = 0x8000000000000000;
    v58 = v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_theme];
    sub_24E27772C(&v53, &v58);
    return [v1 setNeedsLayout];
  }

  sub_24E27B630(v4, v7);
  v13 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  LODWORD(v14) = 1045220557;
  [v13 setHyphenationFactor_];
  [v13 setAlignment_];
  v15 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel];
  type metadata accessor for ItemWithReleaseState();
  v16 = v7[5];
  v17 = v7[6];
  v18 = Achievement.description.getter();
  v20 = v19;
  v21 = (v7 + v5[12]);
  v22 = v21[1];
  v23 = v21[2];
  v24 = v21[3];
  v53 = *v21;
  v54 = v22;
  v55 = v23;
  v56 = v24;
  sub_24E151B74(v53, v22);
  v25 = static ItemWithReleaseState.titleText(title:accessibilityDescription:releaseStateIcon:paragraphStyle:)(v16, v17, v18, v20, &v53, v13);

  sub_24E151BF4(v53, v54);
  [v15 setAttributedText_];

  v52 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel];
  v26 = v7[7];
  v27 = v7[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E367D20;
  v29 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  *(inited + 64) = sub_24DF88A8C(0, &qword_27F1E5BD0);
  *(inited + 40) = v13;
  type metadata accessor for Key(0);
  sub_24DFEA7B4();

  v30 = v29;
  v31 = v13;
  v32 = sub_24E347C28();
  v33 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v34 = sub_24E194F20(v26, v27, v32);
  [v52 setAttributedText_];

  v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_isHighlighted] = *(v7 + v5[11]);
  sub_24E276DC8();
  v35 = v7[10];
  v36 = v7[11];
  v53 = v7[9];
  v54 = v35;
  v55 = v36;
  v58 = v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_theme];
  sub_24E09B300(v53, v35, v36);
  sub_24E27772C(&v53, &v58);
  sub_24E154E88(v53, v54, v55);
  if (!*(v7 + v5[13]) || (v56 = &type metadata for GKFeatureFlags, v57 = sub_24DFA0CB4(), LOBYTE(v53) = 12, v37 = sub_24E3435A8(), __swift_destroy_boxed_opaque_existential_1(&v53), (v37 & 1) == 0))
  {
LABEL_18:

    sub_24E250C9C(v7);
    return [v1 setNeedsLayout];
  }

  v51 = v31;

  v53 = sub_24E0833E0(v38);
  sub_24E27A3F8(&v53);
  v50[1] = 0;
  v39 = v53;
  v52 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  v40 = sub_24DFD8654(v39);
  v41 = 0;
  while (1)
  {
    if (v40 == v41)
    {

      sub_24E277898(v52);

      v31 = v51;
      goto LABEL_18;
    }

    if ((v39 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x25303F560](v41, v39);
    }

    else
    {
      v42 = *(v39 + 16);
      if (v41 >= v42)
      {
        goto LABEL_21;
      }

      v43 = *(v39 + 8 * v41 + 32);
    }

    v44 = v43;
    v45 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    v46 = [v43 friendPlayer];
    if (!v46)
    {
      goto LABEL_22;
    }

    v47 = v46;
    v48 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];

    ++v41;
    if (v48)
    {
      MEMORY[0x25303EA30]();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      v52 = v53;
      v41 = v45;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_24E2776C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E23E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24E27772C(uint64_t *a1, _BYTE *a2)
{
  v3 = v2;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (v6 >> 62)
  {
    if (v6 >> 62 != 1)
    {
      v7 = *&v2[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border];
      if (!*a2)
      {
        goto LABEL_11;
      }

LABEL_8:
      v8 = &v2[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style];
      [v7 setHidden_];
      [*&v3[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient] setHidden_];
      goto LABEL_13;
    }
  }

  else
  {
    if (!*a2)
    {
      v7 = *&v2[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border];
LABEL_11:
      [v7 setHidden_];
      goto LABEL_12;
    }

    if (*a2 == 1)
    {
      v7 = *&v2[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border];
      goto LABEL_8;
    }
  }

  [*&v2[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border] setHidden_];
LABEL_12:
  [*&v2[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient] setHidden_];
LABEL_13:
  *&v10 = v5;
  *(&v10 + 1) = v4;
  v11 = v6;
  sub_24E09B300(v5, v4, v6);
  AchievementBadge.status.setter(&v10);
  [v3 setNeedsDisplay];

  return [v3 setNeedsLayout];
}

id sub_24E277898(unint64_t a1)
{
  v2 = a1;
  v3 = sub_24DFD8654(a1);
  if (v3 >= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  if (v3 < 4)
  {

    goto LABEL_22;
  }

  sub_24E05F66C(0, v2);
  sub_24E05F66C(v4, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_24DF88A8C(0, &qword_27F1DF028);

    v5 = 0;
    do
    {
      v6 = v5 + 1;
      sub_24E3489E8();
      v5 = v6;
    }

    while (v4 != v6);
  }

  else
  {
  }

  if (v2 >> 62)
  {

    v8 = sub_24E348B38();
    v9 = v12;
    v7 = v13;
    v10 = v14;
    if ((v14 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    v8 = v2 & 0xFFFFFFFFFFFFFF8;
    v9 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
    v10 = (2 * v4) | 1;
    if ((v10 & 1) == 0)
    {
LABEL_13:
      sub_24E09C650(v8, v9, v7, v10);
      v2 = v11;
      goto LABEL_21;
    }
  }

  sub_24E348C28();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v10 >> 1, v7))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v16 != (v10 >> 1) - v7)
  {
LABEL_26:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v2)
  {
    goto LABEL_22;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_21:
  swift_unknownObjectRelease();
LABEL_22:
  v17 = sub_24E30B234(v2);
  sub_24E16D6B0(v17);

  return [v1 setNeedsLayout];
}

uint64_t AchievementCard.model.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  OUTLINED_FUNCTION_9_1();
  return OUTLINED_FUNCTION_30_4();
}

uint64_t AchievementCard.alwaysShowShadow.getter()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow;
  OUTLINED_FUNCTION_5_16();
  return *(v0 + v1);
}

uint64_t sub_24E277B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id AchievementCard.alwaysShowShadow.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow;
  OUTLINED_FUNCTION_30_13();
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsLayout];
}

uint64_t AchievementCard.alwaysShowShadow.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  OUTLINED_FUNCTION_9_1();
  return OUTLINED_FUNCTION_30_4();
}

id sub_24E277C40(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

uint64_t AchievementCard.backgroundEffectsGroup.getter()
{
  OUTLINED_FUNCTION_3_31();

  return OUTLINED_FUNCTION_1_19();
}

uint64_t sub_24E277CD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundEffectsGroup);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_24E277D2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AchievementCard.backgroundEffectsGroup.setter(v1, v2);
}

id AchievementCard.backgroundEffectsGroup.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37_9();
  *v2 = a1;
  v2[1] = a2;

  return sub_24E277DBC();
}

id sub_24E277DBC()
{
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundEffectsGroup];
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  sub_24DFEB9A0(v3, v2);
  return [v0 setNeedsLayout];
}

uint64_t AchievementCard.backgroundEffectsGroup.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  OUTLINED_FUNCTION_9_1();
  return OUTLINED_FUNCTION_30_4();
}

uint64_t AchievementCard.wantsFixedContentSizeCategory.getter()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory;
  OUTLINED_FUNCTION_5_16();
  return *(v0 + v1);
}

uint64_t sub_24E277EE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id AchievementCard.wantsFixedContentSizeCategory.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory;
  OUTLINED_FUNCTION_30_13();
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_24E277F88();
}

id sub_24E277F88()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    v2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    [v0 _setLocalOverrideTraitCollection_];
  }

  else
  {
    [v0 _setLocalOverrideTraitCollection_];
  }

  return [v0 setNeedsLayout];
}

uint64_t AchievementCard.wantsFixedContentSizeCategory.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  OUTLINED_FUNCTION_9_1();
  return OUTLINED_FUNCTION_30_4();
}

uint64_t AchievementCard.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  if (qword_27F1DDB60 != -1)
  {
    swift_once();
  }

  if (*&xmmword_27F1E9198 > v0 || GKIsXRUIIdiomShouldUsePhoneUI())
  {
    if (qword_27F1DDB70 != -1)
    {
      swift_once();
    }

    v2 = &xmmword_27F1E93B8;
  }

  else
  {
    v2 = &xmmword_27F1E9198;
  }

  sub_24DF89DB4(v2, v8);
  sub_24DF89DB4(v8, v7);
  if (qword_27F1DD8F0 != -1)
  {
    OUTLINED_FUNCTION_20_27();
  }

  v3 = objc_allocWithZone(ObjectType);
  OUTLINED_FUNCTION_28();
  AchievementCard.init(frame:metrics:theme:)();
  v5 = v4;
  sub_24DF89DEC(v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

void AchievementCard.__allocating_init(frame:metrics:theme:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_28();
  AchievementCard.init(frame:metrics:theme:)();
}

void AchievementCard.init(frame:metrics:theme:)()
{
  OUTLINED_FUNCTION_13_44();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v99 - v8;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___highlightView) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_isHighlighted) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___focusBackgroundView) = 0;
  v9 = *v3;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_showsFocusedBackground) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_allowsFocusing) = 1;
  v10 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundView;
  type metadata accessor for BackgroundView();
  *(v1 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v12 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v13 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel;
  *(v1 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_friendsWhoAchievedThis;
  LOBYTE(v111[0]) = 1;
  v17 = objc_allocWithZone(type metadata accessor for OverlappingPlayersPhotoView());
  OUTLINED_FUNCTION_6_38();
  *(v1 + v16) = OverlappingPlayersPhotoView.init(frame:layoutStyle:enableKnockoutSpace:)(v111, 1);
  v18 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  v19 = type metadata accessor for Achievement();
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow) = 0;
  v20 = (v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundEffectsGroup);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapGestureRecognizer) = 0;
  v21 = (v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapHandler);
  *v21 = 0;
  v21[1] = 0;
  v106 = v5;
  sub_24DF89DB4(v5, v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_metrics);
  if (v9 == 3)
  {
    if (qword_27F1DD8F0 != -1)
    {
      OUTLINED_FUNCTION_20_27();
    }

    v9 = byte_27F20AFF8;
  }

  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_theme) = v9;
  v103 = v19;
  v107 = ObjectType;
  if (v9)
  {
    if (qword_27F1DD740 != -1)
    {
      swift_once();
    }

    v22 = &qword_27F20AC30;
  }

  else
  {
    if (qword_27F1DD738 != -1)
    {
      swift_once();
    }

    v22 = &qword_27F20ABB8;
  }

  memcpy(v111, v22, 0x78uLL);
  v23 = *&v111[7];
  v24 = BYTE9(v111[6]);
  v25 = BYTE8(v111[6]);
  v104 = *(&v111[5] + 8);
  v101 = *(&v111[3] + 8);
  v102 = *(&v111[4] + 8);
  v99 = v111[0];
  v100 = v111[1];
  v26 = v111[2];
  v27 = v111[3];
  sub_24E002674(v111, v110);
  v28 = v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style;
  v29 = v100;
  *v28 = v99;
  *(v28 + 16) = v29;
  *(v28 + 32) = v26;
  *(v28 + 48) = v27;
  v30 = v102;
  *(v28 + 56) = v101;
  *(v28 + 72) = v30;
  *(v28 + 88) = v104;
  *(v28 + 104) = v25;
  *(v28 + 105) = v24;
  *(v28 + 112) = v23;
  *&v30 = *(v106 + 120);
  v111[0] = *(v106 + 104);
  *&v111[1] = v30;
  v110[0] = v9;
  v31 = objc_allocWithZone(type metadata accessor for AchievementBadge());
  v32 = OUTLINED_FUNCTION_6_38();
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_badge) = sub_24E2C06F0(v111, v110, v32, v33, 0.0, 0.0);
  v108 = v1;
  v109 = v107;
  v34 = OUTLINED_FUNCTION_28();
  v37 = objc_msgSendSuper2(v35, v36, v34);
  v38 = objc_opt_self();
  v39 = v37;
  *&v101 = v38;
  v40 = [v38 clearColor];
  [v39 setBackgroundColor_];

  v41 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundView];
  v42 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundView;
  *&v104 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundView;
  v43 = v41;
  sub_24DFEB9A0(0x6579614C656D6167, 0xEE0070756F724772);

  v44 = *&v39[v42];
  v107 = &v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style];
  v46 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 8];
  v47 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 16];
  v48 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 24];
  v49 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 32];
  v50 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 40];
  v51 = v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 48];
  *&v111[0] = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style];
  v45 = *&v111[0];
  *(&v111[0] + 1) = v46;
  *&v111[1] = v47;
  *(&v111[1] + 1) = v48;
  *&v111[2] = v49;
  *(&v111[2] + 1) = v50;
  LOBYTE(v111[3]) = v51;
  v52 = v44;
  sub_24DFD7E3C(v45, v46, v47, v48, v49, v50, v51);
  sub_24DFEB8F4(v111);

  v53 = [*&v39[v104] layer];
  v54 = *MEMORY[0x277CDA138];
  [v53 setCornerCurve_];

  v55 = [v39 layer];
  [v55 &selRef:v54 setDisplayIndex:? + 7];

  v56 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient;
  v57 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_24E36A270;
  v59 = v107;
  v60 = *(v107 + 7);
  v61 = v57;
  v62 = [v60 CGColor];
  type metadata accessor for CGColor(0);
  v64 = v63;
  *(v58 + 56) = v63;
  *(v58 + 32) = v62;
  v65 = [v59[8] CGColor];
  *(v58 + 88) = v64;
  *(v58 + 64) = v65;
  sub_24E27B56C(v58, v61);

  [*&v39[v56] setCornerCurve_];
  if (*(v59 + 104) == 1)
  {
    [*&v39[v56] setCompositingFilter_];
  }

  *&v102 = v56;
  v66 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border;
  v67 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border];
  v68 = [v101 clearColor];
  v69 = [v68 CGColor];

  [v67 setBackgroundColor_];
  [*&v39[v66] setCornerCurve_];
  v70 = v107;
  v71 = *(v107 + 9);
  v72 = *&v39[v66];
  v73 = [v71 CGColor];
  [v72 setBorderColor_];

  if (v70[104] == 1)
  {
    [*&v39[v66] setCompositingFilter_];
  }

  *&v101 = v66;
  v74 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel;
  [*&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel] setNumberOfLines_];
  v75 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel;
  [*&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel] setNumberOfLines_];
  v76 = *&v39[v74];
  v77 = &v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model];
  OUTLINED_FUNCTION_5_16();
  v78 = v103;
  if (__swift_getEnumTagSinglePayload(v77, 1, v103))
  {
    v79 = v76;
    v80 = 0;
  }

  else
  {
    v81 = v76;

    v80 = sub_24E347CB8();
    v70 = v107;
  }

  [v76 setText_];

  [*&v39[v74] setTextColor_];
  [*&v39[v74] setTextAlignment_];
  [*&v39[v74] setNumberOfLines_];
  v82 = qword_27F1DDB78;
  v83 = *&v39[v74];
  if (v82 != -1)
  {
    OUTLINED_FUNCTION_1_128();
  }

  v84 = sub_24E344158();
  __swift_project_value_buffer(v84, qword_27F20B2E8);
  OUTLINED_FUNCTION_22_0();
  *&v100 = *(v85 + 16);
  *&v99 = v85 + 16;
  (v100)(v105);
  OUTLINED_FUNCTION_44_8();

  v86 = *&v39[v75];
  if (__swift_getEnumTagSinglePayload(v77, 1, v78))
  {
    v87 = v86;
    v88 = 0;
  }

  else
  {
    v89 = v86;

    v88 = sub_24E347CB8();
    v70 = v107;
  }

  v90 = v101;
  [v86 setText_];

  [*&v39[v75] setTextColor_];
  [*&v39[v75] setTextAlignment_];
  [*&v39[v75] setNumberOfLines_];
  v91 = qword_27F1DDB80;
  v92 = *&v39[v75];
  if (v91 != -1)
  {
    OUTLINED_FUNCTION_0_164();
  }

  v93 = __swift_project_value_buffer(v84, qword_27F20B300);
  (v100)(v105, v93, v84);
  OUTLINED_FUNCTION_44_8();

  if (v70[104] == 1)
  {
    v94 = [*&v39[v75] layer];
    [v94 setCompositingFilter_];
  }

  OUTLINED_FUNCTION_39_8();
  v95 = [v39 layer];
  [v95 addSublayer_];

  v96 = [v39 layer];
  [v96 addSublayer_];

  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_39_8();
  *(&v111[1] + 1) = &type metadata for GKFeatureFlags;
  *&v111[2] = sub_24DFA0CB4();
  LOBYTE(v111[0]) = 12;
  LOBYTE(v96) = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v111);
  if (v96)
  {
    OUTLINED_FUNCTION_39_8();
  }

  v97 = GKIsRemoteUI();
  sub_24DF89DEC(v106);
  if ((v97 & 1) == 0)
  {
    v98 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory;
    swift_beginAccess();
    v39[v98] = 1;
  }

  OUTLINED_FUNCTION_12_37();
}

Swift::Void __swiftcall AchievementCard._dynamicUserInterfaceTraitDidChange()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel__dynamicUserInterfaceTraitDidChange);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border];
  v2 = &v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style];
  v3 = [*&v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 72] CGColor];
  [v1 setBorderColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E36A270;
  v5 = [v2[7] CGColor];
  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v4 + 56) = v6;
  *(v4 + 32) = v5;
  v8 = [v2[8] CGColor];
  *(v4 + 88) = v7;
  *(v4 + 64) = v8;
  v9 = OUTLINED_FUNCTION_1_19();
  sub_24E27B56C(v9, v10);
}

void sub_24E278F68()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___highlightView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_isHighlighted) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___focusBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_showsFocusedBackground) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_allowsFocusing) = 1;
  v2 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundView;
  type metadata accessor for BackgroundView();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v4 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v5 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel;
  *(v1 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_friendsWhoAchievedThis;
  v14 = 1;
  v9 = objc_allocWithZone(type metadata accessor for OverlappingPlayersPhotoView());
  OUTLINED_FUNCTION_6_38();
  *(v1 + v8) = OverlappingPlayersPhotoView.init(frame:layoutStyle:enableKnockoutSpace:)(&v14, 1);
  v10 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  v11 = type metadata accessor for Achievement();
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow) = 0;
  v12 = (v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundEffectsGroup);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapGestureRecognizer) = 0;
  v13 = (v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

Swift::Void __swiftcall AchievementCard.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v83 = v4;
  v84 = v3;
  MEMORY[0x28223BE20](*&v3);
  OUTLINED_FUNCTION_7_1();
  v82 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E23E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v79 - v8;
  v81 = type metadata accessor for Achievement();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v80 = v12 - v11;
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, sel_layoutSubviews);
  v13 = [v1 layer];
  v14 = &v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_metrics];
  OUTLINED_FUNCTION_5_16();
  [v13 setCornerRadius_];

  v15 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundView];
  v16 = [v15 layer];
  v17 = OUTLINED_FUNCTION_41_11();
  [v18 v19];

  v20 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient];
  v21 = OUTLINED_FUNCTION_41_11();
  [v20 v22];
  v23 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border];
  v24 = OUTLINED_FUNCTION_41_11();
  [v23 v25];
  [v23 setBorderWidth_];
  v26 = sub_24E276C8C();
  v27 = [v26 layer];

  v28 = OUTLINED_FUNCTION_41_11();
  [v27 v29];

  [v1 bounds];
  v31 = v30;
  [v1 bounds];
  v33 = v32;
  v34 = OUTLINED_FUNCTION_21_29();
  [v15 v35];
  OUTLINED_FUNCTION_21_29();
  OUTLINED_FUNCTION_32_16();
  [v36 v37];
  OUTLINED_FUNCTION_21_29();
  OUTLINED_FUNCTION_32_16();
  [v38 v39];
  v40 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  OUTLINED_FUNCTION_5_16();
  v41 = &v1[v40];
  v42 = v81;
  sub_24DF8F3A8(v41, v9, &qword_27F1E23E0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v42) == 1)
  {
    sub_24E2776C4(v9);
  }

  else
  {
    v43 = v80;
    sub_24E27B630(v9, v80);
    v44 = 72;
    if (*(v43 + *(v42 + 44)))
    {
      v44 = 80;
    }

    v45 = [*&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + v44] CGColor];
    [v23 setBorderColor_];

    sub_24E250C9C(v43);
  }

  if ((v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 105] & 1) != 0 || (v46 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow, OUTLINED_FUNCTION_5_16(), v1[v46] == 1))
  {
    objc_opt_self();
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_32_16();
    v49 = [v47 v48];
    v50 = [v49 CGPath];

    v51 = OUTLINED_FUNCTION_43_9();
    [v51 setShadowPath_];

    v52 = OUTLINED_FUNCTION_43_9();
    LODWORD(v53) = 1047233823;
    [v52 setShadowOpacity_];

    v54 = OUTLINED_FUNCTION_43_9();
    [v54 setShadowOffset_];

    v55 = OUTLINED_FUNCTION_43_9();
    [v55 setShadowRadius_];
  }

  else
  {
    v56 = [v1 layer];
    [v56 setShadowPath_];

    v55 = [v1 layer];
    [v55 setShadowOpacity_];
  }

  OUTLINED_FUNCTION_21_29();
  OUTLINED_FUNCTION_32_16();
  [v57 v58];
  sub_24E2797E4(v85);
  OUTLINED_FUNCTION_6_38();
  v59 = v82;
  OUTLINED_FUNCTION_32_16();
  AchievementCardLayout.placeChildren(relativeTo:in:)();
  (*(*&v83 + 8))(v59, COERCE_CGFLOAT(*&v84));
  v60 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel];
  [v60 frame];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v31;
  v69 = v68;
  v70 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel];
  [v70 frame];
  v83 = v72;
  v84 = v71;
  v74 = v73;
  v76 = v75;
  v87.origin.x = v62;
  v87.origin.y = v64;
  v87.size.width = v66;
  v87.size.height = v69;
  MaxY = CGRectGetMaxY(v87);
  v88.origin.x = OUTLINED_FUNCTION_6_38();
  v88.size.width = v67;
  v88.size.height = v33;
  if (CGRectGetMaxY(v88) < MaxY)
  {
    [v60 frame];
    [v60 frame];
    [v60 setFrame_];
  }

  v89.origin.y = v83;
  v89.origin.x = v84;
  v89.size.width = v74;
  v89.size.height = v76;
  v78 = CGRectGetMaxY(v89);
  v90.origin.x = OUTLINED_FUNCTION_6_38();
  v90.size.width = v67;
  v90.size.height = v33;
  [v70 setHidden_];
  sub_24E27B5DC(v85);
}

void sub_24E2797E4(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_metrics;
  swift_beginAccess();
  sub_24DF89DB4(v1 + v3, v16);
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_badge);
  v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel);
  v6 = type metadata accessor for DynamicTypeLabel();
  v7 = MEMORY[0x277D22A68];
  a1[8] = v6;
  a1[9] = v7;
  a1[5] = v5;
  v8 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel);
  a1[13] = v6;
  a1[14] = v7;
  a1[10] = v8;
  v9 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_friendsWhoAchievedThis);
  v10 = type metadata accessor for OverlappingPlayersPhotoView();
  v11 = MEMORY[0x277D22A58];
  a1[18] = v10;
  a1[19] = v11;
  a1[15] = v9;
  sub_24DF89DB4(v16, (a1 + 20));
  type metadata accessor for AchievementBadge();
  v12 = v4;
  v13 = v5;
  v14 = v8;
  v15 = v9;
  sub_24E3440B8();
  sub_24DF89DEC(v16);
}

CGSize __swiftcall AchievementCard.sizeThatFits(_:)(CGSize a1)
{
  sub_24E2797E4(v8);
  sub_24E27B694();
  sub_24E3440D8();
  v2 = v1;
  v4 = v3;
  sub_24E27B5DC(v8);
  v5 = v2;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

double AchievementCard.measurements(fitting:in:)()
{
  swift_getObjectType();

  return sub_24E27B6E8();
}

uint64_t sub_24E279CE4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  OUTLINED_FUNCTION_5_16();
  v4 = type metadata accessor for Achievement();
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    return sub_24DF8F3A8(v3 + *(v4 + 32), a1, &unk_27F1E5890);
  }

  v5 = sub_24E343368();
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
}

uint64_t AchievementCard.tapHandler.getter()
{
  OUTLINED_FUNCTION_3_31();
  v0 = OUTLINED_FUNCTION_1_19();
  sub_24DE56C38(v0);
  return OUTLINED_FUNCTION_1_19();
}

uint64_t sub_24E279E0C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24DFA0D30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24DE56C38(v4);
}

uint64_t sub_24E279EAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DFA0D28;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1);
  return AchievementCard.tapHandler.setter(v4, v3);
}

uint64_t AchievementCard.tapHandler.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37_9();
  v5 = *v2;
  *v2 = a1;
  v2[1] = a2;
  sub_24DE56C38(a1);
  sub_24DE73FA0(v5);
  sub_24E279FB4();
  return sub_24DE73FA0(a1);
}

void sub_24E279FB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapHandler;
  swift_beginAccess();
  v4 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapGestureRecognizer;
  v5 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapGestureRecognizer];
  if (*&v1[v3])
  {
    if (v5)
    {
      return;
    }

    v12[3] = ObjectType;
    v12[0] = v1;
    v6 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v7 = v1;
    v8 = sub_24E2BE570(v12, sel_didTap);
    [v8 setNumberOfTapsRequired_];
    v9 = *&v1[v4];
    *&v1[v4] = v8;
    v10 = v8;

    [v7 addGestureRecognizer_];
    [v7 setUserInteractionEnabled_];
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v10 = v5;
    [v1 removeGestureRecognizer_];
    v11 = *&v1[v4];
    *&v1[v4] = 0;

    [v1 setUserInteractionEnabled_];
  }
}

uint64_t AchievementCard.tapHandler.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  OUTLINED_FUNCTION_9_1();
  return OUTLINED_FUNCTION_30_4();
}

uint64_t sub_24E27A15C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_24E27A1A0()
{
  result = OUTLINED_FUNCTION_3_31();
  v2 = *v0;
  if (*v0)
  {

    v2(v3);
    return sub_24DE73FA0(v2);
  }

  return result;
}

id AchievementCard.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

JUMeasurements __swiftcall AchievementCard.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  v4 = AchievementCard.sizeThatFits(_:)(toFit);
  height = v4.height;
  width = v4.width;
  v5 = 0.0;
  v6 = v4.height;
  result.var3 = v5;
  result.var2 = v6;
  result.var1 = height;
  result.var0 = width;
  return result;
}

uint64_t sub_24E27A3F8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E08452C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24E27A474(v6);
  return sub_24E348A58();
}

void sub_24E27A474(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_24E348B98();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_24E154E18(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_24E27A790(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_24E27A554(0, v3, 1, a1);
  }
}

void sub_24E27A554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_24E343368();
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v34 = v14;
      v35 = a3;
      v16 = *(v39 + 8 * a3);
      v33 = v15;
      v17 = v15;
      do
      {
        v18 = *v14;
        v19 = v16;
        v20 = v18;
        v21 = [v19 timestamp];
        if (!v21)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v22 = v21;
        sub_24E343328();

        v23 = [v20 timestamp];
        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = v23;
        v25 = v37;
        sub_24E343328();

        v40 = sub_24E3432F8();
        v26 = v17;
        v27 = *v36;
        v28 = v25;
        v29 = v38;
        (*v36)(v28, v38);
        v27(v12, v29);

        if ((v40 & 1) == 0)
        {
          break;
        }

        if (!v39)
        {
          goto LABEL_13;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
      }

      while (v26 != -1);
      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

void sub_24E27A790(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v134 = a1;
  v148 = sub_24E343368();
  MEMORY[0x28223BE20](v148);
  v145 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v131 - v8;
  MEMORY[0x28223BE20](v10);
  v138 = &v131 - v11;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v133 = &v131 - v14;
  MEMORY[0x28223BE20](v15);
  v142 = a3;
  v19 = a3[1];
  if (v19 >= 1)
  {
    v131 = a4;
    v132 = &v131 - v17;
    v137 = v18;
    v20 = 0;
    v147 = (v16 + 8);
    v21 = MEMORY[0x277D84F90];
    v22 = &selRef_setRequiresValidation_;
    while (1)
    {
      v23 = v20;
      v24 = v20 + 1;
      v135 = v23;
      if (v24 < v19)
      {
        v146 = v19;
        v25 = *v142;
        v144 = v24;
        v26 = *(v25 + 8 * v23);
        v27 = *(v25 + 8 * v24);
        v28 = v26;
        v29 = [v27 v22[459]];
        if (!v29)
        {
          goto LABEL_140;
        }

        v30 = v29;
        v31 = v23;
        v149 = v27;
        v32 = v132;
        sub_24E343328();

        v33 = [v28 v22[459]];
        if (!v33)
        {
          goto LABEL_141;
        }

        v34 = v33;
        v35 = v133;
        sub_24E343328();

        LODWORD(v141) = sub_24E3432F8();
        v36 = *v147;
        v37 = v35;
        v38 = v148;
        (*v147)(v37, v148);
        v139 = v36;
        (v36)(v32, v38);

        v136 = 8 * v31;
        a4 = v25 + 8 * v31 + 16;
        v39 = (v31 + 2);
        v24 = v144;
        v22 = &selRef_setRequiresValidation_;
        v40 = v146;
        v140 = v21;
        while (1)
        {
          v41 = v39;
          if (v24 + 1 >= v40)
          {
            break;
          }

          v144 = v24;
          v42 = *(a4 - 8);
          v43 = *a4;
          v44 = v42;
          v45 = [v43 v22[459]];
          if (!v45)
          {
            goto LABEL_135;
          }

          v46 = v45;
          v149 = v41;
          v47 = v137;
          sub_24E343328();

          v48 = [v44 v22[459]];
          if (!v48)
          {
            goto LABEL_134;
          }

          v49 = v48;
          v50 = v138;
          sub_24E343328();

          LODWORD(v49) = sub_24E3432F8() & 1;
          v51 = v50;
          v52 = v148;
          v53 = v139;
          (v139)(v51, v148);
          v53(v47, v52);

          a4 += 8;
          v24 = v144 + 1;
          v41 = v149;
          v39 = v149 + 1;
          v22 = &selRef_setRequiresValidation_;
          v21 = v140;
          v40 = v146;
          if ((v141 & 1) != v49)
          {
            goto LABEL_13;
          }
        }

        v24 = v40;
LABEL_13:
        if (v141)
        {
          v54 = v135;
          if (v24 < v135)
          {
            goto LABEL_127;
          }

          if (v135 < v24)
          {
            if (v40 >= v41)
            {
              v55 = v41;
            }

            else
            {
              v55 = v40;
            }

            v56 = 8 * v55 - 8;
            v57 = v24;
            v58 = v136;
            do
            {
              if (v54 != --v57)
              {
                v59 = *v142;
                if (!*v142)
                {
                  goto LABEL_138;
                }

                v60 = *(v59 + v58);
                *(v59 + v58) = *(v59 + v56);
                *(v59 + v56) = v60;
              }

              ++v54;
              v56 -= 8;
              v58 += 8;
            }

            while (v54 < v57);
          }
        }
      }

      v61 = v142[1];
      if (v24 < v61)
      {
        if (__OFSUB__(v24, v135))
        {
          goto LABEL_126;
        }

        if (v24 - v135 < v131)
        {
          v62 = v135 + v131;
          if (__OFADD__(v135, v131))
          {
            goto LABEL_128;
          }

          if (v62 >= v61)
          {
            v62 = v142[1];
          }

          if (v62 >= v135)
          {
            if (v24 == v62)
            {
              goto LABEL_43;
            }

            v140 = v21;
            v146 = *v142;
            v63 = v146 + 8 * v24 - 8;
            v64 = (v135 - v24);
            v136 = v62;
LABEL_33:
            v144 = v24;
            v65 = *(v146 + 8 * v24);
            v139 = v64;
            v66 = v64;
            v141 = v63;
            while (1)
            {
              v67 = *v63;
              v68 = v65;
              v69 = v67;
              v70 = [v68 v22[459]];
              if (!v70)
              {
                goto LABEL_132;
              }

              v71 = v70;
              sub_24E343328();

              v72 = [v69 v22[459]];
              if (!v72)
              {
                break;
              }

              v73 = v72;
              v149 = v68;
              a4 = v66;
              v74 = v145;
              sub_24E343328();

              LOBYTE(v73) = sub_24E3432F8();
              v75 = *v147;
              v76 = v74;
              v77 = v148;
              (*v147)(v76, v148);
              v75(v9, v77);

              if ((v73 & 1) == 0)
              {
                v22 = &selRef_setRequiresValidation_;
LABEL_41:
                v24 = v144 + 1;
                v63 = v141 + 8;
                v64 = v139 - 1;
                if (v144 + 1 == v136)
                {
                  v24 = v136;
                  v21 = v140;
                  goto LABEL_43;
                }

                goto LABEL_33;
              }

              if (!v146)
              {
                goto LABEL_133;
              }

              v78 = *v63;
              v65 = *(v63 + 8);
              *v63 = v65;
              *(v63 + 8) = v78;
              v63 -= 8;
              ++v66;
              v22 = &selRef_setRequiresValidation_;
              if (a4 == -1)
              {
                goto LABEL_41;
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
            goto LABEL_142;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          v21 = sub_24E081A20(v21);
          goto LABEL_97;
        }
      }

LABEL_43:
      if (v24 < v135)
      {
        goto LABEL_125;
      }

      v144 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076FA4(0, *(v21 + 16) + 1, 1, v21);
        v21 = v121;
      }

      v80 = *(v21 + 16);
      v79 = *(v21 + 24);
      a4 = v80 + 1;
      v81 = v144;
      if (v80 >= v79 >> 1)
      {
        sub_24E076FA4(v79 > 1, v80 + 1, 1, v21);
        v81 = v144;
        v21 = v122;
      }

      *(v21 + 16) = a4;
      v82 = v21 + 32;
      v83 = (v21 + 32 + 16 * v80);
      *v83 = v135;
      v83[1] = v81;
      v149 = *v134;
      if (!v149)
      {
        goto LABEL_139;
      }

      if (v80)
      {
        break;
      }

LABEL_92:
      v19 = v142[1];
      v20 = v144;
      if (v144 >= v19)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      v84 = a4 - 1;
      v85 = (v82 + 16 * (a4 - 1));
      v86 = (v21 + 16 * a4);
      if (a4 >= 4)
      {
        break;
      }

      if (a4 == 3)
      {
        v87 = *(v21 + 32);
        v88 = *(v21 + 40);
        v97 = __OFSUB__(v88, v87);
        v89 = v88 - v87;
        v90 = v97;
LABEL_63:
        if (v90)
        {
          goto LABEL_112;
        }

        v102 = *v86;
        v101 = v86[1];
        v103 = __OFSUB__(v101, v102);
        v104 = v101 - v102;
        v105 = v103;
        if (v103)
        {
          goto LABEL_115;
        }

        v106 = v85[1];
        v107 = v106 - *v85;
        if (__OFSUB__(v106, *v85))
        {
          goto LABEL_118;
        }

        if (__OFADD__(v104, v107))
        {
          goto LABEL_120;
        }

        if (v104 + v107 >= v89)
        {
          if (v89 < v107)
          {
            v84 = a4 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (a4 < 2)
      {
        goto LABEL_114;
      }

      v109 = *v86;
      v108 = v86[1];
      v97 = __OFSUB__(v108, v109);
      v104 = v108 - v109;
      v105 = v97;
LABEL_78:
      if (v105)
      {
        goto LABEL_117;
      }

      v111 = *v85;
      v110 = v85[1];
      v97 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if (v97)
      {
        goto LABEL_119;
      }

      if (v112 < v104)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v84 - 1 >= a4)
      {
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

      if (!*v142)
      {
        goto LABEL_136;
      }

      v116 = v21;
      a4 = v82 + 16 * (v84 - 1);
      v117 = *a4;
      v118 = v82 + 16 * v84;
      v21 = *(v118 + 8);
      v119 = v143;
      sub_24E27B114((*v142 + 8 * *a4), (*v142 + 8 * *v118), (*v142 + 8 * v21), v149);
      v143 = v119;
      if (v119)
      {
        goto LABEL_105;
      }

      if (v21 < v117)
      {
        goto LABEL_107;
      }

      v120 = *(v116 + 16);
      if (v84 > v120)
      {
        goto LABEL_108;
      }

      *a4 = v117;
      *(a4 + 8) = v21;
      if (v84 >= v120)
      {
        goto LABEL_109;
      }

      a4 = v120 - 1;
      sub_24E081A34((v118 + 16), v120 - 1 - v84, (v82 + 16 * v84));
      v21 = v116;
      *(v116 + 16) = v120 - 1;
      v22 = &selRef_setRequiresValidation_;
      if (v120 <= 2)
      {
        goto LABEL_92;
      }
    }

    v91 = v82 + 16 * a4;
    v92 = *(v91 - 64);
    v93 = *(v91 - 56);
    v97 = __OFSUB__(v93, v92);
    v94 = v93 - v92;
    if (v97)
    {
      goto LABEL_110;
    }

    v96 = *(v91 - 48);
    v95 = *(v91 - 40);
    v97 = __OFSUB__(v95, v96);
    v89 = v95 - v96;
    v90 = v97;
    if (v97)
    {
      goto LABEL_111;
    }

    v98 = v86[1];
    v99 = v98 - *v86;
    if (__OFSUB__(v98, *v86))
    {
      goto LABEL_113;
    }

    v97 = __OFADD__(v89, v99);
    v100 = v89 + v99;
    if (v97)
    {
      goto LABEL_116;
    }

    if (v100 >= v94)
    {
      v114 = *v85;
      v113 = v85[1];
      v97 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v97)
      {
        goto LABEL_124;
      }

      if (v89 < v115)
      {
        v84 = a4 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_95:
  a4 = *v134;
  if (!*v134)
  {
LABEL_142:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_97:
  v124 = (v21 + 16);
  v123 = *(v21 + 16);
  while (v123 >= 2)
  {
    if (!*v142)
    {
      goto LABEL_137;
    }

    v125 = v21;
    v21 += 16 * v123;
    v126 = *v21;
    v127 = &v124[2 * v123];
    v128 = *(v127 + 1);
    v129 = v143;
    sub_24E27B114((*v142 + 8 * *v21), (*v142 + 8 * *v127), (*v142 + 8 * v128), a4);
    v143 = v129;
    if (v129)
    {
      break;
    }

    if (v128 < v126)
    {
      goto LABEL_121;
    }

    if (v123 - 2 >= *v124)
    {
      goto LABEL_122;
    }

    *v21 = v126;
    *(v21 + 8) = v128;
    v130 = *v124 - v123;
    if (*v124 < v123)
    {
      goto LABEL_123;
    }

    v123 = *v124 - 1;
    sub_24E081A34(v127 + 16, v130, v127);
    *v124 = v123;
    v21 = v125;
  }

LABEL_105:
}

uint64_t sub_24E27B114(char *a1, char *a2, char *a3, char *a4)
{
  v63 = sub_24E343368();
  MEMORY[0x28223BE20](v63);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  MEMORY[0x28223BE20](v12);
  v59 = &v56 - v13;
  MEMORY[0x28223BE20](v14);
  i = (&v56 - v15);
  v16 = (a2 - a1) / 8;
  v62 = (v17 + 8);
  v18 = (a3 - a2) / 8;
  if (v16 < v18)
  {
    sub_24E130EB0(a1, (a2 - a1) / 8, a4);
    v19 = &a4[8 * v16];
    v20 = &selRef_setRequiresValidation_;
    v64 = v19;
    v65 = a3;
    while (1)
    {
      if (a4 >= v19 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v22 = a1;
      v66 = a2;
      v23 = *a2;
      v24 = *a4;
      v25 = v23;
      v26 = v24;
      result = [v25 v20[459]];
      if (!result)
      {
        __break(1u);
        goto LABEL_39;
      }

      v28 = result;
      v29 = a4;
      v30 = i;
      sub_24E343328();

      result = [v26 v20[459]];
      if (!result)
      {
        goto LABEL_40;
      }

      v31 = result;
      v32 = v59;
      sub_24E343328();

      LOBYTE(v31) = sub_24E3432F8();
      v33 = *v62;
      v34 = v32;
      v35 = v63;
      (*v62)(v34, v63);
      v33(v30, v35);

      if ((v31 & 1) == 0)
      {
        break;
      }

      v36 = v66;
      a2 = v66 + 8;
      v37 = v22;
      if (v22 != v66)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v37 + 8;
      v19 = v64;
      a3 = v65;
      v20 = &selRef_setRequiresValidation_;
    }

    v36 = a4;
    a4 += 8;
    v37 = v22;
    a2 = v66;
    if (v22 == v29)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v37 = *v36;
    goto LABEL_14;
  }

  sub_24E130EB0(a2, (a3 - a2) / 8, a4);
  v19 = &a4[8 * v18];
  v38 = &selRef_setRequiresValidation_;
  v57 = a4;
  v58 = a1;
LABEL_16:
  v39 = (a2 - 8);
  v40 = (a3 - 8);
  v66 = a2;
  for (i = (a2 - 8); v19 > a4 && a2 > a1; v39 = i)
  {
    v65 = v40;
    v42 = v19 - 8;
    v43 = *v39;
    v44 = *(v19 - 1);
    v45 = v43;
    result = [v44 v38[459]];
    if (!result)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v46 = result;
    v64 = v19;
    sub_24E343328();

    result = [v45 v38[459]];
    if (!result)
    {
      goto LABEL_41;
    }

    v47 = result;
    v48 = v60;
    sub_24E343328();

    LOBYTE(v47) = sub_24E3432F8();
    v49 = *v62;
    v50 = v48;
    v51 = v63;
    (*v62)(v50, v63);
    v49(v11, v51);

    if (v47)
    {
      v19 = v64;
      a3 = v65;
      v53 = i;
      a2 = i;
      a4 = v57;
      a1 = v58;
      v38 = &selRef_setRequiresValidation_;
      if (v65 + 1 != v66)
      {
        *v65 = *i;
        a2 = v53;
      }

      goto LABEL_16;
    }

    v52 = v65;
    a4 = v57;
    if (v64 != (v65 + 1))
    {
      *v65 = *v42;
    }

    v40 = v52 - 1;
    v19 = v42;
    a2 = v66;
    a1 = v58;
    v38 = &selRef_setRequiresValidation_;
  }

LABEL_31:
  v54 = (v19 - a4) / 8;
  if (a2 != a4 || a2 >= &a4[8 * v54])
  {
    memmove(a2, a4, 8 * v54);
  }

  return 1;
}

void sub_24E27B56C(uint64_t a1, void *a2)
{
  v3 = sub_24E347EE8();

  [a2 setColors_];
}

uint64_t sub_24E27B630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Achievement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E27B694()
{
  result = qword_27F1E9540;
  if (!qword_27F1E9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9540);
  }

  return result;
}

double sub_24E27B6E8()
{
  sub_24E2797E4(v3);
  sub_24E27B694();
  sub_24E3440D8();
  v1 = v0;
  sub_24E27B5DC(v3);
  return v1;
}

uint64_t type metadata accessor for AchievementCard()
{
  result = qword_280BE09D0;
  if (!qword_280BE09D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E27B7CC()
{
  sub_24E27B8F8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E27B8F8()
{
  if (!qword_280BE0A68)
  {
    type metadata accessor for Achievement();
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE0A68);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_164()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_128()
{

  return swift_once();
}

uint64_t *OUTLINED_FUNCTION_18_38@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 296) = v1;
  *(v2 - 288) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 320));
}

uint64_t OUTLINED_FUNCTION_19_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_17()
{

  return swift_once();
}

void OUTLINED_FUNCTION_28_18()
{
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;
  *(v2 - 160) = 0x4024000000000000;
}

uint64_t OUTLINED_FUNCTION_35_12(__n128 a1)
{
  v1[2] = a1;

  return sub_24DF88BF0((v2 - 160), &v1[3]);
}

uint64_t *OUTLINED_FUNCTION_36_12@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 280) = v1;
  *(v2 - 272) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 304));
}

uint64_t OUTLINED_FUNCTION_37_9()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_39_8()
{

  return [v1 (v0 + 2040)];
}

__n128 OUTLINED_FUNCTION_40_10@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 320) = *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_9(__int128 *a1)
{
  result = sub_24DF88BF0(a1, v1 + 224);
  *(v1 + 264) = 0x4028000000000000;
  return result;
}

id OUTLINED_FUNCTION_43_9()
{

  return [v0 (v1 + 2168)];
}

uint64_t OUTLINED_FUNCTION_44_8()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_24E0AED24(v0);
}

uint64_t sub_24E27BC88(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v110 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v109 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v13 - v12);
  v108 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v107 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v17 - v16);
  v114 = sub_24E344658();
  OUTLINED_FUNCTION_0_14();
  v103 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v21 - v20);
  v115 = sub_24E3445E8();
  OUTLINED_FUNCTION_0_14();
  v118 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v25 - v24);
  v100 = sub_24E344648();
  OUTLINED_FUNCTION_0_14();
  v98 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v29 - v28);
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_1();
  v131.origin.x = a1;
  v131.origin.y = a2;
  v131.size.width = a3;
  v131.size.height = a4;
  CGRectGetMinX(v131);
  OUTLINED_FUNCTION_8_8((v4 + 424));
  sub_24E3440D8();
  OUTLINED_FUNCTION_15_37(v4);
  OUTLINED_FUNCTION_4_93();
  sub_24E344198();
  v33 = *(v31 + 8);
  v34 = OUTLINED_FUNCTION_31_9();
  v33(v34);
  v132.origin.x = a1;
  v132.origin.y = a2;
  v132.size.width = a3;
  v132.size.height = a4;
  CGRectGetMidY(v132);
  OUTLINED_FUNCTION_8_8((v4 + 424));
  sub_24E348508();
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_15_37((v4 + 112));
  OUTLINED_FUNCTION_4_93();
  sub_24E344198();
  v35 = OUTLINED_FUNCTION_6_85();
  v33(v35);
  v133.size.width = a3;
  v37 = *(v4 + 80);
  v36 = *(v4 + 88);
  v120 = a1;
  v133.origin.x = a1;
  v133.origin.y = a2;
  width = v133.size.width;
  v133.size.height = a4;
  MaxX = CGRectGetMaxX(v133);
  v40 = *(v4 + 416);
  v41 = MaxX - v37 - v40;
  v134.origin.x = v120;
  v134.origin.y = a2;
  v134.size.width = width;
  v134.size.height = a4;
  v42 = CGRectGetMidY(v134) - v36 * 0.5;
  v135.origin.x = v41;
  v135.origin.y = v42;
  v135.size.width = v37;
  v135.size.height = v36;
  v112 = v40;
  v43 = v40 + CGRectGetWidth(v135);
  OUTLINED_FUNCTION_15_37((v4 + 352));
  OUTLINED_FUNCTION_4_93();
  sub_24E344198();
  v44 = OUTLINED_FUNCTION_31_9();
  v33(v44);
  v45 = a4;
  OUTLINED_FUNCTION_16_39();
  OUTLINED_FUNCTION_8_8((v4 + 704));
  OUTLINED_FUNCTION_19_30();
  v46 = width;
  v47 = v45;
  v113 = v37;
  sub_24E348508();
  OUTLINED_FUNCTION_25_22();
  sub_24DF8F3A8(v4 + 464, &v125, &qword_27F1DEE30);
  v116 = v45;
  v111 = v46;
  if (*(&v126 + 1))
  {
    sub_24DE56CE8(&v125, &v128);
    sub_24DF8F3A8(v4 + 664, &v122, &qword_27F1DF0C0);
    if (v123)
    {
      sub_24DE56CE8(&v122, &v125);
      OUTLINED_FUNCTION_8_8(&v125);
      OUTLINED_FUNCTION_17_37();
      v49 = v48;
      OUTLINED_FUNCTION_14_40();
      OUTLINED_FUNCTION_23_28();
      v50 = CGRectGetMaxX(v136);
      OUTLINED_FUNCTION_20_28(v50);
      *&v122 = *(v4 + 408);
      v51 = v122;
      sub_24E343F98();
      OUTLINED_FUNCTION_4_93();
      sub_24E344198();
      v52 = OUTLINED_FUNCTION_31_9();
      v33(v52);
      OUTLINED_FUNCTION_23_28();
      v43 = v46;
      CGRectGetMidY(v137);
      *&v122 = v51;
      sub_24E343F98();
      OUTLINED_FUNCTION_4_93();
      sub_24E344198();
      v53 = OUTLINED_FUNCTION_6_85();
      v33(v53);
      sub_24DF8F3A8(v4 + 664, &v122, &qword_27F1DF0C0);
      if (v123)
      {
        v54 = OUTLINED_FUNCTION_8_75();
        OUTLINED_FUNCTION_12_45(v54 - v49);
        OUTLINED_FUNCTION_8_8(&v122);
        OUTLINED_FUNCTION_32_16();
        sub_24E348508();
        sub_24E344088();
        __swift_destroy_boxed_opaque_existential_1(&v122);
      }

      else
      {
        sub_24DF8F34C(&v122, &qword_27F1DF0C0);
      }

      __swift_destroy_boxed_opaque_existential_1(&v125);
      v47 = v45;
      OUTLINED_FUNCTION_16_39();
    }

    else
    {
      sub_24DF8F34C(&v122, &qword_27F1DF0C0);
    }

    OUTLINED_FUNCTION_8_8(&v128);
    OUTLINED_FUNCTION_17_37();
    v56 = v55;
    OUTLINED_FUNCTION_14_40();
    OUTLINED_FUNCTION_23_28();
    v57 = CGRectGetMaxX(v138);
    OUTLINED_FUNCTION_20_28(v57);
    v58 = *(v4 + 408);
    *&v125 = v58;
    sub_24E343F98();
    OUTLINED_FUNCTION_10_58();
    sub_24E344198();
    v59 = v43;
    v43 = v46;
    v61 = v60;
    v62 = OUTLINED_FUNCTION_31_9();
    v33(v62);
    OUTLINED_FUNCTION_23_28();
    CGRectGetMidY(v139);
    sub_24DF8F3A8(v4 + 664, &v122, &qword_27F1DF0C0);
    if (v123)
    {
      sub_24DE56CE8(&v122, &v125);
      OUTLINED_FUNCTION_32_16();
      v63 = CGRectGetMaxX(v140) - v113 - v56 + -4.0;
      __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
      sub_24E344078();
      v64 = v46;
      v65 = v47;
      v66 = v63 - CGRectGetWidth(v141) - v112;
      *&v122 = v58;
      sub_24E343F98();
      OUTLINED_FUNCTION_10_58();
      sub_24E344198();
      v67 = OUTLINED_FUNCTION_6_85();
      v33(v67);
      OUTLINED_FUNCTION_20_28(v66 - v63);
      v142.origin.x = v59;
      v142.origin.y = v43;
      v142.size.width = v64;
      v142.size.height = v65;
      CGRectGetMidY(v142);
      __swift_destroy_boxed_opaque_existential_1(&v125);
    }

    else
    {
      v68 = OUTLINED_FUNCTION_8_75();
      v69 = OUTLINED_FUNCTION_12_45(v68 - v56);
      OUTLINED_FUNCTION_20_28(v69 - v61);
      sub_24DF8F34C(&v122, &qword_27F1DF0C0);
    }

    *&v125 = v58;
    sub_24E343F98();
    OUTLINED_FUNCTION_10_58();
    sub_24E344198();
    v70 = OUTLINED_FUNCTION_6_85();
    v33(v70);
    sub_24DF8F3A8(v4 + 464, &v125, &qword_27F1DEE30);
    if (*(&v126 + 1))
    {
      OUTLINED_FUNCTION_8_8(&v125);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_19_30();
      v46 = v111;
      sub_24E348508();
      OUTLINED_FUNCTION_25_22();
      __swift_destroy_boxed_opaque_existential_1(&v125);
    }

    else
    {
      sub_24DF8F34C(&v125, &qword_27F1DEE30);
      v46 = v111;
      OUTLINED_FUNCTION_16_39();
    }

    OUTLINED_FUNCTION_21_30();
    __swift_destroy_boxed_opaque_existential_1(&v128);
    v47 = v116;
  }

  else
  {
    sub_24DF8F34C(&v125, &qword_27F1DEE30);
    OUTLINED_FUNCTION_21_30();
  }

  sub_24DF8F3A8(v4 + 504, &v128, &qword_27F1DEE30);
  v71 = v129;
  sub_24DF8F34C(&v128, &qword_27F1DEE30);
  if (v71)
  {
    v72 = *(v4 + 96);
    OUTLINED_FUNCTION_32_16();
    v73 = CGRectGetMaxX(v143);
    OUTLINED_FUNCTION_20_28(v73);
    v128 = *(v4 + 408);
    v74 = v128;
    sub_24E343F98();
    OUTLINED_FUNCTION_4_93();
    sub_24E344198();
    v75 = OUTLINED_FUNCTION_31_9();
    v33(v75);
    OUTLINED_FUNCTION_32_16();
    CGRectGetMidY(v144);
    v128 = v74;
    sub_24E343F98();
    OUTLINED_FUNCTION_4_93();
    sub_24E344198();
    v76 = OUTLINED_FUNCTION_6_85();
    v33(v76);
    sub_24DF8F3A8(v4 + 504, &v128, &qword_27F1DEE30);
    if (v129)
    {
      v77 = OUTLINED_FUNCTION_8_75();
      OUTLINED_FUNCTION_12_45(v77 - v72);
      OUTLINED_FUNCTION_8_8(&v128);
      OUTLINED_FUNCTION_32_16();
      sub_24E348508();
      OUTLINED_FUNCTION_25_22();
      __swift_destroy_boxed_opaque_existential_1(&v128);
    }

    else
    {
      sub_24DF8F34C(&v128, &qword_27F1DEE30);
    }

    OUTLINED_FUNCTION_21_30();
  }

  sub_24DF8F3A8(v4 + 624, &v125, &qword_27F1DF0C0);
  if (*(&v126 + 1))
  {
    sub_24DE56CE8(&v125, &v128);
    OUTLINED_FUNCTION_8_8(&v128);
    OUTLINED_FUNCTION_17_37();
    OUTLINED_FUNCTION_16_39();
    OUTLINED_FUNCTION_14_40();
    v145.size.width = v46;
    v145.size.height = v47;
    v78 = CGRectGetMaxX(v145);
    v79 = *(v4 + 408);
    v146.origin.x = v43;
    v146.origin.y = v46;
    v146.size.width = v46;
    v146.size.height = v47;
    CGRectGetMidY(v146);
    *&v125 = v79;
    sub_24E343F98();
    OUTLINED_FUNCTION_10_58();
    sub_24E344198();
    v80 = OUTLINED_FUNCTION_6_85();
    v33(v80);
    sub_24DF8F3A8(v4 + 624, &v125, &qword_27F1DF0C0);
    if (*(&v126 + 1))
    {
      OUTLINED_FUNCTION_12_45(v78 - v113);
      OUTLINED_FUNCTION_8_8(&v125);
      OUTLINED_FUNCTION_19_30();
      OUTLINED_FUNCTION_32_16();
      sub_24E348508();
      sub_24E344088();
      __swift_destroy_boxed_opaque_existential_1(&v125);
    }

    else
    {
      sub_24DF8F34C(&v125, &qword_27F1DF0C0);
    }

    OUTLINED_FUNCTION_21_30();
    __swift_destroy_boxed_opaque_existential_1(&v128);
    v47 = v116;
    v81 = v111;
    OUTLINED_FUNCTION_16_39();
  }

  else
  {
    sub_24DF8F34C(&v125, &qword_27F1DF0C0);
    OUTLINED_FUNCTION_16_39();
    v81 = v46;
  }

  *&v122 = MEMORY[0x277D84F90];
  v82 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
  sub_24E344688();
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_24E36A270;
  v83 = *(v4 + 568);
  v84 = *(v4 + 576);
  OUTLINED_FUNCTION_8_8((v4 + 544));
  v129 = v83;
  v130 = *(v84 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v128);
  OUTLINED_FUNCTION_22_0();
  (*(v85 + 16))();
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v124 = v82;
  sub_24DF8A8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  sub_24DF8A8FC();
  sub_24E3487E8();
  v96 = *MEMORY[0x277D227C8];
  v95 = *(v118 + 104);
  v95();
  v93 = *MEMORY[0x277D227F0];
  v94 = *(v103 + 104);
  v94();
  sub_24E344678();
  v104 = *(v103 + 8);
  v104(v102, v114);
  v119 = (v118 + 8);
  v92 = *v119;
  (*v119)(v101, v115);
  v99 = *(v98 + 8);
  v99(v97, v100);
  sub_24DF8F34C(&v125, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(&v128);
  v86 = v4;
  v87 = *(v4 + 608);
  v88 = *(v5 + 616);
  v89 = v86;
  __swift_project_boxed_opaque_existential_1((v86 + 584), v87);
  v129 = v87;
  v130 = *(v88 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v128);
  OUTLINED_FUNCTION_22_0();
  (*(v90 + 16))();
  sub_24DF89628(v89 + 312, &v125);
  v124 = MEMORY[0x277D84F90];
  sub_24E3487E8();
  (v95)(v101, v96, v115);
  (v94)(v102, v93, v114);
  sub_24E344678();
  v104(v102, v114);
  v92(v101, v115);
  v99(v97, v100);
  sub_24DF8F34C(&v125, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(&v128);
  sub_24E26C574(v117);
  sub_24E344668();
  OUTLINED_FUNCTION_14_40();
  v147.size.width = v81;
  v147.size.height = v47;
  CGRectGetMinY(v147);
  v148.origin.x = OUTLINED_FUNCTION_13_50();
  CGRectGetHeight(v148);
  OUTLINED_FUNCTION_13_50();
  sub_24E348508();
  sub_24E344608();
  (*(v109 + 8))(v106, v110);
  OUTLINED_FUNCTION_13_50();
  sub_24E343FD8();
  return (*(v107 + 8))(v105, v108);
}

double sub_24E27D040(void *a1, double a2)
{
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_0_16(a1 + 19);
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_11_45();
  v7(v8);
  OUTLINED_FUNCTION_0_16(a1 + 24);
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v9 = OUTLINED_FUNCTION_11_45();
  v7(v9);
  __swift_project_boxed_opaque_existential_1(a1 + 39, a1[42]);
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v10 = OUTLINED_FUNCTION_11_45();
  v7(v10);
  return a2;
}

double sub_24E27D1A8(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_24E27D228(a2, a1, v2);
}

double sub_24E27D228(double a1, uint64_t a2, void *a3)
{
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  sub_24E343F98();
  sub_24E344198();
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_11_45();
  v8(v9);
  OUTLINED_FUNCTION_0_16(a3 + 5);
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v10 = OUTLINED_FUNCTION_11_45();
  v8(v10);
  OUTLINED_FUNCTION_0_16(a3);
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v11 = OUTLINED_FUNCTION_11_45();
  v8(v11);
  OUTLINED_FUNCTION_0_16(a3 + 24);
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v12 = OUTLINED_FUNCTION_11_45();
  v8(v12);
  OUTLINED_FUNCTION_0_16(a3 + 39);
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v13 = OUTLINED_FUNCTION_11_45();
  v8(v13);
  __swift_project_boxed_opaque_existential_1(a3 + 19, a3[22]);
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v14 = OUTLINED_FUNCTION_11_45();
  v8(v14);
  return a1;
}

uint64_t sub_24E27D440(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 744))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E27D480(uint64_t result, int a2, int a3)
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
    *(result + 712) = 0u;
    *(result + 728) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
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
      *(result + 744) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 744) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E27D598(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 424))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E27D5D8(uint64_t result, int a2, int a3)
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
    *(result + 408) = 0u;
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
      *(result + 424) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 424) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E27D698()
{
  result = qword_27F1E9548;
  if (!qword_27F1E9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9548);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_37(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_24E2548A0(v1, v2);
}

uint64_t OUTLINED_FUNCTION_17_37()
{

  return sub_24E3440D8();
}

uint64_t OUTLINED_FUNCTION_24_18()
{

  return sub_24E2548A0(v0, v1);
}

uint64_t OUTLINED_FUNCTION_25_22()
{

  return sub_24E344088();
}

uint64_t sub_24E27D878(uint64_t a1, uint64_t a2)
{
  sub_24DF88A8C(0, &qword_27F1E2630);
  if ((sub_24E348628() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v5 = OUTLINED_FUNCTION_15_38(v4[6]);
  if ((MEMORY[0x25303ACA0](v5) & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_15_38(v4[7]);
  if ((MEMORY[0x25303B010](v6) & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_15_38(v4[8]);
  if ((MEMORY[0x25303B010](v7) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    if (*(a1 + 8) == *(a2 + 8) && v8 == v9)
    {
      return 1;
    }

    else
    {

      return sub_24E348C08();
    }
  }

  return result;
}

uint64_t sub_24E27D96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v6 = v5[7];
  v7 = sub_24E3444F8();
  v8 = MEMORY[0x277D22798];
  v19[3] = v7;
  v19[4] = MEMORY[0x277D22798];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  v10 = *(*(v7 - 8) + 16);
  v10(boxed_opaque_existential_1, v2 + v6, v7);
  v11 = v5[8];
  v18[3] = v7;
  v18[4] = v8;
  v12 = __swift_allocate_boxed_opaque_existential_1(v18);
  v10(v12, v2 + v11, v7);
  v13 = v5[9];
  v17[3] = v7;
  v17[4] = v8;
  v14 = __swift_allocate_boxed_opaque_existential_1(v17);
  v10(v14, v2 + v13, v7);
  sub_24DF89628(a1, v16);
  sub_24DF89628(v19, a2 + 40);
  sub_24DF89628(v18, a2 + 80);
  sub_24DF89628(v17, a2 + 120);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_24E344328();
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_24E27DADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9550);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9568);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  sub_24DF88A8C(0, &qword_27F1E2630);
  if ((sub_24E348628() & 1) == 0)
  {
    goto LABEL_37;
  }

  v17 = OUTLINED_FUNCTION_15_38(v4[6]);
  if ((MEMORY[0x25303ACA0](v17) & 1) == 0)
  {
    goto LABEL_37;
  }

  v18 = OUTLINED_FUNCTION_15_38(v4[7]);
  if ((MEMORY[0x25303B010](v18) & 1) == 0)
  {
    goto LABEL_37;
  }

  v19 = OUTLINED_FUNCTION_15_38(v4[8]);
  if ((MEMORY[0x25303B010](v19) & 1) == 0)
  {
    goto LABEL_37;
  }

  v20 = *(a1 + 16);
  v21 = *(a2 + 16);
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_37;
    }

    v22 = *(a1 + 8) == *(a2 + 8) && v20 == v21;
    if (!v22 && (sub_24E348C08() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v21)
  {
    goto LABEL_37;
  }

  v38 = type metadata accessor for TitleHeaderView.Style(0);
  v23 = *(v38 + 20);
  v24 = *(v13 + 48);
  sub_24E0E8958(a1 + v23, v16, &qword_27F1E9550);
  sub_24E0E8958(a2 + v23, &v16[v24], &qword_27F1E9550);
  OUTLINED_FUNCTION_32_17(v16);
  if (v22)
  {
    OUTLINED_FUNCTION_32_17(&v16[v24]);
    if (v22)
    {
      sub_24DF8BFF4(v16, &qword_27F1E9550);
      goto LABEL_24;
    }

LABEL_22:
    sub_24DF8BFF4(v16, &qword_27F1E9568);
    goto LABEL_37;
  }

  sub_24E0E8958(v16, v12, &qword_27F1E9550);
  OUTLINED_FUNCTION_32_17(&v16[v24]);
  if (v25)
  {
    OUTLINED_FUNCTION_0_165();
    sub_24E282A50(v12, v26);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_1_129();
  sub_24E282AA8(&v16[v24], v8);
  v27 = sub_24E27D878(v12, v8);
  sub_24E282A50(v8, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_24E282A50(v12, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_24DF8BFF4(v16, &qword_27F1E9550);
  if ((v27 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_24:
  v28 = v38;
  OUTLINED_FUNCTION_9_59();
  if (!v22)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_9_59();
  if (!v22)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_9_59();
  if (!v22)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_9_59();
  if (!v22)
  {
    goto LABEL_37;
  }

  v29 = *(v28 + 44);
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30)
  {
    if (v31)
    {
      sub_24DF88A8C(0, &qword_27F1E5FD0);
      v32 = v31;
      v33 = v30;
      v34 = sub_24E348628();

      if (v34)
      {
        goto LABEL_35;
      }
    }

LABEL_37:
    v35 = 0;
    return v35 & 1;
  }

  if (v31)
  {
    goto LABEL_37;
  }

LABEL_35:
  v35 = sub_24E348628();
  return v35 & 1;
}

uint64_t sub_24E27DE74()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 0.0;
  if (result)
  {
    v1 = 12.0;
  }

  qword_27F20B320 = *&v1;
  return result;
}

uint64_t sub_24E27DEA4()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 32.0;
  if (!result)
  {
    v1 = 24.0;
  }

  *&xmmword_27F20B330 = v1;
  *(&xmmword_27F20B330 + 1) = v1;
  return result;
}

void sub_24E27DEDC()
{
  OUTLINED_FUNCTION_44();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_9();
  *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel] = 0;
  sub_24E0AC29C(&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style]);
  *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView] = 0;
  *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView] = 0;
  *&v12 = OUTLINED_FUNCTION_11_31(OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessory);
  v13 = &v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorInset];
  v15 = *MEMORY[0x277D768C8];
  v16 = *(MEMORY[0x277D768C8] + 8);
  v17 = *(MEMORY[0x277D768C8] + 16);
  v18 = *(MEMORY[0x277D768C8] + 24);
  *v14 = *MEMORY[0x277D768C8];
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_allowsAccessibilityLayouts] = 1;
  v19 = &v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_avoidanceRegion];
  *v19 = v12;
  *(v19 + 1) = v12;
  v19[32] = 1;
  v20 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel] = OUTLINED_FUNCTION_4_50(v20, sel_initWithFrame_);
  *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorLineView] = OUTLINED_FUNCTION_4_50(objc_allocWithZone(MEMORY[0x277D75D18]), sel_initWithFrame_);
  v43.receiver = v0;
  v43.super_class = type metadata accessor for TitleHeaderView(0);
  v21 = objc_msgSendSuper2(&v43, sel_initWithFrame_, v9, v7, v5, v3);
  v22 = [v21 layer];
  [v22 setAllowsGroupOpacity_];

  [v21 setLayoutMargins_];
  [v21 setEdgesInsettingLayoutMarginsFromSafeArea_];

  v23 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorLineView;
  v24 = qword_27F1DE118;
  v25 = *&v21[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorLineView];
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for PlayerCardTheme();
  [v25 setBackgroundColor_];

  [v21 addSubview_];
  v27 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel;
  v28 = *&v21[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel];
  v29 = &v21[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style];
  OUTLINED_FUNCTION_5_16();
  [v28 setTextColor_];
  v30 = *&v21[v27];
  v31 = *(type metadata accessor for TitleHeaderView.TextConfiguration(0) + 24);
  v32 = sub_24E344158();
  OUTLINED_FUNCTION_5_2();
  (*(v33 + 16))(v1, &v29[v31], v32);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v32);
  v34 = v30;
  sub_24E0AED24(v1);

  v35 = *&v21[v27];
  v35[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_wantsFastBaselineMeasurement] = 1;
  v36 = v35;
  sub_24E0AFA60();

  v37 = [*&v21[v27] layer];
  if (*(v29 + 2))
  {

    v38 = sub_24E347CB8();
  }

  else
  {
    v38 = 0;
  }

  [v37 setCompositingFilter_];

  swift_unknownObjectRelease();
  v39 = *&v21[v27];
  sub_24E0AEE20(1);

  [v21 addSubview_];
  [*&v21[v27] setIsAccessibilityElement_];
  sub_24DFD8050(0xD000000000000033, 0x800000024E3AFEF0, *&v21[v27]);
  v40 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel;
  v41 = *&v21[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
  if (v41)
  {
    [v41 setIsAccessibilityElement_];
    v42 = *&v21[v40];
    if (v42)
    {
      sub_24DFD8050(0xD000000000000036, 0x800000024E3AFF30, v42);
    }
  }

  sub_24E27FF38();

  OUTLINED_FUNCTION_45();
}

void sub_24E27E364()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel) = 0;
  sub_24E0AC29C((v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style));
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView) = 0;
  *&v1 = OUTLINED_FUNCTION_11_31(OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessory);
  v2 = (v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorInset);
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_allowsAccessibilityLayouts) = 1;
  v5 = v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_avoidanceRegion;
  *v5 = v1;
  *(v5 + 16) = v1;
  *(v5 + 32) = 1;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E27E47C()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
  if (v1)
  {
    v2 = v1;
    sub_24E0AEE20(1);
    [v0 addSubview_];
  }
}

id sub_24E27E524(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style;
  swift_beginAccess();
  sub_24E282B00(v1 + v6, v5);
  LOBYTE(a1) = sub_24E27DADC(v5, a1);
  result = sub_24E282A50(v5, type metadata accessor for TitleHeaderView.Style);
  if ((a1 & 1) == 0)
  {
    return sub_24E27FF38();
  }

  return result;
}

uint64_t sub_24E27E608(uint64_t a1)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  v5 = OUTLINED_FUNCTION_4_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  v6 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style;
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_6_86();
  sub_24E282B00(v1 + v6, v2);
  swift_beginAccess();
  sub_24E282B58(a1, v1 + v6);
  swift_endAccess();
  sub_24E27E524(v2);
  sub_24E282A50(a1, type metadata accessor for TitleHeaderView.Style);
  return sub_24E282A50(v2, type metadata accessor for TitleHeaderView.Style);
}

void sub_24E27E748(void *a1)
{
  sub_24E27E7B0();
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView) = a1;
  v4 = a1;

  sub_24E27E84C();
}

void sub_24E27E7B0()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView;
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView))
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 removeTarget:v0 action:sel_didTapWithAccessoryView_ forControlEvents:0x2000];
    }

    v3 = *(v0 + v1);
    if (v3)
    {

      [v3 removeFromSuperview];
    }
  }
}

void sub_24E27E84C()
{
  v5 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView];
  if (v5)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v3 = v5;
      [v2 addTarget:v0 action:sel_didTapWithAccessoryView_ forControlEvents:0x2000];
    }

    else
    {
      v4 = v5;
    }

    [v0 addSubview_];
  }
}

void *sub_24E27E954()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView);
  v2 = v1;
  return v1;
}

void sub_24E27EA00(void *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  v7 = *(v3 + *a2);
  if (v7)
  {
    [v7 removeFromSuperview];
    v6 = *a2;
    v9 = *(v3 + *a2);
  }

  else
  {
    v9 = 0;
  }

  *(v3 + v6) = a1;
  v10 = a1;

  a3();
}

void sub_24E27EA8C()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView];
  if (v1)
  {
    v2 = v1;
    sub_24E0D8B84(0, 0, 0, 0);
    [v0 addSubview_];
  }
}

void sub_24E27EB20(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessory;
  swift_beginAccess();
  sub_24E0E8958(v3, v8, &qword_27F1DEE88);
  sub_24E0E8958(a1, v9, &qword_27F1DEE88);
  if (v8[64] == 255)
  {
    if (v9[64] == 255)
    {
      sub_24DF8BFF4(v8, &qword_27F1DEE88);
      return;
    }
  }

  else
  {
    sub_24E0E8958(v8, v7, &qword_27F1DEE88);
    if (v9[64] != 255)
    {
      memcpy(__dst, v9, 0x41uLL);
      v4 = sub_24E29FBA0(v7, __dst);
      sub_24DF9D524(__dst);
      sub_24DF9D524(v7);
      sub_24DF8BFF4(v8, &qword_27F1DEE88);
      if (v4)
      {
        return;
      }

      goto LABEL_9;
    }

    sub_24DF9D524(v7);
  }

  sub_24DF8BFF4(v8, &qword_27F1E9570);
LABEL_9:
  if (*(v3 + 64) == 255)
  {
    v5 = 0;
  }

  else
  {
    sub_24DF9D480(v3, v8);
    v5 = sub_24E073800();
    sub_24DF9D524(v8);
  }

  sub_24E27E748(v5);
}

uint64_t sub_24E27ECCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessory;
  OUTLINED_FUNCTION_5_16();
  sub_24E0E8958(v1 + v3, v5, &qword_27F1DEE88);
  swift_beginAccess();
  sub_24E15B8F4(a1, v1 + v3);
  swift_endAccess();
  sub_24E27EB20(v5);
  sub_24DF8BFF4(a1, &qword_27F1DEE88);
  return sub_24DF8BFF4(v5, &qword_27F1DEE88);
}

uint64_t sub_24E27ED8C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction);
  if (v2)
  {
    v3 = result;
    v7[3] = sub_24DF88A8C(0, &qword_27F1E5BD8);
    v7[0] = v3;
    v4 = OUTLINED_FUNCTION_19_1();
    sub_24DE56C38(v4);
    v5 = v3;
    v2(v7);
    v6 = OUTLINED_FUNCTION_19_1();
    sub_24E059AAC(v6);
    return sub_24DF8BFF4(v7, &qword_27F1E0370);
  }

  return result;
}

void sub_24E27EE94(double a1, double a2)
{
  v5 = type metadata accessor for TitleHeaderView.Style(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = *&v2[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView];
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  if (v10)
  {
    [v10 frame];
    v12 = v14;
    v13 = v15;
  }

  v16 = &v2[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style];
  OUTLINED_FUNCTION_5_16();
  v17 = 0.0;
  if (*(v16 + *(v5 + 28)) == 1)
  {
    if (qword_27F1DDB90 != -1)
    {
      OUTLINED_FUNCTION_2_111();
    }

    v17 = *(&xmmword_27F20B330 + 1);
    v11 = *&xmmword_27F20B330;
  }

  v18 = *&v2[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel];
  v19 = [v18 text];
  if (v19)
  {
    v20 = v19;
    v21 = sub_24E347CF8();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = *&v2[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
  if (v24)
  {
    v25 = sub_24DFFA658(v24);
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = [v18 numberOfLines];
  OUTLINED_FUNCTION_6_86();
  sub_24E282B00(v16, v9);
  [v2 layoutMargins];
  sub_24E28131C(v21, v23, v25, v27, v28, v9, 1, v2, a1, a2, v12, v13, v11, v17);

  OUTLINED_FUNCTION_5_99();
  sub_24E282A50(v9, v29);
  OUTLINED_FUNCTION_1_16();
}

uint64_t sub_24E27F124()
{
  v2 = sub_24E344A78();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  v6 = v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style;
  OUTLINED_FUNCTION_5_16();
  if (*(v6 + *(type metadata accessor for TitleHeaderView.Style(0) + 32)))
  {
    v7 = MEMORY[0x277D22A10];
  }

  else
  {
    v7 = MEMORY[0x277D22A08];
  }

  (*(v4 + 104))(v1, *v7, v2);
  v9[3] = sub_24E3442F8();
  v9[4] = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_24E3442E8();
  OUTLINED_FUNCTION_1_16();
  return sub_24E344A88();
}

id sub_24E27F26C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9550);
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v131 - v4;
  v135 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_38();
  v133 = v7;
  MEMORY[0x28223BE20](v8);
  v134 = &v131 - v9;
  v10 = sub_24E344AA8();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  v17 = type metadata accessor for TitleHeaderView(0);
  v145.receiver = v0;
  v145.super_class = v17;
  objc_msgSendSuper2(&v145, sel_layoutSubviews);
  v18 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorLineView];
  sub_24E27F124();
  [v0 bounds];
  sub_24E344A68();
  (*(v12 + 8))(v16, v10);
  v19 = OUTLINED_FUNCTION_1_16();
  [v20 v21];
  [v0 bounds];
  v23 = v22;
  v25 = v24;
  [v0 layoutMargins];
  v27 = v26;
  v146.origin.x = v28;
  v30 = v23 - v28 - v29;
  v146.size.height = v25 - v27 - v31;
  v146.origin.y = v27;
  v146.size.width = v30;
  CGRectGetMinY(v146);
  [v18 frame];
  [v18 setFrame_];
  v32 = &v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style];
  OUTLINED_FUNCTION_5_16();
  v33 = type metadata accessor for TitleHeaderView.Style(0);
  LOBYTE(v18) = *(v32 + v33[12]);
  [v0 bounds];
  v37 = v36;
  v39 = v38;
  if (v18)
  {
    [v0 layoutMargins];
    v41 = v40;
    v43 = v42;
    v37 = v37 - v42 - v44;
    v39 = v39 - v40 - v45;
  }

  else
  {
    v43 = v34;
    v41 = v35;
  }

  v46 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel];
  result = [v46 font];
  if (!result)
  {
    __break(1u);
    goto LABEL_58;
  }

  v48 = result;
  v136 = v46;
  v49 = [v46 text];
  if (v49)
  {
    v50 = v49;
    v51 = sub_24E347CF8();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v54 = sub_24E1AE614(v51, v53);
  v56 = v55;
  v57 = v54;

  v58 = v136;
  [v136 setLineSpacing_];
  sub_24E0E8958(v32 + v33[5], v5, &qword_27F1E9550);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v135);
  v60 = MEMORY[0x277D22A68];
  if (EnumTagSinglePayload == 1)
  {
    sub_24DF8BFF4(v5, &qword_27F1E9550);
  }

  else
  {
    OUTLINED_FUNCTION_1_129();
    v61 = v134;
    sub_24E282AA8(v5, v134);
    v62 = *&v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
    if (v62)
    {
      v63 = v62;
      sub_24DFFA658(v63);
      if (v64)
      {
        v65 = sub_24E347DD8();

        if (v65 > 0)
        {
          v66 = v60;
          *(&v138[1] + 1) = type metadata accessor for DynamicTypeLabel();
          *&v138[2] = v60;
          *&v138[0] = v63;
          v67 = v63;
          sub_24E27D96C(v138, v139);
          __swift_destroy_boxed_opaque_existential_1(v138);
          sub_24E077268();
          v70 = *(v68 + 16);
          v69 = *(v68 + 24);
          v71 = v68;
          if (v70 >= v69 >> 1)
          {
            OUTLINED_FUNCTION_33_0(v69);
            sub_24E077268();
            v71 = v130;
          }

          OUTLINED_FUNCTION_0_165();
          sub_24E282A50(v61, v72);
          *(v71 + 16) = v70 + 1;
          v73 = v71 + 160 * v70;
          v74 = v71;
          memcpy((v73 + 32), v139, 0xA0uLL);
          v58 = v136;
          v60 = v66;
          goto LABEL_19;
        }
      }

      OUTLINED_FUNCTION_0_165();
      sub_24E282A50(v61, v75);
    }

    else
    {
      OUTLINED_FUNCTION_0_165();
      sub_24E282A50(v61, v76);
    }
  }

  v74 = MEMORY[0x277D84F90];
LABEL_19:
  LODWORD(v134) = *(v32 + v33[10]);
  v77 = [v58 text];
  if (v77)
  {
    v78 = v77;
    sub_24E347CF8();

    v79 = sub_24E347DD8();

    if (v79 >= 1)
    {
      if ((*(v32 + v33[9]) & 1) == 0)
      {
        OUTLINED_FUNCTION_4_94();
        v86 = v133;
        sub_24E282B00(v32, v133);
        *(&v138[1] + 1) = type metadata accessor for DynamicTypeLabel();
        *&v138[2] = v60;
        *&v138[0] = v58;
        v87 = v58;
        sub_24E27D96C(v138, v139);
        OUTLINED_FUNCTION_0_165();
        sub_24E282A50(v86, v88);
        __swift_destroy_boxed_opaque_existential_1(v138);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_27;
        }

        goto LABEL_56;
      }

      OUTLINED_FUNCTION_4_94();
      v80 = v133;
      sub_24E282B00(v32, v133);
      *(&v138[1] + 1) = type metadata accessor for DynamicTypeLabel();
      *&v138[2] = v60;
      *&v138[0] = v58;
      v81 = v58;
      sub_24E27D96C(v138, v139);
      OUTLINED_FUNCTION_0_165();
      sub_24E282A50(v80, v82);
      __swift_destroy_boxed_opaque_existential_1(v138);
      v83 = *(v74 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v144 = v74;
      if (!isUniquelyReferenced_nonNull_native || v83 >= *(v74 + 24) >> 1)
      {
        sub_24E077268();
        v74 = v85;
        v144 = v85;
      }

      sub_24E05F19C();
    }
  }

  while (1)
  {
    v133 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView;
    v94 = *&v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView];
    if (v94)
    {
      v95 = sub_24DF88A8C(0, &qword_27F1E1D30);
      v96 = MEMORY[0x277D22A58];
    }

    else
    {
      v95 = 0;
      v96 = 0;
    }

    v132 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView;
    v97 = *&v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView];
    v135 = v74;
    if (v97)
    {
      v98 = type metadata accessor for ArtworkView();
      v99 = MEMORY[0x277D22A58];
    }

    else
    {
      v98 = 0;
      v99 = 0;
    }

    v100 = qword_27F1DDB88;
    v101 = v94;
    v102 = v97;
    if (v100 != -1)
    {
      OUTLINED_FUNCTION_11_46();
    }

    v139[18] = MEMORY[0x277D85048];
    v139[19] = MEMORY[0x277D225F8];
    v139[15] = qword_27F20B320;
    v139[24] = MEMORY[0x277D225F8];
    v139[23] = MEMORY[0x277D85048];
    v139[20] = 0x4030000000000000;
    memset(&v139[5], 0, 40);
    v103 = qword_27F1DDB90;
    v104 = v135;

    if (v103 != -1)
    {
      OUTLINED_FUNCTION_2_111();
    }

    v105 = v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_allowsAccessibilityLayouts];
    v139[0] = v94;
    v139[1] = 0;
    v139[2] = 0;
    v139[3] = v95;
    v139[4] = v96;
    v139[10] = v97;
    v139[11] = 0;
    v139[12] = 0;
    v139[13] = v98;
    v139[14] = v99;
    v139[25] = v56;
    v139[26] = v104;
    v140 = v134;
    v141 = 1;
    v142 = v105;
    v143 = xmmword_27F20B330;
    v106 = objc_opt_self();
    sub_24E282BBC(v139, v138);
    v107 = swift_allocObject();
    memcpy((v107 + 16), v138, 0xF0uLL);
    *(v107 + 256) = v43;
    *(v107 + 264) = v41;
    *(v107 + 272) = v37;
    *(v107 + 280) = v39;
    *(v107 + 288) = v1;
    v108 = swift_allocObject();
    *(v108 + 16) = sub_24E282C18;
    *(v108 + 24) = v107;
    v137[4] = sub_24DFA0D30;
    v137[5] = v108;
    v137[0] = MEMORY[0x277D85DD0];
    v137[1] = 1107296256;
    v137[2] = sub_24E2C314C;
    v137[3] = &block_descriptor_90;
    v109 = _Block_copy(v137);
    v110 = v1;

    [v106 performWithoutAnimation_];
    _Block_release(v109);
    LOBYTE(v106) = swift_isEscapingClosureAtFileLocation();

    if ((v106 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_56:
    OUTLINED_FUNCTION_5_10();
    sub_24E077268();
    v74 = v128;
LABEL_27:
    v89 = v74;
    v90 = *(v74 + 16);
    v91 = v89;
    v92 = *(v89 + 24);
    if (v90 >= v92 >> 1)
    {
      OUTLINED_FUNCTION_33_0(v92);
      sub_24E077268();
      v91 = v129;
    }

    *(v91 + 16) = v90 + 1;
    v93 = v91 + 160 * v90;
    v74 = v91;
    memcpy((v93 + 32), v139, 0xA0uLL);
  }

  v111 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel;
  v112 = *&v110[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
  if (v112)
  {
    [v112 frame];
    v113 = &selRef_setContactLookup_;
    v114 = v136;
  }

  else
  {
    v114 = v136;
    [v136 frame];
    v113 = &selRef_setContactLookup_;
  }

  v138[0] = *&v110[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_avoidanceRegion];
  v138[1] = *&v110[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_avoidanceRegion + 16];
  LOBYTE(v138[2]) = v110[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_avoidanceRegion + 32];
  if (sub_24E0ADD1C(v138) > COERCE_DOUBLE(1))
  {
    [v114 frame];
    [v114 v113[158]];
    v115 = *&v110[v111];
    if (v115)
    {
      v116 = v115;
      [v116 frame];
      OUTLINED_FUNCTION_21_31(v117, v118);
    }

    v119 = *&v1[v132];
    if (v119)
    {
      v120 = v119;
      [v120 frame];
      OUTLINED_FUNCTION_21_31(v121, v122);
    }

    v123 = *&v1[v133];
    if (v123)
    {
      v124 = v123;
      [v124 frame];
      OUTLINED_FUNCTION_21_31(v125, v126);
    }
  }

  if (![v114 jet_isTextExtraTall])
  {
    sub_24E2829FC(v139);
  }

  v127 = [v114 font];
  result = v135;
  if (v127)
  {

    sub_24E348578();

    [v114 frame];
    CGRectGetWidth(v147);
    [v114 frame];
    CGRectGetHeight(v148);
    [v114 bounds];
    [v114 setBounds_];
    sub_24E2829FC(v139);
  }

LABEL_58:
  __break(1u);
  return result;
}

id sub_24E27FDBC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char *a6)
{
  v11 = sub_24E344048();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E259A88(a6, a1, a2, a3, a4);
  (*(v12 + 8))(v14, v11);
  [*&a6[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView] layoutIfNeeded];
  result = *&a6[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView];
  if (result)
  {
    return [result layoutIfNeeded];
  }

  return result;
}

id sub_24E27FF38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9550);
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  OUTLINED_FUNCTION_4_5(v11);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel];
  v16 = &v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style];
  OUTLINED_FUNCTION_5_16();
  [v15 setTextColor_];
  v17 = *(v6 + 24);
  v18 = sub_24E344158();
  OUTLINED_FUNCTION_5_2();
  v37 = *(v19 + 16);
  v37(v14, &v16[v17], v18);
  OUTLINED_FUNCTION_31_12();
  sub_24E0AED24(v14);
  v20 = type metadata accessor for TitleHeaderView.Style(0);
  [v1 setBackgroundColor_];
  sub_24E0E8958(&v16[v20[5]], v5, &qword_27F1E9550);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_24DF8BFF4(v5, &qword_27F1E9550);
    sub_24E27E504(0);
  }

  else
  {
    OUTLINED_FUNCTION_1_129();
    sub_24E282AA8(v5, v10);
    v21 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel;
    v22 = *&v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
    if (v22 || (v28 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel()), v29 = OUTLINED_FUNCTION_4_50(v28, sel_initWithFrame_), sub_24E27E504(v29), (v30 = *&v1[v21]) != 0) && ([v30 setNumberOfLines_], (v31 = *&v1[v21]) != 0) && (objc_msgSend(v31, sel_setLineBreakMode_, 4), (v22 = *&v1[v21]) != 0))
    {
      [v22 setTextColor_];
      v23 = *&v1[v21];
      if (v23)
      {
        v37(v14, &v10[*(v6 + 24)], v18);
        OUTLINED_FUNCTION_31_12();
        v24 = v23;
        sub_24E0AED24(v14);

        v25 = *&v1[v21];
        if (v25)
        {
          v26 = [v25 layer];
          if (*(v10 + 2))
          {
            v27 = sub_24E347CB8();
          }

          else
          {
            v27 = 0;
          }

          [v26 setCompositingFilter_];

          swift_unknownObjectRelease();
          v32 = *&v1[v21];
          if (v32)
          {
            v32[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_wantsFastBaselineMeasurement] = 1;
            v33 = v32;
            sub_24E0AFA60();
          }
        }
      }
    }

    OUTLINED_FUNCTION_0_165();
    sub_24E282A50(v10, v34);
  }

  v35 = *&v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorLineView];
  [v35 setHidden_];
  [v35 setBackgroundColor_];
  return [v1 setNeedsLayout];
}

void sub_24E280308()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TitleHeaderView(0);
  objc_msgSendSuper2(&v8, sel_prepareForReuse);
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction];
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction];
  *v1 = 0;
  *(v1 + 1) = 0;
  sub_24E059AAC(v2);
  memset(v6, 0, sizeof(v6));
  v7 = -1;
  sub_24E27ECCC(v6);
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView];
  if (v3)
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_16_40();
    sub_24E0D8ED8(v5, 0);
  }
}

uint64_t sub_24E280460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0C58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  v2 = [*(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel) text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel);
  if (v7)
  {
    v8 = sub_24DFFA658(v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = 0;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v11 = MEMORY[0x277D84F90];
LABEL_8:
  v12 = (inited + 40 + 16 * v10);
  while (++v10 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_10();
        sub_24E076A08();
        v11 = v18;
      }

      v16 = *(v11 + 16);
      if (v16 >= *(v11 + 24) >> 1)
      {
        sub_24E076A08();
        v11 = v19;
      }

      *(v11 + 16) = v16 + 1;
      v17 = v11 + 16 * v16;
      *(v17 + 32) = v15;
      *(v17 + 40) = v14;
      goto LABEL_8;
    }
  }

  swift_setDeallocating();
  sub_24DFD7F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0338);
  sub_24E00FE20();
  v20 = sub_24E347C78();

  return v20;
}

void sub_24E2806B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_24E347CB8();
  }

  else
  {
    v3 = 0;
  }

  v4.receiver = v2;
  v4.super_class = type metadata accessor for TitleHeaderView(0);
  objc_msgSendSuper2(&v4, sel_setAccessibilityLabel_, v3);
}

void *sub_24E280738()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView);
  v2 = v1;
  return v1;
}

void sub_24E280768(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v39 = a2;
  v5 = OUTLINED_FUNCTION_16_40();
  v40 = type metadata accessor for TitleHeaderView.Style(v5);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for Shelf.Presentation(0);
  v15 = OUTLINED_FUNCTION_4_5(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  v16 = type metadata accessor for HeaderData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v20 = v19 - v18;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  sub_24E0E8958(v3, v13, &qword_27F1DF058);
  sub_24E282A50(v3, type metadata accessor for Shelf.Presentation);
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
    sub_24DF8BFF4(v13, &qword_27F1DF058);
    return;
  }

  sub_24E282AA8(v13, v20);
  OUTLINED_FUNCTION_6_86();
  sub_24E282B00(v20 + v21, v9);
  sub_24E27E608(v9);
  v22 = *&v2[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel];
  v23 = sub_24E347CB8();
  [v22 setText_];

  v24 = *&v4[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
  if (v24)
  {
    v25 = *(v20 + *(v16 + 32) + 8);
    v26 = v24;
    if (v25)
    {
      v25 = sub_24E347CB8();
    }

    [v26 setText_];
  }

  if (!*(v20 + *(v16 + 48)))
  {
    goto LABEL_16;
  }

  v27 = qword_27F1DDB90;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_2_111();
  }

  v41[0] = 0;
  v41[1] = 0;
  v28 = sub_24E0ABE8C(v41, 0, *&xmmword_27F20B330, *(&xmmword_27F20B330 + 1));
  v29 = &v4[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style];
  OUTLINED_FUNCTION_5_16();
  if (v29[*(v40 + 28)] != 1)
  {
    goto LABEL_15;
  }

  type metadata accessor for ArtworkView();
  v30 = sub_24E0D89D0();
  sub_24E27E9E0(v30);
  v31 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView;
  v32 = *&v4[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView];
  if (!v32)
  {
    __break(1u);
    goto LABEL_18;
  }

  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 clearColor];
  [v34 setBackgroundColor_];

  if (!*(v39 + qword_27F1EB198))
  {
LABEL_15:

LABEL_16:
    [v4 setNeedsLayout];
    sub_24E282A50(v20, type metadata accessor for HeaderData);
    return;
  }

  v36 = *&v4[v31];
  if (v36)
  {

    v37 = v36;
    sub_24E0624A4(v28, 2, 1, v37);

    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
}

void sub_24E280BB4()
{
  OUTLINED_FUNCTION_5_99();
  sub_24E282A50(v0 + v1, v2);

  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessory, &qword_27F1DEE88);
  sub_24E059AAC(*(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction));
  v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorLineView);
}

id sub_24E280C6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleHeaderView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E280D90()
{
  result = type metadata accessor for TitleHeaderView.Style(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_24E280EDC()
{
  type metadata accessor for TitleHeaderView.TextConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_24E280FCC();
    if (v1 <= 0x3F)
    {
      sub_24E281024();
      if (v2 <= 0x3F)
      {
        sub_24DF88A8C(319, &qword_27F1E5FD0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E280FCC()
{
  if (!qword_280BE0980)
  {
    type metadata accessor for TitleHeaderView.TextConfiguration(255);
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE0980);
    }
  }
}

void sub_24E281024()
{
  if (!qword_27F1E5D78)
  {
    sub_24DF88A8C(255, &qword_27F1E5FD0);
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E5D78);
    }
  }
}

_BYTE *sub_24E28109C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_24E2811A0()
{
  sub_24DF88A8C(319, &qword_27F1E5FD0);
  if (v0 <= 0x3F)
  {
    sub_24E0ADC44();
    if (v1 <= 0x3F)
    {
      sub_24E344158();
      if (v2 <= 0x3F)
      {
        sub_24E3444F8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24E281270()
{
  result = qword_27F1E9558;
  if (!qword_27F1E9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9558);
  }

  return result;
}

unint64_t sub_24E2812C8()
{
  result = qword_27F1E9560;
  if (!qword_27F1E9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9560);
  }

  return result;
}

double sub_24E28131C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v74 = a7;
  v68 = a5;
  v69 = a4;
  v71 = a3;
  v72 = a1;
  v70 = a14;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9550);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v66 - v20;
  v22 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = MEMORY[0x28223BE20](v25).n128_u64[0];
  v28 = &v66 - v27;
  v75 = a8;
  v29 = [a8 traitCollection];
  v73 = type metadata accessor for TitleHeaderView.Style(0);
  v30 = *(v73 + 20);
  v76 = a6;
  sub_24E0E8958(a6 + v30, v21, &qword_27F1E9550);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
  v32 = MEMORY[0x277D228F0];
  if (EnumTagSinglePayload == 1)
  {
    sub_24DF8BFF4(v21, &qword_27F1E9550);
    v33 = MEMORY[0x277D84F90];
    v34 = v24;
LABEL_9:
    v35 = a2;
LABEL_10:
    v43 = v72;
    goto LABEL_11;
  }

  sub_24E282AA8(v21, v28);
  v34 = v24;
  if (!v69)
  {
    sub_24E282A50(v28, type metadata accessor for TitleHeaderView.TextConfiguration);
    v33 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v35 = a2;
  if (sub_24E347DD8() <= 0)
  {
    sub_24E282A50(v28, type metadata accessor for TitleHeaderView.TextConfiguration);
    v33 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v66 = v34;
  sub_24DF88A8C(0, &qword_27F1DEE28);
  v36 = &v28[*(v22 + 24)];
  v67 = v29;
  v37 = MEMORY[0x25303F0C0](v36, v29);

  v38 = v37;
  sub_24E344398();
  sub_24E3443A8();
  v39 = sub_24E344868();
  swift_allocObject();
  v40 = sub_24E344858();
  v85 = v39;
  v86 = v32;
  v84[0] = v40;

  sub_24E27D96C(v84, v79);

  __swift_destroy_boxed_opaque_existential_1(v84);
  sub_24E077268();
  v33 = v41;
  v42 = *(v41 + 16);
  if (v42 >= *(v41 + 24) >> 1)
  {
    sub_24E077268();
    v33 = v65;
  }

  v34 = v66;
  sub_24E282A50(v28, type metadata accessor for TitleHeaderView.TextConfiguration);
  *(v33 + 16) = v42 + 1;
  memcpy((v33 + 160 * v42 + 32), v79, 0xA0uLL);
  v43 = v72;
  v29 = v67;
LABEL_11:
  v44 = v76;
  sub_24E282B00(v76, v34);
  sub_24DF88A8C(0, &qword_27F1DEE28);
  v45 = MEMORY[0x25303F0C0](v34 + *(v22 + 24), v29);
  sub_24E1AE614(v43, v35);
  v47 = v46;
  if (v35 && sub_24E347DD8() >= 1)
  {
    v67 = v29;
    v72 = v45;
    v48 = v45;

    sub_24E344398();
    sub_24E3443A8();
    v49 = sub_24E344868();
    swift_allocObject();
    v50 = sub_24E344858();
    v85 = v49;
    v86 = MEMORY[0x277D228F0];
    v84[0] = v50;
    sub_24E27D96C(v84, v79);
    __swift_destroy_boxed_opaque_existential_1(v84);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E077268();
      v33 = v63;
    }

    v51 = *(v33 + 16);
    v29 = v67;
    v44 = v76;
    v45 = v72;
    if (v51 >= *(v33 + 24) >> 1)
    {
      sub_24E077268();
      v33 = v64;
    }

    *(v33 + 16) = v51 + 1;
    memcpy((v33 + 160 * v51 + 32), v79, 0xA0uLL);
  }

  if (a11 == 0.0 && a12 == 0.0)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v84[1] = 0;
    v84[2] = 0;
  }

  else
  {
    v53 = sub_24E344788();
    swift_allocObject();
    v52 = sub_24E344768();
    v54 = MEMORY[0x277D228B0];
  }

  v84[0] = v52;
  v85 = v53;
  v86 = v54;
  if (*(v44 + *(v73 + 28)) == 1)
  {
    v55 = sub_24E344788();
    swift_allocObject();
    v56 = sub_24E344768();
    v57 = MEMORY[0x277D228B0];
  }

  else
  {
    v55 = 0;
    v57 = 0;
    v56 = 0;
    v83[1] = 0;
    v83[2] = 0;
  }

  v83[3] = v55;
  v83[4] = v57;
  v83[0] = v56;
  sub_24E0E8958(v84, v79, &qword_27F1DEE30);
  sub_24E0E8958(v83, &v79[10], &qword_27F1DEE30);
  if (qword_27F1DDB88 != -1)
  {
    swift_once();
  }

  v79[18] = MEMORY[0x277D85048];
  v79[19] = MEMORY[0x277D225F8];
  v79[15] = qword_27F20B320;
  v79[23] = MEMORY[0x277D85048];
  v79[24] = MEMORY[0x277D225F8];
  v79[20] = 0x4030000000000000;
  memset(&v79[5], 0, 40);
  if (qword_27F1DDB90 != -1)
  {
    swift_once();
  }

  v79[25] = v47;
  v79[26] = v33;
  v80 = 257;
  v81 = v74 & 1;
  v82 = xmmword_27F20B330;
  sub_24E348538();
  sub_24E2821CC(v75, v79, v58);
  v77 = v59;
  v78 = v60;
  sub_24E348548();

  sub_24E282A50(v34, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_24E2829FC(v79);
  v61 = v77;
  sub_24DF8BFF4(v83, &qword_27F1DEE30);
  sub_24DF8BFF4(v84, &qword_27F1DEE30);
  return v61;
}

void sub_24E281B18()
{
  OUTLINED_FUNCTION_44();
  v1 = v0;
  v72 = v2;
  v4 = v3;
  v67 = v6;
  v68 = v5;
  v70 = v7;
  v69 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v74 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9550);
  OUTLINED_FUNCTION_4_5(v16);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_38();
  v23 = v22;
  *&v25 = MEMORY[0x28223BE20](v24).n128_u64[0];
  v27 = &v65 - v26;
  v73 = v1;
  v28 = [v1 traitCollection];
  v71 = type metadata accessor for TitleHeaderView.Style(0);
  v29 = *(v71 + 20);
  v75 = v4;
  sub_24E0E8958(v4 + v29, v19, &qword_27F1E9550);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
  v31 = MEMORY[0x277D228F0];
  if (EnumTagSinglePayload == 1)
  {
    sub_24DF8BFF4(v19, &qword_27F1E9550);
    v32 = MEMORY[0x277D84F90];
    v33 = v23;
    v34 = v14;
    v35 = v33;
    v36 = v74;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_129();
  sub_24E282AA8(v19, v27);
  v65 = v23;
  v36 = v74;
  if (!v68)
  {
    OUTLINED_FUNCTION_0_165();
    sub_24E282A50(v27, v44);
    v32 = MEMORY[0x277D84F90];
    v34 = v14;
LABEL_10:
    v35 = v65;
    goto LABEL_11;
  }

  v34 = v14;
  if (sub_24E347DD8() <= 0)
  {
    OUTLINED_FUNCTION_0_165();
    sub_24E282A50(v27, v45);
    v32 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  sub_24DF88A8C(0, &qword_27F1DEE28);
  v37 = &v27[*(v20 + 24)];
  v66 = v28;
  v38 = MEMORY[0x25303F0C0](v37, v28);

  v39 = v38;
  sub_24E344398();
  sub_24E3443A8();
  sub_24E344868();
  OUTLINED_FUNCTION_21_7();
  v40 = sub_24E344858();
  v87 = v36;
  v88 = v31;
  v86[0] = v40;

  sub_24E27D96C(v86, v78);

  __swift_destroy_boxed_opaque_existential_1(v86);
  sub_24E077268();
  v32 = v41;
  v42 = *(v41 + 24);
  if (*(v41 + 16) >= v42 >> 1)
  {
    OUTLINED_FUNCTION_33_0(v42);
    sub_24E077268();
    v32 = v64;
  }

  v35 = v65;
  OUTLINED_FUNCTION_0_165();
  sub_24E282A50(v27, v43);
  OUTLINED_FUNCTION_18_39();
  v36 = v74;
  v28 = v66;
LABEL_11:
  OUTLINED_FUNCTION_4_94();
  v46 = v75;
  sub_24E282B00(v75, v35);
  sub_24DF88A8C(0, &qword_27F1DEE28);
  v47 = MEMORY[0x25303F0C0](v35 + *(v20 + 24), v28);
  sub_24E1AE614(v36, v34);
  v49 = v48;
  if (v34 && sub_24E347DD8() >= 1)
  {
    v66 = v28;
    v74 = v47;
    v50 = v47;

    sub_24E344398();
    sub_24E3443A8();
    v51 = sub_24E344868();
    swift_allocObject();
    v52 = sub_24E344858();
    v87 = v51;
    v88 = MEMORY[0x277D228F0];
    v86[0] = v52;
    sub_24E27D96C(v86, v78);
    __swift_destroy_boxed_opaque_existential_1(v86);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_10();
      sub_24E077268();
      v32 = v62;
    }

    v36 = *(v32 + 16);
    v53 = *(v32 + 24);
    v28 = v66;
    v47 = v74;
    v46 = v75;
    if (v36 >= v53 >> 1)
    {
      OUTLINED_FUNCTION_33_0(v53);
      sub_24E077268();
      v32 = v63;
    }

    OUTLINED_FUNCTION_18_39();
  }

  if (v12 == 0.0 && v10 == 0.0)
  {
    v54 = 0;
    v36 = 0;
    v55 = 0;
    v86[1] = 0;
    v86[2] = 0;
  }

  else
  {
    sub_24E344788();
    OUTLINED_FUNCTION_21_7();
    v54 = sub_24E344768();
    v55 = MEMORY[0x277D228B0];
  }

  v86[0] = v54;
  v87 = v36;
  v88 = v55;
  if (*(v46 + *(v71 + 28)) == 1)
  {
    sub_24E344788();
    OUTLINED_FUNCTION_21_7();
    v56 = sub_24E344768();
    v57 = MEMORY[0x277D228B0];
  }

  else
  {
    v36 = 0;
    v57 = 0;
    v56 = 0;
    v85[1] = 0;
    v85[2] = 0;
  }

  v85[3] = v36;
  v85[4] = v57;
  v85[0] = v56;
  sub_24E0E8958(v86, v78, &qword_27F1DEE30);
  sub_24E0E8958(v85, v81, &qword_27F1DEE30);
  if (qword_27F1DDB88 != -1)
  {
    OUTLINED_FUNCTION_11_46();
  }

  v81[8] = MEMORY[0x277D85048];
  v81[9] = MEMORY[0x277D225F8];
  v81[5] = qword_27F20B320;
  v81[13] = MEMORY[0x277D85048];
  v81[14] = MEMORY[0x277D225F8];
  v81[10] = 0x4030000000000000;
  *&v78[40] = 0u;
  v79 = 0u;
  v80 = 0;
  if (qword_27F1DDB90 != -1)
  {
    OUTLINED_FUNCTION_2_111();
  }

  v81[15] = v49;
  v81[16] = v32;
  v82 = 257;
  v83 = v72 & 1;
  v84 = xmmword_27F20B330;
  OUTLINED_FUNCTION_25_23();
  sub_24E348538();
  sub_24E25A04C(v73, v78, v58);
  v76 = v59;
  v77 = v60;
  OUTLINED_FUNCTION_25_23();
  sub_24E348548();

  OUTLINED_FUNCTION_0_165();
  sub_24E282A50(v35, v61);
  sub_24E2829FC(v78);
  sub_24DF8BFF4(v85, &qword_27F1DEE30);
  sub_24DF8BFF4(v86, &qword_27F1DEE30);
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_45();
}

void sub_24E2821CC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_24E348BC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24E344478();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24E3444A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24E344888();
  MEMORY[0x28223BE20](v67);
  v69 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 0.0)
  {
    sub_24E282C44(a1, a2);
  }

  else
  {
    v53 = v9;
    v54 = v7;
    v55 = v6;
    v56 = v13;
    v59 = v15;
    v60 = v12;
    v18 = 0;
    v57 = a1;
    v58 = a2;
    v19 = *(a2 + 208);
    v20 = *(v19 + 16);
    v68 = v19;
    v66 = (v16 + 16);
    v64 = v19 + 32;
    v65 = (v16 + 8);
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18 == v20)
      {
        v22 = 0;
        v23 = 0uLL;
        v24 = 0uLL;
        v18 = v20;
        v25 = 0uLL;
        v26 = 0uLL;
        v27 = 0uLL;
        v28 = 0uLL;
        v29 = 0uLL;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
      }

      else
      {
        if (v18 >= *(v68 + 16))
        {
          goto LABEL_28;
        }

        *&v72 = v18;
        sub_24E05F5E4(v64 + 160 * v18, &v72 + 8);
        v23 = v72;
        v24 = v73;
        v22 = v74;
        v25 = v75;
        v26 = v76;
        v27 = v77;
        v28 = v78;
        v29 = v79;
        v30 = v80;
        v31 = v81;
        ++v18;
        v32 = v82;
      }

      v83 = v23;
      v84 = v24;
      v85 = v22;
      v86[0] = v25;
      v86[1] = v26;
      v86[2] = v27;
      v87[0] = v28;
      v87[1] = v29;
      v87[2] = v30;
      v87[3] = v31;
      v87[4] = v32;
      if (!v22)
      {
        (*(v62 + 104))(v61, *MEMORY[0x277D22788], v63);

        v42 = v59;
        sub_24E344488();
        v43 = v58;
        sub_24E2586BC(&v72);
        if (*(&v73 + 1))
        {
          sub_24DE56CE8(&v72, &v83);
          __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
          v44 = v57;
          sub_24E3440D8();
          v45 = *(v43 + 184);
          v46 = *(v43 + 192);
          __swift_project_boxed_opaque_existential_1((v43 + 160), v45);
          v47 = v53;
          sub_24E2548A0(v45, v46);
          sub_24E344198();
          (*(v54 + 8))(v47, v55);
          v48 = v60;
          if (*(v43 + 218))
          {
            v49 = [v44 traitCollection];
            sub_24E3483C8();
          }

          sub_24E344468();
          __swift_destroy_boxed_opaque_existential_1(&v83);
        }

        else
        {
          sub_24DF8BFF4(&v72, &qword_27F1DEE30);
          sub_24E344468();
          v48 = v60;
        }

        if (*(v43 + 200) <= 1.0)
        {
          (*(v56 + 8))(v42, v48);
        }

        else
        {
          sub_24E12E6A0(v68, &v83);
          if (*(&v84 + 1))
          {
            sub_24DF89628(&v83, v71);
            sub_24E25AA9C(&v83);
            sub_24DE56CE8(v71, &v72);
            __swift_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
            v50 = sub_24E344318();
            if (v50)
            {
              v51 = v50;

              [v51 lineHeight];

              (*(v56 + 8))(v42, v48);
              __swift_destroy_boxed_opaque_existential_1(&v72);
              return;
            }

            goto LABEL_29;
          }

          (*(v56 + 8))(v42, v48);
          sub_24DF8BFF4(&v83, &qword_27F1E8D50);
        }

        return;
      }

      if (__OFADD__(v23, 1))
      {
        break;
      }

      v33 = v25;
      v34 = __swift_project_boxed_opaque_existential_1(&v83 + 1, v22);
      *(&v73 + 1) = v22;
      v74 = *(*(v33 + 8) + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v72);
      (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v34, v22);
      sub_24DF89628(v86 + 8, v71);
      sub_24DF89628(v87, &v70);
      sub_24E25AA9C(&v83 + 8);
      sub_24E344878();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076C74();
        v21 = v40;
      }

      v36 = *(v21 + 16);
      if (v36 >= *(v21 + 24) >> 1)
      {
        sub_24E076C74();
        v21 = v41;
      }

      v37 = v67;
      *(&v73 + 1) = v67;
      v74 = MEMORY[0x277D22900];
      v38 = __swift_allocate_boxed_opaque_existential_1(&v72);
      v39 = v69;
      (*v66)(v38, v69, v37);
      *(v21 + 16) = v36 + 1;
      sub_24DE56CE8(&v72, v21 + 40 * v36 + 32);
      (*v65)(v39, v37);
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_24E282A50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E282AA8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_40();
  v4(v3);
  OUTLINED_FUNCTION_5_2();
  v5 = OUTLINED_FUNCTION_19_1();
  v6(v5);
  return a2;
}

uint64_t sub_24E282B00(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_40();
  v4(v3);
  OUTLINED_FUNCTION_5_2();
  v5 = OUTLINED_FUNCTION_19_1();
  v6(v5);
  return a2;
}

uint64_t sub_24E282B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_24E282C44(uint64_t a1, uint64_t a2)
{
  v3 = sub_24E344478();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E3444A8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 104))(v6, *MEMORY[0x277D22788], v3, v9);
  sub_24E344488();
  v12 = *(a2 + 208);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 32;
    v15 = MEMORY[0x277D228E0];
    do
    {
      sub_24E05F5E4(v14, v24);
      sub_24DF89628(&v25, v20);
      v16 = sub_24E344838();
      v22 = v16;
      v23 = v15;
      __swift_allocate_boxed_opaque_existential_1(v21);
      sub_24E344848();
      sub_24E344498();
      __swift_destroy_boxed_opaque_existential_1(v21);
      sub_24DF89628(&v26, v20);
      sub_24E25AA9C(v24);
      v22 = v16;
      v23 = v15;
      __swift_allocate_boxed_opaque_existential_1(v21);
      sub_24E344848();
      sub_24E344498();
      __swift_destroy_boxed_opaque_existential_1(v21);
      v14 += 160;
      --v13;
    }

    while (v13);
  }

  sub_24E344468();
  v18 = v17;
  (*(v8 + 8))(v11, v7);
  return v18;
}

uint64_t OUTLINED_FUNCTION_2_111()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_46()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_18_39()
{
  *(v3 + 16) = v1;

  return memcpy((v3 + 160 * v2 + 32), (v0 + 104), 0xA0uLL);
}

id OUTLINED_FUNCTION_21_31(double a1, double a2)
{
  v6 = a2 - v5;

  return [v2 (v3 + 2424)];
}

uint64_t OUTLINED_FUNCTION_31_12()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI25AsyncPresenterUpdatePhaseO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E2830B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E28311C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_24E283170(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    v2 = a2 - 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t sub_24E2831E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E283220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for AddFriendsAction()
{
  result = qword_27F1E9578;
  if (!qword_27F1E9578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E2832F8()
{
  sub_24DF88A8C(319, &qword_280BDFA90);
  if (v0 <= 0x3F)
  {
    sub_24E347208();
    if (v1 <= 0x3F)
    {
      sub_24E2833AC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E2833AC()
{
  if (!qword_27F1E9588)
  {
    sub_24DF88A8C(255, &qword_27F1E05B0);
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E9588);
    }
  }
}

void sub_24E283414(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = &type metadata for GKFeatureFlags;
  v18 = sub_24DFA0CB4();
  v16[0] = 15;
  v4 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v16);
  if ((v4 & 1) != 0 && [a1 supportsFriendingViaPush] && (v5 = sub_24E283C30(a1), v6))
  {
    v7 = v5;
    v8 = v6;
    v9 = [a1 contact];
    v10 = [v9 identifier];

    v11 = sub_24E347CF8();
    v13 = v12;

    v14 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_24E369990;
    v15 = [a1 contact];
    v13 = 0;
    v7 = 0;
    v8 = 0;
    *(v11 + 32) = v15;
    v14 = 1;
  }

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v14;
}

uint64_t sub_24E2835B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v9 = sub_24E347458();
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_3_14();
  v57 = v10;
  sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v58 = v12;
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_14();
  v56 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFA60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v53 - v15;
  v17 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v55 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - v23;
  v25 = type metadata accessor for AddFriendsAction();
  v26 = *(v25 + 28);
  *a5 = a1;
  v27 = a2;
  v28 = a5;
  v29 = *(v27 + 16);
  *(a5 + 8) = *v27;
  *(a5 + 24) = v29;
  *(a5 + 40) = *(v27 + 32);
  *(a5 + v26) = v60;
  sub_24E283B58(a3, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    v54 = v25;
    v60 = a3;
    sub_24DFB8654(v27, v61);
    sub_24E283BC8(v16);
    v30 = *(v27 + 32);
    v53 = v17;
    if (v30)
    {
      v31 = *v27 | *(v27 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
      v32 = v56;
      if (v31)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24E367D20;
        *(inited + 32) = 0x79546E6F69746361;
        *(inited + 40) = 0xEA00000000006570;
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 48) = 0x657461676976616ELL;
        *(inited + 56) = 0xE800000000000000;
        v34 = sub_24E347C28();
        if (qword_27F1DD808 != -1)
        {
          OUTLINED_FUNCTION_1_43();
        }

        v46 = sub_24E347058();
        __swift_project_value_buffer(v46, qword_27F20AE00);
        v36 = OUTLINED_FUNCTION_1_130();
        v37 = 0xE600000000000000;
      }

      else
      {
        v33 = swift_initStackObject();
        *(v33 + 16) = xmmword_24E367D20;
        *(v33 + 32) = 0x79546E6F69746361;
        *(v33 + 40) = 0xEA00000000006570;
        *(v33 + 72) = MEMORY[0x277D837D0];
        *(v33 + 48) = 0x657461676976616ELL;
        *(v33 + 56) = 0xE800000000000000;
        v34 = sub_24E347C28();
        if (qword_27F1DD808 != -1)
        {
          OUTLINED_FUNCTION_1_43();
        }

        v35 = sub_24E347058();
        __swift_project_value_buffer(v35, qword_27F20AE00);
        v36 = OUTLINED_FUNCTION_1_130() & 0xFFFFFFFFFFFFLL | 0x744F000000000000;
        v37 = 0xEC00000073726568;
      }

      v43 = 1802398060;
      v44 = 0xE400000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_24E367D20;
      v41 = MEMORY[0x277D837D0];
      *(v40 + 32) = 0x79546E6F69746361;
      *(v40 + 40) = 0xEA00000000006570;
      *(v40 + 72) = v41;
      *(v40 + 48) = 6579297;
      *(v40 + 56) = 0xE300000000000000;
      v34 = sub_24E347C28();
      v32 = v56;
      if (qword_27F1DD808 != -1)
      {
        OUTLINED_FUNCTION_1_43();
      }

      v42 = sub_24E347058();
      __swift_project_value_buffer(v42, qword_27F20AE00);
      v36 = OUTLINED_FUNCTION_1_130();
      v43 = 0x6E6F74747562;
      v37 = 0xE600000000000000;
      v44 = 0xE600000000000000;
    }

    MEMORY[0x25303DB90](v36, v37, v43, v44, v34);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
    v47 = v58;
    v48 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_24E367D20;
    v50 = v49 + v48;
    v51 = v59;
    (*(v47 + 16))(v50, v32, v59);
    sub_24E347448();
    v52 = v55;
    sub_24E3471D8();
    sub_24DFB8758(v27);
    sub_24E283BC8(v60);
    (*(v47 + 8))(v32, v51);
    return (*(v19 + 32))(v28 + *(v54 + 24), v52, v53);
  }

  else
  {
    sub_24E283BC8(a3);
    v38 = *(v19 + 32);
    v38(v24, v16, v17);
    return (v38)(a5 + *(v25 + 24), v24, v17);
  }
}