uint64_t sub_1D688F2A4(uint64_t a1, char *a2)
{
  v107 = a2;
  v110 = a1;
  v105 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v105, v3);
  v106 = (&v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D68A8C44(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *(&v109 + 1) = &v102 - v7;
  v8 = type metadata accessor for FormatOption();
  v108 = *(v8 - 8);
  *&v109 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v104 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v103 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v102 - v32;
  v34 = *v2;
  v35 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
  v37 = *(v2 + 1);
  v36 = *(v2 + 2);
  v39 = *(v2 + 3);
  v38 = *(v2 + 4);
  v40 = *(v2 + 5);
  v41 = v2[48];
  switch((2 * v2[49]) | ((v41 & 8) != 0))
  {
    case 1:
      v48 = *v2;
      v87 = v165;
      sub_1D6B7C1C8(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v140);
      if (!v87)
      {
        v137 = v146;
        v138[0] = v147[0];
        *(v138 + 9) = *(v147 + 9);
        v133 = v142;
        v134 = v143;
        v135 = v144;
        v136 = v145;
        v131 = v140;
        v132 = v141;
        v128 = v146;
        v129[0] = v147[0];
        *(v129 + 9) = *(v147 + 9);
        v124 = v142;
        v125 = v143;
        v126 = v144;
        v127 = v145;
        LOBYTE(v118) = v48;
        v122 = v140;
        v123 = v141;
        v48 = sub_1D6AD7608(&v122);
        sub_1D5ECF320(&v131);
      }

      break;
    case 2:
      v155 = *v2;
      v156 = v35;
      v158 = BYTE6(v35);
      v157 = WORD2(v35);
      v159 = v37;
      v160 = v36;
      v161 = v39;
      v162 = v38;
      v163 = v40;
      v164 = v41 & 0xF7;
      v48 = &v155;
      v69 = v165;
      v70 = sub_1D6891E18(v110, v107);
      if (!v69)
      {
        v48 = v70;
      }

      break;
    case 3:
    case 4:
      v42 = *(v2 + 2);
      v43 = v34 | (v35 << 8);
      v44 = v110;

      v45 = *(&v109 + 1);
      v46 = v37;
      FormatOptionCollection.subscript.getter(v43, v37, *(&v109 + 1));
      if ((*(v108 + 48))(v45, 1, v109) == 1)
      {
        sub_1D68AF29C(v45, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v47 = v106;
        *v106 = v43;
        *(v47 + 8) = v37;
        swift_storeEnumTagMultiPayload();
        v48 = *(v44 + 48);
        sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        v49 = swift_allocError();
        sub_1D68B021C(v47, v50, type metadata accessor for FormatLayoutError);
        if (v48)
        {
          *&v140 = 0x3A676E697373694DLL;
          *(&v140 + 1) = 0xEB000000007B7B20;
          MEMORY[0x1DA6F9910](v43, v37);
          MEMORY[0x1DA6F9910](32125, 0xE200000000000000);
          v48 = v140;
          sub_1D5D511FC(v47, type metadata accessor for FormatLayoutError);
        }

        else
        {
          swift_willThrow();
          sub_1D5D511FC(v47, type metadata accessor for FormatLayoutError);
        }
      }

      else
      {

        v98 = v104;
        sub_1D5D5E40C(v45, v104, type metadata accessor for FormatOption);
        v48 = *(v98 + 16);

        v99 = v165;
        sub_1D6B755A8(v44, &v140);
        if (!v99)
        {

          v48 = sub_1D6B7FCB4(v140, v43, v46, v42, v44);
        }

        sub_1D5D511FC(v98, type metadata accessor for FormatOption);
      }

      break;
    case 5:
      v48 = *v2;
      v68 = v165;
      sub_1D6B7C374(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v29);
      if (!v68)
      {
        LOBYTE(v140) = v48;
        v48 = FormatAudioTrackBinding.Text.text(from:)(v29);
        v59 = type metadata accessor for FeedHeadline;
        v60 = v29;
        goto LABEL_39;
      }

      break;
    case 6:
      v48 = *v2;
      v61 = v110;
      v62 = v165;
      sub_1D6B7C06C(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v140);
      if (!v62)
      {
        LOBYTE(v131) = v48;
        v63 = swift_allocObject();
        *(v63 + 16) = sub_1D68B04D4;
        *(v63 + 24) = v61;
        ObjectType = swift_getObjectType();
        swift_retain_n();
        v65 = swift_unknownObjectRetain();
        v48 = sub_1D6E410E4(v65, sub_1D68B04F0, v63, &v131, ObjectType);

        swift_unknownObjectRelease();

        sub_1D5EE5B54(&v140);
      }

      break;
    case 7:
      v48 = *v2;
      v88 = v165;
      sub_1D6B7BE60(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v25);
      if (!v88)
      {
        LOBYTE(v140) = v48;
        v48 = FormatWebEmbedBinding.Text.text(from:)(v25);
        v59 = type metadata accessor for FeedWebEmbed;
        v60 = v25;
        goto LABEL_39;
      }

      break;
    case 8:
      v91 = *(v2 + 3);
      v92 = *(v2 + 4);
      *(&v109 + 1) = *(v2 + 5);
      v93 = v36;
      v94 = v35;
      v95 = v37;
      v48 = v34;
      v96 = v110;
      v97 = v165;
      sub_1D6B7BCEC(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v140);
      if (!v97)
      {
        LOBYTE(v131) = v48;
        *(&v131 + 1) = v94;
        BYTE7(v131) = BYTE6(v94);
        *(&v131 + 5) = WORD2(v94);
        *(&v131 + 1) = v95;
        *&v132 = v93;
        *(&v132 + 1) = v91;
        *&v133 = v92;
        *(&v133 + 1) = *(&v109 + 1);
        LOBYTE(v134) = v41 & 0xF7;

        v48 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(&v140, v107, sub_1D68B04D4, v96);

        sub_1D5F2DF58(&v140);
      }

      break;
    case 9:
      v74 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
      v75 = *(v2 + 1);
      v76 = *v2;
      v48 = v110;
      v77 = v165;
      sub_1D6B7BBAC(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v118);
      if (!v77)
      {
        v117[0] = v118;
        v117[1] = v119;
        v117[2] = v120;
        v117[3] = v121;
        v111[0] = v118;
        v111[1] = v119;
        v111[2] = v120;
        v111[3] = v121;
        v78 = *(v48 + 64);
        v131 = *(v48 + 48);
        v132 = v78;
        v79 = *(v48 + 112);
        v80 = *(v48 + 80);
        v134 = *(v48 + 96);
        v135 = v79;
        v133 = v80;
        v112 = v76;
        v115 = BYTE6(v74);
        v114 = WORD2(v74);
        v113 = v74;
        v116 = v75;
        *&v136 = *(v48 + 128);
        v124 = v80;
        v125 = v134;
        v126 = *(v48 + 112);
        *&v127 = *(v48 + 128);
        v122 = v131;
        v123 = v78;
        sub_1D5CF6A5C(&v131, &v140);
        v48 = FormatPuzzleTypeBinding.Text.text(from:config:)(v111, &v122);
        v142 = v124;
        v143 = v125;
        v144 = v126;
        *&v145 = v127;
        v140 = v122;
        v141 = v123;
        sub_1D5D09C48(&v140);
        sub_1D5F2DE58(v117);
      }

      break;
    case 10:
      v48 = *v2;
      v90 = v165;
      sub_1D6B7B9A4(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v21);
      if (!v90)
      {
        LOBYTE(v140) = v48;
        v48 = FormatPuzzleStatisticBinding.Text.text(from:)(v21);
        v59 = type metadata accessor for FeedPuzzleStatistic;
        v60 = v21;
        goto LABEL_39;
      }

      break;
    case 11:
      v48 = *v2;
      v66 = v165;
      sub_1D6B7B794(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v17);
      if (!v66)
      {
        if (v48)
        {
          v67 = (v17 + *(v14 + 20) + 16);
        }

        else
        {
          v67 = v17;
        }

        v48 = *v67;

        sub_1D5D511FC(v17, type metadata accessor for FeedCustomItem);
      }

      break;
    case 12:
      v71 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
      v72 = *(v2 + 1);
      v48 = *v2;
      v73 = v165;
      sub_1D6B7B65C(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v140);
      if (!v73)
      {
        LOBYTE(v131) = v48;
        BYTE7(v131) = BYTE6(v71);
        *(&v131 + 5) = WORD2(v71);
        *(&v131 + 1) = v71;
        BYTE8(v131) = v72;
        sub_1D67CEAD8(&v140);
        v48 = v101;
        swift_unknownObjectRelease();
      }

      break;
    case 13:
      v48 = *v2;
      v89 = v165;
      sub_1D6B7B418(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v140);
      if (!v89)
      {
        v138[5] = v151;
        v138[6] = v152;
        v138[7] = v153;
        v138[1] = v147[1];
        v138[2] = v148;
        v138[3] = v149;
        v138[4] = v150;
        v135 = v144;
        v136 = v145;
        v137 = v146;
        v138[0] = v147[0];
        v131 = v140;
        v132 = v141;
        v133 = v142;
        v134 = v143;
        v129[5] = v151;
        v129[6] = v152;
        v129[7] = v153;
        v129[1] = v147[1];
        v129[2] = v148;
        v129[3] = v149;
        v129[4] = v150;
        v126 = v144;
        v127 = v145;
        v128 = v146;
        v129[0] = v147[0];
        v122 = v140;
        v123 = v141;
        v139 = v154;
        LOBYTE(v118) = v48;
        v130 = v154;
        v124 = v142;
        v125 = v143;

        v48 = FormatPaywallBinding.Text.text(from:selectors:)(&v122, sub_1D68B04D4);

        sub_1D5F2DFAC(&v131);
      }

      break;
    case 14:
      v51 = *(v2 + 3);
      v52 = *(v2 + 4);
      *(&v109 + 1) = *(v2 + 5);
      v53 = v36;
      v54 = v35;
      v55 = v37;
      v48 = v34;
      v56 = v110;
      v57 = v103;
      v58 = v165;
      sub_1D6B7B210(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v103);
      if (!v58)
      {
        LOBYTE(v140) = v48;
        *(&v140 + 1) = v54;
        BYTE7(v140) = BYTE6(v54);
        *(&v140 + 5) = WORD2(v54);
        *(&v140 + 1) = v55;
        *&v141 = v53;
        *(&v141 + 1) = v51;
        *&v142 = v52;
        *(&v142 + 1) = *(&v109 + 1);

        v48 = sub_1D7006CB0(v57, sub_1D68B04D4, v56);

        v59 = type metadata accessor for FeedRecipe;
        v60 = v57;
        goto LABEL_39;
      }

      break;
    default:
      v81 = *(v2 + 3);
      *&v109 = *(v2 + 4);
      *(&v109 + 1) = v40;
      v82 = v36;
      v83 = v35;
      v84 = v37;
      v48 = v34;
      v85 = v110;
      v86 = v165;
      sub_1D6B7C374(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v33);
      if (!v86)
      {
        LOBYTE(v140) = v48;
        *(&v140 + 1) = v83;
        BYTE7(v140) = BYTE6(v83);
        *(&v140 + 5) = WORD2(v83);
        *(&v140 + 1) = v84;
        *&v141 = v82;
        *(&v141 + 1) = v81;
        v142 = v109;
        LOBYTE(v143) = v41 & 0xF7;

        v48 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v33, v107, sub_1D68B04D4, v85);

        v59 = type metadata accessor for FeedHeadline;
        v60 = v33;
LABEL_39:
        sub_1D5D511FC(v60, v59);
      }

      break;
  }

  return v48;
}

char *sub_1D68901F8(uint64_t a1, char *a2)
{
  v126 = a2;
  v171 = a1;
  v3 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  *(&v125 + 1) = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v123, v6);
  *&v125 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatOptionsNodeStatementContext();
  v127 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v124 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v129 = &v122 - v21;
  v22 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v122 - v28;
  v30 = *v2;
  v31 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
  v32 = *(v2 + 1);
  v33 = *(v2 + 2);
  v35 = *(v2 + 3);
  v34 = *(v2 + 4);
  v36 = *(v2 + 5);
  v37 = v2[48];
  switch((2 * v2[49]) | ((v37 & 8) != 0))
  {
    case 1:
      v97 = *v2;
      v39 = v171;
      v98 = v130;
      sub_1D5FB5410();
      if (!v98)
      {
        v148 = v152;
        v149[0] = v153[0];
        *(v149 + 9) = *(v153 + 9);
        v147[2] = v151[2];
        v147[3] = v151[3];
        v147[4] = v151[4];
        v147[5] = v151[5];
        v147[0] = v151[0];
        v147[1] = v151[1];
        v144 = v152;
        v145[0] = v153[0];
        *(v145 + 9) = *(v153 + 9);
        v140 = v151[2];
        v141 = v151[3];
        v142 = v151[4];
        v143 = v151[5];
        LOBYTE(v137[0]) = v97;
        v138 = v151[0];
        v139 = v151[1];
        v39 = sub_1D6AD7608(&v138);
        sub_1D5ECF320(v147);
      }

      break;
    case 2:
      v161 = *v2;
      v162 = v31;
      v164 = BYTE6(v31);
      v163 = WORD2(v31);
      v165 = v32;
      v166 = v33;
      v167 = v35;
      v168 = v34;
      v169 = v36;
      v170 = v37 & 0xF7;
      v39 = &v161;
      v71 = v130;
      v43 = sub_1D6892A30(v171, v126);
      if (!v71)
      {
        goto LABEL_15;
      }

      break;
    case 3:
    case 4:
      v38 = v30 | (v31 << 8);
      v39 = *(v2 + 1);

      v40 = v38;
      v41 = v38;
      v42 = v130;
      v43 = sub_1D6F6F34C(v171, v40, v39, v33, v41, v39, v33);
      if (!v42)
      {
LABEL_15:
        v39 = v43;
      }

      break;
    case 5:
      v69 = *v2;
      v39 = v171;
      v70 = v130;
      sub_1D5FB543C();
      if (!v70)
      {
        LOBYTE(v151[0]) = v69;
        v39 = FormatAudioTrackBinding.Text.text(from:)(v25);
        v55 = type metadata accessor for FeedHeadline;
        v56 = v25;
        goto LABEL_13;
      }

      break;
    case 6:
      v57 = *v2;
      v39 = v171;
      v58 = v130;
      sub_1D5FB526C(v151);
      if (!v58)
      {
        v59 = v129;
        sub_1D68B021C(v39, v129, type metadata accessor for FormatOptionsNodeStatementContext);
        v60 = (*(v127 + 80) + 16) & ~*(v127 + 80);
        v61 = swift_allocObject();
        sub_1D5D5E40C(v59, v61 + v60, type metadata accessor for FormatOptionsNodeStatementContext);
        LOBYTE(v147[0]) = v57;
        v62 = swift_allocObject();
        *(v62 + 16) = sub_1D68B04C8;
        *(v62 + 24) = v61;
        ObjectType = swift_getObjectType();

        v64 = swift_unknownObjectRetain();
        v39 = sub_1D6E410E4(v64, sub_1D68B04F0, v62, v147, ObjectType);

        swift_unknownObjectRelease();

        sub_1D5EE5B54(v151);
      }

      break;
    case 7:
      v99 = *v2;
      v39 = v171;
      v100 = v130;
      sub_1D5FB5240();
      if (!v100)
      {
        LOBYTE(v151[0]) = v99;
        v39 = FormatWebEmbedBinding.Text.text(from:)(v15);
        v55 = type metadata accessor for FeedWebEmbed;
        v56 = v15;
        goto LABEL_13;
      }

      break;
    case 8:
      v108 = *(v2 + 3);
      v109 = *(v2 + 4);
      *(&v125 + 1) = *(v2 + 5);
      v110 = v31;
      v111 = v32;
      v112 = v30;
      v39 = v171;
      v113 = v130;
      sub_1D5FB5214();
      if (!v113)
      {
        LOBYTE(v147[0]) = v112;
        *(v147 + 1) = v110;
        BYTE7(v147[0]) = BYTE6(v110);
        *(v147 + 5) = WORD2(v110);
        *(&v147[0] + 1) = v111;
        *&v147[1] = v33;
        *(&v147[1] + 1) = v108;
        *&v147[2] = v109;
        *(&v147[2] + 1) = *(&v125 + 1);
        LOBYTE(v147[3]) = v37 & 0xF7;
        v115 = v129;
        sub_1D68B021C(v39, v129, type metadata accessor for FormatOptionsNodeStatementContext);
        v116 = (*(v127 + 80) + 16) & ~*(v127 + 80);
        v117 = swift_allocObject();
        sub_1D5D5E40C(v115, v117 + v116, type metadata accessor for FormatOptionsNodeStatementContext);
        v39 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(v151, v126, sub_1D68B04C8, v117);

        sub_1D5F2DF58(v151);
      }

      break;
    case 9:
      v76 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
      v77 = *(v2 + 1);
      v78 = *v2;
      v39 = v171;
      v79 = v130;
      sub_1D5FB51E8();
      if (!v79)
      {
        v137[0] = v138;
        v137[1] = v139;
        v137[2] = v140;
        v137[3] = v141;
        v132 = v78;
        v135 = BYTE6(v76);
        v134 = WORD2(v76);
        v133 = v76;
        v136 = v77;
        v131[0] = v138;
        v131[1] = v139;
        v131[2] = v140;
        v131[3] = v141;
        v80 = v124;
        sub_1D68B021C(v39, v124, type metadata accessor for FormatOptionsNodeStatementContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v81 = *v80;
          sub_1D5EB9920();
          v83 = *(v82 + 48);
          v84 = *(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
          v85 = *(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
          v86 = *(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
          v151[3] = *(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
          v151[4] = v85;
          *&v151[5] = v84;
          v87 = *(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
          v151[0] = *(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
          v151[1] = v87;
          v151[2] = v86;
          sub_1D5CF6A5C(v151, v147);

          sub_1D5EB9994();
          (*(*(v88 - 8) + 8))(&v80[v83], v88);
        }

        else
        {
          v118 = *v80;

          v119 = *(v118 + 96);
          v151[2] = *(v118 + 80);
          v151[3] = v119;
          v151[4] = *(v118 + 112);
          *&v151[5] = *(v118 + 128);
          v120 = *(v118 + 64);
          v151[0] = *(v118 + 48);
          v151[1] = v120;
          sub_1D5CF6A5C(v151, v147);
        }

        LOWORD(v147[0]) = v151[0];
        *(v147 + 8) = *(v151 + 8);
        *(&v147[1] + 8) = *(&v151[1] + 8);
        *(&v147[2] + 8) = *(&v151[2] + 8);
        *(&v147[3] + 8) = *(&v151[3] + 8);
        *(&v147[4] + 8) = *(&v151[4] + 8);
        v39 = FormatPuzzleTypeBinding.Text.text(from:config:)(v131, v147);
        v151[2] = v147[2];
        v151[3] = v147[3];
        v151[4] = v147[4];
        *&v151[5] = *&v147[5];
        v151[0] = v147[0];
        v151[1] = v147[1];
        sub_1D5D09C48(v151);
        sub_1D5F2DE58(v137);
      }

      break;
    case 10:
      v106 = *v2;
      v39 = v171;
      v107 = v130;
      sub_1D5FB51BC();
      if (!v107)
      {
        LOBYTE(v151[0]) = v106;
        v39 = FormatPuzzleStatisticBinding.Text.text(from:)(v11);
        v55 = type metadata accessor for FeedPuzzleStatistic;
        v56 = v11;
        goto LABEL_13;
      }

      break;
    case 11:
      v65 = *v2;
      v66 = v125;
      v39 = v171;
      v67 = v130;
      sub_1D5FB4FE0();
      if (!v67)
      {
        if (v65)
        {
          v68 = (v66 + *(v123 + 20) + 16);
        }

        else
        {
          v68 = v66;
        }

        v39 = *v68;

        v55 = type metadata accessor for FeedCustomItem;
        v56 = v66;
        goto LABEL_13;
      }

      break;
    case 12:
      v72 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
      v73 = *(v2 + 1);
      v74 = *v2;
      v39 = v171;
      v75 = v130;
      sub_1D5FB4FB4();
      if (!v75)
      {
        LOBYTE(v147[0]) = v74;
        BYTE7(v147[0]) = BYTE6(v72);
        *(v147 + 5) = WORD2(v72);
        *(v147 + 1) = v72;
        BYTE8(v147[0]) = v73;
        sub_1D67CEAD8(v151);
        v39 = v121;
        swift_unknownObjectRelease();
      }

      break;
    case 13:
      v101 = *v2;
      v39 = v171;
      v102 = v130;
      sub_1D5FB4F88();
      if (!v102)
      {
        v149[5] = v157;
        v149[6] = v158;
        v149[7] = v159;
        v149[1] = v153[1];
        v149[2] = v154;
        v149[3] = v155;
        v149[4] = v156;
        v147[4] = v151[4];
        v147[5] = v151[5];
        v148 = v152;
        v149[0] = v153[0];
        v147[0] = v151[0];
        v147[1] = v151[1];
        v147[2] = v151[2];
        v147[3] = v151[3];
        v145[5] = v157;
        v145[6] = v158;
        v145[7] = v159;
        v145[1] = v153[1];
        v145[2] = v154;
        v145[3] = v155;
        v145[4] = v156;
        v142 = v151[4];
        v143 = v151[5];
        v144 = v152;
        v145[0] = v153[0];
        v138 = v151[0];
        v139 = v151[1];
        v150 = v160;
        LOBYTE(v137[0]) = v101;
        v146 = v160;
        v140 = v151[2];
        v141 = v151[3];
        v103 = v129;
        sub_1D68B021C(v39, v129, type metadata accessor for FormatOptionsNodeStatementContext);
        v104 = (*(v127 + 80) + 16) & ~*(v127 + 80);
        v105 = swift_allocObject();
        sub_1D5D5E40C(v103, v105 + v104, type metadata accessor for FormatOptionsNodeStatementContext);
        v39 = FormatPaywallBinding.Text.text(from:selectors:)(&v138, sub_1D68B04C8);

        sub_1D5F2DFAC(v147);
      }

      break;
    case 14:
      v44 = *(v2 + 3);
      v45 = *(v2 + 4);
      v46 = *(v2 + 5);
      v47 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
      v48 = *(v2 + 1);
      v49 = *v2;
      v39 = v171;
      v50 = v130;
      sub_1D5FB4F5C();
      if (!v50)
      {
        LOBYTE(v151[0]) = v49;
        *(v151 + 1) = v47;
        BYTE7(v151[0]) = BYTE6(v47);
        *(v151 + 5) = WORD2(v47);
        *(&v151[0] + 1) = v48;
        *&v151[1] = v33;
        *(&v151[1] + 1) = v44;
        *&v151[2] = v45;
        *(&v151[2] + 1) = v46;
        v51 = v129;
        sub_1D68B021C(v39, v129, type metadata accessor for FormatOptionsNodeStatementContext);
        v52 = (*(v127 + 80) + 16) & ~*(v127 + 80);
        v53 = swift_allocObject();
        sub_1D5D5E40C(v51, v53 + v52, type metadata accessor for FormatOptionsNodeStatementContext);
        v54 = *(&v125 + 1);
        v39 = sub_1D7006CB0(*(&v125 + 1), sub_1D68B04C8, v53);

        v55 = type metadata accessor for FeedRecipe;
        v56 = v54;
LABEL_13:
        sub_1D5D511FC(v56, v55);
      }

      break;
    default:
      v89 = *(v2 + 3);
      *&v125 = *(v2 + 4);
      *(&v125 + 1) = v36;
      v90 = v31;
      v91 = v32;
      v92 = v30;
      v39 = v171;
      v93 = v130;
      sub_1D5FB543C();
      if (!v93)
      {
        LOBYTE(v151[0]) = v92;
        *(v151 + 1) = v90;
        BYTE7(v151[0]) = BYTE6(v90);
        *(v151 + 5) = WORD2(v90);
        *(&v151[0] + 1) = v91;
        *&v151[1] = v33;
        *(&v151[1] + 1) = v89;
        v151[2] = v125;
        LOBYTE(v151[3]) = v37 & 0xF7;
        v94 = v129;
        sub_1D68B021C(v39, v129, type metadata accessor for FormatOptionsNodeStatementContext);
        v95 = (*(v127 + 80) + 16) & ~*(v127 + 80);
        v96 = swift_allocObject();
        sub_1D5D5E40C(v94, v96 + v95, type metadata accessor for FormatOptionsNodeStatementContext);
        v39 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v29, v126, sub_1D68B04C8, v96);

        sub_1D5D511FC(v29, type metadata accessor for FeedHeadline);
      }

      break;
  }

  return v39;
}

unint64_t sub_1D6891050(uint64_t a1, char *a2)
{
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  switch((2 * v2[49]) | ((v2[48] & 8) != 0))
  {
    case 2:
      result = sub_1D68939C8(a1, a2);
      break;
    case 3:
    case 4:
      v7 = *v2 | ((*(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32)) << 8);

      result = sub_1D6F71740(a1, v7, v3, v4, v7, v3, v4);
      break;
    default:
      type metadata accessor for FormatLayoutError();
      sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v5 = 0xD000000000000066;
      v5[1] = 0x80000001D73C3700;
      swift_storeEnumTagMultiPayload();
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t sub_1D68911E8(uint64_t a1, char *a2)
{
  v81 = a2;
  v125 = a1;
  v3 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 8);
  v82 = *v2;
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  v27 = *(v2 + 32);
  v26 = *(v2 + 40);
  v28 = *(v2 + 48);
  switch(v28 >> 4)
  {
    case 1u:
      v53 = v125;
      v54 = v83;
      sub_1D6750B04(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v54)
      {
        v55 = *(&v102 + 1);
        LOBYTE(v102) = v82;
        v56 = swift_allocObject();
        *(v56 + 16) = sub_1D68AF314;
        *(v56 + 24) = v53;
        ObjectType = swift_getObjectType();
        swift_retain_n();
        v58 = swift_unknownObjectRetain();
        v27 = sub_1D6E410E4(v58, sub_1D68AF30C, v56, &v102, ObjectType);

        swift_unknownObjectRelease_n();
      }

      break;
    case 2u:
      v48 = v83;
      sub_1D6751EC0(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v48)
      {
        v99 = v108;
        v100[0] = v109[0];
        *(v100 + 9) = *(v109 + 9);
        v95 = v104;
        v96 = v105;
        v97 = v106;
        v98 = v107;
        v93 = v102;
        v94 = v103;
        v90 = v108;
        v91[0] = v109[0];
        *(v91 + 9) = *(v109 + 9);
        v86 = v104;
        v87 = v105;
        v88 = v106;
        v89 = v107;
        LOBYTE(v121) = v82;
        v84 = v102;
        v85 = v103;
        v27 = sub_1D6AD7608(&v84);
        sub_1D5ECF320(&v93);
      }

      break;
    case 3u:
      v49 = v24;
      v27 = v23;
      v50 = v125;
      v51 = v83;
      sub_1D67507D8(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v18);
      if (!v51)
      {
        v27 = sub_1D689484C(v18, v50, v82, v27, v49, sub_1D6894EF8);
        sub_1D5D511FC(v18, type metadata accessor for FeedWeather);
      }

      break;
    case 4u:
      v37 = v83;
      sub_1D6751B6C(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v37)
      {
        v100[5] = v113;
        v100[6] = v114;
        v100[7] = v115;
        v100[1] = v109[1];
        v100[2] = v110;
        v100[3] = v111;
        v100[4] = v112;
        v97 = v106;
        v98 = v107;
        v99 = v108;
        v100[0] = v109[0];
        v93 = v102;
        v94 = v103;
        v95 = v104;
        v96 = v105;
        v91[5] = v113;
        v91[6] = v114;
        v91[7] = v115;
        v91[1] = v109[1];
        v91[2] = v110;
        v91[3] = v111;
        v91[4] = v112;
        v88 = v106;
        v89 = v107;
        v90 = v108;
        v91[0] = v109[0];
        v84 = v102;
        v85 = v103;
        v101 = v116;
        LOBYTE(v121) = v82;
        v92 = v116;
        v86 = v104;
        v87 = v105;

        v27 = FormatPaywallBinding.Text.text(from:selectors:)(&v84, sub_1D68B04D0);

        sub_1D5F2DFAC(&v93);
      }

      break;
    case 5u:
      v59 = v125;
      v60 = v83;
      sub_1D67505CC(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v60)
      {
        v61 = v102;
        LOBYTE(v102) = v82;

        v62 = FCFeedDescriptor.feedTag.getter();
        v63 = swift_allocObject();
        *(v63 + 16) = sub_1D68B04D0;
        *(v63 + 24) = v59;
        v64 = swift_getObjectType();

        v27 = sub_1D6E410E4(v62, sub_1D68AF30C, v63, &v102, v64);

        swift_unknownObjectRelease();
      }

      break;
    case 6u:
      v65 = v125;
      v66 = v83;
      sub_1D67505CC(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v66)
      {
        v67 = v102;
        v68 = [objc_msgSend(v102 backingTag)];
        swift_unknownObjectRelease();
        if (v68)
        {
          LOBYTE(v102) = v82;
          v69 = swift_getObjectType();
          v70 = swift_allocObject();
          *(v70 + 16) = sub_1D68B04D0;
          *(v70 + 24) = v65;
          swift_retain_n();
          v27 = sub_1D6E410E4(v68, sub_1D68AF30C, v70, &v102, v69);

          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError();
          sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          v27 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      break;
    case 7u:
      v52 = v83;
      sub_1D6751840(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v14);
      if (!v52)
      {
        LOBYTE(v102) = v82;
        v27 = FormatWebEmbedBinding.Text.text(from:)(v14);
        sub_1D5D511FC(v14, type metadata accessor for FeedWebEmbed);
      }

      break;
    case 8u:
      v76 = v23;
      v77 = v83;
      sub_1D6750380(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v77)
      {
        *&v93 = v82;
        BYTE8(v93) = v76;
        sub_1D67CEAD8(&v102);
        v27 = v79;
        swift_unknownObjectRelease();
      }

      break;
    case 9u:
      v43 = v26;
      v44 = v24;
      v45 = v23;
      v46 = v125;
      v47 = v83;
      sub_1D67515C4(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v47)
      {
        *&v93 = v82;
        *(&v93 + 1) = v45;
        *&v94 = v44;
        *(&v94 + 1) = v25;
        *&v95 = v27;
        *(&v95 + 1) = v43;
        LOBYTE(v96) = v28 & 0xF;

        v27 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(&v102, v81, sub_1D68B04D0, v46);

        sub_1D5F2DF58(&v102);
      }

      break;
    case 0xAu:
      v27 = v23;
      v71 = v125;
      v72 = v83;
      sub_1D6751370(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v121);
      if (!v72)
      {
        v120[0] = v121;
        v120[1] = v122;
        v120[2] = v123;
        v120[3] = v124;
        v117[0] = v121;
        v117[1] = v122;
        v117[2] = v123;
        v117[3] = v124;
        v73 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
        v93 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
        v94 = v73;
        v74 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
        v75 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
        v96 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
        v97 = v74;
        v95 = v75;
        v118 = v82;
        v119 = v27;
        *&v98 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
        v86 = v75;
        v87 = v96;
        v88 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
        *&v89 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
        v84 = v93;
        v85 = v73;
        sub_1D5CF6A5C(&v93, &v102);
        v27 = FormatPuzzleTypeBinding.Text.text(from:config:)(v117, &v84);
        v104 = v86;
        v105 = v87;
        v106 = v88;
        *&v107 = v89;
        v102 = v84;
        v103 = v85;
        sub_1D5D09C48(&v102);
        sub_1D5F2DE58(v120);
      }

      break;
    case 0xBu:
      v34 = v83;
      sub_1D6751050(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v10);
      if (!v34)
      {
        LOBYTE(v102) = v82;
        v27 = FormatPuzzleStatisticBinding.Text.text(from:)(v10);
        v35 = type metadata accessor for FeedPuzzleStatistic;
        v36 = v10;
        goto LABEL_10;
      }

      break;
    case 0xCu:
      v38 = v26;
      v39 = v24;
      v40 = v23;
      v41 = v125;
      v42 = v83;
      sub_1D6750D28(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v6);
      if (!v42)
      {
        *&v102 = v82;
        *(&v102 + 1) = v40;
        *&v103 = v39;
        *(&v103 + 1) = v25;
        *&v104 = v27;
        *(&v104 + 1) = v38;

        v27 = sub_1D7006CB0(v6, sub_1D68B04D0, v41);

        v35 = type metadata accessor for FeedRecipe;
        v36 = v6;
LABEL_10:
        sub_1D5D511FC(v36, v35);
      }

      break;
    default:
      v29 = v26;
      v30 = v24;
      v31 = v23;
      v32 = v125;
      v33 = v83;
      sub_1D6752174(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v22);
      if (!v33)
      {
        *&v102 = v82;
        *(&v102 + 1) = v31;
        *&v103 = v30;
        *(&v103 + 1) = v25;
        *&v104 = v27;
        *(&v104 + 1) = v29;
        LOBYTE(v105) = v28 & 0xF;

        v27 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v22, v81, sub_1D68B04D0, v32);

        sub_1D5D511FC(v22, type metadata accessor for FeedHeadline);
      }

      break;
  }

  return v27;
}

uint64_t sub_1D6891E18(uint64_t a1, char *a2)
{
  v81 = a2;
  v125 = a1;
  v3 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 8);
  v82 = *v2;
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  v27 = *(v2 + 32);
  v26 = *(v2 + 40);
  v28 = *(v2 + 48);
  switch(v28 >> 4)
  {
    case 1u:
      v53 = v125;
      v54 = v83;
      sub_1D6750B04(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v54)
      {
        v55 = *(&v102 + 1);
        LOBYTE(v102) = v82;
        v56 = swift_allocObject();
        *(v56 + 16) = sub_1D68AFFBC;
        *(v56 + 24) = v53;
        ObjectType = swift_getObjectType();
        swift_retain_n();
        v58 = swift_unknownObjectRetain();
        v27 = sub_1D6E410E4(v58, sub_1D68B04F0, v56, &v102, ObjectType);

        swift_unknownObjectRelease_n();
      }

      break;
    case 2u:
      v48 = v83;
      sub_1D6751EC0(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v48)
      {
        v99 = v108;
        v100[0] = v109[0];
        *(v100 + 9) = *(v109 + 9);
        v95 = v104;
        v96 = v105;
        v97 = v106;
        v98 = v107;
        v93 = v102;
        v94 = v103;
        v90 = v108;
        v91[0] = v109[0];
        *(v91 + 9) = *(v109 + 9);
        v86 = v104;
        v87 = v105;
        v88 = v106;
        v89 = v107;
        LOBYTE(v121) = v82;
        v84 = v102;
        v85 = v103;
        v27 = sub_1D6AD7608(&v84);
        sub_1D5ECF320(&v93);
      }

      break;
    case 3u:
      v49 = v24;
      v27 = v23;
      v50 = v125;
      v51 = v83;
      sub_1D67507D8(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), v18);
      if (!v51)
      {
        v27 = sub_1D689484C(v18, v50, v82, v27, v49, sub_1D6895310);
        sub_1D5D511FC(v18, type metadata accessor for FeedWeather);
      }

      break;
    case 4u:
      v37 = v83;
      sub_1D6751B6C(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v37)
      {
        v100[5] = v113;
        v100[6] = v114;
        v100[7] = v115;
        v100[1] = v109[1];
        v100[2] = v110;
        v100[3] = v111;
        v100[4] = v112;
        v97 = v106;
        v98 = v107;
        v99 = v108;
        v100[0] = v109[0];
        v93 = v102;
        v94 = v103;
        v95 = v104;
        v96 = v105;
        v91[5] = v113;
        v91[6] = v114;
        v91[7] = v115;
        v91[1] = v109[1];
        v91[2] = v110;
        v91[3] = v111;
        v91[4] = v112;
        v88 = v106;
        v89 = v107;
        v90 = v108;
        v91[0] = v109[0];
        v84 = v102;
        v85 = v103;
        v101 = v116;
        LOBYTE(v121) = v82;
        v92 = v116;
        v86 = v104;
        v87 = v105;

        v27 = FormatPaywallBinding.Text.text(from:selectors:)(&v84, sub_1D68B04D4);

        sub_1D5F2DFAC(&v93);
      }

      break;
    case 5u:
      v59 = v125;
      v60 = v83;
      sub_1D67505CC(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v60)
      {
        v61 = v102;
        LOBYTE(v102) = v82;

        v62 = FCFeedDescriptor.feedTag.getter();
        v63 = swift_allocObject();
        *(v63 + 16) = sub_1D68B04D4;
        *(v63 + 24) = v59;
        v64 = swift_getObjectType();

        v27 = sub_1D6E410E4(v62, sub_1D68B04F0, v63, &v102, v64);

        swift_unknownObjectRelease();
      }

      break;
    case 6u:
      v65 = v125;
      v66 = v83;
      sub_1D67505CC(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v66)
      {
        v67 = v102;
        v68 = [objc_msgSend(v102 backingTag)];
        swift_unknownObjectRelease();
        if (v68)
        {
          LOBYTE(v102) = v82;
          v69 = swift_getObjectType();
          v70 = swift_allocObject();
          *(v70 + 16) = sub_1D68B04D4;
          *(v70 + 24) = v65;
          swift_retain_n();
          v27 = sub_1D6E410E4(v68, sub_1D68B04F0, v70, &v102, v69);

          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError();
          sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          v27 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      break;
    case 7u:
      v52 = v83;
      sub_1D6751840(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), v14);
      if (!v52)
      {
        LOBYTE(v102) = v82;
        v27 = FormatWebEmbedBinding.Text.text(from:)(v14);
        sub_1D5D511FC(v14, type metadata accessor for FeedWebEmbed);
      }

      break;
    case 8u:
      v76 = v23;
      v77 = v83;
      sub_1D6750380(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v77)
      {
        *&v93 = v82;
        BYTE8(v93) = v76;
        sub_1D67CEAD8(&v102);
        v27 = v79;
        swift_unknownObjectRelease();
      }

      break;
    case 9u:
      v43 = v26;
      v44 = v24;
      v45 = v23;
      v46 = v125;
      v47 = v83;
      sub_1D67515C4(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v47)
      {
        *&v93 = v82;
        *(&v93 + 1) = v45;
        *&v94 = v44;
        *(&v94 + 1) = v25;
        *&v95 = v27;
        *(&v95 + 1) = v43;
        LOBYTE(v96) = v28 & 0xF;

        v27 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(&v102, v81, sub_1D68B04D4, v46);

        sub_1D5F2DF58(&v102);
      }

      break;
    case 0xAu:
      v27 = v23;
      v71 = v125;
      v72 = v83;
      sub_1D6751370(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v121);
      if (!v72)
      {
        v120[0] = v121;
        v120[1] = v122;
        v120[2] = v123;
        v120[3] = v124;
        v117[0] = v121;
        v117[1] = v122;
        v117[2] = v123;
        v117[3] = v124;
        v73 = *(v71 + 64);
        v93 = *(v71 + 48);
        v94 = v73;
        v74 = *(v71 + 112);
        v75 = *(v71 + 80);
        v96 = *(v71 + 96);
        v97 = v74;
        v95 = v75;
        v118 = v82;
        v119 = v27;
        *&v98 = *(v71 + 128);
        v86 = v75;
        v87 = v96;
        v88 = *(v71 + 112);
        *&v89 = *(v71 + 128);
        v84 = v93;
        v85 = v73;
        sub_1D5CF6A5C(&v93, &v102);
        v27 = FormatPuzzleTypeBinding.Text.text(from:config:)(v117, &v84);
        v104 = v86;
        v105 = v87;
        v106 = v88;
        *&v107 = v89;
        v102 = v84;
        v103 = v85;
        sub_1D5D09C48(&v102);
        sub_1D5F2DE58(v120);
      }

      break;
    case 0xBu:
      v36 = v83;
      sub_1D6751050(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), v10);
      if (!v36)
      {
        LOBYTE(v102) = v82;
        v27 = FormatPuzzleStatisticBinding.Text.text(from:)(v10);
        v34 = type metadata accessor for FeedPuzzleStatistic;
        v35 = v10;
        goto LABEL_10;
      }

      break;
    case 0xCu:
      v38 = v26;
      v39 = v24;
      v40 = v23;
      v41 = v125;
      v42 = v83;
      sub_1D6750D28(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), v6);
      if (!v42)
      {
        *&v102 = v82;
        *(&v102 + 1) = v40;
        *&v103 = v39;
        *(&v103 + 1) = v25;
        *&v104 = v27;
        *(&v104 + 1) = v38;

        v27 = sub_1D7006CB0(v6, sub_1D68B04D4, v41);

        v34 = type metadata accessor for FeedRecipe;
        v35 = v6;
        goto LABEL_10;
      }

      break;
    default:
      v29 = v26;
      v30 = v24;
      v31 = v23;
      v32 = v125;
      v33 = v83;
      sub_1D6752174(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), v22);
      if (!v33)
      {
        *&v102 = v82;
        *(&v102 + 1) = v31;
        *&v103 = v30;
        *(&v103 + 1) = v25;
        *&v104 = v27;
        *(&v104 + 1) = v29;
        LOBYTE(v105) = v28 & 0xF;

        v27 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v22, v81, sub_1D68B04D4, v32);

        v34 = type metadata accessor for FeedHeadline;
        v35 = v22;
LABEL_10:
        sub_1D5D511FC(v35, v34);
      }

      break;
  }

  return v27;
}

uint64_t sub_1D6892A30(uint64_t a1, char *a2)
{
  v122 = a2;
  v156 = a1;
  v3 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v123 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatOptionsNodeStatementContext();
  v124 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v121 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v126 = &v121 - v23;
  v24 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v2 + 8);
  v127 = *v2;
  v29 = *(v2 + 24);
  v30 = *(v2 + 48);
  switch(v30 >> 4)
  {
    case 1u:
      v75 = v156;
      v76 = v128;
      sub_1D5FB6008(v142);
      if (!v76)
      {
        v77 = *(&v142[0] + 1);
        v78 = v126;
        sub_1D68B021C(v75, v126, type metadata accessor for FormatOptionsNodeStatementContext);
        v79 = (*(v124 + 80) + 16) & ~*(v124 + 80);
        v80 = swift_allocObject();
        sub_1D5D5E40C(v78, v80 + v79, type metadata accessor for FormatOptionsNodeStatementContext);
        LOBYTE(v142[0]) = v127;
        v81 = swift_allocObject();
        *(v81 + 16) = sub_1D68B0284;
        *(v81 + 24) = v80;
        ObjectType = swift_getObjectType();

        v83 = swift_unknownObjectRetain();
        v29 = sub_1D6E410E4(v83, sub_1D68B04F0, v81, v142, ObjectType);

        swift_unknownObjectRelease_n();
      }

      break;
    case 2u:
      v69 = v128;
      sub_1D5FB5E2C();
      if (!v69)
      {
        v139 = v143;
        v140[0] = v144[0];
        *(v140 + 9) = *(v144 + 9);
        v138[2] = v142[2];
        v138[3] = v142[3];
        v138[4] = v142[4];
        v138[5] = v142[5];
        v138[0] = v142[0];
        v138[1] = v142[1];
        v135 = v143;
        v136[0] = v144[0];
        *(v136 + 9) = *(v144 + 9);
        v131 = v142[2];
        v132 = v142[3];
        v133 = v142[4];
        v134 = v142[5];
        LOBYTE(v155[0]) = v127;
        v129 = v142[0];
        v130 = v142[1];
        v29 = sub_1D6AD7608(&v129);
        sub_1D5ECF320(v138);
      }

      break;
    case 3u:
      v70 = *(v2 + 16);
      v71 = v28;
      v72 = v156;
      v73 = v128;
      sub_1D5FB5E00();
      if (!v73)
      {
        v29 = sub_1D6894AF0(v17, v72, v127, v71, v70, sub_1D6895728);
        sub_1D5D511FC(v17, type metadata accessor for FeedWeather);
      }

      break;
    case 4u:
      v44 = v156;
      v45 = v128;
      sub_1D5FB5C24();
      if (!v45)
      {
        v140[5] = v148;
        v140[6] = v149;
        v140[7] = v150;
        v140[1] = v144[1];
        v140[2] = v145;
        v140[3] = v146;
        v140[4] = v147;
        v138[4] = v142[4];
        v138[5] = v142[5];
        v139 = v143;
        v140[0] = v144[0];
        v138[0] = v142[0];
        v138[1] = v142[1];
        v138[2] = v142[2];
        v138[3] = v142[3];
        v136[5] = v148;
        v136[6] = v149;
        v136[7] = v150;
        v136[1] = v144[1];
        v136[2] = v145;
        v136[3] = v146;
        v136[4] = v147;
        v133 = v142[4];
        v134 = v142[5];
        v135 = v143;
        v136[0] = v144[0];
        v129 = v142[0];
        v130 = v142[1];
        v141 = v151;
        v46 = v126;
        LOBYTE(v155[0]) = v127;
        v137 = v151;
        v131 = v142[2];
        v132 = v142[3];
        sub_1D68B021C(v44, v126, type metadata accessor for FormatOptionsNodeStatementContext);
        v47 = (*(v124 + 80) + 16) & ~*(v124 + 80);
        v48 = swift_allocObject();
        sub_1D5D5E40C(v46, v48 + v47, type metadata accessor for FormatOptionsNodeStatementContext);
        v29 = FormatPaywallBinding.Text.text(from:selectors:)(&v129, sub_1D68B04C8);

        sub_1D5F2DFAC(v138);
      }

      break;
    case 5u:
      v84 = v156;
      v85 = v128;
      sub_1D5FB5A80(v142);
      if (!v85)
      {
        v86 = *&v142[0];
        v87 = v126;
        sub_1D68B021C(v84, v126, type metadata accessor for FormatOptionsNodeStatementContext);
        v88 = (*(v124 + 80) + 16) & ~*(v124 + 80);
        v89 = swift_allocObject();
        sub_1D5D5E40C(v87, v89 + v88, type metadata accessor for FormatOptionsNodeStatementContext);
        LOBYTE(v142[0]) = v127;
        v90 = FCFeedDescriptor.feedTag.getter();
        v91 = swift_allocObject();
        *(v91 + 16) = sub_1D68B04C8;
        *(v91 + 24) = v89;
        v92 = swift_getObjectType();

        v29 = sub_1D6E410E4(v90, sub_1D68B04F0, v91, v142, v92);

        swift_unknownObjectRelease();
      }

      break;
    case 6u:
      v93 = v156;
      v94 = v128;
      sub_1D5FB5A80(v142);
      if (!v94)
      {
        v95 = *&v142[0];
        v96 = [objc_msgSend(*&v142[0] backingTag)];
        swift_unknownObjectRelease();
        if (v96)
        {
          v97 = v126;
          sub_1D68B021C(v93, v126, type metadata accessor for FormatOptionsNodeStatementContext);
          v98 = (*(v124 + 80) + 16) & ~*(v124 + 80);
          v99 = swift_allocObject();
          sub_1D5D5E40C(v97, v99 + v98, type metadata accessor for FormatOptionsNodeStatementContext);
          LOBYTE(v142[0]) = v127;
          v100 = swift_getObjectType();
          v101 = swift_allocObject();
          *(v101 + 16) = sub_1D68B04C8;
          *(v101 + 24) = v99;

          v29 = sub_1D6E410E4(v96, sub_1D68B04F0, v101, v142, v100);

          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError();
          sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      break;
    case 7u:
      v74 = v128;
      sub_1D5FB5A54();
      if (!v74)
      {
        LOBYTE(v142[0]) = v127;
        v29 = FormatWebEmbedBinding.Text.text(from:)(v13);
        sub_1D5D511FC(v13, type metadata accessor for FeedWebEmbed);
      }

      break;
    case 8u:
      v114 = v28;
      v115 = v128;
      sub_1D5FB5878();
      if (!v115)
      {
        *&v138[0] = v127;
        BYTE8(v138[0]) = v114;
        sub_1D67CEAD8(v142);
        v29 = v120;
        swift_unknownObjectRelease();
      }

      break;
    case 9u:
      v59 = *(v2 + 32);
      v60 = *(v2 + 40);
      v61 = *(v2 + 16);
      v62 = v28;
      v63 = v156;
      v64 = v128;
      sub_1D5FB569C();
      if (!v64)
      {
        v65 = v30 & 0xF;
        v66 = v126;
        *&v138[0] = v127;
        *(&v138[0] + 1) = v62;
        *&v138[1] = v61;
        *(&v138[1] + 1) = v29;
        *&v138[2] = v59;
        *(&v138[2] + 1) = v60;
        LOBYTE(v138[3]) = v65;
        sub_1D68B021C(v63, v126, type metadata accessor for FormatOptionsNodeStatementContext);
        v67 = (*(v124 + 80) + 16) & ~*(v124 + 80);
        v68 = swift_allocObject();
        sub_1D5D5E40C(v66, v68 + v67, type metadata accessor for FormatOptionsNodeStatementContext);
        v29 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(v142, v122, sub_1D68B04C8, v68);

        sub_1D5F2DF58(v142);
      }

      break;
    case 0xAu:
      v102 = v28;
      v103 = v156;
      v104 = v128;
      sub_1D5FB54C0();
      if (!v104)
      {
        v155[0] = v129;
        v155[1] = v130;
        v155[2] = v131;
        v155[3] = v132;
        v153 = v127;
        v154 = v102;
        v152[0] = v129;
        v152[1] = v130;
        v152[2] = v131;
        v152[3] = v132;
        v105 = v121;
        sub_1D68B021C(v103, v121, type metadata accessor for FormatOptionsNodeStatementContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v106 = *v105;
          sub_1D5EB9920();
          v108 = *(v107 + 48);
          v109 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
          v110 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
          v111 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
          v142[3] = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
          v142[4] = v110;
          *&v142[5] = v109;
          v112 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
          v142[0] = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
          v142[1] = v112;
          v142[2] = v111;
          sub_1D5CF6A5C(v142, v138);

          sub_1D5EB9994();
          (*(*(v113 - 8) + 8))(&v105[v108], v113);
        }

        else
        {
          v116 = *v105;

          v117 = *(v116 + 96);
          v142[2] = *(v116 + 80);
          v142[3] = v117;
          v142[4] = *(v116 + 112);
          *&v142[5] = *(v116 + 128);
          v118 = *(v116 + 64);
          v142[0] = *(v116 + 48);
          v142[1] = v118;
          sub_1D5CF6A5C(v142, v138);
        }

        LOWORD(v138[0]) = v142[0];
        *(v138 + 8) = *(v142 + 8);
        *(&v138[1] + 8) = *(&v142[1] + 8);
        *(&v138[2] + 8) = *(&v142[2] + 8);
        *(&v138[3] + 8) = *(&v142[3] + 8);
        *(&v138[4] + 8) = *(&v142[4] + 8);
        v29 = FormatPuzzleTypeBinding.Text.text(from:config:)(v152, v138);
        v142[2] = v138[2];
        v142[3] = v138[3];
        v142[4] = v138[4];
        *&v142[5] = *&v138[5];
        v142[0] = v138[0];
        v142[1] = v138[1];
        sub_1D5D09C48(v142);
        sub_1D5F2DE58(v155);
      }

      break;
    case 0xBu:
      v43 = v128;
      sub_1D5FB5494();
      if (!v43)
      {
        LOBYTE(v142[0]) = v127;
        v29 = FormatPuzzleStatisticBinding.Text.text(from:)(v9);
        sub_1D5D511FC(v9, type metadata accessor for FeedPuzzleStatistic);
      }

      break;
    case 0xCu:
      v49 = *(v2 + 32);
      v50 = *(v2 + 40);
      v51 = *(v2 + 16);
      v52 = v28;
      v53 = v123;
      v54 = v156;
      v55 = v128;
      sub_1D5FB5468();
      if (!v55)
      {
        *&v142[0] = v127;
        *(&v142[0] + 1) = v52;
        *&v142[1] = v51;
        *(&v142[1] + 1) = v29;
        *&v142[2] = v49;
        *(&v142[2] + 1) = v50;
        v56 = v126;
        sub_1D68B021C(v54, v126, type metadata accessor for FormatOptionsNodeStatementContext);
        v57 = (*(v124 + 80) + 16) & ~*(v124 + 80);
        v58 = swift_allocObject();
        sub_1D5D5E40C(v56, v58 + v57, type metadata accessor for FormatOptionsNodeStatementContext);
        v29 = sub_1D7006CB0(v53, sub_1D68B04C8, v58);

        v41 = type metadata accessor for FeedRecipe;
        v42 = v53;
        goto LABEL_10;
      }

      break;
    default:
      v31 = *(v2 + 32);
      v32 = *(v2 + 40);
      v33 = *(v2 + 16);
      v34 = v28;
      v35 = v156;
      v36 = v128;
      sub_1D5FB61AC();
      if (!v36)
      {
        v37 = v30 & 0xF;
        v38 = v126;
        *&v142[0] = v127;
        *(&v142[0] + 1) = v34;
        *&v142[1] = v33;
        *(&v142[1] + 1) = v29;
        *&v142[2] = v31;
        *(&v142[2] + 1) = v32;
        LOBYTE(v142[3]) = v37;
        sub_1D68B021C(v35, v126, type metadata accessor for FormatOptionsNodeStatementContext);
        v39 = (*(v124 + 80) + 16) & ~*(v124 + 80);
        v40 = swift_allocObject();
        sub_1D5D5E40C(v38, v40 + v39, type metadata accessor for FormatOptionsNodeStatementContext);
        v29 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v27, v122, sub_1D68B04C8, v40);

        v41 = type metadata accessor for FeedHeadline;
        v42 = v27;
LABEL_10:
        sub_1D5D511FC(v42, v41);
      }

      break;
  }

  return v29;
}

uint64_t sub_1D68939C8(uint64_t a1, char *a2)
{
  v108 = a2;
  v156 = a1;
  v3 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v109 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatDecorationContext();
  v110 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v111 = v20;
  v112 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v2 + 8);
  v113 = *v2;
  v26 = *(v2 + 24);
  v27 = *(v2 + 32);
  v28 = *(v2 + 48);
  switch(v28 >> 4)
  {
    case 1u:
      v66 = v156;
      v67 = v114;
      sub_1D5F55B34(&v133);
      if (!v67)
      {
        v68 = *(&v133 + 1);
        v69 = v112;
        sub_1D68B021C(v66, v112, type metadata accessor for FormatDecorationContext);
        v70 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v71 = swift_allocObject();
        sub_1D5D5E40C(v69, v71 + v70, type metadata accessor for FormatDecorationContext);
        LOBYTE(v133) = v113;
        v72 = swift_allocObject();
        *(v72 + 16) = sub_1D68B0050;
        *(v72 + 24) = v71;
        ObjectType = swift_getObjectType();

        v74 = swift_unknownObjectRetain();
        v26 = sub_1D6E410E4(v74, sub_1D68B04F0, v72, &v133, ObjectType);

        swift_unknownObjectRelease_n();
      }

      break;
    case 2u:
      v60 = v114;
      sub_1D5F55870(&v133);
      if (!v60)
      {
        v130 = v139;
        v131[0] = v140[0];
        *(v131 + 9) = *(v140 + 9);
        v126 = v135;
        v127 = v136;
        v128 = v137;
        v129 = v138;
        v124 = v133;
        v125 = v134;
        v121 = v139;
        v122[0] = v140[0];
        *(v122 + 9) = *(v140 + 9);
        v117 = v135;
        v118 = v136;
        v119 = v137;
        v120 = v138;
        LOBYTE(v152) = v113;
        v115 = v133;
        v116 = v134;
        v26 = sub_1D6AD7608(&v115);
        sub_1D5ECF320(&v124);
      }

      break;
    case 3u:
      v61 = *(v2 + 16);
      v62 = v25;
      v63 = v156;
      v64 = v114;
      sub_1D5F55520(v17);
      if (!v64)
      {
        v26 = sub_1D6894AF0(v17, v63, v113, v62, v61, sub_1D6895FB4);
        sub_1D5D511FC(v17, type metadata accessor for FeedWeather);
      }

      break;
    case 4u:
      v38 = v156;
      v39 = v114;
      sub_1D5F551BC(&v133);
      if (!v39)
      {
        v131[5] = v144;
        v131[6] = v145;
        v131[7] = v146;
        v131[1] = v140[1];
        v131[2] = v141;
        v131[3] = v142;
        v131[4] = v143;
        v128 = v137;
        v129 = v138;
        v130 = v139;
        v131[0] = v140[0];
        v124 = v133;
        v125 = v134;
        v126 = v135;
        v127 = v136;
        v122[5] = v144;
        v122[6] = v145;
        v122[7] = v146;
        v122[1] = v140[1];
        v122[2] = v141;
        v122[3] = v142;
        v122[4] = v143;
        v119 = v137;
        v120 = v138;
        v121 = v139;
        v122[0] = v140[0];
        v115 = v133;
        v116 = v134;
        v132 = v147;
        v40 = v112;
        LOBYTE(v152) = v113;
        v123 = v147;
        v117 = v135;
        v118 = v136;
        sub_1D68B021C(v38, v112, type metadata accessor for FormatDecorationContext);
        v41 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v42 = swift_allocObject();
        sub_1D5D5E40C(v40, v42 + v41, type metadata accessor for FormatDecorationContext);
        v26 = FormatPaywallBinding.Text.text(from:selectors:)(&v115, sub_1D68B04C4);

        sub_1D5F2DFAC(&v124);
      }

      break;
    case 5u:
      v75 = v156;
      v76 = v114;
      sub_1D5F54F8C(&v133);
      if (!v76)
      {
        v77 = v133;
        v78 = v112;
        sub_1D68B021C(v75, v112, type metadata accessor for FormatDecorationContext);
        v79 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v80 = swift_allocObject();
        sub_1D5D5E40C(v78, v80 + v79, type metadata accessor for FormatDecorationContext);
        LOBYTE(v133) = v113;
        v81 = FCFeedDescriptor.feedTag.getter();
        v82 = swift_allocObject();
        *(v82 + 16) = sub_1D68B04C4;
        *(v82 + 24) = v80;
        v83 = swift_getObjectType();

        v26 = sub_1D6E410E4(v81, sub_1D68B04F0, v82, &v133, v83);

        swift_unknownObjectRelease();
      }

      break;
    case 6u:
      v84 = v156;
      v85 = v114;
      sub_1D5F54F8C(&v133);
      if (!v85)
      {
        v114 = 0;
        v86 = v133;
        v87 = [objc_msgSend(v133 backingTag)];
        swift_unknownObjectRelease();
        if (v87)
        {
          v88 = v84;
          v89 = v112;
          sub_1D68B021C(v88, v112, type metadata accessor for FormatDecorationContext);
          v90 = (*(v110 + 80) + 16) & ~*(v110 + 80);
          v91 = swift_allocObject();
          sub_1D5D5E40C(v89, v91 + v90, type metadata accessor for FormatDecorationContext);
          LOBYTE(v133) = v113;
          v92 = swift_getObjectType();
          v93 = swift_allocObject();
          *(v93 + 16) = sub_1D68B04C4;
          *(v93 + 24) = v91;

          v26 = sub_1D6E410E4(v87, sub_1D68B04F0, v93, &v133, v92);

          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError();
          sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      break;
    case 7u:
      v65 = v114;
      sub_1D5F54C3C(v13);
      if (!v65)
      {
        LOBYTE(v133) = v113;
        v26 = FormatWebEmbedBinding.Text.text(from:)(v13);
        sub_1D5D511FC(v13, type metadata accessor for FeedWebEmbed);
      }

      break;
    case 8u:
      v103 = v25;
      v104 = v114;
      sub_1D5F549CC(&v133);
      if (!v104)
      {
        *&v124 = v113;
        BYTE8(v124) = v103;
        sub_1D67CEAD8(&v133);
        v26 = v106;
        swift_unknownObjectRelease();
      }

      break;
    case 9u:
      v52 = *(v2 + 40);
      v53 = *(v2 + 16);
      v54 = v25;
      v55 = v156;
      v56 = v114;
      sub_1D5F54740(&v133);
      if (!v56)
      {
        *&v124 = v113;
        *(&v124 + 1) = v54;
        *&v125 = v53;
        *(&v125 + 1) = v26;
        *&v126 = v27;
        *(&v126 + 1) = v52;
        LOBYTE(v127) = v28 & 0xF;
        v57 = v112;
        sub_1D68B021C(v55, v112, type metadata accessor for FormatDecorationContext);
        v58 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v59 = swift_allocObject();
        sub_1D5D5E40C(v57, v59 + v58, type metadata accessor for FormatDecorationContext);
        v26 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(&v133, v108, sub_1D68B04C4, v59);

        sub_1D5F2DF58(&v133);
      }

      break;
    case 0xAu:
      v94 = v25;
      v95 = v156;
      v96 = v114;
      sub_1D5F544DC(&v152);
      if (!v96)
      {
        v151[0] = v152;
        v151[1] = v153;
        v151[2] = v154;
        v151[3] = v155;
        v149 = v113;
        v150 = v94;
        v148[0] = v152;
        v148[1] = v153;
        v148[2] = v154;
        v148[3] = v155;
        v97 = *(v95 + 24);
        v124 = *(v95 + 8);
        v125 = v97;
        v98 = *(v95 + 40);
        v99 = *(v95 + 56);
        v100 = *(v95 + 72);
        *&v129 = *(v95 + 88);
        v127 = v99;
        v128 = v100;
        v126 = v98;
        v101 = *(v95 + 56);
        v117 = *(v95 + 40);
        v118 = v101;
        v119 = *(v95 + 72);
        *&v120 = *(v95 + 88);
        v102 = *(v95 + 24);
        v115 = *(v95 + 8);
        v116 = v102;
        sub_1D5CF6A5C(&v124, &v133);
        v26 = FormatPuzzleTypeBinding.Text.text(from:config:)(v148, &v115);
        v135 = v117;
        v136 = v118;
        v137 = v119;
        *&v138 = v120;
        v133 = v115;
        v134 = v116;
        sub_1D5D09C48(&v133);
        sub_1D5F2DE58(v151);
      }

      break;
    case 0xBu:
      v37 = v114;
      sub_1D5F54198(v9);
      if (!v37)
      {
        LOBYTE(v133) = v113;
        v26 = FormatPuzzleStatisticBinding.Text.text(from:)(v9);
        sub_1D5D511FC(v9, type metadata accessor for FeedPuzzleStatistic);
      }

      break;
    case 0xCu:
      v43 = *(v2 + 40);
      v44 = *(v2 + 16);
      v45 = v25;
      v46 = v109;
      v47 = v156;
      v48 = v114;
      sub_1D5F53E4C(v109);
      if (!v48)
      {
        *&v133 = v113;
        *(&v133 + 1) = v45;
        *&v134 = v44;
        *(&v134 + 1) = v26;
        *&v135 = v27;
        *(&v135 + 1) = v43;
        v49 = v112;
        sub_1D68B021C(v47, v112, type metadata accessor for FormatDecorationContext);
        v50 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v51 = swift_allocObject();
        sub_1D5D5E40C(v49, v51 + v50, type metadata accessor for FormatDecorationContext);
        v26 = sub_1D7006CB0(v46, sub_1D68B04C4, v51);

        sub_1D5D511FC(v46, type metadata accessor for FeedRecipe);
      }

      break;
    default:
      v29 = *(v2 + 40);
      v30 = *(v2 + 16);
      v31 = v25;
      v32 = v156;
      v33 = v114;
      sub_1D5F55D7C(v24);
      if (!v33)
      {
        *&v133 = v113;
        *(&v133 + 1) = v31;
        *&v134 = v30;
        *(&v134 + 1) = v26;
        *&v135 = v27;
        *(&v135 + 1) = v29;
        LOBYTE(v136) = v28 & 0xF;
        v34 = v112;
        sub_1D68B021C(v32, v112, type metadata accessor for FormatDecorationContext);
        v35 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v36 = swift_allocObject();
        sub_1D5D5E40C(v34, v36 + v35, type metadata accessor for FormatDecorationContext);
        v26 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v24, v108, sub_1D68B04C4, v36);

        sub_1D5D511FC(v24, type metadata accessor for FeedHeadline);
      }

      break;
  }

  return v26;
}

uint64_t sub_1D689484C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a5;
  if (BYTE1(a5) <= 1u)
  {
    if (!BYTE1(a5))
    {
      if (a5 > 0xFDu)
      {
        v18 = 1;
      }

      else
      {
        v18 = a3;
      }

      if (a5 <= 0xFDu)
      {
        v19 = a4;
      }

      else
      {
        v19 = 0;
      }

      v41 = v19;
      if (a5 <= 0xFDu)
      {
        v20 = a5;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(type metadata accessor for FeedWeather(0) + 36);
      v22 = a4;
      v23 = v20;
      sub_1D5E1DCBC(a3, v22, v8);
      v24 = a6(a1 + v21, a2, v18, v41, v20);
      if (v6)
      {
        v25 = v18;
        v26 = v41;
        v27 = v20;
        return sub_1D5E1E15C(v25, v26, v27);
      }

      v35 = v24;
      v36 = v18;
      v37 = v41;
      v38 = v23;
      goto LABEL_58;
    }

    if (a5 > 0xFDu)
    {
      v32 = 1;
    }

    else
    {
      v32 = a3;
    }

    if (a5 <= 0xFDu)
    {
      v33 = a4;
    }

    else
    {
      v33 = 0;
    }

    v40 = v32;
    v42 = v33;
    if (a5 <= 0xFDu)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + *(type metadata accessor for FeedWeather(0) + 36);
    v17 = *(type metadata accessor for FeedWeather.Temperature(0) + 20);
LABEL_49:
    sub_1D5E1DCBC(a3, a4, v8);
    v34 = a6(v16 + v17, a2, v40, v42, v15);
    if (v6)
    {
      v25 = v40;
      v26 = v42;
      v27 = v15;
      return sub_1D5E1E15C(v25, v26, v27);
    }

    v35 = v34;
    v36 = v40;
    v37 = v42;
    v38 = v15;
LABEL_58:
    sub_1D5E1E15C(v36, v37, v38);
    return v35;
  }

  if (BYTE1(a5) == 2)
  {
    if (a5 > 0xFDu)
    {
      v28 = 1;
    }

    else
    {
      v28 = a3;
    }

    if (a5 <= 0xFDu)
    {
      v29 = a4;
    }

    else
    {
      v29 = 0;
    }

    v40 = v28;
    v42 = v29;
    if (a5 <= 0xFDu)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + *(type metadata accessor for FeedWeather(0) + 36);
    v17 = *(type metadata accessor for FeedWeather.Temperature(0) + 24);
    goto LABEL_49;
  }

  if (BYTE1(a5) == 3)
  {
    if (a5 > 0xFDu)
    {
      v13 = 1;
    }

    else
    {
      v13 = a3;
    }

    if (a5 <= 0xFDu)
    {
      v14 = a4;
    }

    else
    {
      v14 = 0;
    }

    v40 = v13;
    v42 = v14;
    if (a5 <= 0xFDu)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + *(type metadata accessor for FeedWeather(0) + 36);
    v17 = *(type metadata accessor for FeedWeather.Temperature(0) + 28);
    goto LABEL_49;
  }

  if (!(a4 | a3) && !a5)
  {
    v30 = *(a1 + 16);

    return v30;
  }

  if (a3 == 1 && !a4 && !a5)
  {
    return FormatWeatherConditionCode.rawValue.getter();
  }

  v39 = (a1 + *(type metadata accessor for FeedWeather(0) + 40));
  result = v39[1];
  if (result)
  {
    v35 = *v39;

    return v35;
  }

  return result;
}

uint64_t sub_1D6894AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a5;
  if (BYTE1(a5) <= 1u)
  {
    if (!BYTE1(a5))
    {
      if (a5 > 0xFDu)
      {
        v18 = 1;
      }

      else
      {
        v18 = a3;
      }

      if (a5 <= 0xFDu)
      {
        v19 = a4;
      }

      else
      {
        v19 = 0;
      }

      v41 = v19;
      if (a5 <= 0xFDu)
      {
        v20 = a5;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(type metadata accessor for FeedWeather(0) + 36);
      v22 = a4;
      v23 = v20;
      sub_1D5E1DCBC(a3, v22, v8);
      v24 = a6(a1 + v21, a2, v18, v41, v20);
      if (v6)
      {
        v25 = v18;
        v26 = v41;
        v27 = v20;
        return sub_1D5E1E15C(v25, v26, v27);
      }

      v35 = v24;
      v36 = v18;
      v37 = v41;
      v38 = v23;
      goto LABEL_58;
    }

    if (a5 > 0xFDu)
    {
      v32 = 1;
    }

    else
    {
      v32 = a3;
    }

    if (a5 <= 0xFDu)
    {
      v33 = a4;
    }

    else
    {
      v33 = 0;
    }

    v40 = v32;
    v42 = v33;
    if (a5 <= 0xFDu)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + *(type metadata accessor for FeedWeather(0) + 36);
    v17 = *(type metadata accessor for FeedWeather.Temperature(0) + 20);
LABEL_49:
    sub_1D5E1DCBC(a3, a4, v8);
    v34 = a6(v16 + v17, a2, v40, v42, v15);
    if (v6)
    {
      v25 = v40;
      v26 = v42;
      v27 = v15;
      return sub_1D5E1E15C(v25, v26, v27);
    }

    v35 = v34;
    v36 = v40;
    v37 = v42;
    v38 = v15;
LABEL_58:
    sub_1D5E1E15C(v36, v37, v38);
    return v35;
  }

  if (BYTE1(a5) == 2)
  {
    if (a5 > 0xFDu)
    {
      v28 = 1;
    }

    else
    {
      v28 = a3;
    }

    if (a5 <= 0xFDu)
    {
      v29 = a4;
    }

    else
    {
      v29 = 0;
    }

    v40 = v28;
    v42 = v29;
    if (a5 <= 0xFDu)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + *(type metadata accessor for FeedWeather(0) + 36);
    v17 = *(type metadata accessor for FeedWeather.Temperature(0) + 24);
    goto LABEL_49;
  }

  if (BYTE1(a5) == 3)
  {
    if (a5 > 0xFDu)
    {
      v13 = 1;
    }

    else
    {
      v13 = a3;
    }

    if (a5 <= 0xFDu)
    {
      v14 = a4;
    }

    else
    {
      v14 = 0;
    }

    v40 = v13;
    v42 = v14;
    if (a5 <= 0xFDu)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + *(type metadata accessor for FeedWeather(0) + 36);
    v17 = *(type metadata accessor for FeedWeather.Temperature(0) + 28);
    goto LABEL_49;
  }

  if (!(a4 | a3) && !a5)
  {
    v30 = *(a1 + 16);

    return v30;
  }

  if (a3 == 1 && !a4 && !a5)
  {
    return FormatWeatherConditionCode.rawValue.getter();
  }

  v39 = (a1 + *(type metadata accessor for FeedWeather(0) + 40));
  result = v39[1];
  if (result)
  {
    v35 = *v39;

    return v35;
  }

  return result;
}

uint64_t sub_1D6894D94()
{
  v0 = sub_1D6C4356C();
  v1 = *(*(v0 + 40) + 16);
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    v6 = *(v0 + 56);

    v3 = sub_1D6F622E0(v2);
    sub_1D5B886D0(v3);

    return v6;
  }

  else
  {
    v5 = sub_1D6E46E28();

    return v5;
  }
}

uint64_t sub_1D6894E34()
{
  v0 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext();
  v1 = v0();
  v2 = *(*(v1 + 40) + 16);
  swift_beginAccess();
  if (*(*(v2 + 16) + 16))
  {
    v7 = *(v1 + 56);

    v4 = sub_1D6F622E0(v3);
    sub_1D5B886D0(v4);

    return v7;
  }

  else
  {
    v6 = sub_1D6E46E28();

    return v6;
  }
}

uint64_t *sub_1D6894EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v43 = a2;
  v8 = sub_1D7258AAC();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68A8C44(0, &qword_1EDF43B60, sub_1D61D3F98, MEMORY[0x1E6968070]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v39 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v39 - v23;
  v44 = a3;
  sub_1D61D37BC(a3, a4, a5);
  (*(v13 + 16))(v16, v20, v12);
  sub_1D725791C();
  if (round(v25) == 0.0)
  {
    sub_1D725792C();
  }

  v26 = *(v13 + 8);
  v26(v20, v12);
  (*(v13 + 32))(v24, v16, v12);
  v49 = v43;
  v46 = v44;
  v47 = a4;
  v48 = a5 & 1;
  v27 = v24;
  v28 = off_1F51AF338[0];
  sub_1D5E1DCD0(v44);
  type metadata accessor for FormatNodeContext();
  v29 = v28();
  v30 = &v46;
  v31 = v45;
  v32 = FormatBoolean.value(contextLayoutOptions:)(v29);
  if (v31)
  {

    v26(v27, v12);
    sub_1D5D2F2C4(v46, v47, v48);
  }

  else
  {
    v33 = v32;
    sub_1D5D2F2C4(v46, v47, v48);

    if (v33)
    {
      v34 = 1;
    }

    else
    {
      v34 = 5;
    }

    v35 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    v36 = v40;
    sub_1D72589EC();
    v37 = sub_1D72589DC();
    (*(v41 + 8))(v36, v42);
    [v35 setLocale_];

    [v35 setUnitOptions_];
    if (qword_1EDF10AC8 != -1)
    {
      swift_once();
    }

    [v35 setNumberFormatter_];
    sub_1D61D3F98();
    v30 = sub_1D726321C();

    v26(v27, v12);
  }

  return v30;
}

uint64_t *sub_1D6895310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v43 = a2;
  v8 = sub_1D7258AAC();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68A8C44(0, &qword_1EDF43B60, sub_1D61D3F98, MEMORY[0x1E6968070]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v39 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v39 - v23;
  v44 = a3;
  sub_1D61D37BC(a3, a4, a5);
  (*(v13 + 16))(v16, v20, v12);
  sub_1D725791C();
  if (round(v25) == 0.0)
  {
    sub_1D725792C();
  }

  v26 = *(v13 + 8);
  v26(v20, v12);
  (*(v13 + 32))(v24, v16, v12);
  v49 = v43;
  v46 = v44;
  v47 = a4;
  v48 = a5 & 1;
  v27 = v24;
  v28 = off_1F51B94D0[0];
  sub_1D5E1DCD0(v44);
  type metadata accessor for FormatNodeBinderContext();
  v29 = v28();
  v30 = &v46;
  v31 = v45;
  v32 = FormatBoolean.value(contextLayoutOptions:)(v29);
  if (v31)
  {

    v26(v27, v12);
    sub_1D5D2F2C4(v46, v47, v48);
  }

  else
  {
    v33 = v32;
    sub_1D5D2F2C4(v46, v47, v48);

    if (v33)
    {
      v34 = 1;
    }

    else
    {
      v34 = 5;
    }

    v35 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    v36 = v40;
    sub_1D72589EC();
    v37 = sub_1D72589DC();
    (*(v41 + 8))(v36, v42);
    [v35 setLocale_];

    [v35 setUnitOptions_];
    if (qword_1EDF10AC8 != -1)
    {
      swift_once();
    }

    [v35 setNumberFormatter_];
    sub_1D61D3F98();
    v30 = sub_1D726321C();

    v26(v27, v12);
  }

  return v30;
}

void *sub_1D6895728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v41 = a2;
  v8 = sub_1D7258AAC();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68A8C44(0, &qword_1EDF43B60, sub_1D61D3F98, MEMORY[0x1E6968070]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v46 = &v38 - v23;
  sub_1D61D37BC(a3, a4, a5);
  (*(v13 + 16))(v16, v20, v12);
  sub_1D725791C();
  if (round(v24) == 0.0)
  {
    sub_1D725792C();
  }

  v25 = *(v13 + 8);
  v25(v20, v12);
  v26 = v46;
  (*(v13 + 32))(v46, v16, v12);
  v43 = a3;
  v44 = a4;
  v45 = a5 & 1;
  sub_1D5E1DCD0(a3);
  v27 = sub_1D6C4356C();
  v28 = &v43;
  v29 = v42;
  v30 = FormatBoolean.value(contextLayoutOptions:)(v27);
  if (v29)
  {

    v25(v26, v12);
    sub_1D5D2F2C4(v43, v44, v45);
  }

  else
  {
    v31 = v30;
    sub_1D5D2F2C4(v43, v44, v45);

    if (v31)
    {
      v32 = 1;
    }

    else
    {
      v32 = 5;
    }

    v33 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    v34 = v38;
    sub_1D72589EC();
    v35 = sub_1D72589DC();
    (*(v39 + 8))(v34, v40);
    [v33 setLocale_];

    [v33 setUnitOptions_];
    if (qword_1EDF10AC8 != -1)
    {
      swift_once();
    }

    [v33 setNumberFormatter_];
    sub_1D61D3F98();
    v36 = v46;
    v28 = sub_1D726321C();

    v25(v36, v12);
  }

  return v28;
}

void *sub_1D6895B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = sub_1D7258AAC();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68A8C44(0, &qword_1EDF43B60, sub_1D61D3F98, MEMORY[0x1E6968070]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v49 = &v43 - v24;
  sub_1D61D37BC(a3, a4, a5);
  (*(v14 + 16))(v17, v21, v13);
  sub_1D725791C();
  if (round(v25) == 0.0)
  {
    sub_1D725792C();
  }

  v47 = *(v14 + 8);
  v47(v21, v13);
  v26 = v49;
  (*(v14 + 32))(v49, v17, v13);
  v50 = a3;
  v51 = a4;
  v52 = a5 & 1;
  v27 = *(a2 + 48);
  type metadata accessor for FormatVariableCollection();
  v28 = swift_allocObject();
  *(v28 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for FormatOptionCollection();
  swift_allocObject();
  sub_1D5E1DCD0(a3);
  v29 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v28);
  type metadata accessor for FormatContextLayoutOptions();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = v27;
  *(inited + 32) = 0x3FF0000000000000;
  *(inited + 40) = v29;
  v31 = MEMORY[0x1E69E7CD0];
  *(inited + 48) = 0;
  *(inited + 56) = v31;
  v32 = &v50;
  v33 = v48;
  v34 = FormatBoolean.value(contextLayoutOptions:)(inited);
  if (v33)
  {
    swift_setDeallocating();

    v47(v26, v13);
    sub_1D5D2F2C4(v50, v51, v52);
  }

  else
  {
    v35 = v34;
    v36 = v47;
    sub_1D5D2F2C4(v50, v51, v52);
    swift_setDeallocating();

    if (v35)
    {
      v37 = 1;
    }

    else
    {
      v37 = 5;
    }

    v38 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    v39 = v44;
    sub_1D72589EC();
    v40 = sub_1D72589DC();
    (*(v45 + 8))(v39, v46);
    [v38 setLocale_];

    [v38 setUnitOptions_];
    if (qword_1EDF10AC8 != -1)
    {
      swift_once();
    }

    [v38 setNumberFormatter_];
    sub_1D61D3F98();
    v41 = v49;
    v32 = sub_1D726321C();

    v36(v41, v13);
  }

  return v32;
}

uint64_t *sub_1D6895FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v48 = a2;
  v8 = sub_1D7258AAC();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68A8C44(0, &qword_1EDF43B60, sub_1D61D3F98, MEMORY[0x1E6968070]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v53 = &v43 - v23;
  v47 = a3;
  v24 = a3;
  v25 = a4;
  v26 = a4;
  v27 = a5;
  sub_1D61D37BC(v24, v26, a5);
  (*(v13 + 16))(v16, v20, v12);
  sub_1D725791C();
  if (round(v28) == 0.0)
  {
    sub_1D725792C();
  }

  v29 = *(v13 + 8);
  v29(v20, v12);
  v30 = v53;
  (*(v13 + 32))(v53, v16, v12);
  v50 = v47;
  v51 = v25;
  v52 = v27 & 1;
  v31 = off_1F513B080[0];
  sub_1D5E1DCD0(v47);
  type metadata accessor for FormatDecorationContext();
  v32 = v31();
  v33 = &v50;
  v34 = v49;
  v35 = FormatBoolean.value(contextLayoutOptions:)(v32);
  if (v34)
  {

    v29(v30, v12);
    sub_1D5D2F2C4(v50, v51, v52);
  }

  else
  {
    v36 = v35;
    sub_1D5D2F2C4(v50, v51, v52);

    if (v36)
    {
      v37 = 1;
    }

    else
    {
      v37 = 5;
    }

    v38 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    v39 = v44;
    sub_1D72589EC();
    v40 = sub_1D72589DC();
    (*(v45 + 8))(v39, v46);
    [v38 setLocale_];

    [v38 setUnitOptions_];
    if (qword_1EDF10AC8 != -1)
    {
      swift_once();
    }

    [v38 setNumberFormatter_];
    sub_1D61D3F98();
    v41 = v53;
    v33 = sub_1D726321C();

    v29(v41, v12);
  }

  return v33;
}

uint64_t sub_1D68963C8(void **a1, unsigned __int8 a2)
{
  v2 = *a1;
  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        if (qword_1EDF3AFB0 != -1)
        {
          swift_once();
        }

        type metadata accessor for FormatCommandAction();
        swift_allocObject();
        v29 = v2;
      }

      else
      {
        if (qword_1EDF3AFE8 != -1)
        {
          swift_once();
        }

        v13 = qword_1EDF3AFF0;
        type metadata accessor for FormatCommandAction();
        swift_allocObject();

        v14 = v2;
        v15 = v13;
      }

      return sub_1D6203B70(v15, v2, 0, 0);
    }

    else if (a2 == 2)
    {
      if (qword_1EDF3ACA8 != -1)
      {
        swift_once();
      }

      v34[0] = v2;
      v34[1] = 0;
      v36 = 0x80;
      v35 = 0;
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v16 = v2;

      return sub_1D62037BC(v17, v34);
    }

    else if (a2 == 3)
    {
      if (qword_1EDF3AAD8 != -1)
      {
        swift_once();
      }

      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v8 = v2;

      return sub_1D6204178(v9, v2);
    }

    else
    {
      if (qword_1EDF16C38 != -1)
      {
        swift_once();
      }

      sub_1D68AFCB0(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1D72816C0;
      *(v26 + 32) = v2;
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v27 = v2;

      return sub_1D6203FC0(v28, v26);
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      if (qword_1EDF3AB68 != -1)
      {
        swift_once();
      }

      v23 = qword_1EDF3AB70;

      v24 = [v2 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v25 = sub_1D68A8EEC(v23, v24);
LABEL_43:
      v32 = v25;

      return v32;
    }

    if (a2 == 9)
    {
      if (qword_1EDF3B010 != -1)
      {
        swift_once();
      }

      v11 = qword_1EDF3B020;

      v12 = [v2 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v5 = v11;
      v6 = v12;
      v7 = 1;
      return sub_1D620338C(v5, v6, v7, 0);
    }

    if (qword_1EDF16A20 != -1)
    {
      swift_once();
    }

    type metadata accessor for FormatCommandAction();
    swift_allocObject();

    return sub_1D6202F80(v33, 1);
  }

  else
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        if (qword_1EDF3B010 != -1)
        {
          swift_once();
        }

        v3 = qword_1EDF3B020;

        v4 = [v2 sourceChannel];
        type metadata accessor for FormatCommandAction();
        swift_allocObject();
        v5 = v3;
        v6 = v4;
        v7 = 0;
        return sub_1D620338C(v5, v6, v7, 0);
      }

      if (qword_1EDF3AB00 != -1)
      {
        swift_once();
      }

      v30 = qword_1EDF3AB10;

      v31 = [v2 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v25 = sub_1D68A926C(v30, v31, 256);
      goto LABEL_43;
    }

    sub_1D68AFCB0(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D72816C0;
    *(v18 + 32) = v2;
    type metadata accessor for Commands.RemoveIssues.Prompt();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &unk_1F50F3278;
    v19[4] = 0;
    v19[5] = 0;
    v20 = qword_1EDF16C58;
    v21 = v2;
    if (v20 != -1)
    {
      swift_once();
    }

    type metadata accessor for FormatCommandAction();
    swift_allocObject();

    return sub_1D6203E08(v22, v19);
  }
}

void sub_1D6896A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v8 = *(a1 + 16);
  if (!(a6 >> 6))
  {
    sub_1D6896CAC(v8, a2, a3, a4, a5);
    return;
  }

  if (a6 >> 6 == 1)
  {
    sub_1D6896CAC([v8 eventLeagueTag], a2, a3, a4, a5);
    swift_unknownObjectRelease();
    return;
  }

  v12 = [v8 eventCompetitorTags];
  if (v12)
  {
    v13 = v12;
    sub_1D5B5534C(0, &qword_1EDF04500);
    v14 = sub_1D726267C();

    if (!(v14 >> 62))
    {
      goto LABEL_7;
    }

LABEL_14:
    v15 = sub_1D7263BFC();
    if (v15 > a3)
    {
      goto LABEL_8;
    }

LABEL_15:

    type metadata accessor for FormatLayoutError();
    sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v17 = v15;
    v17[1] = a3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_14;
  }

LABEL_7:
  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15 <= a3)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1DA6FB460](a3, v14);
    goto LABEL_12;
  }

  if (a3 < 0)
  {
    __break(1u);
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
  {
    v16 = *(v14 + 8 * a3 + 32);
    swift_unknownObjectRetain();
LABEL_12:

    sub_1D6896CAC(v16, a2, a4, a5, a6 & 0x3F);
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

char *sub_1D6896CAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v93 = a3;
  v94 = a1;
  sub_1D68A8C44(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v90 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v89 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v89 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v89 - v21;
  v92 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v92, v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v89 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v89 - v30;
  *&v36 = MEMORY[0x1EEE9AC00](v32, v33).n128_u64[0];
  v38 = &v89 - v37;
  v91 = a2;
  v96 = a2;
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      v90 = v34;
      v40 = [v94 identifier];
      if (!v40)
      {
        sub_1D726207C();
        v40 = sub_1D726203C();
      }

      v41 = [objc_opt_self() nss:v40 NewsURLForTagID:?];

      sub_1D72584EC();
      sub_1D6B79708(v93, MEMORY[0x1E69E7CC0], v38);
      v42 = *(v90 + 1);
      v43 = v92;
      v42(v27, v92);
      if (qword_1EDF3AF88 != -1)
      {
        swift_once();
      }

      v44 = qword_1EDF3AF90;
      v45 = (v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
      v46 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
      if (v46)
      {
        v47 = v45[3];
        v48 = v45[4];
        v49 = v45[1];

        sub_1D69F65B4(v38, v49, v46, v47, v48, v18);

        v50 = v90;
      }

      else
      {
        v50 = v90;
        (*(v90 + 2))(v18, v38, v43);
      }

      (*(v50 + 7))(v18, 0, 1, v43);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v27 = sub_1D62029B4(v44, v18);
      v42(v38, v43);
      return v27;
    }

    if (v93 | a4)
    {
      if (v93 ^ 1 | a4)
      {
        v60 = v35;
        v61 = v34;
        swift_getObjectType();
        FCTagProviding.recipeCatalogSearchURL.getter(v22);
        v62 = v92;
        if ((*(v61 + 6))(v22, 1, v92) == 1)
        {
          v63 = v61;
          sub_1D68AF29C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v64 = objc_opt_self();
          sub_1D7257B5C();
          v65 = sub_1D726265C();
          v66 = [v64 nss:v65 NewsURLForRecipeCatalog:?];

          sub_1D72584EC();
          if (qword_1EDF3AF88 != -1)
          {
            swift_once();
          }

          v67 = qword_1EDF3AF90;
          v68 = v92;
          v69 = (v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
          v70 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
          v71 = v90;
          if (v70)
          {
            v72 = v69[3];
            v73 = v69[4];
            v74 = v69[1];

            sub_1D69F65B4(v60, v74, v70, v72, v73, v71);

            v61 = v63;
          }

          else
          {
            (*(v61 + 2))(v90, v60, v92);
          }

          (*(v61 + 7))(v71, 0, 1, v68);
          type metadata accessor for FormatCommandAction();
          swift_allocObject();
          v27 = sub_1D62029B4(v67, v71);
          (*(v61 + 1))(v60, v68);
        }

        else
        {
          v79 = v61;
          (*(v61 + 4))(v31, v22, v62);
          if (qword_1EDF3AF88 != -1)
          {
            swift_once();
          }

          v80 = qword_1EDF3AF90;
          v81 = (v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
          v82 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
          if (v82)
          {
            v83 = v81[3];
            v84 = v81[4];
            v85 = v81[1];

            sub_1D69F65B4(v31, v85, v82, v83, v84, v14);

            v86 = v92;
            v87 = v79;
          }

          else
          {
            v87 = v61;
            v88 = *(v61 + 2);
            v86 = v92;
            v88(v14, v31, v92);
          }

          (*(v87 + 7))(v14, 0, 1, v86);
          type metadata accessor for FormatCommandAction();
          swift_allocObject();
          v27 = sub_1D62029B4(v80, v14);
          (*(v87 + 1))(v31, v86);
        }

        return v27;
      }

      if (qword_1EDF16D48 != -1)
      {
        swift_once();
      }

      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v52 = v94;
      swift_unknownObjectRetain();

      v54 = sub_1D68A90AC(v53, v52);
    }

    else
    {
      if (qword_1EDF3AB68 != -1)
      {
        swift_once();
      }

      v58 = qword_1EDF3AB70;
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v59 = v94;
      swift_unknownObjectRetain();
      v54 = sub_1D68A8EEC(v58, v59);
    }

    v27 = v54;
LABEL_37:

    return v27;
  }

  if (!a5)
  {
    if (v93)
    {
      v39 = 1;
    }

    else
    {
      v55 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v56 = *(v55() + 16);

      v95 = v56;
      if (FeedKind.rawValue.getter() == 0xD000000000000013 && 0x80000001D73B7810 == v57)
      {
        v39 = 1;
      }

      else
      {
        v39 = sub_1D72646CC();
      }
    }

    if (qword_1EDF3AB00 != -1)
    {
      swift_once();
    }

    v75 = v39 & 1 | 0x100;
    type metadata accessor for FormatCommandAction();
    swift_allocObject();
    v76 = v94;
    swift_unknownObjectRetain();

    v27 = sub_1D68A926C(v77, v76, v75);
    goto LABEL_37;
  }

  type metadata accessor for FormatLayoutError();
  sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  *v51 = 0xD000000000000014;
  v51[1] = 0x80000001D73DA510;
  v51[5] = &type metadata for FormatVersions.StarSky;
  v51[6] = &off_1F51F6CD8;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v27;
}

char *sub_1D6897724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v93 = a2;
  v101 = a1;
  sub_1D68A8C44(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v92 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v91 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v91 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v91 - v21;
  v23 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v23, v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v91 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v91 - v31;
  *&v38 = MEMORY[0x1EEE9AC00](v33, v34).n128_u64[0];
  v40 = &v91 - v39;
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      v91 = v36;
      v92 = v35;
      v42 = [v101 identifier];
      if (!v42)
      {
        sub_1D726207C();
        v42 = sub_1D726203C();
      }

      v43 = [objc_opt_self() nss:v42 NewsURLForTagID:?];

      sub_1D72584EC();
      sub_1D6B7A1EC(a3, MEMORY[0x1E69E7CC0], v40);
      v44 = *(v91 + 8);
      v44(v28, v92);
      if (qword_1EDF3AF88 != -1)
      {
        swift_once();
      }

      v45 = qword_1EDF3AF90;
      v46 = *(v93 + 88);
      v95 = *(v93 + 72);
      v96 = v46;
      v47 = *(&v95 + 1);
      if (*(&v95 + 1))
      {
        v48 = v95;
        v50 = *(&v96 + 1);
        v49 = v96;

        sub_1D68AFF0C(&v95, v94);
        sub_1D69F65B4(v40, v48, v47, v49, v50, v18);
        sub_1D68AFF68(&v95);
        v51 = v92;
        v52 = v91;
      }

      else
      {
        v52 = v91;
        v51 = v92;
        (*(v91 + 16))(v18, v40, v92);
      }

      (*(v52 + 56))(v18, 0, 1, v51);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v28 = sub_1D62029B4(v45, v18);
      v44(v40, v51);
    }

    else
    {
      if (!(a3 | a4))
      {
        if (qword_1EDF3AB68 != -1)
        {
          swift_once();
        }

        v58 = qword_1EDF3AB70;
        type metadata accessor for FormatCommandAction();
        swift_allocObject();

        v59 = v101;
        swift_unknownObjectRetain();
        v28 = sub_1D68A8EEC(v58, v59);
        goto LABEL_36;
      }

      if (a3 ^ 1 | a4)
      {
        v60 = v37;
        v61 = v35;
        v62 = v36;
        swift_getObjectType();
        FCTagProviding.recipeCatalogSearchURL.getter(v22);
        if ((*(v62 + 48))(v22, 1, v61) == 1)
        {
          v63 = v62;
          v64 = v61;
          sub_1D68AF29C(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v65 = objc_opt_self();
          sub_1D7257B5C();
          v66 = sub_1D726265C();
          v67 = [v65 nss:v66 NewsURLForRecipeCatalog:?];

          sub_1D72584EC();
          if (qword_1EDF3AF88 != -1)
          {
            swift_once();
          }

          v68 = qword_1EDF3AF90;
          v69 = *(v93 + 88);
          v99 = *(v93 + 72);
          v100 = v69;
          v70 = *(&v99 + 1);
          v71 = v92;
          if (*(&v99 + 1))
          {
            v72 = v99;
            v74 = *(&v100 + 1);
            v73 = v100;

            sub_1D68AFF0C(&v99, v94);
            sub_1D69F65B4(v60, v72, v70, v73, v74, v71);
            sub_1D68AFF68(&v99);
            v75 = v64;
            v76 = v63;
          }

          else
          {
            v76 = v62;
            v75 = v64;
            (*(v62 + 16))(v92, v60, v64);
          }

          (*(v76 + 56))(v71, 0, 1, v75);
          type metadata accessor for FormatCommandAction();
          swift_allocObject();
          v28 = sub_1D62029B4(v68, v71);
          (*(v76 + 8))(v60, v75);
        }

        else
        {
          v81 = v62;
          v82 = v61;
          (*(v62 + 32))(v32, v22, v61);
          if (qword_1EDF3AF88 != -1)
          {
            swift_once();
          }

          v83 = qword_1EDF3AF90;
          v84 = *(v93 + 88);
          v97 = *(v93 + 72);
          v98 = v84;
          v85 = *(&v97 + 1);
          if (*(&v97 + 1))
          {
            v86 = v97;
            v88 = *(&v98 + 1);
            v87 = v98;

            sub_1D68AFF0C(&v97, v94);
            sub_1D69F65B4(v32, v86, v85, v87, v88, v14);
            sub_1D68AFF68(&v97);
            v89 = v82;
            v90 = v81;
          }

          else
          {
            v90 = v62;
            v89 = v82;
            (*(v62 + 16))(v14, v32, v82);
          }

          (*(v90 + 56))(v14, 0, 1, v89);
          type metadata accessor for FormatCommandAction();
          swift_allocObject();
          v28 = sub_1D62029B4(v83, v14);
          (*(v90 + 8))(v32, v89);
        }
      }

      else
      {
        if (qword_1EDF16D48 != -1)
        {
          swift_once();
        }

        type metadata accessor for FormatCommandAction();
        swift_allocObject();
        v54 = v101;
        swift_unknownObjectRetain();

        v28 = sub_1D68A90AC(v55, v54);
      }
    }
  }

  else
  {
    if (!a5)
    {
      if (a3)
      {
        v41 = 1;
      }

      else
      {
        type metadata accessor for FormatVariableCollection();
        v56 = swift_allocObject();
        *(v56 + 16) = MEMORY[0x1E69E7CC8];
        type metadata accessor for FormatOptionCollection();
        swift_initStackObject();
        sub_1D5D2488C(MEMORY[0x1E69E7CC0], v56);

        v94[0] = 0;
        if (FeedKind.rawValue.getter() == 0xD000000000000013 && 0x80000001D73B7810 == v57)
        {
          v41 = 1;
        }

        else
        {
          v41 = sub_1D72646CC();
        }
      }

      if (qword_1EDF3AB00 != -1)
      {
        swift_once();
      }

      v77 = v41 & 1 | 0x100;
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v78 = v101;
      swift_unknownObjectRetain();

      v28 = sub_1D68A926C(v79, v78, v77);
LABEL_36:

      return v28;
    }

    type metadata accessor for FormatLayoutError();
    sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v53 = 0xD000000000000014;
    v53[1] = 0x80000001D73DA510;
    v53[5] = &type metadata for FormatVersions.StarSky;
    v53[6] = &off_1F51F6CD8;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v28;
}

uint64_t sub_1D6898218(uint64_t *a1, char a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D68A8C44(0, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v53[-1] - v7;
  sub_1D68A8C44(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v4);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v53[-1] - v11;
  switch(a2)
  {
    case 1:
      if (qword_1EDF3AFB0 != -1)
      {
        swift_once();
      }

      v37 = qword_1EDF3AFB8;
      goto LABEL_32;
    case 2:
      if (qword_1EDF3ACA8 != -1)
      {
        swift_once();
      }

      v30 = qword_1EDF3ACB0;
      v31 = a1[5];
      v32 = *a1;
      v33 = a1[1];
      v53[0] = v31;
      v53[1] = sub_1D5B4AA6C;
      v53[2] = 0;
      v53[3] = 0;
      v53[4] = v32;
      v53[5] = v33;
      v55 = 0;
      v54 = 0;
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();

      return sub_1D62037BC(v30, v53);
    case 3:
      if (qword_1EDF3B028 != -1)
      {
        swift_once();
      }

      v16 = qword_1EDF3B030;
      goto LABEL_49;
    case 4:
      if (qword_1EDF3AE18 != -1)
      {
        swift_once();
      }

      v17 = qword_1EDF3AE20;
      v18 = a1[5];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      v19 = sub_1D68A9450(v17, v18, 1024);
      goto LABEL_53;
    case 5:
      if (qword_1EDF3AE68 != -1)
      {
        swift_once();
      }

      v41 = qword_1EDF3AE70;
      goto LABEL_45;
    case 6:
      if (qword_1EDF3AE50 != -1)
      {
        swift_once();
      }

      v41 = qword_1EDF3AE58;
LABEL_45:
      v43 = a1[5];
      v45 = *a1;
      v44 = a1[1];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();

      v19 = sub_1D68A96A8(v41, v43, v45, v44);
      goto LABEL_53;
    case 7:
      if (qword_1EDF3B010 != -1)
      {
        swift_once();
      }

      v34 = qword_1EDF3B020;
      v35 = a1[5];

      v36 = [v35 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      swift_unknownObjectRetain();
      return sub_1D620338C(v34, v36, 0, v35);
    case 8:
      if (qword_1EDF3AB00 != -1)
      {
        swift_once();
      }

      v47 = qword_1EDF3AB10;
      v48 = a1[5];

      v49 = [v48 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v19 = sub_1D68A926C(v47, v49, (v49 != 0) << 8);
      goto LABEL_53;
    case 9:
      if (qword_1EDF3AB68 != -1)
      {
        swift_once();
      }

      v27 = qword_1EDF3AB70;
      v28 = a1[5];

      v29 = [v28 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v19 = sub_1D68A8EEC(v27, v29);
      goto LABEL_53;
    case 10:
      if (qword_1EDF3AFD8 != -1)
      {
        swift_once();
      }

      v16 = qword_1EDF3AFE0;
      goto LABEL_49;
    case 11:
      if (qword_1EDF3AC48 != -1)
      {
        swift_once();
      }

      v16 = qword_1EDF3AC58;
LABEL_49:
      v46 = a1[5];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      return sub_1D6203604(v16, v46);
    case 12:
      if (qword_1EDF3AC28 != -1)
      {
        swift_once();
      }

      v20 = qword_1EDF3AC38;
      v21 = a1[5];

      v22 = [v21 identifier];
      v23 = sub_1D726207C();
      v25 = v24;

      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      return sub_1D62031B0(v20, v23, v25);
    case 13:
      if (qword_1EDF16A20 != -1)
      {
        swift_once();
      }

      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      return sub_1D6202F80(v42, 1);
    case 14:
    case 16:
    case 17:
      if (qword_1EDF3B0A0 != -1)
      {
        swift_once();
      }

      sub_1D68B021C(a1, v8, type metadata accessor for FeedHeadline);
      v13 = type metadata accessor for FeedHeadlineAudioCommandContext();
      (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v15 = sub_1D68A9DE8(v14, v8);
      goto LABEL_54;
    case 15:
      if (qword_1EDF3B088 != -1)
      {
        swift_once();
      }

      sub_1D68B021C(a1, v12, type metadata accessor for FeedHeadline);
      v39 = type metadata accessor for FeedHeadline(0);
      (*(*(v39 - 8) + 56))(v12, 0, 1, v39);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v19 = sub_1D68A9928(v40, v12);
LABEL_53:
      v15 = v19;
LABEL_54:

      result = v15;
      break;
    case 18:
      if (qword_1EDF3ACD0 != -1)
      {
        swift_once();
      }

      v50 = qword_1EDF3ACE0;
      v51 = a1[5];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      result = sub_1D6202DC8(v50, v51);
      break;
    default:
      if (qword_1EDF3AFE8 != -1)
      {
        swift_once();
      }

      v37 = qword_1EDF3AFF0;
LABEL_32:
      v38 = a1[5];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      result = sub_1D6203B70(v37, v38, 0, 1u);
      break;
  }

  return result;
}

uint64_t sub_1D6898BC4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (qword_1EDF16DB0 != -1)
      {
        v14 = a1;
        swift_once();
        a1 = v14;
      }

      sub_1D5F2DEAC(a1, v15);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v3 = sub_1D68AA7F8(v7, v15);
    }

    else
    {
      if (qword_1EDF16D98 != -1)
      {
        v13 = a1;
        swift_once();
        a1 = v13;
      }

      sub_1D5F2DEAC(a1, v15);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v3 = sub_1D68AA2A8(v4, v15);
    }
  }

  else if (a2 == 2)
  {
    if (qword_1EDF16D88 != -1)
    {
      v10 = a1;
      swift_once();
      a1 = v10;
    }

    sub_1D5F2DEAC(a1, v15);
    type metadata accessor for FormatCommandAction();
    swift_allocObject();

    v3 = sub_1D68AAD48(v5, v15);
  }

  else if (a2 == 3)
  {
    if (qword_1EDF16D60 != -1)
    {
      v11 = a1;
      swift_once();
      a1 = v11;
    }

    sub_1D5F2DEAC(a1, v15);
    type metadata accessor for FormatCommandAction();
    swift_allocObject();

    v3 = sub_1D68AB298(v2, v15);
  }

  else
  {
    if (qword_1EDF16D78 != -1)
    {
      v12 = a1;
      swift_once();
      a1 = v12;
    }

    sub_1D5F2DEAC(a1, v15);
    type metadata accessor for FormatCommandAction();
    swift_allocObject();

    v3 = sub_1D68AB7E8(v6, v15);
  }

  v8 = v3;

  return v8;
}

uint64_t sub_1D6898EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_getObjectType();
  a6(0);
  return sub_1D725D92C() & 1;
}

uint64_t sub_1D6898F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_getObjectType();
  a6(0);
  return sub_1D725D97C();
}

uint64_t sub_1D6898FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  type metadata accessor for FeedHeadline(0);
  sub_1D68AD6BC();
  sub_1D5B80300();

  sub_1D725D95C();
}

uint64_t sub_1D68990BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  type metadata accessor for FeedHeadlineAudioCommandContext();
  sub_1D68ADCBC();
  sub_1D5B82160();

  sub_1D725D95C();
}

uint64_t sub_1D68991BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AE534();
  sub_1D5B8D474();

  sub_1D725D95C();
}

uint64_t sub_1D68992B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AE3D8();
  sub_1D5B90AC0();

  sub_1D725D95C();
}

uint64_t sub_1D68993AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AE2E8();
  sub_1D5B81000();

  sub_1D725D95C();
}

uint64_t sub_1D68994A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AE144();
  sub_1D5B840B4();

  sub_1D725D95C();
}

uint64_t sub_1D689959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  type metadata accessor for LiveActivityCommandContext();
  sub_1D68AF1FC();
  sub_1D5B662E0();

  sub_1D725D95C();
}

uint64_t sub_1D689969C(uint64_t a1, uint64_t a2, char a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v62 = a5;
  v63 = a6;
  v65 = a4;
  sub_1D68ACC0C();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725D38C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v59 - v20;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v68 = &v59 - v28;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v59 - v32;
  v61 = v17;
  if (a3)
  {
    v34 = v10;
    if (a3 == 1)
    {
      *v21 = a1 & 1;
      v35 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v21 = a1;
      v35 = MEMORY[0x1E69D7858];
    }

    (*(v14 + 104))(v21, *v35, v13, v31);
  }

  else
  {
    v36 = a2;
    v34 = v10;
    *v21 = a1;
    *(v21 + 1) = v36;
    (*(v14 + 104))(v21, *MEMORY[0x1E69D7870], v13, v31);
  }

  v64 = v25;
  v60 = *(v14 + 32);
  v60(v33, v21, v13);
  v37 = *(v14 + 56);
  v67 = v33;
  v38 = v37(v33, 0, 1, v13);
  v70 = v65;
  v66 = v14;
  if (v65 == 2)
  {
    v39 = v68;
    v40 = v68;
    v41 = 1;
  }

  else
  {
    v62(v38);
    v39 = v68;
    sub_1D725DE0C();
    v40 = v39;
    v41 = 0;
  }

  v37(v40, v41, 1, v13);
  v42 = *(v34 + 48);
  v43 = MEMORY[0x1E69D7880];
  v44 = MEMORY[0x1E69E6720];
  v45 = v67;
  v46 = v69;
  sub_1D68AE904(v67, v69, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v39, v46 + v42, &unk_1EDF3B690, v43, v44, sub_1D68A8C44);
  v47 = v66;
  v48 = *(v66 + 48);
  if (v48(v46, 1, v13) != 1)
  {
    v52 = v64;
    sub_1D68AE904(v46, v64, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v48(v46 + v42, 1, v13) != 1)
    {
      v54 = v61;
      v60(v61, (v46 + v42), v13);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v55 = v46;
      v51 = sub_1D7261FBC();
      v56 = *(v47 + 8);
      v56(v54, v13);
      v57 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v67, &unk_1EDF3B690, v57);
      v56(v52, v13);
      sub_1D68AF29C(v55, &unk_1EDF3B690, v57);
      return v51 & 1;
    }

    v53 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v50 = v69;
    sub_1D68AF29C(v67, &unk_1EDF3B690, v53);
    (*(v47 + 8))(v52, v13);
    goto LABEL_15;
  }

  v49 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v39, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v50 = v69;
  sub_1D68AF29C(v45, &unk_1EDF3B690, v49);
  if (v48(v50 + v42, 1, v13) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v50, sub_1D68ACC0C);
    v51 = 0;
    return v51 & 1;
  }

  sub_1D68AF29C(v50, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v51 = 1;
  return v51 & 1;
}

uint64_t sub_1D6899D00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  LODWORD(v62) = a5;
  v60 = a4;
  sub_1D68ACC0C();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v57 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v57 - v26);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v64 = &v57 - v31;
  if (a3)
  {
    if (a3 == 1)
    {
      *v19 = a1 & 1;
      v32 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = a1;
      v32 = MEMORY[0x1E69D7858];
    }

    v33 = v13[13];
    v33(v19, *v32, v12, v30);
  }

  else
  {
    *v19 = a1;
    *(v19 + 1) = a2;
    v33 = v13[13];
    v33(v19, *MEMORY[0x1E69D7870], v12, v30);
  }

  v61 = v23;
  v34 = v13[4];
  v35 = v64;
  v57 = v13 + 4;
  v58 = v34;
  v34(v64, v19, v12);
  v36 = v13[7];
  v37 = 1;
  v36(v35, 0, 1, v12);
  if ((v62 & 0x100) == 0)
  {
    v38 = v60;
    if (v62)
    {
      v38 = 0;
    }

    *v27 = v38;
    (v33)(v27, *MEMORY[0x1E69D7868], v12);
    v37 = 0;
  }

  v36(v27, v37, 1, v12);
  v39 = *(v9 + 48);
  v40 = MEMORY[0x1E69D7880];
  v41 = MEMORY[0x1E69E6720];
  v42 = v12;
  v44 = v63;
  v43 = v64;
  sub_1D68AE904(v64, v63, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  v62 = v39;
  sub_1D68AE904(v27, v44 + v39, &unk_1EDF3B690, v40, v41, sub_1D68A8C44);
  v45 = v13[6];
  if (v45(v44, 1, v42) != 1)
  {
    v49 = v61;
    sub_1D68AE904(v44, v61, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v50 = v62;
    if (v45(v44 + v62, 1, v42) != 1)
    {
      v52 = v59;
      v58(v59, v44 + v50, v42);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v53 = v44;
      v48 = sub_1D7261FBC();
      v54 = v13[1];
      v54(v52, v42);
      v55 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v64, &unk_1EDF3B690, v55);
      v54(v49, v42);
      sub_1D68AF29C(v53, &unk_1EDF3B690, v55);
      return v48 & 1;
    }

    v51 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v47 = v63;
    sub_1D68AF29C(v64, &unk_1EDF3B690, v51);
    (v13[1])(v49, v42);
    goto LABEL_16;
  }

  v46 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = v63;
  sub_1D68AF29C(v43, &unk_1EDF3B690, v46);
  if (v45(v47 + v62, 1, v42) != 1)
  {
LABEL_16:
    sub_1D5D511FC(v47, sub_1D68ACC0C);
    v48 = 0;
    return v48 & 1;
  }

  sub_1D68AF29C(v47, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v48 = 1;
  return v48 & 1;
}

uint64_t sub_1D689A358(uint64_t a1, uint64_t a2, char a3, int a4)
{
  LODWORD(v59) = a4;
  sub_1D68ACC0C();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v60 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725D38C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v53 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v53 - v24;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v53 - v29;
  v56 = v15;
  v57 = v31;
  if (a3)
  {
    if (a3 == 1)
    {
      *v19 = a1 & 1;
      v32 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = a1;
      v32 = MEMORY[0x1E69D7858];
    }

    (*(v12 + 104))(v19, *v32, v11, v28);
  }

  else
  {
    *v19 = a1;
    *(v19 + 1) = a2;
    (*(v12 + 104))(v19, *MEMORY[0x1E69D7870], v11, v28);
  }

  v33 = v59;
  v55 = *(v12 + 32);
  v55(v30, v19, v11);
  v58 = v12;
  v59 = v30;
  v34 = *(v12 + 56);
  v35 = 1;
  v34(v30, 0, 1, v11);
  if (v33 != 2)
  {
    sub_1D726284C();
    v35 = 0;
  }

  v34(v25, v35, 1, v11);
  v36 = *(v8 + 48);
  v37 = MEMORY[0x1E69D7880];
  v38 = MEMORY[0x1E69E6720];
  v40 = v59;
  v39 = v60;
  sub_1D68AE904(v59, v60, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v25, v39 + v36, &unk_1EDF3B690, v37, v38, sub_1D68A8C44);
  v41 = v58;
  v42 = *(v58 + 48);
  if (v42(v39, 1, v11) != 1)
  {
    v54 = v25;
    v46 = v57;
    sub_1D68AE904(v39, v57, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v42(v39 + v36, 1, v11) != 1)
    {
      v48 = v56;
      v55(v56, (v39 + v36), v11);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v49 = v39;
      v45 = sub_1D7261FBC();
      v50 = *(v41 + 8);
      v50(v48, v11);
      v51 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v54, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v59, &unk_1EDF3B690, v51);
      v50(v46, v11);
      sub_1D68AF29C(v49, &unk_1EDF3B690, v51);
      return v45 & 1;
    }

    v47 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v54, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v44 = v60;
    sub_1D68AF29C(v59, &unk_1EDF3B690, v47);
    (*(v41 + 8))(v46, v11);
    goto LABEL_14;
  }

  v43 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v25, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v44 = v60;
  sub_1D68AF29C(v40, &unk_1EDF3B690, v43);
  if (v42(v44 + v36, 1, v11) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v44, sub_1D68ACC0C);
    v45 = 0;
    return v45 & 1;
  }

  sub_1D68AF29C(v44, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1D689A970(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1D68ACC0C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v67 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725D38C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v62 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v60 - v20;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v64 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v68 = (&v60 - v27);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v69 = &v60 - v31;
  v65 = v11;
  if (a3)
  {
    if (a3 == 1)
    {
      *v21 = a1 & 1;
      v32 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v21 = a1;
      v32 = MEMORY[0x1E69D7858];
    }

    v33 = *(v15 + 104);
    v33(v21, *v32, v14, v30);
  }

  else
  {
    *v21 = a1;
    *(v21 + 1) = a2;
    v33 = *(v15 + 104);
    v33(v21, *MEMORY[0x1E69D7870], v14, v30);
  }

  v35 = v15 + 32;
  v34 = *(v15 + 32);
  v36 = v15;
  v37 = v69;
  v60 = v35;
  v61 = v34;
  v34(v69, v21, v14);
  v38 = *(v36 + 56);
  v39 = 1;
  v38(v37, 0, 1, v14);
  v66 = a5;
  v40 = v68;
  if (a5)
  {
    *v68 = a4;
    v40[1] = a5;
    (v33)(v40, *MEMORY[0x1E69D7870], v14);
    v39 = 0;
  }

  v38(v40, v39, 1, v14);
  v41 = v14;
  v42 = *(v65 + 48);
  v43 = MEMORY[0x1E69D7880];
  v44 = MEMORY[0x1E69E6720];
  v45 = v40;
  v46 = v69;
  v47 = v67;
  sub_1D68AE904(v69, v67, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  v65 = v42;
  v48 = v47 + v42;
  v49 = v41;
  sub_1D68AE904(v45, v48, &unk_1EDF3B690, v43, v44, sub_1D68A8C44);
  v63 = v36;
  v50 = *(v36 + 48);
  if (v50(v47, 1, v41) != 1)
  {
    v53 = v64;
    sub_1D68AE904(v47, v64, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v54 = v65;
    if (v50(v47 + v65, 1, v41) != 1)
    {
      v56 = v62;
      v61(v62, v47 + v54, v41);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);

      v52 = sub_1D7261FBC();
      v57 = *(v63 + 8);
      v57(v56, v49);
      v58 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v69, &unk_1EDF3B690, v58);
      v57(v53, v49);
      sub_1D68AF29C(v47, &unk_1EDF3B690, v58);
      return v52 & 1;
    }

    v55 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    sub_1D68AF29C(v69, &unk_1EDF3B690, v55);
    (*(v63 + 8))(v53, v41);
    goto LABEL_14;
  }

  v51 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v45, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  sub_1D68AF29C(v46, &unk_1EDF3B690, v51);
  if (v50(v47 + v65, 1, v41) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v47, sub_1D68ACC0C);
    v52 = 0;
    return v52 & 1;
  }

  sub_1D68AF29C(v47, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v52 = 1;
  return v52 & 1;
}

uint64_t sub_1D689B000(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  LODWORD(v59) = a5;
  v57 = a4;
  sub_1D68ACC0C();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v56 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v54 - v26);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v61 = &v54 - v31;
  if (a3)
  {
    if (a3 == 1)
    {
      *v19 = a1 & 1;
      v32 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = a1;
      v32 = MEMORY[0x1E69D7858];
    }

    v33 = v13[13];
    v33(v19, *v32, v12, v30);
  }

  else
  {
    *v19 = a1;
    *(v19 + 1) = a2;
    v33 = v13[13];
    v33(v19, *MEMORY[0x1E69D7870], v12, v30);
  }

  v58 = v23;
  v34 = v13[4];
  v35 = v61;
  v54 = v13 + 4;
  v55 = v34;
  v34(v61, v19, v12);
  v36 = v13[7];
  v37 = 1;
  v36(v35, 0, 1, v12);
  if ((v59 & 1) == 0)
  {
    *v27 = v57;
    (v33)(v27, *MEMORY[0x1E69D7858], v12);
    v37 = 0;
  }

  v36(v27, v37, 1, v12);
  v38 = v12;
  v39 = *(v9 + 48);
  v40 = MEMORY[0x1E69D7880];
  v41 = MEMORY[0x1E69E6720];
  v43 = v60;
  v42 = v61;
  sub_1D68AE904(v61, v60, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  v59 = v39;
  sub_1D68AE904(v27, v43 + v39, &unk_1EDF3B690, v40, v41, sub_1D68A8C44);
  v44 = v13[6];
  if (v44(v43, 1, v38) != 1)
  {
    v47 = v58;
    sub_1D68AE904(v43, v58, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v48 = v59;
    if (v44(v43 + v59, 1, v38) != 1)
    {
      v50 = v56;
      v55(v56, v43 + v48, v38);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v46 = sub_1D7261FBC();
      v51 = v13[1];
      v51(v50, v38);
      v52 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v61, &unk_1EDF3B690, v52);
      v51(v47, v38);
      sub_1D68AF29C(v43, &unk_1EDF3B690, v52);
      return v46 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    sub_1D68AF29C(v61, &unk_1EDF3B690, v49);
    (v13[1])(v47, v38);
    goto LABEL_14;
  }

  v45 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  sub_1D68AF29C(v42, &unk_1EDF3B690, v45);
  if (v44(v43 + v59, 1, v38) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v43, sub_1D68ACC0C);
    v46 = 0;
    return v46 & 1;
  }

  sub_1D68AF29C(v43, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_1D689B648(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5)
{
  v61 = a4;
  sub_1D68ACC0C();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725D38C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v60 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v57 - v19;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v64 = (&v57 - v27);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v66 = &v57 - v31;
  if (a3)
  {
    if (a3 == 1)
    {
      *v20 = a1 & 1;
      v32 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v20 = a1;
      v32 = MEMORY[0x1E69D7858];
    }

    v33 = *(v14 + 104);
    v33(v20, *v32, v13, v30);
  }

  else
  {
    *v20 = a1;
    *(v20 + 1) = a2;
    v33 = *(v14 + 104);
    v33(v20, *MEMORY[0x1E69D7870], v13, v30);
  }

  v34 = v14 + 32;
  v35 = *(v14 + 32);
  v36 = v14;
  v37 = v66;
  v58 = v35;
  v59 = v34;
  v35(v66, v20, v13);
  v65 = v36;
  v38 = *(v36 + 56);
  v39 = 1;
  v38(v37, 0, 1, v13);
  v40 = a5;
  v62 = v24;
  if (a5 > 1u)
  {
    v41 = v64;
    v42 = v65;
    if (v40 != 2)
    {
      goto LABEL_12;
    }

    *v64 = 0;
  }

  else
  {
    v41 = v64;
    v42 = v65;
    *v64 = v61;
  }

  (v33)(v41, *MEMORY[0x1E69D7868], v13);
  v39 = 0;
LABEL_12:
  v38(v41, v39, 1, v13);
  v43 = *(v10 + 48);
  v44 = MEMORY[0x1E69D7880];
  v45 = MEMORY[0x1E69E6720];
  v46 = v66;
  v47 = v63;
  sub_1D68AE904(v66, v63, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v41, v47 + v43, &unk_1EDF3B690, v44, v45, sub_1D68A8C44);
  v48 = *(v42 + 48);
  if (v48(v47, 1, v13) != 1)
  {
    v51 = v62;
    sub_1D68AE904(v47, v62, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v48(v47 + v43, 1, v13) != 1)
    {
      v53 = v60;
      v58(v60, v47 + v43, v13);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v50 = sub_1D7261FBC();
      v54 = *(v65 + 8);
      v54(v53, v13);
      v55 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v64, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v66, &unk_1EDF3B690, v55);
      v54(v51, v13);
      sub_1D68AF29C(v47, &unk_1EDF3B690, v55);
      return v50 & 1;
    }

    v52 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v64, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    sub_1D68AF29C(v66, &unk_1EDF3B690, v52);
    (*(v65 + 8))(v51, v13);
    goto LABEL_17;
  }

  v49 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v41, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  sub_1D68AF29C(v46, &unk_1EDF3B690, v49);
  if (v48(v47 + v43, 1, v13) != 1)
  {
LABEL_17:
    sub_1D5D511FC(v47, sub_1D68ACC0C);
    v50 = 0;
    return v50 & 1;
  }

  sub_1D68AF29C(v47, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v50 = 1;
  return v50 & 1;
}

uint64_t sub_1D689BCA4(uint64_t a1, uint64_t a2, char a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v62 = a5;
  v63 = a6;
  v65 = a4;
  sub_1D68ACC0C();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725D38C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v59 - v20;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v68 = &v59 - v28;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v59 - v32;
  v61 = v17;
  if (a3)
  {
    v34 = v10;
    if (a3 == 1)
    {
      *v21 = a1 & 1;
      v35 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v21 = a1;
      v35 = MEMORY[0x1E69D7858];
    }

    (*(v14 + 104))(v21, *v35, v13, v31);
  }

  else
  {
    v36 = a2;
    v34 = v10;
    *v21 = a1;
    *(v21 + 1) = v36;
    (*(v14 + 104))(v21, *MEMORY[0x1E69D7870], v13, v31);
  }

  v64 = v25;
  v60 = *(v14 + 32);
  v60(v33, v21, v13);
  v37 = *(v14 + 56);
  v67 = v33;
  v38 = v37(v33, 0, 1, v13);
  v70 = v65;
  v66 = v14;
  if (v65 == 3)
  {
    v39 = v68;
    v40 = v68;
    v41 = 1;
  }

  else
  {
    v62(v38);
    v39 = v68;
    sub_1D725DE0C();
    v40 = v39;
    v41 = 0;
  }

  v37(v40, v41, 1, v13);
  v42 = *(v34 + 48);
  v43 = MEMORY[0x1E69D7880];
  v44 = MEMORY[0x1E69E6720];
  v45 = v67;
  v46 = v69;
  sub_1D68AE904(v67, v69, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v39, v46 + v42, &unk_1EDF3B690, v43, v44, sub_1D68A8C44);
  v47 = v66;
  v48 = *(v66 + 48);
  if (v48(v46, 1, v13) != 1)
  {
    v52 = v64;
    sub_1D68AE904(v46, v64, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v48(v46 + v42, 1, v13) != 1)
    {
      v54 = v61;
      v60(v61, (v46 + v42), v13);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v55 = v46;
      v51 = sub_1D7261FBC();
      v56 = *(v47 + 8);
      v56(v54, v13);
      v57 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v67, &unk_1EDF3B690, v57);
      v56(v52, v13);
      sub_1D68AF29C(v55, &unk_1EDF3B690, v57);
      return v51 & 1;
    }

    v53 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v50 = v69;
    sub_1D68AF29C(v67, &unk_1EDF3B690, v53);
    (*(v47 + 8))(v52, v13);
    goto LABEL_15;
  }

  v49 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v39, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v50 = v69;
  sub_1D68AF29C(v45, &unk_1EDF3B690, v49);
  if (v48(v50 + v42, 1, v13) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v50, sub_1D68ACC0C);
    v51 = 0;
    return v51 & 1;
  }

  sub_1D68AF29C(v50, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v51 = 1;
  return v51 & 1;
}

uint64_t sub_1D689C308(uint64_t a1, uint64_t a2, char a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v62 = a5;
  v63 = a6;
  v65 = a4;
  sub_1D68ACC0C();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725D38C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v59 - v20;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v68 = &v59 - v28;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v59 - v32;
  v61 = v17;
  if (a3)
  {
    v34 = v10;
    if (a3 == 1)
    {
      *v21 = a1 & 1;
      v35 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v21 = a1;
      v35 = MEMORY[0x1E69D7858];
    }

    (*(v14 + 104))(v21, *v35, v13, v31);
  }

  else
  {
    v36 = a2;
    v34 = v10;
    *v21 = a1;
    *(v21 + 1) = v36;
    (*(v14 + 104))(v21, *MEMORY[0x1E69D7870], v13, v31);
  }

  v64 = v25;
  v60 = *(v14 + 32);
  v60(v33, v21, v13);
  v37 = *(v14 + 56);
  v67 = v33;
  v38 = v37(v33, 0, 1, v13);
  v70 = v65;
  v66 = v14;
  if (v65 == 4)
  {
    v39 = v68;
    v40 = v68;
    v41 = 1;
  }

  else
  {
    v62(v38);
    v39 = v68;
    sub_1D725DE0C();
    v40 = v39;
    v41 = 0;
  }

  v37(v40, v41, 1, v13);
  v42 = *(v34 + 48);
  v43 = MEMORY[0x1E69D7880];
  v44 = MEMORY[0x1E69E6720];
  v45 = v67;
  v46 = v69;
  sub_1D68AE904(v67, v69, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v39, v46 + v42, &unk_1EDF3B690, v43, v44, sub_1D68A8C44);
  v47 = v66;
  v48 = *(v66 + 48);
  if (v48(v46, 1, v13) != 1)
  {
    v52 = v64;
    sub_1D68AE904(v46, v64, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v48(v46 + v42, 1, v13) != 1)
    {
      v54 = v61;
      v60(v61, (v46 + v42), v13);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v55 = v46;
      v51 = sub_1D7261FBC();
      v56 = *(v47 + 8);
      v56(v54, v13);
      v57 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v67, &unk_1EDF3B690, v57);
      v56(v52, v13);
      sub_1D68AF29C(v55, &unk_1EDF3B690, v57);
      return v51 & 1;
    }

    v53 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v50 = v69;
    sub_1D68AF29C(v67, &unk_1EDF3B690, v53);
    (*(v47 + 8))(v52, v13);
    goto LABEL_15;
  }

  v49 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v39, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v50 = v69;
  sub_1D68AF29C(v45, &unk_1EDF3B690, v49);
  if (v48(v50 + v42, 1, v13) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v50, sub_1D68ACC0C);
    v51 = 0;
    return v51 & 1;
  }

  sub_1D68AF29C(v50, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v51 = 1;
  return v51 & 1;
}

uint64_t sub_1D689C96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  type metadata accessor for FeedHeadline(0);
  sub_1D68AD6BC();
  sub_1D5B80300();

  sub_1D725D94C();
}

uint64_t sub_1D689CA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  type metadata accessor for FeedHeadlineAudioCommandContext();
  sub_1D68ADCBC();
  sub_1D5B82160();

  sub_1D725D94C();
}

uint64_t sub_1D689CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AE534();
  sub_1D5B8D474();

  sub_1D725D94C();
}

uint64_t sub_1D689CC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AE3D8();
  sub_1D5B90AC0();

  sub_1D725D94C();
}

uint64_t sub_1D689CD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AE2E8();
  sub_1D5B81000();

  sub_1D725D94C();
}

uint64_t sub_1D689CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AE144();
  sub_1D5B840B4();

  sub_1D725D94C();
}

uint64_t sub_1D689CF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  type metadata accessor for LiveActivityCommandContext();
  sub_1D68AF1FC();
  sub_1D5B662E0();

  sub_1D725D94C();
}

uint64_t sub_1D689D04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  type metadata accessor for FeedHeadline(0);
  sub_1D68AD6BC();
  sub_1D5B80300();

  sub_1D725D94C();
}

uint64_t sub_1D689D14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  type metadata accessor for FeedHeadlineAudioCommandContext();
  sub_1D68ADCBC();
  sub_1D5B82160();

  sub_1D725D94C();
}

uint64_t sub_1D689D24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, ValueMetadata *, void, void, void, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  a9(a5, a6, a8, v15, &type metadata for FeedPuzzle, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E69D8888], ObjectType, a2);
}

uint64_t sub_1D689D33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AE534();
  sub_1D5B8D474();

  sub_1D725D94C();
}

uint64_t sub_1D689D434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AE3D8();
  sub_1D5B90AC0();

  sub_1D725D94C();
}

uint64_t sub_1D689D52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AE2E8();
  sub_1D5B81000();

  sub_1D725D94C();
}

uint64_t sub_1D689D624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AE144();
  sub_1D5B840B4();

  sub_1D725D94C();
}

uint64_t sub_1D689D71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  type metadata accessor for LiveActivityCommandContext();
  sub_1D68AF1FC();
  sub_1D5B662E0();

  sub_1D725D94C();
}

uint64_t sub_1D689D81C(uint64_t a1, __int16 a2, void (*a3)(void *))
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v16 - v8);
  if ((a2 & 0x100) != 0)
  {
    v14 = sub_1D725D38C();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  else
  {
    if (a2)
    {
      v10 = 0;
    }

    else
    {
      v10 = a1;
    }

    *v9 = v10;
    v11 = *MEMORY[0x1E69D7868];
    v12 = sub_1D725D38C();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v9, v11, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
  }

  a3(v9);
  return sub_1D68AF29C(v9, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D689D9E8(uint64_t a1, unsigned __int8 a2, void (*a3)(void *))
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v15 - v8);
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v13 = sub_1D725D38C();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      goto LABEL_7;
    }

    *v9 = 0;
  }

  else
  {
    *v9 = a1;
  }

  v10 = *MEMORY[0x1E69D7868];
  v11 = sub_1D725D38C();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
LABEL_7:
  a3(v9);
  return sub_1D68AF29C(v9, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D689DBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9, void (*a10)(uint64_t))
{
  v59 = a6;
  v60 = a2;
  v61 = a5;
  v57 = a4;
  v62 = a3;
  sub_1D68ACC0C();
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D725D38C();
  v64 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v56 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v55 - v21;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v58 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v55 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v55 - v32;
  v67 = a7;
  swift_getObjectType();
  sub_1D5B5534C(0, &qword_1EDF3C770);
  a8();
  v59 = a9;
  sub_1D725D96C();
  if (v61)
  {
    if (v61 == 1)
    {
      *v22 = v62 & 1;
      v34 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v22 = v62;
      v34 = MEMORY[0x1E69D7858];
    }

    v36 = v64;
    (*(v64 + 104))(v22, *v34, v16);
  }

  else
  {
    v35 = v57;
    *v22 = v62;
    *(v22 + 1) = v35;
    v36 = v64;
    (*(v64 + 104))(v22, *MEMORY[0x1E69D7870], v16);
  }

  v37 = v63;
  v63 = *(v36 + 32);
  (v63)(v33, v22, v16);
  v38 = *(v36 + 56);
  v39 = v38(v33, 0, 1, v16);
  v65 = v66;
  if (v66 == 2)
  {
    v40 = v29;
    v41 = 1;
  }

  else
  {
    a10(v39);
    sub_1D725DE0C();
    v40 = v29;
    v41 = 0;
  }

  v38(v40, v41, 1, v16);
  v42 = v37[12];
  v43 = MEMORY[0x1E69D7880];
  v44 = MEMORY[0x1E69E6720];
  sub_1D68AE904(v33, v15, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v29, &v15[v42], &unk_1EDF3B690, v43, v44, sub_1D68A8C44);
  v45 = *(v64 + 48);
  if (v45(v15, 1, v16) != 1)
  {
    v48 = v58;
    sub_1D68AE904(v15, v58, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v45(&v15[v42], 1, v16) != 1)
    {
      v50 = v56;
      (v63)(v56, &v15[v42], v16);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v51 = v48;
      v47 = sub_1D7261FBC();
      v52 = *(v64 + 8);
      v52(v50, v16);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v29, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v33, &unk_1EDF3B690, v53);
      v52(v51, v16);
      sub_1D68AF29C(v15, &unk_1EDF3B690, v53);
      return v47 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v29, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    sub_1D68AF29C(v33, &unk_1EDF3B690, v49);
    (*(v64 + 8))(v48, v16);
    goto LABEL_15;
  }

  v46 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v29, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  sub_1D68AF29C(v33, &unk_1EDF3B690, v46);
  if (v45(&v15[v42], 1, v16) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v15, sub_1D68ACC0C);
    v47 = 0;
    return v47 & 1;
  }

  sub_1D68AF29C(v15, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = 1;
  return v47 & 1;
}

uint64_t sub_1D689E278(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  LODWORD(v60) = a5;
  v63 = a3;
  v59 = a2;
  sub_1D68ACC0C();
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725D38C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v58 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v57 - v20;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v64 = &v57 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v57 - v31;
  v68 = a7;
  v69 = a8;
  swift_getObjectType();
  sub_1D5B61274();
  sub_1D725D96C();
  if (v60)
  {
    if (v60 == 1)
    {
      *v21 = v63 & 1;
      v33 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v21 = v63;
      v33 = MEMORY[0x1E69D7858];
    }

    (*(v15 + 104))(v21, *v33, v14);
  }

  else
  {
    *v21 = v63;
    *(v21 + 1) = a4;
    (*(v15 + 104))(v21, *MEMORY[0x1E69D7870], v14);
  }

  v34 = v64;
  v59 = *(v15 + 32);
  v60 = v25;
  v59(v32, v21, v14);
  v35 = *(v15 + 56);
  v63 = v32;
  v35(v32, 0, 1, v14);
  v66 = v67;
  v62 = v15;
  if (v67 == 2)
  {
    v36 = v34;
    v37 = 1;
  }

  else
  {
    sub_1D68ACF0C();
    sub_1D725DE0C();
    v36 = v34;
    v37 = 0;
  }

  v35(v36, v37, 1, v14);
  v38 = v34;
  v39 = v14;
  v40 = *(v61 + 48);
  v41 = MEMORY[0x1E69D7880];
  v42 = MEMORY[0x1E69E6720];
  v43 = v63;
  v44 = v65;
  sub_1D68AE904(v63, v65, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v34, v44 + v40, &unk_1EDF3B690, v41, v42, sub_1D68A8C44);
  v45 = v62;
  v46 = *(v62 + 48);
  if (v46(v44, 1, v39) != 1)
  {
    v50 = v60;
    sub_1D68AE904(v44, v60, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v46(v44 + v40, 1, v39) != 1)
    {
      v52 = v58;
      v59(v58, (v44 + v40), v39);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v53 = v44;
      v49 = sub_1D7261FBC();
      v54 = *(v45 + 8);
      v54(v52, v39);
      v55 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v64, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v63, &unk_1EDF3B690, v55);
      v54(v50, v39);
      sub_1D68AF29C(v53, &unk_1EDF3B690, v55);
      return v49 & 1;
    }

    v51 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v64, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v48 = v65;
    sub_1D68AF29C(v63, &unk_1EDF3B690, v51);
    (*(v45 + 8))(v50, v39);
    goto LABEL_15;
  }

  v47 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v38, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v48 = v65;
  sub_1D68AF29C(v43, &unk_1EDF3B690, v47);
  if (v46(v48 + v40, 1, v39) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v48, sub_1D68ACC0C);
    v49 = 0;
    return v49 & 1;
  }

  sub_1D68AF29C(v48, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v49 = 1;
  return v49 & 1;
}

uint64_t sub_1D689E92C(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, void *a4, int a5)
{
  LODWORD(v59) = a5;
  v57 = a4;
  v58 = a2;
  v60 = a3;
  sub_1D68ACC0C();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725D38C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v55 - v15;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v63 = (&v55 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v64 = &v55 - v26;
  swift_getObjectType();
  type metadata accessor for FeedHeadline(0);
  sub_1D5B80300();
  sub_1D725D96C();
  v61 = v6;
  if (v59)
  {
    if (v59 == 1)
    {
      *v16 = v60 & 1;
      v27 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v16 = v60;
      v27 = MEMORY[0x1E69D7858];
    }

    v29 = v10[13];
    (v29)(v16, *v27, v9);
  }

  else
  {
    v28 = v57;
    *v16 = v60;
    *(v16 + 1) = v28;
    v29 = v10[13];
    (v29)(v16, *MEMORY[0x1E69D7870], v9);
  }

  v30 = v10;
  v31 = v64;
  v60 = v20;
  v32 = v30[4];
  v57 = v30 + 4;
  v58 = v32;
  v32(v64, v16, v9);
  v33 = v30[7];
  v34 = 1;
  v33(v31, 0, 1, v9);
  if ((v67 & 1) == 0)
  {
    v35 = v65;
    if (v66)
    {
      v35 = 0.0;
    }

    *v63 = v35;
    v29();
    v34 = 0;
  }

  v36 = v9;
  v37 = v63;
  v33(v63, v34, 1, v36);
  v38 = v62;
  v39 = *(v61 + 48);
  v40 = MEMORY[0x1E69D7880];
  v41 = MEMORY[0x1E69E6720];
  v42 = v64;
  sub_1D68AE904(v64, v62, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  v61 = v39;
  sub_1D68AE904(v37, v38 + v39, &unk_1EDF3B690, v40, v41, sub_1D68A8C44);
  v59 = v30;
  v43 = v30[6];
  if (v43(v38, 1, v36) != 1)
  {
    v47 = v60;
    sub_1D68AE904(v38, v60, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v48 = v61;
    if (v43(v38 + v61, 1, v36) != 1)
    {
      v50 = v56;
      v58(v56, v38 + v48, v36);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v51 = v38;
      v46 = sub_1D7261FBC();
      v52 = v59[1];
      v52(v50, v36);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v63, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v64, &unk_1EDF3B690, v53);
      v52(v47, v36);
      sub_1D68AF29C(v51, &unk_1EDF3B690, v53);
      return v46 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v63, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v45 = v62;
    sub_1D68AF29C(v64, &unk_1EDF3B690, v49);
    (v59[1])(v47, v36);
    goto LABEL_16;
  }

  v44 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v37, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = v62;
  sub_1D68AF29C(v42, &unk_1EDF3B690, v44);
  if (v43(v45 + v61, 1, v36) != 1)
  {
LABEL_16:
    sub_1D5D511FC(v45, sub_1D68ACC0C);
    v46 = 0;
    return v46 & 1;
  }

  sub_1D68AF29C(v45, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_1D689F00C(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v54[1] = a7;
  v55 = a2;
  LODWORD(v56) = a5;
  v59 = a3;
  sub_1D68ACC0C();
  v57 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v61 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725D38C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v54[0] = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v54 - v17;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v60 = v54 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v54 - v28;
  swift_getObjectType();
  type metadata accessor for FeedHeadlineAudioCommandContext();
  sub_1D5B82160();
  sub_1D725D96C();
  if (v56)
  {
    if (v56 == 1)
    {
      *v18 = v59 & 1;
      v30 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v18 = v59;
      v30 = MEMORY[0x1E69D7858];
    }

    (*(v12 + 104))(v18, *v30, v11);
  }

  else
  {
    *v18 = v59;
    *(v18 + 1) = a4;
    (*(v12 + 104))(v18, *MEMORY[0x1E69D7870], v11);
  }

  v31 = v60;
  v55 = *(v12 + 32);
  v56 = v22;
  v55(v29, v18, v11);
  v32 = *(v12 + 56);
  v59 = v29;
  v32(v29, 0, 1, v11);
  v62 = v63;
  v58 = v12;
  if (v63 == 4)
  {
    v33 = v31;
    v34 = 1;
  }

  else
  {
    sub_1D68ADC30();
    sub_1D725DE0C();
    v33 = v31;
    v34 = 0;
  }

  v32(v33, v34, 1, v11);
  v35 = v31;
  v36 = v11;
  v37 = *(v57 + 48);
  v38 = MEMORY[0x1E69D7880];
  v39 = MEMORY[0x1E69E6720];
  v40 = v59;
  v41 = v61;
  sub_1D68AE904(v59, v61, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v31, v41 + v37, &unk_1EDF3B690, v38, v39, sub_1D68A8C44);
  v42 = v58;
  v43 = *(v58 + 48);
  if (v43(v41, 1, v36) != 1)
  {
    v47 = v56;
    sub_1D68AE904(v41, v56, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v43(v41 + v37, 1, v36) != 1)
    {
      v49 = v54[0];
      v55(v54[0], (v41 + v37), v36);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v50 = v41;
      v46 = sub_1D7261FBC();
      v51 = *(v42 + 8);
      v51(v49, v36);
      v52 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v60, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v59, &unk_1EDF3B690, v52);
      v51(v47, v36);
      sub_1D68AF29C(v50, &unk_1EDF3B690, v52);
      return v46 & 1;
    }

    v48 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v60, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v45 = v61;
    sub_1D68AF29C(v59, &unk_1EDF3B690, v48);
    (*(v42 + 8))(v47, v36);
    goto LABEL_15;
  }

  v44 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v35, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = v61;
  sub_1D68AF29C(v40, &unk_1EDF3B690, v44);
  if (v43(v45 + v37, 1, v36) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v45, sub_1D68ACC0C);
    v46 = 0;
    return v46 & 1;
  }

  sub_1D68AF29C(v45, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_1D689F6B8(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v62) = a5;
  v58 = a4;
  v63 = a3;
  v60 = a2;
  sub_1D68ACC0C();
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725D38C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v57 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v56 - v20;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v64 = &v56 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v56 - v31;
  v67 = a7;
  v68 = a8;
  v69 = a9;
  swift_getObjectType();
  sub_1D725D96C();
  v59 = v25;
  if (v62)
  {
    if (v62 == 1)
    {
      *v21 = v63 & 1;
      v33 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v21 = v63;
      v33 = MEMORY[0x1E69D7858];
    }

    (*(v15 + 104))(v21, *v33, v14);
  }

  else
  {
    v34 = v58;
    *v21 = v63;
    *(v21 + 1) = v34;
    (*(v15 + 104))(v21, *MEMORY[0x1E69D7870], v14);
  }

  v35 = v64;
  v60 = *(v15 + 32);
  v60(v32, v21, v14);
  v62 = v15;
  v63 = v32;
  v36 = *(v15 + 56);
  v37 = 1;
  v36(v32, 0, 1, v14);
  if (v66 != 2)
  {
    sub_1D726284C();
    v37 = 0;
  }

  v36(v35, v37, 1, v14);
  v38 = *(v61 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v35;
  v42 = v63;
  v43 = v65;
  sub_1D68AE904(v63, v65, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v35, v43 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v44 = v62;
  v45 = *(v62 + 48);
  if (v45(v43, 1, v14) != 1)
  {
    v49 = v59;
    sub_1D68AE904(v43, v59, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v45(v43 + v38, 1, v14) != 1)
    {
      v51 = v57;
      v60(v57, (v43 + v38), v14);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v52 = v43;
      v48 = sub_1D7261FBC();
      v53 = *(v44 + 8);
      v53(v51, v14);
      v54 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v64, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v63, &unk_1EDF3B690, v54);
      v53(v49, v14);
      sub_1D68AF29C(v52, &unk_1EDF3B690, v54);
      return v48 & 1;
    }

    v50 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v64, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v47 = v65;
    sub_1D68AF29C(v63, &unk_1EDF3B690, v50);
    (*(v44 + 8))(v49, v14);
    goto LABEL_14;
  }

  v46 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v41, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = v65;
  sub_1D68AF29C(v42, &unk_1EDF3B690, v46);
  if (v45(v47 + v38, 1, v14) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v47, sub_1D68ACC0C);
    v48 = 0;
    return v48 & 1;
  }

  sub_1D68AF29C(v47, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v48 = 1;
  return v48 & 1;
}

uint64_t sub_1D689FD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  v57 = a5;
  v55 = a4;
  v58 = a3;
  sub_1D68ACC0C();
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725D38C();
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v54 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v54 - v19;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v56 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v54 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v54 - v30;
  v63 = a7;
  v64 = a8;
  swift_getObjectType();
  sub_1D68AFCB0(0, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
  sub_1D5B66B90();
  sub_1D725D96C();
  if (v57)
  {
    if (v57 == 1)
    {
      *v20 = v58 & 1;
      v32 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v20 = v58;
      v32 = MEMORY[0x1E69D7858];
    }

    v34 = v60;
    (*(v60 + 104))(v20, *v32, v14);
  }

  else
  {
    v33 = v55;
    *v20 = v58;
    *(v20 + 1) = v33;
    v34 = v60;
    (*(v60 + 104))(v20, *MEMORY[0x1E69D7870], v14);
  }

  v35 = v59;
  v59 = *(v34 + 32);
  (v59)(v31, v20, v14);
  v36 = *(v34 + 56);
  v36(v31, 0, 1, v14);
  v61 = v62;
  if (v62 == 2)
  {
    v37 = v27;
    v38 = 1;
  }

  else
  {
    sub_1D68AF9C0();
    sub_1D725DE0C();
    v37 = v27;
    v38 = 0;
  }

  v36(v37, v38, 1, v14);
  v39 = v35[12];
  v40 = MEMORY[0x1E69D7880];
  v41 = MEMORY[0x1E69E6720];
  sub_1D68AE904(v31, v13, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v27, &v13[v39], &unk_1EDF3B690, v40, v41, sub_1D68A8C44);
  v42 = v60;
  v43 = *(v60 + 48);
  if (v43(v13, 1, v14) != 1)
  {
    v46 = v56;
    sub_1D68AE904(v13, v56, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v43(&v13[v39], 1, v14) != 1)
    {
      v49 = v54;
      (v59)(v54, &v13[v39], v14);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v50 = v46;
      v45 = sub_1D7261FBC();
      v51 = *(v42 + 8);
      v51(v49, v14);
      v52 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v31, &unk_1EDF3B690, v52);
      v51(v50, v14);
      sub_1D68AF29C(v13, &unk_1EDF3B690, v52);
      return v45 & 1;
    }

    v47 = v42;
    v48 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    sub_1D68AF29C(v31, &unk_1EDF3B690, v48);
    (*(v47 + 8))(v46, v14);
    goto LABEL_15;
  }

  v44 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  sub_1D68AF29C(v31, &unk_1EDF3B690, v44);
  if (v43(&v13[v39], 1, v14) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v13, sub_1D68ACC0C);
    v45 = 0;
    return v45 & 1;
  }

  sub_1D68AF29C(v13, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1D68A0424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v54) = a5;
  v52 = a4;
  v55 = a3;
  sub_1D68ACC0C();
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725D38C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v51 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v51 - v14;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v51 - v26;
  swift_getObjectType();
  sub_1D725D96C();
  v53 = v19;
  if (v54)
  {
    if (v54 == 1)
    {
      *v15 = v55 & 1;
      v28 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v15 = v55;
      v28 = MEMORY[0x1E69D7858];
    }

    (*(v9 + 104))(v15, *v28, v8);
  }

  else
  {
    v29 = v52;
    *v15 = v55;
    *(v15 + 1) = v29;
    (*(v9 + 104))(v15, *MEMORY[0x1E69D7870], v8);
  }

  v30 = v56;
  v54 = *(v9 + 32);
  v54(v27, v15, v8);
  v55 = v9;
  v56 = v27;
  v31 = *(v9 + 56);
  v32 = 1;
  v31(v27, 0, 1, v8);
  if (v58 != 2)
  {
    sub_1D726284C();
    v32 = 0;
  }

  v31(v23, v32, 1, v8);
  v33 = *(v30 + 48);
  v34 = MEMORY[0x1E69D7880];
  v35 = MEMORY[0x1E69E6720];
  v36 = v8;
  v38 = v56;
  v37 = v57;
  sub_1D68AE904(v56, v57, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v23, v37 + v33, &unk_1EDF3B690, v34, v35, sub_1D68A8C44);
  v39 = v55;
  v40 = *(v55 + 48);
  if (v40(v37, 1, v36) != 1)
  {
    v52 = v23;
    v44 = v53;
    sub_1D68AE904(v37, v53, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v40(v37 + v33, 1, v36) != 1)
    {
      v46 = v51;
      v54(v51, (v37 + v33), v36);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v47 = v37;
      v43 = sub_1D7261FBC();
      v48 = *(v39 + 8);
      v48(v46, v36);
      v49 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v52, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v56, &unk_1EDF3B690, v49);
      v48(v44, v36);
      sub_1D68AF29C(v47, &unk_1EDF3B690, v49);
      return v43 & 1;
    }

    v45 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v52, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v42 = v57;
    sub_1D68AF29C(v56, &unk_1EDF3B690, v45);
    (*(v39 + 8))(v44, v36);
    goto LABEL_14;
  }

  v41 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v23, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v42 = v57;
  sub_1D68AF29C(v38, &unk_1EDF3B690, v41);
  if (v40(v42 + v33, 1, v36) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v42, sub_1D68ACC0C);
    v43 = 0;
    return v43 & 1;
  }

  sub_1D68AF29C(v42, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v43 = 1;
  return v43 & 1;
}

uint64_t sub_1D68A0AA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), int a5)
{
  LODWORD(v58) = a5;
  v53 = a4;
  v59 = a3;
  sub_1D68ACC0C();
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v56 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725D38C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v51 - v15;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v54 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v57 = v51 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v51 - v25;
  swift_getObjectType();
  sub_1D5B8D474();
  sub_1D725D96C();
  v52 = v12;
  if (v58)
  {
    if (v58 == 1)
    {
      *v16 = v59 & 1;
      v27 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v16 = v59;
      v27 = MEMORY[0x1E69D7858];
    }

    v29 = v9[13];
    v29(v16, *v27, v8);
  }

  else
  {
    v28 = v53;
    *v16 = v59;
    *(v16 + 1) = v28;
    v29 = v9[13];
    v29(v16, *MEMORY[0x1E69D7870], v8);
  }

  v30 = v57;
  v53 = v9[4];
  v51[1] = v9 + 4;
  v53(v26, v16, v8);
  v31 = v9[7];
  v32 = 1;
  v58 = v26;
  v31(v26, 0, 1, v8);
  v59 = v61;
  if (v61)
  {
    v33 = v59;
    *v30 = v60;
    *(v30 + 1) = v33;
    v29(v30, *MEMORY[0x1E69D7870], v8);
    v32 = 0;
  }

  v34 = v9;
  v31(v30, v32, 1, v8);
  v35 = v56;
  v36 = *(v55 + 48);
  v37 = MEMORY[0x1E69D7880];
  v38 = MEMORY[0x1E69E6720];
  v39 = v8;
  v40 = v58;
  sub_1D68AE904(v58, v56, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  v55 = v36;
  sub_1D68AE904(v30, v35 + v36, &unk_1EDF3B690, v37, v38, sub_1D68A8C44);
  v41 = v9[6];
  if (v41(v35, 1, v39) != 1)
  {
    v44 = v54;
    sub_1D68AE904(v35, v54, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v45 = v55;
    if (v41(v35 + v55, 1, v39) != 1)
    {
      v47 = v52;
      v53(v52, v35 + v45, v39);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);

      v43 = sub_1D7261FBC();
      v48 = v34[1];
      v48(v47, v39);
      v49 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v57, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v58, &unk_1EDF3B690, v49);

      v48(v44, v39);
      sub_1D68AF29C(v35, &unk_1EDF3B690, v49);
      return v43 & 1;
    }

    v46 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v57, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    sub_1D68AF29C(v58, &unk_1EDF3B690, v46);

    (v34[1])(v44, v39);
    goto LABEL_14;
  }

  v42 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v30, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  sub_1D68AF29C(v40, &unk_1EDF3B690, v42);

  if (v41(v35 + v55, 1, v39) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v35, sub_1D68ACC0C);
    v43 = 0;
    return v43 & 1;
  }

  sub_1D68AF29C(v35, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v43 = 1;
  return v43 & 1;
}

uint64_t sub_1D68A118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v58) = a5;
  v56 = a4;
  v57 = a2;
  v59 = a3;
  sub_1D68ACC0C();
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725D38C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v55 - v15;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v55 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v62 = &v55 - v27;
  swift_getObjectType();
  sub_1D5B90AC0();
  sub_1D725D96C();
  v55 = v12;
  if (v58)
  {
    if (v58 == 1)
    {
      *v16 = v59 & 1;
      v28 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v16 = v59;
      v28 = MEMORY[0x1E69D7858];
    }

    v30 = *(v9 + 104);
    v30(v16, *v28, v8);
  }

  else
  {
    v29 = v56;
    *v16 = v59;
    *(v16 + 1) = v29;
    v30 = *(v9 + 104);
    v30(v16, *MEMORY[0x1E69D7870], v8);
  }

  v31 = v62;
  v58 = *(v9 + 32);
  v59 = v20;
  v57 = v9 + 32;
  v58(v62, v16, v8);
  v32 = *(v9 + 56);
  v33 = v31;
  v34 = 1;
  v32(v33, 0, 1, v8);
  if ((v64 & 1) == 0)
  {
    *v24 = v63;
    v30(v24, *MEMORY[0x1E69D7858], v8);
    v34 = 0;
  }

  v32(v24, v34, 1, v8);
  v35 = v61;
  v36 = *(v60 + 48);
  v37 = MEMORY[0x1E69D7880];
  v38 = MEMORY[0x1E69E6720];
  v39 = v8;
  v40 = v62;
  sub_1D68AE904(v62, v61, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  v60 = v36;
  sub_1D68AE904(v24, v35 + v36, &unk_1EDF3B690, v37, v38, sub_1D68A8C44);
  v41 = *(v9 + 48);
  if (v41(v35, 1, v39) != 1)
  {
    v45 = v59;
    sub_1D68AE904(v35, v59, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v46 = v60;
    if (v41(v35 + v60, 1, v39) != 1)
    {
      v48 = (v35 + v46);
      v49 = v55;
      v58(v55, v48, v39);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v50 = v9;
      v51 = v35;
      v44 = sub_1D7261FBC();
      v52 = *(v50 + 8);
      v52(v49, v39);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v24, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v62, &unk_1EDF3B690, v53);
      v52(v45, v39);
      sub_1D68AF29C(v51, &unk_1EDF3B690, v53);
      return v44 & 1;
    }

    v47 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v24, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v43 = v61;
    sub_1D68AF29C(v62, &unk_1EDF3B690, v47);
    (*(v9 + 8))(v45, v39);
    goto LABEL_14;
  }

  v42 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v24, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v43 = v61;
  sub_1D68AF29C(v40, &unk_1EDF3B690, v42);
  if (v41(v43 + v60, 1, v39) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v43, sub_1D68ACC0C);
    v44 = 0;
    return v44 & 1;
  }

  sub_1D68AF29C(v43, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v44 = 1;
  return v44 & 1;
}

uint64_t sub_1D68A1838(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v55) = a5;
  v58 = a3;
  v54 = a2;
  sub_1D68ACC0C();
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725D38C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v53 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v52 - v15;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v59 = &v52 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v52 - v26;
  swift_getObjectType();
  sub_1D5B81000();
  sub_1D725D96C();
  if (v55)
  {
    if (v55 == 1)
    {
      *v16 = v58 & 1;
      v28 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v16 = v58;
      v28 = MEMORY[0x1E69D7858];
    }

    (*(v10 + 104))(v16, *v28, v9);
  }

  else
  {
    *v16 = v58;
    *(v16 + 1) = a4;
    (*(v10 + 104))(v16, *MEMORY[0x1E69D7870], v9);
  }

  v29 = v59;
  v54 = *(v10 + 32);
  v55 = v20;
  v54(v27, v16, v9);
  v30 = *(v10 + 56);
  v58 = v27;
  v30(v27, 0, 1, v9);
  v61 = v62;
  v57 = v10;
  if (v62 == 3)
  {
    v31 = v29;
    v32 = 1;
  }

  else
  {
    sub_1D68AE25C();
    sub_1D725DE0C();
    v31 = v29;
    v32 = 0;
  }

  v30(v31, v32, 1, v9);
  v33 = v29;
  v34 = v9;
  v35 = *(v56 + 48);
  v36 = MEMORY[0x1E69D7880];
  v37 = MEMORY[0x1E69E6720];
  v38 = v58;
  v39 = v60;
  sub_1D68AE904(v58, v60, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v29, v39 + v35, &unk_1EDF3B690, v36, v37, sub_1D68A8C44);
  v40 = v57;
  v41 = *(v57 + 48);
  if (v41(v39, 1, v34) != 1)
  {
    v45 = v55;
    sub_1D68AE904(v39, v55, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v41(v39 + v35, 1, v34) != 1)
    {
      v47 = v53;
      v54(v53, (v39 + v35), v34);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v48 = v39;
      v44 = sub_1D7261FBC();
      v49 = *(v40 + 8);
      v49(v47, v34);
      v50 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v59, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v58, &unk_1EDF3B690, v50);
      v49(v45, v34);
      sub_1D68AF29C(v48, &unk_1EDF3B690, v50);
      return v44 & 1;
    }

    v46 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v59, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v43 = v60;
    sub_1D68AF29C(v58, &unk_1EDF3B690, v46);
    (*(v40 + 8))(v45, v34);
    goto LABEL_15;
  }

  v42 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v33, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v43 = v60;
  sub_1D68AF29C(v38, &unk_1EDF3B690, v42);
  if (v41(v43 + v35, 1, v34) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v43, sub_1D68ACC0C);
    v44 = 0;
    return v44 & 1;
  }

  sub_1D68AF29C(v43, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v44 = 1;
  return v44 & 1;
}

uint64_t sub_1D68A1EE0(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v59) = a5;
  v62 = a3;
  v58 = a2;
  sub_1D68ACC0C();
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725D38C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v55 - v16;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v61 = &v55 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v64 = &v55 - v27;
  swift_getObjectType();
  sub_1D5B840B4();
  sub_1D725D96C();
  v56 = v13;
  if (v59)
  {
    if (v59 == 1)
    {
      *v17 = v62 & 1;
      v28 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v17 = v62;
      v28 = MEMORY[0x1E69D7858];
    }

    v29 = *(v10 + 104);
    v29(v17, *v28, v9);
  }

  else
  {
    *v17 = v62;
    *(v17 + 1) = a4;
    v29 = *(v10 + 104);
    v29(v17, *MEMORY[0x1E69D7870], v9);
  }

  v30 = v10;
  v31 = v64;
  v58 = *(v30 + 32);
  v59 = v30 + 32;
  v58(v64, v17, v9);
  v62 = v30;
  v32 = *(v30 + 56);
  v33 = 1;
  v32(v31, 0, 1, v9);
  v57 = v21;
  if (v66 > 1u)
  {
    v34 = v61;
    v35 = v62;
    if (v66 != 2)
    {
      goto LABEL_12;
    }

    *v61 = 0;
  }

  else
  {
    v34 = v61;
    v35 = v62;
    *v61 = v65;
  }

  v29(v34, *MEMORY[0x1E69D7868], v9);
  v33 = 0;
LABEL_12:
  v32(v34, v33, 1, v9);
  v36 = *(v60 + 48);
  v37 = MEMORY[0x1E69D7880];
  v38 = MEMORY[0x1E69E6720];
  v39 = v9;
  v40 = v63;
  v41 = v64;
  sub_1D68AE904(v64, v63, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v34, v40 + v36, &unk_1EDF3B690, v37, v38, sub_1D68A8C44);
  v42 = *(v35 + 48);
  if (v42(v40, 1, v39) != 1)
  {
    v46 = v57;
    sub_1D68AE904(v40, v57, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v47 = v39;
    if (v42(v40 + v36, 1, v39) != 1)
    {
      v49 = v56;
      v58(v56, (v40 + v36), v39);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v50 = v46;
      v51 = v40;
      v45 = sub_1D7261FBC();
      v52 = *(v62 + 8);
      v52(v49, v47);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v61, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v64, &unk_1EDF3B690, v53);
      v52(v50, v47);
      sub_1D68AF29C(v51, &unk_1EDF3B690, v53);
      return v45 & 1;
    }

    v48 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v61, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v44 = v63;
    sub_1D68AF29C(v64, &unk_1EDF3B690, v48);
    (*(v62 + 8))(v46, v39);
    goto LABEL_17;
  }

  v43 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v34, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v44 = v63;
  sub_1D68AF29C(v41, &unk_1EDF3B690, v43);
  if (v42(v44 + v36, 1, v39) != 1)
  {
LABEL_17:
    sub_1D5D511FC(v44, sub_1D68ACC0C);
    v45 = 0;
    return v45 & 1;
  }

  sub_1D68AF29C(v44, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1D68A25AC(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v54[1] = a7;
  v55 = a2;
  LODWORD(v56) = a5;
  v59 = a3;
  sub_1D68ACC0C();
  v57 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v61 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725D38C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v54[0] = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v54 - v17;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v60 = v54 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v54 - v28;
  swift_getObjectType();
  type metadata accessor for LiveActivityCommandContext();
  sub_1D5B662E0();
  sub_1D725D96C();
  if (v56)
  {
    if (v56 == 1)
    {
      *v18 = v59 & 1;
      v30 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v18 = v59;
      v30 = MEMORY[0x1E69D7858];
    }

    (*(v12 + 104))(v18, *v30, v11);
  }

  else
  {
    *v18 = v59;
    *(v18 + 1) = a4;
    (*(v12 + 104))(v18, *MEMORY[0x1E69D7870], v11);
  }

  v31 = v60;
  v55 = *(v12 + 32);
  v56 = v22;
  v55(v29, v18, v11);
  v32 = *(v12 + 56);
  v59 = v29;
  v32(v29, 0, 1, v11);
  v62 = v63;
  v58 = v12;
  if (v63 == 3)
  {
    v33 = v31;
    v34 = 1;
  }

  else
  {
    sub_1D68AF170();
    sub_1D725DE0C();
    v33 = v31;
    v34 = 0;
  }

  v32(v33, v34, 1, v11);
  v35 = v31;
  v36 = v11;
  v37 = *(v57 + 48);
  v38 = MEMORY[0x1E69D7880];
  v39 = MEMORY[0x1E69E6720];
  v40 = v59;
  v41 = v61;
  sub_1D68AE904(v59, v61, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v31, v41 + v37, &unk_1EDF3B690, v38, v39, sub_1D68A8C44);
  v42 = v58;
  v43 = *(v58 + 48);
  if (v43(v41, 1, v36) != 1)
  {
    v47 = v56;
    sub_1D68AE904(v41, v56, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v43(v41 + v37, 1, v36) != 1)
    {
      v49 = v54[0];
      v55(v54[0], (v41 + v37), v36);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v50 = v41;
      v46 = sub_1D7261FBC();
      v51 = *(v42 + 8);
      v51(v49, v36);
      v52 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v60, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v59, &unk_1EDF3B690, v52);
      v51(v47, v36);
      sub_1D68AF29C(v50, &unk_1EDF3B690, v52);
      return v46 & 1;
    }

    v48 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v60, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v45 = v61;
    sub_1D68AF29C(v59, &unk_1EDF3B690, v48);
    (*(v42 + 8))(v47, v36);
    goto LABEL_15;
  }

  v44 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v35, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = v61;
  sub_1D68AF29C(v40, &unk_1EDF3B690, v44);
  if (v43(v45 + v37, 1, v36) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v45, sub_1D68ACC0C);
    v46 = 0;
    return v46 & 1;
  }

  sub_1D68AF29C(v45, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_1D68A2C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, char a7)
{
  LODWORD(v58) = a5;
  v61 = a3;
  sub_1D68ACC0C();
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v57 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v62 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v55 - v29;
  v66 = a7 & 1;
  swift_getObjectType();
  sub_1D5B84108();
  sub_1D725D96C();
  if (v58)
  {
    if (v58 == 1)
    {
      *v19 = v61 & 1;
      v31 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = v61;
      v31 = MEMORY[0x1E69D7858];
    }

    (*(v13 + 104))(v19, *v31, v12);
  }

  else
  {
    *v19 = v61;
    *(v19 + 1) = a4;
    (*(v13 + 104))(v19, *MEMORY[0x1E69D7870], v12);
  }

  v32 = v62;
  v58 = v23;
  v56 = *(v13 + 32);
  v56(v30, v19, v12);
  v33 = *(v13 + 56);
  v61 = v30;
  v33(v30, 0, 1, v12);
  v64 = v65;
  v60 = v13;
  if (v65 == 2)
  {
    v34 = v32;
    v35 = 1;
  }

  else
  {
    sub_1D68AF620();
    sub_1D725DE0C();
    v34 = v32;
    v35 = 0;
  }

  v33(v34, v35, 1, v12);
  v36 = v32;
  v37 = v12;
  v38 = *(v59 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v61;
  v42 = v63;
  sub_1D68AE904(v61, v63, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v32, v42 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v43 = v60;
  v44 = *(v60 + 48);
  if (v44(v42, 1, v37) != 1)
  {
    v48 = v58;
    sub_1D68AE904(v42, v58, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v44(v42 + v38, 1, v37) != 1)
    {
      v50 = v57;
      v56(v57, (v42 + v38), v37);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v51 = v42;
      v47 = sub_1D7261FBC();
      v52 = *(v43 + 8);
      v52(v50, v37);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v62, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v61, &unk_1EDF3B690, v53);
      v52(v48, v37);
      sub_1D68AF29C(v51, &unk_1EDF3B690, v53);
      return v47 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v62, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v46 = v63;
    sub_1D68AF29C(v61, &unk_1EDF3B690, v49);
    (*(v43 + 8))(v48, v37);
    goto LABEL_15;
  }

  v45 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v36, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = v63;
  sub_1D68AF29C(v41, &unk_1EDF3B690, v45);
  if (v44(v46 + v38, 1, v37) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v46, sub_1D68ACC0C);
    v47 = 0;
    return v47 & 1;
  }

  sub_1D68AF29C(v46, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = 1;
  return v47 & 1;
}

uint64_t sub_1D68A3310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, char a7)
{
  LODWORD(v58) = a5;
  v61 = a3;
  sub_1D68ACC0C();
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v57 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v62 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v55 - v29;
  v66 = a7 & 1;
  swift_getObjectType();
  sub_1D5B8D5CC();
  sub_1D725D96C();
  if (v58)
  {
    if (v58 == 1)
    {
      *v19 = v61 & 1;
      v31 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = v61;
      v31 = MEMORY[0x1E69D7858];
    }

    (*(v13 + 104))(v19, *v31, v12);
  }

  else
  {
    *v19 = v61;
    *(v19 + 1) = a4;
    (*(v13 + 104))(v19, *MEMORY[0x1E69D7870], v12);
  }

  v32 = v62;
  v58 = v23;
  v56 = *(v13 + 32);
  v56(v30, v19, v12);
  v33 = *(v13 + 56);
  v61 = v30;
  v33(v30, 0, 1, v12);
  v64 = v65;
  v60 = v13;
  if (v65 == 4)
  {
    v34 = v32;
    v35 = 1;
  }

  else
  {
    sub_1D68AF4A4();
    sub_1D725DE0C();
    v34 = v32;
    v35 = 0;
  }

  v33(v34, v35, 1, v12);
  v36 = v32;
  v37 = v12;
  v38 = *(v59 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v61;
  v42 = v63;
  sub_1D68AE904(v61, v63, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v32, v42 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v43 = v60;
  v44 = *(v60 + 48);
  if (v44(v42, 1, v37) != 1)
  {
    v48 = v58;
    sub_1D68AE904(v42, v58, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v44(v42 + v38, 1, v37) != 1)
    {
      v50 = v57;
      v56(v57, (v42 + v38), v37);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v51 = v42;
      v47 = sub_1D7261FBC();
      v52 = *(v43 + 8);
      v52(v50, v37);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v62, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v61, &unk_1EDF3B690, v53);
      v52(v48, v37);
      sub_1D68AF29C(v51, &unk_1EDF3B690, v53);
      return v47 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v62, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v46 = v63;
    sub_1D68AF29C(v61, &unk_1EDF3B690, v49);
    (*(v43 + 8))(v48, v37);
    goto LABEL_15;
  }

  v45 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v36, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = v63;
  sub_1D68AF29C(v41, &unk_1EDF3B690, v45);
  if (v44(v46 + v38, 1, v37) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v46, sub_1D68ACC0C);
    v47 = 0;
    return v47 & 1;
  }

  sub_1D68AF29C(v46, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = 1;
  return v47 & 1;
}

uint64_t sub_1D68A39C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, char a7)
{
  LODWORD(v58) = a5;
  v61 = a3;
  sub_1D68ACC0C();
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v57 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v62 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v55 - v29;
  v66 = a7 & 1;
  swift_getObjectType();
  sub_1D5B8131C();
  sub_1D725D96C();
  if (v58)
  {
    if (v58 == 1)
    {
      *v19 = v61 & 1;
      v31 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = v61;
      v31 = MEMORY[0x1E69D7858];
    }

    (*(v13 + 104))(v19, *v31, v12);
  }

  else
  {
    *v19 = v61;
    *(v19 + 1) = a4;
    (*(v13 + 104))(v19, *MEMORY[0x1E69D7870], v12);
  }

  v32 = v62;
  v58 = v23;
  v56 = *(v13 + 32);
  v56(v30, v19, v12);
  v33 = *(v13 + 56);
  v61 = v30;
  v33(v30, 0, 1, v12);
  v64 = v65;
  v60 = v13;
  if (v65 == 3)
  {
    v34 = v32;
    v35 = 1;
  }

  else
  {
    sub_1D68AF384();
    sub_1D725DE0C();
    v34 = v32;
    v35 = 0;
  }

  v33(v34, v35, 1, v12);
  v36 = v32;
  v37 = v12;
  v38 = *(v59 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v61;
  v42 = v63;
  sub_1D68AE904(v61, v63, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v32, v42 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v43 = v60;
  v44 = *(v60 + 48);
  if (v44(v42, 1, v37) != 1)
  {
    v48 = v58;
    sub_1D68AE904(v42, v58, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v44(v42 + v38, 1, v37) != 1)
    {
      v50 = v57;
      v56(v57, (v42 + v38), v37);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v51 = v42;
      v47 = sub_1D7261FBC();
      v52 = *(v43 + 8);
      v52(v50, v37);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v62, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v61, &unk_1EDF3B690, v53);
      v52(v48, v37);
      sub_1D68AF29C(v51, &unk_1EDF3B690, v53);
      return v47 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v62, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v46 = v63;
    sub_1D68AF29C(v61, &unk_1EDF3B690, v49);
    (*(v43 + 8))(v48, v37);
    goto LABEL_15;
  }

  v45 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v36, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = v63;
  sub_1D68AF29C(v41, &unk_1EDF3B690, v45);
  if (v44(v46 + v38, 1, v37) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v46, sub_1D68ACC0C);
    v47 = 0;
    return v47 & 1;
  }

  sub_1D68AF29C(v46, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = 1;
  return v47 & 1;
}

uint64_t sub_1D68A4080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v57) = a5;
  v60 = a3;
  sub_1D68ACC0C();
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v62 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v56 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v61 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v55 - v29;
  v65 = a7;
  swift_getObjectType();
  sub_1D68AFD00();
  sub_1D725D96C();
  if (v57)
  {
    if (v57 == 1)
    {
      *v19 = v60 & 1;
      v31 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = v60;
      v31 = MEMORY[0x1E69D7858];
    }

    (*(v13 + 104))(v19, *v31, v12);
  }

  else
  {
    *v19 = v60;
    *(v19 + 1) = a4;
    (*(v13 + 104))(v19, *MEMORY[0x1E69D7870], v12);
  }

  v32 = v61;
  v57 = v23;
  v55 = *(v13 + 32);
  v55(v30, v19, v12);
  v33 = *(v13 + 56);
  v60 = v30;
  v33(v30, 0, 1, v12);
  v63 = v64;
  v59 = v13;
  if (v64 == 2)
  {
    v34 = v32;
    v35 = 1;
  }

  else
  {
    sub_1D68AFD54();
    sub_1D725DE0C();
    v34 = v32;
    v35 = 0;
  }

  v33(v34, v35, 1, v12);
  v36 = v32;
  v37 = v12;
  v38 = *(v58 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v60;
  v42 = v62;
  sub_1D68AE904(v60, v62, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v32, v42 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v43 = v59;
  v44 = *(v59 + 48);
  if (v44(v42, 1, v37) != 1)
  {
    v48 = v57;
    sub_1D68AE904(v42, v57, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v44(v42 + v38, 1, v37) != 1)
    {
      v50 = v56;
      v55(v56, (v42 + v38), v37);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880]);
      v51 = v42;
      v47 = sub_1D7261FBC();
      v52 = *(v43 + 8);
      v52(v50, v37);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v61, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v60, &unk_1EDF3B690, v53);
      v52(v48, v37);
      sub_1D68AF29C(v51, &unk_1EDF3B690, v53);
      return v47 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v61, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v46 = v62;
    sub_1D68AF29C(v60, &unk_1EDF3B690, v49);
    (*(v43 + 8))(v48, v37);
    goto LABEL_15;
  }

  v45 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v36, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = v62;
  sub_1D68AF29C(v41, &unk_1EDF3B690, v45);
  if (v44(v46 + v38, 1, v37) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v46, sub_1D68ACC0C);
    v47 = 0;
    return v47 & 1;
  }

  sub_1D68AF29C(v46, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = 1;
  return v47 & 1;
}

uint64_t sub_1D68A4730@<X0>(void (*a1)(void)@<X4>, void (*a2)(uint64_t)@<X6>, uint64_t a3@<X8>)
{
  swift_getObjectType();
  sub_1D5B5534C(0, &qword_1EDF3C770);
  a1();
  v6 = sub_1D725D96C();
  if (v10 == 2)
  {
    v7 = sub_1D725D38C();
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }

  else
  {
    a2(v6);
    sub_1D725DE0C();
    v9 = sub_1D725D38C();
    return (*(*(v9 - 8) + 56))(a3, 0, 1, v9);
  }
}

uint64_t sub_1D68A4888@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D5B61274();
  sub_1D725D96C();
  if (v5 == 2)
  {
    v2 = sub_1D725D38C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    sub_1D68ACF0C();
    sub_1D725DE0C();
    v4 = sub_1D725D38C();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_1D68A49B0@<X0>(double *a1@<X8>)
{
  swift_getObjectType();
  type metadata accessor for FeedHeadline(0);
  sub_1D5B80300();
  sub_1D725D96C();
  if (v10)
  {
    v2 = sub_1D725D38C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = v8;
    if (v9)
    {
      v4 = 0.0;
    }

    *a1 = v4;
    v5 = *MEMORY[0x1E69D7868];
    v6 = sub_1D725D38C();
    v7 = *(v6 - 8);
    (*(v7 + 104))(a1, v5, v6);
    return (*(v7 + 56))(a1, 0, 1, v6);
  }
}

uint64_t sub_1D68A4B28@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  type metadata accessor for FeedHeadlineAudioCommandContext();
  sub_1D5B82160();
  sub_1D725D96C();
  if (v5 == 4)
  {
    v2 = sub_1D725D38C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    sub_1D68ADC30();
    sub_1D725DE0C();
    v4 = sub_1D725D38C();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_1D68A4C5C@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D68AFCB0(0, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
  sub_1D5B66B90();
  sub_1D725D96C();
  if (v5 == 2)
  {
    v2 = sub_1D725D38C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    sub_1D68AF9C0();
    sub_1D725DE0C();
    v4 = sub_1D725D38C();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_1D68A4DB0@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D725D96C();
  if (v5 == 2)
  {
    v2 = 1;
  }

  else
  {
    sub_1D726284C();
    v2 = 0;
  }

  v3 = sub_1D725D38C();
  return (*(*(v3 - 8) + 56))(a1, v2, 1, v3);
}

uint64_t sub_1D68A4E94@<X0>(void *a1@<X8>)
{
  swift_getObjectType();
  sub_1D5B8D474();
  sub_1D725D96C();
  if (v8)
  {
    *a1 = v7;
    a1[1] = v8;
    v2 = *MEMORY[0x1E69D7870];
    v3 = sub_1D725D38C();
    v4 = *(v3 - 8);
    (*(v4 + 104))(a1, v2, v3);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v6 = sub_1D725D38C();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_1D68A4FEC@<X0>(void *a1@<X8>)
{
  swift_getObjectType();
  sub_1D5B90AC0();
  sub_1D725D96C();
  if (v8)
  {
    v2 = sub_1D725D38C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    *a1 = v7;
    v4 = *MEMORY[0x1E69D7858];
    v5 = sub_1D725D38C();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    return (*(v6 + 56))(a1, 0, 1, v5);
  }
}

uint64_t sub_1D68A515C@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D5B81000();
  sub_1D725D96C();
  if (v5 == 3)
  {
    v2 = sub_1D725D38C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    sub_1D68AE25C();
    sub_1D725DE0C();
    v4 = sub_1D725D38C();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_1D68A5280@<X0>(void *a1@<X8>)
{
  swift_getObjectType();
  sub_1D5B840B4();
  sub_1D725D96C();
  if (v8 <= 1u)
  {
    *a1 = v7;
LABEL_5:
    v2 = *MEMORY[0x1E69D7868];
    v3 = sub_1D725D38C();
    v4 = *(v3 - 8);
    (*(v4 + 104))(a1, v2, v3);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  if (v8 == 2)
  {
    *a1 = 0;
    goto LABEL_5;
  }

  v6 = sub_1D725D38C();
  return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
}

uint64_t sub_1D68A5404@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  type metadata accessor for LiveActivityCommandContext();
  sub_1D5B662E0();
  sub_1D725D96C();
  if (v5 == 3)
  {
    v2 = sub_1D725D38C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    sub_1D68AF170();
    sub_1D725DE0C();
    v4 = sub_1D725D38C();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_1D68A5538@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D5B84108();
  sub_1D725D96C();
  if (v5 == 2)
  {
    v2 = sub_1D725D38C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    sub_1D68AF620();
    sub_1D725DE0C();
    v4 = sub_1D725D38C();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_1D68A5664@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D5B8D5CC();
  sub_1D725D96C();
  if (v5 == 4)
  {
    v2 = sub_1D725D38C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    sub_1D68AF4A4();
    sub_1D725DE0C();
    v4 = sub_1D725D38C();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_1D68A5790@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D5B8131C();
  sub_1D725D96C();
  if (v5 == 3)
  {
    v2 = sub_1D725D38C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    sub_1D68AF384();
    sub_1D725DE0C();
    v4 = sub_1D725D38C();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_1D68A58BC@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D68AFD00();
  sub_1D725D96C();
  if (v5 == 2)
  {
    v2 = sub_1D725D38C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    sub_1D68AFD54();
    sub_1D725DE0C();
    v4 = sub_1D725D38C();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_1D68A59E0()
{
  sub_1D7263D4C();

  v0 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D5B5AE94();
  swift_unknownObjectRetain();
  v1 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D68A5AD0()
{
  sub_1D7263D4C();

  v0 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D68AFCB0(0, &qword_1EDF0D658, &type metadata for FollowingCommandContext, MEMORY[0x1E69E6720]);
  swift_unknownObjectRetain();
  v1 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D68A5BEC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v7 = MEMORY[0x1E69E6720];
  sub_1D68A8C44(0, a3, a4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1D7263D4C();

  v15 = 0x28646E616D6D6F43;
  v16 = 0xE800000000000000;
  v12 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v12);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D68AE904(a2, v11, a3, a4, v7, sub_1D68A8C44);
  v13 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v13);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return v15;
}

uint64_t sub_1D68A5D64(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  v3 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D68ACBB0(a2);
  sub_1D68AFCB0(0, qword_1EDF2A2F8, &type metadata for LikingCommandContext, MEMORY[0x1E69E6720]);
  v4 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D68A5E90(uint64_t a1, void *a2, char a3)
{
  sub_1D7263D4C();

  v5 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D68AF8C4(a2, a3);
  sub_1D68AF944();
  v6 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D68A5F88(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v8 = 0x28646E616D6D6F43;
  v9 = 0xE800000000000000;
  v3 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  v4 = MEMORY[0x1E69E6720];
  sub_1D68AE904(a2, v7, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D68AFCB0);
  sub_1D68AFCB0(0, &qword_1EDF12E30, &type metadata for FeedPuzzle, v4);
  v5 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return v8;
}

uint64_t sub_1D68A60C4()
{
  sub_1D7263D4C();

  v0 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D68AFCB0(0, &unk_1EC88D670, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  v1 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D68A61D4(uint64_t a1, void *a2)
{
  sub_1D7263D4C();

  v3 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D68AFCB0(0, &unk_1EC88D6B8, &type metadata for ExportToGroceryListContext, MEMORY[0x1E69E6720]);
  v4 = a2;
  v5 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D68A62E4(uint64_t a1)
{
  v27 = a1;
  v2 = *(v1 + 8);
  v3 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D68A8C44(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for FormatOption();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v17 = *(v1 + 48);
  if (v17 >> 14)
  {
    v18 = *(v1 + 16);
    if (v17 >> 14 == 1)
    {
      v26 = *(v1 + 16);

      FormatOptionCollection.subscript.getter(v16, v2, v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_1D68AF29C(v10, &qword_1EDF337F0, type metadata accessor for FormatOption);
        *v6 = v16;
        v6[1] = v2;
        swift_storeEnumTagMultiPayload();
        sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        sub_1D68B021C(v6, v19, type metadata accessor for FormatLayoutError);
        swift_willThrow();
        sub_1D5D511FC(v6, type metadata accessor for FormatLayoutError);
      }

      else
      {

        sub_1D5D5E40C(v10, v15, type metadata accessor for FormatOption);

        v24 = v27;
        v23 = v28;
        sub_1D6B744A8(v27, &v35);
        if (v23)
        {
          sub_1D5D511FC(v15, type metadata accessor for FormatOption);
        }

        else
        {

          v16 = sub_1D6B7DB60(v35, v16, v2, v26, v24);
          sub_1D5D511FC(v15, type metadata accessor for FormatOption);
        }
      }
    }

    else
    {
      v20 = *(v1 + 40);
      v29 = *v1;
      v30 = v2;
      v31 = v18;
      v32 = *(v1 + 24);
      v33 = v20;
      v34 = v17 & 0x3FFF;
      v21 = v28;
      v22 = sub_1D688E6FC(v27, 0);
      if (!v21)
      {
        return v22;
      }
    }
  }

  else
  {
  }

  return v16;
}

uint64_t sub_1D68A66CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, ValueMetadata *, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v20 = *a6;
  ObjectType = swift_getObjectType();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = sub_1D5B5534C(0, &qword_1EDF3C770);
  v16 = sub_1D68AE048();
  v17 = sub_1D5B8A1B8();

  a9(a5, &v20, a8, v14, v15, &type metadata for IgnoringCommandState, v16, v17, ObjectType, a2);
}

uint64_t sub_1D68A67D0()
{
  swift_getObjectType();
  sub_1D5B5534C(0, &qword_1EDF3C770);
  return sub_1D725D92C() & 1;
}

uint64_t sub_1D68A6860()
{
  swift_getObjectType();
  sub_1D5B5534C(0, &qword_1EDF3C770);
  return sub_1D725D97C();
}

uint64_t sub_1D68A68F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D5B5534C(0, &qword_1EDF3C770);
  sub_1D68AD174();
  sub_1D5B65B58();

  sub_1D725D95C();
}

uint64_t sub_1D68A69F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D5B5534C(0, &qword_1EDF3C770);
  sub_1D68AD174();
  sub_1D5B65B58();

  sub_1D725D94C();
}

uint64_t sub_1D68A6AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D5B5534C(0, &qword_1EDF3C770);
  sub_1D68AD174();
  sub_1D5B65B58();

  sub_1D725D94C();
}

uint64_t sub_1D68A6C00(char *a1, void (*a2)(char *), uint64_t a3, void (*a4)(__n128))
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v15 - v10;
  v16 = *a1;
  if (v16 == 2)
  {
    v12 = sub_1D725D38C();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    a4(v9);
    sub_1D725DE0C();
    v13 = sub_1D725D38C();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  a2(v11);
  return sub_1D68AF29C(v11, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D68A6D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t *, uint64_t, uint64_t, ValueMetadata *, ValueMetadata *, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v13 = *(a6 + 4);
  v20 = *a6;
  v21 = v13;
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = sub_1D674BF04();
  v17 = sub_1D5B61274();

  a9(a5, &v20, a8, v15, &type metadata for FollowingCommandContext, &type metadata for FollowingCommandState, v16, v17, ObjectType, a2);
}

uint64_t sub_1D68A6F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, __int128 *, uint64_t, uint64_t, ValueMetadata *, void, void, void, uint64_t, uint64_t))
{
  v13 = *(a6 + 2);
  v18 = *a6;
  v19 = v13;
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  a9(a5, &v18, a8, v15, &type metadata for LikingCommandContext, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E69D8888], ObjectType, a2);
}

uint64_t sub_1D68A7068@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D725D96C();
  if (v5 == 2)
  {
    v2 = 1;
  }

  else
  {
    sub_1D726284C();
    v2 = 0;
  }

  v3 = sub_1D725D38C();
  return (*(*(v3 - 8) + 56))(a1, v2, 1, v3);
}

uint64_t sub_1D68A7150()
{
  swift_getObjectType();
  sub_1D68AFCB0(0, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
  return sub_1D725D92C() & 1;
}

uint64_t sub_1D68A71FC()
{
  swift_getObjectType();
  sub_1D68AFCB0(0, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
  return sub_1D725D97C();
}

uint64_t sub_1D68A72AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, ValueMetadata *, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v13 = *(a6 + 4);
  v22 = *a6;
  v23 = v13;
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  sub_1D68AFCB0(0, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
  v17 = v16;
  v18 = sub_1D5F9407C();
  v19 = sub_1D5B66B90();

  a9(a5, &v22, a8, v15, v17, &type metadata for SavingCommandState, v18, v19, ObjectType, a2);
}

uint64_t sub_1D68A73CC(_BYTE *a1, void (*a2)(char *))
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  if (*a1 == 2)
  {
    v8 = sub_1D725D38C();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  else
  {
    sub_1D726284C();
    v9 = sub_1D725D38C();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  a2(v7);
  return sub_1D68AF29C(v7, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D68A752C(void *a1, void (*a2)(void *))
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v14 - v6);
  v8 = a1[1];
  if (v8)
  {
    *v7 = *a1;
    v7[1] = v8;
    v9 = *MEMORY[0x1E69D7870];
    v10 = sub_1D725D38C();
    v11 = *(v10 - 8);
    (*(v11 + 104))(v7, v9, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
  }

  else
  {
    v12 = sub_1D725D38C();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  a2(v7);
  return sub_1D68AF29C(v7, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D68A76EC(uint64_t a1, void (*a2)(void *))
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v13 - v6);
  if (*(a1 + 8))
  {
    v8 = sub_1D725D38C();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  else
  {
    *v7 = *a1;
    v9 = *MEMORY[0x1E69D7858];
    v10 = sub_1D725D38C();
    v11 = *(v10 - 8);
    (*(v11 + 104))(v7, v9, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
  }

  a2(v7);
  return sub_1D68AF29C(v7, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D68A78B4(char *a1, void (*a2)(char *), uint64_t a3, void (*a4)(__n128))
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v15 - v10;
  v16 = *a1;
  if (v16 == 3)
  {
    v12 = sub_1D725D38C();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    a4(v9);
    sub_1D725DE0C();
    v13 = sub_1D725D38C();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  a2(v11);
  return sub_1D68AF29C(v11, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D68A7A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AF6AC();
  sub_1D5B84108();

  sub_1D725D95C();
}

uint64_t sub_1D68A7B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AF6AC();
  sub_1D5B84108();

  sub_1D725D94C();
}

uint64_t sub_1D68A7C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D68AF6AC();
  sub_1D5B84108();

  sub_1D725D94C();
}

uint64_t sub_1D68A7D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D5EDDD28();
  sub_1D5B8D5CC();

  sub_1D725D95C();
}

uint64_t sub_1D68A7E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D5EDDD28();
  sub_1D5B8D5CC();

  sub_1D725D94C();
}

uint64_t sub_1D68A7EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D5EDDD28();
  sub_1D5B8D5CC();

  sub_1D725D94C();
}

uint64_t sub_1D68A7FE0(char *a1, void (*a2)(char *), uint64_t a3, void (*a4)(__n128))
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v15 - v10;
  v16 = *a1;
  if (v16 == 4)
  {
    v12 = sub_1D725D38C();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    a4(v9);
    sub_1D725DE0C();
    v13 = sub_1D725D38C();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  a2(v11);
  return sub_1D68AF29C(v11, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D68A816C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D61892D0();
  sub_1D5B8131C();

  sub_1D725D95C();
}

uint64_t sub_1D68A825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D61892D0();
  sub_1D5B8131C();

  sub_1D725D94C();
}

uint64_t sub_1D68A834C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1D61892D0();
  sub_1D5B8131C();

  sub_1D725D94C();
}

uint64_t sub_1D68A843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t *, uint64_t, uint64_t, ValueMetadata *, ValueMetadata *, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v19 = *a6;
  ObjectType = swift_getObjectType();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = sub_1D68AFDE0();
  v16 = sub_1D68AFD00();

  a9(a5, &v19, a8, v14, &type metadata for ExportToGroceryListContext, &type metadata for ExportToGroceryListCommandState, v15, v16, ObjectType, a2);
}

uint64_t sub_1D68A8528()
{
  v0 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v1 = v0();
  v2 = *(*(v1 + 40) + 16);
  swift_beginAccess();
  if (*(*(v2 + 16) + 16))
  {
    v7 = *(v1 + 56);

    v4 = sub_1D6F622E0(v3);
    sub_1D5B886D0(v4);

    return v7;
  }

  else
  {
    v6 = sub_1D6E46E28();

    return v6;
  }
}

uint64_t sub_1D68A85F4()
{
  v0 = off_1F51B94D0[0];
  type metadata accessor for FormatNodeBinderContext();
  v1 = v0();
  v2 = *(*(v1 + 40) + 16);
  swift_beginAccess();
  if (*(*(v2 + 16) + 16))
  {
    v7 = *(v1 + 56);

    v4 = sub_1D6F622E0(v3);
    sub_1D5B886D0(v4);

    return v7;
  }

  else
  {
    v6 = sub_1D6E46E28();

    return v6;
  }
}

uint64_t _s8NewsFeed20FormatCommandBindingO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v29 = *a1;
  v30 = v2;
  v3 = a2[1];
  v32 = *a2;
  v33 = v3;
  v5 = *a2;
  v4 = a2[1];
  *v34 = a2[2];
  *v31 = a1[2];
  v6 = *v31;
  *&v31[15] = *(a1 + 47);
  *&v34[15] = *(a2 + 47);
  v35[0] = v29;
  v35[1] = v2;
  *v36 = v6;
  *(&v36[1] + 7) = *&v31[15];
  *&v36[3] = v5;
  *&v36[5] = v4;
  *v37 = a2[2];
  *&v37[15] = *(a2 + 47);
  v7 = (*&v31[15] >> 8);
  if (v31[18])
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFF8 | (v7 >> 11) & 7;
  if (v34[18])
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 & 0xFFFFFFF8 | (*&v34[16] >> 11) & 7;
  if (v9 > 4)
  {
    if (v9 <= 6)
    {
      if (v9 != 5)
      {
        if (v11 == 6)
        {
          v19 = v29;
          v20 = *(&v29 + 1);
          v22 = (*(&v29 + 1) | ((*(&v29 + 5) | (BYTE7(v29) << 16)) << 32)) >> 48;
          v21 = *(&v29 + 5);
          v23 = *(&v29 + 1);
          v24 = v2;
          LOBYTE(v25) = BYTE8(v30);
          v15 = v32;
          *&v16 = v33;
          BYTE8(v16) = BYTE8(v33);
          sub_1D62B5248(&v32, v28);
          sub_1D62B5248(&v29, v28);
          sub_1D62B5248(&v29, v28);
          sub_1D62B5248(&v32, v28);
          v12 = _s8NewsFeed24FormatSportsEventBindingV7CommandO2eeoiySbAE_AEtFZ_0(&v19, &v15);
          goto LABEL_41;
        }

        sub_1D68B0420(v29, *(&v29 + 1), v2, BYTE8(v30));
        goto LABEL_39;
      }

      if (v11 != 5)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v9 == 7)
      {
        if (v11 == 7)
        {
          v19 = v29;
          v20 = *(&v29 + 1);
          v22 = (*(&v29 + 1) | ((*(&v29 + 5) | (BYTE7(v29) << 16)) << 32)) >> 48;
          v21 = *(&v29 + 5);
          v23 = *(&v29 + 1);
          v24 = v2;
          v25 = *(&v30 + 1);
          v26 = *v31;
          v27 = v7 & 0xC7FF;
          v15 = v32;
          v16 = v33;
          v17 = *v34;
          v18 = *&v34[16] & 0xC7FF;
          sub_1D62B5248(&v32, v28);
          sub_1D62B5248(&v29, v28);
          sub_1D62B5248(&v29, v28);
          sub_1D62B5248(&v32, v28);
          v12 = _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(&v19, &v15);
          goto LABEL_41;
        }

        sub_1D5E1DA6C(v29, *(&v29 + 1), v2, *(&v30 + 1), *v31, *&v31[8], v7 & 0xC7FF);
        goto LABEL_39;
      }

      if (v9 != 8)
      {
        if (v11 != 9)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      if (v11 != 8)
      {
        goto LABEL_39;
      }
    }

LABEL_33:
    sub_1D5D511FC(v35, sub_1D68B03C4);
    v13 = v29 == v32;
    return v13 & 1;
  }

  if (v9 <= 1)
  {
    if (!v9)
    {
      if (!v11)
      {
        v19 = v29;
        v20 = *(&v29 + 1);
        v22 = (*(&v29 + 1) | ((*(&v29 + 5) | (BYTE7(v29) << 16)) << 32)) >> 48;
        v21 = *(&v29 + 5);
        v23 = *(&v29 + 1);
        v24 = v2;
        LOBYTE(v25) = BYTE8(v30);
        v15 = v32;
        *&v16 = v33;
        BYTE8(v16) = BYTE8(v33);
        sub_1D62B5248(&v32, v28);
        sub_1D62B5248(&v29, v28);
        sub_1D62B5248(&v29, v28);
        sub_1D62B5248(&v32, v28);
        v12 = _s8NewsFeed18FormatGroupBindingV7CommandO2eeoiySbAE_AEtFZ_0(&v19, &v15);
        goto LABEL_41;
      }

      sub_1D68B0450(v29, *(&v29 + 1), v2, DWORD2(v30));
      goto LABEL_39;
    }

    if (v11 == 1)
    {
      goto LABEL_33;
    }

LABEL_39:
    sub_1D62B5248(&v32, v28);
    sub_1D5D511FC(v35, sub_1D68B03C4);
    v13 = 0;
    return v13 & 1;
  }

  if (v9 != 2)
  {
    if (v9 == 3)
    {
      if (v11 == 3)
      {
        v19 = v29;
        v20 = *(&v29 + 1);
        v22 = (*(&v29 + 1) | ((*(&v29 + 5) | (BYTE7(v29) << 16)) << 32)) >> 48;
        v21 = *(&v29 + 5);
        v23 = *(&v29 + 1);
        LOBYTE(v24) = v2;
        v15 = v32;
        LOBYTE(v16) = v33;
        sub_1D62B5248(&v32, v28);
        sub_1D62B5248(&v29, v28);
        sub_1D62B5248(&v29, v28);
        sub_1D62B5248(&v32, v28);
        v12 = _s8NewsFeed16FormatTagBindingV7CommandO2eeoiySbAE_AEtFZ_0(&v19, &v15);
LABEL_41:
        v13 = v12;
        sub_1D5D511FC(v35, sub_1D68B03C4);
        sub_1D5D085FC(&v32);
        sub_1D5D085FC(&v29);
        return v13 & 1;
      }

      sub_1D5E1DA1C(v29, *(&v29 + 1), v2);
      goto LABEL_39;
    }

    if (v11 != 4)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v11 != 2)
  {
    goto LABEL_39;
  }

LABEL_31:
  sub_1D5D511FC(v35, sub_1D68B03C4);
  v13 = v29 ^ v32 ^ 1;
  return v13 & 1;
}

unint64_t sub_1D68A8AFC(uint64_t a1)
{
  result = sub_1D68A8B24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68A8B24()
{
  result = qword_1EC88D630;
  if (!qword_1EC88D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D630);
  }

  return result;
}

unint64_t sub_1D68A8B78(void *a1)
{
  a1[1] = sub_1D5C6CE4C();
  a1[2] = sub_1D66FF5D8();
  result = sub_1D68A8BB0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D68A8BB0()
{
  result = qword_1EC88D638;
  if (!qword_1EC88D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D638);
  }

  return result;
}

uint64_t sub_1D68A8C14(uint64_t result, char a2)
{
  *(result + 48) = *(result + 48) & 0xC7FF | ((a2 & 7) << 11);
  *(result + 50) = (a2 & 8) != 0;
  return result;
}

void sub_1D68A8C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D68A8CA8()
{
  type metadata accessor for FormatLayoutError();
  sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  *v0 = 0xD00000000000007ALL;
  v0[1] = 0x80000001D73C3800;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D68A8D54(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  switch((2 * v1[49]) | ((v1[48] & 8) != 0))
  {
    case 2:
      result = sub_1D68A8CA8();
      break;
    case 3:
    case 4:
      v6 = *v1 | ((*(v1 + 1) | ((*(v1 + 5) | (v1[7] << 16)) << 32)) << 8);

      result = sub_1D6F6EEBC(a1, v6, v2, v3, v6, v2, v3);
      break;
    default:
      type metadata accessor for FormatLayoutError();
      sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v4 = 0xD00000000000006ELL;
      v4[1] = 0x80000001D73C3790;
      swift_storeEnumTagMultiPayload();
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t sub_1D68A8EEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v3 + 40) = sub_1D68ACFE4;
  *(v3 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v3 + 56) = sub_1D68AD008;
  *(v3 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v3 + 72) = sub_1D68AD028;
  *(v3 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v3 + 88) = sub_1D68AD034;
  *(v3 + 96) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v3 + 136) = sub_1D68AD040;
  *(v3 + 144) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v3 + 104) = sub_1D68AD04C;
  *(v3 + 112) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v3 + 120) = sub_1D68AD080;
  *(v3 + 128) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v3 + 152) = sub_1D68AD0CC;
  *(v3 + 160) = v14;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  return v3;
}

uint64_t sub_1D68A90AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v3 + 40) = sub_1D68B04F4;
  *(v3 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v3 + 56) = sub_1D68B04D8;
  *(v3 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v3 + 72) = sub_1D68ADDA4;
  *(v3 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v3 + 88) = sub_1D68ADDFC;
  *(v3 + 96) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v3 + 136) = sub_1D68ADE54;
  *(v3 + 144) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v3 + 104) = sub_1D68ADEAC;
  *(v3 + 112) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v3 + 120) = sub_1D68ADF24;
  *(v3 + 128) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v3 + 152) = sub_1D68B0500;
  *(v3 + 160) = v14;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  return v3;
}

uint64_t sub_1D68A926C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = v3;

  *(v4 + 16) = sub_1D725F7AC();
  *(v4 + 24) = v8;
  *(v4 + 32) = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v4 + 40) = sub_1D68ACCD8;
  *(v4 + 48) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v4 + 56) = sub_1D68ACD54;
  *(v4 + 64) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v4 + 72) = sub_1D68ACDD4;
  *(v4 + 80) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v4 + 88) = sub_1D68ACE2C;
  *(v4 + 96) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v4 + 136) = sub_1D68ACE84;
  *(v4 + 144) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v4 + 104) = sub_1D68ACEDC;
  *(v4 + 112) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v4 + 120) = sub_1D68ACEF4;
  *(v4 + 128) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v4 + 152) = sub_1D68ACF00;
  *(v4 + 160) = v16;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  return v4;
}

uint64_t sub_1D68A9450(uint64_t a1, void *a2, __int16 a3)
{
  v4 = v3;

  *(v4 + 16) = sub_1D725F7AC();
  *(v4 + 24) = v8;
  *(v4 + 32) = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v4 + 40) = sub_1D68AF758;
  *(v4 + 48) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v4 + 56) = sub_1D68AF764;
  *(v4 + 64) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v4 + 72) = sub_1D68AF784;
  *(v4 + 80) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v4 + 88) = sub_1D68AF7DC;
  *(v4 + 96) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v4 + 136) = sub_1D68AF834;
  *(v4 + 144) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v4 + 104) = sub_1D68AF88C;
  *(v4 + 112) = v14;

  sub_1D68AF8C4(a2, a3);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v4 + 120) = sub_1D68AF8DC;
  *(v4 + 128) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v4 + 152) = sub_1D68AF938;
  *(v4 + 160) = v16;

  sub_1D68AF8C4(a2, a3);

  sub_1D68AF8C4(a2, a3);

  sub_1D68AF8C4(a2, a3);

  sub_1D68AF8C4(a2, a3);

  sub_1D68AF8C4(a2, a3);

  sub_1D68AF8C4(a2, a3);
  return v4;
}

uint64_t sub_1D68A96A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  *(v5 + 16) = sub_1D725F7AC();
  *(v5 + 24) = v10;
  *(v5 + 32) = 1;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  *(v5 + 40) = sub_1D68ACA40;
  *(v5 + 48) = v11;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  *(v5 + 56) = sub_1D68ACA4C;
  *(v5 + 64) = v12;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  *(v5 + 72) = sub_1D68ACA6C;
  *(v5 + 80) = v13;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  *(v5 + 88) = sub_1D68ACAC4;
  *(v5 + 96) = v14;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  *(v5 + 136) = sub_1D68ACB1C;
  *(v5 + 144) = v15;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  *(v5 + 104) = sub_1D68ACB74;
  *(v5 + 112) = v16;

  sub_1D68ACBB0(a2);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  *(v5 + 120) = sub_1D68ACBF4;
  *(v5 + 128) = v17;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  *(v5 + 152) = sub_1D68ACC00;
  *(v5 + 160) = v18;

  sub_1D68ACBB0(a2);

  sub_1D68ACBB0(a2);

  sub_1D68ACBB0(a2);

  sub_1D68ACBB0(a2);

  sub_1D68ACBB0(a2);

  sub_1D68ACBB0(a2);
  return v5;
}

uint64_t sub_1D68A9928(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E6720];
  sub_1D68A8C44(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v12 = &v38 - v11;

  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v13;
  *(v3 + 32) = 1;
  v42 = sub_1D68A8C44;
  v43 = v6;
  sub_1D68AE904(a2, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v6, sub_1D68A8C44);
  v14 = *(v8 + 80);
  v40 = v9;
  v41 = v14;
  v15 = (v14 + 24) & ~v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_1D68AE978(v12, v16 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 40) = sub_1D68AD214;
  *(v3 + 48) = v16;
  v39 = a2;
  v17 = v42;
  sub_1D68AE904(a2, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v6, v42);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v38 = a1;
  sub_1D68AE978(v12, v18 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 56) = sub_1D68AD248;
  *(v3 + 64) = v18;
  v19 = a2;
  v20 = v43;
  sub_1D68AE904(v19, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v43, v17);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  sub_1D68AE978(v12, v21 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 72) = sub_1D68AD290;
  *(v3 + 80) = v21;
  v22 = v39;
  v23 = v20;
  v24 = v42;
  sub_1D68AE904(v39, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v23, v42);
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v38;
  sub_1D68AE978(v12, v25 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 88) = sub_1D68AD2C4;
  *(v3 + 96) = v25;
  v27 = v22;
  v28 = v43;
  sub_1D68AE904(v27, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v43, v24);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  sub_1D68AE978(v12, v29 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 136) = sub_1D68AD2F8;
  *(v3 + 144) = v29;
  v30 = v39;
  v31 = v28;
  v32 = v42;
  sub_1D68AE904(v39, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v31, v42);
  v33 = swift_allocObject();
  *(v33 + 16) = v26;
  sub_1D68AE978(v12, v33 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 104) = sub_1D68AD32C;
  *(v3 + 112) = v33;

  v34 = v30;
  sub_1D68AE904(v30, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v43, v32);
  v35 = swift_allocObject();
  *(v35 + 16) = v26;
  sub_1D68AE978(v12, v35 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 120) = sub_1D68AD360;
  *(v3 + 128) = v35;
  sub_1D68AE978(v34, v12, qword_1EDF42030, type metadata accessor for FeedHeadline);
  v36 = swift_allocObject();
  *(v36 + 16) = v26;
  sub_1D68AE978(v12, v36 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 152) = sub_1D68AD678;
  *(v3 + 160) = v36;
  swift_retain_n();
  return v3;
}

uint64_t sub_1D68A9DE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E6720];
  sub_1D68A8C44(0, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v12 = &v38 - v11;

  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v13;
  *(v3 + 32) = 1;
  v42 = sub_1D68A8C44;
  v43 = v6;
  sub_1D68AE904(a2, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v6, sub_1D68A8C44);
  v14 = *(v8 + 80);
  v40 = v9;
  v41 = v14;
  v15 = (v14 + 24) & ~v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_1D68AE978(v12, v16 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 40) = sub_1D68AD7A4;
  *(v3 + 48) = v16;
  v39 = a2;
  v17 = v42;
  sub_1D68AE904(a2, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v6, v42);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v38 = a1;
  sub_1D68AE978(v12, v18 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 56) = sub_1D68AD7D8;
  *(v3 + 64) = v18;
  v19 = a2;
  v20 = v43;
  sub_1D68AE904(v19, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v43, v17);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  sub_1D68AE978(v12, v21 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 72) = sub_1D68AD820;
  *(v3 + 80) = v21;
  v22 = v39;
  v23 = v20;
  v24 = v42;
  sub_1D68AE904(v39, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v23, v42);
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v38;
  sub_1D68AE978(v12, v25 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 88) = sub_1D68AD854;
  *(v3 + 96) = v25;
  v27 = v22;
  v28 = v43;
  sub_1D68AE904(v27, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v43, v24);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  sub_1D68AE978(v12, v29 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 136) = sub_1D68AD888;
  *(v3 + 144) = v29;
  v30 = v39;
  v31 = v28;
  v32 = v42;
  sub_1D68AE904(v39, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v31, v42);
  v33 = swift_allocObject();
  *(v33 + 16) = v26;
  sub_1D68AE978(v12, v33 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 104) = sub_1D68AD8BC;
  *(v3 + 112) = v33;

  v34 = v30;
  sub_1D68AE904(v30, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v43, v32);
  v35 = swift_allocObject();
  *(v35 + 16) = v26;
  sub_1D68AE978(v12, v35 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 120) = sub_1D68AD8F0;
  *(v3 + 128) = v35;
  sub_1D68AE978(v34, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  v36 = swift_allocObject();
  *(v36 + 16) = v26;
  sub_1D68AE978(v12, v36 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 152) = sub_1D68ADC10;
  *(v3 + 160) = v36;
  swift_retain_n();
  return v3;
}

uint64_t sub_1D68AA2A8(uint64_t a1, __int128 *a2)
{
  v3 = v2;

  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 1;
  v7 = MEMORY[0x1E69E6720];
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D68AFCB0);
  v8 = swift_allocObject();
  v9 = v73;
  *(v8 + 168) = v74;
  v10 = v76;
  *(v8 + 184) = v75;
  *(v8 + 200) = v10;
  *(v8 + 216) = v77;
  v11 = v69;
  *(v8 + 104) = v70;
  v12 = v72;
  *(v8 + 120) = v71;
  *(v8 + 136) = v12;
  *(v8 + 152) = v9;
  v13 = v65;
  *(v8 + 40) = v66;
  v14 = v68;
  *(v8 + 56) = v67;
  *(v8 + 72) = v14;
  *(v8 + 88) = v11;
  *(v8 + 16) = a1;
  *(v8 + 24) = v13;
  *(v3 + 40) = sub_1D68B048C;
  *(v3 + 48) = v8;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v15 = swift_allocObject();
  v16 = v73;
  *(v15 + 168) = v74;
  v17 = v76;
  *(v15 + 184) = v75;
  *(v15 + 200) = v17;
  *(v15 + 216) = v77;
  v18 = v69;
  *(v15 + 104) = v70;
  v19 = v72;
  *(v15 + 120) = v71;
  *(v15 + 136) = v19;
  *(v15 + 152) = v16;
  v20 = v65;
  *(v15 + 40) = v66;
  v21 = v68;
  *(v15 + 56) = v67;
  *(v15 + 72) = v21;
  *(v15 + 88) = v18;
  *(v15 + 16) = a1;
  *(v15 + 24) = v20;
  *(v3 + 56) = sub_1D68B0494;
  *(v3 + 64) = v15;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v22 = swift_allocObject();
  v23 = v73;
  *(v22 + 168) = v74;
  v24 = v76;
  *(v22 + 184) = v75;
  *(v22 + 200) = v24;
  *(v22 + 216) = v77;
  v25 = v69;
  *(v22 + 104) = v70;
  v26 = v72;
  *(v22 + 120) = v71;
  *(v22 + 136) = v26;
  *(v22 + 152) = v23;
  v27 = v65;
  *(v22 + 40) = v66;
  v28 = v68;
  *(v22 + 56) = v67;
  *(v22 + 72) = v28;
  *(v22 + 88) = v25;
  *(v22 + 16) = a1;
  *(v22 + 24) = v27;
  *(v3 + 72) = sub_1D68AE0E8;
  *(v3 + 80) = v22;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v29 = swift_allocObject();
  v30 = v73;
  *(v29 + 168) = v74;
  v31 = v76;
  *(v29 + 184) = v75;
  *(v29 + 200) = v31;
  *(v29 + 216) = v77;
  v32 = v69;
  *(v29 + 104) = v70;
  v33 = v72;
  *(v29 + 120) = v71;
  *(v29 + 136) = v33;
  *(v29 + 152) = v30;
  v34 = v65;
  *(v29 + 40) = v66;
  v35 = v68;
  *(v29 + 56) = v67;
  *(v29 + 72) = v35;
  *(v29 + 88) = v32;
  *(v29 + 16) = a1;
  *(v29 + 24) = v34;
  *(v3 + 88) = sub_1D68AE0F4;
  *(v3 + 96) = v29;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v36 = swift_allocObject();
  v37 = v73;
  *(v36 + 168) = v74;
  v38 = v76;
  *(v36 + 184) = v75;
  *(v36 + 200) = v38;
  *(v36 + 216) = v77;
  v39 = v69;
  *(v36 + 104) = v70;
  v40 = v72;
  *(v36 + 120) = v71;
  *(v36 + 136) = v40;
  *(v36 + 152) = v37;
  v41 = v65;
  *(v36 + 40) = v66;
  v42 = v68;
  *(v36 + 56) = v67;
  *(v36 + 72) = v42;
  *(v36 + 88) = v39;
  *(v36 + 16) = a1;
  *(v36 + 24) = v41;
  *(v3 + 136) = sub_1D68AE100;
  *(v3 + 144) = v36;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v43 = swift_allocObject();
  v44 = v73;
  *(v43 + 168) = v74;
  v45 = v76;
  *(v43 + 184) = v75;
  *(v43 + 200) = v45;
  *(v43 + 216) = v77;
  v46 = v69;
  *(v43 + 104) = v70;
  v47 = v72;
  *(v43 + 120) = v71;
  *(v43 + 136) = v47;
  *(v43 + 152) = v44;
  v48 = v65;
  *(v43 + 40) = v66;
  v49 = v68;
  *(v43 + 56) = v67;
  *(v43 + 72) = v49;
  *(v43 + 88) = v46;
  *(v43 + 16) = a1;
  *(v43 + 24) = v48;
  *(v3 + 104) = sub_1D68AE10C;
  *(v3 + 112) = v43;

  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v50 = swift_allocObject();
  v51 = v73;
  *(v50 + 168) = v74;
  v52 = v76;
  *(v50 + 184) = v75;
  *(v50 + 200) = v52;
  *(v50 + 216) = v77;
  v53 = v69;
  *(v50 + 104) = v70;
  v54 = v72;
  *(v50 + 120) = v71;
  *(v50 + 136) = v54;
  *(v50 + 152) = v51;
  v55 = v65;
  *(v50 + 40) = v66;
  v56 = v68;
  *(v50 + 56) = v67;
  *(v50 + 72) = v56;
  *(v50 + 88) = v53;
  *(v50 + 16) = a1;
  *(v50 + 24) = v55;
  *(v3 + 120) = sub_1D68AE124;
  *(v3 + 128) = v50;
  v57 = swift_allocObject();
  v58 = a2[8];
  *(v57 + 168) = a2[9];
  v59 = a2[11];
  *(v57 + 184) = a2[10];
  *(v57 + 200) = v59;
  *(v57 + 216) = a2[12];
  v60 = a2[4];
  *(v57 + 104) = a2[5];
  v61 = a2[7];
  *(v57 + 120) = a2[6];
  *(v57 + 136) = v61;
  *(v57 + 152) = v58;
  v62 = *a2;
  *(v57 + 40) = a2[1];
  v63 = a2[3];
  *(v57 + 56) = a2[2];
  *(v57 + 72) = v63;
  *(v57 + 88) = v60;
  *(v57 + 16) = a1;
  *(v57 + 24) = v62;
  *(v3 + 152) = sub_1D68B04CC;
  *(v3 + 160) = v57;
  swift_retain_n();
  return v3;
}