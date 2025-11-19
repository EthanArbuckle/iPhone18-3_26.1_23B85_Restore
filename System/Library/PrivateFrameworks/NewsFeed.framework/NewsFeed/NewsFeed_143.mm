uint64_t sub_1D685F5B0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D685F2D4(a1, v4);
}

uint64_t sub_1D685F650@<X0>(uint64_t *a1@<X8>)
{
  sub_1D685F730();
  sub_1D725724C();
  sub_1D725723C();
  result = sub_1D72571EC();
  *a1 = result;
  return result;
}

uint64_t sub_1D685F6BC(uint64_t a1)
{
  v2 = sub_1D685F0A0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

void sub_1D685F730()
{
  if (!qword_1EC88CF20)
  {
    sub_1D685F788();
    v0 = sub_1D72571FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88CF20);
    }
  }
}

unint64_t sub_1D685F788()
{
  result = qword_1EC88CF28;
  if (!qword_1EC88CF28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC88CF28);
  }

  return result;
}

uint64_t sub_1D685F7FC(void *a1)
{
  v3 = v1;
  sub_1D68636E0(0, &qword_1EC88CFE8, sub_1D68635BC, &type metadata for G_V2.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D68635BC();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6863748();
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    sub_1D5EF9DFC(&qword_1EC880BB0, sub_1D5EF9E8C);
    sub_1D726443C();
    *&v13[0] = *(v3 + 40);
    v14 = 2;
    sub_1D6862D98(0, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
    sub_1D6863644(&qword_1EC88CFF0, sub_1D6863748);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D685FAD0()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0x6F74617261706573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D617266;
  }
}

uint64_t sub_1D685FB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6863894(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D685FB60(uint64_t a1)
{
  v2 = sub_1D68635BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D685FB9C(uint64_t a1)
{
  v2 = sub_1D68635BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D685FBD8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6863244(a1, v6);
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

uint64_t sub_1D685FC34()
{
  sub_1D6862CDC();

  return sub_1D725A24C();
}

uint64_t sub_1D685FCB0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D68631A8(0, &qword_1EDF3C138, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D68636E0(0, &qword_1EDF18000, sub_1D5EF96F4, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  v3 = sub_1D7259F9C();
  sub_1D6862F68(0);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  return result;
}

uint64_t sub_1D685FDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v49 = a1;
  v50 = a3;
  v42 = sub_1D725895C();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupLayoutContext();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v13;
  v14 = type metadata accessor for GroupLayoutBindingContext();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *v3;
  v43 = *v3;
  v18 = *(v3 + 1);
  v19 = v3[16];
  v40 = type metadata accessor for GroupLayoutBindingContext;
  v20 = a1;
  v21 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3F40(v20, v21, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BE3F40(a2, v13, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v39 = sub_1D725893C();
  v38 = v22;
  (*(v6 + 8))(v9, v42);
  v60 = &type metadata for G_V2;
  v42 = sub_1D5ECE238();
  v61 = v42;
  v57[0] = v17;
  v58 = v18;
  v59 = v19;
  type metadata accessor for GroupLayoutKey();
  v23 = swift_allocObject();
  sub_1D5BEE8A0(v18, v19);
  v55 = sub_1D7264C5C();
  v56 = v24;
  v53 = 95;
  v54 = 0xE100000000000000;
  v51 = 45;
  v52 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v25 = sub_1D7263A6C();
  v27 = v26;

  *(v23 + 16) = v25;
  *(v23 + 24) = v27;
  v28 = (v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v29 = v38;
  *v28 = v39;
  v28[1] = v29;
  sub_1D5B68374(v57, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v30 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA89C(v21, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v40);
  (*(v44 + 56))(v23 + v30, 0, 1, v45);
  v31 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA89C(v41, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v47 + 56))(v23 + v31, 0, 1, v48);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v32 = type metadata accessor for G_V2.Bound();
  v33 = v50;
  v50[3] = v32;
  v33[4] = sub_1D6862C14(&qword_1EC88CF40, type metadata accessor for G_V2.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v35 = v42;
  boxed_opaque_existential_1[4] = &type metadata for G_V2;
  boxed_opaque_existential_1[5] = v35;
  *(boxed_opaque_existential_1 + 8) = v43;
  boxed_opaque_existential_1[2] = v18;
  *(boxed_opaque_existential_1 + 24) = v19;
  sub_1D5BE3F40(v46, boxed_opaque_existential_1 + *(v32 + 24), type metadata accessor for GroupLayoutContext);
  sub_1D5BEE8A0(v18, v19);
  result = sub_1D6C54CFC(0, 0, 0, 0, 0);
  *boxed_opaque_existential_1 = v23;
  *(boxed_opaque_existential_1 + *(v32 + 28)) = result;
  return result;
}

uint64_t sub_1D6860244@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for G_V2.Bound();
  v9 = *(v2 + *(v8 + 28));
  v30 = v2;
  v10 = sub_1D5ECA874(sub_1D6862C5C, v29, v9);
  v11 = v2 + *(v8 + 24);
  v12 = *(v11 + *(type metadata accessor for GroupLayoutContext() + 24) + 24);
  v13 = *MEMORY[0x1E69D7130];
  v14 = sub_1D7259D1C();
  (*(*(v14 - 8) + 104))(v7, v13, v14);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v26 = v10;
  v27 = v2;
  v28 = v12;
  sub_1D6862EE4(0, &qword_1EC88CF60, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v24[2] = sub_1D725A4CC();
  v15 = sub_1D725A4DC();
  v24[1] = v24;
  v36 = v33;
  v37 = v34;
  v35 = v32;
  v38 = v34;
  v39 = v10;
  v31 = v34;
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = MEMORY[0x1E69E62F8];
  sub_1D5EF985C(0, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, v17);
  sub_1D5BD4A40(&qword_1EDF04EC0, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context);
  sub_1D5BD4A40(&qword_1EDF04ED8, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes);

  v18 = sub_1D725C00C();
  sub_1D6862D38(&v38, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, v17, sub_1D5EF985C);

  v19 = v25;
  *v25 = 0;
  v20 = v33;
  *(v19 + 8) = v32;
  *(v19 + 24) = v20;
  v31 = v18;
  sub_1D5EF985C(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v17);
  sub_1D5BD4A40(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v21 = sub_1D72623BC();

  sub_1D6862D38(&v38, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, v17, sub_1D5EF985C);
  v39 = *(&v37 + 1);
  sub_1D6862D38(&v39, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8], sub_1D6862D98);

  v23 = MEMORY[0x1E69E7CC0];
  *(v19 + 5) = v21;
  *(v19 + 6) = v23;
  return result;
}

uint64_t sub_1D68606F8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  v155 = v6;
  v156 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v154 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6862D98(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v146 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v145 = &v144 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v144 - v18;
  v153 = &v144 - v18;
  v20 = a1[7];
  v178 = a1[6];
  v179[0] = v20;
  *(v179 + 9) = *(a1 + 121);
  v21 = a1[3];
  v174 = a1[2];
  v175 = v21;
  v22 = a1[5];
  v176 = a1[4];
  v177 = v22;
  v23 = a1[1];
  v172 = *a1;
  v173 = v23;
  v24 = *a2;
  sub_1D5D62850(v180);
  v25 = a2 + *(type metadata accessor for G_V2.Bound() + 24);
  v26 = type metadata accessor for GroupLayoutContext();
  v27 = *(*&v25[*(v26 + 40)] + 16);
  v28 = *&v25[*(v26 + 32)];
  sub_1D5B68374(v27 + 16, &v157);
  sub_1D5B68374(v27 + 56, &v168);
  v29 = v28 * *(v27 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v30 = swift_allocObject();
  sub_1D5B63F14(&v157, v30 + 16);
  sub_1D5B63F14(&v168, v30 + 56);
  *(v30 + 96) = v29;
  sub_1D5ECF2C4(&v172, &v160);
  FeedLayoutStylerFactory.styler()(v171);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v30 + 16);
  __swift_destroy_boxed_opaque_existential_1(v30 + 56);
  swift_deallocClassInstance();
  v31 = v176;
  v32 = a3;
  *(a3 + 88) = v177;
  v33 = v179[0];
  *(a3 + 104) = v178;
  *(a3 + 120) = v33;
  *(a3 + 129) = *(v179 + 9);
  v34 = v172;
  *(a3 + 24) = v173;
  v35 = v175;
  *(a3 + 40) = v174;
  *(a3 + 56) = v35;
  *(a3 + 72) = v31;
  *(a3 + 8) = v34;
  v36 = v180[4];
  *(a3 + 232) = v180[5];
  v37 = v181[0];
  *(a3 + 248) = v180[6];
  *(a3 + 264) = v37;
  *(a3 + 273) = *(v181 + 9);
  v38 = v180[0];
  *(a3 + 168) = v180[1];
  v39 = v180[3];
  *(a3 + 184) = v180[2];
  *(a3 + 200) = v39;
  *(a3 + 216) = v36;
  *a3 = v24;
  *(a3 + 152) = v38;
  sub_1D5B68374(v171, a3 + 296);
  sub_1D5B68374(v171, &v168);
  v151 = *(v7 + 56);
  v152 = v7 + 56;
  v151(v19, 1, 1, v6);
  v40 = swift_allocObject();
  v41 = v179[0];
  v40[7] = v178;
  v40[8] = v41;
  *(v40 + 137) = *(v179 + 9);
  v42 = v175;
  v40[3] = v174;
  v40[4] = v42;
  v43 = v177;
  v40[5] = v176;
  v40[6] = v43;
  v44 = v173;
  v40[1] = v172;
  v40[2] = v44;
  sub_1D6862D98(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
  v147 = v45;
  v46 = swift_allocObject();
  *(v46 + 2) = 0xC04E000000000000;
  v47 = v170;
  __swift_project_boxed_opaque_existential_1(&v168, v169);
  v166 = v178;
  v167[0] = v179[0];
  *(v167 + 9) = *(v179 + 9);
  v162 = v174;
  v163 = v175;
  v164 = v176;
  v165 = v177;
  v160 = v172;
  v161 = v173;
  sub_1D5ECF2C4(&v172, &v157);
  sub_1D5ECF2C4(&v172, &v157);

  v48 = sub_1D6CAFA6C();
  v49 = (*(v47 + 80))(v48);

  *&v46[*(*v46 + 120)] = v49;
  *&v46[*(*v46 + 136)] = v49;
  v50 = v49;
  v51 = v154;
  sub_1D725890C();
  v52 = *(*v46 + 128);
  v53 = v155;
  v54 = *(v156 + 32);
  v156 += 32;
  v149 = v54;
  v54(&v46[v52], v51, v155);
  v148 = objc_opt_self();
  LOBYTE(v51) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v46[qword_1EDF347F8] = v51;
  v55 = v153;
  sub_1D5DF42F8(v153, &v46[qword_1EDF347F0]);
  v56 = swift_allocObject();
  v56[2] = sub_1D5EF97AC;
  v56[3] = v40;
  v56[4] = v50;
  *(v46 + 3) = sub_1D5EF97B4;
  *(v46 + 4) = v56;
  v32[42] = v46;
  sub_1D5B68374(v171, &v168);
  v151(v55, 1, 1, v53);
  v57 = swift_allocObject();
  v58 = v179[0];
  v57[7] = v178;
  v57[8] = v58;
  *(v57 + 137) = *(v179 + 9);
  v59 = v175;
  v57[3] = v174;
  v57[4] = v59;
  v60 = v177;
  v57[5] = v176;
  v57[6] = v60;
  v61 = v173;
  v57[1] = v172;
  v57[2] = v61;
  v62 = swift_allocObject();
  *(v62 + 2) = 0xC04E000000000000;
  v63 = v170;
  __swift_project_boxed_opaque_existential_1(&v168, v169);
  v166 = v178;
  v167[0] = v179[0];
  *(v167 + 9) = *(v179 + 9);
  v162 = v174;
  v163 = v175;
  v164 = v176;
  v165 = v177;
  v160 = v172;
  v161 = v173;
  sub_1D5ECF2C4(&v172, &v157);
  v64 = sub_1D6CAFA6C();
  v65 = (*(v63 + 88))(v64);

  *&v62[*(*v62 + 120)] = v65;
  *&v62[*(*v62 + 136)] = v65;
  v66 = v65;
  v67 = v154;
  sub_1D725890C();
  v68 = v155;
  v149(&v62[*(*v62 + 128)], v67, v155);
  LOBYTE(v67) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v62[qword_1EDF347F8] = v67;
  sub_1D5DF42F8(v153, &v62[qword_1EDF347F0]);
  v69 = swift_allocObject();
  v69[2] = sub_1D5EF97C0;
  v69[3] = v57;
  v69[4] = v66;
  *(v62 + 3) = sub_1D5EF9FF8;
  *(v62 + 4) = v69;
  v150 = v32;
  v32[43] = v62;
  sub_1D5B68374(v171, &v157);
  v151(v145, 1, 1, v68);
  v70 = swift_allocObject();
  v71 = v179[0];
  v70[7] = v178;
  v70[8] = v71;
  *(v70 + 137) = *(v179 + 9);
  v72 = v175;
  v70[3] = v174;
  v70[4] = v72;
  v73 = v177;
  v70[5] = v176;
  v70[6] = v73;
  v74 = v173;
  v70[1] = v172;
  v70[2] = v74;
  v75 = swift_allocObject();
  *(v75 + 2) = 0xC04E000000000000;
  v77 = v158;
  v76 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  if (v177 == 1 || !v178)
  {
    v78 = v172;
    sub_1D5ECF2C4(&v172, &v160);
    v79 = [v78 coverDate];
    sub_1D726207C();
  }

  else
  {
    sub_1D5ECF2C4(&v172, &v160);
  }

  v80 = sub_1D726213C();
  v82 = v81;

  v83 = (*(v76 + 96))(v80, v82, v77, v76);

  *&v75[*(*v75 + 120)] = v83;
  *&v75[*(*v75 + 136)] = v83;
  v84 = v83;
  v85 = v154;
  sub_1D725890C();
  v86 = v155;
  v149(&v75[*(*v75 + 128)], v85, v155);
  LOBYTE(v85) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v75[qword_1EDF347F8] = v85;
  sub_1D5DF42F8(v145, &v75[qword_1EDF347F0]);
  v87 = swift_allocObject();
  v87[2] = sub_1D5EF97C8;
  v87[3] = v70;
  v87[4] = v84;
  *(v75 + 3) = sub_1D5EF9FF8;
  *(v75 + 4) = v87;
  v150[44] = v75;
  sub_1D5B68374(v171, &v157);
  v151(v146, 1, 1, v86);
  v88 = swift_allocObject();
  v89 = v179[0];
  v88[7] = v178;
  v88[8] = v89;
  *(v88 + 137) = *(v179 + 9);
  v90 = v175;
  v88[3] = v174;
  v88[4] = v90;
  v91 = v177;
  v88[5] = v176;
  v88[6] = v91;
  v92 = v173;
  v88[1] = v172;
  v88[2] = v92;
  v93 = swift_allocObject();
  *(v93 + 2) = 0xC04E000000000000;
  v94 = BYTE8(v173);
  v95 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  if (v94 == 2)
  {
    LOBYTE(v168) = 2;
    sub_1D5ECF2C4(&v172, &v160);
    v96 = sub_1D6CAFB7C();
    v97 = (*(v95 + 96))(v96);
  }

  else
  {
    LOBYTE(v168) = v94;
    sub_1D5ECF2C4(&v172, &v160);
    v98 = sub_1D6CAFB7C();
    v97 = (*(v95 + 104))(v98);
  }

  v99 = v97;

  *&v93[*(*v93 + 120)] = v99;
  *&v93[*(*v93 + 136)] = v99;
  v100 = v99;
  v101 = v154;
  sub_1D725890C();
  v102 = v101;
  v103 = v155;
  v149(&v93[*(*v93 + 128)], v102, v155);
  v104 = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v93[qword_1EDF347F8] = v104;
  sub_1D5DF42F8(v146, &v93[qword_1EDF347F0]);
  v105 = swift_allocObject();
  v105[2] = sub_1D5EF97D0;
  v105[3] = v88;
  v105[4] = v100;
  *(v93 + 3) = sub_1D5EF9FF8;
  *(v93 + 4) = v105;
  v150[45] = v93;
  sub_1D5B68374(v171, &v160);
  v151(v153, 1, 1, v103);
  v106 = swift_allocObject();
  *(v106 + 2) = 0xC04E000000000000;
  v107 = *(&v161 + 1);
  v108 = v162;
  __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v146 = ObjCClassFromMetadata;
  v145 = objc_opt_self();
  v110 = [v145 bundleForClass_];
  sub_1D725811C();

  v111 = sub_1D726213C();
  v113 = v112;

  v114 = (*(v108 + 112))(v111, v113, v107, v108);

  *&v106[*(*v106 + 120)] = v114;
  *&v106[*(*v106 + 136)] = v114;
  v115 = v114;
  v116 = v154;
  sub_1D725890C();
  v117 = v155;
  v149(&v106[*(*v106 + 128)], v116, v155);
  LOBYTE(v116) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v160);
  v106[qword_1EDF347F8] = v116;
  v118 = v153;
  sub_1D5DF42F8(v153, &v106[qword_1EDF347F0]);
  v119 = swift_allocObject();
  v119[2] = sub_1D6EAD6D0;
  v119[3] = 0;
  v119[4] = v115;
  *(v106 + 3) = sub_1D5EF9FF8;
  *(v106 + 4) = v119;
  v150[46] = v106;
  sub_1D5B68374(v171, &v160);
  v151(v118, 1, 1, v117);
  v120 = swift_allocObject();
  *(v120 + 2) = 0xC04E000000000000;
  v121 = *(&v161 + 1);
  v122 = v162;
  __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
  v123 = [v145 bundleForClass_];
  sub_1D725811C();

  v124 = sub_1D726213C();
  v126 = v125;

  v127 = (*(v122 + 120))(v124, v126, v121, v122);

  *&v120[*(*v120 + 120)] = v127;
  *&v120[*(*v120 + 136)] = v127;
  v128 = v127;
  v129 = v154;
  sub_1D725890C();
  v130 = v155;
  v131 = v149;
  v149(&v120[*(*v120 + 128)], v129, v155);
  v132 = v148;
  LOBYTE(v124) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v160);
  v120[qword_1EDF347F8] = v124;
  v133 = v153;
  sub_1D5DF42F8(v153, &v120[qword_1EDF347F0]);
  v134 = swift_allocObject();
  v134[2] = sub_1D6EAD7F8;
  v134[3] = 0;
  v134[4] = v128;
  *(v120 + 3) = sub_1D5EF9FF8;
  *(v120 + 4) = v134;
  v150[47] = v120;
  sub_1D5B68374(v171, &v157);
  v151(v133, 1, 1, v130);
  v135 = swift_allocObject();
  v136 = v179[0];
  v135[7] = v178;
  v135[8] = v136;
  *(v135 + 137) = *(v179 + 9);
  v137 = v175;
  v135[3] = v174;
  v135[4] = v137;
  v138 = v177;
  v135[5] = v176;
  v135[6] = v138;
  v139 = v173;
  v135[1] = v172;
  v135[2] = v139;
  sub_1D5EF97E0();
  v140 = swift_allocObject();
  *(v140 + 2) = 0xC04E000000000000;
  sub_1D5ECF2C4(&v172, &v160);
  sub_1D6EAD930(&v172, &v160);
  sub_1D5ECF320(&v172);
  v141 = v160;
  *&v140[*(*v140 + 120)] = v160;
  *&v140[*(*v140 + 136)] = v141;
  swift_bridgeObjectRetain_n();
  sub_1D725890C();
  v131(&v140[*(*v140 + 128)], v129, v130);
  LOBYTE(v133) = [v132 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v140[qword_1EDF347F8] = v133;
  sub_1D5DF42F8(v153, &v140[qword_1EDF347F0]);
  v142 = swift_allocObject();
  *(v142 + 16) = sub_1D5EF97D8;
  *(v142 + 24) = v135;
  *(v142 + 32) = v141;
  *(v140 + 3) = sub_1D5EF98AC;
  *(v140 + 4) = v142;
  result = __swift_destroy_boxed_opaque_existential_1(v171);
  v150[48] = v140;
  return result;
}

uint64_t sub_1D686197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D68636E0(0, &qword_1EC88CF78, sub_1D6862C88, &type metadata for G_V2.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v22[-v13];
  v26 = a1;
  (*(v10 + 104))(&v22[-v13], *MEMORY[0x1E69D74A8], v9, v12);
  sub_1D6862DFC();
  sub_1D68636E0(0, &qword_1EC88CF88, sub_1D6862C88, &type metadata for G_V2.Layout, MEMORY[0x1E69D70D8]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7273AE0;
  (*(v17 + 104))(v19 + v18, *MEMORY[0x1E69D7098], v16);
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v20 = MEMORY[0x1E69D7150];
  sub_1D6862EE4(0, &qword_1EC88CF90, MEMORY[0x1E69D7150]);
  sub_1D6862E98(&qword_1EC88CF98, &qword_1EC88CF90, v20);
  sub_1D72599EC();

  return (*(v10 + 8))(v14, v9);
}

void sub_1D6861C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = a4;
  v110 = a3;
  v119 = a1;
  sub_1D68636E0(0, &qword_1EC88CF78, sub_1D6862C88, &type metadata for G_V2.Layout, MEMORY[0x1E69D74B0]);
  v118 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v83 - v8);
  v101 = sub_1D725A36C();
  MEMORY[0x1EEE9AC00](v101, v10);
  v100 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *(a2 + 16);
  if (v102)
  {
    v13 = 0;
    v98 = &v124[13];
    v97 = *MEMORY[0x1E69D7378];
    v99 = a2 + 32;
    v96 = (v11 + 104);
    v95 = *MEMORY[0x1E69D7208];
    v94 = *MEMORY[0x1E69D7468];
    v116 = (v6 + 104);
    v14 = *MEMORY[0x1E69D7050];
    v92 = *MEMORY[0x1E69D7080];
    v93 = v14;
    v115 = (v6 + 8);
    v86 = v102 - 1;
    v117 = v103 + 56;
    v88 = *MEMORY[0x1E69D7480];
    v15 = *MEMORY[0x1E69D6FD0];
    v84 = *MEMORY[0x1E69D6FB8];
    v85 = v15;
    v90 = *MEMORY[0x1E69D6F48];
    v89 = *MEMORY[0x1E69D73C0];
    v91 = xmmword_1D7273AE0;
    v83 = xmmword_1D7270C10;
    do
    {
      *v123 = v13;
      sub_1D5EF92B8(v99 + 392 * v13, &v123[8]);
      if (!*&v123[8])
      {
        return;
      }

      v112 = *v123;
      v113 = v13;
      v22 = *(&v124[14] + 8);
      v23 = *(&v124[15] + 8);
      v24 = *(&v124[16] + 8);
      v25 = *(&v124[17] + 8);
      v26 = *(&v124[18] + 8);
      v27 = *(&v124[19] + 8);
      v28 = *(&v124[20] + 8);
      *v123 = *&v123[8];
      *&v123[16] = *&v123[24];
      *&v123[32] = *&v123[40];
      *&v123[48] = *&v124[0];
      v124[0] = *(v124 + 8);
      v21 = v124[0];
      v124[1] = *(&v124[1] + 8);
      v124[2] = *(&v124[2] + 8);
      v124[3] = *(&v124[3] + 8);
      v124[4] = *(&v124[4] + 8);
      v124[5] = *(&v124[5] + 8);
      v124[6] = *(&v124[6] + 8);
      v124[7] = *(&v124[7] + 8);
      v124[8] = *(&v124[8] + 8);
      v124[9] = *(&v124[9] + 8);
      v124[10] = *(&v124[10] + 8);
      v124[11] = *(&v124[11] + 8);
      v124[12] = *(&v124[12] + 8);
      v29 = v98;
      *v98 = *(&v124[13] + 8);
      v29[1] = v22;
      v29[2] = v23;
      v29[3] = v24;
      v29[4] = v25;
      v29[5] = v26;
      v30 = v21;
      v29[6] = v27;
      v29[7] = v28;
      v109 = type metadata accessor for G_V2.Bound();
      v31 = v110 + *(v109 + 24);
      v32 = type metadata accessor for GroupLayoutContext();
      v33 = *(*(v31 + *(v32 + 40)) + 24);
      v36 = MEMORY[0x1EEE9AC00](v32, v34);
      if ((v30 & 0x10) != 0)
      {
        *(&v83 - 4) = v123;
        *(&v83 - 3) = v33;
        v81 = v35;
      }

      else
      {
        v81 = v123;
        v82 = v33;
      }

      (*v96)(v100, v97, v101, v36);
      sub_1D5EF94BC();
      swift_allocObject();

      v121 = sub_1D725A4CC();

      v122 = v119;
      KeyPath = swift_getKeyPath();
      sub_1D5EF9444();
      v38 = v37;
      v39 = swift_allocBox();
      v41 = v40;
      v42 = *(v38 + 48);
      sub_1D725A08C();
      v43 = sub_1D725A09C();
      (*(*(v43 - 8) + 104))(v41 + v42, v95, v43);
      *v9 = v39;
      v44 = v118;
      v120 = *v116;
      v120(v9, v94, v118);
      sub_1D6862DFC();
      v46 = v45;
      sub_1D68636E0(0, &qword_1EC88CF88, sub_1D6862C88, &type metadata for G_V2.Layout, MEMORY[0x1E69D70D8]);
      v48 = v47;
      v49 = *(v47 - 8);
      v50 = *(v49 + 80);
      v51 = (v50 + 32) & ~v50;
      v106 = *(v49 + 72);
      v107 = v46;
      v104 = v50;
      v52 = swift_allocObject();
      *(v52 + 16) = v91;
      sub_1D68636E0(0, &qword_1EC88CFA0, sub_1D6862C88, &type metadata for G_V2.Layout, MEMORY[0x1E69D7078]);
      (*(*(v53 - 8) + 104))(v52 + v51, v93, v53);
      v54 = *(v49 + 104);
      v108 = v48;
      v105 = v54;
      v54(v52 + v51, v92, v48);
      v55 = MEMORY[0x1E69D6F38];
      sub_1D6862EE4(0, &qword_1EC88CFA8, MEMORY[0x1E69D6F38]);
      v57 = v56;
      v58 = sub_1D6862E98(&qword_1EC88CFB0, &qword_1EC88CFA8, v55);
      v81 = sub_1D5EF9664();
      v114 = v57;
      v59 = v58;
      sub_1D7259A4C();

      v60 = *v115;
      (*v115)(v9, v44);
      v61 = v103;
      v62 = v112;
      if (v103)
      {
        if (v103 == 1)
        {
          if (v112 != v86)
          {
            goto LABEL_12;
          }
        }

        else if (*(v103 + 16))
        {
          v77 = sub_1D72649FC();
          v78 = -1 << *(v61 + 32);
          v79 = v77 & ~v78;
          if ((*(v117 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
          {
            v80 = ~v78;
            while (*(*(v61 + 48) + 8 * v79) != v62)
            {
              v79 = (v79 + 1) & v80;
              if (((*(v117 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
              {
                goto LABEL_3;
              }
            }

LABEL_12:
            v63 = v119;
            v122 = v119;
            v64 = swift_allocObject();
            *(v64 + 16) = 0x4034000000000000;
            *v9 = v64;
            v65 = v88;
            v66 = v118;
            v87 = v59;
            (v120)(v9, v88);
            sub_1D7259A9C();
            v67 = v66;
            v60(v9, v66);
            v122 = v63;
            v112 = swift_getKeyPath();
            v68 = swift_allocObject();
            sub_1D7259F1C();
            *(v68 + 16) = 1.0 / v69;
            *v9 = v68;
            v120(v9, v65, v67);
            v70 = v106;
            v71 = swift_allocObject();
            *(v71 + 16) = v83;
            v72 = v71 + v51;
            sub_1D725A28C();
            v73 = v108;
            v74 = v105;
            v105(v72, v85, v108);
            v74(v72 + v70, v84, v73);
            sub_1D6862C14(&qword_1EDF17FF0, sub_1D6862F68);
            sub_1D7259A7C();

            v75 = v118;
            v60(v9, v118);
            v122 = v119;
            v76 = swift_allocObject();
            *(v76 + 16) = 0x4034000000000000;
            *v9 = v76;
            v120(v9, v88, v75);
            sub_1D7259A9C();

            v60(v9, v75);
            goto LABEL_4;
          }
        }
      }

LABEL_3:
      v16 = v119;
      v122 = v119;
      swift_getKeyPath();
      sub_1D6862C88();
      sub_1D725A51C();
      sub_1D6862C14(&qword_1EDF17FF0, sub_1D6862F68);
      sub_1D7259A7C();

      v17 = v118;
      v60(v9, v118);
      v122 = v16;
      v18 = sub_1D725994C();
      v19 = swift_allocBox();
      (*(*(v18 - 8) + 104))(v20, v90, v18);
      *v9 = v19;
      v120(v9, v89, v17);
      sub_1D7259A9C();

      v60(v9, v17);
LABEL_4:
      sub_1D5EF93F0(v123);
      v13 = v113 + 1;
    }

    while (v113 + 1 != v102);
  }
}

uint64_t sub_1D6862870@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_1D5EF92B8(a2, v13 + 16);
  memcpy((v13 + 408), a3, 0x180uLL);
  v14 = a4 + *(type metadata accessor for G_V2.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v16 = *(v14 + *(result + 28));
  v17 = __OFADD__(v16, a1);
  v18 = v16 + a1;
  if (v17)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v13 + 792) = v18;
  *(v12 + 16) = v13 | 0x5000000000000000;
  sub_1D6862D98(0, &qword_1EDF19A20, type metadata accessor for FeedItemSupplementaryAttributes, MEMORY[0x1E69E6F90]);
  v19 = *(type metadata accessor for FeedItemSupplementaryAttributes() - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D7273AE0;
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v21 = *(a5 + 40);
  if (*(v21 + 16) > a1)
  {
    v22 = result;
    v23 = v21 + 32 * a1;
    v24 = *(v23 + 48);
    v25 = (result + v20);
    *v25 = *(v23 + 32);
    v25[1] = v24;
    result = swift_storeEnumTagMultiPayload();
    *(v12 + 24) = v22;
    *a6 = v12 | 0xB000000000000000;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1D6862A70(uint64_t a1)
{
  *(a1 + 8) = sub_1D6862AA0();
  result = sub_1D6862AF4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6862AA0()
{
  result = qword_1EC88CF30;
  if (!qword_1EC88CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CF30);
  }

  return result;
}

unint64_t sub_1D6862AF4()
{
  result = qword_1EC88CF38;
  if (!qword_1EC88CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CF38);
  }

  return result;
}

uint64_t type metadata accessor for G_V2.Bound()
{
  result = qword_1EC88CF48;
  if (!qword_1EC88CF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6862BBC(uint64_t a1)
{
  result = sub_1D6862C14(&qword_1EC88CF58, type metadata accessor for G_V2.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6862C14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6862C88()
{
  result = qword_1EC88CF68;
  if (!qword_1EC88CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CF68);
  }

  return result;
}

unint64_t sub_1D6862CDC()
{
  result = qword_1EC88CF70;
  if (!qword_1EC88CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CF70);
  }

  return result;
}

uint64_t sub_1D6862D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D6862D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6862DFC()
{
  if (!qword_1EC88CF80)
  {
    sub_1D68636E0(255, &qword_1EC88CF88, sub_1D6862C88, &type metadata for G_V2.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88CF80);
    }
  }
}

uint64_t sub_1D6862E98(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6862EE4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6862EE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for G_V2.Layout;
    v8[1] = &type metadata for G_V2.Layout.Attributes;
    v8[2] = sub_1D6862C88();
    v8[3] = sub_1D6862CDC();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6862F94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D6862FDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D686304C()
{
  result = qword_1EC88CFB8;
  if (!qword_1EC88CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CFB8);
  }

  return result;
}

unint64_t sub_1D68630A4()
{
  result = qword_1EC88CFC0;
  if (!qword_1EC88CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CFC0);
  }

  return result;
}

unint64_t sub_1D68630FC()
{
  result = qword_1EC88CFC8;
  if (!qword_1EC88CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CFC8);
  }

  return result;
}

unint64_t sub_1D6863154()
{
  result = qword_1EC88CFD0;
  if (!qword_1EC88CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CFD0);
  }

  return result;
}

void sub_1D68631A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGRect(255);
    v7 = v6;
    v8 = sub_1D6862C14(&unk_1EDF1A748, type metadata accessor for CGRect);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D6863244@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D68636E0(0, &qword_1EC88CFD8, sub_1D68635BC, &type metadata for G_V2.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v19 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D68635BC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  type metadata accessor for CGRect(0);
  v22 = 0;
  sub_1D6863610();
  v11 = v19;
  sub_1D726431C();
  v17 = v21;
  v18 = v20;
  sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  v22 = 1;
  sub_1D5EF9DFC(&qword_1EDF04ED0, sub_1D5EF9D40);
  sub_1D726431C();
  v12 = v10;
  v13 = v20;
  sub_1D6862D98(0, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
  v22 = 2;
  sub_1D6863644(&qword_1EDF049B0, sub_1D6863610);
  sub_1D726431C();
  (*(v12 + 8))(v9, v11);
  v14 = v20;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v16 = v17;
  *a2 = v18;
  *(a2 + 16) = v16;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_1D68635BC()
{
  result = qword_1EC88CFE0;
  if (!qword_1EC88CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CFE0);
  }

  return result;
}

uint64_t sub_1D6863644(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6862D98(255, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D68636E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6863790()
{
  result = qword_1EC88CFF8;
  if (!qword_1EC88CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88CFF8);
  }

  return result;
}

unint64_t sub_1D68637E8()
{
  result = qword_1EC88D000;
  if (!qword_1EC88D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D000);
  }

  return result;
}

unint64_t sub_1D6863840()
{
  result = qword_1EC88D008;
  if (!qword_1EC88D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D008);
  }

  return result;
}

uint64_t sub_1D6863894(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D73C1B40 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F74617261706573 && a2 == 0xEF73656D61724672)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D68639B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WebEmbedDataVisualization();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedWebEmbed();
  v14 = sub_1D5B4D72C;
  sub_1D6863EF8(a1 + *(v13 + 52), v12, sub_1D5B4D72C);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    goto LABEL_4;
  }

  sub_1D6863EF8(v12, v8, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for WebEmbedDataVisualization;
    sub_1D6863F60(v8, type metadata accessor for WebEmbedDataVisualization);
LABEL_4:
    sub_1D6863F60(v12, v14);
    type metadata accessor for FormatAction();
    return swift_storeEnumTagMultiPayload();
  }

  v16 = *v8;
  sub_1D6863F60(v12, type metadata accessor for WebEmbedDataVisualization);
  v17 = v16 >> 61;
  if ((v16 >> 61) > 2)
  {
    if (v17 > 4)
    {
      v21 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *a2 = v21;
      if (v17 == 5)
      {
        *(a2 + 66) = 10;
        *(a2 + 72) = MEMORY[0x1E69E7CD0];
        *(a2 + 80) = v21;
        v19 = -112;
      }

      else
      {
        *(a2 + 66) = 11;
        *(a2 + 72) = MEMORY[0x1E69E7CD0];
        *(a2 + 80) = v21;
        v19 = -96;
      }
    }

    else
    {
      v18 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *a2 = v18;
      if (v17 == 3)
      {
        *(a2 + 66) = 8;
        *(a2 + 72) = MEMORY[0x1E69E7CD0];
        *(a2 + 80) = v18;
        v19 = 112;
      }

      else
      {
        *(a2 + 66) = 9;
        *(a2 + 72) = MEMORY[0x1E69E7CD0];
        *(a2 + 80) = v18;
        v19 = 0x80;
      }
    }

LABEL_18:
    *(a2 + 88) = v19;
    type metadata accessor for FormatAction();
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
  }

  if (v17)
  {
    v20 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    *a2 = v20;
    if (v17 == 1)
    {
      *(a2 + 66) = 6;
      *(a2 + 72) = MEMORY[0x1E69E7CD0];
      *(a2 + 80) = v20;
      v19 = 80;
    }

    else
    {
      *(a2 + 66) = 7;
      *(a2 + 72) = MEMORY[0x1E69E7CD0];
      *(a2 + 80) = v20;
      v19 = 96;
    }

    goto LABEL_18;
  }

  v22 = *(v16 + 16);
  *a2 = v22;
  *(a2 + 66) = 5;
  *(a2 + 72) = MEMORY[0x1E69E7CD0];
  *(a2 + 80) = v22;
  *(a2 + 88) = 64;
  type metadata accessor for FormatAction();
  swift_storeEnumTagMultiPayload();
  swift_retain_n();
}

uint64_t FormatWebEmbedBinding.Action.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6863DB0()
{
  result = qword_1EC88D010;
  if (!qword_1EC88D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D010);
  }

  return result;
}

unint64_t sub_1D6863E04(uint64_t a1)
{
  result = sub_1D6863E2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6863E2C()
{
  result = qword_1EC88D018;
  if (!qword_1EC88D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D018);
  }

  return result;
}

unint64_t sub_1D6863E80(void *a1)
{
  a1[1] = sub_1D667D3AC();
  a1[2] = sub_1D670080C();
  result = sub_1D6863DB0();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6863EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6863F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatFileKind.rawValue.getter()
{
  result = 0x746E65746E6F63;
  switch(*v0)
  {
    case 1:
      result = 0x70756F7267;
      break;
    case 2:
      result = 1835365481;
      break;
    case 3:
      result = 0x6567616B636170;
      break;
    case 4:
      result = 0x4C6567616B636170;
      break;
    case 5:
      result = 0x74657070696E73;
      break;
    case 6:
      result = 0x656C797473;
      break;
    case 7:
      result = 0x656D656C70707573;
      break;
    case 8:
      result = 1701869940;
      break;
    case 9:
      result = 0x697461726F636564;
      break;
    case 0xA:
      result = 0x617A696C61636F6CLL;
      break;
    case 0xB:
      result = 0x676E69646E6962;
      break;
    case 0xC:
      result = 0x636170736B726F77;
      break;
    default:
      return result;
  }

  return result;
}

NewsFeed::FormatFileKind_optional __swiftcall FormatFileKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D6864180()
{
  v0 = FormatFileKind.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFileKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D6864220()
{
  result = qword_1EC88D020;
  if (!qword_1EC88D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D020);
  }

  return result;
}

uint64_t sub_1D6864274()
{
  sub_1D7264A0C();
  FormatFileKind.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D68642DC()
{
  FormatFileKind.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D6864340()
{
  sub_1D7264A0C();
  FormatFileKind.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D68643B0@<X0>(uint64_t *a1@<X8>)
{
  result = FormatFileKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D68643D8(uint64_t a1)
{
  *(a1 + 8) = sub_1D6864408();
  result = sub_1D686445C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6864408()
{
  result = qword_1EC88D028;
  if (!qword_1EC88D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D028);
  }

  return result;
}

unint64_t sub_1D686445C()
{
  result = qword_1EDF32830;
  if (!qword_1EDF32830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32830);
  }

  return result;
}

unint64_t sub_1D68644B4()
{
  result = qword_1EC88D030;
  if (!qword_1EC88D030)
  {
    sub_1D686450C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D030);
  }

  return result;
}

void sub_1D686450C()
{
  if (!qword_1EC88D038)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D038);
    }
  }
}

unint64_t sub_1D686456C(uint64_t a1)
{
  result = sub_1D6864594();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6864594()
{
  result = qword_1EC88D040;
  if (!qword_1EC88D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D040);
  }

  return result;
}

unint64_t sub_1D68645E8(void *a1)
{
  a1[1] = sub_1D668757C();
  a1[2] = sub_1D66FE8D0();
  result = sub_1D6864220();
  a1[3] = result;
  return result;
}

uint64_t sub_1D68646A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *&v49 = a4;
  *(&v49 + 1) = a5;
  v52 = a1;
  v53 = a6;
  v48 = *v6;
  sub_1D5D1E4F8(0, &qword_1EDF170E8, MEMORY[0x1E69D7B08]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v46 = &v45 - v11;
  v12 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v47 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v19 = &v45 - v18;
  v50 = a2;
  v20 = type metadata accessor for FeedPluginFactoryContext();
  v51 = a3;
  v21 = FeedPluginFactoryContext.plugin(identifier:)();
  if (v21)
  {
    v22 = v21;
    v23 = v52;
    (*(v16 + 16))(v19, v52, AssociatedTypeWitness);
    sub_1D5B49474(0, &qword_1EDF0B518);
    if (swift_dynamicCast())
    {
      v24 = v23;
      sub_1D5B63F14(v54, v56);
      v25 = sub_1D725F75C();
      type metadata accessor for FormatViewController();
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = v26;
        v28 = v47;
        sub_1D6864C24(v24, v50, v51, v47);
        v29 = v57;
        v30 = v58;
        __swift_project_boxed_opaque_existential_1(v56, v57);
        v31 = v46;
        (*(v30 + 8))(v29, v30);
        v32 = *(*(v27 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler) + 56);
        ObjectType = swift_getObjectType();
        (*(v32 + 40))(v28, v31, ObjectType, v32);
        sub_1D5D1F0C4(v31, &qword_1EDF170E8, MEMORY[0x1E69D7B08]);
        sub_1D5CED730(v28, type metadata accessor for FormatPluginData);
      }

      __swift_destroy_boxed_opaque_existential_1(v56);
    }

    else
    {
      v55 = 0;
      memset(v54, 0, sizeof(v54));
      sub_1D5CED730(v54, sub_1D68651D8);
    }

    result = swift_allocObject();
    *(result + 16) = v22;
  }

  else
  {
    v34 = v52;
    swift_beginAccess();
    v54[0] = v49;
    type metadata accessor for FormatFeedPluginFactory.FactoryWrapper();

    sub_1D7261E3C();

    v35 = v59;
    if (v59)
    {
      swift_endAccess();
      v36 = swift_allocObject();
      v37 = (*(v35 + 16))(v34, v50, v51);

      *(v36 + 16) = v37;
      result = v36 | 0x4000000000000000;
    }

    else
    {
      swift_endAccess();
      v39 = v47;
      v40 = v51;
      sub_1D6864C24(v34, v50, v51, v47);
      v41 = v6[7];
      v42 = swift_getObjectType();
      v43 = (*(v41 + 56))(v39, *(v40 + *(v20 + 52)), MEMORY[0x1E69D8250], v42, v41);
      sub_1D5CED730(v39, type metadata accessor for FormatPluginData);
      v44 = swift_allocObject();
      *(v44 + 16) = v43;
      result = v44 | 0x4000000000000000;
    }
  }

  *v53 = result;
  return result;
}

uint64_t sub_1D6864C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v33 = a2;
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FormatContent.Resolved();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEB820(v33, v22, type metadata accessor for FormatContent.Resolved);
  v23 = type metadata accessor for FeedPluginFactoryContext();
  sub_1D5CEB820(a3 + *(v23 + 40), v18, type metadata accessor for FeedContext);
  v24 = *(v7 + 16);
  v33 = v14;
  v25 = v14;
  v26 = v32;
  v24(v25, v32, v6);
  v27 = *(v4 + 64);
  v39 = *(a3 + 33);
  v24(v10, v26, v6);
  sub_1D5B49474(0, &qword_1EDF0BFF0);
  v28 = v27;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
  }

  v29 = swift_getAssociatedConformanceWitness();
  return FormatPluginData.init<A>(formatContent:feedContext:feedGroup:feedDescriptor:feedKind:dataProvider:)(v22, v18, v33, v27, &v39, v37, v6, *(v29 + 8), v36);
}

uint64_t sub_1D6864F48()
{
  sub_1D5B87E10(v0 + 16);
  sub_1D5B87E10(v0 + 32);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1D6864F88()
{
  sub_1D6864F48();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6864FE0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D686506C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 16))(a1, a2, a3, ObjectType, v8);
    swift_unknownObjectRelease();
    return v10;
  }

  return result;
}

uint64_t sub_1D68650F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D68651D8()
{
  if (!qword_1EDF0B510)
  {
    sub_1D5B49474(255, &qword_1EDF0B518);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0B510);
    }
  }
}

NewsFeed::FormatFlexBoxNodeJustifyContent_optional __swiftcall FormatFlexBoxNodeJustifyContent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatFlexBoxNodeJustifyContent.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7261745378656C66;
  v3 = 0x7465426563617073;
  v4 = 0x6F72416563617073;
  if (v1 != 4)
  {
    v4 = 0x6576456563617073;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x646E4578656C66;
  if (v1 != 1)
  {
    v5 = 0x7265746E6563;
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

unint64_t sub_1D68653F4()
{
  result = qword_1EDF1FBA0;
  if (!qword_1EDF1FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FBA0);
  }

  return result;
}

uint64_t sub_1D6865450()
{
  sub_1D72621EC();
}

void sub_1D686556C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x7261745378656C66;
  v5 = 0xEC0000006E656577;
  v6 = 0x7465426563617073;
  v7 = 0xEB00000000646E75;
  v8 = 0x6F72416563617073;
  if (v2 != 4)
  {
    v8 = 0x6576456563617073;
    v7 = 0xEB00000000796C6ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x646E4578656C66;
  if (v2 != 1)
  {
    v10 = 0x7265746E6563;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1D6865644(uint64_t a1)
{
  result = sub_1D6666054();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6865670()
{
  result = qword_1EC88D048;
  if (!qword_1EC88D048)
  {
    sub_1D68656C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D048);
  }

  return result;
}

void sub_1D68656C8()
{
  if (!qword_1EC88D050[0])
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, qword_1EC88D050);
    }
  }
}

unint64_t sub_1D6865728(void *a1)
{
  a1[1] = sub_1D6865760();
  a1[2] = sub_1D68657B4();
  result = sub_1D68653F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6865760()
{
  result = qword_1EDF1FB90;
  if (!qword_1EDF1FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FB90);
  }

  return result;
}

unint64_t sub_1D68657B4()
{
  result = qword_1EDF1FBA8[0];
  if (!qword_1EDF1FBA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF1FBA8);
  }

  return result;
}

unint64_t sub_1D68658C8()
{
  result = qword_1EDF1FB98;
  if (!qword_1EDF1FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FB98);
  }

  return result;
}

uint64_t static FormatCodingNotEmptySetStrategy.decode(rawValue:)()
{
  sub_1D725A75C();
  sub_1D725A74C();
  v0 = sub_1D7262B7C();

  if ((v0 & 1) == 0)
  {
    return sub_1D725A74C();
  }

  sub_1D5E2D970();
  swift_allocError();
  *v1 = 1;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0x8000000000000000;
  return swift_willThrow();
}

uint64_t sub_1D6865A94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, void, uint64_t, void, void, void)@<X3>, uint64_t *a5@<X8>)
{
  result = a4(a1, a2[2], a3, a2[4], a2[5], a2[6]);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t static FormatCodingColumnSetStrategy.decode(rawValue:)(uint64_t a1)
{
  result = sub_1D6865CC4(a1);
  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1D6865B00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6865CC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t _s8NewsFeed28FormatCodingEmptySetStrategyV6encode12wrappedValueSayxGShyxG_tFZ_0()
{
  sub_1D7262BAC();

  swift_getWitnessTable();
  sub_1D726281C();
  sub_1D72627FC();
  swift_getWitnessTable();
  v0 = sub_1D726250C();

  return v0;
}

uint64_t sub_1D6865CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v52 = &v40 - v11;
  v41 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  if (sub_1D726279C())
  {
    sub_1D7263CEC();
    v17 = sub_1D7263CDC();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CD0];
  }

  v45 = sub_1D726279C();
  if (!v45)
  {
    return v17;
  }

  v18 = 0;
  v50 = (v6 + 16);
  v51 = v17 + 56;
  v47 = v6 + 32;
  v49 = (v6 + 8);
  v42 = v6;
  v43 = v5;
  v44 = v16;
  while (1)
  {
    v19 = sub_1D726277C();
    sub_1D726271C();
    if (v19)
    {
      v20 = *(v6 + 16);
      v20(v16, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18), a2);
      v21 = __OFADD__(v18, 1);
      v22 = v18 + 1;
      if (v21)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1D7263DBC();
      if (v41 != 8)
      {
        goto LABEL_23;
      }

      v53 = result;
      v20 = *v50;
      (*v50)(v16, &v53, a2);
      swift_unknownObjectRelease();
      v21 = __OFADD__(v18, 1);
      v22 = v18 + 1;
      if (v21)
      {
LABEL_20:
        __break(1u);
        return v17;
      }
    }

    v48 = v22;
    v46 = *(v6 + 32);
    v46(v52, v16, a2);
    v23 = sub_1D7261E7C();
    v24 = v17;
    v25 = -1 << *(v17 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v51 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v20(v8, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = sub_1D7261FBC();
        v34 = *v49;
        (*v49)(v8, a2);
        if (v33)
        {
          v34(v52, a2);
          a3 = v32;
          v6 = v42;
          v5 = v43;
          v17 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v51 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v42;
      v5 = v43;
    }

    v35 = v52;
    *(v51 + 8 * v27) = v29 | v28;
    v36 = *(v24 + 48) + v30 * v26;
    v17 = v24;
    result = (v46)(v36, v35, a2);
    v38 = *(v24 + 16);
    v21 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v21)
    {
      break;
    }

    *(v24 + 16) = v39;
LABEL_7:
    v16 = v44;
    v18 = v48;
    if (v48 == v45)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D6866088(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D68660C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6866100(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6866158(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t FeedItemVisibility.description.getter()
{
  if (*v0 == 2)
  {
    return 0x656C6269736976;
  }

  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7270C10;
  *(v2 + 32) = 0x6E6564646968;
  *(v2 + 40) = 0xE600000000000000;
  *(v2 + 48) = FeedItemHiddenReason.description.getter();
  *(v2 + 56) = v3;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v4 = sub_1D7261F3C();

  return v4;
}

uint64_t FeedItemHiddenReason.description.getter()
{
  v1 = *v0;
  if (!v1)
  {
    return 0xD000000000000011;
  }

  if (v1 == 1)
  {
    return 0x646574656C6564;
  }

  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7270C10;
  *(v3 + 32) = 0x64656B636F6C62;
  *(v3 + 40) = 0xE700000000000000;
  v4 = [v1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  *(v3 + 48) = v5;
  *(v3 + 56) = v7;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v8 = sub_1D7261F3C();

  return v8;
}

uint64_t sub_1D6866490()
{
  v1 = *v0;
  if (*v0 && v1 != 1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    sub_1D5C384A0();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v9 = [v1 name];
    v10 = sub_1D726207C();
    v12 = v11;

    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1D5B7E2C0();
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    v13 = sub_1D726204C();

    return v13;
  }

  else
  {
    type metadata accessor for Localized();
    v2 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_1D725811C();

    return v4;
  }
}

uint64_t sub_1D6866704()
{
  if (*v0 == 1)
  {
    return 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1D725811C();

  return v3;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B16ItemHiddenReasonO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6866878(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 < 3)
  {
    v5 = 0;
  }

  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

void *sub_1D68668E0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t FormatColorComponent.rawValue.getter()
{
  v1 = *v0;
  v2 = 6649192;
  v3 = 0x6E65657267;
  if (v1 != 5)
  {
    v3 = 1702194274;
  }

  v4 = 0x6168706C61;
  if (v1 != 3)
  {
    v4 = 6579570;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6974617275746173;
  if (v1 != 1)
  {
    v5 = 0x656E746867697262;
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

double sub_1D68669F8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (!*v0)
    {
      sub_1D72635BC();
      result = v3;
      goto LABEL_15;
    }

    if (v1 == 1)
    {
      sub_1D72635BC();
      result = v4;
      goto LABEL_15;
    }

    sub_1D72635BC();
  }

  else
  {
    if (*v0 <= 4u)
    {
      if (v1 == 3)
      {
        sub_1D72635BC();
        result = v6;
      }

      else
      {
        sub_1D72635CC();
        result = v3;
      }

      goto LABEL_15;
    }

    if (v1 == 5)
    {
      sub_1D72635CC();
      result = v4;
      goto LABEL_15;
    }

    sub_1D72635CC();
  }

  result = v5;
LABEL_15:
  if (v7)
  {
    return 0.0;
  }

  return result;
}

NewsFeed::FormatColorComponent_optional __swiftcall FormatColorComponent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D6866B78()
{
  result = qword_1EC88D0D8;
  if (!qword_1EC88D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D0D8);
  }

  return result;
}

uint64_t sub_1D6866BD8()
{
  sub_1D72621EC();
}

void sub_1D6866CE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6649192;
  v5 = 0xE500000000000000;
  v6 = 0x6E65657267;
  if (v2 != 5)
  {
    v6 = 1702194274;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6168706C61;
  if (v2 != 3)
  {
    v8 = 6579570;
    v7 = 0xE300000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6974617275746173;
  v10 = 0xEA00000000006E6FLL;
  if (v2 != 1)
  {
    v9 = 0x656E746867697262;
    v10 = 0xEA00000000007373;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1D6866DA4(uint64_t a1)
{
  *(a1 + 8) = sub_1D6866DD4();
  result = sub_1D6866E28();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6866DD4()
{
  result = qword_1EC88D0E0;
  if (!qword_1EC88D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D0E0);
  }

  return result;
}

unint64_t sub_1D6866E28()
{
  result = qword_1EDF2B4A0;
  if (!qword_1EDF2B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B4A0);
  }

  return result;
}

unint64_t sub_1D6866E88(uint64_t a1)
{
  result = sub_1D6866EB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6866EB0()
{
  result = qword_1EC88D0E8;
  if (!qword_1EC88D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D0E8);
  }

  return result;
}

unint64_t sub_1D6866F04(void *a1)
{
  a1[1] = sub_1D667E8CC();
  a1[2] = sub_1D667EAC4();
  result = sub_1D6866B78();
  a1[3] = result;
  return result;
}

id sub_1D6866FC4(_BYTE *a1, double a2)
{
  v4 = *a1;
  if (v4 > 2)
  {
    if (*a1 <= 4u)
    {
      if (v4 == 3)
      {
        v5 = [v2 colorWithAlphaComponent_];

        return v5;
      }

      v18 = v2;
      sub_1D72635CC();
      if ((v23 & 1) == 0)
      {
        v8 = v21;
        v7 = v22;
        v14 = v20;
        v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v11 = sel_initWithRed_green_blue_alpha_;
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    v18 = v2;
    if (v4 != 5)
    {
      sub_1D72635CC();
      if (v23)
      {
        goto LABEL_25;
      }

      v7 = v22;
      v16 = v19;
      v15 = v20;
      v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v11 = sel_initWithRed_green_blue_alpha_;
      goto LABEL_29;
    }

    sub_1D72635CC();
    if (v23)
    {
      goto LABEL_25;
    }

    v8 = v21;
    v7 = v22;
    v9 = v19;
    v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v11 = sel_initWithRed_green_blue_alpha_;
    goto LABEL_15;
  }

  v18 = v2;
  if (*a1)
  {
    if (v4 != 1)
    {
      sub_1D72635BC();
      if (v23)
      {
        goto LABEL_25;
      }

      v7 = v22;
      v16 = v19;
      v15 = v20;
      v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v11 = sel_initWithHue_saturation_brightness_alpha_;
LABEL_29:
      v12 = v16;
      v13 = v15;
      v17 = a2;
      goto LABEL_30;
    }

    sub_1D72635BC();
    if (v23)
    {
      goto LABEL_25;
    }

    v8 = v21;
    v7 = v22;
    v9 = v19;
    v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v11 = sel_initWithHue_saturation_brightness_alpha_;
LABEL_15:
    v12 = v9;
    v13 = a2;
LABEL_23:
    v17 = v8;
LABEL_30:

    return [v10 v11];
  }

  sub_1D72635BC();
  if ((v23 & 1) == 0)
  {
    v8 = v21;
    v7 = v22;
    v14 = v20;
    v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v11 = sel_initWithHue_saturation_brightness_alpha_;
LABEL_22:
    v12 = a2;
    v13 = v14;
    goto LABEL_23;
  }

LABEL_25:

  return v18;
}

uint64_t sub_1D6867208()
{
  v0 = sub_1D5B86020(&unk_1F50F2FE8);
  result = swift_arrayDestroy();
  qword_1EC88D0F0 = v0;
  return result;
}

uint64_t sub_1D6867284()
{
  v17 = sub_1D671DAE0();
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];

    sub_1D5BFC364(0, v2, 0);
    v3 = 32;
    do
    {
      v4 = *(v1 + v3);
      if (v4 < 0)
      {
        v6 = *((v4 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v8 = *((v4 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      }

      else
      {

        v6 = sub_1D6867284(v5);
        v8 = v7;
      }

      v10 = *(v16 + 16);
      v9 = *(v16 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D5BFC364((v9 > 1), v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      v11 = v16 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  sub_1D5BBE0A8();
  sub_1D5BB0AB8();
  v12 = sub_1D7261F3C();
  v14 = v13;

  MEMORY[0x1DA6F9910](v12, v14);

  return v17;
}

uint64_t sub_1D6867434(uint64_t a1, uint64_t a2)
{
  if (sub_1D671DCD4(*(a1 + 16), *(a2 + 16)))
  {
    swift_beginAccess();
    v4 = *(a1 + 24);
    swift_beginAccess();
    v5 = *(a2 + 24);

    v6 = sub_1D6338B08(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t FeedPaywall.debugSourceName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FeedPaywall.debugTitle.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](v1, v2);
  MEMORY[0x1DA6F9910](0x206E692029, 0xE500000000000000);
  MEMORY[0x1DA6F9910](v3, v4);
  return 0x206C6C6177796150;
}

uint64_t SubscriptionActivationEligibility.selectors.getter()
{
  v1 = *v0;
  if (*v0)
  {
    if (v1 != 1)
    {
      sub_1D5C07390(*v0);
      v3 = sub_1D5B86020(v1);
      sub_1D5C08648(v1);
      return v3;
    }

    v2 = &unk_1F50F6550;
  }

  else
  {
    v2 = &unk_1F50F6520;
  }

  v3 = sub_1D5BFAC38(v2);
  sub_1D5BFB68C(v2 + 32);
  return v3;
}

uint64_t FeedPaywall.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void FeedPaywall.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  *a1 = *(v1 + 216);
  *(a1 + 8) = v2;
}

uint64_t FeedPaywall.layoutDirection.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 216) = *result;
  *(v1 + 224) = v2;
  return result;
}

uint64_t FeedPaywall.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

uint64_t FeedPaywall.kind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1D5BF6680(*(v1 + 232), *(v1 + 240));
  *(v1 + 232) = v2;
  *(v1 + 240) = v3;
  return result;
}

__n128 FeedPaywall.init(identifier:paywallType:paywallHost:isBundleFreeTrialEligible:isWebAccessAvailable:channelName:numberOfOffers:buttonText:servicesBundlePrice:servicesBundlePriceDelta:servicesBundleTrialEligible:servicesBundleUpsellScenario:activationEligibility:article:personalizedTopChannelsClause:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, __int128 a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t *a20, __n128 a21, uint64_t a22, uint64_t a23)
{
  result = a21;
  v24 = *a13;
  v25 = a13[1];
  v26 = *a20;
  *(a9 + 208) = xmmword_1D72FC0A0;
  *(a9 + 224) = 1;
  *(a9 + 232) = xmmword_1D72F40D0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 49) = a8;
  *(a9 + 56) = a12;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = v24;
  *(a9 + 88) = v25;
  *(a9 + 96) = *(a13 + 1);
  *(a9 + 144) = a14;
  *(a9 + 160) = a15;
  *(a9 + 168) = a16;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18;
  *(a9 + 128) = a19;
  *(a9 + 136) = v26;
  *(a9 + 176) = a21;
  *(a9 + 192) = a22;
  *(a9 + 200) = a23;
  return result;
}

void sub_1D686780C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  *a1 = *(v1 + 216);
  *(a1 + 8) = v2;
}

uint64_t sub_1D6867820()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FeedPaywall.groupItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[11];
  v35 = v1[12];
  v36 = v2;
  v4 = v1[13];
  v37 = v1[14];
  v5 = v1[9];
  v7 = v1[7];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v8 = v1[9];
  v9 = v1[11];
  v33 = v1[10];
  v10 = v33;
  v34 = v9;
  v11 = v1[5];
  v13 = v1[3];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v14 = v1[5];
  v15 = v1[7];
  v29 = v1[6];
  v16 = v29;
  v30 = v15;
  v17 = v1[1];
  v24[0] = *v1;
  v24[1] = v17;
  v18 = v1[3];
  v20 = *v1;
  v19 = v1[1];
  v25 = v1[2];
  v21 = v25;
  v26 = v18;
  *(a1 + 192) = v35;
  *(a1 + 208) = v4;
  *(a1 + 224) = v1[14];
  *(a1 + 128) = v6;
  *(a1 + 144) = v8;
  *(a1 + 160) = v10;
  *(a1 + 176) = v3;
  *(a1 + 64) = v12;
  *(a1 + 80) = v14;
  *(a1 + 96) = v16;
  *(a1 + 112) = v7;
  *a1 = v20;
  *(a1 + 16) = v19;
  v38 = *(v1 + 30);
  *(a1 + 240) = *(v1 + 30);
  *(a1 + 32) = v21;
  *(a1 + 48) = v13;
  type metadata accessor for FeedGroupItem();
  swift_storeEnumTagMultiPayload();
  return sub_1D62DAD08(v24, v23);
}

uint64_t sub_1D686793C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[11];
  v35 = v1[12];
  v36 = v2;
  v4 = v1[13];
  v37 = v1[14];
  v5 = v1[9];
  v7 = v1[7];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v8 = v1[9];
  v9 = v1[11];
  v33 = v1[10];
  v10 = v33;
  v34 = v9;
  v11 = v1[5];
  v13 = v1[3];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v14 = v1[5];
  v15 = v1[7];
  v29 = v1[6];
  v16 = v29;
  v30 = v15;
  v17 = v1[1];
  v24[0] = *v1;
  v24[1] = v17;
  v18 = v1[3];
  v20 = *v1;
  v19 = v1[1];
  v25 = v1[2];
  v21 = v25;
  v26 = v18;
  *(a1 + 192) = v35;
  *(a1 + 208) = v4;
  *(a1 + 224) = v1[14];
  *(a1 + 128) = v6;
  *(a1 + 144) = v8;
  *(a1 + 160) = v10;
  *(a1 + 176) = v3;
  *(a1 + 64) = v12;
  *(a1 + 80) = v14;
  *(a1 + 96) = v16;
  *(a1 + 112) = v7;
  *a1 = v20;
  *(a1 + 16) = v19;
  v38 = *(v1 + 30);
  *(a1 + 240) = *(v1 + 30);
  *(a1 + 32) = v21;
  *(a1 + 48) = v13;
  type metadata accessor for FeedGroupItem();
  swift_storeEnumTagMultiPayload();
  return sub_1D62DAD08(v24, v23);
}

void *sub_1D6867A1C()
{
  v1 = sub_1D7257A4C();
  v2 = *(v1 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v1, v3).n128_u64[0];
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 48);
  v43 = *(v0 + 49);
  v10 = *(v0 + 112);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 176);
  v40 = *(v0 + 184);
  v41 = v11;
  v15 = *(v0 + 192);
  v44 = v13;
  v45 = v15;
  if (v14 && ([v14 respondsToSelector_] & 1) != 0)
  {
    v39 = [v14 role];
    v42 = 0;
  }

  else
  {
    v39 = 0;
    v42 = 1;
  }

  v46[6] = v7;
  v47 = MEMORY[0x1E69E7CD0];
  strcpy(v46, "paywall-type-");
  HIWORD(v46[1]) = -4864;
  v46[5] = v8;
  sub_1D72579DC();
  sub_1D5BF4D9C();
  sub_1D7263A4C();
  (*(v2 + 8))(v6, v1);
  v16 = sub_1D726210C();
  v18 = v17;

  MEMORY[0x1DA6F9910](v16, v18);

  sub_1D5B860D0(v46, v46[0], v46[1]);

  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v46[0] = 0xD000000000000012;
  v46[1] = 0x80000001D73D9810;
  if (v9)
  {
    v19 = 0x656C626967696C65;
  }

  else
  {
    v19 = 0x626967696C656E69;
  }

  if (v9)
  {
    v20 = 0xE800000000000000;
  }

  else
  {
    v20 = 0xEA0000000000656CLL;
  }

  MEMORY[0x1DA6F9910](v19, v20);

  sub_1D5B860D0(v46, v46[0], v46[1]);

  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v46[0] = 0xD00000000000001BLL;
  v46[1] = 0x80000001D73D9830;
  if (v10)
  {
    v21 = 0x656C626967696C65;
  }

  else
  {
    v21 = 0x626967696C656E69;
  }

  if (v10)
  {
    v22 = 0xE800000000000000;
  }

  else
  {
    v22 = 0xEA0000000000656CLL;
  }

  MEMORY[0x1DA6F9910](v21, v22);

  sub_1D5B860D0(v46, v46[0], v46[1]);

  v23 = v41;
  if (v12 == 0x73676E69766173 && v41 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {
    sub_1D5B860D0(v46, 0xD000000000000027, 0x80000001D73D9960);

    v24 = v44;
    goto LABEL_31;
  }

  v24 = v44;
  if (v12 == 0x6465726563697270 && v23 == 0xEE006E6F69746375 || (sub_1D72646CC() & 1) != 0)
  {
    v25 = 0xD00000000000002FLL;
    v26 = 0x80000001D73D9930;
LABEL_30:
    sub_1D5B860D0(v46, v25, v26);

    goto LABEL_31;
  }

  if (v12 == 0x756C617674736562 && v23 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {
    v27 = "services-bundle-upsell-scenario-best-value";
LABEL_29:
    v26 = (v27 - 32) | 0x8000000000000000;
    v25 = 0xD00000000000002ALL;
    goto LABEL_30;
  }

  if (v12 == 0x6974736567677573 && v23 == 0xEA00000000006E6FLL || (sub_1D72646CC() & 1) != 0)
  {
    v27 = "services-bundle-upsell-scenario-suggestion";
    goto LABEL_29;
  }

LABEL_31:
  if (v43)
  {
    sub_1D5B860D0(v46, 0xD000000000000014, 0x80000001D73D98B0);

    if (v42)
    {
LABEL_33:
      if (v24)
      {
        goto LABEL_34;
      }

LABEL_39:
      v32 = &unk_1F50F6520;
LABEL_41:
      v29 = sub_1D5BFAC38(v32);
      sub_1D5BFB68C(v32 + 32);
      goto LABEL_42;
    }
  }

  else if (v42)
  {
    goto LABEL_33;
  }

  v30 = FCArticleRole.selector.getter(v39);
  sub_1D5B860D0(v46, v30, v31);

  if (!v24)
  {
    goto LABEL_39;
  }

LABEL_34:
  if (v24 == 1)
  {
    v32 = &unk_1F50F6550;
    goto LABEL_41;
  }

  if (v24 == 2)
  {
    goto LABEL_43;
  }

  v29 = sub_1D5B86020(v28);
  sub_1D6868614(v24);
LABEL_42:
  sub_1D5B886D0(v29);
LABEL_43:
  if (v45)
  {
    v33 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v33 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      sub_1D5B860D0(v46, 0xD000000000000032, 0x80000001D73D9850);
    }
  }

  v34 = v47;
  v35 = *(v47 + 16);
  if (!v35)
  {
    goto LABEL_51;
  }

  v36 = sub_1D5B9A6D8(*(v47 + 16), 0);
  v37 = sub_1D5B9A6EC(v46, v36 + 4, v35, v34);
  sub_1D5BA45DC(v46[0], v46[1], v46[2], v46[3], v46[4]);
  if (v37 != v35)
  {
    __break(1u);
LABEL_51:

    return MEMORY[0x1E69E7CC0];
  }

  return v36;
}

uint64_t static FeedPaywall.groupContentSelectors(paywallType:isBundleFreeTrialEligible:servicesBundleTrialEligible:servicesBundleUpsellScenario:isWebAccessAvailable:articleRole:numberOfOffers:activationEligibility:personalizedTopChannelsClause:recipePaywallEligible:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10, unint64_t *a11, uint64_t a12, unint64_t a13, char a14)
{
  v44 = a8;
  v45 = a6;
  v46 = a7;
  v19 = sub_1D7257A4C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a11;
  v48 = a2;
  strcpy(v49, "paywall-type-");
  HIWORD(v49[1]) = -4864;
  v50 = MEMORY[0x1E69E7CD0];
  v47 = a1;
  sub_1D72579DC();
  sub_1D5BF4D9C();
  sub_1D7263A4C();
  (*(v20 + 8))(v23, v19);
  v25 = sub_1D726210C();
  v27 = v26;

  MEMORY[0x1DA6F9910](v25, v27);

  sub_1D5B860D0(v49, v49[0], v49[1]);

  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v49[0] = 0xD000000000000012;
  v49[1] = 0x80000001D73D9810;
  if (a3)
  {
    v28 = 0x656C626967696C65;
  }

  else
  {
    v28 = 0x626967696C656E69;
  }

  if (a3)
  {
    v29 = 0xE800000000000000;
  }

  else
  {
    v29 = 0xEA0000000000656CLL;
  }

  MEMORY[0x1DA6F9910](v28, v29);

  sub_1D5B860D0(v49, v49[0], v49[1]);

  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v49[0] = 0xD00000000000001BLL;
  v49[1] = 0x80000001D73D9830;
  if (a4)
  {
    v30 = 0x656C626967696C65;
  }

  else
  {
    v30 = 0x626967696C656E69;
  }

  if (a4)
  {
    v31 = 0xE800000000000000;
  }

  else
  {
    v31 = 0xEA0000000000656CLL;
  }

  MEMORY[0x1DA6F9910](v30, v31);

  sub_1D5B860D0(v49, v49[0], v49[1]);
  v32 = v45;

  if (a5 == 0x73676E69766173 && v32 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {
    v33 = "upsell-scenario-price-reduction";
    v34 = 0xD000000000000027;
LABEL_17:
    v35 = v33 | 0x8000000000000000;
LABEL_18:
    sub_1D5B860D0(v49, v34, v35);

    goto LABEL_19;
  }

  if (a5 == 0x6465726563697270 && v32 == 0xEE006E6F69746375 || (sub_1D72646CC() & 1) != 0)
  {
    v33 = "upsell-scenario-best-value";
    v34 = 0xD00000000000002FLL;
    goto LABEL_17;
  }

  if (a5 == 0x756C617674736562 && v32 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {
    v43 = "services-bundle-upsell-scenario-best-value";
LABEL_49:
    v35 = (v43 - 32) | 0x8000000000000000;
    v34 = 0xD00000000000002ALL;
    goto LABEL_18;
  }

  if (a5 == 0x6974736567677573 && v32 == 0xEA00000000006E6FLL || (sub_1D72646CC() & 1) != 0)
  {
    v43 = "services-bundle-upsell-scenario-suggestion";
    goto LABEL_49;
  }

LABEL_19:
  if (v46)
  {
    sub_1D5B860D0(v49, 0xD000000000000014, 0x80000001D73D98B0);
  }

  if ((a9 & 1) == 0)
  {
    v36 = FCArticleRole.selector.getter(v44);
    sub_1D5B860D0(v49, v36, v37);
  }

  if (a10 >= 2)
  {
    sub_1D5B860D0(v49, 0xD000000000000019, 0x80000001D73D9890);
  }

  switch(v24)
  {
    case 0uLL:
      v40 = &unk_1F50F6520;
      goto LABEL_35;
    case 1uLL:
      v40 = &unk_1F50F6550;
LABEL_35:
      v39 = sub_1D5BFAC38(v40);
      sub_1D5BFB68C(v40 + 32);
      goto LABEL_36;
    case 2uLL:
      goto LABEL_37;
  }

  v39 = sub_1D5B86020(v38);
  sub_1D6868614(v24);
LABEL_36:
  sub_1D5B886D0(v39);
LABEL_37:
  if (a13)
  {
    v41 = a12 & 0xFFFFFFFFFFFFLL;
    if ((a13 & 0x2000000000000000) != 0)
    {
      v41 = HIBYTE(a13) & 0xF;
    }

    if (v41)
    {
      sub_1D5B860D0(v49, 0xD000000000000032, 0x80000001D73D9850);
    }
  }

  if (a14)
  {
    sub_1D5B860D0(v49, 0x6365722D656C6F72, 0xEB00000000657069);
  }

  return v50;
}

uint64_t static FeedPaywall.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

NewsFeed::FeedPaywallButton __swiftcall FeedPaywallButton.init(primaryText:secondaryText:)(Swift::String primaryText, Swift::String_optional secondaryText)
{
  v2->value = primaryText;
  v2[1] = secondaryText;
  result.secondaryText = secondaryText;
  result.primaryText = primaryText;
  return result;
}

unint64_t sub_1D6868614(unint64_t result)
{
  if (result != 2)
  {
    return sub_1D5C08648(result);
  }

  return result;
}

unint64_t sub_1D6868624(uint64_t a1)
{
  result = sub_1D686864C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D686864C()
{
  result = qword_1EC88D0F8;
  if (!qword_1EC88D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D0F8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed33SubscriptionActivationEligibilityO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed33SubscriptionActivationEligibilityOSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D68686EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_1D6868734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D68687FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1D725990C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  v31 = v2[3];
  v32 = v12;
  v13 = v2[5];
  v29 = v2[4];
  v30 = v13;
  v33 = a2;
  sub_1D7259B7C();

  sub_1D5FBB05C(&v35, a1, v10, v11);

  v14 = v35;
  v34 = a1;
  v15 = off_1F51AF338[0];
  v16 = type metadata accessor for FormatNodeContext();
  v17 = v15();
  sub_1D5E03020(v17, v14);
  if (v3)
  {

    v18 = sub_1D7259B8C();
    return (*(*(v18 - 8) + 8))(v33, v18);
  }

  else
  {
    v28 = v9;

    sub_1D7259B5C();
    v20 = v32;

    v21 = v31;

    sub_1D5FBB05C(&v35, a1, v20, v21);

    v22 = v35;
    v34 = a1;
    v23 = v15();
    sub_1D5E03020(v23, v22);
    v32 = v16;

    sub_1D7259B6C();
    v24 = v29;
    sub_1D5DEA234(v29);
    v25 = v30;

    sub_1D5F9EA2C(v24, v25, &v35);
    sub_1D5CBF568(v24);

    v26 = v35;
    if (v35)
    {
      if (v35 == 1)
      {
        sub_1D72598CC();
      }

      else if (v35 == 2)
      {
        sub_1D72598DC();
      }

      else
      {
        v34 = a1;
        v27 = v15();
        sub_1D5E02AFC(v27, v26);

        sub_1D72598EC();
        sub_1D5CBF568(v26);
      }
    }

    else
    {
      sub_1D72598FC();
    }

    return sub_1D7259B4C();
  }
}

uint64_t FormatFlexBoxNodeItem.order.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatFlexBoxNodeItem.priority.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t FormatFlexBoxNodeItem.flex.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  sub_1D5DEA234(v2);
}

__n128 FormatFlexBoxNodeItem.init(order:priority:flex:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = a3[1];
  result = *a1;
  v7 = *a2;
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 32) = v4;
  *(a4 + 40) = v5;
  return result;
}

__n128 FormatFlexBoxNodeItem.order.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_1D6868CEC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

__n128 FormatFlexBoxNodeItem.priority.setter(__n128 *a1)
{

  result = *a1;
  v1[1] = *a1;
  return result;
}

uint64_t sub_1D6868DA8(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 32);
  sub_1D5DEA234(*a1);

  sub_1D5CBF568(v5);

  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  return result;
}

uint64_t FormatFlexBoxNodeItem.flex.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1D5CBF568(*(v1 + 32));

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[5];
  v14 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  if ((sub_1D633D10C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v11 = sub_1D6354F50(v2, v6);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D633D10C(v4, v8) & 1) == 0)
  {
    return 0;
  }

  v12 = sub_1D6354F50(v3, v7);

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  return sub_1D6366448(v14, v5, v9, v10);
}

uint64_t _s8NewsFeed021FormatFlexBoxNodeItemD0O2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      v2 = 1;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    if (v3 >= 3)
    {
      sub_1D5DEA234(*a2);
      sub_1D5DEA234(v2);
      v4 = sub_1D633A310(v2, v3);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
LABEL_11:
    sub_1D5DEA234(*a2);
    sub_1D5DEA234(v2);
    v4 = 0;
    goto LABEL_12;
  }

  v4 = 1;
  v2 = 2;
LABEL_12:
  sub_1D5CBF568(v2);
  sub_1D5CBF568(v3);
  return v4 & 1;
}

unint64_t sub_1D68690C8(uint64_t a1)
{
  result = sub_1D68690F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68690F0()
{
  result = qword_1EC88D100;
  if (!qword_1EC88D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D100);
  }

  return result;
}

unint64_t sub_1D6869184()
{
  result = qword_1EC88D108;
  if (!qword_1EC88D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D108);
  }

  return result;
}

unint64_t sub_1D68691D8(uint64_t a1)
{
  result = sub_1D6689D58();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6869240(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6869294()
{
  result = qword_1EDF3A3C0;
  if (!qword_1EDF3A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A3C0);
  }

  return result;
}

unint64_t sub_1D68692E8()
{
  result = qword_1EDF3A3D0;
  if (!qword_1EDF3A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A3D0);
  }

  return result;
}

unint64_t sub_1D686933C()
{
  result = qword_1EDF3A3C8;
  if (!qword_1EDF3A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A3C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed021FormatFlexBoxNodeItemD0O(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_1D68693C8()
{
  result = sub_1D68693E8();
  qword_1EDFFD038 = result;
  return result;
}

id sub_1D68693E8()
{
  v0 = sub_1D7258AAC();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6728D5C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7258ABC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7258C2C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v19 = sub_1D726203C();
  [v18 setDateFormat_];

  (*(v9 + 104))(v12, *MEMORY[0x1E6969830], v8);
  sub_1D7258ACC();
  (*(v9 + 8))(v12, v8);
  v20 = sub_1D7258B6C();
  (*(v14 + 8))(v17, v13);
  [v18 setCalendar_];

  sub_1D7258CCC();
  v21 = sub_1D7258CFC();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v7, 1, v21) != 1)
  {
    v23 = sub_1D7258CDC();
    (*(v22 + 8))(v7, v21);
  }

  [v18 setTimeZone_];

  sub_1D725896C();
  v24 = sub_1D72589DC();
  (*(v26 + 8))(v3, v27);
  [v18 setLocale_];

  return v18;
}

id sub_1D68697BC()
{
  result = sub_1D68697DC();
  qword_1EDFFC620 = result;
  return result;
}

id sub_1D68697DC()
{
  v0 = sub_1D7258AAC();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6728D5C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7258ABC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7258C2C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v19 = sub_1D726203C();
  [v18 setDateFormat_];

  (*(v9 + 104))(v12, *MEMORY[0x1E6969830], v8);
  sub_1D7258ACC();
  (*(v9 + 8))(v12, v8);
  v20 = sub_1D7258B6C();
  (*(v14 + 8))(v17, v13);
  [v18 setCalendar_];

  sub_1D7258CCC();
  v21 = sub_1D7258CFC();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v7, 1, v21) != 1)
  {
    v23 = sub_1D7258CDC();
    (*(v22 + 8))(v7, v21);
  }

  [v18 setTimeZone_];

  sub_1D725896C();
  v24 = sub_1D72589DC();
  (*(v26 + 8))(v3, v27);
  [v18 setLocale_];

  return v18;
}

uint64_t sub_1D6869BD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B12ServiceErrorOyxG(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1D6869C2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6869C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6869CBC(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D6869CF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  result = sub_1D6195D3C(v2[3], a1);
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    v26 = result + 32;
    v11 = (v6 + 32);
    while (v10 < *(v8 + 16))
    {
      sub_1D5B68374(v26 + 40 * v10, v28);

      v12 = sub_1D686A5B8(v28, v5);

      if ((v12 & 1) == 0)
      {

        v20 = v29;
        v21 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        (*(v21 + 40))(&v27, v20, v21);
        *a2 = v27;
        *(a2 + 16) = v5;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;

        return __swift_destroy_boxed_opaque_existential_1(v28);
      }

      sub_1D713A66C(v28, &v27);
      v13 = sub_1D61958DC(*(a1 + 32), *(a1 + 40), v28);
      if ((v13 & ((v27 & 0x4000000000) == 0)) != 0)
      {
        v14 = v27 | 0x4000000000;
      }

      else
      {
        v14 = v27;
      }

      v15 = *(v6 + 16);
      if (v15)
      {
        v16 = 0;
        v17 = (v6 + 32);
        do
        {
          v18 = *v17++;
          v19 = 1;
          switch(v18)
          {
            case 1:
              v19 = 2;
              if ((~v16 & 2) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 2:
              v19 = 4;
              if ((~v16 & 4) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 3:
              v19 = 8;
              if ((~v16 & 8) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 4:
              v19 = 16;
              if ((~v16 & 0x10) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 5:
              v19 = 32;
              if ((~v16 & 0x20) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 6:
              v19 = 64;
              if ((~v16 & 0x40) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 7:
              v19 = 128;
              if ((~v16 & 0x80) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 8:
              v19 = 256;
              if ((~v16 & 0x100) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 9:
              v19 = 512;
              if ((~v16 & 0x200) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 10:
              v19 = 1024;
              if ((~v16 & 0x400) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 11:
              v19 = 2048;
              if ((~v16 & 0x800) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 12:
              v19 = 4096;
              if ((~v16 & 0x1000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 13:
              v19 = 0x2000;
              if ((~v16 & 0x2000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 14:
              v19 = 260;
              if ((~v16 & 0x104) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 15:
              v19 = 516;
              if ((~v16 & 0x204) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 16:
              v19 = 1028;
              if ((~v16 & 0x404) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 17:
              v19 = 0x8000;
              if ((~v16 & 0x8000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 18:
              v19 = 0x10000;
              if ((~v16 & 0x10000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 19:
              v19 = 0x20000;
              if ((~v16 & 0x20000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 20:
              v19 = 0x40000;
              if ((~v16 & 0x40000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 21:
              v19 = 0x80000;
              if ((~v16 & 0x80000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 22:
              v19 = 0x200000;
              if ((~v16 & 0x200000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 23:
              v19 = 0x400000;
              if ((~v16 & 0x400000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 24:
              v19 = 0x800000;
              if ((~v16 & 0x800000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 25:
              v19 = 0x1000000;
              if ((~v16 & 0x1000000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 26:
              v19 = 0x2000000;
              if ((~v16 & 0x2000000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 27:
              v19 = 0x4000000;
              if ((~v16 & 0x4000000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 28:
              v19 = 0x8000000;
              if ((~v16 & 0x8000000) != 0)
              {
                break;
              }

              goto LABEL_13;
            case 29:
              v19 = 0x10000000;
              goto LABEL_106;
            case 30:
              v19 = 0x20000000;
              if ((~v16 & 0x20000000) == 0)
              {
                goto LABEL_13;
              }

              break;
            case 31:
              v19 = 0x200000000;
              if ((~v16 & 0x200000000) == 0)
              {
                goto LABEL_13;
              }

              break;
            case 32:
              v19 = 0x400000000;
              if ((~v16 & 0x400000000) == 0)
              {
                goto LABEL_13;
              }

              break;
            case 33:
              v19 = 0x800000000;
              if ((~v16 & 0x800000000) == 0)
              {
                goto LABEL_13;
              }

              break;
            case 34:
              v19 = 0x1000000000;
              if ((~v16 & 0x1000000000) == 0)
              {
                goto LABEL_13;
              }

              break;
            case 35:
              if ((v16 & 0x2000000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x2000000000;
              break;
            case 36:
              if ((v16 & 0x40000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x40000000;
              break;
            case 37:
              if ((v16 & 0x80000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x80000000;
              break;
            case 38:
              if ((v16 & 0x100000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x100000000;
              break;
            case 39:
              if ((v16 & 0x4000000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x4000000000;
              break;
            case 40:
              if ((v16 & 0x8000000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x8000000000;
              break;
            case 41:
              if ((v16 & 0x10000000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x10000000000;
              break;
            case 42:
              if ((v16 & 0x20000000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x20000000000;
              break;
            case 43:
              if ((v16 & 0x80000000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x80000000000;
              break;
            case 44:
              if ((v16 & 0x100000000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x100000000000;
              break;
            case 45:
              if ((v16 & 0x1000000000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x1000000000000;
              break;
            case 46:
              if ((v16 & 0x40000000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x40000000000;
              break;
            case 47:
              if ((v16 & 0x200000000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x200000000000;
              break;
            case 48:
              if ((v16 & 0x400000000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x400000000000;
              break;
            case 49:
              if ((v16 & 0x800000000000) != 0)
              {
                goto LABEL_13;
              }

              v19 = 0x800000000000;
              break;
            default:
LABEL_106:
              if ((v19 & ~v16) == 0)
              {
                goto LABEL_13;
              }

              break;
          }

          v16 |= v19;
LABEL_13:
          --v15;
        }

        while (v15);
        if ((v16 & ~v14) != 0)
        {

          v22 = *(v6 + 16);
          if (v22)
          {
            v23 = 0;
            do
            {
              v24 = *v11++;
              v25 = qword_1D72FC878[v24];
              if ((v25 & ~v23) == 0)
              {
                v25 = 0;
              }

              v23 |= v25;
              --v22;
            }

            while (v22);
          }

          else
          {
            v23 = 0;
          }

          *a2 = v14;
          *(a2 + 8) = v23;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          *(a2 + 32) = 1;
          return __swift_destroy_boxed_opaque_existential_1(v28);
        }
      }

      ++v10;
      result = __swift_destroy_boxed_opaque_existential_1(v28);
      if (v10 == v9)
      {
        goto LABEL_114;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_114:

    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = -1;
  }

  return result;
}

uint64_t FormatBindExpression.init(identifier:kinds:count:traits:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t FormatBindExpression.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatBindExpression.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FormatBindExpression.kinds.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t FormatBindExpression.traits.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1D686A3C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[4];
  v7 = v2[1];

  v8 = sub_1D6E8DD40(v5, v7);
  v10 = v9;

  v14 = v6;
  sub_1D6869CF0(a2, v15);
  v13[0] = v15[0];
  v13[1] = v15[1];
  LOBYTE(v14) = v16;
  swift_beginAccess();
  sub_1D686B8F8(v13, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v15[0] = *(a1 + 56);
  *(a1 + 56) = 0x8000000000000000;
  sub_1D6D77438(v13, v8, v10, isUniquelyReferenced_nonNull_native);

  *(a1 + 56) = *&v15[0];
  swift_endAccess();
  sub_1D686B954(v13);
  return sub_1D725BC1C();
}

uint64_t sub_1D686A514(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D6E8DD40(*a2, a2[1]);
  v5 = *(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
  if (*(v5 + 16))
  {
    v6 = sub_1D5B69D90(v3, v4);
    v8 = v7;

    if ((v8 & 1) != 0 && *(*(v5 + 56) + 40 * v6 + 32) == 255)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_1D686A5B8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedDataVisualization();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v125[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5B62CBC(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v125[-v11 - 8];
  sub_1D5B62CBC(0, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v125[-v15 - 8];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 40))(&v126, v17, v18);
  v19 = v127;
  LOBYTE(v20) = 0;
  switch(v127)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 6uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0x10uLL:
    case 0x11uLL:
      return v20 & 1;
    case 3uLL:
      if (!*(a2 + 16))
      {
        goto LABEL_70;
      }

      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](0);
      v21 = sub_1D7264A5C();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(a2 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_70;
      }

      v24 = ~v22;
      do
      {
        v25 = *(a2 + 48) + 16 * v23;
        v20 = *v25;
        v26 = *(v25 + 8);
        if (!v26)
        {
          sub_1D5CBA0FC(*v25, 0);
          v82 = 0;
          v83 = 0;
          goto LABEL_122;
        }

        sub_1D5CBA110(*v25, *(v25 + 8));
        sub_1D5CBA0FC(v20, v26);
        sub_1D5CBA0FC(0, 0);
        LOBYTE(v20) = 0;
        v23 = (v23 + 1) & v24;
      }

      while (((*(a2 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
      return v20 & 1;
    case 4uLL:
      sub_1D5B68374(a1, v125);
      sub_1D5EFF46C();
      v27 = type metadata accessor for FeedWebEmbed();
      v28 = swift_dynamicCast();
      v29 = *(*(v27 - 8) + 56);
      if (!v28)
      {
        v29(v16, 1, 1, v27);
        sub_1D686B83C(v16, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
        if (!*(a2 + 16))
        {
          goto LABEL_70;
        }

        goto LABEL_65;
      }

      v29(v16, 0, 1, v27);
      sub_1D686B7BC(&v16[*(v27 + 52)], v12);
      if ((*(v5 + 48))(v12, 1, v4) == 1)
      {
        sub_1D686B83C(v12, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        goto LABEL_64;
      }

      sub_1D61880A0(v12, v8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D686B898(v8, type metadata accessor for WebEmbedDataVisualization);
        sub_1D686B898(v12, type metadata accessor for WebEmbedDataVisualization);
LABEL_64:
        sub_1D686B898(v16, type metadata accessor for FeedWebEmbed);
        if (!*(a2 + 16))
        {
          goto LABEL_70;
        }

LABEL_65:
        sub_1D7264A0C();
        MEMORY[0x1DA6FC0B0](2);
        v76 = sub_1D7264A5C();
        v77 = -1 << *(a2 + 32);
        v78 = v76 & ~v77;
        if (((*(a2 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
        {
          goto LABEL_70;
        }

        v79 = ~v77;
        while (1)
        {
          v80 = *(a2 + 48) + 16 * v78;
          v20 = *v80;
          v81 = *(v80 + 8);
          if (v81 == 2)
          {
            break;
          }

          sub_1D5CBA110(*v80, *(v80 + 8));
          sub_1D5CBA0FC(v20, v81);
          sub_1D5CBA0FC(0, 2uLL);
          LOBYTE(v20) = 0;
          v78 = (v78 + 1) & v79;
          if (((*(a2 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
          {
            return v20 & 1;
          }
        }

        goto LABEL_121;
      }

      v84 = *v8;
      sub_1D686B898(v12, type metadata accessor for WebEmbedDataVisualization);
      sub_1D686B898(v16, type metadata accessor for FeedWebEmbed);
      v85 = v84 >> 61;

      if ((v84 >> 61) <= 2)
      {
        if (v85)
        {
          if (v85 == 1)
          {
            if (!*(a2 + 16) || (v124 = xmmword_1D72830B0, sub_1D7264A0C(), FormatItemKind.hash(into:)(), v93 = sub_1D7264A5C(), v94 = -1 << *(a2 + 32), v95 = v93 & ~v94, ((*(a2 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0))
            {
LABEL_95:
              v92 = 6;
              goto LABEL_127;
            }

            v96 = ~v94;
            while (1)
            {
              v97 = *(a2 + 48) + 16 * v95;
              v20 = *v97;
              v98 = *(v97 + 8);
              if (v98 == 2)
              {
                break;
              }

              sub_1D5CBA110(*v97, *(v97 + 8));
              sub_1D5CBA0FC(v20, v98);
              sub_1D5CBA0FC(0, 2uLL);
              v95 = (v95 + 1) & v96;
              if (((*(a2 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
              {
                goto LABEL_95;
              }
            }
          }

          else
          {
            if (!*(a2 + 16) || (v124 = xmmword_1D72830B0, sub_1D7264A0C(), FormatItemKind.hash(into:)(), v111 = sub_1D7264A5C(), v112 = -1 << *(a2 + 32), v113 = v111 & ~v112, ((*(a2 + 56 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113) & 1) == 0))
            {
LABEL_114:
              v92 = 7;
              goto LABEL_127;
            }

            v114 = ~v112;
            while (1)
            {
              v115 = *(a2 + 48) + 16 * v113;
              v20 = *v115;
              v116 = *(v115 + 8);
              if (v116 == 2)
              {
                break;
              }

              sub_1D5CBA110(*v115, *(v115 + 8));
              sub_1D5CBA0FC(v20, v116);
              sub_1D5CBA0FC(0, 2uLL);
              v113 = (v113 + 1) & v114;
              if (((*(a2 + 56 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113) & 1) == 0)
              {
                goto LABEL_114;
              }
            }
          }
        }

        else
        {
          if (!*(a2 + 16) || (v124 = xmmword_1D72830B0, sub_1D7264A0C(), FormatItemKind.hash(into:)(), v105 = sub_1D7264A5C(), v106 = -1 << *(a2 + 32), v107 = v105 & ~v106, ((*(a2 + 56 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0))
          {
LABEL_108:
            v92 = 5;
            goto LABEL_127;
          }

          v108 = ~v106;
          while (1)
          {
            v109 = *(a2 + 48) + 16 * v107;
            v20 = *v109;
            v110 = *(v109 + 8);
            if (v110 == 2)
            {
              break;
            }

            sub_1D5CBA110(*v109, *(v109 + 8));
            sub_1D5CBA0FC(v20, v110);
            sub_1D5CBA0FC(0, 2uLL);
            v107 = (v107 + 1) & v108;
            if (((*(a2 + 56 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
            {
              goto LABEL_108;
            }
          }
        }

LABEL_121:
        sub_1D5CBA0FC(v20, 2uLL);
        v82 = 0;
        v83 = 2;
        goto LABEL_122;
      }

      if (v85 <= 4)
      {
        if (v85 == 3)
        {
          if (*(a2 + 16))
          {
            v124 = xmmword_1D72830B0;
            sub_1D7264A0C();
            FormatItemKind.hash(into:)();
            v86 = sub_1D7264A5C();
            v87 = -1 << *(a2 + 32);
            v88 = v86 & ~v87;
            if ((*(a2 + 56 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88))
            {
              v89 = ~v87;
              do
              {
                v90 = *(a2 + 48) + 16 * v88;
                v20 = *v90;
                v91 = *(v90 + 8);
                if (v91 == 2)
                {
                  goto LABEL_121;
                }

                sub_1D5CBA110(*v90, *(v90 + 8));
                sub_1D5CBA0FC(v20, v91);
                sub_1D5CBA0FC(0, 2uLL);
                v88 = (v88 + 1) & v89;
              }

              while (((*(a2 + 56 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) != 0);
            }
          }

          v92 = 8;
          goto LABEL_127;
        }

        if (*(a2 + 16))
        {
          v124 = xmmword_1D72830B0;
          sub_1D7264A0C();
          FormatItemKind.hash(into:)();
          v117 = sub_1D7264A5C();
          v118 = -1 << *(a2 + 32);
          v119 = v117 & ~v118;
          if ((*(a2 + 56 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119))
          {
            v120 = ~v118;
            do
            {
              v121 = *(a2 + 48) + 16 * v119;
              v20 = *v121;
              v122 = *(v121 + 8);
              if (v122 == 2)
              {
                goto LABEL_121;
              }

              sub_1D5CBA110(*v121, *(v121 + 8));
              sub_1D5CBA0FC(v20, v122);
              sub_1D5CBA0FC(0, 2uLL);
              v119 = (v119 + 1) & v120;
            }

            while (((*(a2 + 56 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119) & 1) != 0);
          }
        }

        v92 = 9;
LABEL_127:
        LOBYTE(v20) = sub_1D6184038(0, v92, a2);
        return v20 & 1;
      }

      if (v85 == 5)
      {
        if (!*(a2 + 16) || (v124 = xmmword_1D72830B0, sub_1D7264A0C(), FormatItemKind.hash(into:)(), v99 = sub_1D7264A5C(), v100 = -1 << *(a2 + 32), v101 = v99 & ~v100, ((*(a2 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0))
        {
LABEL_102:
          v92 = 10;
          goto LABEL_127;
        }

        v102 = ~v100;
        while (1)
        {
          v103 = *(a2 + 48) + 16 * v101;
          v20 = *v103;
          v104 = *(v103 + 8);
          if (v104 == 2)
          {
            goto LABEL_121;
          }

          sub_1D5CBA110(*v103, *(v103 + 8));
          sub_1D5CBA0FC(v20, v104);
          sub_1D5CBA0FC(0, 2uLL);
          v101 = (v101 + 1) & v102;
          if (((*(a2 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
          {
            goto LABEL_102;
          }
        }
      }

      if ((sub_1D6184038(0, 2uLL, a2) & 1) == 0)
      {
        v92 = 11;
        goto LABEL_127;
      }

      LOBYTE(v20) = 1;
      return v20 & 1;
    case 5uLL:
      if (!*(a2 + 16))
      {
        goto LABEL_70;
      }

      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](1);
      v30 = sub_1D7264A5C();
      v31 = -1 << *(a2 + 32);
      v32 = v30 & ~v31;
      if (((*(a2 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_70;
      }

      v33 = ~v31;
      while (1)
      {
        v34 = *(a2 + 48) + 16 * v32;
        v35 = *v34;
        v20 = *(v34 + 8);
        if (v20 == 1)
        {
          break;
        }

        sub_1D5CBA110(*v34, *(v34 + 8));
        sub_1D5CBA0FC(v35, v20);
        sub_1D5CBA0FC(0, 1uLL);
        LOBYTE(v20) = 0;
        v32 = (v32 + 1) & v33;
        if (((*(a2 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          return v20 & 1;
        }
      }

      sub_1D5CBA0FC(*v34, 1uLL);
      sub_1D5CBA0FC(0, 1uLL);
      return v20 & 1;
    case 7uLL:
      if (!*(a2 + 16))
      {
        goto LABEL_70;
      }

      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](4);
      v42 = sub_1D7264A5C();
      v43 = -1 << *(a2 + 32);
      v44 = v42 & ~v43;
      if (((*(a2 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
      {
        goto LABEL_70;
      }

      v45 = ~v43;
      while (1)
      {
        v46 = *(a2 + 48) + 16 * v44;
        v20 = *v46;
        v47 = *(v46 + 8);
        if (v47 == 4)
        {
          break;
        }

        sub_1D5CBA110(*v46, *(v46 + 8));
        sub_1D5CBA0FC(v20, v47);
        sub_1D5CBA0FC(0, 4uLL);
        LOBYTE(v20) = 0;
        v44 = (v44 + 1) & v45;
        if (((*(a2 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
        {
          return v20 & 1;
        }
      }

      sub_1D5CBA0FC(*v46, 4uLL);
      v82 = 0;
      v83 = 4;
      goto LABEL_122;
    case 0xBuLL:
      if (!*(a2 + 16))
      {
        goto LABEL_70;
      }

      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](15);
      v64 = sub_1D7264A5C();
      v65 = -1 << *(a2 + 32);
      v66 = v64 & ~v65;
      if (((*(a2 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
      {
        goto LABEL_70;
      }

      v67 = ~v65;
      while (1)
      {
        v68 = *(a2 + 48) + 16 * v66;
        v20 = *v68;
        v69 = *(v68 + 8);
        if (v69 == 15)
        {
          break;
        }

        sub_1D5CBA110(*v68, *(v68 + 8));
        sub_1D5CBA0FC(v20, v69);
        sub_1D5CBA0FC(0, 0xFuLL);
        LOBYTE(v20) = 0;
        v66 = (v66 + 1) & v67;
        if (((*(a2 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
        {
          return v20 & 1;
        }
      }

      sub_1D5CBA0FC(*v68, 0xFuLL);
      v82 = 0;
      v83 = 15;
      goto LABEL_122;
    case 0xDuLL:
      if (!*(a2 + 16))
      {
        goto LABEL_70;
      }

      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](12);
      v36 = sub_1D7264A5C();
      v37 = -1 << *(a2 + 32);
      v38 = v36 & ~v37;
      if (((*(a2 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        goto LABEL_70;
      }

      v39 = ~v37;
      while (1)
      {
        v40 = *(a2 + 48) + 16 * v38;
        v20 = *v40;
        v41 = *(v40 + 8);
        if (v41 == 12)
        {
          break;
        }

        sub_1D5CBA110(*v40, *(v40 + 8));
        sub_1D5CBA0FC(v20, v41);
        sub_1D5CBA0FC(0, 0xCuLL);
        LOBYTE(v20) = 0;
        v38 = (v38 + 1) & v39;
        if (((*(a2 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          return v20 & 1;
        }
      }

      sub_1D5CBA0FC(*v40, 0xCuLL);
      v82 = 0;
      v83 = 12;
      goto LABEL_122;
    case 0xEuLL:
      if (!*(a2 + 16))
      {
        goto LABEL_70;
      }

      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](13);
      v70 = sub_1D7264A5C();
      v71 = -1 << *(a2 + 32);
      v72 = v70 & ~v71;
      if (((*(a2 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
      {
        goto LABEL_70;
      }

      v73 = ~v71;
      while (1)
      {
        v74 = *(a2 + 48) + 16 * v72;
        v20 = *v74;
        v75 = *(v74 + 8);
        if (v75 == 13)
        {
          break;
        }

        sub_1D5CBA110(*v74, *(v74 + 8));
        sub_1D5CBA0FC(v20, v75);
        sub_1D5CBA0FC(0, 0xDuLL);
        LOBYTE(v20) = 0;
        v72 = (v72 + 1) & v73;
        if (((*(a2 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
        {
          return v20 & 1;
        }
      }

      sub_1D5CBA0FC(*v74, 0xDuLL);
      v82 = 0;
      v83 = 13;
      goto LABEL_122;
    case 0xFuLL:
      if (!*(a2 + 16) || (sub_1D7264A0C(), MEMORY[0x1DA6FC0B0](14), v48 = sub_1D7264A5C(), v49 = -1 << *(a2 + 32), v50 = v48 & ~v49, ((*(a2 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0))
      {
LABEL_70:
        LOBYTE(v20) = 0;
        return v20 & 1;
      }

      v51 = ~v49;
      while (1)
      {
        v52 = *(a2 + 48) + 16 * v50;
        v20 = *v52;
        v53 = *(v52 + 8);
        if (v53 == 14)
        {
          break;
        }

        sub_1D5CBA110(*v52, *(v52 + 8));
        sub_1D5CBA0FC(v20, v53);
        sub_1D5CBA0FC(0, 0xEuLL);
        LOBYTE(v20) = 0;
        v50 = (v50 + 1) & v51;
        if (((*(a2 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
        {
          return v20 & 1;
        }
      }

      sub_1D5CBA0FC(*v52, 0xEuLL);
      v82 = 0;
      v83 = 14;
      goto LABEL_122;
    default:
      v54 = v126;
      if (!*(a2 + 16))
      {
        goto LABEL_59;
      }

      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](16);
      sub_1D72621EC();
      v55 = sub_1D7264A5C();
      v56 = -1 << *(a2 + 32);
      v57 = v55 & ~v56;
      if (((*(a2 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
      {
        goto LABEL_59;
      }

      v58 = ~v56;
      while (2)
      {
        v59 = (*(a2 + 48) + 16 * v57);
        v61 = *v59;
        v60 = v59[1];
        if (v60 < 0x10)
        {

          sub_1D5CBA0FC(v61, v60);
          sub_1D5CBA0FC(v54, v19);
          goto LABEL_39;
        }

        if (v61 != v54 || v60 != v19)
        {
          v63 = sub_1D72646CC();
          sub_1D5BF2DDC(v54, v19);
          sub_1D5CBA110(v61, v60);
          sub_1D5CBA0FC(v61, v60);
          sub_1D5CBA0FC(v54, v19);
          if (v63)
          {
            sub_1D5BF6680(v54, v19);
            LOBYTE(v20) = 1;
            return v20 & 1;
          }

LABEL_39:
          v57 = (v57 + 1) & v58;
          if (((*(a2 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
          {
LABEL_59:
            sub_1D5BF6680(v54, v19);
            LOBYTE(v20) = 0;
            return v20 & 1;
          }

          continue;
        }

        break;
      }

      sub_1D5CBA0FC(v54, v19);
      v82 = v54;
      v83 = v19;
LABEL_122:
      sub_1D5CBA0FC(v82, v83);
      LOBYTE(v20) = 1;
      return v20 & 1;
  }
}

uint64_t _s8NewsFeed20FormatBindExpressionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1D72646CC() & 1) == 0 || (sub_1D5E1EFE4(v2, v5) & 1) == 0 || v4 != v6)
  {
    return 0;
  }

  return sub_1D634F2BC(v3, v7);
}

unint64_t sub_1D686B6A4(uint64_t a1)
{
  result = sub_1D686B6CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D686B6CC()
{
  result = qword_1EC88D110;
  if (!qword_1EC88D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D110);
  }

  return result;
}

unint64_t sub_1D686B720(void *a1)
{
  a1[1] = sub_1D5CB7230();
  a1[2] = sub_1D66FEAC4();
  result = sub_1D686B758();
  a1[3] = result;
  return result;
}

unint64_t sub_1D686B758()
{
  result = qword_1EC88D118;
  if (!qword_1EC88D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D118);
  }

  return result;
}

uint64_t sub_1D686B7BC(uint64_t a1, uint64_t a2)
{
  sub_1D5B62CBC(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D686B83C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B62CBC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D686B898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatPaywallBinding.Bool.BOOL(from:)(uint64_t a1)
{
  if (!*v1)
  {
    return *(a1 + 48);
  }

  if (*v1 == 1)
  {
    return *(a1 + 49);
  }

  return *(a1 + 56) > 1;
}

uint64_t sub_1D686B9D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "isBundleFreeTrialEligible";
  v4 = 0xD000000000000014;
  if (v2 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v2 == 1)
  {
    v6 = "isBundleFreeTrialEligible";
  }

  else
  {
    v6 = "isWebAccessAvailable";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ack";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000019;
    v3 = "isWebAccessAvailable";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "ack";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D686BAAC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D686BB44()
{
  sub_1D72621EC();
}

uint64_t sub_1D686BBC8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D686BC5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D686C494();
  *a1 = result;
  return result;
}

void sub_1D686BC8C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000019;
  v3 = "isBundleFreeTrialEligible";
  v4 = 0xD000000000000014;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000019;
    v3 = "isWebAccessAvailable";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "ack";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t FormatPaywallBinding.Bool.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D686BE30()
{
  result = qword_1EC88D120;
  if (!qword_1EC88D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D120);
  }

  return result;
}

unint64_t sub_1D686BE84(uint64_t a1)
{
  result = sub_1D686BEAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D686BEAC()
{
  result = qword_1EC88D128;
  if (!qword_1EC88D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D128);
  }

  return result;
}

unint64_t sub_1D686BF00(void *a1)
{
  a1[1] = sub_1D668F484();
  a1[2] = sub_1D66FE31C();
  result = sub_1D686BE30();
  a1[3] = result;
  return result;
}

unint64_t sub_1D686BF8C()
{
  result = qword_1EC88D130;
  if (!qword_1EC88D130)
  {
    sub_1D686BFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D130);
  }

  return result;
}

void sub_1D686BFE4()
{
  if (!qword_1EC88D138)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D138);
    }
  }
}

unint64_t sub_1D686C038()
{
  result = qword_1EC88D140;
  if (!qword_1EC88D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D140);
  }

  return result;
}

unint64_t sub_1D686C08C()
{
  result = qword_1EC88D148;
  if (!qword_1EC88D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D148);
  }

  return result;
}

double sub_1D686C0E0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v25 = a2;
  sub_1D5EA74B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 48);
  v30 = *(a1 + 49);
  v31 = v8;
  v9 = *(a1 + 56);
  *&v32[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 3, 0);
  v10 = *&v32[0];
  v29 = v9 > 1;
  v11 = type metadata accessor for FormatInspectionItem(0);
  v12 = 0;
  v27 = "Is Multiple Offers Available";
  v28 = "Is Web Access Available";
  v26 = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ";
  do
  {
    v13 = *(v11 + 24);
    if (byte_1F50F73C8[v12 + 32])
    {
      if (byte_1F50F73C8[v12 + 32] == 1)
      {
        *(v7 + v13) = v30;
        v14 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v14 - 8) + 56))(v7 + v13, 0, 1, v14);
        *v7 = 0xD000000000000017;
        v15 = v27;
      }

      else
      {
        *(v7 + v13) = v29;
        v17 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v17 - 8) + 56))(v7 + v13, 0, 1, v17);
        *v7 = 0xD00000000000001CLL;
        v15 = v26;
      }
    }

    else
    {
      *(v7 + v13) = v31;
      v16 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v16 - 8) + 56))(v7 + v13, 0, 1, v16);
      *v7 = 0xD00000000000001DLL;
      v15 = v28;
    }

    v7[2] = 0;
    v7[3] = 0;
    v7[1] = v15 | 0x8000000000000000;
    v18 = v7 + *(v11 + 28);
    *v18 = 0;
    *(v18 + 1) = 0;
    v18[16] = -1;
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    *&v32[0] = v10;
    v20 = *(v10 + 16);
    v19 = *(v10 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D69972A4(v19 > 1, v20 + 1, 1);
      v10 = *&v32[0];
    }

    ++v12;
    *(v10 + 16) = v20 + 1;
    sub_1D5E4F52C(v7, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20);
  }

  while (v12 != 3);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v10, v32);

  result = *v32;
  v22 = v32[1];
  v23 = v25;
  *v25 = v32[0];
  v23[1] = v22;
  *(v23 + 4) = v33;
  return result;
}

uint64_t sub_1D686C494()
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

char *sub_1D686C4E0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed30DebugPersonalizationHeaderView_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11 = objc_opt_self();
  v12 = [v11 systemFontOfSize:20.0 weight:*MEMORY[0x1E69DB958]];
  [v10 setFont_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v13 = OBJC_IVAR____TtC8NewsFeed30DebugPersonalizationHeaderView_subHeaderLabel;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v15 = [v11 systemFontOfSize:14.0 weight:*MEMORY[0x1E69DB978]];
  [v14 setFont_];

  v16 = [objc_opt_self() secondaryLabelColor];
  [v14 setTextColor_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v13] = v14;
  v48.receiver = v4;
  v48.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v48, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC8NewsFeed30DebugPersonalizationHeaderView_titleLabel;
  v19 = *&v17[OBJC_IVAR____TtC8NewsFeed30DebugPersonalizationHeaderView_titleLabel];
  v20 = v17;
  [v20 addSubview_];
  v21 = OBJC_IVAR____TtC8NewsFeed30DebugPersonalizationHeaderView_subHeaderLabel;
  [v20 addSubview_];
  v47 = objc_opt_self();
  sub_1D5E42B34();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D727D5D0;
  v23 = [*&v17[v18] topAnchor];
  v24 = [v20 &selRef_dataProvider];
  v25 = [v23 constraintEqualToAnchor:v24 constant:8.0];

  *(v22 + 32) = v25;
  v26 = [*&v17[v18] leadingAnchor];
  v27 = [v20 &off_1E84D3528 + 1];

  v28 = [v26 constraintEqualToAnchor:v27 constant:4.0];
  *(v22 + 40) = v28;
  v29 = [*&v17[v18] trailingAnchor];
  v30 = [v20 trailingAnchor];

  v31 = [v29 constraintEqualToAnchor:v30 constant:-16.0];
  *(v22 + 48) = v31;
  v32 = [*&v20[v21] topAnchor];
  v33 = [*&v17[v18] bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:2.0];

  *(v22 + 56) = v34;
  v35 = [*&v20[v21] leadingAnchor];
  v36 = [v20 leadingAnchor];

  v37 = [v35 constraintEqualToAnchor:v36 constant:4.0];
  *(v22 + 64) = v37;
  v38 = [*&v20[v21] trailingAnchor];
  v39 = [v20 trailingAnchor];

  v40 = [v38 constraintEqualToAnchor:v39 constant:-16.0];
  *(v22 + 72) = v40;
  v41 = [*&v20[v21] bottomAnchor];
  v42 = [v20 bottomAnchor];

  v43 = [v41 constraintEqualToAnchor:v42 constant:-8.0];
  *(v22 + 80) = v43;
  sub_1D60D0DF4();
  v44 = sub_1D726265C();

  [v47 activateConstraints_];

  return v20;
}

id sub_1D686CA54(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC8NewsFeed30DebugPersonalizationHeaderView_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = objc_opt_self();
  v6 = [v5 systemFontOfSize:20.0 weight:*MEMORY[0x1E69DB958]];
  [v4 setFont_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v4;
  v7 = OBJC_IVAR____TtC8NewsFeed30DebugPersonalizationHeaderView_subHeaderLabel;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v9 = [v5 systemFontOfSize:14.0 weight:*MEMORY[0x1E69DB978]];
  [v8 setFont_];

  v10 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v7] = v8;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

void sub_1D686CCAC()
{
  sub_1D686CD38(&qword_1EC88D168);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t sub_1D686CD38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugPersonalizationHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D686CDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v50 = MEMORY[0x1E697C780];
  v51 = a3;
  sub_1D686EC34(0, &qword_1EC884D08, MEMORY[0x1E697C780], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v44 - v6;
  v8 = sub_1D7260FEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D686E05C();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D686E758();
  v46 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1E697D300];
  sub_1D686E914(0, &qword_1EC88D200, sub_1D686E758, sub_1D686E9A0);
  v24 = *(v23 - 8);
  v48 = v23;
  v49 = v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v44 = &v44 - v26;
  v52 = a1;
  v53 = v45;
  sub_1D686EC34(0, &qword_1EC88D178, sub_1D686E10C, MEMORY[0x1E6981F40]);
  sub_1D686E6D0();
  sub_1D726168C();
  sub_1D7260FDC();
  sub_1D686E428(&qword_1EC88D1E8, sub_1D686E05C);
  sub_1D726183C();
  (*(v9 + 8))(v12, v8);
  (*(v15 + 8))(v18, v14);
  v27 = [objc_opt_self() secondaryLabelColor];
  v28 = sub_1D726189C();
  KeyPath = swift_getKeyPath();
  v54 = v28;
  v30 = sub_1D7260EFC();
  v31 = v46;
  v32 = &v22[*(v46 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  sub_1D72613DC();
  v33 = sub_1D72613EC();
  v34 = *(*(v33 - 8) + 56);
  v34(v7, 0, 1, v33);
  v35 = sub_1D726160C();
  v36 = sub_1D686E9A0();
  MEMORY[0x1DA6F8EA0](v7, v35, v31, v36);
  v37 = v50;
  sub_1D686ED2C(v7, &qword_1EC884D08, v50);
  sub_1D5DA472C(v22);
  sub_1D72613DC();
  v34(v7, 0, 1, v33);
  v38 = sub_1D72615FC();
  v54 = v31;
  v55 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v38;
  v41 = v48;
  v42 = v44;
  MEMORY[0x1DA6F8EA0](v7, v40, v48, OpaqueTypeConformance2);
  sub_1D686ED2C(v7, &qword_1EC884D08, v37);
  return (*(v49 + 8))(v42, v41);
}

uint64_t sub_1D686D2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v37 = a1;
  v43 = a3;
  sub_1D686E470();
  v42 = v5;
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v39 = &v36 - v10;
  sub_1D686E17C();
  v40 = v11;
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v46 = &v36 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v49 = v47;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = MEMORY[0x1E69E62F8];
  sub_1D686EC34(0, &qword_1EC881110, type metadata accessor for DebugFormatLayoutTreeItem, MEMORY[0x1E69E62F8]);
  sub_1D725895C();
  sub_1D686E914(0, &qword_1EC88D190, sub_1D686E2C4, sub_1D686E324);
  sub_1D5F25BEC();
  sub_1D686E2C4();
  v20 = v19;
  v21 = sub_1D686E324();

  v47 = v20;
  v48 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1D686E428(&qword_1EC881180, type metadata accessor for DebugFormatLayoutTreeItem);
  sub_1D72619EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v49 = v47;
  swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v37;
  *(v22 + 24) = a2;
  sub_1D686EC34(0, &qword_1EC88C8B0, type metadata accessor for DebugFormatLayoutTreePackage, v18);
  sub_1D686E574();
  sub_1D686E648();
  sub_1D686E428(&qword_1EC881120, MEMORY[0x1E69695A8]);
  v23 = sub_1D686E5F4();

  v47 = &type metadata for DebugFormatLayoutTreePackageView;
  v48 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v39;
  sub_1D72619DC();
  v25 = *(v44 + 16);
  v26 = v38;
  v27 = v40;
  v25(v38, v46, v40);
  v28 = *(v45 + 16);
  v30 = v41;
  v29 = v42;
  v28(v41, v24, v42);
  v31 = v43;
  v25(v43, v26, v27);
  sub_1D686E10C();
  v28(&v31[*(v32 + 48)], v30, v29);
  v33 = *(v45 + 8);
  v33(v24, v29);
  v34 = *(v44 + 8);
  v34(v46, v27);
  v33(v30, v29);
  return (v34)(v26, v27);
}

uint64_t sub_1D686D888(uint64_t *a1)
{
  v1 = *a1;

  sub_1D6ADC7A4(v10);
  if (sub_1D686D9BC(v1))
  {
    sub_1D5C0B9F0();
    sub_1D726357C();
    sub_1D726189C();
  }

  else
  {
    sub_1D726185C();
  }

  v2 = sub_1D726199C();
  v6 = v10[2];
  v7 = v10[3];
  v4 = v10[0];
  v5 = v10[1];
  *&v8 = v11;
  *(&v8 + 1) = v2;
  sub_1D7260EDC();
  sub_1D686E2C4();
  sub_1D686E324();
  sub_1D72617DC();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v8;
  v9[0] = v4;
  v9[1] = v5;
  return sub_1D686EB40(v9, sub_1D686E2C4);
}

uint64_t sub_1D686D9BC(uint64_t a1)
{
  v36 = a1;
  v1 = sub_1D725895C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D686EBA0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D686EC34(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v33 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v38)
  {
    v20 = *(v2 + 16);
    v20(v19, v38 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_id, v1);

    v21 = *(v2 + 56);
    v21(v19, 0, 1, v1);
  }

  else
  {
    v21 = *(v2 + 56);
    v21(v19, 1, 1, v1);
    v20 = *(v2 + 16);
  }

  v20(v15, v36 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_id, v1);
  v21(v15, 0, 1, v1);
  v22 = *(v6 + 48);
  v23 = v37;
  sub_1D686EC98(v19, v37);
  sub_1D686EC98(v15, v23 + v22);
  v24 = *(v2 + 48);
  if (v24(v23, 1, v1) != 1)
  {
    v27 = v35;
    sub_1D686EC98(v23, v35);
    if (v24(v23 + v22, 1, v1) != 1)
    {
      v29 = v34;
      (*(v2 + 32))(v34, v23 + v22, v1);
      sub_1D686E428(&qword_1EDF18A58, MEMORY[0x1E69695A8]);
      v26 = sub_1D7261FBC();
      v30 = *(v2 + 8);
      v30(v29, v1);
      v31 = MEMORY[0x1E69695A8];
      sub_1D686ED2C(v15, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
      sub_1D686ED2C(v19, &qword_1EDF3C398, v31);
      v30(v27, v1);
      sub_1D686ED2C(v37, &qword_1EDF3C398, v31);
      return v26 & 1;
    }

    v28 = MEMORY[0x1E69695A8];
    sub_1D686ED2C(v15, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
    sub_1D686ED2C(v19, &qword_1EDF3C398, v28);
    (*(v2 + 8))(v27, v1);
    goto LABEL_9;
  }

  v25 = MEMORY[0x1E69695A8];
  sub_1D686ED2C(v15, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
  v23 = v37;
  sub_1D686ED2C(v19, &qword_1EDF3C398, v25);
  if (v24(v23 + v22, 1, v1) != 1)
  {
LABEL_9:
    sub_1D686EB40(v23, sub_1D686EBA0);
    v26 = 0;
    return v26 & 1;
  }

  sub_1D686ED2C(v23, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1D686DF10()
{
  type metadata accessor for DebugFormatLayoutTree();
  sub_1D686E428(&qword_1EC881188, type metadata accessor for DebugFormatLayoutTree);

  sub_1D7260F8C();
  type metadata accessor for DebugFormatLayoutTreePackage();
  sub_1D686E428(&qword_1EC8810A8, type metadata accessor for DebugFormatLayoutTreePackage);
  sub_1D7260F8C();
  sub_1D7260EDC();
  sub_1D686E5F4();
  sub_1D72617DC();
}

void sub_1D686E05C()
{
  if (!qword_1EC88D170)
  {
    sub_1D686EC34(255, &qword_1EC88D178, sub_1D686E10C, MEMORY[0x1E6981F40]);
    sub_1D686E6D0();
    v0 = sub_1D726169C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D170);
    }
  }
}

void sub_1D686E10C()
{
  if (!qword_1EC88D180)
  {
    sub_1D686E17C();
    sub_1D686E470();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88D180);
    }
  }
}

void sub_1D686E17C()
{
  if (!qword_1EC88D188)
  {
    sub_1D686EC34(255, &qword_1EC881110, type metadata accessor for DebugFormatLayoutTreeItem, MEMORY[0x1E69E62F8]);
    sub_1D725895C();
    sub_1D686E914(255, &qword_1EC88D190, sub_1D686E2C4, sub_1D686E324);
    sub_1D5F25BEC();
    sub_1D686E428(&qword_1EC881120, MEMORY[0x1E69695A8]);
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D188);
    }
  }
}

void sub_1D686E2C4()
{
  if (!qword_1EC88D198)
  {
    sub_1D5F260A0();
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D198);
    }
  }
}

unint64_t sub_1D686E324()
{
  result = qword_1EC88D1A0;
  if (!qword_1EC88D1A0)
  {
    sub_1D686E2C4();
    sub_1D686E3D4();
    sub_1D686E428(&qword_1EC8811A8, sub_1D5F260A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D1A0);
  }

  return result;
}

unint64_t sub_1D686E3D4()
{
  result = qword_1EC88D1A8;
  if (!qword_1EC88D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D1A8);
  }

  return result;
}

uint64_t sub_1D686E428(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D686E470()
{
  if (!qword_1EC88D1B0)
  {
    sub_1D686EC34(255, &qword_1EC88C8B0, type metadata accessor for DebugFormatLayoutTreePackage, MEMORY[0x1E69E62F8]);
    sub_1D725895C();
    sub_1D686E574();
    sub_1D686E648();
    sub_1D686E428(&qword_1EC881120, MEMORY[0x1E69695A8]);
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D1B0);
    }
  }
}

void sub_1D686E574()
{
  if (!qword_1EC88D1B8)
  {
    sub_1D686E5F4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC88D1B8);
    }
  }
}

unint64_t sub_1D686E5F4()
{
  result = qword_1EC88D1C0;
  if (!qword_1EC88D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D1C0);
  }

  return result;
}

unint64_t sub_1D686E648()
{
  result = qword_1EC88D1C8;
  if (!qword_1EC88D1C8)
  {
    sub_1D686EC34(255, &qword_1EC88C8B0, type metadata accessor for DebugFormatLayoutTreePackage, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D1C8);
  }

  return result;
}

unint64_t sub_1D686E6D0()
{
  result = qword_1EC88D1D0;
  if (!qword_1EC88D1D0)
  {
    sub_1D686EC34(255, &qword_1EC88D178, sub_1D686E10C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D1D0);
  }

  return result;
}

void sub_1D686E758()
{
  if (!qword_1EC88D1D8)
  {
    sub_1D686E7F0();
    sub_1D686EC34(255, &qword_1EC88D1F0, sub_1D686E8C4, MEMORY[0x1E6980A08]);
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D1D8);
    }
  }
}

void sub_1D686E7F0()
{
  if (!qword_1EC88D1E0)
  {
    sub_1D686E05C();
    sub_1D7260FEC();
    sub_1D686E428(&qword_1EC88D1E8, sub_1D686E05C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC88D1E0);
    }
  }
}

void sub_1D686E8C4()
{
  if (!qword_1EC88D1F8)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D1F8);
    }
  }
}

void sub_1D686E914(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
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

unint64_t sub_1D686E9A0()
{
  result = qword_1EC88D208;
  if (!qword_1EC88D208)
  {
    sub_1D686E758();
    sub_1D686E05C();
    sub_1D7260FEC();
    sub_1D686E428(&qword_1EC88D1E8, sub_1D686E05C);
    swift_getOpaqueTypeConformance2();
    sub_1D686EAA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D208);
  }

  return result;
}

unint64_t sub_1D686EAA0()
{
  result = qword_1EC88D210;
  if (!qword_1EC88D210)
  {
    sub_1D686EC34(255, &qword_1EC88D1F0, sub_1D686E8C4, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D210);
  }

  return result;
}

uint64_t sub_1D686EB40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D686EBA0()
{
  if (!qword_1EDF18A50)
  {
    sub_1D686EC34(255, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF18A50);
    }
  }
}

void sub_1D686EC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D686EC98(uint64_t a1, uint64_t a2)
{
  sub_1D686EC34(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D686ED2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D686EC34(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D686ED9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    result = sub_1D6B7C1C8(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v14);
    if (v3)
    {
      return result;
    }
  }

  else
  {
    result = sub_1D6751EC0(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v14);
    if (v3)
    {
      return result;
    }
  }

  v12 = v16;
  v13[0] = v17[0];
  *(v13 + 9) = *(v17 + 9);
  v11[0] = v14[0];
  v11[1] = v14[1];
  v11[2] = v14[2];
  v11[3] = v14[3];
  v11[4] = v14[4];
  v11[5] = v15;
  v6 = *&v14[0];
  if (v15 == 1 || (v7 = *(&v12 + 1)) == 0)
  {
    FCIssue.issueCoverModel.getter(a2);
  }

  else
  {
    v8 = *&v13[0];
    *a2 = *&v14[0];
    *(a2 + 8) = v8;
    *(a2 + 16) = v7;
    *(a2 + 56) = 0;
    v9 = v7;
    v10 = v6;
  }

  return sub_1D5ECF320(v11);
}

uint64_t static FormatIssueCoverBinding.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1D686EEC0(uint64_t a1)
{
  result = sub_1D686EEE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D686EEE8()
{
  result = qword_1EC88D218;
  if (!qword_1EC88D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D218);
  }

  return result;
}

unint64_t sub_1D686EF3C(void *a1)
{
  a1[1] = sub_1D6698C44();
  a1[2] = sub_1D66FBF34();
  result = sub_1D686EF74();
  a1[3] = result;
  return result;
}

unint64_t sub_1D686EF74()
{
  result = qword_1EC88D220;
  if (!qword_1EC88D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D220);
  }

  return result;
}

__n128 FormatShadow.init(radius:opacity:offset:color:motion:)@<Q0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, float a6@<S1>)
{
  v6 = *a2;
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = *a1;
  *(a4 + 32) = v6;
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 40) = *a3;
  *(a4 + 56) = v10;
  *(a4 + 72) = v7;
  *(a4 + 80) = v8;
  return result;
}

__n128 FormatShadow.offset.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 FormatShadow.offset.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

uint64_t FormatShadow.color.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
  return result;
}

__n128 FormatShadow.motion.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  result = *(v1 + 40);
  v5 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

double _s8NewsFeed12FormatShadowV6OffsetV4zeroAEvgZ_0@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EDF33738 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1EDF33740;
  *a1 = xmmword_1EDF33740;
  return result;
}

BOOL static FormatCodingZeroOffsetStrategy.shouldEncode(wrappedValue:)(double *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_1EDF33738 != -1)
  {
    swift_once();
  }

  return v1 != *(&xmmword_1EDF33740 + 1) || v2 != *&xmmword_1EDF33740;
}

BOOL sub_1D686F2B4(double *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_1EDF33738 != -1)
  {
    swift_once();
  }

  return v1 != *(&xmmword_1EDF33740 + 1) || v2 != *&xmmword_1EDF33740;
}

uint64_t _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v23 = v2;
  v24 = v3;
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v13 = *(a2 + 56);
  v14 = *(a2 + 40);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 32);
  *&v20[0] = *(a1 + 32);
  *&v17[0] = v12;
  if ((static FormatColor.== infix(_:_:)(v20, v17) & 1) == 0)
  {
    return 0;
  }

  if (v9 == 255)
  {
    if (v11 != 255)
    {
      return 0;
    }
  }

  else
  {
    v20[0] = v16;
    v20[1] = v15;
    v21 = v8;
    v22 = v9;
    if (v11 == 255)
    {
      return 0;
    }

    v17[0] = v14;
    v17[1] = v13;
    v18 = v10;
    v19 = v11;
    if ((_s8NewsFeed12FormatMotionO2eeoiySbAC_ACtFZ_0(v20, v17) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1D686F420(uint64_t a1)
{
  result = sub_1D686F448();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D686F448()
{
  result = qword_1EC88D228;
  if (!qword_1EC88D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D228);
  }

  return result;
}

unint64_t sub_1D686F4DC()
{
  result = qword_1EC88D230;
  if (!qword_1EC88D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D230);
  }

  return result;
}

unint64_t sub_1D686F530(uint64_t a1)
{
  result = sub_1D686F558();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D686F558()
{
  result = qword_1EC88D238;
  if (!qword_1EC88D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D238);
  }

  return result;
}

uint64_t sub_1D686F5EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D686F640()
{
  result = qword_1EC88D240;
  if (!qword_1EC88D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D240);
  }

  return result;
}

unint64_t sub_1D686F694(uint64_t a1)
{
  result = sub_1D686F6BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D686F6BC()
{
  result = qword_1EC88D248;
  if (!qword_1EC88D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D248);
  }

  return result;
}

void *sub_1D686F740(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 112);
  v39[6] = *(a1 + 96);
  v39[7] = v2;
  v39[8] = *(a1 + 128);
  v40 = *(a1 + 144);
  v3 = *(a1 + 48);
  v39[2] = *(a1 + 32);
  v39[3] = v3;
  v4 = *(a1 + 80);
  v39[4] = *(a1 + 64);
  v39[5] = v4;
  v5 = *(a1 + 16);
  v39[0] = *a1;
  v39[1] = v5;
  v6 = a2[3];
  *v43 = a2[2];
  *&v43[16] = v6;
  *&v43[32] = a2[4];
  v44 = *(a2 + 80);
  v7 = a2[1];
  v41 = *a2;
  v42 = v7;
  v8 = MEMORY[0x1E69E6F90];
  sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v8);
  sub_1D5EA74B8();
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7279960;
  v13 = (v12 + v11);
  if (v44 == 254)
  {
    v14 = 0;
  }

  else
  {
    v14 = v41;
  }

  sub_1D711A80C(0x737569646152, 0xE600000000000000, v14, v44 == 254, v13);
  v15 = type metadata accessor for FormatInspectionItem(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v13, 0, 1, v15);
  v17 = DWORD2(v41);
  LOBYTE(v34[0]) = v44 == 254;
  if (v44 == 254)
  {
    v17 = 0;
  }

  sub_1D7122D18(0x7974696361704FLL, 0xE700000000000000, v17 | ((v44 == 254) << 32), (v13 + v10));
  v16((v13 + v10), 0, 1, v15);
  if (v44 == 254)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(&v42 + 1);
  }

  if (v44 == 254)
  {
    v19 = 0;
  }

  else
  {
    v19 = v42;
  }

  sub_1D712322C(0x74657366664FLL, 0xE600000000000000, v18, v19, v44 == 254, (v13 + 2 * v10));
  v16((v13 + 2 * v10), 0, 1, v15);
  if (v44 == 254)
  {
    v20 = 0xF000000000000007;
  }

  else
  {
    v20 = *v43;
  }

  sub_1D711B4B4(0x726F6C6F43, 0xE500000000000000, v20, v13 + 3 * v10);
  v16((v13 + 3 * v10), 0, 1, v15);
  sub_1D5B56024(0, &qword_1EC8803C0, sub_1D5E4F38C, v8);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1D7273AE0;
  v22 = v44;
  if (v44 == 254)
  {
    v23 = 0;
    v24 = 0uLL;
    v22 = -1;
    v25 = 0uLL;
  }

  else
  {
    v23 = *&v43[40];
    v25 = *&v43[24];
    v24 = *&v43[8];
  }

  v36[0] = v24;
  v36[1] = v25;
  v37 = v23;
  v38 = v22;
  sub_1D686FC1C(&v41, v34);
  v26 = sub_1D6930EF0(v39, v36);
  *(v21 + 56) = &type metadata for FormatInspection;
  *(v21 + 64) = &off_1F51E3FD0;
  *(v21 + 32) = v26;
  v27 = sub_1D5F62BFC(v21);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v21 + 32);
  v28 = sub_1D7073500(v27);

  sub_1D711AD20(0xD000000000000013, 0x80000001D73D9AB0, v28, 0, 0, v13 + 4 * v10);
  v16((v13 + 4 * v10), 0, 1, v15);
  sub_1D6795150(0x776F64616853, 0xE600000000000000, 0, 0, v12, v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v29 = swift_allocObject();
  *(inited + 32) = v29;
  *(v29 + 48) = v35;
  v30 = v34[1];
  *(v29 + 16) = v34[0];
  *(v29 + 32) = v30;
  v31 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5F10AA0(inited + 32);
  return v31;
}

uint64_t sub_1D686FC1C(uint64_t a1, uint64_t a2)
{
  sub_1D615C3A4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id StubImageDownloader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StubImageDownloader.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StubImageDownloader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D686FD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v53 = a3;
  v54 = a4;
  v51 = a1;
  v52 = a2;
  v60 = a5;
  sub_1D5F7BAC0();
  v59 = v5;
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v62 = &v49 - v10;
  v11 = sub_1D72613CC();
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = sub_1D7261A0C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6871194();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6871110();
  v56 = v23;
  v50 = *(v23 - 8);
  v24 = v50;
  MEMORY[0x1EEE9AC00](v23, v25);
  v55 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v61 = &v49 - v29;
  sub_1D68723D8(0, &qword_1EC88D320, MEMORY[0x1E697D750], MEMORY[0x1E69E6F90]);
  sub_1D7261A1C();
  *(swift_allocObject() + 16) = xmmword_1D7273AE0;
  *v17 = xmmword_1D72FD360;
  (*(v14 + 104))(v17, *MEMORY[0x1E697D730], v13);
  sub_1D7261A4C();
  sub_1D7261A2C();
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v66 = v54;
  sub_1D726124C();
  LODWORD(v67) = 0;
  sub_1D6871780(&qword_1EC88D328, MEMORY[0x1E697FCB0]);
  sub_1D7264C1C();
  sub_1D6871284();
  sub_1D6871844();
  sub_1D7261A7C();
  v30 = sub_1D72615EC();
  sub_1D68715C4(0, &qword_1EC88D278, sub_1D6871220);
  v32 = &v22[*(v31 + 36)];
  *v32 = v30;
  *(v32 + 8) = xmmword_1D72A38C0;
  *(v32 + 24) = xmmword_1D72A38C0;
  v32[40] = 0;
  v33 = &v22[*(v19 + 36)];
  *v33 = xmmword_1D7286690;
  *(v33 + 1) = xmmword_1D72866A0;
  v33[32] = 0;
  sub_1D7260EDC();
  sub_1D687191C();
  v34 = v61;
  sub_1D72617DC();
  sub_1D5DA4984(v22);
  v67 = 0;
  v68 = 1;
  sub_1D7260EDC();
  v35 = v62;
  sub_1D72617DC();
  v36 = *(v24 + 16);
  v38 = v55;
  v37 = v56;
  v36(v55, v34, v56);
  v40 = v57;
  v39 = v58;
  v41 = *(v57 + 16);
  v42 = v35;
  v43 = v59;
  v41(v58, v42, v59);
  v44 = v60;
  v36(v60, v38, v37);
  sub_1D6871520(0, &qword_1EC88D260, sub_1D6871110, sub_1D5F7BAC0);
  v41(&v44[*(v45 + 48)], v39, v43);
  v46 = *(v40 + 8);
  v46(v62, v43);
  v47 = *(v50 + 8);
  v47(v61, v37);
  v46(v39, v43);
  return (v47)(v38, v37);
}

uint64_t sub_1D68703C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_1D6871730(0, &qword_1EC88D290, &type metadata for FormatGroup, MEMORY[0x1E69E62F8]);
  sub_1D6871340();
  sub_1D68717C8();
  sub_1D68713F4();
  sub_1D6871780(&qword_1EC88D2E8, sub_1D68713F4);

  swift_getOpaqueTypeConformance2();
  return sub_1D72619DC();
}

uint64_t sub_1D6870558(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[7];
  v29 = a1[6];
  v30 = v9;
  v31 = a1[8];
  v10 = a1[3];
  v25 = a1[2];
  v26 = v10;
  v11 = a1[5];
  v27 = a1[4];
  v28 = v11;
  v12 = a1[1];
  v23 = *a1;
  v24 = v12;
  v13 = sub_1D726124C();
  v22 = 1;
  sub_1D6870794(&v23, __src);
  memcpy(__dst, __src, 0x141uLL);
  memcpy(v33, __src, 0x141uLL);
  sub_1D687233C(__dst, v20, sub_1D6871488);
  sub_1D6871B08(v33, sub_1D6871488);
  memcpy(&v21[7], __dst, 0x141uLL);
  v20[0] = v13;
  v20[1] = 0;
  LOBYTE(v20[2]) = v22;
  memcpy(&v20[2] + 1, v21, 0x148uLL);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  v15 = v30;
  *(v14 + 144) = v29;
  *(v14 + 160) = v15;
  *(v14 + 176) = v31;
  v16 = v26;
  *(v14 + 80) = v25;
  *(v14 + 96) = v16;
  v17 = v28;
  *(v14 + 112) = v27;
  *(v14 + 128) = v17;
  v18 = v24;
  *(v14 + 48) = v23;
  *(v14 + 64) = v18;

  sub_1D5D65D5C(&v23, __src);
  sub_1D68713F4();
  sub_1D6871780(&qword_1EC88D2E8, sub_1D68713F4);
  sub_1D726177C();

  memcpy(__src, v20, 0x159uLL);
  return sub_1D6871B08(__src, sub_1D68713F4);
}

uint64_t sub_1D6870794@<X0>(uint64_t a1@<X4>, void *a2@<X8>)
{
  v38 = a2;
  sub_1D68723A4(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D726124C();
  LOBYTE(v59[0]) = 1;

  sub_1D5D65D5C(a1, &v78);
  type metadata accessor for DebugFormatPackageTree();
  sub_1D6871780(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree);
  v39 = sub_1D7260F8C();
  v37 = v7;
  v8 = *(a1 + 112);
  v56 = *(a1 + 96);
  v57 = v8;
  v58 = *(a1 + 128);
  v9 = *(a1 + 48);
  v52 = *(a1 + 32);
  v53 = v9;
  v10 = *(a1 + 80);
  v54 = *(a1 + 64);
  v55 = v10;
  v11 = *(a1 + 16);
  v50 = *a1;
  v51 = v11;
  v41 = LOBYTE(v59[0]);
  sub_1D7261A5C();
  sub_1D7260EEC();
  v12 = *a1;
  v13 = *(a1 + 8);
  v78 = v12;
  v79 = v13;
  sub_1D5BF4D9C();

  v14 = sub_1D726171C();
  v16 = v15;
  v18 = v17;
  v19 = sub_1D726163C();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1D726167C();
  sub_1D6871B08(v6, sub_1D68723A4);
  v20 = sub_1D72616DC();
  v22 = v21;
  v24 = v23;

  sub_1D5F26348(v14, v16, v18 & 1);

  LODWORD(v78) = sub_1D726144C();
  v25 = sub_1D72616CC();
  v27 = v26;
  v29 = v28;
  v36 = v30;
  sub_1D5F26348(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v16) = sub_1D72615EC();
  LOBYTE(v20) = v29 & 1;
  LOBYTE(v78) = v29 & 1;
  v59[0] = v40;
  v59[1] = 0;
  LOBYTE(v60) = v41;
  *(&v60 + 1) = v46[0];
  DWORD1(v60) = *(v46 + 3);
  *(&v60 + 1) = v39;
  v32 = v37;
  *v61 = v37;
  *&v61[8] = v50;
  *&v61[72] = v54;
  *&v61[56] = v53;
  *&v61[40] = v52;
  *&v61[24] = v51;
  *&v61[136] = v58;
  *&v61[120] = v57;
  *&v61[104] = v56;
  *&v61[88] = v55;
  *&v61[152] = v47;
  *&v61[168] = v48;
  *&v61[184] = v49;
  v42[8] = *&v61[96];
  v42[9] = *&v61[112];
  v42[4] = *&v61[32];
  v42[5] = *&v61[48];
  v42[6] = *&v61[64];
  v42[7] = *&v61[80];
  v42[0] = v40;
  v42[1] = v60;
  v42[2] = *v61;
  v42[3] = *&v61[16];
  v42[10] = *&v61[128];
  v42[11] = *&v61[144];
  v42[12] = *&v61[160];
  v42[13] = *&v61[176];
  *&v42[14] = *(&v49 + 1);
  *&v62 = v25;
  *(&v62 + 1) = v27;
  LOBYTE(v63) = v29 & 1;
  *(&v63 + 1) = *v45;
  DWORD1(v63) = *&v45[3];
  v33 = v36;
  *(&v63 + 1) = v36;
  *&v64 = KeyPath;
  BYTE8(v64) = 1;
  HIDWORD(v64) = *&v44[3];
  *(&v64 + 9) = *v44;
  LOBYTE(v65[0]) = v16;
  DWORD1(v65[0]) = *&v43[3];
  *(v65 + 1) = *v43;
  v35 = xmmword_1D72FD370;
  *(v65 + 8) = xmmword_1D72FD370;
  *(&v65[1] + 8) = xmmword_1D72FD370;
  BYTE8(v65[2]) = 0;
  *(&v42[16] + 8) = v64;
  *(&v42[17] + 8) = v65[0];
  *(&v42[18] + 8) = v65[1];
  *(&v42[19] + 1) = *(&v65[1] + 9);
  *(&v42[14] + 8) = v62;
  *(&v42[15] + 8) = v63;
  memcpy(v38, v42, 0x141uLL);
  v66[0] = v25;
  v66[1] = v27;
  v67 = v20;
  *v68 = *v45;
  *&v68[3] = *&v45[3];
  v69 = v33;
  v70 = KeyPath;
  v71 = 1;
  *v72 = *v44;
  *&v72[3] = *&v44[3];
  v73 = v16;
  *v74 = *v43;
  *&v74[3] = *&v43[3];
  v75 = v35;
  v76 = v35;
  v77 = 0;
  sub_1D687233C(v59, &v78, sub_1D687159C);
  sub_1D687233C(&v62, &v78, sub_1D6871684);
  sub_1D6871B08(v66, sub_1D6871684);
  v89 = v55;
  v90 = v56;
  v91 = v57;
  v92 = v58;
  v85 = v51;
  v86 = v52;
  v87 = v53;
  v88 = v54;
  v84 = v50;
  v93 = v47;
  v78 = v40;
  v79 = 0;
  v80 = v41;
  *v81 = v46[0];
  *&v81[3] = *(v46 + 3);
  v82 = v39;
  v83 = v32;
  v94 = v48;
  v95 = v49;
  return sub_1D6871B08(&v78, sub_1D687159C);
}

uint64_t sub_1D6870D5C()
{
  sub_1D72644BC();
  MEMORY[0x1DA6F9910](0x736E6D756C6F4320, 0xE800000000000000);
  sub_1D7260EDC();
  sub_1D5F7BB40();
  sub_1D72617DC();
}

uint64_t sub_1D6870E40()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v1;
  *(v5 + 40) = 0;
  *(v5 + 48) = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v1;
  *(v6 + 40) = 0;
  *(v6 + 48) = 1;
  swift_retain_n();
  sub_1D72619BC();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v1;
  v7[4] = v4;
  v7[5] = v3;
  sub_1D6871054();
  sub_1D68710D4(0);
  sub_1D5F7BB40();

  swift_getOpaqueTypeConformance2();
  sub_1D6871780(&qword_1EC88D318, sub_1D68710D4);
  return sub_1D7260FFC();
}

void sub_1D6871054()
{
  if (!qword_1EC88D250)
  {
    sub_1D5F7BB40();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC88D250);
    }
  }
}

void sub_1D6871110()
{
  if (!qword_1EC88D268)
  {
    sub_1D6871194();
    sub_1D687191C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC88D268);
    }
  }
}

void sub_1D6871194()
{
  if (!qword_1EC88D270)
  {
    sub_1D68715C4(255, &qword_1EC88D278, sub_1D6871220);
    sub_1D5F7B9E4();
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D270);
    }
  }
}

void sub_1D6871220()
{
  if (!qword_1EC88D280)
  {
    sub_1D6871284();
    sub_1D6871844();
    v0 = sub_1D7261A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D280);
    }
  }
}

void sub_1D6871284()
{
  if (!qword_1EC88D288)
  {
    sub_1D6871730(255, &qword_1EC88D290, &type metadata for FormatGroup, MEMORY[0x1E69E62F8]);
    sub_1D6871340();
    sub_1D68717C8();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D288);
    }
  }
}

void sub_1D6871340()
{
  if (!qword_1EC88D298)
  {
    sub_1D68713F4();
    sub_1D6871780(&qword_1EC88D2E8, sub_1D68713F4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC88D298);
    }
  }
}

void sub_1D68713F4()
{
  if (!qword_1EC88D2A0)
  {
    sub_1D6871488(255);
    sub_1D6871780(&qword_1EC88D2E0, sub_1D6871488);
    v0 = sub_1D726198C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D2A0);
    }
  }
}

void sub_1D68714C4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D6871520(255, a3, a4, a5);
    v6 = sub_1D7261A9C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6871520(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D68715C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D6871628()
{
  if (!qword_1EC88D2C0)
  {
    sub_1D61F1C2C();
    v0 = sub_1D726198C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D2C0);
    }
  }
}

void sub_1D68716AC()
{
  if (!qword_1EC88D2D0)
  {
    sub_1D6871730(255, &qword_1EC88D2D8, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D2D0);
    }
  }
}

void sub_1D6871730(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D6871780(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D68717C8()
{
  result = qword_1EC88D2F0;
  if (!qword_1EC88D2F0)
  {
    sub_1D6871730(255, &qword_1EC88D290, &type metadata for FormatGroup, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D2F0);
  }

  return result;
}

unint64_t sub_1D6871844()
{
  result = qword_1EC88D2F8;
  if (!qword_1EC88D2F8)
  {
    sub_1D6871284();
    sub_1D68713F4();
    sub_1D6871780(&qword_1EC88D2E8, sub_1D68713F4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D2F8);
  }

  return result;
}

unint64_t sub_1D687191C()
{
  result = qword_1EC88D300;
  if (!qword_1EC88D300)
  {
    sub_1D6871194();
    sub_1D68719CC();
    sub_1D6871780(&qword_1EC8845E8, sub_1D5F7B9E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D300);
  }

  return result;
}

unint64_t sub_1D68719CC()
{
  result = qword_1EC88D308;
  if (!qword_1EC88D308)
  {
    sub_1D68715C4(255, &qword_1EC88D278, sub_1D6871220);
    sub_1D6871780(&qword_1EC88D310, sub_1D6871220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D308);
  }

  return result;
}

uint64_t sub_1D6871AB8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 160);
  v7[6] = *(v0 + 144);
  v7[7] = v2;
  v7[8] = *(v0 + 176);
  v3 = *(v0 + 96);
  v7[2] = *(v0 + 80);
  v7[3] = v3;
  v4 = *(v0 + 128);
  v7[4] = *(v0 + 112);
  v7[5] = v4;
  v5 = *(v0 + 64);
  v7[0] = *(v0 + 48);
  v7[1] = v5;
  return sub_1D6871B68(v7, v1);
}

uint64_t sub_1D6871B08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6871B68(__int128 *a1, uint64_t a2)
{
  sub_1D6195740(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v58 = (&v52 - v15);
  v16 = a1[7];
  v114 = a1[6];
  v115 = v16;
  v116 = a1[8];
  v17 = a1[3];
  v110 = a1[2];
  v111 = v17;
  v18 = a1[5];
  v112 = a1[4];
  v113 = v18;
  v19 = a1[1];
  v108 = *a1;
  v109 = v19;
  v60 = a2;
  v20 = *(a2 + 16);
  v21 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__workspace;

  sub_1D725B31C();

  v127 = v90;
  v128 = v91;
  v129 = v92;
  v130 = v93;
  v123 = v86;
  v124 = v87;
  v125 = v88;
  v126 = v89;
  v119 = v82;
  v120 = v83;
  v121 = v84;
  v122 = v85;
  v117 = v80;
  v118 = v81;
  result = sub_1D5DEA380(&v117);
  if (result != 1)
  {
    v56 = v12;
    v57 = v21;
    v105 = v127;
    v106 = v128;
    v107 = v129;
    v101 = v123;
    v102 = v124;
    v103 = v125;
    v104 = v126;
    v97 = v119;
    v98 = v120;
    v99 = v121;
    v100 = v122;
    v95 = v117;
    v96 = v118;
    v94[0] = *(&v129 + 2);
    v23 = v130;
    *(v94 + 6) = *(&v129 + 1);
    v24 = BYTE1(v129);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D72600CC();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1D6871B08(v7, sub_1D6195740);
      v90 = v105;
      v91 = v106;
      LOBYTE(v92) = v107;
      v86 = v101;
      v87 = v102;
      v88 = v103;
      v89 = v104;
      v82 = v97;
      v83 = v98;
      v84 = v99;
      v85 = v100;
      v80 = v95;
      v81 = v96;
      BYTE1(v92) = v24;
      *(&v92 + 2) = v94[0];
      v25 = *(v94 + 6);
    }

    else
    {
      v53 = v9;
      v54 = v20;
      v55 = v130;
      v26 = v58;
      sub_1D68722D8(v7, v58);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D72600CC();

      v27 = *(v80 + 16);

      v28 = *(v27 + 16);
      v29 = *(v27 + 24);

      v26[2] = v28;
      v26[3] = v29;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D72600CC();

      v30 = v80;
      v31 = *(v8 + 24);

      *(v26 + v31) = v30;
      v32 = v55;
      v33 = (v26 + *(v8 + 28));
      v34 = v33[7];
      v79[6] = v33[6];
      v79[7] = v34;
      v79[8] = v33[8];
      v35 = v33[3];
      v79[2] = v33[2];
      v79[3] = v35;
      v36 = v33[5];
      v79[4] = v33[4];
      v79[5] = v36;
      v37 = v33[1];
      v79[0] = *v33;
      v79[1] = v37;
      sub_1D5D65D5C(&v108, &v80);
      sub_1D5D68304(v79);
      v38 = v111;
      v33[2] = v110;
      v33[3] = v38;
      v39 = v116;
      v33[7] = v115;
      v33[8] = v39;
      v40 = v114;
      v33[5] = v113;
      v33[6] = v40;
      v33[4] = v112;
      v41 = v109;
      *v33 = v108;
      v33[1] = v41;
      v42 = *(v32 + 16);
      if (v42)
      {
        *&v80 = MEMORY[0x1E69E7CC0];
        sub_1D69994B8(0, v42, 0);
        v23 = v80;
        v59 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v43 = (v32 + v59);
        v44 = v26[1];
        v60 = *v26;
        v45 = *(v53 + 72);
        v46 = v26;
        v47 = v56;
        do
        {
          v48 = *v43 == v60 && v43[1] == v44;
          v49 = v46;
          if (!v48)
          {
            if (sub_1D72646CC())
            {
              v49 = v46;
            }

            else
            {
              v49 = v43;
            }
          }

          sub_1D687233C(v49, v47, type metadata accessor for DebugFormatEditorWorkspaceGroup);
          *&v80 = v23;
          v51 = *(v23 + 16);
          v50 = *(v23 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_1D69994B8(v50 > 1, v51 + 1, 1);
            v46 = v58;
            v23 = v80;
          }

          *(v23 + 16) = v51 + 1;
          sub_1D68722D8(v47, v23 + v59 + v51 * v45);
          v43 = (v43 + v45);
          --v42;
        }

        while (v42);
      }

      else
      {

        v23 = MEMORY[0x1E69E7CC0];
      }

      v62[10] = v105;
      v62[11] = v106;
      LOBYTE(v63) = v107;
      v62[6] = v101;
      v62[7] = v102;
      v62[8] = v103;
      v62[9] = v104;
      v62[2] = v97;
      v62[3] = v98;
      v62[4] = v99;
      v62[5] = v100;
      v62[0] = v95;
      v62[1] = v96;
      BYTE1(v63) = 1;
      *(&v63 + 2) = v94[0];
      *(&v63 + 1) = *(v94 + 6);
      v64 = v23;
      v78 = v23;
      v75 = v105;
      v76 = v106;
      v71 = v101;
      v72 = v102;
      v73 = v103;
      v74 = v104;
      v67 = v97;
      v68 = v98;
      v69 = v99;
      v70 = v100;
      v65 = v95;
      v66 = v96;
      v77 = v63;
      nullsub_1();
      v90 = v75;
      v91 = v76;
      v92 = v77;
      v93 = v78;
      v86 = v71;
      v87 = v72;
      v88 = v73;
      v89 = v74;
      v82 = v67;
      v83 = v68;
      v84 = v69;
      v85 = v70;
      v80 = v65;
      v81 = v66;
      sub_1D5F2B0D8(v62, &v61);
      sub_1D6AA103C(&v80);
      v90 = v75;
      v91 = v76;
      v92 = v77;
      v93 = v78;
      v86 = v71;
      v87 = v72;
      v88 = v73;
      v89 = v74;
      v82 = v67;
      v83 = v68;
      v84 = v69;
      v85 = v70;
      v80 = v65;
      v81 = v66;

      sub_1D725B32C();

      sub_1D6AA1610();
      sub_1D6871B08(v58, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v90 = v105;
      v91 = v106;
      LOBYTE(v92) = v107;
      v86 = v101;
      v87 = v102;
      v88 = v103;
      v89 = v104;
      v82 = v97;
      v83 = v98;
      v84 = v99;
      v85 = v100;
      v80 = v95;
      v81 = v96;
      BYTE1(v92) = 1;
      *(&v92 + 2) = v94[0];
      v25 = *(v94 + 6);
    }

    *(&v92 + 1) = v25;
    v93 = v23;
    return sub_1D5F2B134(&v80);
  }

  return result;
}

uint64_t sub_1D68722D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D687233C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D68723D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D687243C()
{
  if (!qword_1EC88D338)
  {
    sub_1D6871054();
    sub_1D68710D4(255);
    sub_1D5F7BB40();
    swift_getOpaqueTypeConformance2();
    sub_1D6871780(&qword_1EC88D318, sub_1D68710D4);
    v0 = sub_1D726100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D338);
    }
  }
}

uint64_t FormatSupplementaryNodeLayoutAttributes.__allocating_init(layoutAttributes:style:resizing:zIndex:pinTrait:rubberbandTrait:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v15 = *a3;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = v15;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5 & 1;
  sub_1D6872748(a6, v14 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_pinTrait, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  sub_1D6872748(a7, v14 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_rubberbandTrait, &qword_1EDF43998, MEMORY[0x1E69D86D0]);
  return v14;
}

uint64_t FormatSupplementaryNodeLayoutAttributes.init(layoutAttributes:style:resizing:zIndex:pinTrait:rubberbandTrait:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = *a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = v9;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5 & 1;
  sub_1D6872748(a6, v7 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_pinTrait, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  sub_1D6872748(a7, v7 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_rubberbandTrait, &qword_1EDF43998, MEMORY[0x1E69D86D0]);
  return v7;
}

uint64_t sub_1D6872748(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5BAAA78(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D68727B4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5BAAA78(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t FormatSupplementaryNodeLayoutAttributes.identifier.getter()
{
  v1 = *(*(v0 + 16) + 48);

  return v1;
}

uint64_t FormatSupplementaryNodeLayoutAttributes.itemIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 64);

  return v1;
}

uint64_t FormatSupplementaryNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 80);

  return v1;
}

uint64_t FormatSupplementaryNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 96);

  return v1;
}

unint64_t sub_1D6872928()
{
  v1 = *v0;
  v2 = 0x656C797473;
  v3 = 0x7865646E497ALL;
  v4 = 0x74696172546E6970;
  if (v1 != 4)
  {
    v4 = 0x6162726562627572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x676E697A69736572;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1D68729EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6873E8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6872A14(uint64_t a1)
{
  v2 = sub_1D6872FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6872A50(uint64_t a1)
{
  v2 = sub_1D6872FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSupplementaryNodeLayoutAttributes.deinit()
{

  sub_1D6872B14(v0 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_pinTrait, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  sub_1D6872B14(v0 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_rubberbandTrait, &qword_1EDF43998, MEMORY[0x1E69D86D0]);
  return v0;
}

uint64_t sub_1D6872B14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5BAAA78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FormatSupplementaryNodeLayoutAttributes.__deallocating_deinit()
{

  sub_1D6872B14(v0 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_pinTrait, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  sub_1D6872B14(v0 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_rubberbandTrait, &qword_1EDF43998, MEMORY[0x1E69D86D0]);

  return swift_deallocClassInstance();
}

uint64_t FormatSupplementaryNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D68736AC(0, &qword_1EC88D340, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6872FC4();
  sub_1D7264B5C();
  v13 = v3[2];
  HIBYTE(v12) = 0;
  type metadata accessor for FormatLayoutAttributes();
  sub_1D6873BA8(&qword_1EDF28600, type metadata accessor for FormatLayoutAttributes);
  sub_1D726443C();
  if (!v2)
  {
    v13 = v3[3];
    HIBYTE(v12) = 1;
    type metadata accessor for FormatSupplementaryNodeStyle();
    sub_1D6873BA8(&qword_1EDF0A840, type metadata accessor for FormatSupplementaryNodeStyle);
    sub_1D72643BC();
    v13 = v3[4];
    HIBYTE(v12) = 2;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v13) = 3;
    sub_1D72643AC();
    LOBYTE(v13) = 4;
    sub_1D725F15C();
    sub_1D6873BA8(&qword_1EC88D350, MEMORY[0x1E69D8558]);
    sub_1D72643BC();
    LOBYTE(v13) = 5;
    sub_1D725F49C();
    sub_1D6873BA8(&qword_1EC88D358, MEMORY[0x1E69D86D0]);
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6872FC4()
{
  result = qword_1EC88D348;
  if (!qword_1EC88D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D348);
  }

  return result;
}

uint64_t FormatSupplementaryNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatSupplementaryNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatSupplementaryNodeLayoutAttributes.init(from:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v30 = v3;
  v29 = v5;
  sub_1D5BAAA78(0, &qword_1EDF43998, MEMORY[0x1E69D86D0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v27 - v8;
  sub_1D5BAAA78(0, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27 - v12;
  sub_1D68736AC(0, &qword_1EC88D360, MEMORY[0x1E69E6F48]);
  v28 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v27 - v17;
  v19 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D6872FC4();
  sub_1D7264B0C();
  if (v2)
  {
    v20 = v30;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v13;
    v22 = v15;
    type metadata accessor for FormatLayoutAttributes();
    v32 = 0;
    sub_1D6873BA8(&qword_1EDF285F8, type metadata accessor for FormatLayoutAttributes);
    v23 = v28;
    sub_1D726431C();
    v20 = v30;
    v30[2] = v33;
    type metadata accessor for FormatSupplementaryNodeStyle();
    v32 = 1;
    sub_1D6873BA8(&unk_1EDF216F0, type metadata accessor for FormatSupplementaryNodeStyle);
    sub_1D726427C();
    v20[3] = v33;
    v32 = 2;
    sub_1D5F8FC50();
    sub_1D726427C();
    v20[4] = v33;
    LOBYTE(v33) = 3;
    v24 = sub_1D726425C();
    v27 = 0;
    v20[5] = v24;
    *(v20 + 48) = v25 & 1;
    sub_1D725F15C();
    LOBYTE(v33) = 4;
    sub_1D6873BA8(&qword_1EC88D368, MEMORY[0x1E69D8558]);
    sub_1D726427C();
    sub_1D6872748(v21, v20 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_pinTrait, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
    sub_1D725F49C();
    LOBYTE(v33) = 5;
    sub_1D6873BA8(&qword_1EC88D370, MEMORY[0x1E69D86D0]);
    sub_1D726427C();
    (*(v22 + 8))(v18, v23);
    sub_1D6872748(v9, v20 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_rubberbandTrait, &qword_1EDF43998, MEMORY[0x1E69D86D0]);
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v20;
}

void sub_1D68736AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6872FC4();
    v7 = a3(a1, &type metadata for FormatSupplementaryNodeLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *sub_1D6873710@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatSupplementaryNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D687378C@<X0>(uint64_t *a1@<X8>)
{
  result = FormatSupplementaryNodeLayoutAttributes.flipRightToLeft(bounds:)();
  *a1 = result;
  return result;
}

uint64_t FormatSupplementaryNodeLayoutAttributes.flipRightToLeft(bounds:)()
{
  v1 = v0;
  v21 = MEMORY[0x1E69D86D0];
  sub_1D5BAAA78(0, &qword_1EDF43998, MEMORY[0x1E69D86D0]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - v4;
  v6 = MEMORY[0x1E69D8558];
  sub_1D5BAAA78(0, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  v22 = *(v0 + 16);
  type metadata accessor for FormatLayoutAttributes();
  sub_1D6873BA8(&qword_1EDF28608, type metadata accessor for FormatLayoutAttributes);
  sub_1D725A24C();
  v11 = v23;
  v12 = *(v0 + 24);
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = *(v1 + 48);
  sub_1D68727B4(v1 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_pinTrait, v10, &unk_1EDF439A0, v6);
  v16 = v1 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_rubberbandTrait;
  v17 = v21;
  sub_1D68727B4(v16, v5, &qword_1EDF43998, v21);
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = v12;
  *(v18 + 32) = v13;
  *(v18 + 40) = v14;
  *(v18 + 48) = v15;
  sub_1D6872748(v10, v18 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_pinTrait, &unk_1EDF439A0, v6);
  sub_1D6872748(v5, v18 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_rubberbandTrait, &qword_1EDF43998, v17);

  return v18;
}

uint64_t type metadata accessor for FormatSupplementaryNodeLayoutAttributes()
{
  result = qword_1EDF1C6B0;
  if (!qword_1EDF1C6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6873BA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6873BF8()
{
  sub_1D5BAAA78(319, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  if (v0 <= 0x3F)
  {
    sub_1D5BAAA78(319, &qword_1EDF43998, MEMORY[0x1E69D86D0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1D6873D88()
{
  result = qword_1EC88D398;
  if (!qword_1EC88D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D398);
  }

  return result;
}

unint64_t sub_1D6873DE0()
{
  result = qword_1EC88D3A0;
  if (!qword_1EC88D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D3A0);
  }

  return result;
}

unint64_t sub_1D6873E38()
{
  result = qword_1EC88D3A8;
  if (!qword_1EC88D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D3A8);
  }

  return result;
}

uint64_t sub_1D6873E8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73C46E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
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

  else if (a1 == 0x74696172546E6970 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6162726562627572 && a2 == 0xEF7469617254646ELL)
  {

    return 5;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t type metadata accessor for DebugFormatPackageTreeSlotView()
{
  result = qword_1EC88D3B0;
  if (!qword_1EC88D3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6874108()
{
  sub_1D61F5098();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FormatSlotDefinition();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D68741A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D6874D08();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v80 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v79 = &v63 - v10;
  v11 = type metadata accessor for DebugFormatPackageTreeSlotView();
  v12 = v11 - 8;
  v65 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v66 = v14;
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6874DB8();
  v74 = v16;
  v72 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v76 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v75 = &v63 - v21;
  v22 = (v2 + *(v12 + 28));
  v23 = v22[1];
  v24 = v22[2];
  v25 = v22[3];
  v68 = *v22;
  v69 = v24;
  v26 = v22[5];
  v70 = v22[4];
  v27 = v22[7];
  v77 = v23;

  v78 = v25;

  v73 = v26;

  v67 = MEMORY[0x1DA6F9D20](v27, &type metadata for FormatSlotTransform);
  v71 = v28;
  v29 = v22[8];
  if (*(v29 + 16))
  {
    v30 = sub_1D6976EE8(v22[8]);
    v31 = sub_1D5F63640(v30);

    v64 = sub_1D7073500(v31);

    v32 = *(*(v2 + 8) + 16);
    LOBYTE(v88) = 0;

    sub_1D72618EC();
    v33 = v15;
    v34 = v2;
    v35 = v5;
    v36 = v93;
    v37 = *(&v93 + 1);
    *&v88 = *(v29 + 16);
    *&v93 = sub_1D72644BC();
    *(&v93 + 1) = v38;
    MEMORY[0x1DA6F9910](0x747265706F725020, 0xEB00000000736569);
    LOBYTE(v86[0]) = 1;
    *&v88 = v32;
    *(&v88 + 1) = 0x69747265706F7250;
    *&v89 = 0xEA00000000007365;
    *(&v89 + 1) = v64;
    *&v90 = 0x69747265706F7250;
    *(&v90 + 1) = 0xEA00000000007365;
    v91 = v93;
    LOBYTE(v92[0]) = 0;
    BYTE8(v92[0]) = v36;
    v5 = v35;
    v2 = v34;
    v15 = v33;
    *&v92[1] = v37;
    BYTE8(v92[1]) = 1;
  }

  else
  {
    LOBYTE(v86[0]) = 0;
    *&v88 = 0x69747265706F7250;
    *(&v88 + 1) = 0xEA00000000007365;
    v89 = xmmword_1D72FD7D0;
    LOBYTE(v90) = 2;
    BYTE8(v92[1]) = 0;
  }

  sub_1D6874EEC();
  sub_1D6874F48();
  sub_1D6874D70(&qword_1EC88D3F0, sub_1D6874EEC);
  sub_1D726135C();
  sub_1D63021A0(v22[6]);
  *&v88 = v39;
  swift_getKeyPath();
  sub_1D6875294(v2, v15, type metadata accessor for DebugFormatPackageTreeSlotView);
  v40 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v41 = swift_allocObject();
  sub_1D6875024(v15, v41 + v40);
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1D6875088;
  *(v42 + 24) = v41;
  sub_1D6875470(0, &qword_1EC88D3D0, sub_1D6874E80, MEMORY[0x1E69E62F8]);
  sub_1D6874EEC();
  sub_1D6874F9C();
  sub_1D6874D70(&qword_1EC88D3F0, sub_1D6874EEC);
  v43 = v75;
  sub_1D72619DC();
  *&v88 = 0;
  BYTE8(v88) = 1;
  sub_1D7260EDC();
  v44 = v79;
  sub_1D72617DC();
  *&v88 = sub_1D726185C();
  *(v44 + *(v5 + 36)) = sub_1D726199C();
  v83 = v95;
  v84 = v96;
  v85[0] = v97[0];
  *(v85 + 9) = *(v97 + 9);
  v81 = v93;
  v82 = v94;
  v45 = v72;
  v46 = *(v72 + 16);
  v47 = v76;
  v48 = v74;
  v46(v76, v43, v74);
  sub_1D5DA4E30(v44, v80);
  *a1 = 0x696669746E656449;
  *(a1 + 8) = 0xEA00000000007265;
  v49 = v69;
  v50 = v77;
  *(a1 + 16) = v68;
  *(a1 + 24) = v50;
  *(a1 + 32) = 2;
  *(a1 + 40) = 1701667150;
  *(a1 + 48) = 0xE400000000000000;
  *(a1 + 56) = v49;
  *(a1 + 64) = v78;
  *(a1 + 72) = 2;
  *(a1 + 80) = 1701667150;
  *(a1 + 88) = 0xE400000000000000;
  v51 = v71;
  v52 = v73;
  *(a1 + 96) = v70;
  *(a1 + 104) = v52;
  *(a1 + 112) = 2;
  v70 = 0xEA0000000000736DLL;
  *(a1 + 120) = 0x726F66736E617254;
  *(a1 + 128) = 0xEA0000000000736DLL;
  *(a1 + 136) = v67;
  *(a1 + 144) = v51;
  *(a1 + 152) = 2;
  v53 = v83;
  v54 = v84;
  v86[2] = v83;
  v86[3] = v84;
  v55 = v85[0];
  v87[0] = v85[0];
  *(v87 + 9) = *(v85 + 9);
  v56 = v81;
  v57 = v82;
  v86[0] = v81;
  v86[1] = v82;
  *(a1 + 233) = *(v85 + 9);
  *(a1 + 192) = v53;
  *(a1 + 208) = v54;
  *(a1 + 224) = v55;
  *(a1 + 160) = v56;
  *(a1 + 176) = v57;
  sub_1D687519C();
  v59 = v58;
  v46((a1 + *(v58 + 112)), v47, v48);
  v60 = v80;
  sub_1D5DA4E30(v80, a1 + *(v59 + 128));

  swift_bridgeObjectRetain_n();

  sub_1D6875294(v86, &v88, sub_1D6875234);
  sub_1D5DA4E94(v79);
  v61 = *(v45 + 8);
  v61(v75, v48);
  sub_1D5DA4E94(v60);
  v61(v76, v48);
  v90 = v83;
  v91 = v84;
  v92[0] = v85[0];
  *(v92 + 9) = *(v85 + 9);
  v88 = v81;
  v89 = v82;
  sub_1D6875388(&v88, sub_1D6875234);

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1D6874A48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FormatSlotDefinitionItemSet();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6875470(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v24 - v13;
  v15 = *(a2 + 8);

  sub_1D6A9DF10(v16, v25, 0.0, 0.0, 22.0, 22.0);
  sub_1D6875294(a1, v14, type metadata accessor for FormatSlotDefinitionItemSet);
  (*(v7 + 56))(v14, 0, 1, v6);
  v17 = sub_1D6B25BFC(v25, v14);
  sub_1D68752FC(v14);
  v27[6] = v25[6];
  v27[7] = v25[7];
  v27[8] = v25[8];
  v28 = v26;
  v27[2] = v25[2];
  v27[3] = v25[3];
  v27[4] = v25[4];
  v27[5] = v25[5];
  v27[0] = v25[0];
  v27[1] = v25[1];
  sub_1D6202060(v27);
  v18 = *(v15 + 16);
  sub_1D6875294(a1, v10, type metadata accessor for FormatSlotDefinitionItemSet);
  LOBYTE(v29[0]) = 0;

  sub_1D72618EC();
  LOBYTE(v7) = v25[0];
  v19 = *(&v25[0] + 1);
  v20 = sub_1D6B24B28();
  v22 = v21;
  result = sub_1D6875388(v10, type metadata accessor for FormatSlotDefinitionItemSet);
  *a3 = v18;
  *(a3 + 8) = 0x746553206D657449;
  *(a3 + 16) = 0xE800000000000000;
  *(a3 + 24) = v17;
  *(a3 + 32) = 0x746553206D657449;
  *(a3 + 40) = 0xE800000000000000;
  *(a3 + 48) = v20;
  *(a3 + 56) = v22;
  *(a3 + 64) = 0;
  *(a3 + 65) = v25[0];
  *(a3 + 68) = *(v25 + 3);
  *(a3 + 72) = v7;
  *(a3 + 73) = v29[0];
  *(a3 + 76) = *(v29 + 3);
  *(a3 + 80) = v19;
  return result;
}

void sub_1D6874D08()
{
  if (!qword_1EC88D3C0)
  {
    sub_1D5F7BAC0();
    sub_1D5F260A0();
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D3C0);
    }
  }
}

uint64_t sub_1D6874D70(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6874DB8()
{
  if (!qword_1EC88D3C8)
  {
    sub_1D6875470(255, &qword_1EC88D3D0, sub_1D6874E80, MEMORY[0x1E69E62F8]);
    sub_1D6874EEC();
    sub_1D6874F9C();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D3C8);
    }
  }
}

void sub_1D6874E80()
{
  if (!qword_1EC883DA0)
  {
    type metadata accessor for FormatSlotDefinitionItemSet();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883DA0);
    }
  }
}

void sub_1D6874EEC()
{
  if (!qword_1EC88D3D8)
  {
    sub_1D6874F48();
    v0 = type metadata accessor for DebugFormatInspectorPopoverView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D3D8);
    }
  }
}

unint64_t sub_1D6874F48()
{
  result = qword_1EC88D3E0;
  if (!qword_1EC88D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D3E0);
  }

  return result;
}

unint64_t sub_1D6874F9C()
{
  result = qword_1EC88D3E8;
  if (!qword_1EC88D3E8)
  {
    sub_1D6875470(255, &qword_1EC88D3D0, sub_1D6874E80, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D3E8);
  }

  return result;
}

uint64_t sub_1D6875024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatPackageTreeSlotView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6875088@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DebugFormatPackageTreeSlotView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D6874A48(a1, v6, a2);
}

double sub_1D6875110@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  sub_1D6874E80();
  v5(v11, v6, &a1[*(v7 + 48)]);
  v8 = v11[3];
  *(a2 + 32) = v11[2];
  *(a2 + 48) = v8;
  *(a2 + 64) = v11[4];
  *(a2 + 80) = v12;
  result = *v11;
  v10 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v10;
  return result;
}

void sub_1D687519C()
{
  if (!qword_1EC88D3F8)
  {
    sub_1D6875234();
    sub_1D6874DB8();
    sub_1D6874D08();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC88D3F8);
    }
  }
}

void sub_1D6875234()
{
  if (!qword_1EC88D400)
  {
    sub_1D6874EEC();
    v0 = sub_1D726136C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D400);
    }
  }
}

uint64_t sub_1D6875294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D68752FC(uint64_t a1)
{
  sub_1D6875470(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6875388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D68753E8()
{
  result = qword_1EC88D408;
  if (!qword_1EC88D408)
  {
    sub_1D6875470(255, &qword_1EC88D410, sub_1D687519C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D408);
  }

  return result;
}

void sub_1D6875470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D68754D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6875528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1D6875594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D687566C(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

double sub_1D68755BC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D727F480;
  return result;
}

uint64_t sub_1D68755CC(uint64_t a1)
{
  v2 = sub_1D5C30408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6875608(uint64_t a1)
{
  v2 = sub_1D5C30408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6875644(uint64_t a1)
{
  result = sub_1D5C30408();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D687566C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (v4 = a1, (sub_1D72646CC() & 1) != 0) || v4 == 1635017060 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0 || v4 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0 || v4 == 1885433183 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1D68757D0(uint64_t *a1)
{
  sub_1D60747E4();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28[-v10];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v28[-v14];
  v16 = type metadata accessor for FormatDerivedDataBindingItemResult();
  sub_1D6875A7C(a1 + *(v16 + 20), v15);
  v17 = type metadata accessor for FormatSlotDefinitionItemSet();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v15, 1, v17);
  sub_1D68752FC(v15);
  if (v19 == 1)
  {
    sub_1D6875AE0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v21 = *a1;
    v22 = a1[1];
    *(inited + 32) = *a1;
    *(inited + 40) = v22;
    sub_1D5CBA110(v21, v22);
    v23 = sub_1D5E2755C(inited);
    swift_setDeallocating();
    sub_1D6875B30(inited + 32);
    v24 = *(v17 + 36);
    v25 = sub_1D725B76C();
    (*(*(v25 - 8) + 56))(&v7[v24], 1, 1, v25);
    *(v7 + 24) = 0u;
    *v7 = 0x100000001;
    v26 = MEMORY[0x1E69E7CC0];
    *(v7 + 1) = v23;
    *(v7 + 2) = v26;
    sub_1D5CDE22C(0);
    *(v7 + 3) = 0;
    *(v7 + 4) = 0;
    (*(v18 + 56))(v7, 0, 1, v17);
    sub_1D6C956D4(v1, v7, v11);
    result = sub_1D68752FC(v7);
    if (!v2)
    {
      return sub_1D60749B4(v11, v1);
    }
  }

  else
  {
    type metadata accessor for FormatDerivedDataError();
    sub_1D5E40444();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D6875A7C(uint64_t a1, uint64_t a2)
{
  sub_1D60747E4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6875AE0()
{
  if (!qword_1EDF198D8)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF198D8);
    }
  }
}

uint64_t type metadata accessor for FormatDerivedDataBindingAuxiliaryResult()
{
  result = qword_1EC88D418;
  if (!qword_1EC88D418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6875BF8()
{
  sub_1D60747E4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t SportsEmbedConfigurationManager.RequestKind.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t SportsEmbedConfigurationManager.embedConfiguration(for:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 2)
  {
    if (*a1)
    {
      if (v1 == 1)
      {
        return sub_1D6875E18();
      }

      else
      {
        return sub_1D6875EF8();
      }
    }

    else
    {
      return sub_1D6875D38();
    }
  }

  else if (*a1 > 4u)
  {
    if (v1 == 5)
    {
      return sub_1D6876198();
    }

    else
    {
      return sub_1D6876278();
    }
  }

  else if (v1 == 3)
  {
    return sub_1D6875FD8();
  }

  else
  {
    return sub_1D68760B8();
  }
}

uint64_t sub_1D6875D38()
{

  sub_1D725B96C();

  if (v2 == 255)
  {
    return sub_1D725AD2C();
  }

  if (v2)
  {
    sub_1D6718004(v1, v2);
    return sub_1D725AD2C();
  }

  sub_1D5B8D860(0, &qword_1EDF17A18, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D6875E18()
{

  sub_1D725B96C();

  if (v2 == 255)
  {
    return sub_1D725AD2C();
  }

  if (v2)
  {
    sub_1D6718004(v1, v2);
    return sub_1D725AD2C();
  }

  sub_1D5B8D860(0, &qword_1EDF17A18, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D6875EF8()
{

  sub_1D725B96C();

  if (v2 == 255)
  {
    return sub_1D725AD2C();
  }

  if (v2)
  {
    sub_1D6718004(v1, v2);
    return sub_1D725AD2C();
  }

  sub_1D5B8D860(0, &qword_1EDF17A18, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D6875FD8()
{

  sub_1D725B96C();

  if (v2 == 255)
  {
    return sub_1D725AD2C();
  }

  if (v2)
  {
    sub_1D6718004(v1, v2);
    return sub_1D725AD2C();
  }

  sub_1D5B8D860(0, &qword_1EDF17A18, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}