void sub_24E2BC41C(char a1)
{
  v3 = type metadata accessor for GKExpandedGroupViewController();
  v20.receiver = v1;
  v20.super_class = v3;
  objc_msgSendSuper2(&v20, sel_viewWillAppear_, a1 & 1);
  v19 = v3;
  v18[0] = v1;
  v4 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v5 = v1;
  v6 = sub_24E2BE570(v18, sel_dismissView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong addGestureRecognizer_];

    v19 = v3;
    v18[0] = v5;
    v9 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v10 = v5;
    v11 = sub_24E2BE570(v18, sel_dismissView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v12 = OUTLINED_FUNCTION_17_40();
    *(v12 + 16) = xmmword_24E369990;
    v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v14 = v11;
    *(v12 + 32) = [v13 initWithInteger_];
    sub_24DF88A8C(0, &qword_27F1E50D0);
    v15 = sub_24E347EE8();

    [v14 setAllowedPressTypes_];

    v16 = [v10 view];
    if (v16)
    {
      v17 = v16;
      [v16 addGestureRecognizer_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24E2BC648(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GKExpandedGroupViewController();
  objc_msgSendSuper2(&v7, sel_viewWillDisappear_, a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong removeAllGestureRecognizers];

    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      [v5 removeAllGestureRecognizers];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24E2BC75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a6)
  {
    *(v6 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_selectedPlayerCount) = [swift_unknownObjectRetain() getSelectedPlayerCount];
    sub_24E2BB7B0();
    v9 = [a6 getMaxPlayerCount];
    *(v6 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_maxPlayerCount) = v9;
    sub_24E2BB7B0();
    swift_unknownObjectRelease();
  }

  *(v6 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_players) = a1;

  sub_24E2BB910();

  return swift_unknownObjectWeakAssign();
}

void sub_24E2BC8F0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_players) = a1;

  sub_24E2BB910();
}

void *sub_24E2BC938(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 preferredContentSizeCategory];

  sub_24E348458();

  v6 = sub_24E347CB8();

  v7 = sub_24E343488();
  v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  sub_24E2BD3AC(v9);
  v10 = v8;
  [v9 setSelected_];
  sub_24E2BD2E8(a2, [v9 isSelected]);

  return v9;
}

uint64_t sub_24E2BCDF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_players);
  if (v1 >> 62)
  {
    return sub_24E348878();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_24E2BCF6C()
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 preferredContentSizeCategory];

  sub_24E347CF8();
  OUTLINED_FUNCTION_2_120();
  OUTLINED_FUNCTION_3_119();
  v5 = v5 && v0 == v4;
  if (v5)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_151();
  OUTLINED_FUNCTION_8_80();

  if (v1)
  {
    goto LABEL_43;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_2_120();
  OUTLINED_FUNCTION_3_119();
  if (v5 && v0 == v16)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_151();
  OUTLINED_FUNCTION_8_80();

  if (v1)
  {
    goto LABEL_43;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_2_120();
  OUTLINED_FUNCTION_3_119();
  if (v5 && v0 == v18)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_151();
  OUTLINED_FUNCTION_8_80();

  if (v1)
  {
    goto LABEL_43;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_2_120();
  OUTLINED_FUNCTION_3_119();
  if (v5 && v0 == v20)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_151();
  OUTLINED_FUNCTION_8_80();

  if (v1)
  {
    goto LABEL_43;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_2_120();
  OUTLINED_FUNCTION_3_119();
  if (v5 && v0 == v22)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_151();
  OUTLINED_FUNCTION_8_80();

  if (v1)
  {
    goto LABEL_43;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_2_120();
  OUTLINED_FUNCTION_3_119();
  if (v5 && v0 == v24)
  {
LABEL_7:

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_151();
  OUTLINED_FUNCTION_8_80();

  if (v1)
  {
LABEL_43:

    goto LABEL_8;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_2_120();
  OUTLINED_FUNCTION_3_119();
  if (v5 && v0 == v26)
  {
  }

  else
  {
    v28 = OUTLINED_FUNCTION_0_151();

    if ((v28 & 1) == 0)
    {
      [objc_opt_self() defaultSize];
    }
  }

LABEL_8:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v29.origin.x = v9;
    v29.origin.y = v11;
    v29.size.width = v13;
    v29.size.height = v15;
    CGRectGetWidth(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_24E2BD2E8(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if ((a2 & 1) == 0)
  {
    if (Strong)
    {
      v5 = sub_24E343488();
      [v4 deselectItemAtIndexPath_animated_];
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (!Strong)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = sub_24E343488();
  [v4 selectItemAtIndexPath_animated_scrollPosition_];
LABEL_6:
}

void sub_24E2BD3AC(void *a1)
{
  v3 = v1;
  v5 = sub_24E3434C8();
  v6 = OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_players;
  v7 = sub_24DFD8654();
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    [a1 setLineVisible_];
    v2 = sub_24E3434C8();
    v5 = *(v1 + v6);
    sub_24DFFA844(v2, (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) == 0)
    {
      v8 = *(v5 + 8 * v2 + 32);
      goto LABEL_4;
    }
  }

  v24 = MEMORY[0x25303F560](v2, v5);

  v8 = v24;
LABEL_4:
  v23 = v8;
  v9 = [v8 internal];
  v10 = [v9 contact];

  if (v10)
  {
    v11 = [v10 _gkCompositeName];

    if (!v11)
    {
      sub_24E347CF8();
      v11 = sub_24E347CB8();
    }
  }

  else
  {
    v11 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong friendSortFilterScope];

    v15 = v14 == 1;
  }

  else
  {
    v15 = 0;
  }

  [a1 configureWithPlayer:v23 isCoreRecent:0 matchedContactName:v11 onlyShowContactName:v15];

  OUTLINED_FUNCTION_75();
  v16 = sub_24E347CB8();
  [a1 setAccessibilityPrefix_];

  [a1 setUsesClearBackground_];
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = sub_24E3434C8();
    v20 = *(v1 + v6);
    sub_24DFFA844(v19, (v20 & 0xC000000000000001) == 0, *(v3 + v6));
    if ((v20 & 0xC000000000000001) != 0)
    {

      v21 = MEMORY[0x25303F560](v19, v20);
    }

    else
    {
      v21 = *(v20 + 8 * v19 + 32);
    }

    v22 = [v18 playerIsSelectable_];

    [a1 setSelectable_];
    swift_unknownObjectRelease();
  }
}

id sub_24E2BD664()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = sub_24E3434C8();
  v5 = OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_players;
  if (v4 >= sub_24DFD8654())
  {
    v9 = 0;
  }

  else
  {
    v6 = sub_24E3434C8();
    v7 = *(v0 + v5);
    sub_24DFFA844(v6, (v7 & 0xC000000000000001) == 0, *(v1 + v5));
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = MEMORY[0x25303F560](v6, v7);
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    v9 = [v3 playerIsSelected_];
  }

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_24E2BD75C()
{
  v3 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = &selRef_iconURLString;
  v6 = &unk_24E369000;
  if (Strong)
  {
    v1 = Strong;
    v7 = sub_24E3434C8();
    v8 = OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_players;
    if (v7 >= sub_24DFD8654())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = sub_24E3434C8();
      v10 = *&v3[v8];
      OUTLINED_FUNCTION_7_71(v9);
      if (v2)
      {

        v11 = MEMORY[0x25303F560](v9, v10);
      }

      else
      {
        v11 = *(v10 + 8 * v9 + 32);
      }

      v12 = [v1 playerIsSelectable_];

      if (!v12)
      {
        swift_unknownObjectRelease();
        return 0;
      }

      v13 = sub_24E3434C8();
      v14 = *&v3[v8];
      sub_24DFFA844(v13, (v14 & 0xC000000000000001) == 0, v14);
      if ((v14 & 0xC000000000000001) != 0)
      {

        v15 = MEMORY[0x25303F560](v13, v14);
      }

      else
      {
        v15 = *(v14 + 8 * v13 + 32);
      }

      v16 = [v15 contact];
      v5 = &selRef_iconURLString;
      if (v16)
      {

        v17 = [objc_allocWithZone(type metadata accessor for GKSuggestedPlayerGroup()) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
        v18 = OUTLINED_FUNCTION_17_40();
        *(v18 + 16) = xmmword_24E369990;
        *(v18 + 32) = v15;
        v19 = OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_players;
        swift_beginAccess();
        *&v17[v19] = v18;
        v6 = &unk_24E369000;
        v15 = v15;

        v20 = OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_source;
        swift_beginAccess();
        *&v17[v20] = 1;
        [v1 donateGroupToPeopleSuggester_];

        v5 = &selRef_iconURLString;
      }

      swift_unknownObjectRelease();
    }
  }

  v21 = *&v3[OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_selectedPlayerCount];
  v22 = OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_maxPlayerCount;
  if (v21 >= *&v3[OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_maxPlayerCount])
  {
    v34 = [objc_allocWithZone(MEMORY[0x277D75110]) v5[56]];
    v35 = sub_24E347CB8();
    v36 = GKGameCenterUIFrameworkBundle();
    v37 = OUTLINED_FUNCTION_9_53();

    v38 = sub_24E347CF8();
    v40 = v39;

    sub_24DFC1DD4(v38, v40, v34, &selRef_setTitle_);
    OUTLINED_FUNCTION_75();
    v41 = sub_24E347CB8();
    v42 = GKGameCenterUIFrameworkBundle();
    v43 = OUTLINED_FUNCTION_9_53();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v44 = swift_allocObject();
    v45 = *&v3[v22];
    v46 = MEMORY[0x277D83B88];
    *(v44 + 16) = xmmword_24E367D20;
    v47 = MEMORY[0x277D83C10];
    *(v44 + 56) = v46;
    *(v44 + 64) = v47;
    *(v44 + 32) = v45;
    v48 = sub_24E347CC8();
    v50 = v49;

    sub_24DFC1DD4(v48, v50, v34, &selRef_setMessage_);
    sub_24DF88A8C(0, &qword_27F1E2900);
    v51 = sub_24E347CB8();
    v52 = GKGameCenterUIFrameworkBundle();
    v53 = OUTLINED_FUNCTION_4_9();

    sub_24E347CF8();
    v54 = OUTLINED_FUNCTION_6_7();
    v56 = sub_24E3190AC(v54, v55, 0, 0, 0);
    [v34 addAction_];

    [v3 presentViewController:v34 animated:1 completion:0];
    return 0;
  }

  *&v3[OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_selectedPlayerCount] = v21 + 1;
  sub_24E2BB7B0();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = sub_24E3434C8();
    v26 = OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_players;
    if (v25 >= sub_24DFD8654())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
      v27 = OUTLINED_FUNCTION_17_40();
      *(v27 + 16) = v6[153];
      v28 = sub_24E3434C8();
      v29 = *&v3[v26];
      OUTLINED_FUNCTION_7_71(v28);
      if (v26)
      {

        v30 = MEMORY[0x25303F560](v28, v29);
      }

      else
      {
        v30 = *(v29 + 8 * v28 + 32);
      }

      *(v27 + 32) = v30;
      sub_24DF88A8C(0, &qword_27F1DF028);
      v31 = sub_24E347EE8();

      v32 = sub_24E343488();
      v33 = sub_24E347CB8();
      [v24 didSelectPlayers:v31 indexPath:v32 dataSourceIdentifier:v33 completion:0];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_24E2BDD5C()
{
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_selectedPlayerCount);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v1;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_selectedPlayerCount) = v6;
  sub_24E2BB7B0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0 = Strong;
    v9 = sub_24E3434C8();
    v10 = OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_players;
    if (v9 >= sub_24DFD8654())
    {
      swift_unknownObjectRelease();
      return 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v2 = OUTLINED_FUNCTION_17_40();
    *(v2 + 16) = xmmword_24E369990;
    v3 = sub_24E3434C8();
    v1 = *(v7 + v10);
    OUTLINED_FUNCTION_7_71(v3);
    if (!v10)
    {
      v11 = *(v1 + 8 * v3 + 32);
LABEL_6:
      *(v2 + 32) = v11;
      sub_24DF88A8C(0, &qword_27F1DF028);
      v12 = sub_24E347EE8();

      v13 = sub_24E343488();
      v14 = sub_24E347CB8();
      [v0 didDeselectPlayers:v12 indexPath:v13 dataSourceIdentifier:v14 completion:0];
      swift_unknownObjectRelease();

      return 1;
    }

LABEL_10:

    v11 = MEMORY[0x25303F560](v3, v1);

    goto LABEL_6;
  }

  return 1;
}

id GKExpandedGroupViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_cornerRadius] = 0x402C000000000000;
  OUTLINED_FUNCTION_6_93();
  OUTLINED_FUNCTION_12_52(v6);
  OUTLINED_FUNCTION_6_93();
  *v8 = v7 | 4;
  v8[1] = v9;
  OUTLINED_FUNCTION_6_93();
  *v10 = v12;
  v10[1] = v11;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  *&v3[OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_selectedPlayerCount] = 0;
  *&v3[OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_maxPlayerCount] = 0;
  *&v3[OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_players] = MEMORY[0x277D84F90];
  if (a2)
  {
    v13 = sub_24E347CB8();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for GKExpandedGroupViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

uint64_t sub_24E2BE0B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  if (a3)
  {
    sub_24E347CF8();
  }

  v7 = a4;
  v8 = OUTLINED_FUNCTION_6_7();
  return a5(v8);
}

id GKExpandedGroupViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GKExpandedGroupViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_cornerRadius] = 0x402C000000000000;
  OUTLINED_FUNCTION_6_93();
  OUTLINED_FUNCTION_12_52(v3);
  OUTLINED_FUNCTION_6_93();
  *v5 = v4 | 4;
  v5[1] = v6;
  OUTLINED_FUNCTION_6_93();
  *v7 = v9;
  v7[1] = v8;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  *&v1[OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_selectedPlayerCount] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_maxPlayerCount] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_players] = MEMORY[0x277D84F90];
  v12.receiver = v1;
  v12.super_class = type metadata accessor for GKExpandedGroupViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_24E2BE2FC()
{

  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_doneButton);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_collectionView);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_contentViewWidthConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_visualEffectView);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_container);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_titleLabel);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_collectionViewHeightConstraint);
  sub_24DE73F0C(v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_playerSelectionProxy);
  sub_24DE73F0C(v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_delegate);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_multiplayerPickerDataSource);
}

id sub_24E2BE420(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_24E2BE570(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_24E348BE8();
    (*(v7 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

void sub_24E2BE6B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_24E347CB8();

  [a4 setTitle:v6 forState:a3];
}

uint64_t OUTLINED_FUNCTION_2_120()
{

  return sub_24E347CF8();
}

uint64_t OUTLINED_FUNCTION_7_71(uint64_t a1)
{

  return sub_24DFFA844(a1, (v1 & 0xC000000000000001) == 0, v1);
}

uint64_t OUTLINED_FUNCTION_8_80()
{
}

id OUTLINED_FUNCTION_9_64(void *a1)
{

  return [a1 (v1 + 2168)];
}

void OUTLINED_FUNCTION_15_43()
{
}

uint64_t OUTLINED_FUNCTION_17_40()
{

  return swift_allocObject();
}

void sub_24E2BEA94()
{
  sub_24DFA1058();
  if (v0 <= 0x3F)
  {
    sub_24E17A488();
    if (v1 <= 0x3F)
    {
      sub_24E04ACC8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E2BEBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EA028);
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_1_139(&qword_27F1EA030);
  v5 = sub_24E345538();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  v18[3] = sub_24E2BEDA8();
  v12 = *v2;
  v13 = v2[1];
  v14 = sub_24E2BF054();
  v15 = *(a1 + 24);
  sub_24E2BEEA8(v12, v13, MEMORY[0x277CE13A0], v4, v14, v15, v8);

  v18[1] = OUTLINED_FUNCTION_2_121(&qword_27F1EA040);
  v18[2] = v15;
  OUTLINED_FUNCTION_0_175();
  swift_getWitnessTable();
  sub_24E042E44(v8);
  v16 = *(v6 + 8);
  v16(v8, v5);
  sub_24E042E44(v11);
  return (v16)(v11, v5);
}

uint64_t sub_24E2BEDA8()
{
  v0 = sub_24E345658();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E028BC4(v3);
  v4 = sub_24E345638();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_24E2BF0F8();
  }

  else
  {
    return sub_24E2BF140();
  }
}

uint64_t sub_24E2BEEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24E3452F8();
  v17 = MEMORY[0x28223BE20](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_24E345308();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_24E345548();
}

unint64_t sub_24E2BF054()
{
  result = qword_27F1EA038;
  if (!qword_27F1EA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA038);
  }

  return result;
}

uint64_t sub_24E2BF0A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EA028);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E2BF188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  v9();
  sub_24E042E44(v8);
  v12 = *(v5 + 8);
  v12(v8, a4);
  sub_24E042E44(v11);
  return (v12)(v11, a4);
}

unint64_t sub_24E2BF2CC()
{
  result = qword_27F1EA048;
  if (!qword_27F1EA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA048);
  }

  return result;
}

unint64_t sub_24E2BF320()
{
  result = qword_27F1EA050;
  if (!qword_27F1EA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA050);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_139(unint64_t *a1)
{

  return sub_24E2BF0A8(a1);
}

uint64_t OUTLINED_FUNCTION_2_121(unint64_t *a1)
{

  return sub_24E2BF0A8(a1);
}

uint64_t AchievementBadge.status.setter(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  v3 = (v1 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_status);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v3 = v8;
  v3[2] = v2;
  sub_24E154E88(v4, v5, v6);
  return sub_24E2BF974();
}

char *sub_24E2BF448()
{
  OUTLINED_FUNCTION_29();
  if (qword_27F1DD710 != -1)
  {
    swift_once();
  }

  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_28();
  return sub_24E2C06F0(v3, v4, v2, v5, v6, v7);
}

id sub_24E2BF4EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = &v1[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_metrics];
  *v3 = *a1;
  *(v3 + 2) = v2;
  return [v1 setNeedsLayout];
}

id sub_24E2BF538()
{
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v1 = MEMORY[0x277D769A8];
  if (!ShouldUsePadUI)
  {
    v1 = MEMORY[0x277D76A08];
  }

  v2 = *v1;
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle_];
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v6 = [v5 fontDescriptorWithDesign_];

  if (v6)
  {
    v7 = [v3 fontWithDescriptor:v6 size:0.0];

    v2 = v6;
    v4 = v7;
  }

  return v4;
}

id sub_24E2BF668()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76988];
  v2 = [v0 preferredFontForTextStyle_];
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v4 = [v3 fontDescriptorWithDesign_];

  if (!v4)
  {
    return v2;
  }

  v5 = [v0 fontWithDescriptor:v4 size:0.0];

  return v5;
}

id sub_24E2BF770(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_24E2BF7D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setNumberStyle_];
  sub_24DF88A8C(0, &qword_27F1E50D0);
  v1 = sub_24E3485F8();
  [v0 setMultiplier_];

  [v0 setMaximumFractionDigits_];
  return v0;
}

uint64_t AchievementBadge.status.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_status);
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return sub_24E09B300(v4, v5, v6);
}

uint64_t sub_24E2BF8C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_status);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_24E09B300(v4, v5, v6);
}

uint64_t sub_24E2BF928(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  *&v4 = *a1;
  *(&v4 + 1) = v1;
  v5 = v2;
  sub_24E09B300(v4, v1, v2);
  return AchievementBadge.status.setter(&v4);
}

uint64_t sub_24E2BF974()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_status);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v6[0] = v2;
  v6[1] = v3;
  v6[2] = v4;
  sub_24E09B300(v2, v3, v4);
  sub_24E2BF9F8(v6);
  return sub_24E154E88(v2, v3, v4);
}

id sub_24E2BF9F8(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5 >> 62)
  {
    v6 = *(a1 + 8);
    if (v5 >> 62 == 1)
    {
      v7 = *&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressLabel];
      [v7 setHidden_];
      [v7 setText_];
      [*&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressBarLayer] setHidden_];
      v8 = *&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_iconImageView];
      [v8 setHidden_];
      [v8 setImage_];
      v9 = *&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilLabel];
      sub_24DFFA600(v4, v6, v9);
      [v9 setHidden_];
      [*&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilRing] setHidden_];
      [*&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_image] setContents_];
      sub_24E2C0340(v5 & 0x3FFFFFFFFFFFFFFFLL);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_4_102(OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressLabel);
    [v4 setText_];
    OUTLINED_FUNCTION_5_105(OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressBarLayer);
    v15 = *&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_iconImageView];
    sub_24DF88A8C(0, &qword_280BE0110);
    v16 = sub_24DFD29F8();
    v17 = OUTLINED_FUNCTION_16_20();
    [v17 v18];

    [v15 (v2 + 1656)];
    OUTLINED_FUNCTION_5_105(OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilLabel);
    [*&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilRing] (v2 + 1656)];
  }

  else
  {
    v10 = *a1;
    v11 = *&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressLabel];
    [v11 setHidden_];
    v12 = sub_24E2BFE70(*&v4);
    if (v12)
    {
      v13 = v12;
      [v11 setAttributedText_];
      v14 = *&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressBarLayer];
      [v14 setStrokeEnd_];
    }

    else
    {
      [v11 setAttributedText_];
      v14 = *&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressBarLayer];
      [v14 setStrokeEnd_];
    }

    [v14 setHidden_];
    v19 = *&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_iconImageView];
    [v19 setHidden_];
    [v19 setImage_];
    [*&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilLabel] setHidden_];
    [*&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilRing] setHidden_];
  }

  [*&v3[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_image] setContents_];
LABEL_10:
  [v3 setNeedsDisplay];

  return [v3 setNeedsLayout];
}

uint64_t (*AchievementBadge.status.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24E2BFE3C;
}

uint64_t sub_24E2BFE3C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24E2BF974();
  }

  return result;
}

id sub_24E2BFE70(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E26C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v50 - v5;
  v7 = sub_24E2BF770(&OBJC_IVAR____TtC12GameCenterUI16AchievementBadge____lazy_storage___numberFormatter, sub_24E2BF7D0);
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v9 = [v7 stringFromNumber_];

  if (v9)
  {
    v10 = sub_24E347CF8();
    v12 = v11;

    v13 = sub_24E2C20B0(*(v2 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge____lazy_storage___numberFormatter));
    v15 = v14;
    if (!v14)
    {

      return v15;
    }

    v60 = v10;
    v61 = v12;
    v58 = v13;
    v59 = v14;
    v16 = sub_24E343428();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
    sub_24DF90C4C();
    v17 = sub_24E348768();
    v57 = v18;
    v20 = v19;
    sub_24E2C2120(v6);

    if ((v20 & 1) == 0)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24E36A270;
      v22 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v54 = v22;
      v23 = sub_24E2BF770(&OBJC_IVAR____TtC12GameCenterUI16AchievementBadge____lazy_storage___progressNumberFont, sub_24E2BF538);
      v24 = sub_24DF88A8C(0, &qword_27F1DEE28);
      v53 = v24;
      *(inited + 40) = v23;
      v25 = *MEMORY[0x277D740C0];
      *(inited + 64) = v24;
      *(inited + 72) = v25;
      v52 = v2 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style;
      v55 = v17;
      v26 = *(v2 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style + 32);
      v51 = sub_24DF88A8C(0, &qword_27F1E5FD0);
      *(inited + 104) = v51;
      *(inited + 80) = v26;
      type metadata accessor for Key(0);
      v50[2] = v27;
      v50[1] = sub_24DFEA7B4();
      v50[0] = v25;
      v28 = v26;
      v29 = sub_24E347C28();
      v30 = objc_allocWithZone(MEMORY[0x277CCAB48]);

      v15 = sub_24E15B964(v10, v12, v29);
      [*(v2 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge____lazy_storage___progressNumberFont) capHeight];
      v32 = v31;
      v33 = sub_24E2BF770(&OBJC_IVAR____TtC12GameCenterUI16AchievementBadge____lazy_storage___progressPercentageFont, sub_24E2BF668);
      [v33 capHeight];
      v35 = v34;

      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_24E369B70;
      v37 = v53;
      *(v36 + 32) = v54;
      v38 = *(v2 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge____lazy_storage___progressPercentageFont);
      *(v36 + 40) = v38;
      v39 = v50[0];
      *(v36 + 64) = v37;
      *(v36 + 72) = v39;
      v40 = *(v52 + 32);
      *(v36 + 80) = v40;
      v41 = *MEMORY[0x277D74078];
      *(v36 + 104) = v51;
      *(v36 + 112) = v41;
      *(v36 + 144) = MEMORY[0x277D85048];
      *(v36 + 120) = round(v32 - v35);
      v42 = v38;
      v43 = v40;
      v44 = v41;
      sub_24E347C28();
      v60 = v55;
      v61 = v57;
      v58 = v10;
      v59 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9E08);
      sub_24E2B38E8();
      v45 = sub_24E348678();
      v47 = v46;
      v48 = sub_24E347BE8();

      [v15 addAttributes:v48 range:{v45, v47}];

      return v15;
    }
  }

  return 0;
}

void sub_24E2C0340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v31 - v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v33 = a1;
  sub_24DFAD584();
  v6 = sub_24E347C28();
  v7 = v6;
  v8 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_9:
      v15 = __clz(__rbit64(v11)) | (v14 << 6);
      v16 = *(*(v7 + 48) + v15);
      v11 &= v11 - 1;
      v17 = (*(v7 + 56) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      aBlock = v4;
      v35 = v5;
      v42 = qword_24E38B960[v16];
      v43 = 0xE300000000000000;
      v40 = v18;
      v41 = v19;
      sub_24DF90C4C();

      OUTLINED_FUNCTION_8_11();
      v4 = sub_24E348738();
      v21 = v20;

      v5 = v21;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  v22 = v32;
  sub_24E343268();

  v23 = sub_24E343288();
  v24 = 0;
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
  {
    v24 = sub_24E343228();
    (*(*(v23 - 8) + 8))(v22, v23);
  }

  v25 = objc_opt_self();
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  v26 = sub_24E348368();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  v29 = v33;
  *(v28 + 16) = v27;
  *(v28 + 24) = v29;
  v38 = sub_24E2C2188;
  v39 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_24E0D5E98;
  v37 = &block_descriptor_94;
  v30 = _Block_copy(&aBlock);

  [v25 _gkloadRemoteImageForURL_queue_withCompletionHandler_];
  _Block_release(v30);
}

char *sub_24E2C06F0(double *a1, unsigned __int8 *a2, double a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  v14 = *a1;
  v15 = *(a1 + 1);
  v16 = *(a1 + 2);
  *&v6[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge____lazy_storage___progressNumberFont] = 0;
  *&v6[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge____lazy_storage___progressPercentageFont] = 0;
  *&v6[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge____lazy_storage___numberFormatter] = 0;
  LODWORD(a1) = *a2;
  v17 = &v6[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_status];
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0x8000000000000000;
  v18 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_image;
  *&v6[v18] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v19 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_innerShadow;
  *&v6[v19] = [objc_allocWithZone(type metadata accessor for AchievementBadgeInnerShadowLayer()) init];
  v20 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilLabel;
  *&v6[v20] = [objc_allocWithZone(GKCurvedTextLabel) init];
  v21 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilRing;
  *&v6[v21] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v22 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_innerFoil;
  *&v6[v22] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v23 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressBarLayer;
  *&v6[v23] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v24 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_iconImageView;
  *&v6[v24] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v25 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressLabel;
  *&v6[v25] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_theme] = a1;
  v26 = &v6[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_metrics];
  *v26 = v14;
  *(v26 + 1) = v15;
  *(v26 + 2) = v16;
  if (a1)
  {
    if (qword_27F1DD688 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_27F20AA08;
  }

  else
  {
    if (qword_27F1DD680 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_27F20A9C8;
  }

  *&v78[9] = *(v27 + 41);
  v28 = v27[2];
  v77 = v27[1];
  *v78 = v28;
  v76 = *v27;
  v29 = v78[24];
  v30 = *&v78[16];
  v72 = v77;
  v73 = v28;
  v71 = v76;
  sub_24E2C2054(&v76, v75);
  v31 = &v6[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style];
  *v31 = v71;
  *(v31 + 1) = v72;
  *(v31 + 2) = v73;
  *(v31 + 6) = v30;
  v31[56] = v29;
  v74.receiver = v6;
  v74.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v74, sel_initWithFrame_, a3, a4, a5, a6);
  v33 = [v32 layer];
  [v33 setAllowsGroupBlending_];

  v34 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_image;
  v35 = *&v32[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_image];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_24E36A270;
  v37 = &v32[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style];
  v38 = *&v32[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style + 40];
  v39 = v35;
  v40 = [v38 CGColor];
  type metadata accessor for CGColor(0);
  v42 = v41;
  *(v36 + 56) = v41;
  *(v36 + 32) = v40;
  v43 = [v37[6] CGColor];
  *(v36 + 88) = v42;
  *(v36 + 64) = v43;
  sub_24E27B56C(v36, v39);

  v44 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_iconImageView;
  v45 = *&v32[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_iconImageView];
  objc_opt_self();
  v46 = v45;
  v47 = OUTLINED_FUNCTION_16_20();
  v49 = [v47 v48];
  [v46 setPreferredSymbolConfiguration_];

  v50 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressLabel;
  [*&v32[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressLabel] setTextColor_];
  [*&v32[v50] setTextAlignment_];
  [*&v32[v50] setAdjustsFontForContentSizeCategory_];
  [*&v32[v44] setTintColor_];
  v51 = OUTLINED_FUNCTION_12_53();
  [v51 addSublayer_];

  OUTLINED_FUNCTION_10_62();
  [v52 v53];
  v54 = OUTLINED_FUNCTION_12_53();
  OUTLINED_FUNCTION_10_62();
  [v55 v56];

  v57 = OUTLINED_FUNCTION_12_53();
  OUTLINED_FUNCTION_10_62();
  [v58 v59];

  v60 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilLabel;
  v61 = *&v32[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilLabel];
  v62 = objc_opt_self();
  v63 = *MEMORY[0x277D743F8];
  v64 = v61;
  v65 = [v62 systemFontOfSize:v14 weight:v63];
  v66 = OUTLINED_FUNCTION_16_20();
  [v66 v67];

  [v32 addSubview_];
  v68 = OUTLINED_FUNCTION_12_53();

  OUTLINED_FUNCTION_10_62();
  [v68 v69];

  [v32 addSubview_];
  [v32 addSubview_];

  return v32;
}

void sub_24E2C0CD8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (!a1 || (swift_beginAccess(), (v7 = swift_unknownObjectWeakLoadStrong()) == 0))
    {

      return;
    }

    v8 = v7;
    v9 = (v7 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_status);
    swift_beginAccess();
    v11 = *v9;
    v10 = v9[1];
    v12 = v9[2];
    v13 = a1;
    sub_24E09B300(v11, v10, v12);

    if (v12 >> 62 == 1)
    {

      v14 = *(a3 + 16) == *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *(a3 + 24) == *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (!v14 && (sub_24E348C08() & 1) == 0)
      {

        return;
      }

      v15 = *&v6[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_image];
      v16 = [v13 CGImage];
      [v15 setContents_];
    }

    else
    {
      sub_24E154E88(v11, v10, v12);
    }
  }
}

void sub_24E2C0E74()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge____lazy_storage___progressNumberFont) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge____lazy_storage___progressPercentageFont) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge____lazy_storage___numberFormatter) = 0;
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_status);
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0x8000000000000000;
  v2 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_image;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_innerShadow;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for AchievementBadgeInnerShadowLayer()) init];
  v4 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilLabel;
  *(v0 + v4) = [objc_allocWithZone(GKCurvedTextLabel) init];
  v5 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilRing;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v6 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_innerFoil;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v7 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressBarLayer;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v8 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_iconImageView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v9 = OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressLabel;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_24E348AE8();
  __break(1u);
}

Swift::Void __swiftcall AchievementBadge.layoutSubviews()()
{
  v70.receiver = v0;
  v70.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v70, sel_layoutSubviews);
  [v0 bounds];
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_metrics];
  v3 = (v2 - *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_metrics + 8]) * 0.5;
  v71.origin.x = OUTLINED_FUNCTION_6_38();
  rect = v71.size.width;
  v71.size.height = v71.size.width;
  v72 = CGRectOffset(v71, v4, v4);
  v5 = *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_image];
  [v5 setFrame_];
  v6 = *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_innerShadow];
  [v5 bounds];
  [v6 setFrame_];
  [v5 frame];
  [v5 setCornerRadius_];
  [v5 setMasksToBounds_];
  v74.origin.x = OUTLINED_FUNCTION_6_38();
  v74.size.height = v74.size.width;
  CGRectOffset(v74, v7, v7);
  v8 = *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_innerFoil];
  [v8 setFrame_];
  OUTLINED_FUNCTION_3_120();
  [v8 setCornerRadius_];
  v69 = v1;
  [v8 setBorderWidth_];
  v9 = v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_theme];
  v10 = *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilLabel];
  v11 = [v10 layer];
  v12 = v11;
  if (v9 == 1)
  {
    v13 = *MEMORY[0x277CDA5E8];
  }

  else
  {
    v13 = 0;
  }

  [v11 setCompositingFilter_];

  v14 = *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilRing];
  OUTLINED_FUNCTION_11_50(v15, sel_setCompositingFilter_);
  [v8 setCompositingFilter_];
  v67 = *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressLabel];
  v16 = [v67 layer];
  [v16 setCompositingFilter_];

  v66 = *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_iconImageView];
  v17 = [v66 layer];
  [v17 setCompositingFilter_];

  v18 = &v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_status];
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v19 = v18[2];
  if (v19 >> 62 == 1)
  {
    v64 = v18[1];
    v65 = *v18;

    [v10 setBaselineAdjustment_];
    [v10 setCircleRadius_];
    [v10 setClipsToBounds_];
    [v10 sizeToFit];
    v63 = &v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style];
    [v10 setTextColor_];
    [v0 frame];
    v21 = v20;
    [v10 frame];
    v23 = (v21 - v22) * 0.5;
    [v10 frame];
    v25 = v24;
    [v10 frame];
    [v10 setFrame_];
    [v0 bounds];
    [v0 bounds];
    v26 = OUTLINED_FUNCTION_6_38();
    [v14 v27];
    [v14 bounds];
    MidX = CGRectGetMidX(v76);
    [v14 bounds];
    MidY = CGRectGetMidY(v77);
    [v10 circleRadius];
    v31 = v30 + 2.0;
    if (qword_27F1DDC08 != -1)
    {
      OUTLINED_FUNCTION_1_140();
    }

    v32 = *&qword_27F1EA058;
    [v10 textTrailingAngle];
    v34 = v32 + v33 + 0.175;
    [v10 textLeadingAngle];
    v36 = [objc_opt_self() bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v31 clockwise:{v34, v32 + v35 + -0.175}];
    v37 = [v36 CGPath];

    [v14 setPath_];
    v38 = [objc_opt_self() clearColor];
    v39 = [v38 CGColor];

    [v14 setFillColor_];
    v40 = [v63[2] &selRef_addTextContainer_];
    [v14 setStrokeColor_];

    [v14 setLineWidth_];
    v41 = MEMORY[0x277CDA780];
    [v14 setLineCap_];
    v42 = [v63[2] &selRef_addTextContainer_];
    [v8 setBorderColor_];

    sub_24E154E88(v65, v64, v19);
    v43 = v69;
  }

  else
  {
    v44 = [*&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style] CGColor];
    [v8 setBorderColor_];

    v43 = v69;
    v41 = MEMORY[0x277CDA780];
  }

  [v66 sizeToFit];
  [v0 bounds];
  x = v78.origin.x;
  y = v78.origin.y;
  width = v78.size.width;
  height = v78.size.height;
  v49 = CGRectGetMidX(v78);
  v79.origin.x = x;
  v79.origin.y = y;
  v79.size.width = width;
  v79.size.height = height;
  [v66 setCenter_];
  v50 = *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressBarLayer];
  OUTLINED_FUNCTION_3_120();
  [v51 v52];
  [v50 setFillColor_];
  [v50 bounds];
  v53 = CGRectGetMidX(v80);
  [v50 bounds];
  v54 = CGRectGetMidY(v81);
  OUTLINED_FUNCTION_3_120();
  v55 = CGRectGetWidth(v82);
  v56 = v43[1];
  if (qword_27F1DDC08 != -1)
  {
    OUTLINED_FUNCTION_1_140();
  }

  v57 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v53 startAngle:v54 endAngle:v55 * 0.5 - v56 * 0.5 clockwise:{*&qword_27F1EA058, *&qword_27F1EA058 + -0.00001}];
  v58 = [v57 CGPath];

  [v50 setPath_];
  [v50 setStrokeStart_];
  v59 = [*&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style + 8] CGColor];
  v60 = OUTLINED_FUNCTION_16_20();
  [v60 v61];

  [v50 setLineWidth_];
  [v50 setLineCap_];
  v83.origin.x = OUTLINED_FUNCTION_6_38();
  v83.size.width = rect;
  v83.size.height = rect;
  v84 = CGRectOffset(v83, v62, v62);
  [v67 setFrame_];
}

Swift::Void __swiftcall AchievementBadge._dynamicUserInterfaceTraitDidChange()()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel__dynamicUserInterfaceTraitDidChange);
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_status];
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v2 = v1[2];
  if (v2 >> 62 == 1)
  {
    v5 = v1;
    v4 = *v1;
    v3 = v5[1];
    v6 = &v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style];
    v7 = *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style + 16];

    v8 = [v7 CGColor];
    OUTLINED_FUNCTION_11_50(v8, sel_setBorderColor_);

    [*&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_outerFoilLabel] setTextColor_];
    v9 = [*(v6 + 2) CGColor];
    OUTLINED_FUNCTION_11_50(v9, sel_setStrokeColor_);

    v10 = [*(v6 + 1) CGColor];
    OUTLINED_FUNCTION_11_50(v10, sel_setStrokeColor_);

    sub_24E154E88(v4, v3, v2);
  }

  else
  {
    v11 = *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_innerFoil];
    v12 = &v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style];
    v13 = [*&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style] CGColor];
    [v11 setBorderColor_];

    v14 = *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_progressBarLayer];
    v15 = [v12[1] CGColor];
    [v14 setStrokeColor_];
  }

  v16 = *&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_image];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24E36A270;
  v18 = &v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style];
  v19 = [*&v0[OBJC_IVAR____TtC12GameCenterUI16AchievementBadge_style + 40] CGColor];
  type metadata accessor for CGColor(0);
  v21 = v20;
  *(v17 + 56) = v20;
  *(v17 + 32) = v19;
  v22 = [v18[6] CGColor];
  *(v17 + 88) = v21;
  *(v17 + 64) = v22;
  sub_24E27B56C(v17, v16);
}

double sub_24E2C1D74()
{
  OUTLINED_FUNCTION_3_31();
  result = *v0;
  if (*(v0 + 16) >> 62)
  {
    return -1.0;
  }

  return result;
}

id AchievementBadge.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

id AchievementBadge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

JUMeasurements __swiftcall AchievementBadge.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  [v2 sizeThatFits_];
  v5 = 0.0;
  v6 = v4;
  result.var3 = v5;
  result.var2 = v6;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

uint64_t sub_24E2C20B0(void *a1)
{
  v2 = [a1 percentSymbol];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347CF8();

  return v3;
}

uint64_t sub_24E2C2120(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E26C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_1_140()
{

  return swift_once();
}

id OUTLINED_FUNCTION_4_102@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return [v3 setHidden_];
}

id OUTLINED_FUNCTION_5_105@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return [v4 (v2 + 1656)];
}

id OUTLINED_FUNCTION_11_50(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_12_53()
{

  return [v0 (v1 + 2168)];
}

id sub_24E2C2254(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  sub_24E344158();
  OUTLINED_FUNCTION_1_13();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_33();
  *&v1[OBJC_IVAR____TtC12GameCenterUI13RoundedButton_backing] = 0;
  sub_24E0B01B4(a1, &v1[OBJC_IVAR____TtC12GameCenterUI13RoundedButton_fontUseCase]);
  v11 = type metadata accessor for RoundedButton();
  v16.receiver = v1;
  v16.super_class = v11;
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v12 setTitleEdgeInsets_];
  sub_24E0B01B4(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
  {
    sub_24E2C2AB4(a1);
    sub_24E2C2AB4(v7);
  }

  else
  {
    (*(v9 + 32))(v3, v7, v2);
    sub_24E0885EC();
    v13 = [v12 traitCollection];
    v14 = MEMORY[0x25303F0C0](v3, v13);

    [v12 _setFont_];
    sub_24E2C2AB4(a1);
    (*(v9 + 8))(v3, v2);
  }

  return v12;
}

void sub_24E2C2474()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI13RoundedButton_backing) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E2C24F4(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for RoundedButton();
  objc_msgSendSuper2(&v6, sel_sizeThatFits_, a1, a2);
  [v2 titleEdgeInsets];
  return sub_24E348558();
}

void sub_24E2C25BC()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RoundedButton();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  [v0 bounds];
  v1 = CGRectGetHeight(v7) * 0.5;
  [v0 _setCornerRadius_];
  v2 = OBJC_IVAR____TtC12GameCenterUI13RoundedButton_backing;
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI13RoundedButton_backing];
  if (v3)
  {
    [v3 _setCornerRadius_];
    v4 = *&v0[v2];
    if (v4)
    {
      v5 = v4;
      [v0 bounds];
      [v5 setFrame_];
    }
  }
}

uint64_t sub_24E2C26D0(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_24E344158();
  OUTLINED_FUNCTION_1_13();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_33();
  v12 = type metadata accessor for RoundedButton();
  v16.receiver = v4;
  v16.super_class = v12;
  objc_msgSendSuper2(&v16, sel_traitCollectionDidChange_, a1);
  sub_24E0B01B4(v4 + OBJC_IVAR____TtC12GameCenterUI13RoundedButton_fontUseCase, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    return sub_24E2C2AB4(v8);
  }

  (*(v10 + 32))(v3, v8, v2);
  sub_24E0885EC();
  v14 = [v4 traitCollection];
  v15 = MEMORY[0x25303F0C0](v3, v14);

  [v4 _setFont_];
  return (*(v10 + 8))(v3, v2);
}

id sub_24E2C2940()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for RoundedButton()
{
  result = qword_27F1EA0E8;
  if (!qword_27F1EA0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E2C2A18()
{
  sub_24E0B02F4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24E2C2AB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24E2C2B40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277D752B8]);
  v8 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_5_30();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a3;
  v9[4] = a4;
  v13[4] = sub_24E2C8794;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24E2331E0;
  v13[3] = &block_descriptor_95;
  v10 = _Block_copy(v13);

  v11 = [v7 initWithSectionProvider:v10 configuration:a2];

  _Block_release(v10);
  return v11;
}

uint64_t sub_24E2C2C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *, void), uint64_t a5)
{
  v25[1] = a5;
  v26 = a4;
  v25[0] = a2;
  v27 = sub_24E347358();
  v6 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA190);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - v14;
  v28 = sub_24E343518();
  v16 = *(v28 - 8);
  v17 = MEMORY[0x28223BE20](v28);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25303A010](0, a1, v17);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    goto LABEL_5;
  }

  sub_24E3445A8();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
LABEL_5:
    sub_24DF8C95C(v11, &qword_27F1E7E80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E367D20;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_24E348998();

    v29 = 0xD000000000000021;
    v30 = 0x800000024E3B15F0;
    sub_24E2C87B8(&unk_27F1EA1A0, MEMORY[0x277CC9AF8]);
    v21 = v28;
    v22 = sub_24E348BA8();
    MEMORY[0x25303E950](v22);

    v31 = MEMORY[0x277D837D0];
    sub_24E346FE8();
    sub_24DF8C95C(&v29, &qword_27F1E0370);
    v23 = v27;
    (*(v6 + 104))(v8, *MEMORY[0x277D21DE8], v27);
    sub_24E0EF428();

    (*(v6 + 8))(v8, v23);
    v20 = 0;
    goto LABEL_6;
  }

  (*(v13 + 32))(v15, v11, v12);
  v20 = v26(v15, v19, v25[0]);
  (*(v13 + 8))(v15, v12);
  v21 = v28;
LABEL_6:
  (*(v16 + 8))(v19, v21);
  return v20;
}

void sub_24E2C3174()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_bootstrapPresenter) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListCollectionView;
  v2 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v3 = objc_allocWithZone(type metadata accessor for GamesListCollectionView());
  v4 = OUTLINED_FUNCTION_11_51(v3);

  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v7 = OUTLINED_FUNCTION_11_51(objc_allocWithZone(MEMORY[0x277D752A0]));

  *(v0 + v5) = v7;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionContent) = 0;
  v8 = OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListComponents;
  if (qword_27F1DD908 != -1)
  {
    swift_once();
  }

  *(v0 + v8) = qword_27F20B010;
  v9 = OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListBackgroundView;
  v10 = objc_allocWithZone(MEMORY[0x277D75D18]);

  *(v0 + v9) = [v10 initWithFrame_];
  v11 = OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_loadingView;
  type metadata accessor for LoadingView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_emptyStateView;
  type metadata accessor for EmptyStateView();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 setHidden_];
  *(v0 + v12) = v13;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_showLoadingViewTimer) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E2C3388()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_bootstrapPresenter];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  sub_24E19116C();

  v4 = OUTLINED_FUNCTION_20_31();
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListBackgroundView];
  [v4 addSubview_];

  v7 = OUTLINED_FUNCTION_20_31();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListCollectionView];
  [v7 addSubview_];

  v10 = OUTLINED_FUNCTION_20_31();
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = *&v1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionView];
  [v10 addSubview_];

  v13 = OUTLINED_FUNCTION_20_31();
  if (v13)
  {
    v14 = v13;
    [v13 addSubview_];

    v15 = objc_opt_self();
    v16 = [v15 blackColor];
    v17 = [v16 colorWithAlphaComponent_];

    [v6 setBackgroundColor_];
    [v9 setAllowsMultipleSelection_];
    [v9 setAllowsSelection_];
    v18 = [v15 clearColor];
    [v9 setBackgroundColor_];

    v19 = [v15 clearColor];
    [v12 setBackgroundColor_];

    [v9 setShowsVerticalScrollIndicator_];
    [v12 setShowsVerticalScrollIndicator_];
    [v12 setDelegate_];
    sub_24E16F758(0);
    v20 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
    v21 = [v1 navigationItem];
    [v21 setStandardAppearance_];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_24E2C36A0()
{
  OUTLINED_FUNCTION_32();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0070);
  OUTLINED_FUNCTION_0_14();
  v10 = v2;
  v11 = v1;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_3();
  v9 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40);
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_6();
  sub_24E3448A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0);
  sub_24DFB4C28(&unk_27F1E1C50, &unk_27F1E6CC0);
  sub_24E347198();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v12);
  (*(v6 + 8))(v0, v8);
  sub_24E3448A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0078);
  sub_24DFB4C28(&unk_27F1EA170, &qword_27F1E0078);
  sub_24E347198();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v12);
  (*(v10 + 8))(v9, v11);
  sub_24E2C3DE0();
  sub_24E2C40C0();
  sub_24E1352EC();
  OUTLINED_FUNCTION_18();
}

void (*sub_24E2C39AC(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2C8858;
}

void sub_24E2C3A10(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v1;
  sub_24E2C3A50(&v2);
}

void sub_24E2C3A50(void *a1)
{
  if (*a1 == 1)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_24E2C8860;
    v8[5] = v3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_24E216C88;
    v8[3] = &block_descriptor_55_1;
    v4 = _Block_copy(v8);

    v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:1.0];
    _Block_release(v4);
    v6 = *&v1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_showLoadingViewTimer];
    *&v1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_showLoadingViewTimer] = v5;
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_showLoadingViewTimer];
    if (v7)
    {
      [v7 invalidate];
    }

    [*&v1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_loadingView] removeFromSuperview];

    [v1 setNeedsFocusUpdate];
  }
}

id (*sub_24E2C3BD4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2C8834;
}

id sub_24E2C3C38(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0058);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for EmptyStateData();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DF9DEAC(a1, v5, &qword_27F1E0058);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_24DF8C95C(v5, &qword_27F1E0058);
    [*&v1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_emptyStateView] setHidden_];
    return [v1 setNeedsFocusUpdate];
  }

  else
  {
    sub_24DFE227C(v5, v8);
    v10 = *&v1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_emptyStateView];
    v11 = sub_24DFBCE64();
    sub_24E2D93A0(v8, v11);

    [v10 setHidden_];
    return sub_24DFE22E0(v8);
  }
}

uint64_t sub_24E2C3DE0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-v4 - 8];
  v6 = *(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListCollectionView);
  sub_24E1E086C();
  [v6 setDelegate_];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E97E0));
  v8 = v6;
  v9 = sub_24E344CB8();
  v10 = OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource;
  v11 = *(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource) = v9;
  v12 = v9;

  sub_24DFBCE64();
  sub_24E0B0548();

  [v8 setDataSource_];
  v13 = sub_24E2C502C();
  [v8 setCollectionViewLayout_];

  sub_24E3448A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C70);
  sub_24DFB4C28(&unk_27F1E97F0, &unk_27F1E1C70);
  sub_24E347198();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v16);
  return (*(v3 + 8))(v5, v2);
}

void sub_24E2C40C0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionView);
  static GameLayerComponents.registerCells(in:)(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA890);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = sub_24DFBCE64();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  v6 = v2;
  v7 = sub_24E3445C8();
  v8 = OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionContent;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionContent) = v7;

  type metadata accessor for SectionHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = *MEMORY[0x277D767D8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA180);
  sub_24E347D48();
  v11 = sub_24E347CB8();

  [v6 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v10 withReuseIdentifier:v11];

  if (*(v1 + v8))
  {
    sub_24E347CF8();

    sub_24E344588();

    sub_24E2C5774();
    v13 = v12;
    [v6 setCollectionViewLayout_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24E2C42D4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_viewDidAppear_, a1 & 1, v9);
  MEMORY[0x25303A010](0, 0);
  v12 = *&v2[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListCollectionView];
  v13 = sub_24E343488();
  v14 = [v12 cellForItemAtIndexPath_];

  if (v14)
  {
    swift_getObjectType();
    v15 = dynamic_cast_existential_1_conditional(v14);
    if (v15)
    {
      v16 = v15;
      v17 = sub_24E343488();
      [v12 selectItemAtIndexPath:v17 animated:0 scrollPosition:2];

      [v16 setSelected_];
    }
  }

  return (*(v7 + 8))(v11, v5);
}

id sub_24E2C44C4()
{
  v67.receiver = v0;
  v67.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v67, sel_viewDidLayoutSubviews);
  result = OUTLINED_FUNCTION_15_44();
  if (!result)
  {
    goto LABEL_14;
  }

  v2 = result;
  [result frame];
  OUTLINED_FUNCTION_8_2();

  v68.origin.x = OUTLINED_FUNCTION_7_2();
  Height = CGRectGetHeight(v68);
  result = OUTLINED_FUNCTION_15_44();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  [result frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v69.origin.x = v6;
  v69.origin.y = v8;
  v69.size.width = v10;
  v69.size.height = v12;
  v13 = CGRectGetMinX(v69) + 12.0;
  v70.origin.x = OUTLINED_FUNCTION_18_42();
  MaxX = CGRectGetMaxX(v70);
  result = OUTLINED_FUNCTION_15_44();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  v65 = MaxX;
  [result frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v71.origin.x = v17;
  v71.origin.y = v19;
  v71.size.width = v21;
  v71.size.height = v23;
  Width = CGRectGetWidth(v71);
  v72.origin.x = OUTLINED_FUNCTION_18_42();
  v25 = CGRectGetWidth(v72);
  result = OUTLINED_FUNCTION_15_44();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = result;
  [result frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v73.origin.x = v28;
  v73.origin.y = v30;
  v73.size.width = v32;
  v73.size.height = v34;
  MinX = CGRectGetMinX(v73);
  result = OUTLINED_FUNCTION_15_44();
  if (!result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = result;
  v36 = Width - v25 + -24.0;
  [result frame];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v74.origin.x = v38;
  v74.origin.y = v40;
  v74.size.width = v42;
  v74.size.height = v44;
  v45 = CGRectGetHeight(v74);
  v46 = objc_opt_self();
  v47 = swift_allocObject();
  *(v47 + 16) = v0;
  *(v47 + 24) = v13;
  *(v47 + 32) = xmmword_24E38B9C0;
  *(v47 + 48) = Height;
  *(v47 + 56) = v65 + 12.0;
  *(v47 + 64) = 0;
  *(v47 + 72) = v36;
  *(v47 + 80) = Height;
  *(v47 + 88) = MinX;
  *(v47 + 96) = xmmword_24E38B9D0;
  *(v47 + 112) = v45;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_24E2C88C8;
  *(v48 + 24) = v47;
  aBlock[4] = sub_24DFA92FC;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E2C314C;
  aBlock[3] = &block_descriptor_64;
  v49 = _Block_copy(aBlock);
  v50 = v0;

  [v46 performWithoutAnimation_];
  _Block_release(v49);
  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v51 = 0.0;
  }

  else
  {
    v51 = 20.0;
  }

  v52 = *&v50[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionView];
  [v52 setContentInsetAdjustmentBehavior_];
  OUTLINED_FUNCTION_16_44();
  [v53 v54];
  [v52 setContentInsetAdjustmentBehavior_];
  OUTLINED_FUNCTION_16_44();
  [v52 v55];
  result = OUTLINED_FUNCTION_15_44();
  if (!result)
  {
    goto LABEL_19;
  }

  v56 = result;
  [result bounds];
  OUTLINED_FUNCTION_8_2();

  v57 = OUTLINED_FUNCTION_7_2();
  [v58 v59];
  result = OUTLINED_FUNCTION_15_44();
  if (result)
  {
    v60 = result;
    [result bounds];
    OUTLINED_FUNCTION_8_2();

    v61 = OUTLINED_FUNCTION_7_2();
    [v62 v63];
  }

LABEL_20:
  __break(1u);
  return result;
}

id sub_24E2C494C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListCollectionView];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  [result frame];

  sub_24E348508();
  [v2 setFrame_];
  v5 = *&a1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionView];
  result = [a1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  [result frame];

  sub_24E348508();
  [v5 setFrame_];
  v7 = *&a1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListBackgroundView];
  result = [a1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  [result frame];

  sub_24E348508();

  return [v7 setFrame_];
}

char *sub_24E2C4B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  MEMORY[0x28223BE20](v37);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  v19 = result;
  v35 = v8;
  v36 = v10;
  v20 = *&result[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource];
  if (v20)
  {
    v21 = v20;
    v22 = v40;
    v23 = sub_24E3434D8();
    sub_24DFB8854(v23, v13);

    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      v33 = v15;
      (*(v15 + 32))(v17, v13, v14);

      sub_24E3448C8();

      v25 = v37;
      v26 = *(v37 + 48);
      sub_24E3448A8();
      v27 = sub_24E3434D8();
      sub_24DFBCE40(v7, &v7[v26], v27);

      v28 = *&v19[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListComponents];
      v34 = v7;
      sub_24DF9DEAC(v7, v4, &unk_27F1E1CA0);
      v29 = *(v25 + 48);
      v30 = sub_24DFBCE64();
      v31 = v22;
      v32 = v36;
      v24 = (*(*v28 + 104))(v41, v31, v17, v4, &v4[v29], v36, v30, v38);

      sub_24DF8C95C(&v4[v29], &unk_27F1E1CB0);
      sub_24DF8C95C(v4, &unk_27F1E1CB0);
      if (GKIsXRUIIdiomShouldUsePadUI())
      {
        [v24 setLayoutMargins_];
      }

      sub_24DF8C95C(v34, &unk_27F1E1CA0);
      (*(v39 + 8))(v32, v35);
      (*(v33 + 8))(v17, v14);
      return v24;
    }

    sub_24DF8C95C(v13, &unk_27F1E1CB0);
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  __break(1u);
  return result;
}

id sub_24E2C502C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(MEMORY[0x277D752B8]);
  v3 = v0;
  v4 = sub_24E237540(sub_24E2C882C, v1, v3);
  type metadata accessor for SectionBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_24DFEA80C();
  v6 = sub_24E347CB8();

  [v4 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  return v4;
}

void (*sub_24E2C5124(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2C8808;
}

void sub_24E2C5188()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource);
  if (v1)
  {
    v2 = v1;
    sub_24E344CE8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24E2C5200(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v40 = a3;
  v41 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = sub_24E3472B8();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_24E2C558C();
  }

  else
  {
    v16 = 0;
  }

  (*(v8 + 16))(v10, a1, v7);
  sub_24DFB4C28(&qword_27F1EA1C0, &unk_27F1E1C00);
  sub_24E347298();
  sub_24E347288();
  v17 = sub_24E347CB8();

  v18 = sub_24E343488();
  v19 = [a4 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:v18];

  swift_getObjectType();
  v20 = dynamic_cast_existential_1_unconditional(v19);
  v22 = v21;
  [a4 frame];
  v24 = v23;
  [a4 frame];
  if (v25 < v24)
  {
    v24 = v25;
  }

  ObjectType = swift_getObjectType();
  (*(v22 + 24))(v24 < 375.0, ObjectType, v22);
  [a4 frame];
  v28 = v27;
  v30 = v29;
  v31 = [a4 traitCollection];
  v32 = [objc_allocWithZone(type metadata accessor for PageGrid()) initWithSize:v31 traitCollection:{v28, v30}];

  if (v16)
  {
    v33 = v16;
  }

  else
  {
    v33 = v32;
  }

  v34 = *(v22 + 48);
  v35 = v16;
  v34(a1, v33, v40, v41, ObjectType, v22);

  (*(v38 + 8))(v13, v39);
  return v20;
}

char *sub_24E2C558C()
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    [*&v0[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionView] frame];
    v1 = [v0 traitCollection];
    v2 = objc_allocWithZone(type metadata accessor for PageGrid());
    return PageGrid.init(size:traitCollection:idealColumnSizeCategory:)(v1);
  }

  else
  {
    type metadata accessor for PageGrid();
    [*&v0[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionView] frame];
    v4 = [v0 traitCollection];
    return PageGrid.__allocating_init(size:traitCollection:)();
  }
}

uint64_t sub_24E2C5670(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x277D767D8];
  type metadata accessor for SectionHeaderView();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA180);
  sub_24E347D48();
  v6 = sub_24E347CB8();

  v7 = sub_24E343488();
  v8 = [a3 dequeueReusableSupplementaryViewOfKind:v5 withReuseIdentifier:v6 forIndexPath:v7];

  v9 = swift_dynamicCastClassUnconditional();
  SectionHeaderView.apply(contentsOf:)();
  return v9;
}

void sub_24E2C5774()
{
  v10 = 1;
  v1 = [v0 traitCollection];
  v2 = [v1 verticalSizeClass];

  v3 = [v0 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_24DF90108(&v10, v2);
  v6 = *&v0[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionContent];
  if (v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v5;

    v9 = v5;

    sub_24E2C2B40(v6, v9, sub_24E2C878C, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24E2C58B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource);
    if (v19)
    {
      v20 = v19;
      sub_24DFB8854(a1, v12);

      if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
      {
        (*(v14 + 32))(v16, v12, v13);
        sub_24E3448A8();
        sub_24DFBCE40(v9, v6, a1);

        v21 = sub_24DFBCE64();
        v22 = sub_24E1E108C(v16, v9, v6, v21, a2, *MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));

        sub_24DF8C95C(v6, &unk_27F1E1CB0);
        sub_24DF8C95C(v9, &unk_27F1E1CB0);
        (*(v14 + 8))(v16, v13);

        return v22;
      }
    }

    else
    {
      __break(1u);
    }

    sub_24DF8C95C(v12, &unk_27F1E1CB0);
  }

  result = sub_24E348AE8();
  __break(1u);
  return result;
}

uint64_t sub_24E2C5BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v38 = a2;
  v39 = a3;
  v7 = sub_24E3472B8();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionView);
    v37 = sub_24DFBCE64();
    v13 = v12;
    v36 = [a5 scrollDirection];
    v14 = sub_24E2C558C();
    swift_getKeyPath();
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA190);
    sub_24E347128();

    v16 = v45;
    v17 = __swift_project_boxed_opaque_existential_1(&v43, v45);
    v42[3] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
    sub_24E3472A8();
    __swift_destroy_boxed_opaque_existential_1(&v43);
    if (qword_27F1DD5D8 != -1)
    {
      swift_once();
    }

    v35 = v11;
    v19 = sub_24E130ECC(v9, off_27F1DEF68);
    v34 = v9;
    if (v19)
    {
      v22 = v37;
      v21 = v38;
      v23 = v39;
      v24 = v36;
      v25 = (*(v20 + 40))(a1, v38, v37, v39, v36, v14);
      swift_getKeyPath();
      v26 = a1;
      v27 = v14;
      sub_24E347128();

      v28 = v45;
      v29 = v46;
      __swift_project_boxed_opaque_existential_1(&v43, v45);
      v30 = (*(v29 + 8))(v25, v26, v21, v15, v22, v15, v23, v24, v27, v28, v29);

      (*(v40 + 8))(v34, v41);
      __swift_destroy_boxed_opaque_existential_1(&v43);

      return v30;
    }

    v43 = 0;
    v44 = 0xE000000000000000;
    sub_24E348998();

    v43 = 0xD00000000000001CLL;
    v44 = 0x800000024E3AC870;
    sub_24E2C87B8(&qword_27F1EA1B0, MEMORY[0x277D21D58]);
    v32 = sub_24E348BA8();
    MEMORY[0x25303E950](v32);
  }

  result = sub_24E348AE8();
  __break(1u);
  return result;
}

void sub_24E2C6038()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v65 = v4;
  v62 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  OUTLINED_FUNCTION_0_14();
  v63 = v7;
  v64 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_3();
  v61 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v60 = v12 - v13;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v14);
  v66 = &v56 - v15;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_0_14();
  v68 = v20;
  v69 = v19;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_3();
  v67 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v23);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13_6();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v27 = v26;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v56 - v29;
  v31 = OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource;
  v32 = *(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource);
  if (v32)
  {
    v33 = v0;
    v34 = v32;
    sub_24E344CD8();

    v35 = OUTLINED_FUNCTION_13_56();
    OUTLINED_FUNCTION_17_4(v35, v36, v25);
    if (v37)
    {
      v38 = &unk_27F1E6C70;
      v39 = v1;
      goto LABEL_9;
    }

    (*(v27 + 32))(v30, v1, v25);
    v40 = *(v33 + v31);
    if (v40)
    {
      v41 = v40;
      v42 = v3;
      v43 = sub_24E3434D8();
      sub_24DFB8854(v43, v18);

      v44 = v69;
      OUTLINED_FUNCTION_17_4(v18, 1, v69);
      if (!v37)
      {
        v46 = v67;
        v45 = v68;
        (*(v68 + 32))(v67, v18, v44);
        v47 = v65;
        swift_getObjectType();
        v48 = dynamic_cast_existential_1_conditional(v47);
        if (v48)
        {
          v57 = *(v33 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListComponents);
          v58 = v48;
          v59 = v49;
          v65 = v47;
          sub_24E3448A8();
          v50 = sub_24E3434D8();
          v51 = v60;
          sub_24DFBCE40(v66, v60, v50);

          v52 = v61;
          sub_24E3448C8();
          v53 = sub_24DFBCE64();
          v55 = v66;
          v54 = v67;
          (*(*v57 + 152))(v58, v59, v42, v30, v67, v66, v51, v52, v62, v53);

          (*(v63 + 8))(v52, v64);
          sub_24DF8C95C(v51, &unk_27F1E1CB0);
          sub_24DF8C95C(v55, &unk_27F1E1CB0);
          (*(v68 + 8))(v54, v69);
        }

        else
        {
          (*(v45 + 8))(v46, v44);
        }

        (*(v27 + 8))(v30, v25);
        goto LABEL_14;
      }

      (*(v27 + 8))(v30, v25);
      v38 = &unk_27F1E1CB0;
      v39 = v18;
LABEL_9:
      sub_24DF8C95C(v39, v38);
LABEL_14:
      OUTLINED_FUNCTION_18();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24E2C655C(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  OUTLINED_FUNCTION_4_5(v7);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v11);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_6();
  v13 = OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource;
  v14 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource);
  if (!v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  sub_24E344CD8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  v16 = OUTLINED_FUNCTION_13_56();
  LODWORD(v15) = __swift_getEnumTagSinglePayload(v16, v17, v18);
  sub_24DF8C95C(v3, &unk_27F1E6C70);
  if (v15 == 1)
  {
    return;
  }

  v19 = *(v4 + v13);
  if (!v19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = sub_24E3434D8();
  sub_24DFB8854(v21, v10);

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v22);
  sub_24DF8C95C(v10, &unk_27F1E1CB0);
  if (EnumTagSinglePayload != 1)
  {
    swift_getObjectType();
    v24 = dynamic_cast_existential_1_conditional(a2);
    if (v24)
    {
      v26 = v24;
      v27 = v25;
      v28 = sub_24DFBCE64();
      v29 = a2;
      sub_24E1E1904(v26, v27, a1, v28);
    }
  }
}

uint64_t sub_24E2C678C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, char *))
{
  v10 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  a6(v16, v17, v15);

  return (*(v12 + 8))(v15, v10);
}

void sub_24E2C68A0()
{
  OUTLINED_FUNCTION_32();
  v32 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  OUTLINED_FUNCTION_0_14();
  v31 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_6();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v14 = v13;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_14();
  v16 = sub_24E343488();
  v17 = [v4 cellForItemAtIndexPath_];

  if (!v17)
  {
    goto LABEL_8;
  }

  v30 = v5;
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v17))
  {

LABEL_8:
    OUTLINED_FUNCTION_18();
    return;
  }

  v19 = *(v32 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    sub_24E344CD8();

    v22 = OUTLINED_FUNCTION_13_56();
    OUTLINED_FUNCTION_17_4(v22, v23, v12);
    if (v24)
    {

      sub_24DF8C95C(v2, &unk_27F1E6C70);
    }

    else
    {
      v25 = OUTLINED_FUNCTION_7_72();
      v26(v25);
      ObjectType = swift_getObjectType();
      sub_24E3448C8();
      v28 = sub_24DFBCE64();
      (*(v20 + 120))(v1, v9, v28, ObjectType, v20);

      (*(v31 + 8))(v9, v30);
      (*(v14 + 8))(v1, v12);
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_24E2C6C80()
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0);
  OUTLINED_FUNCTION_0_14();
  v34 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_6();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v14 = v13;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_14();
  v16 = sub_24E343488();
  v35 = [v4 cellForItemAtIndexPath_];

  if (!v35)
  {
    goto LABEL_10;
  }

  swift_getObjectType();
  v17 = dynamic_cast_existential_1_conditional(v35);
  if (v17)
  {
    v33 = v5;
    v19 = *(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource);
    if (v19)
    {
      v20 = v17;
      v21 = v18;
      v22 = v19;
      sub_24E344CD8();

      v23 = OUTLINED_FUNCTION_13_56();
      OUTLINED_FUNCTION_17_4(v23, v24, v12);
      if (v25)
      {

        sub_24DF8C95C(v2, &unk_27F1E6C70);
      }

      else
      {
        v28 = OUTLINED_FUNCTION_7_72();
        v29(v28);
        ObjectType = swift_getObjectType();
        [v20 setSelected_];
        sub_24E3448B8();
        v31 = sub_24DFBCE64();
        (*(v21 + 128))(v1, v9, v31, ObjectType, v21);

        (*(v34 + 8))(v9, v33);
        (*(v14 + 8))(v1, v12);
      }

LABEL_10:
      OUTLINED_FUNCTION_18();
      return;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_18();
  }
}

void sub_24E2C7084()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v4 = v3;
  v59 = v5;
  v60 = v6;
  v57 = v7;
  v58 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v62 = v14;
  v63 = v13;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_3();
  v61 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  v18 = OUTLINED_FUNCTION_4_5(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_1();
  v56 = v19 - v20;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v21);
  v55 = &v54 - v22;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_0_14();
  v28 = v27;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_14();
  v30 = OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource;
  v31 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource);
  if (v31)
  {
    v32 = v31;
    v33 = v4;
    v34 = sub_24E3434D8();
    sub_24DFB8854(v34, v25);

    v35 = OUTLINED_FUNCTION_13_56();
    OUTLINED_FUNCTION_17_4(v35, v36, v26);
    if (v37)
    {
      v38 = &unk_27F1E1CB0;
      v39 = v25;
      goto LABEL_9;
    }

    v40 = OUTLINED_FUNCTION_7_72();
    v41(v40);
    v42 = *(v2 + v30);
    if (v42)
    {
      v43 = v42;
      v44 = v33;
      sub_24E344CD8();

      v45 = v63;
      OUTLINED_FUNCTION_17_4(v12, 1, v63);
      if (!v37)
      {
        (*(v62 + 32))(v61, v12, v45);
        v46 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListComponents);
        sub_24E3448A8();
        v47 = sub_24E3434D8();
        v49 = v55;
        v48 = v56;
        sub_24DFBCE40(v55, v56, v47);

        v50 = objc_allocWithZone(type metadata accessor for CollectionViewLayoutEnvironment());
        v51 = sub_24E12AAC0(v57);
        v52 = v44;
        v53 = v61;
        (*(*v46 + 160))(v58, v59, v60, v52, v61, v1, v49, v48, v51);

        sub_24DF8C95C(v48, &unk_27F1E1CB0);
        sub_24DF8C95C(v49, &unk_27F1E1CB0);
        (*(v62 + 8))(v53, v45);
        (*(v28 + 8))(v1, v26);
LABEL_10:
        OUTLINED_FUNCTION_18();
        return;
      }

      (*(v28 + 8))(v1, v26);
      v38 = &unk_27F1E6C70;
      v39 = v12;
LABEL_9:
      sub_24DF8C95C(v39, v38);
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24E2C75C8()
{
  OUTLINED_FUNCTION_32();
  v56 = v0;
  v57 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0);
  OUTLINED_FUNCTION_0_14();
  v54 = v5;
  v55 = v4;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_3();
  v53 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v52 = v13;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  OUTLINED_FUNCTION_4_5(v17);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v21 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_1();
  v27 = v25 - v26;
  *&v29 = MEMORY[0x28223BE20](v28).n128_u64[0];
  v31 = &v48 - v30;
  v32 = [v3 nextFocusedIndexPath];
  if (!v32)
  {
    goto LABEL_14;
  }

  v33 = v32;
  sub_24E343498();

  (*(v23 + 32))(v31, v27, v21);
  v34 = [v3 previouslyFocusedIndexPath];
  if (v34)
  {
    v35 = v34;
    sub_24E343498();

    __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
    sub_24DF8C95C(v20, &unk_27F1E6C80);
    v36 = v57;
    [v57 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    sub_24DF8C95C(v20, &unk_27F1E6C80);
    v36 = v57;
  }

  v37 = sub_24E343488();
  v38 = [v36 cellForItemAtIndexPath_];

  if (!v38)
  {
LABEL_13:
    v47 = sub_24E343488();
    [v36 selectItemAtIndexPath:v47 animated:0 scrollPosition:0];

    (*(v23 + 8))(v31, v21);
LABEL_14:
    OUTLINED_FUNCTION_18();
    return;
  }

  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v38))
  {

LABEL_12:
    v36 = v57;
    goto LABEL_13;
  }

  v51 = v39;
  v40 = *(v56 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListDiffableDataSource);
  if (v40)
  {
    v41 = v40;
    sub_24E344CD8();

    v42 = v12;
    OUTLINED_FUNCTION_17_4(v11, 1, v12);
    if (v43)
    {

      sub_24DF8C95C(v11, &unk_27F1E6C70);
    }

    else
    {
      v44 = v52;
      (*(v52 + 32))(v16, v11, v42);
      ObjectType = swift_getObjectType();
      v50 = v42;
      v45 = v53;
      sub_24E3448B8();
      v46 = sub_24DFBCE64();
      (*(v51 + 128))(v16, v45, v46, ObjectType);

      (*(v54 + 8))(v45, v55);
      (*(v44 + 8))(v16, v50);
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_24E2C7B68()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_loadingView];
  v3 = [v2 superview];
  v4 = [v0 view];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_24E0C7D5C();
      v6 = sub_24E348628();

      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
      OUTLINED_FUNCTION_5_30();
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_24E369990;
      *(v7 + 32) = v2;
      v8 = v2;
      return v7;
    }

    v5 = v3;
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  OUTLINED_FUNCTION_5_30();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24E369990;
  v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListCollectionView];
  *(v7 + 32) = v9;
  v10 = *&v1[OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionView];
  v11 = v9;
  if ([v10 numberOfSections] >= 1 && objc_msgSend(v10, sel_numberOfItemsInSection_, 0) >= 1)
  {
    v12 = v10;
    MEMORY[0x25303EA30]();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24E347F48();
    }

    sub_24E347F88();
  }

  return v7;
}

void sub_24E2C7D38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_loadingView;
    v3 = *(Strong + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_loadingView);
    v4 = v1;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 backgroundColor];

      [v3 setBackgroundColor_];
      v8 = [v4 view];

      if (v8)
      {
        [v8 addSubview_];

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

void sub_24E2C7E50()
{
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_gamesListCollectionView) contentOffset];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_achievementsCollectionView) contentOffset];
  sub_24E010F0C();
}

void sub_24E2C7F7C()
{

  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI30AchievementsListViewController_showLoadingViewTimer);
}

uint64_t sub_24E2C81C4()
{
  result = sub_24E2C8374();
  if (result)
  {
    v1 = sub_24DFD8654();

    return v1 != 0;
  }

  return result;
}

id sub_24E2C821C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFF70);
  v5 = sub_24E347EE8();

  return v5;
}

uint64_t sub_24E2C8294()
{
  v1 = sub_24E2C8374();
  if (v1)
  {
    v2 = v1;
    if (v1 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFF70);
      v5 = sub_24E348AF8();

      return v5;
    }

    sub_24E348C18();
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for GamesListCollectionView();
    v3 = objc_msgSendSuper2(&v6, sel_preferredFocusEnvironments);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFF70);
    v2 = sub_24E347F08();
  }

  return v2;
}

uint64_t sub_24E2C8374()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_24E343518();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E2C8868(v1);
  if (!v9)
  {
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    goto LABEL_8;
  }

  sub_24E002E5C(v9, v4);

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
LABEL_8:
    sub_24DF8C95C(v4, &unk_27F1E6C80);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = sub_24E343488();
  v11 = [v1 cellForItemAtIndexPath_];

  if (v11)
  {
    v12 = v11;
    if (([v12 isFocused] & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_24E369990;
      *(v13 + 32) = v12;

      (*(v6 + 8))(v8, v5);
      return v13;
    }
  }

  (*(v6 + 8))(v8, v5);
  return 0;
}

id sub_24E2C85B8(void *a1, double a2, double a3, double a4, double a5)
{
  v13.receiver = v5;
  v13.super_class = type metadata accessor for GamesListCollectionView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);

  return v11;
}

id sub_24E2C8694(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GamesListCollectionView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24E2C8728()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamesListCollectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E2C87B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E2C8868(void *a1)
{
  v1 = [a1 indexPathsForSelectedItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_24E343518();
  v3 = sub_24E347F08();

  return v3;
}

id OUTLINED_FUNCTION_11_51(void *a1)
{

  return [a1 (v2 + 1400)];
}

id OUTLINED_FUNCTION_15_44()
{

  return [v0 (v1 + 2808)];
}

id OUTLINED_FUNCTION_20_31()
{

  return [v0 (v1 + 2808)];
}

double sub_24E2C89B8()
{
  qword_27F1EA208 = MEMORY[0x277D839F8];
  unk_27F1EA210 = MEMORY[0x277D22A30];
  qword_27F1EA230 = MEMORY[0x277D839F8];
  unk_27F1EA238 = MEMORY[0x277D22A30];
  qword_27F1EA218 = 0;
  qword_27F1EA258 = MEMORY[0x277D839F8];
  unk_27F1EA260 = MEMORY[0x277D22A30];
  qword_27F1EA240 = 0x4018000000000000;
  qword_27F1EA280 = MEMORY[0x277D839F8];
  unk_27F1EA288 = MEMORY[0x277D22A30];
  qword_27F1EA268 = 0x4020000000000000;
  result = 8.0;
  xmmword_27F1EA1D8 = xmmword_24E38BAA0;
  unk_27F1EA1E8 = xmmword_24E38BAB0;
  return result;
}

__n128 sub_24E2C8A0C()
{
  xmmword_27F1EA290 = xmmword_24E38BAC0;
  unk_27F1EA2A0 = xmmword_24E38BAD0;
  result = *MEMORY[0x277D768C8];
  v1 = *(MEMORY[0x277D768C8] + 16);
  unk_27F1EA328 = *MEMORY[0x277D768C8];
  qword_27F1EA2C8 = MEMORY[0x277D839F8];
  unk_27F1EA2D0 = MEMORY[0x277D22A30];
  qword_27F1EA2B0 = 0;
  qword_27F1EA2F0 = MEMORY[0x277D839F8];
  unk_27F1EA2F8 = MEMORY[0x277D22A30];
  qword_27F1EA2D8 = 0x4018000000000000;
  qword_27F1EA318 = MEMORY[0x277D839F8];
  unk_27F1EA320 = MEMORY[0x277D22A30];
  qword_27F1EA300 = 0x4020000000000000;
  unk_27F1EA338 = v1;
  return result;
}

char *sub_24E2C8A70(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v59 - v11;
  v13 = OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_profileAvatarView;
  type metadata accessor for ProfileAvatarView();
  *&v5[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_friendsLabel;
  if (qword_27F1DE098 != -1)
  {
    OUTLINED_FUNCTION_0_176();
    swift_once();
  }

  v15 = sub_24E344158();
  v16 = __swift_project_value_buffer(v15, &unk_27F20BDC8);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  OUTLINED_FUNCTION_4_103();
  v18 = type metadata accessor for DynamicTypeLabel();
  v19 = objc_allocWithZone(v18);
  *&v5[v14] = OUTLINED_FUNCTION_0_29();
  v20 = OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_titleLabel;
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_20_2();
    swift_once();
  }

  v21 = type metadata accessor for PlayerCardTheme();
  v22 = __swift_project_value_buffer(v21, qword_27F20BF00);
  v17(v12, v22 + v21[20], v15);
  OUTLINED_FUNCTION_4_103();
  v23 = objc_allocWithZone(v18);
  v24 = OUTLINED_FUNCTION_3_121();
  *&v5[v20] = sub_24E0AEF24(v24, v25, v26, v27, 0, 0);
  v28 = OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_subtitleLabel;
  v17(v12, v22 + v21[21], v15);
  OUTLINED_FUNCTION_4_103();
  v29 = objc_allocWithZone(v18);
  v30 = OUTLINED_FUNCTION_3_121();
  *&v5[v28] = sub_24E0AEF24(v30, v31, v32, v33, 1, 0);
  v5[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_useHorizontalLayout] = 0;
  v34 = type metadata accessor for PlayerProfileHeaderView();
  v60.receiver = v5;
  v60.super_class = v34;
  v35 = objc_msgSendSuper2(&v60, sel_initWithFrame_, a1, a2, a3, a4);
  v36 = OUTLINED_FUNCTION_1_16();
  [v37 v38];
  [v35 setClipsToBounds_];
  sub_24E2CA014();
  v39 = OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_subtitleLabel;
  v40 = [*&v35[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_subtitleLabel] layer];
  v41 = (v22 + v21[14]);
  v42 = v41[1];
  v59[1] = *v41;
  if (v42)
  {
    v43 = sub_24E347CB8();
  }

  else
  {
    v43 = 0;
  }

  [v40 setCompositingFilter_];

  swift_unknownObjectRelease();
  v44 = *&v35[v39];
  v45 = objc_opt_self();
  v46 = v44;
  v47 = [v45 secondaryLabelColor];
  [v46 setTextColor_];

  sub_24DFD8050(0xD000000000000034, 0x800000024E3B17B0, *&v35[v39]);
  v48 = OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_titleLabel;
  [*&v35[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_titleLabel] setAllowsDefaultTighteningForTruncation_];
  [*&v35[v48] setLineBreakMode_];
  [*&v35[v48] setAdjustsFontSizeToFitWidth_];
  [*&v35[v48] setMinimumScaleFactor_];
  sub_24DFD8050(0xD000000000000031, 0x800000024E3B17F0, *&v35[v48]);
  v49 = OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_friendsLabel;
  v50 = *&v35[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_friendsLabel];
  static PlayerProfileUtil.friendStatusAttributedString()();
  v52 = v51;
  [v50 setAttributedText_];

  v53 = *&v35[v49];
  v54 = [v45 secondaryLabelColor];
  [v53 setTextColor_];

  v55 = [*&v35[v49] layer];
  if (v42)
  {
    v56 = sub_24E347CB8();
  }

  else
  {
    v56 = 0;
  }

  [v55 setCompositingFilter_];

  swift_unknownObjectRelease();
  sub_24DFD8050(0xD000000000000038, 0x800000024E3B1830, *&v35[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_profileAvatarView]);
  OUTLINED_FUNCTION_12_54();
  OUTLINED_FUNCTION_12_54();
  OUTLINED_FUNCTION_12_54();
  OUTLINED_FUNCTION_12_54();
  v57 = [v35 layer];

  [v57 setAllowsGroupBlending_];
  return v35;
}

void sub_24E2C9008()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_profileAvatarView;
  type metadata accessor for ProfileAvatarView();
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_friendsLabel;
  if (qword_27F1DE098 != -1)
  {
    OUTLINED_FUNCTION_0_176();
    swift_once();
  }

  v7 = sub_24E344158();
  v8 = __swift_project_value_buffer(v7, &unk_27F20BDC8);
  v9 = *(*(v7 - 8) + 16);
  v9(v4, v8, v7);
  OUTLINED_FUNCTION_1_22();
  v10 = type metadata accessor for DynamicTypeLabel();
  v11 = objc_allocWithZone(v10);
  *(v1 + v6) = OUTLINED_FUNCTION_0_29();
  v12 = OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_titleLabel;
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_20_2();
    swift_once();
  }

  v13 = type metadata accessor for PlayerCardTheme();
  v14 = __swift_project_value_buffer(v13, qword_27F20BF00);
  v9(v4, v14 + *(v13 + 80), v7);
  OUTLINED_FUNCTION_1_22();
  v15 = objc_allocWithZone(v10);
  v16 = OUTLINED_FUNCTION_3_121();
  *(v1 + v12) = sub_24E0AEF24(v16, v17, v18, v19, 0, 0);
  v20 = OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_subtitleLabel;
  v9(v4, v14 + *(v13 + 84), v7);
  OUTLINED_FUNCTION_1_22();
  v21 = objc_allocWithZone(v10);
  v22 = OUTLINED_FUNCTION_3_121();
  *(v1 + v20) = sub_24E0AEF24(v22, v23, v24, v25, 1, 0);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_useHorizontalLayout) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E2C92E4()
{
  swift_getObjectType();
  [v0 layoutMargins];
  sub_24E348538();
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_profileAvatarView];
  v19[3] = type metadata accessor for ProfileAvatarView();
  v19[4] = MEMORY[0x277D22A58];
  v19[0] = v1;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_friendsLabel];
  v3 = v1;
  v4 = [v2 isHidden];
  v5 = MEMORY[0x277D22A68];
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v18[1] = 0;
    v18[2] = 0;
  }

  else
  {
    v7 = type metadata accessor for DynamicTypeLabel();
    v6 = v2;
    v8 = MEMORY[0x277D22A68];
  }

  v18[0] = v6;
  v18[3] = v7;
  v18[4] = v8;
  v9 = *&v0[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_titleLabel];
  v16 = type metadata accessor for DynamicTypeLabel();
  v17 = v5;
  v14[4] = v5;
  v15[0] = v9;
  v10 = *&v0[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_subtitleLabel];
  v14[3] = v16;
  v11 = v9;
  v12 = v10;
  v13 = [v0 traitCollection];
  sub_24E2C9530(v19, v18, v15, v14, v0[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_useHorizontalLayout], v20);

  sub_24DF8C95C(v14, &qword_27F1DF0C0);
  __swift_destroy_boxed_opaque_existential_1(v15);
  sub_24DF8C95C(v18, &qword_27F1DF0C0);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  OUTLINED_FUNCTION_1_16();
  sub_24E3440D8();
  [v0 layoutMargins];
  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_1_16();
}

uint64_t sub_24E2C9530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W5>, uint64_t *a6@<X8>)
{
  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];

  sub_24DF89628(a3, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFD50);
  sub_24DF88A8C(0, &qword_27F1E0AA0);
  if (swift_dynamicCast())
  {
    if (a5)
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }

    [v17 setTextAlignment_];
  }

  sub_24DF98AC8(a4, v18);
  if (v19)
  {
    if (swift_dynamicCast())
    {
      if (a5)
      {
        v14 = 4;
      }

      else
      {
        v14 = 1;
      }

      [v17 setTextAlignment_];
    }

    if (a5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_24DF8C95C(v18, &qword_27F1DF0C0);
    if (a5)
    {
LABEL_13:
      if (qword_27F1DDC10 != -1)
      {
        swift_once();
      }

      a6[3] = &type metadata for HorizontalPlayerProfileHeaderLayout;
      a6[4] = sub_24E2CAE84();
      a6[5] = sub_24E2CAED8();
      v15 = swift_allocObject();
      *a6 = v15;
      sub_24E2CAF2C(&xmmword_27F1EA1D8, v15 + 16);
      goto LABEL_20;
    }
  }

  if (qword_27F1DDC18 != -1)
  {
    swift_once();
  }

  a6[3] = &type metadata for PlayerProfileHeaderLayout;
  a6[4] = sub_24E2CAD80();
  a6[5] = sub_24E2CADD4();
  v15 = swift_allocObject();
  *a6 = v15;
  sub_24E2CAE28(&xmmword_27F1EA290, v15 + 16);
LABEL_20:
  sub_24DF89628(a1, v15 + 200);
  sub_24DF98AC8(a2, v15 + 240);
  sub_24DF89628(a3, v15 + 280);
  return sub_24DF98AC8(a4, v15 + 320);
}

uint64_t sub_24E2C985C()
{
  swift_getObjectType();
  v1 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for PlayerProfileHeaderView();
  objc_msgSendSuper2(&v31, sel_layoutSubviews);
  [v0 bounds];
  v8 = *&v0[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_profileAvatarView];
  v29[3] = type metadata accessor for ProfileAvatarView();
  v29[4] = MEMORY[0x277D22A58];
  v29[0] = v8;
  v9 = *&v0[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_friendsLabel];
  v10 = v8;
  v11 = [v9 isHidden];
  v12 = MEMORY[0x277D22A68];
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v28[1] = 0;
    v28[2] = 0;
  }

  else
  {
    v14 = type metadata accessor for DynamicTypeLabel();
    v13 = v9;
    v15 = MEMORY[0x277D22A68];
  }

  v28[0] = v13;
  v28[3] = v14;
  v28[4] = v15;
  v16 = *&v0[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_titleLabel];
  v26 = type metadata accessor for DynamicTypeLabel();
  v27 = v12;
  v25[0] = v16;
  v17 = *&v0[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_subtitleLabel];
  v24 = v12;
  v23 = v26;
  v18 = v16;
  v19 = v17;
  v20 = [v0 traitCollection];
  sub_24E2C9530(v29, v28, v25, v22, v0[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_useHorizontalLayout], v30);

  sub_24DF8C95C(v22, &qword_27F1DF0C0);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_24DF8C95C(v28, &qword_27F1DF0C0);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  [v0 bounds];
  sub_24E344978();
  (*(v3 + 8))(v7, v1);
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

void sub_24E2C9B48(void *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PlayerProfileHeaderView();
  objc_msgSendSuper2(&v4, sel_traitCollectionDidChange_, a1);
  sub_24E2CA014();
  if (a1)
  {
    [a1 userInterfaceStyle];
  }

  v3 = [v1 traitCollection];
  [v3 userInterfaceStyle];
}

id sub_24E2C9C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E26C0);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = v35 - v7;
  v8 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = v13 - v12;
  if (!a2)
  {
    return 0;
  }

  sub_24DF88A8C(0, &qword_27F1E2410);

  v36 = sub_24E079130(a1, a2);
  if (a3)
  {
    v15 = *(a3 + 16);
    if (v15)
    {
      v37 = (v10 + 8);
      v38 = (v10 + 16);
      v16 = (a3 + 48);
      v35[0] = *MEMORY[0x277D740A8];
      v41 = a2;
      v42 = a1;
      v39 = v8;
      do
      {
        v17 = *(v16 - 2);
        v18 = *(v16 - 1);
        v43 = *v16;
        if (v43)
        {
          v19 = qword_27F1DDF68;

          v20 = &unk_27F20BA38;
          if (v19 != -1)
          {
            swift_once();
            v20 = &unk_27F20BA38;
          }
        }

        else
        {
          v21 = qword_27F1DDF60;

          v20 = &unk_27F20BA20;
          if (v21 != -1)
          {
            swift_once();
            v20 = &unk_27F20BA20;
          }
        }

        v22 = __swift_project_value_buffer(v8, v20);
        (*v38)(v14, v22, v8);
        v46 = a1;
        v47 = a2;
        v44 = v17;
        v45 = v18;
        v23 = sub_24E343428();
        v24 = v40;
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v23);
        sub_24DF90C4C();
        v25 = sub_24E348768();
        v27 = v26;
        v29 = v28;
        sub_24DF8C95C(v24, &qword_27F1E26C0);
        sub_24E2CAF88();
        if ((v29 & 1) == 0)
        {
          sub_24DF88A8C(0, &qword_27F1DEE28);
          v30 = [v35[1] traitCollection];
          v31 = MEMORY[0x25303F0C0](v14, v30);

          v46 = v25;
          v47 = v27;
          v44 = v42;
          v45 = v41;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9E08);
          sub_24E2B38E8();
          v32 = sub_24E348678();
          [v36 addAttribute:v35[0] value:v31 range:{v32, v33}];
        }

        v8 = v39;
        (*v37)(v14, v39);
        v16 += 24;
        --v15;
        a2 = v41;
        a1 = v42;
      }

      while (v15);
    }
  }

  return v36;
}

void sub_24E2CA014()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_24E3483C8();

  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_titleLabel];
    v5 = [v1 traitCollection];
    v6 = sub_24E3483C8();

    if (v6)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    [v4 setNumberOfLines_];
  }
}

uint64_t sub_24E2CA0D0()
{
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_titleLabel) setText_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_subtitleLabel) setAttributedText_];
  sub_24E1DD390(0, 0);
  sub_24E014188(0);
  return sub_24E0144DC(0, 0);
}

void sub_24E2CA150(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for PlayerCardTheme();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_20_2();
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_27F20BF00);
  sub_24E052A30(v7, v6);
  v27 = sub_24E344788();
  swift_allocObject();
  v28 = sub_24E344768();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5E78);
  sub_24E347128();

  sub_24DF88A8C(0, &qword_27F1DEE28);
  v8 = *(v3 + 80);
  swift_getObjectType();
  v9 = [a2 traitCollection];
  MEMORY[0x25303F0C0](v6 + v8, v9);

  v10 = [a2 &selRef_tableCellSubtitle];
  sub_24E3483C8();

  sub_24E344398();
  v11 = sub_24E344868();
  swift_allocObject();
  v29 = sub_24E344858();
  swift_getKeyPath();
  sub_24E347128();

  v12 = *(v3 + 84);
  v13 = [a2 traitCollection];
  MEMORY[0x25303F0C0](v6 + v12, v13);

  v14 = [a2 &selRef_tableCellSubtitle];
  sub_24E3483C8();

  sub_24E344398();
  sub_24E3443A8();
  swift_allocObject();
  v15 = sub_24E344858();
  static PlayerProfileUtil.friendStatusAttributedString()();
  v17 = v16;
  v18 = [v16 string];

  sub_24E347CF8();
  if (qword_27F1DE098 != -1)
  {
    OUTLINED_FUNCTION_0_176();
    swift_once();
  }

  v19 = sub_24E344158();
  v20 = __swift_project_value_buffer(v19, &unk_27F20BDC8);
  v21 = [a2 &selRef_tableCellSubtitle];
  MEMORY[0x25303F0C0](v20, v21);

  sub_24E344398();
  sub_24E3443A8();
  swift_allocObject();
  v22 = sub_24E344858();
  v34[3] = v27;
  v34[4] = MEMORY[0x277D228B0];
  v34[0] = v28;
  swift_getKeyPath();

  sub_24E347128();

  if (LOBYTE(v35[0]) == 1)
  {

    v23 = MEMORY[0x277D228F0];
    v24 = v11;
    v25 = v22;
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v25 = 0;
    v33[1] = 0;
    v33[2] = 0;
  }

  v33[3] = v24;
  v33[4] = v23;
  v33[0] = v25;
  v32[3] = v11;
  v32[4] = MEMORY[0x277D228F0];
  v32[0] = v29;
  v31[4] = MEMORY[0x277D228F0];
  v31[3] = v11;
  v31[0] = v15;

  v26 = [a2 &selRef_tableCellSubtitle];
  swift_getKeyPath();
  sub_24E347128();

  sub_24E2C9530(v34, v33, v32, v31, v30, v35);

  sub_24DF8C95C(v31, &qword_27F1DF0C0);
  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_24DF8C95C(v33, &qword_27F1DF0C0);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_24DFC1764();
  sub_24E3440E8();

  swift_unknownObjectRelease();
  sub_24E052A94(v6);
  __swift_destroy_boxed_opaque_existential_1(v35);
  OUTLINED_FUNCTION_1_16();
}

id sub_24E2CA7E4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_titleLabel];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5E78);
  OUTLINED_FUNCTION_9_65();

  sub_24DFA0B40(v12, v13, v2);
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_subtitleLabel];
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_73();
  sub_24E347128();

  swift_getKeyPath();
  sub_24E347128();

  v4 = sub_24E2C9C40(v12, v13, v14);

  [v3 setAttributedText_];

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_65();

  if (v12)
  {
    v5 = v12;
    sub_24E1DD390(v12, 0);
  }

  v6 = *&v1[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_profileAvatarView];
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_73();
  sub_24E347128();

  sub_24E014188(v12);
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_73();
  sub_24E347128();

  if (v12)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v12;
    *(v7 + 24) = v13;
    v8 = sub_24DFA0D28;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_24E0144DC(v8, v7);
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_65();

  v9 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_isArcadeSubscriber;
  swift_beginAccess();
  *(v6 + v9) = v14;
  sub_24E1DDE84();
  v10 = *&v1[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_friendsLabel];
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_65();

  [v10 setHidden_];
  swift_getKeyPath();
  sub_24E347128();

  v1[OBJC_IVAR____TtC12GameCenterUI23PlayerProfileHeaderView_useHorizontalLayout] = v14;
  return [v1 setNeedsLayout];
}

uint64_t sub_24E2CAAE0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24DFA0D30;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24DF88BEC(v3);
}

id sub_24E2CABE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerProfileHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E2CAD34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E2CAD80()
{
  result = qword_27F1EA370;
  if (!qword_27F1EA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA370);
  }

  return result;
}

unint64_t sub_24E2CADD4()
{
  result = qword_27F1EA378;
  if (!qword_27F1EA378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA378);
  }

  return result;
}

unint64_t sub_24E2CAE84()
{
  result = qword_27F1EA380;
  if (!qword_27F1EA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA380);
  }

  return result;
}

unint64_t sub_24E2CAED8()
{
  result = qword_27F1EA388;
  if (!qword_27F1EA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA388);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_103()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_9_65()
{

  return sub_24E347128();
}

id OUTLINED_FUNCTION_12_54()
{

  return [v1 (v0 + 2040)];
}

id sub_24E2CB01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = *&v3[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_leaderboardListSubview];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  sub_24E347128();

  [v11 setHidden_];
  if (([v11 isHidden] & 1) == 0)
  {
    OUTLINED_FUNCTION_14_45();
    sub_24E21E630();
    OUTLINED_FUNCTION_5_106();
    sub_24E347148();
    v12 = v44;
    v13 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardData_leaderboardLinks;
    OUTLINED_FUNCTION_5_16();
    v14 = *(v12 + v13);

    if (v14[2])
    {
      v39 = a3;
      v15 = v14[4];
      v16 = v14[5];

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v15;
      a3 = v39;
      v18[4] = v16;

      sub_24E21EDA8(sub_24E2CCB98, v18);
    }

    else
    {
    }
  }

  v19 = *&v4[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_leaderboardAvatarsSubview];
  swift_getKeyPath();
  sub_24E347128();

  [v19 setHidden_];
  if (([v19 isHidden] & 1) == 0)
  {
    OUTLINED_FUNCTION_14_45();
    sub_24E1A76E8();
    OUTLINED_FUNCTION_5_106();
    sub_24E347148();
    v20 = v42;
    v21 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardData_leaderboardLinks;
    OUTLINED_FUNCTION_5_16();
    v22 = *(v20 + v21);

    if (v22[2])
    {
      v39 = a3;
      v24 = v22[4];
      v23 = v22[5];

      v25 = swift_allocObject();
      v38 = v7;
      v26 = v25;
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = v24;
      a3 = v39;
      v27[4] = v23;

      sub_24E1A7BB0(sub_24E2CCBFC, v27);
      v7 = v38;
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_5_106();
  sub_24E347148();
  v43 = v42;
  type metadata accessor for ActivityFeedBaseData();
  OUTLINED_FUNCTION_1_141();
  sub_24E2CCB50(v28, v29);
  sub_24E347158();
  sub_24E092F2C(v10, v41, a3);
  (*(v7 + 8))(v10, v40);
  OUTLINED_FUNCTION_5_106();
  sub_24E347148();
  v30 = v43;
  v31 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardData_leaderboardLinks;
  OUTLINED_FUNCTION_5_16();
  v32 = *(v30 + v31);

  if (v32[2])
  {
    v34 = v32[4];
    v33 = v32[5];
  }

  else
  {
    v34 = 0;
    v33 = 0;
  }

  v35 = &v4[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_gameControllerSelectButtonDestination];
  *v35 = v34;
  *(v35 + 1) = v33;

  v36 = *&v4[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_contentBackgroundView];
  swift_getKeyPath();
  sub_24E347128();

  *(v36 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_isHighlighted) = v43;
  sub_24DFEC5B4();
  OUTLINED_FUNCTION_5_106();
  sub_24E347148();
  *(v43 + 97) = 0;

  return [v4 setNeedsLayout];
}

uint64_t sub_24E2CB520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  if (([*(v6 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_leaderboardListSubview) isHidden] & 1) == 0)
  {
    OUTLINED_FUNCTION_13_57();
    sub_24E21E95C(v13, v14, v15, v16, v17, v18);
  }

  [*(v6 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_leaderboardAvatarsSubview) isHidden];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  sub_24E347148();
  v30 = v31;
  type metadata accessor for ActivityFeedBaseData();
  OUTLINED_FUNCTION_1_141();
  sub_24E2CCB50(v19, v20);
  sub_24E347158();
  OUTLINED_FUNCTION_13_57();
  sub_24E093274(v21, v22, v23, v24, v25, v26);
  return (*(v9 + 8))(v12, v7);
}

void sub_24E2CB6D0(uint64_t a1, void *a2, double a3)
{
  v86 = a2;
  v80 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v79 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v78 = v8 - v7;
  v9 = sub_24E344988();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v14);
  v16 = (v76 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = (v76 - v18);
  v76[0] = sub_24E344998();
  OUTLINED_FUNCTION_0_14();
  v77 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v23);
  v83 = v76 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  OUTLINED_FUNCTION_0_14();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  v30 = v76 - v29;
  if (qword_27F1DDC20 != -1)
  {
    swift_once();
  }

  v31 = a3 - (*&qword_27F20B468 + *&qword_27F20B478);
  type metadata accessor for ActivityFeedSharedView();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  sub_24E347148();
  v95 = v87[0];
  type metadata accessor for ActivityFeedBaseData();
  OUTLINED_FUNCTION_1_141();
  sub_24E2CCB50(v32, v33);
  sub_24E347158();
  v34 = sub_24E092E74(v31, v30, v86);
  v36 = v35;
  (*(v27 + 8))(v30, v25);
  v81 = sub_24E3442D8();
  v88 = v81;
  v89 = MEMORY[0x277D226E0];
  __swift_allocate_boxed_opaque_existential_1(v87);
  OUTLINED_FUNCTION_10_5();
  sub_24E3442B8();
  v37 = MEMORY[0x277D85048];
  v38 = MEMORY[0x277D225F8];
  *(v19 + 3) = MEMORY[0x277D85048];
  *(v19 + 4) = v38;
  *v19 = v34;
  v39 = *(v11 + 104);
  OUTLINED_FUNCTION_6_94();
  v39();
  v16[3] = v37;
  v16[4] = v38;
  *v16 = v36;
  OUTLINED_FUNCTION_6_94();
  v39();
  v40 = *MEMORY[0x277D22988];
  v41 = OUTLINED_FUNCTION_3_122(&v96);
  (v39)(v41);
  v42 = OUTLINED_FUNCTION_8_81();
  (v39)(v42);
  OUTLINED_FUNCTION_12_55();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_66();
  *(v43 - 256) = a1;
  sub_24E347128();

  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ((v87[0] & 1) == 0)
  {
    type metadata accessor for ActivityFeedLeaderboardListSubview();
    v47 = OUTLINED_FUNCTION_4_104();
    sub_24E21DEA4(v47, v48);
    v46 = v49;
    v45 = v50;
  }

  OUTLINED_FUNCTION_17_41();
  v89 = MEMORY[0x277D226E0];
  __swift_allocate_boxed_opaque_existential_1(v87);
  OUTLINED_FUNCTION_10_5();
  sub_24E3442B8();
  v51 = MEMORY[0x277D85048];
  *(v19 + 3) = MEMORY[0x277D85048];
  v52 = MEMORY[0x277D225F8];
  *(v19 + 4) = MEMORY[0x277D225F8];
  *v19 = v46;
  OUTLINED_FUNCTION_6_94();
  v39();
  v16[3] = v51;
  v16[4] = v52;
  *v16 = v45;
  OUTLINED_FUNCTION_6_94();
  v39();
  v53 = OUTLINED_FUNCTION_3_122(&v96);
  (v39)(v53);
  v54 = OUTLINED_FUNCTION_8_81();
  (v39)(v54);
  OUTLINED_FUNCTION_12_55();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_66();
  sub_24E347128();

  v55 = 0;
  if (LOBYTE(v87[0]) == 1)
  {
    type metadata accessor for ActivityFeedLeaderboardAvatarsSubview();
    v56 = OUTLINED_FUNCTION_4_104();
    sub_24E1A6BB0(v56, v57);
    v55 = v58;
    v44 = v59;
  }

  OUTLINED_FUNCTION_17_41();
  v89 = MEMORY[0x277D226E0];
  __swift_allocate_boxed_opaque_existential_1(v87);
  OUTLINED_FUNCTION_10_5();
  sub_24E3442B8();
  *(v19 + 3) = v51;
  v60 = MEMORY[0x277D225F8];
  *(v19 + 4) = MEMORY[0x277D225F8];
  *v19 = v55;
  OUTLINED_FUNCTION_6_94();
  v39();
  v16[3] = v51;
  v16[4] = v60;
  *v16 = v44;
  OUTLINED_FUNCTION_6_94();
  v39();
  (v39)(v85, v40, v9);
  v61 = OUTLINED_FUNCTION_3_122(&v97);
  (v39)(v61);
  v62 = v76[1];
  sub_24E3449A8();
  v63 = MEMORY[0x277D22998];
  v64 = v76[0];
  v88 = v76[0];
  v89 = MEMORY[0x277D22998];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v87);
  v66 = v77;
  v67 = *(v77 + 16);
  v68 = v83;
  v67(boxed_opaque_existential_1, v83, v64);
  v90[3] = v64;
  v90[4] = v63;
  v69 = __swift_allocate_boxed_opaque_existential_1(v90);
  v70 = v84;
  v67(v69, v84, v64);
  v91[3] = v64;
  v91[4] = v63;
  v71 = __swift_allocate_boxed_opaque_existential_1(v91);
  v67(v71, v62, v64);
  v92 = *&qword_27F20B460;
  v93 = *&qword_27F20B470;
  v94 = qword_27F20B480;
  v72 = [v86 traitCollection];
  v73 = v78;
  sub_24DF9E938();
  v74 = v80;
  sub_24E344A18();

  (*(v79 + 8))(v73, v74);
  sub_24E2CCAFC(v87);
  v75 = *(v66 + 8);
  v75(v62, v64);
  v75(v70, v64);
  v75(v68, v64);
  OUTLINED_FUNCTION_1_16();
}

__n128 sub_24E2CBF04@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_sharedView);
  v19 = type metadata accessor for ActivityFeedSharedView();
  v20 = sub_24E2CCB50(&qword_27F1E27A8, type metadata accessor for ActivityFeedSharedView);
  *&v18 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_leaderboardListSubview);
  v5 = v3;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (([v4 isHidden] & 1) == 0)
  {
    v7 = type metadata accessor for ActivityFeedLeaderboardListSubview();
    v8 = sub_24E2CCB50(&qword_27F1EA3B8, type metadata accessor for ActivityFeedLeaderboardListSubview);
    v9 = v4;
    v6 = v4;
  }

  v10 = *(v1 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_leaderboardAvatarsSubview);
  if ([v10 isHidden])
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  else
  {
    v12 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview();
    v11 = sub_24E2CCB50(&qword_27F1EA3C0, type metadata accessor for ActivityFeedLeaderboardAvatarsSubview);
    v13 = v10;
  }

  if (qword_27F1DDC20 != -1)
  {
    swift_once();
  }

  v14 = qword_27F20B480;
  v16 = *&qword_27F20B470;
  v17 = *&qword_27F20B460;
  sub_24DE56CE8(&v18, a1);
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  *(a1 + 80) = v10;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v12;
  *(a1 + 112) = v11;
  result = v17;
  *(a1 + 136) = v16;
  *(a1 + 120) = v17;
  *(a1 + 152) = v14;
  return result;
}

void sub_24E2CC104()
{
  qword_27F20B460 = sub_24E2D4E50();
  qword_27F20B468 = v0;
  qword_27F20B470 = v1;
  qword_27F20B478 = v2;
  qword_27F20B480 = 0x4034000000000000;
}

char *sub_24E2CC134(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_contentBackgroundView;
  type metadata accessor for BackgroundView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_sharedView;
  type metadata accessor for ActivityFeedSharedView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_leaderboardListSubview;
  type metadata accessor for ActivityFeedLeaderboardListSubview();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_leaderboardAvatarsSubview;
  type metadata accessor for ActivityFeedLeaderboardAvatarsSubview();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = &v4[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_gameControllerSelectButtonDestination];
  *v14 = 0;
  *(v14 + 1) = 0;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OUTLINED_FUNCTION_1_16();
  [v17 v18];
  v19 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_contentBackgroundView;
  v20 = *&v15[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_contentBackgroundView];
  sub_24E2D4EB0(v20);

  [v15 addSubview_];
  OUTLINED_FUNCTION_11_52(OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_sharedView);
  OUTLINED_FUNCTION_11_52(OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_leaderboardListSubview);
  OUTLINED_FUNCTION_11_52(OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_leaderboardAvatarsSubview);

  return v15;
}

void sub_24E2CC308()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_contentBackgroundView;
  type metadata accessor for BackgroundView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_sharedView;
  type metadata accessor for ActivityFeedSharedView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_leaderboardListSubview;
  type metadata accessor for ActivityFeedLeaderboardListSubview();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_leaderboardAvatarsSubview;
  type metadata accessor for ActivityFeedLeaderboardAvatarsSubview();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = (v0 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_gameControllerSelectButtonDestination);
  *v5 = 0;
  v5[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E2CC42C()
{
  v1 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = [v0 traitCollection];
  sub_24DF9E938();
  OUTLINED_FUNCTION_5_106();
  sub_24E344A18();

  (*(v3 + 8))(v7, v1);
  sub_24E2CCAFC(v9);
  OUTLINED_FUNCTION_1_16();
}

id sub_24E2CC5A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  [v1 bounds];
  v10 = [v1 traitCollection];
  sub_24DF9E938();
  OUTLINED_FUNCTION_1_16();
  sub_24E344A08();

  (*(v5 + 8))(v9, v3);
  sub_24E2CCAFC(v19);
  v11 = *&v1[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_contentBackgroundView];
  [v1 bounds];
  v13 = v12;
  v15 = v14;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v17 = 16.0;
  if (ShouldUsePadUI)
  {
    v17 = 0.0;
  }

  [v11 setFrame_];
  return sub_24E2D4EB0(v11);
}

void sub_24E2CC7B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  OUTLINED_FUNCTION_5_16();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_sharedView);

    sub_24E00E084(a2, a3, a4);
  }
}

uint64_t sub_24E2CC844()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_gameControllerSelectButtonDestination + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_gameControllerSelectButtonDestination);

    sub_24E00E084(v2, v1, 0);
  }

  return result;
}

id sub_24E2CC8C8()
{
  sub_24E21E898();
  v1 = OUTLINED_FUNCTION_10_5();
  sub_24E21EDA8(v1, v2);
  sub_24E1A79EC();
  v3 = OUTLINED_FUNCTION_10_5();
  sub_24E1A7BB0(v3, v4);
  sub_24E0931E8();
  *(*(v0 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_contentBackgroundView) + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_isHighlighted) = 0;
  return sub_24DFEC5B4();
}

id sub_24E2CC948(uint64_t a1, uint64_t a2)
{
  sub_24E21EB90();
  sub_24E0934B0(a1, a2);
  *(*(v2 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardView_contentBackgroundView) + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_isHighlighted) = 0;
  return sub_24DFEC5B4();
}

uint64_t sub_24E2CCB50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24E2CCC20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E2CCC40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

id OUTLINED_FUNCTION_11_52@<X0>(uint64_t a1@<X8>)
{
  v4 = *&v1[a1];

  return [v1 (v2 + 2040)];
}

uint64_t OUTLINED_FUNCTION_12_55()
{

  return sub_24E3449A8();
}

uint64_t sub_24E2CCDE8()
{
  sub_24E343FC8();
  OUTLINED_FUNCTION_1_23();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_0_177();
  __swift_allocate_value_buffer(v5, qword_27F20B500);
  __swift_project_value_buffer(v5, qword_27F20B500);
  GKIsXRUIIdiomShouldUsePadUI();
  v6 = *MEMORY[0x277D76918];
  *v1 = *MEMORY[0x277D76918];
  v7 = *(v3 + 104);
  v3 += 104;
  v7(v1, *MEMORY[0x277D22620], v0);
  v12 = v0;
  v13 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(v3 - 88))(boxed_opaque_existential_1, v1, v0);
  v9 = v6;
  sub_24E344508();
  return (*(v3 - 96))(v1, v0);
}

uint64_t sub_24E2CCF80(uint64_t a1, uint64_t *a2)
{
  sub_24E343FC8();
  OUTLINED_FUNCTION_1_23();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_0_177();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  v9 = *MEMORY[0x277D76918];
  *v3 = *MEMORY[0x277D76918];
  (*(v6 + 104))(v3, *MEMORY[0x277D22620], v2);
  v14 = v2;
  v15 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(v6 + 16))(boxed_opaque_existential_1, v3, v2);
  v11 = v9;
  sub_24E344508();
  return (*(v6 + 8))(v3, v2);
}

uint64_t OUTLINED_FUNCTION_0_177()
{

  return sub_24E3444F8();
}

uint64_t sub_24E2CD11C()
{
  sub_24E347DC8();
}

uint64_t sub_24E2CD1C0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_5_107();
      break;
    default:
      break;
  }

  sub_24E347DC8();
}

uint64_t sub_24E2CD290()
{
  OUTLINED_FUNCTION_1_142();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_3_123();
      break;
    case 3:
      OUTLINED_FUNCTION_10_63();
      break;
    case 4:
      OUTLINED_FUNCTION_23_30();
      break;
    case 5:
      OUTLINED_FUNCTION_8_82();
      break;
    case 6:
      OUTLINED_FUNCTION_26_22();
      break;
    case 10:
      OUTLINED_FUNCTION_24_21();
      break;
    default:
      break;
  }

  sub_24E347DC8();
}

uint64_t sub_24E2CD408(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_142();
  }

  sub_24E347DC8();
}

uint64_t sub_24E2CD488()
{
  sub_24E347DC8();
}

uint64_t sub_24E2CD51C()
{
  sub_24E347DC8();
}

uint64_t sub_24E2CD5F8()
{
  sub_24E347DC8();
}

uint64_t sub_24E2CD650(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
    case 6:
      OUTLINED_FUNCTION_10_63();
      break;
    default:
      break;
  }

  sub_24E347DC8();
}

uint64_t sub_24E2CD75C(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_3_123();
  }

  sub_24E347DC8();
}

uint64_t sub_24E2CD7E8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_8_82();
      break;
    default:
      break;
  }

  sub_24E347DC8();
}

uint64_t sub_24E2CD8B4()
{
  DashboardLaunchContext.rawValue.getter();
  OUTLINED_FUNCTION_19_32();
}

uint64_t sub_24E2CD900()
{
  OUTLINED_FUNCTION_3_123();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_1_142();
      break;
    case 2:
      OUTLINED_FUNCTION_24_21();
      break;
    case 3:
      OUTLINED_FUNCTION_23_30();
      break;
    case 4:
      OUTLINED_FUNCTION_26_22();
      break;
    case 5:
      OUTLINED_FUNCTION_25_25();
      break;
    case 6:
      OUTLINED_FUNCTION_5_107();
      break;
    case 7:
      OUTLINED_FUNCTION_8_82();
      break;
    case 9:
      OUTLINED_FUNCTION_22_31();
      break;
    default:
      break;
  }

  sub_24E347DC8();
}

uint64_t sub_24E2CDA2C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  OUTLINED_FUNCTION_19_32();
}

uint64_t sub_24E2CDA70(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_5_107();
      break;
    default:
      break;
  }

  sub_24E347DC8();
}

uint64_t sub_24E2CDB2C()
{
  sub_24E347DC8();
}

uint64_t sub_24E2CDBBC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_10_63();
      break;
    case 3:
      OUTLINED_FUNCTION_8_82();
      break;
    case 5:
      OUTLINED_FUNCTION_5_107();
      break;
    default:
      break;
  }

  sub_24E347DC8();
}

uint64_t sub_24E2CDCA8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 8:
    case 9:
      OUTLINED_FUNCTION_8_82();
      break;
    default:
      break;
  }

  sub_24E347DC8();
}

uint64_t sub_24E2CDE0C()
{
  OUTLINED_FUNCTION_3_123();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_25_25();
      break;
    case 3:
      OUTLINED_FUNCTION_5_107();
      break;
    case 5:
      OUTLINED_FUNCTION_8_82();
      break;
    default:
      break;
  }

  sub_24E347DC8();
}

uint64_t sub_24E2CDEF4()
{
  OUTLINED_FUNCTION_1_142();
  switch(v0)
  {
    case 3:
      break;
    case 4:
      OUTLINED_FUNCTION_22_31();
      break;
    default:
      OUTLINED_FUNCTION_8_82();
      break;
  }

  sub_24E347DC8();
}

uint64_t sub_24E2CDFB0()
{
  sub_24E347DC8();
}

uint64_t sub_24E2CE048()
{
  sub_24E347DC8();
}

uint64_t Artwork.__allocating_init(template:size:backgroundColor:crop:variants:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5, double a6)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = *a3;
  v13 = a3[1];
  type metadata accessor for Artwork();
  result = swift_allocObject();
  *(result + 16) = v10;
  *(result + 24) = v11;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 48) = a2;
  *(result + 64) = v12;
  *(result + 72) = v13;
  *(result + 56) = 0;
  *(result + 80) = a4;
  return result;
}

uint64_t Artwork.URLTemplate.makeURL(withSubstitutions:)(uint64_t a1)
{
  v1 = a1 + 64;
  OUTLINED_FUNCTION_2_18();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;

  v8 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_24E343268();
    }

    v4 = *(v1 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      do
      {
LABEL_7:
        v4 &= v4 - 1;
        sub_24DF90C4C();

        OUTLINED_FUNCTION_3_15();
        sub_24E348738();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t Artwork.Crop.preferredContentMode.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v1 == 25186 && v2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_68() & 1) != 0)
  {
    return 1;
  }

  if (v1 == 24934 && v2 == 0xE200000000000000)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_0_68();
  result = 0;
  v8 = v1 == 24948 && v2 == 0xE200000000000000;
  if ((v6 & 1) == 0 && !v8)
  {
    if (OUTLINED_FUNCTION_0_68())
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

double Artwork.Style.iconHeight(fromWidth:)(double result)
{
  if (*v1 == 3)
  {
    return result * 3.0 / 5.0;
  }

  return result;
}

double Artwork.Style.iconCornerRadius(for:)(double a1, double a2)
{
  result = 0.0;
  switch(*v2)
  {
    case 1:
      result = GKHomeScreenIconsGetScaledCornerRadiusForSize(a1, a2);
      break;
    case 2:
      if (a1 >= a2)
      {
        v5 = a2;
      }

      else
      {
        v5 = a1;
      }

      result = v5 * 0.5;
      break;
    case 3:
      result = 6.0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Artwork.__allocating_init(template:size:backgroundColor:style:crop:variants:)(void *a1, uint64_t a2, char *a3, uint64_t *a4, uint64_t a5, double a6, double a7)
{
  result = swift_allocObject();
  v15 = a1[1];
  v16 = *a3;
  v17 = *a4;
  v18 = a4[1];
  *(result + 16) = *a1;
  *(result + 24) = v15;
  *(result + 32) = a6;
  *(result + 40) = a7;
  *(result + 48) = a2;
  *(result + 64) = v17;
  *(result + 72) = v18;
  *(result + 56) = v16;
  *(result + 80) = a5;
  return result;
}

uint64_t Artwork.Format.rawValue.getter()
{
  result = 6778480;
  switch(*v0)
  {
    case 1:
      result = 1734701162;
      break;
    case 2:
      result = 1667851624;
      break;
    case 3:
      result = 7496556;
      break;
    default:
      return result;
  }

  return result;
}

Swift::String __swiftcall Artwork.URLTemplate.makeString(withSubstitutions:)(Swift::OpaquePointer withSubstitutions)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = withSubstitutions._rawValue + 64;
  OUTLINED_FUNCTION_2_18();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v12 = 0;
  if (v7)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      v10 = v3;
      v11 = v2;
      goto LABEL_11;
    }

    v7 = *&v4[8 * v13];
    ++v12;
    if (v7)
    {
      v12 = v13;
      do
      {
LABEL_7:
        v7 &= v7 - 1;
        sub_24DF90C4C();

        OUTLINED_FUNCTION_3_15();
        v3 = sub_24E348738();
        v15 = v14;

        v2 = v15;
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
LABEL_11:
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t static Artwork.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_24E348C08() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v7 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  if (!v7 && (sub_24E348C08() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  v9 = *(a2 + 80);

  return sub_24E12D5C4(v8, v9);
}

GameCenterUI::Artwork::Style __swiftcall Artwork.Style.orIfUnspecified(_:)(GameCenterUI::Artwork::Style a1)
{
  v3 = *a1;
  v4 = *v2;
  v5 = v1;
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      v7 = sub_24E348C08();

      if ((v7 & 1) == 0)
      {
        v3 = v4;
      }

      break;
    default:

      break;
  }

  *v5 = v3;
  return result;
}

double Artwork.Style.iconWidth(fromHeight:)(double result)
{
  if (*v1 == 3)
  {
    return result * 5.0 / 3.0;
  }

  return result;
}

GameCenterUI::Artwork::Style_optional __swiftcall Artwork.Style.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_16_45();
  v2 = sub_24E348B78();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Artwork.Style.rawValue.getter()
{
  result = 0x6669636570736E75;
  switch(*v0)
  {
    case 1:
      result = 0x526465646E756F72;
      break;
    case 2:
      result = 0x646E756F72;
      break;
    case 3:
      result = 0x746365527674;
      break;
    case 4:
      result = 0x656E726F64616E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E2CE950@<X0>(uint64_t *a1@<X8>)
{
  result = Artwork.Style.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameCenterUI::Artwork::Format_optional __swiftcall Artwork.Format.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_16_45();
  v2 = sub_24E348B78();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24E2CE9FC@<X0>(uint64_t *a1@<X8>)
{
  result = Artwork.Format.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameCenterUI::Artwork::Variant __swiftcall Artwork.Variant.init(format:quality:supportsWideGamut:)(GameCenterUI::Artwork::Format format, Swift::Int_optional quality, Swift::Bool supportsWideGamut)
{
  *v3 = *format;
  *(v3 + 8) = quality.value;
  *(v3 + 16) = quality.is_nil;
  *(v3 + 17) = supportsWideGamut;
  result.quality = quality;
  result.format = format;
  return result;
}

uint64_t static Artwork.Variant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  if ((sub_24DFD315C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return v4 ^ v7 ^ 1u;
}

uint64_t Artwork.Variant.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24E2CD488();
  sub_24E348D38();
  if (v2 != 1)
  {
    MEMORY[0x25303F880](v1);
  }

  return sub_24E348D38();
}

uint64_t Artwork.Variant.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24E348D18();
  sub_24E2CD488();
  sub_24E348D38();
  if (v2 != 1)
  {
    MEMORY[0x25303F880](v1);
  }

  sub_24E348D38();
  return sub_24E348D68();
}

uint64_t sub_24E2CEC9C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24E348D18();
  sub_24E2CD488();
  sub_24E348D38();
  if (v2 != 1)
  {
    MEMORY[0x25303F880](v1);
  }

  sub_24E348D38();
  return sub_24E348D68();
}

GameCenterUI::Artwork::URLTemplate::Key_optional __swiftcall Artwork.URLTemplate.Key.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_16_45();
  v2 = sub_24E348B78();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24E2CEDC8@<X0>(uint64_t *a1@<X8>)
{
  result = Artwork.URLTemplate.Key.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t Artwork.URLTemplate.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_24E2CEE3C@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

uint64_t Artwork.init(template:size:backgroundColor:style:crop:variants:)(void *a1, uint64_t a2, char *a3, uint64_t *a4, uint64_t a5, double a6, double a7)
{
  v8 = a1[1];
  v9 = *a3;
  v10 = *a4;
  v11 = a4[1];
  *(v7 + 16) = *a1;
  *(v7 + 24) = v8;
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 48) = a2;
  *(v7 + 64) = v10;
  *(v7 + 72) = v11;
  *(v7 + 56) = v9;
  *(v7 + 80) = a5;
  return v7;
}

void *Artwork.backgroundColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_24E2CEF34()
{
  type metadata accessor for Artwork();
  v1 = *(v0 + 3);
  v10[0] = v0[2];
  v10[1] = v1;
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0 + 6);
  v5 = *(v0 + 9);
  v9[0] = v0[8];
  v9[1] = v5;
  v6 = Artwork.__allocating_init(template:size:backgroundColor:crop:variants:)(v10, v4, v9, *(v0 + 10), v2, v3);
  v7 = v4;

  return v6;
}

uint64_t sub_24E2CEFC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 80);
  v4 = *(v3 + 16);
  if (v4)
  {
    for (i = (v3 + 49); ; i += 24)
    {
      v6 = *(i - 17);
      if (((v6 != 3) ^ result))
      {
        break;
      }

      if (!--v4)
      {
        v7 = *(v3 + 32);
        v8 = *(v3 + 40);
        v9 = *(v3 + 48);
        v10 = *(v3 + 49);
        *a2 = v7;
        *(a2 + 8) = v8;
        *(a2 + 16) = v9;
        *(a2 + 17) = v10;
        return result;
      }
    }

    v11 = *(i - 9);
    v12 = *(i - 1);
    v13 = *i;
    *a2 = v6;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 17) = v13;
  }

  else
  {
    *a2 = 2;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

BOOL sub_24E2CF06C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_14_46();
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_105();
  OUTLINED_FUNCTION_17_42();
  if (v7)
  {
    sub_24DF90BE4(v0);
    return 0;
  }

  v3 = OUTLINED_FUNCTION_6_95();
  v4(v3);
  v5 = sub_24E343258();
  if (!v6)
  {
    v11 = OUTLINED_FUNCTION_2_122();
    v12(v11);
    return 0;
  }

  v7 = v5 == 0x656372756F736572 && v6 == 0xE800000000000000;
  if (!v7)
  {
    v8 = sub_24E348C08();

    v9 = OUTLINED_FUNCTION_2_122();
    v10(v9);
    return (v8 & 1) != 0;
  }

  v14 = OUTLINED_FUNCTION_2_122();
  v15(v14);
  return 1;
}

BOOL sub_24E2CF1EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_14_46();
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_105();
  OUTLINED_FUNCTION_17_42();
  if (v9)
  {
    sub_24DF90BE4(v0);
    return 0;
  }

  v3 = OUTLINED_FUNCTION_6_95();
  v4(v3);
  sub_24E343258();
  if (!v5)
  {
    v13 = OUTLINED_FUNCTION_2_122();
    v14(v13);
    return 0;
  }

  OUTLINED_FUNCTION_20_32();
  v9 = v8 == 0x6D696D6574737973 && v6 == v7;
  if (!v9)
  {
    v10 = sub_24E348C08();

    v11 = OUTLINED_FUNCTION_2_122();
    v12(v11);
    return (v10 & 1) != 0;
  }

  v16 = OUTLINED_FUNCTION_2_122();
  v17(v16);
  return 1;
}

BOOL sub_24E2CF364()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_14_46();
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_105();
  OUTLINED_FUNCTION_17_42();
  if (v9)
  {
    sub_24DF90BE4(v0);
    return 0;
  }

  v3 = OUTLINED_FUNCTION_6_95();
  v4(v3);
  sub_24E343258();
  if (!v5)
  {
    v13 = OUTLINED_FUNCTION_2_122();
    v14(v13);
    return 0;
  }

  OUTLINED_FUNCTION_20_32();
  v9 = v8 == 0x6D69726174617661 && v6 == v7;
  if (!v9)
  {
    v10 = sub_24E348C08();

    v11 = OUTLINED_FUNCTION_2_122();
    v12(v11);
    return (v10 & 1) != 0;
  }

  v16 = OUTLINED_FUNCTION_2_122();
  v17(v16);
  return 1;
}

BOOL sub_24E2CF4DC()
{
  if (sub_24E2CF06C())
  {
    return 1;
  }

  return sub_24E2CF1EC();
}

uint64_t sub_24E2CF51C()
{
  sub_24E347DC8();
  v1 = *(v0 + 32);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x25303F8B0](*&v1);
  v2 = *(v0 + 40);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x25303F8B0](*&v2);

  return sub_24E347DC8();
}

uint64_t Artwork.deinit()
{

  return v0;
}

uint64_t Artwork.__deallocating_deinit()
{
  Artwork.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_24E2CF600()
{
  sub_24E348D18();
  sub_24E2CF51C();
  return sub_24E348D68();
}

unint64_t sub_24E2CF68C()
{
  result = qword_27F1EA3C8;
  if (!qword_27F1EA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA3C8);
  }

  return result;
}

unint64_t sub_24E2CF6E4()
{
  result = qword_27F1EA3D0;
  if (!qword_27F1EA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA3D0);
  }

  return result;
}

unint64_t sub_24E2CF73C()
{
  result = qword_27F1EA3D8;
  if (!qword_27F1EA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA3D8);
  }

  return result;
}

unint64_t sub_24E2CF794()
{
  result = qword_27F1EA3E0;
  if (!qword_27F1EA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA3E0);
  }

  return result;
}

unint64_t sub_24E2CF7EC()
{
  result = qword_27F1EA3E8;
  if (!qword_27F1EA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA3E8);
  }

  return result;
}

unint64_t sub_24E2CF844()
{
  result = qword_27F1EA3F0;
  if (!qword_27F1EA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA3F0);
  }

  return result;
}

unint64_t sub_24E2CF89C()
{
  result = qword_27F1EA3F8;
  if (!qword_27F1EA3F8)
  {
    type metadata accessor for Artwork();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA3F8);
  }

  return result;
}

uint64_t sub_24E2CF8F0()
{
  sub_24E348D18();
  sub_24E2CF51C();
  return sub_24E348D68();
}

_BYTE *storeEnumTagSinglePayload for Artwork.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Artwork.Variant(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Artwork.Variant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_24E2CFCA4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_105()
{

  return sub_24E343268();
}

uint64_t OUTLINED_FUNCTION_11_53@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t OUTLINED_FUNCTION_14_46()
{

  return sub_24E343288();
}

uint64_t OUTLINED_FUNCTION_19_32()
{

  return sub_24E347DC8();
}

uint64_t type metadata accessor for OnboardingHeaderView()
{
  result = qword_27F1EA400;
  if (!qword_27F1EA400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E2CFFF8()
{
  sub_24E04ACC8();
  if (v0 <= 0x3F)
  {
    sub_24E0ADC44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_24E2D00A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24E345658();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E028BC4(v7);
  v8 = sub_24E345638();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = sub_24E345D08();
  }

  else
  {
    v9 = sub_24E345CF8();
  }

  v10 = v9;
  v18 = 0;
  sub_24E2D023C(v2, v14);
  memcpy(v15, v14, sizeof(v15));
  memcpy(v16, v14, sizeof(v16));
  sub_24DF9DEAC(v15, v13, &qword_27F1EA410);
  sub_24DF8C95C(v16, &qword_27F1EA410);
  memcpy(&v17[7], v15, 0xF0uLL);
  v11 = v18;
  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  return memcpy((a1 + 17), v17, 0xF7uLL);
}

uint64_t sub_24E2D023C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v89 = a2;
  v3 = sub_24E345658();
  v101 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v87 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0DC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v81 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v81 - v9;
  v11 = type metadata accessor for OnboardingHeaderView();
  v12 = *(a1 + *(v11 + 20) + 8);
  v13 = 0;
  v88 = v3;
  if (v12)
  {

    sub_24E346A58();
    sub_24E345D18();
    v14 = sub_24E345D28();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
    v100 = sub_24E346A98();

    sub_24DF8C95C(v10, &qword_27F1E8800);
    v99 = sub_24E346958();
    v15 = sub_24E3462A8();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
    v98 = sub_24E346308();
    sub_24DF8C95C(v7, &qword_27F1E0DC0);
    KeyPath = swift_getKeyPath();
    v16 = sub_24E346208();
    sub_24E3451B8();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    LOBYTE(v109) = 0;
    v96 = v16;
  }

  else
  {
    v99 = 0;
    v100 = 0;
    KeyPath = 0;
    v98 = 0;
    v96 = 0;
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v24 = 0;
  }

  v25 = (a1 + *(v11 + 24));
  v26 = v25[1];
  v109 = *v25;
  v110 = v26;
  v27 = sub_24DF90C4C();

  v85 = v27;
  v28 = sub_24E3464E8();
  v30 = v29;
  v32 = v31;
  v86 = v11;
  sub_24E346268();
  v33 = sub_24E3464B8();
  v90 = a1;
  v35 = v34;
  v37 = v36;

  sub_24DFA92EC(v28, v30, v32 & 1);

  v38 = sub_24E346498();
  v93 = v39;
  v94 = v38;
  LOBYTE(v30) = v40;
  v95 = v41;
  sub_24DFA92EC(v33, v35, v37 & 1);

  v42 = v87;
  v43 = v90;
  sub_24E028BC4(v87);
  v44 = sub_24E345638();
  v45 = v101 + 8;
  v46 = *(v101 + 8);
  v47 = v88;
  v46(v42, v88);
  v92 = swift_getKeyPath();
  v91 = v30 & 1;
  v131 = v30 & 1;
  v48 = (v43 + *(v86 + 28));
  v49 = v48[1];
  if (v49)
  {
    v109 = *v48;
    v110 = v49;

    v50 = sub_24E3464E8();
    v101 = v45;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_24E346288();
    v56 = sub_24E3464B8();
    v85 = v57;
    v86 = v56;
    v83 = v58;
    v84 = v59;

    sub_24DFA92EC(v51, v53, v55 & 1);

    sub_24E028BC4(v42);
    LOBYTE(v51) = sub_24E345638();
    v46(v42, v47);
    v101 = swift_getKeyPath();
    v60 = sub_24E3461F8();
    sub_24E3451B8();
    v13 = v61;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    LOBYTE(v109) = v83;
    LOBYTE(v108[0]) = 0;
    v68 = v83;
    v90 = 0;
    v69 = swift_getKeyPath();
    v70 = (v51 & 1) == 0;
    v71 = v60;
    v87 = 0x3FE0000000000000;
    v88 = v69;
  }

  else
  {
    v85 = 0;
    v86 = 0;
    v84 = 0;
    v101 = 0;
    v87 = 0;
    v88 = 0;
    v90 = 0;
    v71 = 0;
    v70 = 0;
    v68 = 0;
    v63 = 0;
    v65 = 0;
    v67 = 0;
  }

  v82 = v71;
  v83 = (v44 & 1) == 0;
  v105[0] = v100;
  v105[1] = v99;
  v105[2] = KeyPath;
  v105[3] = v98;
  v105[4] = v96;
  v105[5] = v18;
  v105[6] = v20;
  v105[7] = v22;
  v105[8] = v24;
  LOBYTE(v105[9]) = 0;
  memcpy(v104, v105, 0x49uLL);
  *&v106 = v94;
  *(&v106 + 1) = v93;
  LOBYTE(v107[0]) = v91;
  *(v107 + 1) = *v130;
  DWORD1(v107[0]) = *&v130[3];
  *(&v107[0] + 1) = v95;
  *&v107[1] = v92;
  BYTE8(v107[1]) = (v44 & 1) == 0;
  *(&v107[1] + 9) = 256;
  *(&v104[6] + 11) = *(v107 + 11);
  v104[5] = v106;
  v104[6] = v107[0];
  v72 = v85;
  v73 = v86;
  v108[0] = v86;
  v108[1] = v85;
  v108[2] = v68;
  v74 = v84;
  v108[3] = v84;
  v75 = v101;
  v108[4] = v101;
  v108[5] = v70;
  v108[6] = v71;
  v108[7] = v13;
  v108[8] = v63;
  v108[9] = v65;
  v108[10] = v67;
  v76 = v90;
  v108[11] = v90;
  v77 = v70;
  v79 = v87;
  v78 = v88;
  v108[12] = v88;
  v108[13] = v87;
  memcpy(&v104[8], v108, 0x70uLL);
  memcpy(v89, v104, 0xF0uLL);
  v109 = v73;
  v110 = v72;
  v111 = v68;
  v112 = v74;
  v113 = v75;
  v114 = v77;
  v115 = v82;
  v116 = v13;
  v117 = v63;
  v118 = v65;
  v119 = v67;
  v120 = v76;
  v121 = v78;
  v122 = v79;
  sub_24DF9DEAC(v105, v102, &qword_27F1EA418);
  sub_24DF9DEAC(&v106, v102, &qword_27F1EA420);
  sub_24DF9DEAC(v108, v102, &qword_27F1EA428);
  sub_24DF8C95C(&v109, &qword_27F1EA428);
  v123[0] = v94;
  v123[1] = v93;
  v124 = v91;
  *v125 = *v130;
  *&v125[3] = *&v130[3];
  v126 = v95;
  v127 = v92;
  v128 = v83;
  v129 = 256;
  sub_24DF8C95C(v123, &qword_27F1EA420);
  v102[0] = v100;
  v102[1] = v99;
  v102[2] = KeyPath;
  v102[3] = v98;
  v102[4] = v96;
  v102[5] = v18;
  v102[6] = v20;
  v102[7] = v22;
  v102[8] = v24;
  v103 = 0;
  return sub_24DF8C95C(v102, &qword_27F1EA418);
}

unint64_t sub_24E2D0A0C()
{
  result = qword_27F1EA430;
  if (!qword_27F1EA430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EA438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA430);
  }

  return result;
}

void *sub_24E2D0A70@<X0>(const void *a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, void *a4@<X8>)
{
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = [v8 currentTraitCollection];
    v10 = [v9 verticalSizeClass];

    if (v10 != 2 || (v11 = [v8 currentTraitCollection], v12 = objc_msgSend(v11, sel_horizontalSizeClass), v11, a1 = a2, v12 != 2))
    {
      v13 = [v8 currentTraitCollection];
      [v13 verticalSizeClass];

      a1 = a3;
    }
  }

  return memcpy(a4, a1, 0xB0uLL);
}

id sub_24E2D0BB8()
{
  type metadata accessor for WelcomeArtworkView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_24DFD8050(0xD00000000000001DLL, 0x800000024E3B1A00, v0);
  return v0;
}

id sub_24E2D0C18()
{
  sub_24DFB6B18();
  v0 = sub_24E15BC0C(0xD000000000000010, 0x800000024E3AE3E0, 0xD000000000000016, 0x800000024E3B19E0);
  [v0 setContentMode_];
  v1 = [v0 heightAnchor];
  v2 = [v1 constraintEqualToConstant_];

  [v2 setActive_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];

  return v0;
}

void sub_24E2D0D10()
{
  v0 = sub_24E343F88();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  sub_24E343C98();
  v9 = sub_24E343F78();
  v10 = sub_24E348238();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24DE53000, v9, v10, "Checking other services for existing accounts", v11, 2u);
    MEMORY[0x253040EE0](v11, -1, -1);
  }

  v12 = *(v1 + 8);
  v39 = v1 + 8;
  v40 = v0;
  v38 = v12;
  v12(v8, v0);
  v13 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v14 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

  v15 = [objc_opt_self() supportedServices];
  type metadata accessor for AIDAServiceType(0);
  v16 = sub_24E347F08();

  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_11:

    sub_24E343C98();
    v24 = sub_24E343F78();
    v25 = sub_24E348238();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24DE53000, v24, v25, "No existing accounts found", v26, 2u);
      MEMORY[0x253040EE0](v26, -1, -1);
    }

    v38(v3, v40);
    return;
  }

  v18 = 0;
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v19 = *(v16 + 8 * v18 + 32);
    v20 = [v14 accountForService_];
    if (v20)
    {
      break;
    }

LABEL_10:
    ++v18;

    if (v17 == v18)
    {
      goto LABEL_11;
    }
  }

  v21 = v20;
  sub_24E2D1BAC(v20);
  if (!v22)
  {
    goto LABEL_20;
  }

  v23 = sub_24E347DD8();

  if (v23 < 1)
  {

    goto LABEL_10;
  }

  v27 = v37;
  sub_24E343C98();
  v28 = v19;
  v29 = sub_24E343F78();
  v30 = sub_24E348238();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v32;
    *v31 = 136315138;
    v33 = sub_24E347CF8();
    v35 = sub_24E1C2BE0(v33, v34, &v41);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_24DE53000, v29, v30, "Found existing account in service %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x253040EE0](v32, -1, -1);
    MEMORY[0x253040EE0](v31, -1, -1);
  }

  else
  {
  }

  v38(v27, v40);
}

id sub_24E2D116C()
{
  v0 = [objc_opt_self() boldButton];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 widthAnchor];
  v2 = [v1 constraintGreaterThanOrEqualToConstant_];

  [v2 setActive_];
  sub_24DFD8050(0xD000000000000023, 0x800000024E3B19B0, v0);

  return v0;
}

id sub_24E2D1248()
{
  v1 = OBJC_IVAR___GKSignInView____lazy_storage___artworkHeight;
  v2 = *(v0 + OBJC_IVAR___GKSignInView____lazy_storage___artworkHeight);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___GKSignInView____lazy_storage___artworkHeight);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR___GKSignInView_welcomeArtworkView) heightAnchor];
    v5 = [v4 constraintEqualToConstant_];

    [v5 setActive_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

objc_super *SignInView.init(signInAction:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = (v3 + OBJC_IVAR___GKSignInView_welcomeArtworkView);
  *v6 = sub_24E2D0BB8();
  v7 = (v3 + OBJC_IVAR___GKSignInView_gameCenterIcon);
  *v7 = sub_24E2D0C18();
  v8 = OBJC_IVAR___GKSignInView_primaryTrayButton;
  *(v3 + v8) = sub_24E2D116C();
  *(v3 + OBJC_IVAR___GKSignInView____lazy_storage___artworkHeight) = 0;
  v9 = (v3 + OBJC_IVAR___GKSignInView_signInAction);
  *v9 = a1;
  v9[1] = a2;

  sub_24E2D0D10();
  v11 = v10;
  sub_24E343AA8();
  if (v11)
  {
    v29 = sub_24E343988();
    v13 = v12;
    v14 = sub_24E3437C8();
  }

  else
  {
    v29 = sub_24E343738();
    v13 = v16;
    v14 = sub_24E343678();
  }

  sub_24E2BE6B4(v14, v15, 0, *(v3 + v8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24E369990;
  v18 = *(v3 + v8);
  *(v17 + 32) = v18;
  v19 = v18;
  v20 = sub_24E3436A8();
  v22 = v21;
  if (sub_24E324668())
  {
    v23 = v7;
  }

  else
  {
    v23 = v6;
  }

  v24 = *v23;

  v25 = sub_24E3246E4(v20, v22, v29, v13, 0, v24, 0, v17, v17, 0);
  v26 = *(&v25->receiver + OBJC_IVAR___GKSignInView_primaryTrayButton);
  v27 = v25;
  [v26 addTarget:v27 action:sel_primaryAction forControlEvents:0x2000];

  return v27;
}

void sub_24E2D1590()
{
  v1 = OBJC_IVAR___GKSignInView_welcomeArtworkView;
  *(v0 + v1) = sub_24E2D0BB8();
  v2 = OBJC_IVAR___GKSignInView_gameCenterIcon;
  *(v0 + v2) = sub_24E2D0C18();
  v3 = OBJC_IVAR___GKSignInView_primaryTrayButton;
  *(v0 + v3) = sub_24E2D116C();
  *(v0 + OBJC_IVAR___GKSignInView____lazy_storage___artworkHeight) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E2D178C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_24E324958(a1, a2, a3, a4, a5, a6, a7, a8, v9, v10, *&v12[0], *&v12[1], *&v12[2], *&v12[3], *&v12[4], *&v12[5], *&v12[6], *&v12[7], *&v12[8], *&v12[9], *&v12[10], *&v12[11], *&v12[12], *&v12[13]);
  v13[0] = xmmword_24E37D430;
  v13[1] = xmmword_24E37D420;
  v13[2] = xmmword_24E37D410;
  v13[3] = xmmword_24E37D400;
  v13[4] = xmmword_24E37D3F0;
  v13[5] = xmmword_24E37D3E0;
  v13[6] = xmmword_24E37D3D0;
  v13[7] = xmmword_24E37D3C0;
  v13[8] = xmmword_24E37D3B0;
  v13[9] = xmmword_24E37D3A0;
  v13[10] = xmmword_24E385ED0;
  v14[0] = xmmword_24E37D560;
  v14[1] = xmmword_24E37D550;
  v14[2] = xmmword_24E37D540;
  v14[3] = xmmword_24E37D530;
  v14[4] = xmmword_24E37D520;
  v14[5] = xmmword_24E37D510;
  v14[6] = xmmword_24E37D470;
  v14[7] = xmmword_24E37D500;
  v14[8] = xmmword_24E37D4F0;
  v14[9] = xmmword_24E37D4E0;
  v14[10] = xmmword_24E385EE0;
  v15[0] = xmmword_24E37D570;
  v15[1] = xmmword_24E37D4C0;
  v15[2] = xmmword_24E37D4B0;
  v15[3] = xmmword_24E37D4A0;
  v15[4] = xmmword_24E37D490;
  v15[5] = xmmword_24E37D480;
  v15[6] = xmmword_24E37D470;
  v15[7] = xmmword_24E37D460;
  v15[8] = xmmword_24E37D450;
  v15[9] = xmmword_24E37D440;
  v15[10] = xmmword_24E385EE0;
  sub_24E2D0A70(v13, v14, v15, v12);
  v8 = v12[0];
  v11 = sub_24E2D1248();
  [v11 setConstant_];
}

void sub_24E2D1A30()
{

  v1 = *(v0 + OBJC_IVAR___GKSignInView____lazy_storage___artworkHeight);
}

id SignInView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E2D1BAC(void *a1)
{
  v1 = [a1 username];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

_BYTE *sub_24E2D1C10(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  OUTLINED_FUNCTION_4_5(v6);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = [objc_allocWithZone(v3) initWithFrame_];
  v10[OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_directionalTextAlignment] = a2;
  v11 = sub_24E344158();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, a1, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  v13 = OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  v14 = v10;
  sub_24E28E6F0(v9, &v10[v13]);
  swift_endAccess();
  sub_24E2D1DA0(a1);
  sub_24E2D26CC();

  (*(v12 + 8))(a1, v11);
  return v14;
}

void sub_24E2D1DA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24E0AEA08();
  v5 = [v4 preferredContentSizeCategory];

  v6 = *&v2[OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCaseContentSizeCategory];
  *&v2[OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCaseContentSizeCategory] = v5;

  sub_24DF88A8C(0, &qword_27F1DEE28);
  v7 = sub_24E0AEA08();
  v8 = MEMORY[0x25303F0C0](a1, v7);

  v9.receiver = v2;
  v9.super_class = type metadata accessor for DynamicTypeTextField();
  objc_msgSendSuper2(&v9, sel_setFont_, v8);
}

uint64_t sub_24E2D1E78(uint64_t a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E30B0);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_24E344158();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v20 = OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  sub_24E0B01B4(v1 + v20, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return sub_24DF8C95C(v12, &unk_27F1E5CE0);
  }

  v26 = v1;
  v22 = *(v14 + 32);
  v22(v19, v12, v13);
  (*(v14 + 16))(v9, v19, v13);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  v23 = *(v2 + 48);
  sub_24E0B01B4(v9, v4);
  sub_24E0B01B4(v28, &v4[v23]);
  if (__swift_getEnumTagSinglePayload(v4, 1, v13) == 1)
  {
    sub_24DF8C95C(v9, &unk_27F1E5CE0);
    if (__swift_getEnumTagSinglePayload(&v4[v23], 1, v13) == 1)
    {
      sub_24DF8C95C(v4, &unk_27F1E5CE0);
      return (*(v14 + 8))(v19, v13);
    }

    goto LABEL_8;
  }

  v24 = v27;
  sub_24E0B01B4(v4, v27);
  if (__swift_getEnumTagSinglePayload(&v4[v23], 1, v13) == 1)
  {
    sub_24DF8C95C(v9, &unk_27F1E5CE0);
    (*(v14 + 8))(v24, v13);
LABEL_8:
    sub_24DF8C95C(v4, &qword_27F1E30B0);
LABEL_9:
    sub_24E2D1DA0(v19);
    return (*(v14 + 8))(v19, v13);
  }

  v22(v16, &v4[v23], v13);
  sub_24E0B04F0();
  LODWORD(v28) = sub_24E347CA8();
  v25 = *(v14 + 8);
  v25(v16, v13);
  sub_24DF8C95C(v9, &unk_27F1E5CE0);
  v25(v24, v13);
  sub_24DF8C95C(v4, &unk_27F1E5CE0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v25)(v19, v13);
}

uint64_t sub_24E2D22D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  OUTLINED_FUNCTION_4_5(v3);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  sub_24E0B01B4(v1 + v7, v6);
  swift_beginAccess();
  sub_24E0B0480(a1, v1 + v7);
  swift_endAccess();
  sub_24E2D1E78(v6);
  sub_24DF8C95C(a1, &unk_27F1E5CE0);
  return sub_24DF8C95C(v6, &unk_27F1E5CE0);
}

id sub_24E2D2410()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DynamicTypeTextField();
  v1 = objc_msgSendSuper2(&v3, sel_font);

  return v1;
}

void sub_24E2D24B8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  OUTLINED_FUNCTION_4_5(v3);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for DynamicTypeTextField();
  v10.receiver = v1;
  v10.super_class = v7;
  objc_msgSendSuper2(&v10, sel_setFont_, a1);
  v8 = sub_24E344158();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
  sub_24E2D22D0(v6);

  v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCaseContentSizeCategory];
  *&v1[OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCaseContentSizeCategory] = 0;
}

id sub_24E2D25BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeTextField();
  return objc_msgSendSuper2(&v2, sel_textAlignment);
}

id sub_24E2D2648(uint64_t a1)
{
  sub_24E2D26B4(0);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DynamicTypeTextField();
  return objc_msgSendSuper2(&v4, sel_setTextAlignment_, a1);
}

void sub_24E2D2698(unsigned __int8 a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_directionalTextAlignment) != a1)
  {
    sub_24E2D26CC();
  }
}

void sub_24E2D26B4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_directionalTextAlignment);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_directionalTextAlignment) = a1;
  sub_24E2D2698(v2);
}

void sub_24E2D26CC()
{
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_directionalTextAlignment))
  {
    v1 = v0;
    if (*(v0 + OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_directionalTextAlignment) == 1)
    {
      v2 = [v0 traitCollection];
      v3 = sub_24E3483B8();

      if (v3)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      v8.super_class = type metadata accessor for DynamicTypeTextField();
      objc_msgSendSuper2(&v8, sel_setTextAlignment_, v4, v1, v8.super_class, v9.receiver, v9.super_class);
    }

    else
    {
      v5 = [v0 traitCollection];
      v6 = sub_24E3483B8();

      if (v6)
      {
        v7 = 0;
      }

      else
      {
        v7 = 2;
      }

      v9.super_class = type metadata accessor for DynamicTypeTextField();
      objc_msgSendSuper2(&v9, sel_setTextAlignment_, v7, v8.receiver, v8.super_class, v1, v9.super_class);
    }
  }
}

uint64_t sub_24E2D27B8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  OUTLINED_FUNCTION_4_5(v3);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = sub_24E344158();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DynamicTypeTextField();
  v25.receiver = v1;
  v25.super_class = v11;
  objc_msgSendSuper2(&v25, sel_traitCollectionDidChange_, a1);
  v12 = [v1 traitCollection];
  v13 = [v12 layoutDirection];

  if (!a1 || v13 != [a1 layoutDirection])
  {
    sub_24E2D26CC();
  }

  v14 = OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  sub_24E0B01B4(&v1[v14], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_24DF8C95C(v6, &unk_27F1E5CE0);
  }

  (*(v8 + 32))(v10, v6, v7);
  v16 = [v1 traitCollection];
  v17 = [v16 preferredContentSizeCategory];

  if (*&v1[OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCaseContentSizeCategory])
  {
    v18 = sub_24E347CF8();
    v20 = v19;
    if (v18 == sub_24E347CF8() && v20 == v21)
    {

      return (*(v8 + 8))(v10, v7);
    }

    v23 = sub_24E348C08();

    if (v23)
    {
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
  }

  sub_24E2D1DA0(v10);
  return (*(v8 + 8))(v10, v7);
}

void sub_24E2D2AF0(uint64_t a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for DynamicTypeTextField();
  objc_msgSendSuper2(&v13, sel_measurementsWithFitting_in_, a1, a2, a3);
  v7 = [v3 font];
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = v7;
  [v7 lineHeight];

  v9 = [v3 font];
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  [v9 ascender];

  v11 = [v3 font];
  if (v11)
  {
    v12 = v11;
    [v11 descender];

    return;
  }

LABEL_7:
  __break(1u);
}

double sub_24E2D2CC0()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for DynamicTypeTextField();
  v1 = OUTLINED_FUNCTION_28();
  objc_msgSendSuper2(v2, v3, v1, v0, v5);
  return *(v0 + OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_padding + 8);
}

double sub_24E2D2D48()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  OUTLINED_FUNCTION_28();
  v2 = sub_24E2D2CC0();

  return v2;
}

id sub_24E2D2DB4()
{
  OUTLINED_FUNCTION_29();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCaseContentSizeCategory) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCase;
  v2 = sub_24E344158();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_directionalTextAlignment) = 0;
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_padding);
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  v9 = type metadata accessor for DynamicTypeTextField();
  v5 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v6, v7, v5, v0, v9);
}

id sub_24E2D2E88(void *a1)
{
  *&v1[OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCaseContentSizeCategory] = 0;
  v3 = OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_fontUseCase;
  v4 = sub_24E344158();
  __swift_storeEnumTagSinglePayload(&v1[v3], 1, 1, v4);
  v1[OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_directionalTextAlignment] = 0;
  v5 = &v1[OBJC_IVAR____TtC12GameCenterUI20DynamicTypeTextField_padding];
  v6 = *(MEMORY[0x277D768C8] + 16);
  *v5 = *MEMORY[0x277D768C8];
  v5[1] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for DynamicTypeTextField();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_24E2D2F74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeTextField();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DynamicTypeTextField()
{
  result = qword_27F1EA470;
  if (!qword_27F1EA470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E2D3050()
{
  sub_24E0B02F4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for DynamicTypeTextField.DirectionalTextAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E2D31E0()
{
  result = qword_27F1EA480;
  if (!qword_27F1EA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA480);
  }

  return result;
}

unint64_t sub_24E2D3248()
{
  result = qword_27F1E39B8;
  if (!qword_27F1E39B8)
  {
    type metadata accessor for GameLeaderboardsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E39B8);
  }

  return result;
}

uint64_t sub_24E2D32A0(void **a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v5 = type metadata accessor for GameLeaderboardsAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = sub_24E347218();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  if (Strong)
  {
    v40 = Strong;
    v13 = sub_24E347AD8();
    v14 = v13;
    v15 = a1[1];
    if (v15)
    {
      v16 = v13;
      v17 = *a1;
      v18 = a1[5];
      sub_24DF88A8C(0, &qword_27F1E1750);
      v19 = v15;
      v20 = v17;
      v21 = sub_24E2602B0();
      v22 = [v19 type];
      v23 = v40;
      if (v22 == 1)
      {
        if (v18)
        {
          v24 = sub_24E347CB8();
        }

        else
        {
          v24 = 0;
        }

        [v21 setAutoScrollToPlayerId_];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
      sub_24E347328();
      if (v43)
      {
        sub_24DE56CE8(&v42, aBlock);
        v34 = v45;
        v35 = v46;
        __swift_project_boxed_opaque_existential_1(aBlock, v45);
        (*(v35 + 1))(v21, 1, v34, v35);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
      }

      else
      {
        sub_24E0B9DD0(&v42);
        v36 = [v23 navigationController];
        if (v36)
        {
          v37 = v36;
          [v36 pushViewController:v21 animated:1];
        }
      }

      (*(v9 + 104))(v11, *MEMORY[0x277D21CA8], v8);
      v14 = v16;
      sub_24E347AC8();

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v25 = objc_opt_self();
      v39 = *a1;
      sub_24E2D3C6C(a1, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_24E2D3CD0(v3, &v42);
      v26 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v27 = (v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = v14;
      sub_24E2D3D08(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v26);
      sub_24E2D3D6C(&v42, v29 + v27);
      v30 = v40;
      v31 = v41;
      *(v29 + v28) = v40;
      *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
      v46 = sub_24E2D3DA4;
      v47 = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24E260358;
      v45 = &block_descriptor_96;
      v32 = _Block_copy(aBlock);

      v33 = v30;

      [v25 loadLeaderboardsForGame:v39 withCompletionHandler:v32];

      _Block_release(v32);
    }
  }

  else
  {
    (*(v9 + 104))(v11, *MEMORY[0x277D21CA8], v8);
    return sub_24E347AA8();
  }

  return v14;
}

void sub_24E2D373C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, void *a7, uint64_t a8)
{
  v14 = sub_24E347218();
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 || !a1)
  {
    sub_24E2D3E8C();
    v22 = swift_allocError();
    *v23 = 0;
    sub_24E347AB8();
  }

  else
  {
    v42 = a7;
    v43 = a8;
    v46 = a4;
    v19 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];
    v20 = *(a1 + 16);
    v44 = v16;
    v45 = v15;
    if (v20)
    {
      v21 = a1 + 32;
      do
      {
        sub_24DFB4104(v21, &v49);
        sub_24E024710(&v49, &v47);
        sub_24DF88A8C(0, &qword_27F1E1758);
        v15 = swift_dynamicCast();
        if ((v15 & 1) != 0 && v52)
        {
          MEMORY[0x25303EA30]();
          if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24E347F48();
          }

          v15 = sub_24E347F88();
          v19 = v53;
        }

        v21 += 32;
        --v20;
      }

      while (v20);
    }

    MEMORY[0x28223BE20](v15);
    *(&v42 - 2) = a5;
    sub_24DFC56B4(sub_24E2D3EE0, (&v42 - 4), v19);
    v25 = v24;
    if (sub_24DFD8654())
    {
      sub_24DFFA844(0, (v25 & 0xC000000000000001) == 0, v25);
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x25303F560](0, v25);
      }

      else
      {
        v26 = *(v25 + 32);
      }

      v27 = v26;

      v28 = *a5;
      v29 = a5[5];
      sub_24DF88A8C(0, &qword_27F1E1750);
      v30 = v27;
      v31 = v28;
      v32 = sub_24E2602B0();
      if ([v30 type] == 1)
      {
        if (v29)
        {
          v33 = sub_24E347CB8();
        }

        else
        {
          v33 = 0;
        }

        [v32 setAutoScrollToPlayerId_];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
      sub_24E347328();
      if (v48)
      {
        sub_24DE56CE8(&v47, &v49);
        v36 = v50;
        v37 = v51;
        __swift_project_boxed_opaque_existential_1(&v49, v50);
        (*(v37 + 8))(v32, 1, v36, v37);
        __swift_destroy_boxed_opaque_existential_1(&v49);
      }

      else
      {
        sub_24E0B9DD0(&v47);
        v38 = [v42 navigationController];
        if (v38)
        {
          v39 = v38;
          [v38 pushViewController:v32 animated:1];
        }
      }

      v41 = v44;
      v40 = v45;
      (*(v44 + 104))(v18, *MEMORY[0x277D21CA8], v45);
      sub_24E347AC8();

      (*(v41 + 8))(v18, v40);
    }

    else
    {

      sub_24E2D3E8C();
      v34 = swift_allocError();
      *v35 = 0;
      sub_24E347AB8();
    }
  }
}

uint64_t sub_24E2D3BCC(id *a1, uint64_t a2)
{
  v3 = [*a1 baseLeaderboardID];
  v4 = sub_24E347CF8();
  v6 = v5;

  if (v4 == *(a2 + 16) && v6 == *(a2 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24E348C08();
  }

  return v8 & 1;
}

uint64_t sub_24E2D3C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLeaderboardsAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E2D3D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLeaderboardsAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24E2D3DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for GameLeaderboardsAction() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + 16);
  v12 = *(v3 + v10);
  v13 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24E2D373C(a1, a2, a3, v11, (v3 + v8), v3 + v9, v12, v13);
}

uint64_t block_copy_helper_96(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E2D3E8C()
{
  result = qword_27F1EA488;
  if (!qword_27F1EA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA488);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GameLeaderboardsActionImplementation.GameLeaderboardsActionImplementationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E2D3FE0()
{
  result = qword_27F1EA490;
  if (!qword_27F1EA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA490);
  }

  return result;
}

uint64_t sub_24E2D4058(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = sub_24E344048();
  OUTLINED_FUNCTION_2_7();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_24E2D48F0(a1, a2, a3, v21);
  sub_24E2D4A18(v21, a1, a2, a3, a6);
  sub_24E2D41CC(a2, a3, v20);
  sub_24E254458(a1, a4, a5, a6);
  sub_24DF97F28(v20);
  (*(v14 + 8))(v17, v12);
  return sub_24DF97ED4(v21);
}

uint64_t sub_24E2D41CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E2D48F0(v3, a1, a2, a3);
  (*(a2 + 24))(a1, a2);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFD48);
  v7 = sub_24E348A98();

  *(a3 + 72) = v7;
  return result;
}

uint64_t sub_24E2D4298(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_24E348698();
  OUTLINED_FUNCTION_2_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &AssociatedConformanceWitness - v10;
  OUTLINED_FUNCTION_2_7();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &AssociatedConformanceWitness - v15;
  v17 = swift_checkMetadataState();
  v22[3] = v17;
  v22[0] = a1;
  a1;
  sub_24E2D4520(v22, a2, a3, v11);
  sub_24DF8894C(v22);
  if (__swift_getEnumTagSinglePayload(v11, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v8 + 8))(v11, v21);
  }

  (*(v13 + 32))(v16, v11, AssociatedTypeWitness);
  v19 = (*(a3 + 72))(a2, a3);
  if (v19)
  {
    (*(AssociatedConformanceWitness + 56))(v16, v19, v17);
  }

  return (*(v13 + 8))(v16, AssociatedTypeWitness);
}

uint64_t sub_24E2D4520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E2D4880(a1, &v16);
  if (v17)
  {
    swift_getAssociatedTypeWitness();
    if (swift_dynamicCast())
    {
      v7 = v14;
      v15 = (*(a3 + 24))(a2, a3);
      MEMORY[0x28223BE20](v15);
      sub_24E347FC8();
      swift_getWitnessTable();
      sub_24E3481D8();

      if (BYTE8(v16) != 1)
      {
        v13 = *(a3 + 48);
        v13(a2, a3);
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        sub_24E347FC8();
        swift_getWitnessTable();
        sub_24E348198();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA498);
        if (sub_24E348208())
        {
          v13(a2, a3);
          sub_24E347FE8();

          v9 = a4;
          v10 = 0;
          v8 = AssociatedTypeWitness;
          return __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);
        }
      }
    }
  }

  else
  {
    sub_24DF8894C(&v16);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = a4;
  v10 = 1;
  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);
}

uint64_t sub_24E2D4880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E2D48F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 48))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v12 = v11;
  v13 = (*(a3 + 104))(a2, a3);
  v14 = MEMORY[0x277D225F8];
  *(a4 + 40) = MEMORY[0x277D85048];
  *(a4 + 48) = v14;
  *(a4 + 16) = v13;
  result = (*(a3 + 96))(a1, a2, a3);
  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 56) = result;
  *(a4 + 64) = v16 & 1;
  return result;
}

uint64_t sub_24E2D4A18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (*(a1 + 64) == 1)
  {
    v7 = (*(a4 + 24))(a3, a4);
    swift_getAssociatedTypeWitness();
    v8 = sub_24E347F18();
    for (i = v8; i != sub_24E347F98(); v8 = i)
    {
      v19 = sub_24E347F78();
      sub_24E347F38();
      if (v19)
      {
        v20 = *(v7 + 32 + 8 * v8);
      }

      else
      {
        v20 = sub_24E3489F8();
      }

      v21 = v20;
      sub_24E347FB8();
      [v21 setHidden_];
    }
  }

  v12 = *(a1 + 56);
  v22 = *(a4 + 24);
  v22(a3, a4);
  swift_getAssociatedTypeWitness();
  v13 = sub_24E347F98();

  result = sub_24E2541B4(v13, a1, a2, a5);
  v16 = v15 * v12;
  if ((v15 * v12) >> 64 == (v15 * v12) >> 63)
  {
    v22(a3, a4);
    v17 = sub_24E347FC8();
    swift_getWitnessTable();
    sub_24E348198();

    v22(a3, a4);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA498);
    sub_24E2D4DC4();
    swift_getWitnessTable();
    sub_24E348C78();

    sub_24E3489D8();
    sub_24E3489A8();
    while (1)
    {
      sub_24E3489C8();
      sub_24E3489B8();
      if (!v17)
      {
        break;
      }

      [v17 setHidden_];
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24E2D4DC4()
{
  result = qword_27F1EA4A0;
  if (!qword_27F1EA4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EA498);
    sub_24E11EB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA4A0);
  }

  return result;
}

double sub_24E2D4E50()
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v1 = 18.0;
  }

  else
  {
    v1 = 16.0;
  }

  GKIsXRUIIdiomShouldUsePadUI();
  return v1;
}

id sub_24E2D4EB0(void *a1)
{
  v2 = [a1 layer];
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for PlayerCardTheme();
  v4 = __swift_project_value_buffer(v3, qword_27F20BF00);
  v5 = [objc_allocWithZone(MEMORY[0x277D75C80]) init];
  v6 = sub_24E336558();

  [v2 setCornerRadius_];
  sub_24DFEBE24(-1);
  v7 = *(v4 + 64);

  return [a1 setBackgroundColor_];
}

BOOL static ViewBackgroundStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v88 = *(a1 + 32);
  v89 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  switch(v4)
  {
    case 1:
      if (v11 != 1)
      {
        goto LABEL_20;
      }

      v41 = *(a1 + 16);
      sub_24E2D5398();
      v42 = OUTLINED_FUNCTION_1_143();
      sub_24DFD7E3C(v42, v43, v7, v8, v9, v10, 1);
      OUTLINED_FUNCTION_0_179();
      OUTLINED_FUNCTION_2_123();
      sub_24DFD7E3C(v44, v45, v46, v47, v48, v49, v50);
      if ((sub_24E348628() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_179();
        OUTLINED_FUNCTION_2_123();
        sub_24DFEC8B4(v79, v80, v81, v82, v83, v84, v85);
        v72 = OUTLINED_FUNCTION_1_143();
        v75 = v9;
        v74 = v7;
        v77 = v10;
        v76 = v8;
        v78 = 1;
        goto LABEL_21;
      }

      v51 = sub_24E348628();
      OUTLINED_FUNCTION_0_179();
      OUTLINED_FUNCTION_2_123();
      sub_24DFEC8B4(v52, v53, v54, v55, v56, v57, v58);
      v59 = OUTLINED_FUNCTION_1_143();
      sub_24DFEC8B4(v59, v60, v7, v8, v9, v10, 1);
      result = 0;
      if ((v51 & 1) != 0 && v41 == *&v7 && *&v3 == *&v8)
      {
        result = *&v89 == *&v10 && *&v88 == *&v9;
      }

      break;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_20;
      }

      v25 = OUTLINED_FUNCTION_1_143();
      v27 = v26;
      v28 = v10;
      v29 = v10;
      v31 = v30;
      sub_24DFD7E3C(v25, v32, v7, v8, v9, v29, 2);
      OUTLINED_FUNCTION_3_124();
      sub_24DFD7E3C(v33, v34, v35, v36, v37, v89, 2);
      sub_24E12D5B0(v31, v5);
      v86 = v38;
      sub_24DFEC8B4(v31, v2, v27, v3, v7, v89, 2);
      v39 = OUTLINED_FUNCTION_1_143();
      sub_24DFEC8B4(v39, v40, v7, v8, v9, v28, 2);
      result = v86 & 1;
      break;
    case 3:
      if (v11 != 3 || v6 | v5 | v7 | v8 | v9 | v10)
      {
        goto LABEL_20;
      }

      sub_24DFEC8B4(*a1, v2, *(a1 + 16), v3, v88, v89, 3);
      sub_24DFEC8B4(0, 0, 0, v8, v9, v10, 3);
      result = 1;
      break;
    default:
      if (*(a2 + 48))
      {
LABEL_20:
        v62 = OUTLINED_FUNCTION_1_143();
        sub_24DFD7E3C(v62, v63, v7, v8, v9, v10, v11);
        v64 = OUTLINED_FUNCTION_4_106();
        sub_24DFD7E3C(v64, v65, v66, v67, v88, v89, v4);
        v68 = OUTLINED_FUNCTION_4_106();
        sub_24DFEC8B4(v68, v69, v70, v71, v88, v89, v4);
        v72 = v5;
        v73 = v6;
        v75 = v9;
        v74 = v7;
        v76 = v8;
        v77 = v10;
        v78 = v11;
LABEL_21:
        sub_24DFEC8B4(v72, v73, v74, v76, v75, v77, v78);
        result = 0;
      }

      else
      {
        v87 = *(a2 + 32);
        v12 = *(a1 + 16);
        v13 = *a1;
        sub_24E2D5398();
        v14 = OUTLINED_FUNCTION_1_143();
        sub_24DFD7E3C(v14, v15, v7, v8, v9, v10, 0);
        v16 = v12;
        OUTLINED_FUNCTION_3_124();
        sub_24DFD7E3C(v17, v18, v19, v20, v21, v89, 0);
        LOBYTE(v12) = sub_24E348628();
        sub_24DFEC8B4(v13, v2, v16, v3, v7, v89, 0);
        v22 = OUTLINED_FUNCTION_1_143();
        sub_24DFEC8B4(v22, v23, v7, v8, v87, v10, 0);
        result = v12 & 1;
      }

      break;
  }

  return result;
}

unint64_t sub_24E2D5398()
{
  result = qword_27F1E2630;
  if (!qword_27F1E2630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E2630);
  }

  return result;
}

uint64_t GKVisualEffects.viewBackgroundStyle.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
}

uint64_t sub_24E2D5404(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t type metadata accessor for PlayerProfileAction()
{
  result = qword_27F1EA4A8;
  if (!qword_27F1EA4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E2D5508()
{
  result = sub_24E347208();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E2D5594(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_24E347E98();
  }

  __break(1u);
  return result;
}

uint64_t sub_24E2D5614()
{
  v0 = sub_24E344158();
  __swift_allocate_value_buffer(v0, qword_27F1EA4C0);
  v1 = __swift_project_value_buffer(v0, qword_27F1EA4C0);
  if (qword_27F1DDF90 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_27F20BAB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24E2D56FC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = sub_24E3444F8();
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v10, a2);
  if (qword_27F1DDC60 != -1)
  {
    OUTLINED_FUNCTION_7_74();
  }

  v11 = sub_24E344158();
  v12 = __swift_project_value_buffer(v11, qword_27F1EA4C0);
  (*(*(v11 - 8) + 16))(v9, v12, v11);
  (*(v5 + 104))(v9, *MEMORY[0x277D22618], v3);
  v15[3] = v3;
  v15[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(v5 + 16))(boxed_opaque_existential_1, v9, v3);
  sub_24E344508();
  return (*(v5 + 8))(v9, v3);
}

char *sub_24E2D58B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  *&v5[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_previousTitleTextColor] = 0;
  v17 = OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_loadingIndicator;
  *&v5[v17] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  *&v5[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknamePresenter] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA508);
  OUTLINED_FUNCTION_16_46(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89B0);
  OUTLINED_FUNCTION_16_46(v19);
  v20 = &v5[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_accessoryAction];
  *v20 = 0;
  v20[1] = 0;
  v5[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_disabled] = 0;
  type metadata accessor for DynamicTypeTextField();
  if (qword_27F1DDC60 != -1)
  {
    OUTLINED_FUNCTION_7_74();
  }

  v21 = __swift_project_value_buffer(v10, qword_27F1EA4C0);
  (*(v12 + 16))(v16, v21, v10);
  *&v5[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_textLabel] = sub_24E2D1C10(v16, 0);
  v33.receiver = v5;
  v33.super_class = type metadata accessor for NicknameFieldCollectionViewCell();
  v22 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = *MEMORY[0x277D768C8];
  v24 = *(MEMORY[0x277D768C8] + 8);
  v25 = *(MEMORY[0x277D768C8] + 16);
  v26 = *(MEMORY[0x277D768C8] + 24);
  v27 = v22;
  [v27 setLayoutMargins_];
  v28 = OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_textLabel;
  [*&v27[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_textLabel] setMinimumFontSize_];
  [*&v27[v28] setAutocapitalizationType_];
  [*&v27[v28] setKeyboardType_];
  [*&v27[v28] setAutocorrectionType_];
  [*&v27[v28] setReturnKeyType_];
  [*&v27[v28] setClearButtonMode_];
  [*&v27[v28] setAdjustsFontSizeToFitWidth_];
  v29 = [v27 contentView];
  [v29 addSubview_];

  v30 = OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_loadingIndicator;
  [*&v27[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_loadingIndicator] setHidesWhenStopped_];
  v31 = [v27 contentView];

  [v31 addSubview_];
  return v27;
}

void sub_24E2D5C1C()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_previousTitleTextColor) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_loadingIndicator;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknamePresenter) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA508);
  OUTLINED_FUNCTION_17_43(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89B0);
  OUTLINED_FUNCTION_17_43(v3);
  v4 = (v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_accessoryAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_disabled) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E2D5D34(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_textLabel);
  if (a2)
  {
    v4 = sub_24E347CB8();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];
}

id sub_24E2D5DB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-v3 - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA5A0);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v22[-v7 - 8];
  v9 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknamePresenter);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_textLabel);
    v11 = v9;

    v12 = sub_24E347CB8();

    [v10 setPlaceholder_];

    v13 = sub_24E2EEF28();
    sub_24E1FD76C(v13, v14, v10);
    [v10 setDelegate_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA5C0);
    sub_24E041D60(&qword_27F1EA5C8, &qword_27F1EA5C0);
    sub_24E347198();
    type metadata accessor for NicknameFieldCollectionViewCell();
    sub_24E3471A8();
    __swift_destroy_boxed_opaque_existential_1(v22);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA508);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
    v16 = OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_suggestionsChangedSubscription;
    swift_beginAccess();
    sub_24DF95BE4(v8, v1 + v16, &unk_27F1EA5A0);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA5D0);
    sub_24E041D60(&qword_27F1E89E0, &unk_27F1EA5D0);
    sub_24E347198();
    sub_24E3471A8();
    __swift_destroy_boxed_opaque_existential_1(v22);

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89B0);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v17);
    v18 = OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknameUpdatedSubscription;
    swift_beginAccess();
    sub_24DF95BE4(v4, v1 + v18, &qword_27F1E89B8);
    return swift_endAccess();
  }

  else
  {
    v20 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_textLabel);

    return [v20 setText_];
  }
}

uint64_t (*sub_24E2D6188(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2D8AC0;
}

uint64_t (*sub_24E2D61EC(void *a1))(void *a1)
{
  v1 = sub_24E2D6188(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E0EAC04;
}

id (*sub_24E2D6244(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2D8A9C;
}

void sub_24E2D62A8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknamePresenter);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknamePresenter) = a1;
  v3 = a1;

  sub_24E2D5DB4();
}

uint64_t (*sub_24E2D6300(void *a1))(void *a1)
{
  v1 = sub_24E2D6244(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E2D8A6C;
}

id sub_24E2D6358()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_textLabel];
  v2 = OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_disabled;
  v3 = v0[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_disabled];
  v4 = [v1 textColor];
  if (v4)
  {
    v5 = v4;
    v6 = 1.0;
    if (v3)
    {
      v6 = 0.5;
    }

    v7 = [v4 colorWithAlphaComponent_];
  }

  else
  {
    v7 = 0;
  }

  [v1 setTextColor_];

  [v1 setUserInteractionEnabled_];
  [v0 setUserInteractionEnabled_];

  return [v0 setNeedsDisplay];
}

id sub_24E2D6454()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for NicknameFieldCollectionViewCell();
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_textLabel];
  [v0 bounds];
  [v0 layoutMargins];
  OUTLINED_FUNCTION_4_28(v2);
  [v1 measurementsWithFitting:v0 in:v3];
  v5 = v4;
  OUTLINED_FUNCTION_10_64();
  [v0 bounds];
  [v0 layoutMargins];
  OUTLINED_FUNCTION_4_16(v6, v7);
  OUTLINED_FUNCTION_0_33();
  MinX = CGRectGetMinX(v31);
  [v0 bounds];
  [v0 layoutMargins];
  OUTLINED_FUNCTION_4_16(v9, v10);
  OUTLINED_FUNCTION_0_33();
  MinY = CGRectGetMinY(v32);
  if (qword_27F1DDC68 != -1)
  {
    OUTLINED_FUNCTION_1_144();
  }

  v12 = sub_24E3444F8();
  __swift_project_value_buffer(v12, qword_27F1EA4D8);
  OUTLINED_FUNCTION_19_1();
  sub_24E3441B8();
  v14 = MinY + v13;
  OUTLINED_FUNCTION_1_88();
  OUTLINED_FUNCTION_10_64();
  OUTLINED_FUNCTION_18_44();
  OUTLINED_FUNCTION_4_16(v15, v16);
  OUTLINED_FUNCTION_0_33();
  [v1 setFrame_];
  v17 = *&v0[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_loadingIndicator];
  OUTLINED_FUNCTION_1_88();
  OUTLINED_FUNCTION_18_44();
  OUTLINED_FUNCTION_4_28(v18);
  [v17 sizeThatFits_];
  v21 = v20;
  v23 = v22;
  OUTLINED_FUNCTION_1_88();
  OUTLINED_FUNCTION_18_44();
  OUTLINED_FUNCTION_4_16(v24, v25);
  OUTLINED_FUNCTION_0_33();
  v26 = CGRectGetMaxX(v34) - v21;
  OUTLINED_FUNCTION_1_88();
  OUTLINED_FUNCTION_10_64();
  OUTLINED_FUNCTION_18_44();
  OUTLINED_FUNCTION_4_16(v27, v28);
  OUTLINED_FUNCTION_0_33();
  return [v17 setFrame_];
}

double sub_24E2D673C(double a1)
{
  [v1 layoutMargins];
  [*&v1[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_textLabel] measurementsWithFitting:v1 in:{a1 - v4 - v5, 1.79769313e308}];
  v7 = v6;
  OUTLINED_FUNCTION_10_64();
  if (qword_27F1DDC68 != -1)
  {
    OUTLINED_FUNCTION_1_144();
  }

  v8 = sub_24E3444F8();
  __swift_project_value_buffer(v8, qword_27F1EA4D8);
  OUTLINED_FUNCTION_4_107();
  sub_24E3441B8();
  v10 = v9;
  if (qword_27F1DDC70 != -1)
  {
    OUTLINED_FUNCTION_5_108();
  }

  __swift_project_value_buffer(v8, qword_27F1EA4F0);
  OUTLINED_FUNCTION_4_107();
  sub_24E344178();
  v12 = v7 - v2 + v10 + v11;
  [v1 layoutMargins];
  OUTLINED_FUNCTION_10_64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E367D20;
  *(inited + 32) = v12;
  v14 = OUTLINED_FUNCTION_4_107();
  sub_24E287854(v15, v14, v16, v17);
  swift_setDeallocating();
  return a1;
}

uint64_t sub_24E2D6930(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  v6 = 2;
  if (v5 == 2)
  {
    v6 = 3;
  }

  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = v6;
  }

  v16 = MEMORY[0x277D84F90];
  if (v7)
  {
    sub_24DF88A8C(0, &qword_27F1EA5B8);
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      sub_24E2D6B1C(v10, v11);
      MEMORY[0x25303EA30]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v12 = [*&v2[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_textLabel] textInputSuggestionDelegate];
  if (v12)
  {
    v13 = v12;
    sub_24DF88A8C(0, &qword_27F1EA5B8);
    v14 = sub_24E347EE8();

    [v13 setSuggestions_];

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_24E2D6B1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_24E347CB8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textSuggestionWithInputText_];

  return v3;
}

uint64_t sub_24E2D6BAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89B8);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89B0);
  OUTLINED_FUNCTION_0_14();
  v33 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v32 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA5A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA508);
  OUTLINED_FUNCTION_0_14();
  v19 = v18;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  v23 = type metadata accessor for NicknameFieldCollectionViewCell();
  v35.receiver = v0;
  v35.super_class = v23;
  objc_msgSendSuper2(&v35, sel_prepareForReuse);
  sub_24E2D5D34(0, 0);
  v24 = *&v0[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_textLabel];
  [v24 setPlaceholder_];
  v25 = &v1[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_accessoryAction];
  v26 = *&v1[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_accessoryAction];
  *v25 = 0;
  *(v25 + 1) = 0;
  sub_24E059AAC(v26);
  [v24 setDelegate_];
  sub_24E2D62A8(0);
  v27 = OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_suggestionsChangedSubscription;
  swift_beginAccess();
  sub_24DF95B98(&v1[v27], v16, &unk_27F1EA5A0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_24DF8BFF4(v16, &unk_27F1EA5A0);
  }

  else
  {
    (*(v19 + 32))(v22, v16, v17);
    if (*&v1[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknamePresenter])
    {

      sub_24E346F68();
    }

    (*(v19 + 8))(v22, v17);
  }

  v28 = v32;
  v29 = OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknameUpdatedSubscription;
  swift_beginAccess();
  sub_24DF95B98(&v1[v29], v6, &qword_27F1E89B8);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_24DF8BFF4(v6, &qword_27F1E89B8);
  }

  else
  {
    (*(v33 + 32))(v28, v6, v7);
    if (*&v1[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknamePresenter])
    {

      sub_24E346F68();
    }

    (*(v33 + 8))(v28, v7);
  }

  __swift_storeEnumTagSinglePayload(v13, 1, 1, v17);
  swift_beginAccess();
  sub_24DF95BE4(v13, &v1[v27], &unk_27F1EA5A0);
  swift_endAccess();
  v30 = v34;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v7);
  swift_beginAccess();
  sub_24DF95BE4(v30, &v1[v29], &qword_27F1E89B8);
  return swift_endAccess();
}

id sub_24E2D70E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  if (qword_27F1DDC68 != -1)
  {
    OUTLINED_FUNCTION_1_144();
  }

  v11 = sub_24E3444F8();
  __swift_project_value_buffer(v11, qword_27F1EA4D8);
  v12 = [a3 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v14 = v13;

  v15 = *(v6 + 8);
  v15(v10, v4);
  if (qword_27F1DDC70 != -1)
  {
    OUTLINED_FUNCTION_5_108();
  }

  __swift_project_value_buffer(v11, qword_27F1EA4F0);
  v16 = [a3 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v18 = v17;

  v15(v10, v4);
  v19 = v14 + v18;
  v20 = objc_opt_self();
  v21 = [v20 fractionalWidthDimension_];
  v22 = [v20 absoluteDimension_];
  v23 = objc_opt_self();
  v53 = [v23 sizeWithWidthDimension:v21 heightDimension:v22];

  v24 = [v20 fractionalWidthDimension_];
  if (qword_27F1DDA08 != -1)
  {
    swift_once();
  }

  v25 = [v20 absoluteDimension_];
  v26 = [v23 sizeWithWidthDimension:v24 heightDimension:v25];

  sub_24DF88A8C(0, &qword_27F1E5838);
  type metadata accessor for SeparatorView();
  v27 = sub_24DFEA80C();
  v29 = v28;
  v30 = objc_opt_self();
  v31 = [v30 layoutAnchorWithEdges_];
  v32 = [v30 layoutAnchorWithEdges_];
  v52 = v26;
  v33 = sub_24E1DB9C0(v52, v27, v29, v31, v32);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  v34 = *(v54 + 16);

  if (v34 < 2)
  {
    v36 = v53;
    v39 = [objc_opt_self() itemWithLayoutSize_];
  }

  else
  {
    sub_24DF88A8C(0, &qword_27F1EA590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_24E369990;
    *(v35 + 32) = v33;
    v36 = v53;
    v37 = v53;
    v38 = v33;
    v39 = sub_24E14E72C(v37);
  }

  v40 = v39;
  swift_getKeyPath();
  sub_24E347128();

  v41 = *(v54 + 16);

  v42 = [v20 fractionalWidthDimension_];
  v43 = [v20 absoluteDimension_];
  v44 = [v23 sizeWithWidthDimension:v42 heightDimension:v43];

  v45 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_24E369990;
  *(v46 + 32) = v40;
  sub_24DF88A8C(0, &qword_27F1EA590);
  v47 = v40;
  v48 = sub_24E347EE8();

  v49 = [v45 verticalGroupWithLayoutSize:v44 subitems:v48];

  v50 = [objc_opt_self() sectionWithGroup_];
  return v50;
}