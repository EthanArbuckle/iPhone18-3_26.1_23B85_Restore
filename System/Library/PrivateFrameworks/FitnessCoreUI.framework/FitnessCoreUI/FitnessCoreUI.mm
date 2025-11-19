uint64_t sub_20C38B9C0()
{
  result = type metadata accessor for DynamicArtworkDescriptor();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StandardArtworkDescriptor();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20C38BA68()
{
  type metadata accessor for ArtworkCandidate();
  result = sub_20C3E8DCC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StandardArtworkDescriptor();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20C38BB34()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_20C38BBC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20C38BBC4()
{
  if (!qword_2810F2138)
  {
    v0 = sub_20C3E905C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F2138);
    }
  }
}

uint64_t sub_20C38BC2C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20C38BD08(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

char *FloatingTabsView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_itemDescriptors] = MEMORY[0x277D84F90];
  v9 = &v4[OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_selectedIndex];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_layout];
  *v10 = xmmword_20C3EDB50;
  *(v10 + 1) = xmmword_20C3EDB60;
  v11 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_sizingCell;
  type metadata accessor for FloatingTabItemCell();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_tabsViewController;
  type metadata accessor for FloatingTabsViewController();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v45.receiver = v4;
  v45.super_class = type metadata accessor for FloatingTabsView();
  v13 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 setClipsToBounds_];
  v14 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_tabsViewController;
  [*(*&v13[OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_tabsViewController] + OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_collectionView) setDelegate_];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_20C3BA140;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C3B84F8;
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);

  [v13 setAccessibilityElementsBlock_];
  _Block_release(v16);
  v17 = *MEMORY[0x277D765C0];
  v18 = [v13 accessibilityTraits];
  if ((v17 & ~v18) != 0)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  [v13 setAccessibilityTraits_];
  [v13 setAccessibilityContainerType_];
  v20 = sub_20C3E8BFC();
  [v13 setAccessibilityLabel_];

  result = [*&v13[v14] view];
  if (result)
  {
    v22 = result;
    [result setTranslatesAutoresizingMaskIntoConstraints_];
    [v13 addSubview_];
    v23 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD8A0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_20C3EBA10;
    v25 = [v22 leadingAnchor];
    v26 = [v13 leadingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:0.0];

    *(v24 + 32) = v27;
    v28 = [v22 trailingAnchor];
    v29 = [v13 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-0.0];

    *(v24 + 40) = v30;
    v31 = [v22 topAnchor];
    v32 = [v13 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:1.0];

    *(v24 + 48) = v33;
    v34 = [v22 bottomAnchor];
    v35 = [v13 bottomAnchor];

    v36 = [v34 constraintEqualToAnchor:v35 constant:-15.0];
    type metadata accessor for UILayoutPriority(0);
    sub_20C3BAF64(&qword_2810F2118, type metadata accessor for UILayoutPriority);
    sub_20C3E813C();
    LODWORD(v37) = aBlock[0];
    [v36 setPriority_];
    *(v24 + 56) = v36;
    sub_20C38BD08(0, &qword_2810F2100);
    v38 = sub_20C3E8D9C();

    [v23 activateConstraints_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD168);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_20C3EDB70;
    v40 = sub_20C3E818C();
    v41 = MEMORY[0x277D74BA0];
    *(v39 + 32) = v40;
    *(v39 + 40) = v41;
    v42 = sub_20C3E828C();
    v43 = MEMORY[0x277D74DB8];
    *(v39 + 48) = v42;
    *(v39 + 56) = v43;
    sub_20C3E8FEC();

    swift_unknownObjectRelease();

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C38C390()
{
  MEMORY[0x20F2FA0E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_20C38C3C8()
{
  result = qword_2810F2638;
  if (!qword_2810F2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F2638);
  }

  return result;
}

void FloatingTabsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE190);
  v107 = *(v110 - 8);
  v6 = MEMORY[0x28223BE20](v110);
  v109 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v7;
  MEMORY[0x28223BE20](v6);
  v106 = &v100 - v8;
  v9 = OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_collectionView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v11 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v10 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v3[v9] = v11;
  *&v3[OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_searchBarHeight] = 0;
  *&v3[OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_dataSource] = 0;
  v3[OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_isSearching] = 0;
  v12 = &v3[OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_selectedIndex];
  *v12 = 0;
  v12[8] = 1;
  v13 = OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_exitButton;
  type metadata accessor for FloatingTabItemCell();
  *&v3[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_searchBar;
  type metadata accessor for AnimatableSearchBar();
  *&v3[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_unscaledSearchBarHeight] = 0x4046000000000000;
  v15 = OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_sizingSearchBar;
  *&v3[v15] = [objc_allocWithZone(MEMORY[0x277D759E8]) init];
  if (a2)
  {

    v16 = sub_20C3E8BFC();
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for FloatingTabsViewController();
  v125.receiver = v3;
  v125.super_class = v17;
  v18 = objc_msgSendSuper2(&v125, sel_initWithNibName_bundle_, v16, a3);

  v19 = objc_opt_self();
  v20 = *MEMORY[0x277D76918];
  v21 = v18;
  v22 = [v19 preferredFontForTextStyle_];
  [v22 _scaledValueForValue_];
  v24 = v23;

  v25 = v21;
  v26 = [v25 traitCollection];
  v104 = a2;
  if (v26)
  {
    v27 = v26;
    [v26 displayScale];
    v29 = v28;

    if (v29 > 0.0)
    {
      v24 = ceil(v24 * v29) / v29;
    }
  }

  v30 = OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_searchBarHeight;
  swift_beginAccess();
  *&v25[v30] = v24;
  v31 = [v25 view];

  if (!v31)
  {
    __break(1u);
    goto LABEL_26;
  }

  *(&v119 + 1) = sub_20C3E815C();
  *&v120 = MEMORY[0x277D74A50];
  __swift_allocate_boxed_opaque_existential_1(&v118);
  sub_20C3E814C();
  sub_20C3E8FDC();

  v32 = [v25 view];
  if (!v32)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v32 setClipsToBounds_];

  v33 = [v25 view];
  if (!v33)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v33 setDirectionalLayoutMargins_];

  v34 = OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_exitButton;
  v35 = *&v25[OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_exitButton];
  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  LOWORD(v115) = 256;
  BYTE2(v115) = 1;
  *(&v115 + 1) = 0xD000000000000014;
  *&v116 = 0x800000020C3F3B50;
  *(&v116 + 1) = 1801675074;
  v117 = 0xE400000000000000;
  v36 = v35;
  sub_20C3CA2A8(&v111);

  v122 = v115;
  v123 = v116;
  v124 = v117;
  v118 = v111;
  v119 = v112;
  v120 = v113;
  v121 = v114;
  sub_20C39AF94(&v118);
  [*&v25[v34] setHidden_];
  v37 = [v25 view];

  if (!v37)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v37 addSubview_];

  v38 = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  [v38 addTarget:v25 action:sel_expandTabBarButtonTapped_];

  [*&v25[v34] addGestureRecognizer_];
  v39 = OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_searchBar;
  [*&v25[OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_searchBar] setHidden_];
  v40 = [v25 view];

  if (!v40)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v40 addSubview_];

  v41 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  [v41 setScrollDirection_];
  [v41 setMinimumInteritemSpacing_];
  v42 = OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_collectionView;
  v43 = [*&v25[OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_collectionView] effectiveUserInterfaceLayoutDirection];

  v44 = [v25 view];
  v45 = v44;
  v103 = v38;
  if (v43 == 1)
  {
    if (!v44)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    [v44 directionalLayoutMargins];
    v47 = v46;

    v48 = [v25 view];
    if (!v48)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    [v48 directionalLayoutMargins];
    v50 = v49;
LABEL_19:

    v102 = a3;
    v53 = v25;
    [v41 setSectionInset_];
    [*&v25[v42] setAlwaysBounceVertical_];
    v54 = *&v25[v42];
    v55 = objc_opt_self();
    v56 = v54;
    v57 = [v55 clearColor];
    [v56 setBackgroundColor_];

    [*&v25[v42] setClipsToBounds_];
    v58 = *&v25[v42];
    v101 = v41;
    [v58 setCollectionViewLayout_];
    [*&v25[v42] setShowsHorizontalScrollIndicator_];
    [*&v25[v42] setTranslatesAutoresizingMaskIntoConstraints_];
    v59 = v53;
    v60 = [v59 view];
    if (v60)
    {
      v61 = v60;
      [v60 addSubview_];

      v62 = *&v25[v42];
      v63 = v106;
      sub_20C3E8F4C();
      v64 = v107 + 32;
      v65 = *(v107 + 32);
      v66 = v109;
      v67 = v110;
      v65(v109, v63, v110);
      v68 = (*(v64 + 48) + 16) & ~*(v64 + 48);
      v69 = swift_allocObject();
      v65((v69 + v68), v66, v67);
      v70 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD770));
      v71 = sub_20C3E824C();
      v72 = *&v59[OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_dataSource];
      *&v59[OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_dataSource] = v71;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD8A0);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_20C3EBA10;
      v74 = [*&v25[v42] leadingAnchor];
      v75 = [v59 view];
      if (v75)
      {
        v76 = v75;
        v77 = [v75 leadingAnchor];

        v78 = [v74 constraintEqualToAnchor_];
        *(v73 + 32) = v78;
        v79 = [*&v25[v42] trailingAnchor];
        v80 = [v59 view];
        if (v80)
        {
          v81 = v80;
          v82 = [v80 trailingAnchor];

          v83 = [v79 constraintEqualToAnchor_];
          *(v73 + 40) = v83;
          v84 = [*&v25[v42] topAnchor];
          v85 = [v59 view];
          if (v85)
          {
            v86 = v85;
            v87 = [v85 topAnchor];

            v88 = [v84 constraintEqualToAnchor_];
            *(v73 + 48) = v88;
            v89 = [*&v25[v42] bottomAnchor];
            v90 = [v59 view];

            if (v90)
            {

              v91 = objc_opt_self();
              v92 = [v90 bottomAnchor];

              v93 = [v89 constraintEqualToAnchor_];
              *(v73 + 56) = v93;
              sub_20C38BD08(0, &qword_2810F2100);
              v94 = sub_20C3E8D9C();

              [v91 activateConstraints_];

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD168);
              v95 = swift_allocObject();
              *(v95 + 16) = xmmword_20C3EDB70;
              v96 = sub_20C3E818C();
              v97 = MEMORY[0x277D74BA0];
              *(v95 + 32) = v96;
              *(v95 + 40) = v97;
              v98 = sub_20C3E828C();
              v99 = MEMORY[0x277D74DB8];
              *(v95 + 48) = v98;
              *(v95 + 56) = v99;
              sub_20C3E8F6C();

              swift_unknownObjectRelease();

              return;
            }

            goto LABEL_34;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v44)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v44 directionalLayoutMargins];
  v47 = v51;

  v48 = [v25 view];
  if (v48)
  {
    [v48 directionalLayoutMargins];
    v50 = v52;
    goto LABEL_19;
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_20C38D2F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE190);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20C38D430()
{
  result = qword_2810F2340;
  if (!qword_2810F2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F2340);
  }

  return result;
}

unint64_t sub_20C38D4A8()
{
  result = qword_2810F2100;
  if (!qword_2810F2100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810F2100);
  }

  return result;
}

uint64_t sub_20C38D4F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C38D514(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_20C38D540(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C38D560(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_20C38D5B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C3E8C2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20C38D5DC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_20C38D628()
{
  v1 = sub_20C3E87DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20C38D6B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD060);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD0B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD0B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD058);
  sub_20C3E85EC();
  sub_20C3960C8(&qword_27C7AD0A0, &qword_27C7AD058);
  sub_20C395ADC(&qword_27C7AD0A8, MEMORY[0x277CDDEE0]);
  swift_getOpaqueTypeConformance2();
  sub_20C395DD8();
  sub_20C395F50();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C38D840@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20C38D89C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_20C38D900@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_animationAnchor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20C38D96C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectedIndex;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_20C38D9C8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectedIndex;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_20C38DA28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_itemDescriptors;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20C38DA88()
{
  MEMORY[0x20F2FA0E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20C38DAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C39DDCC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_20C38DB10@<X0>(_BYTE *a1@<X8>)
{
  sub_20C3A1228();
  result = sub_20C3E858C();
  *a1 = v3;
  return result;
}

uint64_t sub_20C38DBAC()
{
  sub_20C3E845C();
  sub_20C38C3C8();
  return swift_getWitnessTable();
}

uint64_t sub_20C38DC14@<X0>(uint64_t a1@<X8>)
{
  result = sub_20C3E854C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20C38DC78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD4A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD4A8);
  sub_20C3960C8(&qword_2810F2170, &qword_27C7AD4A0);
  sub_20C3A2E6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD4B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD4B8);
  sub_20C3A2EC0();
  sub_20C3A2F14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD4C0);
  sub_20C3A30B0();
  sub_20C3A2FCC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C38DE24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20C38DE5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20C38DEB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20C38DF1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_itemDescriptors;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20C38DF7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_selectedIndex;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_20C38DFD8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_selectedIndex;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_20C38E038()
{

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_20C38E0B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

id sub_20C38E108@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField_backgroundVisualEffect;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20C38E188()
{
  v1 = sub_20C3E809C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 168, v3 | 7);
}

uint64_t sub_20C38E2A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20C38E2DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20C38E338(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20C38E3A8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_highlightedIndex;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_20C38E408@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_itemDescriptors;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_20C38E474(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectedIndex;
  swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  return [*(v4 + OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView) setHidden_];
}

uint64_t sub_20C38E4F0()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20C38E528()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20C38E564()
{
  MEMORY[0x20F2FA0E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20C38E5A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20C38E5DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD9C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD9D0);
  sub_20C3B7E80(&qword_27C7AD9D8, &qword_27C7AD9C8);
  sub_20C3B7E80(&unk_27C7AD9E0, &qword_27C7AD9D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C38E6BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20C38E6F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20C38E750(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20C38E7B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_itemDescriptors;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20C38E814()
{
  sub_20C3E845C();
  sub_20C3BB03C();
  return swift_getWitnessTable();
}

uint64_t sub_20C38E88C()
{
  swift_getTupleTypeMetadata2();
  sub_20C3E8DCC();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_20C3E8B0C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_20C3E8ABC();
  swift_getWitnessTable();
  sub_20C3E835C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_20C3BDA00();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7ADBF0);
  sub_20C3E845C();
  sub_20C3E875C();
  swift_getOpaqueTypeConformance2();
  sub_20C3960C8(&qword_2810F2198, &qword_27C7ADBF0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_20C3E84AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7ADBF8);
  swift_getTupleTypeMetadata2();
  sub_20C3E8B6C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C38ED88()
{
  v1 = sub_20C3E847C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 160) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20C38EE8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20C38EEE8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20C38EF20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C38EF38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_20C38EF74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_sizingTraitCollection;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20C38F088()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_20C38F0D8()
{
  MEMORY[0x20F2FA0E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20C38F110()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  swift_unknownObjectRelease();
  if (*(v0 + 184))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_20C38F180()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_20C38F1C8()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

double sub_20C38F210@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_searchBarHeight;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_20C38F268(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_searchBarHeight;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20C38F2BC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_20C38F30C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20C38F344()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  swift_unknownObjectRelease();
  if (*(v0 + 208))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_20C38F3F8()
{
  v1 = sub_20C3E87DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20C38F480()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AE240);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AE278);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AE280);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AE238);
  sub_20C3E879C();
  sub_20C3960C8(&qword_27C7AE268, &qword_27C7AE238);
  sub_20C3D7D88(&qword_27C7AE270, MEMORY[0x277CDE400]);
  swift_getOpaqueTypeConformance2();
  sub_20C3D8084();
  sub_20C3D81FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C38F638@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI19AnimatableSearchBar_isAnimating;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_20C38F690(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI19AnimatableSearchBar_isAnimating;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_20C3DA624();
}

uint64_t sub_20C38F6E8@<X0>(void *a1@<X8>)
{
  sub_20C3E0AB0();
  result = sub_20C3E858C();
  *a1 = v3;
  return result;
}

__n128 sub_20C38F7FC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_20C38F810()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20C38F84C()
{
  sub_20C3E845C();
  sub_20C3E7BDC();
  return swift_getWitnessTable();
}

uint64_t sub_20C38F8B0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20C38F958(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id FloatingSearchController.__allocating_init(searchResultsController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSearchResultsController_];

  return v3;
}

id FloatingSearchController.init(searchResultsController:)(void *a1)
{
  v3 = OBJC_IVAR____TtC13FitnessCoreUI24FloatingSearchController_floatingSearchBar;
  type metadata accessor for FloatingSearchBar();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FloatingSearchController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithSearchResultsController_, a1);

  return v4;
}

id FloatingSearchController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C3E8BFC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FloatingSearchController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC13FitnessCoreUI24FloatingSearchController_floatingSearchBar;
  type metadata accessor for FloatingSearchBar();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v7 = sub_20C3E8BFC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for FloatingSearchController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id FloatingSearchController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FloatingSearchController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC13FitnessCoreUI24FloatingSearchController_floatingSearchBar;
  type metadata accessor for FloatingSearchBar();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FloatingSearchController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id FloatingSearchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingSearchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20C3901AC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x20F2F92B0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_20C390200(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x20F2F92C0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_20C390288(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x20F2F84E0](a1, &v6);
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

uint64_t sub_20C3902DC(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x20F2F84F0](a1, &v7);
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

uint64_t sub_20C39035C(uint64_t a1, id *a2)
{
  result = sub_20C3E8C0C();
  *a2 = 0;
  return result;
}

uint64_t sub_20C3903D4(uint64_t a1, id *a2)
{
  v3 = sub_20C3E8C1C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_20C390454@<X0>(uint64_t *a1@<X8>)
{
  sub_20C3E8C2C();
  v2 = sub_20C3E8BFC();

  *a1 = v2;
  return result;
}

uint64_t sub_20C390498()
{
  v0 = sub_20C3E8C2C();
  v1 = MEMORY[0x20F2F9140](v0);

  return v1;
}

uint64_t sub_20C3904D4()
{
  sub_20C3E8C2C();
  sub_20C3E8C7C();
}

uint64_t sub_20C390528()
{
  sub_20C3E8C2C();
  sub_20C3E94BC();
  sub_20C3E8C7C();
  v0 = sub_20C3E950C();

  return v0;
}

uint64_t sub_20C39059C()
{
  v0 = sub_20C3E8C2C();
  v2 = v1;
  if (v0 == sub_20C3E8C2C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_20C3E93EC();
  }

  return v5 & 1;
}

_DWORD *sub_20C390624@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_20C390634@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_20C390640()
{
  sub_20C3909E8(&qword_27C7ACEE0, type metadata accessor for UILayoutPriority);
  sub_20C3909E8(&qword_27C7ACEE8, type metadata accessor for UILayoutPriority);
  return sub_20C3E929C();
}

void *sub_20C3906FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_20C39070C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_20C390718()
{
  sub_20C3909E8(&qword_27C7ACEF0, type metadata accessor for Weight);
  sub_20C3909E8(&qword_27C7ACEF8, type metadata accessor for Weight);
  sub_20C39107C();
  return sub_20C3E929C();
}

uint64_t sub_20C3907E0()
{
  sub_20C3909E8(&qword_2810F20F0, type metadata accessor for Key);
  sub_20C3909E8(&qword_27C7ACF40, type metadata accessor for Key);

  return sub_20C3E929C();
}

uint64_t sub_20C39089C()
{
  sub_20C3909E8(&qword_27C7ACF18, type metadata accessor for AttributeName);
  sub_20C3909E8(&qword_27C7ACF20, type metadata accessor for AttributeName);

  return sub_20C3E929C();
}

uint64_t sub_20C3909E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C390A30()
{
  sub_20C3909E8(&qword_27C7ACF08, type metadata accessor for TraitKey);
  sub_20C3909E8(&qword_27C7ACF10, type metadata accessor for TraitKey);

  return sub_20C3E929C();
}

uint64_t sub_20C390C54@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_20C3E8BFC();

  *a1 = v2;
  return result;
}

uint64_t sub_20C390C9C()
{
  sub_20C3909E8(&qword_27C7ACED0, type metadata accessor for FeatureKey);
  sub_20C3909E8(&qword_27C7ACED8, type metadata accessor for FeatureKey);

  return sub_20C3E929C();
}

uint64_t sub_20C390DC0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x20F2F9920](*&v1);
}

uint64_t sub_20C390DFC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

unint64_t sub_20C39107C()
{
  result = qword_27C7ACF00;
  if (!qword_27C7ACF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACF00);
  }

  return result;
}

void sub_20C3910F8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 GridDescriptor.margins.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20C39127C()
{
  v1 = *v0;
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](v1);
  return sub_20C3E950C();
}

uint64_t sub_20C3912C4()
{
  v1 = *v0;
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](v1);
  return sub_20C3E950C();
}

uint64_t sub_20C391308()
{
  v1 = 0x746E756F63;
  v2 = 0x676E6963617073;
  if (*v0 != 2)
  {
    v2 = 1851879539;
  }

  if (*v0)
  {
    v1 = 0x736E696772616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C391378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C391D08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C3913B8(uint64_t a1)
{
  v2 = sub_20C3916C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3913F4(uint64_t a1)
{
  v2 = sub_20C3916C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GridDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ACF48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *(v1 + 8);
  v12 = *(v1 + 24);
  v13 = v8;
  v9 = *(v1 + 40);
  v11[1] = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3916C8();
  sub_20C3E952C();
  LOBYTE(v15) = 0;
  sub_20C3E938C();
  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v14 = 1;
    sub_20C39171C();
    sub_20C3E939C();
    *&v15 = v9;
    v14 = 2;
    sub_20C391770();
    sub_20C3E939C();
    LOBYTE(v15) = 3;
    sub_20C3E938C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_20C3916C8()
{
  result = qword_27C7ACF50;
  if (!qword_27C7ACF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACF50);
  }

  return result;
}

unint64_t sub_20C39171C()
{
  result = qword_27C7ACF58;
  if (!qword_27C7ACF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACF58);
  }

  return result;
}

unint64_t sub_20C391770()
{
  result = qword_2810F2668;
  if (!qword_2810F2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F2668);
  }

  return result;
}

uint64_t GridDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ACF60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3916C8();
  sub_20C3E951C();
  if (!v2)
  {
    LOBYTE(v17) = 0;
    v9 = sub_20C3E930C();
    v16 = 1;
    sub_20C391A54();
    sub_20C3E931C();
    v14 = v17;
    v15 = v18;
    v16 = 2;
    sub_20C391AA8();
    sub_20C3E931C();
    v11 = v17;
    LOBYTE(v17) = 3;
    v12 = sub_20C3E930C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    v13 = v15;
    *(a2 + 8) = v14;
    *(a2 + 24) = v13;
    *(a2 + 40) = v11;
    *(a2 + 48) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_20C391A54()
{
  result = qword_27C7ACF68;
  if (!qword_27C7ACF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACF68);
  }

  return result;
}

unint64_t sub_20C391AA8()
{
  result = qword_27C7ACF70;
  if (!qword_27C7ACF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACF70);
  }

  return result;
}

uint64_t GridDescriptor.hash(into:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  MEMORY[0x20F2F98F0](*v0);
  LayoutEdgeInsets.hash(into:)();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x20F2F9920](*&v3);
  return MEMORY[0x20F2F98F0](v2);
}

uint64_t GridDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *(v0 + 6);
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](*&v1);
  LayoutEdgeInsets.hash(into:)();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x20F2F9920](*&v4);
  MEMORY[0x20F2F98F0](v3);
  return sub_20C3E950C();
}

uint64_t sub_20C391C64()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *(v0 + 6);
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](*&v1);
  LayoutEdgeInsets.hash(into:)();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x20F2F9920](*&v4);
  MEMORY[0x20F2F98F0](v3);
  return sub_20C3E950C();
}

uint64_t sub_20C391D08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_20C3E93EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E696772616DLL && a2 == 0xE700000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1851879539 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C3E93EC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_20C391EF0()
{
  result = qword_27C7ACF78;
  if (!qword_27C7ACF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACF78);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20C391F60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C391F80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GridDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GridDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C39212C()
{
  result = qword_27C7ACF80;
  if (!qword_27C7ACF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACF80);
  }

  return result;
}

unint64_t sub_20C392184()
{
  result = qword_27C7ACF88;
  if (!qword_27C7ACF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACF88);
  }

  return result;
}

unint64_t sub_20C3921DC()
{
  result = qword_27C7ACF90;
  if (!qword_27C7ACF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACF90);
  }

  return result;
}

uint64_t ColorDescriptor.init(hex:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_42;
  }

  v5 = result;
  if (sub_20C3E8C8C() != 6 && sub_20C3E8C8C() != 8)
  {
LABEL_41:

LABEL_42:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1;
    return result;
  }

  v6 = sub_20C3E8C9C();
  v7 = sub_20C3E8C9C();
  v8 = sub_20C3E8C9C();
  v11 = sub_20C3E8D3C();
  v49 = v12;
  if (v7 >> 14 < v6 >> 14)
  {
    __break(1u);
    goto LABEL_33;
  }

  v13 = v9;
  v14 = v10;
  v15 = sub_20C3E8D3C();
  if (v8 >> 14 < v7 >> 14)
  {
LABEL_33:
    __break(1u);
LABEL_34:

LABEL_35:

    goto LABEL_36;
  }

  v45 = v17;
  v46 = v16;
  v47 = v15;
  v48 = v18;
  v19 = sub_20C3E8D3C();
  v43 = v21;
  v44 = v20;
  v23 = v22;
  if (sub_20C3E8C8C() == 8)
  {
    v24 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v24 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8 >> 14 > 4 * v24)
    {
      __break(1u);
      goto LABEL_39;
    }

    v25 = sub_20C3E8D3C();
    v41 = v26;
    v42 = v25;
    v40 = v27;
    v29 = v28;
  }

  else
  {

    v41 = 0;
    v42 = 0;
    v40 = 0;
    v29 = 0;
  }

  if (!((v11 ^ v13) >> 14))
  {
    goto LABEL_34;
  }

  v30 = sub_20C393368(v11, v13, v49, v14, 16);
  if ((v30 & 0x10000000000) != 0)
  {
    v30 = sub_20C39296C(v11, v13, v49, v14, 16);
  }

  v31 = v30;

  if ((v31 & 0x100000000) != 0)
  {
    goto LABEL_35;
  }

  if (!((v47 ^ v46) >> 14))
  {
LABEL_39:

LABEL_40:

    goto LABEL_41;
  }

  v32 = sub_20C393368(v47, v46, v45, v48, 16);
  if ((v32 & 0x10000000000) != 0)
  {
    v32 = sub_20C39296C(v47, v46, v45, v48, 16);
  }

  v33 = v32;

  if ((v33 & 0x100000000) != 0)
  {
    goto LABEL_40;
  }

  if (!((v19 ^ v44) >> 14))
  {
LABEL_36:

    goto LABEL_41;
  }

  v34 = sub_20C393368(v19, v44, v43, v23, 16);
  if ((v34 & 0x10000000000) != 0)
  {
    v34 = sub_20C39296C(v19, v44, v43, v23, 16);
  }

  v35 = v34;

  if ((v35 & 0x100000000) != 0)
  {
    goto LABEL_41;
  }

  v36 = 1.0;
  if (v29)
  {
    if ((v41 ^ v42) < 0x4000)
    {
    }

    else
    {
      v37 = sub_20C393368(v42, v41, v40, v29, 16);
      if ((v37 & 0x10000000000) != 0)
      {
        v37 = sub_20C39296C(v42, v41, v40, v29, 16);
      }

      v38 = v37;

      if ((v38 & 0x100000000) == 0)
      {
        v36 = v38 / 255.0;
      }
    }
  }

  v39.i64[0] = v35;
  v39.i64[1] = v33;
  *a3 = v36;
  *(a3 + 8) = vdivq_f64(vcvtq_f64_s64(vshrq_n_s64(vshlq_n_s64(v39, 0x20uLL), 0x20uLL)), vdupq_n_s64(0x406FE00000000000uLL));
  *(a3 + 24) = v31 / 255.0;
  *(a3 + 32) = 0;
  return result;
}

Swift::String __swiftcall ColorDescriptor.hex()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 != 1.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ACF98);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_20C3EB410;
    v12 = v4 * 255.999999;
    if (COERCE__INT64(fabs(v4 * 255.999999)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
          v13 = MEMORY[0x277D83B88];
          v14 = MEMORY[0x277D83C10];
          *(v5 + 56) = MEMORY[0x277D83B88];
          *(v5 + 64) = v14;
          *(v5 + 32) = v12;
          v15 = v3 * 255.999999;
          if (COERCE__INT64(fabs(v3 * 255.999999)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v15 > -9.22337204e18)
            {
              if (v15 < 9.22337204e18)
              {
                *(v5 + 96) = v13;
                *(v5 + 104) = v14;
                *(v5 + 72) = v15;
                v16 = v1 * 255.999999;
                if (COERCE__INT64(fabs(v1 * 255.999999)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v16 > -9.22337204e18)
                  {
                    if (v16 < 9.22337204e18)
                    {
                      *(v5 + 136) = v13;
                      *(v5 + 144) = v14;
                      *(v5 + 112) = v16;
                      v17 = v2 * 255.999999;
                      if (COERCE_UNSIGNED_INT64(fabs(v2 * 255.999999)) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        if (v17 > -9.22337204e18)
                        {
                          if (v17 < 9.22337204e18)
                          {
                            *(v5 + 176) = v13;
                            *(v5 + 184) = v14;
                            *(v5 + 152) = v17;
                            goto LABEL_25;
                          }

LABEL_48:
                          __break(1u);
                          goto _$s13FitnessCoreUI15ColorDescriptorV3hexSSyF;
                        }

LABEL_47:
                        __break(1u);
                        goto LABEL_48;
                      }

LABEL_46:
                      __break(1u);
                      goto LABEL_47;
                    }

LABEL_45:
                    __break(1u);
                    goto LABEL_46;
                  }

LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

LABEL_43:
                __break(1u);
                goto LABEL_44;
              }

LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ACF98);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C3EB420;
  v7 = v4 * 255.999999;
  if (COERCE__INT64(fabs(v4 * 255.999999)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = MEMORY[0x277D83B88];
  v9 = MEMORY[0x277D83C10];
  *(v5 + 56) = MEMORY[0x277D83B88];
  *(v5 + 64) = v9;
  *(v5 + 32) = v7;
  v10 = v3 * 255.999999;
  if (COERCE__INT64(fabs(v3 * 255.999999)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v5 + 96) = v8;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  v11 = v1 * 255.999999;
  if (COERCE_UNSIGNED_INT64(fabs(v1 * 255.999999)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v5 + 136) = v8;
  *(v5 + 144) = v9;
  *(v5 + 112) = v11;
LABEL_25:

  v5 = sub_20C3E8C3C();
_$s13FitnessCoreUI15ColorDescriptorV3hexSSyF:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

unsigned __int8 *sub_20C39296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_20C393430();

  result = sub_20C3E8D2C();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_20C392EF4();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_20C3E916C();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v23 = __OFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_126;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v23 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if (v21 != v21)
            {
              goto LABEL_126;
            }

            v22 = v18 + v19;
            v23 = __OFSUB__(v21, v22);
            v15 = v21 - v22;
            if (v23)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if (v69 != v69)
          {
            goto LABEL_126;
          }

          v70 = v67 + v68;
          v23 = __OFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_126;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v23 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v23)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v23 = __OFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_126;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      v20 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_20C392EF4()
{
  v0 = sub_20C3E8D3C();
  v4 = sub_20C392F74(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_20C392F74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_20C3E906C();
    if (!v9 || (v10 = v9, v11 = sub_20C399BE4(v9, 0), v12 = sub_20C3930CC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_20C3E8C6C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_20C3E8C6C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_20C3E916C();
LABEL_4:

  return sub_20C3E8C6C();
}

unint64_t sub_20C3930CC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_20C3932EC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_20C3E8CFC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_20C3E916C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_20C3932EC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_20C3E8CCC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
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

uint64_t sub_20C3932EC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_20C3E8D0C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x20F2F9100](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_20C393368(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_20C3E916C();
  }

  result = sub_20C393484(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

unint64_t sub_20C393430()
{
  result = qword_27C7ACFA0;
  if (!qword_27C7ACFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACFA0);
  }

  return result;
}

uint64_t sub_20C393484(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_20C3932EC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_20C3E8CEC();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_20C3932EC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_20C3932EC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_20C3E8CEC();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_20C393928(uint64_t a1)
{
  v2 = sub_20C394010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C393964(uint64_t a1)
{
  v2 = sub_20C394010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3939A0()
{
  v1 = 0x6C6E4F6567616D69;
  if (*v0 != 1)
  {
    v1 = 0x6C6E4F656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t sub_20C3939F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C394134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C393A2C(uint64_t a1)
{
  v2 = sub_20C393F14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C393A68(uint64_t a1)
{
  v2 = sub_20C393F14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C393AA4(uint64_t a1)
{
  v2 = sub_20C393FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C393AE0(uint64_t a1)
{
  v2 = sub_20C393FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C393B1C(uint64_t a1)
{
  v2 = sub_20C393F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C393B58(uint64_t a1)
{
  v2 = sub_20C393F68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TabItemStyle.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ACFA8);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ACFB0);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ACFB8);
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ACFC0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C393F14();
  sub_20C3E952C();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_20C393FBC();
      sub_20C3E934C();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_20C393F68();
      v16 = v22;
      sub_20C3E934C();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_20C394010();
    sub_20C3E934C();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_20C393F14()
{
  result = qword_27C7ACFC8;
  if (!qword_27C7ACFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACFC8);
  }

  return result;
}

unint64_t sub_20C393F68()
{
  result = qword_27C7ACFD0;
  if (!qword_27C7ACFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACFD0);
  }

  return result;
}

unint64_t sub_20C393FBC()
{
  result = qword_27C7ACFD8;
  if (!qword_27C7ACFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACFD8);
  }

  return result;
}

unint64_t sub_20C394010()
{
  result = qword_27C7ACFE0;
  if (!qword_27C7ACFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACFE0);
  }

  return result;
}

uint64_t sub_20C39407C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20C39425C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t TabItemStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](a1);
  return sub_20C3E950C();
}

uint64_t sub_20C394134(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063 || (sub_20C3E93EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6E4F6567616D69 && a2 == 0xE900000000000079 || (sub_20C3E93EC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6E4F656C746974 && a2 == 0xE900000000000079)
  {

    return 2;
  }

  else
  {
    v5 = sub_20C3E93EC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20C39425C(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD038);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD040);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD048);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD050);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_20C393F14();
  v13 = v34;
  sub_20C3E951C();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_20C3E932C();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_20C3A11D0();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_20C393FBC();
          sub_20C3E92BC();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_20C393F68();
        v24 = v11;
        sub_20C3E92BC();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_20C394010();
        v24 = v11;
        sub_20C3E92BC();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_20C3E915C();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD840) + 48);
    *v22 = &type metadata for TabItemStyle;
    sub_20C3E92CC();
    sub_20C3E914C();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

unint64_t sub_20C3947D0()
{
  result = qword_27C7ACFE8;
  if (!qword_27C7ACFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACFE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FloatingTabBar.DisplayMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FloatingTabBar.DisplayMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C3949B8()
{
  result = qword_27C7ACFF0;
  if (!qword_27C7ACFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACFF0);
  }

  return result;
}

unint64_t sub_20C394A10()
{
  result = qword_27C7ACFF8;
  if (!qword_27C7ACFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ACFF8);
  }

  return result;
}

unint64_t sub_20C394A68()
{
  result = qword_27C7AD000;
  if (!qword_27C7AD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD000);
  }

  return result;
}

unint64_t sub_20C394AC0()
{
  result = qword_27C7AD008;
  if (!qword_27C7AD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD008);
  }

  return result;
}

unint64_t sub_20C394B18()
{
  result = qword_27C7AD010;
  if (!qword_27C7AD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD010);
  }

  return result;
}

unint64_t sub_20C394B70()
{
  result = qword_27C7AD018;
  if (!qword_27C7AD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD018);
  }

  return result;
}

unint64_t sub_20C394BC8()
{
  result = qword_27C7AD020;
  if (!qword_27C7AD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD020);
  }

  return result;
}

unint64_t sub_20C394C20()
{
  result = qword_27C7AD028;
  if (!qword_27C7AD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD028);
  }

  return result;
}

unint64_t sub_20C394C78()
{
  result = qword_27C7AD030;
  if (!qword_27C7AD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD030);
  }

  return result;
}

uint64_t sub_20C394D44()
{
  v0 = sub_20C3E812C();
  __swift_allocate_value_buffer(v0, qword_2810F3B00);
  __swift_project_value_buffer(v0, qword_2810F3B00);
  return sub_20C3E811C();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id CGFloat.pixelIntegral(using:)(id result)
{
  if (result)
  {
    return [result displayScale];
  }

  return result;
}

CGSize __swiftcall CGSize.pixelIntegral(using:)(UITraitCollection using)
{
  v3 = v2;
  v4 = v1;
  [(objc_class *)using.super.isa displayScale];
  if (v6 > 0.0)
  {
    v4 = ceil(v6 * v4) / v6;
  }

  [(objc_class *)using.super.isa displayScale];
  if (v7 > 0.0)
  {
    v3 = ceil(v7 * v3) / v7;
  }

  v8 = v4;
  v9 = v3;
  result.height = v9;
  result.width = v8;
  return result;
}

uint64_t FitnessBorderedButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_20C3E85EC();
  v4 = *(v3 - 8);
  v25 = v3;
  v26 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C3E87DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD058);
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD060);
  v14 = *(v13 - 8);
  v27 = v13;
  v28 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  (*(v8 + 16))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v17, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD068);
  sub_20C3958C0();
  sub_20C3E8A8C();
  sub_20C3E85DC();
  v19 = sub_20C3960C8(&qword_27C7AD0A0, &qword_27C7AD058);
  v20 = sub_20C395ADC(&qword_27C7AD0A8, MEMORY[0x277CDDEE0]);
  v21 = v25;
  sub_20C3E891C();
  (*(v26 + 8))(v6, v21);
  (*(v24 + 8))(v12, v10);
  sub_20C3E8B1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD0B8);
  v31 = v10;
  v32 = v21;
  v33 = v19;
  v34 = v20;
  swift_getOpaqueTypeConformance2();
  sub_20C395DD8();
  sub_20C395F50();
  v22 = v27;
  sub_20C3E89EC();
  return (*(v28 + 8))(v16, v22);
}

uint64_t sub_20C395524()
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C3E87CC();
}

uint64_t sub_20C3955C4()
{
  sub_20C3E87DC();

  return sub_20C395524();
}

uint64_t sub_20C395624@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD080);
  MEMORY[0x28223BE20](v2);
  v4 = v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD068);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - v6;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C3E87BC();
  v8 = sub_20C3E885C();
  sub_20C3E834C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD090) + 36)];
  *v17 = v8;
  *(v17 + 1) = v10;
  *(v17 + 2) = v12;
  *(v17 + 3) = v14;
  *(v17 + 4) = v16;
  v17[40] = 0;
  v18 = sub_20C3E882C();
  sub_20C3E834C();
  v19 = &v4[*(v2 + 36)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_20C3E8B4C();
  sub_20C3E84BC();
  sub_20C396224(v4, v7, &qword_27C7AD080);
  v24 = &v7[*(v5 + 36)];
  v25 = v29[5];
  *(v24 + 4) = v29[4];
  *(v24 + 5) = v25;
  *(v24 + 6) = v29[6];
  v26 = v29[1];
  *v24 = v29[0];
  *(v24 + 1) = v26;
  v27 = v29[3];
  *(v24 + 2) = v29[2];
  *(v24 + 3) = v27;
  sub_20C396224(v7, a1, &qword_27C7AD068);
}

unint64_t sub_20C3958C0()
{
  result = qword_27C7AD070;
  if (!qword_27C7AD070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD068);
    sub_20C395994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD070);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_20C395994()
{
  result = qword_27C7AD078;
  if (!qword_27C7AD078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD080);
    sub_20C395A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD078);
  }

  return result;
}

unint64_t sub_20C395A20()
{
  result = qword_27C7AD088;
  if (!qword_27C7AD088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD090);
    sub_20C395ADC(&qword_27C7AD098, MEMORY[0x277CDE500]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD088);
  }

  return result;
}

uint64_t sub_20C395ADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C395B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD0B0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD0D0);
  sub_20C3E84CC();
  *v4 = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD060);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
}

uint64_t sub_20C395C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD0B8) + 36));
  v5 = *(sub_20C3E848C() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_20C3E85BC();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD0E8) + 36)] = 256;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD060);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
}

unint64_t sub_20C395DD8()
{
  result = qword_27C7AD0C0;
  if (!qword_27C7AD0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD0B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD058);
    sub_20C3E85EC();
    sub_20C3960C8(&qword_27C7AD0A0, &qword_27C7AD058);
    sub_20C395ADC(&qword_27C7AD0A8, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_20C3960C8(&qword_27C7AD0C8, &qword_27C7AD0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD0C0);
  }

  return result;
}

unint64_t sub_20C395F50()
{
  result = qword_27C7AD0D8;
  if (!qword_27C7AD0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD0B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7AD058);
    sub_20C3E85EC();
    sub_20C3960C8(&qword_27C7AD0A0, &qword_27C7AD058);
    sub_20C395ADC(&qword_27C7AD0A8, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_20C3960C8(&qword_27C7AD0E0, &qword_27C7AD0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD0D8);
  }

  return result;
}

uint64_t sub_20C3960C8(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for FitnessBorderedButtonStyle(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FitnessBorderedButtonStyle(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_20C396224(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C3962DC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_20C396348(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20C3963E8;
}

void sub_20C3963EC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_animationAnchor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_20C39644C()
{
  v1 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_animationAnchor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20C396498(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_animationAnchor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_20C396554()
{
  v1 = v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectedIndex;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_20C3965A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_itemDescriptors;
  swift_beginAccess();
  *(v3 + v4) = v2;

  v6 = v3 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_oldRectSize;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  return result;
}

uint64_t sub_20C396670(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_itemDescriptors;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v5 = v1 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_oldRectSize;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  return result;
}

uint64_t (*sub_20C3966E0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20C396744;
}

uint64_t sub_20C396824()
{
  v1 = 1701736270;
  if (*v0 != 1)
  {
    v1 = 0x647261646E617453;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6269737365636341;
  }
}

id FloatingTabBar.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void FloatingTabBar.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_animationAnchor] = 0;
  v9 = &v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectedIndex];
  *v9 = 0;
  v9[8] = 1;
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_itemDescriptors] = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_backgroundVisuallEffectView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v11 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_layoutProvider;
  type metadata accessor for FloatingTabBarLayoutProvider();
  v12 = swift_allocObject();
  __asm { FMOV            V0.2D, #4.0 }

  *&v4[v11] = v12;
  *(v12 + 16) = _Q0;
  *(v12 + 32) = _Q0;
  v18 = &v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_accessibleContentView];
  *v18 = 0;
  v18[1] = 0;
  v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_activeDisplayMode] = 1;
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentGestureRecognizer] = 0;
  v19 = &v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentView];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_minimumHeight];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_oldRectSize];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = &v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_pendingSelectedIndex];
  *v22 = 0;
  v22[8] = 1;
  v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectionShouldFollowGesture] = 0;
  v23 = &v4[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_standardContentView];
  v24 = type metadata accessor for FloatingTabBar();
  *v23 = 0;
  v23[1] = 0;
  v57.receiver = v4;
  v57.super_class = v24;
  v25 = objc_msgSendSuper2(&v57, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 clearColor];
  [v27 setBackgroundColor_];

  v29 = [v27 layer];
  v30 = *MEMORY[0x277CDA768];
  [v29 setCornerRadius_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD8A0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20C3EBA00;
  *(v31 + 32) = [objc_opt_self() effectWithStyle_];
  v32 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.75 green:0.75 blue:1.0 alpha:0.06];
  v33 = objc_opt_self();
  v34 = [v33 effectCompositingColor_];

  if (v34)
  {
    *(v31 + 40) = v34;
    sub_20C38BD08(0, &qword_2810F2128);
    v35 = sub_20C3E8D9C();

    v36 = [v33 effectCombiningEffects_];

    v37 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_backgroundVisuallEffectView;
    [*&v27[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_backgroundVisuallEffectView] setEffect_];
    [*&v27[v37] setTranslatesAutoresizingMaskIntoConstraints_];
    v38 = [*&v27[v37] layer];
    [v38 setCornerRadius_];

    [*&v27[v37] setClipsToBounds_];
    [v27 addSubview_];
    v39 = objc_opt_self();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_20C3EBA10;
    v41 = [*&v27[v37] leadingAnchor];
    v42 = [v27 leadingAnchor];
    v43 = [v41 constraintEqualToAnchor_];

    *(v40 + 32) = v43;
    v44 = [*&v27[v37] trailingAnchor];
    v45 = [v27 trailingAnchor];
    v46 = [v44 constraintEqualToAnchor_];

    *(v40 + 40) = v46;
    v47 = [*&v27[v37] topAnchor];
    v48 = [v27 topAnchor];
    v49 = [v47 constraintEqualToAnchor_];

    *(v40 + 48) = v49;
    v50 = [*&v27[v37] bottomAnchor];
    v51 = [v27 bottomAnchor];

    v52 = [v50 constraintEqualToAnchor_];
    *(v40 + 56) = v52;
    sub_20C38BD08(0, &qword_2810F2100);
    v53 = sub_20C3E8D9C();

    [v39 activateConstraints_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD168);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_20C3EBA20;
    v55 = sub_20C3E828C();
    v56 = MEMORY[0x277D74DB8];
    *(v54 + 32) = v55;
    *(v54 + 40) = v56;
    sub_20C3E8FEC();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id FloatingTabBar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_20C3971EC()
{
  v1 = v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_oldRectSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  sub_20C3979A8(0);
}

uint64_t sub_20C39720C(uint64_t result, char a2)
{
  v3 = v2;
  v4 = result;
  v5 = v2 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentView;
  v6 = *(v2 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentView);
  if (v6)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 64);
    v11 = v6;
    v10(v4, a2 & 1, 0, ObjectType, v8);
    v13 = (*(v8 + 48))(ObjectType, v8);
    v15 = v14;

    v16 = v3 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectedIndex;
    result = swift_beginAccess();
    *v16 = v13;
    *(v16 + 8) = v15 & 1;
    v17 = v3 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_pendingSelectedIndex;
    *v17 = 0;
    *(v17 + 8) = 1;
  }

  else
  {
    v12 = v3 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_pendingSelectedIndex;
    *v12 = result;
    *(v12 + 8) = 0;
  }

  return result;
}

void sub_20C3977DC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_itemDescriptors;
  swift_beginAccess();

  v11 = sub_20C399634(v10, a1);

  v12 = &qword_27C7AD000;
  if ((v11 & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = (v4 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectedIndex);
  swift_beginAccess();
  v14 = *(v13 + 8);
  v15 = *(v4 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentView);
  if (!v15)
  {
    v12 = &qword_27C7AD000;
    if (v13[1])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v28 = a3;
  v29 = a4;
  v30 = v4;
  v27 = *v13;
  v16 = *(v4 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentView + 8);
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 48);
  v19 = v15;
  v20 = v18(ObjectType, v16);
  v22 = v21;

  if (v14)
  {
    v4 = v30;
    a3 = v28;
    a4 = v29;
    v12 = &qword_27C7AD000;
    if (v22)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = v30;
  a3 = v28;
  a4 = v29;
  v12 = &qword_27C7AD000;
  if ((v22 & 1) != 0 || v27 != v20)
  {
LABEL_10:
    v23 = v4 + v12[34];
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 1;
  }

LABEL_11:
  *(v4 + v9) = a1;
  v24 = v12;

  v25 = v4 + v24[34];
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  v26 = v4 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_pendingSelectedIndex;
  *v26 = a2;
  *(v26 + 8) = a3 & 1;
  sub_20C3979A8(a4 & 1);
}

void sub_20C3979A8(char a1)
{
  v2 = v1;
  [v1 bounds];
  v5 = v4;
  [v1 effectiveUserInterfaceLayoutDirection];
  v8 = UIEdgeInsetsInsetRect(v5);
  v10 = v9;
  v11 = v6;
  v12 = v7;
  v13 = &v1[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_oldRectSize];
  if ((v1[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_oldRectSize + 16] & 1) == 0 && *v13 == v6 && v13[1] == v7)
  {
    return;
  }

  *v13 = v6;
  v13[1] = v7;
  *(v13 + 16) = 0;
  v15 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_itemDescriptors;
  swift_beginAccess();

  v17 = sub_20C3C41A4(v16);

  v18 = [v2 traitCollection];
  v19 = _s13FitnessCoreUI28FloatingTabBarLayoutProviderC21itemSizesByDescriptor3for2in14compatibleWithSDyAA0e4ItemL0VAA0eQ4SizeVGShyAIG_So6CGRectVSo17UITraitCollectionCtF_0(v17, v18, v8, v10, v11, v12);

  v21 = _s13FitnessCoreUI28FloatingTabBarLayoutProviderC9itemSizes3for2inSayAA0E8ItemSizeVGSayAA0eM10DescriptorVG_SDyAkHGtF_0(v20, v19);

  v22 = [v2 traitCollection];
  v23 = v22;
  v24 = *(v21 + 16);
  v178 = v19;
  if (!v24)
  {
    v28 = 0.0;
    goto LABEL_23;
  }

  v25 = *(v21 + 56);
  v26 = *(v21 + 72);
  v27 = v24 - 1;
  if (v24 == 1)
  {
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    if (v26 < 0.0)
    {
      v26 = 0.0;
    }
  }

  else
  {
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    if (*(v21 + 104) > v26)
    {
      v26 = *(v21 + 104);
    }
  }

  v29 = v26 + *(v21 + 32) + v25;
  if (v22)
  {
    [v22 displayScale];
    if (v30 > 0.0)
    {
      v29 = ceil(v29 * v30) / v30;
    }

    [v23 displayScale];
  }

  v28 = v29 + 0.0;
  if (v24 != 1)
  {
    v74 = (v21 + 152);
    v75 = 2;
    while (1)
    {
      v76 = *(v74 - 9);
      v77 = *(v74 - 4);
      if (v27 == 1)
      {
        break;
      }

      if (v75 - 2 >= v24 || v75 >= v24)
      {
LABEL_137:
        __break(1u);
LABEL_138:
        swift_once();
LABEL_52:
        v70 = sub_20C3E812C();
        __swift_project_value_buffer(v70, qword_2810F3B00);
        v71 = sub_20C3E810C();
        v72 = sub_20C3E8F3C();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_20C38A000, v71, v72, "[FloatingTabBar] Rect has a negative size. Deferring content view configuration", v73, 2u);
          goto LABEL_132;
        }

LABEL_133:

        return;
      }

      if (*v74 > v77)
      {
        v77 = *v74;
      }

      v78 = v77 + v76;
      if (v23)
      {
        goto LABEL_67;
      }

LABEL_56:
      v28 = v28 + v78;
      ++v75;
      v74 += 6;
      if (!--v27)
      {
        goto LABEL_23;
      }
    }

    if (v77 < 0.0)
    {
      v77 = 0.0;
    }

    v78 = v77 + v76;
    if (!v23)
    {
      goto LABEL_56;
    }

LABEL_67:
    [v23 displayScale];
    if (v79 > 0.0)
    {
      v78 = ceil(v78 * v79) / v79;
    }

    [v23 displayScale];
    goto LABEL_56;
  }

LABEL_23:
  v177 = a1;

  v31 = *&v2[v15];
  v32 = *(v31 + 16);

  if (v32)
  {
    v33 = 0;
    v34 = v31 + 32;
    v182 = MEMORY[0x277D84F90];
    do
    {
      v35 = (v34 + 104 * v33);
      v36 = v33;
      while (1)
      {
        if (v36 >= *(v31 + 16))
        {
          __break(1u);
          goto LABEL_137;
        }

        v37 = *v35;
        v38 = v35[2];
        v185 = v35[1];
        v186 = v38;
        v184 = v37;
        v39 = v35[3];
        v40 = v35[4];
        v41 = v35[5];
        v190 = *(v35 + 12);
        v188 = v40;
        v189 = v41;
        v187 = v39;
        sub_20C3E8E3C();
        sub_20C39AF38(&v184, &v183);
        sub_20C3E8E2C();
        sub_20C3E8E1C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v188 & 1) == 0)
        {
          break;
        }

        ++v36;
        sub_20C39AF94(&v184);
        v35 = (v35 + 104);
        if (v32 == v36)
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v182;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20C3BA1F0(0, *(v182 + 16) + 1, 1);
        v43 = v182;
      }

      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_20C3BA1F0((v44 > 1), v45 + 1, 1);
        v43 = v182;
      }

      v33 = v36 + 1;
      *(v43 + 16) = v45 + 1;
      v182 = v43;
      v46 = v43 + 104 * v45;
      v47 = v184;
      v48 = v186;
      *(v46 + 48) = v185;
      *(v46 + 64) = v48;
      *(v46 + 32) = v47;
      v49 = v187;
      v50 = v188;
      v51 = v189;
      *(v46 + 128) = v190;
      *(v46 + 96) = v50;
      *(v46 + 112) = v51;
      *(v46 + 80) = v49;
      v34 = v31 + 32;
    }

    while (v32 - 1 != v36);
  }

  else
  {
    v182 = MEMORY[0x277D84F90];
  }

LABEL_39:

  v52 = _s13FitnessCoreUI28FloatingTabBarLayoutProviderC9itemSizes3for2inSayAA0E8ItemSizeVGSayAA0eM10DescriptorVG_SDyAkHGtF_0(v182, v178);

  v53 = *(v21 + 16);
  if (v53)
  {
    v175 = v8;
    v176 = v10;
    v179 = v11;
    v54 = v12;
    v55 = *(v21 + 40);
    v56 = *(v21 + 48);
    v57 = *(v21 + 64);
    v58 = v53 - 1;
    if (v53 != 1)
    {
      sub_20C3E8E3C();
      v80 = (v21 + 112);
      do
      {
        v81 = *(v80 - 3);
        v82 = *(v80 - 2);
        v83 = *v80;
        sub_20C3E8E2C();
        sub_20C3E8E1C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v55 < v81)
        {
          v55 = v81;
          v56 = v82;
          v57 = v83;
        }

        v80 += 6;
        --v58;
      }

      while (v58);
    }

    v59 = v2;
    v60 = &v2[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_minimumHeight];
    *v60 = v55 + v56 + v57;
    *(v60 + 8) = 0;
    v12 = v54;
    v11 = v179;
    v8 = v175;
    v10 = v176;
  }

  else
  {

    v59 = v2;
  }

  if (v11 <= 0.0 || v12 <= 0.0)
  {

    if (qword_2810F2210 != -1)
    {
      goto LABEL_138;
    }

    goto LABEL_52;
  }

  if (qword_2810F2210 != -1)
  {
    swift_once();
  }

  v61 = sub_20C3E812C();
  __swift_project_value_buffer(v61, qword_2810F3B00);
  v62 = v59;
  v63 = sub_20C3E810C();
  v64 = sub_20C3E8F3C();

  v65 = &qword_27C7AD000;
  if (os_log_type_enabled(v63, v64))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v184 = v67;
    *v66 = 136315138;
    if (v62[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_activeDisplayMode])
    {
      if (v62[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_activeDisplayMode] == 1)
      {
        v68 = 0xE400000000000000;
        v69 = 1701736270;
      }

      else
      {
        v68 = 0xE800000000000000;
        v69 = 0x647261646E617453;
      }
    }

    else
    {
      v69 = 0x6269737365636341;
      v68 = 0xEA0000000000656CLL;
    }

    v84 = sub_20C3997A4(v69, v68, &v184);

    *(v66 + 4) = v84;
    _os_log_impl(&dword_20C38A000, v63, v64, "[FloatingTabBar] Determining preferred mode. Active mode: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x20F2FA030](v67, -1, -1);
    MEMORY[0x20F2FA030](v66, -1, -1);

    v65 = &qword_27C7AD000;
  }

  else
  {
  }

  v191.origin.x = v8;
  v191.origin.y = v10;
  v191.size.width = v11;
  v191.size.height = v12;
  v180 = v52;
  if (v28 > CGRectGetWidth(v191) || (v85 = [v62 traitCollection], v86 = objc_msgSend(v85, sel_preferredContentSizeCategory), v85, LOBYTE(v85) = sub_20C3E8FAC(), v86, (v85 & 1) == 0))
  {
    v94 = v62;
    v95 = sub_20C3E810C();
    v96 = sub_20C3E8F3C();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 67109376;
      v193.origin.x = v8;
      v193.origin.y = v10;
      v193.size.width = v11;
      v193.size.height = v12;
      *(v97 + 4) = v28 <= CGRectGetWidth(v193);
      *(v97 + 8) = 1024;
      v98 = [v94 traitCollection];
      v99 = [v98 preferredContentSizeCategory];

      LOBYTE(v98) = sub_20C3E8FAC();
      v65 = &qword_27C7AD000;
      *(v97 + 10) = v98 & 1;

      _os_log_impl(&dword_20C38A000, v95, v96, "[FloatingTabBar] Accessible mode preferred. Size %{BOOL}d. DynamicType %{BOOL}d", v97, 0xEu);
      MEMORY[0x20F2FA030](v97, -1, -1);
    }

    else
    {

      v95 = v94;
    }

    v100 = v65[39];
    if (*(&v94->isa + v100))
    {
      if (*(&v94->isa + v100) != 1)
      {
        v101 = v94 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_standardContentView;
        v102 = *(&v94->isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_standardContentView);
        if (v102)
        {
          [v102 setUserInteractionEnabled_];
          if (*v101)
          {
            [*v101 setHidden_];
            v103 = *v101;
            if (*v101)
            {
              v104 = *(v101 + 1);
              ObjectType = swift_getObjectType();
              v106 = *(v104 + 16);
              v107 = v103;
              v108 = ObjectType;
              v65 = &qword_27C7AD000;
              v106(0, 0, v108, v104);
            }
          }
        }

        v109 = *(&v94->isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentGestureRecognizer);
        if (v109)
        {
          [v109 setEnabled_];
        }

        *(&v94->isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectionShouldFollowGesture) = 0;
      }

      v110 = v94 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_accessibleContentView;
      v111 = *(&v94->isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_accessibleContentView);
      if (v111)
      {
        v112 = *(v110 + 1);
        v113 = swift_getObjectType();
        v114 = *(v112 + 16);
        v115 = v94;
        v116 = v111;
        v117 = v113;
        v65 = &qword_27C7AD000;
        v114(v94, &protocol witness table for FloatingTabBar, v117, v112);

        if (*v110)
        {
          [*v110 setUserInteractionEnabled_];
          if (*v110)
          {
            [*v110 setHidden_];
          }
        }
      }

      else
      {
        type metadata accessor for AccessibleFloatingTabBarControl();
        v118 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_20C399D4C(v118, v94, &OBJC_IVAR____TtC13FitnessCoreUI31AccessibleFloatingTabBarControl_delegate);

        v119 = *v110;
        *v110 = v118;
        *(v110 + 1) = &protocol witness table for AccessibleFloatingTabBarControl;
      }
    }

    *(&v94->isa + v100) = 0;
    v120 = &OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_accessibleContentView;
    goto LABEL_117;
  }

  v87 = v62;
  v88 = sub_20C3E810C();
  v89 = sub_20C3E8F3C();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 67109376;
    v192.origin.x = v8;
    v192.origin.y = v10;
    v192.size.width = v11;
    v192.size.height = v12;
    *(v90 + 4) = v28 <= CGRectGetWidth(v192);
    *(v90 + 8) = 1024;
    v91 = [v87 traitCollection];
    v92 = [v91 preferredContentSizeCategory];

    LOBYTE(v91) = sub_20C3E8FAC();
    v93 = v91 & 1;
    v65 = &qword_27C7AD000;
    *(v90 + 10) = v93;

    _os_log_impl(&dword_20C38A000, v88, v89, "[FloatingTabBar] Standard mode preferred. Size %{BOOL}d. DynamicType %{BOOL}d", v90, 0xEu);
    MEMORY[0x20F2FA030](v90, -1, -1);
  }

  else
  {

    v88 = v87;
  }

  v121 = v65[39];
  if (!*(&v87->isa + v121))
  {
    v122 = v87 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_accessibleContentView;
    v123 = *(&v87->isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_accessibleContentView);
    if (v123)
    {
      [v123 setUserInteractionEnabled_];
      if (*v122)
      {
        [*v122 setHidden_];
        v124 = *v122;
        if (*v122)
        {
          v125 = *(v122 + 1);
          v126 = swift_getObjectType();
          v127 = *(v125 + 16);
          v128 = v124;
          v129 = v126;
          v65 = &qword_27C7AD000;
          v127(0, 0, v129, v125);
        }
      }
    }

    goto LABEL_109;
  }

  if (*(&v87->isa + v121) == 1)
  {
LABEL_109:
    v130 = v87 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_standardContentView;
    v131 = *(&v87->isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_standardContentView);
    if (v131)
    {
      v132 = *(v130 + 1);
      v133 = swift_getObjectType();
      v134 = *(v132 + 16);
      v135 = v87;
      v136 = v131;
      v137 = v133;
      v65 = &qword_27C7AD000;
      v134(v87, &protocol witness table for FloatingTabBar, v137, v132);

      if (*v130)
      {
        [*v130 setUserInteractionEnabled_];
        if (*v130)
        {
          [*v130 setHidden_];
        }
      }
    }

    else
    {
      v138 = objc_allocWithZone(type metadata accessor for FloatingTabBarContentView());

      v140 = sub_20C39A01C(v139, v138);
      sub_20C399D4C(v140, v87, &OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate);

      v141 = *v130;
      *v130 = v140;
      *(v130 + 1) = &protocol witness table for FloatingTabBarContentView;
    }

    v142 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentGestureRecognizer;
    v143 = *(&v87->isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentGestureRecognizer);
    if (v143)
    {
      [v143 setEnabled_];
    }

    else
    {
      v165 = *v130;
      if (*v130)
      {
        v166 = *(v130 + 1);
        v167 = swift_getObjectType();
        v168 = *(v166 + 56);
        v169 = v165;
        v170 = v167;
        v65 = &qword_27C7AD000;
        v171 = v168(v170, v166);

        v172 = *(&v87->isa + v142);
        *(&v87->isa + v142) = v171;
        v173 = v171;

        if (v171)
        {
          [v87 addGestureRecognizer:v173];
        }
      }

      else
      {
        *(&v87->isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentGestureRecognizer) = 0;
      }
    }
  }

  *(&v87->isa + v121) = 2;
  v120 = &OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_standardContentView;
LABEL_117:
  v144 = &v62[*v120];
  v145 = *v144;
  v146 = *(v144 + 1);
  v147 = &v62[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentView];
  v148 = *&v62[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentView];
  *v147 = v145;
  *(v147 + 1) = v146;
  v149 = v145;

  if (!v145)
  {

    v152 = v62;
    v71 = sub_20C3E810C();
    v153 = sub_20C3E8F1C();

    if (os_log_type_enabled(v71, v153))
    {
      v73 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *&v184 = v154;
      *v73 = 136315138;
      if (v152[v65[39]])
      {
        if (v152[v65[39]] == 1)
        {
          v155 = 0xE400000000000000;
          v156 = 1701736270;
        }

        else
        {
          v155 = 0xE800000000000000;
          v156 = 0x647261646E617453;
        }
      }

      else
      {
        v156 = 0x6269737365636341;
        v155 = 0xEA0000000000656CLL;
      }

      v174 = sub_20C3997A4(v156, v155, &v184);

      *(v73 + 4) = v174;
      _os_log_impl(&dword_20C38A000, v71, v153, "[FloatingTabBar] Found unexpectedly nil content view for display mode %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v154);
      MEMORY[0x20F2FA030](v154, -1, -1);
LABEL_132:
      MEMORY[0x20F2FA030](v73, -1, -1);
    }

    goto LABEL_133;
  }

  v150 = &v62[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_pendingSelectedIndex];
  v181 = &v62[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_pendingSelectedIndex];
  if (v62[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_pendingSelectedIndex + 8] == 1)
  {
    v150 = &v62[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectedIndex];
    swift_beginAccess();
    v151 = v150[8];
  }

  else
  {
    v151 = 0;
  }

  v157 = *v150;
  v158 = swift_getObjectType();
  LOBYTE(v183) = 0;
  v159 = *(v146 + 72);

  v159(v160, v157, v151, v182, v180, &v183, 0, v177 & 1, v11, v12, v158, v146);

  v161 = (*(v146 + 48))(v158, v146);
  v163 = v162;

  v164 = &v62[OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectedIndex];
  swift_beginAccess();
  *v164 = v161;
  v164[8] = v163 & 1;
  *v181 = 0;
  v181[8] = 1;
}

id FloatingTabBar.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingTabBar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void __swiftcall FloatingTabBar.animationAnchorView()(UIView_optional *__return_ptr retstr)
{
  v2 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_animationAnchor;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3)
  {
    [v1 superview];
  }

  v4 = v3;
}

uint64_t FloatingTabBar.floatingTabBarContent(_:didRequestActionAtIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, &protocol witness table for FloatingTabBar, a3, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FloatingTabBar.floatingTabBarContent(_:didSelectItemAtIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 48))(ObjectType, a2);
  LOBYTE(a2) = v9;
  v10 = v4 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectedIndex;
  swift_beginAccess();
  *v10 = v8;
  *(v10 + 8) = a2 & 1;
  v11 = v4 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_pendingSelectedIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v4 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    v15 = swift_getObjectType();
    (*(v14 + 24))(v4, &protocol witness table for FloatingTabBar, a3, v15, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_20C399324()
{
  v1 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_animationAnchor;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = v2;
  if (!v2)
  {
    v3 = [v0 superview];
  }

  v4 = v2;
  return v3;
}

uint64_t sub_20C39939C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, &protocol witness table for FloatingTabBar, a3, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Int_optional __swiftcall FloatingTabBar.selectedIndexForExpansion()()
{
  v0 = 0;
  v1 = 1;
  result.value = v0;
  result.is_nil = v1;
  return result;
}

uint64_t (*sub_20C399454(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20C39B0E8;
}

void sub_20C3994F4(uint64_t a1, char a2)
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
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t (*sub_20C39957C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20C39B0EC;
}

uint64_t sub_20C3995E0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24) + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_oldRectSize;
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }

  return result;
}

uint64_t sub_20C399634(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v47 = v2;
  v48 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v34 = *(v5 + 64);
    v35 = v8;
    v36 = *(v5 + 96);
    v9 = *(v5 + 16);
    v31[0] = *v5;
    v31[1] = v9;
    v10 = *(v5 + 48);
    v32 = *(v5 + 32);
    v33 = v10;
    v24 = v31[0];
    v25 = v9;
    v26 = v32;
    v27 = v10;
    v28 = v34;
    v29 = v8;
    v30 = v36;
    v11 = *(v6 + 80);
    v40 = *(v6 + 64);
    v41 = v11;
    v42 = *(v6 + 96);
    v12 = *(v6 + 16);
    v37[0] = *v6;
    v37[1] = v12;
    v13 = *(v6 + 48);
    v38 = *(v6 + 32);
    v39 = v13;
    v17 = v37[0];
    v18 = v12;
    v19 = v38;
    v20 = v13;
    v21 = v40;
    v22 = v11;
    v23 = v42;
    v14 = _s13FitnessCoreUI17TabItemDescriptorV2eeoiySbAC_ACtFZ_0(&v24, &v17);
    v43[4] = v21;
    v43[5] = v22;
    v44 = v23;
    v43[0] = v17;
    v43[1] = v18;
    v43[2] = v19;
    v43[3] = v20;
    sub_20C39AF38(v31, v16);
    sub_20C39AF38(v37, v16);
    sub_20C39AF94(v43);
    v45[4] = v28;
    v45[5] = v29;
    v46 = v30;
    v45[0] = v24;
    v45[1] = v25;
    v45[2] = v26;
    v45[3] = v27;
    sub_20C39AF94(v45);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 104;
    v5 += 104;
  }

  return 1;
}

unint64_t sub_20C3997A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20C399870(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20C39AFE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_20C399870(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_20C39997C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_20C3E916C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_20C39997C(uint64_t a1, unint64_t a2)
{
  v3 = sub_20C3999C8(a1, a2);
  sub_20C399AF8(&unk_28235DF88);
  return v3;
}

uint64_t sub_20C3999C8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20C399BE4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20C3E916C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20C3E8CBC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20C399BE4(v10, 0);
        result = sub_20C3E90EC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20C399AF8(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20C399C58(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20C399BE4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD180);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20C399C58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_20C399D4C(char *a1, void *a2, void *a3)
{
  v5 = &a1[*a3];
  swift_beginAccess();
  *(v5 + 1) = &protocol witness table for FloatingTabBar;
  swift_unknownObjectWeakAssign();
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [a2 addSubview_];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD8A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C3EBA10;
  v8 = [a1 leadingAnchor];
  v9 = [a2 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:4.0];

  *(v7 + 32) = v10;
  v11 = [a1 trailingAnchor];
  v12 = [a2 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-4.0];

  *(v7 + 40) = v13;
  v14 = [a1 topAnchor];
  v15 = [a2 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:4.0];

  *(v7 + 48) = v16;
  v17 = [a1 bottomAnchor];
  v18 = [a2 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-4.0];

  LODWORD(v20) = 1148829696;
  [v19 setPriority_];
  *(v7 + 56) = v19;
  sub_20C38BD08(0, &qword_2810F2100);
  v21 = sub_20C3E8D9C();

  [v6 activateConstraints_];
}

char *sub_20C39A01C(uint64_t a1, _BYTE *a2)
{
  v69[3] = type metadata accessor for FloatingTabBarLayoutProvider();
  v69[4] = &protocol witness table for FloatingTabBarLayoutProvider;
  v69[0] = a1;
  *&a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_highlightedIndex];
  *v4 = 0;
  v4[8] = 1;
  v5 = MEMORY[0x277D84F90];
  *&a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_itemDescriptors] = MEMORY[0x277D84F90];
  v6 = &a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectedIndex];
  *v6 = 0;
  v6[8] = 1;
  v7 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v9 = [objc_allocWithZone(type metadata accessor for FloatingCollectionView()) initWithFrame:v8 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&a2[v7] = v9;
  v10 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionGestureRecognizer;
  type metadata accessor for ContinuousSelectionGestureRecognizer();
  *&a2[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView;
  *&a2[v11] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_currentWidth] = 0;
  *&a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource] = 0;
  a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isAnimating] = 0;
  a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_isPendingLayout] = 1;
  *&a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_items] = v5;
  v12 = &a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_pendingSelectedIndex];
  *v12 = 0;
  v12[8] = 1;
  a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionShouldFollowGesture] = 0;
  sub_20C39B064(v69, &a2[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_layoutProvider]);
  v68.receiver = a2;
  v68.super_class = type metadata accessor for FloatingTabBarContentView();
  v13 = objc_msgSendSuper2(&v68, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = objc_allocWithZone(type metadata accessor for FloatingLayout());
  aBlock[4] = sub_20C39B0C8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C3C2298;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  v65 = [v15 initWithSectionProvider_];
  _Block_release(v16);

  v18 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView;
  v19 = *&v17[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_collectionView];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD770));
  v21 = v17;
  v22 = v19;
  v23 = sub_20C3E824C();
  v24 = *&v21[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource];
  *&v21[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_dataSource] = v23;

  v25 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView;
  v26 = *&v21[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionView];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 systemFillColor];
  [v28 setBackgroundColor_];

  v30 = [*&v21[v25] layer];
  [v30 setCornerRadius_];

  v31 = *&v21[v25];
  v32 = v21;
  [v32 addSubview_];
  v33 = OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionGestureRecognizer;
  [*&v32[OBJC_IVAR____TtC13FitnessCoreUI25FloatingTabBarContentView_selectionGestureRecognizer] addTarget:v32 action:sel_handleSelectionGesture_];
  [*&v32[v33] setCancelsTouchesInView_];
  *(*&v32[v33] + OBJC_IVAR____TtC13FitnessCoreUI36ContinuousSelectionGestureRecognizer_dragCoordinator + 8) = &off_28235F740;
  swift_unknownObjectWeakAssign();
  [*&v32[v33] setDelegate_];
  v34 = *&v17[v18];
  v35 = [v27 clearColor];
  [v34 setBackgroundColor_];

  [*&v17[v18] setCollectionViewLayout_];
  [*&v17[v18] setAccessibilityContainerType_];
  v36 = *MEMORY[0x277D765C0];
  v37 = *&v17[v18];
  v38 = [v37 accessibilityTraits];
  if ((v36 & ~v38) != 0)
  {
    v39 = v36;
  }

  else
  {
    v39 = 0;
  }

  [v37 setAccessibilityTraits_];

  [*&v17[v18] setIsAccessibilityElement_];
  [*&v17[v18] setAllowsMultipleSelection_];
  [*&v17[v18] setAllowsSelection_];
  [*&v17[v18] setScrollEnabled_];
  [*&v17[v18] setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = *&v17[v18];
  type metadata accessor for TabItemCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = v40;
  v43 = sub_20C3E8BFC();
  [v42 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v43];

  v44 = *&v17[v18];
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v44;

  v47 = &v46[OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate];
  swift_beginAccess();
  v48 = *v47;
  *v47 = sub_20C39B0E0;
  v47[1] = v45;

  sub_20C38F958(v48);

  [v32 addSubview_];
  v49 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD8A0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_20C3EBA10;
  v51 = [*&v17[v18] leadingAnchor];
  v52 = [v32 leadingAnchor];

  v53 = [v51 constraintEqualToAnchor_];
  *(v50 + 32) = v53;
  v54 = [*&v17[v18] trailingAnchor];
  v55 = [v32 trailingAnchor];

  v56 = [v54 constraintEqualToAnchor_];
  *(v50 + 40) = v56;
  v57 = [*&v17[v18] topAnchor];
  v58 = [v32 topAnchor];

  v59 = [v57 constraintEqualToAnchor_];
  *(v50 + 48) = v59;
  v60 = [*&v17[v18] bottomAnchor];
  v61 = [v32 bottomAnchor];

  v62 = [v60 constraintEqualToAnchor_];
  *(v50 + 56) = v62;
  sub_20C38BD08(0, &qword_2810F2100);
  v63 = sub_20C3E8D9C();

  [v49 activateConstraints_];

  __swift_destroy_boxed_opaque_existential_1(v69);
  return v32;
}

uint64_t sub_20C39A8E4(uint64_t a1)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_oldRectSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  sub_20C3979A8(0);
}

void _s13FitnessCoreUI14FloatingTabBarC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_animationAnchor) = 0;
  v1 = v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectedIndex;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_itemDescriptors) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_backgroundVisuallEffectView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v3 = OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_layoutProvider;
  type metadata accessor for FloatingTabBarLayoutProvider();
  v4 = swift_allocObject();
  __asm { FMOV            V0.2D, #4.0 }

  *(v4 + 16) = _Q0;
  *(v4 + 32) = _Q0;
  *(v0 + v3) = v4;
  v10 = (v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_accessibleContentView);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_activeDisplayMode) = 1;
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentGestureRecognizer) = 0;
  v11 = (v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_contentView);
  *v11 = 0;
  v11[1] = 0;
  v12 = v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_minimumHeight;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_oldRectSize;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_pendingSelectedIndex;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_selectionShouldFollowGesture) = 0;
  v15 = (v0 + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_standardContentView);
  *v15 = 0;
  v15[1] = 0;
  sub_20C3E921C();
  __break(1u);
}

uint64_t sub_20C39AB30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C39AEBC()
{
  result = qword_27C7AD178;
  if (!qword_27C7AD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD178);
  }

  return result;
}

uint64_t sub_20C39AFE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20C39B064(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t TabItem.accessibilityIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TabItem.accessibilityLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TabItem.accessibilityValue.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TabItem.accessibilityHint.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

__n128 TabItem.sizeDescriptor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 72);
  *(a1 + 16) = v2;
  result = *(v1 + 104);
  v4 = *(v1 + 120);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t TabItem.systemImageName.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t TabItem.title.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

unint64_t sub_20C39B248()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 1684957547;
    v6 = 0x6D496D6574737973;
    if (v1 != 6)
    {
      v6 = 0x656C746974;
    }

    if (v1 != 4)
    {
      v5 = 0x63736544657A6973;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (v1 == 2)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000017;
    if (*v0)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_20C39B35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C39C804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C39B390(uint64_t a1)
{
  v2 = sub_20C39B700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C39B3CC(uint64_t a1)
{
  v2 = sub_20C39B700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TabItem.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD188);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = *(v2 + 16);
  v18[9] = *(v2 + 24);
  v18[10] = v8;
  v9 = *(v2 + 32);
  v18[7] = *(v2 + 40);
  v18[8] = v9;
  v10 = *(v2 + 48);
  v18[5] = *(v2 + 56);
  v18[6] = v10;
  v23 = *(v2 + 64);
  v11 = *(v2 + 144);
  v18[3] = *(v2 + 136);
  v18[4] = v11;
  v12 = *(v2 + 160);
  v18[1] = *(v2 + 152);
  v18[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C39B700();
  sub_20C3E952C();
  LOBYTE(v19) = 0;
  v13 = v18[11];
  sub_20C3E936C();
  if (v13)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = v23;
  LOBYTE(v19) = 1;
  sub_20C3E935C();
  LOBYTE(v19) = 2;
  sub_20C3E935C();
  LOBYTE(v19) = 3;
  sub_20C3E935C();
  LOBYTE(v19) = v14;
  v24 = 4;
  sub_20C39B754();
  sub_20C3E939C();
  v15 = *(v2 + 88);
  v19 = *(v2 + 72);
  v20 = v15;
  v16 = *(v2 + 120);
  v21 = *(v2 + 104);
  v22 = v16;
  v24 = 5;
  sub_20C39B7A8();
  sub_20C3E939C();
  LOBYTE(v19) = 6;
  sub_20C3E935C();
  LOBYTE(v19) = 7;
  sub_20C3E935C();
  return MEMORY[8](v7, v4);
}

unint64_t sub_20C39B700()
{
  result = qword_27C7AD190;
  if (!qword_27C7AD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD190);
  }

  return result;
}

unint64_t sub_20C39B754()
{
  result = qword_27C7AD198;
  if (!qword_27C7AD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD198);
  }

  return result;
}

unint64_t sub_20C39B7A8()
{
  result = qword_27C7AD1A0;
  if (!qword_27C7AD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD1A0);
  }

  return result;
}

uint64_t TabItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD1A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_20C39B700();
  sub_20C3E951C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  v10 = v6;
  LOBYTE(v55[0]) = 0;
  v11 = v5;
  v13 = sub_20C3E92EC();
  v47 = v14;
  LOBYTE(v55[0]) = 1;
  v15 = sub_20C3E92DC();
  v46 = v16;
  v17 = v15;
  LOBYTE(v55[0]) = 2;
  v42 = sub_20C3E92DC();
  v43 = v17;
  v45 = v18;
  LOBYTE(v55[0]) = 3;
  v41 = sub_20C3E92DC();
  v20 = v19;
  LOBYTE(v48) = 4;
  sub_20C39BD4C();
  sub_20C3E931C();
  v44 = 0;
  v21 = LOBYTE(v55[0]);
  v66 = 5;
  sub_20C39BDA0();
  v22 = v44;
  sub_20C3E931C();
  if (v22)
  {
    v44 = v22;
    (*(v10 + 8))(v8, v11);
    __swift_destroy_boxed_opaque_existential_1(v72);
  }

  else
  {
    *(v71 + 7) = v67;
    *(&v71[1] + 7) = v68;
    *(&v71[2] + 7) = v69;
    *(&v71[3] + 7) = v70;
    LOBYTE(v55[0]) = 6;
    v39 = sub_20C3E92DC();
    v40 = v21;
    v24 = v23;
    v65 = 7;
    v25 = sub_20C3E92DC();
    v44 = 0;
    v26 = v25;
    v27 = v8;
    v29 = v28;
    (*(v10 + 8))(v27, v11);
    *&v48 = v13;
    *(&v48 + 1) = v47;
    *&v49 = v43;
    *(&v49 + 1) = v46;
    *&v50 = v42;
    *(&v50 + 1) = v45;
    *&v51 = v41;
    *(&v51 + 1) = v20;
    LOBYTE(v52[0]) = v40;
    *(v52 + 1) = v71[0];
    *(&v52[1] + 1) = v71[1];
    *(&v52[2] + 1) = v71[2];
    *(&v52[3] + 1) = v71[3];
    v30 = v39;
    *&v52[4] = *(&v71[3] + 15);
    *(&v52[4] + 1) = v39;
    *&v53 = v24;
    *(&v53 + 1) = v26;
    v54 = v29;
    v31 = v49;
    *a2 = v48;
    *(a2 + 16) = v31;
    v32 = v50;
    v33 = v51;
    v34 = v52[1];
    *(a2 + 64) = v52[0];
    *(a2 + 80) = v34;
    *(a2 + 32) = v32;
    *(a2 + 48) = v33;
    v35 = v52[2];
    v36 = v52[3];
    v37 = v52[4];
    v38 = v53;
    *(a2 + 160) = v29;
    *(a2 + 128) = v37;
    *(a2 + 144) = v38;
    *(a2 + 96) = v35;
    *(a2 + 112) = v36;
    sub_20C39BDF4(&v48, v55);
    __swift_destroy_boxed_opaque_existential_1(v72);
    v58 = v71[1];
    v59 = v71[2];
    *v60 = v71[3];
    v55[0] = v13;
    v55[1] = v47;
    v55[2] = v43;
    v55[3] = v46;
    v55[4] = v42;
    v55[5] = v45;
    v55[6] = v41;
    v55[7] = v20;
    v56 = v40;
    v57 = v71[0];
    *&v60[15] = *(&v71[3] + 15);
    v61 = v30;
    v62 = v24;
    v63 = v26;
    v64 = v29;
    return sub_20C39BE2C(v55);
  }
}

unint64_t sub_20C39BD4C()
{
  result = qword_27C7AD1B0;
  if (!qword_27C7AD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD1B0);
  }

  return result;
}

unint64_t sub_20C39BDA0()
{
  result = qword_27C7AD1B8;
  if (!qword_27C7AD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD1B8);
  }

  return result;
}

uint64_t TabItem.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 112);
  v19 = *(v0 + 104);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v12 = *(v0 + 144);
  v13 = *(v0 + 160);
  sub_20C3E8C7C();
  if (v1)
  {
    sub_20C3E94DC();
    sub_20C3E8C7C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_20C3E94DC();
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_20C3E94DC();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_20C3E94DC();
  sub_20C3E8C7C();
  if (v3)
  {
LABEL_4:
    sub_20C3E94DC();
    sub_20C3E8C7C();
    goto LABEL_8;
  }

LABEL_7:
  sub_20C3E94DC();
LABEL_8:
  MEMORY[0x20F2F98F0](v4);
  if (v6 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v6;
  }

  MEMORY[0x20F2F9920](*&v14);
  if (v5 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v5;
  }

  MEMORY[0x20F2F9920](*&v15);
  if (v8 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v8;
  }

  MEMORY[0x20F2F9920](*&v16);
  if (v7 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v7;
  }

  MEMORY[0x20F2F9920](*&v17);
  NSDirectionalEdgeInsets.hash(into:)(v19, v9, v10, v11);
  if (!v12)
  {
    sub_20C3E94DC();
    if (v13)
    {
      goto LABEL_22;
    }

    return sub_20C3E94DC();
  }

  sub_20C3E94DC();
  sub_20C3E8C7C();
  if (!v13)
  {
    return sub_20C3E94DC();
  }

LABEL_22:
  sub_20C3E94DC();

  return sub_20C3E8C7C();
}

uint64_t TabItem.hashValue.getter()
{
  sub_20C3E94BC();
  TabItem.hash(into:)();
  return sub_20C3E950C();
}

uint64_t sub_20C39C0D8()
{
  sub_20C3E94BC();
  TabItem.hash(into:)();
  return sub_20C3E950C();
}

uint64_t sub_20C39C11C()
{
  sub_20C3E94BC();
  TabItem.hash(into:)();
  return sub_20C3E950C();
}

uint64_t sub_20C39C15C(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x20F2F9920](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x20F2F9920](*&v3);
}

uint64_t _s13FitnessCoreUI7TabItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v32 = *(a1 + 48);
  v35 = *(a1 + 56);
  v34 = *(a1 + 64);
  v7 = *(a1 + 72);
  v6 = *(a1 + 80);
  v30 = *(a1 + 104);
  v31 = *(a1 + 88);
  v29 = *(a1 + 120);
  v21 = *(a1 + 136);
  v25 = *(a1 + 144);
  v18 = *(a1 + 152);
  v23 = *(a1 + 160);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  v33 = *(a2 + 64);
  v15 = *(a2 + 72);
  v14 = *(a2 + 80);
  v27 = *(a2 + 104);
  v28 = *(a2 + 88);
  v26 = *(a2 + 120);
  v24 = *(a2 + 144);
  v19 = *(a2 + 152);
  v20 = *(a2 + 136);
  v22 = *(a2 + 160);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20C3E93EC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9 || (v2 != v8 || v4 != v9) && (sub_20C3E93EC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v3 != v11 || v5 != v10) && (sub_20C3E93EC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v35)
  {
    if (!v12)
    {
      return 0;
    }

    if (v32 == v13 && v35 == v12)
    {
      result = 0;
    }

    else
    {
      v17 = sub_20C3E93EC();
      result = 0;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (v12)
    {
      return result;
    }
  }

  if (v34 == v33 && v7 == v15 && v6 == v14)
  {
    v37[0] = v31;
    v37[1] = v30;
    v37[2] = v29;
    v36[0] = v28;
    v36[1] = v27;
    v36[2] = v26;
    if (_s13FitnessCoreUI11TabItemSizeV2eeoiySbAC_ACtFZ_0(v37, v36))
    {
      if (v25)
      {
        if (!v24 || (v21 != v20 || v25 != v24) && (sub_20C3E93EC() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v24)
      {
        return 0;
      }

      if (v23)
      {
        if (v22 && (v18 == v19 && v23 == v22 || (sub_20C3E93EC() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v22)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_20C39C45C()
{
  result = qword_27C7AD1C0;
  if (!qword_27C7AD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD1C0);
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_20C39C4EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C39C534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TabItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TabItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C39C700()
{
  result = qword_27C7AD1C8;
  if (!qword_27C7AD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD1C8);
  }

  return result;
}

unint64_t sub_20C39C758()
{
  result = qword_27C7AD1D0;
  if (!qword_27C7AD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7AD1D0);
  }

  return result;
}

unint64_t sub_20C39C7B0()
{
  result = qword_27C7AD1D8[0];
  if (!qword_27C7AD1D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C7AD1D8);
  }

  return result;
}

uint64_t sub_20C39C804(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000020C3F2D30 == a2 || (sub_20C3E93EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C3F2D50 == a2 || (sub_20C3E93EC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C3F2D70 == a2 || (sub_20C3E93EC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C3F2D90 == a2 || (sub_20C3E93EC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63736544657A6973 && a2 == 0xEE00726F74706972 || (sub_20C3E93EC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761 || (sub_20C3E93EC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_20C3E93EC();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t StandardArtworkDescriptor.cropCode.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t StandardArtworkDescriptor.init(artwork:cropCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for StandardArtworkDescriptor();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_20C39CBB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_20C3E93EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_20C3E93EC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_20C39CCB8(char a1)
{
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](a1 & 1);
  return sub_20C3E950C();
}

uint64_t sub_20C39CD00(char a1)
{
  if (a1)
  {
    return 0x65646F43706F7263;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_20C39CD6C()
{
  sub_20C3E94BC();
  sub_20C39CC90(v2, *v0);
  return sub_20C3E950C();
}

uint64_t sub_20C39CDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C39CBB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C39CDF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20C39DA90();
  *a1 = result;
  return result;
}

uint64_t sub_20C39CE20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C39CE74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t StandardArtworkDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v9[0] = a2;
  v9[2] = *(a2 + 16);
  type metadata accessor for StandardArtworkDescriptor.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_20C3E93AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3E952C();
  v11 = 0;
  v7 = v9[3];
  sub_20C3E939C();
  if (!v7)
  {
    v10 = 1;
    sub_20C3E936C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StandardArtworkDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v29 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v31 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StandardArtworkDescriptor.CodingKeys();
  swift_getWitnessTable();
  v32 = sub_20C3E933C();
  v28 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v24 - v8;
  v30 = a3;
  v10 = type metadata accessor for StandardArtworkDescriptor();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v33;
  sub_20C3E951C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = a1;
  v25 = v10;
  v14 = v28;
  v15 = v29;
  v35 = 0;
  sub_20C3E931C();
  v16 = v12;
  (*(v15 + 32))(v12, v31, a2);
  v34 = 1;
  v17 = sub_20C3E92EC();
  v19 = v18;
  (*(v14 + 8))(v9, v32);
  v20 = v25;
  v21 = &v16[*(v25 + 36)];
  *v21 = v17;
  v21[1] = v19;
  v22 = v26;
  (*(v26 + 16))(v27, v16, v20);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return (*(v22 + 8))(v16, v20);
}

uint64_t static StandardArtworkDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_20C3E8BDC() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for StandardArtworkDescriptor() + 36);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_20C3E93EC();
}

uint64_t StandardArtworkDescriptor.hash(into:)()
{
  sub_20C3E8BBC();

  return sub_20C3E8C7C();
}

uint64_t StandardArtworkDescriptor.hashValue.getter()
{
  sub_20C3E94BC();
  StandardArtworkDescriptor.hash(into:)();
  return sub_20C3E950C();
}

uint64_t sub_20C39D59C()
{
  sub_20C3E94BC();
  StandardArtworkDescriptor.hash(into:)();
  return sub_20C3E950C();
}

uint64_t sub_20C39D608(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_20C39D744(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TabItemSize.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TabItemSize.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ArtworkDescriptor.standardArtworkDescriptor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DynamicArtworkDescriptor();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v3, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for StandardArtworkDescriptor();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    (*(v7 + 32))(v10, v12, v6);
    v16 = *(v6 + 36);
    v17 = type metadata accessor for StandardArtworkDescriptor();
    (*(*(v17 - 8) + 16))(a2, &v10[v16], v17);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_20C39DCC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63696D616E7964 && a2 == 0xE700000000000000;
  if (v4 || (sub_20C3E93EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_20C3E93EC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_20C39DD94(char a1)
{
  if (a1)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x63696D616E7964;
  }
}

uint64_t sub_20C39DDCC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C3E93EC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C39DE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C39DCC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C39DE8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C39DEE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C39DF58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20C39DF34();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20C39DF88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C39DFDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C39E030()
{
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](0);
  return sub_20C3E950C();
}

uint64_t sub_20C39E074()
{
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](0);
  return sub_20C3E950C();
}

uint64_t sub_20C39E0B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C39E108(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ArtworkDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v38 = type metadata accessor for ArtworkDescriptor.StandardCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_20C3E93AC();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = v28 - v5;
  v6 = type metadata accessor for StandardArtworkDescriptor();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = v28 - v7;
  v8 = type metadata accessor for ArtworkDescriptor.DynamicCodingKeys();
  v9 = swift_getWitnessTable();
  v30 = v8;
  v28[1] = v9;
  v10 = sub_20C3E93AC();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v31 = v28 - v11;
  v12 = type metadata accessor for DynamicArtworkDescriptor();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v29 = v28 - v14;
  v15 = *(a2 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkDescriptor.CodingKeys();
  swift_getWitnessTable();
  v44 = sub_20C3E93AC();
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v19 = v28 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3E952C();
  (*(v15 + 16))(v17, v45, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v40;
    v20 = v41;
    v22 = v37;
    (*(v40 + 32))(v37, v17, v41);
    v48 = 1;
    v23 = v39;
    v24 = v44;
    sub_20C3E934C();
    swift_getWitnessTable();
    v25 = v43;
    sub_20C3E939C();
    v26 = v42;
  }

  else
  {
    v21 = v32;
    v20 = v33;
    v22 = v29;
    (*(v32 + 32))(v29, v17, v33);
    v47 = 0;
    v23 = v31;
    v24 = v44;
    sub_20C3E934C();
    swift_getWitnessTable();
    v25 = v35;
    sub_20C3E939C();
    v26 = v34;
  }

  (*(v26 + 8))(v23, v25);
  (*(v21 + 8))(v22, v20);
  return (*(v46 + 8))(v19, v24);
}

uint64_t ArtworkDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v62 = a4;
  v7 = type metadata accessor for ArtworkDescriptor.StandardCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v60 = v7;
  v56 = sub_20C3E933C();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v61 = &v50 - v8;
  v9 = type metadata accessor for ArtworkDescriptor.DynamicCodingKeys();
  v10 = swift_getWitnessTable();
  v58 = v9;
  v57 = v10;
  v54 = sub_20C3E933C();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v63 = &v50 - v11;
  type metadata accessor for ArtworkDescriptor.CodingKeys();
  swift_getWitnessTable();
  v12 = sub_20C3E933C();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v65 = a2;
  v67 = a3;
  v15 = type metadata accessor for ArtworkDescriptor();
  v64 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v66 = v14;
  v25 = v70;
  sub_20C3E951C();
  if (!v25)
  {
    v70 = v18;
    v52 = v21;
    v51 = v23;
    v26 = v66;
    v27 = v69;
    *&v71 = sub_20C3E932C();
    sub_20C3E8DCC();
    swift_getWitnessTable();
    *&v73 = sub_20C3E909C();
    *(&v73 + 1) = v28;
    *&v74 = v29;
    *(&v74 + 1) = v30;
    sub_20C3E908C();
    swift_getWitnessTable();
    sub_20C3E8EEC();
    v31 = v71;
    if (v71 == 2 || (v50 = v73, v71 = v73, v72 = v74, (sub_20C3E8EFC() & 1) == 0))
    {
      v34 = sub_20C3E915C();
      swift_allocError();
      v35 = v27;
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD840);
      *v37 = v15;
      sub_20C3E92CC();
      sub_20C3E914C();
      (*(*(v34 - 8) + 104))(v37, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v68 + 8))(v26, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31)
      {
        LOBYTE(v71) = 1;
        v32 = v61;
        sub_20C3E92BC();
        v33 = v64;
        type metadata accessor for StandardArtworkDescriptor();
        swift_getWitnessTable();
        v38 = v56;
        sub_20C3E931C();
        v39 = v68;
        (*(v55 + 8))(v32, v38);
        (*(v39 + 8))(v26, v27);
        swift_unknownObjectRelease();
        v45 = v70;
        swift_storeEnumTagMultiPayload();
        v46 = v45;
        v47 = v62;
      }

      else
      {
        LOBYTE(v71) = 0;
        sub_20C3E92BC();
        v47 = v62;
        v33 = v64;
        v40 = v26;
        type metadata accessor for DynamicArtworkDescriptor();
        swift_getWitnessTable();
        v41 = v52;
        v42 = v54;
        v43 = v63;
        sub_20C3E931C();
        (*(v53 + 8))(v43, v42);
        (*(v68 + 8))(v40, v69);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v46 = v41;
      }

      v48 = *(v33 + 32);
      v49 = v51;
      v48(v51, v46, v15);
      v48(v47, v49, v15);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t static ArtworkDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v43 = a2;
  v5 = type metadata accessor for StandardArtworkDescriptor();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v34 - v6;
  v7 = type metadata accessor for DynamicArtworkDescriptor();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v34 - v8;
  v41 = a4;
  v9 = type metadata accessor for ArtworkDescriptor();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v34 - v18;
  v20 = *(v17 + 48);
  v21 = *(v10 + 16);
  v21(&v34 - v18, v42, v9);
  v21(&v19[v20], v43, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21(v13, v19, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v39;
      v22 = v40;
      v24 = &v19[v20];
      v25 = v35;
      (*(v39 + 32))(v35, v24, v40);
      v26 = static StandardArtworkDescriptor.== infix(_:_:)(v13, v25);
      v27 = *(v23 + 8);
      v27(v25, v22);
      v27(v13, v22);
      goto LABEL_10;
    }

    (*(v39 + 8))(v13, v40);
LABEL_7:
    v26 = 0;
    v10 = v36;
    v9 = TupleTypeMetadata2;
    goto LABEL_10;
  }

  v21(v15, v19, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v37 + 8))(v15, v38);
    goto LABEL_7;
  }

  v29 = v37;
  v28 = v38;
  v30 = &v19[v20];
  v31 = v34;
  (*(v37 + 32))(v34, v30, v38);
  v26 = static DynamicArtworkDescriptor.== infix(_:_:)(v15, v31);
  v32 = *(v29 + 8);
  v32(v31, v28);
  v32(v15, v28);
LABEL_10:
  (*(v10 + 8))(v19, v9);
  return v26 & 1;
}

uint64_t ArtworkDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardArtworkDescriptor();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = type metadata accessor for DynamicArtworkDescriptor();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v2, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v14, v4);
    MEMORY[0x20F2F98F0](1);
    StandardArtworkDescriptor.hash(into:)();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v9 + 32))(v12, v14, v8);
    MEMORY[0x20F2F98F0](0);
    DynamicArtworkDescriptor.hash(into:)();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t ArtworkDescriptor.hashValue.getter(uint64_t a1)
{
  sub_20C3E94BC();
  ArtworkDescriptor.hash(into:)(v3, a1);
  return sub_20C3E950C();
}

uint64_t sub_20C39F6F0(uint64_t a1, uint64_t a2)
{
  sub_20C3E94BC();
  ArtworkDescriptor.hash(into:)(v4, a2);
  return sub_20C3E950C();
}

uint64_t sub_20C39F75C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80) & 0xF8;
  v5 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v6 = ((v4 + 15) & ~v4 & 0x1F8) + v5;
  if (v5 > v6)
  {
    v6 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v7 = v6 | 1;
  v8 = 8 * (v6 | 1);
  if ((v6 | 1) <= 3)
  {
    v11 = (a2 + ~(-1 << v8) - 254) >> v8;
    if (v11 > 0xFFFE)
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 > 0xFE)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (!v11)
    {
LABEL_25:
      v14 = *(a1 + v6);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_25;
  }

LABEL_14:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
    LODWORD(v7) = 4;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v13 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v13 = *a1;
    }
  }

  else if (v7 == 1)
  {
    v13 = *a1;
  }

  else
  {
    v13 = *a1;
  }

  return (v13 | v12) + 255;
}

void sub_20C39F8B4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 80) & 0xF8;
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v8 = ((v6 + 15) & ~v6 & 0x1F8) + v7;
  if (v7 > v8)
  {
    v8 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v9 = v8 | 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = (a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9);
    if (v13 > 0xFFFE)
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0xFF)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      bzero(a1, v9);
      if (v9 == 1)
      {
        *a1 = v11;
        if (v10 <= 1)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v15 = v11 & ~(-1 << (8 * v9));
        *a1 = v15;
        a1[2] = BYTE2(v15);
        if (v10 <= 1)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      bzero(a1, v8 | 1);
      *a1 = v11;
      v12 = 1;
      if (v10 <= 1)
      {
LABEL_34:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }
    }

    if (v10 == 2)
    {
      *&a1[v9] = v12;
    }

    else
    {
      *&a1[v9] = v12;
    }

    return;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t SizeClass.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_20C3E870C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    result = sub_20C39FD74(a1);
  }

  else
  {
    v13 = *(v5 + 32);
    v13(v10, a1, v4);
    v13(v8, v10, v4);
    result = (*(v5 + 88))(v8, v4);
    if (result == *MEMORY[0x277CE0558])
    {
      v12 = 0;
      goto LABEL_8;
    }

    if (result == *MEMORY[0x277CE0560])
    {
      v12 = 1;
      goto LABEL_8;
    }

    result = (*(v5 + 8))(v8, v4);
  }

  v12 = 2;
LABEL_8:
  *a2 = v12;
  return result;
}

uint64_t sub_20C39FD74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD3E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C39FDDC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C39FE10()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C39FE44()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C39FE78()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C39FEAC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C39FEF4(uint64_t a1)
{
  v2 = sub_20C3A0648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C39FF30(uint64_t a1)
{
  v2 = sub_20C3A0648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C39FF6C()
{
  v1 = 1701273968;
  if (*v0 != 1)
  {
    v1 = 0x686372616573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_20C39FFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C3A10C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C39FFE0(uint64_t a1)
{
  v2 = sub_20C3A054C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3A001C(uint64_t a1)
{
  v2 = sub_20C3A054C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3A0058(uint64_t a1)
{
  v2 = sub_20C3A05F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3A0094(uint64_t a1)
{
  v2 = sub_20C3A05F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3A00D0(uint64_t a1)
{
  v2 = sub_20C3A05A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3A010C(uint64_t a1)
{
  v2 = sub_20C3A05A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TabItemKind.description.getter()
{
  v1 = 1701273936;
  if (*v0 != 1)
  {
    v1 = 0x686372616553;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746341;
  }
}

uint64_t sub_20C3A0194()
{
  v1 = 1701273936;
  if (*v0 != 1)
  {
    v1 = 0x686372616553;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746341;
  }
}