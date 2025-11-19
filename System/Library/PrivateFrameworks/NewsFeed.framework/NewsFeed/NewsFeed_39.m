double sub_1D5ED3E3C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5ED865C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D5ED3E9C()
{
  sub_1D5ED81E8();

  return sub_1D725A24C();
}

uint64_t sub_1D5ED3F18@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D5ED8950(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D5ED3FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v83 = a2;
  v71 = a3;
  v7 = type metadata accessor for FeedHeadline(0);
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v91 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v84 = &v71 - v12;
  v13 = sub_1D725895C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for GroupLayoutContext();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v18);
  v81 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v75 = &v71 - v22;
  v85 = type metadata accessor for GroupLayoutBindingContext();
  v76 = *(v85 - 1);
  MEMORY[0x1EEE9AC00](v85, v24);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v5;
  v28 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  v82 = a1;
  sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
  v77 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v83, v23, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v74 = sub_1D725893C();
  v73 = v29;
  (*(v14 + 8))(v17, v13);
  v89 = &type metadata for A12_V1;
  v30 = sub_1D5ECE7CC();
  v90 = v30;
  LOBYTE(v87) = v27;
  LOBYTE(v23) = v27;
  *(&v87 + 1) = v28;
  v88 = v5;
  type metadata accessor for GroupLayoutKey();
  v31 = swift_allocObject();
  sub_1D5BEE8A0(v28, v5);
  v86[0] = sub_1D7264C5C();
  v86[1] = v32;
  v86[9] = 95;
  v86[10] = 0xE100000000000000;
  v86[7] = 45;
  v86[8] = 0xE100000000000000;
  sub_1D5BF4D9C();
  v33 = sub_1D7263A6C();
  v35 = v34;

  *(v31 + 16) = v33;
  *(v31 + 24) = v35;
  v36 = (v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v37 = v73;
  *v36 = v74;
  v36[1] = v37;
  sub_1D5B68374(&v87, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v38 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v26, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v76 + 56))(v31 + v38, 0, 1, v85);
  v39 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v75, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v78 + 56))(v31 + v39, 0, 1, v79);
  __swift_destroy_boxed_opaque_existential_1(&v87);
  v89 = &type metadata for A12_V1;
  v90 = v30;
  v40 = v81;
  LOBYTE(v87) = v23;
  *(&v87 + 1) = v28;
  v88 = v5;
  sub_1D5BE3ED8(v83, v81, v77);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  inited = swift_initStackObject();
  v42 = MEMORY[0x1E69E7CC0];
  v83 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v43 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v28, v5);
  v44 = sub_1D5C0F8FC(0, 1, 1, v42);
  v46 = v44[2];
  v45 = v44[3];
  v47 = v46 + 1;
  if (v46 >= v45 >> 1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v44[2] = v47;
    v48 = &v44[2 * v46];
    v48[4] = sub_1D63106DC;
    v48[5] = 0;
    *v43 = v44;
    swift_endAccess();
    if (!*(*&v82[v85[14]] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v49 & 1) == 0) || (v50 = , v47 = sub_1D5C14D80(v50), , !v47))
    {
      if (!qword_1F50F4A10)
      {

        v60 = MEMORY[0x1E69E7CC0];
        goto LABEL_29;
      }

      v86[0] = &unk_1F50F49F0;
      v4 = v72;
      sub_1D5E239F4(v86);
      if (v4)
      {
        goto LABEL_38;
      }

      v56 = v86[0];
      if (*(v86[0] + 2))
      {
LABEL_19:
        v57 = *(v56 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v58, "FeedHeadline");
        v58[13] = 0;
        *(v58 + 7) = -5120;
        *(v58 + 2) = 0;
        *(v58 + 3) = 0;
        *(v58 + 4) = 4;
        *(v58 + 5) = v57;
        *(v58 + 6) = 0;
        *(v58 + 7) = 0;
        v58[64] = 0;
        swift_willThrow();
        swift_setDeallocating();

        sub_1D5BE780C(v40, type metadata accessor for GroupLayoutContext);
        return __swift_destroy_boxed_opaque_existential_1(&v87);
      }

      __break(1u);
      goto LABEL_36;
    }

    v79 = v31;
    v40 = *(v47 + 16);
    if (!v40)
    {
      break;
    }

    v51 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v43 = v80;
    v44 = v84;
    while (1)
    {
      v45 = *(v47 + 16);
      if (v51 >= v45)
      {
        break;
      }

      v53 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v46 = *(v43 + 72);
      sub_1D5BE3ED8(v47 + v53 + v46 * v51, v44, type metadata accessor for FeedHeadline);
      if ((v44[4] & 4) != 0)
      {
        sub_1D5BDA904(v44, v91, type metadata accessor for FeedHeadline);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86[0] = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v52 + 2) + 1, 1);
          v43 = v80;
          v52 = v86[0];
        }

        v31 = *(v52 + 2);
        v55 = *(v52 + 3);
        if (v31 >= v55 >> 1)
        {
          sub_1D5C0F91C(v55 > 1, v31 + 1, 1);
          v43 = v80;
          v52 = v86[0];
        }

        *(v52 + 2) = v31 + 1;
        sub_1D5BDA904(v91, &v52[v53 + v31 * v46], type metadata accessor for FeedHeadline);
        v44 = v84;
      }

      else
      {
        sub_1D5BE780C(v44, type metadata accessor for FeedHeadline);
      }

      if (v40 == ++v51)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_34:
    v44 = sub_1D5C0F8FC((v45 > 1), v47, 1, v44);
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v61 = v82;
  if ((*v82 & 1) == 0)
  {

    v62 = sub_1D62F071C(v52);

    v52 = v62;
  }

  v63 = *&v61[v85[18]];
  v64 = *&v61[v85[19]];
  if (__OFSUB__(v63, v64))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v65 = sub_1D5C0FAD4(v52, v63 - v64);
  v60 = sub_1D5C11E10(&unk_1F50F49F0, v65, v47);

  if (v60)
  {

    goto LABEL_28;
  }

  v60 = sub_1D5C11E10(&unk_1F50F49F0, v52, v47);

  if (!v60)
  {
    v86[0] = &unk_1F50F49F0;
    v4 = v72;
    sub_1D5E239F4(v86);
    if (v4)
    {
LABEL_38:

      __break(1u);
      return result;
    }

    v56 = v86[0];
    v40 = v81;
    if (*(v86[0] + 2))
    {
      goto LABEL_19;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_28:
  strcpy(v86, "FeedHeadline");
  BYTE5(v86[1]) = 0;
  HIWORD(v86[1]) = -5120;
  v86[2] = 0;
  v86[3] = 0;

  v67 = sub_1D5C107C4(v66);

  sub_1D5BDACA8(v86, v67);
  swift_setDeallocating();

  v40 = v81;
  v31 = v79;
LABEL_29:
  v68 = type metadata accessor for A12_V1.Bound();
  v69 = v71;
  v71[3] = v68;
  v69[4] = sub_1D5ED89B8(&qword_1EC8806D0, type metadata accessor for A12_V1.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
  *boxed_opaque_existential_1 = v31;
  sub_1D5B63F14(&v87, (boxed_opaque_existential_1 + 1));
  result = sub_1D5BDA904(v40, boxed_opaque_existential_1 + *(v68 + 24), type metadata accessor for GroupLayoutContext);
  *(boxed_opaque_existential_1 + *(v68 + 28)) = v60;
  return result;
}

uint64_t sub_1D5ED4B28@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v36 = sub_1D725A36C();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V1.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v43);
  sub_1D5B68374(v12 + 56, v42);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v43, v15 + 16);
  sub_1D5B63F14(v42, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v41[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v41, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v15 + 16);
  __swift_destroy_boxed_opaque_existential_1(v15 + 56);
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v42);
  sub_1D5B68374(v16 + 56, v41);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v42, v18 + 16);
  sub_1D5B63F14(v41, v18 + 56);
  *(v18 + 96) = v17;
  v40[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v40, v43);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v18 + 16);
  __swift_destroy_boxed_opaque_existential_1(v18 + 56);
  v19 = sub_1D6F50B74(v43, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v43[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v43[0];
  v39[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D5ED8184, v39);

  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v36);
  v38 = v22;
  sub_1D5ED8290(0, &qword_1EC8806F0, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v36 = sub_1D725A4CC();
  sub_1D725A4DC();
  v25 = v44;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D5BD48FC();
  v26 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v34 = v43[1];
  v35 = v43[0];
  *&v43[0] = v22;
  *&v42[0] = v25;
  MEMORY[0x1EEE9AC00](v26, v27);

  v28 = sub_1D725C00C();

  v29 = v37;
  *v37 = 0;
  v30 = v35;
  *(v29 + 24) = v34;
  *(v29 + 8) = v30;
  *&v43[0] = v28;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v31 = sub_1D72623BC();

  v33 = MEMORY[0x1E69E7CC0];
  *(v29 + 5) = v31;
  *(v29 + 6) = v33;
  return result;
}

uint64_t sub_1D5ED5074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D5ED5144(uint64_t a1, uint64_t a2)
{
  sub_1D5ED8950(0, &qword_1EC880708, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 12;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D5ED8290(0, &qword_1EC880710, MEMORY[0x1E69D7150]);
  sub_1D5ED824C(&qword_1EC880718, &qword_1EC880710, v11);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D5ED5330(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  sub_1D5ED8950(0, &qword_1EC880708, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v16 - v7);
  v19 = a1;
  v9 = sub_1D725994C();
  v10 = swift_allocBox();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69D6F50], v9);
  *v8 = v10;
  v12 = *(v5 + 104);
  v12(v8, *MEMORY[0x1E69D73C0], v4);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D5ED8290(0, &qword_1EC880720, MEMORY[0x1E69D6F38]);
  sub_1D5ED824C(&qword_1EC880728, &qword_1EC880720, v13);
  sub_1D7259A9C();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v19 = a1;
  v12(v8, *MEMORY[0x1E69D7460], v4);
  v18 = v17;
  sub_1D72599EC();
  return (v14)(v8, v4);
}

uint64_t sub_1D5ED55B8(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v28 = a1;
  sub_1D5ED8950(0, &qword_1EC880708, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v25 - v7);
  v31 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 6;
  *v8 = v9;
  v27 = *MEMORY[0x1E69D7490];
  v26 = *(v5 + 104);
  v26(v8);
  sub_1D5ED831C();
  sub_1D5ED8950(0, &qword_1EC880738, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D70D8]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7273AE0;
  v15 = v14 + v13;
  sub_1D5ED83AC();
  v17 = (v15 + *(v16 + 48));
  v18 = *MEMORY[0x1E69D7238];
  v19 = sub_1D725A0DC();
  (*(*(v19 - 8) + 104))(v15, v18, v19);
  *v17 = 0x6C6F437468676972;
  v17[1] = 0xEB000000006E6D75;
  (*(v12 + 104))(v15, *MEMORY[0x1E69D7020], v11);
  v20 = v25;
  v30 = v25;
  v21 = MEMORY[0x1E69D6F38];
  sub_1D5ED8290(0, &qword_1EC880720, MEMORY[0x1E69D6F38]);
  sub_1D5ED824C(&qword_1EC880728, &qword_1EC880720, v21);
  sub_1D7259A2C();

  v22 = *(v5 + 8);
  v22(v8, v4);
  v31 = v28;
  v23 = swift_allocObject();
  *(v23 + 16) = 6;
  *v8 = v23;
  (v26)(v8, v27, v4);
  v29 = v20;
  sub_1D7259A2C();
  return (v22)(v8, v4);
}

uint64_t sub_1D5ED59D0(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED8950(0, &qword_1EC880708, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 1;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE780C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D5ED8290(0, &qword_1EC880720, MEMORY[0x1E69D6F38]);
  sub_1D5ED824C(&qword_1EC880728, &qword_1EC880720, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D5ED5FA4(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v32 = a1;
  sub_1D5ED8950(0, &qword_1EC880708, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = (&v28 - v9);
  v45 = a1;
  v42 = *MEMORY[0x1E69D74A8];
  v41 = *(v6 + 104);
  v41(&v28 - v9, v8);
  sub_1D5ED831C();
  v39 = v11;
  sub_1D5ED8950(0, &qword_1EC880738, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D70D8]);
  v36 = v12;
  v13 = *(v12 - 8);
  v40 = *(v13 + 72);
  v31 = *(v13 + 80);
  v14 = (v31 + 32) & ~v31;
  v33 = v14;
  v15 = swift_allocObject();
  v38 = xmmword_1D7273AE0;
  *(v15 + 16) = xmmword_1D7273AE0;
  v35 = *MEMORY[0x1E69D7098];
  v34 = *(v13 + 104);
  v34(v15 + v14);
  v44 = a2;
  v16 = MEMORY[0x1E69D6F38];
  sub_1D5ED8290(0, &qword_1EC880720, MEMORY[0x1E69D6F38]);
  v18 = v17;
  v30 = sub_1D5ED824C(&qword_1EC880728, &qword_1EC880720, v16);
  v28 = v18;
  sub_1D72599EC();

  v19 = *(v6 + 8);
  v19(v10, v5);
  v29 = v19;
  v20 = v32;
  v45 = v32;
  v21 = sub_1D725994C();
  v22 = swift_allocBox();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69D6F50], v21);
  *v10 = v22;
  v24 = v41;
  (v41)(v10, *MEMORY[0x1E69D73C0], v5);
  sub_1D7259A9C();
  v19(v10, v5);
  v45 = v20;
  (v24)(v10, v42, v5);
  v25 = v33;
  v26 = swift_allocObject();
  *(v26 + 16) = v38;
  (v34)(v26 + v25, v35, v36);
  v43 = v37;
  sub_1D72599EC();

  return v29(v10, v5);
}

uint64_t sub_1D5ED6434(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED8950(0, &qword_1EC880708, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D5ED8290(0, &qword_1EC880720, MEMORY[0x1E69D6F38]);
  sub_1D5ED824C(&qword_1EC880728, &qword_1EC880720, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D5ED6A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED8950(0, &qword_1EC880708, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D5ED8290(0, &qword_1EC880720, MEMORY[0x1E69D6F38]);
  sub_1D5ED824C(&qword_1EC880728, &qword_1EC880720, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D5ED6FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v19 = a2;
  v20 = a1;
  sub_1D5ED8950(0, &qword_1EC880708, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v19 - v10);
  v25 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 3;
  *v11 = v12;
  v13 = *MEMORY[0x1E69D7490];
  v14 = *(v8 + 104);
  v14(v11, v13, v7);
  v24 = a2;
  v15 = MEMORY[0x1E69D6F38];
  sub_1D5ED8290(0, &qword_1EC880720, MEMORY[0x1E69D6F38]);
  sub_1D5ED824C(&qword_1EC880728, &qword_1EC880720, v15);
  sub_1D7259A2C();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v25 = v20;
  v17 = swift_allocObject();
  *(v17 + 16) = 3;
  *v11 = v17;
  v14(v11, v13, v7);
  v23 = v19;
  sub_1D7259A2C();
  return (v16)(v11, v7);
}

uint64_t sub_1D5ED7264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED8950(0, &qword_1EC880708, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 4uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 3 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D5ED8290(0, &qword_1EC880720, MEMORY[0x1E69D6F38]);
  sub_1D5ED824C(&qword_1EC880728, &qword_1EC880720, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D5ED783C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED8950(0, &qword_1EC880708, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 5uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 4 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D5ED8290(0, &qword_1EC880720, MEMORY[0x1E69D6F38]);
  sub_1D5ED824C(&qword_1EC880728, &qword_1EC880720, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D5ED7E10@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V1.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D5ED7F24(uint64_t a1)
{
  *(a1 + 8) = sub_1D5ED7F54();
  result = sub_1D5ED7FA8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5ED7F54()
{
  result = qword_1EC8806C0;
  if (!qword_1EC8806C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8806C0);
  }

  return result;
}

unint64_t sub_1D5ED7FA8()
{
  result = qword_1EC8806C8;
  if (!qword_1EC8806C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8806C8);
  }

  return result;
}

uint64_t type metadata accessor for A12_V1.Bound()
{
  result = qword_1EC8806D8;
  if (!qword_1EC8806D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5ED8048()
{
  result = qword_1EDF26CA0;
  if (!qword_1EDF26CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26CA0);
  }

  return result;
}

uint64_t sub_1D5ED80C4(uint64_t a1)
{
  result = sub_1D5ED89B8(&qword_1EC8806E8, type metadata accessor for A12_V1.Bound);
  *(a1 + 8) = result;
  return result;
}

void sub_1D5ED811C()
{
  if (!qword_1EDF19750)
  {
    sub_1D5B49474(255, &qword_1EDF27C08);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19750);
    }
  }
}

unint64_t sub_1D5ED8194()
{
  result = qword_1EC8806F8;
  if (!qword_1EC8806F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8806F8);
  }

  return result;
}

unint64_t sub_1D5ED81E8()
{
  result = qword_1EC880700;
  if (!qword_1EC880700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880700);
  }

  return result;
}

uint64_t sub_1D5ED824C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D5ED8290(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5ED8290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V1.Layout;
    v8[1] = &type metadata for A12_V1.Layout.Attributes;
    v8[2] = sub_1D5ED8194();
    v8[3] = sub_1D5ED81E8();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5ED831C()
{
  if (!qword_1EC880730)
  {
    sub_1D5ED8950(255, &qword_1EC880738, sub_1D5ED8194, &type metadata for A12_V1.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880730);
    }
  }
}

void sub_1D5ED83AC()
{
  if (!qword_1EDF3BFC0)
  {
    sub_1D725A0DC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3BFC0);
    }
  }
}

unint64_t sub_1D5ED8500()
{
  result = qword_1EC880740;
  if (!qword_1EC880740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880740);
  }

  return result;
}

unint64_t sub_1D5ED8558()
{
  result = qword_1EC880748;
  if (!qword_1EC880748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880748);
  }

  return result;
}

unint64_t sub_1D5ED85B0()
{
  result = qword_1EC880750;
  if (!qword_1EC880750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880750);
  }

  return result;
}

unint64_t sub_1D5ED8608()
{
  result = qword_1EC880758;
  if (!qword_1EC880758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880758);
  }

  return result;
}

uint64_t sub_1D5ED865C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D5ED8950(0, &qword_1EC880760, sub_1D5ED88FC, &type metadata for A12_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5ED88FC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D5ED89B8(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D5ED88FC()
{
  result = qword_1EC880768;
  if (!qword_1EC880768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880768);
  }

  return result;
}

void sub_1D5ED8950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D5ED89B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5ED8A14()
{
  result = qword_1EC880778;
  if (!qword_1EC880778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880778);
  }

  return result;
}

unint64_t sub_1D5ED8A6C()
{
  result = qword_1EC880780;
  if (!qword_1EC880780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880780);
  }

  return result;
}

unint64_t sub_1D5ED8AC4()
{
  result = qword_1EC880788;
  if (!qword_1EC880788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880788);
  }

  return result;
}

void EngagementBannerViewLayoutOptions.init(boundingSize:screenScale:safeAreaInsets:layoutMargins:padding:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, __int128 a10, uint64_t a11, uint64_t a12)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a9;
  *(a1 + 32) = a10;
  *(a1 + 48) = a11;
  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  *(a1 + 72) = a7;
  *(a1 + 80) = a8;
  *(a1 + 88) = a12;
}

uint64_t sub_1D5ED8B74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5ED8B94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t ConcernType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5ED8C84()
{
  result = qword_1EC880790;
  if (!qword_1EC880790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880790);
  }

  return result;
}

uint64_t type metadata accessor for FormatImageView()
{
  result = qword_1EDF31608;
  if (!qword_1EDF31608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D5ED8D88(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_1EDF31620];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  a1[qword_1EDF31618] = 0;
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a2, a3, a4, a5);
  [v12 setContentMode_];
  return v12;
}

void sub_1D5ED8E30(uint64_t a1)
{
  v1 = (a1 + qword_1EDF31620);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(a1 + qword_1EDF31618) = 0;
  sub_1D726402C();
  __break(1u);
}

id sub_1D5ED8EAC(void *a1, CGFloat a2, CGFloat a3, uint64_t a4, void *a5)
{
  if (*(a1 + qword_1EDF31618) == 1)
  {
    v8 = a5;
    v9 = a1;
    [v9 bounds];
    v18 = CGRectInset(v17, -20.0, -20.0);
    v16.x = a2;
    v16.y = a3;
    v10 = CGRectContainsPoint(v18, v16);

    if (v10)
    {
      v11 = v9;
    }

    else
    {

      v11 = 0;
    }
  }

  else
  {
    v14.receiver = a1;
    v14.super_class = swift_getObjectType();
    v11 = objc_msgSendSuper2(&v14, sel_hitTest_withEvent_, a5, a2, a3);
  }

  return v11;
}

uint64_t sub_1D5ED8FDC()
{
  v1 = *(*v0 + qword_1EDF31620);

  return v1;
}

void *LayeredMediaViewModelFactory.viewModel<A>(for:filters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D7261B9C();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  *v12 = sub_1D726308C();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8018], v8);
  v13 = sub_1D7261BBC();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v14 = sub_1D725DA1C();
    v18 = *(v14 + 16);
    if (v18)
    {
      v58[1] = a1;
      v58[2] = a3;
      v59 = a2;
      v60 = a4;
      v100 = MEMORY[0x1E69E7CC0];
      v19 = v14;
      sub_1D6997E60(0, v18, 0);
      v20 = v19;
      v21 = v18 - 1;
      v22 = v100;
      v23 = 32;
      v61 = v20;
      while (1)
      {
        v24 = *(v20 + v23);
        v25 = *(v20 + v23 + 16);
        v26 = *(v20 + v23 + 48);
        v94 = *(v20 + v23 + 32);
        v95 = v26;
        v92 = v24;
        v93 = v25;
        v27 = *(v20 + v23 + 64);
        v28 = *(v20 + v23 + 80);
        v29 = *(v20 + v23 + 96);
        *(v98 + 9) = *(v20 + v23 + 105);
        v97 = v28;
        v98[0] = v29;
        v96 = v27;
        memmove(__dst, (v20 + v23), 0x79uLL);
        if (sub_1D5ED9718(__dst) == 1)
        {
          v30 = sub_1D5D6EF44(__dst);
          v31 = objc_allocWithZone(MEMORY[0x1E69CE110]);
          v66 = v96;
          v67 = v97;
          v68[0] = v98[0];
          *(v68 + 9) = *(v98 + 9);
          v62 = v92;
          v63 = v93;
          v64 = v94;
          v65 = v95;
          v32 = sub_1D5D6EF44(&v62);
          sub_1D5ED9724(&v92, &v69);
          sub_1D5ED9780(v32, &v69);
          v33 = [v31 init];
          sub_1D5ED98AC(0, &qword_1EDF17318, &qword_1EDF045A8);
          objc_allocWithZone(v34);
          v35 = v33;
          v36 = sub_1D725CB8C();
          sub_1D5ED97DC(&v92);
          v73 = v30[4];
          v74 = v30[5];
          v75[0] = v30[6];
          *(v75 + 9) = *(v30 + 105);
          v69 = *v30;
          v70 = v30[1];
          v71 = v30[2];
          v72 = v30[3];
          *&v76 = v36;
          *(&v76 + 1) = v35;
          v81 = v73;
          v82 = v74;
          v83[0] = v75[0];
          *(v83 + 9) = *(v75 + 9);
          v77 = v69;
          v78 = v70;
          v79 = v71;
          v80 = v72;
          sub_1D5ED9830(&v76);
        }

        else
        {
          v37 = sub_1D5D6EF44(__dst);
          v38 = objc_allocWithZone(MEMORY[0x1E69CE100]);
          v73 = v96;
          v74 = v97;
          v75[0] = v98[0];
          *(v75 + 9) = *(v98 + 9);
          v69 = v92;
          v70 = v93;
          v71 = v94;
          v72 = v95;
          v39 = sub_1D5D6EF44(&v69);
          sub_1D5ED9724(&v92, &v62);
          sub_1D5ED9850(v39, &v62);
          v40 = [v38 init];
          sub_1D5ED98AC(0, &qword_1EDF17328, &qword_1EDF04638);
          objc_allocWithZone(v41);
          v42 = v40;
          v43 = sub_1D725CB8C();
          sub_1D5ED97DC(&v92);
          v66 = *(v37 + 64);
          v67 = *(v37 + 80);
          v68[0] = *(v37 + 96);
          LOBYTE(v68[1]) = *(v37 + 112);
          v62 = *v37;
          v63 = *(v37 + 16);
          v64 = *(v37 + 32);
          v65 = *(v37 + 48);
          *&v76 = v43;
          *(&v76 + 1) = v42;
          v81 = v66;
          v82 = v67;
          v83[0] = v68[0];
          LOBYTE(v83[1]) = v68[1];
          v77 = v62;
          v78 = v63;
          v79 = v64;
          v80 = v65;
          sub_1D5ED9904(&v76);
        }

        v90 = v82;
        v91[0] = v83[0];
        *(v91 + 9) = *(v83 + 9);
        v86 = v78;
        v87 = v79;
        v88 = v80;
        v89 = v81;
        v84 = v76;
        v85 = v77;
        v100 = v22;
        v45 = *(v22 + 16);
        v44 = *(v22 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1D6997E60((v44 > 1), v45 + 1, 1);
          v22 = v100;
        }

        *(v22 + 16) = v45 + 1;
        v46 = (v22 + 144 * v45);
        v46[2] = v84;
        v47 = v85;
        v48 = v86;
        v49 = v88;
        v46[5] = v87;
        v46[6] = v49;
        v46[3] = v47;
        v46[4] = v48;
        v50 = v89;
        v51 = v90;
        v52 = v91[0];
        *(v46 + 153) = *(v91 + 9);
        v46[8] = v51;
        v46[9] = v52;
        v46[7] = v50;
        v20 = v61;
        if (!v21)
        {
          break;
        }

        --v21;
        v23 += 128;
      }

      a2 = v59;
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    v53 = sub_1D725DA0C();
    v55 = v54;
  }

  else
  {
    __break(1u);
    swift_once();
    sub_1D7262EBC();
    sub_1D5C384A0();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    *&v76 = v8;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    sub_1D7263F9C();
    v16 = v84;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1D5B7E2C0();
    *(v15 + 32) = v16;
    sub_1D725C30C();

    v53 = sub_1D725DA0C();
    v55 = v17;

    v22 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for LayeredMediaViewModel();
  v56 = swift_allocObject();
  v56[2] = v53;
  v56[3] = v55;
  v56[4] = v22;
  v56[5] = a2;

  return v56;
}

uint64_t LayeredMediaViewModelFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5ED9830(uint64_t result)
{
  v1 = *(result + 136);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 136) = v1 & 1 | 0x80;
  return result;
}

void sub_1D5ED98AC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5B5A498(255, a3);
    v4 = sub_1D725CBBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5ED9904(uint64_t result)
{
  v1 = *(result + 136) & 1;
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 136) = v1;
  return result;
}

uint64_t FeedSlot.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedSlot.init(identifier:feedItemIdentifiers:feedItemIdentifierSelectors:feedItemIdentifierOptions:feedItemIdentifierAuxiliaries:feedOptions:feedSelectors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
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

uint64_t sub_1D5ED99AC(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  v10 = a3[1];
  v12 = *a4;
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = v11;
  *(v13 + 56) = v10;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v14 = sub_1D7261F3C();
  v16 = v15;

  *a1 = v14;
  a1[1] = v16;
  *a2 = v12;
}

uint64_t sub_1D5ED9ACC(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a3;
  v11 = a3[1];
  v13 = *a4;
  v12 = a4[1];
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7270C10;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v15 = sub_1D7261F3C();
  v17 = v16;

  *a1 = v15;
  a1[1] = v17;
  *a2 = v13;
  a2[1] = v12;
}

uint64_t FormatSpaceNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatSpaceNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatSpaceNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *a1 = v3;
  return sub_1D5C82CD8(v3);
}

unint64_t FormatSpaceNode.size.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  return sub_1D5C92A8C(v3);
}

uint64_t sub_1D5ED9E24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
}

uint64_t FormatSpaceNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t FormatSpaceNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatSpaceNode.__allocating_init(identifier:size:adjustments:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *a3;
  v12 = *(a5 + 32);
  v13 = *(a5 + 40);
  swift_beginAccess();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v11;
  swift_beginAccess();
  *(v10 + 40) = a4;
  v14 = *(a5 + 16);
  *(v10 + 48) = *a5;
  *(v10 + 64) = v14;
  *(v10 + 80) = v12;
  *(v10 + 88) = v13;
  return v10;
}

uint64_t FormatSpaceNode.init(identifier:size:adjustments:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = *(a5 + 32);
  v12 = *(a5 + 40);
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = v10;
  swift_beginAccess();
  *(v5 + 40) = a4;
  v13 = *(a5 + 16);
  *(v5 + 48) = *a5;
  *(v5 + 64) = v13;
  *(v5 + 80) = v11;
  *(v5 + 88) = v12;
  return v5;
}

uint64_t FormatSpaceNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB2398(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t FormatSpaceNode.__deallocating_deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB2398(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_1D5EDA118(uint64_t a1)
{
  result = sub_1D5EDA25C(&qword_1EC880798);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5EDA15C(void *a1)
{
  a1[1] = sub_1D5EDA25C(&qword_1EDF311E0);
  a1[2] = sub_1D5EDA25C(&qword_1EDF11810);
  result = sub_1D5EDA25C(&qword_1EC8807A0);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5EDA218(uint64_t a1)
{
  result = sub_1D5EDA25C(&qword_1EC8807A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5EDA25C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatSpaceNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*PuzzleEmbedAccessoryConfigMessageHandler.delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D5EDB8A4;
}

uint64_t sub_1D5EDA3E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PuzzleEmbedAccessoryConfigMessageHandler.accessoryConfigDataSource.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_accessoryConfigDataSource;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D5EDA4EC;
}

id PuzzleEmbedAccessoryConfigMessageHandler.__allocating_init(puzzleComponentsViewProvider:scriptsManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_accessoryConfigDataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_lastReceivedValue] = MEMORY[0x1E69E7CC8];
  v8 = &v7[OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_puzzleComponentsViewProvider];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_scriptsManager] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PuzzleEmbedAccessoryConfigMessageHandler.init(puzzleComponentsViewProvider:scriptsManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_accessoryConfigDataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_lastReceivedValue] = MEMORY[0x1E69E7CC8];
  v8 = &v3[OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_puzzleComponentsViewProvider];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_scriptsManager] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PuzzleEmbedAccessoryConfigMessageHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PuzzleEmbedAccessoryConfigMessageHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1D5EDA7D0(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D5EDB8A4;
}

uint64_t sub_1D5EDA8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5 + *a5;
  swift_beginAccess();
  *(v7 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1D5EDA93C(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_accessoryConfigDataSource;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D5EDB8A4;
}

void sub_1D5EDA9DC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_1D5EDAA68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v14 = *a1;
  v15 = v1;
  v16 = *(a1 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v16 == 1)
    {
      v4 = objc_allocWithZone(type metadata accessor for PuzzleEmbedScript());
      sub_1D5EDB7F4(&v14, v12);
      v5 = sub_1D5EDAC64(&v14, v4);
      v6 = *&v3[OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_scriptsManager];
      swift_unknownObjectRetain();
      v7 = v5;
      [v6 executeScript:v7 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = Strong + OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        v12[0] = v14;
        v12[1] = v15;
        v13 = v16;
        v11 = *(v9 + 16);
        v3 = v3;
        v11(v3, &protocol witness table for PuzzleEmbedAccessoryConfigMessageHandler, v12, ObjectType, v9);
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_1D5EDAC64(__int128 *a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  a2[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_queueable] = 0;
  v5 = a1[1];
  v16 = *a1;
  v6 = &a2[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_identifier];
  *v6 = 0xD00000000000001BLL;
  v6[1] = 0x80000001D73C0C30;
  v7 = &a2[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName];
  *v7 = 0xD00000000000001FLL;
  v7[1] = 0x80000001D73C0C50;
  v15 = v5;
  sub_1D5C0BFF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v9 = MEMORY[0x1E69E6158];
  v10 = v15;
  *(inited + 48) = v16;
  *(inited + 72) = v9;
  *(inited + 80) = 0x64695F6D657469;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 120) = v9;
  *(inited + 96) = v10;
  sub_1D5E422A8(&v16, v14);
  sub_1D5E422A8(&v15, v14);
  v11 = sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D5BE1388();
  swift_arrayDestroy();
  sub_1D5EDB850(a1);
  *&a2[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventDetail] = v11;
  v13.receiver = a2;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

void _s8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandlerC10didReceive_14securityOriginySo9SWMessage_p_So0m8SecurityL0_ptF_0(void *a1)
{
  v2 = v1;
  v4 = [a1 body];
  v5 = sub_1D7261D3C();

  v6 = sub_1D71BC9D8(v5);

  if (v6)
  {
    v7 = v2 + OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_accessoryConfigDataSource;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong() && (v8 = *(v7 + 8), v9 = swift_getObjectType(), LOBYTE(v8) = (*(v8 + 16))(v9, v8), swift_unknownObjectRelease(), (v8 & 1) == 0))
    {
    }

    else
    {

      PuzzleAccessoryInputConfiguration.init(with:)(v10, v57);
      if (qword_1EDF3B838 != -1)
      {
        swift_once();
      }

      v11 = sub_1D725C42C();
      __swift_project_value_buffer(v11, qword_1EDFFCFA8);

      v12 = sub_1D725C3FC();
      v13 = sub_1D7262EDC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *&v55[0] = v15;
        *v14 = 136315138;
        v16 = sub_1D7261D4C();
        v18 = sub_1D5BC5100(v16, v17, v55);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_1D5B42000, v12, v13, "PuzzleEmbedAccessoryConfigMessageHandler received: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x1DA6FD500](v15, -1, -1);
        MEMORY[0x1DA6FD500](v14, -1, -1);
      }

      if (!swift_unknownObjectWeakLoadStrong() || (v28 = *(v7 + 8), v29 = swift_getObjectType(), LOBYTE(v28) = (*(v28 + 8))(v2, &protocol witness table for PuzzleEmbedAccessoryConfigMessageHandler, v29, v28), swift_unknownObjectRelease(), (v28)) && (sub_1D6B9D194(v6), v30 = objc_allocWithZone(MEMORY[0x1E695DF20]), v31 = sub_1D7261D2C(), , v32 = [v30 initWithDictionary_], v31, v33 = , sub_1D6B9D194(v33), , v34 = sub_1D7261D2C(), , v35 = objc_msgSend(v32, sel_isEqualToDictionary_, v34), v32, v34, (v35))
      {
        sub_1D5EDB748(v57);

        v36 = sub_1D725C3FC();
        v37 = sub_1D7262EDC();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_1D5B42000, v36, v37, "No changes detected for the received accessory config. Skipping...", v38, 2u);
          MEMORY[0x1DA6FD500](v38, -1, -1);
        }
      }

      else
      {
        *(v2 + OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_lastReceivedValue) = v6;

        if (swift_unknownObjectWeakLoadStrong())
        {
          v39 = *(v7 + 8);
          ObjectType = swift_getObjectType();
          (*(v39 + 24))(v55, ObjectType, v39);
          swift_unknownObjectRelease();
          v42 = *(&v55[0] + 1);
          v41 = *&v55[0];
        }

        else
        {
          v41 = 0;
          v42 = 0;
        }

        v43 = *(v2 + OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_puzzleComponentsViewProvider + 8);
        v44 = swift_getObjectType();
        v55[2] = v57[2];
        v55[3] = v57[3];
        v56 = v58;
        v55[0] = v57[0];
        v55[1] = v57[1];
        v54[0] = v41;
        v54[1] = v42;
        v45 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v46 = *(v43 + 32);

        v47 = v46(v55, v54, sub_1D5EDB740, v45, v44, v43);
        v49 = v48;

        sub_1D5EDB748(v57);
        v50 = v2 + OBJC_IVAR____TtC8NewsFeed40PuzzleEmbedAccessoryConfigMessageHandler_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v51 = *(v50 + 8);
          v52 = swift_getObjectType();
          (*(v51 + 8))(v2, &protocol witness table for PuzzleEmbedAccessoryConfigMessageHandler, v47, v49, v52, v51);
          swift_unknownObjectRelease();
        }

        sub_1D5DEA2E0(v41, v42);
      }
    }
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v19 = sub_1D725C42C();
    __swift_project_value_buffer(v19, qword_1EDFFCFA8);
    swift_unknownObjectRetain();
    oslog = sub_1D725C3FC();
    v20 = sub_1D7262EBC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v57[0] = v22;
      *v21 = 136315138;
      v23 = [a1 body];
      sub_1D7261D3C();

      v24 = sub_1D7261D4C();
      v26 = v25;

      v27 = sub_1D5BC5100(v24, v26, v57);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_1D5B42000, oslog, v20, "PuzzleEmbedAccessoryConfigMessageHandler received invalid message %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1DA6FD500](v22, -1, -1);
      MEMORY[0x1DA6FD500](v21, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D5EDB748(uint64_t a1)
{
  sub_1D5EDB7A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5EDB7A4()
{
  if (!qword_1EC8807E0)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8807E0);
    }
  }
}

uint64_t FeedDeferredCursor.identifier.getter()
{
  v0 = sub_1D5C036AC();

  return v0;
}

uint64_t FeedDeferredCursor.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDFFC670;
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D5EDBA24(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v46 = a1;
  v5 = *v2;
  v6 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725891C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v18 = *a2;
  v19 = a2[1];
  v20 = a2[2];
  v21 = v3[3];
  v44 = v3[2];
  v47 = v21;
  v22 = *(v11 + 16);
  v42 = v38 - v23;
  v22(v17);
  v43 = v14;
  (v22)(v14, v3 + qword_1EDFFC688, v10);
  v53[0] = *(v3 + qword_1EDFFC640);
  v24 = *(v3 + qword_1EDFFC668);
  v25 = *(v3 + qword_1EDFFC660);
  v26 = *(v3 + qword_1EDFFC638);
  v45 = v9;
  result = sub_1D5BE6814(v3 + qword_1EDFFC680, v9);
  v28 = *(v3 + qword_1EDFFC650);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    v41 = v30;
    v40 = *(v3 + qword_1EDFFC648);
    v39 = v24;
    v31 = *(v3 + qword_1EDFFC678 + 8);
    v32 = v46;
    v33 = *(v3 + qword_1EDFFC678 + 16);
    *&v49 = *(v3 + qword_1EDFFC678);
    *(&v49 + 1) = v31;
    v50 = v33;
    v48[0] = v18;
    v48[1] = v19;
    v48[2] = v20;
    v38[1] = *(v5 + 80);

    sub_1D5C0C3EC(&v49, v48, &v51);

    v49 = v51;
    v50 = v52;
    v34 = v3 + qword_1EDF14B30;
    v36 = *(v3 + qword_1EDF14B30);
    v35 = *(v34 + 1);
    swift_allocObject();
    v37 = sub_1D5C891B4(v44, v47, v42, v43, v53, v39, v32, v25, v26, v45, v41, v40, &v49, v36, v35);

    return v37;
  }

  return result;
}

uint64_t sub_1D5EDBDC8()
{
  v4 = (*(*(v0 + 16) + qword_1EDF14B30) + **(*(v0 + 16) + qword_1EDF14B30));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D5EDBEC8;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_1D5EDBEC8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1D5EDBFC8()
{
  v0 = sub_1D5C036AC();

  return v0;
}

BOOL static FeedDeferredCursor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (sub_1D72646CC()) && (type metadata accessor for FeedDatabaseGroup(), swift_getWitnessTable(), (sub_1D726280C()) && (type metadata accessor for FeedDeferredCursorGroup(), swift_getWitnessTable(), (sub_1D726280C()))
  {
    return *(a1 + qword_1EDFFC650) == *(a2 + qword_1EDFFC650);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5EDC168()
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t sub_1D5EDC234(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = *v4;
  *(v5 + 48) = *(*v4 + 88);
  *(v5 + 56) = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 64) = AssociatedTypeWitness;
  *(v5 + 72) = *(AssociatedTypeWitness - 8);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  v9 = sub_1D725891C();
  *(v5 + 96) = v9;
  *(v5 + 104) = *(v9 - 8);
  *(v5 + 112) = swift_task_alloc();
  sub_1D5BA8044();
  *(v5 + 120) = v10;
  *(v5 + 128) = swift_task_alloc();
  sub_1D5B5B2A0();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  *(v5 + 160) = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  *(v5 + 168) = v11;
  *(v5 + 176) = *(v11 - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  v12 = swift_checkMetadataState();
  *(v5 + 200) = v12;
  *(v5 + 208) = *(v12 - 8);
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 264) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D5EDC56C, 0, 0);
}

uint64_t sub_1D5EDC56C()
{
  v59 = *(v0 + 264);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = *(*(v0 + 24) + *(**(v0 + 24) + 280));
  v9 = sub_1D5E327E0(v2, v1);
  *(v0 + 232) = sub_1D5F9628C(v4, v8, v9, v10, sub_1D5E32898, 0, v5, v6, v7, v2, v1);

  if ((v59 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(v0 + 224);
  v50 = *(v0 + 216);
  v12 = *(v0 + 200);
  v58 = *(v0 + 208);
  v13 = *(v0 + 192);
  v53 = *(v0 + 184);
  v14 = *(v0 + 168);
  v60 = *(v0 + 176);
  v15 = *(v0 + 160);
  v57 = *(v0 + 152);
  v54 = *(v0 + 144);
  v55 = *(v0 + 120);
  v51 = *(v0 + 104);
  v52 = *(v0 + 128);
  v56 = *(v0 + 96);
  v49 = *(v0 + 56);
  v47 = *(*(v0 + 48) + 64);
  v48 = *(v0 + 48);
  v47();
  v46 = *(v15 + 40);
  v44 = v15;
  v46(v12, v15);
  v45 = *(v58 + 8);
  v45(v11, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = *(AssociatedConformanceWitness + 40);
  v43(v14, AssociatedConformanceWitness);
  v42 = *(v60 + 8);
  v42(v13, v14);
  (v47)(v49, v48);
  v46(v12, v44);
  v45(v50, v12);
  v43(v14, AssociatedConformanceWitness);
  v42(v53, v14);
  v17 = *(v55 + 48);
  sub_1D5B76E3C(v57, v52);
  sub_1D5B76E3C(v54, v52 + v17);
  v18 = *(v51 + 48);
  if (v18(v52, 1, v56) == 1)
  {
    v19 = *(v0 + 152);
    v20 = *(v0 + 96);
    sub_1D5B87904(*(v0 + 144), sub_1D5B5B2A0);
    sub_1D5B87904(v19, sub_1D5B5B2A0);
    if (v18(v52 + v17, 1, v20) == 1)
    {
      sub_1D5B87904(*(v0 + 128), sub_1D5B5B2A0);
LABEL_13:
      FeedCursor.unwrappedFeedPool.getter(*(v0 + 88));
      FeedCursor.unwrappedFeedPool.getter(*(v0 + 80));
      v38 = swift_getAssociatedConformanceWitness();
      *(v0 + 240) = v38;
      v61 = (*(v38 + 56) + **(v38 + 56));
      v39 = swift_task_alloc();
      *(v0 + 248) = v39;
      *v39 = v0;
      v39[1] = sub_1D5EDCD9C;
      v40 = *(v0 + 88);
      v41 = *(v0 + 64);

      return v61(v40, v41, v38);
    }

    goto LABEL_8;
  }

  v21 = *(v0 + 96);
  sub_1D5B76E3C(*(v0 + 128), *(v0 + 136));
  v22 = v18(v52 + v17, 1, v21);
  v24 = *(v0 + 144);
  v23 = *(v0 + 152);
  v25 = *(v0 + 136);
  if (v22 == 1)
  {
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    sub_1D5B87904(*(v0 + 144), sub_1D5B5B2A0);
    sub_1D5B87904(v23, sub_1D5B5B2A0);
    (*(v27 + 8))(v25, v26);
LABEL_8:
    sub_1D5B87904(*(v0 + 128), sub_1D5BA8044);
    goto LABEL_9;
  }

  v32 = *(v0 + 128);
  v34 = *(v0 + 104);
  v33 = *(v0 + 112);
  v35 = *(v0 + 96);
  (*(v34 + 32))(v33, v52 + v17, v35);
  sub_1D5BA81A0();
  v36 = sub_1D7261FBC();
  v37 = *(v34 + 8);
  v37(v33, v35);
  sub_1D5B87904(v24, sub_1D5B5B2A0);
  sub_1D5B87904(v23, sub_1D5B5B2A0);
  v37(v25, v35);
  sub_1D5B87904(v32, sub_1D5B5B2A0);
  if (v36)
  {
    goto LABEL_13;
  }

LABEL_9:
  v28 = *(v0 + 16);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v29 = sub_1D726275C();
  sub_1D688A25C(v29, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1D5EDCD9C(char a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1D5EDD158;
  }

  else
  {
    *(v4 + 265) = a1 & 1;
    v5 = sub_1D5EDCEC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5EDCEC8()
{
  if (*(v0 + 265) == 1)
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 16);
    swift_getAssociatedTypeWitness();
    v6 = sub_1D726275C();
    v7 = *(v4 + 8);
    v7(v2, v3);
    v7(v1, v3);
    sub_1D688A25C(v6, v5);
  }

  else
  {
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    type metadata accessor for FeedServiceError();
    swift_getWitnessTable();
    swift_allocError();
    *v13 = 1;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 6;
    swift_willThrow();

    v14 = *(v12 + 8);
    v14(v10, v11);
    v14(v9, v11);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D5EDD158()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);

  v6 = v0[1];

  return v6();
}

void *sub_1D5EDD29C()
{
  v0 = sub_1D726389C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17[-v7];
  sub_1D726387C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D726386C();
  v11 = objc_opt_self();
  v12 = [v11 whiteColor];
  sub_1D726380C();
  v13 = [v11 systemPinkColor];
  sub_1D72637FC();
  v14 = sub_1D726376C();
  sub_1D725FDFC();
  v14(v17, 0);
  sub_1D5B5A498(0, &qword_1EC87FF58);
  (*(v1 + 16))(v4, v8, v0);
  v15 = sub_1D72638AC();
  [v15 setClipsToBounds_];
  (*(v1 + 8))(v8, v0);
  return v15;
}

id sub_1D5EDD4FC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v3 = sub_1D726203C();

  [v0 setText_];

  v4 = [objc_opt_self() systemFontOfSize_];
  [v0 setFont_];

  v5 = [objc_opt_self() systemGrayColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  return v0;
}

char *sub_1D5EDD69C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8NewsFeed30DebugPersonalizationSubmitView_submitButton;
  *&v4[v9] = sub_1D5EDD29C();
  v10 = OBJC_IVAR____TtC8NewsFeed30DebugPersonalizationSubmitView_submitText;
  *&v4[v10] = sub_1D5EDD4FC();
  v41.receiver = v4;
  v41.super_class = type metadata accessor for DebugPersonalizationSubmitView();
  v11 = objc_msgSendSuper2(&v41, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC8NewsFeed30DebugPersonalizationSubmitView_submitButton;
  v13 = *&v11[OBJC_IVAR____TtC8NewsFeed30DebugPersonalizationSubmitView_submitButton];
  v14 = v11;
  [v14 addSubview_];
  v15 = OBJC_IVAR____TtC8NewsFeed30DebugPersonalizationSubmitView_submitText;
  [v14 addSubview_];
  [*&v11[v12] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v14[v15] setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = objc_opt_self();
  sub_1D5E42B34();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D727D5D0;
  v17 = [*&v11[v12] topAnchor];
  v18 = [v14 &selRef_dataProvider];
  v19 = [v17 constraintEqualToAnchor:v18 constant:8.0];

  *(v16 + 32) = v19;
  v20 = [*&v11[v12] leadingAnchor];
  v21 = [v14 &off_1E84D3528 + 1];

  v22 = [v20 constraintEqualToAnchor_];
  *(v16 + 40) = v22;
  v23 = [*&v11[v12] trailingAnchor];
  v24 = [v14 trailingAnchor];

  v25 = [v23 constraintEqualToAnchor_];
  *(v16 + 48) = v25;
  v26 = [*&v14[v15] topAnchor];
  v27 = [*&v11[v12] bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:4.0];

  *(v16 + 56) = v28;
  v29 = [*&v14[v15] leadingAnchor];
  v30 = [v14 leadingAnchor];

  v31 = [v29 constraintEqualToAnchor_];
  *(v16 + 64) = v31;
  v32 = [*&v14[v15] trailingAnchor];
  v33 = [v14 trailingAnchor];

  v34 = [v32 constraintEqualToAnchor_];
  *(v16 + 72) = v34;
  v35 = [*&v14[v15] bottomAnchor];
  v36 = [v14 bottomAnchor];

  v37 = [v35 constraintEqualToAnchor:v36 constant:-8.0];
  *(v16 + 80) = v37;
  sub_1D5B5A498(0, &qword_1EC87FF48);
  v38 = sub_1D726265C();

  [v40 activateConstraints_];

  return v14;
}

id sub_1D5EDDBA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugPersonalizationSubmitView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NewsFeed::FamilyStatusCommandState_optional __swiftcall FamilyStatusCommandState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FamilyStatusCommandState.rawValue.getter()
{
  v1 = 0x656C626967696C65;
  v2 = 0x7265626D656DLL;
  if (*v0 != 2)
  {
    v2 = 0x657A696E6167726FLL;
  }

  if (*v0)
  {
    v1 = 0x626967696C656E69;
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

unint64_t sub_1D5EDDD28()
{
  result = qword_1EC88D690;
  if (!qword_1EC88D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D690);
  }

  return result;
}

uint64_t sub_1D5EDDD7C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5EDDE44()
{
  sub_1D72621EC();
}

uint64_t sub_1D5EDDEF8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D5EDDFC8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x656C626967696C65;
  v4 = 0xE600000000000000;
  v5 = 0x7265626D656DLL;
  if (*v1 != 2)
  {
    v5 = 0x657A696E6167726FLL;
    v4 = 0xE900000000000072;
  }

  if (*v1)
  {
    v3 = 0x626967696C656E69;
    v2 = 0xEA0000000000656CLL;
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

uint64_t sub_1D5EDE05C(uint64_t a1)
{
  v2 = sub_1D5EDE0B8();

  return MEMORY[0x1EEE48380](a1, v2);
}

unint64_t sub_1D5EDE0B8()
{
  result = qword_1EC8807F8;
  if (!qword_1EC8807F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8807F8);
  }

  return result;
}

void sub_1D5EDE10C(uint64_t a1)
{
  v2 = v1;
  v45 = type metadata accessor for FormatOption();
  MEMORY[0x1EEE9AC00](v45, v4);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v44 = (&v43 - v10);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return;
  }

  v12 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v43 = *(v9 + 72);
  while (1)
  {
    v14 = v44;
    sub_1D5D2477C(v12, v44);
    v15 = v14[1];
    v46 = *v14;
    sub_1D5D247E0(v14, v6);
    type metadata accessor for FormatOptionElement();
    v16 = swift_allocObject();
    v17 = swift_allocBox();
    sub_1D5D2477C(v6, v18);
    v16[2] = v17 | 4;
    v49 = v6[2];

    v20 = sub_1D5D25A0C(v19);
    if (v21 >= 2)
    {
      v47 = 36;
      v48 = 0xE100000000000000;
      v22 = v20;
      v23 = v21;
      MEMORY[0x1DA6F9910](*v6, v6[1]);
      MEMORY[0x1DA6F9910](61, 0xE100000000000000);
      MEMORY[0x1DA6F9910](v22, v23);
      sub_1D5D25B88(v22, v23);
      v20 = v47;
      v21 = v48;
    }

    v16[3] = v20;
    v16[4] = v21;
    v49 = v6[2];
    v24 = sub_1D5D25BF8();
    if (v24 == 2)
    {
      v25 = 0;
      v26 = 0;
    }

    else if (v24 == 3 || (v24 & 1) == 0)
    {
      v25 = 0;
      v26 = 1;
    }

    else
    {
      v47 = 36;
      v48 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](*v6, v6[1]);
      MEMORY[0x1DA6F9910](0x7974706D4573692ELL, 0xE800000000000000);
      v25 = v47;
      v26 = v48;
    }

    v16[5] = v25;
    v16[6] = v26;
    v47 = 36;
    v48 = 0xE100000000000000;
    MEMORY[0x1DA6F9910](*v6, v6[1]);
    MEMORY[0x1DA6F9910](0x7374736978652ELL, 0xE700000000000000);
    v27 = v47;
    v28 = v48;
    sub_1D5D25B9C(v6);
    v16[7] = v27;
    v16[8] = v28;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v2 + 16);
    v30 = v49;
    *(v2 + 16) = 0x8000000000000000;
    v32 = sub_1D5B69D90(v46, v15);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v31)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D6D7D3D0();
        if (v36)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1D5D25F98(v35, isUniquelyReferenced_nonNull_native);
      v37 = sub_1D5B69D90(v46, v15);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v32 = v37;
      if (v36)
      {
LABEL_3:

        v13 = v49;
        *(v49[7] + 8 * v32) = v16;

        goto LABEL_4;
      }
    }

    v13 = v49;
    v49[(v32 >> 6) + 8] |= 1 << v32;
    v39 = (v13[6] + 16 * v32);
    *v39 = v46;
    v39[1] = v15;
    *(v13[7] + 8 * v32) = v16;
    v40 = v13[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_26;
    }

    v13[2] = v42;
LABEL_4:
    *(v2 + 16) = v13;
    swift_endAccess();
    v12 += v43;
    if (!--v11)
    {
      return;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1D726493C();
  __break(1u);
}

uint64_t sub_1D5EDE4F8(uint64_t a1)
{
  v15 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 16) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v15;
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v8 &= v8 - 1;

        v13 = sub_1D70EED8C(a1);
        sub_1D5B87D50(v13);
        sub_1D5B87D50(v13);
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5EDE664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D5EDE6EC(uint64_t a1)
{
  v2 = sub_1D5EDE8FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5EDE728(uint64_t a1)
{
  v2 = sub_1D5EDE8FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVariableCollection.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5EDEC90(0, &qword_1EC880800, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EDE8FC();
  sub_1D7264B5C();
  swift_beginAccess();
  v11 = *(v2 + 16);
  sub_1D5EDE950();
  sub_1D5EDE9B8();
  sub_1D726443C();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D5EDE8FC()
{
  result = qword_1EC880808;
  if (!qword_1EC880808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880808);
  }

  return result;
}

void sub_1D5EDE950()
{
  if (!qword_1EC880810)
  {
    type metadata accessor for FormatOptionElement();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880810);
    }
  }
}

unint64_t sub_1D5EDE9B8()
{
  result = qword_1EC880818;
  if (!qword_1EC880818)
  {
    sub_1D5EDE950();
    sub_1D5EDED90(&qword_1EC880820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880818);
  }

  return result;
}

uint64_t FormatVariableCollection.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatVariableCollection.init(from:)(a1);
  return v2;
}

uint64_t FormatVariableCollection.init(from:)(void *a1)
{
  v3 = v1;
  sub_1D5EDEC90(0, &qword_1EC880828, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v14[0] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v14 - v8;
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  v10 = (v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EDE8FC();
  sub_1D7264B0C();
  if (v2)
  {
  }

  else
  {
    v11 = v14[0];
    sub_1D5EDE950();
    sub_1D5EDECF4();
    sub_1D726431C();
    (*(v11 + 8))(v9, v6);
    v12 = v14[5];
    swift_beginAccess();
    *v10 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void sub_1D5EDEC90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5EDE8FC();
    v7 = a3(a1, &type metadata for FormatVariableCollection.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5EDECF4()
{
  result = qword_1EC880830;
  if (!qword_1EC880830)
  {
    sub_1D5EDE950();
    sub_1D5EDED90(&qword_1EC880838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880830);
  }

  return result;
}

uint64_t sub_1D5EDED90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatOptionElement();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5EDEDD4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatVariableCollection.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D5EDEEA4()
{
  result = qword_1EC880840;
  if (!qword_1EC880840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880840);
  }

  return result;
}

unint64_t sub_1D5EDEEFC()
{
  result = qword_1EC880848;
  if (!qword_1EC880848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880848);
  }

  return result;
}

unint64_t sub_1D5EDEF54()
{
  result = qword_1EC880850;
  if (!qword_1EC880850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880850);
  }

  return result;
}

unint64_t sub_1D5EDEFB8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5EDF410(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D5EDEFE4(uint64_t a1)
{
  v2 = sub_1D5EDF420();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D5EDF038(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5EDF420();
  v5 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D5EDF094(uint64_t a1)
{
  v2 = sub_1D5EDF420();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D5EDF1AC()
{
  result = qword_1EC880858;
  if (!qword_1EC880858)
  {
    sub_1D5EDF204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880858);
  }

  return result;
}

void sub_1D5EDF204()
{
  if (!qword_1EC880860)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880860);
    }
  }
}

unint64_t sub_1D5EDF254()
{
  result = qword_1EC880868;
  if (!qword_1EC880868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880868);
  }

  return result;
}

unint64_t sub_1D5EDF2A8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000011;
    if (a1 != 10)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000010;
    }

    v7 = 0xD000000000000013;
    if (a1 == 7)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 == 6)
    {
      v7 = 1280858200;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D53206172747845;
    v2 = 0x656772614CLL;
    v3 = 19544;
    if (a1 != 4)
    {
      v3 = 5003352;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C6C616D53;
    if (a1 != 1)
    {
      v4 = 0x6D756964654DLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1D5EDF410(unint64_t result)
{
  if (result >= 0xC)
  {
    return 12;
  }

  return result;
}

unint64_t sub_1D5EDF420()
{
  result = qword_1EC880870;
  if (!qword_1EC880870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880870);
  }

  return result;
}

uint64_t sub_1D5EDF4A0(void *a1)
{
  v3 = v1;
  sub_1D5EE1BCC(0, &qword_1EC880928, sub_1D5EE1B78, &type metadata for A18_V16.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EE1B78();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5EE1C34(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5EDF6E8(uint64_t a1)
{
  v2 = sub_1D5EE1B78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5EDF724(uint64_t a1)
{
  v2 = sub_1D5EE1B78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D5EDF760@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5EE18D8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D5EDF7C0()
{
  sub_1D5EE158C();

  return sub_1D725A24C();
}

uint64_t sub_1D5EDF83C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D5EE1BCC(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D5EDF8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a3;
  v59 = a2;
  v5 = sub_1D725895C();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GroupLayoutContext();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GroupLayoutBindingContext();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *v3;
  v17 = *(v3 + 1);
  v18 = v3[16];
  v55[0] = 4;
  if (GroupLayoutBindingContext.count(for:)(v55))
  {
    sub_1D5C17350();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0;
    *(v19 + 40) = 13;
    return swift_willThrow();
  }

  else
  {
    v41 = a1;
    v21 = a1;
    v22 = v16;
    sub_1D5BE3E70(v21, v16, type metadata accessor for GroupLayoutBindingContext);
    v40 = type metadata accessor for GroupLayoutContext;
    v23 = v12;
    sub_1D5BE3E70(v59, v12, type metadata accessor for GroupLayoutContext);
    sub_1D725894C();
    v39 = sub_1D725893C();
    v38 = v24;
    (*(v42 + 8))(v8, v5);
    v57 = &type metadata for A18_V16;
    v42 = sub_1D5ECE628();
    v58 = v42;
    LOBYTE(v55[0]) = v48;
    v55[1] = v17;
    v56 = v18;
    type metadata accessor for GroupLayoutKey();
    v25 = swift_allocObject();
    sub_1D5BEE8A0(v17, v18);
    v53 = sub_1D7264C5C();
    v54 = v26;
    v51 = 95;
    v52 = 0xE100000000000000;
    v49 = 45;
    v50 = 0xE100000000000000;
    sub_1D5BF4D9C();
    v27 = sub_1D7263A6C();
    v29 = v28;

    *(v25 + 16) = v27;
    *(v25 + 24) = v29;
    v30 = (v25 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
    v31 = v38;
    *v30 = v39;
    v30[1] = v31;
    sub_1D5B68374(v55, v25 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
    v32 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
    sub_1D5BDA89C(v22, v25 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
    (*(v43 + 56))(v25 + v32, 0, 1, v44);
    v33 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
    sub_1D5BDA89C(v23, v25 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
    (*(v45 + 56))(v25 + v33, 0, 1, v46);
    __swift_destroy_boxed_opaque_existential_1(v55);
    v34 = type metadata accessor for A18_V16.Bound();
    v35 = v47;
    v47[3] = v34;
    v35[4] = sub_1D5EE1C34(&qword_1EC880888, type metadata accessor for A18_V16.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    v37 = v42;
    boxed_opaque_existential_1[4] = &type metadata for A18_V16;
    boxed_opaque_existential_1[5] = v37;
    *(boxed_opaque_existential_1 + 8) = v48;
    boxed_opaque_existential_1[2] = v17;
    *(boxed_opaque_existential_1 + 24) = v18;
    sub_1D5BE3E70(v59, boxed_opaque_existential_1 + *(v34 + 24), v40);
    sub_1D5BEE8A0(v17, v18);
    result = sub_1D6C542AC(0, 0, 0, 0, 0);
    *boxed_opaque_existential_1 = v25;
    *(boxed_opaque_existential_1 + *(v34 + 28)) = result;
  }

  return result;
}

uint64_t sub_1D5EDFE0C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for A18_V16.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(*(v9 + *(v10 + 40)) + 16);
  v12 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v11 + 16, v40);
  sub_1D5B68374(v11 + 56, v39);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v40, inited + 16);
  sub_1D5B63F14(v39, inited + 56);
  *(inited + 96) = v13;
  v38[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v38, v42);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  v15 = *(v2 + *(v8 + 28));
  v37[2] = v2;
  v37[3] = v42;
  v16 = sub_1D5ECA650(sub_1D5EE1510, v37, v15);
  *&v40[0] = v16;
  sub_1D5ED1CB0(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context);
  v18 = v17;
  sub_1D5ED1DBC(&qword_1EC880610);
  v33 = v18;
  v19 = sub_1D7262C1C();
  v20 = *MEMORY[0x1E69D7130];
  v21 = sub_1D7259D1C();
  (*(*(v21 - 8) + 104))(v7, v20, v21);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v35 = v19;
  v36 = v2;
  sub_1D5EE1634(0, &qword_1EC8808A8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v22 = v41;
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D5ED1DBC(&qword_1EDF1B248);
  v23 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v31 = v40[1];
  v32 = v40[0];
  *&v40[0] = v16;
  *&v39[0] = v22;
  MEMORY[0x1EEE9AC00](v23, v24);

  v25 = sub_1D725C00C();

  v26 = v34;
  *v34 = 0;
  v27 = v32;
  *(v26 + 24) = v31;
  *(v26 + 8) = v27;
  *&v40[0] = v25;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v28 = sub_1D72623BC();

  v29 = MEMORY[0x1E69E7CC0];
  *(v26 + 5) = v28;
  *(v26 + 6) = v29;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_1D5EE02C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3E70(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D5EE03A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5EE1BCC(0, &qword_1EC8808C0, sub_1D5EE1538, &type metadata for A18_V16.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 18;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D5EE1634(0, &qword_1EC8808C8, MEMORY[0x1E69D7150]);
  sub_1D5EE15F0(&qword_1EC8808D0, &qword_1EC8808C8, v13);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

void sub_1D5EE0590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  sub_1D5EE1BCC(0, &qword_1EC8808C0, sub_1D5EE1538, &type metadata for A18_V16.Layout, MEMORY[0x1E69D74B0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (&v22 - v9);
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 32;
    v13 = sub_1D725994C();
    v27 = *MEMORY[0x1E69D6F50];
    v28 = v13;
    v26 = v13 - 8;
    v25 = *MEMORY[0x1E69D73C0];
    v23 = (v7 + 8);
    v24 = (v7 + 104);
    HIDWORD(v22) = *MEMORY[0x1E69D7460];
    v32 = a1;
    do
    {
      v30 = v12 + 8;
      v31 = v11;
      v33 = a1;
      v14 = v28;
      v15 = swift_allocBox();
      (*(*(v14 - 8) + 104))(v16, v27, v14);
      *v10 = v15;
      v17 = *v24;
      (*v24)(v10, v25, v6);
      v18 = MEMORY[0x1E69D6F38];
      sub_1D5EE1634(0, &qword_1EC8808D8, MEMORY[0x1E69D6F38]);
      sub_1D5EE15F0(&qword_1EC8808E0, &qword_1EC8808D8, v18);

      sub_1D7259A9C();
      v19 = *v23;
      (*v23)(v10, v6);
      v33 = v32;
      v20 = v17(v10, HIDWORD(v22), v6);
      MEMORY[0x1EEE9AC00](v20, v21);
      sub_1D72599EC();
      v12 = v30;

      a1 = v32;
      v19(v10, v6);
      v11 = v31 - 1;
    }

    while (v31 != 1);
  }
}

void sub_1D5EE08B8(uint64_t a1, uint64_t a2)
{
  sub_1D5EE1BCC(0, &qword_1EC8808C0, sub_1D5EE1538, &type metadata for A18_V16.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v25 = *(v12 + 72);
    v24 = *MEMORY[0x1E69D7490];
    v22 = (v6 + 8);
    v23 = (v6 + 104);
    v26 = a1;
    do
    {
      sub_1D5BE3E70(v16, v14, type metadata accessor for HeadlineViewLayout.Context);
      v28 = a1;
      v17 = swift_allocObject();
      *(v17 + 16) = 6;
      *v9 = v17;
      v18 = (*v23)(v9, v24, v5);
      v27 = &v21;
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D6F38];
      sub_1D5EE1634(0, &qword_1EC8808D8, MEMORY[0x1E69D6F38]);
      sub_1D5EE15F0(&qword_1EC8808E0, &qword_1EC8808D8, v20);
      sub_1D7259A2C();
      a1 = v26;
      (*v22)(v9, v5);
      sub_1D5ED1FDC(v14, type metadata accessor for HeadlineViewLayout.Context);
      v16 += v25;
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_1D5EE0BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = sub_1D725A36C();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v5);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D725A19C();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5EE1BCC(0, &qword_1EC8808C0, sub_1D5EE1538, &type metadata for A18_V16.Layout, MEMORY[0x1E69D74B0]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = (&v46 - v19);
  v57 = a1;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = 0x4060E00000000000;
  *v20 = v21;
  v22 = *MEMORY[0x1E69D73D8];
  v55 = v17;
  v56 = v16;
  (*(v17 + 104))(v20, v22, v16);
  sub_1D5EE16C8();
  sub_1D5EE1BCC(0, &qword_1EC8808F0, sub_1D5EE1538, &type metadata for A18_V16.Layout, MEMORY[0x1E69D70D8]);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7273AE0;
  *(v27 + v26) = 0x4058C00000000000;
  (*(v25 + 104))(v27 + v26, *MEMORY[0x1E69D70D0], v24);
  v28 = a3 + *(type metadata accessor for A18_V16.Bound() + 24);
  if (*(v28 + *(type metadata accessor for GroupLayoutContext() + 24) + 17))
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  v30 = v11[7];
  v31 = *MEMORY[0x1E69D7348];
  v32 = sub_1D725A34C();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v14 + v30, v31, v32);
  (*(v33 + 56))(v14 + v30, 0, 1, v32);
  v34 = *MEMORY[0x1E69DDC70];
  *v14 = v29;
  *(v14 + v11[8]) = 3;
  *(v14 + v11[9]) = v34;
  v35 = *MEMORY[0x1E69DDCE0];
  v46 = *(MEMORY[0x1E69DDCE0] + 16);
  v47 = v35;
  v36 = qword_1EDF386E8;
  v37 = v34;
  if (v36 != -1)
  {
    swift_once();
  }

  sub_1D725972C();

  MEMORY[0x1EEE9AC00](v38, v39);
  v40 = v46;
  *(&v46 - 4) = v47;
  *(&v46 - 3) = v40;
  v41 = v49;
  v42 = v50;
  *(&v46 - 4) = v9;
  *(&v46 - 3) = v42;
  v45 = v14;
  (*(v41 + 104))(v53, *MEMORY[0x1E69D7378], v51);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v52 + 8))(v9, v54);
  sub_1D5ED1FDC(v14, type metadata accessor for HeadlineViewLayout.Options);
  v43 = MEMORY[0x1E69D6F38];
  sub_1D5EE1634(0, &qword_1EC8808D8, MEMORY[0x1E69D6F38]);
  sub_1D5EE15F0(&qword_1EC8808E0, &qword_1EC8808D8, v43);
  v45 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v55 + 8))(v20, v56);
}

uint64_t sub_1D5EE1258@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3E70(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A18_V16.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D5EE136C(uint64_t a1)
{
  *(a1 + 8) = sub_1D5EE139C();
  result = sub_1D5EE13F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5EE139C()
{
  result = qword_1EC880878;
  if (!qword_1EC880878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880878);
  }

  return result;
}

unint64_t sub_1D5EE13F0()
{
  result = qword_1EC880880;
  if (!qword_1EC880880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880880);
  }

  return result;
}

uint64_t type metadata accessor for A18_V16.Bound()
{
  result = qword_1EC880890;
  if (!qword_1EC880890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5EE14B8(uint64_t a1)
{
  result = sub_1D5EE1C34(&qword_1EC8808A0, type metadata accessor for A18_V16.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EE1538()
{
  result = qword_1EC8808B0;
  if (!qword_1EC8808B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8808B0);
  }

  return result;
}

unint64_t sub_1D5EE158C()
{
  result = qword_1EC8808B8;
  if (!qword_1EC8808B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8808B8);
  }

  return result;
}

uint64_t sub_1D5EE15F0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D5EE1634(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5EE1634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V16.Layout;
    v8[1] = &type metadata for A18_V16.Layout.Attributes;
    v8[2] = sub_1D5EE1538();
    v8[3] = sub_1D5EE158C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5EE16C8()
{
  if (!qword_1EC8808E8)
  {
    sub_1D5EE1BCC(255, &qword_1EC8808F0, sub_1D5EE1538, &type metadata for A18_V16.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8808E8);
    }
  }
}

unint64_t sub_1D5EE177C()
{
  result = qword_1EC8808F8;
  if (!qword_1EC8808F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8808F8);
  }

  return result;
}

unint64_t sub_1D5EE17D4()
{
  result = qword_1EC880900;
  if (!qword_1EC880900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880900);
  }

  return result;
}

unint64_t sub_1D5EE182C()
{
  result = qword_1EC880908;
  if (!qword_1EC880908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880908);
  }

  return result;
}

unint64_t sub_1D5EE1884()
{
  result = qword_1EC880910;
  if (!qword_1EC880910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880910);
  }

  return result;
}

uint64_t sub_1D5EE18D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D5EE1BCC(0, &qword_1EC880918, sub_1D5EE1B78, &type metadata for A18_V16.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EE1B78();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D5EE1C34(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D5EE1B78()
{
  result = qword_1EC880920;
  if (!qword_1EC880920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880920);
  }

  return result;
}

void sub_1D5EE1BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D5EE1C34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5EE1C90()
{
  result = qword_1EC880930;
  if (!qword_1EC880930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880930);
  }

  return result;
}

unint64_t sub_1D5EE1CE8()
{
  result = qword_1EC880938;
  if (!qword_1EC880938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880938);
  }

  return result;
}

unint64_t sub_1D5EE1D40()
{
  result = qword_1EC880940;
  if (!qword_1EC880940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880940);
  }

  return result;
}

uint64_t sub_1D5EE1DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70756F7267627573 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D5EE1E4C(uint64_t a1)
{
  v2 = sub_1D5EE2048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5EE1E88(uint64_t a1)
{
  v2 = sub_1D5EE2048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentOverlay.encode(to:)(void *a1)
{
  sub_1D5EE259C(0, &qword_1EC880948, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EE2048();
  sub_1D7264B5C();
  v11[1] = v9;
  sub_1D5EE209C();
  sub_1D5EE2110();
  sub_1D5EE2168();

  sub_1D72647EC();
  (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D5EE2048()
{
  result = qword_1EC880950;
  if (!qword_1EC880950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880950);
  }

  return result;
}

unint64_t sub_1D5EE209C()
{
  result = qword_1EC880958;
  if (!qword_1EC880958)
  {
    sub_1D5EE259C(255, &qword_1EC880948, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880958);
  }

  return result;
}

void sub_1D5EE2110()
{
  if (!qword_1EC880960)
  {
    type metadata accessor for FormatContentOverlaySubgroup();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880960);
    }
  }
}

unint64_t sub_1D5EE2168()
{
  result = qword_1EC880968;
  if (!qword_1EC880968)
  {
    sub_1D5EE2110();
    sub_1D5EE2210(&qword_1EC880970, type metadata accessor for FormatContentOverlaySubgroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880968);
  }

  return result;
}

uint64_t sub_1D5EE2210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FormatContentOverlay.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  sub_1D5EE24D0();
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EE259C(0, &qword_1EC880988, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EE2048();
  sub_1D7264B0C();
  if (!v2)
  {
    v14 = v10;
    v15 = v20;
    sub_1D5EE2210(&qword_1EC880990, sub_1D5EE24D0);
    v16 = v21;
    sub_1D726431C();
    v17 = sub_1D725A74C();
    (*(v15 + 8))(v16, v5);
    (*(v14 + 8))(v13, v9);
    *v19 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5EE24D0()
{
  if (!qword_1EC880978)
  {
    type metadata accessor for FormatContentOverlaySubgroup();
    sub_1D5EE2210(&qword_1EC880980, type metadata accessor for FormatContentOverlaySubgroup);
    sub_1D5EE2210(&qword_1EC880970, type metadata accessor for FormatContentOverlaySubgroup);
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880978);
    }
  }
}

void sub_1D5EE259C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5EE2048();
    v7 = a3(a1, &type metadata for FormatContentOverlay.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5EE2600(void *a1)
{
  a1[1] = sub_1D5EE2638();
  a1[2] = sub_1D5EE268C();
  result = sub_1D5EE26E0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EE2638()
{
  result = qword_1EDF2B390;
  if (!qword_1EDF2B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B390);
  }

  return result;
}

unint64_t sub_1D5EE268C()
{
  result = qword_1EDF2B3A0[0];
  if (!qword_1EDF2B3A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2B3A0);
  }

  return result;
}

unint64_t sub_1D5EE26E0()
{
  result = qword_1EDF2B398;
  if (!qword_1EDF2B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B398);
  }

  return result;
}

unint64_t sub_1D5EE2794()
{
  result = qword_1EC880998;
  if (!qword_1EC880998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880998);
  }

  return result;
}

unint64_t sub_1D5EE27EC()
{
  result = qword_1EC8809A0;
  if (!qword_1EC8809A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8809A0);
  }

  return result;
}

unint64_t sub_1D5EE2844()
{
  result = qword_1EC8809A8;
  if (!qword_1EC8809A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8809A8);
  }

  return result;
}

uint64_t FormatWebEmbedBinding.URL.url(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for FeedWebEmbed();
  if (v5)
  {
    return sub_1D5C00C20(a1 + *(v6 + 36), a2, sub_1D5B4D3E0);
  }

  v8 = *(v6 + 32);
  v9 = sub_1D72585BC();
  v11 = *(v9 - 8);
  (*(v11 + 16))(a2, a1 + v8, v9);
  v10 = *(v11 + 56);

  return v10(a2, 0, 1, v9);
}

uint64_t FormatWebEmbedBinding.URL.CodingType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

uint64_t FormatWebEmbedBinding.URL.CodingType.rawValue.getter()
{
  if (*v0)
  {
    return 0x52556E6F69746361;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1D5EE2A5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x52556E6F69746361;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE90000000000004CLL;
  }

  if (*a2)
  {
    v5 = 0x52556E6F69746361;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0xE90000000000004CLL;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D5EE2B00()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5EE2B80()
{
  sub_1D72621EC();
}

uint64_t sub_1D5EE2BEC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D5EE2C68(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 0x52556E6F69746361;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000004CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatWebEmbedBinding.URL.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5EE2D94()
{
  result = qword_1EC8809B0;
  if (!qword_1EC8809B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8809B0);
  }

  return result;
}

unint64_t sub_1D5EE2DEC()
{
  result = qword_1EC8809B8;
  if (!qword_1EC8809B8)
  {
    sub_1D5EE2E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8809B8);
  }

  return result;
}

void sub_1D5EE2E44()
{
  if (!qword_1EC8809C0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8809C0);
    }
  }
}

unint64_t sub_1D5EE2E98()
{
  result = qword_1EC8809C8;
  if (!qword_1EC8809C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8809C8);
  }

  return result;
}

unint64_t sub_1D5EE2EEC(uint64_t a1)
{
  result = sub_1D5EE2F14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EE2F14()
{
  result = qword_1EC8809D0;
  if (!qword_1EC8809D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8809D0);
  }

  return result;
}

unint64_t sub_1D5EE2F68(void *a1)
{
  a1[1] = sub_1D5CCBB44();
  a1[2] = sub_1D5EE2FA0();
  result = sub_1D5EE2E98();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EE2FA0()
{
  result = qword_1EDF0DE50;
  if (!qword_1EDF0DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DE50);
  }

  return result;
}

uint64_t sub_1D5EE302C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_1D5C00C20(a2, v13, type metadata accessor for FeedWebEmbed);
  if (a1)
  {
    sub_1D5C00C20(&v13[*(v10 + 36)], v9, sub_1D5B4D3E0);
    v14 = 0x55206E6F69746341;
    v15 = a3;
    v16 = 0xEA00000000004C52;
  }

  else
  {
    v17 = *(v10 + 32);
    v18 = sub_1D72585BC();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v9, &v13[v17], v18);
    (*(v19 + 56))(v9, 0, 1, v18);
    v15 = a3;
    v14 = 5001813;
    v16 = 0xE300000000000000;
  }

  sub_1D711FCD0(v14, v16, v9, v15);
  sub_1D5EE3264(v13);
  v20 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
}

uint64_t sub_1D5EE3264(uint64_t a1)
{
  v2 = type metadata accessor for FeedWebEmbed();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5EE32E8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v31 = v32;
    v3 = v1 + 64;
    v4 = sub_1D7263B7C();
    v5 = 0;
    v6 = *(v1 + 36);
    v29 = v1 + 64;
    v26 = v1 + 72;
    v27 = v2;
    v28 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v30 = v5;
      v9 = *(v1 + 56);
      v10 = (*(v1 + 48) + 16 * v4);
      v11 = v1;
      v13 = *v10;
      v12 = v10[1];
      v14 = *(v9 + 8 * v4);

      sub_1D5EE6588(v14);
      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](v13, v12);
      MEMORY[0x1DA6F9910](0x726F6C6F632DLL, 0xE600000000000000);

      sub_1D5EE6598(v14);
      v15 = v31;
      v17 = *(v31 + 16);
      v16 = *(v31 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D5BFC364((v16 > 1), v17 + 1, 1);
        v15 = v31;
      }

      *(v15 + 16) = v17 + 1;
      v18 = v15 + 16 * v17;
      *(v18 + 32) = 0xD000000000000016;
      *(v18 + 40) = 0x80000001D73C1140;
      v7 = 1 << *(v11 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v1 = v11;
      v3 = v29;
      v19 = *(v29 + 8 * v8);
      if ((v19 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v31 = v15;
      v6 = v28;
      if (v28 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v4 & 0x3F));
      if (v20)
      {
        v7 = __clz(__rbit64(v20)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v8 << 6;
        v22 = v8 + 1;
        v23 = (v26 + 8 * v8);
        while (v22 < (v7 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1D5C25E1C(v4, v28, 0);
            v7 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_1D5C25E1C(v4, v28, 0);
      }

LABEL_4:
      v5 = v30 + 1;
      v4 = v7;
      if (v30 + 1 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void *FeedHeadline.State.selectors.getter()
{
  v1 = type metadata accessor for FeedItem.SharedState(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5D308(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_1D727E3C0;
  if (*v0)
  {
    if (*v0 == 1)
    {
      v7 = 0x80000001D73C10C0;
      v8 = 0xD000000000000013;
    }

    else
    {
      v8 = 0x6174732D656B696CLL;
      v7 = 0xEF656E6F6E2D6574;
    }
  }

  else
  {
    v7 = 0x80000001D73C10A0;
    v8 = 0xD000000000000010;
  }

  *(v5 + 32) = v8;
  *(v5 + 40) = v7;
  v9 = 0x80000001D73C1080;
  v10 = 0x6174732D65766173;
  if (v0[1])
  {
    v9 = 0xEF656E6F6E2D6574;
  }

  else
  {
    v10 = 0xD000000000000010;
  }

  *(v5 + 48) = v10;
  *(v5 + 56) = v9;
  v11 = type metadata accessor for FeedHeadline.State(0);
  sub_1D5BC7B00(&v0[v11[6]], v4, type metadata accessor for FeedItem.SharedState);
  v12 = type metadata accessor for SharedItem();
  if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
  {
    v13 = "NewsFeed/A18_V16.swift";
    v14 = 0xD000000000000010;
  }

  else
  {
    sub_1D5BC82E0(v4, type metadata accessor for FeedItem.SharedState);
    v13 = "offensive-state-offensive";
    v14 = 0xD000000000000012;
  }

  v6[8] = v14;
  v6[9] = v13 | 0x8000000000000000;
  if (v0[v11[7]])
  {
    v15 = 0xD000000000000014;
  }

  else
  {
    v15 = 0xD000000000000019;
  }

  if (v0[v11[7]])
  {
    v16 = "share-state-none";
  }

  else
  {
    v16 = "access-level-full";
  }

  v6[10] = v15;
  v6[11] = v16 | 0x8000000000000000;
  if (v0[v11[8]])
  {
    if (v0[v11[8]] == 1)
    {
      v17 = "deleted-state-none";
      v18 = 0xD00000000000001DLL;
    }

    else
    {
      v17 = "offensive-state-none";
      v18 = 0xD000000000000020;
    }
  }

  else
  {
    v18 = 0xD000000000000011;
    v17 = "access-level-no-bundle-access";
  }

  v6[12] = v18;
  v6[13] = v17 | 0x8000000000000000;
  v19 = "ala-carte-access";
  if (v0[v11[9]])
  {
    v20 = 0xD000000000000015;
  }

  else
  {
    v20 = 0xD000000000000012;
  }

  if (!v0[v11[9]])
  {
    v19 = "blocked-state-none";
  }

  v6[14] = v20;
  v6[15] = v19 | 0x8000000000000000;
  if (v0[v11[10]])
  {
    v21 = 0xD000000000000015;
  }

  else
  {
    v21 = 0xD000000000000012;
  }

  if (v0[v11[10]])
  {
    v22 = "deleted-state-deleted";
  }

  else
  {
    v22 = "blocked-state-blocked";
  }

  v6[16] = v21;
  v6[17] = v22 | 0x8000000000000000;
  return v6;
}

uint64_t FeedHeadline.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void FeedHeadline.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t FeedHeadline.nativeAdInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedHeadline(0) + 44);

  return sub_1D5BC7A6C(v3, a1);
}

uint64_t FeedHeadline.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedHeadline(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D5BF2DDC(v4, v5);
}

unint64_t FeedHeadline.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FeedHeadline(0) + 52));
  *a1 = v3;

  return sub_1D5C00308(v3);
}

id FeedHeadline.audioTrack.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FeedHeadline(0) + 56));
  *a1 = v3;

  return v3;
}

uint64_t FeedHeadline.hasAudioAccess.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedHeadline(0) + 56));
  if (v1 && (v2 = *(v0 + 40), ([v2 respondsToSelector_] & 1) != 0))
  {
    v3 = v1;
    v4 = [v2 narrativeTrack];
    if (v4)
    {
      v5 = v4;
      sub_1D5B5A498(0, &qword_1EDF1A9B0);
      v6 = v3;
      v7 = sub_1D726370C();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id FeedHeadline.hasRecipes.getter()
{
  v1 = *(v0 + 40);
  result = [v1 sourceChannel];
  if (result)
  {
    if ([result allowsRecipes] && (v3 = objc_msgSend(v1, sel_recipeIDs)) != 0)
    {
      v4 = v3;
      v5 = sub_1D726267C();

      swift_unknownObjectRelease();
      v6 = *(v5 + 16);

      return (v6 != 0);
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id FeedHeadline.recipeCount.getter()
{
  v1 = *(v0 + 40);
  result = [v1 sourceChannel];
  if (result)
  {
    if ([result allowsRecipes] && (v3 = objc_msgSend(v1, sel_recipeIDs)) != 0)
    {
      v4 = v3;
      v5 = sub_1D726267C();

      swift_unknownObjectRelease();
      v6 = *(v5 + 16);

      return v6;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id FeedHeadline.dismissingIdentifier.getter()
{
  v1 = *(v0 + 40);
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    return 0;
  }

  result = [v1 dismissingIdentifier];
  if (result)
  {
    v3 = result;
    v4 = sub_1D726207C();

    return v4;
  }

  return result;
}

uint64_t FeedHeadline.copy(nativeAdInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v37, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49834(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v33 - v10;
  v12 = v2[1];
  v34 = *v2;
  v13 = v2[5];
  v14 = v2[6];
  v35 = *(v2 + 56);
  v15 = sub_1D726045C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v11, a1, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  v17 = type metadata accessor for FeedHeadline(0);
  sub_1D5BC7B00(v2 + v17[10], v7, type metadata accessor for FeedHeadline.State);
  v18 = *(v2 + v17[14]);
  *(a2 + v17[12]) = xmmword_1D727C330;
  v36 = v2[4];
  *a2 = v34;
  *(a2 + 8) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  sub_1D5BC7A6C(v11, a2 + v17[11]);
  sub_1D5BC7B00(v7, a2 + v17[10], type metadata accessor for FeedHeadline.State);
  *(a2 + v17[14]) = v18;
  *(a2 + 56) = v35;
  swift_getObjectType();
  v19 = v18;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v20 = [v13 title];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 ne_isNaturallyRTL];

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  *(a2 + 16) = v23;
  *(a2 + 24) = 0;
  sub_1D5BC7BD4(&v38);
  v24 = v37;
  if (v7[*(v37 + 32)] - 1 <= 1 && (v38 & 0x1000) == 0)
  {
    v38 |= 0x1000uLL;
  }

  v25 = v7[*(v37 + 40)];
  v26 = 0x80000000;
  if (!v7[*(v37 + 40)])
  {
    v26 = 0x100000000;
  }

  if ((v38 & v26) != 0)
  {
    v26 = 0;
  }

  v27 = v38 | v26;
  v28 = (v38 >> 21) & 1;
  if (!v18)
  {
    LODWORD(v28) = 1;
  }

  if (v28)
  {
    v29 = v27;
  }

  else
  {
    v29 = v27 | 0x200000;
  }

  *(a2 + 32) = v29 | v36;
  if (v7[*(v24 + 28)])
  {
    if (v7[*(v24 + 36)])
    {
      sub_1D5BC82E0(v7, type metadata accessor for FeedHeadline.State);
      result = sub_1D5BC80E4(v11, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v31 = 1;
    }

    else if (v25)
    {
      v32 = [v13 sourceChannel];
      sub_1D5BC82E0(v7, type metadata accessor for FeedHeadline.State);
      result = sub_1D5BC80E4(v11, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v31 = 2;
      if (v32)
      {
        v31 = v32;
      }
    }

    else
    {
      sub_1D5BC82E0(v7, type metadata accessor for FeedHeadline.State);
      result = sub_1D5BC80E4(v11, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v31 = 2;
    }
  }

  else
  {
    sub_1D5BC82E0(v7, type metadata accessor for FeedHeadline.State);
    result = sub_1D5BC80E4(v11, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
    v31 = 0;
  }

  *(a2 + v17[13]) = v31;
  return result;
}

void sub_1D5EE4270(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t sub_1D5EE4284@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 48));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1D5BF2DDC(v4, v5);
}

void *FeedHeadline.additionalFormatFeedItems.getter()
{
  v1 = *(v0 + 40);
  v2 = [v1 sourceChannel];
  if (v2)
  {
    v3 = v2;
    v4 = [swift_unknownObjectRetain() identifier];
    v5 = sub_1D726207C();
    v7 = v6;

    v36 = xmmword_1D7279980;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
    *&v27 = v5;
    *(&v27 + 1) = v7;
    v28 = v3;
    LOBYTE(v29) = 0;
    v32 = 0;
    v33 = 0xE000000000000000;
    v30 = 0;
    v31 = 0;
    v34 = 0;
    v35 = MEMORY[0x1E69E7CD0];
    sub_1D5EE5AF8(&v27, v26);
    v8 = sub_1D5BDEE24(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1D5BDEE24((v9 > 1), v10 + 1, 1, v8);
    }

    swift_unknownObjectRelease();
    sub_1D5EE5B54(&v27);
    v24 = &type metadata for FeedTag;
    v25 = sub_1D5EE5BA8();
    *&v23 = swift_allocObject();
    sub_1D5EE5AF8(v26, v23 + 16);
    v8[2] = v10 + 1;
    sub_1D5B63F14(&v23, &v8[5 * v10 + 4]);
    sub_1D5EE5B54(v26);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if ([v1 respondsToSelector_])
  {
    v11 = [v1 parentIssue];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      v14 = v12;
      v15 = [v14 identifier];
      v16 = sub_1D726207C();
      v18 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D5BDEE24(0, v8[2] + 1, 1, v8);
      }

      v20 = v8[2];
      v19 = v8[3];
      if (v20 >= v19 >> 1)
      {
        v8 = sub_1D5BDEE24((v19 > 1), v20 + 1, 1, v8);
      }

      v29 = &type metadata for FeedIssue;
      v30 = sub_1D5EE5AA4();
      v21 = swift_allocObject();
      *&v27 = v21;
      *(v21 + 16) = v14;
      *(v21 + 24) = v16;
      *(v21 + 32) = v18;
      *(v21 + 40) = 0;
      *(v21 + 42) = v41;
      *(v21 + 46) = v42;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 57) = *v26;
      *(v21 + 60) = *&v26[3];
      *(v21 + 64) = 1;
      *(v21 + 72) = v13;
      *(v21 + 80) = 0;
      *(v21 + 81) = v23;
      *(v21 + 84) = *(&v23 + 3);
      *(v21 + 88) = xmmword_1D7279980;
      *(v21 + 104) = 0u;
      *(v21 + 120) = 0u;
      *(v21 + 136) = 0;
      *(v21 + 144) = 5;
      *(v21 + 152) = 0;
      v8[2] = v20 + 1;
      sub_1D5B63F14(&v27, &v8[5 * v20 + 4]);
    }
  }

  return v8;
}

uint64_t sub_1D5EE45D8()
{
  v1 = [*(v0 + 40) identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedHeadline.debugIdentifier.getter()
{
  v1 = [*(v0 + 40) identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t sub_1D5EE4688()
{
  v1 = [*(v0 + 40) sourceChannel];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 name];
  swift_unknownObjectRelease();
  v3 = sub_1D726207C();

  return v3;
}

uint64_t FeedHeadline.debugSourceName.getter()
{
  v1 = [*(v0 + 40) sourceChannel];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 name];
  swift_unknownObjectRelease();
  v3 = sub_1D726207C();

  return v3;
}

uint64_t sub_1D5EE47A0()
{
  v1 = [*(v0 + 40) title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

uint64_t FeedHeadline.debugTitle.getter()
{
  v1 = [*(v0 + 40) title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

id sub_1D5EE4870()
{
  v1 = [*(v0 + 40) thumbnail];
  v2 = [v1 thumbnailAssetHandle];

  return v2;
}

id FeedHeadline.debugAssetHandle.getter()
{
  v1 = [*(v0 + 40) thumbnail];
  v2 = [v1 thumbnailAssetHandle];

  return v2;
}

id sub_1D5EE4920()
{
  v1 = [*(v0 + 40) scoreProfile];

  return v1;
}

id FeedHeadline.debugScoreProfile.getter()
{
  v1 = [*(v0 + 40) scoreProfile];

  return v1;
}

uint64_t FeedHeadline.groupItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5BC7B00(v1, a1, type metadata accessor for FeedHeadline);
  type metadata accessor for FeedGroupItem();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D5EE49F4@<X0>(uint64_t a1@<X8>)
{
  sub_1D5BC7B00(v1, a1, type metadata accessor for FeedHeadline);
  type metadata accessor for FeedGroupItem();

  return swift_storeEnumTagMultiPayload();
}

uint64_t FeedHeadline.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49834(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v36 - v14;
  v16 = v1 + *(type metadata accessor for FeedHeadline(0) + 40);
  v17 = type metadata accessor for FeedHeadline.State(0);
  if (*(v16 + *(v17 + 32)))
  {
    v18 = 1;
  }

  else
  {
    v18 = *(v16 + *(v17 + 28)) == 0;
  }

  if (v18)
  {
    v19 = sub_1D725F84C();
    v20 = *(*(v19 - 8) + 56);

    return v20(a1, 1, 1, v19);
  }

  else
  {
    v22 = *(v1 + 40);
    v23 = [v22 articleID];
    v24 = v23;
    if (!v23)
    {
      sub_1D726207C();
      v24 = sub_1D726203C();
    }

    v25 = [v22 routeURL];
    if (v25)
    {
      v26 = v25;
      sub_1D72584EC();

      v27 = sub_1D725844C();
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v27 = 0;
    }

    v28 = [objc_opt_self() nss:v24 NewsURLForArticleID:v27 routeURL:?];

    if (v28)
    {
      sub_1D72584EC();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    (*(v4 + 56))(v11, v29, 1, v3);
    sub_1D5EB8540(v11, v15);
    if ((*(v4 + 48))(v15, 1, v3) == 1)
    {
      sub_1D5BC80E4(v15, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_23:
      v34 = sub_1D725F84C();
      return (*(*(v34 - 8) + 56))(a1, 1, 1, v34);
    }

    v30 = sub_1D725844C();
    (*(v4 + 8))(v15, v3);
    sub_1D726220C();
    v31 = sub_1D726323C();

    if (!v31)
    {

      goto LABEL_23;
    }

    v32 = [v22 title];
    if (v32)
    {
      v33 = v32;
      sub_1D726207C();
    }

    sub_1D725F83C();

    v35 = sub_1D725F84C();
    return (*(*(v35 - 8) + 56))(a1, 0, 1, v35);
  }
}

uint64_t FeedHeadline.debugDescription.getter()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73C10E0);
  v1 = type metadata accessor for FeedHeadline(0);
  sub_1D609CBEC(*(v0 + *(v1 + 48)), *(v0 + *(v1 + 48) + 8));
  MEMORY[0x1DA6F9910](0x203A646920, 0xE500000000000000);
  v2 = *(v0 + 40);
  v3 = [v2 identifier];
  v4 = sub_1D726207C();
  v6 = v5;

  MEMORY[0x1DA6F9910](v4, v6);

  MEMORY[0x1DA6F9910](0x203A656C74697420, 0xE800000000000000);
  v7 = [v2 title];
  if (v7)
  {
    v8 = v7;
    sub_1D726207C();
  }

  sub_1D5B5D308(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v9 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v9);

  return 0;
}

uint64_t FeedHeadline.State.offensiveState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedHeadline.State(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t FeedHeadline.State.accessLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedHeadline.State(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t FeedHeadline.State.deletedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedHeadline.State(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t FeedHeadline.State.blockedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedHeadline.State(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t FeedHeadline.State.init(likedState:savedState:sharedState:offensiveState:accessLevel:deletedState:blockedState:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, _BYTE *a8@<X8>)
{
  v10 = *a2;
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v14 = *a7;
  *a8 = *a1;
  a8[1] = v10;
  v15 = type metadata accessor for FeedHeadline.State(0);
  result = sub_1D5EE6424(a3, &a8[v15[6]]);
  a8[v15[7]] = v11;
  a8[v15[8]] = v12;
  a8[v15[9]] = v13;
  a8[v15[10]] = v14;
  return result;
}

uint64_t FeedHeadline.State.contextIdentifier.getter()
{
  FeedHeadline.State.selectors.getter();
  sub_1D5B5D308(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v0 = sub_1D7261F3C();

  return v0;
}

char *sub_1D5EE52D8()
{
  sub_1D5B49834(0, &qword_1EDF19578, sub_1D5EE6488, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  *(inited + 32) = 0x7972616D697270;
  *(inited + 40) = 0xE700000000000000;
  v2 = *(v0 + 40);
  if ([v2 respondsToSelector_])
  {
    v3 = [v2 thumbnailImagePrimaryColor];
  }

  else
  {
    v3 = 1;
  }

  *(inited + 48) = v3;
  *(inited + 56) = 0x756F72676B636162;
  *(inited + 64) = 0xEA0000000000646ELL;
  if ([v2 respondsToSelector_])
  {
    v4 = [v2 thumbnailImageBackgroundColor];
  }

  else
  {
    v4 = 1;
  }

  *(inited + 72) = v4;
  *(inited + 80) = 1954047348;
  *(inited + 88) = 0xE400000000000000;
  if ([v2 respondsToSelector_])
  {
    v5 = [v2 thumbnailImageTextColor];
  }

  else
  {
    v5 = 1;
  }

  *(inited + 96) = v5;
  *(inited + 104) = 0x746E65636361;
  *(inited + 112) = 0xE600000000000000;
  if ([v2 respondsToSelector_])
  {
    v6 = [v2 thumbnailImageAccentColor];
  }

  else
  {
    v6 = 1;
  }

  *(inited + 120) = v6;
  v7 = sub_1D605AF40(inited);
  swift_setDeallocating();
  sub_1D5EE6488();
  swift_arrayDestroy();
  v8 = sub_1D5EE5C74(v7);

  sub_1D5EE32E8(v8);
  v10 = v9;

  if (*(v0 + 56))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D5B858EC(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1D5B858EC((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[16 * v12];
    *(v13 + 4) = 0x6D75696D657270;
    *(v13 + 5) = 0xE700000000000000;
  }

  if (FeedHeadline.hasAudioAccess.getter())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D5B858EC(0, *(v10 + 2) + 1, 1, v10);
    }

    v15 = *(v10 + 2);
    v14 = *(v10 + 3);
    if (v15 >= v14 >> 1)
    {
      v10 = sub_1D5B858EC((v14 > 1), v15 + 1, 1, v10);
    }

    *(v10 + 2) = v15 + 1;
    v16 = &v10[16 * v15];
    *(v16 + 4) = 0xD000000000000011;
    *(v16 + 5) = 0x80000001D73C1120;
  }

  v17 = [v2 sourceChannel];
  if (v17)
  {
    v18 = v17;
    sub_1D7263D4C();

    v19 = [v18 identifier];
    v20 = sub_1D726207C();
    v22 = v21;

    MEMORY[0x1DA6F9910](v20, v22);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D5B858EC(0, *(v10 + 2) + 1, 1, v10);
    }

    v24 = *(v10 + 2);
    v23 = *(v10 + 3);
    if (v24 >= v23 >> 1)
    {
      v10 = sub_1D5B858EC((v23 > 1), v24 + 1, 1, v10);
    }

    swift_unknownObjectRelease();
    *(v10 + 2) = v24 + 1;
    v25 = &v10[16 * v24];
    *(v25 + 4) = 0xD000000000000012;
    *(v25 + 5) = 0x80000001D73C1100;
  }

  if (([v2 respondsToSelector_] & 1) != 0 && objc_msgSend(v2, sel_isEvergreen))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D5B858EC(0, *(v10 + 2) + 1, 1, v10);
    }

    v27 = *(v10 + 2);
    v26 = *(v10 + 3);
    if (v27 >= v26 >> 1)
    {
      v10 = sub_1D5B858EC((v26 > 1), v27 + 1, 1, v10);
    }

    *(v10 + 2) = v27 + 1;
    v28 = &v10[16 * v27];
    strcpy(v28 + 32, "is-evergreen");
    v28[45] = 0;
    *(v28 + 23) = -5120;
  }

  return v10;
}

uint64_t sub_1D5EE57CC()
{
  v0 = sub_1D5EE52D8();
  v1 = *(v0 + 2);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      MEMORY[0x1DA6F9910](v4, v5);

      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D5BFC364((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = 0x2D70756F7267;
      *(v8 + 40) = 0xE600000000000000;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1D5EE58F8()
{
  type metadata accessor for FeedHeadline(0);
  v0 = FeedHeadline.State.selectors.getter();
  v1 = v0[2];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v2 = v10;
    v3 = v0 + 5;
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](v4, v5);

      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D5BFC364((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = 0x65682D70756F7267;
      *(v8 + 40) = 0xEF2D656E696C6461;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

unint64_t sub_1D5EE5A94(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_1D5EE5AA4()
{
  result = qword_1EDF34E40;
  if (!qword_1EDF34E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34E40);
  }

  return result;
}

unint64_t sub_1D5EE5BA8()
{
  result = qword_1EDF34F70;
  if (!qword_1EDF34F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34F70);
  }

  return result;
}

unint64_t *sub_1D5EE5BFC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D5EE5DD4(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1D5EE5C74(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1D5EE5DD4(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_1D5EE5BFC(v13, v7, v3);
  result = MEMORY[0x1DA6FD500](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

unint64_t *sub_1D5EE5DD4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) != 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1D62CF2C8(result, a2, v4, a3);
      }
    }
  }

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
      return sub_1D62CF2C8(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s8NewsFeed0B8HeadlineV5StateV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && (v4 = type metadata accessor for FeedHeadline.State(0), (_s8NewsFeed0B4ItemO11SharedStateO2eeoiySbAE_AEtFZ_0(&a1[v4[6]], &a2[v4[6]]) & 1) != 0) && a1[v4[7]] == a2[v4[7]] && a1[v4[8]] == a2[v4[8]] && a1[v4[9]] == a2[v4[9]])
  {
    v5 = a1[v4[10]] ^ a2[v4[10]] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _s8NewsFeed0B8HeadlineV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D726045C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49834(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v39 - v11;
  sub_1D5EE65A8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v40 = v8;
  v41 = v5;
  v42 = v4;
  v18 = [*(a1 + 40) title];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D726207C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [*(a2 + 40) title];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1D726207C();
    v27 = v26;

    if (v22)
    {
      if (v27)
      {
        if (v20 == v25 && v22 == v27)
        {
        }

        else
        {
          v29 = sub_1D72646CC();

          if ((v29 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

LABEL_18:
        v30 = type metadata accessor for FeedHeadline(0);
        if ((_s8NewsFeed0B8HeadlineV5StateV2eeoiySbAE_AEtFZ_0((a1 + *(v30 + 40)), (a2 + *(v30 + 40))) & 1) != 0 && *(a1 + 32) == *(a2 + 32))
        {
          v31 = *(v30 + 44);
          v32 = *(v14 + 48);
          sub_1D5BC7A6C(a1 + v31, v17);
          sub_1D5BC7A6C(a2 + v31, &v17[v32]);
          v34 = v41;
          v33 = v42;
          v35 = *(v41 + 48);
          if (v35(v17, 1, v42) == 1)
          {
            if (v35(&v17[v32], 1, v33) == 1)
            {
              sub_1D5BC80E4(v17, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
              v28 = 1;
              return v28 & 1;
            }
          }

          else
          {
            sub_1D5BC7A6C(v17, v12);
            if (v35(&v17[v32], 1, v33) != 1)
            {
              v37 = v40;
              (*(v34 + 32))(v40, &v17[v32], v33);
              sub_1D5C0F40C(&qword_1EDF3AAA8, MEMORY[0x1E69B3E58]);
              v28 = sub_1D7261FBC();
              v38 = *(v34 + 8);
              v38(v37, v33);
              v38(v12, v33);
              sub_1D5BC80E4(v17, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
              return v28 & 1;
            }

            (*(v34 + 8))(v12, v33);
          }

          sub_1D5BC82E0(v17, sub_1D5EE65A8);
          v28 = 0;
          return v28 & 1;
        }

LABEL_23:
        v28 = 0;
        return v28 & 1;
      }
    }

    else if (!v27)
    {
      goto LABEL_18;
    }
  }

  else if (!v22)
  {
    goto LABEL_18;
  }

  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1D5EE6424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItem.SharedState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D5EE6488()
{
  if (!qword_1EDF1B620)
  {
    sub_1D5B49834(255, &qword_1EDF1A6D0, sub_1D5EE6520, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B620);
    }
  }
}

void sub_1D5EE6520()
{
  if (!qword_1EDF1A6E0)
  {
    sub_1D5B5A498(255, &qword_1EDF1A6F0);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A6E0);
    }
  }
}

id sub_1D5EE6588(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1D5EE6598(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_1D5EE65A8()
{
  if (!qword_1EDF3AAA0)
  {
    sub_1D5B49834(255, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3AAA0);
    }
  }
}

uint64_t FeedRefreshUpdateBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5EE6738()
{
  result = qword_1EC8809D8;
  if (!qword_1EC8809D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8809D8);
  }

  return result;
}

uint64_t sub_1D5EE679C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D725A76C();
  if (([a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = [a1 newsFeedFormatConfiguration];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  v8 = sub_1D726207C();
  v10 = v9;

  v11 = v3[6];
  if (v11)
  {
    v12 = v3[5] == v8 && v11 == v10;
    if (v12 || (sub_1D72646CC() & 1) != 0)
    {

LABEL_11:
      v16 = v3[4];
      *a2 = v3[3];
      a2[1] = v16;

      return sub_1D725A77C();
    }
  }

  v13 = sub_1D6011D6C(v8, v10);
  v15 = v14;
  sub_1D5EE6A98();
  sub_1D725A69C();
  sub_1D5B952F8(v13, v15);
  v3[3] = v18;
  v3[4] = v19;

  v3[5] = v8;
  v3[6] = v10;

  *a2 = v18;
  a2[1] = v19;
  return sub_1D725A77C();
}

uint64_t sub_1D5EE6A38()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D5EE6A98()
{
  result = qword_1EC8809E0;
  if (!qword_1EC8809E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8809E0);
  }

  return result;
}

uint64_t sub_1D5EE6AEC(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDockButtonItemContainerView_items;
  swift_beginAccess();

  MEMORY[0x1DA6F9CE0](v5);
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  swift_endAccess();
  [v1 addSubview_];
  v6 = *(a1 + 24);
  v7 = [objc_opt_self() whiteColor];
  [v6 setTextColor_];

  v8 = [objc_opt_self() systemFontOfSize_];
  [v6 setFont_];

  [v6 setUserInteractionEnabled_];
  [v6 setTextAlignment_];
  [v6 setFrame_];
  v9 = [v6 layer];
  [v6 frame];
  [v9 setCornerRadius_];

  v10 = [v6 layer];
  [v10 setCornerCurve_];

  v11 = [v6 layer];
  [v11 setMasksToBounds_];

  [v6 setAdjustsFontSizeToFitWidth_];
  [v2 addSubview_];

  sub_1D725B33C();

  swift_allocObject();
  swift_weakInit();
  sub_1D725B2EC();
}

uint64_t sub_1D5EE6DDC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *(result + 24);
    if (v4)
    {
      if (v3 < 100)
      {
        v19 = v3;
        sub_1D5E4049C();
        v12 = v8;
        sub_1D7263ADC();
      }

      else
      {
        v9 = v8;
      }

      v11 = sub_1D726203C();
    }

    else
    {
      v10 = v8;
      v11 = 0;
    }

    [v8 setText_];

    v13 = *(v7 + 24);
    if (v4)
    {
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }

    v15 = v13;
    [v15 setTextColor_];

    v16 = *(v7 + 24);
    if (v4)
    {
      v17 = v5;
    }

    else
    {
      v17 = 0;
    }

    v18 = v16;
    [v18 setBackgroundColor_];

    [a1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1D5EE6FD8()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDockButtonItemContainerView_items;
  result = swift_beginAccess();
  v3 = *&v0[v1];
  if (v3 >> 62)
  {
    result = sub_1D7263BFC();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    v6 = 0.0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6FB460](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      [*(v7 + 16) setFrame_];
      v8 = *(v7 + 24);

      sub_1D725B31C();

      if (v13)
      {
        sub_1D5EE73C0(v12, v13, v14);
      }

      [v8 setHidden_];

      if ([*(v7 + 24) isHidden])
      {
      }

      else
      {
        v9 = *(v7 + 24);
        [v9 bounds];
        v10 = 44.0 - CGRectGetWidth(v16);
        [*(v7 + 24) bounds];
        Width = CGRectGetWidth(v17);
        [*(v7 + 24) bounds];
        [v9 setFrame_];
      }

      ++v5;
      v6 = v6 + 44.0;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_1D5EE73C0(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
  }
}

void *sub_1D5EE7410(void *a1)
{
  sub_1D5EE80B8(0, &qword_1EC880A08, MEMORY[0x1E69D64D8]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v18 - v8;
  v18[1] = a1;
  v10 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  v11 = sub_1D725AAFC();
  v12 = swift_dynamicCast();
  v13 = *(*(v11 - 8) + 56);
  if (!v12)
  {
    v13(v9, 1, 1, v11);
LABEL_6:
    v16 = a1;
    goto LABEL_7;
  }

  v14 = *(v11 - 8);
  v13(v9, 0, 1, v11);
  sub_1D5EEB0BC(v9, v5);
  if ((*(v14 + 88))(v5, v11) != *MEMORY[0x1E69D64D0])
  {
    (*(v14 + 8))(v5, v11);
    goto LABEL_6;
  }

  (*(v14 + 96))(v5, v11);
  v15 = *v5;
  a1 = sub_1D5EE7410(v15);

LABEL_7:
  sub_1D5EE9810(v9, &qword_1EC880A08, MEMORY[0x1E69D64D8]);
  return a1;
}

id sub_1D5EE763C(void *a1)
{
  sub_1D5EE80B8(0, &qword_1EDF2F520, type metadata accessor for FormatLayoutError);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v67 = &v62 - v4;
  v66 = type metadata accessor for FormatLayoutError();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v5);
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EE80B8(0, &qword_1EC8809F8, type metadata accessor for FormatVersioningError);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v71 = &v62 - v9;
  v70 = type metadata accessor for FormatVersioningError(0);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v10);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EE80B8(0, &qword_1EC880A00, type metadata accessor for FormatDerivedDataError);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v62 - v14;
  v16 = type metadata accessor for FormatDerivedDataError();
  v72 = *(v16 - 8);
  v73 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v68 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EE80B8(0, qword_1EDF0D6D8, type metadata accessor for DebugFormatServiceError);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v62 - v21;
  v23 = type metadata accessor for DebugFormatServiceError();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EE80B8(0, &qword_1EC880A08, MEMORY[0x1E69D64D8]);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (&v62 - v30);
  *&v79[0] = a1;
  v32 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  v33 = sub_1D725AAFC();
  v34 = swift_dynamicCast();
  v35 = *(*(v33 - 8) + 56);
  if (v34)
  {
    v36 = *(v33 - 8);
    v35(v31, 0, 1, v33);
    if ((*(v36 + 88))(v31, v33) == *MEMORY[0x1E69D64D0])
    {
      (*(v36 + 96))(v31, v33);
      v37 = *v31;
      v38 = sub_1D5EE763C(*v31);

      return v38;
    }

    (*(v36 + 8))(v31, v33);
  }

  else
  {
    v35(v31, 1, 1, v33);
    sub_1D5EE9810(v31, &qword_1EC880A08, MEMORY[0x1E69D64D8]);
  }

  *&v79[0] = a1;
  v39 = a1;
  v40 = swift_dynamicCast();
  v41 = *(v24 + 56);
  if (v40)
  {
    v41(v22, 0, 1, v23);
    sub_1D5EE97A8(v22, v27, type metadata accessor for DebugFormatServiceError);
    v38 = sub_1D5EE8368(v27);
    v42 = type metadata accessor for DebugFormatServiceError;
    v43 = v27;
LABEL_15:
    sub_1D5EEAA7C(v43, v42);
    return v38;
  }

  v41(v22, 1, 1, v23);
  sub_1D5EE9810(v22, qword_1EDF0D6D8, type metadata accessor for DebugFormatServiceError);
  *&v79[0] = a1;
  v44 = a1;
  v45 = v73;
  v46 = swift_dynamicCast();
  v47 = *(v72 + 56);
  if (v46)
  {
    v47(v15, 0, 1, v45);
    v48 = v68;
    sub_1D5EE97A8(v15, v68, type metadata accessor for FormatDerivedDataError);
    v38 = sub_1D5EE8A24(v48);
    v49 = type metadata accessor for FormatDerivedDataError;
LABEL_14:
    v42 = v49;
    v43 = v48;
    goto LABEL_15;
  }

  v47(v15, 1, 1, v45);
  sub_1D5EE9810(v15, &qword_1EC880A00, type metadata accessor for FormatDerivedDataError);
  *&v79[0] = a1;
  v50 = a1;
  v51 = v71;
  v52 = v70;
  v53 = swift_dynamicCast();
  v54 = *(v69 + 56);
  if (v53)
  {
    v54(v51, 0, 1, v52);
    v48 = v64;
    sub_1D5EE97A8(v51, v64, type metadata accessor for FormatVersioningError);
    v38 = sub_1D5EE8C80(v48);
    v49 = type metadata accessor for FormatVersioningError;
    goto LABEL_14;
  }

  v54(v51, 1, 1, v52);
  sub_1D5EE9810(v51, &qword_1EC8809F8, type metadata accessor for FormatVersioningError);
  *&v79[0] = a1;
  v55 = a1;
  v56 = v67;
  v57 = v66;
  v58 = swift_dynamicCast();
  v59 = *(v65 + 56);
  if (v58)
  {
    v59(v56, 0, 1, v57);
    v48 = v63;
    sub_1D5EE97A8(v56, v63, type metadata accessor for FormatLayoutError);
    v38 = sub_1D5EE8EC8(v48);
    v49 = type metadata accessor for FormatLayoutError;
    goto LABEL_14;
  }

  v59(v56, 1, 1, v57);
  sub_1D5EE9810(v56, &qword_1EDF2F520, type metadata accessor for FormatLayoutError);
  v74 = a1;
  v61 = a1;
  if (swift_dynamicCast())
  {
    v79[0] = v76;
    v79[1] = v77;
    v80[0] = *v78;
    *(v80 + 9) = *&v78[9];
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1D726491C();
    sub_1D5EE810C(&v76);
    sub_1D5EE810C(v79);
    return v74;
  }

  else
  {
    v77 = 0u;
    memset(v78, 0, 24);
    v76 = 0u;
    v78[24] = -1;
    sub_1D5EEB05C(&v76, &unk_1EC880A10, &type metadata for FormatBindingError, MEMORY[0x1E69E6720], sub_1D5B49D08);
    *&v76 = a1;
    *&v79[0] = 0;
    *(&v79[0] + 1) = 0xE000000000000000;
    sub_1D726491C();

    return *&v79[0];
  }
}

void sub_1D5EE80B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5EE8160(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1D5EEA980(v4, v11, sub_1D5EEA9E8);
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x203A74756F79614CLL, 0xE800000000000000);
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      sub_1D726466C();
      MEMORY[0x1DA6F9910](0x203A726F7272450ALL, 0xE800000000000000);
      v5 = sub_1D5EE763C(v11[5]);
      MEMORY[0x1DA6F9910](v5);

      sub_1D5EEAA7C(v11, sub_1D5EEA9E8);
      v12 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D5BFC364((v6 > 1), v7 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v7 + 1;
      v8 = v2 + 16 * v7;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  v11[0] = v2;
  sub_1D5B49D08(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v9 = sub_1D7261F3C();

  return v9;
}

uint64_t sub_1D5EE8368(uint64_t a1)
{
  sub_1D5EE80B8(0, &qword_1EC880A08, MEMORY[0x1E69D64D8]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v43 = v42 - v4;
  sub_1D5EE80B8(0, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v42 - v7;
  v9 = sub_1D7263E3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DebugFormatServiceError();
  MEMORY[0x1EEE9AC00](v19, v20);
  v44 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v42 - v24;
  sub_1D5EEA980(a1, v42 - v24, type metadata accessor for DebugFormatServiceError);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v42[1] = a1;
    sub_1D5EA0810();
    v42[0] = v26;
    v27 = *&v25[*(v26 + 48)];
    (*(v15 + 32))(v18, v25, v14);
    v45 = v27;
    v28 = v27;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    v29 = swift_dynamicCast();
    v30 = *(v10 + 56);
    if (v29)
    {
      v30(v8, 0, 1, v9);
      (*(v10 + 32))(v13, v8, v9);
      v31 = sub_1D5EE9C38(v18, v13);

      (*(v10 + 8))(v13, v9);
      (*(v15 + 8))(v18, v14);
      return v31;
    }

    v30(v8, 1, 1, v9);
    sub_1D5EE9810(v8, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
    v45 = v27;
    v34 = v27;
    v35 = sub_1D725AAFC();
    v36 = v43;
    if (swift_dynamicCast())
    {
      v37 = *(v35 - 8);
      (*(v37 + 56))(v36, 0, 1, v35);
      if ((*(v37 + 88))(v36, v35) == *MEMORY[0x1E69D64D0])
      {
        (*(v37 + 96))(v36, v35);
        v38 = *v36;
        v39 = *(v42[0] + 48);
        v40 = v44;
        (*(v15 + 16))(v44, v18, v14);
        *(v40 + v39) = v38;
        swift_storeEnumTagMultiPayload();
        v41 = sub_1D5EE8368(v40);

        sub_1D5EEAA7C(v40, type metadata accessor for DebugFormatServiceError);
        (*(v15 + 8))(v18, v14);
        return v41;
      }

      (*(v15 + 8))(v18, v14);

      (*(v37 + 8))(v36, v35);
    }

    else
    {
      (*(v15 + 8))(v18, v14);

      (*(*(v35 - 8) + 56))(v36, 1, 1, v35);
      sub_1D5EE9810(v36, &qword_1EC880A08, MEMORY[0x1E69D64D8]);
    }
  }

  else
  {
    sub_1D5EEAA7C(v25, type metadata accessor for DebugFormatServiceError);
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  v33 = v44;
  sub_1D726491C();
  sub_1D5EEAA7C(v33, type metadata accessor for DebugFormatServiceError);
  return v45;
}

unint64_t sub_1D5EE8A24(uint64_t a1)
{
  v2 = type metadata accessor for FormatDerivedDataError();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v20 - v8);
  sub_1D5EEA980(a1, &v20 - v8, type metadata accessor for FormatDerivedDataError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v11 = *v9;
      v12 = v9[1];
      v13 = v9[2];
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_1D7263D4C();

      v14 = "Failed to compile style ";
      goto LABEL_7;
    case 1:
      v11 = *v9;
      v12 = v9[1];
      v13 = v9[2];
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_1D7263D4C();

      v15 = 0x80000001D73C1370;
      v16 = 0xD00000000000001DLL;
LABEL_8:
      v20 = v16;
      v21 = v15;
      MEMORY[0x1DA6F9910](v11, v12);

      MEMORY[0x1DA6F9910](2606, 0xE200000000000000);
      v17 = sub_1D5EE763C(v13);
      MEMORY[0x1DA6F9910](v17);

      return v20;
    case 0:
      v11 = *v9;
      v12 = v9[1];
      v13 = v9[2];
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_1D7263D4C();

      v14 = "Failed to compile group ";
LABEL_7:
      v15 = (v14 - 32) | 0x8000000000000000;
      v16 = 0xD000000000000018;
      goto LABEL_8;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1D726491C();
  sub_1D5EEAA7C(v5, type metadata accessor for FormatDerivedDataError);
  v19 = v20;
  sub_1D5EEAA7C(v9, type metadata accessor for FormatDerivedDataError);
  return v19;
}

uint64_t sub_1D5EE8C80(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FormatVersioningError(0) + 28));
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_1D5B68374(v1 + 40 * v2 - 8, v13);
      __swift_project_boxed_opaque_existential_1(v13, v13[3]);
      v3 = sub_1D7264BCC();
      v5 = v4;
      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      v3 = 1953460082;
      v5 = 0xE400000000000000;
    }

    v7 = sub_1D5EE9D54(v8);
    v6 = v9;
  }

  else
  {
    v3 = 1953460082;
    v5 = 0xE400000000000000;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000015, 0x80000001D73C13D0);
  MEMORY[0x1DA6F9910](v7, v6);

  MEMORY[0x1DA6F9910](2618, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v3, v5);

  MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C13F0);
  sub_1D725BD1C();
  sub_1D5EEA840(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
  v10 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v10);

  MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C1410);
  v11 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v11);

  return v13[0];
}

char *sub_1D5EE8EC8(uint64_t a1)
{
  v2 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v79 - v8;
  sub_1D5EEA980(a1, &v79 - v8, type metadata accessor for FormatLayoutError);
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    v10 = *v9;
    v11 = *(v9 + 16);
    v83 = *(v9 + 8);
    v84 = v11;
    v79 = v10;
    v12 = *(v10 + 32);
    if (v12 >> 62)
    {
      goto LABEL_72;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
    {

      if (i)
      {
        break;
      }

LABEL_16:

      v16 = *(v79 + 32);
      if (v16 >> 62)
      {
        v5 = sub_1D7263BFC();
      }

      else
      {
        v5 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = MEMORY[0x1E69E7CC0];
      if (v5)
      {
        v12 = 0;
        v18 = MEMORY[0x1E69E7CC0];
        do
        {
          v19 = v12;
          while (1)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x1DA6FB460](v19, v16);
              v12 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                goto LABEL_67;
              }
            }

            else
            {
              if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_68;
              }

              v20 = *(v16 + 8 * v19 + 32);

              v12 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
                goto LABEL_69;
              }
            }

            v21 = *(v20 + 16);
            if (v21 >> 60 == 3)
            {
              break;
            }

            ++v19;
            if (v12 == v5)
            {
              goto LABEL_39;
            }
          }

          v22 = (v21 & 0xFFFFFFFFFFFFFFFLL);
          v24 = v22[2];
          v23 = v22[3];
          v25 = v22[4];
          v80 = v22[5];
          v26 = v22[6];
          *&v81 = v23;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v82 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v18 = sub_1D69900B0(0, *(v18 + 2) + 1, 1, v18);
          }

          v29 = *(v18 + 2);
          v28 = *(v18 + 3);
          if (v29 >= v28 >> 1)
          {
            v18 = sub_1D69900B0((v28 > 1), v29 + 1, 1, v18);
          }

          *(v18 + 2) = v29 + 1;
          v30 = &v18[40 * v29];
          v31 = v81;
          *(v30 + 4) = v82;
          *(v30 + 5) = v31;
          v32 = v80;
          *(v30 + 6) = v25;
          *(v30 + 7) = v32;
          *(v30 + 8) = v26;
          v17 = MEMORY[0x1E69E7CC0];
        }

        while (v12 != v5);
      }

      else
      {
        v18 = MEMORY[0x1E69E7CC0];
      }

LABEL_39:
      v12 = *(v18 + 2);
      if (v12)
      {
        v88 = v17;
        sub_1D6997E90(0, v12, 0);
        v5 = v88;
        v34 = (v18 + 64);
        do
        {
          v35 = *(v34 - 3);
          v37 = *(v34 - 2);
          v36 = *(v34 - 1);
          v38 = *v34;
          v90 = *(v34 - 4);
          v91 = v35;
          v92 = v37;
          v93 = v36;
          v94 = v38;

          sub_1D6869CF0(v84, &v95);

          v39 = v95;
          v40 = v96;
          v41 = v97;
          v88 = v5;
          v43 = *(v5 + 2);
          v42 = *(v5 + 3);
          if (v43 >= v42 >> 1)
          {
            v81 = v96;
            v82 = v95;
            sub_1D6997E90((v42 > 1), v43 + 1, 1);
            v40 = v81;
            v39 = v82;
            v5 = v88;
          }

          *(v5 + 2) = v43 + 1;
          v44 = &v5[40 * v43];
          *(v44 + 2) = v39;
          *(v44 + 3) = v40;
          v44[64] = v41;
          v34 += 5;
          --v12;
        }

        while (v12);
      }

      else
      {

        v5 = MEMORY[0x1E69E7CC0];
      }

      v45 = 0;
      v46 = *(v5 + 2);
      v47 = MEMORY[0x1E69E7CC0];
LABEL_47:
      v48 = &v5[40 * v45];
      while (v46 != v45)
      {
        if (v45 >= *(v5 + 2))
        {
          __break(1u);
          goto LABEL_67;
        }

        ++v45;
        v49 = (v48 + 40);
        v50 = v48[64];
        v48 += 40;
        if (v50 != 255)
        {
          v12 = *(v49 - 1);
          v51 = *v49;
          v52 = v49[1];
          v53 = v49[2];
          sub_1D5EEA888(v12, *v49, v52, v53, v50);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_1D699009C(0, *(v47 + 2) + 1, 1, v47);
          }

          v54 = v47;
          v55 = *(v47 + 2);
          v56 = v54;
          v57 = *(v54 + 3);
          if (v55 >= v57 >> 1)
          {
            v56 = sub_1D699009C((v57 > 1), v55 + 1, 1, v56);
          }

          *(v56 + 2) = v55 + 1;
          v58 = &v56[40 * v55];
          v47 = v56;
          *(v58 + 4) = v12;
          *(v58 + 5) = v51;
          *(v58 + 6) = v52;
          *(v58 + 7) = v53;
          v58[64] = v50;
          goto LABEL_47;
        }
      }

      v90 = 0;
      v91 = 0xE000000000000000;
      sub_1D7263D4C();
      v88 = v90;
      v89 = v91;
      MEMORY[0x1DA6F9910](0xD000000000000028, 0x80000001D73C1430);
      v59 = v79;
      swift_beginAccess();
      v60 = *(v59 + 16);
      v61 = *(v59 + 24);

      MEMORY[0x1DA6F9910](v60, v61);

      MEMORY[0x1DA6F9910](0xD000000000000012, 0x80000001D73C1460);
      v62 = *(v47 + 2);
      if (!v62)
      {

        v5 = MEMORY[0x1E69E7CC0];
LABEL_65:
        v90 = v5;
        sub_1D5B49D08(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1D5BB0AB8();
        v76 = sub_1D7261F3C();
        v78 = v77;

        MEMORY[0x1DA6F9910](v76, v78);

        return v88;
      }

      v87 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v62, 0);
      v63 = 0;
      *&v82 = *(v47 + 2);
      v5 = v87;
      v12 = (v47 + 64);
      *&v81 = v47;
      v80 = v62;
      while (v82 != v63)
      {
        if (v63 >= *(v47 + 2))
        {
          goto LABEL_70;
        }

        v65 = *(v12 - 32);
        v64 = *(v12 - 24);
        v66 = *(v12 - 16);
        v67 = *(v12 - 8);
        v68 = *v12;
        v85 = 0x65736143202D2020;
        v86 = 0xE900000000000020;
        v90 = v63;
        sub_1D5EEA888(v65, v64, v66, v67, v68);
        v69 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v69);

        MEMORY[0x1DA6F9910](8250, 0xE200000000000000);
        v90 = v65;
        v91 = v64;
        v92 = v66;
        v93 = v67;
        LOBYTE(v94) = v68;
        v70 = sub_1D69022E4();
        MEMORY[0x1DA6F9910](v70);

        sub_1D5EEA904(v65, v64, v66, v67, v68);
        v71 = v85;
        v72 = v86;
        v87 = v5;
        v74 = *(v5 + 2);
        v73 = *(v5 + 3);
        if (v74 >= v73 >> 1)
        {
          sub_1D5BFC364((v73 > 1), v74 + 1, 1);
          v5 = v87;
        }

        ++v63;
        *(v5 + 2) = v74 + 1;
        v75 = &v5[16 * v74];
        *(v75 + 4) = v71;
        *(v75 + 5) = v72;
        v12 += 40;
        v47 = v81;
        if (v80 == v63)
        {

          goto LABEL_65;
        }
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      ;
    }

    v9 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA6FB460](v9, v12);
        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v9 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v14 = *(v12 + 8 * v9 + 32);

        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      if (*(v14 + 16) >> 60 != 3)
      {
        break;
      }

      ++v9;
      if (v15 == i)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_15:
    sub_1D5EEAA7C(v9, type metadata accessor for FormatLayoutError);
  }

  v90 = 0;
  v91 = 0xE000000000000000;
  sub_1D726491C();
  sub_1D5EEAA7C(v5, type metadata accessor for FormatLayoutError);
  return v90;
}

uint64_t sub_1D5EE97A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5EE9810(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5EE80B8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5EE986C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v2 = v15;
    v4 = *(type metadata accessor for FeedItem(0) - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      sub_1D5EE9A04(v14);
      v7 = v14[0];
      v8 = v14[1];
      v15 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D5BFC364((v9 > 1), v10 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v5 += v6;
      --v1;
    }

    while (v1);
  }

  v14[0] = v2;
  sub_1D5B49D08(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v12 = sub_1D7261F3C();

  return v12;
}

uint64_t sub_1D5EE9A04@<X0>(void *a1@<X8>)
{
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x203A65707974202DLL, 0xE800000000000000);
  FeedItem.kind.getter(&v14);
  v2 = v14;
  v3 = v15;
  sub_1D609CBEC(v14, v15);
  sub_1D5BF6680(v2, v3);
  MEMORY[0x1DA6F9910](0x746E65646920200ALL, 0xEF203A7265696669);
  v4 = FeedItem.debugIdentifier.getter();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](0x656C74697420200ALL, 0xEA0000000000203ALL);
  v5 = FeedItem.debugTitle.getter();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 0x5D6C696E5BLL;
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v5, v7);

  MEMORY[0x1DA6F9910](0x746961727420200ALL, 0xEB00000000203A73);
  FeedItem.traits.getter(&v13);
  v14 = 91;
  v15 = 0xE100000000000000;
  sub_1D713AFE4();
  sub_1D5B49D08(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v8 = sub_1D7261F3C();
  v10 = v9;

  MEMORY[0x1DA6F9910](v8, v10);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v14, v15);

  v12 = v17;
  *a1 = v16;
  a1[1] = v12;
  return result;
}

uint64_t sub_1D5EE9C38(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  strcpy(v6, "File:\n    - ");
  sub_1D72585BC();
  sub_1D5EEA840(&qword_1EDF18AC0, MEMORY[0x1E6968FB0]);
  v3 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x3A726F7272450A0ALL, 0xEF202D202020200ALL);
  v4 = sub_1D5EE9EE4(a2);
  MEMORY[0x1DA6F9910](v4);

  return v6[0];
}

uint64_t sub_1D5EE9D54(uint64_t a1)
{
  v14 = 0;
  v15 = 0xE000000000000000;
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  do
  {
    sub_1D5B68374(v2, v12);
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1D7264BEC();
    if (v7)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
      v3 = v14 & 0xFFFFFFFFFFFFLL;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v15) & 0xF;
      }

      if (v3)
      {
        v4 = 46;
      }

      else
      {
        v4 = 0;
      }

      if (v3)
      {
        v5 = 0xE100000000000000;
      }

      else
      {
        v5 = 0xE000000000000000;
      }

      MEMORY[0x1DA6F9910](v4, v5);

      __swift_project_boxed_opaque_existential_1(v12, v13);
      v6 = sub_1D7264BCC();
      MEMORY[0x1DA6F9910](v6);
    }

    else
    {
      v10 = 91;
      v11 = 0xE100000000000000;
      v8 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v8);

      MEMORY[0x1DA6F9910](93, 0xE100000000000000);
    }

    MEMORY[0x1DA6F9910](v10, v11);

    __swift_destroy_boxed_opaque_existential_1(v12);
    v2 += 40;
    --v1;
  }

  while (v1);
  return v14;
}

unint64_t sub_1D5EE9EE4(uint64_t a1)
{
  v2 = sub_1D7263E2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v57 - v9;
  v11 = sub_1D7263E3C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = (&v57 - v19);
  (*(v12 + 16))(&v57 - v19, a1, v11, v18);
  v21 = (*(v12 + 88))(v20, v11);
  if (v21 == *MEMORY[0x1E69E6AF8])
  {
    (*(v12 + 96))(v20, v11);
    sub_1D5EEA608();
    (*(v3 + 32))(v10, v20 + *(v22 + 48), v2);
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_1D7263D4C();

    v23 = 0x80000001D73C12F0;
    v24 = 0xD000000000000014;
LABEL_5:
    v58 = v24;
    v59 = v23;
    v26 = sub_1D7264C5C();
    MEMORY[0x1DA6F9910](v26);

    MEMORY[0x1DA6F9910](544497952, 0xE400000000000000);
LABEL_6:
    v27 = sub_1D7263E0C();
    v28 = sub_1D5EE9D54(v27);
    v30 = v29;

    MEMORY[0x1DA6F9910](v28, v30);

    v31 = v58;
    v32 = v59;
    v33 = sub_1D5EEA6C4();
    v35 = v34;
    v58 = v31;
    v59 = v32;

    MEMORY[0x1DA6F9910](v33, v35);

    v36 = v58;
    (*(v3 + 8))(v10, v2);
    return v36;
  }

  if (v21 == *MEMORY[0x1E69E6B08])
  {
    (*(v12 + 96))(v20, v11);
    sub_1D5EEA608();
    (*(v3 + 32))(v10, v20 + *(v25 + 48), v2);
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_1D7263D4C();

    v23 = 0x80000001D73C12D0;
    v24 = 0xD000000000000018;
    goto LABEL_5;
  }

  if (v21 != *MEMORY[0x1E69E6AF0])
  {
    if (v21 != *MEMORY[0x1E69E6B00])
    {
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_1D7263D4C();

      v58 = 0x206E776F6E6B6E55;
      v59 = 0xEF0A3A726F727265;
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_1D726491C();
      v56 = *(v12 + 8);
      v56(v15, v11);
      MEMORY[0x1DA6F9910](v61[0], v61[1]);

      v36 = v58;
      v56(v20, v11);
      return v36;
    }

    (*(v12 + 96))(v20, v11);
    (*(v3 + 32))(v10, v20, v2);
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_1D7263D4C();

    v58 = 0xD000000000000012;
    v59 = 0x80000001D73C1310;
    goto LABEL_6;
  }

  (*(v12 + 96))(v20, v11);
  sub_1D5EEA7C0();
  v39 = *(v38 + 48);
  sub_1D5B63F14(v20, &v58);
  (*(v3 + 32))(v6, v20 + v39, v2);
  __swift_project_boxed_opaque_existential_1(&v58, v60);
  v40 = sub_1D7264BEC();
  if (v41)
  {
    v61[0] = 0;
    v61[1] = 0xE000000000000000;
    sub_1D7263D4C();

    strcpy(v61, "Missing key '");
    HIWORD(v61[1]) = -4864;
    __swift_project_boxed_opaque_existential_1(&v58, v60);
    v42 = sub_1D7264BCC();
    MEMORY[0x1DA6F9910](v42);

    v43 = 0x2074612027;
    v44 = 0xE500000000000000;
  }

  else
  {
    v45 = v40;
    v61[0] = 0;
    v61[1] = 0xE000000000000000;
    sub_1D7263D4C();

    strcpy(v61, "Missing index ");
    HIBYTE(v61[1]) = -18;
    v57 = v45;
    v46 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v46);

    v43 = 544106784;
    v44 = 0xE400000000000000;
  }

  MEMORY[0x1DA6F9910](v43, v44);
  v47 = sub_1D7263E0C();
  v48 = sub_1D5EE9D54(v47);
  v50 = v49;

  MEMORY[0x1DA6F9910](v48, v50);

  v51 = v61[0];
  v52 = v61[1];
  v53 = sub_1D5EEA6C4();
  v55 = v54;
  v61[0] = v51;
  v61[1] = v52;

  MEMORY[0x1DA6F9910](v53, v55);

  v36 = v61[0];
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(&v58);
  return v36;
}

void sub_1D5EEA608()
{
  if (!qword_1EC880A20)
  {
    sub_1D5EEA678();
    sub_1D7263E2C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC880A20);
    }
  }
}

unint64_t sub_1D5EEA678()
{
  result = qword_1EC880A28;
  if (!qword_1EC880A28)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC880A28);
  }

  return result;
}

uint64_t sub_1D5EEA6C4()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000018, 0x80000001D73C1330);
  v0 = sub_1D7263E1C();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0xD00000000000001ALL, 0x80000001D73C1350);
  sub_1D7263DEC();
  sub_1D5BFB8A8(0, &qword_1EDF194B0, &qword_1EDF3C5D0);
  v1 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v1);

  return 0;
}

void sub_1D5EEA7C0()
{
  if (!qword_1EC880A30)
  {
    sub_1D5B49474(255, &qword_1EDF01CC8);
    sub_1D7263E2C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC880A30);
    }
  }
}

uint64_t sub_1D5EEA840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5EEA888(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
  }

  else if (a5 == 2)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }

    sub_1D5BF2DDC(result, a2);
  }
}

uint64_t sub_1D5EEA904(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
  }

  else if (a5 == 2)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }

    sub_1D5BF6680(result, a2);
  }
}

uint64_t sub_1D5EEA980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D5EEA9E8()
{
  if (!qword_1EDF27C20[0])
  {
    sub_1D5B49474(255, &qword_1EDF3FA20);
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDF27C20);
    }
  }
}

uint64_t sub_1D5EEAA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D5EEAADC(void *a1)
{
  v2 = sub_1D725828C();
  v3 = sub_1D5EE763C(a1);
  v5 = v4;
  v51 = a1;
  v6 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D5B49474(0, &qword_1EC890C50);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v49, &v52);
    sub_1D5B49D08(0, &qword_1EC880A38, &type metadata for DebugFormatErrorModel.Item, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7273AE0;
    v8 = v54;
    v9 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    *(v7 + 32) = (*(v9 + 16))(v8, v9);
    *(v7 + 40) = v10;
    v11 = sub_1D69901E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1D69901E8((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[24 * v13];
    *(v14 + 4) = 0x7470697263736544;
    *(v14 + 5) = 0xEB000000006E6F69;
    *(v14 + 6) = v7;
    v15 = v54;
    v16 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    v17 = (*(v16 + 24))(v15, v16);
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D7273AE0;
      *(v21 + 32) = v19;
      *(v21 + 40) = v20;
      v23 = *(v11 + 2);
      v22 = *(v11 + 3);
      if (v23 >= v22 >> 1)
      {
        v48 = v21;
        v11 = sub_1D69901E8((v22 > 1), v23 + 1, 1, v11);
        v21 = v48;
      }

      *(v11 + 2) = v23 + 1;
      v24 = &v11[24 * v23];
      *(v24 + 4) = 1953392968;
      *(v24 + 5) = 0xE400000000000000;
      *(v24 + 6) = v21;
    }

    __swift_destroy_boxed_opaque_existential_1(&v52);
  }

  else
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    sub_1D5EEB05C(v49, &qword_1EC89C7A0, &qword_1EC890C50, &protocol descriptor for FormatError, sub_1D5BFB8A8);
    sub_1D5B49D08(0, &qword_1EC880A38, &type metadata for DebugFormatErrorModel.Item, MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7273AE0;
    v26 = [v2 localizedDescription];
    v27 = sub_1D726207C();
    v29 = v28;

    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    v11 = sub_1D69901E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v31 = *(v11 + 2);
    v30 = *(v11 + 3);
    if (v31 >= v30 >> 1)
    {
      v11 = sub_1D69901E8((v30 > 1), v31 + 1, 1, v11);
    }

    *(v11 + 2) = v31 + 1;
    v32 = &v11[24 * v31];
    *(v32 + 4) = 0x7470697263736544;
    *(v32 + 5) = 0xEB000000006E6F69;
    *(v32 + 6) = v25;
  }

  sub_1D5B49D08(0, &qword_1EC880A38, &type metadata for DebugFormatErrorModel.Item, MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D7273AE0;
  v34 = [v2 domain];
  v35 = sub_1D726207C();
  v37 = v36;

  v52 = v35;
  v53 = v37;
  MEMORY[0x1DA6F9910](10272, 0xE200000000000000);
  *&v49[0] = [v2 code];
  v38 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v38);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v39 = v53;
  *(v33 + 32) = v52;
  *(v33 + 40) = v39;
  v41 = *(v11 + 2);
  v40 = *(v11 + 3);
  if (v41 >= v40 >> 1)
  {
    v11 = sub_1D69901E8((v40 > 1), v41 + 1, 1, v11);
  }

  *(v11 + 2) = v41 + 1;
  v42 = &v11[24 * v41];
  strcpy(v42 + 32, "Domain + Code");
  *(v42 + 23) = -4864;
  *(v42 + 6) = v33;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7273AE0;
  *(v43 + 32) = v3;
  *(v43 + 40) = v5;
  v45 = *(v11 + 2);
  v44 = *(v11 + 3);
  if (v45 >= v44 >> 1)
  {
    v11 = sub_1D69901E8((v44 > 1), v45 + 1, 1, v11);
  }

  *(v11 + 2) = v45 + 1;
  v46 = &v11[24 * v45];
  *(v46 + 4) = 1886221636;
  *(v46 + 5) = 0xE400000000000000;
  *(v46 + 6) = v43;
  return a1;
}

uint64_t sub_1D5EEB05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5EEB0BC(uint64_t a1, uint64_t a2)
{
  sub_1D5EE80B8(0, &qword_1EC880A08, MEMORY[0x1E69D64D8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D5EEB15C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v0 setFormatOptions_];
  qword_1EDFFCAA0 = v0;
  return result;
}

uint64_t sub_1D5EEB258()
{
  v1 = sub_1D70B5398();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D5EEB2C8()
{
  MEMORY[0x1DA6FD660](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t FeedLayoutCachePosition.description.getter()
{
  v2 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](46, 0xE100000000000000);
  v0 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v0);

  return v2;
}

uint64_t FeedLayoutCachePosition.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1DA6FC0B0](*v0);
  return MEMORY[0x1DA6FC0B0](v1);
}

uint64_t FeedLayoutCachePosition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  MEMORY[0x1DA6FC0B0](v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D5EEB484()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  MEMORY[0x1DA6FC0B0](v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D5EEB4E0()
{
  v1 = v0[1];
  MEMORY[0x1DA6FC0B0](*v0);
  return MEMORY[0x1DA6FC0B0](v1);
}

uint64_t sub_1D5EEB51C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  MEMORY[0x1DA6FC0B0](v2);
  return sub_1D7264A5C();
}

unint64_t sub_1D5EEB578()
{
  result = qword_1EC880A50;
  if (!qword_1EC880A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880A50);
  }

  return result;
}

uint64_t sub_1D5EEB60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1D725A3AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *v3;
  v14 = *v3 >> 61;
  if (v14 <= 1)
  {
    if (!v14)
    {
      v19 = v10;
      v20 = *(v13 + 208);
      v72 = *(v13 + 192);
      v73 = v20;
      v21 = *(v13 + 240);
      v74 = *(v13 + 224);
      v75 = v21;
      v22 = *(v13 + 144);
      v68 = *(v13 + 128);
      v69 = v22;
      v23 = *(v13 + 176);
      v70 = *(v13 + 160);
      v71 = v23;
      v24 = *(v13 + 80);
      v64 = *(v13 + 64);
      v65 = v24;
      v25 = *(v13 + 112);
      v66 = *(v13 + 96);
      v67 = v25;
      v26 = *(v13 + 32);
      v61 = *(v13 + 16);
      v62 = v26;
      v63 = *(v13 + 48);
      v27 = *(v13 + 224);
      v58 = *(v13 + 208);
      v59 = v27;
      v60 = *(v13 + 240);
      v28 = *(v13 + 160);
      v54 = *(v13 + 144);
      v55 = v28;
      v29 = *(v13 + 192);
      v56 = *(v13 + 176);
      v57 = v29;
      v30 = *(v13 + 96);
      v50 = *(v13 + 80);
      v51 = v30;
      v31 = *(v13 + 128);
      v52 = *(v13 + 112);
      v53 = v31;
      v32 = *(v13 + 32);
      v46 = *(v13 + 16);
      v47 = v32;
      v33 = *(v13 + 64);
      v48 = *(v13 + 48);
      v49 = v33;
      sub_1D5EEBE38(&v61, v45);
      sub_1D7259F1C();
      v35 = v34;
      type metadata accessor for GroupLayoutContext();
      sub_1D7259CAC();
      sub_1D683FDD0(a1, v12, a3, v35);
      (*(v8 + 8))(v12, v19);
      return sub_1D5EEBE94(&v61);
    }

    v42 = v13 & 0x1FFFFFFFFFFFFFFFLL;
    v43 = *(v42 + 16);
    v44 = *(v42 + 24);

    sub_1D6F7C9AC(a2, a1, v43, v44, &v61);
    sub_1D5EEB60C(a1, a2);
  }

  else
  {
    v15 = (v13 & 0x1FFFFFFFFFFFFFFFLL);
    if (v14 == 2)
    {
      v36 = v15[2];
      v37 = v15[3];

      v38 = sub_1D7259EBC();
      v39 = [v38 userInterfaceStyle];

      if (v39 != 2)
      {
        *&v61 = v36;

        sub_1D5EEB60C(a1, a2);
      }

      *&v61 = v37;

      sub_1D5EEB60C(a1, a2);
    }

    else
    {
      if (v14 == 3)
      {
        v16 = v15[3];
        v17 = v15[4];
        *&v61 = v15[2];
        *(&v61 + 1) = v16;
        *&v62 = v17;

        sub_1D7157B7C(a1, a2, a3);
      }

      v40 = v15[2];
      v41 = v15[3];

      sub_1D5F9FE98(v40, v41, &v61);
      *&v46 = v61;
      sub_1D5EEB60C(a1, a2);
    }
  }
}

uint64_t static FormatVideoNodeContent.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 61 != 2)
      {
        goto LABEL_29;
      }

      v27 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      v28 = *(v27 + 16);
      v29 = *(v27 + 24);
      v44[0] = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v43[0] = v28;
      *(&v43[0] + 1) = v29;

      if ((static FormatVideoNodeContent.== infix(_:_:)(v44, v43) & 1) == 0)
      {

        goto LABEL_29;
      }

      v30 = static FormatVideoNodeContent.== infix(_:_:)(v44 + 8, v43 + 8);

      if ((v30 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v4 == 3)
      {
        if (v3 >> 61 == 3)
        {
          v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v8 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
          v9 = v8[4];
          v10 = v5 == v8[2] && v6 == v8[3];
          if (v10 || (sub_1D72646CC() & 1) != 0)
          {

            v11 = sub_1D6341C50(v7, v9);

            if (v11)
            {
              goto LABEL_22;
            }
          }
        }

        goto LABEL_29;
      }

      if (v3 >> 61 != 4)
      {
        goto LABEL_29;
      }

      v31 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v32 = *(v31 + 24);
      v34 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      *&v44[0] = *(v31 + 16);
      *(&v44[0] + 1) = v32;
      *&v43[0] = v34;
      *(&v43[0] + 1) = v33;

      if ((static FormatVideoNodeContent.== infix(_:_:)(v44, v43) & 1) == 0)
      {

        goto LABEL_29;
      }

      v35 = sub_1D6350F1C(v32, v33);

      swift_bridgeObjectRelease_n();
      if ((v35 & 1) == 0)
      {
LABEL_29:
        v26 = 0;
        return v26 & 1;
      }
    }

LABEL_22:
    v26 = 1;
    return v26 & 1;
  }

  if (v4)
  {
    if (v3 >> 61 == 1)
    {
      v36 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v37 = *(v36 + 16);
      v38 = *(v36 + 24);
      v39 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      v40 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v41 = *(v39 + 24);

      if (sub_1D6350F34(v37, v40))
      {
        *&v44[0] = v38;
        *&v43[0] = v41;
        v26 = static FormatVideoNodeContent.== infix(_:_:)(v44, v43);

        return v26 & 1;
      }
    }

    goto LABEL_29;
  }

  if (v3 >> 61)
  {
    goto LABEL_29;
  }

  v12 = *(v3 + 224);
  v43[12] = *(v3 + 208);
  v43[13] = v12;
  v43[14] = *(v3 + 240);
  v13 = *(v3 + 160);
  v43[8] = *(v3 + 144);
  v43[9] = v13;
  v14 = *(v3 + 192);
  v43[10] = *(v3 + 176);
  v43[11] = v14;
  v15 = *(v3 + 96);
  v43[4] = *(v3 + 80);
  v43[5] = v15;
  v16 = *(v3 + 128);
  v43[6] = *(v3 + 112);
  v43[7] = v16;
  v17 = *(v3 + 32);
  v43[0] = *(v3 + 16);
  v43[1] = v17;
  v18 = *(v3 + 64);
  v43[2] = *(v3 + 48);
  v43[3] = v18;
  v19 = *(v2 + 224);
  v44[12] = *(v2 + 208);
  v44[13] = v19;
  v44[14] = *(v2 + 240);
  v20 = *(v2 + 160);
  v44[8] = *(v2 + 144);
  v44[9] = v20;
  v21 = *(v2 + 192);
  v44[10] = *(v2 + 176);
  v44[11] = v21;
  v22 = *(v2 + 96);
  v44[4] = *(v2 + 80);
  v44[5] = v22;
  v23 = *(v2 + 128);
  v44[6] = *(v2 + 112);
  v44[7] = v23;
  v24 = *(v2 + 32);
  v44[0] = *(v2 + 16);
  v44[1] = v24;
  v25 = *(v2 + 64);
  v44[2] = *(v2 + 48);
  v44[3] = v25;

  v26 = _s8NewsFeed17FormatRemoteVideoV2eeoiySbAC_ACtFZ_0(v44, v43);

  return v26 & 1;
}

unint64_t sub_1D5EEBDF4(uint64_t a1)
{
  result = sub_1D5B57AA8();
  *(a1 + 8) = result;
  return result;
}

uint64_t FormatBindingImageExpressionLogic.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5EEBF78()
{
  result = qword_1EC880A58;
  if (!qword_1EC880A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880A58);
  }

  return result;
}

unint64_t sub_1D5EEBFCC(uint64_t a1)
{
  result = sub_1D5EEBFF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EEBFF4()
{
  result = qword_1EC880A60;
  if (!qword_1EC880A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880A60);
  }

  return result;
}

unint64_t sub_1D5EEC048(void *a1)
{
  a1[1] = sub_1D5EEC080();
  a1[2] = sub_1D5EEC0D4();
  result = sub_1D5EEBF78();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EEC080()
{
  result = qword_1EDF1E698;
  if (!qword_1EDF1E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E698);
  }

  return result;
}

unint64_t sub_1D5EEC0D4()
{
  result = qword_1EDF07E90;
  if (!qword_1EDF07E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07E90);
  }

  return result;
}

uint64_t FormatProperty.resolveOptions(pool:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if ((~v4 & 0xF000000000000007) != 0)
  {
    sub_1D5EECA14();
    v9 = (type metadata accessor for FormatOption() - 8);
    v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v11 = (v8 + v10);
    *v11 = v2;
    v11[1] = v3;
    v11[2] = v4;
    v11[3] = 1;
    v12 = v9[9];
    v13 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v13 - 8) + 56))(v8 + v10 + v12, 1, 1, v13);
  }

  else
  {
    v5 = *(a1 + 88);
    if (!*(v5 + 16) || (v6 = sub_1D5B69D90(v2, v3), (v7 & 1) == 0))
    {
      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v8 = *(*(v5 + 56) + (v6 << 6) + 48);
  }

LABEL_8:
  sub_1D5CFCFAC(v4);
  return v8;
}

uint64_t FormatProperty.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatProperty.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatProperty.init(identifier:value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

uint64_t sub_1D5EEC328()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D5EEC364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_1D5EEC444(uint64_t a1)
{
  v2 = sub_1D5EECB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5EEC480(uint64_t a1)
{
  v2 = sub_1D5EECB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProperty.encode(to:)(void *a1)
{
  sub_1D5EECBAC(0, &qword_1EDF027D0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EECB04();
  sub_1D7264B5C();
  v16 = 0;
  v9 = v13;
  sub_1D72643FC();
  if (!v9)
  {
    v14 = v12;
    v15 = 1;
    sub_1D5CFCFAC(v12);
    sub_1D5EECB58();
    sub_1D726443C();
    sub_1D5C84FF4(v14);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatProperty.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5EECBAC(0, &qword_1EDF3C658, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EECB04();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_1D5EECC10();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  sub_1D5CFCFAC(v15);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_1D5C84FF4(v15);
}

uint64_t sub_1D5EEC8D4(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 48);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      return 0;
    }

    v5 = *v3;
    if (*(v3 - 2) == 0xD000000000000014 && 0x80000001D73C1570 == *(v3 - 1))
    {
      break;
    }

    v3 += 3;
  }

  while ((sub_1D72646CC() & 1) == 0);
  if ((~v5 & 0xF000000000000007) == 0 || (v5 & 0xF000000000000000) != 0x5000000000000000)
  {
    return 0;
  }

  v9 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v11 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

  sub_1D5CFCFAC(v5);
  sub_1D5CFCFAC(v5);

  v12 = sub_1D5FA1BF4(a2, v9, v10, v11);
  sub_1D5C84FF4(v5);

  sub_1D5C84FF4(v5);

  return v12;
}

void sub_1D5EECA14()
{
  if (!qword_1EDF19910)
  {
    type metadata accessor for FormatOption();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19910);
    }
  }
}

uint64_t _s8NewsFeed14FormatPropertyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = 0, (sub_1D72646CC() & 1) != 0))
  {
    v7 = v3;
    v8 = v2;
    sub_1D5CFCFAC(v2);
    sub_1D5CFCFAC(v3);
    v5 = _s8NewsFeed19FormatPropertyValueO2eeoiySbAC_ACtFZ_0(&v8, &v7);
    sub_1D5C84FF4(v7);
    sub_1D5C84FF4(v8);
  }

  return v5 & 1;
}

unint64_t sub_1D5EECB04()
{
  result = qword_1EDF415B0;
  if (!qword_1EDF415B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF415B0);
  }

  return result;
}

unint64_t sub_1D5EECB58()
{
  result = qword_1EDF0F9E0;
  if (!qword_1EDF0F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F9E0);
  }

  return result;
}

void sub_1D5EECBAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5EECB04();
    v7 = a3(a1, &type metadata for FormatProperty.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5EECC10()
{
  result = qword_1EDF40200;
  if (!qword_1EDF40200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40200);
  }

  return result;
}

unint64_t sub_1D5EECC64(void *a1)
{
  a1[1] = sub_1D5B59CD8();
  a1[2] = sub_1D5B59D2C();
  result = sub_1D5EECC9C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EECC9C()
{
  result = qword_1EC880A68;
  if (!qword_1EC880A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880A68);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed19FormatPropertyValueO(void *a1)
{
  v1 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v2 = v1 ^ 0x7E;
  v3 = 128 - v1;
  if (v2 >= 0x72)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D5EECD38()
{
  result = qword_1EC880A70;
  if (!qword_1EC880A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880A70);
  }

  return result;
}

unint64_t sub_1D5EECD90()
{
  result = qword_1EDF415A0;
  if (!qword_1EDF415A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF415A0);
  }

  return result;
}

unint64_t sub_1D5EECDE8()
{
  result = qword_1EDF415A8;
  if (!qword_1EDF415A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF415A8);
  }

  return result;
}

uint64_t sub_1D5EECE54(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1D5CBA0FC(v14[0], v14[1]))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_1D5CBA110(*v11, v13);
    sub_1D5FEB840(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t FeedTag.identifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t FeedTag.Overrides.Image.init(assetHandle:aspectRatio:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = sub_1D5C169F4();
  result = sub_1D5EECFF8();
  *a4 = a1;
  *(a4 + 32) = result;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3 & 1;
  return result;
}

unint64_t sub_1D5EECFF8()
{
  result = qword_1EDF1AB60[0];
  if (!qword_1EDF1AB60[0])
  {
    sub_1D5C169F4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF1AB60);
  }

  return result;
}

uint64_t FeedTag.Overrides.name.getter()
{
  v1 = *v0;

  return v1;
}

__n128 FeedTag.Overrides.init(name:coverImage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v4 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v4;
  result = *(a3 + 32);
  *(a4 + 48) = result;
  *(a4 + 64) = *(a3 + 48);
  return result;
}

void FeedTag.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t FeedTag.accessoryText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FeedTag.name.getter()
{
  sub_1D5EED200(v0 + 80, &v5, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
  v1 = v6;
  if (v6 == 1)
  {
    sub_1D5EED48C(&v5, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
LABEL_4:
    v3 = [*(v0 + 16) name];
    v2 = sub_1D726207C();

    return v2;
  }

  v2 = v5;

  sub_1D5EED280(&v5);
  if (!v1)
  {
    goto LABEL_4;
  }

  return v2;
}

uint64_t sub_1D5EED200(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5EF039C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double FeedTag.coverImage.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D5EED200(v1 + 80, v10, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
  if (v10[1] == 1)
  {
    v3 = &qword_1EDF13058;
    v4 = &type metadata for FeedTag.Overrides;
    v5 = v10;
  }

  else
  {
    sub_1D5EED200(&v11, v12, &unk_1EC880A80, &type metadata for FeedTag.Overrides.Image);
    sub_1D5EED280(v10);
    if (v13)
    {
      sub_1D5B68374(v12, &v14);
      sub_1D5EED4FC(v12);
      sub_1D5B63F14(&v14, a1);
      return result;
    }

    v3 = &unk_1EC880A80;
    v4 = &type metadata for FeedTag.Overrides.Image;
    v5 = v12;
  }

  sub_1D5EED48C(v5, v3, v4);
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v7 = *(v1 + 16);
  v8 = [v7 coverImageAssetHandle];
  if (v8 || (v8 = [v7 feedNavImageAssetHandle]) != 0)
  {
    v9 = v8;
    *(a1 + 24) = sub_1D5C169F4();
    *(a1 + 32) = sub_1D5EECFF8();
    *a1 = v9;
    if (!*(&v15 + 1))
    {
      return result;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    if (!*(&v15 + 1))
    {
      return result;
    }
  }

  sub_1D5EED418(&v14);
  return result;
}

uint64_t sub_1D5EED418(uint64_t a1)
{
  sub_1D5BFB8A8(0, &qword_1EDF3B6B0, &qword_1EDF3B6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5EED48C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5EF039C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FeedTag.coverImageAspectRatio.getter()
{
  sub_1D5EED200(v0 + 80, v6, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
  if (v6[1] == 1)
  {
    v1 = &qword_1EDF13058;
    v2 = &type metadata for FeedTag.Overrides;
    v3 = v6;
  }

  else
  {
    sub_1D5EED200(&v7, v8, &unk_1EC880A80, &type metadata for FeedTag.Overrides.Image);
    sub_1D5EED280(v6);
    if (v9)
    {
      v4 = v10;
      sub_1D5EED4FC(v8);
      return v4;
    }

    v1 = &unk_1EC880A80;
    v2 = &type metadata for FeedTag.Overrides.Image;
    v3 = v8;
  }

  sub_1D5EED48C(v3, v1, v2);
  return 0;
}

__n128 FeedTag.init(identifier:tag:badge:accessoryText:tagTraits:overrides:additionalContextMenuOptions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *a4;
  v11 = *a7;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v10;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  v12 = *(a8 + 48);
  *(a9 + 112) = *(a8 + 32);
  *(a9 + 128) = v12;
  *(a9 + 144) = *(a8 + 64);
  result = *(a8 + 16);
  *(a9 + 80) = *a8;
  *(a9 + 96) = result;
  *(a9 + 64) = v11;
  *(a9 + 72) = a10;
  return result;
}

uint64_t FeedTag.copy(contextMenuOptions:)@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  v8 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  sub_1D5EED200((v1 + 10), a1 + 80, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
  v10 = v1[9];

  swift_unknownObjectRetain();

  result = sub_1D5D5FCB8(v11, v10, sub_1D5FEA2A4);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = v9;
  *(a1 + 72) = result;
  return result;
}

void FeedTag.dragItem.getter(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 16) identifier];
  if (!v3)
  {
    sub_1D726207C();
    v3 = sub_1D726203C();
  }

  v4 = [objc_opt_self() nss:v3 NewsURLForTagID:?];

  if (v4)
  {
    sub_1D726220C();
    v5 = sub_1D726323C();

    FeedTag.name.getter();
    sub_1D725F83C();
    if (v5)
    {
    }

    v6 = sub_1D725F84C();
    v7 = *(*(v6 - 8) + 56);

    v7(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

double FeedTag.kind.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D727F020;
  return result;
}

void sub_1D5EED92C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

double sub_1D5EED940@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D727F020;
  return result;
}

uint64_t sub_1D5EED950()
{
  v1 = [*(v0 + 16) identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedTag.debugIdentifier.getter()
{
  v1 = [*(v0 + 16) identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t sub_1D5EEDA0C()
{
  v1 = [*(v0 + 16) name];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedTag.debugTitle.getter()
{
  v1 = [*(v0 + 16) name];
  v2 = sub_1D726207C();

  return v2;
}

id FeedTag.debugAssetHandle.getter()
{
  v1 = *(v0 + 16);
  result = [v1 feedNavImageAssetHandle];
  if (!result)
  {
    v3 = [v1 asSports];
    if (v3 && (v4 = [v3 sportsTheme], swift_unknownObjectRelease(), v4) && (v5 = objc_msgSend(v4, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), v5))
    {
      return v5;
    }

    else
    {
      result = [v1 asSports];
      if (result)
      {
        v6 = [result sportsTheme];
        swift_unknownObjectRelease();
        if (v6)
        {
          v7 = [v6 sportsLogoImageCompactAssetHandle];
          swift_unknownObjectRelease();
          return v7;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

char *sub_1D5EEDC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ([v3 hasRecipes])
  {
    v8 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1D5B858EC((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[16 * v10];
    *(v11 + 4) = 0x2D7361682D676174;
    *(v11 + 5) = 0xEF73657069636572;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1DA6F9910](0x2D64692D676174, 0xE700000000000000);
  v171 = v3;
  v12 = [v3 identifier];
  v13 = sub_1D726207C();
  v15 = v14;

  MEMORY[0x1DA6F9910](v13, v15);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1D5B858EC(0, *(v8 + 2) + 1, 1, v8);
  }

  v17 = *(v8 + 2);
  v16 = *(v8 + 3);
  if (v17 >= v16 >> 1)
  {
    v8 = sub_1D5B858EC((v16 > 1), v17 + 1, 1, v8);
  }

  *(v8 + 2) = v17 + 1;
  v18 = &v8[16 * v17];
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  v173 = v8;
  if (FCTagProviding.isTopic.getter(a3))
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0x657079742D676174, 0xEE006369706F742DLL);
    v20 = *(v8 + 2);
    v19 = *(v8 + 3);
    if (v20 >= v19 >> 1)
    {
      v8 = sub_1D5B858EC((v19 > 1), v20 + 1, 1, v8);
    }

    *(v8 + 2) = v20 + 1;
    v21 = &v8[16 * v20];
    *(v21 + 4) = a1;
    *(v21 + 5) = a2;
    v173 = v8;
  }

  v22 = [v4 asChannel];
  v172 = a1;
  if (v22)
  {
    v23 = v22;
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73C1890);
    v24 = a1;
    v26 = *(v8 + 2);
    v25 = *(v8 + 3);
    if (v26 >= v25 >> 1)
    {
      v8 = sub_1D5B858EC((v25 > 1), v26 + 1, 1, v8);
    }

    *(v8 + 2) = v26 + 1;
    v27 = &v8[16 * v26];
    *(v27 + 4) = v24;
    *(v27 + 5) = a2;
    sub_1D7263D4C();

    a1 = v172;
    MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73C18B0);
    v28 = [v23 supportsNotifications];
    v29 = v28 == 0;
    if (v28)
    {
      v30 = 0xD000000000000016;
    }

    else
    {
      v30 = 0xD000000000000017;
    }

    if (v29)
    {
      v31 = "tag-type-channel-";
    }

    else
    {
      v31 = "disallows-notifications";
    }

    MEMORY[0x1DA6F9910](v30, v31 | 0x8000000000000000);

    v33 = *(v8 + 2);
    v32 = *(v8 + 3);
    if (v33 >= v32 >> 1)
    {
      v8 = sub_1D5B858EC((v32 > 1), v33 + 1, 1, v8);
    }

    swift_unknownObjectRelease();
    *(v8 + 2) = v33 + 1;
    v34 = &v8[16 * v33];
    *(v34 + 4) = v172;
    *(v34 + 5) = a2;
    v173 = v8;
  }

  v35 = v171;
  if (FCTagProviding.isSection.getter(a3))
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73C1870);
    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    if (v37 >= v36 >> 1)
    {
      v8 = sub_1D5B858EC((v36 > 1), v37 + 1, 1, v8);
    }

    *(v8 + 2) = v37 + 1;
    v38 = &v8[16 * v37];
    *(v38 + 4) = a1;
    *(v38 + 5) = a2;
    v173 = v8;
  }

  if ([v171 isLocal])
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0x657079742D676174, 0xEE006C61636F6C2DLL);
    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    if (v40 >= v39 >> 1)
    {
      v8 = sub_1D5B858EC((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v40 + 1;
    v41 = &v8[16 * v40];
    *(v41 + 4) = a1;
    *(v41 + 5) = a2;
    v173 = v8;
  }

  if ([v171 isNewspaper])
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000012, 0x80000001D73C1850);
    v43 = *(v8 + 2);
    v42 = *(v8 + 3);
    if (v43 >= v42 >> 1)
    {
      v8 = sub_1D5B858EC((v42 > 1), v43 + 1, 1, v8);
    }

    *(v8 + 2) = v43 + 1;
    v44 = &v8[16 * v43];
    *(v44 + 4) = a1;
    *(v44 + 5) = a2;
    v173 = v8;
  }

  if ([v171 isMagazine])
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73C1830);
    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    if (v46 >= v45 >> 1)
    {
      v8 = sub_1D5B858EC((v45 > 1), v46 + 1, 1, v8);
    }

    *(v8 + 2) = v46 + 1;
    v47 = &v8[16 * v46];
    *(v47 + 4) = a1;
    *(v47 + 5) = a2;
    v173 = v8;
  }

  if ([v171 isMySports])
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000012, 0x80000001D73C1810);
    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    if (v49 >= v48 >> 1)
    {
      v8 = sub_1D5B858EC((v48 > 1), v49 + 1, 1, v8);
    }

    *(v8 + 2) = v49 + 1;
    v50 = &v8[16 * v49];
    *(v50 + 4) = a1;
    *(v50 + 5) = a2;
    v173 = v8;
  }

  if ([v171 isSportsEvent])
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000015, 0x80000001D73C17F0);
    v52 = *(v8 + 2);
    v51 = *(v8 + 3);
    if (v52 >= v51 >> 1)
    {
      v8 = sub_1D5B858EC((v51 > 1), v52 + 1, 1, v8);
    }

    *(v8 + 2) = v52 + 1;
    v53 = &v8[16 * v52];
    *(v53 + 4) = a1;
    *(v53 + 5) = a2;
    v173 = v8;
  }

  if ([v171 isPuzzleHub])
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C17D0);
    v55 = *(v8 + 2);
    v54 = *(v8 + 3);
    if (v55 >= v54 >> 1)
    {
      v8 = sub_1D5B858EC((v54 > 1), v55 + 1, 1, v8);
    }

    *(v8 + 2) = v55 + 1;
    v56 = &v8[16 * v55];
    *(v56 + 4) = a1;
    *(v56 + 5) = a2;
    v173 = v8;
  }

  if ([v171 isFoodHub])
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73C17B0);
    v58 = *(v8 + 2);
    v57 = *(v8 + 3);
    if (v58 >= v57 >> 1)
    {
      v8 = sub_1D5B858EC((v57 > 1), v58 + 1, 1, v8);
    }

    *(v8 + 2) = v58 + 1;
    v59 = &v8[16 * v58];
    *(v59 + 4) = a1;
    *(v59 + 5) = a2;
    v173 = v8;
  }

  if ([v171 isFoodTopic])
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C1790);
    v61 = *(v8 + 2);
    v60 = *(v8 + 3);
    if (v61 >= v60 >> 1)
    {
      v8 = sub_1D5B858EC((v60 > 1), v61 + 1, 1, v8);
    }

    *(v8 + 2) = v61 + 1;
    v62 = &v8[16 * v61];
    *(v62 + 4) = a1;
    *(v62 + 5) = a2;
    v173 = v8;
  }

  if ([v171 isRecipeCatalog])
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000017, 0x80000001D73C1770);
    v64 = *(v8 + 2);
    v63 = *(v8 + 3);
    if (v64 >= v63 >> 1)
    {
      v8 = sub_1D5B858EC((v63 > 1), v64 + 1, 1, v8);
    }

    *(v8 + 2) = v64 + 1;
    v65 = &v8[16 * v64];
    *(v65 + 4) = a1;
    *(v65 + 5) = a2;
    v173 = v8;
  }

  v66 = [v171 asSports];
  if (v66)
  {
    v170 = v66;
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0x657079742D676174, 0xEF7374726F70732DLL);
    v68 = *(v8 + 2);
    v67 = *(v8 + 3);
    if (v68 >= v67 >> 1)
    {
      v8 = sub_1D5B858EC((v67 > 1), v68 + 1, 1, v8);
    }

    *(v8 + 2) = v68 + 1;
    v69 = &v8[16 * v68];
    *(v69 + 4) = a1;
    *(v69 + 5) = a2;
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73C1690);
    v70 = FCSportsType.description.getter([v170 sportsType]);
    MEMORY[0x1DA6F9910](v70);

    v72 = *(v8 + 2);
    v71 = *(v8 + 3);
    if (v72 >= v71 >> 1)
    {
      v8 = sub_1D5B858EC((v71 > 1), v72 + 1, 1, v8);
    }

    *(v8 + 2) = v72 + 1;
    v73 = &v8[16 * v72];
    *(v73 + 4) = a1;
    *(v73 + 5) = a2;
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000017, 0x80000001D73C16B0);
    v74 = [v170 sportsLeagueType];
    if (v74 > 1)
    {
      if (v74 == 2)
      {
        v75 = 0xE700000000000000;
        v76 = 0x6567656C6C6F63;
LABEL_79:
        MEMORY[0x1DA6F9910](v76, v75);

        v78 = *(v8 + 2);
        v77 = *(v8 + 3);
        if (v78 >= v77 >> 1)
        {
          v8 = sub_1D5B858EC((v77 > 1), v78 + 1, 1, v8);
        }

        *(v8 + 2) = v78 + 1;
        v79 = &v8[16 * v78];
        *(v79 + 4) = a1;
        *(v79 + 5) = a2;
        v173 = v8;
        v80 = v170;
        v81 = [v170 sportsParentTagIdentifiers];
        if (v81)
        {
          v82 = v81;
          v83 = sub_1D726267C();

          v84 = v83;
          v85 = *(v83 + 16);
          if (v85)
          {
            v169 = v84;
            v86 = (v84 + 40);
            do
            {
              v87 = *(v86 - 1);
              v88 = *v86;

              sub_1D7263D4C();

              MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73C1750);
              MEMORY[0x1DA6F9910](v87, v88);

              v90 = *(v8 + 2);
              v89 = *(v8 + 3);
              if (v90 >= v89 >> 1)
              {
                v8 = sub_1D5B858EC((v89 > 1), v90 + 1, 1, v8);
              }

              *(v8 + 2) = v90 + 1;
              v91 = &v8[16 * v90];
              *(v91 + 4) = v172;
              *(v91 + 5) = a2;
              v86 += 2;
              --v85;
            }

            while (v85);

            v173 = v8;
            v80 = v170;
            v35 = v171;
            a1 = v172;
          }

          else
          {
          }
        }

        v92 = [v80 sportsTheme];
        if (v92)
        {
          v93 = v92;
          v94 = [v92 sportsPrimaryColor];
          if (v94)
          {

            sub_1D7263D4C();

            MEMORY[0x1DA6F9910](0xD00000000000001CLL, 0x80000001D73C1730);
            v96 = *(v8 + 2);
            v95 = *(v8 + 3);
            if (v96 >= v95 >> 1)
            {
              v8 = sub_1D5B858EC((v95 > 1), v96 + 1, 1, v8);
            }

            *(v8 + 2) = v96 + 1;
            v97 = &v8[16 * v96];
            *(v97 + 4) = a1;
            *(v97 + 5) = a2;
            v173 = v8;
          }

          v98 = [v93 sportsSecondaryColor];
          if (v98)
          {

            sub_1D7263D4C();

            MEMORY[0x1DA6F9910](0xD00000000000001ELL, 0x80000001D73C1710);
            v100 = *(v8 + 2);
            v99 = *(v8 + 3);
            if (v100 >= v99 >> 1)
            {
              v8 = sub_1D5B858EC((v99 > 1), v100 + 1, 1, v8);
            }

            *(v8 + 2) = v100 + 1;
            v101 = &v8[16 * v100];
            *(v101 + 4) = a1;
            *(v101 + 5) = a2;
            v173 = v8;
          }

          v102 = [v93 sportsEventNavigationForegroundColor];
          if (v102)
          {

            sub_1D7263D4C();

            MEMORY[0x1DA6F9910](0xD000000000000030, 0x80000001D73C16D0);
            v104 = *(v8 + 2);
            v103 = *(v8 + 3);
            if (v104 >= v103 >> 1)
            {
              v8 = sub_1D5B858EC((v103 > 1), v104 + 1, 1, v8);
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            *(v8 + 2) = v104 + 1;
            v105 = &v8[16 * v104];
            *(v105 + 4) = a1;
            *(v105 + 5) = a2;
            v173 = v8;
            goto LABEL_105;
          }

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        goto LABEL_105;
      }

      if (v74 == 3)
      {
        v75 = 0xE800000000000000;
        v76 = 0x6C616E6F6974616ELL;
        goto LABEL_79;
      }
    }

    else if (v74 == 1)
    {
      v75 = 0xEC0000006C616E6FLL;
      v76 = 0x69737365666F7270;
      goto LABEL_79;
    }

    v75 = 0xE700000000000000;
    v76 = 0x6E776F6E6B6E75;
    goto LABEL_79;
  }

LABEL_105:
  if ([v35 hideAccessoryText])
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0xD000000000000017, 0x80000001D73C1670);
    v107 = *(v8 + 2);
    v106 = *(v8 + 3);
    if (v107 >= v106 >> 1)
    {
      v8 = sub_1D5B858EC((v106 > 1), v107 + 1, 1, v8);
    }

    v108 = &off_1E84D3000;
    *(v8 + 2) = v107 + 1;
    v109 = &v8[16 * v107];
    *(v109 + 4) = a1;
    *(v109 + 5) = a2;
    v173 = v8;
  }

  else
  {
    v108 = &off_1E84D3000;
  }

  if ([v35 v108[459]])
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](0x2D7361682D676174, 0xEF73657069636572);
    v111 = *(v8 + 2);
    v110 = *(v8 + 3);
    if (v111 >= v110 >> 1)
    {
      v8 = sub_1D5B858EC((v110 > 1), v111 + 1, 1, v8);
    }

    *(v8 + 2) = v111 + 1;
    v112 = &v8[16 * v111];
    *(v112 + 4) = a1;
    *(v112 + 5) = a2;
    v173 = v8;
  }

  v113 = [v35 theme];
  if (v113)
  {
    v114 = [v113 defaultHeadlineTemplate];
    swift_unknownObjectRelease();
    if (v114)
    {
      v115 = [v114 headlineTitleTextInfo];

      if (v115)
      {
        v116 = [v115 font];

        if (v116)
        {
          v117 = [v116 fontName];

          if (v117)
          {
            v118 = sub_1D726207C();
            v120 = v119;

            v121 = HIBYTE(v120) & 0xF;
            if ((v120 & 0x2000000000000000) == 0)
            {
              v121 = v118 & 0xFFFFFFFFFFFFLL;
            }

            if (v121)
            {
              sub_1D7263D4C();

              MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73C1650);
              v123 = *(v8 + 2);
              v122 = *(v8 + 3);
              v35 = v171;
              if (v123 >= v122 >> 1)
              {
                v8 = sub_1D5B858EC((v122 > 1), v123 + 1, 1, v8);
              }

              *(v8 + 2) = v123 + 1;
              v124 = &v8[16 * v123];
              *(v124 + 4) = v172;
              *(v124 + 5) = a2;
              v173 = v8;
            }

            else
            {
              v35 = v171;
            }
          }
        }
      }
    }
  }

  v125 = [v35 theme];
  if (v125)
  {
    v126 = [v125 defaultHeadlineTemplate];
    swift_unknownObjectRelease();
    if (v126)
    {
      v127 = [v126 headlineExcerptTextInfo];

      if (v127)
      {
        v128 = [v127 font];

        if (v128)
        {
          v129 = [v128 fontName];

          if (v129)
          {
            v130 = sub_1D726207C();
            v132 = v131;

            v133 = HIBYTE(v132) & 0xF;
            if ((v132 & 0x2000000000000000) == 0)
            {
              v133 = v130 & 0xFFFFFFFFFFFFLL;
            }

            if (v133)
            {
              sub_1D7263D4C();

              MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73C1630);
              v135 = *(v8 + 2);
              v134 = *(v8 + 3);
              v35 = v171;
              if (v135 >= v134 >> 1)
              {
                v8 = sub_1D5B858EC((v134 > 1), v135 + 1, 1, v8);
              }

              *(v8 + 2) = v135 + 1;
              v136 = &v8[16 * v135];
              *(v136 + 4) = v172;
              *(v136 + 5) = a2;
              v173 = v8;
            }

            else
            {
              v35 = v171;
            }
          }
        }
      }
    }
  }

  v137 = [v35 theme];
  if (v137)
  {
    v138 = [v137 defaultHeadlineTemplate];
    swift_unknownObjectRelease();
    if (v138)
    {
      v139 = [v138 headlineBylineTextInfo];

      if (v139)
      {
        v140 = [v139 font];

        if (v140)
        {
          v141 = [v140 fontName];

          if (v141)
          {
            v142 = sub_1D726207C();
            v144 = v143;

            v145 = HIBYTE(v144) & 0xF;
            if ((v144 & 0x2000000000000000) == 0)
            {
              v145 = v142 & 0xFFFFFFFFFFFFLL;
            }

            if (v145)
            {
              sub_1D7263D4C();

              MEMORY[0x1DA6F9910](0xD00000000000001CLL, 0x80000001D73C1610);
              v147 = *(v8 + 2);
              v146 = *(v8 + 3);
              v35 = v171;
              if (v147 >= v146 >> 1)
              {
                v8 = sub_1D5B858EC((v146 > 1), v147 + 1, 1, v8);
              }

              *(v8 + 2) = v147 + 1;
              v148 = &v8[16 * v147];
              *(v148 + 4) = v172;
              *(v148 + 5) = a2;
              v173 = v8;
            }

            else
            {
              v35 = v171;
            }
          }
        }
      }
    }
  }

  v149 = [v35 theme];
  if (v149)
  {
    v150 = v149;
    v151 = [v149 backgroundColor];
    if (v151)
    {

      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](0xD000000000000018, 0x80000001D73C15F0);
      v153 = *(v8 + 2);
      v152 = *(v8 + 3);
      if (v153 >= v152 >> 1)
      {
        v8 = sub_1D5B858EC((v152 > 1), v153 + 1, 1, v8);
      }

      *(v8 + 2) = v153 + 1;
      v154 = &v8[16 * v153];
      *(v154 + 4) = v172;
      *(v154 + 5) = a2;
      v173 = v8;
    }

    v155 = [v150 foregroundColor];
    if (v155)
    {

      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](0xD000000000000018, 0x80000001D73C15D0);
      v157 = *(v8 + 2);
      v156 = *(v8 + 3);
      if (v157 >= v156 >> 1)
      {
        v8 = sub_1D5B858EC((v156 > 1), v157 + 1, 1, v8);
      }

      *(v8 + 2) = v157 + 1;
      v158 = &v8[16 * v157];
      *(v158 + 4) = v172;
      *(v158 + 5) = a2;
      v173 = v8;
    }

    v159 = [v150 feedBackgroundColor];
    if (v159)
    {

      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73C15B0);
      v161 = *(v8 + 2);
      v160 = *(v8 + 3);
      if (v161 >= v160 >> 1)
      {
        v8 = sub_1D5B858EC((v160 > 1), v161 + 1, 1, v8);
      }

      *(v8 + 2) = v161 + 1;
      v162 = &v8[16 * v161];
      *(v162 + 4) = v172;
      *(v162 + 5) = a2;
      v173 = v8;
    }

    v163 = [v150 feedControlColor];
    if (v163)
    {

      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](0xD00000000000001ALL, 0x80000001D73C1590);
      v165 = *(v8 + 2);
      v164 = *(v8 + 3);
      if (v165 >= v164 >> 1)
      {
        v8 = sub_1D5B858EC((v164 > 1), v165 + 1, 1, v8);
      }

      swift_unknownObjectRelease();
      *(v8 + 2) = v165 + 1;
      v166 = &v8[16 * v165];
      *(v166 + 4) = v172;
      *(v166 + 5) = a2;
      v173 = v8;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v167 = sub_1D6F1DB14(v172, a2, v35);
  sub_1D5D55274(v167);
  return v173;
}