unint64_t sub_1D690B0B4(void *a1)
{
  a1[1] = sub_1D667CF44();
  a1[2] = sub_1D6686A30();
  result = sub_1D690B0EC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D690B0EC()
{
  result = qword_1EC88E0E0;
  if (!qword_1EC88E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E0E0);
  }

  return result;
}

uint64_t sub_1D690B140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 50))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 48) >> 9) & 0x1C | (*(a1 + 48) >> 14)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D690B194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (((-a2 >> 2) & 7) - 8 * a2) << 11;
    }
  }

  return result;
}

uint64_t sub_1D690B234()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  if (v2 >> 14)
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    v4 = v3;
    sub_1D7263D4C();
    if (v2 >> 14 == 1)
    {
      MEMORY[0x1DA6F9910](0x6F20676E69727453, 0xEF203A6E6F697470);
    }

    else
    {
      MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73DBC20);
    }

    sub_1D7263F9C();
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1D690B46C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5B68374(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725A60C();
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for FormatModule();
    v7 = objc_allocWithZone(v6);
    sub_1D5B68374(v10, &v7[OBJC_IVAR____TtC8NewsFeed12FormatModule_resolver]);
    *&v7[OBJC_IVAR____TtC8NewsFeed12FormatModule_tracker] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    a2[3] = v6;
    a2[4] = &protocol witness table for FormatModule;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D690B544@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5B68374(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF0DAA8);
  result = sub_1D725AACC();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatTracker();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WebEmbedManager();
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    type metadata accessor for FormatPluginFactory();
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v6 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v6 + 192) = MEMORY[0x1E69E7CD0];
    sub_1D5B63F14(v10, v6 + 48);
    sub_1D5B63F14(&v8, v6 + 88);
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
    *(v6 + 176) = 0;
    *(v6 + 184) = v5;
    type metadata accessor for WeakFormatTracker();
    v7 = swift_allocObject();
    *(v7 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v7 + 24) = &protocol witness table for FormatTracker;
    swift_unknownObjectWeakAssign();

    *(v6 + 128) = v7;
    *(v6 + 136) = &protocol witness table for WeakFormatTracker;
    *a2 = v6;
    a2[1] = &protocol witness table for FormatPluginFactory;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D690B710()
{
  sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
  swift_allocObject();
  return sub_1D725E47C();
}

uint64_t sub_1D690B78C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FormatTracker();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &protocol witness table for FormatTracker;
  return result;
}

uint64_t sub_1D690B7CC()
{
  type metadata accessor for FormatViewController();
  sub_1D725B52C();
  sub_1D725A70C();

  sub_1D5B483C4(0, &qword_1EDF11178);
  sub_1D725B53C();
  type metadata accessor for FormatRouter();
  sub_1D725A6FC();

  sub_1D5B483C4(0, &qword_1EDF0DB50);
  sub_1D725B53C();

  sub_1D5B483C4(0, &qword_1EDF0EFC8);
  sub_1D725B53C();

  sub_1D5B483C4(0, &qword_1EDF0E2E0);
  sub_1D725B53C();

  type metadata accessor for FormatPluginData();
  sub_1D725B53C();

  sub_1D5B483C4(0, &qword_1EDF0DAA8);
  sub_1D725B53C();

  sub_1D6087E88(0);
  sub_1D725B52C();

  type metadata accessor for FormatBlueprintModifierFactory();
  sub_1D725B52C();

  sub_1D6910E80();
  sub_1D725B52C();
  sub_1D725A70C();

  sub_1D69116D8();
  sub_1D725B52C();
  sub_1D725A70C();

  sub_1D691192C();
  sub_1D725B52C();

  sub_1D725F17C();
  sub_1D725B52C();

  sub_1D6910F6C();
  sub_1D725B52C();

  sub_1D5B483C4(0, &qword_1EDF16F68);
  sub_1D725B53C();
  sub_1D725A70C();

  sub_1D5B552B0(0, &qword_1EDF16F00, sub_1D691183C, sub_1D685234C, MEMORY[0x1E69D8498]);
  sub_1D725B52C();

  type metadata accessor for FormatBlueprintLayoutBuilder();
  sub_1D725B52C();

  sub_1D69119D4();
  sub_1D725B52C();
  sub_1D725A70C();

  type metadata accessor for FormatCollectionView();
  sub_1D725B52C();

  sub_1D69110A8();
  sub_1D725B52C();

  sub_1D5B483C4(0, &qword_1EDF16EA8);
  sub_1D725B53C();
  sub_1D725EE8C();
  sub_1D725A6FC();

  sub_1D6911B10();
  sub_1D725B52C();
  sub_1D725A70C();

  sub_1D6911224();
  sub_1D725B52C();
  sub_1D725A70C();

  sub_1D6911474();
  sub_1D725B52C();
  sub_1D725A70C();

  sub_1D69115D8();
  sub_1D725B52C();

  type metadata accessor for FormatBlueprintViewCellProvider();
  sub_1D725B52C();
  sub_1D725A70C();

  type metadata accessor for FormatBlueprintViewSupplementaryViewProvider();
  sub_1D725B52C();
  sub_1D725A70C();

  sub_1D6911B70();
  sub_1D725B52C();
  sub_1D725A70C();

  sub_1D6911C04();
  sub_1D725B52C();
  sub_1D725A70C();

  sub_1D725D9FC();
  sub_1D725B52C();

  sub_1D6911C98();
  sub_1D725B52C();
  sub_1D725A70C();

  sub_1D725E89C();
  sub_1D725B52C();
  sub_1D725A70C();

  sub_1D5B483C4(0, &unk_1EDF16E88);
  sub_1D725B53C();

  sub_1D725E80C();
  sub_1D725B52C();

  sub_1D5B483C4(0, &qword_1EDF082F0);
  sub_1D725B53C();
}

uint64_t sub_1D690C30C(void *a1)
{
  v2 = sub_1D725B49C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF0DB50);
  result = sub_1D725AACC();
  v8 = v40;
  if (!v40)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v41;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69119D4();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v31 = v9;
  v32 = result;
  v30 = v6;
  v33 = v3;
  v34 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  if (!v39)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D725A60C();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = result;
  v37 = v12;
  v38 = sub_1D5B85F00(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
  v36 = v13;
  sub_1D725D6EC();
  swift_allocObject();
  v14 = sub_1D725D6DC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725CAFC();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AABC();
  if (result)
  {
    v16 = result;
    v17 = type metadata accessor for FormatViewController();
    v18 = objc_allocWithZone(v17);
    v18[OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin] = 0;
    *&v18[OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluggableDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v19 = &v18[OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier];
    *v19 = 0;
    v19[1] = 0;
    v20 = &v18[OBJC_IVAR____TtC8NewsFeed20FormatViewController_lastComputedSize];
    *v20 = 0;
    *(v20 + 1) = 0;
    v20[16] = 1;
    *&v18[OBJC_IVAR____TtC8NewsFeed20FormatViewController_selectionProvider + 8] = 0;
    swift_unknownObjectWeakInit();
    v21 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventManager;
    sub_1D69124E0();
    swift_allocObject();
    *&v18[v21] = sub_1D725AA2C();
    *&v18[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintHorizontalShimView] = 0;
    v22 = &v18[OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler];
    v23 = v31;
    v24 = v32;
    *v22 = v8;
    v22[1] = v23;
    *&v18[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintViewController] = v11;
    *&v18[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintLayoutProvider] = v24;
    *&v18[OBJC_IVAR____TtC8NewsFeed20FormatViewController_commands] = v14;
    *&v18[OBJC_IVAR____TtC8NewsFeed20FormatViewController_tipManager] = v15;
    *&v18[OBJC_IVAR____TtC8NewsFeed20FormatViewController_tracker] = v16;
    v35.receiver = v18;
    v35.super_class = v17;
    swift_unknownObjectRetain();
    v31 = v11;

    v25 = objc_msgSendSuper2(&v35, sel_initWithNibName_bundle_, 0, 0);
    *(*&v25[OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler] + 24) = &off_1F51DC340;
    swift_unknownObjectWeakAssign();
    v26 = *&v25[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintViewController];
    v27 = v25;
    v28 = v26;
    sub_1D725E59C();

    sub_1D5E29588(&unk_1F5119098);

    v29 = v30;
    sub_1D725B48C();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1D725AA1C();
    swift_unknownObjectRelease();

    (*(v33 + 8))(v29, v34);

    return v27;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D690C908(void **a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, qword_1EDF3E5E0);
  result = sub_1D725AACC();
  if (v10)
  {
    ObjectType = swift_getObjectType();
    v6 = *(v11 + 16);
    v7 = v3;
    v6(v3, ObjectType);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D6911C98();
    result = sub_1D725AABC();
    if (result)
    {
      swift_unknownObjectRelease();
      v8 = sub_1D5B85F00(&qword_1EDF16ED8, sub_1D6911C98);
      v9 = &v7[OBJC_IVAR____TtC8NewsFeed20FormatViewController_selectionProvider];
      swift_beginAccess();
      *(v9 + 1) = v8;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D690CA94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5B68374(a1, v6);
  v3 = type metadata accessor for FormatRouter();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = sub_1D5B63F14(v6, v4 + 24);
  a2[3] = v3;
  a2[4] = &off_1F5120C08;
  *a2 = v4;
  return result;
}

void sub_1D690CB10(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FormatViewController();
  v2 = sub_1D725AABC();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D690CB90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF0EFC8);
  result = sub_1D725AACC();
  v5 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF11178);
  result = sub_1D725AACC();
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF405A0);
  result = sub_1D725AACC();
  v7 = v22;
  if (v22)
  {
    v8 = v23;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x1EEE9AC00](v9, v9);
    v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for FormatRouter();
    v21[3] = v14;
    v21[4] = &off_1F5120C08;
    v21[0] = v13;
    type metadata accessor for FormatEventHandler();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v14);
    MEMORY[0x1EEE9AC00](v16, v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = sub_1D69123E8(v5, v6, *v18, v7, v8, v15);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    *a2 = v20;
    a2[1] = &off_1F51B7AB8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D690CE90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF0E2E0);
  result = sub_1D725AACC();
  v5 = v17;
  if (!v17)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6910E80();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatBlueprintModifierFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B53EDC(0, qword_1EDF412B8, &type metadata for FormatOfflineModel, &off_1F51C0A00, type metadata accessor for OfflineManager);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF082F0);
  result = sub_1D725AACC();
  if (v16)
  {
    sub_1D691234C();
    v10 = swift_allocObject();
    v10[3] = 0;
    swift_unknownObjectWeakInit();
    v10[6] = v5;
    v10[7] = v6;
    v10[4] = v7;
    v10[5] = v8;
    v10[8] = v9;
    sub_1D5B63F14(&v15, (v10 + 9));
    *(v5 + OBJC_IVAR____TtC8NewsFeed17FormatDataManager_delegate + 8) = &off_1F512FB28;
    swift_unknownObjectWeakAssign();
    v11 = v10[8];
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = (v11 + qword_1EC894F50);
    v14 = *(v11 + qword_1EC894F50);
    *v13 = sub_1D69123E0;
    v13[1] = v12;
    result = sub_1D5B74328(v14);
    *a2 = v10;
    a2[1] = &off_1F512FB38;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D690D110@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  sub_1D5BB6F50(0, qword_1EDF11258, type metadata accessor for FormatPluginData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = type metadata accessor for FormatPluginData();
  sub_1D725AACC();
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B5A498(0, &unk_1EDF1A820);
    result = sub_1D725AABC();
    if (result)
    {
      v10 = result;
      v11 = type metadata accessor for FormatDataManager();
      v12 = objc_allocWithZone(v11);
      *&v12[OBJC_IVAR____TtC8NewsFeed17FormatDataManager_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      sub_1D5F423D0(v7, &v12[OBJC_IVAR____TtC8NewsFeed17FormatDataManager_pluginData]);
      *&v12[OBJC_IVAR____TtC8NewsFeed17FormatDataManager_subscriptionController] = v10;
      v15.receiver = v12;
      v15.super_class = v11;
      v13 = v10;
      v14 = objc_msgSendSuper2(&v15, sel_init);
      [*&v14[OBJC_IVAR____TtC8NewsFeed17FormatDataManager_subscriptionController] addObserver_];

      result = sub_1D6912180(v7);
      *a2 = v14;
      a2[1] = &off_1F5125210;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D690D40C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_1D690D450(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF0DAA8);
  result = sub_1D725AACC();
  if (v4)
  {
    type metadata accessor for FormatBlueprintModifierFactory();
    v2 = swift_allocObject();
    sub_1D5B63F14(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D690D4F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0);
  result = sub_1D725AABC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D6910F6C();
    result = sub_1D725AABC();
    if (result)
    {
      sub_1D6910E80();
      swift_allocObject();
      return sub_1D725D8AC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D690D5D4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_1D6912238(0);
  swift_allocObject();
  v11[0] = sub_1D725EEDC();
  sub_1D6912258(0, &qword_1EDF16F90, MEMORY[0x1E69D81B8]);
  swift_allocObject();
  sub_1D5B85F00(&qword_1EDF16F48, sub_1D6912238);
  sub_1D725EB6C();
  sub_1D725D8CC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D69116D8();
  result = sub_1D725AABC();
  if (result)
  {
    v11[0] = result;
    swift_allocObject();
    sub_1D5B85F00(&qword_1EDF16E80, sub_1D69116D8);
    sub_1D725EB6C();
    sub_1D725D8CC();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D5B483C4(0, qword_1EDF36190);
    result = sub_1D725AACC();
    if (v10)
    {
      sub_1D5B63F14(&v9, v11);
      v5 = v12;
      v6 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v7 = *(v6 + 24);
      sub_1D6910E80();
      v7(v3, sub_1D690D830, 0, v8, v5, v6);
      return __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D690D860(void *a1)
{
  v2 = sub_1D725F58C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BB6F50(0, &qword_1EDF16E50, MEMORY[0x1E69D8738], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v16 - v9;
  if (qword_1EDF29DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EDF29DE0 == 1)
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69D8730], v2);
    sub_1D725F59C();
    v11 = sub_1D725F5AC();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_1D725F5AC();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatBlueprintLayoutBuilder();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B552B0(0, &qword_1EDF16F00, sub_1D691183C, sub_1D685234C, MEMORY[0x1E69D8498]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D691192C();
  result = sub_1D725AABC();
  if (result)
  {
    v16[0] = v15;
    v16[1] = v14;
    sub_1D69116D8();
    swift_allocObject();
    return sub_1D725F4DC();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D690DB88(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = type metadata accessor for FeedAdPipelineProcessor();
  sub_1D5B68374(a2, &v12);
  v4 = swift_allocObject();
  sub_1D5B63F14(&v12, v4 + 16);
  v5 = sub_1D725AA9C();

  if (v5)
  {
    v13 = v3;
    v14 = sub_1D5B85F00(&qword_1EDF14020, type metadata accessor for FeedAdPipelineProcessor);
    *&v12 = v5;
    sub_1D725F4EC();
    __swift_destroy_boxed_opaque_existential_1(&v12);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v7 = type metadata accessor for FeedItemRendererPipelineProcessor(0);
    sub_1D5B68374(a2, &v12);
    v8 = swift_allocObject();
    sub_1D5B63F14(&v12, v8 + 16);
    v9 = sub_1D725AA9C();

    if (v9)
    {
      v13 = v7;
      v14 = sub_1D5B85F00(qword_1EDF13258, type metadata accessor for FeedItemRendererPipelineProcessor);
      *&v12 = v9;
      sub_1D725F4EC();
      __swift_destroy_boxed_opaque_existential_1(&v12);
      v10 = sub_1D725F00C();
      swift_allocObject();
      v11 = sub_1D725EFFC();
      v13 = v10;
      v14 = MEMORY[0x1E69D84C0];
      *&v12 = v11;
      sub_1D725F4EC();
      return __swift_destroy_boxed_opaque_existential_1(&v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D690DDD8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FormatCollectionView();
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    sub_1D5B5A498(0, &qword_1EDF1ABF0);
    sub_1D72621FC();
    sub_1D725A86C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D690DEB0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725F17C();
  result = sub_1D725AA7C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF16EA8);
  result = sub_1D725AA8C();
  if (v3)
  {
    sub_1D691192C();
    swift_allocObject();
    return sub_1D725EFDC();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D690E06C()
{
  sub_1D725EB9C();
  sub_1D726322C();
  sub_1D725EE2C();
  sub_1D726322C();
  sub_1D725F3FC();
  sub_1D726322C();
  sub_1D725ED6C();
  sub_1D726322C();
  type metadata accessor for FormatMicaSectionDecorationItem();
  sub_1D5B85F00(&qword_1EDF1F970, type metadata accessor for FormatMicaSectionDecorationItem);
  return sub_1D726322C();
}

uint64_t sub_1D690E168(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69110A8();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF16E40);
  result = sub_1D725AACC();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF16EA8);
  result = sub_1D725AA8C();
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911C04();
  v4 = v3;
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  v10 = v4;
  v11 = sub_1D5B85F00(&unk_1EDF16FF0, sub_1D6911C04);
  v9 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF16F68);
  result = sub_1D725AA8C();
  if (v7)
  {
    sub_1D5B63F14(&v6, v8);
    sub_1D6910F6C();
    swift_allocObject();
    return sub_1D725DB9C();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D690E3C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D725E74C();
  swift_allocObject();
  result = sub_1D725E73C();
  v4 = MEMORY[0x1E69D7F60];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D690E418(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EDF076C0);
  sub_1D725AACC();
  if (!v8)
  {
    return sub_1D69121DC(&v7, &qword_1EDF076B0, &qword_1EDF076C0);
  }

  sub_1D5B63F14(&v7, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v5 + 8))(a1, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1D690E510()
{
  sub_1D5B552B0(0, &qword_1EDF16F00, sub_1D691183C, sub_1D685234C, MEMORY[0x1E69D8498]);
  swift_allocObject();
  return sub_1D725EFCC();
}

uint64_t sub_1D690E58C(void *a1)
{
  sub_1D5BB6F50(0, qword_1EDF11258, type metadata accessor for FormatPluginData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B53EDC(0, qword_1EDF43358, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver);
  result = sub_1D725AABC();
  if (result)
  {
    v7 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = type metadata accessor for FormatPluginData();
    sub_1D725AACC();
    result = (*(*(v8 - 8) + 48))(v5, 1, v8);
    if (result != 1)
    {
      type metadata accessor for FormatBlueprintLayoutBuilder();
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      sub_1D5E2B7A8(v5, v9 + OBJC_IVAR____TtC8NewsFeed28FormatBlueprintLayoutBuilder_pluginData);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D690E73C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69110A8();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF16EA8);
  result = sub_1D725AA8C();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF16E40);
  result = sub_1D725AACC();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911B70();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725D9FC();
  result = sub_1D725AA7C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725A60C();
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D5B85F00(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
    sub_1D69119D4();
    v4 = objc_allocWithZone(v3);
    return sub_1D725E5AC();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D690EA44(uint64_t a1, void *a2)
{
  v3 = sub_1D725EB7C();
  MEMORY[0x1EEE9AC00](v3, v4);
  (*(v6 + 104))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D81C8]);
  sub_1D725E54C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D691192C();
  v8 = v7;
  v9 = sub_1D725AABC();
  v10 = v9;
  if (v9)
  {
    v9 = sub_1D5B85F00(&qword_1EDF16EF8, sub_1D691192C);
  }

  else
  {
    v8 = 0;
    v18 = 0;
    v19 = 0;
  }

  v17 = v10;
  v20 = v8;
  v21 = v9;
  sub_1D725E58C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D6911C04();
  v12 = v11;
  v13 = sub_1D725AABC();
  v14 = v13;
  if (v13)
  {
    v13 = sub_1D5B85F00(&unk_1EDF16FF0, sub_1D6911C04);
  }

  else
  {
    v12 = 0;
    v18 = 0;
    v19 = 0;
  }

  v17 = v14;
  v20 = v12;
  v21 = v13;
  return sub_1D725E56C();
}

uint64_t sub_1D690EC40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911B10();
  result = sub_1D725AA7C();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(type metadata accessor for FormatCollectionView()) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D690ECEC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatCollectionView();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911224();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911474();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69115D8();
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D69110A8();
    swift_allocObject();
    return sub_1D725E04C();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D690EE30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69110A8();
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D725E05C();

    sub_1D725EE8C();
    swift_allocObject();
    result = sub_1D725EE7C();
    v4 = MEMORY[0x1E69D8400];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D690EEE8()
{
  v0 = sub_1D725E1EC();
  MEMORY[0x1EEE9AC00](v0, v1);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7DB0]);
  return sub_1D725EE6C();
}

uint64_t sub_1D690EFB8(void *a1)
{
  sub_1D5BB6F50(0, qword_1EDF11258, type metadata accessor for FormatPluginData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v13 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725F17C();
  result = sub_1D725AA7C();
  if (result)
  {
    v7 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = type metadata accessor for FormatPluginData();
    sub_1D725AACC();
    result = (*(*(v8 - 8) + 48))(v5, 1, v8);
    if (result != 1)
    {
      v9 = v5[*(v8 + 44)];
      sub_1D6912180(v5);
      sub_1D6911B10();
      v11 = objc_allocWithZone(v10);
      v13[1] = v7;
      v12 = MEMORY[0x1E69E7D40];
      *&v11[*((*MEMORY[0x1E69E7D40] & *v11) + class metadata base offset for FormatCollectionViewLayout + 24)] = 0;
      *&v11[*((*v12 & *v11) + class metadata base offset for FormatCollectionViewLayout + 32)] = 0x3FD3333333333333;
      *&v11[*((*v12 & *v11) + class metadata base offset for FormatCollectionViewLayout + 40)] = 0;
      v11[*((*v12 & *v11) + class metadata base offset for FormatCollectionViewLayout + 16)] = v9;
      return sub_1D725EDCC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D690F25C()
{
  sub_1D725EB9C();
  sub_1D726322C();
  sub_1D725EE2C();
  sub_1D726322C();
  sub_1D725F3FC();
  sub_1D726322C();
  sub_1D725ED6C();
  sub_1D726322C();
  type metadata accessor for FormatMicaSectionDecorationItem();
  sub_1D5B85F00(&qword_1EDF1F970, type metadata accessor for FormatMicaSectionDecorationItem);
  return sub_1D726322C();
}

uint64_t sub_1D690F32C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatBlueprintViewCellProvider();
  sub_1D5B68374(a1, v8);
  v4 = swift_allocObject();
  sub_1D5B63F14(v8, v4 + 16);
  v5 = sub_1D725AA9C();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatBlueprintViewSupplementaryViewProvider();
  result = sub_1D725AABC();
  if (result)
  {
    *&v8[0] = v3;
    sub_1D6911224();
    v7 = objc_allocWithZone(v6);
    return sub_1D725F0CC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D690F50C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &unk_1EDF16E88);
  result = sub_1D725AA8C();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_1D725F45C();
    sub_1D725F0DC();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D690F5E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911B70();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725A60C();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1D5B85F00(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF16FB0);
  result = sub_1D725AACC();
  if (v5)
  {
    sub_1D6911474();
    v4 = objc_allocWithZone(v3);
    return sub_1D725EF0C();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D690F878(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D725D9FC();
  sub_1D725AA7C();
  sub_1D725EF1C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D6911C98();
  if (sub_1D725AABC())
  {
    sub_1D5B85F00(&qword_1EDF16ED8, sub_1D6911C98);
  }

  sub_1D725EF2C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D725E80C();
  sub_1D725AA7C();
  sub_1D725EEFC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D69119D4();
  sub_1D725AABC();
  return sub_1D725EEEC();
}

uint64_t sub_1D690FA00(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0);
  result = sub_1D725AABC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    result = sub_1D725AABC();
    if (result)
    {
      sub_1D69115D8();
      v4 = objc_allocWithZone(v3);
      return sub_1D725F23C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D690FB04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42E50);
  result = sub_1D725AACC();
  if (v3)
  {
    type metadata accessor for FormatBlueprintViewCellProvider();
    v2 = swift_allocObject();
    v2[3] = 0;
    swift_unknownObjectWeakInit();
    v2[4] = v3;
    v2[5] = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D690FBB0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FormatViewController();
  v4 = sub_1D725AABC();
  v3 = &protocol witness table for FormatViewController;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D690FC44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF425C0);
  result = sub_1D725AACC();
  if (v4)
  {
    type metadata accessor for FormatBlueprintViewSupplementaryViewProvider();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_1D5B63F14(&v3, v2 + 32);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D690FCF4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FormatViewController();
  v4 = sub_1D725AABC();
  v3 = &off_1F51DC370;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D690FD88(void *a1)
{
  v2 = sub_1D725F11C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D725F13C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D69120D0();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0);
  result = sub_1D725AABC();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x1E69D8198], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x1E69D8518], v2);
    sub_1D725F12C();
    v17[1] = v16;
    sub_1D6911B70();
    swift_allocObject();
    return sub_1D725EB2C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D690FFE4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EDF35298);
  sub_1D725AACC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EDF3A8D0);
  sub_1D725AACC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5A498(0, &qword_1EDF1AA98);
  v3 = sub_1D725AABC();
  sub_1D6911EF0();
  swift_allocObject();
  v6[0] = sub_1D6910AE0(v6, &v5, v3);
  sub_1D5B85F00(&qword_1EDF13778, sub_1D6911EF0);
  sub_1D725EB0C();
}

uint64_t sub_1D6910170(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69110A8();
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D6911C04();
    swift_allocObject();
    return sub_1D725E75C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D69101E8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
  result = sub_1D725AABC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D69110A8();
    result = sub_1D725AABC();
    if (result)
    {
      sub_1D6911DF0();
      v5 = v4;
      swift_allocObject();
      v6 = sub_1D725F51C();
      v7[3] = v5;
      v7[4] = sub_1D5B85F00(&qword_1EDF16E70, sub_1D6911DF0);
      v7[0] = v6;
      sub_1D725E76C();
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6910360(void *a1)
{
  sub_1D6911D84();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7270C10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6911C98();
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    v5 = sub_1D5B85F00(&unk_1EDF16EE0, sub_1D6911C98);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D725E89C();
    result = sub_1D725AA7C();
    if (result)
    {
      v6 = MEMORY[0x1E69D8038];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_1D725D9FC();
      swift_allocObject();
      return sub_1D725D9EC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D69104A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69110A8();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6087E88(0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725A60C();
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D5B85F00(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
    sub_1D6911C98();
    swift_allocObject();
    return sub_1D725F0AC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D6910680(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69110A8();
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D725E05C();

    sub_1D725E89C();
    swift_allocObject();
    return sub_1D725E88C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D691073C(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D69119D4();
  v7 = sub_1D725AABC();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D5B85F00(a3, sub_1D69119D4);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_1D69107F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69119D4();
  v4 = v3;
  result = sub_1D725AABC();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_1D5B85F00(&unk_1EDF17008, sub_1D69119D4);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6910898()
{
  v0 = sub_1D725E7EC();
  MEMORY[0x1EEE9AC00](v0, v1);
  v2 = MEMORY[0x1E69D7F80];
  sub_1D5BB6F50(0, &qword_1EDF02368, MEMORY[0x1E69D7F80], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D7273AE0;
  sub_1D725E7DC();
  sub_1D5B85F00(&unk_1EDF16FD0, MEMORY[0x1E69D7F80]);
  sub_1D5BB6F50(0, &qword_1EDF05308, v2, MEMORY[0x1E69E62F8]);
  sub_1D5BB82E8(&qword_1EDF05300, &qword_1EDF05308, v2);
  sub_1D7263B6C();
  v3 = objc_allocWithZone(sub_1D725E80C());
  return sub_1D725E7FC();
}

uint64_t sub_1D6910A78@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FormatAutoscrollPointFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F51A5E00;
  *a1 = result;
  return result;
}

uint64_t sub_1D6910AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 56) = 0;
  v8 = (v3 + 56);
  *(v3 + 64) = 0;
  sub_1D6911FE8(a1, v3 + 16, &qword_1EDF35290, &qword_1EDF35298);
  sub_1D6911FE8(a2, &v13, &unk_1EDF3A8C0, &qword_1EDF3A8D0);
  if (!v14)
  {
    sub_1D69121DC(&v13, &unk_1EDF3A8C0, &qword_1EDF3A8D0);
    swift_beginAccess();
    *v8 = 0;

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D69121DC(a2, &unk_1EDF3A8C0, &qword_1EDF3A8D0);
    sub_1D69121DC(a1, &qword_1EDF35290, &qword_1EDF35298);
    v11 = 0;
    goto LABEL_6;
  }

  sub_1D5B63F14(&v13, v15);
  sub_1D5B68374(v15, &v13);
  v9 = swift_allocObject();
  sub_1D5B63F14(&v13, v9 + 16);
  sub_1D6912068();
  swift_allocObject();
  v10 = sub_1D725CEDC();
  __swift_destroy_boxed_opaque_existential_1(v15);
  swift_beginAccess();
  *v8 = v10;

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(swift_allocObject() + 16) = a3;
  sub_1D5BB6F50(0, &qword_1EDF3B720, sub_1D5B5D6A0, MEMORY[0x1E69D76C8]);
  swift_allocObject();
  v11 = sub_1D725CEDC();
  sub_1D69121DC(a2, &unk_1EDF3A8C0, &qword_1EDF3A8D0);
  sub_1D69121DC(a1, &qword_1EDF35290, &qword_1EDF35298);
LABEL_6:
  swift_beginAccess();
  *(v4 + 64) = v11;

  return v4;
}

uint64_t sub_1D6910DA8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v1 = off_1F51DC350;
        type metadata accessor for FormatViewController();
        v1();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1D6910E80()
{
  if (!qword_1EDF171F8)
  {
    sub_1D6087E88(255);
    sub_1D6910F6C();
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88);
    sub_1D5B85F00(&qword_1EDF170E0, sub_1D6910F6C);
    v0 = sub_1D725D8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF171F8);
    }
  }
}

void sub_1D6910F6C()
{
  if (!qword_1EDF170D0)
  {
    type metadata accessor for FormatSectionDescriptor();
    type metadata accessor for FormatModel();
    sub_1D69110A8();
    sub_1D5B85F00(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor);
    sub_1D5B85F00(&qword_1EDF128E0, type metadata accessor for FormatModel);
    sub_1D5B85F00(&qword_1EDF17068, sub_1D69110A8);
    v0 = sub_1D725DBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF170D0);
    }
  }
}

void sub_1D69110A8()
{
  if (!qword_1EDF17058)
  {
    sub_1D5B5A498(255, &qword_1EDF04540);
    sub_1D6911224();
    sub_1D6911474();
    sub_1D69115D8();
    type metadata accessor for FormatViewController();
    sub_1D5B85F00(&qword_1EDF16EC0, sub_1D6911224);
    sub_1D5B85F00(&unk_1EDF16F28, sub_1D6911474);
    sub_1D5B85F00(&qword_1EDF16EA0, sub_1D69115D8);
    v0 = sub_1D725E06C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17058);
    }
  }
}

void sub_1D6911224()
{
  if (!qword_1EDF16EB8)
  {
    sub_1D6087E88(255);
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    type metadata accessor for FormatBlueprintViewCellProvider();
    type metadata accessor for FormatBlueprintViewSupplementaryViewProvider();
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88);
    sub_1D69113D8();
    sub_1D5B85F00(&qword_1EDF09560, type metadata accessor for FormatBlueprintViewCellProvider);
    sub_1D5B85F00(&qword_1EDF15ED8, type metadata accessor for FormatBlueprintViewSupplementaryViewProvider);
    sub_1D685234C();
    v0 = sub_1D725F0EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16EB8);
    }
  }
}

unint64_t sub_1D69113D8()
{
  result = qword_1EDF17038;
  if (!qword_1EDF17038)
  {
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17038);
  }

  return result;
}

void sub_1D6911474()
{
  if (!qword_1EDF16F18)
  {
    sub_1D6087E88(255);
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    type metadata accessor for FormatViewController();
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88);
    sub_1D69113D8();
    sub_1D5B85F00(&qword_1EDF0EB00, type metadata accessor for FormatViewController);
    sub_1D685234C();
    v0 = sub_1D725EF3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16F18);
    }
  }
}

void sub_1D69115D8()
{
  if (!qword_1EDF16E98)
  {
    sub_1D6087E88(255);
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88);
    sub_1D69113D8();
    v0 = sub_1D725F24C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16E98);
    }
  }
}

void sub_1D69116D8()
{
  if (!qword_1EDF16E78)
  {
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    type metadata accessor for FormatBlueprintLayoutBuilder();
    sub_1D5B552B0(255, &qword_1EDF16F00, sub_1D691183C, sub_1D685234C, MEMORY[0x1E69D8498]);
    sub_1D69113D8();
    sub_1D5B85F00(&unk_1EDF0AA60, type metadata accessor for FormatBlueprintLayoutBuilder);
    sub_1D6911890();
    v0 = sub_1D725F4FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16E78);
    }
  }
}

unint64_t sub_1D691183C()
{
  result = qword_1EDF0A468;
  if (!qword_1EDF0A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A468);
  }

  return result;
}

unint64_t sub_1D6911890()
{
  result = qword_1EDF16F08;
  if (!qword_1EDF16F08)
  {
    sub_1D5B552B0(255, &qword_1EDF16F00, sub_1D691183C, sub_1D685234C, MEMORY[0x1E69D8498]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16F08);
  }

  return result;
}

void sub_1D691192C()
{
  if (!qword_1EDF16EF0)
  {
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    sub_1D69113D8();
    v0 = sub_1D725EFEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16EF0);
    }
  }
}

void sub_1D69119D4()
{
  if (!qword_1EDF17000)
  {
    sub_1D6087E88(255);
    sub_1D69110A8();
    type metadata accessor for FormatViewController();
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88);
    sub_1D5B85F00(&qword_1EDF17068, sub_1D69110A8);
    sub_1D5B85F00(&qword_1EDF0EB00, type metadata accessor for FormatViewController);
    v0 = sub_1D725E5CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17000);
    }
  }
}

void sub_1D6911B10()
{
  if (!qword_1EDF0B750[0])
  {
    sub_1D725F17C();
    v0 = type metadata accessor for FormatCollectionViewLayout();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF0B750);
    }
  }
}

void sub_1D6911B70()
{
  if (!qword_1EDF16F98)
  {
    sub_1D6087E88(255);
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88);
    v0 = sub_1D725EB3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16F98);
    }
  }
}

void sub_1D6911C04()
{
  if (!qword_1EDF16FE0)
  {
    sub_1D69110A8();
    sub_1D5B85F00(&qword_1EDF17068, sub_1D69110A8);
    v0 = sub_1D725E77C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16FE0);
    }
  }
}

void sub_1D6911C98()
{
  if (!qword_1EDF16EC8)
  {
    sub_1D69110A8();
    sub_1D6087E88(255);
    sub_1D5B85F00(&qword_1EDF17068, sub_1D69110A8);
    sub_1D5B85F00(&qword_1EDF171F0, sub_1D6087E88);
    v0 = sub_1D725F0BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16EC8);
    }
  }
}

void sub_1D6911D84()
{
  if (!qword_1EDF02370)
  {
    sub_1D5B483C4(255, &qword_1EDF17048);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02370);
    }
  }
}

void sub_1D6911DF0()
{
  if (!qword_1EDF16E68)
  {
    sub_1D5B552B0(255, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
    sub_1D69110A8();
    sub_1D69113D8();
    sub_1D5B85F00(&qword_1EDF17068, sub_1D69110A8);
    v0 = sub_1D725F52C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16E68);
    }
  }
}

void sub_1D6911EF0()
{
  if (!qword_1EDF13770)
  {
    sub_1D6087E88(255);
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88);
    v0 = type metadata accessor for FeedItemImpressionProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF13770);
    }
  }
}

void sub_1D6911F8C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5B483C4(255, a3);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6911FE8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1D6911F8C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6912068()
{
  if (!qword_1EDF3B710)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6B0);
    v0 = sub_1D725CEFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B710);
    }
  }
}

void sub_1D69120D0()
{
  if (!qword_1EDF16FA0)
  {
    sub_1D6087E88(255);
    sub_1D5B85F00(&unk_1EDF171E0, sub_1D6087E88);
    v0 = sub_1D725EB1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16FA0);
    }
  }
}

uint64_t sub_1D6912180(uint64_t a1)
{
  v2 = type metadata accessor for FormatPluginData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D69121DC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D6911F8C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6912258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for FormatSectionDescriptor();
    v8[1] = type metadata accessor for FormatModel();
    v8[2] = sub_1D5B85F00(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor);
    v8[3] = sub_1D5B85F00(&qword_1EDF128E0, type metadata accessor for FormatModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D691234C()
{
  if (!qword_1EDF11320[0])
  {
    type metadata accessor for FormatBlueprintModifierFactory();
    sub_1D5B85F00(qword_1EDF09E58, type metadata accessor for FormatBlueprintModifierFactory);
    v0 = type metadata accessor for FormatInteractor();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF11320);
    }
  }
}

void *sub_1D69123E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16[3] = type metadata accessor for FormatRouter();
  v16[4] = &off_1F5120C08;
  v16[0] = a3;
  a6[3] = 0;
  swift_unknownObjectWeakInit();
  a6[5] = 0;
  swift_unknownObjectWeakInit();
  a6[6] = a1;
  a6[7] = a2;
  sub_1D5B68374(v16, (a6 + 8));
  a6[13] = a4;
  a6[14] = a5;
  ObjectType = swift_getObjectType();
  v13 = *(a2 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v13(v14, &off_1F51B7A98, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return a6;
}

void sub_1D69124E0()
{
  if (!qword_1EDF17F28)
  {
    sub_1D5E296DC();
    v0 = sub_1D725AA3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17F28);
    }
  }
}

uint64_t type metadata accessor for DebugFormatEditorWorkspaceGroup()
{
  result = qword_1EC88E0E8;
  if (!qword_1EC88E0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D69125BC()
{
  result = type metadata accessor for FormatWorkspaceGroup();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DebugFormatBindingResult();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DebugFormatPackageInventory();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D6912660(uint64_t a1)
{
  v1 = *(a1 + 200);
  type metadata accessor for DebugFormatEditorWorkspaceGroup();
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    v5 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v6 = FormatPackageInventory.merging(with:)(v5);

    return v6;
  }

  v2 = sub_1D7263BFC();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = MEMORY[0x1E69E7CC0];

  result = sub_1D7263ECC();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v4, v1);
      }

      else
      {
      }

      ++v4;

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v2 != v4);
    v5 = v7;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D69127CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v74 = a2;
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v14, v15).n128_u64[0];
  v18 = &v73 - v17;
  v19 = *a3;
  v20 = a3[1];
  v21 = a3[2];
  v22 = a3[3];
  v23 = a3[4];
  v24 = a3[5];
  if (!*(a3 + 48))
  {
    v73 = a3[5];
    v74 = v23;
    v28 = v19;
    v29 = [*(a1 + 56) publishDate];
    if (v29)
    {
      v30 = v29;
      sub_1D72588BC();

      (*(v6 + 56))(v18, 0, 1, v5);
    }

    else
    {
      (*(v6 + 56))(v18, 1, 1, v5);
    }

    sub_1D5B76E3C(v18, v13);
    if ((*(v6 + 48))(v13, 1, v5) != 1)
    {
      (*(v6 + 32))(v9, v13, v5);
      v79 = v28;
      v80 = v20;
      v81 = v21;
      v82 = v22;
      v83 = v74;
      v84 = v73;
      v33 = FormatDateFormat.format(_:)(v9);
      (*(v6 + 8))(v9, v5);
      sub_1D69156F0(v18, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B7B268);
      return v33;
    }

    sub_1D69156F0(v18, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B7B268);
    return 0;
  }

  if (*(a3 + 48) != 1)
  {
    if (!(v21 | v20 | v19 | v22 | v23 | v24))
    {
      v33 = *(a1 + 40);

      return v33;
    }

    v31 = v21 | v20 | v22 | v23 | v24;
    if (v19 == 1 && !v31)
    {
      v32 = [*(a1 + 56) title];
      goto LABEL_25;
    }

    if (v19 == 2 && !v31)
    {
      v32 = [*(a1 + 56) subtitle];
      goto LABEL_25;
    }

    if (v19 == 3 && !v31)
    {
      v49 = [*(a1 + 56) authors];
      if (v49)
      {
        v50 = v49;
        v51 = sub_1D726267C();

        v33 = Array<A>.localizedOxfordCommaSeparatedList.getter(v51);
        v53 = v52;

        if (v53)
        {
          return v33;
        }
      }

      return 0;
    }

    if (v19 != 4 || v31)
    {
      if (v19 != 5 || v31)
      {
        if (v19 != 6 || v31)
        {
          if (v19 != 7 || v31)
          {
            if (v19 != 8 || v31)
            {
              if (v19 != 9 || v31)
              {
                if (v19 != 10 || v31)
                {
                  if (v19 != 11 || v31)
                  {
                    if (v19 == 12 && !v31)
                    {
                      sub_1D5F2DEAC(a1, &v79);
                      v67 = v84;
                      v68 = v85;
                      v69 = v86;

                      sub_1D5F2DF58(&v79);
                      v79 = 0x656C7A7A7570;
                      v80 = 0xE600000000000000;
                      v81 = v67;
                      v82 = v68;
                      LOBYTE(v83) = v69;
                      v84 = MEMORY[0x1E69E7CD0];
                      sub_1D72578EC();
                      swift_allocObject();
                      sub_1D72578DC();
                      sub_1D69155E8();
                      sub_1D6915698();
                      v33 = sub_1D725D06C();

                      return v33;
                    }

                    if (!v74)
                    {
                      return 0;
                    }

                    v70 = a1;
                    swift_getObjectType();
                    v71 = qword_1EDF16DC0;

                    if (v71 != -1)
                    {
                      swift_once();
                    }

                    sub_1D5F2DEAC(v70, &v79);
                    sub_1D5B805A4();
                    sub_1D725D96C();
                    sub_1D69156F0(&v79, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D6915C38);
                    if (v78 == 255)
                    {
                      goto LABEL_86;
                    }

                    v72 = v77;
                    if (v78 >= 2u)
                    {
                      v72 = 0;
                    }

                    v79 = v72;
                    v33 = sub_1D72644BC();

                    return v33;
                  }

                  if (*(a1 + 72) <= 1u)
                  {
                    if (*(a1 + 72))
                    {
                      v66 = 1701147238;
                    }

                    else
                    {
                      v66 = 1684627824;
                    }

                    return v66 | 0x6563634100000000;
                  }

                  if (*(a1 + 72) == 2)
                  {
                    return 0x7373656363416F6ELL;
                  }

                  return 0;
                }

                v32 = [*(a1 + 56) teaserAnswer];
              }

              else
              {
                v32 = [*(a1 + 56) teaserNumber];
              }
            }

            else
            {
              v32 = [*(a1 + 56) teaserDirection];
            }
          }

          else
          {
            v32 = [*(a1 + 56) teaserInfo];
          }
        }

        else
        {
          v32 = [*(a1 + 56) teaserClue];
        }
      }

      else
      {
        v32 = [*(a1 + 56) difficultyDescription];
      }
    }

    else
    {
      v32 = [*(a1 + 56) puzzleDescription];
    }

LABEL_25:
    v35 = v32;
    if (v35)
    {
      v36 = v35;
      v33 = sub_1D726207C();

      return v33;
    }

    return 0;
  }

  if (!v74)
  {
    return 0;
  }

  v25 = *a3;
  swift_getObjectType();
  v26 = qword_1EDF16D98;

  if (v26 != -1)
  {
    swift_once();
  }

  sub_1D5F2DEAC(a1, &v79);
  sub_1D5B840B4();
  sub_1D725D96C();
  sub_1D69156F0(&v79, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D6915C38);
  if (v25)
  {
    if (v78 <= 1u)
    {
      v27 = *&v77;
LABEL_28:
      if (qword_1EC87DD00 != -1)
      {
        swift_once();
      }

      v37 = qword_1EC899A38;
      v38 = [v37 stringFromTimeInterval_];
      if (v38)
      {
        v39 = v38;
        v40 = sub_1D726207C();
        v42 = v41;
      }

      else
      {
        v40 = 0;
        v42 = 0xE000000000000000;
      }

      v79 = v40;
      v80 = v42;
      v77 = 44;
      v78 = 0xE100000000000000;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_1D5BF4D9C();
      v55 = MEMORY[0x1E69E6158];
      v33 = sub_1D7263A6C();
      v57 = v56;

      v79 = v33;
      v80 = v57;
      v77 = 32;
      v78 = 0xE100000000000000;
      v58 = sub_1D72639FC();
      v59 = *(v58 + 16);
      if (v59 >= 2)
      {
        v59 = 2;
      }

      v79 = v58;
      v80 = v58 + 32;
      v81 = 0;
      v82 = (2 * v59) | 1;
      sub_1D6915C38(0, &unk_1EDF1A5F0, v55, MEMORY[0x1E69E6948]);
      sub_1D67B6CDC();
      sub_1D7261F3C();

      return v33;
    }

    v27 = 0.0;
    if (v78 == 2)
    {
      goto LABEL_28;
    }

    goto LABEL_86;
  }

  if (v78 > 1u)
  {
    v34 = 0.0;
    if (v78 != 2)
    {
LABEL_86:

      return 0;
    }
  }

  else
  {
    v34 = *&v77;
  }

  if (qword_1EDF0AEE8 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDF0AEF0;
  v44 = [v43 stringFromTimeInterval_];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1D726207C();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0xE000000000000000;
  }

  v79 = v46;
  v80 = v48;
  v77 = 44;
  v78 = 0xE100000000000000;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_1D5BF4D9C();
  v60 = MEMORY[0x1E69E6158];
  v61 = sub_1D7263A6C();
  v63 = v62;

  v79 = v61;
  v80 = v63;
  v77 = 32;
  v78 = 0xE100000000000000;
  v64 = sub_1D72639FC();
  v65 = *(v64 + 16);
  if (v65 >= 2)
  {
    v65 = 2;
  }

  v79 = v64;
  v80 = v64 + 32;
  v81 = 0;
  v82 = (2 * v65) | 1;
  sub_1D6915C38(0, &unk_1EDF1A5F0, v60, MEMORY[0x1E69E6948]);
  sub_1D67B6CDC();
  v33 = sub_1D7261F3C();

  return v33;
}

uint64_t FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v78 = a4;
  v77 = a3;
  v79 = a2;
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v15, v16).n128_u64[0];
  v19 = &v76 - v18;
  v20 = *v4;
  v21 = v4[1];
  v23 = v4[2];
  v22 = v4[3];
  v24 = v4[4];
  v25 = v4[5];
  if (!*(v4 + 48))
  {
    v78 = v4[5];
    v79 = v24;
    v29 = v20;
    v30 = [*(a1 + 56) publishDate];
    if (v30)
    {
      v31 = v30;
      sub_1D72588BC();

      (*(v7 + 56))(v19, 0, 1, v6);
    }

    else
    {
      (*(v7 + 56))(v19, 1, 1, v6);
    }

    sub_1D5B76E3C(v19, v14);
    if ((*(v7 + 48))(v14, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v14, v6);
      v84 = v29;
      v85 = v21;
      v86 = v23;
      v87 = v22;
      v88 = v79;
      v89 = v78;
      v34 = FormatDateFormat.format(_:)(v10);
      (*(v7 + 8))(v10, v6);
      sub_1D69156F0(v19, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B7B268);
      return v34;
    }

    sub_1D69156F0(v19, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B7B268);
    return 0;
  }

  if (*(v4 + 48) != 1)
  {
    if (!(v23 | v21 | v20 | v22 | v24 | v25))
    {
      v34 = *(a1 + 40);

      return v34;
    }

    v32 = v23 | v21 | v22 | v24 | v25;
    if (v20 == 1 && !v32)
    {
      v33 = [*(a1 + 56) title];
      goto LABEL_25;
    }

    if (v20 == 2 && !v32)
    {
      v33 = [*(a1 + 56) subtitle];
      goto LABEL_25;
    }

    if (v20 == 3 && !v32)
    {
      v50 = [*(a1 + 56) authors];
      if (v50)
      {
        v51 = v50;
        v52 = sub_1D726267C();

        v34 = Array<A>.localizedOxfordCommaSeparatedList.getter(v52);
        v54 = v53;

        if (v54)
        {
          return v34;
        }
      }

      return 0;
    }

    if (v20 != 4 || v32)
    {
      if (v20 != 5 || v32)
      {
        if (v20 != 6 || v32)
        {
          if (v20 != 7 || v32)
          {
            if (v20 != 8 || v32)
            {
              if (v20 != 9 || v32)
              {
                if (v20 != 10 || v32)
                {
                  if (v20 != 11 || v32)
                  {
                    if (v20 != 12 || v32)
                    {
                      if (!v79)
                      {
                        return 0;
                      }

                      v73 = a1;
                      swift_getObjectType();
                      v74 = qword_1EDF16DC0;

                      if (v74 != -1)
                      {
                        swift_once();
                      }

                      sub_1D5F2DEAC(v73, &v84);
                      sub_1D5B805A4();
                      sub_1D725D96C();
                      sub_1D69156F0(&v84, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D6915C38);
                      if (v83 == 255)
                      {
                        goto LABEL_86;
                      }

                      if (v83 >= 2u)
                      {
                        v75 = 0;
                      }

                      else
                      {
                        v75 = v82;
                      }

                      v84 = v75;
                      v34 = sub_1D72644BC();
                    }

                    else
                    {
                      sub_1D5F2DEAC(a1, &v84);
                      v68 = v89;
                      v69 = v90;
                      v70 = v91;

                      v71 = sub_1D5F2DF58(&v84);
                      v72 = v77(v71);
                      v84 = 0x656C7A7A7570;
                      v85 = 0xE600000000000000;
                      v86 = v68;
                      v87 = v69;
                      LOBYTE(v88) = v70;
                      v89 = v72;
                      sub_1D72578EC();
                      swift_allocObject();
                      sub_1D72578DC();
                      sub_1D69155E8();
                      sub_1D6915698();
                      v34 = sub_1D725D06C();
                    }

                    return v34;
                  }

                  if (*(a1 + 72) <= 1u)
                  {
                    if (*(a1 + 72))
                    {
                      v67 = 1701147238;
                    }

                    else
                    {
                      v67 = 1684627824;
                    }

                    return v67 | 0x6563634100000000;
                  }

                  if (*(a1 + 72) == 2)
                  {
                    return 0x7373656363416F6ELL;
                  }

                  return 0;
                }

                v33 = [*(a1 + 56) teaserAnswer];
              }

              else
              {
                v33 = [*(a1 + 56) teaserNumber];
              }
            }

            else
            {
              v33 = [*(a1 + 56) teaserDirection];
            }
          }

          else
          {
            v33 = [*(a1 + 56) teaserInfo];
          }
        }

        else
        {
          v33 = [*(a1 + 56) teaserClue];
        }
      }

      else
      {
        v33 = [*(a1 + 56) difficultyDescription];
      }
    }

    else
    {
      v33 = [*(a1 + 56) puzzleDescription];
    }

LABEL_25:
    v36 = v33;
    if (v36)
    {
      v37 = v36;
      v34 = sub_1D726207C();

      return v34;
    }

    return 0;
  }

  if (!v79)
  {
    return 0;
  }

  v26 = *v4;
  swift_getObjectType();
  v27 = qword_1EDF16D98;

  if (v27 != -1)
  {
    swift_once();
  }

  sub_1D5F2DEAC(a1, &v84);
  sub_1D5B840B4();
  sub_1D725D96C();
  sub_1D69156F0(&v84, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D6915C38);
  if (v26)
  {
    if (v83 <= 1u)
    {
      v28 = *&v82;
LABEL_28:
      if (qword_1EC87DD00 != -1)
      {
        swift_once();
      }

      v38 = qword_1EC899A38;
      v39 = [v38 stringFromTimeInterval_];
      if (v39)
      {
        v40 = v39;
        v41 = sub_1D726207C();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0xE000000000000000;
      }

      v84 = v41;
      v85 = v43;
      v82 = 44;
      v83 = 0xE100000000000000;
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_1D5BF4D9C();
      v56 = MEMORY[0x1E69E6158];
      v34 = sub_1D7263A6C();
      v58 = v57;

      v84 = v34;
      v85 = v58;
      v82 = 32;
      v83 = 0xE100000000000000;
      v59 = sub_1D72639FC();
      v60 = *(v59 + 16);
      if (v60 >= 2)
      {
        v60 = 2;
      }

      v84 = v59;
      v85 = v59 + 32;
      v86 = 0;
      v87 = (2 * v60) | 1;
      sub_1D6915C38(0, &unk_1EDF1A5F0, v56, MEMORY[0x1E69E6948]);
      sub_1D67B6CDC();
      sub_1D7261F3C();

      return v34;
    }

    v28 = 0.0;
    if (v83 == 2)
    {
      goto LABEL_28;
    }

    goto LABEL_86;
  }

  if (v83 > 1u)
  {
    v35 = 0.0;
    if (v83 == 2)
    {
      goto LABEL_33;
    }

LABEL_86:

    return 0;
  }

  v35 = *&v82;
LABEL_33:
  if (qword_1EDF0AEE8 != -1)
  {
    swift_once();
  }

  v44 = qword_1EDF0AEF0;
  v45 = [v44 stringFromTimeInterval_];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1D726207C();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

  v84 = v47;
  v85 = v49;
  v82 = 44;
  v83 = 0xE100000000000000;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_1D5BF4D9C();
  v61 = MEMORY[0x1E69E6158];
  v62 = sub_1D7263A6C();
  v64 = v63;

  v84 = v62;
  v85 = v64;
  v82 = 32;
  v83 = 0xE100000000000000;
  v65 = sub_1D72639FC();
  v66 = *(v65 + 16);
  if (v66 >= 2)
  {
    v66 = 2;
  }

  v84 = v65;
  v85 = v65 + 32;
  v86 = 0;
  v87 = (2 * v66) | 1;
  sub_1D6915C38(0, &unk_1EDF1A5F0, v61, MEMORY[0x1E69E6948]);
  sub_1D67B6CDC();
  v34 = sub_1D7261F3C();

  return v34;
}

uint64_t sub_1D6914320(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t FormatPuzzleBinding.Text.CodingType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  v4 = 16;
  if (v2 < 0x10)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t FormatPuzzleBinding.Text.CodingType.rawValue.getter()
{
  result = 0x696669746E656469;
  switch(*v0)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x614E726F68747561;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0x6C75636966666964;
      break;
    case 6:
      result = 0x446873696C627570;
      break;
    case 7:
      result = 0x6C43726573616574;
      break;
    case 8:
      result = 0x6E49726573616574;
      break;
    case 9:
      result = 0x6944726573616574;
      break;
    case 0xA:
      result = 0x754E726573616574;
      break;
    case 0xB:
      result = 0x6E41726573616574;
      break;
    case 0xC:
      result = 0x6172754479616C70;
      break;
    case 0xD:
      result = 0x654C737365636361;
      break;
    case 0xE:
      result = 0x6974616D6F747561;
      break;
    case 0xF:
      result = 0x65726F6373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D69145A4()
{
  v0 = FormatPuzzleBinding.Text.CodingType.rawValue.getter();
  v2 = v1;
  if (v0 == FormatPuzzleBinding.Text.CodingType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6914640()
{
  sub_1D7264A0C();
  FormatPuzzleBinding.Text.CodingType.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69146A8()
{
  FormatPuzzleBinding.Text.CodingType.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D691470C()
{
  sub_1D7264A0C();
  FormatPuzzleBinding.Text.CodingType.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D691477C@<X0>(uint64_t *a1@<X8>)
{
  result = FormatPuzzleBinding.Text.CodingType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6914898@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_1D5B7B268(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v6 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  switch(v5)
  {
    case 1:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v54 = [v119 title];
      if (v54)
      {
        v55 = v54;
        v56 = sub_1D726207C();
        v58 = v57;
      }

      else
      {
        v56 = 0;
        v58 = 0xE000000000000000;
      }

      v97 = HIBYTE(v58) & 0xF;
      if ((v58 & 0x2000000000000000) == 0)
      {
        v97 = v56 & 0xFFFFFFFFFFFFLL;
      }

      if (v97)
      {
        v98 = MEMORY[0x1E69E6158];
      }

      else
      {

        v56 = 0;
        v58 = 0;
        v98 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v56;
      *&v111 = v58;
      *&v112 = v98;
      v83 = 0x656C746954;
      v92 = (v9 + v8);
      v82 = 0xE500000000000000;
      goto LABEL_126;
    case 2:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v35 = [v119 subtitle];
      if (v35)
      {
        v36 = v35;
        v37 = sub_1D726207C();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      v93 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v93 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v93)
      {
        v94 = MEMORY[0x1E69E6158];
      }

      else
      {

        v37 = 0;
        v39 = 0;
        v94 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v37;
      *&v111 = v39;
      *&v112 = v94;
      v83 = 0x656C746974627553;
      v92 = (v9 + v8);
      v82 = 0xE800000000000000;
      goto LABEL_126;
    case 3:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v41 = [v119 authors];
      if (!v41 || (v42 = v41, v43 = sub_1D726267C(), v42, v44 = Array<A>.localizedOxfordCommaSeparatedList.getter(v43), v46 = v45, , !v46))
      {

        v44 = 0;
        v46 = 0xE000000000000000;
      }

      v47 = HIBYTE(v46) & 0xF;
      if ((v46 & 0x2000000000000000) == 0)
      {
        v47 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (v47)
      {
        v48 = MEMORY[0x1E69E6158];
      }

      else
      {

        v44 = 0;
        v46 = 0;
        v48 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v44;
      *&v111 = v46;
      *&v112 = v48;
      v83 = 0x4E20726F68747541;
      v89 = 6647137;
      goto LABEL_124;
    case 4:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v22 = [v119 puzzleDescription];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1D726207C();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v87 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v87 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v87)
      {
        v88 = MEMORY[0x1E69E6158];
      }

      else
      {

        v24 = 0;
        v26 = 0;
        v88 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v24;
      *&v111 = v26;
      *&v112 = v88;
      v83 = 0x7470697263736544;
      v89 = 7237481;
      goto LABEL_124;
    case 5:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v59 = [v119 difficultyDescription];
      if (v59)
      {
        v60 = v59;
        v61 = sub_1D726207C();
        v63 = v62;
      }

      else
      {
        v61 = 0;
        v63 = 0xE000000000000000;
      }

      v99 = HIBYTE(v63) & 0xF;
      if ((v63 & 0x2000000000000000) == 0)
      {
        v99 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (v99)
      {
        v100 = MEMORY[0x1E69E6158];
      }

      else
      {

        v61 = 0;
        v63 = 0;
        v100 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v61;
      *&v111 = v63;
      *&v112 = v100;
      v83 = 0x6C75636966666944;
      v92 = (v9 + v8);
      v82 = 0xEA00000000007974;
      goto LABEL_126;
    case 6:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7270C10;
      v65 = (v9 + v8);
      sub_1D5F2DEAC(a2, &v115);
      v110 = 0;
      *&v111 = 0;
      *(&v111 + 1) = 1;
      v112 = 0uLL;
      v113 = 0;
      v114 = 0;
      v66 = sub_1D69127CC(&v115, 0, &v110);
      v68 = HIBYTE(v67) & 0xF;
      if ((v67 & 0x2000000000000000) == 0)
      {
        v68 = v66 & 0xFFFFFFFFFFFFLL;
      }

      if (v68)
      {
        v69 = MEMORY[0x1E69E6158];
      }

      else
      {

        v66 = 0;
        v67 = 0;
        v69 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v66;
      *&v111 = v67;
      *&v112 = v69;
      sub_1D711B30C(0xD000000000000014, 0x80000001D73DBDB0, &v110, v65);
      sub_1D5F2DF58(&v115);
      sub_1D5F2DEAC(a2, &v115);
      v110 = 0;
      *&v111 = 0;
      *(&v111 + 1) = 2;
      v112 = 0uLL;
      v113 = 0;
      v114 = 0;
      v101 = sub_1D69127CC(&v115, 0, &v110);
      v103 = HIBYTE(v102) & 0xF;
      if ((v102 & 0x2000000000000000) == 0)
      {
        v103 = v101 & 0xFFFFFFFFFFFFLL;
      }

      if (v103)
      {
        v104 = MEMORY[0x1E69E6158];
      }

      else
      {

        v101 = 0;
        v102 = 0;
        v104 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v101;
      *&v111 = v102;
      *&v112 = v104;
      v92 = &v65[v7];
      v83 = 0xD000000000000012;
      v82 = 0x80000001D73DBDD0;
      goto LABEL_126;
    case 7:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v49 = [v119 teaserClue];
      if (v49)
      {
        v50 = v49;
        v51 = sub_1D726207C();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0xE000000000000000;
      }

      v95 = HIBYTE(v53) & 0xF;
      if ((v53 & 0x2000000000000000) == 0)
      {
        v95 = v51 & 0xFFFFFFFFFFFFLL;
      }

      if (v95)
      {
        v96 = MEMORY[0x1E69E6158];
      }

      else
      {

        v51 = 0;
        v53 = 0;
        v96 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v51;
      *&v111 = v53;
      *&v112 = v96;
      v83 = 0x4320726573616554;
      v92 = (v9 + v8);
      v82 = 0xEB0000000065756CLL;
      goto LABEL_126;
    case 8:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v75 = [v119 teaserInfo];
      if (v75)
      {
        v76 = v75;
        v77 = sub_1D726207C();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0xE000000000000000;
      }

      v107 = HIBYTE(v79) & 0xF;
      if ((v79 & 0x2000000000000000) == 0)
      {
        v107 = v77 & 0xFFFFFFFFFFFFLL;
      }

      if (v107)
      {
        v108 = MEMORY[0x1E69E6158];
      }

      else
      {

        v77 = 0;
        v79 = 0;
        v108 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v77;
      *&v111 = v79;
      *&v112 = v108;
      v83 = 0x4920726573616554;
      v89 = 7300718;
LABEL_124:
      v82 = v89 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      goto LABEL_125;
    case 9:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v30 = [v119 teaserDirection];
      if (v30)
      {
        v31 = v30;
        v32 = sub_1D726207C();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0xE000000000000000;
      }

      v90 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v90 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v90)
      {
        v91 = MEMORY[0x1E69E6158];
      }

      else
      {

        v32 = 0;
        v34 = 0;
        v91 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v32;
      *&v111 = v34;
      *&v112 = v91;
      v92 = (v9 + v8);
      v82 = 0x80000001D73DBD90;
      v83 = 0xD000000000000010;
      goto LABEL_126;
    case 10:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v70 = [v119 teaserNumber];
      if (v70)
      {
        v71 = v70;
        v72 = sub_1D726207C();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0xE000000000000000;
      }

      v105 = HIBYTE(v74) & 0xF;
      if ((v74 & 0x2000000000000000) == 0)
      {
        v105 = v72 & 0xFFFFFFFFFFFFLL;
      }

      if (v105)
      {
        v106 = MEMORY[0x1E69E6158];
      }

      else
      {

        v72 = 0;
        v74 = 0;
        v106 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v72;
      *&v111 = v74;
      *&v112 = v106;
      v83 = 0x4E20726573616554;
      v86 = 1700949365;
      goto LABEL_116;
    case 11:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v17 = [v119 teaserAnswer];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1D726207C();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      v84 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v84 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v84)
      {
        v85 = MEMORY[0x1E69E6158];
      }

      else
      {

        v19 = 0;
        v21 = 0;
        v85 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v19;
      *&v111 = v21;
      *&v112 = v85;
      v83 = 0x4120726573616554;
      v86 = 1702327150;
LABEL_116:
      v82 = v86 | 0xED00007200000000;
      goto LABEL_125;
    case 12:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7270C10;
      v115 = 0u;
      v116 = 0u;
      sub_1D711B30C(0xD000000000000016, 0x80000001D73DBD50, &v115, (v9 + v8));
      v115 = 0u;
      v116 = 0u;
      v27 = (v9 + v8 + v7);
      v28 = 0xD00000000000001CLL;
      v29 = 0x80000001D73DBD70;
      goto LABEL_20;
    case 13:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      if (v120 > 1u)
      {
        if (v120 == 2)
        {
          v80 = 0xE800000000000000;
          v81 = 0x7373656363416F6ELL;
        }

        else
        {
          v81 = 0;
          v80 = 0xE000000000000000;
        }
      }

      else
      {
        if (v120)
        {
          v64 = 1701147238;
        }

        else
        {
          v64 = 1684627824;
        }

        v81 = v64 | 0x6563634100000000;
        v80 = 0xEA00000000007373;
      }

      if ((v80 & 0xA00000000000000) != 0)
      {
        v109 = MEMORY[0x1E69E6158];
      }

      else
      {

        v81 = 0;
        v80 = 0;
        v109 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v81;
      *&v111 = v80;
      *&v112 = v109;
      v92 = (v9 + v8);
      v83 = 0xD000000000000013;
      v82 = 0x80000001D73DBD30;
      goto LABEL_126;
    case 14:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v110 = 12;
      v111 = 0u;
      v112 = 0u;
      v113 = 0;
      v114 = 2;
      v13 = sub_1D69127CC(&v115, 0, &v110);
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        v16 = MEMORY[0x1E69E6158];
      }

      else
      {

        v13 = 0;
        v14 = 0;
        v16 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v13;
      *&v111 = v14;
      *&v112 = v16;
      v82 = 0xEA00000000006E6FLL;
      v83 = 0x6974616D6F747541;
      goto LABEL_125;
    case 15:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      v115 = 0u;
      v116 = 0u;
      v28 = 0x65726F6353;
      v27 = (v9 + v8);
      v29 = 0xE500000000000000;
LABEL_20:
      result = sub_1D711B30C(v28, v29, &v115, v27);
      break;
    default:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      sub_1D5F2DEAC(a2, &v115);
      v10 = v117;
      v11 = HIBYTE(v118) & 0xF;
      if ((v118 & 0x2000000000000000) == 0)
      {
        v11 = v117 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {

        v11 = MEMORY[0x1E69E6158];
      }

      else
      {
        v10 = 0;
        v12 = 0;
        *(&v111 + 1) = 0;
      }

      v110 = v10;
      *&v111 = v12;
      *&v112 = v11;
      v82 = 0xEA00000000007265;
      v83 = 0x696669746E656449;
LABEL_125:
      v92 = (v9 + v8);
LABEL_126:
      sub_1D711B30C(v83, v82, &v110, v92);
      result = sub_1D5F2DF58(&v115);
      break;
  }

  *a3 = v9;
  return result;
}

void sub_1D69155E8()
{
  if (!qword_1EC88E0F8)
  {
    sub_1D6915644();
    v0 = type metadata accessor for FormatCellAutomation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88E0F8);
    }
  }
}

unint64_t sub_1D6915644()
{
  result = qword_1EC88E100;
  if (!qword_1EC88E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E100);
  }

  return result;
}

unint64_t sub_1D6915698()
{
  result = qword_1EC88E108;
  if (!qword_1EC88E108)
  {
    sub_1D69155E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E108);
  }

  return result;
}

uint64_t sub_1D69156F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

BOOL _s8NewsFeed19FormatPuzzleBindingV4TextO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v39[0] = *a1;
  v39[1] = v4;
  v39[2] = v6;
  v39[3] = v5;
  v39[4] = v8;
  v39[5] = v7;
  v40 = v9;
  v41 = v11;
  v42 = v10;
  v43 = v12;
  v44 = v13;
  v45 = v14;
  v46 = v15;
  v47 = v16;
  if (!v9)
  {
    if (!v16)
    {
      v38[0] = v3;
      v38[1] = v4;
      v38[2] = v6;
      v38[3] = v5;
      v38[4] = v8;
      v38[5] = v7;
      v37[0] = v11;
      v37[1] = v10;
      v37[2] = v12;
      v37[3] = v13;
      v37[4] = v14;
      v37[5] = v15;
      v28 = v10;
      v33 = v12;
      v34 = v10;
      v29 = v13;
      v35 = v14;
      v36 = v13;
      v30 = v14;
      v32 = v15;
      sub_1D5E1DCD8(v11, v10, v12, v13, v14, v15, 0);
      sub_1D5E1DCD8(v3, v4, v6, v5, v8, v7, 0);
      sub_1D5E1DCD8(v11, v28, v33, v29, v30, v32, 0);
      sub_1D5E1DCD8(v3, v4, v6, v5, v8, v7, 0);
      v17 = _s8NewsFeed010FormatDateC0O2eeoiySbAC_ACtFZ_0(v38, v37);
      sub_1D6915F64(v39);
      sub_1D5E1E164(v11, v34, v33, v36, v35, v32, 0);
      sub_1D5E1E164(v3, v4, v6, v5, v8, v7, 0);
      return v17;
    }

    v18 = v3;
    v19 = v10;
    v20 = v4;
    v21 = v12;
    v22 = v6;
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    sub_1D5E1DC5C(v18, v20, v22);
    LOBYTE(v16) = v26;
    v15 = v25;
    v14 = v24;
    v13 = v23;
    v12 = v21;
    v10 = v19;
    goto LABEL_76;
  }

  if (v9 != 1)
  {
    if (!(v6 | v4 | v3 | v5 | v8 | v7))
    {
      if (v16 != 2 || v12 | v10 | v11 | v13 | v14 | v15)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    v27 = v6 | v4 | v5 | v8 | v7;
    if (v3 != 1 || v27)
    {
      if (v3 != 2 || v27)
      {
        if (v3 != 3 || v27)
        {
          if (v3 != 4 || v27)
          {
            if (v3 != 5 || v27)
            {
              if (v3 != 6 || v27)
              {
                if (v3 != 7 || v27)
                {
                  if (v3 != 8 || v27)
                  {
                    if (v3 != 9 || v27)
                    {
                      if (v3 != 10 || v27)
                      {
                        if (v3 != 11 || v27)
                        {
                          if (v3 != 12 || v27)
                          {
                            if (v16 != 2 || v11 != 13)
                            {
                              goto LABEL_76;
                            }
                          }

                          else if (v16 != 2 || v11 != 12)
                          {
                            goto LABEL_76;
                          }
                        }

                        else if (v16 != 2 || v11 != 11)
                        {
                          goto LABEL_76;
                        }
                      }

                      else if (v16 != 2 || v11 != 10)
                      {
                        goto LABEL_76;
                      }
                    }

                    else if (v16 != 2 || v11 != 9)
                    {
                      goto LABEL_76;
                    }
                  }

                  else if (v16 != 2 || v11 != 8)
                  {
                    goto LABEL_76;
                  }
                }

                else if (v16 != 2 || v11 != 7)
                {
                  goto LABEL_76;
                }
              }

              else if (v16 != 2 || v11 != 6)
              {
                goto LABEL_76;
              }
            }

            else if (v16 != 2 || v11 != 5)
            {
              goto LABEL_76;
            }
          }

          else if (v16 != 2 || v11 != 4)
          {
            goto LABEL_76;
          }
        }

        else if (v16 != 2 || v11 != 3)
        {
          goto LABEL_76;
        }
      }

      else if (v16 != 2 || v11 != 2)
      {
        goto LABEL_76;
      }
    }

    else if (v16 != 2 || v11 != 1)
    {
      goto LABEL_76;
    }

    if (!(v12 | v10 | v13 | v14 | v15))
    {
LABEL_75:
      sub_1D6915F64(v39);
      return 1;
    }

LABEL_76:
    sub_1D5E1DCD8(v11, v10, v12, v13, v14, v15, v16);
    sub_1D6915F64(v39);
    return 0;
  }

  if (v16 != 1)
  {
    goto LABEL_76;
  }

  sub_1D6915F64(v39);
  return ((v11 ^ v3) & 1) == 0;
}

unint64_t sub_1D6915B64()
{
  result = qword_1EC88E110;
  if (!qword_1EC88E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E110);
  }

  return result;
}

unint64_t sub_1D6915BBC()
{
  result = qword_1EC88E118;
  if (!qword_1EC88E118)
  {
    sub_1D6915C38(255, &qword_1EC88E120, &type metadata for FormatPuzzleBinding.Text.CodingType, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E118);
  }

  return result;
}

void sub_1D6915C38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D6915C88(uint64_t a1)
{
  result = sub_1D6915CB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6915CB0()
{
  result = qword_1EC88E128;
  if (!qword_1EC88E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E128);
  }

  return result;
}

unint64_t sub_1D6915D04(void *a1)
{
  a1[1] = sub_1D665FE7C();
  a1[2] = sub_1D670501C();
  result = sub_1D6915D3C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6915D3C()
{
  result = qword_1EC88E130;
  if (!qword_1EC88E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E130);
  }

  return result;
}

uint64_t sub_1D6915D90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1D6915DD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6915E2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1D6915E74(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D726224C();

    return sub_1D726236C();
  }

  return result;
}

unint64_t sub_1D6915F10()
{
  result = qword_1EDF2C1A0;
  if (!qword_1EDF2C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C1A0);
  }

  return result;
}

uint64_t sub_1D6915F64(uint64_t a1)
{
  sub_1D6915FC0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6915FC0()
{
  if (!qword_1EC88E138)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88E138);
    }
  }
}

uint64_t static ErrorStyler.feedTheme.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemBackgroundColor];
  v2 = [v0 systemBackgroundColor];
  v3 = [v0 ts:v1 dynamicColor:v2 withDarkStyleVariant:?];

  v4 = [v0 secondaryLabelColor];

  return MEMORY[0x1EEE46008](v3, 0, v4);
}

uint64_t type metadata accessor for DebugPersonalizationSelectionButton()
{
  result = qword_1EC88E150;
  if (!qword_1EC88E150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1D6916194(double a1, double a2, double a3, double a4)
{
  v9 = qword_1EC88E140;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v10 = qword_1EC88E148;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v44.receiver = v4;
  v44.super_class = type metadata accessor for DebugPersonalizationSelectionButton();
  v11 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 layer];
  [v12 setCornerRadius_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v11 widthAnchor];
  v14 = [v13 constraintEqualToConstant_];

  [v14 setActive_];
  v15 = [v11 heightAnchor];
  v16 = [v15 &selRef_featureKey + 1];

  [v16 setActive_];
  v17 = objc_opt_self();
  v18 = [v17 labelColor];
  [v11 setTitleColor:v18 forState:0];

  v19 = qword_1EC88E148;
  v20 = *&v11[qword_1EC88E148];
  v21 = [v17 labelColor];
  [v20 setTintColor_];

  v22 = [v17 secondarySystemBackgroundColor];
  [v11 setBackgroundColor_];

  v23 = qword_1EC88E140;
  [v11 addSubview_];
  [v11 addSubview_];
  [*&v11[v23] &:0 OBJC:? LABEL:? PROTOCOL:? :? :?FCReadingListObserving + 2];
  v24 = [*&v11[v23] centerXAnchor];
  v25 = [v11 centerXAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  [v26 setActive_];
  v27 = [*&v11[v23] centerYAnchor];
  v28 = [v11 centerYAnchor];
  v29 = [v27 &selRef_size + 5];

  [v29 setActive_];
  v30 = [*&v11[v23] leadingAnchor];
  v31 = [*&v11[v19] trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:15.0];

  [v32 setActive_];
  [*&v11[v19] setContentMode_];
  [*&v11[v19] setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = [*&v11[v19] leadingAnchor];
  v34 = [v11 leadingAnchor];

  v35 = [v33 constraintEqualToAnchor:v34 constant:15.0];
  [v35 setActive_];

  v36 = [*&v11[v19] centerYAnchor];
  v37 = [*&v11[v23] centerYAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  [v38 setActive_];
  v39 = [*&v11[v19] widthAnchor];
  v40 = [v39 constraintEqualToConstant_];

  [v40 setActive_];
  v41 = [*&v11[v19] heightAnchor];
  v42 = [v41 constraintEqualToConstant_];

  [v42 setActive_];
  return v11;
}

void sub_1D691677C(uint64_t a1)
{
  v2 = qword_1EC88E140;
  *(a1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = qword_1EC88E148;
  *(a1 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  sub_1D726402C();
  __break(1u);
}

void sub_1D6916828()
{
  v1 = *(v0 + qword_1EC88E148);
}

id sub_1D6916868()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugPersonalizationSelectionButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D69168A0(uint64_t a1)
{
  v2 = *(a1 + qword_1EC88E148);
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
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
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1D6916930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1D6916978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void FeedChannelHeadlineClusteringResult.scoredHeadlines.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = (v1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1D698FB64(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v5 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_24;
          }

          *(v5 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t static FeedChannelHeadlineClusteringResult.- infix(_:_:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v45 = a3;
  v4 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v57 = MEMORY[0x1E69E7CC0];
      result = sub_1D5BFC364(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v55 = v4;
      v8 = 0;
      v9 = v57;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA6FB460](v8, v3);
        }

        else
        {
          v10 = *(v3 + 8 * v8 + 32);
          swift_unknownObjectRetain();
        }

        v11 = [v10 identifier];
        v12 = sub_1D726207C();
        v14 = v13;
        swift_unknownObjectRelease();

        v16 = *(v57 + 16);
        v15 = *(v57 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D5BFC364((v15 > 1), v16 + 1, 1);
        }

        ++v8;
        *(v57 + 16) = v16 + 1;
        v17 = v57 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      while (i != v8);
      v6 = MEMORY[0x1E69E7CC0];
      v4 = v55;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v3 = sub_1D5B86020(v9);

    v18 = *(v4 + 16);
    if (!v18)
    {
      break;
    }

    sub_1D69999D8(0, v18, 0);
    v19 = 0;
    v46 = v18;
    v47 = v4 + 32;
    v20 = v6;
    v4 = v3 + 56;
    while (1)
    {
      v50 = v20;
      v51 = v19;
      v21 = (v47 + 24 * v19);
      v22 = v21[1];
      v23 = v21[2];
      v24 = *(v22 + 16);
      v49 = *v21;
      swift_unknownObjectRetain();
      swift_bridgeObjectRetain_n();
      v48 = v23;
      v54 = v24;
      if (v24)
      {
        break;
      }

      v52 = MEMORY[0x1E69E7CC0];
LABEL_36:

      v20 = v50;
      v43 = *(v50 + 16);
      v42 = *(v50 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1D69999D8((v42 > 1), v43 + 1, 1);
        v20 = v50;
      }

      v19 = v51 + 1;
      *(v20 + 16) = v43 + 1;
      v44 = (v20 + 24 * v43);
      v44[4] = v49;
      v44[5] = v52;
      v44[6] = v48;
      if (v51 + 1 == v46)
      {

        goto LABEL_41;
      }
    }

    v25 = 0;
    v53 = v22 + 32;
    v52 = MEMORY[0x1E69E7CC0];
    while (v25 < *(v22 + 16))
    {
      v26 = v22;
      v56 = *(v53 + 16 * v25++);
      swift_unknownObjectRetain();
      v27 = *(&v56 + 1);
      v28 = [v56 articleID];
      v29 = sub_1D726207C();
      v31 = v30;

      if (*(v3 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v32 = sub_1D7264A5C(), v33 = -1 << *(v3 + 32), v34 = v32 & ~v33, ((*(v4 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
      {
        v35 = ~v33;
        while (1)
        {
          v36 = (*(v3 + 48) + 16 * v34);
          v37 = *v36 == v29 && v36[1] == v31;
          if (v37 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v4 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        swift_unknownObjectRelease();

        v22 = v26;
        if (v25 == v54)
        {
          goto LABEL_36;
        }
      }

      else
      {
LABEL_29:

        v38 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6997CD0(0, *(v52 + 16) + 1, 1);
          v38 = v52;
        }

        v22 = v26;
        v40 = *(v38 + 16);
        v39 = *(v38 + 24);
        v41 = v38;
        if (v40 >= v39 >> 1)
        {
          sub_1D6997CD0((v39 > 1), v40 + 1, 1);
          v41 = v52;
        }

        *(v41 + 16) = v40 + 1;
        v52 = v41;
        *(v41 + 16 * v40 + 32) = v56;
        if (v25 == v54)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_43:
    ;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_41:
  *v45 = v20;
  return result;
}

uint64_t FeedChannelHeadlineClusteringResult.next(filterAgainst:)(unint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = a3;
  v9 = *v3;
  if (a3 >> 62)
  {
LABEL_46:
    v10 = sub_1D7263BFC();
  }

  else
  {
    v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  v51 = v9;
  v47 = a1;
  if (v10)
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v4 = 0;
    v11 = v52;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA6FB460](v4, v6);
      }

      else
      {
        v12 = *(v6 + 8 * v4 + 32);
        swift_unknownObjectRetain();
      }

      v13 = [v12 identifier];
      v5 = sub_1D726207C();
      v15 = v14;
      swift_unknownObjectRelease();

      v17 = *(v52 + 16);
      v16 = *(v52 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D5BFC364((v16 > 1), v17 + 1, 1);
      }

      ++v4;
      *(v52 + 16) = v17 + 1;
      v18 = v52 + 16 * v17;
      *(v18 + 32) = v5;
      *(v18 + 40) = v15;
    }

    while (v10 != v4);
    v9 = v51;
  }

  v6 = sub_1D5B86020(v11);

  v48 = *(v9 + 16);
  if (v48)
  {
    v46 = a2;
    a1 = 0;
    v49 = v9 + 32;
    a2 = (v6 + 56);
    while (1)
    {
      if (a1 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      v19 = (v49 + 24 * a1);
      v10 = *v19;
      v4 = v19[1];
      v20 = v19[2];
      swift_unknownObjectRetain();

      v50 = v20;
      v21 = [v10 identifier];
      v22 = sub_1D726207C();
      v5 = v23;

      if (!*(v6 + 16))
      {
        break;
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v24 = sub_1D7264A5C();
      v25 = -1 << *(v6 + 32);
      v26 = v24 & ~v25;
      if (((*(a2 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        break;
      }

      v27 = ~v25;
      while (1)
      {
        v28 = (*(v6 + 48) + 16 * v26);
        v29 = *v28 == v22 && v28[1] == v5;
        if (v29 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v26 = (v26 + 1) & v27;
        if (((*(a2 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      swift_unknownObjectRelease();

      ++a1;
      v9 = v51;
      if (a1 == v48)
      {

        a2 = v46;
        goto LABEL_30;
      }
    }

LABEL_26:

    swift_unknownObjectRelease();

    if (__OFADD__(a1, 1))
    {
      goto LABEL_48;
    }

    v30 = *v19;
    v31 = v19[1];
    v5 = v19[2];
    v10 = sub_1D5FD2BFC(a1 + 1, v51);
    v35 = v34 >> 1;
    if (v33 == v34 >> 1)
    {
      swift_unknownObjectRetain();

      v36 = v5;

      result = swift_unknownObjectRelease();
      v38 = 0;
      a2 = v46;
      *v47 = v30;
      v47[1] = v31;
      v47[2] = v36;
      goto LABEL_42;
    }

    v4 = v33;
    v50 = v32;
    *v47 = v30;
    v47[1] = v31;
    v47[2] = v5;
    a2 = v34;
    if ((v34 & 1) == 0)
    {
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v39 = v5;

      goto LABEL_33;
    }

    sub_1D72647AC();
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v41 = v5;
    swift_unknownObjectRetain_n();
    v42 = v41;

    v43 = swift_dynamicCastClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = MEMORY[0x1E69E7CC0];
    }

    v44 = *(v43 + 16);

    if (!__OFSUB__(v35, v4))
    {
      if (v44 != v35 - v4)
      {
        goto LABEL_50;
      }

      v45 = swift_dynamicCastClass();
      if (v45)
      {
        v38 = v45;
        swift_unknownObjectRelease();

        goto LABEL_40;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v38 = MEMORY[0x1E69E7CC0];
      goto LABEL_41;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    swift_unknownObjectRelease();
LABEL_33:
    sub_1D5EC3364(v10, v50, v4, a2);
    v38 = v40;
    swift_unknownObjectRelease();

LABEL_40:

LABEL_41:
    a2 = v46;
    result = swift_unknownObjectRelease();
    goto LABEL_42;
  }

LABEL_30:
  v38 = 0;
  *v47 = 0;
  v47[1] = 0;
  v47[2] = 0;
LABEL_42:
  *a2 = v38;
  return result;
}

uint64_t sub_1D6917510(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(a1 + 16);
      sub_1D69176FC();
      v10 = *&v7[*(swift_getTupleTypeMetadata2() + 48)];
      v16 = 0x287365676E616863;
      v17 = 0xE800000000000000;
      v11 = *(v10 + 16);

      v15[1] = v11;
      v12 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v12);

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      v13 = v16;
      (*(*(v9 - 8) + 8))(v7, v9);
      return v13;
    }

    else
    {
      return 0x676E616863206F6ELL;
    }
  }

  else
  {
    (*(v4 + 8))(v7, a1);
    return 0x6C616974696E69;
  }
}

void sub_1D69176FC()
{
  if (!qword_1EC88E160[0])
  {
    type metadata accessor for DebugFormatCacheFile();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, qword_1EC88E160);
    }
  }
}

uint64_t sub_1D6917754()
{
  result = type metadata accessor for DebugFormatManagerData();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DebugFormatFileDirectoryMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D69177DC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v5)
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v7 = sub_1D725BD1C();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  v13 = *(*(v7 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v12 | 7;
  v15 = v6 + (v12 | 7) + 1;
  v16 = v13 + v12;
  v17 = v13 + 7;
  if (v11 >= a2)
  {
    goto LABEL_31;
  }

  v18 = (v15 & ~v14) + ((((v17 + (v16 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v18 <= 3)
  {
    v19 = ((a2 - v11 + 255) >> 8) + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *&a1[v18];
      if (!*&a1[v18])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v22 = *&a1[v18];
      if (!v22)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v24 = (v22 - 1) << (8 * v18);
    if (v18 <= 3)
    {
      v25 = *a1;
    }

    else
    {
      v24 = 0;
      v25 = *a1;
    }

    return v11 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = a1[v18];
    if (a1[v18])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  v26 = &a1[v15] & ~v14;
  if (v10 < 0x7FFFFFFF)
  {
    v28 = *(((v17 + ((v16 + v26) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }

  else
  {
    v27 = *(v9 + 48);

    return v27(v26);
  }
}

void sub_1D69179E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v7)
  {
    v8 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v9 = *(sub_1D725BD1C() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = v8 + (v11 | 7) + 1;
  v15 = v12 + v11;
  v16 = (v12 + v11) & ~v11;
  v17 = v12 + 7;
  v18 = (v14 & ~(v11 | 7)) + ((((v17 + v16) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 >= a3)
  {
    v21 = 0;
    if (v13 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v18 <= 3)
    {
      v19 = ((a3 - v13 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v13 >= a2)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v18] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v18] = 0;
      }

      else if (v21)
      {
        a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v24 = &a1[v14] & ~(v11 | 7);
      if (v10 < 0x7FFFFFFF)
      {
        v26 = ((v17 + ((v15 + v24) & ~v11)) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v26 = a2 & 0x7FFFFFFF;
          v26[1] = 0;
        }

        else
        {
          v26[1] = (a2 - 1);
        }
      }

      else
      {
        v25 = *(v9 + 56);

        v25(v24, a2);
      }

      return;
    }
  }

  v22 = ~v13 + a2;
  bzero(a1, v18);
  if (v18 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v18 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_30:
      if (v21 == 2)
      {
        *&a1[v18] = v23;
      }

      else
      {
        *&a1[v18] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v21)
  {
    a1[v18] = v23;
  }
}

uint64_t sub_1D6917C70()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D69176FC();
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6917D08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v4 <= v3)
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1D6917E28(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v5)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1D6917FE8()
{
  sub_1D5B6B984(0, qword_1EDF26B28, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v15 - v2;
  v4 = type metadata accessor for SportsDataConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - v11;

  sub_1D725B96C();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D5B6AD60(v3);
    v15[0] = 0xD000000000000015;
    v15[1] = 0x80000001D73DBEF0;
    return sub_1D725AD2C();
  }

  else
  {
    sub_1D69188B0(v3, v12);
    sub_1D5F7DD78(v12, v8);
    sub_1D5B6B984(0, &qword_1EDF17A30, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v14 = sub_1D725BB1C();
    sub_1D5F7DDDC(v12);
    return v14;
  }
}

uint64_t sub_1D691820C()
{
  type metadata accessor for SportsDataConfiguration();
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  sub_1D725BA9C();

  v1 = sub_1D725B92C();
  v2 = sub_1D725BB7C();

  return v2;
}

uint64_t sub_1D6918318(uint64_t a1)
{
  v2 = type metadata accessor for SportsDataConfiguration();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6B984(0, qword_1EDF26B28, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - v13;
  sub_1D5F7DD78(a1, &v17 - v13);
  v15 = *(v3 + 56);
  v15(v14, 0, 1, v2);
  sub_1D5B6BBCC(v14, v10);

  sub_1D725B97C();

  sub_1D5B6AD60(v14);
  v15(v14, 1, 1, v2);
  sub_1D5B6BBCC(v14, v10);

  sub_1D725B97C();

  sub_1D5B6AD60(v14);
  sub_1D5F7DD78(a1, v6);
  sub_1D5B6B984(0, &qword_1EDF17A30, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

char *sub_1D6918550(void *a1)
{
  sub_1D5B6B984(0, qword_1EDF26B28, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for SportsDataConfiguration();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v26 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v25 - v20;

  sub_1D725B96C();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D5B6AD60(v13);
    swift_willThrow();
    v22 = a1;
  }

  else
  {
    sub_1D69188B0(v13, v21);
    sub_1D5F7DD78(v21, v9);
    v23 = *(v15 + 56);
    v23(v9, 0, 1, v14);
    sub_1D5B6BBCC(v9, v5);

    sub_1D725B97C();

    sub_1D5B6AD60(v9);
    v23(v9, 1, 1, v14);
    sub_1D5B6BBCC(v9, v5);

    sub_1D725B97C();

    sub_1D5B6AD60(v9);
    sub_1D5F7DD78(v21, v26);
    sub_1D5B6B984(0, &qword_1EDF17A30, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v13 = sub_1D725BB1C();
    sub_1D5F7DDDC(v21);
  }

  return v13;
}

uint64_t sub_1D6918858()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D69188B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MotionContainerView.motionLayer.getter()
{
  v1 = [v0 layer];
  v2 = [v1 sublayers];

  if (v2)
  {
    sub_1D5B5A498(0, &unk_1EDF1A700);
    v3 = sub_1D726267C();

    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1DA6FB460](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        sub_1D6918B80();
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          v10 = v9;

          return v10;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

uint64_t MotionContainerView.blueprintViewportMonitor(_:viewportMotionDataDidChange:)()
{
  sub_1D725EC0C();
  sub_1D725DE6C();
}

uint64_t sub_1D6918B18()
{
  sub_1D725EC0C();
  sub_1D725DE6C();
}

void sub_1D6918B80()
{
  if (!qword_1EC88E268)
  {
    sub_1D5B5A498(255, &unk_1EC88E270);
    v0 = sub_1D725CBBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88E268);
    }
  }
}

uint64_t (*sub_1D6918BE8())()
{
  v1 = v0;
  v94 = type metadata accessor for DebugFormatDebuggerSourceHighlight;
  v93 = MEMORY[0x1E69E6720];
  sub_1D691C680(0, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v93 - v4;
  v6 = sub_1D6919570();
  v7 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  v8 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 48];
  v100[2] = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 32];
  v100[3] = v8;
  v9 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 16];
  v100[0] = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  v100[1] = v9;
  v10 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 112];
  v100[6] = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 96];
  v100[7] = v10;
  v11 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 80];
  v100[4] = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 64];
  v100[5] = v11;
  v12 = &v6[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile];
  v13 = *&v6[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile];
  v14 = *&v6[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 16];
  v15 = *&v6[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 48];
  v101[2] = *&v6[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 32];
  v101[3] = v15;
  v101[0] = v13;
  v101[1] = v14;
  v16 = *&v6[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 64];
  v17 = *&v6[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 80];
  v18 = *&v6[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 112];
  v101[6] = *&v6[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile + 96];
  v101[7] = v18;
  v101[4] = v16;
  v101[5] = v17;
  memmove(&v6[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile], &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile], 0x80uLL);
  sub_1D67DEA6C(v100, &v115);
  v19 = MEMORY[0x1E69E6720];
  sub_1D691C778(v101, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, MEMORY[0x1E69E6720], sub_1D5B49DA8);
  v20 = v12[3];
  v22 = *v12;
  v21 = v12[1];
  v102[2] = v12[2];
  v102[3] = v20;
  v102[0] = v22;
  v102[1] = v21;
  v23 = v12[7];
  v25 = v12[4];
  v24 = v12[5];
  v102[6] = v12[6];
  v102[7] = v23;
  v102[4] = v25;
  v102[5] = v24;
  v119 = v12[4];
  v120 = v12[5];
  v121 = v12[6];
  v122 = v12[7];
  v115 = *v12;
  v116 = v12[1];
  v117 = v12[2];
  v118 = v12[3];
  sub_1D67DEA6C(v102, &v107);
  sub_1D67DDB1C(&v115);

  v103[4] = v119;
  v103[5] = v120;
  v103[6] = v121;
  v103[7] = v122;
  v103[0] = v115;
  v103[1] = v116;
  v103[2] = v117;
  v103[3] = v118;
  sub_1D691C778(v103, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, v19, sub_1D5B49DA8);
  v26 = sub_1D691968C();
  v27 = *(v7 + 3);
  v104[2] = *(v7 + 2);
  v104[3] = v27;
  v28 = *(v7 + 1);
  v104[0] = *v7;
  v104[1] = v28;
  v29 = *(v7 + 7);
  v104[6] = *(v7 + 6);
  v104[7] = v29;
  v30 = *(v7 + 5);
  v104[4] = *(v7 + 4);
  v104[5] = v30;
  v31 = &v26[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile];
  v32 = *&v26[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile];
  v33 = *&v26[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 16];
  v34 = *&v26[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 32];
  v105[3] = *&v26[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 48];
  v105[2] = v34;
  v105[1] = v33;
  v105[0] = v32;
  v35 = *&v26[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 64];
  v36 = *&v26[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 80];
  v37 = *&v26[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 96];
  v105[7] = *&v26[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile + 112];
  v105[6] = v37;
  v105[5] = v36;
  v105[4] = v35;
  memmove(&v26[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile], v7, 0x80uLL);
  sub_1D67DEA6C(v104, &v115);
  sub_1D691C778(v105, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, v19, sub_1D5B49DA8);
  v38 = v31[2];
  v40 = *v31;
  v39 = v31[1];
  v106[3] = v31[3];
  v106[2] = v38;
  v106[0] = v40;
  v106[1] = v39;
  v41 = v31[6];
  v43 = v31[4];
  v42 = v31[5];
  v106[7] = v31[7];
  v106[6] = v41;
  v106[4] = v43;
  v106[5] = v42;
  v119 = v31[4];
  v120 = v31[5];
  v121 = v31[6];
  v122 = v31[7];
  v115 = *v31;
  v116 = v31[1];
  v117 = v31[2];
  v118 = v31[3];

  sub_1D67DEA6C(v106, &v107);
  sub_1D679C564(&v115, v5);
  v44 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_highlight;
  swift_beginAccess();
  sub_1D691C6E4(v5, &v26[v44]);
  swift_endAccess();
  [v26 setNeedsLayout];

  sub_1D691C778(v5, &qword_1EC88E2E0, v94, v93, sub_1D691C680);
  v45 = *(v7 + 5);
  v111 = *(v7 + 4);
  v112 = v45;
  v46 = *(v7 + 7);
  v113 = *(v7 + 6);
  v114 = v46;
  v47 = *(v7 + 1);
  v107 = *v7;
  v108 = v47;
  v48 = *(v7 + 3);
  v109 = *(v7 + 2);
  v110 = v48;
  v121 = v113;
  v122 = v46;
  v119 = v111;
  v120 = v45;
  v117 = v109;
  v118 = v48;
  v115 = v107;
  v116 = v47;
  v49 = sub_1D5DEA380(&v115);
  v50 = &qword_1EC88E000;
  if (v49 != 1)
  {
LABEL_5:
    v54 = *&v1[v50[83]];
    v55 = v117;
    v56 = __swift_project_boxed_opaque_existential_1((*&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_editor] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_sourceTheme), *(*&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_editor] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_sourceTheme + 24));
    v57 = v56[5];
    v99[4] = v56[4];
    v99[5] = v57;
    v99[6] = v56[6];
    v58 = v56[1];
    v99[0] = *v56;
    v99[1] = v58;
    v59 = v56[3];
    v99[2] = v56[2];
    v99[3] = v59;
    v98[2] = v109;
    v98[3] = v110;
    v98[0] = v107;
    v98[1] = v108;
    v98[6] = v113;
    v98[7] = v114;
    v98[4] = v111;
    v98[5] = v112;
    sub_1D691C7D8(v98, v97);
    v60 = sub_1D691B724(v55, *(&v55 + 1), v99, 0);
    [v54 setAttributedText_];

    v97[0] = v55;
    v95 = 10;
    v96 = 0xE100000000000000;
    sub_1D5BF4D9C();
    v61 = *(sub_1D72639FC() + 16);

    if (v61)
    {
      *&v97[0] = MEMORY[0x1E69E7CC0];
      result = sub_1D5BFC364(0, v61, 0);
      v62 = 0;
      v63 = 1;
      v64 = *&v97[0];
      v65 = v61;
      while (!v62)
      {
        v95 = v63;
        sub_1D5E4049C();
        result = sub_1D7263ADC();
        *&v97[0] = v64;
        v68 = *(v64 + 16);
        v67 = *(v64 + 24);
        if (v68 >= v67 >> 1)
        {
          v94 = result;
          v71 = v66;
          sub_1D5BFC364((v67 > 1), v68 + 1, 1);
          v66 = v71;
          result = v94;
          v64 = *&v97[0];
        }

        *(v64 + 16) = v68 + 1;
        v69 = v64 + 16 * v68;
        *(v69 + 32) = result;
        *(v69 + 40) = v66;
        v62 = v63 == v61;
        if (v63 == v61)
        {
          v63 = 0;
        }

        else if (__OFADD__(v63++, 1))
        {
          __break(1u);
          goto LABEL_23;
        }

        if (!--v65)
        {
          *&v97[0] = v64;
          sub_1D5B49DA8(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          sub_1D5BB0AB8();
          v72 = sub_1D7261F3C();
          v74 = v73;

          v75 = [objc_opt_self() secondaryLabelColor];
          v76 = sub_1D691C480(v72, v74, v75);

          [v76 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
          v78 = v77;
          v80 = v79;
          v81 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel];
          [v81 setAttributedText_];
          [v81 setFrame_];
          sub_1D6919718(0);
          if (*(&v118 + 1))
          {
            v82 = *(&v119 + 1);
            v83 = v119;

            sub_1D6919DD8();
            v85 = v84;

            sub_1D691C778(&v107, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, MEMORY[0x1E69E6720], sub_1D5B49DA8);
            v86 = v85 * v82;
            v87 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___charSize + 8];

            v88 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize];
            *v88 = v86;
            v88[1] = v87;
            v88[2] = v86;
            v88[3] = v87 * v83;
            v76 = &off_1E84D3000;
            result = [v1 view];
            if (!result)
            {
              goto LABEL_26;
            }

            v89 = result;
            [result setNeedsLayout];

            result = [v1 view];
            if (result)
            {
              goto LABEL_22;
            }

            __break(1u);
          }

          sub_1D691C778(&v107, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, MEMORY[0x1E69E6720], sub_1D5B49DA8);
          v90 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize];
          *v90 = 0u;
          *(v90 + 1) = 0u;
          result = [v1 view];
          if (!result)
          {
            goto LABEL_27;
          }

          v91 = result;
          [result setNeedsLayout];

          result = [v1 view];
          if (!result)
          {
            goto LABEL_28;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_23:
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  [*&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_textView] setAttributedText_];
  [*&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel] setAttributedText_];
  v51 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize];
  *v51 = 0u;
  *(v51 + 1) = 0u;
  result = [v1 view];
  if (result)
  {
    v53 = result;
    [result setNeedsLayout];

    result = [v1 view];
    if (result)
    {
LABEL_22:
      v92 = result;
      [result layoutIfNeeded];

      return sub_1D691B090();
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

id sub_1D6919570()
{
  v1 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_editor);
    sub_1D6919DD8();
    v6 = v5;
    v7 = type metadata accessor for DebugFormatDebuggerSourceBreakpointView();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_sourceFile];
    sub_1D607F0A4(v21);
    v10 = v21[0];
    v11 = v21[1];
    v12 = v21[3];
    *(v9 + 2) = v21[2];
    *(v9 + 3) = v12;
    *v9 = v10;
    *(v9 + 1) = v11;
    v13 = v21[4];
    v14 = v21[5];
    v15 = v21[7];
    *(v9 + 6) = v21[6];
    *(v9 + 7) = v15;
    *(v9 + 4) = v13;
    *(v9 + 5) = v14;
    *&v8[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_editor] = v4;
    *&v8[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceBreakpointView_breakpointSize] = v6;
    v20.receiver = v8;
    v20.super_class = v7;

    v16 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v17 = *(v0 + v1);
    *(v0 + v1) = v16;
    v3 = v16;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

char *sub_1D691968C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for DebugFormatDebuggerSourceHighlightView());

    v5 = v0;
    v6 = sub_1D67FFCB8(v4);
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1D6919718(char a1)
{
  v2 = v1;
  v49 = *(v1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_scrollView);
  v4 = [v49 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710);
  v5 = sub_1D726267C();

  if (v5 >> 62)
  {
    v6 = sub_1D7263BFC();
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 < 1)
  {
    goto LABEL_47;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA6FB460](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    type metadata accessor for DebugFormatDebuggerSourceMetricView();
    if (swift_dynamicCastClass())
    {
      [v9 removeFromSuperview];
    }
  }

LABEL_12:

  sub_1D725972C();

  if (LOBYTE(v53[0]) != 1)
  {
    return result;
  }

  v11 = &off_1E84D3000;
  [*(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel) bounds];
  CGRectGetMaxX(v55);
  v12 = v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile;
  v13 = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 80);
  v53[4] = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 64);
  v53[5] = v13;
  v14 = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 112);
  v53[6] = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 96);
  v53[7] = v14;
  v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 16);
  v53[0] = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile);
  v53[1] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 48);
  v53[2] = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 32);
  v53[3] = v16;
  v17 = sub_1D5DEA380(v53);
  v5 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  if (v17 != 1)
  {
    v18 = *(v12 + 80);
  }

  v52 = v5;
  v19 = *(v18 + 16);
  if (v19)
  {
    v46 = a1;
    v50 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceMetrics;
    v48 = v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___charSize;
    v20 = v2;
    v47 = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeView);
    v21 = (v18 + 56);
    while (1)
    {
      v22 = v11;
      v24 = *(v21 - 2);
      v23 = *(v21 - 1);
      v25 = *v21;
      v26 = *(v20 + v50);
      if (!v26)
      {

        v33 = MEMORY[0x1E69E7CC0];
        v31 = MEMORY[0x1E69E7CC0];
        goto LABEL_30;
      }

      v27 = *(v21 - 3);
      v28 = *(v26 + 16);
      v29 = *(v28 + 16);

      if (v29)
      {

        v30 = sub_1D6D62D64(v27, v24, v23, v25);
        v31 = MEMORY[0x1E69E7CC0];
        if (v32)
        {
          v31 = *(*(v28 + 56) + 8 * v30);
        }
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      v34 = *(v20 + v50);
      if (v34)
      {
        v35 = *(v34 + 32);
        if (*(v35 + 16))
        {

          v36 = sub_1D6D62D64(v27, v24, v23, v25);
          if (v37)
          {
            v38 = *(*(v35 + 56) + 8 * v36);

            v33 = v38;
            goto LABEL_30;
          }
        }
      }

      v33 = MEMORY[0x1E69E7CC0];
LABEL_30:
      sub_1D6BED228(v33, v31, &v54);
      v5 = objc_allocWithZone(type metadata accessor for DebugFormatDebuggerSourceMetricView());
      v39 = sub_1D60D0E40(&v54);
      [v39 sizeToFit];
      if (__OFSUB__(v25, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        result = sub_1D7263BFC();
        v42 = result;
        if (!result)
        {
          goto LABEL_49;
        }

LABEL_39:
        if (v42 >= 1)
        {
          v43 = 0;
          do
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v44 = MEMORY[0x1DA6FB460](v43, v5);
            }

            else
            {
              v44 = *(v5 + 8 * v43 + 32);
            }

            v45 = v44;
            ++v43;
            CGAffineTransformMakeScale(&v51, 0.0, 0.0);
            [v45 setTransform_];
          }

          while (v42 != v43);
          goto LABEL_49;
        }

        __break(1u);
        return result;
      }

      sub_1D6919DD8();
      v11 = v22;
      [v39 v22[222]];
      CGRectGetWidth(v56);
      v5 = v48;

      if (__OFSUB__(v23, 1))
      {
        goto LABEL_46;
      }

      [v39 v22[222]];
      CGRectGetHeight(v57);
      [v39 frame];
      sub_1D726327C();
      [v39 setFrame_];
      [v49 insertSubview:v39 belowSubview:v47];
      v40 = v39;
      MEMORY[0x1DA6F9CE0]();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      v21 += 4;
      sub_1D726278C();

      if (!--v19)
      {
        v5 = v52;
        a1 = v46;
        break;
      }
    }
  }

  if (a1)
  {
    if (v5 >> 62)
    {
      goto LABEL_48;
    }

    v42 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_39;
    }

LABEL_49:
    MEMORY[0x1EEE9AC00](result, v41);
    sub_1D72634EC();
  }
}

void sub_1D6919DD8()
{
  v1 = v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___charSize;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___charSize + 16))
  {
    v2 = [objc_opt_self() labelColor];
    v3 = sub_1D691C480(97, 0xE100000000000000, v2);

    [v3 size];
    v5 = v4;
    v7 = v6;

    *v1 = v5;
    *(v1 + 8) = v7;
    *(v1 + 16) = 0;
  }
}

id sub_1D6919E88(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  sub_1D607F0A4(v17);
  v5 = v17[5];
  *(v4 + 4) = v17[4];
  *(v4 + 5) = v5;
  v6 = v17[7];
  *(v4 + 6) = v17[6];
  *(v4 + 7) = v6;
  v7 = v17[1];
  *v4 = v17[0];
  *(v4 + 1) = v7;
  v8 = v17[3];
  *(v4 + 2) = v17[2];
  *(v4 + 3) = v8;
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceMetrics] = 0;
  v9 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_textView;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_scrollView;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView] = 0;
  v11 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeView;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeViewPadding] = 0x4020000000000000;
  v13 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___charSize];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_editor] = a1;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1D691A074()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_scrollView];
  v3 = objc_opt_self();
  v4 = [v3 tertiarySystemBackgroundColor];
  [v2 setBackgroundColor_];

  [v2 setDirectionalLockEnabled_];
  [v2 setAlwaysBounceVertical_];
  [v2 setAlwaysBounceHorizontal_];
  [v2 setShowsHorizontalScrollIndicator_];
  [v2 setDelegate_];
  [v2 setContentInset_];
  result = [v1 view];
  if (result)
  {
    v6 = result;
    [result addSubview_];

    [v2 _setHiddenPocketEdges_];
    v7 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_textView];
    v8 = [v3 tertiarySystemBackgroundColor];
    [v7 setBackgroundColor_];

    v9 = [v7 textContainer];
    [v9 setLineFragmentPadding_];

    [v7 setTextContainerInset_];
    [v7 setScrollEnabled_];
    [v7 setEditable_];
    [v7 setSelectable_];
    [v2 addSubview_];
    [v7 _setHiddenPocketEdges_];
    v10 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeView];
    v11 = [v3 tertiarySystemBackgroundColor];
    [v10 setBackgroundColor_];

    [v2 addSubview_];
    v12 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel];
    [v12 setUserInteractionEnabled_];
    [v12 setTextAlignment_];
    [v12 setNumberOfLines_];
    v13 = [v3 tertiarySystemBackgroundColor];
    [v12 setBackgroundColor_];

    [v2 addSubview_];
    v14 = sub_1D691968C();
    [v2 addSubview_];

    v15 = sub_1D6919570();
    [v2 addSubview_];

    sub_1D725974C();

    sub_1D725975C();

    v16 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = &v16[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_didTapOnHighlight];
    swift_beginAccess();
    v19 = *v18;
    *v18 = sub_1D691C910;
    v18[1] = v17;
    v20 = v16;

    sub_1D5B74328(v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D691A504(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1D691A574(a1, a2);
  }
}

void sub_1D691A574(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DebugFormatDebuggerSourceHighlight();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v29.receiver - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D691C890(a1, v8, type metadata accessor for DebugFormatDebuggerSourceHighlight);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D691C918(v8);
    }
  }

  else
  {
    v10 = *v8;
    if (v10)
    {
      v11 = v10;
      v12 = sub_1D5EE7410(v10);
      v13 = sub_1D5EEAADC(v12);
      v15 = v14;
      v16 = *&v2[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_editor];
      v17 = type metadata accessor for DebugFormatErrorViewController();
      v18 = objc_allocWithZone(v17);
      v19 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_tableView;
      v20 = objc_allocWithZone(MEMORY[0x1E69DD020]);

      v21 = v13;

      *&v18[v19] = [v20 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
      v22 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_styler;
      type metadata accessor for DebugFormatStyler();
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *&v18[v22] = v23;
      *&v18[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_editor] = v16;
      v24 = &v18[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_errorModel];
      *v24 = v13;
      *(v24 + 1) = v15;
      v29.receiver = v18;
      v29.super_class = v17;
      v25 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
      v26 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
      [v26 setModalPresentationStyle_];
      v27 = [v26 popoverPresentationController];
      if (v27)
      {
        v28 = v27;
        [v27 setSourceView_];
      }

      [v26 setPreferredContentSize_];

      [v2 presentViewController:v26 animated:1 completion:0];
    }
  }
}

id sub_1D691A914()
{
  v71.receiver = v0;
  v71.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v71, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame_];
  v12 = sub_1D6919570();
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  [result safeAreaInsets];
  v15 = v14;

  sub_1D6919DD8();
  v17 = v16;
  v18 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel];
  [v18 frame];
  [v12 setFrame_];

  [v18 frame];
  v19 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView;
  [*&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView] frame];
  CGRectGetMaxX(v73);
  sub_1D726325C();
  [v18 setFrame_];
  v20 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_textView];
  [v20 sizeThatFits_];
  v22 = v21;
  v24 = v23;
  [v18 bounds];
  [v20 setFrame_];
  [v18 bounds];
  [v1 setContentSize_];
  v25 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeView];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = result;
  [result safeAreaInsets];
  v28 = v27;

  [v1 contentOffset];
  v30 = v29;
  [v1 contentOffset];
  v32 = v31;
  [*&v0[v19] bounds];
  Width = CGRectGetWidth(v76);
  [v18 bounds];
  v34 = CGRectGetWidth(v77);
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v35 = result;
  v36 = v28 + v30;
  v37 = Width + v34 + 24.0;
  [result bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v78.origin.x = v39;
  v78.origin.y = v41;
  v78.size.width = v43;
  v78.size.height = v45;
  [v25 setFrame_];
  v46 = &v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  v47 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 80];
  v70[4] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 64];
  v70[5] = v47;
  v48 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 112];
  v70[6] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 96];
  v70[7] = v48;
  v49 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 16];
  v70[0] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  v70[1] = v49;
  v50 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 48];
  v70[2] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 32];
  v70[3] = v50;
  if (sub_1D5DEA380(v70) == 1 || !*(v46 + 7))
  {
    v66 = sub_1D691968C();
    [v66 setHidden_];

    [v1 adjustedContentInset];
    v68 = -v67;
    [v1 adjustedContentInset];
    [v1 setContentOffset_];
    sub_1D691ADF0(v1);
    return sub_1D691ADF0(v1);
  }

  v51 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize + 8];
  v52 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize + 24];
  v53 = sub_1D691968C();
  [v53 setHidden_];

  v54 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView];
  [v1 contentOffset];
  v56 = v55;
  result = [v0 view];
  if (result)
  {
    v57 = result;
    [result bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v79.origin.x = v59;
    v79.origin.y = v61;
    v79.size.width = v63;
    v79.size.height = v65;
    [v54 setFrame_];

    return sub_1D691ADF0(v1);
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1D691ADF0(void *a1)
{
  v3 = sub_1D691968C();
  [*&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView] frame];
  MEMORY[0x1DA6FA970]([a1 contentOffset]);
  [v3 setFrame_];

  v4 = sub_1D6919570();
  v5 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView;
  [*&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView] frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = result;
  [result safeAreaInsets];
  v17 = v16;

  v18 = [a1 contentOffset];
  MEMORY[0x1DA6FA970](v18, v17 + v19 + 8.0, v7, v9, v11, v13);
  [v4 setFrame_];

  v20 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel];
  [v20 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [*&v1[v5] frame];
  MaxX = CGRectGetMaxX(v41);
  MEMORY[0x1DA6FA970](MaxX + 8.0, v22, v24, v26, v28);
  [v20 setFrame_];
  v30 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeView];
  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v31 = result;
  [result safeAreaInsets];
  v33 = v32;

  [a1 contentOffset];
  v35 = v33 + v34;
  [a1 contentOffset];
  v37 = v36;
  [v30 frame];
  v39 = v38;
  [v30 frame];

  return [v30 setFrame_];
}

id sub_1D691B090()
{
  v1 = &v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 80];
  v41[4] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 64];
  v41[5] = v2;
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 112];
  v41[6] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 96];
  v41[7] = v3;
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 16];
  v41[0] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile];
  v41[1] = v4;
  v5 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 48];
  v41[2] = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile + 32];
  v41[3] = v5;
  result = sub_1D5DEA380(v41);
  if (result != 1 && *(v1 + 7))
  {
    v7 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize + 24];
    v8 = sub_1D691968C();
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = *&v0[OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_scrollView];
    [v17 contentOffset];
    v19 = v18;
    [v17 scrollRectToVisible:0 animated:{v10, v12, v14, v16}];
    [v17 contentOffset];
    v21 = v20;
    result = [v0 view];
    if (result)
    {
      v22 = result;
      [result safeAreaInsets];
      v24 = v23;

      if (v21 + v24 < v19)
      {
        v19 = v21 + v24;
      }

      [v17 contentOffset];
      [v17 setContentOffset_];
      [v17 contentSize];
      v26 = v25;
      [v17 visibleSize];
      if (v27 < v26)
      {
        [v17 contentOffset];
        v29 = v28;
        [v17 adjustedContentInset];
        v31 = v30;
        [v17 contentSize];
        v33 = v32;
        [v17 visibleSize];
        v35 = v34;
        [v17 adjustedContentInset];
        v37 = -v36;
        [v17 visibleSize];
        v39 = v7 + v38 * -0.5;
        if (v39 < v37)
        {
          v39 = v37;
        }

        v40 = v31 + v33 - v35;
        if (v39 < v40)
        {
          v40 = v39;
        }

        [v17 setContentOffset_];
      }

      return sub_1D691ADF0(v17);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t *sub_1D691B2D8(uint64_t *result)
{
  v1 = *result;
  if (*result >> 62)
  {
    result = sub_1D7263BFC();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
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
        v4 = MEMORY[0x1DA6FB460](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6[1] = 0;
      v6[2] = 0;
      v6[0] = 0x3FF0000000000000;
      v6[3] = 0x3FF0000000000000;
      v6[4] = 0;
      v6[5] = 0;
      [v4 setTransform_];
    }

    while (v2 != v3);
  }

  return result;
}

id sub_1D691B5B0()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  return v1;
}

uint64_t sub_1D691B61C()
{
  v1 = [*v0 toolbarItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D5B5A498(0, &qword_1EDF04590);
  v3 = sub_1D726267C();

  return v3;
}

uint64_t sub_1D691B690()
{
  v1 = [*v0 navigationItem];
  v2 = [v1 leftBarButtonItems];

  if (!v2)
  {
    return 0;
  }

  sub_1D5B5A498(0, &qword_1EDF04590);
  v3 = sub_1D726267C();

  return v3;
}

id sub_1D691B724(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  v23 = &type metadata for DebugFormatDebuggerSourceTheme.Cora;
  v24 = &off_1F51AAAC8;
  v8 = swift_allocObject();
  v22[0] = v8;
  v9 = a3[5];
  v8[5] = a3[4];
  v8[6] = v9;
  v8[7] = a3[6];
  v10 = a3[1];
  v8[1] = *a3;
  v8[2] = v10;
  v11 = a3[3];
  v8[3] = a3[2];
  v8[4] = v11;
  v12 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  sub_1D691C834(a3, v25);
  v13 = [v12 init];
  v14 = sub_1D6848714(a1, a2, a4 & 1);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 40);
    do
    {
      v20 = *(v16 - 1);
      v21 = *v16;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1DA6F9910](10, 0xE100000000000000);

      v17 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v25[3] = v17[3];
      v25[4] = v17[4];
      v25[5] = v17[5];
      v25[6] = v17[6];
      v25[0] = *v17;
      v25[1] = v17[1];
      v25[2] = v17[2];
      v18 = sub_1D691B8E0(v20, v21, v25);

      [v13 appendAttributedString_];

      v16 += 2;
      --v15;
    }

    while (v15);
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v13;
}

unint64_t sub_1D691B8E0(unint64_t a1, unint64_t a2, _OWORD *a3)
{
  v125 = &type metadata for DebugFormatDebuggerSourceTheme.Cora;
  v126 = &off_1F51AAAC8;
  v6 = swift_allocObject();
  v124[0] = v6;
  v7 = a3[5];
  v6[5] = a3[4];
  v6[6] = v7;
  v6[7] = a3[6];
  v8 = a3[1];
  v6[1] = *a3;
  v6[2] = v8;
  v9 = a3[3];
  v6[3] = a3[2];
  v6[4] = v9;
  sub_1D691C834(a3, &v122);
  v10 = sub_1D6848CF8(a1, a2);
  v108 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_40:

    __swift_destroy_boxed_opaque_existential_1(v124);
    return v108;
  }

  v107 = *MEMORY[0x1E69DB648];
  v106 = *MEMORY[0x1E69DB650];
  v12 = (v10 + 48);
  while (1)
  {
    v17 = *(v12 - 1);
    v109 = *(v12 - 2);
    v18 = *v12;
    v19 = __swift_project_boxed_opaque_existential_1(v124, v125);
    if (v18 > 2)
    {
      break;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        v20 = v19[4];
        v21 = v19[5];
        v112[0] = v107;
        v22 = sub_1D5B5A498(0, &qword_1EDF1A720);
        v112[1] = v21;
        v112[4] = v22;
        v113[0] = v106;
        v113[4] = sub_1D5B5A498(0, qword_1EDF1A6A0);
        v113[1] = v20;
        sub_1D5C09D34();
        v23 = sub_1D726412C();
        sub_1D5EA77BC(v109, v17, 1u);
        v24 = v20;
        v25 = v21;
        v26 = v107;
        v27 = v106;
        sub_1D691C890(v112, &v122, sub_1D5C09DD4);
        v28 = v122;
        result = sub_1D5BAA7D4(v122);
        if (v30)
        {
          goto LABEL_44;
        }

        *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v23[6] + 8 * result) = v28;
        result = sub_1D5B7C390(v123, (v23[7] + 32 * result));
        v31 = v23[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_48;
        }

        v23[2] = v33;
        sub_1D691C890(v113, &v122, sub_1D5C09DD4);
        v34 = v122;
        result = sub_1D5BAA7D4(v122);
        if (v35)
        {
          goto LABEL_44;
        }

        *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v23[6] + 8 * result) = v34;
        result = sub_1D5B7C390(v123, (v23[7] + 32 * result));
        v36 = v23[2];
        v32 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v32)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v79 = v19[10];
        v80 = v19[11];
        v114[0] = v107;
        v81 = sub_1D5B5A498(0, &qword_1EDF1A720);
        v114[1] = v80;
        v114[4] = v81;
        v115[0] = v106;
        v115[4] = sub_1D5B5A498(0, qword_1EDF1A6A0);
        v115[1] = v79;
        sub_1D5C09D34();
        v23 = sub_1D726412C();
        sub_1D5EA77BC(v109, v17, 2u);
        v82 = v79;
        v83 = v80;
        v84 = v107;
        v85 = v106;
        sub_1D691C890(v114, &v122, sub_1D5C09DD4);
        v86 = v122;
        result = sub_1D5BAA7D4(v122);
        if (v87)
        {
          goto LABEL_46;
        }

        *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v23[6] + 8 * result) = v86;
        result = sub_1D5B7C390(v123, (v23[7] + 32 * result));
        v88 = v23[2];
        v32 = __OFADD__(v88, 1);
        v89 = v88 + 1;
        if (v32)
        {
          goto LABEL_51;
        }

        v23[2] = v89;
        sub_1D691C890(v115, &v122, sub_1D5C09DD4);
        v90 = v122;
        result = sub_1D5BAA7D4(v122);
        if (v91)
        {
          goto LABEL_46;
        }

        *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v23[6] + 8 * result) = v90;
        result = sub_1D5B7C390(v123, (v23[7] + 32 * result));
        v92 = v23[2];
        v32 = __OFADD__(v92, 1);
        v37 = v92 + 1;
        if (v32)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v51 = v19[2];
      v52 = v19[3];
      v110[0] = v107;
      v53 = sub_1D5B5A498(0, &qword_1EDF1A720);
      v110[1] = v52;
      v110[4] = v53;
      v111[0] = v106;
      v111[4] = sub_1D5B5A498(0, qword_1EDF1A6A0);
      v111[1] = v51;
      sub_1D5C09D34();
      v23 = sub_1D726412C();
      sub_1D5EA77BC(v109, v17, 0);
      v54 = v51;
      v55 = v52;
      v56 = v107;
      v57 = v106;
      sub_1D691C890(v110, &v122, sub_1D5C09DD4);
      v58 = v122;
      result = sub_1D5BAA7D4(v122);
      if (v59)
      {
        goto LABEL_42;
      }

      *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v23[6] + 8 * result) = v58;
      result = sub_1D5B7C390(v123, (v23[7] + 32 * result));
      v60 = v23[2];
      v32 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v32)
      {
        goto LABEL_47;
      }

      v23[2] = v61;
      sub_1D691C890(v111, &v122, sub_1D5C09DD4);
      v62 = v122;
      result = sub_1D5BAA7D4(v122);
      if (v63)
      {
        goto LABEL_42;
      }

      *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v23[6] + 8 * result) = v62;
      result = sub_1D5B7C390(v123, (v23[7] + 32 * result));
      v64 = v23[2];
      v32 = __OFADD__(v64, 1);
      v37 = v64 + 1;
      if (v32)
      {
        goto LABEL_47;
      }
    }

LABEL_38:
    v23[2] = v37;
    sub_1D5C09DD4();
    swift_arrayDestroy();
    v12 += 24;
    v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v14 = sub_1D726203C();
    type metadata accessor for Key(0);
    sub_1D5C09E68();
    v15 = sub_1D7261D2C();

    v16 = [v13 initWithString:v14 attributes:v15];

    [v108 appendAttributedString_];
    sub_1D691C8F8(v109, v17, v18);

    if (!--v11)
    {
      goto LABEL_40;
    }
  }

  if (v18 == 3)
  {
    v65 = v19[12];
    v66 = v19[13];
    v116[0] = v107;
    v67 = sub_1D5B5A498(0, &qword_1EDF1A720);
    v116[1] = v66;
    v116[4] = v67;
    v117[0] = v106;
    v117[4] = sub_1D5B5A498(0, qword_1EDF1A6A0);
    v117[1] = v65;
    sub_1D5C09D34();
    v23 = sub_1D726412C();
    sub_1D5EA77BC(v109, v17, 3u);
    v68 = v65;
    v69 = v66;
    v70 = v107;
    v71 = v106;
    sub_1D691C890(v116, &v122, sub_1D5C09DD4);
    v72 = v122;
    result = sub_1D5BAA7D4(v122);
    if (v73)
    {
      goto LABEL_43;
    }

    *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v23[6] + 8 * result) = v72;
    result = sub_1D5B7C390(v123, (v23[7] + 32 * result));
    v74 = v23[2];
    v32 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v32)
    {
      goto LABEL_49;
    }

    v23[2] = v75;
    sub_1D691C890(v117, &v122, sub_1D5C09DD4);
    v76 = v122;
    result = sub_1D5BAA7D4(v122);
    if (v77)
    {
      goto LABEL_43;
    }

    *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v23[6] + 8 * result) = v76;
    result = sub_1D5B7C390(v123, (v23[7] + 32 * result));
    v78 = v23[2];
    v32 = __OFADD__(v78, 1);
    v37 = v78 + 1;
    if (v32)
    {
      goto LABEL_49;
    }

    goto LABEL_38;
  }

  if (v18 == 4)
  {
    v38 = v19[6];
    v39 = v19[7];
    v118[0] = v107;
    v118[4] = sub_1D5B5A498(0, &qword_1EDF1A720);
    v118[1] = v39;
    v119[0] = v106;
    v119[4] = sub_1D5B5A498(0, qword_1EDF1A6A0);
    v119[1] = v38;
    sub_1D5C09D34();
    v23 = sub_1D726412C();
    sub_1D5EA77BC(v109, v17, 4u);
    v40 = v38;
    v41 = v39;
    v42 = v107;
    v43 = v106;
    sub_1D691C890(v118, &v122, sub_1D5C09DD4);
    v44 = v122;
    result = sub_1D5BAA7D4(v122);
    if (v45)
    {
      goto LABEL_45;
    }

    *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v23[6] + 8 * result) = v44;
    result = sub_1D5B7C390(v123, (v23[7] + 32 * result));
    v46 = v23[2];
    v32 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v32)
    {
      goto LABEL_50;
    }

    v23[2] = v47;
    sub_1D691C890(v119, &v122, sub_1D5C09DD4);
    v48 = v122;
    result = sub_1D5BAA7D4(v122);
    if (v49)
    {
      goto LABEL_45;
    }

    *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v23[6] + 8 * result) = v48;
    result = sub_1D5B7C390(v123, (v23[7] + 32 * result));
    v50 = v23[2];
    v32 = __OFADD__(v50, 1);
    v37 = v50 + 1;
    if (v32)
    {
      goto LABEL_50;
    }

    goto LABEL_38;
  }

  v93 = v19[8];
  v94 = v19[9];
  v120[0] = v107;
  v120[4] = sub_1D5B5A498(0, &qword_1EDF1A720);
  v120[1] = v94;
  v121[0] = v106;
  v121[4] = sub_1D5B5A498(0, qword_1EDF1A6A0);
  v121[1] = v93;
  sub_1D5C09D34();
  v23 = sub_1D726412C();
  sub_1D5EA77BC(v109, v17, 5u);
  v95 = v93;
  v96 = v94;
  v97 = v107;
  v98 = v106;
  sub_1D691C890(v120, &v122, sub_1D5C09DD4);
  v99 = v122;
  result = sub_1D5BAA7D4(v122);
  if (v100)
  {
    goto LABEL_41;
  }

  *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(v23[6] + 8 * result) = v99;
  sub_1D5B7C390(v123, (v23[7] + 32 * result));
  v101 = v23[2];
  v32 = __OFADD__(v101, 1);
  v102 = v101 + 1;
  if (v32)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v23[2] = v102;
  sub_1D691C890(v121, &v122, sub_1D5C09DD4);
  v103 = v122;
  result = sub_1D5BAA7D4(v122);
  if ((v104 & 1) == 0)
  {
    *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v23[6] + 8 * result) = v103;
    sub_1D5B7C390(v123, (v23[7] + 32 * result));
    v105 = v23[2];
    v32 = __OFADD__(v105, 1);
    v37 = v105 + 1;
    if (v32)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

id sub_1D691C480(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D691C680(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x1E69DB970];
  v8 = v5;
  v9 = [v6 monospacedSystemFontOfSize:14.0 weight:v7];
  v10 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = a3;
  v12 = v11;
  v13 = a3;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v16 = sub_1D7261D2C();

  v17 = [v14 initWithString:v15 attributes:v16];

  return v17;
}

void sub_1D691C680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D691C6E4(uint64_t a1, uint64_t a2)
{
  sub_1D691C680(0, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D691C778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D691C890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D691C8F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_1D691C918(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatDebuggerSourceHighlight();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D691C974()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceFile);
  sub_1D607F0A4(v12);
  v2 = v12[5];
  v1[4] = v12[4];
  v1[5] = v2;
  v3 = v12[7];
  v1[6] = v12[6];
  v1[7] = v3;
  v4 = v12[1];
  *v1 = v12[0];
  v1[1] = v4;
  v5 = v12[3];
  v1[2] = v12[2];
  v1[3] = v5;
  *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_sourceMetrics) = 0;
  v6 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_textView;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v7 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_scrollView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___highlightView) = 0;
  v8 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineNumberLabel;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeView;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_edgeViewPadding) = 0x4020000000000000;
  v10 = (v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController_lineAndHighlightSize);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___charSize;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatDebuggerSourceViewController____lazy_storage___breakpointView) = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D691CB40()
{
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  qword_1EDFFC628 = qword_1EC881F18;
  unk_1EDFFC630 = unk_1EC881F20;
}

uint64_t sub_1D691CBAC(void *a1)
{
  v3 = v1;
  sub_1D691E3C0(0, &qword_1EC88E300, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D691E30C();
  sub_1D7264B5C();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  sub_1D60311A0(&qword_1EC8828B8);
  sub_1D726443C();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_1D5B9DFB4();
    sub_1D5B9DEDC(&qword_1EC8828C8, sub_1D5B9DFB4);
    sub_1D726443C();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_1D726443C();
    v13 = v3[3];
    HIBYTE(v12) = 3;
    sub_1D5B9E0D8(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
    sub_1D691E360(&qword_1EC8828C0);
    sub_1D726443C();
    v13 = v3[4];
    HIBYTE(v12) = 4;
    sub_1D5B99B3C();
    sub_1D5B9DEDC(&qword_1EC8828E0, sub_1D5B99B3C);
    sub_1D726443C();
    v13 = v3[5];
    HIBYTE(v12) = 5;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D691CF34()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6449676174;
  v4 = 0x7364496D657469;
  if (v1 != 4)
  {
    v4 = 0x496E6F6973736573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657461446E656573;
  if (v1 != 1)
  {
    v5 = 1684957547;
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

uint64_t sub_1D691CFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D691F0D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D691D004(uint64_t a1)
{
  v2 = sub_1D691E30C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D691D040(uint64_t a1)
{
  v2 = sub_1D691E30C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D691D07C()
{
  if (qword_1EDF140A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDFFC628;

  return v0;
}

uint64_t sub_1D691D0E4(uint64_t a1)
{
  v2 = sub_1D5B8FEA4();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1D691D130(uint64_t a1)
{
  v2 = sub_1D5B8FEA4();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1D691D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B8FEA4();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1D691D1E0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D691D5E0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D691D23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5B8FEA4();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1D691D288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B8FEA4();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1D691D2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5B8FEA4();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1D691D348()
{
  result = qword_1EC88E2E8;
  if (!qword_1EC88E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E2E8);
  }

  return result;
}

uint64_t sub_1D691D3A8()
{
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v3 >= 2)
  {
    sub_1D7263D4C();

    sub_1D725C4CC();
    sub_1D725C73C();

    if (v1)
    {
      MEMORY[0x1DA6F9910]();

      MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
      sub_1D725C4CC();
      sub_1D725C73C();

      MEMORY[0x1DA6F9910]();

      MEMORY[0x1DA6F9910](0x3D676174202CLL, 0xE600000000000000);
      MEMORY[0x1DA6F9910]();
      sub_1D5D25B88(v2, v3);
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D7263D4C();

    sub_1D725C4CC();
    sub_1D725C73C();

    if (v1)
    {
      MEMORY[0x1DA6F9910]();

      MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
      sub_1D725C4CC();
      sub_1D725C73C();

      MEMORY[0x1DA6F9910]();

LABEL_8:
      MEMORY[0x1DA6F9910](125, 0xE100000000000000);
      return 0x3D646E696B7BLL;
    }

    __break(1u);
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1D691D5E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v70[0] = a2;
  sub_1D691E3C0(0, &qword_1EC88E2F0, MEMORY[0x1E69E6F48]);
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v82 = v70 - v4;
  sub_1D5BA2EA8(0, &qword_1EDF17460, sub_1D5B9E4F4);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v84 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v81 = v70 - v10;
  v76 = MEMORY[0x1E69D6200];
  sub_1D5B999B0(0, &qword_1EDF17450, &qword_1EDF17458, MEMORY[0x1E69D6200], sub_1D5B9E0D8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v78 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v75 = v70 - v16;
  sub_1D5BA2EA8(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v79 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v70 - v22;
  v24 = MEMORY[0x1E69D6200];
  sub_1D5B999B0(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69D6200], sub_1D5BA2FE0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v70 - v31;
  sub_1D5BA2FE0(0, &qword_1EDF17448, v24);
  v34 = v33;
  v35 = *(v33 - 8);
  v36 = *(v35 + 56);
  v87 = v36;
  v37 = v35 + 56;
  v85 = v32;
  v36(v32, 1, 1, v33);
  v86 = v28;
  v36(v28, 1, 1, v34);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v80 = sub_1D725C4BC();
  sub_1D5BA21B0();
  v39 = v38;
  v40 = *(*(v38 - 8) + 56);
  v40(v23, 1, 1, v38);
  v40(v79, 1, 1, v39);
  sub_1D5B99A0C();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9DFB4();
  v70[1] = v41;
  swift_allocObject();
  v77 = sub_1D725C4BC();
  v42 = v34;
  v73 = v34;
  v74 = v37;
  v43 = v34;
  v44 = v87;
  v87(v85, 1, 1, v43);
  v44(v86, 1, 1, v42);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v79 = sub_1D725C4BC();
  sub_1D5B9E0D8(0, &qword_1EDF17458, v76);
  v46 = v45;
  v47 = *(*(v45 - 8) + 56);
  v47(v75, 1, 1, v45);
  v47(v78, 1, 1, v46);
  sub_1D5B9E0D8(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E0D8(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
  v49 = v48;
  swift_allocObject();
  v78 = sub_1D725C4BC();
  sub_1D5B9E4F4();
  v51 = v50;
  v52 = *(*(v50 - 8) + 56);
  v52(v81, 1, 1, v50);
  v52(v84, 1, 1, v51);
  sub_1D5B99AA0(0, &qword_1EDF173B8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B99B3C();
  v54 = v53;
  swift_allocObject();
  v84 = sub_1D725C4BC();
  v55 = v73;
  v56 = v87;
  v87(v85, 1, 1, v73);
  v56(v86, 1, 1, v55);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  sub_1D725C4BC();
  __swift_project_boxed_opaque_existential_1(v88, v88[3]);
  sub_1D691E30C();
  v57 = v83;
  v58 = v82;
  sub_1D7264B0C();
  if (v57)
  {

    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {
    v86 = v54;
    v87 = v49;
    v89 = 0;
    v59 = sub_1D60311A0(&qword_1EC882880);
    sub_1D726431C();
    v85 = v59;

    v60 = v90;
    v89 = 1;
    sub_1D5B9DEDC(&qword_1EC882890, sub_1D5B9DFB4);
    sub_1D726431C();
    v83 = v60;

    v62 = v90;
    v89 = 2;
    sub_1D726431C();

    v63 = v90;
    v89 = 3;
    sub_1D691E360(&qword_1EC882888);
    sub_1D726431C();
    v64 = v62;

    v65 = v90;
    v89 = 4;
    sub_1D5B9DEDC(&qword_1EC8828A8, sub_1D5B99B3C);
    sub_1D726431C();
    v87 = v63;

    v66 = v90;
    v89 = 5;
    sub_1D726431C();
    v67 = v83;
    (*(v71 + 8))(v58, v72);

    v68 = v90;
    result = __swift_destroy_boxed_opaque_existential_1(v88);
    v69 = v70[0];
    *v70[0] = v67;
    v69[1] = v64;
    v69[2] = v87;
    v69[3] = v65;
    v69[4] = v66;
    v69[5] = v68;
  }

  return result;
}

unint64_t sub_1D691E30C()
{
  result = qword_1EC88E2F8;
  if (!qword_1EC88E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E2F8);
  }

  return result;
}

uint64_t sub_1D691E360(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B9E0D8(255, &qword_1EDF17530, MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D691E3C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D691E30C();
    v7 = a3(a1, &type metadata for FeedGroupTrackerEntity.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D691E424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v83 = a2;
  v84 = a3;
  v81 = a1;
  v85 = a4;
  sub_1D5BA2EA8(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v82 = &v72 - v6;
  sub_1D5BA2EA8(0, &qword_1EDF17460, sub_1D5B9E4F4);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v80 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v79 = &v72 - v12;
  v77 = MEMORY[0x1E69D6200];
  sub_1D5B999B0(0, &qword_1EDF17450, &qword_1EDF17458, MEMORY[0x1E69D6200], sub_1D5B9E0D8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v78 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v76 = &v72 - v18;
  sub_1D5BA2EA8(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v89 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v72 - v24;
  v26 = MEMORY[0x1E69D6200];
  sub_1D5B999B0(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69D6200], sub_1D5BA2FE0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v72 - v33;
  sub_1D5BA2FE0(0, &qword_1EDF17448, v26);
  v36 = v35;
  v37 = *(v35 - 8);
  v38 = *(v37 + 56);
  v86 = v34;
  v87 = v37 + 56;
  v38(v34, 1, 1, v35);
  v73 = v30;
  v38(v30, 1, 1, v36);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v90 = sub_1D725C4BC();
  sub_1D5BA21B0();
  v40 = v39;
  v41 = *(*(v39 - 8) + 56);
  v41(v25, 1, 1, v39);
  v41(v89, 1, 1, v40);
  sub_1D5B99A0C();
  swift_allocObject();

  sub_1D725C71C();
  sub_1D5B9DFB4();
  swift_allocObject();
  v88 = sub_1D725C4BC();
  v74 = v36;
  v75 = v38;
  v38(v86, 1, 1, v36);
  v42 = v73;
  v38(v73, 1, 1, v36);
  swift_allocObject();

  v43 = v42;
  sub_1D725C71C();
  swift_allocObject();
  v89 = sub_1D725C4BC();
  sub_1D5B9E0D8(0, &qword_1EDF17458, v77);
  v45 = v44;
  v46 = *(*(v44 - 8) + 56);
  v46(v76, 1, 1, v44);
  v46(v78, 1, 1, v45);
  sub_1D5B9E0D8(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  swift_allocObject();

  sub_1D725C71C();
  sub_1D5B9E0D8(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v78 = sub_1D725C4BC();
  sub_1D5B9E4F4();
  v48 = v47;
  v49 = *(*(v47 - 8) + 56);
  v49(v79, 1, 1, v47);
  v49(v80, 1, 1, v48);
  sub_1D5B99AA0(0, &qword_1EDF173B8, MEMORY[0x1E69D6208]);
  swift_allocObject();

  sub_1D725C71C();
  sub_1D5B99B3C();
  swift_allocObject();
  v80 = sub_1D725C4BC();
  v51 = v74;
  v50 = v75;
  v75(v86, 1, 1, v74);
  v50(v43, 1, 1, v51);
  swift_allocObject();

  sub_1D725C71C();
  swift_allocObject();
  v52 = sub_1D725C4BC();

  sub_1D725C4CC();
  v53 = v81;
  v54 = v81[1];
  v93 = *v81;
  v94 = v54;

  sub_1D725C74C();

  sub_1D725C4CC();
  v55 = type metadata accessor for FeedCursorTrackerGroup();
  v56 = v55[10];
  v57 = sub_1D725891C();
  v58 = *(v57 - 8);
  v59 = v53 + v56;
  v60 = v82;
  (*(v58 + 16))(v82, v59, v57);
  (*(v58 + 56))(v60, 0, 1, v57);
  sub_1D725C74C();

  sub_1D725C4CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D726257C();
  v91 = v93;
  v92 = v94;
  sub_1D725C74C();

  v61 = v78;
  sub_1D725C4CC();
  v62 = (v53 + v55[11]);
  v63 = v62[1];
  v93 = *v62;
  v94 = v63;

  sub_1D725C74C();

  v64 = v80;
  sub_1D725C4CC();
  v93 = *(v53 + v55[12]);
  sub_1D5BA2EFC();
  swift_allocObject();

  v93 = sub_1D725C88C();
  sub_1D725C74C();

  sub_1D725C4CC();
  v65 = (v53 + v55[13]);
  v66 = v65[1];
  v93 = *v65;
  v94 = v66;

  sub_1D725C74C();

  v67 = v89;

  v68 = v88;

  v69 = v90;

  v71 = v85;
  *v85 = v69;
  v71[1] = v68;
  v71[2] = v67;
  v71[3] = v61;
  v71[4] = v64;
  v71[5] = v52;
  return result;
}

unint64_t sub_1D691EFCC()
{
  result = qword_1EC88E308;
  if (!qword_1EC88E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E308);
  }

  return result;
}

unint64_t sub_1D691F024()
{
  result = qword_1EC88E310;
  if (!qword_1EC88E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E310);
  }

  return result;
}

unint64_t sub_1D691F07C()
{
  result = qword_1EC88E318;
  if (!qword_1EC88E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E318);
  }

  return result;
}

uint64_t sub_1D691F0D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657461446E656573 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449676174 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7364496D657469 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
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

char *sub_1D691F2C8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed35DebugFormatMarkdownHeaderFooterView_label;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  if (a2)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v32.receiver = v2;
  v32.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v32, sel_initWithReuseIdentifier_, v6);

  v8 = OBJC_IVAR____TtC8NewsFeed35DebugFormatMarkdownHeaderFooterView_label;
  v9 = *&v7[OBJC_IVAR____TtC8NewsFeed35DebugFormatMarkdownHeaderFooterView_label];
  v10 = v7;
  [v9 setNumberOfLines_];
  [*&v7[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v10 contentView];
  [v11 addSubview_];

  v12 = objc_opt_self();
  sub_1D5E42B34();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7298B00;
  v14 = [*&v7[v8] topAnchor];
  v15 = [v10 contentView];
  v16 = [v15 topAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:16.0];
  *(v13 + 32) = v17;
  v18 = [*&v7[v8] leadingAnchor];
  v19 = [v10 contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:16.0];
  *(v13 + 40) = v21;
  v22 = [*&v7[v8] trailingAnchor];
  v23 = [v10 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:-16.0];
  *(v13 + 48) = v25;
  v26 = [*&v7[v8] bottomAnchor];
  v27 = [v10 contentView];

  v28 = [v27 bottomAnchor];
  v29 = [v26 constraintEqualToAnchor:v28 constant:-16.0];

  *(v13 + 56) = v29;
  sub_1D60D0DF4();
  v30 = sub_1D726265C();

  [v12 activateConstraints_];

  return v10;
}

uint64_t sub_1D691F76C()
{
  sub_1D5C44A68(0, &unk_1EDF3B920, sub_1D5C44878, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D691F858()
{
  if (!qword_1EC897670)
  {
    sub_1D725ABEC();
    sub_1D5B81B04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC897670);
    }
  }
}

uint64_t type metadata accessor for DebugFormatCacheFile()
{
  result = qword_1EC88E328;
  if (!qword_1EC88E328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D691F940()
{
  sub_1D691F9F4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DebugFormatCacheFileMetadata();
    if (v1 <= 0x3F)
    {
      sub_1D60CF7A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D691F9F4()
{
  if (!qword_1EC88E338)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88E338);
    }
  }
}

uint64_t sub_1D691FA44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v72 = type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage();
  MEMORY[0x1EEE9AC00](v72, v3);
  v70 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725BD1C();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v67 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CF7A4();
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DebugFormatCacheFileMetadata();
  MEMORY[0x1EEE9AC00](v74, v12);
  v76 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6920B6C(0, &qword_1EC88E340, MEMORY[0x1E69E6F48]);
  v15 = v14;
  v75 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v59 - v17;
  v19 = type metadata accessor for DebugFormatCacheFile();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69208D8();
  v23 = v77;
  sub_1D7264B0C();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v11;
  v77 = v19;
  v25 = v22;
  LOBYTE(v78) = 3;
  sub_1D6920C78(&qword_1EC88E350, type metadata accessor for DebugFormatCacheFileMetadata);
  sub_1D726431C();
  v26 = v15;
  v27 = v18;
  v29 = v77;
  v30 = *(v77 + 28);
  v31 = v26;
  v32 = v27;
  sub_1D69209D4(v76, &v22[v30], type metadata accessor for DebugFormatCacheFileMetadata);
  v82 = 0;
  sub_1D692092C();
  sub_1D726431C();
  v33 = v79;
  v34 = v80;
  v35 = v81;
  *v22 = v78;
  *(v22 + 1) = v33;
  v76 = v33;
  *(v22 + 2) = v34;
  v22[24] = v35;
  LOBYTE(v78) = 1;
  v36 = sub_1D72642BC();
  v74 = v30;
  *(v22 + 4) = v36;
  *(v22 + 5) = v37;
  v82 = 2;
  sub_1D6920980();
  v66 = 0;
  sub_1D726427C();
  v65 = v78;
  *(v22 + 6) = v78;
  LOBYTE(v78) = 4;
  sub_1D6920C78(&qword_1EC88E368, sub_1D60CF7A4);
  sub_1D726431C();
  v64 = v32;
  v73 = v31;
  sub_1D69209D4(v24, &v22[*(v29 + 32)], sub_1D60CF7A4);
  if (v65)
  {
    v41 = v65 + *(*v65 + *MEMORY[0x1E69E6B68] + 16);
    swift_beginAccess();
    v42 = *(v72 + 32);
    v44 = v68;
    v43 = v69;
    v45 = *(v68 + 16);
    v61 = v41;
    v62 = v45;
    v46 = v41 + v42;
    v47 = v67;
    v63 = v68 + 16;
    v45(v67, v46, v69);
    v48 = qword_1EC87DD08;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v43, qword_1EC9BADE0);
    sub_1D6920C78(&qword_1EDF178B8, MEMORY[0x1E69D6B38]);
    v60 = v49;
    v50 = v47;
    v51 = sub_1D7261FBC();
    (*(v44 + 8))(v50, v43);
    v52 = v70;
    if ((v51 & 1) == 0)
    {
      v71 = type metadata accessor for DebugFormatManagerError();
      sub_1D6920C78(&qword_1EC88E370, type metadata accessor for DebugFormatManagerError);
      swift_allocError();
      v54 = v53;
      sub_1D6920A3C();
      v68 = *(v55 + 48);
      sub_1D6920AA4(v61, v52, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
      v56 = v62;
      v62(v54, v52 + *(v72 + 32), v43);
      sub_1D6920B0C(v52, type metadata accessor for FormatDerivedDataFile._$CopyOnWriteStorage);
      v56(v54 + v68, v60, v43);
      v57 = v25;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v75 + 8))(v64, v73);
      v58 = v77;
      v38 = v66;
      __swift_destroy_boxed_opaque_existential_1(a1);

      if (!v38)
      {
      }

      sub_1D6920B0C(&v57[v74], type metadata accessor for DebugFormatCacheFileMetadata);
      v39 = sub_1D60CF7A4;
      v40 = &v57[*(v58 + 32)];
      return sub_1D6920B0C(v40, v39);
    }

    (*(v75 + 8))(v64, v73);
  }

  else
  {
    (*(v75 + 8))(v64, v73);
  }

  sub_1D6920AA4(v22, v71, type metadata accessor for DebugFormatCacheFile);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39 = type metadata accessor for DebugFormatCacheFile;
  v40 = v22;
  return sub_1D6920B0C(v40, v39);
}

uint64_t sub_1D69203B0(void *a1)
{
  v3 = v1;
  sub_1D6920B6C(0, &qword_1EC88E380, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69208D8();
  sub_1D7264B5C();
  v11 = v3[1];
  v12 = v3[2];
  v13 = *(v3 + 24);
  v17 = *v3;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v16 = 0;
  sub_1D6920BD0();
  sub_1D726443C();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_1D72643FC();
    v17 = v3[6];
    v16 = 2;
    sub_1D6920C24();
    sub_1D72643BC();
    type metadata accessor for DebugFormatCacheFile();
    LOBYTE(v17) = 3;
    type metadata accessor for DebugFormatCacheFileMetadata();
    sub_1D6920C78(&qword_1EC88E398, type metadata accessor for DebugFormatCacheFileMetadata);
    sub_1D726443C();
    LOBYTE(v17) = 4;
    sub_1D60CF7A4();
    sub_1D6920C78(&qword_1EC88E3A0, sub_1D60CF7A4);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6920680()
{
  v1 = *v0;
  v2 = 0x6C69466775626564;
  v3 = 0x4464657669726564;
  v4 = 0x617461646174656DLL;
  if (v1 != 3)
  {
    v4 = 0x746C75736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D692072C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6920DD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6920754(uint64_t a1)
{
  v2 = sub_1D69208D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6920790(uint64_t a1)
{
  v2 = sub_1D69208D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6920800(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4 != v6)
  {
    return 0;
  }

  if ((v5 ^ v7))
  {
    return 0;
  }

  v9 = *(type metadata accessor for DebugFormatCacheFile() + 28);
  v10 = a1 + v9;
  v11 = a2 + v9;
  if ((sub_1D725BCBC() & 1) == 0)
  {
    return 0;
  }

  v12 = *(type metadata accessor for DebugFormatCacheFileMetadata() + 20);
  v13 = *(v10 + v12);
  v14 = *(v11 + v12);

  return sub_1D670933C(v13, v14);
}

unint64_t sub_1D69208D8()
{
  result = qword_1EC88E348;
  if (!qword_1EC88E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E348);
  }

  return result;
}

unint64_t sub_1D692092C()
{
  result = qword_1EC88E358;
  if (!qword_1EC88E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E358);
  }

  return result;
}

unint64_t sub_1D6920980()
{
  result = qword_1EC88E360;
  if (!qword_1EC88E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E360);
  }

  return result;
}

uint64_t sub_1D69209D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6920A3C()
{
  if (!qword_1EC88E378)
  {
    sub_1D725BD1C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88E378);
    }
  }
}

uint64_t sub_1D6920AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6920B0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6920B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69208D8();
    v7 = a3(a1, &type metadata for DebugFormatCacheFile.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6920BD0()
{
  result = qword_1EC88E388;
  if (!qword_1EC88E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E388);
  }

  return result;
}

unint64_t sub_1D6920C24()
{
  result = qword_1EC88E390;
  if (!qword_1EC88E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E390);
  }

  return result;
}

uint64_t sub_1D6920C78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6920CD4()
{
  result = qword_1EC88E3A8;
  if (!qword_1EC88E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E3A8);
  }

  return result;
}

unint64_t sub_1D6920D2C()
{
  result = qword_1EC88E3B0;
  if (!qword_1EC88E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E3B0);
  }

  return result;
}

unint64_t sub_1D6920D84()
{
  result = qword_1EC88E3B8;
  if (!qword_1EC88E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E3B8);
  }

  return result;
}

uint64_t sub_1D6920DD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C69466775626564 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73DC1A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4464657669726564 && a2 == 0xEF656C6946617461 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D6920F9C(uint64_t a1)
{
  sub_1D5EA74B8();
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v1;
  v44 = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, v7, 0);
  v8 = v44;
  v9 = a1 + 56;
  result = sub_1D7263B7C();
  v11 = result;
  v12 = 0;
  v36 = a1 + 64;
  v37 = v7;
  v38 = a1;
  v39 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    v41 = v12;
    v42 = v15;
    v16 = (*(a1 + 48) + 16 * v11);
    v43 = v8;
    v18 = *v16;
    v17 = v16[1];
    v19 = type metadata accessor for FormatInspectionItem(0);
    v20 = &v6[*(v19 + 24)];
    *v20 = 0;
    *(v20 + 1) = 0xE000000000000000;
    v21 = v6;
    v22 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v23 = *(*(v22 - 8) + 56);
    v24 = v22;
    v6 = v21;
    v23(v20, 0, 1, v24);
    *v21 = v18;
    *(v21 + 1) = v17;
    v8 = v43;
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    v25 = &v21[*(v19 + 28)];
    *v25 = 0;
    *(v25 + 1) = 0;
    v25[16] = -1;
    (*(*(v19 - 8) + 56))(v21, 0, 1, v19);
    v44 = v8;
    v27 = *(v8 + 16);
    v26 = *(v8 + 24);

    if (v27 >= v26 >> 1)
    {
      sub_1D69972A4(v26 > 1, v27 + 1, 1);
      v8 = v44;
    }

    *(v8 + 16) = v27 + 1;
    result = sub_1D5CAD7EC(v21, v8 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v27, sub_1D5EA74B8);
    a1 = v38;
    v9 = v39;
    v13 = 1 << *(v38 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v28 = *(v39 + 8 * v14);
    if ((v28 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v42 != *(v38 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v11 & 0x3F));
    if (v29)
    {
      v13 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v14 << 6;
      v31 = v14 + 1;
      v32 = (v36 + 8 * v14);
      while (v31 < (v13 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_1D5C86234(v11, v42, 0);
          v13 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_1D5C86234(v11, v42, 0);
    }

LABEL_4:
    v12 = v41 + 1;
    v11 = v13;
    if (v41 + 1 == v37)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}