void sub_24DFFA030()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong setHidden_];
  }

  else
  {
    __break(1u);
  }
}

void sub_24DFFA0A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_24DFD8654(a1);
    swift_unknownObjectRetain();
    v5 = 0;
    do
    {
      if (v4 == v5)
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25303F560](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v8 = [a2 playerIsSelectable_];

      ++v5;
    }

    while (!v8);

    swift_unknownObjectRelease();
  }
}

id _s12GameCenterUI17GKPlayerGroupViewC5frameACSo6CGRectV_tcfC_0()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

id GKPickerGroupCell.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_longPressRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_playerGroupView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_players) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_4_22();
  v5 = type metadata accessor for GKPickerGroupCell();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id GKPickerGroupCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GKPickerGroupCell.init(coder:)(void *a1)
{
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  *&v1[OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_longPressRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_playerGroupView] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_players] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_4_22();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GKPickerGroupCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24DFFA478(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_24E348BE8();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

unint64_t sub_24DFFA5BC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_24DFFA5DC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_24DFFA600(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();
  [a3 setText_];
}

uint64_t sub_24DFFA658(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347CF8();

  return v3;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_4_22()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_5_22()
{

  return GKGetLocalizedStringFromTableInBundle();
}

uint64_t ActivityFeedLockupActionHandlers.init(profileHandler:leaderboardsHandler:achievementsHandler:appHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t ActivityFeedLockupActionHandlers.init(profile:leaderboards:achievements:app:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, uint64_t (*a4)()@<X3>, uint64_t (*a5)()@<X4>, uint64_t (*a6)()@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  result = swift_allocObject();
  *(result + 16) = a7;
  *(result + 24) = a8;
  *a9 = sub_24DFFAAF8;
  a9[1] = v18;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = sub_24DFFA96C;
  a9[7] = result;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24DFFAA58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24DFFAA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DFFAAFC(uint64_t a1)
{
  v3 = type metadata accessor for AccessPointView();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_24DFFCE70(a1, v5);
  v7 = sub_24E345D58();
  sub_24DFFCED4(a1);
  return v7;
}

void *sub_24DFFABE0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AccessPointView();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24DFFCE70(a2, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24E345D38();
  v6 = v5;
  sub_24DFFCED4(a2);
  if (v5)
  {
  }

  return v5;
}

id sub_24DFFAD08()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [objc_opt_self() shared];
  sub_24E08A5C4();
  v3 = v2;

  v4 = [v0 supportedInterfaceOrientationsForWindow_];
  return v4;
}

id sub_24DFFADA4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AccessPointRootViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_24DFFAEF0()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for AccessPointWindow.LayoutView();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_24DFFAF78(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7.receiver = v3;
  v7.super_class = a3(a2);
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_24DFFB03C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_24DFFB074()
{
  v35 = objc_opt_self();
  v0 = [v35 sharedApplication];
  v1 = [v0 connectedScenes];

  sub_24DF88A8C(0, &unk_280BDFA70);
  sub_24DFFCE00();
  v2 = sub_24E348138();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24E348838();
    sub_24E348168();
    v4 = v37;
    v3 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
  }

  else
  {
    v3 = v2 + 56;
    v5 = ~(-1 << *(v2 + 32));
    OUTLINED_FUNCTION_4_23();
    v7 = v8 & v9;

    v6 = 0;
    v4 = v2;
  }

  v10 = (v5 + 64) >> 6;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (sub_24E3488A8() && (swift_dynamicCast(), v11 = v36, v12 = v6, v13 = v7, v36))
  {
    while (1)
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        break;
      }

      v6 = v12;
      v7 = v13;
      if (v4 < 0)
      {
        goto LABEL_5;
      }

LABEL_8:
      v14 = v6;
      v15 = v7;
      v12 = v6;
      if (!v7)
      {
        while (1)
        {
          v12 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v12 >= v10)
          {
            goto LABEL_16;
          }

          v15 = *(v3 + 8 * v12);
          ++v14;
          if (v15)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return;
      }

LABEL_12:
      v13 = (v15 - 1) & v15;
      v11 = *(*(v4 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    v17 = v16;
    OUTLINED_FUNCTION_5_23();
    v18 = [v17 windows];
    sub_24DF88A8C(0, &qword_280BDFA58);
    v19 = sub_24E347F08();

    v20 = sub_24DFD2A5C(v19);
    for (i = 0; v20 != i; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x25303F560](i, v19);
      }

      else
      {
        if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v22 = *(v19 + 8 * i + 32);
      }

      v23 = v22;
      if (__OFADD__(i, 1))
      {
        goto LABEL_40;
      }

      if (([v22 isHidden] & 1) == 0)
      {
        v24 = [v23 rootViewController];
        if (v24)
        {
          v34 = v24;

          return;
        }
      }
    }

    v25 = [v35 sharedApplication];
    v26 = [v25 windows];

    v27 = sub_24E347F08();
    v28 = sub_24DFD2A5C(v27);
    for (j = 0; ; ++j)
    {
      if (v28 == j)
      {

        return;
      }

      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x25303F560](j, v27);
      }

      else
      {
        if (j >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v30 = *(v27 + 8 * j + 32);
      }

      v31 = v30;
      if (__OFADD__(j, 1))
      {
        goto LABEL_42;
      }

      v32 = [v30 rootViewController];
      if (v32)
      {
        break;
      }
    }

    v33 = v32;
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_5_23();
  }
}

void sub_24DFFB4A0(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E04F0);
  v134 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v133 = &v120 - v6;
  v7 = OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_parent;
  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_parent] = 0;
  v8 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_observations] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_sinks] = v8;
  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_rootView] = 0;
  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_hostingView] = 0;
  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_leadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_trailingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_topConstraint] = 0;
  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_bottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_verticalOffset] = 0x4028000000000000;
  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_horizontalOffset] = 0x4028000000000000;
  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_accessPoint] = a1;
  *&v2[v7] = a2;
  v9 = objc_allocWithZone(type metadata accessor for AccessPointWindow.LayoutView());
  v10 = a2;
  v132 = a1;
  v11 = [v9 initWithFrame_];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor_];

  *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_layoutView] = v13;
  v15 = &selRef_local;
  v135 = v5;
  v136 = a2;
  v137 = v10;
  if (!a2)
  {
    v24 = v13;
LABEL_6:
    v22 = &qword_27F1E0000;
    v23 = &qword_27F1E0000;
    v25 = [objc_opt_self() v15[35]];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v34 = type metadata accessor for AccessPointWindow();
    v141.receiver = v2;
    v141.super_class = v34;
    v21 = objc_msgSendSuper2(&v141, sel_initWithFrame_, v27, v29, v31, v33);
    goto LABEL_7;
  }

  v16 = v10;
  v17 = v13;
  v18 = [v16 windowScene];
  if (!v18)
  {

    v15 = &selRef_local;
    goto LABEL_6;
  }

  v19 = v18;
  v20 = type metadata accessor for AccessPointWindow();
  v138.receiver = v2;
  v138.super_class = v20;
  v21 = objc_msgSendSuper2(&v138, sel_initWithWindowScene_, v19);

  v22 = &qword_27F1E0000;
  v23 = &qword_27F1E0000;
LABEL_7:
  type metadata accessor for AccessPointRootViewController();
  v35 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v36 = v21;
  v37 = [v35 init];
  v38 = v36;
  v39 = v37;
  [v38 setRootViewController_];
  [v38 setOpaque_];
  v40 = [v12 clearColor];
  [v38 setBackgroundColor_];

  [v38 setUserInteractionEnabled_];
  [v38 setHidden_];
  v41 = [v39 view];
  v131 = v39;

  v42 = OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_rootView;
  v43 = *&v38[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_rootView];
  *&v38[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_rootView] = v41;

  v44 = *&v38[v42];
  v45 = &qword_27F1E0000;
  if (v44)
  {
    [v44 addSubview_];
  }

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v46 = [v13 leadingAnchor];
  v47 = [v38 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:12.0];

  v49 = v23[152];
  v50 = *&v38[v49];
  *&v38[v49] = v48;

  v51 = [v13 trailingAnchor];
  v52 = [v38 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-12.0];

  v54 = v22[153];
  v55 = *&v38[v54];
  *&v38[v54] = v53;

  v56 = *&v38[v49];
  v57 = v137;
  if (!v56)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v56 setActive_];
  v58 = *&v38[v54];
  if (!v58)
  {
LABEL_47:
    __break(1u);
    return;
  }

  [v58 setActive_];
  v59 = [v13 topAnchor];
  v60 = [v38 safeAreaLayoutGuide];
  v61 = [v60 topAnchor];

  v62 = [v59 constraintEqualToAnchor:v61 constant:12.0];
  v63 = *&v38[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_topConstraint];
  *&v38[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_topConstraint] = v62;

  v64 = [v13 bottomAnchor];
  v65 = [v38 safeAreaLayoutGuide];

  v66 = [v65 bottomAnchor];
  v67 = [v64 constraintEqualToAnchor:v66 constant:-12.0];

  v68 = *&v38[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_bottomConstraint];
  *&v38[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_bottomConstraint] = v67;

  v69 = [v38 &selRef_startLoadingIndicator];
  v130 = v13;
  if (v69)
  {
    goto LABEL_40;
  }

  if (v136)
  {
    v70 = [v57 &selRef_startLoadingIndicator];
    if (v70)
    {
      v71 = v70;
      [v38 setWindowScene_];

      goto LABEL_41;
    }
  }

  v72 = objc_opt_self();
  v73 = [v72 sharedApplication];
  v74 = [v73 _appAdoptsUISceneLifecycle];

  if ((v74 & 1) == 0)
  {
    v69 = [objc_opt_self() mainScreen];
    [v38 setScreen_];
    goto LABEL_40;
  }

  v75 = [v72 sharedApplication];
  v76 = [v75 connectedScenes];

  v77 = sub_24DF88A8C(0, &unk_280BDFA70);
  sub_24DFFCE00();
  v78 = sub_24E348138();

  v121 = v72;
  v123 = v78;
  v124 = v77;
  if ((v78 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24E348838();
    sub_24E348168();
    v80 = v142;
    v79 = v143;
    v81 = v144;
    v82 = v145;
    v83 = v146;
  }

  else
  {
    v79 = v78 + 56;
    v81 = ~(-1 << *(v78 + 32));
    OUTLINED_FUNCTION_4_23();
    v83 = v84 & v85;

    v82 = 0;
    v80 = v78;
  }

  v122 = v81;
  v86 = (v81 + 64) >> 6;
  v125 = *MEMORY[0x277D772C8];
  v128 = v86;
  if (v80 < 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  v87 = v82;
  v88 = v83;
  v89 = v82;
  if (!v83)
  {
    while (1)
    {
      v89 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v89 >= v86)
      {
        goto LABEL_37;
      }

      v88 = *(v79 + 8 * v89);
      ++v87;
      if (v88)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_25:
  v90 = (v88 - 1) & v88;
  v91 = *(*(v80 + 48) + ((v89 << 9) | (8 * __clz(__rbit64(v88)))));
  if (!v91)
  {
LABEL_37:
    v45 = &qword_27F1E0000;
LABEL_38:
    sub_24DFFCE68();

    v104 = [v121 sharedApplication];
    v105 = [v104 keyWindow];

    v69 = [v105 windowScene];
    v57 = v137;
    goto LABEL_39;
  }

  while (1)
  {
    v129 = v90;
    v126 = v82;
    v127 = v83;
    objc_opt_self();
    v93 = swift_dynamicCastObjCClass();
    if (!v93)
    {
      goto LABEL_35;
    }

    v69 = v93;
    v94 = v80;
    v95 = v79;
    v96 = [v91 session];
    v97 = [v96 role];

    v98 = sub_24E347CF8();
    v100 = v99;
    if (v98 == sub_24E347CF8() && v100 == v101)
    {
      break;
    }

    v103 = sub_24E348C08();

    v79 = v95;
    v80 = v94;
    if (v103)
    {
      goto LABEL_44;
    }

LABEL_35:

    v82 = v89;
    v83 = v129;
    v45 = &qword_27F1E0000;
    v86 = v128;
    if ((v80 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_27:
    v92 = sub_24E3488A8();
    if (!v92)
    {
      goto LABEL_38;
    }

    v139 = v92;
    swift_dynamicCast();
    v91 = v140;
    v89 = v82;
    v90 = v83;
    if (!v140)
    {
      goto LABEL_37;
    }
  }

LABEL_44:
  sub_24DFFCE68();

  v57 = v137;
  v45 = &qword_27F1E0000;
LABEL_39:
  [v38 setWindowScene_];
LABEL_40:

  if (v136)
  {
LABEL_41:
    v140 = v57;
    swift_getKeyPath();
    OUTLINED_FUNCTION_21_2();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v106 = v57;
    sub_24E3431E8();

    v107 = v45[143];
    v108 = OUTLINED_FUNCTION_0_45();
    MEMORY[0x25303EA30](v108);
    sub_24E12448C(*((*&v38[v107] & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_24E347F88();
    swift_endAccess();
  }

  v109 = objc_opt_self();
  v110 = [v109 shared];
  v140 = v110;
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_2();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v111 = v38;
  sub_24E3431E8();

  v112 = v45[143];
  v113 = OUTLINED_FUNCTION_0_45();
  MEMORY[0x25303EA30](v113);
  sub_24E12448C(*((*&v111[v112] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_24E347F88();
  swift_endAccess();
  v114 = [v109 shared];
  v115 = sub_24E08A608();

  OUTLINED_FUNCTION_0_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E04F8);
  v116 = v133;
  sub_24E344E38();
  swift_endAccess();

  OUTLINED_FUNCTION_21_2();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24DFFCF60();
  v117 = v135;
  sub_24E344F38();

  (*(v134 + 8))(v116, v117);
  v118 = OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_sinks;
  v119 = OUTLINED_FUNCTION_0_45();
  MEMORY[0x25303EA30](v119);
  sub_24E12448C(*((*&v111[v118] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_24E347F88();
  swift_endAccess();
}

void sub_24DFFC2F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24DFFC8F0();
  }
}

void sub_24DFFC34C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24DFFC8F0();
  }
}

uint64_t AccessPointWindow.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_observations;
  swift_beginAccess();
  v3 = *&v0[v2];
  result = sub_24DFD2A5C(v3);
  if (!result)
  {
LABEL_9:
    *&v1[v2] = MEMORY[0x277D84F90];

    v9.receiver = v1;
    v9.super_class = type metadata accessor for AccessPointWindow();
    return objc_msgSendSuper2(&v9, sel_dealloc);
  }

  v5 = result;
  if (result >= 1)
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25303F560](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      sub_24E343198();
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_24DFFC59C()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_parent) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_observations) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_sinks) = v1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_rootView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_hostingView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_leadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_trailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_topConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_bottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_verticalOffset) = 0x4028000000000000;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_horizontalOffset) = 0x4028000000000000;
  sub_24E348AE8();
  __break(1u);
}

void sub_24DFFC6A0(void *a1)
{
  v2 = v1;
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = [v6 clearColor];
    [v5 setBackgroundColor_];

    v16 = [v2 window];
    v8 = [v2 rootViewController];
    [v8 addChildViewController_];

    v9 = *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_hostingView];
    *&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_hostingView] = v5;
    v10 = v5;

    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = [v6 clearColor];
    [v10 setBackgroundColor_];

    v12 = OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_layoutView;
    [*&v2[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_layoutView] addSubview_];
    v13 = *&v2[v12];
    sub_24E225DAC(v10, 0.0, 0.0);

    v14 = *&v2[v12];
    sub_24E225F0C(v10, 0.0, 1.0);
    sub_24E2260E8(v10, 0.0, 1.0);

    v15 = [v2 rootViewController];
    [a1 didMoveToParentViewController_];

    sub_24DFFC8F0();
  }

  else
  {
    sub_24E348AE8();
    __break(1u);
  }
}

id sub_24DFFC8F0()
{
  switch([*(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_accessPoint) location])
  {
    case 0uLL:
      v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_topConstraint);
      if (!v1)
      {
        goto LABEL_19;
      }

      [v1 setActive_];
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_bottomConstraint);
      if (v2)
      {
        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_5;
    case 1uLL:
      v6 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_topConstraint);
      if (!v6)
      {
        goto LABEL_20;
      }

      [v6 &selRef_scrollToTopButton];
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_bottomConstraint);
      if (!v2)
      {
        goto LABEL_22;
      }

LABEL_13:
      v5 = 0;
      goto LABEL_14;
    case 2uLL:
LABEL_5:
      v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_topConstraint);
      if (!v3)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        type metadata accessor for Location(0);
        result = sub_24E348C58();
        __break(1u);
        return result;
      }

      [v3 setActive_];
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_bottomConstraint);
      if (v2)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_8:
      v4 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_topConstraint);
      if (!v4)
      {
        goto LABEL_18;
      }

      [v4 setActive_];
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_bottomConstraint);
      if (!v2)
      {
        goto LABEL_21;
      }

LABEL_10:
      v5 = 1;
LABEL_14:

      return [v2 setActive_];
    case 3uLL:
      goto LABEL_8;
    default:
      goto LABEL_23;
  }
}

char *sub_24DFFCA74(uint64_t a1, double a2, double a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for AccessPointWindow();
  result = objc_msgSendSuper2(&v8, sel_hitTest_withEvent_, a1, a2, a3);
  if (result)
  {
    if (result == v3 || *&v3[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_rootView] == result || result == *&v3[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_layoutView] || *&v3[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_hostingView] == result)
    {

      return 0;
    }
  }

  else
  {
    if (!*&v3[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_rootView])
    {
      return 0;
    }

    if (!*&v3[OBJC_IVAR____TtC12GameCenterUI17AccessPointWindow_hostingView])
    {
      return 0;
    }
  }

  return result;
}

id AccessPointWindow.__allocating_init(windowScene:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene_];

  return v3;
}

id AccessPointWindow.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

uint64_t type metadata accessor for AccessPointHostingViewController()
{
  result = qword_27F1E0498;
  if (!qword_27F1E0498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24DFFCE00()
{
  result = qword_280BDFA60;
  if (!qword_280BDFA60)
  {
    sub_24DF88A8C(255, &unk_280BDFA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BDFA60);
  }

  return result;
}

uint64_t sub_24DFFCE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessPointView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DFFCED4(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24DFFCF60()
{
  result = qword_27F1E0500;
  if (!qword_27F1E0500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E04F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0500);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_45()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_23()
{
  sub_24DFFCE68();
}

uint64_t sub_24DFFD04C()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  sub_24E348428();

  *(v1 + OBJC_IVAR____TtC12GameCenterUI36SettingsContactsIntegrationInitiator_sinks) = MEMORY[0x277D84FA0];
  v3 = [objc_opt_self() local];
  sub_24DFFD1A8(v3);

  swift_allocObject();
  swift_weakInit();
  sub_24E348418();
  sub_24DFFD8A0();
  sub_24E344F38();

  swift_beginAccess();
  sub_24E344DA8();
  swift_endAccess();

  return v1;
}

uint64_t sub_24DFFD1A8(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = aBlock - v7;
  if ((sub_24E245A0C() & 1) != 0 && [a1 hasAcknowledgedLatestGDPR])
  {
    sub_24E343CA8();
    v9 = sub_24E343F78();
    v10 = sub_24E348248();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24DE53000, v9, v10, "Initiating contacts integration from settings", v11, 2u);
      MEMORY[0x253040EE0](v11, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v12 = [objc_opt_self() proxyForLocalPlayer];
    v13 = [v12 profileServicePrivate];

    aBlock[4] = sub_24DFFD54C;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E052CF0;
    aBlock[3] = &block_descriptor_13;
    v14 = _Block_copy(aBlock);
    [v13 startContactsIntegrationSyncWithOptions:2 completionHandler:v14];
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_24E343CA8();
    v16 = sub_24E343F78();
    v17 = sub_24E348248();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24DE53000, v16, v17, "Will not initiate contacts integration due to local player auth state", v18, 2u);
      MEMORY[0x253040EE0](v18, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_24DFFD484()
{
  sub_24E342F08();
  if (v2)
  {
    sub_24DFEA130();
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24DFFD1A8(v0);
      }
    }
  }

  else
  {
    sub_24DFA9298(v1, &qword_27F1E0370);
  }
}

uint64_t sub_24DFFD54C(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343CA8();
  v6 = a1;
  v7 = sub_24E343F78();
  v8 = sub_24E348248();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    if (a1)
    {
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 4) = v12;
    *v10 = v13;
    _os_log_impl(&dword_24DE53000, v7, v8, "Finished refreshing contacts integration settings for local player. error: %@", v9, 0xCu);
    sub_24DFA9298(v10, &unk_27F1DF730);
    MEMORY[0x253040EE0](v10, -1, -1);
    MEMORY[0x253040EE0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24DFFD708()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI36SettingsContactsIntegrationInitiator_notificationPublisher;
  sub_24E348418();
  OUTLINED_FUNCTION_0_26();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for SettingsContactsIntegrationInitiator()
{
  result = qword_27F1E0518;
  if (!qword_27F1E0518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DFFD7FC()
{
  result = sub_24E348418();
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

unint64_t sub_24DFFD8A0()
{
  result = qword_27F1E0528;
  if (!qword_27F1E0528)
  {
    sub_24E348418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0528);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24DFFD910()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI24GKMultiplayerStepperView_isStepperHidden) = 0;
  sub_24E348AE8();
  __break(1u);
}

double sub_24DFFD990()
{
  v19 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_33();
  v5 = *(v0 + OBJC_IVAR____TtC12GameCenterUI24GKMultiplayerStepperView_isStepperHidden);
  v6 = *(v0 + OBJC_IVAR____TtC12GameCenterUI24GKMultiplayerStepperView_downButton);
  v7 = sub_24DF88A8C(0, &unk_27F1E0560);
  v8 = MEMORY[0x277D22A58];
  v25 = v7;
  v26 = MEMORY[0x277D22A58];
  v24 = v6;
  v9 = *(v0 + OBJC_IVAR____TtC12GameCenterUI24GKMultiplayerStepperView_upButton);
  v28 = v7;
  v29 = MEMORY[0x277D22A58];
  v27 = v9;
  v10 = *(v0 + OBJC_IVAR____TtC12GameCenterUI24GKMultiplayerStepperView_backgroundView);
  v31 = sub_24DF88A8C(0, &qword_27F1E1D30);
  v32 = v8;
  v30 = v10;
  v11 = *(v0 + OBJC_IVAR____TtC12GameCenterUI24GKMultiplayerStepperView_label);
  v34 = type metadata accessor for DynamicTypeLabel();
  v35 = MEMORY[0x277D22A68];
  v20[0] = v5;
  v21 = xmmword_24E36E1F0;
  v22 = xmmword_24E36E200;
  v33 = v11;
  v23 = 0x4040000000000000;
  __swift_project_boxed_opaque_existential_1(&v33, v34);
  v12 = v6;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_24E3440E8();
  v17 = fmax(v16 + 118.0, 168.0);
  sub_24E343F98();
  sub_24E344198();
  (*(v3 + 8))(v1, v19);
  sub_24DFFE1BC(v20);
  return v17;
}

uint64_t sub_24DFFDC84()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_33();
  v44.receiver = v2;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, sel_layoutSubviews);
  [v2 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v2[OBJC_IVAR____TtC12GameCenterUI24GKMultiplayerStepperView_isStepperHidden];
  v17 = *&v2[OBJC_IVAR____TtC12GameCenterUI24GKMultiplayerStepperView_downButton];
  v18 = sub_24DF88A8C(0, &unk_27F1E0560);
  v19 = MEMORY[0x277D22A58];
  v33 = v18;
  v32 = v17;
  v20 = *&v2[OBJC_IVAR____TtC12GameCenterUI24GKMultiplayerStepperView_upButton];
  v36 = v18;
  v37 = MEMORY[0x277D22A58];
  v34 = MEMORY[0x277D22A58];
  v35 = v20;
  v21 = *&v2[OBJC_IVAR____TtC12GameCenterUI24GKMultiplayerStepperView_backgroundView];
  v39 = sub_24DF88A8C(0, &qword_27F1E1D30);
  v40 = v19;
  v38 = v21;
  v22 = *&v2[OBJC_IVAR____TtC12GameCenterUI24GKMultiplayerStepperView_label];
  v42 = type metadata accessor for DynamicTypeLabel();
  v43 = MEMORY[0x277D22A68];
  v28[0] = v16;
  v29 = xmmword_24E36E1F0;
  v30 = xmmword_24E36E200;
  v41 = v22;
  v31 = 0x4040000000000000;
  v23 = v17;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  sub_24E029BB4(v9, v11, v13, v15);
  (*(v6 + 8))(v1, v4);
  return sub_24DFFE1BC(v28);
}

uint64_t sub_24DFFDF1C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void))
{
  v5 = v3;
  v6 = *&v3[OBJC_IVAR____TtC12GameCenterUI24GKMultiplayerStepperView_model];
  result = a2();
  if (result)
  {
    a3();
    v8 = *(v6 + OBJC_IVAR____TtC12GameCenterUI30GKMultiplayerStepperController_value);

    return [v5 accessibilityUpdateStepperWithValue_];
  }

  return result;
}

uint64_t sub_24DFFDFD0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v9 = a1;
  }

  sub_24DFFDF1C(v11, a4, a5);

  return sub_24DF8894C(v11);
}

double sub_24DFFE248(uint64_t a1, uint64_t a2)
{
  sub_24E348538();
  sub_24DFFE52C(a2 + 16, v6);
  sub_24DFFE564(v6, &v7);
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  sub_24E3440D8();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v7);
  return v4 + *(a2 + 72) + *(a2 + 88);
}

uint64_t sub_24DFFE32C(uint64_t a1, uint64_t a2)
{
  sub_24DFFE52C(a2 + 16, v64);
  sub_24DFFE564(v64, &v65);
  __swift_project_boxed_opaque_existential_1(&v65, v66);
  sub_24E3484F8();
  sub_24E344978();
  __swift_destroy_boxed_opaque_existential_1(&v65);
  v3 = sub_24E344038();
  v4 = sub_24E3449F8();
  v6 = OUTLINED_FUNCTION_0_46(v4, v5);
  v8 = v7(v6);
  v16 = OUTLINED_FUNCTION_1_34(v8, v9, v10, v11, v12, v13, v14, v15, *&v64[0]);
  v3(v16);
  v17 = sub_24E344038();
  v18 = sub_24E3449E8();
  v20 = OUTLINED_FUNCTION_0_46(v18, v19);
  v22 = v21(v20);
  v30 = OUTLINED_FUNCTION_1_34(v22, v23, v24, v25, v26, v27, v28, v29, *&v64[0]);
  v17(v30);
  v31 = *(a2 + 72);
  v32 = sub_24E344028();
  *v33 = *v33 - v31;
  v40 = OUTLINED_FUNCTION_1_34(v32, v33, v34, v35, v36, v37, v38, v39, *&v64[0]);
  v41(v40);
  v42 = *(a2 + 64);
  v43 = sub_24E344028();
  *(v44 + 8) = *(v44 + 8) - v42;
  v51 = OUTLINED_FUNCTION_1_34(v43, v44, v45, v46, v47, v48, v49, v50, *&v64[0]);
  v52(v51);
  v53 = sub_24E343FF8();
  v54 = sub_24E348548();
  v62 = OUTLINED_FUNCTION_1_34(v54, v55, v56, v57, v58, v59, v60, v61, *&v64[0]);
  return v53(v62);
}

_OWORD *sub_24DFFE564(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

double OUTLINED_FUNCTION_0_46(uint64_t a1, double *a2)
{
  result = v2 + *a2;
  *a2 = result;
  return result;
}

id sub_24DFFE624(void (*a1)(void))
{
  result = [v1 view];
  if (result)
  {
    v4 = result;
    a1(0);
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void *sub_24DFFE688()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_overlayView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24DFFE6D0(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_overlayView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_24DFFEEFC(v4);
}

void (*sub_24DFFE73C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_overlayView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_24DFFE7C0;
}

void sub_24DFFE7C0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_24DFFE6D0(v3);
  }

  else
  {
    sub_24DFFE6D0(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_24DFFE82C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsHiddenNavigationBar);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsHiddenNavigationBar) = a1;
  return sub_24DFFF014(v2);
}

uint64_t sub_24DFFE844(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_navbarScrollObserver);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_navbarScrollObserver) = a1;

  sub_24DFFF43C(v2);
}

void *sub_24DFFE8A4()
{
  v1 = v0;
  v2 = sub_24E343518();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = sub_24E0002EC(result);
  if (result)
  {
    v8 = result;
    v9 = 0;
    v10 = result[2];
    while (1)
    {
      if (v10 == v9)
      {
      }

      if (v9 >= v8[2])
      {
        break;
      }

      (*(v3 + 16))(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v2);
      result = [v14 collectionView];
      if (!result)
      {
        goto LABEL_11;
      }

      v11 = result;
      ++v9;
      v12 = sub_24E343488();
      [v11 deselectItemAtIndexPath:v12 animated:1];

      result = (*(v3 + 8))(v6, v2);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

id BaseCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id BaseCollectionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{

  *(v3 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_overlayView) = 0;
  *(v3 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsHiddenNavigationBar) = 2;
  *(v3 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsHiddenTitle) = 0;
  *(v3 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_navbarScrollObserverSkipDistance) = 0;
  *(v3 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsConfigureCollectionViewFocusGuide) = 1;
  v5 = v3 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_manualScrollEdgeAppearanceProgress;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_scrollObserver;
  *(v3 + v6) = [objc_allocWithZone(type metadata accessor for ScrollViewDelegateObserver()) init];
  *(v3 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_navbarScrollObserver) = 0;
  v11 = type metadata accessor for BaseCollectionViewController();
  OUTLINED_FUNCTION_8_11();
  v9 = objc_msgSendSuper2(v7, v8, v3, v11);

  return v9;
}

void sub_24DFFEC14()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsHiddenNavigationBar) = 2;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsHiddenTitle) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_navbarScrollObserverSkipDistance) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsConfigureCollectionViewFocusGuide) = 1;
  v1 = v0 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_manualScrollEdgeAppearanceProgress;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_scrollObserver;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ScrollViewDelegateObserver()) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_navbarScrollObserver) = 0;
  sub_24E348AE8();
  __break(1u);
}

id sub_24DFFED5C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseCollectionViewController();
  v1 = objc_msgSendSuper2(&v3, sel_collectionView);

  return v1;
}

void sub_24DFFEE00(void *a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseCollectionViewController();
  objc_msgSendSuper2(&v3, sel_setCollectionView_, a1);
  sub_24DFFEE4C();
}

void sub_24DFFEE4C()
{
  v1 = sub_24DFFE60C();
  if (v1)
  {
    v2 = v1;
    v3 = [v0 collectionView];
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

void sub_24DFFEECC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24DFFE6D0(v1);
}

void sub_24DFFEEFC(void *a1)
{
  [a1 removeFromSuperview];
  v2 = OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_overlayView;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 view];
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = v5;
    [v5 addSubview_];
  }

  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    [v7 setHidden_];

    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      [v9 setNeedsLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t sub_24DFFF014(uint64_t result)
{
  v2 = v1;
  v3 = v1[OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsHiddenNavigationBar];
  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else
  {
    if (result != 2 && ((v3 ^ result) & 1) == 0)
    {
      return result;
    }

    if (v3)
    {
      v4 = [v1 navigationItem];
      [v4 _setManualScrollEdgeAppearanceEnabled_];

      v5 = [v2 navigationItem];
      [v5 _setAutoScrollEdgeTransitionDistance_];

      v6 = 1;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = [v2 navigationItem];
  [v7 _setManualScrollEdgeAppearanceEnabled_];

  v8 = [v2 navigationItem];
  type metadata accessor for NavigationBarVisibilityScrollObserver();
  swift_allocObject();
  v9 = sub_24DFEA1D8(v8);
  result = sub_24DFFE844(v9);
  if (*&v2[OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_navbarScrollObserver])
  {
    v10 = v2[OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsHiddenTitle];

    sub_24DFEA410(v10);
  }

  return result;
}

void sub_24DFFF1AC()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_navbarScrollObserver])
  {
    v2 = v0[OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsHiddenTitle];

    sub_24DFEA410(v2);
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680);
  inited = swift_initStackObject();
  v5 = MEMORY[0x277D740C0];
  *(inited + 16) = xmmword_24E367D20;
  v6 = *v5;
  *(inited + 32) = *v5;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 labelColor];
  v10 = v9;
  v11 = 1.0;
  if (v1[OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsHiddenTitle])
  {
    v11 = 0.0;
  }

  v12 = [v9 colorWithAlphaComponent_];

  *(inited + 64) = sub_24DF88A8C(0, &qword_27F1E5FD0);
  *(inited + 40) = v12;
  type metadata accessor for Key(0);
  sub_24DFEA7B4();
  sub_24E347C28();
  v13 = sub_24E347BE8();

  [v3 setTitleTextAttributes_];

  v14 = [v1 navigationItem];
  [v14 setStandardAppearance_];
}

void sub_24DFFF398()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_navbarScrollObserver];
  if (v1)
  {
    *(v1 + 32) = *&v0[OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_navbarScrollObserverSkipDistance];

    v2 = [v0 collectionView];
    if (v2)
    {
      v3 = v2;
      sub_24DFEA420(v2);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24DFFF43C(uint64_t result)
{
  v2 = v1;
  if (result)
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsHiddenTitle);

    sub_24DFEA410(v3);

    sub_24E2261D8(v4);
  }

  if (*(v2 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_navbarScrollObserver))
  {

    sub_24E226244(v5, &off_286115AA0);
  }

  return result;
}

void sub_24DFFF564()
{
  v1 = v0;
  if (([v0 isViewLoaded] & 1) == 0)
  {
    type metadata accessor for InsetViewControllerContentView();
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v2 setAutoresizingMask_];
    OUTLINED_FUNCTION_18_5(v2, sel_setLayoutMargins_);
    v3 = v2;
    sub_24DFEB9A0(0x6579614C656D6167, 0xEE0070756F724772);
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for PlayerCardTheme();
    v5 = __swift_project_value_buffer(v4, qword_27F20BF00);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
    v10 = *(v5 + 48);
    v11 = *(v5 + 56);
    v18[0] = *(v5 + 8);
    v18[1] = v6;
    v18[2] = v7;
    v18[3] = v8;
    v18[4] = v9;
    v18[5] = v10;
    v19 = v11;
    sub_24DFD7E3C(v18[0], v6, v7, v8, v9, v10, v11);
    sub_24DFEB8F4(v18);

    [v1 setView_];
    v12 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
    v13 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    v17 = v13;
    [v17 setAutoresizingMask_];
    OUTLINED_FUNCTION_18_5(v17, sel_setLayoutMargins_);
    v14 = [objc_opt_self() clearColor];
    [v17 setBackgroundColor_];

    [v17 setAlwaysBounceVertical_];
    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 addSubview_];

      sub_24DFFE82C(0);
      [v1 setCollectionView_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_24DFFF878(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for BaseCollectionViewController();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  result = [v1 transitionCoordinator];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_24E000378;
    v8[5] = v5;
    OUTLINED_FUNCTION_1_35();
    OUTLINED_FUNCTION_0_47();
    v8[2] = v6;
    v8[3] = &block_descriptor_14;
    v7 = _Block_copy(v8);

    [v4 animateAlongsideTransition:v7 completion:0];
    _Block_release(v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24DFFF974()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_scrollObserver);
    v3 = [v1 collectionView];
    if (v3)
    {
      v4 = v3;
      sub_24E010F0C();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24DFFFA1C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_24DFFFAD0(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseCollectionViewController();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1 & 1);
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsConfigureCollectionViewFocusGuide) == 1)
  {
    sub_24E011518();
  }
}

void sub_24DFFFB80()
{
  v35.receiver = v0;
  v35.super_class = type metadata accessor for BaseCollectionViewController();
  objc_msgSendSuper2(&v35, sel_viewDidLayoutSubviews);
  v1 = OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_overlayView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v2 = *&v0[v1];
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

      [v3 sizeThatFits_];
      v11 = v10;
      v13 = v12;
      v14 = [v0 view];
      if (v14)
      {
        v15 = v14;
        [v14 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v36.origin.x = v17;
        v36.origin.y = v19;
        v36.size.width = v21;
        v36.size.height = v23;
        MidX = CGRectGetMidX(v36);
        v25 = [v0 view];
        if (v25)
        {
          v26 = v25;
          [v25 bounds];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v37.origin.x = v28;
          v37.origin.y = v30;
          v37.size.width = v32;
          v37.size.height = v34;
          [v3 setFrame_];

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_24DFFFD90(void *a1, double a2, double a3)
{
  v24.receiver = v3;
  v24.super_class = type metadata accessor for BaseCollectionViewController();
  objc_msgSendSuper2(&v24, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = [v3 navigationController];
  v8 = [v7 topViewController];

  if (v8)
  {
    sub_24DF88A8C(0, &qword_27F1E05B0);
    v9 = v3;
    v10 = sub_24E348628();

    if (v10)
    {
      v11 = [v9 collectionView];
      if (v11)
      {
        v12 = v11;
        [v11 contentOffset];
        v14 = v13;

        v15 = [v9 collectionView];
        if (v15)
        {
          v16 = v15;
          [v15 safeAreaInsets];
          v18 = v17;

          v19 = swift_allocObject();
          *(v19 + 16) = v14 == -v18;
          *(v19 + 24) = v9;
          v23[4] = sub_24E000398;
          v23[5] = v19;
          OUTLINED_FUNCTION_1_35();
          OUTLINED_FUNCTION_0_47();
          v23[2] = v20;
          v23[3] = &block_descriptor_6;
          v21 = _Block_copy(v23);
          v22 = v9;

          [a1 animateAlongsideTransition:v21 completion:0];
          _Block_release(v21);
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
}

void sub_24DFFFF7C(int a1, char a2, id a3)
{
  if (a2)
  {
    v3 = [a3 collectionView];
    if (v3)
    {
      v4 = v3;
      [v3 _scrollToTopIfPossible_];
    }

    else
    {
      __break(1u);
    }
  }
}

id BaseCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id sub_24E000204(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BaseCollectionViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_24E0002EC(void *a1)
{
  v2 = [a1 indexPathsForSelectedItems];

  if (!v2)
  {
    return 0;
  }

  sub_24E343518();
  v3 = sub_24E347F08();

  return v3;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ArcadePageAction()
{
  result = qword_27F1E0688;
  if (!qword_27F1E0688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E000548()
{
  result = sub_24E0005CC();
  if (v1 <= 0x3F)
  {
    result = sub_24E347208();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24E0005CC()
{
  result = qword_27F1DF108;
  if (!qword_27F1DF108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1DF108);
  }

  return result;
}

uint64_t sub_24E000610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24E347208();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for AppStoreContentListAction()
{
  result = qword_27F1E0698;
  if (!qword_27F1E0698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0006F8()
{
  sub_24E0007CC(319, &qword_27F1E06A8, &qword_27F1E3D40);
  if (v0 <= 0x3F)
  {
    sub_24E0007CC(319, &qword_27F1E06B0, &qword_27F1DF108);
    if (v1 <= 0x3F)
    {
      sub_24E347208();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E0007CC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_24DF88A8C(255, a3);
    v4 = sub_24E348698();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void ErrorData.init(error:imageName:title:description:retryHandler:buttonTitle:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a5)
  {
    v18 = a5;
  }

  else
  {
    v20 = sub_24E347CB8();
    v21 = GKGameCenterUIFrameworkBundle();
    v22 = GKGetLocalizedStringFromTableInBundle();

    a4 = sub_24E347CF8();
    v18 = v23;
  }

  v37 = a4;
  v24 = a12;
  if (!a7)
  {
    v25 = sub_24E347CB8();
    v26 = GKGameCenterUIFrameworkBundle();
    v27 = a2;
    v28 = GKGetLocalizedStringFromTableInBundle();

    a6 = sub_24E347CF8();
    a7 = v29;

    a2 = v27;
  }

  if (!a12)
  {
    v31 = sub_24E347CB8();
    v32 = a2;
    v33 = GKGameCenterUIFrameworkBundle();
    v36 = a1;
    v34 = GKGetLocalizedStringFromTableInBundle();

    a2 = v32;
    a11 = sub_24E347CF8();
    v24 = v35;

    a1 = v36;
  }

  *a9 = a2;
  a9[1] = a3;
  a9[2] = a1;
  a9[3] = v37;
  a9[4] = v18;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a11;
  a9[8] = v24;
  a9[9] = a8;
  a9[10] = a10;
}

void *ErrorData.error.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t ErrorData.retryHandler.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  sub_24DF88BEC(v0);
  return OUTLINED_FUNCTION_19_1();
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E000B4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_24E000B8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for AchievementsDetailsSecondaryView()
{
  result = qword_27F1E06B8;
  if (!qword_27F1E06B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E000C8C()
{
  result = type metadata accessor for AchievementDetailViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E000D44@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24E345D08();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E06D0);
  return sub_24E000D98(v1, a1 + *(v3 + 44));
}

uint64_t sub_24E000D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E3461C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E06D8);
  sub_24E0024F0();
  sub_24E345218();
  type metadata accessor for AchievementsDetailsSecondaryView();

  sub_24E346EB8();
  sub_24E346EC8();
  sub_24E345598();
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0708) + 36);
  *v4 = v11;
  *(v4 + 24) = v13;
  *(v4 + 8) = v12;
  v5 = sub_24E345CF8();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0710) + 36);
  sub_24E001DCC(a1, v6);
  v7 = sub_24E345398();
  LOBYTE(a1) = MEMORY[0x25303CDB0]((2 * v7));
  v8 = sub_24E345728();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0718);
  v10 = v6 + *(result + 36);
  *v10 = v8;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v10 + 17) = a1;
  *(v10 + 24) = v5;
  return result;
}

uint64_t sub_24E000F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E06F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  *v6 = sub_24E345D08();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E0760);
  sub_24E0011C4(a1, &v6[*(v10 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  v12 = sub_24E346218();
  *(inited + 32) = v12;
  v13 = sub_24E346238();
  *(inited + 33) = v13;
  v14 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v12)
  {
    v14 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v13)
  {
    v14 = sub_24E346228();
  }

  type metadata accessor for AchievementsDetailsSecondaryView();
  sub_24E3451B8();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_24DFB4B20(v6, v9, &qword_27F1E0700);
  v23 = &v9[*(v7 + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = sub_24E3461F8();
  sub_24E3451B8();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_24DFB4B20(v9, a2, &qword_27F1E06F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E06D8);
  v34 = a2 + *(result + 36);
  *v34 = v24;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_24E0011C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v127 = type metadata accessor for AchievementDetailGlobalPlayerView();
  MEMORY[0x28223BE20](v127);
  v4 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8410);
  MEMORY[0x28223BE20](v129);
  v131 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v128 = &v119 - v7;
  MEMORY[0x28223BE20](v8);
  v130 = &v119 - v9;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0770);
  MEMORY[0x28223BE20](v135);
  v11 = &v119 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0778);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v119 - v13);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0780);
  MEMORY[0x28223BE20](v125);
  v133 = &v119 - v15;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0788);
  MEMORY[0x28223BE20](v126);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v119 - v19;
  MEMORY[0x28223BE20](v21);
  v134 = &v119 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E0790);
  MEMORY[0x28223BE20](v23 - 8);
  v136 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v119 - v26;
  v28 = type metadata accessor for AchievementDetailViewModel();
  v29 = a1 + v28[5];
  v30 = (v29 + *(type metadata accessor for Achievement() + 48));
  v31 = v30[1];
  v137 = v27;
  if (v31)
  {
    v122 = v17;
    v123 = v11;
    v124 = v28;
    v33 = v30[2];
    v32 = v30[3];
    v34 = *v30;
    v121 = a1 + *(type metadata accessor for AchievementsDetailsSecondaryView() + 24);
    v35 = *(v121 + 376);
    v36 = sub_24E346948();
    *v14 = sub_24E346E28();
    v14[1] = v37;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E07C0);
    sub_24E193FB0(v36, v34, v31, v33, v32, v14 + *(v38 + 44));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_24E36A270;
    LOBYTE(v33) = sub_24E346218();
    *(v39 + 32) = v33;
    v40 = sub_24E346238();
    *(v39 + 33) = v40;
    v41 = sub_24E346228();
    sub_24E346228();
    if (sub_24E346228() != v33)
    {
      v41 = sub_24E346228();
    }

    v120 = a1;

    sub_24E346228();
    if (sub_24E346228() != v40)
    {
      v41 = sub_24E346228();
    }

    v42 = v123;
    v28 = v124;
    sub_24E3451B8();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = v133;
    sub_24DFB4B20(v14, v133, &qword_27F1E0778);
    v52 = v51 + *(v125 + 36);
    *v52 = v41;
    *(v52 + 8) = v44;
    *(v52 + 16) = v46;
    *(v52 + 24) = v48;
    *(v52 + 32) = v50;
    *(v52 + 40) = 0;
    v53 = sub_24E3461F8();
    sub_24E3451B8();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    sub_24DFB4B20(v51, v20, &qword_27F1E0780);
    v62 = &v20[*(v126 + 36)];
    *v62 = v53;
    *(v62 + 1) = v55;
    *(v62 + 2) = v57;
    *(v62 + 3) = v59;
    *(v62 + 4) = v61;
    v62[40] = 0;
    v63 = v134;
    sub_24DFB4B20(v20, v134, &qword_27F1E0788);
    v64 = v122;
    sub_24DFAE87C(v63, v122, &qword_27F1E0788);
    *v42 = 0;
    *(v42 + 8) = 1;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E07C8);
    sub_24DFAE87C(v64, v42 + *(v65 + 48), &qword_27F1E0788);
    sub_24DF8BFF4(v63, &qword_27F1E0788);
    sub_24DF8BFF4(v64, &qword_27F1E0788);
    v27 = v137;
    sub_24DFB4B20(v42, v137, &qword_27F1E0770);
    v66 = 0;
    a1 = v120;
  }

  else
  {
    v66 = 1;
  }

  __swift_storeEnumTagSinglePayload(v27, v66, 1, v135);
  v67 = *(a1 + v28[7]);
  v68 = type metadata accessor for AchievementsDetailsSecondaryView();
  v69 = *(v68 + 24);
  memcpy(v158, (a1 + v69), 0x180uLL);
  v70 = *(v67 + 16);
  memcpy(v156, (a1 + v69), 0x180uLL);
  LOBYTE(v138[0]) = 0;
  v135 = v67;

  sub_24E002778(v158, &v139);
  sub_24E346B78();
  LODWORD(v125) = v139;
  v126 = v140[0];
  sub_24E343AA8();
  v139 = sub_24E343688();
  v140[0] = v71;
  sub_24DF90C4C();
  v124 = sub_24E348708();
  v134 = v72;

  LODWORD(v133) = sub_24E3461F8();
  sub_24E3451B8();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v156[384] = 0;
  v81 = (a1 + v28[8]);
  v82 = *v81;
  v83 = *(v81 + 8);
  LOBYTE(v68) = *(a1 + *(v68 + 20));
  memcpy(v154, (a1 + v69), 0x180uLL);
  v84 = *MEMORY[0x277CDA710];
  type metadata accessor for MicaViewInfo();
  swift_allocObject();
  sub_24E31B4E8(0xD000000000000013, 0x800000024E3A11B0, v84, 1, 1.0);
  *v4 = v82;
  v4[8] = v83;
  v4[9] = v68;
  memcpy(v4 + 16, v154, 0x180uLL);
  sub_24E002778(v154, &v139);
  sub_24E0027D4();
  v85 = v84;
  *(v4 + 50) = sub_24E3455C8();
  *(v4 + 51) = v86;
  v87 = sub_24E347CB8();
  v88 = GKGameCenterUIFrameworkBundle();
  v89 = GKGetLocalizedStringFromTableInBundle();

  v90 = sub_24E347CF8();
  v92 = v91;

  *(v4 + 52) = v90;
  *(v4 + 53) = v92;
  v93 = *(v127 + 36);
  *&v4[v93] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_24E36A270;
  LOBYTE(v92) = sub_24E3461F8();
  *(v94 + 32) = v92;
  v95 = sub_24E346208();
  *(v94 + 33) = v95;
  v96 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v92)
  {
    v96 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v95)
  {
    v96 = sub_24E346228();
  }

  if (v70 >= 3)
  {
    v97 = 3;
  }

  else
  {
    v97 = v70;
  }

  v127 = v97;
  sub_24E3451B8();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v106 = v128;
  sub_24E00282C(v4, v128);
  v107 = v130;
  v108 = v106 + *(v129 + 36);
  *v108 = v96;
  *(v108 + 8) = v99;
  *(v108 + 16) = v101;
  *(v108 + 24) = v103;
  *(v108 + 32) = v105;
  *(v108 + 40) = 0;
  sub_24DFB4B20(v106, v107, &unk_27F1E8410);
  v109 = v136;
  sub_24DFAE87C(v137, v136, &unk_27F1E0790);
  v110 = v131;
  sub_24DFAE87C(v107, v131, &unk_27F1E8410);
  v111 = v109;
  v112 = v132;
  sub_24DFAE87C(v111, v132, &unk_27F1E0790);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E07B0);
  v114 = *(v113 + 48);
  v138[0] = v135;
  memcpy(&v138[1], v156, 0x180uLL);
  v115 = v125;
  LOBYTE(v138[49]) = v125;
  *(&v138[49] + 1) = *v155;
  HIDWORD(v138[49]) = *&v155[3];
  v116 = v126;
  v138[50] = v126;
  v138[51] = v97;
  v117 = v124;
  v138[52] = v124;
  v138[53] = v134;
  LOBYTE(v138[54]) = v133;
  *(&v138[54] + 1) = *v157;
  HIDWORD(v138[54]) = *&v157[3];
  v138[55] = v74;
  v138[56] = v76;
  v138[57] = v78;
  v138[58] = v80;
  LOBYTE(v138[59]) = 0;
  memcpy((v112 + v114), v138, 0x1D9uLL);
  sub_24DFAE87C(v110, v112 + *(v113 + 64), &unk_27F1E8410);
  sub_24DFAE87C(v138, &v139, &unk_27F1E8440);
  sub_24DF8BFF4(v107, &unk_27F1E8410);
  sub_24DF8BFF4(v137, &unk_27F1E0790);
  sub_24DF8BFF4(v110, &unk_27F1E8410);
  v139 = v135;
  memcpy(v140, v156, sizeof(v140));
  v141 = v115;
  *v142 = *v155;
  *&v142[3] = *&v155[3];
  v143 = v116;
  v144 = v127;
  v145 = v117;
  v146 = v134;
  v147 = v133;
  *v148 = *v157;
  *&v148[3] = *&v157[3];
  v149 = v74;
  v150 = v76;
  v151 = v78;
  v152 = v80;
  v153 = 0;
  sub_24DF8BFF4(&v139, &unk_27F1E8440);
  return sub_24DF8BFF4(v136, &unk_27F1E0790);
}

uint64_t sub_24E001DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0720) - 8;
  MEMORY[0x28223BE20](v59);
  v4 = &v58 - v3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0728);
  MEMORY[0x28223BE20](v61);
  v62 = &v58 - v5;
  v6 = [*(a1 + *(type metadata accessor for AchievementDetailViewModel() + 24)) stringValue];
  v58 = sub_24E347CF8();
  v8 = v7;

  v9 = type metadata accessor for AchievementsDetailsSecondaryView();
  v10 = (a1 + v9[6]);
  v11 = v10[3];
  v12 = *(a1 + v9[7]);
  v13 = v10[1];
  v60 = v10;
  v14 = v10[45];
  v15 = type metadata accessor for ASCPrefetchingLockupView(0);
  v16 = &v4[*(v15 + 28)];
  *&v65 = v11;
  sub_24E002620();

  sub_24E345358();
  v17 = type metadata accessor for ASCPrefetchingLockupMetrics(0);
  *&v65 = v12;
  sub_24E345358();
  *&v65 = v13;
  sub_24E345358();
  *&v16[*(v17 + 28)] = v14;
  swift_unknownObjectWeakLoadStrong();
  v18 = *(a1 + v9[5]);
  *v4 = v58;
  *(v4 + 1) = v8;
  v64 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34C0);
  sub_24E346B78();
  *(v4 + 1) = v65;
  LOBYTE(v64) = 0;
  sub_24E346B78();
  v19 = *(&v65 + 1);
  v4[32] = v65;
  *(v4 + 5) = v19;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v4[*(v15 + 36)] = v18;
  v20 = sub_24E346E28();
  v22 = v21;
  sub_24E0022EC(a1, &v65);
  v23 = v65;
  v24 = BYTE8(v65);
  v25 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E0740) + 36)];
  *v25 = v23;
  v25[8] = v24;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  v26 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8450) + 36)];
  v27 = *(sub_24E3457C8() + 20);
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_24E345C68();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v26 = v13;
  *(v26 + 1) = v13;
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF7E0) + 36)] = 256;
  sub_24E346998();
  v30 = sub_24E3469C8();

  v31 = &v4[*(v59 + 44)];
  *v31 = v30;
  *(v31 + 8) = xmmword_24E36E4E0;
  *(v31 + 3) = 0x4020000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  LOBYTE(v17) = sub_24E346218();
  *(inited + 32) = v17;
  v33 = sub_24E346238();
  *(inited + 33) = v33;
  v34 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v17)
  {
    v34 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v33)
  {
    v34 = sub_24E346228();
  }

  sub_24E3451B8();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v62;
  sub_24DFB4B20(v4, v62, &qword_27F1E0720);
  v44 = v43 + *(v61 + 36);
  *v44 = v34;
  *(v44 + 8) = v36;
  *(v44 + 16) = v38;
  *(v44 + 24) = v40;
  *(v44 + 32) = v42;
  *(v44 + 40) = 0;
  v45 = sub_24E346208();
  sub_24E3451B8();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v43;
  v55 = v63;
  sub_24DFB4B20(v54, v63, &qword_27F1E0728);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0750);
  v57 = v55 + *(result + 36);
  *v57 = v45;
  *(v57 + 8) = v47;
  *(v57 + 16) = v49;
  *(v57 + 24) = v51;
  *(v57 + 32) = v53;
  *(v57 + 40) = 0;
  return result;
}

uint64_t sub_24E0022EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AchievementsDetailsSecondaryView() + 20)))
  {
    if (qword_27F1DD740 != -1)
    {
      swift_once();
    }

    v3 = &qword_27F20AC30;
  }

  else
  {
    if (qword_27F1DD738 != -1)
    {
      swift_once();
    }

    v3 = &qword_27F20ABB8;
  }

  memcpy(__dst, v3, 0x78uLL);
  v4 = *&__dst[7];
  v5 = BYTE9(__dst[6]);
  v6 = BYTE8(__dst[6]);
  v14 = *(&__dst[4] + 8);
  v15 = *(&__dst[5] + 8);
  v12 = __dst[1];
  v13 = *(&__dst[3] + 8);
  v11 = __dst[0];
  v7 = __dst[2];
  v8 = __dst[3];
  sub_24E002674(__dst, &v16);
  __dst[0] = v11;
  __dst[1] = v12;
  __dst[2] = v7;
  LOBYTE(__dst[3]) = v8;
  *(&__dst[3] + 8) = v13;
  *(&__dst[4] + 8) = v14;
  *(&__dst[5] + 8) = v15;
  BYTE8(__dst[6]) = v6;
  BYTE9(__dst[6]) = v5;
  *&__dst[7] = v4;
  sub_24E0026D0(__dst);
  sub_24E002724();
  if (!v6)
  {
  }

  result = sub_24E345E38();
  v10 = v17;
  *a2 = v16;
  *(a2 + 8) = v10;
  return result;
}

unint64_t sub_24E0024F0()
{
  result = qword_27F1E06E0;
  if (!qword_27F1E06E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E06D8);
    sub_24E00257C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E06E0);
  }

  return result;
}

unint64_t sub_24E00257C()
{
  result = qword_27F1E06E8;
  if (!qword_27F1E06E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E06F0);
    sub_24E002890(&qword_27F1E06F8, &qword_27F1E0700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E06E8);
  }

  return result;
}

unint64_t sub_24E002620()
{
  result = qword_27F1E0730;
  if (!qword_27F1E0730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0730);
  }

  return result;
}

unint64_t sub_24E002724()
{
  result = qword_27F1E0758;
  if (!qword_27F1E0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0758);
  }

  return result;
}

unint64_t sub_24E0027D4()
{
  result = qword_27F1E07A0;
  if (!qword_27F1E07A0)
  {
    type metadata accessor for MicaViewInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E07A0);
  }

  return result;
}

uint64_t sub_24E00282C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementDetailGlobalPlayerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E002890(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_24E0028F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_48(v1);

  return v3(v2);
}

uint64_t sub_24E002A00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_48(v1);

  return v3(v2);
}

unint64_t sub_24E002B38(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_24E004BC0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_24E348988();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v19 + v6);
        if (*(v19 + v6) < 0)
        {
          OUTLINED_FUNCTION_1_36();
          switch(v12)
          {
            case 1:
LABEL_14:
              v9 = v10[1] & 0x3F | ((v9 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v13 = v10[1];
              v14 = v10[2];
              v15 = ((v9 & 0xF) << 12) | ((v13 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v16 = v10[1];
              v17 = v10[2];
              v14 = v10[3];
              v15 = ((v9 & 0xF) << 18) | ((v16 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
LABEL_17:
              v9 = v15 & 0xFFFFFFC0 | v14 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          OUTLINED_FUNCTION_1_19();
          v7 = sub_24E348A28();
        }

        v8 = *(v7 + v6);
        v9 = *(v7 + v6);
        if (v8 < 0)
        {
          OUTLINED_FUNCTION_1_36();
          switch(v11)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v19[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

double sub_24E002CA8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_24DFB4104(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_24E002CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24E004CD0();
  if (v6)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {

    return sub_24E004DC4(result, v5, a1, a2);
  }

  return result;
}

uint64_t sub_24E002D68(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E002D98(uint64_t a1)
{
  sub_24E004D10(a1);
  v2 = sub_24E004D70(a1);
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_1_19();
  v11 = sub_24E005028(v7, v8, v9, v2, v4, v10);
  sub_24E00505C(v2, v4, v6 & 1);
  v12 = OUTLINED_FUNCTION_1_19();
  if (v11)
  {
    sub_24E00505C(v12, v13, v14);
    return 0;
  }

  else
  {
    sub_24E004E1C(v12, v13, v14, a1);
    v15 = v16;
    v17 = OUTLINED_FUNCTION_1_19();
    sub_24E00505C(v17, v18, v19);
  }

  return v15;
}

uint64_t sub_24E002E74@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

id sub_24E002F20(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC12GameCenterUIP33_A62BD05DE70094D27EB878D79984A7D331LocalPlayerSignInViewController_subject] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LocalPlayerSignInViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

void sub_24E003000()
{
  v1 = [v0 completionHandler];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24E347CF8();
    v5 = v4;
    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v7 = sub_24E0049A8(v3, v5, 2, 0);
    v8 = sub_24E3431A8();
    (v2)[2](v2, v8);

    _Block_release(v2);
  }

  else
  {
    sub_24E344DE8();
  }
}

id sub_24E0031D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalPlayerSignInViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E003240()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0858);
  sub_24DFB4C28(&qword_27F1E0860, &qword_27F1E0858);
  return sub_24E344E88();
}

id sub_24E0032D4()
{
  v0 = objc_opt_self();
  v1 = [v0 authenticatedLocalPlayers];
  v2 = sub_24E347F08();

  sub_24E002CA8(v2, &v6);

  if (v7)
  {
    sub_24DF88A8C(0, &qword_280BDFA90);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_24DF8894C(&v6);
  }

  v4 = [v0 local];

  return v4;
}

id sub_24E0033D4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC12GameCenterUI42AuthenticationWithOnboardingViewController_subject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0858);
  swift_allocObject();
  *&v2[v6] = sub_24E344E08();
  v7 = &v2[OBJC_IVAR____TtC12GameCenterUI42AuthenticationWithOnboardingViewController_gameBundleId];
  *v7 = a1;
  *(v7 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  [v8 setModalPresentationStyle_];
  [v8 setModalInPresentation_];

  return v8;
}

void sub_24E0034FC()
{
  ObjectType = swift_getObjectType();
  if (sub_24E003658())
  {
    v2 = [objc_opt_self() sharedTheme];
    if (v2)
    {
      v3 = v2;
      [v2 authenticateExtensionFormSheetSize];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v4.receiver = v0;
    v4.super_class = ObjectType;
    objc_msgSendSuper2(&v4, sel_preferredContentSize);
  }
}

id sub_24E003608(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

id sub_24E003658()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result traitCollection];

    v4 = [v3 userInterfaceIdiom];
    return (v4 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24E0036D4()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI42AuthenticationWithOnboardingViewController_subject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0858);
  swift_allocObject();
  *(v0 + v1) = sub_24E344E08();
  sub_24E348AE8();
  __break(1u);
}

id sub_24E00378C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24E0032D4();
  v7 = [v6 isAuthenticated];

  if (v7)
  {
    v8 = sub_24E0032D4();
    v9 = [v8 shouldShowAnyOnboardingScreen];

    if (v9)
    {

      return sub_24E003CB8(a1);
    }

    else
    {
      LOBYTE(v11) = -1;
      sub_24E344DE8();
      return [v3 _gkDismissViewController_animated_];
    }
  }

  else
  {

    return sub_24E0038A8(a1, a2 & 1);
  }
}

uint64_t sub_24E0038A8(uint64_t a1, int a2)
{
  v22 = a2;
  v3 = sub_24E346EE8();
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24E346F08();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  aBlock = 0;
  LOBYTE(v27) = 1;
  sub_24E344DF8();
  objc_allocWithZone(type metadata accessor for LocalPlayerSignInViewController());

  v10 = sub_24E002F20(v9);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  v30 = sub_24E004A58;
  v31 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_24E052CF0;
  v29 = &block_descriptor_19;
  v13 = _Block_copy(&aBlock);
  v14 = v10;

  [v14 setCompletionHandler_];
  _Block_release(v13);

  sub_24DF88A8C(0, &qword_27F1DFCD0);
  v15 = sub_24E348368();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  *(v17 + 32) = v22;
  v30 = sub_24E004AA8;
  v31 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_24E00B24C;
  v29 = &block_descriptor_26_0;
  v18 = _Block_copy(&aBlock);
  v19 = v14;

  sub_24E346EF8();
  aBlock = MEMORY[0x277D84F90];
  sub_24DFC151C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
  sub_24DFB4C28(&qword_27F1DFD10, &unk_27F1E1C90);
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v8, v5, v18);
  _Block_release(v18);

  (*(v25 + 8))(v5, v3);
  return (*(v23 + 8))(v8, v24);
}

uint64_t sub_24E003CB8(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_24E346EE8();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24E346F08();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E343F88();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343C58();
  v13 = sub_24E343F78();
  v14 = sub_24E348238();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24DE53000, v13, v14, "AuthenticationWithOnboardingViewController: Onboarding flow is going to start inlined", v15, 2u);
    MEMORY[0x253040EE0](v15, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v16 = objc_opt_self();
  v17 = [v16 shared];
  if (*(v2 + OBJC_IVAR____TtC12GameCenterUI42AuthenticationWithOnboardingViewController_gameBundleId + 8))
  {
    v18 = sub_24E347CB8();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v17 landingViewControllerWithGameBundleId_];

  v20 = [v16 shared];
  [v20 setOrigin_];

  v21 = [v16 shared];
  [v21 setDelegate_];

  aBlock = 2;
  LOBYTE(v33) = 1;
  sub_24E344DF8();
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  v22 = sub_24E348368();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v19;
  v36 = sub_24E004988;
  v37 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_24E00B24C;
  v35 = &block_descriptor_15;
  v25 = _Block_copy(&aBlock);
  v26 = v19;

  sub_24E346EF8();
  aBlock = MEMORY[0x277D84F90];
  sub_24DFC151C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
  sub_24DFB4C28(&qword_27F1DFD10, &unk_27F1E1C90);
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v8, v5, v25);
  _Block_release(v25);

  (*(v31 + 8))(v5, v3);
  return (*(v29 + 8))(v8, v30);
}

void sub_24E0041A0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24E343F88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      v23 = a1;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30);
      sub_24DF88A8C(0, &qword_27F1DFD38);
      if (swift_dynamicCast())
      {
        v12 = v22;
        if ([v22 code] == 2)
        {
          [v10 _gkDismissViewController_animated_];
          v23 = 0;
          v24 = 2;
          sub_24E344DE8();

          return;
        }
      }

      [v10 _gkDismissViewController_animated_];
      v23 = a1;
      v20 = a1;
      if (swift_dynamicCast())
      {
        v21 = v22;
      }

      else
      {
        v21 = 0;
      }

      v23 = v21;
      v24 = 0;
      sub_24E344DE8();
    }

    else
    {
      v23 = 1;
      v24 = 1;
      sub_24E344DF8();
      v13 = sub_24E0032D4();
      v14 = [v13 isAuthenticated];

      if (v14)
      {
        v15 = sub_24E0032D4();
        v16 = [v15 shouldShowAnyOnboardingScreen];

        if (v16)
        {
          sub_24E343C58();
          v17 = sub_24E343F78();
          v18 = sub_24E348238();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&dword_24DE53000, v17, v18, "Dismissing sign-in sheet and proceeding to show onboarding.", v19, 2u);
            MEMORY[0x253040EE0](v19, -1, -1);
          }

          (*(v6 + 8))(v8, v5);
          [v10 dismissViewControllerAnimated:1 completion:0];
        }
      }

      sub_24E00378C(a3, 1);
    }
  }
}

void sub_24E0044DC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong pushViewController:a2 animated:a3 & 1];
  }
}

void sub_24E004550(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong pushViewController:a2 animated:0];
  }
}

id sub_24E004708(unint64_t a1)
{
  sub_24E344DF8();
  if (a1 > 9)
  {
    type metadata accessor for GKOnboardingFlowAction(0);
    result = sub_24E348C58();
    __break(1u);
  }

  else
  {
    if (((1 << a1) & 0x1EF) != 0)
    {
      v4 = 0;
      LOBYTE(v5) = -1;
    }

    else
    {
      v4 = a1;
      LOBYTE(v5) = 1;
    }

    sub_24E344DE8();
    return [v1 _gkDismissViewController_animated_];
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI42AuthenticationWithOnboardingViewControllerC0D5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_24E004840(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_24E004880(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E0048C4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AuthenticationWithOnboardingViewController.AuthenticationEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AuthenticationWithOnboardingViewController.AuthenticationEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24E00493C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E004958(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24E0049A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24E347CB8();

  if (a4)
  {
    v8 = sub_24E347BE8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t objectdestroy_11Tm()
{

  v1 = OUTLINED_FUNCTION_1_19();

  return MEMORY[0x2821FE8E8](v1, v2, 7);
}

unint64_t sub_24E004AB4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x2821FD070]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_24E348A28();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

unint64_t sub_24E004BC0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_24E004C60(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_24E004AB4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_24E004C60(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_24E00FC14(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E004D10(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_24E348828();
  }

  else
  {
    return sub_24E3487F8();
  }
}

uint64_t sub_24E004D70(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_24E3488C8();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

uint64_t sub_24E004DC4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_24DF8BD34(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_24E004E1C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x25303F3F0](a1, a2, v7);
      sub_24DF88A8C(0, &qword_27F1E0868);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24DF88A8C(0, &qword_27F1E0868);
    if (sub_24E348858() == *(a4 + 36))
    {
      sub_24E348868();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_24E348618();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_24E348628();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

BOOL sub_24E005028(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x25303F3A0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_24E00505C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

BOOL sub_24E0050AC()
{
  swift_getObjectType();
  sub_24E009584(&qword_27F1E0870, type metadata accessor for AchievementCardCollectionViewCell);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0878);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90);
  return v0;
}

BOOL sub_24E00518C()
{
  swift_getObjectType();
  sub_24E009584(&qword_27F1E08A0, type metadata accessor for TitleWithHighlightsCollectionViewCell);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0890);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90);
  return v0;
}

BOOL sub_24E00526C()
{
  swift_getObjectType();
  sub_24E009584(&qword_27F1E08B8, type metadata accessor for AchievementHighlightCollectionViewCell);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E08A8);
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90);
  return v0;
}

BOOL GameLayerComponentCell.shouldSelect(contentsOf:with:asPartOf:)()
{
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  sub_24E347188();
  sub_24E347128();

  v0 = v3 != 0;
  sub_24DF8BFF4(v2, &qword_27F1DEE90);
  return v0;
}

uint64_t sub_24E005420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  ObjectType = swift_getObjectType();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v20 - v5;
  v21 = sub_24E347638();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  v24 = ObjectType;
  v25 = sub_24E009584(&qword_27F1E0870, type metadata accessor for AchievementCardCollectionViewCell);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0878);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_24DF8BFF4(v12, &unk_27F1EAC90);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_24E05F70C();
    v17 = v21;
    (*(v7 + 16))(v6, v9, v21);
    v18 = v22;
    (*(v4 + 104))(v6, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v4 + 8))(v6, v18);
    (*(v7 + 8))(v9, v17);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E005828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  ObjectType = swift_getObjectType();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v20 - v5;
  v21 = sub_24E347638();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  v24 = ObjectType;
  v25 = sub_24E009584(&qword_27F1E08A0, type metadata accessor for TitleWithHighlightsCollectionViewCell);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0890);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_24DF8BFF4(v12, &unk_27F1EAC90);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_24E05F70C();
    v17 = v21;
    (*(v7 + 16))(v6, v9, v21);
    v18 = v22;
    (*(v4 + 104))(v6, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v4 + 8))(v6, v18);
    (*(v7 + 8))(v9, v17);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_24E005C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  ObjectType = swift_getObjectType();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v20 - v5;
  v21 = sub_24E347638();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  v24 = ObjectType;
  v25 = sub_24E009584(&qword_27F1E08B8, type metadata accessor for AchievementHighlightCollectionViewCell);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E08A8);
  sub_24E347128();

  if (!v27)
  {
    return sub_24DF8BFF4(&v26, &qword_27F1DEE90);
  }

  sub_24DE56CE8(&v26, v28);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_24DF8BFF4(v12, &unk_27F1EAC90);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_24E05F70C();
    v17 = v21;
    (*(v7 + 16))(v6, v9, v21);
    v18 = v22;
    (*(v4 + 104))(v6, *MEMORY[0x277D21E10], v22);
    sub_24E3473B8();

    (*(v4 + 8))(v6, v18);
    (*(v7 + 8))(v9, v17);
    (*(v14 + 8))(v16, v13);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

void GameLayerComponentCell.didSelect(contentsOf:with:asPartOf:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v31 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  OUTLINED_FUNCTION_0_14();
  v29 = v7;
  v30 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v27 = v12;
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  OUTLINED_FUNCTION_0_14();
  v20 = v19;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_16();
  v32 = v4;
  v33 = v2;
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  sub_24E347188();
  sub_24E347128();

  if (!v35)
  {
    sub_24DF8BFF4(&v34, &qword_27F1DEE90);
    goto LABEL_5;
  }

  sub_24DE56CE8(&v34, v36);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
  {
    (*(v20 + 32))(v0, v17, v18);
    sub_24E05F70C();
    v23 = v27;
    v22 = v28;
    (*(v27 + 16))(v10, v14, v28);
    v25 = v29;
    v24 = v30;
    (*(v29 + 104))(v10, *MEMORY[0x277D21E10], v30);
    sub_24E3473B8();

    (*(v25 + 8))(v10, v24);
    (*(v23 + 8))(v14, v22);
    (*(v20 + 8))(v0, v18);
    __swift_destroy_boxed_opaque_existential_1(v36);
LABEL_5:
    OUTLINED_FUNCTION_18();
    return;
  }

  sub_24DF8BFF4(v17, &unk_27F1EAC90);
  sub_24E3472E8();
  __break(1u);
}

{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_8_15(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0);
  OUTLINED_FUNCTION_0_14();
  v24 = v5;
  v25 = v4;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_3();
  v22[2] = v7;
  OUTLINED_FUNCTION_4_24();
  v22[1] = swift_getAssociatedTypeWitness();
  v23 = sub_24E3474E8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_3_28();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_15_9();
  OUTLINED_FUNCTION_0_14();
  v14 = v13;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = v22 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_6_21();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_8();
  v18 = OUTLINED_FUNCTION_9_14();
  v19(v18);
  sub_24E3474F8();
  v20 = OUTLINED_FUNCTION_10_15();
  v21(v20);
  (*(v9 + 8))(v0, v23);
  (*(v14 + 8))(v17, v12);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E0063FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v19 = a3;
  v20 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v16 - v5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Achievement();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0878);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E009584(&qword_27F1E0880, type metadata accessor for Achievement);
  sub_24E347158();
  (*(v4 + 16))(v6, v19, v18);
  sub_24E347AF8();
  sub_24E347B28();
  sub_24E07217C();
  (*(v7 + 8))(v9, v17);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24E00671C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v19 = a3;
  v20 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v16 - v5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TitleWithHighlights();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0890);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E009584(&qword_27F1E0898, type metadata accessor for TitleWithHighlights);
  sub_24E347158();
  (*(v4 + 16))(v6, v19, v18);
  sub_24E347AF8();
  sub_24E347B28();
  TitleWithHighlightsCollectionViewCell.apply(contentsOf:in:with:asPartOf:)();
  (*(v7 + 8))(v9, v17);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24E006A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v19 = a3;
  v20 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v16 - v5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  v10 = type metadata accessor for AchievementHighlight();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E08A8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E009584(&qword_27F1E08B0, type metadata accessor for AchievementHighlight);
  sub_24E347158();
  (*(v4 + 16))(v6, v19, v18);
  sub_24E347AF8();
  sub_24E347B28();
  AchievementHighlightCollectionViewCell.apply(contentsOf:in:with:asPartOf:)(v14, v20);
  (*(v7 + 8))(v9, v17);
  return (*(v12 + 8))(v14, v11);
}

void GameLayerComponentCell.apply(contentsOf:in:with:asPartOf:)()
{
  OUTLINED_FUNCTION_32();
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v28 = v7;
  v29 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  OUTLINED_FUNCTION_0_14();
  v26 = v9;
  v27 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_3();
  v24[1] = v11;
  OUTLINED_FUNCTION_4_24();
  v24[0] = swift_getAssociatedTypeWitness();
  v25 = sub_24E347B18();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;
  OUTLINED_FUNCTION_3_28();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_4();
  v18 = sub_24E347188();
  OUTLINED_FUNCTION_0_14();
  v20 = v19;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_6_21();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_19_7();
  v22 = OUTLINED_FUNCTION_11_9();
  v23(v22);
  sub_24E347B28();
  (*(v3 + 48))(v0, v29, v16, v30, v5, v3);
  (*(v13 + 8))(v16, v25);
  (*(v20 + 8))(v0, v18);
  OUTLINED_FUNCTION_18();
}

BOOL sub_24E006FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v18 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - v4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Achievement();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0878);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E009584(&qword_27F1E0880, type metadata accessor for Achievement);
  sub_24E347158();
  (*(v3 + 16))(v5, v18, v17);
  sub_24E347AF8();
  sub_24E347B28();
  v14 = sub_24E0050AC();
  (*(v6 + 8))(v8, v16);
  (*(v11 + 8))(v13, v10);
  return v14;
}

BOOL sub_24E00731C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v18 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - v4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v16 - v7;
  v9 = type metadata accessor for AchievementHighlight();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E08A8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E009584(&qword_27F1E08B0, type metadata accessor for AchievementHighlight);
  sub_24E347158();
  (*(v3 + 16))(v5, v18, v17);
  sub_24E347AF8();
  sub_24E347B28();
  v14 = sub_24E00526C();
  (*(v6 + 8))(v8, v16);
  (*(v11 + 8))(v13, v10);
  return v14;
}

BOOL sub_24E007640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v18 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - v4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TitleWithHighlights();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0890);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E009584(&qword_27F1E0898, type metadata accessor for TitleWithHighlights);
  sub_24E347158();
  (*(v3 + 16))(v5, v18, v17);
  sub_24E347AF8();
  sub_24E347B28();
  v14 = sub_24E00518C();
  (*(v6 + 8))(v8, v16);
  (*(v11 + 8))(v13, v10);
  return v14;
}

void GameLayerComponentCell.shouldSelect(contentsOf:with:asPartOf:)()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_8_15(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  OUTLINED_FUNCTION_0_14();
  v24 = v5;
  v25 = v4;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_3();
  v22[2] = v7;
  OUTLINED_FUNCTION_4_24();
  v22[1] = swift_getAssociatedTypeWitness();
  v23 = sub_24E347B18();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_3_28();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_15_9();
  OUTLINED_FUNCTION_0_14();
  v14 = v13;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = v22 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_6_21();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_8();
  v18 = OUTLINED_FUNCTION_9_14();
  v19(v18);
  sub_24E347B28();
  v20 = OUTLINED_FUNCTION_10_15();
  v21(v20);
  (*(v9 + 8))(v0, v23);
  (*(v14 + 8))(v17, v12);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E007BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v17 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0);
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0888);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Achievement();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0878);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E009584(&qword_27F1E0880, type metadata accessor for Achievement);
  sub_24E347158();
  (*(v3 + 16))(v5, v17, v16);
  sub_24E347AF8();
  sub_24E3474F8();
  sub_24E005420(v13, v8, v18);
  (*(v6 + 8))(v8, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24E007EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v17 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0);
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0888);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AchievementHighlight();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E08A8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E009584(&qword_27F1E08B0, type metadata accessor for AchievementHighlight);
  sub_24E347158();
  (*(v3 + 16))(v5, v17, v16);
  sub_24E347AF8();
  sub_24E3474F8();
  sub_24E005C30(v13, v8, v18);
  (*(v6 + 8))(v8, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24E008210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v17 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0);
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0888);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TitleWithHighlights();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0890);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E009584(&qword_27F1E0898, type metadata accessor for TitleWithHighlights);
  sub_24E347158();
  (*(v3 + 16))(v5, v17, v16);
  sub_24E347AF8();
  sub_24E3474F8();
  sub_24E005828(v13, v8, v18);
  (*(v6 + 8))(v8, v15);
  return (*(v11 + 8))(v13, v10);
}

id sub_24E008798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v20 = a2;
  v21 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Achievement();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0878);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E009584(&qword_27F1E0880, type metadata accessor for Achievement);
  sub_24E347158();
  (*(v4 + 16))(v6, v20, v18);
  sub_24E347AF8();
  sub_24E347B28();
  v15 = sub_24E072620(v14, v9, v21);
  (*(v7 + 8))(v9, v19);
  (*(v12 + 8))(v14, v11);
  return v15;
}

uint64_t sub_24E008AC4(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - v3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198);
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AchievementHighlight();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E08A8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E009584(&qword_27F1E08B0, type metadata accessor for AchievementHighlight);
  sub_24E347158();
  (*(v2 + 16))(v4, v16, v15);
  sub_24E347AF8();
  sub_24E347B28();
  (*(v5 + 8))(v7, v14);
  (*(v10 + 8))(v12, v9);
  return 0;
}

uint64_t sub_24E008DD0(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - v3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198);
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TitleWithHighlights();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0890);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  sub_24E009584(&qword_27F1E0898, type metadata accessor for TitleWithHighlights);
  sub_24E347158();
  (*(v2 + 16))(v4, v16, v15);
  sub_24E347AF8();
  sub_24E347B28();
  (*(v5 + 8))(v7, v14);
  (*(v10 + 8))(v12, v9);
  return 0;
}

void GameLayerComponentCell.contextMenu(contentsOf:with:asPartOf:indexPath:)()
{
  OUTLINED_FUNCTION_32();
  v32 = v1;
  v3 = v2;
  v5 = v4;
  v30 = v6;
  v31 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  OUTLINED_FUNCTION_0_14();
  v28 = v9;
  v29 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_3();
  v26 = v11;
  OUTLINED_FUNCTION_4_24();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = sub_24E347B18();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  OUTLINED_FUNCTION_3_28();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_4();
  v24 = sub_24E347188();
  OUTLINED_FUNCTION_0_14();
  v19 = v18;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  OUTLINED_FUNCTION_12_12();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_19_7();
  v21 = OUTLINED_FUNCTION_11_9();
  v22(v21);
  sub_24E347B28();
  (*(v3 + 72))(v0, v16, v31, v32, v5, v3);
  (*(v13 + 8))(v16, v27);
  (*(v19 + 8))(v0, v24);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E009390()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_24E347248();
}

uint64_t sub_24E009584(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_8_15(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 136) = a3;
  *(v4 - 128) = v3;
  *(v4 - 144) = a2;
}

uint64_t OUTLINED_FUNCTION_12_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_13()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_9()
{

  return sub_24E347188();
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return sub_24E347158();
}

uint64_t OUTLINED_FUNCTION_20_8()
{

  return sub_24E347158();
}

id sub_24E0097C4()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI20BlockBasedFocusGuide_isEnabledBlock];

  LOBYTE(v1) = v1(v2);

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for BlockBasedFocusGuide();
  return objc_msgSendSuper2(&v4, sel_isEnabled);
}

id sub_24E009898(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BlockBasedFocusGuide();
  return objc_msgSendSuper2(&v4, sel_setEnabled_, a1 & 1);
}

id sub_24E00991C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlockBasedFocusGuide();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E009990()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E009A00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_24E009B50(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

char *sub_24E009D80(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI21EmptyStatePlatterView_arcadeImage;
  type metadata accessor for ArtworkView();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC12GameCenterUI21EmptyStatePlatterView_emptyStateView;
  type metadata accessor for EmptyStateView();
  *(v1 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_24E243C34(a1 & 1);
  v6 = OBJC_IVAR____TtC12GameCenterUI21EmptyStatePlatterView_emptyStateView;
  v7 = *&v5[OBJC_IVAR____TtC12GameCenterUI21EmptyStatePlatterView_emptyStateView];
  v8 = v5;
  [v7 setInsetsLayoutMarginsFromSafeArea_];
  [v8 addSubview_];
  sub_24E00A314();

  return v8;
}

void sub_24E009E50()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI21EmptyStatePlatterView_arcadeImage;
  type metadata accessor for ArtworkView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI21EmptyStatePlatterView_emptyStateView;
  type metadata accessor for EmptyStateView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E009F1C(double a1, double a2)
{
  v5 = sub_24E348BC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  [*(v2 + OBJC_IVAR____TtC12GameCenterUI21EmptyStatePlatterView_emptyStateView) measurementsWithFitting:v2 in:{a1, a2}];
  if (qword_27F1DDCC0 != -1)
  {
    swift_once();
  }

  v10 = qword_27F20B560;
  v11 = unk_27F20B568;
  __swift_project_boxed_opaque_existential_1(qword_27F20B548, qword_27F20B560);
  sub_24E2548A0(v10, v11);
  OUTLINED_FUNCTION_1_37();
  sub_24E344198();
  v12 = *(v6 + 8);
  v12(v9, v5);
  v13 = qword_27F20B678;
  v14 = unk_27F20B680;
  __swift_project_boxed_opaque_existential_1(qword_27F20B660, qword_27F20B678);
  sub_24E2548A0(v13, v14);
  OUTLINED_FUNCTION_1_37();
  sub_24E344198();
  v12(v9, v5);
  return sub_24E348558();
}

id sub_24E00A110(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppStorePlatterData.ContentData(0);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for EmptyStateData();
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  sub_24E00A4D4(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24DFE227C(v8, v12);
    sub_24E2D93A0(v12, a2);
    v13 = type metadata accessor for EmptyStateData;
    v14 = v12;
  }

  else
  {
    v13 = type metadata accessor for AppStorePlatterData.ContentData;
    v14 = v8;
  }

  sub_24E00A538(v14, v13);
  return [v2 setNeedsLayout];
}

void sub_24E00A260(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EmptyStatePlatterView();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, a1);
  sub_24E00A314();
}

void sub_24E00A314()
{
  v1 = sub_24DFC5830(v0);
  v2 = *(*&v0[OBJC_IVAR____TtC12GameCenterUI21EmptyStatePlatterView_emptyStateView] + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageView);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = 80.0;
  if (v1)
  {
    v5 = 50.0;
  }

  v6 = [v3 configurationWithPointSize_];
  [v4 setPreferredSymbolConfiguration_];
}

void sub_24E00A3F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21EmptyStatePlatterView_emptyStateView);
}

id sub_24E00A430()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyStatePlatterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E00A4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStorePlatterData.ContentData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E00A538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E00A5AC()
{
  v0 = sub_24E342EE8();
  __swift_allocate_value_buffer(v0, qword_27F20A9B0);
  __swift_project_value_buffer(v0, qword_27F20A9B0);
  return sub_24E342EA8();
}

uint64_t type metadata accessor for FriendWhoHasEarnedThisAchievementView()
{
  result = qword_27F1E0958;
  if (!qword_27F1E0958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E00A674()
{
  result = type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E00A704()
{
  v1 = sub_24E345FF8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0968);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *v7 = sub_24E345BF8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0970);
  sub_24E00A894(v0, &v7[*(v8 + 44)]);
  sub_24E345FE8();
  sub_24E00B080();
  sub_24E346778();
  (*(v2 + 8))(v4, v1);
  return sub_24DF8BFF4(v7, &qword_27F1E0968);
}

uint64_t sub_24E00A894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0980);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v45 - v6;
  HasEarnedThisAchievementViewModel = type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel();
  v7 = (a1 + *(HasEarnedThisAchievementViewModel + 36));
  v9 = *v7;
  v8 = v7[1];
  v57[0] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0988);
  sub_24E346B78();
  v10 = __src[0];
  v11 = __src[1];
  type metadata accessor for FriendWhoHasEarnedThisAchievementView();
  sub_24E346E28();
  sub_24E3453D8();
  __src[0] = v9;
  __src[1] = v8;
  __src[2] = 1;
  __src[3] = v10;
  __src[4] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0990);
  sub_24E00B0E4();
  sub_24E346758();
  memcpy(v54, __src, sizeof(v54));
  sub_24DF8BFF4(v54, &qword_27F1E0990);
  v49 = sub_24E345D08();
  LOBYTE(__src[0]) = 1;
  sub_24E00AD58(a1, v55);
  *&v53[7] = v55[0];
  *&v53[23] = v55[1];
  *&v53[39] = v55[2];
  *&v53[55] = v55[3];
  v47 = LOBYTE(__src[0]);
  v48 = sub_24E346218();
  sub_24E3451B8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = (a1 + *(HasEarnedThisAchievementViewModel + 28));
  v21 = v20[1];
  __src[0] = *v20;
  __src[1] = v21;
  sub_24DF90C4C();

  v22 = sub_24E3464E8();
  v24 = v23;
  LOBYTE(a1) = v25;
  sub_24E346358();
  v26 = sub_24E3464B8();
  v28 = v27;
  v30 = v29;

  sub_24DFA92EC(v22, v24, a1 & 1);

  sub_24E3469E8();
  v31 = sub_24E346468();
  v33 = v32;
  LODWORD(HasEarnedThisAchievementViewModel) = v34;
  v36 = v35;

  sub_24DFA92EC(v26, v28, v30 & 1);

  v37 = v52;
  sub_24DF8BD90(v51, v52, &qword_27F1E0980);
  v38 = v50;
  sub_24DF8BD90(v37, v50, &qword_27F1E0980);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E09A8);
  v40 = v39[12];
  v41 = v49;
  v57[0] = v49;
  v57[1] = 0;
  LOBYTE(v24) = v47;
  LOBYTE(v57[2]) = v47;
  memcpy(&v57[2] + 1, v53, 0x47uLL);
  LOBYTE(v10) = v48;
  LOBYTE(v57[11]) = v48;
  *(&v57[11] + 1) = *v56;
  HIDWORD(v57[11]) = *&v56[3];
  v57[12] = v13;
  v57[13] = v15;
  v57[14] = v17;
  v57[15] = v19;
  LOBYTE(v57[16]) = 0;
  memcpy((v38 + v40), v57, 0x81uLL);
  v42 = v38 + v39[16];
  *v42 = 0;
  *(v42 + 8) = 1;
  v43 = v38 + v39[20];
  *v43 = v31;
  *(v43 + 8) = v33;
  LOBYTE(v39) = HasEarnedThisAchievementViewModel & 1;
  *(v43 + 16) = HasEarnedThisAchievementViewModel & 1;
  *(v43 + 24) = v36;
  sub_24DF8BD90(v57, __src, &qword_27F1E09B0);
  sub_24DF82DD4(v31, v33, v39);

  sub_24DF8BFF4(v51, &qword_27F1E0980);
  sub_24DFA92EC(v31, v33, v39);

  __src[0] = v41;
  __src[1] = 0;
  LOBYTE(__src[2]) = v24;
  memcpy(&__src[2] + 1, v53, 0x47uLL);
  v59 = v10;
  *v60 = *v56;
  *&v60[3] = *&v56[3];
  v61 = v13;
  v62 = v15;
  v63 = v17;
  v64 = v19;
  v65 = 0;
  sub_24DF8BFF4(__src, &qword_27F1E09B0);
  return sub_24DF8BFF4(v52, &qword_27F1E0980);
}

uint64_t sub_24E00AD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  HasEarnedThisAchievementViewModel = type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel();
  sub_24DF90C4C();

  v3 = sub_24E3464E8();
  v5 = v4;
  v7 = v6;
  type metadata accessor for FriendWhoHasEarnedThisAchievementView();
  v8 = sub_24E3464B8();
  v10 = v9;
  v12 = v11;
  sub_24DFA92EC(v3, v5, v7 & 1);

  v13 = sub_24E346478();
  v43 = v14;
  v16 = v15;
  v18 = v17;
  sub_24DFA92EC(v8, v10, v12 & 1);

  if (*(a1 + *(HasEarnedThisAchievementViewModel + 24) + 8))
  {

    v19 = sub_24E3464E8();
    v21 = v20;
    v23 = v22;
    v37 = sub_24E3464B8();
    v38 = v24;
    v41 = v16;
    v26 = v25;
    sub_24DFA92EC(v19, v21, v23 & 1);

    v27 = sub_24E346478();
    v29 = v28;
    v39 = v13;
    v31 = v30;
    v33 = v32;
    v34 = v26 & 1;
    v16 = v41;
    sub_24DFA92EC(v37, v38, v34);

    v35 = v31 & 1;
    v13 = v39;
    sub_24DF82DD4(v27, v29, v35);
  }

  else
  {
    v27 = 0;
    v29 = 0;
    v35 = 0;
    v33 = 0;
  }

  sub_24DF82DD4(v13, v43, v16 & 1);

  sub_24E00B1C4(v27, v29, v35, v33);
  sub_24E00B208(v27, v29, v35, v33);
  *a2 = v13;
  *(a2 + 8) = v43;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  *(a2 + 32) = v27;
  *(a2 + 40) = v29;
  *(a2 + 48) = v35;
  *(a2 + 56) = v33;
  sub_24E00B208(v27, v29, v35, v33);
  sub_24DFA92EC(v13, v43, v16 & 1);
}

unint64_t sub_24E00B080()
{
  result = qword_27F1E0978;
  if (!qword_27F1E0978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0978);
  }

  return result;
}

unint64_t sub_24E00B0E4()
{
  result = qword_27F1E0998;
  if (!qword_27F1E0998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0990);
    sub_24E00B170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0998);
  }

  return result;
}

unint64_t sub_24E00B170()
{
  result = qword_27F1E09A0;
  if (!qword_27F1E09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E09A0);
  }

  return result;
}

uint64_t sub_24E00B1C4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24DF82DD4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24E00B208(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24DFA92EC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24E00B24C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

__n128 sub_24E00B290()
{
  qword_27F1E09D0 = MEMORY[0x277D839F8];
  unk_27F1E09D8 = MEMORY[0x277D22A30];
  qword_27F1E09B8 = 0x4028000000000000;
  qword_27F1E09F8 = MEMORY[0x277D839F8];
  unk_27F1E0A00 = MEMORY[0x277D22A30];
  qword_27F1E09E0 = 0x4020000000000000;
  qword_27F1E0A30 = MEMORY[0x277D839F8];
  unk_27F1E0A38 = MEMORY[0x277D22A30];
  qword_27F1E0A18 = 0x4018000000000000;
  qword_27F1E0A58 = MEMORY[0x277D839F8];
  unk_27F1E0A60 = MEMORY[0x277D22A30];
  qword_27F1E0A40 = 0x4024000000000000;
  __asm { FMOV            V0.2D, #28.0 }

  xmmword_27F1E0A08 = result;
  return result;
}

id GKMultiplayerButtonHeaderView.init(cancelButtonHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v8[4] = a1;
    v8[5] = a2;
    OUTLINED_FUNCTION_1_35();
    v8[1] = 1107296256;
    v8[2] = sub_24E00B24C;
    v8[3] = &block_descriptor_16;
    v5 = _Block_copy(v8);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithMinimumValue:0 maximumValue:0 initialValue:0 cancelButtonHandler:v5];
  sub_24DE73FA0(a1);
  _Block_release(v5);
  return v6;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *GKMultiplayerButtonHeaderView.init(minimumValue:maximumValue:initialValue:cancelButtonHandler:)(Swift::Int a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getObjectType();
  *(v5 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_backgroundView) = 0;
  *(v5 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_bottomSeparator) = 0;
  v9 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v10 = OUTLINED_FUNCTION_1_38();
  v13 = [v11 v12];
  *(v5 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_iconView) = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v15 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_titleLabel;
  *(v5 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_titleLabel) = v14;
  [v14 setNumberOfLines_];
  v16 = *(v5 + v15);
  v17 = objc_opt_self();
  v18 = *MEMORY[0x277D76968];
  v19 = *MEMORY[0x277D76840];
  v20 = v16;
  v21 = [v17 _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
  [v20 setFont_];

  [*(v6 + v15) setAdjustsFontForContentSizeCategory_];
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v23 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_playerCountLabel;
  *(v6 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_playerCountLabel) = v22;
  [v22 setNumberOfLines_];
  v24 = *(v6 + v23);
  v25 = [v17 _preferredFontForTextStyle_maximumContentSizeCategory_];
  [v24 setFont_];

  [*(v6 + v23) setAdjustsFontForContentSizeCategory_];
  *(v6 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_cancelButton) = [objc_allocWithZone(type metadata accessor for CloseButton()) init];
  v26 = (v6 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_cancelButtonHandler);
  *v26 = a4;
  v26[1] = a5;
  v48 = a4;
  sub_24DF88BEC(a4);
  v27 = OUTLINED_FUNCTION_1_38();
  v30 = objc_msgSendSuper2(v28, v29, v27);
  v31 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_titleLabel;
  v32 = *&v30[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_titleLabel];
  v33 = objc_opt_self();
  v34 = v30;
  v35 = v32;
  v36 = [v33 labelColor];
  [v35 setTextColor_];

  v37 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_playerCountLabel;
  v38 = *&v34[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_playerCountLabel];
  v39 = [v33 secondaryLabelColor];
  [v38 setTextColor_];

  v40 = [*&v34[v37] layer];
  [v40 setCompositingFilter_];

  GKMultiplayerButtonHeaderView.updateCount(minPlayers:maxPlayers:)(a1, a2);
  v41 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_cancelButton;
  [*&v34[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_cancelButton] addTarget:v34 action:sel_cancelPressed_ forControlEvents:0x2000];
  v42 = *&v30[v31];
  v43 = v34;
  [v43 addSubview_];
  [v43 addSubview_];
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    [v43 addSubview_];
  }

  [v43 addSubview_];
  v44 = [v33 whiteColor];
  [v43 setTintColor_];

  sub_24DE73FA0(v48);
  return v43;
}

Swift::Void __swiftcall GKMultiplayerButtonHeaderView.updateCount(minPlayers:maxPlayers:)(Swift::Int minPlayers, Swift::Int maxPlayers)
{
  v5 = *&v2[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_playerCountLabel];
  v6 = &selRef_smallIconURLString;
  v7 = [v5 text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_24E347CF8();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  if (minPlayers >= maxPlayers)
  {
    v19 = sub_24E347CB8();
    v20 = GKGameCenterUIFrameworkBundle();
    v21 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D83B88];
    *(v22 + 16) = xmmword_24E367D20;
    v24 = MEMORY[0x277D83C10];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = minPlayers;
  }

  else
  {
    v12 = sub_24E347CB8();
    v13 = GKGameCenterUIFrameworkBundle();
    v14 = v9;
    v15 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    v9 = v14;
    v6 = &selRef_smallIconURLString;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24E36A270;
    v17 = MEMORY[0x277D83B88];
    v18 = MEMORY[0x277D83C10];
    *(v16 + 56) = MEMORY[0x277D83B88];
    *(v16 + 64) = v18;
    *(v16 + 32) = minPlayers;
    *(v16 + 96) = v17;
    *(v16 + 104) = v18;
    *(v16 + 72) = maxPlayers;
  }

  v25 = sub_24E347CC8();
  v27 = v26;

  sub_24DFA0B40(v25, v27, v5);
  v28 = [v5 v6[146]];
  if (!v28)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_19;
  }

  v29 = v28;
  v30 = sub_24E347CF8();
  v32 = v31;

  if (!v11)
  {
    if (!v32)
    {
      return;
    }

    goto LABEL_19;
  }

  if (!v32)
  {
LABEL_19:

LABEL_20:

    [v2 setNeedsLayout];
    return;
  }

  if (v9 != v30 || v11 != v32)
  {
    v34 = sub_24E348C08();

    if (v34)
    {
      return;
    }

    goto LABEL_20;
  }
}

void sub_24E00BCB8()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_bottomSeparator) = 0;
  sub_24E348AE8();
  __break(1u);
}

void GKMultiplayerButtonHeaderView.wantsMaterialBackground(scrollOffset:)(double a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_backgroundView;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_backgroundView);
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = [objc_opt_self() effectWithStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  sub_24E00BF38(v6);
  sub_24E00BFBC([objc_allocWithZone(MEMORY[0x277D75D18]) init]);
  v7 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_bottomSeparator;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 separatorColor];
    [v10 setBackgroundColor_];
  }

  v4 = *(v1 + v3);
  if (v4)
  {
LABEL_5:
    v12 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_bottomSeparator;
    swift_beginAccess();
    v13 = *(v1 + v12);
    if (v13)
    {
      v14 = a1 / 30.0;
      if (v14 < 0.0)
      {
        v14 = 0.0;
      }

      if (a1 / 30.0 >= 1.0)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = v14;
      }

      v16 = v4;
      v17 = v13;
      v18 = [v16 layer];
      *&v19 = v15;
      [v18 setOpacity_];

      v20 = [v17 layer];
      *&v21 = v15;
      [v20 setOpacity_];
    }
  }
}

void sub_24E00BF38(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_backgroundView;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_backgroundView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_backgroundView;
    v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_backgroundView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_24E00C080();
}

void sub_24E00BFBC(void *a1)
{
  sub_24E00C0A8();
  v3 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_bottomSeparator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_24E00C0FC();
}

id sub_24E00C080()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_backgroundView];
  if (v1)
  {
    return [v0 insertSubview:v1 atIndex:0];
  }

  return result;
}

id sub_24E00C0A8()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_bottomSeparator;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result removeFromSuperview];
  }

  return result;
}

id sub_24E00C0FC()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_bottomSeparator;
  result = swift_beginAccess();
  v3 = *&v0[v1];
  if (v3)
  {
    return [v0 insertSubview:v3 atIndex:1];
  }

  return result;
}

uint64_t sub_24E00C158@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F1DD648 != -1)
  {
    swift_once();
  }

  sub_24E00CE7C(&qword_27F1E09B8, a1);
  result = GKIsPadUIIdiom();
  if (result)
  {
    v4 = MEMORY[0x277D839F8];
    v5 = MEMORY[0x277D22A30];
    *&v3 = 0x4040000000000000;
    __swift_destroy_boxed_opaque_existential_1(a1 + 96);
    return sub_24DF88BF0(&v3, a1 + 96);
  }

  return result;
}

double GKMultiplayerButtonHeaderView.measurements(fitting:in:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_24E00CB4C(a1, v2, a2);
}

CGSize __swiftcall GKMultiplayerButtonHeaderView.sizeThatFits(_:)(CGSize a1)
{
  v2 = sub_24E00CB4C(v1, v1, a1.width);
  result.height = v3;
  result.width = v2;
  return result;
}

Swift::Void __swiftcall GKMultiplayerButtonHeaderView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24E344048();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63.receiver = v1;
  v63.super_class = ObjectType;
  objc_msgSendSuper2(&v63, sel_layoutSubviews, v5);
  sub_24E00C158(&v34);
  v8 = *&v1[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_iconView];
  v9 = sub_24DF88A8C(0, &qword_27F1DFF00);
  v10 = MEMORY[0x277D22A58];
  v52 = v9;
  v53 = MEMORY[0x277D22A58];
  v51 = v8;
  v11 = *&v1[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_titleLabel];
  v55 = sub_24DF88A8C(0, &qword_27F1E0AA0);
  v56 = MEMORY[0x277D22A68];
  v54 = v11;
  v12 = *&v1[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_playerCountLabel];
  v58 = v55;
  v59 = MEMORY[0x277D22A68];
  v57 = v12;
  v13 = *&v1[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_cancelButton];
  v61 = type metadata accessor for CloseButton();
  v62 = v10;
  v60 = v13;
  v14 = v8;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  OUTLINED_FUNCTION_2_30();
  [v1 layoutMargins];
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    sub_24E1E24A4(v1, v18, v19, v20, v21, v22, v23, v24, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  }

  else
  {
    sub_24E1E2EF4(v1, v18, v19, v20, v21, v22, v23, v24, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  }

  (*(v4 + 8))(v7, v3);
  v25 = *&v1[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_backgroundView];
  if (v25)
  {
    v26 = v25;
    OUTLINED_FUNCTION_2_30();
    [v26 setFrame_];
  }

  v27 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_bottomSeparator;
  swift_beginAccess();
  v28 = *&v1[v27];
  if (v28)
  {
    swift_endAccess();
    v29 = v28;
    OUTLINED_FUNCTION_2_30();
    v30 = CGRectGetHeight(v64) + -1.0;
    OUTLINED_FUNCTION_2_30();
    [v29 setFrame_];

    sub_24E00CDC4(&v34);
  }

  else
  {
    sub_24E00CDC4(&v34);
    swift_endAccess();
  }
}

void GKMultiplayerButtonHeaderView.apply(game:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_titleLabel);
  v4 = [a1 name];
  v5 = sub_24E347CF8();
  v7 = v6;

  sub_24DFA0B40(v5, v7, v3);
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    v8 = *(v1 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_iconView);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v13[4] = sub_24E00CE18;
    v13[5] = v9;
    OUTLINED_FUNCTION_1_35();
    v13[1] = 1107296256;
    v13[2] = sub_24E00C7C0;
    v13[3] = &block_descriptor_3;
    v10 = _Block_copy(v13);
    v11 = v8;

    v12 = [a1 loadIconForStyle:2 withCompletionHandler:v10];
    _Block_release(v10);
  }
}

void sub_24E00C7C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, a4);
}

uint64_t sub_24E00C924()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_cancelButtonHandler);
  if (v1)
  {
    return v1();
  }

  return result;
}

id GKMultiplayerButtonHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GKMultiplayerButtonHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_24E00CB4C(uint64_t a1, char *a2, double a3)
{
  v25 = a1;
  v5 = sub_24E348BC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_24E00C158(v26);
  v9 = *&a2[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_iconView];
  v10 = sub_24DF88A8C(0, &qword_27F1DFF00);
  v11 = MEMORY[0x277D22A58];
  v34 = v10;
  v35 = MEMORY[0x277D22A58];
  v33 = v9;
  v12 = *&a2[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_titleLabel];
  v37 = sub_24DF88A8C(0, &qword_27F1E0AA0);
  v38 = MEMORY[0x277D22A68];
  v36 = v12;
  v13 = *&a2[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_playerCountLabel];
  v40 = v37;
  v41 = MEMORY[0x277D22A68];
  v39 = v13;
  v14 = *&a2[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerButtonHeaderView_cancelButton];
  v43 = type metadata accessor for CloseButton();
  v44 = v11;
  v42 = v14;
  v15 = v9;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  [a2 layoutMargins];
  v19 = v28;
  v20 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  sub_24E2548A0(v19, v20);
  sub_24E344198();
  v21 = *(v6 + 8);
  v21(v8, v5);
  v22 = v31;
  v23 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_24E2548A0(v22, v23);
  sub_24E344198();
  v21(v8, v5);
  sub_24E00CDC4(v26);
  return a3;
}

id OUTLINED_FUNCTION_2_30()
{

  return [v0 (v1 + 3832)];
}

BOOL sub_24E00CF10()
{
  if ([v0 isHidden])
  {
    return 1;
  }

  sub_24E00CF98(v0);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_24E00CF98(v0);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v6 == 0;
}

uint64_t sub_24E00CF98(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

uint64_t sub_24E00CFFC()
{
  v1 = v0;
  v2 = sub_24E3442D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &__src[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &__src[-1] - v7;
  sub_24E3442B8();
  sub_24E00D258(v1, __src);
  v9 = swift_allocObject();
  memcpy((v9 + 16), __src, 0x48uLL);
  sub_24E3442C8();

  v10 = *(v3 + 8);
  v10(v8, v2);
  (*(v3 + 32))(v8, v6, v2);
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v14 = v1[8];
  __src[3] = v2;
  __src[4] = MEMORY[0x277D226E0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__src);
  (*(v3 + 16))(boxed_opaque_existential_1, v8, v2);
  MEMORY[0x25303B510](__src, v11, v12, v13, v14);
  return (v10)(v8, v2);
}

uint64_t sub_24E00D2A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24E00D2E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E00D348(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E00D468();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_24E00D3A0()
{
  result = qword_27F1E0AA8;
  if (!qword_27F1E0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0AA8);
  }

  return result;
}

unint64_t sub_24E00D3F8()
{
  result = qword_27F1E0AB0;
  if (!qword_27F1E0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0AB0);
  }

  return result;
}

unint64_t sub_24E00D468()
{
  result = qword_27F1E0AB8;
  if (!qword_27F1E0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0AB8);
  }

  return result;
}

BOOL sub_24E00D4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24E348D18();
  sub_24E347DC8();
  sub_24E348D68();
  OUTLINED_FUNCTION_7_17();
  do
  {
    v10 = v9 & v4;
    v11 = (v5 << (v9 & v4)) & *(v3 + (((v9 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (*(a3 + 48) + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = sub_24E348C08();
    v9 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

uint64_t sub_24E00D594(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_24E348D18(), sub_24E17A62C(a1), sub_24E347DC8(), , v4 = sub_24E348D68(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xED00007265646165;
      v9 = 0x48656C69666F7270;
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          v8 = 0xE600000000000000;
          v9 = 0x6C6961746564;
          break;
        case 2:
          v8 = 0xE800000000000000;
          v9 = 0x656D616E6B63696ELL;
          break;
        case 3:
          v9 = 0x616C506C6C616D73;
          v8 = 0xEF64726143726579;
          break;
        case 4:
          OUTLINED_FUNCTION_21_6();
          v9 = v11 + 1;
          v8 = 0x800000024E39CA00;
          break;
        case 5:
          v9 = 0x636F4C6C6C616D73;
          v14 = 7370091;
          goto LABEL_19;
        case 6:
          v9 = 0x65726F7453707061;
          v8 = 0xEE0070756B636F4CLL;
          break;
        case 7:
          OUTLINED_FUNCTION_21_6();
          v9 = v13 + 1;
          v8 = 0x800000024E39CA30;
          break;
        case 8:
          v9 = 0x6E49726579616C70;
          v8 = 0xED00007261426F66;
          break;
        case 9:
          OUTLINED_FUNCTION_24_6();
          v8 = v12 + 1275;
          v9 = 0x6174654474786574;
          break;
        case 0xA:
          v9 = 0x615064656C746974;
          v8 = 0xEF68706172676172;
          break;
        case 0xB:
          v9 = 0xD000000000000010;
          v8 = 0x800000024E39CA70;
          break;
        case 0xC:
          v9 = 0xD000000000000010;
          v8 = 0x800000024E39CA90;
          break;
        case 0xD:
          v9 = 0x666F725074696465;
          v8 = 0xEF6B6E694C656C69;
          break;
        case 0xE:
          OUTLINED_FUNCTION_24_6();
          v8 = v10 + 2807;
          v9 = 0x6461654865676170;
          break;
        case 0xF:
          v9 = 0x646E656972466F6ELL;
          v8 = 0xE900000000000073;
          break;
        case 0x10:
          v9 = 0x6979616C50776F6ELL;
          v8 = 0xEA0000000000676ELL;
          break;
        case 0x11:
          v9 = 0x65756E69746E6F63;
          v8 = 0xEF676E6979616C50;
          break;
        case 0x12:
          v9 = 0x7974697669746361;
          v8 = 0xEC00000064656546;
          break;
        case 0x13:
          v8 = 0xE700000000000000;
          v9 = 0x72616265646973;
          break;
        case 0x14:
          v9 = 0x6C6F686563616C70;
          v14 = 7497060;
LABEL_19:
          v8 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x15:
          v8 = 0xE600000000000000;
          v9 = 0x656E696C6E69;
          break;
        default:
          break;
      }

      v15 = 0x48656C69666F7270;
      v16 = 0xED00007265646165;
      switch(a1)
      {
        case 1:
          v16 = 0xE600000000000000;
          v15 = 0x6C6961746564;
          break;
        case 2:
          v16 = 0xE800000000000000;
          v15 = 0x656D616E6B63696ELL;
          break;
        case 3:
          v15 = 0x616C506C6C616D73;
          v16 = 0xEF64726143726579;
          break;
        case 4:
          OUTLINED_FUNCTION_21_6();
          v15 = v18 + 1;
          v16 = 0x800000024E39CA00;
          break;
        case 5:
          v15 = 0x636F4C6C6C616D73;
          v21 = 7370091;
          goto LABEL_42;
        case 6:
          v15 = 0x65726F7453707061;
          v16 = 0xEE0070756B636F4CLL;
          break;
        case 7:
          OUTLINED_FUNCTION_21_6();
          v15 = v20 + 1;
          v16 = 0x800000024E39CA30;
          break;
        case 8:
          v15 = 0x6E49726579616C70;
          v16 = 0xED00007261426F66;
          break;
        case 9:
          OUTLINED_FUNCTION_24_6();
          v16 = v19 + 1275;
          v15 = 0x6174654474786574;
          break;
        case 10:
          v15 = 0x615064656C746974;
          v16 = 0xEF68706172676172;
          break;
        case 11:
          v15 = 0xD000000000000010;
          v16 = 0x800000024E39CA70;
          break;
        case 12:
          v15 = 0xD000000000000010;
          v16 = 0x800000024E39CA90;
          break;
        case 13:
          v15 = 0x666F725074696465;
          v16 = 0xEF6B6E694C656C69;
          break;
        case 14:
          OUTLINED_FUNCTION_24_6();
          v16 = v17 + 2807;
          v15 = 0x6461654865676170;
          break;
        case 15:
          v15 = 0x646E656972466F6ELL;
          v16 = 0xE900000000000073;
          break;
        case 16:
          v15 = 0x6979616C50776F6ELL;
          v16 = 0xEA0000000000676ELL;
          break;
        case 17:
          v15 = 0x65756E69746E6F63;
          v16 = 0xEF676E6979616C50;
          break;
        case 18:
          v15 = 0x7974697669746361;
          v16 = 0xEC00000064656546;
          break;
        case 19:
          v16 = 0xE700000000000000;
          v15 = 0x72616265646973;
          break;
        case 20:
          v15 = 0x6C6F686563616C70;
          v21 = 7497060;
LABEL_42:
          v16 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 21:
          v16 = 0xE600000000000000;
          v15 = 0x656E696C6E69;
          break;
        default:
          break;
      }

      if (v9 == v15 && v8 == v16)
      {
        break;
      }

      v23 = sub_24E348C08();

      if ((v23 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v23 & 1;
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_24E00DBF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_24E348D18();
    MEMORY[0x25303F880](a1);
    v5 = sub_24E348D68();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

BOOL sub_24E00DCA8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_24E3488E8();
  OUTLINED_FUNCTION_7_17();
  do
  {
    v8 = v7 & v3;
    v9 = (v4 << (v7 & v3)) & *(v2 + (((v7 & v3) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    sub_24DF8BD34(*(a2 + 48) + 40 * v8, v13);
    v11 = MEMORY[0x25303F450](v13, a1);
    sub_24DF8BE60(v13);
    v7 = v8 + 1;
  }

  while ((v11 & 1) == 0);
  return v10;
}

BOOL sub_24E00DD68(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_24E3488B8();

    return v4 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    sub_24E00FDDC();
    v6 = sub_24E348618();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v10 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v11 = *(*(a2 + 48) + 8 * v8);
      v12 = sub_24E348628();

      v6 = v8 + 1;
    }

    while ((v12 & 1) == 0);
    return v10;
  }
}

uint64_t sub_24E00DE9C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0338);
  sub_24E00FE20();
  sub_24E347C78();
  OUTLINED_FUNCTION_20_9();
  MEMORY[0x25303E950](v4, v5);

  MEMORY[0x25303E950](16191, 0xE200000000000000);

  sub_24E348BA8();
  OUTLINED_FUNCTION_25_8();
  MEMORY[0x25303E950](a2, v2);

  return a2;
}

uint64_t sub_24E00DFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25303E950](a1, a2);

  MEMORY[0x25303E950](16191, 0xE200000000000000);

  sub_24E348BA8();
  OUTLINED_FUNCTION_25_8();
  MEMORY[0x25303E950](a3, v3);

  return a3;
}

uint64_t sub_24E00E084(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v8 = type metadata accessor for ActivityFeedRelationshipAchievement();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v146 = (&v140 - v13);
  *&__dst[0] = a1;
  *(&__dst[0] + 1) = a2;
  *&v149 = 16191;
  *(&v149 + 1) = 0xE200000000000000;
  sub_24DF90C4C();
  v14 = OUTLINED_FUNCTION_17_11();
  v15 = v14;
  v16 = *(v4 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_objectGraph);
  if (!v16 || *(v14 + 16) < 3uLL)
  {

    return 0;
  }

  v144 = v12;
  sub_24DFFA840(0, 1, v14);
  v18 = v15[5];
  v145 = v15[4];
  sub_24DFFA840(1, 1, v15);
  v19 = v15[7];
  v147 = v15[6];
  sub_24DFFA840(2, 1, v15);
  v20 = v15[8];
  v21 = v15[9];

  v148 = v19;

  v23 = HIBYTE(v21) & 0xF;
  v24 = v20 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
LABEL_75:

    v42 = v145;
    v43 = v145 == 0x726579616C70 && v18 == 0xE600000000000000;
    if (v43 || (OUTLINED_FUNCTION_8_16() & 1) != 0)
    {

      if (*(v4 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_componentData))
      {
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_5_24();
        v45 = *(v44 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
        v46 = v45[2];
        v141 = v44;

        v146 = v45;

        v17 = 0;
        v145 = -v46;
        v144 = MEMORY[0x277D84F90];
LABEL_82:
        v47 = v17 + 1;
        v48 = 7 * v17;
        while (v145 + v47 != 1)
        {
          v17 = v47;
          if (v47 - 1 >= v146[2])
          {
            __break(1u);
            goto LABEL_152;
          }

          v50 = v146[v48 + 4];
          v49 = v146[v48 + 5];
          v51 = v146[v48 + 6];
          v52 = v146[v48 + 7];
          v53 = v146[v48 + 8];
          v54 = v146[v48 + 9];
          v55 = v146[v48 + 10];
          if (v50 == v147 && v49 == v148)
          {
            v50 = v147;
LABEL_92:

            v57 = v55;
            v58 = v144;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&__dst[0] = v58;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24E12F7B8(0, *(v58 + 16) + 1, 1);
              v58 = *&__dst[0];
            }

            v61 = *(v58 + 16);
            v60 = *(v58 + 24);
            v62 = v61 + 1;
            if (v61 >= v60 >> 1)
            {
              v144 = (v61 + 1);
              sub_24E12F7B8((v60 > 1), v61 + 1, 1);
              v62 = v144;
              v58 = *&__dst[0];
            }

            *(v58 + 16) = v62;
            v144 = v58;
            v63 = (v58 + 56 * v61);
            v63[4] = v50;
            v63[5] = v49;
            v63[6] = v51;
            v63[7] = v52;
            v63[8] = v53;
            v63[9] = v54;
            v63[10] = v57;
            goto LABEL_82;
          }

          ++v47;
          v48 += 7;
          if (sub_24E348C08())
          {
            goto LABEL_92;
          }
        }

        v64 = v144;
        if (!*(v144 + 2))
        {
          goto LABEL_152;
        }

        v65 = OUTLINED_FUNCTION_10_16();
        sub_24DFFA840(v65, v66, v64);
        v67 = *(v64 + 48);
        __dst[0] = *(v64 + 32);
        __dst[1] = v67;
        __dst[2] = *(v64 + 64);
        *&__dst[3] = *(v64 + 80);
        v68 = OUTLINED_FUNCTION_14_9();
        sub_24DFC5470(v68, v69);

        type metadata accessor for ActivityFeedBaseData();
        *&v149 = 0x614E726579616C70;
        *(&v149 + 1) = 0xEA0000000000656DLL;
        v150 = xmmword_24E36C460;
        OUTLINED_FUNCTION_6_22();
        sub_24E0E21CC(&v149);
        OUTLINED_FUNCTION_9_15();
        sub_24E0E22BC();

        sub_24DFC54CC(__dst);
        return v17;
      }

      goto LABEL_178;
    }

    v70 = v42 == 1701667175 && v18 == 0xE400000000000000;
    if (v70 || (OUTLINED_FUNCTION_8_16() & 1) != 0)
    {

      v71 = *(v4 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_componentData);
      if (v71)
      {
        OUTLINED_FUNCTION_19_8();
        v142 = v5;
        v72 = v16;
        v17 = *(v71 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships + 8);
        v5 = *(v17 + 16);

        v73 = 0;
        v18 = MEMORY[0x277D84F90];
        v9 = 72;
        v4 = 32;
LABEL_106:
        v74 = 72 * v73 + 32;
        while (v5 != v73)
        {
          if (v73 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_75;
          }

          memcpy(__dst, (v17 + v74), 0x48uLL);
          v75 = *&__dst[0] == v147 && *(&__dst[0] + 1) == v148;
          if (v75 || (sub_24E348C08() & 1) != 0)
          {
            v76 = OUTLINED_FUNCTION_14_9();
            sub_24E00FD28(v76, v77);
            v78 = swift_isUniquelyReferenced_nonNull_native();
            v151 = v18;
            if ((v78 & 1) == 0)
            {
              v79 = OUTLINED_FUNCTION_11_10();
              sub_24E12F798(v79, v80, v81);
              v18 = v151;
            }

            v16 = *(v18 + 16);
            v82 = *(v18 + 24);
            if (v16 >= v82 >> 1)
            {
              v83 = OUTLINED_FUNCTION_15_10(v82);
              sub_24E12F798(v83, v84, v85);
              v18 = v151;
            }

            ++v73;
            *(v18 + 16) = v16 + 1;
            memcpy((v18 + 72 * v16 + 32), __dst, 0x48uLL);
            goto LABEL_106;
          }

          v74 += 72;
          ++v73;
        }

        if (!*(v18 + 16))
        {
          goto LABEL_152;
        }

        v86 = OUTLINED_FUNCTION_10_16();
        sub_24DFFA840(v86, v87, v18);
        memcpy(__dst, (v18 + 32), 0x48uLL);
        v88 = OUTLINED_FUNCTION_14_9();
        sub_24E00FD28(v88, v89);

        v90 = __dst[0];
        type metadata accessor for ActivityFeedBaseData();
        v149 = v90;
        v150 = v90;
        OUTLINED_FUNCTION_6_22();
        swift_bridgeObjectRetain_n();
        v91 = sub_24E0E21CC(&v149);
        swift_bridgeObjectRelease_n();
        sub_24E0E293C(__dst, v71, v72, v142, v91);

        sub_24E00FD84(__dst);
        return v17;
      }

      goto LABEL_178;
    }

    v92 = v42 == 0x6D65766569686361 && v18 == 0xEB00000000746E65;
    if (v92 || (OUTLINED_FUNCTION_8_16() & 1) != 0)
    {

      v93 = *(v4 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_componentData);
      v94 = v148;
      if (v93)
      {
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_5_24();
        *&__dst[0] = v147;
        *(&__dst[0] + 1) = v94;
        *&v149 = 2368548;
        *(&v149 + 1) = 0xE300000000000000;

        v95 = OUTLINED_FUNCTION_17_11();

        v96 = 0;
        *&v149 = MEMORY[0x277D84FA0];
        v97 = *(v95 + 16);
        v98 = (v95 + 40);
        while (v97 != v96)
        {
          sub_24DFFA840(v96++, 1, v95);
          v100 = *(v98 - 1);
          v99 = *v98;

          v18 = &v149;
          sub_24E1C33C4(__dst, v100, v99);

          v98 += 2;
        }

        v5 = v149;
        v145 = v93;
        v101 = *(v93 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships + 24);
        v147 = *(v101 + 16);
        v4 = v149 + 56;

        v102 = 0;
        v16 = MEMORY[0x277D84F90];
        v141 = v9;
LABEL_134:
        while (v102 != v147)
        {
          if (v102 >= *(v101 + 16))
          {
            __break(1u);
            goto LABEL_189;
          }

          v103 = (*(v9 + 80) + 32) & ~*(v9 + 80);
          v104 = *(v9 + 72);
          v148 = v102 + 1;
          v105 = v101;
          sub_24DF911B8(v101 + v103 + v104 * v102, v146);
          if (*(v5 + 16))
          {
            v107 = *v146;
            v106 = v146[1];
            sub_24E348D18();
            sub_24E347DC8();
            v108 = sub_24E348D68();
            v18 = ~(-1 << *(v5 + 32));
            while (1)
            {
              v109 = v108 & v18;
              if (((*(v4 + (((v108 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v108 & v18)) & 1) == 0)
              {
                break;
              }

              v110 = (*(v5 + 48) + 16 * v109);
              if (*v110 != v107 || v110[1] != v106)
              {
                v112 = sub_24E348C08();
                v108 = v109 + 1;
                if ((v112 & 1) == 0)
                {
                  continue;
                }
              }

              sub_24E00FCC4(v146, v144);
              v113 = swift_isUniquelyReferenced_nonNull_native();
              *&v149 = v16;
              if ((v113 & 1) == 0)
              {
                v18 = &v149;
                sub_24E12F740(0, *(v16 + 16) + 1, 1);
                v16 = v149;
              }

              v101 = v105;
              v115 = *(v16 + 16);
              v114 = *(v16 + 24);
              if (v115 >= v114 >> 1)
              {
                v18 = &v149;
                sub_24E12F740(v114 > 1, v115 + 1, 1);
                v16 = v149;
              }

              *(v16 + 16) = v115 + 1;
              sub_24E00FCC4(v144, v16 + v103 + v115 * v104);
              v9 = v141;
              v102 = v148;
              goto LABEL_134;
            }
          }

          sub_24DF9121C(v146);
          v102 = v148;
          v9 = v141;
          v101 = v105;
        }

        if (*(v16 + 16))
        {
          type metadata accessor for ActivityFeedBaseData();
          OUTLINED_FUNCTION_20_9();
          *&__dst[0] = v116;
          *(&__dst[0] + 1) = 0xEB00000000746E65;
          __dst[1] = xmmword_24E36EBE0;
          *&__dst[2] = v143;
          BYTE8(__dst[2]) = 0;
          sub_24E0E21CC(__dst);
          OUTLINED_FUNCTION_9_15();
          sub_24E0E2A64();
        }

LABEL_152:

        goto LABEL_179;
      }

LABEL_178:

LABEL_179:

      return 1;
    }

    OUTLINED_FUNCTION_19_8();
    if (v42 == 0x6F6272656461656CLL && v18 == 0xEB00000000647261)
    {
    }

    else
    {
      v118 = OUTLINED_FUNCTION_8_16();

      if ((v118 & 1) == 0)
      {
        goto LABEL_178;
      }
    }

    v119 = *(v4 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_componentData);
    if (v119)
    {
      OUTLINED_FUNCTION_5_24();
      v17 = *(v119 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships + 16);
      v120 = *(v17 + 16);

      v121 = 0;
      v122 = MEMORY[0x277D84F90];
LABEL_164:
      v123 = 72 * v121 + 32;
      while (v120 != v121)
      {
        if (v121 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_191;
        }

        memcpy(__dst, (v17 + v123), 0x48uLL);
        v124 = *&__dst[0] == v147 && *(&__dst[0] + 1) == v148;
        if (v124 || (result = sub_24E348C08(), (result & 1) != 0))
        {
          v125 = OUTLINED_FUNCTION_14_9();
          sub_24E00F7A8(v125, v126);
          v127 = swift_isUniquelyReferenced_nonNull_native();
          v151 = v122;
          if ((v127 & 1) == 0)
          {
            v128 = OUTLINED_FUNCTION_11_10();
            sub_24E12F720(v128, v129, v130);
            v122 = v151;
          }

          v132 = v122[2];
          v131 = v122[3];
          if (v132 >= v131 >> 1)
          {
            v133 = OUTLINED_FUNCTION_15_10(v131);
            sub_24E12F720(v133, v134, v135);
            v122 = v151;
          }

          ++v121;
          v122[2] = v132 + 1;
          result = memcpy(&v122[9 * v132 + 4], __dst, 0x48uLL);
          goto LABEL_164;
        }

        v123 += 72;
        ++v121;
      }

      if (!v122[2])
      {
        goto LABEL_152;
      }

      v136 = OUTLINED_FUNCTION_10_16();
      sub_24DFFA840(v136, v137, v122);
      memcpy(__dst, v122 + 4, 0x48uLL);
      v138 = OUTLINED_FUNCTION_14_9();
      sub_24E00F7A8(v138, v139);

      type metadata accessor for ActivityFeedBaseData();
      *&v149 = 0x6F6272656461656CLL;
      *(&v149 + 1) = 0xEB00000000647261;
      v150 = xmmword_24E36EBD0;
      OUTLINED_FUNCTION_6_22();
      sub_24E0E21CC(&v149);
      OUTLINED_FUNCTION_9_15();
      sub_24E0E2EEC();

      sub_24E00FC70(__dst);
      return v17;
    }

    goto LABEL_178;
  }

  if ((v21 & 0x1000000000000000) != 0)
  {
    sub_24E00F290(v20, v21, 10);
    goto LABEL_75;
  }

  if ((v21 & 0x2000000000000000) == 0)
  {
    if ((v20 & 0x1000000000000000) != 0)
    {
      result = (v21 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
LABEL_189:
      result = sub_24E348A28();
    }

    v26 = *result;
    if (v26 == 43)
    {
      if (v24 >= 1)
      {
        if (v24 != 1)
        {
          if (result)
          {
            OUTLINED_FUNCTION_22_8();
            while (1)
            {
              OUTLINED_FUNCTION_0_49();
              if (!v43 & v27)
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_2_31();
              if (!v43 || __OFADD__(v34, v33))
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_4_25();
              if (v43)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_64;
        }

        goto LABEL_73;
      }

      goto LABEL_193;
    }

    if (v26 != 45)
    {
      if (v24)
      {
        v37 = 0;
        if (result)
        {
          while (1)
          {
            v38 = *result - 48;
            if (v38 > 9)
            {
              goto LABEL_73;
            }

            v39 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              goto LABEL_73;
            }

            v37 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              goto LABEL_73;
            }

            ++result;
            if (!--v24)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_73:
      v30 = 1;
      goto LABEL_74;
    }

    if (v24 >= 1)
    {
      if (v24 != 1)
      {
        if (result)
        {
          OUTLINED_FUNCTION_22_8();
          while (1)
          {
            OUTLINED_FUNCTION_0_49();
            if (!v43 & v27)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_2_31();
            if (!v43 || __OFSUB__(v29, v28))
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_4_25();
            if (v43)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_64:
        v30 = 0;
LABEL_74:
        LOBYTE(v149) = v30;
        goto LABEL_75;
      }

      goto LABEL_73;
    }

LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  *&__dst[0] = v20;
  *(&__dst[0] + 1) = v21 & 0xFFFFFFFFFFFFFFLL;
  if (v20 != 43)
  {
    if (v20 != 45)
    {
      if (v23)
      {
        while (1)
        {
          OUTLINED_FUNCTION_0_49();
          if (!v43 & v27)
          {
            break;
          }

          OUTLINED_FUNCTION_2_31();
          if (!v43 || __OFADD__(v41, v40))
          {
            break;
          }

          OUTLINED_FUNCTION_4_25();
          if (v43)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v23)
    {
      if (v23 != 1)
      {
        OUTLINED_FUNCTION_23_9();
        while (1)
        {
          OUTLINED_FUNCTION_0_49();
          if (!v43 & v27)
          {
            break;
          }

          OUTLINED_FUNCTION_2_31();
          if (!v43 || __OFSUB__(v32, v31))
          {
            break;
          }

          OUTLINED_FUNCTION_4_25();
          if (v43)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_192;
  }

  if (v23)
  {
    if (v23 != 1)
    {
      OUTLINED_FUNCTION_23_9();
      while (1)
      {
        OUTLINED_FUNCTION_0_49();
        if (!v43 & v27)
        {
          break;
        }

        OUTLINED_FUNCTION_2_31();
        if (!v43 || __OFADD__(v36, v35))
        {
          break;
        }

        OUTLINED_FUNCTION_4_25();
        if (v43)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_194:
  __break(1u);
  return result;
}

uint64_t sub_24E00EFC0(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_18_10();
            while (1)
            {
              OUTLINED_FUNCTION_0_49();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_1_39();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_4_25();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_81:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_0_49();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_1_39();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_4_25();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_18_10();
          while (1)
          {
            OUTLINED_FUNCTION_0_49();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_1_39();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_4_25();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24E348A28();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_22_8();
              while (1)
              {
                OUTLINED_FUNCTION_0_49();
                if (!v9 & v8)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_1_39();
                if (!v9)
                {
                  goto LABEL_70;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_4_25();
                if (v9)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_70;
        }

        goto LABEL_80;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_70;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_70;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_70;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_70:
        v7 = 0;
        v12 = 1;
        goto LABEL_71;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_22_8();
            while (1)
            {
              OUTLINED_FUNCTION_0_49();
              if (!v9 & v8)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_1_39();
              if (!v9)
              {
                goto LABEL_70;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_4_25();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_61:
          v12 = 0;
LABEL_71:
          v23 = v12;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v7 = sub_24E00F290(result, a2, 10);
  v23 = v24;
LABEL_72:

  if (v23)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void *sub_24E00F220(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E70B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_24E00F290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_24E347E88();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24E00F804();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24E348A28();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_13_14();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_16_11();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_13_14();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_16_11();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_3_29();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_16_11();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_3_29();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_16_11();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_3_29();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_16_11();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_24E00F804()
{
  v0 = sub_24E00F870();
  v4 = sub_24E00F8A4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_24E00F8A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24E3486A8();
    if (!v9 || (v10 = v9, v11 = sub_24E00F220(v9, 0), v12 = sub_24E00FA04(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_24E347DB8();

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
      return sub_24E347DB8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24E348A28();
LABEL_4:

  return sub_24E347DB8();
}

unint64_t sub_24E00FA04(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_24E00FC14(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24E347E58();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24E348A28();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_24E00FC14(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_24E347E28();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24E00FC14(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_24E347E68();
    OUTLINED_FUNCTION_12_13(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x25303E990](15, a1 >> 16);
    OUTLINED_FUNCTION_12_13(v3);
    return v4 | 8;
  }
}

uint64_t sub_24E00FCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedRelationshipAchievement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E00FDDC()
{
  result = qword_27F1E0868;
  if (!qword_27F1E0868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E0868);
  }

  return result;
}

unint64_t sub_24E00FE20()
{
  result = qword_27F1E0340;
  if (!qword_27F1E0340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0340);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_24E348C08();
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return sub_24E3486D8();
}

uint64_t OUTLINED_FUNCTION_25_8()
{
}

uint64_t sub_24E01008C()
{
  type metadata accessor for FriendListAccessProfileSection();
  result = swift_allocObject();
  *(result + 16) = 283;
  return result;
}

id sub_24E0100B8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_24E347458();
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  v7 = sub_24E347478();
  v8 = OUTLINED_FUNCTION_4_5(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v13 = OUTLINED_FUNCTION_4_5(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v74[-v14];
  v16 = sub_24E3433A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v74[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v74[-v21];
  memcpy(v95, __src, sizeof(v95));
  v23 = 0;
  if (sub_24DF8BF80(v95) == 1)
  {
    return v23;
  }

  v81 = v19;
  v82 = v22;
  v83 = v17;
  v84 = v16;
  v85 = v11;
  v24 = v95[0];
  memcpy(v94, __dst, sizeof(v94));
  objc_opt_self();
  sub_24DF8BF98(v94, v89);
  result = OUTLINED_FUNCTION_4_26();
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = result;
  v27 = [result isFriendsSharingRestricted];

  v80 = v15;
  if (v27)
  {
    goto LABEL_6;
  }

  result = OUTLINED_FUNCTION_4_26();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = result;
  v29 = [result isAccountModificationRestricted];

  if (v29)
  {
LABEL_6:
    v30 = 0;
    goto LABEL_9;
  }

  result = OUTLINED_FUNCTION_4_26();
  if (result)
  {
    v31 = result;
    v32 = [result isGameCenterDisabled];

    v30 = v32 ^ 1;
LABEL_9:
    result = OUTLINED_FUNCTION_4_26();
    if (result)
    {
      v33 = result;
      v34 = [result isFriendsSharingRestricted];

      v78 = v6;
      v79 = __src;
      v35 = v24;
      if (v34)
      {
        v36 = sub_24E347CB8();
        v37 = GKGameCenterUIFrameworkBundle();
        v38 = OUTLINED_FUNCTION_1_12();

        v39 = sub_24E347CF8();
        v41 = v40;

        v42 = 5;
      }

      else
      {
        v39 = 0;
        v41 = 0;
        v91 = 0u;
        v92 = 0u;
        v90 = 0u;
        v42 = -1;
      }

      v89[0] = v39;
      v89[1] = v41;
      v93 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24E367D20;
      v43 = sub_24E347CB8();
      v44 = GKGameCenterUIFrameworkBundle();
      v45 = OUTLINED_FUNCTION_1_12();

      v46 = sub_24E347CF8();
      v76 = v47;
      v77 = v46;

      sub_24DF8BD90(v89, v88, &qword_27F1DEE88);
      v75 = [objc_opt_self() _gkIsOnline] & v30;
      v48 = [v35 playerID];
      v49 = sub_24E347CF8();
      v51 = v50;

      v52 = sub_24E347CF8();
      v54 = v53;
      v55 = sub_24E347CF8();
      v57 = v56;
      v87[3] = type metadata accessor for FriendListAccessAction();
      v87[4] = sub_24E010C50(&qword_27F1E0AC0, type metadata accessor for FriendListAccessAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v87);
      ActionMetrics.init(domain:eventType:)(v52, v54, v55, v57);
      *boxed_opaque_existential_1 = v49;
      boxed_opaque_existential_1[1] = v51;
      v59 = v82;
      sub_24E343398();
      v61 = v83;
      v60 = v84;
      (*(v83 + 16))(v81, v59, v84);
      sub_24E010C50(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
      sub_24E348918();
      (*(v61 + 8))(v59, v60);
      v62 = type metadata accessor for DetailData();
      *(v23 + 56) = v62;
      *(v23 + 64) = sub_24E010C50(&qword_27F1DEE80, type metadata accessor for DetailData);
      v63 = __swift_allocate_boxed_opaque_existential_1((v23 + 32));
      *(v63 + 25) = 0u;
      v63[27] = 0;
      *(v63 + 23) = 0u;
      v64 = *(v62 + 56);
      v65 = sub_24E3474B8();
      __swift_storeEnumTagSinglePayload(v63 + v64, 1, 1, v65);
      v66 = v63 + *(v62 + 60);
      sub_24DF8BD34(v86, v63);
      *(v63 + 40) = 1;
      v68 = v76;
      v67 = v77;
      v63[6] = v77;
      v63[7] = v68;
      v63[9] = 0;
      v63[10] = 0;
      v63[8] = 0;
      sub_24DF8BD90(v88, (v63 + 11), &qword_27F1DEE88);
      v63[20] = 0;
      v63[21] = 0;
      *(v63 + 176) = 0;
      *(v63 + 177) = v75;
      *v66 = 0;
      v66[8] = 0;

      sub_24DF8BDF0(v87, (v63 + 23));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_24E369E30;
      strcpy((v69 + 32), "impressionType");
      *(v69 + 47) = -18;
      v70 = MEMORY[0x277D837D0];
      *(v69 + 48) = 0x74656C63696863;
      *(v69 + 56) = 0xE700000000000000;
      *(v69 + 72) = v70;
      *(v69 + 80) = 0x6973736572706D69;
      v71 = MEMORY[0x277D83B88];
      *(v69 + 88) = 0xEF7865646E496E6FLL;
      *(v69 + 96) = 0;
      *(v69 + 120) = v71;
      *(v69 + 128) = 0x657079546469;
      *(v69 + 136) = 0xE600000000000000;
      *(v69 + 144) = 0x636974617473;
      *(v69 + 152) = 0xE600000000000000;
      *(v69 + 168) = v70;
      *(v69 + 176) = 1701667182;
      *(v69 + 216) = v70;
      *(v69 + 184) = 0xE400000000000000;
      *(v69 + 192) = v67;
      *(v69 + 200) = v68;

      sub_24E347C28();
      sub_24E347468();
      sub_24E347448();
      v72 = MEMORY[0x277D84F90];
      sub_24E0241AC(MEMORY[0x277D84F90]);
      sub_24E0241AC(v72);
      v73 = v80;
      sub_24E347488();
      sub_24DF8BE60(v86);
      sub_24DF8BFF4(v88, &qword_27F1DEE88);
      sub_24DF8BFF4(v87, &qword_27F1DEE90);
      __swift_storeEnumTagSinglePayload(v73, 0, 1, v65);
      sub_24DF8BEB4(v73, v63 + v64);
      sub_24DF8BFF4(v79, &qword_27F1DEEA0);
      sub_24DF8BFF4(v89, &qword_27F1DEE88);
      return v23;
    }

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

double sub_24E01093C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE70);
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  v5 = v28 - v4;
  v6 = type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = (v9 - v8);
  v11 = sub_24E347CB8();
  v12 = GKGameCenterUIFrameworkBundle();
  v13 = GKGetLocalizedStringFromTableInBundle();

  v14 = sub_24E347CF8();
  v16 = v15;

  v17 = type metadata accessor for FooterData.Attachment(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v17);
  memset(v28, 0, 57);
  *v10 = v14;
  v10[1] = v16;
  sub_24DF8BBD0(v28, (v10 + 3));
  sub_24DF8BD90(v5, v10 + *(v6 + 28), &qword_27F1DEE70);
  v18 = [objc_opt_self() labelColor];
  sub_24DF8BC2C(v28);
  sub_24DF8BFF4(v5, &qword_27F1DEE70);
  v10[2] = v18;
  v19 = type metadata accessor for HeaderData();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v19);
  v20 = type metadata accessor for Shelf.Presentation(0);
  v21 = v20[5];
  sub_24E010BEC(v10, a1 + v21);
  __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v6);
  v22 = a1 + v20[11];
  result = 0.0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 1;
  v24 = a1 + v20[12];
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = (a1 + v20[13]);
  v26 = (a1 + v20[14]);
  v27 = (a1 + v20[15]);
  *(a1 + v20[6]) = 1;
  *v25 = 0;
  v25[1] = 0;
  *v26 = 0;
  v26[1] = 0;
  *v27 = 0;
  v27[1] = 0;
  *(a1 + v20[7]) = 1;
  *(a1 + v20[8]) = 1;
  *(a1 + v20[9]) = 1;
  *(a1 + v20[10]) = 0;
  return result;
}

uint64_t sub_24E010BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FooterData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E010C50(unint64_t *a1, void (*a2)(uint64_t))
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

id OUTLINED_FUNCTION_4_26()
{

  return [v0 (v1 + 2605)];
}

uint64_t sub_24E010CB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_24E011260(sub_24E07740C);
  v5 = *(*(v2 + 16) + 16);
  sub_24E1242D0(v5);
  v6 = *(v2 + 16);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v2 + 16) = v6;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_24E010D5C(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = 0;
  v5 = *(v1 + 16);
  v6 = *(v5 + 16);
  v7 = (v5 + 32);
  while (v6 != v4)
  {
    if (*v7 == a1)
    {
      swift_beginAccess();
      sub_24E1FB854(v4);
      swift_endAccess();
      return swift_unknownObjectRelease();
    }

    ++v4;
    v7 += 2;
  }

  return result;
}

void sub_24E010E04()
{
  OUTLINED_FUNCTION_2_32();
  OUTLINED_FUNCTION_0_50();
  OUTLINED_FUNCTION_5_25();
  if (v0)
  {

    do
    {
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_4_27();
      v2 = *(v1 + 8);
      v1 += 8;
      swift_unknownObjectRetain();
      v3 = OUTLINED_FUNCTION_1_40();
      v2(v3);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_6_23();
    }

    while (!v4);
  }

  OUTLINED_FUNCTION_3_30();
}

void sub_24E010E88()
{
  OUTLINED_FUNCTION_2_32();
  OUTLINED_FUNCTION_0_50();
  OUTLINED_FUNCTION_5_25();
  if (v0)
  {

    do
    {
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_4_27();
      v2 = *(v1 + 16);
      v1 += 16;
      swift_unknownObjectRetain();
      v3 = OUTLINED_FUNCTION_1_40();
      v2(v3);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_6_23();
    }

    while (!v4);
  }

  OUTLINED_FUNCTION_3_30();
}

void sub_24E010F0C()
{
  OUTLINED_FUNCTION_2_32();
  OUTLINED_FUNCTION_0_50();
  OUTLINED_FUNCTION_5_25();
  if (v0)
  {

    do
    {
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_4_27();
      v2 = *(v1 + 24);
      v1 += 24;
      swift_unknownObjectRetain();
      v3 = OUTLINED_FUNCTION_1_40();
      v2(v3);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_6_23();
    }

    while (!v4);
  }

  OUTLINED_FUNCTION_3_30();
}