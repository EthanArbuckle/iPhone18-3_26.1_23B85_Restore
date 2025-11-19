uint64_t sub_1D6141EF8@<X0>(_BYTE *a1@<X8>)
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
  v8 = type metadata accessor for A12_V2.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v44);
  sub_1D5B68374(v12 + 56, v43);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v44, v15 + 16);
  sub_1D5B63F14(v43, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v42[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v42, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v15 + 16);
  __swift_destroy_boxed_opaque_existential_1(v15 + 56);
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v43);
  sub_1D5B68374(v16 + 56, v42);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v43, v18 + 16);
  sub_1D5B63F14(v42, v18 + 56);
  *(v18 + 96) = v17;
  v41[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v41, v44);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v18 + 16);
  __swift_destroy_boxed_opaque_existential_1(v18 + 56);
  v19 = sub_1D6F50B74(v44, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v44[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v44[0];
  v40[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D6144F50, v40);

  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v36);
  v38 = v22;
  v39 = v2;
  sub_1D614505C(0, &qword_1EC8842D8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v36 = sub_1D725A4CC();
  sub_1D725A4DC();
  v25 = v45;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D5BD48FC();
  v26 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v34 = v44[1];
  v35 = v44[0];
  *&v44[0] = v22;
  *&v43[0] = v25;
  MEMORY[0x1EEE9AC00](v26, v27);

  v28 = sub_1D725C00C();

  v29 = v37;
  *v37 = 0;
  v30 = v35;
  *(v29 + 24) = v34;
  *(v29 + 8) = v30;
  *&v44[0] = v28;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v31 = sub_1D72623BC();

  v33 = MEMORY[0x1E69E7CC0];
  *(v29 + 5) = v31;
  *(v29 + 6) = v33;
  return result;
}

uint64_t sub_1D6142444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6142514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D614505C(0, &qword_1EC8842F8, MEMORY[0x1E69D7150]);
  sub_1D6145018(&qword_1EC884300, &qword_1EC8842F8, v13);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6142704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = sub_1D725994C();
  v11 = swift_allocBox();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69D6F50], v10);
  *v9 = v11;
  v13 = *(v6 + 104);
  v13(v9, *MEMORY[0x1E69D73C0], v5);
  v14 = MEMORY[0x1E69D6F38];
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v14);
  sub_1D7259A9C();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v21 = a1;
  v13(v9, *MEMORY[0x1E69D7460], v5);
  v19 = v17;
  v20 = v18;
  sub_1D72599EC();
  return (v15)(v9, v5);
}

uint64_t sub_1D614298C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a3;
  v27 = a2;
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v26 - v8);
  v35 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v29 = *MEMORY[0x1E69D7490];
  v28 = *(v6 + 104);
  v28(v9);
  sub_1D61450E8();
  sub_1D6145614(0, &qword_1EC884320, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D70D8]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7273AE0;
  v16 = v15 + v14;
  sub_1D5ED83AC();
  v18 = (v16 + *(v17 + 48));
  v19 = *MEMORY[0x1E69D7238];
  v20 = sub_1D725A0DC();
  (*(*(v20 - 8) + 104))(v16, v19, v20);
  *v18 = 0x6C6F437468676972;
  v18[1] = 0xEB000000006E6D75;
  (*(v13 + 104))(v16, *MEMORY[0x1E69D7020], v12);
  v21 = v27;
  v34 = v27;
  v22 = MEMORY[0x1E69D6F38];
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v22);
  sub_1D7259A2C();

  v23 = *(v6 + 8);
  v23(v9, v5);
  v35 = v30;
  v24 = swift_allocObject();
  *(v24 + 16) = 6;
  *v9 = v24;
  (v28)(v9, v29, v5);
  v32 = v21;
  v33 = v31;
  sub_1D7259A2C();
  return (v23)(v9, v5);
}

uint64_t sub_1D6142DA8(uint64_t a1, uint64_t a2)
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
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
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
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D614337C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v103 = a2;
  v120 = a1;
  v109 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v109, v5);
  v105 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = (&v87 - v12);
  v126 = a1;
  v14 = *MEMORY[0x1E69D74A8];
  v15 = v9 + 104;
  v119 = *(v9 + 104);
  v119(&v87 - v12, v14, v8, v11);
  sub_1D61450E8();
  v118 = v16;
  sub_1D6145614(0, &qword_1EC884320, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D70D8]);
  v18 = v17;
  v117 = v17;
  v19 = *(*(v17 - 8) + 72);
  v20 = *(v17 - 8);
  v114 = *(v20 + 80);
  v113 = ((v114 + 32) & ~v114) + v19;
  v21 = (v114 + 32) & ~v114;
  v115 = v21;
  v22 = swift_allocObject();
  v111 = xmmword_1D7273AE0;
  *(v22 + 16) = xmmword_1D7273AE0;
  v23 = *MEMORY[0x1E69D7098];
  v24 = *(v20 + 104);
  v116 = v20 + 104;
  v112 = v24;
  v24(v22 + v21, v23, v18);
  v125 = a2;
  v25 = MEMORY[0x1E69D6F38];
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  v27 = v26;
  v86 = sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v25);
  sub_1D72599EC();

  v28 = *(v9 + 8);
  v28(v13, v8);
  v29 = v120;
  v126 = v120;
  v30 = sub_1D725994C();
  v31 = swift_allocBox();
  v32 = *(v30 - 8);
  v33 = *(v32 + 104);
  v99 = *MEMORY[0x1E69D6F50];
  v100 = v30;
  v98 = v33;
  v97 = v32 + 104;
  v33(v34);
  *v13 = v31;
  v95 = *MEMORY[0x1E69D73C0];
  v35 = v119;
  (v119)(v13);
  v108 = v27;
  v107 = v86;
  sub_1D7259A9C();
  v110 = v9 + 8;
  v106 = v28;
  v28(v13, v8);
  v126 = v29;
  KeyPath = swift_getKeyPath();
  sub_1D60DF7C0();
  v37 = v36;
  v38 = swift_allocBox();
  v40 = v39;
  v96 = v37;
  v41 = *(v37 + 48);
  *v39 = 2;
  v42 = *MEMORY[0x1E69D7348];
  v43 = sub_1D725A34C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 104);
  v124 = v42;
  v122 = v44 + 104;
  v123 = v44;
  v121 = v45;
  v45(&v40[v41], v42, v43);
  *v13 = v38;
  v46 = *MEMORY[0x1E69D73E0];
  v47 = *MEMORY[0x1E69D73E0];
  v101 = v8;
  v102 = v15;
  v35(v13, v47, v8);
  v48 = v103;
  v49 = swift_allocObject();
  *(v49 + 16) = v111;
  v50 = v104 + *(type metadata accessor for A12_V2.Bound() + 24);
  v51 = *(v50 + *(type metadata accessor for GroupLayoutContext() + 32)) * 135.0;
  v52 = v115;
  *(v49 + v115) = v51;
  v53 = *MEMORY[0x1E69D70D0];
  result = v112(v49 + v52, *MEMORY[0x1E69D70D0], v117);
  if (*(v48 + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v104 = *(v48 + 16);
    v55 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v56 = v48 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v57 = *(v55 + 72);
    LODWORD(v103) = v53;
    v89 = v57;
    v58 = 3 * v57;
    v93 = v46;
    v59 = v109;
    v60 = *(v109 + 20);
    v61 = v105;
    v121(&v105[v60], v124, v43);
    v62 = *(v123 + 56);
    v123 += 56;
    v91 = v62;
    v62(&v61[v60], 0, 1, v43);
    v63 = *MEMORY[0x1E69DDC70];
    *v61 = 0;
    *&v61[*(v59 + 24)] = 0;
    *&v61[*(v59 + 28)] = v63;
    v64 = *MEMORY[0x1E69DDCE0];
    v65 = *(MEMORY[0x1E69DDCE0] + 8);
    v66 = *(MEMORY[0x1E69DDCE0] + 16);
    v67 = *(MEMORY[0x1E69DDCE0] + 24);
    v88 = v63;
    v90 = v56;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v56 + v58, v61, v64, v65, v66, v67);
    sub_1D5BE780C(v61, type metadata accessor for HeadlineViewLayout.Options);
    v87 = sub_1D5BE8850();
    v92 = v43;
    v68 = v101;
    sub_1D7259A4C();

    v69 = v106;
    v106(v13, v68);
    v70 = v120;
    v126 = v120;
    v71 = v100;
    v72 = swift_allocBox();
    v98(v73, v99, v71);
    *v13 = v72;
    v74 = v119;
    (v119)(v13, v95, v68);
    sub_1D7259A9C();
    v69(v13, v68);
    v126 = v70;
    swift_getKeyPath();
    v75 = v96;
    v76 = swift_allocBox();
    v77 = *(v75 + 48);
    *v78 = 2;
    v79 = v92;
    (v121)(v78 + v77, v124);
    *v13 = v76;
    (v74)(v13, v93, v68);
    v80 = swift_allocObject();
    *(v80 + 16) = v111;
    v81 = v115;
    *(v80 + v115) = v51;
    result = v112(v80 + v81, v103, v117);
    if (v104 != 4)
    {
      v82 = v90 + 4 * v89;
      v83 = v109;
      v84 = *(v109 + 20);
      v85 = v105;
      v121(&v105[v84], v124, v79);
      v91(&v85[v84], 0, 1, v79);
      *v85 = 0;
      *&v85[*(v83 + 24)] = 0;
      *&v85[*(v83 + 28)] = v88;
      _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v82, v85, v64, v65, v66, v67);
      sub_1D5BE780C(v85, type metadata accessor for HeadlineViewLayout.Options);
      sub_1D7259A4C();

      return (v106)(v13, v68);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6143E4C(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 3;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v13);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 3;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D61440F0(uint64_t a1, uint64_t a2)
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
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
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
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D61446C4(uint64_t a1, uint64_t a2)
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
  sub_1D6145614(0, &qword_1EC8842F0, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D74B0]);
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
  sub_1D614505C(0, &qword_1EC884308, MEMORY[0x1E69D6F38]);
  sub_1D6145018(&qword_1EC884310, &qword_1EC884308, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6144C98@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
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
  v16 = a4 + *(type metadata accessor for A12_V2.Bound() + 24);
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

unint64_t sub_1D6144DAC(uint64_t a1)
{
  *(a1 + 8) = sub_1D6144DDC();
  result = sub_1D6144E30();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6144DDC()
{
  result = qword_1EC8842A8;
  if (!qword_1EC8842A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8842A8);
  }

  return result;
}

unint64_t sub_1D6144E30()
{
  result = qword_1EC8842B0;
  if (!qword_1EC8842B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8842B0);
  }

  return result;
}

uint64_t type metadata accessor for A12_V2.Bound()
{
  result = qword_1EC8842C0;
  if (!qword_1EC8842C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6144EF8(uint64_t a1)
{
  result = sub_1D614567C(&qword_1EC8842D0, type metadata accessor for A12_V2.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6144F60()
{
  result = qword_1EC8842E0;
  if (!qword_1EC8842E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8842E0);
  }

  return result;
}

unint64_t sub_1D6144FB4()
{
  result = qword_1EC8842E8;
  if (!qword_1EC8842E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8842E8);
  }

  return result;
}

uint64_t sub_1D6145018(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D614505C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D614505C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V2.Layout;
    v8[1] = &type metadata for A12_V2.Layout.Attributes;
    v8[2] = sub_1D6144F60();
    v8[3] = sub_1D6144FB4();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D61450E8()
{
  if (!qword_1EC884318)
  {
    sub_1D6145614(255, &qword_1EC884320, sub_1D6144F60, &type metadata for A12_V2.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884318);
    }
  }
}

unint64_t sub_1D61451C4()
{
  result = qword_1EC884328;
  if (!qword_1EC884328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884328);
  }

  return result;
}

unint64_t sub_1D614521C()
{
  result = qword_1EC884330;
  if (!qword_1EC884330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884330);
  }

  return result;
}

unint64_t sub_1D6145274()
{
  result = qword_1EC884338;
  if (!qword_1EC884338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884338);
  }

  return result;
}

unint64_t sub_1D61452CC()
{
  result = qword_1EC884340;
  if (!qword_1EC884340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884340);
  }

  return result;
}

uint64_t sub_1D6145320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6145614(0, &qword_1EC884348, sub_1D61455C0, &type metadata for A12_V2.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61455C0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D614567C(&qword_1EDF1A740, type metadata accessor for CGRect);
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

unint64_t sub_1D61455C0()
{
  result = qword_1EC884350;
  if (!qword_1EC884350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884350);
  }

  return result;
}

void sub_1D6145614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D614567C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D61456D8()
{
  result = qword_1EC884360;
  if (!qword_1EC884360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884360);
  }

  return result;
}

unint64_t sub_1D6145730()
{
  result = qword_1EC884368;
  if (!qword_1EC884368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884368);
  }

  return result;
}

unint64_t sub_1D6145788()
{
  result = qword_1EC884370;
  if (!qword_1EC884370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884370);
  }

  return result;
}

void sub_1D614583C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider;
  swift_beginAccess();
  *(v3 + 8) = v2;
  swift_unknownObjectWeakAssign();
  sub_1D6145914();
}

uint64_t CoverIssueView.downloadButtonDataProvider.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_1D6145914();
  return swift_unknownObjectRelease();
}

void sub_1D6145914()
{
  v1 = v0;
  v2 = sub_1D725D07C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v0[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(v7 + 1);
    v10 = Strong;
    swift_getObjectType();
    sub_1D725EBCC();
    sub_1D725AE3C();

    sub_1D6145C80(v6, 0, v1);
    (*(v3 + 8))(v6, v2);
    sub_1D725EBCC();
    sub_1D5B5DA7C();
    v11 = sub_1D726308C();
    v12 = swift_allocObject();
    v12[2] = v1;
    v12[3] = v10;
    v12[4] = v9;
    v13 = v1;
    swift_unknownObjectRetain();
    sub_1D725AE5C();

    v14 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadStateDisposable;
    swift_beginAccess();
    sub_1D6147FE4(&v19, v13 + v14);
    swift_endAccess();
    sub_1D725EBDC();
    v15 = sub_1D726308C();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D725AE5C();
    swift_unknownObjectRelease();

    v16 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressDisposable;
    swift_beginAccess();
    sub_1D6147FE4(&v19, v13 + v16);
  }

  else
  {
    v17 = v1 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadStateDisposable;
    swift_beginAccess();
    if (*(v17 + 24))
    {
      sub_1D5B68374(v17, &v19);
      __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      sub_1D725A73C();
      __swift_destroy_boxed_opaque_existential_1(&v19);
    }

    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    swift_beginAccess();
    sub_1D6147FE4(&v19, v17);
  }

  swift_endAccess();
  sub_1D61460CC();
}

void sub_1D6145C80(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1D725D07C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6, v9);
  v12 = (*(v7 + 88))(v11, v6);
  if (v12 == *MEMORY[0x1E69D7780])
  {
    (*(v7 + 8))(v11, v6);
    v13 = *(a3 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar);
    swift_getObjectType();
    sub_1D725EBDC();
    sub_1D725AE3C();

    HIDWORD(v14) = HIDWORD(v17);
    *&v14 = v17;
    [v13 setProgress:0 animated:v14];
    [v13 setAlpha_];
    [v13 setHidden_];
    goto LABEL_7;
  }

  if (v12 == *MEMORY[0x1E69D7790])
  {
    (*(v7 + 8))(v11, v6);
    if ((a2 & 1) == 0)
    {
LABEL_7:
      sub_1D61460CC();
      return;
    }

LABEL_6:
    sub_1D6145F44();
    goto LABEL_7;
  }

  if (v12 == *MEMORY[0x1E69D7788])
  {
    v15 = *(a3 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar);
    [v15 setProgress:0 animated:0.0];
    [v15 setAlpha_];
    [v15 setHidden_];
    goto LABEL_7;
  }

  if (v12 == *MEMORY[0x1E69D7798])
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_1D726402C();
  __break(1u);
}

void sub_1D6145F44()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_1D6148114;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1D5B6B06C;
  v11 = &block_descriptor_25;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_1D6148134;
  v13 = v5;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1D5DF8CE4;
  v11 = &block_descriptor_13_0;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.2];
  _Block_release(v6);
  _Block_release(v3);
}

void sub_1D61460CC()
{
  v1 = v0;
  v2 = sub_1D725D07C();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([*&v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar] isHidden] & 1) == 0)
  {
    v16 = v3;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass_];
    sub_1D725811C();

    v11 = [v9 bundleForClass_];
    sub_1D725811C();

    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {

      v15 = sub_1D726203C();

      [v1 setTs:v15 accessibilityElementHelp:?];

      return;
    }

    swift_getObjectType();
    sub_1D725EBCC();
    sub_1D725AE3C();

    v12 = v16;
    v13 = (*(v16 + 88))(v7, v2);
    if (v13 == *MEMORY[0x1E69D7780])
    {

      (*(v12 + 8))(v7, v2);
      v14 = sub_1D726203C();
    }

    else
    {
      if (v13 == *MEMORY[0x1E69D7790])
      {

        (*(v12 + 8))(v7, v2);
      }

      else
      {
        if (v13 != *MEMORY[0x1E69D7788])
        {
          if (v13 != *MEMORY[0x1E69D7798])
          {
            sub_1D726402C();
            __break(1u);
            return;
          }

          [v1 setTs:0 accessibilityElementHelp:?];
          goto LABEL_15;
        }
      }

      v14 = sub_1D726203C();
    }

    [v1 setTs:v14 accessibilityElementHelp:?];

LABEL_15:
    swift_unknownObjectRelease();
    return;
  }

  [v1 setTs:0 accessibilityElementHelp:?];
}

void sub_1D6146528(double *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar);

    *&v5 = v1;
    [v4 setProgress:1 animated:v5];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1D61460CC();
  }
}

void (*CoverIssueView.downloadButtonDataProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D6146688;
}

void sub_1D6146688(uint64_t a1, char a2)
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
    sub_1D6145914();
  }

  free(v3);
}

id CoverIssueView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *CoverIssueView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_moreActionsButton;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for CoverViewActionButton()) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_followButton;
  *&v5[v12] = [objc_allocWithZone(type metadata accessor for CoverViewFollowSwitch()) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_titleLabel;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v14 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_issueCoverView;
  v15 = type metadata accessor for IssueCoverView();
  *&v5[v14] = [objc_allocWithZone(v15) initWithFrame_];
  v16 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_secondaryIssueCoverView;
  *&v5[v16] = [objc_allocWithZone(v15) initWithFrame_];
  v17 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_accessoryLabel;
  *&v5[v17] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v18 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar;
  *&v5[v18] = [objc_allocWithZone(sub_1D725CD8C()) initWithFrame_];
  v19 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_cloudIcon;
  *&v5[v19] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v20 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_selectionImageView;
  *&v5[v20] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v21 = &v5[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_onEditSelection];
  *v21 = 0;
  v21[1] = 0;
  v5[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_isEditSelected] = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = &v5[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadStateDisposable];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v23 = &v5[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressDisposable];
  sub_1D6147F80(0, &qword_1EDF3BDD8, type metadata accessor for DebugButton, MEMORY[0x1E69D63A0]);
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_debugButton] = sub_1D725A80C();
  v34.receiver = v5;
  v34.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_titleLabel;
  v26 = *&v24[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_titleLabel];
  v27 = v24;
  [v27 addSubview_];
  v28 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_secondaryIssueCoverView;
  [v27 addSubview_];
  v29 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_issueCoverView;
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [*&v24[v25] setLineBreakMode_];
  [*&v27[v29] setContentMode_];
  [*&v27[v29] setAccessibilityIgnoresInvertColors_];
  [*&v27[v28] setContentMode_];
  [*&v27[v28] setAccessibilityIgnoresInvertColors_];
  v30 = *MEMORY[0x1E69DDA38];
  v31 = [v27 accessibilityTraits];
  if ((v30 & ~v31) != 0)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  [v27 setAccessibilityTraits_];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D725A7FC();

  return v27;
}

id sub_1D6146C54@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for DebugButton()) initWithFrame_];
  *a1 = result;
  return result;
}

void sub_1D6146CA0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong addSubview_];
  }
}

id CoverIssueView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t CoverIssueView.accessibilityValue.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1D725D07C();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v28, sel_accessibilityValue, v5);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D726207C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v20 = 0;
    v21 = 0;
LABEL_13:
    sub_1D6147F80(0, &qword_1EDF195A0, sub_1D5B58D88, MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7270C10;
    *(v25 + 32) = v10;
    *(v25 + 40) = v12;
    *(v25 + 48) = v20;
    *(v25 + 56) = v21;
    v19 = sub_1D725CE4C();
    goto LABEL_14;
  }

  swift_getObjectType();
  sub_1D725EBCC();
  sub_1D725AE3C();

  v13 = (*(v3 + 88))(v7, v2);
  if (v13 == *MEMORY[0x1E69D7780])
  {

    (*(v3 + 8))(v7, v2);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    sub_1D725EBDC();
    sub_1D725AE3C();

    v17 = v27 * 100.0;
    v18 = MEMORY[0x1E69E6438];
    *(v16 + 56) = MEMORY[0x1E69E63B0];
    *(v16 + 64) = v18;
    *(v16 + 32) = v17;
    v19 = sub_1D72620BC();
    swift_unknownObjectRelease();
LABEL_14:

    return v19;
  }

  if (v13 == *MEMORY[0x1E69D7790])
  {
    (*(v3 + 8))(v7, v2);
LABEL_12:
    type metadata accessor for Localized();
    v22 = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v20 = sub_1D725811C();
    v21 = v24;
    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x1E69D7788] || v13 == *MEMORY[0x1E69D7798])
  {
    goto LABEL_12;
  }

  result = sub_1D726402C();
  __break(1u);
  return result;
}

void CoverIssueView.accessibilityValue.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_1D726203C();
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_setAccessibilityValue_, v5);
}

void (*CoverIssueView.accessibilityValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = swift_getObjectType();
  *v4 = CoverIssueView.accessibilityValue.getter();
  v4[1] = v5;
  return sub_1D61474FC;
}

void sub_1D61474FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_1D726203C();
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 16) = *(v2 + 48);
    objc_msgSendSuper2((v2 + 16), sel_setAccessibilityValue_, v4);
  }

  else
  {
    if (v3)
    {
      v5 = sub_1D726203C();
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 32) = *(v2 + 48);
    objc_msgSendSuper2((v2 + 32), sel_setAccessibilityValue_, v5);
  }

  free(v2);
}

id CoverIssueView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CoverIssueView.prepareForReuse()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  [v1 setAccessibilityLabel_];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_setAccessibilityValue_, 0);
  [v1 setTs:0 accessibilityElementHelp:?];
  v3 = &v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadStateDisposable];
  swift_beginAccess();
  if (*(v3 + 24))
  {
    sub_1D5B68374(v3, &v11);
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    sub_1D725A73C();
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  swift_beginAccess();
  sub_1D6147FE4(&v11, v3);
  swift_endAccess();
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressDisposable];
  swift_beginAccess();
  if (*(v4 + 24))
  {
    sub_1D5B68374(v4, &v11);
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    sub_1D725A73C();
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  swift_beginAccess();
  sub_1D6147FE4(&v11, v3);
  swift_endAccess();
  v5 = &v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_onEditSelection];
  v6 = *&v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_onEditSelection];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_1D5B74328(v6);
  sub_1D725A7CC();
  v7 = v11;
  if (v11)
  {
    v8 = sub_1D725F64C();
  }

  v9 = *(*&v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_followButton] + OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_onTap);

  v10 = *(*&v1[OBJC_IVAR____TtC8NewsFeed14CoverIssueView_moreActionsButton] + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_onTap);
}

Swift::Void __swiftcall CoverIssueView.setMultiSelectionEditing(_:selected:)(Swift::Bool _, Swift::Bool selected)
{
  if (_)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  if (_)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = 0.6;
  if (selected)
  {
    v5 = 1.0;
  }

  v6 = _;
  *(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_isEditSelected) = selected;
  v7 = *(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_issueCoverView);
  if (_)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_issueCoverView) layer];
  v10 = [v7 traitCollection];
  [v10 displayScale];
  v12 = v11;

  [v9 setRasterizationScale_];
  v13 = [v7 layer];
  [v13 setShouldRasterize_];

  v14 = *(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_secondaryIssueCoverView);
  v15 = [v14 layer];
  v16 = [v14 traitCollection];
  [v16 displayScale];
  v18 = v17;

  [v15 setRasterizationScale_];
  v19 = [v14 layer];
  [v19 setShouldRasterize_];

  [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_titleLabel) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_accessoryLabel) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_selectionImageView) setAlpha_];
  [v7 setAlpha_];
  [v14 setAlpha_];
  [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_followButton) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_moreActionsButton) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_cloudIcon) setAlpha_];
  v20 = *(v2 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_onEditSelection);
  if (v20)
  {

    v20(v2, selected);

    sub_1D5B74328(v20);
  }
}

void sub_1D6147CAC()
{
  sub_1D5BBB1FC(&qword_1EDF329B0);

  JUMPOUT(0x1DA6F6FC0);
}

void _s8NewsFeed14CoverIssueViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_moreActionsButton;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for CoverViewActionButton()) initWithFrame_];
  v2 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_followButton;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for CoverViewFollowSwitch()) initWithFrame_];
  v3 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_issueCoverView;
  v5 = type metadata accessor for IssueCoverView();
  *(v0 + v4) = [objc_allocWithZone(v5) initWithFrame_];
  v6 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_secondaryIssueCoverView;
  *(v0 + v6) = [objc_allocWithZone(v5) initWithFrame_];
  v7 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_accessoryLabel;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar;
  *(v0 + v8) = [objc_allocWithZone(sub_1D725CD8C()) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_cloudIcon;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8NewsFeed14CoverIssueView_selectionImageView;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v11 = (v0 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_onEditSelection);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_isEditSelected) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = v0 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadStateDisposable;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  v13 = v0 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressDisposable;
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  sub_1D726402C();
  __break(1u);
}

void sub_1D6147F80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6147FE4(uint64_t a1, uint64_t a2)
{
  sub_1D5BFB840(0, &qword_1EDF3BE98, &qword_1EDF3BEA0, MEMORY[0x1E69D6360], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6148074(uint64_t a1)
{
  sub_1D5BFB840(0, &qword_1EDF3BE98, &qword_1EDF3BEA0, MEMORY[0x1E69D6360], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D6148134()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadProgressBar);
  [v1 setHidden_];

  return [v1 setProgress:0 animated:0.0];
}

uint64_t SportsTaxonomyGraphLeafEntityNode.__allocating_init(tagId:umcId:isHidden:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = swift_allocObject();
  *(result + 56) = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  return result;
}

uint64_t SportsTaxonomyGraphLeafEntityNode.init(tagId:umcId:isHidden:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t sub_1D6148224(void *a1)
{
  v4[0] = *a1;
  type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
  swift_allocObject();

  sub_1D613DCC8(v4);
  v2 = swift_beginAccess();
  MEMORY[0x1DA6F9CE0](v2);
  if (*((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  return swift_endAccess();
}

uint64_t SportsTaxonomyGraphLeafEntityNode.deinit()
{

  return v0;
}

uint64_t SportsTaxonomyGraphLeafEntityNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *ImagePersistenceProvider.__allocating_init(imageCache:rendererEnvironment:layoutCollectionProvider:layoutProvider:layoutOptionsProvider:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  sub_1D5B63F14(a1, (v12 + 2));
  sub_1D5B63F14(a2, (v12 + 7));
  v12[12] = a3;
  v12[13] = a4;
  v12[14] = a5;
  v12[15] = a6;
  return v12;
}

Swift::Void __swiftcall ImagePersistenceProvider.persist()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v146 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v138 = &v107 - v4;
  v5 = v2[13];
  v141 = sub_1D725DDFC();
  v115 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v6);
  v137 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v110 = &v107 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v118 = &v107 - v13;
  v14 = v2[10];
  *&v15 = v2[12];
  *&v16 = v14;
  v139 = v3;
  *(&v16 + 1) = v3;
  v147 = v16;
  *(&v15 + 1) = v5;
  v151 = v15;
  v157 = v16;
  v158 = v15;
  v122 = sub_1D725E28C();
  v114 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v17);
  v121 = &v107 - v18;
  v129 = v14;
  v113 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v120 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v128 = &v107 - v24;
  v152 = sub_1D7258DBC();
  v112 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v25);
  v117 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v107 - v29;
  sub_1D6149BD4();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v150 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1D725EF6C();
  v111 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v34);
  v130 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v136 = &v107 - v38;
  v157 = v147;
  v158 = v151;
  v134 = sub_1D725D34C();
  v119 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v39);
  v148 = &v107 - v40;
  v153 = sub_1D725E9DC();
  v41 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v42);
  v44 = &v107 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D725D58C();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v47);
  v49 = &v107 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  sub_1D725E61C();
  sub_1D725F16C();
  sub_1D725D57C();
  sub_1D725D54C();
  sub_1D725D53C();
  v50 = sub_1D725E9BC();
  (*(v41 + 8))(v44, v153);
  if (v50)
  {
    v109 = v49;
    v153 = v46;
    v149 = v45;
    v142 = v1;
    *&v154 = v1[13];
    v157 = v147;
    v158 = v151;
    sub_1D725E48C();
    swift_getWitnessTable();
    v51 = v148;
    sub_1D725EBEC();
    v52 = v50;
    v145 = v50 & 0xFFFFFFFFFFFFFF8;
    if (v50 >> 62)
    {
      goto LABEL_47;
    }

    v53 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v54 = v149;
    v55 = v153;
    v56 = v134;
    if (v53)
    {
      v57 = 0;
      *&v151 = v52 & 0xC000000000000001;
      v143 = v52 + 32;
      v140 = (v112 + 1);
      v135 = v115 + 1;
      v133 = (v146 + 16);
      v132 = (v146 + 8);
      v131 = (v111 + 6);
      v127 = (v111 + 4);
      v126 = (v111 + 2);
      v125 = (v111 + 11);
      v124 = *MEMORY[0x1E69D8460];
      v108 = *MEMORY[0x1E69D8458];
      v123 = v111 + 1;
      v111 += 12;
      v112 += 4;
      v107 = (v115 + 2);
      v115 = (v114 + 1);
      v114 = (v113 + 2);
      ++v113;
      v146 = v52;
      *&v147 = v53;
      v116 = v30;
      do
      {
        if (v151)
        {
          v58 = v56;
          v59 = MEMORY[0x1DA6FB460](v57, v52);
          v60 = v152;
          v61 = __OFADD__(v57++, 1);
          if (v61)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v60 = v152;
          if (v57 >= *(v145 + 16))
          {
            goto LABEL_46;
          }

          v58 = v56;
          v59 = *(v143 + 8 * v57);
          v61 = __OFADD__(v57++, 1);
          if (v61)
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            v53 = sub_1D7263BFC();
            goto LABEL_4;
          }
        }

        v62 = [v59 representedElementCategory];
        if (v62)
        {
          if (v62 == 1)
          {
            sub_1D725C99C();
            v63 = v150;
            v64 = v144;
            if ((*v131)(v150, 1, v144) == 1)
            {

              sub_1D6149CC4(v63, sub_1D6149BD4);
              goto LABEL_38;
            }

            v72 = v136;
            (*v127)(v136, v63, v64);
            v73 = v130;
            (*v126)(v130, v72, v64);
            v74 = (*v125)(v73, v64);
            if (v74 == v124)
            {
              v75 = [v59 indexPath];
              sub_1D7258D6C();

              sub_1D7258DAC();
              (*v140)(v30, v60);
              v76 = v121;
              v58 = v134;
              v51 = v148;
              sub_1D725D36C();
              v77 = v128;
              v78 = v122;
              sub_1D725E24C();
              v79 = v76;
              v80 = v77;
              (*v115)(v79, v78);
              v81 = v129;
              *(&v158 + 1) = v129;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
              v83 = *v114;
              (*v114)(boxed_opaque_existential_1, v80, v81);
              sub_1D61497AC(&v157);
              __swift_destroy_boxed_opaque_existential_1(&v157);
              v83(v120, v80, v81);
              sub_1D5B49474(0, &qword_1EDF3B468);
              v84 = swift_dynamicCast();
              v52 = v146;
              if (v84)
              {
                sub_1D5B63F14(&v154, &v157);
                __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
                v85 = sub_1D725F56C();
                if (v85)
                {
                  v86 = *(v85 + 16);
                  if (v86)
                  {
                    v87 = (v85 + 32);
                    do
                    {
                      v88 = v87[3];
                      v89 = __swift_project_boxed_opaque_existential_1(v87, v88);
                      *(&v155 + 1) = v88;
                      v90 = __swift_allocate_boxed_opaque_existential_1(&v154);
                      (*(*(v88 - 8) + 16))(v90, v89, v88);
                      sub_1D61497AC(&v154);
                      __swift_destroy_boxed_opaque_existential_1(&v154);
                      v87 += 5;
                      --v86;
                    }

                    while (v86);
                  }

                  (*v113)(v128, v129);
                  goto LABEL_42;
                }

                (*v113)(v80, v129);
                (*v123)(v136, v144);
                __swift_destroy_boxed_opaque_existential_1(&v157);
              }

              else
              {

                (*v113)(v80, v81);
                (*v123)(v136, v144);
                v156 = 0;
                v154 = 0u;
                v155 = 0u;
                sub_1D5BFB774(&v154, &unk_1EDF16E58, &qword_1EDF3B468);
              }

              v30 = v116;
LABEL_38:
              v54 = v149;
              v56 = v58;
            }

            else
            {
              v91 = v134;
              v92 = v148;
              v52 = v146;
              if (v74 == v108)
              {
                v93 = v130;
                (*v111)(v130, v64);
                sub_1D6149C2C();
                v95 = v117;
                (*v112)(v117, &v93[*(v94 + 48)], v60);
                v96 = v118;
                sub_1D725D35C();
                v97 = v141;
                (*v107)(v110, v96, v141);
                sub_1D5B49474(0, &qword_1EDF3B468);
                v98 = v97;
                if (swift_dynamicCast())
                {
                  sub_1D5B63F14(&v154, &v157);
                  __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
                  v99 = sub_1D725F56C();
                  if (v99)
                  {
                    v100 = *(v99 + 16);
                    if (v100)
                    {
                      v101 = (v99 + 32);
                      do
                      {
                        v102 = v101[3];
                        v103 = __swift_project_boxed_opaque_existential_1(v101, v102);
                        *(&v155 + 1) = v102;
                        v104 = __swift_allocate_boxed_opaque_existential_1(&v154);
                        (*(*(v102 - 8) + 16))(v104, v103, v102);
                        sub_1D61497AC(&v154);
                        __swift_destroy_boxed_opaque_existential_1(&v154);
                        v101 += 5;
                        --v100;
                      }

                      while (v100);
                    }
                  }

                  else
                  {
                  }

                  (*v135)(v118, v141);
                  (*v140)(v117, v152);
LABEL_42:
                  (*v123)(v136, v144);
                  __swift_destroy_boxed_opaque_existential_1(&v157);
                  v30 = v116;
                  v56 = v134;
                  v51 = v148;
                  v54 = v149;
                  v52 = v146;
                }

                else
                {
                  v51 = v92;

                  (*v135)(v96, v98);
                  (*v140)(v95, v60);
                  (*v123)(v136, v144);
                  v156 = 0;
                  v154 = 0u;
                  v155 = 0u;
                  sub_1D5BFB774(&v154, &unk_1EDF16E58, &qword_1EDF3B468);
                  v30 = v116;
                  v54 = v149;
                  v56 = v134;
                }
              }

              else
              {

                v105 = v64;
                v106 = *v123;
                (*v123)(v136, v105);
                v106(v130, v105);
                v54 = v149;
                v56 = v91;
                v51 = v92;
              }
            }

            v53 = v147;
            goto LABEL_7;
          }

          v56 = v58;
        }

        else
        {
          v65 = [v59 indexPath];
          sub_1D7258D6C();

          v66 = v137;
          sub_1D725D35C();
          (*v140)(v30, v60);
          v67 = v138;
          v68 = v141;
          sub_1D725DDEC();
          (*v135)(v66, v68);
          v69 = v139;
          *(&v158 + 1) = v139;
          v70 = __swift_allocate_boxed_opaque_existential_1(&v157);
          (*v133)(v70, v67, v69);
          sub_1D61497AC(&v157);
          v53 = v147;
          v54 = v149;

          v56 = v58;
          v71 = v69;
          v52 = v146;
          v51 = v148;
          (*v132)(v67, v71);
          __swift_destroy_boxed_opaque_existential_1(&v157);
        }

LABEL_7:
        v55 = v153;
      }

      while (v57 != v53);
    }

    (*(v119 + 8))(v51, v56);
    (*(v55 + 8))(v109, v54);
  }

  else
  {
    (*(v46 + 8))(v49, v45);
  }
}

uint64_t sub_1D61497AC(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v33 = sub_1D725E23C();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ImageRequestOptions();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_1D725F1DC();
  sub_1D725E15C();
  v16 = v15;
  v17 = *(v3 + 8);
  v18 = v10;
  v19 = v33;
  v17(v18, v33);
  sub_1D725F1DC();
  v20 = sub_1D725E1AC();
  v17(v6, v19);
  v21 = *(v12 + 32);
  v22 = sub_1D725CB5C();
  v23 = &v35[v21];
  v24 = v35;
  (*(*(v22 - 8) + 56))(v23, 1, 1, v22);
  *v24 = v16;
  v24[1] = v20;
  sub_1D5B76B10(v34, v39);
  sub_1D5B49474(0, &qword_1EDF225F0);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(&v36, v40);
    v25 = v41;
    v26 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v27 = (*(v26 + 8))(v24, v25, v26);
    if (v27)
    {
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = v27 + 32;
        do
        {
          sub_1D5B68374(v29, &v36);
          __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
          __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
          sub_1D725EAEC();
          __swift_destroy_boxed_opaque_existential_1(&v36);
          sub_1D725D09C();

          v29 += 40;
          --v28;
        }

        while (v28);
      }

      v30 = v35;
    }

    else
    {
      v30 = v24;
    }

    sub_1D6149CC4(v30, type metadata accessor for ImageRequestOptions);
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_1D6149CC4(v24, type metadata accessor for ImageRequestOptions);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    return sub_1D5BFB774(&v36, &qword_1EDF225E8, &qword_1EDF225F0);
  }
}

uint64_t ImagePersistenceProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t ImagePersistenceProvider.__deallocating_deinit()
{
  ImagePersistenceProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_1D6149BD4()
{
  if (!qword_1EDF3B4B8)
  {
    sub_1D725EF6C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B4B8);
    }
  }
}

void sub_1D6149C2C()
{
  if (!qword_1EDF04798)
  {
    sub_1D7258DBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04798);
    }
  }
}

uint64_t sub_1D6149CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatLocalization.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatLocalization.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FormatLocalization.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatLocalization.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FormatLocalization.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatLocalization.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t _s8NewsFeed18FormatLocalizationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (v9 && (v3 == v10 && v6 == v9 || (sub_1D72646CC() & 1) != 0))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_16:

  return sub_1D634D194(v5, v11);
}

unint64_t sub_1D614A010(uint64_t a1)
{
  result = sub_1D5B55BC8();
  *(a1 + 8) = result;
  return result;
}

uint64_t PuzzleComponentMenuEvent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t PuzzleComponentMenuEvent.scriptEventDetail.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D5C0BFF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 25705;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  v4 = sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D614A228(inited + 32);
  return v4;
}

unint64_t sub_1D614A18C()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D5C0BFF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 25705;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  v4 = sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D614A228(inited + 32);
  return v4;
}

uint64_t sub_1D614A228(uint64_t a1)
{
  sub_1D5BE1388();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DebugNewsroomThemeData()
{
  result = qword_1EC8843F0;
  if (!qword_1EC8843F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D614A308()
{
  sub_1D5B49CBC(319, &qword_1EDF1ADE0);
  if (v0 <= 0x3F)
  {
    sub_1D5B49CBC(319, &qword_1EDF43BE0);
    if (v1 <= 0x3F)
    {
      sub_1D5B5BF24(319, &qword_1EC884400, sub_1D614A45C);
      if (v2 <= 0x3F)
      {
        sub_1D5B5BF24(319, &qword_1EC884408, sub_1D614A4B8);
        if (v3 <= 0x3F)
        {
          sub_1D5B5BF24(319, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D614A45C()
{
  if (!qword_1EDF05810)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05810);
    }
  }
}

void sub_1D614A4B8()
{
  if (!qword_1EC884410)
  {
    sub_1D72585BC();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884410);
    }
  }
}

char *sub_1D614A520()
{
  sub_1D5B5BF24(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v26 - v3;
  v5 = sub_1D725BD1C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 96);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v30 = v9;
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = (v7 + 48);
  v28 = v7;
  v29 = (v7 + 32);
  swift_bridgeObjectRetain_n();
  v16 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = v16;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v13 &= v13 - 1;

    sub_1D725BD4C();
    if ((*v15)(v4, 1, v5) == 1)
    {
      sub_1D5F40BCC(v4);
    }

    else
    {
      v18 = *v29;
      (*v29)(v30, v4, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1D69903D0(0, *(v31 + 2) + 1, 1, v31);
      }

      v20 = *(v31 + 2);
      v19 = *(v31 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v27 = v20 + 1;
        v24 = sub_1D69903D0(v19 > 1, v20 + 1, 1, v31);
        v21 = v27;
        v31 = v24;
      }

      v22 = v30;
      v23 = v31;
      *(v31 + 2) = v21;
      v18(&v23[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v20], v22, v5);
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      v32 = v31;

      sub_1D61FBD38(&v32);

      return v32;
    }

    v13 = *(v10 + 64 + 8 * v16);
    ++v17;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D614A854(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 25705;
    v5 = 1701667182;
    if (a1 != 2)
    {
      v5 = 0x4A6567616B636170;
    }

    if (a1)
    {
      v4 = 0x6465766968637261;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x655674736574616CLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0x4A6567616B636170;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D614A990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D614B930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D614A9B8(uint64_t a1)
{
  v2 = sub_1D614B418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D614A9F4(uint64_t a1)
{
  v2 = sub_1D614B418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D614AA30(void *a1)
{
  v3 = v1;
  sub_1D614B65C(0, &qword_1EC884440, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D614B418();
  sub_1D7264B5C();
  LOBYTE(v13) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1D726438C();
    LOBYTE(v13) = 2;
    sub_1D726437C();
    LOBYTE(v13) = 3;
    sub_1D726437C();
    LOBYTE(v13) = 4;
    sub_1D726437C();
    LOBYTE(v13) = 5;
    sub_1D726437C();
    v13 = *(v3 + 88);
    HIBYTE(v12) = 6;
    sub_1D614A45C();
    sub_1D614B6C0(&qword_1EC884448);
    sub_1D72643BC();
    v13 = *(v3 + 96);
    HIBYTE(v12) = 7;
    sub_1D614A4B8();
    sub_1D614B720();
    sub_1D72643BC();
    type metadata accessor for DebugNewsroomThemeData();
    LOBYTE(v13) = 8;
    sub_1D725BD1C();
    sub_1D614B7D0(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D614AD50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_1D5B5BF24(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v37 - v6;
  sub_1D614B65C(0, &qword_1EC884420, MEMORY[0x1E69E6F48]);
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v37 - v10;
  v12 = type metadata accessor for DebugNewsroomThemeData();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 56);
  v18 = sub_1D725BD1C();
  v19 = *(*(v18 - 8) + 56);
  v43 = v17;
  v20 = v15;
  v19(&v15[v17], 1, 1, v18);
  v21 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D614B418();
  v41 = v11;
  sub_1D7264B0C();
  if (v2)
  {
    v44 = v2;
    __swift_destroy_boxed_opaque_existential_1(v42);
    swift_bridgeObjectRelease_n();
LABEL_4:

    return sub_1D5F40BCC(v20 + v43);
  }

  v22 = v39;
  v23 = v40;
  LOBYTE(v46) = 0;
  v24 = v41;
  *v20 = sub_1D72642BC();
  *(v20 + 8) = v26;
  LOBYTE(v46) = 1;
  *(v20 + 16) = sub_1D726423C();
  LOBYTE(v46) = 2;
  *(v20 + 24) = sub_1D726422C();
  *(v20 + 32) = v27;
  LOBYTE(v46) = 3;
  v28 = sub_1D726422C();
  v30 = v29;
  *(v20 + 40) = v28;
  *(v20 + 48) = v29;
  LOBYTE(v46) = 4;
  *(v20 + 56) = sub_1D726422C();
  *(v20 + 64) = v31;
  v37[3] = v31;
  LOBYTE(v46) = 5;
  v32 = sub_1D726422C();
  v44 = 0;
  v37[1] = v33;
  v37[2] = v30;
  *(v20 + 72) = v32;
  *(v20 + 80) = v33;
  sub_1D614A45C();
  v45 = 6;
  sub_1D614B6C0(&qword_1EC884430);
  v34 = v44;
  sub_1D726427C();
  v44 = v34;
  if (v34)
  {
    (*(v22 + 8))(v24, v23);
    __swift_destroy_boxed_opaque_existential_1(v42);
LABEL_5:

    goto LABEL_4;
  }

  *(v20 + 88) = v46;
  sub_1D614A4B8();
  v45 = 7;
  sub_1D614B46C();
  v35 = v44;
  sub_1D726427C();
  v44 = v35;
  if (v35)
  {
    (*(v22 + 8))(v41, v23);
    __swift_destroy_boxed_opaque_existential_1(v42);
    goto LABEL_5;
  }

  *(v20 + 96) = v46;
  LOBYTE(v46) = 8;
  sub_1D614B7D0(&qword_1EDF43A48, MEMORY[0x1E69D6B38]);
  v36 = v44;
  sub_1D726427C();
  v44 = v36;
  if (v36)
  {
    (*(v22 + 8))(v41, v40);
    __swift_destroy_boxed_opaque_existential_1(v42);
    goto LABEL_5;
  }

  (*(v22 + 8))(v41, v40);
  sub_1D614B51C(v7, v20 + v43);
  sub_1D614B59C(v20, v38);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_1D614B600(v20);
}

uint64_t sub_1D614B394(uint64_t a1)
{
  *(a1 + 8) = sub_1D614B7D0(&qword_1EC884418, type metadata accessor for DebugNewsroomThemeData);
  result = sub_1D614B7D0(&qword_1EC882C78, type metadata accessor for DebugNewsroomThemeData);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D614B418()
{
  result = qword_1EC884428;
  if (!qword_1EC884428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884428);
  }

  return result;
}

unint64_t sub_1D614B46C()
{
  result = qword_1EC884438;
  if (!qword_1EC884438)
  {
    sub_1D614A4B8();
    sub_1D614B7D0(&unk_1EDF45B50, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884438);
  }

  return result;
}

uint64_t sub_1D614B51C(uint64_t a1, uint64_t a2)
{
  sub_1D5B5BF24(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D614B59C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugNewsroomThemeData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D614B600(uint64_t a1)
{
  v2 = type metadata accessor for DebugNewsroomThemeData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D614B65C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D614B418();
    v7 = a3(a1, &type metadata for DebugNewsroomThemeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D614B6C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D614A45C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D614B720()
{
  result = qword_1EC884450;
  if (!qword_1EC884450)
  {
    sub_1D614A4B8();
    sub_1D614B7D0(&unk_1EDF45B70, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884450);
  }

  return result;
}

uint64_t sub_1D614B7D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D614B82C()
{
  result = qword_1EC884458;
  if (!qword_1EC884458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884458);
  }

  return result;
}

unint64_t sub_1D614B884()
{
  result = qword_1EC884460;
  if (!qword_1EC884460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884460);
  }

  return result;
}

unint64_t sub_1D614B8DC()
{
  result = qword_1EC884468;
  if (!qword_1EC884468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884468);
  }

  return result;
}

uint64_t sub_1D614B930(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4A6567616B636170 && a2 == 0xEB000000006E6F73 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4A6567616B636170 && a2 == 0xED000064496E6F73 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4A6567616B636170 && a2 == 0xEE006C72556E6F73 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73CB7C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73CB7E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x655674736574616CLL && a2 == 0xED00006E6F697372)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void *FeedItemSorter.__allocating_init(sorter:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1D614CA04(a1, a2);

  return v4;
}

void *FeedItemSorter.init(sorter:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D614CA04(a1, a2);

  return v2;
}

uint64_t sub_1D614BCAC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = *(v3 + 80);

  swift_getTupleTypeMetadata2();
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  if (sub_1D726279C())
  {

    v7 = 0;
    v28 = v4;
    v25 = FunctionTypeMetadata2;
    while (1)
    {
      v8 = sub_1D726277C();
      result = sub_1D726271C();
      if ((v8 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_10;
      }

      v27 = v7 + 1;
      v10 = v28 + 16 * v7;
      v11 = swift_allocObject();
      v26 = *(v10 + 32);
      v12 = v26;
      *(v11 + 16) = v5;
      *(v11 + 24) = v12;
      v29 = a1;
      v13 = sub_1D72627FC();

      WitnessTable = swift_getWitnessTable();
      MEMORY[0x1DA6F9AD0](&v30, v13, WitnessTable);

      v29 = v30;
      MEMORY[0x1EEE9AC00](v15, v16);
      v23[0] = v5;
      v23[1] = sub_1D614CC50;
      v24 = v11;
      sub_1D72640AC();

      swift_getWitnessTable();
      v17 = sub_1D72624AC();

      v30 = v17;
      MEMORY[0x1EEE9AC00](v18, v19);
      v24 = v5;
      swift_getTupleTypeMetadata2();
      v20 = sub_1D72627FC();
      v21 = swift_getWitnessTable();
      a1 = sub_1D5B874E4(sub_1D614CCE0, v23, v20, v5, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);

      ++v7;
      if (v27 == sub_1D726279C())
      {

        return a1;
      }
    }

    result = sub_1D7263DBC();
    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D614C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, char *), uint64_t a6, uint64_t a7)
{
  v26[1] = a6;
  v27 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v26 - v20;
  *(v26 - v20) = a1;
  v23 = *(*(a7 - 8) + 16);
  v23(v26 + *(v22 + 48) - v20, a2, a7, v19);
  *v16 = a3;
  (v23)(&v16[*(TupleTypeMetadata2 + 48)], a4, a7);
  v27(&v28, v21, v16);
  v24 = *(v13 + 8);
  v24(v16, TupleTypeMetadata2);
  v24(v21, TupleTypeMetadata2);
  return v28;
}

uint64_t sub_1D614C1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, TupleTypeMetadata2, v8);
  return (*(*(a2 - 8) + 32))(a3, &v10[*(TupleTypeMetadata2 + 48)], a2);
}

uint64_t FeedItemSorter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t + infix<A>(_:_:)(uint64_t a1)
{
  sub_1D614CB18(a1);
}

BOOL sub_1D614C380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  sub_1D5B68374(a2, &v29);
  v26 = a3;
  sub_1D5B68374(a4, &v27);
  sub_1D614CD00(&v28, &v21, &qword_1EDF1AC70, sub_1D5EFF46C);
  v8 = v21;
  sub_1D5B63F14(v22, v23);
  sub_1D614CD00(&v26, &v21, &qword_1EDF1AC70, sub_1D5EFF46C);
  v9 = v21;
  sub_1D5B63F14(v22, v18);
  v10 = v24;
  v11 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v11 + 24))(&v21, v10, v11);
  if ((a5 & ~v21) != 0 || (v12 = v19, v13 = v20, __swift_project_boxed_opaque_existential_1(v18, v19), (*(v13 + 24))(&v21, v12, v13), (a5 & ~v21) != 0))
  {
    v15 = v24;
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v16 + 24))(&v21, v15, v16);
    sub_1D614CD6C(&v26, &qword_1EDF1AC70, sub_1D5EFF46C);
    sub_1D614CD6C(&v28, &qword_1EDF1AC70, sub_1D5EFF46C);
    v14 = (a5 & ~v21) == 0;
  }

  else
  {
    sub_1D614CD6C(&v26, &qword_1EDF1AC70, sub_1D5EFF46C);
    sub_1D614CD6C(&v28, &qword_1EDF1AC70, sub_1D5EFF46C);
    v14 = v8 < v9;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v14;
}

uint64_t sub_1D614C5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v51 - v13;
  sub_1D5C14B84(0, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v51 - v22);
  MEMORY[0x1EEE9AC00](v24, v25);
  *(&v51 - v26) = a1;
  v27 = a2;
  v28 = &v51 - v26;
  sub_1D5C0C74C(v27, &v51 + *(v16 + 56) - v26);
  *v23 = a3;
  sub_1D5C0C74C(v54, v23 + *(v16 + 56));
  sub_1D614CD00(v28, v19, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
  v53 = *v19;
  sub_1D5EC9594(v19 + *(v16 + 56), v14);
  v54 = v23;
  sub_1D614CD00(v23, v19, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
  v29 = *v19;
  sub_1D5EC9594(v19 + *(v16 + 56), v10);
  v30 = *(v14 + 5);
  if (![v30 hasThumbnail] || (v31 = v10[5], !objc_msgSend(v31, sel_hasThumbnail)))
  {
    v35 = [v10[5] hasThumbnail];
    sub_1D614CD6C(v54, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
    sub_1D614CD6C(v28, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
    v36 = v35 ^ 1;
LABEL_6:
    sub_1D5C10040(v14);
    sub_1D5C10040(v10);
    return v36;
  }

  v32 = v28;
  v33 = [v30 title];
  if (v33)
  {
    v34 = v33;
    sub_1D726207C();
  }

  v52 = v10;
  v38 = [v30 shortExcerpt];
  if (v38)
  {
    v39 = v38;
    sub_1D726207C();
  }

  v40 = sub_1D726221C();

  v41 = sub_1D726221C();

  v42 = v40 + v41;
  if (__OFADD__(v40, v41))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = [v31 title];
  if (v43)
  {
    v44 = v43;
    sub_1D726207C();
  }

  v45 = [v31 shortExcerpt];
  if (v45)
  {
    v46 = v45;
    sub_1D726207C();
  }

  v47 = sub_1D726221C();

  v48 = sub_1D726221C();

  v49 = v47 + v48;
  if (__OFADD__(v47, v48))
  {
    goto LABEL_20;
  }

  sub_1D614CD6C(v54, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
  result = sub_1D614CD6C(v32, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
  v50 = v42 - v49;
  if (!__OFSUB__(v42, v49))
  {
    if (v50)
    {
      v36 = v50 > 0;
      v10 = v52;
    }

    else
    {
      v10 = v52;
      v36 = v53 < v29;
    }

    goto LABEL_6;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *sub_1D614CA04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v3 + 80);
  swift_getTupleTypeMetadata2();
  swift_getFunctionTypeMetadata2();
  v3[2] = sub_1D7261CFC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  swift_beginAccess();
  sub_1D72627FC();

  sub_1D72627BC();
  swift_endAccess();
  return v3;
}

uint64_t sub_1D614CB18(uint64_t a1)
{
  swift_beginAccess();
  swift_beginAccess();

  swift_getTupleTypeMetadata2();
  swift_getFunctionTypeMetadata2();
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D72627AC();
  swift_endAccess();
  return a1;
}

uint64_t sub_1D614CC5C(char *a1, char *a2)
{
  v5 = *(v2 + 24);
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(v6, &a1[*(TupleTypeMetadata2 + 48)], *a2, &a2[*(TupleTypeMetadata2 + 48)]) & 1;
}

uint64_t sub_1D614CD00(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5C14B84(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D614CD6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5C14B84(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D614CDC8@<X0>(char *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *(v3 + 24);
  v8 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v7(v8, &a1[*(TupleTypeMetadata2 + 48)], *a2, &a2[*(TupleTypeMetadata2 + 48)]);
  *a3 = result & 1;
  return result;
}

unint64_t sub_1D614CE58()
{
  result = qword_1EC884470;
  if (!qword_1EC884470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884470);
  }

  return result;
}

uint64_t sub_1D614CEAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616974726170;
  if (v2 != 1)
  {
    v4 = 0x6465646E61707865;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x657370616C6C6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6C616974726170;
  if (*a2 != 1)
  {
    v8 = 0x6465646E61707865;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x657370616C6C6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D614CFB0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D614D058()
{
  sub_1D72621EC();
}

uint64_t sub_1D614D0EC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D614D190@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D614D328();
  *a1 = result;
  return result;
}

void sub_1D614D1C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xE700000000000000;
  v5 = 0x6C616974726170;
  if (v2 != 1)
  {
    v5 = 0x6465646E61707865;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657370616C6C6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D614D224(uint64_t a1)
{
  v2 = sub_1D614D374();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D614D278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D614D374();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D614D2D4(uint64_t a1)
{
  v2 = sub_1D614D374();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D614D328()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D614D374()
{
  result = qword_1EC884478;
  if (!qword_1EC884478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884478);
  }

  return result;
}

uint64_t FeedJournalEntry.chosenGroup.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + 16))
  {
    return sub_1D5C0C678(*v1 + 32, a1);
  }

  __break(1u);
  return result;
}

unint64_t FeedJournalEntry.slots.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5C07390(v2);
}

uint64_t sub_1D614D414@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 8) = 1;
  *(a3 + 16) = a4;
  sub_1D614D52C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7273AE0;

  v9 = a2;
  sub_1D6A69914(a1, a2, v18, a4);
  v10 = v18[13];
  *(v8 + 224) = v18[12];
  *(v8 + 240) = v10;
  *(v8 + 256) = v18[14];
  *(v8 + 272) = v19;
  v11 = v18[9];
  *(v8 + 160) = v18[8];
  *(v8 + 176) = v11;
  v12 = v18[11];
  *(v8 + 192) = v18[10];
  *(v8 + 208) = v12;
  v13 = v18[5];
  *(v8 + 96) = v18[4];
  *(v8 + 112) = v13;
  v14 = v18[7];
  *(v8 + 128) = v18[6];
  *(v8 + 144) = v14;
  v15 = v18[1];
  *(v8 + 32) = v18[0];
  *(v8 + 48) = v15;
  v16 = v18[3];
  *(v8 + 64) = v18[2];
  *(v8 + 80) = v16;

  *a3 = v8;
  return result;
}

void sub_1D614D52C()
{
  if (!qword_1EDF02300)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02300);
    }
  }
}

unint64_t sub_1D614D57C@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (*(*v2 + 16))
  {
    v5 = result;
    v6 = v2[1];
    v7 = v2[2];
    sub_1D5C0C678(v4 + 32, &v12);
    sub_1D5C034F0(&v13, &v10);
    sub_1D5C074F4(&v12);
    if (v11 <= 2u)
    {
      sub_1D5B63F14(&v10, v14);
      v8 = v15;
      v9 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      sub_1D6D92DCC(v5, v8, v9);
      *a2 = v4;
      a2[1] = v6;
      a2[2] = v7;

      sub_1D5C07390(v6);
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      if (v11 == 3)
      {

        __swift_destroy_boxed_opaque_existential_1(&v10);
      }

      else
      {
        sub_1D5BC3420(&v10);
      }

      *a2 = v4;
      a2[1] = v6;
      a2[2] = v7;

      return sub_1D5C07390(v6);
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

unint64_t sub_1D614D9A8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  if (!*(*v3 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  v8 = v3[1];
  v9 = v3[2];
  sub_1D5C0C678(v5 + 32, &v66);
  sub_1D5C034F0(v77, &v49);
  sub_1D5C074F4(&v66);
  if (v53 <= 2u)
  {
    v10 = v52[1];
    sub_1D5B63F14(&v49, v85);
    __swift_project_boxed_opaque_existential_1(v85, v86);
    if (sub_1D725AA4C() == v7 && v11 == a2)
    {
    }

    else
    {
      v13 = sub_1D72646CC();

      if ((v13 & 1) == 0)
      {
        *a3 = v5;
        a3[1] = v8;
        a3[2] = v9;

LABEL_16:
        sub_1D5C07390(v8);
        return __swift_destroy_boxed_opaque_existential_1(v85);
      }
    }

    if (*(v5 + 16))
    {
      sub_1D5C0C678(v5 + 32, &v49);
      v15 = v86;
      v14 = v87;
      __swift_project_boxed_opaque_existential_1(v85, v86);
      (*(*(v14 + 8) + 64))(v15);
      v66 = 0;
      v67 = 0xE000000000000000;
      sub_1D7263D4C();

      v66 = 0xD000000000000014;
      v67 = 0x80000001D73CB800;
      MEMORY[0x1DA6F9910](v7, a2);
      v16 = v66;
      v17 = v67;
      v18 = *(&v49 + 1);
      v19 = v51;
      v45 = v50;
      v46 = v49;
      sub_1D614DDE4(v52, v70);
      v20 = v54;
      v21 = v55;
      v44 = v56;
      v43 = v57;
      v42 = v58;
      v41 = v59;
      v39 = v61;
      v40 = v60;
      sub_1D5B68374(v85, v77);
      v77[5] = v10;
      v77[6] = v16;
      v77[7] = v17;
      v78 = 3;
      v22 = v62;
      v23 = v63;
      v24 = v64;
      v25 = v65;
      sub_1D614E334(&v49, v47);
      v26 = swift_allocObject();
      v27 = v47[13];
      *(v26 + 208) = v47[12];
      *(v26 + 224) = v27;
      *(v26 + 240) = v47[14];
      *(v26 + 256) = v48;
      v28 = v47[9];
      *(v26 + 144) = v47[8];
      *(v26 + 160) = v28;
      v29 = v47[11];
      *(v26 + 176) = v47[10];
      *(v26 + 192) = v29;
      v30 = v47[5];
      *(v26 + 80) = v47[4];
      *(v26 + 96) = v30;
      v31 = v47[7];
      *(v26 + 112) = v47[6];
      *(v26 + 128) = v31;
      v32 = v47[1];
      *(v26 + 16) = v47[0];
      *(v26 + 32) = v32;
      v33 = v47[3];
      *(v26 + 48) = v47[2];
      *(v26 + 64) = v33;
      v66 = v46;
      v67 = v18;
      v68 = v45;
      v69 = v19;
      v70[5] = v20;
      v70[6] = v21;
      v71 = v44;
      v72 = v43;
      v73 = v42;
      v74 = v41;
      v75 = v40;
      v76 = v39;
      v79 = v22;
      v80 = v23;
      v81 = v24;
      v82 = v25;
      v83 = sub_1D614E390;
      v84 = v26;

      sub_1D614E398(v22, v23);
      sub_1D5C074F4(&v49);
      sub_1D614D52C();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1D7273AE0;
      sub_1D614E334(&v66, v34 + 32);
      v35 = *(v5 + 16);
      v36 = v35 != 0;
      v37 = (2 * v35) | 1;
      *&v49 = v34;

      sub_1D6987410(v38, v5 + 32, v36, v37);
      sub_1D5C074F4(&v66);
      *a3 = v49;
      a3[1] = v8;
      a3[2] = v9;
      goto LABEL_16;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  if (v53 == 3)
  {

    __swift_destroy_boxed_opaque_existential_1(&v49);
  }

  else
  {
    sub_1D5BC3420(&v49);
  }

  *a3 = v5;
  a3[1] = v8;
  a3[2] = v9;

  return sub_1D5C07390(v8);
}

uint64_t sub_1D614DDE4(uint64_t a1, uint64_t a2)
{
  sub_1D614DE48();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D614DE48()
{
  if (!qword_1EDF39E68)
  {
    sub_1D5B49474(255, qword_1EDF39E70);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF39E68);
    }
  }
}

unint64_t sub_1D614DEB0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = result;
  v10 = v4[1];
  v11 = v4[2];
  sub_1D5C0C678(v6 + 32, &v72);
  sub_1D5C034F0(v83, &v55);
  sub_1D5C074F4(&v72);
  if (v59 <= 2u)
  {
    v12 = v58[1];
    sub_1D5B63F14(&v55, v91);
    __swift_project_boxed_opaque_existential_1(v91, v92);
    if (sub_1D725AA4C() == v9 && v13 == a2)
    {
    }

    else
    {
      v15 = sub_1D72646CC();

      if ((v15 & 1) == 0)
      {
        *a4 = v6;
        a4[1] = v10;
        a4[2] = v11;

LABEL_22:
        sub_1D5C07390(v10);
        return __swift_destroy_boxed_opaque_existential_1(v91);
      }
    }

    if (*(v6 + 16))
    {
      sub_1D5C0C678(v6 + 32, &v55);
      v17 = v92;
      v16 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      (*(*(v16 + 8) + 64))(v17);
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000034, 0x80000001D73CB820);
      v18 = type metadata accessor for FeedContext();
      v19 = *(a3 + *(v18 + 24)) == 0;
      if (*(a3 + *(v18 + 24)))
      {
        v20 = 1702195828;
      }

      else
      {
        v20 = 0x65736C6166;
      }

      if (v19)
      {
        v21 = 0xE500000000000000;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      MEMORY[0x1DA6F9910](v20, v21);

      v22 = v72;
      v23 = v73;
      v24 = *(&v55 + 1);
      v25 = v57;
      v51 = v56;
      v52 = v55;
      sub_1D614DDE4(v58, v76);
      v26 = v60;
      v27 = v61;
      v50 = v62;
      v49 = v63;
      v48 = v64;
      v47 = v65;
      v45 = v67;
      v46 = v66;
      sub_1D5B68374(v91, v83);
      v83[5] = v12;
      v83[6] = v22;
      v83[7] = v23;
      v84 = 3;
      v28 = v68;
      v29 = v69;
      v30 = v70;
      v31 = v71;
      sub_1D614E334(&v55, v53);
      v32 = swift_allocObject();
      v33 = v53[13];
      *(v32 + 208) = v53[12];
      *(v32 + 224) = v33;
      *(v32 + 240) = v53[14];
      *(v32 + 256) = v54;
      v34 = v53[9];
      *(v32 + 144) = v53[8];
      *(v32 + 160) = v34;
      v35 = v53[11];
      *(v32 + 176) = v53[10];
      *(v32 + 192) = v35;
      v36 = v53[5];
      *(v32 + 80) = v53[4];
      *(v32 + 96) = v36;
      v37 = v53[7];
      *(v32 + 112) = v53[6];
      *(v32 + 128) = v37;
      v38 = v53[1];
      *(v32 + 16) = v53[0];
      *(v32 + 32) = v38;
      v39 = v53[3];
      *(v32 + 48) = v53[2];
      *(v32 + 64) = v39;
      v72 = v52;
      v73 = v24;
      v74 = v51;
      v75 = v25;
      v76[5] = v26;
      v76[6] = v27;
      v77 = v50;
      v78 = v49;
      v79 = v48;
      v80 = v47;
      v81 = v46;
      v82 = v45;
      v85 = v28;
      v86 = v29;
      v87 = v30;
      v88 = v31;
      v89 = sub_1D614E3D8;
      v90 = v32;

      sub_1D614E398(v28, v29);
      sub_1D5C074F4(&v55);
      sub_1D614D52C();
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1D7273AE0;
      sub_1D614E334(&v72, v40 + 32);
      v41 = *(v6 + 16);
      v42 = v41 != 0;
      v43 = (2 * v41) | 1;
      *&v55 = v40;

      sub_1D6987410(v44, v6 + 32, v42, v43);
      sub_1D5C074F4(&v72);
      *a4 = v55;
      a4[1] = v10;
      a4[2] = v11;
      goto LABEL_22;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  if (v59 == 3)
  {

    __swift_destroy_boxed_opaque_existential_1(&v55);
  }

  else
  {
    sub_1D5BC3420(&v55);
  }

  *a4 = v6;
  a4[1] = v10;
  a4[2] = v11;

  return sub_1D5C07390(v10);
}

unint64_t sub_1D614E398(unint64_t result, unint64_t a2)
{
  if (result)
  {

    return sub_1D5C07390(a2);
  }

  return result;
}

uint64_t sub_1D614E3DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a1;
  v59 = a2;
  v56 = sub_1D72585BC();
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v56 - v8;
  sub_1D614F57C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v56 - v16;
  v18 = type metadata accessor for OsloSheetPurchaseDataModel(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v26 = (&v56 - v25);
  v27 = v2[1];
  v70 = *v2;
  v71 = v27;
  v28 = v2[3];
  v72 = v2[2];
  v73 = v28;
  v74 = *(v2 + 64);
  v29 = *(&v70 + 1);
  if (v74 > 1u)
  {
    if (v74 != 2)
    {
LABEL_10:
      type metadata accessor for FormatPurchaseData(0);
      return swift_storeEnumTagMultiPayload();
    }

    v32 = v71.n128_u64[0];
    v33 = v59;
    if ((v71.n128_u64[0] & 0xF000000000000007) == 0x7000000000000007)
    {
      v34 = v70;
      v35 = v24;
      v36 = type metadata accessor for FormatPostPurchaseData();
      (*(*(v36 - 8) + 56))(v13, 1, 1, v36);

LABEL_26:
      *v21 = v34;
      v21[1] = v29;
      sub_1D614F5D4(v13, v21 + *(v35 + 20), sub_1D614F57C);
      v48 = v21;
      goto LABEL_27;
    }

    v40 = (v71.n128_u64[0] >> 57) & 0x78 | v71.n128_u8[0] & 7;
    v34 = v70;
    v35 = v24;
    if (v40 == 95)
    {
      (*(v58 + 56))(v13, 2, 2, v56);
    }

    else
    {
      if (v40 != 127)
      {

        sub_1D614F63C(v32);
        v53 = v75;
        sub_1D6D4FCF8(v57, v32, v5);
        sub_1D614F680(v32);
        if (v53)
        {
        }

        v54 = v5;
        v55 = v56;
        (*(v58 + 32))(v13, v54, v56);
        (*(v58 + 56))(v13, 0, 2, v55);
        goto LABEL_25;
      }

      (*(v58 + 56))(v13, 1, 2, v56);
    }

LABEL_25:
    v49 = type metadata accessor for FormatPostPurchaseData();
    (*(*(v49 - 8) + 56))(v13, 0, 1, v49);
    goto LABEL_26;
  }

  if (v74)
  {
    if ((v73.n128_u64[1] & 0xF000000000000007) == 0x3000000000000007)
    {
      v37 = type metadata accessor for FormatPurchaseLandingPageData();
      (*(*(v37 - 8) + 56))(v59, 1, 1, v37);
    }

    else
    {
      v64 = v70;
      v65 = v71;
      v66 = v72;
      v41 = v2[3];
      v68[2] = v2[2];
      v68[3] = v41;
      v69 = *(v2 + 64);
      v42 = *v2;
      v68[1] = v2[1];
      v67 = v73;
      v68[0] = v42;
      sub_1D614F6C4(v68, &v60);
      v43 = v59;
      v44 = v75;
      sub_1D6C14DEC(v57, v59);
      if (v44)
      {
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v63 = v67;
        return sub_1D614F778(&v60);
      }

      v60 = v64;
      v61 = v65;
      v62 = v66;
      v63 = v67;
      sub_1D614F778(&v60);
      v46 = type metadata accessor for FormatPurchaseLandingPageData();
      (*(*(v46 - 8) + 56))(v43, 0, 1, v46);
    }

    goto LABEL_10;
  }

  if ((v70 & 0xF000000000000007) == 0x7000000000000007)
  {
    v30 = v24;
    v31 = type metadata accessor for FormatPostPurchaseData();
    (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
LABEL_22:
    *v26 = 0;
    v26[1] = 0;
    sub_1D614F5D4(v17, v26 + *(v30 + 20), sub_1D614F57C);
    v48 = v26;
    v33 = v59;
LABEL_27:
    sub_1D614F5D4(v48, v33, type metadata accessor for OsloSheetPurchaseDataModel);
    type metadata accessor for FormatPurchaseData(0);
    return swift_storeEnumTagMultiPayload();
  }

  v38 = (v70 >> 57) & 0x78 | v70 & 7;
  v39 = v75;
  v30 = v24;
  if (v38 == 95)
  {
    (*(v58 + 56))(v17, 2, 2, v56, v71, v72, v73);
    goto LABEL_21;
  }

  if (v38 == 127)
  {
    (*(v58 + 56))(v17, 1, 2, v56, v71, v72, v73);
LABEL_21:
    v47 = type metadata accessor for FormatPostPurchaseData();
    (*(*(v47 - 8) + 56))(v17, 0, 1, v47);
    goto LABEL_22;
  }

  v50 = v70;
  sub_1D614F63C(v70);
  sub_1D6D4FCF8(v57, v50, v9);
  result = sub_1D614F7CC(&v70);
  if (!v39)
  {
    v51 = v58;
    v52 = v56;
    (*(v58 + 32))(v17, v9, v56);
    (*(v51 + 56))(v17, 0, 2, v52);
    goto LABEL_21;
  }

  return result;
}

BOOL _s8NewsFeed20FormatPurchaseActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v55 = *(a1 + 32);
  v56 = v2;
  v4 = *(a1 + 16);
  v54[0] = *a1;
  v54[1] = v4;
  v5 = a2[3];
  v6 = a2[1];
  v60 = a2[2];
  v61 = v5;
  v7 = a2[1];
  v58 = *a2;
  v59 = v7;
  v8 = *(a1 + 48);
  v63[2] = v55;
  v63[3] = v8;
  v63[0] = v54[0];
  v63[1] = v3;
  v57 = *(a1 + 64);
  v62 = a2[4].i8[0];
  v64 = *(a1 + 64);
  v65 = v58;
  v69 = a2[4].i8[0];
  v68 = a2[3];
  v67 = v60;
  v66 = v6;
  v9 = v54[0];
  if (v57 <= 1u)
  {
    if (!v57)
    {
      if (!v62)
      {
        v10 = v58.i64[0];
        if ((*&v54[0] & 0xF000000000000007) == 0x7000000000000007)
        {
          sub_1D614F7FC(v54, &v45);
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(v54, &v45);
          sub_1D614F8F4(v63, sub_1D614F834);
          if ((v10 & 0xF000000000000007) == 0x7000000000000007)
          {
            sub_1D614F680(v9);
            return 1;
          }

          goto LABEL_33;
        }

        *&v41 = *&v54[0];
        if ((v58.i64[0] & 0xF000000000000007) == 0x7000000000000007)
        {
          sub_1D614F7FC(v54, &v45);
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(v54, &v45);
          sub_1D614F63C(v9);
          sub_1D614F8F4(v63, sub_1D614F834);
          sub_1D614F69C(v9);
LABEL_33:
          sub_1D614F680(v9);
          sub_1D614F680(v10);
          return 0;
        }

        v37.i64[0] = v58.i64[0];
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(v54, &v45);
        sub_1D614F7FC(v54, &v45);
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(v54, &v45);
        sub_1D614F63C(v9);
        v27 = _s8NewsFeed18FormatPostPurchaseO2eeoiySbAC_ACtFZ_0(&v41, &v37);
        sub_1D614F8F4(v63, sub_1D614F834);
        sub_1D614F7CC(&v58);
        sub_1D614F7CC(v54);
        sub_1D614F69C(v37.u64[0]);
        sub_1D614F69C(v41);
        sub_1D614F680(v9);
        return v27;
      }

      goto LABEL_24;
    }

    if (v62 == 1)
    {
      v12 = v61.i64[1];
      v29 = v56;
      v30 = v4;
      v28 = v55;
      if ((v56.i64[1] & 0xF000000000000007) == 0x3000000000000007)
      {
        v13 = a2;
        sub_1D614F7FC(v54, &v45);
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(v54, &v45);
        sub_1D614F8F4(v63, sub_1D614F834);
        if ((v12 & 0xF000000000000007) == 0x3000000000000007)
        {
          v45 = v9;
          v46 = v30;
          v47 = v28;
          v48 = v29;
          v14 = sub_1D614F728;
          v15 = &v45;
LABEL_22:
          sub_1D614F8F4(v15, v14);
          return 1;
        }
      }

      else
      {
        v41 = v54[0];
        v42 = v4;
        v43 = v55;
        v44 = v56;
        v37 = v54[0];
        v38 = v4;
        v39 = v55;
        v40 = v56;
        if ((v61.i64[1] & 0xF000000000000007) != 0x3000000000000007)
        {
          v25 = a2[1];
          v31 = *a2;
          v32 = v25;
          v33 = a2[2];
          *&v34 = a2[3].i64[0];
          *(&v34 + 1) = v61.i64[1];
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(v54, &v45);
          sub_1D614F7FC(v54, &v45);
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(&v58, &v45);
          sub_1D614F7FC(v54, &v45);
          sub_1D614F6C4(&v41, &v45);
          v26 = _s8NewsFeed25FormatPurchaseLandingPageV2eeoiySbAC_ACtFZ_0(&v37, &v31);
          sub_1D614F8F4(v63, sub_1D614F834);
          sub_1D614F7CC(&v58);
          sub_1D614F7CC(v54);
          v35[0] = v31;
          v35[1] = v32;
          v35[2] = v33;
          v35[3] = v34;
          sub_1D614F778(v35);
          v36[0] = v37;
          v36[1] = v38;
          v36[2] = v39;
          v36[3] = v40;
          sub_1D614F778(v36);
          v45 = v9;
          v46 = v30;
          v47 = v28;
          v48 = v29;
          sub_1D614F8F4(&v45, sub_1D614F728);
          return v26;
        }

        v13 = a2;
        sub_1D614F7FC(v54, &v45);
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(&v58, &v45);
        sub_1D614F7FC(v54, &v45);
        sub_1D614F6C4(&v41, &v45);
        sub_1D614F8F4(v63, sub_1D614F834);
        v45 = v37;
        v46 = v38;
        v47 = v39;
        v48 = v40;
        sub_1D614F778(&v45);
      }

      v45 = v9;
      v46 = v30;
      v47 = v28;
      v22 = *v13;
      v23 = v13[1];
      v48 = v29;
      v49 = v22;
      v24 = v13[2];
      v50 = v23;
      v51 = v24;
      v52 = v13[3].i64[0];
      v53 = v12;
      v19 = sub_1D614F890;
      v20 = &v45;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v57 != 2)
  {
    v16 = vorrq_s8(v56, v55);
    if (*&v54[0] | *&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | v4 | *(&v54[0] + 1) | *(&v4 + 1))
    {
      if (v62 != 3)
      {
        goto LABEL_24;
      }

      if (v58.i64[0] != 1)
      {
        goto LABEL_24;
      }

      v17 = vorrq_s8(v60, v61);
      if (*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | v59.i64[1] | v59.i64[0] | v58.i64[1])
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v62 != 3)
      {
        goto LABEL_24;
      }

      v18 = vorrq_s8(vorrq_s8(v58, v60), vorrq_s8(v59, v61));
      if (vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))
      {
        goto LABEL_24;
      }
    }

    v14 = sub_1D614F834;
    v15 = v63;
    goto LABEL_22;
  }

  if (v62 != 2)
  {
LABEL_24:
    sub_1D614F7FC(&v58, &v45);
    sub_1D614F7FC(v54, &v45);
    v19 = sub_1D614F834;
    v20 = v63;
LABEL_25:
    sub_1D614F8F4(v20, v19);
    return 0;
  }

  v41 = v54[0];
  *&v42 = v4;
  v37 = v58;
  *&v38 = v59.i64[0];
  sub_1D614F7FC(v54, &v45);
  sub_1D614F7FC(&v58, &v45);
  sub_1D614F7FC(&v58, &v45);
  sub_1D614F7FC(v54, &v45);
  v11 = _s8NewsFeed32FormatOsloSheetPurchaseDataModelV2eeoiySbAC_ACtFZ_0(&v41, &v37);
  sub_1D614F8F4(v63, sub_1D614F834);
  sub_1D614F7CC(&v58);
  sub_1D614F7CC(v54);
  return v11;
}

unint64_t sub_1D614F238(uint64_t a1)
{
  result = sub_1D614F260();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D614F260()
{
  result = qword_1EC884480;
  if (!qword_1EC884480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884480);
  }

  return result;
}

unint64_t sub_1D614F2B4(void *a1)
{
  a1[1] = sub_1D614F2EC();
  a1[2] = sub_1D614F340();
  result = sub_1D614F394();
  a1[3] = result;
  return result;
}

unint64_t sub_1D614F2EC()
{
  result = qword_1EDF2AD48;
  if (!qword_1EDF2AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AD48);
  }

  return result;
}

unint64_t sub_1D614F340()
{
  result = qword_1EC884488;
  if (!qword_1EC884488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884488);
  }

  return result;
}

unint64_t sub_1D614F394()
{
  result = qword_1EC884490;
  if (!qword_1EC884490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884490);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18FormatPostPurchaseO(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x18 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 5) | (4 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18FormatPostPurchaseOSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x18 | *a1 & 7;
  v3 = (v1 >> 5) | (4 * v2);
  if (-v3 < -126 || v3 == 126)
  {
    v4 = -126;
  }

  else
  {
    v4 = -v3;
  }

  v5 = v4 + 126;
  if (v2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed25FormatPurchaseLandingPageVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = (v1 >> 57) & 0x18 | v1 & 7;
  v3 = ((v1 >> 57) >> 5) | (4 * v2);
  if (-v3 < -125 || v3 == 125)
  {
    v4 = -125;
  }

  else
  {
    v4 = -v3;
  }

  v5 = v4 + 125;
  if (v2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed20FormatPurchaseActionO(uint64_t a1)
{
  if ((*(a1 + 64) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

uint64_t sub_1D614F4A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D614F4E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1D614F540(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 64) = a2;
  return result;
}

void sub_1D614F57C()
{
  if (!qword_1EDF281C8)
  {
    type metadata accessor for FormatPostPurchaseData();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF281C8);
    }
  }
}

uint64_t sub_1D614F5D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D614F63C(unint64_t result)
{
  if ((result & 0xF000000000000007) != 0x7000000000000007)
  {
    return sub_1D614F658(result);
  }

  return result;
}

unint64_t sub_1D614F658(unint64_t result)
{
  if (((result >> 57) & 0xF8 | result & 7 | 0x20) != 0x7F)
  {
  }

  return result;
}

unint64_t sub_1D614F680(unint64_t result)
{
  if ((result & 0xF000000000000007) != 0x7000000000000007)
  {
    return sub_1D614F69C(result);
  }

  return result;
}

unint64_t sub_1D614F69C(unint64_t result)
{
  if (((result >> 57) & 0xF8 | result & 7 | 0x20) != 0x7F)
  {
  }

  return result;
}

uint64_t sub_1D614F6C4(uint64_t a1, uint64_t a2)
{
  sub_1D614F728();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D614F728()
{
  if (!qword_1EDF24810)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24810);
    }
  }
}

void sub_1D614F834()
{
  if (!qword_1EC884498)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC884498);
    }
  }
}

void sub_1D614F890()
{
  if (!qword_1EC8844A0)
  {
    sub_1D614F728();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8844A0);
    }
  }
}

uint64_t sub_1D614F8F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D614F964()
{
  v0 = sub_1D7257A4C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D726210C();
  v7 = v6;

  v62 = v5;
  v63 = v7;
  sub_1D725795C();
  sub_1D5BF4D9C();
  v8 = sub_1D7263A4C();
  v10 = v9;
  v11 = *(v1 + 8);
  v57 = v1 + 8;
  v58 = v0;
  v56 = v11;
  v11(v4, v0);

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v62 = v8;
  v63 = v10;
  v60 = 44;
  v61 = 0xE100000000000000;
  v13 = sub_1D72639FC();

  v14 = *(v13 + 16);
  if (!v14)
  {

    v17 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v41 = 0;
    v42 = *(v17 + 16);
    v40 = MEMORY[0x1E69E7CC0];
    while (v42 != v41)
    {
      if (v41 >= *(v17 + 16))
      {
        goto LABEL_41;
      }

      v43 = *(v17 + 8 * v41++ + 32);
      if (*(v43 + 16))
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        v62 = v40;
        if ((result & 1) == 0)
        {
          result = sub_1D6998EFC(0, *(v40 + 16) + 1, 1);
          v40 = v62;
        }

        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        if (v45 >= v44 >> 1)
        {
          result = sub_1D6998EFC((v44 > 1), v45 + 1, 1);
          v40 = v62;
        }

        *(v40 + 16) = v45 + 1;
        *(v40 + 8 * v45 + 32) = v43;
      }
    }

    return v40;
  }

  v59 = MEMORY[0x1E69E7CC0];
  result = sub_1D6998EFC(0, v14, 0);
  v16 = 0;
  v17 = v59;
  v48 = v13;
  v49 = v13 + 32;
  v47 = v14;
  while (v16 < *(v13 + 16))
  {
    v53 = v16;
    v54 = v17;
    v18 = (v49 + 16 * v16);
    v19 = v18[1];
    v62 = *v18;
    v63 = v19;
    v52 = v19;

    sub_1D725795C();
    v20 = sub_1D7263A4C();
    v22 = v21;
    v56(v4, v58);
    v62 = v20;
    v63 = v22;
    v60 = 32;
    v61 = 0xE100000000000000;
    v23 = sub_1D72639FC();

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      v26 = v23 + 40;
      v50 = v24 - 1;
      v55 = MEMORY[0x1E69E7CC0];
      v51 = v23 + 40;
      while (2)
      {
        v27 = (v26 + 16 * v25);
        v28 = v25;
        while (1)
        {
          if (v28 >= *(v23 + 16))
          {
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v25 = v28 + 1;
          v29 = *v27;
          v62 = *(v27 - 1);
          v63 = v29;

          sub_1D725795C();
          v30 = sub_1D7263A4C();
          v32 = v31;
          v56(v4, v58);

          v33 = HIBYTE(v32) & 0xF;
          if ((v32 & 0x2000000000000000) == 0)
          {
            v33 = v30 & 0xFFFFFFFFFFFFLL;
          }

          if (v33)
          {
            break;
          }

          v27 += 2;
          ++v28;
          if (v24 == v25)
          {
            goto LABEL_23;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D5B858EC(0, *(v55 + 2) + 1, 1, v55);
          v55 = result;
        }

        v35 = *(v55 + 2);
        v34 = *(v55 + 3);
        if (v35 >= v34 >> 1)
        {
          result = sub_1D5B858EC((v34 > 1), v35 + 1, 1, v55);
          v55 = result;
        }

        v36 = v55;
        *(v55 + 2) = v35 + 1;
        v37 = &v36[16 * v35];
        *(v37 + 4) = v30;
        *(v37 + 5) = v32;
        v26 = v51;
        if (v50 != v28)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC0];
    }

LABEL_23:

    v17 = v54;
    v59 = v54;
    v39 = *(v54 + 16);
    v38 = *(v54 + 24);
    if (v39 >= v38 >> 1)
    {
      result = sub_1D6998EFC((v38 > 1), v39 + 1, 1);
      v17 = v59;
    }

    v16 = v53 + 1;
    *(v17 + 16) = v39 + 1;
    *(v17 + 8 * v39 + 32) = v55;
    v13 = v48;
    if (v16 == v47)
    {

      goto LABEL_29;
    }
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D614FE8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D614FED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D614FF30(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x746C75736572;
    v6 = 0x6D65726975716572;
    if (a1 != 8)
    {
      v6 = 0x74616D726F66;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x74756F79616CLL;
    if (a1 != 5)
    {
      v7 = 0x6E4974756F79616CLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x70756F7267;
    v2 = 0x73656D656874;
    if (a1 != 3)
    {
      v2 = 0x736D657469;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D615006C()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D614FF30(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61500D0()
{
  sub_1D614FF30(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6150124()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D614FF30(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6150184@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D61502D0();
  *a1 = result;
  return result;
}

unint64_t sub_1D61501B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D614FF30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D61501F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D614FF30(*a1);
  v5 = v4;
  if (v3 == sub_1D614FF30(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D615027C()
{
  result = qword_1EC8844A8;
  if (!qword_1EC8844A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844A8);
  }

  return result;
}

uint64_t sub_1D61502D0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

NewsFeed::FormatFontDesign_optional __swiftcall FormatFontDesign.init(rawValue:)(Swift::String rawValue)
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

uint64_t FormatFontDesign.rawValue.getter()
{
  v1 = 0x746C7561666564;
  v2 = 0x6669726573;
  if (*v0 != 2)
  {
    v2 = 0x636170736F6E6F6DLL;
  }

  if (*v0)
  {
    v1 = 0x6465646E756F72;
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

unint64_t sub_1D6150404()
{
  result = qword_1EC8844B0;
  if (!qword_1EC8844B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844B0);
  }

  return result;
}

uint64_t sub_1D6150458()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D615051C()
{
  sub_1D72621EC();
}

uint64_t sub_1D61505CC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6150698(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xE500000000000000;
  v5 = 0x6669726573;
  if (*v1 != 2)
  {
    v5 = 0x636170736F6E6F6DLL;
    v4 = 0xEA00000000006465;
  }

  if (*v1)
  {
    v3 = 0x6465646E756F72;
    v2 = 0xE700000000000000;
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

unint64_t sub_1D6150718(uint64_t a1)
{
  *(a1 + 8) = sub_1D6150748();
  result = sub_1D615079C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6150748()
{
  result = qword_1EC8844B8;
  if (!qword_1EC8844B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844B8);
  }

  return result;
}

unint64_t sub_1D615079C()
{
  result = qword_1EC8844C0;
  if (!qword_1EC8844C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844C0);
  }

  return result;
}

unint64_t sub_1D61507F0(uint64_t a1)
{
  result = sub_1D6150818();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6150818()
{
  result = qword_1EC8844C8;
  if (!qword_1EC8844C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844C8);
  }

  return result;
}

unint64_t sub_1D615086C(void *a1)
{
  a1[1] = sub_1D61508A4();
  a1[2] = sub_1D61508F8();
  result = sub_1D6150404();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61508A4()
{
  result = qword_1EDF304C8;
  if (!qword_1EDF304C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304C8);
  }

  return result;
}

unint64_t sub_1D61508F8()
{
  result = qword_1EDF113C0;
  if (!qword_1EDF113C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF113C0);
  }

  return result;
}

uint64_t sub_1D61509E8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[5];
      v10 = v7[7];
      v41 = v7[6];
      v42[0] = v10;
      *(v42 + 9) = *(v7 + 121);
      v11 = v7[1];
      v12 = v7[3];
      v37 = v7[2];
      v38 = v12;
      v13 = v7[3];
      v14 = v7[5];
      v39 = v7[4];
      v40 = v14;
      v15 = v7[1];
      v36[0] = *v7;
      v36[1] = v15;
      v16 = v7[7];
      v34 = v41;
      v35[0] = v16;
      *(v35 + 9) = *(v7 + 121);
      v30 = v37;
      v31 = v13;
      v32 = v39;
      v33 = v9;
      v28 = v36[0];
      v29 = v11;
      sub_1D5ECF2C4(v36, &v20);
      v17 = a1(&v28);
      if (v3)
      {
        break;
      }

      v4 = v17;
      v26 = v34;
      v27[0] = v35[0];
      *(v27 + 9) = *(v35 + 9);
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v25 = v33;
      v20 = v28;
      v21 = v29;
      sub_1D5ECF320(&v20);
      v18 = v8-- == 0;
      v7 += 9;
      if ((v4 | v18))
      {
        return v4 & 1;
      }
    }

    v26 = v34;
    v27[0] = v35[0];
    *(v27 + 9) = *(v35 + 9);
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v20 = v28;
    v21 = v29;
    sub_1D5ECF320(&v20);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D6150B4C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1DA6FB460](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1D7263BFC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t FeedCursorContainer.tracker.getter(unint64_t a1)
{
  sub_1D6151884(a1);
}

uint64_t FeedCursorContainer.cursor()(uint64_t a1)
{
  if (a1 < 0)
  {
    type metadata accessor for FeedCursor();
    sub_1D725BC0C();

    return sub_1D725BA6C();
  }

  else
  {
    type metadata accessor for FeedCursor();
    sub_1D725BC0C();

    return sub_1D725BB0C();
  }
}

uint64_t FeedCursorContainer.walkCursorChain(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return a1(a3);
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  return FeedCursor.walkCursorChain(_:)(sub_1D6151968);
}

unint64_t FeedCursorContainer.init(optionalCursor:)(unint64_t result)
{
  if (!result)
  {
    return 0xF000000000000007;
  }

  return result;
}

uint64_t FeedCursorContainer.serviceState.getter(unint64_t a1)
{
  sub_1D61519B4(a1);
}

uint64_t FeedCursorContainer.feedJournal.getter@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 &= ~0x8000000000000000;
    v3 = &qword_1EDFFC678;
  }

  else
  {
    v3 = (*a1 + 240);
  }

  v4 = (a1 + *v3);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t FeedCursorContainer.canExpand.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FeedCursorContainer.feedMode.getter(a1, a2, a3, &v6);
  if (v6 == 1)
  {

    return 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    result = 0;
    if ((v5 & 1) == 0)
    {
      if (a1 < 0)
      {
        return 1;
      }

      else
      {
        return FeedCursor.canExpand.getter() & 1;
      }
    }
  }

  return result;
}

uint64_t FeedCursorContainer.shouldWriteGroupsToDatabase.getter(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v1 = *(a1 + 32);
  v2 = v1 > 6;
  v3 = 0x63u >> v1;
  if (v2)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t sub_1D6150F80(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D5E6D548;

  return sub_1D5EDBDA8();
}

Swift::Int_optional __swiftcall FeedCursorContainer.depthOfKnownGroup(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_1D6151144(v1, v2);
  v15[0] = countAndFlagsBits;
  v15[1] = object;
  v14[2] = v15;
  v6 = sub_1D5BD0418(sub_1D5BD04E0, v14, v5);

  if (v6)
  {
    v7 = 0;
LABEL_13:
    v13 = 0;
    goto LABEL_16;
  }

  v8 = sub_1D6151340();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v8 + 40);
    while (1)
    {
      v12 = *(v11 - 1) == countAndFlagsBits && *v11 == object;
      if (v12 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      ++v10;
      v11 += 2;
      if (v9 == v10)
      {
        goto LABEL_11;
      }
    }

    v7 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    v7 = 0;
    v13 = 1;
  }

LABEL_16:
  result.value = v7;
  result.is_nil = v13;
  return result;
}

uint64_t sub_1D6151144(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    KeyPath = swift_getKeyPath();
    type metadata accessor for FeedDeferredCursorGroup();
    v3 = sub_1D72627FC();

    WitnessTable = swift_getWitnessTable();
    v6 = MEMORY[0x1E69E6158];
    v7 = MEMORY[0x1E69E73E0];
    v8 = MEMORY[0x1E69E7410];
    v9 = sub_1D6151A54;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    KeyPath = swift_getKeyPath();
    type metadata accessor for FeedCursorGroup();
    v3 = sub_1D72627FC();

    WitnessTable = swift_getWitnessTable();
    v6 = MEMORY[0x1E69E6158];
    v7 = MEMORY[0x1E69E73E0];
    v8 = MEMORY[0x1E69E7410];
    v9 = sub_1D6151AEC;
  }

  v10 = sub_1D5B874E4(v9, KeyPath, v3, v6, v7, WitnessTable, v8, v5);

  return v10;
}

uint64_t sub_1D6151340()
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for FeedDatabaseGroup();
  v1 = sub_1D72627FC();

  WitnessTable = swift_getWitnessTable();
  v4 = sub_1D5B874E4(sub_1D61519FC, KeyPath, v1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v3);

  return v4;
}

uint64_t sub_1D6151460(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    KeyPath = swift_getKeyPath();
    type metadata accessor for FeedDeferredCursorGroup();
    v3 = sub_1D72627FC();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();

    WitnessTable = swift_getWitnessTable();
    v7 = MEMORY[0x1E69E73E0];
    v8 = MEMORY[0x1E69E7410];
    v9 = sub_1D6151A54;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    KeyPath = swift_getKeyPath();
    type metadata accessor for FeedCursorGroup();
    v3 = sub_1D72627FC();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();

    WitnessTable = swift_getWitnessTable();
    v7 = MEMORY[0x1E69E73E0];
    v8 = MEMORY[0x1E69E7410];
    v9 = sub_1D6151AEC;
  }

  v10 = sub_1D5B874E4(v9, KeyPath, v3, AssociatedTypeWitness, v7, WitnessTable, v8, v6);

  return v10;
}

uint64_t sub_1D6151728()
{
  v1 = sub_1D5BFB900(*v0);

  return v1;
}

uint64_t static FeedCursorContainer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    if (a2 < 0)
    {
      type metadata accessor for FeedDeferredCursor();

      v4 = static FeedDeferredCursor.== infix(_:_:)(v6, a2 & 0x7FFFFFFFFFFFFFFFLL);
      goto LABEL_7;
    }
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for FeedCursor();

    v4 = static FeedCursor.== infix(_:_:)(v3, a2);
LABEL_7:
    v5 = v4;

    return v5 & 1;
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1D6151830()
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t sub_1D6151884(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 &= ~0x8000000000000000;
    v1 = &qword_1EDFFC638;
  }

  else
  {
    v1 = (*a1 + 280);
  }

  return *(a1 + *v1);
}

uint64_t sub_1D61518CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64684;

  return sub_1D6150F80(a1);
}

uint64_t sub_1D6151968()
{
  v1 = *(v0 + 16);

  v1(v2);
}

uint64_t sub_1D61519B4(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 &= ~0x8000000000000000;
    v1 = &qword_1EDFFC668;
  }

  else
  {
    v1 = (*a1 + 264);
  }

  return *(a1 + *v1);
}

uint64_t sub_1D61519FC()
{

  swift_getAtKeyPath();
}

uint64_t keypath_get_2Tm@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void, void, void)@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  v7 = a3(0, *(a1 + a2 - 16), *(a1 + a2 - 8));
  result = a4(v7);
  *a5 = result;
  a5[1] = v9;
  return result;
}

uint64_t static FormatItemNodeActionBinding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = *(a2 + 50);
  v14 = *(a1 + 50);
  v15 = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v11[2] = *(a1 + 32);
  v12 = v2;
  v13 = v14;
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = *(a2 + 32);
  v9 = v3;
  v10 = v4;
  return _s8NewsFeed20FormatCommandBindingO2eeoiySbAC_ACtFZ_0(v11, v8) & 1;
}

uint64_t sub_1D6151BA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = *(a2 + 50);
  v14 = *(a1 + 50);
  v15 = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v11[2] = *(a1 + 32);
  v12 = v2;
  v13 = v14;
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = *(a2 + 32);
  v9 = v3;
  v10 = v4;
  return static FormatCommandBinding.== infix(_:_:)(v11, v8) & 1;
}

unint64_t sub_1D6151C1C(uint64_t a1)
{
  result = sub_1D6151C44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6151C44()
{
  result = qword_1EC8844D0;
  if (!qword_1EC8844D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844D0);
  }

  return result;
}

unint64_t sub_1D6151C98(void *a1)
{
  a1[1] = sub_1D6151CD0();
  a1[2] = sub_1D6151D24();
  result = sub_1D6151D78();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6151CD0()
{
  result = qword_1EDF225D0;
  if (!qword_1EDF225D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF225D0);
  }

  return result;
}

unint64_t sub_1D6151D24()
{
  result = qword_1EDF0AFE8;
  if (!qword_1EDF0AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AFE8);
  }

  return result;
}

unint64_t sub_1D6151D78()
{
  result = qword_1EC8844D8;
  if (!qword_1EC8844D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8844D8);
  }

  return result;
}

uint64_t sub_1D6151DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1D725ABEC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1D5C8A4FC(0, &unk_1EDF17770, sub_1D6152704, MEMORY[0x1E69D6C08]);
  v3[9] = swift_task_alloc();
  v5 = sub_1D725A9BC();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6151F58, 0, 0);
}

uint64_t sub_1D6151F58()
{
  v20 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v2 + 16);
  if (v5)
  {
    v16 = v4;
    v17 = v3;
    v6 = v0[5];
    v7 = sub_1D5B9A6D8(v5, 0);
    v8 = sub_1D5B9A6EC(v19, v7 + 4, v5, v6);
    v9 = v19[0];
    v10 = v19[1];
    v11 = v19[2];
    v12 = v19[3];
    v13 = v19[4];

    result = sub_1D5BA45DC(v9, v10, v11, v12, v13);
    if (v8 != v5)
    {
      __break(1u);
      return result;
    }

    v4 = v16;
    v3 = v17;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v0[13] = v7;
  v18 = (*(v4 + 48) + **(v4 + 48));
  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_1D615212C;

  return v18(v7, v3, v4);
}

uint64_t sub_1D615212C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_1D615251C;
  }

  else
  {

    v4 = sub_1D6152248;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

size_t sub_1D6152248()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    v2 = sub_1D7263BFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1D5C8A65C(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v17 = *(v0 + 120) + 32;
  v18 = (*(v0 + 56) + 16);
  v19 = v1 & 0xC000000000000001;
  v5 = v22;
  v20 = *(v0 + 88);
  v21 = v2;
  do
  {
    if (v19)
    {
      v6 = MEMORY[0x1DA6FB460](v4, *(v0 + 120));
    }

    else
    {
      v6 = *(v17 + 8 * v4);
      swift_unknownObjectRetain();
    }

    *(v0 + 16) = v6;
    v7 = qword_1EDF17D08;
    swift_unknownObjectRetain();
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = __swift_project_value_buffer(v9, qword_1EDF17D10);
    (*v18)(v8, v10, v9);
    v11 = swift_task_alloc();
    *v11 = sub_1D6152704();
    swift_getKeyPath();

    sub_1D725BF6C();
    sub_1D725A9AC();
    swift_unknownObjectRelease();
    v13 = *(v22 + 16);
    v12 = *(v22 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D5C8A65C(v12 > 1, v13 + 1, 1);
    }

    v14 = *(v0 + 96);
    v15 = *(v0 + 80);
    ++v4;
    *(v22 + 16) = v13 + 1;
    (*(v20 + 32))(v22 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v13, v14, v15);
  }

  while (v21 != v4);

LABEL_16:
  **(v0 + 24) = v5;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D615251C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D61525A4(uint64_t a1)
{
  v3 = *v1;
  sub_1D5C8A4FC(0, &qword_1EDF17970, sub_1D5C8A628, MEMORY[0x1E69D6B18]);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  return sub_1D725BA6C();
}

uint64_t sub_1D6152658(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64684;

  return sub_1D6151DDC(a1, v5, v4);
}

unint64_t sub_1D6152704()
{
  result = qword_1EDF3C750;
  if (!qword_1EDF3C750)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3C750);
  }

  return result;
}

uint64_t sub_1D61527E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v97 = a1;
  v89 = a3;
  sub_1D5F7BAC0();
  v96 = v4;
  v91 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v101 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v100 = &v84 - v9;
  v10 = type metadata accessor for DebugFormatCacheFile();
  v88 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v90 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v86 = (&v84 - v15);
  sub_1D61547C8(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D615474C(0);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21, v23);
  v99 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v84 - v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v29 = *(aBlock + 16);

  v30 = *(v29 + 24);
  v95 = *(v29 + 16);
  v103 = v30;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v31 = *(aBlock + 16);

  v32 = (v31 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  v33 = v32[1];
  v94 = *v32;
  v98 = v33;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v34 = *(aBlock + 16);

  v35 = (v34 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment);
  swift_beginAccess();
  v36 = v35[1];
  v93 = *v35;
  v102 = v36;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v37 = *(aBlock + 16);

  v38 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
  swift_beginAccess();
  v39 = *(v37 + v38);

  if (v39 == 4)
  {
    v104 = 0xE800000000000000;
    v92 = 0x6C61636974726576;
  }

  else
  {
    aBlock = 0;
    v107 = 0xE000000000000000;
    MEMORY[0x1DA6F9910](0x746E6F7A69726F68, 0xEB000000002D6C61);
    v105 = v39;
    sub_1D7263F9C();
    v92 = aBlock;
    v104 = v107;
  }

  *v20 = sub_1D726125C();
  *(v20 + 1) = 0;
  v20[16] = 1;
  sub_1D6155418();
  sub_1D615338C(v97, a2, &v20[*(v40 + 44)]);
  v41 = sub_1D72615EC();
  sub_1D61547FC(0);
  v43 = &v20[*(v42 + 36)];
  *v43 = v41;
  *(v43 + 8) = xmmword_1D72A38C0;
  *(v43 + 24) = xmmword_1D72A38C0;
  v43[40] = 0;
  v44 = &v20[*(v17 + 36)];
  *v44 = xmmword_1D7286690;
  *(v44 + 1) = xmmword_1D72866A0;
  v44[32] = 0;
  sub_1D7260EDC();
  sub_1D61552B8();
  sub_1D72617DC();
  sub_1D61556D4(v20, sub_1D61547C8);
  v45 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v110 = sub_1D6F34AFC;
  v111 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v107 = 1107296256;
  v108 = sub_1D6E0CD34;
  v109 = &block_descriptor_26;
  v46 = _Block_copy(&aBlock);
  [v45 initWithDynamicProvider_];
  _Block_release(v46);

  aBlock = sub_1D726189C();
  *&v28[*(v22 + 36)] = sub_1D726199C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v47 = *(aBlock + 40);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v48 = *(aBlock + 16);

  v50 = *(v48 + 16);
  v49 = *(v48 + 24);

  if (!*(v47 + 16))
  {
    v54 = v28;

    goto LABEL_11;
  }

  v51 = sub_1D6D62CD8(v50, v49, 3);
  v53 = v52;

  v54 = v28;
  if ((v53 & 1) == 0)
  {
LABEL_11:

    v63 = 0;
    v62 = 0;
    v88 = 0;
    v90 = 0;
    LODWORD(v97) = 0;
    goto LABEL_12;
  }

  v55 = *(v47 + 56) + *(v88 + 72) * v51;
  v56 = v90;
  sub_1D6155514(v55, v90, type metadata accessor for DebugFormatCacheFile);

  v57 = v56;
  v58 = v86;
  sub_1D61554B0(v57, v86);
  v59 = *v58;
  v60 = v58[1];
  aBlock = 47;
  v107 = 0xE100000000000000;
  MEMORY[0x1DA6F9910](v59, v60);
  v88 = aBlock;
  v90 = v107;
  if (sub_1D6154278())
  {
    v61 = 1;
  }

  else
  {
    v61 = 2;
  }

  LODWORD(v97) = v61;
  sub_1D615557C(v58, type metadata accessor for DebugFormatCacheFile);
  v62 = 0xE600000000000000;
  v63 = 0x656372756F53;
LABEL_12:
  v86 = v62;
  aBlock = 0;
  LOBYTE(v107) = 1;
  sub_1D7260EDC();
  v64 = v100;
  sub_1D72617DC();
  v87 = v54;
  v65 = v99;
  sub_1D5D7E650(v54, v99);
  v66 = v91;
  v67 = *(v91 + 16);
  v68 = v96;
  v67(v101, v64, v96);
  v69 = v89;
  *v89 = 0x696669746E656449;
  v69[1] = 0xEA00000000007265;
  v70 = v103;
  v69[2] = v95;
  v69[3] = v70;
  *(v69 + 32) = 2;
  v69[5] = 1701667150;
  v69[6] = 0xE400000000000000;
  v71 = v98;
  v69[7] = v94;
  v69[8] = v71;
  *(v69 + 72) = 2;
  v69[10] = 0x7470697263736544;
  v69[11] = 0xEB000000006E6F69;
  v72 = v102;
  v69[12] = v93;
  v69[13] = v72;
  *(v69 + 112) = 2;
  v69[15] = 0x6F69746365726944;
  v69[16] = 0xE90000000000006ELL;
  v73 = v104;
  v69[17] = v92;
  v69[18] = v73;
  *(v69 + 152) = 2;
  sub_1D6154694();
  v75 = v74;
  sub_1D5D7E650(v65, v69 + *(v74 + 96));
  v76 = v69 + *(v75 + 112);
  v85 = v63;
  *v76 = v63;
  *(v76 + 1) = v62;
  v77 = v90;
  *(v76 + 2) = v88;
  *(v76 + 3) = v77;
  v76[32] = v97;
  v78 = v69 + *(v75 + 128);
  v79 = v101;
  v67(v78, v101, v68);

  v80 = v85;
  v81 = v86;
  sub_1D60531A0(v85, v86);
  v82 = *(v66 + 8);
  v82(v100, v68);
  sub_1D61556D4(v87, sub_1D615474C);
  v82(v79, v68);
  sub_1D5D559EC(v80, v81);
  sub_1D61556D4(v99, sub_1D615474C);
}

uint64_t sub_1D615338C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v78 = a2;
  v77 = a1;
  v94 = a3;
  v3 = sub_1D726143C();
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v91 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D72614DC();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v6);
  v75 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6154B38();
  v84 = v8;
  v82 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v74 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6154A84();
  v83 = v11;
  v81 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v80 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6154A08(0);
  v85 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D615497C(0, &qword_1EC884528, sub_1D6154A08, sub_1D6155174);
  v90 = v18;
  v89 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v88 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v95 = &v74 - v23;
  sub_1D61555DC(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v74 - v26;
  sub_1D726121C();
  v28 = sub_1D726170C();
  v30 = v29;
  v32 = v31;
  v33 = sub_1D726163C();
  (*(*(v33 - 8) + 56))(v27, 1, 1, v33);
  sub_1D726167C();
  sub_1D6155640(v27);
  v34 = sub_1D72616DC();
  v36 = v35;
  v38 = v37;

  sub_1D5F26348(v28, v30, v32 & 1);

  sub_1D726187C();
  v39 = sub_1D72616BC();
  v41 = v40;
  v76 = v42;
  v79 = v43;

  v44 = v38 & 1;
  v45 = v74;
  sub_1D5F26348(v34, v36, v44);
  v46 = v75;

  sub_1D72615AC();
  v96 = v77;
  v97 = v78;
  sub_1D6154BCC();
  sub_1D615579C(&qword_1EC8845B0, sub_1D6154BCC);
  sub_1D7260E7C();
  sub_1D72614CC();
  sub_1D5B58338(0, &qword_1EC884608, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v48 = sub_1D72615CC();
  *(inited + 32) = v48;
  v49 = sub_1D72615AC();
  *(inited + 33) = v49;
  sub_1D72615BC();
  sub_1D72615BC();
  if (sub_1D72615BC() != v48)
  {
    sub_1D72615BC();
  }

  sub_1D72615BC();
  if (sub_1D72615BC() != v49)
  {
    sub_1D72615BC();
  }

  sub_1D615579C(&qword_1EC8845B8, sub_1D6154B38);
  v50 = v80;
  v51 = v84;
  sub_1D72617EC();
  (*(v86 + 8))(v46, v87);
  (*(v82 + 8))(v45, v51);
  LOBYTE(v51) = sub_1D72615DC();
  sub_1D7260E5C();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  (*(v81 + 32))(v17, v50, v83);
  v60 = v85;
  v61 = &v17[*(v85 + 36)];
  *v61 = v51;
  *(v61 + 1) = v53;
  *(v61 + 2) = v55;
  *(v61 + 3) = v57;
  *(v61 + 4) = v59;
  v61[40] = 0;
  v62 = sub_1D72615DC();
  v63 = v91;
  sub_1D726142C();
  v64 = sub_1D6155174();
  v65 = v95;
  MEMORY[0x1DA6F8E40](v62, 0x4030000000000000, 0, v63, v60, v64);
  (*(v92 + 8))(v63, v93);
  sub_1D61556D4(v17, sub_1D6154A08);
  v98 = v76 & 1;
  v66 = v89;
  v67 = *(v89 + 16);
  v68 = v88;
  v69 = v90;
  v67(v88, v65, v90);
  LOBYTE(v62) = v98;
  v70 = v94;
  *v94 = v39;
  v70[1] = v41;
  *(v70 + 16) = v62;
  v70[3] = v79;
  sub_1D61548D0();
  v67(v70 + *(v71 + 48), v68, v69);
  sub_1D5F26358(v39, v41, v62);
  v72 = *(v66 + 8);

  v72(v95, v69);
  v72(v68, v69);
  sub_1D5F26348(v39, v41, v98);
}

uint64_t sub_1D6153CD4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1D72611CC();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  sub_1D6155734();
  return sub_1D6153D30();
}

uint64_t sub_1D6153D30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v0 = *(v7[0] + 2);

  v1 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1D5B9A6D8(*(v2 + 16), 0);
  v5 = sub_1D5B9A6EC(v7, v4 + 4, v3, v2);
  sub_1D5BA45DC(v7[0], v7[1], v7[2], v7[3], v7[4]);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    v4 = MEMORY[0x1E69E7CC0];
  }

  v7[0] = v4;

  sub_1D5F81CCC(v7);

  swift_getKeyPath();
  sub_1D5B58338(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D6154D18(0, &qword_1EC884558, sub_1D6154D8C, sub_1D6154DE4);
  sub_1D6154F28();
  sub_1D615501C();
  return sub_1D72619DC();
}

double sub_1D6153F5C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D61555DC(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v41 - v6;
  v8 = *a1;
  v9 = a1[1];
  v42 = v8;
  v43 = v9;
  sub_1D5BF4D9C();

  v10 = sub_1D726171C();
  v12 = v11;
  v14 = v13;
  v15 = sub_1D726163C();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_1D726167C();
  sub_1D6155640(v7);
  v16 = sub_1D72616DC();
  v18 = v17;
  v20 = v19;

  sub_1D5F26348(v10, v12, v14 & 1);

  LODWORD(v42) = sub_1D726144C();
  v21 = sub_1D72616CC();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1D5F26348(v16, v18, v20 & 1);

  LOBYTE(v12) = sub_1D72615EC();
  LOBYTE(v18) = v25 & 1;
  LOBYTE(v42) = v25 & 1;
  v44 = 0;
  sub_1D6154D18(0, &qword_1EC884558, sub_1D6154D8C, sub_1D6154DE4);
  v29 = a2 + *(v28 + 36);
  v30 = *MEMORY[0x1E697F468];
  v31 = sub_1D726123C();
  (*(*(v31 - 8) + 104))(v29, v30, v31);
  v32 = [objc_opt_self() tertiarySystemBackgroundColor];
  v33 = sub_1D726189C();
  sub_1D6154E78();
  *(v29 + *(v34 + 52)) = v33;
  *(v29 + *(v34 + 56)) = 256;
  v35 = sub_1D7261A5C();
  v37 = v36;
  sub_1D6154DE4();
  v39 = (v29 + *(v38 + 36));
  *v39 = v35;
  v39[1] = v37;
  *a2 = v21;
  *(a2 + 8) = v23;
  *(a2 + 16) = v18;
  *(a2 + 24) = v27;
  *(a2 + 32) = v12;
  result = 4.0;
  *(a2 + 40) = xmmword_1D72A38D0;
  *(a2 + 56) = xmmword_1D72A38D0;
  *(a2 + 72) = 0;
  return result;
}

BOOL sub_1D6154278()
{
  v0 = type metadata accessor for DebugFormatCompilerResultEntry();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (!v13)
  {
    return 0;
  }

  if (*(v13 + 16))
  {
    sub_1D6155514(v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v4, type metadata accessor for DebugFormatCompilerResultEntry);

    v5 = *&v4[*(v0 + 24)];

    sub_1D615557C(v4, type metadata accessor for DebugFormatCompilerResultEntry);
    v6 = 0;
    v7 = *(v5 + 16);
    do
    {
      v8 = v7 != v6;
      if (v7 == v6)
      {
        break;
      }

      v9 = *(type metadata accessor for DebugFormatCacheFile() - 8);
      v10 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6++;
    }

    while (*(v10 + 24) != 1);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

double sub_1D615446C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x7475626972747441;
  *(a1 + 8) = 0xEA00000000007365;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 256;
  return result;
}

uint64_t sub_1D61544A4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v1;
  *(v3 + 40) = 1;
  *(v3 + 48) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  *(v4 + 40) = 1;
  *(v4 + 48) = 1;
  swift_retain_n();
  sub_1D72619BC();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  sub_1D61555DC(0, &qword_1EC8844E0, sub_1D6154694, MEMORY[0x1E6981F40]);
  sub_1D5F7BB40();
  sub_1D6155254(&qword_1EC8845F8, &qword_1EC8844E0, sub_1D6154694);

  return sub_1D7260FFC();
}

void sub_1D6154694()
{
  if (!qword_1EC8844E8)
  {
    sub_1D615474C(255);
    sub_1D5B58338(255, &qword_1EC8845F0, &type metadata for DebugFormatRowView, MEMORY[0x1E69E6720]);
    sub_1D5F7BAC0();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC8844E8);
    }
  }
}

void sub_1D615481C()
{
  if (!qword_1EC884510)
  {
    sub_1D61555DC(255, &qword_1EC884518, sub_1D61548D0, MEMORY[0x1E6981F40]);
    sub_1D6155254(&qword_1EC8845C8, &qword_1EC884518, sub_1D61548D0);
    v0 = sub_1D726198C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884510);
    }
  }
}

void sub_1D61548D0()
{
  if (!qword_1EC884520)
  {
    sub_1D615497C(255, &qword_1EC884528, sub_1D6154A08, sub_1D6155174);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC884520);
    }
  }
}

void sub_1D615497C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1D6154A28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726101C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D6154A84()
{
  if (!qword_1EC884538)
  {
    sub_1D6154B38();
    sub_1D615579C(&qword_1EC8845B8, sub_1D6154B38);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC884538);
    }
  }
}

void sub_1D6154B38()
{
  if (!qword_1EC884540)
  {
    sub_1D6154BCC();
    sub_1D615579C(&qword_1EC8845B0, sub_1D6154BCC);
    v0 = sub_1D7260E6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884540);
    }
  }
}

void sub_1D6154BCC()
{
  if (!qword_1EC884548)
  {
    sub_1D6154C30();
    sub_1D6154FA4();
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884548);
    }
  }
}

void sub_1D6154C30()
{
  if (!qword_1EC884550)
  {
    sub_1D5B58338(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D6154D18(255, &qword_1EC884558, sub_1D6154D8C, sub_1D6154DE4);
    sub_1D6154F28();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884550);
    }
  }
}

void sub_1D6154D18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6154D8C()
{
  if (!qword_1EC884560)
  {
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884560);
    }
  }
}

void sub_1D6154DE4()
{
  if (!qword_1EC884568)
  {
    sub_1D6154E78();
    sub_1D615579C(&qword_1EC884580, sub_1D6154E78);
    v0 = sub_1D726134C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884568);
    }
  }
}

void sub_1D6154E78()
{
  if (!qword_1EC884570)
  {
    sub_1D72619CC();
    sub_1D615579C(&qword_1EC884578, MEMORY[0x1E6981998]);
    v0 = sub_1D7260E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884570);
    }
  }
}

unint64_t sub_1D6154F28()
{
  result = qword_1EC884588;
  if (!qword_1EC884588)
  {
    sub_1D5B58338(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884588);
  }

  return result;
}

unint64_t sub_1D6154FA4()
{
  result = qword_1EC884590;
  if (!qword_1EC884590)
  {
    sub_1D6154C30();
    sub_1D615501C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884590);
  }

  return result;
}

unint64_t sub_1D615501C()
{
  result = qword_1EC884598;
  if (!qword_1EC884598)
  {
    sub_1D6154D18(255, &qword_1EC884558, sub_1D6154D8C, sub_1D6154DE4);
    sub_1D61550FC();
    sub_1D615579C(&qword_1EC8845A8, sub_1D6154DE4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884598);
  }

  return result;
}

unint64_t sub_1D61550FC()
{
  result = qword_1EC8845A0;
  if (!qword_1EC8845A0)
  {
    sub_1D6154D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8845A0);
  }

  return result;
}

unint64_t sub_1D6155174()
{
  result = qword_1EC8845C0;
  if (!qword_1EC8845C0)
  {
    sub_1D6154A08(255);
    sub_1D6154B38();
    sub_1D615579C(&qword_1EC8845B8, sub_1D6154B38);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8845C0);
  }

  return result;
}

uint64_t sub_1D6155254(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D61555DC(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D61552B8()
{
  result = qword_1EC8845D0;
  if (!qword_1EC8845D0)
  {
    sub_1D61547C8(255);
    sub_1D6155368();
    sub_1D615579C(&qword_1EC8845E8, sub_1D5F7B9E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8845D0);
  }

  return result;
}

unint64_t sub_1D6155368()
{
  result = qword_1EC8845D8;
  if (!qword_1EC8845D8)
  {
    sub_1D61547FC(255);
    sub_1D615579C(&qword_1EC8845E0, sub_1D615481C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8845D8);
  }

  return result;
}

void sub_1D6155418()
{
  if (!qword_1EC884600)
  {
    sub_1D61555DC(255, &qword_1EC884518, sub_1D61548D0, MEMORY[0x1E6981F40]);
    v0 = sub_1D7260F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884600);
    }
  }
}

uint64_t sub_1D61554B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatCacheFile();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6155514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D615557C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D61555DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6155640(uint64_t a1)
{
  sub_1D61555DC(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D61556D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6155734()
{
  if (!qword_1EC884610)
  {
    sub_1D6154C30();
    v0 = sub_1D7260F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884610);
    }
  }
}

uint64_t sub_1D615579C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D61557E4()
{
  if (!qword_1EC884620)
  {
    sub_1D61555DC(255, &qword_1EC8844E0, sub_1D6154694, MEMORY[0x1E6981F40]);
    sub_1D5F7BB40();
    sub_1D6155254(&qword_1EC8845F8, &qword_1EC8844E0, sub_1D6154694);
    v0 = sub_1D726100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884620);
    }
  }
}

uint64_t static FormatSlotItemTagFilterNotCondition.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v5);
  v3 = static FormatSlotItemTagFilterCondition.== infix(_:_:)(&v6, &v5);
  sub_1D5F33D8C(v5);
  sub_1D5F33D8C(v6);
  return v3 & 1;
}

unint64_t FormatSlotItemTagFilterNotCondition.condition.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D5F33D5C(v2);
}

unint64_t sub_1D6155928(uint64_t a1)
{
  result = sub_1D6155950();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6155950()
{
  result = qword_1EC884628;
  if (!qword_1EC884628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884628);
  }

  return result;
}

unint64_t sub_1D61559A4(void *a1)
{
  a1[1] = sub_1D61559DC();
  a1[2] = sub_1D6155A30();
  result = sub_1D6155A84();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61559DC()
{
  result = qword_1EC884630;
  if (!qword_1EC884630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884630);
  }

  return result;
}

unint64_t sub_1D6155A30()
{
  result = qword_1EC884638;
  if (!qword_1EC884638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884638);
  }

  return result;
}

unint64_t sub_1D6155A84()
{
  result = qword_1EC884640;
  if (!qword_1EC884640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884640);
  }

  return result;
}

uint64_t sub_1D6155B08(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v5);
  v3 = static FormatSlotItemTagFilterCondition.== infix(_:_:)(&v6, &v5);
  sub_1D5F33D8C(v5);
  sub_1D5F33D8C(v6);
  return v3 & 1;
}

uint64_t FeedClusteringResult.topicClusteringResult.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

NewsFeed::FeedClusteringResult __swiftcall FeedClusteringResult.init(channelClusteringResult:topicClusteringResult:inventoryItemsByTagID:)(NewsFeed::FeedChannelClusteringResult channelClusteringResult, NewsFeed::FeedTopicClusteringResult topicClusteringResult, Swift::OpaquePointer inventoryItemsByTagID)
{
  *v3 = *channelClusteringResult.clusters._rawValue;
  *(v3 + 8) = *topicClusteringResult.clusters._rawValue;
  *(v3 + 24) = topicClusteringResult.orphanedItems._rawValue;
  result.topicClusteringResult = topicClusteringResult;
  result.inventoryItemsByTagID = inventoryItemsByTagID;
  result.channelClusteringResult = channelClusteringResult;
  return result;
}

unint64_t static FeedClusteringResult.empty.getter@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D605D378(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = result;
  return result;
}

uint64_t FeedClusteringResult.scoredItems.getter()
{
  FeedChannelClusteringResult.scoredItems.getter();
  FeedTopicClusteringResult.scoredItems.getter();
  sub_1D6985340(v0);
  sub_1D6155CCC();
  sub_1D6155D1C();
  sub_1D6155D74();
  v1 = sub_1D726239C();

  return v1;
}

void sub_1D6155CCC()
{
  if (!qword_1EDF052B0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF052B0);
    }
  }
}

unint64_t sub_1D6155D1C()
{
  result = qword_1EDF052A0;
  if (!qword_1EDF052A0)
  {
    sub_1D6155CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF052A0);
  }

  return result;
}

unint64_t sub_1D6155D74()
{
  result = qword_1EDF154E0;
  if (!qword_1EDF154E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF154E0);
  }

  return result;
}

id FCSportsProviding.navigationBarBackgroundColor.getter()
{
  if ([v0 isSportsEvent])
  {
    v1 = [objc_opt_self() clearColor];

    return v1;
  }

  else
  {
    v3 = [v0 asSports];
    if (v3 && (v4 = [v3 sportsTheme], swift_unknownObjectRelease(), v4) && (v5 = objc_msgSend(v4, sel_sportsPrimaryColor), swift_unknownObjectRelease(), v5))
    {
      v6 = [v5 ne_color];

      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v15[4] = sub_1D5FCF5F4;
      v15[5] = v7;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1D6E0CD34;
      v15[3] = &block_descriptor_27;
      v9 = _Block_copy(v15);
      v10 = [v8 initWithDynamicProvider_];
      _Block_release(v9);

      return v10;
    }

    else
    {
      v11 = objc_opt_self();
      v12 = [v11 secondarySystemBackgroundColor];
      v13 = [v11 systemBackgroundColor];
      v14 = [v11 ts:v12 dynamicColor:v13 withDarkStyleVariant:?];

      return v14;
    }
  }
}

id FCSportsProviding.navigationBarForegroundColor.getter()
{
  if ([v0 isSportsEvent])
  {
    v1 = [objc_opt_self() whiteColor];

    return v1;
  }

  else
  {
    v3 = FCSportsProviding.navigationBarBackgroundColor.getter();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v8[4] = sub_1D61561B0;
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1D6E0CD34;
    v8[3] = &block_descriptor_6_0;
    v6 = _Block_copy(v8);
    v7 = [v5 initWithDynamicProvider_];
    _Block_release(v6);

    return v7;
  }
}

uint64_t sub_1D6156160(uint64_t a1, id a2)
{
  v2 = [a2 resolvedColorWithTraitCollection_];
  v3 = sub_1D726355C();

  return v3;
}

uint64_t FormatBindingTextExpressionLogic.Compare.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatBindingTextExpressionLogic.Binding.binding.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8 = *(v1 + 32);
  v3 = v8;
  v9 = *(v1 + 48);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1D5FD78CC(v7, v6);
}

uint64_t _s8NewsFeed32FormatBindingTextExpressionLogicO0D0V2eeoiySbAE_AEtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v25[0] = *a1;
  v25[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v25[2] = a1[2];
  v5 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v5;
  v7 = *a2;
  v6 = *(a2 + 16);
  v27[2] = *(a2 + 32);
  v21 = v4;
  v22 = v3;
  v23 = a1[2];
  v26 = *(a1 + 24);
  v8 = *(a1 + 50);
  v28 = *(a2 + 48);
  v9 = *(a2 + 50);
  v24 = *(a1 + 24);
  v17 = v7;
  v18 = v6;
  v19 = *(a2 + 32);
  v20 = *(a2 + 48);
  sub_1D5FD78CC(v25, v31);
  sub_1D5FD78CC(v27, v31);
  v10 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v21, &v17);
  v29[0] = v17;
  v29[1] = v18;
  v29[2] = v19;
  v30 = v20;
  sub_1D5FD7B18(v29);
  v31[0] = v21;
  v31[1] = v22;
  v31[2] = v23;
  v32 = v24;
  sub_1D5FD7B18(v31);
  if (v10)
  {
    LOBYTE(v21) = v8;
    LOBYTE(v17) = v9;
    v11 = FormatOperator.rawValue.getter();
    v13 = v12;
    if (v11 == FormatOperator.rawValue.getter() && v13 == v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1D72646CC();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t _s8NewsFeed32FormatBindingTextExpressionLogicO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 32);
  v6 = *(a1 + 50);
  v58 = *(a1 + 48);
  v7 = v58 | (v6 << 16);
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 50);
  v15 = *(a2 + 48);
  v16 = v15 | (v14 << 16);
  v55[0] = v3;
  v55[1] = v2;
  v56 = v5;
  v57 = v4;
  v59 = v6;
  v60 = v8;
  v61 = v9;
  v62 = v11;
  v63 = v10;
  v64 = v13;
  v65 = v12;
  v67 = v14;
  v17 = v6 >> 5;
  v66 = v15;
  if (v17 <= 2)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        if ((v16 & 0xE00000) != 0x200000)
        {
          goto LABEL_30;
        }
      }

      else if ((v16 & 0xE00000) != 0x400000)
      {
LABEL_30:

        goto LABEL_31;
      }
    }

    else if ((v16 & 0xFFFFFF) >= 0x200000)
    {
      goto LABEL_30;
    }

    v42 = v5;
    v45 = v4;
    if (v3 != v8 || v2 != v9)
    {
      v33 = sub_1D72646CC();
      v34 = v12;
      v22 = v33;
      sub_1D5CA8444(v8, v9, v11, v10, v13, v34, v16);
      sub_1D5CA8444(v3, v2, v42, *(&v42 + 1), v45, *(&v45 + 1), v7);
      sub_1D6157558(v55);
      return v22 & 1;
    }

    sub_1D5CA8444(v3, v2, v11, v10, v13, v12, v15 | (v14 << 16));
    sub_1D5CA8444(v3, v2, v42, *(&v42 + 1), v45, *(&v45 + 1), v7);
    goto LABEL_22;
  }

  if (v17 > 4)
  {
    if (v17 == 5)
    {
      if ((v16 & 0xE00000) == 0xA00000)
      {
        *&v50 = v3;
        *(&v50 + 1) = v2;
        v51 = v5;
        v52 = v4;
        v53 = v7;
        v54 = (v7 & 0x1FFFFF) >> 16;
        v47[0] = v8;
        v47[1] = v9;
        v47[2] = v11;
        v47[3] = v10;
        v47[4] = v13;
        v47[5] = v12;
        v48 = v15;
        v49 = BYTE2(v16) & 0x1F;
        v41 = v5;
        v44 = v4;
        sub_1D5CA8444(v8, v9, v11, v10, v13, v12, v16);
        sub_1D5CA8444(v3, v2, v41, *(&v41 + 1), v44, *(&v44 + 1), v7);
        sub_1D5CA8444(v8, v9, v11, v10, v13, v12, v16);
        sub_1D5CA8444(v3, v2, v41, *(&v41 + 1), v44, *(&v44 + 1), v7);
        v40 = v12;
        v22 = _s8NewsFeed32FormatBindingTextExpressionLogicO0D0V2eeoiySbAE_AEtFZ_0(&v50, v47);
        sub_1D6157558(v55);
        sub_1D5CA8488(v8, v9, v11, v10, v13, v40, v16);
        sub_1D5CA8488(v3, v2, v41, *(&v41 + 1), v44, *(&v44 + 1), v7);
        return v22 & 1;
      }

      *&v50 = v3;
      *(&v50 + 1) = v2;
      v51 = v5;
      v52 = v4;
      v53 = v7;
      v54 = (v7 & 0x1FFFFF) >> 16;
      sub_1D6157520(&v50, v47);
      goto LABEL_31;
    }

    if (v5 | v2 | v3 | v4 | *(&v5 + 1) | *(&v4 + 1) || v7 != 12582912)
    {
      if ((v16 & 0xE00000) != 0xC00000 || (v16 & 0xFFFFFF) != 0xC00000 || v8 != 1 || v11 | v9 | v10 | v13 | v12)
      {
        goto LABEL_31;
      }
    }

    else if ((v16 & 0xE00000) != 0xC00000 || v11 | v9 | v8 | v10 | v13 | v12 || (v16 & 0xFFFFFF) != 0xC00000)
    {
      goto LABEL_31;
    }

LABEL_22:
    sub_1D6157558(v55);
    v22 = 1;
    return v22 & 1;
  }

  if (v17 != 3)
  {
    if ((v16 & 0xE00000) == 0x800000)
    {
      v43 = *(&v5 + 1);
      v46 = v4;
      v39 = v5;
      if (v3 == v8 && v2 == v9 || (sub_1D72646CC() & 1) != 0)
      {
        LOBYTE(v50) = v39;
        LOBYTE(v47[0]) = v11;
        v36 = FormatOperator.rawValue.getter();
        v38 = v23;
        if (v36 == FormatOperator.rawValue.getter() && v38 == v24)
        {
          v37 = 1;
        }

        else
        {
          v37 = sub_1D72646CC();
        }

        sub_1D5CA8444(v8, v9, v11, v10, v13, v12, v16);
        sub_1D5CA8444(v3, v2, v39, v43, v46, *(&v46 + 1), v7);
        sub_1D5CA8444(v8, v9, v11, v10, v13, v12, v16);
        sub_1D5CA8444(v3, v2, v39, v43, v46, *(&v46 + 1), v7);
        sub_1D6157558(v55);

        sub_1D5CA8488(v8, v9, v11, v10, v13, v12, v16);
        sub_1D5CA8488(v3, v2, v39, v43, v46, *(&v46 + 1), v7);
        if (v37)
        {
          goto LABEL_53;
        }

        goto LABEL_34;
      }

      sub_1D5CA8444(v8, v9, v11, v10, v13, v12, v16);
      v28 = v43;
      v30 = *(&v46 + 1);
      v29 = v46;
      v25 = v3;
      v26 = v2;
      v27 = v39;
      v31 = v7;
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if ((v16 & 0xE00000) != 0x600000)
  {
LABEL_31:
    v25 = v8;
    v26 = v9;
    v27 = v11;
    v28 = v10;
    v29 = v13;
    v30 = v12;
    v31 = v16;
LABEL_32:
    sub_1D5CA8444(v25, v26, v27, v28, v29, v30, v31);
    goto LABEL_33;
  }

  if (v3 != v8)
  {
LABEL_33:
    sub_1D6157558(v55);
    goto LABEL_34;
  }

  LOBYTE(v50) = v2;
  LOBYTE(v47[0]) = v9;
  v18 = FormatOperator.rawValue.getter();
  v20 = v19;
  if (v18 != FormatOperator.rawValue.getter() || v20 != v21)
  {
    v35 = sub_1D72646CC();
    sub_1D6157558(v55);

    if (v35)
    {
LABEL_53:
      v22 = 1;
      return v22 & 1;
    }

LABEL_34:
    v22 = 0;
    return v22 & 1;
  }

  sub_1D6157558(v55);

  v22 = 1;
  return v22 & 1;
}

uint64_t _s8NewsFeed32FormatBindingTextExpressionLogicO6LengthV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = FormatOperator.rawValue.getter();
    v4 = v3;
    if (v2 == FormatOperator.rawValue.getter() && v4 == v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1D72646CC();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t _s8NewsFeed32FormatBindingTextExpressionLogicO7CompareV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = 0, (sub_1D72646CC() & 1) != 0))
  {
    v4 = FormatOperator.rawValue.getter();
    v6 = v5;
    if (v4 == FormatOperator.rawValue.getter() && v6 == v7)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1D72646CC();
    }
  }

  return v3 & 1;
}

unint64_t sub_1D6156CBC(uint64_t a1)
{
  result = sub_1D6156CE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6156CE4()
{
  result = qword_1EC884648;
  if (!qword_1EC884648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884648);
  }

  return result;
}

unint64_t sub_1D6156D78()
{
  result = qword_1EC884650;
  if (!qword_1EC884650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884650);
  }

  return result;
}

unint64_t sub_1D6156DCC()
{
  result = qword_1EC884658;
  if (!qword_1EC884658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884658);
  }

  return result;
}

unint64_t sub_1D6156E20()
{
  result = qword_1EC884660;
  if (!qword_1EC884660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884660);
  }

  return result;
}

unint64_t sub_1D6156E74(uint64_t a1)
{
  result = sub_1D6156E9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6156E9C()
{
  result = qword_1EC884668;
  if (!qword_1EC884668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884668);
  }

  return result;
}

unint64_t sub_1D6156F30()
{
  result = qword_1EDF1F258;
  if (!qword_1EDF1F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F258);
  }

  return result;
}

unint64_t sub_1D6156F84()
{
  result = qword_1EDF082A0;
  if (!qword_1EDF082A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF082A0);
  }

  return result;
}

unint64_t sub_1D6156FD8()
{
  result = qword_1EC884670;
  if (!qword_1EC884670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884670);
  }

  return result;
}

unint64_t sub_1D615702C(uint64_t a1)
{
  result = sub_1D6157054();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6157054()
{
  result = qword_1EC884678;
  if (!qword_1EC884678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884678);
  }

  return result;
}

unint64_t sub_1D61570E8()
{
  result = qword_1EDF082B0;
  if (!qword_1EDF082B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF082B0);
  }

  return result;
}

unint64_t sub_1D615713C()
{
  result = qword_1EDF082B8;
  if (!qword_1EDF082B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF082B8);
  }

  return result;
}

unint64_t sub_1D6157190()
{
  result = qword_1EC884680;
  if (!qword_1EC884680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884680);
  }

  return result;
}

unint64_t sub_1D61571E4(uint64_t a1)
{
  result = sub_1D615720C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D615720C()
{
  result = qword_1EC884688;
  if (!qword_1EC884688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884688);
  }

  return result;
}

uint64_t sub_1D61572A0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61572F4()
{
  result = qword_1EC884690;
  if (!qword_1EC884690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884690);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed32FormatBindingTextExpressionLogicO(uint64_t a1)
{
  v1 = *(a1 + 50);
  if ((v1 >> 6) <= 2u)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1D6157368(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x1F;
  *result = v2;
  return result;
}

uint64_t sub_1D6157384(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 48);
    result += 48;
    v3 = (v2 | (*(result + 2) << 16)) & 0xF07FF | (a2 << 21);
    *result = v2 & 0x7FF;
    *(result + 2) = BYTE2(v3);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 50) = -64;
    *(result + 48) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatLayoutExpression(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 9))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 0xC;
  v5 = v3 - 12;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D615744C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F2 && *(a1 + 51))
  {
    return (*a1 + 498);
  }

  v3 = ((*(a1 + 48) >> 3) & 1 | (2 * *(a1 + 49))) ^ 0x1FF;
  if (v3 >= 0x1F1)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D61574A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1F1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 498;
    if (a3 >= 0x1F2)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F2)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 8 * (-a2 & 1);
      *(result + 49) = -a2 >> 1;
    }
  }

  return result;
}

uint64_t sub_1D6157558(uint64_t a1)
{
  sub_1D61575B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D61575B4()
{
  if (!qword_1EC884698)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC884698);
    }
  }
}

uint64_t FormatCustomNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatCustomNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatCustomNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatCustomNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t FormatCustomNodeStyle.__allocating_init(identifier:class:ignoresSmartInvertColors:options:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  swift_beginAccess();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  swift_beginAccess();
  *(v14 + 64) = a7;
  return v14;
}

uint64_t FormatCustomNodeStyle.init(identifier:class:ignoresSmartInvertColors:options:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  swift_beginAccess();
  *(v7 + 64) = a7;
  return v7;
}

uint64_t FormatCustomNodeStyle.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatCustomNodeStyle.init(from:)(a1);
  return v2;
}

uint64_t FormatCustomNodeStyle.init(from:)(void *a1)
{
  v2 = v1;
  v57 = *v2;
  v4 = type metadata accessor for FormatOption();
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61582C4(0, &qword_1EDF3BCA0, sub_1D6158160, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v54 = &v52 - v9;
  v10 = sub_1D725895C();
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D615AD94(0, &qword_1EDF19C10, sub_1D6158270, &type metadata for FormatCustomNodeStyle.CodingKeys, MEMORY[0x1E69E6F48]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v52 - v18;
  v20 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D6158270();
  v21 = v59;
  sub_1D7264B0C();
  if (v21)
  {
    v22 = v60;
LABEL_9:
    swift_deallocPartialClassInstance();
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v58);
    return v22;
  }

  v23 = v56;
  v24 = v10;
  v63 = 0;
  v25 = sub_1D726422C();
  v52 = 0;
  v22 = v60;
  v59 = v19;
  if (v26)
  {
    v27 = v26;
    v28 = v25;
  }

  else
  {
    v29 = v13;
    sub_1D725894C();
    v28 = sub_1D725893C();
    v27 = v30;
    (*(v23 + 8))(v29, v24);
  }

  swift_beginAccess();
  *(v22 + 16) = v28;
  *(v22 + 24) = v27;
  LOBYTE(v62) = 1;
  v31 = v59;
  v32 = v52;
  v33 = sub_1D72642BC();
  v35 = v16;
  if (v32)
  {
    (*(v16 + 8))(v31, v15);

    goto LABEL_9;
  }

  *(v22 + 32) = v33;
  *(v22 + 40) = v34;
  LOBYTE(v62) = 2;
  *(v22 + 48) = sub_1D726423C();
  sub_1D61582C4(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
  LOBYTE(v61) = 3;
  sub_1D5C4D790(&qword_1EDF1B350, &unk_1EDF45930);
  sub_1D726427C();
  *(v22 + 56) = v62;
  sub_1D6158160();
  v38 = v37;
  LOBYTE(v62) = 4;
  sub_1D6158328(&qword_1EDF3BCB0, 255, sub_1D6158160);
  v39 = v54;
  sub_1D726427C();
  v40 = *(v38 - 8);
  if ((*(v40 + 48))(v39, 1, v38) == 1)
  {
    sub_1D615A658(v39, &qword_1EDF3BCA0, sub_1D6158160);
    v41 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v41 = sub_1D725A74C();
    (*(v40 + 8))(v39, v38);
  }

  swift_beginAccess();
  *(v22 + 64) = v41;
  v42 = *(v22 + 56);
  if (!v42)
  {
LABEL_21:
    (*(v35 + 8))(v59, v15);
    goto LABEL_10;
  }

  v43 = *(v42 + 16);

  v44 = v53;
  if (!v43)
  {
LABEL_20:

    goto LABEL_21;
  }

  v45 = 0;
  while (v45 < *(v42 + 16))
  {
    sub_1D5D2477C(v42 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v45, v44);
    v61 = v44[2];
    FormatOptionValue.type.getter(&v64);
    if (v64 == 2)
    {

      v47 = *v44;
      v46 = v44[1];
      v49 = *(v22 + 32);
      v48 = *(v22 + 40);
      sub_1D5E2D970();
      swift_allocError();
      *v50 = v47;
      v50[1] = v46;
      v50[2] = v49;
      v50[3] = v48;
      v50[4] = 0x1000000000000000;
      swift_willThrow();
      v51 = *(v35 + 8);

      v51(v59, v15);
      sub_1D5D288C4(v44, type metadata accessor for FormatOption);

      goto LABEL_10;
    }

    ++v45;
    result = sub_1D5D288C4(v44, type metadata accessor for FormatOption);
    if (v43 == v45)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void sub_1D6158160()
{
  if (!qword_1EDF3BCA8)
  {
    sub_1D61581C8();
    sub_1D615821C();
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BCA8);
    }
  }
}

unint64_t sub_1D61581C8()
{
  result = qword_1EDF29A18;
  if (!qword_1EDF29A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A18);
  }

  return result;
}

unint64_t sub_1D615821C()
{
  result = qword_1EDF29A20;
  if (!qword_1EDF29A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A20);
  }

  return result;
}

unint64_t sub_1D6158270()
{
  result = qword_1EDF29A50;
  if (!qword_1EDF29A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A50);
  }

  return result;
}

void sub_1D61582C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6158328(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t FormatCustomNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D61582C4(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v145 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v150 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v151 = &v145 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v152 = &v145 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v145 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v145 - v24;
  sub_1D615A52C();
  v161 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = sub_1D6158270();
  sub_1D5D2EE70(v4, &type metadata for FormatCustomNodeStyle.CodingKeys, v33, v30, v4, &type metadata for FormatCustomNodeStyle.CodingKeys, &type metadata for FormatVersions.JazzkonG, v31, v29, v32, &off_1F51F6BF8);
  swift_beginAccess();
  v159 = v2;
  v34 = v2[2];
  v35 = v2[3];
  v36 = qword_1EDF31EA8;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = sub_1D725BD1C();
  v38 = __swift_project_value_buffer(v37, qword_1EDFFCD18);
  v39 = *(v37 - 8);
  v40 = *(v39 + 16);
  v157 = v39 + 16;
  v158 = v40;
  v40(v25, v38, v37);
  v160 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v41 = sub_1D725895C();
  v42 = (*(*(v41 - 8) + 48))(v8, 1, v41);
  v154 = v38;
  v155 = v37;
  v156 = v21;
  if (v42 == 1)
  {
    v149 = v34;
    sub_1D615A658(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
    v43 = v161;
    v44 = &v29[*(v161 + 11)];
    v46 = *v44;
    v45 = *(v44 + 1);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = v46;
    *(v47 + 32) = v45;
    sub_1D615AD94(0, &qword_1EDF02668, sub_1D6158270, &type metadata for FormatCustomNodeStyle.CodingKeys, MEMORY[0x1E69E6F58]);
    v49 = v48;
    sub_1D615A5C8();

    v153 = v49;
    v50 = sub_1D72647CC();
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = 0;
    v52 = __swift_project_boxed_opaque_existential_1(&v29[*(v43 + 9)], *&v29[*(v43 + 9) + 24]);
    MEMORY[0x1EEE9AC00](v52, v53);
    MEMORY[0x1EEE9AC00](v54, v55);
    *(&v145 - 4) = sub_1D5B4AA6C;
    *(&v145 - 3) = 0;
    v143 = sub_1D615A6C8;
    v144 = v47;
    v56 = v162;
    v58 = sub_1D5D2F7A4(v25, sub_1D60566B0, v57, sub_1D60565EC, (&v145 - 6));
    v162 = v56;
    if (v56)
    {
      sub_1D5D288C4(v25, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D288C4(v29, sub_1D615A52C);
    }

    v85 = v58;

    if (v85)
    {
      LOBYTE(v163) = 0;
      v164 = v149;
      v165 = v35;
      v86 = v162;
      sub_1D72647EC();

      sub_1D5D288C4(v25, type metadata accessor for FormatVersionRequirement);
      v38 = v154;
      v37 = v155;
      v60 = v161;
      if (v86)
      {
        v84 = v29;
        return sub_1D5D288C4(v84, sub_1D615A52C);
      }

      v162 = 0;
      v21 = v156;
    }

    else
    {
      sub_1D5D288C4(v25, type metadata accessor for FormatVersionRequirement);

      v38 = v154;
      v37 = v155;
      v60 = v161;
      v21 = v156;
    }
  }

  else
  {
    sub_1D5D288C4(v25, type metadata accessor for FormatVersionRequirement);

    sub_1D615A658(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
    v60 = v161;
  }

  v61 = v159[4];
  v62 = v159[5];
  v158(v21, v38, v37);
  swift_storeEnumTagMultiPayload();
  v164 = v61;
  v165 = v62;
  LOBYTE(v163) = 1;
  v63 = &v29[*(v60 + 11)];
  v64 = *v63;
  v65 = *(v63 + 1);
  v66 = swift_allocObject();
  v153 = &v145;
  *(v66 + 16) = 1;
  *(v66 + 24) = v64;
  *(v66 + 32) = v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  *(&v145 - 4) = sub_1D5B4AA6C;
  *(&v145 - 3) = 0;
  v143 = sub_1D615B4A0;
  v144 = v68;
  v69 = swift_allocObject();
  *(v69 + 16) = 1;
  v147 = v64;
  *(v69 + 24) = v64;
  *(v69 + 32) = v65;
  sub_1D615AD94(0, &qword_1EDF02668, sub_1D6158270, &type metadata for FormatCustomNodeStyle.CodingKeys, MEMORY[0x1E69E6F58]);
  v71 = v70;
  v72 = sub_1D615A5C8();
  swift_retain_n();
  v148 = v71;
  v149 = v72;
  v73 = sub_1D72647CC();
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = 1;
  v75 = *(v60 + 9);
  v161 = v29;
  v76 = &v29[v75];
  v77 = __swift_project_boxed_opaque_existential_1(&v29[v75], *&v29[v75 + 24]);
  MEMORY[0x1EEE9AC00](v77, v78);
  MEMORY[0x1EEE9AC00](v79, v80);
  *(&v145 - 4) = sub_1D60565EC;
  *(&v145 - 3) = (&v145 - 6);
  v143 = sub_1D615B4A0;
  v144 = v69;
  v81 = v156;
  v82 = v162;
  sub_1D5D2BC70(v156, sub_1D60566B0, v83, sub_1D60565EC, (&v145 - 6));
  if (!v82)
  {
    v145 = v76;
    v146 = v65;

    sub_1D72647EC();
    v162 = 0;
    sub_1D5D288C4(v81, type metadata accessor for FormatVersionRequirement);

    v87 = v159;
    v88 = *(v159 + 48);
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v89 = v155;
    v90 = __swift_project_value_buffer(v155, qword_1EDFFCDE0);
    v91 = v158;
    v158(v152, v90, v89);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v164) = 2;
    v92 = swift_allocObject();
    v94 = v92;
    *(v92 + 16) = 2;
    v95 = v147;
    v96 = v146;
    *(v92 + 24) = v147;
    *(v92 + 32) = v96;
    if (v88 == 2)
    {

      v97 = v161;
      v98 = v151;
    }

    else
    {
      v156 = &v145;
      LOBYTE(v163) = v88 & 1;
      MEMORY[0x1EEE9AC00](v92, v93);
      *(&v145 - 4) = sub_1D5B4AA6C;
      *(&v145 - 3) = 0;
      v143 = sub_1D615B4A0;
      v144 = v94;
      v116 = swift_allocObject();
      *(v116 + 16) = 2;
      *(v116 + 24) = v95;
      *(v116 + 32) = v96;
      swift_retain_n();
      v117 = sub_1D72647CC();
      v118 = swift_allocObject();
      *(v118 + 16) = v117;
      *(v118 + 24) = 2;
      v119 = __swift_project_boxed_opaque_existential_1(v145, *(v145 + 3));
      MEMORY[0x1EEE9AC00](v119, v120);
      MEMORY[0x1EEE9AC00](v121, v122);
      *(&v145 - 4) = sub_1D615B4A4;
      *(&v145 - 3) = (&v145 - 6);
      v143 = sub_1D615B4A0;
      v144 = v116;
      v123 = v152;
      v124 = v162;
      v126 = sub_1D5D2F7A4(v152, sub_1D615B49C, v125, sub_1D615B4A4, (&v145 - 6));
      if (v124)
      {
        sub_1D5D288C4(v123, type metadata accessor for FormatVersionRequirement);

        v97 = v161;
LABEL_40:
        v84 = v97;
        return sub_1D5D288C4(v84, sub_1D615A52C);
      }

      v127 = v126;

      if (v127)
      {
        v97 = v161;
        sub_1D72647EC();
        v89 = v155;
        v96 = v146;
        v87 = v159;
        v162 = 0;
        v98 = v151;
        v91 = v158;
      }

      else
      {
        v162 = 0;
        v97 = v161;
        v98 = v151;
        v89 = v155;
        v91 = v158;
        v96 = v146;
        v87 = v159;
      }
    }

    sub_1D5D288C4(v152, type metadata accessor for FormatVersionRequirement);

    v99 = v87[7];
    v91(v98, v154, v89);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v163) = 3;
    v100 = swift_allocObject();
    v102 = v100;
    *(v100 + 16) = 3;
    v103 = v147;
    *(v100 + 24) = v147;
    *(v100 + 32) = v96;
    if (v99)
    {
      v156 = &v145;
      v164 = v99;
      MEMORY[0x1EEE9AC00](v100, v101);
      *(&v145 - 4) = sub_1D5B4AA6C;
      *(&v145 - 3) = 0;
      v143 = sub_1D615B4A0;
      v144 = v102;
      v104 = swift_allocObject();
      *(v104 + 16) = 3;
      *(v104 + 24) = v103;
      *(v104 + 32) = v96;
      swift_retain_n();

      v105 = sub_1D72647CC();
      v106 = swift_allocObject();
      *(v106 + 16) = v105;
      *(v106 + 24) = 3;
      v107 = __swift_project_boxed_opaque_existential_1(v145, *(v145 + 3));
      MEMORY[0x1EEE9AC00](v107, v108);
      MEMORY[0x1EEE9AC00](v109, v110);
      *(&v145 - 4) = sub_1D60565EC;
      *(&v145 - 3) = (&v145 - 6);
      v143 = sub_1D615B4A0;
      v144 = v104;
      v111 = v162;
      v113 = sub_1D5D2F7A4(v98, sub_1D615B49C, v112, sub_1D615B4A4, (&v145 - 6));
      v114 = v111;
      if (v111)
      {

        v97 = v161;
        v115 = v151;
LABEL_39:
        sub_1D5D288C4(v115, type metadata accessor for FormatVersionRequirement);
        goto LABEL_40;
      }

      v128 = v113;

      if (v128)
      {
        sub_1D61582C4(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
        sub_1D5C4D790(&qword_1EDF050B0, &qword_1EDF45940);
        v97 = v161;
        sub_1D72647EC();
        v89 = v155;
        v96 = v146;
        v129 = v159;

        sub_1D5D288C4(v151, type metadata accessor for FormatVersionRequirement);
LABEL_33:
        swift_beginAccess();
        v130 = v129[8];
        v131 = v150;
        v158(v150, v154, v89);
        swift_storeEnumTagMultiPayload();
        if (*(v130 + 16))
        {
          v132 = swift_allocObject();
          v133 = v97;
          *(v132 + 16) = 4;
          *(v132 + 24) = v147;
          *(v132 + 32) = v96;

          v134 = sub_1D72647CC();
          v135 = swift_allocObject();
          *(v135 + 16) = v134;
          *(v135 + 24) = 4;
          v136 = __swift_project_boxed_opaque_existential_1(v145, *(v145 + 3));
          MEMORY[0x1EEE9AC00](v136, v137);
          MEMORY[0x1EEE9AC00](v138, v139);
          *(&v145 - 4) = sub_1D5B4AA6C;
          *(&v145 - 3) = 0;
          v143 = sub_1D615B4A0;
          v144 = v132;
          v141 = sub_1D5D2F7A4(v131, sub_1D615B49C, v140, sub_1D615B4A4, (&v145 - 6));
          if (v114)
          {
            sub_1D5D288C4(v131, type metadata accessor for FormatVersionRequirement);

            v84 = v133;
            return sub_1D5D288C4(v84, sub_1D615A52C);
          }

          v142 = v141;

          if ((v142 & 1) == 0)
          {
            sub_1D5D288C4(v131, type metadata accessor for FormatVersionRequirement);

            v84 = v161;
            return sub_1D5D288C4(v84, sub_1D615A52C);
          }

          v166 = 4;
          v163 = v130;
          sub_1D615A7A8();
          sub_1D615A7F8();
          v97 = v161;
          sub_1D72647EC();
        }

        v115 = v131;
        goto LABEL_39;
      }

      sub_1D5D288C4(v151, type metadata accessor for FormatVersionRequirement);
      v97 = v161;
      v89 = v155;
      v96 = v146;
    }

    else
    {

      sub_1D5D288C4(v98, type metadata accessor for FormatVersionRequirement);

      v114 = v162;
    }

    v129 = v159;
    goto LABEL_33;
  }

  sub_1D5D288C4(v81, type metadata accessor for FormatVersionRequirement);

  v84 = v161;
  return sub_1D5D288C4(v84, sub_1D615A52C);
}

uint64_t sub_1D6159810()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61598FC()
{
  sub_1D72621EC();
}

uint64_t sub_1D61599D4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6159ABC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D615AD48();
  *a1 = result;
  return result;
}

void sub_1D6159AEC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0x80000001D73BAF80;
  v6 = 0xD000000000000018;
  v7 = 0xE700000000000000;
  v8 = 0x736E6F6974706FLL;
  if (v2 != 3)
  {
    v8 = 0x726F7463656C6573;
    v7 = 0xE900000000000073;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7373616C63;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1D6159B94()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000018;
  v4 = 0x736E6F6974706FLL;
  if (v1 != 3)
  {
    v4 = 0x726F7463656C6573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7373616C63;
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

uint64_t sub_1D6159C38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D615AD48();
  *a1 = result;
  return result;
}

uint64_t sub_1D6159C60(uint64_t a1)
{
  v2 = sub_1D6158270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6159C9C(uint64_t a1)
{
  v2 = sub_1D6158270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6159CD8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698D844(0, v5, 0, MEMORY[0x1E69E7CC0]);
  result = sub_1D698D6DC(0, v5, 0, v6);
  v49 = result;
  v52 = *(v4 + 16);
  if (v52)
  {
    v9 = 0;
    v50 = v4;
    v51 = v4 + 32;
    while (v9 < *(v4 + 16))
    {
      v59 = v7;
      v10 = v51 + 32 * v9;
      v12 = *v10;
      v11 = *(v10 + 8);
      v54 = *(v10 + 16);
      v13 = *(v10 + 24);
      v14 = qword_1EDF2AB18;

      v55 = v13;

      if (v14 != -1)
      {
        swift_once();
      }

      v53 = v12;
      v62[0] = v12;
      v62[1] = v11;
      v57 = v11;

      v15 = sub_1D6844380(v62);

      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = 0;
        v18 = 32;
        while (1)
        {
          if (v17 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_34;
          }

          v20 = *(v15 + v18 + 16);
          v19 = *(v15 + v18 + 32);
          v21 = *(v15 + v18);
          v64 = *(v15 + v18 + 48);
          v63[1] = v20;
          v63[2] = v19;
          v63[0] = v21;
          v22 = v20;
          sub_1D5E3B610(v63, v62);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v17;
          result = sub_1D5E3B66C(v63);
          v18 += 56;
          if (v16 == v17)
          {
            goto LABEL_3;
          }
        }

        result = sub_1D5E3B66C(v63);
        if (v22 <= 1)
        {
          v7 = v59;
          v27 = *(v59 + 2);
          v26 = *(v59 + 3);
          if (v27 >= v26 >> 1)
          {
            result = sub_1D698D844((v26 > 1), v27 + 1, 1, v59);
            v7 = result;
          }

          v4 = v50;
          *(v7 + 2) = v27 + 1;
          v28 = &v7[32 * v27];
          *(v28 + 4) = v53;
          *(v28 + 5) = v57;
          v28[48] = v54;
          *(v28 + 7) = v55;
        }

        else
        {
          v23 = v49[2];
          v24 = v49[3];

          if (v23 >= v24 >> 1)
          {
            v49 = sub_1D698D6DC((v24 > 1), v23 + 1, 1, v49);
          }

          v4 = v50;

          v49[2] = v23 + 1;
          v25 = &v49[5 * v23];
          v25[4] = v53;
          v25[5] = v57;
          *(v25 + 48) = v54;
          v25[7] = v55;
          v25[8] = v22;
          v7 = v59;
        }
      }

      else
      {
LABEL_3:

        v7 = v59;
        v4 = v50;
      }

      if (++v9 == v52)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:

    sub_1D615AD94(0, &unk_1EDF217F0, sub_1D615ADFC, &type metadata for FormatCustomNodeStyle.Selector, type metadata accessor for FormatNodeStyleSelectorOrder);
    v29 = sub_1D72626AC();

    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = (v29 + 56);
      do
      {
        v32 = *(v31 - 2);
        v60 = *(v31 - 3);
        v33 = *(v31 - 8);
        v34 = *v31;
        v36 = *(v7 + 2);
        v35 = *(v7 + 3);
        v37 = v7;

        if (v36 >= v35 >> 1)
        {
          v37 = sub_1D698D844((v35 > 1), v36 + 1, 1, v7);
        }

        v31 += 5;
        *(v37 + 2) = v36 + 1;
        v7 = v37;
        v38 = &v37[32 * v36];
        *(v38 + 4) = v60;
        *(v38 + 5) = v32;
        v38[48] = v33;
        *(v38 + 7) = v34;
        --v30;
      }

      while (v30);
    }

    v39 = *(v7 + 2);

    if (!v39)
    {
LABEL_32:

      return v2;
    }

    v40 = 0;
    v41 = (v7 + 56);
    v61 = v7;
    while (v40 < *(v7 + 2))
    {
      v47 = *v41;
      v48 = *(v41 - 8);
      swift_beginAccess();
      if (v48 == 2)
      {
        LOBYTE(v48) = *(v2 + 48);
      }

      ++v40;
      v42 = *(v2 + 24);
      v43 = *(v2 + 40);
      v56 = *(v2 + 32);
      v58 = *(v2 + 16);
      v44 = *(v2 + 56);

      v45 = sub_1D6FCAE0C(v47, v44);
      swift_beginAccess();
      v46 = *(v2 + 64);

      v2 = swift_allocObject();
      swift_beginAccess();
      *(v2 + 16) = v58;
      *(v2 + 24) = v42;
      *(v2 + 32) = v56;
      *(v2 + 40) = v43;
      *(v2 + 48) = v48;
      *(v2 + 56) = v45;
      swift_beginAccess();
      *(v2 + 64) = v46;

      v41 += 4;
      v7 = v61;
      if (v39 == v40)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D615A288()
{
  v1 = v0;
  swift_beginAccess();
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v1 + 48);
  v7 = v1[7];

  if (v7)
  {
    v7 = sub_1D600BB30(v7);
  }

  swift_beginAccess();
  v8 = v1[8];
  v9 = swift_allocObject();
  swift_beginAccess();
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  swift_beginAccess();
  *(v9 + 64) = v8;

  return v9;
}

uint64_t FormatCustomNodeStyle.deinit()
{

  return v0;
}

uint64_t FormatCustomNodeStyle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D615A444@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatCustomNodeStyle.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t FormatCustomNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_1D615A52C()
{
  if (!qword_1EDF087B0)
  {
    sub_1D615AD94(255, &qword_1EDF02668, sub_1D6158270, &type metadata for FormatCustomNodeStyle.CodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D615A5C8();
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF087B0);
    }
  }
}

unint64_t sub_1D615A5C8()
{
  result = qword_1EDF02670;
  if (!qword_1EDF02670)
  {
    sub_1D615AD94(255, &qword_1EDF02668, sub_1D6158270, &type metadata for FormatCustomNodeStyle.CodingKeys, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF02670);
  }

  return result;
}

uint64_t sub_1D615A658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D61582C4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D615A6F4(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1D5B67740(0, &qword_1EDF01CF0, &qword_1EDF01CC8, MEMORY[0x1E69E7C30], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatCustomNodeStyle.CodingKeys;
  *(inited + 64) = sub_1D6158270();
  *(inited + 32) = v3;

  sub_1D5D291B8(inited);
  return a1;
}

void sub_1D615A7A8()
{
  if (!qword_1EDF04DF8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04DF8);
    }
  }
}

unint64_t sub_1D615A7F8()
{
  result = qword_1EDF04DF0;
  if (!qword_1EDF04DF0)
  {
    sub_1D615A7A8();
    sub_1D615821C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04DF0);
  }

  return result;
}

uint64_t _s8NewsFeed21FormatCustomNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

LABEL_11:
    if (v3)
    {
      if (!v5)
      {
        return 0;
      }

      v8 = sub_1D633BCCC(v3, v5);

      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1D615A940(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6158328(&qword_1EDF29A08, a2, type metadata accessor for FormatCustomNodeStyle);
  a1[2] = sub_1D6158328(&qword_1EDF0E2E8, v3, type metadata accessor for FormatCustomNodeStyle);
  result = sub_1D6158328(&qword_1EC8846A0, v4, type metadata accessor for FormatCustomNodeStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D615AA10(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = sub_1D6158328(&qword_1EDF29A08, a2, type metadata accessor for FormatCustomNodeStyle);
  result = sub_1D6158328(&qword_1EDF0E2E8, v3, type metadata accessor for FormatCustomNodeStyle);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1D615AA94(uint64_t a1)
{
  result = sub_1D615AABC();
  *(a1 + 8) = result;
  return result;
}