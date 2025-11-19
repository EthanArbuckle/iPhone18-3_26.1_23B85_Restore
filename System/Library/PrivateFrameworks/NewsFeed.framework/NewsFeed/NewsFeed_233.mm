BOOL FormatLayoutView.shouldMonitorScroll.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

id FormatLayoutView.blueprintViewportMonitor(_:viewportScrollDataDidChange:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D725F02C();
      swift_unknownObjectRelease();
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  v6 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (v7 >> 62)
  {
LABEL_111:
    result = sub_1D7263BFC();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v6 = *(v1 + v6);
  v110 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
    v1 = sub_1D7263BFC();
  }

  else
  {
    v1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v101 = v6;
  if (!v1)
  {
    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_55;
  }

  v9 = 0;
  v105 = v6 & 0xFFFFFFFFFFFFFF8;
  v107 = v6 & 0xC000000000000001;
  v103 = v6 + 32;
  while (!v107)
  {
    if (v9 >= *(v105 + 16))
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v10 = *(v103 + 8 * v9);

    v11 = __OFADD__(v9++, 1);
    if (v11)
    {
      goto LABEL_52;
    }

LABEL_16:
    v13 = v10[4];
    v12 = v10[5];
    v14 = v10[6];
    swift_beginAccess();
    v15 = v13[2];
    if (*(v15 + 16))
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v16 = sub_1D7264A5C();
      v17 = -1 << *(v15 + 32);
      v18 = v16 & ~v17;
      if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v6 = ~v17;
        do
        {
          v19 = (*(v15 + 48) + 16 * v18);
          v20 = *v19 == v12 && v19[1] == v14;
          if (v20 || (sub_1D72646CC() & 1) != 0)
          {
            goto LABEL_11;
          }

          v18 = (v18 + 1) & v6;
        }

        while (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
      }
    }

    swift_beginAccess();
    v21 = v13[3];
    if (*(v21 + 16))
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v22 = sub_1D7264A5C();
      v23 = -1 << *(v21 + 32);
      v24 = v22 & ~v23;
      if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v6 = ~v23;
        do
        {
          v25 = (*(v21 + 48) + 16 * v24);
          v26 = *v25 == v12 && v25[1] == v14;
          if (v26 || (sub_1D72646CC() & 1) != 0)
          {
            goto LABEL_11;
          }

          v24 = (v24 + 1) & v6;
        }

        while (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
      }
    }

    swift_beginAccess();
    v27 = v13[4];
    if (!*(v27 + 16))
    {
      goto LABEL_46;
    }

    sub_1D7264A0C();

    sub_1D72621EC();
    v28 = sub_1D7264A5C();
    v29 = -1 << *(v27 + 32);
    v30 = v28 & ~v29;
    if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
LABEL_45:

LABEL_46:
      v33 = *(v10[11] + 16);
      if (*(v33 + 84) == 255 || (*(v33 + 80) | (*(v33 + 84) << 32)) >> 33)
      {
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      goto LABEL_12;
    }

    v6 = ~v29;
    while (1)
    {
      v31 = (*(v27 + 48) + 16 * v30);
      v32 = *v31 == v12 && v31[1] == v14;
      if (v32 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v30 = (v30 + 1) & v6;
      if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

LABEL_11:

LABEL_12:
    if (v9 == v1)
    {
      goto LABEL_53;
    }
  }

  v10 = MEMORY[0x1DA6FB460](v9, v101);
  v11 = __OFADD__(v9++, 1);
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v34 = v110;
LABEL_55:

  v35 = v34 < 0 || (v34 & 0x4000000000000000) != 0;
  if (v35)
  {
    if (!sub_1D7263BFC())
    {
    }

LABEL_60:
    v36 = objc_opt_self();
    [v36 begin];
    v100 = v36;
    if (v35)
    {
      v6 = sub_1D7263BFC();
      if (!v6)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v6 = *(v34 + 16);
      if (!v6)
      {
LABEL_107:

        return [v100 commit];
      }
    }

    v37 = 0;
    v38 = v34 & 0xC000000000000001;
    v106 = v6;
    v108 = v34 + 32;
    v102 = v34;
    v104 = v34 & 0xC000000000000001;
    while (1)
    {
      if (v38)
      {
        v39 = MEMORY[0x1DA6FB460](v37, v34);
        v11 = __OFADD__(v37++, 1);
        if (v11)
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v37 >= *(v34 + 16))
        {
          goto LABEL_110;
        }

        v39 = *(v108 + 8 * v37);

        v11 = __OFADD__(v37++, 1);
        if (v11)
        {
          goto LABEL_109;
        }
      }

      v40 = *(v39[11] + 16);
      if (*(v40 + 84) == 255)
      {
        goto LABEL_65;
      }

      v41 = *(v40 + 80);
      if (*(v40 + 84))
      {
        if (*(v40 + 84) == 1)
        {
          v42 = v39[4];
          v43 = v39[5];
          v44 = v39[6];
          v45 = v39[7];
          [v45 bounds];
          v46 = 0.0;
          if (CGRectGetHeight(v111) > 0.0)
          {
            v47 = sub_1D725EC1C();
            [v45 bounds];
            [v47 convertRect:v45 fromCoordinateSpace:?];
            v49 = v48;
            v51 = v50;
            v53 = v52;
            v55 = v54;

            v56 = sub_1D725EC1C();
            v1 = &off_1E84D3000;
            [v56 bounds];
            v58 = v57;
            v60 = v59;
            v62 = v61;
            v64 = v63;

            v112.origin.x = v58;
            v112.origin.y = v60;
            v112.size.width = v62;
            v112.size.height = v64;
            v119.origin.x = v49;
            v119.origin.y = v51;
            v119.size.width = v53;
            v119.size.height = v55;
            v113 = CGRectIntersection(v112, v119);
            Height = CGRectGetHeight(v113);
            [v45 bounds];
            v46 = Height / CGRectGetHeight(v114);
          }

          swift_beginAccess();
          v66 = *(v42 + 24);
          if (*(v66 + 16))
          {
            sub_1D7264A0C();

            sub_1D72621EC();
            v67 = sub_1D7264A5C();
            v68 = -1 << *(v66 + 32);
            v69 = v67 & ~v68;
            if ((*(v66 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
            {
              v1 = ~v68;
              while (1)
              {
                v70 = (*(v66 + 48) + 16 * v69);
                v71 = *v70 == v43 && v70[1] == v44;
                if (v71 || (sub_1D72646CC() & 1) != 0)
                {
                  break;
                }

                v69 = (v69 + 1) & v1;
                if (((*(v66 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
                {
                  goto LABEL_86;
                }
              }

LABEL_105:

              v34 = v102;
              goto LABEL_106;
            }

LABEL_86:

            v34 = v102;
          }

          if (v46 >= v41)
          {
            goto LABEL_102;
          }

          goto LABEL_103;
        }

LABEL_65:

        if (v37 == v6)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v72 = v39[4];
        v43 = v39[5];
        v44 = v39[6];
        v73 = v39[7];
        [v73 bounds];
        v74 = 0.0;
        if (CGRectGetHeight(v115) > 0.0)
        {
          v75 = sub_1D725EC1C();
          [v73 bounds];
          [v75 convertRect:v73 fromCoordinateSpace:?];
          v77 = v76;
          v79 = v78;
          v81 = v80;
          v83 = v82;

          v84 = sub_1D725EC1C();
          v1 = &off_1E84D3000;
          [v84 bounds];
          v86 = v85;
          v88 = v87;
          v90 = v89;
          v92 = v91;

          v116.origin.x = v86;
          v116.origin.y = v88;
          v116.size.width = v90;
          v116.size.height = v92;
          v120.origin.x = v77;
          v120.origin.y = v79;
          v120.size.width = v81;
          v120.size.height = v83;
          v117 = CGRectIntersection(v116, v120);
          v93 = CGRectGetHeight(v117);
          [v73 bounds];
          v74 = v93 / CGRectGetHeight(v118);
        }

        swift_beginAccess();
        v94 = *(v72 + 32);
        if (*(v94 + 16))
        {
          sub_1D7264A0C();

          sub_1D72621EC();
          v95 = sub_1D7264A5C();
          v96 = -1 << *(v94 + 32);
          v97 = v95 & ~v96;
          if ((*(v94 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97))
          {
            v1 = ~v96;
            do
            {
              v98 = (*(v94 + 48) + 16 * v97);
              v99 = *v98 == v43 && v98[1] == v44;
              if (v99 || (sub_1D72646CC() & 1) != 0)
              {
                goto LABEL_105;
              }

              v97 = (v97 + 1) & v1;
            }

            while (((*(v94 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) != 0);
          }

          v34 = v102;
        }

        if (v74 >= v41)
        {
LABEL_102:
          swift_beginAccess();

          sub_1D5B860D0(&v109, v43, v44);
          swift_endAccess();

          sub_1D721424C();
        }

LABEL_103:

LABEL_106:
        v38 = v104;
        v6 = v106;
        if (v37 == v106)
        {
          goto LABEL_107;
        }
      }
    }
  }

  if (*(v34 + 16))
  {
    goto LABEL_60;
  }
}

uint64_t sub_1D704BB74(void (*a1)(uint64_t, uint64_t))
{
  v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_loadAwareObservers;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    do
    {
      sub_1D5B68374(v7, v10);
      v8 = v11;
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      a1(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t FormatLayoutView.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t FormatLayoutView.shouldCancelContextMenu.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelContextMenu;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FormatLayoutView.shouldCancelContextMenu.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelContextMenu;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FormatLayoutView.shouldCancelDrag.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelDrag;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FormatLayoutView.shouldCancelDrag.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelDrag;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1D704BF70(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillShow];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillHide];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] = 0;
  v15 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_feedItem;
  v16 = type metadata accessor for FeedItem(0);
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelContextMenu] = 0;
  v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelDrag] = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_token] = 0;
  v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_isDirty] = 0;
  v18 = MEMORY[0x1E69E7CC8];
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers] = MEMORY[0x1E69E7CC8];
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers] = v17;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_loadAwareObservers] = v17;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_layoutObservers] = v17;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers] = v17;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewKey] = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewsByName] = v18;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture] = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer] = 0;
  sub_1D5BB160C(0, &qword_1EDF3BDD8, type metadata accessor for DebugButton, MEMORY[0x1E69D63A0]);
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_debugButton] = sub_1D725A80C();
  sub_1D7053C04();
  *&v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapAction] = sub_1D725A80C();
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v19;

  sub_1D725A7FC();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D725A7FC();

  return v20;
}

id sub_1D704C2BC@<X0>(void *a1@<X8>)
{
  sub_1D7053E1C(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  result = [objc_allocWithZone(v2) init];
  *a1 = result;
  return result;
}

void sub_1D704C320()
{
  sub_1D7053E1C(0, &qword_1EDF3B460, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8768]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = (&v12 - v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    *v5 = 1;
    (*(v2 + 104))(v5, *MEMORY[0x1E69D8758], v1);
    v8 = sub_1D725F66C();
    (*(v2 + 8))(v5, v1);
    v9 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture;
    v10 = *&v7[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture];
    *&v7[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture] = v8;

    v11 = *&v7[v9];
    if (v11)
    {
      [v11 setDelegate_];
    }
  }
}

id FormatLayoutView.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (qword_1EDF223A8 != -1)
  {
    goto LABEL_16;
  }

  while (*(qword_1EDFFCA38 + 160) == 1)
  {
    v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
    swift_beginAccess();
    v3 = *&v0[v2];
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(*(*(v3 + 56) + ((v9 << 9) | (8 * v10))) + 56);

      sub_1D6F0D3C0(v11);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        goto LABEL_14;
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_14:
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

Swift::Bool __swiftcall FormatLayoutView.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = inside.y;
  x = inside.x;
  v6 = [v2 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710);
  v7 = sub_1D726267C();

  if (v7 >> 62)
  {
LABEL_15:
    v8 = sub_1D7263BFC();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  do
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1DA6FB460](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    [v2 convertPoint:v11 toCoordinateSpace:{x, y}];
    v13 = [v12 pointInside:isa withEvent:?];

    v9 = v10 + 1;
  }

  while (!v13);

  return v8 != v10;
}

Swift::Void __swiftcall FormatLayoutView.layoutSubviews()()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_layoutObservers;
  swift_beginAccess();
  v3 = *&v1[v2];
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      v6 = *(v5 - 8);
      v7 = v1;

      v6(&v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }
}

void sub_1D704CB38(double a1, double a2, double a3, double a4, double a5, double a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation);
    v14 = Strong;
    sub_1D5DEA510(v13);

    if (v13)
    {
      v13(a1 - a3 + a5, a2 - a4 + a6);
      sub_1D5B74328(v13);
    }
  }
}

void sub_1D704CC1C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, void *a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = &Strong[*a10];
    v22 = *v21;
    if (*v21)
    {
      sub_1D5DEA510(*v21);

      v22(a1, a2, a3, a4, a5, a6, a7, a8);
      sub_1D5B74328(v22);
    }

    else
    {
    }
  }
}

void sub_1D704CD18(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1D704CD80(void *a1, uint64_t a2)
{
  v3 = v2;
  FormatLayoutView.prepareForReuse()();
  v6 = *&v2[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_token];
  *&v2[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_token] = a1;
  v7 = a1;

  v2[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_isDirty] = 0;
  v8 = [v2 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710);
  v9 = sub_1D726267C();

  if (v9 >> 62)
  {
    v10 = sub_1D7263BFC();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    goto LABEL_23;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA6FB460](i, v9);
    }

    else
    {
      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    [v12 removeFromSuperview];
  }

LABEL_10:

  v14 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v15 = *&v3[v14];
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  if (v18)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      v24 = MEMORY[0x1E69E7CC8];
      *&v3[v14] = MEMORY[0x1E69E7CC8];

      v25 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
      swift_beginAccess();
      v26 = MEMORY[0x1E69E7CC0];
      *&v3[v25] = MEMORY[0x1E69E7CC0];

      v27 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_loadAwareObservers;
      swift_beginAccess();
      *&v3[v27] = v26;

      v28 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_layoutObservers;
      swift_beginAccess();
      *&v3[v28] = v26;

      v29 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
      swift_beginAccess();
      *&v3[v29] = v26;

      v30 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewsByName;
      swift_beginAccess();
      *&v3[v30] = v24;

      *&v3[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] = 0;

      *&v3[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewKey] = a2;

      return;
    }

    v18 = *(v15 + 64 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      do
      {
LABEL_17:
        v22 = *(*(v15 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v18)))));
        v23 = qword_1EDF223A8;

        if (v23 != -1)
        {
          swift_once();
        }

        v18 &= v18 - 1;
        sub_1D6F0D3C0(*(v22 + 56));
      }

      while (v18);
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1D704D0EC(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  if (v3 >> 62 == 1)
  {
    v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v7 = *a1;
    v8 = v2;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    sub_1D704DF94(&v7, a2, v6);
  }

  else
  {
    v7 = *a1;
    v8 = v2;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    sub_1D704E5D4(&v7, a2);
  }
}

uint64_t sub_1D704D154(uint64_t result, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = v3;
    v7 = result;
    v8 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewsByName;
    swift_beginAccess();
    v9 = *(v3 + v8);
    v10 = *(v9 + 16);

    if (v10 && (v11 = sub_1D5B69D90(v7, a2), (v12 & 1) != 0))
    {
      v13 = *(*(v9 + 56) + 8 * v11);
      swift_endAccess();
      v17 = v13;
    }

    else
    {
      swift_endAccess();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v14 = a3;
    MEMORY[0x1DA6F9CE0]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v4 + v8);
    *(v4 + v8) = 0x8000000000000000;
    sub_1D6D7A950(v17, v7, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + v8) = v16;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1D704D2D0(char *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer;
  v6 = *&a1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer];
  if (v6)
  {
    [*(v6 + 16) removeFromSuperview];
  }

  v7 = *(v4 + 192);
  if (v7 && (v8 = *(v7 + 296), v9 = *(v7 + 328), v55 = *(v7 + 312), v56 = v9, v57 = *(v7 + 344), v10 = *(v7 + 232), v11 = *(v7 + 264), v12 = *(v7 + 280), v51 = *(v7 + 248), v52 = v11, v13 = *(v7 + 264), v14 = *(v7 + 296), v53 = *(v7 + 280), v54 = v14, v15 = *(v7 + 200), v47 = *(v7 + 184), v48 = v15, v49 = *(v7 + 216), v50 = v10, v16 = *(v7 + 328), v66 = v55, v67 = v16, v68 = *(v7 + 344), v62 = *(v7 + 248), v63 = v13, v17 = *(v7 + 232), v64 = v12, v65 = v8, v18 = *(v7 + 200), v58 = *(v7 + 184), v59 = v18, v60 = *(v7 + 216), v61 = v17, sub_1D60081E0(&v58) != 1))
  {
    v45[8] = v66;
    v45[9] = v67;
    v46 = v68;
    v45[4] = v62;
    v45[5] = v63;
    v45[6] = v64;
    v45[7] = v65;
    v45[0] = v58;
    v45[1] = v59;
    v45[2] = v60;
    v45[3] = v61;
    v20 = sub_1D62B4E2C(v45);
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v27 = sub_1D5D04BC4(v45);
        *&a1[v5] = 0;
        v42 = v55;
        v43 = v56;
        v44 = v57;
        v38 = v51;
        v39 = v52;
        v40 = v53;
        v41 = v54;
        v34 = v47;
        v35 = v48;
        v36 = v49;
        v37 = v50;
        sub_1D60864C0(&v34, v32);

        v32[7] = *(v27 + 112);
        v32[8] = *(v27 + 128);
        v32[9] = *(v27 + 144);
        v33 = *(v27 + 160);
        v32[3] = *(v27 + 48);
        v32[4] = *(v27 + 64);
        v32[5] = *(v27 + 80);
        v32[6] = *(v27 + 96);
        v32[0] = *v27;
        v32[1] = *(v27 + 16);
        v32[2] = *(v27 + 32);
        sub_1D70EBD88(a1, v32);
        return sub_1D7053DA4(&v47, &qword_1EDF2D860, &type metadata for FormatVisualEffect, MEMORY[0x1E69E6720], sub_1D7053E1C);
      }

      else
      {
        *&a1[v5] = 0;

        result = sub_1D7261A3C();
        if (result)
        {
          *(&v35 + 1) = sub_1D725FC9C();
          *&v36 = MEMORY[0x1E69DBEA8];
          __swift_allocate_boxed_opaque_existential_1(&v34);
          sub_1D725FC8C();
          return sub_1D72634CC();
        }
      }
    }

    else
    {
      if (v20)
      {
        v28 = sub_1D5D04BC4(v45);
        v29 = *v28;
        v30 = v28[1];
        if (sub_1D7261A3C())
        {
          [a1 setOverrideUserInterfaceStyle_];
          *&v36 = 0;
          v34 = 0u;
          v35 = 0u;
          sub_1D72634CC();
        }

        LOBYTE(v34) = v29;
        BYTE1(v34) = v30;
        type metadata accessor for FormatVisualEffectContainer();
        swift_allocObject();
        v22 = sub_1D5F91BD0(&v34);
        [*(v22 + 16) removeFromSuperview];
        v31 = [objc_opt_self() clearColor];
        sub_1D726349C();

        [v2 addSubview_];
      }

      else
      {
        v21 = *sub_1D5D04BC4(v45);
        if (sub_1D7261A3C())
        {
          [a1 setOverrideUserInterfaceStyle_];
          *&v36 = 0;
          v34 = 0u;
          v35 = 0u;
          sub_1D72634CC();
        }

        type metadata accessor for FormatVisualEffectContainer();
        v22 = swift_allocObject();
        LOBYTE(v34) = v21;
        v23 = sub_1D70B50DC(&v34);
        v24 = [objc_opt_self() effectWithStyle_];
        v25 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

        *(v22 + 16) = v25;
        *(v22 + 24) = 0;
        [v25 removeFromSuperview];
        v26 = [objc_opt_self() clearColor];
        sub_1D726349C();

        [v2 addSubview_];
      }

      *&a1[v5] = v22;
    }
  }

  else
  {
    *&a1[v5] = 0;

    result = sub_1D7261A3C();
    if (result)
    {
      [a1 setOverrideUserInterfaceStyle_];
      *&v60 = 0;
      v58 = 0u;
      v59 = 0u;
      return sub_1D72634CC();
    }
  }

  return result;
}

void sub_1D704D780()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    if (v2)
    {
      v3 = v2;
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v6 = v5;
          sub_1D6A4C430(v3, v1, v6);
        }

        v7 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
        swift_beginAccess();
        v8 = *&v5[v7];
        v14 = MEMORY[0x1E69E7CC0];
        if (v8 >> 62)
        {
          goto LABEL_27;
        }

        for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
        {

          if (!i)
          {
            break;
          }

          v12 = v7;
          v13 = v5;
          v7 = 0;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1DA6FB460](v7, v8);
            }

            else
            {
              if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v10 = *(v8 + 8 * v7 + 32);
            }

            v5 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
              break;
            }

            if (v10 == v1)
            {
            }

            else
            {
              sub_1D7263E9C();
              sub_1D7263EDC();
              sub_1D7263EEC();
              sub_1D7263EAC();
            }

            ++v7;
            if (v5 == i)
            {
              v11 = v14;
              v7 = v12;
              v5 = v13;
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          ;
        }

        v11 = MEMORY[0x1E69E7CC0];
LABEL_23:

        *&v5[v7] = v11;

        v5[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_isDirty] = 1;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D704D9F0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v2 = v1;
        sub_1D725DD4C();

        return;
      }
    }
  }
}

id sub_1D704DAD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 152) >> 6;
  if (!v3)
  {
    if (qword_1EDF223A8 != -1)
    {
      swift_once();
    }

    v11 = *(qword_1EDFFCA38 + 96);
    swift_beginAccess();

    v12 = sub_1D6209084();
    result = swift_endAccess();
    if (!v12)
    {
      v13 = *(v11 + 64);
      v8 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (v8)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      *(v11 + 64) = v14;
      v12 = (*(v11 + 40))(result);
    }

    result = [v12 setAccessibilityIgnoresInvertColors_];
    v10 = (v12 | 0x4000000000000000);
    goto LABEL_21;
  }

  if (v3 == 1)
  {
    if (qword_1EDF223A8 != -1)
    {
      swift_once();
    }

    v4 = *(qword_1EDFFCA38 + 104);
    swift_beginAccess();

    v5 = sub_1D6209084();
    result = swift_endAccess();
    if (v5)
    {
      goto LABEL_8;
    }

    v7 = *(v4 + 64);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (!v8)
    {
      *(v4 + 64) = v9;
      v5 = (*(v4 + 40))(result);
LABEL_8:

      result = [v5 setAccessibilityIgnoresInvertColors_];
      v10 = (v5 | 0x8000000000000000);
LABEL_21:
      *a2 = v10;
      return result;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_1EDF223A8 != -1)
  {
    swift_once();
  }

  v15 = *(qword_1EDFFCA38 + 88);
  swift_beginAccess();

  v10 = sub_1D6209084();
  result = swift_endAccess();
  if (v10)
  {
LABEL_20:

    result = [v10 setAccessibilityIgnoresInvertColors_];
    goto LABEL_21;
  }

  v16 = *(v15 + 64);
  v8 = __OFADD__(v16, 1);
  v17 = v16 + 1;
  if (!v8)
  {
    *(v15 + 64) = v17;
    v10 = (*(v15 + 40))(result);
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_1D704DD34()
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
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v15[1] = v1;
        v4 = v3;
        sub_1D725DD4C();
      }

      v5 = [v1 view];
      if (!v5)
      {
        __break(1u);
        return;
      }

      v6 = v5;
      [v5 removeFromSuperview];

      v7 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
      swift_beginAccess();
      v8 = *(v7 + v3);
      v15[0] = MEMORY[0x1E69E7CC0];
      if (v8 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
      {

        if (!i)
        {
          break;
        }

        v13 = v7;
        v14 = v3;
        v3 = 0;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1DA6FB460](v3, v8);
          }

          else
          {
            if (v3 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v10 = *(v8 + 8 * v3 + 32);
          }

          v11 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v10 == v1)
          {
          }

          else
          {
            sub_1D7263E9C();
            sub_1D7263EDC();
            sub_1D7263EEC();
            v7 = v15;
            sub_1D7263EAC();
          }

          ++v3;
          if (v11 == i)
          {
            v3 = v14;
            v12 = v15[0];
            v7 = v13;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

      v12 = MEMORY[0x1E69E7CC0];
LABEL_22:

      *(v7 + v3) = v12;

      *(v3 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_isDirty) = 1;
    }

    else
    {
      v3 = v1;
    }
  }
}

void sub_1D704DF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = *(a1 + 24);
  v46 = *(a1 + 16);
  v48 = *(a1 + 8);
  v9 = *(a1 + 32);
  v52 = sub_1D605B2D8(MEMORY[0x1E69E7CC0]);
  sub_1D7053E1C(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D72816C0;
  *(v10 + 32) = sub_1D6C141D0(a2);
  v51 = v10;
  sub_1D7051B28(a2, a3, &v51, &v52);
  sub_1D7051DBC(a2, a3, &v51, &v52);
  sub_1D705204C(a2, a3, &v51, &v52);
  sub_1D7052268(a2, a3, &v51, &v52);
  sub_1D7052480(a2, a3, &v51, &v52);
  sub_1D705270C(a2, a3, &v51, &v52);
  v11 = v51;
  v12 = v51 >> 62;
  if (v51 >> 62)
  {
    v13 = sub_1D7263BFC();
  }

  else
  {
    v13 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v8;
  v45 = v7;
  v42 = v9;
  if (v13)
  {
    if (v13 < 1)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v14 = v11 & 0xC000000000000001;
    v15 = v4;
    v10 = 0;
    do
    {
      if (v14)
      {
        v16 = MEMORY[0x1DA6FB460](v10, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v10 + 32);
      }

      v8 = v16;
      ++v10;
      [v15 addSubview_];

      v15 = v8;
    }

    while (v13 != v10);
    if (v14)
    {
      v17 = MEMORY[0x1DA6FB460](0, v11);
    }

    else
    {
      if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        __break(1u);
        return;
      }

      v17 = *(v11 + 32);
    }
  }

  else
  {
    v8 = v4;
    v17 = sub_1D6C141D0(a2);
  }

  v18 = v17;
  v19 = swift_allocObject();
  v20 = v52;
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  v9 = v19;
  a3 = v13 != 0;
  if (v12)
  {
    if (v11 < 0)
    {
      v10 = v11;
    }

    else
    {
      v10 = v11 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1D7263BFC() < a3)
    {
      goto LABEL_54;
    }

    v21 = sub_1D7263BFC();
  }

  else
  {
    v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21 < a3)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  if (v21 < v13)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v41 = v18;
  if ((v11 & 0xC000000000000001) == 0)
  {

    sub_1D5F33D5C(v46);
    goto LABEL_30;
  }

  sub_1D5F33D5C(v46);
  if (v13 <= 1)
  {
LABEL_30:

    goto LABEL_31;
  }

  sub_1D5B5A498(0, &qword_1EDF1A710);

  v22 = v13 != 0;
  do
  {
    v23 = v22 + 1;
    sub_1D7263DAC();
    v22 = v23;
  }

  while (v13 != v23);
LABEL_31:

  if (v12)
  {
    a2 = sub_1D72640EC();
    v10 = v24;
    a3 = v25;
    v13 = v26;

    if (v13)
    {
      goto LABEL_36;
    }

LABEL_35:
    sub_1D5EC3150(a2, v10, a3, v13);
    v28 = v27;
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  a2 = v11 & 0xFFFFFFFFFFFFFF8;
  v10 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
  v13 = (2 * v13) | 1;
  if ((v13 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_36:
  sub_1D72647AC();
  swift_unknownObjectRetain_n();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v29 + 16);

  if (__OFSUB__(v13 >> 1, a3))
  {
    goto LABEL_57;
  }

  if (v30 != (v13 >> 1) - a3)
  {
LABEL_58:
    swift_unknownObjectRelease_n();
    goto LABEL_35;
  }

  v28 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v28)
  {
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

LABEL_43:
  type metadata accessor for FormatLayoutViewContainer();
  v31 = swift_allocObject();
  *(v31 + 80) = 0;
  *(v31 + 88) = 0;
  *(v31 + 16) = v45;
  *(v31 + 24) = v48;
  *(v31 + 32) = v46;
  *(v31 + 40) = v43;
  *(v31 + 48) = v42;
  *(v31 + 56) = v9 | 0x3000000000000004;
  *(v31 + 64) = v41;
  *(v31 + 72) = v28;
  v32 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v44 = v41;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *&v4[v32];
  *&v4[v32] = 0x8000000000000000;
  sub_1D6D7A7D0(v31, v45, v48, isUniquelyReferenced_nonNull_native);

  *&v4[v32] = v50;
  swift_endAccess();
  v47 = sub_1D6C13B9C();
  v34 = *(v47 + 16);
  if (v34)
  {
    v35 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
    v36 = (v47 + 32);
    do
    {
      v49 = *v36;
      swift_getObjectType();
      swift_unknownObjectRetain();
      if (sub_1D725F01C())
      {
        swift_beginAccess();
        v37 = *&v4[v35];
        swift_unknownObjectRetain();
        v38 = swift_isUniquelyReferenced_nonNull_native();
        *&v4[v35] = v37;
        if ((v38 & 1) == 0)
        {
          v37 = sub_1D69931FC(0, v37[2] + 1, 1, v37);
          *&v4[v35] = v37;
        }

        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          v37 = sub_1D69931FC((v39 > 1), v40 + 1, 1, v37);
        }

        v37[2] = v40 + 1;
        *&v37[2 * v40 + 4] = v49;
        *&v4[v35] = v37;
        swift_endAccess();
      }

      swift_unknownObjectRelease();
      ++v36;
      --v34;
    }

    while (v34);
  }
}

void sub_1D704E5D4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);

  sub_1D5F33D5C(v7);
  v10 = sub_1D6C141D0(a2);
  type metadata accessor for FormatLayoutViewContainer();
  v11 = swift_allocObject();
  *(v11 + 88) = 0;
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  *(v11 + 56) = a2;
  *(v11 + 64) = v10;
  *(v11 + 72) = MEMORY[0x1E69E7CC0];
  *(v11 + 80) = 0;
  v12 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *&v3[v12];
  *&v3[v12] = 0x8000000000000000;
  sub_1D6D7A7D0(v11, v6, v5, isUniquelyReferenced_nonNull_native);

  *&v3[v12] = v38;
  swift_endAccess();
  v14 = sub_1D6C13B9C();
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
    v17 = (v14 + 32);
    do
    {
      v37 = *v17;
      swift_getObjectType();
      swift_unknownObjectRetain();
      if (sub_1D725F01C())
      {
        swift_beginAccess();
        v18 = *&v3[v16];
        swift_unknownObjectRetain();
        v19 = swift_isUniquelyReferenced_nonNull_native();
        *&v3[v16] = v18;
        if ((v19 & 1) == 0)
        {
          v18 = sub_1D69931FC(0, v18[2] + 1, 1, v18);
          *&v3[v16] = v18;
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1D69931FC((v20 > 1), v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        *&v18[2 * v21 + 4] = v37;
        *&v3[v16] = v18;
        swift_endAccess();
      }

      swift_unknownObjectRelease();
      ++v17;
      --v15;
    }

    while (v15);
  }

  v22 = sub_1D6C13ECC();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_loadAwareObservers;
    v25 = v22 + 32;
    do
    {
      sub_1D5B68374(v25, v39);
      swift_beginAccess();
      v26 = *&v3[v24];
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *&v3[v24] = v26;
      if ((v27 & 1) == 0)
      {
        v26 = sub_1D6993260(0, v26[2] + 1, 1, v26);
        *&v3[v24] = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_1D6993260((v28 > 1), v29 + 1, 1, v26);
      }

      v26[2] = v29 + 1;
      sub_1D5B63F14(v39, &v26[5 * v29 + 4]);
      *&v3[v24] = v26;
      swift_endAccess();
      v25 += 40;
      --v23;
    }

    while (v23);
  }

  v30 = *&v3[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer];
  if (v30)
  {
    v31 = *(v11 + 56);

    v32 = sub_1D6C141D0(v31);
    v33 = *(v30 + 24);
    if (v33)
    {
      v34 = v33;
      v35 = [v34 contentView];
      [v35 addSubview_];
    }

    else
    {
      [v3 addSubview_];
    }
  }

  else
  {
    v36 = sub_1D6C141D0(*(v11 + 56));
    [v3 addSubview_];
  }
}

uint64_t sub_1D704E9E0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D704EA3C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelContextMenu;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1D704EA84()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelDrag;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_1D704EB08()
{
  sub_1D5BBB890(&unk_1EDF30340, type metadata accessor for FormatLayoutView);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t FormatLayoutView.isSelectable.getter()
{
  v1 = sub_1D704EC6C(v0);
  if (!v1)
  {
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

  v2 = v1;
  v3 = [*(v1 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_interactionProvider) interaction];
  if (!v3)
  {
    LOBYTE(v5) = 0;
    goto LABEL_7;
  }

  v4 = [v3 type];
  swift_unknownObjectRelease();
  if (v4 < 3)
  {
    v5 = 4u >> (v4 & 7);
LABEL_7:

    return v5 & 1;
  }

  result = sub_1D726402C();
  __break(1u);
  return result;
}

uint64_t sub_1D704EC6C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  result = swift_beginAccess();
  v4 = 0;
  v5 = *(a1 + v2);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v4;
LABEL_10:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(*(v5 + 56) + ((v10 << 9) | (8 * v11))) + 56);
    if (((v12 >> 59) & 0x1E | (v12 >> 2) & 1) == 5)
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v14 = v13;
      return v13;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return 0;
    }

    v8 = *(v5 + 64 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void (*sub_1D704ED9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D725D26C();
  return sub_1D5FE8C5C;
}

uint64_t FormatLayoutView.blueprintViewportMonitor(_:willDisplayCellWith:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
  result = swift_beginAccess();
  v7 = *(v3 + v5);
  if (v7 >> 62)
  {
    goto LABEL_37;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    goto LABEL_3;
  }

  while (2)
  {
    while (2)
    {
      v12 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
      swift_beginAccess();
      v3 = *(v3 + v12);
      v13 = 1 << *(v3 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v3 + 64);
      v16 = (v13 + 63) >> 6;

      v17 = 0;
      while (v15)
      {
LABEL_20:
        v7 = *(*(v3 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v15)))));
        v15 &= v15 - 1;
        v21 = *(v7 + 56);
        v22 = (v21 >> 59) & 0x1E | (v21 >> 2) & 1;
        if (v22 > 12)
        {
          if (v22 == 13)
          {
            v29 = *((v21 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v30 = *&v29[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator];
            swift_beginAccess();
            v31 = *(v30 + 17);
            *(v30 + 17) = 1;
            if (v31 >= 0x40 || (v31 & 1) == 0)
            {

              v32 = v29;
              LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

LABEL_14:
            }
          }

          else if (v22 == 14)
          {
            v23 = *((v21 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v26 = *&v23[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
            if (v26)
            {
              v25 = *(v26 + qword_1EDF11060);
LABEL_29:
              swift_beginAccess();
              v27 = *(v25 + 17);
              *(v25 + 17) = 1;
              if (v27 > 0x3F || (v27 & 1) == 0)
              {

                v28 = v23;

                LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

                goto LABEL_14;
              }
            }
          }
        }

        else
        {
          if (v22 == 4)
          {
            v18 = *((v21 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

            v19 = v18;
            FormatLayoutView.blueprintViewportMonitor(_:willDisplayCellWith:)(a1, a2);

            goto LABEL_14;
          }

          if (v22 == 12)
          {
            v23 = *((v21 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v24 = *&v23[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView];
            if (v24)
            {
              v25 = *(v24 + qword_1EDF11060);
              goto LABEL_29;
            }
          }
        }
      }

      while (1)
      {
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v20 >= v16)
        {
        }

        v15 = *(v3 + 64 + 8 * v20);
        ++v17;
        if (v15)
        {
          v17 = v20;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_37:
      result = sub_1D7263BFC();
      v8 = result;
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_3:
    if (v8 >= 1)
    {

      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA6FB460](i, v7);
        }

        else
        {
          v10 = *(v7 + 8 * i + 32);
        }

        v11 = v10;
        sub_1D725F21C();
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t FormatLayoutView.blueprintViewportMonitor(_:didEndDisplayingCellWith:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
  result = swift_beginAccess();
  v7 = *(v3 + v5);
  if (v7 >> 62)
  {
    goto LABEL_37;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    goto LABEL_3;
  }

  while (2)
  {
    while (2)
    {
      v12 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
      swift_beginAccess();
      v3 = *(v3 + v12);
      v13 = 1 << *(v3 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v3 + 64);
      v16 = (v13 + 63) >> 6;

      v17 = 0;
      while (v15)
      {
LABEL_20:
        v7 = *(*(v3 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v15)))));
        v15 &= v15 - 1;
        v21 = *(v7 + 56);
        v22 = (v21 >> 59) & 0x1E | (v21 >> 2) & 1;
        if (v22 > 12)
        {
          if (v22 == 13)
          {
            v29 = *((v21 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v30 = *&v29[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator];
            swift_beginAccess();
            v31 = *(v30 + 17);
            *(v30 + 17) = 0;
            if (v31 >= 0x40 || (v31 & 1) != 0)
            {

              v32 = v29;
              LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

LABEL_14:
            }
          }

          else if (v22 == 14)
          {
            v23 = *((v21 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v26 = *&v23[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
            if (v26)
            {
              v25 = *(v26 + qword_1EDF11060);
LABEL_29:
              swift_beginAccess();
              v27 = *(v25 + 17);
              *(v25 + 17) = 0;
              if (v27 > 0x3F || (v27 & 1) != 0)
              {

                v28 = v23;

                LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

                goto LABEL_14;
              }
            }
          }
        }

        else
        {
          if (v22 == 4)
          {
            v18 = *((v21 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

            v19 = v18;
            FormatLayoutView.blueprintViewportMonitor(_:didEndDisplayingCellWith:)(a1, a2);

            goto LABEL_14;
          }

          if (v22 == 12)
          {
            v23 = *((v21 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v24 = *&v23[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView];
            if (v24)
            {
              v25 = *(v24 + qword_1EDF11060);
              goto LABEL_29;
            }
          }
        }
      }

      while (1)
      {
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v20 >= v16)
        {
        }

        v15 = *(v3 + 64 + 8 * v20);
        ++v17;
        if (v15)
        {
          v17 = v20;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_37:
      result = sub_1D7263BFC();
      v8 = result;
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_3:
    if (v8 >= 1)
    {

      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA6FB460](i, v7);
        }

        else
        {
          v10 = *(v7 + 8 * i + 32);
        }

        v11 = v10;
        sub_1D725F22C();
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t FormatLayoutView.blueprintViewportMonitorWillDisplaySupplementaryView(_:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_11:
    v13 = *(*(v3 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));
    v6 &= v6 - 1;
    v14 = *(v13 + 56);
    v15 = (v14 >> 59) & 0x1E | (v14 >> 2) & 1;
    if (v15 > 12)
    {
      if (v15 == 13)
      {
        v22 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v23 = *&v22[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator];
        result = swift_beginAccess();
        v24 = *(v23 + 17);
        *(v23 + 17) = 1;
        if (v24 >= 0x40 || (v24 & 1) == 0)
        {

          v25 = v22;
          LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

LABEL_5:
        }
      }

      else if (v15 == 14)
      {
        v16 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v19 = *&v16[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
        if (v19)
        {
          v18 = *(v19 + qword_1EDF11060);
LABEL_20:
          result = swift_beginAccess();
          v20 = *(v18 + 17);
          *(v18 + 17) = 1;
          if (v20 > 0x3F || (v20 & 1) == 0)
          {

            v21 = v16;

            LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

            goto LABEL_5;
          }
        }
      }
    }

    else
    {
      if (v15 == 4)
      {
        v10 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        v11 = v10;
        FormatLayoutView.blueprintViewportMonitorWillDisplaySupplementaryView(_:)(a1);

        goto LABEL_5;
      }

      if (v15 == 12)
      {
        v16 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v17 = *&v16[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView];
        if (v17)
        {
          v18 = *(v17 + qword_1EDF11060);
          goto LABEL_20;
        }
      }
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
    }

    v6 = *(v3 + 64 + 8 * v12);
    ++v9;
    if (v6)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t FormatLayoutView.blueprintViewportMonitorDidEndDisplayingSupplementaryView(_:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_11:
    v13 = *(*(v3 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));
    v6 &= v6 - 1;
    v14 = *(v13 + 56);
    v15 = (v14 >> 59) & 0x1E | (v14 >> 2) & 1;
    if (v15 > 12)
    {
      if (v15 == 13)
      {
        v22 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v23 = *&v22[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator];
        result = swift_beginAccess();
        v24 = *(v23 + 17);
        *(v23 + 17) = 0;
        if (v24 >= 0x40 || (v24 & 1) != 0)
        {

          v25 = v22;
          LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

LABEL_5:
        }
      }

      else if (v15 == 14)
      {
        v16 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v19 = *&v16[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
        if (v19)
        {
          v18 = *(v19 + qword_1EDF11060);
LABEL_20:
          result = swift_beginAccess();
          v20 = *(v18 + 17);
          *(v18 + 17) = 0;
          if (v20 > 0x3F || (v20 & 1) != 0)
          {

            v21 = v16;

            LayeredMediaViewDisplayStateCoordinator.updateDisplay()();

            goto LABEL_5;
          }
        }
      }
    }

    else
    {
      if (v15 == 4)
      {
        v10 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        v11 = v10;
        FormatLayoutView.blueprintViewportMonitorDidEndDisplayingSupplementaryView(_:)(a1);

        goto LABEL_5;
      }

      if (v15 == 12)
      {
        v16 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v17 = *&v16[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView];
        if (v17)
        {
          v18 = *(v17 + qword_1EDF11060);
          goto LABEL_20;
        }
      }
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
    }

    v6 = *(v3 + 64 + 8 * v12);
    ++v9;
    if (v6)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1D704FA84()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

uint64_t FormatLayoutView.accessibilityContainerType.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {
    return 0;
  }

  v1 = sub_1D6A5E96C();
  v3 = v2;

  if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  result = v1;
  if (v3)
  {
    return 4 * (v1 == 0);
  }

  return result;
}

uint64_t (*FormatLayoutView.accessibilityContainerType.modify(uint64_t *a1))()
{
  if (!*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer) || (, v3 = sub_1D6A5E96C(), v5 = v4, , (v5 & 0x100) != 0))
  {
    v3 = 0;
  }

  else if (v5)
  {
    v3 = 4 * (v3 == 0);
  }

  *a1 = v3;
  return nullsub_1;
}

uint64_t FormatLayoutView.isAccessibilityElement.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {
    return 0;
  }

  v1 = sub_1D6A5E96C();
  v3 = v2;

  if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  else
  {
    return v3 & (v1 != 0);
  }
}

uint64_t (*FormatLayoutView.isAccessibilityElement.modify(_BYTE *a1))()
{
  if (!*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer) || (, v3 = sub_1D6A5E96C(), v5 = v4, , (v5 & 0x100) != 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 & (v3 != 0);
  }

  *a1 = v6;
  return nullsub_1;
}

uint64_t (*FormatLayoutView.accessibilityElements.modify(char **a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A5EB3C();
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return sub_1D612BC30;
}

uint64_t (*FormatLayoutView.accessibilityIdentifier.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A5F440();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

uint64_t (*FormatLayoutView.accessibilityLabel.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A5FA90();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

uint64_t (*FormatLayoutView.accessibilityValue.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A5FD6C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

uint64_t (*FormatLayoutView.ts_accessibilityElementHelp.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A60048();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

uint64_t (*FormatLayoutView.accessibilityHint.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A60324();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D70502B8;
}

id sub_1D70502D8(char *a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*&a1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] && (v4 = a1, v5 = , a3(v5), v7 = v6, v4, , v7))
  {
    v8 = sub_1D726203C();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1D705038C(uint64_t (*a1)(uint64_t))
{
  if (!*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {
    return 0;
  }

  v4 = a1(v3);

  return v4;
}

uint64_t (*FormatLayoutView.accessibilityLanguage.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A60600();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

uint64_t sub_1D70504FC(uint64_t (*a1)(uint64_t))
{
  if (!*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {
    return 0;
  }

  v4 = a1(v3);

  return v4;
}

uint64_t (*FormatLayoutView.accessibilityTraits.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A6082C();
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return nullsub_1;
}

uint64_t FormatLayoutView.accessibilityCustomActions.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v1 = sub_1D6A5E96C();
    if ((v2 & 0x100) == 0 && ((v2 & 1) == 0 || v1))
    {
      v4 = sub_1D6A5E790();
      sub_1D7046E0C(v4);

      sub_1D70517D8();
      sub_1D5BBB890(&qword_1EC8909B0, sub_1D70517D8);
      v5 = sub_1D72623CC();

      return v5;
    }
  }

  return 0;
}

uint64_t (*FormatLayoutView.accessibilityCustomActions.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {

    v3 = sub_1D6A5E96C();
    if ((v4 & 0x100) == 0 && ((v4 & 1) == 0 || v3))
    {
      v7 = sub_1D6A5E790();
      v8 = sub_1D7046E0C(v7);

      a1[1] = v8;
      sub_1D70517D8();
      sub_1D5BBB890(&qword_1EC8909B0, sub_1D70517D8);
      v5 = sub_1D72623CC();

      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  *a1 = v5;
  return sub_1D7053E6C;
}

uint64_t sub_1D70508C0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = (v2 + 64);
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = ((v4 + 63) >> 6);
  v38 = v0;
  v39 = v2;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = *(*(v39 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
        v12 = *(v11 + 48);
        if (v12 > 0x3F)
        {
          v40 = 0;
          LOBYTE(v12) = 1;
        }

        else
        {
          v13 = *(v11 + 40);
          if (v12)
          {
            v13 = 0;
          }

          v40 = v13;
        }

        LOBYTE(v43[0]) = v12 & 1;
        v14 = *(v11 + 56);

        v15 = sub_1D6C141D0(v14);
        [v15 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v24 = sub_1D6C141D0(*(v11 + 56));

        v25 = sub_1D5B5A498(0, &qword_1EDF1A710);
        v26 = v43[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D6995784(0, v9[2] + 1, 1, v9);
        }

        v28 = v9[2];
        v27 = v9[3];
        if (v28 >= v27 >> 1)
        {
          v9 = sub_1D6995784((v27 > 1), v28 + 1, 1, v9);
        }

        v6 &= v6 - 1;
        v9[2] = v28 + 1;
        v29 = &v9[10 * v28];
        v29[4] = v40;
        *(v29 + 40) = v26;
        *(v29 + 41) = *v41;
        *(v29 + 11) = *&v41[3];
        v29[6] = v17;
        v29[7] = v19;
        v29[8] = v21;
        v29[9] = v23;
        v29[10] = v24;
        *(v29 + 11) = v43[0];
        v29[13] = v25;
      }

      while (v6);
    }
  }

  *&v43[0] = v9;
  v30 = v38;

  sub_1D70539BC(v43, v30);

  v31 = *&v43[0];
  v32 = *(*&v43[0] + 16);
  if (v32)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1D5B8C520(0, v32, 0);
    v33 = v45;
    v34 = v31 + 32;
    do
    {
      sub_1D7053D3C(v34, v43, sub_1D69A7BBC);
      v42[0] = v43[3];
      v42[1] = v43[4];
      sub_1D5B7C390(v42, v44);
      v45 = v33;
      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1D5B8C520((v35 > 1), v36 + 1, 1);
        v33 = v45;
      }

      *(v33 + 16) = v36 + 1;
      sub_1D5B7C390(v44, (v33 + 32 * v36 + 32));
      v34 += 80;
      --v32;
    }

    while (v32);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v33;
}

Swift::Bool __swiftcall FormatLayoutView.gestureRecognizer(_:shouldRequireFailureOf:)(UIGestureRecognizer _, UIGestureRecognizer shouldRequireFailureOf)
{
  v2 = [(objc_class *)shouldRequireFailureOf.super.isa view];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for FormatButton();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {

      v2 = 0;
    }
  }

  v4 = v2 != 0;

  return v4;
}

Swift::Bool __swiftcall FormatLayoutView.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer _, UITouch shouldReceive)
{
  v2 = [(objc_class *)shouldReceive.super.isa view];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for FormatButton();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {

      v2 = 0;
    }
  }

  v4 = v2 == 0;

  return v4;
}

void __swiftcall FormatLayoutView.sourceView(identifier:)(UIView_optional *__return_ptr retstr, Swift::String identifier)
{
  v3 = v2;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  sub_1D5BB160C(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v32 - v8;
  v10 = type metadata accessor for FeedItem(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_feedItem;
  swift_beginAccess();
  sub_1D6B47F90(&v3[v15], v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D7053DA4(v9, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D5BB160C);
    goto LABEL_3;
  }

  sub_1D5C24B48(v9, v14);
  if (FeedItem.identifier.getter() == countAndFlagsBits && v28 == object)
  {

    sub_1D5BCAB0C(v14, type metadata accessor for FeedItem);
LABEL_24:
    v31 = v3;
    return;
  }

  v30 = sub_1D72646CC();

  sub_1D5BCAB0C(v14, type metadata accessor for FeedItem);
  if (v30)
  {
    goto LABEL_24;
  }

LABEL_3:
  v32[0] = countAndFlagsBits;
  v32[1] = object;
  v16 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v17 = *&v3[v16];
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (v20)
  {
    while (1)
    {
      while (1)
      {
        v23 = v22;
LABEL_10:
        v24 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v35 = *(*(*(v17 + 56) + ((v23 << 9) | (8 * v24))) + 64);
        v25 = v35;
        sub_1D5B5A498(0, &qword_1EDF1A710);
        sub_1D7051840();

        v26 = v25;
        if (swift_dynamicCast())
        {
          break;
        }

        v34 = 0;
        memset(v33, 0, sizeof(v33));
        sub_1D7053DA4(v33, &unk_1EC899958, sub_1D7051840, MEMORY[0x1E69E6720], sub_1D5BB160C);
        v22 = v23;
        if (!v20)
        {
          goto LABEL_7;
        }
      }

      sub_1D5B63F14(v33, v36);
      __swift_project_boxed_opaque_existential_1(v36, v36[3]);
      v27 = sub_1D725EE5C();

      if (v27)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v36);
      v22 = v23;
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
LABEL_7:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        return;
      }

      v20 = *(v17 + 64 + 8 * v23);
      ++v22;
      if (v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D7051384(char *__src, char *__dst, char *a3, char *a4, void *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = __dst - __src;
  v11 = (__dst - __src) / 80;
  v12 = a3 - __dst;
  v13 = (a3 - __dst) / 80;
  if (v11 >= v13)
  {
    if (a4 != __dst || &__dst[80 * v13] <= a4)
    {
      memmove(a4, __dst, 80 * v13);
    }

    v14 = (v6 + 80 * v13);
    if (v12 >= 80 && v8 > v9)
    {
      v20 = -v6;
      while (1)
      {
        v35 = v8 - 80;
        v21 = v14 - 80;
        v22 = &v14[v20];
        v7 -= 80;
        while (1)
        {
          sub_1D7053D3C(v21, v34, sub_1D69A7BBC);
          sub_1D7053D3C(v35, v33, sub_1D69A7BBC);
          v25 = sub_1D7052928(v34, v33);
          if (v5)
          {
            sub_1D5BCAB0C(v33, sub_1D69A7BBC);
            sub_1D5BCAB0C(v34, sub_1D69A7BBC);
            v29 = v22 / 80;
            if (v8 >= v6 && v8 < v6 + 80 * v29 && v8 == v6)
            {
              goto LABEL_49;
            }

            v28 = 80 * v29;
            v19 = v8;
LABEL_48:
            memmove(v19, v6, v28);
            goto LABEL_49;
          }

          v26 = v25;
          sub_1D5BCAB0C(v33, sub_1D69A7BBC);
          sub_1D5BCAB0C(v34, sub_1D69A7BBC);
          if (v26)
          {
            break;
          }

          if (v7 + 80 != v21 + 80)
          {
            memmove(v7, v21, 0x50uLL);
          }

          v23 = v21 - 80;
          v22 -= 80;
          v7 -= 80;
          v24 = v21 > v6;
          v21 -= 80;
          if (!v24)
          {
            v14 = v23 + 80;
            goto LABEL_43;
          }
        }

        v18 = v7 + 80 == v8;
        v8 = v35;
        if (!v18)
        {
          memmove(v7, v35, 0x50uLL);
        }

        v14 = v21 + 80;
        if ((v21 + 80) <= v6)
        {
          v19 = v8;
          goto LABEL_51;
        }

        v19 = v8;
        v20 = -v6;
        if (v8 <= v9)
        {
LABEL_51:
          v14 = v21 + 80;
          goto LABEL_44;
        }
      }
    }

LABEL_43:
    v19 = v8;
LABEL_44:
    v30 = &v14[-v6] / 80;
    if (v19 >= v6 && v19 < v6 + 80 * v30 && v19 == v6)
    {
      goto LABEL_49;
    }

    v28 = 80 * v30;
    goto LABEL_48;
  }

  if (a4 != __src || &__src[80 * v11] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v14 = (v6 + 80 * v11);
  if (v10 < 80 || v8 >= v7)
  {
LABEL_16:
    v19 = v9;
    goto LABEL_44;
  }

  while (1)
  {
    sub_1D7053D3C(v8, v34, sub_1D69A7BBC);
    sub_1D7053D3C(v6, v33, sub_1D69A7BBC);
    v15 = sub_1D7052928(v34, v33);
    if (v5)
    {
      break;
    }

    v16 = v15;
    sub_1D5BCAB0C(v33, sub_1D69A7BBC);
    sub_1D5BCAB0C(v34, sub_1D69A7BBC);
    if (!v16)
    {
      v17 = v6;
      v18 = v9 == v6;
      v6 += 80;
      if (v18)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(v9, v17, 0x50uLL);
      goto LABEL_14;
    }

    v17 = v8;
    v18 = v9 == v8;
    v8 += 80;
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_14:
    v9 += 80;
    if (v6 >= v14 || v8 >= v7)
    {
      goto LABEL_16;
    }
  }

  sub_1D5BCAB0C(v33, sub_1D69A7BBC);
  sub_1D5BCAB0C(v34, sub_1D69A7BBC);
  v27 = &v14[-v6] / 80;
  if (v9 < v6 || v9 >= v6 + 80 * v27 || v9 != v6)
  {
    v28 = 80 * v27;
    v19 = v9;
    goto LABEL_48;
  }

LABEL_49:

  return 1;
}

void sub_1D70517D8()
{
  if (!qword_1EC8909A8)
  {
    sub_1D5B5A498(255, &unk_1EDF04400);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8909A8);
    }
  }
}

unint64_t sub_1D7051840()
{
  result = qword_1EC899950;
  if (!qword_1EC899950)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC899950);
  }

  return result;
}

void sub_1D70518AC(void *a1, unint64_t a2, void *a3)
{
  if (*a3 >> 62)
  {
    if (!sub_1D7263BFC())
    {
      return;
    }
  }

  else if (!*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v7 = sub_1D62096D4();
  if (!v7)
  {
    if (*a3 >> 62)
    {
      v15 = sub_1D7263BFC();
      v9 = __OFSUB__(v15, 1);
      v10 = v15 - 1;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFSUB__(v8, 1);
      v10 = v8 - 1;
      if (!v9)
      {
LABEL_6:
        v7 = sub_1D5EC4C00(v10);
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_27:
    sub_1D726272C();
    goto LABEL_21;
  }

LABEL_7:
  v11 = (a2 >> 59) & 0x1E | (a2 >> 2) & 1;
  if ((v11 - 3) < 0x12 || !v11)
  {
    v16 = v7;
    MEMORY[0x1DA6F9CE0]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    v12 = a1;
    MEMORY[0x1DA6F9CE0]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    goto LABEL_13;
  }

  v3 = v7;
  if (v11 == 1)
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    [a1 setMaskView_];
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v13 = sub_1D725FB7C();
    [a1 setMaskView_];
  }

  v14 = a1;
  MEMORY[0x1DA6F9CE0]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_27;
  }

LABEL_21:
  sub_1D726278C();

LABEL_13:
}

void sub_1D7051B28(unint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v5 = sub_1D7264A5C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (*(*(a2 + 48) + v7) != 2)
      {
        v9 = sub_1D72646CC();

        if (v9)
        {
          goto LABEL_9;
        }

        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return;
        }
      }

LABEL_9:
      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v10 = *(qword_1EDFFCA38 + 112);
      swift_beginAccess();

      v11 = sub_1D6209084();
      v12 = swift_endAccess();
      if (!v11)
      {
        v13 = *(v10 + 64);
        v14 = __OFADD__(v13, 1);
        v15 = v13 + 1;
        if (v14)
        {
          __break(1u);
          return;
        }

        *(v10 + 64) = v15;
        v11 = (*(v10 + 40))(v12);
      }

      sub_1D70518AC(v11, a1, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *a4;
      sub_1D6D7A7E8(v11, 0, 2u, isUniquelyReferenced_nonNull_native);
      *a4 = v20;
    }
  }
}

void sub_1D7051DBC(unint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v5 = sub_1D7264A5C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = *(*(a2 + 48) + v7);
        if (v9 <= 2 && v9 != 1 && v9 != 2)
        {
          break;
        }

        v10 = sub_1D72646CC();

        if (v10)
        {
          goto LABEL_11;
        }

        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return;
        }
      }

LABEL_11:
      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v11 = *(qword_1EDFFCA38 + 120);
      swift_beginAccess();

      v12 = sub_1D6209084();
      v13 = swift_endAccess();
      if (!v12)
      {
        v14 = *(v11 + 64);
        v15 = __OFADD__(v14, 1);
        v16 = v14 + 1;
        if (v15)
        {
          __break(1u);
          return;
        }

        *(v11 + 64) = v16;
        v12 = (*(v11 + 40))(v13);
      }

      sub_1D70518AC(v12, a1, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *a4;
      sub_1D6D7A7E8(v12, 1, 0, isUniquelyReferenced_nonNull_native);
      *a4 = v21;
    }
  }
}

void sub_1D705204C(unint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v5 = sub_1D7264A5C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (*(*(a2 + 48) + v7) > 2u || !*(*(a2 + 48) + v7) || *(*(a2 + 48) + v7) == 2)
      {
        v9 = sub_1D72646CC();

        if (v9)
        {
          goto LABEL_11;
        }

        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return;
        }
      }

LABEL_11:
      v10 = [objc_allocWithZone(sub_1D725DD9C()) initWithFrame_];
      sub_1D70518AC(v10, a1, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *a4;
      sub_1D6D7A7E8(v10, 2, 1u, isUniquelyReferenced_nonNull_native);
      *a4 = v15;
    }
  }
}

void sub_1D7052268(unint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v5 = sub_1D7264A5C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = *(*(a2 + 48) + v7);
        if (v9 > 2 && v9 != 4 && v9 != 5)
        {
          break;
        }

        v10 = sub_1D72646CC();

        if (v10)
        {
          goto LABEL_11;
        }

        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return;
        }
      }

LABEL_11:
      v11 = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
      sub_1D70518AC(v11, a1, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *a4;
      sub_1D6D7A7E8(v11, 3, 3u, isUniquelyReferenced_nonNull_native);
      *a4 = v16;
    }
  }
}

void sub_1D7052480(unint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v5 = sub_1D7264A5C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = *(*(a2 + 48) + v7);
        if (v9 >= 4 && v9 != 5)
        {
          break;
        }

        v10 = sub_1D72646CC();

        if (v10)
        {
          goto LABEL_10;
        }

        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return;
        }
      }

LABEL_10:
      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v11 = *(qword_1EDFFCA38 + 80);
      swift_beginAccess();

      v12 = sub_1D6209084();
      v13 = swift_endAccess();
      if (!v12)
      {
        v14 = *(v11 + 64);
        v15 = __OFADD__(v14, 1);
        v16 = v14 + 1;
        if (v15)
        {
          __break(1u);
          return;
        }

        *(v11 + 64) = v16;
        v12 = (*(v11 + 40))(v13);
      }

      sub_1D70518AC(v12, a1, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *a4;
      sub_1D6D7A7E8(v12, 4, 4u, isUniquelyReferenced_nonNull_native);
      *a4 = v21;
    }
  }
}

void sub_1D705270C(unint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v5 = sub_1D7264A5C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = *(*(a2 + 48) + v7);
        if (v9 > 4)
        {
          break;
        }

        v10 = sub_1D72646CC();

        if (v10)
        {
          goto LABEL_9;
        }

        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return;
        }
      }

LABEL_9:
      v11 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithFrame_];
      sub_1D70518AC(v11, a1, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *a4;
      sub_1D6D7A7E8(v11, 5, 5u, isUniquelyReferenced_nonNull_native);
      *a4 = v16;
    }
  }
}

BOOL sub_1D7052928(uint64_t a1, uint64_t a2)
{
  sub_1D7053D3C(a1, &v60, sub_1D69A7BBC);
  v3 = v60;
  v4 = v61;
  v30 = v63;
  v32 = v62;
  sub_1D7053D3C(a2, &v55, sub_1D69A7BBC);
  v5 = v55;
  v6 = v56;
  v50 = v3;
  v51 = v4;
  v52 = v32;
  v53 = v30;
  v28 = v58;
  v31 = v57;
  sub_1D5B76B10(v64, &v54);
  *&v47 = v5;
  BYTE8(v47) = v6;
  v48.origin = v31;
  v48.size = v28;
  sub_1D5B76B10(v59, v49);
  sub_1D7053D3C(&v50, &v44, sub_1D69A7BBC);
  if (BYTE8(v44))
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
    if ((v6 & 1) == 0)
    {
      sub_1D5BCAB0C(&v47, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v50, sub_1D69A7BBC);
      v9 = 0;
      goto LABEL_19;
    }

    sub_1D7053D3C(&v50, &v36, sub_1D69A7BBC);
    MinX = CGRectGetMinX(v38);
    sub_1D7053D3C(&v47, v33, sub_1D69A7BBC);
    v8 = CGRectGetMinX(v34);
    __swift_destroy_boxed_opaque_existential_1(&v35);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v9 = MinX < v8;
    if (MinX < v8)
    {
      sub_1D7053D3C(&v50, &v36, sub_1D69A7BBC);
      y = v38.origin.y;
      x = v38.origin.x;
      width = v38.size.width;
      *&v44 = v36;
      BYTE8(v44) = v37;
      v45 = v38;
      height = v38.size.height;
      sub_1D5B7C390(v39, v46);
      v17 = &v47;
    }

    else
    {
      sub_1D7053D3C(&v47, &v36, sub_1D69A7BBC);
      y = v38.origin.y;
      x = v38.origin.x;
      width = v38.size.width;
      *&v44 = v36;
      BYTE8(v44) = v37;
      v45 = v38;
      height = v38.size.height;
      sub_1D5B7C390(v39, v46);
      v17 = &v50;
    }

    sub_1D7053D3C(v17, &v36, sub_1D69A7BBC);
    origin = v38.origin;
    size = v38.size;
    v40 = v36;
    v41 = v37;
    v42 = v38;
    sub_1D5B7C390(v39, &v43);
    v66.origin = origin;
    v66.size = size;
    v29 = CGRectGetMinX(v66);
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    MaxX = CGRectGetMaxX(v67);
    v68.origin.y = y;
    v21 = MaxX;
    v65 = x;
    v68.origin.x = x;
    v27 = v68.origin.y;
    v68.size.width = width;
    v68.size.height = height;
    MinY = CGRectGetMinY(v68);
    v69.origin = origin;
    v69.size = size;
    v23 = MinY - CGRectGetMinY(v69);
    if (v23 >= 10.0 || v23 >= v29 - v21)
    {
      sub_1D5BCAB0C(&v40, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v44, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v47, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v50, sub_1D69A7BBC);
    }

    else
    {
      v70.origin = origin;
      v70.size = size;
      MaxY = CGRectGetMaxY(v70);
      v71.origin.x = v65;
      v71.size.width = width;
      v71.origin.y = v27;
      v71.size.height = height;
      v25 = CGRectGetMinY(v71);
      sub_1D5BCAB0C(&v40, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v44, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v47, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v50, sub_1D69A7BBC);
      if (v25 < MaxY)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v10 = v44;
    sub_1D5BCAB0C(&v50, sub_1D69A7BBC);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v44 = v47;
    v45 = v48;
    v46[0] = v49[0];
    v46[1] = v49[1];
    v11 = v47;
    v12 = BYTE8(v47);
    __swift_destroy_boxed_opaque_existential_1(v46);
    if (v12)
    {
      v9 = 1;
      goto LABEL_19;
    }

    if (v10 != v11)
    {
      v9 = v10 < v11;
      goto LABEL_19;
    }
  }

  if (*(&v32 + 1) == v31.y)
  {
    v9 = *&v32 <= v31.x;
  }

  else
  {
    v9 = *(&v32 + 1) < v31.y;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v9;
}

void sub_1D7052DDC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a3[1];
  v103 = a5;
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v102 = *a1;
    if (*a1)
    {
      v103 = v103;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_93;
    }

    goto LABEL_134;
  }

  v98 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = v6;
      v14 = *a3;
      sub_1D7053D3C(*a3 + 80 * v12, &v110, sub_1D69A7BBC);
      sub_1D7053D3C(v14 + 80 * v11, v109, sub_1D69A7BBC);
      v15 = sub_1D7052928(&v110, v109);
      if (v13)
      {
LABEL_102:
        sub_1D5BCAB0C(v109, sub_1D69A7BBC);
        sub_1D5BCAB0C(&v110, sub_1D69A7BBC);

        return;
      }

      v16 = v15;
      sub_1D5BCAB0C(v109, sub_1D69A7BBC);
      sub_1D5BCAB0C(&v110, sub_1D69A7BBC);
      v17 = v11 + 2;
      v105 = v11;
      v18 = 80 * v11;
      v19 = v14 + 80 * v11 + 160;
      v6 = 0;
      while (v8 != v17)
      {
        sub_1D7053D3C(v19, &v110, sub_1D69A7BBC);
        sub_1D7053D3C(v19 - 80, v109, sub_1D69A7BBC);
        v20 = sub_1D7052928(&v110, v109);
        sub_1D5BCAB0C(v109, sub_1D69A7BBC);
        sub_1D5BCAB0C(&v110, sub_1D69A7BBC);
        ++v17;
        v19 += 80;
        if ((v16 ^ v20))
        {
          v8 = v17 - 1;
          break;
        }
      }

      v11 = v105;
      if (v16)
      {
        if (v8 < v105)
        {
          goto LABEL_128;
        }

        if (v105 < v8)
        {
          v21 = 80 * v8 - 80;
          v22 = v8;
          do
          {
            if (v11 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v23 = (v24 + v21);
              v111 = *(v24 + v18 + 16);
              v112 = *(v24 + v18 + 32);
              v113 = *(v24 + v18 + 48);
              v114 = *(v24 + v18 + 64);
              v110 = *(v24 + v18);
              memmove((v24 + v18), (v24 + v21), 0x50uLL);
              v23[1] = v111;
              v23[2] = v112;
              v23[3] = v113;
              v23[4] = v114;
              *v23 = v110;
            }

            ++v11;
            v21 -= 80;
            v18 += 80;
          }

          while (v11 < v22);
          v11 = v105;
        }
      }
    }

    v25 = a3[1];
    if (v8 >= v25)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_124;
    }

    if (v8 - v11 >= v98)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v11, v98))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:

      __break(1u);
LABEL_130:

      __break(1u);
      goto LABEL_131;
    }

    if (v11 + v98 >= v25)
    {
      v26 = a3[1];
    }

    else
    {
      v26 = v11 + v98;
    }

    if (v26 < v11)
    {
      goto LABEL_127;
    }

    if (v8 == v26)
    {
LABEL_29:
      v27 = v8;
      if (v8 < v11)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v77 = *a3;
      v78 = (*a3 + 80 * v8);
      v107 = v11;
      v79 = v11 - v8;
      v100 = v26;
      do
      {
        v97 = v79;
        v102 = v78;
        do
        {
          sub_1D7053D3C(v78, &v110, sub_1D69A7BBC);
          v80 = v78 - 80;
          sub_1D7053D3C((v78 - 80), v109, sub_1D69A7BBC);
          v81 = sub_1D7052928(&v110, v109);
          if (v6)
          {
            goto LABEL_102;
          }

          v82 = v81;
          sub_1D5BCAB0C(v109, sub_1D69A7BBC);
          sub_1D5BCAB0C(&v110, sub_1D69A7BBC);
          if (!v82)
          {
            break;
          }

          if (!v77)
          {
            goto LABEL_130;
          }

          v111 = *(v78 + 1);
          v112 = *(v78 + 2);
          v113 = *(v78 + 3);
          v114 = *(v78 + 4);
          v110 = *v78;
          v83 = *(v78 - 2);
          *(v78 + 2) = *(v78 - 3);
          *(v78 + 3) = v83;
          *(v78 + 4) = *(v78 - 1);
          v84 = *(v78 - 4);
          *v78 = *v80;
          *(v78 + 1) = v84;
          *v80 = v110;
          v85 = v111;
          v86 = v112;
          v87 = v114;
          *(v78 - 2) = v113;
          *(v78 - 1) = v87;
          *(v78 - 4) = v85;
          *(v78 - 3) = v86;
          v78 -= 80;
        }

        while (!__CFADD__(v79++, 1));
        ++v8;
        v78 = v102 + 80;
        v79 = v97 - 1;
        v27 = v100;
      }

      while (v8 != v100);
      v11 = v107;
      if (v100 < v107)
      {
        goto LABEL_123;
      }
    }

    v106 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D698BA94(0, *(v10 + 2) + 1, 1, v10);
    }

    v6 = *(v10 + 2);
    v28 = *(v10 + 3);
    v29 = v6 + 1;
    if (v6 >= v28 >> 1)
    {
      v10 = sub_1D698BA94((v28 > 1), v6 + 1, 1, v10);
    }

    *(v10 + 2) = v29;
    v30 = &v10[16 * v6];
    *(v30 + 4) = v11;
    *(v30 + 5) = v27;
    v99 = v27;
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v6)
    {
      break;
    }

LABEL_3:
    v6 = v106;
    v8 = a3[1];
    v9 = v99;
    if (v99 >= v8)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v31 = v29 - 1;
    if (v29 >= 4)
    {
      v36 = &v10[16 * v29 + 32];
      v37 = *(v36 - 64);
      v38 = *(v36 - 56);
      v42 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      if (v42)
      {
        goto LABEL_110;
      }

      v41 = *(v36 - 48);
      v40 = *(v36 - 40);
      v42 = __OFSUB__(v40, v41);
      v34 = v40 - v41;
      v35 = v42;
      if (v42)
      {
        goto LABEL_111;
      }

      v43 = &v10[16 * v29];
      v45 = *v43;
      v44 = *(v43 + 1);
      v42 = __OFSUB__(v44, v45);
      v46 = v44 - v45;
      if (v42)
      {
        goto LABEL_113;
      }

      v42 = __OFADD__(v34, v46);
      v47 = v34 + v46;
      if (v42)
      {
        goto LABEL_116;
      }

      if (v47 >= v39)
      {
        v65 = &v10[16 * v31 + 32];
        v67 = *v65;
        v66 = *(v65 + 1);
        v42 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v42)
        {
          goto LABEL_122;
        }

        if (v34 < v68)
        {
          v31 = v29 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v29 == 3)
    {
      v32 = *(v10 + 4);
      v33 = *(v10 + 5);
      v42 = __OFSUB__(v33, v32);
      v34 = v33 - v32;
      v35 = v42;
LABEL_49:
      if (v35)
      {
        goto LABEL_112;
      }

      v48 = &v10[16 * v29];
      v50 = *v48;
      v49 = *(v48 + 1);
      v51 = __OFSUB__(v49, v50);
      v52 = v49 - v50;
      v53 = v51;
      if (v51)
      {
        goto LABEL_115;
      }

      v54 = &v10[16 * v31 + 32];
      v56 = *v54;
      v55 = *(v54 + 1);
      v42 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v42)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v52, v57))
      {
        goto LABEL_119;
      }

      if (v52 + v57 >= v34)
      {
        if (v34 < v57)
        {
          v31 = v29 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v58 = &v10[16 * v29];
    v60 = *v58;
    v59 = *(v58 + 1);
    v42 = __OFSUB__(v59, v60);
    v52 = v59 - v60;
    v53 = v42;
LABEL_63:
    if (v53)
    {
      goto LABEL_114;
    }

    v61 = &v10[16 * v31];
    v63 = *(v61 + 4);
    v62 = *(v61 + 5);
    v42 = __OFSUB__(v62, v63);
    v64 = v62 - v63;
    if (v42)
    {
      goto LABEL_117;
    }

    if (v64 < v52)
    {
      goto LABEL_3;
    }

LABEL_70:
    v69 = v31 - 1;
    if (v31 - 1 >= v29)
    {
      break;
    }

    v70 = *a3;
    if (!*a3)
    {
      goto LABEL_129;
    }

    v71 = *&v10[16 * v69 + 32];
    v6 = *&v10[16 * v31 + 40];
    v72 = (v70 + 80 * v71);
    v73 = (v70 + 80 * *&v10[16 * v31 + 32]);
    v74 = (v70 + 80 * v6);
    v75 = v103;
    sub_1D7051384(v72, v73, v74, v102, v75);
    if (v106)
    {

      return;
    }

    if (v6 < v71)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D62FF50C(v10);
    }

    if (v69 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v76 = &v10[16 * v69];
    *(v76 + 4) = v71;
    *(v76 + 5) = v6;
    v115 = v10;
    sub_1D62FF480(v31);
    v10 = v115;
    v29 = *(v115 + 2);
    if (v29 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v10 = sub_1D62FF50C(v10);
LABEL_93:
  v108 = v6;
  v115 = v10;
  v89 = *(v10 + 2);
  if (v89 < 2)
  {
LABEL_103:
  }

  else
  {
    while (1)
    {
      v90 = *a3;
      if (!*a3)
      {
        break;
      }

      v91 = *&v10[16 * v89];
      v6 = *&v10[16 * v89 + 24];
      v92 = (v90 + 80 * v91);
      v93 = (v90 + 80 * *&v10[16 * v89 + 16]);
      v94 = (v90 + 80 * v6);
      v95 = v103;
      sub_1D7051384(v92, v93, v94, v102, v95);
      if (v108)
      {

        return;
      }

      if (v6 < v91)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D62FF50C(v10);
      }

      if (v89 - 2 >= *(v10 + 2))
      {
        goto LABEL_121;
      }

      v96 = &v10[16 * v89];
      *v96 = v91;
      *(v96 + 1) = v6;
      v115 = v10;
      sub_1D62FF480(v89 - 1);
      v10 = v115;
      v89 = *(v115 + 2);
      if (v89 <= 1)
      {
        goto LABEL_103;
      }
    }

LABEL_131:

    __break(1u);
LABEL_132:

    __break(1u);
LABEL_133:

    __break(1u);
LABEL_134:

    __break(1u);
  }
}

uint64_t sub_1D7053714(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = (*a4 + 80 * a3);
    v8 = result - a3;
LABEL_4:
    v9 = v8;
    v25 = v7;
    while (1)
    {
      sub_1D7053D3C(v7, &v20, sub_1D69A7BBC);
      v10 = v7 - 5;
      sub_1D7053D3C((v7 - 5), v19, sub_1D69A7BBC);
      v11 = sub_1D7052928(&v20, v19);
      sub_1D5BCAB0C(v19, sub_1D69A7BBC);
      result = sub_1D5BCAB0C(&v20, sub_1D69A7BBC);
      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v21 = v7[1];
        v22 = v7[2];
        v23 = v7[3];
        v24 = v7[4];
        v20 = *v7;
        v12 = *(v7 - 2);
        v7[2] = *(v7 - 3);
        v7[3] = v12;
        v7[4] = *(v7 - 1);
        v13 = *(v7 - 4);
        *v7 = *v10;
        v7[1] = v13;
        *v10 = v20;
        v14 = v21;
        v15 = v22;
        v16 = v24;
        *(v7 - 2) = v23;
        *(v7 - 1) = v16;
        *(v7 - 4) = v14;
        *(v7 - 3) = v15;
        v7 -= 5;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v25 + 5;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1D7053898(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_1D726449C();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D69A7BBC();
        v8 = sub_1D726276C();
        *(v8 + 16) = v7;
      }

      v10[0] = (v8 + 32);
      v10[1] = v7;
      v9 = v4;
      sub_1D7052DDC(v10, v11, a1, v6, v9);

      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1D7053714(0, v3, 1, a1);
  }
}

void sub_1D70539BC(void **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFD10(v3);
  }

  v5 = v3[2];
  v7[0] = (v3 + 4);
  v7[1] = v5;
  v6 = v4;
  sub_1D7053898(v7, v6);

  *a1 = v3;
}

void sub_1D7053A54()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillShow);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillHide);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer) = 0;
  v5 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_feedItem;
  v6 = type metadata accessor for FeedItem(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelContextMenu) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_shouldCancelDrag) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_token) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_isDirty) = 0;
  v8 = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers) = v7;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_loadAwareObservers) = v7;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_layoutObservers) = v7;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers) = v7;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewKey) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewsByName) = v8;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer) = 0;
  sub_1D726402C();
  __break(1u);
}

void sub_1D7053C04()
{
  if (!qword_1EDF3BDE0)
  {
    sub_1D7053E1C(255, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
    v0 = sub_1D725A81C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BDE0);
    }
  }
}

id sub_1D7053C8C(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return a1;
  }
}

void sub_1D7053C9C(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1D7053CCC()
{
  if (!qword_1EC899970)
  {
    type metadata accessor for FormatShareAttributionData();
    type metadata accessor for FormatShareAttributionNodeLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC899970);
    }
  }
}

uint64_t sub_1D7053D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7053DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D7053E1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t FormatLatestCompatibleFileReference.init(latestCompatible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FormatFileReference();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  sub_1D72644CC();
  swift_allocObject();
  v6 = sub_1D726270C();
  (*(v5 + 32))(v7, a1, v4);
  v8 = sub_1D5BFCB60(v6);
  FormatFileReferenceCollection.init(references:)(v8, &v11);
  v9 = v11;
  result = type metadata accessor for FormatLatestCompatibleFileReference();
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t static FormatLatestCompatibleFileReference.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (static FormatFileReference.== infix(_:_:)(a1, a2, a3, a4))
  {
    type metadata accessor for FormatLatestCompatibleFileReference();

    v4 = static FormatFileReferenceCollection.== infix(_:_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t FormatLatestCompatibleFileReference.latestCompatible.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatFileReference();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FormatLatestCompatibleFileReference.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v8 = type metadata accessor for FormatFileReference();
  v9 = sub_1D726393C();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - v11;
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  sub_1D5B68374(a1, v35);
  FormatFileReferenceCollection.init(from:)(v35, &v36);
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a1;
  v18 = v36;
  v35[0] = v36;
  type metadata accessor for FormatFileReferenceCollection();
  FormatFileReferenceCollection.latestFormatCompatible.getter();
  if ((*(v34 + 48))(v12, 1, v8) == 1)
  {
    v19 = (*(v32 + 8))(v12, v9);
    v35[0] = v18;
    MEMORY[0x1EEE9AC00](v19, v20);
    *(&v30 - 2) = a2;
    *(&v30 - 1) = a3;
    v21 = sub_1D72627FC();
    WitnessTable = swift_getWitnessTable();
    v24 = sub_1D5B874E4(sub_1D70545A0, (&v30 - 4), v21, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v23);

    v35[0] = v24;
    sub_1D5BBE0A8();
    sub_1D5BB0AB8();
    v25 = sub_1D7261F3C();
    v27 = v26;

    sub_1D5E2D970();
    swift_allocError();
    *v28 = v25;
    v28[1] = v27;
    v28[3] = 0;
    v28[4] = 0;
    v28[2] = 0;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
    v29 = *(v34 + 32);
    (v29)(v16, v12, v8);
    *(v33 + *(type metadata accessor for FormatLatestCompatibleFileReference() + 36)) = v18;
    return v29();
  }
}

uint64_t sub_1D7054454@<X0>(void *a1@<X8>)
{
  type metadata accessor for FormatFileReference();
  swift_getWitnessTable();
  result = sub_1D726466C();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t FormatLatestCompatibleFileReference.encode(to:)(void *a1)
{
  type metadata accessor for FormatFileReferenceCollection();

  FormatFileReferenceCollection.encode(to:)(a1);
}

uint64_t sub_1D70545C0(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D7054640(_DWORD *a1, int a2, uint64_t a3)
{
  v6 = *(*(sub_1D72585BC() - 8) + 64);
  v7 = *(sub_1D725BD1C() - 8);
  v8 = *(v7 + 80);
  v9 = v8 | 7;
  v10 = ((v8 | 7) + v6) & ~(v8 | 7);
  v11 = *(v7 + 64);
  v12 = (v11 + v8 + ((v11 + v8 + ((v8 + 16) & ~v8)) & ~v8)) & ~v8;
  if (*(v7 + 84))
  {
    v13 = *(v7 + 64);
  }

  else
  {
    v13 = v11 + 1;
  }

  v14 = ((((((((v13 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v14 + v10;
  v16 = v14 + ((*(*(*(a3 + 16) - 8) + 64) + v9) & ~v9);
  if (v16 <= v15)
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  v19 = v16 + 16;
  v20 = a2 - 2147483646;
  if ((v16 + 16) > 3)
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v22 == 4)
  {
    v23 = *(a1 + v19);
    if (!v23)
    {
      goto LABEL_8;
    }
  }

  else if (v22 == 2)
  {
    v23 = *(a1 + v19);
    if (!*(a1 + v19))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v23 = *(a1 + v19);
    if (!*(a1 + v19))
    {
LABEL_8:
      v17 = *((a1 + v16 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v24 = v23 - 1;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    LODWORD(v19) = *a1;
  }

  return (v19 | v24) ^ 0x80000000;
}

void sub_1D7054814(int *a1, int a2, int a3, uint64_t a4)
{
  v8 = *(*(sub_1D72585BC() - 8) + 64);
  v9 = *(sub_1D725BD1C() - 8);
  v10 = *(v9 + 80);
  v11 = v10 | 7;
  v12 = ((v10 | 7) + v8) & ~(v10 | 7);
  v13 = *(v9 + 64);
  v14 = (v13 + v10 + ((v13 + v10 + ((v10 + 16) & ~v10)) & ~v10)) & ~v10;
  if (*(v9 + 84))
  {
    v15 = *(v9 + 64);
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = ((((((((v15 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = v16 + v12;
  v18 = v16 + ((*(*(*(a4 + 16) - 8) + 64) + v11) & ~v11);
  if (v18 <= v17)
  {
    v18 = v17;
  }

  v19 = v18 + 16;
  if (a3 < 0)
  {
    v21 = a3 - 2147483646;
    if (v19 > 3)
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = v22;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    v23 = a2 & 0x7FFFFFFF;
    if (v19 <= 3)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 1;
    }

    if (v19)
    {
      if (v19 <= 3)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      bzero(a1, v19);
      *a1 = v25;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(a1 + v19) = v24;
      }

      else
      {
        *(a1 + v19) = v24;
      }
    }

    else if (v20)
    {
      *(a1 + v19) = v24;
    }

    return;
  }

  v20 = 0;
  if (a2 < 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (v20 <= 1)
  {
    if (v20)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v20 == 2)
  {
    *(a1 + v19) = 0;
    goto LABEL_34;
  }

  *(a1 + v19) = 0;
  if (a2)
  {
LABEL_35:
    *((a1 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }
}

id sub_1D7054A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 64);
  sub_1D725A7EC();
  v5 = sub_1D6E465F4();

  if (v4)
  {
    v6 = &unk_1F50F4380;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1D5EEFCA0(v6, v5);

  v8 = sub_1D61881BC(12);
  *a2 = v3;
  *(a2 + 8) = &unk_1F50F43A8;
  *(a2 + 16) = 0;
  *(a2 + 66) = 3;
  *(a2 + 72) = v7;
  *(a2 + 80) = v3;
  *(a2 + 88) = v8 & 1 | 0x10;
  type metadata accessor for FormatAction();
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t FormatIssueBinding.Action.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D7054B90()
{
  result = qword_1EC899978;
  if (!qword_1EC899978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899978);
  }

  return result;
}

unint64_t sub_1D7054BE4(uint64_t a1)
{
  result = sub_1D7054C0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7054C0C()
{
  result = qword_1EC899980;
  if (!qword_1EC899980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899980);
  }

  return result;
}

unint64_t sub_1D7054C60(void *a1)
{
  a1[1] = sub_1D667D400();
  a1[2] = sub_1D67007B8();
  result = sub_1D7054B90();
  a1[3] = result;
  return result;
}

uint64_t static FormatArrangementSlotInstruction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  type metadata accessor for FormatArrangementTemplateReference();

  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for FormatCodingSafeishArrayStrategy();
  swift_getWitnessTable();
  sub_1D72627FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = static FormatCodingDefault<>.== infix(_:_:)();

  return v4 & ~(v2 ^ v3) & 1;
}

uint64_t FormatArrangementSlotInstruction.templates.getter()
{
  sub_1D5D2F2BC();
}

uint64_t sub_1D7054E70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FormatArrangementSlotInstruction();
  *a1 = sub_1D5D2F2BC();
}

uint64_t FormatArrangementSlotInstruction.templates.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1D7054F4C@<X0>(_BYTE *a1@<X8>)
{
  result = FormatArrangementSlotInstruction.personalize.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7054FBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xE900000000000073;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E6F73726570 && a2 == 0xEB00000000657A69)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D7055094(char a1)
{
  if (a1)
  {
    return 0x6C616E6F73726570;
  }

  else
  {
    return 0x6574616C706D6574;
  }
}

uint64_t sub_1D70550E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7054FBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7055118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D705516C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatArrangementSlotInstruction.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = v4;
  type metadata accessor for FormatArrangementSlotInstruction.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - v7;
  v9 = *v2;
  HIDWORD(v15) = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B5C();
  v23 = v9;
  v22 = 0;
  type metadata accessor for FormatArrangementTemplateReference();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = type metadata accessor for FormatCodingSafeishArrayStrategy();
  WitnessTable = swift_getWitnessTable();
  v12 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v23, &v22, v5, v10, WitnessTable);
  if (v12)
  {

    return (*(v18 + 8))(v8, v5);
  }

  else
  {
    v14 = v18;

    v21 = BYTE4(v15);
    v20 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v21, &v20, v5, &type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy);
    return (*(v14 + 8))(v8, v5);
  }
}

uint64_t FormatArrangementSlotInstruction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17[0] = a3;
  v17[1] = a2;
  type metadata accessor for FormatArrangementSlotInstruction.CodingKeys();
  swift_getWitnessTable();
  v18 = sub_1D726435C();
  v5 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v6);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B0C();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v5;
  v10 = v17[0];
  v20[1] = 0;
  type metadata accessor for FormatArrangementTemplateReference();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = type metadata accessor for FormatCodingSafeishArrayStrategy();
  WitnessTable = swift_getWitnessTable();
  v13 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)(v11, WitnessTable, &v21);
  v14 = v21;
  v19 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy, v20);
  (*(v9 + 8))(v8, v13);
  v15 = v20[0];
  *v10 = v14;
  *(v10 + 8) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D705574C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

char *sub_1D7055A8C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_button;
  *&v2[v5] = [objc_opt_self() buttonWithType_];
  v6 = OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_onTap;
  sub_1D5BFDBB4();
  *&v2[v6] = [objc_allocWithZone(v7) init];
  if (a2)
  {
    v8 = sub_1D726203C();
  }

  else
  {
    v8 = 0;
  }

  v17.receiver = v2;
  v17.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v17, sel_initWithStyle_reuseIdentifier_, 3, v8);

  v10 = v9;
  v11 = [v10 contentView];
  v12 = OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_button;
  [v11 addSubview_];

  v13 = *&v10[v12];
  v14 = *&v10[OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_onTap];
  v15 = v13;
  sub_1D725F67C();

  return v10;
}

id SharingTagTextActivityItemSource.__allocating_init(tag:)(void *a1)
{
  swift_getObjectType();

  return sub_1D70566C4(a1, v1);
}

id SharingTagTextActivityItemSource.__allocating_init(feedDescriptor:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_tag] = FCFeedDescriptor.feedTag.getter();
  v5 = FCFeedDescriptor.feedExternalTitle.getter();
  v6 = &v4[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle];
  *v6 = v5;
  v6[1] = v7;
  v10.receiver = v4;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id SharingTagTextActivityItemSource.init(tag:)(void *a1)
{
  swift_getObjectType();

  return sub_1D705670C(a1, v1);
}

id SharingTagTextActivityItemSource.init(feedDescriptor:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_tag] = FCFeedDescriptor.feedTag.getter();
  v5 = FCFeedDescriptor.feedExternalTitle.getter();
  v6 = &v2[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle];
  *v6 = v5;
  v6[1] = v7;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

uint64_t SharingTagTextActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle);
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle + 8);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

double SharingTagTextActivityItemSource.activityViewController(_:itemForActivityType:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D726203C();
  v6 = v5;
  if (a1)
  {
    v7 = sub_1D726207C();
    v9 = v8;
    if (v7 == sub_1D726207C() && v9 == v10)
    {

LABEL_13:
      v14 = MEMORY[0x1DA6F9430](2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
      v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle);
      v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle + 8);
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16 == 0xE000000000000000;
      }

      if (!v17 && (sub_1D72646CC() & 1) == 0)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28[0] = v14;
        sub_1D6D76D20(v15, v16, 0x2D6C656E6E616863, 0xED0000656C746974, isUniquelyReferenced_nonNull_native);
      }

      v19 = objc_opt_self();
      v20 = sub_1D7261D2C();

      v28[0] = 0;
      v21 = [v19 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:v28];

      v22 = v28[0];
      if (v21)
      {
        v23 = sub_1D725867C();
        v25 = v24;

        *(a2 + 24) = MEMORY[0x1E6969080];
        *a2 = v23;
        *(a2 + 8) = v25;
      }

      else
      {
        v26 = v22;
        v27 = sub_1D725829C();

        swift_willThrow();
        result = 0.0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
      }

      return result;
    }

    v12 = sub_1D72646CC();

    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  sub_1D70560AC(a1, v2, a2);
  return result;
}

uint64_t sub_1D70560AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_22;
  }

  v4 = a2;
  v5 = sub_1D726207C();
  v7 = v6;
  if (v5 == sub_1D726207C() && v7 == v8)
  {
    goto LABEL_15;
  }

  v10 = sub_1D72646CC();

  if (v10)
  {
LABEL_16:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v12 = sub_1D726207C();
  v14 = v13;
  if (v12 == sub_1D726207C() && v14 == v15)
  {
LABEL_15:

    goto LABEL_16;
  }

  v17 = sub_1D72646CC();

  if (v17)
  {
    goto LABEL_16;
  }

  v18 = sub_1D726207C();
  v20 = v19;
  if (v18 == sub_1D726207C() && v20 == v21)
  {
    goto LABEL_14;
  }

  v22 = sub_1D72646CC();

  if (v22)
  {
    goto LABEL_21;
  }

  v23 = sub_1D726207C();
  v25 = v24;
  if (v23 == sub_1D726207C() && v25 == v26)
  {
LABEL_14:

LABEL_21:
    *(a3 + 24) = MEMORY[0x1E69E6158];
    *a3 = 0;
    *(a3 + 8) = 0xE000000000000000;
    return result;
  }

  v27 = sub_1D72646CC();

  a2 = v4;
  if (v27)
  {
    goto LABEL_21;
  }

LABEL_22:
  v29 = *(a2 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle);
  v28 = *(a2 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle + 8);
  *(a3 + 24) = MEMORY[0x1E69E6158];
  *a3 = v29;
  *(a3 + 8) = v28;
}

Swift::String __swiftcall SharingTagTextActivityItemSource.activityViewController(_:dataTypeIdentifierForActivityType:)(UIActivityViewController *_, UIActivityType_optional dataTypeIdentifierForActivityType)
{
  v2 = sub_1D607A9A8(dataTypeIdentifierForActivityType.value);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall SharingTagTextActivityItemSource.activityViewController(_:subjectForActivityType:)(UIActivityViewController *_, UIActivityType_optional subjectForActivityType)
{
  v3 = *(v2 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle);
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle + 8);

  v5 = v3;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

id SharingTagTextActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingTagTextActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D70566C4(void *a1, Class a2)
{
  v3 = objc_allocWithZone(a2);

  return sub_1D705670C(a1, v3);
}

id sub_1D705670C(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  *&a2[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_tag] = a1;
  v5 = [swift_unknownObjectRetain() asPuzzleType];
  if (v5)
  {
    v6 = [v5 nameForSharing];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = [a1 displayName];
  }

  v7 = sub_1D726207C();
  v9 = v8;

  swift_unknownObjectRelease();
  v10 = &a2[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle];
  *v10 = v7;
  v10[1] = v9;
  v12.receiver = a2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t ResetPuzzleProgressCommandHandler.__allocating_init(historyService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D5B7DDE8(a1, v2 + 16);
  return v2;
}

uint64_t ResetPuzzleProgressCommandHandler.handle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v4[5];
  v7 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v6);
  v8 = [a4 identifier];
  v9 = sub_1D726207C();
  v11 = v10;

  (*(v7 + 40))(v9, v11, v6, v7);
}

uint64_t ResetPuzzleProgressCommandHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D70569D0(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v5 = *a4;
  v6 = *(*v4 + 40);
  v7 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v6);
  v8 = [v5 identifier];
  v9 = sub_1D726207C();
  v11 = v10;

  (*(v7 + 40))(v9, v11, v6, v7);
}

uint64_t _s8NewsFeed33ResetPuzzleProgressCommandHandlerC9canHandle13commandCenter0J04with6sourceSb5TeaUI0fK4Type_p_AI0F0CySo17FCPuzzleProviding_pGSoAM_pAI0F15ExecutionSourceCSgtF_0()
{
  v0 = sub_1D725E87C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72596FC();
  sub_1D72596DC();
  sub_1D725950C();
  sub_1D72596CC();

  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x1E69D8000])
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = *MEMORY[0x1E69D8008];
    v9 = *MEMORY[0x1E69D8010];
    sub_1D725A9FC();
    v6 = sub_1D725A9CC();
    if (v7 != v8 && v7 != v9)
    {
      (*(v1 + 8))(v4, v0);
    }
  }

  return v6 & 1;
}

uint64_t FormatCompilerSlotDefinitionItemSet.properties.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1D7056D1C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5B590A0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL _s8NewsFeed35FormatCompilerSlotDefinitionItemSetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1D725B76C();
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D6A58];
  sub_1D5B590A0(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v55 = &v51 - v10;
  v11 = a1;
  sub_1D7057568(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v7);
  v56 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v57 = &v51 - v14;
  v15 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B590A0(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v51 - v22);
  sub_1D7057568(0, &qword_1EC8999C0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  v25 = v24;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v51 - v27;
  if ((sub_1D633C7DC(*v11, *a2) & 1) == 0)
  {
    return 0;
  }

  v53 = v4;
  v29 = type metadata accessor for FormatCompilerSlotDefinitionItemSet();
  v30 = *(v29 + 20);
  v31 = *(v25 + 48);
  v51 = v29;
  v52 = v11;
  sub_1D7056D1C(v11 + v30, v28, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  sub_1D7056D1C(a2 + v30, &v28[v31], qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  v32 = *(v16 + 48);
  if (v32(v28, 1, v15) != 1)
  {
    sub_1D7056D1C(v28, v23, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    if (v32(&v28[v31], 1, v15) != 1)
    {
      sub_1D70576CC(&v28[v31], v19);
      v37 = _s8NewsFeed44FormatCompilerSlotDefinitionItemSetAuxiliaryV2eeoiySbAC_ACtFZ_0(v23, v19);
      sub_1D7057670(v19);
      sub_1D7057670(v23);
      sub_1D5CDE6DC(v28, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
      if (!v37)
      {
        return 0;
      }

      goto LABEL_9;
    }

    sub_1D7057670(v23);
LABEL_7:
    v33 = &qword_1EC8999C0;
    v34 = qword_1EDF43D48;
    v35 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary;
    v36 = v28;
LABEL_15:
    sub_1D70575CC(v36, v33, v34, v35);
    return 0;
  }

  if (v32(&v28[v31], 1, v15) != 1)
  {
    goto LABEL_7;
  }

  sub_1D5CDE6DC(v28, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
LABEL_9:
  v38 = *(v51 + 24);
  v39 = v57;
  v40 = *(v56 + 48);
  v41 = MEMORY[0x1E69D6A58];
  sub_1D7056D1C(v52 + v38, v57, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D7056D1C(a2 + v38, v39 + v40, &qword_1EDF45AD0, v41);
  v42 = v58;
  v43 = *(v58 + 48);
  v44 = v53;
  if (v43(v39, 1, v53) == 1)
  {
    if (v43(v39 + v40, 1, v44) == 1)
    {
      sub_1D5CDE6DC(v39, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      return 1;
    }

    goto LABEL_14;
  }

  v45 = v55;
  sub_1D7056D1C(v39, v55, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v43(v39 + v40, 1, v44) == 1)
  {
    (*(v42 + 8))(v45, v44);
LABEL_14:
    v33 = &qword_1EDF3BA98;
    v34 = &qword_1EDF45AD0;
    v35 = MEMORY[0x1E69D6A58];
    v36 = v39;
    goto LABEL_15;
  }

  v47 = v39 + v40;
  v48 = v54;
  (*(v42 + 32))(v54, v47, v44);
  sub_1D7057628(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
  v49 = sub_1D7261FBC();
  v50 = *(v42 + 8);
  v50(v48, v44);
  v50(v45, v44);
  sub_1D5CDE6DC(v39, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return (v49 & 1) != 0;
}

uint64_t sub_1D7057464(uint64_t a1)
{
  result = sub_1D7057628(&qword_1EC8999B0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D70574BC(void *a1)
{
  a1[1] = sub_1D7057628(&qword_1EDF1D928, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  a1[2] = sub_1D7057628(&qword_1EDF071A8, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  result = sub_1D7057628(&qword_1EC8999B8, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  a1[3] = result;
  return result;
}

void sub_1D7057568(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D5B590A0(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D70575CC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7057568(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D7057628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7057670(uint64_t a1)
{
  v2 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D70576CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.__allocating_init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:zIndex:visibility:contentFrameIdentifier:puzzleIdentifier:accessibilityRole:isResizable:location:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, char a20, uint64_t a21, uint64_t a22)
{
  v32 = swift_allocObject();
  v33 = *a8;
  v34 = *a14;
  v35 = *a19;
  v36 = *(a19 + 8);
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  *(v32 + 56) = a6;
  *(v32 + 64) = a9;
  *(v32 + 72) = a10;
  *(v32 + 80) = a11;
  *(v32 + 88) = a12;
  v37 = *a7;
  v38 = a7[1];
  v39 = a7[3];
  *(v32 + 128) = a7[2];
  *(v32 + 144) = v39;
  *(v32 + 96) = v37;
  *(v32 + 112) = v38;
  *(v32 + 160) = v33;
  *(v32 + 168) = a13;
  *(v32 + 176) = v34;
  *(v32 + 184) = a15;
  *(v32 + 192) = a16;
  *(v32 + 200) = v35;
  *(v32 + 208) = v36;
  *(v32 + 209) = a20;
  *(v32 + 216) = a21;
  *(v32 + 224) = a22;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](a17, a18);

  *(v32 + 232) = a3;
  *(v32 + 240) = a4;
  *(v32 + 248) = MEMORY[0x1E69E7CD0];
  return v32;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.style.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v7[0] = v1[6];
  v7[1] = v2;
  v4 = v1[9];
  v8 = v1[8];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D6755B04(v7, &v6);
}

unint64_t FormatPuzzleEmbedNodeLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 176);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.contentFrameIdentifier.getter()
{
  v1 = *(v0 + 184);

  return v1;
}

void FormatPuzzleEmbedNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 200);
  *(a1 + 8) = v2;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.location.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.reuseIdentifier.getter()
{
  v1 = *(v0 + 232);

  return v1;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:zIndex:visibility:contentFrameIdentifier:puzzleIdentifier:accessibilityRole:isResizable:location:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, char a20, uint64_t a21, uint64_t a22)
{
  v23 = *a8;
  v24 = *a14;
  v25 = *a19;
  v26 = *(a19 + 8);
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = a9;
  *(v22 + 72) = a10;
  *(v22 + 80) = a11;
  *(v22 + 88) = a12;
  v27 = *a7;
  v28 = a7[1];
  v29 = a7[3];
  *(v22 + 128) = a7[2];
  *(v22 + 144) = v29;
  *(v22 + 96) = v27;
  *(v22 + 112) = v28;
  *(v22 + 160) = v23;
  *(v22 + 168) = a13;
  *(v22 + 176) = v24;
  *(v22 + 184) = a15;
  *(v22 + 192) = a16;
  *(v22 + 200) = v25;
  *(v22 + 208) = v26;
  *(v22 + 209) = a20;
  *(v22 + 216) = a21;
  *(v22 + 224) = a22;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](a17, a18);

  *(v22 + 232) = a3;
  *(v22 + 240) = a4;
  *(v22 + 248) = MEMORY[0x1E69E7CD0];
  return v22;
}

unint64_t sub_1D7057B70(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6E65644965646F6ELL;
      break;
    case 3:
      result = 0x656D617266;
      break;
    case 4:
      result = 0x656C797473;
      break;
    case 5:
      result = 0x676E697A69736572;
      break;
    case 6:
      result = 0x7865646E497ALL;
      break;
    case 7:
      result = 0x696C696269736976;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x617A697365527369;
      break;
    case 11:
      result = 0x6E6F697461636F6CLL;
      break;
    case 12:
      result = 0x6564496573756572;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7057D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7059190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7057D48(uint64_t a1)
{
  v2 = sub_1D70583FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7057D84(uint64_t a1)
{
  v2 = sub_1D70583FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *FormatPuzzleEmbedNodeLayoutAttributes.deinit()
{

  sub_1D67564F0(v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18]);

  sub_1D5EB15C4(v0[22]);

  return v0;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.__deallocating_deinit()
{
  FormatPuzzleEmbedNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D7058C68(0, &qword_1EC8999C8, sub_1D70583FC, &type metadata for FormatPuzzleEmbedNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70583FC();
  sub_1D7264B5C();
  LOBYTE(v27[0]) = 0;
  v10 = v19[1];
  sub_1D72643FC();
  if (!v10)
  {
    LOBYTE(v27[0]) = 1;
    sub_1D72643FC();
    LOBYTE(v27[0]) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v11 = *(v2 + 80);
    v27[4] = *(v2 + 64);
    v27[5] = v11;
    v30 = 3;
    type metadata accessor for CGRect(0);
    sub_1D70595FC(&qword_1EC8801E8, 255, type metadata accessor for CGRect);
    sub_1D726443C();
    v12 = *(v2 + 112);
    v27[0] = *(v2 + 96);
    v27[1] = v12;
    v13 = *(v2 + 144);
    v15 = *(v2 + 96);
    v14 = *(v2 + 112);
    v27[2] = *(v2 + 128);
    v27[3] = v13;
    v23 = v15;
    v24 = v14;
    v16 = *(v2 + 144);
    v25 = *(v2 + 128);
    v26 = v16;
    v29 = 4;
    sub_1D6755B04(v27, v22);
    sub_1D66B03DC();
    sub_1D72643BC();
    v22[0] = v23;
    v22[1] = v24;
    v22[2] = v25;
    v22[3] = v26;
    sub_1D6755C1C(v22);
    v20 = *(v2 + 160);
    v28 = 5;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v20) = 6;
    sub_1D726442C();
    v20 = *(v2 + 176);
    v28 = 7;
    sub_1D5EB1500(v20);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v20);
    LOBYTE(v20) = 8;
    sub_1D726437C();
    v17 = *(v2 + 208);
    v20 = *(v2 + 200);
    v21 = v17;
    v28 = 9;
    sub_1D5F8F434();
    sub_1D72643BC();
    LOBYTE(v20) = 10;
    sub_1D726440C();
    LOBYTE(v20) = 11;
    sub_1D726437C();
    LOBYTE(v20) = 12;
    sub_1D72643FC();
    v20 = *(v2 + 248);
    v28 = 13;
    sub_1D7058C68(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D7058CD0(&qword_1EC881AF0, sub_1D5F8F488);
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D70583FC()
{
  result = qword_1EC8999D0;
  if (!qword_1EC8999D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8999D0);
  }

  return result;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatPuzzleEmbedNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

uint64_t FormatPuzzleEmbedNodeLayoutAttributes.init(from:)(void *a1)
{
  v3 = v1;
  sub_1D7058C68(0, &qword_1EC8999D8, sub_1D70583FC, &type metadata for FormatPuzzleEmbedNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70583FC();
  v25 = v8;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v21 = a1;
  }

  else
  {
    v22 = a1;
    v9 = v23;
    LOBYTE(v28) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v10;
    LOBYTE(v28) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v28) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    LOBYTE(v26) = 3;
    sub_1D70595FC(&qword_1EDF1A740, 255, type metadata accessor for CGRect);
    sub_1D726431C();
    v13 = v29;
    *(v1 + 64) = v28;
    *(v1 + 80) = v13;
    v33 = 4;
    sub_1D66A5CB0();
    sub_1D726427C();
    v15 = v29;
    *(v1 + 96) = v28;
    *(v1 + 112) = v15;
    v16 = v31;
    *(v1 + 128) = v30;
    *(v1 + 144) = v16;
    v32 = 5;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 160) = v26;
    LOBYTE(v26) = 6;
    *(v1 + 168) = sub_1D72642FC();
    v32 = 7;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 176) = v26;
    LOBYTE(v26) = 8;
    *(v1 + 184) = sub_1D726422C();
    *(v1 + 192) = v17;
    v32 = 9;
    sub_1D5C6F27C();
    sub_1D726427C();
    v18 = v27;
    *(v1 + 200) = v26;
    *(v1 + 208) = v18;
    LOBYTE(v26) = 10;
    *(v1 + 209) = sub_1D72642CC() & 1;
    LOBYTE(v26) = 11;
    *(v1 + 216) = sub_1D726422C();
    *(v1 + 224) = v19;
    LOBYTE(v26) = 12;
    *(v1 + 232) = sub_1D72642BC();
    *(v1 + 240) = v20;
    sub_1D7058C68(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v32 = 13;
    sub_1D7058CD0(&qword_1EC881B10, sub_1D5F8FD48);
    sub_1D726431C();
    (*(v9 + 8))(v25, v24);
    v3 = v1;
    *(v1 + 248) = v26;
    v21 = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v3;
}

void sub_1D7058C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D7058CD0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D7058C68(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7058EC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatPuzzleEmbedNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D7058F40(uint64_t a1, uint64_t a2)
{
  sub_1D70595FC(&qword_1EC8940B8, a2, type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D705908C()
{
  result = qword_1EC8999F0;
  if (!qword_1EC8999F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8999F0);
  }

  return result;
}

unint64_t sub_1D70590E4()
{
  result = qword_1EC8999F8;
  if (!qword_1EC8999F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8999F8);
  }

  return result;
}

unint64_t sub_1D705913C()
{
  result = qword_1EC899A00;
  if (!qword_1EC899A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A00);
  }

  return result;
}

uint64_t sub_1D7059190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73B7620 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x617A697365527369 && a2 == 0xEB00000000656C62 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6564496573756572 && a2 == 0xEF7265696669746ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C48E0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1D70595FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D7059644@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D5C2B12C(0, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v37 = &v34 - v6;
  v7 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for FormatCompilerOptions(0);
  MEMORY[0x1EEE9AC00](v36, v11);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_inventory;
  v13 = *(a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_inventory);
  v14 = *(v13 + 24);
  *a2 = *(v13 + 16);
  a2[1] = v14;
  v15 = *(a1 + 24);
  a2[2] = *(a1 + 16);
  a2[3] = v15;
  v38 = a1;
  v16 = (a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_boundLayoutFactory);
  a2[4] = *(*(v16 + *(type metadata accessor for FormatGroupLayoutFactory.Bound() + 64)) + 16);
  v18 = v16[4];
  v17 = v16[5];
  __swift_project_boxed_opaque_existential_1(v16 + 1, v18);
  v19 = *(v17 + 32);

  v19((&v39 + 1), v18, v17);
  if (BYTE1(v39) > 1u)
  {
    if (BYTE1(v39) == 2)
    {
      v20 = 0xE400000000000000;
      v21 = 1751607624;
    }

    else
    {
      v20 = 0xE900000000000073;
      v21 = 0x756F72636964754CLL;
    }
  }

  else if (BYTE1(v39))
  {
    v20 = 0xE300000000000000;
    v21 = 7827276;
  }

  else
  {
    v20 = 0xE400000000000000;
    v21 = 1701736270;
  }

  a2[5] = v21;
  a2[6] = v20;
  v22 = v16[4];
  v23 = v16[5];
  __swift_project_boxed_opaque_existential_1(v16 + 1, v22);
  (*(v23 + 32))(&v39, v22, v23);
  a2[7] = v39;
  v24 = *(v38 + v34);

  v25 = v35;
  sub_1D5EF3B18(v24 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v35);

  v26 = v37;
  sub_1D6C7CC68(v25 + *(v36 + 24), v37);
  sub_1D5E4B924(v25, type metadata accessor for FormatCompilerOptions);
  sub_1D5E4B86C(v26, v10);
  v27 = *v10;
  v28 = v10[1];
  v29 = v10[2];
  v30 = v10[3];
  v31 = v10[4];
  v32 = v10[5];
  sub_1D5E4B8D0(*v10, v28);
  result = sub_1D5E4B924(v10, type metadata accessor for FormatCompilerOptions.Newsroom);
  a2[8] = v27;
  a2[9] = v28;
  a2[10] = v29;
  a2[11] = v30;
  a2[12] = v31;
  a2[13] = v32;
  return result;
}

uint64_t sub_1D70599B4(void *a1)
{
  sub_1D5C2B12C(0, &qword_1EC899A18, sub_1D705A1E0, &type metadata for DebugFormatWorkspaceSnapshotManifestLayout.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = v1[2];
  v32 = v1[3];
  v33 = v7;
  v8 = v1[4];
  v30 = v1[5];
  v31 = v8;
  v9 = v1[6];
  v28 = v1[7];
  v29 = v9;
  v10 = v1[8];
  v11 = v1[10];
  v22 = v1[9];
  v23 = v11;
  v12 = v1[11];
  v26 = v1[12];
  v27 = v10;
  v13 = v1[13];
  v24 = v12;
  v25 = v13;
  v14 = a1[3];
  v15 = a1;
  v17 = &v21 - v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_1D705A1E0();
  sub_1D7264B5C();
  LOBYTE(v35) = 0;
  v18 = v34;
  sub_1D72643FC();
  if (!v18)
  {
    v19 = v27;
    LOBYTE(v35) = 1;
    sub_1D72643FC();
    LOBYTE(v35) = 2;
    sub_1D726442C();
    LOBYTE(v35) = 3;
    sub_1D72643FC();
    LOBYTE(v35) = 4;
    sub_1D726442C();
    v35 = v19;
    v36 = v22;
    v37 = v23;
    v38 = v24;
    v39 = v26;
    v40 = v25;
    v41 = 5;
    sub_1D5E4B8D0(v19, v22);
    sub_1D5FC6610();
    sub_1D72643BC();
    sub_1D5E4B984(v35, v36);
  }

  return (*(v5 + 8))(v17, v4);
}

uint64_t sub_1D7059C60@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  sub_1D5C2B12C(0, &qword_1EC899A08, sub_1D705A1E0, &type metadata for DebugFormatWorkspaceSnapshotManifestLayout.CodingKeys, MEMORY[0x1E69E6F48]);
  v37 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D705A1E0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = a1;
  v10 = v5;
  v11 = v36;
  LOBYTE(v45[0]) = 0;
  v12 = sub_1D72642BC();
  v14 = v13;
  LOBYTE(v45[0]) = 1;
  v15 = sub_1D72642BC();
  *(&v35 + 1) = v16;
  *&v35 = v15;
  LOBYTE(v45[0]) = 2;
  v33 = sub_1D72642FC();
  LOBYTE(v45[0]) = 3;
  v32 = sub_1D72642BC();
  v34 = v17;
  LOBYTE(v45[0]) = 4;
  v31 = sub_1D72642FC();
  v60 = 5;
  sub_1D5C8F1E8();
  sub_1D726427C();
  (*(v10 + 8))(v8, v37);
  v37 = v57;
  *&v38 = v12;
  v29 = v58;
  v30 = *(&v57 + 1);
  v27 = v59;
  v28 = *(&v58 + 1);
  v26 = *(&v59 + 1);
  v18 = v35;
  *(&v38 + 1) = v14;
  v39 = v35;
  v20 = v33;
  v19 = v34;
  *&v40 = v33;
  *(&v40 + 1) = v32;
  *&v41 = v34;
  *(&v41 + 1) = v31;
  v42 = v57;
  v43 = v58;
  v44 = v59;
  v21 = v41;
  v11[2] = v40;
  v11[3] = v21;
  v22 = v39;
  *v11 = v38;
  v11[1] = v22;
  v23 = v44;
  v24 = v42;
  v11[5] = v43;
  v11[6] = v23;
  v11[4] = v24;
  sub_1D6E1C7E8(&v38, v45);
  __swift_destroy_boxed_opaque_existential_1(v9);
  v45[0] = v12;
  v45[1] = v14;
  v46 = __PAIR128__(*(&v35 + 1), v18);
  v47 = v20;
  v48 = v32;
  v49 = v19;
  v50 = v31;
  v51 = v37;
  v52 = v30;
  v53 = v29;
  v54 = v28;
  v55 = v27;
  v56 = v26;
  return sub_1D705A234(v45);
}

uint64_t sub_1D705A048()
{
  v1 = *v0;
  v2 = 0x6567616B636170;
  v3 = 0x797469726F697270;
  v4 = 0x797469726F697270;
  if (v1 != 4)
  {
    v4 = 0x6D6F6F727377656ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x70756F7267;
  if (v1 != 1)
  {
    v5 = 0x657449646E756F62;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D705A110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D705A37C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D705A138(uint64_t a1)
{
  v2 = sub_1D705A1E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D705A174(uint64_t a1)
{
  v2 = sub_1D705A1E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D705A1E0()
{
  result = qword_1EC899A10;
  if (!qword_1EC899A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A10);
  }

  return result;
}

unint64_t sub_1D705A278()
{
  result = qword_1EC899A20;
  if (!qword_1EC899A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A20);
  }

  return result;
}

unint64_t sub_1D705A2D0()
{
  result = qword_1EC899A28;
  if (!qword_1EC899A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A28);
  }

  return result;
}

unint64_t sub_1D705A328()
{
  result = qword_1EC899A30;
  if (!qword_1EC899A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A30);
  }

  return result;
}

uint64_t sub_1D705A37C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616B636170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657449646E756F62 && a2 == 0xEA0000000000736DLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xED000065726F6353 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F6F727377656ELL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id sub_1D705A5A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v5 setUnitsStyle_];
  result = [v5 setAllowedUnits_];
  *a3 = v5;
  return result;
}

uint64_t sub_1D705A638(uint64_t a1)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v25 - v19;
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      sub_1D5EB84C0(a1, v10);
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        (*(v12 + 32))(v20, v10, v11);
        v21 = sub_1D705A8E8();
        (*(v12 + 8))(v20, v11);
        return v21 & 1;
      }

      v22 = v10;
    }

    else
    {
      sub_1D5EB84C0(a1, v6);
      if ((*(v12 + 48))(v6, 1, v11) != 1)
      {
        (*(v12 + 32))(v15, v6, v11);
        v23 = sub_1D705A8E8();
        (*(v12 + 8))(v15, v11);
        v21 = v23 ^ 1;
        return v21 & 1;
      }

      v22 = v6;
    }

    sub_1D5E3E404(v22);
    v21 = 0;
  }

  else if (*v1)
  {
    v21 = (*(v12 + 48))(a1, 1, v11, v18) != 1;
  }

  else
  {
    v21 = (*(v12 + 48))(a1, 1, v11, v18) == 1;
  }

  return v21 & 1;
}

id sub_1D705A8E8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1D726207C();
  v4 = v3;

  v5 = v2 == 0x6C7070612E6D6F63 && v4 == 0xEE007377656E2E65;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v6 = &selRef_nss_isNewsURL;
LABEL_8:
    v7 = sub_1D725844C();
    v8 = [v7 *v6];

    return v8;
  }

  if (v2 == 0xD000000000000010 && 0x80000001D73E7810 == v4)
  {

    goto LABEL_16;
  }

  v11 = sub_1D72646CC();

  if (v11)
  {
LABEL_16:
    v6 = &selRef_nss_isStocksURL;
    goto LABEL_8;
  }

  return 0;
}

uint64_t FormatBindingURLExpressionLogic.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D705AAD4()
{
  result = qword_1EC899A40;
  if (!qword_1EC899A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A40);
  }

  return result;
}

unint64_t sub_1D705AB28(uint64_t a1)
{
  result = sub_1D705AB50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D705AB50()
{
  result = qword_1EC899A48;
  if (!qword_1EC899A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899A48);
  }

  return result;
}

unint64_t sub_1D705ABA4(void *a1)
{
  a1[1] = sub_1D5F2E834();
  a1[2] = sub_1D5F2E888();
  result = sub_1D705AAD4();
  a1[3] = result;
  return result;
}

id sub_1D705AC1C(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v75 = a7;
  v73 = a8;
  v74 = a5;
  v72 = a1;
  v63 = type metadata accessor for FormatAction();
  MEMORY[0x1EEE9AC00](v63, v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v62 = &v57 - v19;
  sub_1D705D65C(0, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v64 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v57 - v25;
  v27 = *a3;
  v71 = a3[1];
  v28 = a3[3];
  v70 = a3[2];
  v69 = v28;
  v68 = a3[4];
  v29 = a6[1];
  v67 = *a6;
  v66 = v29;
  v65 = a6[2];
  v30 = &a4[OBJC_IVAR____TtC8NewsFeed12FormatButton_createMenuElementsBlock];
  v31 = *&a4[OBJC_IVAR____TtC8NewsFeed12FormatButton_createMenuElementsBlock];
  *v30 = 0;
  *(v30 + 1) = 0;
  sub_1D5B74328(v31);
  [a4 setActivityItemsConfiguration_];
  v32 = *(v27 + 16);
  v34 = *(v32 + 48);
  v33 = *(v32 + 56);
  v35 = &a4[OBJC_IVAR____TtC8NewsFeed12FormatButton_identifier];
  swift_beginAccess();
  *v35 = v34;
  *(v35 + 1) = v33;

  v36 = *&a4[OBJC_IVAR____TtC8NewsFeed12FormatButton_onTap];

  v37 = *&a4[OBJC_IVAR____TtC8NewsFeed12FormatButton_onLongPress];
  swift_beginAccess();
  sub_1D726344C();
  v38 = *(v27 + 64);
  v39 = *(v27 + 72);
  [a4 setIsAccessibilityElement_];
  [a4 setAccessibilityElementsHidden_];
  if (v39 <= 0xFD)
  {
    if ((v39 & 0x80) != 0)
    {
      if (!(v38 | v39 & 0x7F))
      {
        goto LABEL_7;
      }

      v40 = &selRef_setAccessibilityElementsHidden_;
    }

    else
    {
      v40 = &selRef_setIsAccessibilityElement_;
    }

    [a4 *v40];
  }

LABEL_7:
  swift_beginAccess();
  result = [a4 setUserInteractionEnabled_];
  if (*(v27 + 56) != 1)
  {
    if (!*v30)
    {
      if ([a4 isContextMenuInteractionEnabled])
      {
        [a4 setContextMenuInteractionEnabled_];
      }

      result = [a4 showsMenuAsPrimaryAction];
      if (result)
      {
        return [a4 setShowsMenuAsPrimaryAction_];
      }
    }

    return result;
  }

  v61 = v37;
  v57 = v16;
  sub_1D705D0B0(a2, v26, type metadata accessor for FormatButtonNodeDataAction);
  v42 = type metadata accessor for FormatButtonNodeDataAction();
  v43 = a2;
  v44 = *(v42 - 8);
  (*(v44 + 56))(v26, 0, 1, v42);
  v79 = v27;
  v80 = v71;
  v81 = v70;
  v82 = v69;
  v83 = v68;
  v76 = v67;
  v77 = v66;
  v78 = v65;
  v59 = a10;
  v60 = a9;
  v45 = sub_1D705B3CC(v72, a4, v36, v26, v74, &v79, &v76, v75, v73, a9, a10);
  sub_1D705D5EC(v26, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
  v46 = v43;
  v58 = *(type metadata accessor for FormatButtonNodeData() + 20);
  v47 = v43 + v58;
  v48 = v64;
  sub_1D705D030(v47, v64, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
  if ((*(v44 + 48))(v48, 1, v42) == 1)
  {
    sub_1D705D5EC(v48, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
    v49 = 0;
    v50 = v61;
    goto LABEL_28;
  }

  v51 = v62;
  sub_1D705D0B0(v48, v62, type metadata accessor for FormatAction);
  sub_1D705D118(v48, type metadata accessor for FormatButtonNodeDataAction);
  v52 = v51;
  v53 = v57;
  sub_1D705D194(v52, v57, type metadata accessor for FormatAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v50 = v61;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 7)
  {
LABEL_26:
    sub_1D705D118(v53, type metadata accessor for FormatAction);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 8)
  {
LABEL_24:
    sub_1D705D118(v53, type metadata accessor for FormatAction);
LABEL_25:
    v49 = 1;
    goto LABEL_28;
  }

LABEL_27:
  v49 = 0;
LABEL_28:
  sub_1D70CEF04(v49);
  v79 = v27;
  v80 = v71;
  v81 = v70;
  v82 = v69;
  v83 = v68;
  v76 = v67;
  v77 = v66;
  v78 = v65;
  v55 = sub_1D705B3CC(v72, a4, v50, v46 + v58, v74, &v79, &v76, v75, v73, v60, v59);
  if (v45 == 2)
  {
    v45 = v55;
    v56 = &off_1E84D3000;
  }

  else
  {
    v56 = &off_1E84D3000;
    if (v55 != 2)
    {
      v45 |= v55;
    }
  }

  result = [a4 v56[233]];
  if (!*v30)
  {
    if ([a4 isContextMenuInteractionEnabled])
    {
      [a4 setContextMenuInteractionEnabled_];
    }

    result = [a4 showsMenuAsPrimaryAction];
    if (result)
    {
      return [a4 setShowsMenuAsPrimaryAction_];
    }
  }

  return result;
}

uint64_t sub_1D705B3CC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v100 = a8;
  v94 = a5;
  v95 = a1;
  v102 = a3;
  v103 = a2;
  v13 = type metadata accessor for FormatPurchaseData(0);
  v90 = *(v13 - 8);
  v14 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v92 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v96 = &v90 - v18;
  v97 = a10;
  v93 = *(a10 - 8);
  v19 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v91 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D705D65C(0, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v90 - v24;
  v26 = type metadata accessor for FormatAction();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a7[1];
  v98 = *a7;
  v99 = v30;
  v31 = a7[2];
  sub_1D705D030(a4, v25, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
  v32 = type metadata accessor for FormatButtonNodeDataAction();
  if ((*(*(v32 - 8) + 48))(v25, 1, v32) == 1)
  {
    sub_1D705D5EC(v25, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
    return 2;
  }

  sub_1D705D0B0(v25, v29, type metadata accessor for FormatAction);
  sub_1D705D118(v25, type metadata accessor for FormatButtonNodeDataAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v39 = *v29;
        v38 = *(v29 + 1);
        v40 = v29[16];
        if (!*(*v29 + 16))
        {

          sub_1D6A69684(v38, v40);
          return 2;
        }

        sub_1D726345C();
        v41 = swift_allocObject();
        swift_weakInit();
        v42 = swift_allocObject();
        v44 = v98;
        v43 = v99;
        *(v42 + 16) = v41;
        *(v42 + 24) = v44;
        *(v42 + 32) = v43;
        *(v42 + 40) = v31;
        *(v42 + 48) = v39;
        *(v42 + 56) = v38;
        *(v42 + 64) = v40;

        sub_1D5EBC314(v44, v43);

        sub_1D705D57C(v38, v40);
        sub_1D70CF088(v102, sub_1D705D568, v42);

        sub_1D6A69684(v38, v40);

        goto LABEL_26;
      }

      v100 = a11;
      v71 = *(v29 + 3);
      v107 = *(v29 + 2);
      v108 = v71;
      *v109 = *(v29 + 4);
      *&v109[9] = *(v29 + 73);
      v72 = *(v29 + 1);
      v105 = *v29;
      v106 = v72;
      sub_1D726345C();
      v73 = swift_allocObject();
      swift_weakInit();
      v101 = swift_allocObject();
      swift_weakInit();
      v74 = v93;
      v75 = v91;
      v76 = v97;
      (*(v93 + 16))(v91, v95, v97);
      v77 = (*(v74 + 80) + 40) & ~*(v74 + 80);
      v96 = (v77 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v78 = (v77 + v19 + 103) & 0xFFFFFFFFFFFFFFF8;
      v79 = swift_allocObject();
      v80 = v100;
      *(v79 + 2) = v76;
      *(v79 + 3) = v80;
      *(v79 + 4) = v73;
      (*(v74 + 32))(&v79[v77], v75, v76);
      v81 = &v79[v96];
      v82 = v108;
      *(v81 + 2) = v107;
      *(v81 + 3) = v82;
      *(v81 + 4) = *v109;
      *(v81 + 73) = *&v109[9];
      v83 = v106;
      *v81 = v105;
      *(v81 + 1) = v83;
      *&v79[v78] = v101;
      v84 = &v79[(v78 + 15) & 0xFFFFFFFFFFFFFFF8];
      v85 = v98;
      v86 = v99;
      *v84 = v98;
      v84[1] = v86;
      v84[2] = v31;
      sub_1D5EBC314(v85, v86);

      sub_1D6A695D4(&v105, v104);

      sub_1D70CF088(v102, sub_1D705D4BC, v79);
      sub_1D6A69630(&v105);
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          goto LABEL_24;
        }

        v61 = *(v29 + 5);
        *v109 = *(v29 + 4);
        *&v109[16] = v61;
        v62 = *(v29 + 7);
        v110 = *(v29 + 6);
        v111 = v62;
        v63 = *(v29 + 1);
        v105 = *v29;
        v106 = v63;
        v64 = *(v29 + 3);
        v107 = *(v29 + 2);
        v108 = v64;
        sub_1D726345C();
        v65 = swift_allocObject();
        v66 = *&v109[16];
        v65[5] = *v109;
        v65[6] = v66;
        v67 = v111;
        v65[7] = v110;
        v65[8] = v67;
        v68 = v106;
        v65[1] = v105;
        v65[2] = v68;
        v69 = v108;
        v65[3] = v107;
        v65[4] = v69;
        sub_1D6A69518(&v105, v104);
        v70 = sub_1D725F63C();
        sub_1D6072298(&v105);

LABEL_26:

        return 1;
      }

      v51 = *v29;
      sub_1D726345C();
      v52 = swift_allocObject();
      swift_weakInit();
      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = swift_allocObject();
      v54[2] = v52;
      v54[3] = v53;
      v55 = v98;
      v56 = v99;
      v54[4] = v98;
      v54[5] = v56;
      v54[6] = v31;
      v54[7] = v51;
      sub_1D5EBC314(v55, v56);
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v57 = *v29;
      v58 = *(v29 + 1);
      sub_1D726345C();
      v59 = swift_allocObject();
      swift_weakInit();
      v60 = swift_allocObject();
      v60[2] = v59;
      v60[3] = v57;
      v60[4] = v58;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        [v103 setUserInteractionEnabled_];
        return 0;
      }

      v35 = *v29;
      v36 = *(v29 + 1);
      sub_1D726345C();
      v37 = swift_allocObject();
      *(v37 + 16) = v35;
      *(v37 + 24) = v36;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 5)
  {
LABEL_24:
    v87 = *v29;
    sub_1D726345C();
    v88 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v89 = swift_allocObject();
    *(v89 + 16) = v88;
    *(v89 + 24) = v87;
    *(v89 + 32) = v100;
    *(v89 + 40) = a9;

LABEL_25:

    goto LABEL_26;
  }

  v45 = v96;
  sub_1D705D194(v29, v96, type metadata accessor for FormatPurchaseData);
  sub_1D726345C();
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = v92;
  sub_1D705D0B0(v45, v92, type metadata accessor for FormatPurchaseData);
  v48 = (*(v90 + 80) + 24) & ~*(v90 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  sub_1D705D194(v47, v49 + v48, type metadata accessor for FormatPurchaseData);
  v50 = (v49 + ((v14 + v48 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v50 = v100;
  v50[1] = a9;

  sub_1D705D118(v45, type metadata accessor for FormatPurchaseData);
  return 1;
}

uint64_t sub_1D705BE2C(int a1, id a2)
{
  if ([a2 showsMenuAsPrimaryAction])
  {
    return [a2 _feldsparAccessibilityPresentMenu];
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    MEMORY[0x1DA6F6CF0]();

    return 1;
  }

  return result;
}

uint64_t sub_1D705BEB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1D725E84C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    (*(v12 + 104))(v15, *MEMORY[0x1E69D7FB8], v11);
    v18 = v17[4];
    sub_1D5EBC314(a3, a4);

    v19 = a1;
    result = sub_1D7134D70(a3, a4, a5, v15, v18, a1);
    v20 = result;
    v21 = 0;
    v27[0] = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC0];
    v22 = *(a6 + 16);
    while (1)
    {
      if (v22 == v21)
      {

        return v27[0];
      }

      if (v21 >= v22)
      {
        break;
      }

      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_13;
      }

      v27[1] = *(a6 + 32 + 8 * v21);
      v24 = v17[2];
      v25 = v17[3];

      v26 = sub_1D6D92808(v24, v25, v20);

      ++v21;
      if (v26)
      {
        MEMORY[0x1DA6F9CE0](result);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        result = sub_1D726278C();
        v27[0] = v28;
        v21 = v23;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D705C0F0(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v16 = a4[3];
  v22[2] = a4[2];
  v22[3] = v16;
  v23[0] = a4[4];
  *(v23 + 9) = *(a4 + 73);
  v17 = a4[1];
  v22[0] = *a4;
  v22[1] = v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v21[0] = a6;
  v21[1] = a7;
  v21[2] = a8;
  v19 = sub_1D705C208(a3, v22, Strong, v21, a1, a9, a10);

  return v19;
}

uint64_t sub_1D705C208(uint64_t a1, __int128 *a2, void *a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v50 = a6;
  v51 = a7;
  v55 = a3;
  v49 = a1;
  v12 = sub_1D725E87C();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725E84C();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[3];
  v66 = a2[2];
  v67[0] = v19;
  *(v67 + 15) = *(a2 + 63);
  v20 = a2[1];
  v64 = *a2;
  v65 = v20;
  v21 = *(a2 + 9);
  v23 = *a4;
  v22 = a4[1];
  v24 = a4[2];
  (*(v25 + 104))(v18, *MEMORY[0x1E69D7FB8]);
  v26 = *(v8 + 32);

  v27 = a5;
  sub_1D705D590(&v64, v68);
  sub_1D5EBC314(v23, v22);
  sub_1D7134D70(v23, v22, v24, v18, v26, a5);
  v61 = v66;
  *v62 = v67[0];
  *&v62[15] = *(v67 + 15);
  v59 = v64;
  v60 = v65;
  _s5TeaUI11ContextMenuC8NewsFeedE07contextD6Groups3for7optionsSayAA0cD9Groupable_pSgGAcDE0D4TypeO_ShyAcDE11ItemOptionsOGtFZ_0(&v59, v21);
  v29 = v28;
  v68[2] = v61;
  v69[0] = *v62;
  *(v69 + 15) = *&v62[15];
  v30 = v55;
  v68[0] = v59;
  v68[1] = v60;
  sub_1D6AB75E0(v68);
  if (v30)
  {
    sub_1D725A9FC();

    if ((sub_1D725A9CC() & 1) == 0 || (sub_1D72596FC(), sub_1D72596DC(), sub_1D725950C(), v31 = v52, sub_1D72596CC(), , , v33 = v53, v32 = v54, v34 = (*(v53 + 88))(v31, v54), v34 == *MEMORY[0x1E69D8000]))
    {
LABEL_9:

      goto LABEL_10;
    }

    if (v34 == *MEMORY[0x1E69D8008])
    {
      sub_1D6B47704(v49, v50, v51, &v59);
      v35 = v29[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v29;
      if (!isUniquelyReferenced_nonNull_native || v35 >= v29[3] >> 1)
      {
        v29 = sub_1D6995D68(isUniquelyReferenced_nonNull_native, v35 + 1, 1, v29);
        v63 = v29;
      }

      sub_1D5EC38D8(0, 0, 1, &v59);
      goto LABEL_9;
    }

    if (v34 == *MEMORY[0x1E69D8010])
    {
      sub_1D6B47704(v49, v50, v51, &v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1D6995D68(0, v29[2] + 1, 1, v29);
      }

      v44 = v29[2];
      v43 = v29[3];
      if (v44 >= v43 >> 1)
      {
        v29 = sub_1D6995D68((v43 > 1), v44 + 1, 1, v29);
      }

      v29[2] = v44 + 1;
      v45 = &v29[5 * v44];
      v46 = v59;
      v47 = v60;
      v45[8] = v61;
      *(v45 + 2) = v46;
      *(v45 + 3) = v47;
    }

    else
    {

      (*(v33 + 8))(v31, v32);
    }
  }

LABEL_10:
  v58 = MEMORY[0x1E69E7CC0];
  v37 = v29[2];
  if (v37)
  {
    v55 = v29;
    v38 = (v29 + 4);
    v39 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D705D030(v38, &v59, &qword_1EDF3B530, sub_1D5F26890);
      sub_1D705D030(&v59, v56, &qword_1EDF3B530, sub_1D5F26890);
      if (v57)
      {
        __swift_project_boxed_opaque_existential_1(v56, v57);
        v40 = sub_1D725DF5C();
        sub_1D705D5EC(&v59, &qword_1EDF3B530, sub_1D5F26890);
        v41 = __swift_destroy_boxed_opaque_existential_1(v56);
        if (v40)
        {
          MEMORY[0x1DA6F9CE0](v41);
          if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          v39 = v58;
        }
      }

      else
      {
        sub_1D705D5EC(&v59, &qword_1EDF3B530, sub_1D5F26890);
        sub_1D705D5EC(v56, &qword_1EDF3B530, sub_1D5F26890);
      }

      v38 += 40;
      --v37;
    }

    while (v37);
  }

  else
  {

    v39 = MEMORY[0x1E69E7CC0];
  }

  return v39;
}

void sub_1D705C7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D725E84C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      (*(v11 + 104))(v14, *MEMORY[0x1E69D7FB8], v10);
      v19 = *(v16 + 32);
      sub_1D5EBC314(a3, a4);

      v20 = v18;
      v21 = sub_1D7134D70(a3, a4, a5, v14, v19, v18);
      v22 = *(v16 + 24);
      v23 = *(a6 + 56);
      v24 = swift_unknownObjectRetain();
      v23(v24, v22, v21);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1D705C980(uint64_t a1, char a2, void (*a3)(_BYTE *))
{
  v5 = type metadata accessor for FeedActionSenderInternal(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    *v8 = a2;
    type metadata accessor for FeedAction(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for FeedActionInternal(0);
    swift_storeEnumTagMultiPayload();
    *&v8[*(v5 + 20)] = v10;
    a3(v8);
    return sub_1D705D118(v8, type metadata accessor for FeedActionSenderInternal);
  }

  return result;
}

void sub_1D705CA98(_OWORD *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_1D726203C();
  sub_1D705D65C(0, &unk_1EC899A50, sub_1D705D6C0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v11[0] = 1635017060;
  v11[1] = 0xE400000000000000;
  sub_1D7263C9C();
  *(inited + 96) = &type metadata for FormatStateMachineAction;
  v5 = swift_allocObject();
  *(inited + 72) = v5;
  v6 = a1[1];
  v5[1] = *a1;
  v5[2] = v6;
  v7 = a1[3];
  v5[3] = a1[2];
  v5[4] = v7;
  v8 = a1[5];
  v5[5] = a1[4];
  v5[6] = v8;
  v9 = a1[7];
  v5[7] = a1[6];
  v5[8] = v9;
  sub_1D6A69518(a1, v11);
  sub_1D605D4B8(inited);
  swift_setDeallocating();
  sub_1D705D118(inited + 32, sub_1D705D6C0);
  v10 = sub_1D7261D2C();

  [v2 postNotificationName:v3 object:0 userInfo:v10];
}

uint64_t sub_1D705CC68(uint64_t a1, uint64_t a2)
{
  sub_1D5BFDC08();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_1D72649DC();
}

uint64_t sub_1D705CCFC(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v5 = type metadata accessor for FeedActionSenderInternal(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_1D705D0B0(a2, v8, type metadata accessor for FormatPurchaseData);
    type metadata accessor for FeedAction(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for FeedActionInternal(0);
    swift_storeEnumTagMultiPayload();
    *&v8[*(v5 + 20)] = v10;
    a3(v8);
    return sub_1D705D118(v8, type metadata accessor for FeedActionSenderInternal);
  }

  return result;
}

uint64_t sub_1D705CE30(uint64_t a1, char a2, void (*a3)(_BYTE *))
{
  v5 = type metadata accessor for FeedActionSenderInternal(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    *v8 = a2;
    type metadata accessor for FeedActionInternal(0);
    swift_storeEnumTagMultiPayload();
    *&v8[*(v5 + 20)] = v10;
    a3(v8);
    return sub_1D705D118(v8, type metadata accessor for FeedActionSenderInternal);
  }

  return result;
}

void *sub_1D705CF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result[14];
    v7 = result[15];
    __swift_project_boxed_opaque_existential_1(result + 11, v6);
    (*(v7 + 16))(a2, a3, v6, v7);
  }

  return result;
}

uint64_t sub_1D705CFD8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_1D705D030(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D705D65C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D705D0B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D705D118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D705D194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D705D1FC()
{
  v1 = *(type metadata accessor for FormatPurchaseData(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D705CCFC(v3, v0 + v2, v4);
}

uint64_t objectdestroy_11Tm_0()
{

  return swift_deallocObject();
}

void sub_1D705D310(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, char a10)
{
  switch(a10)
  {
    case 0:
      swift_unknownObjectRelease();
      goto LABEL_13;
    case 1:
    case 4:
    case 14:
      goto LABEL_17;
    case 2:
      swift_unknownObjectRelease();

LABEL_13:

      return;
    case 3:

LABEL_17:

      swift_unknownObjectRelease();
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:

      break;
    case 12:
    case 15:

      break;
    case 13:
      swift_unknownObjectRelease();

      sub_1D6205FF8(a2, a3, a4, a5, a6);
      break;
    default:
      return;
  }
}

uint64_t sub_1D705D4BC(void *a1)
{
  v2 = (*(*(v1[2] - 8) + 80) + 40) & ~*(*(v1[2] - 8) + 80);
  v3 = v2 + *(*(v1[2] - 8) + 64);
  return sub_1D705C0F0(a1, v1[4], v1 + v2, (v1 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v3 + 103) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v3 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16), v1[2], v1[3]);
}

id sub_1D705D57C(id result, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_1D5EC9444(result, a2);
  }

  return result;
}

uint64_t sub_1D705D5EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D705D65C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D705D65C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D705D6C0()
{
  if (!qword_1EC882D70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC882D70);
    }
  }
}

uint64_t objectdestroy_21Tm_1()
{

  sub_1D5E32940(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t CommandExecutionSource.init(sourceItemData:location:tracker:sourceView:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_1D705D8AC(a1, a2, v14, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v16;
}

uint64_t sub_1D705D8AC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31[1] = a5;
  v13 = sub_1D725E84C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v31 - v20;
  v33[3] = a6;
  v33[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v23 = a1[1];
  if (v23)
  {
    v24 = *a1;
    v25 = a2;
    (*(v14 + 16))(v21, a2, v13);
    sub_1D5B68374(v33, v32);
    v34 = 0u;
    v35 = 0u;
    v36 = 1;

    v26 = a4;
    v27 = sub_1D725E2FC();
    sub_1D5EBC358(v24, v23);
    (*(v14 + 8))(v25, v13);
  }

  else
  {
    v28 = a2;
    (*(v14 + 16))(v17, a2, v13);
    sub_1D5B68374(v33, v32);
    v34 = 0u;
    v35 = 0u;
    v36 = 1;
    v29 = a4;
    v27 = sub_1D725E33C();
    (*(v14 + 8))(v28, v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v27;
}

uint64_t BundleSessionDemoProvider.nextSessionValue(after:)(uint64_t a1)
{
  sub_1D5B76C1C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BundleSession();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B8866C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5E31BE0(v5, sub_1D5B76C1C);
    return 0;
  }

  else
  {
    sub_1D5E31B7C(v5, v10);
    v12 = *v10;
    sub_1D5E31BE0(v10, type metadata accessor for BundleSession);
    result = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D705DCD0(uint64_t a1)
{
  sub_1D5B76C1C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BundleSession();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B8866C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5E31BE0(v5, sub_1D5B76C1C);
    return 0;
  }

  else
  {
    sub_1D5E31B7C(v5, v10);
    v12 = *v10;
    sub_1D5E31BE0(v10, type metadata accessor for BundleSession);
    result = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D705DE9C(void *a1, uint64_t a2)
{
  v4 = sub_1D725DA6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  v10 = *(a2 + 32);
  if (!v10)
  {
    [a1 setAccessibilityIgnoresInvertColors_];
LABEL_9:
    *&v35[0] = 1;
    memset(v35 + 8, 0, 49);
    return sub_1D5BF8000(a1, v35);
  }

  [a1 setAccessibilityIgnoresInvertColors_];
  v11 = *(v10 + 136);
  v32 = *(v10 + 120);
  v33 = v11;
  *v34 = *(v10 + 152);
  *&v34[9] = *(v10 + 161);
  if (v34[24] > 1u)
  {
    if (v34[24] == 2)
    {
      sub_1D5BFDE94();
      v13 = v12;
      v14 = swift_allocBox();
      v16 = v15;
      v17 = *(v13 + 48);
      sub_1D725DA5C();
      v18 = *(v5 + 104);
      v18(v16 + v17, *MEMORY[0x1E69D7AC0], v4);
      *v8 = v14;
      v18(v8, *MEMORY[0x1E69D7AD0], v4);
      return sub_1D725DBCC();
    }

    goto LABEL_9;
  }

  if (v34[24])
  {
    v20 = v32 & 0xF000000000000007;
    if ((v32 & 0xF000000000000007) == 0xD000000000000007)
    {
      v21 = 0;
      v26 = 0;
      v27 = 1;
    }

    else
    {
      if (v20 == 0xF000000000000007)
      {
        sub_1D5BF85E4(&v32, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
        v21 = 0;
      }

      else
      {
        *&v35[0] = v32;
        sub_1D62B54E4(v32, *(&v32 + 1), v33, *(&v33 + 1), *v34, *&v34[8], *&v34[16], 1);
        sub_1D6013498();
        v21 = v28;
      }

      v27 = 0;
      v26 = v20 == 0xF000000000000007;
    }

    sub_1D7070900(a1, v21, v26 | (v27 << 8));
    v23 = &qword_1EDF2CAB8;
    v24 = &type metadata for FormatCellSelection;
    v25 = &v32;
  }

  else
  {
    if ((*&v34[16] & 0xF000000000000007) == 0xD000000000000007)
    {
      *&v31[0] = 1;
      *(v31 + 8) = 0u;
      *(&v31[1] + 8) = 0u;
      *(&v31[2] + 8) = 0u;
      BYTE8(v31[3]) = 0;
    }

    else
    {
      v35[0] = v32;
      v35[1] = v33;
      *&v35[2] = *v34;
      BYTE8(v35[2]) = v34[8] & 1;
      *&v35[3] = *&v34[16];
      sub_1D62B54E4(v32, *(&v32 + 1), v33, *(&v33 + 1), *v34, *&v34[8], *&v34[16], 0);
      sub_1D71734C0(v22, v29);
      v31[0] = v29[0];
      v31[1] = v29[1];
      v31[2] = v30[0];
      *(&v31[2] + 9) = *(v30 + 9);
    }

    v35[0] = v31[0];
    v35[1] = v31[1];
    v35[2] = v31[2];
    *(&v35[2] + 9) = *(&v31[2] + 9);
    sub_1D5BF8000(a1, v35);
    sub_1D5BF85E4(&v32, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    v23 = &qword_1EDF2CAF0;
    v24 = &type metadata for FormatCellSelection.Background.Resolved;
    v25 = v31;
  }

  return sub_1D5BF85E4(v25, v23, v24);
}

uint64_t sub_1D705E2B0(_BYTE *a1, uint64_t (*a2)(_BYTE *))
{
  sub_1D725FE2C();
  v4 = a2(v17);
  sub_1D725FD6C();
  v4(v17, 0);
  sub_1D725FDDC();
  v5 = a2(v17);
  sub_1D725FD6C();
  v5(v17, 0);
  sub_1D725FE0C();
  v6 = a2(v17);
  sub_1D725FD6C();
  v6(v17, 0);
  if (a1[8])
  {
    if (a1[24])
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = a2(v17);
    sub_1D725FD7C();
    sub_1D725FCDC();
    v16(v17, 0);
    if (a1[40])
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v15 = a2(v17);
  sub_1D725FD7C();
  sub_1D725FD0C();
  v15(v17, 0);
  if ((a1[24] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1[40] & 1) == 0)
  {
LABEL_4:
    v7 = a2(v17);
    sub_1D725FD7C();
    sub_1D725FCEC();
    v7(v17, 0);
  }

LABEL_5:
  v8 = sub_1D5EDF474(a1[41]);
  v9 = a2(v17);
  sub_1D725FD7C();
  sub_1D725FD2C();
  v9(v17, 0);
  v10 = a2(v17);
  sub_1D725FCFC();
  v10(v17, 0);
  v11 = a2(v17);
  sub_1D725FCBC();
  v11(v17, 0);
  v12 = a2(v17);
  sub_1D725FD1C();
  v12(v17, 0);
  v13 = a2(v17);
  sub_1D725FCCC();
  return v13(v17, 0);
}

uint64_t sub_1D705E660(void **a1)
{
  v2 = *(type metadata accessor for FeedItemSupplementaryAttributes() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFBD0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D7066624(v6, type metadata accessor for FeedItemSupplementaryAttributes, sub_1D70684AC, sub_1D7066774);
  *a1 = v3;
  return result;
}

uint64_t sub_1D705E744(void **a1)
{
  v2 = *(type metadata accessor for ZIndexable() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFBE4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D7066624(v6, type metadata accessor for ZIndexable, sub_1D706A2E8, sub_1D70673F0);
  *a1 = v3;
  return result;
}

uint64_t sub_1D705E828(uint64_t a1, uint64_t a2, uint64_t a3, CGRect *a4, CGRect *a5, CGRect *a6, CGRect *a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, CGFloat a15)
{
  v896 = a7;
  v894 = a5;
  v895 = a6;
  v893 = a4;
  v838 = a11;
  v898 = a2;
  v20 = type metadata accessor for InternalErrorViewLayout.Context();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v839 = &v831 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v870 = &v831 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v872 = &v831 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v841 = &v831 - v31;
  v906 = sub_1D725EF8C();
  v833 = *(v906 - 8);
  MEMORY[0x1EEE9AC00](v906, v32);
  v34 = &v831 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v831 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v848 = &v831 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v867 = &v831 - v44;
  v913 = sub_1D725F3DC();
  v832 = *(v913 - 8);
  MEMORY[0x1EEE9AC00](v913, v45);
  v878 = (&v831 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v47, v48);
  v887 = (&v831 - v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v844 = (&v831 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v850 = &v831 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  *&v860 = &v831 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v831 = &v831 - v61;
  v915 = type metadata accessor for FeedItemSupplementaryAttributes();
  v885 = *(v915 - 8);
  MEMORY[0x1EEE9AC00](v915, v62);
  v855 = (&v831 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v64, v65);
  v854 = &v831 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v903 = (&v831 - v69);
  MEMORY[0x1EEE9AC00](v70, v71);
  v902 = &v831 - v72;
  MEMORY[0x1EEE9AC00](v73, v74);
  v905 = (&v831 - v75);
  MEMORY[0x1EEE9AC00](v76, v77);
  v904 = &v831 - v78;
  MEMORY[0x1EEE9AC00](v79, v80);
  v886 = &v831 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  v879 = (&v831 - v84);
  MEMORY[0x1EEE9AC00](v85, v86);
  v880 = (&v831 - v87);
  MEMORY[0x1EEE9AC00](v88, v89);
  v899 = &v831 - v90;
  MEMORY[0x1EEE9AC00](v91, v92);
  v842 = &v831 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  v888 = (&v831 - v96);
  MEMORY[0x1EEE9AC00](v97, v98);
  v897 = (&v831 - v99);
  MEMORY[0x1EEE9AC00](v100, v101);
  v914 = &v831 - v102;
  MEMORY[0x1EEE9AC00](v103, v104);
  v892 = (&v831 - v105);
  MEMORY[0x1EEE9AC00](v106, v107);
  v891 = (&v831 - v108);
  MEMORY[0x1EEE9AC00](v109, v110);
  v849 = &v831 - v111;
  MEMORY[0x1EEE9AC00](v112, v113);
  v851 = (&v831 - v114);
  MEMORY[0x1EEE9AC00](v115, v116);
  v863 = &v831 - v117;
  MEMORY[0x1EEE9AC00](v118, v119);
  v862 = (&v831 - v120);
  MEMORY[0x1EEE9AC00](v121, v122);
  *&v868 = &v831 - v123;
  MEMORY[0x1EEE9AC00](v124, v125);
  v901 = (&v831 - v126);
  v900 = type metadata accessor for ZIndexable();
  v882 = *(v900 - 8);
  MEMORY[0x1EEE9AC00](v900, v127);
  v858 = &v831 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v129, v130);
  v871 = &v831 - v131;
  MEMORY[0x1EEE9AC00](v132, v133);
  v861 = &v831 - v134;
  MEMORY[0x1EEE9AC00](v135, v136);
  v877 = (&v831 - v137);
  MEMORY[0x1EEE9AC00](v138, v139);
  *&v874 = &v831 - v140;
  MEMORY[0x1EEE9AC00](v141, v142);
  v912 = &v831 - v143;
  MEMORY[0x1EEE9AC00](v144, v145);
  v908 = (&v831 - v146);
  MEMORY[0x1EEE9AC00](v147, v148);
  v857 = &v831 - v149;
  MEMORY[0x1EEE9AC00](v150, v151);
  v881 = &v831 - v152;
  MEMORY[0x1EEE9AC00](v153, v154);
  v875 = &v831 - v155;
  MEMORY[0x1EEE9AC00](v156, v157);
  *&v911 = &v831 - v158;
  MEMORY[0x1EEE9AC00](v159, v160);
  *&v910 = &v831 - v161;
  sub_1D6A5DD4C();
  MEMORY[0x1EEE9AC00](v162 - 8, v163);
  v845 = &v831 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v165, v166);
  v853 = &v831 - v167;
  MEMORY[0x1EEE9AC00](v168, v169);
  v171 = &v831 - v170;
  MEMORY[0x1EEE9AC00](v172, v173);
  v175 = &v831 - v174;
  v852 = type metadata accessor for DebugGroupDirectionalLayoutAttributes();
  MEMORY[0x1EEE9AC00](v852, v176);
  v864 = &v831 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v178, v179);
  v181 = &v831 - v180;
  MEMORY[0x1EEE9AC00](v182, v183);
  v186 = &v831 - v184;
  v187 = *(a1 + 16);
  v873 = v187;
  v834 = a1;
  v835 = v185;
  v876 = v34;
  v884 = v38;
  if (v187)
  {
    v889 = *&a13;
    v907 = a14;
    v909 = a15;
    v188 = a3;
    v189 = (*(v185 + 80) + 32) & ~*(v185 + 80);
    v190 = a1;
    v191 = v187;
    v192 = *(v185 + 72);
    sub_1D707111C(v190 + v189, &v831 - v184, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
    x = *(v186 + 1);
    y = *(v186 + 2);
    width = *(v186 + 3);
    height = *(v186 + 4);
    sub_1D7070E6C(v186, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
    v197 = v191 - 1;
    if (v197)
    {
      v198 = v190 + v192 + v189;
      do
      {
        sub_1D707111C(v198, v186, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
        v953.origin.x = x;
        v953.origin.y = y;
        v953.size.width = width;
        v953.size.height = height;
        v954 = CGRectUnion(v953, *(v186 + 8));
        x = v954.origin.x;
        y = v954.origin.y;
        width = v954.size.width;
        height = v954.size.height;
        sub_1D7070E6C(v186, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
        v198 += v192;
        --v197;
      }

      while (v197);
    }

    sub_1D726327C();
    sub_1D7262E2C();
    sub_1D7262E2C();
    sub_1D72632AC();
    v200 = v199;
    v202 = v201;
    v204 = v203;
    v206 = v205;
    v187 = v873;
    a1 = v834;
    a3 = v188;
  }

  else
  {
    v200 = 0.0;
    v202 = 0.0;
    v204 = 0.0;
    v206 = 0.0;
  }

  v837 = type metadata accessor for DebugGroupLayoutView();
  v889 = [objc_allocWithZone(v837) initWithFrame_];
  v207 = *(a3 + 64) | (*(a3 + 66) << 16);
  v208 = *&v911;
  if (*(a3 + 64) != 2)
  {
    v209 = *(a3 + 16);
    v950[0] = *a3;
    v950[1] = v209;
    v210 = *(a3 + 48);
    v950[2] = *(a3 + 32);
    v950[3] = v210;
    v951 = v207;
    v952 = BYTE2(v207);
    sub_1D705E2B0(v950, MEMORY[0x1E69DC4D8]);
  }

  *&v920 = MEMORY[0x1E69E7CC0];
  if (v187)
  {
    v211 = v187;
    *&v909 = *(v852 + 20);
    v212 = a1 + ((*(v835 + 80) + 32) & ~*(v835 + 80));
    v213 = *(v835 + 72);
    LODWORD(v907) = *MEMORY[0x1E69D74D0];
    while (1)
    {
      sub_1D707111C(v212, v181, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
      sub_1D707111C(&v181[*&v909], v175, sub_1D6A5DD4C);
      v215 = sub_1D725A5BC();
      v216 = *(v215 - 8);
      if ((*(v216 + 48))(v175, 1, v215) != 1)
      {
        sub_1D707111C(v175, v171, sub_1D6A5DD4C);
        v217 = (*(v216 + 88))(v171, v215);
        v214 = MEMORY[0x1E69E7CC0];
        if (v217 == LODWORD(v907))
        {
          goto LABEL_12;
        }

        (*(v216 + 8))(v171, v215);
      }

      v214 = *(v181 + 6);

LABEL_12:
      sub_1D7070E6C(v181, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
      sub_1D7070E6C(v175, sub_1D6A5DD4C);
      sub_1D69861DC(v214);
      v212 += v213;
      if (!--v211)
      {
        v218 = v920;
        v208 = *&v911;
        goto LABEL_18;
      }
    }
  }

  v218 = MEMORY[0x1E69E7CC0];
LABEL_18:
  sub_1D7070ECC(0, &qword_1EC899B28, sub_1D7070F30, MEMORY[0x1E69E6F90]);
  v219 = swift_allocObject();
  v220 = v898;
  v221 = *(v898 + 16);
  v222 = MEMORY[0x1E69E7CC0];
  v223 = v910;
  if (v221)
  {
    *&v920 = MEMORY[0x1E69E7CC0];
    sub_1D6E76FAC(v221);
    v224 = (v220 + 32);
    do
    {
      v225 = *v224++;
      **&v223 = v225;
      swift_storeEnumTagMultiPayload();
      v226 = v920;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6998114(0, *(v226 + 16) + 1, 1);
        v226 = v920;
      }

      v228 = *(v226 + 16);
      v227 = *(v226 + 24);
      if (v228 >= v227 >> 1)
      {
        sub_1D6998114(v227 > 1, v228 + 1, 1);
        v226 = v920;
      }

      *(v226 + 16) = v228 + 1;
      v223 = v910;
      sub_1D7070F64(*&v910, v226 + ((*(v882 + 80) + 32) & ~*(v882 + 80)) + *(v882 + 72) * v228, type metadata accessor for ZIndexable);
      --v221;
    }

    while (v221);
  }

  else
  {
    v226 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6B98650(v226);
  *(v219 + 32) = v229;
  v230 = *(v218 + 16);
  if (v230)
  {
    *&v920 = v222;
    sub_1D6E76FAC(v230);
    v231 = v218 + ((*(v885 + 80) + 32) & ~*(v885 + 80));
    v232 = *(v885 + 72);
    do
    {
      sub_1D707111C(v231, v208, type metadata accessor for FeedItemSupplementaryAttributes);
      swift_storeEnumTagMultiPayload();
      v233 = v920;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6998114(0, *(v233 + 16) + 1, 1);
        v233 = v920;
      }

      v235 = *(v233 + 16);
      v234 = *(v233 + 24);
      if (v235 >= v234 >> 1)
      {
        sub_1D6998114(v234 > 1, v235 + 1, 1);
        v233 = v920;
      }

      *(v233 + 16) = v235 + 1;
      v236 = v233 + ((*(v882 + 80) + 32) & ~*(v882 + 80)) + *(v882 + 72) * v235;
      v208 = *&v911;
      sub_1D7070F64(*&v911, v236, type metadata accessor for ZIndexable);
      v231 += v232;
      --v230;
    }

    while (v230);
  }

  else
  {

    v233 = MEMORY[0x1E69E7CC0];
  }

  *(v219 + 40) = v233;
  *&v920 = v222;

  sub_1D6986194(v237);

  sub_1D6986194(v238);
  swift_setDeallocating();
  sub_1D7070F30(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  sub_1D705E744(&v920);
  v846 = 0;
  v239 = v831;

  v240 = v920;
  v241 = v906;
  v242 = v881;
  v898 = *(v920 + 16);
  if (!v898)
  {
    v245 = MEMORY[0x1E69E7CC0];
    v857 = MEMORY[0x1E69E7CC0];
    goto LABEL_120;
  }

  v243 = 0;
  LODWORD(v907) = *MEMORY[0x1E69D8678];
  *&v869 = v832 + 104;
  LODWORD(v909) = *MEMORY[0x1E69D8680];
  v883 = v832 + 88;
  v840 = (v832 + 8);
  v859 = (v832 + 96);
  v244 = *MEMORY[0x1E69D8478];
  v866 = (v833 + 104);
  LODWORD(v865) = *MEMORY[0x1E69D8470];
  v847 = v833 + 88;
  v836 = (v833 + 8);
  v245 = MEMORY[0x1E69E7CC0];
  v246 = v875;
  LODWORD(v856) = v244;
  do
  {
    if (v243 >= v240[2])
    {
      goto LABEL_380;
    }

    *&v911 = (*(v882 + 80) + 32) & ~*(v882 + 80);
    v910 = *(v882 + 72);
    sub_1D707111C(v240 + *&v911 + *&v910 * v243, v246, type metadata accessor for ZIndexable);
    sub_1D707111C(v246, v242, type metadata accessor for ZIndexable);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v247 = v239;
      v917 = *v242;
      FeedGroupDecoration.decorationItem.getter(&v920);
      __swift_project_boxed_opaque_existential_1(&v920, *(&v921 + 1));
      v248 = *&v860;
      sub_1D725F4AC();

      v249 = (*v883)(v248, v913);
      if (v249 == LODWORD(v907))
      {
        (*v859)(v248, v913);
        v250 = *v248;
        v241 = v906;
      }

      else
      {
        v241 = v906;
        if (v249 != LODWORD(v909))
        {
          (*v840)(v248, v913);
        }

        v250 = -100;
      }

      v239 = v247;
      v242 = v881;
      __swift_destroy_boxed_opaque_existential_1(&v920);
      v246 = v875;
      v244 = v856;
      if ((v250 & 0x8000000000000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v251 = v901;
      sub_1D7070F64(v242, v901, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v251, *&v868, type metadata accessor for FeedItemSupplementaryAttributes);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v253 = v867;
      if (EnumCaseMultiPayload < 2)
      {
        goto LABEL_62;
      }

      if (EnumCaseMultiPayload != 2)
      {
        sub_1D7070E6C(*&v868, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_62:
        (**&v869)(v239, LODWORD(v909), v913);
LABEL_63:
        sub_1D7070F64(v901, v862, type metadata accessor for FeedItemSupplementaryAttributes);
        v269 = swift_getEnumCaseMultiPayload();
        if (v269 < 2)
        {
          (*v866)(v253, v865, v241);
          v246 = v875;
        }

        else
        {
          if (v269 == 2)
          {
            v270 = v862[4];
            v271 = v862[6];
            v272 = v862[7];
            v925 = v862[5];
            v926 = v271;
            v927 = v272;
            v273 = v862[1];
            v920 = *v862;
            v274 = v862[2];
            v275 = v862[3];
            v921 = v273;
            v922 = v274;
            v923 = v275;
            v924 = v270;
            v276 = *(v862 + 16);
            sub_1D6729D5C(&v920);
            v277 = *(*(v276 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

            v253 = v867;
            if (v277)
            {
              v278 = v865;
            }

            else
            {
              v278 = v244;
            }

            (*v866)(v867, v278, v241);
            v242 = v881;
          }

          else
          {
            (*v866)(v253, v244, v241);
            sub_1D7070E6C(v862, type metadata accessor for InternalErrorViewLayout.Context);
          }

          v246 = v875;
          v279 = (*v847)(v253, v241);
          if (v279 != v244 && v279 != v865)
          {
            (*v836)(v867, v241);
          }
        }

        goto LABEL_39;
      }

      v254 = *(*&v868 + 64);
      v255 = *(*&v868 + 96);
      v256 = *(*&v868 + 112);
      v925 = *(*&v868 + 80);
      v926 = v255;
      v927 = v256;
      v257 = *(*&v868 + 16);
      v920 = **&v868;
      v258 = *(*&v868 + 32);
      v259 = *(*&v868 + 48);
      v921 = v257;
      v922 = v258;
      v923 = v259;
      v924 = v254;
      v260 = *(*&v868 + 128);
      sub_1D6729D5C(&v920);
      v261 = *(v260 + 48);
      v262 = *(v260 + 56);

      v263 = LODWORD(v909);
      if ((v262 & 1) == 0)
      {
        *v239 = v261;
        v263 = LODWORD(v907);
      }

      v264 = v913;
      (**&v869)(v239, v263, v913);
      v265 = (*v883)(v239, v264);
      if (v265 != LODWORD(v907))
      {
        v241 = v906;
        v242 = v881;
        if (v265 == LODWORD(v909))
        {
          v253 = v867;
          goto LABEL_63;
        }

        sub_1D7070E6C(v901, type metadata accessor for FeedItemSupplementaryAttributes);
        (*v840)(v239, v913);
LABEL_39:
        sub_1D7070E6C(v246, type metadata accessor for ZIndexable);
        goto LABEL_40;
      }

      sub_1D7070E6C(v901, type metadata accessor for FeedItemSupplementaryAttributes);
      (*v859)(v239, v913);
      v241 = v906;
      v242 = v881;
      if ((*v239 & 0x8000000000000000) == 0)
      {
        goto LABEL_39;
      }
    }

    sub_1D7070F64(v246, v857, type metadata accessor for ZIndexable);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v936 = v245;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D6998114(0, *(v245 + 16) + 1, 1);
      v245 = v936;
    }

    v268 = *(v245 + 16);
    v267 = *(v245 + 24);
    if (v268 >= v267 >> 1)
    {
      sub_1D6998114(v267 > 1, v268 + 1, 1);
      v245 = v936;
    }

    *(v245 + 16) = v268 + 1;
    sub_1D7070F64(v857, v245 + *&v911 + v268 * *&v910, type metadata accessor for ZIndexable);
    v241 = v906;
    v242 = v881;
LABEL_40:
    ++v243;
  }

  while (v898 != v243);
  v280 = v240[2];
  if (v280)
  {
    v898 = v245;
    v281 = 0;
    v282 = v240 + *&v911;
    v857 = MEMORY[0x1E69E7CC0];
    v283 = v874;
    v246 = *&v910;
    v843 = v240;
    while (1)
    {
      if (v281 >= v240[2])
      {
        goto LABEL_381;
      }

      v284 = v908;
      sub_1D707111C(v282, v908, type metadata accessor for ZIndexable);
      sub_1D707111C(v284, *&v283, type metadata accessor for ZIndexable);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v285 = v244;
        v286 = v280;
        v917 = **&v283;
        FeedGroupDecoration.decorationItem.getter(&v920);
        __swift_project_boxed_opaque_existential_1(&v920, *(&v921 + 1));
        v287 = v844;
        sub_1D725F4AC();
        v288 = v913;

        v289 = (*v883)(v287, v288);
        if (v289 == LODWORD(v907))
        {
          (*v859)(v287, v913);
          v290 = *v287;
        }

        else
        {
          if (v289 != LODWORD(v909))
          {
            (*v840)(v287, v913);
          }

          v290 = -100;
        }

        v283 = v874;
        v246 = *&v910;
        v280 = v286;
        __swift_destroy_boxed_opaque_existential_1(&v920);
        v244 = v285;
        v240 = v843;
        if ((v290 & 0x8000000000000000) == 0)
        {
          goto LABEL_112;
        }
      }

      else
      {
        v291 = v863;
        sub_1D7070F64(*&v283, v863, type metadata accessor for FeedItemSupplementaryAttributes);
        sub_1D707111C(v291, v851, type metadata accessor for FeedItemSupplementaryAttributes);
        v292 = swift_getEnumCaseMultiPayload();
        v293 = v292 >= 2;
        v294 = v292 == 2;
        v295 = v850;
        if (!v293)
        {
          goto LABEL_98;
        }

        if (!v294)
        {
          v309 = v850;
          sub_1D7070E6C(v851, type metadata accessor for InternalErrorViewLayout.Context);
          v295 = v309;
LABEL_98:
          (**&v869)(v295, LODWORD(v909), v913);
LABEL_99:
          sub_1D7070F64(v863, v849, type metadata accessor for FeedItemSupplementaryAttributes);
          v310 = swift_getEnumCaseMultiPayload();
          if (v310 >= 2)
          {
            if (v310 == 2)
            {
              v311 = *(v849 + 64);
              v312 = *(v849 + 96);
              v313 = *(v849 + 112);
              v925 = *(v849 + 80);
              v926 = v312;
              v927 = v313;
              v314 = *(v849 + 16);
              v920 = *v849;
              v315 = *(v849 + 32);
              v316 = *(v849 + 48);
              v921 = v314;
              v922 = v315;
              v923 = v316;
              v924 = v311;
              v317 = *(v849 + 128);
              sub_1D6729D5C(&v920);
              v318 = *(*(v317 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

              if (v318)
              {
                v321 = v848;
                v319 = v848;
                v320 = v865;
              }

              else
              {
                v321 = v848;
                v319 = v848;
                v320 = v244;
              }

              v322 = v906;
              (*v866)(v319, v320, v906);
            }

            else
            {
              v321 = v848;
              v322 = v906;
              (*v866)(v848, v244, v906);
              sub_1D7070E6C(v849, type metadata accessor for InternalErrorViewLayout.Context);
            }

            v323 = (*v847)(v321, v322);
            if (v323 != v244 && v323 != v865)
            {
              (*v836)(v848, v906);
            }
          }

          else
          {
            (*v866)(v848, v865, v906);
          }

          goto LABEL_112;
        }

        v296 = v851[4];
        v297 = v851[6];
        v298 = v851[7];
        v925 = v851[5];
        v926 = v297;
        v927 = v298;
        v299 = v851[1];
        v920 = *v851;
        v300 = v851[2];
        v301 = v851[3];
        v921 = v299;
        v922 = v300;
        v923 = v301;
        v924 = v296;
        v302 = *(v851 + 16);
        sub_1D6729D5C(&v920);
        v303 = *(v302 + 48);
        v304 = *(v302 + 56);
        v305 = v850;

        v306 = LODWORD(v909);
        if ((v304 & 1) == 0)
        {
          *v305 = v303;
          v306 = LODWORD(v907);
        }

        v307 = v913;
        (**&v869)(v305, v306, v913);
        v308 = (*v883)(v305, v307);
        if (v308 != LODWORD(v907))
        {
          if (v308 == LODWORD(v909))
          {
            goto LABEL_99;
          }

          sub_1D7070E6C(v863, type metadata accessor for FeedItemSupplementaryAttributes);
          (*v840)(v305, v913);
LABEL_112:
          sub_1D7070F64(v908, v877, type metadata accessor for ZIndexable);
          v324 = v857;
          v325 = swift_isUniquelyReferenced_nonNull_native();
          *&v936 = v324;
          if ((v325 & 1) == 0)
          {
            sub_1D6998114(0, *(v324 + 16) + 1, 1);
            v324 = v936;
          }

          v327 = *(v324 + 16);
          v326 = *(v324 + 24);
          if (v327 >= v326 >> 1)
          {
            sub_1D6998114(v326 > 1, v327 + 1, 1);
            v324 = v936;
          }

          *(v324 + 16) = v327 + 1;
          v857 = v324;
          sub_1D7070F64(v877, v324 + *&v911 + v327 * v246, type metadata accessor for ZIndexable);
          v283 = v874;
          goto LABEL_79;
        }

        sub_1D7070E6C(v863, type metadata accessor for FeedItemSupplementaryAttributes);
        (*v859)(v305, v913);
        v283 = v874;
        if ((*v305 & 0x8000000000000000) == 0)
        {
          goto LABEL_112;
        }
      }

      sub_1D7070E6C(v908, type metadata accessor for ZIndexable);
LABEL_79:
      ++v281;
      v282 += v246;
      if (v280 == v281)
      {
        v245 = v898;
        goto LABEL_120;
      }
    }
  }

  v857 = MEMORY[0x1E69E7CC0];
LABEL_120:
  v328 = v861;

  v329 = *(v245 + 16);
  v860 = v200;
  v874 = v206;
  if (v329)
  {
    v911 = *&OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
    v908 = OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_internalErrorViewRenderer;
    *&v907 = v890 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_formatLayoutViewRenderer;
    v901 = (&v890->origin.x + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_colorPaletteProvider);
    v330 = *(v882 + 80);
    v898 = v245;
    v331 = v245 + ((v330 + 32) & ~v330);
    v332 = *(v882 + 72);
    v910 = v332;
    do
    {
      v337 = v912;
      sub_1D707111C(v331, v912, type metadata accessor for ZIndexable);
      sub_1D707111C(v337, v328, type metadata accessor for ZIndexable);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *&v920 = *v328;
        if (v873)
        {
          v333 = v200;
          v334 = v202;
          v335 = v204;
          v336 = v206;
        }

        else
        {
          v333 = 0.0;
          v334 = 0.0;
          v335 = 0.0;
          v336 = 0.0;
        }

        sub_1D7070474(&v920, v889, v333, v334, v335, v336);
        sub_1D7070E6C(v912, type metadata accessor for ZIndexable);
      }

      else
      {
        v338 = v891;
        sub_1D7070F64(v328, v891, type metadata accessor for FeedItemSupplementaryAttributes);
        sub_1D707111C(v338, v892, type metadata accessor for FeedItemSupplementaryAttributes);
        v339 = swift_getEnumCaseMultiPayload();
        if (v339 > 1)
        {
          if (v339 == 2)
          {
            v353 = *(v892 + 1);
            v920 = *v892;
            v354 = *(v892 + 2);
            v355 = *(v892 + 3);
            v356 = v889;
            v921 = v353;
            v922 = v354;
            v357 = *(v892 + 7);
            v926 = *(v892 + 6);
            v927 = v357;
            v358 = *(v892 + 5);
            v924 = *(v892 + 4);
            v925 = v358;
            v923 = v355;
            v359 = *(v892 + 16);
            *&v909 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
            v360 = *(v359 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
            swift_beginAccess();
            v361 = [objc_allocWithZone(type metadata accessor for FormatLayoutView()) initWithFrame_];
            v362 = v911;
            [*(v356 + *&v911) addSubview_];
            v363 = *(v356 + *&v362);
            [v363 contentSize];
            v365 = v364;
            [v361 frame];
            MaxX = CGRectGetMaxX(v957);
            if (v365 <= MaxX)
            {
              v365 = MaxX;
            }

            [*(v356 + *&v362) contentSize];
            v368 = v367;
            [v361 frame];
            MaxY = CGRectGetMaxY(v958);
            if (v368 > MaxY)
            {
              v370 = v368;
            }

            else
            {
              v370 = MaxY;
            }

            [v363 setContentSize_];
            v371 = *(*&v907 + 8);
            ObjectType = swift_getObjectType();
            v940 = v924;
            v941 = v925;
            v942 = v926;
            v943 = v927;
            v936 = v920;
            v937 = v921;
            v938 = v922;
            v939 = v923;
            v373 = *(v359 + *&v909);
            v918 = 0;
            v917 = 0;
            v919 = 0;
            (*(v371 + 88))(&v936, v373, v361, v893, &v917, v894, v895, v896, &type metadata for FormatSupplementary, &type metadata for FormatLayoutContext, &protocol witness table for FormatLayoutContext, ObjectType, v371);
            v374 = *(v359 + 32);
            if (v374)
            {
              LOBYTE(v374) = *(v374 + 48);
            }

            v200 = v860;
            [v361 setClipsToBounds_];
            sub_1D725A7CC();
            v375 = v936;
            v328 = v861;
            v332 = v910;
            if (v936)
            {
              [v936 setHidden_];
              sub_1D6729D5C(&v920);
            }

            else
            {
              sub_1D6729D5C(&v920);
            }

            sub_1D7070E6C(v891, type metadata accessor for FeedItemSupplementaryAttributes);
            sub_1D7070E6C(v912, type metadata accessor for ZIndexable);
            goto LABEL_125;
          }

          sub_1D5BAA13C();
          v389 = (v892 + *(v388 + 48));
          v390 = *v389;
          v391 = v389[1];
          v392 = v389[2];
          v393 = v389[3];
          v394 = *(v389 + 7);
          v940 = *(v389 + 6);
          v941 = v394;
          v395 = *(v389 + 11);
          v944 = *(v389 + 10);
          v945 = v395;
          v396 = *(v389 + 9);
          v942 = *(v389 + 8);
          v943 = v396;
          v397 = *(v389 + 15);
          v948 = *(v389 + 14);
          v949 = v397;
          v398 = *(v389 + 13);
          v946 = *(v389 + 12);
          v947 = v398;
          v399 = *(v389 + 5);
          v938 = *(v389 + 4);
          v939 = v399;
          v400 = *(v389 + 3);
          v936 = *(v389 + 2);
          v937 = v400;
          sub_1D7070F64(v892, v841, type metadata accessor for InternalErrorViewLayout.Context);
          v401 = [objc_allocWithZone(type metadata accessor for InternalErrorView()) initWithFrame_];
          v402 = v889;
          v403 = v911;
          [*(v889 + *&v911) addSubview_];
          v404 = *(v402 + *&v403);
          [v404 contentSize];
          v406 = v405;
          [v401 frame];
          v407 = CGRectGetMaxX(v961);
          if (v406 <= v407)
          {
            v406 = v407;
          }

          [*(v402 + *&v403) contentSize];
          v409 = v408;
          [v401 frame];
          v410 = CGRectGetMaxY(v962);
          if (v409 > v410)
          {
            v411 = v409;
          }

          else
          {
            v411 = v410;
          }

          v206 = v874;
          [v404 setContentSize_];
          *&v920 = v390;
          *(&v920 + 1) = v391;
          *&v921 = v392;
          *(&v921 + 1) = v393;
          v932 = v946;
          v933 = v947;
          v934 = v948;
          v935 = v949;
          v928 = v942;
          v929 = v943;
          v930 = v944;
          v931 = v945;
          v924 = v938;
          v925 = v939;
          v926 = v940;
          v927 = v941;
          v922 = v936;
          v923 = v937;
          v412 = v841;
          sub_1D69CBF1C(v841, &v920, v401);
          [*&v401[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton] setHidden_];
          v332 = v910;
          sub_1D7070E6C(v412, type metadata accessor for InternalErrorViewLayout.Context);
          sub_1D7070E6C(v891, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D7070E6C(v912, type metadata accessor for ZIndexable);
        }

        else
        {
          if (v339)
          {
            v376 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
            v377 = v889;
            v378 = v911;
            [*(v889 + *&v911) addSubview_];
            v379 = *(v377 + *&v378);
            [v379 contentSize];
            v381 = v380;
            [v376 frame];
            v382 = CGRectGetMaxX(v959);
            if (v381 <= v382)
            {
              v381 = v382;
            }

            [*(v377 + *&v378) contentSize];
            v384 = v383;
            [v376 frame];
            v385 = CGRectGetMaxY(v960);
            if (v384 > v385)
            {
              v386 = v384;
            }

            else
            {
              v386 = v385;
            }

            [v379 setContentSize_];
            v387 = [objc_opt_self() clearColor];
            sub_1D725CFEC();
          }

          else
          {
            v340 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
            v341 = v889;
            v342 = v911;
            [*(v889 + *&v911) addSubview_];
            v343 = *(v341 + *&v342);
            [v343 contentSize];
            v345 = v344;
            [v340 frame];
            v346 = CGRectGetMaxX(v955);
            if (v345 <= v346)
            {
              v345 = v346;
            }

            [*(v341 + *&v342) contentSize];
            v348 = v347;
            [v340 frame];
            v349 = CGRectGetMaxY(v956);
            if (v348 > v349)
            {
              v350 = v348;
            }

            else
            {
              v350 = v349;
            }

            [v343 setContentSize_];
            v351 = v901[3];
            v352 = v901[4];
            __swift_project_boxed_opaque_existential_1(v901, v351);
            (*(v352 + 8))(&v920, v351, v352);

            sub_1D725CFEC();
          }

          sub_1D7070E6C(v891, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D7070E6C(v912, type metadata accessor for ZIndexable);
        }

        v200 = v860;
        v328 = v861;
      }

LABEL_125:
      v331 += *&v332;
      --v329;
    }

    while (v329);
  }

  v413 = v858;
  v414 = v853;
  if (!v873)
  {
LABEL_334:
    v747 = *(v857 + 16);
    if (v747)
    {
      v914 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
      v910 = *&OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_internalErrorViewRenderer;
      *&v909 = v890 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_formatLayoutViewRenderer;
      v908 = (&v890->origin.x + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_colorPaletteProvider);
      v748 = v857 + ((*(v882 + 80) + 32) & ~*(v882 + 80));
      v749 = *(v882 + 72);
      v913 = v749;
      do
      {
        v754 = v871;
        sub_1D707111C(v748, v871, type metadata accessor for ZIndexable);
        sub_1D707111C(v754, v413, type metadata accessor for ZIndexable);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          *&v920 = *v413;
          if (v873)
          {
            v750 = v200;
            v751 = v202;
            v752 = v204;
            v753 = v206;
          }

          else
          {
            v750 = 0.0;
            v751 = 0.0;
            v752 = 0.0;
            v753 = 0.0;
          }

          sub_1D7070474(&v920, v889, v750, v751, v752, v753);
          sub_1D7070E6C(v871, type metadata accessor for ZIndexable);
        }

        else
        {
          v755 = v854;
          sub_1D7070F64(v413, v854, type metadata accessor for FeedItemSupplementaryAttributes);
          sub_1D707111C(v755, v855, type metadata accessor for FeedItemSupplementaryAttributes);
          v756 = swift_getEnumCaseMultiPayload();
          if (v756 > 1)
          {
            if (v756 == 2)
            {
              v770 = *(v855 + 1);
              v920 = *v855;
              v771 = *(v855 + 2);
              v772 = *(v855 + 3);
              v921 = v770;
              v922 = v771;
              v773 = *(v855 + 7);
              v926 = *(v855 + 6);
              v927 = v773;
              v774 = *(v855 + 5);
              v924 = *(v855 + 4);
              v925 = v774;
              v923 = v772;
              v911 = v855[16];
              v912 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
              v775 = *(*&v911 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
              swift_beginAccess();
              v776 = [objc_allocWithZone(type metadata accessor for FormatLayoutView()) initWithFrame_];
              v777 = v889;
              v778 = v914;
              [*(v889 + v914) addSubview_];
              v779 = *(v777 + v778);
              [v779 contentSize];
              v781 = v780;
              [v776 frame];
              v782 = CGRectGetMaxX(v993);
              if (v781 <= v782)
              {
                v781 = v782;
              }

              [*(v777 + v778) contentSize];
              v784 = v783;
              [v776 frame];
              v785 = CGRectGetMaxY(v994);
              if (v784 > v785)
              {
                v786 = v784;
              }

              else
              {
                v786 = v785;
              }

              [v779 setContentSize_];
              v787 = *(*&v909 + 8);
              v788 = swift_getObjectType();
              v940 = v924;
              v941 = v925;
              v942 = v926;
              v943 = v927;
              v936 = v920;
              v937 = v921;
              v938 = v922;
              v939 = v923;
              v789 = v911;
              v790 = *(*&v911 + v912);
              memset(v916, 0, sizeof(v916));
              (*(v787 + 88))(&v936, v790, v776, v893, v916, v894, v895, v896, &type metadata for FormatSupplementary, &type metadata for FormatLayoutContext, &protocol witness table for FormatLayoutContext, v788, v787);
              v791 = *(*&v789 + 32);
              if (v791)
              {
                LOBYTE(v791) = *(v791 + 48);
              }

              v200 = v860;
              v749 = v913;
              [v776 setClipsToBounds_];
              sub_1D725A7CC();
              v792 = v936;
              if (v936)
              {
                [v936 setHidden_];
                sub_1D6729D5C(&v920);
              }

              else
              {
                sub_1D6729D5C(&v920);
              }

              sub_1D7070E6C(v854, type metadata accessor for FeedItemSupplementaryAttributes);
              sub_1D7070E6C(v871, type metadata accessor for ZIndexable);
              v413 = v858;
            }

            else
            {
              sub_1D5BAA13C();
              v806 = (v855 + *(v805 + 48));
              v807 = *v806;
              v808 = v806[1];
              v809 = v806[2];
              v810 = v806[3];
              v811 = *(v806 + 7);
              v940 = *(v806 + 6);
              v941 = v811;
              v812 = *(v806 + 11);
              v944 = *(v806 + 10);
              v945 = v812;
              v813 = *(v806 + 9);
              v942 = *(v806 + 8);
              v943 = v813;
              v814 = *(v806 + 15);
              v948 = *(v806 + 14);
              v949 = v814;
              v815 = *(v806 + 13);
              v946 = *(v806 + 12);
              v947 = v815;
              v816 = *(v806 + 5);
              v938 = *(v806 + 4);
              v939 = v816;
              v817 = *(v806 + 3);
              v936 = *(v806 + 2);
              v937 = v817;
              sub_1D7070F64(v855, v839, type metadata accessor for InternalErrorViewLayout.Context);
              v818 = [objc_allocWithZone(type metadata accessor for InternalErrorView()) initWithFrame_];
              v819 = v889;
              v820 = v914;
              [*(v889 + v914) addSubview_];
              v821 = *(v819 + v820);
              [v821 contentSize];
              v823 = v822;
              [v818 frame];
              v824 = CGRectGetMaxX(v997);
              if (v823 <= v824)
              {
                v823 = v824;
              }

              [*(v819 + v820) contentSize];
              v826 = v825;
              [v818 frame];
              v827 = CGRectGetMaxY(v998);
              if (v826 > v827)
              {
                v828 = v826;
              }

              else
              {
                v828 = v827;
              }

              v206 = v874;
              [v821 setContentSize_];
              *&v920 = v807;
              *(&v920 + 1) = v808;
              *&v921 = v809;
              *(&v921 + 1) = v810;
              v932 = v946;
              v933 = v947;
              v934 = v948;
              v935 = v949;
              v928 = v942;
              v929 = v943;
              v930 = v944;
              v931 = v945;
              v924 = v938;
              v925 = v939;
              v926 = v940;
              v927 = v941;
              v922 = v936;
              v923 = v937;
              v829 = v839;
              sub_1D69CBF1C(v839, &v920, v818);
              [*&v818[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton] setHidden_];
              sub_1D7070E6C(v829, type metadata accessor for InternalErrorViewLayout.Context);
              sub_1D7070E6C(v854, type metadata accessor for FeedItemSupplementaryAttributes);
              sub_1D7070E6C(v871, type metadata accessor for ZIndexable);

              v413 = v858;
              v200 = v860;
              v749 = v913;
            }
          }

          else
          {
            if (v756)
            {
              v793 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
              v794 = v889;
              v795 = v914;
              [*(v889 + v914) addSubview_];
              v796 = *(v794 + v795);
              [v796 contentSize];
              v798 = v797;
              [v793 frame];
              v799 = CGRectGetMaxX(v995);
              if (v798 <= v799)
              {
                v798 = v799;
              }

              [*(v794 + v795) contentSize];
              v801 = v800;
              [v793 frame];
              v802 = CGRectGetMaxY(v996);
              if (v801 > v802)
              {
                v803 = v801;
              }

              else
              {
                v803 = v802;
              }

              [v796 setContentSize_];
              v804 = [objc_opt_self() clearColor];
              sub_1D725CFEC();
            }

            else
            {
              v757 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
              v758 = v889;
              v759 = v914;
              [*(v889 + v914) addSubview_];
              v760 = *(v758 + v759);
              [v760 contentSize];
              v762 = v761;
              [v757 frame];
              v763 = CGRectGetMaxX(v991);
              if (v762 <= v763)
              {
                v762 = v763;
              }

              [*(v758 + v759) contentSize];
              v765 = v764;
              [v757 frame];
              v766 = CGRectGetMaxY(v992);
              if (v765 > v766)
              {
                v767 = v765;
              }

              else
              {
                v767 = v766;
              }

              [v760 setContentSize_];
              v768 = v908[3];
              v769 = v908[4];
              __swift_project_boxed_opaque_existential_1(v908, v768);
              (*(v769 + 8))(&v920, v768, v769);

              sub_1D725CFEC();
            }

            sub_1D7070E6C(v854, type metadata accessor for FeedItemSupplementaryAttributes);
            sub_1D7070E6C(v871, type metadata accessor for ZIndexable);
            v413 = v858;
            v200 = v860;
          }
        }

        v748 += v749;
        --v747;
      }

      while (v747);
    }

    return v889;
  }

  v415 = 0;
  v841 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
  v867 = OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_internalErrorViewRenderer;
  v866 = v890 + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_formatLayoutViewRenderer;
  v865 = (&v890->origin.x + OBJC_IVAR____TtC8NewsFeed27DebugGroupLayoutViewFactory_colorPaletteProvider);
  v850 = (v834 + ((*(v835 + 80) + 32) & ~*(v835 + 80)));
  LODWORD(v844) = *MEMORY[0x1E69D74D0];
  LODWORD(v875) = *MEMORY[0x1E69D8678];
  v898 = v832 + 104;
  LODWORD(v901) = *MEMORY[0x1E69D8680];
  v861 = (v832 + 88);
  v843 = (v832 + 8);
  v848 = (v832 + 96);
  v416 = *MEMORY[0x1E69D8478];
  v891 = (v833 + 104);
  LODWORD(v892) = *MEMORY[0x1E69D8470];
  v877 = (v833 + 88);
  v856 = (v833 + 8);
  v849 = *(v835 + 72);
  v868 = v204;
  v869 = v202;
  LODWORD(v907) = v416;
LABEL_166:
  v859 = v415;
  v418 = v864;
  sub_1D707111C(&v850[v849 * v415], v864, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
  sub_1D707111C(v418 + *(v852 + 20), v414, sub_1D6A5DD4C);
  v419 = sub_1D725A5BC();
  v420 = *(v419 - 8);
  if ((*(v420 + 48))(v414, 1, v419) == 1)
  {
    goto LABEL_202;
  }

  v421 = v414;
  v422 = v845;
  sub_1D707111C(v421, v845, sub_1D6A5DD4C);
  v423 = (*(v420 + 88))(v422, v419);
  if (v423 == v844)
  {
    *&v920 = *(v418 + 48);

    v246 = v846;
    sub_1D705E660(&v920);
    if (v246)
    {
      goto LABEL_382;
    }

    v846 = 0;
    v246 = v920;
    v424 = *(v920 + 16);
    if (!v424)
    {
      v471 = MEMORY[0x1E69E7CC0];
      v505 = MEMORY[0x1E69E7CC0];
      goto LABEL_248;
    }

    v425 = 0;
    v851 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v425 >= *(v246 + 16))
      {
        goto LABEL_378;
      }

      v426 = (*(v885 + 80) + 32) & ~*(v885 + 80);
      v427 = *(v885 + 72);
      v428 = v914;
      sub_1D707111C(v246 + v426 + v427 * v425, v914, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D707111C(v428, v897, type metadata accessor for FeedItemSupplementaryAttributes);
      v429 = swift_getEnumCaseMultiPayload();
      if (v429 < 2)
      {
        goto LABEL_184;
      }

      if (v429 != 2)
      {
        break;
      }

      v430 = v897[4];
      v431 = v897[6];
      v432 = v897[7];
      v925 = v897[5];
      v926 = v431;
      v927 = v432;
      v433 = v897[1];
      v920 = *v897;
      v434 = v897[2];
      v435 = v897[3];
      v921 = v433;
      v922 = v434;
      v923 = v435;
      v924 = v430;
      v436 = *(v897 + 16);
      sub_1D6729D5C(&v920);
      v437 = *(v436 + 48);
      v438 = *(v436 + 56);

      v439 = v901;
      if ((v438 & 1) == 0)
      {
        *v887 = v437;
        v439 = v875;
      }

      v440 = v887;
      v441 = v913;
      (*v898)(v887, v439, v913);
      v442 = (*v861)(v440, v441);
      if (v442 == v875)
      {
        (*v848)(v440, v441);
        v416 = LODWORD(v907);
        if ((*v440 & 0x8000000000000000) != 0)
        {
          sub_1D7070F64(v914, v842, type metadata accessor for FeedItemSupplementaryAttributes);
          v443 = v851;
          v444 = swift_isUniquelyReferenced_nonNull_native();
          *&v936 = v443;
          if ((v444 & 1) == 0)
          {
            sub_1D69980C4(0, *(v443 + 16) + 1, 1);
            v443 = v936;
          }

          v446 = *(v443 + 16);
          v445 = *(v443 + 24);
          if (v446 >= v445 >> 1)
          {
            sub_1D69980C4(v445 > 1, v446 + 1, 1);
            v443 = v936;
          }

          *(v443 + 16) = v446 + 1;
          v851 = v443;
          sub_1D7070F64(v842, v443 + v426 + v446 * v427, type metadata accessor for FeedItemSupplementaryAttributes);
          v416 = LODWORD(v907);
          goto LABEL_199;
        }
      }

      else
      {
        v416 = LODWORD(v907);
        if (v442 == v901)
        {
          goto LABEL_185;
        }

        (*v843)(v887, v913);
      }

LABEL_198:
      sub_1D7070E6C(v914, type metadata accessor for FeedItemSupplementaryAttributes);
LABEL_199:
      if (v424 == ++v425)
      {
        v912 = *(v246 + 16);
        if (v912)
        {
          v469 = 0;
          v470 = v246 + v426;
          v471 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if (v469 >= *(v246 + 16))
            {
              goto LABEL_379;
            }

            v472 = v471;
            v473 = v899;
            sub_1D707111C(v470, v899, type metadata accessor for FeedItemSupplementaryAttributes);
            sub_1D707111C(v473, v880, type metadata accessor for FeedItemSupplementaryAttributes);
            v474 = swift_getEnumCaseMultiPayload();
            if (v474 < 2)
            {
              goto LABEL_224;
            }

            if (v474 != 2)
            {
              break;
            }

            v475 = v880[4];
            v476 = v880[6];
            v477 = v880[7];
            v925 = v880[5];
            v926 = v476;
            v927 = v477;
            v478 = v880[1];
            v920 = *v880;
            v479 = v880[2];
            v480 = v880[3];
            v921 = v478;
            v922 = v479;
            v923 = v480;
            v924 = v475;
            v481 = *(v880 + 16);
            sub_1D6729D5C(&v920);
            v482 = *(v481 + 48);
            v483 = *(v481 + 56);

            v484 = v901;
            if ((v483 & 1) == 0)
            {
              *v878 = v482;
              v484 = v875;
            }

            v485 = v878;
            v486 = v913;
            (*v898)(v878, v484, v913);
            v487 = (*v861)(v485, v486);
            if (v487 != v875)
            {
              if (v487 != v901)
              {
                v471 = v472;
                (*v843)(v878, v913);
                goto LABEL_238;
              }

LABEL_225:
              sub_1D707111C(v899, v879, type metadata accessor for FeedItemSupplementaryAttributes);
              v488 = swift_getEnumCaseMultiPayload();
              if (v488 >= 2)
              {
                if (v488 == 2)
                {
                  v489 = v879[4];
                  v490 = v879[6];
                  v491 = v879[7];
                  v925 = v879[5];
                  v926 = v490;
                  v927 = v491;
                  v492 = v879[1];
                  v920 = *v879;
                  v493 = v879[2];
                  v494 = v879[3];
                  v921 = v492;
                  v922 = v493;
                  v923 = v494;
                  v924 = v489;
                  v495 = *(v879 + 16);
                  sub_1D6729D5C(&v920);
                  v496 = *(*(v495 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

                  v497 = *v891;
                  if (v496)
                  {
                    v498 = v876;
                    v500 = v906;
                    v497(v876, v892, v906);
                    v499 = LODWORD(v907);
                  }

                  else
                  {
                    v498 = v876;
                    v499 = LODWORD(v907);
                    v500 = v906;
                    v497(v876, LODWORD(v907), v906);
                  }
                }

                else
                {
                  v498 = v876;
                  v499 = LODWORD(v907);
                  v500 = v906;
                  (*v891)(v876, LODWORD(v907), v906);
                  sub_1D7070E6C(v879, type metadata accessor for InternalErrorViewLayout.Context);
                }

                v501 = (*v877)(v498, v500);
                v471 = v472;
                if (v501 != v499 && v501 != v892)
                {
                  (*v856)(v876, v906);
                }
              }

              else
              {
                (*v891)(v876, v892, v906);
LABEL_227:
                v471 = v472;
              }

LABEL_238:
              sub_1D7070F64(v899, v886, type metadata accessor for FeedItemSupplementaryAttributes);
              v502 = swift_isUniquelyReferenced_nonNull_native();
              *&v936 = v471;
              if ((v502 & 1) == 0)
              {
                sub_1D69980C4(0, *(v471 + 16) + 1, 1);
                v471 = v936;
              }

              v504 = *(v471 + 16);
              v503 = *(v471 + 24);
              if (v504 >= v503 >> 1)
              {
                sub_1D69980C4(v503 > 1, v504 + 1, 1);
                v471 = v936;
              }

              *(v471 + 16) = v504 + 1;
              sub_1D7070F64(v886, v471 + v426 + v504 * v427, type metadata accessor for FeedItemSupplementaryAttributes);
              goto LABEL_243;
            }

            (*v848)(v485, v486);
            if ((*v485 & 0x8000000000000000) == 0)
            {
              goto LABEL_227;
            }

            sub_1D7070E6C(v899, type metadata accessor for FeedItemSupplementaryAttributes);
            v471 = v472;
LABEL_243:
            ++v469;
            v470 += v427;
            if (v912 == v469)
            {
              v416 = LODWORD(v907);
              goto LABEL_247;
            }
          }

          sub_1D7070E6C(v880, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_224:
          (*v898)(v878, v901, v913);
          goto LABEL_225;
        }

        v471 = MEMORY[0x1E69E7CC0];
LABEL_247:
        v505 = v851;
LABEL_248:
        v847 = v471;

        v963.origin.x = v860;
        v963.origin.y = v202;
        v963.size.width = v204;
        v963.size.height = v206;
        CGRectGetWidth(v963);
        v506 = sub_1D72632FC();
        v511 = MEMORY[0x1DA6FA970](v506, 0.0, v507, v508, v509, v510);
        v513 = v512;
        v515 = v514;
        v517 = v516;
        v518 = objc_allocWithZone(v837);
        v911 = v511;
        v910 = v513;
        v909 = v515;
        v908 = v517;
        v519 = [v518 initWithFrame_];
        v520 = *(v889 + v841);
        v912 = v519;
        [v520 addSubview_];
        v521 = *(v505 + 16);
        if (v521)
        {
          v883 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
          v522 = *(v885 + 80);
          v851 = v505;
          v523 = v505 + ((v522 + 32) & ~v522);
          v524 = *(v885 + 72);
          v881 = v524;
          while (1)
          {
            v544 = v904;
            sub_1D707111C(v523, v904, type metadata accessor for FeedItemSupplementaryAttributes);
            sub_1D707111C(v544, v905, type metadata accessor for FeedItemSupplementaryAttributes);
            v545 = swift_getEnumCaseMultiPayload();
            if (v545 > 1)
            {
              if (v545 != 2)
              {
                sub_1D5BAA13C();
                v593 = v905 + *(v592 + 48);
                v594 = *v593;
                v595 = *(v593 + 8);
                v596 = *(v593 + 16);
                v597 = *(v593 + 24);
                v598 = *(v593 + 112);
                v940 = *(v593 + 96);
                v941 = v598;
                v599 = *(v593 + 176);
                v944 = *(v593 + 160);
                v945 = v599;
                v600 = *(v593 + 144);
                v942 = *(v593 + 128);
                v943 = v600;
                v601 = *(v593 + 240);
                v948 = *(v593 + 224);
                v949 = v601;
                v602 = *(v593 + 208);
                v946 = *(v593 + 192);
                v947 = v602;
                v603 = *(v593 + 80);
                v938 = *(v593 + 64);
                v939 = v603;
                v604 = *(v593 + 48);
                v936 = *(v593 + 32);
                v937 = v604;
                sub_1D7070F64(v905, v872, type metadata accessor for InternalErrorViewLayout.Context);
                v973.origin.x = v594;
                v973.origin.y = v595;
                v973.size.width = v596;
                v973.size.height = v597;
                CGRectGetMinY(v973);
                v974.origin.x = v911;
                v974.origin.y = v910;
                v974.size.width = v909;
                *&v974.size.height = v908;
                CGRectGetMinY(v974);
                sub_1D72632EC();
                v606 = v605;
                v608 = v607;
                v610 = v609;
                v612 = v611;
                v613 = objc_allocWithZone(type metadata accessor for InternalErrorView());
                v614 = v610;
                v615 = v612;
                v204 = v868;
                v202 = v869;
                v616 = [v613 initWithFrame_];
                v617 = v521;
                v618 = v912;
                v619 = v883;
                [*(v912 + v883) addSubview_];
                v620 = *(v618 + v619);
                [v620 contentSize];
                v622 = v621;
                [v616 frame];
                v623 = CGRectGetMaxX(v975);
                if (v622 <= v623)
                {
                  v622 = v623;
                }

                v624 = *(v618 + v619);
                v521 = v617;
                [v624 contentSize];
                v626 = v625;
                [v616 frame];
                v627 = CGRectGetMaxY(v976);
                if (v626 > v627)
                {
                  v628 = v626;
                }

                else
                {
                  v628 = v627;
                }

                v206 = v874;
                [v620 setContentSize_];
                *&v920 = v594;
                *(&v920 + 1) = v595;
                *&v921 = v596;
                *(&v921 + 1) = v597;
                v932 = v946;
                v933 = v947;
                v934 = v948;
                v935 = v949;
                v928 = v942;
                v929 = v943;
                v930 = v944;
                v931 = v945;
                v924 = v938;
                v925 = v939;
                v926 = v940;
                v927 = v941;
                v922 = v936;
                v923 = v937;
                v629 = v872;
                sub_1D69CBF1C(v872, &v920, v616);
                [*&v616[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton] setHidden_];
                v524 = v881;
                sub_1D7070E6C(v629, type metadata accessor for InternalErrorViewLayout.Context);
                sub_1D7070E6C(v904, type metadata accessor for FeedItemSupplementaryAttributes);

                v416 = LODWORD(v907);
                goto LABEL_257;
              }

              v565 = v905[1];
              v920 = *v905;
              v566 = v905[2];
              v567 = v905[3];
              v921 = v565;
              v922 = v566;
              v568 = v905[7];
              v926 = v905[6];
              v927 = v568;
              v569 = v905[5];
              v924 = v905[4];
              v925 = v569;
              v923 = v567;
              v862 = *(v905 + 16);
              v863 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
              v570 = *(v862 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
              swift_beginAccess();
              CGRectGetMinY(*(v570 + 16));
              v970.origin.x = v911;
              v970.origin.y = v910;
              v970.size.width = v909;
              *&v970.size.height = v908;
              CGRectGetMinY(v970);
              sub_1D72632EC();
              v575 = [objc_allocWithZone(type metadata accessor for FormatLayoutView()) initWithFrame_];
              v576 = v912;
              v577 = v883;
              [*(v912 + v883) addSubview_];
              v578 = *(v576 + v577);
              [v578 contentSize];
              v580 = v579;
              [v575 frame];
              v581 = CGRectGetMaxX(v971);
              if (v580 <= v581)
              {
                v580 = v581;
              }

              v582 = *(v576 + v577);
              v583 = v862;
              [v582 contentSize];
              v585 = v584;
              [v575 frame];
              v586 = CGRectGetMaxY(v972);
              if (v585 > v586)
              {
                v587 = v585;
              }

              else
              {
                v587 = v586;
              }

              [v578 setContentSize_];
              v588 = *(v866 + 1);
              v589 = swift_getObjectType();
              v940 = v924;
              v941 = v925;
              v942 = v926;
              v943 = v927;
              v936 = v920;
              v937 = v921;
              v938 = v922;
              v939 = v923;
              v590 = *(v583 + v863);
              v918 = 0;
              v917 = 0;
              v919 = 0;
              (*(v588 + 88))(&v936, v590, v575, v893, &v917, v894, v895, v896, &type metadata for FormatSupplementary, &type metadata for FormatLayoutContext, &protocol witness table for FormatLayoutContext, v589, v588);
              v591 = *(v583 + 32);
              if (v591)
              {
                LOBYTE(v591) = *(v591 + 48);
              }

              [v575 setClipsToBounds_];
              sub_1D725A7CC();
              v550 = v936;
              v416 = LODWORD(v907);
              v524 = v881;
              if (!v936)
              {
                sub_1D6729D5C(&v920);

                goto LABEL_256;
              }

              [v936 setHidden_];
              sub_1D6729D5C(&v920);
            }

            else
            {
              if (!v545)
              {
                CGRectGetMinY(*v905);
                v964.origin.x = v911;
                v964.origin.y = v910;
                v964.size.width = v909;
                *&v964.size.height = v908;
                CGRectGetMinY(v964);
                sub_1D72632EC();
                v529 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
                v530 = v912;
                v531 = v883;
                [*(v912 + v883) addSubview_];
                v532 = *(v530 + v531);
                [v532 contentSize];
                v534 = v533;
                [v529 frame];
                v535 = CGRectGetMaxX(v965);
                if (v534 <= v535)
                {
                  v534 = v535;
                }

                [*(v530 + v531) contentSize];
                v537 = v536;
                [v529 frame];
                v538 = CGRectGetMaxY(v966);
                if (v537 > v538)
                {
                  v539 = v537;
                }

                else
                {
                  v539 = v538;
                }

                [v532 setContentSize_];
                v540 = v865[3];
                v541 = v865[4];
                __swift_project_boxed_opaque_existential_1(v865, v540);
                v542 = *(v541 + 8);
                v543 = v541;
                v416 = LODWORD(v907);
                v542(&v920, v540, v543);

                sub_1D725CFEC();
                goto LABEL_256;
              }

              CGRectGetMinY(*v905);
              v967.origin.x = v911;
              v967.origin.y = v910;
              v967.size.width = v909;
              *&v967.size.height = v908;
              CGRectGetMinY(v967);
              sub_1D72632EC();
              v550 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
              v551 = v521;
              v552 = v416;
              v553 = v912;
              v554 = v883;
              [*(v912 + v883) addSubview_];
              v555 = *(v553 + v554);
              [v555 contentSize];
              v557 = v556;
              [v550 frame];
              v558 = CGRectGetMaxX(v968);
              if (v557 <= v558)
              {
                v557 = v558;
              }

              v559 = *(v553 + v554);
              v416 = v552;
              v521 = v551;
              v524 = v881;
              [v559 contentSize];
              v561 = v560;
              [v550 frame];
              v562 = CGRectGetMaxY(v969);
              if (v561 > v562)
              {
                v563 = v561;
              }

              else
              {
                v563 = v562;
              }

              [v555 setContentSize_];
              v564 = [objc_opt_self() clearColor];
              sub_1D725CFEC();
            }

LABEL_256:
            sub_1D7070E6C(v904, type metadata accessor for FeedItemSupplementaryAttributes);
LABEL_257:
            v523 += v524;
            if (!--v521)
            {
              v630 = v890;
              goto LABEL_286;
            }
          }
        }

        v630 = v890;
LABEL_286:

        v631 = *(v864 + 40);
        v246 = v631 + 64;
        v632 = 1 << *(v631 + 32);
        if (v632 < 64)
        {
          v633 = ~(-1 << v632);
        }

        else
        {
          v633 = -1;
        }

        v634 = v633 & *(v631 + 64);
        v635 = (v632 + 63) >> 6;

        v636 = 0;
        if (v634)
        {
          while (1)
          {
            v637 = v636;
LABEL_295:
            v638 = __clz(__rbit64(v634));
            v634 &= v634 - 1;
            *&v920 = *(*(v631 + 56) + ((v637 << 9) | (8 * v638)));

            sub_1D7063E0C(&v920, v912, v893, v894, v895, v896, v630, v911, v910, v909, *&v908);

            if (!v634)
            {
              goto LABEL_291;
            }
          }
        }

        while (1)
        {
LABEL_291:
          v637 = v636 + 1;
          if (__OFADD__(v636, 1))
          {
            goto LABEL_377;
          }

          if (v637 >= v635)
          {
            break;
          }

          v634 = *(v246 + 8 * v637);
          ++v636;
          if (v634)
          {
            v636 = v637;
            goto LABEL_295;
          }
        }

        v639 = *(v847 + 16);
        if (v639)
        {
          v881 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
          v640 = v847 + ((*(v885 + 80) + 32) & ~*(v885 + 80));
          v883 = *(v885 + 72);
          do
          {
            v660 = v902;
            sub_1D707111C(v640, v902, type metadata accessor for FeedItemSupplementaryAttributes);
            sub_1D707111C(v660, v903, type metadata accessor for FeedItemSupplementaryAttributes);
            v661 = swift_getEnumCaseMultiPayload();
            if (v661 > 1)
            {
              if (v661 != 2)
              {
                sub_1D5BAA13C();
                v707 = v903 + *(v706 + 48);
                v708 = *v707;
                v709 = *(v707 + 8);
                v710 = *(v707 + 16);
                v711 = *(v707 + 24);
                v712 = *(v707 + 112);
                v940 = *(v707 + 96);
                v941 = v712;
                v713 = *(v707 + 176);
                v944 = *(v707 + 160);
                v945 = v713;
                v714 = *(v707 + 144);
                v942 = *(v707 + 128);
                v943 = v714;
                v715 = *(v707 + 240);
                v948 = *(v707 + 224);
                v949 = v715;
                v716 = *(v707 + 208);
                v946 = *(v707 + 192);
                v947 = v716;
                v717 = *(v707 + 80);
                v938 = *(v707 + 64);
                v939 = v717;
                v718 = *(v707 + 48);
                v936 = *(v707 + 32);
                v937 = v718;
                sub_1D7070F64(v903, v870, type metadata accessor for InternalErrorViewLayout.Context);
                v986.origin.x = v708;
                v986.origin.y = v709;
                v986.size.width = v710;
                v986.size.height = v711;
                CGRectGetMinY(v986);
                v987.origin.x = v911;
                v987.origin.y = v910;
                v987.size.width = v909;
                *&v987.size.height = v908;
                CGRectGetMinY(v987);
                sub_1D72632EC();
                v720 = v719;
                v722 = v721;
                v724 = v723;
                v726 = v725;
                v727 = objc_allocWithZone(type metadata accessor for InternalErrorView());
                v728 = v724;
                v729 = v726;
                v204 = v868;
                v202 = v869;
                v730 = [v727 initWithFrame_];
                v731 = v912;
                v732 = v881;
                [*&v881[v912] addSubview_];
                v733 = *&v732[v731];
                [v733 contentSize];
                v735 = v734;
                [v730 frame];
                v736 = CGRectGetMaxX(v988);
                if (v735 <= v736)
                {
                  v735 = v736;
                }

                [*&v732[v731] contentSize];
                v738 = v737;
                [v730 frame];
                v739 = CGRectGetMaxY(v989);
                if (v738 > v739)
                {
                  v740 = v738;
                }

                else
                {
                  v740 = v739;
                }

                v206 = v874;
                [v733 setContentSize_];
                *&v920 = v708;
                *(&v920 + 1) = v709;
                *&v921 = v710;
                *(&v921 + 1) = v711;
                v932 = v946;
                v933 = v947;
                v934 = v948;
                v935 = v949;
                v928 = v942;
                v929 = v943;
                v930 = v944;
                v931 = v945;
                v924 = v938;
                v925 = v939;
                v926 = v940;
                v927 = v941;
                v922 = v936;
                v923 = v937;
                v741 = v870;
                sub_1D69CBF1C(v870, &v920, v730);
                [*&v730[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton] setHidden_];
                sub_1D7070E6C(v741, type metadata accessor for InternalErrorViewLayout.Context);
                sub_1D7070E6C(v902, type metadata accessor for FeedItemSupplementaryAttributes);

                v416 = LODWORD(v907);
                goto LABEL_306;
              }

              v863 = v639;
              v680 = v903[1];
              v920 = *v903;
              v681 = v903[2];
              v682 = v903[3];
              v921 = v680;
              v922 = v681;
              v683 = v903[7];
              v926 = v903[6];
              v927 = v683;
              v684 = v903[5];
              v924 = v903[4];
              v925 = v684;
              v923 = v682;
              v685 = *(v903 + 16);
              v862 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
              v686 = *(v685 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
              swift_beginAccess();
              CGRectGetMinY(*(v686 + 16));
              v983.origin.x = v911;
              v983.origin.y = v910;
              v983.size.width = v909;
              *&v983.size.height = v908;
              CGRectGetMinY(v983);
              sub_1D72632EC();
              v691 = [objc_allocWithZone(type metadata accessor for FormatLayoutView()) initWithFrame_];
              v692 = v912;
              v693 = v881;
              [*&v881[v912] addSubview_];
              v694 = *&v693[v692];
              [v694 contentSize];
              v696 = v695;
              [v691 frame];
              v697 = CGRectGetMaxX(v984);
              if (v696 <= v697)
              {
                v696 = v697;
              }

              [*&v693[v692] contentSize];
              v699 = v698;
              [v691 frame];
              v700 = CGRectGetMaxY(v985);
              if (v699 > v700)
              {
                v701 = v699;
              }

              else
              {
                v701 = v700;
              }

              [v694 setContentSize_];
              v702 = *(v866 + 1);
              v703 = swift_getObjectType();
              v940 = v924;
              v941 = v925;
              v942 = v926;
              v943 = v927;
              v936 = v920;
              v937 = v921;
              v938 = v922;
              v939 = v923;
              v704 = *(v862 + v685);
              v918 = 0;
              v917 = 0;
              v919 = 0;
              (*(v702 + 88))(&v936, v704, v691, v893, &v917, v894, v895, v896, &type metadata for FormatSupplementary, &type metadata for FormatLayoutContext, &protocol witness table for FormatLayoutContext, v703, v702);
              v705 = *(v685 + 32);
              if (v705)
              {
                LOBYTE(v705) = *(v705 + 48);
              }

              [v691 setClipsToBounds_];
              sub_1D725A7CC();
              v666 = v936;
              v416 = LODWORD(v907);
              v639 = v863;
              if (!v936)
              {
                sub_1D6729D5C(&v920);

                goto LABEL_305;
              }

              [v936 setHidden_];
              sub_1D6729D5C(&v920);
            }

            else
            {
              if (!v661)
              {
                CGRectGetMinY(*v903);
                v977.origin.x = v911;
                v977.origin.y = v910;
                v977.size.width = v909;
                *&v977.size.height = v908;
                CGRectGetMinY(v977);
                sub_1D72632EC();
                v645 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
                v646 = v912;
                v647 = v881;
                [*&v881[v912] addSubview_];
                v648 = *&v647[v646];
                [v648 contentSize];
                v650 = v649;
                [v645 frame];
                v651 = CGRectGetMaxX(v978);
                if (v650 <= v651)
                {
                  v650 = v651;
                }

                [*&v647[v646] contentSize];
                v653 = v652;
                [v645 frame];
                v654 = CGRectGetMaxY(v979);
                if (v653 > v654)
                {
                  v655 = v653;
                }

                else
                {
                  v655 = v654;
                }

                [v648 setContentSize_];
                v656 = v865[3];
                v657 = v865[4];
                __swift_project_boxed_opaque_existential_1(v865, v656);
                v658 = *(v657 + 8);
                v659 = v657;
                v416 = LODWORD(v907);
                v658(&v920, v656, v659);

                sub_1D725CFEC();
                goto LABEL_305;
              }

              CGRectGetMinY(*v903);
              v980.origin.x = v911;
              v980.origin.y = v910;
              v980.size.width = v909;
              *&v980.size.height = v908;
              CGRectGetMinY(v980);
              sub_1D72632EC();
              v666 = [objc_allocWithZone(sub_1D725CFFC()) initWithFrame_];
              v667 = v416;
              v668 = v912;
              v669 = v881;
              [*&v881[v912] addSubview_];
              v670 = *&v669[v668];
              [v670 contentSize];
              v672 = v671;
              [v666 frame];
              v673 = CGRectGetMaxX(v981);
              if (v672 <= v673)
              {
                v672 = v673;
              }

              v674 = *&v669[v668];
              v416 = v667;
              [v674 contentSize];
              v676 = v675;
              [v666 frame];
              v677 = CGRectGetMaxY(v982);
              if (v676 > v677)
              {
                v678 = v676;
              }

              else
              {
                v678 = v677;
              }

              [v670 setContentSize_];
              v679 = [objc_opt_self() clearColor];
              sub_1D725CFEC();
            }

LABEL_305:
            sub_1D7070E6C(v902, type metadata accessor for FeedItemSupplementaryAttributes);
LABEL_306:
            v640 += v883;
            --v639;
          }

          while (v639);
        }

        v742 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
        v743 = v912;
        [*(v912 + OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView) setClipsToBounds_];
        v744 = *&v743[v742];
        [v744 contentSize];
        v746 = v745 + v838;
        v990.origin.x = v911;
        v990.origin.y = v910;
        v990.size.width = v909;
        *&v990.size.height = v908;
        [v744 setContentSize_];
        sub_1D7070E6C(v864, type metadata accessor for DebugGroupDirectionalLayoutAttributes);

        v413 = v858;
        v417 = v873;
        v200 = v860;
LABEL_165:
        v415 = v859 + 1;
        v414 = v853;
        sub_1D7070E6C(v853, sub_1D6A5DD4C);
        if (v415 == v417)
        {
          goto LABEL_334;
        }

        goto LABEL_166;
      }
    }

    sub_1D7070E6C(v897, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_184:
    (*v898)(v887, v901, v913);
LABEL_185:
    sub_1D707111C(v914, v888, type metadata accessor for FeedItemSupplementaryAttributes);
    v447 = swift_getEnumCaseMultiPayload();
    if (v447 >= 2)
    {
      if (v447 == 2)
      {
        v448 = v888[4];
        v449 = v888[6];
        v450 = v888[7];
        v925 = v888[5];
        v926 = v449;
        v927 = v450;
        v451 = v888[1];
        v920 = *v888;
        v452 = v888[2];
        v453 = v888[3];
        v921 = v451;
        v922 = v452;
        v923 = v453;
        v924 = v448;
        v454 = *(v888 + 16);
        sub_1D6729D5C(&v920);
        v455 = *(*(v454 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

        if (v455)
        {
          v458 = v884;
          v456 = v884;
          v457 = v892;
        }

        else
        {
          v458 = v884;
          v456 = v884;
          v457 = v416;
        }

        v459 = v906;
        (*v891)(v456, v457, v906);
      }

      else
      {
        v458 = v884;
        v459 = v906;
        (*v891)(v884, v416, v906);
        sub_1D7070E6C(v888, type metadata accessor for InternalErrorViewLayout.Context);
      }

      v460 = (*v877)(v458, v459);
      if (v460 != v416 && v460 != v892)
      {
        (*v856)(v884, v906);
      }
    }

    else
    {
      (*v891)(v884, v892, v906);
    }

    goto LABEL_198;
  }

  (*(v420 + 8))(v422, v419);
LABEL_202:
  v461 = *(v418 + 40);
  v246 = v461 + 64;
  v462 = 1 << *(v461 + 32);
  if (v462 < 64)
  {
    v463 = ~(-1 << v462);
  }

  else
  {
    v463 = -1;
  }

  v464 = v463 & *(v461 + 64);
  v465 = (v462 + 63) >> 6;

  v466 = 0;
  while (v464)
  {
    v467 = v466;
LABEL_211:
    v468 = __clz(__rbit64(v464));
    v464 &= v464 - 1;
    *&v920 = *(*(v461 + 56) + ((v467 << 9) | (8 * v468)));

    sub_1D7065110(&v920, v889, v893, v894, v895, v896, v890);
  }

  while (1)
  {
    v467 = v466 + 1;
    if (__OFADD__(v466, 1))
    {
      break;
    }

    if (v467 >= v465)
    {

      sub_1D7070E6C(v864, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
      v413 = v858;
      v417 = v873;
      goto LABEL_165;
    }

    v464 = *(v246 + 8 * v467);
    ++v466;
    if (v464)
    {
      v466 = v467;
      goto LABEL_211;
    }
  }

  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:

  __break(1u);
  return result;
}