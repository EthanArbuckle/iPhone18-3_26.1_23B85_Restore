unint64_t sub_24E20B434()
{
  result = qword_27F1E7E58;
  if (!qword_27F1E7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7E58);
  }

  return result;
}

unint64_t sub_24E20B48C()
{
  result = qword_27F1E7E60;
  if (!qword_27F1E7E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7E60);
  }

  return result;
}

uint64_t sub_24E20B504(uint64_t a1, uint64_t a2)
{
  result = sub_24E20B8A0(&qword_27F1E7E68, a2, type metadata accessor for GameLayerAchievementsPresenter);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AchievementsListHeaderStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AchievementsListSectionHeaderStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E20B788(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E20B7E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E20B840(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_24E20B8A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24E20B8E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_113()
{

  return GKGetLocalizedStringFromTableInBundle();
}

uint64_t OUTLINED_FUNCTION_4_83()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_40()
{

  return sub_24E348C08();
}

void OUTLINED_FUNCTION_17_33()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 33685504;
  *(v0 + 56) = 0;
}

uint64_t OUTLINED_FUNCTION_18_34()
{

  return sub_24E347CB8();
}

void sub_24E20BA98(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v75 = a2;
  v70 = a1;
  v79 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v78 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v77 = v9 - v8;
  v10 = sub_24E344988();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v80 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v67 - v22;
  v72 = sub_24E344998();
  OUTLINED_FUNCTION_0_14();
  v76 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_1();
  v28 = v27 - v26;
  v29 = type metadata accessor for EmptyStateData();
  MEMORY[0x28223BE20](v29 - 8);
  OUTLINED_FUNCTION_7_1();
  v32 = v31 - v30;
  sub_24E2D4E50();
  *&v35 = a3 - v33 - v34;
  type metadata accessor for EmptyStateView();
  v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C0);
  sub_24E347148();
  v37 = v81[0];
  v38 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_emptyStateData;
  swift_beginAccess();
  sub_24E1A8F38(v37 + v38, v32);

  sub_24E2D93A0(v32, 0);
  sub_24DFE22E0(v32);
  v73 = v36;
  v39 = EmptyStateView.sizeThatFits(_:)(__PAIR128__(*&a4, v35));
  v68 = sub_24E3442D8();
  v82 = v68;
  v83 = MEMORY[0x277D226E0];
  __swift_allocate_boxed_opaque_existential_1(v81);
  sub_24E3442B8();
  v40 = MEMORY[0x277D85048];
  v41 = MEMORY[0x277D225F8];
  *(v23 + 3) = MEMORY[0x277D85048];
  *(v23 + 4) = v41;
  *v23 = v39.width;
  v42 = *(v12 + 104);
  OUTLINED_FUNCTION_4_84();
  v42();
  *(v20 + 3) = v40;
  *(v20 + 4) = v41;
  *v20 = v39.height;
  OUTLINED_FUNCTION_4_84();
  v42();
  v43 = *MEMORY[0x277D22988];
  (v42)(v17, v43, v10);
  v44 = OUTLINED_FUNCTION_2_98();
  (v42)(v44);
  v74 = v28;
  v69 = v17;
  sub_24E3449A8();
  swift_getKeyPath();
  v45 = v70;
  sub_24E347128();

  if (v81[0] < 1)
  {
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    v56 = v75;
    v54 = v72;
    v57 = MEMORY[0x277D22998];
  }

  else
  {
    type metadata accessor for ActivityFeedAddFriendSuggestionView();
    v46 = v75;
    sub_24E2AECE8(v45, v75);
    v48 = v47;
    v50 = v49;
    v82 = v68;
    v83 = MEMORY[0x277D226E0];
    __swift_allocate_boxed_opaque_existential_1(v81);
    sub_24E3442B8();
    v51 = MEMORY[0x277D85048];
    *(v23 + 3) = MEMORY[0x277D85048];
    v52 = MEMORY[0x277D225F8];
    *(v23 + 4) = MEMORY[0x277D225F8];
    *v23 = v48;
    OUTLINED_FUNCTION_4_84();
    v42();
    *(v20 + 3) = v51;
    *(v20 + 4) = v52;
    *v20 = v50;
    OUTLINED_FUNCTION_4_84();
    v42();
    (v42)(v69, v43, v10);
    v53 = OUTLINED_FUNCTION_2_98();
    (v42)(v53);
    v54 = v72;
    *(&v87 + 1) = v72;
    v55 = MEMORY[0x277D22998];
    v88 = MEMORY[0x277D22998];
    __swift_allocate_boxed_opaque_existential_1(&v86);
    sub_24E3449A8();
    v56 = v46;
    v57 = v55;
  }

  v82 = v54;
  v83 = v57;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
  v59 = v76;
  v60 = v74;
  (*(v76 + 16))(boxed_opaque_existential_1, v74, v54);
  sub_24DF9D9D0(&v86, v84);
  v84[5] = sub_24E2D4E50();
  v84[6] = v61;
  v84[7] = v62;
  v84[8] = v63;
  v85 = xmmword_24E385170;
  v64 = [v56 traitCollection];
  v65 = v77;
  sub_24DF9D578(v77);
  v66 = v79;
  sub_24E344A18();
  OUTLINED_FUNCTION_7_10();

  (*(v78 + 8))(v65, v66);
  sub_24E20CDFC(v81);
  (*(v59 + 8))(v60, v54);
  sub_24DF9DA40(&v86);
  OUTLINED_FUNCTION_1_16();
}

double sub_24E20C174@<D0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_emptyStateView);
  v18 = type metadata accessor for EmptyStateView();
  v19 = sub_24E20CEB4(&qword_27F1E7EB8, type metadata accessor for EmptyStateView);
  *&v17 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_friendSuggestionView);
  v7 = v5;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (([v6 isHidden] & 1) == 0)
  {
    v8 = type metadata accessor for ActivityFeedAddFriendSuggestionView();
    v9 = sub_24E20CEB4(&qword_27F1E7EC0, type metadata accessor for ActivityFeedAddFriendSuggestionView);
    v11 = v6;
    v10 = v6;
  }

  sub_24E2D4E50();
  OUTLINED_FUNCTION_7_10();
  v13 = v12;
  v15 = v14;
  sub_24DE56CE8(&v17, a1);
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = v2;
  *(a1 + 88) = v3;
  *(a1 + 96) = v13;
  *(a1 + 104) = v15;
  result = 10.0;
  *(a1 + 112) = xmmword_24E385170;
  return result;
}

char *sub_24E20C2C8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_contentBackgroundView;
  type metadata accessor for BackgroundView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_emptyStateView;
  type metadata accessor for EmptyStateView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_friendSuggestionView;
  type metadata accessor for ActivityFeedAddFriendSuggestionView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19.receiver = v4;
  v19.super_class = type metadata accessor for ActivityFeedAddFriendsView();
  v12 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OUTLINED_FUNCTION_1_16();
  [v14 v15];
  v16 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_contentBackgroundView;
  v17 = *&v12[OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_contentBackgroundView];
  sub_24E2D4EB0(v17);

  [v12 addSubview_];
  [v12 addSubview_];
  [v12 addSubview_];

  return v12;
}

void sub_24E20C468()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_contentBackgroundView;
  type metadata accessor for BackgroundView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_emptyStateView;
  type metadata accessor for EmptyStateView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_friendSuggestionView;
  type metadata accessor for ActivityFeedAddFriendSuggestionView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_24E348AE8();
  __break(1u);
}

void sub_24E20C558()
{
  v1 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = [v0 traitCollection];
  sub_24DF9D578(v7);
  sub_24E344A18();
  OUTLINED_FUNCTION_7_10();

  (*(v3 + 8))(v7, v1);
  sub_24E20CDFC(v9);
  OUTLINED_FUNCTION_1_16();
}

id sub_24E20C6D0()
{
  v1 = v0;
  v2 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for ActivityFeedAddFriendsView();
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  [v0 bounds];
  OUTLINED_FUNCTION_7_10();
  v9 = [v0 traitCollection];
  sub_24DF9D578(v8);
  OUTLINED_FUNCTION_1_16();
  sub_24E344A08();

  (*(v4 + 8))(v8, v2);
  sub_24E20CDFC(v18);
  v10 = *&v0[OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_contentBackgroundView];
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
  return sub_24E2D4EB0(v10);
}

uint64_t sub_24E20C8D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E317780();
  *a1 = result;
  return result;
}

id sub_24E20C8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v4 = type metadata accessor for EmptyStateData();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F28);
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C0);
  sub_24E347128();

  sub_24E20CEB4(&qword_27F1DFD30, type metadata accessor for EmptyStateData);
  v12 = v16;
  v11 = v17;
  sub_24E347158();
  EmptyStateView.apply(contentsOf:with:asPartOf:)(v10, v12, v11);
  (*(v7 + 8))(v10, v5);
  v13 = v15;
  swift_getKeyPath();
  sub_24E347128();

  if (v18 < 1)
  {
    [*&v13[OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_friendSuggestionView] setHidden_];
  }

  else
  {
    [*&v13[OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsView_friendSuggestionView] setHidden_];
    sub_24E2AF058(a1, v12, v11);
  }

  return [v13 setNeedsLayout];
}

uint64_t sub_24E20CB58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_emptyStateData;
  swift_beginAccess();
  return sub_24E1A8F38(v3 + v4, a2);
}

uint64_t sub_24E20CBB8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EmptyStateData();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E1A8F38(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_emptyStateData;
  swift_beginAccess();
  sub_24E20CE50(v6, v7 + v8);
  return swift_endAccess();
}

id sub_24E20CCB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityFeedAddFriendsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E20CE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E20CEB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E20CEFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E20CF1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_24E20D018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E20D060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SmallPlayerCardData();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v76 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  OUTLINED_FUNCTION_0_14();
  v85 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v81 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v88 = &v76 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v76 - v21;
  v23 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v91 = v24;
  MEMORY[0x28223BE20](v25);
  v84 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v26;
  MEMORY[0x28223BE20](v27);
  v89 = &v76 - v28;
  sub_24E05F70C();
  swift_getKeyPath();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7EC8);
  v87 = a1;
  sub_24E347128();

  v86 = a3;
  if (!v96)
  {
    v29 = &qword_27F1DEE90;
    v30 = &v95;
    goto LABEL_5;
  }

  sub_24DE56CE8(&v95, &v97);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v97);
    v29 = &unk_27F1EAC90;
    v30 = v12;
LABEL_5:
    sub_24DF8C95C(v30, v29);
    v31 = v92;
    v32 = (v92 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButtonActionBlock);
    OUTLINED_FUNCTION_10_36();
    v33 = *v32;
    *v32 = 0;
    v32[1] = 0;
    sub_24DE73FA0(v33);
    [*(v31 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButton) setHidden_];
    goto LABEL_7;
  }

  v34 = v85;
  v77 = *(v85 + 32);
  v77(v22, v12, v13);
  (*(v34 + 16))(v88, v22, v13);
  sub_24DF89628(&v97, &v95);
  v35 = v91;
  v36 = *(v91 + 16);
  v78 = v22;
  v37 = v84;
  v36(v84, v89, v23);
  v38 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v79 = v23;
  v39 = (v16 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v35 + 80) + v39 + 40) & ~*(v35 + 80);
  v80 = v7;
  v41 = (v82 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v77((v42 + v38), v88, v13);
  v43 = v42 + v39;
  v23 = v79;
  sub_24DE56CE8(&v95, v43);
  v44 = v42 + v40;
  v45 = v92;
  (*(v91 + 32))(v44, v37, v23);
  *(v42 + v41) = a3;
  v46 = (v45 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButtonActionBlock);
  OUTLINED_FUNCTION_10_36();
  v47 = *v46;
  *v46 = sub_24E20DE14;
  v46[1] = v42;

  v7 = v80;
  sub_24DE73FA0(v47);
  [*(v45 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButton) setHidden_];
  (*(v85 + 8))(v78, v13);
  __swift_destroy_boxed_opaque_existential_1(&v97);
LABEL_7:
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_114();

  if (!v96)
  {
    v49 = &qword_27F1DEE90;
    v50 = &v95;
    goto LABEL_11;
  }

  sub_24DE56CE8(&v95, &v97);
  v48 = v83;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v48, 1, v13) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v97);
    v49 = &unk_27F1EAC90;
    v50 = v48;
LABEL_11:
    sub_24DF8C95C(v50, v49);
    v51 = (v92 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_buttonActionBlock);
    OUTLINED_FUNCTION_10_36();
    v52 = *v51;
    *v51 = 0;
    v51[1] = 0;
    goto LABEL_13;
  }

  v53 = v48;
  v55 = v85 + 32;
  v54 = *(v85 + 32);
  v56 = v81;
  v54(v81, v53, v13);
  v54(v88, v56, v13);
  sub_24DE56CE8(&v97, &v95);
  v57 = v91;
  (*(v91 + 16))(v84, v89, v23);
  v58 = *(v55 + 48);
  v79 = v23;
  v59 = (v58 + 16) & ~v58;
  v60 = (v16 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = *(v57 + 80);
  v80 = v7;
  v62 = (v61 + v60 + 40) & ~v61;
  v63 = (v82 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v65 = v64 + v59;
  v23 = v79;
  v54(v65, v88, v13);
  sub_24DE56CE8(&v95, v64 + v60);
  (*(v57 + 32))(v64 + v62, v84, v23);
  *(v64 + v63) = v86;
  v66 = (v92 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_buttonActionBlock);
  OUTLINED_FUNCTION_10_36();
  v67 = *v66;
  *v66 = sub_24E20DBA4;
  v66[1] = v64;

  v52 = v67;
  v7 = v80;
LABEL_13:
  sub_24DE73FA0(v52);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_114();

  *(v92 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_disabled) = (v95 & 1) == 0;
  sub_24DFD676C();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_114();

  v68 = v95;
  if (v95)
  {
    if (sub_24DFD8654(v95) <= 0)
    {
    }

    else
    {
      v69 = v23;
      v70 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_avatarView;
      v71 = v92;
      swift_beginAccess();
      v72 = *(v71 + v70);
      if (v72)
      {
        swift_getKeyPath();
        v73 = v7;
        v74 = v72;
        sub_24E347128();

        GKPlayerGroupView.configure(players:messagesGroupIdentifier:playerSelectionProxy:)(v68, v93, v94, 0);

        v7 = v73;
      }

      v23 = v69;
    }
  }

  sub_24E347148();
  sub_24DFD7674(v7);
  sub_24E20DB48(v7);
  return (*(v91 + 8))(v89, v23);
}

uint64_t sub_24E20D9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = sub_24E347638();
  (*(*(v10 - 8) + 16))(v9, a3, v10);
  (*(v6 + 104))(v9, *MEMORY[0x277D21E10], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  sub_24E3473B8();

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_24E20DB48(uint64_t a1)
{
  v2 = type metadata accessor for SmallPlayerCardData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_23()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 40) & ~v13;
  v15 = v4 | v13;
  v16 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + v7);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v15 | 7);
}

uint64_t sub_24E20DD0C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_24E347638() - 8);
  return sub_24E20D9E0(v0 + v2, v0 + v3, v0 + ((v3 + *(v4 + 80) + 40) & ~*(v4 + 80)));
}

uint64_t OUTLINED_FUNCTION_1_114()
{

  return sub_24E347128();
}

id sub_24E20DE38()
{
  v0[OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_isUpdating] = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_onUpdatePhaseChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0);
  OUTLINED_FUNCTION_1_30();
  *&v0[v1] = sub_24E346F88();
  v2 = OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_onAuthenticatedPlayerDidChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1768);
  OUTLINED_FUNCTION_1_30();
  *&v0[v2] = sub_24E346F88();
  v3 = OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_onUIRequired;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CB0);
  OUTLINED_FUNCTION_1_30();
  *&v0[v3] = sub_24E346F88();
  v4 = [objc_opt_self() local];
  *&v0[OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_localPlayer] = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for LocalPlayerAuthenticationPresenter();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_24E20DF60()
{
  v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_localPlayer);

  v1 = v3;
  sub_24E346F78();
}

void sub_24E20DFD0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_localPlayer);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_localPlayer) = a1;
  v3 = a1;

  sub_24E20DF60();
}

void sub_24E20E028(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_localPlayer);
  OUTLINED_FUNCTION_21_2();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  v11[4] = sub_24E212174;
  v11[5] = v8;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_11_41();
  v11[2] = sub_24E052CF0;
  v11[3] = &block_descriptor_96;
  v9 = _Block_copy(v11);
  v10 = v6;
  sub_24DE56C38(a1);

  [v10 signOutWithCompletionHandler_];
  _Block_release(v9);
}

void sub_24E20E138(uint64_t a1, void (*a2)(void))
{
  if (a2)
  {
    a2();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() local];
    sub_24E20DFD0(v4);
  }
}

void sub_24E20E1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7FB8);
  OUTLINED_FUNCTION_4_5(v8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = v41 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E7FC0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v16 = OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_isUpdating;
  if ((*(v4 + OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_isUpdating) & 1) == 0)
  {
    v45 = a1;
    v50 = 0;
    v51 = 0;
    v48 = v41 - v14;
    v49 = 1;
    v46 = v13;
    v47 = v15;

    sub_24E346F78();

    *(v4 + v16) = 1;
    v17 = [objc_opt_self() currentGame];
    v18 = [v17 bundleIdentifier];

    v19 = sub_24E347CF8();
    v21 = v20;

    v22 = objc_allocWithZone(type metadata accessor for AuthenticationWithOnboardingViewController());
    v44 = sub_24E0033D4(v19, v21);
    type metadata accessor for AuthenticationMetricsHandler();
    OUTLINED_FUNCTION_1_30();

    v23 = sub_24E2AE048(a2, a3);
    OUTLINED_FUNCTION_21_2();
    v24 = swift_allocObject();
    v43 = v24;
    *(v24 + 16) = 0;
    v25 = (v24 + 16);
    v26 = sub_24E003240();
    v42 = a2;
    v49 = v26;
    sub_24DF88A8C(0, &qword_27F1DFCD0);
    v27 = sub_24E348368();
    *&v56 = v27;
    sub_24E348348();
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    v41[1] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7FD0);
    sub_24DFB4C28(&qword_27F1E7FD8, &qword_27F1E7FD0);
    sub_24E2120F4();
    sub_24E344F18();
    sub_24DFA9298(v11, &qword_27F1E7FB8);

    OUTLINED_FUNCTION_21_2();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v23;
    v33[4] = v42;
    v33[5] = a3;
    v34 = v45;
    v35 = v43;
    v33[6] = v45;
    v33[7] = v35;
    swift_unknownObjectWeakInit();

    MEMORY[0x253040FB0](&v49);
    sub_24DFB4C28(&qword_27F1E7FE8, &unk_27F1E7FC0);

    v36 = v46;
    v37 = v48;
    v38 = sub_24E344EC8();

    (*(v47 + 8))(v37, v36);
    swift_beginAccess();
    *v25 = v38;

    v39 = v44;
    sub_24E00378C(v34, 0);
    v53 = v56;
    v58 = 0;
    v49 = v39;
    LOBYTE(v50) = 1;
    *(&v50 + 1) = v59[0];
    HIDWORD(v50) = *(v59 + 3);
    v51 = 0x3FE0000000000000;
    v52 = 0;
    *v54 = *v57;
    *&v54[15] = *&v57[15];
    v55 = 1;

    v40 = v39;
    sub_24E346F78();
  }

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E20E6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    if (v12 == 255)
    {
      sub_24E20E9B0();
    }

    else
    {
      sub_24E2ADCBC(v11, v12);
      sub_24E20E7F4(v11, v12, a4, a5, a6);
    }

    swift_beginAccess();
    *(a7 + 16) = 0;
  }

  return result;
}

uint64_t sub_24E20E7F4(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_isUpdating) = 0;
  if (a2)
  {

    sub_24E346F78();
  }

  else
  {
    OUTLINED_FUNCTION_21_2();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a5;
    v11[4] = a3;
    v11[5] = a4;

    sub_24E2120E4(a1, 0);

    sub_24E346F78();

    sub_24E024148(a1, sub_24E2120D8);
  }
}

void sub_24E20E938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_24E20E1BC(a2, a3, a4);
  }
}

uint64_t sub_24E20E9B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_localPlayer);

  v2 = v1;
  sub_24E346F78();

  sub_24E346F78();

  *(v0 + OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_isUpdating) = 0;
  return result;
}

void sub_24E20EA5C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_isUpdating;
  if ((v0[OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_isUpdating] & 1) == 0)
  {
    v2 = v0;
    v23 = 0;
    v24 = 0;
    v22 = 1;

    sub_24E346F78();

    v0[v1] = 1;
    v3 = OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_localPlayer;
    if ([*&v0[OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_localPlayer] isAuthenticated])
    {
      sub_24E20E9B0();
      return;
    }

    [objc_opt_self() setAuthenticationPersonality_];
    v4 = [*&v0[v3] accountName];
    v5 = sub_24E347CF8();
    v7 = v6;

    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 0xE000000000000000;
    }

    if (v8)
    {
    }

    else
    {
      v9 = sub_24E348C08();

      if ((v9 & 1) == 0)
      {
        v10 = [*&v2[v3] accountName];
        goto LABEL_12;
      }
    }

    v11 = [objc_opt_self() daemonProxy];
    v10 = [v11 accountName];

LABEL_12:
    v12 = sub_24E347CF8();
    v14 = v13;

    sub_24DF88A8C(0, &qword_27F1E7FB0);
    v15 = sub_24E20EDAC(v12, v14, 0, 0);
    if (v15)
    {
      v16 = v15;
      OUTLINED_FUNCTION_21_2();
      v17 = swift_allocObject();
      *(v17 + 16) = v2;
      v26 = sub_24E2120D0;
      v27 = v17;
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_11_41();
      v24 = sub_24E20EF14;
      v25 = &block_descriptor_78;
      v18 = _Block_copy(&v22);
      v19 = v2;

      [v16 authenticateWithCompletionHandler_];
      _Block_release(v18);
    }

    else
    {
      sub_24E211D94();
      v20 = OUTLINED_FUNCTION_1_79();
      *v21 = 1;
      OUTLINED_FUNCTION_21_2();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_24E346F78();

      sub_24E024148(v20, sub_24E2120C8);

      v2[v1] = 0;
    }
  }
}

void sub_24E20ED58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24E20EA5C();
  }
}

id sub_24E20EDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v5 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = sub_24E347CB8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = sub_24E347CB8();

LABEL_6:
  v7 = [swift_getObjCClassFromMetadata() authenticatorForPlayerWithUsername:v5 password:v6];

  return v7;
}

void sub_24E20EE58(uint64_t a1, int a2, id a3, void *a4, uint64_t a5)
{
  if (a3)
  {
    v7 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30);
    sub_24DF88A8C(0, &qword_27F1DFD38);
    a1 = swift_dynamicCast();
    if (a1)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  sub_24E20EFC4(a1, a4, v8);

  *(a5 + OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_isUpdating) = 0;
}

void sub_24E20EF14(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);

  v12 = a3;
  v10 = a4;
  v11 = a5;
  v9(a2, a3, a4, a5);
}

void sub_24E20EFC4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v189 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v190 = &v179 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  v16 = OUTLINED_FUNCTION_4_5(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v179 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v179 - v23;
  v25 = [objc_opt_self() local];
  if (([v25 isAuthenticated] & 1) == 0 && a3)
  {
    v187 = v9;
    v188 = v7;
    v191 = v25;
    v26 = [a3 domain];
    v27 = sub_24E347CF8();
    v29 = v28;

    v30 = sub_24E347CF8();
    v32 = v31;
    if (v27 == v30 && v29 == v31)
    {
    }

    else
    {
      v34 = sub_24E348C08();

      if ((v34 & 1) == 0)
      {

        v35 = sub_24E347CB8();
        v36 = GKGameCenterUIFrameworkBundle();
        v37 = OUTLINED_FUNCTION_1_113();

        v38 = sub_24E347CF8();
        v40 = v39;

        v41 = sub_24E347CB8();
        v42 = GKGameCenterUIFrameworkBundle();
        v43 = OUTLINED_FUNCTION_23_4();

        v44 = sub_24E347CF8();
        v46 = v45;

        v47 = OUTLINED_FUNCTION_1_115();
        v48 = GKGameCenterUIFrameworkBundle();
        v49 = OUTLINED_FUNCTION_5_8();

        v50 = sub_24E347CF8();
        v52 = v51;

        *&v193 = v38;
        *(&v193 + 1) = v40;
        v194 = v44;
        v195 = v46;
        v196 = v50;
        v197 = v52;
        OUTLINED_FUNCTION_7_54();
        sub_24E346F78();

        sub_24E211D94();
        OUTLINED_FUNCTION_1_79();
        *v53 = a3;
        OUTLINED_FUNCTION_21_2();
        v54 = swift_allocObject();
        *(v54 + 16) = v4;
        OUTLINED_FUNCTION_18_35(v54);

        v55 = a3;
LABEL_26:
        sub_24E346F78();

        OUTLINED_FUNCTION_17_34();
        goto LABEL_63;
      }
    }

    switch([a3 code])
    {
      case 2uLL:
      case 6uLL:
        if ([a3 code] == 6)
        {
          v73 = 5;
        }

        else
        {
          v73 = 4;
        }

        sub_24E211D94();
        v74 = OUTLINED_FUNCTION_1_79();
        *v75 = v73;
        OUTLINED_FUNCTION_21_2();
        v76 = swift_allocObject();
        *(v76 + 16) = v4;
        *&v193 = v74;
        *(&v193 + 1) = sub_24E2122CC;
        v194 = v76;
        v77 = v4;

        sub_24E211FD4(v73);
        sub_24E346F78();

        OUTLINED_FUNCTION_17_34();
        v78 = [a3 userInfo];
        v79 = sub_24E347C08();

        sub_24E347CF8();
        sub_24E12CAE8(v79, &v193);

        if (v195)
        {
          v186 = v73;
          sub_24DF88A8C(0, &qword_27F1DFD38);
          v80 = swift_dynamicCast();
          v81 = v191;
          if ((v80 & 1) == 0)
          {
            sub_24E211FE8(v186);

            goto LABEL_63;
          }

          v82 = v192;
          if ([v192 code] == 5029)
          {
            v83 = v188;
            if (a2)
            {
              v84 = sub_24DFAD524(a2, &selRef_playerID);
              v86 = v85;
            }

            else
            {
              v84 = 0;
              v86 = 0;
            }

            v150 = v186;
            OUTLINED_FUNCTION_8_6();
            __swift_storeEnumTagSinglePayload(v151, v152, v153, v83);
            sub_24E20FFEC(v84, v86);

            sub_24E211FE8(v150);

            v134 = &qword_27F1DEFB8;
            v135 = v24;
          }

          else
          {
            if ([v82 code] != 5047)
            {

              sub_24E211FE8(v186);
              goto LABEL_63;
            }

            if (a2)
            {
              v146 = [a2 passwordChangeURL];
              v147 = v188;
              if (v146)
              {
                v148 = v146;
                sub_24E343238();

                v149 = 0;
              }

              else
              {
                v149 = 1;
              }

              __swift_storeEnumTagSinglePayload(v18, v149, 1, v147);
              sub_24E211FFC(v18, v21);
              if (__swift_getEnumTagSinglePayload(v21, 1, v147) != 1)
              {
                v157 = v187;
                v158 = *(v187 + 32);
                v183 = v187 + 32;
                v184 = v158;
                v158(v190, v21, v147);
                v185 = *&v77[OBJC_IVAR____TtC12GameCenterUI34LocalPlayerAuthenticationPresenter_onUIRequired];

                v159 = sub_24E347CB8();
                v160 = GKGameCenterUIFrameworkBundle();
                v161 = OUTLINED_FUNCTION_1_113();

                v162 = sub_24E347CF8();
                v181 = v163;
                v182 = v162;

                v164 = sub_24E347CB8();
                v165 = GKGameCenterUIFrameworkBundle();
                v166 = v147;
                v167 = OUTLINED_FUNCTION_4_9();

                v180 = sub_24E347CF8();
                v179 = v168;

                v169 = sub_24E347CB8();
                v170 = GKGameCenterUIFrameworkBundle();
                v171 = OUTLINED_FUNCTION_23_4();

                v172 = sub_24E347CF8();
                v174 = v173;

                v176 = v189;
                v175 = v190;
                (*(v157 + 16))(v189, v190, v166);
                v177 = (*(v157 + 80) + 16) & ~*(v157 + 80);
                v178 = swift_allocObject();
                v184(v178 + v177, v176, v166);
                *&v193 = v182;
                *(&v193 + 1) = v181;
                v194 = v180;
                v195 = v179;
                v196 = v172;
                v197 = v174;
                v198 = sub_24E21206C;
                v199 = v178;
                v200 = 0;
                sub_24E346F78();

                sub_24E211FE8(v186);

                (*(v157 + 8))(v175, v166);
LABEL_63:
                OUTLINED_FUNCTION_18();
                return;
              }

              sub_24E211FE8(v186);
            }

            else
            {

              sub_24E211FE8(v186);
              OUTLINED_FUNCTION_8_6();
              __swift_storeEnumTagSinglePayload(v154, v155, v156, v188);
            }

            v134 = &qword_27F1DEFB8;
            v135 = v21;
          }
        }

        else
        {
          sub_24E211FE8(v73);

          v134 = &qword_27F1E0370;
          v135 = &v193;
        }

        sub_24DFA9298(v135, v134);
        goto LABEL_63;
      case 4uLL:
        sub_24E211D94();
        OUTLINED_FUNCTION_1_79();
        *v107 = 3;
        OUTLINED_FUNCTION_21_2();
        v108 = swift_allocObject();
        *(v108 + 16) = v4;
        OUTLINED_FUNCTION_18_35(v108);

        goto LABEL_26;
      case 5uLL:
        sub_24E211D94();
        OUTLINED_FUNCTION_1_79();
        *v87 = 2;
        OUTLINED_FUNCTION_21_2();
        v88 = swift_allocObject();
        *(v88 + 16) = v4;
        OUTLINED_FUNCTION_18_35(v88);

        sub_24E346F78();

        OUTLINED_FUNCTION_17_34();

        v89 = sub_24E347CB8();
        v90 = GKGameCenterUIFrameworkBundle();
        v91 = OUTLINED_FUNCTION_1_113();

        v92 = sub_24E347CF8();
        v94 = v93;

        v95 = sub_24E347CB8();
        v96 = GKGameCenterUIFrameworkBundle();
        v97 = OUTLINED_FUNCTION_4_9();

        v98 = sub_24E347CF8();
        v100 = v99;

        v101 = OUTLINED_FUNCTION_1_115();
        v102 = GKGameCenterUIFrameworkBundle();
        v103 = OUTLINED_FUNCTION_14_36();

        v104 = sub_24E347CF8();
        v106 = v105;

        *&v193 = v92;
        *(&v193 + 1) = v94;
        v194 = v98;
        v195 = v100;
        v196 = v104;
        v197 = v106;
        OUTLINED_FUNCTION_7_54();
        sub_24E346F78();

        goto LABEL_48;
      default:
        sub_24E211D94();
        OUTLINED_FUNCTION_1_79();
        *v109 = 0;
        OUTLINED_FUNCTION_21_2();
        v110 = swift_allocObject();
        *(v110 + 16) = v4;
        OUTLINED_FUNCTION_18_35(v110);

        sub_24E346F78();

        OUTLINED_FUNCTION_17_34();
        if (!a2)
        {
          goto LABEL_38;
        }

        v111 = sub_24DFAD524(a2, &selRef_alertTitle);
        if (!v112)
        {
          goto LABEL_38;
        }

        v113 = v111;
        v114 = v112;

        v115 = HIBYTE(v114) & 0xF;
        if ((v114 & 0x2000000000000000) == 0)
        {
          v115 = v113 & 0xFFFFFFFFFFFFLL;
        }

        if (v115)
        {
          v116 = sub_24DFAD524(a2, &selRef_alertTitle);
          if (!v117)
          {
LABEL_66:
            __break(1u);
            return;
          }

          v118 = v116;
          v119 = v117;
        }

        else
        {
LABEL_38:
          v122 = sub_24E347CB8();
          v123 = GKGameCenterUIFrameworkBundle();
          v124 = GKGetLocalizedStringFromTableInBundle();

          v118 = sub_24E347CF8();
          v119 = v125;

          if (!a2)
          {
            goto LABEL_46;
          }
        }

        v126 = sub_24DFAD524(a2, &selRef_alertMessage);
        if (v127)
        {
          v128 = v126;
          v32 = v127;

          v129 = HIBYTE(v32) & 0xF;
          if ((v32 & 0x2000000000000000) == 0)
          {
            v129 = v128 & 0xFFFFFFFFFFFFLL;
          }

          if (v129)
          {
            v130 = sub_24DFAD524(a2, &selRef_alertMessage);
            if (v131)
            {
              v132 = v130;
              v133 = v131;
LABEL_47:

              v140 = OUTLINED_FUNCTION_1_115();
              v141 = GKGameCenterUIFrameworkBundle();
              v142 = OUTLINED_FUNCTION_14_36();

              v143 = sub_24E347CF8();
              v145 = v144;

              *&v193 = v118;
              *(&v193 + 1) = v119;
              v194 = v132;
              v195 = v133;
              v196 = v143;
              v197 = v145;
              OUTLINED_FUNCTION_7_54();
              sub_24E346F78();

              goto LABEL_48;
            }

            __break(1u);
            goto LABEL_66;
          }
        }

LABEL_46:
        v136 = sub_24E347CB8();
        v137 = GKGameCenterUIFrameworkBundle();
        v138 = OUTLINED_FUNCTION_4_9();

        v132 = sub_24E347CF8();
        v133 = v139;

        goto LABEL_47;
    }
  }

  if (a2)
  {
    v56 = sub_24DFAD524(a2, &selRef_alertTitle);
    if (v57)
    {
      v58 = v56;
      v59 = v57;
      v60 = sub_24DFAD524(a2, &selRef_alertMessage);
      if (v61)
      {
        v62 = v60;
        v63 = v61;

        v64 = OUTLINED_FUNCTION_1_115();
        v65 = GKGameCenterUIFrameworkBundle();
        v66 = OUTLINED_FUNCTION_5_8();

        v67 = sub_24E347CF8();
        v69 = v68;

        v70 = swift_allocObject();
        *(v70 + 16) = v4;
        *(v70 + 24) = v25;
        *&v193 = v58;
        *(&v193 + 1) = v59;
        v194 = v62;
        v195 = v63;
        v196 = v67;
        v197 = v69;
        v198 = sub_24E211FA8;
        v199 = v70;
        v200 = 0;
        v71 = v4;
        v72 = v25;
        sub_24E346F78();

LABEL_48:

        goto LABEL_63;
      }
    }
  }

  OUTLINED_FUNCTION_18();

  sub_24E20DFD0(v120);
}

void sub_24E20FF68()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_24E343228();
  [v0 openURL:v1 withCompletionHandler:0];
}

void sub_24E20FFEC(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() authenticatedLocalPlayersWithStatus_];
  v3 = sub_24E347F08();

  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_14:

    return;
  }

  v5 = 0;
  v6 = v3 + 32;
  v16 = v3;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    sub_24DFB4104(v6, v20);
    sub_24DFB4104(v20, v19);
    sub_24DF88A8C(0, &qword_280BDFA90);
    if (!swift_dynamicCast())
    {
      goto LABEL_13;
    }

    v7 = [v18 internal];
    v8 = [v7 playerID];

    v9 = sub_24E347CF8();
    v11 = v10;

    if (!a2)
    {

      v3 = v16;
      goto LABEL_13;
    }

    if (v9 == a1 && v11 == a2)
    {
      break;
    }

    v13 = sub_24E348C08();

    v3 = v16;
    if (v13)
    {

      goto LABEL_17;
    }

LABEL_13:
    ++v5;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v6 += 32;
    if (v4 == v5)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  sub_24E024710(v20, &v21);
  if (swift_dynamicCast())
  {
    v14 = *&v20[0];
    sub_24E210234(*&v20[0]);
  }
}

void sub_24E210234(void *a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v8[4] = sub_24E211F70;
  v8[5] = v4;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_11_41();
  v8[2] = sub_24E2122D8;
  v8[3] = &block_descriptor_27_0;
  v5 = _Block_copy(v8);
  v6 = v1;
  v7 = a1;

  [v3 accountRemoteUIControllerForPlayer:v7 mode:1 completionHandler:v5];
  _Block_release(v5);
}

void sub_24E210318(void *a1, id a2, void *a3, void *a4)
{
  if (a2)
  {
    aBlock = a2;
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30);
    sub_24DF88A8C(0, &qword_27F1DFD38);
    if (swift_dynamicCast())
    {
      v8 = v43;
      v9 = [v43 domain];
      v10 = sub_24E347CF8();
      v12 = v11;

      if (v10 == sub_24E347CF8() && v12 == v13)
      {
      }

      else
      {
        v15 = sub_24E348C08();

        if ((v15 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if ([v43 code] == 3)
      {
        v23 = [v43 userInfo];
        v24 = sub_24E347C08();

        v25 = swift_allocObject();
        *(v25 + 16) = a4;
        *(v25 + 24) = a3;
        v26 = a4;
        sub_24E210D14(a3, v24, sub_24E211F84, v25);

LABEL_17:

        goto LABEL_18;
      }

LABEL_16:
      v27 = [v43 localizedDescription];
      v28 = sub_24E347CF8();
      v30 = v29;

      v31 = sub_24E347CB8();
      v32 = GKGameCenterUIFrameworkBundle();
      v33 = GKGetLocalizedStringFromTableInBundle();

      v34 = sub_24E347CF8();
      v36 = v35;

      v37 = sub_24E347CB8();
      v38 = GKGameCenterUIFrameworkBundle();
      v39 = GKGetLocalizedStringFromTableInBundle();

      v40 = sub_24E347CF8();
      v42 = v41;

      aBlock = v34;
      v45 = v36;
      v46 = v28;
      v47 = v30;
      v48 = v40;
      v49 = v42;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      sub_24E346F78();

      goto LABEL_17;
    }
  }

  if (!a1)
  {
    return;
  }

  v16 = objc_allocWithZone(GKRemoteUINavigationController);
  v8 = a1;
  v17 = [v16 initWithRemoteUIController_];
  if (v17)
  {
    v18 = v17;
    [v18 setModalPresentationStyle_];
    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = v18;
    v48 = sub_24E211F78;
    v49 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_24E2122D8;
    v47 = &block_descriptor_33_0;
    v20 = _Block_copy(&aBlock);
    v21 = a4;
    a3;
    v22 = v18;

    [v8 setCompletionHandler_];
    _Block_release(v20);

    aBlock = v22;
    LOBYTE(v45) = 1;
    v46 = 0;
    LOBYTE(v47) = 1;
    v52 = 1;

    sub_24E346F78();

    return;
  }

LABEL_18:
}

void sub_24E2107C4(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    aBlock[0] = a1;
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30);
    sub_24DF88A8C(0, &qword_27F1DFD38);
    if (swift_dynamicCast())
    {
      v6 = v15;
      if ([v15 code] == -7003)
      {
        v7 = [objc_opt_self() userErrorForCode:2 underlyingError:0];
        v8 = v7;
        if (v7)
        {
          v9 = v7;
          v10 = sub_24E3431A8();
        }

        else
        {
          v10 = 0;
        }

        [a2 authenticationDidCompleteWithError_];

        v11 = swift_allocObject();
        *(v11 + 16) = a3;
        aBlock[4] = sub_24E211F8C;
        aBlock[5] = v11;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24E052CF0;
        aBlock[3] = &block_descriptor_42;
        v12 = _Block_copy(aBlock);
        v13 = a3;

        [a2 signOutWithCompletionHandler_];
        _Block_release(v12);
      }

      else
      {
      }
    }
  }
}

id sub_24E210998(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (a2)
  {

    v6 = sub_24E347CB8();
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();

    v9 = sub_24E347CF8();
    v11 = v10;

    v12 = sub_24E347CB8();
    v13 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();

    v15 = sub_24E347CF8();
    v17 = v16;

    v18 = sub_24E347CB8();
    v19 = GKGameCenterUIFrameworkBundle();
    v20 = GKGetLocalizedStringFromTableInBundle();

    v21 = sub_24E347CF8();
    v23 = v22;

    aBlock = v9;
    v36 = v11;
    v37 = v15;
    v38 = v17;
    v39 = v21;
    v40 = v23;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    sub_24E346F78();
  }

  else
  {
    v28 = [objc_opt_self() local];
    sub_24E20DFD0(v28);
    if (a1 && ([a1 isServerAuthenticated] & 1) == 0)
    {
      v29 = [objc_opt_self() userErrorForCode:2 underlyingError:0];
      if (v29)
      {
        v30 = v29;
        v31 = sub_24E3431A8();
      }

      else
      {
        v31 = 0;
      }

      [a4 authenticationDidCompleteWithError_];

      v32 = swift_allocObject();
      *(v32 + 16) = a3;
      v39 = sub_24E2122DC;
      v40 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_24E052CF0;
      v38 = &block_descriptor_48_0;
      v33 = _Block_copy(&aBlock);
      v34 = a3;

      [a4 signOutWithCompletionHandler_];
      _Block_release(v33);
    }

    return [a5 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_24E210D14(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  OUTLINED_FUNCTION_4_5(v7);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v17 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  if (qword_27F1DDA90 != -1)
  {
    swift_once();
  }

  if (!*(a2 + 16))
  {
    goto LABEL_13;
  }

  v21 = sub_24E26AE3C();
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_24DFB4104(*(a2 + 56) + 32 * v21, &aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v40 = v48;
  v41 = v49;
  if (qword_27F1DDA98 != -1)
  {
    swift_once();
  }

  sub_24E12CAE8(a2, &aBlock);
  if (!v45)
  {

    sub_24DFA9298(&aBlock, &qword_27F1E0370);
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v11);
    goto LABEL_12;
  }

  v23 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v10, v23 ^ 1u, 1, v11);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {

LABEL_12:
    sub_24DFA9298(v10, &qword_27F1DEFB8);
LABEL_13:
    if (a3)
    {
      sub_24E211D94();
      v27 = OUTLINED_FUNCTION_1_79();
      *v28 = 6;
      a3();
    }

    goto LABEL_15;
  }

  v38 = *(v13 + 32);
  v39 = v13 + 32;
  v38(v20, v10, v11);
  sub_24DF88A8C(0, &qword_27F1E7FB0);
  v29 = sub_24E20EDAC(v40, v41, 0, 0);
  if (v29)
  {
    v30 = *(v13 + 16);
    v41 = v29;
    v30(v17, v20, v11);
    v31 = (*(v13 + 80) + 48) & ~*(v13 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = a2;
    *(v32 + 3) = a3;
    v33 = v42;
    *(v32 + 4) = a4;
    *(v32 + 5) = v33;
    v38(&v32[v31], v17, v11);
    v46 = sub_24E211DE8;
    v47 = v32;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v44 = sub_24E2115A4;
    v45 = &block_descriptor_21_2;
    v34 = _Block_copy(&aBlock);
    v35 = v41;

    sub_24DE56C38(a3);
    v36 = v33;

    [v35 authenticateUsingAuthUIAllowingAppleIDCreation:0 usernameEditable:0 dismissHandler:0 completionHandler:v34];
    _Block_release(v34);
  }

  (*(v13 + 8))(v20, v11);
LABEL_15:
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E211188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t), uint64_t a14, uint64_t a15, uint64_t a16)
{
  v43 = a3;
  v44 = a1;
  v45 = a13;
  v20 = sub_24E343288();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v43 - v28;
  if (!a2 || !a4 || a11)
  {
    v30 = a11;
    if (qword_27F1DDAA0 != -1)
    {
      swift_once();
    }

    sub_24E12CAE8(a12, &v46);
    if (v47)
    {
      v31 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v26, v31 ^ 1u, 1, v20);
      if (__swift_getEnumTagSinglePayload(v26, 1, v20) != 1)
      {
        (*(v21 + 32))(v23, v26, v20);
        v32 = objc_opt_self();
        v33 = sub_24E343228();
        v34 = sub_24E347C28();
        sub_24E211ED4(v33, v34, 0, v32);

        result = (*(v21 + 8))(v23, v20);
        goto LABEL_11;
      }
    }

    else
    {
      sub_24DFA9298(&v46, &qword_27F1E0370);
      __swift_storeEnumTagSinglePayload(v26, 1, 1, v20);
    }

    result = sub_24DFA9298(v26, &qword_27F1DEFB8);
LABEL_11:
    v36 = v45;
    if (!v45)
    {
      return result;
    }

    return v36(v30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  *(inited + 32) = sub_24E347CF8();
  *(inited + 40) = v38;
  v39 = a6;
  if (!a6)
  {

    a5 = v44;
    v39 = a2;
  }

  *(inited + 48) = a5;
  *(inited + 56) = v39;
  *(inited + 64) = sub_24E347CF8();
  *(inited + 72) = v40;
  *(inited + 80) = v43;
  *(inited + 88) = a4;

  v41 = sub_24E347C28();
  (*(v21 + 16))(v29, a16, v20);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v20);
  v42 = sub_24E335A58(v41);

  sub_24E20FFEC(v44, a2, v29, v42);

  result = sub_24DFA9298(v29, &qword_27F1DEFB8);
  v36 = v45;
  if (v45)
  {
    v30 = 0;
    return v36(v30);
  }

  return result;
}

uint64_t sub_24E2115A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = a3;
  v25 = *(a1 + 32);
  if (a2)
  {
    v24 = sub_24E347CF8();
    v26 = v12;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = 0;
    v26 = 0;
    if (a3)
    {
LABEL_3:
      v23 = sub_24E347CF8();
      v11 = v13;
      if (a4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v23 = 0;
  if (a4)
  {
LABEL_4:
    v14 = sub_24E347CF8();
    v16 = v15;
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_10:
    v17 = 0;
    if (a6)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v14 = 0;
  v16 = 0;
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_5:
  v17 = sub_24E347CF8();
  a5 = v18;
  if (a6)
  {
LABEL_6:
    v19 = sub_24E347CF8();
    a6 = v20;
    goto LABEL_12;
  }

LABEL_11:
  v19 = 0;
LABEL_12:

  v21 = a7;
  v25(v24, v26, v23, v11, v14, v16, v17, a5, v19, a6, a7);
}

uint64_t sub_24E211718(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  sub_24E343288();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_24E210234(a1);
  return sub_24DFA9298(v5, &qword_27F1DEFB8);
}

void sub_24E211890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_24E3431A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_24E211900(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = [objc_opt_self() authenticationPersonality];
  if (a3)
  {
    v10[4] = a3;
    v10[5] = a4;
    OUTLINED_FUNCTION_1_35();
    OUTLINED_FUNCTION_11_41();
    v10[2] = sub_24E00B24C;
    v10[3] = &block_descriptor_77;
    a3 = _Block_copy(v10);
  }

  [v8 authenticationShowSignInUIForLocalPlayer:a1 origin:a2 dismiss:a3];
  _Block_release(a3);
  return swift_unknownObjectRelease();
}

id sub_24E211AB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalPlayerAuthenticationPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI34LocalPlayerAuthenticationPresenterC13UIRequirementO(uint64_t a1)
{
  if ((*(a1 + 64) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

uint64_t sub_24E211B9C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 65))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 2)
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

uint64_t sub_24E211BDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E211C34(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_24E211C70(uint64_t a1)
{
  result = sub_24E211C98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24E211C98()
{
  result = qword_27F1E7F90;
  if (!qword_27F1E7F90)
  {
    type metadata accessor for LocalPlayerAuthenticationPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7F90);
  }

  return result;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E211D04()
{
  result = sub_24E347CF8();
  qword_27F1E7ED0 = result;
  *algn_27F1E7ED8 = v1;
  return result;
}

uint64_t sub_24E211D34()
{
  result = sub_24E347CF8();
  qword_27F1E7EE0 = result;
  *algn_27F1E7EE8 = v1;
  return result;
}

uint64_t sub_24E211D64()
{
  result = sub_24E347CF8();
  qword_27F1E7EF0 = result;
  *algn_27F1E7EF8 = v1;
  return result;
}

unint64_t sub_24E211D94()
{
  result = qword_27F1E7FA0;
  if (!qword_27F1E7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7FA0);
  }

  return result;
}

uint64_t sub_24E211DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = sub_24E343288();
  OUTLINED_FUNCTION_4_5(v20);
  return sub_24E211188(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), v11 + ((*(v21 + 80) + 48) & ~*(v21 + 80)));
}

void sub_24E211ED4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E347BE8();

  [a4 postURL:a1 postBody:v7 completion:a3];
}

id sub_24E211FD4(id result)
{
  if (result - 1 >= 6)
  {
    return result;
  }

  return result;
}

void sub_24E211FE8(id a1)
{
  if (a1 - 1 >= 6)
  {
  }
}

uint64_t sub_24E211FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24E21206C()
{
  v0 = sub_24E343288();
  OUTLINED_FUNCTION_4_5(v0);

  sub_24E20FF68();
}

id sub_24E2120E4(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

unint64_t sub_24E2120F4()
{
  result = qword_27F1E7FE0;
  if (!qword_27F1E7FE0)
  {
    sub_24DF88A8C(255, &qword_27F1DFCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7FE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI34LocalPlayerAuthenticationPresenterC0defG5ErrorO(uint64_t *a1)
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

uint64_t sub_24E2121AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
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
  v6 = v4 - 5;
  if (v5 >= 7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E212214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

void *sub_24E212264(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_115()
{

  return sub_24E347CB8();
}

uint64_t OUTLINED_FUNCTION_7_54()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;
  return v0 - 160;
}

uint64_t OUTLINED_FUNCTION_14_36()
{

  return GKGetLocalizedStringFromTableInBundle();
}

char *OUTLINED_FUNCTION_17_34()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 152);

  return sub_24E024148(v2, v3);
}

id OUTLINED_FUNCTION_18_35(uint64_t a1)
{
  *(v4 - 160) = v2;
  *(v4 - 152) = v1;
  *(v4 - 144) = a1;

  return v3;
}

id sub_24E212374(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DetailCollectionViewCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t sub_24E21246C(void *a1)
{
  v1 = a1;
  v2 = sub_24E2124A0();

  return v2 & 1;
}

id sub_24E2124A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

void sub_24E2124D8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_24E21252C(a3);
}

void sub_24E21252C(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DetailCollectionViewCell();
  objc_msgSendSuper2(&v3, sel_setHighlighted_, a1 & 1);
  sub_24E1DA8D8();
}

id sub_24E212578()
{
  v0 = sub_24E2125AC();

  return v0;
}

id sub_24E2125CC()
{
  v0 = sub_24E212600();

  return v0;
}

id sub_24E212620()
{
  v0 = sub_24E212654();

  return v0;
}

void *sub_24E212654()
{
  v1 = *(*(v0 + qword_280BE0C10) + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView);
  v2 = v1;
  return v1;
}

id sub_24E2126CC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E50C0);
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v68 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7FF8);
  OUTLINED_FUNCTION_4_5(v14);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for DetailData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = &v64 - v22;
  [objc_msgSend(a7 container];
  v25 = v24;
  swift_unknownObjectRelease();
  v26 = v25 - a2 - a4;
  if (qword_27F1DE118 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_10_3();
  }

  v27 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v27, qword_27F20BF00);
  v70 = a7;
  v28 = [a7 traitCollection];
  sub_24E336638();
  v30 = v29;
  v32 = v31;

  v33 = v26 - v30;
  v76 = MEMORY[0x277D84F90];
  v34 = objc_opt_self();
  v35 = [v34 fractionalWidthDimension_];
  if (qword_27F1DDA08 != -1)
  {
    swift_once();
  }

  v36 = v33 - v32;
  v73 = v34;
  v37 = [v34 absoluteDimension_];
  v72 = objc_opt_self();
  v71 = [v72 sizeWithWidthDimension:v35 heightDimension:v37];

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  v38 = 0;
  a7 = *&v75[0];
  v66 = (v11 + 8);
  v39 = *(*&v75[0] + 16);
  v40 = 0.0;
  v11 = &unk_24E36CD20;
  while (1)
  {
    v41 = v38;
    v42 = 0uLL;
    v38 = v39;
    v43 = 0uLL;
    v44 = 0uLL;
    if (v41 != v39)
    {
      if (v41 >= a7[2])
      {
        __break(1u);
        goto LABEL_16;
      }

      v38 = v41 + 1;
      *&v74[0] = v41;
      sub_24DF89628(&a7[5 * v41 + 4], v74 + 8);
      v42 = v74[0];
      v43 = v74[1];
      v44 = v74[2];
    }

    v75[0] = v42;
    v75[1] = v43;
    v75[2] = v44;
    if (!v44)
    {
      break;
    }

    sub_24DE56CE8((v75 + 8), v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
      sub_24E214518(v17, v23);
      sub_24E21457C(v23, v67);
      sub_24E214460(&qword_27F1DEE80, type metadata accessor for DetailData);
      v65 = v23;
      v45 = v68;
      OUTLINED_FUNCTION_13_46();
      sub_24E347158();
      type metadata accessor for DetailView();
      v46 = sub_24E15AF68(v36, v45, v70);
      v48 = v47;
      (*v66)(v45, v69, v46);
      v49 = v73;
      v50 = [v73 fractionalWidthDimension_];
      v51 = [v49 absoluteDimension_];
      v52 = [v72 sizeWithWidthDimension:v50 heightDimension:v51];

      v53 = objc_opt_self();
      v64 = v52;
      v54 = [v53 itemWithLayoutSize_];
      MEMORY[0x25303EA30]();
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();

      v23 = v65;
      sub_24E2145E0(v65, type metadata accessor for DetailData);
      v40 = v40 + v48;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
      sub_24DF8BFF4(v17, &qword_27F1E7FF8);
    }
  }

  v55 = v73;
  v56 = [v73 fractionalWidthDimension_];
  v57 = [v55 absoluteDimension_];
  v58 = [v72 sizeWithWidthDimension:v56 heightDimension:v57];

  v59 = objc_opt_self();
  sub_24E1698C0();
  v60 = sub_24E347EE8();

  v61 = [v59 verticalGroupWithLayoutSize:v58 subitems:v60];

  v62 = [objc_opt_self() sectionWithGroup_];
  return v62;
}

double sub_24E212E38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v115 = a3;
  v116 = a4;
  v117 = a2;
  v112 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v102 = v99 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6058);
  OUTLINED_FUNCTION_4_5(v7);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v105 = v99 - v9;
  v104 = type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v11);
  v103 = v99 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  v14 = OUTLINED_FUNCTION_4_5(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v15);
  v107 = v99 - v16;
  MEMORY[0x28223BE20](v17);
  v109 = v99 - v18;
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v113 = v20;
  v114 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v23 = v22 - v21;
  v24 = sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_1();
  v30 = (v29 - v28);
  v31 = sub_24E3444F8();
  OUTLINED_FUNCTION_0_14();
  v111 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_1();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v36);
  v106 = v99 - v37;
  MEMORY[0x28223BE20](v38);
  v108 = v99 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = v99 - v41;
  sub_24DF8BD90(v117, v99 - v41, &unk_27F1E1CB0);
  v110 = v34;
  v43 = *(v34 + 48);
  v117 = v42;
  sub_24DF8BD90(v115, &v42[v43], &unk_27F1E1CB0);
  if (!GKIsXRUIIdiomShouldUsePadUI())
  {
    v115 = v31;
    v53 = v23;
    v55 = v113;
    v54 = v114;
    swift_getKeyPath();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
    sub_24E347128();

    v58 = sub_24E17A62C(v118[0]) == 0x656E696C6E69 && v57 == 0xE600000000000000;
    if (v58)
    {

      v52 = v117;
    }

    else
    {
      v59 = sub_24E348C08();

      v52 = v117;
      if ((v59 & 1) == 0)
      {
        v61 = v108;
        sub_24DF8BD90(v117, v108, &unk_27F1E1CA0);
        v62 = v109;
        sub_24E2144A8(v61 + *(v110 + 48), v109);
        OUTLINED_FUNCTION_16_33(v62);
        if (v58)
        {
          OUTLINED_FUNCTION_10_51();
          sub_24DF8BFF4(v62, &unk_27F1E1CB0);
        }

        else
        {
          swift_getKeyPath();
          sub_24E347128();

          OUTLINED_FUNCTION_22_0();
          v75 = v118[0];
          v76 = OUTLINED_FUNCTION_13_46();
          v77(v76);
          sub_24DF8BFF4(v61, &unk_27F1E1CB0);
          v78 = sub_24E17A62C(v75);
          if (v78 == 0x48656C69666F7270 && v79 == 0xED00007265646165)
          {

            goto LABEL_36;
          }

          v81 = sub_24E348C08();

          if (v81)
          {
LABEL_36:
            if (qword_27F1DDC30 == -1)
            {
              goto LABEL_20;
            }

            goto LABEL_50;
          }
        }

        v63 = v106;
        sub_24DF8BD90(v52, v106, &unk_27F1E1CA0);
        v64 = v107;
        sub_24E2144A8(v63 + *(v110 + 48), v107);
        OUTLINED_FUNCTION_16_33(v64);
        if (v58)
        {
          OUTLINED_FUNCTION_10_51();
          sub_24DF8BFF4(v64, &unk_27F1E1CB0);
        }

        else
        {
          swift_getKeyPath();
          v82 = v63;
          sub_24E347128();

          OUTLINED_FUNCTION_22_0();
          v83 = v118[0];
          v84 = OUTLINED_FUNCTION_13_46();
          v85(v84);
          sub_24DF8BFF4(v82, &unk_27F1E1CB0);
          v86 = sub_24E17A62C(v83);
          if (v86 == 0x616C506C6C616D73 && v87 == 0xEF64726143726579)
          {

LABEL_39:
            if (qword_27F1DDC40 != -1)
            {
              v90 = swift_once();
            }

            OUTLINED_FUNCTION_15_30(v90, qword_27F20B4D0);
            v71 = [v116 traitCollection];
            goto LABEL_21;
          }

          v89 = sub_24E348C08();

          if (v89)
          {
            goto LABEL_39;
          }
        }

        swift_getKeyPath();
        v65 = v103;
        sub_24E347128();

        v66 = v105;
        sub_24DF8BD90(&v65[*(v104 + 20)], v105, &qword_27F1E6058);
        OUTLINED_FUNCTION_5_91();
        v67 = type metadata accessor for FooterData(0);
        LODWORD(v65) = __swift_getEnumTagSinglePayload(v66, 1, v67);
        OUTLINED_FUNCTION_10_51();
        if (v65 != 1)
        {
          v68 = v100;
          sub_24DF8BD90(v52, v100, &unk_27F1E1CA0);
          v69 = v101;
          sub_24E2144A8(v68 + *(v110 + 48), v101);
          OUTLINED_FUNCTION_16_33(v69);
          if (v58)
          {
            sub_24DF8BFF4(v68, &unk_27F1E1CB0);
            OUTLINED_FUNCTION_10_51();
            v70 = type metadata accessor for HeaderData();
            v93 = v102;
            __swift_storeEnumTagSinglePayload(v102, 1, 1, v70);
          }

          else
          {
            swift_getKeyPath();
            v91 = v99[1];
            sub_24E347128();

            OUTLINED_FUNCTION_22_0();
            (*(v92 + 8))(v69, v56);
            v93 = v102;
            sub_24DF8BD90(v91, v102, &qword_27F1DF058);
            OUTLINED_FUNCTION_5_91();
            sub_24DF8BFF4(v68, &unk_27F1E1CB0);
            v94 = type metadata accessor for HeaderData();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v93, 1, v94);
            if (EnumTagSinglePayload != 1)
            {
              v97 = sub_24DF8BFF4(v93, &qword_27F1DF058);
              v98 = v116;
              if (qword_27F1DDC48 != -1)
              {
                v97 = swift_once();
              }

              OUTLINED_FUNCTION_15_30(v97, qword_27F20B4E8);
              v71 = [v98 traitCollection];
              goto LABEL_21;
            }
          }

          sub_24DF8BFF4(v93, &qword_27F1DF058);
        }

        v96 = v115;
        if (qword_27F1DDC38 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v96, qword_27F20B4B8);
        v71 = [v116 traitCollection];
LABEL_21:
        v72 = v71;
        sub_24E343F98();
        sub_24E3444C8();
        v49 = v73;

        (*(v55 + 8))(v53, v54);
        goto LABEL_22;
      }
    }

    if (qword_27F1DDC30 == -1)
    {
LABEL_20:
      OUTLINED_FUNCTION_15_30(v60, qword_27F20B4A0);
      v71 = [v116 traitCollection];
      goto LABEL_21;
    }

LABEL_50:
    v60 = OUTLINED_FUNCTION_6_76();
    goto LABEL_20;
  }

  v44 = *MEMORY[0x277D76918];
  *v30 = *MEMORY[0x277D76918];
  (*(v26 + 104))(v30, *MEMORY[0x277D22620], v24);
  v118[3] = v24;
  v118[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v118);
  (*(v26 + 16))(boxed_opaque_existential_1, v30, v24);
  v46 = v44;
  sub_24E344508();
  (*(v26 + 8))(v30, v24);
  v47 = [v116 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v49 = v48;

  (*(v113 + 8))(v23, v114);
  v50 = OUTLINED_FUNCTION_13_46();
  v51(v50);
  v52 = v117;
LABEL_22:
  sub_24DF8BFF4(v52, &unk_27F1E1CA0);
  return v49;
}

double sub_24E213A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v8 = OUTLINED_FUNCTION_13_46();
  sub_24DF8BD90(v8, v9, &unk_27F1E1CB0);
  sub_24DF8BD90(a3, &v7[*(v4 + 56)], &unk_27F1E1CB0);
  sub_24DF8BFF4(v7, &unk_27F1E1CA0);
  return 0.0;
}

double sub_24E213B24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24DF8BD90(a2, &v14 - v9, &unk_27F1E1CB0);
  sub_24DF8BD90(a3, &v10[*(v7 + 56)], &unk_27F1E1CB0);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v11 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v11, qword_27F20BF00);
  v12 = [a4 traitCollection];
  sub_24E336638();

  sub_24DF8BFF4(v10, &unk_27F1E1CA0);
  return 0.0;
}

double sub_24E213C84@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v44 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  OUTLINED_FUNCTION_4_5(v7);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  sub_24DF8BD90(a1, v41 - v16, &unk_27F1E1CB0);
  sub_24DF8BD90(a2, &v17[*(v11 + 48)], &unk_27F1E1CB0);
  swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  if (sub_24E17A62C(v49[0]) == 0x656E696C6E69 && v19 == 0xE600000000000000)
  {
  }

  else
  {
    v21 = sub_24E348C08();

    if ((v21 & 1) == 0)
    {
      if (qword_27F1DE118 != -1)
      {
        OUTLINED_FUNCTION_10_3();
      }

      v22 = type metadata accessor for PlayerCardTheme();
      v43 = *(__swift_project_value_buffer(v22, qword_27F20BF00) + 64);
      v23 = v43;
      v24 = v44;
      v25 = [v44 traitCollection];
      sub_24E33670C(v25, v47);

      v42 = v47[0];
      v41[7] = v48;
      v26 = [v24 traitCollection];
      sub_24E33670C(v26, v49);

      *&v45[7] = v49[0];
      *&v45[23] = v49[1];
      v45[39] = v50;
      sub_24DF8BD90(v17, v14, &unk_27F1E1CA0);
      v27 = *(v11 + 48);
      sub_24E2144A8(v14, v10);
      if (__swift_getEnumTagSinglePayload(v10, 1, v18) == 1)
      {
        sub_24DF8BFF4(v17, &unk_27F1E1CA0);
        sub_24DF8BFF4(&v14[v27], &unk_27F1E1CB0);
        v28 = v10;
        v29 = &unk_27F1E1CB0;
      }

      else
      {
        swift_getKeyPath();
        sub_24E347128();

        v32 = v46;
        OUTLINED_FUNCTION_22_0();
        (*(v33 + 8))(v10, v18);
        sub_24DF8BFF4(&v14[v27], &unk_27F1E1CB0);
        if (v32 == 6 || v32 == 3)
        {
          v46 = 1;
          sub_24DF8BFF4(v17, &unk_27F1E1CA0);
LABEL_19:
          *a4 = v43;
          OUTLINED_FUNCTION_14_37();
          *(a4 + 56) = v35;
          *(a4 + 64) = v36;
          *(a4 + 80) = v37;
          *(a4 + 96) = v38;
          *&v31 = *v45;
          v39 = *&v45[16];
          *(a4 + 97) = *v45;
          *(a4 + 113) = v39;
          *(a4 + 129) = *&v45[32];
          return *&v31;
        }

        v29 = &unk_27F1E1CA0;
        v28 = v17;
      }

      sub_24DF8BFF4(v28, v29);
      goto LABEL_19;
    }
  }

  v30 = [objc_opt_self() clearColor];
  sub_24DF8BFF4(v17, &unk_27F1E1CA0);
  *a4 = v30;
  *&v31 = OUTLINED_FUNCTION_14_37();
  *(a4 + 56) = v31;
  *(a4 + 72) = v31;
  *(a4 + 88) = 0;
  *(a4 + 96) = 1;
  *(a4 + 104) = v31;
  *(a4 + 120) = v31;
  *(a4 + 136) = 1;
  return *&v31;
}

BOOL sub_24E214120()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E50C0);
  sub_24E347128();

  if (v3 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_24E347128();

  v0 = v2[3] != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90);
  return v0;
}

id sub_24E2141F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DetailCollectionViewCell()
{
  result = qword_280BE07B0;
  if (!qword_280BE07B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E214320(uint64_t a1)
{
  result = sub_24E214460(&qword_27F1E7FF0, type metadata accessor for DetailCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E214408(uint64_t a1)
{
  result = sub_24E214460(&qword_27F1E6448, type metadata accessor for DetailCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E214460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E2144A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E214518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E21457C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E2145E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_91()
{

  return sub_24E2145E0(v0, type metadata accessor for Shelf.Presentation);
}

uint64_t OUTLINED_FUNCTION_6_76()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_51()
{

  return sub_24DF8BFF4(v1, v0);
}

double OUTLINED_FUNCTION_14_37()
{
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 33) = 0u;
  return result;
}

uint64_t sub_24E214700()
{
  type metadata accessor for SettingsOnboardingOverlay();
  swift_allocObject();
  result = sub_24E21473C();
  qword_27F20B1B0 = result;
  return result;
}

uint64_t sub_24E21473C()
{
  v1 = v0;
  v2 = sub_24E343D48();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0C2E8], v3);
  v6 = objc_allocWithZone(sub_24E343E98());
  v7 = sub_24E343E58();
  *(v0 + 16) = v7;
  v8 = v7;

  sub_24E343E88();

  return v1;
}

void sub_24E214834(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343C58();
  v6 = a1;
  v7 = sub_24E343F78();
  v8 = sub_24E348238();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = a1;
    v11 = v6;
    _os_log_impl(&dword_24DE53000, v7, v8, "SettingsOnboardingOverlay - didFinishOnboarding, error: %@", v9, 0xCu);
    sub_24E0C60AC(v10);
    MEMORY[0x253040EE0](v10, -1, -1);
    MEMORY[0x253040EE0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v12 = [objc_opt_self() defaultCenter];
  [v12 postNotificationName:*MEMORY[0x277D0BCD0] object:0];
}

char *sub_24E214A88()
{
  OUTLINED_FUNCTION_29();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_28();
  v3 = objc_msgSendSuper2(v1, v2, v0);
  v4 = *&v3[qword_280BE0C10];
  v5 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_shouldAnimateOnCloseButtonPress;
  swift_beginAccess();
  *(v4 + v5) = 0;
  return v3;
}

id sub_24E214BB4()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for Shelf.Presentation(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  LODWORD(v3) = *(v6 + *(v3 + 32));
  v7 = sub_24DF82D00(v6);
  if (v3 == 1)
  {
    return sub_24E214CB0(v7, v8, v1);
  }

  v10 = OUTLINED_FUNCTION_28();
  return sub_24E214F9C(v10, v14, v15, v16, v11, v12, v13);
}

id sub_24E214CB0(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for SmallPlayerCardView();
  swift_getObjectType();
  [objc_msgSend(a3 container)];
  swift_unknownObjectRelease();
  v4 = sub_24DFC1764();
  v5 = static SmallPlayerCardView.size(fitting:traitEnvironment:)(v4);
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = objc_opt_self();
  v9 = [v8 absoluteDimension_];
  v10 = [v8 absoluteDimension_];
  v11 = objc_opt_self();
  v12 = [v11 sizeWithWidthDimension:v9 heightDimension:v10];

  v13 = [objc_opt_self() itemWithLayoutSize_];
  v14 = [v8 fractionalWidthDimension_];
  v15 = [v8 absoluteDimension_];
  v16 = [v11 sizeWithWidthDimension:v14 heightDimension:v15];

  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24E369990;
  *(v18 + 32) = v13;
  sub_24E1698C0();
  v19 = v13;
  v20 = sub_24E347EE8();

  v21 = [v17 horizontalGroupWithLayoutSize:v16 subitems:v20];

  v22 = [objc_opt_self() fixedSpacing_];
  [v21 setInterItemSpacing_];

  v23 = [objc_opt_self() sectionWithGroup_];
  [v23 setInterGroupSpacing_];

  return v23;
}

id sub_24E214F9C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = type metadata accessor for Shelf.Presentation(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  type metadata accessor for SmallPlayerCardView();
  swift_getObjectType();
  [objc_msgSend(a7 container)];
  swift_unknownObjectRelease();
  v17 = sub_24DFC1764();
  v18 = static SmallPlayerCardView.size(fitting:traitEnvironment:)(v17);
  v20 = v19;
  swift_unknownObjectRelease();
  v21 = objc_opt_self();
  v22 = [v21 absoluteDimension_];
  v23 = [v21 absoluteDimension_];
  v24 = [objc_opt_self() sizeWithWidthDimension:v22 heightDimension:v23];

  v25 = [objc_opt_self() itemWithLayoutSize_];
  v26 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_24E369990;
  *(v27 + 32) = v25;
  sub_24E1698C0();
  v28 = v25;
  v29 = sub_24E347EE8();

  v30 = [v26 verticalGroupWithLayoutSize:v24 subitems:v29];

  v31 = [objc_opt_self() sectionWithGroup_];
  [v31 setOrthogonalScrollingBehavior_];
  [v31 setInterGroupSpacing_];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  LODWORD(v29) = *(v16 + *(v13 + 48));
  sub_24DF82D00(v16);
  if (v29 == 1)
  {
    [v31 _setClipsContentToBounds_];
    [v31 _setExcludesBoundarySupplementariesFromClipping_];
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v32 = type metadata accessor for PlayerCardTheme();
    __swift_project_value_buffer(v32, qword_27F20BF00);
    v33 = [a7 traitCollection];
    sub_24E336638();
    v35 = v34;
    v37 = v36;

    [v31 _setClippingInsets_];
  }

  return v31;
}

double sub_24E215368(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Shelf.Presentation(0);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  sub_24E120A58(a2, &v20 - v13);
  sub_24E120A58(a3, &v14[*(v11 + 56)]);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v15 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v15, qword_27F20BF00);
  swift_getObjectType();
  v16 = [a4 traitCollection];
  sub_24E0D03A0(v16, a4);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  v17 = *(v10 + *(v7 + 24));
  sub_24DF82D00(v10);
  if (v17 == 1)
  {
    type metadata accessor for SmallPlayerCardView();
    [objc_msgSend(a4 container)];
    swift_unknownObjectRelease();
    v18 = sub_24DFC1764();
    static SmallPlayerCardView.size(fitting:traitEnvironment:)(v18);
    swift_unknownObjectRelease();
    [objc_msgSend(a4 container)];
    swift_unknownObjectRelease();
  }

  sub_24E120AC8(v14);
  return 0.0;
}

double sub_24E215648@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  sub_24E120A58(a1, &v18 - v10);
  sub_24E120A58(a2, &v11[*(v8 + 56)]);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v12 = type metadata accessor for PlayerCardTheme();
  v13 = *(__swift_project_value_buffer(v12, qword_27F20BF00) + 64);
  v14 = v13;
  v15 = [a3 traitCollection];
  sub_24E33670C(v15, v19);

  sub_24E120AC8(v11);
  *a4 = v13;
  result = 0.0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 33) = 0u;
  *(a4 + 56) = -1;
  v17 = v19[1];
  *(a4 + 64) = v19[0];
  *(a4 + 80) = v17;
  *(a4 + 96) = v20;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 1;
  return result;
}

double sub_24E2157A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E348BC8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_24E120A58(a2, &v23 - v14);
  sub_24E120A58(a3, &v15[*(v12 + 56)]);
  if (qword_27F1DDC40 != -1)
  {
    swift_once();
  }

  v16 = sub_24E3444F8();
  __swift_project_value_buffer(v16, qword_27F20B4D0);
  v17 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v19 = v18;

  v20 = *(v8 + 8);
  v20(v11, v7);
  v21 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();

  v20(v11, v7);
  sub_24E120AC8(v15);
  return v19;
}

void sub_24E2159C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_24E120A58(a2, &v13 - v9);
  sub_24E120A58(a3, &v10[*(v7 + 56)]);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v11 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v11, qword_27F20BF00);
  v12 = [a4 traitCollection];
  sub_24E336638();

  sub_24E120AC8(v10);
  OUTLINED_FUNCTION_7_2();
}

void sub_24E215AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_24E120A58(a2, &v10 - v7);
  sub_24E120A58(a3, &v8[*(v5 + 56)]);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v9 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v9, qword_27F20BF00);
  sub_24E120AC8(v8);
  OUTLINED_FUNCTION_7_2();
}

uint64_t type metadata accessor for SmallPlayerCardCollectionViewCell()
{
  result = qword_27F1E8000;
  if (!qword_27F1E8000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E215CCC(uint64_t a1)
{
  result = sub_24DFCED48(&qword_27F1E8010, type metadata accessor for SmallPlayerCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E215DB4(uint64_t a1)
{
  result = sub_24DFCED48(&qword_27F1E6440, type metadata accessor for SmallPlayerCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for HeaderData()
{
  result = qword_27F1E8018;
  if (!qword_27F1E8018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E215E80()
{
  v0 = type metadata accessor for TitleHeaderView.Style(319);
  if (v1 <= 0x3F)
  {
    sub_24DF9E030(319, &unk_280BE0138);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_24DF9E030(319, &qword_280BE0128);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_24DFC2AD4(319, &qword_280BE0100, &qword_27F1DF2F8);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          sub_24DFC2AD4(319, &qword_280BE0130, &qword_27F1DF158);
          v0 = v8;
          if (v9 <= 0x3F)
          {
            sub_24E2160BC(319, &qword_27F1E5D70, type metadata accessor for Artwork);
            if (v11 > 0x3F)
            {
              return v10;
            }

            else
            {
              sub_24E2160BC(319, &qword_280BE0650, MEMORY[0x277D21F70]);
              v0 = v12;
              if (v13 <= 0x3F)
              {
                sub_24DF9E030(319, &qword_280BE02B8);
                v0 = v14;
                if (v15 <= 0x3F)
                {
                  sub_24E2160BC(319, &qword_27F1E8028, MEMORY[0x277D227A0]);
                  v0 = v16;
                  if (v17 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_24E2160BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_24E216148()
{
  result = qword_27F1E8030;
  if (!qword_27F1E8030)
  {
    type metadata accessor for HeaderData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8030);
  }

  return result;
}

id sub_24E2161A0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setTextAlignment_];
  [v0 setMaximumContentSizeCategory_];
  return v0;
}

char *sub_24E2162A4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_photoView;
  *&v4[v9] = [objc_allocWithZone(GKDashboardPlayerPhotoView) init];
  v10 = OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_badgeContainerView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v12 = [objc_opt_self() systemRedColor];
  [v11 setBackgroundColor_];

  *&v4[v10] = v11;
  v13 = OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_badgeLabel;
  *&v4[v13] = sub_24E2161A0();
  v44.receiver = v4;
  v44.super_class = type metadata accessor for BadgeablePlayerPhotoView();
  v14 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_photoView;
  v16 = *&v14[OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_photoView];
  v17 = v14;
  [v17 addSubview_];
  [*&v14[v15] setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = objc_opt_self();
  [v43 _gkInstallEdgeConstraintsForView_containedWithinParentView_];
  v18 = OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_badgeContainerView;
  [v17 addSubview_];
  [*&v17[v18] setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_badgeLabel;
  [*&v17[v18] addSubview_];
  [*&v17[v19] setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24E3857F0;
  v21 = [v17 topAnchor];
  v22 = [OUTLINED_FUNCTION_1_116() topAnchor];
  v23 = [&qword_27F1E8000 constraintEqualToAnchor_];

  *(v20 + 32) = v23;
  v24 = [v17 trailingAnchor];

  v25 = OUTLINED_FUNCTION_0_150([*&v17[v18] trailingAnchor]);
  *(v20 + 40) = v25;
  v26 = [*&v17[v18] widthAnchor];
  v27 = [OUTLINED_FUNCTION_1_116() heightAnchor];
  v28 = [v24 constraintGreaterThanOrEqualToAnchor_];

  *(v20 + 48) = v28;
  v29 = [*&v17[v18] heightAnchor];
  v30 = [v17 heightAnchor];

  v31 = [v29 constraintEqualToAnchor:v30 multiplier:0.38];
  *(v20 + 56) = v31;
  v32 = [*&v17[v19] leadingAnchor];
  v33 = [OUTLINED_FUNCTION_1_116() leadingAnchor];
  v34 = OUTLINED_FUNCTION_0_150(v33);

  *(v20 + 64) = v34;
  v35 = [*&v17[v19] trailingAnchor];
  v36 = [OUTLINED_FUNCTION_1_116() trailingAnchor];
  v37 = OUTLINED_FUNCTION_0_150(v36);

  *(v20 + 72) = v37;
  v38 = [*&v17[v19] centerYAnchor];
  v39 = [OUTLINED_FUNCTION_1_116() centerYAnchor];
  v40 = OUTLINED_FUNCTION_0_150(v39);

  *(v20 + 80) = v40;
  sub_24DFE83EC();
  v41 = sub_24E347EE8();

  [v43 activateConstraints_];

  [*&v17[v18] setHidden_];
  return v17;
}

void sub_24E216760()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BadgeablePlayerPhotoView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_badgeContainerView];
  v2 = [v1 layer];
  [v1 bounds];
  [v2 setCornerRadius_];
}

void sub_24E21683C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_photoView;
  *(v0 + v1) = [objc_allocWithZone(GKDashboardPlayerPhotoView) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_badgeContainerView;
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [objc_opt_self() systemRedColor];
  [v3 setBackgroundColor_];

  *(v0 + v2) = v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_badgeLabel;
  *(v0 + v5) = sub_24E2161A0();
  sub_24E348AE8();
  __break(1u);
}

void sub_24E216950()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_badgeLabel);
  v2 = sub_24E348BA8();
  sub_24DFA0B40(v2, v3, v1);
}

id sub_24E2169A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgeablePlayerPhotoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id OUTLINED_FUNCTION_0_150(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

Swift::Void __swiftcall UINavigationController._updateViewControllerStack(viewController:)(UIViewController_optional *viewController)
{
  if (!viewController)
  {
    sub_24E18D984();
    v17 = sub_24E347EE8();
    [v1 setViewControllers_];
    goto LABEL_6;
  }

  v2 = viewController;
  v3 = [(UIViewController_optional *)v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v1 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24E369990;
  *(v15 + 32) = v2;
  sub_24E18D984();
  v16 = v2;
  v17 = sub_24E347EE8();

  [v1 setViewControllers_];

LABEL_6:
}

void sub_24E216C0C(void *a1, uint64_t a2, UIViewController_optional *a3)
{
  v5 = a3;
  v6 = a1;
  UINavigationController._updateViewControllerStack(viewController:)(a3);
}

void sub_24E216C88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24E216CF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24DF88A8C(0, &qword_27F1E26D8);
    v4 = sub_24E347F08();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_24E216D94(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v12 = *(a1 + 32);

  v18 = a2;
  v16 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v12(a2, a3, a4, a5, a6, a7);
}

void static Highlight.genericActivityHighlight.getter(uint64_t a1@<X8>)
{
  v3 = sub_24E347CB8();
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = OUTLINED_FUNCTION_1_12();

  sub_24E347CF8();
  OUTLINED_FUNCTION_6_9();

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 8;
  *(a1 + 48) = v3;
  *(a1 + 56) = v1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xE000000000000000;
  *(a1 + 104) = 0;
}

uint64_t Highlight.IconStyle.hashValue.getter()
{
  v1 = *v0;
  sub_24E348D18();
  MEMORY[0x25303F880](v1);
  return sub_24E348D68();
}

uint64_t Highlight.title.setter()
{
  OUTLINED_FUNCTION_23_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

id Highlight.glyph.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 40);
  *(a1 + 24) = v5;
  return sub_24E0EA9F4(v2, v3, v4, v5);
}

__n128 Highlight.glyph.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_24E0EAB44(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = v5;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t Highlight.subtitle.setter()
{
  OUTLINED_FUNCTION_23_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Highlight.caption.setter()
{
  OUTLINED_FUNCTION_23_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Highlight.primaryAccessibilityLabel.setter()
{
  OUTLINED_FUNCTION_23_0();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Highlight.id.getter()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = *v0;

  MEMORY[0x25303E950](v1, v2);
  return v4;
}

void *Highlight.adamID.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

unint64_t static Highlight.attributedString(symbol:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v1 = [objc_opt_self() labelColor];
  sub_24DF88A8C(0, &qword_280BE0110);

  v2 = sub_24DFD29F8();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() textAttachmentWithImage_];
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    v6 = [objc_opt_self() attributedStringWithAttachment_];
    [v0 appendAttributedString_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E36A270;
    v8 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v9 = sub_24DF88A8C(0, &qword_27F1DEE28);
    *(inited + 40) = v5;
    v10 = *MEMORY[0x277D740C0];
    *(inited + 64) = v9;
    *(inited + 72) = v10;
    *(inited + 104) = sub_24DF88A8C(0, &qword_27F1E5FD0);
    *(inited + 80) = v1;
    type metadata accessor for Key(0);
    sub_24DFEA7B4();
    v11 = v8;
    v12 = v5;
    v13 = v10;
    v14 = v1;
    sub_24E347C28();
    v15 = sub_24E347BE8();

    v16 = v0;
    result = [v16 length];
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      [v16 addAttributes:v15 range:{0, result}];

      return v16;
    }
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];

    return v18;
  }

  return result;
}

uint64_t sub_24E217618@<X0>(uint64_t *a1@<X8>)
{
  result = Highlight.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static GKLocalPlayer.highlightPlaceholder.getter(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() local];
  v4 = [v3 alias];

  sub_24E347CF8();
  OUTLINED_FUNCTION_6_9();
  v5 = [objc_opt_self() sharedTheme];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 eventIconImage];

    if (v7)
    {

      v8 = sub_24E347CB8();
      v9 = GKGameCenterUIFrameworkBundle();
      v10 = GKGetLocalizedStringFromTableInBundle();

      v11 = sub_24E347CF8();
      v13 = v12;

      v14 = sub_24E347CB8();
      v15 = GKGameCenterUIFrameworkBundle();
      v16 = GKGetLocalizedStringFromTableInBundle();

      v17 = sub_24E347CF8();
      v19 = v18;

      *a1 = v3;
      *(a1 + 8) = v1;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = v7;
      *(a1 + 40) = 2;
      *(a1 + 48) = v11;
      *(a1 + 56) = v13;
      *(a1 + 64) = v17;
      *(a1 + 72) = v19;
      OUTLINED_FUNCTION_9_55();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24E217844()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_5_30();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v0;
  v3[4] = v1;
  OUTLINED_FUNCTION_0_95();
  OUTLINED_FUNCTION_11_41();
  v6[2] = sub_24E0121FC;
  v6[3] = &block_descriptor_49;
  v4 = _Block_copy(v6);

  v5 = v1;

  [v5 loadPhotoForSize:1 withCompletionHandler:v4];
  _Block_release(v4);
}

void sub_24E21790C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a2)
  {
    a3(0);
  }

  else if (a1)
  {
    v11 = a1;
    (a3)(a1, 0);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    aBlock[4] = sub_24E21D63C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E216C88;
    aBlock[3] = &block_descriptor_55;
    v10 = _Block_copy(aBlock);

    [a5 monogramImageWithPhotoSize:1 handler:v10];
    _Block_release(v10);
  }
}

uint64_t static GKLocalPlayer.loadHighlights(handler:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() local];
  OUTLINED_FUNCTION_5_30();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v4;

  v6 = v4;
  sub_24E217844();
}

uint64_t sub_24E217B00(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5)
{
  if (a2)
  {
    return a3(MEMORY[0x277D84F90]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E25E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24E367D20;
  v10 = [a5 alias];
  result = sub_24E347CF8();
  v26 = result;
  if (a1)
  {
    v12 = v11;
    v13 = a1;

    v14 = sub_24E347CB8();
    v15 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();

    v17 = sub_24E347CF8();
    v19 = v18;

    v20 = sub_24E347CB8();
    v21 = GKGameCenterUIFrameworkBundle();
    v22 = GKGetLocalizedStringFromTableInBundle();

    v23 = sub_24E347CF8();
    v25 = v24;

    *(v9 + 32) = v26;
    *(v9 + 40) = v12;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    *(v9 + 48) = a1;
    *(v9 + 72) = 2;
    *(v9 + 80) = v17;
    *(v9 + 88) = v19;
    *(v9 + 96) = v23;
    *(v9 + 104) = v25;
    *(v9 + 112) = 0;
    *(v9 + 120) = 0;
    *(v9 + 128) = 0xE000000000000000;
    *(v9 + 136) = 0;
    a3(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static GKLocalPlayer.loadDashboardHighlights(handler:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  OUTLINED_FUNCTION_16_4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  OUTLINED_FUNCTION_0_95();
  OUTLINED_FUNCTION_11_41();
  v7[2] = sub_24E2185C4;
  v7[3] = &block_descriptor_78;
  v6 = _Block_copy(v7);

  [v4 loadHighlightsDataWithCompletionHandler_];
  _Block_release(v6);
}

uint64_t sub_24E217DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a3)
  {
    return a4(MEMORY[0x277D84F90]);
  }

  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D83C10];
  if (a1 < 1)
  {
    v90 = static Highlight.attributedString(symbol:)();
    v35 = sub_24E347CB8();
    v36 = GKGameCenterUIFrameworkBundle();
    v37 = GKGetLocalizedStringFromTableInBundle();

    v38 = sub_24E347CF8();
    v84 = v39;
    v87 = v38;

    v40 = sub_24E347CB8();
    v41 = GKGameCenterUIFrameworkBundle();
    v42 = GKGetLocalizedStringFromTableInBundle();

    v82 = sub_24E347CF8();
    v44 = v43;

    v45 = sub_24E347CB8();
    v46 = GKGameCenterUIFrameworkBundle();
    v47 = GKGetLocalizedStringFromTableInBundle();

    v48 = sub_24E347CF8();
    v50 = v49;

    sub_24E077BC4();
    v32 = v51;
    v52 = *(v51 + 16);
    if (v52 >= *(v51 + 24) >> 1)
    {
      sub_24E077BC4();
      v32 = v80;
    }

    *(v32 + 16) = v52 + 1;
    v34 = v32 + 112 * v52;
    *(v34 + 32) = 0;
    *(v34 + 40) = 0xE000000000000000;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    *(v34 + 48) = v90;
    *(v34 + 72) = 1;
    *(v34 + 80) = v87;
    *(v34 + 88) = v84;
    *(v34 + 96) = v82;
    *(v34 + 104) = v44;
    *(v34 + 112) = 1;
    *(v34 + 120) = v48;
    *(v34 + 128) = v50;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v10 = [objc_opt_self() localizedStringFromNumber:v9 numberStyle:1];
    v11 = sub_24E347CF8();
    v86 = v12;
    v89 = v11;

    v13 = sub_24E347CB8();
    v14 = GKGameCenterUIFrameworkBundle();
    v15 = GKGetLocalizedStringFromTableInBundle();

    v16 = sub_24E347CF8();
    v81 = v17;
    v83 = v16;

    v18 = sub_24E347CB8();
    v19 = GKGameCenterUIFrameworkBundle();
    v20 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24E367D20;
    *(v21 + 56) = v7;
    *(v21 + 64) = v8;
    *(v21 + 32) = a1;
    v22 = sub_24E347D18();
    v24 = v23;

    v25 = sub_24E347CB8();
    v26 = GKGameCenterUIFrameworkBundle();
    v27 = GKGetLocalizedStringFromTableInBundle();

    v28 = sub_24E347CF8();
    v30 = v29;

    sub_24E077BC4();
    v32 = v31;
    v33 = *(v31 + 16);
    if (v33 >= *(v31 + 24) >> 1)
    {
      sub_24E077BC4();
      v32 = v78;
    }

    *(v32 + 16) = v33 + 1;
    v34 = v32 + 112 * v33;
    *(v34 + 32) = 0;
    *(v34 + 40) = 0xE000000000000000;
    *(v34 + 48) = v89;
    *(v34 + 56) = v86;
    *(v34 + 64) = 0;
    *(v34 + 72) = 0;
    *(v34 + 73) = *v94;
    *(v34 + 76) = *&v94[3];
    *(v34 + 80) = v83;
    *(v34 + 88) = v81;
    *(v34 + 96) = v22;
    *(v34 + 104) = v24;
    *(v34 + 112) = 1;
    *(v34 + 116) = *&v93[3];
    *(v34 + 113) = *v93;
    *(v34 + 120) = v28;
    *(v34 + 128) = v30;
  }

  *(v34 + 136) = 0;
  v53 = MEMORY[0x277D83C10];
  if (a2 >= 1)
  {
    v54 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v55 = [objc_opt_self() localizedStringFromNumber:v54 numberStyle:1];
    v56 = sub_24E347CF8();
    v88 = v57;
    v91 = v56;

    v58 = sub_24E347CB8();
    v59 = GKGameCenterUIFrameworkBundle();
    v60 = GKGetLocalizedStringFromTableInBundle();

    v85 = sub_24E347CF8();
    v62 = v61;

    v63 = sub_24E347CB8();
    v64 = GKGameCenterUIFrameworkBundle();
    v65 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_24E367D20;
    *(v66 + 56) = MEMORY[0x277D83B88];
    *(v66 + 64) = v53;
    *(v66 + 32) = a2;
    v67 = sub_24E347D18();
    v69 = v68;

    v70 = sub_24E347CB8();
    v71 = GKGameCenterUIFrameworkBundle();
    v72 = GKGetLocalizedStringFromTableInBundle();

    v73 = sub_24E347CF8();
    v75 = v74;

    v76 = *(v32 + 16);
    if (v76 >= *(v32 + 24) >> 1)
    {
      sub_24E077BC4();
      v32 = v79;
    }

    *(v32 + 16) = v76 + 1;
    v77 = v32 + 112 * v76;
    *(v77 + 32) = 0;
    *(v77 + 40) = 0xE000000000000000;
    *(v77 + 48) = v91;
    *(v77 + 56) = v88;
    *(v77 + 64) = 0;
    *(v77 + 72) = 0;
    *(v77 + 73) = *v94;
    *(v77 + 76) = *&v94[3];
    *(v77 + 80) = v85;
    *(v77 + 88) = v62;
    *(v77 + 96) = v67;
    *(v77 + 104) = v69;
    *(v77 + 112) = 1;
    *(v77 + 116) = *&v93[3];
    *(v77 + 113) = *v93;
    *(v77 + 120) = v73;
    *(v77 + 128) = v75;
    *(v77 + 136) = 0;
  }

  a4(v32);
}

void sub_24E2185C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static GKAchievement.loadHighlights(forGame:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = [objc_opt_self() local];
  OUTLINED_FUNCTION_16_4();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  OUTLINED_FUNCTION_0_95();
  OUTLINED_FUNCTION_1_117();
  v11[2] = v9;
  v11[3] = &block_descriptor_12_3;
  v10 = _Block_copy(v11);

  OUTLINED_FUNCTION_10_52(v6, sel_loadAchievementsForGameV2_player_includeUnreported_includeHidden_withCompletionHandler_, a1);
  _Block_release(v10);
}

uint64_t sub_24E2187A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a3;
  if (!a1)
  {
    return a3(MEMORY[0x277D84F90]);
  }

  v7 = a1;
  v234 = sub_24DFD8654();
  v241 = MEMORY[0x277D84F90];
  v8 = sub_24DFD8654();
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  v11 = v7 & 0xFFFFFFFFFFFFFF8;
  v12 = &selRef_iconURLString;
  while (v8 != v9)
  {
    if (v10)
    {
      v13 = MEMORY[0x25303F560](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v13 = *(v7 + 8 * v9 + 32);
    }

    v4 = v13;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if ([v13 isCompleted])
    {
      v3 = &v241;
      sub_24E348A48();
      v5 = *(v241 + 16);
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }

    else
    {
    }

    ++v9;
  }

  v221 = v6;
  v14 = sub_24DFD8654();

  v15 = sub_24E347CB8();
  v16 = GKGameCenterUIFrameworkBundle();
  v17 = GKGetLocalizedStringFromTableInBundle();

  v18 = sub_24E347CF8();
  v223 = v19;
  v225 = v18;

  v20 = sub_24E347CB8();
  v21 = GKGameCenterUIFrameworkBundle();
  v22 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
  v23 = swift_allocObject();
  v217 = xmmword_24E36A270;
  *(v23 + 16) = xmmword_24E36A270;
  v229 = v14;
  v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v25 = objc_opt_self();
  v26 = [v25 localizedStringFromNumber:v24 numberStyle:1];
  v27 = sub_24E347CF8();
  v29 = v28;

  v30 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v31 = sub_24DF95A7C();
  *(v23 + 64) = v31;
  *(v23 + 32) = v27;
  *(v23 + 40) = v29;
  v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v219 = v25;
  v33 = [v25 localizedStringFromNumber:v32 numberStyle:1];
  v34 = sub_24E347CF8();
  v36 = v35;

  *(v23 + 96) = v30;
  *(v23 + 104) = v31;
  v218 = v31;
  *(v23 + 72) = v34;
  *(v23 + 80) = v36;
  v7 = sub_24E347D18();
  v8 = v37;

  v38 = sub_24E347CB8();
  v39 = GKGameCenterUIFrameworkBundle();
  v40 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v4 = v41;

  v42 = sub_24E347CB8();
  v43 = GKGameCenterUIFrameworkBundle();
  v44 = GKGetLocalizedStringFromTableInBundle();

  v12 = sub_24E347CF8();
  v6 = v45;

  v46 = sub_24E347CB8();
  v47 = GKGameCenterUIFrameworkBundle();
  v48 = GKGetLocalizedStringFromTableInBundle();

  v5 = sub_24E347CF8();
  v10 = v49;

  sub_24E077BC4();
  v51 = v50;
  v11 = *(v50 + 16);
  v9 = v11 + 1;
  if (v11 < *(v50 + 24) >> 1)
  {
    goto LABEL_14;
  }

LABEL_44:
  sub_24E077BC4();
  v51 = v209;
LABEL_14:
  *(v51 + 16) = v9;
  v52 = v51 + 112 * v11;
  *(v52 + 32) = v225;
  *(v52 + 40) = v223;
  *(v52 + 48) = v7;
  *(v52 + 56) = v8;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;
  *(v52 + 73) = *v240;
  *(v52 + 76) = *&v240[3];
  *(v52 + 80) = v3;
  *(v52 + 88) = v4;
  *(v52 + 96) = v12;
  *(v52 + 104) = v6;
  *(v52 + 112) = 1;
  *(v52 + 116) = *&v239[3];
  *(v52 + 113) = *v239;
  *(v52 + 120) = v5;
  *(v52 + 128) = v10;
  *(v52 + 136) = 0;
  v222 = v51;
  if (v229 <= 0)
  {
    v86 = sub_24E347CB8();
    v87 = GKGameCenterUIFrameworkBundle();
    v88 = GKGetLocalizedStringFromTableInBundle();

    v89 = sub_24E347CF8();
    v226 = v90;
    v231 = v89;

    v91 = sub_24E347CB8();
    v92 = GKGameCenterUIFrameworkBundle();
    v93 = GKGetLocalizedStringFromTableInBundle();

    v94 = sub_24E347CF8();
    v96 = v95;

    v97 = sub_24E347CB8();
    v98 = GKGameCenterUIFrameworkBundle();
    v99 = GKGetLocalizedStringFromTableInBundle();

    v100 = sub_24E347CF8();
    v102 = v101;

    v103 = sub_24E347CB8();
    v104 = GKGameCenterUIFrameworkBundle();
    v105 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    v106 = swift_allocObject();
    v107 = MEMORY[0x277D83B88];
    *(v106 + 16) = xmmword_24E367D20;
    v108 = MEMORY[0x277D83C10];
    *(v106 + 56) = v107;
    *(v106 + 64) = v108;
    *(v106 + 32) = v234;
    v109 = sub_24E347CC8();
    v111 = v110;

    v112 = sub_24E347CB8();
    v113 = GKGameCenterUIFrameworkBundle();
    v114 = GKGetLocalizedStringFromTableInBundle();

    v115 = sub_24E347CF8();
    v117 = v116;

    v51 = v222;
    v118 = *(v222 + 16);
    if (v118 >= *(v222 + 24) >> 1)
    {
      sub_24E077BC4();
      v51 = v210;
    }

    *(v51 + 16) = v118 + 1;
    v84 = v51 + 112 * v118;
    *(v84 + 32) = v231;
    *(v84 + 40) = v226;
    *(v84 + 48) = v94;
    *(v84 + 56) = v96;
    *(v84 + 64) = 0;
    *(v84 + 72) = 0;
    *(v84 + 73) = *v238;
    *(v84 + 76) = *&v238[3];
    *(v84 + 80) = v100;
    *(v84 + 88) = v102;
    *(v84 + 96) = v109;
    *(v84 + 104) = v111;
    *(v84 + 112) = 0;
    *(v84 + 116) = *&v237[3];
    *(v84 + 113) = *v237;
    *(v84 + 120) = v115;
    *(v84 + 128) = v117;
    goto LABEL_23;
  }

  if (v229 != 1)
  {
    if (__OFSUB__(v234, 1))
    {
      __break(1u);
    }

    else
    {
      if (v229 >= v234 - 1)
      {
        if (v229 >= v234)
        {
          if (v229 != v234)
          {
            goto LABEL_24;
          }

          v171 = sub_24E347CB8();
          v172 = GKGameCenterUIFrameworkBundle();
          v173 = GKGetLocalizedStringFromTableInBundle();

          v174 = sub_24E347CF8();
          v228 = v175;
          v233 = v174;

          v176 = sub_24E347CB8();
          v177 = GKGameCenterUIFrameworkBundle();
          v178 = GKGetLocalizedStringFromTableInBundle();

          v224 = sub_24E347CF8();
          v220 = v179;

          v180 = sub_24E347CB8();
          v181 = GKGameCenterUIFrameworkBundle();
          v182 = GKGetLocalizedStringFromTableInBundle();

          v183 = sub_24E347CF8();
          v215 = v184;
          v216 = v183;

          v185 = sub_24E347CB8();
          v186 = GKGameCenterUIFrameworkBundle();
          v187 = GKGetLocalizedStringFromTableInBundle();

          sub_24E347CF8();
          v188 = swift_allocObject();
          *(v188 + 16) = v217;
          v189 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v190 = [v219 localizedStringFromNumber:v189 numberStyle:1];
          v191 = sub_24E347CF8();
          v193 = v192;

          v194 = MEMORY[0x277D837D0];
          *(v188 + 56) = MEMORY[0x277D837D0];
          *(v188 + 64) = v218;
          *(v188 + 32) = v191;
          *(v188 + 40) = v193;
          v195 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v196 = [v219 localizedStringFromNumber:v195 numberStyle:1];
          v197 = sub_24E347CF8();
          v199 = v198;

          *(v188 + 96) = v194;
          *(v188 + 104) = v218;
          *(v188 + 72) = v197;
          *(v188 + 80) = v199;
          v200 = sub_24E347D18();
          v202 = v201;

          v203 = sub_24E347CB8();
          v204 = GKGameCenterUIFrameworkBundle();
          v205 = GKGetLocalizedStringFromTableInBundle();

          v206 = sub_24E347CF8();
          v169 = v207;

          v51 = v222;
          v208 = *(v222 + 16);
          if (v208 >= *(v222 + 24) >> 1)
          {
            sub_24E077BC4();
            v51 = v214;
          }

          *(v51 + 16) = v208 + 1;
          v140 = v51 + 112 * v208;
          *(v140 + 32) = v233;
          *(v140 + 40) = v228;
          *(v140 + 48) = v224;
          *(v140 + 56) = v220;
          *(v140 + 64) = 0;
          *(v140 + 72) = 0;
          *(v140 + 73) = *v238;
          *(v140 + 76) = *&v238[3];
          *(v140 + 80) = v216;
          *(v140 + 88) = v215;
          *(v140 + 96) = v200;
          *(v140 + 104) = v202;
          *(v140 + 112) = 0;
          *(v140 + 116) = *&v237[3];
          *(v140 + 113) = *v237;
          *(v140 + 120) = v206;
        }

        else
        {
          v141 = sub_24E347CB8();
          v142 = GKGameCenterUIFrameworkBundle();
          v143 = GKGetLocalizedStringFromTableInBundle();

          v236 = sub_24E347CF8();
          v232 = v144;

          v145 = sub_24E347CB8();
          v146 = GKGameCenterUIFrameworkBundle();
          v147 = GKGetLocalizedStringFromTableInBundle();

          v227 = sub_24E347CF8();
          v149 = v148;

          v150 = sub_24E347CB8();
          v151 = GKGameCenterUIFrameworkBundle();
          v152 = GKGetLocalizedStringFromTableInBundle();

          v153 = sub_24E347CF8();
          v155 = v154;

          v156 = sub_24E347CB8();
          v157 = GKGameCenterUIFrameworkBundle();
          v158 = GKGetLocalizedStringFromTableInBundle();

          sub_24E347CF8();
          v159 = swift_allocObject();
          *(v159 + 16) = xmmword_24E367D20;
          v160 = MEMORY[0x277D83C10];
          *(v159 + 56) = MEMORY[0x277D83B88];
          *(v159 + 64) = v160;
          *(v159 + 32) = 1;
          v161 = sub_24E347D18();
          v163 = v162;

          v164 = sub_24E347CB8();
          v165 = GKGameCenterUIFrameworkBundle();
          v166 = GKGetLocalizedStringFromTableInBundle();

          v167 = sub_24E347CF8();
          v169 = v168;

          v51 = v222;
          v170 = *(v222 + 16);
          if (v170 >= *(v222 + 24) >> 1)
          {
            sub_24E077BC4();
            v51 = v213;
          }

          *(v51 + 16) = v170 + 1;
          v140 = v51 + 112 * v170;
          *(v140 + 32) = v236;
          *(v140 + 40) = v232;
          *(v140 + 48) = v227;
          *(v140 + 56) = v149;
          *(v140 + 64) = 0;
          *(v140 + 72) = 0;
          *(v140 + 73) = *v238;
          *(v140 + 76) = *&v238[3];
          *(v140 + 80) = v153;
          *(v140 + 88) = v155;
          *(v140 + 96) = v161;
          *(v140 + 104) = v163;
          *(v140 + 112) = 0;
          *(v140 + 116) = *&v237[3];
          *(v140 + 113) = *v237;
          *(v140 + 120) = v167;
        }

        *(v140 + 128) = v169;
LABEL_38:
        *(v140 + 136) = 0;
        v119 = v221;
        goto LABEL_39;
      }

      v120 = sub_24E347CB8();
      v121 = GKGameCenterUIFrameworkBundle();
      v122 = GKGetLocalizedStringFromTableInBundle();

      v234 = sub_24E347CF8();
      v229 = v123;

      v124 = sub_24E347CB8();
      v125 = GKGameCenterUIFrameworkBundle();
      v126 = GKGetLocalizedStringFromTableInBundle();

      v225 = sub_24E347CF8();
      v8 = v127;

      v128 = sub_24E347CB8();
      v129 = GKGameCenterUIFrameworkBundle();
      v130 = GKGetLocalizedStringFromTableInBundle();

      v5 = sub_24E347CF8();
      v10 = v131;

      v132 = sub_24E347CB8();
      v133 = GKGameCenterUIFrameworkBundle();
      v134 = GKGetLocalizedStringFromTableInBundle();

      v11 = sub_24E347CF8();
      v12 = v135;

      v136 = sub_24E347CB8();
      v137 = GKGameCenterUIFrameworkBundle();
      v138 = GKGetLocalizedStringFromTableInBundle();

      v6 = sub_24E347CF8();
      v7 = v139;

      v51 = v222;
      v4 = *(v222 + 16);
      v9 = v4 + 1;
      if (v4 < *(v222 + 24) >> 1)
      {
LABEL_28:
        *(v51 + 16) = v9;
        v140 = v51 + 112 * v4;
        *(v140 + 32) = v234;
        *(v140 + 40) = v229;
        *(v140 + 48) = v225;
        *(v140 + 56) = v8;
        *(v140 + 64) = 0;
        *(v140 + 72) = 0;
        *(v140 + 73) = *v238;
        *(v140 + 76) = *&v238[3];
        *(v140 + 80) = v5;
        *(v140 + 88) = v10;
        *(v140 + 96) = v11;
        *(v140 + 104) = v12;
        *(v140 + 112) = 0;
        *(v140 + 116) = *&v237[3];
        *(v140 + 113) = *v237;
        *(v140 + 120) = v6;
        *(v140 + 128) = v7;
        goto LABEL_38;
      }
    }

    sub_24E077BC4();
    v51 = v212;
    goto LABEL_28;
  }

  v53 = sub_24E347CB8();
  v54 = GKGameCenterUIFrameworkBundle();
  v55 = GKGetLocalizedStringFromTableInBundle();

  v235 = sub_24E347CF8();
  v230 = v56;

  v57 = sub_24E347CB8();
  v58 = GKGameCenterUIFrameworkBundle();
  v59 = GKGetLocalizedStringFromTableInBundle();

  v60 = sub_24E347CF8();
  v62 = v61;

  v63 = sub_24E347CB8();
  v64 = GKGameCenterUIFrameworkBundle();
  v65 = GKGetLocalizedStringFromTableInBundle();

  v66 = sub_24E347CF8();
  v68 = v67;

  v69 = sub_24E347CB8();
  v70 = GKGameCenterUIFrameworkBundle();
  v71 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_24E367D20;
  v73 = MEMORY[0x277D83C10];
  *(v72 + 56) = MEMORY[0x277D83B88];
  *(v72 + 64) = v73;
  *(v72 + 32) = 1;
  v74 = sub_24E347D18();
  v76 = v75;

  v77 = sub_24E347CB8();
  v78 = GKGameCenterUIFrameworkBundle();
  v79 = GKGetLocalizedStringFromTableInBundle();

  v80 = sub_24E347CF8();
  v82 = v81;

  v51 = v222;
  v83 = *(v222 + 16);
  if (v83 >= *(v222 + 24) >> 1)
  {
    sub_24E077BC4();
    v51 = v211;
  }

  *(v51 + 16) = v83 + 1;
  v84 = v51 + 112 * v83;
  *(v84 + 32) = v235;
  *(v84 + 40) = v230;
  *(v84 + 48) = v60;
  *(v84 + 56) = v62;
  *(v84 + 64) = 0;
  *(v84 + 72) = 0;
  *(v84 + 73) = *v238;
  *(v84 + 76) = *&v238[3];
  *(v84 + 80) = v66;
  *(v84 + 88) = v68;
  *(v84 + 96) = v74;
  *(v84 + 104) = v76;
  *(v84 + 112) = 0;
  *(v84 + 116) = *&v237[3];
  *(v84 + 113) = *v237;
  *(v84 + 120) = v80;
  *(v84 + 128) = v82;
LABEL_23:
  *(v84 + 136) = 0;
LABEL_24:
  v119 = v221;
LABEL_39:
  v119(v51);
}

void _sSo13GKAchievementC12GameCenterUIE20highlightPlaceholderAC9HighlightVvgZ_0(uint64_t a1@<X8>)
{
  v5 = sub_24E347CB8();
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = OUTLINED_FUNCTION_1_12();

  sub_24E347CF8();
  OUTLINED_FUNCTION_6_9();

  v8 = sub_24E347CB8();
  v9 = GKGameCenterUIFrameworkBundle();
  v10 = OUTLINED_FUNCTION_4_9();

  v11 = sub_24E347CF8();
  v13 = v12;

  v14 = sub_24E347CB8();
  v15 = GKGameCenterUIFrameworkBundle();
  v16 = OUTLINED_FUNCTION_14_36();

  v17 = sub_24E347CF8();
  v19 = v18;

  *a1 = v5;
  *(a1 + 8) = v1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 8;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = v17;
  *(a1 + 72) = v19;
  OUTLINED_FUNCTION_9_55();
}

void static GKAchievementInternal.loadHighlights(handler:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [objc_opt_self() currentGame];
  v6 = [objc_opt_self() local];
  OUTLINED_FUNCTION_16_4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  OUTLINED_FUNCTION_0_95();
  OUTLINED_FUNCTION_1_117();
  v10[2] = v8;
  v10[3] = &block_descriptor_18_2;
  v9 = _Block_copy(v10);

  OUTLINED_FUNCTION_10_52(v4, sel_loadAchievementsForGameV2_player_includeUnreported_includeHidden_withCompletionHandler_, v5);
  _Block_release(v9);
}

uint64_t sub_24E219E9C(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!a1)
  {
    return a3(MEMORY[0x277D84F90]);
  }

  sub_24DFD8654();
  v29 = MEMORY[0x277D84F90];
  v4 = sub_24DFD8654();
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25303F560](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);

      __break(1u);
      return result;
    }

    if ([v6 isCompleted])
    {
      sub_24E348A48();
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }

    else
    {
    }
  }

  v29 = sub_24E0834B0(v8);
  sub_24E21C5F0(&v29);

  v9 = sub_24DFD8654();

  sub_24E343AA8();
  if (v9 <= 0)
  {
    v10 = sub_24E3438D8();
  }

  else
  {
    v10 = sub_24E343A58();
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E25E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24E367D20;
  v16 = sub_24E347CB8();
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();

  v19 = sub_24E347CF8();
  v21 = v20;

  v22 = sub_24E347CB8();
  v23 = GKGameCenterUIFrameworkBundle();
  v24 = GKGetLocalizedStringFromTableInBundle();

  v25 = sub_24E347CF8();
  v27 = v26;

  *(v15 + 32) = v19;
  *(v15 + 40) = v21;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 48) = 1;
  *(v15 + 72) = 8;
  *(v15 + 80) = v13;
  *(v15 + 88) = v14;
  *(v15 + 96) = v25;
  *(v15 + 104) = v27;
  *(v15 + 112) = 0;
  *(v15 + 120) = 0;
  *(v15 + 128) = 0xE000000000000000;
  *(v15 + 136) = 0;
  a3(v15);
}

void static GKLeaderboard.highlightPlaceholder.getter(uint64_t a1@<X8>)
{
  v5 = sub_24E347CB8();
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = OUTLINED_FUNCTION_1_12();

  sub_24E347CF8();
  OUTLINED_FUNCTION_6_9();

  v8 = sub_24E347CB8();
  v9 = GKGameCenterUIFrameworkBundle();
  v10 = OUTLINED_FUNCTION_4_9();

  v11 = sub_24E347CF8();
  v13 = v12;

  v14 = sub_24E347CB8();
  v15 = GKGameCenterUIFrameworkBundle();
  v16 = OUTLINED_FUNCTION_14_36();

  v17 = sub_24E347CF8();
  v19 = v18;

  v20 = sub_24E347CB8();
  v21 = GKGameCenterUIFrameworkBundle();
  v22 = GKGetLocalizedStringFromTableInBundle();

  v23 = sub_24E347CF8();
  v25 = v24;

  *a1 = v5;
  *(a1 + 8) = v1;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = v23;
  *(a1 + 96) = v25;
  *(a1 + 104) = 0;
}

void sub_24E21A3E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = [objc_opt_self() currentGame];
  a3();
}

void static GKLeaderboard.loadHighlights(forGame:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  OUTLINED_FUNCTION_16_4();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  OUTLINED_FUNCTION_0_95();
  OUTLINED_FUNCTION_11_41();
  v9[2] = sub_24E216D94;
  v9[3] = &block_descriptor_24_1;
  v8 = _Block_copy(v9);

  [v6 loadHighlightsWithPlayerScope:1 timeScope:2 game:a1 handler:v8];
  _Block_release(v8);
}

_BYTE *sub_24E21A548(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void (*a7)(uint64_t))
{
  v8 = a5;
  v9 = a2;
  v10 = a1;
  v11 = &selRef_processorCount;
  if (!a1)
  {
    v44 = MEMORY[0x277D84F90];
    if (a2)
    {
      goto LABEL_22;
    }

LABEL_40:
    if (!v10)
    {
      goto LABEL_60;
    }

    goto LABEL_51;
  }

  if (a2)
  {
    v225 = a1;
    v12 = v9;
    if ([v12 rank] >= 1 && a6 >= 1)
    {
      v234 = v9;
      sub_24E343AA8();
      [v12 rank];
      v238 = a6;
      v13 = sub_24E343A68();
      v218 = v14;
      v222 = v13;
      v15 = sub_24E347CB8();
      v16 = GKGameCenterUIFrameworkBundle();
      v17 = GKGetLocalizedStringFromTableInBundle();

      v18 = sub_24E347CF8();
      v211 = v19;
      v214 = v18;

      v20 = sub_24E347CB8();
      v21 = GKGameCenterUIFrameworkBundle();
      v22 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24E367D20;
      v24 = [v12 &selRef_reportEvent_type_startTime_ + 7];
      v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v26 = [objc_opt_self() localizedStringFromNumber:v25 numberStyle:1];
      v27 = sub_24E347CF8();
      v29 = v28;

      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_24DF95A7C();
      *(v23 + 32) = v27;
      *(v23 + 40) = v29;
      v30 = sub_24E347D18();
      v32 = v31;

      result = sub_24E32936C(v225);
      if (!v34)
      {
LABEL_71:
        __break(1u);
        return result;
      }

      v35 = result;
      v36 = v34;
      v37 = sub_24E347CB8();
      v38 = GKGameCenterUIFrameworkBundle();
      v39 = GKGetLocalizedStringFromTableInBundle();

      v40 = sub_24E347CF8();
      v42 = v41;

      sub_24E077BC4();
      v44 = v43;
      v45 = *(v43 + 16);
      if (v45 >= *(v43 + 24) >> 1)
      {
        sub_24E077BC4();
        v44 = v205;
      }

      *(v44 + 16) = v45 + 1;
      v46 = v44 + 112 * v45;
      *(v46 + 32) = v214;
      *(v46 + 40) = v211;
      *(v46 + 48) = v30;
      *(v46 + 56) = v32;
      *(v46 + 64) = 0;
      *(v46 + 72) = 0;
      *(v46 + 80) = v222;
      *(v46 + 88) = v218;
      *(v46 + 96) = v35;
      *(v46 + 104) = v36;
      *(v46 + 112) = 1;
      *(v46 + 120) = v40;
      *(v46 + 128) = v42;
      *(v46 + 136) = 0;
      v10 = a1;
      v9 = v234;
      a6 = v238;
      v11 = &selRef_processorCount;
      v8 = a5;
      goto LABEL_23;
    }
  }

  else
  {
    v47 = a1;
  }

  result = sub_24E32936C(v10);
  if (!v48)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v49 = sub_24E347DD8();

  if (v49 <= 0)
  {

    v44 = MEMORY[0x277D84F90];
  }

  else
  {
    v235 = v9;
    v239 = a6;
    result = sub_24E32936C(v10);
    if (!v50)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    sub_24E343AA8();
    v51 = sub_24E343A78();
    v223 = v52;
    v226 = v51;

    v53 = sub_24E347CB8();
    v54 = GKGameCenterUIFrameworkBundle();
    v55 = GKGetLocalizedStringFromTableInBundle();

    v56 = sub_24E347CF8();
    v215 = v57;
    v219 = v56;

    v58 = sub_24E347CB8();
    v59 = GKGameCenterUIFrameworkBundle();
    v60 = GKGetLocalizedStringFromTableInBundle();

    v61 = sub_24E347CF8();
    v63 = v62;

    result = sub_24E32936C(v10);
    if (!v64)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v65 = result;
    v66 = v64;
    v67 = sub_24E347CB8();
    v68 = GKGameCenterUIFrameworkBundle();
    v69 = GKGetLocalizedStringFromTableInBundle();

    v70 = sub_24E347CF8();
    v72 = v71;

    sub_24E077BC4();
    v44 = v73;
    v74 = *(v73 + 16);
    if (v74 >= *(v73 + 24) >> 1)
    {
      sub_24E077BC4();
      v44 = v200;
    }

    v10 = a1;

    *(v44 + 16) = v74 + 1;
    v75 = v44 + 112 * v74;
    *(v75 + 32) = v219;
    *(v75 + 40) = v215;
    *(v75 + 48) = v61;
    *(v75 + 56) = v63;
    *(v75 + 64) = 0;
    *(v75 + 72) = 0;
    *(v75 + 80) = v226;
    *(v75 + 88) = v223;
    *(v75 + 96) = v65;
    *(v75 + 104) = v66;
    *(v75 + 112) = 0;
    *(v75 + 120) = v70;
    *(v75 + 128) = v72;
    *(v75 + 136) = 0;
    v9 = v235;
    a6 = v239;
  }

  v11 = &selRef_processorCount;
  v8 = a5;
  if (!v9)
  {
    goto LABEL_40;
  }

LABEL_22:
  v12 = v9;
LABEL_23:
  v76 = v12;
  if ([v76 v11[32]] < 1)
  {
    goto LABEL_39;
  }

  v236 = v9;
  v240 = a6;
  v224 = v76;
  if (a4)
  {
    v77 = objc_allocWithZone(GKDashboardPlayerPhotoView);
    v78 = a4;
    v79 = [v77 0x1FB2FAB78];
    v80 = [v78 player];
    v230 = v79;
    [v79 0x1FB11DEF8];

    v81 = [objc_opt_self() &selRef_hasLoaded + 5];
    if (v81)
    {
      v82 = v81;
      v83 = sub_24E347CF8();
      v206 = v84;
      v207 = v83;
    }

    else
    {
      v85 = [v78 score];
      result = [v76 score];
      v86 = __OFSUB__(v85, result);
      v87 = v85 - result;
      if (v86)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v87 < 0)
      {
        v86 = __OFSUB__(0, v87);
        v87 = -v87;
        if (v86)
        {
          goto LABEL_65;
        }
      }

      v88 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v82 = [objc_opt_self() localizedStringFromNumber:v88 numberStyle:1];
      v89 = sub_24E347CF8();
      v206 = v90;
      v207 = v89;
    }

    v91 = sub_24E347CB8();
    v92 = GKGameCenterUIFrameworkBundle();
    v93 = GKGetLocalizedStringFromTableInBundle();

    v227 = sub_24E347CF8();
    v220 = v94;

    v216 = v230;
    v95 = [v78 player];
    v96 = [v95 alias];

    v97 = sub_24E347CF8();
    v209 = v98;
    v212 = v97;

    v99 = sub_24E347CB8();
    v100 = GKGameCenterUIFrameworkBundle();
    v101 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_24E36A270;
    v103 = [v78 player];
    v104 = [v103 alias];

    v105 = sub_24E347CF8();
    v107 = v106;

    v108 = MEMORY[0x277D837D0];
    *(v102 + 56) = MEMORY[0x277D837D0];
    v109 = sub_24DF95A7C();
    *(v102 + 32) = v105;
    *(v102 + 40) = v107;
    *(v102 + 96) = v108;
    *(v102 + 104) = v109;
    *(v102 + 64) = v109;
    *(v102 + 72) = v207;
    *(v102 + 80) = v206;
    v110 = sub_24E347D18();
    v112 = v111;

    v113 = sub_24E347CB8();
    v114 = GKGameCenterUIFrameworkBundle();
    v115 = GKGetLocalizedStringFromTableInBundle();

    v116 = sub_24E347CF8();
    v118 = v117;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E077BC4();
      v44 = v201;
    }

    v119 = *(v44 + 16);
    if (v119 >= *(v44 + 24) >> 1)
    {
      sub_24E077BC4();
      v44 = v202;
    }

    *(v44 + 16) = v119 + 1;
    v120 = v44 + 112 * v119;
    *(v120 + 32) = v227;
    *(v120 + 40) = v220;
    *(v120 + 56) = 0;
    *(v120 + 64) = 0;
    *(v120 + 48) = v230;
    *(v120 + 72) = 5;
    *(v120 + 76) = *&v245[3];
    *(v120 + 73) = *v245;
    *(v120 + 80) = v212;
    *(v120 + 88) = v209;
    *(v120 + 96) = v110;
    *(v120 + 104) = v112;
    *(v120 + 112) = 0;
    *(v120 + 113) = *v244;
    *(v120 + 116) = *&v244[3];
    *(v120 + 120) = v116;
    *(v120 + 128) = v118;
    *(v120 + 136) = 0;
    v10 = a1;
    v9 = v236;
    a6 = v240;
    v11 = &selRef_processorCount;
    v76 = v224;
  }

  if (!v8)
  {
LABEL_39:

    goto LABEL_40;
  }

  v121 = objc_allocWithZone(GKDashboardPlayerPhotoView);
  v122 = v8;
  v123 = [v121 0x1FB2FAB78];
  v124 = [v122 player];
  [v123 0x1FB11DEF8];

  v125 = [objc_opt_self() formattedDifferenceBetweenFirstScore:v76 secondScore:v122];
  if (v125)
  {
    v126 = v125;
    v127 = v122;
    v128 = sub_24E347CF8();
    v208 = v129;
    v210 = v128;
    goto LABEL_46;
  }

  v130 = [v76 score];
  result = [v122 score];
  v86 = __OFSUB__(v130, result);
  v131 = v130 - result;
  if (v86)
  {
    goto LABEL_64;
  }

  if (v131 < 0)
  {
    v86 = __OFSUB__(0, v131);
    v131 = -v131;
    if (v86)
    {
      goto LABEL_66;
    }
  }

  v127 = v122;
  v132 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v126 = [objc_opt_self() localizedStringFromNumber:v132 numberStyle:1];
  v133 = sub_24E347CF8();
  v208 = v134;
  v210 = v133;

LABEL_46:
  v135 = sub_24E347CB8();
  v136 = GKGameCenterUIFrameworkBundle();
  v137 = GKGetLocalizedStringFromTableInBundle();

  v138 = sub_24E347CF8();
  v228 = v139;
  v231 = v138;

  v221 = v123;
  v140 = [v127 player];
  v141 = [v140 alias];

  v142 = sub_24E347CF8();
  v213 = v143;
  v217 = v142;

  v144 = sub_24E347CB8();
  v145 = GKGameCenterUIFrameworkBundle();
  v146 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_24E36A270;
  v148 = v127;
  v149 = [v127 player];
  v150 = [v149 alias];

  v151 = sub_24E347CF8();
  v153 = v152;

  v154 = MEMORY[0x277D837D0];
  *(v147 + 56) = MEMORY[0x277D837D0];
  v155 = sub_24DF95A7C();
  *(v147 + 32) = v151;
  *(v147 + 40) = v153;
  *(v147 + 96) = v154;
  *(v147 + 104) = v155;
  *(v147 + 64) = v155;
  *(v147 + 72) = v210;
  *(v147 + 80) = v208;
  v156 = sub_24E347D18();
  v158 = v157;

  v159 = sub_24E347CB8();
  v160 = GKGameCenterUIFrameworkBundle();
  v161 = GKGetLocalizedStringFromTableInBundle();

  v162 = sub_24E347CF8();
  v164 = v163;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_24E077BC4();
    v44 = v203;
  }

  a6 = v240;
  v165 = *(v44 + 16);
  if (v165 >= *(v44 + 24) >> 1)
  {
    sub_24E077BC4();
    v44 = v204;
  }

  *(v44 + 16) = v165 + 1;
  v166 = v44 + 112 * v165;
  *(v166 + 32) = v231;
  *(v166 + 40) = v228;
  *(v166 + 56) = 0;
  *(v166 + 64) = 0;
  *(v166 + 48) = v123;
  *(v166 + 72) = 5;
  *(v166 + 76) = *&v245[3];
  *(v166 + 73) = *v245;
  *(v166 + 80) = v217;
  *(v166 + 88) = v213;
  *(v166 + 96) = v156;
  *(v166 + 104) = v158;
  *(v166 + 112) = 0;
  *(v166 + 113) = *v244;
  *(v166 + 116) = *&v244[3];
  *(v166 + 120) = v162;
  *(v166 + 128) = v164;
  *(v166 + 136) = 0;
  v10 = a1;
  v9 = v236;
  v11 = &selRef_processorCount;
  if (!a1)
  {
    goto LABEL_60;
  }

LABEL_51:
  if (a6 >= 1)
  {
    v167 = v10;
    if (v9)
    {
      a6 -= [v9 v11[32]] > 0;
    }

    v168 = sub_24E347CB8();
    v169 = GKGameCenterUIFrameworkBundle();
    v170 = GKGetLocalizedStringFromTableInBundle();

    v171 = sub_24E347CF8();
    v237 = v172;
    v241 = v171;

    v173 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v174 = [objc_opt_self() localizedStringFromNumber:v173 numberStyle:1];
    v175 = sub_24E347CF8();
    v177 = v176;

    v178 = sub_24E347CB8();
    v179 = GKGameCenterUIFrameworkBundle();
    v180 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v181 = swift_allocObject();
    v182 = MEMORY[0x277D83B88];
    *(v181 + 16) = xmmword_24E367D20;
    v183 = MEMORY[0x277D83C10];
    *(v181 + 56) = v182;
    *(v181 + 64) = v183;
    *(v181 + 32) = a6;
    v233 = sub_24E347D18();
    v185 = v184;

    result = sub_24E32936C(v10);
    if (v186)
    {
      v187 = result;
      v188 = v186;
      v189 = sub_24E347CB8();
      v190 = GKGameCenterUIFrameworkBundle();
      v191 = GKGetLocalizedStringFromTableInBundle();

      v192 = sub_24E347CF8();
      v194 = v193;

      v195 = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E077BC4();
        v44 = v198;
      }

      v196 = *(v44 + 16);
      if (v196 >= *(v44 + 24) >> 1)
      {
        sub_24E077BC4();
        v44 = v199;
      }

      *(v44 + 16) = v196 + 1;
      v197 = v44 + 112 * v196;
      *(v197 + 32) = v241;
      *(v197 + 40) = v237;
      *(v197 + 48) = v195;
      *(v197 + 56) = v177;
      *(v197 + 64) = 0;
      *(v197 + 72) = 0;
      *(v197 + 73) = *v245;
      *(v197 + 76) = *&v245[3];
      *(v197 + 80) = v233;
      *(v197 + 88) = v185;
      *(v197 + 96) = v187;
      *(v197 + 104) = v188;
      *(v197 + 112) = 1;
      *(v197 + 113) = *v244;
      *(v197 + 116) = *&v244[3];
      *(v197 + 120) = v192;
      *(v197 + 128) = v194;
      *(v197 + 136) = 0;
      goto LABEL_60;
    }

    goto LABEL_68;
  }

LABEL_60:
  a7(v44);
}

void static GKGame.highlightPlaceholder.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xE000000000000000;
  *(a1 + 104) = 0;
}

uint64_t sub_24E21B844()
{
  type metadata accessor for ArtworkLoader();
  result = sub_24E2002B8();
  qword_27F20B1B8 = result;
  return result;
}

void static GKGame.loadHighlights(handler:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() proxyForLocalPlayer];
  v6 = [v5 gameService];

  v7 = [objc_opt_self() currentGame];
  v8 = [v7 adamID];

  OUTLINED_FUNCTION_5_30();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v2;
  OUTLINED_FUNCTION_0_95();
  OUTLINED_FUNCTION_11_41();
  v11[2] = sub_24E21C2E0;
  v11[3] = &block_descriptor_30_2;
  v10 = _Block_copy(v11);

  [v6 getArcadeHighlightForAdamID:v8 count:2 handler:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

uint64_t sub_24E21B9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = sub_24E343F88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343C98();

  v11 = sub_24E343F78();
  v12 = sub_24E348238();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = a4;
    *&v41[0] = v14;
    v15 = v14;
    *v13 = 136315138;
    v16 = sub_24DF88A8C(0, &qword_27F1E8058);
    v17 = MEMORY[0x25303EA80](a1, v16);
    v19 = sub_24E1C2BE0(v17, v18, v41);
    v39 = v7;
    v20 = v19;

    *(v13 + 4) = v20;
    _os_log_impl(&dword_24DE53000, v11, v12, "result: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v21 = v15;
    a4 = v40;
    MEMORY[0x253040EE0](v21, -1, -1);
    MEMORY[0x253040EE0](v13, -1, -1);

    (*(v8 + 8))(v10, v39);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  if (!sub_24DFD8654())
  {
    return a3(MEMORY[0x277D84F90]);
  }

  sub_24DFFA844(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x25303F560](0, a1);
  }

  else
  {
    v22 = *(a1 + 32);
  }

  v23 = v22;
  v24 = [v22 artwork];
  v25 = [v23 artwork];

  [v24 width];
  [v24 height];
  [v24 width];
  v27 = v26;
  [v24 height];
  v29 = 300.0 / (v27 / v28);
  type metadata accessor for Artwork();
  v30 = [v24 URLTemplate];
  v31 = sub_24E347CF8();
  v33 = v32;

  *&v41[0] = v31;
  *(&v41[0] + 1) = v33;
  v43[0] = 25186;
  v43[1] = 0xE200000000000000;
  Artwork.__allocating_init(template:size:backgroundColor:crop:variants:)(v41, 0, v43, MEMORY[0x277D84F90], 300.0, v29);
  v41[0] = xmmword_24E377130;
  v34 = sub_24E0ABE8C(v41, 0, 300.0, v29);

  if (qword_27F1DDAB0 != -1)
  {
    swift_once();
  }

  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v35 = swift_allocObject();
  *(v35 + 16) = a3;
  *(v35 + 24) = a4;
  *(v35 + 32) = 0x4072C00000000000;
  *(v35 + 40) = v29;
  *(v35 + 48) = v24;
  *(v35 + 56) = v23;

  v36 = v24;
  v37 = v23;
  sub_24E200340(v34, 2, 1, v41, sub_24E21C5E0, v35);

  return sub_24DFD8588(v41);
}

void sub_24E21BE60(void *a1, int a2, int a3, id a4, double a5, double a6, void (*a7)(uint64_t), uint64_t a8, void *a9, void *a10)
{
  if (a4)
  {
    v12 = a4;
    a7(MEMORY[0x277D84F90]);

    return;
  }

  type metadata accessor for ArtworkView();
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor_];

  sub_24E0D90D8(a1, 0);
  sub_24E0D8E04(a5, a6);
  v20 = [a9 decoration];
  v21 = sub_24E347CF8();
  v23 = v22;
  v25 = v21 == sub_24E347CF8() && v23 == v24;
  v59 = a7;
  if (v25)
  {

    goto LABEL_12;
  }

  v26 = sub_24E348C08();

  if (v26)
  {

LABEL_12:
    v60 = 1;
    v27 = &v60;
    goto LABEL_13;
  }

  v46 = sub_24E347CF8();
  v48 = v47;
  if (v46 == sub_24E347CF8() && v48 == v49)
  {
  }

  else
  {
    v51 = sub_24E348C08();

    if ((v51 & 1) == 0)
    {
      v52 = sub_24E347CF8();
      v54 = v53;
      if (v52 == sub_24E347CF8() && v54 == v55)
      {
      }

      else
      {
        v57 = sub_24E348C08();

        if ((v57 & 1) == 0)
        {
          v63 = 4;
          v27 = &v63;
          goto LABEL_13;
        }
      }

      v62 = 2;
      v27 = &v62;
      goto LABEL_13;
    }
  }

  v61 = 3;
  v27 = &v61;
LABEL_13:
  sub_24E0D8DC8(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E25E0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_24E367D20;
  v29 = v18;
  v30 = [a10 title];
  v58 = sub_24E347CF8();
  v32 = v31;

  v33 = v29;
  v34 = [a10 subtitle];
  v35 = sub_24E347CF8();
  v37 = v36;

  v38 = sub_24E347CB8();
  v39 = a10;
  v40 = GKGameCenterUIFrameworkBundle();
  v41 = GKGetLocalizedStringFromTableInBundle();

  v42 = sub_24E347CF8();
  v44 = v43;

  v45 = [v39 adamID];
  *(v28 + 32) = v58;
  *(v28 + 40) = v32;
  *(v28 + 56) = 0;
  *(v28 + 64) = 0;
  *(v28 + 48) = v18;
  *(v28 + 72) = 5;
  *(v28 + 80) = v35;
  *(v28 + 88) = v37;
  *(v28 + 96) = 0;
  *(v28 + 104) = 0xE000000000000000;
  *(v28 + 112) = 0;
  *(v28 + 120) = v42;
  *(v28 + 128) = v44;
  *(v28 + 136) = v45;
  v59(v28);
}

void sub_24E21C2E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_24DF88A8C(0, &qword_27F1E8058);
  v5 = sub_24E347F08();

  v6 = a3;
  v4(v5, a3);
}

unint64_t sub_24E21C394()
{
  result = qword_27F1E8050;
  if (!qword_27F1E8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8050);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24E21C428(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 25))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 8)
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

uint64_t sub_24E21C468(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E21C4B0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 8;
  if (a2 >= 8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 8;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Highlight.IconStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24E21C5F0(uint64_t *a1)
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
  sub_24E21C66C(v6);
  return sub_24E348A58();
}

void sub_24E21C66C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = sub_24E348B98();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_24E15530C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_24E21C964(v8, v9, a1, v5);
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
    sub_24E21C74C(0, v3, 1, a1);
  }
}

void sub_24E21C74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_24E343368();
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v32 = v14;
      v33 = a3;
      v16 = *(v36 + 8 * a3);
      v31 = v15;
      v17 = v15;
      do
      {
        v18 = *v14;
        v19 = v16;
        v20 = v18;
        v21 = [v19 lastReportedDate];
        sub_24E343328();

        v22 = [v20 lastReportedDate];
        v23 = v34;
        sub_24E343328();

        LOBYTE(v22) = sub_24E3432F8();
        v24 = *v13;
        v25 = v23;
        v26 = v35;
        (*v13)(v25, v35);
        v24(v12, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        v27 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v27;
        v14 -= 8;
      }

      while (!__CFADD__(v17++, 1));
      a3 = v33 + 1;
      v14 = v32 + 8;
      v15 = v31 - 1;
      if (v33 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_24E21C964(char **a1, uint64_t a2, char **a3, char *a4)
{
  v123 = a1;
  v135 = sub_24E343368();
  MEMORY[0x28223BE20](v135);
  v134 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v133 = &v119 - v9;
  v128 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_92:
    v135 = *v123;
    if (!v135)
    {
      goto LABEL_136;
    }

    a4 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v110 = v129;
      v111 = a4;
LABEL_95:
      v113 = v111 + 16;
      v112 = *(v111 + 2);
      while (1)
      {
        if (v112 < 2)
        {

          v129 = v110;
          return;
        }

        if (!*v128)
        {
          goto LABEL_133;
        }

        a4 = v111;
        v114 = &v111[16 * v112];
        v115 = *v114;
        v116 = &v113[2 * v112];
        v117 = *(v116 + 1);
        sub_24E21D220(&(*v128)[8 * *v114], &(*v128)[8 * *v116], &(*v128)[8 * v117], v135);
        if (v110)
        {
          break;
        }

        if (v117 < v115)
        {
          goto LABEL_121;
        }

        if (v112 - 2 >= *v113)
        {
          goto LABEL_122;
        }

        *v114 = v115;
        *(v114 + 1) = v117;
        v118 = *v113 - v112;
        if (*v113 < v112)
        {
          goto LABEL_123;
        }

        v112 = *v113 - 1;
        sub_24E081A34(v116 + 16, v118, v116);
        *v113 = v112;
        v111 = a4;
      }

      v129 = v110;
LABEL_105:

      return;
    }

LABEL_130:
    v110 = v129;
    v111 = sub_24E081A20(a4);
    goto LABEL_95;
  }

  v121 = a4;
  v130 = 0;
  v132 = (v8 + 8);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v130++;
    v124 = v12;
    if (v12 + 1 < v10)
    {
      v122 = v11;
      v13 = *v128;
      v127 = v10;
      v14 = *&v13[8 * v130];
      v15 = v12;
      v16 = &v13[8 * v12];
      v120 = 8 * v12;
      v18 = *v16;
      v17 = v16 + 2;
      v19 = v14;
      v20 = v18;
      v21 = [v19 lastReportedDate];
      v22 = v133;
      sub_24E343328();

      v23 = [v20 lastReportedDate];
      v24 = v134;
      sub_24E343328();

      LODWORD(v126) = sub_24E3432F8();
      v25 = *v132;
      v26 = v24;
      a4 = v135;
      (*v132)(v26, v135);
      v125 = v25;
      (v25)(v22, a4);

      v27 = v127;
      v28 = (v15 + 2);
      while (1)
      {
        v29 = v28;
        if (v130 + 1 >= v27)
        {
          break;
        }

        v30 = v130 + 1;
        v32 = *(v17 - 1);
        v31 = *v17;
        v131 = v29;
        v33 = v31;
        v34 = v32;
        v35 = [v33 lastReportedDate];
        v130 = v30;
        v36 = v133;
        sub_24E343328();

        v37 = [v34 lastReportedDate];
        v38 = v134;
        sub_24E343328();

        LODWORD(v37) = sub_24E3432F8() & 1;
        v39 = v38;
        a4 = v135;
        v40 = v125;
        (v125)(v39, v135);
        (v40)(v36, a4);

        v29 = v131;
        ++v17;
        v28 = v131 + 1;
        v27 = v127;
        if ((v126 & 1) != v37)
        {
          goto LABEL_9;
        }
      }

      v130 = v27;
LABEL_9:
      if (v126)
      {
        v12 = v124;
        if (v130 < v124)
        {
          goto LABEL_127;
        }

        if (v124 >= v130)
        {
          v11 = v122;
        }

        else
        {
          if (v27 >= v29)
          {
            v41 = v29;
          }

          else
          {
            v41 = v27;
          }

          v42 = 8 * v41 - 8;
          v43 = v130;
          v44 = v124;
          v11 = v122;
          v45 = v120;
          do
          {
            if (v44 != --v43)
            {
              v46 = *v128;
              if (!*v128)
              {
                goto LABEL_134;
              }

              v47 = *&v46[v45];
              *&v46[v45] = *&v46[v42];
              *&v46[v42] = v47;
            }

            ++v44;
            v42 -= 8;
            v45 += 8;
          }

          while (v44 < v43);
        }
      }

      else
      {
        v11 = v122;
        v12 = v124;
      }
    }

    v48 = v128[1];
    if (v130 < v48)
    {
      if (__OFSUB__(v130, v12))
      {
        goto LABEL_126;
      }

      if (v130 - v12 < v121)
      {
        break;
      }
    }

LABEL_39:
    if (v130 < v12)
    {
      goto LABEL_125;
    }

    a4 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v11 = a4;
    }

    else
    {
      sub_24E076FA4(0, *(a4 + 2) + 1, 1, a4);
      v11 = v108;
    }

    v65 = *(v11 + 2);
    v64 = *(v11 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      sub_24E076FA4(v64 > 1, v65 + 1, 1, v11);
      v11 = v109;
    }

    *(v11 + 2) = v66;
    v67 = v11 + 32;
    v68 = &v11[16 * v65 + 32];
    v69 = v130;
    *v68 = v124;
    *(v68 + 1) = v69;
    v131 = *v123;
    if (!v131)
    {
      goto LABEL_135;
    }

    if (v65)
    {
      while (1)
      {
        v70 = v66 - 1;
        v71 = &v67[2 * v66 - 2];
        v72 = &v11[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v73 = *(v11 + 4);
          v74 = *(v11 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_59:
          if (v76)
          {
            goto LABEL_112;
          }

          v88 = *v72;
          v87 = *(v72 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_115;
          }

          v92 = v71[1];
          v93 = v92 - *v71;
          if (__OFSUB__(v92, *v71))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v90, v93))
          {
            goto LABEL_120;
          }

          if (v90 + v93 >= v75)
          {
            if (v75 < v93)
            {
              v70 = v66 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v66 < 2)
        {
          goto LABEL_114;
        }

        v95 = *v72;
        v94 = *(v72 + 1);
        v83 = __OFSUB__(v94, v95);
        v90 = v94 - v95;
        v91 = v83;
LABEL_74:
        if (v91)
        {
          goto LABEL_117;
        }

        v97 = *v71;
        v96 = v71[1];
        v83 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v83)
        {
          goto LABEL_119;
        }

        if (v98 < v90)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v70 - 1 >= v66)
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

        if (!*v128)
        {
          goto LABEL_132;
        }

        a4 = v11;
        v102 = &v67[2 * v70 - 2];
        v103 = *v102;
        v104 = &v67[2 * v70];
        v105 = *(v104 + 1);
        v106 = v129;
        sub_24E21D220(&(*v128)[8 * *v102], &(*v128)[8 * *v104], &(*v128)[8 * v105], v131);
        v129 = v106;
        if (v106)
        {
          goto LABEL_105;
        }

        if (v105 < v103)
        {
          goto LABEL_107;
        }

        v107 = *(a4 + 2);
        if (v70 > v107)
        {
          goto LABEL_108;
        }

        *v102 = v103;
        v102[1] = v105;
        if (v70 >= v107)
        {
          goto LABEL_109;
        }

        v66 = v107 - 1;
        sub_24E081A34(v104 + 16, v107 - 1 - v70, &v67[2 * v70]);
        v11 = a4;
        *(a4 + 2) = v107 - 1;
        if (v107 <= 2)
        {
          goto LABEL_88;
        }
      }

      v77 = &v67[2 * v66];
      v78 = *(v77 - 8);
      v79 = *(v77 - 7);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_110;
      }

      v82 = *(v77 - 6);
      v81 = *(v77 - 5);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_111;
      }

      v84 = *(v72 + 1);
      v85 = v84 - *v72;
      if (__OFSUB__(v84, *v72))
      {
        goto LABEL_113;
      }

      v83 = __OFADD__(v75, v85);
      v86 = v75 + v85;
      if (v83)
      {
        goto LABEL_116;
      }

      if (v86 >= v80)
      {
        v100 = *v71;
        v99 = v71[1];
        v83 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v83)
        {
          goto LABEL_124;
        }

        if (v75 < v101)
        {
          v70 = v66 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v10 = v128[1];
    if (v130 >= v10)
    {
      goto LABEL_92;
    }
  }

  v49 = &v121[v12];
  if (__OFADD__(v12, v121))
  {
    goto LABEL_128;
  }

  if (v49 >= v48)
  {
    v49 = v128[1];
  }

  if (v49 < v12)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v130 == v49)
  {
    goto LABEL_39;
  }

  v122 = v11;
  v131 = *v128;
  v50 = &v131[8 * v130 - 8];
  v51 = v12 - v130;
  v125 = v49;
LABEL_32:
  v52 = *&v131[8 * v130];
  v126 = v51;
  v127 = v50;
  while (1)
  {
    v53 = *v50;
    v54 = v52;
    v55 = v53;
    v56 = [v54 lastReportedDate];
    v57 = v133;
    sub_24E343328();

    v58 = [v55 lastReportedDate];
    v59 = v134;
    sub_24E343328();

    LOBYTE(v58) = sub_24E3432F8();
    a4 = *v132;
    v60 = v59;
    v61 = v135;
    (*v132)(v60, v135);
    (a4)(v57, v61);

    if ((v58 & 1) == 0)
    {
LABEL_37:
      v50 = (v127 + 8);
      v51 = v126 - 1;
      if (++v130 == v125)
      {
        v130 = v125;
        v11 = v122;
        v12 = v124;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v131)
    {
      break;
    }

    v62 = *v50;
    v52 = *(v50 + 1);
    *v50 = v52;
    *(v50 + 1) = v62;
    v50 -= 8;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_37;
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
}

uint64_t sub_24E21D220(char *a1, id *a2, id *a3, char *a4)
{
  v56 = sub_24E343368();
  MEMORY[0x28223BE20](v56);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v48 - v10;
  v11 = (a2 - a1) / 8;
  v53 = (v12 + 8);
  v13 = a3 - a2;
  if (v11 < v13)
  {
    sub_24E130EB0(a1, (a2 - a1) / 8, a4);
    v14 = &a4[8 * v11];
    v51 = v14;
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v14 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v57 = a1;
      v16 = *a4;
      v17 = *a2;
      v18 = v16;
      v19 = [v17 lastReportedDate];
      v20 = v54;
      sub_24E343328();

      v21 = [v18 lastReportedDate];
      v22 = v55;
      sub_24E343328();

      LOBYTE(v21) = sub_24E3432F8();
      v23 = a4;
      v24 = *v53;
      v25 = v22;
      v26 = v56;
      (*v53)(v25, v56);
      v24(v20, v26);

      if ((v21 & 1) == 0)
      {
        break;
      }

      v27 = a2;
      v28 = v57;
      if (v57 != a2++)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 = v28 + 8;
      v14 = v51;
    }

    v27 = a4;
    a4 += 8;
    v28 = v57;
    if (v57 == v23)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v28 = *v27;
    goto LABEL_13;
  }

  sub_24E130EB0(a2, a3 - a2, a4);
  v14 = &a4[8 * v13];
  v57 = a1;
  v49 = a4;
  v30 = v53;
LABEL_15:
  v31 = a2 - 1;
  --a3;
  v50 = a2 - 1;
  v51 = a2;
  while (v14 > a4 && a2 > a1)
  {
    v33 = *v31;
    v34 = *(v14 - 1);
    i = v34;
    v35 = v33;
    v36 = [v34 lastReportedDate];
    v37 = v54;
    sub_24E343328();

    v38 = [v35 lastReportedDate];
    v39 = v55;
    sub_24E343328();

    LOBYTE(v38) = sub_24E3432F8();
    v40 = *v30;
    v41 = v39;
    v42 = v56;
    (*v30)(v41, v56);
    v40(v37, v42);

    v43 = (a3 + 1);
    if (v38)
    {
      v44 = v50;
      a2 = v50;
      a4 = v49;
      a1 = v57;
      if (v43 != v51)
      {
        *a3 = *v50;
        a2 = v44;
      }

      goto LABEL_15;
    }

    if (v14 != v43)
    {
      *a3 = *(v14 - 1);
    }

    --a3;
    v14 -= 8;
    a4 = v49;
    v31 = v50;
    a2 = v51;
    a1 = v57;
  }

LABEL_28:
  v45 = (v14 - a4) / 8;
  if (a2 != a4 || a2 >= &a4[8 * v45])
  {
    memmove(a2, a4, 8 * v45);
  }

  return 1;
}

uint64_t objectdestroyTm_24()
{

  OUTLINED_FUNCTION_5_30();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void OUTLINED_FUNCTION_9_55()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  *(v0 + 104) = 0;
}

id OUTLINED_FUNCTION_10_52(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

void sub_24E21D6EC(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_leaderboardRowViews);
  v4 = sub_24DFD8654();
  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25303F560](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if ([v6 isHidden])
    {
    }

    else
    {
      sub_24E348A48();
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }
  }

  if (sub_24DFD8654() <= 0)
  {

    v9 = 0;
  }

  else
  {
    sub_24E07A5B4();
    v9 = v8;
  }

  *a1 = v9;
  v10 = *(MEMORY[0x277D768C8] + 16);
  *(a1 + 8) = *MEMORY[0x277D768C8];
  *(a1 + 24) = v10;
}

uint64_t sub_24E21D854(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_leaderboardRowViews;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24E370DD0;
  type metadata accessor for ActivityFeedLeaderboardRowView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v10 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v10 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v10 + 48) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_tapGestureRecognizer] = 0;
  v12 = &v4[OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_tapHandler];
  v13 = type metadata accessor for ActivityFeedLeaderboardListSubview();
  *v12 = 0;
  *(v12 + 1) = 0;
  v24.receiver = v4;
  v24.super_class = v13;
  v14 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OUTLINED_FUNCTION_1_16();
  [v16 v17];
  v18 = *&v14[OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_leaderboardRowViews];
  result = sub_24DFD8654();
  if (!result)
  {

    return v14;
  }

  v20 = result;
  if (result >= 1)
  {

    for (i = 0; i != v20; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x25303F560](i, v18);
      }

      else
      {
        v22 = *(v18 + 8 * i + 32);
      }

      v23 = v22;
      [v14 addSubview_];
    }

    return v14;
  }

  __break(1u);
  return result;
}

void sub_24E21DA68()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_leaderboardRowViews;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24E370DD0;
  type metadata accessor for ActivityFeedLeaderboardRowView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v2 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v2 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v2 + 48) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_tapGestureRecognizer) = 0;
  v4 = (v0 + OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_tapHandler);
  *v4 = 0;
  v4[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E21DB90()
{
  sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_1();
  sub_24E21D6EC(v5);
  v2 = [v0 traitCollection];
  sub_24E1D9EA8();
  sub_24E344A18();
  sub_24E21F034(v5);

  v3 = OUTLINED_FUNCTION_2_34();
  v4(v3);
  OUTLINED_FUNCTION_1_16();
}

uint64_t sub_24E21DD08()
{
  sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_1();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ActivityFeedLeaderboardListSubview();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  sub_24E21D6EC(v7);
  [v0 bounds];
  v2 = [v0 traitCollection];
  sub_24E1D9EA8();
  OUTLINED_FUNCTION_1_16();
  sub_24E344A08();
  sub_24E21F034(v7);

  v3 = OUTLINED_FUNCTION_2_34();
  return v4(v3);
}

void sub_24E21DEA4(uint64_t a1, void *a2)
{
  v3 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v77 = sub_24E344988();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v15);
  v73 = &v57 - v16;
  v72 = sub_24E344998();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v81 = v21 - v20;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  sub_24E347128();

  v22 = 0;
  if (__dst[0])
  {
    goto LABEL_18;
  }

  v71 = a2;
  swift_getKeyPath();
  sub_24E347128();

  v23 = __dst[2];

  if (!v23[2])
  {

    v22 = MEMORY[0x277D84F90];
    a2 = v71;
LABEL_18:
    v82 = v22;
    v55 = *(MEMORY[0x277D768C8] + 16);
    v83 = *MEMORY[0x277D768C8];
    v84 = v55;
    v56 = [a2 traitCollection];
    sub_24E1D9EA8();
    sub_24E344A18();

    (*(v5 + 8))(v9, v3);

    OUTLINED_FUNCTION_1_16();
    return;
  }

  v80 = v18;
  v24 = v23[5];
  v25 = v23[7];
  v26 = v23[9];
  v28 = v23[11];
  v27 = v23[12];

  v64 = v25;

  v63 = v26;

  v29 = v27;

  v30 = *(v28 + 16);
  v31 = 3;
  if (v30 < 3)
  {
    v31 = *(v28 + 16);
  }

  v79 = v31;
  if (v30)
  {
    v58 = v29;
    v59 = v24;
    v60 = v9;
    v61 = v5;
    v62 = v3;
    v78 = type metadata accessor for ActivityFeedLeaderboardRowView();
    v32 = 0;
    v70 = *MEMORY[0x277D22980];
    v69 = (v11 + 104);
    v67 = *MEMORY[0x277D22988];
    v66 = (v80 + 16);
    v65 = (v80 + 8);
    v22 = MEMORY[0x277D84F90];
    v33 = 32;
    v34 = v71;
    v68 = v28;
    while (v32 < *(v28 + 16))
    {
      memcpy(__dst, (v28 + v33), sizeof(__dst));
      sub_24E21EF84(__dst, &v82);
      sub_24E01AE4C(__dst, v34);
      if (v22)
      {
        v37 = v35;
        v38 = v36;
        v80 = v33;
        *&v84 = sub_24E3442D8();
        *(&v84 + 1) = MEMORY[0x277D226E0];
        __swift_allocate_boxed_opaque_existential_1(&v82);
        sub_24E3442B8();
        v39 = v73;
        v40 = MEMORY[0x277D85048];
        *(v73 + 3) = MEMORY[0x277D85048];
        v41 = MEMORY[0x277D225F8];
        v39[4] = MEMORY[0x277D225F8];
        *v39 = v37;
        v42 = *v69;
        v43 = v70;
        v44 = v77;
        (*v69)(v39, v70, v77);
        v45 = v74;
        v74[3] = v40;
        v45[4] = v41;
        *v45 = v38;
        v42(v45, v43, v44);
        v46 = v22;
        v47 = v67;
        v42(v75, v67, v44);
        v48 = v47;
        v22 = v46;
        v42(v76, v48, v44);
        sub_24E3449A8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24E07731C();
          v22 = v53;
        }

        v49 = *(v22 + 16);
        if (v49 >= *(v22 + 24) >> 1)
        {
          sub_24E07731C();
          v22 = v54;
        }

        v28 = v68;
        v33 = v80;
        sub_24E21EFE0(__dst);
        v50 = v72;
        *&v84 = v72;
        *(&v84 + 1) = MEMORY[0x277D22998];
        v51 = __swift_allocate_boxed_opaque_existential_1(&v82);
        v52 = v81;
        (*v66)(v51, v81, v50);
        *(v22 + 16) = v49 + 1;
        sub_24DE56CE8(&v82, v22 + 40 * v49 + 32);
        (*v65)(v52, v50);
        v34 = v71;
      }

      else
      {
        sub_24E21EFE0(__dst);
      }

      ++v32;
      v33 += 120;
      if (v79 == v32)
      {

        a2 = v34;
        v3 = v62;
        v5 = v61;
        v9 = v60;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_24E21E630()
{
  v1 = v0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  sub_24E347128();

  if (__dst[0])
  {
    goto LABEL_16;
  }

  swift_getKeyPath();
  sub_24E347128();

  if (!*(__dst[2] + 16))
  {

LABEL_16:
    [v1 setNeedsLayout];
    return;
  }

  v3 = *(__dst[2] + 88);
  v2 = *(__dst[2] + 96);

  v10 = v2;

  v4 = *&v0[OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_leaderboardRowViews];
  v5 = sub_24DFD8654(v4);
  v6 = 0;
  for (i = 32; ; i += 120)
  {
    if (v5 == v6)
    {

      goto LABEL_16;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25303F560](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v6 >= *(v3 + 16))
    {
      [v8 setHidden_];
      sub_24E01BC30();
    }

    else
    {
      memcpy(__dst, (v3 + i), 0x78uLL);
      sub_24E21EF84(__dst, v11);
      sub_24E01B8E8(__dst);
      [v9 setHidden_];

      sub_24E21EFE0(__dst);
    }

    ++v6;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_24E21E898()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_leaderboardRowViews);
  if (v1 >> 62)
  {
    v2 = sub_24E348878();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x25303F560](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      [v4 setHidden_];
      sub_24E01BC30();
    }

    while (v2 != v3);
  }
}

void sub_24E21E95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  sub_24E347128();

  if ((__dst[0] & 1) == 0)
  {
    swift_getKeyPath();
    sub_24E347128();

    if (*(__dst[2] + 16))
    {
      v10 = *(__dst[2] + 88);
      v9 = *(__dst[2] + 96);

      v17 = v9;

      v11 = *(v6 + OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_leaderboardRowViews);
      v12 = sub_24DFD8654(v11);
      v13 = 0;
      for (i = 32; ; i += 120)
      {
        if (v12 == v13)
        {

          goto LABEL_15;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x25303F560](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v15 = *(v11 + 8 * v13 + 32);
        }

        v16 = v15;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v13 >= *(v10 + 16))
        {
        }

        else
        {
          memcpy(__dst, (v10 + i), 0x78uLL);
          sub_24E21EF84(__dst, v21);
          sub_24E01BCD8(__dst, a2, a3, a4, a5, a6);

          sub_24E21EFE0(__dst);
        }

        ++v13;
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    else
    {
LABEL_15:
    }
  }
}

void sub_24E21EB90()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_leaderboardRowViews);
  if (v1 >> 62)
  {
    v2 = sub_24E348878();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x25303F560](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6 = OUTLINED_FUNCTION_2_34();
      sub_24E01BDF8(v6, v7);
    }

    while (v2 != v3);
  }
}

void sub_24E21EC58()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_tapGestureRecognizer;
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_tapGestureRecognizer];
  if (*&v0[OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_tapHandler])
  {
    if (v3)
    {
      return;
    }

    v10[3] = type metadata accessor for ActivityFeedLeaderboardListSubview();
    v10[0] = v0;
    v4 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v5 = v0;
    v6 = sub_24E2BE570(v10, sel_didTap);
    [v6 setNumberOfTapsRequired_];
    v7 = *&v1[v2];
    *&v1[v2] = v6;
    v9 = v6;

    [v5 addGestureRecognizer_];
    [v5 setUserInteractionEnabled_];
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v9 = v3;
    [v0 removeGestureRecognizer_];
    v8 = *&v0[v2];
    *&v0[v2] = 0;

    [v0 setUserInteractionEnabled_];
  }
}

uint64_t sub_24E21EDA8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_tapHandler);
  v4 = *(v2 + OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_tapHandler);
  *v3 = a1;
  v3[1] = a2;
  sub_24DF88BEC();
  sub_24DE73FA0(v4);
  sub_24E21EC58();
  v5 = OUTLINED_FUNCTION_2_34();

  return sub_24DE73FA0(v5);
}

void sub_24E21EE18()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI34ActivityFeedLeaderboardListSubview_tapHandler);
  if (v1)
  {

    v1(v2);

    sub_24DE73FA0(v1);
  }
}

id sub_24E21EEC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityFeedLeaderboardListSubview();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24E21F10C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = GKScore.sharingScoreMessage(fromLeaderboard:)(v4);

  return v6;
}

id sub_24E21F16C(void *a1)
{
  v1 = a1;
  v2 = GKScore.sharingScoreURL.getter();

  return v2;
}

id GKScore.sharingScoreURL.getter()
{
  v1 = type metadata accessor for SharingScoreURL();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC12GameCenterUI15SharingScoreURL_score] = v0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_24E21F208(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC12GameCenterUI19SharingScoreMessage_score] = a1;
  *&v2[OBJC_IVAR____TtC12GameCenterUI19SharingScoreMessage_leaderboard] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void SharingScoreMessage.activityViewControllerPlaceholderItem(_:)(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC12GameCenterUI19SharingScoreMessage_score) game];
  v4 = [v3 name];

  v5 = sub_24E347CF8();
  v7 = v6;

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v5;
  a1[1] = v7;
}

void SharingScoreMessage.activityViewController(_:itemForActivityType:)(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v143 = a2;
  v5 = sub_24E343F88();
  OUTLINED_FUNCTION_2_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v136 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v136 - v15;
  sub_24E343288();
  OUTLINED_FUNCTION_2_7();
  v141 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  v21 = v20 - v19;
  v22 = *&v3[OBJC_IVAR____TtC12GameCenterUI19SharingScoreMessage_score];
  v23 = [v22 player];
  if (v23)
  {
    v142 = v23;
    v24 = [v22 formattedValue];
    if (v24)
    {
      v25 = v24;
      v139 = v22;
      v140 = sub_24E347CF8();
      v27 = v26;

      v28 = v142;
      v29 = [v142 displayNameWithOptions_];
      if (v29)
      {
        v30 = v29;
        v31 = sub_24E347CF8();
        v33 = v32;

        v34 = [v28 isLocalPlayer];
        v35 = v27;
        v36 = v21;
        v37 = v33;
        if (v34)
        {
          if (!a1)
          {
LABEL_11:
            v44 = OUTLINED_FUNCTION_8_64();
            v45 = GKGameCenterUIFrameworkBundle();
            OUTLINED_FUNCTION_7_11();
            v46 = GKGetLocalizedStringFromTableInBundle();

            sub_24E347CF8();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
            v47 = swift_allocObject();
            *(v47 + 16) = xmmword_24E369B70;
            v48 = MEMORY[0x277D837D0];
            *(v47 + 56) = MEMORY[0x277D837D0];
            v49 = sub_24DF95A7C();
            *(v47 + 64) = v49;
            *(v47 + 32) = v140;
            *(v47 + 40) = v35;
            OUTLINED_FUNCTION_10_53();
            if ([v3 localizedTitle])
            {
              OUTLINED_FUNCTION_9_56();

              v50 = sub_24E347CF8();
              v52 = v51;

              *(v47 + 96) = v48;
              *(v47 + 104) = v49;
              *(v47 + 72) = v50;
              *(v47 + 80) = v52;
              v53 = [v139 game];
              v54 = [v53 name];

              v55 = sub_24E347CF8();
              v57 = v56;

              *(v47 + 136) = v48;
              *(v47 + 144) = v49;
              *(v47 + 112) = v55;
              *(v47 + 120) = v57;
LABEL_32:
              v87 = sub_24E347D18();
              v89 = v88;

              v90 = v142;
              v91 = v143;
              v143[3] = v48;

              *v91 = v87;
              v91[1] = v89;
              return;
            }

            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v38 = sub_24E347CF8();
          v40 = v39;
          if (v38 == sub_24E347CF8() && v40 == v41)
          {
          }

          else
          {
            v43 = OUTLINED_FUNCTION_4_85();

            if ((v43 & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          v92 = sub_24E347CB8();
          v93 = GKGameCenterUIFrameworkBundle();
          OUTLINED_FUNCTION_7_11();
          v94 = GKGetLocalizedStringFromTableInBundle();

          v137 = sub_24E347CF8();
          v138 = v95;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_24E369E30;
          v97 = MEMORY[0x277D837D0];
          *(v96 + 56) = MEMORY[0x277D837D0];
          v98 = sub_24DF95A7C();
          *(v96 + 64) = v98;
          *(v96 + 32) = v140;
          *(v96 + 40) = v27;
          OUTLINED_FUNCTION_10_53();
          if (![v3 localizedTitle])
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_9_56();

          v99 = sub_24E347CF8();
          v101 = v100;

          *(v96 + 96) = v97;
          *(v96 + 104) = v98;
          *(v96 + 72) = v99;
          *(v96 + 80) = v101;
          v102 = OUTLINED_FUNCTION_7_55();
          v103 = [v102 name];

          v104 = sub_24E347CF8();
          v106 = v105;

          *(v96 + 136) = v97;
          *(v96 + 144) = v98;
          *(v96 + 112) = v104;
          *(v96 + 120) = v106;
          v107 = [v37 (v31 + 3897)];
          v108 = [v107 internal];

          v109 = [v108 storeURL];
          sub_24E343238();

          sub_24E343218();
          v110 = OUTLINED_FUNCTION_1_118();
          v111(v110);
          *(v96 + 176) = v97;
          *(v96 + 184) = v98;
          *(v96 + 152) = v109;
          *(v96 + 160) = v36;
LABEL_39:
          v131 = sub_24E347D18();
          v133 = v132;

          v134 = v142;
          v135 = v143;
          v143[3] = v97;

          *v135 = v131;
          v135[1] = v133;
          return;
        }

        if (a1)
        {
          v68 = sub_24E347CF8();
          v70 = v69;
          if (v68 == sub_24E347CF8() && v70 == v71)
          {
          }

          else
          {
            v73 = OUTLINED_FUNCTION_4_85();

            if ((v73 & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          v112 = sub_24E347CB8();
          v113 = GKGameCenterUIFrameworkBundle();
          OUTLINED_FUNCTION_7_11();
          v114 = GKGetLocalizedStringFromTableInBundle();

          v137 = sub_24E347CF8();
          v138 = v115;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
          v116 = swift_allocObject();
          *(v116 + 16) = xmmword_24E37B2E0;
          v97 = MEMORY[0x277D837D0];
          *(v116 + 56) = MEMORY[0x277D837D0];
          v117 = sub_24DF95A7C();
          *(v116 + 32) = v140;
          *(v116 + 40) = v27;
          *(v116 + 96) = v97;
          *(v116 + 104) = v117;
          *(v116 + 64) = v117;
          *(v116 + 72) = v31;
          *(v116 + 80) = v37;
          OUTLINED_FUNCTION_10_53();

          if (![v3 localizedTitle])
          {
LABEL_43:
            __break(1u);
            return;
          }

          OUTLINED_FUNCTION_9_56();

          v118 = sub_24E347CF8();
          v120 = v119;

          *(v116 + 136) = v97;
          *(v116 + 144) = v117;
          *(v116 + 112) = v118;
          *(v116 + 120) = v120;
          v121 = OUTLINED_FUNCTION_7_55();
          v122 = [v121 name];

          v123 = sub_24E347CF8();
          v125 = v124;

          *(v116 + 176) = v97;
          *(v116 + 184) = v117;
          *(v116 + 152) = v123;
          *(v116 + 160) = v125;
          v126 = [v37 (v31 + 3897)];
          v127 = [v126 internal];

          v128 = [v127 storeURL];
          sub_24E343238();

          sub_24E343218();
          v129 = OUTLINED_FUNCTION_1_118();
          v130(v129);
          *(v116 + 216) = v97;
          *(v116 + 224) = v117;
          *(v116 + 192) = v128;
          *(v116 + 200) = v36;
          goto LABEL_39;
        }

LABEL_30:
        v74 = OUTLINED_FUNCTION_8_64();
        v75 = GKGameCenterUIFrameworkBundle();
        OUTLINED_FUNCTION_7_11();
        v76 = GKGetLocalizedStringFromTableInBundle();

        sub_24E347CF8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_24E369E30;
        v48 = MEMORY[0x277D837D0];
        *(v77 + 56) = MEMORY[0x277D837D0];
        v78 = sub_24DF95A7C();
        *(v77 + 32) = v140;
        *(v77 + 40) = v35;
        *(v77 + 96) = v48;
        *(v77 + 104) = v78;
        *(v77 + 64) = v78;
        *(v77 + 72) = v31;
        *(v77 + 80) = v37;
        OUTLINED_FUNCTION_10_53();

        if ([v3 localizedTitle])
        {
          OUTLINED_FUNCTION_9_56();

          v79 = sub_24E347CF8();
          v81 = v80;

          *(v77 + 136) = v48;
          *(v77 + 144) = v78;
          *(v77 + 112) = v79;
          *(v77 + 120) = v81;
          v82 = [v139 game];
          v83 = [v82 name];

          v84 = sub_24E347CF8();
          v86 = v85;

          *(v77 + 176) = v48;
          *(v77 + 184) = v78;
          *(v77 + 152) = v84;
          *(v77 + 160) = v86;
          goto LABEL_32;
        }

        goto LABEL_41;
      }

      sub_24E343C98();
      v64 = sub_24E343F78();
      v65 = sub_24E348238();
      if (os_log_type_enabled(v64, v65))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_5_92(&dword_24DE53000, v66, v65, "Incomplete sharing info: nil player.displayName (normal)");
        OUTLINED_FUNCTION_3_99();
      }

      (*(v7 + 8))(v16, v5);
    }

    else
    {
      sub_24E343C98();
      v61 = sub_24E343F78();
      v62 = sub_24E348238();
      if (os_log_type_enabled(v61, v62))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_5_92(&dword_24DE53000, v63, v62, "Incomplete sharing info: nil score.formattedValue");
        OUTLINED_FUNCTION_3_99();
      }

      (*(v7 + 8))(v13, v5);
    }
  }

  else
  {
    sub_24E343C98();
    v58 = sub_24E343F78();
    v59 = sub_24E348238();
    if (os_log_type_enabled(v58, v59))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5_92(&dword_24DE53000, v60, v59, "Incomplete sharing info: nil score.player");
      OUTLINED_FUNCTION_3_99();
    }

    (*(v7 + 8))(v10, v5);
  }

  v67 = v143;
  *v143 = 0u;
  *(v67 + 1) = 0u;
}

Swift::String __swiftcall SharingScoreMessage.activityViewController(_:subjectForActivityType:)(UIActivityViewController *_, UIActivityType_optional subjectForActivityType)
{
  v3 = sub_24E347CB8();
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24E367D20;
  v7 = [*(v2 + OBJC_IVAR____TtC12GameCenterUI19SharingScoreMessage_score) game];
  v8 = [v7 name];

  v9 = sub_24E347CF8();
  v11 = v10;

  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_24DF95A7C();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  v12 = sub_24E347D18();
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

void SharingScoreURL.activityViewControllerPlaceholderItem(_:)(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC12GameCenterUI15SharingScoreURL_score) game];
  v4 = [v3 internal];

  v5 = [v4 storeURL];
  a1[3] = sub_24E343288();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_24E343238();
}

id sub_24E2201BC(void *a1, uint64_t a2, void *a3, void (*a4)(void *__return_ptr))
{
  v6 = a3;
  v7 = a1;
  a4(v10);

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v8 = sub_24E348BE8();
  __swift_destroy_boxed_opaque_existential_1(v10);

  return v8;
}

double SharingScoreURL.activityViewController(_:itemForActivityType:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_24E343288();
  OUTLINED_FUNCTION_2_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  if (!a1)
  {
    goto LABEL_7;
  }

  v12 = sub_24E347CF8();
  v14 = v13;
  if (v12 == sub_24E347CF8() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_24E348C08();

    if ((v17 & 1) == 0)
    {
LABEL_7:
      v18 = [*(v2 + OBJC_IVAR____TtC12GameCenterUI15SharingScoreURL_score) game];
      v19 = [v18 internal];

      v20 = [v19 storeURL];
      sub_24E343238();

      *(a2 + 24) = v5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      (*(v7 + 32))(boxed_opaque_existential_1, v11, v5);
      return result;
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_24E22042C(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void *__return_ptr))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  a5(v20);

  v11 = v21;
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(v20, v21);
    OUTLINED_FUNCTION_2_7();
    v13 = v12;
    MEMORY[0x28223BE20](v14);
    OUTLINED_FUNCTION_7_1();
    v17 = v16 - v15;
    (*(v13 + 16))(v16 - v15);
    v18 = sub_24E348BE8();
    (*(v13 + 8))(v17, v11);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id SharingScoreURL.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void OUTLINED_FUNCTION_3_99()
{

  JUMPOUT(0x253040EE0);
}

uint64_t OUTLINED_FUNCTION_4_85()
{

  return sub_24E348C08();
}

void OUTLINED_FUNCTION_5_92(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

id OUTLINED_FUNCTION_7_55()
{
  v2 = *(v0 - 120);

  return [v2 game];
}

uint64_t OUTLINED_FUNCTION_8_64()
{

  return sub_24E347CB8();
}

uint64_t OUTLINED_FUNCTION_9_56()
{
}

uint64_t OUTLINED_FUNCTION_10_53()
{
}

UIImage *sub_24E220730()
{
  [v0 bounds];
  v8.width = v1;
  v8.height = v2;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  v3 = UIGraphicsGetCurrentContext();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v0 layer];
  [v5 renderInContext_];

  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

id sub_24E2207E8(id a1, int a2, int a3, void *a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  if (a8)
  {
    v10 = [a1 layoutSize];
    v11 = [v10 widthDimension];

    v12 = objc_opt_self();
    if (qword_27F1DDC30 != -1)
    {
      OUTLINED_FUNCTION_6_76();
    }

    v13 = sub_24E3444F8();
    OUTLINED_FUNCTION_2_99(v13, qword_27F20B4A0);
    v15 = [v12 absoluteDimension_];
    v16 = [objc_opt_self() sizeWithWidthDimension:v11 heightDimension:v15];

    v17 = [objc_opt_self() verticalGroupWithLayoutSize:v16 subitem:a1 count:2];
    v18 = objc_opt_self();
    sub_24E3444E8();
    v19 = [v18 fixedSpacing_];
    [v17 setInterItemSpacing_];

    v20 = [objc_opt_self() sectionWithGroup_];
    v21 = qword_27F1DDC48;
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_2_99(v13, qword_27F20B4E8);
    v24 = v23;
    if (qword_27F1DDC28 != -1)
    {
      OUTLINED_FUNCTION_1_119();
    }

    OUTLINED_FUNCTION_2_99(v13, qword_27F20B488);
    v26 = v25;
    sub_24E3444E8();
    v28 = v27;
    sub_24E3444E8();
    [v22 setContentInsets_];

    v30 = v22;
  }

  else
  {
    v32 = [objc_opt_self() fractionalWidthDimension_];
    v33 = [a1 layoutSize];
    v34 = [v33 heightDimension];

    v17 = [objc_opt_self() sizeWithWidthDimension:v32 heightDimension:v34];
    v35 = objc_opt_self();
    v36 = [v35 horizontalGroupWithLayoutSize:v17 subitem:a1 count:2];
    if (*(a9 + OBJC_IVAR___GameLayerPageGrid_columnCount) == 1)
    {
      v37 = [v35 horizontalGroupWithLayoutSize:v17 subitem:a1 count:1];

      v36 = v37;
    }

    v38 = objc_opt_self();
    v39 = *(a9 + OBJC_IVAR___GameLayerPageGrid_interColumnSpacing);
    v22 = v36;
    v40 = [v38 fixedSpacing_];
    [v22 setInterItemSpacing_];

    v30 = [objc_opt_self() sectionWithGroup_];
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      if (qword_27F1DDC30 != -1)
      {
        OUTLINED_FUNCTION_6_76();
      }

      v41 = sub_24E3444F8();
      OUTLINED_FUNCTION_2_99(v41, qword_27F20B4A0);
      v43 = v42;
      [a4 safeAreaInsets];
      v44 = *(a9 + OBJC_IVAR___GameLayerPageGrid_centeringInsets + 8);
      v46 = vabdd_f64(v45, v44);
      sub_24E3444E8();
      v48 = v47;
      [a4 safeAreaInsets];
    }

    else
    {
      if (qword_27F1DDC30 != -1)
      {
        OUTLINED_FUNCTION_6_76();
      }

      v50 = sub_24E3444F8();
      OUTLINED_FUNCTION_2_99(v50, qword_27F20B4A0);
      v52 = v51;
      if (qword_27F1DDC38 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_2_99(v50, qword_27F20B4B8);
      v43 = v52 + v53;
      [a4 safeAreaInsets];
      v44 = *(a9 + OBJC_IVAR___GameLayerPageGrid_centeringInsets + 8);
      v46 = vabdd_f64(v54, v44);
      if (qword_27F1DDC28 != -1)
      {
        OUTLINED_FUNCTION_1_119();
      }

      OUTLINED_FUNCTION_2_99(v50, qword_27F20B488);
      v48 = v55;
      [a4 safeAreaInsets];
    }

    [v30 setContentInsets_];
  }

  return v30;
}

uint64_t OUTLINED_FUNCTION_1_119()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_99(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_24E3444E8();
}

void sub_24E220DD8(void *a1@<X0>, char *a2@<X8>)
{
  sub_24E347CF8();
  if (v3 == OUTLINED_FUNCTION_1_120() && v2 == v6)
  {

    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_0_151();

  if (v8)
  {

LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

  sub_24E347CF8();
  if (v8 == OUTLINED_FUNCTION_1_120() && v2 == v10)
  {

    goto LABEL_17;
  }

  v12 = OUTLINED_FUNCTION_0_151();

  if (v12)
  {

LABEL_17:
    v9 = 3;
    goto LABEL_9;
  }

  sub_24E347CF8();
  if (v12 == OUTLINED_FUNCTION_1_120() && v2 == v13)
  {

    v9 = 2;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_0_151();

    if (v15)
    {
      v9 = 2;
    }

    else
    {
      v9 = 4;
    }
  }

LABEL_9:
  *a2 = v9;
}

uint64_t OUTLINED_FUNCTION_0_151()
{

  return sub_24E348C08();
}

uint64_t OUTLINED_FUNCTION_1_120()
{

  return sub_24E347CF8();
}

uint64_t sub_24E220FAC()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_displayBackground;
  OUTLINED_FUNCTION_9_16();
  return *(v0 + v1);
}

uint64_t sub_24E221008(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_displayBackground;
  result = OUTLINED_FUNCTION_22_6();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24E2210C0()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_wantsAdditionalHorizontalPadding;
  OUTLINED_FUNCTION_9_16();
  return *(v0 + v1);
}

uint64_t sub_24E22111C(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_wantsAdditionalHorizontalPadding;
  result = OUTLINED_FUNCTION_22_6();
  *(v1 + v3) = a1;
  return result;
}

id sub_24E2211AC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_opt_self() labelColor];
  [v0 setBackgroundColor_];

  [v0 setAlpha_];
  v2 = [v0 layer];
  [v2 setCompositingFilter_];

  return v0;
}

id GKDashboardInviteFriendButtonCollectionViewCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

char *GKDashboardInviteFriendButtonCollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_displayBackground) = 1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_wantsAdditionalHorizontalPadding) = 1;
  v1 = OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_label;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  *(v0 + v1) = v2;
  v4 = OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_separator;
  *(v0 + v4) = sub_24E2211AC();
  v15 = type metadata accessor for GKDashboardInviteFriendButtonCollectionViewCell();
  v5 = OUTLINED_FUNCTION_28();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, v15);
  v9 = [v8 contentView];
  [v9 addSubview_];

  v10 = [v8 contentView];
  [v10 addSubview_];

  LODWORD(v10) = GKIsRemoteUI();
  v11 = objc_opt_self();
  v12 = &selRef_labelColor;
  if (!v10)
  {
    v12 = &selRef_systemBlueColor;
  }

  v13 = [v11 *v12];
  sub_24E221918(v13);

  return v8;
}

void sub_24E2214CC()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_displayBackground) = 1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_wantsAdditionalHorizontalPadding) = 1;
  v1 = OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_label;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  *(v0 + v1) = v2;
  v4 = OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_separator;
  *(v0 + v4) = sub_24E2211AC();
  sub_24E348AE8();
  __break(1u);
}

id sub_24E221614()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_label);
  sub_24E348538();

  return [v1 sizeThatFits_];
}

id sub_24E2216C8()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for GKDashboardInviteFriendButtonCollectionViewCell();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_displayBackground;
  swift_beginAccess();
  v2 = v0[v1];
  v3 = [v0 contentView];
  v4 = objc_opt_self();
  if (v2 == 1)
  {
    v5 = [v4 labelColor];
    v6 = [v5 colorWithAlphaComponent_];
  }

  else
  {
    v6 = [v4 clearColor];
  }

  [v3 setBackgroundColor_];

  swift_beginAccess();
  v7 = *&v0[OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_separator];
  [v0 bounds];
  [v0 bounds];
  sub_24E3484F8();
  [v7 setFrame_];
  v8 = *&v0[OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_label];
  [v0 bounds];
  sub_24E3484F8();
  return [v8 setFrame_];
}

void sub_24E221918(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
  sub_24DF88A8C(0, &qword_280BE0110);
  v5 = sub_24DFD29F8();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 imageWithTintColor_];
  }

  else
  {
    v7 = 0;
  }

  [v4 setImage_];

  sub_24DF88A8C(0, &qword_27F1E2410);
  v18 = sub_24E079130(0, 0xE000000000000000);
  v8 = [objc_opt_self() attributedStringWithAttachment_];
  [v18 appendAttributedString_];

  sub_24DF88A8C(0, &qword_27F1E2418);
  v9 = sub_24E079130(32, 0xE100000000000000);
  [v18 appendAttributedString_];

  v10 = sub_24E347CB8();
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();

  v13 = sub_24E347CF8();
  v15 = v14;

  v16 = sub_24E079130(v13, v15);
  [v18 appendAttributedString_];

  v17 = *(v2 + OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_label);
  [v17 setAttributedText_];
  [v17 setTextColor_];
}

id GKDashboardInviteFriendButtonCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKDashboardInviteFriendButtonCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_24E221DDC()
{
  v0 = 16.0;
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    v1 = objc_opt_self();
    v2 = [v1 currentTraitCollection];
    v3 = [v2 verticalSizeClass];

    if (v3 != 2 || (v4 = [v1 currentTraitCollection], v5 = objc_msgSend(v4, sel_horizontalSizeClass), v4, v0 = 7.0, v5 != 2))
    {
      v6 = [v1 currentTraitCollection];
      [v6 verticalSizeClass];

      return 10.0;
    }
  }

  return v0;
}

id sub_24E221EC4()
{
  type metadata accessor for WelcomeArtworkView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_24DFD8050(0xD000000000000029, 0x800000024E3AE460, v0);
  return v0;
}

id sub_24E221F24()
{
  v0 = [objc_opt_self() boldButton];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 widthAnchor];
  v2 = [v1 constraintGreaterThanOrEqualToConstant_];

  [v2 setActive_];
  v3 = [objc_opt_self() local];
  LOBYTE(v2) = sub_24E1A3090();

  if (v2)
  {
    OUTLINED_FUNCTION_0_152();
  }

  v4 = sub_24E347CB8();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();

  v7 = sub_24E347CF8();
  v9 = v8;

  sub_24E2BE6B4(v7, v9, 0, v0);
  sub_24DFD8050(0xD00000000000002FLL, 0x800000024E3AE400, v0);

  return v0;
}

id sub_24E2220FC()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___secondaryBarButton;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___secondaryBarButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___secondaryBarButton];
  }

  else
  {
    v4 = sub_24E222160(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_24E222160(void *a1)
{
  swift_getObjectType();
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  objc_allocWithZone(MEMORY[0x277D751E0]);
  v5 = a1;
  sub_24E3076B4();
  v7 = v6;
  sub_24DFD8050(0xD000000000000031, 0x800000024E3AE490, v6);
  return v7;
}

id sub_24E222278()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___artworkHeight;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___artworkHeight);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___artworkHeight);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_welcomeArtworkView) heightAnchor];
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

id sub_24E222334()
{
  sub_24DF88A8C(0, &qword_27F1DFF00);
  v0 = sub_24E15BC0C(0xD000000000000010, 0x800000024E3AE3E0, 0xD000000000000022, 0x800000024E3A9510);
  [v0 setContentMode_];
  v1 = [v0 heightAnchor];
  v2 = [v1 constraintEqualToConstant_];

  [v2 setActive_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];

  return v0;
}

id sub_24E22243C()
{
  sub_24E343AA8();
  v0 = sub_24E343868();
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setNumberOfLines_];
  sub_24DFA0B40(v0, v2, v3);
  type metadata accessor for OnboardingTemplateView();
  if (sub_24E324668())
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  [v3 setTextAlignment_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v6 setLayoutMarginsRelativeArrangement_];
  [v6 addArrangedSubview_];
  sub_24DFD8050(0xD000000000000036, 0x800000024E3AE3A0, v6);

  return v6;
}

id sub_24E2225AC()
{
  v0 = [objc_opt_self() tintColor];
  sub_24DF88A8C(0, &qword_280BE0110);
  v1 = sub_24DFD29F8();
  v2 = v1;
  v45 = v0;
  if (v1)
  {
    v3 = [v1 imageWithRenderingMode_];

    v4 = [objc_opt_self() configurationWithHierarchicalColor_];
    v2 = [v3 imageWithSymbolConfiguration_];

    if (v2)
    {
      sub_24DFD8050(0xD00000000000002DLL, 0x800000024E3AE370, v2);
    }
  }

  v44 = v2;
  v5 = sub_24E347CB8();
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();

  v8 = sub_24E347CF8();
  v10 = v9;

  v11 = sub_24E347CB8();
  v12 = GKGameCenterUIFrameworkBundle();
  v13 = GKGetLocalizedStringFromTableInBundle();

  v14 = sub_24E347CF8();
  v16 = v15;

  v17 = type metadata accessor for Bullet();
  v18 = objc_allocWithZone(v17);
  v19 = sub_24E2240EC(v2, v8, v10, v14, v16);
  v20 = sub_24DFD29F8();
  v21 = v20;
  if (v20)
  {
    v22 = [v20 imageWithRenderingMode_];

    v23 = [objc_opt_self() configurationWithHierarchicalColor_];
    v21 = [v22 imageWithSymbolConfiguration_];

    if (v21)
    {
      sub_24DFD8050(0xD00000000000002DLL, 0x800000024E3AE340, v21);
    }
  }

  v24 = v21;
  v25 = sub_24E347CB8();
  v26 = GKGameCenterUIFrameworkBundle();
  v27 = GKGetLocalizedStringFromTableInBundle();

  v28 = sub_24E347CF8();
  v30 = v29;

  v31 = sub_24E347CB8();
  v32 = GKGameCenterUIFrameworkBundle();
  v33 = GKGetLocalizedStringFromTableInBundle();

  v34 = sub_24E347CF8();
  v36 = v35;

  v37 = objc_allocWithZone(v17);
  v38 = sub_24E2240EC(v21, v28, v30, v34, v36);
  sub_24DF88A8C(0, &qword_27F1E8138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24E36BFC0;
  *(v39 + 32) = v19;
  *(v39 + 40) = v38;
  v40 = v19;
  v41 = v38;
  v42 = sub_24E222A6C();
  [v42 setAxis_];
  [v42 setLayoutMarginsRelativeArrangement_];

  return v42;
}