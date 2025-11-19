void *GKSuggestionsContainerCell.donateGroupToPeopleSuggester(_:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result donateGroupToPeopleSuggester_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_24E1C0C6C()
{
  v1 = v0;
  v2 = sub_24E3434C8();
  v3 = sub_24DFD8654() > 1;
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
    __break(1u);
LABEL_9:
    v7 = MEMORY[0x25303F560](v5, v1);
    goto LABEL_5;
  }

  if (v5 < 0)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsDataSource;
  swift_beginAccess();
  v1 = *(v1 + v6);
  sub_24DFFA844(v5, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  v7 = *(v1 + 8 * v5 + 32);
LABEL_5:
  v8 = v7;
  swift_endAccess();
  return v8;
}

uint64_t sub_24E1C0D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_5_16();
  v8 = sub_24E343518();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);

  GKSuggestionsContainerCell.updateVisibleItems(players:excludedIndexPath:)();

  return sub_24DF8C95C(v7, &unk_27F1E6C80);
}

Swift::Void __swiftcall GKSuggestionsContainerCell.handleLongPressGesture(_:)(UILongPressGestureRecognizer *a1)
{
  v2 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v70 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_38();
  v67 = v5;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - v7;
  v9 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_38();
  v69 = v13;
  OUTLINED_FUNCTION_18_3();
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v62 - v16;
  if ([(UILongPressGestureRecognizer *)a1 state]!= 3)
  {
    return;
  }

  v68 = v11;
  sub_24E343C78();
  v18 = sub_24E348278();
  v19 = sub_24E343F78();
  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v66 = v9;
    v21 = v20;
    v22 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v71 = v64;
    *v21 = 138412546;
    *(v21 + 4) = a1;
    *v22 = a1;
    *(v21 + 12) = 2080;
    Strong = swift_unknownObjectWeakLoadStrong();
    v65 = v2;
    v24 = Strong;
    [(UILongPressGestureRecognizer *)a1 locationInView:Strong];

    v25 = sub_24E348598();
    v27 = sub_24E1C2BE0(v25, v26, &v71);
    v2 = v65;

    *(v21 + 14) = v27;
    _os_log_impl(&dword_24DE53000, v19, v18, "handleLongPressAction for sender: %@, at CGPoint: %s", v21, 0x16u);
    sub_24DF8C95C(v22, &unk_27F1DF730);
    OUTLINED_FUNCTION_22_4();
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_22_4();
    v9 = v66;
    OUTLINED_FUNCTION_22_4();

    v28 = &selRef_local;
    v29 = v68;
  }

  else
  {

    v29 = v68;
    v28 = &selRef_local;
  }

  v30 = *(v29 + 8);
  v30(v17, v9);
  v31 = swift_unknownObjectWeakLoadStrong();
  [a1 v28[24]];
  v33 = v32;
  v35 = v34;

  v36 = swift_unknownObjectWeakLoadStrong();
  if (!v36)
  {
    __break(1u);
    goto LABEL_18;
  }

  v37 = v36;
  v38 = [v36 indexPathForItemAtPoint_];

  if (!v38)
  {
    return;
  }

  sub_24E343498();

  v39 = swift_unknownObjectWeakLoadStrong();
  if (!v39)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = sub_24E343488();
  v42 = [v40 cellForItemAtIndexPath_];

  if (v42)
  {
    type metadata accessor for GKPickerGroupCell();
    v43 = swift_dynamicCastClass();
    if (v43)
    {
      v65 = v43;
      v44 = v69;
      sub_24E343C78();
      v45 = sub_24E348278();
      v46 = v67;
      v47 = OUTLINED_FUNCTION_7_26();
      v48(v47);
      v49 = sub_24E343F78();
      LODWORD(v64) = v45;
      if (os_log_type_enabled(v49, v45))
      {
        v50 = v46;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v66 = v9;
        v53 = v52;
        v71 = v52;
        *v51 = 136315138;
        sub_24E1C642C(&unk_27F1EA1A0, MEMORY[0x277CC9AF8]);
        v63 = v49;
        v54 = v50;
        v55 = sub_24E348BA8();
        v57 = v56;
        (*(v70 + 8))(v54, v2);
        v58 = sub_24E1C2BE0(v55, v57, &v71);

        *(v51 + 4) = v58;
        v59 = v63;
        _os_log_impl(&dword_24DE53000, v63, v64, "should expand cell at: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_22_4();
        OUTLINED_FUNCTION_22_4();

        v60 = v69;
        v61 = v66;
      }

      else
      {

        (*(v70 + 8))(v46, v2);
        v60 = v44;
        v61 = v9;
      }

      v30(v60, v61);
      sub_24E1C0B28(v65);
    }
  }

  (*(v70 + 8))(v8, v2);
}

id sub_24E1C14E4(SEL *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = [result *a1];
    swift_unknownObjectRelease();
    return v3;
  }

  return result;
}

void sub_24E1C19A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v12 = v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = sub_24E343488();
    v19 = sub_24E347CB8();
    OUTLINED_FUNCTION_21_14();
    v20 = swift_allocObject();
    v20[2] = v12;
    v20[3] = a1;
    v20[4] = a5;
    v20[5] = a6;
    aBlock[4] = a8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_0_139();
    aBlock[2] = v21;
    aBlock[3] = a9;
    v22 = _Block_copy(aBlock);
    v23 = v12;
    v24 = a1;
    sub_24DE56C38(a5);

    [v17 *a10];
    swift_unknownObjectRelease();
    _Block_release(v22);
  }
}

uint64_t sub_24E1C1B00(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  OUTLINED_FUNCTION_5_16();
  v8 = sub_24E343518();
  OUTLINED_FUNCTION_43_6(v8);

  GKSuggestionsContainerCell.updateVisibleItems(players:excludedIndexPath:)();

  result = sub_24DF8C95C(v7, &unk_27F1E6C80);
  if (a3)
  {

    a3(v10);
    return sub_24DE73FA0(a3);
  }

  return result;
}

void sub_24E1C1DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v12 = v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_24DF88A8C(0, &qword_27F1DF028);
    v24 = sub_24E347EE8();
    v18 = sub_24E343488();
    v19 = sub_24E347CB8();
    OUTLINED_FUNCTION_21_14();
    v20 = swift_allocObject();
    v20[2] = v12;
    v20[3] = a1;
    v20[4] = a5;
    v20[5] = a6;
    aBlock[4] = a8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_0_139();
    aBlock[2] = v21;
    aBlock[3] = a9;
    v22 = _Block_copy(aBlock);
    v23 = v12;

    sub_24DE56C38(a5);

    [v17 *a10];
    swift_unknownObjectRelease();
    _Block_release(v22);
  }
}

uint64_t sub_24E1C1F78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v8 = sub_24E343518();
  OUTLINED_FUNCTION_43_6(v8);
  GKSuggestionsContainerCell.updateVisibleItems(players:excludedIndexPath:)();
  result = sub_24DF8C95C(v7, &unk_27F1E6C80);
  if (a3)
  {

    a3(v10);
    return sub_24DE73FA0(a3);
  }

  return result;
}

Swift::Void __swiftcall GKSuggestionsContainerCell.didExceedAvailablePlayers()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didExceedAvailablePlayers];

    swift_unknownObjectRelease();
  }
}

uint64_t GKSuggestionsContainerCell.getSuggestedPlayerGroups()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = [Strong getSuggestedPlayerGroups];
  swift_unknownObjectRelease();
  type metadata accessor for GKSuggestedPlayerGroup();
  v2 = sub_24E347F08();

  return v2;
}

id sub_24E1C2404(uint64_t a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = [Strong *a2];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t GKSuggestionsContainerCell.didAttemptSelectingAlreadySelectedPlayers(_:inGroup:)(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_24DF88A8C(0, &qword_27F1DF028);
    v5 = sub_24E347EE8();
    [v4 didAttemptSelectingAlreadySelectedPlayers:v5 inGroup:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

id GKSuggestionsContainerCell.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_20_23((v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_dataSourceIdentifier));
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  v2 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyPlayers) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsDataSource) = v2;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_horizontalInset) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_dataLoaded) = 0;
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyIconTapHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v5, v6, v4, v0, ObjectType);
}

id GKSuggestionsContainerCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GKSuggestionsContainerCell.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_20_23(&v1[OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_dataSourceIdentifier]);
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  v4 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyPlayers] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsDataSource] = v4;
  *&v1[OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_horizontalInset] = 0;
  v1[OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_dataLoaded] = 0;
  v5 = &v1[OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyIconTapHandler];
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_24E1C2948()
{

  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsCollectionView);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_containerView);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_presentationViewController);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_multiplayerPickerDataSource);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_containerViewLeadingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_containerViewTrailingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_presentedExpandedGroupViewController);
  sub_24DE73F0C(v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsDelegate);

  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyIconTapHandler);

  return sub_24DE73FA0(v1);
}

id GKSuggestionsContainerCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E1C2B84(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_24E1C2BE0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_24E1C2BE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24E1C2CA4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_24DFB4104(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24E1C2CA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24E1C2DA4(a5, a6);
    *a1 = v9;
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
    result = sub_24E348A28();
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

uint64_t sub_24E1C2DA4(uint64_t a1, unint64_t a2)
{
  v3 = sub_24E1C2DF0(a1, a2);
  sub_24E1C2F08(&unk_2861105D0);
  return v3;
}

uint64_t sub_24E1C2DF0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_24E347E18())
  {
    result = sub_24E00F220(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_24E348968();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_24E348A28();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24E1C2F08(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_24E1C2FEC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_24E1C2FEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E70B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_24E1C30E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_24E382140;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_24E1C3144()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v25 = v3;
  v4 = sub_24E3479D8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v24 = v0;
  v11 = *v0;
  OUTLINED_FUNCTION_4_76();
  sub_24E1C642C(v12, v13);
  sub_24E347C48();
  v26 = v11;
  v27 = v11 + 56;
  OUTLINED_FUNCTION_11_37();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    if (((1 << (v14 & v16)) & *(v27 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v6 + 16))(v10, v2, v4);
      v28 = *v24;
      sub_24E1C4AC8(v10, v17, isUniquelyReferenced_nonNull_native);
      *v24 = v28;
      (*(v6 + 32))(v25, v2, v4);
      goto LABEL_7;
    }

    v18 = *(v6 + 72) * v17;
    v19 = *(v6 + 16);
    v19(v10, *(v26 + 48) + v18, v4);
    OUTLINED_FUNCTION_4_76();
    sub_24E1C642C(&qword_27F1E6C00, v20);
    v21 = sub_24E347CA8();
    v22 = *(v6 + 8);
    v22(v10, v4);
    if (v21)
    {
      break;
    }

    v14 = v17 + 1;
  }

  v22(v2, v4);
  v19(v25, *(v26 + 48) + v18, v4);
LABEL_7:
  OUTLINED_FUNCTION_18();
}

BOOL sub_24E1C33C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24E348D18();
  sub_24E347DC8();
  sub_24E348D68();
  OUTLINED_FUNCTION_11_37();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_24E348C08() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_24E1C4D54(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

void sub_24E1C350C()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v18 = v3;
  v4 = type metadata accessor for LockupCacheRequest();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v17 = v0;
  v8 = *v0;
  sub_24E348D18();
  sub_24E3433A8();
  sub_24E1C642C(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  v9 = v2;
  sub_24E347C58();
  sub_24E348D68();
  OUTLINED_FUNCTION_11_37();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((1 << (v10 & v12)) & *(v8 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_24E1C6474(v9, v7);
      v20 = *v17;
      sub_24E1C4EBC(v7, v13, isUniquelyReferenced_nonNull_native);
      *v17 = v20;
      sub_24E1C6534(v9, v18);
      goto LABEL_7;
    }

    v14 = *(v19 + 72) * v13;
    sub_24E1C6474(*(v8 + 48) + v14, v7);
    HasEarnedThisAchievementViewModelV2eeoiySbAC_ACtFZ_0 = _s12GameCenterUI42FriendWhoHasEarnedThisAchievementViewModelV2eeoiySbAC_ACtFZ_0();
    sub_24E1C64D8(v7);
    if (HasEarnedThisAchievementViewModelV2eeoiySbAC_ACtFZ_0)
    {
      break;
    }

    v10 = v13 + 1;
  }

  sub_24E1C64D8(v9);
  sub_24E1C6474(*(v8 + 48) + v14, v18);
LABEL_7:
  OUTLINED_FUNCTION_18();
}

BOOL sub_24E1C38CC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24E348D18();
  MEMORY[0x25303F880](a2);
  v6 = sub_24E348D68();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_24E1C5274(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_24E1C39BC(uint64_t *a1, void *a2)
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

    v9 = sub_24E348888();

    if (v9)
    {

      sub_24DF88A8C(0, &qword_27F1DF028);
      swift_dynamicCast();
      result = 0;
      *a1 = v29;
    }

    else
    {
      result = sub_24E348878();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_24E081C74(v7, result + 1, v16, v17, v18, v19, v20, v21, v28, v29, v32, v33);
        v23 = v22;
        v30 = v22;
        if (*(v22 + 24) <= *(v22 + 16))
        {
          sub_24E1C491C();
          v23 = v30;
        }

        v24 = v8;
        sub_24E084540();

        *v3 = v23;
LABEL_16:
        *a1 = v24;
        return 1;
      }
    }
  }

  else
  {
    sub_24DF88A8C(0, &qword_27F1DF028);
    v11 = sub_24E348618();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *v3;
        v24 = a2;
        sub_24E1C53AC(v24, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v31;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_24E348628();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v26 = *(*(v6 + 48) + 8 * v13);
    *a1 = v26;
    v27 = v26;
    return 0;
  }

  return result;
}

uint64_t sub_24E1C3DB8()
{
  v1 = v0;
  v35 = sub_24E3479D8();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E7080);
  result = sub_24E348938();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_24E1C30E0(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_24E1C642C(&unk_27F1E7070, MEMORY[0x277D22320]);
    result = sub_24E347C48();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_24E1C4110()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2750);
  result = sub_24E348938();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_24E1C30E0(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_24E348D18();
    sub_24E347DC8();
    result = sub_24E348D68();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_24E1C436C()
{
  v1 = v0;
  v2 = type metadata accessor for LockupCacheRequest();
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E7090);
  result = sub_24E348938();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v1 = v7;
    return result;
  }

  v29 = v0;
  v30 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_24E1C30E0(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v29;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48);
    v19 = *(v31 + 72);
    sub_24E1C6534(v18 + v19 * (v15 | (v8 << 6)), v4);
    sub_24E348D18();
    sub_24E3433A8();
    sub_24E1C642C(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
    sub_24E347C58();
    result = sub_24E348D68();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_24E1C6534(v4, *(v7 + 48) + v23 * v19);
    ++*(v7 + 16);
    v5 = v30;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_24E1C46A8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E26A0);
  result = sub_24E348938();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_24E1C30E0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_24E348D18();
    MEMORY[0x25303F880](v15);
    result = sub_24E348D68();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_24E1C491C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_12_31(v2, v3);
  v4 = sub_24E348938();
  v5 = v4;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v5;
    OUTLINED_FUNCTION_18();
    return;
  }

  v6 = 0;
  v7 = (v1 + 56);
  v8 = 1 << *(v1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v1 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v23 = 1 << *(v1 + 32);
    if (v23 >= 64)
    {
      sub_24E1C30E0(0, (v23 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_11_37();
      *v7 = v24;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v10 &= v10 - 1;
LABEL_12:
    v15 = sub_24E348618() & ~(-1 << *(v5 + 32));
    if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_40_8();
LABEL_21:
    OUTLINED_FUNCTION_35_10();
    *(v12 + v20) |= v21;
    OUTLINED_FUNCTION_23_26(v22);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_6_41();
  while (++v16 != v18 || (v17 & 1) == 0)
  {
    v19 = v16 == v18;
    if (v16 == v18)
    {
      v16 = 0;
    }

    v17 |= v19;
    if (*(v12 + 8 * v16) != -1)
    {
      OUTLINED_FUNCTION_36_9();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_24E1C4AC8(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_24E3479D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24E1C3DB8();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_24E1C56B4();
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_24E1C642C(&unk_27F1E7070, MEMORY[0x277D22320]);
      v14 = sub_24E347C48();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_24E1C642C(&qword_27F1E6C00, MEMORY[0x277D22320]);
        v16 = sub_24E347CA8();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_24E081F20();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_24E348C88();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void sub_24E1C4D54(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_24E1C4110();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_24E1C59CC();
LABEL_10:
      v15 = *v4;
      sub_24E348D18();
      sub_24E347DC8();
      v16 = sub_24E348D68();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == a1 && v18[1] == a2;
        if (v19 || (sub_24E348C08() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_24E08210C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_24E348C88();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_24E1C4EBC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for LockupCacheRequest();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24E1C436C();
      goto LABEL_10;
    }

    if (v13 <= v12)
    {
      sub_24E1C5C00();
LABEL_10:
      v19 = *v4;
      sub_24E348D18();
      sub_24E3433A8();
      sub_24E1C642C(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
      sub_24E347C58();
      v20 = sub_24E348D68();
      v21 = ~(-1 << *(v19 + 32));
      while (1)
      {
        a2 = v20 & v21;
        if (((*(v19 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_24E1C6474(*(v19 + 48) + *(v9 + 72) * a2, v11);
        HasEarnedThisAchievementViewModelV2eeoiySbAC_ACtFZ_0 = _s12GameCenterUI42FriendWhoHasEarnedThisAchievementViewModelV2eeoiySbAC_ACtFZ_0();
        sub_24E1C64D8(v11);
        if (HasEarnedThisAchievementViewModelV2eeoiySbAC_ACtFZ_0)
        {
          goto LABEL_15;
        }

        v20 = a2 + 1;
      }
    }

    sub_24E082214();
  }

LABEL_7:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24E1C6534(a1, *(v14 + 48) + *(v9 + 72) * a2);
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_15:
    result = sub_24E348C88();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

void sub_24E1C50F0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24E1C491C();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_24E1C6114();
LABEL_8:
      v8 = *v3;
      v9 = sub_24E348618();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_24DF88A8C(0, &qword_27F1E3560);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_24E348628();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    sub_24E0823C8();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    sub_24E348C88();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

uint64_t sub_24E1C5274(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24E1C46A8();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_24E1C5EF8();
LABEL_10:
      v12 = *v3;
      sub_24E348D18();
      MEMORY[0x25303F880](v5);
      result = sub_24E348D68();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for GKGamePlatform(0);
        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_24E0823DC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_24E348C88();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_24E1C53AC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24E1C491C();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_24E1C6114();
LABEL_8:
      v8 = *v3;
      v9 = sub_24E348618();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_24DF88A8C(0, &qword_27F1DF028);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_24E348628();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    sub_24E0824F0();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    sub_24E348C88();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

void sub_24E1C5530(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24E1C491C();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_24E1C6114();
LABEL_8:
      v8 = *v3;
      v9 = sub_24E348618();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_24DF88A8C(0, &qword_27F1E50D0);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_24E348628();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    sub_24E082504();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    sub_24E348C88();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

uint64_t sub_24E1C56B4()
{
  v1 = v0;
  v32 = sub_24E3479D8();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E7080);
  v6 = sub_24E348938();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_24E1C642C(&unk_27F1E7070, MEMORY[0x277D22320]);
        result = sub_24E347C48();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_24E1C59CC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2750);
  result = sub_24E348938();
  v4 = result;
  if (*(v2 + 16))
  {
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
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_24E348D18();

        sub_24E347DC8();
        result = sub_24E348D68();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_24E1C5C00()
{
  v1 = v0;
  v2 = type metadata accessor for LockupCacheRequest();
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E7090);
  result = sub_24E348938();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v5 + 48);
        v19 = *(v30 + 72);
        sub_24E1C6474(v18 + v19 * (v15 | (v8 << 6)), v4);
        sub_24E348D18();
        sub_24E3433A8();
        sub_24E1C642C(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
        sub_24E347C58();
        result = sub_24E348D68();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        result = sub_24E1C6534(v4, *(v7 + 48) + v23 * v19);
        ++*(v7 + 16);
        v5 = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v28;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_24E1C5EF8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E26A0);
  result = sub_24E348938();
  v4 = result;
  if (*(v2 + 16))
  {
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
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        sub_24E348D18();
        MEMORY[0x25303F880](v14);
        result = sub_24E348D68();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void sub_24E1C6114()
{
  OUTLINED_FUNCTION_16_30();
  OUTLINED_FUNCTION_12_31(v2, v3);
  v4 = sub_24E348938();
  v5 = v4;
  if (*(v1 + 16))
  {
    v23 = v0;
    v6 = 0;
    v7 = 1 << *(v1 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v1 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        *(*(v1 + 48) + 8 * (v12 | (v6 << 6)));
        v15 = sub_24E348618() & ~(-1 << *(v5 + 32));
        if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_40_8();
LABEL_21:
        OUTLINED_FUNCTION_35_10();
        *(v11 + v20) |= v21;
        OUTLINED_FUNCTION_23_26(v22);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_6_41();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (*(v11 + 8 * v16) != -1)
        {
          OUTLINED_FUNCTION_36_9();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v0 = v23;
          goto LABEL_25;
        }

        v14 = *(v1 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v0 = v5;
    OUTLINED_FUNCTION_39_2();
  }
}

uint64_t sub_24E1C62A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_19()
{
  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_21_14();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t objectdestroy_2Tm()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_21_14();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24E1C642C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E1C6474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupCacheRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1C64D8(uint64_t a1)
{
  v2 = type metadata accessor for LockupCacheRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E1C6534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupCacheRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E1C6598()
{
  result = qword_27F1E70B8;
  if (!qword_27F1E70B8)
  {
    sub_24DF88A8C(255, &qword_27F1DF028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E70B8);
  }

  return result;
}

uint64_t objectdestroy_56Tm()
{
  v1 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_24E1C66C4()
{
  v1 = sub_24E343518();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_24E1C0D3C(*(v0 + 16), *(v0 + 24), v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));
}

uint64_t OUTLINED_FUNCTION_3_92()
{

  return sub_24E348C08();
}

uint64_t OUTLINED_FUNCTION_5_82()
{

  return sub_24E347CF8();
}

uint64_t OUTLINED_FUNCTION_12_31(uint64_t a1, uint64_t *a2)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2);
}

uint64_t OUTLINED_FUNCTION_26_19(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_14()
{
}

uint64_t OUTLINED_FUNCTION_41_8()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_42_7()
{

  return [v1 (v3 + 4052)];
}

uint64_t OUTLINED_FUNCTION_43_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

id sub_24E1C69D4(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithID:a1 kind:a2 context:a3];

  return v6;
}

id sub_24E1C6A3C()
{
  v0 = sub_24E347CB8();

  v1 = [swift_getObjCClassFromMetadata() playerFromPlayerID_];

  return v1;
}

uint64_t sub_24E1C6AA0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_24E1C6B14(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return swift_continuation_throwingResume();
}

void sub_24E1C6BA4(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() proxyForLocalPlayer];
  v6 = [v5 gameServicePrivate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24E367D20;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_24E347EE8();

  v10[4] = sub_24E1D5A04;
  v11 = v2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E1C9968;
  v10[3] = &block_descriptor_129;
  v9 = _Block_copy(v10);

  [v6 getGameMetadataForBundleIDs:v8 handler:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

void sub_24E1C6FE0()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v2 = sub_24E343EE8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28[-1] - v9;
  if (qword_27F1DD988 != -1)
  {
    OUTLINED_FUNCTION_5_32();
  }

  v11 = sub_24E343F18();
  OUTLINED_FUNCTION_36_10(v11, qword_27F20B110);
  sub_24E343EB8();
  v12 = sub_24E343EF8();
  v13 = sub_24E3483F8();
  if (sub_24E348688())
  {
    v14 = v2;
    v15 = OUTLINED_FUNCTION_41_2();
    *v15 = 0;
    v16 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v12, v13, v16, "fetchMoreActivityFeed", "", v15, 2u);
    v2 = v14;
    OUTLINED_FUNCTION_22_4();
  }

  (*(v4 + 16))(v7, v10, v2);
  sub_24E343F58();
  OUTLINED_FUNCTION_1_30();
  v17 = sub_24E343F48();
  v18 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_16_4();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = *(v1 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedData);
  if (v20)
  {
    type metadata accessor for GameCenter();
    swift_initStaticObject();

    v21 = v20;
    sub_24E2F0914();
    v22 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_5_30();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = sub_24E1D59F0;
    v23[4] = v19;
    OUTLINED_FUNCTION_16_4();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_24E1D59F0;
    *(v24 + 24) = v19;
    v25 = sub_24DF88A8C(0, &qword_27F1DFCD0);
    swift_retain_n();
    v26 = sub_24E348368();
    v28[3] = v25;
    v28[4] = MEMORY[0x277D225C0];
    v28[0] = v26;
    sub_24E347A78();

    (*(v4 + 8))(v10, v2);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {

    sub_24E1D11F4(1);

    (*(v4 + 8))(v10, v2);
  }

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E1C73CC(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_24DF88A8C(0, &qword_27F1DEFE0);
  sub_24E347F08();
  v1 = OUTLINED_FUNCTION_21_21();

  return sub_24E331314(v1, v2);
}

uint64_t sub_24E1C7434()
{
  v0 = sub_24E343F18();
  __swift_allocate_value_buffer(v0, qword_27F20B110);
  __swift_project_value_buffer(v0, qword_27F20B110);
  return sub_24E343F08();
}

uint64_t sub_24E1C74B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24DF8C164(*a1, *v2);
  *a2 = result;
  return result;
}

void sub_24E1C74F8()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v39 = v9;
  v40 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00B8);
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v0[6] = 0;
  v0[7] = 0;
  v0[8] = 0;
  type metadata accessor for ContinuePlayingData();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_26_20((v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_achievementHighlight), 0);
  v20 = (v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardHighlight);
  v20[5] = v21;
  v20[6] = v21;
  v20[3] = v21;
  v20[4] = v21;
  v20[1] = v21;
  v20[2] = v21;
  *v20 = v21;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_arcadeHighlights) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_26_20((v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_challengesHighlight), v21);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_supportsChallenges) = 2;
  v22 = (v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardCaption);
  *v22 = 0;
  v22[1] = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardFriends) = v23;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardFriendTotalCount) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedData) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedFirstLoad) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedError) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_suggestedFriends) = v23;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_friendRequests) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_bidirectionalFriends) = v23;
  v24 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_allFriendsDataSource;
  type metadata accessor for AllFriendsDataSource();
  OUTLINED_FUNCTION_1_30();
  *(v0 + v24) = sub_24E0E1134();
  v25 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_friendRequestsDataSource;
  type metadata accessor for FriendRequestsDataSource();
  OUTLINED_FUNCTION_1_30();
  *(v0 + v25) = sub_24E0E0748();
  v26 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_friendSuggestionsDataSource;
  type metadata accessor for FriendSuggestionsDataSource();
  OUTLINED_FUNCTION_1_30();
  *(v0 + v26) = sub_24E0DC5F0();
  v27 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_invitationStateManager;
  type metadata accessor for FriendSuggestionInvitationStateManager();
  OUTLINED_FUNCTION_1_30();
  *(v0 + v27) = sub_24E155B14(1);
  v28 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_gameCenterDataUpdatePresenter;
  *(v1 + v28) = [objc_allocWithZone(type metadata accessor for GameCenterDataUpdatePresenter()) init];
  v29 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_onRequiredDataFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16B8);
  OUTLINED_FUNCTION_1_30();
  *(v1 + v29) = sub_24E346F88();
  v30 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_onRequiredDataError;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16D0);
  OUTLINED_FUNCTION_1_30();
  *(v1 + v30) = sub_24E346F88();
  v31 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_onRequiredDataUpdated;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16E8);
  OUTLINED_FUNCTION_1_30();
  *(v1 + v31) = sub_24E346F88();
  v32 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_onRequiredGameRecordFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1700);
  OUTLINED_FUNCTION_1_30();
  *(v1 + v32) = sub_24E346F88();
  *(v1 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_contentSources) = &unk_286110648;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_metadataPresenter) = 0;
  v33 = v39;
  v1[4] = v5;
  v1[5] = v33;
  v1[2] = v3;
  v1[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3000);
  sub_24E1D5910(&qword_27F1E00D8, &unk_27F1E3000);
  v34 = v7;
  v35 = v3;

  sub_24E347198();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(&v41);
  (*(v12 + 8))(v15, v10);
  v36 = [objc_opt_self() defaultCenter];

  v37 = sub_24E347CB8();
  [v36 addObserver:v1 selector:sel_updateSections_ name:v37 object:0];

  OUTLINED_FUNCTION_18();
}

void sub_24E1C7A18(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24E347358();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 48);
  if (v10)
  {
    v11 = v10;
    switch(a1)
    {
      case 2:
        v40 = v11;
        type metadata accessor for GameCenter();
        swift_initStaticObject();
        sub_24E2F0698(v40, 0, 1, v30, v31, v32, v33, v34, v37, v38, v39, v40, v41, v42, v43, *(&v43 + 1), v44, v45, aBlock, v47, v48, v49, v50, v51);
        v35 = sub_24DF88A8C(0, &qword_27F1DFCD0);
        swift_retain_n();
        v36 = sub_24E348368();
        v49 = v35;
        v50 = MEMORY[0x277D225C0];
        aBlock = v36;
        sub_24E347A78();

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        return;
      case 3:
        v40 = v11;
        v27 = [objc_opt_self() daemonProxy];
        v28 = [v27 friendServicePrivate];

        v50 = sub_24E1D599C;
        v51 = v3;
        aBlock = MEMORY[0x277D85DD0];
        v47 = 1107296256;
        v48 = sub_24E1C6B90;
        v49 = &block_descriptor_115;
        v29 = _Block_copy(&aBlock);

        [v28 getCombinedFriendInvitationListWithCompletion_];

        _Block_release(v29);
        swift_unknownObjectRelease();
        return;
      case 4:
        v40 = v11;
        v11 = [v11 isLocalPlayer];
        if (v11)
        {
          v41 = sub_24E347CF8();
          v42 = v12;
          v13 = MEMORY[0x277D837D0];
          sub_24E348918();
          sub_24E12C94C(a2, &v43);
          sub_24DF8BE60(&aBlock);
          if (v45)
          {
            if (swift_dynamicCast())
            {
              v15 = v41;
              v14 = v42;
              v37 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_suggestedFriends;
              v16 = *(v3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_suggestedFriends);
              aBlock = MEMORY[0x277D84F90];
              v17 = sub_24DFD8654();
              v38 = v16 & 0xFFFFFFFFFFFFFF8;
              v39 = v16 & 0xC000000000000001;

              for (i = 0; ; ++i)
              {
                if (v17 == i)
                {

                  *(v3 + v37) = aBlock;

                  sub_24E1D0CC8(0);

                  return;
                }

                if (v39)
                {
                  v11 = MEMORY[0x25303F560](i, v16);
                }

                else
                {
                  if (i >= *(v38 + 16))
                  {
                    goto LABEL_34;
                  }

                  v11 = *(v16 + 8 * i + 32);
                }

                v19 = v11;
                if (__OFADD__(i, 1))
                {
                  break;
                }

                v20 = [v11 contact];
                v21 = [v20 identifier];

                v22 = sub_24E347CF8();
                v24 = v23;

                if (v22 == v15 && v24 == v14)
                {
                }

                else
                {
                  v26 = sub_24E348C08();

                  if (v26)
                  {
                  }

                  else
                  {
                    sub_24E348A48();
                    sub_24E348A78();
                    sub_24E348A88();
                    v11 = sub_24E348A58();
                  }
                }
              }

              __break(1u);
LABEL_34:
              __break(1u);
              goto _objc_release_x2;
            }
          }

          else
          {
            sub_24DF8BFF4(&v43, &qword_27F1E0370);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
          sub_24E347018();
          *(swift_allocObject() + 16) = xmmword_24E367D20;
          v49 = v13;
          aBlock = 0xD00000000000004FLL;
          v47 = 0x800000024E39FEA0;
          sub_24E346FE8();
          sub_24DF8BFF4(&aBlock, &qword_27F1E0370);
          (*(v7 + 104))(v9, *MEMORY[0x277D21DE8], v6);
          sub_24E0EF428();

          (*(v7 + 8))(v9, v6);
          return;
        }

        break;
    }

uint64_t (*sub_24E1C8068())(unsigned int *a1)
{
  v0 = sub_24E1C79D8();
  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return sub_24E1D5954;
}

void sub_24E1C80C0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v6 = sub_24E343F28();
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24E343EE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v14 = sub_24E343F18();
  __swift_project_value_buffer(v14, qword_27F20B110);
  v15 = sub_24E343EF8();
  sub_24E343F38();
  v35 = sub_24E3483E8();
  if (sub_24E348688())
  {

    sub_24E343F68();

    v16 = v36;
    if ((*(v36 + 88))(v8, v6) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 8))(v8, v6);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v15, v35, v19, "fetchPlayer", v17, v18, 2u);
    MEMORY[0x253040EE0](v18, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v20 = *(a3 + 48);
  *(a3 + 48) = v13;
  v21 = v13;

  v22 = *(a3 + 16);
  if (v22)
  {
    v23 = *(a3 + 16);
    v24 = v23;
  }

  else
  {
    v24 = [objc_opt_self() currentGame];
    v23 = 0;
  }

  sub_24DF88A8C(0, &qword_27F1DF028);
  v25 = v23;
  v26 = [v21 playerID];
  sub_24E347CF8();

  v27 = sub_24E1C6A3C();
  v28 = sub_24E1C8558(v27);

  type metadata accessor for AppStoreContentMetadataPresenter();
  swift_allocObject();
  v29 = v28;

  *(a3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_metadataPresenter) = AppStoreContentMetadataPresenter.init(sources:gameFilter:)(v30, v28);

  v31 = v37;
  sub_24E1C8768(v28, v37);
  swift_allocObject();
  swift_weakInit();
  v32 = sub_24DF88A8C(0, &qword_27F1DFCD0);
  v33 = sub_24E348368();
  v38[3] = v32;
  v38[4] = MEMORY[0x277D225C0];
  v38[0] = v33;
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(v38);
  if ((v31 & 2) != 0)
  {
    sub_24E1C9044(v22);
  }
}

id sub_24E1C8558(uint64_t a1)
{
  v3 = sub_24E343F88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 gameRecordForPlayer:a1 game:v9];
    v11 = [v10 internal];
    v12 = [v11 isValid];

    if (v12)
    {

      return v10;
    }

    else
    {
      [v8 invalidateCacheForPlayer:a1 game:v9];
      v13 = [v8 gameRecordForPlayer:a1 game:v9];
    }
  }

  else
  {
    sub_24E343C98();
    v14 = sub_24E343F78();
    v15 = sub_24E348258();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24DE53000, v14, v15, "Couldn't find a valid game to create a GameRecord", v16, 2u);
      MEMORY[0x253040EE0](v16, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  return v13;
}

uint64_t sub_24E1C8768(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_24E346EE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24E346F08();
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 48);
  if (v15)
  {
    v35 = v9;
    v36 = v6;
    v37 = v12;
    v38 = v11;
    v39 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00A8);
    v16 = v15;
    v17 = sub_24E347AD8();
    v18 = dispatch_group_create();
    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }

    v19 = *(v3 + 16);
    if (v19 && a1)
    {
      v20 = v19;
      v21 = a1;
      v22 = [v21 supportsLeaderboards];
      if (v22)
      {
        sub_24E1C9A20(v18, v20);
        sub_24E1C9D48(v18, v20);
      }

      if ([v21 supportsAchievements])
      {
        sub_24E1CA1B0(v18, v20);
        v23 = v20;
        sub_24E1CA2F4(v18, v20);
        v24 = 0;
      }

      else
      {
        v23 = v20;
        v24 = v22 ^ 1;
      }

      if ([v21 supportsChallenges])
      {
        sub_24E1CA620(v18);
        v24 = 0;
      }
    }

    else
    {
      v24 = 1;
    }

    if ([v16 isArcadeSubscriber])
    {
      sub_24E1CA910(v18);
    }

    else
    {
      *(v3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_arcadeHighlights) = MEMORY[0x277D84F90];
    }

    sub_24E1CAC00(v16, v18);
    sub_24E1CAF90(v18);
    sub_24E1CB2B8(v16, v18);
    if (v24)
    {
LABEL_19:
      sub_24E1CB664(v18);
    }

    sub_24E0E1220(v27);

    sub_24E0DE5D0();

    sub_24E0DCC54();

    sub_24DF88A8C(0, &qword_27F1DFCD0);
    v28 = sub_24E348368();
    aBlock[4] = sub_24DFE6D20;
    aBlock[5] = v17;
    v34 = v16;
    v29 = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_68;
    v30 = _Block_copy(aBlock);

    sub_24E346EF8();
    v40 = MEMORY[0x277D84F90];
    sub_24E1D5708(&qword_27F1DFD00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
    sub_24E1D5910(&qword_27F1DFD10, &unk_27F1E1C90);
    v32 = v35;
    v31 = v36;
    sub_24E3487E8();
    sub_24E348318();
    _Block_release(v30);

    (*(v39 + 8))(v32, v31);
    (*(v37 + 8))(v14, v38);

    return v29;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00A8);
    sub_24DFE6CCC();
    swift_allocError();
    *v25 = 0;
    return sub_24E347A98();
  }
}

uint64_t sub_24E1C8C84()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E1C8CDC();
  }

  return result;
}

uint64_t sub_24E1C8CDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v7 - v1);
  v3 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E1D21CC(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_24DF8BFF4(v2, &qword_27F1DF018);
  }

  sub_24E0EF370(v2, v5);
  sub_24E346F78();
  return sub_24E1D3F18(v5, type metadata accessor for DashboardRequiredDataPresenter.Data);
}

uint64_t sub_24E1C8E14()
{
  v0 = sub_24E347358();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
  sub_24E347018();
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  sub_24E346FB8();
  swift_getErrorValue();
  v4 = v8;
  v5 = v9;
  v10[3] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_24E346FE8();
  sub_24DF8BFF4(v10, &qword_27F1E0370);
  (*(v1 + 104))(v3, *MEMORY[0x277D21DE8], v0);
  sub_24E0EF428();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E1C9044(void *a1)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_24E343EE8();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = sub_24E347358();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedData);
  *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedData) = 0;

  *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedFirstLoad) = 1;
  type metadata accessor for GKLogTimer();
  (*(v10 + 104))(v12, *MEMORY[0x277D21DE0], v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
  sub_24E347018();
  v14 = swift_allocObject();
  v35 = xmmword_24E367D20;
  *(v14 + 16) = xmmword_24E367D20;
  v40 = MEMORY[0x277D837D0];
  v39[0] = 0xD00000000000001ELL;
  v39[1] = 0x800000024E382230;
  sub_24E346FE8();
  sub_24DF8BFF4(v39, &qword_27F1E0370);
  v15 = sub_24E16B6E4(v12, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = v35;
  sub_24E346FB8();
  v17 = sub_24E16BC80(v16);

  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v18 = sub_24E343F18();
  __swift_project_value_buffer(v18, qword_27F20B110);
  sub_24E343EF8();
  sub_24E343EB8();
  v19 = sub_24E343EF8();
  v20 = sub_24E3483F8();
  if (sub_24E348688())
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v19, v20, v22, "fetchGameActivityFeed", "", v21, 2u);
    MEMORY[0x253040EE0](v21, -1, -1);
  }

  (*(v37 + 16))(v5, v8, v38);
  sub_24E343F58();
  swift_allocObject();
  v23 = sub_24E343F48();
  if (v36)
  {
    v24 = [v36 bundleIdentifier];
    v25 = sub_24E347CF8();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  type metadata accessor for GameCenter();
  swift_initStaticObject();
  LOBYTE(v39[0]) = 3;
  sub_24E2F57E0(0, v25, v27, 0, 0, v39);

  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = v23;
  v29[3] = v28;
  v29[4] = v17;
  v29[5] = v15;
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v31[2] = v23;
  v31[3] = v17;
  v31[4] = v15;
  v31[5] = v30;
  v32 = sub_24DF88A8C(0, &qword_27F1DFCD0);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v33 = sub_24E348368();
  v40 = v32;
  v41 = MEMORY[0x277D225C0];
  v39[0] = v33;
  sub_24E347A78();

  (*(v37 + 8))(v8, v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
}

void sub_24E1C9688(unint64_t a1, uint64_t a2)
{
  v4 = sub_24E343F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    sub_24E343C98();
    v8 = sub_24E343F78();
    v9 = sub_24E348258();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24DE53000, v8, v9, "Could not fetch a valid game record after user was authenticated to process the dashboard deeplink request", v10, 2u);
      MEMORY[0x253040EE0](v10, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19[7] = 5;
    sub_24E346F78();
  }

  else
  {
    if (a1 >> 62)
    {
      if (!sub_24E348878())
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    sub_24DFFA844(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x25303F560](0, a1);
    }

    else
    {
      v11 = *(a1 + 32);
    }

    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D0C048]) initWithInternalRepresentation_];
    v14 = objc_opt_self();
    v15 = [v13 internal];
    [v14 setCurrentGameFromInternal:v15 serverEnvironment:{objc_msgSend(v13, sel_environment)}];

    v16 = [objc_opt_self() local];
    v17 = [v14 currentGame];
    v18 = [objc_opt_self() gameRecordForPlayer:v16 game:v17];

    v20 = v18;
    sub_24E346F78();
  }
}

void sub_24E1C997C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 32);
  sub_24DF88A8C(0, a4);
  OUTLINED_FUNCTION_21_21();
  v6 = sub_24E347F08();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_24E1C9A20(NSObject *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24E343EE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  dispatch_group_enter(a1);
  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v13 = sub_24E343F18();
  __swift_project_value_buffer(v13, qword_27F20B110);
  sub_24E343EF8();
  sub_24E343EB8();
  v14 = sub_24E343EF8();
  v15 = sub_24E3483F8();
  if (sub_24E348688())
  {
    v16 = swift_slowAlloc();
    v28 = v7;
    v17 = a2;
    v18 = v16;
    *v16 = 0;
    v19 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v14, v15, v19, "fetchLeaderboardDetails", "", v18, 2u);
    v20 = v18;
    a2 = v17;
    v3 = v2;
    v7 = v28;
    MEMORY[0x253040EE0](v20, -1, -1);
  }

  (*(v7 + 16))(v9, v12, v6);
  sub_24E343F58();
  swift_allocObject();
  v21 = sub_24E343F48();
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  v23[2] = v3;
  v23[3] = v21;
  v23[4] = a1;
  aBlock[4] = sub_24E1D5570;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E216D94;
  aBlock[3] = &block_descriptor_51;
  v24 = _Block_copy(aBlock);

  v25 = a1;

  [v22 loadHighlightsWithPlayerScope:1 timeScope:2 game:a2 handler:v24];
  _Block_release(v24);

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_24E1C9D48(NSObject *a1, void *a2)
{
  v3 = v2;
  v6 = sub_24E343EE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v44 = a1;
  dispatch_group_enter(a1);
  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v13 = sub_24E343F18();
  __swift_project_value_buffer(v13, qword_27F20B110);
  sub_24E343EF8();
  sub_24E343EB8();
  v14 = sub_24E343EF8();
  v15 = sub_24E3483F8();
  if (sub_24E348688())
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v14, v15, v17, "fetchLeaderboardFriends", "", v16, 2u);
    MEMORY[0x253040EE0](v16, -1, -1);
  }

  (*(v7 + 16))(v9, v12, v6);
  sub_24E343F58();
  swift_allocObject();
  result = sub_24E343F48();
  v19 = *(v3 + 48);
  v42 = v12;
  v43 = v6;
  v41 = v3;
  if (v19)
  {
    v20 = result;
    v21 = v7;
    v22 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
    v23 = [objc_opt_self() gameRecordForPlayer:v22 game:a2];
    v40 = v23;

    v24 = [objc_opt_self() proxyForLocalPlayer];
    v25 = [v24 gameStatServicePrivate];

    v26 = sub_24E347CB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E367D20;
    v28 = [v23 bundleIdentifier];
    v29 = a2;
    v30 = sub_24E347CF8();
    v32 = v31;

    *(inited + 32) = v30;
    *(inited + 40) = v32;
    sub_24E07F614(inited);
    v33 = sub_24E348128();

    v34 = swift_allocObject();
    v35 = v44;
    v34[2] = v41;
    v34[3] = v35;
    v34[4] = v29;
    v34[5] = v20;
    aBlock[4] = sub_24E1D418C;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E1D0094;
    aBlock[3] = &block_descriptor_38;
    v36 = _Block_copy(aBlock);

    v37 = v35;
    v38 = v29;

    [v25 getGamesFriendsPlayed:0 type:v26 withinSecs:864000000 matchingBundleIDs:v33 handler:v36];
    _Block_release(v36);

    swift_unknownObjectRelease();

    return (*(v21 + 8))(v42, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24E1CA1B0(NSObject *a1, uint64_t a2)
{
  v3 = v2;
  dispatch_group_enter(a1);
  v6 = objc_opt_self();
  v7 = [objc_opt_self() local];
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = a1;
  v11[4] = sub_24E1D55EC;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E216CF0;
  v11[3] = &block_descriptor_63_1;
  v9 = _Block_copy(v11);

  v10 = a1;

  [v6 loadAchievementsForGameV2:a2 player:v7 includeUnreported:1 includeHidden:1 withCompletionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_24E1CA2F4(NSObject *a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  v5 = sub_24E343EE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  dispatch_group_enter(a1);
  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v12 = sub_24E343F18();
  __swift_project_value_buffer(v12, qword_27F20B110);
  sub_24E343EF8();
  sub_24E343EB8();
  v13 = sub_24E343EF8();
  v14 = sub_24E3483F8();
  if (sub_24E348688())
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v13, v14, v16, "fetchAchievementHighlights", "", v15, 2u);
    MEMORY[0x253040EE0](v15, -1, -1);
  }

  (*(v6 + 16))(v8, v11, v5);
  sub_24E343F58();
  swift_allocObject();
  v17 = sub_24E343F48();
  v18 = objc_opt_self();
  v19 = [objc_opt_self() local];
  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = v17;
  v20[4] = a1;
  aBlock[4] = sub_24E1D559C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E216CF0;
  aBlock[3] = &block_descriptor_57;
  v21 = _Block_copy(aBlock);

  v22 = a1;

  [v18 loadAchievementsForGameV2:v25 player:v19 includeUnreported:1 includeHidden:1 withCompletionHandler:v21];
  _Block_release(v21);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_24E1CA620(NSObject *a1)
{
  v2 = v1;
  v4 = sub_24E343EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = aBlock - v9;
  dispatch_group_enter(a1);
  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v11 = sub_24E343F18();
  __swift_project_value_buffer(v11, qword_27F20B110);
  sub_24E343EF8();
  sub_24E343EB8();
  v12 = sub_24E343EF8();
  v13 = sub_24E3483F8();
  if (sub_24E348688())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v12, v13, v15, "fetchChallengesHighlights", "", v14, 2u);
    MEMORY[0x253040EE0](v14, -1, -1);
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_24E343F58();
  swift_allocObject();
  v16 = sub_24E343F48();
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  v18[2] = v2;
  v18[3] = v16;
  v18[4] = a1;
  aBlock[4] = sub_24E1D55F4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E1D2128;
  aBlock[3] = &block_descriptor_69;
  v19 = _Block_copy(aBlock);

  v20 = a1;

  [v17 loadReceivedPendingChallengesWithCompletionHandler_];
  _Block_release(v19);

  return (*(v5 + 8))(v10, v4);
}

void sub_24E1CA910(NSObject *a1)
{
  v2 = v1;
  v4 = sub_24E343EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = *(v2 + 48);
  if (v11 && *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_metadataPresenter))
  {
    v22 = v11;

    v23 = a1;
    dispatch_group_enter(a1);
    if (qword_27F1DD988 != -1)
    {
      swift_once();
    }

    v12 = sub_24E343F18();
    __swift_project_value_buffer(v12, qword_27F20B110);
    sub_24E343EF8();
    sub_24E343EB8();
    v13 = sub_24E343EF8();
    v14 = sub_24E3483F8();
    if (sub_24E348688())
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_24E343EC8();
      _os_signpost_emit_with_name_impl(&dword_24DE53000, v13, v14, v16, "fetchArcadeHighlights", "", v15, 2u);
      MEMORY[0x253040EE0](v15, -1, -1);
    }

    (*(v5 + 16))(v7, v10, v4);
    sub_24E343F58();
    swift_allocObject();
    v17 = sub_24E343F48();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v17;
    v20 = v23;
    v19[4] = v23;

    v21 = v20;
    sub_24E0E9444(1, sub_24E1D5630, v19);

    (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_24E1CAC00(void *a1, NSObject *a2)
{
  v3 = v2;
  v6 = sub_24E343EE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v27[-1] - v12;
  if ([a1 isLocalPlayer])
  {
    dispatch_group_enter(a2);
    if (qword_27F1DD988 != -1)
    {
      swift_once();
    }

    v14 = sub_24E343F18();
    __swift_project_value_buffer(v14, qword_27F20B110);
    sub_24E343EF8();
    sub_24E343EB8();
    v15 = sub_24E343EF8();
    v16 = sub_24E3483F8();
    if (sub_24E348688())
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_24E343EC8();
      _os_signpost_emit_with_name_impl(&dword_24DE53000, v15, v16, v18, "fetchSuggestedFriends", "", v17, 2u);
      MEMORY[0x253040EE0](v17, -1, -1);
    }

    (*(v7 + 16))(v9, v13, v6);
    sub_24E343F58();
    swift_allocObject();
    v19 = sub_24E343F48();
    type metadata accessor for GameCenter();
    swift_initStaticObject();
    sub_24E2EFE4C();
    v20 = swift_allocObject();
    v20[2] = v3;
    v20[3] = v19;
    v20[4] = a2;
    v21 = swift_allocObject();
    v21[2] = v3;
    v21[3] = v19;
    v21[4] = a2;
    v22 = sub_24DF88A8C(0, &qword_27F1DFCD0);
    swift_retain_n();
    swift_retain_n();
    v23 = a2;
    v24 = sub_24E348368();
    v27[3] = v22;
    v27[4] = MEMORY[0x277D225C0];
    v27[0] = v24;
    sub_24E347A78();

    (*(v7 + 8))(v13, v6);
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_suggestedFriends) = MEMORY[0x277D84F90];
  }
}

uint64_t sub_24E1CAF90(NSObject *a1)
{
  v2 = v1;
  v4 = sub_24E343EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = aBlock - v9;
  dispatch_group_enter(a1);
  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v11 = sub_24E343F18();
  __swift_project_value_buffer(v11, qword_27F20B110);
  sub_24E343EF8();
  sub_24E343EB8();
  v12 = sub_24E343EF8();
  v13 = sub_24E3483F8();
  if (sub_24E348688())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v12, v13, v15, "fetchFriendRequests", "", v14, 2u);
    MEMORY[0x253040EE0](v14, -1, -1);
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_24E343F58();
  swift_allocObject();
  v16 = sub_24E343F48();
  v17 = [objc_opt_self() daemonProxy];
  v18 = [v17 friendServicePrivate];

  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = v16;
  v19[4] = a1;
  aBlock[4] = sub_24E1D569C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E1C6B90;
  aBlock[3] = &block_descriptor_85_0;
  v20 = _Block_copy(aBlock);

  v21 = a1;

  [v18 getCombinedFriendInvitationListWithCompletion_];
  _Block_release(v20);

  swift_unknownObjectRelease();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_24E1CB2B8(void *a1, NSObject *a2)
{
  v5 = sub_24E343EE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v34[-1] - v11;
  if ([a1 isLocalPlayer])
  {
    dispatch_group_enter(a2);
    if (qword_27F1DD988 != -1)
    {
      swift_once();
    }

    v13 = sub_24E343F18();
    __swift_project_value_buffer(v13, qword_27F20B110);
    sub_24E343EF8();
    sub_24E343EB8();
    v14 = sub_24E343EF8();
    v15 = sub_24E3483F8();
    if (sub_24E348688())
    {
      v16 = swift_slowAlloc();
      v33 = v6;
      v17 = v5;
      v18 = v16;
      *v16 = 0;
      v19 = sub_24E343EC8();
      _os_signpost_emit_with_name_impl(&dword_24DE53000, v14, v15, v19, "fetchFriendLists", "", v18, 2u);
      v20 = v18;
      v5 = v17;
      v6 = v33;
      MEMORY[0x253040EE0](v20, -1, -1);
    }

    (*(v6 + 16))(v8, v12, v5);
    sub_24E343F58();
    swift_allocObject();
    v21 = sub_24E343F48();
    type metadata accessor for GameCenter();
    swift_initStaticObject();
    sub_24E2F0698(a1, 1, 1, v22, v23, v24, v25, v26, v33, v34[0], v34[1], v34[2], v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
    v27 = swift_allocObject();
    v27[2] = v2;
    v27[3] = v21;
    v27[4] = a2;
    v28 = swift_allocObject();
    v28[2] = v2;
    v28[3] = v21;
    v28[4] = a2;
    v29 = sub_24DF88A8C(0, &qword_27F1DFCD0);
    swift_retain_n();
    swift_retain_n();
    v30 = a2;
    v31 = sub_24E348368();
    v35 = v29;
    v36 = MEMORY[0x277D225C0];
    v34[0] = v31;
    sub_24E347A78();

    (*(v6 + 8))(v12, v5);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_bidirectionalFriends) = MEMORY[0x277D84F90];
  }
}

uint64_t sub_24E1CB664(NSObject *a1)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_24E343EE8();
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v45 - v7;
  v8 = sub_24E3433A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6850);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v45 - v19;
  v21 = *(v2 + 48);
  if (v21)
  {
    v47 = v3;
    v22 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v22);
    v45 = v21;
    sub_24E343398();
    (*(v9 + 16))(v11, v14, v8);
    sub_24E1D5708(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
    sub_24E348918();
    (*(v9 + 8))(v14, v8);
    v23 = type metadata accessor for ContinuePlayingData();
    v24 = *(v23 + 24);
    __swift_storeEnumTagSinglePayload(&v20[v24], 1, 1, v22);
    *(v20 + 5) = 0;
    sub_24DFB8804(v17, &v20[v24], &qword_27F1E58A0);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v23);
    v25 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_continuePlaying;
    swift_beginAccess();
    sub_24DFB8804(v20, v2 + v25, &qword_27F1E6850);
    swift_endAccess();
    dispatch_group_enter(v48);
    if (qword_27F1DD988 != -1)
    {
      swift_once();
    }

    v26 = sub_24E343F18();
    __swift_project_value_buffer(v26, qword_27F20B110);
    sub_24E343EF8();
    v27 = v49;
    sub_24E343EB8();
    v28 = sub_24E343EF8();
    v29 = sub_24E3483F8();
    if (sub_24E348688())
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_24E343EC8();
      _os_signpost_emit_with_name_impl(&dword_24DE53000, v28, v29, v31, "fetchRecentlyPlayedGames", "", v30, 2u);
      MEMORY[0x253040EE0](v30, -1, -1);
    }

    v32 = v46;
    (*(v46 + 16))(v5, v27, v47);
    sub_24E343F58();
    swift_allocObject();
    v33 = sub_24E343F48();
    type metadata accessor for GameCenter();
    swift_initStaticObject();
    v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v35 = v45;
    sub_24E2F07F8(v45, v34);

    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = v33;
    v38 = v48;
    v37[4] = v48;
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = v33;
    v40[4] = v38;
    v41 = sub_24DF88A8C(0, &qword_27F1DFCD0);
    swift_retain_n();
    v42 = v38;

    v43 = sub_24E348368();
    v50[3] = v41;
    v50[4] = MEMORY[0x277D225C0];
    v50[0] = v43;
    sub_24E347A78();

    (*(v32 + 8))(v49, v47);
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    LOBYTE(v50[0]) = 0;
    return sub_24E346F78();
  }
}

void sub_24E1CBCC0(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a1)
  {
    *(a3 + 56) = sub_24DFD8654(a1);
    v12 = MEMORY[0x277D84F90];
    v6 = sub_24DFD8654(a1);
    for (i = 0; v6 != i; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25303F560](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      if ([v8 isCompleted])
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

    v10 = sub_24DFD8654(v12);

    *(a3 + 64) = v10;

    dispatch_group_leave(a4);
  }
}

void sub_24E1CBE30(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9)
{
  v13 = sub_24E343F28();
  v49 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24E343EE8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v48 = v13;
    if (a2)
    {
      v47 = v16;
      v20 = a1;
      v21 = a2;
      if ([v21 rank] <= 0 || a6 < 1)
      {
      }

      else
      {
        v22 = a7;
        v23 = [v20 localizedTitle];
        if (v23)
        {
          v24 = v23;
          v25 = sub_24E347CF8();
          v27 = v26;
        }

        else
        {

          v25 = 0;
          v27 = 0;
        }

        a7 = v22;
        v29 = (v22 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardCaption);
        *v29 = v25;
        v29[1] = v27;
      }

      v16 = v47;
    }

    else
    {
      v28 = a1;
    }

    v30 = a7;
    sub_24E32936C(a1);
    if (!v31)
    {
      __break(1u);
      return;
    }

    v32 = sub_24E347DD8();

    if (v32 < 1)
    {
    }

    else
    {
      v33 = [a1 localizedTitle];
      if (v33)
      {
        v34 = v33;
        v35 = sub_24E347CF8();
        v37 = v36;
      }

      else
      {

        v35 = 0;
        v37 = 0;
      }

      v38 = (v30 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardCaption);
      *v38 = v35;
      v38[1] = v37;
    }

    v13 = v48;
  }

  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v39 = sub_24E343F18();
  __swift_project_value_buffer(v39, qword_27F20B110);
  v40 = sub_24E343EF8();
  sub_24E343F38();
  v41 = sub_24E3483E8();
  if (sub_24E348688())
  {

    sub_24E343F68();

    v42 = v49;
    if ((*(v49 + 88))(v15, v13) == *MEMORY[0x277D85B00])
    {
      v43 = "[Error] Interval already ended";
    }

    else
    {
      (*(v42 + 8))(v15, v13);
      v43 = "";
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v40, v41, v45, "fetchLeaderboardDetails", v43, v44, 2u);
    MEMORY[0x253040EE0](v44, -1, -1);
  }

  (*(v17 + 8))(v19, v16);
  dispatch_group_leave(a9);
}

void sub_24E1CC22C(uint64_t *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v110 = a4;
  v112 = a3;
  v100 = sub_24E343F28();
  v106 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v98 = &v98 - v8;
  v105 = sub_24E343EE8();
  v107 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v99 = &v98 - v12;
  v104 = sub_24E3433A8();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v98 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v17 - 8);
  v103 = &v98 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6850);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v98 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v98 - v23;
  v25 = sub_24E343F88();
  v108 = *(v25 - 8);
  v109 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v98 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v98 - v32;
  v34 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (sub_24DFD8654(v34) <= 0)
    {
      sub_24E343C98();
      v70 = Strong;

      v71 = sub_24E343F78();
      v72 = sub_24E348238();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v114[0] = v74;
        *v73 = 136315138;
        v75 = *(Strong + 32);
        v76 = *(Strong + 40);

        v77 = sub_24E1C2BE0(v75, v76, v114);

        *(v73 + 4) = v77;
        _os_log_impl(&dword_24DE53000, v71, v72, "No recently played games were returned for %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v74);
        v78 = v74;
        v70 = Strong;
        MEMORY[0x253040EE0](v78, -1, -1);
        MEMORY[0x253040EE0](v73, -1, -1);
      }

      (*(v108 + 8))(v30, v109);
      v79 = v106;
      LOBYTE(v114[0]) = 4;
      sub_24E346F78();
      v80 = sub_24E3474B8();
      v81 = v103;
      __swift_storeEnumTagSinglePayload(v103, 1, 1, v80);
      sub_24E343398();
      v82 = v102;
      v83 = v104;
      (*(v102 + 16))(v101, v16, v104);
      sub_24E1D5708(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
      sub_24E348918();
      (*(v82 + 8))(v16, v83);
      v84 = type metadata accessor for ContinuePlayingData();
      v85 = *(v84 + 24);
      __swift_storeEnumTagSinglePayload(&v21[v85], 1, 1, v80);
      *(v21 + 5) = MEMORY[0x277D84F90];
      sub_24DFB8804(v81, &v21[v85], &qword_27F1E58A0);
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v84);
      v86 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_continuePlaying;
      swift_beginAccess();
      sub_24DFB8804(v21, v70 + v86, &qword_27F1E6850);
      swift_endAccess();
      if (qword_27F1DD988 != -1)
      {
        swift_once();
      }

      v87 = sub_24E343F18();
      __swift_project_value_buffer(v87, qword_27F20B110);
      v88 = sub_24E343EF8();
      v89 = v99;
      sub_24E343F38();
      v90 = sub_24E3483E8();
      if (sub_24E348688())
      {

        v91 = v98;
        sub_24E343F68();

        v92 = v100;
        if ((*(v79 + 88))(v91, v100) == *MEMORY[0x277D85B00])
        {
          v93 = "[Error] Interval already ended";
        }

        else
        {
          (*(v79 + 8))(v91, v92);
          v93 = "";
        }

        v96 = swift_slowAlloc();
        *v96 = 0;
        v97 = sub_24E343EC8();
        _os_signpost_emit_with_name_impl(&dword_24DE53000, v88, v90, v97, "fetchRecentlyPlayedGames", v93, v96, 2u);
        MEMORY[0x253040EE0](v96, -1, -1);
      }

      (*(v107 + 8))(v89, v105);
      dispatch_group_leave(v110);
    }

    else
    {
      sub_24E343C98();

      v35 = sub_24E343F78();
      v36 = sub_24E348238();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v114[0] = v38;
        *v37 = 136315138;
        v39 = sub_24DF88A8C(0, &qword_27F1EAA80);
        v40 = MEMORY[0x25303EA80](v34, v39);
        v42 = sub_24E1C2BE0(v40, v41, v114);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_24DE53000, v35, v36, "successfully fetched Game Summaries %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x253040EE0](v38, -1, -1);
        MEMORY[0x253040EE0](v37, -1, -1);
      }

      (*(v108 + 8))(v33, v109);
      v43 = Strong;
      v44 = sub_24E348098();
      __swift_storeEnumTagSinglePayload(v24, 1, 1, v44);
      sub_24E348068();

      v45 = v110;

      v46 = v112;

      v47 = sub_24E348058();
      v48 = swift_allocObject();
      v49 = MEMORY[0x277D85700];
      v48[2] = v47;
      v48[3] = v49;
      v48[4] = v34;
      v48[5] = v45;
      v48[6] = v43;
      v48[7] = v46;
      sub_24DFC8700(0, 0, v24, &unk_24E3827D0, v48);
    }
  }

  else
  {
    Strong = v6;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v113 = 4;
      sub_24E346F78();
    }

    sub_24E343C98();
    v50 = sub_24E343F78();
    v51 = sub_24E348258();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_24DE53000, v50, v51, "unable to fetch recently played games for Continue Playing Section, DashboardRequiredDataPresenter was nil.", v52, 2u);
      MEMORY[0x253040EE0](v52, -1, -1);
    }

    (*(v108 + 8))(v27, v109);
    swift_beginAccess();
    v53 = swift_weakLoadStrong();
    if (v53)
    {
      v54 = v53;
      v55 = sub_24E3474B8();
      v56 = v103;
      __swift_storeEnumTagSinglePayload(v103, 1, 1, v55);
      sub_24E343398();
      v57 = v102;
      v58 = v104;
      (*(v102 + 16))(v101, v16, v104);
      sub_24E1D5708(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
      sub_24E348918();
      (*(v57 + 8))(v16, v58);
      v59 = type metadata accessor for ContinuePlayingData();
      v60 = *(v59 + 24);
      __swift_storeEnumTagSinglePayload(&v21[v60], 1, 1, v55);
      *(v21 + 5) = MEMORY[0x277D84F90];
      sub_24DFB8804(v56, &v21[v60], &qword_27F1E58A0);
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v59);
      v61 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_continuePlaying;
      swift_beginAccess();
      sub_24DFB8804(v21, v54 + v61, &qword_27F1E6850);
      swift_endAccess();
    }

    if (qword_27F1DD988 != -1)
    {
      swift_once();
    }

    v62 = sub_24E343F18();
    __swift_project_value_buffer(v62, qword_27F20B110);
    v63 = sub_24E343EF8();
    sub_24E343F38();
    v64 = sub_24E3483E8();
    v65 = sub_24E348688();
    v66 = v106;
    if (v65)
    {

      v67 = Strong;
      sub_24E343F68();

      v68 = v100;
      if ((*(v66 + 88))(v67, v100) == *MEMORY[0x277D85B00])
      {
        v69 = "[Error] Interval already ended";
      }

      else
      {
        (*(v66 + 8))(v67, v68);
        v69 = "";
      }

      v94 = swift_slowAlloc();
      *v94 = 0;
      v95 = sub_24E343EC8();
      _os_signpost_emit_with_name_impl(&dword_24DE53000, v63, v64, v95, "fetchRecentlyPlayedGames", v69, v94, 2u);
      MEMORY[0x253040EE0](v94, -1, -1);
    }

    (*(v107 + 8))(v10, v105);
    dispatch_group_leave(v110);
  }
}

uint64_t sub_24E1CD034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[84] = a7;
  v7[83] = a6;
  v7[82] = a5;
  v7[81] = a4;
  v8 = sub_24E343F88();
  v7[85] = v8;
  v7[86] = *(v8 - 8);
  v7[87] = swift_task_alloc();
  v9 = sub_24E343F28();
  v7[88] = v9;
  v7[89] = *(v9 - 8);
  v7[90] = swift_task_alloc();
  v7[91] = swift_task_alloc();
  v10 = sub_24E347358();
  v7[92] = v10;
  v7[93] = *(v10 - 8);
  v7[94] = swift_task_alloc();
  v11 = sub_24E343EE8();
  v7[95] = v11;
  v7[96] = *(v11 - 8);
  v7[97] = swift_task_alloc();
  v7[98] = swift_task_alloc();
  v12 = sub_24E3433A8();
  v7[99] = v12;
  v7[100] = *(v12 - 8);
  v7[101] = swift_task_alloc();
  v7[102] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v7[103] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6850);
  v7[104] = swift_task_alloc();
  sub_24E348068();
  v7[105] = sub_24E348058();
  v14 = sub_24E347FF8();
  v7[106] = v14;
  v7[107] = v13;

  return MEMORY[0x2822009F8](sub_24E1CD33C, v14, v13);
}

uint64_t sub_24E1CD33C()
{
  if (qword_27F1DDD38 != -1)
  {
LABEL_32:
    swift_once();
  }

  v1 = qword_27F20B790;
  *(v0 + 864) = qword_27F20B790;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 608) = MEMORY[0x277D84F90];
  sub_24DF88A8C(0, &qword_27F1DEFE0);
  sub_24E1D587C();
  v3 = sub_24E347C28();
  v4 = sub_24DFD8654();
  v30 = v1;
  if (!v4)
  {
    v37 = v2;
LABEL_24:
    *(v0 + 880) = v37;
    *(v0 + 872) = v3;
    v27 = sub_24E347EE8();
    *(v0 + 888) = v27;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 616;
    *(v0 + 24) = sub_24E1CD7EC;
    v28 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3570);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_24E1C73CC;
    *(v0 + 168) = &block_descriptor_106;
    *(v0 + 176) = v28;
    [v30 _cacheLockupsWithRequests_withCompletionBlock_];
    v4 = v0 + 16;

    return MEMORY[0x282200938](v4);
  }

  v5 = v4;
  if (v4 < 1)
  {
    __break(1u);
    return MEMORY[0x282200938](v4);
  }

  v6 = 0;
  v7 = (v0 + 608);
  v8 = *(v0 + 648);
  v38 = v8 & 0xC000000000000001;
  v31 = v8 + 32;
  v36 = *MEMORY[0x277CEC230];
  v37 = MEMORY[0x277D84F90];
  v34 = v0;
  v35 = *MEMORY[0x277CEC1F8];
  v32 = (v0 + 608);
  v33 = v4;
  while (1)
  {
    if (v38)
    {
      v9 = MEMORY[0x25303F560](v6, *(v0 + 648));
    }

    else
    {
      v9 = *(v31 + 8 * v6);
    }

    v10 = v9;
    v11 = [v9 adamID];
    if (!v11)
    {

      goto LABEL_21;
    }

    v39 = v11;
    v12 = sub_24E1C69D4([objc_allocWithZone(MEMORY[0x277CEC258]) initWithNumberValue_], v36, v35);
    MEMORY[0x25303EA30]();
    v0 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v0 >= *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24E347F48();
    }

    sub_24E347F88();
    v37 = *v7;
    v13 = [v10 bundleID];
    v14 = sub_24E347CF8();
    v16 = v15;

    swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_24E26B01C();
    if (__OFADD__(v3[2], (v18 & 1) == 0))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v0 = v17;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E72D8);
    if (sub_24E348AB8())
    {
      break;
    }

LABEL_15:
    if (v19)
    {
      v22 = (v3[7] + 16 * v0);
      *v22 = v14;
      v22[1] = v16;
    }

    else
    {
      v3[(v0 >> 6) + 8] |= 1 << v0;
      *(v3[6] + 8 * v0) = v12;
      v23 = (v3[7] + 16 * v0);
      *v23 = v14;
      v23[1] = v16;
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_31;
      }

      v3[2] = v26;
      v12 = v10;
    }

    v5 = v33;
    v0 = v34;
    v7 = v32;
LABEL_21:
    if (v5 == ++v6)
    {
      goto LABEL_24;
    }
  }

  v20 = sub_24E26B01C();
  if ((v19 & 1) == (v21 & 1))
  {
    v0 = v20;
    goto LABEL_15;
  }

  return sub_24E348C98();
}

uint64_t sub_24E1CD7EC()
{
  v1 = *(*v0 + 856);
  v2 = *(*v0 + 848);

  return MEMORY[0x2822009F8](sub_24E1CD8F4, v2, v1);
}

uint64_t sub_24E1CD8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_77();
  v15 = *(v14 + 888);
  *(v14 + 896) = *(v14 + 616);

  v16 = sub_24DFD8654();
  *(v14 + 904) = v16;
  if (v16)
  {
    v17 = *MEMORY[0x277CEC2D8];
    *(v14 + 912) = *MEMORY[0x277CEC2D8];
    v18 = *MEMORY[0x277CEC2E0];
    *(v14 + 920) = *MEMORY[0x277CEC2E0];
    v19 = *MEMORY[0x277CEC2E8];
    v20 = MEMORY[0x277CEC2D0];
    *(v14 + 928) = *MEMORY[0x277CEC2E8];
    v21 = *v20;
    *(v14 + 936) = *v20;
    *(v14 + 984) = *MEMORY[0x277D21DE8];
    *(v14 + 944) = MEMORY[0x277D84F90];
    v22 = *(v14 + 896);
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x25303F560](0);
      v21 = *(v14 + 936);
      v19 = *(v14 + 928);
      v18 = *(v14 + 920);
      v17 = *(v14 + 912);
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x282200938](v16);
      }

      v23 = *(v22 + 32);
    }

    *(v14 + 952) = v23;
    *(v14 + 960) = 1;
    v76 = v23;
    dispatch_group_enter(*(v14 + 656));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E72C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E369E30;
    *(inited + 32) = v17;
    *(inited + 40) = v18;
    *(inited + 48) = v19;
    *(inited + 56) = v21;
    v50 = v17;
    v51 = v18;
    v52 = v19;
    v53 = v21;
    sub_24E1ADFB8(inited);
    type metadata accessor for _ASCLockupKey(0);
    OUTLINED_FUNCTION_6_66();
    sub_24E1D5708(v54, v55);
    v56 = sub_24E348128();
    *(v14 + 968) = v56;

    *(v14 + 80) = v14;
    *(v14 + 120) = v14 + 624;
    *(v14 + 88) = sub_24E1CDE6C;
    v57 = swift_continuation_init();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E72D0);
    OUTLINED_FUNCTION_4_77(v58);
    *(v14 + 280) = 1107296256;
    OUTLINED_FUNCTION_5_83();
    *(v14 + 296) = v59;
    *(v14 + 304) = v57;
    [v60 _lockupDictionaryForRequest_includingKeys_withCompletionBlock_];
    OUTLINED_FUNCTION_62();

    return MEMORY[0x282200938](v16);
  }

  v24 = *(v14 + 832);
  v25 = *(v14 + 824);
  v26 = *(v14 + 816);
  v27 = *(v14 + 808);
  v28 = *(v14 + 800);
  v29 = *(v14 + 792);
  v30 = *(v14 + 664);

  v31 = sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  sub_24E343398();
  (*(v28 + 16))(v27, v26, v29);
  OUTLINED_FUNCTION_7_48();
  sub_24E1D5708(v35, v36);
  sub_24E348918();
  (*(v28 + 8))(v26, v29);
  v37 = type metadata accessor for ContinuePlayingData();
  v38 = *(v37 + 24);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v31);
  *(v24 + 40) = MEMORY[0x277D84F90];
  sub_24DFB8804(v25, v24 + v38, &qword_27F1E58A0);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v37);
  v42 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_continuePlaying;
  swift_beginAccess();
  sub_24DFB8804(v24, v30 + v42, &qword_27F1E6850);
  swift_endAccess();
  if (qword_27F1DD988 != -1)
  {
    OUTLINED_FUNCTION_5_32();
  }

  v43 = *(v14 + 672);
  v44 = sub_24E343F18();
  OUTLINED_FUNCTION_36_10(v44, qword_27F20B110);
  OUTLINED_FUNCTION_22_22();
  v45 = sub_24E3483E8();
  v46 = v42;
  if (sub_24E348688())
  {
    OUTLINED_FUNCTION_12_32();
    sub_24E343F68();

    v47 = OUTLINED_FUNCTION_17_31();
    if (v48(v47) == *MEMORY[0x277D85B00])
    {
      v43 = "[Error] Interval already ended";
    }

    else
    {
      OUTLINED_FUNCTION_16_31();
      v62();
      v43 = "";
    }

    v46 = *(v14 + 784);
    v31 = OUTLINED_FUNCTION_41_2();
    *v31 = 0;
    v63 = sub_24E343EC8();
    OUTLINED_FUNCTION_8_58(&dword_24DE53000, v64, v65, v63, "fetchRecentlyPlayedGames");
    OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_34_11();
  (*(v31 + 8))(v46, v45);
  dispatch_group_leave(v43);
  OUTLINED_FUNCTION_2_90();
  v77 = v66;

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_62();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, v77, a12, a13, a14);
}

uint64_t sub_24E1CDE6C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 976) = v2;
  if (v2)
  {

    v3 = *(v1 + 856);
    v4 = *(v1 + 848);
    v5 = sub_24E1CE9A4;
  }

  else
  {
    v3 = *(v1 + 856);
    v4 = *(v1 + 848);
    v5 = sub_24E1CDFAC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E1CDFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_77();
  v15 = *(v14 + 624);

  if (*(v15 + 16) && (v16 = sub_24E26B064(*(v14 + 920)), (v17 & 1) != 0) && (v18 = OUTLINED_FUNCTION_30_12(v16), sub_24DFB4104(v18, v14 + 336), (swift_dynamicCast() & 1) != 0))
  {
    v19 = *(v14 + 592);
    v20 = *(v14 + 600);
  }

  else if (*(v15 + 16) && (v21 = sub_24E26B064(*(v14 + 928)), (v22 & 1) != 0))
  {
    v23 = OUTLINED_FUNCTION_30_12(v21);
    sub_24DFB4104(v23, v14 + 368);
    v24 = swift_dynamicCast();
    if (v24)
    {
      v20 = *(v14 + 584);
    }

    else
    {
      v20 = 0;
    }

    if (v24)
    {
      v19 = *(v14 + 576);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  if (!*(v15 + 16) || (v25 = sub_24E26B064(*(v14 + 936)), (v26 & 1) == 0) || (v27 = OUTLINED_FUNCTION_30_12(v25), sub_24DFB4104(v27, v14 + 400), sub_24DF88A8C(0, &qword_27F1E3560), (swift_dynamicCast() & 1) == 0))
  {

LABEL_28:

    goto LABEL_29;
  }

  v28 = *(v14 + 632);
  if (!v20)
  {

    goto LABEL_29;
  }

  if (!*(v15 + 16) || (v29 = sub_24E26B064(*(v14 + 912)), (v30 & 1) == 0))
  {

    goto LABEL_28;
  }

  v31 = OUTLINED_FUNCTION_30_12(v29);
  sub_24DFB4104(v31, v14 + 496);

  sub_24DF88A8C(0, &qword_27F1E3068);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v32 = *(v14 + 640);
  if (!*(*(v14 + 872) + 16) || (v33 = sub_24E26B01C(), (v34 & 1) == 0))
  {

LABEL_29:
    v52 = MEMORY[0x277D837D0];
    v53 = *(v14 + 872);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    v54 = *(sub_24E347018() - 8);
    v38 = *(v54 + 72);
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_24E36A270;
    v28 = (v56 + v55);
    *(v14 + 456) = v52;
    *(v14 + 432) = 0xD00000000000002CLL;
    *(v14 + 440) = 0x800000024E3AC370;
    sub_24E346FE8();
    sub_24DF8BFF4(v14 + 432, &qword_27F1E0370);
    if (*(v53 + 16) && (v57 = sub_24E26B01C(), (v58 & 1) != 0))
    {
      v59 = (*(*(v14 + 872) + 56) + 16 * v57);
      v61 = *v59;
      v60 = v59[1];
      *(v14 + 488) = v52;
      *(v14 + 464) = v61;
      *(v14 + 472) = v60;
    }

    else
    {
      *(v14 + 464) = 0u;
      *(v14 + 480) = 0u;
    }

    v19 = *(v14 + 952);
    v62 = *(v14 + 984);
    v36 = *(v14 + 752);
    v63 = *(v14 + 744);
    v40 = *(v14 + 736);
    v42 = *(v14 + 656);
    sub_24E346FD8();
    sub_24DF8BFF4(v14 + 464, &qword_27F1E0370);
    (*(v63 + 104))(v36, v62, v40);
    sub_24E0EF428();

    (*(v63 + 8))(v36, v40);
    dispatch_group_leave(v42);

    v51 = *(v14 + 944);
    goto LABEL_34;
  }

  v35 = (*(*(v14 + 872) + 56) + 16 * v33);
  v36 = v35[1];
  a11 = *v35;

  v37 = [v28 stringValue];
  v38 = sub_24E347CF8();
  v40 = v39;

  v41 = v32;

  v42 = v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(v14 + 944);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v45 = *(v44 + 16);
    v46 = v45 + 1;
    if (v45 >= *(v44 + 24) >> 1)
    {
      a10 = v45 + 1;
      sub_24E0782D4();
      v46 = v45 + 1;
      v44 = v124;
    }

    v47 = *(v14 + 952);
    v48 = *(v14 + 656);
    *(v44 + 16) = v46;
    v49 = (v44 + 56 * v45);
    v49[4] = v38;
    v49[5] = v40;
    v49[6] = a11;
    v49[7] = v36;
    v49[8] = v19;
    v49[9] = v20;
    v49[10] = v42;
    v50 = v44;
    dispatch_group_leave(v48);

    v51 = v50;
LABEL_34:
    v20 = *(v14 + 960);
    if (v20 == *(v14 + 904))
    {
      v64 = *(v14 + 832);
      v65 = *(v14 + 824);
      v66 = *(v14 + 816);
      v67 = *(v14 + 808);
      v68 = *(v14 + 800);
      v69 = *(v14 + 792);
      v70 = *(v14 + 664);
      v126 = v51;

      v71 = sub_24E3474B8();
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v71);
      sub_24E343398();
      (*(v68 + 16))(v67, v66, v69);
      OUTLINED_FUNCTION_7_48();
      sub_24E1D5708(v75, v76);
      sub_24E348918();
      (*(v68 + 8))(v66, v69);
      v77 = type metadata accessor for ContinuePlayingData();
      v78 = *(v77 + 24);
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v71);
      *(v64 + 40) = v126;
      sub_24DFB8804(v65, v64 + v78, &qword_27F1E58A0);
      __swift_storeEnumTagSinglePayload(v64, 0, 1, v77);
      v82 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_continuePlaying;
      swift_beginAccess();
      sub_24DFB8804(v64, v70 + v82, &qword_27F1E6850);
      swift_endAccess();
      if (qword_27F1DD988 != -1)
      {
        OUTLINED_FUNCTION_5_32();
      }

      v83 = *(v14 + 672);
      v84 = sub_24E343F18();
      OUTLINED_FUNCTION_36_10(v84, qword_27F20B110);
      OUTLINED_FUNCTION_22_22();
      v85 = sub_24E3483E8();
      v86 = v64;
      if (sub_24E348688())
      {
        OUTLINED_FUNCTION_12_32();
        sub_24E343F68();

        v87 = OUTLINED_FUNCTION_17_31();
        if (v88(v87) == *MEMORY[0x277D85B00])
        {
          v83 = "[Error] Interval already ended";
        }

        else
        {
          OUTLINED_FUNCTION_16_31();
          v110();
          v83 = "";
        }

        v86 = *(v14 + 784);
        v69 = OUTLINED_FUNCTION_41_2();
        *v69 = 0;
        v111 = sub_24E343EC8();
        OUTLINED_FUNCTION_8_58(&dword_24DE53000, v112, v113, v111, "fetchRecentlyPlayedGames");
        OUTLINED_FUNCTION_12_11();
      }

      OUTLINED_FUNCTION_34_11();
      (*(v69 + 8))(v86, v85);
      dispatch_group_leave(v83);
      OUTLINED_FUNCTION_2_90();
      v127 = v114;

      OUTLINED_FUNCTION_12_5();
      OUTLINED_FUNCTION_62();

      return v116(v115, v116, v117, v118, v119, v120, v121, v122, a9, a10, v127, a12, a13, a14);
    }

    *(v14 + 944) = v51;
    v89 = *(v14 + 896);
    if ((v89 & 0xC000000000000001) != 0)
    {
      v90 = MEMORY[0x25303F560](v20);
      goto LABEL_44;
    }

    if (v20 < *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    sub_24E0782D4();
    v44 = v123;
  }

  v90 = *(v89 + 8 * v20 + 32);
LABEL_44:
  v91 = v90;
  *(v14 + 952) = v90;
  *(v14 + 960) = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    goto LABEL_58;
  }

  v92 = *(v14 + 936);
  v93 = *(v14 + 928);
  v94 = *(v14 + 920);
  v95 = *(v14 + 912);
  dispatch_group_enter(*(v14 + 656));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E72C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  *(inited + 32) = v95;
  *(inited + 40) = v94;
  *(inited + 48) = v93;
  *(inited + 56) = v92;
  v97 = v95;
  v98 = v94;
  v99 = v93;
  v100 = v92;
  sub_24E1ADFB8(inited);
  type metadata accessor for _ASCLockupKey(0);
  OUTLINED_FUNCTION_6_66();
  sub_24E1D5708(v101, v102);
  v103 = sub_24E348128();
  *(v14 + 968) = v103;

  *(v14 + 80) = v14;
  *(v14 + 120) = v14 + 624;
  *(v14 + 88) = sub_24E1CDE6C;
  v104 = swift_continuation_init();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E72D0);
  OUTLINED_FUNCTION_4_77(v105);
  *(v14 + 280) = 1107296256;
  OUTLINED_FUNCTION_5_83();
  *(v14 + 296) = v106;
  *(v14 + 304) = v104;
  [v107 _lockupDictionaryForRequest_includingKeys_withCompletionBlock_];
  OUTLINED_FUNCTION_62();

  return MEMORY[0x282200938](v108);
}

uint64_t sub_24E1CE9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_77();
  v15 = *(v14 + 976);
  v16 = *(v14 + 968);
  v17 = *(v14 + 952);

  swift_willThrow();

  *(v14 + 988) = 4;
  sub_24E346F78();
  sub_24E343C98();
  v18 = v15;
  v19 = sub_24E343F78();
  v20 = sub_24E348258();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v14 + 976);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = v21;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_24DE53000, v19, v20, "Could not create ContinuePlayingData.GameData because of an error  : %@", v22, 0xCu);
    sub_24DF8BFF4(v23, &unk_27F1DF730);
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_22_4();
  }

  v26 = *(v14 + 832);
  v27 = *(v14 + 696);
  v28 = *(v14 + 688);
  v29 = *(v14 + 680);
  v30 = *(v14 + 664);

  (*(v28 + 8))(v27, v29);
  type metadata accessor for ContinuePlayingData();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_continuePlaying;
  swift_beginAccess();
  sub_24DFB8804(v26, v30 + v35, &qword_27F1E6850);
  swift_endAccess();
  if (qword_27F1DD988 != -1)
  {
    OUTLINED_FUNCTION_5_32();
  }

  v36 = sub_24E343F18();
  OUTLINED_FUNCTION_36_10(v36, qword_27F20B110);
  OUTLINED_FUNCTION_22_22();
  sub_24E3483E8();
  if (sub_24E348688())
  {
    OUTLINED_FUNCTION_12_32();
    sub_24E343F68();

    v37 = OUTLINED_FUNCTION_17_31();
    if (v38(v37) != *MEMORY[0x277D85B00])
    {
      OUTLINED_FUNCTION_16_31();
      v39();
    }

    *OUTLINED_FUNCTION_41_2() = 0;
    v40 = sub_24E343EC8();
    OUTLINED_FUNCTION_8_58(&dword_24DE53000, v41, v42, v40, "fetchRecentlyPlayedGames");
    OUTLINED_FUNCTION_12_11();
  }

  v43 = *(v14 + 976);
  v44 = *(v14 + 776);
  v45 = *(v14 + 768);
  v46 = *(v14 + 760);
  v47 = *(v14 + 656);

  (*(v45 + 8))(v44, v46);
  dispatch_group_leave(v47);

  OUTLINED_FUNCTION_2_90();
  v58 = v48;

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_62();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, v58, a11, a12, a13, a14);
}

uint64_t sub_24E1CED20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_24E1C6AA0(v4, a3);
  }

  type metadata accessor for _ASCLockupKey(0);
  sub_24E1D5708(&qword_27F1DE7D0, type metadata accessor for _ASCLockupKey);
  v6 = sub_24E347C08();
  return sub_24E1C6B38(v4, v6);
}

void sub_24E1CEDDC(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v47 = a3;
  v6 = sub_24E343F28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E343EE8();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6850);
  MEMORY[0x28223BE20](v11 - 8);
  v46 = &v42 - v12;
  v13 = sub_24E343F88();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v51 = 4;
    sub_24E346F78();
  }

  sub_24E343C98();
  v17 = a1;
  v18 = sub_24E343F78();
  v19 = sub_24E348258();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v44 = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v43 = v7;
    v23 = v6;
    v24 = v22;
    *v21 = 138412290;
    v25 = a1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_24DE53000, v18, v19, "unable to fetch recently played games for Continue Playing Section because of an error : %@", v21, 0xCu);
    sub_24DF8BFF4(v24, &unk_27F1DF730);
    v27 = v24;
    v6 = v23;
    v7 = v43;
    MEMORY[0x253040EE0](v27, -1, -1);
    v28 = v21;
    a4 = v44;
    MEMORY[0x253040EE0](v28, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v31 = type metadata accessor for ContinuePlayingData();
    v32 = v46;
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v31);
    v33 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_continuePlaying;
    swift_beginAccess();
    sub_24DFB8804(v32, v30 + v33, &qword_27F1E6850);
    swift_endAccess();
  }

  v34 = v48;
  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v35 = sub_24E343F18();
  __swift_project_value_buffer(v35, qword_27F20B110);
  v36 = sub_24E343EF8();
  sub_24E343F38();
  v37 = sub_24E3483E8();
  if (sub_24E348688())
  {

    v38 = v45;
    sub_24E343F68();

    if ((*(v7 + 88))(v38, v6) == *MEMORY[0x277D85B00])
    {
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v7 + 8))(v38, v6);
      v39 = "";
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v36, v37, v41, "fetchRecentlyPlayedGames", v39, v40, 2u);
    MEMORY[0x253040EE0](v40, -1, -1);
  }

  (*(v49 + 8))(v34, v50);
  dispatch_group_leave(a4);
}

void sub_24E1CF34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v60 = a5;
  v7 = sub_24E343F28();
  v58 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v59 = sub_24E343EE8();
  v13 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  if (a1)
  {
    v57 = v13;
    v19 = v7;
    v20 = sub_24DF99EF0(a1);
    v21 = sub_24E1D3F70(v20, v20);
    v23 = v22;
    v25 = v24;
    v26 = ~v24;

    if (v26)
    {
      sub_24DF9A440(v21, v23, v25, __dst);
      sub_24E1D55A8(v21, v23, v25);
      v56 = __dst[0];
      v55 = __dst[1];
      v54 = __dst[2];
      v53 = __dst[3];
      v52 = __dst[4];
      v51 = __dst[5];
      v27 = __dst[6];
    }

    else
    {
      v27 = 0uLL;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
    }

    v50 = v27;
    v34 = (a3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_achievementHighlight);
    memcpy(__dst, (a3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_achievementHighlight), sizeof(__dst));
    v35 = v55;
    *v34 = v56;
    v34[1] = v35;
    v36 = v53;
    v34[2] = v54;
    v34[3] = v36;
    v37 = v51;
    v34[4] = v52;
    v34[5] = v37;
    v34[6] = v50;
    sub_24DF8BFF4(__dst, &qword_27F1DF038);
    v38 = v19;
    if (qword_27F1DD988 != -1)
    {
      swift_once();
    }

    v39 = sub_24E343F18();
    __swift_project_value_buffer(v39, qword_27F20B110);
    v40 = sub_24E343EF8();
    sub_24E343F38();
    v41 = sub_24E3483E8();
    v42 = sub_24E348688();
    v43 = v57;
    if (v42)
    {

      sub_24E343F68();

      v44 = v58;
      if ((*(v58 + 88))(v12, v38) == *MEMORY[0x277D85B00])
      {
        v45 = "[Error] Interval already ended";
      }

      else
      {
        (*(v44 + 8))(v12, v38);
        v45 = "";
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = sub_24E343EC8();
      _os_signpost_emit_with_name_impl(&dword_24DE53000, v40, v41, v47, "fetchAchievementHighlights", v45, v46, 2u);
      MEMORY[0x253040EE0](v46, -1, -1);
    }

    (*(v43 + 8))(v18, v59);
  }

  else
  {
    v28 = (a3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_achievementHighlight);
    memcpy(__dst, (a3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_achievementHighlight), sizeof(__dst));
    *v28 = 0u;
    v28[1] = 0u;
    v28[2] = 0u;
    v28[3] = 0u;
    v28[4] = 0u;
    v28[5] = 0u;
    v28[6] = 0u;
    sub_24DF8BFF4(__dst, &qword_27F1DF038);
    if (qword_27F1DD988 != -1)
    {
      swift_once();
    }

    v29 = sub_24E343F18();
    __swift_project_value_buffer(v29, qword_27F20B110);
    v30 = sub_24E343EF8();
    sub_24E343F38();
    v31 = sub_24E3483E8();
    if (sub_24E348688())
    {

      sub_24E343F68();

      v32 = v58;
      if ((*(v58 + 88))(v9, v7) == *MEMORY[0x277D85B00])
      {
        v33 = "[Error] Interval already ended";
      }

      else
      {
        (*(v32 + 8))(v9, v7);
        v33 = "";
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = sub_24E343EC8();
      _os_signpost_emit_with_name_impl(&dword_24DE53000, v30, v31, v49, "fetchAchievementHighlights", v33, v48, 2u);
      MEMORY[0x253040EE0](v48, -1, -1);
    }

    (*(v13 + 8))(v15, v59);
  }

  dispatch_group_leave(v60);
}

void sub_24E1CF928(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v43 = a4;
  v36 = a3;
  v34 = sub_24E343F28();
  v39 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E343EE8();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  v35 = sub_24DFD8654(a1);
  if (v35 >= 1 && !a2)
  {
    v12 = sub_24DFD8654(a1);
    v13 = 0;
    v14 = (a1 & 0xC000000000000001);
    while (v12 != v13)
    {
      if (v14)
      {
        v15 = MEMORY[0x25303F560](v13, a1);
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v17 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
      MEMORY[0x25303EA30]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      v11 = v44;
      if (v44 >> 62)
      {
        v18 = sub_24E348878();
      }

      else
      {
        v18 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v13;
      if (v18 >= 3)
      {
        break;
      }
    }
  }

  v19 = v36;
  *(v36 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardFriendTotalCount) = v35;
  *(v19 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardFriends) = v11;

  v14 = v43;
  sub_24E1CFD50(v43, v37);
  if (qword_27F1DD988 != -1)
  {
LABEL_26:
    swift_once();
  }

  v20 = sub_24E343F18();
  __swift_project_value_buffer(v20, qword_27F20B110);
  v21 = sub_24E343EF8();
  v22 = v40;
  sub_24E343F38();
  v23 = sub_24E3483E8();
  v24 = sub_24E348688();
  v25 = v39;
  if (v24)
  {

    v26 = v33;
    sub_24E343F68();
    v27 = v26;

    v28 = v26;
    v29 = v34;
    if ((*(v25 + 88))(v28, v34) == *MEMORY[0x277D85B00])
    {
      v30 = "[Error] Interval already ended";
    }

    else
    {
      (*(v25 + 8))(v27, v29);
      v30 = "";
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v21, v23, v32, "fetchLeaderboardFriends", v30, v31, 2u);
    MEMORY[0x253040EE0](v31, -1, -1);
  }

  (*(v41 + 8))(v22, v42);
  dispatch_group_leave(v14);
}

uint64_t sub_24E1CFD50(NSObject *a1, uint64_t a2)
{
  v4 = sub_24E343EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  dispatch_group_enter(a1);
  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v11 = sub_24E343F18();
  __swift_project_value_buffer(v11, qword_27F20B110);
  sub_24E343EF8();
  sub_24E343EB8();
  v12 = sub_24E343EF8();
  v13 = sub_24E3483F8();
  if (sub_24E348688())
  {
    v14 = swift_slowAlloc();
    v27 = v5;
    v15 = a2;
    v16 = v14;
    *v14 = 0;
    v17 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v12, v13, v17, "fetchLeaderboardHighlights", "", v16, 2u);
    v18 = v16;
    a2 = v15;
    v5 = v27;
    MEMORY[0x253040EE0](v18, -1, -1);
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_24E343F58();
  swift_allocObject();
  v19 = sub_24E343F48();
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v19;
  v22[4] = a1;
  aBlock[4] = sub_24E1D544C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E216D94;
  aBlock[3] = &block_descriptor_45;
  v23 = _Block_copy(aBlock);

  v24 = a1;

  [v20 loadHighlightsWithPlayerScope:1 timeScope:2 game:a2 handler:v23];
  _Block_release(v23);

  return (*(v5 + 8))(v10, v4);
}

void sub_24E1D00A8(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9)
{
  v74 = a8;
  v78 = a9;
  v72 = sub_24E343F28();
  v75 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v64 - v18;
  v19 = sub_24E343EE8();
  v76 = *(v19 - 8);
  v77 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v64 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = *(Strong + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardFriends);
    *&v80 = a1;
    *(&v80 + 1) = a2;
    *&v81 = a3;
    *(&v81 + 1) = a4;
    *&v82 = a5;
    *(&v82 + 1) = a6;
    *&v83 = a6;
    *(&v83 + 1) = v26;
    v84[0] = v80;
    v84[1] = v81;
    v84[2] = v82;
    v84[3] = v83;
    v27 = a5;

    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = a4;
    v32 = sub_24E32817C(v84);
    if (v34 == -1)
    {
      v38 = 0uLL;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      sub_24E328368(v32, v33, v34, v79);
      sub_24E1D54CC(v35, v36, v37);
      v69 = v79[1];
      v70 = v79[0];
      v67 = v79[3];
      v68 = v79[2];
      v65 = v79[5];
      v66 = v79[4];
      v38 = v79[6];
    }

    v64 = v38;
    v46 = v75;
    v47 = v73;
    v48 = (v25 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardHighlight);
    memcpy(v79, (v25 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardHighlight), sizeof(v79));
    v49 = v69;
    *v48 = v70;
    v48[1] = v49;
    v50 = v67;
    v48[2] = v68;
    v48[3] = v50;
    v51 = v65;
    v48[4] = v66;
    v48[5] = v51;
    v48[6] = v64;
    sub_24DF8BFF4(v79, &qword_27F1DF038);
    if (qword_27F1DD988 != -1)
    {
      swift_once();
    }

    v52 = sub_24E343F18();
    __swift_project_value_buffer(v52, qword_27F20B110);
    v53 = sub_24E343EF8();
    sub_24E343F38();
    v54 = sub_24E3483E8();
    if (sub_24E348688())
    {

      v55 = v71;
      sub_24E343F68();
      v56 = v55;

      v57 = v55;
      v58 = v72;
      if ((*(v46 + 88))(v57, v72) == *MEMORY[0x277D85B00])
      {
        v59 = "[Error] Interval already ended";
      }

      else
      {
        (*(v46 + 8))(v56, v58);
        v59 = "";
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = sub_24E343EC8();
      _os_signpost_emit_with_name_impl(&dword_24DE53000, v53, v54, v61, "fetchLeaderboardHighlights", v59, v60, 2u);
      MEMORY[0x253040EE0](v60, -1, -1);
    }

    (*(v76 + 8))(v47, v77);
    dispatch_group_leave(v78);
    sub_24E1D5478(&v80);
  }

  else
  {
    if (qword_27F1DD988 != -1)
    {
      swift_once();
    }

    v39 = sub_24E343F18();
    __swift_project_value_buffer(v39, qword_27F20B110);
    v40 = sub_24E343EF8();
    sub_24E343F38();
    v41 = sub_24E3483E8();
    v42 = sub_24E348688();
    v43 = v75;
    if (v42)
    {

      sub_24E343F68();

      v44 = v72;
      if ((*(v43 + 88))(v16, v72) == *MEMORY[0x277D85B00])
      {
        v45 = "[Error] Interval already ended";
      }

      else
      {
        (*(v43 + 8))(v16, v44);
        v45 = "";
      }

      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = sub_24E343EC8();
      _os_signpost_emit_with_name_impl(&dword_24DE53000, v40, v41, v63, "fetchLeaderboardHighlights", v45, v62, 2u);
      MEMORY[0x253040EE0](v62, -1, -1);
    }

    (*(v76 + 8))(v21, v77);
    dispatch_group_leave(v78);
  }
}

void sub_24E1D0674(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v20 = a4;
  v5 = sub_24E343F28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E343EE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_arcadeHighlights) = a1;
  }

  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v14 = sub_24E343F18();
  __swift_project_value_buffer(v14, qword_27F20B110);
  v15 = sub_24E343EF8();
  sub_24E343F38();
  v16 = sub_24E3483E8();
  if (sub_24E348688())
  {

    sub_24E343F68();

    if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v15, v16, v19, "fetchArcadeHighlights", v17, v18, 2u);
    MEMORY[0x253040EE0](v18, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  dispatch_group_leave(v20);
}

uint64_t sub_24E1D0964(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v6 = sub_24E343F28();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E343EE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v13 = sub_24E343F18();
  __swift_project_value_buffer(v13, qword_27F20B110);
  v14 = sub_24E343EF8();
  sub_24E343F38();
  v15 = sub_24E3483E8();
  if (sub_24E348688())
  {

    sub_24E343F68();

    v16 = v27;
    if ((*(v27 + 88))(v8, v6) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 8))(v8, v6);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v14, v15, v19, "fetchGameActivityFeed", v17, v18, 2u);
    MEMORY[0x253040EE0](v18, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = *(Strong + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedData);
    v22 = v28;
    *(Strong + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedData) = v28;
    v23 = v22;
  }

  sub_24E16BD78();
  sub_24E16BFE8();
  swift_beginAccess();
  v24 = swift_weakLoadStrong();
  if (v24)
  {
    *(v24 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedFirstLoad) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E1D0CC8(1);
  }

  return result;
}

uint64_t sub_24E1D0CC8(char a1)
{
  v2 = type metadata accessor for DashboardRequiredDataPresenter.Update(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v12 - v6);
  v8 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E1D21CC(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_24DF8BFF4(v7, &qword_27F1DF018);
  }

  sub_24E0EF370(v7, v10);
  sub_24E041928(v10, &v4[*(v2 + 20)]);
  *v4 = a1 & 1;
  sub_24E346F78();
  sub_24E1D3F18(v4, type metadata accessor for DashboardRequiredDataPresenter.Update);
  return sub_24E1D3F18(v10, type metadata accessor for DashboardRequiredDataPresenter.Data);
}

uint64_t sub_24E1D0E94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a1;
  v4 = sub_24E343F28();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24E343EE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v11 = sub_24E343F18();
  __swift_project_value_buffer(v11, qword_27F20B110);
  v12 = sub_24E343EF8();
  sub_24E343F38();
  v13 = sub_24E3483E8();
  if (sub_24E348688())
  {

    sub_24E343F68();

    v14 = v26;
    if ((*(v26 + 88))(v6, v4) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v6, v4);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v12, v13, v17, "fetchGameActivityFeed", v15, v16, 2u);
    MEMORY[0x253040EE0](v16, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_24E16BD78();
  sub_24E16BFE8();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedFirstLoad) = 0;
  }

  swift_beginAccess();
  v19 = swift_weakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(v19 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedError);
    v22 = v27;
    *(v20 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedError) = v27;

    v23 = v22;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E1D0CC8(1);
  }

  return result;
}

uint64_t sub_24E1D11F4(char a1)
{
  v2 = sub_24E343F28();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24E343EE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = *(Strong + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedData);
      v11 = v10;

      if (v10)
      {
        [v11 setContinuationToken_];
      }
    }
  }

  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v12 = sub_24E343F18();
  __swift_project_value_buffer(v12, qword_27F20B110);
  v13 = sub_24E343EF8();
  sub_24E343F38();
  v14 = sub_24E3483E8();
  if (sub_24E348688())
  {

    sub_24E343F68();

    v15 = v21;
    if ((*(v21 + 88))(v4, v2) == *MEMORY[0x277D85B00])
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v15 + 8))(v4, v2);
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v13, v14, v18, "fetchMoreActivityFeed", v16, v17, 2u);
    MEMORY[0x253040EE0](v17, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E1D0CC8(1);
  }

  return result;
}

uint64_t sub_24E1D1524(void **a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedData);
    *(Strong + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedData) = v4;
    v7 = v4;
  }

  return a3(0);
}

void sub_24E1D15B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v7 = sub_24E343F28();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24E343EE8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v24 = sub_24E0833B4(v15);
  sub_24E1D4198(&v24);
  v23 = a5;
  *(a3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_friendRequests) = v24;

  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v16 = sub_24E343F18();
  __swift_project_value_buffer(v16, qword_27F20B110);
  v17 = sub_24E343EF8();
  sub_24E343F38();
  v18 = sub_24E3483E8();
  if (sub_24E348688())
  {

    sub_24E343F68();

    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D85B00])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v19 = "";
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v17, v18, v21, "fetchFriendRequests", v19, v20, 2u);
    MEMORY[0x253040EE0](v20, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  dispatch_group_leave(v23);
}

void sub_24E1D18AC()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_15(v2, v3, v4, v5, v6, v7);
  v9 = v8;
  sub_24E343F28();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v11 = sub_24E343EE8();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  *(v1 + *v0) = *v9;

  if (qword_27F1DD988 != -1)
  {
    OUTLINED_FUNCTION_5_32();
  }

  v18 = sub_24E343F18();
  v19 = OUTLINED_FUNCTION_36_10(v18, qword_27F20B110);
  sub_24E343F38();
  sub_24E3483E8();
  if (sub_24E348688())
  {

    sub_24E343F68();

    v20 = OUTLINED_FUNCTION_28_16();
    if (v21(v20) != *MEMORY[0x277D85B00])
    {
      v22 = OUTLINED_FUNCTION_28_16();
      v23(v22);
    }

    *OUTLINED_FUNCTION_41_2() = 0;
    v24 = sub_24E343EC8();
    OUTLINED_FUNCTION_19_26(&dword_24DE53000, v25, v26, v24);
    OUTLINED_FUNCTION_22_4();
  }

  (*(v13 + 8))(v17, v11);
  dispatch_group_leave(v27);
  OUTLINED_FUNCTION_18();
}

void sub_24E1D1AE0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_15(v2, v3, v4, v5, v6, v7);
  sub_24E343F28();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v9 = sub_24E343EE8();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  *(v1 + *v0) = MEMORY[0x277D84F90];

  if (qword_27F1DD988 != -1)
  {
    OUTLINED_FUNCTION_5_32();
  }

  v16 = sub_24E343F18();
  v17 = OUTLINED_FUNCTION_36_10(v16, qword_27F20B110);
  sub_24E343F38();
  sub_24E3483E8();
  if (sub_24E348688())
  {

    sub_24E343F68();

    v18 = OUTLINED_FUNCTION_28_16();
    if (v19(v18) != *MEMORY[0x277D85B00])
    {
      v20 = OUTLINED_FUNCTION_28_16();
      v21(v20);
    }

    *OUTLINED_FUNCTION_41_2() = 0;
    v22 = sub_24E343EC8();
    OUTLINED_FUNCTION_19_26(&dword_24DE53000, v23, v24, v22);
    OUTLINED_FUNCTION_22_4();
  }

  (*(v11 + 8))(v15, v9);
  dispatch_group_leave(v25);
  OUTLINED_FUNCTION_18();
}

void sub_24E1D1D0C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v8 = sub_24E343F28();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24E343EE8();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v41 = v9;
    v42 = v8;
    v43 = a5;
    v15 = sub_24DFD8654(a1) > 0;
    *(a3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_supportsChallenges) = v15;
    v16 = sub_24E09BEC8(a1);
    v17 = sub_24E1D3FF4(v16, v16);
    v19 = v18;
    v21 = v20;
    v22 = ~v20;

    if (v22)
    {
      sub_24E09C2D8(v17, v19, v21 & 1, __dst);
      sub_24E1D5600(v17, v19, v21);
      v40 = __dst[0];
      v39 = __dst[1];
      v38 = __dst[2];
      v37 = __dst[3];
      v36 = __dst[4];
      v35 = __dst[5];
      v23 = __dst[6];
    }

    else
    {
      v23 = 0uLL;
      v40 = 0u;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      v35 = 0u;
    }

    v34 = v23;
    v24 = (a3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_challengesHighlight);
    memcpy(__dst, (a3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_challengesHighlight), sizeof(__dst));
    v25 = v39;
    *v24 = v40;
    v24[1] = v25;
    v26 = v37;
    v24[2] = v38;
    v24[3] = v26;
    v27 = v35;
    v24[4] = v36;
    v24[5] = v27;
    v24[6] = v34;
    sub_24DF8BFF4(__dst, &qword_27F1DF038);
    v8 = v42;
    a5 = v43;
    v9 = v41;
  }

  if (qword_27F1DD988 != -1)
  {
    swift_once();
  }

  v28 = sub_24E343F18();
  __swift_project_value_buffer(v28, qword_27F20B110);
  v29 = sub_24E343EF8();
  sub_24E343F38();
  v30 = sub_24E3483E8();
  if (sub_24E348688())
  {

    sub_24E343F68();

    if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D85B00])
    {
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v9 + 8))(v11, v8);
      v31 = "";
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v29, v30, v33, "fetchChallengesHighlights", v31, v32, 2u);
    MEMORY[0x253040EE0](v32, -1, -1);
  }

  (*(v12 + 8))(v14, v44);
  dispatch_group_leave(a5);
}

uint64_t sub_24E1D2128(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24DF88A8C(0, &qword_27F1E72B8);
    v4 = sub_24E347F08();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t sub_24E1D21CC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24E343F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v134 - v9;
  v11 = sub_24E347358();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6850);
  MEMORY[0x28223BE20](v15 - 8);
  v158 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v2[2];
  if (!v19)
  {
    goto LABEL_15;
  }

  v156 = &v134 - v18;
  v157 = v4;
  v152 = v14;
  v153 = v12;
  v154 = v11;
  v20 = v19;
  v21 = [v20 bundleIdentifier];
  v22 = sub_24E347CF8();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    v4 = v157;
LABEL_15:
    sub_24E343C98();
    v60 = sub_24E343F78();
    v61 = sub_24E348238();
    v62 = os_log_type_enabled(v60, v61);
    v150 = a1;
    if (v62)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_24DE53000, v60, v61, "current game is nil fall back to Continue-Playing dashboard.", v63, 2u);
      MEMORY[0x253040EE0](v63, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
LABEL_18:
    v64 = v2[5];
    v149 = v2[4];
    v65 = OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_continuePlaying;
    swift_beginAccess();
    sub_24DFAE87C(v2 + v65, v158, &qword_27F1E6850);

    v66 = sub_24E347CB8();
    v67 = GKGameCenterUIFrameworkBundle();
    v68 = GKGetLocalizedStringFromTableInBundle();

    v69 = sub_24E347CF8();
    v152 = v70;
    v153 = v69;

    v71 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedData);
    LODWORD(v66) = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedFirstLoad);
    v72 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedError);
    v73 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_friendRequests);
    v74 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_bidirectionalFriends);
    v75 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_allFriendsDataSource);
    v156 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_suggestedFriends);
    v157 = v75;
    v76 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_friendRequestsDataSource);
    v77 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_friendSuggestionsDataSource);
    v155 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_invitationStateManager);
    v78 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_arcadeHighlights);
    v79 = *(v78 + 16);
    LODWORD(v154) = v66;
    v151 = v64;
    v148 = v72;
    if (v79)
    {
      *&v138 = v71;
      v80 = v71;
      v81 = v72;
      *&v139 = v73;

      v137 = v74;

      v136 = v76;

      result = sub_24E1D4078(v79);
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v78 + 16))
      {
        memcpy(v168, (v78 + 112 * result + 32), 0x70uLL);
        v144 = v168[1];
        v145 = v168[0];
        v142 = v168[3];
        v143 = v168[2];
        v140 = v168[5];
        v141 = v168[4];
        v146 = *(&v168[6] + 1);
        v147 = *&v168[6];
        sub_24E0EAA94(v168, v167);

        v74 = v137;
        v82 = v138;
        v83 = v139;
        v76 = v136;
LABEL_23:
        sub_24E1D4104(v167);
        v87 = v150;
        memcpy(v150 + 2, v167, 0x199uLL);
        v88 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
        v89 = v88[6];
        v90 = type metadata accessor for ContinuePlayingData();
        __swift_storeEnumTagSinglePayload(v87 + v89, 1, 1, v90);
        v91 = v88[12];
        v92 = v151;
        *v87 = v149;
        v87[1] = v92;
        memcpy(v168, v87 + 2, 0x199uLL);
        sub_24DF8BFF4(v168, &qword_27F1DF030);
        memcpy(v87 + 2, v167, 0x199uLL);
        sub_24DFB8804(v158, v87 + v89, &qword_27F1E6850);
        v93 = v87 + v88[7];
        *v93 = 0;
        *(v93 + 1) = 0xE000000000000000;
        *(v93 + 3) = 0;
        *(v93 + 4) = 0;
        *(v93 + 2) = 0;
        v93[40] = 8;
        *(v93 + 41) = v159[0];
        *(v93 + 11) = *(v159 + 3);
        v94 = v152;
        *(v93 + 6) = v153;
        *(v93 + 7) = v94;
        *(v93 + 8) = 0;
        *(v93 + 9) = 0xE000000000000000;
        v93[80] = 0;
        *(v93 + 21) = *(v161 + 3);
        *(v93 + 81) = v161[0];
        *(v93 + 11) = 0;
        *(v93 + 12) = 0xE000000000000000;
        *(v93 + 13) = 0;
        *(v87 + v88[8]) = v82;
        *(v87 + v88[9]) = v154;
        *(v87 + v88[10]) = v148;
        v95 = v157;
        *(v87 + v88[11]) = v156;
        *(v87 + v91) = v83;
        *(v87 + v88[13]) = v74;
        *(v87 + v88[14]) = v95;
        *(v87 + v88[15]) = v76;
        *(v87 + v88[16]) = v77;
        *(v87 + v88[17]) = v155;
        v96 = v87 + v88[18];
        v97 = v144;
        *v96 = v145;
        *(v96 + 1) = v97;
        v98 = v142;
        *(v96 + 2) = v143;
        *(v96 + 3) = v98;
        v99 = v140;
        *(v96 + 4) = v141;
        *(v96 + 5) = v99;
        v100 = v146;
        *(v96 + 12) = v147;
        *(v96 + 13) = v100;
        v101 = v87;
        v102 = 0;
        v103 = v88;
        return __swift_storeEnumTagSinglePayload(v101, v102, 1, v103);
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v84 = v72;
    v82 = v71;
    v85 = v71;
    v86 = v84;

    v146 = 0;
    v147 = 0;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v83 = v73;
    goto LABEL_23;
  }

  v155 = v20;
  v26 = v2[6];
  if (!v26)
  {
    sub_24E343C98();
    v104 = sub_24E343F78();
    v105 = sub_24E348258();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_24DE53000, v104, v105, "Could not create requiredData for dashboard playerInternal was nil.", v106, 2u);
      MEMORY[0x253040EE0](v106, -1, -1);
      v107 = v155;
    }

    else
    {
      v107 = v104;
      v104 = v155;
    }

    v108 = v157;

    (*(v5 + 8))(v10, v108);
    v103 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
    v101 = a1;
    v102 = 1;
    return __swift_storeEnumTagSinglePayload(v101, v102, 1, v103);
  }

  v27 = objc_allocWithZone(MEMORY[0x277D0C170]);
  v28 = v26;
  v29 = [v27 initWithInternalRepresentation_];
  v30 = sub_24E1C8558(v29);

  if (!v30)
  {
    goto LABEL_32;
  }

  v31 = v30;
  if ([v31 supportsAchievements] & 1) != 0 || (objc_msgSend(v31, sel_supportsLeaderboards))
  {

    goto LABEL_10;
  }

  v127 = [v31 supportsChallenges];

  if ((v127 & 1) == 0)
  {
LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E36A270;
    sub_24E346FB8();
    if (v30)
    {
      v128 = sub_24DF88A8C(0, &qword_27F1DF108);
    }

    else
    {
      v128 = 0;
      *&v168[1] = 0;
      *(&v168[0] + 1) = 0;
    }

    v129 = v155;
    v150 = a1;
    *&v168[0] = v30;
    *(&v168[1] + 1) = v128;
    v130 = v30;
    sub_24E347008();
    sub_24DF8BFF4(v168, &qword_27F1E0370);
    v132 = v152;
    v131 = v153;
    v133 = v154;
    (*(v153 + 104))(v152, *MEMORY[0x277D21DE8], v154);
    sub_24E0EF428();

    (*(v131 + 8))(v132, v133);
    goto LABEL_18;
  }

LABEL_10:
  v152 = v31;
  LODWORD(v157) = [v28 isLocalPlayer];
  v32 = v2[8];
  v154 = v2[7];
  v158 = v32;
  memcpy(v164, v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_achievementHighlight, sizeof(v164));
  memcpy(v165, v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardHighlight, sizeof(v165));
  memcpy(v166, v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_challengesHighlight, sizeof(v166));
  v34 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardCaption);
  v33 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardCaption + 8);
  v35 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_supportsChallenges);
  v163 = 0;
  v162 = 0;
  memcpy(&v161[1] + 3, v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_achievementHighlight, 0x70uLL);
  memcpy(&v168[10] + 8, v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardHighlight, 0x70uLL);
  memcpy(&v168[17] + 8, v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_challengesHighlight, 0x70uLL);
  v36 = v155;
  *&v168[0] = v155;
  *(&v168[0] + 1) = v28;
  LOBYTE(v168[1]) = v157;
  *(&v168[1] + 1) = v154;
  LOBYTE(v168[2]) = 0;
  *(&v168[2] + 1) = v158;
  LOBYTE(v168[3]) = 0;
  memcpy(&v168[3] + 1, v161, 0x77uLL);
  *(&v168[24] + 1) = v34;
  *&v168[25] = v33;
  BYTE8(v168[25]) = v35 & 1;
  v37 = v2[5];
  v146 = v2[4];
  v151 = type metadata accessor for ContinuePlayingData();
  __swift_storeEnumTagSinglePayload(v156, 1, 1, v151);
  *&v144 = v36;
  *&v143 = v28;
  sub_24DFAE87C(v164, v167, &qword_27F1DF038);
  sub_24DFAE87C(v165, v167, &qword_27F1DF038);
  sub_24DFAE87C(v166, v167, &qword_27F1DF038);

  sub_24E1D410C(v168, v167);
  v38 = sub_24E347CB8();
  v39 = GKGameCenterUIFrameworkBundle();
  v40 = GKGetLocalizedStringFromTableInBundle();

  v41 = sub_24E347CF8();
  v147 = v42;

  v43 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedData);
  v44 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedFirstLoad);
  v45 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_activityFeedError);
  v153 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_suggestedFriends);
  v46 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_friendRequests);
  v47 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_bidirectionalFriends);
  v157 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_allFriendsDataSource);
  v158 = v46;
  v48 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_friendRequestsDataSource);
  v49 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_friendSuggestionsDataSource);
  v154 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_invitationStateManager);
  v155 = v48;
  v50 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_arcadeHighlights);
  v51 = *(v50 + 16);
  LODWORD(v149) = v44;
  v148 = v41;
  *&v145 = v37;
  if (!v51)
  {
    v58 = v45;
    v57 = v43;
    v109 = v43;
    v110 = v45;

    v54 = v153;

    sub_24E1D4144(v168);
    v152 = 0;
    *&v144 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v59 = v47;
    v56 = v49;
    goto LABEL_30;
  }

  v134 = v43;
  v52 = v43;
  v137 = v45;
  v53 = v45;

  v136 = v47;

  v135 = v49;

  v54 = v153;

  result = sub_24E1D4078(v51);
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  if (result < *(v50 + 16))
  {
    memcpy(v167, (v50 + 112 * result + 32), 0x70uLL);
    sub_24E0EAA94(v167, v160);

    sub_24E1D4144(v168);

    v142 = v167[1];
    v143 = v167[0];
    v140 = v167[3];
    v141 = v167[2];
    v138 = v167[5];
    v139 = v167[4];
    *&v144 = *(&v167[6] + 1);
    v152 = *&v167[6];
    v57 = v134;
    v56 = v135;
    v59 = v136;
    v58 = v137;
LABEL_30:
    memcpy(v159, v168, 0x199uLL);
    CGSizeMake(v159, v111, v112, v113);
    sub_24E1D4104(v160);
    memcpy(a1 + 2, v160, 0x199uLL);
    v114 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
    v115 = v114[6];
    __swift_storeEnumTagSinglePayload(a1 + v115, 1, 1, v151);
    v116 = v114[12];
    v117 = v145;
    *a1 = v146;
    a1[1] = v117;
    memcpy(v167, a1 + 2, 0x199uLL);
    sub_24DF8BFF4(v167, &qword_27F1DF030);
    memcpy(a1 + 2, v159, 0x199uLL);
    sub_24DFB8804(v156, a1 + v115, &qword_27F1E6850);
    v118 = a1 + v114[7];
    *v118 = 0;
    *(v118 + 1) = 0xE000000000000000;
    *(v118 + 3) = 0;
    *(v118 + 4) = 0;
    *(v118 + 2) = 0;
    v118[40] = 8;
    v119 = v147;
    *(v118 + 6) = v148;
    *(v118 + 7) = v119;
    *(v118 + 8) = 0;
    *(v118 + 9) = 0xE000000000000000;
    v118[80] = 0;
    *(v118 + 11) = 0;
    *(v118 + 12) = 0xE000000000000000;
    *(v118 + 13) = 0;
    *(a1 + v114[8]) = v57;
    *(a1 + v114[9]) = v149;
    *(a1 + v114[10]) = v58;
    *(a1 + v114[11]) = v54;
    v120 = v157;
    *(a1 + v116) = v158;
    *(a1 + v114[13]) = v59;
    *(a1 + v114[14]) = v120;
    v121 = v154;
    *(a1 + v114[15]) = v155;
    *(a1 + v114[16]) = v56;
    *(a1 + v114[17]) = v121;
    v122 = a1 + v114[18];
    v123 = v142;
    *v122 = v143;
    *(v122 + 1) = v123;
    v124 = v140;
    *(v122 + 2) = v141;
    *(v122 + 3) = v124;
    v125 = v138;
    *(v122 + 4) = v139;
    *(v122 + 5) = v125;
    v126 = v144;
    *(v122 + 12) = v152;
    *(v122 + 13) = v126;
    v101 = a1;
    v102 = 0;
    v103 = v114;
    return __swift_storeEnumTagSinglePayload(v101, v102, 1, v103);
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_24E1D31F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_friendRequests) = a1;

  return sub_24E1D0CC8(0);
}

uint64_t sub_24E1D3238(void *a1, uint64_t a2)
{
  *(a2 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_bidirectionalFriends) = *a1;

  return sub_24E1D0CC8(0);
}

uint64_t sub_24E1D3280(uint64_t a1, uint64_t a2)
{
  v3 = sub_24E347358();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
  sub_24E347018();
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  v7 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D837D0];
  v11 = 0xD000000000000038;
  v12 = 0x800000024E39FEF0;
  sub_24E346FE8();
  sub_24DF8BFF4(&v11, &qword_27F1E0370);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v13 = v7;
  v11 = v9;
  v12 = v8;

  sub_24E346FD8();
  sub_24DF8BFF4(&v11, &qword_27F1E0370);
  (*(v4 + 104))(v6, *MEMORY[0x277D21DE8], v3);
  sub_24E0EF428();

  return (*(v4 + 8))(v6, v3);
}

id *sub_24E1D34A4()
{

  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_continuePlaying, &qword_27F1E6850);
  OUTLINED_FUNCTION_3_93(OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_achievementHighlight);
  OUTLINED_FUNCTION_3_93(OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_leaderboardHighlight);

  OUTLINED_FUNCTION_3_93(OBJC_IVAR____TtC12GameCenterUI30DashboardRequiredDataPresenter_challengesHighlight);

  return v0;
}

uint64_t sub_24E1D365C()
{
  sub_24E1D34A4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_24E1D36DC()
{
  sub_24E1D3814();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E1D3814()
{
  if (!qword_27F1E7258)
  {
    type metadata accessor for ContinuePlayingData();
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E7258);
    }
  }
}

uint64_t sub_24E1D38D4()
{
  result = type metadata accessor for DashboardRequiredDataPresenter.Data(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DashboardRequiredDataPresenter.DataFetchError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24E1D3A54()
{
  sub_24DF9E030(319, &qword_27F1E7280);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_24E1D3814();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_24DF9E030(319, &qword_27F1E3970);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_24E1D3CD0(319, &qword_27F1E7288, &qword_27F1E7290, 0x277D0C178, MEMORY[0x277D83D88]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_24E155124(319, &qword_27F1E7298, &unk_27F1E3D30);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_24E1D3CD0(319, &qword_27F1DF2E0, &qword_27F1E21A0, off_279667088, MEMORY[0x277D83940]);
        if (v10 > 0x3F)
        {
          return v7;
        }

        sub_24E155124(319, &qword_27F1E72A0, &qword_27F1E26F0);
        if (v11 > 0x3F)
        {
          return v7;
        }

        sub_24E1D3CD0(319, &qword_27F1E72A8, &qword_27F1E3D40, 0x277D0C1C8, MEMORY[0x277D83940]);
        if (v12 > 0x3F)
        {
          return v7;
        }

        v7 = type metadata accessor for AllFriendsDataSource();
        if (v13 > 0x3F)
        {
          return v7;
        }

        v7 = type metadata accessor for FriendRequestsDataSource();
        if (v14 > 0x3F)
        {
          return v7;
        }

        v7 = type metadata accessor for FriendSuggestionsDataSource();
        if (v15 > 0x3F)
        {
          return v7;
        }

        v7 = type metadata accessor for FriendSuggestionInvitationStateManager();
        if (v16 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_24E1D3CD0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_24DF88A8C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24E1D3D40(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 409))
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

uint64_t sub_24E1D3D80(uint64_t result, int a2, int a3)
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
    *(result + 408) = 0;
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
      *(result + 409) = 1;
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

    *(result + 409) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E1D3E40()
{
  result = qword_27F1E72B0;
  if (!qword_27F1E72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E72B0);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24E1D3F18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_24E1D3F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_24E1D4078(*(a2 + 16));
  if (result < v2)
  {
    v5 = a2 + 24 * result;
    v6 = *(v5 + 32);
    sub_24E1D55D4(v6, *(v5 + 40), *(v5 + 48));
    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_24E1D3FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_24E1D4078(*(a2 + 16));
  if (result < v2)
  {
    v5 = a2 + 24 * result;
    v6 = *(v5 + 32);
    sub_24E1D5624(v6, *(v5 + 40), *(v5 + 48));
    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_24E1D4078(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x253040EF0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x253040EF0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E1D4198(uint64_t *a1)
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
  sub_24E1D4214(v6);
  return sub_24E348A58();
}

void sub_24E1D4214(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_24E348B98();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_24E154E04(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_24E1D45C0(v8, v9, a1, v5);
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
    sub_24E1D42F4(0, v3, 1, a1);
  }
}

void sub_24E1D42F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = sub_24E342EE8();
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  if (a3 != a2)
  {
    v10 = *a4;
    v41 = (v8 + 8);
    v44 = v10;
    v11 = v10 + 8 * a3 - 8;
    v12 = a1 - a3;
    while (2)
    {
      v39 = v11;
      v40 = a3;
      v13 = *(v44 + 8 * a3);
      v38 = v12;
      v45 = v12;
      do
      {
        v14 = *v11;
        v15 = v13;
        v53 = v15;
        v16 = v14;
        v48 = v16;
        v17 = [v15 displayNameWithOptions_];
        v18 = sub_24E347CF8();
        v20 = v19;

        v51 = v18;
        v52 = v20;
        v21 = v42;
        sub_24E342E98();
        sub_24DF90C4C();
        v22 = sub_24E348718();
        v46 = v23;
        v47 = v22;
        v24 = *v41;
        v25 = v43;
        (*v41)(v21, v43);

        v26 = [v16 displayNameWithOptions_];
        v27 = sub_24E347CF8();
        v29 = v28;

        v51 = v27;
        v52 = v29;
        sub_24E342E98();
        v30 = sub_24E348718();
        v32 = v31;
        v24(v21, v25);

        v51 = v47;
        v52 = v46;
        v49 = v30;
        v50 = v32;
        v33 = sub_24E348758();

        if (v33 != -1)
        {
          break;
        }

        if (!v44)
        {
          __break(1u);
          return;
        }

        v34 = *v11;
        v13 = *(v11 + 8);
        *v11 = v13;
        *(v11 + 8) = v34;
        v11 -= 8;
      }

      while (!__CFADD__(v45++, 1));
      a3 = v40 + 1;
      v11 = v39 + 8;
      v12 = v38 - 1;
      if (v40 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }
}

void sub_24E1D45C0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v136 = a1;
  v146 = sub_24E342EE8();
  MEMORY[0x28223BE20](v146);
  v145 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_94:
    v155 = *v136;
    if (!v155)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_129:
      v12 = sub_24E081A20(v12);
    }

    v125 = (v12 + 16);
    v126 = *(v12 + 16);
    while (v126 >= 2)
    {
      if (!*v141)
      {
        goto LABEL_132;
      }

      v127 = v12;
      v128 = (v12 + 16 * v126);
      v12 = *v128;
      v129 = &v125[2 * v126];
      v130 = *(v129 + 1);
      sub_24E1D4F20((*v141 + 8 * *v128), (*v141 + 8 * *v129), (*v141 + 8 * v130), v155);
      if (v5)
      {
        break;
      }

      if (v130 < v12)
      {
        goto LABEL_120;
      }

      if (v126 - 2 >= *v125)
      {
        goto LABEL_121;
      }

      *v128 = v12;
      v128[1] = v130;
      v131 = *v125 - v126;
      if (*v125 < v126)
      {
        goto LABEL_122;
      }

      v126 = *v125 - 1;
      sub_24E081A34(v129 + 16, v131, v129);
      *v125 = v126;
      v12 = v127;
    }

LABEL_104:

    return;
  }

  v133 = a4;
  v11 = 0;
  v144 = (v8 + 8);
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11 + 1;
    v137 = v11;
    if (v11 + 1 >= v10)
    {
      goto LABEL_24;
    }

    v134 = v12;
    v135 = v5;
    v14 = v11;
    v15 = *(*v141 + 8 * v13);
    v16 = (*v141 + 8 * v14);
    v139 = 8 * v14;
    v17 = *v16;
    v12 = (v16 + 2);
    v18 = v15;
    v19 = v17;
    LODWORD(v143) = sub_24E0E8EBC(v18, v19);

    v20 = (v14 + 2);
    v140 = v10;
    while (1)
    {
      v21 = v20;
      v22 = v13 + 1;
      if (v22 >= v10)
      {
        break;
      }

      v24 = *(v12 - 8);
      v23 = *v12;
      v155 = v21;
      v25 = v23;
      v150 = v25;
      v26 = v24;
      v149 = v26;
      v27 = [v25 displayNameWithOptions_];
      v28 = sub_24E347CF8();
      v30 = v29;

      v153 = v28;
      v154 = v30;
      v31 = v145;
      sub_24E342E98();
      sub_24DF90C4C();
      v32 = sub_24E348718();
      v147 = v33;
      v148 = v32;
      v142 = v22;
      v34 = *v144;
      v5 = v146;
      (*v144)(v31, v146);

      v35 = [v26 displayNameWithOptions_];
      v36 = sub_24E347CF8();
      v38 = v37;

      v153 = v36;
      v154 = v38;
      sub_24E342E98();
      v39 = sub_24E348718();
      v41 = v40;
      v34(v31, v5);

      v153 = v148;
      v154 = v147;
      v151 = v39;
      v152 = v41;
      v42 = sub_24E348758();

      v13 = v142;

      v10 = v140;

      v21 = v155;
      v12 += 8;
      v20 = v155 + 1;
      if (((v143 ^ (v42 != -1)) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v13 = v10;
LABEL_9:
    if ((v143 & 1) == 0)
    {
      v12 = v134;
      v5 = v135;
LABEL_22:
      v11 = v137;
      goto LABEL_24;
    }

    v11 = v137;
    if (v13 < v137)
    {
      goto LABEL_126;
    }

    if (v137 < v13)
    {
      if (v10 >= v21)
      {
        v43 = v21;
      }

      else
      {
        v43 = v10;
      }

      v44 = 8 * v43 - 8;
      v45 = v137;
      v46 = v13;
      v12 = v134;
      v5 = v135;
      v47 = v139;
      do
      {
        if (v45 != --v46)
        {
          v48 = *v141;
          if (!*v141)
          {
            goto LABEL_133;
          }

          v49 = *(v48 + v47);
          *(v48 + v47) = *(v48 + v44);
          *(v48 + v44) = v49;
        }

        ++v45;
        v44 -= 8;
        v47 += 8;
      }

      while (v45 < v46);
      goto LABEL_22;
    }

    v12 = v134;
    v5 = v135;
LABEL_24:
    v50 = v141[1];
    if (v13 >= v50)
    {
      goto LABEL_42;
    }

    v99 = __OFSUB__(v13, v11);
    v51 = v13 - v11;
    if (v99)
    {
      goto LABEL_125;
    }

    if (v51 >= v133)
    {
LABEL_41:
      v11 = v137;
      goto LABEL_42;
    }

    if (__OFADD__(v137, v133))
    {
      goto LABEL_127;
    }

    if (v137 + v133 >= v50)
    {
      v52 = v141[1];
    }

    else
    {
      v52 = v137 + v133;
    }

    if (v52 < v137)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v11 = v137;
    if (v13 != v52)
    {
      break;
    }

LABEL_42:
    if (v13 < v11)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E076FA4(0, *(v12 + 16) + 1, 1, v12);
      v12 = v123;
    }

    v81 = *(v12 + 16);
    v80 = *(v12 + 24);
    v82 = v81 + 1;
    v83 = v137;
    if (v81 >= v80 >> 1)
    {
      sub_24E076FA4(v80 > 1, v81 + 1, 1, v12);
      v83 = v137;
      v12 = v124;
    }

    *(v12 + 16) = v82;
    v84 = v12 + 32;
    v85 = (v12 + 32 + 16 * v81);
    *v85 = v83;
    v85[1] = v13;
    v155 = *v136;
    if (!v155)
    {
      goto LABEL_134;
    }

    v142 = v13;
    if (v81)
    {
      while (1)
      {
        v86 = v82 - 1;
        v87 = (v84 + 16 * (v82 - 1));
        v88 = (v12 + 16 * v82);
        if (v82 >= 4)
        {
          break;
        }

        if (v82 == 3)
        {
          v89 = *(v12 + 32);
          v90 = *(v12 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_62:
          if (v92)
          {
            goto LABEL_111;
          }

          v104 = *v88;
          v103 = v88[1];
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_114;
          }

          v108 = v87[1];
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_119;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v82 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v82 < 2)
        {
          goto LABEL_113;
        }

        v111 = *v88;
        v110 = v88[1];
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_77:
        if (v107)
        {
          goto LABEL_116;
        }

        v113 = *v87;
        v112 = v87[1];
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_118;
        }

        if (v114 < v106)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v86 - 1 >= v82)
        {
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
          goto LABEL_128;
        }

        if (!*v141)
        {
          goto LABEL_131;
        }

        v118 = v12;
        v119 = (v84 + 16 * (v86 - 1));
        v120 = *v119;
        v121 = v84 + 16 * v86;
        v12 = *(v121 + 8);
        sub_24E1D4F20((*v141 + 8 * *v119), (*v141 + 8 * *v121), (*v141 + 8 * v12), v155);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v12 < v120)
        {
          goto LABEL_106;
        }

        v122 = *(v118 + 16);
        if (v86 > v122)
        {
          goto LABEL_107;
        }

        *v119 = v120;
        v119[1] = v12;
        if (v86 >= v122)
        {
          goto LABEL_108;
        }

        v82 = v122 - 1;
        sub_24E081A34((v121 + 16), v122 - 1 - v86, (v84 + 16 * v86));
        v12 = v118;
        *(v118 + 16) = v122 - 1;
        if (v122 <= 2)
        {
          goto LABEL_91;
        }
      }

      v93 = v84 + 16 * v82;
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_109;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_110;
      }

      v100 = v88[1];
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_112;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_115;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = v87[1];
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_123;
        }

        if (v91 < v117)
        {
          v86 = v82 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v11 = v142;
    v10 = v141[1];
    if (v142 >= v10)
    {
      goto LABEL_94;
    }
  }

  v134 = v12;
  v135 = v5;
  v143 = *v141;
  v53 = v143 + 8 * v13 - 8;
  v54 = v137 - v13;
  v138 = v52;
LABEL_34:
  v142 = v13;
  v55 = *(v143 + 8 * v13);
  v139 = v54;
  v140 = v53;
  v56 = v54;
  while (1)
  {
    v147 = v56;
    v57 = *v53;
    v58 = v55;
    v155 = v58;
    v59 = v57;
    v150 = v59;
    v60 = [v58 displayNameWithOptions_];
    v61 = sub_24E347CF8();
    v63 = v62;

    v153 = v61;
    v154 = v63;
    v64 = v145;
    sub_24E342E98();
    sub_24DF90C4C();
    v65 = sub_24E348718();
    v148 = v66;
    v149 = v65;
    v67 = *v144;
    v68 = v146;
    (*v144)(v64, v146);

    v69 = [v59 displayNameWithOptions_];
    v70 = sub_24E347CF8();
    v72 = v71;

    v153 = v70;
    v154 = v72;
    sub_24E342E98();
    v73 = sub_24E348718();
    v75 = v74;
    v67(v64, v68);

    v153 = v149;
    v154 = v148;
    v151 = v73;
    v152 = v75;
    v76 = sub_24E348758();

    if (v76 != -1)
    {
LABEL_39:
      v13 = v142 + 1;
      v53 = v140 + 8;
      v54 = v139 - 1;
      if (v142 + 1 == v138)
      {
        v13 = v138;
        v12 = v134;
        v5 = v135;
        goto LABEL_41;
      }

      goto LABEL_34;
    }

    v77 = v147;
    if (!v143)
    {
      break;
    }

    v78 = *v53;
    v55 = *(v53 + 8);
    *v53 = v55;
    *(v53 + 8) = v78;
    v53 -= 8;
    v79 = __CFADD__(v77, 1);
    v56 = v77 + 1;
    if (v79)
    {
      goto LABEL_39;
    }
  }

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
}

uint64_t sub_24E1D4F20(char *a1, id *a2, id *a3, char *a4)
{
  v71 = sub_24E342EE8();
  MEMORY[0x28223BE20](v71);
  v69 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a2 - a1) / 8;
  v70 = (v10 + 8);
  v11 = a3 - a2;
  if (v9 < v11)
  {
    sub_24E130EB0(a1, (a2 - a1) / 8, a4);
    v12 = &a4[8 * v9];
    v73 = v12;
    v74 = a3;
    v13 = v69;
    while (1)
    {
      if (a4 >= v12 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_27;
      }

      v75 = a1;
      v15 = *a4;
      v16 = *a2;
      v72 = v16;
      v17 = v15;
      v68 = v17;
      v18 = [v16 displayNameWithOptions_];
      v19 = sub_24E347CF8();
      v81 = a2;
      v21 = v20;

      v79 = v19;
      v80 = v21;
      sub_24E342E98();
      sub_24DF90C4C();
      v22 = sub_24E348718();
      v66 = v23;
      v67 = v22;
      v24 = v71;
      v25 = *v70;
      (*v70)(v13, v71);

      v26 = [v17 displayNameWithOptions_];
      v27 = sub_24E347CF8();
      v76 = a4;
      v29 = v28;

      v79 = v27;
      v80 = v29;
      sub_24E342E98();
      v30 = sub_24E348718();
      v32 = v31;
      v25(v13, v24);

      v79 = v67;
      v80 = v66;
      v77 = v30;
      v78 = v32;
      v33 = sub_24E348758();

      if (v33 != -1)
      {
        break;
      }

      v35 = v81;
      a2 = v81 + 1;
      v34 = v75;
      a4 = v76;
      if (v75 != v81)
      {
        goto LABEL_9;
      }

LABEL_10:
      a1 = v34 + 8;
      v12 = v73;
      a3 = v74;
    }

    v34 = v75;
    v35 = v76;
    a4 = v76 + 8;
    a2 = v81;
    if (v75 == v76)
    {
      goto LABEL_10;
    }

LABEL_9:
    *v34 = *v35;
    goto LABEL_10;
  }

  sub_24E130EB0(a2, a3 - a2, a4);
  v12 = &a4[8 * v11];
  v75 = a1;
  v76 = a4;
  v36 = v69;
LABEL_14:
  v37 = a2 - 1;
  v38 = a3 - 1;
  v81 = a2;
  for (i = a2 - 1; v12 > a4 && a2 > a1; v37 = i)
  {
    v73 = v12;
    v74 = v38;
    v40 = *(v12 - 1);
    v12 -= 8;
    v41 = *v37;
    v42 = v40;
    v68 = v42;
    v72 = v41;
    v43 = [v42 displayNameWithOptions_];
    v44 = sub_24E347CF8();
    v46 = v45;

    v79 = v44;
    v80 = v46;
    sub_24E342E98();
    sub_24DF90C4C();
    v47 = sub_24E348718();
    v66 = v48;
    v67 = v47;
    v49 = v71;
    v50 = *v70;
    (*v70)(v36, v71);

    v51 = [v72 displayNameWithOptions_];
    v52 = sub_24E347CF8();
    v54 = v53;

    v79 = v52;
    v80 = v54;
    sub_24E342E98();
    v55 = sub_24E348718();
    v57 = v56;
    v50(v36, v49);

    v79 = v67;
    v80 = v66;
    v77 = v55;
    v78 = v57;
    v58 = sub_24E348758();

    if (v58 == -1)
    {
      a3 = v74;
      a1 = v75;
      v60 = i;
      a2 = i;
      a4 = v76;
      v12 = v73;
      if (v74 + 1 != v81)
      {
        *v74 = *i;
        a2 = v60;
      }

      goto LABEL_14;
    }

    v59 = v74;
    a2 = v81;
    if (v73 != (v74 + 1))
    {
      *v74 = *v12;
    }

    v38 = v59 - 1;
    a1 = v75;
    a4 = v76;
  }

LABEL_27:
  v61 = (v12 - a4) / 8;
  if (a2 != a4 || a2 >= &a4[8 * v61])
  {
    memmove(a2, a4, 8 * v61);
  }

  return 1;
}

void sub_24E1D54CC(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_24E1D54E0(a1, a2, a3);
  }
}

void sub_24E1D54E0(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
      goto LABEL_3;
    case 2:
    case 3:

      a1 = a2;
LABEL_3:

      break;
    case 4:

      break;
    default:
      return;
  }
}

void sub_24E1D55A8(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_24E1D55BC(a1, a2, a3);
  }
}

void sub_24E1D55BC(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 3 <= 1)
  {
  }
}

id sub_24E1D55D4(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 3 <= 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_24E1D5600(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24E1D5618(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24E1D5618(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return MEMORY[0x2821F96F8]();
  }

  return result;
}

id sub_24E1D5624(uint64_t a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return a2;
  }

  return result;
}

uint64_t sub_24E1D5708(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_21_21();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_41Tm_0()
{

  OUTLINED_FUNCTION_5_30();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24E1D57A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E06920C;

  return sub_24E1CD034(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_24E1D587C()
{
  result = qword_27F1E72C0;
  if (!qword_27F1E72C0)
  {
    sub_24DF88A8C(255, &qword_27F1DEFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E72C0);
  }

  return result;
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  return sub_24DFB4104(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_105(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1(a1 + 32);
}

{
  return __swift_destroy_boxed_opaque_existential_1(a1 + 32);
}

uint64_t sub_24E1D5910(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_21_21();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_20(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_24E1D5A0C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a2)
  {

    sub_24E0EAB44(a3, a4, a5, a6);
  }
}

void OUTLINED_FUNCTION_3_93(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  v14 = *(v3 + 96);
  v15 = *(v3 + 104);
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);

  sub_24E1D5A0C(v4, v5, v6, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, v15);
}

uint64_t OUTLINED_FUNCTION_4_77(uint64_t result)
{
  *(v1 + 328) = result;
  *(v1 + 272) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_8_58(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5)
{

  _os_signpost_emit_with_name_impl(a1, v5, v6, a4, a5, v7, v8, 2u);
}

uint64_t OUTLINED_FUNCTION_12_32()
{
}

void OUTLINED_FUNCTION_19_26(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4)
{
  v10 = *(v8 - 96);

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, v10, v4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_22_22()
{

  return sub_24E343F38();
}

void OUTLINED_FUNCTION_26_20(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a2;
  a1[3] = a2;
  a1[4] = a2;
  a1[5] = a2;
  a1[6] = a2;
}

void OUTLINED_FUNCTION_34_11()
{
}

uint64_t OUTLINED_FUNCTION_36_10(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_24E343EF8();
}

uint64_t sub_24E1D5D24(uint64_t a1)
{
  switch(a1)
  {
    case 1:
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_24E36A270;
      OUTLINED_FUNCTION_1_109();
      v3 = sub_24E347CB8();
      v4 = GKGameCenterUIFrameworkBundle();
      v5 = OUTLINED_FUNCTION_1_12();

      sub_24E347CF8();
      OUTLINED_FUNCTION_4_78();
      *(v2 + 32) = v3;
      *(v2 + 40) = v1;
      v6 = OUTLINED_FUNCTION_3_94();
      v7 = GKGameCenterUIFrameworkBundle();
      v8 = OUTLINED_FUNCTION_1_12();

      sub_24E347CF8();
      OUTLINED_FUNCTION_4_78();
      *(v2 + 48) = v6;
      *(v2 + 56) = v1;
      break;
    case 2:
    case 3:
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_24E367D20;
      OUTLINED_FUNCTION_1_109();
      v9 = sub_24E347CB8();
      v10 = GKGameCenterUIFrameworkBundle();
      v11 = OUTLINED_FUNCTION_1_12();

      sub_24E347CF8();
      OUTLINED_FUNCTION_4_78();
      *(v2 + 32) = v9;
      *(v2 + 40) = v1;
      break;
    default:
      v2 = MEMORY[0x277D84F90];
      break;
  }

  return v2;
}

uint64_t sub_24E1D603C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7565161 && a2 == 0xE300000000000000;
  if (v3 || (OUTLINED_FUNCTION_2_91() & 1) != 0)
  {

    return 1;
  }

  else
  {
    v6 = a1 == 1936683640 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_2_91() & 1) != 0)
    {

      return 5;
    }

    else
    {
      v7 = a1 == 0x6F7674656C707061 && a2 == 0xE900000000000073;
      if (v7 || (OUTLINED_FUNCTION_2_91() & 1) != 0)
      {

        return 3;
      }

      else
      {
        v8 = a1 == 0x736F63616DLL && a2 == 0xE500000000000000;
        if (v8 || (OUTLINED_FUNCTION_2_91() & 1) != 0)
        {

          return 2;
        }

        else if (a1 == 0x736F6863746177 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_2_91();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

uint64_t sub_24E1D61A4()
{
  v1 = [v0 internal];
  v2 = [v1 compatiblePlatforms];

  v3 = sub_24E348138();
  return v3;
}

uint64_t OUTLINED_FUNCTION_2_91()
{

  return sub_24E348C08();
}

uint64_t OUTLINED_FUNCTION_3_94()
{

  return sub_24E347CB8();
}

void OUTLINED_FUNCTION_4_78()
{
}

uint64_t sub_24E1D6280(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v2 = sub_24E347AD8();
  v3 = [objc_opt_self() proxyForPlayer_];
  v4 = [v3 profileServicePrivate];

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v9[4] = sub_24E1D6FFC;
  v9[5] = v6;
  OUTLINED_FUNCTION_1_35();
  v9[1] = 1107296256;
  v9[2] = sub_24E1D6BF8;
  v9[3] = &block_descriptor_10_3;
  v7 = _Block_copy(v9);

  [v4 getTermsAndConditionsURLWithHandler_];
  _Block_release(v7);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_24E1D63DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24E346EE8();
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24E346F08();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  v15 = sub_24E348368();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a4;
  v16[5] = a5;
  aBlock[4] = sub_24E1D7004;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E00B24C;
  aBlock[3] = &block_descriptor_16_1;
  v17 = _Block_copy(aBlock);

  sub_24E346EF8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24DFC151C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
  sub_24DFCD5F4();
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v14, v11, v17);
  _Block_release(v17);

  (*(v20 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v19);
}

uint64_t sub_24E1D6698(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v6 = sub_24E347218();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_24E343288();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v19 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    goto LABEL_6;
  }

  sub_24E343268();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_24DF90BE4(v11);
LABEL_6:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v21 = v28;

      sub_24E1D6C8C(sub_24E1D7010, v21);
    }

    return result;
  }

  (*(v13 + 32))(v18, v11, v12);
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), , Strong))
  {
    sub_24DF88A8C(0, &qword_27F1E0F78);
    (*(v13 + 16))(v15, v18, v12);
    v23 = sub_24E0279E4(v15);
    [v23 setModalPresentationStyle_];
    aBlock[4] = sub_24E1D7018;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_19_1;
    v24 = _Block_copy(aBlock);

    [Strong presentViewController:v23 animated:1 completion:v24];
    _Block_release(v24);
  }

  else
  {
    v25 = v27;
    (*(v27 + 104))(v8, *MEMORY[0x277D21CA8], v6);
    sub_24E347AC8();
    (*(v25 + 8))(v8, v6);
  }

  return (*(v13 + 8))(v18, v12);
}

void sub_24E1D6AB4()
{
  sub_24E1D7020();
  v0 = swift_allocError();
  sub_24E347AB8();
}

uint64_t sub_24E1D6B0C()
{
  v0 = sub_24E347218();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D21CA8], v0, v2);
  sub_24E347AC8();
  return (*(v1 + 8))(v4, v0);
}

void sub_24E1D6BF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_24E347CF8();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, a3);
}

void sub_24E1D6C8C(void *a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24DF88A8C(0, &qword_27F1DFB28);
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

    v18 = sub_24E3191B4(v9, v11, v15, v17, 1);
    sub_24DF88A8C(0, &qword_27F1E2900);
    v19 = sub_24E347CB8();
    v20 = GKGameCenterUIFrameworkBundle();
    v21 = GKGetLocalizedStringFromTableInBundle();

    v22 = sub_24E347CF8();
    v24 = v23;

    v25 = sub_24E3190AC(v22, v24, 0, 0, 0);
    [v18 addAction_];
    if (a1)
    {
      v26[4] = a1;
      v26[5] = a2;
      OUTLINED_FUNCTION_1_35();
      v26[1] = 1107296256;
      v26[2] = sub_24E00B24C;
      v26[3] = &block_descriptor_69;
      a1 = _Block_copy(v26);
    }

    [v5 presentViewController:v18 animated:1 completion:a1];
    _Block_release(a1);
  }

  else if (a1)
  {
    (a1)();
  }
}

unint64_t sub_24E1D6F68()
{
  result = qword_27F1E72E0;
  if (!qword_27F1E72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E72E0);
  }

  return result;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E1D7020()
{
  result = qword_27F1E72E8;
  if (!qword_27F1E72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E72E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TermsAndConditionsActionImplementation.TermsAndConditionsActionImplementationError(_BYTE *result, int a2, int a3)
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