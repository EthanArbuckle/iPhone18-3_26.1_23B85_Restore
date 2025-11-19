size_t sub_1D6331504@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DebugInspectViewItem();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v13 = (&v31 - v12);
  v38 = MEMORY[0x1E69E7CC0];
  v14 = *(a1 + 96);
  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_25;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    v34 = v11;
    if (!v16)
    {
      break;
    }

    v18 = v14;
    v37 = MEMORY[0x1E69E7CC0];
    result = sub_1D69991E8(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v17 = v37;
    v32 = v13;
    v33 = a2;
    v31 = a1;
    v36 = v16;
    if (v15)
    {
      v35 = v18 & 0xFFFFFFFFFFFFFF8;
      v11 = sub_1D7263BFC();
      v20 = v18;
    }

    else
    {
      v20 = v18;
      v35 = v18 & 0xFFFFFFFFFFFFFF8;
      v11 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    a1 = v20 & 0xC000000000000001;
    a2 = v11 & ~(v11 >> 63);
    while (a2 != v13)
    {
      if (a1)
      {
        v21 = MEMORY[0x1DA6FB460](v13);
      }

      else
      {
        if (v13 >= *(v35 + 16))
        {
          goto LABEL_24;
        }
      }

      *v8 = 0x656D656854;
      v8[1] = 0xE500000000000000;
      v8[2] = v21;
      swift_storeEnumTagMultiPayload();
      v37 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      v15 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_1D69991E8(v22 > 1, v23 + 1, 1);
        v17 = v37;
      }

      v13 = (v13 + 1);
      *(v17 + 16) = v15;
      v11 = sub_1D5BDAAA4(v8, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, type metadata accessor for DebugInspectViewItem);
      if (v36 == v13)
      {
        v13 = v32;
        a2 = v33;
        a1 = v31;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v28 = v11;
    v29 = v14;
    v30 = sub_1D7263BFC();
    v14 = v29;
    v16 = v30;
    v11 = v28;
  }

LABEL_18:
  sub_1D6987C38(v17);
  v24 = *(a1 + 48);
  *v13 = 0x74756F79614CLL;
  v13[1] = 0xE600000000000000;
  v13[2] = v24;
  swift_storeEnumTagMultiPayload();
  v25 = v38;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1D6993828(0, v25[2] + 1, 1, v25);
  }

  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1D6993828(v26 > 1, v27 + 1, 1, v25);
  }

  v25[2] = v27 + 1;
  result = sub_1D5BDAAA4(v13, v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, type metadata accessor for DebugInspectViewItem);
  *a2 = xmmword_1D72BA460;
  *(a2 + 16) = 0xD000000000000071;
  *(a2 + 24) = 0x80000001D73D1EB0;
  *(a2 + 32) = v25;
  *(a2 + 40) = 9;
  return result;
}

uint64_t sub_1D63318B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v60 = type metadata accessor for FeedItem(0);
  v52 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DebugInspectViewItem();
  v8 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v9);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DebugInspectViewResult();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (a1 + *(type metadata accessor for DebugGroupLayoutKey() + 24));
  v21 = v20[4];
  v22 = v20[5];
  v57 = v20;
  __swift_project_boxed_opaque_existential_1(v20 + 1, v21);
  v23 = *((*(v22 + 16))(v21, v22) + 16);

  v56 = a2;
  sub_1D6332950(a2, v15, type metadata accessor for DebugInspectViewResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6332768();
  }

  else
  {
    sub_1D63327EC();
  }

  sub_1D5BDAAA4(v15, v19, type metadata accessor for GroupLayoutBindingContext);
  v25 = GroupLayoutBindingContext.count.getter();
  result = sub_1D6332B48(v19, type metadata accessor for GroupLayoutBindingContext);
  if (__OFSUB__(v23, v25))
  {
    __break(1u);
  }

  else
  {
    v27 = v57;
    v28 = v57[4];
    v29 = v57[5];
    v53 = v23 - v25;
    __swift_project_boxed_opaque_existential_1(v57 + 1, v28);
    v30 = (*(v29 + 16))(v28, v29);
    MEMORY[0x1EEE9AC00](v30, v31);
    *(&v51 - 2) = v56;
    v54 = sub_1D632A750(0, sub_1D6332A34, (&v51 - 4), v30);

    v62 = 0x2820736D657449;
    v63 = 0xE700000000000000;
    v61 = v23;
    v32 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v32);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    v55 = v63;
    v56 = v62;
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73D20E0);
    v61 = v53;
    v33 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v33);

    MEMORY[0x1DA6F9910](0x20666F2074756F20, 0xE800000000000000);
    v61 = v23;
    v34 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v34);

    MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73D2100);
    v61 = v54;
    v35 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v35);

    MEMORY[0x1DA6F9910](0x7469206465656620, 0xEC0000002E736D65);
    v36 = v62;
    v54 = v63;
    v37 = v27[4];
    v38 = v27[5];
    __swift_project_boxed_opaque_existential_1(v27 + 1, v37);
    v39 = (*(v38 + 16))(v37, v38);
    v40 = *(v39 + 16);
    if (v40)
    {
      v57 = v36;
      v62 = MEMORY[0x1E69E7CC0];
      sub_1D69991E8(0, v40, 0);
      v41 = v62;
      v42 = *(v52 + 80);
      v53 = v39;
      v43 = v39 + ((v42 + 32) & ~v42);
      v44 = *(v52 + 72);
      do
      {
        sub_1D6332950(v43, v7, type metadata accessor for FeedItem);
        v11[3] = v60;
        v11[4] = sub_1D6332A8C(&qword_1EDF34F30, type metadata accessor for FeedItem);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
        sub_1D5BDAAA4(v7, boxed_opaque_existential_1, type metadata accessor for FeedItem);
        swift_storeEnumTagMultiPayload();
        v62 = v41;
        v47 = *(v41 + 16);
        v46 = *(v41 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1D69991E8(v46 > 1, v47 + 1, 1);
          v41 = v62;
        }

        *(v41 + 16) = v47 + 1;
        sub_1D5BDAAA4(v11, v41 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v47, type metadata accessor for DebugInspectViewItem);
        v43 += v44;
        --v40;
      }

      while (v40);

      v36 = v57;
      v48 = v58;
    }

    else
    {

      v41 = MEMORY[0x1E69E7CC0];
      v48 = v58;
    }

    v49 = v55;
    *v48 = v56;
    *(v48 + 8) = v49;
    v50 = v54;
    *(v48 + 16) = v36;
    *(v48 + 24) = v50;
    *(v48 + 32) = v41;
    *(v48 + 40) = 4;
  }

  return result;
}

double sub_1D6331F7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D632E574(a1);
  v5 = (a1 + *(type metadata accessor for DebugGroupLayoutKey() + 24));
  v6 = v5[4];
  v7 = v5[5];
  __swift_project_boxed_opaque_existential_1(v5 + 1, v6);
  (*(v7 + 64))(&v14, v6, v7);
  v8 = v16;
  if (v16)
  {
    v9 = v17;
    __swift_project_boxed_opaque_existential_1(&v14, v16);
    if ((*(v9 + 32))(v8, v9))
    {
    }

    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    sub_1D6330678(&v14);
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000057, 0x80000001D73D1F30);

  v10 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v10);

  MEMORY[0x1DA6F9910](0x736D65746920, 0xE600000000000000);
  v11 = v14;
  v12 = v15;
  result = 3.98475595e252;
  *a2 = xmmword_1D72BA470;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1D633212C@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugInspectViewItem();
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DebugGroupLayoutKey();
  v11 = *(v44 + 28);
  v12 = sub_1D7259EEC();
  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v52[0] = 0xD000000000000017;
  v52[1] = 0x80000001D73BE860;
  v49 = v12;
  v13 = UIContentSizeCategory.description.getter();
  MEMORY[0x1DA6F9910](v13);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v14 = v52[0];
  v43 = v52[1];
  v15 = *(a1 + 5);
  v16 = *(a1 + 6);
  __swift_project_boxed_opaque_existential_1(a1 + 2, v15);
  v45 = v11;
  sub_1D5F59850(&a1[v11], v15, v16);
  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  sub_1D7263D4C();
  v18 = *(a1 + 5);
  v17 = *(a1 + 6);
  __swift_project_boxed_opaque_existential_1(a1 + 2, v18);
  (*(v17 + 40))(&v54, v18, v17);
  v19 = v54;
  LOBYTE(v18) = v55;
  v52[5] = v54;
  v53 = v55;
  v20 = GroupLayoutContentSizeCategory.description.getter();
  v22 = v21;
  sub_1D5BEEACC(v19, v18);

  v52[0] = v20;
  v52[1] = v22;
  MEMORY[0x1DA6F9910](0xD000000000000016, 0x80000001D73D1F90);
  v23 = v52[1];
  *v10 = v52[0];
  *(v10 + 1) = v23;
  v24 = v43;
  *(v10 + 2) = v14;
  *(v10 + 3) = v24;
  v10[32] = 0;
  swift_storeEnumTagMultiPayload();
  v25 = *(a1 + 5);
  v26 = *(a1 + 6);
  __swift_project_boxed_opaque_existential_1(a1 + 2, v25);
  v27 = (*(v26 + 24))(v25, v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  *(&v43 - 2) = a1;
  v29 = sub_1D5ECC608(sub_1D63328D8, (&v43 - 4), v27);

  v30 = v46;
  sub_1D6332950(&a1[*(v44 + 24)], v46, type metadata accessor for GroupLayoutBindingContext);
  v31 = *(a1 + 5);
  v32 = *(a1 + 6);
  __swift_project_boxed_opaque_existential_1(a1 + 2, v31);
  (*(v32 + 56))(v52, v30, &a1[v45], v31, v32);
  __swift_destroy_boxed_opaque_existential_1(v52);
  sub_1D6332B48(v30, type metadata accessor for GroupLayoutBindingContext);
  v33 = MEMORY[0x1E69E7CC0];
  v34 = v48;
  sub_1D5BB1438(0, &unk_1EC88EC00, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E6F90]);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D7273AE0;
  sub_1D6332950(v10, v36 + v35, type metadata accessor for DebugInspectViewItem);
  v51 = v36;
  sub_1D6987C38(v29);
  sub_1D6987C38(v33);
  v37 = v51;
  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  sub_1D7263D4C();

  strcpy(v52, "Requirements (");
  HIBYTE(v52[1]) = -18;
  v54 = *(v37 + 16);
  v38 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v38);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);

  v39 = v52[0];
  v40 = v52[1];
  result = sub_1D6332B48(v10, type metadata accessor for DebugInspectViewItem);
  v42 = v50;
  *v50 = v39;
  v42[1] = v40;
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v37;
  *(v42 + 40) = 8;
  return result;
}

void sub_1D6332768()
{
  if (!qword_1EC885EC8)
  {
    type metadata accessor for GroupLayoutBindingContext();
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC885EC8);
    }
  }
}

void sub_1D63327EC()
{
  if (!qword_1EC892170)
  {
    type metadata accessor for GroupLayoutBindingContext();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC892170);
    }
  }
}

uint64_t sub_1D6332888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1D6332950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D63329B8()
{
  if (!qword_1EC885ED8)
  {
    sub_1D5B49474(255, &qword_1EDF3FA20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC885ED8);
    }
  }
}

BOOL sub_1D6332A34@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  result = sub_1D633075C(a2, v6);
  if (__OFADD__(v7, result))
  {
    __break(1u);
  }

  else
  {
    *a3 = v7 + result;
  }

  return result;
}

uint64_t sub_1D6332A8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6332AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6332B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6332C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7261ACC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v32 = v8;
    v33 = v5;
    v34 = v4;
    v35 = a1;
    v36 = a2;
    v37 = 0x80000001D73BB730;

    v12 = 0;
    v13 = 72;
    while (v12 < *(v10 + 16))
    {
      v14 = *(v10 + v13);
      if (v14 <= 4 && *(v10 + v13) <= 2u && v14 != 1 && v14 != 2)
      {

LABEL_16:

        sub_1D5B5A498(0, &qword_1EDF1AA30);
        v22 = v32;
        v21 = v33;
        v23 = v34;
        (*(v33 + 104))(v32, *MEMORY[0x1E69E7F88], v34);
        v24 = sub_1D72630CC();
        (*(v21 + 8))(v22, v23);
        v25 = v35;
        v26 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_key;
        sub_1D68D8814(v35 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_key);
        sub_1D6E586DC(v25 + v26);
        sub_1D725B91C();

        v27 = sub_1D726308C();
        v28 = swift_allocObject();
        v28[2] = v12;
        v28[3] = sub_1D63331A8;
        v29 = v36;
        v28[4] = v36;
        v37 = type metadata accessor for DebugInspectViewDataSource();

        sub_1D725BA9C();

        v30 = sub_1D726308C();
        v31 = swift_allocObject();
        v31[2] = v12;
        v31[3] = sub_1D63331A8;
        v31[4] = v29;

        sub_1D725BADC();

        goto LABEL_17;
      }

      v15 = sub_1D72646CC();

      if (v15)
      {
        goto LABEL_16;
      }

      ++v12;
      v13 += 48;
      if (v11 == v12)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_12:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector;
      v18 = Strong;

      *&v18[v17] = sub_1D6C76CB4(v19, MEMORY[0x1E69E7CC0]);

      v20 = [v18 navigationItem];
      [v20 setSearchController_];

      [*&v18[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView] reloadData];
    }

    else
    {
LABEL_17:
    }
  }
}

uint64_t sub_1D63331DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t FormatButtonNodeLayoutAttributes.__allocating_init(layoutAttributes:stateMaskLayoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:name:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  result = swift_allocObject();
  v18 = *a3;
  v19 = *a5;
  v20 = *a7;
  v21 = *(a7 + 8);
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v18;
  *(result + 40) = a4;
  *(result + 48) = v19;
  *(result + 56) = a6;
  *(result + 64) = v20;
  *(result + 72) = v21;
  *(result + 80) = a8;
  *(result + 88) = a9;
  return result;
}

unint64_t FormatButtonNodeLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatButtonNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t FormatButtonNodeLayoutAttributes.name.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t FormatButtonNodeLayoutAttributes.init(layoutAttributes:stateMaskLayoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:name:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v10 = *a3;
  v11 = *a5;
  v12 = *a7;
  v13 = *(a7 + 8);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v10;
  *(v9 + 40) = a4;
  *(v9 + 48) = v11;
  *(v9 + 56) = a6;
  *(v9 + 64) = v12;
  *(v9 + 72) = v13;
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  return v9;
}

uint64_t FormatButtonNodeLayoutAttributes.identifier.getter()
{
  v1 = *(*(v0 + 16) + 48);

  return v1;
}

uint64_t sub_1D63333EC()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000011;
    if (v1 != 6)
    {
      v5 = 1701667182;
    }

    v6 = 0xD000000000000018;
    if (v1 == 4)
    {
      v6 = 0x696C696269736976;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x676E697A69736572;
    if (v1 != 2)
    {
      v2 = 0x7865646E497ALL;
    }

    v3 = 0xD000000000000010;
    if (*v0)
    {
      v3 = 0xD000000000000019;
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

uint64_t sub_1D63334F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D63346D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6333518(uint64_t a1)
{
  v2 = sub_1D63339CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6333554(uint64_t a1)
{
  v2 = sub_1D63339CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatButtonNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 48));

  return v0;
}

uint64_t FormatButtonNodeLayoutAttributes.__deallocating_deinit()
{

  sub_1D5EB15C4(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t FormatButtonNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6334064(0, &qword_1EC885EE0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D63339CC();
  sub_1D7264B5C();
  v13 = *(v3 + 16);
  v15 = 0;
  type metadata accessor for FormatLayoutAttributes();
  sub_1D6334518(&qword_1EDF28600, 255, type metadata accessor for FormatLayoutAttributes);
  sub_1D726443C();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v15 = 1;
    sub_1D6333A20();
    sub_1D63340C8(&qword_1EC885EF8, sub_1D5C65AD4, sub_1D6333AD8);
    sub_1D726443C();
    v13 = *(v3 + 32);
    v15 = 2;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v13) = 3;
    sub_1D726442C();
    v13 = *(v3 + 48);
    v15 = 4;
    sub_1D5EB1500(v13);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v13);
    LOBYTE(v13) = 5;
    sub_1D726440C();
    v11 = *(v3 + 72);
    v13 = *(v3 + 64);
    v14 = v11;
    v15 = 6;
    sub_1D5F8F434();
    sub_1D72643BC();
    LOBYTE(v13) = 7;
    sub_1D726437C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D63339CC()
{
  result = qword_1EC885EE8;
  if (!qword_1EC885EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885EE8);
  }

  return result;
}

void sub_1D6333A20()
{
  if (!qword_1EC885EF0)
  {
    sub_1D6333A84();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885EF0);
    }
  }
}

unint64_t sub_1D6333A84()
{
  result = qword_1EDF25720;
  if (!qword_1EDF25720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25720);
  }

  return result;
}

unint64_t sub_1D6333AD8()
{
  result = qword_1EC885F00;
  if (!qword_1EC885F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F00);
  }

  return result;
}

uint64_t FormatButtonNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatButtonNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

uint64_t FormatButtonNodeLayoutAttributes.init(from:)(void *a1)
{
  v3 = v1;
  sub_1D6334064(0, &qword_1EC885F08, MEMORY[0x1E69E6F48]);
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D63339CC();
  v21 = v9;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v17 = a1;
  }

  else
  {
    v10 = v6;
    type metadata accessor for FormatLayoutAttributes();
    v24 = 0;
    sub_1D6334518(&qword_1EDF285F8, 255, type metadata accessor for FormatLayoutAttributes);
    v11 = v20;
    sub_1D726431C();
    *(v1 + 16) = v22;
    sub_1D6333A20();
    v24 = 1;
    sub_1D63340C8(&qword_1EC885F10, sub_1D5C65A80, sub_1D633414C);
    sub_1D726431C();
    *(v1 + 24) = v22;
    v24 = 2;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 32) = v22;
    LOBYTE(v22) = 3;
    *(v1 + 40) = sub_1D72642FC();
    v24 = 4;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 48) = v22;
    LOBYTE(v22) = 5;
    *(v1 + 56) = sub_1D72642CC() & 1;
    v24 = 6;
    sub_1D5C6F27C();
    sub_1D726427C();
    v19 = a1;
    v13 = v23;
    *(v1 + 64) = v22;
    *(v1 + 72) = v13;
    LOBYTE(v22) = 7;
    v14 = sub_1D726422C();
    v16 = v15;
    (*(v10 + 8))(v21, v11);
    *(v3 + 80) = v14;
    *(v3 + 88) = v16;
    v17 = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v3;
}

void sub_1D6334064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D63339CC();
    v7 = a3(a1, &type metadata for FormatButtonNodeLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D63340C8(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6333A20();
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D633414C()
{
  result = qword_1EC885F18;
  if (!qword_1EC885F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F18);
  }

  return result;
}

uint64_t sub_1D63341B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatButtonNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6334230@<X0>(uint64_t *a1@<X8>)
{
  result = FormatButtonNodeLayoutAttributes.flipRightToLeft(bounds:)();
  *a1 = result;
  return result;
}

uint64_t FormatButtonNodeLayoutAttributes.flipRightToLeft(bounds:)()
{
  v1 = v0;
  type metadata accessor for FormatLayoutAttributes();
  sub_1D6334518(&qword_1EDF28608, 255, type metadata accessor for FormatLayoutAttributes);
  sub_1D725A24C();
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v13 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v14;
  *(v11 + 24) = v2;
  *(v11 + 32) = v3;
  *(v11 + 40) = v5;
  *(v11 + 48) = v4;
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  *(v11 + 72) = v8;
  *(v11 + 80) = v13;
  *(v11 + 88) = v10;

  sub_1D5EB1500(v4);

  return v11;
}

uint64_t sub_1D6334518(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1D63345D0()
{
  result = qword_1EC885F40;
  if (!qword_1EC885F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F40);
  }

  return result;
}

unint64_t sub_1D6334628()
{
  result = qword_1EC885F48;
  if (!qword_1EC885F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F48);
  }

  return result;
}

unint64_t sub_1D6334680()
{
  result = qword_1EC885F50;
  if (!qword_1EC885F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F50);
  }

  return result;
}

uint64_t sub_1D63346D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73C46E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D73C0400 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_1D72646CC();

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

void *TagFeedHeadlineResult.fetchedFreeRange.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *TagFeedHeadlineResult.fetchedPaidRange.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_1D63349DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D6334A24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SportsRecordRank.rankContext.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SportsRecordRank.rankDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (qword_1EC87D7E8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC885F58;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v6 = [v4 stringFromNumber_];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1D726207C();
  v9 = v8;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D5C384A0();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7270C10;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D5B7E2C0();
  *(v12 + 32) = v7;
  *(v12 + 40) = v9;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = v2;
  *(v12 + 80) = v3;

  v15 = sub_1D72620BC();

  return v15;
}

uint64_t static SportsRecordRank.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D6334CD8()
{
  if (*v0)
  {
    return 0x746E6F436B6E6172;
  }

  else
  {
    return 1802396018;
  }
}

uint64_t sub_1D6334D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802396018 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6F436B6E6172 && a2 == 0xEB00000000747865)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D6334DF4(uint64_t a1)
{
  v2 = sub_1D6335338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6334E30(uint64_t a1)
{
  v2 = sub_1D6335338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsRecordRank.encode(to:)(void *a1)
{
  sub_1D633538C(0, &qword_1EC885F60, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  v10 = *(v1 + 8);
  v12[0] = *(v1 + 16);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6335338();
  sub_1D7264B5C();
  v14 = 0;
  sub_1D726442C();
  if (!v2)
  {
    v13 = 1;
    sub_1D72643FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SportsRecordRank.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D633538C(0, &qword_1EC885F70, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6335338();
  sub_1D7264B0C();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_1D72642FC();
    v17 = 1;
    v13 = sub_1D72642BC();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D63351D0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

id sub_1D6335218()
{
  v0 = sub_1D7258AAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1D7258A4C();
  v6 = sub_1D72589DC();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  result = [v5 setNumberStyle_];
  qword_1EC885F58 = v5;
  return result;
}

unint64_t sub_1D6335338()
{
  result = qword_1EC885F68;
  if (!qword_1EC885F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F68);
  }

  return result;
}

void sub_1D633538C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6335338();
    v7 = a3(a1, &type metadata for SportsRecordRank.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6335438()
{
  result = qword_1EC885F78;
  if (!qword_1EC885F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F78);
  }

  return result;
}

unint64_t sub_1D6335490()
{
  result = qword_1EC885F80;
  if (!qword_1EC885F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F80);
  }

  return result;
}

unint64_t sub_1D63354E8()
{
  result = qword_1EC885F88;
  if (!qword_1EC885F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F88);
  }

  return result;
}

uint64_t FormatHeadlineBinding.DateTime.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v45 - v20;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v46 = v25;
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.DateTime, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatHeadlineBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v28, v25, v29, &off_1F51F6CF8);
  if (v26 <= 1)
  {
    if (v26)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCCA8);
      (*(*(v42 - 8) + 16))(v17, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D64250E0(1, v17);
      v34 = v17;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCCA8);
      (*(*(v35 - 8) + 16))(v21, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D64250E0(0, v21);
      v34 = v21;
    }
  }

  else if (v26 == 2)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCCA8);
    (*(*(v37 - 8) + 16))(v13, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D64250E0(2, v13);
    v34 = v13;
  }

  else if (v26 == 3)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCCA8);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D64250E0(3, v9);
    v34 = v9;
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCCA8);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D64250E0(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t FormatPercentFillSizing.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6657F24();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6657FB8();
  sub_1D5B58B84(&qword_1EDF251B8, sub_1D6657FB8);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x61746E6563726570, 0xEA00000000006567, 0x676E6963617073, 0xE700000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5DF946C();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPercentFillSizing.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v66 - v8);
  sub_1D6658138();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v73 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6657FB8();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF251B8, sub_1D6657FB8);
  sub_1D5D2EE70(&type metadata for FormatPercentFillSizing, v19, v21, v16, &type metadata for FormatPercentFillSizing, v19, &type metadata for FormatVersions.StarSky, v17, v14, v20, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD50);
  v24 = *(v22 - 8);
  v70 = *(v24 + 16);
  v71 = v23;
  v69 = v24 + 16;
  v70(v9);
  v68 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v15;
  v82 = 0uLL;
  v83 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v81 = 0;
  v28 = swift_allocObject();
  v77 = &v66;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v81;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v79 = v9;
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D6708858;
  v65 = v30;
  v81 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v81;
  v72 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D66581CC();
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF03178, sub_1D66581CC);
  swift_retain_n();
  v75 = v34;
  v76 = v33;
  v35 = sub_1D72647CC();
  v81 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v81;
  v37 = *(v11 + 36);
  v78 = v14;
  v38 = &v14[v37];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v66 - 4) = sub_1D60565EC;
  *(&v66 - 3) = (&v66 - 6);
  v44 = v79;
  v43 = v80;
  v64 = sub_1D6658260;
  v65 = v31;
  sub_1D5D2BC70(v79, sub_1D60566B0, v45, sub_1D60565EC, (&v66 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v48 = v78;
  }

  else
  {
    v66 = v38;
    v67 = v27;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D66582DC();
    v46 = v78;
    sub_1D72647EC();
    v47 = v46;
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v50 = v74;
    (v70)(v74, v71, v22);
    swift_storeEnumTagMultiPayload();
    v84 = v73;
    v80 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    v81 = 0;
    v51 = swift_allocObject();
    v79 = &v66;
    *(v51 + 16) = v80;
    *(v51 + 32) = v81;
    v52 = v72;
    v53 = v67;
    *(v51 + 40) = v72;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v66 - 4) = sub_1D5B4AA6C;
    *(&v66 - 3) = 0;
    v64 = sub_1D6708858;
    v65 = v55;
    v81 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v80;
    *(v56 + 32) = v81;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v81 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v80;
    *(v58 + 40) = v81;
    v59 = __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v66 - 4) = sub_1D615B4A4;
    *(&v66 - 3) = (&v66 - 6);
    v64 = sub_1D6708858;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D5DF94C0();
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v48 = v47;
  }

  return sub_1D5D2CFE8(v48, sub_1D6658138);
}

uint64_t FormatProgressPieOptions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v43 = a2;
  sub_1D66583C0();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6658454();
  sub_1D5B58B84(&qword_1EDF250D8, sub_1D6658454);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  if (v13)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D66125E8();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D660C130(sub_1D66583C0, &v41, 0.0);
  v17 = v41;
  v35 = xmmword_1D728CF30;
  v41 = xmmword_1D728CF30;
  v42 = 0;
  if (sub_1D726434C())
  {
    v39 = v35;
    v40 = 0;
    sub_1D5CDCE98();
    sub_1D726431C();
    *&v35 = v17;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    sub_1D5C75A4C(v36, v37, v38);
    v33 = v24;
    v26 = v24;
    v27 = v23;
    v34 = v25;
    sub_1D5D2F2C8(v23, v26, v25);
  }

  else
  {
    *&v35 = v17;
    v27 = 0;
    v33 = 0;
    v34 = 0;
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v41 = xmmword_1D7297410;
  v42 = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v28 = v39;
  sub_1D660C130(sub_1D66583C0, &v41, 0.0);
  v29 = v41;
  sub_1D660C130(sub_1D66583C0, &v41, 1.0);
  (*(v11 + 8))(v9, v5);
  v30 = v41;
  v31 = v29;
  v32 = v43;
  *v43 = v35;
  v32[1] = v27;
  v32[2] = v33;
  *(v32 + 24) = v34;
  v32[4] = v28;
  v32[5] = v31;
  v32[6] = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatProgressPieOptions.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v145 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v147 = &v142 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v155 = &v142 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v156 = &v142 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v142 - v19;
  sub_1D66585D4();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v157 = *(v1 + 8);
  v158 = *(v1 + 16);
  LODWORD(v159) = *(v1 + 24);
  v27 = *(v1 + 40);
  v152 = *(v1 + 32);
  v148 = v27;
  v146 = *(v1 + 48);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1D6658454();
  v31 = v30;
  v32 = sub_1D5B58B84(&qword_1EDF250D8, sub_1D6658454);
  sub_1D5D2EE70(&type metadata for FormatProgressPieOptions, v31, v33, v28, &type metadata for FormatProgressPieOptions, v31, &type metadata for FormatVersions.Dawnburst, v29, v25, v32, &off_1F51F6CF8);
  v34 = qword_1EDF31E80;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_1D725BD1C();
  v36 = __swift_project_value_buffer(v35, qword_1EDFFCCA8);
  v37 = *(v35 - 8);
  v38 = *(v37 + 16);
  *&v163 = v36;
  v162 = v38;
  v161 = v37 + 16;
  v38(v20);
  v160 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  sub_1D5F3FE24();
  v151 = v40;
  inited = swift_initStackObject();
  v150 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v39;
  *(inited + 40) = 0;
  LOBYTE(v39) = sub_1D633A310(v26, inited);
  swift_setDeallocating();
  sub_1D5C30060(0, qword_1EDF2C898, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquationToken);
  v149 = v42;
  swift_arrayDestroy();
  v154 = v35;
  v153 = v22;
  if (v39)
  {
    sub_1D5D2CFE8(v20, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    *&v144 = v26;
    v46 = &v25[*(v22 + 44)];
    v47 = *v46;
    v48 = *(v46 + 1);
    LOBYTE(v167) = 0;
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    *(v49 + 32) = v167;
    *(v49 + 40) = v47;
    *(v49 + 48) = v48;
    sub_1D6658668();
    v51 = v50;
    sub_1D5B58B84(&qword_1EDF03068, sub_1D6658668);

    v143 = v51;
    v52 = sub_1D72647CC();
    LOBYTE(v167) = 0;
    v53 = v3;
    v54 = swift_allocObject();
    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
    *(v54 + 16) = v52;
    *(v54 + 40) = v167;
    v55 = __swift_project_boxed_opaque_existential_1(&v25[*(v22 + 36)], *&v25[*(v22 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v55, v56);
    MEMORY[0x1EEE9AC00](v57, v58);
    *(&v142 - 4) = sub_1D5B4AA6C;
    *(&v142 - 3) = 0;
    v140 = sub_1D66586FC;
    v141 = v49;
    v60 = sub_1D5D2F7A4(v20, sub_1D60566B0, v59, sub_1D60565EC, (&v142 - 6));
    if (v53)
    {
      sub_1D5D2CFE8(v20, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v25, sub_1D66585D4);
    }

    v78 = v60;

    if (v78)
    {
      v167 = 0uLL;
      v168 = 0;
      v164 = v144;
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();

      sub_1D72647EC();
      v3 = 0;
      v35 = v154;

      sub_1D5D2CFE8(v20, type metadata accessor for FormatVersionRequirement);

      v22 = v153;
    }

    else
    {
      sub_1D5D2CFE8(v20, type metadata accessor for FormatVersionRequirement);

      v3 = 0;
      v22 = v153;
      v35 = v154;
    }
  }

  v43 = v156;
  v162(v156, v163, v35);
  swift_storeEnumTagMultiPayload();
  if (v159)
  {
    v44 = v157;
    v45 = v158;
    sub_1D5C75A4C(v157, v158, 1);

    sub_1D5D2F2C8(v44, v45, 1);
    sub_1D5D2F2C8(0, 0, 0);
  }

  else
  {
    v62 = v157;
    sub_1D5D2F2C8(v157, v158, 0);
    sub_1D5D2F2C8(0, 0, 0);
    if ((v62 & 1) == 0)
    {
      *&v144 = v3;
      sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
      goto LABEL_19;
    }
  }

  v63 = &v25[*(v22 + 44)];
  v64 = v43;
  v65 = *v63;
  v66 = *(v63 + 1);
  LOBYTE(v167) = 0;
  v67 = swift_allocObject();
  v144 = xmmword_1D728CF30;
  *(v67 + 16) = xmmword_1D728CF30;
  *(v67 + 32) = v167;
  *(v67 + 40) = v65;
  *(v67 + 48) = v66;
  sub_1D6658668();
  v69 = v68;
  sub_1D5B58B84(&qword_1EDF03068, sub_1D6658668);

  v142 = v69;
  v70 = sub_1D72647CC();
  LOBYTE(v167) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = v144;
  *(v71 + 40) = v167;
  v72 = __swift_project_boxed_opaque_existential_1(&v25[*(v22 + 36)], *&v25[*(v22 + 36) + 24]);
  v143 = &v142;
  MEMORY[0x1EEE9AC00](v72, v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  *(&v142 - 4) = sub_1D5B4AA6C;
  *(&v142 - 3) = 0;
  v140 = sub_1D670885C;
  v141 = v67;
  v77 = sub_1D5D2F7A4(v64, sub_1D615B49C, v76, sub_1D615B4A4, (&v142 - 6));
  if (v3)
  {
    sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2F2C8(v157, v158, v159);
    return sub_1D5D2CFE8(v25, sub_1D66585D4);
  }

  v79 = v77;
  v22 = v153;

  if (v79)
  {
    v167 = v144;
    v168 = 0;
    v164 = v157;
    v165 = v158;
    v166 = v159;
    sub_1D60ED320();
    sub_1D72647EC();
    sub_1D5D2F2C8(v164, v165, v166);
    sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
    v35 = v154;
    *&v144 = 0;
  }

  else
  {
    *&v144 = 0;
    sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2F2C8(v157, v158, v159);
    v35 = v154;
  }

LABEL_19:
  v80 = v155;
  v162(v155, v163, v35);
  swift_storeEnumTagMultiPayload();
  v159 = xmmword_1D7297410;
  v167 = xmmword_1D7297410;
  v168 = 0;
  v81 = v25;
  v82 = &v25[*(v22 + 44)];
  v83 = *v82;
  v84 = v82[1];
  LOBYTE(v164) = 0;
  v85 = swift_allocObject();
  v87 = v85;
  *(v85 + 16) = v159;
  *(v85 + 32) = v164;
  *(v85 + 40) = v83;
  *(v85 + 48) = v84;
  v88 = v22;
  if (v152)
  {
    v158 = &v142;
    v164 = v152;
    MEMORY[0x1EEE9AC00](v85, v86);
    *(&v142 - 4) = sub_1D5B4AA6C;
    *(&v142 - 3) = 0;
    v140 = sub_1D670885C;
    v141 = v87;
    v169 = 0;
    v89 = v84;
    v90 = swift_allocObject();
    *(v90 + 16) = v159;
    *(v90 + 32) = v169;
    *(v90 + 40) = v83;
    *(v90 + 48) = v89;
    sub_1D6658668();
    v92 = v91;
    v93 = sub_1D5B58B84(&qword_1EDF03068, sub_1D6658668);
    swift_retain_n();

    v156 = v92;
    v152 = v93;
    v94 = sub_1D72647CC();
    v169 = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v94;
    *(v95 + 24) = v159;
    *(v95 + 40) = v169;
    v96 = *(v88 + 36);
    *&v159 = v81;
    v97 = __swift_project_boxed_opaque_existential_1(&v81[v96], *&v81[v96 + 24]);
    MEMORY[0x1EEE9AC00](v97, v98);
    MEMORY[0x1EEE9AC00](v99, v100);
    *(&v142 - 4) = sub_1D60565EC;
    *(&v142 - 3) = (&v142 - 6);
    v140 = sub_1D670885C;
    v141 = v90;
    v101 = v144;
    v103 = sub_1D5D2F7A4(v155, sub_1D615B49C, v102, sub_1D615B4A4, (&v142 - 6));
    v104 = v101;
    if (v101)
    {

      v25 = v159;

      sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v25, sub_1D66585D4);
    }

    v105 = v103;
    v157 = v83;
    v106 = v89;

    if (v105)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      v25 = v159;
      sub_1D72647EC();
      v35 = v154;
      v84 = v106;

      sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
      v25 = v159;
      v35 = v154;
      v84 = v106;
    }
  }

  else
  {
    v157 = v83;

    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    v104 = v144;
  }

  v107 = v147;
  v162(v147, v163, v35);
  swift_storeEnumTagMultiPayload();
  v108 = swift_allocObject();
  *(v108 + 16) = 0;
  v109 = swift_initStackObject();
  *(v109 + 16) = v150;
  *(v109 + 32) = v108;
  *(v109 + 40) = 0;

  LOBYTE(v108) = sub_1D633A310(v110, v109);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v108)
  {
    sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v167) = 0;
    v115 = swift_allocObject();
    v159 = xmmword_1D72BAA60;
    *(v115 + 16) = xmmword_1D72BAA60;
    *(v115 + 32) = v167;
    *(v115 + 40) = v157;
    *(v115 + 48) = v84;
    sub_1D6658668();
    v117 = v116;
    sub_1D5B58B84(&qword_1EDF03068, sub_1D6658668);

    v158 = v117;
    v118 = sub_1D72647CC();
    LOBYTE(v167) = 0;
    v119 = swift_allocObject();
    v156 = v84;
    *(v119 + 16) = v118;
    *(v119 + 24) = v159;
    *(v119 + 40) = v167;
    v120 = __swift_project_boxed_opaque_existential_1(&v25[*(v153 + 36)], *&v25[*(v153 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v120, v121);
    MEMORY[0x1EEE9AC00](v122, v123);
    *(&v142 - 4) = sub_1D5B4AA6C;
    *(&v142 - 3) = 0;
    v140 = sub_1D670885C;
    v141 = v115;
    v125 = sub_1D5D2F7A4(v107, sub_1D615B49C, v124, sub_1D615B4A4, (&v142 - 6));
    if (v104)
    {
      sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v25, sub_1D66585D4);
    }

    v137 = v125;

    if ((v137 & 1) == 0)
    {
      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);

      v84 = v156;
      goto LABEL_30;
    }

    v167 = v159;
    v168 = 0;
    v164 = v148;
    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D66582DC();

    sub_1D72647EC();
    v84 = v156;

    sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
  }

LABEL_30:
  v111 = v145;
  v162(v145, v163, v154);
  swift_storeEnumTagMultiPayload();
  v112 = swift_allocObject();
  *(v112 + 16) = 0x3FF0000000000000;
  v113 = swift_initStackObject();
  *(v113 + 16) = v150;
  *(v113 + 32) = v112;
  *(v113 + 40) = 0;

  LOBYTE(v112) = sub_1D633A310(v114, v113);
  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v112 & 1) == 0)
  {
    LOBYTE(v167) = 0;
    v126 = swift_allocObject();
    v163 = xmmword_1D72BAA70;
    *(v126 + 16) = xmmword_1D72BAA70;
    *(v126 + 32) = v167;
    *(v126 + 40) = v157;
    *(v126 + 48) = v84;
    sub_1D6658668();
    v128 = v127;
    sub_1D5B58B84(&qword_1EDF03068, sub_1D6658668);

    v162 = v128;
    v129 = sub_1D72647CC();
    LOBYTE(v167) = 0;
    v130 = swift_allocObject();
    *(v130 + 16) = v129;
    *(v130 + 24) = v163;
    *(v130 + 40) = v167;
    v131 = __swift_project_boxed_opaque_existential_1(&v25[*(v153 + 36)], *&v25[*(v153 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v131, v132);
    MEMORY[0x1EEE9AC00](v133, v134);
    *(&v142 - 4) = sub_1D5B4AA6C;
    *(&v142 - 3) = 0;
    v140 = sub_1D670885C;
    v141 = v126;
    v136 = sub_1D5D2F7A4(v111, sub_1D615B49C, v135, sub_1D615B4A4, (&v142 - 6));
    if (v104)
    {
      sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v138 = v136;

      if (v138)
      {
        v167 = v163;
        v168 = 0;
        v164 = v146;
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();

        sub_1D72647EC();
        v139 = v145;

        sub_1D5D2CFE8(v139, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2CFE8(v25, sub_1D66585D4);
      }

      sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D5D2CFE8(v25, sub_1D66585D4);
  }

  sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
  sub_1D5D2CFE8(v25, sub_1D66585D4);
}

uint64_t FormatProgressViewNodeProgress.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v30 = *(v1 + 16);
  v31 = v15;
  v16 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = *(v1 + 48) | (*(v1 + 50) << 16);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatProgressViewNodeProgress, &type metadata for FormatCodingKeys, v22, v19, &type metadata for FormatProgressViewNodeProgress, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v20, v14, v21, &off_1F51F6CB8);
  if ((v18 & 0x800000) != 0)
  {
    v37 = BYTE2(v18) & 1;
    v32[0] = v31;
    v32[1] = v30;
    v33 = v16;
    v34 = v17;
    v35 = v18;
    v36 = BYTE2(v18) & 1;
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCCE8);
    (*(*(v27 - 8) + 16))(v6, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C5DD4(1, v32, v6);
    v26 = v6;
  }

  else
  {
    v23 = v31;
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCCE8);
    (*(*(v24 - 8) + 16))(v10, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C5C08(0, v23, v10);
    v26 = v10;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6338B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 < 0)
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        v16 = *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) && *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x18) == *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        if (!v16 && (sub_1D72646CC() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7 < 0)
        {
          return 0;
        }

        v8 = *(v5 + 16);
        v9 = *(v7 + 16);
        v10 = *(v8 + 16) == *(v9 + 16) && *(v8 + 24) == *(v9 + 24);
        if (!v10 && (sub_1D72646CC() & 1) == 0)
        {
          return 0;
        }

        v11 = *(v8 + 32);
        v12 = *(v9 + 32);

        if ((sub_1D5E2C734(v11, v12) & 1) == 0 || *(v8 + 40) != *(v9 + 40))
        {

          return 0;
        }

        swift_beginAccess();
        v13 = *(v5 + 24);
        swift_beginAccess();
        v14 = *(v7 + 24);

        v15 = sub_1D6338B08(v13, v14);

        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D6338CBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v8 = *(i - 2);
    v9 = *(i - 1);
    v10 = *i;
    v11 = *(v3 - 2);
    v12 = *(v3 - 1);
    v13 = *v3;
    if (!(v10 >> 6))
    {
      if (v13 >= 0x40)
      {
LABEL_113:
        sub_1D6007830(*(i - 2), *(i - 1), *i);
        goto LABEL_114;
      }

      if (v8 == v11 && v9 == v12)
      {
        sub_1D6007830(*(i - 2), *(i - 1), *i);
        sub_1D6007830(v8, v9, v13);
        sub_1D6007850(v8, v9, v10);
        sub_1D6007850(v8, v9, v13);
        if ((v10 ^ v13))
        {
          return 0;
        }
      }

      else
      {
        v15 = sub_1D72646CC();
        sub_1D6007830(v8, v9, v10);
        sub_1D6007830(v11, v12, v13);
        sub_1D6007850(v8, v9, v10);
        sub_1D6007850(v11, v12, v13);
        result = 0;
        if (v15 & 1) == 0 || ((v10 ^ v13))
        {
          return result;
        }
      }

      goto LABEL_8;
    }

    if (v10 >> 6 != 1)
    {
      break;
    }

    if ((v13 & 0xC0) != 0x40)
    {
      goto LABEL_113;
    }

    sub_1D6007830(*(v3 - 2), *(v3 - 1), *v3);
    switch(v9)
    {
      case 0uLL:
        if (v12)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0, v13);
        sub_1D6007830(v11, 0, v13);
        sub_1D6007830(v8, 0, v10);
        sub_1D5CBA0FC(v8, 0);
        sub_1D5CBA0FC(v11, 0);
        sub_1D6007850(v8, 0, v10);
        sub_1D6007850(v11, 0, v13);
        sub_1D6007850(v11, 0, v13);
        sub_1D6007850(v8, 0, v10);
        sub_1D6007850(v11, 0, v13);
        v5 = v8;
        v6 = 0;
        goto LABEL_6;
      case 1uLL:
        if (v12 != 1)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 1uLL, v13);
        sub_1D6007830(v11, 1uLL, v13);
        sub_1D6007830(v8, 1uLL, v10);
        sub_1D5CBA0FC(v8, 1uLL);
        sub_1D5CBA0FC(v11, 1uLL);
        sub_1D6007850(v8, 1uLL, v10);
        sub_1D6007850(v11, 1uLL, v13);
        sub_1D6007850(v11, 1uLL, v13);
        sub_1D6007850(v8, 1uLL, v10);
        sub_1D6007850(v11, 1uLL, v13);
        v5 = v8;
        v6 = 1;
        goto LABEL_6;
      case 2uLL:
        if (v12 != 2)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 2uLL, v13);
        sub_1D6007830(v11, 2uLL, v13);
        sub_1D6007830(v8, 2uLL, v10);
        sub_1D5CBA0FC(v8, 2uLL);
        sub_1D5CBA0FC(v11, 2uLL);
        sub_1D6007850(v8, 2uLL, v10);
        sub_1D6007850(v11, 2uLL, v13);
        sub_1D6007850(v11, 2uLL, v13);
        sub_1D6007850(v8, 2uLL, v10);
        sub_1D6007850(v11, 2uLL, v13);
        v5 = v8;
        v6 = 2;
        goto LABEL_6;
      case 3uLL:
        if (v12 != 3)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 3uLL, v13);
        sub_1D6007830(v11, 3uLL, v13);
        sub_1D6007830(v8, 3uLL, v10);
        sub_1D5CBA0FC(v8, 3uLL);
        sub_1D5CBA0FC(v11, 3uLL);
        sub_1D6007850(v8, 3uLL, v10);
        sub_1D6007850(v11, 3uLL, v13);
        sub_1D6007850(v11, 3uLL, v13);
        sub_1D6007850(v8, 3uLL, v10);
        sub_1D6007850(v11, 3uLL, v13);
        v5 = v8;
        v6 = 3;
        goto LABEL_6;
      case 4uLL:
        if (v12 != 4)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 4uLL, v13);
        sub_1D6007830(v11, 4uLL, v13);
        sub_1D6007830(v8, 4uLL, v10);
        sub_1D5CBA0FC(v8, 4uLL);
        sub_1D5CBA0FC(v11, 4uLL);
        sub_1D6007850(v8, 4uLL, v10);
        sub_1D6007850(v11, 4uLL, v13);
        sub_1D6007850(v11, 4uLL, v13);
        sub_1D6007850(v8, 4uLL, v10);
        sub_1D6007850(v11, 4uLL, v13);
        v5 = v8;
        v6 = 4;
        goto LABEL_6;
      case 5uLL:
        if (v12 != 5)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 5uLL, v13);
        sub_1D6007830(v11, 5uLL, v13);
        sub_1D6007830(v8, 5uLL, v10);
        sub_1D5CBA0FC(v8, 5uLL);
        sub_1D5CBA0FC(v11, 5uLL);
        sub_1D6007850(v8, 5uLL, v10);
        sub_1D6007850(v11, 5uLL, v13);
        sub_1D6007850(v11, 5uLL, v13);
        sub_1D6007850(v8, 5uLL, v10);
        sub_1D6007850(v11, 5uLL, v13);
        v5 = v8;
        v6 = 5;
        goto LABEL_6;
      case 6uLL:
        if (v12 != 6)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 6uLL, v13);
        sub_1D6007830(v11, 6uLL, v13);
        sub_1D6007830(v8, 6uLL, v10);
        sub_1D5CBA0FC(v8, 6uLL);
        sub_1D5CBA0FC(v11, 6uLL);
        sub_1D6007850(v8, 6uLL, v10);
        sub_1D6007850(v11, 6uLL, v13);
        sub_1D6007850(v11, 6uLL, v13);
        sub_1D6007850(v8, 6uLL, v10);
        sub_1D6007850(v11, 6uLL, v13);
        v5 = v8;
        v6 = 6;
        goto LABEL_6;
      case 7uLL:
        if (v12 != 7)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 7uLL, v13);
        sub_1D6007830(v11, 7uLL, v13);
        sub_1D6007830(v8, 7uLL, v10);
        sub_1D5CBA0FC(v8, 7uLL);
        sub_1D5CBA0FC(v11, 7uLL);
        sub_1D6007850(v8, 7uLL, v10);
        sub_1D6007850(v11, 7uLL, v13);
        sub_1D6007850(v11, 7uLL, v13);
        sub_1D6007850(v8, 7uLL, v10);
        sub_1D6007850(v11, 7uLL, v13);
        v5 = v8;
        v6 = 7;
        goto LABEL_6;
      case 8uLL:
        if (v12 != 8)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 8uLL, v13);
        sub_1D6007830(v11, 8uLL, v13);
        sub_1D6007830(v8, 8uLL, v10);
        sub_1D5CBA0FC(v8, 8uLL);
        sub_1D5CBA0FC(v11, 8uLL);
        sub_1D6007850(v8, 8uLL, v10);
        sub_1D6007850(v11, 8uLL, v13);
        sub_1D6007850(v11, 8uLL, v13);
        sub_1D6007850(v8, 8uLL, v10);
        sub_1D6007850(v11, 8uLL, v13);
        v5 = v8;
        v6 = 8;
        goto LABEL_6;
      case 9uLL:
        if (v12 != 9)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 9uLL, v13);
        sub_1D6007830(v11, 9uLL, v13);
        sub_1D6007830(v8, 9uLL, v10);
        sub_1D5CBA0FC(v8, 9uLL);
        sub_1D5CBA0FC(v11, 9uLL);
        sub_1D6007850(v8, 9uLL, v10);
        sub_1D6007850(v11, 9uLL, v13);
        sub_1D6007850(v11, 9uLL, v13);
        sub_1D6007850(v8, 9uLL, v10);
        sub_1D6007850(v11, 9uLL, v13);
        v5 = v8;
        v6 = 9;
        goto LABEL_6;
      case 0xAuLL:
        if (v12 != 10)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0xAuLL, v13);
        sub_1D6007830(v11, 0xAuLL, v13);
        sub_1D6007830(v8, 0xAuLL, v10);
        sub_1D5CBA0FC(v8, 0xAuLL);
        sub_1D5CBA0FC(v11, 0xAuLL);
        sub_1D6007850(v8, 0xAuLL, v10);
        sub_1D6007850(v11, 0xAuLL, v13);
        sub_1D6007850(v11, 0xAuLL, v13);
        sub_1D6007850(v8, 0xAuLL, v10);
        sub_1D6007850(v11, 0xAuLL, v13);
        v5 = v8;
        v6 = 10;
        goto LABEL_6;
      case 0xBuLL:
        if (v12 != 11)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0xBuLL, v13);
        sub_1D6007830(v11, 0xBuLL, v13);
        sub_1D6007830(v8, 0xBuLL, v10);
        sub_1D5CBA0FC(v8, 0xBuLL);
        sub_1D5CBA0FC(v11, 0xBuLL);
        sub_1D6007850(v8, 0xBuLL, v10);
        sub_1D6007850(v11, 0xBuLL, v13);
        sub_1D6007850(v11, 0xBuLL, v13);
        sub_1D6007850(v8, 0xBuLL, v10);
        sub_1D6007850(v11, 0xBuLL, v13);
        v5 = v8;
        v6 = 11;
        goto LABEL_6;
      case 0xCuLL:
        if (v12 != 12)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0xCuLL, v13);
        sub_1D6007830(v11, 0xCuLL, v13);
        sub_1D6007830(v8, 0xCuLL, v10);
        sub_1D5CBA0FC(v8, 0xCuLL);
        sub_1D5CBA0FC(v11, 0xCuLL);
        sub_1D6007850(v8, 0xCuLL, v10);
        sub_1D6007850(v11, 0xCuLL, v13);
        sub_1D6007850(v11, 0xCuLL, v13);
        sub_1D6007850(v8, 0xCuLL, v10);
        sub_1D6007850(v11, 0xCuLL, v13);
        v5 = v8;
        v6 = 12;
        goto LABEL_6;
      case 0xDuLL:
        if (v12 != 13)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0xDuLL, v13);
        sub_1D6007830(v11, 0xDuLL, v13);
        sub_1D6007830(v8, 0xDuLL, v10);
        sub_1D5CBA0FC(v8, 0xDuLL);
        sub_1D5CBA0FC(v11, 0xDuLL);
        sub_1D6007850(v8, 0xDuLL, v10);
        sub_1D6007850(v11, 0xDuLL, v13);
        sub_1D6007850(v11, 0xDuLL, v13);
        sub_1D6007850(v8, 0xDuLL, v10);
        sub_1D6007850(v11, 0xDuLL, v13);
        v5 = v8;
        v6 = 13;
        goto LABEL_6;
      case 0xEuLL:
        if (v12 != 14)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0xEuLL, v13);
        sub_1D6007830(v11, 0xEuLL, v13);
        sub_1D6007830(v8, 0xEuLL, v10);
        sub_1D5CBA0FC(v8, 0xEuLL);
        sub_1D5CBA0FC(v11, 0xEuLL);
        sub_1D6007850(v8, 0xEuLL, v10);
        sub_1D6007850(v11, 0xEuLL, v13);
        sub_1D6007850(v11, 0xEuLL, v13);
        sub_1D6007850(v8, 0xEuLL, v10);
        sub_1D6007850(v11, 0xEuLL, v13);
        v5 = v8;
        v6 = 14;
        goto LABEL_6;
      case 0xFuLL:
        if (v12 != 15)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0xFuLL, v13);
        sub_1D6007830(v11, 0xFuLL, v13);
        sub_1D6007830(v8, 0xFuLL, v10);
        sub_1D5CBA0FC(v8, 0xFuLL);
        sub_1D5CBA0FC(v11, 0xFuLL);
        sub_1D6007850(v8, 0xFuLL, v10);
        sub_1D6007850(v11, 0xFuLL, v13);
        sub_1D6007850(v11, 0xFuLL, v13);
        sub_1D6007850(v8, 0xFuLL, v10);
        sub_1D6007850(v11, 0xFuLL, v13);
        v5 = v8;
        v6 = 15;
        goto LABEL_6;
      default:
        sub_1D6007830(v8, v9, v10);
        if (v12 < 0x10)
        {
          sub_1D6007830(v8, v9, v10);
LABEL_122:
          sub_1D6007830(v11, v12, v13);
          sub_1D6007830(v11, v12, v13);
          sub_1D6007830(v8, v9, v10);
          sub_1D6007830(v11, v12, v13);
          sub_1D6007830(v8, v9, v10);
          sub_1D5CBA0FC(v8, v9);
          sub_1D5CBA0FC(v11, v12);
          sub_1D6007850(v8, v9, v10);
          sub_1D6007850(v11, v12, v13);
          sub_1D6007850(v11, v12, v13);
          sub_1D6007850(v8, v9, v10);
          sub_1D6007850(v11, v12, v13);
          v18 = v8;
          v19 = v9;
          v20 = v10;
          goto LABEL_115;
        }

        if (v8 == v11 && v9 == v12)
        {
          sub_1D6007830(v8, v9, v13);
          sub_1D6007830(v8, v9, v10);
          sub_1D6007830(v8, v9, v13);
          sub_1D6007830(v8, v9, v10);
          sub_1D6007830(v8, v9, v13);
          sub_1D6007830(v8, v9, v10);
          sub_1D5CBA0FC(v8, v9);
          sub_1D5CBA0FC(v8, v9);
          sub_1D6007850(v8, v9, v10);
          sub_1D6007850(v8, v9, v13);
          sub_1D6007850(v8, v9, v13);
          sub_1D6007850(v8, v9, v10);
          sub_1D6007850(v8, v9, v13);
          v5 = v8;
          v6 = v9;
LABEL_6:
          v7 = v10;
          goto LABEL_7;
        }

        v17 = sub_1D72646CC();
        sub_1D6007830(v11, v12, v13);
        sub_1D6007830(v8, v9, v10);
        sub_1D6007830(v11, v12, v13);
        sub_1D6007830(v8, v9, v10);
        sub_1D6007830(v11, v12, v13);
        sub_1D6007830(v8, v9, v10);
        sub_1D5CBA0FC(v8, v9);
        sub_1D5CBA0FC(v11, v12);
        sub_1D6007850(v8, v9, v10);
        sub_1D6007850(v11, v12, v13);
        sub_1D6007850(v11, v12, v13);
        sub_1D6007850(v8, v9, v10);
        sub_1D6007850(v11, v12, v13);
        sub_1D6007850(v8, v9, v10);
        if ((v17 & 1) == 0)
        {
          return 0;
        }

        break;
    }

LABEL_8:
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  if (!(v9 | v8) && v10 == 128)
  {
    if ((v13 & 0xC0) != 0x80 || v12 | v11 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(0, 0, 0x80u);
    sub_1D6007850(0, 0, 0x80u);
    sub_1D6007850(0, 0, 0x80u);
    v5 = 0;
    goto LABEL_111;
  }

  if (v8 == 1 && !v9 && v10 == 128)
  {
    if ((v13 & 0xC0) != 0x80)
    {
      v9 = 0;
      v8 = 1;
      goto LABEL_114;
    }

    v9 = 0;
    v8 = 1;
    if (v11 != 1 || v12 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(1, 0, 0x80u);
    sub_1D6007850(1, 0, 0x80u);
    v5 = 1;
    goto LABEL_111;
  }

  if (v8 == 2 && !v9 && v10 == 128)
  {
    if ((v13 & 0xC0) != 0x80)
    {
      v9 = 0;
      v8 = 2;
      goto LABEL_114;
    }

    v9 = 0;
    v8 = 2;
    if (v11 != 2 || v12 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(2, 0, 0x80u);
    sub_1D6007850(2, 0, 0x80u);
    v5 = 2;
    goto LABEL_111;
  }

  if (v8 == 3 && !v9 && v10 == 128)
  {
    if ((v13 & 0xC0) != 0x80)
    {
      v9 = 0;
      v8 = 3;
      goto LABEL_114;
    }

    v9 = 0;
    v8 = 3;
    if (v11 != 3 || v12 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(3, 0, 0x80u);
    sub_1D6007850(3, 0, 0x80u);
    v5 = 3;
    goto LABEL_111;
  }

  if (v8 == 4 && !v9 && v10 == 128)
  {
    if ((v13 & 0xC0) != 0x80)
    {
      v9 = 0;
      v8 = 4;
      goto LABEL_114;
    }

    v9 = 0;
    v8 = 4;
    if (v11 != 4 || v12 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(4, 0, 0x80u);
    sub_1D6007850(4, 0, 0x80u);
    v5 = 4;
    goto LABEL_111;
  }

  if (v8 == 5 && !v9 && v10 == 128)
  {
    if ((v13 & 0xC0) != 0x80)
    {
      v9 = 0;
      v8 = 5;
      goto LABEL_114;
    }

    v9 = 0;
    v8 = 5;
    if (v11 != 5 || v12 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(5, 0, 0x80u);
    sub_1D6007850(5, 0, 0x80u);
    v5 = 5;
LABEL_111:
    v6 = 0;
    v7 = 0x80;
LABEL_7:
    sub_1D6007850(v5, v6, v7);
    goto LABEL_8;
  }

  if ((v13 & 0xC0) == 0x80)
  {
    v9 = 0;
    v8 = 6;
    if (v11 != 6 || v12 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(6, 0, 0x80u);
    sub_1D6007850(6, 0, 0x80u);
    v5 = 6;
    goto LABEL_111;
  }

  v9 = 0;
  v8 = 6;
LABEL_114:
  sub_1D6007830(v11, v12, v13);
  sub_1D6007850(v8, v9, v10);
  v18 = v11;
  v19 = v12;
  v20 = v13;
LABEL_115:
  sub_1D6007850(v18, v19, v20);
  return 0;
}

uint64_t sub_1D6339F3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(v3 - 2) == *(i - 2) && *(v3 - 1) == *(i - 1);
      if (!v7 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v8 = v6 & 0xF000000000000007;
      if ((~v5 & 0xF000000000000007) != 0)
      {
        if (v8 == 0xF000000000000007)
        {
LABEL_18:

          sub_1D5C84FF4(v5);
          sub_1D5C84FF4(v6);
          return 0;
        }

        v11 = v6;
        v12 = v5;
        sub_1D5CFCFAC(v6);
        sub_1D5CFCFAC(v5);
        sub_1D5CFCFAC(v5);
        sub_1D5CFCFAC(v6);

        sub_1D5CFCFAC(v5);

        sub_1D5CFCFAC(v6);
        v9 = static FormatOptionValue.== infix(_:_:)(&v12, &v11);
        sub_1D5C84FF4(v5);
        sub_1D5C84FF4(v6);
        sub_1D5C84FF4(v6);
        sub_1D5C84FF4(v5);

        sub_1D5C84FF4(v6);

        sub_1D5C84FF4(v5);
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v8 != 0xF000000000000007)
        {
          goto LABEL_18;
        }

        sub_1D5C84FF4(v5);
        sub_1D5C84FF4(v6);
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D633A0F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v3 = (a2 + 72);
      v4 = a1 + 40;
      do
      {
        v5 = *v4;
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        v8 = *(v4 + 24);
        v9 = *(v4 + 36);
        v10 = *(v4 + 32);
        v29 = *(v4 - 8);
        v30 = v5;
        v31 = v6;
        v32 = v7;
        v33 = v8;
        v35 = v9;
        v34 = v10;
        v12 = *(v3 - 4);
        v13 = v10 | (v9 << 32);
        v14 = *(v3 - 3);
        v15 = *(v3 - 2);
        v16 = *(v3 - 1);
        v17 = *(v3 + 2);
        v18 = *v3;
        v19 = v18 | (v17 << 32);
        v22 = *(v3 - 5);
        v11 = v22;
        v23 = v12;
        v24 = v14;
        v25 = v15;
        v26 = v16;
        v28 = v17;
        v27 = v18;
        sub_1D67084A4(v29, v5, v6, v7, v8, v13);
        sub_1D67084A4(v11, v12, v14, v15, v16, v19);
        v20 = sub_1D7009510(&v29, &v22);
        sub_1D67084F4(v22, v23, v24, v25, v26, v27 | (v28 << 32));
        sub_1D67084F4(v29, v30, v31, v32, v33, v34 | (v35 << 32));
        if ((v20 & 1) == 0)
        {
          break;
        }

        v4 += 48;
        v3 += 12;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1D633A250(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(v3 - 2) == *(i - 2) && *(v3 - 1) == *(i - 1);
      if (!v7 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v8 = *(v5 + 16) == *(v6 + 16) && *(v5 + 24) == *(v6 + 24);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D633A310(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 16)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v7 = *(i - 1);
    v8 = *i;
    if (*v3)
    {
      break;
    }

    v12 = *(v3 - 1);
    v13 = 0;
    if (v8)
    {
      sub_1D62B72CC(v5, 0);
      sub_1D62B72CC(v7, 1);
      sub_1D62B72CC(v5, 0);
      sub_1D62B72CC(v7, 1);
      sub_1D62B72CC(v5, 0);

      goto LABEL_16;
    }

    v11 = v7;
    sub_1D62B72CC(v5, 0);
    sub_1D62B72CC(v7, 0);
    sub_1D62B72CC(v5, 0);
    sub_1D62B72CC(v7, 0);
    sub_1D62B72CC(v5, 0);
    v9 = static FormatFloat.== infix(_:_:)(&v12, &v11);

    sub_1D62B72BC(v5, 0);
    sub_1D62B72BC(v7, 0);
    if ((v9 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_5:
    sub_1D62B72BC(v5, v6);
    v3 += 16;
    if (!--v2)
    {
      return 1;
    }
  }

  if (*i)
  {
    sub_1D62B72CC(*(v3 - 1), 1);
    sub_1D62B72CC(v7, 1);
    if ((0x29282F2A2D2BuLL >> (8 * v5)) != (0x29282F2A2D2BuLL >> (8 * v7)))
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  sub_1D62B72CC(*(v3 - 1), 1);
  sub_1D62B72CC(v7, 0);
  sub_1D62B72CC(v5, 1);
  sub_1D62B72CC(v7, 0);
LABEL_16:
  sub_1D62B72BC(v5, v6);
  sub_1D62B72BC(v7, v6 ^ 1);
  sub_1D62B72BC(v7, v6 ^ 1);
LABEL_17:
  sub_1D62B72BC(v5, v6);
  return 0;
}

uint64_t sub_1D633A544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725BD1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v186 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69D6B38];
  sub_1D5B5BF78(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v184 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v183 = &v165 - v18;
  sub_1D66F4EB8(0, &qword_1EDF178B0, &qword_1EDF45AC0, v12);
  v190 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v188 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v187 = &v165 - v24;
  v198 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v198, v25);
  v192 = (&v165 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v28);
  v193 = (&v165 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v191 = (&v165 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = (&v165 - v35);
  v195 = sub_1D72585BC();
  v37 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195, v38);
  v194 = &v165 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66F4E3C();
  v196 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v165 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  v201 = v44;
  v185 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v45);
  v189 = &v165 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v199 = &v165 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v202 = &v165 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v165 - v55;
  v203 = type metadata accessor for FormatContentSubgroup();
  MEMORY[0x1EEE9AC00](v203, v57);
  v197 = &v165 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v63 = (&v165 - v62);
  v64 = *(a1 + 16);
  if (v64 != *(a2 + 16))
  {
    goto LABEL_106;
  }

  if (!v64 || a1 == a2)
  {
    v164 = 1;
    return v164 & 1;
  }

  v65 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v66 = a1 + v65;
  v177 = a2 + v65;
  v175 = (v9 + 48);
  v170 = (v9 + 32);
  v171 = (v9 + 8);
  v67 = 0;
  v173 = (v37 + 32);
  v179 = (v37 + 8);
  v68 = *(v61 + 72);
  v69 = v197;
  v178 = v7;
  v200 = (&v165 - v62);
  v181 = v64;
  v169 = v66;
  v168 = v68;
  while (1)
  {
    v70 = v68 * v67;
    result = sub_1D6706BB4(v66 + v68 * v67, v63, type metadata accessor for FormatContentSubgroup);
    if (v67 == v181)
    {
      goto LABEL_109;
    }

    v174 = v67;
    sub_1D6706BB4(v177 + v70, v69, type metadata accessor for FormatContentSubgroup);
    v72 = *v63 == *v69 && v63[1] == v69[1];
    if (!v72 && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_105;
    }

    v73 = v203[5];
    v74 = v200 + v73;
    v75 = v69 + v73;
    if ((sub_1D6B1A454(v200 + v73, v69 + v73) & 1) == 0)
    {
      goto LABEL_105;
    }

    sub_1D5B5971C();
    v77 = *(v76 + 36);
    v78 = *&v74[v77];
    v79 = *&v75[v77];
    v80 = *(v78 + 16);
    if (v80 != *(v79 + 16))
    {
      goto LABEL_105;
    }

    if (v80 && v78 != v79)
    {
      break;
    }

LABEL_62:
    v69 = v197;
    if ((sub_1D6339F3C(*(v200 + v203[6]), *&v197[v203[6]]) & 1) == 0)
    {
      goto LABEL_105;
    }

    if ((sub_1D5BFC390(*(v200 + v203[7]), *(v69 + v203[7])) & 1) == 0)
    {
      goto LABEL_105;
    }

    if ((sub_1D633BEDC(*(v200 + v203[8]), *(v69 + v203[8])) & 1) == 0)
    {
      goto LABEL_105;
    }

    v146 = v203[9];
    v147 = *(v200 + v146);
    v148 = *(v69 + v146);
    v149 = *(v147 + 16);
    if (v149 != *(v148 + 16))
    {
      goto LABEL_105;
    }

    if (v149 && v147 != v148)
    {
      v150 = (v148 + 48);
      v151 = (v147 + 48);
      do
      {
        v152 = *v151;
        v153 = *v150;
        if (*(v151 - 2) == *(v150 - 2) && *(v151 - 1) == *(v150 - 1))
        {
          if (v152 != v153)
          {
            goto LABEL_105;
          }
        }

        else if (sub_1D72646CC() & 1) == 0 || ((v152 ^ v153))
        {
          goto LABEL_105;
        }

        v150 += 24;
        v151 += 24;
      }

      while (--v149);
    }

    result = static FormatMetadata.== infix(_:_:)((v200 + v203[10]), (v69 + v203[10]));
    if ((result & 1) == 0)
    {
      goto LABEL_105;
    }

    v155 = v203[11];
    v156 = *(v200 + v155);
    v157 = *(v69 + v155);
    v158 = *(v156 + 16);
    if (v158 != *(v157 + 16))
    {
      goto LABEL_105;
    }

    if (v158)
    {
      v159 = v156 == v157;
    }

    else
    {
      v159 = 1;
    }

    if (!v159)
    {
      v160 = (v156 + 32);
      v161 = (v157 + 32);
      while (1)
      {
        v162 = *v160++;
        v205 = v162;
        if (!v158)
        {
          break;
        }

        v204 = *v161;

        v163 = static FormatContentSubgroupFilter.== infix(_:_:)(&v205, &v204);

        if ((v163 & 1) == 0)
        {
          goto LABEL_105;
        }

        ++v161;
        if (!--v158)
        {
          goto LABEL_88;
        }
      }

      __break(1u);
      __break(1u);
LABEL_109:
      __break(1u);
      return result;
    }

LABEL_88:
    v63 = v200;
    v164 = sub_1D6343C34(*(v200 + v203[12]), *(v69 + v203[12]));
    sub_1D5D2CFE8(v69, type metadata accessor for FormatContentSubgroup);
    sub_1D5D2CFE8(v63, type metadata accessor for FormatContentSubgroup);
    if (v164)
    {
      v67 = v174 + 1;
      v66 = v169;
      v68 = v168;
      if (v174 + 1 != v181)
      {
        continue;
      }
    }

    return v164 & 1;
  }

  v81 = (*(v185 + 80) + 32) & ~*(v185 + 80);
  v82 = v78 + v81;
  v83 = v79 + v81;
  v176 = *(v185 + 72);
  v172 = v36;
  v166 = v43;
  while (1)
  {
    sub_1D6706BB4(v82, v56, sub_1D5C2AB28);
    v182 = v83;
    v86 = v83;
    v87 = v202;
    sub_1D6706BB4(v86, v202, sub_1D5C2AB28);
    v88 = &v43[*(v196 + 48)];
    sub_1D6706BB4(v56, v43, sub_1D5C2AB28);
    sub_1D6706BB4(v87, v88, sub_1D5C2AB28);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v84 = swift_getEnumCaseMultiPayload();
      v85 = sub_1D66F4E3C;
      if (v84 != 2)
      {
        goto LABEL_104;
      }

      goto LABEL_17;
    }

    v180 = v82;
    v90 = v189;
    sub_1D6706BB4(v43, v189, sub_1D5C2AB28);
    sub_1D5D57E78(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v92 = *(v91 + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D5D2CFE8(v90 + v92, type metadata accessor for FormatMetadata);
      sub_1D5D2CFE8(v90, type metadata accessor for FormatPackage);
LABEL_94:
      v85 = sub_1D66F4E3C;
      goto LABEL_104;
    }

    v93 = v56;
    v94 = v43;
    v95 = v178;
    sub_1D5C8F76C(v88, v178, type metadata accessor for FormatPackage);
    v96 = v193;
    sub_1D5C8F76C(v90 + v92, v193, type metadata accessor for FormatMetadata);
    v97 = v88 + v92;
    v98 = v192;
    sub_1D5C8F76C(v97, v192, type metadata accessor for FormatMetadata);
    v99 = static FormatPackage.== infix(_:_:)(v90, v95);
    sub_1D5D2CFE8(v90, type metadata accessor for FormatPackage);
    if ((v99 & 1) == 0)
    {
      sub_1D5D2CFE8(v98, type metadata accessor for FormatMetadata);
      sub_1D5D2CFE8(v96, type metadata accessor for FormatMetadata);
      sub_1D5D2CFE8(v178, type metadata accessor for FormatPackage);
      v85 = sub_1D5C2AB28;
      v43 = v94;
      v56 = v93;
      goto LABEL_104;
    }

    v100 = *(v96 + 8);
    v101 = v98[1];
    v102 = v96;
    v103 = v98;
    v43 = v94;
    v56 = v93;
    if (v100)
    {
      v104 = v198;
      if (!v101 || (*v102 != *v98 || v100 != v101) && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v104 = v198;
      if (v101)
      {
        goto LABEL_102;
      }
    }

    if ((sub_1D725BCBC() & 1) == 0 || (sub_1D725BCBC() & 1) == 0)
    {
      goto LABEL_102;
    }

    v118 = *(v104 + 28);
    v119 = v103;
    v120 = *(v190 + 48);
    v121 = MEMORY[0x1E69D6B38];
    v122 = v102 + v118;
    v123 = v188;
    sub_1D5CDE2EC(v122, v188, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    sub_1D5CDE2EC(v119 + v118, v123 + v120, &qword_1EDF45AC0, v121);
    v124 = *v175;
    if ((*v175)(v123, 1, v8) == 1)
    {
      if (v124(v123 + v120, 1, v8) != 1)
      {
        goto LABEL_101;
      }

      sub_1D5D35558(v123, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
      v103 = v192;
      v102 = v193;
      v125 = v198;
    }

    else
    {
      v126 = v184;
      sub_1D5CDE2EC(v123, v184, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      if (v124(v123 + v120, 1, v8) == 1)
      {
        (*v171)(v126, v8);
LABEL_101:
        sub_1D66F4424(v123, &qword_1EDF178B0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        v103 = v192;
        v102 = v193;
LABEL_102:
        sub_1D5D2CFE8(v103, type metadata accessor for FormatMetadata);
        sub_1D5D2CFE8(v102, type metadata accessor for FormatMetadata);
        sub_1D5D2CFE8(v178, type metadata accessor for FormatPackage);
        goto LABEL_103;
      }

      v127 = v186;
      (*v170)(v186, v123 + v120, v8);
      sub_1D5B58B84(&qword_1EDF178B8, MEMORY[0x1E69D6B38]);
      v128 = sub_1D7261FBC();
      v129 = v126;
      v130 = *v171;
      (*v171)(v127, v8);
      v130(v129, v8);
      sub_1D5D35558(v123, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
      v103 = v192;
      v102 = v193;
      v125 = v198;
      if ((v128 & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    if ((sub_1D5C15FFC(*(v102 + v125[8]), *(v103 + v125[8])) & 1) == 0 || (sub_1D5C15FFC(*(v102 + v125[9]), *(v103 + v125[9])) & 1) == 0 || (sub_1D5D3A964(*(v102 + v125[10]), *(v103 + v125[10])) & 1) == 0)
    {
      goto LABEL_102;
    }

    v131 = sub_1D5D3A964(*(v102 + v125[11]), *(v103 + v125[11]));
    sub_1D5D2CFE8(v103, type metadata accessor for FormatMetadata);
    sub_1D5D2CFE8(v102, type metadata accessor for FormatMetadata);
    sub_1D5D2CFE8(v178, type metadata accessor for FormatPackage);
    v85 = sub_1D5C2AB28;
    v36 = v172;
LABEL_60:
    v82 = v180;
    if ((v131 & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_17:
    sub_1D5D2CFE8(v43, sub_1D5C2AB28);
    sub_1D5D2CFE8(v202, sub_1D5C2AB28);
    sub_1D5D2CFE8(v56, sub_1D5C2AB28);
    v83 = v182 + v176;
    v82 += v176;
    if (!--v80)
    {
      goto LABEL_62;
    }
  }

  v180 = v82;
  v105 = v199;
  sub_1D6706BB4(v43, v199, sub_1D5C2AB28);
  sub_1D5D57E78(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
  v107 = *(v106 + 48);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D5D2CFE8(v105 + v107, type metadata accessor for FormatMetadata);
    (*v179)(v105, v195);
    goto LABEL_94;
  }

  v108 = v56;
  v109 = v195;
  (*v173)(v194, v88, v195);
  sub_1D5C8F76C(v199 + v107, v36, type metadata accessor for FormatMetadata);
  v110 = v88 + v107;
  v111 = v191;
  sub_1D5C8F76C(v110, v191, type metadata accessor for FormatMetadata);
  v112 = sub_1D72584CC();
  v113 = *v179;
  (*v179)(v199, v109);
  if ((v112 & 1) == 0)
  {
    sub_1D5D2CFE8(v111, type metadata accessor for FormatMetadata);
    sub_1D5D2CFE8(v36, type metadata accessor for FormatMetadata);
    v113(v194, v195);
    v85 = sub_1D5C2AB28;
    v56 = v108;
    v43 = v166;
    goto LABEL_104;
  }

  v167 = v113;
  v114 = v36[1];
  v115 = v111[1];
  v116 = v111;
  v56 = v108;
  if (v114)
  {
    v117 = v198;
    v43 = v166;
    if (!v115 || (*v36 != *v111 || v114 != v115) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v117 = v198;
    v43 = v166;
    if (v115)
    {
      goto LABEL_99;
    }
  }

  if ((sub_1D725BCBC() & 1) == 0 || (sub_1D725BCBC() & 1) == 0)
  {
    goto LABEL_99;
  }

  v132 = *(v117 + 28);
  v133 = v116;
  v134 = *(v190 + 48);
  v135 = MEMORY[0x1E69D6B38];
  v136 = v36 + v132;
  v137 = v8;
  v138 = v187;
  sub_1D5CDE2EC(v136, v187, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  sub_1D5CDE2EC(v133 + v132, v138 + v134, &qword_1EDF45AC0, v135);
  v139 = *v175;
  if ((*v175)(v138, 1, v137) == 1)
  {
    if (v139(v138 + v134, 1, v137) != 1)
    {
      goto LABEL_98;
    }

    sub_1D5D35558(v138, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v8 = v137;
    v36 = v172;
    v116 = v191;
    v140 = v198;
LABEL_56:
    if ((sub_1D5C15FFC(*(v36 + v140[8]), *(v116 + v140[8])) & 1) == 0 || (sub_1D5C15FFC(*(v36 + v140[9]), *(v116 + v140[9])) & 1) == 0 || (sub_1D5D3A964(*(v36 + v140[10]), *(v116 + v140[10])) & 1) == 0)
    {
      goto LABEL_99;
    }

    v131 = sub_1D5D3A964(*(v36 + v140[11]), *(v116 + v140[11]));
    sub_1D5D2CFE8(v116, type metadata accessor for FormatMetadata);
    sub_1D5D2CFE8(v36, type metadata accessor for FormatMetadata);
    v167(v194, v195);
    v85 = sub_1D5C2AB28;
    goto LABEL_60;
  }

  v141 = v183;
  sub_1D5CDE2EC(v138, v183, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  if (v139(v138 + v134, 1, v137) != 1)
  {
    v142 = v186;
    (*v170)(v186, v138 + v134, v137);
    sub_1D5B58B84(&qword_1EDF178B8, MEMORY[0x1E69D6B38]);
    v143 = sub_1D7261FBC();
    v144 = v141;
    v145 = *v171;
    (*v171)(v142, v137);
    v145(v144, v137);
    sub_1D5D35558(v138, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v8 = v137;
    v36 = v172;
    v116 = v191;
    v140 = v198;
    if ((v143 & 1) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_56;
  }

  (*v171)(v141, v137);
LABEL_98:
  sub_1D66F4424(v138, &qword_1EDF178B0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  v36 = v172;
  v116 = v191;
LABEL_99:
  sub_1D5D2CFE8(v116, type metadata accessor for FormatMetadata);
  sub_1D5D2CFE8(v36, type metadata accessor for FormatMetadata);
  v167(v194, v195);
LABEL_103:
  v85 = sub_1D5C2AB28;
LABEL_104:
  sub_1D5D2CFE8(v43, v85);
  sub_1D5D2CFE8(v202, sub_1D5C2AB28);
  sub_1D5D2CFE8(v56, sub_1D5C2AB28);
  v69 = v197;
LABEL_105:
  sub_1D5D2CFE8(v69, type metadata accessor for FormatContentSubgroup);
  sub_1D5D2CFE8(v200, type metadata accessor for FormatContentSubgroup);
LABEL_106:
  v164 = 0;
  return v164 & 1;
}

uint64_t sub_1D633BBFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(v3 - 1);
      v8 = *v3;
      if (*(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2))
      {
        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_1D72646CC();
        result = 0;
        if ((v11 & 1) == 0 || v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D633BDBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1D633BEDC(unint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v30 = a2 + 32;
  v31 = result + 32;
  v29 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v31 + 48 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v9 = v4[4];
    v37 = v4[5];
    v32 = v3;
    v10 = (v30 + 48 * v3);
    v11 = v10[2];
    v12 = v10[3];
    v13 = v10[4];
    v14 = v10[5];
    v15 = v5 == *v10 && v6 == v10[1];
    if (!v15 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    v16 = *(v7 + 16);
    if (v16 != *(v11 + 16))
    {
      return 0;
    }

    v36 = v12;
    v35 = v13;
    v33 = v14;
    v34 = v9;
    if (v16)
    {

      if (v7 != v11)
      {
        v17 = 0;
        v18 = 0;
        while (v18 < *(v7 + 16))
        {
          if (v18 >= *(v11 + 16))
          {
            goto LABEL_51;
          }

          v19 = *(v7 + v17 + 48);
          v20 = *(v11 + v17 + 48);
          v21 = *(v7 + v17 + 32) == *(v11 + v17 + 32) && *(v7 + v17 + 40) == *(v11 + v17 + 40);
          if (!v21 && (sub_1D72646CC() & 1) == 0)
          {
            goto LABEL_46;
          }

          v22 = v20 & 0xF000000000000007;
          if ((~v19 & 0xF000000000000007) != 0)
          {
            if (v22 == 0xF000000000000007)
            {
LABEL_45:

              sub_1D5C84FF4(v19);
              sub_1D5C84FF4(v20);
              goto LABEL_46;
            }

            v39 = v19;
            v38 = v20;
            sub_1D5CFCFAC(v20);
            sub_1D5CFCFAC(v19);
            sub_1D5CFCFAC(v19);
            sub_1D5CFCFAC(v20);

            sub_1D5CFCFAC(v19);

            sub_1D5CFCFAC(v20);
            v23 = static FormatOptionValue.== infix(_:_:)(&v39, &v38);
            sub_1D5C84FF4(v19);
            sub_1D5C84FF4(v20);
            sub_1D5C84FF4(v20);
            sub_1D5C84FF4(v19);

            sub_1D5C84FF4(v20);

            result = sub_1D5C84FF4(v19);
            if ((v23 & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (v22 != 0xF000000000000007)
            {
              goto LABEL_45;
            }

            sub_1D5C84FF4(v19);
            result = sub_1D5C84FF4(v20);
          }

          ++v18;
          v17 += 24;
          if (v16 == v18)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_50;
      }
    }

    else
    {
    }

LABEL_30:
    v24 = *(v8 + 16);
    if (v24 != *(v36 + 16))
    {
      goto LABEL_46;
    }

    if (v24)
    {
      v25 = v8 == v36;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      v26 = 32;
      while (1)
      {
        result = *(v8 + v26);
        v39 = result;
        if (!v24)
        {
          break;
        }

        v38 = *(v36 + v26);
        v27 = v38;
        sub_1D5FBABE0(result);
        sub_1D5FBABE0(v27);
        LOBYTE(v27) = static FormatSlotTransform.== infix(_:_:)(&v39, &v38);
        sub_1D5FBAC60(v38);
        sub_1D5FBAC60(v39);
        if ((v27 & 1) == 0)
        {
          goto LABEL_46;
        }

        v26 += 8;
        if (!--v24)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      break;
    }

LABEL_39:
    if ((sub_1D6344414(v34, v35) & 1) == 0)
    {
LABEL_46:

      return 0;
    }

    v28 = sub_1D5BFC390(v37, v33);

    if ((v28 & 1) == 0)
    {
      return 0;
    }

    v3 = v32 + 1;
    result = 1;
    v2 = v29;
    if (v32 + 1 == v29)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D633C3EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentOverlaySlot();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v13 = (&v33 - v12);
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    return 0;
  }

  if (!v14 || a1 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v35 = v10;
  v36 = a2 + v16;
  v37 = *(v11 + 72);
  v38 = a1 + v16;
  v40 = (&v33 - v12);
  v41 = v7;
  v34 = v14;
  while (1)
  {
    v18 = v37 * v15;
    result = sub_1D6706BB4(v38 + v37 * v15, v13, type metadata accessor for FormatContentOverlaySlot);
    if (v15 == v14)
    {
      break;
    }

    v39 = v15;
    sub_1D6706BB4(v36 + v18, v7, type metadata accessor for FormatContentOverlaySlot);
    result = *v13;
    v19 = *v13 == *v7 && v13[1] == v7[1];
    if (!v19 && (result = sub_1D72646CC(), (result & 1) == 0) || (v20 = *(v35 + 20), v21 = *(v40 + v20), v22 = *(v41 + v20), v23 = *(v22 + 16), v42 = *(v21 + 16), v42 != v23))
    {
LABEL_24:
      sub_1D5D2CFE8(v41, type metadata accessor for FormatContentOverlaySlot);
      sub_1D5D2CFE8(v40, type metadata accessor for FormatContentOverlaySlot);
      return 0;
    }

    if (v42)
    {
      v24 = v21 == v22;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      v25 = 0;
      v26 = (v21 + 40);
      v27 = (v22 + 40);
      while (v25 < *(v21 + 16))
      {
        if (v25 >= *(v22 + 16))
        {
          goto LABEL_28;
        }

        v28 = *(v26 - 1);
        v29 = *(v27 - 1);
        v30 = *v26;
        v31 = *v27;
        sub_1D66F42D0(v28, *v26);
        sub_1D66F42D0(v29, v31);
        v32 = sub_1D71DF590(v28, v30, v29, v31);
        sub_1D66F42E4(v29, v31);
        result = sub_1D66F42E4(v28, v30);
        if ((v32 & 1) == 0)
        {
          goto LABEL_24;
        }

        ++v25;
        v26 += 16;
        v27 += 16;
        if (v42 == v25)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      break;
    }

LABEL_5:
    v15 = v39 + 1;
    v7 = v41;
    sub_1D5D2CFE8(v41, type metadata accessor for FormatContentOverlaySlot);
    v13 = v40;
    sub_1D5D2CFE8(v40, type metadata accessor for FormatContentOverlaySlot);
    result = 1;
    v14 = v34;
    if (v15 == v34)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D633C6F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v3 = (a1 + 40);
      v4 = (a2 + 40);
      do
      {
        v5 = *(v3 - 1);
        v6 = *(v4 - 1);
        v7 = *v3;
        v8 = *v4;
        sub_1D66F42D0(v5, *v3);
        sub_1D66F42D0(v6, v8);
        v9 = sub_1D71DF590(v5, v7, v6, v8);
        sub_1D66F42E4(v6, v8);
        sub_1D66F42E4(v5, v7);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v3 += 16;
        v4 += 16;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D633C870(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D633C9E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v13 = 1;
    }

    else
    {
      v4 = 0;
      do
      {
        v5 = *(a1 + v4 + 40);
        v6 = *(a1 + v4 + 48);
        v7 = *(a1 + v4 + 56);
        v8 = *(a1 + v4 + 64);
        v19[0] = *(a1 + v4 + 32);
        v19[1] = v5;
        v19[2] = v6;
        v20 = v7;
        v21 = v8;
        v9 = *(a2 + v4 + 40);
        v10 = *(a2 + v4 + 48);
        v11 = *(a2 + v4 + 56);
        v12 = *(a2 + v4 + 64);
        v16[0] = *(a2 + v4 + 32);
        v16[1] = v9;
        v16[2] = v10;
        v17 = v11;
        v18 = v12;

        v13 = _s8NewsFeed12FormatBorderV2eeoiySbAC_ACtFZ_0(v19, v16);

        if ((v13 & 1) == 0)
        {
          break;
        }

        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL sub_1D633CB78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 48);
      v4 = (a2 + 48);
      do
      {
        v5 = *v3;
        v6 = *v4;
        v11 = *(v3 - 1);
        v12 = v5;
        v9 = *(v4 - 1);
        v10 = v6;
        v7 = _s8NewsFeed24FormatLayeredMediaFilterO10MonochromeV2eeoiySbAE_AEtFZ_0(&v11, &v9);
        if (!v7)
        {
          break;
        }

        v3 += 3;
        v4 += 3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_1D633CC2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatCacheFile();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (&v35 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (!v13 || a1 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(v10 + 72);
  while (1)
  {
    result = sub_1D6706BB4(v16 + v18 * v14, v12, type metadata accessor for DebugFormatCacheFile);
    if (v14 == v13)
    {
      break;
    }

    sub_1D6706BB4(v17 + v18 * v14, v7, type metadata accessor for DebugFormatCacheFile);
    v20 = v12[2];
    v21 = *(v12 + 24);
    v22 = v7[2];
    v23 = *(v7 + 24);
    v24 = *v12 == *v7 && *(v12 + 1) == *(v7 + 1);
    if (!v24 && (sub_1D72646CC() & 1) == 0 || v20 != v22 || ((v21 ^ v23) & 1) != 0 || (v25 = *(v4 + 28), v26 = v12 + v25, v27 = v7 + v25, (sub_1D725BCBC() & 1) == 0) || (result = type metadata accessor for DebugFormatCacheFileMetadata(), v28 = *(result + 20), v29 = *&v26[v28], v30 = *&v27[v28], v31 = *(v29 + 16), v31 != *(v30 + 16)))
    {
LABEL_26:
      sub_1D5D2CFE8(v7, type metadata accessor for DebugFormatCacheFile);
      sub_1D5D2CFE8(v12, type metadata accessor for DebugFormatCacheFile);
      return 0;
    }

    if (v31)
    {
      v32 = v29 == v30;
    }

    else
    {
      v32 = 1;
    }

    if (!v32)
    {
      v33 = (v29 + 32);
      v34 = (v30 + 32);
      while (v31)
      {
        if (*v33 != *v34)
        {
          goto LABEL_26;
        }

        ++v33;
        ++v34;
        if (!--v31)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    ++v14;
    sub_1D5D2CFE8(v7, type metadata accessor for DebugFormatCacheFile);
    sub_1D5D2CFE8(v12, type metadata accessor for DebugFormatCacheFile);
    result = 1;
    if (v14 == v13)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D633CF14(uint64_t a1, uint64_t a2)
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

  v28 = v2;
  v29 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24[0] = *v5;
    v24[1] = v8;
    v10 = *v5;
    v9 = v5[1];
    v25[0] = v5[2];
    *(v25 + 11) = *(v5 + 43);
    v11 = v6[1];
    v26[0] = *v6;
    v26[1] = v11;
    v13 = *v6;
    v12 = v6[1];
    v27[0] = v6[2];
    *(v27 + 11) = *(v6 + 43);
    v22[0] = v10;
    v22[1] = v9;
    v23[0] = v5[2];
    *(v23 + 11) = *(v5 + 43);
    v20[0] = v13;
    v20[1] = v12;
    v21[0] = v6[2];
    *(v21 + 11) = *(v6 + 43);
    v18 = v13;
    v19 = v10;
    sub_1D665F27C(v24, v17, qword_1EDF2F000, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue.CaseValue);
    sub_1D665F27C(v26, v17, qword_1EDF2F000, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue.CaseValue);

    v14 = static FormatExpression.== infix(_:_:)(&v19, &v18);

    if ((v14 & 1) == 0)
    {
      sub_1D62B7904(v26);
      sub_1D62B7904(v24);
      return 0;
    }

    v15 = static FormatOptionsNodeStatementValue.== infix(_:_:)(v22 + 8, v20 + 8);
    sub_1D62B7904(v26);
    sub_1D62B7904(v24);
    if ((v15 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v5 += 4;
    v6 += 4;
  }

  return 1;
}

uint64_t sub_1D633D10C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 49);
  for (i = (a1 + 49); ; i += 24)
  {
    v5 = *(i - 17);
    v6 = *(i - 9);
    v7 = *(i - 1);
    v8 = *i;
    v9 = *(v3 - 17);
    v10 = *(v3 - 9);
    v11 = *(v3 - 1);
    if ((*i & 1) == 0)
    {
      break;
    }

    if ((*v3 & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_1D5E04C58(v5, v6, v7, 1);
    sub_1D5E04C58(v9, v10, v11, 1);
    if ((0x29282F2A2D2BuLL >> (8 * v5)) != (0x29282F2A2D2BuLL >> (8 * v9)))
    {
      v13 = v5;
      v14 = v6;
      v15 = v7;
      v16 = 1;
      goto LABEL_26;
    }

LABEL_7:
    sub_1D5E04C68(v5, v6, v7, v8);
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  if (*v3)
  {
LABEL_22:
    sub_1D5E04C58(*(i - 17), *(i - 9), *(i - 1), *i);
    sub_1D5E04C58(v9, v10, v11, v8 ^ 1);
    sub_1D5E04C68(v5, v6, v7, v8);
    v16 = v8 ^ 1;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    goto LABEL_26;
  }

  if ((*(i - 1) & 1) == 0)
  {
    if (*(v3 - 1))
    {
      goto LABEL_24;
    }

    sub_1D5E04C58(*(i - 17), *(i - 9), *(i - 1), 0);
    sub_1D5E04C58(v9, v10, v11, 0);
    sub_1D5E04C58(v5, v6, v7, 0);
    sub_1D5E04C58(v9, v10, v11, 0);
    sub_1D5D2F2C8(v5, v6, 0);
    sub_1D5D2F2C8(v9, v10, 0);
    sub_1D5E04C68(v5, v6, v7, 0);
    if (v5 != v9)
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  if (*(v3 - 1))
  {
    if (v5 == v9 && v6 == v10)
    {
      sub_1D5E04C58(*(i - 17), *(i - 9), *(i - 1), 0);
      sub_1D5E04C58(v5, v6, v11, 0);
      sub_1D5E04C58(v5, v6, v7, 0);
      sub_1D5E04C58(v5, v6, v11, 0);
      sub_1D5E04C58(v5, v6, v7, 0);
      sub_1D5D2F2C8(v5, v6, 1);
      sub_1D5D2F2C8(v5, v6, 1);
    }

    else
    {
      v17 = sub_1D72646CC();
      sub_1D5E04C58(v5, v6, v7, 0);
      sub_1D5E04C58(v9, v10, v11, 0);
      sub_1D5E04C58(v5, v6, v7, 0);
      sub_1D5E04C58(v9, v10, v11, 0);
      sub_1D5E04C58(v5, v6, v7, 0);
      sub_1D5D2F2C8(v5, v6, 1);
      sub_1D5D2F2C8(v9, v10, 1);
      if ((v17 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_6:
    sub_1D5E04C68(v5, v6, v7, 0);
    sub_1D5E04C68(v9, v10, v11, 0);
    goto LABEL_7;
  }

  sub_1D5E04C58(*(i - 17), *(i - 9), *(i - 1), 0);

LABEL_24:
  sub_1D5E04C58(v5, v6, v7, 0);
  sub_1D5E04C58(v9, v10, v11, 0);
  sub_1D5E04C58(v5, v6, v7, 0);
  sub_1D5E04C58(v9, v10, v11, 0);
  sub_1D5D2F2C8(v5, v6, v7 & 1);
  sub_1D5D2F2C8(v9, v10, (v7 & 1) == 0);
  sub_1D5E04C68(v5, v6, v7, 0);
LABEL_25:
  sub_1D5E04C68(v5, v6, v7, 0);
  sub_1D5E04C68(v9, v10, v11, 0);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = 0;
LABEL_26:
  sub_1D5E04C68(v13, v14, v15, v16);
  return 0;
}

uint64_t sub_1D633D588(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = *v4;
      v9 = v7 >> 6;
      if (v7 >> 6)
      {
        if (v9 == 1)
        {
          v10 = v8 & 0xC0;
          v11 = (v8 ^ v6) & 1;
          if (v10 != 64 || v11 != 0)
          {
            return 0;
          }
        }

        else if ((v8 & 0xC0) != 0x80)
        {
          return 0;
        }
      }

      else if (v8 > 0x3F || v6 != v8)
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D633D620(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v3 = (a2 + 64);
      v4 = (a1 + 64);
      do
      {
        v5 = *(v4 - 3);
        v6 = *(v4 - 2);
        v7 = *(v4 - 1);
        v8 = *v4;
        v21 = *(v4 - 4);
        v22 = v5;
        v23 = v6;
        v24 = v7;
        v25 = v8;
        v10 = *(v3 - 3);
        v11 = *(v3 - 2);
        v12 = *(v3 - 1);
        v16 = *(v3 - 4);
        v9 = v16;
        v17 = v10;
        v18 = v11;
        v19 = v12;
        v20 = *v3;
        v13 = v20;
        sub_1D5ECEE80(v21, v5, v6, v7, v8);
        sub_1D5ECEE80(v9, v10, v11, v12, v13);
        v14 = _s8NewsFeed32FormatImageNodeRequestAdjustmentO2eeoiySbAC_ACtFZ_0(&v21, &v16);
        sub_1D5ECEF00(v16, v17, v18, v19, v20);
        sub_1D5ECEF00(v21, v22, v23, v24, v25);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v4 += 40;
        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1D633D734(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = (v4 + 24 * v3);
    result = *v6;
    v7 = v6[1];
    v8 = v6[2];
    v9 = (v5 + 24 * v3);
    v10 = v9[2];
    if (result != *v9 || v7 != v9[1])
    {
      result = sub_1D72646CC();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(v8 + 16);
    if (v12 != *(v10 + 16))
    {
      return 0;
    }

    if (v12)
    {
      v13 = v8 == v10;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = (v8 + 32);
      v15 = (v10 + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          return 0;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D633D840(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x4D6465726579616CLL;
      }

      else
      {
        v5 = 0x616C506F65646976;
      }

      if (*v3)
      {
        v6 = 0xEC00000061696465;
      }

      else
      {
        v6 = 0xED00006B63616279;
      }

      if (*v4)
      {
        v7 = 0x4D6465726579616CLL;
      }

      else
      {
        v7 = 0x616C506F65646976;
      }

      if (*v4)
      {
        v8 = 0xEC00000061696465;
      }

      else
      {
        v8 = 0xED00006B63616279;
      }

      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1D72646CC();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D633D968(uint64_t a1, uint64_t a2)
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

  v65 = v2;
  v66 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[5];
    v50 = v5[6];
    v51 = v8;
    v10 = v5[7];
    v52[0] = v5[8];
    *(v52 + 9) = *(v5 + 137);
    v11 = v5[3];
    v12 = v5[1];
    v46 = v5[2];
    v47 = v11;
    v13 = v5[3];
    v14 = v5[5];
    v48 = v5[4];
    v49 = v14;
    v15 = v5[1];
    v45[0] = *v5;
    v45[1] = v15;
    v42 = v50;
    v43 = v10;
    v44[0] = v5[8];
    *(v44 + 9) = *(v5 + 137);
    v38 = v46;
    v39 = v13;
    v40 = v48;
    v41 = v9;
    v36 = v45[0];
    v37 = v12;
    v16 = v6[7];
    v17 = v6[5];
    v58 = v6[6];
    v59 = v16;
    v18 = v6[7];
    v60[0] = v6[8];
    *(v60 + 9) = *(v6 + 137);
    v19 = v6[3];
    v20 = v6[1];
    v54 = v6[2];
    v55 = v19;
    v21 = v6[3];
    v22 = v6[5];
    v56 = v6[4];
    v57 = v22;
    v23 = v6[1];
    v53[0] = *v6;
    v53[1] = v23;
    v33 = v58;
    v34 = v18;
    v35[0] = v6[8];
    *(v35 + 9) = *(v6 + 137);
    v29 = v54;
    v30 = v21;
    v31 = v56;
    v32 = v17;
    v27 = v53[0];
    v28 = v20;
    sub_1D5E42C00(v45, v26);
    sub_1D5E42C00(v53, v26);
    v24 = static PuzzleMenuConfig.== infix(_:_:)(&v36, &v27);
    v61[6] = v33;
    v61[7] = v34;
    v62[0] = v35[0];
    *(v62 + 9) = *(v35 + 9);
    v61[2] = v29;
    v61[3] = v30;
    v61[4] = v31;
    v61[5] = v32;
    v61[0] = v27;
    v61[1] = v28;
    sub_1D5E42C5C(v61);
    v63[6] = v42;
    v63[7] = v43;
    v64[0] = v44[0];
    *(v64 + 9) = *(v44 + 9);
    v63[2] = v38;
    v63[3] = v39;
    v63[4] = v40;
    v63[5] = v41;
    v63[0] = v36;
    v63[1] = v37;
    sub_1D5E42C5C(v63);
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 10;
    v5 += 10;
  }

  return 1;
}

uint64_t sub_1D633DB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  for (i = (a2 + 32); ; ++i)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *i;
    v8 = v6 >> 62;
    if (!(v6 >> 62))
    {
      if (v7 >> 62)
      {
        return 0;
      }

      v12 = *(v5 + 16);
      v13 = *(v7 + 16);
      swift_retain_n();
      swift_retain_n();

      LOBYTE(v12) = _s8NewsFeed024FormatAnimationNodeBasicD0C2eeoiySbAC_ACtFZ_0(v12, v13);

      if ((v12 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_5;
    }

    v9 = v7 >> 62;
    if (v8 == 1)
    {
      if (v9 != 1)
      {
        return 0;
      }

      v10 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();
      swift_retain_n();

      LOBYTE(v10) = _s8NewsFeed025FormatAnimationNodeSpringD0C2eeoiySbAC_ACtFZ_0(v10, v11);

      if ((v10 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_5;
    }

    if (v9 != 2)
    {
      return 0;
    }

    v14 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *(v14 + 16);
    v17 = *(v15 + 16);
    swift_retain_n();
    swift_retain_n();

    if ((sub_1D633DB70(v16, v17) & 1) == 0)
    {

      return 0;
    }

    v18 = *(v14 + 104);
    v19 = *(v14 + 120);
    v20 = *(v14 + 136);
    *(v74 + 9) = *(v14 + 145);
    v74[0] = v20;
    v73 = v19;
    v21 = *(v14 + 40);
    v22 = *(v14 + 56);
    v23 = *(v14 + 72);
    v71 = *(v14 + 88);
    v70 = v23;
    v69 = v22;
    v68 = v21;
    v72 = v18;
    v67 = *(v14 + 24);
    v24 = *(v15 + 104);
    v25 = *(v15 + 120);
    v76[0] = *(v15 + 136);
    *(v76 + 9) = *(v15 + 145);
    v75[6] = v25;
    v75[5] = v24;
    v26 = *(v15 + 56);
    v75[1] = *(v15 + 40);
    v75[2] = v26;
    v27 = *(v15 + 88);
    v75[3] = *(v15 + 72);
    v75[4] = v27;
    v75[0] = *(v15 + 24);
    __src[6] = v73;
    __src[7] = v74[0];
    *(&__src[7] + 9) = *(v74 + 9);
    __src[2] = v22;
    __src[3] = v23;
    __src[5] = v72;
    __src[4] = v71;
    __src[1] = v68;
    __src[0] = v67;
    v28 = *(v15 + 104);
    v29 = *(v15 + 136);
    __src[15] = *(v15 + 120);
    __src[16] = v29;
    *(&__src[16] + 9) = *(v15 + 145);
    v30 = *(v15 + 40);
    v31 = *(v15 + 72);
    __src[11] = *(v15 + 56);
    __src[12] = v31;
    __src[13] = *(v15 + 88);
    __src[14] = v28;
    __src[9] = *(v15 + 24);
    __src[10] = v30;
    v77[2] = v22;
    v77[3] = v23;
    *&v78[9] = *(v74 + 9);
    v77[6] = v73;
    *v78 = v74[0];
    v77[4] = v71;
    v77[5] = v72;
    v77[0] = v67;
    v77[1] = v68;
    if (sub_1D60486AC(v77) != 1)
    {
      break;
    }

    v32 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v67, &v58, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v75, &v58, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v32, sub_1D5C34D84);

    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 9) = *(&__src[16] + 9);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (sub_1D60486AC(__dst) != 1)
    {
      goto LABEL_25;
    }

    v64 = __src[6];
    v65[0] = __src[7];
    *(v65 + 9) = *(&__src[7] + 9);
    v60 = __src[2];
    v61 = __src[3];
    v62 = __src[4];
    v63 = __src[5];
    v58 = __src[0];
    v59 = __src[1];
    sub_1D66615F8(&v58, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);

LABEL_5:
    if (!--v2)
    {
      return 1;
    }
  }

  v64 = __src[6];
  v65[0] = __src[7];
  *(v65 + 9) = *(&__src[7] + 9);
  v60 = __src[2];
  v61 = __src[3];
  v62 = __src[4];
  v63 = __src[5];
  v58 = __src[0];
  v59 = __src[1];
  v55 = __src[6];
  v56[0] = __src[7];
  *(v56 + 9) = *(&__src[7] + 9);
  v51 = __src[2];
  v52 = __src[3];
  v53 = __src[4];
  v54 = __src[5];
  v49 = __src[0];
  v50 = __src[1];
  __dst[6] = __src[15];
  __dst[7] = __src[16];
  *(&__dst[7] + 9) = *(&__src[16] + 9);
  __dst[2] = __src[11];
  __dst[3] = __src[12];
  __dst[4] = __src[13];
  __dst[5] = __src[14];
  __dst[0] = __src[9];
  __dst[1] = __src[10];
  if (sub_1D60486AC(__dst) != 1)
  {
    v47 = __src[15];
    v48[0] = __src[16];
    *(v48 + 9) = *(&__src[16] + 9);
    v43 = __src[11];
    v44 = __src[12];
    v45 = __src[13];
    v46 = __src[14];
    v41 = __src[9];
    v42 = __src[10];
    v33 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v67, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v75, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v33, sub_1D5C34D84);
    sub_1D5D355B8(&v67, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v33, sub_1D5C34D84);
    sub_1D5D355B8(v75, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v33, sub_1D5C34D84);
    sub_1D5D355B8(&v58, v39, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v33, sub_1D5C34D84);
    v36 = _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(&v49, &v41);

    sub_1D66615F8(v75, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v33, sub_1D5C34D84);
    sub_1D66615F8(&v67, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v33, sub_1D5C34D84);
    v37[6] = v47;
    v38[0] = v48[0];
    *(v38 + 9) = *(v48 + 9);
    v37[2] = v43;
    v37[3] = v44;
    v37[4] = v45;
    v37[5] = v46;
    v37[0] = v41;
    v37[1] = v42;
    sub_1D62B49F0(v37);
    v39[6] = v55;
    v40[0] = v56[0];
    *(v40 + 9) = *(v56 + 9);
    v39[2] = v51;
    v39[3] = v52;
    v39[4] = v53;
    v39[5] = v54;
    v39[0] = v49;
    v39[1] = v50;
    sub_1D62B49F0(v39);
    v47 = __src[6];
    v48[0] = __src[7];
    *(v48 + 9) = *(&__src[7] + 9);
    v43 = __src[2];
    v44 = __src[3];
    v45 = __src[4];
    v46 = __src[5];
    v41 = __src[0];
    v42 = __src[1];
    sub_1D66615F8(&v41, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v33, sub_1D5C34D84);

    if (!v36)
    {
      return 0;
    }

    goto LABEL_5;
  }

  v35 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(&v67, &v41, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v75, &v41, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v35, sub_1D5C34D84);
  sub_1D5D355B8(&v58, &v41, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, v35, sub_1D5C34D84);

  v47 = __src[6];
  v48[0] = __src[7];
  *(v48 + 9) = *(&__src[7] + 9);
  v43 = __src[2];
  v44 = __src[3];
  v45 = __src[4];
  v46 = __src[5];
  v41 = __src[0];
  v42 = __src[1];
  sub_1D62B49F0(&v41);
LABEL_25:
  memcpy(__dst, __src, 0x119uLL);
  sub_1D5D35558(__dst, &qword_1EC889AE0, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, sub_1D66F49B8);

  return 0;
}

uint64_t sub_1D633E44C(uint64_t a1, uint64_t a2)
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
    sub_1D5C5C4CC(v31, v16);
    sub_1D5C5C4CC(v37, v16);
    v14 = _s8NewsFeed19FormatSourceMapNodeV2eeoiySbAC_ACtFZ_0(&v24, &v17);
    v43[4] = v21;
    v43[5] = v22;
    v44 = v23;
    v43[0] = v17;
    v43[1] = v18;
    v43[2] = v19;
    v43[3] = v20;
    sub_1D5C5C540(v43);
    v45[4] = v28;
    v45[5] = v29;
    v46 = v30;
    v45[0] = v24;
    v45[1] = v25;
    v45[2] = v26;
    v45[3] = v27;
    sub_1D5C5C540(v45);
    if (!v14)
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

uint64_t sub_1D633E5BC(uint64_t a1, uint64_t a2)
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

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24[0] = *v5;
    v24[1] = v8;
    v9 = v5[3];
    v25 = v5[2];
    v26 = v9;
    v20 = v24[0];
    v21 = v8;
    v22 = v25;
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[3];
    v28 = v6[2];
    v29 = v12;
    v27[0] = v10;
    v27[1] = v11;
    v16 = v10;
    v17 = v11;
    v18 = v28;
    v19 = v12;
    sub_1D5C8C900(v24, v15);
    sub_1D5C8C900(v27, v15);
    v13 = _s8NewsFeed15FormatNodeStyleO2eeoiySbAC_ACtFZ_0(&v20, &v16);
    v30[0] = v16;
    v30[1] = v17;
    v30[2] = v18;
    v30[3] = v19;
    sub_1D5C8C974(v30);
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_1D5C8C974(v31);
    if (!v13)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

uint64_t sub_1D633E6D8(uint64_t a1, uint64_t a2)
{
  v109 = type metadata accessor for FormatVersionRequirement(0);
  v4 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v5);
  v105 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v83 - v9;
  sub_1D66F4EB8(0, &qword_1EDF0CE38, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v104 = &v83 - v14;
  v15 = type metadata accessor for FormatOption();
  v108 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = (&v83 - v22);
  v24 = (a1 >> 62);
  v106 = v10;
  if (a1 >> 62)
  {
    goto LABEL_85;
  }

  v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    v89 = v25;
    result = sub_1D7263BFC();
    v25 = v89;
    if (v89 == result)
    {
      goto LABEL_5;
    }

LABEL_81:
    v82 = 0;
    return v82 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25 != result)
  {
    goto LABEL_81;
  }

LABEL_5:
  if (!v25)
  {
    goto LABEL_73;
  }

  v27 = a1 & 0xFFFFFFFFFFFFFF8;
  v28 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v91 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v27 = a1;
  }

  if (v24)
  {
    v28 = v27;
  }

  v29 = a2 & 0xFFFFFFFFFFFFFF8;
  v30 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v90 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v29 = a2;
  }

  if (a2 >> 62)
  {
    v30 = v29;
  }

  if (v28 == v30)
  {
LABEL_73:
    v82 = 1;
    return v82 & 1;
  }

  v101 = v15;
  v102 = v12;
  if ((v25 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v24 = &v111;
    v32 = a1 & 0xC000000000000001;
    v33 = a2 & 0xC000000000000001;
    v84 = a2 + 32;
    v85 = a1 + 32;
    v100 = (v4 + 48);
    v87 = a1;
    v88 = a2;
    v89 = v25;
    v83 = a1 & 0xC000000000000001;
    v86 = a2 & 0xC000000000000001;
    while (1)
    {
      if (__OFADD__(v31, 1))
      {
        goto LABEL_90;
      }

      v93 = v31 + 1;
      if (v32)
      {
        result = MEMORY[0x1DA6FB460](v31, a1, v21);
        v34 = result;
        if (v33)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v31 >= *(v91 + 16))
        {
          goto LABEL_92;
        }

        v34 = *(v85 + 8 * v31);

        if (v33)
        {
LABEL_20:
          v15 = MEMORY[0x1DA6FB460](v31, a2);
          goto LABEL_25;
        }
      }

      if (v31 >= *(v90 + 16))
      {
        goto LABEL_93;
      }

      v15 = *(v84 + 8 * v31);

LABEL_25:
      v35 = v34[2] == v15[2] && v34[3] == v15[3];
      if (!v35 && (sub_1D72646CC() & 1) == 0 || (swift_beginAccess(), v103 = v34, v4 = v34[4], swift_beginAccess(), a1 = v15[4], v12 = *(v4 + 16), v12 != *(a1 + 16)))
      {
LABEL_75:

LABEL_80:

        goto LABEL_81;
      }

      if (v12)
      {
        v36 = v4 == a1;
      }

      else
      {
        v36 = 1;
      }

      if (!v36)
      {
        v92 = v15;

        if (*(v4 + 16))
        {
          v37 = 0;
          v15 = (v12 - 1);
          a2 = 32;
          while (1)
          {
            v38 = *(v4 + a2);
            v39 = *(v4 + a2 + 32);
            v125[1] = *(v4 + a2 + 16);
            v125[2] = v39;
            v125[0] = v38;
            v40 = *(v4 + a2 + 48);
            v41 = *(v4 + a2 + 64);
            v42 = *(v4 + a2 + 80);
            v126 = *(v4 + a2 + 96);
            v125[4] = v41;
            v125[5] = v42;
            v125[3] = v40;
            v43 = *(v4 + a2 + 16);
            v118 = *(v4 + a2);
            v119 = v43;
            v44 = *(v4 + a2 + 32);
            v45 = *(v4 + a2 + 48);
            v46 = *(v4 + a2 + 64);
            v47 = *(v4 + a2 + 80);
            v124 = *(v4 + a2 + 96);
            v122 = v46;
            v123 = v47;
            v120 = v44;
            v121 = v45;
            if (v37 >= *(a1 + 16))
            {
              break;
            }

            v48 = *(a1 + a2);
            v49 = *(a1 + a2 + 32);
            v127[1] = *(a1 + a2 + 16);
            v127[2] = v49;
            v127[0] = v48;
            v50 = *(a1 + a2 + 48);
            v51 = *(a1 + a2 + 64);
            v52 = *(a1 + a2 + 80);
            v128 = *(a1 + a2 + 96);
            v127[4] = v51;
            v127[5] = v52;
            v127[3] = v50;
            v53 = *(a1 + a2 + 16);
            v111 = *(a1 + a2);
            v112 = v53;
            v54 = *(a1 + a2 + 32);
            v55 = *(a1 + a2 + 48);
            v56 = *(a1 + a2 + 64);
            v57 = *(a1 + a2 + 80);
            v117 = *(a1 + a2 + 96);
            v115 = v56;
            v116 = v57;
            v113 = v54;
            v114 = v55;
            sub_1D5C5C4CC(v125, v110);
            sub_1D5C5C4CC(v127, v110);
            v12 = static FormatSourceMapNode.== infix(_:_:)(&v118, &v111);
            v129[4] = v115;
            v129[5] = v116;
            v130 = v117;
            v129[0] = v111;
            v129[1] = v112;
            v129[2] = v113;
            v129[3] = v114;
            sub_1D5C5C540(v129);
            v131[4] = v122;
            v131[5] = v123;
            v132 = v124;
            v131[0] = v118;
            v131[1] = v119;
            v131[2] = v120;
            v131[3] = v121;
            sub_1D5C5C540(v131);
            if ((v12 & 1) == 0)
            {

LABEL_79:

              goto LABEL_80;
            }

            if (v15 == v37)
            {

              v32 = v83;
              v15 = v92;
              goto LABEL_43;
            }

            a2 += 104;
            v37 = (v37 + 1);
            if (v37 >= *(v4 + 16))
            {
              goto LABEL_83;
            }
          }
        }

        else
        {
LABEL_83:
          __break(1u);
        }

        __break(1u);
LABEL_85:
        v25 = sub_1D7263BFC();
        goto LABEL_3;
      }

LABEL_43:
      v58 = v103;
      swift_beginAccess();
      v59 = v58[5];
      swift_beginAccess();
      v60 = *(v59 + 16);
      v107 = v15[5];
      if (v60 != *(v107 + 16))
      {
        goto LABEL_75;
      }

      v61 = v104;
      if (v60 && v59 != v107)
      {
        v92 = v15;
        v62 = v108;
        v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v98 = v107 + v63;
        v99 = v59 + v63;

        v64 = 0;
        v96 = v59;
        v97 = v23;
        v94 = v60;
        v95 = v18;
        while (v64 < *(v59 + 16))
        {
          v65 = *(v62 + 72) * v64;
          result = sub_1D6706BB4(v99 + v65, v23, type metadata accessor for FormatOption);
          if (v64 >= *(v107 + 16))
          {
            goto LABEL_89;
          }

          sub_1D6706BB4(v98 + v65, v18, type metadata accessor for FormatOption);
          if ((*v23 != *v18 || v23[1] != v18[1]) && (sub_1D72646CC() & 1) == 0)
          {
            goto LABEL_78;
          }

          *&v131[0] = v23[2];
          *&v129[0] = v18[2];

          v66 = static FormatOptionValue.== infix(_:_:)(v131, v129);

          if ((v66 & 1) == 0)
          {
            goto LABEL_78;
          }

          v67 = v23[3];
          v68 = v18[3];
          if (v67 == 1)
          {
            if (v68 != 1)
            {
              goto LABEL_78;
            }
          }

          else
          {
            if (v68 == 1)
            {
              goto LABEL_78;
            }

            if (v67)
            {
              if (!v68)
              {
                goto LABEL_78;
              }

              v69 = sub_1D5BFC390(v67, v68);
              sub_1D66A5FF8(v68);
              if ((v69 & 1) == 0)
              {
                goto LABEL_78;
              }
            }

            else if (v68)
            {
              goto LABEL_78;
            }
          }

          v70 = *(v101 + 7);
          v71 = *(v102 + 48);
          sub_1D5CDE2EC(v23 + v70, v61, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
          sub_1D5CDE2EC(v18 + v70, v61 + v71, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
          v72 = *v100;
          v73 = v109;
          if ((*v100)(v61, 1, v109) == 1)
          {
            v74 = v72(v61 + v71, 1, v73);
            v18 = v95;
            if (v74 != 1)
            {
              goto LABEL_77;
            }

            sub_1D5D35558(v61, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720], sub_1D5B5BF78);
            v59 = v96;
            v23 = v97;
          }

          else
          {
            v75 = v61;
            v76 = v61;
            v77 = v106;
            sub_1D5CDE2EC(v75, v106, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
            if (v72(v76 + v71, 1, v73) == 1)
            {
              sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
              v61 = v76;
              v18 = v95;
LABEL_77:
              sub_1D66F4424(v61, &qword_1EDF0CE38, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
              v23 = v97;
LABEL_78:
              sub_1D5D2CFE8(v18, type metadata accessor for FormatOption);
              sub_1D5D2CFE8(v23, type metadata accessor for FormatOption);

              goto LABEL_79;
            }

            v78 = v105;
            sub_1D5C8F76C(v76 + v71, v105, type metadata accessor for FormatVersionRequirement);
            v79 = sub_1D6024840(v77, v78);
            sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
            sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
            sub_1D5D35558(v76, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720], sub_1D5B5BF78);
            v61 = v76;
            v62 = v108;
            v18 = v95;
            v59 = v96;
            v23 = v97;
            if ((v79 & 1) == 0)
            {
              goto LABEL_78;
            }
          }

          ++v64;
          sub_1D5D2CFE8(v18, type metadata accessor for FormatOption);
          result = sub_1D5D2CFE8(v23, type metadata accessor for FormatOption);
          if (v94 == v64)
          {

            v32 = v83;
            v58 = v103;
            v15 = v92;
            goto LABEL_70;
          }
        }

        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        break;
      }

LABEL_70:
      swift_beginAccess();
      v80 = v58[6];
      swift_beginAccess();
      v81 = v15[6];

      v82 = sub_1D5BFC390(v80, v81);

      if (v82)
      {
        v31 = v93;
        a2 = v88;
        v33 = v86;
        a1 = v87;
        if (v93 != v89)
        {
          continue;
        }
      }

      return v82 & 1;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t sub_1D633F214(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v10 = sub_1D5E1E5A4(v5, v7);

      result = 0;
      if ((v10 & 1) == 0 || v6 != v8)
      {
        return result;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D633F328(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 2);
      v15 = *(v3 - 1);
      v9 = *v3;
      v10 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v10 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      sub_1D5F33D5C(v5);

      sub_1D5F33D5C(v8);
      if ((sub_1D711A22C(v5, v8) & 1) == 0)
      {
        goto LABEL_42;
      }

      if (v7 > 0xFD)
      {
        if (v9 <= 0xFD)
        {
          goto LABEL_42;
        }

        goto LABEL_35;
      }

      if (v9 > 0xFD)
      {
        goto LABEL_42;
      }

      if (!(v7 >> 6))
      {
        break;
      }

      if (v7 >> 6 == 1)
      {
        if ((v9 & 0xC0) != 0x40)
        {
          goto LABEL_42;
        }

        if (v7)
        {
          goto LABEL_21;
        }

LABEL_25:
        if ((v9 & 1) != 0 || v6 != v15)
        {
          goto LABEL_42;
        }

        goto LABEL_35;
      }

      v11 = v9 & 0xC0;
      if (v6 | v7 ^ 0x80)
      {
        if (v11 != 128 || v15 != 1)
        {
LABEL_42:

          sub_1D5F33D8C(v8);

          sub_1D5F33D8C(v5);
          return 0;
        }
      }

      else if (v11 != 128 || v15)
      {
        goto LABEL_42;
      }

      if (v9 != 128)
      {
        goto LABEL_42;
      }

LABEL_35:
      if (v5 >> 62)
      {
        v12 = 0;
        if (v8 >> 62)
        {
LABEL_5:

          sub_1D5F33D8C(v8);

          sub_1D5F33D8C(v5);
          if (v12)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v12 = *(v5 + 16);
        if (v8 >> 62)
        {
          goto LABEL_5;
        }
      }

      v13 = *(v8 + 16);

      sub_1D5F33D8C(v8);

      sub_1D5F33D8C(v5);
      if (v12 != v13)
      {
        return 0;
      }

LABEL_6:
      v3 += 40;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v9 >= 0x40)
    {
      goto LABEL_42;
    }

    if (v7)
    {
LABEL_21:
      if ((v9 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  return 1;
}

uint64_t sub_1D633F55C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 56);
  v4 = (result + 56);
  while (1)
  {
    if (!v2)
    {
      __break(1u);
      return result;
    }

    v10 = *(v4 - 3);
    v9 = *(v4 - 2);
    v11 = *(v4 - 8);
    v12 = *v4;
    v13 = *(v3 - 3);
    v14 = *(v3 - 2);
    v15 = *(v3 - 8);
    v16 = *v3;
    v62 = v13;
    v63 = v14;
    v61 = v2;
    if (*(v4 - 8))
    {
      if (v11 == 1)
      {
        if (v15 == 1)
        {
          v17 = *(v3 - 3);
          sub_1D5D03180(v10, v9, 1);

          sub_1D5D03180(v17, v14, 1);

          sub_1D5D07BA8(v10, v9, 1);
          sub_1D5D07BA8(v17, v14, 1);
          if ((v17 ^ v10))
          {
            sub_1D5D07BA8(v62, v14, 1);

            v51 = v10;
            v52 = v9;
            v53 = 1;
LABEL_65:
            sub_1D5D07BA8(v51, v52, v53);
            goto LABEL_66;
          }

          goto LABEL_25;
        }

        v47 = *(v3 - 3);
        sub_1D5D03180(v13, v14, v15);
        v48 = v10;
        v49 = v9;
        v50 = 1;
      }

      else
      {
        if (v15 == 2)
        {
          v20 = *(v3 - 3);
          sub_1D5D03180(v10, v9, 2);

          sub_1D5D03180(v20, v14, 2);

          sub_1D5D07BA8(v10, v9, 2);
          sub_1D5D07BA8(v20, v14, 2);
          if (v10 != v20)
          {
            sub_1D5D07BA8(v62, v14, 2);

            v51 = v10;
            v52 = v9;
            v53 = 2;
            goto LABEL_65;
          }

          goto LABEL_25;
        }

        v47 = *(v3 - 3);
        sub_1D5D03180(v13, v14, v15);
        v48 = v10;
        v49 = v9;
        v50 = 2;
      }

LABEL_59:
      sub_1D5D07BA8(v48, v49, v50);
      sub_1D5D07BA8(v47, v14, v15);
      return 0;
    }

    if (*(v3 - 8))
    {
      v47 = *(v3 - 3);
      sub_1D5D03180(v13, v14, v15);
      sub_1D5D03180(v10, v9, 0);
      v48 = v10;
      v49 = v9;
      v50 = 0;
      goto LABEL_59;
    }

    if (v10 == v13 && v9 == v14)
    {
      sub_1D5D03180(v10, v9, 0);

      sub_1D5D03180(v10, v9, 0);

      sub_1D5D03180(v10, v9, 0);
      sub_1D5D03180(v10, v9, 0);
      sub_1D5D07BA8(v10, v9, 0);
      sub_1D5D07BA8(v10, v9, 0);
    }

    else
    {
      v19 = *(v3 - 3);
      v59 = sub_1D72646CC();
      sub_1D5D03180(v10, v9, 0);

      sub_1D5D03180(v19, v14, 0);

      sub_1D5D03180(v19, v14, 0);
      sub_1D5D03180(v10, v9, 0);
      sub_1D5D07BA8(v10, v9, 0);
      sub_1D5D07BA8(v19, v14, 0);
      if ((v59 & 1) == 0)
      {
        sub_1D5D07BA8(v62, v14, 0);

        v51 = v10;
        v52 = v9;
        v53 = 0;
        goto LABEL_65;
      }
    }

LABEL_25:
    v21 = v12 >> 62;
    v22 = v16 >> 62;
    if (v12 >> 62)
    {
      break;
    }

    if (v22)
    {
      sub_1D5D07BA8(v62, v14, v15);

      v51 = v10;
      v52 = v9;
      v53 = v11;
      goto LABEL_65;
    }

    v42 = *(v16 + 32);
    v64 = *(v16 + 16);
    v65 = v42;
    *v66 = *(v16 + 48);
    *&v66[16] = *(v16 + 64);
    v43 = *(v12 + 32);
    v67 = *(v12 + 16);
    v68 = v43;
    *v69 = *(v12 + 48);
    *&v69[16] = *(v12 + 64);

    v44 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v67, &v64);

    sub_1D5D07BA8(v62, v63, v15);

    sub_1D5D07BA8(v10, v9, v11);

    if ((v44 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    v4 += 4;
    v3 += 4;
    v2 = v61 - 1;
    if (v61 == 1)
    {
      return 1;
    }
  }

  v23 = (v12 & 0x3FFFFFFFFFFFFFFFLL);
  if (v21 != 1)
  {
    if (v22 != 2)
    {
LABEL_62:
      sub_1D5D07BA8(v62, v14, v15);

      goto LABEL_63;
    }

    if (v23[2] != *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) || v23[3] != *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
    {
      v5 = sub_1D72646CC();
      sub_1D5D07BA8(v62, v63, v15);

      v6 = v10;
      v7 = v9;
      v8 = v11;
      goto LABEL_6;
    }

LABEL_50:
    sub_1D5D07BA8(v62, v14, v15);

LABEL_51:
    sub_1D5D07BA8(v10, v9, v11);

    goto LABEL_7;
  }

  if (v22 != 1)
  {
    goto LABEL_62;
  }

  v57 = v11;
  v58 = v10;
  v60 = v9;
  v25 = v23[3];
  v24 = v23[4];
  v26 = v23[2];
  v28 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v27 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v29 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v30 = *(v26 + 32);
  v67 = *(v26 + 16);
  v68 = v30;
  *v69 = *(v26 + 48);
  *&v69[15] = *(v26 + 63);
  v31 = *(v28 + 48);
  v65 = *(v28 + 32);
  *v66 = v31;
  v32 = *(v28 + 16);
  *&v66[15] = *(v28 + 63);
  v64 = v32;

  if ((static FormatCommandBinding.== infix(_:_:)(&v67, &v64) & 1) == 0 || (sub_1D633F55C(v25, v27) & 1) == 0)
  {
    goto LABEL_55;
  }

  if (!(v24 >> 62))
  {
    if (v29 >> 62)
    {
      goto LABEL_55;
    }

    v45 = *(v29 + 32);
    v64 = *(v29 + 16);
    v65 = v45;
    *v66 = *(v29 + 48);
    *&v66[16] = *(v29 + 64);
    v46 = *(v24 + 32);
    v67 = *(v24 + 16);
    v68 = v46;
    *v69 = *(v24 + 48);
    *&v69[16] = *(v24 + 64);

    v5 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v67, &v64);

    goto LABEL_53;
  }

  if (v24 >> 62 != 1)
  {
    if (v29 >> 62 != 2)
    {
      goto LABEL_55;
    }

    if (*((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) || *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
    {
      v5 = sub_1D72646CC();

LABEL_53:

      sub_1D5D07BA8(v62, v63, v15);

      v6 = v58;
      v7 = v60;
      v8 = v57;
LABEL_6:
      sub_1D5D07BA8(v6, v7, v8);

      if ((v5 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    v10 = v58;
    v9 = v60;
    LOBYTE(v11) = v57;
    v14 = v63;
    goto LABEL_50;
  }

  if (v29 >> 62 != 1)
  {
    goto LABEL_55;
  }

  v33 = (v24 & 0x3FFFFFFFFFFFFFFFLL);
  v54 = v33[4];
  v55 = v33[3];
  v34 = v33[2];
  v36 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v35 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v37 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v38 = *(v34 + 32);
  v67 = *(v34 + 16);
  v68 = v38;
  *v69 = *(v34 + 48);
  *&v69[15] = *(v34 + 63);
  v39 = *(v36 + 48);
  v65 = *(v36 + 32);
  *v66 = v39;
  v40 = *(v36 + 16);
  *&v66[15] = *(v36 + 63);
  v64 = v40;
  v56 = v35;

  if (static FormatCommandBinding.== infix(_:_:)(&v67, &v64) & 1) != 0 && (sub_1D633F55C(v55, v56))
  {
    *&v67 = v54;
    *&v64 = v37;
    v41 = static FormatAccessibilityContent.== infix(_:_:)(&v67, &v64);

    sub_1D5D07BA8(v62, v63, v15);

    v10 = v58;
    v9 = v60;
    LOBYTE(v11) = v57;
    if ((v41 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_51;
  }

LABEL_55:

  sub_1D5D07BA8(v62, v63, v15);

  v10 = v58;
  v9 = v60;
  LOBYTE(v11) = v57;
LABEL_63:
  sub_1D5D07BA8(v10, v9, v11);
LABEL_66:

  return 0;
}

uint64_t sub_1D633FE6C(uint64_t a1, uint64_t a2)
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

  v41 = v2;
  v42 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v30 = v5[2];
    v31 = v8;
    v9 = v5[5];
    v32 = v5[4];
    v33 = v9;
    v10 = v5[1];
    v29[0] = *v5;
    v29[1] = v10;
    v25 = v30;
    v26 = v8;
    v27 = v32;
    v28 = v9;
    v23 = v29[0];
    v24 = v10;
    v11 = v6[3];
    v35 = v6[2];
    v36 = v11;
    v12 = v6[5];
    v37 = v6[4];
    v38 = v12;
    v13 = v6[1];
    v34[0] = *v6;
    v34[1] = v13;
    v19 = v35;
    v20 = v11;
    v21 = v37;
    v22 = v12;
    v17 = v34[0];
    v18 = v13;
    sub_1D66F4220(v29, v16);
    sub_1D66F4220(v34, v16);
    v14 = sub_1D6CB4400(&v23, &v17);
    v39[2] = v19;
    v39[3] = v20;
    v39[4] = v21;
    v39[5] = v22;
    v39[0] = v17;
    v39[1] = v18;
    sub_1D66F427C(v39);
    v40[2] = v25;
    v40[3] = v26;
    v40[4] = v27;
    v40[5] = v28;
    v40[0] = v23;
    v40[1] = v24;
    sub_1D66F427C(v40);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 6;
    v5 += 6;
  }

  return 1;
}

uint64_t sub_1D633FFDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3 == 1)
      {
        v6 = 6578544;
      }

      else
      {
        v6 = 6513005;
      }

      if (*v3)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x656E6F6870;
      }

      if (*v3)
      {
        v8 = 0xE300000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      if (*v4 == 1)
      {
        v9 = 6578544;
      }

      else
      {
        v9 = 6513005;
      }

      if (*v4)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0x656E6F6870;
      }

      if (*v4)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v7 == v10 && v8 == v11)
      {
      }

      else
      {
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D6340114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x746C7561666564;
      }

      else
      {
        v5 = 1685217635;
      }

      if (*v3)
      {
        v6 = 0xE700000000000000;
      }

      else
      {
        v6 = 0xE400000000000000;
      }

      if (*v4)
      {
        v7 = 0x746C7561666564;
      }

      else
      {
        v7 = 1685217635;
      }

      if (*v4)
      {
        v8 = 0xE700000000000000;
      }

      else
      {
        v8 = 0xE400000000000000;
      }

      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1D72646CC();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D6340220(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 3)
      {
        if (*v3 > 5u)
        {
          if (v6 == 6)
          {
            v8 = 0x80000001D73BCB20;
          }

          else
          {
            v8 = 0x80000001D73BCB40;
          }

          v7 = 0xD000000000000010;
        }

        else if (v6 == 4)
        {
          v7 = 0x446C616D69636564;
          v8 = 0xED00007374696769;
        }

        else
        {
          v8 = 0xE700000000000000;
          v7 = 0x7372657474656CLL;
        }
      }

      else if (*v3 > 1u)
      {
        if (v6 == 2)
        {
          v8 = 0xE800000000000000;
          v7 = 0x73656E696C77656ELL;
        }

        else
        {
          v7 = 0xD000000000000011;
          v8 = 0x80000001D73BCAF0;
        }
      }

      else
      {
        if (*v3)
        {
          v7 = 0xD000000000000016;
        }

        else
        {
          v7 = 0x6170736574696877;
        }

        if (*v3)
        {
          v8 = 0x80000001D73BCAD0;
        }

        else
        {
          v8 = 0xEB00000000736563;
        }
      }

      v9 = *v4;
      if (v9 > 3)
      {
        if (*v4 > 5u)
        {
          if (v9 == 6)
          {
            v11 = 0x80000001D73BCB20;
            if (v7 != 0xD000000000000010)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v11 = 0x80000001D73BCB40;
            if (v7 != 0xD000000000000010)
            {
LABEL_5:
              v5 = sub_1D72646CC();

              if ((v5 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_6;
            }
          }
        }

        else if (v9 == 4)
        {
          v11 = 0xED00007374696769;
          if (v7 != 0x446C616D69636564)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xE700000000000000;
          if (v7 != 0x7372657474656CLL)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        if (*v4 > 1u)
        {
          if (v9 == 2)
          {
            v11 = 0xE800000000000000;
            if (v7 != 0x73656E696C77656ELL)
            {
              goto LABEL_5;
            }

            goto LABEL_45;
          }

          v10 = 0xD000000000000011;
          v11 = 0x80000001D73BCAF0;
        }

        else
        {
          v10 = 0x6170736574696877;
          v11 = 0xEB00000000736563;
          if (*v4)
          {
            v11 = 0x80000001D73BCAD0;
            if (v7 != 0xD000000000000016)
            {
              goto LABEL_5;
            }

            goto LABEL_45;
          }
        }

        if (v7 != v10)
        {
          goto LABEL_5;
        }
      }

LABEL_45:
      if (v8 != v11)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D6340518(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  v4 = (a2 + 40);
  while (1)
  {
    v7 = v3 + 2;
    v8 = *v3;
    v10 = *(v4 - 1);
    v9 = *v4;
    v104 = *(v3 - 1);
    v112[0] = v10;
    v11 = v8 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = v9 & 0x7FFFFFFFFFFFFFFFLL;

    swift_retain_n();
    swift_retain_n();

    v13 = static FormatExpression.== infix(_:_:)(&v104, v112);

    if ((v13 & 1) == 0)
    {
      goto LABEL_121;
    }

    v103 = v7;
    if (v8 < 0)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_121;
      }

      v101 = v2;
      v32 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v34 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      v35 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
      v36 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v38 = *(v12 + 32);
      v39 = *(v12 + 40);
      v104 = *(v11 + 16);
      v105 = v33;
      v106 = v34;
      v107 = v35;
      v108 = v36;
      v109 = v37;
      v110 = v38;
      v111 = v39;
      if (!v35)
      {

        if (v39)
        {
          goto LABEL_129;
        }

        sub_1D66AD7C0(&v104, &qword_1EC889AF0);

        v2 = v101;
        if (v36 != v32)
        {
          return 0;
        }

        goto LABEL_8;
      }

      if (v35 == 1)
      {
        if (v39 == 1)
        {

          sub_1D66AD7C0(&v104, &qword_1EC889AF0);
          if (v32 >> 6)
          {
            if (v32 >> 6 == 1)
            {

              if ((v36 & 0xC0) != 0x40)
              {
                return 0;
              }

              v2 = v101;
              if ((v36 ^ v32))
              {
                return 0;
              }
            }

            else
            {

              v2 = v101;
              if ((v36 & 0xC0) != 0x80)
              {
                return 0;
              }
            }
          }

          else
          {

            if (v36 >= 0x40u)
            {
              return 0;
            }

            v2 = v101;
            if ((v36 & 0x3F) != v32)
            {
              return 0;
            }
          }

          goto LABEL_8;
        }

LABEL_129:
        v79 = v36;
        v80 = v37;
        v81 = v38;
        v82 = v39;
      }

      else
      {
        if (v39 == 2)
        {
          if (v32 == v36 && v33 == v37 || (sub_1D72646CC() & 1) != 0)
          {
            sub_1D62B6240(v36, v37, v38, 2);
            sub_1D62B6240(v32, v33, v34, 2);

            sub_1D62B6240(v36, v37, v38, 2);
            sub_1D62B6240(v32, v33, v34, 2);
            v6 = sub_1D6341C50(v34, v38);
            sub_1D66AD7C0(&v104, &qword_1EC889AF0);
            sub_1D62B628C(v36, v37, v38, 2);
            sub_1D62B628C(v32, v33, v34, 2);

            v2 = v101;
            if ((v6 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_8;
          }

          v83 = v36;
          v84 = v37;
          v85 = v38;
          v86 = 2;
        }

        else
        {

          v83 = v36;
          v84 = v37;
          v85 = v38;
          v86 = v39;
        }

        sub_1D62B6240(v83, v84, v85, v86);
        v79 = v32;
        v80 = v33;
        v81 = v34;
        v82 = 2;
      }

      sub_1D62B6240(v79, v80, v81, v82);
      sub_1D66AD7C0(&v104, &qword_1EC889AF0);

LABEL_137:

      return 0;
    }

    if (v9 < 0)
    {
      goto LABEL_121;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v17 = *(v9 + 16);
    v16 = *(v9 + 24);

    if ((sub_1D6340518(v15, v17) & 1) == 0)
    {
LABEL_123:

      goto LABEL_137;
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_123;
    }

    v99 = v4;
    v102 = v2;
    v40 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v41 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v42 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v43 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v44 = v16 & 0x7FFFFFFFFFFFFFFFLL;
    v46 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v45 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v47 = *(v44 + 32);
    v48 = *(v44 + 40);
    v104 = v40;
    v105 = v41;
    v106 = v42;
    v107 = v43;
    v108 = v46;
    v109 = v45;
    v110 = v47;
    v111 = v48;
    if (v43)
    {
      if (v43 == 1)
      {
        if (v48 != 1)
        {
          goto LABEL_132;
        }

        sub_1D66AD7C0(&v104, &qword_1EC889AF0);
        if (v40 >> 6)
        {
          if (v40 >> 6 == 1)
          {
            if ((v46 & 0xC0) != 0x40)
            {
              goto LABEL_133;
            }

            if ((v46 ^ v40))
            {
              goto LABEL_122;
            }
          }

          else
          {
            if ((v46 & 0xC0) != 0x80)
            {
LABEL_133:

LABEL_122:

              goto LABEL_152;
            }
          }
        }

        else
        {
          if (v46 >= 0x40u)
          {
            goto LABEL_133;
          }

          if ((v46 & 0x3F) != v40)
          {
            goto LABEL_122;
          }
        }
      }

      else
      {
        if (v48 != 2)
        {

LABEL_132:

          sub_1D62B6240(v46, v45, v47, v48);
          sub_1D66AD7C0(&v104, &qword_1EC889AF0);

          goto LABEL_152;
        }

        if ((v40 != v46 || v41 != v45) && (sub_1D72646CC() & 1) == 0)
        {

          sub_1D62B6240(v46, v45, v47, 2);
          sub_1D62B6240(v40, v41, v42, 2);
          sub_1D66AD7C0(&v104, &qword_1EC889AF0);

          goto LABEL_122;
        }

        sub_1D62B6240(v46, v45, v47, 2);
        sub_1D62B6240(v40, v41, v42, 2);

        sub_1D62B6240(v46, v45, v47, 2);
        sub_1D62B6240(v40, v41, v42, 2);
        v70 = sub_1D6341C50(v42, v47);
        sub_1D66AD7C0(&v104, &qword_1EC889AF0);
        sub_1D62B628C(v46, v45, v47, 2);
        sub_1D62B628C(v40, v41, v42, 2);

        if ((v70 & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      goto LABEL_106;
    }

    if (v48)
    {
      goto LABEL_132;
    }

    sub_1D66AD7C0(&v104, &qword_1EC889AF0);

    v69 = (v46 ^ v40);

    v4 = v99;
    if (v69)
    {
      return 0;
    }

LABEL_8:
    v4 += 2;
    result = 1;
    v3 = v103;
    if (!--v2)
    {
      return result;
    }
  }

  if (v16 < 0)
  {
    goto LABEL_123;
  }

  v18 = *(v14 + 16);
  v19 = *(v14 + 24);
  v20 = *(v16 + 16);
  v21 = *(v16 + 24);

  if ((sub_1D6340518(v18, v20) & 1) == 0)
  {
LABEL_125:

    goto LABEL_152;
  }

  if (v19 < 0)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_125;
    }

    v99 = v4;
    v49 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v50 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v51 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v52 = v21 & 0x7FFFFFFFFFFFFFFFLL;
    v53 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v54 = *(v52 + 16);
    v55 = *(v52 + 24);
    v56 = *(v52 + 32);
    v57 = *(v52 + 40);
    v104 = v53;
    v105 = v49;
    v106 = v50;
    v107 = v51;
    v108 = v54;
    v109 = v55;
    v110 = v56;
    v111 = v57;
    if (v51)
    {
      if (v51 == 1)
      {
        if (v57 != 1)
        {
          goto LABEL_139;
        }

        v58 = v54;
        v59 = v54;

        sub_1D66AD7C0(&v104, &qword_1EC889AF0);
        if (v53 >> 6)
        {
          v60 = v59 & 0xC0;
          if (v53 >> 6 == 1)
          {
            if (v60 != 64)
            {
              goto LABEL_140;
            }

            if ((v58 ^ v53))
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (v60 != 128)
            {
LABEL_140:

LABEL_121:

              goto LABEL_122;
            }
          }
        }

        else
        {
          if (v59 >= 0x40)
          {
            goto LABEL_140;
          }

          if ((v58 & 0x3F) != v53)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_107;
      }

      if (v57 != 2)
      {
        v87 = v54;

        v54 = v87;
LABEL_139:
        v88 = v54;

        sub_1D62B6240(v88, v55, v56, v57);
        sub_1D66AD7C0(&v104, &qword_1EC889AF0);

        goto LABEL_152;
      }

      if (v53 != v54 || v49 != v55)
      {
        v72 = v54;
        v73 = sub_1D72646CC();
        v54 = v72;
        if ((v73 & 1) == 0)
        {

          sub_1D62B6240(v72, v55, v56, 2);
          sub_1D62B6240(v53, v49, v50, 2);
          sub_1D66AD7C0(&v104, &qword_1EC889AF0);

          goto LABEL_151;
        }
      }

      v102 = v2;
      v74 = v54;
      sub_1D62B6240(v54, v55, v56, 2);
      sub_1D62B6240(v53, v49, v50, 2);

      sub_1D62B6240(v74, v55, v56, 2);
      sub_1D62B6240(v53, v49, v50, 2);
      v75 = sub_1D6341C50(v50, v56);
      sub_1D66AD7C0(&v104, &qword_1EC889AF0);
      sub_1D62B628C(v74, v55, v56, 2);
      sub_1D62B628C(v53, v49, v50, 2);

      if ((v75 & 1) == 0)
      {
        goto LABEL_151;
      }

LABEL_106:

      v2 = v102;
LABEL_107:
      v4 = v99;
      goto LABEL_8;
    }

    if (v57)
    {
      goto LABEL_139;
    }

    v71 = v54;

    sub_1D66AD7C0(&v104, &qword_1EC889AF0);

    v4 = v99;
    if (v71 != v53)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v21 < 0)
  {
    goto LABEL_125;
  }

  v22 = v4;
  v24 = *(v19 + 16);
  v23 = *(v19 + 24);
  v26 = *(v21 + 16);
  v25 = *(v21 + 24);

  if ((sub_1D6340518(v24, v26) & 1) == 0)
  {
LABEL_124:

    goto LABEL_151;
  }

  v100 = v2;
  if (v23 < 0)
  {
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_124;
    }

    v61 = *((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v62 = *((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v63 = *((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v64 = *((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v66 = *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v65 = *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v67 = *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v68 = *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v98 = v61;
    v104 = v61;
    v105 = v62;
    v106 = v63;
    v107 = v64;
    v108 = v66;
    v109 = v65;
    v110 = v67;
    v111 = v68;
    if (!v64)
    {
      v4 = v22;
      if (v68)
      {
        goto LABEL_144;
      }

      sub_1D66AD7C0(&v104, &qword_1EC889AF0);

      if (v66 != v98)
      {
        goto LABEL_151;
      }

      goto LABEL_120;
    }

    v4 = v22;
    if (v64 == 1)
    {
      if (v68 != 1)
      {
        goto LABEL_144;
      }

      sub_1D66AD7C0(&v104, &qword_1EC889AF0);
      if (!(v98 >> 6))
      {
        if (v66 >= 0x40u)
        {
          goto LABEL_145;
        }

        if ((v66 & 0x3F) != v98)
        {
          goto LABEL_149;
        }

        goto LABEL_119;
      }

      if (v98 >> 6 == 1)
      {
        if ((v66 & 0xC0) != 0x40)
        {
          goto LABEL_145;
        }

        if ((v66 ^ v98))
        {
          goto LABEL_149;
        }

        goto LABEL_119;
      }

      if ((v66 & 0xC0) == 0x80)
      {

LABEL_119:

LABEL_120:

        v2 = v100;
        goto LABEL_8;
      }

LABEL_145:
    }

    else
    {
      if (v68 != 2)
      {
        v89 = v67;
        v90 = v65;

        v65 = v90;
        v67 = v89;
LABEL_144:
        v91 = v67;
        v92 = v65;

        sub_1D62B6240(v66, v92, v91, v68);
        sub_1D66AD7C0(&v104, &qword_1EC889AF0);

        goto LABEL_150;
      }

      v96 = v63;
      v97 = v67;
      if (v61 == v66 && v62 == v65 || (v76 = v66, v77 = v65, v78 = sub_1D72646CC(), v65 = v77, v66 = v76, (v78 & 1) != 0))
      {
        v94 = v65;
        sub_1D62B6240(v66, v65, v97, 2);
        sub_1D62B6240(v98, v62, v96, 2);

        sub_1D62B6240(v66, v94, v97, 2);
        sub_1D62B6240(v98, v62, v96, 2);
        v95 = sub_1D6341C50(v96, v97);
        sub_1D66AD7C0(&v104, &qword_1EC889AF0);
        sub_1D62B628C(v66, v94, v97, 2);
        sub_1D62B628C(v98, v62, v96, 2);

        if ((v95 & 1) == 0)
        {
          goto LABEL_149;
        }

        goto LABEL_119;
      }

      v93 = v65;

      sub_1D62B6240(v76, v93, v97, 2);
      sub_1D62B6240(v98, v62, v96, 2);
      sub_1D66AD7C0(&v104, &qword_1EC889AF0);
    }

LABEL_149:

LABEL_150:

    goto LABEL_151;
  }

  if (v25 < 0)
  {
    goto LABEL_124;
  }

  v28 = *(v23 + 16);
  v27 = *(v23 + 24);
  v29 = *(v25 + 16);
  v30 = *(v25 + 24);

  if (sub_1D6340518(v28, v29))
  {
    v104 = v27;
    v112[0] = v30;
    v31 = static FormatVideoPlayerContent.== infix(_:_:)(&v104, v112);

    if ((v31 & 1) == 0)
    {
      goto LABEL_127;
    }

    v4 = v22;
    goto LABEL_120;
  }

LABEL_127:

LABEL_151:

LABEL_152:

  return 0;
}

uint64_t sub_1D6341C50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = *(v4 + 8 * v3);
    v7 = *(v5 + 8 * v3);
    if (v6)
    {
      if (!v7)
      {
LABEL_31:

        return 0;
      }

      v8 = *(v6 + 16);
      if (v8 != *(v7 + 16))
      {
        return 0;
      }

      if (v8)
      {
        v9 = v6 == v7;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v10 = (v6 + 48);
        v11 = (v7 + 48);
        while (v8)
        {
          v12 = *v10;
          v13 = *v11;
          v14 = *(v10 - 2) == *(v11 - 2) && *(v10 - 1) == *(v11 - 1);
          if (!v14 && (sub_1D72646CC() & 1) == 0)
          {
            return 0;
          }

          result = *(v12 + 16);
          if (result != *(v13 + 16) || *(v12 + 24) != *(v13 + 24))
          {
            result = sub_1D72646CC();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v10 += 3;
          v11 += 3;
          if (!--v8)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        break;
      }
    }

    else
    {
      if (v7)
      {
        goto LABEL_31;
      }

      result = swift_bridgeObjectRelease_n();
    }

LABEL_7:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6341D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (!v7 && (sub_1D72646CC() & 1) == 0)
      {
        return 0;
      }

      if (v5 < 0)
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        v8 = v5 & 0x7FFFFFFFFFFFFFFFLL;
        v9 = *(v8 + 16);
        v10 = *(v8 + 24);
        v12 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v11 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        if (v9 < 0)
        {
          if ((v12 & 0x8000000000000000) == 0)
          {

            swift_retain_n();

            return 0;
          }

          v13 = v9 & 0x7FFFFFFFFFFFFFFFLL;
          v92 = *(v8 + 24);
          v14 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v90 = *(v13 + 24);
          v91 = v11;
          v15 = v12 & 0x7FFFFFFFFFFFFFFFLL;
          v16 = *(v15 + 16);
          v89 = *(v15 + 24);
          if (v14 < 0)
          {
            if ((v16 & 0x8000000000000000) == 0)
            {

              swift_retain_n();

LABEL_73:

              goto LABEL_112;
            }

            v17 = v14 & 0x7FFFFFFFFFFFFFFFLL;
            v18 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
            v88 = *(v17 + 24);
            v19 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
            if (v18 < 0)
            {
              if ((v19 & 0x8000000000000000) == 0)
              {

                swift_retain_n();
                swift_retain_n();

                goto LABEL_110;
              }

              v21 = v18 & 0x7FFFFFFFFFFFFFFFLL;
              v22 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
              v84 = *(v21 + 24);
              v23 = v19 & 0x7FFFFFFFFFFFFFFFLL;
              v24 = *(v23 + 16);
              v87 = *(v23 + 24);
              v85 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
              if (v22 < 0)
              {
                if ((v24 & 0x8000000000000000) == 0)
                {

                  swift_retain_n();
                  swift_retain_n();

                  goto LABEL_80;
                }

                v83 = v22 & 0x7FFFFFFFFFFFFFFFLL;
                v26 = *((v22 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                v82 = *(v83 + 24);
                v27 = v24 & 0x7FFFFFFFFFFFFFFFLL;
                v28 = *(v27 + 16);
                if (v26 < 0)
                {
                  if ((v28 & 0x8000000000000000) == 0)
                  {

                    swift_retain_n();
                    swift_retain_n();

                    swift_retain_n();

                    goto LABEL_84;
                  }

                  v79 = v26 & 0x7FFFFFFFFFFFFFFFLL;
                  v30 = *((v26 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                  v80 = v28 & 0x7FFFFFFFFFFFFFFFLL;
                  v81 = *(v27 + 24);
                  v31 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                  v77 = *(v79 + 24);
                  v78 = *(v80 + 24);
                  if (v30 < 0)
                  {
                    if ((v31 & 0x8000000000000000) == 0)
                    {

                      swift_retain_n();
                      swift_retain_n();

                      swift_retain_n();

                      swift_retain_n();

                      goto LABEL_106;
                    }

                    v33 = v30 & 0x7FFFFFFFFFFFFFFFLL;
                    v34 = *((v30 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                    v35 = *(v33 + 24);
                    v36 = v31 & 0x7FFFFFFFFFFFFFFFLL;
                    v37 = *(v36 + 16);
                    v76 = *(v36 + 24);
                    if (v34 < 0)
                    {
                      v74 = *(v33 + 24);
                      if ((v37 & 0x8000000000000000) == 0)
                      {

                        swift_retain_n();
                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

                        goto LABEL_91;
                      }

                      v39 = v34 & 0x7FFFFFFFFFFFFFFFLL;
                      v40 = *((v34 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                      v41 = *(v39 + 24);
                      v42 = v37 & 0x7FFFFFFFFFFFFFFFLL;
                      v44 = *(v42 + 16);
                      v43 = *(v42 + 24);
                      if (v40 < 0)
                      {
                        if ((v44 & 0x8000000000000000) == 0)
                        {

                          swift_retain_n();
                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          goto LABEL_104;
                        }

                        v45 = v40 & 0x7FFFFFFFFFFFFFFFLL;
                        v46 = *((v40 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                        v70 = *(v45 + 24);
                        v71 = *(v39 + 24);
                        v47 = v44 & 0x7FFFFFFFFFFFFFFFLL;
                        v48 = *(v47 + 16);
                        v72 = *(v47 + 24);
                        v73 = *(v42 + 24);
                        if (v46 < 0)
                        {
                          if ((v48 & 0x8000000000000000) == 0)
                          {

                            swift_retain_n();
                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            goto LABEL_103;
                          }

                          v50 = v46 & 0x7FFFFFFFFFFFFFFFLL;
                          v51 = *((v46 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                          v69 = *(v50 + 24);
                          v52 = v48 & 0x7FFFFFFFFFFFFFFFLL;
                          v53 = *(v52 + 16);
                          v54 = *(v52 + 24);
                          if (v51 < 0)
                          {
                            if ((v53 & 0x8000000000000000) == 0)
                            {

                              swift_retain_n();
                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              goto LABEL_102;
                            }

                            v66 = *((v51 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                            v67 = *((v51 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
                            v68 = *((v53 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                            v65 = *((v53 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

                            swift_retain_n();
                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();
                            v49 = v72;

                            swift_retain_n();
                            v55 = v54;

                            LOBYTE(v67) = sub_1D6365CBC(v66, v67, v68, v65);

                            if ((v67 & 1) == 0)
                            {

                              goto LABEL_102;
                            }
                          }

                          else
                          {
                            if (v53 < 0)
                            {
                              swift_retain_n();
                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

                              swift_retain_n();

LABEL_102:

                              goto LABEL_103;
                            }

                            swift_retain_n();
                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();
                            v49 = v72;

                            v55 = v54;
                          }

                          v56 = sub_1D6341D90(v69, v55);

                          swift_bridgeObjectRelease_n();
                          if ((v56 & 1) == 0)
                          {

                            goto LABEL_103;
                          }
                        }

                        else
                        {
                          if (v48 < 0)
                          {
                            swift_retain_n();
                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

                            swift_retain_n();

LABEL_103:

                            goto LABEL_104;
                          }

                          swift_retain_n();
                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          v49 = v72;
                        }

                        v57 = sub_1D6341D90(v70, v49);

                        swift_bridgeObjectRelease_n();
                        v43 = v73;
                        v41 = v71;
                        if ((v57 & 1) == 0)
                        {

                          goto LABEL_104;
                        }
                      }

                      else
                      {
                        if (v44 < 0)
                        {
                          swift_retain_n();
                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

                          swift_retain_n();

LABEL_104:

LABEL_105:

LABEL_106:

                          goto LABEL_107;
                        }

                        swift_retain_n();
                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();
                      }

                      v75 = sub_1D6341D90(v41, v43);

                      swift_bridgeObjectRelease_n();
                      v38 = v76;
                      v35 = v74;
                      if ((v75 & 1) == 0)
                      {

                        goto LABEL_105;
                      }
                    }

                    else
                    {
                      if (v37 < 0)
                      {
                        swift_retain_n();
                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

                        swift_retain_n();

LABEL_91:

                        goto LABEL_105;
                      }

                      swift_retain_n();
                      swift_retain_n();

                      swift_retain_n();

                      swift_retain_n();

                      swift_retain_n();

                      swift_retain_n();

                      v38 = v76;
                    }

                    v58 = sub_1D6341D90(v35, v38);

                    swift_bridgeObjectRelease_n();
                    v32 = v78;
                    if ((v58 & 1) == 0)
                    {

LABEL_107:

                      goto LABEL_108;
                    }
                  }

                  else
                  {
                    if (v31 < 0)
                    {
                      swift_retain_n();
                      swift_retain_n();

                      swift_retain_n();

                      swift_retain_n();

                      goto LABEL_106;
                    }

                    swift_retain_n();
                    swift_retain_n();

                    swift_retain_n();

                    swift_retain_n();

                    swift_retain_n();

                    v32 = v78;
                  }

                  v59 = sub_1D6341D90(v77, v32);

                  swift_bridgeObjectRelease_n();
                  v29 = v81;
                  if ((v59 & 1) == 0)
                  {

                    goto LABEL_108;
                  }
                }

                else
                {
                  if (v28 < 0)
                  {
                    swift_retain_n();
                    swift_retain_n();

                    swift_retain_n();

LABEL_84:

LABEL_108:

LABEL_109:

LABEL_110:

LABEL_111:

LABEL_112:

                    return 0;
                  }

                  v29 = *(v27 + 24);
                  swift_retain_n();
                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();
                }

                v60 = sub_1D6341D90(v82, v29);

                swift_bridgeObjectRelease_n();
                v25 = v87;
                if ((v60 & 1) == 0)
                {

                  goto LABEL_109;
                }
              }

              else
              {
                if (v24 < 0)
                {
                  swift_retain_n();
                  swift_retain_n();

LABEL_80:

                  goto LABEL_109;
                }

                swift_retain_n();
                swift_retain_n();

                swift_retain_n();

                v25 = v87;
              }

              v86 = sub_1D6341D90(v84, v25);

              swift_bridgeObjectRelease_n();
              v20 = v85;
              if ((v86 & 1) == 0)
              {

                goto LABEL_111;
              }
            }

            else
            {
              if (v19 < 0)
              {
                swift_retain_n();
                swift_retain_n();

                goto LABEL_111;
              }

              v20 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
              swift_retain_n();
              swift_retain_n();
            }

            v61 = sub_1D6341D90(v88, v20);

            swift_bridgeObjectRelease_n();
            if ((v61 & 1) == 0)
            {

              goto LABEL_111;
            }
          }

          else
          {

            swift_retain_n();

            if (v16 < 0)
            {

              goto LABEL_112;
            }
          }

          v62 = sub_1D6341D90(v90, v89);

          v11 = v91;
          v10 = v92;
          if ((v62 & 1) == 0)
          {

            goto LABEL_73;
          }
        }

        else
        {

          swift_retain_n();

          if (v12 < 0)
          {

            return 0;
          }
        }

        v63 = sub_1D6341D90(v10, v11);

        if ((v63 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6 < 0)
      {
        return 0;
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D6343C34(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_76;
    }

    v6 = (v4 + 24 * v3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = (v5 + 24 * v3);
    v11 = v10[2];
    v12 = v7 == *v10 && v8 == v10[1];
    if (!v12 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    v13 = *(v9 + 16);
    if (v13 != *(v11 + 16))
    {
      return 0;
    }

    if (v13 && v9 != v11)
    {
      break;
    }

LABEL_17:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  v46 = v11 + 32;
  v47 = v9 + 32;

  v15 = 0;
  v44 = v11;
  v45 = v9;
  v42 = v3;
  v43 = v2;
  v40 = v5;
  v41 = v4;
  v39 = v13;
  while (1)
  {
    if (v15 >= *(v9 + 16))
    {
      goto LABEL_77;
    }

    if (v15 >= *(v11 + 16))
    {
      goto LABEL_78;
    }

    v16 = (v47 + 48 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v51 = v16[4];
    v50 = v16[5];
    v48 = v15;
    v21 = (v46 + 48 * v15);
    v23 = v21[2];
    v22 = v21[3];
    v24 = v21[4];
    v52 = v21[5];
    v25 = v17 == *v21 && v18 == v21[1];
    if (!v25 && (sub_1D72646CC() & 1) == 0 || (v26 = *(v19 + 16), v26 != *(v23 + 16)))
    {
LABEL_69:

      goto LABEL_70;
    }

    v49 = v22;
    if (v26)
    {
      break;
    }

LABEL_45:
    v34 = *(v20 + 16);
    if (v34 != *(v49 + 16))
    {

LABEL_66:

LABEL_67:

      goto LABEL_70;
    }

    if (v34)
    {
      v35 = v20 == v49;
    }

    else
    {
      v35 = 1;
    }

    v11 = v44;
    if (!v35)
    {
      v36 = 4;
      while ((v36 - 4) < *(v20 + 16))
      {
        result = *(v20 + 8 * v36);
        v55[0] = result;
        if ((v36 - 4) >= *(v49 + 16))
        {
          goto LABEL_73;
        }

        v54 = *(v49 + 8 * v36);
        v37 = v54;
        sub_1D5FBABE0(result);
        sub_1D5FBABE0(v37);
        LOBYTE(v37) = static FormatSlotTransform.== infix(_:_:)(v55, &v54);
        sub_1D5FBAC60(v54);
        result = sub_1D5FBAC60(v55[0]);
        if ((v37 & 1) == 0)
        {
          goto LABEL_62;
        }

        ++v36;
        if (!--v34)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_55:
    if ((sub_1D6344414(v51, v24) & 1) == 0)
    {
LABEL_62:

LABEL_70:

      return 0;
    }

    v38 = sub_1D5BFC390(v50, v52);

    v9 = v45;
    if ((v38 & 1) == 0)
    {
      goto LABEL_69;
    }

    v15 = v48 + 1;
    v5 = v40;
    v3 = v42;
    v2 = v43;
    v4 = v41;
    if (v48 + 1 == v39)
    {

      goto LABEL_17;
    }
  }

  if (v19 == v23)
  {
    goto LABEL_45;
  }

  v27 = 0;
  v28 = 0;
  v53 = v23;
  while (v28 < *(v19 + 16))
  {
    if (v28 >= *(v23 + 16))
    {
      goto LABEL_75;
    }

    v29 = *(v19 + v27 + 48);
    v30 = *(v23 + v27 + 48);
    v31 = *(v19 + v27 + 32) == *(v23 + v27 + 32) && *(v19 + v27 + 40) == *(v23 + v27 + 40);
    if (!v31 && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_62;
    }

    v32 = v30 & 0xF000000000000007;
    if ((~v29 & 0xF000000000000007) != 0)
    {
      if (v32 == 0xF000000000000007)
      {

        sub_1D5C84FF4(v29);
        sub_1D5C84FF4(v30);
        goto LABEL_62;
      }

      v54 = v30;
      v55[0] = v29;
      sub_1D5CFCFAC(v30);
      sub_1D5CFCFAC(v29);
      sub_1D5CFCFAC(v29);
      sub_1D5CFCFAC(v30);

      sub_1D5CFCFAC(v29);

      sub_1D5CFCFAC(v30);
      v33 = static FormatOptionValue.== infix(_:_:)(v55, &v54);
      sub_1D5C84FF4(v29);
      sub_1D5C84FF4(v30);
      sub_1D5C84FF4(v30);
      sub_1D5C84FF4(v29);

      sub_1D5C84FF4(v30);

      result = sub_1D5C84FF4(v29);
      if ((v33 & 1) == 0)
      {

        goto LABEL_67;
      }
    }

    else
    {
      if (v32 != 0xF000000000000007)
      {

        sub_1D5C84FF4(v29);
        sub_1D5C84FF4(v30);

        goto LABEL_66;
      }

      sub_1D5C84FF4(v29);
      result = sub_1D5C84FF4(v30);
    }

    ++v28;
    v27 += 24;
    v23 = v53;
    if (v26 == v28)
    {
      goto LABEL_45;
    }
  }

LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_1D6344414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSlotItemObject();
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for FormatContentSlotItem();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v41 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v22 = 0;
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v45 = *(a1 + 16);
  v46 = a2 + v23;
  v47 = *(v18 + 72);
  v48 = a1 + v23;
  v42 = v15;
  v43 = v12;
  v44 = &v41 - v19;
  while (1)
  {
    v26 = v47 * v22;
    result = sub_1D6706BB4(v48 + v47 * v22, v20, type metadata accessor for FormatContentSlotItem);
    if (v22 == v21)
    {
      goto LABEL_34;
    }

    sub_1D6706BB4(v46 + v26, v15, type metadata accessor for FormatContentSlotItem);
    if ((_s8NewsFeed27FormatContentSlotItemObjectO2eeoiySbAC_ACtFZ_0(v20, v15) & 1) == 0)
    {
      goto LABEL_26;
    }

    v51 = v22;
    v27 = *(v12 + 20);
    v28 = *&v20[v27];
    v29 = *&v20[v27 + 8];
    v30 = &v15[v27];
    v31 = *v30;
    v32 = v30[1];
    if (v28)
    {
      break;
    }

    sub_1D5D615EC(0);
    if (v31)
    {
      sub_1D5D615EC(v31);
      goto LABEL_31;
    }

    sub_1D5D615EC(0);
    v25 = 0;
LABEL_8:
    v22 = v51 + 1;
    sub_1D5CDE22C(v25);
    sub_1D5D2CFE8(v15, type metadata accessor for FormatContentSlotItem);
    sub_1D5D2CFE8(v20, type metadata accessor for FormatContentSlotItem);
    result = 1;
    v21 = v45;
    if (v22 == v45)
    {
      return result;
    }
  }

  if (!v31)
  {
    sub_1D5D615EC(v28);
    sub_1D5D615EC(0);
    sub_1D5D615EC(v28);

LABEL_31:
    sub_1D5CDE22C(v28);
    sub_1D5CDE22C(v31);
    goto LABEL_26;
  }

  sub_1D5D615EC(v28);
  sub_1D5D615EC(v31);
  sub_1D5D615EC(v28);
  v49 = v31;
  v50 = v28;
  if ((sub_1D6339F3C(v28, v31) & 1) == 0 || (v33 = *(v29 + 16), v33 != *(v32 + 16)))
  {
LABEL_25:
    sub_1D5CDE22C(v49);

    v40 = v50;

    sub_1D5CDE22C(v40);
    v15 = v42;
    v20 = v44;
LABEL_26:
    sub_1D5D2CFE8(v15, type metadata accessor for FormatContentSlotItem);
    sub_1D5D2CFE8(v20, type metadata accessor for FormatContentSlotItem);
    return 0;
  }

  if (!v33)
  {
LABEL_6:
    v12 = v43;
    v20 = v44;
    result = v49;
    v25 = v50;
LABEL_7:
    sub_1D5CDE22C(result);

    v15 = v42;
    goto LABEL_8;
  }

  v12 = v43;
  v20 = v44;
  result = v49;
  v25 = v50;
  if (v29 == v32)
  {
    goto LABEL_7;
  }

  v34 = 0;
  v35 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v36 = v29 + v35;
  v37 = v32 + v35;
  while (v34 < *(v29 + 16))
  {
    v38 = *(v52 + 72) * v34;
    result = sub_1D6706BB4(v36 + v38, v11, type metadata accessor for FormatContentSlotItemObject);
    if (v34 >= *(v32 + 16))
    {
      goto LABEL_33;
    }

    sub_1D6706BB4(v37 + v38, v7, type metadata accessor for FormatContentSlotItemObject);
    v39 = _s8NewsFeed27FormatContentSlotItemObjectO2eeoiySbAC_ACtFZ_0(v11, v7);
    sub_1D5D2CFE8(v7, type metadata accessor for FormatContentSlotItemObject);
    result = sub_1D5D2CFE8(v11, type metadata accessor for FormatContentSlotItemObject);
    if ((v39 & 1) == 0)
    {
      goto LABEL_25;
    }

    if (v33 == ++v34)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D63448F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1D72646CC();
        result = 0;
        if (v8 & 1) == 0 || ((v5 ^ v6))
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D6344A40(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t *, uint64_t *), void (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5 == *(a2 + 16))
  {
    if (!v5 || a1 == a2)
    {
      v13 = 1;
    }

    else
    {
      v9 = (a1 + 32);
      v10 = (a2 + 32);
      do
      {
        v11 = *v9++;
        v16 = v11;
        v12 = *v10++;
        v15 = v12;
        a3();
        (a3)(v12);
        v13 = a4(&v16, &v15);
        a5(v15);
        a5(v16);
        --v5;
      }

      while ((v13 & 1) != 0 && v5);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1D6344B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

  v6 = (a1 + 48);
  for (i = (a2 + 48); ; i += 3)
  {
    v8 = *v6;
    v9 = *i;
    v10 = *(v6 - 2) == *(i - 2) && *(v6 - 1) == *(i - 1);
    if (!v10 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v9 < 0)
      {
        return 0;
      }

      if (*(v8 + 16))
      {
        if ((*(v9 + 16) & 1) == 0)
        {
          return 0;
        }
      }

      else if (*(v9 + 16))
      {
        return 0;
      }

      goto LABEL_6;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v11 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v13 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    if (v11 < 0)
    {
      break;
    }

    if (v13 < 0)
    {

      swift_retain_n();

LABEL_108:

      return 0;
    }

    v15 = *(v11 + 16);
    v16 = *(v13 + 16);

    swift_retain_n();

    if (v15 != v16)
    {

      goto LABEL_108;
    }

LABEL_103:

    v64 = a4(v12, v14);

    if ((v64 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v6 += 3;
    if (!--v4)
    {
      return 1;
    }
  }

  if ((v13 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    return 0;
  }

  v17 = v11 & 0x7FFFFFFFFFFFFFFFLL;
  v18 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v90 = *(v17 + 24);
  v19 = *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v91 = v12;
  v89 = *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v18 & 0x8000000000000000) == 0)
  {
    if (v19 < 0)
    {

      swift_retain_n();
    }

    else
    {
      v20 = *(v18 + 16);
      v21 = *(v19 + 16);

      swift_retain_n();

      if (v20 == v21)
      {

LABEL_102:

        v63 = a4(v90, v89);

        v12 = v91;
        if ((v63 & 1) == 0)
        {

          goto LABEL_113;
        }

        goto LABEL_103;
      }
    }

LABEL_113:

    goto LABEL_152;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    goto LABEL_113;
  }

  v22 = v18 & 0x7FFFFFFFFFFFFFFFLL;
  v23 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v85 = *(v22 + 24);
  v86 = a4;
  v24 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v25 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v23 & 0x8000000000000000) == 0)
  {
    if (v24 < 0)
    {
      goto LABEL_114;
    }

    if (*(v23 + 16))
    {
      if ((*(v24 + 16) & 1) == 0)
      {
        goto LABEL_114;
      }
    }

    else if (*(v24 + 16))
    {
LABEL_114:
      swift_retain_n();
      swift_retain_n();

      goto LABEL_151;
    }

    swift_retain_n();
    swift_retain_n();

    v29 = v25;
    a4 = v86;
LABEL_101:

    v62 = a4(v85, v29);

    swift_bridgeObjectRelease_n();

    if ((v62 & 1) == 0)
    {

      goto LABEL_151;
    }

    goto LABEL_102;
  }

  if ((v24 & 0x8000000000000000) == 0)
  {

    swift_retain_n();
    swift_retain_n();

    goto LABEL_151;
  }

  v26 = v23 & 0x7FFFFFFFFFFFFFFFLL;
  v27 = *((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v82 = *(v26 + 24);
  v28 = *((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v84 = *((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v83 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if (v27 < 0)
  {
    if ((v28 & 0x8000000000000000) == 0)
    {

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      goto LABEL_121;
    }

    v30 = v27 & 0x7FFFFFFFFFFFFFFFLL;
    v31 = *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v32 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v33 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v81 = *(v30 + 24);
    if (v31 < 0)
    {
      v80 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      if ((v32 & 0x8000000000000000) == 0)
      {

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        goto LABEL_149;
      }

      v35 = v31 & 0x7FFFFFFFFFFFFFFFLL;
      v36 = *((v31 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *((v32 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v79 = *((v32 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v78 = *(v35 + 24);
      if (v36 < 0)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          goto LABEL_129;
        }

        v38 = v36 & 0x7FFFFFFFFFFFFFFFLL;
        v39 = *((v36 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v75 = *(v38 + 24);
        v40 = *((v37 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v76 = *((v37 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        if (v39 < 0)
        {
          if ((v40 & 0x8000000000000000) == 0)
          {

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            goto LABEL_133;
          }

          v42 = v39 & 0x7FFFFFFFFFFFFFFFLL;
          v43 = *((v39 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v44 = *((v40 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v45 = *((v40 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
          v74 = *(v42 + 24);
          if (v43 < 0)
          {
            if ((v44 & 0x8000000000000000) == 0)
            {

              swift_retain_n();
              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              goto LABEL_146;
            }

            v47 = v43 & 0x7FFFFFFFFFFFFFFFLL;
            v48 = *((v43 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
            v71 = *(v47 + 24);
            v73 = *((v40 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
            v49 = *((v44 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
            v72 = *((v44 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
            if (v48 < 0)
            {
              if ((v49 & 0x8000000000000000) == 0)
              {

                swift_retain_n();
                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                goto LABEL_145;
              }

              v69 = v48 & 0x7FFFFFFFFFFFFFFFLL;
              v51 = *((v48 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
              v68 = *(v69 + 24);
              v52 = *((v49 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
              v70 = *((v49 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
              if (v51 < 0)
              {
                if ((v70 & 0x8000000000000000) == 0)
                {

                  swift_retain_n();
                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  goto LABEL_144;
                }

                v55 = *((v51 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
                v66 = *((v51 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                v56 = *((v70 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
                v57 = *((v70 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

                swift_retain_n();
                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                LOBYTE(v55) = a3(v66, v55, v56, v57);

                if ((v55 & 1) == 0)
                {

LABEL_144:

                  goto LABEL_145;
                }
              }

              else
              {
                if (v70 < 0)
                {
                  goto LABEL_140;
                }

                if (*(v51 + 16))
                {
                  if ((*(v70 + 16) & 1) == 0)
                  {
                    goto LABEL_140;
                  }
                }

                else if (*(v70 + 16))
                {
LABEL_140:
                  swift_retain_n();
                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  swift_retain_n();

                  goto LABEL_144;
                }

                swift_retain_n();
                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();
              }

              v54 = v86;
              v67 = v86(v68, v52);

              swift_bridgeObjectRelease_n();

              v46 = v76;
              v53 = v72;
              if ((v67 & 1) == 0)
              {

                goto LABEL_145;
              }
            }

            else
            {
              if (v49 < 0)
              {
                goto LABEL_137;
              }

              if (*(v48 + 16))
              {
                if ((*(v49 + 16) & 1) == 0)
                {
                  goto LABEL_137;
                }
              }

              else if (*(v49 + 16))
              {
LABEL_137:
                swift_retain_n();
                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

                swift_retain_n();

LABEL_145:

                goto LABEL_146;
              }

              swift_retain_n();
              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              v46 = v76;

              swift_retain_n();

              v53 = v72;

              v54 = v86;
            }

            v77 = v54(v71, v53);

            swift_bridgeObjectRelease_n();

            v50 = v73;
            if ((v77 & 1) == 0)
            {

              goto LABEL_146;
            }
          }

          else
          {
            if (v44 < 0)
            {
              goto LABEL_135;
            }

            if (*(v43 + 16))
            {
              if ((*(v44 + 16) & 1) == 0)
              {
                goto LABEL_135;
              }
            }

            else if (*(v44 + 16))
            {
LABEL_135:
              swift_retain_n();
              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

LABEL_146:

              goto LABEL_147;
            }

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            v46 = v76;

            v50 = v45;
          }

          v58 = v86(v74, v50);

          swift_bridgeObjectRelease_n();

          if ((v58 & 1) == 0)
          {

            goto LABEL_147;
          }
        }

        else
        {
          if (v40 < 0)
          {
            goto LABEL_131;
          }

          if (*(v39 + 16))
          {
            if ((*(v40 + 16) & 1) == 0)
            {
              goto LABEL_131;
            }
          }

          else if (*(v40 + 16))
          {
LABEL_131:
            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

LABEL_133:

LABEL_147:

            goto LABEL_148;
          }

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          v46 = v76;
        }

        a4 = v86;
        v59 = v86(v75, v46);

        swift_bridgeObjectRelease_n();

        v41 = v79;
        if ((v59 & 1) == 0)
        {

          goto LABEL_148;
        }
      }

      else
      {
        if (v37 < 0)
        {
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

LABEL_129:

          goto LABEL_148;
        }

        if (*(v36 + 16))
        {
          if ((*(v37 + 16) & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        else if (*(v37 + 16))
        {
LABEL_127:
          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

LABEL_148:

          goto LABEL_149;
        }

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        v41 = v79;

        a4 = v86;
      }

      v87 = a4(v78, v41);

      swift_bridgeObjectRelease_n();

      v33 = v80;
      if ((v87 & 1) == 0)
      {

        goto LABEL_149;
      }
    }

    else
    {
      if (v32 < 0)
      {
        goto LABEL_123;
      }

      if (*(v31 + 16))
      {
        if ((*(v32 + 16) & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      else if (*(v32 + 16))
      {
LABEL_123:
        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

LABEL_149:

        goto LABEL_150;
      }

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      a4 = v86;
    }

    v60 = a4(v81, v33);

    swift_bridgeObjectRelease_n();

    v34 = v84;
    if ((v60 & 1) == 0)
    {

      goto LABEL_150;
    }

    goto LABEL_100;
  }

  if (v28 < 0)
  {
    goto LABEL_119;
  }

  if (*(v27 + 16))
  {
    if ((*(v28 + 16) & 1) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_48;
  }

  if ((*(v28 + 16) & 1) == 0)
  {
LABEL_48:
    swift_retain_n();
    swift_retain_n();

    swift_retain_n();

    v34 = v84;

    a4 = v86;
LABEL_100:

    v61 = a4(v82, v34);

    swift_bridgeObjectRelease_n();

    v29 = v83;
    if ((v61 & 1) == 0)
    {

      goto LABEL_151;
    }

    goto LABEL_101;
  }

LABEL_119:
  swift_retain_n();
  swift_retain_n();

  swift_retain_n();

LABEL_121:

LABEL_150:

LABEL_151:

LABEL_152:

  return 0;
}