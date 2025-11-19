id sub_100001DD0(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = *a1;
  v9 = *(v7 + *a1);
  if (v9)
  {
    v10 = *(v7 + *a1);
  }

  else
  {
    v11 = sub_1000051E4(a2, a3, a4, a5, a6, a7);
    v12 = *(v7 + v8);
    *(v7 + v8) = v11;
    v10 = v11;

    v9 = 0;
  }

  v13 = v9;
  return v10;
}

id sub_100001E30()
{
  v1 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.152941176 green:0.152941176 blue:0.152941176 alpha:1.0];
    [v4 setBackgroundColor:v5];

    v6 = [v4 layer];
    v7 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_blendMode);
    v8 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_blendMode + 8);

    v9 = sub_10001A190();

    [v6 setCompositingFilter:v9];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_100001F84(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_cellSpacing] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemRows] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemCells] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowBackgroundViews] = &_swiftEmptyArrayStorage;
  v10 = &v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_lastLayoutSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowSideMargin] = 0x402A000000000000;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_footerBackgroundViewHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView] = 0;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView] = 0;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView] = 0;
  v11 = &v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_blendMode];
  *v11 = sub_10001A1C0();
  v11[1] = v12;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items] = &_swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked] = 0;
  v60.receiver = v4;
  v60.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  v14 = sub_100001DD0(&OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView, 0, 0.0, 0.0, 0.0, 0.0, 0.0);
  [v13 addSubview:v14];

  v15 = sub_100001E30();
  [v13 addSubview:v15];

  v16 = [v13 layer];
  [v16 setAllowsGroupBlending:0];

  v17 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView;
  v18 = [*&v13[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView] layer];
  [v18 setAllowsGroupBlending:0];

  v19 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView;
  v20 = [*&v13[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView] heightAnchor];
  [v13 frame];
  v23 = 31.0;
  if (v21 < 200.0 && v21 <= 539.0 && v22 <= 200.0)
  {
    [v13 frame];
    v23 = 23.0;
    if (v24 <= 136.0)
    {
      v23 = 20.0;
    }
  }

  v25 = [v20 constraintEqualToConstant:v23];

  v59 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_footerBackgroundViewHeightConstraint;
  v26 = *&v13[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_footerBackgroundViewHeightConstraint];
  *&v13[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_footerBackgroundViewHeightConstraint] = v25;

  sub_100004E8C(&qword_10002A550, &qword_10001C020);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10001B950;
  v28 = [*&v13[v17] topAnchor];
  v29 = [v13 topAnchor];

  v30 = [v28 constraintEqualToAnchor:v29];
  *(v27 + 32) = v30;
  v31 = [*&v13[v17] leadingAnchor];
  v32 = [v13 leadingAnchor];

  v33 = [v31 constraintEqualToAnchor:v32];
  *(v27 + 40) = v33;
  v34 = [*&v13[v17] trailingAnchor];
  v35 = [v13 trailingAnchor];

  v36 = [v34 constraintEqualToAnchor:v35];
  *(v27 + 48) = v36;
  v37 = [*&v13[v19] topAnchor];
  v38 = [*&v13[v17] bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v27 + 56) = v39;
  v40 = [*&v13[v19] leadingAnchor];
  v41 = [v13 leadingAnchor];

  v42 = [v40 constraintEqualToAnchor:v41];
  *(v27 + 64) = v42;
  v43 = [*&v13[v19] trailingAnchor];
  v44 = [v13 trailingAnchor];

  v45 = [v43 constraintEqualToAnchor:v44];
  *(v27 + 72) = v45;
  v46 = [*&v13[v19] bottomAnchor];
  v47 = [v13 bottomAnchor];

  v48 = [v46 constraintEqualToAnchor:v47];
  *(v27 + 80) = v48;
  v49 = *&v13[v59];
  if (v49)
  {
    v50 = objc_opt_self();
    *(v27 + 88) = v49;
    sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
    v51 = v49;
    isa = sub_10001A240().super.isa;

    [v50 activateConstraints:isa];

    v53 = sub_100001DD0(&OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView, 1, 8.0, 8.0, 8.0, 8.0, 8.0);
    [v13 addSubview:v53];

    v54 = *&v13[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView];
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    v58 = DOCConstraintsToResizeWithSuperview();
    if (!v58)
    {
      sub_10001A250();
      v58 = sub_10001A240().super.isa;
    }

    [v50 activateConstraints:v58];
  }

  else
  {
    __break(1u);
  }
}

id sub_1000026E8()
{
  ObjectType = swift_getObjectType();
  [v0 frame];
  Width = CGRectGetWidth(v33);
  [v0 frame];
  Height = CGRectGetHeight(v34);
  [v0 frame];
  v4 = CGRectGetHeight(v35);
  [v0 frame];
  v5 = CGRectGetWidth(v36);
  v6 = &v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_lastLayoutSize];
  v7 = *&v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_lastLayoutSize];
  v8 = *&v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_lastLayoutSize + 8];
  v9 = v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_lastLayoutSize + 16];
  [v0 frame];
  if ((v9 & 1) != 0 || (v7 == v10 ? (v12 = v8 == v11) : (v12 = 0), !v12))
  {
    if ((v6[2] & 1) != 0 || ((v13 = floor(v5), *v6 == floor(v4)) ? (v14 = v6[1] == v13) : (v14 = 0), !v14))
    {
      v15 = floor(Width);
      v16 = floor(Height);
      [v0 frame];
      if (v17 <= 539.0)
      {
        if (v18 <= 200.0)
        {
          v21 = v17;
          sub_100002C14(v0);
          sub_100002DBC(v0);
          v19 = 2;
          if (v21 >= 200.0)
          {
            sub_100003C2C(2, v0);
LABEL_19:
            *v6 = v15;
            v6[1] = v16;
            *(v6 + 16) = 0;
            goto LABEL_20;
          }

          v20 = 2;
        }

        else
        {
          sub_100002C14(v0);
          sub_100002DBC(v0);
          v19 = 3;
          v20 = 3;
        }
      }

      else
      {
        sub_100002C14(v0);
        sub_100002DBC(v0);
        v19 = 3;
        v20 = 5;
      }

      sub_100003044(v19, v20, v0);
      goto LABEL_19;
    }
  }

LABEL_20:
  [v0 frame];
  v24 = 31.0;
  if (v22 < 200.0 && v22 <= 539.0 && v23 <= 200.0)
  {
    [v0 frame];
    v24 = 23.0;
    if (v25 <= 136.0)
    {
      v24 = 20.0;
    }
  }

  v26 = *&v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_footerBackgroundViewHeightConstraint];
  if (v26)
  {
    [v26 setConstant:v24];
  }

  v27 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemCells;
  swift_beginAccess();
  v28 = *&v0[v27];
  v29 = *&v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items];
  v30 = v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked];

  sub_10000547C(v28, v29, v30);

  v32.receiver = v0;
  v32.super_class = ObjectType;
  return objc_msgSendSuper2(&v32, "layoutSubviews");
}

uint64_t sub_1000029E0()
{
  v0 = sub_10001A160();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemCells;
    v7 = result;
    swift_beginAccess();
    v8 = *&v7[v6];

    v9 = v8;
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      while (1)
      {
        v11 = v9;
        result = sub_1000057B0(0, &qword_10002AE60, OS_dispatch_queue_ptr);
        if (v10 < 1)
        {
          break;
        }

        v12 = 0;
        v13 = v11;
        v22 = v11 & 0xC000000000000001;
        HIDWORD(v21) = enum case for DispatchPredicate.onQueue(_:);
        v14 = (v1 + 13);
        v15 = (v1 + 1);
        v16 = v13;
        while (1)
        {
          v17 = v22 ? sub_10001A550() : *(v13 + 8 * v12 + 32);
          v1 = v17;
          *v4 = sub_10001A360();
          (*v14)(v4, HIDWORD(v21), v0);
          v18 = sub_10001A170();

          (*v15)(v4, v0);
          if ((v18 & 1) == 0)
          {
            break;
          }

          ++v12;
          v13 = v16;
          if (v10 == v12)
          {
          }
        }

        __break(1u);
LABEL_14:
        v19 = v9;
        v20 = sub_10001A5F0();
        v9 = v19;
        v10 = v20;
        if (!v20)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100002C14(uint64_t a1)
{
  v2 = sub_100001DD0(&OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView, 0, 0.0, 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 arrangedSubviews];

  sub_1000057B0(0, &qword_10002A558, UIView_ptr);
  v4 = sub_10001A250();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001A5F0())
  {
    v6 = 0;
    v7 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_10001A550();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [*(a1 + v7) removeArrangedSubview:v8];
      [v9 removeFromSuperview];

      ++v6;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v11 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowBackgroundViews;
  swift_beginAccess();
  v12 = *(a1 + v11);
  *(a1 + v11) = &_swiftEmptyArrayStorage;
}

uint64_t sub_100002DBC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemRows;
  swift_beginAccess();
  v20 = a1;
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10001A5F0())
  {

    if (i)
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = sub_10001A550();
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        [v6 removeFromSuperview];

        ++v5;
        if (v8 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_12:

    v9 = *(v20 + v2);
    *(v20 + v2) = &_swiftEmptyArrayStorage;

    v10 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemCells;
    swift_beginAccess();
    v11 = *(v20 + v10);
    *(v20 + v10) = &_swiftEmptyArrayStorage;

    v12 = sub_100001DD0(&OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView, 1, 8.0, 8.0, 8.0, 8.0, 8.0);
    v13 = [v12 arrangedSubviews];

    sub_1000057B0(0, &qword_10002A558, UIView_ptr);
    v3 = sub_10001A250();

    if (!(v3 >> 62))
    {
      v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
      }

      goto LABEL_14;
    }

    v14 = sub_10001A5F0();
    if (!v14)
    {
      break;
    }

LABEL_14:
    v15 = 0;
    v2 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v16 = sub_10001A550();
      }

      else
      {
        if (v15 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v16 = *(v3 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      [*(v20 + v2) removeArrangedSubview:v16];
      [v17 removeFromSuperview];

      ++v15;
      if (v18 == v14)
      {
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

void sub_100003044(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 1 || a2 < 1)
  {
    return;
  }

  v4 = sub_100001E30();
  [v4 setHidden:0];

  sub_1000037B8(a1);
  v5 = 0;
  v6 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowBackgroundViews;
  p_weak_ivar_lyt = &ImageCache.weak_ivar_lyt;
  v43 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemCells;
  v44 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemRows;
  while (1)
  {
    v8 = a2;
    do
    {
      [a3 p:v43 weak:? ivar:?lyt[157]];
      if (v9 >= 200.0)
      {
        v11 = 302.0;
      }

      else
      {
        v11 = 190.0;
      }

      if (v10 > 200.0)
      {
        v11 = 302.0;
      }

      if (v9 <= 539.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 630.0;
      }

      [a3 p:v11 weak:? ivar:?lyt[157]];
      v13 = CGRectGetWidth(v47) / v12;
      v14 = objc_allocWithZone(type metadata accessor for RecentItemCell());
      *&sub_100013D48(0, 0, 1, 0, 0.0, 0.0, 0.0, 0.0, v13)[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_delegate + 8] = &off_100024E90;
      swift_unknownObjectWeakAssign();
      sub_10001A230();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10001A270();
        p_weak_ivar_lyt = (&ImageCache + 56);
      }

      sub_10001A280();
      --v8;
    }

    while (v8);
    if (_swiftEmptyArrayStorage >> 62)
    {
      sub_1000057B0(0, &qword_10002A558, UIView_ptr);

      sub_10001A5E0();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_10001A660();
      sub_1000057B0(0, &qword_10002A558, UIView_ptr);
    }

    v16 = objc_allocWithZone(UIStackView);
    sub_1000057B0(0, &qword_10002A558, UIView_ptr);
    isa = sub_10001A240().super.isa;

    v18 = [v16 initWithArrangedSubviews:isa];

    [v18 setDistribution:1];
    [v18 setSpacing:8.0];
    [v18 setAxis:0];
    v19 = v18;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [a3 addSubview:v19];
    sub_100004E8C(&qword_10002A550, &qword_10001C020);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10001B960;
    v21 = [v19 leadingAnchor];
    v22 = [a3 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:13.0];

    *(v20 + 32) = v23;
    v24 = [v19 trailingAnchor];

    v25 = [a3 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-13.0];

    *(v20 + 40) = v26;
    sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
    v27 = sub_10001A240().super.isa;

    [a3 addConstraints:v27];

    if (_swiftEmptyArrayStorage >> 62)
    {
      break;
    }

    v28 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_20;
    }

LABEL_32:

    ++v5;
    v40 = sub_10001A240().super.isa;

    [a3 addConstraints:v40];

    swift_beginAccess();
    v41 = v19;
    sub_10001A230();
    p_weak_ivar_lyt = (&ImageCache + 56);
    if (*((*(a3 + v44) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + v44) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v42 = *((*(a3 + v44) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10001A270();
    }

    sub_10001A280();
    swift_endAccess();
    swift_beginAccess();
    sub_100003B3C(_swiftEmptyArrayStorage);
    swift_endAccess();

    if (v5 == a1)
    {
      return;
    }
  }

  v28 = sub_10001A5F0();
  if (!v28)
  {
    goto LABEL_32;
  }

LABEL_20:
  sub_10001A5A0();
  if (v28 < 0)
  {
    goto LABEL_39;
  }

  v29 = 0;
  while (2)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v30 = sub_10001A550();
    }

    else
    {
      v30 = _swiftEmptyArrayStorage[v29 + 4];
    }

    v31 = v30;
    v32 = sub_1000117E4();
    v33 = [v32 bottomAnchor];

    swift_beginAccess();
    v34 = *(a3 + v6);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = sub_10001A550();
LABEL_28:
      v36 = v35;
      ++v29;
      swift_endAccess();
      v37 = [v36 bottomAnchor];

      v38 = [v33 constraintEqualToAnchor:v37];
      sub_10001A580();
      v39 = _swiftEmptyArrayStorage[2];
      sub_10001A5B0();
      sub_10001A5C0();
      sub_10001A590();
      if (v28 == v29)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  if (v5 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v34 + 8 * v5 + 32);
    goto LABEL_28;
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_1000037B8(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a1;
    if (a1)
    {
      v3 = v1;
      v4 = 0;
      v5 = 0;
      v6 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowBackgroundViews;
      v26 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView;
      do
      {
        v7 = sub_100004080(v5);
        v8 = sub_100001DD0(&OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView, 0, 0.0, 0.0, 0.0, 0.0, 0.0);
        [v8 addArrangedSubview:v7];

        swift_beginAccess();
        v9 = v7;
        sub_10001A230();
        if (*((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10001A270();
        }

        sub_10001A280();
        swift_endAccess();
        if (v2 == 1)
        {
          v10 = sub_100001E30();
          v11 = [v10 backgroundColor];

          [v9 setBackgroundColor:v11];
          v12 = [v9 layer];
          v13 = [*(v3 + v26) layer];
          v14 = [v13 compositingFilter];

          if (v14)
          {
            sub_10001A4D0();
            swift_unknownObjectRelease();
            sub_1000057F8(v28, v28[3]);
            v14 = sub_10001A640();
            sub_10000583C(v28);
          }

          [v12 setCompositingFilter:v14];

          swift_unknownObjectRelease();
        }

        if (v4)
        {
          sub_100004E8C(&qword_10002A550, &qword_10001C020);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_10001B970;
          v16 = [v9 heightAnchor];
          v17 = [v4 heightAnchor];
          if (v5 == 1)
          {
            v18 = 1.13;
          }

          else
          {
            v18 = 1.0;
          }

          v27 = v4;
          v19 = v6;
          v20 = v2;
          v21 = objc_opt_self();
          v22 = v9;
          v23 = [v16 constraintEqualToAnchor:v17 multiplier:v18];

          *(v15 + 32) = v23;
          v9 = v22;
          sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
          isa = sub_10001A240().super.isa;

          v25 = v21;
          v2 = v20;
          v6 = v19;
          [v25 activateConstraints:isa];
        }

        ++v5;
        v4 = v9;
      }

      while (v2 != v5);
    }
  }
}

uint64_t sub_100003B3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_10001A5F0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_10001A5F0();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100004F3C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100005064(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100003C2C(uint64_t a1, void *a2)
{
  v5 = sub_100001E30();
  [v5 setHidden:1];

  if (a1 < 0)
  {
    goto LABEL_37;
  }

  if (a1)
  {
    v34 = xmmword_10001B960;
    do
    {
      sub_100004E8C(&qword_10002A550, &qword_10001C020);
      v6 = swift_allocObject();
      *(v6 + 16) = v34;
      [a2 frame];
      if (v7 >= 200.0)
      {
        v9 = 302.0;
      }

      else
      {
        v9 = 190.0;
      }

      if (v8 > 200.0)
      {
        v9 = 302.0;
      }

      if (v7 <= 539.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 630.0;
      }

      [a2 frame];
      v11 = CGRectGetWidth(v35) / v10;
      v12 = type metadata accessor for RecentItemCell();
      v13 = objc_allocWithZone(v12);
      v14 = sub_100013D48(0, 0, 1, 1, 0.0, 0.0, 0.0, 0.0, v11);
      *&v14[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_delegate + 8] = &off_100024E90;
      swift_unknownObjectWeakAssign();
      *(v6 + 32) = v14;
      [a2 frame];
      if (v15 >= 200.0)
      {
        v17 = 302.0;
      }

      else
      {
        v17 = 190.0;
      }

      if (v16 > 200.0)
      {
        v17 = 302.0;
      }

      if (v15 <= 539.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 630.0;
      }

      [a2 frame];
      v19 = CGRectGetWidth(v36) / v18;
      v20 = objc_allocWithZone(v12);
      v21 = sub_100013D48(0, 0, 1, 1, 0.0, 0.0, 0.0, 0.0, v19);
      *&v21[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_delegate + 8] = &off_100024E90;
      swift_unknownObjectWeakAssign();
      *(v6 + 40) = v21;
      v22 = objc_allocWithZone(UIStackView);
      sub_1000057B0(0, &qword_10002A558, UIView_ptr);

      isa = sub_10001A240().super.isa;

      v24 = [v22 initWithArrangedSubviews:isa];

      [v24 setDistribution:1];
      [v24 setSpacing:8.0];
      [v24 setAxis:0];
      v25 = v24;
      sub_10001A230();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10001A270();
      }

      sub_10001A280();
      v2 = _swiftEmptyArrayStorage;
      swift_beginAccess();
      sub_100003B3C(v6);
      swift_endAccess();

      --a1;
    }

    while (a1);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001A5F0())
  {
    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v29 = sub_10001A550();
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v29 = *(v2 + 8 * j + 32);
      }

      v30 = v29;
      v31 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v32 = sub_100001DD0(&OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView, 1, 8.0, 8.0, 8.0, 8.0, 8.0);
      [v32 addArrangedSubview:v30];

      if (v31 == i)
      {
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }
}

id sub_100004080(uint64_t a1)
{
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (a1 == 2)
  {
    v6 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.0980392157 green:0.0980392157 blue:0.0980392157 alpha:1.0];
    [v3 setBackgroundColor:v6];

    v5 = [v3 layer];
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v4 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.0470588235 green:0.0470588235 blue:0.0470588235 alpha:1.0];
    [v3 setBackgroundColor:v4];

    v5 = [v3 layer];
LABEL_6:
    v7 = v5;
    v8 = v1 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_blendMode;
    v9 = *(v1 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_blendMode);
    v10 = *(v8 + 8);

    v11 = sub_10001A190();

    [v7 setCompositingFilter:v11];

    goto LABEL_7;
  }

  v11 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v11];
LABEL_7:

  return v3;
}

id sub_100004254()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100004380(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004390(uint64_t a1, int a2)
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

uint64_t sub_1000043B0(uint64_t result, int a2, int a3)
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

void sub_1000043EC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8);
  if (v1 <= 1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind);
    swift_getObjectType();
    sub_100004E04(v2, v1);
    v9 = sub_10001A480();
    sub_100004E18(v2, v1);
    if (v9)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = [objc_opt_self() defaultManager];
        v6 = swift_allocObject();
        *(v6 + 16) = v9;
        *(v6 + 24) = v4;
        aBlock[4] = sub_100004E6C;
        aBlock[5] = v6;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000045B4;
        aBlock[3] = &unk_100024EC8;
        v7 = _Block_copy(aBlock);
        v8 = v9;
        swift_unknownObjectRetain();

        [v5 fetchURLForItem:v8 completionHandler:v7];
        _Block_release(v7);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1000045B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100004E8C(&unk_10002A540, &unk_10001B9F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_100019D20();
    v12 = sub_100019D30();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_100019D30();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_100004ED4(v9);
}

uint64_t sub_100004718(uint64_t a1, uint64_t a2)
{
  result = sub_100019DB0();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_10000476C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100019DC0();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1000047C4@<X0>(void *a1@<X8>)
{
  result = sub_100019DD0();
  *a1 = v3;
  return result;
}

uint64_t sub_1000047F8(uint64_t a1, id *a2)
{
  result = sub_10001A1A0();
  *a2 = 0;
  return result;
}

uint64_t sub_100004870(uint64_t a1, id *a2)
{
  v3 = sub_10001A1B0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000048F0@<X0>(void *a1@<X8>)
{
  sub_10001A1C0();
  v2 = sub_10001A190();

  *a1 = v2;
  return result;
}

uint64_t sub_100004934()
{
  v1 = *v0;
  sub_10001A1C0();
  v2 = sub_10001A210();

  return v2;
}

uint64_t sub_100004970()
{
  v1 = *v0;
  sub_10001A1C0();
  sub_10001A1E0();
}

Swift::Int sub_1000049C4()
{
  v1 = *v0;
  sub_10001A1C0();
  sub_10001A6B0();
  sub_10001A1E0();
  v2 = sub_10001A6E0();

  return v2;
}

uint64_t sub_100004A38@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10001A1C0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100004A64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10001A1C0();
  v6 = v5;
  if (v4 == sub_10001A1C0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10001A650();
  }

  return v9 & 1;
}

uint64_t sub_100004AF0()
{
  sub_1000059DC(&qword_10002A608, type metadata accessor for TraitKey);
  sub_1000059DC(&unk_10002A610, type metadata accessor for TraitKey);

  return sub_10001A620();
}

void *sub_100004BAC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_100004BBC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100004BC8()
{
  v2 = *v0;
  sub_1000059DC(&qword_10002A5F0, type metadata accessor for Weight);
  sub_1000059DC(&qword_10002A5F8, type metadata accessor for Weight);
  sub_100005C1C();
  return sub_10001A620();
}

uint64_t sub_100004C90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10001A190();

  *a2 = v5;
  return result;
}

uint64_t sub_100004CD8()
{
  sub_1000059DC(&qword_10002A5E0, type metadata accessor for AttributeName);
  sub_1000059DC(&qword_10002A5E8, type metadata accessor for AttributeName);

  return sub_10001A620();
}

void sub_100004D9C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_10001A6D0(*&v1);
}

uint64_t sub_100004DD8(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

uint64_t sub_100004E04(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_100004E18(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100004E2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004E74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004E8C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004ED4(uint64_t a1)
{
  v2 = sub_100004E8C(&unk_10002A540, &unk_10001B9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004F3C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_10001A5F0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_10001A560();
  *v1 = result;
  return result;
}

void (*sub_100004FDC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10001A550();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10000505C;
  }

  __break(1u);
  return result;
}

uint64_t sub_100005064(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10001A5F0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10001A5F0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100005704();
          for (i = 0; i != v6; ++i)
          {
            sub_100004E8C(&qword_10002A560, &qword_10001BA00);
            v9 = sub_100004FDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for RecentItemCell();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000051E4(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = objc_allocWithZone(UIStackView);
  sub_1000057B0(0, &qword_10002A558, UIView_ptr);
  isa = sub_10001A240().super.isa;
  v14 = [v12 initWithArrangedSubviews:isa];

  v15 = v14;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setAxis:1];
  [v15 setDistribution:a1];
  [v15 setSpacing:a2];
  [v15 setLayoutMarginsRelativeArrangement:1];
  [v15 setInsetsLayoutMarginsFromSafeArea:0];
  [v15 setLayoutMargins:{a3, a4, a5, a6}];

  return v15;
}

void sub_100005334()
{
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_cellSpacing) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemRows) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemCells) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowBackgroundViews) = &_swiftEmptyArrayStorage;
  v1 = v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_lastLayoutSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowSideMargin) = 0x402A000000000000;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_footerBackgroundViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_blendMode);
  *v2 = sub_10001A1C0();
  v2[1] = v3;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked) = 0;
  sub_10001A5D0();
  __break(1u);
}

void sub_10000547C(unint64_t a1, uint64_t a2, char a3)
{
  LOBYTE(v3) = a3;
  v22 = objc_opt_self();
  v5 = [v22 sharedGenerator];
  v21 = [v5 startBatching];

  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001A5F0())
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = (a1 & 0xC000000000000001);
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = v7;
    v23 = (v3 & 1) == 0;
    v8 = 4;
    v25 = a1;
    while (1)
    {
      v14 = v8 - 4;
      if (v27)
      {
        v15 = sub_10001A550();
      }

      else
      {
        if (v14 >= *(v26 + 16))
        {
          goto LABEL_24;
        }

        v15 = *(a1 + 8 * v8);
      }

      v3 = v15;
      v16 = v8 - 3;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = objc_autoreleasePoolPush();
      if (a2 >> 62)
      {
        if (v14 >= sub_10001A5F0())
        {
LABEL_7:
          v9 = 0;
          v10 = 2;
          goto LABEL_8;
        }
      }

      else if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = sub_10001A550();
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v18 = *(a2 + 8 * v8);
      }

      v9 = v18;
      v19 = v18;
      v10 = v23;
LABEL_8:
      v11 = &v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
      v12 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
      *v11 = v9;
      v13 = v11[8];
      v11[8] = v10;
      sub_100004E04(v9, v10);
      sub_1000125C4(v12, v13);
      sub_100004E18(v12, v13);
      sub_100004E18(v9, v10);
      sub_100004E18(v9, v10);
      objc_autoreleasePoolPop(v17);

      ++v8;
      a1 = v25;
      if (v16 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  v28 = [v22 sharedGenerator];
  [v28 endBatching:v21];
}

unint64_t sub_100005704()
{
  result = qword_10002A568;
  if (!qword_10002A568)
  {
    sub_100005768(&qword_10002A560, &qword_10001BA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A568);
  }

  return result;
}

uint64_t sub_100005768(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000057B0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_1000057F8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000583C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_100005900(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000059DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100005C1C()
{
  result = qword_10002A600;
  if (!qword_10002A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A600);
  }

  return result;
}

uint64_t sub_100005CA0()
{
  result = sub_10001A1C0();
  qword_10002A6E0 = result;
  *algn_10002A6E8 = v1;
  return result;
}

uint64_t sub_100005CD0()
{
  result = sub_10001A1C0();
  qword_10002A6F0 = result;
  *algn_10002A6F8 = v1;
  return result;
}

uint64_t sub_100005D00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_100004E8C(&qword_10002A968, &qword_10001C078);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v7 = sub_100019FD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004E8C(&unk_10002A970, qword_10001C080);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  v19 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___itemCollectionConfiguration;
  swift_beginAccess();
  sub_10000FB8C(v2 + v19, v18, &unk_10002A970, qword_10001C080);
  v20 = sub_100019FF0();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) != 1)
  {
    return (*(v21 + 32))(v26, v18, v20);
  }

  sub_10000FBF4(v18, &unk_10002A970, qword_10001C080);
  sub_100019F20();
  v25 = sub_100019F00();
  sub_100006078();
  (*(v8 + 104))(v11, enum case for DOCItemCollectionContext.recentsPopover(_:), v7);
  v22 = sub_100019EF0();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  sub_10001A1C0();
  v23 = v26;
  sub_100019FE0();
  (*(v21 + 16))(v16, v23, v20);
  (*(v21 + 56))(v16, 0, 1, v20);
  swift_beginAccess();
  sub_10000FC54(v16, v2 + v19);
  return swift_endAccess();
}

id sub_100006078()
{
  v1 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration;
  v2 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration);
  }

  else
  {
    v4 = sub_1000060D8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000060D8()
{
  v0 = sub_10001A190();
  v1 = [objc_opt_self() configurationForOpeningDocumentsOfApplicationWithBundleIdentifier:v0];

  [v1 setInProcess:1];
  [v1 setShowCollectionControls:0];
  sub_100004E8C(&qword_10002A8D0, &qword_10001C028);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10001BF00;
  *(v2 + 32) = sub_10001A1C0();
  *(v2 + 40) = v3;
  isa = sub_10001A240().super.isa;

  [v1 setForbiddenActionIdentifiers:isa];

  [v1 setNeverCreateBookmarkForOpenInPlace:1];
  [v1 setSkipDownload:1];
  [v1 setSuppressBlackCallout:1];
  [v1 setBrowserViewContext:2];
  [v1 setThumbnailFetchingTimeOut:0.9];
  [v1 setMaximumNumberOfItemsToFetch:10];
  v5 = sub_10001A190();
  [v1 setSceneIdentifier:v5];

  [v1 setPresentingMakesCollectionFirstResponder:0];
  [v1 setSupportsRemovableFileProviders:1];
  return v1;
}

void sub_1000062CC(void *a1)
{
  v3 = sub_10001A100();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001A150();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection];
  *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection] = a1;
  v19 = a1;

  if ([v1 doc_hasAppearedOrIsAppearing])
  {
    v18[1] = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemCollectionObservationQueue];
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    aBlock[4] = sub_10000FCC4;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019CCC;
    aBlock[3] = &unk_100025250;
    v15 = _Block_copy(aBlock);
    v16 = v1;
    sub_10001A110();
    v20 = _swiftEmptyArrayStorage;
    sub_10001024C(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags);
    v18[0] = v8;
    sub_100004E8C(&unk_10002AE50, &qword_10001C030);
    sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
    sub_10001A4E0();
    sub_10001A370();
    _Block_release(v15);

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v18[0]);
  }

  else
  {
    v17 = v19;
  }
}

char *sub_1000065FC()
{
  v1 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView;
  v2 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for RecentItemsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_delegate + 8] = &off_100024FE8;
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000066C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10001A0C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001A0F0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);

  v40.receiver = v1;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, "viewDidLoad");
  result = [v1 view];
  if (!result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = result;
  sub_100006BF4();
  sub_10001A0B0();
  sub_10001A0E0();
  (*(v4 + 8))(v7, v3);
  sub_10001A440();

  setiopolicy_np(3, 0, 1);
  v12 = [objc_opt_self() sharedManager];
  v13 = sub_100006078();
  v14 = [v13 hostIdentifier];

  if (!v14)
  {
    sub_10001A1C0();
    v14 = sub_10001A190();
  }

  [v12 setHostIdentifier:v14];

  v15 = [objc_opt_self() defaultPermission];
  v16 = [*&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration] hostIdentifier];
  if (!v16)
  {
    sub_10001A1C0();
    v16 = sub_10001A190();
  }

  [v15 setHostIdentifier:v16];

  result = [v1 view];
  if (!result)
  {
    goto LABEL_22;
  }

  v17 = result;
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor:v18];

  result = [v1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = sub_1000065FC();
  [v19 addSubview:v20];

  [objc_opt_self() setMaximumCachedThumbnailCount:10];
  v21 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView;
  v22 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  isa = DOCConstraintsToResizeWithSuperview();
  if (!isa)
  {
    sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
    sub_10001A250();
    isa = sub_10001A240().super.isa;
  }

  [objc_opt_self() activateConstraints:isa];

  v27 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_lockedStateListener];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = *(v27 + 16);
  v30 = *(v27 + 24);
  *(v27 + 16) = sub_100010318;
  *(v27 + 24) = v28;

  sub_100010320(v29);

  v31 = MKBGetDeviceLockState();
  if (v31)
  {
    v32 = v31 == 3;
  }

  else
  {
    v32 = 1;
  }

  v33 = !v32;
  v34 = [v1 viewIfLoaded];
  if (v34)
  {
    v35 = v34;
    [v34 setUserInteractionEnabled:v33 ^ 1u];
  }

  v36 = *&v1[v21];
  v37 = v36[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked];
  v36[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked] = v33;
  if (v33 != v37)
  {
    [v36 setNeedsLayout];
  }

  v38 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
  v39 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier + 8];

  sub_100006DB4(v38, v39);

  return sub_10001A320();
}

double sub_100006BF4()
{
  v1 = (v0 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___widgetCornerRadius);
  if ((*(v0 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___widgetCornerRadius + 8) & 1) == 0)
  {
    return *v1;
  }

  result = sub_100007168();
  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_100006C38(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong viewIfLoaded];
    if (v4)
    {
      v5 = v4;
      [v4 setUserInteractionEnabled:(a1 & 1) == 0];
    }

    v6 = sub_1000065FC();
    v7 = v6;
    v8 = v6[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked];
    v6[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked] = a1 & 1;
    if (v8 != (a1 & 1))
    {
      [v6 setNeedsLayout];
    }
  }
}

void sub_100006D04(char a1)
{
  v3 = [v1 viewIfLoaded];
  if (v3)
  {
    v4 = v3;
    [v3 setUserInteractionEnabled:(a1 & 1) == 0];
  }

  v5 = sub_1000065FC();
  v6 = v5[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked];
  v5[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked] = a1 & 1;
  if (v6 != (a1 & 1))
  {
    v7 = v5;
    [v5 setNeedsLayout];
    v5 = v7;
  }
}

uint64_t sub_100006DB4(uint64_t a1, uint64_t a2)
{
  v5 = sub_10001A090();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  if (*(v2 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_loadingCachedItems))
  {
    sub_10001A070();
    v13 = sub_10001A080();
    v14 = sub_10001A2F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10001705C(0xD00000000000001DLL, 0x800000010001D3D0, &v27);
      _os_log_impl(&_mh_execute_header, v13, v14, "Widget Cache: %s already loading items. Ignoring request.", v15, 0xCu);
      sub_10000583C(v16);
    }

    return (*(v6 + 8))(v10, v5);
  }

  else
  {
    v18 = sub_1000065FC();
    v19 = *&v18[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items];

    if (v19 >> 62)
    {
      v20 = sub_10001A5F0();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20)
    {
      sub_10001A070();
      v21 = sub_10001A080();
      v22 = sub_10001A2F0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v27 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_10001705C(0xD00000000000001DLL, 0x800000010001D3D0, &v27);
        _os_log_impl(&_mh_execute_header, v21, v22, "Widget Cache: %s items already loaded. Ignoring request.", v23, 0xCu);
        sub_10000583C(v24);
      }

      return (*(v6 + 8))(v12, v5);
    }

    else
    {
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_10000A0B4(a1, a2, sub_10000FA90, v25);
    }
  }
}

double sub_100007168()
{
  v0 = [objc_allocWithZone(SBSWidgetMetricsService) init];
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_10001A1C0();
  }

  v3 = sub_10001A190();

  v4 = [v0 previewMetricsSpecificationForBundleIdentifier:v3];

  if (v4)
  {
    v5 = [v4 metricsForFamily:2];
    if (v5)
    {
      v6 = v5;
      [v5 cornerRadius];
      v8 = v7;
    }

    else
    {
      v8 = 26.5;
    }
  }

  else
  {
    v8 = 26.5;
    v4 = v0;
  }

  return v8;
}

void sub_100007310(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10001A100();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001A150();
  v17 = *(v8 - 8);
  v18 = v8;
  v9 = *(v17 + 64);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewWillAppear:", a1 & 1);
  v12 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
  v13 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier + 8];

  sub_100006DB4(v12, v13);

  v14 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemCollectionObservationQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_100010370;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = &unk_1000253B8;
  v16 = _Block_copy(aBlock);
  v1;
  sub_10001A110();
  v20 = _swiftEmptyArrayStorage;
  sub_10001024C(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004E8C(&unk_10002AE50, &qword_10001C030);
  sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
  sub_10001A4E0();
  sub_10001A370();
  _Block_release(v16);
  (*(v19 + 8))(v7, v4);
  (*(v17 + 8))(v11, v18);

  sub_100007628();
}

void sub_100007628()
{
  v1 = sub_10001A090();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() protectedAppsEnabled])
  {
    sub_10001A070();
    v6 = v0;
    v7 = sub_10001A080();
    v8 = sub_10001A2F0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_10001705C(0xD000000000000023, 0x800000010001D590, &v14);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_10001705C(0xD000000000000023, 0x800000010001D590, &v14);
      *(v9 + 22) = 2112;
      *(v9 + 24) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s [PROTECTED APPS] %s %@", v9, 0x20u);
      sub_10000FBF4(v10, &unk_10002A8C0, &qword_10001C018);

      swift_arrayDestroy();
    }

    (*(v2 + 8))(v5, v1);
    v12 = [objc_opt_self() defaultCenter];
    [v12 addObserver:v6 selector:"updateQueryFiltersForNewApps" name:DOCAppProtectionStatusDidChangeNotification object:0];
  }
}

void sub_100007914(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10001A100();
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001A150();
  v8 = *(v15 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v15);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewWillDisappear:", a1 & 1);
  v14 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemCollectionObservationQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  aBlock[4] = sub_1000102E8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = &unk_100025368;
  v13 = _Block_copy(aBlock);
  v1;
  sub_10001A110();
  v17 = _swiftEmptyArrayStorage;
  sub_10001024C(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004E8C(&unk_10002AE50, &qword_10001C030);
  sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
  sub_10001A4E0();
  sub_10001A370();
  _Block_release(v13);
  (*(v16 + 8))(v7, v4);
  (*(v8 + 8))(v11, v15);

  sub_100007C08();
}

void sub_100007C08()
{
  v1 = sub_10001A090();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() protectedAppsEnabled])
  {
    sub_10001A070();
    v6 = v0;
    v7 = sub_10001A080();
    v8 = sub_10001A2F0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_10001705C(0xD000000000000022, 0x800000010001D560, &v14);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_10001705C(0xD000000000000022, 0x800000010001D560, &v14);
      *(v9 + 22) = 2112;
      *(v9 + 24) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s [PROTECTED APPS] %s %@", v9, 0x20u);
      sub_10000FBF4(v10, &unk_10002A8C0, &qword_10001C018);

      swift_arrayDestroy();
    }

    (*(v2 + 8))(v5, v1);
    v12 = [objc_opt_self() defaultCenter];
    [v12 addObserver:v6 selector:"updateQueryFiltersForNewApps" name:DOCAppProtectionStatusDidChangeNotification object:0];
  }
}

id sub_100007EF4(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = a3;
  v33 = a2;
  v28[1] = a1;
  ObjectType = swift_getObjectType();
  v32 = sub_10001A350();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v32);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001A340();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = sub_10001A150();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_lockedStateListener;
  type metadata accessor for DeviceUnlockStateListener();
  swift_allocObject();
  *&v3[v12] = sub_10001039C();
  v31 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemCollectionObservationQueue;
  v13 = sub_1000057B0(0, &qword_10002AE60, OS_dispatch_queue_ptr);
  v29 = "update(forBundleIdentifier:)";
  v30 = v13;
  sub_10001A140();
  v37 = _swiftEmptyArrayStorage;
  v28[4] = sub_10001024C(&unk_10002A980, &type metadata accessor for OS_dispatch_queue.Attributes);
  v28[3] = sub_100004E8C(&unk_10002AE70, &qword_10001C0E0);
  v28[5] = sub_100010294(&unk_10002A990, &unk_10002AE70, &qword_10001C0E0);
  sub_10001A4E0();
  v14 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v15 = v4 + 104;
  v16 = *(v4 + 104);
  v28[2] = v15;
  v17 = v7;
  v18 = v7;
  v19 = v32;
  v16(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  *&v3[v31] = sub_10001A380();
  v31 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemPersistenceQueue;
  v29 = "sWidget.workingQueue";
  sub_10001A130();
  v37 = _swiftEmptyArrayStorage;
  sub_10001A4E0();
  v16(v17, v14, v19);
  *&v3[v31] = sub_10001A380();
  v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_loadingCachedItems] = 0;
  v20 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___itemCollectionConfiguration;
  v21 = sub_100019FF0();
  (*(*(v21 - 8) + 56))(&v3[v20], 1, 1, v21);
  *&v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration] = 0;
  *&v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_observedCollectionItem] = 0;
  v22 = &v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
  *v22 = 0;
  v22[1] = 0;
  *&v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection] = 0;
  *&v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView] = 0;
  v23 = &v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___widgetCornerRadius];
  *v23 = 0;
  v23[8] = 1;
  if (v33)
  {
    v24 = sub_10001A190();
  }

  else
  {
    v24 = 0;
  }

  v36.receiver = v3;
  v36.super_class = ObjectType;
  v25 = v35;
  v26 = objc_msgSendSuper2(&v36, "initWithNibName:bundle:", v24, v35);

  return v26;
}

id sub_1000083D8(void *a1)
{
  v2 = v1;
  v29 = a1;
  ObjectType = swift_getObjectType();
  v30 = sub_10001A350();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v30);
  v27 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001A340();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = sub_10001A150();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_lockedStateListener;
  type metadata accessor for DeviceUnlockStateListener();
  swift_allocObject();
  *&v1[v10] = sub_10001039C();
  v26 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemCollectionObservationQueue;
  v11 = sub_1000057B0(0, &qword_10002AE60, OS_dispatch_queue_ptr);
  v24 = "update(forBundleIdentifier:)";
  v25 = v11;
  sub_10001A140();
  v32 = _swiftEmptyArrayStorage;
  v23[3] = sub_10001024C(&unk_10002A980, &type metadata accessor for OS_dispatch_queue.Attributes);
  v23[2] = sub_100004E8C(&unk_10002AE70, &qword_10001C0E0);
  sub_100010294(&unk_10002A990, &unk_10002AE70, &qword_10001C0E0);
  sub_10001A4E0();
  v12 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v13 = v3 + 104;
  v14 = *(v3 + 104);
  v23[1] = v13;
  v15 = v27;
  v14(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  *&v1[v26] = sub_10001A380();
  v26 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemPersistenceQueue;
  v24 = "sWidget.workingQueue";
  sub_10001A130();
  v32 = _swiftEmptyArrayStorage;
  sub_10001A4E0();
  v14(v15, v12, v30);
  *&v1[v26] = sub_10001A380();
  v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_loadingCachedItems] = 0;
  v16 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___itemCollectionConfiguration;
  v17 = sub_100019FF0();
  (*(*(v17 - 8) + 56))(&v1[v16], 1, 1, v17);
  *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration] = 0;
  *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_observedCollectionItem] = 0;
  v18 = &v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection] = 0;
  *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView] = 0;
  v19 = &v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___widgetCornerRadius];
  *v19 = 0;
  v19[8] = 1;
  v20 = v29;
  v31.receiver = v2;
  v31.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v31, "initWithCoder:", v29);

  if (v21)
  {
  }

  return v21;
}

uint64_t type metadata accessor for RecentsHomeScreenWidgetViewController()
{
  result = qword_10002A780;
  if (!qword_10002A780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000898C()
{
  sub_100008A68();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100008A68()
{
  if (!qword_10002A790)
  {
    sub_100019FF0();
    v0 = sub_10001A4C0();
    if (!v1)
    {
      atomic_store(v0, &qword_10002A790);
    }
  }
}

uint64_t sub_100008AC0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10001A100();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10001A150();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemPersistenceQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_10000F770;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = &unk_100025098;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_10001A110();
  v20 = _swiftEmptyArrayStorage;
  sub_10001024C(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004E8C(&unk_10002AE50, &qword_10001C030);
  sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
  sub_10001A4E0();
  sub_10001A370();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_100008D90(unint64_t a1, uint64_t a2)
{
  v6 = sub_10001A090();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001A160();
  isa = v11[-1].isa;
  v13 = *(isa + 8);
  __chkstk_darwin(v11);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemPersistenceQueue);
  *v15 = v16;
  (*(isa + 13))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = sub_10001A170();
  v19 = *(isa + 1);
  v18 = isa + 8;
  v19(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = objc_opt_self();
  sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);
  v21 = sub_10001A240().super.isa;
  v32 = 0;
  v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v32];

  v23 = v32;
  if (!v22)
  {
    v25 = v23;
    sub_100019D10();

    swift_willThrow();
    sub_10001A070();

    swift_errorRetain();
    v11 = sub_10001A080();
    v18 = sub_10001A300();

    if (!os_log_type_enabled(v11, v18))
    {

      goto LABEL_9;
    }

    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v32 = v3;
    *v2 = 134218242;
    if (!(a1 >> 62))
    {
      v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
      *(v2 + 4) = v26;

      *(v2 + 12) = 2080;
      swift_getErrorValue();
      v27 = sub_10001A690();
      v29 = sub_10001705C(v27, v28, &v32);

      *(v2 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v11, v18, "Widget Cache: Failed to encode %ld items error: %s", v2, 0x16u);
      sub_10000583C(v3);

LABEL_9:
      (*(v7 + 8))(v10, v6);
      return 0;
    }

LABEL_12:
    v26 = sub_10001A5F0();
    goto LABEL_7;
  }

  v24 = sub_100019D50();

  return v24;
}

uint64_t sub_100009180(char *a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_10001A090();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v73 - v14;
  v80 = sub_100019D90();
  v15 = *(v80 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v80);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v18;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = (a2 & 0xFFFFFFFFFFFFFF8);
    v4 = a2 >> 62;
    if (!(a2 >> 62))
    {
      v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 >= a3)
      {
        v20 = a3;
      }

      else
      {
        v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a3)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      if (v19 >= v21)
      {
        goto LABEL_10;
      }

      goto LABEL_63;
    }
  }

  if (a2 < 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = v18;
  }

  v71 = sub_10001A5F0();
  result = sub_10001A5F0();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v71 >= a3)
    {
      v72 = a3;
    }

    else
    {
      v72 = v71;
    }

    if (v71 < 0)
    {
      v72 = a3;
    }

    if (a3)
    {
      v21 = v72;
    }

    else
    {
      v21 = 0;
    }

    if (sub_10001A5F0() >= v21)
    {
LABEL_10:
      if ((a2 & 0xC000000000000001) != 0 && v21)
      {
        sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);

        v22 = 0;
        do
        {
          v23 = v22 + 1;
          sub_10001A540(v22);
          v22 = v23;
        }

        while (v21 != v23);
      }

      else
      {
      }

      v82 = v15;
      v78 = v4;
      if (v4)
      {

        a3 = sub_10001A600();
        v3 = v25;
        v21 = v26;
        if (v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v3 = 0;
        a3 = a2 & 0xFFFFFFFFFFFFFF8;
        v24 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
        v21 = (2 * v21) | 1;
        if (v21)
        {
LABEL_21:
          v4 = v9;
          v9 = v8;
          v83 = v24;
          sub_10001A670();
          swift_unknownObjectRetain_n();
          v29 = swift_dynamicCastClass();
          if (!v29)
          {
            swift_unknownObjectRelease();
            v29 = _swiftEmptyArrayStorage;
          }

          v30 = v29[2];

          if (!__OFSUB__(v21 >> 1, v3))
          {
            if (v30 == ((v21 >> 1) - v3))
            {
              v28 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              v8 = v9;
              v9 = v4;
              if (v28)
              {
                goto LABEL_28;
              }

              v28 = _swiftEmptyArrayStorage;
LABEL_27:
              swift_unknownObjectRelease();
LABEL_28:
              v83 = sub_100008D90(v28, a1);
              v32 = v31;

              sub_1000057B0(0, &qword_10002A8F8, NSUserDefaults_ptr);
              v33 = sub_10001A310();
              if (v33)
              {
                v34 = v33;
                v35 = *&a1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier + 8];
                if (v35)
                {
                  v36 = *&a1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
                  v37 = *&a1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier + 8];

                  if (v32 >> 60 == 15)
                  {
                    isa = 0;
                  }

                  else
                  {
                    v52 = v83;
                    sub_10000F8D8(v83, v32);
                    isa = sub_100019D40().super.isa;
                    sub_10000F870(v52, v32);
                  }

                  v77 = v32;
                  if (qword_10002A3C0 != -1)
                  {
                    swift_once();
                  }

                  v84 = xmmword_10002A6E0;

                  v86._countAndFlagsBits = 95;
                  v86._object = 0xE100000000000000;
                  sub_10001A1F0(v86);

                  v87._countAndFlagsBits = v36;
                  v87._object = v35;
                  sub_10001A1F0(v87);

                  v53 = sub_10001A190();

                  [v34 setObject:isa forKey:v53];
                  swift_unknownObjectRelease();

                  v54 = v79;
                  sub_100019D80();
                  v55.super.isa = sub_100019D70().super.isa;
                  v56 = *(v82 + 8);
                  v82 += 8;
                  v75 = v56;
                  v56(v54, v80);
                  if (qword_10002A3C8 != -1)
                  {
                    swift_once();
                  }

                  v84 = xmmword_10002A6F0;

                  v88._countAndFlagsBits = 95;
                  v88._object = 0xE100000000000000;
                  sub_10001A1F0(v88);

                  v76 = v36;
                  v89._countAndFlagsBits = v36;
                  v89._object = v35;
                  sub_10001A1F0(v89);

                  v57 = sub_10001A190();

                  [v34 setObject:v55.super.isa forKey:v57];

                  v58 = v81;
                  sub_10001A070();

                  v59 = sub_10001A080();
                  v60 = sub_10001A2F0();

                  if (os_log_type_enabled(v59, v60))
                  {
                    v61 = swift_slowAlloc();
                    *&v84 = swift_slowAlloc();
                    *v61 = 136315906;
                    *(v61 + 4) = sub_10001705C(0xD00000000000001ALL, 0x800000010001D390, &v84);
                    *(v61 + 12) = 2048;
                    v74 = v8;
                    if (v78)
                    {
                      v62 = sub_10001A5F0();
                    }

                    else
                    {
                      v62 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    *(v61 + 14) = v62;

                    *(v61 + 22) = 2080;
                    v64 = sub_10001705C(v76, v35, &v84);

                    *(v61 + 24) = v64;
                    *(v61 + 32) = 2080;
                    v65 = v79;
                    sub_100019D80();
                    sub_10001024C(&qword_10002A908, &type metadata accessor for Date);
                    v66 = v80;
                    v67 = sub_10001A630();
                    v69 = v68;
                    v75(v65, v66);
                    v70 = sub_10001705C(v67, v69, &v84);

                    *(v61 + 34) = v70;
                    _os_log_impl(&_mh_execute_header, v59, v60, "Widget Cache: %s wrote: %ld items for identifier: %s expiring on %s", v61, 0x2Au);
                    swift_arrayDestroy();

                    sub_10000F870(v83, v77);
                    v50 = *(v9 + 8);
                    v51 = v81;
                    v63 = v74;
                    return v50(v51, v63);
                  }

                  sub_10000F870(v83, v77);

                  v50 = *(v9 + 8);
                  v51 = v58;
LABEL_45:
                  v63 = v8;
                  return v50(v51, v63);
                }
              }

              v39 = v32;
              sub_10001A070();
              v40 = a1;
              v41 = sub_10001A080();
              v42 = sub_10001A2F0();

              if (os_log_type_enabled(v41, v42))
              {
                v43 = swift_slowAlloc();
                v85 = swift_slowAlloc();
                *v43 = 136315394;
                *(v43 + 4) = sub_10001705C(0xD00000000000001ALL, 0x800000010001D390, &v85);
                *(v43 + 12) = 2080;
                v44 = *&v40[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier + 8];
                *&v84 = *&v40[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
                *(&v84 + 1) = v44;

                sub_100004E8C(&qword_10002A900, &qword_10001C038);
                v45 = sub_10001A1D0();
                v47 = v9;
                v48 = sub_10001705C(v45, v46, &v85);

                *(v43 + 14) = v48;
                _os_log_impl(&_mh_execute_header, v41, v42, "Widget Cache: %s could not write items. Identifier: %s or defaults were nil", v43, 0x16u);
                swift_arrayDestroy();

                sub_10000F870(v83, v39);
                return (*(v47 + 8))(v13, v8);
              }

              sub_10000F870(v83, v39);

              v50 = *(v9 + 8);
              v51 = v13;
              goto LABEL_45;
            }

            goto LABEL_65;
          }

LABEL_64:
          __break(1u);
LABEL_65:
          swift_unknownObjectRelease();
          v24 = v83;
          v8 = v9;
          v9 = v4;
        }
      }

      sub_10000F77C(a3, v24, v3, v21);
      v28 = v27;
      goto LABEL_27;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  __break(1u);
  return result;
}

void sub_100009B08(unint64_t a1)
{
  v2 = sub_10001A090();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v46 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - v12;
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v48 = v13;
  v49 = v7;
  sub_10001A070();

  v18 = sub_10001A080();
  v19 = sub_10001A2F0();
  if (os_log_type_enabled(v18, v19))
  {
    v47 = v2;
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = a1 >> 62;
    if (a1 >> 62)
    {
      v22 = sub_10001A5F0();
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v22;

    _os_log_impl(&_mh_execute_header, v18, v19, "Widget Cache: found %ld cached items from disk.", v20, 0xCu);

    v2 = v47;
  }

  else
  {
    v21 = a1 >> 62;
  }

  v23 = *(v3 + 8);
  v23(v15, v2);
  v24 = *&v17[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection];
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    if (([v26 isGathering] & 1) == 0)
    {
      v33 = v48;
      sub_10001A070();
      v34 = sub_10001A080();
      v35 = sub_10001A300();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v50 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_10001705C(0xD00000000000001DLL, 0x800000010001D3D0, &v50);
        _os_log_impl(&_mh_execute_header, v34, v35, "Widget Cache: %s collection has finished gathering. Skipping loading cached items", v36, 0xCu);
        sub_10000583C(v37);
      }

      else
      {
      }

      v25(v33, v2);
      return;
    }

    v23 = v25;
  }

  v27 = v21;
  if (v21)
  {
    v41 = sub_10001A5F0();
    v28 = v49;
    if (v41)
    {
      goto LABEL_12;
    }

LABEL_24:
    sub_10001A070();
    v42 = sub_10001A080();
    v43 = sub_10001A2F0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_10001705C(0xD00000000000001DLL, 0x800000010001D3D0, &v50);
      _os_log_impl(&_mh_execute_header, v42, v43, "Widget Cache: %s items was not empty. Skipping loading cached items", v44, 0xCu);
      sub_10000583C(v45);
    }

    else
    {
    }

    v23(v28, v2);
    return;
  }

  v28 = v49;
  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_12:
  sub_10001A070();

  v29 = sub_10001A080();
  v30 = sub_10001A2F0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    if (v27)
    {
      v32 = sub_10001A5F0();
    }

    else
    {
      v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v31 + 4) = v32;

    _os_log_impl(&_mh_execute_header, v29, v30, "Widget Cache: applied %ld items from the cache", v31, 0xCu);
  }

  else
  {
  }

  v23(v10, v2);
  v38 = v17;
  v39 = sub_1000065FC();
  v40 = *&v39[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items];
  *&v39[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items] = a1;

  [v39 setNeedsLayout];
}

uint64_t sub_10000A0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v8 = sub_10001A090();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001A100();
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001A150();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v4[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_loadingCachedItems] = 1;
    v23 = *&v4[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemPersistenceQueue];
    v35 = v19;
    v24 = v20;
    v25 = swift_allocObject();
    v26 = v36;
    v25[2] = v4;
    v25[3] = v26;
    v25[4] = a4;
    v25[5] = a1;
    v25[6] = a2;
    aBlock[4] = sub_10000FAE0;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019CCC;
    aBlock[3] = &unk_1000251B0;
    v27 = _Block_copy(aBlock);

    v28 = v4;

    sub_10001A110();
    v38 = _swiftEmptyArrayStorage;
    sub_10001024C(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004E8C(&unk_10002AE50, &qword_10001C030);
    sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
    sub_10001A4E0();
    sub_10001A370();
    _Block_release(v27);
    (*(v37 + 8))(v16, v13);
    (*(v24 + 8))(v22, v35);
  }

  else
  {
    v30 = v9;
    sub_10001A070();
    v31 = sub_10001A080();
    v32 = sub_10001A2F0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10001705C(0xD000000000000030, 0x800000010001D3F0, aBlock);
      _os_log_impl(&_mh_execute_header, v31, v32, "Widget Cache: %s passed empty identifier", v33, 0xCu);
      sub_10000583C(v34);
    }

    return (*(v30 + 8))(v12, v8);
  }
}

id *sub_10000A51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(sub_10001A090() - 8) + 64);
  __chkstk_darwin();
  v5 = sub_10001A160();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a3 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemPersistenceQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = sub_10001A170();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    sub_1000057B0(0, &qword_10002A938, NSKeyedUnarchiver_ptr);
    sub_100004E8C(&qword_10002A940, &qword_10001C068);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10001BF10;
    *(v13 + 32) = sub_1000057B0(0, &qword_10002A948, NSArray_ptr);
    *(v13 + 40) = sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);
    sub_10001A330();

    if (v16)
    {
      sub_10000FB28(&v15, v17);
      sub_10000FB28(v17, &v15);
      sub_100004E8C(&qword_10002A950, &qword_10001C070);
      if (swift_dynamicCast())
      {
        return v14;
      }
    }

    else
    {
      sub_10000FBF4(&v15, &qword_10002A930, &qword_10001C060);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000A91C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = (*(*(sub_100004E8C(&qword_10002A928, &qword_10001C058) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v12 = &v49 - v11;
  v13 = sub_100019D90();
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  v15 = (__chkstk_darwin)();
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v49 - v18;
  v56 = swift_allocObject();
  *(v56 + 16) = _swiftEmptyArrayStorage;
  sub_1000057B0(0, &qword_10002A8F8, NSUserDefaults_ptr);
  v19 = sub_10001A310();
  if (v19)
  {
    v20 = v19;
    v50 = a1;
    v51 = a2;
    v52 = a3;
    if (qword_10002A3C0 != -1)
    {
      swift_once();
    }

    v63[0] = xmmword_10002A6E0;

    v64._countAndFlagsBits = 95;
    v64._object = 0xE100000000000000;
    sub_10001A1F0(v64);

    v65._countAndFlagsBits = a4;
    v65._object = a5;
    sub_10001A1F0(v65);

    v53 = *&v63[0];
    v21 = sub_10001A190();
    v22 = [v20 valueForKey:v21];

    if (v22)
    {
      sub_10001A4D0();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63[0] = v61;
    v63[1] = v62;
    v23 = sub_10001A190();
    [v20 setURL:0 forKey:v23];

    if (qword_10002A3C8 != -1)
    {
      swift_once();
    }

    v61 = xmmword_10002A6F0;

    v66._countAndFlagsBits = 95;
    v66._object = 0xE100000000000000;
    sub_10001A1F0(v66);

    v67._countAndFlagsBits = a4;
    v67._object = a5;
    sub_10001A1F0(v67);

    v24 = sub_10001A190();
    v25 = [v20 valueForKey:v24];

    if (v25)
    {
      sub_10001A4D0();
      swift_unknownObjectRelease();
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
    }

    v26 = v55;
    v61 = v59;
    v62 = v60;
    v27 = sub_10001A190();
    [v20 setURL:0 forKey:v27];

    sub_10000FB8C(&v61, &v59, &qword_10002A930, &qword_10001C060);
    if (!*(&v60 + 1))
    {

      sub_10000FBF4(&v61, &qword_10002A930, &qword_10001C060);
      sub_10000FBF4(v63, &qword_10002A930, &qword_10001C060);
      sub_10000FBF4(&v59, &qword_10002A930, &qword_10001C060);
      (*(v26 + 56))(v12, 1, 1, v13);
      goto LABEL_16;
    }

    v28 = swift_dynamicCast();
    (*(v26 + 56))(v12, v28 ^ 1u, 1, v13);
    if ((*(v26 + 48))(v12, 1, v13) == 1)
    {

      sub_10000FBF4(&v61, &qword_10002A930, &qword_10001C060);
      sub_10000FBF4(v63, &qword_10002A930, &qword_10001C060);
LABEL_16:
      v29 = &qword_10002A928;
      v30 = &qword_10001C058;
      v31 = v12;
LABEL_26:
      sub_10000FBF4(v31, v29, v30);
      a3 = v52;
      a2 = v51;
      a1 = v50;
      goto LABEL_27;
    }

    v32 = v54;
    (*(v26 + 32))(v54, v12, v13);
    sub_100019D80();
    sub_100019D60();
    v34 = v33;
    v37 = *(v26 + 8);
    v35 = v26 + 8;
    v36 = v37;
    v37(v17, v13);
    if (v34 / 86400.0 >= 2.0)
    {

      v47 = v32;
    }

    else
    {
      sub_10000FB8C(v63, &v59, &qword_10002A930, &qword_10001C060);
      if (!*(&v60 + 1))
      {

        v36(v54, v13);
        sub_10000FBF4(&v61, &qword_10002A930, &qword_10001C060);
        sub_10000FBF4(v63, &qword_10002A930, &qword_10001C060);
        v31 = &v59;
LABEL_25:
        v29 = &qword_10002A930;
        v30 = &qword_10001C060;
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        v38 = v57;
        v49 = v58;
        v55 = v35;
        v39 = v50;
        v40 = sub_10000A51C(v57, v58, v50);
        v41 = *(v56 + 16);
        *(v56 + 16) = v40;

        isa = sub_100019D40().super.isa;
        v43 = sub_10001A190();
        a1 = v39;

        [v20 setObject:isa forKey:v43];

        v44 = v54;
        v45 = sub_100019D70().super.isa;
        v46 = sub_10001A190();

        [v20 setObject:v45 forKey:v46];
        sub_10000F884(v38, v49);

        v36(v44, v13);
        sub_10000FBF4(&v61, &qword_10002A930, &qword_10001C060);
        sub_10000FBF4(v63, &qword_10002A930, &qword_10001C060);
        a3 = v52;
        a2 = v51;
        goto LABEL_27;
      }

      v47 = v54;
    }

    v36(v47, v13);
    sub_10000FBF4(&v61, &qword_10002A930, &qword_10001C060);
    v31 = v63;
    goto LABEL_25;
  }

LABEL_27:
  sub_10000B144(v56, a1, a2, a3);
}

uint64_t sub_10000B144(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10001A090();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A070();

  v13 = sub_10001A080();
  v14 = sub_10001A2F0();
  if (os_log_type_enabled(v13, v14))
  {
    v24 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_10001705C(0xD000000000000030, 0x800000010001D3F0, &v25);
    *(v15 + 12) = 1024;
    swift_beginAccess();
    v17 = *(a1 + 16);
    if (v17 >> 62)
    {
      if (v17 < 0)
      {
        v22 = *(a1 + 16);
      }

      v18 = sub_10001A5F0();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 14) = v18 != 0;

    _os_log_impl(&_mh_execute_header, v13, v14, "Widget Cache: %s had a saved value: %{BOOL}d", v15, 0x12u);
    sub_10000583C(v16);

    (*(v9 + 8))(v12, v8);
    a3 = v24;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a1;

  v20 = a2;

  sub_100019DE0();
}

void sub_10000B3DC(void (*a1)(char *, char *, uint64_t), uint64_t a2, void *a3, void *a4)
{
  v48 = a4;
  v49 = a1;
  v6 = sub_10001A090();
  v51 = *(v6 - 1);
  v52 = v6;
  v7 = v51[8];
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004E8C(&unk_10002A540, &unk_10001B9F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v46 - v12;
  v50 = sub_100019D30();
  v14 = *(v50 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v50);
  v17 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  v20 = sub_10001A190();
  sub_100019EC0();
  v53 = v20;
  v21 = sub_100019EA0();
  if (!a2)
  {
    v22 = v19;
    sub_10000FB8C(v49, v13, &unk_10002A540, &unk_10001B9F0);
    v23 = v50;
    if ((*(v14 + 48))(v13, 1, v50) != 1)
    {
      v51 = v21;
      v49 = *(v14 + 32);
      v47 = v22;
      v49(v22, v13, v23);
      v52 = [objc_opt_self() defaultPermission];
      (*(v14 + 16))(v17, v22, v23);
      v34 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v35 = (v15 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
      v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      v49((v38 + v34), v17, v23);
      *(v38 + v35) = a3;
      v39 = v48;
      *(v38 + v36) = v48;
      v40 = v51;
      *(v38 + v37) = v51;
      aBlock[4] = sub_10000F4FC;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019CCC;
      aBlock[3] = &unk_100025020;
      v41 = _Block_copy(aBlock);
      v42 = a3;
      v43 = v39;
      v44 = v40;

      v45 = v52;
      [v52 adoptPersonaFromNode:v42 andPerformBlock:v41];
      _Block_release(v41);

      (*(v14 + 8))(v47, v23);
      return;
    }

    sub_10000FBF4(v13, &unk_10002A540, &unk_10001B9F0);
  }

  sub_10001A070();
  v24 = a3;
  swift_errorRetain();
  v25 = sub_10001A080();
  v26 = sub_10001A300();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v21;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v28 = 136315650;
    *(v28 + 4) = sub_10001705C(0xD00000000000001BLL, 0x800000010001D300, aBlock);
    *(v28 + 12) = 2112;
    *(v28 + 14) = v24;
    *v29 = v24;
    *(v28 + 22) = 2112;
    v31 = v24;
    if (a2)
    {
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      v33 = v32;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    *(v28 + 24) = v32;
    v29[1] = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s Failed to fetch url for item: %@ error: %@", v28, 0x20u);
    sub_100004E8C(&unk_10002A8C0, &qword_10001C018);
    swift_arrayDestroy();

    sub_10000583C(v30);

    (v51[1])(v9, v52);
    v21 = v27;
  }

  else
  {

    (v51[1])(v9, v52);
  }

  sub_100019EB0();
}

uint64_t sub_10000B9AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = a1;
  v22 = a4;
  v7 = sub_100019D30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v11, v10, v7);
  *(v15 + v12) = a2;
  *(v15 + v13) = a3;
  v16 = v22;
  *(v15 + v14) = v22;
  v17 = a2;
  v18 = a3;
  v19 = v16;
  sub_100019EE0();
}

uint64_t sub_10000BB4C(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v30 = a2;
  v31 = a1;
  v6 = sub_100019FB0();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100019FA0();
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v33);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100019F90();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100019F60();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100019FC0();
  v20 = *(v32 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v32);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v31 & 1) == 0)
  {
    sub_100019ED0();
  }

  (*(v16 + 104))(v19, enum case for DOCAnalyticsActionEvent.Action.openIn(_:), v15);
  sub_100006078();
  sub_100004E8C(&qword_10002A550, &qword_10001C020);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10001B970;
  *(v24 + 32) = a3;
  v25 = a3;
  sub_100019F80();
  v26 = [objc_opt_self() mainBundle];
  v27 = [v26 bundleIdentifier];

  if (v27)
  {
    sub_10001A1C0();
  }

  (*(v9 + 104))(v12, enum case for DOCAnalyticsActionEvent.Source.recents(_:), v33);
  (*(v35 + 104))(v34, enum case for DOCAnalyticsActionEvent.ViewMode.unknown(_:), v36);
  sub_100019F70();
  sub_100019E90();
  v28 = sub_100019E80();
  sub_100019E70();

  sub_100019EB0();
  return (*(v20 + 8))(v23, v32);
}

void sub_10000BF68(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A090();
  v95 = *(v6 - 8);
  v7 = *(v95 + 64);
  v8 = __chkstk_darwin(v6);
  v90 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v88 = &v87 - v11;
  v12 = __chkstk_darwin(v10);
  v94 = &v87 - v13;
  v14 = __chkstk_darwin(v12);
  v91 = &v87 - v15;
  __chkstk_darwin(v14);
  v17 = &v87 - v16;
  sub_10001A070();

  v18 = sub_10001A080();
  v19 = sub_10001A2F0();

  v20 = os_log_type_enabled(v18, v19);
  v92 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v87 = a1;
    v22 = v21;
    v97 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_10001705C(0xD000000000000029, 0x800000010001D430, &v97);
    *(v22 + 12) = 2080;
    v96[0] = a2;
    v96[1] = a3;

    sub_100004E8C(&qword_10002A900, &qword_10001C038);
    v23 = sub_10001A1D0();
    v25 = v6;
    v26 = sub_10001705C(v23, v24, &v97);

    *(v22 + 14) = v26;
    v6 = v25;
    v27 = v95;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: %s", v22, 0x16u);
    swift_arrayDestroy();

    a1 = v87;

    v28 = v27;
  }

  else
  {

    v28 = v95;
  }

  v29 = *(v28 + 8);
  v29(v17, v6);
  v30 = v94;
  if (a3)
  {
    v31 = sub_10001A1C0();
    v33 = v32;
    v34 = sub_10001A1C0();
    v89 = a3;
    if (v31 == v34 && v33 == v35)
    {
      goto LABEL_7;
    }

    v40 = sub_10001A650();

    if (v40)
    {
      goto LABEL_12;
    }

    v53 = sub_10001A1C0();
    v55 = v54;
    if (v53 == sub_10001A1C0() && v55 == v56)
    {
LABEL_7:
    }

    else
    {
      v57 = sub_10001A650();

      if ((v57 & 1) == 0)
      {
        v58 = sub_10001A1C0();
        v60 = v59;
        if (v58 == sub_10001A1C0() && v60 == v61)
        {
        }

        else
        {
          v62 = sub_10001A650();

          if ((v62 & 1) == 0)
          {
            v76 = v88;
            sub_10001A070();
            v77 = a1;
            v78 = sub_10001A080();
            v79 = sub_10001A300();

            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              v96[0] = swift_slowAlloc();
              *v80 = 136315394;
              *(v80 + 4) = sub_10001705C(0xD000000000000029, 0x800000010001D430, v96);
              *(v80 + 12) = 2080;
              v81 = sub_10001A1C0();
              v83 = sub_10001705C(v81, v82, v96);

              *(v80 + 14) = v83;
              _os_log_impl(&_mh_execute_header, v78, v79, "%s attempting to configure with unknown type: %s. Falling back to Recents.", v80, 0x16u);
              swift_arrayDestroy();
            }

            v29(v76, v6);
            v84 = sub_10001A1C0();
            v86 = sub_10000C964(v84, v85, v93);

            v52 = v86;
            goto LABEL_16;
          }
        }

        sub_10001A070();
        v63 = a1;
        v64 = sub_10001A080();
        v65 = sub_10001A2F0();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v96[0] = swift_slowAlloc();
          *v66 = 136315394;
          *(v66 + 4) = sub_10001705C(0xD000000000000029, 0x800000010001D430, v96);
          *(v66 + 12) = 2080;
          v67 = sub_10001A1C0();
          v69 = v6;
          v70 = sub_10001705C(v67, v68, v96);

          *(v66 + 14) = v70;
          _os_log_impl(&_mh_execute_header, v64, v65, "%s configure with %s", v66, 0x16u);
          swift_arrayDestroy();

          v71 = v30;
          v72 = v69;
        }

        else
        {

          v71 = v30;
          v72 = v6;
        }

        v29(v71, v72);
        v73 = [objc_opt_self() defaultManager];
        v74 = sub_10001A190();
        v75 = [v73 newCollectionForTag:v74];

        sub_10000D070(v75);
        v52 = v75;
LABEL_16:
        sub_1000062CC(v52);
        return;
      }
    }

LABEL_12:
    v41 = v91;
    sub_10001A070();
    v42 = a1;
    v43 = sub_10001A080();
    v44 = sub_10001A2F0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v96[0] = swift_slowAlloc();
      *v45 = 136315394;
      *(v45 + 4) = sub_10001705C(0xD000000000000029, 0x800000010001D430, v96);
      *(v45 + 12) = 2080;
      v46 = sub_10001A1C0();
      v48 = v6;
      v49 = sub_10001705C(v46, v47, v96);

      *(v45 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s configure with %s", v45, 0x16u);
      swift_arrayDestroy();

      v50 = v41;
      v51 = v48;
    }

    else
    {

      v50 = v41;
      v51 = v6;
    }

    v29(v50, v51);
    v52 = sub_10000C964(v92, v89, v93);
    goto LABEL_16;
  }

  v36 = v90;
  sub_10001A070();
  v37 = sub_10001A080();
  v38 = sub_10001A300();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v96[0] = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_10001705C(0xD000000000000029, 0x800000010001D430, v96);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_10001705C(7104878, 0xE300000000000000, v96);
    _os_log_impl(&_mh_execute_header, v37, v38, "%s received nil identifier: %s! Setting to Recents as the default.", v39, 0x16u);
    swift_arrayDestroy();
  }

  v29(v36, v6);
}

void *sub_10000C964(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v63 = a3;
  v62 = sub_10001A090();
  v64 = *(v62 - 8);
  v5 = *(v64 + 64);
  v6 = __chkstk_darwin(v62);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v60 - v10;
  __chkstk_darwin(v9);
  v13 = &v60 - v12;
  v14 = sub_10001A190();
  v15 = DOCSpotlightEnumeratedItemIdentifierRecentDocuments;
  v16 = sub_10001A1C0();
  v18 = v17;
  if (v16 == sub_10001A1C0() && v18 == v19)
  {
    v23 = v14;

LABEL_8:

    goto LABEL_9;
  }

  v61 = v15;
  v21 = sub_10001A650();
  v22 = v14;

  if (v21)
  {

LABEL_9:
    sub_10001A070();
    v24 = v14;
    v25 = sub_10001A080();
    v26 = sub_10001A2F0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10001705C(0xD000000000000019, 0x800000010001D460, &v65);
      *(v27 + 12) = 2080;
      v28 = sub_10001A1C0();
      v30 = v29;

      v31 = sub_10001705C(v28, v30, &v65);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s valid sourceIdentifier: %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v32 = *(v64 + 8);
    v33 = v62;
    v32(v13, v62);
    goto LABEL_13;
  }

  v50 = sub_10001A1C0();
  v52 = v51;
  if (v50 == sub_10001A1C0() && v52 == v53)
  {

    goto LABEL_8;
  }

  v55 = sub_10001A650();

  if (v55)
  {
    goto LABEL_9;
  }

  sub_10001A070();

  v56 = sub_10001A080();
  v57 = sub_10001A300();

  v58 = os_log_type_enabled(v56, v57);
  v33 = v62;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v59 = 136315394;
    *(v59 + 4) = sub_10001705C(0xD000000000000019, 0x800000010001D460, &v65);
    *(v59 + 12) = 2080;
    *(v59 + 14) = sub_10001705C(a1, a2, &v65);
    _os_log_impl(&_mh_execute_header, v56, v57, "%s invalid sourceIdentifier: %s", v59, 0x16u);
    swift_arrayDestroy();
  }

  v32 = *(v64 + 8);
  v32(v11, v33);
  v24 = v61;

LABEL_13:
  v34 = v24;
  sub_10001A070();
  v35 = v34;
  v36 = sub_10001A080();
  v37 = sub_10001A2F0();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_10001705C(0xD000000000000019, 0x800000010001D460, &v65);
    *(v38 + 12) = 2080;
    v39 = sub_10001A1C0();
    v41 = sub_10001705C(v39, v40, &v65);

    *(v38 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s enumerationIdentifier: %s)", v38, 0x16u);
    swift_arrayDestroy();
  }

  v32(v8, v33);
  v42 = v63;
  v43 = sub_100006078();
  v44 = [objc_allocWithZone(DOCEnumerationProperties) initWithConfiguration:v43 tags:0];

  v45 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration;
  isa = [*(v42 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration) recentDocumentsContentTypes];
  if (!isa)
  {
    sub_100019E60();
    sub_10001A250();
    isa = sub_10001A240().super.isa;
  }

  [v44 setAllowedContentTypes:isa];

  v47 = [objc_opt_self() defaultManager];
  [*(v42 + v45) supportsRemovableFileProviders];
  v48 = sub_10001A2E0();

  sub_10000D070(v48);
  return v48;
}

void sub_10000D070(void *a1)
{
  v2 = sub_100019FF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019F20();
  v7 = [objc_opt_self() defaultPermission];
  sub_100005D00(v6);
  v8 = sub_100019F10();

  (*(v3 + 8))(v6, v2);
  [a1 setItemFilteringPredicate:v8];
  sub_1000057B0(0, &qword_10002A958, NSNumber_ptr);
  isa = sub_10001A4A0(DOCRecentsMaximumNumberOfItems).super.super.isa;
  [a1 setDesiredNumberOfItems:isa];

  sub_10000D220(a1);
}

uint64_t sub_10000D220(void *a1)
{
  v3 = sub_100019EF0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100019F50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for DOCItemSortMode.lastUsedDate(_:), v3);
  sub_100019F40();
  [a1 setWorkingQueue:*(v1 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemCollectionObservationQueue)];
  [a1 setDelegate:v1];
  sub_100019F30();
  sub_1000057B0(0, &qword_10002A960, NSSortDescriptor_ptr);
  isa = sub_10001A240().super.isa;

  [a1 reorderItemsWithSortDescriptors:isa];

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10000D41C(void *a1)
{
  v2 = v1;
  v4 = sub_10001A090();
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = v7;
    v34 = result;
    v10 = objc_opt_self();
    v11 = a1;
    v12 = [v10 sharedManager];
    v13 = [v12 nodeRequiresAuthentication_Sync:*(v2 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_observedCollectionItem)];

    if (v13)
    {
      v14 = _swiftEmptyArrayStorage;
    }

    else
    {
      v15 = [v11 items];
      sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);
      v14 = sub_10001A250();
    }

    sub_10001A070();
    v16 = v11;
    v17 = sub_10001A080();
    v18 = sub_10001A2F0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v32 = v2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v20 = 136315906;
      *(v20 + 4) = sub_10001705C(0xD00000000000001CLL, 0x800000010001D370, &v35);
      *(v20 + 12) = 1024;
      *(v20 + 14) = v13;
      *(v20 + 18) = 2080;
      sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);

      v22 = sub_10001A260();
      v24 = v23;

      v25 = sub_10001705C(v22, v24, &v35);

      *(v20 + 20) = v25;
      *(v20 + 28) = 2112;
      *(v20 + 30) = v16;
      *v21 = a1;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s isInLockedOrHiddenLocation: %{BOOL}d updating to items: %s from collection: %@", v20, 0x26u);
      sub_10000FBF4(v21, &unk_10002A8C0, &qword_10001C018);

      swift_arrayDestroy();
    }

    (*(v33 + 8))(v9, v34);
    v27 = sub_1000065FC();
    v28 = *&v27[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items];
    *&v27[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items] = v14;

    [v27 setNeedsLayout];

    sub_100008AC0(v29, 8);

    return swift_bridgeObjectRelease_n();
  }

  return result;
}

void sub_10000D7C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_10001A090();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A070();

  v13 = sub_10001A080();
  v14 = sub_10001A2F0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25 = a3;
    aBlock[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_10001705C(0xD00000000000001CLL, 0x800000010001D4A0, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_10001705C(a1, a2, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_10001705C(v25, a4, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s loading folder with ID: %s domain: %s.", v16, 0x20u);
    swift_arrayDestroy();

    (*(v9 + 8))(v12, v24);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v18 = sub_10001A190();
  v19 = sub_10001A190();
  v20 = [objc_allocWithZone(FPItemID) initWithProviderDomainID:v18 itemIdentifier:v19];

  v21 = [objc_opt_self() defaultManager];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10000FCD0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DE24;
  aBlock[3] = &unk_100025278;
  v23 = _Block_copy(aBlock);

  [v21 fetchItemForItemID:v20 completionHandler:v23];
  _Block_release(v23);
}

void sub_10000DB20(void *a1, uint64_t a2)
{
  v4 = sub_10001A090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = objc_opt_self();
      v12 = a1;
      v13 = [v11 defaultManager];
      v14 = [v13 collectionForFolderItem:v12];

      v15 = v14;
      sub_10000D220(v15);
      v16 = *&v10[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_observedCollectionItem];
      *&v10[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_observedCollectionItem] = a1;
      v17 = v12;
      swift_unknownObjectRelease();
      sub_1000062CC(v15);
    }
  }

  else
  {
    sub_10001A070();
    swift_errorRetain();
    v18 = sub_10001A080();
    v19 = sub_10001A300();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_10001705C(0xD00000000000001CLL, 0x800000010001D4A0, &v27);
      *(v20 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v21 = sub_10001A690();
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      v26[0] = v21;
      v26[1] = v22;
      sub_100004E8C(&qword_10002A900, &qword_10001C038);
      v23 = sub_10001A1D0();
      v25 = sub_10001705C(v23, v24, &v27);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s failed to get folder item: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v8, v4);
  }
}

void sub_10000DE24(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_10000DF3C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10000D41C(a2);
  }
}

void sub_10000E0C0(void *a1)
{
  v2 = v1;
  v4 = sub_10001A090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v45 = &v43 - v11;
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  sub_10001A070();
  v14 = a1;
  v15 = sub_10001A080();
  v16 = sub_10001A2F0();

  v17 = os_log_type_enabled(v15, v16);
  v46 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v44 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v43 = v2;
    v48 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_10001705C(0xD00000000000001FLL, 0x800000010001D3B0, &v48);
    *(v19 + 12) = 2080;
    v47 = a1;
    v21 = v14;
    sub_100004E8C(&qword_10002A910, &qword_10001C040);
    v22 = sub_10001A1D0();
    v24 = v5;
    v25 = sub_10001705C(v22, v23, &v48);

    *(v19 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s configuration %s", v19, 0x16u);
    swift_arrayDestroy();

    v4 = v44;

    v26 = v24;
  }

  else
  {

    v26 = v5;
  }

  v27 = *(v26 + 8);
  v27(v13, v4);
  if (a1)
  {
    v28 = objc_opt_self();
    v29 = v46;
    v30 = [v28 intentFromGenericIntent:v29];
    if (v30)
    {
      v31 = v30;
      sub_10000E598(v30);

      return;
    }

    v38 = v45;
    sub_10001A070();
    v39 = sub_10001A080();
    v40 = sub_10001A300();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_10001705C(0xD00000000000001FLL, 0x800000010001D3B0, &v48);
      _os_log_impl(&_mh_execute_header, v39, v40, "%s genericIntent did not convert to DOCOpenLocationIntent", v41, 0xCu);
      sub_10000583C(v42);
    }

    else
    {
    }

    v37 = v38;
  }

  else
  {
    sub_10001A070();
    v32 = sub_10001A080();
    v33 = sub_10001A300();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v9;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_10001705C(0xD00000000000001FLL, 0x800000010001D3B0, &v48);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s genericIntent was nil", v35, 0xCu);
      sub_10000583C(v36);

      v37 = v34;
    }

    else
    {

      v37 = v9;
    }
  }

  v27(v37, v4);
}

uint64_t sub_10000E598(void *a1)
{
  v96 = sub_100004E8C(&unk_10002A540, &unk_10001B9F0);
  v2 = *(*(v96 - 8) + 64);
  v3 = __chkstk_darwin(v96);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v92 - v6;
  v8 = sub_10001A090();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v99 = &v92 - v15;
  __chkstk_darwin(v14);
  v17 = &v92 - v16;
  sub_10001A070();
  v18 = a1;
  v19 = sub_10001A080();
  v20 = sub_10001A300();

  v95 = v20;
  v21 = os_log_type_enabled(v19, v20);
  v98 = v8;
  v100 = v9;
  v94 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v101 = v92;
    *v22 = 136315650;
    *(v22 + 4) = sub_10001705C(0x6628657461647075, 0xEC000000293A726FLL, &v101);
    *(v22 + 12) = 2080;
    v93 = v18;
    v23 = v18;
    v24 = [v23 description];
    v25 = sub_10001A1C0();
    v27 = v26;

    v28 = sub_10001705C(v25, v27, &v101);

    *(v22 + 14) = v28;
    *(v22 + 22) = 2080;
    v29 = [v23 folder];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 fileURL];

      if (v31)
      {
        sub_100019D20();

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      v8 = v98;
      v35 = sub_100019D30();
      (*(*(v35 - 8) + 56))(v5, v32, 1, v35);
      sub_10000FA20(v5, v7);
    }

    else
    {
      v34 = sub_100019D30();
      (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
      v8 = v98;
    }

    v36 = sub_10001A1D0();
    v38 = sub_10001705C(v36, v37, &v101);

    *(v22 + 24) = v38;
    _os_log_impl(&_mh_execute_header, v19, v95, "%s %s folder: %s", v22, 0x20u);
    swift_arrayDestroy();

    v33 = *(v100 + 8);
    v33(v17, v8);
    v18 = v93;
  }

  else
  {

    v33 = *(v9 + 8);
    v33(v17, v8);
  }

  v39 = sub_10001A060();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v18;
  sub_10001A050();
  v43 = swift_allocObject();
  v44 = v97;
  *(v43 + 16) = v97;
  v45 = v44;
  sub_10001A020();
  *(swift_allocObject() + 16) = v45;
  v46 = v45;
  sub_10001A010();
  *(swift_allocObject() + 16) = v46;
  v47 = v46;
  sub_10001A000();
  v48 = sub_10001A040();
  v49 = &v47[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
  v50 = *&v47[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier + 8];
  *v49 = v48;
  v49[1] = v51;

  v52 = v99;
  sub_10001A070();
  v53 = v47;
  v54 = sub_10001A080();
  v55 = sub_10001A2F0();
  if (os_log_type_enabled(v54, v55))
  {
    v97 = v33;
    v56 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v103 = v96;
    *v56 = 136316162;
    *(v56 + 4) = sub_10001705C(0x6628657461647075, 0xEC000000293A726FLL, &v103);
    *(v56 + 12) = 2080;
    v57 = v49[1];
    v101 = *v49;
    v102 = v57;

    sub_100004E8C(&qword_10002A900, &qword_10001C038);
    v58 = sub_10001A1D0();
    v60 = sub_10001705C(v58, v59, &v103);

    *(v56 + 14) = v60;
    *(v56 + 22) = 2048;
    v61 = sub_1000065FC();
    v62 = *&v61[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items];

    if (v62 >> 62)
    {
      v63 = sub_10001A5F0();
    }

    else
    {
      v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v56 + 24) = v63;

    *(v56 + 32) = 2080;
    v64 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection;
    v101 = *&v53[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection];
    v65 = v101;
    sub_100004E8C(&qword_10002A918, &qword_10001C048);
    v66 = sub_10001A1D0();
    v68 = sub_10001705C(v66, v67, &v103);

    *(v56 + 34) = v68;
    *(v56 + 42) = 2080;
    v69 = *&v53[v64];
    if (v69)
    {
      v70 = [v69 isGathering];
    }

    else
    {
      v70 = 2;
    }

    v8 = v98;
    v71 = v99;
    LOBYTE(v101) = v70;
    sub_100004E8C(&qword_10002A920, &qword_10001C050);
    v72 = sub_10001A1D0();
    v74 = sub_10001705C(v72, v73, &v103);

    *(v56 + 44) = v74;
    _os_log_impl(&_mh_execute_header, v54, v55, "Widget Cache: %s collectionIdentifier: %s recentItemsView count: %ld collection: %s isGathering: %s", v56, 0x34u);
    swift_arrayDestroy();

    v33 = v97;
    v97(v71, v8);
  }

  else
  {

    v33(v52, v8);
  }

  v75 = sub_1000065FC();
  v76 = *&v75[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items];

  if (v76 >> 62)
  {
    v77 = sub_10001A5F0();
  }

  else
  {
    v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v77)
  {
    v97 = v33;
    v78 = v94;
    sub_10001A070();
    v79 = v53;
    v80 = sub_10001A080();
    v81 = sub_10001A2F0();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v82 = 136315394;
      *(v82 + 4) = sub_10001705C(0x6628657461647075, 0xEC000000293A726FLL, &v103);
      *(v82 + 12) = 2080;
      v83 = v49[1];
      v101 = *v49;
      v102 = v83;

      sub_100004E8C(&qword_10002A900, &qword_10001C038);
      v84 = sub_10001A1D0();
      v86 = sub_10001705C(v84, v85, &v103);

      *(v82 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v80, v81, "Widget Cache: %s load cached items before folder is fetched from FileProvider %s", v82, 0x16u);
      swift_arrayDestroy();

      v87 = v78;
      v88 = v98;
    }

    else
    {

      v87 = v78;
      v88 = v8;
    }

    v97(v87, v88);
    v89 = *v49;
    v90 = v49[1];

    sub_100006DB4(v89, v90);
  }

  sub_10001A030();
}

uint64_t sub_10000F018(void *a1)
{
  v2 = [a1 itemIdentifier];
  v3 = sub_10001A1C0();
  v5 = v4;

  v6 = [a1 providerDomainID];
  v7 = sub_10001A1C0();
  v9 = v8;

  sub_10000D7C0(v3, v5, v7, v9);
}

void sub_10000F130(void *a1)
{
  v2 = a1;
  v1 = sub_1000065FC();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100019DE0();
}

void sub_10000F1D0()
{
  v1 = sub_10001A090();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() protectedAppsEnabled])
  {
    sub_10001A070();
    v6 = v0;
    v7 = sub_10001A080();
    v8 = sub_10001A2F0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_10001705C(0xD00000000000001ELL, 0x800000010001D350, &v15);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_10001705C(0xD00000000000001ELL, 0x800000010001D350, &v15);
      *(v9 + 22) = 2112;
      *(v9 + 24) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s [PROTECTED APPS] %s %@", v9, 0x20u);
      sub_10000FBF4(v10, &unk_10002A8C0, &qword_10001C018);

      swift_arrayDestroy();
    }

    (*(v2 + 8))(v5, v1);
    v12 = *&v6[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection];
    v13 = v12;
    sub_10000D41C(v12);
  }
}

uint64_t sub_10000F484(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  *(a1 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_loadingCachedItems) = 0;
  swift_beginAccess();
  v6 = *(a4 + 16);

  a2(v7);
}

uint64_t sub_10000F4FC()
{
  v1 = *(sub_100019D30() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000B9AC(v0 + v2, v5, v6, v7);
}

uint64_t sub_10000F5A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F5B8()
{
  v1 = sub_100019D30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10000F67C(int a1)
{
  v3 = *(sub_100019D30() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000BB4C(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_10000F730()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10000F77C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100004E8C(&qword_10002A550, &qword_10001C020);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10000F870(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F884(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F884(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F8D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F8EC(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F8EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F944()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F984()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E8C(&unk_10002A540, &unk_10001B9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FA98()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000FAF0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_10000FB28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000FB38()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FB8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004E8C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000FBF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004E8C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000FC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E8C(&unk_10002A970, qword_10001C080);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FCD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v6 = sub_10001A100();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10001A150();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v22);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000057B0(0, &qword_10002AE60, OS_dispatch_queue_ptr);
  v14 = sub_10001A360();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = v21;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_10001A110();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001024C(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004E8C(&unk_10002AE50, &qword_10001C030);
  sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
  sub_10001A4E0();
  sub_10001A370();
  _Block_release(v17);

  (*(v23 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v22);
}

uint64_t sub_10000FFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A070();

  v9 = sub_10001A080();
  v10 = sub_10001A2F0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10001705C(0xD00000000000001CLL, 0x800000010001D4C0, &v17);
    *(v11 + 12) = 2080;
    v16[1] = a1;
    v16[2] = a2;

    sub_100004E8C(&qword_10002A900, &qword_10001C038);
    v12 = sub_10001A1D0();
    v14 = sub_10001705C(v12, v13, &v17);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s bundleIdentifier %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10001020C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001024C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100010294(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005768(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

SEL *sub_1000102F4(SEL *result)
{
  if (*(*(v1 + 16) + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection))
  {
    return [*(*(v1 + 16) + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection) *result];
  }

  return result;
}

uint64_t sub_100010320(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001039C()
{
  v1 = sub_10001A100();
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v29 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10001A350();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v26);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001A340();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = sub_10001A150();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100010B3C();
  v24 = v0;
  v25 = v15;
  v23 = "yToken";
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_10001A110();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100010BE0(&unk_10002A980, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004E8C(&unk_10002AE70, &qword_10001C0E0);
  sub_100010294(&unk_10002A990, &unk_10002AE70, &qword_10001C0E0);
  sub_10001A4E0();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  v16 = sub_10001A380();
  v17 = v24;
  *(v24 + 40) = v16;
  v18 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100010BC0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = &unk_100025408;
  v19 = _Block_copy(aBlock);

  sub_10001A110();
  v32 = _swiftEmptyArrayStorage;
  sub_100010BE0(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004E8C(&unk_10002AE50, &qword_10001C030);
  sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
  v21 = v29;
  v20 = v30;
  sub_10001A4E0();
  sub_10001A370();
  _Block_release(v19);
  (*(v31 + 8))(v21, v20);
  (*(v27 + 8))(v14, v28);

  return v17;
}

void sub_10001084C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (MKBDeviceFormattedForContentProtection())
    {
      v4 = *(v3 + 40);
      aBlock[4] = sub_100010C28;
      aBlock[5] = a1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100010A6C;
      aBlock[3] = &unk_100025430;
      v5 = _Block_copy(aBlock);
      v6 = v4;

      swift_beginAccess();
      notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v3 + 32), v6, v5);
      swift_endAccess();
      _Block_release(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_100010988()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(result + 24);
      v3 = result;
      v4 = swift_allocObject();
      v4[2] = v1;
      v4[3] = v2;
      v4[4] = v3;
      sub_100010CAC(v1);
      sub_100010CAC(v1);

      sub_100019DE0();

      return sub_100010320(v1);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100010A6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100010AC0()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));
  v1 = *(v0 + 24);
  sub_100010320(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_100010B3C()
{
  result = qword_10002AE60;
  if (!qword_10002AE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002AE60);
  }

  return result;
}

uint64_t sub_100010B88()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100010C30()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010C70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = MKBGetDeviceLockState();
  if (v3)
  {
    v4 = v3 == 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return v1(v5);
}

uint64_t sub_100010CAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100010CC4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100010D48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100010D8C(double a1, double a2)
{
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100019AC8;
  *(v7 + 24) = v6;
  v12[4] = sub_100019B40;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100010F28;
  v12[3] = &unk_100025768;
  v8 = _Block_copy(v12);
  v9 = v2;

  v10 = [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_100010F28(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

id sub_100010F8C(uint64_t a1)
{
  v2 = sub_10001A0C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10001A0F0() - 8) + 64);
  __chkstk_darwin();
  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (_UISolariumEnabled())
  {
    sub_10001A0A0();
    sub_10001A0E0();
    (*(v3 + 8))(v6, v2);
    sub_10001A440();
  }

  else
  {
    v9 = [v8 layer];
    [v9 setCornerCurve:kCACornerCurveContinuous];

    v10 = [v8 layer];
    [v10 setCornerRadius:sub_10001123C()];

    v11 = [v8 layer];
    [v11 setMasksToBounds:1];
  }

  v12 = [v8 layer];
  [v12 setCompositingFilter:kCAFilterPlusL];

  if (*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected))
  {
    v13 = 0.0980392157;
  }

  else
  {
    v13 = 0.152941176;
  }

  v14 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:v13 green:v13 blue:v13 alpha:1.0];
  [v8 setBackgroundColor:v14];

  return v8;
}

double sub_10001123C()
{
  v1 = (v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___cornerRadius);
  if ((*(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___cornerRadius + 8) & 1) == 0)
  {
    return *v1;
  }

  strcpy(v1, "ףp=\nW+@");
  return 13.67;
}

double sub_10001127C()
{
  v1 = v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize;
  if (*(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 16))
  {
    if (*(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout))
    {
      v2 = &OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeList;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeGrid;
    }

    v3 = v0 + *v2;
    result = *v3;
    v5 = *(v3 + 8);
    *v1 = *v3;
    *(v1 + 8) = v5;
    *(v1 + 16) = 0;
  }

  else
  {
    result = *v1;
    v6 = *(v1 + 8);
  }

  return result;
}

id sub_1000112D4(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v3) = 1144750080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1144750080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v4];
  v5 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
  [v2 addSubview:v5];

  v6 = sub_100011804();
  [v2 addSubview:v6];

  sub_10001127C();
  v7 = *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale);
  UIRoundToScale();
  v9 = v8;
  if (*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout))
  {
    v10 = v7 * *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8) + v7 * -6.0 + v7 * -6.0;
  }

  else
  {
    v10 = v7 * *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8);
  }

  v39 = objc_opt_self();
  sub_100004E8C(&qword_10002A550, &qword_10001C020);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10001C140;
  v12 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView;
  v13 = [*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView) widthAnchor];
  v14 = [v13 constraintLessThanOrEqualToConstant:v7 * *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize)];

  *(v11 + 32) = v14;
  v15 = [*(a1 + v12) heightAnchor];
  v16 = [v15 constraintLessThanOrEqualToConstant:v10];

  *(v11 + 40) = v16;
  v17 = [*(a1 + v12) centerXAnchor];
  v18 = [v2 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v11 + 48) = v19;
  v20 = [*(a1 + v12) bottomAnchor];
  v21 = [v2 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v11 + 56) = v22;
  v23 = [*(a1 + v12) topAnchor];
  v24 = [v2 topAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

  *(v11 + 64) = v25;
  v26 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge;
  v27 = [*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge) centerXAnchor];
  v28 = [*(a1 + v12) centerXAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:v9];

  *(v11 + 72) = v29;
  v30 = [*(a1 + v26) bottomAnchor];
  v31 = [*(a1 + v12) bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v11 + 80) = v32;
  v33 = [*(a1 + v26) widthAnchor];
  v34 = [v33 constraintEqualToConstant:17.0];

  *(v11 + 88) = v34;
  v35 = [*(a1 + v26) heightAnchor];
  v36 = [v35 constraintEqualToConstant:17.0];

  *(v11 + 96) = v36;
  sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
  isa = sub_10001A240().super.isa;

  [v39 activateConstraints:isa];

  return v2;
}

id sub_100011804()
{
  v1 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge;
  v2 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setContentMode:1];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000118BC(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setContentMode:1];
  if (_UISolariumEnabled())
  {
    v3 = 5.0;
  }

  else
  {
    v3 = 3.0;
  }

  v4 = [v2 layer];
  [v4 setCornerRadius:v3 * *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale)];

  v5 = [v2 layer];
  [v5 setMasksToBounds:1];

  v6 = [v2 layer];
  [v6 setCornerCurve:kCACornerCurveContinuous];

  return v2;
}

id sub_100011A00(uint64_t a1)
{
  v2 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
  v47 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = v2;
  [v3 addSubview:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [v3 setContentHuggingPriority:0 forAxis:v6];
  v7 = [v3 layer];
  [v7 setAllowsGroupBlending:0];

  v8 = objc_opt_self();
  sub_100004E8C(&qword_10002A550, &qword_10001C020);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10001C150;
  v10 = [v4 topAnchor];

  v11 = [v3 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [v4 leadingAnchor];

  v14 = [v3 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [v4 trailingAnchor];

  v17 = [v3 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v9 + 48) = v18;
  sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
  isa = sub_10001A240().super.isa;

  p_weak_ivar_lyt = &ImageCache.weak_ivar_lyt;
  v46 = v8;
  [v8 activateConstraints:isa];

  LODWORD(isa) = *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout);
  v21 = &ImageCache.weak_ivar_lyt;
  if (isa == 1)
  {
    v22 = v47;
    [v3 addSubview:v22];
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10001C160;
    v24 = [v22 topAnchor];
    v25 = [v4 bottomAnchor];

    v26 = [v24 constraintEqualToAnchor:v25 constant:2.0];
    *(v23 + 32) = v26;
    v27 = [v22 leadingAnchor];

    v28 = [v3 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v23 + 40) = v29;
    v30 = [v22 trailingAnchor];

    v31 = [v3 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    v21 = (&ImageCache + 56);
    *(v23 + 48) = v32;
    p_weak_ivar_lyt = (&ImageCache + 56);
    v33 = (v23 + 56);
  }

  else
  {
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10001B970;
    v33 = (v34 + 32);
    v22 = v4;
  }

  v35 = [v22 v21[183]];

  v36 = [v3 v21[183]];
  v37 = [v35 constraintEqualToAnchor:v36];

  *v33 = v37;
  v38 = sub_10001A240().super.isa;

  [v46 p:v38 weak:? ivar:?lyt[187]];

  v39 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
  [v3 addSubview:v39];

  v40 = *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay);
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  v44 = DOCConstraintsToResizeWithReferenceView();
  if (!v44)
  {
    sub_10001A250();
    v44 = sub_10001A240().super.isa;
  }

  [v46 p:v44 weak:? ivar:?lyt[187]];

  return v3;
}

id sub_100012024(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100012088(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v3];

  v4 = [v2 layer];
  v5 = [a1 traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = &kCAFilterPlusL;
  if (v6 != 2)
  {
    v7 = &kCAFilterPlusD;
  }

  v8 = *v7;
  sub_10001A1C0();
  v9 = sub_10001A190();

  [v4 setCompositingFilter:v9];

  [v2 setNumberOfLines:sub_10001221C()];
  if (*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout))
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  [v2 setTextAlignment:v10];
  return v2;
}

uint64_t sub_10001221C()
{
  if (v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout] != 1)
  {
    return 1;
  }

  [v0 frame];
  if (v1 >= 58.0)
  {
    v3 = 1;
  }

  else
  {
    [v0 frame];
    v3 = v2 <= 0.0;
  }

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_10001A420();
  if (v3 || (v5 & 1) == 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id sub_1000122FC(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v3];

  [v2 setNumberOfLines:sub_10001221C()];
  if (*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout))
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v2 setTextAlignment:v4];
  return v2;
}

id sub_1000123E0(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() tertiaryLabelColor];
  [v2 setTextColor:v3];

  v4 = [v2 layer];
  v5 = [a1 traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = &kCAFilterPlusL;
  if (v6 != 2)
  {
    v7 = &kCAFilterPlusD;
  }

  v8 = *v7;
  sub_10001A1C0();
  v9 = sub_10001A190();

  [v4 setCompositingFilter:v9];

  [v2 setNumberOfLines:1];
  if (*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout))
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  [v2 setTextAlignment:v10];
  return v2;
}

uint64_t sub_100012570(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100019B68(a1, *(a1 + 24));
  v2 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_10001A0D0();
}

void sub_1000125C4(void *a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = sub_10001A100();
  v101 = *(v6 - 8);
  v7 = *(v101 + 64);
  __chkstk_darwin();
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001A150();
  v99 = *(v10 - 8);
  v100 = v10;
  v11 = *(v99 + 64);
  __chkstk_darwin();
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(*(sub_100004E8C(&qword_10002AE80, &qword_10001C298) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v97 = &ObjectType - v15;
  v16 = *(*(sub_100019E20() - 8) + 64);
  __chkstk_darwin();
  v18 = &v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
  v19 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
  v20 = v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8];
  v21 = v20 == 2 && v19 == 0;
  v98 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v21)
  {
    v22 = 0;
    if (a2 == 2 && !a1)
    {
      return;
    }
  }

  else if (v20 >= 2)
  {
    v22 = 0;
  }

  else
  {
    sub_100004E04(v19, v20);
    v22 = [v19 thumbnailIdentifier];
  }

  if (a2 > 1u)
  {
    if (v22)
    {
LABEL_17:
      v24 = v22;
LABEL_19:

      sub_100004E18(v19, v20);
LABEL_20:
      v26 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader;
      v27 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader];
      if (v27)
      {
        [v27 removeListener:v3];
      }

      v28 = *v18;
      if (v18[8])
      {
        if (v18[8] == 1)
        {
          v96 = v26;
          swift_unknownObjectRetain();
          v29 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
          [v29 setLineBreakMode:5];

          v30 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title;
          [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title] setAlpha:1.0];
          v31 = *&v3[v30];
          ObjectType = swift_getObjectType();
          v32 = v31;
          v33 = [v28 displayName];
          sub_10001A1C0();

          sub_100018008(1);
          v35 = v34;

          [v32 setAttributedText:v35];

          v36 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
          [v36 setLineBreakMode:5];

          v37 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay;
          [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay] setAlpha:1.0];
          [*&v3[v37] setHidden:0];
          v38 = *&v3[v37];
          v39 = [v28 displayName];
          sub_10001A1C0();

          sub_100018008(0);
          v41 = v40;

          [v38 setAttributedText:v41];

          v42 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);
          swift_unknownObjectRetain();
          sub_10001A470(UIUserInterfaceSizeClassCompact, 1);
          v43 = sub_10001A190();

          [v42 setText:v43];

          v44 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle;
          [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle] setLineBreakMode:5];
          [*&v3[v44] setAdjustsFontSizeToFitWidth:1];
          [*&v3[v44] setAlpha:1.0];
          [v3 setUserInteractionEnabled:1];
          v45 = sub_10001127C();
          v46 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale];
          v47 = v45 * v46;
          v48 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8];
          v49 = [v3 traitCollection];
          v50 = [v3 traitCollection];
          [v50 displayScale];
          v52 = v51;

          if (v47 <= 0.0 || v46 * v48 <= 0.0 || v52 <= 0.0)
          {

            sub_100004E18(v28, 1u);
            v54 = 0;
          }

          else
          {
            v53 = sub_100004E04(v28, 1u);
            nullsub_2(v53, floor(v47), floor(v46 * v48));
            swift_unknownObjectRetain();
            sub_10001A3A0();
            sub_100019E10();
            if (qword_10002A3D0 != -1)
            {
              swift_once();
            }

            objc_allocWithZone(sub_100019E50());

            v54 = sub_100019E40();
            sub_100019E30();
            sub_100004E18(v28, 1u);

            sub_100004E18(v28, 1u);
          }

          v84 = v96;
          v85 = *&v3[v96];
          *&v3[v96] = v54;
          swift_unknownObjectRelease();
          if ([v28 isFolder])
          {
            if (qword_10002A3D8 != -1)
            {
              swift_once();
            }

            v98 = qword_10002B888;
            v86 = swift_allocObject();
            *(v86 + 16) = v3;
            aBlock[4] = sub_100019BF0;
            aBlock[5] = v86;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100019CCC;
            aBlock[3] = &unk_1000257B8;
            v87 = _Block_copy(aBlock);
            v88 = v3;
            sub_10001A110();
            v102 = _swiftEmptyArrayStorage;
            sub_100019A00(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags);
            sub_100004E8C(&unk_10002AE50, &qword_10001C030);
            sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
            sub_10001A4E0();
            sub_10001A370();
            _Block_release(v87);
            sub_100004E18(v28, 1u);
            (*(v101 + 8))(v9, v6);
            (*(v99 + 8))(v13, v100);
          }

          else
          {
            v92 = *&v3[v84];
            if (v92)
            {
              v93 = [v92 thumbnail];
            }

            else
            {
              v93 = 0;
            }

            sub_10001352C(v93, 0);
            sub_100004E18(v28, 1u);
          }
        }

        else
        {
          v74 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
          v75 = [v74 layer];

          [v75 setBorderWidth:0.0];
          v76 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView;
          [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView] setImage:0];
          [*&v3[v76] setHidden:1];
          v77 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
          [v77 setAttributedText:0];

          v78 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title];
          v79 = sub_10001A190();
          [v78 setText:v79];

          v80 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
          [v80 setHidden:1];

          [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay] setAttributedText:0];
          v81 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);
          v82 = sub_10001A190();
          [v81 setText:v82];

          [v3 setUserInteractionEnabled:0];
          v83 = sub_100011804();
          [v83 setImage:0];
        }
      }

      else
      {
        v55 = *v18;
        swift_unknownObjectRetain();
        v56 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
        [v56 setAttributedText:0];

        v57 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title;
        v58 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title];
        v105._countAndFlagsBits = 3081666804;
        v105._object = 0xA400000000000000;
        sub_10001A220(v105, 32);
        v59 = sub_10001A190();

        [v58 setText:v59];

        [*&v3[v57] setLineBreakMode:1];
        [*&v3[v57] setAlpha:0.08];
        v60 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
        [v60 setHidden:1];

        [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay] setAttributedText:0];
        v61 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);
        v106._countAndFlagsBits = 3081666804;
        v106._object = 0xA400000000000000;
        sub_10001A220(v106, 8);
        v62 = sub_10001A190();

        [v61 setText:v62];

        v63 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle;
        [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle] setLineBreakMode:1];
        [*&v3[v63] setAlpha:0.08];
        [v3 setUserInteractionEnabled:1];
        v64 = sub_10001127C();
        v65 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale];
        v66 = v64 * v65;
        v67 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8];
        swift_unknownObjectRetain();
        v68 = [v3 traitCollection];
        v69 = [v3 traitCollection];
        [v69 displayScale];
        v71 = v70;

        if (v66 <= 0.0 || v65 * v67 <= 0.0 || v71 <= 0.0)
        {

          sub_100004E18(v28, 0);
          v73 = 0;
        }

        else
        {
          v72 = sub_100004E04(v28, 0);
          nullsub_2(v72, floor(v66), floor(v65 * v67));
          swift_unknownObjectRetain();
          sub_10001A3A0();
          sub_100019E10();
          if (qword_10002A3D0 != -1)
          {
            swift_once();
          }

          objc_allocWithZone(sub_100019E50());

          v73 = sub_100019E40();
          sub_100019E30();
          sub_100004E18(v28, 0);

          sub_100004E18(v28, 0);
        }

        v89 = *&v3[v26];
        *&v3[v26] = v73;
        swift_unknownObjectRelease();
        v90 = *&v3[v26];
        if (v90)
        {
          v91 = [v90 thumbnail];
        }

        else
        {
          v91 = 0;
        }

        sub_10001352C(v91, 1);

        v94 = sub_100011804();
        [v94 setImage:0];

        sub_100004E18(v28, 0);
      }

      sub_100013ACC();
      return;
    }
  }

  else
  {
    v23 = [a1 thumbnailIdentifier];
    v24 = v23;
    if (v22)
    {
      if (v23)
      {
        sub_1000057B0(0, &qword_10002AE18, DOCNodeThumbnailIdentifier_ptr);
        v25 = sub_10001A4B0();

        sub_100004E18(v19, v20);
        if (v25)
        {
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v23)
    {
      goto LABEL_19;
    }
  }

  sub_100004E18(v19, v20);
}

void sub_10001352C(void *a1, char a2)
{
  v3 = v2;
  if (!a1 || ([a1 size], v6 == 0.0) || (v8 = v7, v7 == 0.0))
  {
    v13 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
    [v13 setImage:0];

    v14 = *(v3 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView);

    [v14 setHidden:1];
  }

  else
  {
    v9 = v6;
    v10 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailRatioConstraint;
    v11 = *(v2 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailRatioConstraint);
    if (v11)
    {
      [v11 setActive:0];
      v12 = *(v2 + v10);
    }

    else
    {
      v12 = 0;
    }

    *(v2 + v10) = 0;

    v15 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
    v16 = [v15 widthAnchor];

    v17 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView;
    v18 = [*(v3 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView) heightAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 multiplier:v9 / v8];

    [v19 setActive:1];
    v20 = *(v3 + v10);
    *(v3 + v10) = v19;
    v23 = v19;

    if (a2)
    {
      v21 = [objc_opt_self() systemBackgroundColor];
      v22 = sub_100010D8C(v9, v8);

      [*(v3 + v17) setImage:v22];
    }

    else
    {
      [*(v3 + v17) setImage:a1];
    }

    [*(v3 + v17) setHidden:0];
  }
}

uint64_t sub_1000137B4(char *a1)
{
  v2 = sub_10001A100();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001A150();
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = *(v19 + 64);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader];
  if (v10)
  {
    v11 = [v10 thumbnail];
  }

  else
  {
    v11 = 0;
  }

  sub_1000057B0(0, &qword_10002AE60, OS_dispatch_queue_ptr);
  v12 = sub_10001A360();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v11;
  aBlock[4] = sub_100019C38;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = &unk_100025808;
  v14 = _Block_copy(aBlock);
  v15 = v11;
  v16 = a1;

  sub_10001A110();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100019A00(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004E8C(&unk_10002AE50, &qword_10001C030);
  sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
  sub_10001A4E0();
  sub_10001A370();
  _Block_release(v14);

  (*(v21 + 8))(v5, v2);
  return (*(v19 + 8))(v9, v20);
}

void sub_100013ACC()
{
  v1 = *&v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
  if (!v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8])
  {
    v12 = *&v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
    swift_unknownObjectRetain();
    v13 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
    v14 = [v13 layer];

    v15 = objc_opt_self();
    v16 = [v0 traitCollection];
    [v15 separatorThicknessForTraitCollection:v16];
    v18 = v17;

    [v14 setBorderWidth:v18];
    v10 = v1;
    v11 = 0;
LABEL_9:

    sub_100004E18(v10, v11);
    return;
  }

  if (v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
    v3 = 0.0;
    if (([swift_unknownObjectRetain() isFolder] & 1) == 0)
    {
      v4 = *&v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader];
      if (v4)
      {
        if ([v4 isRepresentativeIcon])
        {
          v5 = objc_opt_self();
          v6 = [v0 traitCollection];
          [v5 separatorThicknessForTraitCollection:v6];
          v3 = v7;
        }
      }
    }

    v8 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
    v9 = [v8 layer];

    [v9 setBorderWidth:v3];
    v10 = v1;
    v11 = 1;
    goto LABEL_9;
  }

  v19 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
  v20 = [v19 layer];

  [v20 setBorderWidth:0.0];
}

char *sub_100013D48(uint64_t a1, uint64_t a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9)
{
  ObjectType = swift_getObjectType();
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___listBackground] = 0;
  v20 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_listBackgroundBlurEffect;
  *&v9[v20] = [objc_opt_self() effectWithStyle:7];
  v21 = &v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___cornerRadius];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = &v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeGrid];
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeGrid] = xmmword_10001C170;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeList] = xmmword_10001C180;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailRatioConstraint] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleWidthConstraint] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitleWidthConstraint] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader] = 0;
  v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24 = &v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
  *v24 = 0;
  v24[8] = 2;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale] = a9;
  v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout] = a4;
  if ((a3 & 1) == 0)
  {
    *v23 = a1;
    v23[1] = a2;
  }

  v95.receiver = v9;
  v95.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v95, "initWithFrame:", a5, a6, a7, a8);
  v26 = v25;
  if (a4)
  {
    v27 = [v25 layer];
    [v27 setAllowsGroupBlending:0];

    v28 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___listBackground, sub_100010F8C);
    [v26 addSubview:v28];

    v29 = *&v26[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___listBackground];
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    isa = DOCConstraintsToResizeWithSuperview();
    if (!isa)
    {
      sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
      sub_10001A250();
      isa = sub_10001A240().super.isa;
    }

    [objc_opt_self() activateConstraints:isa];
  }

  v34 = v26;
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 clearColor];
  [v36 setBackgroundColor:v37];

  v38 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer, sub_1000112D4);
  [v36 addSubview:v38];

  v39 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer, sub_100011A00);
  [v36 addSubview:v39];

  if (a4)
  {

    v94 = objc_opt_self();
    sub_100004E8C(&qword_10002A550, &qword_10001C020);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10001C190;
    v41 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer;
    v42 = [*&v36[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer] leadingAnchor];
    v43 = [v36 leadingAnchor];
    v44 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale;
    v45 = [v42 constraintEqualToAnchor:v43 constant:*&v36[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale] * 6.0];

    *(v40 + 32) = v45;
    v46 = &selRef_centerYAnchor;
    v47 = [*&v36[v41] centerYAnchor];
    v48 = [v36 centerYAnchor];

    v49 = [v47 constraintEqualToAnchor:v48];
    *(v40 + 40) = v49;
    v50 = [*&v36[v41] heightAnchor];
    sub_10001127C();
    v51 = &v36[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize];
    v52 = [v50 constraintLessThanOrEqualToConstant:*&v36[v44] * *&v36[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8]];

    *(v40 + 48) = v52;
    v53 = [*&v36[v41] widthAnchor];
    v54 = [v53 constraintEqualToConstant:*v51 * *&v36[v44]];

    *(v40 + 56) = v54;
    v55 = &v36[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer];
    v56 = [*&v36[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer] leadingAnchor];
    v57 = [*&v36[v41] trailingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:*&v36[v44] * 6.0];

    *(v40 + 64) = v58;
    v59 = [*v55 trailingAnchor];
    v60 = [v36 trailingAnchor];

    v61 = [v59 constraintEqualToAnchor:v60 constant:*&v36[v44] * -6.0];
    *(v40 + 72) = v61;
    v62 = (v40 + 80);
  }

  else
  {
    v94 = objc_opt_self();
    sub_100004E8C(&qword_10002A550, &qword_10001C020);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_10001B950;
    v64 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer;
    v65 = [*&v36[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer] leadingAnchor];
    v66 = [v36 leadingAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];

    *(v63 + 32) = v67;
    v68 = [*&v36[v64] trailingAnchor];
    v69 = [v36 trailingAnchor];

    v70 = [v68 constraintEqualToAnchor:v69];
    *(v63 + 40) = v70;
    v71 = [*&v36[v64] topAnchor];
    v72 = [v36 topAnchor];

    v73 = [v71 constraintEqualToAnchor:v72];
    *(v63 + 48) = v73;
    v74 = [*&v36[v64] widthAnchor];
    v75 = sub_10001127C();
    v76 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale;
    v77 = [v74 constraintGreaterThanOrEqualToConstant:v75 * *&v36[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale]];

    *(v63 + 56) = v77;
    v55 = &v36[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer];
    v78 = [*&v36[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer] leadingAnchor];
    v79 = [v36 leadingAnchor];

    v80 = [v78 constraintEqualToAnchor:v79];
    *(v63 + 64) = v80;
    v81 = [*v55 trailingAnchor];
    v82 = [v36 trailingAnchor];

    v83 = [v81 constraintEqualToAnchor:v82];
    *(v63 + 72) = v83;
    v84 = [*v55 topAnchor];
    v46 = &selRef_bottomAnchor;
    v85 = [*&v36[v64] bottomAnchor];
    v86 = [v84 constraintEqualToAnchor:v85 constant:*&v36[v76] * 6.0];

    *(v63 + 80) = v86;
    v62 = (v63 + 88);
  }

  v87 = [*v55 *v46];
  v88 = [v36 *v46];

  v89 = [v87 constraintEqualToAnchor:v88];
  *v62 = v89;
  sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
  v90 = sub_10001A240().super.isa;

  [v94 activateConstraints:v90];

  v91 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v36 action:"handleTap:"];
  [v36 addGestureRecognizer:v91];
  v92 = [objc_allocWithZone(UIDragInteraction) initWithDelegate:v36];
  [v36 addInteraction:v92];

  return v36;
}

void sub_10001485C()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {

    v2 = [v0 traitCollection];
    swift_beginAccess();
    swift_beginAccess();
    v3 = sub_100018848(&qword_10002AC00, &qword_10002AC08, v2, UIFontWeightRegular);
    swift_endAccess();
    swift_endAccess();
    v4 = v3;

    v5 = [v0 traitCollection];
    swift_beginAccess();
    swift_beginAccess();
    v6 = sub_100018848(&qword_10002AC10, &qword_10002AC18, v5, UIFontWeightRegular);
    swift_endAccess();
    swift_endAccess();
    v7 = v6;

    v8 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
    v9 = v4;
    [v8 setFont:v9];

    v10 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
    [v10 setFont:v9];

    v11 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);
    [v11 setFont:v7];

    v12 = *&v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title];
    [v12 setNumberOfLines:sub_10001221C()];

    v13 = *&v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay];
    [v13 setNumberOfLines:sub_10001221C()];
  }
}

void sub_100014B50()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout) == 1)
  {
    v1 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___listBackground, sub_100010F8C);
    if (*(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected))
    {
      v2 = 0.0980392157;
    }

    else
    {
      v2 = 0.152941176;
    }

    v3 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:v2 green:v2 blue:v2 alpha:1.0];
    [v1 setBackgroundColor:v3];
  }

  v4 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
  v5 = [v4 layer];

  v6 = [objc_opt_self() separatorColor];
  v7 = [v6 colorWithAlphaComponent:0.15];

  v8 = [v7 CGColor];
  [v5 setBorderColor:v8];

  v9 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
  [v9 setNumberOfLines:sub_10001221C()];

  v10 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
  [v10 setNumberOfLines:sub_10001221C()];
}

uint64_t sub_100014DCC()
{
  v0 = sub_100019E00();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100019DF0();
  qword_10002B880 = result;
  return result;
}

uint64_t sub_100014E0C()
{
  v8 = sub_10001A350();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_10001A340() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(sub_10001A150() - 8) + 64);
  __chkstk_darwin();
  v7[1] = sub_1000057B0(0, &qword_10002AE60, OS_dispatch_queue_ptr);
  sub_10001A120();
  v9 = _swiftEmptyArrayStorage;
  sub_100019A00(&unk_10002A980, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004E8C(&unk_10002AE70, &qword_10001C0E0);
  sub_100010294(&unk_10002A990, &unk_10002AE70, &qword_10001C0E0);
  sub_10001A4E0();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  result = sub_10001A380();
  qword_10002B888 = result;
  return result;
}

void sub_100015114(objc_class *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100004E8C(&qword_10002AE80, &qword_10001C298);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v59 = &v59 - v7;
  v8 = sub_100019E20();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001A400();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 64);
  __chkstk_darwin(v11);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62.receiver = v2;
  v62.super_class = ObjectType;
  [(objc_class *)&v62 traitCollectionDidChange:a1];
  v17 = [v2 traitCollection];
  sub_100004E8C(&qword_10002AE88, &qword_10001C2A0);
  v18 = *(v12 + 72);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10001BF10;
  sub_10001A3F0();
  sub_10001A3C0();
  v61 = v20;
  sub_100019A00(&qword_10002AE90, &type metadata accessor for UITraitCollection.Traits);
  sub_100004E8C(&qword_10002AE98, &qword_10001C2A8);
  sub_100010294(&qword_10002AEA0, &qword_10002AE98, &qword_10001C2A8);
  sub_10001A4E0();
  LOBYTE(v20) = sub_10001A3B0();

  (*(v13 + 8))(v16, v11);
  if ((v20 & 1) != 0 || (v21 = [v2 traitCollection], v63.value.super.isa = a1, v22 = sub_10001A390(v63), v21, !v22))
  {
    v23 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader;
    v24 = *&v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader];
    if (v24)
    {
      [v24 removeListener:v2];
    }

    v25 = &v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
    v26 = v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8];
    if (v26 >= 2)
    {
      v27 = 0;
    }

    else
    {
      v27 = *v25;
      sub_100004E04(*v25, v26);
    }

    v28 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
    [v28 frame];
    v30 = v29;
    v32 = v31;

    v33 = [v2 traitCollection];
    v34 = [v2 traitCollection];
    [v34 displayScale];
    v36 = v35;

    if (v27)
    {
      if (v30 > 0.0 && v32 > 0.0 && v36 > 0.0)
      {
        nullsub_2(v37, floor(v30), floor(v32));
        swift_unknownObjectRetain_n();
        sub_10001A3A0();
        sub_100019E10();
        if (qword_10002A3D0 != -1)
        {
          swift_once();
        }

        objc_allocWithZone(sub_100019E50());

        v38 = sub_100019E40();
        sub_100019E30();

        swift_unknownObjectRelease_n();
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

    v38 = 0;
LABEL_17:
    v39 = *&v2[v23];
    *&v2[v23] = v38;
    swift_unknownObjectRelease();
  }

  v40 = [v2 traitCollection];
  swift_beginAccess();
  swift_beginAccess();
  v41 = sub_100018848(&qword_10002AC00, &qword_10002AC08, v40, UIFontWeightRegular);
  swift_endAccess();
  swift_endAccess();
  v42 = v41;

  v43 = [v2 traitCollection];
  swift_beginAccess();
  swift_beginAccess();
  v44 = sub_100018848(&qword_10002AC10, &qword_10002AC18, v43, UIFontWeightRegular);
  swift_endAccess();
  swift_endAccess();
  v45 = v44;
  v60 = v45;

  v46 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
  v47 = v42;
  [v46 setFont:v47];

  v48 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
  [v48 setFont:v47];

  v49 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);
  [v49 setFont:v45];

  v50 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title;
  v51 = [*&v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title] layer];
  v52 = [v2 traitCollection];
  [v52 userInterfaceStyle];

  sub_10001A1C0();
  v53 = sub_10001A190();

  [v51 setCompositingFilter:v53];

  v54 = [*&v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle] layer];
  v55 = [v2 traitCollection];
  [v55 userInterfaceStyle];

  sub_10001A1C0();
  v56 = sub_10001A190();

  [v54 setCompositingFilter:v56];

  v57 = *&v2[v50];
  [v57 setNumberOfLines:sub_10001221C()];

  v58 = *&v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay];
  [v58 setNumberOfLines:sub_10001221C()];
}

uint64_t sub_100015CB4(void *a1)
{
  v3 = sub_10001A100();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001A150();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8] <= 1u && [*&v1[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind] isFolder])
  {
    v22 = v4;
    if (qword_10002A3D8 != -1)
    {
      swift_once();
    }

    v21[1] = qword_10002B888;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v1;
    aBlock[4] = sub_1000199F8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019CCC;
    aBlock[3] = &unk_1000256C8;
    v14 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v15 = v1;
    sub_10001A110();
    v23 = _swiftEmptyArrayStorage;
    sub_100019A00(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004E8C(&unk_10002AE50, &qword_10001C030);
    sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
    sub_10001A4E0();
    sub_10001A370();
    _Block_release(v14);
    (*(v22 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v17 = [a1 thumbnail];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = v17;
    swift_unknownObjectRetain();

    v20 = v17;
    sub_100019DE0();
  }
}

void sub_1000160B0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader);
    if (v7)
    {
      v8 = v7 == a2;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      sub_10001352C(a3, *(Strong + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8) == 0);
      sub_100013ACC();
    }
  }
}

uint64_t sub_10001614C(void *a1)
{
  v2 = [a1 thumbnail];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = v2;

  swift_unknownObjectRetain();
  v5 = v2;
  sub_100019DE0();
}

void sub_100016290(uint64_t a1, Swift::UInt a2, Swift::UInt a3)
{
  sub_10000FB8C(a1, v8, &qword_10002A930, &qword_10001C060);
  if (v8[3])
  {
    sub_1000057B0(0, &qword_10002AEE8, UIFont_ptr);
    if (swift_dynamicCast())
    {
      if ((CTFontGetSymbolicTraits(font) & 0x2000) != 0)
      {
        v5 = a2;
        v6 = a3;
      }

      else
      {
        v5 = a2;
        v6 = a3;
      }

      sub_100017798(v8, v5, v6);
    }
  }

  else
  {
    sub_10000FBF4(v8, &qword_10002A930, &qword_10001C060);
  }
}

uint64_t sub_100016384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_10000FB28(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_10000FBF4(v14, &qword_10002A930, &qword_10001C060);
}

void sub_100016430(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected;
  v3 = *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected);
  *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected) = a2;
  if (v3 != (a2 & 1) && (*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout) & 1) != 0)
  {
    v5 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___listBackground, sub_100010F8C);
    if (*(a1 + v2))
    {
      v6 = 0.0980392157;
    }

    else
    {
      v6 = 0.152941176;
    }

    v7 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:v6 green:v6 blue:v6 alpha:1.0];
    [v5 setBackgroundColor:v7];
  }
}

void sub_100016720(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  ObjectType = swift_getObjectType();
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10001A4F0();
    sub_1000057B0(0, &qword_10002AE38, UITouch_ptr);
    sub_1000198A4();
    sub_10001A2C0();
    v4 = aBlock[6];
    v5 = aBlock[7];
    v6 = aBlock[8];
    v7 = aBlock[9];
    v8 = aBlock[10];
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
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

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!sub_10001A500())
    {
LABEL_19:
      LOBYTE(v13) = 0;
LABEL_20:
      sub_100019968();
      v27 = objc_opt_self();
      v28 = swift_allocObject();
      *(v28 + 16) = v3;
      *(v28 + 24) = v13;
      aBlock[4] = sub_100019CE4;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019CCC;
      aBlock[3] = &unk_100025588;
      v29 = _Block_copy(aBlock);
      v30 = v3;

      [v27 animateWithDuration:v29 animations:0.1];
      _Block_release(v29);
      sub_1000057B0(0, &qword_10002AE38, UITouch_ptr);
      sub_1000198A4();
      isa = sub_10001A2A0().super.isa;
      v35.receiver = v30;
      v35.super_class = ObjectType;
      objc_msgSendSuper2(&v35, "touchesMoved:withEvent:", isa, a2);

      return;
    }

    sub_1000057B0(0, &qword_10002AE38, UITouch_ptr);
    swift_dynamicCast();
    v13 = aBlock[0];
    if (!aBlock[0])
    {
      goto LABEL_20;
    }

LABEL_9:
    [v3 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v13 locationInView:v3];
    v37.x = v22;
    v37.y = v23;
    v38.origin.x = v15;
    v38.origin.y = v17;
    v38.size.width = v19;
    v38.size.height = v21;
    v24 = CGRectContainsPoint(v38, v37);

    if (v24)
    {
      LOBYTE(v13) = 1;
      goto LABEL_20;
    }
  }

  v25 = v7;
  v26 = v8;
  if (v8)
  {
LABEL_8:
    v8 = (v26 - 1) & v26;
    v13 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v7 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_19;
    }

    v26 = *(v5 + 8 * v7);
    ++v25;
    if (v26)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_100016B74(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  ObjectType = swift_getObjectType();
  sub_1000057B0(0, &qword_10002AE38, UITouch_ptr);
  sub_1000198A4();
  sub_10001A2B0();
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = 0;
  aBlock[4] = a6;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = a7;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a4;

  [v13 animateWithDuration:v15 animations:0.1];
  _Block_release(v15);
  isa = sub_10001A2A0().super.isa;

  v20.receiver = v16;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, *a8, isa, v17);
}

uint64_t sub_100016F78(uint64_t a1)
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

uint64_t sub_100016F94(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100016FA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100016FF0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100017034(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10001705C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100017128(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_100019848(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000583C(v11);
  return v7;
}

unint64_t sub_100017128(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100017234(a5, a6);
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
    result = sub_10001A570();
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

id *sub_100017234(uint64_t a1, unint64_t a2)
{
  v4 = sub_100017280(a1, a2);
  sub_1000173B0(&off_100024DE8);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

id *sub_100017280(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10001749C(v5, 0);
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

  result = sub_10001A570();
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
        v10 = sub_10001A200();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001749C(v10, 0);
        result = sub_10001A530();
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

uint64_t sub_1000173B0(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100017510(result, v12, 1, v3);
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

id *sub_10001749C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100004E8C(&qword_10002AE28, &unk_10001C288);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *sub_100017510(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004E8C(&qword_10002AE28, &unk_10001C288);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100017604(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10001A1C0();
  sub_10001A6B0();
  sub_10001A1E0();
  v4 = sub_10001A6E0();

  return sub_100017694(a1, v4);
}

unint64_t sub_100017694(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10001A1C0();
      v9 = v8;
      if (v7 == sub_10001A1C0() && v9 == v10)
      {
        break;
      }

      v12 = sub_10001A650();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100017798(Swift::UInt *a1, Swift::UInt a2, Swift::UInt a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10001A6B0();
  sub_10001A6C0(a2);
  sub_10001A6C0(a3);
  v9 = sub_10001A6E0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == a2 && v14 == a3)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100017B1C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_1000178B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004E8C(&unk_10002AEF0, &qword_10001C2F0);
  result = sub_10001A520();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_10001A6B0();
      sub_10001A6C0(v20);
      sub_10001A6C0(v21);
      result = sub_10001A6E0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100017B1C(Swift::Int result, Swift::UInt a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_1000178B4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_100017C8C();
      a3 = v9;
      goto LABEL_15;
    }

    sub_100017DD0(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10001A6B0();
  sub_10001A6C0(v6);
  sub_10001A6C0(a2);
  result = sub_10001A6E0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v16 = *v14;
      v15 = v14[1];
      if (v16 == v6 && v15 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v6;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_18:
  type metadata accessor for _NSRange(0);
  result = sub_10001A680();
  __break(1u);
  return result;
}

void *sub_100017C8C()
{
  v1 = v0;
  sub_100004E8C(&unk_10002AEF0, &qword_10001C2F0);
  v2 = *v0;
  v3 = sub_10001A510();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_100017DD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004E8C(&unk_10002AEF0, &qword_10001C2F0);
  result = sub_10001A520();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_10001A6B0();
      sub_10001A6C0(v19);
      sub_10001A6C0(v20);
      result = sub_10001A6E0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_100018008(char a1)
{
  v40 = &_swiftEmptySetSingleton;
  v41 = &_swiftEmptySetSingleton;
  v2 = objc_allocWithZone(NSMutableAttributedString);
  v3 = sub_10001A190();
  v4 = [v2 initWithString:v3];

  v5 = [v4 length];
  [v4 fixAttributesInRange:{0, v5}];
  v6 = swift_allocObject();
  *(v6 + 16) = &v40;
  *(v6 + 24) = &v41;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100019C64;
  *(v7 + 24) = v6;
  v38 = sub_100019C6C;
  v39 = v7;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100016384;
  v37 = &unk_100025880;
  v8 = _Block_copy(&aBlock);

  [v4 enumerateAttribute:NSFontAttributeName inRange:0 options:v5 usingBlock:{0, v8}];

  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v33 = a1;
  v9 = v40;

  v40 = &_swiftEmptySetSingleton;
  v41 = &_swiftEmptySetSingleton;
  v10 = objc_allocWithZone(NSMutableAttributedString);
  v11 = sub_10001A190();
  v12 = [v10 initWithString:v11];

  v13 = [v12 length];
  [v12 fixAttributesInRange:{0, v13}];
  v14 = swift_allocObject();
  *(v14 + 16) = &v40;
  *(v14 + 24) = &v41;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100019CB8;
  *(v15 + 24) = v14;
  v38 = sub_100019CBC;
  v39 = v15;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100016384;
  v37 = &unk_1000258F8;
  v16 = _Block_copy(&aBlock);

  [v12 enumerateAttribute:NSFontAttributeName inRange:0 options:v13 usingBlock:{0, v16}];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v18 = v41;

    v19 = objc_allocWithZone(NSMutableAttributedString);
    v20 = sub_10001A190();
    v21 = [v19 initWithString:v20];

    if ((v33 & 1) == 0)
    {
      v9 = v18;
    }

    v22 = 0;
    v23 = 1 << v9[32];
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v9 + 7);
    v26 = (v23 + 63) >> 6;
    while (v25)
    {
LABEL_13:
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v29 = (*(v9 + 6) + ((v22 << 10) | (16 * v28)));
      v30 = v29[1];
      if (v30 > 0)
      {
        v31 = *v29;
        v32 = [objc_opt_self() clearColor];
        [v21 addAttribute:NSForegroundColorAttributeName value:v32 range:{v31, v30}];
      }
    }

    while (1)
    {
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v27 >= v26)
      {

        return;
      }

      v25 = *&v9[8 * v27 + 56];
      ++v22;
      if (v25)
      {
        v22 = v27;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_100018520(void *a1, unsigned __int8 a2, void *a3, unsigned __int8 a4)
{
  if (a2 == 2 && a1 == 0)
  {
    v8 = 0;
    if (a4 == 2 && !a3)
    {
      goto LABEL_21;
    }
  }

  else if (a2 > 1u)
  {
    v8 = 0;
  }

  else
  {
    v5 = a3;
    v6 = a4;
    v7 = [a1 thumbnailIdentifier];
    a4 = v6;
    a3 = v5;
    v8 = v7;
  }

  if (a4 > 1u)
  {
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_21:
    v11 = 1;
    return v11 & 1;
  }

  v9 = [a3 thumbnailIdentifier];
  v10 = v9;
  if (!v8)
  {
    if (v9)
    {
      v11 = 0;
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (!v9)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  sub_1000057B0(0, &qword_10002AE18, DOCNodeThumbnailIdentifier_ptr);
  v11 = sub_10001A4B0();

LABEL_17:
  v10 = v8;
LABEL_18:

  return v11 & 1;
}

unint64_t sub_100018630(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E8C(&qword_10002AEE0, &unk_10001C2E0);
    v3 = sub_10001A610();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100017604(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100018720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E8C(&qword_10002AED8, &qword_10001C2D8);
    v3 = sub_10001A610();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FB8C(v4, &v11, &unk_10002AEC8, &qword_10001C2D0);
      v5 = v11;
      result = sub_100017604(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000FB28(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_100018848(id *a1, void **a2, void *a3, double a4)
{
  v38 = a3;
  v7 = sub_10001A400();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 64);
  __chkstk_darwin(v7);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004E8C(&qword_10002AE88, &qword_10001C2A0);
  v13 = *(v8 + 72);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10001BF10;
  sub_10001A3D0();
  sub_10001A3E0();
  v39 = v15;
  sub_100019A00(&qword_10002AE90, &type metadata accessor for UITraitCollection.Traits);
  sub_100004E8C(&qword_10002AE98, &qword_10001C2A8);
  sub_100010294(&qword_10002AEA0, &qword_10002AE98, &qword_10001C2A8);
  sub_10001A4E0();
  v37 = a2;
  v16 = *a2;
  v17 = v38;
  v18 = sub_10001A3B0();
  (*(v9 + 8))(v12, v7);
  v19 = *a1;
  if (*a1)
  {
    if ((v18 & 1) == 0)
    {
      return v19;
    }
  }

  v20 = sub_10001A410();
  v21 = objc_opt_self();
  v22 = [v21 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 compatibleWithTraitCollection:v20];
  sub_100004E8C(&qword_10002AEA8, &qword_10001C2B0);
  inited = swift_initStackObject();
  v36 = xmmword_10001BF00;
  *(inited + 16) = xmmword_10001BF00;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = a4;
  v24 = UIFontWeightTrait;
  v25 = sub_100018630(inited);
  swift_setDeallocating();
  sub_10000FBF4(inited + 32, &qword_10002AEB0, &qword_10001C2B8);
  v26 = [v21 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 compatibleWithTraitCollection:v17];
  sub_100004E8C(&qword_10002AEB8, &qword_10001C2C0);
  v27 = swift_initStackObject();
  *(v27 + 16) = v36;
  *(v27 + 32) = UIFontDescriptorTraitsAttribute;
  *(v27 + 64) = sub_100004E8C(&qword_10002AEC0, &qword_10001C2C8);
  *(v27 + 40) = v25;
  v28 = UIFontDescriptorTraitsAttribute;
  sub_100018720(v27);
  swift_setDeallocating();
  sub_10000FBF4(v27 + 32, &unk_10002AEC8, &qword_10001C2D0);
  type metadata accessor for AttributeName(0);
  sub_100019A00(&qword_10002A5E0, type metadata accessor for AttributeName);
  isa = sub_10001A180().super.isa;

  v30 = [v26 fontDescriptorByAddingAttributes:isa];

  [v26 pointSize];
  v32 = v31;
  [v22 pointSize];
  if (v33 < v32)
  {
    v32 = v33;
  }

  v19 = [objc_opt_self() fontWithDescriptor:v30 size:v32];

  *a1 = v19;
  *v37 = v17;
  v34 = v17;
  return v19;
}

void sub_100018CE0()
{
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___listBackground) = 0;
  v1 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_listBackgroundBlurEffect;
  *(v0 + v1) = [objc_opt_self() effectWithStyle:7];
  v2 = v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___cornerRadius;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeGrid) = xmmword_10001C170;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeList) = xmmword_10001C180;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailRatioConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitleWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind;
  *v4 = 0;
  *(v4 + 8) = 2;
  sub_10001A5D0();
  __break(1u);
}

id *sub_100018E90()
{
  v1 = v0;
  v2 = sub_10001A090();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A070();
  v7 = sub_10001A080();
  v8 = sub_10001A2F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10001705C(0xD000000000000025, 0x800000010001DBA0, &v19);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000583C(v10);
  }

  (*(v3 + 8))(v6, v2);
  v11 = (v1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind);
  v12 = *(v1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8);
  if (v12 >= 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = *v11;
  swift_getObjectType();
  sub_100004E04(v13, v12);
  if ((sub_10001A460() & 1) != 0 && (v14 = sub_10001A450()) != 0)
  {
    v15 = v14;
    sub_100004E8C(&qword_10002A550, &qword_10001C020);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_10001B970;
    v16[4] = v15;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  sub_100004E18(v13, v12);
  return v16;
}

id *sub_1000190EC()
{
  v1 = v0;
  v2 = sub_10001A090();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v31 - v8;
  sub_10001A070();
  v10 = sub_10001A080();
  v11 = sub_10001A2F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10001705C(0xD000000000000030, 0x800000010001DB60, &v33);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10000583C(v13);
  }

  v14 = *(v3 + 8);
  v14(v9, v2);
  sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);
  if (sub_10001A430())
  {
    v15 = v1[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8];
    if (v15 <= 1)
    {
      v16 = *&v1[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
      swift_getObjectType();
      sub_100004E04(v16, v15);
      if (sub_10001A460())
      {
        v17 = sub_10001A450();
        if (v17)
        {
          v18 = v17;
          sub_100004E8C(&qword_10002A550, &qword_10001C020);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_10001B970;
          *(v19 + 32) = v18;
          sub_100004E18(v16, v15);
          return v19;
        }
      }

      sub_100004E18(v16, v15);
    }
  }

  else
  {
    sub_10001A070();
    v21 = v1;
    v22 = sub_10001A080();
    v23 = sub_10001A2F0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v24 = 136315394;
      *(v24 + 4) = sub_10001705C(0xD000000000000030, 0x800000010001DB60, &v33);
      *(v24 + 12) = 2080;
      v25 = v21;
      v26 = [v25 description];
      v27 = sub_10001A1C0();
      v31[1] = v3;
      v29 = v28;

      v30 = sub_10001705C(v27, v29, &v33);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s Item %s cannot be added to the drag because it is already part of the drag", v24, 0x16u);
      swift_arrayDestroy();
    }

    v14(v7, v2);
  }

  return _swiftEmptyArrayStorage;
}

id sub_10001950C()
{
  v1 = v0;
  v2 = sub_10001A090();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A070();
  v7 = sub_10001A080();
  v8 = sub_10001A2F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10001705C(0xD00000000000002DLL, 0x800000010001DB30, &v30);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000583C(v10);
  }

  (*(v3 + 8))(v6, v2);
  v11 = [objc_allocWithZone(UIDragPreviewParameters) init];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  v15 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
  [v15 frame];
  v17 = v16;
  v19 = v18;

  if (v17 != 0.0 || v19 != 0.0)
  {
    v20 = (v1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind);
    v21 = *(v1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8);
    if (v21 <= 1)
    {
      v22 = *v20;
      sub_100004E04(*v20, *(v1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8));
      if ([v22 isFolder])
      {
        sub_1000057B0(0, &qword_10002AE20, UIBezierPath_ptr);
        v23 = sub_10001A2D0();
        [v13 setVisiblePath:v23];
      }

      sub_100004E18(v22, v21);
    }
  }

  v24 = *(v1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView);
  v25 = objc_allocWithZone(UITargetedDragPreview);
  v26 = v24;
  v27 = [v25 initWithView:v26 parameters:v13];

  return v27;
}

uint64_t sub_100019848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000198A4()
{
  result = qword_10002AE40;
  if (!qword_10002AE40)
  {
    sub_1000057B0(255, &qword_10002AE38, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AE40);
  }

  return result;
}

uint64_t sub_10001990C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100019950(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100019970()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000199B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019A00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019A48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019A90()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100019AC8(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  [*(v1 + 16) setFill];

  return [a1 fillRect:{0.0, 0.0, v3, v4}];
}

uint64_t sub_100019B40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100019B68(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100019BB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019BF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100019C38()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_10001352C(v1, 0);
}

void sub_100019C64(uint64_t a1, Swift::UInt a2, Swift::UInt a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_100016290(a1, a2, a3);
}

uint64_t sub_100019C6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}