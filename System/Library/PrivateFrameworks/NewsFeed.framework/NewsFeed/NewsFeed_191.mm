uint64_t sub_1D6CC5B10(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v3 + 16);

  v13 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = v3 + 64;
    while (v6 < *(v3 + 16))
    {
      v8 = *(v7 - 32);
      v9 = *(v7 - 24);
      v10 = *(v7 - 16);
      v11 = *(v7 - 8);
      v12 = *(*(v16 + 16) + 104);
      v17[0] = v8;
      v17[1] = v9;
      v18 = v10;
      sub_1D5D03180(v8, v9, v10);

      if (v12(a1, a2, v17))
      {

        sub_1D5D07BA8(v8, v9, v10);

        return v11;
      }

      ++v6;
      sub_1D5D07BA8(v8, v9, v10);

      v7 += 40;
      if (v13 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v11 = *(v16 + 32);

    return v11;
  }

  return result;
}

uint64_t sub_1D6CC5C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 24);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = (v4 + 56);
    while (v7 < *(v4 + 16))
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 8);
      v12 = *v8;
      v13 = *(*(v17 + 16) + 104);
      v18[0] = v9;
      v18[1] = v10;
      v19 = v11;
      sub_1D5D03180(v9, v10, v11);

      if (v13(a1, a2, v18))
      {

        sub_1D5D07BA8(v9, v10, v11);

        *a3 = v12;
        return result;
      }

      ++v7;
      sub_1D5D07BA8(v9, v10, v11);

      v8 += 4;
      if (v5 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *a3 = *(v17 + 32);
  }

  return result;
}

uint64_t sub_1D6CC5DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 24);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = (v4 + 56);
    while (v7 < *(v4 + 16))
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 8);
      v12 = *v8;
      v13 = *(*(v17 + 16) + 104);
      v18[0] = v9;
      v18[1] = v10;
      v19 = v11;
      sub_1D5D03180(v9, v10, v11);

      if (v13(a1, a2, v18))
      {

        sub_1D5D07BA8(v9, v10, v11);

        *a3 = v12;
        return result;
      }

      ++v7;
      sub_1D5D07BA8(v9, v10, v11);

      v8 += 4;
      if (v5 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *a3 = *(v17 + 32);
  }

  return result;
}

uint64_t sub_1D6CC5F28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6CC5F9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6CC6040(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12)
{
  v261 = a12;
  v258 = a11;
  v254 = a10;
  v253 = a9;
  v265 = a3;
  v264.i64[0] = a1;
  sub_1D6CC81D4(0, &unk_1EC890018, type metadata accessor for FormatSourceMapEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v257.i64[0] = &v243 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v263.i64[0] = &v243 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v243 - v26);
  MEMORY[0x1EEE9AC00](v28, v29);
  v267.i64[0] = &v243 - v30;
  v255 = type metadata accessor for DebugFormatLayoutModel();
  MEMORY[0x1EEE9AC00](v255, v31);
  v33 = &v243 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v243 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v243 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v259.i64[0] = &v243 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v262 = (&v243 - v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v252 = &v243 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v243 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v243 - v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v243 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v266.i64[0] = &v243 - v65;
  v278.i64[0] = *a2;
  v66 = v278.i64[0];
  sub_1D6EE5E70();
  v281.origin.x = a5;
  v281.origin.y = a6;
  v281.size.width = a7;
  v281.size.height = a8;
  CGRectGetMinX(v281);
  sub_1D726328C();
  v282.origin.x = a5;
  v282.origin.y = a6;
  v282.size.width = a7;
  v282.size.height = a8;
  CGRectGetMinY(v282);
  sub_1D726329C();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v256 = v66;
  v75 = (v66 >> 59) & 0x1E | (v66 >> 2) & 1;
  v260 = a4;
  if (v75 <= 4)
  {
    v262 = v54;
    v263.i64[0] = v58;
    v252 = v37;
    if (v75 < 3)
    {
      goto LABEL_7;
    }

    v102 = v261;
    v103 = v258;
    v104 = v254;
    v105 = v253;
    if (v75 != 3)
    {
      v119 = v256;
      v121 = *((v256 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v267.i64[0] = *((v256 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v120 = v267.i64[0];
      v266.i64[0] = v121;
      v260 = *((v256 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      sub_1D6CCD0AC(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_1D72816C0;
      v272 = v119;

      sub_1D5EBC314(v120, v121);
      sub_1D6EE6F40(&v278);
      v259 = v279;
      v257 = v278;
      *&v276[0] = v119;
      v123 = sub_1D6EE8B60();
      v125 = v124;

      sub_1D69F7E68(v123, v125, v27);

      v126 = v262;
      *v262 = v119;
      *(v126 + 24) = 0u;
      *(v126 + 8) = 0u;
      *(v126 + 40) = 3;
      *(v126 + 48) = v68;
      *(v126 + 56) = v70;
      if (v280)
      {
        v127 = -1;
      }

      else
      {
        v127 = 0;
      }

      v128 = vdupq_n_s64(v127);
      *(v126 + 64) = v72;
      *(v126 + 72) = v74;
      v129 = vbicq_s8(v257, v128);
      v130 = vbicq_s8(v259, v128);
      *(v126 + 80) = v129;
      *(v126 + 96) = v130;
      sub_1D6CCCEB8(v27, v126 + *(v255 + 32));
      *(v126 + 112) = v105;
      *(v126 + 120) = v104;
      *(v126 + 128) = v103;
      *(v126 + 136) = v102;
      v131 = v263.i64[0];
      sub_1D6CCCF4C(v126, v263.i64[0], type metadata accessor for DebugFormatLayoutModel);
      v132 = v264.i64[0];

      v134 = v265;
      sub_1D6CCB330(v133, v132, v265 & 1, a4, v68, v70, v72, v74);

      type metadata accessor for DebugFormatLayoutTreeItem();
      swift_allocObject();
      *(v122 + 32) = sub_1D6E39AFC(v131, v134 & 1);

      sub_1D5EBC358(v267.i64[0], v266.i64[0]);
      return v122;
    }

    v251 = v41;
    sub_1D6CCCE18();
    v107 = (swift_projectBox() + *(v106 + 48));
    v109 = *v107;
    v108 = v107[1];
    v110 = v107[2];
    v111 = v107[3];
    v112 = MEMORY[0x1E69E7CC0];
    v113 = v107[4];
    v272 = MEMORY[0x1E69E7CC0];
    v268.i8[0] = 1;
    v114 = *(v109 + 24);
    v115 = *(v114 + 16);
    v250 = v110;
    v249 = v111;
    v248 = v108;
    v247 = v113;
    v246 = v109;
    if (v115)
    {
      v116 = sub_1D5E24248(v115, 0);
      v267.i64[0] = sub_1D5E26314(&v278, (v116 + 4), v115, v114);
      v263.i64[0] = v278.i64[1];
      v266.i64[0] = v278.i64[0];
      v259.i64[0] = v279.i64[1];
      v262 = v279.i64[0];

      sub_1D5EBC314(v110, v111);

      sub_1D5B87E38();
      if (v267.i64[0] != v115)
      {
        goto LABEL_109;
      }

      v117 = v257.i64[0];
      v118 = v252;
      v112 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      sub_1D5EBC314(v110, v111);
      v116 = MEMORY[0x1E69E7CC0];
      v117 = v257.i64[0];
      v118 = v252;
    }

    v278.i64[0] = v116;
    v115 = 0;
    sub_1D6CC8E30(&v278);
    v135 = v278.i64[0];

    sub_1D725B31C();

    v136 = *(v135 + 16);
    if (!v136)
    {

      v138 = 1;
      v154 = MEMORY[0x1E69E7CC0];
      goto LABEL_32;
    }

    v259.i64[0] = v278.i64[0];
    *&v276[0] = v112;
    sub_1D7263ECC();
    v245 = v135;
    v137 = (v135 + 48);
    v138 = 1;
    while (1)
    {
      v150 = *(v137 - 2);
      v151 = *(v137 - 1);
      v152 = *v137;

      v266.i64[0] = v136;
      if (v265)
      {
        v153 = sub_1D5E1FA08(v259.i64[0], v150);
        if ((v138 & 1) == 0)
        {
          v139 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        v153 = 0;
        v139 = 0;
        if ((v138 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v139 = v153 ^ 1;
LABEL_24:
      v267.i32[0] = v139;

      v278.i64[0] = v256;
      v140 = v152;
      v263.i64[0] = v152;
      v141 = sub_1D6EE8B60();
      v143 = v142;
      v144 = *(v255 + 32);

      v145 = &v33[v144];
      v146 = v260;
      sub_1D69F7E68(v141, v143, v145);

      *v33 = v150;
      *(v33 + 1) = v151;
      *(v33 + 3) = 0;
      *(v33 + 4) = 0;
      *(v33 + 2) = v140;
      v33[40] = 4;
      *(v33 + 6) = v68;
      *(v33 + 7) = v70;
      *(v33 + 8) = v72;
      *(v33 + 9) = v74;
      *(v33 + 5) = 0u;
      *(v33 + 6) = 0u;
      *(v33 + 14) = v105;
      *(v33 + 15) = v104;
      *(v33 + 16) = v103;
      *(v33 + 17) = v102;
      v147 = *(v151 + 96);
      v148 = v264.i64[0];

      LOBYTE(v140) = v153 & 1;
      v262 = sub_1D6CCB330(v147, v148, v153 & 1, v146, v68, v70, v72, v74);

      type metadata accessor for DebugFormatLayoutTreeItem();
      v149 = swift_allocObject();
      sub_1D725894C();
      *(v149 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = 0;
      sub_1D6CCCD50(v33, v149 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
      swift_beginAccess();
      LOBYTE(v270) = v140;
      sub_1D726009C();
      swift_endAccess();
      *(v149 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) = v140;
      v138 = v267.i8[0];
      swift_beginAccess();
      v270 = v262;
      sub_1D6847030(0);
      sub_1D726009C();
      swift_endAccess();
      sub_1D6CCCDB8(v33, type metadata accessor for DebugFormatLayoutModel);

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v137 += 3;
      v136 = v266.i64[0] - 1;
      if (v266.i64[0] == 1)
      {

        v268.i8[0] = v138 & 1;
        v154 = *&v276[0];
        v117 = v257.i64[0];
        v118 = v252;
LABEL_32:
        sub_1D6988920(v154);
        v155 = v256;
        *&v276[0] = v256;

        sub_1D6EE6F40(&v278);
        v267 = v279;
        v266 = v278;
        v270 = v155;
        v156 = sub_1D6EE8B60();
        v158 = v157;

        v159 = v260;
        sub_1D69F7E68(v156, v158, v117);

        *v118 = v155;
        *(v118 + 24) = 0u;
        *(v118 + 8) = 0u;
        *(v118 + 40) = 3;
        *(v118 + 48) = v68;
        *(v118 + 56) = v70;
        if (v280)
        {
          v160 = -1;
        }

        else
        {
          v160 = 0;
        }

        v161 = vdupq_n_s64(v160);
        *(v118 + 64) = v72;
        *(v118 + 72) = v74;
        v162 = vbicq_s8(v266, v161);
        v163 = vbicq_s8(v267, v161);
        *(v118 + 80) = v162;
        *(v118 + 96) = v163;
        sub_1D6CCCEB8(v117, v118 + *(v255 + 32));
        *(v118 + 112) = v105;
        *(v118 + 120) = v104;
        *(v118 + 128) = v103;
        *(v118 + 136) = v102;
        v164 = v251;
        sub_1D6CCCF4C(v118, v251, type metadata accessor for DebugFormatLayoutModel);
        v165 = v264.i64[0];

        sub_1D6CCAFB4(v166, v165, &v268, v159, v68, v70, v72, v74);

        type metadata accessor for DebugFormatLayoutTreeItem();
        swift_allocObject();
        i = sub_1D6E39AFC(v164, v138 & 1);
        if (v272 >> 62)
        {
          goto LABEL_107;
        }

LABEL_36:
        sub_1D6C03F14(0, 0, i);

        sub_1D5EBC358(v250, v249);
        return v272;
      }
    }
  }

  if ((v75 - 7) < 0xC || v75 == 5)
  {
LABEL_7:
    sub_1D6CCD0AC(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1D72816C0;
    v88 = v256;
    v272 = v256;

    sub_1D6EE6F40(&v278);
    v264 = v279;
    v263 = v278;
    *&v276[0] = v88;
    v89 = sub_1D6EE8B60();
    v91 = v90;

    v92 = v267.i64[0];
    sub_1D69F7E68(v89, v91, v267.i64[0]);

    *v62 = v88;
    *(v62 + 24) = 0u;
    *(v62 + 8) = 0u;
    v62[40] = 3;
    *(v62 + 6) = v68;
    *(v62 + 7) = v70;
    if (v280)
    {
      v93 = -1;
    }

    else
    {
      v93 = 0;
    }

    v94 = vdupq_n_s64(v93);
    *(v62 + 8) = v72;
    *(v62 + 9) = v74;
    v95 = vbicq_s8(v263, v94);
    v96 = vbicq_s8(v264, v94);
    *(v62 + 5) = v95;
    *(v62 + 6) = v96;
    sub_1D6CCCEB8(v92, &v62[*(v255 + 32)]);
    v97 = v254;
    *(v62 + 14) = v253;
    *(v62 + 15) = v97;
    v98 = v261;
    *(v62 + 16) = v258;
    *(v62 + 17) = v98;
    v99 = v266.i64[0];
    sub_1D6CCCF4C(v62, v266.i64[0], type metadata accessor for DebugFormatLayoutModel);
    type metadata accessor for DebugFormatLayoutTreeItem();
    swift_allocObject();
    v100 = sub_1D6E39AFC(v99, v265 & 1);
    result = v87;
    *(v87 + 32) = v100;
    return result;
  }

  v76 = *((v256 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v77 = *((v256 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
  v278 = *((v256 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  v279 = v77;
  v247 = v256 & 0xFFFFFFFFFFFFFFBLL;
  v280 = *((v256 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
  v244 = v76;
  v78 = *(v76 + 72);
  v79 = *(v264.i64[0] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandCenter);
  v80 = *(v264.i64[0] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandCenter + 8);
  v81 = v261;
  v82 = v258;
  v83 = v254;
  v84 = v253;
  v85 = a4;
  v246 = v79;
  v245 = v80;
  if (v78 < 0)
  {
    v86 = v78 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    sub_1D6CC591C(v79, v80, &v272);
    v272 = v274;
    v273 = v275;
    sub_1D69D10F8();
    swift_allocObject();

    v86 = sub_1D725AB4C();
  }

  v168 = v259.i64[0];
  v169 = *(v278.i64[0] + 24);
  v257.i64[0] = v86;
  sub_1D725AB5C();
  v171 = *(&v276[0] + 1);
  v170 = *&v276[0];
  v172 = *(v169 + 16);
  if (v172)
  {
    v266.i64[0] = *&v276[0];
    v173 = sub_1D5E2419C(v172, 0);
    v267.i64[0] = sub_1D5E26198(&v272, v173 + 4, v172, v169);
    v115 = v274;

    sub_1D5B87E38();
    if (v267.i64[0] != v172)
    {
      goto LABEL_110;
    }

    v168 = v259.i64[0];
    v170 = v266.i64[0];
  }

  else
  {

    v173 = MEMORY[0x1E69E7CC0];
  }

  v272 = v173;
  sub_1D6CCAF00(&v272, v170, v171);

  v174 = v272;
  v175 = v256;
  v272 = v256;

  sub_1D6EE6F40(v276);
  v267 = v276[1];
  v266 = v276[0];
  v270 = v175;
  v176 = sub_1D6EE8B60();
  v178 = v177;

  v179 = v263.i64[0];
  sub_1D69F7E68(v176, v178, v263.i64[0]);

  v180 = v262;
  *v262 = v175;
  *(v180 + 24) = 0u;
  *(v180 + 8) = 0u;
  *(v180 + 40) = 3;
  *(v180 + 48) = v68;
  *(v180 + 56) = v70;
  if (v277)
  {
    v181 = -1;
  }

  else
  {
    v181 = 0;
  }

  v182 = vdupq_n_s64(v181);
  *(v180 + 64) = v72;
  *(v180 + 72) = v74;
  v183 = vbicq_s8(v266, v182);
  v184 = vbicq_s8(v267, v182);
  *(v180 + 80) = v183;
  *(v180 + 96) = v184;
  sub_1D6CCCEB8(v179, v180 + *(v255 + 32));
  *(v180 + 112) = v84;
  *(v180 + 120) = v83;
  *(v180 + 128) = v82;
  *(v180 + 136) = v81;
  sub_1D6CCCF4C(v180, v252, type metadata accessor for DebugFormatLayoutModel);
  v185 = v174[2];
  if (!v185)
  {
LABEL_99:

    type metadata accessor for DebugFormatLayoutTreeItem();
    swift_allocObject();
    v233 = v265 & 1;
    v234 = sub_1D6E39AFC(v252, v265 & 1);
    *(v234 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = v257.i64[0];

    v267 = *(v244 + 72);
    v235 = *(v244 + 88);
    v236 = swift_allocObject();
    swift_weakInit();
    v237 = swift_allocObject();
    v238 = v279;
    *(v237 + 24) = v278;
    *(v237 + 16) = v236;
    *(v237 + 40) = v238;
    *(v237 + 56) = v280;
    *(v237 + 64) = v68;
    *(v237 + 72) = v70;
    *(v237 + 80) = v72;
    *(v237 + 88) = v74;
    *(v237 + 96) = v256;
    *(v237 + 104) = v85;
    *(v237 + 112) = v233;
    v239 = swift_allocObject();

    sub_1D6CCCFD0(&v278, &v272);
    sub_1D725AB5C();
    sub_1D725AB6C();
    v240 = swift_allocObject();
    v240[2] = v239;
    v240[3] = sub_1D6CCCFB4;
    v240[4] = v237;

    sub_1D725B35C();

    v268 = v267;
    v269 = v235;
    v241 = swift_allocObject();
    swift_weakInit();

    sub_1D607184C(v246, v245, sub_1D6CCD070, v241, &v272);

    if (v274)
    {
      __swift_project_boxed_opaque_existential_1(&v272, v274);
      sub_1D725A72C();

      __swift_destroy_boxed_opaque_existential_1(&v272);
    }

    else
    {

      sub_1D6CCCDB8(&v272, sub_1D6CCD078);
    }

    sub_1D6CCD0AC(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v242 = swift_allocObject();
    *(v242 + 16) = xmmword_1D72816C0;
    *(v242 + 32) = v234;

    return v242;
  }

  v268.i64[0] = MEMORY[0x1E69E7CC0];
  v248 = v185;
  sub_1D7263ECC();
  v186 = 0.0;
  v243 = v174;
  v249 = v174 + 4;
  while (1)
  {
    v253 = v186;
    v190 = &v249[3 * *&v186];
    v191 = *v190;
    v192 = v190[1];
    v193 = v190[2];
    v194 = v256;
    v272 = v256;
    sub_1D6EE5E70();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_1D726327C();
    v196 = v195;
    v198 = v197;
    v200 = v199;
    v202 = v201;
    v272 = v194;
    v203 = sub_1D6EE8B60();
    v205 = v204;
    v206 = *(v255 + 32);

    sub_1D69F7E68(v203, v205, (v168 + v206));

    *v168 = v191;
    *(v168 + 8) = v192;
    v254 = v192;
    *(v168 + 24) = 0;
    *(v168 + 32) = 0;
    *(v168 + 16) = v193;
    *(v168 + 40) = 5;
    *(v168 + 48) = v68;
    *(v168 + 56) = v70;
    *(v168 + 64) = v72;
    *(v168 + 72) = v74;
    *(v168 + 80) = 0u;
    *(v168 + 96) = 0u;
    *(v168 + 112) = v196;
    *(v168 + 120) = v198;
    *(v168 + 128) = v200;
    *(v168 + 136) = v202;
    if (v265)
    {
      sub_1D725AB5C();
      v207 = v272 == *(*&v193 + 16) && v273 == *(*&v193 + 24);
      LODWORD(v251) = v207 ? 1 : sub_1D72646CC();
    }

    else
    {
      LODWORD(v251) = 0;
    }

    v208 = *(*(*&v193 + 32) + 96);
    v209 = *(v208 + 16);

    v262 = v209;
    v250 = v208;
    if (v209)
    {
      break;
    }

    v187 = MEMORY[0x1E69E7CC0];
LABEL_48:

    *&v186 = *&v253 + 1;
    type metadata accessor for DebugFormatLayoutTreeItem();
    v188 = swift_allocObject();
    sub_1D725894C();
    *(v188 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = 0;
    sub_1D6CCCD50(v168, v188 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
    swift_beginAccess();
    v189 = v251 & 1;
    LOBYTE(v271) = v251 & 1;
    sub_1D726009C();
    swift_endAccess();
    *(v188 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) = v189;
    swift_beginAccess();
    v271 = v187;
    sub_1D6847030(0);
    sub_1D726009C();
    swift_endAccess();
    sub_1D6CCCDB8(v168, type metadata accessor for DebugFormatLayoutModel);

    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    sub_1D7263EAC();
    if (*&v186 == v248)
    {
      goto LABEL_99;
    }
  }

  v210 = 0;
  *&v261 = v208 + 32;
  v187 = MEMORY[0x1E69E7CC0];
  v258 = v193;
  while (1)
  {
    v271 = *(*&v261 + 8 * v210);
    if (v265)
    {

      sub_1D725AB5C();
      if (v272 == *(*&v193 + 16) && v273 == *(*&v193 + 24))
      {
        v212 = 1;
      }

      else
      {
        v212 = sub_1D72646CC();
      }
    }

    else
    {

      v212 = 0;
    }

    swift_beginAccess();
    sub_1D726327C();
    v217 = sub_1D6CC6040(v264.i64[0], &v271, v212 & 1, v85, v68, v70, v72, v74, v213, v214, v215, v216);

    i = v217 >> 62;
    if (v217 >> 62)
    {
      v218 = sub_1D7263BFC();
    }

    else
    {
      v218 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v219 = v187 >> 62;
    if (v187 >> 62)
    {
      v232 = sub_1D7263BFC();
      v221 = v232 + v218;
      if (__OFADD__(v232, v218))
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    else
    {
      v220 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v221 = v220 + v218;
      if (__OFADD__(v220, v218))
      {
        goto LABEL_98;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v266.i64[0] = v210;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v219)
      {
        v223 = v187 & 0xFFFFFFFFFFFFFF8;
        if (v221 <= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_82;
        }

        goto LABEL_81;
      }

LABEL_80:
      sub_1D7263BFC();
      goto LABEL_81;
    }

    if (v219)
    {
      goto LABEL_80;
    }

LABEL_81:
    v187 = sub_1D7263DDC();
    v223 = v187 & 0xFFFFFFFFFFFFFF8;
LABEL_82:
    v267.i64[0] = v218;
    v115 = *(v223 + 16);
    v224 = *(v223 + 24);
    if (i)
    {
      break;
    }

    v225 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v225)
    {
      goto LABEL_60;
    }

LABEL_86:
    if (((v224 >> 1) - v115) < v267.i64[0])
    {
      goto LABEL_104;
    }

    v263.i64[0] = v187;
    v226 = v223 + 8 * v115 + 32;
    if (i)
    {
      if (v225 < 1)
      {
        goto LABEL_106;
      }

      sub_1D6847030(0);
      sub_1D6CCCD08(&qword_1EC883210, sub_1D6847030);
      for (i = 0; i != v225; ++i)
      {
        v227 = sub_1D6D876E0(&v272, i, v217);
        v115 = *v228;

        (v227)(&v272, 0);
        *(v226 + 8 * i) = v115;
      }
    }

    else
    {
      i = v217 & 0xFFFFFFFFFFFFFF8;
      type metadata accessor for DebugFormatLayoutTreeItem();
      swift_arrayInitWithCopy();
    }

    v85 = v260;
    v168 = v259.i64[0];
    v193 = v258;
    v187 = v263.i64[0];
    if (v267.i64[0] >= 1)
    {
      v229 = *(v223 + 16);
      v230 = __OFADD__(v229, v267.i64[0]);
      v231 = v229 + v267.i64[0];
      if (v230)
      {
        goto LABEL_105;
      }

      *(v223 + 16) = v231;
    }

LABEL_61:
    v210 = v266.i64[0] + 1;
    if ((v266.i64[0] + 1) == v262)
    {
      goto LABEL_48;
    }
  }

  v225 = sub_1D7263BFC();
  if (v225)
  {
    goto LABEL_86;
  }

LABEL_60:

  if (v267.i64[0] <= 0)
  {
    goto LABEL_61;
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  if ((sub_1D7263BFC() & 0x8000000000000000) == 0)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D6CC7E9C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage_id;
  v2 = sub_1D725895C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage__children;
  sub_1D6CC81D4(0, &qword_1EC88C8A0, sub_1D6847030, MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage__isExpanded;
  sub_1D6CCD0AC(0, &qword_1EC880AF0, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatLayoutTreePackage()
{
  result = qword_1EC894CE0;
  if (!qword_1EC894CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6CC8070()
{
  sub_1D725895C();
  if (v0 <= 0x3F)
  {
    sub_1D6CC81D4(319, &qword_1EC88C8A0, sub_1D6847030, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1D6CCD0AC(319, &qword_1EC880AF0, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D6CC81D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6CC8280@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage_id;
  v5 = sub_1D725895C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1D6CC82FC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12)
{
  v99 = a12;
  v87 = a10;
  v93 = a2;
  v83 = a1;
  v86 = type metadata accessor for DebugFormatLayoutModel();
  MEMORY[0x1EEE9AC00](v86, v19);
  v88 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v100 = result;
  if (!result)
  {
    return result;
  }

  v22 = *(*a9 + 24);
  v23 = *(v22 + 16);
  v95 = a3;
  if (v23)
  {
    v24 = sub_1D5E2419C(v23, 0);
    v25 = sub_1D5E26198(&v106, v24 + 4, v23, v22);

    sub_1D5B87E38();
    if (v25 != v23)
    {
      goto LABEL_66;
    }

    a3 = v95;
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  v106 = v24;
  sub_1D6CCAF00(&v106, v93, a3);

  v26 = v106;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v27 = v106;
  v28 = v26[2];
  if (!v28)
  {
LABEL_58:

    v80 = MEMORY[0x1E69E7CC0];
LABEL_60:
    v106 = 0;
    sub_1D6E391E0(v27, v80, 0, &v106);

    swift_getKeyPath();
    swift_getKeyPath();
    v105 = v80;

    sub_1D72600DC();
  }

  v82 = v106;
  v105 = MEMORY[0x1E69E7CC0];
  sub_1D7263ECC();
  v29 = 0;
  v81 = v26;
  v85 = v26 + 4;
  v30 = v88;
  v94 = a11;
  v84 = v28;
  while (1)
  {
    v91 = v29;
    v34 = &v85[3 * v29];
    v35 = *v34;
    v36 = v34[1];
    v37 = v34[2];
    v38 = v87;
    v106 = v87;
    sub_1D6EE5E70();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_1D726327C();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v106 = v38;
    v47 = sub_1D6EE8B60();
    v49 = v48;
    v50 = *(v86 + 32);

    sub_1D69F7E68(v47, v49, (v30 + v50));

    *v30 = v35;
    *(v30 + 8) = v36;
    v92 = v36;
    v51 = v37;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
    *(v30 + 16) = v37;
    *(v30 + 40) = 5;
    *(v30 + 48) = a4;
    *(v30 + 56) = a5;
    *(v30 + 64) = a6;
    *(v30 + 72) = a7;
    *(v30 + 80) = 0u;
    *(v30 + 96) = 0u;
    *(v30 + 112) = v40;
    *(v30 + 120) = v42;
    *(v30 + 128) = v44;
    *(v30 + 136) = v46;
    if (v99)
    {
      v52 = v37[2] == v93 && v37[3] == a3;
      v90 = v52 ? 1 : sub_1D72646CC();
    }

    else
    {
      v90 = 0;
    }

    v53 = *(v37[4] + 96);
    v54 = *(v53 + 16);

    v98 = v54;
    v89 = v53;
    if (v54)
    {
      break;
    }

    v31 = MEMORY[0x1E69E7CC0];
LABEL_9:

    v29 = v91 + 1;
    type metadata accessor for DebugFormatLayoutTreeItem();
    v32 = swift_allocObject();
    sub_1D725894C();
    *(v32 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = 0;
    v30 = v88;
    sub_1D6CCCD50(v88, v32 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
    swift_beginAccess();
    v33 = v90 & 1;
    LOBYTE(v104) = v90 & 1;
    sub_1D726009C();
    swift_endAccess();
    *(v32 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) = v33;
    swift_beginAccess();
    v104 = v31;
    sub_1D6847030(0);
    sub_1D726009C();
    swift_endAccess();
    sub_1D6CCCDB8(v30, type metadata accessor for DebugFormatLayoutModel);

    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    sub_1D7263EAC();
    if (v29 == v84)
    {

      v80 = v105;
      v27 = v82;
      goto LABEL_60;
    }
  }

  v55 = 0;
  v97 = v53 + 32;
  v31 = MEMORY[0x1E69E7CC0];
  v96 = v51;
  while (1)
  {
    v106 = *(v97 + 8 * v55);
    if (v99)
    {
      if (v51[2] == v93 && v51[3] == a3)
      {
        v57 = 1;
      }

      else
      {
        v57 = sub_1D72646CC();
      }
    }

    else
    {
      v57 = 0;
    }

    swift_beginAccess();

    sub_1D726327C();
    v22 = sub_1D6CC6040(v100, &v106, v57 & 1, a11, a4, a5, a6, a7, v58, v59, v60, v61);

    v62 = v22 >> 62;
    if (v22 >> 62)
    {
      v27 = sub_1D7263BFC();
    }

    else
    {
      v27 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = v31 >> 62;
    if (v31 >> 62)
    {
      v79 = sub_1D7263BFC();
      v65 = v27 + v79;
      if (__OFADD__(v79, v27))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    else
    {
      v64 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v65 = v27 + v64;
      if (__OFADD__(v64, v27))
      {
        goto LABEL_57;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v102 = v55;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v63)
      {
        v67 = v31 & 0xFFFFFFFFFFFFFF8;
        if (v65 <= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

LABEL_39:
      sub_1D7263BFC();
      goto LABEL_40;
    }

    if (v63)
    {
      goto LABEL_39;
    }

LABEL_40:
    v31 = sub_1D7263DDC();
    v67 = v31 & 0xFFFFFFFFFFFFFF8;
LABEL_41:
    v103 = v31;
    v68 = *(v67 + 16);
    v69 = *(v67 + 24);
    if (v62)
    {
      break;
    }

    v70 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v70)
    {
      goto LABEL_20;
    }

LABEL_45:
    if (((v69 >> 1) - v68) < v27)
    {
      goto LABEL_63;
    }

    v71 = v67 + 8 * v68 + 32;
    v101 = v27;
    if (v62)
    {
      if (v70 < 1)
      {
        goto LABEL_65;
      }

      sub_1D6847030(0);
      sub_1D6CCCD08(&qword_1EC883210, sub_1D6847030);
      for (i = 0; i != v70; ++i)
      {
        v73 = sub_1D6D876E0(&v106, i, v22);
        v75 = *v74;

        (v73)(&v106, 0);
        *(v71 + 8 * i) = v75;
      }
    }

    else
    {
      type metadata accessor for DebugFormatLayoutTreeItem();
      swift_arrayInitWithCopy();
    }

    a11 = v94;
    a3 = v95;
    v51 = v96;
    v31 = v103;
    if (v101 >= 1)
    {
      v76 = *(v67 + 16);
      v77 = __OFADD__(v76, v101);
      v78 = v76 + v101;
      if (v77)
      {
        goto LABEL_64;
      }

      *(v67 + 16) = v78;
    }

LABEL_21:
    v55 = v102 + 1;
    if (v102 + 1 == v98)
    {
      goto LABEL_9;
    }
  }

  v70 = sub_1D7263BFC();
  if (v70)
  {
    goto LABEL_45;
  }

LABEL_20:

  v31 = v103;
  if (v27 <= 0)
  {
    goto LABEL_21;
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

  __break(1u);
  return result;
}

uint64_t sub_1D6CC8D44(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D725AB5C();
    if (v6 == v1 && v7 == v2)
    {
    }

    else
    {
      v5 = sub_1D72646CC();

      if ((v5 & 1) == 0)
      {
        sub_1D725AB1C();
      }
    }
  }

  return result;
}

uint64_t sub_1D6CC8E30(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FFD38(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D6CC8E9C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D6CC8E9C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D726449C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5E2979C();
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D6CC9138(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D6CC8F98(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D6CC8F98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = result - a3;
    v16 = *a4;
    v5 = (*a4 + 24 * a3);
LABEL_5:
    v14 = v4;
    v15 = a3;
    v6 = *(v16 + 24 * a3);
    v13 = v5;
    while (1)
    {
      v7 = *(v5 - 3);
      v19 = *(v5 - 2);
      sub_1D7264A0C();

      sub_1D6C37E2C(v18, v6);
      v17 = sub_1D7264A5C();
      sub_1D7264A0C();
      sub_1D6C37E2C(v18, v7);
      v8 = sub_1D7264A5C();

      if (v17 >= v8)
      {
LABEL_4:
        a3 = v15 + 1;
        v4 = v14 - 1;
        v5 = v13 + 3;
        if (v15 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v16)
      {
        break;
      }

      v6 = *v5;
      v9 = v5[1];
      v10 = v5[2];
      *v5 = *(v5 - 3);
      v5[2] = *(v5 - 1);
      *(v5 - 2) = v9;
      *(v5 - 1) = v10;
      *(v5 - 3) = v6;
      v5 -= 3;
      if (__CFADD__(v4++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D6CC9138(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v104 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v8 = *v104;
    if (!*v104)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_1D62FF50C(v9);
      v9 = result;
    }

    v116 = v9;
    v94 = *(v9 + 16);
    if (v94 >= 2)
    {
      while (1)
      {
        v95 = *v6;
        if (!*v6)
        {
          goto LABEL_128;
        }

        v6 = *(v9 + 16 * v94);
        v96 = v9;
        v97 = *(v9 + 16 * (v94 - 1) + 32);
        v9 = *(v9 + 16 * (v94 - 1) + 40);
        sub_1D6CC9998((v95 + 24 * v6), (v95 + 24 * v97), v95 + 24 * v9, v8);
        if (v5)
        {
        }

        if (v9 < v6)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1D62FF50C(v96);
        }

        if (v94 - 2 >= *(v96 + 2))
        {
          goto LABEL_118;
        }

        v98 = &v96[16 * v94];
        *v98 = v6;
        *(v98 + 1) = v9;
        v116 = v96;
        result = sub_1D62FF480(v94 - 1);
        v9 = v116;
        v94 = *(v116 + 16);
        v6 = a3;
        if (v94 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
    }

    else
    {
      v100 = v9;
      v102 = v5;
      v11 = (*v6 + 24 * (v8 + 1));
      v12 = *v11;
      v8 = v11[1];
      v13 = (*v6 + 24 * v10);
      v14 = *v13;
      sub_1D7264A0C();

      sub_1D6C37E2C(v115, v12);
      v112 = sub_1D7264A5C();
      sub_1D7264A0C();
      sub_1D6C37E2C(v115, v14);
      v108 = sub_1D7264A5C();

      v15 = v10 + 2;
      v16 = v13 + 4;
      v110 = v7;
      while (v7 != v15)
      {
        v17 = v16 + 3;
        v18 = *(v16 - 1);
        v8 = v16[1];
        v19 = v16[2];
        sub_1D7264A0C();

        sub_1D6C37E2C(v115, v19);
        v20 = sub_1D7264A5C();
        sub_1D7264A0C();
        sub_1D6C37E2C(v115, v18);
        v21 = sub_1D7264A5C();

        v22 = v20 < v21;
        v7 = v110;
        v23 = !v22;
        v24 = (v112 < v108) ^ v23;
        ++v15;
        v16 = v17;
        if ((v24 & 1) == 0)
        {
          v7 = v15 - 1;
          break;
        }
      }

      v25 = 24 * v10;
      v9 = v100;
      v5 = v102;
      v6 = a3;
      if (v112 < v108)
      {
        if (v7 < v10)
        {
          goto LABEL_121;
        }

        if (v10 < v7)
        {
          v26 = 0;
          v27 = 24 * v7;
          v28 = v10;
          do
          {
            if (v28 != v7 + v26 - 1)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v29 = (v34 + v25);
              v30 = v34 + v27;
              v31 = *(v29 + 2);
              v32 = *v29;
              v33 = *(v30 - 8);
              *v29 = *(v30 - 24);
              *(v29 + 2) = v33;
              *(v30 - 24) = v32;
              *(v30 - 8) = v31;
            }

            ++v28;
            --v26;
            v27 -= 24;
            v25 += 24;
          }

          while (v28 < v7 + v26);
        }
      }
    }

    v35 = *(v6 + 8);
    if (v7 < v35)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_120;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_122;
        }

        if (v10 + a4 >= v35)
        {
          v36 = *(v6 + 8);
        }

        else
        {
          v36 = v10 + a4;
        }

        if (v36 < v10)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v7 != v36)
        {
          break;
        }
      }
    }

    v37 = v7;
    if (v7 < v10)
    {
      goto LABEL_119;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v39 = *(v9 + 16);
    v38 = *(v9 + 24);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      result = sub_1D698BA94((v38 > 1), v39 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v40;
    v41 = v9 + 16 * v39;
    *(v41 + 32) = v10;
    *(v41 + 40) = v37;
    v8 = v37;
    v42 = *v104;
    if (!*v104)
    {
      goto LABEL_129;
    }

    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v9 + 32);
          v45 = *(v9 + 40);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_51:
          if (v47)
          {
            goto LABEL_108;
          }

          v60 = (v9 + 16 * v40);
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_111;
          }

          v66 = (v9 + 32 + 16 * v43);
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_115;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v70 = (v9 + 16 * v40);
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_65:
        if (v65)
        {
          goto LABEL_110;
        }

        v73 = v9 + 16 * v43;
        v75 = *(v73 + 32);
        v74 = *(v73 + 40);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_72:
        v81 = v43 - 1;
        if (v43 - 1 >= v40)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v82 = *(v9 + 32 + 16 * v81);
        v83 = *(v9 + 32 + 16 * v43 + 8);
        sub_1D6CC9998((*v6 + 24 * v82), (*v6 + 24 * *(v9 + 32 + 16 * v43)), *v6 + 24 * v83, v42);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D62FF50C(v9);
        }

        if (v81 >= *(v9 + 16))
        {
          goto LABEL_105;
        }

        v84 = v9 + 16 * v81;
        *(v84 + 32) = v82;
        *(v84 + 40) = v83;
        v116 = v9;
        result = sub_1D62FF480(v43);
        v9 = v116;
        v40 = *(v116 + 16);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = v9 + 32 + 16 * v40;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_106;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_107;
      }

      v55 = (v9 + 16 * v40);
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_109;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_112;
      }

      if (v59 >= v51)
      {
        v77 = (v9 + 32 + 16 * v43);
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_116;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v7 = *(v6 + 8);
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  v101 = v9;
  v103 = v5;
  v85 = *v6;
  v86 = v10 - v7;
  v113 = v85;
  v87 = (v85 + 24 * v7);
  v106 = v36;
LABEL_83:
  v109 = v86;
  v111 = v7;
  v88 = *(v113 + 24 * v7);
  v107 = v87;
  while (1)
  {
    v89 = *(v87 - 3);
    v8 = v87 - 3;
    sub_1D7264A0C();

    sub_1D6C37E2C(v115, v88);
    v114 = sub_1D7264A5C();
    sub_1D7264A0C();
    sub_1D6C37E2C(v115, v89);
    v90 = sub_1D7264A5C();

    if (v114 >= v90)
    {
LABEL_82:
      v7 = v111 + 1;
      v86 = v109 - 1;
      v37 = v106;
      v87 = v107 + 3;
      if ((v111 + 1) != v106)
      {
        goto LABEL_83;
      }

      v9 = v101;
      v5 = v103;
      v6 = a3;
      if (v106 < v10)
      {
        goto LABEL_119;
      }

      goto LABEL_32;
    }

    if (!v113)
    {
      break;
    }

    v88 = *v87;
    v91 = v87[1];
    v92 = v87[2];
    *v87 = *v8;
    v87[2] = *(v87 - 1);
    *(v87 - 2) = v91;
    *(v87 - 1) = v92;
    *(v87 - 3) = v88;
    v87 -= 3;
    if (__CFADD__(v86++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_1D6CC9998(uint64_t *__dst, uint64_t *__src, unint64_t a3, uint64_t *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = (__src - __dst) / 24;
  v9 = a3 - __src;
  v10 = (a3 - __src) / 24;
  v35 = a4;
  if (v8 >= v10)
  {
    if (a4 != __src || &__src[3 * v10] <= a4)
    {
      memmove(a4, __src, 24 * v10);
      a4 = v35;
    }

    v38 = &a4[3 * v10];
    if (v9 >= 24 && v5 > v6)
    {
      v34 = v6;
LABEL_23:
      v31 = v5;
      v30 = v5 - 3;
      v19 = v4 - 24;
      v20 = v38;
      do
      {
        v21 = *(v20 - 3);
        v20 -= 3;
        v22 = v19;
        v23 = (v19 + 24);
        v24 = *(v31 - 3);
        sub_1D7264A0C();

        sub_1D6C37E2C(v37, v21);
        v32 = sub_1D7264A5C();
        sub_1D7264A0C();
        sub_1D6C37E2C(v37, v24);
        v25 = sub_1D7264A5C();

        if (v32 < v25)
        {
          v17 = v23 == v31;
          a4 = v35;
          v4 = v22;
          if (!v17)
          {
            v27 = *v30;
            *(v22 + 16) = v30[2];
            *v22 = v27;
          }

          if (v38 <= v35 || (v5 = v30, v30 <= v34))
          {
            v5 = v30;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        a4 = v35;
        if (v23 != v38)
        {
          v26 = *v20;
          *(v22 + 16) = v20[2];
          *v22 = v26;
        }

        v19 = v22 - 24;
        v38 = v20;
      }

      while (v20 > v35);
      v38 = v20;
      v5 = v31;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[3 * v8] <= a4)
    {
      memmove(a4, __dst, 24 * v8);
      a4 = v35;
    }

    v38 = &a4[3 * v8];
    if (v7 >= 24 && v5 < v4)
    {
      while (1)
      {
        v33 = v6;
        v36 = a4;
        v11 = *v5;
        v12 = *a4;
        sub_1D7264A0C();

        sub_1D6C37E2C(v37, v11);
        v13 = sub_1D7264A5C();
        sub_1D7264A0C();
        sub_1D6C37E2C(v37, v12);
        v14 = sub_1D7264A5C();

        if (v13 >= v14)
        {
          break;
        }

        v15 = v5;
        v16 = v33;
        a4 = v36;
        v17 = v33 == v5;
        v5 += 3;
        if (!v17)
        {
          goto LABEL_12;
        }

LABEL_13:
        v6 = v16 + 3;
        if (a4 >= v38 || v5 >= v4)
        {
          goto LABEL_15;
        }
      }

      v16 = v33;
      v15 = v36;
      a4 = v36 + 3;
      if (v33 == v36)
      {
        goto LABEL_13;
      }

LABEL_12:
      v18 = *v15;
      v16[2] = v15[2];
      *v16 = v18;
      goto LABEL_13;
    }

LABEL_15:
    v5 = v6;
  }

LABEL_34:
  v28 = (v38 - a4) / 24;
  if (v5 != a4 || v5 >= &a4[3 * v28])
  {
    memmove(v5, a4, 24 * v28);
  }

  return 1;
}

uint64_t sub_1D6CC9DB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  swift_beginAccess();
  result = *(a3 + 16);
  if (result != v7 || *(a3 + 24) != v8)
  {
    result = sub_1D72646CC();
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      *(a3 + 16) = v7;
      *(a3 + 24) = v8;

      return a4(a1, v7, v8);
    }
  }

  return result;
}

uint64_t sub_1D6CC9E78(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 24;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 24;
  v47 = a6;
  v46 = a5;
  if (v10 < v12)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[24 * v10] <= a4)
    {
      memmove(a4, __dst, 24 * v10);
      a5 = v46;
      a6 = v47;
    }

    v14 = &v13[24 * v10];
    if (v9 < 24)
    {
LABEL_6:
      v7 = v8;
      goto LABEL_56;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_6;
      }

      v17 = *v7;
      v18 = *(v7 + 1);
      v19 = *v7 == a5 && v18 == a6;
      if (!v19)
      {
        v20 = *v13;
        v21 = *(v13 + 1);
        v22 = sub_1D72646CC();
        a5 = v46;
        a6 = v47;
        if ((v22 & 1) == 0)
        {
          if (v20 == v46 && v21 == v47)
          {
            break;
          }

          v24 = sub_1D72646CC();
          a5 = v46;
          a6 = v47;
          if ((v24 & 1) != 0 || v17 == v20 && v18 == v21)
          {
            break;
          }

          v25 = sub_1D72646CC();
          a5 = v46;
          a6 = v47;
          if ((v25 & 1) == 0)
          {
            break;
          }
        }
      }

      v15 = v7;
      v19 = v8 == v7;
      v7 += 24;
      if (!v19)
      {
        goto LABEL_8;
      }

LABEL_9:
      v8 += 24;
      if (v13 >= v14)
      {
        goto LABEL_6;
      }
    }

    v15 = v13;
    v19 = v8 == v13;
    v13 += 24;
    if (v19)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v15;
    *(v8 + 2) = *(v15 + 2);
    *v8 = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v12] <= a4)
  {
    v26 = a4;
    memmove(a4, __src, 24 * v12);
    a5 = v46;
    a6 = v47;
    a4 = v26;
  }

  v14 = &a4[24 * v12];
  v13 = a4;
  if (v11 >= 24 && v7 > v8)
  {
    v43 = v8;
LABEL_33:
    v45 = v7;
    v44 = v7 - 24;
    v6 -= 24;
    v27 = v14;
    do
    {
      v28 = v13;
      v29 = (v6 + 24);
      v30 = *(v14 - 3);
      v31 = *(v14 - 2);
      v14 -= 24;
      v32 = v30 == a5 && v31 == a6;
      if (v32 || (v33 = *(v45 - 3), v34 = *(v45 - 2), v35 = sub_1D72646CC(), a5 = v46, a6 = v47, (v35 & 1) != 0) || (v33 == v46 ? (v36 = v34 == v47) : (v36 = 0), !v36 && (v37 = sub_1D72646CC(), a5 = v46, a6 = v47, (v37 & 1) == 0) && (v30 != v33 || v31 != v34) && (v38 = sub_1D72646CC(), a5 = v46, a6 = v47, (v38 & 1) != 0)))
      {
        if (v29 != v45)
        {
          v40 = *v44;
          *(v6 + 16) = *(v44 + 2);
          *v6 = v40;
        }

        v13 = v28;
        v14 = v27;
        if (v27 <= v28 || (v7 = v44, v44 <= v43))
        {
          v7 = v44;
          goto LABEL_56;
        }

        goto LABEL_33;
      }

      if (v29 != v27)
      {
        v39 = *v14;
        *(v6 + 16) = *(v14 + 2);
        *v6 = v39;
      }

      v6 -= 24;
      v27 = v14;
      v13 = v28;
    }

    while (v14 > v28);
    v7 = v45;
  }

LABEL_56:
  v41 = (v14 - v13) / 24;
  if (v7 != v13 || v7 >= &v13[24 * v41])
  {
    memmove(v7, v13, 24 * v41);
  }

  return 1;
}

uint64_t sub_1D6CCA224(char **a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v27 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v27 = sub_1D62FF50C(v27);
  }

  v22 = v7;
  *v7 = v27;
  v9 = v27 + 16;
  v10 = *(v27 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v22 = v27;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v27[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __dst = (v11 + 24 * *v13);
      v18 = (v11 + 24 * *v16);
      v7 = (v11 + 24 * v17);

      sub_1D6CC9E78(__dst, v18, v7, a2, a4, a5);
      v6 = v12;

      if (v12)
      {
        *v22 = v27;

        return 1;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_14;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6CCA3D0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v143 = MEMORY[0x1E69E7CC0];
  v8 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v8 >= 1)
  {
    v126 = a4;
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = a6;
    v140 = a5;
    while (1)
    {
      v12 = v9;
      v13 = v9 + 1;
      if (v9 + 1 < v8)
      {
        v130 = v9;
        v127 = v10;
        v14 = *a3;
        v15 = v9 + 1;
        v16 = (*a3 + 24 * v13);
        v17 = *v16;
        v18 = v16[1];
        if (*v16 == a5 && v18 == v11)
        {
          v23 = 1;
        }

        else
        {
          v20 = (v14 + 24 * v130);
          v21 = v20[1];
          v136 = *v20;
          v22 = v11;
          if (sub_1D72646CC())
          {
            v23 = 1;
            v11 = v22;
          }

          else
          {
            v36 = v136 == a5 && v21 == v22;
            v11 = v22;
            if (v36)
            {
              v23 = 0;
            }

            else if ((sub_1D72646CC() & 1) != 0 || (v17 == v136 ? (v37 = v18 == v21) : (v37 = 0), v37))
            {
              v23 = 0;
              v11 = a6;
            }

            else
            {
              v23 = sub_1D72646CC();
              v11 = a6;
            }
          }
        }

        v12 = v130;
        v13 = v130 + 2;
        if (v130 + 2 < v8)
        {
          v24 = (v14 + 24 * v130 + 32);
          v25 = v24;
          while (1)
          {
            v26 = v13;
            v27 = v24[2];
            v29 = v25[3];
            v25 += 3;
            v28 = v29;
            v30 = v27 == a5 && v28 == v11;
            if (v30 || (v32 = *(v24 - 1), v31 = *v24, v33 = sub_1D72646CC(), v11 = a6, (v33 & 1) != 0))
            {
              if ((v23 & 1) == 0)
              {
                v13 = v26;
                v10 = v127;
                v12 = v130;
                goto LABEL_57;
              }
            }

            else
            {
              if (v32 == a5 && v31 == a6)
              {
                goto LABEL_29;
              }

              if ((sub_1D72646CC() & 1) != 0 || v27 == v32 && v28 == v31)
              {
                v11 = a6;
LABEL_29:
                if (v23)
                {
                  v15 = v26 - 1;
                  v10 = v127;
                  v12 = v130;
                  if (v26 < v130)
                  {
LABEL_169:
                    __break(1u);
LABEL_170:
                    swift_bridgeObjectRelease_n();
                    __break(1u);
LABEL_171:
                    swift_bridgeObjectRelease_n();
                    __break(1u);
LABEL_172:
                    swift_bridgeObjectRelease_n();
                    __break(1u);
LABEL_173:
                    swift_bridgeObjectRelease_n();
                    __break(1u);
LABEL_174:
                    result = swift_bridgeObjectRelease_n();
                    __break(1u);
                    return result;
                  }

                  goto LABEL_48;
                }

                goto LABEL_15;
              }

              v35 = sub_1D72646CC();
              v11 = a6;
              if ((v23 ^ v35))
              {
                v15 = v26 - 1;
                goto LABEL_46;
              }
            }

LABEL_15:
            v13 = v26 + 1;
            v24 = v25;
            if (v8 == v26 + 1)
            {
              v15 = v26;
              v26 = v8;
LABEL_46:
              v10 = v127;
              v12 = v130;
              v13 = v26;
              if ((v23 & 1) == 0)
              {
                goto LABEL_57;
              }

              goto LABEL_47;
            }
          }
        }

        v26 = v130 + 2;
        v10 = v127;
        if (v23)
        {
LABEL_47:
          if (v26 < v12)
          {
            goto LABEL_169;
          }

LABEL_48:
          if (v12 <= v15)
          {
            v38 = 0;
            v39 = 24 * v26;
            v40 = 24 * v12;
            v41 = v12;
            do
            {
              if (v41 != v26 + v38 - 1)
              {
                v47 = *a3;
                if (!*a3)
                {
                  goto LABEL_172;
                }

                v42 = v47 + v40;
                v43 = v47 + v39;
                v44 = *v42;
                v45 = *(v42 + 8);
                v46 = *(v43 - 24);
                *(v42 + 16) = *(v43 - 8);
                *v42 = v46;
                *(v43 - 24) = v44;
                *(v43 - 16) = v45;
              }

              ++v41;
              --v38;
              v39 -= 24;
              v40 += 24;
            }

            while (v41 < v26 + v38);
          }

          v13 = v26;
        }
      }

LABEL_57:
      v48 = a3[1];
      if (v13 >= v48)
      {
        goto LABEL_67;
      }

      v49 = v13;
      v68 = __OFSUB__(v13, v12);
      v50 = v13 - v12;
      if (v68)
      {
        goto LABEL_166;
      }

      if (v50 >= v126)
      {
        goto LABEL_66;
      }

      if (__OFADD__(v12, v126))
      {
        goto LABEL_167;
      }

      if (v12 + v126 >= v48)
      {
        v51 = a3[1];
      }

      else
      {
        v51 = v12 + v126;
      }

      if (v51 < v12)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      if (v49 == v51)
      {
LABEL_66:
        v13 = v49;
LABEL_67:
        if (v13 < v12)
        {
          goto LABEL_165;
        }

        goto LABEL_68;
      }

      v128 = v10;
      v107 = *a3;
      v108 = *a3 + 24 * v49 - 24;
      v131 = v12;
      v133 = v51;
      v109 = v12 - v49;
      while (2)
      {
        v135 = v108;
        v138 = v49;
        v110 = (v107 + 24 * v49);
        v111 = *v110;
        v112 = v110[1];
        v113 = v109;
        while (1)
        {
          v115 = *v108;
          v114 = *(v108 + 8);
          if (v111 != a5 || v112 != v11)
          {
            v116 = sub_1D72646CC();
            v11 = a6;
            if ((v116 & 1) == 0)
            {
              break;
            }
          }

LABEL_133:
          if (!v107)
          {
            goto LABEL_170;
          }

          v119 = *(v108 + 32);
          v120 = *(v108 + 16);
          v111 = *(v108 + 24);
          *(v108 + 24) = *v108;
          *(v108 + 40) = v120;
          *v108 = v111;
          *(v108 + 8) = v119;
          v112 = v119;
          v108 -= 24;
          if (__CFADD__(v113++, 1))
          {
            goto LABEL_120;
          }
        }

        if (v115 == a5 && v114 == a6)
        {
          goto LABEL_120;
        }

        if ((sub_1D72646CC() & 1) == 0 && (v111 != v115 || v112 != v114))
        {
          v118 = sub_1D72646CC();
          v11 = a6;
          if ((v118 & 1) == 0)
          {
            goto LABEL_120;
          }

          goto LABEL_133;
        }

        v11 = a6;
LABEL_120:
        v49 = v138 + 1;
        v108 = v135 + 24;
        --v109;
        if (v138 + 1 != v133)
        {
          continue;
        }

        break;
      }

      v13 = v133;
      v10 = v128;
      v12 = v131;
      if (v133 < v131)
      {
        goto LABEL_165;
      }

LABEL_68:
      v137 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D698BA94(0, *(v10 + 2) + 1, 1, v10);
      }

      v53 = *(v10 + 2);
      v52 = *(v10 + 3);
      v54 = v53 + 1;
      v11 = a6;
      if (v53 >= v52 >> 1)
      {
        v122 = sub_1D698BA94((v52 > 1), v53 + 1, 1, v10);
        v11 = a6;
        v10 = v122;
      }

      *(v10 + 2) = v54;
      v55 = v10 + 32;
      v56 = &v10[16 * v53 + 32];
      *v56 = v12;
      *(v56 + 1) = v137;
      v134 = *a1;
      if (!*a1)
      {
        goto LABEL_173;
      }

      if (v53)
      {
        break;
      }

LABEL_3:
      v9 = v137;
      v8 = a3[1];
      if (v137 >= v8)
      {
        v143 = v10;
        goto LABEL_145;
      }
    }

    v132 = v10 + 32;
    while (1)
    {
      v57 = v54 - 1;
      if (v54 >= 4)
      {
        break;
      }

      if (v54 == 3)
      {
        v58 = *(v10 + 4);
        v59 = *(v10 + 5);
        v68 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        v61 = v68;
LABEL_88:
        if (v61)
        {
          goto LABEL_155;
        }

        v74 = &v10[16 * v54];
        v76 = *v74;
        v75 = *(v74 + 1);
        v77 = __OFSUB__(v75, v76);
        v78 = v75 - v76;
        v79 = v77;
        if (v77)
        {
          goto LABEL_157;
        }

        v80 = &v55[16 * v57];
        v82 = *v80;
        v81 = *(v80 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_160;
        }

        if (__OFADD__(v78, v83))
        {
          goto LABEL_162;
        }

        if (v78 + v83 >= v60)
        {
          if (v60 < v83)
          {
            v57 = v54 - 2;
          }

          goto LABEL_110;
        }

        goto LABEL_103;
      }

      if (v54 < 2)
      {
        goto LABEL_163;
      }

      v84 = &v10[16 * v54];
      v86 = *v84;
      v85 = *(v84 + 1);
      v68 = __OFSUB__(v85, v86);
      v78 = v85 - v86;
      v79 = v68;
LABEL_103:
      if (v79)
      {
        goto LABEL_159;
      }

      v87 = &v55[16 * v57];
      v89 = *v87;
      v88 = *(v87 + 1);
      v68 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v68)
      {
        goto LABEL_161;
      }

      if (v90 < v78)
      {
        goto LABEL_3;
      }

LABEL_110:
      if (v57 - 1 >= v54)
      {
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v95 = *a3;
      if (!*a3)
      {
        goto LABEL_171;
      }

      v96 = v10;
      v97 = &v55[16 * v57 - 16];
      v98 = *v97;
      v99 = v57;
      v100 = &v55[16 * v57];
      v101 = *(v100 + 1);
      v102 = (v95 + 24 * *v97);
      v103 = (v95 + 24 * *v100);
      v104 = v95 + 24 * v101;
      v105 = v11;

      sub_1D6CC9E78(v102, v103, v104, v134, v140, v105);
      if (v141)
      {

        goto LABEL_147;
      }

      if (v101 < v98)
      {
        goto LABEL_150;
      }

      v10 = v96;
      v106 = *(v96 + 2);
      if (v99 > v106)
      {
        goto LABEL_151;
      }

      *v97 = v98;
      *(v97 + 1) = v101;
      if (v99 >= v106)
      {
        goto LABEL_152;
      }

      v54 = v106 - 1;
      memmove(v100, v100 + 16, 16 * (v106 - 1 - v99));
      *(v96 + 2) = v106 - 1;
      v11 = a6;
      a5 = v140;
      v55 = v132;
      if (v106 <= 2)
      {
        goto LABEL_3;
      }
    }

    v62 = &v55[16 * v54];
    v63 = *(v62 - 8);
    v64 = *(v62 - 7);
    v68 = __OFSUB__(v64, v63);
    v65 = v64 - v63;
    if (v68)
    {
      goto LABEL_153;
    }

    v67 = *(v62 - 6);
    v66 = *(v62 - 5);
    v68 = __OFSUB__(v66, v67);
    v60 = v66 - v67;
    v61 = v68;
    if (v68)
    {
      goto LABEL_154;
    }

    v69 = &v10[16 * v54];
    v71 = *v69;
    v70 = *(v69 + 1);
    v68 = __OFSUB__(v70, v71);
    v72 = v70 - v71;
    if (v68)
    {
      goto LABEL_156;
    }

    v68 = __OFADD__(v60, v72);
    v73 = v60 + v72;
    if (v68)
    {
      goto LABEL_158;
    }

    if (v73 >= v65)
    {
      v91 = &v55[16 * v57];
      v93 = *v91;
      v92 = *(v91 + 1);
      v68 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v68)
      {
        goto LABEL_164;
      }

      if (v60 < v94)
      {
        v57 = v54 - 2;
      }

      goto LABEL_110;
    }

    goto LABEL_88;
  }

  v11 = a6;
LABEL_145:
  v123 = *a1;
  if (!*a1)
  {
    goto LABEL_174;
  }

  v124 = v11;

  sub_1D6CCA224(&v143, v123, a3, a5, v124);

LABEL_147:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1D6CCAC3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v8 = *a4;
    v9 = *a4 + 24 * a3 - 24;
    v10 = result - a3;
LABEL_5:
    v23 = a3;
    v11 = (v8 + 24 * a3);
    v12 = *v11;
    v13 = v11[1];
    v21 = v10;
    v22 = v9;
    while (1)
    {
      v14 = *v9;
      v15 = *(v9 + 8);
      if (v12 != a5 || v13 != a6)
      {
        result = sub_1D72646CC();
        if ((result & 1) == 0)
        {
          v16 = v14 == a5 && v15 == a6;
          if (v16 || (result = sub_1D72646CC(), (result & 1) != 0) || v12 == v14 && v13 == v15 || (result = sub_1D72646CC(), (result & 1) == 0))
          {
LABEL_4:
            a3 = v23 + 1;
            v9 = v22 + 24;
            v10 = v21 - 1;
            if (v23 + 1 == a2)
            {
              return result;
            }

            goto LABEL_5;
          }
        }
      }

      if (!v8)
      {
        break;
      }

      v17 = *(v9 + 32);
      v18 = *(v9 + 16);
      v12 = *(v9 + 24);
      *(v9 + 24) = *v9;
      *(v9 + 40) = v18;
      *v9 = v12;
      *(v9 + 8) = v17;
      v13 = v17;
      v9 -= 24;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D6CCADA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1D726449C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5E29730();
        v10 = sub_1D726276C();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;

      sub_1D6CCA3D0(v11, v12, a1, v8, a2, a3);

      *(v10 + 16) = 0;
      swift_bridgeObjectRelease_n();
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

    sub_1D6CCAC3C(0, v6, 1, a1, a2, a3);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D6CCAF00(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1D62FFD24(v6);
  }

  v7 = v6[2];
  v9[0] = (v6 + 4);
  v9[1] = v7;

  sub_1D6CCADA0(v9, a2, a3);

  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D6CCAFB4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v40 = *(a1 + 16);
  if (!v40)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = 0;
  v39 = a1 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v45[0] = *(v39 + 8 * v12);
    v15 = *a3;
    v45[14] = v45[0];
    sub_1D6EE5E70();

    sub_1D726327C();
    v20 = sub_1D6CC6040(a2, v45, v15, a4, a5, a6, a7, a8, v16, v17, v18, v19);

    v21 = v20 >> 62;
    if (v20 >> 62)
    {
      v22 = sub_1D7263BFC();
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v13 >> 62;
    if (v13 >> 62)
    {
      v38 = sub_1D7263BFC();
      v25 = v38 + v22;
      if (__OFADD__(v38, v22))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v24 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v23)
      {
        v26 = v13 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v23)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v13 = result;
    v26 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v21)
    {
      break;
    }

    v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v28 >> 1) - v27) < v22)
    {
      goto LABEL_36;
    }

    v44 = v13;
    v30 = v26 + 8 * v27 + 32;
    if (v21)
    {
      if (v29 < 1)
      {
        goto LABEL_38;
      }

      sub_1D6847030(0);
      sub_1D6CCCD08(&qword_1EC883210, sub_1D6847030);
      for (i = 0; i != v29; ++i)
      {
        v32 = sub_1D6D876E0(v45, i, v20);
        v34 = *v33;

        (v32)(v45, 0);
        *(v30 + 8 * i) = v34;
      }
    }

    else
    {
      type metadata accessor for DebugFormatLayoutTreeItem();
      swift_arrayInitWithCopy();
    }

    v13 = v44;
    if (v22 >= 1)
    {
      v35 = *(v26 + 16);
      v36 = __OFADD__(v35, v22);
      v37 = v35 + v22;
      if (v36)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v37;
    }

LABEL_4:
    if (++v12 == v40)
    {
      return v13;
    }
  }

  result = sub_1D7263BFC();
  v29 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v22 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_1D6CCB330(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = 0;
  v38 = a1 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v44[0] = *(v38 + 8 * v12);
    v44[14] = v44[0];
    sub_1D6EE5E70();

    sub_1D726327C();
    v19 = sub_1D6CC6040(a2, v44, a3 & 1, a4, a5, a6, a7, a8, v15, v16, v17, v18);

    v20 = v19 >> 62;
    if (v19 >> 62)
    {
      v21 = sub_1D7263BFC();
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v13 >> 62;
    if (v13 >> 62)
    {
      v37 = sub_1D7263BFC();
      v24 = v37 + v21;
      if (__OFADD__(v37, v21))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v23 + v21;
      if (__OFADD__(v23, v21))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v22)
      {
        v25 = v13 & 0xFFFFFFFFFFFFFF8;
        if (v24 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v22)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v13 = result;
    v25 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v20)
    {
      break;
    }

    v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v27 >> 1) - v26) < v21)
    {
      goto LABEL_36;
    }

    v43 = v13;
    v29 = v25 + 8 * v26 + 32;
    if (v20)
    {
      if (v28 < 1)
      {
        goto LABEL_38;
      }

      sub_1D6847030(0);
      sub_1D6CCCD08(&qword_1EC883210, sub_1D6847030);
      for (i = 0; i != v28; ++i)
      {
        v31 = sub_1D6D876E0(v44, i, v19);
        v33 = *v32;

        (v31)(v44, 0);
        *(v29 + 8 * i) = v33;
      }
    }

    else
    {
      type metadata accessor for DebugFormatLayoutTreeItem();
      swift_arrayInitWithCopy();
    }

    v13 = v43;
    if (v21 >= 1)
    {
      v34 = *(v25 + 16);
      v35 = __OFADD__(v34, v21);
      v36 = v34 + v21;
      if (v35)
      {
        goto LABEL_37;
      }

      *(v25 + 16) = v36;
    }

LABEL_4:
    if (++v12 == v39)
    {
      return v13;
    }
  }

  result = sub_1D7263BFC();
  v28 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v21 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_1D6CCB6AC(uint64_t a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9, double a10, double a11)
{
  v42 = *(a1 + 16);
  if (!v42)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = 0;
  v41 = a1 + 32;
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v45[0] = *(v41 + 8 * v19);

    v22 = sub_1D6CC6040(a2, v45, 1, a3, a4, a5, a6, a7, a8, a9, a10, a11);

    v23 = v22 >> 62;
    if (v22 >> 62)
    {
      v24 = sub_1D7263BFC();
    }

    else
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v20 >> 62;
    if (v20 >> 62)
    {
      v40 = sub_1D7263BFC();
      v27 = v40 + v24;
      if (__OFADD__(v40, v24))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v26 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v26 + v24;
      if (__OFADD__(v26, v24))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v25)
      {
        v28 = v20 & 0xFFFFFFFFFFFFFF8;
        if (v27 <= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v25)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v20 = result;
    v28 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (v23)
    {
      break;
    }

    v31 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v30 >> 1) - v29) < v24)
    {
      goto LABEL_36;
    }

    v46 = v24;
    v32 = v28 + 8 * v29 + 32;
    if (v23)
    {
      if (v31 < 1)
      {
        goto LABEL_38;
      }

      sub_1D6847030(0);
      sub_1D6CCCD08(&qword_1EC883210, sub_1D6847030);
      for (i = 0; i != v31; ++i)
      {
        v34 = sub_1D6D876E0(v45, i, v22);
        v36 = *v35;

        (v34)(v45, 0);
        *(v32 + 8 * i) = v36;
      }
    }

    else
    {
      type metadata accessor for DebugFormatLayoutTreeItem();
      swift_arrayInitWithCopy();
    }

    if (v46 >= 1)
    {
      v37 = *(v28 + 16);
      v38 = __OFADD__(v37, v46);
      v39 = v37 + v46;
      if (v38)
      {
        goto LABEL_37;
      }

      *(v28 + 16) = v39;
    }

LABEL_4:
    if (++v19 == v42)
    {
      return v20;
    }
  }

  result = sub_1D7263BFC();
  v31 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v24 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_1D6CCB9F4(uint64_t a1, uint64_t a2)
{
  v191 = a1;
  v190 = type metadata accessor for DebugFormatLayoutModel();
  MEMORY[0x1EEE9AC00](v190, v4);
  v185 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v184 = &v169 - v8;
  v9 = type metadata accessor for FeedItemSupplementaryAttributes();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v189 = &v169 - v16;
  sub_1D6CCCC8C();
  v174 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v173 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FormatItemNodeLayoutContext();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v172 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for DebugFormatLayoutOrderingModel();
  v181 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194, v23);
  v183 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v186 = &v169 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v193 = &v169 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v195 = &v169 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v169 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v188 = &v169 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v171 = &v169 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v175 = &v169 - v46;
  sub_1D725894C();
  *(v2 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage_layoutResult) = a2;
  swift_beginAccess();
  LOBYTE(v197[0]) = 1;

  sub_1D726009C();
  swift_endAccess();
  v178 = v2;
  v179 = a2;
  v47 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 48);
  v182 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 40);
  v48 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 64);
  v177 = v10;
  if (v48)
  {
    v192 = *(v48 + 32);
  }

  else
  {
    type metadata accessor for FormatSourceMapCollection();
    v49 = swift_allocObject();
    v50 = MEMORY[0x1E69E7CC8];
    *(v49 + 16) = MEMORY[0x1E69E7CC8];
    *(v49 + 24) = v50;
    v192 = v49;
  }

  v51 = v182 + 64;
  v52 = 1 << *(v182 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v182 + 64);
  v55 = (v52 + 63) >> 6;
  swift_bridgeObjectRetain_n();

  v57 = 0;
  v180 = MEMORY[0x1E69E7CC0];
  v58 = v181;
  v187 = v9;
  while (v54)
  {
LABEL_7:
    v59 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    if (*(*(v182 + 56) + ((v57 << 9) | (8 * v59))) >> 60 == 7)
    {
      v176 = v47;
      v61 = swift_projectBox();
      v62 = v173;
      sub_1D6CCCD50(v61, v173, sub_1D6CCCC8C);
      v170 = *(v62 + *(v174 + 48));
      v63 = v62;
      v64 = v172;
      sub_1D6CCCF4C(v63, v172, type metadata accessor for FormatItemNodeLayoutContext);
      sub_1D6729DB0();
      v169 = *(v65 + 48);
      v66 = v64;
      v67 = v171;
      sub_1D6CCCF4C(v66, v171, type metadata accessor for FormatItemNodeLayoutContext);
      *(v67 + v169) = v170;
      swift_storeEnumTagMultiPayload();
      sub_1D6CCCF4C(v67, v175, type metadata accessor for DebugFormatLayoutOrderingModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v180 = sub_1D6995D9C(0, v180[2] + 1, 1, v180);
      }

      v69 = v180[2];
      v68 = v180[3];
      if (v69 >= v68 >> 1)
      {
        v180 = sub_1D6995D9C(v68 > 1, v69 + 1, 1, v180);
      }

      v70 = v180;
      v180[2] = v69 + 1;
      result = sub_1D6CCCF4C(v175, v70 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v69, type metadata accessor for DebugFormatLayoutOrderingModel);
      v47 = v176;
    }
  }

  while (1)
  {
    v60 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      return result;
    }

    if (v60 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v60);
    ++v57;
    if (v54)
    {
      v57 = v60;
      goto LABEL_7;
    }
  }

  v71 = *(v47 + 16);
  if (v71)
  {
    v72 = *(v177 + 80);
    v176 = v47;
    v73 = v47 + ((v72 + 32) & ~v72);
    v74 = *(v177 + 72);
    v75 = MEMORY[0x1E69E7CC0];
    do
    {
      v76 = v189;
      sub_1D6CCCD50(v73, v189, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D6CCCF4C(v76, v13, type metadata accessor for FeedItemSupplementaryAttributes);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v77 = *(v13 + 16);
        v78 = *(v13 + 5);
        *(v37 + 4) = *(v13 + 4);
        *(v37 + 5) = v78;
        v79 = *(v13 + 7);
        *(v37 + 6) = *(v13 + 6);
        *(v37 + 7) = v79;
        v80 = *(v13 + 1);
        *v37 = *v13;
        *(v37 + 1) = v80;
        v81 = *(v13 + 3);
        *(v37 + 2) = *(v13 + 2);
        *(v37 + 3) = v81;
        *(v37 + 16) = v77;
        swift_storeEnumTagMultiPayload();
        sub_1D6CCCF4C(v37, v188, type metadata accessor for DebugFormatLayoutOrderingModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_1D6995D9C(0, v75[2] + 1, 1, v75);
        }

        v83 = v75[2];
        v82 = v75[3];
        if (v83 >= v82 >> 1)
        {
          v75 = sub_1D6995D9C(v82 > 1, v83 + 1, 1, v75);
        }

        v75[2] = v83 + 1;
        sub_1D6CCCF4C(v188, v75 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v83, type metadata accessor for DebugFormatLayoutOrderingModel);
      }

      else
      {
        sub_1D6CCCDB8(v13, type metadata accessor for FeedItemSupplementaryAttributes);
      }

      v73 += v74;
      --v71;
    }

    while (v71);
  }

  else
  {

    v75 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7259E6C();
  v188 = v85;
  v189 = v84;
  *&v198 = v180;
  sub_1D69888D8(v75);
  sub_1D6CCCD08(&qword_1EC894CF0, type metadata accessor for DebugFormatLayoutOrderingModel);
  v86 = sub_1D72626AC();

  v87 = *(v86 + 16);
  v88 = v186;
  v89 = v193;
  if (v87)
  {
    v206 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v90 = *(v181 + 80);
    v182 = v86;
    v91 = v86 + ((v90 + 32) & ~v90);
    v187 = *(v181 + 72);
    do
    {
      v108 = v195;
      sub_1D6CCCD50(v91, v195, type metadata accessor for DebugFormatLayoutOrderingModel);
      sub_1D6CCCD50(v108, v89, type metadata accessor for DebugFormatLayoutOrderingModel);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v109 = *(v89 + 80);
        v202 = *(v89 + 64);
        v203 = v109;
        v110 = *(v89 + 112);
        v204 = *(v89 + 96);
        v205 = v110;
        v111 = *(v89 + 16);
        v198 = *v89;
        v199 = v111;
        v112 = *(v89 + 48);
        v200 = *(v89 + 32);
        v201 = v112;
        v113 = *(v89 + 128);
        sub_1D6729D5C(&v198);
        v114 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
        v115 = *(v113 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
        swift_beginAccess();
        v116 = v115[2];
        v117 = v115[3];
        v118 = v115[4];
        v119 = v115[5];
        v207.origin.x = v116;
        v207.origin.y = v117;
        v207.size.width = v118;
        v207.size.height = v119;
        if (CGRectGetMinY(v207) < 0.0)
        {
          v208.origin.x = v116;
          v208.origin.y = v117;
          v208.size.width = v118;
          v208.size.height = v119;
          CGRectGetMinY(v208);
        }

        v209.origin.x = v116;
        v209.origin.y = v117;
        v209.size.width = v118;
        v209.size.height = v119;
        if (CGRectGetMinX(v209) < 0.0)
        {
          v210.origin.x = v116;
          v210.origin.y = v117;
          v210.size.width = v118;
          v210.size.height = v119;
          CGRectGetMinX(v210);
        }

        sub_1D726327C();
        sub_1D72632BC();
        sub_1D72632AC();
        v121 = v120;
        v123 = v122;
        v125 = v124;
        v127 = v126;
        sub_1D6CCCD50(v195, v88, type metadata accessor for DebugFormatLayoutOrderingModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v128 = *(v88 + 80);
          v197[4] = *(v88 + 64);
          v197[5] = v128;
          v129 = *(v88 + 112);
          v197[6] = *(v88 + 96);
          v197[7] = v129;
          v130 = *(v88 + 16);
          v197[0] = *v88;
          v197[1] = v130;
          v131 = *(v88 + 48);
          v197[2] = *(v88 + 32);
          v197[3] = v131;
          v132 = *(v88 + 128);

          sub_1D6729D5C(v197);
          v133 = *(v132 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
          v134 = *(v133 + 48);
          v135 = *(v133 + 56);
        }

        else
        {
          sub_1D6729DB0();
          v158 = *(*(v88 + *(v157 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
          v134 = *(v158 + 48);
          v135 = *(v158 + 56);

          sub_1D6CCCDB8(v88, type metadata accessor for FormatItemNodeLayoutContext);
        }

        v159 = v184;
        v160 = v134;
        v161 = v192;
        sub_1D69F7E68(v160, v135, &v184[*(v190 + 32)]);

        *v159 = v113;
        *(v159 + 8) = 0u;
        *(v159 + 24) = 0u;
        *(v159 + 40) = 2;
        *(v159 + 48) = v116;
        *(v159 + 56) = v117;
        *(v159 + 64) = v118;
        *(v159 + 72) = v119;
        *(v159 + 96) = 0u;
        *(v159 + 112) = 0u;
        *(v159 + 80) = 0u;
        v162 = v188;
        *(v159 + 128) = v189;
        *(v159 + 136) = v162;
        v163 = *(*(v113 + v114) + 96);

        v164 = v191;

        v165 = sub_1D6CCB6AC(v163, v164, v161, v116, v117, v118, v119, v121, v123, v125, v127);

        type metadata accessor for DebugFormatLayoutTreeItem();
        v166 = swift_allocObject();
        sub_1D725894C();
        *(v166 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = 0;
        sub_1D6CCCD50(v159, v166 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
        swift_beginAccess();
        LOBYTE(v196) = 1;
        sub_1D726009C();
        swift_endAccess();
        *(v166 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) = 1;
        swift_beginAccess();
        v196 = v165;
        sub_1D6847030(0);
        sub_1D726009C();
        swift_endAccess();
        sub_1D6CCCDB8(v159, type metadata accessor for DebugFormatLayoutModel);
        sub_1D6CCCDB8(v195, type metadata accessor for DebugFormatLayoutOrderingModel);
        v89 = v193;
      }

      else
      {
        sub_1D6729DB0();
        v137 = v136;
        v138 = *(v89 + *(v136 + 48));
        v139 = OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
        v140 = *(v138 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
        swift_beginAccess();
        v141 = v140[2];
        v142 = v140[3];
        v143 = v140[4];
        v144 = v140[5];
        v211.origin.x = v141;
        v211.origin.y = v142;
        v211.size.width = v143;
        v211.size.height = v144;
        if (CGRectGetMinY(v211) < 0.0)
        {
          v212.origin.x = v141;
          v212.origin.y = v142;
          v212.size.width = v143;
          v212.size.height = v144;
          CGRectGetMinY(v212);
        }

        v213.origin.x = v141;
        v213.origin.y = v142;
        v213.size.width = v143;
        v213.size.height = v144;
        MinX = CGRectGetMinX(v213);
        v146 = v183;
        if (MinX < 0.0)
        {
          v214.origin.x = v141;
          v214.origin.y = v142;
          v214.size.width = v143;
          v214.size.height = v144;
          CGRectGetMinX(v214);
        }

        sub_1D726327C();
        sub_1D72632BC();
        sub_1D72632AC();
        v148 = v147;
        v150 = v149;
        v152 = v151;
        v154 = v153;
        sub_1D6CCCD50(v195, v146, type metadata accessor for DebugFormatLayoutOrderingModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v92 = *(v146 + 80);
          v202 = *(v146 + 64);
          v203 = v92;
          v93 = *(v146 + 112);
          v204 = *(v146 + 96);
          v205 = v93;
          v94 = *(v146 + 16);
          v198 = *v146;
          v199 = v94;
          v95 = *(v146 + 48);
          v200 = *(v146 + 32);
          v201 = v95;
          v96 = *(v146 + 128);

          sub_1D6729D5C(&v198);
          v97 = *(v96 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
          v98 = *(v97 + 48);
          v99 = *(v97 + 56);
        }

        else
        {
          v155 = *(*(v146 + *(v137 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
          v156 = v146;
          v98 = *(v155 + 48);
          v99 = *(v155 + 56);

          sub_1D6CCCDB8(v156, type metadata accessor for FormatItemNodeLayoutContext);
        }

        v100 = v185;
        v101 = v98;
        v102 = v192;
        sub_1D69F7E68(v101, v99, &v185[*(v190 + 32)]);

        *v100 = v138;
        *(v100 + 8) = 0u;
        *(v100 + 24) = 0u;
        *(v100 + 40) = 1;
        *(v100 + 48) = v141;
        *(v100 + 56) = v142;
        *(v100 + 64) = v143;
        *(v100 + 72) = v144;
        *(v100 + 96) = 0u;
        *(v100 + 112) = 0u;
        *(v100 + 80) = 0u;
        v103 = v188;
        *(v100 + 128) = v189;
        *(v100 + 136) = v103;
        v104 = *(*(v138 + v139) + 96);

        v105 = v191;

        v106 = sub_1D6CCB6AC(v104, v105, v102, v141, v142, v143, v144, v148, v150, v152, v154);

        type metadata accessor for DebugFormatLayoutTreeItem();
        v107 = swift_allocObject();
        sub_1D725894C();
        *(v107 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = 0;
        sub_1D6CCCD50(v100, v107 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
        swift_beginAccess();
        LOBYTE(v197[0]) = 1;
        sub_1D726009C();
        swift_endAccess();
        *(v107 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) = 1;
        swift_beginAccess();
        *&v197[0] = v106;
        sub_1D6847030(0);
        sub_1D726009C();
        swift_endAccess();
        sub_1D6CCCDB8(v100, type metadata accessor for DebugFormatLayoutModel);
        sub_1D6CCCDB8(v195, type metadata accessor for DebugFormatLayoutOrderingModel);
        v89 = v193;
        sub_1D6CCCDB8(v193, type metadata accessor for FormatItemNodeLayoutContext);
        v88 = v186;
      }

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v91 += v187;
      --v87;
    }

    while (v87);

    v167 = v206;
  }

  else
  {

    v167 = MEMORY[0x1E69E7CC0];
  }

  v168 = v178;
  swift_beginAccess();
  *&v197[0] = v167;
  sub_1D6847030(0);
  sub_1D726009C();
  swift_endAccess();

  return v168;
}

void sub_1D6CCCC8C()
{
  if (!qword_1EDF22520[0])
  {
    type metadata accessor for FormatItemNodeLayoutContext();
    type metadata accessor for FormatItemNodeDataLayoutAttributes();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_1EDF22520);
    }
  }
}

uint64_t sub_1D6CCCD08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6CCCD50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6CCCDB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6CCCE18()
{
  if (!qword_1EDF2B540[0])
  {
    type metadata accessor for FormatButtonNodeData();
    sub_1D6CC81D4(255, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDF2B540);
    }
  }
}

uint64_t sub_1D6CCCEB8(uint64_t a1, uint64_t a2)
{
  sub_1D6CC81D4(0, &unk_1EC890018, type metadata accessor for FormatSourceMapEntry, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CCCF4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6CCCFD0(uint64_t a1, uint64_t a2)
{
  sub_1D6CC81D4(0, &qword_1EDF065A8, type metadata accessor for FormatStateViewNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6CCD0AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1D6CCD0FC(uint64_t a1)
{
  if (!*v1)
  {
    v2 = *(a1 + *(type metadata accessor for FeedHeadline(0) + 56));
    if (v2)
    {
      v3 = sel_duration;
      goto LABEL_6;
    }

    return 0.0;
  }

  if (*v1 != 1)
  {
    v5 = *(a1 + 40);
    v6 = [v5 sourceChannel];
    v7 = 0.0;
    if (v6)
    {
      if ([v6 allowsRecipes] && (v8 = objc_msgSend(v5, sel_recipeIDs)) != 0)
      {
        v9 = v8;
        v10 = sub_1D726267C();

        swift_unknownObjectRelease();
        v11 = *(v10 + 16);

        return v11;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return v7;
  }

  v2 = *(a1 + 40);
  v3 = sel_videoDuration;
LABEL_6:

  [v2 v3];
  return result;
}

uint64_t sub_1D6CCD23C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7275446F65646976;
  if (v2 == 1)
  {
    v4 = 0xED00006E6F697461;
  }

  else
  {
    v3 = 0x6F43657069636572;
    v4 = 0xEB00000000746E75;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7275446B63617274;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006E6F697461;
  }

  v7 = 0x7275446F65646976;
  if (*a2 == 1)
  {
    v8 = 0xED00006E6F697461;
  }

  else
  {
    v7 = 0x6F43657069636572;
    v8 = 0xEB00000000746E75;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7275446B63617274;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006E6F697461;
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

uint64_t sub_1D6CCD350()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6CCD404()
{
  sub_1D72621EC();
}

uint64_t sub_1D6CCD4A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6CCD554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6CCDC80();
  *a1 = result;
  return result;
}

void sub_1D6CCD584(uint64_t *a1@<X8>)
{
  v2 = 0xED00006E6F697461;
  v3 = *v1;
  v4 = 0x7275446F65646976;
  v5 = 0xEB00000000746E75;
  if (v3 == 1)
  {
    v5 = 0xED00006E6F697461;
  }

  else
  {
    v4 = 0x6F43657069636572;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x7275446B63617274;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t FormatHeadlineBinding.Float.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6CCD72C()
{
  result = qword_1EC894CF8;
  if (!qword_1EC894CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894CF8);
  }

  return result;
}

unint64_t sub_1D6CCD780(uint64_t a1)
{
  result = sub_1D6CCD7A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CCD7A8()
{
  result = qword_1EC894D00;
  if (!qword_1EC894D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894D00);
  }

  return result;
}

unint64_t sub_1D6CCD7FC(void *a1)
{
  a1[1] = sub_1D66597F0();
  a1[2] = sub_1D66FE674();
  result = sub_1D6CCD72C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CCD888()
{
  result = qword_1EC894D08;
  if (!qword_1EC894D08)
  {
    sub_1D6CCD8E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894D08);
  }

  return result;
}

void sub_1D6CCD8E0()
{
  if (!qword_1EC894D10)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894D10);
    }
  }
}

unint64_t sub_1D6CCD934()
{
  result = qword_1EC894D18;
  if (!qword_1EC894D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894D18);
  }

  return result;
}

unint64_t sub_1D6CCD988()
{
  result = qword_1EDF29768;
  if (!qword_1EDF29768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29768);
  }

  return result;
}

uint64_t sub_1D6CCD9DC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (v33 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v17 = v33 - v16;
  if (!*a1)
  {
    v19 = v14;
    sub_1D5C0C74C(a2, v33 - v16);
    v20 = *&v17[*(v19 + 56)];
    if (v20)
    {
      [v20 duration];
      v22 = v21;
    }

    else
    {
      v22 = 0.0;
    }

    v29 = 0x7544206B63617254;
    v30 = 0xEE006E6F69746172;
    goto LABEL_15;
  }

  if (*a1 != 1)
  {
    v17 = v15;
    sub_1D5C0C74C(a2, v15);
    v23 = *(v17 + 5);
    v24 = [v23 sourceChannel];
    if (v24)
    {
      if ([v24 allowsRecipes])
      {
        v25 = [v23 recipeIDs];
        if (v25)
        {
          v26 = v25;
          v27 = sub_1D726267C();

          swift_unknownObjectRelease();
          v28 = *(v27 + 16);

          v22 = v28;
LABEL_12:
          v29 = 0x4320657069636552;
          v30 = 0xEC000000746E756FLL;
LABEL_15:
          sub_1D711A80C(v29, v30, *&v22, 0, a3);
          goto LABEL_16;
        }
      }

      swift_unknownObjectRelease();
    }

    v22 = 0.0;
    goto LABEL_12;
  }

  sub_1D5C0C74C(a2, v11);
  [v11[5] videoDuration];
  sub_1D711A80C(0x7544206F65646956, 0xEE006E6F69746172, v18, 0, a3);
  v17 = v11;
LABEL_16:
  sub_1D5C10040(v17);
  v31 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v31 - 8) + 56))(a3, 0, 1, v31);
}

uint64_t sub_1D6CCDC80()
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

uint64_t type metadata accessor for DebugFormatCanvasFrameView()
{
  result = qword_1EC894D28;
  if (!qword_1EC894D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CCDEF0()
{
  result = sub_1D7259B3C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6CCDF90(uint64_t a1)
{
  sub_1D5B6D404(0, &qword_1EDF0BB68, type metadata accessor for WebEmbedDatastoreCacheKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v38 = &v36 - v4;
  v39 = sub_1D72585BC();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v6);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebEmbedDatastoreCacheKey();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v36 - v22;
  sub_1D6CD349C(a1, v15, type metadata accessor for WebEmbedDataVisualization);
  sub_1D6CD349C(v15, v19, type metadata accessor for WebEmbedDataVisualization);
  v45 = sub_1D6D28818();

  sub_1D6CD315C(&v45);

  sub_1D6CD4D24(v15, type metadata accessor for WebEmbedDataVisualization);
  *&v19[*(v16 + 20)] = v45;
  sub_1D6CD4CBC(v19, v23, type metadata accessor for WebEmbedDatastoreCacheKey);
  v24 = sub_1D6D28818();
  v25 = *(v24 + 16);
  if (v25)
  {
    v27 = *(v5 + 16);
    v26 = v5 + 16;
    v28 = *(v26 + 64);
    v36 = v24;
    v29 = v24 + ((v28 + 32) & ~v28);
    v41 = *(v26 + 56);
    v42 = v27;
    v30 = v37;
    v31 = v38;
    v32 = v39;
    v43 = v23;
    v40 = (v26 - 8);
    do
    {
      v33 = v42;
      v42(v11, v29, v32);

      sub_1D725B86C();

      v34 = v44;
      if (!v44)
      {
        v34 = MEMORY[0x1E69E7CD0];
      }

      v45 = v34;
      sub_1D62CFC98(v43, v31);
      sub_1D6CD512C(v31, &qword_1EDF0BB68, type metadata accessor for WebEmbedDatastoreCacheKey, MEMORY[0x1E69E6720]);
      v33(v30, v11, v32);
      v44 = v45;

      sub_1D725B87C();

      (*v40)(v11, v32);
      v29 += v41;
      --v25;
    }

    while (v25);

    v23 = v43;
  }

  else
  {
  }

  return sub_1D6CD4D24(v23, type metadata accessor for WebEmbedDatastoreCacheKey);
}

void *sub_1D6CCE3D8(uint64_t a1)
{
  v154 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v154, v2);
  v4 = (&v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v138 - v7);
  v9 = type metadata accessor for WebEmbedDatastoreUpdate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v145 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v144 = &v138 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v143 = &v138 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v142 = &v138 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v141 = &v138 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v140 = &v138 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v138 - v32;
  v34 = *a1;
  v153 = *(a1 + 8);
  v36 = v35;
  result = sub_1D725B7FC();
  v38 = v10;
  v39 = 0;
  v41 = result + 8;
  v40 = result[8];
  v155 = result;
  v42 = 1 << *(result + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v40;
  v45 = (v42 + 63) >> 6;
  v150 = v4;
  v151 = MEMORY[0x1E69E7CC0];
  v147 = v33;
  v148 = v8;
  v146 = v38;
  v156 = v34;
  v149 = v36;
  while (v44)
  {
LABEL_10:
    v47 = v155[7];
    v152 = *(v38 + 72);
    sub_1D6CD349C(v47 + v152 * (__clz(__rbit64(v44)) | (v39 << 6)), v33, type metadata accessor for WebEmbedDatastoreUpdate);
    sub_1D6CD4CBC(v33, v36, type metadata accessor for WebEmbedDatastoreUpdate);
    sub_1D6CD349C(v36, v8, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      swift_unknownObjectRetain();
      sub_1D6CD4D24(v8, type metadata accessor for WebEmbedDataVisualization);
      v48 = 0xF000000000000007;
    }

    else
    {
      v48 = *v8;
      swift_unknownObjectRetain();
    }

    v44 &= v44 - 1;
    if (v153 > 2)
    {
      if (v153 == 3)
      {
        if ((~v48 & 0xF000000000000007) != 0)
        {
          if (v48 >> 61 != 6)
          {
            goto LABEL_56;
          }

          v77 = *((v48 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v78 = [v156 identifier];
          v79 = sub_1D726207C();
          v81 = v80;

          v138 = v77;
          v82 = [*(v77 + 48) identifier];
          v83 = sub_1D726207C();
          v85 = v84;

          if (v79 == v83 && v81 == v85)
          {

            v38 = v146;
            v36 = v149;
LABEL_74:
            sub_1D6CD349C(v36, v143, type metadata accessor for WebEmbedDatastoreUpdate);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v33 = v147;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v151 = sub_1D69932F0(0, v151[2] + 1, 1, v151);
            }

            v117 = v151[2];
            v116 = v151[3];
            v139 = v48;
            if (v117 >= v116 >> 1)
            {
              v151 = sub_1D69932F0(v116 > 1, v117 + 1, 1, v151);
            }

            swift_unknownObjectRelease();

            sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
            v118 = v151;
            v151[2] = v117 + 1;
            v119 = v118 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v117 * v152;
            v120 = v143;
            goto LABEL_97;
          }

          v87 = sub_1D72646CC();

          v38 = v146;
          v36 = v149;
          if (v87)
          {
            goto LABEL_74;
          }

          goto LABEL_55;
        }

LABEL_4:
        sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
        result = swift_unknownObjectRelease();
      }

      else if (v153 == 4)
      {
        if ((~v48 & 0xF000000000000007) == 0)
        {
          goto LABEL_4;
        }

        if (v48 >> 61 != 5)
        {
          goto LABEL_56;
        }

        v60 = *((v48 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v61 = [v156 identifier];
        v62 = sub_1D726207C();
        v64 = v63;

        v138 = v60;
        v65 = [*(v60 + 48) identifier];
        v66 = sub_1D726207C();
        v68 = v67;

        if (v62 == v66 && v64 == v68)
        {

          v33 = v147;
LABEL_86:
          v36 = v149;
          sub_1D6CD349C(v149, v144, type metadata accessor for WebEmbedDatastoreUpdate);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v151 = sub_1D69932F0(0, v151[2] + 1, 1, v151);
          }

          v38 = v146;
          v126 = v151[2];
          v125 = v151[3];
          v139 = v48;
          if (v126 >= v125 >> 1)
          {
            v151 = sub_1D69932F0(v125 > 1, v126 + 1, 1, v151);
          }

          swift_unknownObjectRelease();

          sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
          v127 = v151;
          v151[2] = v126 + 1;
          v119 = v127 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v126 * v152;
          v120 = v144;
          goto LABEL_97;
        }

        v70 = sub_1D72646CC();

        v33 = v147;
        if (v70)
        {
          goto LABEL_86;
        }

        v36 = v149;
        sub_1D6CD4D24(v149, type metadata accessor for WebEmbedDatastoreUpdate);
        swift_unknownObjectRelease();

        result = sub_1D5FC5034(v48);
        v4 = v150;
        v8 = v148;
        v38 = v146;
      }

      else
      {
        sub_1D5FC5034(v48);
        v99 = [v156 identifier];
        v139 = sub_1D726207C();
        v101 = v100;

        sub_1D6CD349C(v36, v4, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D6CD4D24(v4, type metadata accessor for WebEmbedDataVisualization);

          swift_unknownObjectRelease();
          goto LABEL_109;
        }

        v102 = *v4;
        v103 = *v4 >> 61;
        if (v103 > 2)
        {
          v104 = *(*((v102 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 48);
          swift_unknownObjectRetain();

          goto LABEL_61;
        }

        if (v103)
        {

          swift_unknownObjectRelease();

          goto LABEL_109;
        }

        v104 = *(*(v102 + 16) + 56);
        swift_unknownObjectRetain();

        if (v104)
        {
LABEL_61:
          v105 = [v104 identifier];
          swift_unknownObjectRelease();
          v106 = sub_1D726207C();
          v108 = v107;

          if (v139 == v106 && v101 == v108)
          {

            goto LABEL_68;
          }

          v109 = sub_1D72646CC();

          v38 = v146;
          if ((v109 & 1) == 0)
          {
            goto LABEL_108;
          }

LABEL_68:
          v36 = v149;
          sub_1D6CD349C(v149, v145, type metadata accessor for WebEmbedDatastoreUpdate);
          v110 = swift_isUniquelyReferenced_nonNull_native();
          v4 = v150;
          v33 = v147;
          if ((v110 & 1) == 0)
          {
            v151 = sub_1D69932F0(0, v151[2] + 1, 1, v151);
          }

          v112 = v151[2];
          v111 = v151[3];
          if (v112 >= v111 >> 1)
          {
            v151 = sub_1D69932F0(v111 > 1, v112 + 1, 1, v151);
          }

          swift_unknownObjectRelease();
          sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
          v113 = v151;
          v151[2] = v112 + 1;
          v114 = v113 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + v112 * v152;
          v38 = v146;
          result = sub_1D6CD4CBC(v145, v114, type metadata accessor for WebEmbedDatastoreUpdate);
          v8 = v148;
        }

        else
        {

LABEL_108:
          swift_unknownObjectRelease();
          v4 = v150;
LABEL_109:
          v36 = v149;
          v33 = v147;
          result = sub_1D6CD4D24(v149, type metadata accessor for WebEmbedDatastoreUpdate);
          v8 = v148;
        }
      }
    }

    else if (v153)
    {
      if (v153 == 1)
      {
        if ((~v48 & 0xF000000000000007) == 0)
        {
          goto LABEL_4;
        }

        if (v48 >> 61 == 3)
        {
          v49 = *((v48 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v50 = [v156 identifier];
          v51 = sub_1D726207C();
          v53 = v52;

          v138 = v49;
          v54 = [*(v49 + 48) identifier];
          v55 = sub_1D726207C();
          v57 = v56;

          if (v51 == v55 && v53 == v57)
          {

            v38 = v146;
            v36 = v149;
LABEL_80:
            sub_1D6CD349C(v36, v141, type metadata accessor for WebEmbedDatastoreUpdate);
            v121 = swift_isUniquelyReferenced_nonNull_native();
            v33 = v147;
            if ((v121 & 1) == 0)
            {
              v151 = sub_1D69932F0(0, v151[2] + 1, 1, v151);
            }

            v123 = v151[2];
            v122 = v151[3];
            v139 = v48;
            if (v123 >= v122 >> 1)
            {
              v151 = sub_1D69932F0(v122 > 1, v123 + 1, 1, v151);
            }

            swift_unknownObjectRelease();

            sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
            v124 = v151;
            v151[2] = v123 + 1;
            v119 = v124 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v123 * v152;
            v120 = v141;
            goto LABEL_97;
          }

          v59 = sub_1D72646CC();

          v38 = v146;
          v36 = v149;
          if (v59)
          {
            goto LABEL_80;
          }

          goto LABEL_55;
        }

LABEL_56:
        sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
        swift_unknownObjectRelease();
        v4 = v150;
        result = sub_1D5FC5034(v48);
      }

      else
      {
        if ((~v48 & 0xF000000000000007) == 0)
        {
          goto LABEL_4;
        }

        if (v48 >> 61 != 4)
        {
          goto LABEL_56;
        }

        v88 = *((v48 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v89 = [v156 identifier];
        v90 = sub_1D726207C();
        v92 = v91;

        v138 = v88;
        v93 = [*(v88 + 48) identifier];
        v94 = sub_1D726207C();
        v96 = v95;

        if (v90 == v94 && v92 == v96)
        {

          v38 = v146;
          v36 = v149;
LABEL_92:
          sub_1D6CD349C(v36, v142, type metadata accessor for WebEmbedDatastoreUpdate);
          v128 = swift_isUniquelyReferenced_nonNull_native();
          v33 = v147;
          if ((v128 & 1) == 0)
          {
            v151 = sub_1D69932F0(0, v151[2] + 1, 1, v151);
          }

          v130 = v151[2];
          v129 = v151[3];
          v139 = v48;
          if (v130 >= v129 >> 1)
          {
            v151 = sub_1D69932F0(v129 > 1, v130 + 1, 1, v151);
          }

          swift_unknownObjectRelease();

          sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
          v131 = v151;
          v151[2] = v130 + 1;
          v119 = v131 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v130 * v152;
          v120 = v142;
LABEL_97:
          sub_1D6CD4CBC(v120, v119, type metadata accessor for WebEmbedDatastoreUpdate);
          v132 = v139;
          goto LABEL_98;
        }

        v98 = sub_1D72646CC();

        v38 = v146;
        v36 = v149;
        if (v98)
        {
          goto LABEL_92;
        }

LABEL_55:
        sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
        swift_unknownObjectRelease();

        result = sub_1D5FC5034(v48);
        v4 = v150;
        v33 = v147;
        v8 = v148;
      }
    }

    else
    {
      if ((~v48 & 0xF000000000000007) == 0)
      {
        goto LABEL_4;
      }

      if (v48 >> 61)
      {
        sub_1D6CD4D24(v36, type metadata accessor for WebEmbedDatastoreUpdate);
        swift_unknownObjectRelease();
        result = sub_1D5FC5034(v48);
        v38 = v146;
      }

      else
      {
        v71 = *(v48 + 16);

        v72 = [v156 UMCCanonicalID];
        if (!v72)
        {
          swift_unknownObjectRelease();

          goto LABEL_111;
        }

        v73 = v72;
        v74 = sub_1D726207C();
        v76 = v75;

        if (v74 == *(v71 + 40) && v76 == *(v71 + 48))
        {

          v33 = v147;
LABEL_101:
          sub_1D6CD349C(v149, v140, type metadata accessor for WebEmbedDatastoreUpdate);
          v134 = swift_isUniquelyReferenced_nonNull_native();
          v38 = v146;
          if ((v134 & 1) == 0)
          {
            v151 = sub_1D69932F0(0, v151[2] + 1, 1, v151);
          }

          v136 = v151[2];
          v135 = v151[3];
          v138 = v136 + 1;
          if (v136 >= v135 >> 1)
          {
            v151 = sub_1D69932F0(v135 > 1, v136 + 1, 1, v151);
          }

          swift_unknownObjectRelease();

          v36 = v149;
          sub_1D6CD4D24(v149, type metadata accessor for WebEmbedDatastoreUpdate);
          v137 = v151;
          v151[2] = v138;
          sub_1D6CD4CBC(v140, v137 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v136 * v152, type metadata accessor for WebEmbedDatastoreUpdate);
          v132 = v48;
LABEL_98:
          result = sub_1D5FC5034(v132);
          v4 = v150;
          v8 = v148;
        }

        else
        {
          v133 = sub_1D72646CC();

          v33 = v147;
          if (v133)
          {
            goto LABEL_101;
          }

          swift_unknownObjectRelease();

          v4 = v150;
          v8 = v148;
LABEL_111:
          v38 = v146;
          v36 = v149;
          sub_1D6CD4D24(v149, type metadata accessor for WebEmbedDatastoreUpdate);
          result = sub_1D5FC5034(v48);
        }
      }
    }
  }

  while (1)
  {
    v46 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v46 >= v45)
    {

      return v151;
    }

    v44 = v41[v46];
    ++v39;
    if (v44)
    {
      v39 = v46;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1D6CCF50C(char *a1)
{
  v3 = sub_1D725891C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6D404(0, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v37 - v10;
  v12 = sub_1D72585BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *(a1 + 1);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v39 = v1;
    v40 = v17;
    v42 = *(v1 + 32);
    v20 = type metadata accessor for WebEmbedDataVisualizationDataResult(0);
    v37 = v4;
    v38 = v3;
    v21 = v7;
    v22 = v20;
    v23 = *(v20 + 24);
    v24 = *(v13 + 16);
    v24(v16, &a1[v23], v12);
    v25 = *(a1 + 2);
    v26 = type metadata accessor for WebEmbedDataSourceJson();
    v41 = v16;
    v27 = v26;
    v24(&v11[*(v26 + 32)], &a1[v23], v12);
    v28 = *(v22 + 28);
    v29 = v27[9];
    v30 = sub_1D72577EC();
    (*(*(v30 - 8) + 16))(&v11[v29], &a1[v28], v30);
    v31 = *&a1[*(v22 + 32)];

    v32 = v31;
    sub_1D725890C();
    v34 = v37;
    v33 = v38;
    (*(v37 + 16))(v11, v21, v38);
    *&v11[v27[5]] = v25;
    sub_1D725880C();
    (*(v34 + 8))(v21, v33);
    v35 = &v11[v27[6]];
    *v35 = v40;
    *(v35 + 1) = v18;
    *&v11[v27[10]] = v32;
    v36 = type metadata accessor for WebEmbedDataSourceCacheEntry();
    swift_storeEnumTagMultiPayload();
    (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
    sub_1D725B87C();
    sub_1D6CD1620();
  }
}

uint64_t sub_1D6CCF888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v5 = sub_1D72585BC();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6D404(0, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for WebEmbedDataSourceCacheEntry();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v28 - v23;
  sub_1D725B86C();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1D6CD512C(v15, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  }

  else
  {
    v29 = a2;
    sub_1D6CD4CBC(v15, v24, type metadata accessor for WebEmbedDataSourceCacheEntry);
    sub_1D6CD4CBC(v24, v20, type metadata accessor for WebEmbedDataSourceCacheEntry);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1D6CD4D24(v20, type metadata accessor for WebEmbedDataSourceCacheEntry);
    a2 = v29;
    if (EnumCaseMultiPayload != 1)
    {
      return result;
    }
  }

  (*(v30 + 16))(v32, a1, v31);
  v27 = v33;
  *v11 = a2;
  v11[1] = v27;
  swift_storeEnumTagMultiPayload();
  (*(v17 + 56))(v11, 0, 1, v16);

  sub_1D725B87C();
  return sub_1D6CD1620();
}

uint64_t sub_1D6CCFBEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D6CD349C(a3, a1, type metadata accessor for WebEmbedDataVisualization);
  *a2 = *(a4 + *(type metadata accessor for WebEmbedDatastoreUpdate() + 20));
}

uint64_t sub_1D6CCFC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[11] = a2;
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B6D404(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_1D5B6D404(0, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, v5);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for WebEmbedDatastoreCacheKey();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for WebEmbedDataVisualization();
  v4[20] = v6;
  v7 = *(v6 - 8);
  v4[21] = v7;
  v4[22] = *(v7 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6CCFE3C, 0, 0);
}

uint64_t sub_1D6CCFE3C()
{
  v48 = v0;
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 168);
    v46 = *(v0 + 136);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v43 = (v4 + 40) & ~v4;
    v45 = *(v3 + 72);
    do
    {
      v9 = *(v0 + 200);
      v8 = *(v0 + 208);
      v10 = *(v0 + 192);
      v11 = *(v0 + 144);
      sub_1D6CD349C(v5, v8, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6CD06D0(v8);
      sub_1D6CD349C(v8, v9, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6CD349C(v9, v11, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6CD349C(v9, v10, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = *(v0 + 192);
        v13 = sub_1D6D2968C();
        v14 = sub_1D6D29D78();
        v47 = v13;
        sub_1D6985118(v14);
        *(v0 + 72) = v47;
        v15 = MEMORY[0x1E6968FB0];
        sub_1D5B6D404(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
        sub_1D72585BC();
        sub_1D5B6D594(&qword_1EDF053F0, &qword_1EDF05400, v15);
        sub_1D5B6CE14(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
        v16 = sub_1D72623CC();

        sub_1D6CD4D24(v12, type metadata accessor for WebEmbedDataVisualization);
      }

      else
      {
        v17 = **(v0 + 192);
        if (v17 >> 61 == 2)
        {
          v16 = *(*((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls);
        }

        else
        {
          v18 = sub_1D6F86D04();
          v19 = sub_1D6F87060();
          v47 = v18;
          sub_1D6985118(v19);
          *(v0 + 80) = v47;
          v20 = MEMORY[0x1E6968FB0];
          sub_1D5B6D404(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
          sub_1D72585BC();
          sub_1D5B6D594(&qword_1EDF053F0, &qword_1EDF05400, v20);
          sub_1D5B6CE14(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
          v16 = sub_1D72623CC();
        }
      }

      v47 = v16;

      sub_1D6CD315C(&v47);
      v21 = *(v0 + 200);
      v23 = *(v0 + 144);
      v22 = *(v0 + 152);
      v24 = *(v0 + 128);

      sub_1D6CD4D24(v21, type metadata accessor for WebEmbedDataVisualization);
      *(v23 + *(v46 + 20)) = v47;
      sub_1D6CD4CBC(v23, v22, type metadata accessor for WebEmbedDatastoreCacheKey);
      sub_1D725B86C();
      sub_1D6CD4D24(v22, type metadata accessor for WebEmbedDatastoreCacheKey);
      v25 = type metadata accessor for WebEmbedDatastoreUpdate();
      v26 = (*(*(v25 - 8) + 48))(v24, 1, v25);
      sub_1D6CD512C(v24, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
      if (v26 == 1)
      {
        v44 = v2;
        v27 = *(v0 + 208);
        v28 = *(v0 + 184);
        v29 = *(v0 + 112);
        v30 = *(v0 + 120);
        v31 = *(v0 + 104);
        v32 = sub_1D726294C();
        v33 = *(v32 - 8);
        (*(v33 + 56))(v30, 1, 1, v32);
        sub_1D6CD349C(v27, v28, type metadata accessor for WebEmbedDataVisualization);
        v34 = swift_allocObject();
        v34[2] = 0;
        v34[3] = 0;
        v34[4] = v31;
        sub_1D6CD4CBC(v28, v34 + v43, type metadata accessor for WebEmbedDataVisualization);
        sub_1D6CD3504(v30, v29, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
        LODWORD(v28) = (*(v33 + 48))(v29, 1, v32);

        v35 = *(v0 + 112);
        if (v28 == 1)
        {
          sub_1D6CD512C(*(v0 + 112), &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
        }

        else
        {
          sub_1D726293C();
          (*(v33 + 8))(v35, v32);
        }

        if (v34[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v36 = sub_1D726285C();
          v38 = v37;
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        v39 = **(v0 + 88);
        v40 = swift_allocObject();
        *(v40 + 16) = &unk_1D7348428;
        *(v40 + 24) = v34;

        if (v38 | v36)
        {
          v6 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v36;
          *(v0 + 40) = v38;
        }

        else
        {
          v6 = 0;
        }

        v7 = *(v0 + 120);
        *(v0 + 48) = 1;
        *(v0 + 56) = v6;
        *(v0 + 64) = v39;
        swift_task_create();

        sub_1D6CD512C(v7, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
        v2 = v44;
      }

      sub_1D6CD4D24(*(v0 + 208), type metadata accessor for WebEmbedDataVisualization);
      v5 += v45;
      --v2;
    }

    while (v2);
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1D6CD06D0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for WebEmbedDatastoreCacheKey();
  MEMORY[0x1EEE9AC00](v46, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v45 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v44 = &v36 - v16;
  v17 = sub_1D72585BC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v43 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v36 - v23;
  v47 = a1;
  v25 = sub_1D6D28818();
  v42 = *(v25 + 16);
  if (v42)
  {
    v40 = v18;
    v41 = v2;
    v26 = 0;
    v38 = v25 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v39 = v25;
    v36 = v18 + 16;
    v37 = (v18 + 8);
    while (v26 < *(v25 + 16))
    {
      v27 = v38 + *(v18 + 72) * v26;
      v48 = *(v18 + 16);
      v48(v24, v27, v17);

      sub_1D725B86C();

      v28 = v49;
      if (!v49)
      {
        v28 = MEMORY[0x1E69E7CD0];
      }

      v50 = v28;
      sub_1D6CD349C(v47, v7, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6CD349C(v7, v10, type metadata accessor for WebEmbedDataVisualization);
      v49 = sub_1D6D28818();

      sub_1D6CD315C(&v49);

      ++v26;
      sub_1D6CD4D24(v7, type metadata accessor for WebEmbedDataVisualization);
      *&v10[*(v46 + 20)] = v49;
      v29 = v10;
      v30 = v7;
      v31 = v10;
      v32 = v45;
      sub_1D6CD4CBC(v29, v45, type metadata accessor for WebEmbedDatastoreCacheKey);
      v33 = v44;
      v34 = v32;
      v10 = v31;
      v7 = v30;
      sub_1D5FEE2D0(v44, v34);
      sub_1D6CD4D24(v33, type metadata accessor for WebEmbedDatastoreCacheKey);
      v48(v43, v24, v17);
      v49 = v50;

      sub_1D725B87C();

      (*v37)(v24, v17);
      v25 = v39;
      v18 = v40;
      if (v42 == v26)
      {
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1D6CD0AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6CD0B1C, 0, 0);
}

uint64_t sub_1D6CD0B1C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1D6CD0C10;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, 0, 0, 0xD000000000000018, 0x80000001D73F09F0, sub_1D6CD33B4, v1, v4);
}

uint64_t sub_1D6CD0C10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D6CD0D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a2;
  sub_1D6CD33BC();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v10 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebEmbedDatastoreCacheKey();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CD349C(a3, v13, type metadata accessor for WebEmbedDataVisualization);
  sub_1D6CD349C(v13, v17, type metadata accessor for WebEmbedDataVisualization);
  v22 = sub_1D6D28818();

  sub_1D6CD315C(&v22);

  sub_1D6CD4D24(v13, type metadata accessor for WebEmbedDataVisualization);
  *&v17[*(v14 + 20)] = v22;
  (*(v7 + 16))(v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v18, v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1D6CD0FB8(v17, sub_1D6CD3420, v19);

  return sub_1D6CD4D24(v17, type metadata accessor for WebEmbedDatastoreCacheKey);
}

void sub_1D6CD0FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a3;
  v6 = type metadata accessor for WebEmbedDatastoreCacheKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_1D6CD349C(a1, v10, type metadata accessor for WebEmbedDatastoreCacheKey);
  v12 = *(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_1D6CD4CBC(v10, v13 + ((v12 + 24) & ~v12), type metadata accessor for WebEmbedDatastoreCacheKey);
  updated = type metadata accessor for WebEmbedDataSourceCacheUpdateOperation();
  v15 = objc_allocWithZone(updated);
  v16 = &v15[qword_1EDF06600];
  *v16 = sub_1D6CD3480;
  v16[1] = v13;
  v26.receiver = v15;
  v26.super_class = updated;
  v17 = objc_msgSendSuper2(&v26, sel_init);
  v18 = swift_allocObject();
  swift_weakInit();
  sub_1D6CD349C(a1, v10, type metadata accessor for WebEmbedDatastoreCacheKey);
  v19 = (v12 + 40) & ~v12;
  v20 = swift_allocObject();
  v22 = v24;
  v21 = v25;
  v20[2] = v24;
  v20[3] = v21;
  v20[4] = v18;
  sub_1D6CD4CBC(v10, v20 + v19, type metadata accessor for WebEmbedDatastoreCacheKey);
  v23 = v17;
  sub_1D5DEA510(v22);
  sub_1D725ACDC();

  [*(v4 + 64) addOperation_];
}

uint64_t sub_1D6CD1214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D5B6D404(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v18 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = sub_1D726294C();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = sub_1D5DF743C;
  v16[7] = v14;

  sub_1D6BD1334(0, 0, v13, &unk_1D7348408, v16);
}

uint64_t sub_1D6CD1398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D6CD13BC, 0, 0);
}

uint64_t sub_1D6CD13BC()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1D6CD14A4;
  v3 = MEMORY[0x1E69E7CA8] + 8;
  v4 = MEMORY[0x1E69E7CA8] + 8;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v2, v3, v4, 0, 0, &unk_1D7348418, v1, v5);
}

uint64_t sub_1D6CD14A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6CD15BC, 0, 0);
}

uint64_t sub_1D6CD15BC()
{
  (*(v0 + 32))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6CD1620()
{
  v1 = type metadata accessor for WebEmbedDatastoreCacheKey();
  v41 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v36 - v6;
  v40 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v38 = &v36 - v10;
  v46 = v0;

  sub_1D725B86C();

  if (v48)
  {
    v12 = 0;
    v42 = v48;
    v13 = *(v48 + 56);
    v36 = v48 + 56;
    v14 = 1 << *(v48 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    for (i = v17; v16; v17 = i)
    {
      v18 = v12;
LABEL_10:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = v41;
      v21 = *(v42 + 48) + *(v41 + 72) * (v19 | (v18 << 6));
      v22 = v38;
      v43 = type metadata accessor for WebEmbedDatastoreCacheKey;
      sub_1D6CD349C(v21, v38, type metadata accessor for WebEmbedDatastoreCacheKey);
      v23 = v45;
      v44 = type metadata accessor for WebEmbedDatastoreCacheKey;
      sub_1D6CD4CBC(v22, v45, type metadata accessor for WebEmbedDatastoreCacheKey);
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = v39;
      sub_1D6CD349C(v23, v39, type metadata accessor for WebEmbedDatastoreCacheKey);
      v26 = *(v20 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      sub_1D6CD4CBC(v25, v27 + ((v26 + 24) & ~v26), type metadata accessor for WebEmbedDatastoreCacheKey);
      updated = type metadata accessor for WebEmbedDataSourceCacheUpdateOperation();
      v29 = objc_allocWithZone(updated);
      v30 = &v29[qword_1EDF06600];
      *v30 = sub_1D6CD518C;
      v30[1] = v27;
      v47.receiver = v29;
      v47.super_class = updated;
      v31 = objc_msgSendSuper2(&v47, sel_init);
      v32 = swift_allocObject();
      v33 = v46;
      swift_weakInit();
      v34 = v45;
      sub_1D6CD349C(v45, v25, v43);
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v35[4] = v32;
      sub_1D6CD4CBC(v25, v35 + ((v26 + 40) & ~v26), v44);
      sub_1D725ACDC();
      [*(v33 + 64) addOperation_];

      result = sub_1D6CD4D24(v34, type metadata accessor for WebEmbedDatastoreCacheKey);
    }

    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18 >= v17)
      {
      }

      v16 = *(v36 + 8 * v18);
      ++v12;
      if (v16)
      {
        v12 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D6CD19D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v20 - v11;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v13 = WebEmbedDataVisualization.urlDataSources.getter();
    v14 = sub_1D6CD1C10(v13);

    if (v14)
    {
      sub_1D6CD349C(a1, v12, type metadata accessor for WebEmbedDataVisualization);
      v15 = sub_1D6CD20BC();
      sub_1D6CD349C(v12, a2, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6CD349C(v12, v8, type metadata accessor for WebEmbedDataVisualization);
      v16 = sub_1D61B87A8(v8, v14, v15);

      sub_1D6CD4D24(v12, type metadata accessor for WebEmbedDataVisualization);
      if (v2)
      {
        return sub_1D6CD4D24(a2, type metadata accessor for WebEmbedDataVisualization);
      }

      else
      {
        result = type metadata accessor for WebEmbedDatastoreUpdate();
        *(a2 + *(result + 20)) = v16;
      }
    }

    else
    {
      sub_1D6CD4C68();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D6CD4C68();
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }

  return result;
}

void *sub_1D6CD1C10(unint64_t a1)
{
  v2 = v1;
  sub_1D5B6D404(0, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for WebEmbedDataSourceCacheEntry();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v44 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebEmbedDatastoreProperty();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v37 - v18;
  v37 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v21 = 0;
    v46 = a1 & 0xFFFFFFFFFFFFFF8;
    v47 = a1 & 0xC000000000000001;
    v45 = (v9 + 48);
    v48 = MEMORY[0x1E69E7CC0];
    v39 = v2;
    v40 = v8;
    v38 = i;
    while (v47)
    {
      v22 = MEMORY[0x1DA6FB460](v21, a1, v17);
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v9 = *(v2 + 32);
      sub_1D725B86C();
      if ((*v45)(v7, 1, v8) == 1)
      {

        sub_1D6CD512C(v7, qword_1EDF0A558, type metadata accessor for WebEmbedDataSourceCacheEntry, MEMORY[0x1E69E6720]);
      }

      else
      {
        v24 = a1;
        v25 = v7;
        v26 = v44;
        sub_1D6CD4CBC(v7, v44, type metadata accessor for WebEmbedDataSourceCacheEntry);
        v27 = v19;
        v29 = *(v22 + 32);
        v28 = *(v22 + 40);

        v30 = v41;
        sub_1D6CD4CBC(v26, &v41[*(v43 + 20)], type metadata accessor for WebEmbedDataSourceCacheEntry);
        *v30 = v29;
        v30[1] = v28;
        v19 = v27;
        sub_1D6CD4CBC(v30, v27, type metadata accessor for WebEmbedDatastoreProperty);
        v31 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1D69963C4(0, v31[2] + 1, 1, v31);
        }

        v9 = v31[2];
        v32 = v31[3];
        a1 = v24;
        v7 = v25;
        if (v9 >= v32 >> 1)
        {
          v31 = sub_1D69963C4(v32 > 1, v9 + 1, 1, v31);
        }

        i = v38;
        v2 = v39;
        v31[2] = v9 + 1;
        v33 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v48 = v31;
        sub_1D6CD4CBC(v19, v31 + v33 + *(v42 + 72) * v9, type metadata accessor for WebEmbedDatastoreProperty);
        v8 = v40;
      }

      ++v21;
      if (v23 == i)
      {
        goto LABEL_21;
      }
    }

    if (v21 >= *(v46 + 16))
    {
      goto LABEL_18;
    }

    v22 = *(a1 + 8 * v21 + 32);

    v23 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v34 = v48;
  v35 = v48[2];
  if (!v37)
  {
    if (v35 == *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v34;
    }

    goto LABEL_25;
  }

  if (v35 != sub_1D7263BFC())
  {
LABEL_25:

    return 0;
  }

  return v34;
}

char *sub_1D6CD20BC()
{
  v0 = type metadata accessor for WebEmbedDataVisualization();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D6D28B24();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D6CD349C(v7, v4, type metadata accessor for WebEmbedDataVisualization);
      v10 = WebEmbedDataVisualization.urlDataSources.getter();
      v11 = sub_1D6CD1C10(v10);

      sub_1D6CD4D24(v4, type metadata accessor for WebEmbedDataVisualization);
      if (v11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D69963F8(0, *(v9 + 2) + 1, 1, v9);
        }

        v13 = *(v9 + 2);
        v12 = *(v9 + 3);
        if (v13 >= v12 >> 1)
        {
          v9 = sub_1D69963F8((v12 > 1), v13 + 1, 1, v9);
        }

        *(v9 + 2) = v13 + 1;
        *&v9[8 * v13 + 32] = v11;
      }

      v7 += v8;
      --v6;
    }

    while (v6);
  }

  else
  {

    return 0;
  }

  return v9;
}

void sub_1D6CD2294(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a3;
  v85 = a5;
  v7 = type metadata accessor for WebEmbedDatastoreCacheKey();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v78 = &v71[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D613588C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v71[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B6D404(0, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v77 = &v71[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18, v19);
  v76 = &v71[-v20];
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v71[-v23];
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v71[-v27];
  v29 = type metadata accessor for WebEmbedDatastoreUpdate();
  v81 = *(v29 - 8);
  v82 = v29;
  v30 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v29, v31);
  v79 = &v71[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32, v33);
  v83 = &v71[-v34];
  sub_1D5B6D404(0, &qword_1EDF17A98, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v71[-v37];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    v80 = a2;
    sub_1D6CD3504(a1, v38, &qword_1EDF17A98, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69D6AF8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = *v38;
      if (qword_1EDF0E798 != -1)
      {
        swift_once();
      }

      sub_1D7262EBC();
      sub_1D5C384A0();
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1D7270C10;
      v43 = sub_1D62CB840();
      v45 = v44;
      v46 = MEMORY[0x1E69E6158];
      *(v42 + 56) = MEMORY[0x1E69E6158];
      v47 = sub_1D5B7E2C0();
      *(v42 + 64) = v47;
      *(v42 + 32) = v43;
      *(v42 + 40) = v45;
      v87 = 0;
      v88 = 0xE000000000000000;
      v86 = v41;
      sub_1D5B49474(0, &qword_1EDF3C5D0);
      sub_1D7263F9C();
      v48 = v87;
      v49 = v88;
      *(v42 + 96) = v46;
      *(v42 + 104) = v47;
      *(v42 + 72) = v48;
      *(v42 + 80) = v49;
      sub_1D725C30C();

      goto LABEL_19;
    }

    v50 = v83;
    sub_1D6CD4CBC(v38, v83, type metadata accessor for WebEmbedDatastoreUpdate);
    v75 = v40;
    sub_1D725B86C();
    sub_1D6CD349C(v50, v24, type metadata accessor for WebEmbedDatastoreUpdate);
    v52 = v81;
    v51 = v82;
    v73 = *(v81 + 56);
    v74 = v81 + 56;
    v73(v24, 0, 1, v82);
    v53 = *(v11 + 48);
    v54 = MEMORY[0x1E69E6720];
    sub_1D6CD3504(v28, v14, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
    v55 = v51;
    sub_1D6CD3504(v24, &v14[v53], &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, v54);
    v56 = *(v52 + 48);
    if (v56(v14, 1, v51) == 1)
    {
      v57 = MEMORY[0x1E69E6720];
      sub_1D6CD512C(v24, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
      v58 = v57;
      v59 = v82;
      sub_1D6CD512C(v28, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, v58);
      if (v56(&v14[v53], 1, v59) == 1)
      {
        sub_1D6CD512C(v14, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
        v60 = v83;
LABEL_17:
        sub_1D6CD4D24(v60, type metadata accessor for WebEmbedDatastoreUpdate);

        goto LABEL_19;
      }
    }

    else
    {
      v61 = v76;
      sub_1D6CD3504(v14, v76, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
      if (v56(&v14[v53], 1, v55) != 1)
      {
        v69 = v79;
        sub_1D6CD4CBC(&v14[v53], v79, type metadata accessor for WebEmbedDatastoreUpdate);
        updated = _s8NewsFeed23WebEmbedDatastoreUpdateV2eeoiySbAC_ACtFZ_0(v61, v69);
        sub_1D6CD4D24(v69, type metadata accessor for WebEmbedDatastoreUpdate);
        v70 = MEMORY[0x1E69E6720];
        sub_1D6CD512C(v24, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
        sub_1D6CD512C(v28, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, v70);
        sub_1D6CD4D24(v61, type metadata accessor for WebEmbedDatastoreUpdate);
        sub_1D6CD512C(v14, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, v70);
        v59 = v82;
        v60 = v83;
        if (updated)
        {
          goto LABEL_17;
        }

LABEL_14:
        sub_1D6CD349C(v85, v78, type metadata accessor for WebEmbedDatastoreCacheKey);
        v63 = v77;
        sub_1D6CD349C(v60, v77, type metadata accessor for WebEmbedDatastoreUpdate);
        v73(v63, 0, 1, v59);
        sub_1D725B87C();
        v64 = swift_unknownObjectWeakLoadStrong();
        if (v64)
        {
          v65 = v64;
          v66 = v79;
          sub_1D6CD349C(v60, v79, type metadata accessor for WebEmbedDatastoreUpdate);
          v67 = (*(v81 + 80) + 24) & ~*(v81 + 80);
          v68 = swift_allocObject();
          *(v68 + 16) = v65;
          sub_1D6CD4CBC(v66, v68 + v67, type metadata accessor for WebEmbedDatastoreUpdate);
          swift_unknownObjectRetain();
          sub_1D725BFFC();

          swift_unknownObjectRelease();
        }

        sub_1D6CD4D24(v60, type metadata accessor for WebEmbedDatastoreUpdate);
LABEL_19:
        a2 = v80;
        if (!v80)
        {
          return;
        }

        goto LABEL_20;
      }

      v62 = MEMORY[0x1E69E6720];
      sub_1D6CD512C(v24, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69E6720]);
      sub_1D6CD512C(v28, &qword_1EDF0D130, type metadata accessor for WebEmbedDatastoreUpdate, v62);
      sub_1D6CD4D24(v61, type metadata accessor for WebEmbedDatastoreUpdate);
      v59 = v82;
    }

    sub_1D6CD4D24(v14, sub_1D613588C);
    v60 = v83;
    goto LABEL_14;
  }

  if (a2)
  {
LABEL_20:
    a2();
  }
}

uint64_t sub_1D6CD2C4C()
{
  sub_1D5B87E10(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebEmbedDataSourceCacheUpdateOperation()
{
  result = qword_1EDF065F0;
  if (!qword_1EDF065F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CD2D48(void (*a1)(_BYTE *))
{
  sub_1D5B6D404(0, &qword_1EDF17A98, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v13[-v5];
  v7 = type metadata accessor for WebEmbedDatastoreUpdate();
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v1 + qword_1EDF06600))(v9);
  sub_1D6CD349C(v11, v6, type metadata accessor for WebEmbedDatastoreUpdate);
  swift_storeEnumTagMultiPayload();
  a1(v6);
  sub_1D6CD512C(v6, &qword_1EDF17A98, type metadata accessor for WebEmbedDatastoreUpdate, MEMORY[0x1E69D6AF8]);
  return sub_1D6CD4D24(v11, type metadata accessor for WebEmbedDatastoreUpdate);
}

uint64_t sub_1D6CD2FD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6CD1398(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D6CD30A8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D5B64680;

  return sub_1D6CCFC58(a1, a2, v7, v6);
}

void sub_1D6CD315C(void **a1)
{
  v2 = *(sub_1D72585BC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFAF4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D6CD35D8(v5);
  *a1 = v3;
}

uint64_t sub_1D6CD3204(uint64_t a1)
{
  v4 = *(type metadata accessor for WebEmbedDataVisualization() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D6CD0AF8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D6CD32FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D5B64588(a1, v4);
}

void sub_1D6CD33BC()
{
  if (!qword_1EDF048A0)
  {
    v0 = sub_1D726288C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF048A0);
    }
  }
}

uint64_t sub_1D6CD349C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6CD3504(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1D5B6D404(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D6CD3574()
{
  v1 = *(type metadata accessor for WebEmbedDatastoreUpdate() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D62CE838(v2, v3);
}

void sub_1D6CD35D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D72585BC();
        v6 = sub_1D726276C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D72585BC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D6CD3A10(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D6CD3704(0, v2, 1, a1);
  }
}

void sub_1D6CD3704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v8, v9);
  v47 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = &v37 - v13;
  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v50 = &v37 - v18;
  v39 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v48 = *(v16 + 16);
    v49 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v45 = (v16 + 32);
    v46 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v44 = -v20;
    v23 = a1 - a3;
    v38 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v42 = v22;
    v43 = a3;
    v40 = v24;
    v41 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v48;
      (v48)(v50, v24, v8, v17);
      v27(v51, v26, v8);
      v28 = sub_1D72583DC();
      v30 = v29;
      if (v28 == sub_1D72583DC() && v30 == v31)
      {

        v25 = *v21;
        (*v21)(v51, v8);
        v25(v50, v8);
LABEL_5:
        a3 = v43 + 1;
        v22 = &v42[v38];
        v23 = v41 - 1;
        v24 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return;
        }

        goto LABEL_6;
      }

      v32 = sub_1D72646CC();

      v33 = *v21;
      (*v21)(v51, v8);
      v33(v50, v8);
      if ((v32 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v34 = *v45;
      v35 = v47;
      (*v45)(v47, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v34(v26, v35, v8);
      v26 += v44;
      v24 += v44;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D6CD3A10(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v143 = a1;
  v9 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v9, v10);
  v147 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v158 = &v137 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v163 = &v137 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v162 = &v137 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v155 = &v137 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v154 = &v137 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v142 = &v137 - v29;
  v33 = MEMORY[0x1EEE9AC00](v30, v31);
  v141 = &v137 - v34;
  v35 = *(a3 + 1);
  v152 = v32;
  if (v35 < 1)
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v39 = *v143;
    if (!*v143)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v152;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v164 = v37;
      v131 = *(v37 + 16);
      if (v131 >= 2)
      {
        do
        {
          v132 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v133 = a3;
          v134 = *(v37 + 16 * v131);
          a3 = v37;
          v135 = *(v37 + 16 * (v131 - 1) + 32);
          v37 = *(v37 + 16 * (v131 - 1) + 40);
          sub_1D6CD45CC(&v132[*(v5 + 72) * v134], &v132[*(v5 + 72) * v135], &v132[*(v5 + 72) * v37], v39);
          if (v6)
          {
            break;
          }

          if (v37 < v134)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1D62FF50C(a3);
          }

          if (v131 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v136 = &a3[16 * v131];
          *v136 = v134;
          *(v136 + 1) = v37;
          v164 = a3;
          sub_1D62FF480(v131 - 1);
          v37 = v164;
          v131 = *(v164 + 16);
          a3 = v133;
        }

        while (v131 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v37 = sub_1D62FF50C(v37);
    goto LABEL_105;
  }

  v138 = a4;
  v36 = 0;
  v160 = v32 + 16;
  v161 = (v32 + 8);
  v159 = (v32 + 32);
  v37 = MEMORY[0x1E69E7CC0];
  v144 = a3;
  while (1)
  {
    v38 = v36;
    v39 = v36 + 1;
    v146 = v36;
    if (v36 + 1 < v35)
    {
      v150 = v35;
      v139 = v37;
      v40 = *a3;
      v41 = *(v152 + 72);
      v5 = v36 + 1;
      v42 = &v40[v41 * v39];
      v43 = *(v152 + 16);
      v43(v141, v42, v9, v33);
      v153 = v41;
      v149 = v43;
      (v43)(v142, &v40[v41 * v38], v9);
      v39 = sub_1D72583DC();
      v45 = v44;
      v46 = sub_1D72583DC();
      v140 = v6;
      if (v39 == v46 && v45 == v47)
      {
        LODWORD(v151) = 0;
      }

      else
      {
        LODWORD(v151) = sub_1D72646CC();
      }

      v48 = *v161;
      (*v161)(v142, v9);
      v148 = v48;
      v48(v141, v9);
      v49 = (v146 + 2);
      v50 = v153 * (v146 + 2);
      v51 = &v40[v50];
      v52 = v153 * v5;
      v53 = &v40[v153 * v5];
      do
      {
        a3 = v49;
        v56 = v5;
        v6 = v52;
        v37 = v50;
        if (v49 >= v150)
        {
          break;
        }

        v156 = v5;
        v157 = v49;
        v57 = v149;
        (v149)(v154, v51, v9);
        v57(v155, v53, v9);
        v58 = sub_1D72583DC();
        v60 = v59;
        if (v58 == sub_1D72583DC() && v60 == v61)
        {
          v54 = 0;
        }

        else
        {
          v54 = sub_1D72646CC();
        }

        a3 = v157;

        v39 = v148;
        v148(v155, v9);
        (v39)(v154, v9);
        v55 = v151 ^ v54;
        v49 = a3 + 1;
        v51 += v153;
        v53 += v153;
        v56 = v156;
        v5 = v156 + 1;
        v52 = v6 + v153;
        v50 = v37 + v153;
      }

      while ((v55 & 1) == 0);
      if (v151)
      {
        v38 = v146;
        if (a3 < v146)
        {
          goto LABEL_132;
        }

        if (v146 < a3)
        {
          v62 = v146 * v153;
          v63 = v146;
          do
          {
            if (v63 != v56)
            {
              v65 = *v144;
              if (!*v144)
              {
                goto LABEL_138;
              }

              v5 = v56;
              v157 = *v159;
              (v157)(v147, v65 + v62, v9);
              if (v62 < v6 || v65 + v62 >= (v65 + v37))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v62 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v157)(v65 + v6, v147, v9);
              v38 = v146;
              v56 = v5;
            }

            ++v63;
            v6 -= v153;
            v37 -= v153;
            v62 += v153;
          }

          while (v63 < v56--);
        }

        v39 = a3;
        v6 = v140;
        a3 = v144;
        v37 = v139;
      }

      else
      {
        v39 = a3;
        v6 = v140;
        a3 = v144;
        v37 = v139;
        v38 = v146;
      }
    }

    v66 = *(a3 + 1);
    if (v39 < v66)
    {
      if (__OFSUB__(v39, v38))
      {
        goto LABEL_131;
      }

      if (v39 - v38 < v138)
      {
        break;
      }
    }

LABEL_52:
    if (v39 < v38)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1D698BA94(0, *(v37 + 16) + 1, 1, v37);
    }

    v84 = *(v37 + 16);
    v83 = *(v37 + 24);
    v85 = v84 + 1;
    if (v84 >= v83 >> 1)
    {
      v37 = sub_1D698BA94((v83 > 1), v84 + 1, 1, v37);
    }

    *(v37 + 16) = v85;
    v86 = v37 + 16 * v84;
    *(v86 + 32) = v38;
    *(v86 + 40) = v39;
    v87 = *v143;
    if (!*v143)
    {
      goto LABEL_140;
    }

    v153 = v39;
    if (v84)
    {
      while (1)
      {
        v39 = v85 - 1;
        if (v85 >= 4)
        {
          break;
        }

        if (v85 == 3)
        {
          v88 = *(v37 + 32);
          v89 = *(v37 + 40);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_72:
          if (v91)
          {
            goto LABEL_119;
          }

          v104 = (v37 + 16 * v85);
          v106 = *v104;
          v105 = v104[1];
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          v109 = v107;
          if (v107)
          {
            goto LABEL_122;
          }

          v110 = (v37 + 32 + 16 * v39);
          v112 = *v110;
          v111 = v110[1];
          v98 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v98)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v108, v113))
          {
            goto LABEL_126;
          }

          if (v108 + v113 >= v90)
          {
            if (v90 < v113)
            {
              v39 = v85 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v114 = (v37 + 16 * v85);
        v116 = *v114;
        v115 = v114[1];
        v98 = __OFSUB__(v115, v116);
        v108 = v115 - v116;
        v109 = v98;
LABEL_86:
        if (v109)
        {
          goto LABEL_121;
        }

        v117 = v37 + 16 * v39;
        v119 = *(v117 + 32);
        v118 = *(v117 + 40);
        v98 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v98)
        {
          goto LABEL_124;
        }

        if (v120 < v108)
        {
          goto LABEL_3;
        }

LABEL_93:
        v125 = v39 - 1;
        if (v39 - 1 >= v85)
        {
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
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
          goto LABEL_134;
        }

        v126 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v37;
        v127 = *(v37 + 32 + 16 * v125);
        v128 = *(v37 + 32 + 16 * v39);
        v37 = *(v37 + 32 + 16 * v39 + 8);
        sub_1D6CD45CC(&v126[*(v152 + 72) * v127], &v126[*(v152 + 72) * v128], &v126[*(v152 + 72) * v37], v87);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v37 < v127)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1D62FF50C(a3);
        }

        if (v125 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v129 = &a3[16 * v125];
        *(v129 + 4) = v127;
        *(v129 + 5) = v37;
        v164 = a3;
        sub_1D62FF480(v39);
        v37 = v164;
        v85 = *(v164 + 16);
        a3 = v5;
        if (v85 <= 1)
        {
          goto LABEL_3;
        }
      }

      v92 = v37 + 32 + 16 * v85;
      v93 = *(v92 - 64);
      v94 = *(v92 - 56);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_117;
      }

      v97 = *(v92 - 48);
      v96 = *(v92 - 40);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_118;
      }

      v99 = (v37 + 16 * v85);
      v101 = *v99;
      v100 = v99[1];
      v98 = __OFSUB__(v100, v101);
      v102 = v100 - v101;
      if (v98)
      {
        goto LABEL_120;
      }

      v98 = __OFADD__(v90, v102);
      v103 = v90 + v102;
      if (v98)
      {
        goto LABEL_123;
      }

      if (v103 >= v95)
      {
        v121 = (v37 + 32 + 16 * v39);
        v123 = *v121;
        v122 = v121[1];
        v98 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v98)
        {
          goto LABEL_127;
        }

        if (v90 < v124)
        {
          v39 = v85 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v35 = *(a3 + 1);
    v36 = v153;
    if (v153 >= v35)
    {
      goto LABEL_103;
    }
  }

  v67 = (v38 + v138);
  if (__OFADD__(v38, v138))
  {
    goto LABEL_133;
  }

  if (v67 >= v66)
  {
    v67 = *(a3 + 1);
  }

  if (v67 < v38)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v39 == v67)
  {
    goto LABEL_52;
  }

  v139 = v37;
  v140 = v6;
  v68 = *a3;
  v69 = *(v152 + 72);
  v70 = *(v152 + 16);
  v71 = *a3 + v69 * (v39 - 1);
  v156 = -v69;
  v157 = v68;
  v72 = v38 - v39;
  v145 = v69;
  v73 = &v68[v39 * v69];
  v148 = v67;
LABEL_43:
  v153 = v39;
  v149 = v73;
  v150 = v72;
  v151 = v71;
  v75 = v71;
  while (1)
  {
    v70(v162, v73, v9);
    (v70)(v163, v75);
    v5 = sub_1D72583DC();
    v77 = v76;
    if (v5 == sub_1D72583DC() && v77 == v78)
    {

      v74 = *v161;
      (*v161)(v163, v9);
      v74(v162, v9);
LABEL_42:
      v39 = v153 + 1;
      v71 = v151 + v145;
      v72 = v150 - 1;
      v73 = &v149[v145];
      if ((v153 + 1) == v148)
      {
        v39 = v148;
        v6 = v140;
        a3 = v144;
        v37 = v139;
        v38 = v146;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1D72646CC();

    v79 = *v161;
    (*v161)(v163, v9);
    v79(v162, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v157)
    {
      break;
    }

    v80 = v158;
    v5 = v159;
    v81 = *v159;
    (*v159)(v158, v73, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v81)(v75, v80, v9);
    v75 += v156;
    v73 += v156;
    if (__CFADD__(v72++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_1D6CD45CC(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v74 = sub_1D72585BC();
  v8 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v9);
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v70 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v73 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v72 = &v62 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_70;
  }

  v22 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_71;
  }

  v23 = (a2 - a1) / v21;
  v77 = a1;
  v76 = a4;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v25;
    if (v25 < 1)
    {
      v47 = a4 + v25;
    }

    else
    {
      v66 = a4;
      v67 = (v8 + 16);
      v65 = (v8 + 8);
      v45 = -v21;
      v46 = a4 + v25;
      v47 = v44;
      v68 = v45;
      while (2)
      {
        while (1)
        {
          v63 = v47;
          v48 = (a2 + v45);
          v72 = (a2 + v45);
          v69 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v77 = a2;
              v75 = v63;
              goto LABEL_68;
            }

            v50 = a3;
            v64 = v47;
            v51 = *v67;
            v73 = (v46 + v45);
            v52 = v74;
            (v51)(v70);
            (v51)(v71, v48, v52);
            v53 = sub_1D72583DC();
            v55 = v54;
            if (v53 == sub_1D72583DC() && v55 == v56)
            {
              v57 = 0;
            }

            else
            {
              v57 = sub_1D72646CC();
            }

            v45 = v68;
            a3 = v68 + v50;
            v58 = *v65;
            v59 = v74;
            (*v65)(v71, v74);
            v58(v70, v59);
            if (v57)
            {
              break;
            }

            v60 = v73;
            v47 = v73;
            if (v50 < v46 || a3 >= v46)
            {
              swift_arrayInitWithTakeFrontToBack();
              v48 = v72;
            }

            else
            {
              v48 = v72;
              if (v50 != v46)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v46 = v47;
            v49 = v60 > v66;
            a2 = v69;
            if (!v49)
            {
              goto LABEL_66;
            }
          }

          if (v50 < v69 || a3 >= v69)
          {
            break;
          }

          a2 = v72;
          v61 = v66;
          v47 = v64;
          if (v50 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v46 <= v61)
          {
            goto LABEL_66;
          }
        }

        a2 = v72;
        swift_arrayInitWithTakeFrontToBack();
        v47 = v64;
        if (v46 > v66)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v77 = a2;
    v75 = v47;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = (a4 + v24);
    v75 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v27 = *(v8 + 16);
      v69 = v21;
      v70 = (v8 + 16);
      v67 = (v8 + 8);
      v68 = v27;
      do
      {
        v28 = a3;
        v29 = a2;
        v30 = a2;
        v31 = v74;
        v32 = v68;
        v68(v72, v30, v74);
        v32(v73, a4, v31);
        v33 = sub_1D72583DC();
        v35 = v34;
        if (v33 == sub_1D72583DC() && v35 == v36)
        {

          v37 = *v67;
          v38 = v74;
          (*v67)(v73, v74);
          v37(v72, v38);
        }

        else
        {
          v39 = sub_1D72646CC();

          v40 = *v67;
          v41 = v74;
          (*v67)(v73, v74);
          v40(v72, v41);
          if (v39)
          {
            a2 = v29 + v69;
            a3 = v28;
            if (a1 < v29 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v43 = v69;
            goto LABEL_37;
          }
        }

        v42 = a4;
        v43 = v69;
        a4 += v69;
        a2 = v29;
        a3 = v28;
        if (a1 < v42 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v42)
        {
          swift_arrayInitWithTakeBackToFront();
          v76 = a4;
          goto LABEL_37;
        }

        v76 = a4;
LABEL_37:
        a1 += v43;
        v77 = a1;
      }

      while (a4 < v71 && a2 < a3);
    }
  }

LABEL_68:
  sub_1D62FF550(&v77, &v76, &v75);
}

unint64_t sub_1D6CD4C68()
{
  result = qword_1EC894D38;
  if (!qword_1EC894D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894D38);
  }

  return result;
}

uint64_t sub_1D6CD4CBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6CD4D24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_25Tm_1(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  v5 = (*(*(v4 - 8) + 80) + 24) & ~*(*(v4 - 8) + 80);

  v6 = v2 + v5;
  type metadata accessor for WebEmbedDataVisualization();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v7 = *(type metadata accessor for GenericDataVisualization() + 20);
    v8 = sub_1D72585BC();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  a2(*(v6 + *(v4 + 20)));

  return swift_deallocObject();
}

uint64_t objectdestroy_29Tm_0()
{
  v1 = *(type metadata accessor for WebEmbedDatastoreCacheKey() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  if (*(v0 + 16))
  {
  }

  type metadata accessor for WebEmbedDataVisualization();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v3 = *(type metadata accessor for GenericDataVisualization() + 20);
    v4 = sub_1D72585BC();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1D6CD50B4(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedDatastoreCacheKey() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1D6CD2294(a1, v4, v5, v6, v7);
}

uint64_t sub_1D6CD512C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D5B6D404(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t static FormatCodingRecipeOverridesStrategy.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF0DF48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatRecipeOverrides();
  v3 = __swift_project_value_buffer(v2, qword_1EDF0DF50);

  return sub_1D6CD521C(v3, a1);
}

uint64_t sub_1D6CD521C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatRecipeOverrides();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static FormatCodingRecipeOverridesStrategy.shouldEncode(wrappedValue:)(void *a1)
{
  if (qword_1EDF0DF48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatRecipeOverrides();
  v3 = __swift_project_value_buffer(v2, qword_1EDF0DF50);
  return !_s8NewsFeed21FormatRecipeOverridesV2eeoiySbAC_ACtFZ_0(a1, v3);
}

uint64_t sub_1D6CD52F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF0DF48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatRecipeOverrides();
  v3 = __swift_project_value_buffer(v2, qword_1EDF0DF50);

  return sub_1D6CD521C(v3, a1);
}

BOOL sub_1D6CD5370(void *a1)
{
  if (qword_1EDF0DF48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatRecipeOverrides();
  v3 = __swift_project_value_buffer(v2, qword_1EDF0DF50);
  return !_s8NewsFeed21FormatRecipeOverridesV2eeoiySbAC_ACtFZ_0(a1, v3);
}

unint64_t sub_1D6CD53E8(uint64_t a1)
{
  result = sub_1D5E04DE8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CD5428(uint64_t a1)
{
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725891C();
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v17 = v1[4];
  v16 = v1[5];
  v18 = v1[6];
  v19 = v34;
  sub_1D6F41974(a1, v12, v6);
  if (!v19)
  {
    v20 = v11;
    v24 = v16;
    v25 = v17;
    v34 = 0;
    v21 = v26;
    if ((*(v27 + 48))(v6, 1, v26) == 1)
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v6);
      type metadata accessor for FormatLayoutError();
      sub_1D5D285FC();
      v18 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v23 = v27;
      (*(v27 + 32))(v20, v6, v21);
      v28 = v13;
      v29 = v14;
      v30 = v15;
      v31 = v25;
      v32 = v24;
      v33 = v18;
      sub_1D5E1DC5C(v13, v14, v15);
      v18 = FormatDateFormat.format(_:)(v20);
      sub_1D5E1E088(v28, v29, v30);
      (*(v23 + 8))(v20, v21);
    }
  }

  return v18;
}

BOOL _s8NewsFeed022FormatTextNodeDateTimeC0V2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v15 = a1[6];
  v16 = a1[5];
  v17 = a2[1];
  v18 = *a2;
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v24 = v2;
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v18);
  v12 = static FormatDateTime.== infix(_:_:)(&v24, &v18);
  sub_1D5F33D8C(v18);
  sub_1D5F33D8C(v24);
  if (v12)
  {
    v24 = v3;
    v25 = v4;
    v26 = v5;
    v27 = v6;
    v28 = v16;
    v29 = v15;
    v18 = v17;
    v19 = v7;
    v20 = v8;
    v21 = v10;
    v22 = v9;
    v23 = v11;
    sub_1D5E1DC5C(v3, v4, v5);
    sub_1D5E1DC5C(v17, v7, v8);
    v13 = _s8NewsFeed010FormatDateC0O2eeoiySbAC_ACtFZ_0(&v24, &v18);
    sub_1D5E1E088(v18, v19, v20);
    sub_1D5E1E088(v24, v25, v26);
  }

  else
  {
    return 0;
  }

  return v13;
}

unint64_t sub_1D6CD57CC(uint64_t a1)
{
  result = sub_1D6CD57F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CD57F4()
{
  result = qword_1EC894D40;
  if (!qword_1EC894D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894D40);
  }

  return result;
}

unint64_t sub_1D6CD5848(void *a1)
{
  a1[1] = sub_1D66C5728();
  a1[2] = sub_1D66F65E8();
  result = sub_1D6CD5880();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CD5880()
{
  result = qword_1EC894D48;
  if (!qword_1EC894D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894D48);
  }

  return result;
}

uint64_t sub_1D6CD58D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 56))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1D6CD5940(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D6CD59B8()
{
  v1 = OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_identifier;
  v2 = sub_1D725895C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D61917C8(v0 + OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_request);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebEmbedImage()
{
  result = qword_1EDF32B20;
  if (!qword_1EDF32B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CD5AE8()
{
  result = sub_1D725895C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WebEmbedImageRequest();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t FormatJsonConfig.keys.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1D6CD5C9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v56 = a1;
  v61 = a2;
  v59 = type metadata accessor for FormatJson();
  MEMORY[0x1EEE9AC00](v59, v6);
  v53 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for FormatJsonKeyValue();
  v55 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v8);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v49 - v12);
  swift_beginAccess();
  v14 = *(v2 + 16);
  if (!*(v14 + 16))
  {
    goto LABEL_9;
  }

  sub_1D7264A0C();

  sub_1D72621EC();
  v15 = sub_1D7264A5C();
  v16 = -1 << *(v14 + 32);
  v17 = v15 & ~v16;
  if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {

LABEL_9:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v57 = v3;
  v18 = ~v16;
  while ((*(*(v14 + 48) + v17) & 1) != 0)
  {
    v19 = sub_1D72646CC();

    if (v19)
    {
      goto LABEL_11;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {

      v20 = MEMORY[0x1E69E7CC0];
      v4 = v57;
      goto LABEL_14;
    }
  }

LABEL_11:

  sub_1D6CD6310(v56, (v13 + *(v58 + 20)));
  *v13 = 0x736E6F6974706FLL;
  v13[1] = 0xE700000000000000;
  v20 = sub_1D698F454(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v22 = v20[2];
  v21 = v20[3];
  v23 = v22 + 1;
  v4 = v57;
  if (v22 >= v21 >> 1)
  {
    v52 = v22 + 1;
    v48 = sub_1D698F454(v21 > 1, v22 + 1, 1, v20);
    v23 = v52;
    v20 = v48;
  }

  v20[2] = v23;
  sub_1D6CD790C(v13, v20 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v22, type metadata accessor for FormatJsonKeyValue);
LABEL_14:
  v24 = *(v5 + 16);
  if (!*(v24 + 16))
  {
LABEL_21:
    v30 = v61;
    goto LABEL_28;
  }

  sub_1D7264A0C();

  sub_1D72621EC();
  v25 = sub_1D7264A5C();
  v26 = -1 << *(v24 + 32);
  v27 = v25 & ~v26;
  if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v57 = v4;
  v28 = ~v26;
  while (*(*(v24 + 48) + v27) != 1)
  {
    v29 = sub_1D72646CC();

    if (v29)
    {
      goto LABEL_23;
    }

    v27 = (v27 + 1) & v28;
    if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_23:

  v31 = v58;
  v51 = *(v58 + 20);
  sub_1D6CD7974(0, &unk_1EDF020A0, MEMORY[0x1E69E6F90]);
  v32 = *(v55 + 72);
  v33 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v34 = swift_allocObject();
  v50 = v34;
  *(v34 + 16) = xmmword_1D7270C10;
  v52 = v33;
  v35 = (v34 + v33);
  v36 = v53;
  v37 = v56;
  sub_1D6CD6780(v56, v53);
  *v35 = 0x70756F7267;
  v35[1] = 0xE500000000000000;
  sub_1D6CD790C(v36, v35 + *(v31 + 20), type metadata accessor for FormatJson);
  v55 = v32;
  v38 = (v35 + v32);
  v60[0] = MEMORY[0x1E69E7CD0];
  v40 = *(v37 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v39 = *(v37 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);

  v41 = sub_1D6B984A8(v40, v39);

  v42 = sub_1D6CD7644(v41, v60, v37);

  *v36 = v42;
  swift_storeEnumTagMultiPayload();

  *v38 = 1835365481;
  v38[1] = 0xE400000000000000;
  sub_1D6CD790C(v36, v38 + *(v58 + 20), type metadata accessor for FormatJson);
  v43 = v54;
  *&v54[v51] = v50;
  swift_storeEnumTagMultiPayload();
  *v43 = 0x73676E69646E6962;
  v43[1] = 0xE800000000000000;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1D698F454(0, v20[2] + 1, 1, v20);
  }

  v44 = v61;
  v46 = v20[2];
  v45 = v20[3];
  if (v46 >= v45 >> 1)
  {
    v20 = sub_1D698F454(v45 > 1, v46 + 1, 1, v20);
  }

  v20[2] = v46 + 1;
  sub_1D6CD790C(v43, v20 + v52 + v46 * v55, type metadata accessor for FormatJsonKeyValue);
  v30 = v44;
LABEL_28:
  *v30 = v20;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6CD6310@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for FormatOption();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v40 = &v36 - v14;
  v15 = type metadata accessor for FormatScopedOption();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v42 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v36 - v21;
  v43 = a1;
  sub_1D725A7EC();

  v23 = sub_1D6F6103C();

  v24 = *(v23 + 16);
  if (v24)
  {
    v36 = v23;
    v37 = a2;
    v25 = v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v41 = *(v16 + 72);
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D5D5EB44(v25, v22, type metadata accessor for FormatScopedOption);
      v27 = v42;
      sub_1D5D5EB44(v22, v42, type metadata accessor for FormatScopedOption);
      sub_1D6CD790C(v27, v7, type metadata accessor for FormatOption);
      v29 = *v7;
      v28 = v7[1];

      sub_1D6B744A8(v43, &v44);
      sub_1D5D256CC(v22, type metadata accessor for FormatScopedOption);
      v30 = v44;
      *v11 = v29;
      *(v11 + 1) = v28;
      *(v11 + 2) = v30;
      *(v11 + 3) = 1;
      v31 = *(v39 + 28);
      v32 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v32 - 8) + 56))(&v11[v31], 1, 1, v32);
      sub_1D5D256CC(v7, type metadata accessor for FormatOption);
      sub_1D6CD790C(v11, v40, type metadata accessor for FormatOption);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1D5CEABA0(0, v26[2] + 1, 1, v26);
      }

      v34 = v26[2];
      v33 = v26[3];
      if (v34 >= v33 >> 1)
      {
        v26 = sub_1D5CEABA0(v33 > 1, v34 + 1, 1, v26);
      }

      v26[2] = v34 + 1;
      sub_1D6CD790C(v40, v26 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34, type metadata accessor for FormatOption);
      v25 += v41;
      --v24;
    }

    while (v24);

    a2 = v37;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v26;
  type metadata accessor for FormatJson();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6CD6780@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D6CD7974(0, qword_1EDF103F0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (v26 - v6);
  v32 = type metadata accessor for FormatJsonKeyValue();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v8);
  v31 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v29 = v26 - v12;
  v13 = *(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
  v14 = v13[2];
  v27 = a2;
  if (v14)
  {
    v15 = sub_1D5E23F34(v14, 0);
    v16 = sub_1D5E25814(v33, (v15 + 4), v14, v13);
    v28 = v33[3];
    v26[1] = v33[4];

    sub_1D5B87E38();
    if (v16 != v14)
    {
LABEL_18:
      __break(1u);

      __swift_destroy_boxed_opaque_existential_1(v33);

      __break(1u);
      return result;
    }

    v17 = v15[2];
    if (v17)
    {
LABEL_4:
      v18 = 0;
      v13 = 0;
      v19 = (v15 + 4);
      v20 = (v30 + 48);
      v21 = MEMORY[0x1E69E7CC0];
      v28 = a1;
      while (v18 < v15[2])
      {
        sub_1D5B68374(v19, v33);
        sub_1D6CD6B20(v33, a1, v7);
        __swift_destroy_boxed_opaque_existential_1(v33);
        if ((*v20)(v7, 1, v32) == 1)
        {
          sub_1D67D05C8(v7);
        }

        else
        {
          v22 = v29;
          sub_1D6CD790C(v7, v29, type metadata accessor for FormatJsonKeyValue);
          sub_1D6CD790C(v22, v31, type metadata accessor for FormatJsonKeyValue);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1D698F454(0, v21[2] + 1, 1, v21);
          }

          v24 = v21[2];
          v23 = v21[3];
          if (v24 >= v23 >> 1)
          {
            v21 = sub_1D698F454(v23 > 1, v24 + 1, 1, v21);
          }

          v21[2] = v24 + 1;
          sub_1D6CD790C(v31, v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, type metadata accessor for FormatJsonKeyValue);
          a1 = v28;
        }

        ++v18;
        v19 += 40;
        if (v17 == v18)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    v17 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v17)
    {
      goto LABEL_4;
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_16:

  *v27 = v21;
  type metadata accessor for FormatJson();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6CD6B20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FeedGroupItem();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v36[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 8))(v10, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
    case 0xAu:
      sub_1D5D256CC(v9, type metadata accessor for FeedGroupItem);
      v14 = type metadata accessor for FormatJsonKeyValue();
      result = (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
      break;
    case 2u:
      v15 = *v9;
      v35 = *(v9 + 1);
      v16 = type metadata accessor for FormatJsonKeyValue();
      v38 = *(v16 + 20);
      sub_1D6CD7974(0, &unk_1EDF020A0, MEMORY[0x1E69E6F90]);
      v17 = *(v16 - 8);
      v18 = *(v17 + 72);
      v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D7270C10;
      v21 = (v20 + v19);
      *(v21 + *(v16 + 20)) = v15;
      type metadata accessor for FormatJson();
      swift_storeEnumTagMultiPayload();
      *v21 = 0x746E65746E6F63;
      v21[1] = 0xE700000000000000;
      v22 = (v21 + v18);
      *(v22 + *(v16 + 20)) = v35;
      swift_storeEnumTagMultiPayload();
      *v22 = 0x70756F7267;
      v22[1] = 0xE500000000000000;
      *(a3 + v38) = v20;
      swift_storeEnumTagMultiPayload();
      *a3 = 0x736E6F6974706FLL;
      a3[1] = 0xE700000000000000;
      result = (*(v17 + 56))(a3, 0, 1, v16);
      break;
    case 3u:
    case 5u:
    case 6u:
    case 9u:
    case 0xBu:
    case 0xCu:
    case 0xDu:
      v12 = type metadata accessor for FormatJsonKeyValue();
      (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
      result = sub_1D5D256CC(v9, type metadata accessor for FeedGroupItem);
      break;
    case 7u:
      v28 = *v9;
      v29 = FCFeedDescriptor.feedTag.getter();

      v30 = type metadata accessor for FormatJsonKeyValue();
      sub_1D6A5ABA0(a2, v29, (a3 + *(v30 + 20)));

      swift_unknownObjectRelease();
      *a3 = 1684366694;
      a3[1] = 0xE400000000000000;
      result = (*(*(v30 - 8) + 56))(a3, 0, 1, v30);
      break;
    case 8u:
      v31 = *(v9 + 1);
      v33 = *(v9 + 2);
      v32 = *(v9 + 3);
      v34 = v9[32];
      v36[0] = *v9;
      v36[1] = v31;
      v36[2] = v33;
      v36[3] = v32;
      v37 = v34;
      v25 = type metadata accessor for FormatJsonKeyValue();
      sub_1D6B1905C(a2, v36, (a3 + *(v25 + 20)));
      swift_unknownObjectRelease();

      v26 = 0x76457374726F7073;
      v27 = 0xEB00000000746E65;
      goto LABEL_8;
    default:
      v23 = *v9;
      v24 = *(v9 + 1);
      v25 = type metadata accessor for FormatJsonKeyValue();
      sub_1D6A5ABA0(a2, v23, (a3 + *(v25 + 20)));
      swift_unknownObjectRelease();

      v26 = 6775156;
      v27 = 0xE300000000000000;
LABEL_8:
      *a3 = v26;
      a3[1] = v27;
      result = (*(*(v25 - 8) + 56))(a3, 0, 1, v25);
      break;
  }

  return result;
}

uint64_t sub_1D6CD6FB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v34 = a3;
  v7 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  sub_1D5B68374(a1, &v35);
  sub_1D6818590(&v35, v14);
  v15 = *a2;

  FeedItem.kind.getter(&v35);
  v16 = v35;
  v17 = sub_1D61851A4(v35, *(&v35 + 1), v15);

  sub_1D5BF6680(v16, *(&v16 + 1));
  if (v17)
  {
LABEL_4:
    v18 = v14;
LABEL_5:
    sub_1D5D256CC(v18, type metadata accessor for FeedItem);
    v19 = type metadata accessor for FormatJsonKeyValue();
    return (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
  }

  else
  {
    FeedItem.kind.getter(v45);
    sub_1D5FEAEF8(&v35, v45[0], v45[1]);
    sub_1D5BF6680(v35, *(&v35 + 1));
    sub_1D5D5EB44(v14, v10, type metadata accessor for FeedItem);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 3u:
      case 4u:
      case 8u:
      case 0xCu:
      case 0xEu:
      case 0x10u:
        sub_1D5D256CC(v14, type metadata accessor for FeedItem);
        v21 = type metadata accessor for FormatJsonKeyValue();
        (*(*(v21 - 8) + 56))(a4, 1, 1, v21);
        result = sub_1D5D256CC(v10, type metadata accessor for FeedItem);
        break;
      case 5u:
      case 0xFu:
      case 0x11u:
        sub_1D5D256CC(v14, type metadata accessor for FeedItem);
        v18 = v10;
        goto LABEL_5;
      case 7u:
        v22 = *(v10 + 7);
        v41 = *(v10 + 6);
        v42 = v22;
        v43 = *(v10 + 8);
        v44 = v10[144];
        v23 = *(v10 + 3);
        v37 = *(v10 + 2);
        v38 = v23;
        v24 = *(v10 + 5);
        v39 = *(v10 + 4);
        v40 = v24;
        v25 = *(v10 + 1);
        v35 = *v10;
        v36 = v25;
        v26 = v25;
        v27 = type metadata accessor for FormatJsonKeyValue();
        sub_1D6A5ABA0(v34, v26, (a4 + *(v27 + 20)));
        sub_1D5D256CC(v14, type metadata accessor for FeedItem);
        *a4 = 6775156;
        a4[1] = 0xE300000000000000;
        sub_1D5EE5B54(&v35);
        result = (*(*(v27 - 8) + 56))(a4, 0, 1, v27);
        break;
      case 0xDu:
        v28 = *(v10 + 1);
        v30 = *(v10 + 2);
        v29 = *(v10 + 3);
        v31 = v10[32];
        *&v35 = *v10;
        *(&v35 + 1) = v28;
        *&v36 = v30;
        *(&v36 + 1) = v29;
        LOBYTE(v37) = v31;
        v32 = type metadata accessor for FormatJsonKeyValue();
        sub_1D6B1905C(v34, &v35, (a4 + *(v32 + 20)));
        swift_unknownObjectRelease();

        sub_1D5D256CC(v14, type metadata accessor for FeedItem);
        *a4 = 0x76457374726F7073;
        a4[1] = 0xEB00000000746E65;
        result = (*(*(v32 - 8) + 56))(a4, 0, 1, v32);
        break;
      case 0x12u:
        goto LABEL_4;
      default:
        sub_1D5D256CC(v14, type metadata accessor for FeedItem);
        v14 = v10;
        goto LABEL_4;
    }
  }

  return result;
}

uint64_t FormatJsonConfig.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6CD7434(uint64_t a1)
{
  result = sub_1D6CD7504(&qword_1EC894D50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CD7478(void *a1)
{
  a1[1] = sub_1D6CD7504(&qword_1EDF30470);
  a1[2] = sub_1D6CD7504(&unk_1EDF11310);
  result = sub_1D6CD7504(qword_1EC894D58);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6CD7504(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatJsonConfig();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6CD7544@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D669CBE0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6CD7594(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_1D5E1FD58(v4, v5);

  return v6 & 1;
}

void *sub_1D6CD7644(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1D6CD7974(0, qword_1EDF103F0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v26 - v9);
  v11 = type metadata accessor for FormatJsonKeyValue();
  MEMORY[0x1EEE9AC00](v11, v12);
  v30 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v29 = &v26 - v17;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = a1 + 32;
  v26 = v16;
  v20 = (v16 + 48);
  v21 = MEMORY[0x1E69E7CC0];
  v27 = v11;
  v28 = a2;
  while (1)
  {
    sub_1D6CD6FB0(v19, a2, a3, v10);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v11) == 1)
    {
      sub_1D67D05C8(v10);
    }

    else
    {
      v22 = v29;
      sub_1D6CD790C(v10, v29, type metadata accessor for FormatJsonKeyValue);
      sub_1D6CD790C(v22, v30, type metadata accessor for FormatJsonKeyValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D698F454(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1D698F454(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_1D6CD790C(v30, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, type metadata accessor for FormatJsonKeyValue);
      v11 = v27;
      a2 = v28;
    }

    v19 += 40;
    if (!--v18)
    {
      return v21;
    }
  }

  return v21;
}

uint64_t sub_1D6CD790C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6CD7974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FormatJsonKeyValue();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t FeedGroupKnobsRuleList.value(for:)()
{
  v4 = vdupq_lane_s64(*(*v0 + 80), 0).u64[0];
  type metadata accessor for FeedGroupKnobsRuleList.Selector();
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
  }

  v2 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D726249C();

  return v4;
}

uint64_t FeedGroupKnobsRuleList.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FeedGroupKnobsRuleList.init(from:)(a1);
  return v2;
}

int64x2_t **FeedGroupKnobsRuleList.init(from:)(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = (*v1)[6].i64[0];
  v58 = v1;
  v6 = v3[6].i64[1];
  v54 = v6;
  v56 = v5;
  v57 = v6;
  v48 = v4;
  v7 = v4[5];
  *&v8 = vdupq_laneq_s64(v7, 1).u64[0];
  *(&v8 + 1) = v5;
  v51 = v7;
  v52 = vdupq_lane_s64(v7.i64[0], 0);
  v53 = v8;
  v55 = v7.i64[1];
  v9 = type metadata accessor for FeedGroupKnobsRuleList.Selector();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v49 = v9;
  v46 = sub_1D725AAEC();
  v44 = sub_1D726393C();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v10);
  v47 = &v39 - v11;
  v43 = v51.i64[0];
  v12 = sub_1D725AAEC();
  v13 = sub_1D726393C();
  v41 = *(v13 - 8);
  v42 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v40 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v45 = &v39 - v18;
  v52 = v51;
  *&v53 = v5;
  *(&v53 + 1) = v6;
  type metadata accessor for FeedGroupKnobsRuleList.CodingKeys();
  swift_getWitnessTable();
  v19 = sub_1D726435C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v39 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v50;
  sub_1D7264B0C();
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264AEC();
    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
    swift_getWitnessTable();
    v29 = v40;
    sub_1D72646EC();
    v30 = *(v12 - 8);
    if ((*(v30 + 48))(v29, 1, v12) == 1)
    {
      (*(v41 + 8))(v29, v42);
      v31 = sub_1D726275C();
    }

    else
    {
      v31 = sub_1D725A74C();
      (*(v30 + 8))(v29, v12);
    }

    v32 = v58;
    v58[2] = v31;
    v37 = sub_1D726275C();

    v32[3] = v37;
    __swift_destroy_boxed_opaque_existential_1(&v52);
  }

  else
  {
    v50 = v20;
    v25 = v44;
    v52.i8[0] = 0;
    swift_getWitnessTable();
    v26 = v45;
    v51.i64[0] = v19;
    sub_1D726421C();
    v27 = *(v12 - 8);
    if ((*(v27 + 48))(v26, 1, v12) == 1)
    {
      (*(v41 + 8))(v26, v42);
      v28 = sub_1D726275C();
    }

    else
    {
      v28 = sub_1D725A74C();
      (*(v27 + 8))(v26, v12);
    }

    v32 = v58;
    v58[2] = v28;
    v52.i8[0] = 1;
    v33 = v46;
    swift_getWitnessTable();
    v34 = v47;
    sub_1D726421C();
    v35 = *(v33 - 8);
    if ((*(v35 + 48))(v34, 1, v33) == 1)
    {
      (*(v39 + 8))(v34, v25);
      v36 = sub_1D726275C();
    }

    else
    {
      v36 = sub_1D725A74C();
      (*(v35 + 8))(v34, v33);
    }

    v50[1](v23, v51.i64[0]);
    v32[3] = v36;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v32;
}

uint64_t FeedGroupKnobsRuleList.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = *v1;
  v21 = *(*v1 + 80);
  v7 = *(v5 + 96);
  v8 = *(v5 + 104);
  v23 = *(v6 + 88);
  v27 = v21;
  v22 = v21;
  *&v28 = v7;
  *(&v28 + 1) = v8;
  type metadata accessor for FeedGroupKnobsRuleList.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_1D726446C();
  v19 = *(v9 - 8);
  v20 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17 - v11;
  v18 = v3[3];
  v33 = v18;
  v28 = v23;
  v27 = vdupq_lane_s64(v21, 0);
  v30 = *(&v21 + 1);
  v29 = v8;
  *&v23 = v7;
  v31 = v7;
  v32 = v8;
  v13 = type metadata accessor for FeedGroupKnobsRuleList.Selector();
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264B3C();
    v33 = v3[2];
    __swift_mutable_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    sub_1D72627FC();
    v24 = v23;
    swift_getWitnessTable();
    sub_1D726476C();
    return __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    v17 = v13;
    *&v21 = v2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264B5C();
    v27.i64[0] = v3[2];
    LOBYTE(v33) = 0;
    sub_1D72627FC();
    v26 = v23;
    swift_getWitnessTable();
    v16 = v20;
    v15 = v21;
    sub_1D726443C();
    if (!v15)
    {
      v27.i64[0] = v18;
      LOBYTE(v33) = 1;
      WitnessTable = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1D726443C();
    }

    return (*(v19 + 8))(v12, v16);
  }
}

uint64_t FeedGroupKnobsRuleList.__allocating_init(value:selectors:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FeedGroupKnobsRuleList.init(value:selectors:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t static FeedGroupKnobsRuleList.== infix(_:_:)()
{
  if (sub_1D726280C())
  {
    type metadata accessor for FeedGroupKnobsRuleList.Selector();
    swift_getWitnessTable();
    v0 = sub_1D726280C();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

void *FeedGroupKnobsRuleList.Selector.__allocating_init(value:selector:)(uint64_t a1, uint64_t *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  result[3] = a2[1];
  result[4] = a1;
  result[2] = v5;
  return result;
}

void *FeedGroupKnobsRuleList.Selector.init(value:selector:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[3] = a2[1];
  v2[4] = a1;
  v2[2] = v3;
  return v2;
}

uint64_t FeedGroupKnobsRuleList.Selector.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FeedGroupKnobsRuleList.Selector.init(from:)(a1);
  return v2;
}

void *FeedGroupKnobsRuleList.Selector.init(from:)(void *a1)
{
  v35 = a1;
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 128);
  v32 = sub_1D725AAEC();
  v8 = sub_1D726393C();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v33 = &v28 - v10;
  *&v11 = v7;
  *(&v11 + 1) = *(v4 + 136);
  *&v12 = *(v4 + 112);
  v36 = *(v4 + 80);
  v37 = v5;
  v30 = v5;
  v13 = *(v4 + 96);
  *(&v12 + 1) = v6;
  v39 = v12;
  v40 = v11;
  v38 = v13;
  type metadata accessor for FeedGroupKnobsRuleList.Selector.CodingKeys();
  swift_getWitnessTable();
  v14 = sub_1D726435C();
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v28 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v34;
  sub_1D7264B0C();
  if (v18)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v36) = 1;
    v19 = v32;
    swift_getWitnessTable();
    v20 = v33;
    sub_1D726421C();
    v21 = *(v19 - 8);
    if ((*(v21 + 48))(v20, 1, v19) == 1)
    {
      (*(v28 + 8))(v33, v29);
      v22 = sub_1D726275C();
    }

    else
    {
      v23 = v32;
      v24 = v33;
      v22 = sub_1D725A74C();
      (*(v21 + 8))(v24, v23);
    }

    v25 = v31;
    v2[4] = v22;
    v41 = 0;
    sub_1D5C36978();
    sub_1D726431C();
    (*(v25 + 8))(v17, v14);
    v27 = v37;
    v2[2] = v36;
    v2[3] = v27;
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v2;
}

uint64_t static FeedGroupKnobsRuleList.Selector.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v2 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D726280C();
}

uint64_t sub_1D6CD8D98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6CD8DEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupKnobsRuleList.Selector.deinit()
{

  return v0;
}

uint64_t FeedGroupKnobsRuleList.Selector.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FeedGroupKnobsRuleList.Selector.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 120);
  v18 = *(*v2 + 80);
  v14 = *(v4 + 88);
  v19 = v14;
  v20 = *(v4 + 104);
  v21 = v5;
  v15 = v4[8];
  v22 = v15;
  type metadata accessor for FeedGroupKnobsRuleList.Selector.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1D726446C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v11 = v2[3];
  v18 = v2[2];
  *&v19 = v11;
  v23 = 0;
  sub_1D5D3E60C();

  v12 = v16;
  sub_1D726443C();

  if (!v12)
  {
    v18 = v2[4];
    v23 = 1;
    sub_1D72627FC();
    v17 = v15;
    swift_getWitnessTable();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6CD913C()
{
  v0 = sub_1D72641CC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6CD9190@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FeedGroupKnobsRuleList.Selector.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6CD91EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6CD9260(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D6CD92CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6CD933C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6CD93AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6CD913C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6CD93E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6CD913C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6CD941C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6CD9470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupKnobsRuleList.deinit()
{

  return v0;
}

uint64_t FeedGroupKnobsRuleList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6CD952C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FeedGroupKnobsRuleList.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t FormatEquationToken.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v10, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14[15] = *v10;
    return FormatEquationOperator.description.getter();
  }

  else
  {
    (*(v3 + 32))(v5, v10, v2);
    v13 = sub_1D72644BC();
    (*(v3 + 8))(v5, v2);
    return v13;
  }
}

uint64_t static FormatEquationToken.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v30 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v28[0] = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = v5;
  v6 = type metadata accessor for FormatEquationToken();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v28 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v16);
  v19 = v28 - v18;
  v21 = *(v20 + 48);
  v22 = *(v7 + 16);
  v22(v28 - v18, v31, v6, v17);
  (v22)(&v19[v21], v32, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v22)(v14, v19, v6);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = v30;
      v25 = v28[0];
      (*(v30 + 32))(v28[0], &v19[v21], a3);
      v23 = sub_1D7261FBC();
      v26 = *(v24 + 8);
      v26(v25, a3);
      v26(v14, a3);
      goto LABEL_8;
    }

    (*(v30 + 8))(v14, a3);
    goto LABEL_6;
  }

  (v22)(v10, v19, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:
    v23 = 0;
    v7 = v29;
    v6 = TupleTypeMetadata2;
    goto LABEL_8;
  }

  v23 = (0x29282F2A2D2BuLL >> (8 * *v10)) == (0x29282F2A2D2BuLL >> (8 * v19[v21]));
LABEL_8:
  (*(v7 + 8))(v19, v6);
  return v23 & 1;
}