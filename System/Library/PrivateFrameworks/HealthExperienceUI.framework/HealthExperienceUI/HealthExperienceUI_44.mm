id sub_1BA3B74E0()
{
  v1 = [v0 contentView];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  [v1 addSubview_];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView;
  [*&v0[v2] addSubview_];
  [*&v0[v2] addSubview_];
  [*&v0[v2] addSubview_];
  [*&v0[v2] addSubview_];
  v4 = *&v0[v3];
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageView];

  return [v4 addSubview_];
}

void sub_1BA3B75C0(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_baseConstraintsActive;
  if ((*(v1 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_baseConstraintsActive) & 1) == 0)
  {
    v26 = MEMORY[0x1E69E7CC0];
    v6 = sub_1BA3B7940();
    sub_1B9F73B50(v6);
    v7 = sub_1BA3B7ED8();
    sub_1B9F73B50(v7);
    v8 = sub_1BA3B7BA4();
    sub_1B9F73B50(v8);
    v9 = sub_1BA3B7D88();
    sub_1B9F73B50(v9);
    v10 = sub_1BA3B80A0();
    sub_1B9F73B50(v10);
    sub_1B9F73B50(v26);
    *(v1 + v5) = 1;
  }

  if (*(a1 + 64))
  {
    *(v1 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabelConstraints) = sub_1BA3B8260();

    sub_1B9F73B50(v11);
    v25 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabelBottomConstraint);
    v26 = v4;
    v12 = v25;
    if (v25)
    {
      v13 = v12;
      MEMORY[0x1BFAF1510]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v4 = v26;
    }

    sub_1BA3B86E8(&v25, &qword_1EBBECF58, &qword_1EDC6B570, 0x1E696ACD8, sub_1B9F6A804);
    sub_1B9F73B50(v4);
    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel) setHidden_];
  }

  else
  {
    v14 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel) bottomAnchor];
    v15 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView) bottomAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    v17 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabelBottomConstraint);
    *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabelBottomConstraint) = v16;
    v18 = v16;

    sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5470;
    *(inited + 32) = v18;
    v20 = v18;
    sub_1B9F73B50(inited);

    sub_1B9F73B50(v21);
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel) setHidden_];
  }

  v22 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v23 = sub_1BA4A6AE8();

  [v22 activateConstraints_];

  v24 = sub_1BA4A6AE8();

  [v22 deactivateConstraints_];
}

uint64_t sub_1BA3B7940()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  v3 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView] topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = [*&v0[v2] bottomAnchor];
  v8 = [v0 contentView];
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v1 + 40) = v10;
  v11 = [*&v0[v2] leadingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v1 + 48) = v14;
  v15 = [*&v0[v2] trailingAnchor];
  v16 = [v0 contentView];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v1 + 56) = v18;
  return v1;
}

uint64_t sub_1BA3B7BA4()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView;
  v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView) centerXAnchor];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  v5 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView) centerXAnchor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = [*(v0 + v2) topAnchor];
  v8 = [*(v0 + v4) topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:20.0];

  *(v1 + 40) = v9;
  v10 = [*(v0 + v2) widthAnchor];
  v11 = [v10 constraintEqualToConstant_];

  *(v1 + 48) = v11;
  v12 = [*(v0 + v2) heightAnchor];
  v13 = [v12 constraintEqualToConstant_];

  *(v1 + 56) = v13;
  return v1;
}

uint64_t sub_1BA3B7D88()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B7510;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageView;
  v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageView) centerXAnchor];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView;
  v5 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView) centerXAnchor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = [*(v0 + v2) centerYAnchor];
  v8 = [*(v0 + v4) centerYAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  return v1;
}

uint64_t sub_1BA3B7ED8()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B8B60;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_titleLabel;
  v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_titleLabel) topAnchor];
  v4 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView) bottomAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:20.0];

  *(v1 + 32) = v5;
  v6 = [*(v0 + v2) leadingAnchor];
  v7 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  v8 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView) leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:0.0];

  *(v1 + 40) = v9;
  v10 = [*(v0 + v2) trailingAnchor];
  v11 = [*(v0 + v7) trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-0.0];

  *(v1 + 48) = v12;
  return v1;
}

uint64_t sub_1BA3B80A0()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B8B60;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel;
  v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel) leadingAnchor];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  v5 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView) leadingAnchor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = [*(v0 + v2) trailingAnchor];
  v8 = [*(v0 + v4) trailingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*(v0 + v2) topAnchor];
  v11 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_titleLabel) bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:12.0];

  *(v1 + 48) = v12;
  return v1;
}

uint64_t sub_1BA3B8260()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel;
  v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel) leadingAnchor];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel;
  v5 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel) leadingAnchor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = [*(v0 + v2) trailingAnchor];
  v8 = [*(v0 + v4) trailingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*(v0 + v2) topAnchor];
  v11 = [*(v0 + v4) bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:12.0];

  *(v1 + 48) = v12;
  v13 = [*(v0 + v2) bottomAnchor];
  v14 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView) bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  return v1;
}

id sub_1BA3B8478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA3B858C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA3B85E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA3B5390();
  return sub_1B9F7B644(a1);
}

uint64_t (*sub_1BA3B8650(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA3B86B4;
}

uint64_t sub_1BA3B86B4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA3B5390();
  }

  return result;
}

uint64_t sub_1BA3B86E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA3B8748(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1BA3B8790(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1BA3B87F4()
{
  result = qword_1EBBF1D80;
  if (!qword_1EBBF1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1D80);
  }

  return result;
}

void *sub_1BA3B8848(void *result, uint64_t a2)
{
  v2 = result[2];
  if (!v2)
  {
    return result;
  }

  for (i = result + 6; ; i += 6)
  {
    v5 = *i;
    v6 = *(*i + 16);
    v7 = *a2;
    v8 = *(*a2 + 16);
    v9 = v8 + v6;
    if (__OFADD__(v8, v6))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v10 = v7[3] >> 1, v10 >= v9))
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v6;
      }

      else
      {
        v11 = v8;
      }

      result = sub_1B9F281E8(result, v11, 1, v7);
      v7 = result;
      v10 = result[3] >> 1;
      if (*(v5 + 16))
      {
LABEL_14:
        if (v10 - v7[2] < v6)
        {
          goto LABEL_21;
        }

        sub_1B9F32244();
        swift_arrayInitWithCopy();

        if (v6)
        {
          v12 = v7[2];
          v13 = __OFADD__(v12, v6);
          v14 = v12 + v6;
          if (v13)
          {
            goto LABEL_22;
          }

          v7[2] = v14;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_20;
    }

LABEL_4:
    *a2 = v7;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1BA3B8990()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v15 - v3;
  sub_1BA4A3E08();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_1BA4A3C48();
    v15[1] = sub_1BA4A3C38();
    sub_1BA3B96F8();
    v9 = sub_1BA4A6808();
    v11 = sub_1B9F0B82C(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1B9F07000, v5, v6, "FoundationPluginBundleProvider.sharedInstance: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  sub_1BA4A3C48();
  sub_1BA4A3C38();
  v12 = sub_1BA4A3B88();

  v13 = sub_1BA2FD2A8();

  return v13;
}

uint64_t sub_1BA3B8C84(void *a1)
{
  v2 = v1;
  v53 = sub_1BA4A1798();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI18FeaturesDataSource_healthRecordsPluginAccounts);
  *v6 = sub_1BA3B8990();
  v6[1] = v7;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI18FeaturesDataSource_healthStore;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI18FeaturesDataSource_healthStore) = a1;
  v57 = MEMORY[0x1E69E7CC0];
  v9 = a1;
  v10 = [v9 profileIdentifier];
  v11 = [v10 type];

  v12 = sub_1BA4A2C68();
  if (v11 == 1 && (v12 & 1) != 0)
  {
    v13 = type metadata accessor for HealthChecklistProfileDataSourceItem();
    swift_allocObject();
    v14 = sub_1BA347B24();
    v15 = sub_1B9F281E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1B9F281E8((v16 > 1), v17 + 1, 1, v15);
    }

    *(&v59 + 1) = v13;
    *&v60 = sub_1B9F324E4(&qword_1EBBF0EA0, type metadata accessor for HealthChecklistProfileDataSourceItem);
    *&v58 = v14;
    v15[2] = v17 + 1;
    sub_1B9F25598(&v58, &v15[5 * v17 + 4]);
    v57 = v15;
  }

  v18 = [v9 profileIdentifier];
  v19 = [v18 type];

  if (v19 == 1)
  {
    v20 = [*(v2 + v8) profileIdentifier];
    v21 = v20;
    if (*v6)
    {
      v22 = v6[1];
      ObjectType = swift_getObjectType();
      v24 = *(v22 + 16);
      swift_unknownObjectRetain();
      v25 = v24(v21, ObjectType, v22);
      swift_unknownObjectRelease();
      if (!v25)
      {
LABEL_11:

        goto LABEL_14;
      }

      type metadata accessor for ArrayDataSource();
      if (swift_dynamicCastClass())
      {

        sub_1BA3B8848(v26, &v57);

        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_14:
  v27 = [v9 profileIdentifier];
  v28 = [v27 type];

  if (v28 == 1)
  {
    sub_1BA2483C0(&v58);
    v29 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1B9F281E8(0, v29[2] + 1, 1, v29);
    }

    v31 = v29[2];
    v30 = v29[3];
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1B9F281E8((v30 > 1), v31 + 1, 1, v29);
    }

    v55 = &type metadata for NotificationsProfileDataSourceItem;
    v56 = sub_1BA248704();
    v32 = swift_allocObject();
    *&v54 = v32;
    v33 = v61;
    *(v32 + 48) = v60;
    *(v32 + 64) = v33;
    *(v32 + 80) = v62;
    *(v32 + 96) = v63;
    v34 = v59;
    *(v32 + 16) = v58;
    *(v32 + 32) = v34;
    v29[2] = v31 + 1;
    sub_1B9F25598(&v54, &v29[5 * v31 + 4]);
    v57 = v29;
  }

  v35 = [v9 profileIdentifier];
  v36 = [v35 type];

  if (v36 == 1 && [objc_opt_self() isOrganDonationRegistrationAvailable])
  {
    v37 = type metadata accessor for OrganDonationDataSourceItem();
    swift_allocObject();
    v38 = sub_1BA40B0D4();
    v39 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1B9F281E8(0, v39[2] + 1, 1, v39);
    }

    v41 = v39[2];
    v40 = v39[3];
    if (v41 >= v40 >> 1)
    {
      v39 = sub_1B9F281E8((v40 > 1), v41 + 1, 1, v39);
    }

    v55 = v37;
    v56 = sub_1B9F324E4(&qword_1EBBF1DA8, type metadata accessor for OrganDonationDataSourceItem);
    *&v54 = v38;
    v39[2] = v41 + 1;
    sub_1B9F25598(&v54, &v39[5 * v41 + 4]);
    v57 = v39;
  }

  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v43 = v57;
  sub_1BA4A1788();
  v44 = sub_1BA4A1748();
  v46 = v45;
  (*(v52 + 8))(v5, v53);
  v47 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v47);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v43;
  v48 = Array<A>.identifierToIndexDict()(v43);

  *(inited + 56) = v48;
  *(inited + 64) = v44;
  *(inited + 72) = v46;
  v49 = sub_1B9F1DAFC(inited, 1, sub_1BA3153B0, 0);

  return v49;
}

uint64_t sub_1BA3B9330()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1BA3B9370()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1BA3B9450()
{
  sub_1BA3B9370();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeaturesDataSource()
{
  result = qword_1EBBF1D98;
  if (!qword_1EBBF1D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA3B954C@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v5 = sub_1BA4A1318();
  v7 = v6;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v8 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v5, v7, 0, 0, 0, 0, v4, 0, 0);
  v10 = v9;
  a1[3] = v8;
  result = sub_1B9F324E4(&qword_1EDC69800, type metadata accessor for HeaderItem);
  a1[4] = result;
  *a1 = v10;
  return result;
}

void sub_1BA3B96F8()
{
  if (!qword_1EDC5F8F0)
  {
    sub_1BA4A3AE8();
    sub_1B9F324E4(&unk_1EDC5F8F8, MEMORY[0x1E69A3DF0]);
    v0 = sub_1BA4A3BA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F8F0);
    }
  }
}

uint64_t static PPTUtilities.getSelectedNavigationController(in:)(void *a1)
{
  v1 = [a1 connectedScenes];
  sub_1B9F0ADF8(0, &unk_1EDC5E1D0);
  sub_1BA3B9A88();
  v2 = sub_1BA4A6D78();

  v3 = sub_1BA1592F8(v2);

  if (!v3)
  {
    goto LABEL_23;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = [v4 windows];
  sub_1B9F0ADF8(0, &qword_1EBBF1DB0);
  v6 = sub_1BA4A6B08();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if (!sub_1BA4A7CC8())
  {
LABEL_14:

LABEL_15:

    goto LABEL_23;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1BFAF2860](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v8 rootViewController];
  if (!v9)
  {
    goto LABEL_23;
  }

  v6 = v9;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_19:

    goto LABEL_23;
  }

  v11 = [v10 selectedViewController];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;

      return v14;
    }
  }

LABEL_23:
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

unint64_t sub_1BA3B9A88()
{
  result = qword_1EDC5E1C8;
  if (!qword_1EDC5E1C8)
  {
    sub_1B9F0ADF8(255, &unk_1EDC5E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E1C8);
  }

  return result;
}

HealthExperienceUI::PPTUtilities::TestOptions::Keys_optional __swiftcall PPTUtilities.TestOptions.Keys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PPTUtilities.TestOptions.Keys.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F69746172657469;
  }

  else
  {
    return 0x656D614E74736574;
  }
}

uint64_t sub_1BA3B9B94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F69746172657469;
  }

  else
  {
    v3 = 0x656D614E74736574;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA0000000000736ELL;
  }

  if (*a2)
  {
    v5 = 0x6F69746172657469;
  }

  else
  {
    v5 = 0x656D614E74736574;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000736ELL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BA4A8338();
  }

  return v8 & 1;
}

uint64_t sub_1BA3B9C40()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA3B9CC8()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA3B9D3C()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA3B9DC0@<X0>(char *a1@<X8>)
{
  v2 = sub_1BA4A8108();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1BA3B9E20(uint64_t *a1@<X8>)
{
  v2 = 0x656D614E74736574;
  if (*v1)
  {
    v2 = 0x6F69746172657469;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000736ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PPTUtilities.TestOptions.testName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PPTUtilities.TestOptions.testName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PPTUtilities.TestOptions.iterations.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

HealthExperienceUI::PPTUtilities::TestOptions __swiftcall PPTUtilities.TestOptions.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  *&v41[0] = 0x656D614E74736574;
  *(&v41[0] + 1) = 0xE800000000000000;
  sub_1BA4A7D58();
  if (!*(a1._rawValue + 2))
  {
    goto LABEL_83;
  }

  v4 = sub_1B9FDA8E4(&v42);
  if ((v5 & 1) == 0)
  {
    goto LABEL_83;
  }

  sub_1B9F0AD9C(*(a1._rawValue + 7) + 32 * v4, v41);
  sub_1B9FDC768(&v42);
  sub_1B9F46920(v41, v44);
  sub_1B9F0AD9C(v44, &v42);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
    goto LABEL_85;
  }

  v6 = v41[0];
  *&v40[0] = 0x6F69746172657469;
  *(&v40[0] + 1) = 0xEA0000000000736ELL;
  sub_1BA4A7D58();
  if (*(a1._rawValue + 2) && (v7 = sub_1B9FDA8E4(&v42), (v8 & 1) != 0))
  {
    sub_1B9F0AD9C(*(a1._rawValue + 7) + 32 * v7, v40);
    sub_1B9FDC768(&v42);
    sub_1B9F46920(v40, v41);
    sub_1B9F0AD9C(v41, &v42);
    if (swift_dynamicCast())
    {
      v9 = *(&v40[0] + 1);
      v10 = *&v40[0];
      v11 = HIBYTE(*(&v40[0] + 1)) & 0xFLL;
      v12 = *&v40[0] & 0xFFFFFFFFFFFFLL;
      if ((*(&v40[0] + 1) & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(*(&v40[0] + 1)) & 0xFLL;
      }

      else
      {
        v13 = *&v40[0] & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        if ((*(&v40[0] + 1) & 0x1000000000000000) == 0)
        {
          if ((*(&v40[0] + 1) & 0x2000000000000000) != 0)
          {
            v42 = *&v40[0];
            v43 = *(&v40[0] + 1) & 0xFFFFFFFFFFFFFFLL;
            if (LOBYTE(v40[0]) == 43)
            {
              if (!v11)
              {
LABEL_82:
                __break(1u);
LABEL_83:
                sub_1B9FDC768(&v42);
                goto LABEL_85;
              }

              if (--v11)
              {
                v16 = 0;
                v30 = &v42 + 1;
                while (1)
                {
                  v31 = *v30 - 48;
                  if (v31 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v16, 0xAuLL))
                  {
                    break;
                  }

                  v19 = __CFADD__(10 * v16, v31);
                  v16 = 10 * v16 + v31;
                  if (v19)
                  {
                    break;
                  }

                  ++v30;
                  if (!--v11)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (LOBYTE(v40[0]) == 45)
            {
              if (!v11)
              {
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

              if (--v11)
              {
                v16 = 0;
                v25 = &v42 + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v16, 0xAuLL))
                  {
                    break;
                  }

                  v19 = 10 * v16 >= v26;
                  v16 = 10 * v16 - v26;
                  if (!v19)
                  {
                    break;
                  }

                  ++v25;
                  if (!--v11)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v11)
            {
              v16 = 0;
              v33 = &v42;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v16, 0xAuLL))
                {
                  break;
                }

                v19 = __CFADD__(10 * v16, v34);
                v16 = 10 * v16 + v34;
                if (v19)
                {
                  break;
                }

                ++v33;
                if (!--v11)
                {
                  goto LABEL_74;
                }
              }
            }
          }

          else
          {
            if ((*&v40[0] & 0x1000000000000000) != 0)
            {
              v11 = (*(&v40[0] + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v38 = *(&v40[0] + 1);
              v11 = sub_1BA4A7EB8();
              v9 = v38;
            }

            v14 = *v11;
            if (v14 == 43)
            {
              if (v12 >= 1)
              {
                v27 = v12 - 1;
                if (v12 != 1)
                {
                  v16 = 0;
                  if (!v11)
                  {
                    goto LABEL_74;
                  }

                  v28 = (v11 + 1);
                  while (1)
                  {
                    v29 = *v28 - 48;
                    if (v29 > 9)
                    {
                      break;
                    }

                    if (!is_mul_ok(v16, 0xAuLL))
                    {
                      break;
                    }

                    v19 = __CFADD__(10 * v16, v29);
                    v16 = 10 * v16 + v29;
                    if (v19)
                    {
                      break;
                    }

                    ++v28;
                    if (!--v27)
                    {
LABEL_65:
                      LOBYTE(v11) = 0;
                      goto LABEL_74;
                    }
                  }
                }

                goto LABEL_73;
              }

              goto LABEL_81;
            }

            if (v14 == 45)
            {
              if (v12 >= 1)
              {
                v15 = v12 - 1;
                if (v12 != 1)
                {
                  v16 = 0;
                  if (!v11)
                  {
                    goto LABEL_74;
                  }

                  v17 = (v11 + 1);
                  while (1)
                  {
                    v18 = *v17 - 48;
                    if (v18 > 9)
                    {
                      break;
                    }

                    if (!is_mul_ok(v16, 0xAuLL))
                    {
                      break;
                    }

                    v19 = 10 * v16 >= v18;
                    v16 = 10 * v16 - v18;
                    if (!v19)
                    {
                      break;
                    }

                    ++v17;
                    if (!--v15)
                    {
                      goto LABEL_65;
                    }
                  }
                }

                goto LABEL_73;
              }

              __break(1u);
              goto LABEL_80;
            }

            if (v12)
            {
              v16 = 0;
              if (!v11)
              {
                goto LABEL_74;
              }

              while (1)
              {
                v32 = *v11 - 48;
                if (v32 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v16, 0xAuLL))
                {
                  break;
                }

                v19 = __CFADD__(10 * v16, v32);
                v16 = 10 * v16 + v32;
                if (v19)
                {
                  break;
                }

                ++v11;
                if (!--v12)
                {
                  goto LABEL_65;
                }
              }
            }
          }

LABEL_73:
          v16 = 0;
          LOBYTE(v11) = 1;
LABEL_74:
          LOBYTE(v40[0]) = v11;
          if ((v11 & 1) == 0)
          {
LABEL_75:

            __swift_destroy_boxed_opaque_existential_1(v41);
            v20 = __swift_destroy_boxed_opaque_existential_1(v44);
            v24 = 0;
            goto LABEL_29;
          }

          goto LABEL_77;
        }

        v39 = *(&v40[0] + 1);

        v16 = sub_1BA3BAA4C(v10, v39, 10);
        v36 = v35;

        v9 = v39;
        if ((v36 & 1) == 0)
        {
          goto LABEL_75;
        }
      }

LABEL_77:
      v42 = 0;
      v43 = 0xE000000000000000;
      v37 = v9;
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](0xD00000000000003ELL, 0x80000001BA5054E0);
      MEMORY[0x1BFAF1350](v10, v37);
LABEL_85:
      v20 = sub_1BA4A8018();
      __break(1u);
      goto LABEL_86;
    }

    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {

    sub_1B9FDC768(&v42);
  }

  v20 = __swift_destroy_boxed_opaque_existential_1(v44);
  v16 = 0;
  v24 = 1;
LABEL_29:
  *v3 = v6;
  *(v3 + 16) = v16;
  *(v3 + 24) = v24;
LABEL_86:
  result.iterations.value = v22;
  result.testName._object = v21;
  result.testName._countAndFlagsBits = v20;
  result.iterations.is_nil = v23;
  return result;
}

unsigned __int8 *sub_1BA3BA4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1BA4A69D8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BA3BB058();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BA4A7EB8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1BA3BAA4C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1BA4A69D8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BA3BB058();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BA4A7EB8();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
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

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unint64_t sub_1BA3BAFD4()
{
  result = qword_1EBBF1DB8;
  if (!qword_1EBBF1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1DB8);
  }

  return result;
}

uint64_t sub_1BA3BB058()
{
  v0 = sub_1BA4A69E8();
  v4 = sub_1BA3BB0D8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1BA3BB0D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1BA4A7AE8();
    if (!v9 || (v10 = v9, v11 = sub_1B9F2D098(v9, 0), v12 = sub_1BA3BB230(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1BA4A68B8();

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
      return sub_1BA4A68B8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1BA4A7EB8();
LABEL_4:

  return sub_1BA4A68B8();
}

unint64_t sub_1BA3BB230(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1BA3BB450(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BA4A6968();
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
          result = sub_1BA4A7EB8();
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

    result = sub_1BA3BB450(v12, a6, a7);
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

    result = sub_1BA4A6948();
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

uint64_t sub_1BA3BB450(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BA4A6978();
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
    v5 = MEMORY[0x1BFAF1390](15, a1 >> 16);
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

uint64_t ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v18 = *a10;
  v19 = type metadata accessor for ContentConfigurationItem();
  *(a9 + v19[12]) = 0;
  *(a9 + v19[13]) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  sub_1B9F25598(a3, a9 + 72);
  *(a9 + 112) = v18;
  *(a9 + 120) = a4;
  v20 = *(a5 + 16);
  *(a9 + 16) = *a5;
  *(a9 + 32) = v20;
  *(a9 + 48) = *(a5 + 32);
  result = sub_1B9F2F728(a6, a9 + v19[10]);
  *(a9 + 56) = a11;
  *(a9 + 64) = a12;
  v22 = (a9 + v19[11]);
  *v22 = a7;
  v22[1] = a8;
  return result;
}

uint64_t ContentConfigurationItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContentConfigurationItem.reuseIdentifier.getter()
{
  if (*(v0 + 112))
  {
    type metadata accessor for ContentConfigurationTableViewCell();
    v1 = &unk_1EBBF1DC0;
    v2 = type metadata accessor for ContentConfigurationTableViewCell;
  }

  else
  {
    type metadata accessor for ContentConfigurationCollectionViewListCell();
    v1 = &qword_1EDC601D0;
    v2 = type metadata accessor for ContentConfigurationCollectionViewListCell;
  }

  sub_1B9F2F9B0(0, v1, v2);
  return sub_1BA4A6808();
}

uint64_t ContentConfigurationItem.baseIdentifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ContentConfigurationItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

void *ContentConfigurationItem.leadingSwipeActionsConfigurationProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContentConfigurationItem() + 48));
  v2 = v1;
  return v1;
}

void ContentConfigurationItem.leadingSwipeActionsConfigurationProvider.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentConfigurationItem() + 48);

  *(v1 + v3) = a1;
}

void *ContentConfigurationItem.trailingSwipeActionsConfigurationProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContentConfigurationItem() + 52));
  v2 = v1;
  return v1;
}

void ContentConfigurationItem.trailingSwipeActionsConfigurationProvider.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentConfigurationItem() + 52);

  *(v1 + v3) = a1;
}

void *sub_1BA3BB878(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  v3 = v2;
  return v2;
}

void *sub_1BA3BB8A4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = v2;
  return v2;
}

uint64_t ContentConfigurationItem.updateContentConfiguration(for:using:)(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for ContentConfigurationItem();
  v6 = (v2 + *(result + 44));
  if (*v6)
  {
    return (*v6)(a1, a2);
  }

  return result;
}

uint64_t ContentConfigurationItem.makeBackgroundContentConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContentConfigurationItem() + 40);

  return sub_1B9F66128(v3, a1);
}

Swift::Void __swiftcall ContentConfigurationItem.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  sub_1B9F2F698(v2 + 16, v7);
  v5 = v8;
  if (v8)
  {
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 16))(_, in, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1B9F2F610(v7);
  }
}

uint64_t ContentConfigurationItem.deselectionBehavior(in:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1B9F2F698(v2 + 16, v9 + 1);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1((v9 + 1), v10);
    (*(v6 + 24))(v9, a1, v5, v6);
    v7 = v9[0];
    result = __swift_destroy_boxed_opaque_existential_1(v9 + 1);
  }

  else
  {
    result = sub_1B9F2F610(v9 + 1);
    v7 = 2;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1BA3BBAD8(uint64_t a1, uint64_t a2)
{
  sub_1B9F2F698(v2 + 16, v8);
  v5 = v9;
  if (!v9)
  {
    return sub_1B9F2F610(v8);
  }

  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 16))(a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1BA3BBC44(void *a1, void *a2)
{
  v3 = v2;
  sub_1B9F0A534(v3 + 16, &v21);
  v20[0] = a1;
  v20[1] = a2;
  sub_1B9F0A534(v3 + 16, v17);
  v6 = v18;
  v7 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v8 = *(v7 + 80);
  v9 = a1;
  v10 = a2;
  v11 = v8(v20, v6, v7);
  if (v11)
  {
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v17);
    v13 = *(v3 + 80);
    *(v3 + 80) = v12;
    v14 = v12;

    v15 = *(v3 + 56);

    v15(v14);

    return sub_1BA0C3344(v20);
  }

  else
  {
    sub_1BA0C3344(v20);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }
}

uint64_t sub_1BA3BBD50()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3BBDCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA3BBE14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA3BBE98()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI25DownloadingDataDataSource_downloadingItem;
  v7 = type metadata accessor for DownloadingDataItem();
  v8 = swift_allocObject();
  *(v1 + v6) = v8;
  sub_1B9F28360();
  v9 = swift_allocObject();
  v17 = xmmword_1BA4B5480;
  *(v9 + 16) = xmmword_1BA4B5480;
  *(v9 + 56) = v7;
  *(v9 + 64) = sub_1BA39C588();
  *(v9 + 32) = v8;

  sub_1BA4A1788();
  v10 = sub_1BA4A1748();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v14 = Array<A>.identifierToIndexDict()(v13);

  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = v17;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v9;
  *(inited + 56) = v14;
  *(inited + 64) = v10;
  *(inited + 72) = v12;
  return sub_1B9F1DAFC(inited, 1, sub_1BA3BC05C, 0);
}

void *sub_1BA3BC05C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EBBE8850 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EBBF0B98);
  sub_1B9F37E38(v7, v6);
  v6[6] = 0x4034000000000000;
  v6[7] = 0;
  v6[8] = 0;
  v6[9] = 0;
  v8 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v6);
  return v8;
}

uint64_t DownloadingDataDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DownloadingDataDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DownloadingDataDataSource()
{
  result = qword_1EBBF1DC8;
  if (!qword_1EBBF1DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *HKTCategoryViewFactory.makeViewController(typeGroup:context:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v23 = *a1;
  v24 = v4;
  v25 = v6;
  v26 = v5;
  v27 = v8;
  v28 = v7;
  v9 = HKTypeGroup.displayCategory.getter();
  v10 = [v9 categoryID];

  if (v10 <= 5)
  {
    if ((v10 - 1) >= 2 && v10 != 4)
    {
      if (v10 == 5)
      {
        v17 = v3;
        v18 = v4;
        v19 = v6;
        v20 = v5;
        v21 = v8;
        v22 = v7;
        v15 = 0x80000001BA4E94E0;
        v12 = 0xD000000000000021;
        return HKTCategoryViewFactory.createViewController(hkTypeGroup:pluginName:context:)(&v17, v12, v15, a2);
      }

      goto LABEL_18;
    }

LABEL_12:
    v23 = v3;
    v24 = v4;
    v25 = v6;
    v26 = v5;
    v27 = v8;
    v28 = v7;
    return sub_1BA3A7EE8(&v23, a2);
  }

  if (v10 > 0x1F)
  {
    goto LABEL_18;
  }

  if (((1 << v10) & 0x4807C40) != 0)
  {
    goto LABEL_12;
  }

  if (v10 == 8)
  {
    v17 = v3;
    v18 = v4;
    v19 = v6;
    v20 = v5;
    v21 = v8;
    v22 = v7;
    v11 = "ugin.healthplugin";
    v12 = 0xD000000000000025;
    goto LABEL_16;
  }

  if (v10 == 31)
  {
    v17 = v3;
    v18 = v4;
    v19 = v6;
    v20 = v5;
    v21 = v8;
    v22 = v7;
    v11 = "hAppPlugin.healthplugin";
    v12 = 0xD000000000000027;
LABEL_16:
    v15 = v11 | 0x8000000000000000;
    return HKTCategoryViewFactory.createViewController(hkTypeGroup:pluginName:context:)(&v17, v12, v15, a2);
  }

LABEL_18:
  sub_1B9FCB51C();
  swift_allocError();
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 3;
  return swift_willThrow();
}

uint64_t sub_1BA3BC63C()
{
  if (*v0 <= 1u)
  {
    if (*v0)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_12;
  }

  if (*v0 == 2)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_12;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA3BC8D0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA3BC92C(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA3BC9C4(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA3BD624();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA3BCA34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA3BCA8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA3BD624();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA3BCAF8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA3BCB5C;
}

void sub_1BA3BCB5C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA3BD624();
  }
}

id ProfileContactOptionsCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ProfileContactOptionsCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_allOptionsStack;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAlignment_];
  [v11 setSpacing_];
  [v11 setLayoutMarginsRelativeArrangement_];
  [v11 setDirectionalLayoutMargins_];

  *&v4[v10] = v11;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView;
  v13 = [objc_opt_self() effectWithStyle_];
  v14 = [objc_opt_self() effectForBlurEffect:v13 style:4];

  v15 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v15;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___compactConstraints] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___nonCompactConstraints] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ProfileContactOptionsCell();
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA3BCE50();

  return v16;
}

id sub_1BA3BCE50()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView;
  v3 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView] contentView];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_allOptionsStack;
  [v3 addSubview_];

  [v0 addSubview_];
  [*&v0[v2] hk:*&v0[v4] alignConstraintsWithView:?];
  v5 = objc_opt_self();
  sub_1B9F109F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B7510;
  v7 = [*&v0[v2] topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [*&v0[v2] bottomAnchor];
  v11 = [v0 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v13 = sub_1BA4A6AE8();

  [v5 activateConstraints_];

  sub_1BA3BD520();
  [*&v0[v4] setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v0[v4];

  return [v14 setAxis_];
}

uint64_t sub_1BA3BD09C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___compactConstraints;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___compactConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___compactConstraints];
  }

  else
  {
    v2 = sub_1BA3BD104(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1BA3BD104(char *a1)
{
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B8B60;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView;
  v4 = [*&a1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView] centerXAnchor];
  v5 = [a1 centerXAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v7 = [*&a1[v3] leadingAnchor];
  v8 = [a1 leadingAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor_];

  *(v2 + 40) = v9;
  v10 = [*&a1[v3] trailingAnchor];
  v11 = [a1 trailingAnchor];
  v12 = [v10 constraintLessThanOrEqualToAnchor_];

  *(v2 + 48) = v12;
  return v2;
}

uint64_t sub_1BA3BD284()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___nonCompactConstraints;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___nonCompactConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___nonCompactConstraints];
  }

  else
  {
    sub_1B9F109F8();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B7510;
    v3 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView;
    v4 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView] leadingAnchor];
    v5 = [v0 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    *(v2 + 32) = v6;
    v7 = [*&v0[v3] trailingAnchor];
    v8 = [v0 trailingAnchor];
    v9 = [v7 constraintLessThanOrEqualToAnchor_];

    *(v2 + 40) = v9;
    *&v0[v1] = v2;
  }

  return v2;
}

void sub_1BA3BD3DC(uint64_t a1)
{
  v2 = objc_opt_self();
  if (a1 == 1)
  {
    sub_1BA3BD284();
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v3 = sub_1BA4A6AE8();

    [v2 deactivateConstraints_];

    sub_1BA3BD09C();
  }

  else
  {
    sub_1BA3BD09C();
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v4 = sub_1BA4A6AE8();

    [v2 deactivateConstraints_];

    sub_1BA3BD284();
  }

  v5 = sub_1BA4A6AE8();

  [v2 activateConstraints_];
}

uint64_t sub_1BA3BD520()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  sub_1BA3BD3DC(v2);
  sub_1B9F7A684();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  v4 = sub_1BA4A4438();
  v5 = MEMORY[0x1E69DC130];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7708();
  swift_unknownObjectRelease();
}

void sub_1BA3BD624()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v5, v16);
  if (v16[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    type metadata accessor for ProfileContactOptionsItem();
    if (swift_dynamicCast())
    {
      v6 = v15;
      sub_1BA3BD888(v15);

      return;
    }
  }

  else
  {
    sub_1B9F7B644(v16);
  }

  sub_1BA4A3E28();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%s] item is not an ProfileContactOptionsItem", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
}

void sub_1BA3BD888(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_allOptionsStack;
  v4 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_allOptionsStack) arrangedSubviews];
  sub_1B9F0ADF8(0, &qword_1EDC6B4A0);
  v5 = sub_1BA4A6B08();

  if (v5 >> 62)
  {
    v6 = sub_1BA4A7CC8();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {

    sub_1BA3BDD98();
  }

  else
  {
    v7 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_contactOptions);
    v8 = *(v7 + 16);
    if (v8)
    {
      v33 = objc_opt_self();
      v32 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_isDisabled);
      v9 = (v7 + 32);
      swift_beginAccess();
      v31 = type metadata accessor for ContactQuickActionView();
      v35 = v1;
      v34 = v3;
      do
      {
        v10 = *v9++;
        v11 = *(v35 + v34);
        Strong = swift_unknownObjectWeakLoadStrong();
        v12 = objc_allocWithZone(v31);
        swift_unknownObjectWeakInit();
        *&v12[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate + 8] = 0;
        v13 = swift_unknownObjectWeakInit();
        v14 = &v12[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction];
        *v14 = 0;
        v14[1] = 0;
        *&v12[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView] = 0;
        *&v12[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___heightConstraint] = 0;
        v12[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactQuickActionType] = v10;
        *(v13 + 8) = &off_1F380BB18;
        swift_unknownObjectWeakAssign();
        v12[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled] = v32;
        swift_unknownObjectWeakAssign();
        v37 = v11;
        v15 = [v33 systemBlackColor];
        v16 = [v15 colorWithAlphaComponent_];

        v17 = [v33 systemBlackColor];
        v18 = [v17 colorWithAlphaComponent_];

        *&v12[OBJC_IVAR____TtC18HealthExperienceUI29BackgroundHighlightableButton_regularColor] = v16;
        *&v12[OBJC_IVAR____TtC18HealthExperienceUI29BackgroundHighlightableButton_highlightedColor] = v18;
        v19 = type metadata accessor for BackgroundHighlightableButton();
        v38.receiver = v12;
        v38.super_class = v19;
        v20 = v16;
        v21 = v18;
        v22 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        [v22 setBackgroundColor_];

        v23 = OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled;
        if (*(v22 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled))
        {
          v24 = 0.3;
        }

        else
        {
          v24 = 1.0;
        }

        v25 = v22;
        [v25 setAlpha_];
        [v25 setUserInteractionEnabled_];
        v26 = sub_1BA3BE24C();
        [v25 addSubview_];

        sub_1BA3BE778();
        sub_1BA3BEBCC();
        sub_1BA3BE9CC();
        sub_1BA3BEDC8();
        ContactQuickActionType.baseIdentifier.getter();
        v27 = sub_1BA4A6758();
        [v25 setAccessibilityIdentifier_];

        v28 = *&v25[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView];

        MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
        v29 = sub_1BA4A6758();

        [v28 setAccessibilityIdentifier_];

        sub_1BA3BC63C();
        v30 = sub_1BA4A6758();

        [v25 setAccessibilityLabel_];

        [v37 addArrangedSubview_];
        --v8;
      }

      while (v8);
    }
  }
}

uint64_t sub_1BA3BDD98()
{
  swift_getObjectType();
  v1 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_allOptionsStack) arrangedSubviews];
  sub_1B9F0ADF8(0, &qword_1EDC6B4A0);
  v2 = sub_1BA4A6B08();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFAF2860](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = v5;
      sub_1BA3BDEF8(&v9);

      ++v4;
      if (v7 == i)
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
}

void sub_1BA3BDEF8(void **a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  type metadata accessor for ContactQuickActionView();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    *(v8 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate + 8) = &off_1F380BB18;
    swift_unknownObjectWeakAssign();
    v9 = v7;
    sub_1BA3BEDC8();
  }

  else
  {
    sub_1BA4A3DD8();
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[1] = v1;
      v14 = v13;
      v19 = v13;
      *v12 = 136315138;
      v15 = sub_1BA4A85D8();
      v17 = sub_1B9F0B82C(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%s] subview is not type ContactQuickActionView", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void (*sub_1BA3BE1B4(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

id sub_1BA3BE24C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView);
  }

  else
  {
    v4 = sub_1BA3BE2B0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA3BE2B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setContentMode_];

  [v0 setUserInteractionEnabled_];
  v1 = sub_1BA4A6758();

  v2 = [objc_opt_self() systemImageNamed_];

  [v0 setImage_];
  return v0;
}

uint64_t ContactQuickActionType.baseIdentifier.getter()
{
  v1 = *v0;
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD000000000000017, 0x80000001BA505610);

  if (v1 > 1)
  {
    if (v1 == 2)
    {

      v2 = 0x656D695465636146;
      v3 = 0xE800000000000000;
      goto LABEL_9;
    }

    v2 = 1868983881;
LABEL_8:
    v3 = 0xE400000000000000;
    goto LABEL_9;
  }

  if (v1)
  {

    v2 = 1819042115;
    goto LABEL_8;
  }

  v2 = 0x6567617373654DLL;
  v3 = 0xE700000000000000;
LABEL_9:
  MEMORY[0x1BFAF1350](v2, v3);

  return v5;
}

uint64_t sub_1BA3BE778()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v4 = MEMORY[0x1E69DDD40];
  if (v2 != 1)
  {
    v4 = MEMORY[0x1E69DDD80];
  }

  v5 = *v4;
  v6 = sub_1B9F6B774(v5, 0, 1, 0, 0, *MEMORY[0x1E69DDC40], 1);
  v7 = objc_opt_self();
  v8 = [v7 configurationWithFont_];

  v9 = [v7 configurationWithScale_];
  v10 = [v8 configurationByApplyingConfiguration_];
  v11 = sub_1BA3BE24C();
  [v11 setPreferredSymbolConfiguration_];

  v12 = [v0 traitCollection];
  v13 = [v12 horizontalSizeClass];

  v14 = sub_1BA3BEAD0();
  v15 = v14;
  v16 = 48.0;
  if (v13 == 1)
  {
    v16 = 64.0;
  }

  [v14 setConstant_];

  sub_1B9F7A684();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5480;
  v18 = sub_1BA4A4438();
  v19 = MEMORY[0x1E69DC130];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7708();
  swift_unknownObjectRelease();
}

uint64_t sub_1BA3BE9CC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  sub_1BA3BFAD4(v2);
  sub_1B9F7A684();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  v4 = sub_1BA4A4178();
  v5 = MEMORY[0x1E69DC0F8];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7708();
  swift_unknownObjectRelease();
}

id sub_1BA3BEAD0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___heightConstraint;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___heightConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___heightConstraint];
  }

  else
  {
    v4 = [v0 heightAnchor];
    v5 = [v0 traitCollection];
    v6 = [v5 horizontalSizeClass];

    v7 = 48.0;
    if (v6 == 1)
    {
      v7 = 64.0;
    }

    v8 = [v4 constraintEqualToConstant_];

    [v8 setActive_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1BA3BEBCC()
{
  v1 = objc_opt_self();
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B8B60;
  v3 = [v0 widthAnchor];
  v4 = [v0 heightAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 multiplier:1.0];

  *(v2 + 32) = v5;
  v6 = sub_1BA3BE24C();
  v7 = [v6 centerYAnchor];

  v8 = [v0 centerYAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v2 + 40) = v9;
  v10 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView] centerXAnchor];
  v11 = [v0 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v2 + 48) = v12;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v13 = sub_1BA4A6AE8();

  [v1 activateConstraints_];
}

void sub_1BA3BEDC8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_41;
  }

  v7 = *(v6 + 1);
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactQuickActionType;
  v56 = v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactQuickActionType];
  LOBYTE(v7) = (*(v7 + 64))(&v56, ObjectType, v7);
  swift_unknownObjectRelease();
  if (v7)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v6 + 1);
      v11 = swift_getObjectType();
      v54[0] = v0[v9];
      Strong = swift_unknownObjectWeakLoadStrong();
      v53 = (*(v10 + 56))(v54, Strong, v11, v10);

      swift_unknownObjectRelease();
      if (v53)
      {
        v13 = [v53 children];
        sub_1B9F0ADF8(0, &qword_1EBBF3400);
        v14 = sub_1BA4A6B08();

        if (v14 >> 62)
        {
          v15 = sub_1BA4A7CC8();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v15)
        {
          v45 = OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled;
          v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled] = 1;
          [v1 setAlpha_];
          [v1 setUserInteractionEnabled_];
LABEL_36:
          v50 = v53;

          return;
        }

        [v0 setMenu_];
        v16 = [v53 children];
        v17 = sub_1BA4A6B08();

        if (v17 >> 62)
        {
          v18 = sub_1BA4A7CC8();
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v18 != 1)
        {
          [v0 setShowsMenuAsPrimaryAction_];
          goto LABEL_36;
        }

        v19 = [v53 children];
        v20 = sub_1BA4A6B08();

        if (v20 >> 62)
        {
          if (sub_1BA4A7CC8())
          {
            goto LABEL_13;
          }
        }

        else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_13:
          if ((v20 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1BFAF2860](0, v20);
LABEL_16:
            v22 = v21;

            objc_opt_self();
            v23 = swift_dynamicCastObjCClass();
            if (v23)
            {
              v24 = [v23 discoverabilityTitle];

              if (v24)
              {
                v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
                v27 = v26;

LABEL_35:
                v46 = swift_allocObject();
                *(v46 + 2) = v1;
                *(v46 + 3) = v25;
                *(v46 + 4) = v27;
                v47 = &v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction];
                v48 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction];
                *v47 = sub_1BA3BFF44;
                v47[1] = v46;
                v49 = v1;
                sub_1B9F0E310(v48);
                [v49 addTarget:v49 action:sel_buttonTapped_ forControlEvents:64];
                goto LABEL_36;
              }
            }

            else
            {
            }

LABEL_34:
            v25 = 0;
            v27 = 0;
            goto LABEL_35;
          }

          if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v21 = *(v20 + 32);
            goto LABEL_16;
          }

          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        goto LABEL_34;
      }
    }

    v40 = swift_allocObject();
    *(v40 + 16) = v0;
    v41 = &v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction];
    v42 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction];
    *v41 = sub_1BA3BFF3C;
    v41[1] = v40;
    v43 = v1;
    sub_1B9F0E310(v42);

    [v43 addTarget:v43 action:sel_buttonTapped_ forControlEvents:64];
  }

  else
  {
    sub_1BA4A3DD8();
    v28 = v0;
    v29 = sub_1BA4A3E88();
    v30 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v55 = v52;
      *v31 = 136315394;
      v32 = sub_1BA4A85D8();
      v34 = sub_1B9F0B82C(v32, v33, &v55);
      v53 = v2;
      v35 = v34;

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v54[1] = v1[v9];
      v36 = sub_1BA4A6808();
      v38 = sub_1B9F0B82C(v36, v37, &v55);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_1B9F07000, v29, v30, "[%s] No action is available for %s. Disabling button.", v31, 0x16u);
      v39 = v52;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      MEMORY[0x1BFAF43A0](v31, -1, -1);

      (*(v3 + 8))(v5, v53);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v44 = OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled;
    v28[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled] = 1;
    [v28 setAlpha_];
    [v28 setUserInteractionEnabled_];
  }
}

uint64_t sub_1BA3BF49C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = &a1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v11 = a1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactQuickActionType];
    v10 = [a1 viewController];
    (*(v8 + 48))(&v11, a2, a3, v10, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA3BF568(_BYTE *a1)
{
  v2 = &a1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v7 = a1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactQuickActionType];
    v6 = [a1 viewController];
    sub_1BA48A278(&v7, 0, 0, v6, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BA3BF674(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v4 = sub_1BA3BE24C();

    MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v5 = sub_1BA3BE24C();
    [v5 setAccessibilityIdentifier_];
  }
}

void sub_1BA3BF76C()
{
  MEMORY[0x1BFAF44B0](v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_presentingViewController);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate);
  sub_1B9F0E310(*(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction));

  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___heightConstraint);
}

id sub_1BA3BF7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BA3BF8FC(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a1 traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 != [a2 horizontalSizeClass])
    {
      if (v7 == 1)
      {
        v8 = 64.0;
      }

      else
      {
        v8 = 48.0;
      }

      if (v7 == 1)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = MEMORY[0x1E69DDD40];
      if (v7 != 1)
      {
        v10 = MEMORY[0x1E69DDD80];
      }

      v11 = *v10;
      v12 = sub_1B9F6B774(v11, 0, 1, 0, 0, *MEMORY[0x1E69DDC40], 1);
      v13 = objc_opt_self();
      v14 = [v13 configurationWithFont_];

      v15 = [v13 configurationWithScale_];
      v16 = [v14 configurationByApplyingConfiguration_];
      v17 = sub_1BA3BE24C();
      [v17 setPreferredSymbolConfiguration_];

      v18 = sub_1BA3BEAD0();
      [v18 setConstant_];

      v5 = v18;
    }
  }
}

void sub_1BA3BFAD4(uint64_t a1)
{
  v3 = objc_opt_self();
  if (a1 == 2)
  {
    v4 = [v3 secondarySystemFillColor];
  }

  else
  {
    v5 = [v3 systemBlackColor];
    v4 = [v5 colorWithAlphaComponent_];
  }

  v6 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI29BackgroundHighlightableButton_regularColor];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI29BackgroundHighlightableButton_regularColor] = v4;
  v7 = v4;

  [v1 setBackgroundColor_];
}

void sub_1BA3BFBB8(void *a1, void *a2, uint64_t a3, SEL *a4, void (*a5)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [a1 traitCollection];
    v12 = [v11 *a4];

    if (v12 != [a2 *a4])
    {
      a5(v12);
    }
  }
}

id sub_1BA3BFC74()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*v0)
  {
    v6 = 0;
    if (v5 != 1)
    {
      return v6;
    }

    v7 = 0xE500000000000000;
    v8 = 0x656E6F6870;
  }

  else
  {
    v7 = 0xE700000000000000;
    v8 = 0x6567617373656DLL;
  }

  v9 = sub_1BA4A6758();

  v6 = [objc_opt_self() systemImageNamed_];

  if (v6)
  {
  }

  else
  {
    sub_1BA4A3E28();

    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v12 = 136315650;
      *(v12 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA505860, &v22);
      *(v12 + 12) = 2080;
      v13 = sub_1B9F0B82C(v8, v7, &v22);

      *(v12 + 14) = v13;
      *(v12 + 22) = 2080;
      v21 = v5;
      v14 = sub_1BA3BC63C();
      v16 = sub_1B9F0B82C(v14, v15, &v22);

      *(v12 + 24) = v16;
      _os_log_impl(&dword_1B9F07000, v10, v11, "%s Unable to look up system symbol named %s for %s", v12, 0x20u);
      v17 = v20;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return v6;
}

void sub_1BA3BFF50()
{
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_allOptionsStack;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAlignment_];
  [v3 setSpacing_];
  [v3 setLayoutMarginsRelativeArrangement_];
  [v3 setDirectionalLayoutMargins_];

  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView;
  v5 = [objc_opt_self() effectWithStyle_];
  v6 = [objc_opt_self() effectForBlurEffect:v5 style:4];

  v7 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v7;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___compactConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___nonCompactConstraints) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA3C0134()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___heightConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA3C01E4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A1728();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 viewController];
  if (v11)
  {

    if (v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactQuickActionType] != 3)
    {
      sub_1BA4A1718();
      sub_1B9F0ADF8(0, &qword_1EDC6B610);
      v12 = sub_1BA4A70E8();
      sub_1BA4A1628();
      v13 = sub_1BA4A1A08();
      [v12 setValue:v13 forKey:*MEMORY[0x1E696C898]];

      (*(v7 + 8))(v10, v6);
    }

    v14 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction];
    if (v14)
    {

      v14(v15);
      sub_1B9F0E310(v14);
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = sub_1BA4A85D8();
      v22 = sub_1B9F0B82C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1B9F07000, v16, v17, "[%s] Could not get presenting view controller", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t PersonalizedFeedTrainer.__allocating_init(delegate:dwellPolicy:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v8 = sub_1B9F47720(a1, a3, v6, ObjectType, a2);
  swift_unknownObjectRelease();
  return v8;
}

Swift::Void __swiftcall PersonalizedFeedTrainerDelegate.submitTrainingEvents(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = *(a1._rawValue + 2);
  if (v11)
  {
    sub_1BA4A3DB8();

    swift_unknownObjectRetain();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v4;
      v16 = v15;
      v33 = v15;
      *v14 = 134349314;
      *(v14 + 4) = v11;

      *(v14 + 12) = 2082;
      v32 = v2;
      swift_unknownObjectRetain();
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v33);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Received %{public}ld training events; sending training events to RelevanceEngine over XPC; %{public}s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);

      (*(v5 + 8))(v10, v31);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    v27 = objc_allocWithZone(sub_1BA4A34A8());

    v28 = sub_1BA4A3498();
    sub_1B9F0ADF8(0, &qword_1EDC6B5F0);
    v29 = sub_1BA4A71A8();
    [v29 addOperation_];
  }

  else
  {
    sub_1BA4A3DB8();
    swift_unknownObjectRetain();
    v20 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v2;
      v33 = v23;
      *v22 = 136446210;
      swift_unknownObjectRetain();
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v33);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1B9F07000, v20, v21, "SubmitTrainingOperation called with no training events; %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t static PersonalizedFeedTrainer.contentKindsEligibleForTraining.getter()
{
  if (qword_1EDC6CB58 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BA3C09E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DB8();
  (*(v5 + 16))(v7, a1, v4);

  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6F88();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v8;
    v14 = v13;
    v24 = swift_slowAlloc();
    v29 = v24;
    *v14 = 136315394;
    sub_1B9F85D08(&qword_1EDC6E448, MEMORY[0x1E6969530]);
    v15 = sub_1BA4A82D8();
    v26 = a1;
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    v18 = sub_1B9F0B82C(v15, v17, &v29);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v28 = v2;
    type metadata accessor for PersonalizedFeedTrainer();

    v19 = sub_1BA4A6808();
    v21 = sub_1B9F0B82C(v19, v20, &v29);

    *(v14 + 14) = v21;
    a1 = v26;
    _os_log_impl(&dword_1B9F07000, v11, v12, "feedDidEndDisplay at date %s; %{public}s", v14, 0x16u);
    v22 = v24;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);

    (*(v27 + 8))(v10, v25);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v27 + 8))(v10, v8);
  }

  return sub_1BA3C1644(a1);
}

uint64_t sub_1BA3C0D3C(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v85 = *(v2 - 8);
  v86 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v83 = &v75 - v5;
  v6 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v77 = sub_1BA4A3B08();
  v7 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A15D8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v80 = sub_1BA4A3B48();
  v84 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v75 - v17;
  v18 = sub_1BA4A1C68();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB58 != -1)
  {
    swift_once();
  }

  v22 = off_1EDC6CB60;
  sub_1BA4A26B8();
  LOBYTE(v22) = sub_1BA3D2E98(v21, v22);
  v23 = *(v19 + 8);
  v23(v21, v18);
  if (v22)
  {
    v24 = [a1 objectID];
    v25 = [v24 URIRepresentation];

    sub_1BA4A1588();
    (*(v7 + 104))(v9, *MEMORY[0x1E69A3DF8], v77);
    sub_1BA4A1718();
    v26 = v87;
    sub_1BA4A3B28();
    v27 = v83;
    sub_1BA4A3DB8();
    v28 = v84;
    v29 = *(v84 + 16);
    v30 = v78;
    v31 = v80;
    v29(v78, v26, v80);
    v32 = a1;
    v33 = sub_1BA4A3E88();
    v34 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      LODWORD(v77) = v34;
      v36 = v35;
      v82 = swift_slowAlloc();
      v88[0] = v82;
      *v36 = 136315394;
      v37 = [v32 uniqueIdentifier];
      v38 = v29;
      v39 = v30;
      v40 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v42 = v41;

      v43 = sub_1B9F0B82C(v40, v42, v88);
      v28 = v84;

      *(v36 + 4) = v43;
      *(v36 + 12) = 2080;
      v38(v76, v39, v31);
      v44 = sub_1BA4A6808();
      v46 = v45;
      v47 = *(v28 + 8);
      v48 = v39;
      v29 = v38;
      v47(v48, v31);
      v49 = sub_1B9F0B82C(v44, v46, v88);

      *(v36 + 14) = v49;
      _os_log_impl(&dword_1B9F07000, v33, v77, "Creating tap training for feedItem %s: %s", v36, 0x16u);
      v50 = v82;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v50, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);

      (*(v85 + 8))(v83, v86);
    }

    else
    {

      v68 = v30;
      v47 = *(v28 + 8);
      v47(v68, v31);
      (*(v85 + 8))(v27, v86);
    }

    v69 = v81;
    v70 = v79;
    v29(v79, v87, v31);
    swift_beginAccess();
    v71 = *(v69 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v69 + 32) = v71;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v71 = sub_1BA27F128(0, v71[2] + 1, 1, v71);
      *(v69 + 32) = v71;
    }

    v74 = v71[2];
    v73 = v71[3];
    if (v74 >= v73 >> 1)
    {
      v71 = sub_1BA27F128(v73 > 1, v74 + 1, 1, v71);
    }

    v71[2] = v74 + 1;
    (*(v28 + 32))(v71 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v74, v70, v31);
    *(v69 + 32) = v71;
    swift_endAccess();
    return (v47)(v87, v31);
  }

  else
  {
    v51 = v82;
    sub_1BA4A3DB8();
    v52 = a1;
    v53 = sub_1BA4A3E88();
    v54 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88[0] = v87;
      *v55 = 136315394;
      v56 = [v52 uniqueIdentifier];
      LODWORD(v84) = v54;
      v57 = v56;
      v58 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v60 = v59;

      v61 = sub_1B9F0B82C(v58, v60, v88);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2082;
      sub_1BA4A26B8();
      v62 = sub_1BA4A1C58();
      v64 = v63;
      v23(v21, v18);
      v65 = sub_1B9F0B82C(v62, v64, v88);

      *(v55 + 14) = v65;
      _os_log_impl(&dword_1B9F07000, v53, v84, "FeedItem %s has contentKind %{public}s; not training", v55, 0x16u);
      v66 = v87;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v66, -1, -1);
      MEMORY[0x1BFAF43A0](v55, -1, -1);

      return (*(v85 + 8))(v82, v86);
    }

    else
    {

      return (*(v85 + 8))(v51, v86);
    }
  }
}

uint64_t sub_1BA3C1644(uint64_t a1)
{
  v3 = sub_1BA4A3EA8();
  v141 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v137 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v139 = &v135 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v135 - v8;
  v10 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v157 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1BA4A3B08();
  v145 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v160 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v159 = &v135 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v156 = &v135 - v16;
  v17 = sub_1BA4A15D8();
  v155 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v166 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v146 = &v135 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v163 = &v135 - v22;
  sub_1B9F4803C(0, &qword_1EDC6B798, MEMORY[0x1E69A3E18], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v135 - v24;
  v161 = sub_1BA4A3B48();
  v150 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v153 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v144 = &v135 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v165 = &v135 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v143 = (&v135 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v136 = &v135 - v34;
  v140 = v3;
  v138 = v9;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_67;
  }

LABEL_2:
  for (i = MEMORY[0x1E69E7CD0]; ; i = v134)
  {
    sub_1B9F51E70(i, a1);

    swift_beginAccess();
    v142 = v1;
    a1 = *(v1 + 24);
    v36 = a1 + 64;
    v37 = 1 << *(a1 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(a1 + 64);
    v40 = (v37 + 63) >> 6;
    v152 = *MEMORY[0x1E69A3E00];
    v151 = (v145 + 13);
    v162 = v150 + 56;
    v147 = (v150 + 48);
    v154 = (v150 + 32);
    swift_bridgeObjectRetain_n();
    v1 = 0;
    v148 = MEMORY[0x1E69E7CC0];
    v41 = v149;
    v164 = v25;
    v158 = a1;
    if (v39)
    {
      while (1)
      {
LABEL_10:
        v43 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v44 = (v1 << 9) | (8 * v43);
        v45 = *(*(a1 + 56) + v44);
        if (v142[8] <= v45 || v142[9] <= v45 && v45 <= v142[10])
        {
          v46 = *(*(a1 + 48) + v44);
          v47 = [v46 objectID];
          v48 = [v47 URIRepresentation];

          sub_1BA4A1588();
          (*v151)(v156, v152, v41);
          sub_1BA4A1718();
          v25 = v164;
          sub_1BA4A3B28();
          v49 = v161;
          (*v162)(v25, 0, 1, v161);

          a1 = v158;
          if ((*v147)(v25, 1, v49) == 1)
          {
            goto LABEL_15;
          }

          v50 = *v154;
          v51 = v136;
          v52 = v161;
          (*v154)(v136, v25, v161);
          v50(v143, v51, v52);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v148 = sub_1BA27F128(0, *(v148 + 2) + 1, 1, v148);
          }

          v54 = *(v148 + 2);
          v53 = *(v148 + 3);
          if (v54 >= v53 >> 1)
          {
            v148 = sub_1BA27F128(v53 > 1, v54 + 1, 1, v148);
          }

          v55 = v148;
          *(v148 + 2) = v54 + 1;
          v50(&v55[((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v54], v143, v161);
          v41 = v149;
          a1 = v158;
          if (!v39)
          {
            break;
          }
        }

        else
        {
          v25 = v164;
          (*v162)(v164, 1, 1, v161);
LABEL_15:
          sub_1BA3C3618(v25);
          if (!v39)
          {
            break;
          }
        }
      }
    }

LABEL_6:
    v42 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
      break;
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    if (!sub_1BA4A7CC8())
    {
      goto LABEL_2;
    }

    sub_1B9FF7278(MEMORY[0x1E69E7CC0]);
  }

  if (v42 < v40)
  {
    v39 = *(v36 + 8 * v42);
    ++v1;
    if (v39)
    {
      v1 = v42;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v56 = v142;
  swift_beginAccess();
  v57 = *(v56 + 4);
  v58 = *(v57 + 2);
  v59 = MEMORY[0x1E69E7CC0];
  if (v58)
  {
    v169[0] = MEMORY[0x1E69E7CC0];

    sub_1BA067108(0, v58, 0);
    v59 = v169[0];
    v164 = *(v150 + 16);
    v60 = *(v150 + 80);
    v157 = v57;
    v61 = &v57[(v60 + 32) & ~v60];
    v162 = *(v150 + 72);
    v62 = (v150 + 8);
    v158 = v155 + 32;
    v63 = v146;
    do
    {
      v64 = v165;
      v65 = v161;
      (v164)(v165, v61, v161);
      sub_1BA4A3B18();
      (*v62)(v64, v65);
      v169[0] = v59;
      v67 = *(v59 + 16);
      v66 = *(v59 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1BA067108(v66 > 1, v67 + 1, 1);
        v59 = v169[0];
      }

      *(v59 + 16) = v67 + 1;
      (*(v155 + 32))(v59 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v67, v63, v17);
      v61 += v162;
      --v58;
    }

    while (v58);

    v41 = v149;
  }

  v68 = sub_1BA0248F0(v59);

  v69 = v148;
  v70 = *(v148 + 2);
  v25 = v161;
  a1 = v144;
  v165 = v68;
  v147 = v70;
  if (v70)
  {
    v71 = 0;
    v146 = (v150 + 16);
    ++v145;
    v143 = (v150 + 8);
    v164 = (v68 + 56);
    v162 = v155 + 16;
    v1 = MEMORY[0x1E69E7CC0];
    v72 = (v155 + 8);
    while (1)
    {
      if (v71 >= *(v69 + 16))
      {
        goto LABEL_66;
      }

      v158 = v1;
      v157 = ((*(v150 + 80) + 32) & ~*(v150 + 80));
      v156 = *(v150 + 72);
      (*(v150 + 16))(a1, &v157[v69 + v156 * v71], v25);
      sub_1BA4A3B38();
      (*v151)(v160, v152, v41);
      sub_1B9F85D08(&qword_1EDC6B7B8, MEMORY[0x1E69A3E08]);
      sub_1BA4A6A58();
      sub_1BA4A6A58();
      if (v169[0] == v167 && v169[1] == v168)
      {
        break;
      }

      v74 = sub_1BA4A8338();
      v75 = *v145;
      (*v145)(v160, v41);
      v75(v159, v41);

      if (v74)
      {
        goto LABEL_39;
      }

      v25 = v161;
      (*v143)(a1, v161);
      v1 = v158;
      v41 = v149;
LABEL_33:
      ++v71;
      v69 = v148;
      if (v71 == v147)
      {
        goto LABEL_51;
      }
    }

    v73 = *v145;
    (*v145)(v160, v41);
    v73(v159, v41);

LABEL_39:
    sub_1BA4A3B18();
    v76 = v165;
    if (*(v165 + 2) && (sub_1B9F85D08(&qword_1EDC6E278, MEMORY[0x1E6968FB0]), v77 = sub_1BA4A6698(), v78 = -1 << v76[32], v79 = v77 & ~v78, ((*&v164[(v79 >> 3) & 0xFFFFFFFFFFFFFF8] >> v79) & 1) != 0))
    {
      v80 = ~v78;
      v81 = *(v155 + 72);
      v82 = *(v155 + 16);
      while (1)
      {
        v83 = *(v76 + 6) + v81 * v79;
        v84 = v163;
        v82(v163, v83, v17);
        sub_1B9F85D08(&qword_1EBBEBE70, MEMORY[0x1E6968FB0]);
        v85 = sub_1BA4A6728();
        v86 = *v72;
        (*v72)(v84, v17);
        if (v85)
        {
          break;
        }

        v79 = (v79 + 1) & v80;
        v76 = v165;
        if (((*&v164[(v79 >> 3) & 0xFFFFFFFFFFFFFF8] >> v79) & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v86(v166, v17);
      a1 = v144;
      v25 = v161;
      (*v143)(v144, v161);
      v41 = v149;
      v1 = v158;
    }

    else
    {
LABEL_44:
      (*v72)(v166, v17);
      v87 = *v154;
      a1 = v144;
      v25 = v161;
      (*v154)(v153, v144, v161);
      v1 = v158;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v170 = v1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BA0670B8(0, *(v1 + 16) + 1, 1);
        v1 = v170;
      }

      v90 = *(v1 + 16);
      v89 = *(v1 + 24);
      v41 = v149;
      if (v90 >= v89 >> 1)
      {
        sub_1BA0670B8(v89 > 1, v90 + 1, 1);
        v1 = v170;
      }

      *(v1 + 16) = v90 + 1;
      v87(&v157[v1 + v90 * v156], v153, v25);
    }

    goto LABEL_33;
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_51:

  v91 = v138;
  sub_1BA4A3DB8();

  v92 = v142;

  v93 = v1;
  v94 = sub_1BA4A3E88();
  v95 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v169[0] = v97;
    *v96 = 136446466;
    v98 = sub_1BA024A8C(v69);

    sub_1BA08E184(v93, v98);
    sub_1B9F85D08(&qword_1EDC6B7B0, MEMORY[0x1E69A3E18]);
    v99 = sub_1BA4A6D88();
    v101 = v100;

    v102 = sub_1B9F0B82C(v99, v101, v169);

    *(v96 + 4) = v102;
    *(v96 + 12) = 2082;
    v167 = v92;
    type metadata accessor for PersonalizedFeedTrainer();

    v103 = sub_1BA4A6808();
    v105 = sub_1B9F0B82C(v103, v104, v169);

    *(v96 + 14) = v105;
    v25 = v161;
    _os_log_impl(&dword_1B9F07000, v94, v95, "Filtering these dwell events because their feedItems were tapped: %{public}s; %{public}s", v96, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v97, -1, -1);
    MEMORY[0x1BFAF43A0](v96, -1, -1);
  }

  else
  {
  }

  v106 = *(v141 + 8);
  v107 = v140;
  v106(v91, v140);
  v108 = v139;
  v169[0] = v93;

  sub_1B9FE2964(v109);
  v110 = v169[0];
  if (*(v169[0] + 16))
  {
    sub_1BA4A3DB8();

    v111 = sub_1BA4A3E88();
    v112 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v169[0] = v114;
      *v113 = 136446466;
      v115 = MEMORY[0x1BFAF1560](v110, v25);
      v117 = sub_1B9F0B82C(v115, v116, v169);

      *(v113 + 4) = v117;
      *(v113 + 12) = 2082;
      v167 = v92;
      type metadata accessor for PersonalizedFeedTrainer();

      v118 = sub_1BA4A6808();
      v120 = sub_1B9F0B82C(v118, v119, v169);

      *(v113 + 14) = v120;
      _os_log_impl(&dword_1B9F07000, v111, v112, "Sending personalization events to delegate %{public}s; %{public}s", v113, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v114, -1, -1);
      MEMORY[0x1BFAF43A0](v113, -1, -1);

      v121 = v108;
      v122 = v140;
    }

    else
    {

      v121 = v108;
      v122 = v107;
    }

    v106(v121, v122);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v131 = *(v92 + 7);
      ObjectType = swift_getObjectType();
      (*(v131 + 8))(v110, ObjectType, v131);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {

    v123 = v137;
    sub_1BA4A3DB8();

    v124 = sub_1BA4A3E88();
    v125 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v169[0] = v127;
      *v126 = 136315138;
      v167 = v92;
      type metadata accessor for PersonalizedFeedTrainer();

      v128 = sub_1BA4A6808();
      v130 = sub_1B9F0B82C(v128, v129, v169);

      *(v126 + 4) = v130;
      _os_log_impl(&dword_1B9F07000, v124, v125, "No events to send to delegate; %s", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v127);
      MEMORY[0x1BFAF43A0](v127, -1, -1);
      MEMORY[0x1BFAF43A0](v126, -1, -1);
    }

    v106(v123, v107);
  }

  return sub_1B9F8634C();
}

uint64_t sub_1BA3C2BB0(void *a1)
{
  v2 = v1;
  sub_1B9F4803C(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v60[-v5];
  v7 = sub_1BA4A3EA8();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v60[-v11];
  v13 = sub_1BA4A1728();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v18 = *(v1 + 16);
  if (*(v18 + 16))
  {

    v19 = sub_1B9FDAB44(a1);
    if ((v20 & 1) == 0)
    {
    }

    (*(v14 + 16))(v16, *(v18 + 56) + *(v14 + 72) * v19, v13);

    sub_1BA4A1698();
    if (v21 <= 0.0)
    {
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v69 = 0x6D69547472617473;
      v70 = 0xEA00000000002065;
      sub_1B9F85D08(&qword_1EDC6E448, MEMORY[0x1E6969530]);
      v58 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v58);

      MEMORY[0x1BFAF1350](0xD000000000000017, 0x80000001BA505950);
      v59 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v59);

      result = sub_1BA4A8018();
      __break(1u);
      return result;
    }

    v22 = v21;
    swift_beginAccess();
    v23 = *(v2 + 24);
    if (*(v23 + 16))
    {

      v24 = sub_1B9FDAB44(a1);
      if (v25)
      {
        v26 = *(*(v23 + 56) + 8 * v24);

        if (v22 < v26)
        {
          sub_1BA4A3DB8();
          v27 = a1;

          v28 = sub_1BA4A3E88();
          v29 = sub_1BA4A6F88();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v68[0] = v64;
            *v30 = 136315906;
            v31 = [v27 uniqueIdentifier];
            v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            LODWORD(v63) = v29;
            v34 = v33;

            v35 = sub_1B9F0B82C(v32, v34, v68);

            *(v30 + 4) = v35;
            *(v30 + 12) = 2050;
            *(v30 + 14) = v26;
            *(v30 + 22) = 2050;
            *(v30 + 24) = v22;
            *(v30 + 32) = 2082;
            v67 = v2;
            type metadata accessor for PersonalizedFeedTrainer();

            v36 = sub_1BA4A6808();
            v38 = sub_1B9F0B82C(v36, v37, v68);

            *(v30 + 34) = v38;
            _os_log_impl(&dword_1B9F07000, v28, v63, "FeedItem %s already logged as onscreen for %{public}f seconds; skipping shorter training of %{public}f seconds; %{public}s", v30, 0x2Au);
            v39 = v64;
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v39, -1, -1);
            MEMORY[0x1BFAF43A0](v30, -1, -1);
          }

          (*(v65 + 8))(v12, v66);
          return (*(v14 + 8))(v16, v13);
        }
      }

      else
      {
      }
    }

    sub_1BA4A3DB8();
    v40 = a1;

    v41 = sub_1BA4A3E88();
    v42 = sub_1BA4A6F88();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v68[0] = v62;
      *v43 = 136315650;
      v44 = [v40 uniqueIdentifier];
      v64 = v13;
      v45 = v44;
      v46 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v63 = v14;
      v47 = v46;
      v61 = v42;
      v48 = v16;
      v49 = v40;
      v51 = v50;

      v52 = sub_1B9F0B82C(v47, v51, v68);
      v40 = v49;
      v16 = v48;

      *(v43 + 4) = v52;
      *(v43 + 12) = 2050;
      *(v43 + 14) = v22;
      *(v43 + 22) = 2082;
      v67 = v2;
      type metadata accessor for PersonalizedFeedTrainer();

      v53 = sub_1BA4A6808();
      v55 = sub_1B9F0B82C(v53, v54, v68);
      v14 = v63;

      *(v43 + 24) = v55;
      v13 = v64;
      _os_log_impl(&dword_1B9F07000, v41, v61, "FeedItem %s is offscreen after %{public}f seconds; %{public}s", v43, 0x20u);
      v56 = v62;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v56, -1, -1);
      MEMORY[0x1BFAF43A0](v43, -1, -1);
    }

    (*(v65 + 8))(v10, v66);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_1B9FF22D0(v40, isUniquelyReferenced_nonNull_native, v22);
    *(v2 + 24) = v67;
    swift_endAccess();
    (*(v14 + 56))(v6, 1, 1, v13);
    swift_beginAccess();
    sub_1B9FEF65C(v6, v40);
    swift_endAccess();
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_1BA3C338C()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {
    sub_1BA4A1718();
    sub_1BA3C09E4(v4);
    result = (*(v2 + 8))(v4, v1);
    *(v0 + 40) = 1;
  }

  return result;
}

uint64_t PersonalizedFeedTrainer.deinit()
{

  sub_1B9FAB600(v0 + 48);
  return v0;
}

uint64_t PersonalizedFeedTrainer.__deallocating_deinit()
{

  sub_1B9FAB600(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for PersonalizedFeedTrainer.DwellPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PersonalizedFeedTrainer.DwellPolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1BA3C3618(uint64_t a1)
{
  sub_1B9F4803C(0, &qword_1EDC6B798, MEMORY[0x1E69A3E18], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PluginAppDelegateContext.healthExperienceStore.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1B9F1134C(a1, v1);
}

uint64_t PluginAppDelegateContext.pinnedContentManager.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 48);

  return sub_1B9F1134C(a1, v1 + 48);
}

__n128 PluginAppDelegateContext.init(healthExperienceStore:pinnedContentManager:healthStore:detailContext:presentingViewController:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1B9F1134C(a1, a6);
  *(a6 + 40) = a3;
  sub_1B9F1134C(a2, a6 + 48);
  v11 = *(a4 + 80);
  *(a6 + 152) = *(a4 + 64);
  *(a6 + 168) = v11;
  *(a6 + 184) = *(a4 + 96);
  v12 = *(a4 + 16);
  *(a6 + 88) = *a4;
  *(a6 + 104) = v12;
  result = *(a4 + 32);
  v14 = *(a4 + 48);
  *(a6 + 120) = result;
  v15 = *(a4 + 112);
  *(a6 + 136) = v14;
  *(a6 + 200) = v15;
  *(a6 + 208) = a5;
  return result;
}

HealthExperienceUI::TabIdentifier::TopLevelTabIdentifier_optional __swiftcall TabIdentifier.TopLevelTabIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TabIdentifier.TopLevelTabIdentifier.rawValue.getter()
{
  v1 = 0x676E6972616873;
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
    return 0x7972616D6D7573;
  }
}

uint64_t sub_1BA3C39C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E6972616873;
  if (v2 != 1)
  {
    v5 = 0x686372616573;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7972616D6D7573;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x676E6972616873;
  if (*a2 != 1)
  {
    v8 = 0x686372616573;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7972616D6D7573;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA3C3ABC()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA3C3B5C()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA3C3BE8()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA3C3C90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E6972616873;
  if (v2 != 1)
  {
    v5 = 0x686372616573;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D6D7573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TabIdentifier.identifier.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      return HKDisplayCategoryIdentifier.sidebarFeedItemIdentifier.getter(*v0);
    }

    else
    {
      v2 = *v0;

      return v2;
    }
  }

  else if (*v0)
  {
    if (*v0 == 1)
    {
      return 0x676E6972616873;
    }

    else
    {
      return 0x686372616573;
    }
  }

  else
  {
    return 0x7972616D6D7573;
  }
}

Swift::Void __swiftcall DeepLinkNavigator.place(viewController:on:popToRoot:)(UIViewController *viewController, HealthExperienceUI::TabIdentifier::TopLevelTabIdentifier on, Swift::Bool popToRoot)
{
  v5 = v4;
  v6 = v3;
  v10[0] = *on;
  v10[1] = 0;
  v11 = 0;

  v8 = (*(v5 + 16))(v6, v5);
  if (v8)
  {
    v9 = v8;
    [v8 pushViewController:viewController animated:0];
  }
}

BOOL DeepLinkNavigator.openTabOrCreateOnSearch(tab:popToTabVC:orCreate:)(__int128 *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  v8 = *(a1 + 16);
  v12 = *a1;
  v13 = v8;
  v9 = (*(a6 + 8))(&v12, a2, a5, a6);
  if (!v9)
  {
    v10 = a3();
    LOBYTE(v12) = 2;
    DeepLinkNavigator.place(viewController:on:popToRoot:)(v10, &v12, v7 & 1);
  }

  return v9 == 0;
}

BOOL DeepLinkNavigator.openTabOrFindOrCreateOnSearch<A>(tab:orCreate:popToTabVC:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 16);
  v18 = *a1;
  v19 = v12;
  v13 = (*(a7 + 8))(&v18, a4, a5, a7);
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = v13;
  if (!swift_dynamicCastUnknownClass())
  {

LABEL_5:
    MEMORY[0x1EEE9AC00](v13);
    v17[2] = a5;
    v17[3] = a6;
    v17[4] = a7;
    v17[5] = a2;
    v17[6] = a3;
    LOBYTE(v18) = 2;
    return DeepLinkNavigator.displayExistingViewControllerMatchingType<A>(topLevelTab:orCreate:)(&v18, sub_1BA3C4060, v17, a5, a6, a7);
  }

  return 0;
}

BOOL DeepLinkNavigator.displayExistingViewControllerMatchingType<A>(topLevelTab:orCreate:)(char *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v16 = *a1;
  v17 = 0;
  v10 = DeepLinkNavigator.findExistingViewController<A>(in:)(&v16, a4, a5, a6);
  if (v10)
  {
    v11 = (*(a6 + 16))(a4, a6);
    if (v11)
    {
      v12 = v11;
    }
  }

  else
  {
    v13 = a2();
    LOBYTE(v16) = v9;
    v14 = v13;
    DeepLinkNavigator.place(viewController:on:popToRoot:)(v14, &v16, 1);
  }

  return v10 == 0;
}

void *DeepLinkNavigator.findExistingViewController<A>(in:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v9 = *a1;
  v10 = v7;

  return DeepLinkNavigator.findExistingViewControllerInCurrent<A>()(a2, a3, a4);
}

BOOL DeepLinkNavigator.displayExistingViewControllerInCurrent<A>(orCreate:on:)(uint64_t (*a1)(void), uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v10 = DeepLinkNavigator.findExistingViewControllerInCurrent<A>()(a4, a5, a6);
  if (v10)
  {
    v11 = (*(a6 + 16))(a4, a6);
    if (v11)
    {
      v12 = v11;
    }
  }

  else
  {
    v15 = v9;
    v13 = a1();
    DeepLinkNavigator.place(viewController:on:popToRoot:)(v13, &v15, 1);
  }

  return v10 == 0;
}

void *DeepLinkNavigator.findExistingViewControllerInCurrent<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 16))(a1, a3);
  if (result)
  {
    v4 = result;
    v5 = [result viewControllers];

    sub_1B9F0ADF8(0, &qword_1EDC6B5D0);
    v6 = sub_1BA4A6B08();

    if (v6 >> 62)
    {
LABEL_17:
      v7 = sub_1BA4A7CC8();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1BFAF2860](v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

          if (swift_dynamicCastUnknownClass())
          {
            break;
          }

          ++v8;
          if (v11 == v7)
          {
            goto LABEL_18;
          }
        }

        result = swift_dynamicCastUnknownClass();
        if (result)
        {
          return result;
        }

        return 0;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

LABEL_18:

    return 0;
  }

  return result;
}

Swift::Void __swiftcall DeepLinkNavigator.dismissAndOpenSearch(popToRoot:)(Swift::Bool popToRoot)
{
  v3 = v2;
  v4 = v1;
  v6 = xmmword_1BA4D7C20;
  v7 = 0;

  v5 = *(v3 + 32);

  v5(0, 0, v4, v3);
}

uint64_t PluginSharingAuthorizationDelegate.pluginItemContent(for:flow:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = sub_1BA4A1C68();
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = static PluginSharingAuthorizationDelegate.nameUpdatedForAlerts(feedItem:)(a1);
  v10 = v9;
  v11 = static PluginSharingAuthorizationDelegate.icon(for:flow:)(a1, a2);
  if (FeedItem.pluginInfo.getter())
  {
    v12 = sub_1BA4A3AD8();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1BA4A2758();
  v14 = sub_1BA1591A8(v13);

  v15 = sub_1BA4A2648();
  sub_1BA4A26B8();
  *a3 = v12;
  a3[1] = v14;
  a3[2] = v18;
  a3[3] = v10;
  a3[4] = 0;
  a3[5] = 0;
  a3[6] = v11;
  a3[7] = v15;
  v16 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  (*(v6 + 32))(a3 + *(v16 + 40), v8, v19);
  *(a3 + *(v16 + 44)) = MEMORY[0x1E69E7CC0];
  return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
}

uint64_t static PluginSharingAuthorizationDelegate.nameUpdatedForAlerts(feedItem:)(void *a1)
{
  v2 = sub_1BA4A2758();
  v3 = sub_1BA1591A8(v2);

  if (v3)
  {
    if (HKObjectType.isAlertEventType.getter())
    {
      v4 = [a1 localizedTitle];
      if (v4)
      {
        v5 = v4;
        v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v8 = v7;

        v9._countAndFlagsBits = v6;
        v9._object = v8;
        countAndFlagsBits = LocalizedGeminiHealthAlertTitle(_:value:)(v3, v9)._countAndFlagsBits;

        return countAndFlagsBits;
      }
    }
  }

  v11 = [a1 localizedTitle];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  countAndFlagsBits = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return countAndFlagsBits;
}

id static PluginSharingAuthorizationDelegate.icon(for:flow:)(uint64_t a1, uint64_t a2)
{
  sub_1BA3C54D4(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  sub_1BA3C5528(a2, &v11 - v4, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  v6 = type metadata accessor for SummarySharingSelectionFlow(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BA3C560C(v5, type metadata accessor for SummarySharingSelectionFlow);
    }

    return 0;
  }

  v7 = sub_1BA4A2758();
  v8 = sub_1BA1591A8(v7);

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1BA39EEFC(v8);

  result = v9;
  if (!v9)
  {
    return 0;
  }

  return result;
}

unint64_t _s18HealthExperienceUI34PluginSharingAuthorizationDelegatePAAE20previewDataPredicate3forSo11NSPredicateCSgSayAA07Summarye10SelectableI8TypeItemVG_tF_0(uint64_t a1)
{
  v2 = sub_1BA4A3A28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v66 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA3C54D4(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v58 - v6;
  v60 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - v12;
  v14 = MEMORY[0x1E69E7CD0];
  v75 = MEMORY[0x1E69E7CD0];
  v76 = MEMORY[0x1E69E7CD0];
  v61 = *(a1 + 16);
  if (!v61)
  {
LABEL_40:
    v74 = MEMORY[0x1E69E7CC0];
    if ((v14 & 0xC000000000000001) != 0)
    {
      if (sub_1BA4A7CC8() >= 1)
      {
        goto LABEL_42;
      }
    }

    else if (*(v14 + 16) >= 1)
    {
LABEL_42:
      sub_1BA4A27B8();
      v46 = sub_1BA2A14AC(v14);

      MEMORY[0x1BFAED000](v46);

      MEMORY[0x1BFAF1510](v47);
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_67;
      }

      goto LABEL_43;
    }

    v48 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v15 = 0;
  v59 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v72 = *(v11 + 72);
  v68 = (v3 + 88);
  v69 = v3 + 16;
  v67 = *MEMORY[0x1E69A38E8];
  v70 = v3;
  v71 = v2;
  v63 = (v3 + 96);
  v64 = (v3 + 8);
  v16 = v61;
  v65 = &v58 - v12;
LABEL_4:
  v17 = v59;
  v62 = v15 + 1;
  sub_1BA025290(v59 + v72 * v15, v13);
  v18 = *(v60 + 40);
  v19 = v16;
  v20 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1BA025290(v17, v9);
    sub_1BA3C5528(&v9[v18], v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v21 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
    if ((*(*(v21 - 8) + 48))(v7, 1, v21) == 1)
    {
      sub_1BA3C5594(v7);
      v22 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v22 = *&v7[*(v21 + 44)];

      sub_1BA3C560C(v7, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    }

    sub_1BA3C560C(v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1BA27FC80(0, v20[2] + 1, 1, v20);
    }

    v24 = v20[2];
    v23 = v20[3];
    if (v24 >= v23 >> 1)
    {
      v20 = sub_1BA27FC80((v23 > 1), v24 + 1, 1, v20);
    }

    v20[2] = v24 + 1;
    v20[v24 + 4] = v22;
    v17 += v72;
    --v19;
  }

  while (v19);
  v25 = v24 + 1;
  v26 = MEMORY[0x1E69E7CC0];
  while (v19 < v20[2])
  {
    v27 = v20[v19 + 4];
    v28 = *(v27 + 16);
    v29 = v26[2];
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      goto LABEL_63;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v30 <= v26[3] >> 1)
    {
      if (!*(v27 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v29 <= v30)
      {
        v32 = v29 + v28;
      }

      else
      {
        v32 = v29;
      }

      v26 = sub_1BA27FC4C(isUniquelyReferenced_nonNull_native, v32, 1, v26);
      if (!*(v27 + 16))
      {
LABEL_14:

        if (v28)
        {
          goto LABEL_64;
        }

        goto LABEL_15;
      }
    }

    if ((v26[3] >> 1) - v26[2] < v28)
    {
      goto LABEL_65;
    }

    swift_arrayInitWithCopy();

    if (v28)
    {
      v33 = v26[2];
      v34 = __OFADD__(v33, v28);
      v35 = v33 + v28;
      if (v34)
      {
        goto LABEL_66;
      }

      v26[2] = v35;
    }

LABEL_15:
    if (v25 == ++v19)
    {

      v36 = v26[2];
      if (v36)
      {
        v37 = v71;
        v38 = v26 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
        v39 = *(v70 + 72);
        v40 = *(v70 + 16);
        v41 = v66;
        v40(v66, v38, v71);
        while (1)
        {
          v42 = (*v68)(v41, v37);
          if (v42 == v67)
          {
            (*v63)(v41, v37);
            sub_1BA0E2518(&v73, *v41);
            v41 = v66;
          }

          else
          {
            v43 = *(v65 + 8);
            if (v43)
            {
              v44 = *(v65 + 7);

              v45 = v44;
              v37 = v71;
              sub_1BA0E1C3C(&v73, v45, v43);
              v41 = v66;
            }

            (*v64)(v41, v37);
          }

          v38 += v39;
          if (!--v36)
          {
            break;
          }

          v40(v41, v38, v37);
        }
      }

      v13 = v65;
      sub_1BA3C560C(v65, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v16 = v61;
      v15 = v62;
      if (v62 == v61)
      {
        v14 = v76;
        goto LABEL_40;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  sub_1BA4A6B68();
LABEL_43:
  sub_1BA4A6BB8();
  v48 = v74;
LABEL_46:
  v49 = v75;
  v50 = *(v75 + 16);
  if (!v50)
  {

    if (!(v48 >> 62))
    {
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  v51 = sub_1BA021990(*(v75 + 16), 0);
  v52 = sub_1BA0238B0(&v73, v51 + 4, v50, v49);
  sub_1B9F52E48();
  if (v52 == v50)
  {
    sub_1BA4A27B8();
    sub_1BA4A2688();

    MEMORY[0x1BFAF1510](v53);
    if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1BA4A6B68();
LABEL_49:
  sub_1BA4A6BB8();
  v48 = v74;
  if (v74 >> 62)
  {
LABEL_53:
    if (sub_1BA4A7CC8() < 2)
    {
      result = sub_1BA4A7CC8();
      goto LABEL_55;
    }

LABEL_51:
    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    v55 = sub_1BA4A6AE8();

    v56 = [objc_opt_self() orPredicateWithSubpredicates_];

    return v56;
  }

LABEL_50:
  result = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
    goto LABEL_51;
  }

LABEL_55:
  if (!result)
  {

    return 0;
  }

  if ((v48 & 0xC000000000000001) != 0)
  {
    v57 = MEMORY[0x1BFAF2860](0, v48);
LABEL_59:
    v56 = v57;

    return v56;
  }

  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v57 = *(v48 + 32);
    goto LABEL_59;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BA3C51F0()
{
  result = qword_1EBBF1E50;
  if (!qword_1EBBF1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1E50);
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1BA3C529C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA3C52E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA3C54D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA3C5528(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BA3C54D4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA3C5594(uint64_t a1)
{
  sub_1BA3C54D4(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA3C560C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UserDemographicsAnalytics.init(age:biologicalSex:isImproveHealthAndActivityAllowed:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 25) = a5;
  return result;
}

NSNumber_optional __swiftcall UserDemographicsAnalytics.ageValueForAnalytics()()
{
  if (v0[1])
  {
    goto LABEL_16;
  }

  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = *(&unk_1F37FBE70 + v1 + 32);
    if (v2 >= v6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BA066D68(0, *(v3 + 16) + 1, 1);
      }

      v5 = *(v3 + 16);
      v4 = *(v3 + 24);
      if (v5 >= v4 >> 1)
      {
        sub_1BA066D68((v4 > 1), v5 + 1, 1);
      }

      *(v3 + 16) = v5 + 1;
      *(v3 + 8 * v5 + 32) = v6;
    }

    v1 += 8;
  }

  while (v1 != 64);
  v7 = *(v3 + 16);
  if (!v7)
  {

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v8 = *(v3 + 8 * v7 + 24);

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 19;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
LABEL_17:
  result.value.super.super.isa = v10;
  result.is_nil = v11;
  return result;
}

NSString_optional __swiftcall UserDemographicsAnalytics.biologicalSexValueForAnalytics()()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  sub_1BA4A70F8();
  v2 = sub_1BA4A6758();

  return v2;
}

uint64_t UserDemographicsAnalytics.init(dob:hkBiologicalSex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BA3C58A4(a1);
  v8 = v7;
  v9 = sub_1BA4A1148();
  result = (*(*(v9 - 8) + 8))(a1, v9);
  *a3 = v6;
  *(a3 + 8) = v8 & 1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 256;
  return result;
}

uint64_t sub_1BA3C58A4(uint64_t a1)
{
  v36 = a1;
  v33 = sub_1BA4A1148();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1BA4A17D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A18A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F480A0(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_1BA4A1728();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v31 = &v29 - v19;
  (*(v3 + 104))(v5, *MEMORY[0x1E6969868], v2, v18);
  sub_1BA4A17E8();
  (*(v3 + 8))(v5, v2);
  sub_1BA4A1838();
  v30 = *(v7 + 8);
  v36 = v6;
  v32 = v7 + 8;
  v30(v9, v6);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BA05DB44(v12);
    return 0;
  }

  else
  {
    v21 = v31;
    (*(v14 + 32))(v31, v12, v13);
    sub_1BA4A1878();
    sub_1B9F480A0(0, &qword_1EBBEC248, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
    v22 = sub_1BA4A1898();
    v23 = *(v22 - 8);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BA4B5480;
    (*(v23 + 104))(v25 + v24, *MEMORY[0x1E6969A68], v22);
    sub_1B9FF6D00(v25);
    swift_setDeallocating();
    (*(v23 + 8))(v25 + v24, v22);
    swift_deallocClassInstance();
    sub_1BA4A1718();
    v26 = v34;
    sub_1BA4A17F8();

    v27 = *(v14 + 8);
    v27(v16, v13);
    v30(v9, v36);
    v28 = sub_1BA4A1138();
    (*(v35 + 8))(v26, v33);
    v27(v21, v13);
    return v28;
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1BA3C5E1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BA3C5E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

id sub_1BA3C5F0C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeUnit;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeUnit);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeUnit);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter + 24);
    v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter), v4);
    v11 = 0;
    v6 = v0;
    v7 = (*(v5 + 8))(&v11, v4, v5);
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1BA3C6000(void *a1, double a2)
{
  v3 = v2 + *a1;
  if (*(v3 + 8) == 1)
  {
    v5 = [objc_opt_self() poundUnit];
    v6 = [objc_opt_self() quantityWithUnit:v5 doubleValue:a2];

    v7 = sub_1BA3C5F0C();
    [v6 doubleValueForUnit_];
    v9 = v8;

    v10 = round(v9);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v10 > -9.22337204e18)
    {
      if (v10 < 9.22337204e18)
      {
        *v3 = v10;
        *(v3 + 8) = 0;
        return;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

uint64_t sub_1BA3C611C()
{
  type metadata accessor for PickerTableViewCell();
  sub_1BA3C640C(0, &qword_1EBBF0850, 255, type metadata accessor for PickerTableViewCell);
  return sub_1BA4A6808();
}

uint64_t sub_1BA3C6178()
{
  swift_getObjectType();
  sub_1BA3C640C(0, &qword_1EBBF1F18, v0, type metadata accessor for WeightPickerItem);
  return sub_1BA4A6808();
}

uint64_t sub_1BA3C6220(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA3C628C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

id WeightPickerItem.init(initialValue:valueFormatter:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeUnit] = 0;
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeMaxWeight];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeMinWeight];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeAverageWeight];
  *v7 = 0;
  v7[8] = 1;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_currentWeight] = a1;
  sub_1B9F0A534(a2, &v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter]);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for WeightPickerItem();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

uint64_t sub_1BA3C640C(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1BA3C647C(void *a1, char a2)
{
  v4 = sub_1BA3C5F0C();
  [a1 doubleValueForUnit_];
  v6 = v5;

  v7 = round(v6);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a2 & 1) == 0)
  {
    return;
  }

  sub_1BA3C5FD8();
  v9 = v8;
  sub_1BA3C5FC0();
  if (v10 < v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1BA4A66E8();
}

id WeightPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeightPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeightPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA3C66A4()
{
  swift_getObjectType();
  sub_1BA3C640C(0, &qword_1EBBF1F18, v0, type metadata accessor for WeightPickerItem);
  return sub_1BA4A6808();
}

uint64_t sub_1BA3C66FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void WeightPickerItem.initialSelections.getter()
{
  sub_1BA31EC5C();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5480;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_currentWeight);
  if (v2)
  {
    v3 = v2;
    sub_1BA3C647C(v3, 1);
    v5 = v4;
  }

  else
  {
    sub_1BA3C5FE8();
    v5 = v6;
  }

  sub_1BA3C5FD8();
  if (__OFSUB__(v5, v7))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v5 - v7;
    *(v1 + 40) = 0;
  }
}

Swift::Int __swiftcall WeightPickerItem.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  if (numberOfRowsInComponent)
  {
    return 0;
  }

  sub_1BA3C5FC0();
  v4 = v3;
  sub_1BA3C5FD8();
  v5 = v4 - result;
  if (__OFSUB__(v4, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall WeightPickerItem.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  sub_1BA3C69D4(titleForRow, forComponent);
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void sub_1BA3C69D4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1BA3C5FC0();
    if (v4 >= a1)
    {
      v5 = sub_1BA3C5F0C();
      sub_1BA3C5FD8();
      if (__OFADD__(a1, v6))
      {
        __break(1u);
      }

      else
      {
        v7 = [objc_opt_self() quantityWithUnit:v5 doubleValue:(a1 + v6)];

        v8 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter + 24);
        v9 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter + 32);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter), v8);
        v10 = 0;
        (*(v9 + 16))(&v10, v7, v8, v9);
      }
    }
  }
}

void sub_1BA3C6ACC(uint64_t a1)
{
  v3 = sub_1BA3C5F0C();
  sub_1BA3C5FD8();
  if (__OFADD__(a1, v4))
  {
    __break(1u);
  }

  else
  {
    v5 = [objc_opt_self() quantityWithUnit:v3 doubleValue:(a1 + v4)];

    v6 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_currentWeight);
    *(v1 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_currentWeight) = v5;
    v7 = v5;

    v8 = v1 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v1, v7, ObjectType, v9);
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1BA3C6BDC()
{
  result = qword_1EBBF1F68;
  if (!qword_1EBBF1F68)
  {
    type metadata accessor for WeightPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1F68);
  }

  return result;
}

void __swiftcall NotificationAuthorizationAnalyticsEvent.init(context:featureDomain:featureName:selectedAction:)(HealthExperienceUI::NotificationAuthorizationAnalyticsEvent *__return_ptr retstr, HealthExperienceUI::NotificationAuthorizationAnalyticsEvent::Context context, Swift::String featureDomain, Swift::String_optional featureName, HealthExperienceUI::NotificationAuthorizationAnalyticsEvent::SelectedAction selectedAction)
{
  object = featureName.value._object;
  countAndFlagsBits = featureName.value._countAndFlagsBits;
  sub_1BA4A2F48();
  sub_1BA4A2F38();
  sub_1BA12ABBC();
  sub_1BA4A2CB8();
  if (sub_1BA4A2F28())
  {

    if (object)
    {
      v7 = MEMORY[0x1E69E6158];
      v8 = countAndFlagsBits;
    }

    else
    {
      v8 = 0;
      v7 = 0;
      v16[2] = 0;
    }

    v16[0] = v8;
    v16[1] = object;
    v16[3] = v7;
    sub_1BA4A2CC8();
    sub_1B9F23224(v16);
  }

  else
  {
  }

  sub_1BA4A2CE8();
  v9 = sub_1BA4A6758();

  v10 = sub_1BA4A6758();

  v11 = sub_1BA4A6758();

  v12 = sub_1BA4A6758();

  v13 = sub_1BA4A6758();

  v14 = sub_1BA4A6758();

  retstr->step = v9;
  retstr->context = v11;
  retstr->subContext = v12;
  retstr->feature = v10;
  retstr->action = v13;
  retstr->activeWatchProductType = v14;
}

HealthExperienceUI::NotificationAuthorizationAnalyticsEvent::Context_optional __swiftcall NotificationAuthorizationAnalyticsEvent.Context.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t NotificationAuthorizationAnalyticsEvent.Context.rawValue.getter()
{
  v1 = 0x207972616D6D7553;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BA3C717C()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA3C724C()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA3C7308()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA3C73E0(unint64_t *a1@<X8>)
{
  v2 = 0xED00007472656C41;
  v3 = 0x207972616D6D7553;
  v4 = 0xD000000000000015;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000015;
    v2 = 0x80000001BA4E1460;
  }

  v5 = 0x80000001BA4E1410;
  if (*v1)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001BA4E1430;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

HealthExperienceUI::NotificationAuthorizationAnalyticsEvent::SelectedAction_optional __swiftcall NotificationAuthorizationAnalyticsEvent.SelectedAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationAuthorizationAnalyticsEvent.SelectedAction.rawValue.getter()
{
  v1 = 0x776F6C6C41;
  v2 = 0x73676E6974746553;
  if (*v0 != 2)
  {
    v2 = 0x664F20657661654CLL;
  }

  if (*v0)
  {
    v1 = 0x4120746F4E206F44;
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

uint64_t sub_1BA3C7558()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA3C7624()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA3C76DC()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA3C77B0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x776F6C6C41;
  v4 = 0xE800000000000000;
  v5 = 0x73676E6974746553;
  if (*v1 != 2)
  {
    v5 = 0x664F20657661654CLL;
    v4 = 0xE900000000000066;
  }

  if (*v1)
  {
    v3 = 0x4120746F4E206F44;
    v2 = 0xEC000000776F6C6CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t static NotificationAuthorizationAnalyticsEvent.eventName.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBF1F70;

  return v0;
}

uint64_t static NotificationAuthorizationAnalyticsEvent.eventName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBF1F70 = a1;
  off_1EBBF1F78 = a2;
}

unint64_t sub_1BA3C7944()
{
  result = qword_1EBBF1F80;
  if (!qword_1EBBF1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1F80);
  }

  return result;
}

unint64_t sub_1BA3C799C()
{
  result = qword_1EBBF1F88;
  if (!qword_1EBBF1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1F88);
  }

  return result;
}

unint64_t sub_1BA3C79F4()
{
  result = qword_1EBBF1F90;
  if (!qword_1EBBF1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1F90);
  }

  return result;
}

unint64_t sub_1BA3C7A4C()
{
  result = qword_1EBBF1F98;
  if (!qword_1EBBF1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1F98);
  }

  return result;
}

uint64_t sub_1BA3C7AA0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBF1F70 = v2;
  off_1EBBF1F78 = v1;
}

uint64_t sub_1BA3C7B04()
{
  swift_beginAccess();
  v0 = qword_1EBBF1F70;

  return v0;
}

uint64_t sub_1BA3C7B88(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA3C7C10();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA3C7C10()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v6, v38);
  if (v39)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBF1FB0);
    if (swift_dynamicCast())
    {
      if (*(&v41 + 1))
      {
        sub_1B9F1134C(&v40, v43);
        v7 = [v1 textLabel];
        if (v7)
        {
          v8 = v7;
          v9 = v44;
          v10 = v45;
          __swift_project_boxed_opaque_existential_1(v43, v44);
          (*(v10 + 8))(v9, v10);
          v11 = sub_1BA4A6758();

          [v8 setText_];
        }

        v12 = [v1 textLabel];
        if (v12)
        {
          v13 = v12;
          [v12 setNumberOfLines_];
        }

        v14 = [v1 detailTextLabel];
        if (v14)
        {
          v15 = v14;
          v16 = v44;
          v17 = v45;
          __swift_project_boxed_opaque_existential_1(v43, v44);
          (*(v17 + 16))(v16, v17);
          v18 = sub_1BA4A6758();

          [v15 setText_];
        }

        v19 = [v1 detailTextLabel];
        if (v19)
        {
          v20 = v19;
          [v19 setNumberOfLines_];
        }

        v21 = [v1 detailTextLabel];
        if (v21)
        {
          v22 = v21;
          v23 = [v1 tintColor];
          [v22 setTextColor_];
        }

        return __swift_destroy_boxed_opaque_existential_1(v43);
      }
    }

    else
    {
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v38, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
  }

  sub_1B9F43A50(&v40, &qword_1EBBF1FA8, &qword_1EBBF1FB0);
  sub_1BA4A3DE8();
  v25 = v1;
  v26 = sub_1BA4A3E88();
  v27 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v43[0] = v29;
    *v28 = 136446722;
    v30 = sub_1BA4A85D8();
    v32 = sub_1B9F0B82C(v30, v31, v43);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_1B9F0B82C(1835365481, 0xE400000000000000, v43);
    *(v28 + 22) = 2082;
    sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    *&v40 = v33;
    sub_1BA0928CC();
    v34 = sub_1BA4A6808();
    v36 = sub_1B9F0B82C(v34, v35, v43);

    *(v28 + 24) = v36;
    _os_log_impl(&dword_1B9F07000, v26, v27, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to TitleValueProviding", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v28, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BA3C8100@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA3C8158(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA3C7C10();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA3C81DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA3C8240;
}

uint64_t sub_1BA3C8240(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA3C7C10();
  }

  return result;
}

id TitleValueTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id TitleValueTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  if (a3)
  {
    v5 = sub_1BA4A6758();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for TitleValueTableViewCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, 1, v5);

  return v6;
}

id TitleValueTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleValueTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SummaryProfileHeaderProviding.createLayout(environment:)()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D3C8;
  v14[5] = unk_1EDC6D3D8;
  v14[6] = xmmword_1EDC6D3E8;
  v14[7] = unk_1EDC6D3F8;
  v14[0] = xmmword_1EDC6D388;
  v14[1] = xmmword_1EDC6D398;
  v14[2] = xmmword_1EDC6D3A8;
  v14[3] = xmmword_1EDC6D3B8;
  v4 = xmmword_1EDC6D388;
  v0 = *(&xmmword_1EDC6D398 + 1);
  v5 = xmmword_1EDC6D398;
  v2 = xmmword_1EDC6D3A8;
  v1 = xmmword_1EDC6D3B8;
  v9 = *(&xmmword_1EDC6D3C8 + 8);
  v10 = *&qword_1EDC6D3E0;
  v11 = *(&xmmword_1EDC6D3E8 + 8);
  v12 = qword_1EDC6D400;
  v8 = *(&xmmword_1EDC6D3B8 + 8);
  sub_1B9F1D9A4(v14, v13);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v6 = 0u;
  v7 = 0u;
  return sub_1B9F293A8(&v4);
}

uint64_t HealthKitProfileInformation.createNameItem(healthStore:healthExperienceStore:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1BA4A2888();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  sub_1BA4A2828();
  v8 = MEMORY[0x1E69A3100];
  a1[3] = v3;
  a1[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v4 + 32))(boxed_opaque_existential_1, v7, v3);
}

double HealthKitProfileInformation.createAvatarItem(healthStore:healthExperienceStore:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1BA3C8920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  sub_1BA4A2828();
  v9 = MEMORY[0x1E69A3100];
  a3[3] = a2;
  a3[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(v5 + 32))(boxed_opaque_existential_1, v8, a2);
}

id sub_1BA3C8A20()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D3C8;
  v14[5] = unk_1EDC6D3D8;
  v14[6] = xmmword_1EDC6D3E8;
  v14[7] = unk_1EDC6D3F8;
  v14[0] = xmmword_1EDC6D388;
  v14[1] = xmmword_1EDC6D398;
  v14[2] = xmmword_1EDC6D3A8;
  v14[3] = xmmword_1EDC6D3B8;
  v4 = xmmword_1EDC6D388;
  v0 = *(&xmmword_1EDC6D398 + 1);
  v5 = xmmword_1EDC6D398;
  v2 = xmmword_1EDC6D3A8;
  v1 = xmmword_1EDC6D3B8;
  v9 = *(&xmmword_1EDC6D3C8 + 8);
  v10 = *&qword_1EDC6D3E0;
  v11 = *(&xmmword_1EDC6D3E8 + 8);
  v12 = qword_1EDC6D400;
  v8 = *(&xmmword_1EDC6D3B8 + 8);
  sub_1B9F1D9A4(v14, v13);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v6 = 0u;
  v7 = 0u;
  return sub_1B9F293A8(&v4);
}

uint64_t SharingEntryProfileInformation.createNameItem(healthStore:healthExperienceStore:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1BA4A33C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  sub_1BA4A32C8();
  v8 = MEMORY[0x1E69A3428];
  a1[3] = v3;
  a1[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v4 + 32))(boxed_opaque_existential_1, v7, v3);
}

void SharingEntryProfileInformation.createAvatarItem(healthStore:healthExperienceStore:)(uint64_t *a1@<X8>)
{
  v2 = sub_1BA3C8D60();
  sub_1BA4A33A8();
  sub_1BA4A3398();
  sub_1BA4A79E8();
  v3 = sub_1BA4A2E48();
  swift_allocObject();
  v4 = sub_1BA4A2E38();
  type metadata accessor for SummaryHeaderProfileAvatarImageCell();
  sub_1BA3C96A4(0, &qword_1EDC61318, type metadata accessor for SummaryHeaderProfileAvatarImageCell);
  sub_1BA4A6808();
  sub_1BA4A2E08();
  v5 = MEMORY[0x1E69A3338];
  a1[3] = v3;
  a1[4] = v5;

  *a1 = v4;
}

uint64_t sub_1BA3C8D60()
{
  v1 = v0;
  v9 = MEMORY[0x1E69E7CC0];
  v2 = [objc_opt_self() descriptorForRequiredKeys];
  MEMORY[0x1BFAF1510]();
  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  sub_1B9F0ADF8(0, &qword_1EDC5E540);
  v3 = sub_1BA4A7068();
  v4 = sub_1BA4A33C8();
  v8[3] = v4;
  v8[4] = MEMORY[0x1E69A3410];
  v8[5] = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v1, v4);
  v6 = sub_1BA4A7018();

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

id SharingEntryProfileInformation.createLayout(environment:)(void *a1)
{
  [objc_msgSend(a1 container)];
  v2 = v1;
  swift_unknownObjectRelease();
  v3 = v2 + -136.0;
  if (v2 + -136.0 <= 300.0)
  {
    v4 = 350.0;
  }

  else
  {
    v4 = 200.0;
  }

  v5 = objc_opt_self();
  v38 = [v5 uniformAcrossSiblingsWithEstimate_];
  v6 = [v5 estimatedDimension_];
  v7 = objc_opt_self();
  v8 = [v7 sizeWithWidthDimension:v6 heightDimension:v38];

  v9 = objc_opt_self();
  v37 = [v9 itemWithLayoutSize_];

  v10 = [v5 fractionalWidthDimension_];
  v11 = [v5 estimatedDimension_];
  v12 = [v7 &off_1E7EEF2C8 + 6];

  v13 = [v9 &selRef:v12 widthDesignationDidChangeWithTraitEnvironment:? previousTraitCollection:? + 3];
  v14 = [v5 fractionalWidthDimension_];
  v15 = [v5 estimatedDimension_];
  v16 = [v7 &off_1E7EEF2C8 + 6];

  v17 = [v9 itemWithLayoutSize_];
  sub_1B9F109F8();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B8B60;
  *(v18 + 32) = v13;
  *(v18 + 40) = v17;
  *(v18 + 48) = v17;
  v19 = objc_opt_self();
  v36 = v17;
  v35 = v13;
  v20 = [v5 estimatedDimension_];
  v21 = [v7 &off_1E7EEF2C8 + 6];

  sub_1B9F0ADF8(0, &qword_1EBBF1FB8);
  v22 = sub_1BA4A6AE8();

  v23 = [v19 verticalGroupWithLayoutSize:v21 subitems:v22];

  v24 = [objc_opt_self() fixedSpacing_];
  [v23 setInterItemSpacing_];

  v25 = [v5 fractionalWidthDimension_];
  v26 = [v5 estimatedDimension_];
  v27 = [v7 &off_1E7EEF2C8 + 6];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B7510;
  *(v28 + 32) = v37;
  *(v28 + 40) = v23;
  v29 = v37;
  v30 = v23;
  v31 = sub_1BA4A6AE8();

  v32 = [v19 horizontalGroupWithLayoutSize:v27 subitems:v31];

  v33 = [objc_opt_self() sectionWithGroup_];
  [v33 setContentInsetsReference_];
  [v33 setInterGroupSpacing_];
  [v33 contentInsets];
  [v33 setContentInsets_];

  return v33;
}

uint64_t sub_1BA3C9408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  sub_1BA4A32C8();
  v9 = MEMORY[0x1E69A3428];
  a3[3] = a2;
  a3[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(v5 + 32))(boxed_opaque_existential_1, v8, a2);
}

uint64_t _s16HealthExperience30SharingEntryProfileInformationV0aB2UIE24createContactOptionsItem9hasAlertsSayAA019SectionedDataSourceK0_pGSb_tF_0()
{
  v0 = sub_1BA3C8D60();
  v1 = MEMORY[0x1BFAEDD40]();
  v3 = v2;
  v4 = type metadata accessor for ProfileContactOptionsItem();
  v5 = objc_allocWithZone(v4);
  v6 = sub_1BA1AAA68(v0, v1, v3, &unk_1F37FC110);
  type metadata accessor for ProfileContactOptionsCell();
  sub_1BA3C96A4(0, &qword_1EBBED6E0, type metadata accessor for ProfileContactOptionsCell);
  v7 = sub_1BA4A6808();
  v9 = v8;
  v10 = &v6[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier];
  swift_beginAccess();
  *v10 = v7;
  v10[1] = v9;

  sub_1BA28168C();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  *(v11 + 56) = v4;
  *(v11 + 64) = sub_1BA3C96F0();
  *(v11 + 32) = v6;

  return v11;
}

uint64_t sub_1BA3C96A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1BA3C96F0()
{
  result = qword_1EBBF1FC0;
  if (!qword_1EBBF1FC0)
  {
    type metadata accessor for ProfileContactOptionsItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1FC0);
  }

  return result;
}

uint64_t sub_1BA3C974C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF1FC8 = result;
  unk_1EBBF1FD0 = v1;
  return result;
}

uint64_t sub_1BA3C97F8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF1FD8 = result;
  unk_1EBBF1FE0 = v1;
  return result;
}

void sub_1BA3C9910()
{
  sub_1BA1925B0();
  v1 = sub_1BA191D10();
  [v1 addSubview_];
}

void sub_1BA3C9964()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1BA192798();
  sub_1BA191E60(v3);
  v4 = sub_1BA1946B4();
  sub_1BA19452C(v4);
  v5 = sub_1BA191DB4();
  [v5 setHidden_];

  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner] stopAnimating];
  v6 = objc_opt_self();
  sub_1B9F109F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5890;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileCell_appleWatchLabel;
  v9 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileCell_appleWatchLabel] topAnchor];
  v10 = sub_1BA191D10();
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = [*&v0[v8] leadingAnchor];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
  v15 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView] leadingAnchor];
  v16 = [v13 constraintEqualToAnchor_];

  *(v7 + 40) = v16;
  v17 = [*&v0[v8] trailingAnchor];
  v18 = [*&v0[v14] trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v7 + 48) = v19;
  v20 = [*&v0[v8] bottomAnchor];
  v21 = [*&v0[v14] bottomAnchor];
  v22 = [v20 constraintLessThanOrEqualToAnchor_];

  *(v7 + 56) = v22;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v23 = sub_1BA4A6AE8();

  [v6 activateConstraints_];
}

void sub_1BA3C9C50()
{
  sub_1B9F48104(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v20 - v2;
  sub_1BA193198();
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1BA3CAE14(v0 + v4, v21, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v22)
  {
    sub_1B9F44590(v21, &qword_1EDC6E1A0, sub_1B9FCD918);
    return;
  }

  sub_1B9FCD918();
  type metadata accessor for FamilySharingProfileTileItem();
  if (swift_dynamicCast())
  {
    v5 = v20[0];
    v6 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_endSharingRelationshipState;
    swift_beginAccess();
    v7 = MEMORY[0x1E69A33B0];
    sub_1BA3CAE14(v5 + v6, v3, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    v8 = sub_1BA4A3118();
    LODWORD(v6) = (*(*(v8 - 8) + 48))(v3, 1, v8);
    sub_1B9F44590(v3, &qword_1EBBE97C8, v7);
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileCell_appleWatchLabel);
    if (v6 == 1)
    {
      v10 = qword_1EBBE8900;
      v11 = v9;
      if (v10 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = qword_1EBBE8908;
      v13 = v9;
      if (v12 == -1)
      {
LABEL_8:
        v14 = sub_1BA4A6758();
        [v9 setText_];

        v15 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileCell_appleWatchLabel);
        v16 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_accessibilityIdentiferBase);
        v17 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_accessibilityIdentiferBase + 8);
        v20[0] = v16;
        v20[1] = v17;
        v18 = v15;

        MEMORY[0x1BFAF1350](0x6E6F63492ELL, 0xE500000000000000);
        v19 = sub_1BA4A6758();

        [v18 setAccessibilityIdentifier_];

        return;
      }
    }

    swift_once();
    goto LABEL_8;
  }
}

id sub_1BA3C9F78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilySharingProfileTileCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA3CA008()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 tertiarySystemGroupedBackgroundColor];
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v8[4] = sub_1B9FD7F54;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F7EBBC;
  v8[3] = &block_descriptor_106;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

char *sub_1BA3CA134()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem____lazy_storage___gradientsProvider;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem____lazy_storage___gradientsProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem____lazy_storage___gradientsProvider);
  }

  else
  {
    type metadata accessor for ProfileGradientsProviderFactory();
    swift_initStaticObject();
    v4 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v5 = v4;
    if (v0[14])
    {
      [v4 setProfileIdentifier_];
    }

    [v5 resume];
    v6 = v0[7];
    v7 = __swift_project_boxed_opaque_existential_1(v0 + 4, v6);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = v0;
    v13 = sub_1BA4A1B68();
    (*(v8 + 8))(v11, v6);
    v14 = sub_1B9FE10EC(v5, v13);

    v15 = *(v0 + v1);
    *(v12 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

void *sub_1BA3CA300(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v41 = a2;
  v42 = a3;
  v40[1] = *v5;
  v45 = MEMORY[0x1E69A33B0];
  sub_1B9F48104(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v40 - v9;
  v43 = MEMORY[0x1E6969530];
  sub_1B9F48104(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v40 - v12;
  v14 = sub_1BA4A1798();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a4;
  v5[14] = 0;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_lastUpdatedDate;
  v19 = sub_1BA4A1728();
  (*(*(v19 - 8) + 56))(v5 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_endSharingRelationshipState;
  v21 = sub_1BA4A3118();
  (*(*(v21 - 8) + 56))(v5 + v20, 1, 1, v21);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_disabledState) = 2;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem____lazy_storage___gradientsProvider) = 0;
  v22 = sub_1BA4A2838();
  v23 = [v22 identifier];

  sub_1BA4A1778();
  v24 = sub_1BA4A1748();
  v26 = v25;
  (*(v15 + 8))(v17, v14);
  v46 = sub_1BA4A85D8();
  v47 = v27;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  MEMORY[0x1BFAF1350](v24, v26);

  v28 = v47;
  v5[2] = v46;
  v5[3] = v28;
  v29 = v41;
  sub_1B9F0A534(v41, (v5 + 4));
  v30 = v42;
  sub_1B9F0A534(v42, (v5 + 9));
  v31 = sub_1BA4A2888();
  v32 = MEMORY[0x1E69A30F0];
  v5[18] = v31;
  v5[19] = v32;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 15);
  v34 = *(v31 - 8);
  (*(v34 + 16))(boxed_opaque_existential_1, a1, v31);
  sub_1BA4A2808();
  v35 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_lastUpdatedDate;
  swift_beginAccess();
  sub_1BA3CB784(v13, v5 + v35, &qword_1EDC6E440, v43);
  swift_endAccess();
  v36 = sub_1BA4A2838();
  v37 = v5[14];
  v5[14] = v36;

  sub_1BA4A2848();
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v29);
  (*(v34 + 8))(a1, v31);
  v38 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_endSharingRelationshipState;
  swift_beginAccess();
  sub_1BA3CB784(v10, v5 + v38, &qword_1EBBE97C8, v45);
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_disabledState) = v44;
  return v5;
}

uint64_t sub_1BA3CA768()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  sub_1B9F44590(v0 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_lastUpdatedDate, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  sub_1B9F44590(v0 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_endSharingRelationshipState, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FamilySharingProfileTileItem()
{
  result = qword_1EBBF1FF8;
  if (!qword_1EBBF1FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA3CA8A0()
{
  sub_1B9F48104(319, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1B9F48104(319, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_1BA3CA9F4()
{
  v1 = *(*v0 + 112);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA3CAA94@<X0>(uint64_t *a1@<X2>, unint64_t *a2@<X3>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *a1;
  swift_beginAccess();
  return sub_1BA3CAE14(v8 + v9, a4, a2, a3);
}

uint64_t sub_1BA3CAB04()
{
  type metadata accessor for FamilySharingProfileTileCell();
  sub_1BA3CAE80();
  return sub_1BA4A6808();
}

uint64_t sub_1BA3CAB54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA3CABEC(uint64_t a1)
{
  result = sub_1BA3CAC30(&qword_1EBBED558);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA3CAC30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FamilySharingProfileTileItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA3CAC74(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1BA3CAE14(v1 + v3, v10, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v10[3])
  {
    sub_1B9FCD918();
    type metadata accessor for FamilySharingProfileTileItem();
    if (swift_dynamicCast())
    {
      v4 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
      v5 = v4;
      if (*(v9[0] + 112))
      {
        [v4 setProfileIdentifier_];
      }

      [v5 resume];
      sub_1B9F0A534(v9[0] + 32, v10);
      sub_1B9F0A534(v9[0] + 72, v9);
      v6 = sub_1BA3CA134();
      v7 = objc_allocWithZone(type metadata accessor for ProfileOverviewViewController());
      v8 = sub_1BA1803C4(v5, v10, v9, v6);

      [a1 showViewController:v8 sender:a1];
    }
  }

  else
  {
    sub_1B9F44590(v10, &qword_1EDC6E1A0, sub_1B9FCD918);
  }
}

uint64_t sub_1BA3CAE14(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F48104(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA3CAE80()
{
  result = qword_1EDC643F8[0];
  if (!qword_1EDC643F8[0])
  {
    type metadata accessor for FamilySharingProfileTileCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EDC643F8);
  }

  return result;
}

void *sub_1BA3CAEC4()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setNumberOfLines_];
  v6 = [objc_opt_self() secondaryLabelColor];
  [v5 setTextColor_];

  [v5 setAdjustsFontForContentSizeCategory_];
  v7 = *MEMORY[0x1E69DDD80];
  v8 = objc_opt_self();
  v9 = [v8 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:0];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];
  }

  else
  {
    v35 = v0;
    sub_1BA4A3DD8();
    v12 = v7;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v33;
      *v15 = 136315906;
      v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v34 = v12;
      v18 = sub_1B9F0B82C(v16, v17, &v38);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v36 = 0;
      v37 = 1;
      sub_1B9F48104(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v19 = sub_1BA4A6808();
      v21 = sub_1B9F0B82C(v19, v20, &v38);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2080;
      LODWORD(v36) = 0;
      type metadata accessor for SymbolicTraits(0);
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v38);
      v12 = v34;

      *(v15 + 24) = v24;
      *(v15 + 32) = 2112;
      v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v15 + 34) = v25;
      v26 = v32;
      *v32 = v25;
      _os_log_impl(&dword_1B9F07000, v13, v14, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v15, 0x2Au);
      sub_1B9F8C6C8(v26);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      v27 = v33;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v28 = [v8 preferredFontDescriptorWithTextStyle_];
    v11 = [objc_opt_self() fontWithDescriptor:v28 size:0.0];

    v0 = v35;
  }

  v29 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileCell_appleWatchLabel;
  [v5 setFont_];

  *(v0 + v29) = v5;
  return sub_1BA191E80(1, 1);
}

void sub_1BA3CB310()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setNumberOfLines_];
  v7 = [objc_opt_self() secondaryLabelColor];
  [v6 setTextColor_];

  [v6 setAdjustsFontForContentSizeCategory_];
  v8 = *MEMORY[0x1E69DDD80];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:0];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = v8;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v38 = v1;
      v17 = v16;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v17 = 136315906;
      v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v20 = sub_1B9F0B82C(v18, v19, &v41);
      v37 = v13;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v39 = 0;
      v40 = 1;
      sub_1B9F48104(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v41);

      *(v17 + 14) = v24;
      *(v17 + 22) = 2080;
      LODWORD(v39) = 0;
      type metadata accessor for SymbolicTraits(0);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, &v41);
      v13 = v37;

      *(v17 + 24) = v27;
      *(v17 + 32) = 2112;
      v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v17 + 34) = v28;
      v29 = v35;
      *v35 = v28;
      _os_log_impl(&dword_1B9F07000, v14, v15, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v17, 0x2Au);
      sub_1B9F8C6C8(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      v30 = v36;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      v31 = v17;
      v1 = v38;
      MEMORY[0x1BFAF43A0](v31, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v32 = [v9 preferredFontDescriptorWithTextStyle_];
    v12 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
  }

  v33 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileCell_appleWatchLabel;
  [v6 setFont_];

  *(v1 + v33) = v6;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA3CB784(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F48104(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

double static PDFPrintPaper.localizedPaper(landscape:compactVerticalMargin:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = objc_opt_self();
  sub_1BA20F664();
  v7 = sub_1BA4A6AE8();
  v8 = [v6 bestPaperForPageSize:v7 withPapersFromArray:{612.0, 792.0}];

  [v8 paperSize];
  v10 = v9;
  v12 = v11;

  if (a1)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (a1)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  *(a3 + 16) = 0x4042000000000000;
  *(a3 + 56) = 0x4042000000000000;
  *(a3 + 72) = 0x4042000000000000;
  v15 = 36.0;
  if (a2)
  {
    v15 = 21.0;
  }

  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v13 + -36.0 + -36.0;
  result = v14 - v15 - v15;
  *(a3 + 40) = result;
  *(a3 + 48) = v15;
  *(a3 + 64) = v15;
  return result;
}

char *sub_1BA3CB95C(void *a1)
{
  v2 = v1;
  v31 = a1;
  sub_1B9F12538();
  v32 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EBBEA528;
  sub_1B9F15B38();
  v12 = sub_1BA4A7A78();
  v13 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v14 = sub_1BA4A6758();
  v15 = [v13 initWithName:v14 loggingCategory:v12];

  *&v2[v11] = v15;
  v16 = qword_1EDC61B88;
  *&v2[v16] = sub_1B9F12744(MEMORY[0x1E69E7CC0]);
  v17 = &v2[qword_1EDC84AD0];
  v33 = 675500614;
  v34 = 0xE400000000000000;
  v36 = sub_1BA4A2558();
  sub_1B9F12868(0, &qword_1EBBF2020, MEMORY[0x1E69A3DC8]);
  v18 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v18);

  MEMORY[0x1BFAF1350](15401, 0xE200000000000000);
  sub_1BA4A1788();
  v19 = sub_1BA4A1748();
  v21 = v20;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x1BFAF1350](v19, v21);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v22 = v34;
  *v17 = v33;
  v17[1] = v22;
  v23 = v31;
  *&v2[qword_1EDC84AD8] = v31;
  v24 = v23;
  sub_1BA4A45D8();
  (*(v4 + 32))(&v2[qword_1EDC84AC8], v6, v32);
  sub_1BA3CBE80();
  v35.receiver = v2;
  v35.super_class = v25;
  v26 = objc_msgSendSuper2(&v35, sel_init);
  v27 = [v24 fetchRequest];
  [v27 setIncludesPendingChanges_];

  v28 = qword_1EDC84AD8;
  swift_beginAccess();
  v29 = *&v26[v28];
  [v29 setDelegate_];

  sub_1B9F128B4();
  return v26;
}

id FeedItemSuggestedActionDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedItemSuggestedActionDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FeedItemSuggestedActionDataSource()
{
  result = qword_1EBBF2010;
  if (!qword_1EBBF2010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA3CBE80()
{
  if (!qword_1EBBF2028)
  {
    sub_1BA4A2558();
    sub_1BA3CBF14(&qword_1EBBEBF50, MEMORY[0x1E69A3DC8]);
    v0 = type metadata accessor for FetchedResultsControllerDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2028);
    }
  }
}

uint64_t sub_1BA3CBF14(unint64_t *a1, void (*a2)(uint64_t))
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

char *PlatformTabCollectionViewController.init(makeDataSource:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource);
  *v3 = a1;
  v3[1] = a2;
  type metadata accessor for CompoundSectionedDataSource();

  v4 = CompoundSectionedDataSource.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  v5 = CompoundDataSourceCollectionViewController.init(dataSource:)(v4);

  return v5;
}

uint64_t sub_1BA3CC000()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2030 = result;
  *algn_1EBBF2038 = v1;
  return result;
}

uint64_t sub_1BA3CC098()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC5E800 = result;
  unk_1EDC5E808 = v1;
  return result;
}

char *PlatformTabCollectionViewController.__allocating_init(makeDataSource:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource];
  *v6 = a1;
  *(v6 + 1) = a2;
  type metadata accessor for CompoundSectionedDataSource();

  v7 = CompoundSectionedDataSource.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  v8 = CompoundDataSourceCollectionViewController.init(dataSource:)(v7);

  return v8;
}

id PlatformTabCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PlatformTabCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA3CC45C()
{
  v0 = *(sub_1B9F23FB0() + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);

  if (*(v0 + 16))
  {
    swift_unknownObjectRetain();

    type metadata accessor for SearchDataSource(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return 0;
}

void sub_1BA3CC53C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController) = a1;
}

void (*sub_1BA3CC550(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1B9F2192C();
  return sub_1BA3CC598;
}

void sub_1BA3CC598(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController) = v2;
}

void sub_1BA3CC5B0(void *a1, uint64_t a2)
{
  [a1 _setContentUnavailableConfiguration_];
  if ([a1 isViewLoaded])
  {
    v3 = [a1 view];
    if (v3)
    {
      v4 = v3;
      [v3 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BA3CC650(uint64_t a1)
{
  v3 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3D2964(a1, v5, type metadata accessor for SearchDataSource.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_10;
    }

    sub_1BA2717C8();
    v13 = *(v12 + 48);
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    *(v15 + 24) = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1BA3CCCFC;
    *(v16 + 24) = v15;
    v39 = sub_1B9F7B0CC;
    v40 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1B9F7B0FC;
    v38 = &block_descriptor_107;
    v17 = _Block_copy(&aBlock);
    v18 = v40;
    v19 = v1;

    [v14 performWithoutAnimation_];
    _Block_release(v17);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      sub_1BA3D29CC(&v5[v13], type metadata accessor for SearchDataSource.State.SearchResults);
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v7 = *v5;
      v8 = *(v5 + 1);
      v9 = v5[16];
      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      v11 = v1;
      SearchCoordinator.search(_:enhanced:actionHandler:)(v7, v8, v9, sub_1BA3CD9C8, v10);

      goto LABEL_11;
    }

    v17 = *v5;
    v18 = *(v5 + 1);
    v5 = [objc_opt_self() searchConfiguration];
    if (qword_1EBBE8910 == -1)
    {
      goto LABEL_8;
    }
  }

  swift_once();
LABEL_8:
  sub_1B9F1B758(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5480;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1B9F1BE20();
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  sub_1BA4A6768();

  v21 = sub_1BA4A6758();

  [v5 setText_];

  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  *(v23 + 24) = v5;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1BA3D2A44;
  *(v24 + 24) = v23;
  v39 = sub_1B9F89DF8;
  v40 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1B9F7B0FC;
  v38 = &block_descriptor_14_3;
  v25 = _Block_copy(&aBlock);
  v26 = v1;
  v27 = v5;

  [v22 performWithoutAnimation_];
  _Block_release(v25);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_10:
  v28 = objc_opt_self();
  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  *(v29 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1BA3D2A44;
  *(v30 + 24) = v29;
  v39 = sub_1B9F89DF8;
  v40 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1B9F7B0FC;
  v38 = &block_descriptor_28_3;
  v31 = _Block_copy(&aBlock);
  v32 = v1;

  [v28 performWithoutAnimation_];
  _Block_release(v31);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  v34 = *(sub_1B9F23FB0() + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);

  if (!*(v34 + 16))
  {
  }

  swift_unknownObjectRetain();

  type metadata accessor for SearchDataSource(0);
  if (swift_dynamicCastClass())
  {
    sub_1BA26E408(a1);
  }

  return swift_unknownObjectRelease();
}

char *SearchViewController.__allocating_init(healthExperienceStore:healthStore:pinnedContentManager:searchCoordinator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController] = 0;
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthStore] = a2;
  sub_1B9F0A534(a1, &v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore]);
  sub_1B9F0A534(a3, &v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager]);
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_searchCoordinator] = a4;
  sub_1B9F0A534(a1, v17);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_1B9F1134C(v17, v11 + 24);
  v12 = &v10[OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource];
  *v12 = sub_1BA3D2A50;
  v12[1] = v11;
  type metadata accessor for CompoundSectionedDataSource();
  v13 = a2;

  v14 = CompoundSectionedDataSource.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  v15 = CompoundDataSourceCollectionViewController.init(dataSource:)(v14);

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

char *SearchViewController.init(healthExperienceStore:healthStore:pinnedContentManager:searchCoordinator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController) = 0;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthStore) = a2;
  sub_1B9F0A534(a1, v5 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore);
  sub_1B9F0A534(a3, v5 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_searchCoordinator) = a4;
  sub_1B9F0A534(a1, v16);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  sub_1B9F1134C(v16, v10 + 24);
  v11 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource);
  *v11 = sub_1BA3D2A50;
  v11[1] = v10;
  type metadata accessor for CompoundSectionedDataSource();
  v12 = a2;

  v13 = CompoundSectionedDataSource.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  v14 = CompoundDataSourceCollectionViewController.init(dataSource:)(v13);

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t sub_1BA3CCFC4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompoundSectionedDataSource();
  sub_1B9F1DEA0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  swift_storeEnumTagMultiPayload();
  sub_1B9F0A534(a3, v13);
  type metadata accessor for SearchDataSource(0);
  swift_allocObject();
  v9 = a2;
  v10 = sub_1B9F15168(v7, v9, v13);

  *(inited + 32) = v10;
  *(inited + 40) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  return CompoundSectionedDataSource.__allocating_init(_:)(inited);
}

id sub_1BA3CD150()
{
  v1 = v0;
  swift_getObjectType();
  v21.receiver = v0;
  v21.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = result;
  sub_1BA4A7DF8();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA505E30);
  v4 = sub_1BA4A6758();

  [v3 setAccessibilityIdentifier_];

  v5 = [v0 navigationItem];
  [v5 setPreferredSearchBarPlacement_];

  v6 = [v1 navigationItem];
  v7 = sub_1B9F2192C();
  [v6 setSearchController_];

  result = [v1 collectionView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  v9 = [objc_opt_self() systemGroupedBackgroundColor];
  [v8 setBackgroundColor_];

  result = [v1 collectionView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  [result setAllowsFocus_];

  result = [v1 collectionView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  [result setKeyboardDismissMode_];

  result = [v1 collectionView];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_1BA4A6AE8();
  v14 = HKUIJoinStringsForAutomationIdentifier();

  [v12 setAccessibilityIdentifier_];
  v15 = [v1 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 == 1)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v17 = sub_1BA4A6758();

    [v1 setTitle_];
  }

  else
  {
    [v1 setTitle_];
  }

  sub_1BA3D2130(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5480;
  v19 = sub_1BA4A4438();
  v20 = MEMORY[0x1E69DC130];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  sub_1BA4A7228();
  swift_unknownObjectRelease();
}

void sub_1BA3CD5DC()
{
  v1 = sub_1BA4A3678();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E7F0 != -1)
  {
    swift_once();
  }

  (*(v2 + 104))(v4, *MEMORY[0x1E69A2C48], v1);
  v5 = sub_1BA4A35B8();
  (*(v2 + 8))(v4, v1);
  [v0 setUserActivity_];
}

void sub_1BA3CD844()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    sub_1BA4A7678();
    if (*(v0 + v1) == 1)
    {
      sub_1BA4A75D8();
      v3 = v2;
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v10 = sub_1B9F2192C();
      v11 = [v10 searchBar];

      [v11 setDirectionalLayoutMargins_];
    }
  }
}

uint64_t sub_1BA3CD924(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v8 = v3;
  SearchCoordinator.search(_:enhanced:actionHandler:)(a1, a2, a3, sub_1BA3D2A5C, v7);
}

uint64_t sub_1BA3CD9EC(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v45 = type metadata accessor for SearchResultUpdate();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v43 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for SearchDataSource.State.SearchResults(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v43 - v18);
  v20 = *(sub_1B9F23FB0() + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);

  if (!*(v20 + 16))
  {

LABEL_8:
    sub_1BA4A27B8();
    *v16 = sub_1BA4A25B8();
    v25 = v16 + *(v14 + 20);
    sub_1BA4A1788();
    *&v25[*(type metadata accessor for DirectSearchResult(0) + 20)] = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  swift_unknownObjectRetain();

  type metadata accessor for SearchDataSource(0);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v22 = qword_1EDC84C78;
  v23 = v21;
  swift_beginAccess();
  sub_1BA3D2964(v23 + v22, v13, type metadata accessor for SearchDataSource.State);
  swift_unknownObjectRelease();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1BA3D29CC(v13, type metadata accessor for SearchDataSource.State);
    v2 = v1;
    goto LABEL_8;
  }

  sub_1BA2717C8();
  sub_1BA3D28FC(&v13[*(v24 + 48)], v16, type metadata accessor for SearchDataSource.State.SearchResults);
  v2 = v1;
LABEL_9:
  sub_1BA3D28FC(v16, v19, type metadata accessor for SearchDataSource.State.SearchResults);
  if (*(*(*(v2 + OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource) + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources) + 16))
  {
    type metadata accessor for SearchDataSource(0);
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = qword_1EDC84C78;
      v28 = v26;
      swift_beginAccess();
      sub_1BA3D2964(v28 + v27, v10, type metadata accessor for SearchDataSource.State);
      sub_1BA3D28FC(v10, v7, type metadata accessor for SearchDataSource.State);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        v30 = v47;
        if (EnumCaseMultiPayload != 2)
        {
LABEL_22:
          sub_1BA3D29CC(v7, type metadata accessor for SearchDataSource.State);
          return sub_1BA3D29CC(v19, type metadata accessor for SearchDataSource.State.SearchResults);
        }

        v31 = *v7;
        v32 = v7[1];
        sub_1BA2717C8();
        sub_1BA3D29CC(v7 + *(v33 + 48), type metadata accessor for SearchDataSource.State.SearchResults);
      }

      else
      {
        v30 = v47;
        v31 = *v7;
        v32 = v7[1];
      }

      sub_1BA3D2964(v44, v30, type metadata accessor for SearchResultUpdate);
      v34 = swift_getEnumCaseMultiPayload();
      v7 = v46;
      if (v34)
      {
        if (v34 != 1)
        {

          v41 = v30[1];
          *v7 = *v30;
          v7[1] = v41;
          goto LABEL_21;
        }

        sub_1BA271720(v30, v19 + *(v14 + 20));
      }

      else
      {
        v35 = *v30;
        sub_1B9F0ADF8(0, &qword_1EDC6B630);
        sub_1B9F1B758(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1BA4B5480;
        sub_1BA3D2194();
        *(v36 + 56) = v37;
        *(v36 + 64) = sub_1BA3D21FC();
        *(v36 + 32) = v35;
        v38 = sub_1BA4A6EE8();

        *v19 = v38;
      }

      sub_1BA2717C8();
      v40 = *(v39 + 48);
      *v7 = v31;
      v7[1] = v32;
      sub_1BA3D2964(v19, v7 + v40, type metadata accessor for SearchDataSource.State.SearchResults);
LABEL_21:
      swift_storeEnumTagMultiPayload();
      sub_1BA3CC650(v7);
      goto LABEL_22;
    }
  }

  return sub_1BA3D29CC(v19, type metadata accessor for SearchDataSource.State.SearchResults);
}

uint64_t static NSPredicate.predicate(for:)(uint64_t a1)
{
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  sub_1B9F1B758(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  sub_1BA3D2194();
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_1BA3D21FC();
  *(v2 + 32) = a1;

  return sub_1BA4A6EE8();
}

id sub_1BA3CE0B0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() searchConfiguration];
  if (qword_1EBBE8910 != -1)
  {
    swift_once();
  }

  sub_1B9F1B758(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B9F1BE20();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  sub_1BA4A6768();

  v6 = sub_1BA4A6758();

  [v4 setText_];

  return v4;
}

uint64_t sub_1BA3CE208()
{
  v0 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B9F2192C();
  v4 = [v3 searchBar];

  [v4 resignFirstResponder];
  swift_storeEnumTagMultiPayload();
  sub_1BA3CC650(v2);
  return sub_1BA3D29CC(v2, type metadata accessor for SearchDataSource.State);
}

void sub_1BA3CE444()
{
  sub_1B9F36938();
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HostViewCell(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1BA011AF0();
    sub_1BA4A6808();
    v4 = sub_1BA4A6758();

    [v2 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v4];

    v5 = [v0 collectionView];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for DataTypeNoDataAvailableCell();
      v7 = swift_getObjCClassFromMetadata();
      swift_beginAccess();

      v8 = sub_1BA4A6758();

      [v6 registerClass:v7 forCellWithReuseIdentifier:v8];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall SearchViewController.didSelectItem()()
{
  v1 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  v7 = sub_1B9F2192C();
  v8 = [v7 searchBar];

  [v8 resignFirstResponder];
  v9 = *(sub_1B9F23FB0() + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);

  if (*(v9 + 16))
  {
    swift_unknownObjectRetain();

    type metadata accessor for SearchDataSource(0);
    v10 = swift_dynamicCastClass();
    if (!v10)
    {

      goto LABEL_4;
    }

    v11 = qword_1EDC84C78;
    v12 = v10;
    swift_beginAccess();
    sub_1BA3D2964(v12 + v11, v6, type metadata accessor for SearchDataSource.State);
    swift_storeEnumTagMultiPayload();
    v13 = _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(v6, v3);
    sub_1BA3D29CC(v3, type metadata accessor for SearchDataSource.State);
    sub_1BA3D29CC(v6, type metadata accessor for SearchDataSource.State);
    if (v13)
    {
LABEL_4:
      swift_unknownObjectRelease();
      return;
    }

    type metadata accessor for HealthAppAnalyticsManager();
    v17 = 4;
    v16 = 2;
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    static HealthAppAnalyticsManager.submitInteraction(action:viewController:presentation:pinnedContentManager:)(&v17, v0, &v16, v14);
    swift_unknownObjectRelease();
    sub_1BA10F728(v14);
  }

  else
  {
  }
}

uint64_t sub_1BA3CE94C(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v47 = a1;
  v7 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v41 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = *(sub_1B9F23FB0() + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);

  if (*(v19 + 16))
  {
    v45 = a3;
    v20 = *(v19 + 32);
    swift_unknownObjectRetain();

    type metadata accessor for SearchDataSource(0);
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = v21;
      v23 = qword_1EDC84C78;
      swift_beginAccess();
      sub_1BA3D2964(v22 + v23, v18, type metadata accessor for SearchDataSource.State);
      sub_1BA3D28FC(v18, v15, type metadata accessor for SearchDataSource.State);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v46 = v20;
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v25 = v15[1];
          v44 = *v15;
          sub_1BA2717C8();
          sub_1BA3D29CC(v15 + *(v27 + 48), type metadata accessor for SearchDataSource.State.SearchResults);
        }

        else
        {
          sub_1BA3D29CC(v15, type metadata accessor for SearchDataSource.State);
          v44 = 0;
          v25 = 0;
        }
      }

      else
      {
        v25 = v15[1];
        v44 = *v15;
      }

      v28 = [v4 navigationController];
      if (!v28)
      {

LABEL_27:
        v38 = HIBYTE(a2) & 0xF;
        v39 = v47;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v38 = v47 & 0xFFFFFFFFFFFFLL;
        }

        if (v38)
        {
          sub_1BA3D2964(v22 + v23, v12, type metadata accessor for SearchDataSource.State);
          swift_storeEnumTagMultiPayload();
          v40 = _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(v12, v9);
          sub_1BA3D29CC(v9, type metadata accessor for SearchDataSource.State);
          sub_1BA3D29CC(v12, type metadata accessor for SearchDataSource.State);
          if (v40)
          {
            type metadata accessor for HealthAppAnalyticsManager();
            v50 = 3;
            v49 = 2;
            sub_1B9F0A534(v4 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager, v48);
            static HealthAppAnalyticsManager.submitInteraction(action:viewController:presentation:pinnedContentManager:)(&v50, v4, &v49, v48);
            sub_1BA10F728(v48);
          }

          sub_1BA3CEEA0(v39, a2);
          *v12 = v39;
          *(v12 + 1) = a2;
          v12[16] = v45 & 1;
          swift_storeEnumTagMultiPayload();

          sub_1BA3CC650(v12);
        }

        else
        {
          swift_storeEnumTagMultiPayload();
          sub_1BA3CC650(v12);
        }

        swift_unknownObjectRelease();
        return sub_1BA3D29CC(v12, type metadata accessor for SearchDataSource.State);
      }

      v29 = v28;
      v43 = v23;
      v30 = [v28 visibleViewController];
      if (v30)
      {
        v31 = v30;
        sub_1B9F0ADF8(0, &qword_1EDC6B5D0);
        v32 = v4;
        v42 = v4;
        v33 = v25;
        v34 = a2;
        v35 = v32;
        v36 = sub_1BA4A7798();

        a2 = v34;
        v25 = v33;
        v4 = v42;
        if (v36)
        {
          goto LABEL_17;
        }
      }

      if (!v25)
      {
        goto LABEL_24;
      }

      if (v44 == v47 && v25 == a2)
      {
LABEL_17:

LABEL_26:
        v23 = v43;
        goto LABEL_27;
      }

      v37 = sub_1BA4A8338();

      if ((v37 & 1) == 0)
      {
LABEL_24:
      }

      goto LABEL_26;
    }

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}