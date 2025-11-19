id sub_24BA3C57C(uint64_t a1)
{
  v11[1] = *(v1 + OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator__selectedApps);
  v12 = *(v1 + OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator__selectedApps + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  MEMORY[0x24C24FC10](v11, v3);
  v4 = v11[0];
  if (v11[0] >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v11[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24BAAA52C())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C2506E0](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v9 = [*(v7 + 16) isEqual_];

      if ((v9 & 1) == 0)
      {
        ++v6;
        if (v8 != i)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v9 = 0;
LABEL_16:

  return v9;
}

id sub_24BA3C6C8(uint64_t a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = sub_24B9AAC3C(a1, 29.0, v4);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    if (v7)
    {
      return v7;
    }
  }

  else
  {
  }

  sub_24B9AA390(a1, 29.0, v4);

  v9 = *(a1 + 16);

  v10 = sub_24B9AA5DC([v9 platform], 29.0, v4);

  return v10;
}

uint64_t sub_24BA3C808()
{
  v1 = v0;
  v53 = OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_collation;
  v2 = [*(v0 + OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_collation) sectionTitles];
  v3 = sub_24BAAA12C();

  v4 = *(v3 + 16);

  v5 = MEMORY[0x277D84F90];
  v6 = sub_24BA3E54C(MEMORY[0x277D84F90], v4);
  v7 = OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_sections;
  swift_beginAccess();
  v54 = v7;
  *(v1 + v7) = v6;

  v57 = v5;
  v52 = OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_availableApps;
  v8 = *(v1 + OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_availableApps);

  result = sub_24BA42F98();
  if (!*(v8 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache + 8))
  {
    goto LABEL_50;
  }

  v10 = *(v8 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache + 16);

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v49 = *(v10 + 16);
    v50 = OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_excludedApps;
    v13 = v10 + 48;
    v46 = v11 - 1;
    v47 = v10 + 48;
    v48 = MEMORY[0x277D84F90];
    v51 = v10;
    do
    {
      v14 = v13 + 24 * v12;
      while (1)
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v15 = *v14;
        v16 = *&v52[v1];

        result = sub_24BA42F98();
        if (!*(v16 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache + 8))
        {
          goto LABEL_49;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        v17 = *(v16 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache + 24);
        if (v15 >= *(v17 + 16))
        {
          goto LABEL_42;
        }

        v18 = (v17 + 32 * v15);
        v19 = v18[5];
        v21 = v18[6];
        v20 = v18[7];
        swift_unknownObjectRetain();

        if (v21 != v20 >> 1)
        {
          break;
        }

        ++v12;
        swift_unknownObjectRelease();
        v14 += 24;
        v10 = v51;
        if (v49 == v12)
        {
          goto LABEL_24;
        }
      }

      if (v21 >= (v20 >> 1))
      {
        goto LABEL_48;
      }

      v45 = v12 + 1;
      v22 = (v20 >> 1) - v21;
      v23 = (v19 + 8 * v21);
      do
      {
        v24 = *v23;
        v25 = *(v1 + v50);
        v55 = *v23;
        MEMORY[0x28223BE20](result);
        v44[2] = &v55;
        swift_retain_n();

        v26 = sub_24BA3AD84(sub_24BA3E5E8, v44, v25);

        if (v26)
        {
        }

        else
        {
          v27 = type metadata accessor for AvailableAppsTableView.Coordinator.AppWrapper();
          v28 = objc_allocWithZone(v27);
          *&v28[OBJC_IVAR____TtCCV15FocusSettingsUI22AvailableAppsTableView11Coordinator10AppWrapper_app] = v24;
          v56.receiver = v28;
          v56.super_class = v27;
          objc_msgSendSuper2(&v56, sel_init);
          MEMORY[0x24C2501C0]();
          if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24BAAA14C();
          }

          sub_24BAAA16C();

          v48 = v57;
        }

        ++v23;
        --v22;
      }

      while (v22);
      swift_unknownObjectRelease();
      v13 = v47;
      v29 = v46 == v12;
      v10 = v51;
      v12 = v45;
    }

    while (!v29);
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

LABEL_24:

  v30 = *(v1 + v53);
  sub_24BA3A9B0(v48, v31, type metadata accessor for AvailableAppsTableView.Coordinator.AppWrapper);

  v32 = sub_24BAAA11C();

  v52 = sel_displayName;
  v33 = [v30 sortedArrayFromArray:v32 collationStringSelector:sel_displayName];

  v34 = sub_24BAAA12C();
  v14 = sub_24BA3A8C0(v34);

  if (v14 >> 62)
  {
LABEL_45:
    result = sub_24BAAA52C();
    v35 = result;
    if (result)
    {
      goto LABEL_26;
    }
  }

  v35 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
  }

LABEL_26:
  if (v35 >= 1)
  {
    v36 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x24C2506E0](v36, v14);
      }

      else
      {
        v37 = *(v14 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = [*(v1 + v53) sectionForObject:v37 collationStringSelector:v52];
      v40 = v54;
      swift_beginAccess();
      v41 = *(v1 + v40);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v40) = v41;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v39 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v41 = sub_24B9AECD4(v41);
        *(v1 + v54) = v41;
        if ((v39 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }
      }

      if (v39 >= v41[2])
      {
        goto LABEL_44;
      }

      v43 = &v41[v39];
      MEMORY[0x24C2501C0]();
      if (*((v43[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v51 = *((v43[4] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24BAAA14C();
      }

      ++v36;
      sub_24BAAA16C();
      *(v1 + v54) = v41;
      swift_endAccess();
    }

    while (v35 != v36);
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

id sub_24BA3CE10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24BA3CEFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  sub_24BAA9B8C();
  type metadata accessor for AppIconCache();
  sub_24BA3EFFC(&qword_27F0651D0, type metadata accessor for AppIconCache);
  v5 = sub_24BAA82FC();
  v6 = objc_allocWithZone(type metadata accessor for AvailableAppsTableView.Coordinator());
  result = sub_24BA3B068(v2, v3, v9, v10, v11, v5, v4);
  *a1 = result;
  return result;
}

uint64_t sub_24BA3D030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24BA3F044();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24BA3D094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24BA3F044();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24BA3D0F8()
{
  sub_24BA3F044();
  sub_24BAA8CDC();
  __break(1u);
}

void sub_24BA3D120(char a1)
{
  *(v1 + OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell__checked) = a1;
  v3 = sub_24BA3E0B4();
  v4 = sub_24BAA9FDC();
  v5 = [objc_opt_self() systemImageNamed_];

  [v3 setImage_];
  v6 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___stateIconView);
  if (a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_stateIconSelectedTintColor);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v10 = objc_opt_self();
    v8 = v6;
    v9 = [v10 tertiaryLabelColor];
  }

  v11 = v9;
  [v8 setTintColor_];
}

id sub_24BA3D278(void *a1)
{
  *&v1[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_appIconHeightWidth] = 0x403D000000000000;
  *&v1[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_checkmarkHeightWidth] = 0x4036000000000000;
  *&v1[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_stateIconLeadingPadding] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_appIconLeadingPadding] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_appNameLeadingPadding] = 0x4030000000000000;
  v3 = OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_stateIconSelectedTintColor;
  *&v1[v3] = [objc_opt_self() tintColor];
  v4 = &v1[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_updateAppIcon];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_app] = 0;
  v1[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell__checked] = 0;
  v5 = &v1[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_changeObserver];
  *v5 = 0u;
  v5[1] = 0u;
  *&v1[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___stateIconView] = 0;
  *&v1[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appIconView] = 0;
  *&v1[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appNameLabel] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AvailableAppsCell();
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_24BA3D5A8();
  }

  return v7;
}

id sub_24BA3D3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_appIconHeightWidth] = 0x403D000000000000;
  *&v3[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_checkmarkHeightWidth] = 0x4036000000000000;
  *&v3[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_stateIconLeadingPadding] = 0x4030000000000000;
  *&v3[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_appIconLeadingPadding] = 0x4030000000000000;
  *&v3[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_appNameLeadingPadding] = 0x4030000000000000;
  v6 = OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_stateIconSelectedTintColor;
  *&v3[v6] = [objc_opt_self() tintColor];
  v7 = &v3[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_updateAppIcon];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_app] = 0;
  v3[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell__checked] = 0;
  v8 = &v3[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_changeObserver];
  *v8 = 0u;
  v8[1] = 0u;
  *&v3[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___stateIconView] = 0;
  *&v3[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appIconView] = 0;
  *&v3[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appNameLabel] = 0;
  if (a3)
  {
    v9 = sub_24BAA9FDC();
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for AvailableAppsCell();
  v10 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, a1, v9);

  v11 = v10;
  sub_24BA3D5A8();

  return v11;
}

uint64_t sub_24BA3D5A8()
{
  [v0 setSelectionStyle_];
  v1 = [v0 contentView];
  v2 = sub_24BA3E0B4();
  [v1 addSubview_];

  v3 = [v0 contentView];
  v4 = sub_24BA3E1B0();
  [v3 addSubview_];

  v5 = [v0 contentView];
  v6 = sub_24BA3E234();
  [v5 addSubview_];

  v7 = OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___stateIconView;
  [*&v0[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___stateIconView] setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appIconView;
  [*&v0[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appIconView] setTranslatesAutoresizingMaskIntoConstraints_];
  v53 = OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appNameLabel;
  [*&v0[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appNameLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v54 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24BABAEB0;
  v10 = [*&v0[v7] widthAnchor];
  v11 = [v10 constraintEqualToConstant_];

  *(v9 + 32) = v11;
  v12 = [*&v0[v7] heightAnchor];
  v13 = [v12 constraintEqualToConstant_];

  *(v9 + 40) = v13;
  v14 = [*&v0[v7] centerYAnchor];
  v15 = [v0 contentView];
  v16 = [v15 centerYAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v9 + 48) = v17;
  v18 = [*&v0[v7] leadingAnchor];
  v19 = [v0 contentView];
  v20 = [v19 &off_279018528 + 1];

  v21 = [v18 constraintEqualToAnchor:v20 constant:16.0];
  *(v9 + 56) = v21;
  v22 = [*&v0[v8] widthAnchor];
  v23 = [v22 constraintEqualToConstant_];

  *(v9 + 64) = v23;
  v24 = [*&v0[v8] heightAnchor];
  v25 = [v24 constraintEqualToConstant_];

  *(v9 + 72) = v25;
  v26 = [*&v0[v8] centerYAnchor];
  v27 = [v0 contentView];
  v28 = [v27 centerYAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v9 + 80) = v29;
  v30 = [*&v0[v8] leadingAnchor];
  v31 = [*&v0[v7] trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:16.0];

  *(v9 + 88) = v32;
  v33 = [*&v0[v53] centerYAnchor];
  v34 = [v0 contentView];
  v35 = [v34 centerYAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v9 + 96) = v36;
  v37 = [*&v0[v53] leadingAnchor];
  v38 = [*&v0[v8] trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:16.0];

  *(v9 + 104) = v39;
  v40 = [*&v0[v53] trailingAnchor];
  v41 = [v0 contentView];
  v42 = [v41 trailingAnchor];

  v43 = [v40 constraintLessThanOrEqualToAnchor_];
  *(v9 + 112) = v43;
  sub_24B934EA0();
  v44 = sub_24BAAA11C();

  [v54 activateConstraints_];

  v45 = [objc_opt_self() defaultCenter];
  if (qword_27F0630D8 != -1)
  {
    swift_once();
  }

  v46 = qword_27F069660;
  v47 = [objc_opt_self() mainQueue];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = sub_24BA3E40C;
  v58 = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24BA3DDB0;
  ObjectType = &block_descriptor_12;
  v49 = _Block_copy(aBlock);

  v50 = [v45 addObserverForName:v46 object:0 queue:v47 usingBlock:v49];
  _Block_release(v49);

  ObjectType = swift_getObjectType();
  aBlock[0] = v50;
  v51 = OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_changeObserver;
  swift_beginAccess();
  sub_24BA3E42C(aBlock, &v0[v51]);
  return swift_endAccess();
}

void sub_24BA3DD20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_updateAppIcon);
    if (v2)
    {

      v2(v1);
      sub_24B926B78(v2);
    }
  }
}

uint64_t sub_24BA3DDB0(uint64_t a1)
{
  v2 = sub_24BAA7B6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_24BAA7B5C();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

id sub_24BA3DEA4()
{
  v1 = OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_changeObserver;
  swift_beginAccess();
  sub_24BA3E49C(v0 + v1, &v5);
  if (v6)
  {
    sub_24B8F1EDC(&v5, &v7);
    v2 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_0(&v7, *(&v8 + 1));
    [v2 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v7);
  }

  else
  {
    sub_24B8F35E4(&v5, &qword_27F063190);
  }

  v7 = 0u;
  v8 = 0u;
  swift_beginAccess();
  sub_24BA3E42C(&v7, v0 + v1);
  swift_endAccess();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AvailableAppsCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_24BA3E0B4()
{
  v1 = OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___stateIconView;
  v2 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___stateIconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___stateIconView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
    [v4 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v5 = sub_24BAA9FDC();
    v6 = [objc_opt_self() systemImageNamed_];

    [v4 setImage_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_24BA3E1B0()
{
  v1 = OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appIconView;
  v2 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appIconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appIconView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_24BA3E234()
{
  v1 = OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell____lazy_storage___appNameLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v5 = sub_24BAA9FDC();
    [v4 setText_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_24BA3E2D4()
{
  result = sub_24BAA9FDC();
  qword_27F069660 = result;
  return result;
}

id static NSNotificationName.IconStateDidChange.getter()
{
  if (qword_27F0630D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F069660;

  return v1;
}

uint64_t sub_24BA3E3D4()
{
  MEMORY[0x24C251450](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24BA3E42C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063190);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA3E49C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA3E54C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063500);
    v4 = sub_24BAAA15C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

id sub_24BA3E62C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069820);
  sub_24BAA8FCC();
  [v0 setDelegate_];

  sub_24BAA8FCC();
  [v0 setDataSource_];

  type metadata accessor for AvailableAppsCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_24BAA9FDC();
  [v0 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v2];

  [v0 setRowHeight_];
  [v0 setAllowsSelection_];
  v3 = objc_opt_self();
  v4 = v0;
  v5 = [v3 secondarySystemGroupedBackgroundColor];
  [v4 setBackgroundColor_];

  return v4;
}

uint64_t sub_24BA3E7C4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_availableApps);

  result = sub_24BA42F98();
  if (*(v2 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache + 8))
  {
    v4 = *(v2 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache + 16);

    v5 = *(v4 + 16);

    if (!v5)
    {
      return 0;
    }

    v6 = [*(v1 + OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_collation) sectionIndexTitles];
    v7 = sub_24BAAA12C();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24BA3E884(unint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0697F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24BAAD5B0;
  v6 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0697F8);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_24BAAD5B0;
  v8 = *MEMORY[0x277D74430];
  *(v7 + 32) = *MEMORY[0x277D74430];
  *(v7 + 40) = *MEMORY[0x277D74420];
  v9 = v6;
  v10 = v8;
  v11 = sub_24BA2112C(v7);
  swift_setDeallocating();
  sub_24B8F35E4(v7 + 32, &qword_27F069800);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069808);
  *(inited + 40) = v11;
  sub_24BA2121C(inited);
  swift_setDeallocating();
  sub_24B8F35E4(inited + 32, &qword_27F068E10);
  type metadata accessor for AttributeName(0);
  sub_24BA3EFFC(&qword_27F0635E8, type metadata accessor for AttributeName);
  v12 = sub_24BAA9EDC();

  v13 = [v4 fontDescriptorByAddingAttributes_];

  v14 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
  [v3 setFont_];

  v15 = [*(v1 + OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_collation) sectionTitles];
  v16 = sub_24BAAA12C();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v16 + 16) > a1)
  {

    v17 = sub_24BAA9FDC();

    [v3 setText_];

    v18 = [objc_opt_self() secondaryLabelColor];
    [v3 setTextColor_];

    v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v20 = v3;
    [v19 addSubview_];
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];
    v21 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_24BABAEC0;
    v23 = [v20 leadingAnchor];
    v24 = [v19 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:16.0];

    *(v22 + 32) = v25;
    v26 = [v20 trailingAnchor];

    v27 = [v19 trailingAnchor];
    v28 = [v26 constraintLessThanOrEqualToAnchor:v27 constant:16.0];

    *(v22 + 40) = v28;
    v29 = [v20 centerYAnchor];

    v30 = [v19 centerYAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:12.0];

    *(v22 + 48) = v31;
    sub_24B934EA0();
    v32 = sub_24BAAA11C();

    [v21 activateConstraints_];

    return;
  }

  __break(1u);
}

void sub_24BA3EDE0(unint64_t a1)
{
  v3 = OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_sections;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v1 + v3);
  if (*(v4 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v4 + 8 * a1 + 32);
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

    goto LABEL_5;
  }

LABEL_8:
  if (sub_24BAAA52C() >= 1)
  {
LABEL_5:
    v6 = [objc_opt_self() defaultMetrics];
    [v6 scaledValueForValue_];
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24BA3EEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_24BA3EF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24BA3EFA8()
{
  result = qword_27F069810;
  if (!qword_27F069810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069810);
  }

  return result;
}

uint64_t sub_24BA3EFFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24BA3F044()
{
  result = qword_27F069828;
  if (!qword_27F069828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069828);
  }

  return result;
}

uint64_t EventSource.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t EventSource.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t EventSource.description.getter()
{
  sub_24BAAA5FC();
  MEMORY[0x24C250160](60, 0xE100000000000000);
  v0 = sub_24BAAA86C();
  MEMORY[0x24C250160](v0);

  MEMORY[0x24C250160](0x69746E656469203ALL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069890);
  sub_24BAAA6BC();
  MEMORY[0x24C250160](62, 0xE100000000000000);
  return 0;
}

uint64_t InstalledApp.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t InstalledApp.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_24BA3F390(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleIdentifier];
  if (!v2)
  {

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v10 = sub_24BAA812C();
    __swift_project_value_buffer(v10, qword_27F077038);
    v11 = v1;
    v12 = sub_24BAA810C();
    v13 = sub_24BAAA2AC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v54 = v16;
      *v14 = 136446466;
      v17 = sub_24BAAA86C();
      v19 = sub_24B8E49D4(v17, v18, &v54);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v11;
      *v15 = v11;
      v20 = v11;
      _os_log_impl(&dword_24B8D3000, v12, v13, "[%{public}s] Record bundle id is nil. record: '%@'", v14, 0x16u);
      sub_24B8F35E4(v15, &qword_27F064510);
      MEMORY[0x24C251390](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C251390](v16, -1, -1);
      MEMORY[0x24C251390](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v3 = v2;
  v4 = sub_24BAAA01C();
  v6 = v5;
  if (![v1 isWebApp])
  {

    v21 = [objc_allocWithZone(MEMORY[0x277D058C8]) initWithBundleID_];

    v22 = [v1 localizedName];
    v23 = sub_24BAAA01C();
    v25 = v24;

    type metadata accessor for InstalledApp();
    v26 = swift_allocObject();
    v27 = [v21 bundleID];
    v28 = sub_24BAAA01C();
    v30 = v29;

    *(v26 + 40) = v28;
    *(v26 + 48) = v30;
    v31 = v26;

LABEL_10:
    result = v31;
    v31[2] = v21;
    v31[3] = v23;
    v31[4] = v25;
    return result;
  }

  v7 = [v1 infoDictionary];
  v8 = sub_24BAA9FDC();
  sub_24BA400BC();
  v9 = [v7 objectForKey:v8 ofClass:swift_getObjCClassFromMetadata()];

  if (v9)
  {
    sub_24BAAA47C();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54 = v52;
  v55 = v53;
  if (!*(&v53 + 1))
  {
    sub_24B8F35E4(&v54, &qword_27F063190);
LABEL_19:

    v33 = 0;
    v54 = 0u;
    v55 = 0u;
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0 || !v51)
  {
    goto LABEL_19;
  }

  v33 = v51;
  v34 = sub_24BAA9FDC();
  v35 = [v33 objectForKey_];

  if (v35)
  {
    sub_24BAAA47C();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54 = v52;
  v55 = v53;
  if (*(&v53 + 1))
  {
    if (swift_dynamicCast())
    {
      v45 = [v1 localizedName];

      if (!v45)
      {
        sub_24BAAA01C();
        v45 = sub_24BAA9FDC();
      }

      v46 = objc_allocWithZone(MEMORY[0x277D05AC8]);
      v47 = sub_24BAA9FDC();

      v21 = [v46 initWithWebIdentifier:v47 givenName:v45];

      type metadata accessor for InstalledApp();
      v48 = swift_allocObject();
      *(v48 + 40) = v4;
      *(v48 + 48) = v6;
      v31 = v48;
      v49 = [v21 givenName];
      v23 = sub_24BAAA01C();
      v25 = v50;

      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  sub_24B8F35E4(&v54, &qword_27F063190);
LABEL_21:
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v36 = sub_24BAA812C();
  __swift_project_value_buffer(v36, qword_27F077038);

  v37 = sub_24BAA810C();
  v38 = sub_24BAAA2BC();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v54 = v40;
    *v39 = 136446466;
    v41 = sub_24BAAA86C();
    v43 = sub_24B8E49D4(v41, v42, &v54);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    v44 = sub_24B8E49D4(v4, v6, &v54);

    *(v39 + 14) = v44;
    _os_log_impl(&dword_24B8D3000, v37, v38, "[%{public}s] Web app '%s' is missing a manifest ID", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v40, -1, -1);
    MEMORY[0x24C251390](v39, -1, -1);
  }

  else
  {
  }

  return 0;
}

void *InstalledApp.__allocating_init(notificationSource:)(void *a1)
{
  v2 = [a1 sourceIdentifier];
  if (!v2)
  {
    sub_24BAAA01C();
    v2 = sub_24BAA9FDC();
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D058C8]) initWithBundleID_];

  v4 = [a1 displayName];
  v5 = sub_24BAAA01C();
  v7 = v6;

  type metadata accessor for InstalledApp();
  v8 = swift_allocObject();
  v9 = [v3 bundleID];
  v10 = sub_24BAAA01C();
  v12 = v11;

  v8[5] = v10;
  v8[6] = v12;

  v8[2] = v3;
  v8[3] = v5;
  v8[4] = v7;
  return v8;
}

uint64_t RemoteWebApp.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t RemoteWebApp.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *_s15FocusSettingsUI12InstalledAppC21applicationIdentifierACSo014DNDApplicationG0C_tcfC_0(void *a1)
{
  v2 = [a1 bundleID];
  v3 = sub_24BAAA01C();
  v5 = v4;

  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v7 = sub_24B8E3E80(v3, v5, 1);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 localizedName];
    v3 = sub_24BAAA01C();
    v11 = v10;

    v5 = v11;
  }

  type metadata accessor for InstalledApp();
  v12 = swift_allocObject();
  v13 = [a1 bundleID];
  v14 = sub_24BAAA01C();
  v16 = v15;

  v12[5] = v14;
  v12[6] = v16;

  v12[2] = a1;
  v12[3] = v3;
  v12[4] = v5;
  return v12;
}

void *_s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v5 = sub_24B8E3E80(a1, a2, 1);
  if (!v5)
  {
    v6 = 0;
LABEL_3:
    v7 = objc_allocWithZone(MEMORY[0x277D058C8]);
    v8 = sub_24BAA9FDC();
    v9 = [v7 initWithBundleID_];

    type metadata accessor for InstalledApp();
    v10 = swift_allocObject();
    v11 = [v9 bundleID];
    v12 = sub_24BAAA01C();
    v14 = v13;

    v10[5] = v12;
    v10[6] = v14;
    goto LABEL_4;
  }

  v16 = v5;
  type metadata accessor for InstalledApp();
  v6 = v16;
  v17 = sub_24BA3F390(v6);

  if (!v17)
  {
    goto LABEL_3;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClassUnconditional();
    v10 = swift_allocObject();
    v10[5] = a1;
    v10[6] = a2;
    swift_unknownObjectRetain();
    v23 = [v9 givenName];
    a1 = sub_24BAAA01C();
    a2 = v24;

    goto LABEL_5;
  }

  v9 = v18;
  swift_unknownObjectRetain();

  a1 = v17[3];
  a2 = v17[4];

  v10 = swift_allocObject();
  v19 = [v9 bundleID];
  v20 = sub_24BAAA01C();
  v22 = v21;

  v10[5] = v20;
  v10[6] = v22;

LABEL_4:

LABEL_5:
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  return v10;
}

unint64_t sub_24BA3FFD8()
{
  result = qword_27F069898;
  if (!qword_27F069898)
  {
    type metadata accessor for EventSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069898);
  }

  return result;
}

unint64_t sub_24BA400BC()
{
  result = qword_27F0698A0;
  if (!qword_27F0698A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F0698A0);
  }

  return result;
}

void *sub_24BA40108(void *a1)
{
  v2 = [a1 bundleIdentifier];
  if (!v2)
  {
    sub_24BAAA01C();
    v2 = sub_24BAA9FDC();
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D058C8]) initWithBundleID:v2 platform:3];

  v4 = [a1 applicationName];
  v5 = sub_24BAAA01C();
  v7 = v6;

  type metadata accessor for InstalledApp();
  v8 = swift_allocObject();
  v9 = [v3 bundleID];
  v10 = sub_24BAAA01C();
  v12 = v11;

  v8[5] = v10;
  v8[6] = v12;
  v8[2] = v3;
  v8[3] = v5;
  v8[4] = v7;
  return v8;
}

uint64_t sub_24BA40218()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return v1;
}

uint64_t sub_24BA4028C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24BA4030C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24BAA81CC();
}

uint64_t sub_24BA40390()
{
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  result = sub_24BA43CAC(v1);
  if (!*(v0 + 24))
  {
    v6 = MEMORY[0x277D84F90];
    v3 = sub_24BA4083C();
    sub_24B8E35A0(v3);
    v4 = sub_24BA44084();
    sub_24B8E35A0(v4);
    sub_24BA415D4(v6, v5);
  }

  return result;
}

uint64_t Array<A>.sortedAllowableApps.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v32[0] = MEMORY[0x277D84F90];
    sub_24BAAA68C();
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v5, v6);
      sub_24BAAA66C();
      sub_24BAAA69C();
      sub_24BAAA6AC();
      sub_24BAAA67C();
      v4 += 2;
      --v1;
    }

    while (v1);
    v7 = v32[0];
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v32[9] = v2;
  if (v7 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v7 = v26)
  {
    v9 = 0;
    v30 = v7 & 0xFFFFFFFFFFFFFF8;
    v31 = v7 & 0xC000000000000001;
    v29 = v7;
    v10 = v7 + 32;
    while (v31)
    {
      v7 = MEMORY[0x24C2506E0](v9, v29);
      v11 = v7;
      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        goto LABEL_34;
      }

LABEL_15:
      v13 = [objc_opt_self() displayIdentifiers];
      v14 = sub_24BAAA20C();

      if (!*(v14 + 16))
      {
        goto LABEL_10;
      }

      v15 = *(v11 + 40);
      v16 = *(v11 + 48);
      sub_24BAAA7FC();

      sub_24BAAA07C();
      v17 = sub_24BAAA84C();
      v18 = -1 << *(v14 + 32);
      v19 = v17 & ~v18;
      if ((*(v14 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(v14 + 48) + 16 * v19);
          v22 = *v21 == v15 && v21[1] == v16;
          if (v22 || (sub_24BAAA78C() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v14 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        if (qword_27F0630B8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v23 = qword_27F076FC0;

        sub_24B9E5BA8(v11, v23);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          goto LABEL_11;
        }

        sub_24BAAA66C();
        sub_24BAAA69C();
        sub_24BAAA6AC();
        v7 = sub_24BAAA67C();
        if (v9 == i)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_9:

LABEL_10:

LABEL_11:

        if (v9 == i)
        {
          goto LABEL_37;
        }
      }
    }

    if (v9 >= *(v30 + 16))
    {
      goto LABEL_35;
    }

    v11 = *(v10 + 8 * v9);

    v12 = __OFADD__(v9++, 1);
    if (!v12)
    {
      goto LABEL_15;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v26 = v7;
    i = sub_24BAAA52C();
  }

LABEL_37:

  v32[0] = sub_24B8F0428(v27);
  sub_24BA43890(v32, sub_24B8EFBF4, sub_24B8EFB34);

  return v32[0];
}

uint64_t sub_24BA407F0(uint64_t a1, char a2, uint64_t *a3)
{
  type metadata accessor for InstalledAppsSource();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = MEMORY[0x277D84F90];
  *(result + 16) = a2;
  *a3 = result;
  return result;
}

id sub_24BA4083C()
{
  v0 = sub_24BAA7D0C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() enumeratorWithOptions_];
  v5 = MEMORY[0x277D84F90];
  v106 = MEMORY[0x277D84F90];
  v102 = v4;
  sub_24BAAA27C();
  sub_24BA44834(&unk_27F063180, 255, MEMORY[0x277CC9178]);
  sub_24BAAA40C();
  if (v108)
  {
    v6 = MEMORY[0x277D84F90];
    do
    {
      while (1)
      {
        sub_24B8F1EDC(&v107, &v111);
        sub_24B8F37E8(0, &qword_27F063198);
        if ((swift_dynamicCast() & 1) == 0 || !v104)
        {
          break;
        }

        MEMORY[0x24C2501C0]();
        if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24BAAA14C();
        }

        sub_24BAAA16C();
        v6 = v106;
        sub_24BAAA40C();
        v5 = MEMORY[0x277D84F90];
        if (!v108)
        {
          goto LABEL_12;
        }
      }

      sub_24BAAA40C();
    }

    while (v108);
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    v6 = v5;
  }

LABEL_12:

  (*(v1 + 8))(v3, v0);
  v110 = v5;
  v109 = MEMORY[0x277D84FA0];
  if (v6 >> 62)
  {
    v7 = sub_24BAAA52C();
    if (v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_14:
      if (v7 < 1)
      {
LABEL_135:
        __break(1u);
LABEL_136:
        v71 = sub_24BAAA52C();
        goto LABEL_79;
      }

      v8 = 0;
      v102 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x24C2506E0](v8, v6);
        }

        else
        {
          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = [v9 bundleIdentifier];
        if (v11)
        {
          v12 = v11;
          v13 = sub_24BAAA01C();
          v15 = v14;

          sub_24B8E50EC(&v107, v13, v15);

          type metadata accessor for InstalledApp();
          v16 = v10;
          v17 = sub_24BA3F390(v16);
          if (v17)
          {
            v18 = v17;
            v19 = [objc_opt_self() displayIdentifiers];
            v20 = sub_24BAAA20C();

            v21 = *(v18 + 40);
            v22 = *(v18 + 48);

            LOBYTE(v21) = sub_24B91471C(v21, v22, v20);

            if (v21)
            {
              if (*(v103 + 16) != 1)
              {
                goto LABEL_28;
              }

              if (qword_27F0630B8 != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              v23 = qword_27F076FC0;

              sub_24B9E5BA8(v18, v23);
              v25 = v24;

              if (v25)
              {
LABEL_28:

                MEMORY[0x24C2501C0](v26);
                if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_24BAAA14C();
                }

                sub_24BAAA16C();

                v102 = v110;
                goto LABEL_17;
              }
            }
          }
        }

        else
        {
        }

LABEL_17:
        if (v7 == ++v8)
        {
          goto LABEL_35;
        }
      }
    }
  }

  v102 = MEMORY[0x277D84F90];
LABEL_35:
  if (*(v103 + 16) != 1)
  {

    return v102;
  }

  v27 = [objc_opt_self() currentNotificationSettingsCenter];
  v28 = [v27 allNotificationSources];

  v29 = sub_24B8F37E8(0, &qword_27F0698F0);
  sub_24B9E5ECC();
  v30 = sub_24BAAA20C();

  v97 = v29;
  if ((v30 & 0xC000000000000001) != 0)
  {
    sub_24BAAA4DC();
    sub_24BAAA24C();
    v31 = *(&v111 + 1);
    v30 = v111;
    v32 = v112;
    v33 = v113;
    v34 = v114;
  }

  else
  {
    v33 = 0;
    v35 = -1 << *(v30 + 32);
    v31 = v30 + 56;
    v32 = ~v35;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v34 = (v37 & *(v30 + 56));
  }

  v96 = v32;
  v38 = (v32 + 64) >> 6;
  v98 = v7;
  v101 = v30;
  v100 = v31;
  v99 = v38;
  while (v30 < 0)
  {
    v43 = sub_24BAAA56C();
    if (!v43)
    {
      goto LABEL_77;
    }

    v105 = v43;
    swift_dynamicCast();
    v42 = v107;
    v5 = v33;
    v41 = v34;
    if (!v107)
    {
      goto LABEL_77;
    }

LABEL_55:
    v102 = v41;
    v44 = v42;
    v45 = [v44 sourceIdentifier];
    if (!v45)
    {
      sub_24BAAA01C();
      v45 = sub_24BAA9FDC();
    }

    v46 = [objc_allocWithZone(MEMORY[0x277D058C8]) initWithBundleID_];

    v47 = [v44 displayName];
    v48 = sub_24BAAA01C();
    v50 = v49;

    type metadata accessor for InstalledApp();
    v51 = swift_allocObject();
    v52 = [v46 bundleID];
    v53 = sub_24BAAA01C();
    v55 = v54;

    v51[5] = v53;
    v51[6] = v55;

    v51[2] = v46;
    v51[3] = v48;
    v51[4] = v50;
    v56 = v109;
    if (*(v109 + 16))
    {
      v58 = v51[5];
      v57 = v51[6];
      sub_24BAAA7FC();

      sub_24BAAA07C();
      v59 = sub_24BAAA84C();
      v60 = -1 << *(v56 + 32);
      v61 = v59 & ~v60;
      if ((*(v56 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
      {
        v62 = ~v60;
        while (1)
        {
          v63 = (*(v56 + 48) + 16 * v61);
          v64 = *v63 == v58 && v63[1] == v57;
          if (v64 || (sub_24BAAA78C() & 1) != 0)
          {
            break;
          }

          v61 = (v61 + 1) & v62;
          if (((*(v56 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        v65 = 1;
      }

      else
      {
LABEL_66:
        v65 = 0;
      }
    }

    else
    {
      v65 = 0;
    }

    v7 = v98;
    if (qword_27F0630B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v66 = qword_27F076FC0;

    sub_24B9E5BA8(v51, v66);
    v68 = v67;

    if ((v68 & 1) == 0 || v65)
    {
    }

    else
    {

      MEMORY[0x24C2501C0](v69);
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24BAAA14C();
      }

      sub_24BAAA16C();
    }

    v33 = v5;
    v34 = v102;
    v30 = v101;
    v31 = v100;
    v38 = v99;
  }

  v39 = v33;
  v40 = v34;
  v5 = v33;
  if (!v34)
  {
    while (1)
    {
      v5 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v5 >= v38)
      {
        goto LABEL_77;
      }

      v40 = *(v31 + 8 * v5);
      ++v39;
      if (v40)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

LABEL_51:
  v41 = ((v40 - 1) & v40);
  v42 = *(*(v30 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v40)))));
  if (v42)
  {
    goto LABEL_55;
  }

LABEL_77:
  sub_24B8F0C5C();

  sub_24B8E35A0(v70);
  v5 = v110;
  if (v110 >> 62)
  {
    goto LABEL_136;
  }

  v71 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_79:
  v72 = MEMORY[0x277D84F90];
  if (!v71)
  {
LABEL_87:
    v101 = v72;
    v102 = v5;
    if (v7)
    {
      v5 = 0;
      v75 = MEMORY[0x277D84F90];
      do
      {
        v76 = v5;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v77 = MEMORY[0x24C2506E0](v76, v6);
            v5 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              goto LABEL_128;
            }
          }

          else
          {
            if (v76 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_129;
            }

            v77 = *(v6 + 8 * v76 + 32);
            v5 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              goto LABEL_128;
            }
          }

          v78 = v77;
          v79 = [v78 counterpartIdentifiers];
          if (v79)
          {
            break;
          }

          ++v76;
          if (v5 == v7)
          {
            goto LABEL_106;
          }
        }

        v80 = v79;
        v81 = sub_24BAAA12C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_24B99A4C8(0, v75[2] + 1, 1, v75);
        }

        v83 = v75[2];
        v82 = v75[3];
        if (v83 >= v82 >> 1)
        {
          v75 = sub_24B99A4C8((v82 > 1), v83 + 1, 1, v75);
        }

        v75[2] = v83 + 1;
        v75[v83 + 4] = v81;
      }

      while (v5 != v7);
    }

    else
    {
      v75 = MEMORY[0x277D84F90];
    }

LABEL_106:

    v84 = v75[2];
    if (v84)
    {
      v85 = 0;
      v5 = (v75 + 4);
      v86 = MEMORY[0x277D84F90];
      v6 = MEMORY[0x277D837D0];
      while (1)
      {
        if (v85 >= v75[2])
        {
          goto LABEL_130;
        }

        v87 = *(v5 + 8 * v85);
        v88 = *(v87 + 16);
        v89 = *(v86 + 2);
        v7 = v89 + v88;
        if (__OFADD__(v89, v88))
        {
          goto LABEL_131;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v7 <= *(v86 + 3) >> 1)
        {
          if (!*(v87 + 16))
          {
            goto LABEL_108;
          }
        }

        else
        {
          if (v89 <= v7)
          {
            v91 = v89 + v88;
          }

          else
          {
            v91 = v89;
          }

          v86 = sub_24B99A290(isUniquelyReferenced_nonNull_native, v91, 1, v86);
          if (!*(v87 + 16))
          {
LABEL_108:

            if (v88)
            {
              goto LABEL_132;
            }

            goto LABEL_109;
          }
        }

        if ((*(v86 + 3) >> 1) - *(v86 + 2) < v88)
        {
          goto LABEL_133;
        }

        swift_arrayInitWithCopy();

        if (v88)
        {
          v92 = *(v86 + 2);
          v93 = __OFADD__(v92, v88);
          v94 = v92 + v88;
          if (v93)
          {
            goto LABEL_134;
          }

          *(v86 + 2) = v94;
        }

LABEL_109:
        if (v84 == ++v85)
        {
          goto LABEL_125;
        }
      }
    }

    v86 = MEMORY[0x277D84F90];
LABEL_125:

    v95 = swift_allocObject();
    v95[2] = v101;
    v95[3] = v86;
    v95[4] = v103;

    sub_24BA43CF4(sub_24BA448C4, v95);

    return v102;
  }

  *&v107 = MEMORY[0x277D84F90];
  result = sub_24BAAA68C();
  if ((v71 & 0x8000000000000000) == 0)
  {
    v74 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C2506E0](v74, v5);
      }

      else
      {
      }

      ++v74;
      swift_unknownObjectRetain();

      sub_24BAAA66C();
      sub_24BAAA69C();
      sub_24BAAA6AC();
      sub_24BAAA67C();
    }

    while (v71 != v74);
    v72 = v107;
    goto LABEL_87;
  }

  __break(1u);
  return result;
}

uint64_t sub_24BA415D4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  sub_24BA44834(&qword_27F0698E8, a2, type metadata accessor for InstalledAppsSource);
  v6 = sub_24BAA814C();
  sub_24BAA816C();

  v64 = sub_24B8F0428(v7);
  sub_24BA43890(&v64, sub_24B99C2DC, sub_24B99B860);
  v8 = v64;
  if ((v64 & 0x8000000000000000) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = (v64 >> 62) & 1;
  }

  if (v9)
  {
LABEL_90:
    v52 = sub_24BAAA52C();
    if ((v52 & 0x8000000000000000) == 0)
    {
      goto LABEL_98;
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v9 = sub_24B99A4EC(0, *(v9 + 16) + 1, 1, v9);
LABEL_81:
    v49 = *(v9 + 16);
    v48 = *(v9 + 24);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v9 = sub_24B99A4EC((v48 > 1), v49 + 1, 1, v9);
    }

    *(v9 + 16) = v50;
    v51 = (v9 + 32 * v49);
    v51[4] = v4;
    v51[5] = v60;
    v51[6] = v59;
    v51[7] = v6;
    goto LABEL_101;
  }

  v10 = *(v64 + 16);
  if (!v10)
  {
    goto LABEL_99;
  }

  do
  {
    v63 = v8 & 0xC000000000000001;
    v60 = v8 + 32;
    swift_retain_n();
    v59 = 0;
    v11 = 0;
    v3 = MEMORY[0x277D84F90];
    v61 = MEMORY[0x277D84F90];
    v62 = v10;
    v57 = v5;
    do
    {
      if (v63)
      {
        v4 = MEMORY[0x24C2506E0](v11, v8);
      }

      else
      {
        if (v11 >= *(v8 + 16))
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        v4 = *(v60 + 8 * v11);
      }

      v64 = sub_24BA41DE4(v4);
      v65 = v12;
      sub_24B8F5E3C();
      v13 = sub_24BAAA41C();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v17 = sub_24BAAA0DC();
        v6 = v18;
      }

      else
      {

        v6 = 0xE100000000000000;
        v17 = 32;
      }

      if (sub_24BAA9F2C())
      {

        v6 = 0xE100000000000000;
        v17 = 35;
      }

      v19 = *(v3 + 2);
      if (v19)
      {
        v20 = &v3[24 * v19];
        v21 = v17 == *(v20 + 1) && v6 == *(v20 + 2);
        if (v21 || (sub_24BAAA78C() & 1) != 0)
        {

          goto LABEL_8;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_24B99A620(0, v19 + 1, 1, v3);
        }

        v23 = *(v3 + 2);
        v22 = *(v3 + 3);
        if (v23 >= v22 >> 1)
        {
          v3 = sub_24B99A620((v22 > 1), v23 + 1, 1, v3);
        }

        *(v3 + 2) = v23 + 1;
        v24 = &v3[24 * v23];
        *(v24 + 4) = v17;
        *(v24 + 5) = v6;
        *(v24 + 6) = v19;
        v5 = v59;
        if (v11 < v59)
        {
          goto LABEL_85;
        }

        if (v9)
        {
          v25 = sub_24BAAA52C();
        }

        else
        {
          v25 = *(v8 + 16);
        }

        if (v25 < v59)
        {
          goto LABEL_86;
        }

        if (v59 < 0)
        {
          goto LABEL_87;
        }

        if (v9)
        {
          v29 = sub_24BAAA52C();
        }

        else
        {
          v29 = *(v8 + 16);
        }

        if (v29 < v11)
        {
          goto LABEL_88;
        }

        if (!v63 || v59 == v11)
        {

          if (v9)
          {
LABEL_51:

            v32 = sub_24BAAA6FC();
            v34 = v33;
            v5 = v35;
            v58 = v36;
LABEL_54:
            v6 = v9;
            v37 = v5;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = sub_24B99A4EC(0, v61[2] + 1, 1, v61);
            }

            v39 = v61[2];
            v38 = v61[3];
            if (v39 >= v38 >> 1)
            {
              v61 = sub_24B99A4EC((v38 > 1), v39 + 1, 1, v61);
            }

            v61[2] = v39 + 1;
            v40 = &v61[4 * v39];
            v40[4] = v32;
            v40[5] = v34;
            v5 = v57;
            v40[6] = v37;
            v40[7] = v58;
            v59 = v11;
            v9 = v6;
            goto LABEL_8;
          }
        }

        else
        {
          if (v59 >= v11)
          {
            goto LABEL_89;
          }

          type metadata accessor for InstalledApp();

          v30 = v59;
          do
          {
            v31 = v30 + 1;
            sub_24BAAA61C();
            v30 = v31;
          }

          while (v11 != v31);
          if (v9)
          {
            goto LABEL_51;
          }
        }

        v58 = (2 * v11) | 1;
        v32 = v8;
        v34 = v8 + 32;
        goto LABEL_54;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_24B99A620(0, 1, 1, v3);
      }

      v27 = *(v3 + 2);
      v26 = *(v3 + 3);
      if (v27 >= v26 >> 1)
      {
        v3 = sub_24B99A620((v26 > 1), v27 + 1, 1, v3);
      }

      *(v3 + 2) = v27 + 1;
      v28 = &v3[24 * v27];
      *(v28 + 4) = v17;
      *(v28 + 5) = v6;
      *(v28 + 6) = 0;
LABEL_8:
      ++v11;
    }

    while (v11 != v62);

    if (v59 == v62)
    {
      v9 = v61;
      goto LABEL_100;
    }

    if (v62 < v59)
    {
      goto LABEL_92;
    }

    if (v9)
    {
      v41 = sub_24BAAA52C();
    }

    else
    {
      v41 = *(v8 + 16);
    }

    if (v41 < v59)
    {
      goto LABEL_93;
    }

    if (v59 < 0)
    {
      goto LABEL_94;
    }

    if (v9)
    {
      v42 = sub_24BAAA52C();
    }

    else
    {
      v42 = *(v8 + 16);
    }

    if (v42 < v62)
    {
      goto LABEL_95;
    }

    if (!v63)
    {

LABEL_77:

      if (v9)
      {
        v4 = sub_24BAAA6FC();
        v59 = v46;
        v60 = v45;
        v6 = v47;
      }

      else
      {
        v6 = (2 * v62) | 1;
        v4 = v8;
      }

      v9 = v61;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_81;
      }

      goto LABEL_96;
    }

    v6 = v59;
    if (v59 < v62)
    {
      type metadata accessor for InstalledApp();

      v43 = v59;
      do
      {
        v44 = v43 + 1;
        sub_24BAAA61C();
        v43 = v44;
      }

      while (v62 != v44);
      goto LABEL_77;
    }

    __break(1u);

    __break(1u);
LABEL_98:
    v10 = v52;
  }

  while (v52);
LABEL_99:

  v9 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F90];
LABEL_100:

  v50 = *(v9 + 16);
LABEL_101:
  if (*(v3 + 2) == v50)
  {

    v53 = *(v5 + 24);
    *(v5 + 24) = v3;
    *(v5 + 32) = v9;
    sub_24BA43CAC(v53);
  }

  else
  {
    v64 = 0;
    v65 = 0xE000000000000000;

    sub_24BAAA5FC();

    v64 = 0xD00000000000001DLL;
    v65 = 0x800000024BAC53F0;
    v55 = sub_24BAAA76C();
    MEMORY[0x24C250160](v55);

    MEMORY[0x24C250160](544437792, 0xE400000000000000);
    v56 = sub_24BAAA76C();
    MEMORY[0x24C250160](v56);

    result = sub_24BAAA6CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA41DE4(uint64_t a1)
{
  v2 = sub_24BA446C4(a1);
  if (!sub_24BAAA08C())
  {

    v2 = *(a1 + 24);
    if (sub_24BAAA08C())
    {
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v3 = sub_24BAA812C();
      __swift_project_value_buffer(v3, qword_27F077038);

      v4 = sub_24BAA810C();
      v5 = sub_24BAAA2AC();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v28 = v7;
        *v6 = 136446466;
        v8 = sub_24BAAA86C();
        v10 = sub_24B8E49D4(v8, v9, &v28);

        *(v6 + 4) = v10;
        *(v6 + 12) = 2080;

        v11 = EventSource.description.getter();
        v13 = v12;

        v14 = sub_24B8E49D4(v11, v13, &v28);

        *(v6 + 14) = v14;
        _os_log_impl(&dword_24B8D3000, v4, v5, "[%{public}s] %s: displayName contains no visible characters", v6, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v7, -1, -1);
        MEMORY[0x24C251390](v6, -1, -1);
      }
    }

    else
    {
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v15 = sub_24BAA812C();
      __swift_project_value_buffer(v15, qword_27F077038);

      v16 = sub_24BAA810C();
      v17 = sub_24BAAA2AC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v28 = v19;
        *v18 = 136446466;
        v20 = sub_24BAAA86C();
        v22 = sub_24B8E49D4(v20, v21, &v28);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2080;

        v23 = EventSource.description.getter();
        v25 = v24;

        v26 = sub_24B8E49D4(v23, v25, &v28);

        *(v18 + 14) = v26;
        _os_log_impl(&dword_24B8D3000, v16, v17, "[%{public}s] %s: displayName contains 0 characters", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v19, -1, -1);
        MEMORY[0x24C251390](v18, -1, -1);
      }

      return 32;
    }
  }

  return v2;
}

uint64_t sub_24BA42184(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v39 = a3;
  v7 = sub_24BAA9E2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24BAA9E5C();
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v37 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24BAAA52C())
  {
    v14 = MEMORY[0x277D84F90];
    if (!i)
    {
      v23 = MEMORY[0x277D84F90];
      goto LABEL_34;
    }

    v32 = a4;
    v33 = v10;
    v34 = v11;
    v35 = v8;
    v36 = v7;
    a4 = 0;
    v43 = a1 & 0xFFFFFFFFFFFFFF8;
    v44 = a1 & 0xC000000000000001;
    v31 = a1;
    v41 = (a1 + 32);
    v10 = (a2 & 0xFFFFFFFFFFFFFF8);
    v15 = a2 < 0 ? a2 : a2 & 0xFFFFFFFFFFFFFF8;
    v30 = v15;
    v11 = a2 & 0xC000000000000001;
    v42 = a2 >> 62;
    v40 = i;
LABEL_10:
    if (v44)
    {
      break;
    }

    if (a4 < *(v43 + 16))
    {
      a1 = v41[a4];

      v17 = __OFADD__(a4++, 1);
      if (!v17)
      {
        goto LABEL_13;
      }

      goto LABEL_37;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v16 = MEMORY[0x24C2506E0](a4, v31);
  a1 = v16;
  v17 = __OFADD__(a4++, 1);
  if (v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_13:
  if (v42)
  {
    v16 = sub_24BAAA52C();
    v18 = v16;
  }

  else
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v18 != v7)
  {
    if (v11)
    {
      v8 = MEMORY[0x24C2506E0](v7, a2);
      if (__OFADD__(v7, 1))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v8 = *(a2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v7, 1))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    v19 = [v8 isEqual_];
    v16 = swift_unknownObjectRelease();
    ++v7;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  v8 = &v30;
  v20 = *(a1 + 48);
  aBlock = *(a1 + 40);
  v46 = v20;
  MEMORY[0x28223BE20](v16);
  *(&v30 - 2) = &aBlock;

  v7 = sub_24BA3AB94(sub_24BA449AC, (&v30 - 4), v39);

  if (v7 & 1) != 0 || (v8 = &v30, v22 = *(a1 + 48), aBlock = *(a1 + 40), v46 = v22, MEMORY[0x28223BE20](v21), *(&v30 - 2) = &aBlock, , v7 = sub_24BA3AB94(sub_24BA44AB4, (&v30 - 4), &unk_285EBEF18), , (v7))
  {
  }

  else
  {
LABEL_8:
    sub_24BAAA66C();
    v7 = *(v51 + 16);
    sub_24BAAA69C();
    sub_24BAAA6AC();
    sub_24BAAA67C();
  }

  if (a4 != v40)
  {
    goto LABEL_10;
  }

  v23 = v51;
  v8 = v35;
  v7 = v36;
  v10 = v33;
  v11 = v34;
  v14 = MEMORY[0x277D84F90];
LABEL_34:
  sub_24B9528C8(&unk_285EBEF38);
  sub_24B8F37E8(0, &qword_27F0644F0);
  v24 = sub_24BAAA33C();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v23;
  v49 = sub_24BA44A98;
  v50 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_24B97ACC4;
  v48 = &block_descriptor_31;
  v27 = _Block_copy(&aBlock);

  v28 = v37;
  sub_24BAA9E4C();
  aBlock = v14;
  sub_24BA44834(&qword_27F063470, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B97C674();
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v28, v10, v27);
  _Block_release(v27);

  (v8[1])(v10, v7);
  return (*(v38 + 8))(v28, v11);
}

uint64_t sub_24BA42758(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v25 = a2;
    v5 = MEMORY[0x277D84F90];
    if (*(result + 24))
    {
      v6 = *(result + 32);
      v29 = MEMORY[0x277D84F90];
      v7 = *(v6 + 16);

      if (v7)
      {
        v27 = v4;
        v4 = 0;
        v8 = v6 + 56;
        do
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_25;
          }

          ++v4;
          v10 = *(v8 - 8);
          v9 = *v8;
          v11 = *(v8 - 16);
          v12 = swift_unknownObjectRetain();
          sub_24B8F2BDC(v12, v11, v10, v9);
          swift_unknownObjectRelease();
          v8 += 32;
        }

        while (v7 != v4);
        v8 = v29;
        v4 = v27;
      }

      else
      {
        v8 = v5;
      }
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v29 = v5;
    if (v8 >> 62)
    {
LABEL_26:
      v13 = sub_24BAAA52C();
      if (v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_13:
        v14 = 0;
        v26 = v8 & 0xFFFFFFFFFFFFFF8;
        v27 = v8 & 0xC000000000000001;
        do
        {
          if (v27)
          {
            v16 = MEMORY[0x24C2506E0](v14, v8);
            v15 = v16;
            v17 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v14 >= *(v26 + 16))
            {
              goto LABEL_24;
            }

            v15 = *(v8 + 8 * v14 + 32);

            v17 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }
          }

          v18 = v4;
          v19 = *(v4 + 40);
          v28 = v15;
          MEMORY[0x28223BE20](v16);
          v24[2] = &v28;

          v20 = sub_24BA3F098(sub_24BA3E5E8, v24, v19);

          if (v20)
          {
          }

          else
          {
            sub_24BAAA66C();
            sub_24BAAA69C();
            sub_24BAAA6AC();
            sub_24BAAA67C();
          }

          ++v14;
          v4 = v18;
        }

        while (v17 != v13);
      }
    }

    v21 = v29;
    *(v4 + 40) = v25;

    v29 = v21;

    sub_24B8E35A0(v22);
    sub_24BA415D4(v29, v23);
  }

  return result;
}

void sub_24BA42A18(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v5 = [objc_opt_self() sharedInstance];
  if (!v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 getActivePairedDevice];

  if (v7)
  {
    v8 = [objc_opt_self() sharedDeviceConnection];
    if (v8)
    {
      v9 = v8;
      v10 = swift_allocObject();
      v10[2] = a1;
      v10[3] = a2;
      v10[4] = v4;
      v14[4] = sub_24BA449A0;
      v14[5] = v10;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 1107296256;
      v14[2] = sub_24BA42EDC;
      v14[3] = &block_descriptor_21_0;
      v11 = _Block_copy(v14);
      v12 = v7;

      [v9 enumerateInstalledApplicationsOnPairedDevice:v12 withBlock:v11];
      _Block_release(v11);

      return;
    }

    goto LABEL_9;
  }

  a1(v13);
}

uint64_t sub_24BA42C14(void *a1, id a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = a1;
    if ([v6 applicationMode] == 2 || objc_msgSend(v6, sel_applicationMode) == 3 && (objc_msgSend(v6, sel_applicationType) == 2 || objc_msgSend(v6, sel_applicationType) == 1))
    {
      v6 = v6;
      sub_24BA40108(v6);

      v7 = swift_beginAccess();
      MEMORY[0x24C2501C0](v7);
      if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24BAAA14C();
      }

      sub_24BAAA16C();
      swift_endAccess();
    }

    return 1;
  }

  if (a2)
  {
    v9 = a2;
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v10 = sub_24BAA812C();
    __swift_project_value_buffer(v10, qword_27F077038);
    v11 = a2;
    v12 = sub_24BAA810C();
    v13 = sub_24BAAA2AC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_24BAAA7DC();
      v18 = sub_24B8E49D4(v16, v17, v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_24B8D3000, v12, v13, "Failed to enumerate application with error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C251390](v15, -1, -1);
      MEMORY[0x24C251390](v14, -1, -1);
    }

    else
    {
    }

    return 1;
  }

  swift_beginAccess();

  a3(v21);

  return 0;
}

uint64_t sub_24BA42EDC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_24BA42F58()
{
  sub_24BA43CAC(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_24BA42F98()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache;
  v3 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache + 8);
  if (v3)
  {
    v4 = *v2;
  }

  else
  {
    v4 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  if (!v3)
  {

LABEL_10:
    v7 = *v2;
    v8 = *(v2 + 8);
    *v2 = 0u;
    *(v2 + 16) = 0u;
    result = sub_24BA43C5C(v7, v8);
    goto LABEL_11;
  }

  if (v4 == v67 && v3 == v68)
  {

    goto LABEL_11;
  }

  v6 = sub_24BAAA78C();

  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (*(v2 + 8))
  {
    return result;
  }

  v9 = OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource_base;
  v10 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource_base);
  v11 = *(v10 + 24);
  if (v11)
  {
  }

  else
  {
    v67 = MEMORY[0x277D84F90];

    v12 = sub_24BA4083C();
    sub_24B8E35A0(v12);
    v13 = sub_24BA44084();
    sub_24B8E35A0(v13);
    sub_24BA415D4(v67, v14);

    v11 = *(v10 + 24);
    if (!v11)
    {
      goto LABEL_78;
    }
  }

  v15 = *(v1 + v9);
  if (*(v15 + 24))
  {
  }

  else
  {
    v67 = MEMORY[0x277D84F90];

    v16 = sub_24BA4083C();
    sub_24B8E35A0(v16);
    v17 = sub_24BA44084();
    sub_24B8E35A0(v17);
    sub_24BA415D4(v67, v18);

    if (!*(v15 + 24))
    {
      goto LABEL_79;
    }
  }

  v19 = *(v15 + 32);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v20 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v20 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20 && (*(v1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource_excludeWebApps) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v49 = v67;
    v50 = v68;
LABEL_72:
    v51 = *v2;
    v52 = *(v2 + 8);
    *v2 = v49;
    *(v2 + 8) = v50;
    *(v2 + 16) = v11;
    *(v2 + 24) = v19;
    return sub_24BA43C5C(v51, v52);
  }

  v56 = v19[2];
  if (!v56)
  {

    v48 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
LABEL_70:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v49 = v67;
    v50 = v68;
    v11 = v48;
    goto LABEL_72;
  }

  v53 = v2;
  v21 = 0;
  v65 = OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource_excludeWebApps;
  v55 = v19 + 4;
  v60 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  v54 = v19;
  while (v21 < v19[2])
  {
    v64 = v21;
    v23 = &v55[4 * v21];
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    v59 = v23[3];
    v28 = v59 >> 1;
    result = swift_unknownObjectRetain_n();
    v62 = v24;
    v63 = v26;
    if (v26 != v59 >> 1)
    {
      v29 = v26;
      while (v29 < v28)
      {
        v30 = *(v25 + 8 * v29);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_24BAA81BC();

        v31 = HIBYTE(v68) & 0xF;
        if ((v68 & 0x2000000000000000) == 0)
        {
          v31 = v67 & 0xFFFFFFFFFFFFLL;
        }

        if (v31 && (v67 = *(v30 + 24), v68 = *(v30 + 32), swift_getKeyPath(), swift_getKeyPath(), , sub_24BAA81BC(), , , sub_24B8F5E3C(), v32 = sub_24BAAA44C(), , , (v32 & 1) == 0) || (objc_opt_self(), swift_dynamicCastObjCClass()) && *(v1 + v65) == 1)
        {
        }

        else
        {
          sub_24BAAA66C();
          sub_24BAAA69C();
          sub_24BAAA6AC();
          result = sub_24BAAA67C();
        }

        if (v28 == ++v29)
        {
          v27 = v66;
          goto LABEL_41;
        }
      }

      __break(1u);
      break;
    }

LABEL_41:
    result = swift_unknownObjectRelease();
    v33 = v27 < 0 || (v27 & 0x4000000000000000) != 0;
    if (v33)
    {
      result = sub_24BAAA52C();
      if (!result)
      {
LABEL_24:

        result = swift_unknownObjectRelease();
        v19 = v54;
        goto LABEL_25;
      }
    }

    else if (!*(v27 + 16))
    {
      goto LABEL_24;
    }

    if (v64 >= *(v11 + 2))
    {
      goto LABEL_76;
    }

    v34 = &v11[24 * v64 + 32];
    v35 = *(v34 + 1);
    v57 = *v34;
    v58 = *(v61 + 2);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_24B99A620(0, v58 + 1, 1, v61);
    }

    v37 = *(v61 + 2);
    v36 = *(v61 + 3);
    if (v37 >= v36 >> 1)
    {
      v61 = sub_24B99A620((v36 > 1), v37 + 1, 1, v61);
    }

    *(v61 + 2) = v37 + 1;
    v38 = &v61[24 * v37];
    *(v38 + 4) = v57;
    *(v38 + 5) = v35;
    *(v38 + 6) = v58;
    if (v33)
    {
      result = sub_24BAAA52C();
    }

    else
    {
      result = *(v27 + 16);
    }

    v39 = v60;
    if (__OFSUB__(v28, v63))
    {
      goto LABEL_77;
    }

    if (result == v28 - v63)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24B99A4EC(0, v60[2] + 1, 1, v60);
        v39 = result;
      }

      v41 = v39[2];
      v40 = v39[3];
      v22 = v64;
      if (v41 >= v40 >> 1)
      {
        result = sub_24B99A4EC((v40 > 1), v41 + 1, 1, v39);
        v22 = v64;
        v39 = result;
      }

      v39[2] = v41 + 1;
      v60 = v39;
      v42 = &v39[4 * v41];
      v42[4] = v62;
      v42[5] = v25;
      v42[6] = v63;
      v42[7] = v59;
      v19 = v54;
      goto LABEL_26;
    }

    v43 = sub_24B8F0428(v27);
    v44 = *(v43 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_24B99A4EC(0, v60[2] + 1, 1, v60);
    }

    v19 = v54;
    v46 = v60[2];
    v45 = v60[3];
    if (v46 >= v45 >> 1)
    {
      v60 = sub_24B99A4EC((v45 > 1), v46 + 1, 1, v60);
    }

    result = swift_unknownObjectRelease();
    v60[2] = v46 + 1;
    v47 = &v60[4 * v46];
    v47[4] = v43;
    v47[5] = v43 + 32;
    v47[6] = 0;
    v47[7] = (2 * v44) | 1;
LABEL_25:
    v22 = v64;
LABEL_26:
    v21 = v22 + 1;
    if (v21 == v56)
    {

      v2 = v53;
      v19 = v60;
      v48 = v61;
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_24BA437C0()
{
  v1 = OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filter;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24BA43C5C(*(v0 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache), *(v0 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_24BA43890(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24B9A2FBC(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_24BA43924(v10, a2, a3);
  return sub_24BAAA67C();
}

uint64_t sub_24BA43924(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_24BAAA75C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for InstalledApp();
        v10 = sub_24BAAA15C();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_24BA43A38(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24BAAA78C() & 1;
  }
}

uint64_t type metadata accessor for FilteredAppSource()
{
  result = qword_27F0698D0;
  if (!qword_27F0698D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24BA43B08()
{
  sub_24B99989C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24BA43BB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24BA43C00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24BA43C5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24BA43CAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24BA43CF4(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v3 = sub_24BAA9E2C();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24BAA9E5C();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24BAA9E3C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B8F37E8(0, &qword_27F0644F0);
  (*(v10 + 104))(v12, *MEMORY[0x277D851B8], v9);
  v13 = sub_24BAAA36C();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  *(v14 + 24) = a2;
  aBlock[4] = sub_24BA44908;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor_13;
  v15 = _Block_copy(aBlock);

  sub_24BAA9E4C();
  v20 = MEMORY[0x277D84F90];
  sub_24BA44834(&qword_27F063470, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B97C674();
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v8, v5, v15);
  _Block_release(v15);

  (*(v19 + 8))(v5, v3);
  (*(v6 + 8))(v8, v18);
}

uint64_t sub_24BA44084()
{
  v0 = sub_24BAA7D0C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x277D84FA0];
  v4 = [objc_opt_self() enumeratorWithOptions_];
  v5 = MEMORY[0x277D84F90];
  v45 = MEMORY[0x277D84F90];
  sub_24BAAA27C();
  sub_24BA44834(&unk_27F063180, 255, MEMORY[0x277CC9178]);
  sub_24BAAA40C();
  v6 = MEMORY[0x277D84F70];
  if (*(&v49 + 1))
  {
    v40 = MEMORY[0x277D84F90];
    do
    {
      sub_24B8F1EDC(&v48, &v46);
      sub_24B8F37E8(0, &qword_27F063198);
      if ((swift_dynamicCast() & 1) != 0 && v44)
      {
        MEMORY[0x24C2501C0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24BAAA14C();
          v6 = MEMORY[0x277D84F70];
        }

        sub_24BAAA16C();
        v40 = v45;
      }

      sub_24BAAA40C();
    }

    while (*(&v49 + 1));
  }

  else
  {
    v40 = v5;
  }

  (*(v1 + 8))(v3, v0);
  v7 = v40;
  if (v40 >> 62)
  {
    v8 = sub_24BAAA52C();
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_40:

    v37 = sub_24B99B1C8(v50);

    return v37;
  }

  v8 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_40;
  }

LABEL_6:
  v9 = sub_24B8F37E8(0, &qword_27F0698A0);
  result = swift_getObjCClassFromMetadata();
  if (v8 >= 1)
  {
    v11 = result;
    v12 = 0;
    v42 = "com.apple.NanoTips";
    v43 = v7 & 0xC000000000000001;
    v38[1] = v9;
    v41 = result;
    while (1)
    {
      if (v43)
      {
        v13 = MEMORY[0x24C2506E0](v12, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = [v14 infoDictionary];
      v16 = sub_24BAA9FDC();
      v17 = [v15 objectForKey:v16 ofClass:v11];

      if (v17)
      {
        sub_24BAAA47C();
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0u;
        v47 = 0u;
      }

      v48 = v46;
      v49 = v47;
      if (*(&v47 + 1))
      {
        if (swift_dynamicCast())
        {
          v18 = v6;
          v19 = v45;
          v20 = sub_24BAA9FDC();
          v21 = [v19 objectForKey_];

          if (v21)
          {
            sub_24BAAA47C();
            swift_unknownObjectRelease();
          }

          else
          {
            v46 = 0u;
            v47 = 0u;
          }

          v48 = v46;
          v49 = v47;
          if (*(&v47 + 1))
          {
            if (swift_dynamicCast())
            {
              v22 = [v14 bundleIdentifier];
              if (v22)
              {
                v23 = v22;
                v24 = sub_24BAAA01C();
                v39 = v25;

                v26 = [v14 localizedName];
                if (!v26)
                {
                  sub_24BAAA01C();
                  v26 = sub_24BAA9FDC();
                }

                v27 = objc_allocWithZone(MEMORY[0x277D05AC8]);
                v28 = sub_24BAA9FDC();

                v29 = [v27 initWithWebIdentifier:v28 givenName:v26];

                type metadata accessor for InstalledApp();
                v30 = swift_allocObject();
                v31 = v39;
                v30[5] = v24;
                v30[6] = v31;
                v32 = v29;
                v33 = [v32 givenName];
                v34 = sub_24BAAA01C();
                v36 = v35;

                v30[2] = v32;
                v30[3] = v34;
                v30[4] = v36;

                sub_24B8E55CC(&v48, v30);

                v6 = v18;
                v7 = v40;
                v11 = v41;
                goto LABEL_9;
              }
            }

            else
            {
            }
          }

          else
          {

            sub_24BA1B2FC(&v48);
          }

          v6 = v18;
          v11 = v41;
        }

        else
        {
        }
      }

      else
      {

        sub_24BA1B2FC(&v48);
      }

LABEL_9:
      if (v8 == ++v12)
      {
        goto LABEL_40;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24BA446C4(uint64_t a1)
{
  v2 = sub_24BAA7B4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  v13 = *(a1 + 24);
  v14 = v6;

  sub_24BAA7B3C();
  sub_24B8F5E3C();
  v7 = sub_24BAAA42C();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v5, v2);

  v13 = v7;
  v14 = v9;
  sub_24BAA7B2C();
  v11 = sub_24BAAA42C();
  v10(v5, v2);

  return v11;
}

uint64_t sub_24BA44834(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24BA4487C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24BA448D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24BA44928()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24BA44960()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24BA449C8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24BAAA78C() & 1;
  }
}

uint64_t sub_24BA44A20()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24BA44A58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24BA44B14(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24BAA812C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_24BAA811C();
}

uint64_t sub_24BA44B98()
{
  v0 = sub_24BAA812C();
  __swift_allocate_value_buffer(v0, qword_27F077068);
  __swift_project_value_buffer(v0, qword_27F077068);
  return sub_24BAA811C();
}

uint64_t SemanticFocusInformationViewStyle.hashValue.getter()
{
  v1 = *v0;
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](v1);
  return sub_24BAAA84C();
}

id SemanticFocusInformationView.init(name:symbolImageName:tintColorName:semanticType:style:nextButtonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v16 = *a7;
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for SemanticFocusInformationView();
  v18 = v17[5];
  *(a8 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  result = swift_storeEnumTagMultiPayload();
  v20 = (a8 + v17[6]);
  *v20 = a1;
  v20[1] = a2;
  v21 = (a8 + v17[7]);
  *v21 = a3;
  v21[1] = a4;
  if (!a5)
  {
    goto LABEL_8;
  }

  sub_24B96BAFC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  if (![ObjCClassFromMetadata respondsToSelector_])
  {

    goto LABEL_8;
  }

  v23 = [ObjCClassFromMetadata performSelector_];
  result = ObjCClassFromMetadata;
  if (v23)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v24 = sub_24BAA973C();

LABEL_9:
      *(a8 + v17[8]) = v24;
      *(a8 + v17[9]) = a6;
      *(a8 + v17[10]) = v16;
      v25 = (a8 + v17[11]);
      *v25 = a9;
      v25[1] = a10;
      return result;
    }

    result = swift_unknownObjectRelease();
LABEL_8:
    v24 = 0;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SemanticFocusInformationView()
{
  result = qword_27F069908;
  if (!qword_27F069908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SemanticFocusInformationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24BAA8BCC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0698F8);
  return sub_24BA44F50(v1, a1 + *(v3 + 44));
}

uint64_t sub_24BA44F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B50);
  MEMORY[0x28223BE20](v113);
  v114 = (&v101 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v101 - v6;
  v8 = sub_24BAA992C();
  v107 = *(v8 - 8);
  v108 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FocusInformationIconView();
  MEMORY[0x28223BE20](v11);
  v13 = (&v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066298);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v109 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v111 = &v101 - v17;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B60);
  MEMORY[0x28223BE20](v112);
  v110 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B68);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v115 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v101 - v22;
  v24 = type metadata accessor for SemanticFocusInformationView();
  v25 = v24;
  if (*(a1 + v24[10]) == 1)
  {
    v102 = v7;
    v103 = v4;
    v104 = v5;
    v26 = sub_24BA46300();
    v105 = a1;
    if (v26)
    {
      v27 = v26;
      v106 = v23;
      v28 = v25[8];
      v101 = *(a1 + v25[9]);
      v29 = (a1 + v25[7]);
      v30 = *v29;
      v31 = v29[1];
      v32 = *(a1 + v28);

      v33 = v32;
      if (!v32)
      {
        v33 = sub_24BAA974C();
      }

      *v13 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
      swift_storeEnumTagMultiPayload();
      v34 = v11[5];
      *(v13 + v34) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
      swift_storeEnumTagMultiPayload();
      *(v13 + v11[6]) = v101;
      v35 = (v13 + v11[7]);
      *v35 = v30;
      v35[1] = v31;
      *(v13 + v11[8]) = v33;
      sub_24BA50E70(&qword_27F0662A0, type metadata accessor for FocusInformationIconView);

      sub_24BAA95EC();
      sub_24B96C688(v13);
      v101 = v27;
      sub_24BAA98FC();
      v37 = v107;
      v36 = v108;
      (*(v107 + 104))(v10, *MEMORY[0x277CE0FE0], v108);
      v38 = sub_24BAA997C();

      (*(v37 + 8))(v10, v36);
      v39 = sub_24BAA90AC();
      sub_24BAA828C();
      v128 = 0;
      v127 = 0;
      *v130 = v38;
      *&v130[8] = 0x3FF4CCCCCCCCCCCDLL;
      *&v130[16] = 0;
      *&v130[18] = v135;
      *&v130[22] = WORD2(v135);
      v130[24] = v39;
      *&v130[25] = v129[0];
      *&v130[28] = *(v129 + 3);
      *&v130[32] = v40;
      *&v130[40] = v41;
      *&v130[48] = v42;
      *&v130[56] = v43;
      v130[64] = 0;
      v44 = [objc_opt_self() currentDevice];
      v45 = [v44 userInterfaceIdiom];

      if (v45 == 1)
      {
        sub_24BAA9D1C();
        sub_24BAA83BC();
        LOBYTE(v134[4]) = v130[64];
        v134[2] = *&v130[32];
        v134[3] = *&v130[48];
        v134[1] = *&v130[16];
        v134[0] = *v130;
        v125 = *&v134[7];
        v118 = *v130;
        v119 = *&v130[16];
        v120 = *&v130[32];
        v121 = *&v130[48];
        v123 = v134[5];
        v124 = v134[6];
        v122 = v134[4];
        v131[3] = *&v130[48];
        v131[2] = *&v130[32];
        v131[1] = *&v130[16];
        v131[0] = *v130;
        *&v131[7] = *&v134[7];
        v131[6] = v134[6];
        v131[5] = v134[5];
        v131[4] = v134[4];
        sub_24B8F3208(v130, v133, &qword_27F069BC0);
        sub_24B8F3208(&v118, v133, &qword_27F069BB8);
        sub_24B8F35E4(v131, &qword_27F069BB8);
        v133[4] = v122;
        v133[5] = v123;
        v133[6] = v124;
        *&v133[7] = v125;
        v133[0] = v118;
        v133[1] = v119;
        v133[2] = v120;
        v133[3] = v121;
        sub_24BA50A28(v133);
        v132[4] = v133[4];
        v132[5] = v133[5];
        v132[6] = v133[6];
        *(&v132[6] + 9) = *(&v133[6] + 9);
        v132[0] = v133[0];
        v132[1] = v133[1];
        v132[2] = v133[2];
        v132[3] = v133[3];
        sub_24B8F3208(&v118, v134, &qword_27F069BB8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069BB8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069BC0);
        sub_24BA50918(&qword_27F069BC8, &qword_27F069BB8, &unk_24BABBAB0, sub_24BA5099C);
        sub_24BA5099C();
        sub_24BAA8D0C();
        sub_24B8F35E4(v130, &qword_27F069BC0);
        sub_24B8F35E4(&v118, &qword_27F069BB8);
      }

      else
      {
        v133[2] = *&v130[32];
        v133[3] = *&v130[48];
        LOBYTE(v133[4]) = v130[64];
        v133[1] = *&v130[16];
        v133[0] = *v130;
        sub_24BA5090C(v133);
        v132[4] = v133[4];
        v132[5] = v133[5];
        v132[6] = v133[6];
        *(&v132[6] + 9) = *(&v133[6] + 9);
        v132[0] = v133[0];
        v132[1] = v133[1];
        v132[2] = v133[2];
        v132[3] = v133[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069BB8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069BC0);
        sub_24BA50918(&qword_27F069BC8, &qword_27F069BB8, &unk_24BABBAB0, sub_24BA5099C);
        sub_24BA5099C();
        sub_24BAA8D0C();
      }

      v131[4] = v134[4];
      v131[5] = v134[5];
      v131[6] = v134[6];
      *(&v131[6] + 9) = *(&v134[6] + 9);
      v131[0] = v134[0];
      v131[1] = v134[1];
      v131[2] = v134[2];
      v131[3] = v134[3];
      v62 = v111;
      v63 = v109;
      sub_24B8F3208(v111, v109, &qword_27F066298);
      v64 = v102;
      sub_24B8F3208(v63, v102, &qword_27F066298);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069BD8);
      v66 = v64 + *(v65 + 48);
      *v66 = 0x4038000000000000;
      *(v66 + 8) = 0;
      v67 = (v64 + *(v65 + 64));
      v132[0] = v131[0];
      v132[1] = v131[1];
      v132[3] = v131[3];
      v132[2] = v131[2];
      v132[4] = v131[4];
      v132[5] = v131[5];
      v132[6] = v131[6];
      *(&v132[6] + 9) = *(&v131[6] + 9);
      sub_24B8F3208(v132, v133, &qword_27F069BE0);

      sub_24B8F35E4(v62, &qword_27F066298);
      v68 = v132[5];
      v67[4] = v132[4];
      v67[5] = v68;
      v67[6] = v132[6];
      *(v67 + 105) = *(&v132[6] + 9);
      v69 = v132[1];
      *v67 = v132[0];
      v67[1] = v69;
      v70 = v132[3];
      v67[2] = v132[2];
      v67[3] = v70;
      v133[4] = v131[4];
      v133[5] = v131[5];
      v133[6] = v131[6];
      *(&v133[6] + 9) = *(&v131[6] + 9);
      v133[0] = v131[0];
      v133[1] = v131[1];
      v133[2] = v131[2];
      v133[3] = v131[3];
      sub_24B8F35E4(v133, &qword_27F069BE0);
      sub_24B8F35E4(v63, &qword_27F066298);
      v52 = v110;
      sub_24B90294C(v64, v110, &qword_27F069B58);
      (*(v104 + 56))(v52, 0, 1, v103);
      v23 = v106;
    }

    else
    {
      v52 = v110;
      (*(v104 + 56))(v110, 1, 1, v103);
    }

    sub_24B8F3208(v52, v114, &qword_27F069B60);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B80);
    sub_24BA5085C();
    sub_24B8F384C(&qword_27F069B98, &qword_27F069B80);
    sub_24BAA8D0C();
    sub_24B8F35E4(v52, &qword_27F069B60);
    v61 = v23;
  }

  else
  {
    v46 = v24[8];
    v47 = (a1 + v24[7]);
    v48 = v47[1];
    v111 = *v47;
    v49 = a1;
    v50 = *(a1 + v46);
    v106 = v23;

    if (v50)
    {
      v51 = v50;
    }

    else
    {
      v51 = sub_24BAA974C();
    }

    sub_24BAA9D1C();
    sub_24BAA83BC();
    v53 = v137;
    v109 = v139;
    v110 = v135;
    v108 = v140;
    v128 = 1;
    v127 = v136;
    v126 = v138;
    v54 = sub_24BAA8AAC();
    LOBYTE(v132[0]) = 1;
    sub_24BA467AC(v49, v134);
    memcpy(v129, v134, 0x1A1uLL);
    memcpy(v130, v134, sizeof(v130));
    sub_24B8F3208(v129, v133, &qword_27F069B70);
    sub_24B8F35E4(v130, &qword_27F069B70);
    memcpy(v134 + 7, v129, 0x1A1uLL);
    v131[0] = v54;
    LOBYTE(v131[1]) = v132[0];
    memcpy(&v131[1] + 1, v134, 0x1A8uLL);
    v55 = v128;
    v56 = v127;
    v57 = v126;
    memcpy(v134, v131, 0x1B9uLL);
    memcpy(v132, v131, 0x1B9uLL);
    memcpy(v133, v131, 0x1B9uLL);

    sub_24B8F3208(v131, &v118, &qword_27F069B78);

    sub_24B8F3208(v132, &v118, &qword_27F069B78);
    sub_24B8F35E4(v134, &qword_27F069B78);

    v58 = v114;
    *v114 = v111;
    v58[1] = v48;
    v58[2] = v51;
    *(v58 + 3) = xmmword_24BABB410;
    v58[5] = 0;
    *(v58 + 48) = v55;
    v59 = v109;
    v58[7] = v110;
    *(v58 + 64) = v56;
    v58[9] = v53;
    *(v58 + 80) = v57;
    v60 = v108;
    v58[11] = v59;
    v58[12] = v60;
    memcpy(v58 + 13, v133, 0x1B9uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B80);
    sub_24BA5085C();
    sub_24B8F384C(&qword_27F069B98, &qword_27F069B80);
    v61 = v106;
    sub_24BAA8D0C();
    sub_24B8F35E4(v131, &qword_27F069B78);
  }

  v71 = sub_24BAA8BCC();
  LOBYTE(v129[0]) = 0;
  sub_24BA47910(v134);
  v131[6] = v134[6];
  v131[7] = v134[7];
  v131[8] = v134[8];
  *(&v131[8] + 9) = *(&v134[8] + 9);
  v131[2] = v134[2];
  v131[3] = v134[3];
  v131[4] = v134[4];
  v131[5] = v134[5];
  v131[0] = v134[0];
  v131[1] = v134[1];
  v132[6] = v134[6];
  v132[7] = v134[7];
  v132[8] = v134[8];
  *(&v132[8] + 9) = *(&v134[8] + 9);
  v132[2] = v134[2];
  v132[3] = v134[3];
  v132[4] = v134[4];
  v132[5] = v134[5];
  v132[0] = v134[0];
  v132[1] = v134[1];
  sub_24B8F3208(v131, v133, &qword_27F069BA0);
  sub_24B8F35E4(v132, &qword_27F069BA0);
  *(&v117[6] + 7) = v131[6];
  *(&v117[7] + 7) = v131[7];
  *(&v117[8] + 7) = v131[8];
  v117[9] = *(&v131[8] + 9);
  *(&v117[2] + 7) = v131[2];
  *(&v117[3] + 7) = v131[3];
  *(&v117[4] + 7) = v131[4];
  *(&v117[5] + 7) = v131[5];
  *(v117 + 7) = v131[0];
  *(&v117[1] + 7) = v131[1];
  v72 = v129[0];
  LODWORD(v107) = LOBYTE(v129[0]);
  v73 = sub_24BAA90AC();
  v74 = [objc_opt_self() currentDevice];
  [v74 userInterfaceIdiom];

  sub_24BAA828C();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v130[0] = 0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v113 = v119;
  v114 = v118;
  v111 = *(&v120 + 1);
  v112 = v120;
  v128 = 1;
  v127 = BYTE8(v118);
  v126 = BYTE8(v119);
  v83 = v115;
  sub_24B8F3208(v61, v115, &qword_27F069B68);
  LODWORD(v108) = v128;
  LODWORD(v109) = v127;
  LODWORD(v110) = v126;
  v84 = v61;
  v85 = v116;
  sub_24B8F3208(v83, v116, &qword_27F069B68);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069BA8);
  v87 = v85 + v86[12];
  *v87 = 0x4038000000000000;
  *(v87 + 8) = 0;
  v88 = v85 + v86[16];
  *&v133[0] = v71;
  *(&v133[0] + 1) = 0x4014000000000000;
  LOBYTE(v133[1]) = v72;
  *(&v133[2] + 1) = v117[1];
  *(&v133[1] + 1) = v117[0];
  *(&v133[7] + 1) = v117[6];
  *(&v133[8] + 1) = v117[7];
  *(&v133[9] + 1) = v117[8];
  *(&v133[10] + 1) = v117[9];
  *(&v133[3] + 1) = v117[2];
  *(&v133[4] + 1) = v117[3];
  *(&v133[5] + 1) = v117[4];
  *(&v133[6] + 1) = v117[5];
  v89 = v73;
  BYTE8(v133[11]) = v73;
  *&v133[12] = v76;
  *(&v133[12] + 1) = v78;
  *&v133[13] = v80;
  *(&v133[13] + 1) = v82;
  LOBYTE(v133[14]) = 0;
  *(v88 + 224) = 0;
  v90 = v133[9];
  *(v88 + 128) = v133[8];
  *(v88 + 144) = v90;
  v91 = v133[5];
  *(v88 + 64) = v133[4];
  *(v88 + 80) = v91;
  v92 = v133[7];
  *(v88 + 96) = v133[6];
  *(v88 + 112) = v92;
  v93 = v133[1];
  *v88 = v133[0];
  *(v88 + 16) = v93;
  v94 = v133[3];
  *(v88 + 32) = v133[2];
  *(v88 + 48) = v94;
  v95 = v133[11];
  *(v88 + 160) = v133[10];
  *(v88 + 176) = v95;
  v96 = v133[13];
  *(v88 + 192) = v133[12];
  *(v88 + 208) = v96;
  v97 = v85 + v86[20];
  sub_24B8F3208(v133, v134, &qword_27F069BB0);
  sub_24B8F35E4(v84, &qword_27F069B68);
  *(&v134[7] + 1) = v117[6];
  *(&v134[8] + 1) = v117[7];
  *(&v134[9] + 1) = v117[8];
  *(&v134[10] + 1) = v117[9];
  *(&v134[3] + 1) = v117[2];
  *(&v134[4] + 1) = v117[3];
  *(&v134[5] + 1) = v117[4];
  *(&v134[6] + 1) = v117[5];
  v98 = v117[1];
  *(&v134[1] + 1) = v117[0];
  *v97 = 0;
  *(v97 + 8) = v108;
  *(v97 + 16) = v114;
  *(v97 + 24) = v109;
  *(v97 + 32) = v113;
  *(v97 + 40) = v110;
  v99 = v111;
  *(v97 + 48) = v112;
  *(v97 + 56) = v99;
  *&v134[0] = v71;
  *(&v134[0] + 1) = 0x4014000000000000;
  LOBYTE(v134[1]) = v107;
  *(&v134[2] + 1) = v98;
  BYTE8(v134[11]) = v89;
  *&v134[12] = v76;
  *(&v134[12] + 1) = v78;
  *&v134[13] = v80;
  *(&v134[13] + 1) = v82;
  LOBYTE(v134[14]) = 0;
  sub_24B8F35E4(v134, &qword_27F069BB0);
  return sub_24B8F35E4(v83, &qword_27F069B68);
}

unint64_t sub_24BA46290()
{
  result = qword_27F069900;
  if (!qword_27F069900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069900);
  }

  return result;
}

id sub_24BA46300()
{
  v1 = sub_24BAA9FDC();
  v2 = [objc_opt_self() bundleWithIdentifier_];

  v3 = *(v0 + *(type metadata accessor for SemanticFocusInformationView() + 36));
  if (v3 > 3)
  {
    if (v3 <= 8)
    {
LABEL_8:
      v4 = sub_24BAA9FDC();
      v5 = [objc_opt_self() imageNamed:v4 inBundle:v2 compatibleWithTraitCollection:0];

      return v5;
    }
  }

  else if (v3 > 0 || v3 == -1 || !v3)
  {
    goto LABEL_8;
  }

  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v7 = sub_24BAA812C();
  __swift_project_value_buffer(v7, qword_27F077038);
  v8 = sub_24BAAA2BC();
  v9 = sub_24BAA810C();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24B8D3000, v9, v8, "No onboarding artwork available", v10, 2u);
    MEMORY[0x24C251390](v10, -1, -1);
  }

  return 0;
}

uint64_t sub_24BA467AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24BAA8BCC();
  LOBYTE(v38) = 1;
  sub_24BA46F70(a1, &v80);
  v100 = v86;
  v101 = v87;
  v102 = v88;
  v96 = v82;
  v97 = v83;
  v99 = v85;
  v98 = v84;
  v95 = v81;
  v94 = v80;
  v103[6] = v86;
  v103[7] = v87;
  v103[8] = v88;
  v103[2] = v82;
  v103[3] = v83;
  v103[4] = v84;
  v103[5] = v85;
  v103[0] = v80;
  v103[1] = v81;
  sub_24B8F3208(&v94, &v59, &qword_27F069BF8);
  sub_24B8F35E4(v103, &qword_27F069BF8);
  *&v73[87] = v99;
  *&v73[103] = v100;
  *&v73[119] = v101;
  *&v73[135] = v102;
  *&v73[23] = v95;
  *&v73[39] = v96;
  *&v73[55] = v97;
  *&v73[71] = v98;
  *&v73[7] = v94;
  if (*(a1 + *(type metadata accessor for SemanticFocusInformationView() + 36)) == 2)
  {
    sub_24BA50A48(&v80);
  }

  else
  {
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v30 = v76;
    v31 = v74;
    v28 = v79;
    v29 = v78;
    v47 = 1;
    v46 = v75;
    v45 = v77;
    v5 = sub_24BAA8BCC();
    sub_24BA476E8(a1, &v80);
    v54 = v86;
    v55 = v87;
    v50 = v82;
    v51 = v83;
    v53 = v85;
    v52 = v84;
    v49 = v81;
    v48 = v80;
    v57[6] = v86;
    v57[7] = v87;
    v57[2] = v82;
    v57[3] = v83;
    v57[5] = v85;
    v57[4] = v84;
    v56 = v88;
    v58 = v88;
    v57[1] = v81;
    v57[0] = v80;
    sub_24B8F3208(&v48, &v59, &qword_27F069C00);
    sub_24B8F35E4(v57, &qword_27F069C00);
    *(&v44[6] + 7) = v54;
    *(&v44[5] + 7) = v53;
    *(&v44[2] + 7) = v50;
    *(&v44[1] + 7) = v49;
    *(&v44[7] + 7) = v55;
    *(&v44[8] + 7) = v56;
    *(&v44[3] + 7) = v51;
    *(&v44[4] + 7) = v52;
    *(v44 + 7) = v48;
    v35 = v5;
    v36 = 0;
    v37[0] = 1;
    *&v37[81] = v44[5];
    *&v37[97] = v44[6];
    *&v37[113] = v44[7];
    *&v37[128] = *(&v44[7] + 15);
    *&v37[17] = v44[1];
    *&v37[33] = v44[2];
    *&v37[49] = v44[3];
    *&v37[65] = v44[4];
    *&v37[1] = v44[0];
    *&v33[80] = *&v37[80];
    *&v33[96] = *&v37[96];
    *&v33[112] = *&v37[112];
    *&v33[128] = *(&v44[7] + 15);
    *&v33[16] = *&v37[16];
    *&v33[32] = *&v37[32];
    *&v33[48] = *&v37[48];
    *&v33[64] = *&v37[64];
    v32 = v5;
    *v33 = *v37;
    *&v39[81] = v44[5];
    *&v39[97] = v44[6];
    *&v39[113] = v44[7];
    *&v39[128] = *(&v44[7] + 15);
    *&v39[17] = v44[1];
    *&v39[33] = v44[2];
    *&v39[49] = v44[3];
    *&v39[65] = v44[4];
    v6 = v46;
    v7 = v45;
    v38 = v5;
    v39[0] = 1;
    *&v39[1] = v44[0];
    sub_24B8F3208(&v35, &v80, &qword_27F069C08);
    sub_24B8F35E4(&v38, &qword_27F069C08);
    *&v59 = 0;
    BYTE8(v59) = 1;
    *&v60 = v31;
    BYTE8(v60) = v6;
    *&v61 = v30;
    BYTE8(v61) = v7;
    *&v62 = v29;
    *(&v62 + 1) = v28;
    v69 = *&v33[80];
    v70 = *&v33[96];
    v71 = *&v33[112];
    v72 = *&v33[128];
    v65 = *&v33[16];
    v66 = *&v33[32];
    v67 = *&v33[48];
    v68 = *&v33[64];
    v63 = v5;
    v64 = *v33;
    nullsub_1(&v59);
    v90 = v69;
    v91 = v70;
    v92 = v71;
    v93 = v72;
    v86 = v65;
    v87 = v66;
    v88 = v67;
    v89 = v68;
    v82 = v61;
    v83 = v62;
    v84 = v63;
    v85 = v64;
    v80 = v59;
    v81 = v60;
  }

  v8 = v90;
  v69 = v90;
  v70 = v91;
  v9 = v92;
  v71 = v92;
  v72 = v93;
  v10 = v86;
  v65 = v86;
  v66 = v87;
  v11 = v88;
  v67 = v88;
  v68 = v89;
  v12 = v82;
  v61 = v82;
  v62 = v83;
  v13 = v84;
  v63 = v84;
  v64 = v85;
  v14 = v80;
  v59 = v80;
  v60 = v81;
  v35 = v4;
  v36 = 0;
  v37[0] = 1;
  *&v37[97] = *&v73[96];
  *&v37[113] = *&v73[112];
  *&v37[129] = *&v73[128];
  *&v37[144] = *&v73[143];
  *&v37[33] = *&v73[32];
  *&v37[49] = *&v73[48];
  *&v37[65] = *&v73[64];
  *&v37[81] = *&v73[80];
  *&v37[1] = *v73;
  *&v37[17] = *&v73[16];
  *(&v34[7] + 7) = *&v37[96];
  *(&v34[8] + 7) = *&v37[112];
  *(&v34[9] + 7) = *&v37[128];
  *(&v34[10] + 7) = *&v73[143];
  *(&v34[3] + 7) = *&v37[32];
  *(&v34[4] + 7) = *&v37[48];
  *(&v34[5] + 7) = *&v37[64];
  *(&v34[6] + 7) = *&v37[80];
  *(v34 + 7) = v4;
  *(&v34[1] + 7) = *v37;
  *(&v34[2] + 7) = *&v37[16];
  v15 = v91;
  v40 = v90;
  v41 = v91;
  v16 = v93;
  v42 = v92;
  v43 = v93;
  v17 = v87;
  *&v39[80] = v86;
  *&v39[96] = v87;
  v18 = v89;
  *&v39[112] = v88;
  *&v39[128] = v89;
  v19 = v83;
  *&v39[16] = v82;
  *&v39[32] = v83;
  v20 = v85;
  *&v39[48] = v84;
  *&v39[64] = v85;
  v21 = v81;
  v38 = v80;
  *v39 = v81;
  v22 = v34[6];
  *(a2 + 121) = v34[7];
  v23 = v34[9];
  *(a2 + 137) = v34[8];
  *(a2 + 153) = v23;
  *(a2 + 168) = *(&v34[9] + 15);
  v24 = v34[2];
  *(a2 + 57) = v34[3];
  v25 = v34[5];
  *(a2 + 73) = v34[4];
  *(a2 + 89) = v25;
  *(a2 + 105) = v22;
  v26 = v34[1];
  *(a2 + 9) = v34[0];
  *(a2 + 25) = v26;
  *(a2 + 41) = v24;
  *(a2 + 360) = v15;
  *(a2 + 376) = v9;
  *(a2 + 392) = v16;
  *(a2 + 296) = v17;
  *(a2 + 312) = v11;
  *(a2 + 328) = v18;
  *(a2 + 344) = v8;
  *(a2 + 216) = v12;
  *(a2 + 232) = v19;
  *(a2 + 248) = v13;
  *(a2 + 264) = v20;
  *(a2 + 280) = v10;
  *(a2 + 184) = v14;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v48) = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 200) = v21;
  *(a2 + 408) = 0;
  *(a2 + 416) = 1;
  sub_24B8F3208(&v35, &v32, &qword_27F069C10);
  sub_24B8F3208(&v38, &v32, &qword_27F069C18);
  sub_24B8F35E4(&v59, &qword_27F069C18);
  *&v33[97] = *&v73[96];
  *&v33[113] = *&v73[112];
  *&v33[129] = *&v73[128];
  *&v33[33] = *&v73[32];
  *&v33[49] = *&v73[48];
  *&v33[65] = *&v73[64];
  *&v33[81] = *&v73[80];
  *&v33[1] = *v73;
  v32 = v4;
  v33[0] = 1;
  *&v33[144] = *&v73[143];
  *&v33[17] = *&v73[16];
  return sub_24B8F35E4(&v32, &qword_27F069C10);
}

uint64_t sub_24BA46F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24BAA975C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for SemanticFocusInformationView() + 36)) != 2;
  v9 = sub_24BA471C8(v29);
  v10 = v29[0];
  v11 = v29[1];
  v12 = v29[2];
  v13 = v29[3];
  v14 = v29[4];
  (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4, v9);
  v15 = sub_24BAA98BC();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v16 = v29[5];
  v17 = v30;
  v18 = v31;
  v19 = *v28;
  *(&v37 + 1) = *v28;
  DWORD1(v37) = *&v28[3];
  v20 = v32;
  v36 = 1;
  v35 = v30;
  v34 = v32;
  LOBYTE(v37) = v8;
  *(&v37 + 1) = v10;
  *&v38 = v11;
  *(&v38 + 1) = v12;
  *&v39 = v13;
  *(&v39 + 1) = v14;
  *(v40 + 8) = xmmword_24BAB8A30;
  *(a2 + 88) = 1;
  *&v40[0] = v15;
  *(&v40[1] + 1) = 0x4026000000000000;
  v21 = v37;
  v22 = v38;
  v23 = v40[1];
  *(a2 + 48) = v40[0];
  *(a2 + 64) = v23;
  v24 = v39;
  *(a2 + 16) = v22;
  *(a2 + 32) = v24;
  *a2 = v21;
  *(a2 + 80) = 0;
  *(a2 + 96) = v16;
  *(a2 + 104) = v17;
  *(a2 + 112) = v18;
  *(a2 + 120) = v20;
  *(a2 + 128) = v33;
  v41 = v8;
  *&v42[3] = *&v28[3];
  *v42 = v19;
  v43 = v10;
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v49 = xmmword_24BAB8A30;
  v48 = v15;
  v50 = 0x4026000000000000;
  sub_24B8F3208(&v37, &v27, &qword_27F069C28);
  return sub_24B8F35E4(&v41, &qword_27F069C28);
}

double sub_24BA471C8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA975C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SemanticFocusInformationView();
  v6 = *MEMORY[0x277CE0EE0];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  v8 = sub_24BAA98AC();
  v7(v5, v6, v2);

  v9 = sub_24BAA98AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064DD8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24BAAD820;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;

  MEMORY[0x24C24FD10](v10);
  sub_24BAA9DDC();
  sub_24BAA9DEC();
  sub_24BAA847C();

  result = *&v14;
  v12 = v15;
  *a1 = v14;
  *(a1 + 16) = v12;
  *(a1 + 32) = v16;
  return result;
}

uint64_t sub_24BA476E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a1;
  v3 = sub_24BAA975C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v7 = v25[9];
  v8 = v27;
  v10 = v29;
  v9 = v30;
  v34 = 1;
  v33 = v26;
  v32 = v28;
  v11 = sub_24BA471C8(v31);
  v12 = v31[0];
  v13 = v31[1];
  v14 = v31[2];
  v15 = v31[3];
  v16 = v31[4];
  (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v3, v11);
  v17 = sub_24BAA98BC();
  v18 = v34;
  v19 = v33;
  v20 = v32;
  *&v35 = v12;
  *(&v35 + 1) = v13;
  *&v36 = v14;
  *(&v36 + 1) = v15;
  *&v37 = v16;
  v38 = xmmword_24BAB8A30;
  *(&v37 + 1) = v17;
  v39 = 0x4026000000000000;
  *a2 = 0;
  *(a2 + 8) = v18;
  *(a2 + 16) = v7;
  *(a2 + 24) = v19;
  *(a2 + 32) = v8;
  *(a2 + 40) = v20;
  *(a2 + 48) = v10;
  *(a2 + 56) = v9;
  *(a2 + 128) = 0x4026000000000000;
  v21 = v38;
  *(a2 + 96) = v37;
  *(a2 + 112) = v21;
  v22 = v36;
  *(a2 + 64) = v35;
  *(a2 + 80) = v22;
  v40[0] = v12;
  v40[1] = v13;
  v40[2] = v14;
  v40[3] = v15;
  v40[4] = v16;
  v40[5] = v17;
  v41 = xmmword_24BAB8A30;
  v42 = 0x4026000000000000;
  sub_24B8F3208(&v35, v25, &qword_27F069C20);
  return sub_24B8F35E4(v40, &qword_27F069C20);
}

uint64_t sub_24BA47910@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_24BAA922C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24BA47D20();
  v70 = v6;
  sub_24B8F5E3C();
  v7 = sub_24BAA93CC();
  v47 = v8;
  v48 = v7;
  v10 = v9;
  v49 = v11;
  sub_24BAA914C();
  v46 = sub_24BAA917C();

  KeyPath = swift_getKeyPath();
  v12 = v10 & 1;
  LOBYTE(v69) = v10 & 1;
  v44 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  v13 = sub_24BA481A0();
  if (v14)
  {
    v69 = v13;
    v70 = v14;
    v15 = sub_24BAA93CC();
    v41 = v16;
    v42 = v15;
    v18 = v17;
    v40 = v19;
    sub_24BAA920C();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
    v20 = sub_24BAA925C();

    (*(v3 + 8))(v5, v2);
    v21 = swift_getKeyPath();
    LOBYTE(v69) = v18 & 1;
    v22 = v18 & 1;
    v23 = swift_getKeyPath();
    v25 = v40;
    v24 = v41;
    v26 = v42;
    v27 = 1;
  }

  else
  {
    v26 = 0;
    v24 = 0;
    v25 = 0;
    v21 = 0;
    v20 = 0;
    v23 = 0;
    v27 = 0;
    v22 = 0;
  }

  *&v56 = v48;
  *(&v56 + 1) = v47;
  LOBYTE(v57) = v12;
  *(&v57 + 1) = v87[0];
  DWORD1(v57) = *(v87 + 3);
  *(&v57 + 1) = v49;
  LOWORD(v58) = 256;
  *(&v58 + 2) = v85;
  WORD3(v58) = v86;
  v28 = KeyPath;
  v29 = v46;
  *(&v58 + 1) = KeyPath;
  *&v59 = v46;
  LODWORD(v42) = v12;
  v31 = v43;
  v30 = v44;
  *(&v59 + 1) = v44;
  LOBYTE(v60) = 1;
  *(&v60 + 1) = *v84;
  DWORD1(v60) = *&v84[3];
  *(&v60 + 1) = v43;
  v61 = 1;
  v50 = v56;
  v51 = v57;
  LOBYTE(v55[0]) = 1;
  v53 = v59;
  v54 = v60;
  v52 = v58;
  *&v62 = v26;
  *(&v62 + 1) = v24;
  *&v63 = v22;
  *(&v63 + 1) = v25;
  *&v64 = v27 << 8;
  *(&v64 + 1) = v21;
  *&v65 = v20;
  *(&v65 + 1) = v23;
  v66 = v27;
  *(v55 + 8) = v62;
  BYTE8(v55[4]) = v27;
  *(&v55[3] + 8) = v65;
  *(&v55[2] + 8) = v64;
  *(&v55[1] + 8) = v63;
  v32 = v57;
  *a1 = v56;
  a1[1] = v32;
  v33 = v52;
  v34 = v53;
  v35 = v55[0];
  a1[4] = v54;
  a1[5] = v35;
  a1[2] = v33;
  a1[3] = v34;
  v36 = v55[1];
  v37 = v55[2];
  v38 = v55[3];
  *(a1 + 137) = *(&v55[3] + 9);
  a1[7] = v37;
  a1[8] = v38;
  a1[6] = v36;
  v67[0] = v26;
  v67[1] = v24;
  v67[2] = v22;
  v67[3] = v25;
  v67[4] = v27 << 8;
  v67[5] = v21;
  v67[6] = v20;
  v67[7] = v23;
  v68 = v27;
  sub_24B8F3208(&v56, &v69, &qword_27F069BE8);
  sub_24B8F3208(&v62, &v69, &qword_27F069BF0);
  sub_24B8F35E4(v67, &qword_27F069BF0);
  v69 = v48;
  v70 = v47;
  v71 = v42;
  *v72 = v87[0];
  *&v72[3] = *(v87 + 3);
  v73 = v49;
  v74 = 256;
  v75 = v85;
  v76 = v86;
  v77 = v28;
  v78 = v29;
  v79 = v30;
  v80 = 1;
  *&v81[3] = *&v84[3];
  *v81 = *v84;
  v82 = v31;
  v83 = 1;
  return sub_24B8F35E4(&v69, &qword_27F069BE8);
}

uint64_t sub_24BA47D20()
{
  v1 = type metadata accessor for SemanticFocusInformationView();
  v2 = *(v0 + *(v1 + 36));
  if (v2 <= 3)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          goto LABEL_25;
        }

        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }
      }

      else if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

LABEL_28:
      swift_once();
      return sub_24BAA7C2C();
    }

LABEL_19:
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_28;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }
    }

    else if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_28;
  }

  switch(v2)
  {
    case 6:
      goto LABEL_19;
    case 7:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_28;
    case 8:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_28;
  }

LABEL_25:
  v4 = v1;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24BAAD5B0;
  v6 = (v0 + *(v4 + 24));
  v8 = *v6;
  v7 = v6[1];
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_24B8F6A20();
  *(v5 + 32) = v8;
  *(v5 + 40) = v7;

  v9 = sub_24BAA9FEC();

  return v9;
}

uint64_t sub_24BA481A0()
{
  v1 = type metadata accessor for SemanticFocusInformationView();
  result = 0;
  v3 = *(v0 + *(v1 + 36));
  if (v3 <= 4)
  {
    if (v3 > 2)
    {
      if (v3 != 3)
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v3 == 1)
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_25;
      }

      if (v3 != 2)
      {
        return result;
      }
    }

LABEL_20:
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_25;
  }

  if (v3 <= 6)
  {
    if (v3 == 5)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (v3 == 7)
  {
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

LABEL_25:
    swift_once();
    return sub_24BAA7C2C();
  }

  if (v3 != 8)
  {
    return result;
  }

  if (qword_27F063110 != -1)
  {
    goto LABEL_25;
  }

  return sub_24BAA7C2C();
}

uint64_t sub_24BA4848C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_24BAA9D1C();
  v8 = v7;
  sub_24BA486C0(a3, &v33);
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v21 = v33;
  v22 = v34;
  v31[6] = v39;
  v31[7] = v40;
  v31[8] = v41;
  v31[2] = v35;
  v31[3] = v36;
  v31[4] = v37;
  v31[5] = v38;
  v30 = v42;
  v32 = v42;
  v31[0] = v33;
  v31[1] = v34;
  sub_24B8F3208(&v21, &v10, &qword_27F069B38);
  sub_24B8F35E4(v31, &qword_27F069B38);
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v11 = v21;
  v12 = v22;
  *&v10 = v6;
  *(&v10 + 1) = v8;
  _s15FocusSettingsUI14ActivitySourceV17accessibilityName3forS2S_tFZ_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B40);
  sub_24B8F384C(&qword_27F069B48, &qword_27F069B40);
  sub_24B8F5E3C();
  sub_24BAA959C();

  v41 = v18;
  v42 = v19;
  v43 = v20;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v33 = v10;
  v34 = v11;
  v35 = v12;
  v36 = v13;
  return sub_24B8F35E4(&v33, &qword_27F069B40);
}

uint64_t sub_24BA486C0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_24BAA992C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = a1;
  }

  else
  {
    v21 = sub_24BAA989C();
  }

  sub_24BAA9D1C();
  sub_24BAA83BC();
  *(v53 + 6) = *(&v53[3] + 6);
  *(&v53[1] + 6) = *(&v53[4] + 6);
  *(&v53[2] + 6) = *(&v53[5] + 6);

  sub_24BAA994C();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v8 = sub_24BAA997C();

  (*(v5 + 8))(v7, v4);
  v9 = sub_24BAA982C();
  KeyPath = swift_getKeyPath();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v11 = v21;
  *&v40[0] = v21;
  WORD4(v40[0]) = 256;
  *(v40 + 10) = v53[0];
  *(&v40[1] + 10) = v53[1];
  *(&v40[2] + 10) = v53[2];
  *(&v40[3] + 1) = *(&v53[2] + 14);
  v41[0] = v8;
  *&v26[31] = v40[1];
  v27 = v40[2];
  *&v26[23] = v40[0];
  v41[1] = 0;
  LOWORD(v42) = 1;
  WORD3(v42) = v39;
  *(&v42 + 2) = v38;
  *(&v42 + 1) = KeyPath;
  *v43 = v9;
  v12 = v37;
  *&v43[40] = v37;
  v13 = v36;
  *&v43[24] = v36;
  v14 = v35;
  *&v43[8] = v35;
  v28 = v40[3];
  v29 = v8;
  v32 = *&v43[16];
  v33 = *&v43[32];
  v30 = v42;
  v31 = *v43;
  v15 = v40[1];
  *a2 = v40[0];
  *(a2 + 16) = v15;
  v16 = v28;
  v17 = v30;
  v18 = v31;
  *(a2 + 64) = v29;
  *(a2 + 80) = v17;
  *(a2 + 32) = v27;
  *(a2 + 48) = v16;
  v19 = v33;
  *(a2 + 112) = v32;
  *(a2 + 128) = v19;
  v34 = *&v43[48];
  *(a2 + 144) = *&v43[48];
  *(a2 + 96) = v18;
  v44[0] = v8;
  v44[1] = 0;
  v45 = 1;
  v46 = v38;
  v47 = v39;
  v48 = KeyPath;
  v49 = v9;
  v50 = v14;
  v51 = v13;
  v52 = v12;
  sub_24B8F3208(v40, &v22, &qword_27F064D98);
  sub_24B8F3208(v41, &v22, &qword_27F065928);
  sub_24B8F35E4(v44, &qword_27F065928);
  v22 = v11;
  v23 = 256;
  v24 = v53[0];
  v25 = v53[1];
  *v26 = v53[2];
  *&v26[7] = *(&v53[2] + 14);
  return sub_24B8F35E4(&v22, &qword_27F064D98);
}

uint64_t sub_24BA48A7C@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A68);
  MEMORY[0x28223BE20](v80);
  v2 = &v78 - v1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A70);
  MEMORY[0x28223BE20](v81);
  v83 = &v78 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A78);
  MEMORY[0x28223BE20](v82);
  v85 = &v78 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A80);
  v5 = MEMORY[0x28223BE20](v91);
  v84 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = &v78 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A88);
  MEMORY[0x28223BE20](v89);
  v90 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A90);
  MEMORY[0x28223BE20](v9);
  v11 = &v78 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A98);
  MEMORY[0x28223BE20](v78);
  v13 = &v78 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069AA0);
  MEMORY[0x28223BE20](v79);
  v15 = &v78 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069AA8);
  v16 = MEMORY[0x28223BE20](v87);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v78 - v19;
  v21 = objc_opt_self();
  v22 = [v21 currentDevice];
  v23 = [v22 userInterfaceIdiom];

  v24 = sub_24BAA8BCC();
  if (v23 == 1)
  {
    *v11 = v24;
    *(v11 + 1) = 0;
    v11[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B18);
    v26 = v88;
    sub_24BA4936C(v88, &v11[*(v25 + 44)]);
    v27 = sub_24BAA90CC();
    sub_24BAA828C();
    v28 = &v11[*(v9 + 36)];
    *v28 = v27;
    *(v28 + 1) = v29;
    *(v28 + 2) = v30;
    *(v28 + 3) = v31;
    *(v28 + 4) = v32;
    v28[40] = 0;
    v33 = [v21 currentDevice];
    [v33 userInterfaceIdiom];

    sub_24BA49AEC();
    sub_24BAA9D1C();
    sub_24BAA83BC();
    sub_24B90294C(v11, v13, &qword_27F069A90);
    v34 = &v13[*(v78 + 36)];
    v35 = v94;
    *v34 = v93;
    *(v34 + 1) = v35;
    *(v34 + 2) = v95;
    v36 = *(v26 + 1);

    v37 = sub_24BAA90BC();
    sub_24B90294C(v13, v15, &qword_27F069A98);
    v38 = &v15[*(v79 + 36)];
    *v38 = v36;
    v39 = *(v26 + 1);
    *(v38 + 24) = *(v26 + 2);
    *(v38 + 8) = v39;
    v38[40] = v37;
    v40 = &v18[*(v87 + 36)];
    v41 = *(sub_24BAA869C() + 20);
    v42 = *MEMORY[0x277CE0118];
    v43 = sub_24BAA8B2C();
    (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
    __asm { FMOV            V0.2D, #19.0 }

    *v40 = _Q0;
    *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
    sub_24B90294C(v15, v18, &qword_27F069AA0);
    sub_24B90294C(v18, v20, &qword_27F069AA8);
    sub_24B8F3208(v20, v90, &qword_27F069AA8);
    swift_storeEnumTagMultiPayload();
    sub_24BA4FD84();
    sub_24BA4FFD8();
    sub_24BAA8D0C();
    v49 = v20;
    v50 = &qword_27F069AA8;
  }

  else
  {
    *v2 = v24;
    *(v2 + 1) = 0;
    v2[16] = 0;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069AB0);
    v52 = v88;
    sub_24BA49C34(v88, &v2[*(v51 + 44)]);
    v53 = sub_24BAA90CC();
    sub_24BAA828C();
    v54 = &v2[*(v80 + 36)];
    *v54 = v53;
    *(v54 + 1) = v55;
    *(v54 + 2) = v56;
    *(v54 + 3) = v57;
    *(v54 + 4) = v58;
    v54[40] = 0;
    v59 = [v21 currentDevice];
    [v59 userInterfaceIdiom];

    sub_24BA49AEC();
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v60 = v2;
    v61 = v83;
    sub_24B90294C(v60, v83, &qword_27F069A68);
    v62 = (v61 + *(v81 + 36));
    v63 = v94;
    *v62 = v93;
    v62[1] = v63;
    v62[2] = v95;
    v64 = *(v52 + 1);

    v65 = sub_24BAA90BC();
    v66 = v85;
    sub_24B90294C(v61, v85, &qword_27F069A70);
    v67 = v66 + *(v82 + 36);
    *v67 = v64;
    v68 = *(v52 + 1);
    *(v67 + 24) = *(v52 + 2);
    *(v67 + 8) = v68;
    *(v67 + 40) = v65;
    v69 = v84;
    v70 = &v84[*(v91 + 36)];
    v71 = *(sub_24BAA869C() + 20);
    v72 = *MEMORY[0x277CE0118];
    v73 = sub_24BAA8B2C();
    (*(*(v73 - 8) + 104))(&v70[v71], v72, v73);
    __asm { FMOV            V0.2D, #19.0 }

    *v70 = _Q0;
    *&v70[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
    sub_24B90294C(v66, v69, &qword_27F069A78);
    v75 = v69;
    v76 = v86;
    sub_24B90294C(v75, v86, &qword_27F069A80);
    sub_24B8F3208(v76, v90, &qword_27F069A80);
    swift_storeEnumTagMultiPayload();
    sub_24BA4FD84();
    sub_24BA4FFD8();
    sub_24BAA8D0C();
    v49 = v76;
    v50 = &qword_27F069A80;
  }

  return sub_24B8F35E4(v49, v50);
}

uint64_t sub_24BA4936C@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B20);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = &v65[-v3];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A10);
  v4 = MEMORY[0x28223BE20](v71);
  v76 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v70 = &v65[-v7];
  MEMORY[0x28223BE20](v6);
  v77 = &v65[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65[-v10];
  *&v111 = sub_24BA5022C();
  *(&v111 + 1) = v12;
  sub_24B8F5E3C();
  v13 = sub_24BAA93CC();
  v15 = v14;
  v17 = v16;
  v75 = v18;
  sub_24BAA91AC();
  v19 = *MEMORY[0x277CE09A0];
  v20 = sub_24BAA919C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v11, v19, v20);
  (*(v21 + 56))(v11, 0, 1, v20);
  sub_24BAA91FC();
  sub_24B8F35E4(v11, &qword_27F063CD8);
  v22 = sub_24BAA939C();
  v24 = v23;
  LOBYTE(v19) = v25;

  sub_24B900910(v13, v15, v17 & 1);

  sub_24BAA982C();
  v26 = sub_24BAA933C();
  v73 = v27;
  v74 = v26;
  v69 = v28;
  v75 = v29;

  sub_24B900910(v22, v24, v19 & 1);

  if (*v68)
  {
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v30 = v91;
    v31 = v93;
    v32 = v95;
    v33 = v96;
    v80 = 1;
    v79 = v92;
    v78 = v94;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    LOBYTE(v105) = 1;
    LOBYTE(v102) = v98;
    v81 = v100;
    *&v82 = 0;
    BYTE8(v82) = v80;
    *&v83 = v30;
    BYTE8(v83) = v79;
    *&v84 = v31;
    BYTE8(v84) = v78;
    *&v85 = v32;
    *(&v85 + 1) = v33;
    *&v86 = 0;
    BYTE8(v86) = 1;
    *&v87 = v97;
    BYTE8(v87) = v98;
    *&v88 = v99;
    BYTE8(v88) = v100;
    v89 = v101;
    sub_24BA5084C(&v82);
    v117 = v88;
    v118 = v89;
    v119 = v90;
    v113 = v84;
    v114 = v85;
    v115 = v86;
    v116 = v87;
    v111 = v82;
    v112 = v83;
  }

  else
  {
    sub_24BA5082C(&v111);
  }

  v34 = *(sub_24BAA869C() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_24BAA8B2C();
  v37 = v72;
  (*(*(v36 - 8) + 104))(&v72[v34], v35, v36);
  __asm { FMOV            V0.2D, #1.0 }

  *v37 = _Q0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A18);
  *(v37 + *(v43 + 52)) = 1053609165;
  *(v37 + *(v43 + 56)) = 256;
  v44 = objc_opt_self();
  v45 = [v44 currentDevice];
  [v45 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v46 = v70;
  sub_24B90294C(v37, v70, &qword_27F069B20);
  v47 = &v46[*(v71 + 36)];
  v48 = v103;
  *v47 = v102;
  v47[1] = v48;
  v47[2] = v104;
  v49 = v77;
  sub_24B90294C(v46, v77, &qword_27F069A10);
  v50 = [v44 currentDevice];
  [v50 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v71 = v107;
  v72 = v105;
  v70 = v109;
  v68 = v110;
  v81 = 1;
  v80 = v106;
  v79 = v108;
  v88 = v117;
  v89 = v118;
  v90 = v119;
  v84 = v113;
  v85 = v114;
  v86 = v115;
  v87 = v116;
  v82 = v111;
  v83 = v112;
  v51 = v76;
  sub_24B8F3208(v49, v76, &qword_27F069A10);
  LOBYTE(v37) = v81;
  v52 = v80;
  v66 = v79;
  v53 = v73;
  v54 = v74;
  v55 = v67;
  *v67 = v74;
  v55[1] = v53;
  LOBYTE(v50) = v69 & 1;
  *(v55 + 16) = v69 & 1;
  v55[3] = v75;
  v56 = v89;
  *(v55 + 8) = v88;
  *(v55 + 9) = v56;
  *(v55 + 160) = v90;
  v57 = v85;
  *(v55 + 4) = v84;
  *(v55 + 5) = v57;
  v58 = v87;
  *(v55 + 6) = v86;
  *(v55 + 7) = v58;
  v59 = v83;
  *(v55 + 2) = v82;
  *(v55 + 3) = v59;
  v55[21] = 0;
  *(v55 + 176) = 1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B28);
  sub_24B8F3208(v51, v55 + *(v60 + 80), &qword_27F069A10);
  v61 = v55 + *(v60 + 96);
  *v61 = 0;
  v61[8] = v37;
  v62 = v71;
  *(v61 + 2) = v72;
  v61[24] = v52;
  *(v61 + 4) = v62;
  v61[40] = v66;
  v63 = v68;
  *(v61 + 6) = v70;
  *(v61 + 7) = v63;
  sub_24B8F319C(v54, v53, v50);

  sub_24B8F35E4(v77, &qword_27F069A10);
  sub_24B8F35E4(v51, &qword_27F069A10);
  sub_24B900910(v54, v53, v50);
}

double sub_24BA49AEC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  Width = CGRectGetWidth(v20);
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  Height = CGRectGetHeight(v21);
  v22.origin.x = v2;
  v22.origin.y = v4;
  v22.size.width = v6;
  v22.size.height = v8;
  v11 = CGRectGetWidth(v22);
  v23.origin.x = v2;
  v23.origin.y = v4;
  v23.size.width = v6;
  v23.size.height = v8;
  v12 = CGRectGetHeight(v23);
  if (v11 > v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v16 = 120.0;
  if (v15 == 1)
  {
    v16 = 190.0;
  }

  v17 = v13 * v16;
  if (Height >= Width)
  {
    v18 = Width;
  }

  else
  {
    v18 = Height;
  }

  return v17 / v18;
}

uint64_t sub_24BA49C34@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B20);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = &v65[-v3];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A10);
  v4 = MEMORY[0x28223BE20](v71);
  v76 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v70 = &v65[-v7];
  MEMORY[0x28223BE20](v6);
  v77 = &v65[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65[-v10];
  *&v111 = sub_24BA5022C();
  *(&v111 + 1) = v12;
  sub_24B8F5E3C();
  v13 = sub_24BAA93CC();
  v15 = v14;
  v17 = v16;
  v75 = v18;
  sub_24BAA91AC();
  v19 = *MEMORY[0x277CE09A0];
  v20 = sub_24BAA919C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v11, v19, v20);
  (*(v21 + 56))(v11, 0, 1, v20);
  sub_24BAA91FC();
  sub_24B8F35E4(v11, &qword_27F063CD8);
  v22 = sub_24BAA939C();
  v24 = v23;
  LOBYTE(v19) = v25;

  sub_24B900910(v13, v15, v17 & 1);

  sub_24BAA982C();
  v26 = sub_24BAA933C();
  v73 = v27;
  v74 = v26;
  v69 = v28;
  v75 = v29;

  sub_24B900910(v22, v24, v19 & 1);

  if (*v68)
  {
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v30 = v91;
    v31 = v93;
    v32 = v95;
    v33 = v96;
    v80 = 1;
    v79 = v92;
    v78 = v94;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    LOBYTE(v105) = 1;
    LOBYTE(v102) = v98;
    v81 = v100;
    *&v82 = 0;
    BYTE8(v82) = v80;
    *&v83 = v30;
    BYTE8(v83) = v79;
    *&v84 = v31;
    BYTE8(v84) = v78;
    *&v85 = v32;
    *(&v85 + 1) = v33;
    *&v86 = 0;
    BYTE8(v86) = 1;
    *&v87 = v97;
    BYTE8(v87) = v98;
    *&v88 = v99;
    BYTE8(v88) = v100;
    v89 = v101;
    sub_24BA5084C(&v82);
    v117 = v88;
    v118 = v89;
    v119 = v90;
    v113 = v84;
    v114 = v85;
    v115 = v86;
    v116 = v87;
    v111 = v82;
    v112 = v83;
  }

  else
  {
    sub_24BA5082C(&v111);
  }

  v34 = *(sub_24BAA869C() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_24BAA8B2C();
  v37 = v72;
  (*(*(v36 - 8) + 104))(&v72[v34], v35, v36);
  __asm { FMOV            V0.2D, #1.0 }

  *v37 = _Q0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A18);
  *(v37 + *(v43 + 52)) = 1053609165;
  *(v37 + *(v43 + 56)) = 256;
  v44 = objc_opt_self();
  v45 = [v44 currentDevice];
  [v45 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v46 = v70;
  sub_24B90294C(v37, v70, &qword_27F069B20);
  v47 = &v46[*(v71 + 36)];
  v48 = v103;
  *v47 = v102;
  v47[1] = v48;
  v47[2] = v104;
  v49 = v77;
  sub_24B90294C(v46, v77, &qword_27F069A10);
  v50 = [v44 currentDevice];
  [v50 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v71 = v107;
  v72 = v105;
  v70 = v109;
  v68 = v110;
  v81 = 1;
  v80 = v106;
  v79 = v108;
  v88 = v117;
  v89 = v118;
  v90 = v119;
  v84 = v113;
  v85 = v114;
  v86 = v115;
  v87 = v116;
  v82 = v111;
  v83 = v112;
  v51 = v76;
  sub_24B8F3208(v49, v76, &qword_27F069A10);
  LOBYTE(v37) = v81;
  v52 = v80;
  v66 = v79;
  v53 = v73;
  v54 = v74;
  v55 = v67;
  *v67 = v74;
  v55[1] = v53;
  LOBYTE(v50) = v69 & 1;
  *(v55 + 16) = v69 & 1;
  v55[3] = v75;
  v55[4] = 0;
  *(v55 + 40) = 1;
  v56 = v89;
  *(v55 + 9) = v88;
  *(v55 + 10) = v56;
  *(v55 + 176) = v90;
  v57 = v85;
  *(v55 + 5) = v84;
  *(v55 + 6) = v57;
  v58 = v87;
  *(v55 + 7) = v86;
  *(v55 + 8) = v58;
  v59 = v83;
  *(v55 + 3) = v82;
  *(v55 + 4) = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B30);
  sub_24B8F3208(v51, v55 + *(v60 + 80), &qword_27F069A10);
  v61 = v55 + *(v60 + 96);
  *v61 = 0;
  v61[8] = v37;
  v62 = v71;
  *(v61 + 2) = v72;
  v61[24] = v52;
  *(v61 + 4) = v62;
  v61[40] = v66;
  v63 = v68;
  *(v61 + 6) = v70;
  *(v61 + 7) = v63;
  sub_24B8F319C(v54, v53, v50);

  sub_24B8F35E4(v77, &qword_27F069A10);
  sub_24B8F35E4(v51, &qword_27F069A10);
  sub_24B900910(v54, v53, v50);
}

uint64_t sub_24BA4A3EC@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069D30);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - v4;
  v6 = sub_24BAA869C();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A18);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B20);
  MEMORY[0x28223BE20](v14 - 8);
  v45 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A10);
  v17 = v16 - 8;
  v18 = MEMORY[0x28223BE20](v16);
  v47 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  MEMORY[0x28223BE20](v20);
  v46 = &v44 - v23;
  v24 = objc_opt_self();
  v25 = [v24 currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (v26 == 1)
  {
    v27 = 7.0;
  }

  else
  {
    v27 = 12.0;
  }

  v28 = *(v7 + 28);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_24BAA8B2C();
  (*(*(v30 - 8) + 104))(v9 + v28, v29, v30);
  *v9 = v27;
  v9[1] = v27;
  sub_24BA50F34(v9, v13);
  *&v13[*(v11 + 60)] = 1053609165;
  *&v13[*(v11 + 64)] = 256;
  v31 = v13;
  v32 = v45;
  sub_24B90294C(v31, v45, &qword_27F069A18);
  v33 = [v24 currentDevice];
  [v33 userInterfaceIdiom];

  v34 = [v24 currentDevice];
  [v34 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  sub_24B90294C(v32, v22, &qword_27F069B20);
  v35 = &v22[*(v17 + 44)];
  v36 = v51;
  *v35 = v50;
  *(v35 + 1) = v36;
  *(v35 + 2) = v52;
  v37 = v46;
  sub_24B90294C(v22, v46, &qword_27F069A10);
  *v5 = sub_24BAA8AAC();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069D38);
  sub_24BA4A908(&v5[*(v38 + 44)]);
  v39 = v47;
  sub_24B8F3208(v37, v47, &qword_27F069A10);
  v40 = v48;
  sub_24B8F3208(v5, v48, &qword_27F069D30);
  v41 = v49;
  sub_24B8F3208(v39, v49, &qword_27F069A10);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069D40);
  sub_24B8F3208(v40, v41 + *(v42 + 48), &qword_27F069D30);
  sub_24B8F35E4(v5, &qword_27F069D30);
  sub_24B8F35E4(v37, &qword_27F069A10);
  sub_24B8F35E4(v40, &qword_27F069D30);
  return sub_24B8F35E4(v39, &qword_27F069A10);
}

uint64_t sub_24BA4A908@<X0>(void *a1@<X8>)
{
  v57 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CD8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v67 = &v49[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v69 = &v49[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069C78);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v49[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699F0);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v66 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49[-v13];
  MEMORY[0x28223BE20](v12);
  v68 = &v49[-v15];
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v64 = v78;
  v65 = v76;
  v62 = v81;
  v63 = v80;
  v99 = 1;
  v98 = v77;
  v97 = v79;
  v16 = objc_opt_self();
  v17 = [v16 currentDevice];
  [v17 userInterfaceIdiom];

  v18 = *(sub_24BAA869C() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_24BAA8B2C();
  (*(*(v20 - 8) + 104))(&v7[v18], v19, v20);
  __asm { FMOV            V0.2D, #6.0 }

  *v7 = _Q0;
  v26 = [v16 &selRef_recommendedAndCandidateAllowedAppsForDNDMode_reply_ + 2];
  [v26 userInterfaceIdiom];

  v27 = [v16 &selRef_recommendedAndCandidateAllowedAppsForDNDMode_reply_ + 2];
  [v27 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  sub_24B90294C(v7, v14, &qword_27F069C78);
  v28 = &v14[*(v9 + 44)];
  v29 = v83;
  *v28 = v82;
  v28[1] = v29;
  v28[2] = v84;
  v30 = v68;
  sub_24B90294C(v14, v68, &qword_27F0699F0);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v60 = v87;
  v61 = v85;
  v58 = v90;
  v59 = v89;
  v75 = 1;
  v74 = v86;
  v73 = v88;
  v31 = sub_24BAA8BDC();
  v32 = v69;
  *v69 = v31;
  v32[1] = 0x4010000000000000;
  *(v32 + 16) = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CF0);
  sub_24BA4AF3C(v32 + *(v33 + 44));
  v34 = [v16 &selRef_recommendedAndCandidateAllowedAppsForDNDMode_reply_ + 2];
  [v34 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v55 = v93;
  v56 = v91;
  v53 = v96;
  v54 = v95;
  v72 = 1;
  v71 = v92;
  v70 = v94;
  LOBYTE(v34) = v99;
  LOBYTE(v14) = v98;
  LOBYTE(v18) = v97;
  v35 = v66;
  sub_24B8F3208(v30, v66, &qword_27F0699F0);
  LOBYTE(v32) = v75;
  LOBYTE(v16) = v74;
  LOBYTE(v9) = v73;
  v36 = v69;
  v37 = v67;
  sub_24B8F3208(v69, v67, &qword_27F069CD8);
  v50 = v72;
  v51 = v71;
  v52 = v70;
  v38 = v57;
  *v57 = 0;
  *(v38 + 8) = v34;
  v39 = v64;
  v38[2] = v65;
  *(v38 + 24) = v14;
  v38[4] = v39;
  *(v38 + 40) = v18;
  v40 = v62;
  v38[6] = v63;
  v38[7] = v40;
  v41 = v38;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069D48);
  sub_24B8F3208(v35, v41 + v42[12], &qword_27F0699F0);
  v43 = v41 + v42[16];
  *v43 = 0;
  *(v43 + 8) = v32;
  v44 = v60;
  *(v43 + 16) = v61;
  *(v43 + 24) = v16;
  *(v43 + 32) = v44;
  *(v43 + 40) = v9;
  v45 = v58;
  *(v43 + 48) = v59;
  *(v43 + 56) = v45;
  sub_24B8F3208(v37, v41 + v42[20], &qword_27F069CD8);
  v46 = v41 + v42[24];
  *v46 = 0;
  *(v46 + 8) = v50;
  *(v46 + 16) = v56;
  *(v46 + 24) = v51;
  *(v46 + 32) = v55;
  *(v46 + 40) = v52;
  v47 = v53;
  *(v46 + 48) = v54;
  *(v46 + 56) = v47;
  sub_24B8F35E4(v36, &qword_27F069CD8);
  sub_24B8F35E4(v68, &qword_27F0699F0);
  sub_24B8F35E4(v37, &qword_27F069CD8);
  return sub_24B8F35E4(v35, &qword_27F0699F0);
}

uint64_t sub_24BA4AF3C@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_24BAA869C();
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&v57 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069C78);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v62 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699F0) - 8;
  v13 = MEMORY[0x28223BE20](v61);
  v66 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v57 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v63 = &v57 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v64 = &v57 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  MEMORY[0x28223BE20](v21);
  v60 = &v57 - v24;
  v25 = objc_opt_self();
  v26 = [v25 currentDevice];
  v27 = [v26 userInterfaceIdiom];

  v28 = 2.5;
  if (v27 == 1)
  {
    v29 = 2.0;
  }

  else
  {
    v29 = 2.5;
  }

  v30 = *(v2 + 28);
  v58 = *MEMORY[0x277CE0118];
  v31 = v58;
  v32 = sub_24BAA8B2C();
  v33 = *(v32 - 8);
  v57 = *(v33 + 104);
  v59 = v33 + 104;
  v57(v7 + v30, v31, v32);
  *v7 = v29;
  v7[1] = v29;
  sub_24BA50F34(v7, v12);
  v34 = [v25 currentDevice];
  [v34 userInterfaceIdiom];

  v35 = [v25 currentDevice];
  [v35 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  sub_24B90294C(v12, v23, &qword_27F069C78);
  v36 = v61;
  v37 = &v23[*(v61 + 44)];
  v38 = v69;
  *v37 = v68;
  *(v37 + 1) = v38;
  *(v37 + 2) = v70;
  v39 = v60;
  sub_24B90294C(v23, v60, &qword_27F0699F0);
  v40 = [v25 currentDevice];
  v41 = [v40 userInterfaceIdiom];

  if (v41 == 1)
  {
    v28 = 2.0;
  }

  v57(v5 + *(v2 + 28), v58, v32);
  *v5 = v28;
  v5[1] = v28;
  v42 = v62;
  sub_24BA50F34(v5, v62);
  v43 = [v25 currentDevice];
  [v43 userInterfaceIdiom];

  v44 = [v25 currentDevice];
  [v44 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v45 = v63;
  sub_24B90294C(v42, v63, &qword_27F069C78);
  v46 = (v45 + *(v36 + 44));
  v47 = v72;
  *v46 = v71;
  v46[1] = v47;
  v46[2] = v73;
  v48 = v64;
  sub_24B90294C(v45, v64, &qword_27F0699F0);
  v49 = v39;
  v50 = v65;
  sub_24B8F3208(v39, v65, &qword_27F0699F0);
  v51 = v48;
  v52 = v48;
  v53 = v66;
  sub_24B8F3208(v51, v66, &qword_27F0699F0);
  v54 = v67;
  sub_24B8F3208(v50, v67, &qword_27F0699F0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A58);
  sub_24B8F3208(v53, v54 + *(v55 + 48), &qword_27F0699F0);
  sub_24B8F35E4(v52, &qword_27F0699F0);
  sub_24B8F35E4(v49, &qword_27F0699F0);
  sub_24B8F35E4(v53, &qword_27F0699F0);
  return sub_24B8F35E4(v50, &qword_27F0699F0);
}

uint64_t sub_24BA4B5AC@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CC0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - v4;
  v6 = sub_24BAA869C();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A18);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069B20);
  MEMORY[0x28223BE20](v14 - 8);
  v45 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A10);
  v17 = v16 - 8;
  v18 = MEMORY[0x28223BE20](v16);
  v47 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  MEMORY[0x28223BE20](v20);
  v46 = &v44 - v23;
  v24 = objc_opt_self();
  v25 = [v24 currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (v26 == 1)
  {
    v27 = 7.0;
  }

  else
  {
    v27 = 12.0;
  }

  v28 = *(v7 + 28);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_24BAA8B2C();
  (*(*(v30 - 8) + 104))(v9 + v28, v29, v30);
  *v9 = v27;
  v9[1] = v27;
  sub_24BA50F34(v9, v13);
  *&v13[*(v11 + 60)] = 1053609165;
  *&v13[*(v11 + 64)] = 256;
  v31 = v13;
  v32 = v45;
  sub_24B90294C(v31, v45, &qword_27F069A18);
  v33 = [v24 currentDevice];
  [v33 userInterfaceIdiom];

  v34 = [v24 currentDevice];
  [v34 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  sub_24B90294C(v32, v22, &qword_27F069B20);
  v35 = &v22[*(v17 + 44)];
  v36 = v51;
  *v35 = v50;
  *(v35 + 1) = v36;
  *(v35 + 2) = v52;
  v37 = v46;
  sub_24B90294C(v22, v46, &qword_27F069A10);
  *v5 = sub_24BAA8AAC();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CC8);
  sub_24BA4BAC8(&v5[*(v38 + 44)]);
  v39 = v47;
  sub_24B8F3208(v37, v47, &qword_27F069A10);
  v40 = v48;
  sub_24B8F3208(v5, v48, &qword_27F069CC0);
  v41 = v49;
  sub_24B8F3208(v39, v49, &qword_27F069A10);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CD0);
  sub_24B8F3208(v40, v41 + *(v42 + 48), &qword_27F069CC0);
  sub_24B8F35E4(v5, &qword_27F069CC0);
  sub_24B8F35E4(v37, &qword_27F069A10);
  sub_24B8F35E4(v40, &qword_27F069CC0);
  return sub_24B8F35E4(v39, &qword_27F069A10);
}

uint64_t sub_24BA4BAC8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CD8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v48 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v6 = &v30[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CE0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v30[-v11];
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v47 = v52;
  v46 = v54;
  v45 = v56;
  v44 = v57;
  v72 = 1;
  v71 = v53;
  v70 = v55;
  *v12 = sub_24BAA9D1C();
  v12[1] = v13;
  v14 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CE8) + 44));
  v35 = v12;
  sub_24BA4C018(v14);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v43 = v58;
  v42 = v60;
  v41 = v62;
  v40 = v63;
  v75 = 1;
  v74 = v59;
  v73 = v61;
  v15 = v6;
  *v6 = sub_24BAA8BDC();
  *(v6 + 1) = 0x4010000000000000;
  v6[16] = 0;
  v16 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CF0) + 44)];
  v34 = v6;
  sub_24BA4C684(v16);
  v17 = [objc_opt_self() currentDevice];
  [v17 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v39 = v64;
  v38 = v66;
  v37 = v68;
  v36 = v69;
  v51 = 1;
  v50 = v65;
  v49 = v67;
  LOBYTE(v6) = v72;
  v18 = v71;
  v19 = v70;
  sub_24B8F3208(v12, v10, &qword_27F069CE0);
  LOBYTE(v12) = v75;
  LOBYTE(v17) = v74;
  v20 = v73;
  v21 = v15;
  v22 = v48;
  sub_24B8F3208(v21, v48, &qword_27F069CD8);
  v31 = v51;
  v32 = v50;
  v33 = v49;
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = v47;
  *(a1 + 24) = v18;
  *(a1 + 32) = v46;
  *(a1 + 40) = v19;
  v23 = v44;
  *(a1 + 48) = v45;
  *(a1 + 56) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CF8);
  sub_24B8F3208(v10, a1 + v24[12], &qword_27F069CE0);
  v25 = a1 + v24[16];
  *v25 = 0;
  *(v25 + 8) = v12;
  *(v25 + 16) = v43;
  *(v25 + 24) = v17;
  *(v25 + 32) = v42;
  *(v25 + 40) = v20;
  v26 = v40;
  *(v25 + 48) = v41;
  *(v25 + 56) = v26;
  sub_24B8F3208(v22, a1 + v24[20], &qword_27F069CD8);
  v27 = a1 + v24[24];
  *v27 = 0;
  *(v27 + 8) = v31;
  *(v27 + 16) = v39;
  *(v27 + 24) = v32;
  *(v27 + 32) = v38;
  *(v27 + 40) = v33;
  v28 = v36;
  *(v27 + 48) = v37;
  *(v27 + 56) = v28;
  sub_24B8F35E4(v34, &qword_27F069CD8);
  sub_24B8F35E4(v35, &qword_27F069CE0);
  sub_24B8F35E4(v22, &qword_27F069CD8);
  return sub_24B8F35E4(v10, &qword_27F069CE0);
}

uint64_t sub_24BA4C018@<X0>(void *a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069D00);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v42 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069D08) - 8;
  MEMORY[0x28223BE20](v54);
  v50 = &v42 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069D10) - 8;
  MEMORY[0x28223BE20](v51);
  v49 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069D18);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v55 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v42 - v11;
  MEMORY[0x28223BE20](v10);
  v52 = &v42 - v12;
  v13 = objc_opt_self();
  v14 = [v13 currentDevice];
  [v14 userInterfaceIdiom];

  v15 = [v13 currentDevice];
  [v15 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v48 = v59;
  v47 = v60;
  v46 = v61;
  v45 = v62;
  v44 = v63;
  v43 = v64;
  v16 = sub_24BAA994C();
  v17 = [v13 currentDevice];
  [v17 userInterfaceIdiom];

  v18 = [v13 currentDevice];
  [v18 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v58 = 1;
  *&v57[6] = v65;
  *&v57[22] = v66;
  *&v57[38] = v67;
  v19 = &v4[*(v2 + 44)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066738) + 28);
  sub_24BAA8C0C();
  v21 = sub_24BAA8C1C();
  (*(*(v21 - 8) + 56))(v19 + v20, 0, 1, v21);
  *v19 = swift_getKeyPath();
  v22 = *&v57[16];
  *(v4 + 18) = *v57;
  *v4 = v16;
  *(v4 + 1) = 0;
  *(v4 + 8) = 1;
  *(v4 + 34) = v22;
  *(v4 + 50) = *&v57[32];
  *(v4 + 8) = *&v57[46];
  v23 = [objc_opt_self() tertiaryLabelColor];
  sub_24BAA973C();
  v24 = sub_24BAA987C();

  v25 = sub_24BAA980C();
  v26 = v50;
  sub_24B90294C(v4, v50, &qword_27F069D00);
  v27 = (v26 + *(v54 + 44));
  *v27 = v24;
  v27[1] = v25;
  KeyPath = swift_getKeyPath();
  v29 = v49;
  v30 = &v49[*(v51 + 44)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CA8) + 28);
  v32 = *MEMORY[0x277CDF3D0];
  v33 = sub_24BAA82DC();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = KeyPath;
  sub_24B90294C(v26, v29, &qword_27F069D08);
  v34 = v53;
  sub_24B90294C(v29, v53, &qword_27F069D10);
  v35 = v52;
  sub_24B90294C(v34, v52, &qword_27F069D18);
  v36 = v55;
  sub_24B8F3208(v35, v55, &qword_27F069D18);
  v37 = v56;
  *v56 = v48;
  *(v37 + 8) = v47;
  v37[2] = v46;
  *(v37 + 24) = v45;
  v38 = v43;
  v37[4] = v44;
  v37[5] = v38;
  v39 = v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069D20);
  sub_24B8F3208(v36, v39 + *(v40 + 48), &qword_27F069D18);
  sub_24B8F35E4(v35, &qword_27F069D18);
  return sub_24B8F35E4(v36, &qword_27F069D18);
}

uint64_t sub_24BA4C684@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_24BAA869C();
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&v57 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069C78);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v62 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699F0) - 8;
  v13 = MEMORY[0x28223BE20](v61);
  v66 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v57 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v63 = &v57 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v64 = &v57 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  MEMORY[0x28223BE20](v21);
  v60 = &v57 - v24;
  v25 = objc_opt_self();
  v26 = [v25 currentDevice];
  v27 = [v26 userInterfaceIdiom];

  v28 = 2.5;
  if (v27 == 1)
  {
    v29 = 2.0;
  }

  else
  {
    v29 = 2.5;
  }

  v30 = *(v2 + 28);
  v58 = *MEMORY[0x277CE0118];
  v31 = v58;
  v32 = sub_24BAA8B2C();
  v33 = *(v32 - 8);
  v57 = *(v33 + 104);
  v59 = v33 + 104;
  v57(v7 + v30, v31, v32);
  *v7 = v29;
  v7[1] = v29;
  sub_24BA50F34(v7, v12);
  v34 = [v25 currentDevice];
  [v34 userInterfaceIdiom];

  v35 = [v25 currentDevice];
  [v35 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  sub_24B90294C(v12, v23, &qword_27F069C78);
  v36 = v61;
  v37 = &v23[*(v61 + 44)];
  v38 = v69;
  *v37 = v68;
  *(v37 + 1) = v38;
  *(v37 + 2) = v70;
  v39 = v60;
  sub_24B90294C(v23, v60, &qword_27F0699F0);
  v40 = [v25 currentDevice];
  v41 = [v40 userInterfaceIdiom];

  if (v41 == 1)
  {
    v28 = 2.0;
  }

  v57(v5 + *(v2 + 28), v58, v32);
  *v5 = v28;
  v5[1] = v28;
  v42 = v62;
  sub_24BA50F34(v5, v62);
  v43 = [v25 currentDevice];
  [v43 userInterfaceIdiom];

  v44 = [v25 currentDevice];
  [v44 userInterfaceIdiom];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v45 = v63;
  sub_24B90294C(v42, v63, &qword_27F069C78);
  v46 = (v45 + *(v36 + 44));
  v47 = v72;
  *v46 = v71;
  v46[1] = v47;
  v46[2] = v73;
  v48 = v64;
  sub_24B90294C(v45, v64, &qword_27F0699F0);
  v49 = v39;
  v50 = v65;
  sub_24B8F3208(v39, v65, &qword_27F0699F0);
  v51 = v48;
  v52 = v48;
  v53 = v66;
  sub_24B8F3208(v51, v66, &qword_27F0699F0);
  v54 = v67;
  sub_24B8F3208(v50, v67, &qword_27F0699F0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A58);
  sub_24B8F3208(v53, v54 + *(v55 + 48), &qword_27F0699F0);
  sub_24B8F35E4(v52, &qword_27F0699F0);
  sub_24B8F35E4(v49, &qword_27F0699F0);
  sub_24B8F35E4(v53, &qword_27F0699F0);
  return sub_24B8F35E4(v50, &qword_27F0699F0);
}

uint64_t sub_24BA4CCF4@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X4>, uint64_t *a3@<X8>)
{
  *a3 = sub_24BAA9D1C();
  a3[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  return a2();
}

uint64_t sub_24BA4CD4C@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069928);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v71 - v2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069930);
  MEMORY[0x28223BE20](v74);
  v76 = &v71 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069938);
  MEMORY[0x28223BE20](v75);
  v78 = &v71 - v5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069940);
  v6 = MEMORY[0x28223BE20](v84);
  v77 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v79 = &v71 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069948);
  MEMORY[0x28223BE20](v82);
  v83 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069950);
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069958);
  MEMORY[0x28223BE20](v72);
  v14 = &v71 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069960);
  MEMORY[0x28223BE20](v73);
  v16 = &v71 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069968);
  v17 = MEMORY[0x28223BE20](v80);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v71 - v20;
  v22 = objc_opt_self();
  v23 = [v22 currentDevice];
  v24 = [v23 userInterfaceIdiom];

  v25 = sub_24BAA8BCC();
  if (v24 == 1)
  {
    *v12 = v25;
    *(v12 + 1) = 0;
    v12[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699D8);
    sub_24BA4D5F0(&v12[*(v26 + 44)]);
    v27 = sub_24BAA90AC();
    sub_24BAA828C();
    v28 = &v12[*(v10 + 36)];
    *v28 = v27;
    *(v28 + 1) = v29;
    *(v28 + 2) = v30;
    *(v28 + 3) = v31;
    *(v28 + 4) = v32;
    v28[40] = 0;
    v33 = [v22 currentDevice];
    [v33 userInterfaceIdiom];

    sub_24BA49AEC();
    sub_24BAA9D1C();
    sub_24BAA83BC();
    sub_24B90294C(v12, v14, &qword_27F069950);
    v34 = &v14[*(v72 + 36)];
    v35 = v87;
    *v34 = v86;
    *(v34 + 1) = v35;
    *(v34 + 2) = v88;
    v36 = v81;
    v37 = *v81;

    v38 = sub_24BAA90BC();
    sub_24B90294C(v14, v16, &qword_27F069958);
    v39 = &v16[*(v73 + 36)];
    *v39 = v37;
    v40 = *(v36 + 1);
    *(v39 + 24) = *(v36 + 3);
    *(v39 + 8) = v40;
    v39[40] = v38;
    v41 = &v19[*(v80 + 36)];
    v42 = *(sub_24BAA869C() + 20);
    v43 = *MEMORY[0x277CE0118];
    v44 = sub_24BAA8B2C();
    (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
    __asm { FMOV            V0.2D, #19.0 }

    *v41 = _Q0;
    *&v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
    sub_24B90294C(v16, v19, &qword_27F069960);
    v50 = &qword_27F069968;
    sub_24B90294C(v19, v21, &qword_27F069968);
    sub_24B8F3208(v21, v83, &qword_27F069968);
  }

  else
  {
    *v3 = v25;
    *(v3 + 1) = 0;
    v3[16] = 0;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069970);
    sub_24BA4E4A4(&v3[*(v51 + 44)]);
    v52 = [v22 currentDevice];
    [v52 userInterfaceIdiom];

    sub_24BA49AEC();
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v53 = v3;
    v54 = v76;
    sub_24B90294C(v53, v76, &qword_27F069928);
    v55 = (v54 + *(v74 + 36));
    v56 = v87;
    *v55 = v86;
    v55[1] = v56;
    v55[2] = v88;
    v57 = v81;
    v58 = *v81;

    v59 = sub_24BAA90BC();
    v60 = v78;
    sub_24B90294C(v54, v78, &qword_27F069930);
    v61 = v60 + *(v75 + 36);
    *v61 = v58;
    v62 = *(v57 + 1);
    *(v61 + 24) = *(v57 + 3);
    *(v61 + 8) = v62;
    *(v61 + 40) = v59;
    v63 = v77;
    v64 = &v77[*(v84 + 36)];
    v65 = *(sub_24BAA869C() + 20);
    v66 = *MEMORY[0x277CE0118];
    v67 = sub_24BAA8B2C();
    (*(*(v67 - 8) + 104))(&v64[v65], v66, v67);
    __asm { FMOV            V0.2D, #19.0 }

    *v64 = _Q0;
    *&v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
    sub_24B90294C(v60, v63, &qword_27F069938);
    v50 = &qword_27F069940;
    v69 = v63;
    v21 = v79;
    sub_24B90294C(v69, v79, &qword_27F069940);
    sub_24B8F3208(v21, v83, &qword_27F069940);
  }

  swift_storeEnumTagMultiPayload();
  sub_24BA4F908();
  sub_24BA4FB5C();
  sub_24BAA8D0C();
  return sub_24B8F35E4(v21, v50);
}

uint64_t sub_24BA4D5F0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v79 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v6 = &v47[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699E8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v78 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v47[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699F0);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v80 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v47[-v16];
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v76 = v83;
  v77 = v81;
  v74 = v86;
  v75 = v85;
  v110 = 1;
  v109 = v82;
  v108 = v84;
  v18 = *(sub_24BAA869C() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_24BAA8B2C();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #12.0 }

  *v17 = _Q0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v26 = &v17[*(v13 + 44)];
  v60 = v17;
  v27 = v88;
  *v26 = v87;
  *(v26 + 1) = v27;
  *(v26 + 2) = v89;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v72 = v92;
  v73 = v90;
  v70 = v95;
  v71 = v94;
  v113 = 1;
  v112 = v91;
  v111 = v93;
  *v11 = sub_24BAA8AAC();
  *(v11 + 1) = 0x4014000000000000;
  v11[16] = 0;
  v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699F8) + 44)];
  v58 = v11;
  sub_24BA4DCB0(v28);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v68 = v98;
  v69 = v96;
  v66 = v101;
  v67 = v100;
  v116 = 1;
  v115 = v97;
  v114 = v99;
  v65 = sub_24BAA8AAC();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v63 = v104;
  v64 = v102;
  v61 = v107;
  v62 = v106;
  v119 = 1;
  v118 = v103;
  v117 = v105;
  v59 = sub_24BAA8AAC();
  *v6 = sub_24BAA8BCC();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v29 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A00) + 44)];
  v57 = v6;
  sub_24BA4E228(v29);
  LOBYTE(v19) = v110;
  LOBYTE(v13) = v109;
  LOBYTE(v18) = v108;
  v30 = v17;
  v31 = v80;
  sub_24B8F3208(v30, v80, &qword_27F0699F0);
  v48 = v113;
  v49 = v112;
  v50 = v111;
  v32 = v78;
  sub_24B8F3208(v11, v78, &qword_27F0699E8);
  v51 = v116;
  v52 = v115;
  v53 = v114;
  v54 = v119;
  v55 = v118;
  v56 = v117;
  v33 = v79;
  sub_24B8F3208(v6, v79, &qword_27F0699E0);
  *a1 = 0;
  *(a1 + 8) = v19;
  v34 = v76;
  *(a1 + 16) = v77;
  *(a1 + 24) = v13;
  *(a1 + 32) = v34;
  *(a1 + 40) = v18;
  v35 = v74;
  *(a1 + 48) = v75;
  *(a1 + 56) = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A08);
  sub_24B8F3208(v31, a1 + v36[12], &qword_27F0699F0);
  v37 = a1 + v36[16];
  *v37 = 0;
  *(v37 + 8) = v48;
  *(v37 + 16) = v73;
  *(v37 + 24) = v49;
  *(v37 + 32) = v72;
  *(v37 + 40) = v50;
  v38 = v70;
  *(v37 + 48) = v71;
  *(v37 + 56) = v38;
  sub_24B8F3208(v32, a1 + v36[20], &qword_27F0699E8);
  v39 = a1 + v36[24];
  *v39 = 0;
  *(v39 + 8) = v51;
  *(v39 + 16) = v69;
  *(v39 + 24) = v52;
  *(v39 + 32) = v68;
  *(v39 + 40) = v53;
  v40 = v66;
  *(v39 + 48) = v67;
  *(v39 + 56) = v40;
  v41 = a1 + v36[28];
  *v41 = v65;
  *(v41 + 8) = 0x402E000000000000;
  *(v41 + 16) = 0;
  v42 = a1 + v36[32];
  *v42 = 0;
  *(v42 + 8) = v54;
  *(v42 + 16) = v64;
  *(v42 + 24) = v55;
  *(v42 + 32) = v63;
  *(v42 + 40) = v56;
  v43 = v61;
  *(v42 + 48) = v62;
  *(v42 + 56) = v43;
  v44 = a1 + v36[36];
  *v44 = v59;
  *(v44 + 8) = 0x402E000000000000;
  *(v44 + 16) = 0;
  v45 = a1 + v36[40];
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_24B8F3208(v33, a1 + v36[44], &qword_27F0699E0);
  sub_24B8F35E4(v57, &qword_27F0699E0);
  sub_24B8F35E4(v58, &qword_27F0699E8);
  sub_24B8F35E4(v60, &qword_27F0699F0);
  sub_24B8F35E4(v33, &qword_27F0699E0);
  sub_24B8F35E4(v32, &qword_27F0699E8);
  return sub_24B8F35E4(v80, &qword_27F0699F0);
}

uint64_t sub_24BA4DCB0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699F0);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A28);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - v13;
  *v14 = sub_24BAA8BCC();
  *(v14 + 1) = 0x4014000000000000;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A30);
  sub_24BA4DF68(&v14[*(v15 + 44)]);
  v16 = *(sub_24BAA869C() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_24BAA8B2C();
  (*(*(v18 - 8) + 104))(&v8[v16], v17, v18);
  __asm { FMOV            V0.2D, #9.0 }

  *v8 = _Q0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v24 = &v8[*(v3 + 44)];
  v25 = v28[1];
  *v24 = v28[0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v28[2];
  sub_24B8F3208(v14, v12, &qword_27F069A28);
  sub_24B8F3208(v8, v6, &qword_27F0699F0);
  sub_24B8F3208(v12, a1, &qword_27F069A28);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A38);
  sub_24B8F3208(v6, a1 + *(v26 + 48), &qword_27F0699F0);
  sub_24B8F35E4(v8, &qword_27F0699F0);
  sub_24B8F35E4(v14, &qword_27F069A28);
  sub_24B8F35E4(v6, &qword_27F0699F0);
  return sub_24B8F35E4(v12, &qword_27F069A28);
}

uint64_t sub_24BA4DF68@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699F0);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A40);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - v13;
  *v14 = sub_24BAA8AAC();
  *(v14 + 1) = 0x4014000000000000;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A48);
  __asm { FMOV            V0.2D, #7.0 }

  sub_24BA4EBEC(&v14[*(v15 + 44)], _Q0);
  v21 = *(sub_24BAA869C() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24BAA8B2C();
  (*(*(v23 - 8) + 104))(&v8[v21], v22, v23);
  __asm { FMOV            V0.2D, #8.0 }

  *v8 = _Q0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v25 = &v8[*(v3 + 44)];
  v26 = v29[1];
  *v25 = v29[0];
  *(v25 + 1) = v26;
  *(v25 + 2) = v29[2];
  sub_24B8F3208(v14, v12, &qword_27F069A40);
  sub_24B8F3208(v8, v6, &qword_27F0699F0);
  sub_24B8F3208(v12, a1, &qword_27F069A40);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A50);
  sub_24B8F3208(v6, a1 + *(v27 + 48), &qword_27F0699F0);
  sub_24B8F35E4(v8, &qword_27F0699F0);
  sub_24B8F35E4(v14, &qword_27F069A40);
  sub_24B8F35E4(v6, &qword_27F0699F0);
  return sub_24B8F35E4(v12, &qword_27F069A40);
}

uint64_t sub_24BA4E228@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A10);
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = *(sub_24BAA869C() + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_24BAA8B2C();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  __asm { FMOV            V0.2D, #9.0 }

  *v7 = _Q0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A18);
  *&v7[*(v16 + 52)] = 1053609165;
  *&v7[*(v16 + 56)] = 256;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v17 = &v7[*(v2 + 44)];
  v18 = v31;
  *v17 = v30;
  *(v17 + 1) = v18;
  *(v17 + 2) = v32;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v27 = v35;
  v28 = v33;
  v19 = v37;
  v20 = v38;
  v41 = 1;
  v40 = v34;
  v39 = v36;
  v21 = v5;
  sub_24B8F3208(v7, v5, &qword_27F069A10);
  LOBYTE(v2) = v41;
  LOBYTE(v5) = v40;
  v22 = v39;
  v23 = v29;
  sub_24B8F3208(v21, v29, &qword_27F069A10);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A20) + 48);
  *v24 = 0;
  *(v24 + 8) = v2;
  v25 = v27;
  *(v24 + 16) = v28;
  *(v24 + 24) = v5;
  *(v24 + 32) = v25;
  *(v24 + 40) = v22;
  *(v24 + 48) = v19;
  *(v24 + 56) = v20;
  sub_24B8F35E4(v7, &qword_27F069A10);
  return sub_24B8F35E4(v21, &qword_27F069A10);
}

uint64_t sub_24BA4E4A4@<X0>(uint64_t a1@<X8>)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A10) - 8;
  v2 = MEMORY[0x28223BE20](v78);
  v80 = &v52[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v81 = &v52[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A40);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v79 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v84 = &v52[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699F0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v82 = &v52[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v52[-v13];
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v76 = v87;
  v77 = v85;
  v74 = v90;
  v75 = v89;
  v117 = 1;
  v116 = v86;
  v115 = v88;
  v15 = sub_24BAA869C();
  v16 = *(v15 + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_24BAA8B2C();
  v19 = *(*(v18 - 8) + 104);
  v19(v14 + v16, v17, v18);
  __asm { FMOV            V0.2D, #9.0 }

  v69 = _Q0;
  *v14 = _Q0;
  v83 = v14;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v25 = (v14->n128_u64 + *(v10 + 44));
  v26 = v92;
  *v25 = v91;
  v25[1] = v26;
  v25[2] = v93;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v72 = v96;
  v73 = v94;
  v70 = v99;
  v71 = v98;
  v120 = 1;
  v119 = v95;
  v118 = v97;
  v27 = sub_24BAA8AAC();
  v28 = v84;
  *v84 = v27;
  v28[1] = 0x4020000000000000;
  *(v28 + 16) = 0;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A48);
  sub_24BA4EBEC(v29 + *(v30 + 44), v69);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v68 = v102;
  v69.n128_u64[0] = v100;
  v66 = v105;
  v67 = v104;
  v123 = 1;
  v122 = v101;
  v121 = v103;
  v65 = sub_24BAA8AAC();
  v31 = v81;
  v19(&v81[*(v15 + 20)], v17, v18);
  __asm { FMOV            V0.2D, #12.0 }

  *v31 = _Q0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A18);
  *(v31 + *(v33 + 52)) = 1053609165;
  *(v31 + *(v33 + 56)) = 256;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v34 = (v31 + *(v78 + 44));
  v35 = v107;
  *v34 = v106;
  v34[1] = v35;
  v34[2] = v108;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v78 = v109;
  v63 = v113;
  v64 = v111;
  v62 = v114;
  v126 = 1;
  v125 = v110;
  v124 = v112;
  LOBYTE(v19) = v117;
  LOBYTE(v16) = v116;
  LOBYTE(v29) = v115;
  v36 = v82;
  sub_24B8F3208(v83, v82, &qword_27F0699F0);
  v53 = v120;
  v54 = v119;
  v55 = v118;
  v37 = v79;
  sub_24B8F3208(v84, v79, &qword_27F069A40);
  v56 = v123;
  v57 = v122;
  v58 = v121;
  v38 = v31;
  v39 = v80;
  sub_24B8F3208(v38, v80, &qword_27F069A10);
  v59 = v126;
  v60 = v125;
  v61 = v124;
  *a1 = 0;
  *(a1 + 8) = v19;
  v40 = v76;
  *(a1 + 16) = v77;
  *(a1 + 24) = v16;
  *(a1 + 32) = v40;
  *(a1 + 40) = v29;
  v41 = v74;
  *(a1 + 48) = v75;
  *(a1 + 56) = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A60);
  sub_24B8F3208(v36, a1 + v42[12], &qword_27F0699F0);
  v43 = a1 + v42[16];
  *v43 = 0;
  *(v43 + 8) = v53;
  *(v43 + 16) = v73;
  *(v43 + 24) = v54;
  *(v43 + 32) = v72;
  *(v43 + 40) = v55;
  v44 = v70;
  *(v43 + 48) = v71;
  *(v43 + 56) = v44;
  sub_24B8F3208(v37, a1 + v42[20], &qword_27F069A40);
  v45 = a1 + v42[24];
  *v45 = 0;
  *(v45 + 8) = v56;
  *(v45 + 16) = v69.n128_u64[0];
  *(v45 + 24) = v57;
  *(v45 + 32) = v68;
  *(v45 + 40) = v58;
  v46 = v66;
  *(v45 + 48) = v67;
  *(v45 + 56) = v46;
  v47 = a1 + v42[28];
  *v47 = v65;
  *(v47 + 8) = 0x4020000000000000;
  *(v47 + 16) = 0;
  v48 = a1 + v42[32];
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_24B8F3208(v39, a1 + v42[36], &qword_27F069A10);
  v49 = a1 + v42[40];
  *v49 = 0;
  *(v49 + 8) = v59;
  *(v49 + 16) = v78;
  *(v49 + 24) = v60;
  *(v49 + 32) = v64;
  *(v49 + 40) = v61;
  v50 = v62;
  *(v49 + 48) = v63;
  *(v49 + 56) = v50;
  sub_24B8F35E4(v81, &qword_27F069A10);
  sub_24B8F35E4(v84, &qword_27F069A40);
  sub_24B8F35E4(v83, &qword_27F0699F0);
  sub_24B8F35E4(v39, &qword_27F069A10);
  sub_24B8F35E4(v37, &qword_27F069A40);
  return sub_24B8F35E4(v82, &qword_27F0699F0);
}

uint64_t sub_24BA4EBEC@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v31 = a2;
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699F0);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v27 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v27 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = (&v27 - v11);
  v13 = sub_24BAA869C();
  v14 = *(v13 + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_24BAA8B2C();
  v17 = *(*(v16 - 8) + 104);
  v17(v12 + v14, v15, v16);
  *v12 = v31;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v18 = (v12->n128_u64 + *(v3 + 44));
  v19 = v33;
  *v18 = v32;
  v18[1] = v19;
  v18[2] = v34;
  v17(v10 + *(v13 + 20), v15, v16);
  *v10 = v31;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v20 = (v10->n128_u64 + *(v3 + 44));
  v21 = v36;
  *v20 = v35;
  v20[1] = v21;
  v20[2] = v37;
  v22 = v28;
  sub_24B8F3208(v12, v28, &qword_27F0699F0);
  v23 = v29;
  sub_24B8F3208(v10, v29, &qword_27F0699F0);
  v24 = v30;
  sub_24B8F3208(v22, v30, &qword_27F0699F0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069A58);
  sub_24B8F3208(v23, v24 + *(v25 + 48), &qword_27F0699F0);
  sub_24B8F35E4(v10, &qword_27F0699F0);
  sub_24B8F35E4(v12, &qword_27F0699F0);
  sub_24B8F35E4(v23, &qword_27F0699F0);
  return sub_24B8F35E4(v22, &qword_27F0699F0);
}

uint64_t sub_24BA4EEBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069C60);
  MEMORY[0x28223BE20](v0);
  v2 = v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0699F0);
  MEMORY[0x28223BE20](v3);
  v5 = v19 - v4;
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = *(sub_24BAA869C() + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_24BAA8B2C();
  (*(*(v10 - 8) + 104))(&v5[v8], v9, v10);
  if (v7 == 1)
  {
    __asm { FMOV            V0.2D, #4.0 }
  }

  else
  {
    __asm { FMOV            V0.2D, #5.0 }
  }

  *v5 = _Q0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v16 = &v5[*(v3 + 36)];
  v17 = v19[1];
  *v16 = v19[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v19[2];
  sub_24B8F3208(v5, v2, &qword_27F0699F0);
  swift_storeEnumTagMultiPayload();
  sub_24BA50D28();
  sub_24BAA8D0C();
  return sub_24B8F35E4(v5, &qword_27F0699F0);
}

uint64_t sub_24BA4F160@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24BAA8BCC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0698F8);
  return sub_24BA44F50(v1, a1 + *(v3 + 44));
}

uint64_t sub_24BA4F1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24BA4F310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24BA4F434()
{
  sub_24B936680(319, &qword_27F063A30, MEMORY[0x277CE02A8]);
  if (v0 <= 0x3F)
  {
    sub_24B936680(319, &qword_27F068F10, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_24B9366D4();
      if (v2 <= 0x3F)
      {
        type metadata accessor for DNDModeSemanticType(319);
        if (v3 <= 0x3F)
        {
          sub_24B8F45F4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24BA4F5A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24BA4F5F0(uint64_t result, int a2, int a3)
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

uint64_t sub_24BA4F6BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CB0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24B8F3208(a1, &v5 - v3, &qword_27F069CB0);
  return sub_24BAA88AC();
}

uint64_t sub_24BA4F76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069C88) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069C90) + 28);
  sub_24BAA9CAC();
  v7 = sub_24BAA9CBC();
  (*(*(v7 - 8) + 56))(v5 + v6, 0, 1, v7);
  *v5 = KeyPath;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069C98);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = swift_getKeyPath();
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CA0) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069CA8) + 28);
  v12 = *MEMORY[0x277CDF3C0];
  v13 = sub_24BAA82DC();
  result = (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = v9;
  return result;
}

unint64_t sub_24BA4F908()
{
  result = qword_27F069978;
  if (!qword_27F069978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069968);
    sub_24BA4F9C0();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069978);
  }

  return result;
}

unint64_t sub_24BA4F9C0()
{
  result = qword_27F069980;
  if (!qword_27F069980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069960);
    sub_24BA50918(&qword_27F069988, &qword_27F069958, &unk_24BABB8B0, sub_24BA4FAA4);
    sub_24B8F384C(&qword_27F0699A8, &qword_27F0699B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069980);
  }

  return result;
}

unint64_t sub_24BA4FAA4()
{
  result = qword_27F069990;
  if (!qword_27F069990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069950);
    sub_24B8F384C(&qword_27F069998, &qword_27F0699A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069990);
  }

  return result;
}

unint64_t sub_24BA4FB5C()
{
  result = qword_27F0699B8;
  if (!qword_27F0699B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069940);
    sub_24BA4FC14();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0699B8);
  }

  return result;
}

unint64_t sub_24BA4FC14()
{
  result = qword_27F0699C0;
  if (!qword_27F0699C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069938);
    sub_24BA4FCCC();
    sub_24B8F384C(&qword_27F0699A8, &qword_27F0699B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0699C0);
  }

  return result;
}

unint64_t sub_24BA4FCCC()
{
  result = qword_27F0699C8;
  if (!qword_27F0699C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069930);
    sub_24B8F384C(&qword_27F0699D0, &qword_27F069928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0699C8);
  }

  return result;
}

unint64_t sub_24BA4FD84()
{
  result = qword_27F069AB8;
  if (!qword_27F069AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069AA8);
    sub_24BA4FE3C();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069AB8);
  }

  return result;
}

unint64_t sub_24BA4FE3C()
{
  result = qword_27F069AC0;
  if (!qword_27F069AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069AA0);
    sub_24BA50918(&qword_27F069AC8, &qword_27F069A98, &unk_24BABB9A8, sub_24BA4FF20);
    sub_24B8F384C(&qword_27F0699A8, &qword_27F0699B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069AC0);
  }

  return result;
}

unint64_t sub_24BA4FF20()
{
  result = qword_27F069AD0;
  if (!qword_27F069AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069A90);
    sub_24B8F384C(&qword_27F069AD8, &qword_27F069AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069AD0);
  }

  return result;
}

unint64_t sub_24BA4FFD8()
{
  result = qword_27F069AE8;
  if (!qword_27F069AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069A80);
    sub_24BA50090();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069AE8);
  }

  return result;
}

unint64_t sub_24BA50090()
{
  result = qword_27F069AF0;
  if (!qword_27F069AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069A78);
    sub_24BA50918(&qword_27F069AF8, &qword_27F069A70, &unk_24BABB980, sub_24BA50174);
    sub_24B8F384C(&qword_27F0699A8, &qword_27F0699B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069AF0);
  }

  return result;
}

unint64_t sub_24BA50174()
{
  result = qword_27F069B00;
  if (!qword_27F069B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069A68);
    sub_24B8F384C(&qword_27F069B08, &qword_27F069B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069B00);
  }

  return result;
}

uint64_t sub_24BA5022C()
{
  v40 = sub_24BAA7F2C();
  v0 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063488);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_24BAA7DCC();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B38);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = sub_24BAA7C1C();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24BAA7E8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_24BAA7E6C();
  v20 = sub_24BAA7E5C();
  v21 = v15;
  v22 = v4;
  v23 = v38;
  (*(v16 + 8))(v18, v21);
  v24 = v5;
  [v19 setLocale_];

  v25 = sub_24BAA9FDC();
  [v19 setLocalizedDateFormatFromTemplate_];

  v26 = v40;
  (*(v0 + 56))(v11, 1, 1, v40);
  v27 = sub_24BAA7F3C();
  (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
  sub_24BAA7BFC();
  sub_24BAA7BAC();
  sub_24BAA7BEC();
  v28 = v41;
  sub_24BAA7EBC();
  sub_24BAA7EEC();
  (*(v0 + 8))(v28, v26);
  v29 = *(v23 + 48);
  if (v29(v22, 1, v24) == 1)
  {
    v30 = v42;
    sub_24BAA7DBC();
    v31 = v29(v22, 1, v24);
    v32 = v30;
    if (v31 != 1)
    {
      sub_24B8F35E4(v22, &qword_27F063488);
    }
  }

  else
  {
    v32 = v42;
    (*(v23 + 32))(v42, v22, v24);
  }

  v33 = sub_24BAA7D8C();
  (*(v23 + 8))(v32, v24);
  v34 = [v19 stringFromDate_];

  v35 = sub_24BAAA01C();
  (*(v43 + 8))(v14, v44);
  return v35;
}

double sub_24BA5082C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

unint64_t sub_24BA5085C()
{
  result = qword_27F069B88;
  if (!qword_27F069B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069B60);
    sub_24B8F384C(&qword_27F069B90, &qword_27F069B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069B88);
  }

  return result;
}

uint64_t sub_24BA50918(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24BA5099C()
{
  result = qword_27F069BD0;
  if (!qword_27F069BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069BC0);
    sub_24B93B210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069BD0);
  }

  return result;
}

double sub_24BA50A48(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_24BA50AB0()
{
  result = qword_27F069C30;
  if (!qword_27F069C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069C38);
    sub_24BA4F908();
    sub_24BA4FB5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069C30);
  }

  return result;
}

unint64_t sub_24BA50B40()
{
  result = qword_27F069C40;
  if (!qword_27F069C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069C48);
    sub_24BA4FD84();
    sub_24BA4FFD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069C40);
  }

  return result;
}

unint64_t sub_24BA50BD0()
{
  result = qword_27F069C50;
  if (!qword_27F069C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069C58);
    sub_24B8F384C(&qword_27F069B48, &qword_27F069B40);
    sub_24BA50E70(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069C50);
  }

  return result;
}

unint64_t sub_24BA50D28()
{
  result = qword_27F069C68;
  if (!qword_27F069C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0699F0);
    sub_24BA50DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069C68);
  }

  return result;
}

unint64_t sub_24BA50DB4()
{
  result = qword_27F069C70;
  if (!qword_27F069C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069C78);
    sub_24BA50E70(&qword_27F065A68, MEMORY[0x277CDFC08]);
    sub_24BA50EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069C70);
  }

  return result;
}

uint64_t sub_24BA50E70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24BA50EB8()
{
  result = qword_27F069C80;
  if (!qword_27F069C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069C80);
  }

  return result;
}

uint64_t sub_24BA50F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_24BAA869C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24BA50FA4()
{
  result = qword_27F069D50;
  if (!qword_27F069D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069D58);
    sub_24BA50D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069D50);
  }

  return result;
}

unint64_t sub_24BA5102C()
{
  result = qword_27F069D60;
  if (!qword_27F069D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069CA0);
    sub_24BA510E4();
    sub_24B8F384C(&qword_27F069D80, &qword_27F069CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069D60);
  }

  return result;
}

unint64_t sub_24BA510E4()
{
  result = qword_27F069D68;
  if (!qword_27F069D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069C88);
    sub_24B8F384C(&qword_27F069D70, &qword_27F069C98);
    sub_24B8F384C(&qword_27F069D78, &qword_27F069C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069D68);
  }

  return result;
}

void sub_24BA51258(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24BAAA4DC();
    sub_24B8F37E8(0, &qword_27F066AB0);
    sub_24BA57E20();
    sub_24BAAA24C();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_24BAAA56C() || (sub_24B8F37E8(0, &qword_27F066AB0), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_24B8F0C5C();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x24C2501C0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24BAAA14C();
      }

      sub_24BAAA16C();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_24BA514C4()
{
  v48[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_24B8F37E8(0, &qword_27F066AB0);
  sub_24BA57E20();
  v2 = sub_24BAAA20C();

  v46[2] = 0;
  if ((v2 & 0xC000000000000001) == 0)
  {
    v19 = *(v2 + 32);
    v5 = ((1 << v19) + 63) >> 6;
    if ((v19 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_77;
  }

  v4 = MEMORY[0x277D84FA0];
  v48[0] = MEMORY[0x277D84FA0];
  v2 = sub_24BAAA4DC();
  v5 = v2;
  for (i = sub_24BAAA56C(); i; i = sub_24BAAA56C())
  {
    v46[3] = i;
    swift_dynamicCast();
    v7 = v47;
    if ([v47 activationState])
    {
    }

    else
    {
      v8 = v4[2];
      if (v4[3] <= v8)
      {
        sub_24B8E75B0(v8 + 1);
      }

      v4 = v48[0];
      v5 = v47;
      v9 = sub_24BAAA3BC();
      v10 = v48[0] + 56;
      v11 = -1 << *(v48[0] + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v48[0] + 56 + 8 * (v12 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v12) & ~*(v48[0] + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = 0;
        v16 = (63 - v11) >> 6;
        do
        {
          if (++v13 == v16 && (v15 & 1) != 0)
          {
            __break(1u);
            goto LABEL_55;
          }

          v17 = v13 == v16;
          if (v13 == v16)
          {
            v13 = 0;
          }

          v15 |= v17;
          v18 = *(v10 + 8 * v13);
        }

        while (v18 == -1);
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
      }

      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v4[6] + 8 * v14) = v7;
      ++v4[2];
    }

    v5 = v2;
  }

LABEL_37:
  sub_24BA51258(v4);
  v2 = v33;

  if (v2 >> 62)
  {
    while (1)
    {
      if (!sub_24BAAA52C())
      {
        goto LABEL_59;
      }

LABEL_39:
      if ((v2 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x24C2506E0](0, v2);
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_73:
          if (!sub_24BAAA52C())
          {
LABEL_74:

            return;
          }

          goto LABEL_66;
        }

        v34 = *(v2 + 32);
      }

      v5 = v34;

      v35 = [v5 windows];

      sub_24B8F37E8(0, &qword_27F069E10);
      v2 = sub_24BAAA12C();

      v48[0] = MEMORY[0x277D84F90];
      if (v2 >> 62)
      {
        v36 = sub_24BAAA52C();
        if (v36)
        {
LABEL_44:
          v37 = 0;
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v38 = MEMORY[0x24C2506E0](v37, v2);
            }

            else
            {
              if (v37 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }

              v38 = *(v2 + 8 * v37 + 32);
            }

            v39 = v38;
            v40 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              break;
            }

            if ([v38 isKeyWindow])
            {
              v5 = v48;
              sub_24BAAA66C();
              sub_24BAAA69C();
              sub_24BAAA6AC();
              sub_24BAAA67C();
            }

            else
            {
            }

            ++v37;
            if (v40 == v36)
            {
              v5 = v48[0];
              goto LABEL_63;
            }
          }

LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      else
      {
        v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36)
        {
          goto LABEL_44;
        }
      }

      v5 = MEMORY[0x277D84F90];
LABEL_63:

      if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
      {
        goto LABEL_73;
      }

      if (!*(v5 + 16))
      {
        goto LABEL_74;
      }

LABEL_66:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x24C2506E0](0, v5);
        goto LABEL_69;
      }

      if (*(v5 + 16))
      {
        v41 = *(v5 + 32);
LABEL_69:
        v42 = v41;

        v43 = [v42 rootViewController];
        if (v43)
        {
          v44 = v43;
          [v43 dismissViewControllerAnimated:1 completion:0];
        }

        return;
      }

      __break(1u);
LABEL_77:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v45 = swift_slowAlloc();
        v4 = sub_24BA692A4(v45, v5, v2, sub_24BA51B5C, 0);

        MEMORY[0x24C251390](v45, -1, -1);
        goto LABEL_37;
      }

LABEL_22:
      v46[1] = v46;
      MEMORY[0x28223BE20](v3);
      v21 = v46 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v21, v20);
      v22 = 0;
      v23 = 0;
      v24 = 1 << *(v2 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v2 + 56);
      v27 = (v24 + 63) >> 6;
      while (v26)
      {
        v28 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
LABEL_32:
        v31 = v28 | (v23 << 6);
        if (![*(*(v2 + 48) + 8 * v31) activationState])
        {
          *&v21[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
          if (__OFADD__(v22++, 1))
          {
            __break(1u);
LABEL_36:
            v4 = sub_24BA29F5C(v21, v5, v22, v2);
            goto LABEL_37;
          }
        }
      }

      v29 = v23;
      while (1)
      {
        v23 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v23 >= v27)
        {
          goto LABEL_36;
        }

        v30 = *(v2 + 56 + 8 * v23);
        ++v29;
        if (v30)
        {
          v28 = __clz(__rbit64(v30));
          v26 = (v30 - 1) & v30;
          goto LABEL_32;
        }
      }

LABEL_57:
      __break(1u);
    }
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

LABEL_59:
}

uint64_t sub_24BA51BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24BA51C8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AddTriggersView()
{
  result = qword_27F069DA8;
  if (!qword_27F069DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24BA51DA0()
{
  sub_24B8F4644();
  if (v0 <= 0x3F)
  {
    sub_24B8F47B4();
    if (v1 <= 0x3F)
    {
      sub_24B9184E0();
      if (v2 <= 0x3F)
      {
        sub_24B901BFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24BA51E5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24BA51EC0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_24BAA8A4C();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24BAA862C();
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069DE0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069DD8);
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069DD0);
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069DC8);
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x28223BE20](v16);
  v47 = &v38 - v17;
  v50 = v1;
  v52 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069DF0);
  sub_24BA57434();
  sub_24BAA92BC();
  sub_24BAA9D7C();
  v18 = sub_24B8F384C(&qword_27F069DE8, &qword_27F069DE0);
  v19 = sub_24BA51E5C(&qword_27F064860, MEMORY[0x277CDDAB8]);
  sub_24BAA96EC();
  (*(v40 + 8))(v6, v4);
  (*(v8 + 8))(v10, v7);
  v20 = v42;
  v21 = v43;
  v22 = v44;
  (*(v43 + 104))(v42, *MEMORY[0x277CDDDC0], v44);
  v55 = v7;
  v56 = v4;
  v57 = v18;
  v58 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v39;
  sub_24BAA964C();
  (*(v21 + 8))(v20, v22);
  (*(v41 + 8))(v12, v24);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v55 = sub_24BAA7C2C();
  v56 = v25;
  v53 = v24;
  v54 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_24B8F5E3C();
  v28 = MEMORY[0x277D837D0];
  v30 = v46;
  v29 = v47;
  sub_24BAA952C();

  v31 = (*(v45 + 8))(v15, v30);
  MEMORY[0x28223BE20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FA0);
  v55 = v30;
  v56 = v28;
  v57 = v26;
  v58 = v27;
  swift_getOpaqueTypeConformance2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  v33 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  v55 = v32;
  v56 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v51;
  v35 = v49;
  sub_24BAA96CC();
  (*(v48 + 8))(v29, v35);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069DB8);
  v37 = (v34 + *(result + 36));
  *v37 = sub_24BA56260;
  v37[1] = 0;
  v37[2] = 0;
  v37[3] = 0;
  return result;
}

uint64_t sub_24BA52634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E08);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = v36 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E18);
  v38 = *(v40 - 8);
  v5 = MEMORY[0x28223BE20](v40);
  v39 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E20);
  MEMORY[0x28223BE20](v8);
  v10 = v36 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E28);
  v11 = *(v37 - 8);
  v12 = MEMORY[0x28223BE20](v37);
  v41 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  if (*(a1 + *(type metadata accessor for AddTriggersView() + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24BAA81BC();

    if (v47 == 0xD00000000000001ALL && 0x800000024BAC1A30 == v48)
    {

      v16 = 1;
      v17 = v46;
    }

    else
    {
      v18 = sub_24BAAA78C();

      v17 = v46;
      if (v18)
      {
        v16 = 1;
      }

      else
      {
        v36[1] = v36;
        MEMORY[0x28223BE20](v19);
        *v10 = sub_24BAA8BDC();
        *(v10 + 1) = 0;
        v10[16] = 0;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E30);
        sub_24BA53DF0(&v10[*(v20 + 44)]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E38);
        sub_24B8F384C(&qword_27F069E40, &qword_27F069E20);
        sub_24B8F384C(&qword_27F069E48, &qword_27F069E38);
        v36[0] = v15;
        v21 = sub_24BAA9C2C();
        MEMORY[0x28223BE20](v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E50);
        sub_24BA57EA0();
        v22 = v42;
        sub_24BAA9C3C();
        v23 = *(v11 + 16);
        v24 = v41;
        v25 = v37;
        v23(v41, v15, v37);
        v26 = v38;
        v27 = v39;
        v28 = *(v38 + 16);
        v29 = v22;
        v30 = v40;
        v28(v39, v29, v40);
        v23(v43, v24, v25);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E70);
        v32 = v43;
        v28(&v43[*(v31 + 48)], v27, v30);
        v17 = v46;
        v33 = *(v26 + 8);
        v33(v42, v30);
        v34 = *(v11 + 8);
        v34(v36[0], v25);
        v33(v27, v30);
        v34(v41, v25);
        sub_24BA57F50(v32, v17);
        v16 = 0;
      }
    }

    return (*(v44 + 56))(v17, v16, 1, v45);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA52CAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F20);
  v79 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F28);
  v96 = *(v4 - 8);
  v97 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v77 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v95 = v66 - v7;
  v8 = type metadata accessor for AddTriggersView();
  v71 = *(v8 - 8);
  v70 = *(v71 + 8);
  v9 = v8 - 8;
  v67 = v8 - 8;
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationTriggerView = type metadata accessor for CreateLocationTriggerView(0);
  MEMORY[0x28223BE20](LocationTriggerView);
  v69 = (v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F30);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F38);
  v14 = *(v13 - 8);
  v93 = v13;
  v94 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v92 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = v66 - v17;
  v82 = sub_24BAA866C();
  v98 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v19 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F40);
  MEMORY[0x28223BE20](v85);
  v21 = v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F48);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v66 - v24;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F50);
  v91 = *(v90 - 8);
  v26 = MEMORY[0x28223BE20](v90);
  v89 = v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v88 = v66 - v28;
  v81 = a1;
  sub_24BA53978(v21);
  v29 = a1 + *(v9 + 32);
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v29) = *(v29 + 16);
  *&v99 = v30;
  *(&v99 + 1) = v31;
  LOBYTE(v100) = v29;
  v66[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B8C();
  v86 = sub_24BA58208();
  sub_24BA5825C();
  sub_24BAA84BC();
  sub_24BAA865C();
  v85 = MEMORY[0x277CDD938];
  sub_24B8F384C(&qword_27F069F70, &qword_27F069F48);
  v84 = sub_24BA51E5C(&qword_27F063BF8, MEMORY[0x277CDDB18]);
  v32 = v82;
  sub_24BAA944C();
  v33 = *(v98 + 8);
  v98 += 8;
  v83 = v33;
  v33(v19, v32);
  (*(v23 + 8))(v25, v22);
  v66[0] = type metadata accessor for AddTriggersView;
  v34 = v81;
  v35 = v68;
  sub_24BA594FC(v81, v68, type metadata accessor for AddTriggersView);
  v36 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v37 = swift_allocObject();
  v71 = type metadata accessor for AddTriggersView;
  sub_24BA595C0(v35, v37 + v36, type metadata accessor for AddTriggersView);
  sub_24B9C5B54(sub_24BA58344, v37, v69);
  v38 = v34 + *(v67 + 36);
  v39 = *v38;
  v40 = *(v38 + 8);
  LOBYTE(v38) = *(v38 + 16);
  *&v99 = v39;
  *(&v99 + 1) = v40;
  LOBYTE(v100) = v38;
  sub_24BAA9B8C();
  sub_24BA51E5C(&qword_27F069F78, type metadata accessor for CreateLocationTriggerView);
  v41 = v72;
  sub_24BAA84BC();
  sub_24BAA865C();
  sub_24B8F384C(&qword_27F069F80, &qword_27F069F30);
  v42 = v87;
  v43 = v73;
  v44 = v82;
  sub_24BAA944C();
  v83(v19, v44);
  (*(v75 + 8))(v41, v43);
  sub_24BA594FC(v81, v35, v66[0]);
  v45 = swift_allocObject();
  sub_24BA595C0(v35, v45 + v36, v71);
  v104 = 0;
  v105 = 0;
  v106 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648D0);
  sub_24BAA99EC();
  v46 = v99;
  v47 = v100;
  v107 = 0;
  *&v99 = sub_24B902B6C;
  *(&v99 + 1) = 0;
  LOBYTE(v100) = 0;
  *(&v100 + 1) = v104;
  DWORD1(v100) = *(&v104 + 3);
  *(&v100 + 1) = sub_24BA583B4;
  v101 = v45;
  v102 = v46;
  v103 = v47;
  sub_24BA5843C();
  v48 = v76;
  sub_24BAA84AC();
  sub_24BAA865C();
  sub_24B8F384C(&qword_27F069F90, &qword_27F069F20);
  v49 = v95;
  v50 = v78;
  sub_24BAA944C();
  v83(v19, v44);
  (*(v79 + 8))(v48, v50);
  v51 = *(v91 + 16);
  v52 = v89;
  v53 = v90;
  v51(v89, v88, v90);
  v98 = *(v94 + 16);
  v54 = v92;
  (v98)(v92, v42, v93);
  v55 = *(v96 + 16);
  v56 = v77;
  v55(v77, v49, v97);
  v57 = v80;
  v51(v80, v52, v53);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F98);
  v59 = v93;
  (v98)(&v57[*(v58 + 48)], v54, v93);
  v60 = v97;
  v55(&v57[*(v58 + 64)], v56, v97);
  v61 = *(v96 + 8);
  v61(v95, v60);
  v62 = *(v94 + 8);
  v62(v87, v59);
  v63 = *(v91 + 8);
  v64 = v90;
  v63(v88, v90);
  v61(v56, v60);
  v62(v92, v59);
  return (v63)(v89, v64);
}

uint64_t sub_24BA53978@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = type metadata accessor for Trigger.Schedule(0);
  v2 = MEMORY[0x28223BE20](v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - v5;
  v7 = type metadata accessor for AddTriggersView();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  ScheduleTriggerView = type metadata accessor for CreateScheduleTriggerView(0);
  v12 = ScheduleTriggerView - 8;
  MEMORY[0x28223BE20](ScheduleTriggerView);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24BA594FC(v1, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddTriggersView);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_24BA595C0(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AddTriggersView);
  *v14 = sub_24BA5948C;
  v14[1] = v16;
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v14[2] = sub_24BAA86FC();
  v14[3] = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277D05A88]) init];
  v19 = [objc_allocWithZone(MEMORY[0x277D059C0]) initWithTimePeriod:v18 enabledSetting:2];

  sub_24B928E74(v19, v6);
  sub_24BA594FC(v6, v4, type metadata accessor for Trigger.Schedule);
  sub_24BAA99EC();
  sub_24BA59564(v6);
  v20 = v14 + *(v12 + 36);
  v30 = 0;
  sub_24BAA99EC();
  v21 = v32;
  *v20 = v31;
  *(v20 + 1) = v21;
  v22 = *(v27 + *(v8 + 28));
  if (v22)
  {

    v23 = sub_24BAA813C();
    v24 = v29;
    sub_24BA595C0(v14, v29, type metadata accessor for CreateScheduleTriggerView);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F40);
    v26 = (v24 + *(result + 36));
    *v26 = v23;
    v26[1] = v22;
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

double sub_24BA53D00@<D0>(_OWORD *a1@<X8>)
{
  sub_24BA58CB4(v5);
  v2 = v5[3];
  a1[2] = v5[2];
  a1[3] = v2;
  a1[4] = v6[0];
  *(a1 + 73) = *(v6 + 9);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

double sub_24BA53D50@<D0>(_OWORD *a1@<X8>)
{
  sub_24BA58F58(v5);
  v2 = v5[3];
  a1[2] = v5[2];
  a1[3] = v2;
  a1[4] = v6[0];
  *(a1 + 73) = *(v6 + 9);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

double sub_24BA53DA0@<D0>(_OWORD *a1@<X8>)
{
  sub_24BA5912C(v5);
  v2 = v5[3];
  a1[2] = v5[2];
  a1[3] = v2;
  a1[4] = v6[0];
  *(a1 + 73) = *(v6 + 9);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

uint64_t sub_24BA53DF0@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F00);
  v1 = MEMORY[0x28223BE20](v66);
  v69 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v67 = &v56 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F08);
  v4 = MEMORY[0x28223BE20](v71);
  v68 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - v6;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v61 = qword_27F077088;
  v74 = sub_24BAA7C2C();
  v75 = v8;
  sub_24B8F5E3C();
  v9 = sub_24BAA93CC();
  v11 = v10;
  v13 = v12;
  sub_24BAA928C();
  v14 = sub_24BAA939C();
  v16 = v15;
  v18 = v17;
  v65 = v19;

  sub_24B900910(v9, v11, v13 & 1);

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F10);
  v20 = &v7[*(v60 + 36)];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B10);
  v21 = *(v59 + 28);
  v57 = sub_24BAA937C();
  v22 = *(v57 - 8);
  v56 = *(v22 + 56);
  v58 = v22 + 56;
  v56(v20 + v21, 1, 1, v57);
  *v20 = swift_getKeyPath();
  *v7 = v14;
  *(v7 + 1) = v16;
  v7[16] = v18 & 1;
  *(v7 + 3) = v65;
  v23 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  v25 = &v7[*(v71 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v64 = v76;
  v65 = v74;
  v63 = v78;
  v62 = v79;
  v82 = 1;
  v81 = v75;
  v80 = v77;
  v72 = sub_24BAA7C2C();
  v73 = v26;
  v27 = sub_24BAA93CC();
  v29 = v28;
  LOBYTE(v16) = v30;
  sub_24BAA927C();
  v31 = sub_24BAA939C();
  v33 = v32;
  LOBYTE(v20) = v34;
  v36 = v35;

  sub_24B900910(v27, v29, v16 & 1);

  v37 = v67;
  v38 = &v67[*(v60 + 36)];
  v56(v38 + *(v59 + 28), 1, 1, v57);
  *v38 = swift_getKeyPath();
  *v37 = v31;
  *(v37 + 8) = v33;
  *(v37 + 16) = v20 & 1;
  *(v37 + 24) = v36;
  v39 = sub_24BAA989C();
  v40 = swift_getKeyPath();
  v41 = (v37 + *(v71 + 36));
  *v41 = v40;
  v41[1] = v39;
  LOBYTE(v39) = sub_24BAA90DC();
  sub_24BAA828C();
  v42 = v37 + *(v66 + 36);
  *v42 = v39;
  *(v42 + 8) = v43;
  *(v42 + 16) = v44;
  *(v42 + 24) = v45;
  *(v42 + 32) = v46;
  *(v42 + 40) = 0;
  v47 = v68;
  sub_24B8F3208(v7, v68, &qword_27F069F08);
  LOBYTE(v36) = v82;
  LOBYTE(v16) = v81;
  v48 = v80;
  v49 = v69;
  sub_24B8F3208(v37, v69, &qword_27F069F00);
  v50 = v70;
  sub_24B8F3208(v47, v70, &qword_27F069F08);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069F18);
  v52 = v50 + *(v51 + 48);
  *v52 = 0;
  *(v52 + 8) = v36;
  v53 = v64;
  *(v52 + 16) = v65;
  *(v52 + 24) = v16;
  *(v52 + 32) = v53;
  *(v52 + 40) = v48;
  v54 = v62;
  *(v52 + 48) = v63;
  *(v52 + 56) = v54;
  sub_24B8F3208(v49, v50 + *(v51 + 64), &qword_27F069F00);
  sub_24B8F35E4(v37, &qword_27F069F00);
  sub_24B8F35E4(v7, &qword_27F069F08);
  sub_24B8F35E4(v49, &qword_27F069F00);
  return sub_24B8F35E4(v47, &qword_27F069F08);
}

uint64_t sub_24BA54414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for AddTriggersView();
  v4 = v3 - 8;
  v22 = *(v3 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E68);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  if (*(a1 + *(v4 + 28)))
  {

    sub_24B984444();
    sub_24B8DF718();

    swift_getKeyPath();
    sub_24B95D240();
    v11 = v10;

    if (v11)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24BAA81BC();

      if (v24 == 0xD000000000000023 && 0x800000024BAC1A00 == v25)
      {
        goto LABEL_6;
      }

      v12 = sub_24BAAA78C();

      if (v12)
      {
        goto LABEL_8;
      }

      swift_getKeyPath();
      swift_getKeyPath();

      sub_24BAA81BC();

      if (v24 == 0xD00000000000001ALL && 0x800000024BAC1A30 == v25)
      {
        goto LABEL_6;
      }

      v16 = sub_24BAAA78C();

      if (v16)
      {
        goto LABEL_8;
      }

      swift_getKeyPath();
      swift_getKeyPath();

      sub_24BAA81BC();

      if (v24 == 0xD000000000000023 && 0x800000024BAC1A50 == v25)
      {
LABEL_6:
      }

      else
      {
        v17 = sub_24BAAA78C();

        if ((v17 & 1) == 0)
        {
          sub_24BA594FC(a1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddTriggersView);
          v18 = (*(v22 + 80) + 16) & ~*(v22 + 80);
          v19 = swift_allocObject();
          v20 = sub_24BA595C0(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for AddTriggersView);
          MEMORY[0x28223BE20](v20);
          *(&v22 - 2) = a1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069E78);
          sub_24B8F384C(&qword_27F069E80, &qword_27F069E78);
          sub_24BAA9A5C();
          v21 = v23;
          (*(v7 + 32))(v23, v9, v6);
          v14 = v21;
          v13 = 0;
          return (*(v7 + 56))(v14, v13, 1, v6);
        }
      }
    }

LABEL_8:
    v13 = 1;
    v14 = v23;
    return (*(v7 + 56))(v14, v13, 1, v6);
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24BA51E5C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}