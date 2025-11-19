double sub_24E1741D8()
{
  GKIsXRUIIdiomShouldUsePadUI();
  OUTLINED_FUNCTION_34_9();
  result = v0;
  if (!v2)
  {
    return 24.0;
  }

  return result;
}

void sub_24E174200()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x370))())
  {
    v2 = *((*v1 & *v0) + 0x358);

    v2();
  }

  else
  {

    sub_24E1723A4();
  }
}

id sub_24E1742B8()
{
  v1 = OUTLINED_FUNCTION_51_2();
  v2 = [v1 userInterfaceIdiom];

  if (v2 != 6)
  {
    if (v2 != 1)
    {
      if (v2)
      {
        v10 = OUTLINED_FUNCTION_51_2();
        v11 = [v10 horizontalSizeClass];

        return (v11 != 1);
      }

      else
      {
        v3 = OUTLINED_FUNCTION_51_2();
        v4 = [v3 verticalSizeClass];

        return (v4 == 1);
      }
    }

    v6 = [v0 splitViewController];
    if (v6)
    {

      return 0;
    }

    if (qword_27F1DD8E0 != -1)
    {
      OUTLINED_FUNCTION_1_95();
    }

    v12 = *&qword_27F1E5FD8;
    GKIsXRUIIdiomShouldUsePadUI();
    OUTLINED_FUNCTION_34_9();
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 24.0;
    }

    result = [v0 view];
    if (result)
    {
      v16 = result;
      [result bounds];
      OUTLINED_FUNCTION_8_2();

      v21.origin.x = OUTLINED_FUNCTION_7_2();
      if (CGRectGetWidth(v21) == 0.0)
      {
LABEL_20:
        v18 = [v0 navigationController];
        if (!v18)
        {
          goto LABEL_27;
        }

        v19 = v18;
        v20 = [v18 view];

        if (!v20)
        {
          __break(1u);
          goto LABEL_27;
        }

LABEL_26:
        [v20 bounds];
        OUTLINED_FUNCTION_8_2();

LABEL_27:
        v23.origin.x = OUTLINED_FUNCTION_7_2();
        return (v12 + 320.0 + v15 < CGRectGetWidth(v23));
      }

      result = [v0 view];
      if (result)
      {
        v17 = result;
        [result bounds];
        OUTLINED_FUNCTION_8_2();

        v22.origin.x = OUTLINED_FUNCTION_7_2();
        if (CGRectGetHeight(v22) == 0.0)
        {
          goto LABEL_20;
        }

        result = [v0 view];
        if (result)
        {
          v20 = result;
          goto LABEL_26;
        }

LABEL_30:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  ShouldUsePhoneUI = GKIsXRUIIdiomShouldUsePhoneUI();
  v8 = OUTLINED_FUNCTION_51_2();
  v9 = [v8 verticalSizeClass];

  if (v9 == 1)
  {
    return ShouldUsePhoneUI;
  }

  else
  {
    return 0;
  }
}

void *sub_24E17457C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCompositionalLayout);
  v2 = v1;
  return v1;
}

void (*sub_24E1745C0())()
{
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController____lazy_storage___updateCollectionViewConstraintOnce];
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController____lazy_storage___updateCollectionViewConstraintOnce];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController____lazy_storage___updateCollectionViewConstraintOnce];
  }

  else
  {
    OUTLINED_FUNCTION_21_2();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_24E1798E8;
    *v1 = sub_24E1798E8;
    v1[1] = v4;
    v5 = v0;

    sub_24DE73FA0(0);
  }

  sub_24DF88BEC(v2);
  return v3;
}

void sub_24E174668()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  OUTLINED_FUNCTION_21_2();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(MEMORY[0x277D752B8]);
  v4 = v2;
  v5 = sub_24E237540(sub_24E179810, v3, v4);
  v6 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCompositionalLayout;
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCompositionalLayout);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCompositionalLayout) = v5;
  v8 = v5;

  if (v8)
  {
    type metadata accessor for SectionBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_24DFEA80C();
    v10 = sub_24E347CB8();

    [v8 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v10];

    v11 = *(v1 + v6);
    if (v11)
    {
      v11;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24E1747A4()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v70 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6030);
  OUTLINED_FUNCTION_4_5(v7);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_3();
  v68 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  v18 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v66 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_1();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v69 = v6;
  v67 = v27;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v27);
  v28 = [v1 collectionView];
  if (v28 && (v29 = v28, sub_24DF88A8C(0, &qword_27F1E6028), v30 = v4, v31 = sub_24E348628(), v29, v30, (v31 & 1) != 0))
  {
    v32 = *(v1 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
    sub_24DFAE87C(v70, v17, &unk_27F1E6C80);
    OUTLINED_FUNCTION_17_4(v17, 1, v18);
    if (!v33)
    {
      v53 = v66;
      (*(v66 + 32))(v26, v17, v18);
      v54 = v67;
      v55 = *(v67 + 48);
      v56 = *((*MEMORY[0x277D85000] & *v1) + 0x228);
      v70 = v32;
      v57 = v56();
      v58 = sub_24E3434D8();
      sub_24DFC15B4(v68, v68 + v55, v58);

      (*(v53 + 8))(v26, v18);
      OUTLINED_FUNCTION_25_19();
      sub_24DF8BFF4(v59, v60);
      OUTLINED_FUNCTION_22_1();
      __swift_storeEnumTagSinglePayload(v61, v62, v63, v54);
      v64 = OUTLINED_FUNCTION_13_0();
LABEL_12:
      sub_24DFB4B20(v64, v65, &qword_27F1E6030);

      goto LABEL_13;
    }

    v34 = v32;
    v35 = v17;
  }

  else
  {
    v36 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
    OUTLINED_FUNCTION_5_16();
    v37 = *(v1 + v36);
    if (!v37)
    {
      goto LABEL_16;
    }

    sub_24DF88A8C(0, &qword_27F1E6028);
    v38 = v4;
    v39 = v37;
    v40 = sub_24E348628();

    if ((v40 & 1) == 0)
    {
      goto LABEL_16;
    }

    v32 = *(v1 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource);
    sub_24DFAE87C(v70, v14, &unk_27F1E6C80);
    OUTLINED_FUNCTION_17_4(v14, 1, v18);
    if (!v33)
    {
      v42 = v66;
      (*(v66 + 32))(v23, v14, v18);
      v43 = v67;
      v44 = *(v67 + 48);
      v45 = *((*MEMORY[0x277D85000] & *v1) + 0x228);
      v70 = v32;
      v46 = v45();
      v47 = sub_24E3434D8();
      v48 = v68;
      sub_24E0CAA54(v68, v68 + v44, v47);

      (*(v42 + 8))(v23, v18);
      v49 = v69;
      sub_24DF8BFF4(v69, &qword_27F1E6030);
      OUTLINED_FUNCTION_22_1();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v43);
      v64 = v48;
      v65 = v49;
      goto LABEL_12;
    }

    v41 = v32;
    v35 = v14;
  }

  sub_24DF8BFF4(v35, &unk_27F1E6C80);
LABEL_13:
  if (v32)
  {
    OUTLINED_FUNCTION_18();
    return;
  }

  __break(1u);
LABEL_16:
  OUTLINED_FUNCTION_10_40();
  __break(1u);
}

id sub_24E174D18(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = v35 - v6;
  v8 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = v13 - v12;
  v35[1] = [a2 identifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA8D0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v8);
    (*(v10 + 32))(v14, v7, v8);
    v18 = sub_24E343488();
    v19 = [a1 cellForItemAtIndexPath_];

    if (v19)
    {
      v20 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
      v21 = v19;
      [v21 frame];
      Width = CGRectGetWidth(v36);
      [v21 frame];
      Height = CGRectGetHeight(v37);
      ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
      v25 = 16.0;
      if (ShouldUsePadUI)
      {
        v25 = 0.0;
      }

      v26 = Height - v25;
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for PlayerCardTheme();
      __swift_project_value_buffer(v27, qword_27F20BF00);
      v28 = [objc_allocWithZone(MEMORY[0x277D75C80]) init];
      v29 = sub_24E336558();

      v30 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, Width, v26, v29}];
      [v20 setVisiblePath_];

      v31 = [objc_opt_self() clearColor];
      [v20 setBackgroundColor_];

      sub_24DF88A8C(0, &qword_27F1E6CE0);
      v19 = sub_24E2E1614(v21, v20);
    }

    v32 = OUTLINED_FUNCTION_2_34();
    v33(v32);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_24DF8BFF4(v7, &unk_27F1E6C80);
    return 0;
  }

  return v19;
}

id BaseSplitCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void BaseSplitCollectionViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_leftPaneBackgroundView;
  v2 = objc_allocWithZone(type metadata accessor for GradientView());
  v3 = OUTLINED_FUNCTION_1_38();
  *(v0 + v1) = [v4 v5];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_currentLayoutType) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_shouldDisplayCustomHeader) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCompositionalLayout) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource) = 0;
  v6 = (v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController____lazy_storage___updateCollectionViewConstraintOnce);
  *v6 = 0;
  v6[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E1752E0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24E1721C4(v1);
}

void sub_24E175368()
{
  if (([v0 isViewLoaded] & 1) == 0)
  {
    v21.receiver = v0;
    v21.super_class = type metadata accessor for BaseSplitCollectionViewController();
    objc_msgSendSuper2(&v21, sel_loadView);
    v1 = [v0 collectionView];
    if (v1)
    {
      v2 = v1;
      [v1 setTranslatesAutoresizingMaskIntoConstraints_];

      v3 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
      v4 = objc_allocWithZone(MEMORY[0x277D752A0]);
      v5 = OUTLINED_FUNCTION_1_38();
      v8 = [v6 v7];

      v9 = v8;
      [v9 setAutoresizingMask_];
      [v9 setLayoutMargins_];
      v10 = [objc_opt_self() clearColor];
      [v9 setBackgroundColor_];

      v11 = v9;
      [v11 setAlwaysBounceVertical_];
      [v11 setDelegate_];
      [v11 setShowsVerticalScrollIndicator_];
      [v11 setScrollsToTop_];

      v12 = [v0 collectionView];
      if (v12)
      {
        v13 = v12;
        [v12 setScrollsToTop_];

        v14 = [v0 view];
        if (v14)
        {
          v15 = v14;
          [v14 addSubview_];

          v16 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
          OUTLINED_FUNCTION_22_6();
          v17 = *&v0[v16];
          *&v0[v16] = v11;
          v18 = v11;

          [v18 setTranslatesAutoresizingMaskIntoConstraints_];
          sub_24E174200();
          v19 = [v0 collectionView];
          if (v19)
          {
            v20 = v19;
            [v19 setShowsVerticalScrollIndicator_];

            return;
          }

LABEL_11:
          __break(1u);
          return;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }
}

void sub_24E17566C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  OUTLINED_FUNCTION_8_2();

  OUTLINED_FUNCTION_7_2();
}

uint64_t sub_24E175894()
{

  sub_24E3448A8();

  type metadata accessor for BaseSplitPresenter();
  OUTLINED_FUNCTION_5_69();

  return swift_dynamicCastClassUnconditional();
}

id sub_24E1758F4(uint64_t a1)
{
  sub_24E174200();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BaseSplitCollectionViewController();
  return objc_msgSendSuper2(&v4, sel_traitCollectionDidChange_, a1);
}

void sub_24E1759A8(void *a1)
{
  v3 = [v1 navigationController];
  v4 = [v3 topViewController];

  if (v4)
  {
    sub_24DF88A8C(0, &qword_27F1E05B0);
    v5 = v1;
    OUTLINED_FUNCTION_13_0();
    v6 = sub_24E348628();

    if (v6)
    {
      v7 = [v5 traitCollection];
      v8 = [v7 userInterfaceIdiom];

      if (v8 == 1 || GKIsXRUIIdiomShouldUsePadUI())
      {
        OUTLINED_FUNCTION_21_2();
        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11[4] = sub_24E1795F0;
        v11[5] = v9;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 1107296256;
        v11[2] = sub_24DFFFA1C;
        v11[3] = &block_descriptor_58;
        v10 = _Block_copy(v11);

        [a1 animateAlongsideTransition:v10 completion:0];
        _Block_release(v10);
      }
    }
  }
}

void sub_24E175B48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 traitCollection];
    }

    else
    {
      v4 = 0;
    }

    [v1 traitCollectionDidChange_];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 view];

    if (v7)
    {
      [v7 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24E175CC4()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseSplitCollectionViewController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  if (!*&v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator])
  {
    goto LABEL_4;
  }

  v1 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_17_28();
  v2 = *&v0[v1];
  if (v2)
  {

    [v2 bounds];
    sub_24E3476D8();

LABEL_4:
    sub_24E011518();
    return;
  }

  __break(1u);
}

uint64_t sub_24E175DAC(char a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for BaseSplitCollectionViewController();
  result = objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  v5 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator;
  if (*&v2[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator])
  {
    v6 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
    result = OUTLINED_FUNCTION_17_28();
    v7 = *&v2[v6];
    if (v7)
    {

      [v7 bounds];
      sub_24E3476D8();

      if (*&v2[v5])
      {

        sub_24E347738();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_24E175EC0(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BaseSplitCollectionViewController();
  result = objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1 & 1);
  if (*&v1[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator])
  {

    sub_24E347738();
  }

  return result;
}

uint64_t sub_24E175F80(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BaseSplitCollectionViewController();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  v3 = sub_24E1745C0();
  v3();
}

uint64_t sub_24E1760B8(void *a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v120 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  OUTLINED_FUNCTION_0_14();
  v107 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v105 = v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v106 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v111 = &v103 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  OUTLINED_FUNCTION_4_5(v16);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_3();
  v114 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_0_14();
  v112 = v20;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_3();
  v113 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v23);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15_3();
  v117 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v115 = v27;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15_3();
  v116 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  OUTLINED_FUNCTION_4_5(v30);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_32_14();
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6020);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12_1();
  v109 = (v33 - v34);
  *&v36 = MEMORY[0x28223BE20](v35).n128_u64[0];
  v38 = (&v103 - v37);
  v39 = [v3 collectionView];
  v118 = v38;
  if (v39)
  {
    v40 = v39;
    sub_24DF88A8C(0, &qword_27F1E6028);
    v41 = a1;
    v42 = sub_24E348628();

    if (v42)
    {
      v43 = v26;
      v44 = v19;
      v45 = a1;
      v46 = sub_24E343488();
      v47 = type metadata accessor for BaseSplitCollectionViewController();
      v121.receiver = v5;
      v121.super_class = v47;
      objc_msgSendSuper2(&v121, sel_collectionView_willDisplayCell_forItemAtIndexPath_, v41, v120, v46);
LABEL_9:

      a1 = v45;
      v19 = v44;
      v26 = v43;
      v38 = v118;
LABEL_10:
      v56 = sub_24E343488();
      v57 = type metadata accessor for BaseSplitCollectionViewController();
      v122.receiver = v5;
      v122.super_class = v57;
      objc_msgSendSuper2(&v122, sel_collectionView_willDisplayCell_forItemAtIndexPath_, a1, v120, v56);

      v58 = sub_24E343518();
      OUTLINED_FUNCTION_5_2();
      (*(v59 + 16))(v4, a3, v58);
      OUTLINED_FUNCTION_22_1();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v58);
      sub_24E1747A4();
      v64 = v63;
      sub_24DF8BFF4(v4, &unk_27F1E6C80);
      *v38 = v64;
      v65 = v117;
      sub_24E344CD8();
      v66 = v65;
      OUTLINED_FUNCTION_17_4(v65, 1, v26);
      if (v73)
      {
        v67 = &unk_27F1E6C70;
        v68 = v65;
      }

      else
      {
        v69 = v115;
        v70 = v116;
        (*(v115 + 32))(v116, v66, v26);
        v71 = sub_24E3434D8();
        v72 = v114;
        sub_24DFB8854(v71, v114);
        OUTLINED_FUNCTION_17_4(v72, 1, v19);
        if (!v73)
        {
          v117 = a1;
          v74 = v112;
          v75 = OUTLINED_FUNCTION_2_34();
          v76(v75);
          v77 = v120;
          swift_getObjectType();
          v78 = dynamic_cast_existential_1_conditional(v77);
          if (v78)
          {
            v104 = v79;
            v114 = v78;
            v80 = v109;
            sub_24DFAE87C(v118, v109, &qword_27F1E6020);
            v81 = *v80;
            v120 = v77;

            v82 = *(v119 + 48);
            v83 = v110;
            OUTLINED_FUNCTION_17_4(v80 + v82, 1, v110);
            if (v73)
            {

              v84 = OUTLINED_FUNCTION_44_6();
              v85(v84);
              (*(v69 + 8))(v116, v26);
              v101 = &qword_27F1E6030;
              v100 = v80 + v82;
            }

            else
            {
              v88 = v80 + v82;
              v89 = v111;
              sub_24DFB4B20(v88, v111, &unk_27F1E1CA0);
              v90 = *&v5[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_components];
              v119 = v19;
              v91 = v106;
              sub_24DFAE87C(v89, v106, &unk_27F1E1CA0);
              v92 = *(v83 + 48);
              v110 = v26;

              v93 = v105;
              v94 = v116;
              sub_24E3448C8();

              v95 = sub_24DFC15B8();
              v96 = a3;
              v97 = v113;
              (*(*v90 + 152))(v114, v104, v96, v94, v113, v91, v91 + v92, v93, v117, v95);

              (*(v107 + 8))(v93, v108);
              sub_24DF8BFF4(v111, &unk_27F1E1CA0);
              (*(v74 + 8))(v97, v119);
              (*(v69 + 8))(v94, v110);
              OUTLINED_FUNCTION_25_19();
              sub_24DF8BFF4(v98, v99);
              OUTLINED_FUNCTION_25_19();
            }

            sub_24DF8BFF4(v100, v101);
          }

          else
          {
            v86 = OUTLINED_FUNCTION_44_6();
            v87(v86);
            (*(v69 + 8))(v116, v26);
          }

          v38 = v118;
          return sub_24DF8BFF4(v38, &qword_27F1E6020);
        }

        (*(v69 + 8))(v70, v26);
        v67 = &unk_27F1E1CB0;
        v68 = v72;
      }

      sub_24DF8BFF4(v68, v67);
      return sub_24DF8BFF4(v38, &qword_27F1E6020);
    }
  }

  v48 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_5_16();
  v49 = *&v5[v48];
  if (v49)
  {
    sub_24DF88A8C(0, &qword_27F1E6028);
    v50 = a1;
    v51 = v49;
    v52 = sub_24E348628();

    if (v52)
    {
      if (!*&v5[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator])
      {
        goto LABEL_10;
      }

      v43 = v26;
      v44 = v19;
      v45 = a1;

      [v120 frame];
      if (*&v5[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource])
      {
        OUTLINED_FUNCTION_8_2();
        v46 = v53;
        OUTLINED_FUNCTION_7_2();
        sub_24E136610(v54, v55);

        goto LABEL_9;
      }

      __break(1u);
    }
  }

  result = OUTLINED_FUNCTION_10_40();
  __break(1u);
  return result;
}

void sub_24E176A94(void *a1, void *a2)
{
  v3 = v2;
  v6 = [v2 collectionView];
  if (v6)
  {
    v7 = v6;
    sub_24DF88A8C(0, &qword_27F1E6028);
    v8 = a1;
    v9 = sub_24E348628();

    if (v9)
    {
      v10 = sub_24E343488();
      v23.receiver = v3;
      v23.super_class = type metadata accessor for BaseSplitCollectionViewController();
      objc_msgSendSuper2(&v23, sel_collectionView_didEndDisplayingCell_forItemAtIndexPath_, v8, a2, v10);
      goto LABEL_10;
    }
  }

  v11 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_5_16();
  v12 = *&v3[v11];
  if (!v12 || (sub_24DF88A8C(0, &qword_27F1E6028), v13 = a1, v14 = v12, v15 = sub_24E348628(), v14, v13, (v15 & 1) == 0))
  {
LABEL_13:
    OUTLINED_FUNCTION_10_40();
    __break(1u);
    return;
  }

  swift_getObjectType();
  v16 = dynamic_cast_existential_1_conditional(a2);
  if (!v16)
  {
    return;
  }

  v18 = v16;
  v19 = v17;
  v20 = sub_24DFC15B8();
  v10 = a2;

  sub_24E1E1904(v18, v19, v13, v20);

  if (*&v3[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator])
  {
    v21 = *&v3[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource];
    if (v21)
    {

      v22 = v21;
      OUTLINED_FUNCTION_13_0();
      sub_24E136D60();

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_10:
}

uint64_t sub_24E176CF4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  sub_24E343498();
  v17 = a3;
  v18 = a4;
  v19 = a1;
  a6(v17, v18, v16);

  return (*(v12 + 8))(v16, v10);
}

void sub_24E176E68(void *a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for BaseSplitCollectionViewController();
  objc_msgSendSuper2(&v15, sel_scrollViewDidScroll_, a1);
  if (*&v2[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator])
  {

    [a1 bounds];
    sub_24E3476D8();
  }

  v4 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_17_28();
  v5 = *&v2[v4];
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v5 contentOffset];
  v7 = v6;
  v8 = [v2 collectionView];
  if (!v8)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  [v8 contentOffset];
  v11 = v10;

  if (v11 < v7)
  {
    v12 = *&v2[v4];
    if (v12)
    {
      v13 = v12;
LABEL_10:
      sub_24E010F0C();

      return;
    }

    goto LABEL_13;
  }

  v14 = [v2 collectionView];
  if (v14)
  {
    v13 = v14;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_24E177048(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v53 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = v53 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v20 = Strong;
  v21 = *(Strong + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource);
  if (!v21)
  {
    goto LABEL_15;
  }

  v55 = v15;
  v22 = v21;
  sub_24DFB8854(a1, v11);

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    v58 = v13;
    v23 = *(v13 + 32);
    v53[1] = v13 + 32;
    v54 = v23;
    v23(v18, v11, v12);
    sub_24E17226C();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = *MEMORY[0x277D85000] & *v20;
    v59 = v12;
    v33 = v18;
    v34 = *(v32 + 552);

    v36 = v34(v35);
    sub_24E0CAA54(v8, v5, a1);

    v37 = sub_24DFC15B8();
    v38 = sub_24E1E108C(v33, v8, v5, v37, v56, v25, v27, v29, v31);

    sub_24DF8BFF4(v5, &unk_27F1E1CB0);
    sub_24DF8BFF4(v8, &unk_27F1E1CB0);
    [v38 contentInsets];
    [v38 setContentInsets_];
    [v38 contentInsets];
    [v38 setContentInsets_];
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = v59;
    v42 = v58 + 16;
    v41 = *(v58 + 16);
    v11 = v55;
    v56 = v33;
    v41(v55, v33, v59);
    v43 = (*(v42 + 64) + 16) & ~*(v42 + 64);
    v44 = (v57 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    v54(v45 + v43, v11, v40);
    *(v45 + v44) = v39;
    aBlock[4] = sub_24E179818;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E288CBC;
    aBlock[3] = &block_descriptor_68;
    v46 = _Block_copy(aBlock);

    [v38 setVisibleItemsInvalidationHandler_];
    _Block_release(v46);
    v47 = [v38 decorationItems];
    sub_24DF88A8C(0, &qword_27F1E7690);
    v48 = sub_24E347F08();

    v49 = sub_24DFD8654(v48);
    for (i = 0; ; ++i)
    {
      if (v49 == i)
      {

        (*(v58 + 8))(v56, v59);
        return v38;
      }

      if ((v48 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x25303F560](i, v48);
      }

      else
      {
        if (i >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v51 = *(v48 + 8 * i + 32);
      }

      v11 = v51;
      if (__OFADD__(i, 1))
      {
        break;
      }

      [v51 contentInsets];
      [v11 setContentInsets_];
      [v11 contentInsets];
      [v11 setContentInsets_];
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  sub_24DF8BFF4(v11, &unk_27F1E1CB0);
LABEL_17:
  result = sub_24E348AE8();
  __break(1u);
  return result;
}

uint64_t sub_24E177678(uint64_t a1, void *a2)
{
  v3 = sub_24E347478();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_24E3474B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_24DF8BFF4(v8, &qword_27F1E58A0);
  }

  (*(v10 + 32))(v12, v8, v9);
  [objc_msgSend(a2 container)];
  swift_unknownObjectRelease();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(Strong + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator);

    if (v16)
    {
      sub_24E347498();
      sub_24E347728();

      (*(v17 + 8))(v5, v3);
    }
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_24E1779C8()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  OUTLINED_FUNCTION_0_14();
  v35 = v5;
  v36 = v4;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_3();
  v34 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_32_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v37 = v11;
  v38 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_3();
  v33 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  OUTLINED_FUNCTION_4_5(v14);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6020);
  OUTLINED_FUNCTION_4_5(v16);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_13_6();
  v18 = sub_24E343518();
  OUTLINED_FUNCTION_5_2();
  v19 = OUTLINED_FUNCTION_44_6();
  v20(v19);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v18);
  sub_24E1747A4();
  v25 = v24;
  v26 = OUTLINED_FUNCTION_2_34();
  sub_24DF8BFF4(v26, v27);
  *v0 = v25;
  v28 = sub_24E343488();
  v29 = [v3 cellForItemAtIndexPath_];

  if (v29)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v29))
    {
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_17_4(v1, 1, v38);
      if (v30)
      {

        sub_24DF8BFF4(v1, &unk_27F1E6C70);
      }

      else
      {
        (*(v37 + 32))(v33, v1, v38);
        swift_getObjectType();

        sub_24E3448C8();

        sub_24DFC15B8();
        v31 = OUTLINED_FUNCTION_44_6();
        v32(v31);

        (*(v35 + 8))(v34, v36);
        (*(v37 + 8))(v33, v38);
      }
    }

    else
    {
    }
  }

  sub_24DF8BFF4(v0, &qword_27F1E6020);
  OUTLINED_FUNCTION_18();
}

void sub_24E177EB4()
{
  OUTLINED_FUNCTION_32();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0);
  OUTLINED_FUNCTION_0_14();
  v45 = v9;
  v46 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_3();
  v43 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v12);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_32_14();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v42 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_3();
  v41 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  OUTLINED_FUNCTION_4_5(v17);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6020);
  OUTLINED_FUNCTION_4_5(v21);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13_6();
  v23 = sub_24E343518();
  OUTLINED_FUNCTION_5_2();
  (*(v24 + 16))(v20, v5, v23);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
  v44 = v3;
  sub_24E1747A4();
  v29 = v28;
  sub_24DF8BFF4(v20, &unk_27F1E6C80);
  *v1 = v29;
  v30 = sub_24E343488();
  v31 = [v7 cellForItemAtIndexPath_];

  if (v31)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v31))
    {
      OUTLINED_FUNCTION_49_5();
      v32 = v47;
      OUTLINED_FUNCTION_17_4(v2, 1, v47);
      if (v33)
      {

        sub_24DF8BFF4(v2, &unk_27F1E6C70);
      }

      else
      {
        v34 = v42;
        v35 = *(v42 + 32);
        v40 = v30;
        v36 = v41;
        v35(v41, v2, v32);
        ObjectType = swift_getObjectType();

        v38 = v43;
        sub_24E3448B8();

        v39 = sub_24DFC15B8();
        v40[16](v36, v38, v39, ObjectType);

        (*(v45 + 8))(v38, v46);
        (*(v34 + 8))(v36, v32);
      }
    }

    else
    {
    }
  }

  sub_24DF8BFF4(v1, &qword_27F1E6020);
  OUTLINED_FUNCTION_18();
}

void sub_24E1783A0()
{
  OUTLINED_FUNCTION_32();
  v86 = v0;
  v87 = v1;
  v3 = v2;
  v76 = v4;
  v77 = v5;
  v75 = v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v78 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v74 = v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v12);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_3();
  v85 = v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v81 = v15;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_3();
  v80 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  OUTLINED_FUNCTION_4_5(v18);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v19);
  v21 = v73 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_0_14();
  v84 = v23;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v24);
  v26 = v73 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  OUTLINED_FUNCTION_4_5(v27);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v28);
  v30 = v73 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6020);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12_1();
  v35 = (v33 - v34);
  MEMORY[0x28223BE20](v36);
  v38 = (v73 - v37);
  v39 = sub_24E343518();
  OUTLINED_FUNCTION_5_2();
  (*(v40 + 16))(v30, v3, v39);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v39);
  sub_24E1747A4();
  v45 = v44;
  v46 = v30;
  v47 = v22;
  sub_24DF8BFF4(v46, &unk_27F1E6C80);
  *v38 = v45;
  v82 = v3;
  v48 = sub_24E3434D8();
  sub_24DFB8854(v48, v21);
  OUTLINED_FUNCTION_17_4(v21, 1, v22);
  if (v55)
  {
    v49 = &unk_27F1E1CB0;
    v50 = v21;
  }

  else
  {
    v51 = v84;
    (*(v84 + 32))(v26, v21, v22);
    v52 = v85;
    sub_24E344CD8();
    v53 = v52;
    v54 = v83;
    OUTLINED_FUNCTION_17_4(v53, 1, v83);
    if (v55)
    {
      (*(v51 + 8))(v26, v47);
      v49 = &unk_27F1E6C70;
      v50 = v85;
    }

    else
    {
      v73[1] = v47;
      v57 = v80;
      v56 = v81;
      (*(v81 + 32))(v80, v85, v54);
      sub_24DFAE87C(v38, v35, &qword_27F1E6020);

      v58 = *(v31 + 48);
      v59 = v79;
      OUTLINED_FUNCTION_17_4(v35 + v58, 1, v79);
      if (v60)
      {
        (*(v56 + 8))(v57, v54);
        v61 = OUTLINED_FUNCTION_41_7();
        v62(v61);
        v49 = &qword_27F1E6030;
        v50 = v35 + v58;
      }

      else
      {
        v63 = v74;
        sub_24DFB4B20(v35 + v58, v74, &unk_27F1E1CA0);
        v64 = *(v86 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_components);
        v65 = v78;
        sub_24DFAE87C(v63, v78, &unk_27F1E1CA0);
        v66 = *(v59 + 48);
        v67 = objc_allocWithZone(type metadata accessor for CollectionViewLayoutEnvironment());

        v68 = sub_24E12AAC0(v87);
        (*(*v64 + 160))(v75, v76, v77, v82, v57, v26, v65, v65 + v66, v68);

        sub_24DF8BFF4(v63, &unk_27F1E1CA0);
        (*(v56 + 8))(v57, v83);
        v69 = OUTLINED_FUNCTION_41_7();
        v70(v69);
        OUTLINED_FUNCTION_25_19();
        sub_24DF8BFF4(v71, v72);
        OUTLINED_FUNCTION_25_19();
      }
    }
  }

  sub_24DF8BFF4(v50, v49);
  sub_24DF8BFF4(v38, &qword_27F1E6020);
  OUTLINED_FUNCTION_18();
}

void sub_24E178AF4()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v5);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = v34 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v36 = v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_3();
  v35 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  OUTLINED_FUNCTION_4_5(v12);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v15 = v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6020);
  OUTLINED_FUNCTION_4_5(v16);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_13_6();
  v18 = sub_24E343518();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_25_19();
  v19();
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
  v37 = v2;
  sub_24E1747A4();
  v24 = v23;
  sub_24DF8BFF4(v15, &unk_27F1E6C80);
  *v1 = v24;
  v25 = sub_24E343488();
  v26 = [v4 cellForItemAtIndexPath_];

  if (v26)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v26))
    {
      v28 = v27;
      sub_24E344CD8();
      v29 = v38;
      OUTLINED_FUNCTION_17_4(v8, 1, v38);
      if (v30)
      {

        sub_24DF8BFF4(v8, &unk_27F1E6C70);
      }

      else
      {
        v31 = v36;
        v32 = *(v36 + 32);
        v34[1] = v28;
        v33 = v35;
        v32(v35, v8, v29);
        swift_getObjectType();
        sub_24DFC15B8();
        sub_24E29753C();

        (*(v31 + 8))(v33, v29);
      }
    }

    else
    {
    }
  }

  sub_24DF8BFF4(v1, &qword_27F1E6020);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E178F68()
{

  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController____lazy_storage___updateCollectionViewConstraintOnce);

  return sub_24DE73FA0(v1);
}

uint64_t sub_24E1790C4()
{
  sub_24DF88A8C(0, &qword_27F1E1928);
  [swift_getObjCClassFromMetadata() classForCoder];

  return swift_getObjCClassMetadata();
}

void sub_24E179110()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for GradientView();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  v1 = [v0 layer];
  objc_opt_self();
  OUTLINED_FUNCTION_5_69();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint_];

  v2 = [v0 &selRef_isHidden];
  objc_opt_self();
  OUTLINED_FUNCTION_5_69();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint_];

  v3 = [v0 &selRef_isHidden];
  objc_opt_self();
  OUTLINED_FUNCTION_5_69();
  swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E36A270;
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = [v7 CGColor];
  type metadata accessor for CGColor(0);
  v10 = v9;
  *(v4 + 56) = v9;
  *(v4 + 32) = v8;
  v11 = [v5 whiteColor];
  v12 = [v11 colorWithAlphaComponent_];

  v13 = [v12 CGColor];
  *(v4 + 88) = v10;
  *(v4 + 64) = v13;
  v14 = OUTLINED_FUNCTION_13_0();
  sub_24E27B56C(v14, v15);

  v16 = [v0 layer];
  objc_opt_self();
  OUTLINED_FUNCTION_5_69();
  swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24E36BFC0;
  sub_24DF88A8C(0, &qword_27F1E50D0);
  *(v17 + 32) = sub_24E3485D8();
  *(v17 + 40) = sub_24E3485D8();
  v18 = OUTLINED_FUNCTION_13_0();
  sub_24E317694(v18, v19);
}

id sub_24E179430(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_24E1794B8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GradientView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24E179568(uint64_t (*a1)(void), SEL *a2)
{
  v5.receiver = v2;
  v5.super_class = a1();
  return objc_msgSendSuper2(&v5, *a2);
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for BaseSplitCollectionViewController.SplitViewLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E1797BC()
{
  result = qword_27F1E6038;
  if (!qword_27F1E6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6038);
  }

  return result;
}

uint64_t sub_24E179818(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);

  return sub_24E177678(a1, a2);
}

uint64_t OUTLINED_FUNCTION_1_95()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_40()
{

  return sub_24E348AE8();
}

uint64_t OUTLINED_FUNCTION_17_28()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_18_28()
{

  return [v0 (v1 + 2424)];
}

double OUTLINED_FUNCTION_19_23()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetWidth(*&v5);
}

uint64_t OUTLINED_FUNCTION_21_22()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_24_14()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_26_18()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_38_7(void *a1)
{

  return [a1 bottomAnchor];
}

id OUTLINED_FUNCTION_39_4(void *a1)
{

  return [a1 topAnchor];
}

uint64_t OUTLINED_FUNCTION_40_7()
{

  return sub_24E347EE8();
}

uint64_t OUTLINED_FUNCTION_49_5()
{

  return sub_24E344CD8();
}

id OUTLINED_FUNCTION_50_3(void *a1)
{

  return [a1 (v1 + 3365)];
}

id OUTLINED_FUNCTION_51_2()
{

  return [v0 (v1 + 1016)];
}

id OUTLINED_FUNCTION_52_2(void *a1)
{

  return [a1 trailingAnchor];
}

id OUTLINED_FUNCTION_53_3(void *a1)
{

  return [a1 (v1 + 2384)];
}

id OUTLINED_FUNCTION_54_2(void *a1)
{

  return [a1 (v1 + 1321)];
}

id OUTLINED_FUNCTION_55_2(void *a1)
{

  return [a1 (v1 + 1321)];
}

id OUTLINED_FUNCTION_56_2(void *a1)
{

  return [a1 bottomAnchor];
}

Swift::Void __swiftcall GKGame.openAppStorePage()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v20 - v2;
  v4 = sub_24E343288();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_24E348998();

  v8 = [v0 adamID];
  v9 = [v8 description];
  v10 = sub_24E347CF8();
  v12 = v11;

  MEMORY[0x25303E950](v10, v12);

  MEMORY[0x25303E950](0x383D746D3FLL, 0xE500000000000000);
  sub_24E343268();

  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_24DF90BE4(v3);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v13 = objc_opt_self();
    v14 = [v13 sharedApplication];
    v15 = sub_24E343228();
    v16 = [v14 canOpenURL_];

    if (v16)
    {
      v17 = [v13 sharedApplication];
      v18 = sub_24E343228();
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_24E179F3C();
      sub_24E347C28();
      v19 = sub_24E347BE8();

      [v17 openURL:v18 options:v19 completionHandler:0];
    }

    (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_24E179F3C()
{
  result = qword_27F1DE5C0;
  if (!qword_27F1DE5C0)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DE5C0);
  }

  return result;
}

void sub_24E179F94(void *a1)
{
  v1 = a1;
  GKGame.openAppStorePage()();
}

uint64_t getEnumTagSinglePayload for Shelf.ItemKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Shelf.ItemKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

void sub_24E17A1A8()
{
  sub_24E05A340(319, &qword_27F1E6050, &qword_27F1E2180, &unk_24E36CD20, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Shelf.Presentation(319);
    if (v1 <= 0x3F)
    {
      sub_24E17A434(319, &qword_280BE0650, MEMORY[0x277D21F70]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E17A2CC()
{
  sub_24E17A434(319, &qword_27F1E6070, type metadata accessor for HeaderData);
  if (v0 <= 0x3F)
  {
    sub_24E17A434(319, &qword_27F1E6078, type metadata accessor for FooterData);
    if (v1 <= 0x3F)
    {
      sub_24E17A434(319, &qword_27F1E6080, type metadata accessor for NSDirectionalEdgeInsets);
      if (v2 <= 0x3F)
      {
        sub_24E17A488();
        if (v3 <= 0x3F)
        {
          sub_24E05A340(319, &qword_280BE0100, &qword_27F1DF2F8, &unk_24E3800B0, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E17A434(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E348698();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24E17A488()
{
  if (!qword_27F1E6088)
  {
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E6088);
    }
  }
}

uint64_t sub_24E17A4E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  if (*(v3 + 16))
  {

    return sub_24DF89628(v3 + 32, a1);
  }

  else
  {
    sub_24E348998();

    v5 = sub_24E3488D8();
    MEMORY[0x25303E950](v5);

    MEMORY[0x25303E950](0xD000000000000019, 0x800000024E3AA3D0);
    result = sub_24E348AE8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E17A5D8()
{
  v0 = sub_24E348C38();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24E17A62C(char a1)
{
  result = 0x48656C69666F7270;
  switch(a1)
  {
    case 1:
      result = 0x6C6961746564;
      break;
    case 2:
      result = 0x656D616E6B63696ELL;
      break;
    case 3:
      result = 0x616C506C6C616D73;
      break;
    case 4:
    case 7:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x636F4C6C6C616D73;
      break;
    case 6:
      result = 0x65726F7453707061;
      break;
    case 8:
      result = 0x6E49726579616C70;
      break;
    case 9:
      result = 0x6174654474786574;
      break;
    case 10:
      result = 0x615064656C746974;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x666F725074696465;
      break;
    case 14:
      result = 0x6461654865676170;
      break;
    case 15:
      result = 0x646E656972466F6ELL;
      break;
    case 16:
      result = 0x6979616C50776F6ELL;
      break;
    case 17:
      result = 0x65756E69746E6F63;
      break;
    case 18:
      result = 0x7974697669746361;
      break;
    case 19:
      result = 0x72616265646973;
      break;
    case 20:
      result = 0x6C6F686563616C70;
      break;
    case 21:
      result = 0x656E696C6E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E17A8FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E17A5D8();
  *a1 = result;
  return result;
}

unint64_t sub_24E17A92C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24E17A62C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24E17A9E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Shelf(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E17AA30()
{
  result = qword_27F1E6098;
  if (!qword_27F1E6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6098);
  }

  return result;
}

uint64_t sub_24E17AA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf.Presentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_24E17AAE8(void *a1, int a2, id a3, double a4, double a5, double a6, double a7)
{
  [objc_msgSend(a3 container)];
  v12 = v11;
  swift_unknownObjectRelease();
  v13 = v12 - a5;
  v49 = MEMORY[0x277D84F90];
  v14 = objc_opt_self();
  v15 = [v14 fractionalWidthDimension_];
  if (qword_27F1DDA08 != -1)
  {
LABEL_22:
    swift_once();
  }

  a7 = v13 - a7;
  v16 = [v14 absoluteDimension_];
  v17 = objc_opt_self();
  v45 = [v17 sizeWithWidthDimension:v15 heightDimension:v16];

  swift_getKeyPath();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v44 = a1;
  v15 = a1;
  sub_24E347128();

  v18 = 0;
  v19 = *&v48[0];
  v20 = *(*&v48[0] + 16);
  v46 = *&v48[0] + 32;
  v13 = 0.0;
  while (1)
  {
    v21 = 0uLL;
    a1 = v20;
    v22 = 0uLL;
    v23 = 0uLL;
    if (v18 != v20)
    {
      if (v18 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      a1 = (v18 + 1);
      *&v47[0] = v18;
      sub_24DF89628(v46 + 40 * v18, v47 + 8);
      v21 = v47[0];
      v22 = v47[1];
      v23 = v47[2];
    }

    v48[0] = v21;
    v48[1] = v22;
    v48[2] = v23;
    if (!v23)
    {
      break;
    }

    sub_24DE56CE8((v48 + 8), v47);
    type metadata accessor for ActivityFeedBaseCollectionViewCell();
    sub_24E17B560(v47, a3, a7, 2000.0);
    v25 = v24;
    v26 = [v14 fractionalWidthDimension_];
    v27 = [v14 absoluteDimension_];
    v28 = [v17 sizeWithWidthDimension:v26 heightDimension:v27];

    v29 = [objc_opt_self() itemWithLayoutSize_];
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      if (GKIsXRUIIdiomShouldUsePadUI())
      {
        v30 = 8.0;
      }

      else
      {
        v30 = 0.0;
      }

      if (GKIsXRUIIdiomShouldUsePadUI())
      {
        v31 = 0.0;
      }

      else
      {
        v31 = 16.0;
      }

      [v29 setContentInsets_];
    }

    v32 = v29;
    MEMORY[0x25303EA30]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24E347F48();
    }

    v15 = &v49;
    sub_24E347F88();

    __swift_destroy_boxed_opaque_existential_1(v47);
    v13 = v13 + v25;
    v18 = a1;
  }

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    swift_getKeyPath();
    sub_24E347128();

    v33 = *(*&v48[0] + 16);

    sub_24E2D4E50();
    v13 = v13 + v34 * (v33 - 1);
  }

  v35 = [v14 fractionalWidthDimension_];
  v36 = [v14 absoluteDimension_];
  v37 = [v17 sizeWithWidthDimension:v35 heightDimension:v36];

  v38 = objc_opt_self();
  sub_24DF88A8C(0, &qword_27F1EA590);
  v39 = sub_24E347EE8();

  v40 = [v38 verticalGroupWithLayoutSize:v37 subitems:v39];

  v41 = [objc_opt_self() sectionWithGroup_];
  return v41;
}

double sub_24E17B010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_24E120A58(a2, &v10 - v7);
  sub_24E120A58(a3, &v8[*(v5 + 56)]);
  sub_24E120AC8(v8);
  return 0.0;
}

double sub_24E17B0B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24E120A58(a2, &v14 - v9);
  sub_24E120A58(a3, &v10[*(v7 + 56)]);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v11, qword_27F20BF00);
  v12 = [a4 traitCollection];
  sub_24E336638();

  sub_24E120AC8(v10);
  return 0.0;
}

double sub_24E17B1EC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_24E120A58(a1, &v11 - v8);
  sub_24E120A58(a2, &v9[*(v6 + 56)]);
  sub_24E120AC8(v9);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 3;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 1;
  return result;
}

uint64_t sub_24E17B2CC(uint64_t a1, uint64_t a2)
{
  if (qword_27F1DD990 != -1)
  {
    swift_once();
  }

  v4 = (a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
  v5 = *(a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  sub_24E1D7904(v5, v6, v7, v8, a2);
}

id sub_24E17B3B4(uint64_t a1, uint64_t a2)
{
  sub_24DF88A8C(0, &qword_27F1E23C8);
  v4 = sub_24E343488();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return sub_24E072DFC(v4, 0, 0, sub_24E17D1E0, v5);
}

id sub_24E17B468(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ActivityFeedBaseCollectionViewCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

double sub_24E17B560(uint64_t a1, void *a2, double a3, double a4)
{
  v68 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2F20);
  OUTLINED_FUNCTION_0_14();
  v56 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_3();
  v55 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C0);
  OUTLINED_FUNCTION_0_14();
  v59 = v11;
  v60 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_3();
  v58 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5180);
  OUTLINED_FUNCTION_0_14();
  v62 = v15;
  v63 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_3();
  v61 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  OUTLINED_FUNCTION_0_14();
  v65 = v19;
  v66 = v18;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15_3();
  v64 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFBE0);
  OUTLINED_FUNCTION_0_14();
  v67 = v23;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v55 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C8);
  OUTLINED_FUNCTION_0_14();
  v29 = v28;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v55 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  OUTLINED_FUNCTION_0_14();
  v35 = v34;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v55 - v37;
  sub_24DF89628(a1, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  type metadata accessor for ActivityFeedLeaderboardData();
  OUTLINED_FUNCTION_2_76();
  if (swift_dynamicCast())
  {
    v39 = v70;
    type metadata accessor for ActivityFeedLeaderboardView();
    v69 = v39;
    sub_24E17D198(&qword_27F1DE1B8, type metadata accessor for ActivityFeedLeaderboardData);

    sub_24E347158();
    sub_24E2CB6D0(v38, v68, a3);
    OUTLINED_FUNCTION_7_10();

    (*(v35 + 8))(v38, v33);
    goto LABEL_14;
  }

  v40 = v68;
  type metadata accessor for ActivityFeedAchievementData();
  OUTLINED_FUNCTION_2_76();
  if (swift_dynamicCast())
  {
    v41 = v70;
    type metadata accessor for ActivityFeedAchievementView();
    v69 = v41;
    sub_24E17D198(&qword_27F1E60D0, type metadata accessor for ActivityFeedAchievementData);

    sub_24E347158();
    v42 = OUTLINED_FUNCTION_1_96();
    sub_24E2E7E3C(v44, v42, v43);
    OUTLINED_FUNCTION_7_10();

    (*(v29 + 8))(v32, v27);
    goto LABEL_14;
  }

  type metadata accessor for ActivityFeedArtworkData();
  OUTLINED_FUNCTION_2_76();
  if (swift_dynamicCast())
  {
    v45 = v70;
    type metadata accessor for ActivityFeedArtworkView();
    v69 = v45;
    sub_24E17D198(&qword_27F1DFBD0, type metadata accessor for ActivityFeedArtworkData);

    sub_24E347158();
    sub_24E17DB28(a3, v26, v40);
    OUTLINED_FUNCTION_7_10();

    (*(v67 + 8))(v26, v22);
    goto LABEL_14;
  }

  type metadata accessor for ActivityFeedBaseData();
  OUTLINED_FUNCTION_2_76();
  if (OUTLINED_FUNCTION_10_41())
  {
    OUTLINED_FUNCTION_7_41();
    type metadata accessor for ActivityFeedBaseView();
    OUTLINED_FUNCTION_6_57();
    sub_24E17D198(&qword_27F1E2430, type metadata accessor for ActivityFeedBaseData);
    OUTLINED_FUNCTION_9_41();
    v46 = v64;
    OUTLINED_FUNCTION_5_70();
    OUTLINED_FUNCTION_1_96();
    sub_24E085C94();
    OUTLINED_FUNCTION_7_10();

    v48 = v65;
    v47 = v66;
LABEL_13:
    (*(v48 + 8))(v46, v47);
    goto LABEL_14;
  }

  type metadata accessor for ActivityFeedHeaderData();
  OUTLINED_FUNCTION_2_76();
  if (OUTLINED_FUNCTION_10_41())
  {
    OUTLINED_FUNCTION_7_41();
    type metadata accessor for ActivityFeedHeaderView();
    OUTLINED_FUNCTION_6_57();
    sub_24E17D198(&qword_27F1E2438, type metadata accessor for ActivityFeedHeaderData);
    OUTLINED_FUNCTION_9_41();
    v46 = v61;
    OUTLINED_FUNCTION_5_70();
    OUTLINED_FUNCTION_1_96();
    sub_24E12B6C0();
    OUTLINED_FUNCTION_7_10();

    v48 = v62;
    v47 = v63;
    goto LABEL_13;
  }

  type metadata accessor for ActivityFeedAddFriendsData(0);
  OUTLINED_FUNCTION_2_76();
  if (OUTLINED_FUNCTION_10_41())
  {
    OUTLINED_FUNCTION_7_41();
    type metadata accessor for ActivityFeedAddFriendsView();
    OUTLINED_FUNCTION_6_57();
    sub_24E17D198(&qword_27F1E1010, type metadata accessor for ActivityFeedAddFriendsData);
    OUTLINED_FUNCTION_9_41();
    v46 = v58;
    OUTLINED_FUNCTION_5_70();
    v49 = OUTLINED_FUNCTION_1_96();
    sub_24E20BA98(v49, v50, v51, v52);
    OUTLINED_FUNCTION_7_10();

    v48 = v59;
    v47 = v60;
    goto LABEL_13;
  }

  type metadata accessor for ActivityFeedLoadMoreData(0);
  OUTLINED_FUNCTION_2_76();
  if (OUTLINED_FUNCTION_10_41())
  {
    OUTLINED_FUNCTION_7_41();
    type metadata accessor for ActivityFeedLoadMoreView();
    OUTLINED_FUNCTION_6_57();
    sub_24E17D198(&qword_27F1E20E0, type metadata accessor for ActivityFeedLoadMoreData);
    OUTLINED_FUNCTION_9_41();
    v54 = v55;
    OUTLINED_FUNCTION_5_70();
    OUTLINED_FUNCTION_1_96();
    sub_24E0A9FB4();
    OUTLINED_FUNCTION_7_10();

    (*(v56 + 8))(v54, v57);
  }

  else
  {
    a4 = 0.0;
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v71);
  return a4;
}

uint64_t sub_24E17BD78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  sub_24E347148();

  return 1;
}

uint64_t sub_24E17BDC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  sub_24E347148();
}

id sub_24E17BE14(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  sub_24E347148();
  v3 = sub_24E17B3B4(v5, a2);

  return v3;
}

uint64_t sub_24E17BE8C(uint64_t a1, void *a2, uint64_t a3)
{
  v103 = a3;
  v4 = type metadata accessor for ActivityFeedRelationshipAchievement();
  v92 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v94 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v5;
  MEMORY[0x28223BE20](v6);
  v95 = v86 - v7;
  v109 = MEMORY[0x277D84F90];
  v110 = MEMORY[0x277D84F90];
  v8 = swift_allocObject();
  v105 = v8;
  v106 = a2;
  *(v8 + 16) = 0;
  v9 = (v8 + 16);
  v10 = sub_24E0E547C();
  v11 = *(v10 + 16);
  v104 = v9;
  if (v11)
  {
    v102 = objc_opt_self();
    swift_beginAccess();
    v12 = 32;
    v99 = v10;
    do
    {
      v14 = *(v10 + v12 + 16);
      v13 = *(v10 + v12 + 32);
      v15 = *(v10 + v12);
      v116 = *(v10 + v12 + 48);
      v114 = v14;
      v115 = v13;
      v113 = v15;
      v16 = v15;
      sub_24DFC5470(&v113, __dst);
      v17 = [v102 local];
      v18 = [v17 internal];

      v19 = [v18 playerID];
      v20 = sub_24E347CF8();
      v22 = v21;

      if (v16 == v20 && *(&v16 + 1) == v22)
      {
      }

      else
      {
        v24 = sub_24E348C08();

        if ((v24 & 1) == 0)
        {
          v101 = v114;
          v100 = sub_24DF88A8C(0, &qword_27F1DFB08);
          v25 = swift_allocObject();
          v26 = v114;
          *(v25 + 16) = v113;
          *(v25 + 32) = v26;
          *(v25 + 48) = v115;
          v28 = v105;
          v27 = v106;
          *(v25 + 64) = v116;
          *(v25 + 72) = v27;
          *(v25 + 80) = v103;
          *(v25 + 88) = v28;
          sub_24DFC5470(&v113, __dst);

          v29 = sub_24E348658();
          if (qword_27F1DD990 != -1)
          {
            swift_once();
          }

          v30 = sub_24E1D79D8(v16, *(&v16 + 1));
          v31 = v104;
          if (v30)
          {
            v32 = v30;
            [v29 setImage_];
          }

          v10 = v99;
          if (__OFADD__(*v31, 1))
          {
            goto LABEL_55;
          }

          ++*v31;
          v33 = v29;
          MEMORY[0x25303EA30]();
          if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24E347F48();
          }

          sub_24E347F88();
        }
      }

      sub_24DFC54CC(&v113);
      v12 += 56;
      --v11;
    }

    while (v11);
  }

  v34 = (v106 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
  v35 = *(v106 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships + 8);
  v36 = v35[2];
  v99 = (v106 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
  if (v36)
  {
    v101 = sub_24DF88A8C(0, &qword_27F1DFB08);

    swift_beginAccess();
    v37 = 4;
    v100 = v35;
    v38 = v105;
    while (1)
    {
      memcpy(__dst, &v35[v37], sizeof(__dst));
      v39 = __dst[1];
      v102 = __dst[0];
      v40 = swift_allocObject();
      memmove(v40 + 2, &v35[v37], 0x48uLL);
      v41 = v103;
      v40[11] = v106;
      v40[12] = v41;
      v40[13] = v38;
      sub_24E00FD28(__dst, v111);

      sub_24E00FD28(__dst, v111);

      v27 = sub_24E348658();
      if (qword_27F1DD990 != -1)
      {
        swift_once();
      }

      v42 = sub_24E1D79D8(v102, v39);
      v43 = v104;
      if (v42)
      {
        v44 = v42;
        [v27 setImage_];
      }

      if (__OFADD__(*v43, 1))
      {
        break;
      }

      ++*v43;
      v45 = v27;
      MEMORY[0x25303EA30]();
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();

      sub_24E00FD84(__dst);
      v37 += 9;
      --v36;
      v35 = v100;
      if (!v36)
      {

        v34 = v99;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_29:
  v46 = v34[2];
  v47 = *(v46 + 16);
  if (v47)
  {

    swift_beginAccess();
    v96 = "flag.filled.and.flag.crossed";
    v48 = 32;
    v93 = v46;
    do
    {
      memcpy(v111, (v46 + v48), sizeof(v111));
      v49 = v34[1];
      if (*(v49 + 16))
      {
        memcpy(v108, (v49 + 32), 0x48uLL);
        v50 = *v34;
        if (*(*v34 + 16))
        {
          v102 = v111[2];
          v51 = v50[5];
          v98 = v50[7];
          v100 = v50[10];
          v101 = sub_24DF88A8C(0, &qword_27F1DFB08);
          v52 = swift_allocObject();
          memcpy(v52 + 2, v111, 0x48uLL);
          v27 = v105;
          v53 = v103;
          v52[11] = v106;
          v52[12] = v53;
          v52[13] = v27;
          sub_24E00F7A8(v111, v107);

          sub_24E00F7A8(v111, v107);
          sub_24E00FD28(v108, v107);
          v97 = v51;

          v54 = v100;

          v55 = sub_24E348658();
          sub_24DF88A8C(0, &qword_280BE0110);
          v56 = sub_24E1A5748(0xD00000000000001DLL, v96 | 0x8000000000000000, 0);
          [v55 setImage_];

          v57 = v27[2];
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_53;
          }

          *v104 = v59;
          v60 = v55;
          MEMORY[0x25303EA30]();
          if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24E347F48();
          }

          sub_24E347F88();
          sub_24E00FD84(v108);

          sub_24E00FC70(v111);
          v34 = v99;
          v46 = v93;
        }
      }

      v48 += 72;
      --v47;
    }

    while (v47);
  }

  v61 = v34[3];
  v62 = *(v61 + 16);
  v63 = v95;
  if (v62)
  {
    v64 = v92;
    v65 = *(v92 + 80);
    v66 = v61 + ((v65 + 32) & ~v65);
    v86[1] = v34[3];

    swift_beginAccess();
    v67 = *(v64 + 72);
    v92 = (v65 + 16) & ~v65;
    v93 = v65;
    v91 = (v91 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
    v88 = "";
    v89 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
    v87 = v67;
    do
    {
      sub_24DF911B8(v66, v63);
      v68 = v34[1];
      if (*(v68 + 16) && (memcpy(v108, (v68 + 32), 0x48uLL), v69 = *v34, *(*v34 + 16)))
      {
        v70 = v69[5];
        v98 = v69[7];
        v71 = v69[9];
        v100 = v69[10];
        v72 = sub_24DF88A8C(0, &qword_27F1DFB08);
        v27 = *(v63 + 24);
        v101 = *(v63 + 16);
        v102 = v72;
        v73 = v94;
        sub_24DF911B8(v63, v94);
        v74 = v89;
        v75 = swift_allocObject();
        sub_24E00FCC4(v73, v75 + v92);
        v76 = v105;
        v77 = v90;
        *(v75 + v91) = v106;
        *(v75 + v77) = v103;
        *(v75 + v74) = v76;

        sub_24E00FD28(v108, v107);
        v97 = v70;

        v96 = v71;

        v78 = v100;

        v79 = sub_24E348658();
        sub_24DF88A8C(0, &qword_280BE0110);
        v80 = sub_24E1A5748(0xD00000000000002FLL, v88 | 0x8000000000000000, 0);
        [v79 setImage_];

        v81 = v76[2];
        v58 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v58)
        {
          goto LABEL_54;
        }

        *v104 = v82;
        v83 = v79;
        MEMORY[0x25303EA30]();
        if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24E347F48();
        }

        sub_24E347F88();
        sub_24E00FD84(v108);

        v63 = v95;
        sub_24DF9121C(v95);
        v34 = v99;
        v67 = v87;
      }

      else
      {
        sub_24DF9121C(v63);
      }

      v66 += v67;
      --v62;
    }

    while (v62);
  }

  sub_24DF88A8C(0, &qword_27F1E0068);
  v27 = sub_24E348588();
  MEMORY[0x25303EA30]();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_56:
    sub_24E347F48();
  }

  sub_24E347F88();
  v84 = sub_24E348588();

  return v84;
}

uint64_t sub_24E17CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ActivityFeedBaseData();
  swift_beginAccess();
  v6 = *(a5 + 16);
  *&v8[0] = 0x614E726579616C70;
  *(&v8[0] + 1) = 0xEA0000000000656DLL;
  v8[1] = xmmword_24E36C460;
  v9 = v6;
  v10 = 3;
  sub_24E0E21CC(v8);
  sub_24E0E22BC();
}

uint64_t sub_24E17CC38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ActivityFeedBaseData();
  v9 = *a2;
  v10 = a2[1];
  swift_beginAccess();
  v11 = *(a5 + 16);
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = 3;
  v12 = sub_24E0E21CC(&v14);
  sub_24E0E293C(a2, a3, a4, 1, v12);
}

uint64_t sub_24E17CCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ActivityFeedBaseData();
  swift_beginAccess();
  v6 = *(a5 + 16);
  *&v8[0] = 0x6F6272656461656CLL;
  *(&v8[0] + 1) = 0xEB00000000647261;
  v8[1] = xmmword_24E36EBD0;
  v9 = v6;
  v10 = 3;
  sub_24E0E21CC(v8);
  sub_24E0E2EEC();
}

uint64_t sub_24E17CDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ActivityFeedBaseData();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E25A8);
  v7 = *(type metadata accessor for ActivityFeedRelationshipAchievement() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24E367D20;
  sub_24DF911B8(a2, v9 + v8);
  swift_beginAccess();
  v10 = *(a5 + 16);
  *&v12[0] = 0x6D65766569686361;
  *(&v12[0] + 1) = 0xEB00000000746E65;
  v12[1] = xmmword_24E36EBE0;
  v13 = v10;
  v14 = 3;
  sub_24E0E21CC(v12);
  sub_24E0E2A64();

  swift_setDeallocating();
  return sub_24DFD7F60();
}

id sub_24E17CF40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityFeedBaseCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityFeedBaseCollectionViewCell()
{
  result = qword_27F1E60A0;
  if (!qword_27F1E60A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E17D058(uint64_t a1)
{
  result = sub_24E17D198(&qword_27F1E60B0, type metadata accessor for ActivityFeedBaseCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E17D140(uint64_t a1)
{
  result = sub_24E17D198(&qword_27F1E60B8, type metadata accessor for ActivityFeedBaseCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E17D198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E17D218(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityFeedRelationshipAchievement() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E17CDC0(a1, v1 + v4, v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_5_70()
{

  return sub_24E347158();
}

uint64_t OUTLINED_FUNCTION_9_41()
{
}

uint64_t OUTLINED_FUNCTION_10_41()
{

  return swift_dynamicCast();
}

uint64_t sub_24E17D35C(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6)
{
  v56 = a2;
  v61 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v55 = &v48 - v14;
  sub_24E344128();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  swift_getKeyPath();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFBE0);
  v62 = a1;
  sub_24E347128();

  a = v66.a;
  if (!sub_24DFD8654(*&v66.a))
  {
  }

  sub_24DFFA844(0, (*&a & 0xC000000000000001) == 0, *&a);
  v50 = a3;
  v49 = v12;
  if ((*&a & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  v54 = *(*&a + 32);

  while (1)
  {

    swift_getKeyPath();
    OUTLINED_FUNCTION_5_71();
    sub_24E347128();
    v17 = sub_24DFD8654(*&v66.a);

    v53 = v10;
    v52 = a5;
    v51 = a4;
    if (v17 != 2)
    {
      break;
    }

    if (qword_27F1DD8E8 != -1)
    {
      OUTLINED_FUNCTION_2_77();
    }

    if (*(qword_27F20AFC0 + 16) < 2uLL)
    {
      __break(1u);
LABEL_45:
      OUTLINED_FUNCTION_2_77();
      goto LABEL_14;
    }

    v18 = *(qword_27F20AFC8 + 16);
    if (!v18)
    {
      goto LABEL_47;
    }

    if (v18 == 1)
    {
      goto LABEL_48;
    }

    v20 = *(qword_27F20AFC8 + 32);
    v19 = *(qword_27F20AFC8 + 40);
    v21 = *(qword_27F20AFC8 + 48);
    v22 = *(qword_27F20AFC8 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6100);
    a = COERCE_DOUBLE(swift_allocObject());
    v23 = vextq_s8(xmmword_27F20AFD0, xmmword_27F20AFD0, 8uLL);
    *(*&a + 16) = xmmword_24E36A270;
    *(*&a + 32) = v23;
    *(*&a + 48) = v20;
    *(*&a + 56) = v19;
    *(*&a + 64) = 0;
    *(*&a + 72) = 0;
    *(*&a + 80) = v21;
    *(*&a + 88) = v22;
    v59 = qword_27F20AFF0;

LABEL_16:
    v60 = a;
    a4 = (*&a + 56);
    a5 = *(v57 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkViews);
    v32 = sub_24DFD8654(a5);
    v58 = qword_27F1EB198;
    v63 = a5 & 0xC000000000000001;
    v33 = -v32;
    for (i = 4; ; ++i)
    {
      if (v33 + i == 4)
      {

        sub_24E347148();
        v65 = v66.a;
        type metadata accessor for ActivityFeedBaseData();
        OUTLINED_FUNCTION_0_124();
        sub_24E17F368(v45, v46);
        v47 = v55;
        sub_24E347158();
        sub_24E093274(v47, v56, v50, v51, v52, v61);

        return (*(v49 + 8))(v47, v53);
      }

      v10 = i - 4;
      if (v63)
      {
        v35 = MEMORY[0x25303F560](i - 4, a5);
      }

      else
      {
        if (v10 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v35 = *(a5 + 8 * i);
      }

      v36 = v35;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      swift_getKeyPath();
      OUTLINED_FUNCTION_5_71();
      sub_24E347128();

      a = v66.a;
      if (*&v66.a >> 62)
      {
        v37 = sub_24E348878();
      }

      else
      {
        v37 = *((*&v66.a & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v10 < v37)
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_5_71();
        sub_24E347128();

        if ((*&v66.a & 0xC000000000000001) != 0)
        {
          a = COERCE_DOUBLE(MEMORY[0x25303F560](i - 4, *&v66.a));
        }

        else
        {
          if (v10 >= *((*&v66.a & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          a = *(*&v66.a + 8 * i);
        }

        if (v10 >= *(*&v60 + 16))
        {
          goto LABEL_40;
        }

        v38 = *(a4 - 1);
        v39 = *a4;
        v66.a = 0.0;
        v66.b = 0.0;
        v40 = sub_24E0ABE8C(&v66, 0, v38, v39);
        LOBYTE(v66.a) = *(*&a + 56);
        v41 = v36;
        sub_24E0D8DC8(&v66);
        v42 = OUTLINED_FUNCTION_7_2();
        [v43 v44];

        if (v10 >= v59[2])
        {
          goto LABEL_42;
        }

        CGAffineTransformMakeRotation(&v66, *&v59[i]);
        [v41 setTransform_];
        if (*(v61 + v58))
        {

          sub_24E0624C4(v40, 2, 1, v41);
        }
      }

      a4 += 4;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v54 = MEMORY[0x25303F560](0, *&a);
  }

  if (v17 != 1)
  {
    goto LABEL_49;
  }

  if (qword_27F1DD8E8 != -1)
  {
    goto LABEL_45;
  }

LABEL_14:
  if (*(qword_27F20AFC0 + 16))
  {
    v25 = *(qword_27F20AFC0 + 32);
    v26 = *(qword_27F20AFC0 + 40);
    sub_24E344138();
    sub_24E344118();
    v28 = v27;
    v29 = (v26 - v27) * 0.5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6100);
    a = COERCE_DOUBLE(swift_allocObject());
    *(*&a + 16) = xmmword_24E367D20;
    *(*&a + 32) = (v25 - v25) * 0.5;
    *(*&a + 40) = v29;
    *(*&a + 48) = v25;
    *(*&a + 56) = v28;
    v30 = OUTLINED_FUNCTION_13_0();
    v31(v30);
    v59 = &unk_286110890;
    goto LABEL_16;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_24E348AE8();
  __break(1u);
  return result;
}

uint64_t sub_24E17DAC8()
{
  sub_24E347C98();
  sub_24E348918();
  sub_24E2029F4();
  return sub_24DF8BE60(v1);
}

uint64_t sub_24E17DB28(double a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFBE0);
  sub_24E347128();

  v8 = sub_24DFD8654(v17);

  if (qword_27F1DD8E8 != -1)
  {
    result = OUTLINED_FUNCTION_2_77();
  }

  if (__OFSUB__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = (v8 - 1) & ~((v8 - 1) >> 63);
    if (v10 < *(qword_27F20AFC0 + 16))
    {
      v11 = a1 - (*(qword_27F20AFC0 + 16 * v10 + 32) + *algn_27F20AF98 + unk_27F20AFA8 + *&qword_27F20AFB0);
      type metadata accessor for ActivityFeedSharedView();
      sub_24E347148();
      v16 = v17;
      type metadata accessor for ActivityFeedBaseData();
      OUTLINED_FUNCTION_0_124();
      sub_24E17F368(v12, v13);
      sub_24E347158();
      sub_24E092E74(v11, v7, a3);
      v14 = OUTLINED_FUNCTION_13_0();
      return v15(v14);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E17DD80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_sharedView);
  v20 = type metadata accessor for ActivityFeedSharedView();
  v21 = sub_24E17F368(&qword_27F1E27A8, type metadata accessor for ActivityFeedSharedView);
  *&v19 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkContainer);
  v17 = sub_24DFB6B18();
  v18 = MEMORY[0x277D22A38];
  *&v16 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkViews);
  v15 = MEMORY[0x277D84F90];
  v6 = sub_24DFD8654(v5);
  v7 = v3;
  v8 = v4;
  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x25303F560](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v10 = *(v5 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ([v10 isHidden])
    {
    }

    else
    {
      v1 = &v15;
      sub_24E348A48();
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }
  }

  v1 = sub_24DFD8654(v15);

  if (qword_27F1DD8E8 == -1)
  {
    goto LABEL_13;
  }

LABEL_16:
  swift_once();
LABEL_13:
  memcpy(__dst, &qword_27F20AF90, sizeof(__dst));
  sub_24DE56CE8(&v19, a1);
  sub_24DE56CE8(&v16, a1 + 40);
  *(a1 + 80) = v1;
  memcpy((a1 + 88), __dst, 0x68uLL);
  return sub_24E17F3B0(__dst, &v13);
}

void sub_24E17DFA0()
{
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  qword_27F20AF90 = sub_24E2D4E50();
  *algn_27F20AF98 = v1;
  v2 = 16.0;
  v3 = &unk_2861107E0;
  qword_27F20AFA0 = v4;
  unk_27F20AFA8 = v5;
  if (ShouldUsePadUI)
  {
    v2 = 18.0;
    v3 = &unk_286110730;
  }

  v6 = &unk_286110820;
  if (ShouldUsePadUI)
  {
    v6 = &unk_286110770;
  }

  qword_27F20AFB0 = 0x4034000000000000;
  qword_27F20AFB8 = *&v2;
  qword_27F20AFC0 = v3;
  qword_27F20AFC8 = v6;
  __asm { FMOV            V0.2D, #14.0 }

  xmmword_27F20AFD0 = _Q0;
  if (_ZF)
  {
    v12 = &unk_286110860;
  }

  else
  {
    v12 = &unk_2861107B0;
  }

  qword_27F20AFE0 = 0;
  unk_27F20AFE8 = 0;
  qword_27F20AFF0 = v12;
}

void sub_24E17E044(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkViews;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24E36BFC0;
  type metadata accessor for TappableArtworkView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v11 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v11 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[v10] = v11;
  v13 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_contentBackgroundView;
  type metadata accessor for BackgroundView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_sharedView;
  type metadata accessor for ActivityFeedSharedView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkContainer;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v16 = &v4[OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_gameControllerSelectButtonDestination];
  *v16 = 0;
  *(v16 + 1) = 0;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = OUTLINED_FUNCTION_7_2();
  [v19 v20];
  v21 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_contentBackgroundView;
  v22 = *&v17[OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_contentBackgroundView];
  sub_24E2D4EB0(v22);

  [v17 addSubview_];
  [v17 addSubview_];
  v23 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkContainer;
  [v17 addSubview_];
  [*&v17[v23] setUserInteractionEnabled_];
  v24 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkViews;
  v25 = sub_24DFD8654(*&v17[OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkViews]);
  v26 = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    goto LABEL_14;
  }

  v27 = 0;
  while (1)
  {
    if (v26 <= 0)
    {
      if ((v26 != 0) | v27 & 1)
      {
        [v17 setIsAccessibilityElement_];

        return;
      }

      v28 = 0;
      v27 = 1;
    }

    else
    {
      v28 = v26 - 1;
    }

    v29 = *&v17[v24];
    if ((v29 & 0xC000000000000001) == 0)
    {
      break;
    }

    v30 = MEMORY[0x25303F560](v26, v29);

LABEL_10:
    v31 = v30;
    v32 = sub_24E348BA8();
    MEMORY[0x25303E950](v32);

    sub_24DFD8050(0xD00000000000002FLL, 0x800000024E3AA560, v31);

    [*&v17[v23] addSubview_];
    v26 = v28;
  }

  if (v26 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v29 + 8 * v26 + 32);
    goto LABEL_10;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_24E17E3B0()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkViews;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24E36BFC0;
  type metadata accessor for TappableArtworkView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v2 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v2 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + v1) = v2;
  v4 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_contentBackgroundView;
  type metadata accessor for BackgroundView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_sharedView;
  type metadata accessor for ActivityFeedSharedView();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkContainer;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v7 = (v0 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_gameControllerSelectButtonDestination);
  *v7 = 0;
  v7[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

double sub_24E17E520()
{
  v1 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  sub_24E17DD80(v12);
  v8 = [v0 traitCollection];
  sub_24E1ABF9C(v7);
  sub_24E344A18();
  v10 = v9;

  (*(v3 + 8))(v7, v1);
  sub_24E17F314(v12);
  return v10;
}

id sub_24E17E6A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel_layoutSubviews);
  sub_24E17DD80(v26);
  [v1 bounds];
  v7 = [v1 traitCollection];
  sub_24E1ABF9C(v6);
  OUTLINED_FUNCTION_7_2();
  sub_24E344A08();

  v8 = OUTLINED_FUNCTION_13_0();
  v9(v8);
  sub_24E17F314(v26);
  v10 = *&v1[OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_contentBackgroundView];
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v16 = 16.0;
  if (ShouldUsePadUI)
  {
    v16 = 0.0;
  }

  [v10 setFrame_];
  sub_24E2D4EB0(v10);
  v17 = *&v1[OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_sharedView];
  [v17 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v10 frame];
  Height = CGRectGetHeight(v28);
  [v17 frame];
  return [v17 setFrame_];
}

void sub_24E17E914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFBE0);
  v15 = a1;
  sub_24E347148();
  v44 = v45;
  type metadata accessor for ActivityFeedBaseData();
  OUTLINED_FUNCTION_0_124();
  sub_24E17F368(v16, v17);
  sub_24E347158();
  sub_24E092F2C(v13, a2, a3);
  (*(v10 + 8))(v13, v8);
  v40 = v4;
  v18 = *&v4[OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkViews];
  v19 = sub_24DFD8654(v18);
  v20 = 0;
  v21 = 0;
  v42 = v18 & 0xC000000000000001;
  v43 = v19;
  v41 = v18;
  v22 = v18 & 0xFFFFFFFFFFFFFF8;
  v39[1] = v14;
  while (v43 != v21)
  {
    if (v42)
    {
      v23 = MEMORY[0x25303F560](v21, v41);
    }

    else
    {
      if (v21 >= *(v22 + 16))
      {
        goto LABEL_21;
      }

      v23 = *(v41 + 8 * v21 + 32);
    }

    v24 = v23;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    swift_getKeyPath();
    v25 = v24;
    sub_24E347128();

    if (v45 >> 62)
    {
      v26 = sub_24E348878();
    }

    else
    {
      v26 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [v25 setHidden_];

    swift_getKeyPath();
    OUTLINED_FUNCTION_4_64();

    v27 = *(v45 + 16);

    if (v21 >= v27)
    {
      sub_24E027E9C(0, 0);
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_4_64();

      if (v21 >= *(v45 + 16))
      {
        goto LABEL_22;
      }

      v28 = v15;
      v30 = *(v45 + v20 + 32);
      v29 = *(v45 + v20 + 40);

      v31 = v20;
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = v30;
      v15 = v28;
      v33[4] = v29;

      sub_24E027E9C(sub_24E17F308, v33);
      v20 = v31;
    }

    ++v21;
    v20 += 16;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_64();

  if (*(v45 + 16))
  {
    v34 = *(v45 + 32);
    v35 = *(v45 + 40);
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v36 = v40;
  v37 = &v40[OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_gameControllerSelectButtonDestination];
  *v37 = v34;
  *(v37 + 1) = v35;

  v38 = *&v36[OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_contentBackgroundView];
  swift_getKeyPath();
  sub_24E347128();

  *(v38 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_isHighlighted) = v45;
  sub_24DFEC5B4();
  sub_24E347148();
  *(v45 + 97) = 0;

  [v36 setNeedsLayout];
}

void sub_24E17ED94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_sharedView);

    sub_24E00E084(a2, a3, 1);
  }
}

uint64_t sub_24E17EE20()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_gameControllerSelectButtonDestination + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_gameControllerSelectButtonDestination);

    sub_24E00E084(v2, v1, 1);
  }

  return result;
}

uint64_t sub_24E17EEA4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkViews);
  result = sub_24DFD8654(v2);
  if (!result)
  {
LABEL_8:
    sub_24E0931E8();
    *(*(v1 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_contentBackgroundView) + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_isHighlighted) = 0;
    return sub_24DFEC5B4();
  }

  v4 = result;
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25303F560](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      sub_24E0D8E24(0);
      [v7 setHidden_];
      sub_24E027E9C(0, 0);
    }

    while (v4 != v5);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E17EF98(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_artworkViews);
  result = sub_24DFD8654(v4);
  if (!result)
  {
LABEL_10:
    v11 = OUTLINED_FUNCTION_13_0();
    sub_24E0934B0(v11, v12);
    *(*(v2 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkView_contentBackgroundView) + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_isHighlighted) = 0;
    return sub_24DFEC5B4();
  }

  v6 = result;
  if (result >= 1)
  {
    v7 = 0;
    v8 = qword_27F1EB198;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25303F560](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      if (*(a2 + v8))
      {

        sub_24E17DAC8();
      }

      ++v7;
    }

    while (v6 != v7);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E17F368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E17F3E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_24E17F428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_77()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_64()
{

  return sub_24E347128();
}

void sub_24E17F4F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = sub_24DFD8654(a1);
  for (i = 0; v7 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x25303F560](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v11 = v9;
    sub_24E1852B0(&v11, a2, a3);

    if (v3)
    {
      return;
    }
  }
}

uint64_t sub_24E17F5D0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6160);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for ShareFriendsListDetailView(0);
  v3 = (a1 + v2[5]);
  type metadata accessor for GameCenterSettings();
  sub_24E185DD8(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
  OUTLINED_FUNCTION_11_3();
  *v3 = sub_24E345848();
  v3[1] = v4;
  v5 = a1 + v2[6];
  *v5 = sub_24E17F798;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = a1 + v2[7];
  v7 = [objc_opt_self() local];
  v8 = [v7 internal];

  [v8 globalFriendListAccess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E12B0);
  sub_24E346B78();
  *v6 = v11;
  v6[1] = v12;
  *(v6 + 1) = v13;
  v9 = a1 + v2[8];
  result = sub_24E346B78();
  *v9 = v11;
  *(v9 + 1) = v13;
  return result;
}

uint64_t sub_24E17F798()
{
  type metadata accessor for GamesDataSource(0);
  swift_allocObject();
  return sub_24E185A54();
}

uint64_t sub_24E17F7D0@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  sub_24E345BB8();
  OUTLINED_FUNCTION_0_14();
  v33 = v3;
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShareFriendsListDetailView(0);
  v6 = OUTLINED_FUNCTION_6_15(v5);
  v31 = v7;
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E61C8);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E61D0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v36 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E61D8);
  sub_24E1027E4(&qword_27F1E61E0, &qword_27F1E61D8);
  sub_24E3463B8();
  sub_24E1027E4(&qword_27F1E61E8, &qword_27F1E61C8);
  sub_24E3464F8();
  (*(v10 + 8))(v13, v8);
  sub_24E186CF0();
  v17 = swift_allocObject();
  sub_24E186788();
  v18 = &v16[*(v30 + 36)];
  *v18 = sub_24E186110;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  v19 = sub_24E347CB8();
  v20 = GKGameCenterUIFrameworkBundle();
  v21 = GKGetLocalizedStringFromTableInBundle();

  v22 = sub_24E347CF8();
  v24 = v23;

  v37 = v22;
  v38 = v24;
  v26 = v32;
  v25 = v33;
  v27 = v34;
  (*(v33 + 104))(v32, *MEMORY[0x277CDDDC0], v34);
  sub_24E186128();
  sub_24DF90C4C();
  sub_24E346738();
  (*(v25 + 8))(v26, v27);

  return sub_24E10CF40(v16, &qword_27F1E61D0);
}

uint64_t sub_24E17FC0C()
{
  type metadata accessor for ShareFriendsListDetailView(0);
  type metadata accessor for GamesDataSource(0);
  sub_24E185DD8(&qword_27F1E61B8, type metadata accessor for GamesDataSource);
  sub_24E3452B8();
  sub_24E184BDC();
}

uint64_t sub_24E17FCC0@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E61F8);
  MEMORY[0x28223BE20](v83);
  v82 = &v70 - v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6200);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v70 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6208);
  v7 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6210);
  MEMORY[0x28223BE20](v13 - 8);
  v81 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v85 = &v70 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6218);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v86 = a1;
  v21 = sub_24E347CB8();
  v22 = GKGameCenterUIFrameworkBundle();
  v23 = GKGetLocalizedStringFromTableInBundle();

  v24 = sub_24E347CF8();
  v26 = v25;

  v89 = v24;
  v90 = v26;
  sub_24DF90C4C();
  v89 = sub_24E3464E8();
  v90 = v27;
  v91 = v28 & 1;
  v92 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6220);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6228);
  v31 = sub_24E1027E4(&qword_27F1E6230, &qword_27F1E6228);
  v87 = v30;
  v88 = v31;
  v32 = 1;
  swift_getOpaqueTypeConformance2();
  v77 = v20;
  sub_24E346D38();
  v33 = &a1[*(type metadata accessor for ShareFriendsListDetailView(0) + 28)];
  v34 = *v33;
  v35 = v33[1];
  v36 = *(v33 + 1);
  LOBYTE(v89) = v34;
  BYTE1(v89) = v35;
  v90 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
  sub_24E346B88();
  if (v87 == 1)
  {
    v37 = sub_24E347CB8();
    v38 = GKGameCenterUIFrameworkBundle();
    v39 = GKGetLocalizedStringFromTableInBundle();

    v40 = sub_24E347CF8();
    v42 = v41;

    v89 = v40;
    v90 = v42;
    v89 = sub_24E3464E8();
    v90 = v43;
    v91 = v44 & 1;
    v92 = v45;
    v46 = v12;
    v71 = v12;
    v47 = sub_24E346D38();
    MEMORY[0x28223BE20](v47);
    *(&v70 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6240);
    sub_24E186234();
    v48 = v76;
    sub_24E346D28();
    v49 = *(v7 + 16);
    v50 = v9;
    v70 = v9;
    v51 = v72;
    v49(v9, v46, v72);
    v52 = v73;
    v53 = *(v73 + 16);
    v54 = v74;
    v55 = v48;
    v56 = v75;
    v53(v74, v55, v75);
    v49(v82, v50, v51);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6298);
    v58 = v82;
    v53(&v82[*(v57 + 48)], v54, v56);
    v59 = *(v52 + 8);
    v59(v76, v56);
    v60 = *(v7 + 8);
    v60(v71, v51);
    v59(v54, v56);
    v60(v70, v51);
    sub_24E1864FC(v58, v85);
    v32 = 0;
  }

  v61 = v85;
  __swift_storeEnumTagSinglePayload(v85, v32, 1, v83);
  v62 = v78;
  v63 = v79;
  v64 = *(v78 + 16);
  v65 = v77;
  v66 = v80;
  v64(v79, v77, v80);
  v67 = v81;
  sub_24DFA9240();
  v64(v84, v63, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6238);
  sub_24DFA9240();
  sub_24E10CF40(v61, &qword_27F1E6210);
  v68 = *(v62 + 8);
  v68(v65, v66);
  sub_24E10CF40(v67, &qword_27F1E6210);
  return (v68)(v63, v66);
}

uint64_t sub_24E18051C(uint64_t a1)
{
  v2 = sub_24E345FF8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6228);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  *v8 = sub_24E345BF8();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E62C8);
  sub_24E1806DC(a1, &v8[*(v9 + 44)]);
  sub_24E345FE8();
  sub_24E1027E4(&qword_27F1E6230, &qword_27F1E6228);
  sub_24E346778();
  (*(v3 + 8))(v5, v2);
  return sub_24E10CF40(v8, &qword_27F1E6228);
}

uint64_t sub_24E1806DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShareFriendsListDetailView(0);
  v76 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v78 = v5;
  v79 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24E345738();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E62D0);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v61 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E62D8);
  MEMORY[0x28223BE20](v74);
  v73 = &v61 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E62E0);
  MEMORY[0x28223BE20](v87);
  v75 = &v61 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E62E8);
  v80 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v77 = &v61 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E62F0);
  MEMORY[0x28223BE20](v82);
  v12 = &v61 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE230);
  v13 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E62F8);
  MEMORY[0x28223BE20](v16 - 8);
  v85 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  v21 = sub_24E347CB8();
  v22 = GKGameCenterUIFrameworkBundle();
  v23 = GKGetLocalizedStringFromTableInBundle();

  v24 = sub_24E347CF8();
  v26 = v25;

  v92 = v24;
  v93 = v26;
  sub_24DF90C4C();
  v27 = sub_24E3464E8();
  v83 = v28;
  v84 = v27;
  v81 = v29;
  v31 = v30;
  v32 = (a1 + *(v4 + 32));
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v92) = v33;
  v93 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  if (v89 == 1)
  {
    sub_24E345348();
    v35 = v86;
    (*(v13 + 16))(v12, v15, v86);
    swift_storeEnumTagMultiPayload();
    sub_24E1027E4(&qword_27F1E2088, &qword_27F1DE230);
    v36 = sub_24E187070(&qword_27F1E6310, &qword_27F1E62E0, &unk_24E37EA08, sub_24E18680C);
    v92 = v87;
    v93 = v36;
    swift_getOpaqueTypeConformance2();
    sub_24E345E38();
    (*(v13 + 8))(v15, v35);
  }

  else
  {
    v37 = *(v4 + 28);
    v65 = a1;
    v38 = (a1 + v37);
    v64 = *v38;
    v63 = v38[1];
    v62 = *(v38 + 1);
    v89 = v64;
    v90 = v63;
    v91 = v62;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
    sub_24E346BA8();
    v39 = v92;
    v40 = v93;
    v41 = v94;
    v42 = v95;
    swift_getKeyPath();
    v66 = v31;
    v92 = v39;
    v93 = v40;
    v94 = v41;
    v95 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5538);
    sub_24E346C78();

    v43 = v67;
    sub_24E346C28();
    v92 = MEMORY[0x277D84F90];
    sub_24E185DD8(&qword_27F1DFB98, MEMORY[0x277CDDA80]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFBA0);
    sub_24E1027E4(&qword_27F1DFBA8, &qword_27F1DFBA0);
    v44 = v70;
    v45 = v72;
    sub_24E3487E8();
    sub_24E1027E4(&qword_27F1E6300, &qword_27F1E62D0);
    v46 = v73;
    v47 = v69;
    sub_24E3468F8();
    (*(v71 + 8))(v44, v45);
    (*(v68 + 8))(v43, v47);
    LOBYTE(v92) = v64;
    BYTE1(v92) = v63;
    v93 = v62;
    sub_24E346B88();
    LOBYTE(v45) = v89;
    sub_24E186CF0();
    v48 = swift_allocObject();
    sub_24E186788();
    v49 = v46 + *(v74 + 36);
    *v49 = v45;
    *(v49 + 8) = sub_24E1867E0;
    *(v49 + 16) = v48;
    sub_24E18680C();
    v50 = v75;
    sub_24E346648();
    sub_24E10CF40(v46, &qword_27F1E62D8);
    v51 = sub_24E187070(&qword_27F1E6310, &qword_27F1E62E0, &unk_24E37EA08, sub_24E18680C);
    v52 = v77;
    v53 = v87;
    sub_24E346618();
    sub_24E10CF40(v50, &qword_27F1E62E0);
    v54 = v80;
    v55 = v88;
    (*(v80 + 16))(v12, v52, v88);
    swift_storeEnumTagMultiPayload();
    sub_24E1027E4(&qword_27F1E2088, &qword_27F1DE230);
    v92 = v53;
    v93 = v51;
    v31 = v66;
    swift_getOpaqueTypeConformance2();
    sub_24E345E38();
    (*(v54 + 8))(v52, v55);
  }

  v56 = v85;
  sub_24DE66B70();
  v58 = v83;
  v57 = v84;
  *a2 = v84;
  *(a2 + 8) = v58;
  v59 = v81 & 1;
  *(a2 + 16) = v81 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6318);
  sub_24DE66B70();
  sub_24DF82DD4(v57, v58, v59);

  sub_24E10CF40(v20, &qword_27F1E62F8);
  sub_24E10CF40(v56, &qword_27F1E62F8);
  sub_24DFA92EC(v57, v58, v59);
}

uint64_t sub_24E181290(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_24E346EE8();
  v61 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24E346F08();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShareFriendsListDetailView(0);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_24E346F28();
  v10 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v55 = *a1;
  v16 = (a2 + *(v8 + 28));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 1);
  LOBYTE(aBlock) = v17;
  BYTE1(aBlock) = v18;
  v63 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
  result = sub_24E346B88();
  if (v68 != v69)
  {
    v21 = (a2 + *(v8 + 32));
    v52 = a2;
    v22 = *v21;
    v23 = *(v21 + 1);
    LOBYTE(aBlock) = v22;
    v63 = v23;
    v68 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
    v47 = v6;
    sub_24E346B98();
    v53 = sub_24DF88A8C(0, &qword_27F1DFCD0);
    v45 = sub_24E348368();
    sub_24E346F18();
    sub_24E346F48();
    v24 = *(v10 + 8);
    v48 = v10 + 8;
    v49 = v24;
    v24(v12, v60);
    v46 = type metadata accessor for ShareFriendsListDetailView;
    sub_24E186CF0();
    v54 = *(v54 + 80);
    v50 = ((v54 + 16) & ~v54) + v9;
    v51 = (v54 + 16) & ~v54;
    v25 = swift_allocObject();
    sub_24E186788();
    v66 = sub_24E186934;
    v67 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_24E00B24C;
    v65 = &block_descriptor_80;
    v26 = _Block_copy(&aBlock);

    v27 = v56;
    sub_24E346EF8();
    aBlock = MEMORY[0x277D84F90];
    v43 = sub_24E185DD8(&qword_27F1DFD00, MEMORY[0x277D85198]);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
    v44 = sub_24E1027E4(&qword_27F1DFD10, &unk_27F1E1C90);
    v28 = v47;
    v41 = v4;
    sub_24E3487E8();
    v29 = v45;
    MEMORY[0x25303EE90](v15, v27, v28, v26);
    _Block_release(v26);

    v30 = *(v61 + 8);
    v61 += 8;
    v45 = v30;
    v30(v28, v4);
    v57 = *(v57 + 8);
    (v57)(v27, v59);
    v31 = v15;
    v32 = v60;
    v33 = v15;
    v34 = v49;
    v49(v31, v60);
    v53 = sub_24E348368();
    sub_24E346F18();
    sub_24E346F48();
    v34(v12, v32);
    sub_24E186CF0();
    v35 = v50;
    v36 = swift_allocObject();
    sub_24E186788();
    *(v36 + v35) = v55;
    v66 = sub_24E1869C0;
    v67 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_24E00B24C;
    v65 = &block_descriptor_86;
    v37 = _Block_copy(&aBlock);

    sub_24E346EF8();
    aBlock = MEMORY[0x277D84F90];
    v38 = v41;
    sub_24E3487E8();
    v39 = v53;
    MEMORY[0x25303EE90](v33, v27, v28, v37);
    _Block_release(v37);

    v45(v28, v38);
    (v57)(v27, v59);
    return (v34)(v33, v60);
  }

  return result;
}

uint64_t sub_24E181A0C(uint64_t a1)
{
  v2 = sub_24E343628();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for ShareFriendsListDetailView(0) + 28));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 1);
  v17[16] = v7;
  v17[17] = v8;
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
  sub_24E346B88();
  v10 = sub_24E347CB8();
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();

  v13 = sub_24E347CF8();
  v15 = v14;

  MEMORY[0x25303A190](v13, v15);
  sub_24E343618();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E181BC4(char a1)
{
  v2 = type metadata accessor for ShareFriendsListDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v6 = sub_24E347CF8();
  v8 = v7;
  v9 = sub_24E347CF8();
  sub_24E08FD58(v6, v8, v9, v10, v5);

  v11 = (a1 & 1) == 0;
  v12 = [objc_opt_self() proxyForLocalPlayer];
  v13 = [v12 profileServicePrivate];

  sub_24E186CF0();
  v14 = (v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = swift_allocObject();
  sub_24E186788();
  *(v15 + v14) = v11;
  aBlock[4] = sub_24E186A34;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E052CF0;
  aBlock[3] = &block_descriptor_92;
  v16 = _Block_copy(aBlock);

  [v13 setGlobalFriendListAccess:v11 handler:v16];
  _Block_release(v16);
  return swift_unknownObjectRelease();
}

uint64_t sub_24E181E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for ShareFriendsListDetailView(0);
  v25[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v25[1] = v4;
  v25[2] = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6268);
  v26 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v27 = v25 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E62A0);
  MEMORY[0x28223BE20](v32);
  v31 = (v25 - v6);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E62A8);
  MEMORY[0x28223BE20](v28);
  v8 = v25 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6258);
  MEMORY[0x28223BE20](v33);
  v30 = v25 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3E60);
  MEMORY[0x28223BE20](v29);
  v11 = v25 - v10;
  v25[3] = a1;
  type metadata accessor for GamesDataSource(0);
  sub_24E185DD8(&qword_27F1E61B8, type metadata accessor for GamesDataSource);
  sub_24E3452B8();
  v12 = sub_24E1849F8();

  if (v12 == 2)
  {
    sub_24E3452B8();
    v13 = sub_24E1849D0();

    v14 = sub_24DFD8654(v13);

    if (v14 < 1)
    {
      v22 = sub_24E345BF8();
      v38 = 1;
      sub_24E182AD8(v36);
      memcpy(v39, v36, sizeof(v39));
      memcpy(__dst, v36, 0x69uLL);
      sub_24DFA9240();
      sub_24E10CF40(__dst, &unk_27F1E62B0);
      memcpy(&v37[7], v39, 0x69uLL);
      v23 = v38;
      v24 = v31;
      *v31 = v22;
      v24[1] = 0;
      *(v24 + 16) = v23;
      memcpy(v24 + 17, v37, 0x70uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6290);
      sub_24E1862EC();
      sub_24E1027E4(&qword_27F1E6288, &qword_27F1E6290);
      return sub_24E345E38();
    }

    else
    {
      sub_24E3452B8();
      v15 = sub_24E1849D0();

      __dst[0] = v15;
      swift_getKeyPath();
      sub_24E186CF0();
      swift_allocObject();
      sub_24E186788();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6138);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6278);
      sub_24E1027E4(&qword_27F1E62B8, &qword_27F1E6138);
      sub_24E186720();
      sub_24E186428();
      v16 = v27;
      sub_24E346CC8();
      v17 = v26;
      (*(v26 + 16))(v8, v16, v35);
      swift_storeEnumTagMultiPayload();
      sub_24E1027E4(&qword_27F1E3E68, &qword_27F1E3E60);
      sub_24E1863A4();
      v18 = v30;
      sub_24E345E38();
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6290);
      sub_24E1862EC();
      sub_24E1027E4(&qword_27F1E6288, &qword_27F1E6290);
      sub_24E345E38();
      sub_24E10CF40(v18, &qword_27F1E6258);
      return (*(v17 + 8))(v27, v35);
    }
  }

  else
  {
    *v11 = sub_24E345BF8();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4048);
    sub_24E1826B8(&v11[*(v20 + 44)]);
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    sub_24E1027E4(&qword_27F1E3E68, &qword_27F1E3E60);
    sub_24E1863A4();
    v21 = v30;
    sub_24E345E38();
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6290);
    sub_24E1862EC();
    sub_24E1027E4(&qword_27F1E6288, &qword_27F1E6290);
    sub_24E345E38();
    sub_24E10CF40(v21, &qword_27F1E6258);
    return sub_24E10CF40(v11, &qword_27F1E3E60);
  }
}

uint64_t sub_24E1826B8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4050);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  sub_24E345348();
  v9 = sub_24E3461E8();
  sub_24E3451B8();
  v10 = &v8[*(v3 + 44)];
  *v10 = v9;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  sub_24DFA9240();
  *a1 = 0;
  *(a1 + 8) = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4058);
  sub_24DFA9240();
  v16 = a1 + *(v15 + 64);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_24E10CF40(v8, &qword_27F1E4050);
  return sub_24E10CF40(v5, &qword_27F1E4050);
}

uint64_t sub_24E182820@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GameSettingToggle(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  type metadata accessor for ShareFriendsListDetailView(0);
  type metadata accessor for GamesDataSource(0);
  sub_24E185DD8(&qword_27F1E61B8, type metadata accessor for GamesDataSource);
  sub_24E3452B8();
  v8 = [v7 bundleIdentifier];
  v9 = sub_24E347CF8();
  v11 = v10;

  v12 = sub_24E184ADC();

  v13 = sub_24E130ED4(v9, v11, v12);

  if (v13)
  {
    v14 = *(v13 + 32);
    *v6 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E01B8);
    swift_storeEnumTagMultiPayload();
    *(v6 + v4[5]) = v7;
    *(v6 + v4[6]) = v13;
    v15 = v6 + v4[7];
    v25[14] = v14;
    v25[15] = v14;
    v16 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E12B0);
    sub_24E346B78();
    v17 = v25[17];
    v18 = v26;
    *v15 = v25[16];
    v15[1] = v17;
    *(v15 + 1) = v18;
    v19 = (v6 + v4[8]);
    v20 = [objc_opt_self() currentPlatformServerString];
    v21 = sub_24E347CF8();
    v23 = v22;

    *v19 = v21;
    v19[1] = v23;
    sub_24E186788();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_24E182AD8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  v5 = sub_24E3464E8();
  v7 = v6;
  LOBYTE(v4) = v8;
  v10 = v9;
  v11 = sub_24E3461E8();
  sub_24E3451B8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(v4) = v4 & 1;
  v21[80] = 1;
  __src[0] = v5;
  __src[1] = v7;
  LOBYTE(__src[2]) = v4;
  __src[3] = v10;
  LOBYTE(__src[4]) = v11;
  __src[5] = v12;
  __src[6] = v14;
  __src[7] = v16;
  __src[8] = v18;
  LOBYTE(__src[9]) = 0;
  memcpy(&v21[7], __src, 0x49uLL);
  *a1 = 0;
  *(a1 + 8) = 1;
  memcpy((a1 + 9), v21, 0x50uLL);
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  v23[0] = v5;
  v23[1] = v7;
  v24 = v4;
  v25 = v10;
  v26 = v11;
  v27 = v13;
  v28 = v15;
  v29 = v17;
  v30 = v19;
  v31 = 0;
  sub_24DFA9240();
  return sub_24E10CF40(v23, &qword_27F1DF880);
}

uint64_t sub_24E182C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShareFriendsListDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B98();
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
    sub_24E346B88();
    sub_24E346B98();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
  sub_24E346B88();
  sub_24E346B98();

  v7 = objc_opt_self();
  v8 = [v7 local];
  v9 = [v8 internal];

  [v9 setGlobalFriendListAccess_];
  if (*(a2 + *(v6 + 20)))
  {

    v10 = [v7 local];
    sub_24DFECFDC();
  }

  type metadata accessor for GameCenterSettings();
  sub_24E185DD8(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
  result = sub_24E345828();
  __break(1u);
  return result;
}

uint64_t sub_24E182F0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for GameSettingToggle(0);
  v4 = v3 - 8;
  v40 = *(v3 - 8);
  v39 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24E345738();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6330);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6338);
  MEMORY[0x28223BE20](v37);
  v13 = &v29 - v12;
  v14 = (v1 + *(v4 + 36));
  v15 = *v14;
  v31 = v14[1];
  v32 = v15;
  v30 = *(v14 + 1);
  v43 = v15;
  v44 = v31;
  v45 = v30;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
  sub_24E346BA8();
  v17 = v46;
  v16 = v47;
  v18 = v48;
  v19 = v49;
  swift_getKeyPath();
  v46 = v17;
  v47 = v16;
  v48 = v18;
  v49 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5538);
  sub_24E346C78();

  v42 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6340);
  sub_24E186C0C();
  sub_24E346C28();
  v46 = MEMORY[0x277D84F90];
  sub_24E185DD8(&qword_27F1DFB98, MEMORY[0x277CDDA80]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFBA0);
  sub_24E1027E4(&qword_27F1DFBA8, &qword_27F1DFBA0);
  v20 = v33;
  sub_24E3487E8();
  sub_24E1027E4(&qword_27F1E6370, &qword_27F1E6330);
  v21 = v34;
  sub_24E3468F8();
  (*(v36 + 8))(v7, v20);
  (*(v35 + 8))(v11, v21);
  LOBYTE(v46) = v32;
  BYTE1(v46) = v31;
  v47 = v30;
  sub_24E346B88();
  LOBYTE(v21) = v43;
  sub_24E186CF0();
  v22 = swift_allocObject();
  sub_24E186788();
  v23 = &v13[*(v37 + 36)];
  *v23 = v21;
  *(v23 + 1) = sub_24E186D48;
  *(v23 + 2) = v22;
  v24 = [*(v2 + *(v4 + 28)) bundleIdentifier];
  v25 = sub_24E347CF8();
  v27 = v26;

  v46 = v25;
  v47 = v27;
  MEMORY[0x25303E950](0x656C67676F545FLL, 0xE700000000000000);
  sub_24E186DFC();
  sub_24E346648();

  return sub_24E10CF40(v13, &qword_27F1E6338);
}

void *sub_24E1834A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_24E345CC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E028EC4(v7);
  v8 = sub_24E345CB8();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = sub_24E345D08();
    v13[0] = 1;
    sub_24E183880(a1, __src);
    memcpy(v15, __src, sizeof(v15));
    memcpy(v16, __src, sizeof(v16));
    sub_24DFA9240();
    sub_24E10CF40(v16, &unk_27F1E6380);
    memcpy(&v12[7], v15, 0x90uLL);
    v17[0] = v9;
    v17[1] = 0;
    LOBYTE(v17[2]) = v13[0];
    memcpy(&v17[2] + 1, v12, 0x97uLL);
    sub_24E186FCC(v17);
  }

  else
  {
    v10 = sub_24E345BF8();
    v13[0] = 0;
    sub_24E183880(a1, __src);
    memcpy(v15, __src, sizeof(v15));
    memcpy(v16, __src, sizeof(v16));
    sub_24DFA9240();
    sub_24E10CF40(v16, &unk_27F1E6380);
    memcpy(&v14[7], v15, 0x90uLL);
    v17[0] = v10;
    v17[1] = 0x4024000000000000;
    LOBYTE(v17[2]) = v13[0];
    memcpy(&v17[2] + 1, v14, 0x97uLL);
    sub_24E186FC0(v17);
  }

  memcpy(v13, v17, sizeof(v13));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6368);
  sub_24E1027E4(&qword_27F1E6350, &qword_27F1E6358);
  sub_24E1027E4(&qword_27F1E6360, &qword_27F1E6368);
  sub_24E345E38();
  return memcpy(a2, __src, 0xA9uLL);
}

double sub_24E1837D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E346B78();
  sub_24DF88A8C(0, &qword_280BE0110);
  sub_24E346B78();
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  result = 44.0;
  *(a2 + 40) = xmmword_24E37E620;
  return result;
}

void sub_24E183880(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for GameSettingToggle(0) + 20));
  v5 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v6 = v4;
  [v5 init];
  sub_24E1837D4(v6, &v17);
  v7 = sub_24E345D08();
  LOBYTE(v25[0]) = 0;
  sub_24E183DE8(a1, v23);
  *&__src[7] = v23[0];
  *&__src[23] = v23[1];
  *&__src[39] = v23[2];
  *&__src[55] = v23[3];
  v8 = v25[0];
  v9 = v17;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v18 & 1;
  v24[0] = v7;
  v24[1] = 0x4020000000000000;
  LOBYTE(v24[2]) = v25[0];
  memcpy(&v24[2] + 1, __src, 0x47uLL);
  *a2 = v17;
  *(a2 + 8) = v13;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v22;
  memcpy((a2 + 56), v24, 0x58uLL);
  v25[0] = v7;
  v25[1] = 0x4020000000000000;
  v26 = v8;
  memcpy(v27, __src, sizeof(v27));

  v14 = v9;

  v15 = v11;
  sub_24DFA9240();
  sub_24E10CF40(v25, &unk_27F1E6388);
}

void sub_24E183A34(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for GameSettingToggle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
  sub_24E346B88();
  if (v5 != v6)
  {
    sub_24E183AD8(*(a2 + *(v4 + 24)), v3);
  }
}

void sub_24E183AD8(uint64_t a1, char a2)
{
  v4 = type metadata accessor for GameSettingToggle(0);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v23[1] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v7 = sub_24E347CF8();
  v9 = v8;
  v10 = sub_24E347CF8();
  v12 = v11;
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);

  sub_24E0CFF2C(v7, v9, v10, v12, v14, v13, v6);

  v15 = [objc_opt_self() proxyForLocalPlayer];
  v16 = [v15 gameServicePrivate];

  v17 = sub_24E347CB8();

  v18 = sub_24E347CB8();

  sub_24E186CF0();
  v19 = (v5 + ((*(v24 + 80) + 16) & ~*(v24 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_24E186788();
  v21 = v20 + v19;
  *v21 = a1;
  *(v21 + 8) = a2;
  aBlock[4] = sub_24E186F24;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E052CF0;
  aBlock[3] = &block_descriptor_112;
  v22 = _Block_copy(aBlock);

  [v16 submitFriendListAccess:v17 value:v18 handler:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();
}

uint64_t sub_24E183DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GameSettingToggle(0);
  v5 = *(a1 + *(v4 + 20));
  v6 = [v5 name];
  v7 = sub_24E347CF8();
  v9 = v8;

  *&v49[0] = v7;
  *(&v49[0] + 1) = v9;
  sub_24DF90C4C();
  v10 = sub_24E3464E8();
  v44 = v11;
  v45 = v10;
  v43 = v12;
  v14 = v13;
  v15 = [v5 internal];
  v16 = [v15 compatiblePlatforms];

  v17 = sub_24E348138();
  v18 = (a1 + *(v4 + 32));
  v19 = v18[1];
  *&v46 = *v18;
  *(&v46 + 1) = v19;

  sub_24E348918();
  LOBYTE(v16) = sub_24E00DCA8(v49, v17);

  sub_24DF8BE60(v49);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (v16)
  {
    goto LABEL_4;
  }

  v42 = v14;
  v24 = [v5 internal];
  v25 = [v24 compatiblePlatforms];

  v26 = sub_24E348138();
  sub_24E002CE0(v26, &v46);

  if (*(&v47 + 1))
  {
    v27 = objc_opt_self();
    v49[0] = v46;
    v49[1] = v47;
    v50 = v48;
    swift_dynamicCast();
    v28 = sub_24E347CB8();

    v29 = [v27 platformDisplayString_];

    v30 = sub_24E347CF8();
    v32 = v31;

    *&v49[0] = v30;
    *(&v49[0] + 1) = v32;
    v33 = sub_24E3464E8();
    v35 = v34;
    LOBYTE(v30) = v36;
    sub_24E346348();
    v20 = sub_24E3464B8();
    v21 = v37;
    v39 = v38;
    v23 = v40;

    sub_24DFA92EC(v33, v35, v30 & 1);

    v22 = v39 & 1;
    sub_24DF82DD4(v20, v21, v39 & 1);

    v14 = v42;
LABEL_4:
    LOBYTE(v49[0]) = v43 & 1;
    sub_24DF82DD4(v45, v44, v43 & 1);

    sub_24E00B1C4(v20, v21, v22, v23);
    sub_24E00B208(v20, v21, v22, v23);
    *a2 = v45;
    *(a2 + 8) = v44;
    *(a2 + 16) = v43 & 1;
    *(a2 + 24) = v14;
    *(a2 + 32) = v20;
    *(a2 + 40) = v21;
    *(a2 + 48) = v22;
    *(a2 + 56) = v23;
    sub_24E00B208(v20, v21, v22, v23);
    sub_24DFA92EC(v45, v44, v43 & 1);
  }

  result = sub_24E10CF40(&v46, &qword_27F1DF680);
  __break(1u);
  return result;
}

uint64_t sub_24E1841A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for GameSettingToggle(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5530);
  sub_24E346B88();
  sub_24E346B98();

  if (!a1)
  {
    *(a3 + 32) = a4 & 1;
  }

  return result;
}

uint64_t sub_24E1842EC@<X0>(uint64_t a1@<X8>)
{
  sub_24E1843B4(v1, __src);
  v3 = *(v1 + 48);
  v4 = sub_24E3461E8();
  v8[0] = 0;
  v5 = swift_allocObject();
  v6 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = *(v1 + 48);
  memcpy(a1, __src, 0x50uLL);
  *(a1 + 80) = v4;
  *(a1 + 88) = v3;
  *(a1 + 96) = 0;
  *(a1 + 104) = v3;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = sub_24E18713C;
  *(a1 + 136) = v5;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  return sub_24E187144(v1, v8);
}

void *sub_24E1843B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_24E346A68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41[0] = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  if (v26 == 1)
  {
    v41[0] = *(a1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E63A0);
    sub_24E346B88();
    sub_24E346A38();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v8 = sub_24E346AE8();

    (*(v5 + 8))(v7, v4);
    sub_24E346E28();
    sub_24E3453D8();
    v25 = v37;
    v23 = v39;
    v20[0] = 0;
    v26 = v8;
    v27 = v36;
    v28 = v37;
    *v29 = *v24;
    *&v29[3] = *&v24[3];
    v30 = v38;
    v31 = v39;
    *v32 = *v22;
    *&v32[3] = *&v22[3];
    v33 = v40;
    v34 = v21;
    v9 = 0;
  }

  else
  {
    sub_24E346A58();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v10 = sub_24E346AE8();

    (*(v5 + 8))(v7, v4);
    sub_24E346E28();
    sub_24E3453D8();
    v11 = v36;
    v12 = v37;
    v13 = v38;
    v14 = v39;
    v15 = v40;
    v16 = [objc_opt_self() tertiaryLabelColor];
    v17 = sub_24E346948();
    KeyPath = swift_getKeyPath();
    LOBYTE(v41[0]) = v12;
    v9 = 1;
    LOBYTE(v21) = 1;
    v26 = v10;
    v27 = v11;
    v28 = v12;
    v30 = v13;
    v31 = v14;
    v33 = v15;
    *&v34 = KeyPath;
    *(&v34 + 1) = v17;
  }

  v35 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E63A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E63B0);
  sub_24E1871D4();
  sub_24E187258();
  sub_24E345E38();
  return memcpy(a2, v41, 0x49uLL);
}

void sub_24E184764(uint64_t a1)
{
  v7[0] = *(a1 + 8);
  LOBYTE(aBlock[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B98();
  v2 = *a1;
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  aBlock[4] = sub_24E1871CC;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E00C7C0;
  aBlock[3] = &block_descriptor_127;
  v5 = _Block_copy(aBlock);
  sub_24E187144(a1, v7);

  v6 = [v2 loadIconForStyle:10 withCompletionHandler:{v5, v7[0]}];
  _Block_release(v5);
}

uint64_t sub_24E1848A0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E63A0);
  sub_24E346B98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  return sub_24E346B98();
}

uint64_t sub_24E184974()
{

  return MEMORY[0x2821FE8D8](v0, 33, 7);
}

uint64_t sub_24E1849F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24E184A6C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24E344E68();
}

uint64_t sub_24E184AF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24E184B70()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24E344E68();
}

uint64_t sub_24E184BDC()
{
  v22 = sub_24E346EE8();
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24E346F08();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24E346F28();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  result = sub_24E1849F8();
  if (!result)
  {
    sub_24E184A6C();
    sub_24DF88A8C(0, &qword_27F1DFCD0);
    v20 = sub_24E348368();
    sub_24E346F18();
    sub_24E346F48();
    v21 = *(v8 + 8);
    v21(v10, v7);
    aBlock[4] = sub_24E185DB8;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_59;
    v19 = _Block_copy(aBlock);

    sub_24E346EF8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24E185DD8(&qword_27F1DFD00, MEMORY[0x277D85198]);
    v18 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
    sub_24E1027E4(&qword_27F1DFD10, &unk_27F1E1C90);
    v15 = v22;
    sub_24E3487E8();
    v17 = v19;
    v16 = v20;
    MEMORY[0x25303EE90](v13, v6, v3, v19);
    _Block_release(v17);

    (*(v1 + 8))(v3, v15);
    (*(v23 + 8))(v6, v18);
    return (v21)(v13, v7);
  }

  return result;
}

uint64_t sub_24E184FC0()
{
  v0 = objc_opt_self();
  v1 = [v0 currentLocalPlayer];
  if (!v1)
  {
    v1 = [v0 local];
  }

  v2 = [objc_opt_self() proxyForPlayer_];

  v3 = [v2 gameServicePrivate];
  v4 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_24E185E20;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_24E185570;
  v7[3] = &block_descriptor_32_0;
  v5 = _Block_copy(v7);

  [v3 getFriendListAccessForAllGames_];
  _Block_release(v5);
  return swift_unknownObjectRelease();
}

uint64_t sub_24E185138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = MEMORY[0x277D84F98];
  v9 = MEMORY[0x277D84F90];
  sub_24E17F4F8(a1, &v10, &v9);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24E184B5C();
  }

  v4 = objc_opt_self();
  v5 = sub_24E347EE8();
  v8[4] = sub_24E185E28;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24E1854C0;
  v8[3] = &block_descriptor_35_1;
  v6 = _Block_copy(v8);

  [v4 loadGamesWithBundleIDs:v5 withCompletionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_24E1852B0(id *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = [*a1 bundleID];
  sub_24E347CF8();

  v7 = [v5 &selRef_dashboardDidChangeToLeaderboardPlayerScope_];
  v8 = sub_24E347CF8();
  v10 = v9;

  LOBYTE(v7) = [v5 allowFriendListAccess] == 2;
  type metadata accessor for GameAccess();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *(v11 + 32) = v7;
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *a2;
  sub_24E058B00();
  *a2 = v20;

  v12 = [v5 bundleID];
  v13 = sub_24E347CF8();
  v15 = v14;

  sub_24E0111D0();
  v16 = *(*a3 + 16);
  result = sub_24E1242A0(v16);
  v18 = *a3;
  *(v18 + 16) = v16 + 1;
  v19 = v18 + 16 * v16;
  *(v19 + 32) = v13;
  *(v19 + 40) = v15;
  return result;
}

uint64_t sub_24E185420()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24E184A6C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_24E1849E4();
  }

  return result;
}

void sub_24E1854C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_24DF88A8C(0, &unk_27F1DFCF0);
  v5 = sub_24E347F08();

  v6 = a3;
  v4(v5, a3);
}

void sub_24E185570(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_24DF88A8C(0, &qword_27F1E6180);
  v5 = sub_24E347F08();

  v6 = a3;
  v4(v5, v6);
}

uint64_t sub_24E185620()
{
  v1 = OBJC_IVAR____TtC12GameCenterUIP33_3746981785C4FEB118F9793A3C282E2615GamesDataSource__games;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6178);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameCenterUIP33_3746981785C4FEB118F9793A3C282E2615GamesDataSource__loadingState;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6170);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12GameCenterUIP33_3746981785C4FEB118F9793A3C282E2615GamesDataSource__gameSettingsMap;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6168);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_24E185724()
{
  v0 = sub_24E185620();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_24E1857A0()
{
  sub_24E186034(319, &qword_27F1E6130, &qword_27F1E6138, &unk_24E37E668, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_24E186094(319, &qword_27F1E6140, &type metadata for GamesDataSource.LoadingState, MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      sub_24E186034(319, &qword_27F1E6148, &qword_27F1E6150, &unk_24E37E670, MEMORY[0x277CBCED0]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for GamesDataSource.LoadingState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E185A00()
{
  result = qword_27F1E6158;
  if (!qword_27F1E6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6158);
  }

  return result;
}

uint64_t sub_24E185A54()
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6168);
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6170);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6178);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtC12GameCenterUIP33_3746981785C4FEB118F9793A3C282E2615GamesDataSource__games;
  v17 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6138);
  sub_24E344E28();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC12GameCenterUIP33_3746981785C4FEB118F9793A3C282E2615GamesDataSource__loadingState;
  LOBYTE(v17) = 0;
  sub_24E344E28();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC12GameCenterUIP33_3746981785C4FEB118F9793A3C282E2615GamesDataSource__gameSettingsMap;
  v17 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6150);
  sub_24E344E28();
  (*(v1 + 32))(v0 + v14, v3, v16);
  return v0;
}

uint64_t sub_24E185D00@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GamesDataSource(0);
  result = sub_24E344DD8();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E185DD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E185E58()
{
  sub_24E186034(319, &qword_27F1E61A0, &qword_27F1E61A8, &unk_24E37E890, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24DFEB518();
    if (v1 <= 0x3F)
    {
      sub_24E185FA0();
      if (v2 <= 0x3F)
      {
        sub_24E186034(319, &qword_27F1E61C0, &qword_27F1E12B0, &unk_24E37E760, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24E186094(319, &qword_27F1DF470, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E185FA0()
{
  if (!qword_27F1E61B0)
  {
    type metadata accessor for GamesDataSource(255);
    sub_24E185DD8(&qword_27F1E61B8, type metadata accessor for GamesDataSource);
    v0 = sub_24E3452C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E61B0);
    }
  }
}

void sub_24E186034(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v7 = OUTLINED_FUNCTION_11_3();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24E186094(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24E186128()
{
  result = qword_27F1E61F0;
  if (!qword_27F1E61F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E61D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E61C8);
    sub_24E1027E4(&qword_27F1E61E8, &qword_27F1E61C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E61F0);
  }

  return result;
}

unint64_t sub_24E186234()
{
  result = qword_27F1E6248;
  if (!qword_27F1E6248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6240);
    sub_24E1862EC();
    sub_24E1027E4(&qword_27F1E6288, &qword_27F1E6290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6248);
  }

  return result;
}

unint64_t sub_24E1862EC()
{
  result = qword_27F1E6250;
  if (!qword_27F1E6250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6258);
    sub_24E1027E4(&qword_27F1E3E68, &qword_27F1E3E60);
    sub_24E1863A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6250);
  }

  return result;
}

unint64_t sub_24E1863A4()
{
  result = qword_27F1E6260;
  if (!qword_27F1E6260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6268);
    sub_24E186428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6260);
  }

  return result;
}

unint64_t sub_24E186428()
{
  result = qword_27F1E6270;
  if (!qword_27F1E6270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6278);
    sub_24E185DD8(&qword_27F1E6280, type metadata accessor for GameSettingToggle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6270);
  }

  return result;
}

uint64_t sub_24E1864FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E61F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_55Tm()
{
  type metadata accessor for ShareFriendsListDetailView(0);
  OUTLINED_FUNCTION_3_13();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v5 = *(v4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6160);
  OUTLINED_FUNCTION_11_3();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E61A8) + 32);
    sub_24E345788();
    OUTLINED_FUNCTION_0_26();
    (*(v8 + 8))(v0 + v3 + v7);
  }

  OUTLINED_FUNCTION_4_65();
  OUTLINED_FUNCTION_3_80();

  return MEMORY[0x2821FE8E8](v0, v3 + v5, v2 | 7);
}

uint64_t sub_24E1866A0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ShareFriendsListDetailView(0);

  return sub_24E182820(a1, a2);
}

unint64_t sub_24E186720()
{
  result = qword_27F1E62C0;
  if (!qword_27F1E62C0)
  {
    sub_24DF88A8C(255, &unk_27F1DFCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E62C0);
  }

  return result;
}

uint64_t sub_24E186788()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

unint64_t sub_24E18680C()
{
  result = qword_27F1E6308;
  if (!qword_27F1E6308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E62D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E62D0);
    sub_24E1027E4(&qword_27F1E6300, &qword_27F1E62D0);
    swift_getOpaqueTypeConformance2();
    sub_24E1027E4(&qword_27F1E45A0, &qword_27F1E45A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6308);
  }

  return result;
}

uint64_t sub_24E18694C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ShareFriendsListDetailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24E1869C0()
{
  v1 = type metadata accessor for ShareFriendsListDetailView(0);
  OUTLINED_FUNCTION_6_15(v1);
  return sub_24E181BC4(*(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + *(v3 + 64)));
}

uint64_t sub_24E186A34(uint64_t a1)
{
  v3 = type metadata accessor for ShareFriendsListDetailView(0);
  OUTLINED_FUNCTION_6_15(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 3) & 0xFFFFFFFFFFFFFFFCLL));

  return sub_24E182C98(a1, v1 + v8, v9);
}

void sub_24E186AF0()
{
  sub_24DFEB4C0();
  if (v0 <= 0x3F)
  {
    sub_24DF88A8C(319, &unk_27F1DFCF0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GameAccess();
      if (v2 <= 0x3F)
      {
        sub_24E186034(319, &qword_27F1E61C0, &qword_27F1E12B0, &unk_24E37E760, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24E186C0C()
{
  result = qword_27F1E6348;
  if (!qword_27F1E6348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6340);
    sub_24E1027E4(&qword_27F1E6350, &qword_27F1E6358);
    sub_24E1027E4(&qword_27F1E6360, &qword_27F1E6368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6348);
  }

  return result;
}

uint64_t sub_24E186CF0()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24E186D74(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_24E186DFC()
{
  result = qword_27F1E6378;
  if (!qword_27F1E6378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6330);
    sub_24E1027E4(&qword_27F1E6370, &qword_27F1E6330);
    swift_getOpaqueTypeConformance2();
    sub_24E1027E4(&qword_27F1E45A0, &unk_27F1E45A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6378);
  }

  return result;
}

uint64_t sub_24E186F24(uint64_t a1)
{
  v3 = type metadata accessor for GameSettingToggle(0);
  OUTLINED_FUNCTION_6_15(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_24E1841A0(a1, v1 + v8, v10, v11);
}

uint64_t sub_24E186FD4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24E187014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E187070(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_23_20(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    sub_24E185DD8(&qword_27F1DF850, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_120Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_24E1871D4()
{
  result = qword_27F1E63B8;
  if (!qword_27F1E63B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E63A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E63B8);
  }

  return result;
}

unint64_t sub_24E187258()
{
  result = qword_27F1E63C0;
  if (!qword_27F1E63C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E63B0);
    sub_24E1871D4();
    sub_24E1027E4(&qword_27F1E2040, &qword_27F1E2048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E63C0);
  }

  return result;
}

unint64_t sub_24E187310()
{
  result = qword_27F1E63C8;
  if (!qword_27F1E63C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E63D0);
    sub_24E18739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E63C8);
  }

  return result;
}

unint64_t sub_24E18739C()
{
  result = qword_27F1E63D8;
  if (!qword_27F1E63D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E63E0);
    sub_24E187428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E63D8);
  }

  return result;
}

unint64_t sub_24E187428()
{
  result = qword_27F1E63E8;
  if (!qword_27F1E63E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E63F0);
    sub_24E1874AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E63E8);
  }

  return result;
}

unint64_t sub_24E1874AC()
{
  result = qword_27F1E63F8;
  if (!qword_27F1E63F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6400);
    sub_24E1871D4();
    sub_24E187258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E63F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_65()
{
  sub_24E186108();
}

uint64_t sub_24E1875F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 504))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_24E187634(uint64_t result, int a2, int a3)
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
      *(result + 504) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 504) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24E187704(double a1)
{
  v3 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  sub_24E187BA8(v8 - v7);
  sub_24E3445F8();
  v10 = sub_24E188900(v1, a1);
  (*(v5 + 8))(v9, v3);
  return v10;
}

uint64_t sub_24E18781C()
{
  v1 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  sub_24E3484F8();
  sub_24E187BA8(v7);
  if (*(v0 + 144))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 424), *(v0 + 448));
    sub_24E3440D8();
  }

  __swift_project_boxed_opaque_existential_1((v0 + 424), *(v0 + 448));
  v12.origin.x = OUTLINED_FUNCTION_5_72();
  CGRectGetMaxX(v12);
  v13.origin.x = OUTLINED_FUNCTION_5_72();
  CGRectGetMinY(v13);
  OUTLINED_FUNCTION_5_72();
  sub_24E348508();
  sub_24E344088();
  __swift_project_boxed_opaque_existential_1((v0 + 464), *(v0 + 488));
  sub_24E3440E8();
  __swift_project_boxed_opaque_existential_1((v0 + 464), *(v0 + 488));
  v14.origin.x = OUTLINED_FUNCTION_6_58();
  CGRectGetMidX(v14);
  v15.origin.x = OUTLINED_FUNCTION_6_58();
  CGRectGetMaxY(v15);
  sub_24E344088();
  sub_24DF8F3A8(v0 + 264, &v9, &qword_27F1DEE30);
  if (v10)
  {
    sub_24DE56CE8(&v9, v11);
    __swift_project_boxed_opaque_existential_1((v0 + 304), *(v0 + 328));
    OUTLINED_FUNCTION_1_97();
    sub_24E344078();
    CGRectGetMaxX(v16);
    OUTLINED_FUNCTION_1_97();
    sub_24E344078();
    CGRectGetWidth(v17);
    OUTLINED_FUNCTION_1_97();
    sub_24E344078();
    CGRectGetMaxY(v18);
    OUTLINED_FUNCTION_1_97();
    sub_24E344078();
    CGRectGetHeight(v19);
    OUTLINED_FUNCTION_1_97();
    sub_24E344078();
    CGRectGetWidth(v20);
    OUTLINED_FUNCTION_1_97();
    sub_24E344078();
    CGRectGetHeight(v21);
    sub_24E344088();
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_24DF8F34C(&v9, &qword_27F1DEE30);
  }

  OUTLINED_FUNCTION_6_58();
  sub_24E344608();
  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_24E187BA8@<X0>(uint64_t a1@<X8>)
{
  v118 = a1;
  v110 = sub_24E344688();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v91 = &v89[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v89[-v7];
  v120 = sub_24E344648();
  OUTLINED_FUNCTION_0_14();
  v122 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  v14 = sub_24E344658();
  OUTLINED_FUNCTION_0_14();
  v121 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v123 = v18 - v17;
  v19 = sub_24E3445E8();
  OUTLINED_FUNCTION_0_14();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_1();
  v25 = v24 - v23;
  v124 = v1;
  sub_24DF8F3A8((v1 + 33), &v131, &qword_27F1DEE30);
  v26 = MEMORY[0x277D227E8];
  v109 = v3;
  v108 = v13;
  v116 = v14;
  v114 = v21;
  v113 = v25;
  v119 = v19;
  if (*(&v132 + 1))
  {
    sub_24DE56CE8(&v131, &v134);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
    v107 = *(v3 + 72);
    v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_24E36A270;
    v117 = v28;
    v29 = v21;
    v30 = v122;
    v115 = (v28 + v27);
    OUTLINED_FUNCTION_10_42();
    v31 = v26;
    v32 = v124;
    sub_24E3440C8();
    *(&v129 + 1) = MEMORY[0x277D839F8];
    v130 = MEMORY[0x277D22A30];
    *&v128 = 0;
    v127 = 0;
    memset(v126, 0, sizeof(v126));
    v33 = *MEMORY[0x277D227D0];
    v34 = *(v29 + 104);
    v105 = v29 + 104;
    v106 = v34;
    v35 = v25;
    v36 = v19;
    (v34)(v25, v33, v19);
    v102 = *v31;
    v37 = v121;
    v38 = *(v121 + 104);
    v103 = v121 + 104;
    v104 = v38;
    v38(v123);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
    v101 = *(v30 + 72);
    v94 = *(v30 + 80);
    v98 = (v94 + 32) & ~v94;
    v39 = swift_allocObject();
    v99 = xmmword_24E367D20;
    *(v39 + 16) = xmmword_24E367D20;
    sub_24E344618();
    v125 = v39;
    v96 = sub_24DF8A8A4();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
    v97 = sub_24DF8A8FC();
    v40 = v120;
    sub_24E3487E8();
    v41 = v123;
    sub_24E344678();
    v42 = *(v30 + 8);
    v92 = v30 + 8;
    v112 = v42;
    v42(v13, v40);
    v93 = *(v37 + 8);
    v43 = v41;
    v93(v41, v14);
    v111 = *(v114 + 8);
    v111(v35, v36);
    sub_24DF8F34C(v126, &qword_27F1DEE48);
    __swift_destroy_boxed_opaque_existential_1(&v131);
    __swift_destroy_boxed_opaque_existential_1(&v128);
    v44 = v32[46];
    v45 = v32[47];
    __swift_project_boxed_opaque_existential_1(v32 + 43, v44);
    *(&v132 + 1) = v44;
    v133 = *(v45 + 8);
    __swift_allocate_boxed_opaque_existential_1(&v131);
    OUTLINED_FUNCTION_22_0();
    v47 = v40;
    (*(v46 + 16))();
    v130 = 0;
    v128 = 0u;
    v129 = 0u;
    v90 = *MEMORY[0x277D227C8];
    v48 = v119;
    v106(v35);
    v49 = v116;
    v104(v43, v102, v116);
    v50 = swift_allocObject();
    *(v50 + 16) = v99;
    sub_24E344618();
    *&v126[0] = v50;
    sub_24E3487E8();
    v51 = v113;
    sub_24E344678();
    v112(v13, v47);
    v52 = v93;
    v93(v43, v49);
    v53 = v52;
    v111(v51, v48);
    sub_24DF8F34C(&v128, &qword_27F1DEE48);
    __swift_destroy_boxed_opaque_existential_1(&v131);
    __swift_destroy_boxed_opaque_existential_1(&v134);
    v54 = v48;
  }

  else
  {
    sub_24DF8F34C(&v131, &qword_27F1DEE30);
    v55 = v124[46];
    v56 = v124[47];
    __swift_project_boxed_opaque_existential_1(v124 + 43, v55);
    v115 = v8;
    v135 = v55;
    v57 = v108;
    v136 = *(v56 + 8);
    __swift_allocate_boxed_opaque_existential_1(&v134);
    OUTLINED_FUNCTION_22_0();
    (*(v58 + 16))();
    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    v59 = *(v21 + 104);
    v90 = *MEMORY[0x277D227C8];
    v59(v25);
    v60 = *v26;
    v61 = v121;
    v62 = v123;
    (*(v121 + 104))(v123, v60, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
    v63 = v122;
    v64 = OUTLINED_FUNCTION_12_29();
    *(v64 + 16) = xmmword_24E367D20;
    sub_24E344618();
    *&v128 = v64;
    sub_24DF8A8A4();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
    sub_24DF8A8FC();
    OUTLINED_FUNCTION_8_51();
    sub_24E344678();
    v112 = *(v63 + 8);
    v112(v57, v65);
    v53 = *(v61 + 8);
    v53(v62, v14);
    v66 = *(v21 + 8);
    v54 = v119;
    v111 = v66;
    (v66)(v25);
    sub_24DF8F34C(&v131, &qword_27F1DEE48);
    __swift_destroy_boxed_opaque_existential_1(&v134);
    sub_24E076A38();
    v68 = v67;
    v70 = *(v67 + 16);
    v69 = *(v67 + 24);
    v43 = v62;
    if (v70 >= v69 >> 1)
    {
      OUTLINED_FUNCTION_16_3(v69);
      sub_24E076A38();
      v68 = v87;
    }

    *(v68 + 16) = v70 + 1;
    v71 = *(v109 + 32);
    v72 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v117 = v68;
    v71(v68 + v72 + *(v109 + 72) * v70, v115, v110);
  }

  sub_24DF8F3A8((v124 + 48), &v131, &qword_27F1DF0C0);
  if (*(&v132 + 1))
  {
    sub_24DE56CE8(&v131, &v134);
    OUTLINED_FUNCTION_10_42();
    if ((sub_24E344058() & 1) != 0 && (OUTLINED_FUNCTION_10_42(), (sub_24E344098() & 1) == 0))
    {
      v74 = v135;
      v75 = v136;
      __swift_project_boxed_opaque_existential_1(&v134, v135);
      *(&v132 + 1) = v74;
      v133 = *(v75 + 8);
      __swift_allocate_boxed_opaque_existential_1(&v131);
      OUTLINED_FUNCTION_22_0();
      (*(v76 + 16))();
      v130 = 0;
      v128 = 0u;
      v129 = 0u;
      v77 = v113;
      (*(v114 + 104))(v113, v90, v54);
      (*(v121 + 104))(v43, *MEMORY[0x277D227E8], v116);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
      v78 = OUTLINED_FUNCTION_12_29();
      *(v78 + 16) = xmmword_24E367D20;
      sub_24E344618();
      *&v126[0] = v78;
      sub_24DF8A8A4();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
      sub_24DF8A8FC();
      v80 = v53;
      v81 = v108;
      OUTLINED_FUNCTION_8_51();
      v82 = v91;
      sub_24E344678();
      v112(v81, v79);
      v80(v43, v116);
      v111(v77, v119);
      sub_24DF8F34C(&v128, &qword_27F1DEE48);
      __swift_destroy_boxed_opaque_existential_1(&v131);
      v83 = v117;
      v85 = *(v117 + 16);
      v84 = *(v117 + 24);
      if (v85 >= v84 >> 1)
      {
        OUTLINED_FUNCTION_16_3(v84);
        sub_24E076A38();
        v83 = v88;
      }

      v86 = v109;
      *(v83 + 16) = v85 + 1;
      (*(v86 + 32))(v83 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v85, v82, v110);
      __swift_destroy_boxed_opaque_existential_1(&v134);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v134);
    }
  }

  else
  {
    sub_24DF8F34C(&v131, &qword_27F1DF0C0);
  }

  return sub_24E344668();
}

double sub_24E188900(void *a1, double a2)
{
  v4 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_0_16(a1 + 2);
  OUTLINED_FUNCTION_10_7();
  v11 = *(v6 + 8);
  v11(v10, v4);
  OUTLINED_FUNCTION_0_16(a1 + 7);
  OUTLINED_FUNCTION_10_7();
  v12 = OUTLINED_FUNCTION_7_43();
  (v11)(v12);
  OUTLINED_FUNCTION_0_16(a1 + 19);
  OUTLINED_FUNCTION_10_7();
  v13 = OUTLINED_FUNCTION_7_43();
  (v11)(v13);
  OUTLINED_FUNCTION_0_16(a1 + 24);
  OUTLINED_FUNCTION_10_7();
  v14 = OUTLINED_FUNCTION_7_43();
  (v11)(v14);
  return a2;
}

unint64_t sub_24E188AB0()
{
  result = qword_27F1E6408;
  if (!qword_27F1E6408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6408);
  }

  return result;
}

uint64_t sub_24E188B0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_24E188B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_97()
{
  v1 = *(v0 - 168);
  __swift_project_boxed_opaque_existential_1((v0 - 192), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_8_51()
{

  return sub_24E3487E8();
}

void *OUTLINED_FUNCTION_10_42()
{
  v2 = *(v0 - 104);

  return __swift_project_boxed_opaque_existential_1((v0 - 128), v2);
}

uint64_t OUTLINED_FUNCTION_12_29()
{

  return swift_allocObject();
}

uint64_t sub_24E188CB4()
{
  result = GKIsRemoteUI();
  byte_27F20AFF8 = result;
  return result;
}

uint64_t AchievementsTheme.hashValue.getter()
{
  v1 = *v0;
  sub_24E348D18();
  MEMORY[0x25303F880](v1);
  return sub_24E348D68();
}

unint64_t sub_24E188D58()
{
  result = qword_27F1E6410;
  if (!qword_27F1E6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6410);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AchievementsTheme(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24E188E88(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_24E189D38(a1, sub_24E189CC0, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_24E188F0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E90);
  OUTLINED_FUNCTION_6_59();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_9_42(v1, xmmword_24E37EEB0);
  type metadata accessor for ProfileHeaderData();
  sub_24E3472C8();
  v2 = type metadata accessor for PlayerProfileHeaderCollectionViewCell();
  v3 = sub_24E18A07C(&qword_27F1E5E70, type metadata accessor for PlayerProfileHeaderCollectionViewCell);
  *v0 = v2;
  v0[1] = v3;
  OUTLINED_FUNCTION_1_98();
  type metadata accessor for PlayerProfileInfoBarData();
  sub_24E3472C8();
  v4 = type metadata accessor for PlayerProfileInfoBarCollectionViewCell();
  v5 = sub_24E18A07C(&qword_27F1E6438, type metadata accessor for PlayerProfileInfoBarCollectionViewCell);
  *v0 = v4;
  v0[1] = v5;
  OUTLINED_FUNCTION_1_98();
  type metadata accessor for SmallPlayerCardData();
  sub_24E3472C8();
  v6 = type metadata accessor for SmallPlayerCardCollectionViewCell();
  v7 = sub_24E18A07C(&qword_27F1E6440, type metadata accessor for SmallPlayerCardCollectionViewCell);
  *v0 = v6;
  v0[1] = v7;
  OUTLINED_FUNCTION_1_98();
  type metadata accessor for DetailData();
  sub_24E3472C8();
  v8 = type metadata accessor for DetailCollectionViewCell();
  v9 = sub_24E18A07C(&qword_27F1E6448, type metadata accessor for DetailCollectionViewCell);
  *v0 = v8;
  v0[1] = v9;
  OUTLINED_FUNCTION_1_98();
  type metadata accessor for NicknameFieldData();
  sub_24E3472C8();
  v10 = type metadata accessor for NicknameFieldCollectionViewCell();
  v11 = sub_24E18A07C(&unk_27F1EA580, type metadata accessor for NicknameFieldCollectionViewCell);
  *v0 = v10;
  v0[1] = v11;
  OUTLINED_FUNCTION_1_98();
  type metadata accessor for TitledParagraphData();
  sub_24E3472C8();
  v12 = type metadata accessor for TitledParagraphCollectionViewCell();
  v13 = sub_24E18A07C(&unk_27F1E5F90, type metadata accessor for TitledParagraphCollectionViewCell);
  *v0 = v12;
  v0[1] = v13;
  OUTLINED_FUNCTION_0_125();
  type metadata accessor for AchievementsLinkData();
  sub_24E3472C8();
  v14 = type metadata accessor for AchievementsLinkCollectionViewCell();
  v15 = sub_24E18A07C(&qword_27F1E6450, type metadata accessor for AchievementsLinkCollectionViewCell);
  *v0 = v14;
  v0[1] = v15;
  OUTLINED_FUNCTION_1_98();
  type metadata accessor for SmallLockupData();
  sub_24E3472C8();
  v16 = type metadata accessor for SmallLockupCollectionViewCell();
  OUTLINED_FUNCTION_5_73();
  v19 = sub_24E18A07C(v17, v18);
  *v0 = v16;
  v0[1] = v19;
  OUTLINED_FUNCTION_1_98();
  type metadata accessor for AppStoreLockupData();
  sub_24E3472C8();
  v20 = type metadata accessor for AppStoreLockupCollectionViewCell();
  OUTLINED_FUNCTION_4_66();
  v23 = sub_24E18A07C(v21, v22);
  *v0 = v20;
  v0[1] = v23;
  OUTLINED_FUNCTION_1_98();
  type metadata accessor for EmptyStateData();
  sub_24E3472C8();
  v24 = type metadata accessor for NoFriendsCollectionViewCell();
  v25 = sub_24E18A07C(&qword_27F1E6458, type metadata accessor for NoFriendsCollectionViewCell);
  *v0 = v24;
  v0[1] = v25;
  OUTLINED_FUNCTION_0_125();
  type metadata accessor for OnboardingKitButtonData();
  sub_24E3472C8();
  v26 = type metadata accessor for OnboardingKitButtonCollectionViewCell();
  v27 = sub_24E18A07C(&qword_27F1E5828, type metadata accessor for OnboardingKitButtonCollectionViewCell);
  *v0 = v26;
  v0[1] = v27;
  OUTLINED_FUNCTION_0_125();
  type metadata accessor for ActivityFeedBaseData();
  sub_24E3472C8();
  v28 = type metadata accessor for ActivityFeedBaseCollectionViewCell();
  v29 = sub_24E18A07C(&qword_27F1E60B8, type metadata accessor for ActivityFeedBaseCollectionViewCell);
  *v0 = v28;
  v0[1] = v29;
  OUTLINED_FUNCTION_0_125();
  type metadata accessor for ActivityFeedArtworkData();
  sub_24E3472C8();
  v30 = type metadata accessor for ActivityFeedArtworkCollectionViewCell();
  v31 = sub_24E18A07C(&qword_27F1DFBD8, type metadata accessor for ActivityFeedArtworkCollectionViewCell);
  *v0 = v30;
  v0[1] = v31;
  OUTLINED_FUNCTION_0_125();
  type metadata accessor for ActivityFeedAchievementData();
  sub_24E3472C8();
  v32 = type metadata accessor for ActivityFeedAchievementCollectionViewCell();
  v33 = sub_24E18A07C(&qword_27F1E6460, type metadata accessor for ActivityFeedAchievementCollectionViewCell);
  *v0 = v32;
  v0[1] = v33;
  OUTLINED_FUNCTION_0_125();
  type metadata accessor for ActivityFeedLeaderboardData();
  sub_24E3472C8();
  v34 = type metadata accessor for ActivityFeedLeaderboardCollectionViewCell();
  v35 = sub_24E18A07C(&qword_27F1E6468, type metadata accessor for ActivityFeedLeaderboardCollectionViewCell);
  *v0 = v34;
  v0[1] = v35;
  OUTLINED_FUNCTION_1_98();
  type metadata accessor for ActivityFeedHeaderData();
  sub_24E3472C8();
  v36 = type metadata accessor for ActivityFeedHeaderCollectionViewCell();
  v37 = sub_24E18A07C(&qword_27F1E3338, type metadata accessor for ActivityFeedHeaderCollectionViewCell);
  *v0 = v36;
  v0[1] = v37;
  OUTLINED_FUNCTION_1_98();
  type metadata accessor for SmallFriendLockupData();
  sub_24E3472C8();
  v38 = type metadata accessor for SmallFriendLockupCollectionViewCell();
  OUTLINED_FUNCTION_3_81();
  v41 = sub_24E18A07C(v39, v40);
  *v0 = v38;
  v0[1] = v41;
  OUTLINED_FUNCTION_1_98();
  type metadata accessor for LargePlayerLockupData();
  sub_24E3472C8();
  v42 = type metadata accessor for LargePlayerLockupCollectionViewCell();
  v43 = sub_24E18A07C(&qword_27F1E6470, type metadata accessor for LargePlayerLockupCollectionViewCell);
  *v0 = v42;
  v0[1] = v43;
  OUTLINED_FUNCTION_0_125();
  type metadata accessor for JetDashboardSectionData();
  sub_24E3472C8();
  v44 = type metadata accessor for JetDashboardCollectionViewCell();
  v45 = sub_24E18A07C(&qword_27F1E6478, type metadata accessor for JetDashboardCollectionViewCell);
  *v0 = v44;
  v0[1] = v45;
  OUTLINED_FUNCTION_0_125();
  type metadata accessor for ContinuePlayingData();
  sub_24E3472C8();
  v46 = type metadata accessor for ContinuePlayingCollectionViewCell();
  v47 = sub_24E18A07C(&qword_27F1E6480, type metadata accessor for ContinuePlayingCollectionViewCell);
  *v0 = v46;
  v0[1] = v47;
  v48 = OUTLINED_FUNCTION_0_125();
  type metadata accessor for ActivityFeedAddFriendsData(v48);
  sub_24E3472C8();
  v49 = type metadata accessor for ActivityFeedAddFriendsCollectionViewCell();
  v50 = sub_24E18A07C(&qword_27F1E1018, type metadata accessor for ActivityFeedAddFriendsCollectionViewCell);
  *v0 = v49;
  v0[1] = v50;
  v51 = OUTLINED_FUNCTION_8_52();
  type metadata accessor for ActivityFeedLoadMoreData(v51);
  sub_24E3472C8();
  MoreCollectionViewCell = type metadata accessor for ActivityFeedLoadMoreCollectionViewCell();
  v53 = sub_24E18A07C(&qword_27F1E20E8, type metadata accessor for ActivityFeedLoadMoreCollectionViewCell);
  *v49 = MoreCollectionViewCell;
  v49[1] = v53;
  sub_24E3472B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6430);
  OUTLINED_FUNCTION_2_78();
  sub_24E18A07C(v54, v55);
  v56 = OUTLINED_FUNCTION_7_44();
  if (qword_27F1DD910 != -1)
  {
    swift_once();
  }

  v58 = sub_24E188E88(v57, v56);
  type metadata accessor for PlayerProfileComponents();
  result = swift_allocObject();
  *(result + 16) = v58;
  qword_27F20B000 = result;
  return result;
}

uint64_t sub_24E18980C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E90);
  OUTLINED_FUNCTION_6_59();
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  OUTLINED_FUNCTION_8_52();
  type metadata accessor for SmallFriendLockupData();
  sub_24E3472C8();
  v1 = type metadata accessor for SmallFriendLockupCollectionViewCell();
  OUTLINED_FUNCTION_3_81();
  v4 = sub_24E18A07C(v2, v3);
  *v0 = v1;
  v0[1] = v4;
  sub_24E3472B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6430);
  OUTLINED_FUNCTION_2_78();
  sub_24E18A07C(v5, v6);
  v7 = OUTLINED_FUNCTION_7_44();
  type metadata accessor for PlayerProfileComponents();
  result = swift_allocObject();
  *(result + 16) = v7;
  qword_27F20B008 = result;
  return result;
}

uint64_t sub_24E189978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E90);
  OUTLINED_FUNCTION_6_59();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_9_42(v1, xmmword_24E36A270);
  type metadata accessor for SmallLockupData();
  sub_24E3472C8();
  v2 = type metadata accessor for SmallLockupCollectionViewCell();
  OUTLINED_FUNCTION_5_73();
  v5 = sub_24E18A07C(v3, v4);
  *v0 = v2;
  v0[1] = v5;
  OUTLINED_FUNCTION_8_52();
  type metadata accessor for AppStoreLockupData();
  sub_24E3472C8();
  v6 = type metadata accessor for AppStoreLockupCollectionViewCell();
  OUTLINED_FUNCTION_4_66();
  v9 = sub_24E18A07C(v7, v8);
  *v2 = v6;
  v2[1] = v9;
  sub_24E3472B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6430);
  OUTLINED_FUNCTION_2_78();
  sub_24E18A07C(v10, v11);
  v12 = OUTLINED_FUNCTION_7_44();
  type metadata accessor for PlayerProfileComponents();
  result = swift_allocObject();
  *(result + 16) = v12;
  qword_27F20B010 = result;
  return result;
}

uint64_t sub_24E189B2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6418);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E90) - 8);
  v1 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24E367D20;
  v3 = (v2 + v1 + v0[14]);
  type metadata accessor for DashboardSidebarItemData();
  sub_24E3472C8();
  v4 = type metadata accessor for DashboardSidebarCollectionViewCell();
  v5 = sub_24E18A07C(&qword_27F1E6498, type metadata accessor for DashboardSidebarCollectionViewCell);
  *v3 = v4;
  v3[1] = v5;
  sub_24E3472B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6430);
  sub_24E18A07C(&qword_27F1DEFB0, MEMORY[0x277D21D58]);
  result = sub_24E347C28();
  qword_27F20B018 = result;
  return result;
}

uint64_t sub_24E189CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E80) + 48));
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E90) + 48));
  result = sub_24E0A85B4(a2, a1, *v4);
  *v5 = result;
  v5[1] = v7;
  return result;
}

uint64_t sub_24E189D38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v45 = sub_24E3472B8();
  v10 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6488);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v35 - v15;
  sub_24E0A8E2C(v43, a1, a2, a3, v14);
  v39 = v43[0];
  v40 = v43[1];
  v41 = v43[2];
  v42 = v44;
  v17 = (v10 + 32);
  v36 = (v10 + 8);
  v37 = v10;
  v35[2] = a1;

  v35[1] = a3;

  while (1)
  {
    sub_24E0A8A64(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E90);
    if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
    {
      sub_24DFFCE68();
    }

    v19 = *(v18 + 48);
    v20 = *v17;
    (*v17)(v12, v16, v45);
    v38 = *&v16[v19];
    v21 = *a5;
    v23 = sub_24E26AD7C(v12);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6490);
        sub_24E348AC8();
      }
    }

    else
    {
      sub_24E0A7FAC(v26, a4 & 1);
      v28 = sub_24E26AD7C(v12);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_16;
      }

      v23 = v28;
    }

    v30 = *a5;
    if (v27)
    {
      (*v36)(v12, v45);
      *(v30[7] + 16 * v23) = v38;
      a4 = 1;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v20((v30[6] + *(v37 + 72) * v23), v12, v45);
      *(v30[7] + 16 * v23) = v38;
      v31 = v30[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_15;
      }

      v30[2] = v33;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_24E348C98();
  __break(1u);
  return result;
}

uint64_t sub_24E18A07C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_44()
{

  return sub_24E347C28();
}

uint64_t PlayerProfileHeaderLayout.Metrics.init(avatarTopSpace:avatarSize:avatarBottomSpace:friendsTextSpace:titleTextSpace:subtitleTextSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, double a12@<D7>)
{
  *a4 = a5;
  a4[1] = a6;
  a4[2] = a7;
  a4[3] = a8;
  sub_24DE56CE8(a1, (a4 + 4));
  sub_24DE56CE8(a2, (a4 + 9));
  result = sub_24DE56CE8(a3, (a4 + 14));
  a4[19] = a9;
  a4[20] = a10;
  a4[21] = a11;
  a4[22] = a12;
  return result;
}

uint64_t PlayerProfileHeaderLayout.Metrics.friendsTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 32);

  return sub_24DE56CE8(a1, v1 + 32);
}

uint64_t PlayerProfileHeaderLayout.Metrics.titleTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 72);

  return sub_24DE56CE8(a1, v1 + 72);
}

uint64_t PlayerProfileHeaderLayout.Metrics.subtitleTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 112);

  return sub_24DE56CE8(a1, v1 + 112);
}

void PlayerProfileHeaderLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
}

__n128 PlayerProfileHeaderLayout.init(metrics:avatarView:friendsLabel:titleLabel:subtitleLabel:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(a6, __src, 0xB8uLL);
  sub_24DE56CE8(a2, a6 + 184);
  v11 = *(a3 + 16);
  *(a6 + 224) = *a3;
  *(a6 + 240) = v11;
  *(a6 + 256) = *(a3 + 32);
  sub_24DE56CE8(a4, a6 + 264);
  result = *a5;
  v13 = *(a5 + 16);
  *(a6 + 304) = *a5;
  *(a6 + 320) = v13;
  *(a6 + 336) = *(a5 + 32);
  return result;
}

uint64_t PlayerProfileHeaderLayout.placeChildren(relativeTo:in:)()
{
  v0 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E18A5D0(v5);
  sub_24E344608();
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_24E18A5D0@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E64A0);
  MEMORY[0x28223BE20](v2 - 8);
  v103 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v96 = &v95 - v5;
  MEMORY[0x28223BE20](v6);
  v128 = &v95 - v7;
  v132 = sub_24E344648();
  v130 = *(v132 - 8);
  v137 = v130;
  MEMORY[0x28223BE20](v132);
  v135 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_24E344658();
  v9 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_24E3445E8();
  v136 = *(v133 - 8);
  v12 = v136;
  MEMORY[0x28223BE20](v133);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_24E344688();
  v134 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v102 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v101 = &v95 - v17;
  MEMORY[0x28223BE20](v18);
  v100 = &v95 - v19;
  MEMORY[0x28223BE20](v20);
  v127 = &v95 - v21;
  MEMORY[0x28223BE20](v22);
  v97 = &v95 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v95 - v25;
  __swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
  sub_24E3440C8();
  __swift_project_boxed_opaque_existential_1(&v147, v148);
  sub_24E3440A8();
  v27 = *v1;
  *(&v142 + 1) = MEMORY[0x277D85048];
  v143 = MEMORY[0x277D225F8];
  *&v141 = v27;
  v98 = v1;
  v28 = v1[3];
  v140[3] = MEMORY[0x277D85048];
  v140[4] = MEMORY[0x277D225F8];
  v140[0] = v28;
  v29 = *(v12 + 104);
  v121 = *MEMORY[0x277D227D0];
  v122 = v12 + 104;
  v120 = v29;
  v29(v14);
  v30 = *(v9 + 104);
  v118 = *MEMORY[0x277D227E8];
  v31 = v131;
  v119 = v9 + 104;
  v117 = v30;
  v30(v11);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  v33 = v137;
  v34 = *(v137 + 80);
  v35 = (v34 + 32) & ~v34;
  v114 = *(v130 + 72);
  v113 = v34;
  v116 = v32;
  v36 = swift_allocObject();
  v111 = xmmword_24E367D20;
  *(v36 + 16) = xmmword_24E367D20;
  v115 = v35;
  sub_24E344618();
  v139 = v36;
  v37 = sub_24DF8A8A4();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  v39 = sub_24DF8A8FC();
  v40 = v135;
  v110 = v38;
  v109 = v39;
  v41 = v132;
  v112 = v37;
  sub_24E3487E8();
  v99 = v26;
  sub_24E344678();
  v42 = *(v33 + 8);
  v137 = v33 + 8;
  v108 = v42;
  v42(v40, v41);
  v43 = *(v9 + 8);
  v126 = v11;
  v125 = v9 + 8;
  v107 = v43;
  v43(v11, v31);
  v44 = *(v136 + 8);
  v124 = v14;
  v136 += 8;
  v106 = v44;
  v44(v14, v133);
  __swift_destroy_boxed_opaque_existential_1(&v144);
  sub_24DF8C95C(v140, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(&v141);
  __swift_destroy_boxed_opaque_existential_1(&v147);
  sub_24E076A38();
  v46 = v45;
  v47 = *(v45 + 16);
  if (v47 >= *(v45 + 24) >> 1)
  {
    sub_24E076A38();
    v46 = v91;
  }

  *(v46 + 16) = v47 + 1;
  v49 = v134 + 32;
  v48 = *(v134 + 32);
  v130 = (*(v134 + 80) + 32) & ~*(v134 + 80);
  v129 = *(v134 + 72);
  v50 = v138;
  v48(v46 + v130 + v129 * v47, v99, v138);
  __swift_storeEnumTagSinglePayload(v128, 1, 1, v50);
  v51 = v98;
  sub_24DF9DEAC((v98 + 28), &v144, &qword_27F1DF0C0);
  v52 = v135;
  v105 = v49;
  v123 = v48;
  if (*(&v145 + 1))
  {
    sub_24DE56CE8(&v144, &v147);
    __swift_project_boxed_opaque_existential_1(&v147, v148);
    sub_24E3440A8();
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    v53 = v124;
    v54 = v133;
    v120(v124, v121, v133);
    v55 = v126;
    v56 = v131;
    v117(v126, v118, v131);
    v57 = swift_allocObject();
    *(v57 + 16) = v111;
    sub_24E344618();
    v140[0] = v57;
    v58 = v132;
    sub_24E3487E8();
    v59 = v97;
    sub_24E344678();
    v108(v52, v58);
    v107(v55, v56);
    v106(v53, v54);
    sub_24DF8C95C(&v141, &qword_27F1DEE48);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    v60 = *(v46 + 16);
    if (v60 >= *(v46 + 24) >> 1)
    {
      sub_24E076A38();
      v46 = v93;
    }

    *(v46 + 16) = v60 + 1;
    v123(v46 + v130 + v60 * v129, v59, v138);
    __swift_destroy_boxed_opaque_existential_1(&v147);
  }

  else
  {
    sub_24DF8C95C(&v144, &qword_27F1DF0C0);
  }

  __swift_project_boxed_opaque_existential_1(v51 + 33, v51[36]);
  sub_24E3440A8();
  v146 = 0;
  v144 = 0u;
  v145 = 0u;
  v61 = v124;
  v62 = v133;
  v120(v124, v121, v133);
  v63 = v126;
  v64 = v131;
  v117(v126, v118, v131);
  v65 = swift_allocObject();
  *(v65 + 16) = v111;
  sub_24E344618();
  *&v141 = v65;
  v66 = v135;
  v67 = v132;
  sub_24E3487E8();
  v68 = v127;
  sub_24E344678();
  v108(v66, v67);
  v107(v63, v64);
  v106(v61, v62);
  sub_24DF8C95C(&v144, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(&v147);
  v69 = *(v134 + 16);
  v70 = v100;
  v69(v100, v68, v138);
  v71 = *(v46 + 16);
  if (v71 >= *(v46 + 24) >> 1)
  {
    sub_24E076A38();
    v46 = v92;
  }

  v72 = v123;
  *(v46 + 16) = v71 + 1;
  v73 = v46 + v130 + v71 * v129;
  v74 = v138;
  v72(v73, v70, v138);
  sub_24DF9DEAC((v51 + 38), &v144, &qword_27F1DF0C0);
  if (*(&v145 + 1))
  {
    sub_24DE56CE8(&v144, &v147);
    __swift_project_boxed_opaque_existential_1(&v147, v148);
    if ((sub_24E344058() & 1) != 0 && (__swift_project_boxed_opaque_existential_1(&v147, v148), (sub_24E344098() & 1) == 0))
    {
      __swift_project_boxed_opaque_existential_1(&v147, v148);
      sub_24E3440A8();
      v143 = 0;
      v141 = 0u;
      v142 = 0u;
      v76 = v124;
      v120(v124, v121, v133);
      v77 = v126;
      v78 = v131;
      v117(v126, v118, v131);
      v79 = swift_allocObject();
      *(v79 + 16) = v111;
      sub_24E344618();
      v140[0] = v79;
      v80 = v69;
      v81 = v135;
      v82 = v132;
      sub_24E3487E8();
      v83 = v96;
      sub_24E344678();
      v84 = v81;
      v69 = v80;
      v108(v84, v82);
      v85 = v78;
      v72 = v123;
      v107(v77, v85);
      v106(v76, v133);
      sub_24DF8C95C(&v141, &qword_27F1DEE48);
      __swift_destroy_boxed_opaque_existential_1(&v144);
      v75 = v128;
      sub_24DF8C95C(v128, &qword_27F1E64A0);
      v74 = v138;
      __swift_storeEnumTagSinglePayload(v83, 0, 1, v138);
      sub_24E18BA44(v83, v75);
      __swift_destroy_boxed_opaque_existential_1(&v147);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v147);
      v75 = v128;
      v74 = v138;
    }
  }

  else
  {
    sub_24DF8C95C(&v144, &qword_27F1DF0C0);
    v75 = v128;
  }

  v86 = v103;
  sub_24DF9DEAC(v75, v103, &qword_27F1E64A0);
  if (__swift_getEnumTagSinglePayload(v86, 1, v74) == 1)
  {
    sub_24DF8C95C(v86, &qword_27F1E64A0);
    v87 = v134;
  }

  else
  {
    v88 = v101;
    v72(v101, v86, v74);
    v69(v102, v88, v74);
    v89 = *(v46 + 16);
    if (v89 >= *(v46 + 24) >> 1)
    {
      sub_24E076A38();
      v46 = v94;
    }

    v87 = v134;
    (*(v134 + 8))(v101, v74);
    *(v46 + 16) = v89 + 1;
    v72(v46 + v130 + v89 * v129, v102, v74);
  }

  sub_24E344668();
  (*(v87 + 8))(v127, v74);
  return sub_24DF8C95C(v75, &qword_27F1E64A0);
}

double PlayerProfileHeaderLayout.measurements(fitting:in:)(double a1)
{
  v2 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E18A5D0(v7);
  sub_24E3445F8();
  (*(v4 + 8))(v7, v2);
  return a1;
}

uint64_t sub_24E18B8A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 344))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_24E18B8E0(uint64_t result, int a2, int a3)
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E18B988(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_24E18B9C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E18BA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E64A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E18BAB4(void *a1, void *a2)
{
  sub_24E347218();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = sub_24E346EE8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  sub_24E346F08();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v17 = sub_24E347AD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
  sub_24E347328();
  if (!v50)
  {
    sub_24DF8C95C(&v49, &qword_27F1E1B70);
    aBlock = 0u;
    v46 = 0u;
    v47 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E59F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v47 = 0;
    aBlock = 0u;
    v46 = 0u;
LABEL_7:
    sub_24DF8C95C(&aBlock, &qword_27F1E59E8);
    if (a2)
    {
      v28 = a2;
      v29 = [v28 lockup];
      if (v29)
      {
        v30 = v29;
        sub_24E085260();
        v31 = sub_24E348368();
        v32 = swift_allocObject();
        *(v32 + 16) = v30;
        *(v32 + 24) = v28;
        v47 = sub_24E18C350;
        v48 = v32;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v46 = sub_24E00B24C;
        *(&v46 + 1) = &block_descriptor_60;
        v33 = _Block_copy(&aBlock);
        v44 = v28;
        v34 = v30;

        sub_24E346EF8();
        *&aBlock = MEMORY[0x277D84F90];
        sub_24DFC151C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
        sub_24DFCD5F4();
        OUTLINED_FUNCTION_1_99();
        sub_24E3487E8();
        MEMORY[0x25303EED0](0, v16, v12, v33);
        _Block_release(v33);

        v35 = OUTLINED_FUNCTION_5_74();
        v36(v35);
        v37 = OUTLINED_FUNCTION_4_67();
        v38(v37);
        v39 = OUTLINED_FUNCTION_3_82();
        v40(v39);
        sub_24E347AC8();

        (*(v8 + 8))(v7, v31);
        return v17;
      }
    }

    sub_24E18C2FC();
    v41 = swift_allocError();
    sub_24E347AB8();

    return v17;
  }

  if (!*(&v46 + 1))
  {
    goto LABEL_7;
  }

  sub_24DE56CE8(&aBlock, v51);
  sub_24E085260();
  v43 = sub_24E348368();
  sub_24DF89628(v51, &v49);
  v18 = swift_allocObject();
  sub_24DE56CE8(&v49, v18 + 16);
  *(v18 + 56) = a1;
  *(v18 + 64) = a2;
  v47 = sub_24E18C370;
  v48 = v18;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v46 = sub_24E00B24C;
  *(&v46 + 1) = &block_descriptor_7_0;
  v19 = _Block_copy(&aBlock);
  v20 = a2;
  v21 = a1;

  sub_24E346EF8();
  *&aBlock = MEMORY[0x277D84F90];
  sub_24DFC151C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
  sub_24DFCD5F4();
  OUTLINED_FUNCTION_1_99();
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v16, v12, v19);
  _Block_release(v19);

  v22 = OUTLINED_FUNCTION_5_74();
  v23(v22);
  v24 = OUTLINED_FUNCTION_4_67();
  v25(v24);
  v26 = OUTLINED_FUNCTION_3_82();
  v27(v26);
  sub_24E347AC8();
  (*(v8 + 8))(v7, v19);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v17;
}

uint64_t sub_24E18C098(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = [a2 stringValue];
  v6 = sub_24E347CF8();
  v8 = v7;

  (*(v4 + 16))(v6, v8, v3, v4);
}

void sub_24E18C13C(void *a1, void *a2)
{
  v4 = sub_24DFAD524(a2, &selRef_storeSheetHostBundleID);
  v6 = v5;
  v7 = sub_24DFAD524(a2, &selRef_storeSheetUsageContext);
  v9 = v8;
  objc_allocWithZone(MEMORY[0x277CEC288]);
  v10 = sub_24E18C37C(a1, v4, v6, v7, v9);
  v12[4] = CGSizeMake;
  v12[5] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24DFD47C8;
  v12[3] = &block_descriptor_10_1;
  v11 = _Block_copy(v12);
  [v10 present_];
  _Block_release(v11);
}

unint64_t sub_24E18C284()
{
  result = qword_27F1EACA0;
  if (!qword_27F1EACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EACA0);
  }

  return result;
}

unint64_t sub_24E18C2FC()
{
  result = qword_27F1E64A8;
  if (!qword_27F1E64A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E64A8);
  }

  return result;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24E18C37C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    v8 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_24E347CB8();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_24E347CB8();

LABEL_6:
  v10 = [v5 initWithLockup:a1 storeSheetHostBundleID:v8 storeSheetUsageContext:v9];

  return v10;
}

_BYTE *storeEnumTagSinglePayload for AppStoreProductActionImplementation.AppStoreProductActionImplementationError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_24E18C4E0()
{
  result = qword_27F1E64B0;
  if (!qword_27F1E64B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E64B0);
  }

  return result;
}

uint64_t sub_24E18C5A4@<X0>(void *a1@<X8>)
{
  result = sub_24E3458C8();
  *a1 = v3;
  return result;
}

uint64_t sub_24E18C5F8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_24E347BD8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277CE3B68])
  {
    if (a2)
    {
      if (qword_27F1DDB28 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for ActivityFeedLockupTheme();
      v13 = qword_27F1E8B20;
    }

    else
    {
      if (qword_27F1DDB30 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for ActivityFeedLockupTheme();
      v13 = qword_27F1E8B38;
    }

LABEL_13:
    v14 = __swift_project_value_buffer(v12, v13);
    sub_24E18D450(v14, a3, type metadata accessor for ActivityFeedLockupTheme);
    return (*(v7 + 8))(v10, v6);
  }

  if (v11 == *MEMORY[0x277CE3B70])
  {
    if (qword_27F1DDB38 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for ActivityFeedLockupTheme();
    v13 = qword_27F1E8B50;
    goto LABEL_13;
  }

  if (v11 == *MEMORY[0x277CE3B60] || v11 == *MEMORY[0x277CE3B88])
  {
    (*(v7 + 8))(v10, v6);
    if (qword_27F1DDB40 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for ActivityFeedLockupTheme();
    v18 = __swift_project_value_buffer(v17, qword_27F1E8B68);
    return sub_24E18D450(v18, a3, type metadata accessor for ActivityFeedLockupTheme);
  }

  else
  {
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_24E348998();
    MEMORY[0x25303E950](0x7320746567646957, 0xEC00000020657A69);
    sub_24E18D588(&qword_27F1E64C0, MEMORY[0x277CE3BA0]);
    v19 = sub_24E348BA8();
    MEMORY[0x25303E950](v19);

    MEMORY[0x25303E950](0xD00000000000006CLL, 0x800000024E3AA830);
    result = sub_24E348AE8();
    __break(1u);
  }

  return result;
}

uint64_t static ActivityFeedLockupVendor.makeWidgetLockup(with:index:widgetFamily:widgetID:cachedImages:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8)
{
  v65 = a8;
  v67 = a7;
  v66 = a6;
  v68 = a5;
  v69 = a2;
  v70 = a1;
  v63 = type metadata accessor for ActivityFeedLockupView();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v62 = (v12 - v11);
  OUTLINED_FUNCTION_18_1();
  v13 = type metadata accessor for ActivityFeedLockupTheme();
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_7_1();
  v61 = v15 - v14;
  OUTLINED_FUNCTION_18_1();
  v16 = sub_24E347BD8();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E64B8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v59 - v24;
  v26 = type metadata accessor for ActivityFeedLockupViewModel();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_1();
  v60 = v29 - v28;
  v30 = [a3 instrumentationKey];
  v31 = sub_24E347CF8();
  v33 = v32;

  v34 = v70;
  *&v74 = v31;
  *(&v74 + 1) = v33;
  v64 = a4;
  *v75 = a4;
  memset(&v75[8], 0, 32);
  *&v75[40] = 0xE000000000000000;
  v73[0] = v74;
  v73[1] = *v75;
  v73[2] = *&v75[16];
  v73[3] = *&v75[32];
  type metadata accessor for ActivityFeedBaseData();
  v35 = sub_24DFDBDB8(a3, 0, 0, v73);
  v36 = v68;
  v37 = v35;
  sub_24DF82D5C(&v74);
  if (!v37)
  {
    goto LABEL_4;
  }

  v38 = MEMORY[0x277CE3BA0];
  sub_24E18D588(&qword_27F1E64C0, MEMORY[0x277CE3BA0]);
  v59 = sub_24E348BA8();
  v40 = v39;
  (*(v18 + 104))(v22, *MEMORY[0x277CE3B68], v16);
  sub_24E18D588(&qword_27F1E64C8, v38);
  sub_24E347EC8();
  sub_24E347EC8();
  (*(v18 + 8))(v22, v16);
  sub_24E310E64(v37, v65, v59, v40, v66, v67, v72 == v71, v25);

  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {

    sub_24E18D384(v25);
    v34 = v70;
LABEL_4:
    static ActivityFeedLockupVendor.makeWidgetPlaceholderLockup(for:)(v36, &v72);
    *v34 = sub_24E346C48();
    v41 = sub_24E343288();
    return __swift_storeEnumTagSinglePayload(v69, 1, 1, v41);
  }

  v43 = v60;
  sub_24E18D3EC(v25, v60);
  sub_24DFC1E40(v43 + *(v26 + 32), v69);
  v44 = v61;
  sub_24E18C5F8(v36, 0, v61);
  v45 = v63;
  OUTLINED_FUNCTION_5_75();
  v46 = v62;
  sub_24E18D450(v43, v62 + v47, v48);
  OUTLINED_FUNCTION_2_79();
  sub_24E18D450(v44, v46 + v49, v50);
  type metadata accessor for ArtworkLoader();
  *v46 = sub_24E2002B8();
  v51 = v46 + v45[8];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = v45[9];
  *(v46 + v52) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0);
  swift_storeEnumTagMultiPayload();
  v53 = (v46 + v45[7]);
  OUTLINED_FUNCTION_6_60();
  sub_24E18D588(v54, v55);
  *v53 = 0u;
  v53[1] = 0u;
  v53[2] = 0u;
  v53[3] = 0u;
  v56 = sub_24E346C48();

  OUTLINED_FUNCTION_4_68();
  sub_24E18D5D0(v44, v57);
  OUTLINED_FUNCTION_3_83();
  result = sub_24E18D5D0(v43, v58);
  *v70 = v56;
  return result;
}

uint64_t static ActivityFeedLockupVendor.makeWidgetPlaceholderLockup(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a1;
  v51 = a2;
  sub_24E3457A8();
  OUTLINED_FUNCTION_0_14();
  v49 = v3;
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v47 = v5 - v4;
  OUTLINED_FUNCTION_18_1();
  v6 = type metadata accessor for ActivityFeedLockupView();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = (v9 - v8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E64D8);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v11);
  v46 = &v44 - v12;
  OUTLINED_FUNCTION_18_1();
  v13 = type metadata accessor for ActivityFeedLockupTheme();
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  v17 = type metadata accessor for ActivityFeedLockupViewModel();
  v18 = (v17 - 8);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2600);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24E367D20;
  *(v22 + 32) = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  *(v22 + 40) = 0;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;
  v23 = v18[8];
  sub_24E343288();
  OUTLINED_FUNCTION_8_53(v21 + v23);
  OUTLINED_FUNCTION_8_53(v21 + v18[10]);
  v24 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  OUTLINED_FUNCTION_8_53(v21 + v18[13]);
  sub_24E343398();
  *(v21 + v18[7]) = v22;
  v25 = (v21 + v18[9]);
  *v25 = 0xD000000000000039;
  v25[1] = 0x800000024E3AA7B0;
  v26 = (v21 + v18[11]);
  *v26 = 0xD000000000000039;
  v26[1] = 0x800000024E3AA7B0;
  v27 = v21 + v18[12];
  *v27 = v24;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v21 + v18[14]) = 1;
  v28 = (v21 + v18[15]);
  *v28 = 0;
  v28[1] = 0;
  *(v21 + v18[16]) = 0;
  sub_24E18C5F8(v45, 1, v16);
  OUTLINED_FUNCTION_5_75();
  sub_24E18D450(v21, v10 + v29, v30);
  OUTLINED_FUNCTION_2_79();
  sub_24E18D450(v16, v10 + v31, v32);
  type metadata accessor for ArtworkLoader();
  *v10 = sub_24E2002B8();
  v33 = v10 + v6[8];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = v6[9];
  *(v10 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0);
  swift_storeEnumTagMultiPayload();
  v35 = (v10 + v6[7]);
  v35[2] = 0u;
  v35[3] = 0u;
  *v35 = 0u;
  v35[1] = 0u;
  v36 = v47;
  sub_24E345798();
  OUTLINED_FUNCTION_6_60();
  v39 = sub_24E18D588(v37, v38);
  sub_24E3468E8();
  (*(v49 + 8))(v36, v50);
  sub_24E18D5D0(v10, type metadata accessor for ActivityFeedLockupView);
  v52 = v6;
  v53 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = sub_24E346C48();
  OUTLINED_FUNCTION_4_68();
  sub_24E18D5D0(v16, v41);
  OUTLINED_FUNCTION_3_83();
  result = sub_24E18D5D0(v21, v42);
  *v51 = v40;
  return result;
}

uint64_t sub_24E18D384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E64B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E18D3EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedLockupViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E18D450(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E18D4D4(uint64_t a1)
{
  sub_24E347B98();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_24E345AE8();
}

uint64_t sub_24E18D588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E18D5D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_8_53(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t sub_24E18D6BC()
{
  v0 = sub_24E347218();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v4 = sub_24E347AD8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v16 = Strong;
    sub_24E18D984();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E64E0);
    if (swift_dynamicCast())
    {
      sub_24DE56CE8(v14, v17);
      [*__swift_project_boxed_opaque_existential_1(v17 v17[3])];
      v8 = OUTLINED_FUNCTION_0_126();
      v9(v8);
      sub_24E347AC8();

      (*(v1 + 8))(v3, v0);
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      sub_24E18D9C8(v14);
      sub_24E18DA30();
      v12 = swift_allocError();
      sub_24E347AB8();
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_126();
    v11(v10);
    sub_24E347AC8();
    (*(v1 + 8))(v3, v0);
  }

  return v4;
}

unint64_t sub_24E18D908()
{
  result = qword_27F1E3990;
  if (!qword_27F1E3990)
  {
    type metadata accessor for ScrollToTopAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3990);
  }

  return result;
}

unint64_t sub_24E18D984()
{
  result = qword_27F1E05B0;
  if (!qword_27F1E05B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E05B0);
  }

  return result;
}

uint64_t sub_24E18D9C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E64E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E18DA30()
{
  result = qword_27F1E64F0;
  if (!qword_27F1E64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E64F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ScrollToTopActionImplementation.ScrollToTopActionImplementationError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_24E18DB34()
{
  result = qword_27F1E64F8;
  if (!qword_27F1E64F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E64F8);
  }

  return result;
}

uint64_t sub_24E18DB9C(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t sub_24E18DBEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v10 = sub_24E347AD8();
  v11 = v4[3];
  v12 = v5[4];
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v13 = a1;
  sub_24DE56C38(a2);
  sub_24E18EAC8(v11, v12);
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v15 = v5[6];
  v5[6] = sub_24E18EB3C;
  v5[7] = v14;
  v16 = v13;
  sub_24DE56C38(a2);

  sub_24DE73FA0(v15);
  v17 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_16_4();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v10;
  OUTLINED_FUNCTION_0_95();
  v21[1] = 1107296256;
  v21[2] = sub_24E055980;
  v21[3] = &block_descriptor_30_0;
  v19 = _Block_copy(v21);

  [v16 loadPlayerContactForAvatarControllerWithImageSize:65537 completion:v19];
  _Block_release(v19);
  return v10;
}

uint64_t sub_24E18DDAC(void *a1)
{
  v1 = [a1 internal];

  sub_24E254098(v2);
}

void sub_24E18DE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24E347218();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() photoPickerForGameCenterWithContact_];
      [v14 setDelegate_];
      v15 = sub_24E347CB8();
      v16 = GKGameCenterUIFrameworkBundle();
      v17 = GKGetLocalizedStringFromTableInBundle();

      v18 = sub_24E347CF8();
      v20 = v19;

      sub_24E14D064(v18, v20, v14);
      v21 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      v22 = [v13 traitCollection];
      v23 = [v22 horizontalSizeClass];

      if (v23 == 2)
      {
        [v21 setModalPresentationStyle_];
      }

      aBlock[4] = sub_24E18EBA4;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24E00B24C;
      aBlock[3] = &block_descriptor_33;
      v24 = _Block_copy(aBlock);

      [v13 presentViewController:v21 animated:1 completion:v24];
      _Block_release(v24);
    }

    else
    {
      (*(v7 + 104))(v9, *MEMORY[0x277D21CA8], v6);
      sub_24E347AC8();

      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    sub_24E18EB50();
    v25 = swift_allocError();
    sub_24E347AB8();
  }
}

uint64_t sub_24E18E15C()
{
  v0 = sub_24E347218();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D21CA8], v0, v2);
  sub_24E347AC8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_24E18E248(void *a1)
{
  v2 = [a1 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  v4 = v1[3];
  v5 = v1[4];
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = 0;
  sub_24E18EAC8(v4, v5);
  v6 = v1[6];
  v1[6] = 0;
  v1[7] = 0;

  return sub_24DE73FA0(v6);
}

void sub_24E18E314(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  if (v4)
  {
    v8 = *(v3 + 32);
    sub_24E18EA80(*(v3 + 24), v8);
    v9 = v4;
    sub_24E18EAC8(v4, v8);
    v10 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_16_4();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a1;
    OUTLINED_FUNCTION_0_95();
    v14[1] = 1107296256;
    v14[2] = sub_24E052CF0;
    v14[3] = &block_descriptor_61;
    v12 = _Block_copy(v14);
    v13 = a1;

    [v9 setPhotoFromCNContactImage:a3 pendingContact:a2 withCompletionHandler:v12];
    _Block_release(v12);
  }
}

uint64_t sub_24E18E448(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_24E346EE8();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24E346F08();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E085260();
  v12 = sub_24E348368();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_24E18EB30;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E00B24C;
  aBlock[3] = &block_descriptor_20_1;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  v16 = a3;

  sub_24E346EF8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24DFC151C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
  sub_24DFCD5F4();
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_24E18E6EC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 24);
    v6 = *(Strong + 32);
    sub_24E18EA80(v7, v6);

    if (v7)
    {
      v8 = v7;
      sub_24E18EAC8(v7, v6);
      [v8 clearInMemoryCachedAvatars];
    }
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + 48);
    sub_24DE56C38(v10);

    if (v10)
    {
      v10(v11);
      sub_24DE73FA0(v10);
    }
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v14 = *(v12 + 24);
    v13 = *(v12 + 32);
    sub_24E18EA80(v14, v13);

    if (v14)
    {
      sub_24DE56C38(v13);
      sub_24E18EAC8(v14, v13);
      if (v13)
      {
        v13(a2);
        sub_24DE73FA0(v13);
      }
    }
  }

  v15 = [a3 presentingViewController];
  if (v15)
  {
    v16 = v15;
    [v15 dismissViewControllerAnimated:1 completion:0];
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = *(v17 + 24);
    v20 = v18[4];
    v18[4] = 0;
    v18[5] = 0;
    v18[3] = 0;
    sub_24E18EAC8(v19, v20);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = *(result + 48);
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    sub_24DE73FA0(v23);
  }

  return result;
}

uint64_t sub_24E18E9BC()
{
  MEMORY[0x253040FB0](v0 + 16);
  sub_24E18EAC8(*(v0 + 24), *(v0 + 32));
  sub_24DE73FA0(*(v0 + 48));
  return v0;
}

uint64_t sub_24E18E9F0()
{
  sub_24E18E9BC();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void *sub_24E18EA80(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;

    return sub_24DE56C38(a2);
  }

  return result;
}

void *sub_24E18EAC8(void *result, uint64_t a2)
{
  if (result)
  {

    return sub_24DE73FA0(a2);
  }

  return result;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E18EB50()
{
  result = qword_27F1E6500;
  if (!qword_27F1E6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6500);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayerAvatarPickerActionImplementation.AvatarPickerActionImplementationError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}