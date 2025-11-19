uint64_t sub_1D67AA334(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1D67AA3B8()
{
  result = qword_1EC88B800;
  if (!qword_1EC88B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B800);
  }

  return result;
}

unint64_t sub_1D67AA410()
{
  result = qword_1EC88B808;
  if (!qword_1EC88B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B808);
  }

  return result;
}

unint64_t sub_1D67AA468()
{
  result = qword_1EC88B810;
  if (!qword_1EC88B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B810);
  }

  return result;
}

unint64_t sub_1D67AA4C0()
{
  result = qword_1EC88B818;
  if (!qword_1EC88B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B818);
  }

  return result;
}

unint64_t sub_1D67AA518()
{
  result = qword_1EC88B820;
  if (!qword_1EC88B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B820);
  }

  return result;
}

unint64_t sub_1D67AA570()
{
  result = qword_1EC88B828;
  if (!qword_1EC88B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B828);
  }

  return result;
}

void *sub_1D67AA5C4(__int128 *a1, char *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v114 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v17 = a1[7];
  v169 = a1[6];
  v170 = v17;
  v171 = a1[8];
  v172 = *(a1 + 18);
  v18 = a1[3];
  v165 = a1[2];
  v166 = v18;
  v19 = a1[5];
  v167 = a1[4];
  v168 = v19;
  v20 = a1[1];
  v163 = *a1;
  v164 = v20;
  if (a2)
  {
    v133 = v16;
    v134 = v15;
    v21 = MEMORY[0x1E69E6F90];
    v144 = &v106 - v14;
    sub_1D67AB2DC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v106 = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D67AB2DC(0, &qword_1EC880490, sub_1D5EA74B8, v21);
    v23 = v22;
    sub_1D5EA74B8();
    v136 = v24;
    v25 = *(v24 - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v131 = *(v25 + 80);
    v132 = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7274590;
    v107 = v28;
    v130 = v27;
    v29 = (v28 + v27);
    v31 = *(a2 + 5);
    v30 = *(a2 + 6);
    v32 = type metadata accessor for FormatInspectionItem(0);
    v110 = a2;
    v33 = v32;
    v34 = &v29[*(v32 + 24)];
    *v34 = v31;
    *(v34 + 1) = v30;
    v35 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = *(v35 - 8);
    v128 = *(v36 + 56);
    v129 = v35;
    v127 = v36 + 56;
    v128(v34, 0, 1, v35);
    *v29 = 0xD000000000000010;
    *(v29 + 1) = 0x80000001D73C4840;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v37 = &v29[*(v33 + 28)];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = -1;
    v38 = *(v33 - 8);
    v39 = *(v38 + 56);
    v40 = v38 + 56;
    (v39)(v29, 0, 1, v33);
    v41 = v144;
    v125 = *(v5 + 16);
    v126 = v5 + 16;
    v125(v144, &v110[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl], v4);
    v142 = v5;
    v42 = *(v5 + 56);
    v135 = v4;
    v43 = v4;
    v44 = v110;
    v123 = v42;
    v124 = v5 + 56;
    v42(v41, 0, 1, v43);

    sub_1D711FCD0(0x5255206465626D45, 0xE90000000000004CLL, v41, &v29[v26]);
    v109 = v29;
    v137 = v26;
    v143 = v40;
    v144 = v39;
    (v39)(&v29[v26], 0, 1, v33);
    v45 = *&v44[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources];
    if (v45 >> 62)
    {
      goto LABEL_23;
    }

    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      while (1)
      {
        v145 = MEMORY[0x1E69E7CC0];
        result = sub_1D6997EC0(0, v46 & ~(v46 >> 63), 0);
        if (v46 < 0)
        {
          break;
        }

        v48 = 0;
        v49 = v145;
        v122 = v45 & 0xC000000000000001;
        v50 = 2 * v137;
        v117 = 3 * v137;
        v116 = (v142 + 48);
        v113 = (v142 + 32);
        v111 = v45 & 0xFFFFFFFFFFFFFF8;
        v112 = (v142 + 8);
        v115 = xmmword_1D7279970;
        v121 = xmmword_1D7287CC0;
        v119 = v46;
        v120 = v45;
        v118 = 2 * v137;
        while (!__OFADD__(v48, 1))
        {
          v141 = v49;
          v142 = v48;
          v140 = v48 + 1;
          if (v122)
          {
            v51 = MEMORY[0x1DA6FB460]();
          }

          else
          {
            if (v48 >= *(v111 + 16))
            {
              goto LABEL_22;
            }

            v51 = *(v45 + 8 * v48 + 32);
          }

          v52 = v130;
          v53 = swift_allocObject();
          *(v53 + 16) = v115;
          v138 = v53;
          v54 = (v53 + v52);
          v56 = v51[2];
          v55 = v51[3];
          sub_1D5F8E840(v56, v55);
          sub_1D71221AC(0x20746E65746E6F43, 0xEC00000065707954, v56, v55, v54);
          v57 = v33;
          v58 = v33;
          v59 = v144;
          (v144)(v54, 0, 1, v57);
          v60 = v51[4];
          v61 = v51[5];

          v62 = v137;
          sub_1D711F844(7955787, 0xE300000000000000, v60, v61, &v54[v137]);
          v59(&v54[v62], 0, 1, v58);
          v63 = &v54[v50];
          v139 = v51;
          v64 = v51 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
          v65 = v133;
          v66 = v135;
          v44 = v125;
          v125(v133, v64, v135);
          v123(v65, 0, 1, v66);
          v67 = v134;
          sub_1D5EB84C0(v65, v134);
          if ((*v116)(v67, 1, v66) == 1)
          {
            sub_1D67AB340(v65, sub_1D5B4D3E0);
            v128(&v63[*(v58 + 24)], 1, 1, v129);
            *v63 = v121;
            *(v63 + 2) = 0;
            *(v63 + 3) = 0;
            v68 = &v63[*(v58 + 28)];
            *v68 = 0;
            *(v68 + 1) = 0;
            v68[16] = -1;
          }

          else
          {
            v69 = v114;
            (v44)(v114, v67, v66);
            sub_1D67AB340(v65, sub_1D5B4D3E0);
            v70 = *(v58 + 24);
            (*v113)(&v63[v70], v69, v66);
            v71 = v129;
            swift_storeEnumTagMultiPayload();
            v128(&v63[v70], 0, 1, v71);
            *v63 = v121;
            *(v63 + 2) = 0;
            *(v63 + 3) = 0;
            v72 = &v63[*(v58 + 28)];
            *v72 = 0;
            *(v72 + 1) = 0;
            v72[16] = -1;
            (*v112)(v67, v66);
          }

          v33 = v58;
          (v144)(v63, 0, 1, v58);
          sub_1D6795150(0, 0xE000000000000000, 0, 0, v138, v161);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(&v152 + 1) = &type metadata for FormatInspectionGroup;
          *&v153 = &off_1F518B2C0;
          v73 = swift_allocObject();
          *&v151 = v73;

          *(v73 + 48) = v162;
          v74 = v161[1];
          *(v73 + 16) = v161[0];
          *(v73 + 32) = v74;
          v145 = v141;
          v76 = *(v141 + 16);
          v75 = *(v141 + 24);
          v45 = v120;
          if (v76 >= v75 >> 1)
          {
            sub_1D6997EC0((v75 > 1), v76 + 1, 1);
          }

          v77 = *(&v152 + 1);
          v78 = v153;
          v79 = __swift_mutable_project_boxed_opaque_existential_1(&v151, *(&v152 + 1));
          v80 = MEMORY[0x1EEE9AC00](v79, v79);
          v82 = &v106 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v83 + 16))(v82, v80);
          sub_1D5BD0BE4(v76, v82, &v145, v77, v78);
          __swift_destroy_boxed_opaque_existential_1(&v151);
          v49 = v145;
          v48 = v142 + 1;
          v50 = v118;
          if (v140 == v119)
          {
            v44 = v110;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v46 = sub_1D7263BFC();
        if (!v46)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_24:
      v50 = 2 * v137;
      v49 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v85 = sub_1D5F62BFC(v49);

      v86 = sub_1D7073500(v85);

      v87 = v109;
      sub_1D711AD20(0x756F532061746144, 0xEC00000073656372, v86, 0, 0, &v109[v50]);
      (v144)(&v87[v50], 0, 1, v33);
      v88 = &v44[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config];
      v89 = *&v44[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8];
      if (v89)
      {
        v90 = *v88;
      }

      else
      {
        v90 = 0;
      }

      v91 = 3 * v137;
      sub_1D67AB2DC(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
      v92 = swift_initStackObject();
      *(v92 + 16) = v106;
      v157 = v169;
      v158 = v170;
      v159 = v171;
      v160 = v172;
      v153 = v165;
      v154 = v166;
      v155 = v167;
      v156 = v168;
      v151 = v163;
      v152 = v164;
      v93 = v88[1];
      v94 = v88[2];
      v95 = v88[3];
      v96 = v88[4];
      v97 = v88[5];
      v145 = *v88;
      v146 = v93;
      v147 = v94;
      v148 = v95;
      v149 = v96;
      v150 = v97;
      sub_1D5F8B638(v145, v93);
      v98 = sub_1D6924F88(&v151, &v145);
      sub_1D5F8BBC8(v145, v146);
      *(v92 + 56) = &type metadata for FormatInspection;
      *(v92 + 64) = &off_1F51E3FD0;
      *(v92 + 32) = v98;
      v99 = sub_1D5F62BFC(v92);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v92 + 32);
      v100 = sub_1D7073500(v99);

      v101 = v109;
      sub_1D711AD20(0x6769666E6F43, 0xE600000000000000, v100, v90, v89, &v109[v91]);
      (v144)(&v101[v91], 0, 1, v33);
      sub_1D6795150(0x676E69646E617453, 0xE800000000000000, 0, 0, v107, &v151);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v102 = inited;
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(v102 + 64) = &off_1F518B2C0;
      v103 = swift_allocObject();
      *(v102 + 32) = v103;
      *(v103 + 48) = v153;
      v104 = v152;
      *(v103 + 16) = v151;
      *(v103 + 32) = v104;
      v105 = sub_1D7073500(v102);
      swift_setDeallocating();
      sub_1D67AB340(v102 + 32, sub_1D5E4F358);

      return v105;
    }
  }

  else
  {
    v84 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v84);
  }

  return result;
}

uint64_t sub_1D67AB290()
{
  v0 = sub_1D72641CC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

void sub_1D67AB2DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D67AB340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatLayeredMediaNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatLayeredMediaNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatLayeredMediaNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatLayeredMediaNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatLayeredMediaNodeStyle.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return sub_1D5D04BD4(v2);
}

uint64_t FormatLayeredMediaNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 96);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatLayeredMediaNodeStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v4 = *(v1 + 168);
  v10 = *(v1 + 152);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 184);
  v6 = *(v1 + 120);
  v9[0] = *(v1 + 104);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D67AE85C(v9, v8, sub_1D615C3A4);
}

uint64_t FormatLayeredMediaNodeStyle.video.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 208);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatLayeredMediaNodeStyle.motion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 232);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t sub_1D67AB674(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v251 = v2;
  v8 = v2[6];
  swift_beginAccess();
  v9 = *(a1 + 48);
  v340 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  if (__OFADD__(v10, *(v9 + 16)))
  {
    goto LABEL_96;
  }

  v252 = *(v9 + 16);
  v246 = a1;
  sub_1D67AE748();

  v258 = v9;

  sub_1D7261DAC();
  v11 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v12 = v8;
  v13 = v11;
  v14 = *(v12 + 16);
  v249 = v5;
  v250 = v4;
  v247 = v7;
  v248 = v6;
  v255 = v12;
  if (v14)
  {
    v15 = 0;
    v16 = (v12 + 32);
    v17 = v14 - 1;
    while (1)
    {
      v327 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      v331 = v16[4];
      v330 = v20;
      v329 = v19;
      v328 = v18;
      v21 = v16[5];
      v22 = v16[6];
      v23 = v16[7];
      v335 = v16[8];
      v334 = v23;
      v333 = v22;
      v332 = v21;
      v24 = v16[9];
      v25 = v16[10];
      v26 = v16[11];
      v339 = v16[12];
      v338 = v26;
      v337 = v25;
      v336 = v24;
      v27 = v327;
      sub_1D5D0B3B8(&v327, &v314);
      sub_1D5D0B3B8(&v327, &v314);
      v28 = v340;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v301 = v28;
      v30 = sub_1D6D8CB60(v27, *(&v27 + 1));
      v32 = v28[2];
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
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
        __break(1u);
LABEL_97:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }

      v36 = v31;
      if (v28[3] < v35)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      v58 = v30;
      sub_1D6D83C30();
      v30 = v58;
      if (v36)
      {
LABEL_10:
        v38 = v301;
        v39 = (*(v301 + 56) + 208 * v30);
        v314 = *v39;
        v40 = v39[3];
        v42 = v39[1];
        v41 = v39[2];
        v318 = v39[4];
        v317 = v40;
        v315 = v42;
        v316 = v41;
        v43 = v39[7];
        v45 = v39[5];
        v44 = v39[6];
        v322 = v39[8];
        v321 = v43;
        v319 = v45;
        v320 = v44;
        v46 = v39[11];
        v48 = v39[9];
        v47 = v39[10];
        v326 = v39[12];
        v325 = v46;
        v323 = v48;
        v324 = v47;
        *v39 = v327;
        v49 = v328;
        v50 = v329;
        v51 = v331;
        v39[3] = v330;
        v39[4] = v51;
        v39[1] = v49;
        v39[2] = v50;
        v52 = v332;
        v53 = v333;
        v54 = v335;
        v39[7] = v334;
        v39[8] = v54;
        v39[5] = v52;
        v39[6] = v53;
        v55 = v336;
        v56 = v337;
        v57 = v339;
        v39[11] = v338;
        v39[12] = v57;
        v39[9] = v55;
        v39[10] = v56;
        sub_1D5D0B670(&v314);
        goto LABEL_14;
      }

LABEL_12:
      v38 = v301;
      *(v301 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      *(v38[6] + 16 * v30) = v27;
      v59 = (v38[7] + 208 * v30);
      v60 = v339;
      v61 = v338;
      v62 = v337;
      v59[9] = v336;
      v59[10] = v62;
      v59[11] = v61;
      v59[12] = v60;
      v63 = v335;
      v64 = v334;
      v65 = v333;
      v59[5] = v332;
      v59[6] = v65;
      v59[7] = v64;
      v59[8] = v63;
      v66 = v331;
      v67 = v330;
      v68 = v329;
      v59[1] = v328;
      v59[2] = v68;
      v59[3] = v67;
      v59[4] = v66;
      *v59 = v327;
      v69 = v38[2];
      v34 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (v34)
      {
        goto LABEL_92;
      }

      v38[2] = v70;

LABEL_14:
      v340 = v38;

      sub_1D5D0B670(&v327);
      v72 = *(v13 + 2);
      v71 = *(v13 + 3);
      if (v72 >= v71 >> 1)
      {
        v13 = sub_1D698F4BC((v71 > 1), v72 + 1, 1, v13);
      }

      *(v13 + 2) = v72 + 1;
      *&v13[16 * v72 + 32] = v27;
      if (v17 == v15)
      {
        goto LABEL_19;
      }

      ++v15;
      v16 += 13;
      if (v15 >= *(v255 + 16))
      {
        goto LABEL_88;
      }
    }

    sub_1D6D707D8(v35, isUniquelyReferenced_nonNull_native);
    v30 = sub_1D6D8CB60(v27, *(&v27 + 1));
    if ((v36 & 1) != (v37 & 1))
    {
      goto LABEL_97;
    }

LABEL_9:
    if (v36)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_19:
  v73 = v258;
  v74 = sub_1D698F4BC(0, v252, 0, MEMORY[0x1E69E7CC0]);
  v75 = *(v258 + 16);
  if (!v75)
  {
    goto LABEL_51;
  }

  v76 = 0;
  v253 = v75 - 1;
  v77 = 32;
  do
  {
    v327 = *(v73 + v77);
    v78 = *(v73 + v77 + 16);
    v79 = *(v73 + v77 + 32);
    v80 = *(v73 + v77 + 48);
    v331 = *(v73 + v77 + 64);
    v330 = v80;
    v329 = v79;
    v328 = v78;
    v81 = *(v73 + v77 + 80);
    v82 = *(v73 + v77 + 96);
    v83 = *(v73 + v77 + 112);
    v335 = *(v73 + v77 + 128);
    v334 = v83;
    v333 = v82;
    v332 = v81;
    v84 = *(v73 + v77 + 144);
    v85 = *(v73 + v77 + 160);
    v86 = *(v73 + v77 + 176);
    v339 = *(v73 + v77 + 192);
    v338 = v86;
    v337 = v85;
    v336 = v84;
    v323 = *(v73 + v77 + 144);
    v324 = *(v73 + v77 + 160);
    v325 = *(v73 + v77 + 176);
    v326 = *(v73 + v77 + 192);
    v319 = *(v73 + v77 + 80);
    v320 = *(v73 + v77 + 96);
    v321 = *(v73 + v77 + 112);
    v322 = *(v73 + v77 + 128);
    v315 = *(v73 + v77 + 16);
    v316 = *(v73 + v77 + 32);
    v317 = *(v73 + v77 + 48);
    v318 = *(v73 + v77 + 64);
    v314 = *(v73 + v77);
    v87 = v340;
    if (v340[2])
    {
      v88 = *(&v314 + 1);
      v89 = v314;
      sub_1D5D0B3B8(&v327, &v288);
      v90 = sub_1D6D8CB60(v89, v88);
      if (v91)
      {
        v92 = (v87[7] + 208 * v90);
        v275 = *v92;
        v93 = v92[3];
        v94 = v92[4];
        v95 = v92[2];
        v276 = v92[1];
        v277 = v95;
        v278 = v93;
        v279 = v94;
        v96 = v92[5];
        v97 = v92[6];
        v98 = v92[8];
        v282 = v92[7];
        v283 = v98;
        v280 = v96;
        v281 = v97;
        v99 = v92[9];
        v100 = v92[10];
        v101 = v92[12];
        v286 = v92[11];
        v287 = v101;
        v284 = v99;
        v285 = v100;
        v310 = v92[9];
        v311 = v92[10];
        v312 = v92[11];
        v313 = v92[12];
        v306 = v92[5];
        v307 = v92[6];
        v308 = v92[7];
        v309 = v92[8];
        v302 = v92[1];
        v303 = v92[2];
        v304 = v92[3];
        v305 = v92[4];
        v301 = *v92;
        v102 = v301;
        sub_1D67AD390(&v314, &v288);
        sub_1D5D0B3B8(&v275, &v262);
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v261 = v87;
        v104 = sub_1D6D8CB60(v102, *(&v102 + 1));
        v106 = v87[2];
        v107 = (v105 & 1) == 0;
        v34 = __OFADD__(v106, v107);
        v108 = v106 + v107;
        if (v34)
        {
          goto LABEL_94;
        }

        v109 = v105;
        if (v87[3] >= v108)
        {
          if ((v103 & 1) == 0)
          {
            v167 = v104;
            sub_1D6D83C30();
            v104 = v167;
            if (v109)
            {
              goto LABEL_37;
            }

            goto LABEL_45;
          }
        }

        else
        {
          sub_1D6D707D8(v108, v103);
          v104 = sub_1D6D8CB60(v102, *(&v102 + 1));
          if ((v109 & 1) != (v110 & 1))
          {
            goto LABEL_97;
          }
        }

        if (v109)
        {
LABEL_37:
          v139 = v261;
          v140 = (v261[7] + 208 * v104);
          v262 = *v140;
          v141 = v140[4];
          v143 = v140[1];
          v142 = v140[2];
          v265 = v140[3];
          v266 = v141;
          v263 = v143;
          v264 = v142;
          v144 = v140[8];
          v146 = v140[5];
          v145 = v140[6];
          v269 = v140[7];
          v270 = v144;
          v267 = v146;
          v268 = v145;
          v147 = v140[12];
          v149 = v140[9];
          v148 = v140[10];
          v273 = v140[11];
          v274 = v147;
          v271 = v149;
          v272 = v148;
          v140[9] = v297;
          v140[10] = v298;
          v140[11] = v299;
          v140[12] = v300;
          v140[5] = v293;
          v140[6] = v294;
          v140[7] = v295;
          v140[8] = v296;
          v140[1] = v289;
          v140[2] = v290;
          v140[3] = v291;
          v140[4] = v292;
          *v140 = v288;
          sub_1D5D0B670(&v262);
LABEL_47:
          v260[10] = v311;
          v260[11] = v312;
          v260[12] = v313;
          v260[6] = v307;
          v260[7] = v308;
          v260[8] = v309;
          v260[9] = v310;
          v260[2] = v303;
          v260[3] = v304;
          v260[4] = v305;
          v260[5] = v306;
          v260[0] = v301;
          v260[1] = v302;
          sub_1D5D0B670(v260);
          v272 = v324;
          v273 = v325;
          v274 = v326;
          v268 = v320;
          v269 = v321;
          v270 = v322;
          v271 = v323;
          v264 = v316;
          v265 = v317;
          v266 = v318;
          v267 = v319;
          v262 = v314;
          v263 = v315;
          sub_1D5D0B670(&v262);
          v340 = v139;
          goto LABEL_48;
        }

LABEL_45:
        v139 = v261;
        v261[(v104 >> 6) + 8] |= 1 << v104;
        *(v139[6] + 16 * v104) = v102;
        v168 = (v139[7] + 208 * v104);
        *v168 = v288;
        v168[4] = v292;
        v168[3] = v291;
        v168[2] = v290;
        v168[1] = v289;
        v168[8] = v296;
        v168[7] = v295;
        v168[6] = v294;
        v168[5] = v293;
        v168[12] = v300;
        v168[11] = v299;
        v168[10] = v298;
        v168[9] = v297;
        v169 = v139[2];
        v34 = __OFADD__(v169, 1);
        v170 = v169 + 1;
        if (v34)
        {
          goto LABEL_95;
        }

        v139[2] = v170;

        goto LABEL_47;
      }
    }

    else
    {
      sub_1D5D0B3B8(&v327, &v288);
      v88 = *(&v314 + 1);
      v89 = v314;
    }

    v298 = v324;
    v299 = v325;
    v300 = v326;
    v294 = v320;
    v295 = v321;
    v296 = v322;
    v297 = v323;
    v290 = v316;
    v291 = v317;
    v292 = v318;
    v293 = v319;
    v288 = v314;
    v289 = v315;
    sub_1D5D0B3B8(&v288, &v275);
    v111 = swift_isUniquelyReferenced_nonNull_native();
    *&v262 = v87;
    v112 = sub_1D6D8CB60(v89, v88);
    v114 = v87[2];
    v115 = (v113 & 1) == 0;
    v34 = __OFADD__(v114, v115);
    v116 = v114 + v115;
    if (v34)
    {
      goto LABEL_91;
    }

    v117 = v113;
    if (v87[3] < v116)
    {
      sub_1D6D707D8(v116, v111);
      v112 = sub_1D6D8CB60(v89, v88);
      if ((v117 & 1) != (v118 & 1))
      {
        goto LABEL_97;
      }

LABEL_33:
      if ((v117 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    }

    if (v111)
    {
      goto LABEL_33;
    }

    v150 = v112;
    sub_1D6D83C30();
    v112 = v150;
    if ((v117 & 1) == 0)
    {
LABEL_39:
      v119 = v262;
      *(v262 + 8 * (v112 >> 6) + 64) |= 1 << v112;
      v151 = (v119[6] + 16 * v112);
      *v151 = v89;
      v151[1] = v88;
      v152 = (v119[7] + 208 * v112);
      v153 = v300;
      v155 = v298;
      v154 = v299;
      v152[9] = v297;
      v152[10] = v155;
      v152[11] = v154;
      v152[12] = v153;
      v157 = v295;
      v156 = v296;
      v158 = v294;
      v152[5] = v293;
      v152[6] = v158;
      v152[7] = v157;
      v152[8] = v156;
      v160 = v291;
      v159 = v292;
      v161 = v290;
      v152[1] = v289;
      v152[2] = v161;
      v152[3] = v160;
      v152[4] = v159;
      *v152 = v288;
      v162 = v119[2];
      v34 = __OFADD__(v162, 1);
      v163 = v162 + 1;
      if (v34)
      {
        goto LABEL_93;
      }

      v119[2] = v163;

      goto LABEL_41;
    }

LABEL_34:
    v119 = v262;
    v120 = (*(v262 + 56) + 208 * v112);
    v275 = *v120;
    v121 = v120[4];
    v123 = v120[1];
    v122 = v120[2];
    v278 = v120[3];
    v279 = v121;
    v276 = v123;
    v277 = v122;
    v124 = v120[8];
    v126 = v120[5];
    v125 = v120[6];
    v282 = v120[7];
    v283 = v124;
    v280 = v126;
    v281 = v125;
    v127 = v120[12];
    v129 = v120[9];
    v128 = v120[10];
    v286 = v120[11];
    v287 = v127;
    v284 = v129;
    v285 = v128;
    *v120 = v288;
    v130 = v289;
    v131 = v290;
    v132 = v292;
    v120[3] = v291;
    v120[4] = v132;
    v120[1] = v130;
    v120[2] = v131;
    v133 = v293;
    v134 = v294;
    v135 = v296;
    v120[7] = v295;
    v120[8] = v135;
    v120[5] = v133;
    v120[6] = v134;
    v136 = v297;
    v137 = v298;
    v138 = v300;
    v120[11] = v299;
    v120[12] = v138;
    v120[9] = v136;
    v120[10] = v137;
    sub_1D5D0B670(&v275);
LABEL_41:
    v340 = v119;
    v164 = *(v74 + 2);
    v165 = *(v74 + 3);

    if (v164 >= v165 >> 1)
    {
      v74 = sub_1D698F4BC((v165 > 1), v164 + 1, 1, v74);
    }

    v285 = v324;
    v286 = v325;
    v287 = v326;
    v281 = v320;
    v282 = v321;
    v283 = v322;
    v284 = v323;
    v277 = v316;
    v278 = v317;
    v279 = v318;
    v280 = v319;
    v275 = v314;
    v276 = v315;
    sub_1D5D0B670(&v275);
    *(v74 + 2) = v164 + 1;
    v166 = &v74[16 * v164];
    *(v166 + 4) = v89;
    *(v166 + 5) = v88;
LABEL_48:
    v73 = v258;
    if (v253 == v76)
    {
      goto LABEL_51;
    }

    ++v76;
    v77 += 208;
  }

  while (v76 < *(v258 + 16));
  __break(1u);
LABEL_51:

  *&v327 = v74;

  sub_1D6985DAC(v171);
  v172 = *(v327 + 16);
  if (v172)
  {
    v173 = 0;
    v174 = v327 + 40;
    v256 = v327 + 40;
    v259 = MEMORY[0x1E69E7CC0];
LABEL_53:
    v175 = v340;
    v176 = (v174 + 16 * v173);
    v177 = v173;
    while (v177 < v172)
    {
      v173 = v177 + 1;
      if (__OFADD__(v177, 1))
      {
        goto LABEL_90;
      }

      if (v175[2])
      {
        v179 = *(v176 - 1);
        v178 = *v176;

        v180 = sub_1D6D8CB60(v179, v178);
        if (v181)
        {
          v182 = (v175[7] + 208 * v180);
          v327 = *v182;
          v183 = v182[3];
          v184 = v182[4];
          v185 = v182[2];
          v328 = v182[1];
          v329 = v185;
          v331 = v184;
          v330 = v183;
          v186 = v182[5];
          v187 = v182[6];
          v188 = v182[7];
          v335 = v182[8];
          v334 = v188;
          v333 = v187;
          v332 = v186;
          v189 = v182[9];
          v190 = v182[10];
          v191 = v182[11];
          v339 = v182[12];
          v338 = v191;
          v337 = v190;
          v336 = v189;
          sub_1D5D0B3B8(&v327, &v314);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v259 = sub_1D698DDD8(0, *(v259 + 2) + 1, 1, v259);
          }

          v174 = v256;
          v193 = *(v259 + 2);
          v192 = *(v259 + 3);
          if (v193 >= v192 >> 1)
          {
            v259 = sub_1D698DDD8((v192 > 1), v193 + 1, 1, v259);
          }

          *(v259 + 2) = v193 + 1;
          v194 = &v259[208 * v193];
          *(v194 + 2) = v327;
          v195 = v328;
          v196 = v329;
          v197 = v331;
          *(v194 + 5) = v330;
          *(v194 + 6) = v197;
          *(v194 + 3) = v195;
          *(v194 + 4) = v196;
          v198 = v332;
          v199 = v333;
          v200 = v335;
          *(v194 + 9) = v334;
          *(v194 + 10) = v200;
          *(v194 + 7) = v198;
          *(v194 + 8) = v199;
          v201 = v336;
          v202 = v337;
          v203 = v339;
          *(v194 + 13) = v338;
          *(v194 + 14) = v203;
          *(v194 + 11) = v201;
          *(v194 + 12) = v202;
          if (v173 != v172)
          {
            goto LABEL_53;
          }

          goto LABEL_67;
        }
      }

      ++v177;
      v176 += 2;
      if (v173 == v172)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_89;
  }

  v259 = MEMORY[0x1E69E7CC0];
LABEL_67:

  v204 = v251[7];
  if (!v204)
  {
    v204 = *(v246 + 56);
  }

  v205 = v251[8];
  v245 = v205;
  if ((~v205 & 0xF000000000000007) == 0)
  {
    v205 = *(v246 + 64);
    sub_1D5D04BD4(v205);
  }

  v206 = v251[9];
  if (!v206)
  {
  }

  v239 = v206;
  v207 = v251[10];
  v208 = v251[11];
  v209 = *(v251 + 96);
  v210 = v207;
  v257 = v208;
  v254 = *(v251 + 96);
  if (v209 >= 0xFE)
  {
    v210 = *(v246 + 80);
    v257 = *(v246 + 88);
    v254 = *(v246 + 96);
    sub_1D5ED34B0(v210, v257, v254);
  }

  LOBYTE(v332) = *(v251 + 184);
  v211 = *(v251 + 19);
  v329 = *(v251 + 17);
  v330 = v211;
  v331 = *(v251 + 21);
  v212 = *(v251 + 15);
  v327 = *(v251 + 13);
  v328 = v212;
  v244 = v204;
  v243 = v207;
  v242 = v208;
  v241 = v209;
  v240 = v205;
  if (v332 == 254)
  {
    v213 = *(v246 + 152);
    v303 = *(v246 + 136);
    v304 = v213;
    v305 = *(v246 + 168);
    LOBYTE(v306) = *(v246 + 184);
    v214 = *(v246 + 120);
    v301 = *(v246 + 104);
    v302 = v214;
    sub_1D67AE85C(&v301, &v314, sub_1D615C3A4);
    v316 = v303;
    v317 = v304;
    v318 = v305;
    LOBYTE(v319) = v306;
    v215 = v301;
    v216 = v302;
  }

  else
  {
    v217 = *(v251 + 19);
    v316 = *(v251 + 17);
    v317 = v217;
    v318 = *(v251 + 21);
    LOBYTE(v319) = *(v251 + 184);
    v215 = *(v251 + 13);
    v216 = *(v251 + 15);
  }

  v314 = v215;
  v315 = v216;
  v218 = v251[24];
  v219 = v251[25];
  v220 = *(v251 + 208);
  v237 = v218;
  v238 = v210;
  v236 = v219;
  v221 = *(v251 + 208);
  if (v220 == 255)
  {
    v218 = *(v246 + 192);
    v219 = *(v246 + 200);
    v221 = *(v246 + 208);
    sub_1D6189668(v218, v219, v221);
  }

  v232 = v219;
  v233 = v218;
  v223 = v251[27];
  v222 = v251[28];
  v224 = *(v251 + 232);
  v234 = v222;
  v235 = v223;
  v225 = *(v251 + 232);
  if (v224 == 255)
  {
    v223 = *(v246 + 216);
    v222 = *(v246 + 224);
    v225 = *(v246 + 232);
    sub_1D6189668(v223, v222, v225);
  }

  v226 = *(v251 + 233);
  if (v226 == 2)
  {
    LOBYTE(v226) = *(v246 + 233);
  }

  v227 = v251[30];
  if (!v227)
  {
    v227 = *(v246 + 240);
  }

  v228 = swift_allocObject();
  swift_beginAccess();
  v229 = v317;
  *(v228 + 136) = v316;
  *(v228 + 152) = v229;
  *(v228 + 168) = v318;
  v230 = v315;
  *(v228 + 104) = v314;
  *(v228 + 16) = v250;
  *(v228 + 24) = v249;
  *(v228 + 32) = v248;
  *(v228 + 40) = v247;
  *(v228 + 72) = v239;
  *(v228 + 80) = v238;
  *(v228 + 88) = v257;
  *(v228 + 96) = v254;
  *(v228 + 184) = v319;
  *(v228 + 120) = v230;
  *(v228 + 56) = v244;
  *(v228 + 64) = v240;
  swift_beginAccess();
  *(v228 + 48) = v259;
  *(v228 + 192) = v233;
  *(v228 + 200) = v232;
  *(v228 + 208) = v221;
  *(v228 + 216) = v223;
  *(v228 + 224) = v222;
  *(v228 + 232) = v225;
  *(v228 + 233) = v226;
  *(v228 + 240) = v227;

  sub_1D5D04BD4(v245);

  sub_1D5ED34B0(v243, v242, v241);
  sub_1D67AE85C(&v327, &v301, sub_1D615C3A4);
  sub_1D6189668(v237, v236, v220);
  sub_1D6189668(v235, v234, v224);

  return v228;
}

uint64_t sub_1D67AC7DC(uint64_t a1)
{
  swift_beginAccess();
  v92 = v1;
  v3 = *(v1 + 48);
  v4 = *(v3 + 16);

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1D698DDD8(0, v4, 0, MEMORY[0x1E69E7CC0]);
  v93 = sub_1D698DC68(0, v4, 0, v5);
  v94 = *(v3 + 16);
  if (v94)
  {
    v7 = 0;
    while (1)
    {
      v8 = (v3 + 32 + 208 * v7);
      v109 = *v8;
      v9 = v8[1];
      v10 = v8[2];
      v11 = v8[4];
      v112 = v8[3];
      v113 = v11;
      v110 = v9;
      v111 = v10;
      v12 = v8[5];
      v13 = v8[6];
      v14 = v8[8];
      v116 = v8[7];
      v117 = v14;
      v114 = v12;
      v115 = v13;
      v15 = v8[9];
      v16 = v8[10];
      v17 = v8[12];
      v120 = v8[11];
      v121 = v17;
      v118 = v15;
      v119 = v16;
      v18 = v109;
      sub_1D5D0B3B8(&v109, &v96);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v96 = v18;

      v19 = sub_1D6844380(&v96);

      v21 = *(v19 + 16);
      if (v21)
      {
        v22 = 0;
        v23 = 32;
        while (1)
        {
          if (v22 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          v25 = *(v19 + v23 + 16);
          v24 = *(v19 + v23 + 32);
          v26 = *(v19 + v23);
          v124 = *(v19 + v23 + 48);
          v123[1] = v25;
          v123[2] = v24;
          v123[0] = v26;
          v27 = v25;
          sub_1D5E3B610(v123, &v96);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v22;
          result = sub_1D5E3B66C(v123);
          v23 += 56;
          if (v21 == v22)
          {
            goto LABEL_10;
          }
        }

        result = sub_1D5E3B66C(v123);
        if (v27 <= 1)
        {
          v41 = *(v6 + 2);
          v40 = *(v6 + 3);
          if (v41 >= v40 >> 1)
          {
            result = sub_1D698DDD8((v40 > 1), v41 + 1, 1, v6);
            v6 = result;
          }

          *(v6 + 2) = v41 + 1;
          v42 = &v6[208 * v41];
          *(v42 + 2) = v109;
          v43 = v110;
          v44 = v111;
          v45 = v113;
          *(v42 + 5) = v112;
          *(v42 + 6) = v45;
          *(v42 + 3) = v43;
          *(v42 + 4) = v44;
          v46 = v114;
          v47 = v115;
          v48 = v117;
          *(v42 + 9) = v116;
          *(v42 + 10) = v48;
          *(v42 + 7) = v46;
          *(v42 + 8) = v47;
          v49 = v118;
          v50 = v119;
          v51 = v121;
          *(v42 + 13) = v120;
          *(v42 + 14) = v51;
          *(v42 + 11) = v49;
          *(v42 + 12) = v50;
        }

        else
        {
          v106 = v119;
          v107 = v120;
          v108 = v121;
          v102 = v115;
          v103 = v116;
          v104 = v117;
          v105 = v118;
          v98 = v111;
          v99 = v112;
          v100 = v113;
          v101 = v114;
          v96 = v109;
          v97 = v110;
          sub_1D5D0B3B8(&v109, v95);
          v29 = v93[2];
          v28 = v93[3];
          if (v29 >= v28 >> 1)
          {
            v93 = sub_1D698DC68((v28 > 1), v29 + 1, 1, v93);
          }

          result = sub_1D5D0B670(&v109);
          v93[2] = v29 + 1;
          v30 = &v93[27 * v29];
          v31 = v97;
          v32 = v98;
          v33 = v100;
          *(v30 + 5) = v99;
          *(v30 + 6) = v33;
          *(v30 + 3) = v31;
          *(v30 + 4) = v32;
          v34 = v101;
          v35 = v102;
          v36 = v104;
          *(v30 + 9) = v103;
          *(v30 + 10) = v36;
          *(v30 + 7) = v34;
          *(v30 + 8) = v35;
          v37 = v105;
          v38 = v106;
          v39 = v108;
          *(v30 + 13) = v107;
          *(v30 + 14) = v39;
          *(v30 + 11) = v37;
          *(v30 + 12) = v38;
          *(v30 + 2) = v96;
          v30[30] = v27;
        }
      }

      else
      {
LABEL_10:
        sub_1D5D0B670(&v109);
      }

      if (++v7 == v94)
      {
        break;
      }

      if (v7 >= *(v3 + 16))
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
  }

  sub_1D67AE7AC();
  v52 = sub_1D72626AC();

  v53 = *(v52 + 16);
  if (v53)
  {
    v54 = v53 - 1;
    for (i = 32; ; i += 216)
    {
      v56 = *(v52 + i + 16);
      v109 = *(v52 + i);
      v110 = v56;
      v57 = *(v52 + i + 32);
      v58 = *(v52 + i + 48);
      v59 = *(v52 + i + 80);
      v113 = *(v52 + i + 64);
      v114 = v59;
      v111 = v57;
      v112 = v58;
      v60 = *(v52 + i + 96);
      v61 = *(v52 + i + 112);
      v62 = *(v52 + i + 144);
      v117 = *(v52 + i + 128);
      v118 = v62;
      v115 = v60;
      v116 = v61;
      v63 = *(v52 + i + 160);
      v64 = *(v52 + i + 176);
      v65 = *(v52 + i + 192);
      v122 = *(v52 + i + 208);
      v120 = v64;
      v121 = v65;
      v119 = v63;
      sub_1D67AE85C(&v109, &v96, sub_1D67AE7AC);
      v67 = *(v6 + 2);
      v66 = *(v6 + 3);
      if (v67 >= v66 >> 1)
      {
        v6 = sub_1D698DDD8((v66 > 1), v67 + 1, 1, v6);
      }

      *(v6 + 2) = v67 + 1;
      v68 = &v6[208 * v67];
      *(v68 + 2) = v109;
      v69 = v110;
      v70 = v111;
      v71 = v113;
      *(v68 + 5) = v112;
      *(v68 + 6) = v71;
      *(v68 + 3) = v69;
      *(v68 + 4) = v70;
      v72 = v114;
      v73 = v115;
      v74 = v117;
      *(v68 + 9) = v116;
      *(v68 + 10) = v74;
      *(v68 + 7) = v72;
      *(v68 + 8) = v73;
      v75 = v118;
      v76 = v119;
      v77 = v121;
      *(v68 + 13) = v120;
      *(v68 + 14) = v77;
      *(v68 + 11) = v75;
      *(v68 + 12) = v76;
      if (!v54)
      {
        break;
      }

      --v54;
    }
  }

  v78 = *(v6 + 2);
  v79 = v92;

  if (v78)
  {
    v80 = 0;
    v81 = (v6 + 32);
    while (v80 < *(v6 + 2))
    {
      v109 = *v81;
      v82 = v81[1];
      v83 = v81[2];
      v84 = v81[4];
      v112 = v81[3];
      v113 = v84;
      v110 = v82;
      v111 = v83;
      v85 = v81[5];
      v86 = v81[6];
      v87 = v81[8];
      v116 = v81[7];
      v117 = v87;
      v114 = v85;
      v115 = v86;
      v88 = v81[9];
      v89 = v81[10];
      v90 = v81[12];
      v120 = v81[11];
      v121 = v90;
      v118 = v88;
      v119 = v89;
      ++v80;
      v106 = v89;
      v107 = v120;
      v108 = v90;
      v102 = v115;
      v103 = v116;
      v104 = v117;
      v105 = v88;
      v98 = v111;
      v99 = v112;
      v100 = v113;
      v101 = v114;
      v96 = v109;
      v97 = v110;
      swift_allocObject();
      sub_1D5D0B3B8(&v109, v95);
      v91 = sub_1D67AE8C4(v79, &v96);

      v81 += 13;
      v79 = v91;
      if (v78 == v80)
      {
        goto LABEL_35;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
    v91 = v92;
LABEL_35:

    return v91;
  }

  return result;
}

uint64_t sub_1D67ACDF0()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v42 = v2;
  v4 = *(v1 + 40);
  v40 = *(v1 + 32);
  swift_beginAccess();
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v43 = *(v1 + 56);
  v41 = v3;
  if ((~v6 & 0xF000000000000007) != 0)
  {
    v45[0] = *(v1 + 64);

    sub_1D5D04BD4(v6);
    sub_1D6C051DC(&v46);

    v6 = v46;
    v7 = *(v1 + 72);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {

    v7 = *(v1 + 72);
    if (v7)
    {
LABEL_3:
      v37 = sub_1D600CADC(v7);
      goto LABEL_6;
    }
  }

  v37 = 0;
LABEL_6:
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  v11 = *(v1 + 152);
  v48 = *(v1 + 136);
  v49 = v11;
  v50 = *(v1 + 168);
  v51 = *(v1 + 184);
  v12 = v51;
  v13 = *(v1 + 120);
  v46 = *(v1 + 104);
  v47 = v13;
  v44 = v5;
  v38 = v6;
  v39 = v4;
  v35 = v9;
  v36 = v8;
  v34 = v10;
  if (v51 == 254)
  {
    sub_1D5ED34B0(v8, v9, v10);
    v14 = v46;
    v30 = HIDWORD(v46);
    v15 = DWORD2(v46);
    v16 = *(&v47 + 1);
    v17 = v47;
    v31 = v48;
    v32 = v49;
    v33 = v50;
  }

  else
  {
    v33 = v50;
    v18 = *(&v48 + 1);
    v16 = *(&v47 + 1);
    v17 = v47;
    v15 = DWORD2(v46);
    v14 = v46;
    v32 = v49;
    v45[11] = v48;
    sub_1D67AE85C(&v46, v45, sub_1D615C3A4);
    sub_1D67AE85C(&v46, v45, sub_1D615C3A4);
    sub_1D5ED34B0(v8, v9, v10);
    sub_1D6E0CAE0(v45);

    sub_1D615F660(&v46, sub_1D615C3A4);
    *&v19 = v45[0];
    *(&v19 + 1) = v18;
    v31 = v19;
  }

  v21 = *(v1 + 192);
  v20 = *(v1 + 200);
  v22 = *(v1 + 208);
  v23 = *(v1 + 216);
  v24 = *(v1 + 224);
  v25 = *(v1 + 232);
  v26 = *(v1 + 233);
  v27 = *(v1 + 240);
  sub_1D6189668(v21, v20, v22);
  sub_1D6189668(v23, v24, v25);
  if (v27)
  {
    v27 = sub_1D600CC40(v27);
  }

  v28 = swift_allocObject();
  swift_beginAccess();
  *(v28 + 16) = v42;
  *(v28 + 24) = v41;
  *(v28 + 32) = v40;
  *(v28 + 40) = v39;
  *(v28 + 72) = v37;
  *(v28 + 80) = v36;
  *(v28 + 88) = v35;
  *(v28 + 96) = v34;
  *(v28 + 104) = v14;
  *(v28 + 112) = v15;
  *(v28 + 116) = v30;
  *(v28 + 120) = v17;
  *(v28 + 128) = v16;
  *(v28 + 152) = v32;
  *(v28 + 136) = v31;
  *(v28 + 168) = v33;
  *(v28 + 184) = v12;
  *(v28 + 56) = v43;
  *(v28 + 64) = v38;
  swift_beginAccess();
  *(v28 + 48) = v44;
  *(v28 + 192) = v21;
  *(v28 + 200) = v20;
  *(v28 + 208) = v22;
  *(v28 + 216) = v23;
  *(v28 + 224) = v24;
  *(v28 + 232) = v25;
  *(v28 + 233) = v26;
  *(v28 + 240) = v27;
  return v28;
}

uint64_t FormatLayeredMediaNodeStyle.deinit()
{

  sub_1D5C8500C(*(v0 + 64));

  sub_1D5ED348C(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  sub_1D600ECE4(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  sub_1D60107F0(*(v0 + 192), *(v0 + 200), *(v0 + 208));
  sub_1D60107F0(*(v0 + 216), *(v0 + 224), *(v0 + 232));

  return v0;
}

uint64_t FormatLayeredMediaNodeStyle.__deallocating_deinit()
{
  FormatLayeredMediaNodeStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatLayeredMediaNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatLayeredMediaNodeStyle.Selector.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D5D04BD4(v2);
}

uint64_t FormatLayeredMediaNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatLayeredMediaNodeStyle.Selector.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v4 = *(v1 + 128);
  v10 = *(v1 + 112);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 144);
  v6 = *(v1 + 80);
  v9[0] = *(v1 + 64);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D67AE85C(v9, v8, sub_1D615C3A4);
}

uint64_t FormatLayeredMediaNodeStyle.Selector.video.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 168);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatLayeredMediaNodeStyle.Selector.motion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 192);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t sub_1D67AD390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v57 = *(a1 + 48);
  v59 = *(a1 + 40);
  v54 = *(a1 + 56);
  v6 = *(a1 + 112);
  v76[2] = *(a1 + 96);
  v76[3] = v6;
  v76[4] = *(a1 + 128);
  v77 = *(a1 + 144);
  v7 = *(a1 + 80);
  v76[0] = *(a1 + 64);
  v76[1] = v7;
  v40 = *(a1 + 160);
  v41 = *(a1 + 152);
  v39 = *(a1 + 168);
  v43 = *(a1 + 184);
  v44 = *(a1 + 176);
  v42 = *(a1 + 192);
  v51 = *(a1 + 193);
  v50 = *v2;
  v52 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v10 = v2[5];
  v63 = v2[4];
  v65 = v2[6];
  v64 = *(v2 + 56);
  v11 = *(v2 + 5);
  v78[0] = *(v2 + 4);
  v78[1] = v11;
  v12 = *(v2 + 6);
  v13 = *(v2 + 7);
  v14 = *(v2 + 8);
  v79 = *(v2 + 144);
  v78[3] = v13;
  v78[4] = v14;
  v78[2] = v12;
  v15 = v2[19];
  v67 = v2[20];
  v66 = *(v2 + 168);
  v16 = v2[22];
  v17 = v2[23];
  v68 = *(v2 + 192);
  v49 = *(v2 + 193);
  v18 = v9;
  v19 = v2[25];
  v61 = v8;
  if (!v9)
  {

    v8 = v61;
    v18 = v20;
  }

  v48 = v18;
  v62 = v8;
  if ((~v8 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v4);
    v62 = v4;
  }

  v56 = v19;
  v21 = v63;
  if (!v63)
  {

    v21 = v5;
  }

  v47 = v21;
  v22 = v2 + 8;
  v53 = v10;
  v23 = v65;
  v24 = v64;
  if (v64 >= 0xFE)
  {
    v23 = v57;
    v10 = v59;
    v24 = v54;
    sub_1D5ED34B0(v59, v57, v54);
  }

  v45 = v24;
  if (v79 == 254)
  {
    v22 = v76;
    sub_1D67AE85C(v76, &v70, sub_1D615C3A4);
  }

  v46 = v23;
  v25 = v22[2];
  v26 = v22[4];
  v73 = v22[3];
  v74 = v26;
  v75 = *(v22 + 80);
  v27 = *v22;
  v28 = v22[1];
  v55 = v15;
  v29 = v15;
  v30 = v67;
  v31 = v66;
  v70 = v27;
  v71 = v28;
  v72 = v25;
  if (v66 == 255)
  {
    v30 = v40;
    v29 = v41;
    v31 = v39;
    sub_1D6189668(v41, v40, v39);
  }

  v58 = v17;
  v60 = v16;
  v32 = v68;
  if (v68 == 255)
  {
    v17 = v43;
    v16 = v44;
    v32 = v42;
    sub_1D6189668(v44, v43, v42);
  }

  v33 = v56;
  if (!v56)
  {
  }

  v34 = v51;
  if (v49 != 2)
  {
    v34 = v49;
  }

  *a2 = v50;
  *(a2 + 8) = v52;
  *(a2 + 16) = v48;
  *(a2 + 24) = v62;
  *(a2 + 32) = v47;
  *(a2 + 40) = v10;
  *(a2 + 48) = v46;
  *(a2 + 56) = v45;
  v35 = v73;
  v36 = v74;
  *(a2 + 96) = v72;
  *(a2 + 112) = v35;
  *(a2 + 128) = v36;
  *(a2 + 144) = v75;
  v37 = v71;
  *(a2 + 64) = v70;
  *(a2 + 80) = v37;
  *(a2 + 152) = v29;
  *(a2 + 160) = v30;
  *(a2 + 168) = v31;
  *(a2 + 176) = v16;
  *(a2 + 184) = v17;
  *(a2 + 192) = v32;
  *(a2 + 193) = v34;
  *(a2 + 200) = v33;

  sub_1D5D04BD4(v61);

  sub_1D5ED34B0(v53, v65, v64);
  sub_1D67AE85C(v78, v69, sub_1D615C3A4);
  sub_1D6189668(v55, v67, v66);
  sub_1D6189668(v60, v58, v68);
}

uint64_t FormatLayeredMediaNodeStyle.auxViewRequirements.getter()
{
  v1 = *(v0 + 64);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    v4 = &protocol witness table for FormatBackground;
    v3 = &type metadata for FormatBackground;
    v2 = *(v0 + 64);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  v16[0] = v2;
  v16[3] = v3;
  v16[4] = v4;
  sub_1D5D04BD4(v1);
  sub_1D67AE3F4(v16, v15);
  sub_1D67AE3F4(v15, &v10);
  if (v11)
  {
    sub_1D5B63F14(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 8))(v5, v6);
    v8 = sub_1D5EECE3C(v7, MEMORY[0x1E69E7CD0]);
    sub_1D5BFB774(v15, &qword_1EDF1C7D8, &qword_1EDF1C7E0);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1D5BFB774(v15, &qword_1EDF1C7D8, &qword_1EDF1C7E0);
    sub_1D5BFB774(&v10, &qword_1EDF1C7D8, &qword_1EDF1C7E0);
    v8 = MEMORY[0x1E69E7CD0];
  }

  sub_1D5BFB774(v16, &qword_1EDF1C7D8, &qword_1EDF1C7E0);
  return v8;
}

uint64_t sub_1D67AD89C()
{
  v1 = *v0;
  sub_1D5B56218(0, &qword_1EDF195B8, &qword_1EDF1C7D8, &qword_1EDF1C7E0);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_1D7273AE0;
  v4 = *(v1 + 64);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v7 = &protocol witness table for FormatBackground;
    v6 = &type metadata for FormatBackground;
    v5 = *(v1 + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v5;
  *(inited + 56) = v6;
  *(inited + 64) = v7;
  sub_1D5D04BD4(v4);
  v8 = sub_1D6E27AC0(v3);
  swift_setDeallocating();
  sub_1D5BFB774(v3 + 32, &qword_1EDF1C7D8, &qword_1EDF1C7E0);
  return v8;
}

uint64_t _s8NewsFeed27FormatLayeredMediaNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v70 = *(a1 + 5);
  v69 = *(a1 + 56);
  v9 = *(a1 + 7);
  v107 = *(a1 + 6);
  v108 = v9;
  v109 = *(a1 + 8);
  v110 = *(a1 + 144);
  v10 = *(a1 + 5);
  v105 = *(a1 + 4);
  v106 = v10;
  v65 = *(a1 + 19);
  v64 = *(a1 + 168);
  v12 = a1[22];
  v11 = a1[23];
  v61 = *(a1 + 192);
  v57 = *(a1 + 193);
  v13 = a1[25];
  v14 = *a2;
  v15 = a2[1];
  v17 = a2[2];
  v16 = a2[3];
  v18 = a2[4];
  v67 = a2[5];
  v68 = a2[6];
  v19 = *(a2 + 56);
  v20 = *(a2 + 5);
  v111 = *(a2 + 4);
  v112 = v20;
  v21 = *(a2 + 6);
  v22 = *(a2 + 7);
  v23 = *(a2 + 8);
  v116 = *(a2 + 144);
  v114 = v22;
  v115 = v23;
  v113 = v21;
  v66 = a2[19];
  v63 = a2[20];
  v62 = *(a2 + 168);
  v59 = a2[22];
  v60 = a2[23];
  v58 = *(a2 + 192);
  v56 = *(a2 + 193);
  v55 = a2[25];
  if ((v4 != v14 || v5 != v15) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    v54 = v13;
    v24 = v11;

    v25 = sub_1D633A310(v6, v17);

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v17)
    {
      return 0;
    }

    v54 = v13;
    v24 = v11;
  }

  if ((~v8 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v8);
    sub_1D5D04BD4(v16);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v8);
      v26 = v24;
      goto LABEL_19;
    }

LABEL_15:
    sub_1D5C8500C(v8);
    sub_1D5C8500C(v16);
    return 0;
  }

  *&v87 = v8;
  if ((~v16 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v8);
    sub_1D5D04BD4(v16);
    sub_1D5D04BD4(v8);

    goto LABEL_15;
  }

  v26 = v24;
  *v99 = v16;
  sub_1D5D04BD4(v8);
  sub_1D5D04BD4(v16);
  sub_1D5D04BD4(v8);
  v28 = static FormatBackground.== infix(_:_:)(&v87, v99);

  sub_1D5C8500C(v8);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (v7)
  {
    v29 = v54;
    if (!v18)
    {
      return 0;
    }

    v30 = v12;

    v31 = sub_1D633C9E8(v7, v18);

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v30 = v12;
    v29 = v54;
    if (v18)
    {
      return 0;
    }
  }

  if (v69 > 0xFD)
  {
    v32 = *(&v70 + 1);
    v33 = v70;
    sub_1D5ED34B0(v70, *(&v70 + 1), v69);
    v35 = v67;
    v34 = v68;
    sub_1D5ED34B0(v67, v68, v19);
    if (v19 > 0xFD)
    {
      sub_1D5ED348C(v70, *(&v70 + 1), v69);
      goto LABEL_31;
    }

LABEL_29:
    sub_1D5ED348C(v33, v32, v69);
    sub_1D5ED348C(v35, v34, v19);
    return 0;
  }

  v32 = *(&v70 + 1);
  v33 = v70;
  v87 = v70;
  LOBYTE(v88) = v69;
  v35 = v67;
  v34 = v68;
  if (v19 > 0xFD)
  {
    sub_1D5ED34B0(v70, *(&v70 + 1), v69);
    sub_1D5ED34B0(v67, v68, v19);
    sub_1D5ED34B0(v70, *(&v70 + 1), v69);
    sub_1D5ED34A0(v70, *(&v70 + 1), v69);
    goto LABEL_29;
  }

  *v99 = v67;
  *&v99[8] = v68;
  v99[16] = v19;
  sub_1D5ED34B0(v70, *(&v70 + 1), v69);
  sub_1D5ED34B0(v67, v68, v19);
  sub_1D5ED34B0(v70, *(&v70 + 1), v69);
  v36 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v87, v99);
  sub_1D5ED34A0(*v99, *&v99[8], v99[16]);
  sub_1D5ED34A0(v87, *(&v87 + 1), v88);
  sub_1D5ED348C(v70, *(&v70 + 1), v69);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v102 = v107;
  v103 = v108;
  v104 = v109;
  v100 = v105;
  v101 = v106;
  *&v99[23] = v112;
  *&v99[39] = v113;
  *&v99[55] = v114;
  *&v99[71] = v115;
  v37 = v110;
  *&v99[7] = v111;
  v38 = v116;
  if (v110 == 254)
  {
    if (v116 == 254)
    {
      v89 = v107;
      v90 = v108;
      v91 = v109;
      v87 = v105;
      v88 = v106;
      v92 = -2;
      sub_1D67AE85C(&v105, &v81, sub_1D615C3A4);
      sub_1D67AE85C(&v111, &v81, sub_1D615C3A4);
      sub_1D615F660(&v87, sub_1D615C3A4);
      goto LABEL_39;
    }

    sub_1D67AE85C(&v105, &v87, sub_1D615C3A4);
    sub_1D67AE85C(&v111, &v87, sub_1D615C3A4);
LABEL_37:
    v89 = v102;
    v90 = v103;
    v91 = v104;
    v87 = v100;
    v88 = v101;
    v95 = *&v99[32];
    v96 = *&v99[48];
    *v97 = *&v99[64];
    v93 = *v99;
    v92 = v37;
    *&v97[15] = *&v99[79];
    v94 = *&v99[16];
    v98 = v38;
    sub_1D615F660(&v87, sub_1D615F6C0);
    return 0;
  }

  v89 = v107;
  v90 = v108;
  v91 = v109;
  v87 = v105;
  v88 = v106;
  v92 = v110;
  v83 = v107;
  v84 = v108;
  v85 = v109;
  v86 = v110;
  v81 = v105;
  v82 = v106;
  if (v116 == 254)
  {
    v77 = v89;
    v78 = v90;
    v79 = v91;
    v80 = v92;
    v75 = v87;
    v76 = v88;
    sub_1D67AE85C(&v105, v73, sub_1D615C3A4);
    sub_1D67AE85C(&v111, v73, sub_1D615C3A4);
    sub_1D67AE85C(&v87, v73, sub_1D615C3A4);
    sub_1D601144C(&v75);
    goto LABEL_37;
  }

  v77 = v113;
  v78 = v114;
  v79 = v115;
  v75 = v111;
  v76 = v112;
  v80 = v116;
  sub_1D67AE85C(&v105, v73, sub_1D615C3A4);
  sub_1D67AE85C(&v111, v73, sub_1D615C3A4);
  sub_1D67AE85C(&v87, v73, sub_1D615C3A4);
  v39 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v81, &v75);
  v71[2] = v77;
  v71[3] = v78;
  v71[4] = v79;
  v72 = v80;
  v71[0] = v75;
  v71[1] = v76;
  sub_1D601144C(v71);
  v73[2] = v83;
  v73[3] = v84;
  v73[4] = v85;
  v74 = v86;
  v73[0] = v81;
  v73[1] = v82;
  sub_1D601144C(v73);
  v77 = v102;
  v78 = v103;
  v79 = v104;
  v75 = v100;
  v76 = v101;
  v80 = v37;
  sub_1D615F660(&v75, sub_1D615C3A4);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  if (v64 == 255)
  {
    v40 = *(&v65 + 1);
    v41 = v65;
    sub_1D6189668(v65, *(&v65 + 1), 255);
    v42 = v62;
    v43 = v63;
    if (v62 == 255)
    {
      sub_1D6189668(v66, v63, 255);
      sub_1D60107F0(v65, *(&v65 + 1), 255);
      goto LABEL_48;
    }

    v45 = v66;
    sub_1D6189668(v66, v63, v62);
LABEL_46:
    sub_1D60107F0(v41, v40, v64);
    v46 = v45;
    v47 = v43;
    v48 = v42;
LABEL_56:
    sub_1D60107F0(v46, v47, v48);
    return 0;
  }

  v40 = *(&v65 + 1);
  v41 = v65;
  v87 = v65;
  LOBYTE(v88) = v64;
  v42 = v62;
  v43 = v63;
  if (v62 == 255)
  {
    sub_1D6189668(v65, *(&v65 + 1), v64);
    v45 = v66;
    sub_1D6189668(v66, v63, 255);
    sub_1D6189668(v65, *(&v65 + 1), v64);
    sub_1D5D2F2C4(v65, *(&v65 + 1), v64 & 1);
    goto LABEL_46;
  }

  *v99 = v66;
  *&v99[8] = v63;
  v99[16] = v62 & 1;
  sub_1D6189668(v65, *(&v65 + 1), v64);
  sub_1D6189668(v66, v63, v62);
  sub_1D6189668(v65, *(&v65 + 1), v64);
  v44 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v87, v99);
  sub_1D5D2F2C4(*v99, *&v99[8], v99[16]);
  sub_1D5D2F2C4(v87, *(&v87 + 1), v88);
  sub_1D60107F0(v65, *(&v65 + 1), v64);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  if (v61 == 255)
  {
    sub_1D6189668(v30, v26, 255);
    v49 = v58;
    if (v58 == 255)
    {
      sub_1D6189668(v59, v60, 255);
      sub_1D60107F0(v30, v26, 255);
      goto LABEL_58;
    }

    v52 = v59;
    v51 = v60;
    sub_1D6189668(v59, v60, v58);
    goto LABEL_55;
  }

  *&v87 = v30;
  *(&v87 + 1) = v26;
  LOBYTE(v88) = v61;
  v49 = v58;
  if (v58 == 255)
  {
    sub_1D6189668(v30, v26, v61);
    v52 = v59;
    v51 = v60;
    sub_1D6189668(v59, v60, 255);
    sub_1D6189668(v30, v26, v61);
    sub_1D5D2F2C4(v30, v26, v61 & 1);
LABEL_55:
    sub_1D60107F0(v30, v26, v61);
    v46 = v52;
    v47 = v51;
    v48 = v49;
    goto LABEL_56;
  }

  *v99 = v59;
  *&v99[8] = v60;
  v99[16] = v58 & 1;
  sub_1D6189668(v30, v26, v61);
  sub_1D6189668(v59, v60, v58);
  sub_1D6189668(v30, v26, v61);
  v50 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v87, v99);
  sub_1D5D2F2C4(*v99, *&v99[8], v99[16]);
  sub_1D5D2F2C4(v87, *(&v87 + 1), v88);
  sub_1D60107F0(v30, v26, v61);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_58:
  if (v57 == 2)
  {
    if (v56 == 2)
    {
      goto LABEL_63;
    }

    return 0;
  }

  result = 0;
  if (v56 != 2 && ((v56 ^ v57) & 1) == 0)
  {
LABEL_63:
    if (v29)
    {
      if (v55)
      {

        v53 = sub_1D633CB78(v29, v55);

        if (v53)
        {
          return 1;
        }
      }
    }

    else if (!v55)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D67AE3F4(uint64_t a1, uint64_t a2)
{
  sub_1D5BFB8A8(0, &qword_1EDF1C7D8, &qword_1EDF1C7E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67AE470(uint64_t a1)
{
  result = sub_1D67AE5A8(&qword_1EC88B830);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D67AE4B4(uint64_t a1)
{
  *(a1 + 16) = sub_1D67AE5A8(&qword_1EDF224B0);
  result = sub_1D67AE5A8(&qword_1EDF0AFD8);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D67AE51C(void *a1)
{
  a1[1] = sub_1D67AE5A8(&qword_1EDF224B0);
  a1[2] = sub_1D67AE5A8(&qword_1EDF0AFD8);
  result = sub_1D67AE5A8(&qword_1EC88B838);
  a1[3] = result;
  return result;
}

uint64_t sub_1D67AE5A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatLayeredMediaNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D67AE5E8(uint64_t a1)
{
  result = sub_1D67AE610();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67AE610()
{
  result = qword_1EC88B840;
  if (!qword_1EC88B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B840);
  }

  return result;
}

unint64_t sub_1D67AE664(uint64_t a1)
{
  *(a1 + 8) = sub_1D5CDB9F8();
  result = sub_1D5CDBA4C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D67AE694(void *a1)
{
  a1[1] = sub_1D5CDB9F8();
  a1[2] = sub_1D5CDBA4C();
  result = sub_1D67AE6CC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67AE6CC()
{
  result = qword_1EC88B848;
  if (!qword_1EC88B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B848);
  }

  return result;
}

void sub_1D67AE748()
{
  if (!qword_1EDF05828)
  {
    sub_1D601014C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05828);
    }
  }
}

void sub_1D67AE7AC()
{
  if (!qword_1EDF0A970)
  {
    sub_1D67AE808();
    v0 = type metadata accessor for FormatNodeStyleSelectorOrder();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0A970);
    }
  }
}

unint64_t sub_1D67AE808()
{
  result = qword_1EDF0AFE0;
  if (!qword_1EDF0AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AFE0);
  }

  return result;
}

uint64_t sub_1D67AE85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67AE8C4(uint64_t a1, __int128 *a2)
{
  v4 = a2[11];
  v66 = a2[10];
  v67 = v4;
  v68 = a2[12];
  v5 = a2[7];
  v62 = a2[6];
  v63 = v5;
  v6 = a2[9];
  v64 = a2[8];
  v65 = v6;
  v7 = a2[3];
  v58 = a2[2];
  v59 = v7;
  v8 = a2[5];
  v60 = a2[4];
  v61 = v8;
  v9 = a2[1];
  v56 = *a2;
  v57 = v9;
  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_beginAccess();
  *(v2 + 16) = v10;
  *(v2 + 24) = v11;
  v12 = *(a1 + 40);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 40) = v12;
  v13 = *(&v57 + 1);
  v43 = *(&v57 + 1);
  if ((~*(&v57 + 1) & 0xF000000000000007) == 0)
  {
    v13 = *(a1 + 64);
    sub_1D5D04BD4(v13);
  }

  *(v2 + 64) = v13;
  v14 = v58;
  if (!v58)
  {
  }

  *(v2 + 72) = v14;
  v15 = *(&v58 + 1);
  v16 = v59;
  v41 = v59;
  v42 = *(&v58 + 1);
  v17 = BYTE8(v59);
  v40 = BYTE8(v59);
  if (BYTE8(v59) >= 0xFEu)
  {
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    v17 = *(a1 + 96);
    sub_1D5ED34B0(v15, v16, v17);
  }

  *(v2 + 80) = v15;
  *(v2 + 88) = v16;
  *(v2 + 96) = v17;
  if (v65 == 254)
  {
    v18 = *(a1 + 152);
    v46 = *(a1 + 136);
    v47 = v18;
    v48 = *(a1 + 168);
    v49 = *(a1 + 184);
    v19 = *(a1 + 120);
    v44 = *(a1 + 104);
    v45 = v19;
    sub_1D67AE85C(&v44, &v50, sub_1D615C3A4);
    v52 = v46;
    v53 = v47;
    v54 = v48;
    v55 = v49;
    v20 = v44;
    v21 = v45;
  }

  else
  {
    v52 = v62;
    v53 = v63;
    v54 = v64;
    v55 = v65;
    v20 = v60;
    v21 = v61;
  }

  v50 = v20;
  v51 = v21;
  v22 = v53;
  *(v2 + 136) = v52;
  *(v2 + 152) = v22;
  *(v2 + 168) = v54;
  *(v2 + 184) = v55;
  v23 = v51;
  *(v2 + 104) = v50;
  v24 = v57;
  *(v2 + 120) = v23;
  if (!v24)
  {
  }

  *(v2 + 56) = v24;
  swift_beginAccess();
  v25 = *(a1 + 48);
  swift_beginAccess();
  *(v2 + 48) = v25;
  v26 = *(&v65 + 1);
  v27 = v66;
  v28 = BYTE8(v66);
  v38 = v66;
  v39 = *(&v65 + 1);
  v29 = BYTE8(v66);
  if (BYTE8(v66) == 255)
  {
    v26 = *(a1 + 192);
    v27 = *(a1 + 200);
    v29 = *(a1 + 208);
    sub_1D6189668(v26, v27, v29);
  }

  *(v2 + 192) = v26;
  *(v2 + 200) = v27;
  *(v2 + 208) = v29;
  v30 = v67;
  v31 = v68;
  v33 = *(&v67 + 1);
  v32 = v67;
  v34 = v68;
  if (v68 == 255)
  {
    v32 = *(a1 + 216);
    v33 = *(a1 + 224);
    v34 = *(a1 + 232);
    sub_1D6189668(v32, v33, v34);
  }

  *(v2 + 216) = v32;
  *(v2 + 224) = v33;
  *(v2 + 232) = v34;
  v35 = BYTE1(v68);
  if (BYTE1(v68) == 2)
  {
    v35 = *(a1 + 233);
  }

  *(v2 + 233) = v35;
  v36 = *(&v68 + 1);

  sub_1D5D04BD4(v43);

  sub_1D5ED34B0(v42, v41, v40);
  sub_1D67AE85C(&v60, &v44, sub_1D615C3A4);

  sub_1D6189668(v39, v38, v28);
  sub_1D6189668(v30, *(&v30 + 1), v31);

  sub_1D5D0B670(&v56);
  if (!v36)
  {
    v36 = *(a1 + 240);
  }

  *(v2 + 240) = v36;
  return v2;
}

uint64_t sub_1D67AEC44(uint64_t a1, uint64_t a2)
{
  v143 = type metadata accessor for FormatInspectionItem(0);
  v4 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v5);
  v140 = (&v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 112);
  v188 = *(a1 + 96);
  v189 = v7;
  v190 = *(a1 + 128);
  v191 = *(a1 + 144);
  v8 = *(a1 + 48);
  v184 = *(a1 + 32);
  v185 = v8;
  v9 = *(a1 + 80);
  v186 = *(a1 + 64);
  v187 = v9;
  v10 = *(a1 + 16);
  v182 = *a1;
  v183 = v10;
  sub_1D5B56218(0, &qword_1EC880AC0, &unk_1EC880480, &qword_1EC880AD0);
  v129 = v11;
  v116 = swift_allocObject();
  v128 = xmmword_1D7274590;
  *(v116 + 16) = xmmword_1D7274590;
  sub_1D679C3C4(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  v13 = v12;
  sub_1D5EA74B8();
  v130 = v14;
  v15 = *(*(v14 - 8) + 72);
  v16 = *(*(v14 - 8) + 80);
  v17 = (v16 + 32) & ~v16;
  v133 = v13;
  v134 = v15;
  v132 = v16;
  v18 = swift_allocObject();
  v127 = xmmword_1D7273AE0;
  *(v18 + 16) = xmmword_1D7273AE0;
  v131 = v17;
  v19 = (v18 + v17);
  v20 = sub_1D70DD9D8;
  if (a2)
  {
    v21 = *(a2 + 32);
    v22 = *(a2 + 40);

    v23 = sub_1D67ACDF0();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 64) = 0x4000000000000000;
    v20 = sub_1D601118C;
  }

  else
  {
    v24 = 0;
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  v25 = v143;
  v26 = (v19 + *(v143 + 24));
  *v26 = v20;
  v26[1] = v24;
  v27 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v135 = v27;
  v125 = v28 + 56;
  v126 = v29;
  v29(v26, 0, 1, v27);
  v30 = v131;
  *(v18 + v131) = v21;
  v19[2] = 0;
  v19[3] = 0;
  v19[1] = v22;
  v31 = v19 + *(v25 + 28);
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = -1;
  v33 = *(v4 + 56);
  v32 = v4 + 56;
  v33(v19, 0, 1, v25);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v18, v176);
  swift_setDeallocating();
  sub_1D615F660(v19, sub_1D5EA74B8);
  v34 = v33;
  swift_deallocClassInstance();
  v35 = v116;
  *(v116 + 56) = &type metadata for FormatInspectionGroup;
  *(v35 + 64) = &off_1F518B2C0;
  v36 = swift_allocObject();
  *(v35 + 32) = v36;
  v37 = v176[1];
  *(v36 + 16) = v176[0];
  *(v36 + 32) = v37;
  *(v36 + 48) = v177;
  v38 = v134;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D727E3C0;
  v40 = v39 + v30;
  sub_1D711F844(1701869908, 0xE400000000000000, 0x4D6465726579614CLL, 0xEC00000061696465, (v39 + v30));
  v33(v39 + v30, 0, 1, v25);
  if (a2)
  {
    v41 = *(a2 + 56);

    sub_1D711B070(0x6168706C41, 0xE500000000000000, v41, (v40 + v38));
    v34(v40 + v38, 0, 1, v25);
    v42 = *(a2 + 64);
    sub_1D5D04BD4(v42);
  }

  else
  {
    sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, (v40 + v38));
    v34(v40 + v38, 0, 1, v25);
    v42 = 0xF000000000000007;
  }

  sub_1D7125A4C(0x756F72676B636142, 0xEA0000000000646ELL, v42, v40 + 2 * v38);
  v115 = v39 + v30;
  v124 = 2 * v38;
  v142 = v34;
  v34(v40 + 2 * v38, 0, 1, v25);
  if (a2)
  {
    v43 = *(a2 + 192);
    v44 = *(a2 + 200);
    v45 = *(a2 + 208);
    sub_1D6189668(v43, v44, v45);
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v45 = -1;
  }

  v46 = 3 * v38;
  v47 = v115;
  sub_1D71237B4(0x6F65646956, 0xE500000000000000, v43, v44, v45, (v115 + v46));
  v123 = v46;
  v141 = v32;
  v142(v47 + v46, 0, 1, v143);
  v113 = v39;
  if (a2)
  {
    v48 = *(a2 + 216);
    v49 = *(a2 + 224);
    v50 = a2;
    v51 = *(a2 + 232);
    sub_1D6189668(v48, v49, v51);
  }

  else
  {
    v48 = 0;
    v50 = 0;
    v49 = 0;
    v51 = -1;
  }

  v52 = v134;
  sub_1D71237B4(0x6E6F69746F4DLL, 0xE600000000000000, v48, v49, v51, (v47 + 4 * v134));
  v122 = 4 * v52;
  v53 = v47 + 4 * v52;
  v54 = v143;
  v55 = v47;
  v56 = v142;
  v142(v53, 0, 1, v143);
  v114 = v50;
  if (!v50)
  {
    sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, 2u, (v55 + 5 * v52));
    v56(v55 + 5 * v52, 0, 1, v54);
    v59 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v90 = sub_1D5F62BFC(v59);

    v91 = sub_1D7073500(v90);

    sub_1D711AD20(0x737265746C6946, 0xE700000000000000, v91, 0, 0, (v55 + 6 * v52));
    v56(v55 + 6 * v52, 0, 1, v54);
    sub_1D6795150(0x4D6465726579614CLL, 0xEC00000061696465, 0, 0, v113, v180);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v92 = v116;
    *(v116 + 96) = &type metadata for FormatInspectionGroup;
    *(v92 + 104) = &off_1F518B2C0;
    v93 = swift_allocObject();
    *(v92 + 72) = v93;
    v94 = v180[1];
    *(v93 + 16) = v180[0];
    *(v93 + 32) = v94;
    *(v93 + 48) = v181;
    v172 = v188;
    v173 = v189;
    v174 = v190;
    v175 = v191;
    v168 = v184;
    v169 = v185;
    v170 = v186;
    v171 = v187;
    v166 = v182;
    v167 = v183;
    v95 = v114;
    if (v114)
    {
      v96 = *(v114 + 80);
      v97 = *(v114 + 88);
      v98 = *(v114 + 96);
      sub_1D5ED34B0(v96, v97, v98);
    }

    else
    {
      v96 = 0;
      v97 = 0;
      v98 = -2;
    }

    *&v156 = v96;
    *(&v156 + 1) = v97;
    LOBYTE(v157) = v98;
    v99 = sub_1D6D9893C(&v166, &v156);
    sub_1D5ED348C(v156, *(&v156 + 1), v157);
    v100 = v116;
    *(v116 + 136) = &type metadata for FormatInspection;
    *(v100 + 144) = &off_1F51E3FD0;
    *(v100 + 112) = v99;
    v162 = v188;
    v163 = v189;
    v164 = v190;
    v165 = v191;
    v158 = v184;
    v159 = v185;
    v160 = v186;
    v161 = v187;
    v156 = v182;
    v157 = v183;
    if (v95)
    {
      v101 = *(v95 + 152);
      v152 = *(v95 + 136);
      v153 = v101;
      v154 = *(v95 + 168);
      v155 = *(v95 + 184);
      v102 = *(v95 + 120);
      v150 = *(v95 + 104);
      v151 = v102;
      sub_1D67AE85C(&v150, &v144, sub_1D615C3A4);
      v103 = v150;
      v104 = v151;
      v105 = v152;
      v106 = v153;
      v107 = v154;
      v108 = v155;
    }

    else
    {
      v103 = 0uLL;
      v108 = -2;
      v104 = 0uLL;
      v105 = 0uLL;
      v106 = 0uLL;
      v107 = 0uLL;
    }

    v144 = v103;
    v145 = v104;
    v146 = v105;
    v147 = v106;
    v148 = v107;
    v149 = v108;
    v109 = sub_1D686F740(&v156, &v144);
    v152 = v146;
    v153 = v147;
    v154 = v148;
    v155 = v149;
    v150 = v144;
    v151 = v145;
    sub_1D615F660(&v150, sub_1D615C3A4);
    v110 = v116;
    *(v116 + 176) = &type metadata for FormatInspection;
    *(v110 + 184) = &off_1F51E3FD0;
    *(v110 + 152) = v109;
    v111 = sub_1D7073500(v110);
    swift_setDeallocating();
    sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v111;
  }

  sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, *(v50 + 233), (v55 + 5 * v52));
  v56(v55 + 5 * v52, 0, 1, v54);
  v57 = *(v50 + 240);
  if (!v57)
  {
    v59 = MEMORY[0x1E69E7CC0];
    v56 = v142;
    v52 = v134;
    goto LABEL_26;
  }

  v58 = *(v57 + 16);
  v59 = MEMORY[0x1E69E7CC0];
  if (!v58)
  {
LABEL_23:
    v52 = v134;
    v56 = v142;
LABEL_26:
    v55 = v115;
    goto LABEL_27;
  }

  *&v156 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997EC0(0, v58, 0);
  v61 = 0;
  v59 = v156;
  v119 = "aNodeStyle";
  v62 = (v57 + 48);
  v118 = xmmword_1D72EBCC0;
  v117 = 0xD000000000000017;
  v120 = v58;
  v121 = v57;
  while (v61 < *(v57 + 16))
  {
    v138 = v61;
    v139 = v59;
    v64 = *(v62 - 2);
    v63 = *(v62 - 1);
    v137 = v62;
    v65 = *v62;
    v66 = swift_allocObject();
    *(v66 + 16) = v127;
    v67 = v131;
    v68 = swift_allocObject();
    *(v68 + 16) = v128;
    v69 = (v68 + v67);
    sub_1D5CFCFAC(v64);
    sub_1D5D04BD4(v63);
    sub_1D5D04BD4(v65);
    sub_1D5CFCFAC(v64);
    v70 = v63;
    sub_1D5D04BD4(v63);
    v71 = v65;
    v72 = v65;
    v73 = v64;
    sub_1D5D04BD4(v72);
    sub_1D711F844(1701869908, 0xE400000000000000, 0x6F7268636F6E6F4DLL, 0xEA0000000000656DLL, v69);
    v74 = 1;
    v142(v69, 0, 1, v54);
    v75 = (v140 + *(v54 + 24));
    if ((~v73 & 0xF000000000000007) != 0)
    {
      *v75 = v73;
      swift_storeEnumTagMultiPayload();
      v74 = 0;
    }

    v126(v75, v74, 1, v135);
    v76 = v140;
    *v140 = v118;
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
    v77 = v143;
    v78 = v76 + *(v143 + 28);
    *v78 = 0;
    *(v78 + 8) = 0;
    *(v78 + 16) = -1;
    v79 = v134;
    sub_1D613ADAC(v76, v69 + v134);
    v80 = v69 + v79;
    v81 = v142;
    v142(v80, 0, 1, v77);
    sub_1D5CFCFAC(v73);
    sub_1D5D04BD4(v70);
    v136 = v73;
    v82 = v124;
    sub_1D7123FB0(0x746E756F6D41, 0xE600000000000000, v70, v69 + v124);
    v81(v69 + v82, 0, 1, v77);
    sub_1D5D04BD4(v71);
    v83 = v123;
    sub_1D7123FB0(v117, v119 | 0x8000000000000000, v71, v69 + v123);
    v81(v69 + v83, 0, 1, v77);
    sub_1D6795150(0x7265746C6946, 0xE600000000000000, 0, 0, v68, v178);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v66 + 56) = &type metadata for FormatInspectionGroup;
    *(v66 + 64) = &off_1F518B2C0;
    v84 = swift_allocObject();
    *(v66 + 32) = v84;
    v85 = v178[1];
    *(v84 + 16) = v178[0];
    *(v84 + 32) = v85;
    *(v84 + 48) = v179;
    v86 = sub_1D7073500(v66);
    swift_setDeallocating();
    sub_1D5BFB774(v66 + 32, &unk_1EC880480, &qword_1EC880AD0);
    swift_deallocClassInstance();
    v87 = v136;
    sub_1D5C84FF4(v136);
    sub_1D5C8500C(v70);
    sub_1D5C8500C(v71);
    sub_1D5C84FF4(v87);
    sub_1D5C8500C(v70);
    sub_1D5C8500C(v71);
    v59 = v139;
    *&v156 = v139;
    v89 = *(v139 + 16);
    v88 = *(v139 + 24);
    if (v89 >= v88 >> 1)
    {
      sub_1D6997EC0((v88 > 1), v89 + 1, 1);
      v59 = v156;
    }

    v61 = v138 + 1;
    *&v168 = &off_1F51E3FD0;
    *(&v167 + 1) = &type metadata for FormatInspection;
    *&v166 = v86;
    *(v59 + 16) = v89 + 1;
    result = sub_1D5B63F14(&v166, v59 + 40 * v89 + 32);
    v62 = v137 + 3;
    v57 = v121;
    v54 = v143;
    if (v120 == v61)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D67AFAA8(void **a1)
{
  v3 = v1;
  v5 = sub_1D67AFD58(*a1);
  v7 = v6;
  sub_1D67B0CC4(a1);
  if (v2)
  {

    sub_1D67B2FF8(a1, type metadata accessor for PuzzleDatastoreInfo);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x1E69CE158]);
    v9 = sub_1D726203C();

    v10 = [v8 initWithJSONString_];

    *(v3 + 16) = v10;
    *&v18[0] = 0;
    *(&v18[0] + 1) = 0xE000000000000000;
    sub_1D7263D4C();

    *&v22 = 0x7250656C7A7A7570;
    *(&v22 + 1) = 0xEF3D73736572676FLL;
    v11 = a1 + *(type metadata accessor for PuzzleDatastoreInfo() + 28);
    v12 = *(v11 + 8);
    v13 = 7104878;
    v14 = 0xE300000000000000;
    if (v12 != 1)
    {
      v18[0] = *v11;
      v18[1] = *(v11 + 1);
      v18[2] = *(v11 + 2);
      v18[3] = *(v11 + 3);
      v19 = v12;
      v20 = *(v11 + 72);
      v21 = *(v11 + 11);
      v13 = PuzzleProgress.debugDescription.getter();
      v14 = v15;
    }

    MEMORY[0x1DA6F9910](v13, v14);

    MEMORY[0x1DA6F9910](10, 0xE100000000000000);
    sub_1D7263D4C();

    strcpy(v18, "puzzleConfig= ");
    HIBYTE(v18[0]) = -18;
    if (v7)
    {
      v16 = v5;
    }

    else
    {
      v16 = 7104878;
    }

    if (!v7)
    {
      v7 = 0xE300000000000000;
    }

    MEMORY[0x1DA6F9910](v16, v7);

    MEMORY[0x1DA6F9910](*&v18[0], *(&v18[0] + 1));

    sub_1D67B2FF8(a1, type metadata accessor for PuzzleDatastoreInfo);
    *(v3 + 24) = v22;
  }

  return v3;
}

uint64_t sub_1D67AFD58(void *a1)
{
  v148 = *MEMORY[0x1E69E9840];
  v2 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v142[1] = v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67B30C0(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v9, v10).n128_u64[0];
  v13 = v142 - v12;
  v14 = [a1 identifier];
  v15 = sub_1D726207C();
  v17 = v16;

  v18 = MEMORY[0x1E69E6158];
  v147 = MEMORY[0x1E69E6158];
  *&v146 = v15;
  *(&v146 + 1) = v17;
  sub_1D5B7C390(&v146, v145);
  v19 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v144 = v19;
  sub_1D5BAFB24(v145, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v21 = v144;
  v22 = [objc_msgSend(a1 puzzleType)];
  swift_unknownObjectRelease();
  v23 = sub_1D726207C();
  v25 = v24;

  v147 = v18;
  *&v146 = v23;
  *(&v146 + 1) = v25;
  sub_1D5B7C390(&v146, v145);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v21;
  sub_1D5BAFB24(v145, 0xD000000000000014, 0x80000001D73D4B70, v26);
  v27 = v143;
  v144 = v143;
  v28 = [a1 title];
  v29 = MEMORY[0x1E69E7CA0];
  if (v28)
  {
    v30 = v28;
    v31 = sub_1D726207C();
    v33 = v32;

    v147 = v18;
    *&v146 = v31;
    *(&v146 + 1) = v33;
    sub_1D5B7C390(&v146, v145);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v27;
    sub_1D5BAFB24(v145, 0x656C746974, 0xE500000000000000, v34);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x656C746974, 0xE500000000000000, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v35 = [a1 subtitle];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1D726207C();
    v39 = v38;

    v147 = v18;
    *&v146 = v37;
    *(&v146 + 1) = v39;
    sub_1D5B7C390(&v146, v145);
    v40 = v144;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v40;
    sub_1D5BAFB24(v145, 0x656C746974627573, 0xE800000000000000, v41);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x656C746974627573, 0xE800000000000000, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v42 = [a1 puzzleDescription];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1D726207C();
    v46 = v45;

    v147 = v18;
    *&v146 = v44;
    *(&v146 + 1) = v46;
    sub_1D5B7C390(&v146, v145);
    v47 = v144;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v47;
    sub_1D5BAFB24(v145, 0x7470697263736564, 0xEB000000006E6F69, v48);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x7470697263736564, 0xEB000000006E6F69, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v49 = [a1 authors];
  if (v49)
  {
    v50 = MEMORY[0x1E69E6158];
    v51 = v49;
    v52 = sub_1D726267C();

    sub_1D67B3544(0, &qword_1EDF43BA0, v50, MEMORY[0x1E69E62F8]);
    v147 = v53;
    *&v146 = v52;
    sub_1D5B7C390(&v146, v145);
    v54 = v144;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v54;
    sub_1D5BAFB24(v145, 0x726F68747561, 0xE600000000000000, v55);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x726F68747561, 0xE600000000000000, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v56 = [a1 publishDate];
  if (v56)
  {
    v57 = v56;
    sub_1D72588BC();

    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = sub_1D725891C();
  v60 = *(v59 - 8);
  (*(v60 + 56))(v8, v58, 1, v59);
  sub_1D5DF42F8(v8, v13);
  if ((*(v60 + 48))(v13, 1, v59) == 1)
  {
    sub_1D67B323C(v13, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    sub_1D607E0F0(0x656873696C627570, 0xED00006574614464, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
    v61 = v144;
  }

  else
  {
    sub_1D725889C();
    v147 = MEMORY[0x1E69E63B0];
    *&v146 = v62;
    (*(v60 + 8))(v13, v59);
    sub_1D5B7C390(&v146, v145);
    v63 = v144;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v63;
    sub_1D5BAFB24(v145, 0x656873696C627570, 0xED00006574614464, v64);
    v61 = v143;
  }

  v65 = [a1 isPaid];
  v66 = MEMORY[0x1E69E6370];
  v147 = MEMORY[0x1E69E6370];
  LOBYTE(v146) = v65;
  sub_1D5B7C390(&v146, v145);
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v61;
  sub_1D5BAFB24(v145, 0x646961507369, 0xE600000000000000, v67);
  v68 = v143;
  v144 = v143;
  v69 = [a1 teaserClue];
  if (v69)
  {
    v70 = v69;
    v71 = sub_1D726207C();
    v73 = v72;

    v147 = v18;
    *&v146 = v71;
    *(&v146 + 1) = v73;
    sub_1D5B7C390(&v146, v145);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v68;
    sub_1D5BAFB24(v145, 0x6C43726573616574, 0xEA00000000006575, v74);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x6C43726573616574, 0xEA00000000006575, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v75 = [a1 teaserInfo];
  if (v75)
  {
    v76 = v75;
    v77 = sub_1D726207C();
    v79 = v78;

    v147 = v18;
    *&v146 = v77;
    *(&v146 + 1) = v79;
    sub_1D5B7C390(&v146, v145);
    v80 = v144;
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v80;
    sub_1D5BAFB24(v145, 0x6948726573616574, 0xEA0000000000746ELL, v81);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x6948726573616574, 0xEA0000000000746ELL, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v82 = [a1 teaserAnswer];
  if (v82)
  {
    v83 = v82;
    v84 = sub_1D726207C();
    v86 = v85;

    v147 = v18;
    *&v146 = v84;
    *(&v146 + 1) = v86;
    sub_1D5B7C390(&v146, v145);
    v87 = v144;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v87;
    sub_1D5BAFB24(v145, 0x6E41726573616574, 0xEC00000072657773, v88);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x6E41726573616574, 0xEC00000072657773, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v89 = [a1 teaserNumber];
  if (v89)
  {
    v90 = v89;
    v91 = sub_1D726207C();
    v93 = v92;

    v147 = v18;
    *&v146 = v91;
    *(&v146 + 1) = v93;
    sub_1D5B7C390(&v146, v145);
    v94 = v144;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v94;
    sub_1D5BAFB24(v145, 0x754E726573616574, 0xEC0000007265626DLL, v95);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0x754E726573616574, 0xEC0000007265626DLL, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  v96 = [a1 teaserDirection];
  if (v96)
  {
    v97 = v96;
    v98 = sub_1D726207C();
    v100 = v99;

    v147 = v18;
    *&v146 = v98;
    *(&v146 + 1) = v100;
    sub_1D5B7C390(&v146, v145);
    v101 = v144;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v101;
    sub_1D5BAFB24(v145, 0x6944726573616574, 0xEF6E6F6974636572, v102);
    v103 = v143;
  }

  else
  {
    sub_1D607E0F0(0x6944726573616574, 0xEF6E6F6974636572, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
    v103 = v144;
  }

  v104 = [a1 difficulty];
  v147 = MEMORY[0x1E69E7360];
  *&v146 = v104;
  sub_1D5B7C390(&v146, v145);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v103;
  sub_1D5BAFB24(v145, 0x6C75636966666964, 0xEA00000000007974, v105);
  v106 = v143;
  v144 = v143;
  v107 = [a1 difficultyDescription];
  if (v107)
  {
    v108 = v107;
    v109 = sub_1D726207C();
    v111 = v110;

    v147 = v18;
    *&v146 = v109;
    *(&v146 + 1) = v111;
    sub_1D5B7C390(&v146, v145);
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v106;
    sub_1D5BAFB24(v145, 0xD000000000000015, 0x80000001D73D4B90, v112);
    v144 = v143;
  }

  else
  {
    sub_1D607E0F0(0xD000000000000015, 0x80000001D73D4B90, &v146);
    sub_1D5B88BD0(&v146, &qword_1EDF43B70, v29 + 8);
  }

  *&v146 = 0;
  *(&v146 + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  *&v146 = 0xD000000000000013;
  *(&v146 + 1) = 0x80000001D73D2FC0;
  v113 = [a1 identifier];
  v114 = sub_1D726207C();
  v116 = v115;

  MEMORY[0x1DA6F9910](v114, v116);

  v147 = v18;
  sub_1D5B7C390(&v146, v145);
  v117 = v144;
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v117;
  sub_1D5BAFB24(v145, 7107189, 0xE300000000000000, v118);
  v119 = v143;
  v120 = sub_1D67B2E5C(a1);
  v147 = v66;
  LOBYTE(v146) = v120 & 1;
  sub_1D5B7C390(&v146, v145);
  v121 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v119;
  sub_1D5BAFB24(v145, 0xD000000000000018, 0x80000001D73D4BB0, v121);
  v122 = v143;
  v123 = [a1 ignoreFromStatsAndStreaks];
  v147 = v66;
  LOBYTE(v146) = v123;
  sub_1D5B7C390(&v146, v145);
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v122;
  sub_1D5BAFB24(v145, 0xD000000000000019, 0x80000001D73BA670, v124);
  v125 = v143;
  v126 = [a1 isDeprecated];
  v147 = v66;
  LOBYTE(v146) = v126;
  sub_1D5B7C390(&v146, v145);
  v127 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v125;
  sub_1D5BAFB24(v145, 0x6365727065447369, 0xEC00000064657461, v127);
  v128 = v143;
  v129 = [a1 isDraft];
  v147 = v66;
  LOBYTE(v146) = v129;
  sub_1D5B7C390(&v146, v145);
  v130 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v128;
  sub_1D5BAFB24(v145, 0x74666172447369, 0xE700000000000000, v130);
  v131 = objc_opt_self();
  v132 = sub_1D7261D2C();

  *&v146 = 0;
  v133 = [v131 dataWithJSONObject:v132 options:2 error:&v146];

  v134 = v146;
  if (v133)
  {
    v135 = sub_1D725867C();
    v137 = v136;

    sub_1D72620CC();
    v138 = sub_1D726209C();
    sub_1D5B952F8(v135, v137);
  }

  else
  {
    v139 = v134;
    v140 = sub_1D725829C();

    swift_willThrow();
    return 0;
  }

  return v138;
}

id sub_1D67B0CC4(void **a1)
{
  v2 = v1;
  v144 = *MEMORY[0x1E69E9840];
  sub_1D67B30C0(0, &unk_1EC882110, type metadata accessor for PuzzleHistoryInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v124 = &v117 - v6;
  v7 = type metadata accessor for PuzzleHistoryInfo();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PuzzleResource();
  v16 = sub_1D67B1B88();
  if (!v17)
  {
    sub_1D67B1E74();
    swift_allocError();
    *v63 = 0;
LABEL_39:
    swift_willThrow();
    return v2;
  }

  v18 = v16;
  v19 = v17;
  v119 = v8;
  v120 = v7;
  v117 = v11;
  v122 = v15;
  v123 = v1;
  v121 = *a1;
  *&v118 = sub_1D67AFD58(v121);
  *(&v118 + 1) = v20;
  *(&v139 + 1) = MEMORY[0x1E69E6158];
  *&v138 = v18;
  *(&v138 + 1) = v19;
  sub_1D5B7C390(&v138, v133);
  v21 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v127 = v21;
  sub_1D5BAFB24(v133, 0x6144656C7A7A7570, 0xEA00000000006174, isUniquelyReferenced_nonNull_native);
  v23 = v127;
  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 userInterfaceIdiom];

  v26 = v25 == 0;
  v27 = MEMORY[0x1E69E6370];
  v28 = v26;
  *(&v139 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v138) = v28;
  sub_1D5B7C390(&v138, v133);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v127 = v23;
  sub_1D5BAFB24(v133, 0x4F676E696E6E7572, 0xEF656C69626F4D6ELL, v29);
  v30 = v127;
  v31 = type metadata accessor for PuzzleDatastoreInfo();
  v32 = *(a1 + v31[5]);
  *(&v139 + 1) = v27;
  LOBYTE(v138) = v32;
  sub_1D5B7C390(&v138, v133);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *&v127 = v30;
  sub_1D5BAFB24(v133, 0x6269726373627573, 0xEA00000000006465, v33);
  v34 = v127;
  v35 = *(a1 + v31[6]);
  *(&v139 + 1) = v27;
  LOBYTE(v138) = v35;
  sub_1D5B7C390(&v138, v133);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  *&v127 = v34;
  sub_1D5BAFB24(v133, 0x7365636341736168, 0xE900000000000073, v36);
  v37 = v127;
  v38 = *(a1 + v31[15]);
  *(&v139 + 1) = v27;
  LOBYTE(v138) = v38;
  sub_1D5B7C390(&v138, v133);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  *&v127 = v37;
  sub_1D5BAFB24(v133, 0xD000000000000018, 0x80000001D73D49E0, v39);
  v40 = v127;
  v41 = a1 + v31[8];
  v42 = *(v41 + 4);
  if (BYTE3(v42) != 255)
  {
    v44 = *(v41 + 1);
    *&v138 = *v41;
    v43 = v138;
    *(&v138 + 1) = v44;
    BYTE2(v139) = BYTE2(v42);
    LOWORD(v139) = v42;
    BYTE3(v139) = BYTE3(v42);
    sub_1D5FE3E0C(v138, v44, v42, SBYTE3(v42));
    v45 = sub_1D67B1EC8(&v138);
    sub_1D5BB0DB0();
    *(&v139 + 1) = v46;
    *&v138 = v45;
    sub_1D5B7C390(&v138, v133);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v40;
    sub_1D5BAFB24(v133, 0x634168636E75616CLL, 0xEC0000006E6F6974, v47);
    sub_1D5FE3E2C(v43, v44, v42);
    v40 = v127;
    v42 = *(v41 + 4);
  }

  v48 = *(v41 + 1);
  *&v138 = *v41;
  *(&v138 + 1) = v48;
  LODWORD(v139) = v42;
  sub_1D5FE3DF8(v138, v48, v42);
  v49 = sub_1D67B1FF0(&v138);
  sub_1D5FE3E2C(v138, *(&v138 + 1), v139);
  if ((v49 & 1) == 0)
  {
    v50 = (a1 + v31[7]);
    v51 = v50[3];
    v52 = v50[1];
    v134 = v50[2];
    v135 = v51;
    v53 = v50[3];
    v54 = v50[5];
    v136 = v50[4];
    v137 = v54;
    v55 = v50[1];
    v133[0] = *v50;
    v133[1] = v55;
    v129 = v134;
    v130 = v53;
    v56 = v50[5];
    v131 = v136;
    v132 = v56;
    v127 = v133[0];
    v128 = v52;
    sub_1D67B2F20(v133, v126, &qword_1EC880F08, &type metadata for PuzzleProgress, MEMORY[0x1E69E6720], sub_1D67B3544);
    v57 = sub_1D67B2100(&v127, 0);
    v59 = v58;
    v140 = v129;
    v141 = v130;
    v142 = v131;
    v143 = v132;
    v138 = v127;
    v139 = v128;
    sub_1D5B88BD0(&v138, &qword_1EC880F08, &type metadata for PuzzleProgress);
    if (v59)
    {
      *(&v128 + 1) = MEMORY[0x1E69E6158];
      *&v127 = v57;
      *(&v127 + 1) = v59;
      sub_1D5B7C390(&v127, v126);
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v125 = v40;
      sub_1D5BAFB24(v126, 0xD000000000000011, 0x80000001D73D4B20, v60);
      v40 = v125;
    }
  }

  v61 = MEMORY[0x1E69E6158];
  if (*(&v118 + 1))
  {
    *(&v139 + 1) = MEMORY[0x1E69E6158];
    v138 = v118;
    sub_1D5B7C390(&v138, v133);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v40;
    sub_1D5BAFB24(v133, 0x6F43656C7A7A7570, 0xEC0000006769666ELL, v62);
    v40 = v127;
  }

  v64 = a1 + v31[9];
  v65 = *(v64 + 1);
  if (v65 >> 60 != 15)
  {
    v66 = *v64;
    sub_1D5E3E824(*v64, *(v64 + 1));
    sub_1D72620CC();
    v67 = sub_1D726209C();
    if (v68)
    {
      *(&v139 + 1) = v61;
      *&v138 = v67;
      *(&v138 + 1) = v68;
      sub_1D5B7C390(&v138, v133);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      *&v127 = v40;
      sub_1D5BAFB24(v133, 0x6553656C7A7A7570, 0xEE0073676E697474, v69);
      sub_1D5B952E4(v66, v65);
      v40 = v127;
    }

    else
    {
      sub_1D5B952E4(v66, v65);
    }
  }

  v70 = (a1 + v31[10]);
  v71 = v70[1];
  if (v71)
  {
    v72 = *v70;
    *(&v139 + 1) = v61;
    *&v138 = v72;
    *(&v138 + 1) = v71;
    sub_1D5B7C390(&v138, v133);

    v73 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v40;
    sub_1D5BAFB24(v133, 0xD000000000000012, 0x80000001D73D4B00, v73);
    v40 = v127;
  }

  v74 = (a1 + v31[17]);
  v75 = v74[1];
  if (v75)
  {
    v76 = *v74;
    *(&v139 + 1) = v61;
    *&v138 = v76;
    *(&v138 + 1) = v75;
    sub_1D5B7C390(&v138, v133);

    v77 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v40;
    sub_1D5BAFB24(v133, 0xD000000000000011, 0x80000001D73D4AE0, v77);
    v40 = v127;
  }

  if (*(a1 + v31[11]))
  {

    v78 = sub_1D6F65200();
    sub_1D5BB0DB0();
    *(&v139 + 1) = v79;
    *&v138 = v78;
    sub_1D5B7C390(&v138, v133);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v40;
    sub_1D5BAFB24(v133, 0x7453656C7A7A7570, 0xEF6F666E49737461, v80);

    v40 = v127;
  }

  v81 = (a1 + v31[16]);
  v82 = v81[1];
  if (v82)
  {
    v83 = *v81;
    *(&v139 + 1) = v61;
    *&v138 = v83;
    *(&v138 + 1) = v82;
    sub_1D5B7C390(&v138, v133);

    v84 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v40;
    sub_1D5BAFB24(v133, 0xD000000000000011, 0x80000001D73D4AC0, v84);
    v40 = v127;
  }

  v85 = *(a1 + v31[13]);
  *(&v139 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v138) = v85;
  sub_1D5B7C390(&v138, v133);
  v86 = swift_isUniquelyReferenced_nonNull_native();
  *&v127 = v40;
  sub_1D5BAFB24(v133, 0xD00000000000001ALL, 0x80000001D73D4A00, v86);
  v87 = v127;
  v88 = v124;
  sub_1D67B2F20(a1 + v31[12], v124, &unk_1EC882110, type metadata accessor for PuzzleHistoryInfo, MEMORY[0x1E69E6720], sub_1D67B30C0);
  if ((*(v119 + 48))(v88, 1, v120) == 1)
  {
    sub_1D67B323C(v88, &unk_1EC882110, type metadata accessor for PuzzleHistoryInfo);
  }

  else
  {
    v89 = v117;
    sub_1D67B2F94(v88, v117);
    v90 = PuzzleHistoryInfo.asDictionary.getter();
    sub_1D5BB0DB0();
    *(&v139 + 1) = v91;
    *&v138 = v90;
    sub_1D5B7C390(&v138, v133);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v87;
    sub_1D5BAFB24(v133, 0xD000000000000011, 0x80000001D73D4AA0, v92);
    sub_1D67B2FF8(v89, type metadata accessor for PuzzleHistoryInfo);
    v87 = v127;
  }

  v93 = sub_1D67B277C(v121);
  if (v93)
  {
    v94 = v93;
    sub_1D5BB0DB0();
    *(&v139 + 1) = v95;
    *&v138 = v94;
    sub_1D5B7C390(&v138, v133);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v87;
    sub_1D5BAFB24(v133, 0xD000000000000013, 0x80000001D73D4A80, v96);
    v87 = v127;
  }

  v97 = sub_1D67B2B08(*(a1 + v31[18]));
  if (v97)
  {
    v98 = v97;
    sub_1D67B3544(0, &unk_1EDF1ADF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    *(&v139 + 1) = v99;
    *&v138 = v98;
    sub_1D5B7C390(&v138, v133);
    v100 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v87;
    sub_1D5BAFB24(v133, 0xD000000000000012, 0x80000001D73D4A60, v100);
    v87 = v127;
  }

  v101 = (a1 + v31[14]);
  v102 = v101[1];
  if (v102)
  {
    v103 = *v101;
    *(&v139 + 1) = MEMORY[0x1E69E6158];
    *&v138 = v103;
    *(&v138 + 1) = v102;
    sub_1D5B7C390(&v138, v133);

    v104 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v87;
    sub_1D5BAFB24(v133, 0xD000000000000018, 0x80000001D73D4A40, v104);
    v87 = v127;
  }

  *(&v139 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v138) = 1;
  sub_1D5B7C390(&v138, v133);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  *&v127 = v87;
  sub_1D5BAFB24(v133, 0xD00000000000001BLL, 0x80000001D73D4A20, v105);
  v106 = objc_opt_self();
  v107 = sub_1D7261D2C();

  *&v138 = 0;
  v2 = [v106 dataWithJSONObject:v107 options:2 error:&v138];

  v108 = v138;
  if (!v2)
  {
    v114 = v108;
    sub_1D725829C();

    goto LABEL_39;
  }

  v109 = sub_1D725867C();
  v111 = v110;

  sub_1D72620CC();
  v112 = sub_1D726209C();
  if (v113)
  {
    v2 = v112;
  }

  else
  {
    sub_1D67B1E74();
    swift_allocError();
    *v116 = 1;
    swift_willThrow();
  }

  sub_1D5B952F8(v109, v111);
  return v2;
}

uint64_t sub_1D67B1A30()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D67B1A70(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) JSONString];
  v4 = sub_1D726207C();
  v6 = v5;

  v7 = [*(v2 + 16) JSONString];
  v8 = sub_1D726207C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  return v12 & 1;
}

uint64_t type metadata accessor for PuzzleDatastoreInfo()
{
  result = qword_1EC88B878;
  if (!qword_1EC88B878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D67B1B88()
{
  v0 = sub_1D7257A4C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  sub_1D725852C();
  sub_1D72620CC();
  v7 = sub_1D7261FCC();
  v9 = v8;

  v12[1] = v7;
  v12[2] = v9;
  sub_1D72579DC();
  sub_1D5BF4D9C();
  v10 = sub_1D7263A4C();
  (*(v1 + 8))(v4, v0);

  return v10;
}

unint64_t sub_1D67B1E74()
{
  result = qword_1EC88B850;
  if (!qword_1EC88B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B850);
  }

  return result;
}

uint64_t sub_1D67B1EC8(uint64_t *a1)
{
  v1 = 0xD000000000000011;
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 19);
  v5 = "showFullscreenModal";
  if (v4 == 1)
  {
    v1 = 0xD000000000000017;
    v5 = "puzzleGameCenterService";
  }

  if (!*(a1 + 19))
  {
    v1 = 0xD000000000000013;
    v5 = "showGameCenterChallenge";
  }

  v6 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69E6158];
  *&v12 = v1;
  *(&v12 + 1) = v5 | 0x8000000000000000;
  sub_1D5B7C390(&v12, v11);
  v7 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D5BAFB24(v11, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  if (!v4)
  {
    v13 = v6;
    *&v12 = v3;
    *(&v12 + 1) = v2;
    sub_1D5B7C390(&v12, v11);

    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v11, 25705, 0xE200000000000000, v9);
  }

  return v7;
}

uint64_t sub_1D67B1FF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = NFInternalBuild();
  if (result)
  {
    v3 = objc_opt_self();
    v4 = [v3 standardUserDefaults];
    v5 = sub_1D726203C();
    v6 = [v4 BOOLForKey_];

    if (v6)
    {
      v7 = HIBYTE(v1) == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }

    else
    {
      v8 = [v3 standardUserDefaults];
      v9 = sub_1D726203C();
      [v8 setBool:0 forKey:v9];

      return 1;
    }
  }

  return result;
}

uint64_t sub_1D67B2100(__int128 *a1, int a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v9 = a1[3];
  v66 = a1[2];
  v67 = v9;
  v10 = a1[5];
  v68 = a1[4];
  v69 = v10;
  v11 = a1[1];
  v64 = *a1;
  v65 = v11;
  v12 = v68;
  if (v68 != 1)
  {
    v56 = v7;
    v57 = a2;
    v13 = *(&v65 + 1);
    v52 = *(&v66 + 1);
    v14 = v66;
    v55 = BYTE1(v67);
    v54 = *(&v67 + 1);
    v15 = *(&v69 + 1);
    v53 = v69;
    v16 = BYTE8(v68);
    v17 = v67;
    v18 = v65;
    v19 = *(&v64 + 1);
    v20 = MEMORY[0x1E69E6530];
    v63 = MEMORY[0x1E69E6530];
    *&v62 = v64;
    sub_1D5B7C390(&v62, v61);
    v59 = v13;
    v58 = v14;
    sub_1D5F13DE4(v13, v14);

    v21 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v21;
    sub_1D5BAFB24(v61, 0x73736572676F7270, 0xED00006C6576654CLL, isUniquelyReferenced_nonNull_native);
    v23 = v60;
    v63 = v20;
    *&v62 = v19;
    sub_1D5B7C390(&v62, v61);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v23;
    sub_1D5BAFB24(v61, 0x6172754479616C70, 0xEC0000006E6F6974, v24);
    v25 = v60;
    v26 = MEMORY[0x1E69E6370];
    v63 = MEMORY[0x1E69E6370];
    LOBYTE(v62) = v18 & 1;
    sub_1D5B7C390(&v62, v61);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v25;
    sub_1D5BAFB24(v61, 0x6465766C6F537369, 0xE800000000000000, v27);
    v28 = v60;
    v63 = v26;
    LOBYTE(v62) = v16 & 1;
    sub_1D5B7C390(&v62, v61);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v28;
    sub_1D5BAFB24(v61, 0x6576655264657375, 0xEA00000000006C61, v29);
    v30 = v60;
    if ((v17 & 1) == 0)
    {
      v63 = v20;
      *&v62 = v52;
      sub_1D5B7C390(&v62, v61);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v30;
      sub_1D5BAFB24(v61, 0x65726F6373, 0xE500000000000000, v31);
      v30 = v60;
    }

    v32 = MEMORY[0x1E69E6158];
    v33 = v58;
    if (v55 != 2)
    {
      v34 = 0x746C7561666564;
      if (v55)
      {
        v34 = 0x74636566726570;
      }

      v63 = MEMORY[0x1E69E6158];
      *&v62 = v34;
      *(&v62 + 1) = 0xE700000000000000;
      sub_1D5B7C390(&v62, v61);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v30;
      sub_1D5BAFB24(v61, 0x70795465726F6373, 0xE900000000000065, v35);
      v30 = v60;
    }

    if (v15)
    {
      v63 = v32;
      *&v62 = v53;
      *(&v62 + 1) = v15;
      sub_1D5B7C390(&v62, v61);

      v36 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v30;
      sub_1D5BAFB24(v61, 0xD000000000000018, 0x80000001D73B7720, v36);
      v30 = v60;
    }

    v37 = v59;
    if (v12)
    {
      v63 = v32;
      *&v62 = v54;
      *(&v62 + 1) = v12;
      sub_1D5B7C390(&v62, v61);

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v30;
      sub_1D5BAFB24(v61, 0x44496B6E6172, 0xE600000000000000, v38);
      v30 = v60;
    }

    if ((v57 & 1) == 0 && v33 >> 60 != 15)
    {
      sub_1D5E3E824(v37, v33);
      sub_1D72620CC();
      v39 = sub_1D726209C();
      if (v40)
      {
        v63 = v32;
        *&v62 = v39;
        *(&v62 + 1) = v40;
        sub_1D5B7C390(&v62, v61);
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v30;
        sub_1D5BAFB24(v61, 0x73736572676F7270, 0xEC00000061746144, v41);
      }

      sub_1D5B952E4(v37, v33);
    }

    v42 = objc_opt_self();
    v43 = sub_1D7261D2C();

    *&v62 = 0;
    v44 = [v42 dataWithJSONObject:v43 options:2 error:&v62];

    v45 = v62;
    if (v44)
    {
      v46 = sub_1D725867C();
      v48 = v47;

      sub_1D72620CC();
      v49 = sub_1D726209C();
      sub_1D5B952F8(v46, v48);
      sub_1D5B88BD0(&v64, &qword_1EC880F08, &type metadata for PuzzleProgress);
      return v49;
    }

    else
    {
      v50 = v45;
      v51 = sub_1D725829C();

      swift_willThrow();
      sub_1D5B88BD0(&v64, &qword_1EC880F08, &type metadata for PuzzleProgress);

      return 0;
    }
  }

  return result;
}

uint64_t sub_1D67B277C(void *a1)
{
  sub_1D67B30C0(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v34 - v4;
  swift_getObjectType();
  v6 = [a1 publishDate];
  if (!v6)
  {
    v32 = sub_1D725891C();
    (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
    sub_1D67B323C(v5, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    return 0;
  }

  v7 = v6;
  sub_1D72588BC();

  v8 = sub_1D725891C();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_1D67B323C(v5, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v13 = byte_1F50FC130[v9 + 32];
    LOBYTE(v37.value._countAndFlagsBits) = byte_1F50FC130[v9 + 32];
    v14 = FCPuzzleProviding.publishDateString(format:)(&v37);
    if (!v14.value._object)
    {
      goto LABEL_4;
    }

    v15 = 0x6D756964656DLL;
    if (v13 != 1)
    {
      v15 = 1735290732;
    }

    v16 = 0xE600000000000000;
    if (v13 != 1)
    {
      v16 = 0xE400000000000000;
    }

    v17 = v13 ? v15 : 0x74726F6873;
    v18 = v13 ? v16 : 0xE500000000000000;
    v38 = MEMORY[0x1E69E6158];
    v37 = v14;
    sub_1D5B7C390(&v37, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v10;
    v20 = sub_1D5B69D90(v17, v18);
    v22 = v10[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v10[3] < v25)
    {
      sub_1D5BAFF10(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1D5B69D90(v17, v18);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_30;
      }

LABEL_21:
      if (v26)
      {
        goto LABEL_3;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v31 = v20;
    sub_1D5C06BE0();
    v20 = v31;
    if (v26)
    {
LABEL_3:
      v11 = v20;

      v10 = v35;
      v12 = (v35[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_1D5B7C390(v36, v12);
      goto LABEL_4;
    }

LABEL_22:
    v10 = v35;
    v35[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v10[6] + 16 * v20);
    *v28 = v17;
    v28[1] = v18;
    sub_1D5B7C390(v36, (v10[7] + 32 * v20));
    v29 = v10[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_29;
    }

    v10[2] = v30;
LABEL_4:
    if (++v9 == 3)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

char *sub_1D67B2B08(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *v2;
    v5 = v2[2];
    *&v36[16] = v2[1];
    *&v36[32] = v5;
    *v36 = v4;
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[5];
    *&v36[96] = *(v2 + 12);
    *&v36[64] = v7;
    *&v36[80] = v8;
    *&v36[48] = v6;
    v9 = *v36;
    sub_1D67B3058(v36, v33);
    v10 = sub_1D67AFD58(v9);
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      sub_1D67B30C0(0, &qword_1EC88B858, sub_1D67B3124, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7279970;
      *(inited + 32) = 0x696669746E656469;
      *(inited + 40) = 0xEA00000000007265;
      v15 = [v9 identifier];
      v16 = sub_1D726207C();
      v18 = v17;

      *(inited + 48) = v16;
      *(inited + 56) = v18;
      *(inited + 64) = 0x656C7A7A7570;
      *(inited + 72) = 0xE600000000000000;
      *(inited + 80) = v12;
      *(inited + 88) = v13;
      *(inited + 96) = 0x73736572676F7270;
      *(inited + 104) = 0xE800000000000000;
      v29 = *&v36[40];
      v30 = *&v36[56];
      v31 = *&v36[72];
      v32 = *&v36[88];
      v27 = *&v36[8];
      v28 = *&v36[24];
      sub_1D67B2F20(&v36[8], v33, &qword_1EC880F08, &type metadata for PuzzleProgress, MEMORY[0x1E69E6720], sub_1D67B3544);
      v19 = sub_1D67B2100(&v27, 1);
      v21 = v20;
      v33[2] = v29;
      v33[3] = v30;
      v33[4] = v31;
      v33[5] = v32;
      v33[0] = v27;
      v33[1] = v28;
      sub_1D5B88BD0(v33, &qword_1EC880F08, &type metadata for PuzzleProgress);
      *(inited + 112) = v19;
      *(inited + 120) = v21;
      v22 = sub_1D605BCD8(inited);
      swift_setDeallocating();
      sub_1D67B3124();
      swift_arrayDestroy();
      sub_1D67B31B0();
      *(&v35 + 1) = v23;
      *&v34 = v22;
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    sub_1D67B3090(v36);
    if (*(&v35 + 1))
    {
      sub_1D5B7C390(&v34, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1D69917E4(0, *(v3 + 2) + 1, 1, v3);
      }

      v25 = *(v3 + 2);
      v24 = *(v3 + 3);
      if (v25 >= v24 >> 1)
      {
        v3 = sub_1D69917E4((v24 > 1), v25 + 1, 1, v3);
      }

      *(v3 + 2) = v25 + 1;
      sub_1D5B7C390(v33, &v3[32 * v25 + 32]);
    }

    else
    {
      sub_1D5B88BD0(&v34, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
    }

    v2 = (v2 + 104);
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1D67B2E5C(void *a1)
{
  if (!NFInternalBuild())
  {
    return [a1 showInfoModalOnFirstPlay];
  }

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D726203C();
  v4 = [v2 integerForKey_];

  if (v4 == 2)
  {
    return 0;
  }

  if (v4 != 1)
  {
    return [a1 showInfoModalOnFirstPlay];
  }

  return 1;
}

uint64_t sub_1D67B2F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D67B2F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleHistoryInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67B2FF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D67B30C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D67B3124()
{
  if (!qword_1EC88B860)
  {
    sub_1D67B3544(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88B860);
    }
  }
}

void sub_1D67B31B0()
{
  if (!qword_1EC88B870)
  {
    sub_1D67B3544(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88B870);
    }
  }
}

uint64_t sub_1D67B323C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D67B30C0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed14PuzzleProgressVSg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1D67B3318()
{
  type metadata accessor for PuzzleResource();
  if (v0 <= 0x3F)
  {
    sub_1D67B3544(319, &qword_1EC880F08, &type metadata for PuzzleProgress, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D67B3544(319, &unk_1EC88B888, &type metadata for PuzzleLaunchAction, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D67B3544(319, &qword_1EDF18A90, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D67B3544(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1D67B30C0(319, &qword_1EC88B898, type metadata accessor for PuzzleStatsInfo, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1D67B30C0(319, &unk_1EC882110, type metadata accessor for PuzzleHistoryInfo, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1D5FE4258();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D67B3544(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D67B3598()
{
  result = qword_1EC88B8A0;
  if (!qword_1EC88B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B8A0);
  }

  return result;
}

void static FormatSourceItemTipTraitsDefaultStrategy.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

BOOL static FormatSourceItemTipTraitsDefaultStrategy.shouldEncode(wrappedValue:)(__int128 *a1)
{
  v1 = *(a1 + 16);
  v7 = *a1;
  v8 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  v6 = 0;
  v2 = _s8NewsFeed25FormatSourceItemTipTraitsO2eeoiySbAC_ACtFZ_0(&v7, &v4);
  sub_1D5F5870C(v4, v5, v6);
  return (v2 & 1) == 0;
}

void sub_1D67B3668(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

BOOL sub_1D67B367C(__int128 *a1)
{
  v1 = *(a1 + 16);
  v7 = *a1;
  v8 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  v6 = 0;
  v2 = _s8NewsFeed25FormatSourceItemTipTraitsO2eeoiySbAC_ACtFZ_0(&v7, &v4);
  sub_1D5F5870C(v4, v5, v6);
  return (v2 & 1) == 0;
}

unint64_t sub_1D67B36E4(uint64_t a1)
{
  result = sub_1D67B370C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67B370C()
{
  result = qword_1EC88B8B0;
  if (!qword_1EC88B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B8B0);
  }

  return result;
}

id SharingIssueImageActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed35SharingIssueImageActivityItemSource_issueImage))
  {
    v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingIssueImageActivityItemSource_issueImage);
    v8 = sub_1D62B7E2C();
    *&v7 = v6;
    sub_1D5B7C390(&v7, a1);
    v3 = v6;
  }

  else
  {
    v4 = sub_1D67B380C();
    v3 = 0;
    *(a1 + 24) = v4;
    *a1 = MEMORY[0x1E69E7CA0] + 8;
  }

  return v3;
}

unint64_t sub_1D67B380C()
{
  result = qword_1EC88B8C8;
  if (!qword_1EC88B8C8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC88B8C8);
  }

  return result;
}

void SharingIssueImageActivityItemSource.activityViewController(_:itemForActivityType:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1D726203C();
  v6 = v5;
  if (!a1)
  {

    goto LABEL_9;
  }

  v7 = sub_1D726207C();
  v9 = v8;
  if (v7 != sub_1D726207C() || v9 != v10)
  {
    v12 = sub_1D72646CC();

    if (v12)
    {
      goto LABEL_11;
    }

LABEL_9:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

LABEL_11:
  if (*(v2 + OBJC_IVAR____TtC8NewsFeed35SharingIssueImageActivityItemSource_issueImage))
  {
    v18 = *(v2 + OBJC_IVAR____TtC8NewsFeed35SharingIssueImageActivityItemSource_issueImage);
    v20 = sub_1D62B7E2C();
    *&v19 = v18;
    sub_1D5B7C390(&v19, a2);
    v13 = v18;
  }

  else
  {
    sub_1D5BE1404();
    v15 = v14;
    v16 = sub_1D67B3C60();
    v13 = 0;
    *(a2 + 24) = v16;
    *a2 = v15;
  }

  v17 = v13;
}

id SharingIssueImageActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingIssueImageActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D67B3C60()
{
  result = qword_1EC88B8D0;
  if (!qword_1EC88B8D0)
  {
    sub_1D5BE1404();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC88B8D0);
  }

  return result;
}

uint64_t FormatPuzzleStatisticBinding.Text.text(from:)(uint64_t a1)
{
  v157 = a1;
  v153 = type metadata accessor for PuzzleLeaderboardEntry();
  v146 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v2);
  v140 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E6720];
  sub_1D5C42C60(0, qword_1EDF0D8F0, type metadata accessor for PuzzleLeaderboardEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v142 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v143 = &v139 - v10;
  sub_1D5C42C60(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, v4);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v151 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v152 = &v139 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v150 = &v139 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v149 = &v139 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v148 = &v139 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v147 = &v139 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v139 - v31;
  v33 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  v154 = *(v33 - 8);
  v155 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v145 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v141 = &v139 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v139 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v139 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  v144 = &v139 - v49;
  v50 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v139 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v57 = &v139 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v139 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v139 - v64;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v139 - v68;
  v70 = *v156;
  if (v70 > 4)
  {
    if (*v156 <= 7u)
    {
      if (v70 != 5)
      {
        if (v70 != 6)
        {
          LOBYTE(v158) = 7;
          v93 = v148;
          sub_1D67B50E8(v157, v148);
          v94 = v155;
          if ((*(v154 + 48))(v93, 1, v155) != 1)
          {
            sub_1D67B6C74(v93, v42, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
            v158 = *&v42[*(v94 + 24)];
            v71 = sub_1D72644BC();
            v72 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
            v73 = v42;
            goto LABEL_65;
          }

          sub_1D67B6C04(v93, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          return 0;
        }

        LOBYTE(v158) = 6;
        v32 = v147;
        sub_1D67B50E8(v157, v147);
        if ((*(v154 + 48))(v32, 1, v155) != 1)
        {
          sub_1D67B6C74(v32, v46, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          v158 = *&v46[*(v153 + 28)];
          v71 = sub_1D72644BC();
          v72 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
          v73 = v46;
LABEL_65:
          sub_1D5BDDB88(v73, v72);
          return v71;
        }

LABEL_29:
        sub_1D67B6C04(v32, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        return 0;
      }

      LOBYTE(v158) = 5;
      sub_1D67B50E8(v157, v32);
      if ((*(v154 + 48))(v32, 1, v155) == 1)
      {
        goto LABEL_29;
      }

      v61 = v144;
      sub_1D67B6C74(v32, v144, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v87 = *&v61[*(v153 + 32)];
      type metadata accessor for FeedPuzzleStatistic();
      swift_getObjectType();
      v88 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
      if ((v88 & 0x4000) != 0)
      {
LABEL_27:
        v158 = v87;
        v71 = sub_1D72644BC();
        v72 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
        v73 = v61;
        goto LABEL_65;
      }

      if ((v88 & 0x200) == 0)
      {
        if ((v88 & 0x100400) != 0)
        {
          goto LABEL_27;
        }

        v92 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
        goto LABEL_33;
      }

      v1 = v87;
      if (qword_1EDF0AEE8 == -1)
      {
        goto LABEL_77;
      }

      goto LABEL_102;
    }

    if (v70 != 8)
    {
      if (v70 != 9)
      {
        LOBYTE(v158) = 10;
        v95 = v152;
        sub_1D67B50E8(v157, v152);
        v96 = v151;
        sub_1D67B6B70(v95, v151);
        v97 = v155;
        if ((*(v154 + 48))(v96, 1, v155) == 1)
        {
          sub_1D67B6C04(v96, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        }

        else
        {
          v101 = (v96 + *(v97 + 28));
          v103 = *v101;
          v102 = v101[1];

          sub_1D5BDDB88(v96, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          if (v102)
          {
            sub_1D67B6C04(v95, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
            return v103;
          }
        }

        sub_1D67B6C04(v95, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);

        return 0;
      }

      LOBYTE(v158) = 9;
      v32 = v150;
      sub_1D67B50E8(v157, v150);
      if ((*(v154 + 48))(v32, 1, v155) == 1)
      {
        goto LABEL_29;
      }

      v69 = v145;
      sub_1D67B6C74(v32, v145, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v80 = v142;
      sub_1D6E99958(v142);
      v81 = v153;
      if ((*(v146 + 48))(v80, 1, v153) == 1)
      {
        sub_1D67B6C04(v80, qword_1EDF0D8F0, type metadata accessor for PuzzleLeaderboardEntry);
        v82 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
LABEL_22:
        v78 = v82;
        v79 = v69;
        goto LABEL_47;
      }

      v61 = v140;
      sub_1D67B6C74(v80, v140, type metadata accessor for PuzzleLeaderboardEntry);
      v108 = *(v81 + 32);
      v109 = *&v61[v108];
      v110 = *&v69[v108];
      v111 = v109 - v110;
      if (__OFSUB__(v109, v110))
      {
        __break(1u);
LABEL_102:
        swift_once();
LABEL_77:
        v114 = qword_1EDF0AEF0;
        v115 = [v114 stringFromTimeInterval_];
        if (v115)
        {
          v116 = v115;
          v117 = sub_1D726207C();
          v119 = v118;
        }

        else
        {
          v117 = 0;
          v119 = 0xE000000000000000;
        }

        v158 = v117;
        v159 = v119;
        v164 = 44;
        v165 = 0xE100000000000000;
        v162 = 0;
        v163 = 0xE000000000000000;
        sub_1D5BF4D9C();
        v126 = MEMORY[0x1E69E6158];
        v127 = sub_1D7263A6C();
        v129 = v128;

        v158 = v127;
        v159 = v129;
        v164 = 32;
        v165 = 0xE100000000000000;
        v130 = sub_1D72639FC();
        v131 = *(v130 + 16);
        if (v131 >= 2)
        {
          v131 = 2;
        }

        v158 = v130;
        v159 = v130 + 32;
        v160 = 0;
        v161 = (2 * v131) | 1;
        sub_1D67B6E98(0, &unk_1EDF1A5F0, v126, MEMORY[0x1E69E6948]);
        sub_1D67B6CDC();
        v103 = sub_1D7261F3C();

        v132 = v61;
LABEL_99:
        sub_1D5BDDB88(v132, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        return v103;
      }

      if (v111 < 0 && (v112 = __OFSUB__(0, v111), v111 = v110 - v109, v112))
      {
        __break(1u);
      }

      else
      {
        type metadata accessor for FeedPuzzleStatistic();
        swift_getObjectType();
        v113 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
        if ((v113 & 0x4000) != 0)
        {
          goto LABEL_73;
        }

        if ((v113 & 0x200) == 0)
        {
          if ((v113 & 0x100400) == 0)
          {
            sub_1D5BDDB88(v61, type metadata accessor for PuzzleLeaderboardEntry);
            v82 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
            goto LABEL_22;
          }

LABEL_73:
          v158 = v111;
          v71 = sub_1D72644BC();
          sub_1D5BDDB88(v61, type metadata accessor for PuzzleLeaderboardEntry);
          v72 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
          v73 = v69;
          goto LABEL_65;
        }

        v1 = v111;
        if (qword_1EDF0AEE8 == -1)
        {
LABEL_87:
          v120 = qword_1EDF0AEF0;
          v121 = [v120 stringFromTimeInterval_];
          if (v121)
          {
            v122 = v121;
            v123 = sub_1D726207C();
            v125 = v124;
          }

          else
          {
            v123 = 0;
            v125 = 0xE000000000000000;
          }

          v158 = v123;
          v159 = v125;
          v164 = 44;
          v165 = 0xE100000000000000;
          v162 = 0;
          v163 = 0xE000000000000000;
          sub_1D5BF4D9C();
          v133 = MEMORY[0x1E69E6158];
          v134 = sub_1D7263A6C();
          v136 = v135;

          v158 = v134;
          v159 = v136;
          v164 = 32;
          v165 = 0xE100000000000000;
          v137 = sub_1D72639FC();
          v138 = *(v137 + 16);
          if (v138 >= 2)
          {
            v138 = 2;
          }

          v158 = v137;
          v159 = v137 + 32;
          v160 = 0;
          v161 = (2 * v138) | 1;
          sub_1D67B6E98(0, &unk_1EDF1A5F0, v133, MEMORY[0x1E69E6948]);
          sub_1D67B6CDC();
          v103 = sub_1D7261F3C();

          sub_1D5BDDB88(v61, type metadata accessor for PuzzleLeaderboardEntry);
          v132 = v69;
          goto LABEL_99;
        }
      }

      swift_once();
      goto LABEL_87;
    }

    LOBYTE(v158) = 8;
    v32 = v149;
    sub_1D67B50E8(v157, v149);
    if ((*(v154 + 48))(v32, 1, v155) == 1)
    {
      goto LABEL_29;
    }

    v98 = v141;
    sub_1D67B6C74(v32, v141, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    v99 = v143;
    sub_1D6E99958(v143);
    v100 = v153;
    if ((*(v146 + 48))(v99, 1, v153) != 1)
    {
      sub_1D5BDDB88(v98, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v104 = (v99 + *(v100 + 24));
      v105 = *v104;
      v106 = v104[4];
      v107 = v104[5];

      sub_1D5F13DE4(v106, v107);
      sub_1D5BDDB88(v99, type metadata accessor for PuzzleLeaderboardEntry);

      sub_1D5B952E4(v106, v107);
      return v105;
    }

    sub_1D67B6C04(v99, qword_1EDF0D8F0, type metadata accessor for PuzzleLeaderboardEntry);
    v78 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
    v79 = v98;
LABEL_47:
    sub_1D5BDDB88(v79, v78);
    return 0;
  }

  if (*v156 > 1u)
  {
    v74 = v157;
    if (v70 == 2)
    {
      v84 = v74 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
      v85 = type metadata accessor for PuzzleStatistic();
      sub_1D67B6D58(v84 + *(v85 + 20), v69, type metadata accessor for PuzzleStatisticCategory);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 2) < 2)
      {
        v82 = type metadata accessor for PuzzleStatisticCategory;
        goto LABEL_22;
      }

      if (!EnumCaseMultiPayload)
      {
        sub_1D67B6C74(v69, v57, type metadata accessor for PuzzleStatisticValue);
        v71 = PuzzleStatisticValue.primaryDisplayValue.getter();
        sub_1D5BDDB88(v57, type metadata accessor for PuzzleStatisticValue);
        return v71;
      }

      sub_1D67B6C74(v69, v53, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    }

    else if (v70 == 3)
    {
      v75 = v74 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
      v76 = type metadata accessor for PuzzleStatistic();
      sub_1D67B6D58(v75 + *(v76 + 20), v65, type metadata accessor for PuzzleStatisticCategory);
      v77 = swift_getEnumCaseMultiPayload();
      if ((v77 - 2) < 2 || !v77)
      {
        v78 = type metadata accessor for PuzzleStatisticCategory;
        v79 = v65;
        goto LABEL_47;
      }

      sub_1D67B6C74(v65, v53, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    }

    else
    {
      v89 = v74 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
      v90 = type metadata accessor for PuzzleStatistic();
      sub_1D67B6D58(v89 + *(v90 + 20), v61, type metadata accessor for PuzzleStatisticCategory);
      v91 = swift_getEnumCaseMultiPayload();
      if ((v91 - 2) < 2 || !v91)
      {
        v92 = type metadata accessor for PuzzleStatisticCategory;
LABEL_33:
        v78 = v92;
        v79 = v61;
        goto LABEL_47;
      }

      sub_1D67B6C74(v61, v53, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    }

    v71 = PuzzleStatisticValue.primaryDisplayValue.getter();
    v72 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
    v73 = v53;
    goto LABEL_65;
  }

  if (!*v156)
  {
    type metadata accessor for FeedPuzzleStatistic();
    return PuzzleStatistic.identifier.getter();
  }

  type metadata accessor for FeedPuzzleStatistic();
  type metadata accessor for PuzzleStatistic();
  PuzzleStatisticCategory.statisticType.getter(&v158);
  if (v158 <= 4u)
  {
    if (v158 <= 1u)
    {
      if (v158)
      {
        return 0x53746E6572727563;
      }

      else
      {
        return 0x53747365676E6F6CLL;
      }
    }

    else if (v158 == 2)
    {
      return 0x5373656C7A7A7570;
    }

    else if (v158 == 3)
    {
      return 0x5374636566726570;
    }

    else
    {
      return 0x74615265766C6F73;
    }
  }

  else
  {
    if (v158 <= 7u)
    {
      if (v158 == 5)
      {
        return 0xD00000000000001CLL;
      }

      if (v158 == 6)
      {
        return 0xD00000000000001CLL;
      }

      return 0xD00000000000001DLL;
    }

    if (v158 == 8)
    {
      return 0xD00000000000001DLL;
    }

    if (v158 == 9)
    {
      return 0x53646570756F7267;
    }

    else
    {
      return 0xD000000000000015;
    }
  }
}

uint64_t sub_1D67B50E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C42C60(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - v14;
  v16 = a1 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
  v17 = type metadata accessor for PuzzleStatistic();
  sub_1D67B6D58(v16 + *(v17 + 20), v7, type metadata accessor for PuzzleStatisticCategory);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D5BDDB88(v7, type metadata accessor for PuzzleStatisticCategory);
    goto LABEL_5;
  }

  sub_1D67B7068(v7, v15);
  sub_1D67B7068(v15, v11);
  v18 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_1D67B6C04(v11, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
LABEL_5:
    v20 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  sub_1D67B6C74(v11, a2, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  return (*(v19 + 56))(a2, 0, 1, v18);
}

uint64_t FormatPuzzleStatisticBinding.Text.CodingType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  v4 = 11;
  if (v2 < 0xB)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t FormatPuzzleStatisticBinding.Text.CodingType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x696669746E656469;
    v7 = 0xD000000000000014;
    if (v1 == 3)
    {
      v7 = 0xD000000000000015;
    }

    if (v1 == 2)
    {
      v7 = 0xD000000000000013;
    }

    if (*v0)
    {
      v6 = 0x6974736974617473;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = 0xD000000000000037;
    if (v1 != 9)
    {
      v3 = 0x6F6272656461656CLL;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    if (v1 == 5)
    {
      v4 = 0xD000000000000022;
    }

    else
    {
      v4 = 0xD000000000000021;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D67B5590()
{
  sub_1D7264A0C();
  sub_1D694DCFC();
  return sub_1D7264A5C();
}

uint64_t sub_1D67B55E0()
{
  sub_1D7264A0C();
  sub_1D694DCFC();
  return sub_1D7264A5C();
}

uint64_t sub_1D67B5630@<X0>(uint64_t *a1@<X8>)
{
  result = FormatPuzzleStatisticBinding.Text.CodingType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FormatPuzzleStatisticBinding.Text.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D67B57BC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v195 = a3;
  v202 = a2;
  sub_1D5C42C60(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v186 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v187 = &v174 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v185 = &v174 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v184 = &v174 - v15;
  v16 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  v188 = *(v16 - 8);
  v189 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v176 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v175 = &v174 - v21;
  v194 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v194, v22);
  v193 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v192 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v191, v27);
  v190 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v180 = &v174 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v174 - v34;
  v36 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v36, v37);
  v183 = &v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v179 = &v174 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v178 = &v174 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v182 = &v174 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v181 = &v174 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v177 = &v174 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v174 - v56;
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = (&v174 - v60);
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v174 - v64;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v174 - v68;
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = &v174 - v72;
  v74 = *a1;
  sub_1D5C42C60(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v75 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v197 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_1D7273AE0;
  if (v74 > 4)
  {
    if (v74 <= 7)
    {
      v76 = v196;
      if (v74 != 5)
      {
        if (v74 == 6)
        {
          v77 = "Leaderboard Player Rank Display Value";
          v78 = v181;
          sub_1D67B6D58(v202, v181, type metadata accessor for FeedPuzzleStatistic);
          LOBYTE(v198) = 6;
          v79 = v184;
          sub_1D67B50E8(v78, v184);
          if (v188[6](v79, 1, v189) == 1)
          {
            v80 = v79;
LABEL_43:
            sub_1D67B6C04(v80, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
            v130 = 0;
            v131 = 0xE000000000000000;
LABEL_53:
            v91 = v195;
            v144 = (v77 - 32);
            v145 = HIBYTE(v131) & 0xF;
            if ((v131 & 0x2000000000000000) == 0)
            {
              v145 = v130 & 0xFFFFFFFFFFFFLL;
            }

            if (v145)
            {
              v146 = MEMORY[0x1E69E6158];
            }

            else
            {

              v130 = 0;
              v131 = 0;
              v146 = 0;
              v200 = 0;
            }

            v198 = v130;
            v199 = v131;
            v201 = v146;
            v147 = (v76 + v197);
            v148 = 0xD000000000000025;
            goto LABEL_106;
          }

          v140 = v175;
          sub_1D67B6C74(v79, v175, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          v141 = *(type metadata accessor for PuzzleLeaderboardEntry() + 28);
        }

        else
        {
          v77 = "Leaderboard Num Entries Display Value";
          v78 = v182;
          sub_1D67B6D58(v202, v182, type metadata accessor for FeedPuzzleStatistic);
          LOBYTE(v198) = 7;
          v128 = v185;
          sub_1D67B50E8(v78, v185);
          v129 = v189;
          if (v188[6](v128, 1, v189) == 1)
          {
            v80 = v128;
            goto LABEL_43;
          }

          v142 = v128;
          v140 = v176;
          sub_1D67B6C74(v142, v176, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          v141 = *(v129 + 24);
        }

        v198 = *(v140 + v141);
        v130 = sub_1D72644BC();
        v131 = v143;
        sub_1D5BDDB88(v140, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        goto LABEL_53;
      }

      v94 = "er Rank Display Value";
      v73 = v177;
      sub_1D67B6D58(v202, v177, type metadata accessor for FeedPuzzleStatistic);
      LOBYTE(v198) = 5;
      v110 = FormatPuzzleStatisticBinding.Text.text(from:)(v73);
      v112 = HIBYTE(v111) & 0xF;
      if ((v111 & 0x2000000000000000) == 0)
      {
        v112 = v110 & 0xFFFFFFFFFFFFLL;
      }

      v113 = v197;
      if (v112)
      {
        v114 = MEMORY[0x1E69E6158];
      }

      else
      {

        v110 = 0;
        v111 = 0;
        v114 = 0;
        v200 = 0;
      }

      v91 = v195;
      v198 = v110;
      v199 = v111;
      v201 = v114;
      v155 = (v76 + v113);
      v156 = 0xD000000000000026;
      goto LABEL_78;
    }

    v76 = v196;
    if (v74 == 8)
    {
      v94 = "core Difference Display Value";
      v73 = v178;
      sub_1D67B6D58(v202, v178, type metadata accessor for FeedPuzzleStatistic);
      LOBYTE(v198) = 8;
      v115 = FormatPuzzleStatisticBinding.Text.text(from:)(v73);
      v117 = HIBYTE(v116) & 0xF;
      if ((v116 & 0x2000000000000000) == 0)
      {
        v117 = v115 & 0xFFFFFFFFFFFFLL;
      }

      v118 = v197;
      if (v117)
      {
        v119 = MEMORY[0x1E69E6158];
      }

      else
      {

        v115 = 0;
        v116 = 0;
        v119 = 0;
        v200 = 0;
      }

      v91 = v195;
      v198 = v115;
      v199 = v116;
      v201 = v119;
      v155 = (v76 + v118);
      v156 = 0xD000000000000023;
      goto LABEL_78;
    }

    if (v74 == 9)
    {
      v94 = "Leaderboard Name";
      v73 = v179;
      sub_1D67B6D58(v202, v179, type metadata accessor for FeedPuzzleStatistic);
      LOBYTE(v198) = 9;
      v95 = FormatPuzzleStatisticBinding.Text.text(from:)(v73);
      v97 = HIBYTE(v96) & 0xF;
      if ((v96 & 0x2000000000000000) == 0)
      {
        v97 = v95 & 0xFFFFFFFFFFFFLL;
      }

      v91 = v195;
      v98 = v197;
      if (v97)
      {
        v99 = MEMORY[0x1E69E6158];
      }

      else
      {

        v95 = 0;
        v96 = 0;
        v99 = 0;
        v200 = 0;
      }

      v198 = v95;
      v199 = v96;
      v201 = v99;
      v155 = (v76 + v98);
      v156 = 0xD00000000000003DLL;
LABEL_78:
      v157 = v94 | 0x8000000000000000;
LABEL_127:
      sub_1D711B30C(v156, v157, &v198, v155);
      result = sub_1D5BDDB88(v73, type metadata accessor for FeedPuzzleStatistic);
      goto LABEL_128;
    }

    v132 = v183;
    sub_1D67B6D58(v202, v183, type metadata accessor for FeedPuzzleStatistic);
    LOBYTE(v198) = 10;
    v133 = v187;
    sub_1D67B50E8(v132, v187);
    v134 = v186;
    sub_1D67B6B70(v133, v186);
    v135 = v189;
    v136 = v188[6](v134, 1, v189);
    v91 = v195;
    if (v136 == 1)
    {
      sub_1D67B6C04(v134, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    }

    else
    {
      v149 = (v134 + *(v135 + 28));
      v151 = *v149;
      v150 = v149[1];

      sub_1D5BDDB88(v134, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      if (v150)
      {
        sub_1D67B6C04(v133, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
LABEL_62:
        v152 = HIBYTE(v150) & 0xF;
        if ((v150 & 0x2000000000000000) == 0)
        {
          v152 = v151 & 0xFFFFFFFFFFFFLL;
        }

        if (v152)
        {
          v153 = MEMORY[0x1E69E6158];
        }

        else
        {

          v151 = 0;
          v150 = 0;
          v153 = 0;
          v200 = 0;
        }

        v198 = v151;
        v199 = v150;
        v201 = v153;
        sub_1D711B30C(0xD000000000000010, 0x80000001D73D4C80, &v198, (v76 + v197));
        v158 = v132;
        goto LABEL_108;
      }
    }

    sub_1D67B6C04(v133, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);

    v151 = 0;
    v150 = 0xE000000000000000;
    goto LABEL_62;
  }

  v81 = v65;
  v188 = v61;
  v189 = v57;
  v82 = v190;
  v83 = v69;
  v84 = v192;
  v85 = v193;
  if (v74 <= 1)
  {
    if (!v74)
    {
      sub_1D67B6D58(v202, v73, type metadata accessor for FeedPuzzleStatistic);
      v100 = PuzzleStatistic.identifier.getter();
      v102 = HIBYTE(v101) & 0xF;
      if ((v101 & 0x2000000000000000) == 0)
      {
        v102 = v100 & 0xFFFFFFFFFFFFLL;
      }

      v76 = v196;
      if (v102)
      {
        v103 = MEMORY[0x1E69E6158];
      }

      else
      {

        v100 = 0;
        v101 = 0;
        v103 = 0;
        v200 = 0;
      }

      v91 = v195;
      v198 = v100;
      v199 = v101;
      v201 = v103;
      v156 = 0x696669746E656449;
      v155 = (v76 + v197);
      v157 = 0xEA00000000007265;
      goto LABEL_127;
    }

    v73 = v83;
    sub_1D67B6D58(v202, v83, type metadata accessor for FeedPuzzleStatistic);
    type metadata accessor for PuzzleStatistic();
    PuzzleStatisticCategory.statisticType.getter(&v198);
    v76 = v196;
    if (v198 <= 4u)
    {
      v126 = v197;
      if (v198 <= 1u)
      {
        v159 = 0xED00006B61657274;
        v91 = v195;
        if (v198)
        {
          v154 = 0x53746E6572727563;
        }

        else
        {
          v154 = 0x53747365676E6F6CLL;
        }

        goto LABEL_121;
      }

      v91 = v195;
      if (v198 == 2)
      {
        v154 = 0x5373656C7A7A7570;
      }

      else
      {
        if (v198 != 3)
        {
          v159 = 0xE900000000000065;
          v154 = 0x74615265766C6F73;
          goto LABEL_121;
        }

        v154 = 0x5374636566726570;
      }

      v159 = 0xED00006465766C6FLL;
LABEL_121:
      v172 = HIBYTE(v159) & 0xF;
      if ((v159 & 0x2000000000000000) == 0)
      {
        v172 = v154 & 0x7F7D7F7F7F7FLL;
      }

      if (v172)
      {
        v173 = MEMORY[0x1E69E6158];
      }

      else
      {

        v154 = 0;
        v159 = 0;
        v173 = 0;
        v200 = 0;
      }

      v198 = v154;
      v199 = v159;
      v201 = v173;
      v156 = 0x6974736974617453;
      v157 = 0xEE00657079542063;
      v155 = (v76 + v126);
      goto LABEL_127;
    }

    v126 = v197;
    if (v198 > 7u)
    {
      v91 = v195;
      if (v198 != 8)
      {
        if (v198 == 9)
        {
          v159 = 0xEC00000073746174;
          v154 = 0x53646570756F7267;
        }

        else
        {
          v154 = 0xD000000000000015;
          v159 = 0x80000001D73B7480;
        }

        goto LABEL_121;
      }

      v171 = "averageScoreByDifficultyLevel";
    }

    else
    {
      v91 = v195;
      if (v198 == 5)
      {
        v127 = "fastestTimeByDifficultyLevel";
        goto LABEL_114;
      }

      if (v198 == 6)
      {
        v127 = "averageTimeByDifficultyLevel";
LABEL_114:
        v159 = (v127 - 32) | 0x8000000000000000;
        v154 = 0xD00000000000001CLL;
        goto LABEL_121;
      }

      v171 = "highestScoreByDifficultyLevel";
    }

    v159 = (v171 - 32) | 0x8000000000000000;
    v154 = 0xD00000000000001DLL;
    goto LABEL_121;
  }

  if (v74 == 2)
  {
    v104 = v81;
    sub_1D67B6D58(v202, v81, type metadata accessor for FeedPuzzleStatistic);
    v105 = *(v36 + 32);
    v106 = type metadata accessor for PuzzleStatistic();
    sub_1D67B6D58(v104 + v105 + *(v106 + 20), v35, type metadata accessor for PuzzleStatisticCategory);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v76 = v196;
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
      v91 = v195;
      if (EnumCaseMultiPayload)
      {
        sub_1D67B6C74(v35, v85, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v108 = PuzzleStatisticValue.primaryDisplayValue.getter();
        v109 = v160;
        v138 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
        v139 = v85;
      }

      else
      {
        sub_1D67B6C74(v35, v84, type metadata accessor for PuzzleStatisticValue);
        v108 = PuzzleStatisticValue.primaryDisplayValue.getter();
        v109 = v137;
        v138 = type metadata accessor for PuzzleStatisticValue;
        v139 = v84;
      }

      sub_1D5BDDB88(v139, v138);
    }

    else
    {
      sub_1D5BDDB88(v35, type metadata accessor for PuzzleStatisticCategory);
      v108 = 0;
      v109 = 0xE000000000000000;
      v91 = v195;
    }

    v161 = HIBYTE(v109) & 0xF;
    if ((v109 & 0x2000000000000000) == 0)
    {
      v161 = v108 & 0xFFFFFFFFFFFFLL;
    }

    if (v161)
    {
      v162 = MEMORY[0x1E69E6158];
    }

    else
    {

      v108 = 0;
      v109 = 0;
      v162 = 0;
      v200 = 0;
    }

    v198 = v108;
    v199 = v109;
    v201 = v162;
    sub_1D711B30C(0xD000000000000015, 0x80000001D73D4DE0, &v198, (v76 + v197));
    v158 = v104;
    goto LABEL_108;
  }

  if (v74 == 3)
  {
    v86 = v188;
    sub_1D67B6D58(v202, v188, type metadata accessor for FeedPuzzleStatistic);
    v87 = *(v36 + 32);
    v88 = v86 + v87 + *(type metadata accessor for PuzzleStatistic() + 20);
    v89 = v180;
    sub_1D67B6D58(v88, v180, type metadata accessor for PuzzleStatisticCategory);
    v90 = swift_getEnumCaseMultiPayload();
    v91 = v195;
    if ((v90 - 2) >= 2 && v90)
    {
      sub_1D67B6C74(v89, v85, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      v92 = PuzzleStatisticValue.primaryDisplayValue.getter();
      v93 = v163;
      sub_1D5BDDB88(v85, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    }

    else
    {
      sub_1D5BDDB88(v89, type metadata accessor for PuzzleStatisticCategory);
      v92 = 0;
      v93 = 0xE000000000000000;
    }

    v78 = v188;
    v164 = HIBYTE(v93) & 0xF;
    if ((v93 & 0x2000000000000000) == 0)
    {
      v164 = v92 & 0xFFFFFFFFFFFFLL;
    }

    v76 = v196;
    if (v164)
    {
      v165 = MEMORY[0x1E69E6158];
    }

    else
    {

      v92 = 0;
      v93 = 0;
      v165 = 0;
      v200 = 0;
    }

    v198 = v92;
    v199 = v93;
    v201 = v165;
    v147 = (v76 + v197);
    v148 = 0xD000000000000017;
    v166 = 0x80000001D73D4DC0;
    goto LABEL_107;
  }

  v120 = v189;
  sub_1D67B6D58(v202, v189, type metadata accessor for FeedPuzzleStatistic);
  v121 = *(v36 + 32);
  v122 = type metadata accessor for PuzzleStatistic();
  sub_1D67B6D58(v120 + v121 + *(v122 + 20), v82, type metadata accessor for PuzzleStatisticCategory);
  v123 = swift_getEnumCaseMultiPayload();
  v91 = v195;
  if ((v123 - 2) >= 2)
  {
    v76 = v196;
    if (v123)
    {
      sub_1D67B6C74(v82, v85, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      v124 = PuzzleStatisticValue.primaryDisplayValue.getter();
      v125 = v167;
      sub_1D5BDDB88(v85, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    }

    else
    {
      sub_1D5BDDB88(v82, type metadata accessor for PuzzleStatisticCategory);
      v124 = 0;
      v125 = 0xE000000000000000;
    }
  }

  else
  {
    sub_1D5BDDB88(v82, type metadata accessor for PuzzleStatisticCategory);
    v124 = 0;
    v125 = 0xE000000000000000;
    v76 = v196;
  }

  v78 = v189;
  v144 = "er Score Display Value";
  v168 = HIBYTE(v125) & 0xF;
  if ((v125 & 0x2000000000000000) == 0)
  {
    v168 = v124 & 0xFFFFFFFFFFFFLL;
  }

  if (v168)
  {
    v169 = MEMORY[0x1E69E6158];
  }

  else
  {

    v124 = 0;
    v125 = 0;
    v169 = 0;
    v200 = 0;
  }

  v198 = v124;
  v199 = v125;
  v201 = v169;
  v147 = (v76 + v197);
  v148 = 0xD000000000000016;
LABEL_106:
  v166 = v144 | 0x8000000000000000;
LABEL_107:
  sub_1D711B30C(v148, v166, &v198, v147);
  v158 = v78;
LABEL_108:
  result = sub_1D5BDDB88(v158, type metadata accessor for FeedPuzzleStatistic);
LABEL_128:
  *v91 = v76;
  return result;
}

uint64_t sub_1D67B6B70(uint64_t a1, uint64_t a2)
{
  sub_1D5C42C60(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67B6C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C42C60(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D67B6C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D67B6CDC()
{
  result = qword_1EDF1A600;
  if (!qword_1EDF1A600)
  {
    sub_1D67B6E98(255, &unk_1EDF1A5F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1A600);
  }

  return result;
}

uint64_t sub_1D67B6D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D67B6DC4()
{
  result = qword_1EC88B8D8;
  if (!qword_1EC88B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B8D8);
  }

  return result;
}

unint64_t sub_1D67B6E1C()
{
  result = qword_1EC88B8E0;
  if (!qword_1EC88B8E0)
  {
    sub_1D67B6E98(255, &qword_1EC88B8E8, &type metadata for FormatPuzzleStatisticBinding.Text.CodingType, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B8E0);
  }

  return result;
}

void sub_1D67B6E98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D67B6EEC()
{
  result = qword_1EC88B8F0;
  if (!qword_1EC88B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B8F0);
  }

  return result;
}

unint64_t sub_1D67B6F40(uint64_t a1)
{
  result = sub_1D67B6F68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67B6F68()
{
  result = qword_1EC88B8F8;
  if (!qword_1EC88B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B8F8);
  }

  return result;
}

unint64_t sub_1D67B6FBC(void *a1)
{
  a1[1] = sub_1D665FDD4();
  a1[2] = sub_1D67050C4();
  result = sub_1D67B6EEC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67B7014()
{
  result = qword_1EDF0A8C0;
  if (!qword_1EDF0A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A8C0);
  }

  return result;
}

uint64_t sub_1D67B7068(uint64_t a1, uint64_t a2)
{
  sub_1D5C42C60(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1D67B70FC()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem;
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v18[3] = ObjectType;
    v18[0] = v0;
    v5 = v0;
    v6 = sub_1D726203C();
    if (ObjectType)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v18, ObjectType);
      v8 = *(ObjectType - 8);
      v9 = MEMORY[0x1EEE9AC00](v7, v7);
      v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = sub_1D72646AC();
      (*(v8 + 8))(v11, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      v12 = 0;
    }

    type metadata accessor for DebugFormatBarButtonItem();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = [v13 initWithTitle:v6 style:0 target:v12 action:{sel_doNext, v18[0]}];

    swift_unknownObjectRelease();
    v15 = *&v0[v1];
    *&v0[v1] = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

void sub_1D67B72BC()
{
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter];
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter + 8];
  v3 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections;
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections];

  sub_1D67BDC74(v1, v2, v4);
  v6 = v5;

  sub_1D67B7400(v6);
  v7 = [v0 navigationItem];
  v8 = [v7 searchController];

  if (v8)
  {
    v9 = [v8 searchBar];

    [v9 setEnabled_];
  }
}

void sub_1D67B7400(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections;
  *(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections) = a1;

  [*(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView) reloadData];
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections);
  v5 = *(v2 + v3);
  swift_beginAccess();

  sub_1D6A562C0(v4, v5);
  swift_endAccess();

  sub_1D67B74CC();
}

void sub_1D67B74CC()
{
  v1 = sub_1D67B70FC();
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection);
  swift_beginAccess();
  [v1 setEnabled_];

  if (*(*v2 + 16))
  {
    sub_1D7263D4C();

    v3 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v3);

    MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73D4EA0);

    sub_1D725B32C();
  }
}

id sub_1D67B7618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_coverViewManager;
  sub_1D725D7AC();
  swift_allocObject();
  *&v4[v10] = sub_1D725D79C();
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections] = MEMORY[0x1E69E7CC0];
  v12 = &v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter];
  v13 = sub_1D614F964();
  v14 = MEMORY[0x1E69E7CD0];
  *v12 = v13;
  v12[1] = v14;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections] = v11;
  v15 = &v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection];
  *v15 = v14;
  *(v15 + 1) = v14;
  *(v15 + 2) = v14;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_editor] = a1;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_request] = a2;
  type metadata accessor for DebugNewsroomService();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  type metadata accessor for DebugFormatUploadDataSource();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v16;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_dataSource] = v17;
  *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_diffViewController] = a3;
  v19.receiver = v4;
  v19.super_class = ObjectType;

  return objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1D67B77E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D725FB0C();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v71 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D725FB1C();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v6);
  v69 = (v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for FormatVersioningModeSelection(0);
  *&v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9).n128_u64[0];
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v0;
  v75.super_class = ObjectType;
  v68[3] = ObjectType;
  objc_msgSendSuper2(&v75, sel_viewDidLoad, v10);
  v13 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView];
  v14 = objc_opt_self();
  v15 = [v14 systemBackgroundColor];
  [v13 setBackgroundColor_];

  [v13 setDelegate_];
  [v13 setDataSource_];
  [v13 setAlwaysBounceVertical_];
  [v13 setAllowsMultipleSelectionDuringEditing_];
  v16 = [v14 secondaryLabelColor];
  [v13 setTintColor_];

  v17 = [v13 topEdgeEffect];
  v18 = objc_opt_self();
  v19 = [v18 hardStyle];
  [v17 setStyle_];

  v20 = [v13 bottomEdgeEffect];
  v21 = [v18 hardStyle];
  [v20 setStyle_];

  v22 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v13 setTableFooterView_];

  type metadata accessor for SubtitleTableViewCell();
  sub_1D7262DAC();
  type metadata accessor for DebugFormatUploadEntryTableViewCell();
  sub_1D7262DAC();
  type metadata accessor for DebugFormatUploadHiddenTableViewCell();
  sub_1D7262DAC();
  type metadata accessor for DebugJournalHeaderView();
  sub_1D7262D9C();
  [v13 setEditing:1 animated:0];
  [v13 setAllowsFocusDuringEditing_];
  result = [v1 view];
  if (result)
  {
    v24 = result;
    [result addSubview_];

    v25 = [v1 navigationItem];
    v26 = sub_1D726203C();
    [v25 setTitle_];

    v27 = [v1 navigationItem];
    sub_1D5B66F44(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v68[1] = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D72816C0;
    *(v29 + 32) = sub_1D67B84C8();
    v68[2] = sub_1D5B5A498(0, &qword_1EDF04590);
    v30 = sub_1D726265C();

    [v27 setLeftBarButtonItems_];

    v31 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
    [v31 setSearchResultsUpdater_];
    [v31 setObscuresBackgroundDuringPresentation_];
    [v31 setHidesNavigationBarDuringPresentation_];
    v32 = [v31 searchBar];
    v33 = [v14 systemBlueColor];
    [v32 setTintColor_];

    v34 = [v31 searchBar];
    v35 = sub_1D726203C();
    [v34 setPlaceholder_];

    v36 = [v31 searchBar];
    v37 = [v36 searchTextField];

    [v37 setAutocorrectionType_];
    v38 = [v31 searchBar];
    v39 = [v38 searchTextField];

    [v39 setAutocapitalizationType_];
    v40 = [v31 searchBar];
    v41 = sub_1D726203C();
    v42 = objc_opt_self();
    v43 = [v42 systemImageNamed_];

    [v40 setImage:v43 forSearchBarIcon:0 state:0];
    v44 = [v31 searchBar];
    [v44 setShowsCancelButton_];

    v45 = [v1 navigationItem];
    [v45 setSearchController_];

    v46 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];

    sub_1D725972C();

    v47 = sub_1D67BE97C(v12);
    v68[0] = v47;
    v49 = v48;
    sub_1D67BF78C(v12, type metadata accessor for FormatVersioningModeSelection);
    [v46 setAttributedText_];
    [v46 setNumberOfLines_];
    type metadata accessor for DebugFormatBarButtonItem();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];
    [v51 _setPrefersNoPlatter_];
    v52 = sub_1D67B70FC();
    [v52 setEnabled_];

    v53 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem;
    v54 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem];
    v55 = [v14 systemBlueColor];
    [v54 setTintColor_];

    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1D72EC970;
    v57 = sub_1D726203C();
    v58 = [v42 systemImageNamed_];

    v59 = [objc_allocWithZone(ObjCClassFromMetadata) initWithImage:v58 style:0 target:v1 action:sel_doTocWithSender_];
    *(v56 + 32) = v59;
    *(v56 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) initWithBarButtonSystemItem:5 target:0 action:0];
    *(v56 + 48) = v51;
    v60 = [objc_allocWithZone(ObjCClassFromMetadata) initWithBarButtonSystemItem:5 target:0 action:0];
    v61 = *&v1[v53];
    *(v56 + 56) = v60;
    *(v56 + 64) = v61;
    v62 = v61;
    v63 = sub_1D726265C();

    [v1 setToolbarItems_];

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725B33C();

    sub_1D725B2EC();

    sub_1D725D78C();
    v64 = v69;
    static CoverView.loading.getter(v69);
    v66 = v73;
    v65 = v74;
    v67 = v71;
    (*(v73 + 104))(v71, *MEMORY[0x1E69D8850], v74);
    sub_1D725D77C();

    (*(v66 + 8))(v67, v65);
    return (*(v70 + 8))(v64, v72);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D67B84C8()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(sub_1D725E86C());
  v3 = sub_1D725E85C();
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 secondaryLabelColor];
  [v5 setTintColor_];

  return v5;
}

void sub_1D67B85E0()
{
  swift_getObjectType();
  [*(*(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_editor) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_uploaderOperationQueue) cancelAllOperations];
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_diffViewController);
  *(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff) = 0;

  sub_1D724540C();
  sub_1D724540C();
  sub_1D6BBC3F8();
  sub_1D6BBC3F8();
  [*(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_changeSetLabel) setAttributedText_];
  sub_1D67BC630(MEMORY[0x1E69E7CC0]);

  sub_1D725B31C();

  if ((v7 & 1) == 0)
  {
    v2 = sub_1D67BC9A8(v0);
    MEMORY[0x1EEE9AC00](v2, v3);
    sub_1D725BDCC();

    v4 = sub_1D725B92C();
    sub_1D5B66F44(0, &unk_1EC88B970, &type metadata for DebugFormatUploadSection, MEMORY[0x1E69E62F8]);
    sub_1D725BA8C();

    sub_1D5B5A498(0, &qword_1EDF1AA30);
    v5 = sub_1D726308C();
    sub_1D725BAAC();

    v6 = sub_1D726308C();
    sub_1D725BADC();
  }
}

uint64_t sub_1D67B8A58()
{
  sub_1D5B5A498(0, &qword_1EC885090);
  sub_1D5B66F44(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D728AF30;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D72816D0;
  sub_1D5B5A498(0, &qword_1EDF04350);

  *(v1 + 32) = sub_1D726375C();

  *(v1 + 40) = sub_1D726375C();
  *(v0 + 32) = sub_1D726340C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D72816D0;

  *(v2 + 32) = sub_1D726375C();

  *(v2 + 40) = sub_1D726375C();
  *(v0 + 40) = sub_1D726340C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D72816D0;

  *(v3 + 32) = sub_1D726375C();

  *(v3 + 40) = sub_1D726375C();
  *(v0 + 48) = sub_1D726340C();
  return sub_1D72633FC();
}

void sub_1D67B8E58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();

    sub_1D5B886D0(v2);
    swift_endAccess();
    [*&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView] reloadData];
    sub_1D67B74CC();
  }
}

void sub_1D67B8EFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection);
    v2 = Strong;
    swift_beginAccess();
    sub_1D6836478(*v1);
    swift_endAccess();
    [*&v2[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView] reloadData];
    sub_1D67B74CC();
  }
}

void sub_1D67B8F9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();

    sub_1D5B886D0(v2);
    swift_endAccess();
    [*&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView] reloadData];
    sub_1D67B74CC();
  }
}

void sub_1D67B904C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection;
    v2 = Strong;
    swift_beginAccess();
    sub_1D6836478(*(v1 + 8));
    swift_endAccess();
    [*&v2[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView] reloadData];
    sub_1D67B74CC();
  }
}

void sub_1D67B90F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
    v3 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
    v4 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter + 8);
    v11 = v4;
    v5 = *(v4 + 16);

    if (v5)
    {
      sub_1D62D05C8(byte_1F50F8E28, &v10);
      sub_1D62D05C8(byte_1F50F8E29, &v10);
      sub_1D62D05C8(byte_1F50F8E2A, &v10);
      sub_1D62D05C8(byte_1F50F8E2B, &v10);
      sub_1D62D05C8(byte_1F50F8E2C, &v10);
      sub_1D62D05C8(byte_1F50F8E2D, &v10);
      sub_1D62D05C8(byte_1F50F8E2E, &v10);
      v6 = v11;
    }

    else
    {
      v6 = v4;
    }

    *v2 = v3;
    v2[1] = v6;

    v7 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections];

    sub_1D67BDC74(v3, v6, v7);
    v9 = v8;

    sub_1D67B7400(v9);
  }
}

void sub_1D67B9280()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
    v2 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
    v9 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter + 8);
    v3 = Strong;

    sub_1D5FEFBD0(&v8, byte_1F50F8E28);
    sub_1D5FEFBD0(&v8, byte_1F50F8E29);
    sub_1D5FEFBD0(&v8, byte_1F50F8E2A);
    sub_1D5FEFBD0(&v8, byte_1F50F8E2B);
    sub_1D5FEFBD0(&v8, byte_1F50F8E2C);
    sub_1D5FEFBD0(&v8, byte_1F50F8E2D);
    sub_1D5FEFBD0(&v8, byte_1F50F8E2E);
    v4 = v9;
    *v1 = v2;
    v1[1] = v4;

    v5 = *&v3[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections];

    sub_1D67BDC74(v2, v4, v5);
    v7 = v6;

    sub_1D67B7400(v7);
  }
}

void sub_1D67B9544()
{
  v1 = v0;

  v3 = sub_1D67BD940(v2, v1);

  v4 = objc_allocWithZone(type metadata accessor for DebugFormatUploadConfirmViewController());

  v6 = sub_1D5F17A2C(v5, v3);

  *&v6[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_delegate + 8] = &off_1F518C728;
  swift_unknownObjectWeakAssign();
  v7 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
  [v7 setModalPresentationStyle_];
  [v7 setModalInPresentation_];
  [v1 presentViewController:v7 animated:1 completion:0];
}

void sub_1D67B9680(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 24);
  v32 = MEMORY[0x1E69E7CC0];
  v5 = *(v4 + 16);
  v31 = a2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection;
  swift_beginAccess();
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    v27 = MEMORY[0x1E69E7CC0];
    v28 = v4 + 32;
    v29 = v5;
    v30 = v4;
    while (1)
    {
      while (1)
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
          return;
        }

        v8 = (v7 + 16 * v6++);
        if (!v8[8])
        {
          break;
        }

LABEL_4:
        if (v6 == v5)
        {
          goto LABEL_40;
        }
      }

      v9 = *v8;
      v10 = *(v31 + 16);
      v11 = *(*v8 + 16);
      v12 = *(v11 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      v13 = 0x7972617262694CLL;
      if (v12 != 5)
      {
        v13 = 0x756F72676B636142;
      }

      v14 = 0xE700000000000000;
      v15 = 0xEA0000000000646ELL;
      if (v12 == 5)
      {
        v15 = 0xE700000000000000;
      }

      v16 = 0x6C6C6177796150;
      if (v12 != 3)
      {
        v16 = 0x656D656854;
        v14 = 0xE500000000000000;
      }

      if (*(v11 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 4u)
      {
        v13 = v16;
        v15 = v14;
      }

      v17 = 0x726564616548;
      if (v12 != 1)
      {
        v17 = 0x7265746F6F46;
      }

      if (!*(v11 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
      {
        v17 = 0x74756F79614CLL;
      }

      if (*(v11 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 2u)
      {
        v18 = v17;
      }

      else
      {
        v18 = v13;
      }

      if (*(v11 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 2u)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v19 = v15;
      }

      sub_1D67BF4AC(v9, 0);
      sub_1D67BF4AC(v9, 0);

      MEMORY[0x1DA6F9910](v18, v19);

      MEMORY[0x1DA6F9910](24415, 0xE200000000000000);
      MEMORY[0x1DA6F9910](*(v11 + 16), *(v11 + 24));
      if (!*(v10 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v20 = sub_1D7264A5C(), v21 = -1 << *(v10 + 32), v22 = v20 & ~v21, ((*(v10 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0))
      {
LABEL_3:
        sub_1D67BE408(v9, 0);

        sub_1D67BE408(v9, 0);
        v5 = v29;
        v4 = v30;
        v7 = v28;
        goto LABEL_4;
      }

      v23 = ~v21;
      while (1)
      {
        v24 = (*(v10 + 48) + 16 * v22);
        v25 = !*v24 && v24[1] == 0xE000000000000000;
        if (v25 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v10 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_1D67BE408(v9, 0);
      MEMORY[0x1DA6F9CE0]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v27 = v32;
      v5 = v29;
      v4 = v30;
      v7 = v28;
      if (v6 == v29)
      {
        goto LABEL_40;
      }
    }
  }

  v27 = v3;
LABEL_40:
  *a3 = v27;
}

void sub_1D67B9A68(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1D67BF4D4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D67BF4D4(0, &qword_1EC880490, sub_1D5EA74B8, v2);
  sub_1D5EA74B8();
  v5 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 72);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7279960;
  v8 = sub_1D726203C();
  v75 = objc_opt_self();
  v9 = [v75 systemImageNamed_];

  if (!v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v69 = v7;
  v70 = inited;
  v68 = a1;
  v10 = v7 + v5;
  v74 = objc_opt_self();
  v11 = [v74 configurationWithPointSize_];
  v12 = [v9 imageWithConfiguration_];

  v73 = objc_opt_self();
  v13 = [v73 systemPinkColor];
  v14 = type metadata accessor for FormatInspectionItem(0);
  v15 = (v10 + *(v14 + 24));
  *v15 = v12;
  v15[1] = v13;
  v16 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  v72 = *(*(v16 - 8) + 56);
  v72(v15, 0, 1, v16);
  *v10 = xmmword_1D72EC980;
  *(v10 + 16) = 0xD000000000000063;
  *(v10 + 24) = 0x80000001D73D4EE0;
  v17 = v10 + *(v14 + 28);
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = -1;
  v18 = *(*(v14 - 8) + 56);
  v18(v10, 0, 1, v14);
  v19 = sub_1D726203C();
  v20 = [v75 systemImageNamed_];

  if (!v20)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = v10 + v6;
  v22 = [v74 configurationWithPointSize_];
  v23 = [v20 imageWithConfiguration_];

  v24 = [v73 systemGreenColor];
  v25 = (v10 + v6 + *(v14 + 24));
  *v25 = v23;
  v25[1] = v24;
  swift_storeEnumTagMultiPayload();
  v72(v25, 0, 1, v16);
  *v21 = xmmword_1D72EC990;
  *(v21 + 16) = 0xD00000000000005BLL;
  *(v21 + 24) = 0x80000001D73D4F50;
  v26 = v10 + v6 + *(v14 + 28);
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = -1;
  v18(v10 + v6, 0, 1, v14);
  v27 = sub_1D726203C();
  v28 = [v75 systemImageNamed_];

  if (!v28)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v29 = v10 + 2 * v6;
  v30 = [v74 configurationWithPointSize_];
  v31 = [v28 imageWithConfiguration_];

  v32 = [v73 systemBlueColor];
  v33 = (v29 + *(v14 + 24));
  *v33 = v31;
  v33[1] = v32;
  swift_storeEnumTagMultiPayload();
  v72(v33, 0, 1, v16);
  *v29 = xmmword_1D72B7890;
  *(v29 + 16) = 0xD00000000000003CLL;
  *(v29 + 24) = 0x80000001D73D4FB0;
  v34 = v29 + *(v14 + 28);
  *v34 = 0;
  *(v34 + 8) = 0;
  *(v34 + 16) = -1;
  v18(v29, 0, 1, v14);
  v35 = sub_1D726203C();
  v36 = [v75 systemImageNamed_];

  if (!v36)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v37 = v10 + 3 * v6;
  v38 = [v74 configurationWithPointSize_];
  v39 = [v36 imageWithConfiguration_];

  v40 = [v73 systemPurpleColor];
  v41 = (v37 + *(v14 + 24));
  *v41 = v39;
  v41[1] = v40;
  swift_storeEnumTagMultiPayload();
  v72(v41, 0, 1, v16);
  *v37 = xmmword_1D72EC9A0;
  *(v37 + 16) = 0xD000000000000052;
  *(v37 + 24) = 0x80000001D73D4FF0;
  v42 = v37 + *(v14 + 28);
  *v42 = 0;
  *(v42 + 8) = 0;
  *(v42 + 16) = -1;
  v18(v37, 0, 1, v14);
  v43 = sub_1D726203C();
  v44 = [v75 systemImageNamed_];

  if (!v44)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v45 = v10 + 4 * v6;
  v46 = [v74 configurationWithPointSize_];
  v47 = [v44 imageWithConfiguration_];

  v48 = [v73 systemRedColor];
  v49 = (v45 + *(v14 + 24));
  *v49 = v47;
  v49[1] = v48;
  swift_storeEnumTagMultiPayload();
  v72(v49, 0, 1, v16);
  *v45 = xmmword_1D72EC9B0;
  *(v45 + 16) = 0xD000000000000062;
  *(v45 + 24) = 0x80000001D73D5050;
  v50 = v45 + *(v14 + 28);
  *v50 = 0;
  *(v50 + 8) = 0;
  *(v50 + 16) = -1;
  v18(v45, 0, 1, v14);
  sub_1D6795150(0, 0xE000000000000000, 0, 0, v69, v77);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v70[7] = &type metadata for FormatInspectionGroup;
  v70[8] = &off_1F518B2C0;
  v51 = swift_allocObject();
  v70[4] = v51;
  *(v51 + 48) = v78;
  v52 = v77[1];
  *(v51 + 16) = v77[0];
  *(v51 + 32) = v52;
  v53 = sub_1D7073500(v70);
  swift_setDeallocating();
  sub_1D67BF78C((v70 + 4), sub_1D5E4F358);
  v54 = *&v71[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_editor];
  v55 = sub_1D70732C4(v53);

  v56 = type metadata accessor for DebugFormatInspectorPaneViewController();
  v57 = objc_allocWithZone(v56);
  v57[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoPreferredContentSize] = 1;
  v57[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoDismissOnLayoutChange] = 1;
  *&v57[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredArrowDirections] = 4;
  *&v57[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredSize] = xmmword_1D72EC9C0;
  v58 = &v57[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filterTerm];
  *v58 = 0;
  v58[1] = 0xE000000000000000;
  v59 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView;
  *&v57[v59] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v57[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_contentSizeObserver] = 0;
  *&v57[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_editor] = v54;
  *&v57[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_groups] = v55;
  *&v57[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups] = v55;
  *&v57[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_image] = 0;
  v76.receiver = v57;
  v76.super_class = v56;

  v60 = objc_msgSendSuper2(&v76, sel_initWithNibName_bundle_, 0, 0);
  [v60 setTitle_];
  v61 = [v60 navigationItem];
  v62 = sub_1D726203C();
  [v61 setTitle_];

  v63 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
  v64 = v63;
  [v64 setModalPresentationStyle_];
  v65 = [v64 popoverPresentationController];
  if (v65)
  {
    v66 = v65;
    [v65 setBarButtonItem_];
  }

  v67 = [v64 popoverPresentationController];

  if (v67)
  {
    [v67 setPermittedArrowDirections_];
  }

  [v71 presentViewController:v64 animated:1 completion:0];
}

unint64_t sub_1D67BA6B8()
{
  v1 = v0;
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
  if (result >= *(v3 + 16))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = *(v3 + 32 * result + 56);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (result < *(v4 + 16))
  {
    v5 = v4 + 16 * result;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    sub_1D67BF4AC(v6, *(v5 + 40));

    if (v7)
    {
      if (v7 != 1)
      {
        type metadata accessor for SubtitleTableViewCell();
        v8 = sub_1D7262D8C();
        v46 = [v8 textLabel];
        if (v46)
        {
          v47 = v46;
          sub_1D5EE763C(v6);
          v48 = sub_1D726203C();

          [v47 setText_];
        }

        v49 = [v8 textLabel];
        if (v49)
        {
          v50 = v49;
          v51 = [objc_opt_self() systemFontOfSize_];
          [v50 setFont_];
        }

        v52 = [v8 textLabel];
        if (v52)
        {
          v53 = v52;
          v54 = [objc_opt_self() labelColor];
          [v53 setTextColor_];
        }

        v55 = [v8 textLabel];
        if (v55)
        {
          v56 = v55;
          [v55 setNumberOfLines_];
        }

        v57 = [v8 detailTextLabel];
        if (v57)
        {
          v58 = v57;
          [v57 setText_];
        }

        [v8 setSelectionStyle_];
        sub_1D67BE408(v6, 2);

        return v8;
      }

      type metadata accessor for DebugFormatUploadHiddenTableViewCell();

      v8 = sub_1D7262D8C();
      v9 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
      [v9 setAlignment_];
      sub_1D67BF4D4(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7279970;
      v11 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      v12 = objc_opt_self();
      v13 = *MEMORY[0x1E69DB970];
      v14 = v11;
      v15 = [v12 systemFontOfSize:17.0 weight:v13];
      v16 = sub_1D5B5A498(0, &qword_1EDF1A720);
      *(inited + 40) = v15;
      v17 = *MEMORY[0x1E69DB650];
      *(inited + 64) = v16;
      *(inited + 72) = v17;
      v18 = objc_opt_self();
      v19 = v17;
      v20 = [v18 systemBlueColor];
      v21 = sub_1D5B5A498(0, qword_1EDF1A6A0);
      *(inited + 80) = v20;
      v22 = *MEMORY[0x1E69DB688];
      *(inited + 104) = v21;
      *(inited + 112) = v22;
      *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840);
      *(inited + 120) = v9;
      v23 = v22;
      v24 = v9;
      sub_1D5C09CEC(inited);
      swift_setDeallocating();
      sub_1D5C09DD4();
      swift_arrayDestroy();
      v25 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v26 = sub_1D726203C();
      type metadata accessor for Key(0);
      sub_1D5C09E68();
      v27 = sub_1D7261D2C();

      v28 = [v25 initWithString:v26 attributes:v27];

      [*&v8[OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_button] setAttributedTitle:v28 forState:0];
      v29 = *&v8[OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_onTap];
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = v6;
      v32 = v29;
      v33 = sub_1D725F63C();

      sub_1D67BE408(v6, 1);
    }

    else
    {
      type metadata accessor for DebugFormatUploadEntryTableViewCell();
      v8 = sub_1D7262D8C();
      v34 = [v8 textLabel];
      if (v34)
      {
        v35 = v34;
        v36 = sub_1D5DF5E68();
        [v35 setAttributedText_];
      }

      v37 = [v8 textLabel];
      if (v37)
      {
        v38 = v37;
        [v37 setNumberOfLines_];
      }

      v39 = [v8 detailTextLabel];
      if (v39)
      {
        v40 = v39;
        [v39 setNumberOfLines_];
      }

      v41 = [v8 detailTextLabel];
      if (v41)
      {
        v42 = v41;
        v43 = sub_1D5DF6328();
        [v42 setAttributedText_];
      }

      v44 = *&v6[OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_diff];
      v8[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_showDiff] = v44 != 0;
      if (v44)
      {
        v45 = *&v8[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_diffButton];
      }

      else
      {
        v45 = 0;
      }

      [v8 setEditingAccessoryView_];

      v8[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_isDiffSelected] = sub_1D67BAEC8(v1, v6) & 1;
      sub_1D6716D88();
      v59 = *&v8[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_onDiffTap];
      v60 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v61 = swift_allocObject();
      *(v61 + 16) = v60;
      *(v61 + 24) = v6;
      sub_1D67BF4AC(v6, 0);
      v32 = v59;
      v62 = sub_1D725F63C();
      sub_1D67BE408(v6, 0);
    }

    return v8;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1D67BAEC8(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_diffViewController) + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff))
  {

    v3 = sub_1D5E2FD70();
    v5 = v4;
    if (*(a2 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_diff))
    {
      if (v3 == sub_1D5E2FD70() && v5 == v6)
      {
        v8 = 1;
      }

      else
      {
        v8 = sub_1D72646CC();
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1D67BAFAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7258DBC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(a2 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_diff);
    if (v10)
    {
      v11 = *&Strong[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_diffViewController];
      *&v11[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff] = v10;
      swift_retain_n();
      v12 = v11;

      sub_1D5F5A858(v10);

      v13 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView;
      v14 = [*&v9[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView] indexPathsForSelectedRows];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1D726267C();
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }

      [*&v9[v13] reloadData];
      v17 = *(v16 + 16);
      if (v17)
      {
        v30[2] = v10;
        v31 = v13;
        v19 = *(v4 + 16);
        v18 = v4 + 16;
        v32 = v19;
        v20 = *(v18 + 64);
        v21 = v3;
        v30[1] = v16;
        v22 = v16 + ((v20 + 32) & ~v20);
        v23 = *(v18 + 56);
        v24 = (v18 - 8);
        do
        {
          v32(v7, v22, v21);
          v25 = *&v9[v31];
          v26 = v9;
          v27 = v18;
          v28 = v25;
          v29 = sub_1D7258D4C();
          (*v24)(v7, v21);
          [v28 selectRowAtIndexPath:v29 animated:0 scrollPosition:0];

          v18 = v27;
          v9 = v26;

          v22 += v23;
          --v17;
        }

        while (v17);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D67BB244(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_editor);
    v5 = Strong;
    objc_allocWithZone(type metadata accessor for DebugFormatUploadHiddenContainerController());

    v6 = sub_1D6EFB958(v4, a2);

    v7 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];

    [v7 setModalPresentationStyle_];
    [v5 presentViewController:v7 animated:1 completion:0];
  }
}

void sub_1D67BB454(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  type metadata accessor for DebugJournalHeaderView();
  v5 = sub_1D7262D7C();
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemBlueColor];
  [v7 setTintColor_];

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
  if (*(v9 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = *(v9 + 32 * a2 + 32);

  v11 = [v7 textLabel];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D726203C();

    [v12 setText_];
  }

  if ((v10 - 7) > 1u)
  {
    v14 = OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel;
    v15 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter + 8);
    v16 = *&v7[OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel];

    sub_1D6184F28(v10, v15);

    v17 = sub_1D726203C();

    [v16 setText_];

    [*&v7[v14] setHidden_];
    v18 = sub_1D725D03C();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v10;
    v21 = sub_1D725F63C();
  }

  else
  {

    [*&v7[OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel] setHidden_];
  }
}

void sub_1D67BB804(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
    v6 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
    v12 = *(Strong + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter + 8);

    if (sub_1D6184F28(a2, v12))
    {
      sub_1D62D05C8(a2, &v11);
    }

    else
    {
      sub_1D5FEFBD0(&v11, a2);
    }

    v7 = v12;
    *v5 = v6;
    v5[1] = v7;

    v8 = *&v4[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections];

    sub_1D67BDC74(v6, v7, v8);
    v10 = v9;

    sub_1D67B7400(v10);
  }
}

unint64_t sub_1D67BBB3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v3 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
  if (result >= *(v7 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(v7 + 32 * result + 56);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result >= *(v8 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v9 = v8 + 16 * result;
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  sub_1D67BF4AC(v10, *(v9 + 40));

  if (v11)
  {
    sub_1D67BE408(v10, v11);
    v12 = sub_1D7258DBC();
    v13 = *(*(v12 - 8) + 56);
    v14 = v12;
    v15 = a2;
    v16 = 1;
  }

  else
  {
    sub_1D67BE408(v10, 0);
    v17 = sub_1D7258DBC();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a2, a1, v17);
    v13 = *(v18 + 56);
    v15 = a2;
    v16 = 0;
    v14 = v17;
  }

  return v13(v15, v16, 1, v14);
}

void sub_1D67BBED0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D7258DAC();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
  if (v6 >= *(v7 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v7 + 32 * v6 + 56);

  v9 = sub_1D7258D9C();
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 >= *(v8 + 16))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v10 = v8 + 16 * v9;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  sub_1D67BF4AC(v11, *(v10 + 40));

  if (v12)
  {
    if (v12 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    sub_1D67BE408(v11, v13);
  }

  else
  {
    v14 = v3 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection;
    swift_beginAccess();
    v15 = *(v14 + 16);

    v16 = sub_1D6E74418();
    v18 = sub_1D5BE240C(v16, v17, v15);

    v19 = sub_1D6E74418();
    if (v18)
    {
      sub_1D62CFA6C(v19, v20);
    }

    else
    {
      sub_1D5B860D0(&v26, v19, v20);
    }

    swift_endAccess();
    sub_1D67BF4D4(0, &qword_1EC88B958, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
    v21 = sub_1D7258DBC();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    (*(v22 + 16))(v24 + v23, a2, v21);
    v25 = sub_1D726265C();

    [a1 reloadRowsAtIndexPaths:v25 withRowAnimation:5];

    sub_1D67B74CC();
    sub_1D67BE408(v11, 0);
    sub_1D67BE408(v11, 0);
  }
}

uint64_t sub_1D67BC1C0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = sub_1D7258DBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v13 = a3;
  v14 = a1;
  a5(v13, v12);

  return (*(v9 + 8))(v12, v8);
}

void sub_1D67BC3CC(void *a1)
{
  v3 = sub_1D7257A4C();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 searchBar];
  v10 = [v9 text];

  if (v10)
  {
    v11 = sub_1D726207C();
    v13 = v12;

    v20[0] = v11;
    v20[1] = v13;
    sub_1D725795C();
    sub_1D5BF4D9C();
    sub_1D7263A4C();
    (*(v4 + 8))(v8, v3);
  }

  v14 = (v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
  v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter + 8);

  v16 = sub_1D614F964();
  *v14 = v16;
  v14[1] = v15;

  v17 = *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections);

  sub_1D67BDC74(v16, v15, v17);
  v19 = v18;

  sub_1D67B7400(v19);
}

void sub_1D67BC630(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D725FB0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725FB1C();
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v32 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = 0;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v15 = (a1 + 32 * v12);
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_19;
    }

    v17 = v15[7];
    ++v12;
    v15 += 4;
    if (*(v17 + 16))
    {
      v29 = v9;
      v30 = v8;
      v28 = *v15;
      v18 = v15[2];
      v27 = v15[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v14;
      v31 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6997FE4(0, *(v14 + 16) + 1, 1);
        v14 = v35;
      }

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D6997FE4((v20 > 1), v21 + 1, 1);
        v14 = v35;
      }

      *(v14 + 16) = v21 + 1;
      v22 = v14 + 32 * v21;
      *(v22 + 32) = v28;
      *(v22 + 40) = v27;
      *(v22 + 48) = v18;
      *(v22 + 56) = v17;
      v12 = v16;
      v8 = v30;
      v5 = v31;
      v9 = v29;
      goto LABEL_2;
    }
  }

  sub_1D725B31C();

  if (v34)
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  *(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections) = v14;

  sub_1D67B72BC();
  if (v13)
  {
    v24 = v32;
    v23 = v33;
    (*(v33 + 104))(v32, *MEMORY[0x1E69D8828], v9);
    v25 = MEMORY[0x1E69D8848];
  }

  else
  {
    v24 = v32;
    static CoverView.loading.getter(v32);
    v25 = MEMORY[0x1E69D8850];
    v23 = v33;
  }

  (*(v5 + 104))(v8, *v25, v4);
  sub_1D725D77C();
  (*(v5 + 8))(v8, v4);
  (*(v23 + 8))(v24, v9);
}

char *sub_1D67BC9A8(unint64_t a1)
{
  v2 = type metadata accessor for DebugFormatCacheFile();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DebugFormatCompilerResultEntry();
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v7);
  v69 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v70 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v72 = &v68 - v18;
  v19 = *(a1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_request);
  if (!v19)
  {

    sub_1D725B31C();

    v22 = v74;
LABEL_77:

    return v22;
  }

  if (v19 != 1)
  {
    if (v19 >> 62)
    {
      goto LABEL_84;
    }

    v32 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_20;
  }

  sub_1D725B31C();

  v20 = v74;

  v69 = *(v20 + 16);
  if (!v69)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_77;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v68 = v20;
LABEL_7:
  if (v21 >= *(v20 + 16))
  {
    goto LABEL_83;
  }

  v23 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  a1 = *(v73 + 72);
  v24 = v21 + 1;
  v25 = v20 + v23 + a1 * v21;
  v26 = v72;
  sub_1D67BF64C(v25, v72, type metadata accessor for DebugFormatCompilerResultEntry);
  v27 = 0;
  v19 = *(v26 + *(v71 + 24));
  v28 = *(v19 + 16);
  while (1)
  {
    if (v28 == v27)
    {
      sub_1D67BF78C(v72, type metadata accessor for DebugFormatCompilerResultEntry);
      goto LABEL_6;
    }

    if (v27 >= *(v19 + 16))
    {
      break;
    }

    sub_1D67BF64C(v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27++, v6, type metadata accessor for DebugFormatCacheFile);
    v12 = v6[24];
    sub_1D67BF78C(v6, type metadata accessor for DebugFormatCacheFile);
    if (v12)
    {
      sub_1D67BF724(v72, v70, type metadata accessor for DebugFormatCompilerResultEntry);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6998024(0, *(v22 + 16) + 1, 1);
        v22 = v74;
      }

      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      v19 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_1D6998024(v30 > 1, v31 + 1, 1);
        v22 = v74;
      }

      *(v22 + 16) = v19;
      sub_1D67BF724(v70, v22 + v23 + v31 * a1, type metadata accessor for DebugFormatCompilerResultEntry);
LABEL_6:
      v20 = v68;
      v21 = v24;
      if (v24 == v69)
      {
        goto LABEL_77;
      }

      goto LABEL_7;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v32 = sub_1D7263BFC();
LABEL_20:
    v33 = MEMORY[0x1E69E7CC0];
    if (v32)
    {
      v71 = a1;
      v76 = MEMORY[0x1E69E7CC0];
      result = sub_1D5BFC364(0, v32 & ~(v32 >> 63), 0);
      if (v32 < 0)
      {
        __break(1u);
        return result;
      }

      v35 = 0;
      v33 = v76;
      v72 = v19 & 0xC000000000000001;
      v36 = v12;
      v37 = v32;
      do
      {
        if (v72)
        {
          v38 = MEMORY[0x1DA6FB460](v35, v19);
        }

        else
        {
          v38 = *(v19 + 8 * v35 + 32);
        }

        v39 = *(v38 + 16);
        v74 = 0;
        v75 = 0xE000000000000000;
        v40 = *(v39 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
        if (v40 <= 2)
        {
          v41 = 0xE600000000000000;
          if (*(v39 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
          {
            if (v40 == 1)
            {
              v42 = 0x726564616548;
            }

            else
            {
              v42 = 0x7265746F6F46;
            }
          }

          else
          {
            v42 = 0x74756F79614CLL;
          }
        }

        else if (*(v39 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
        {
          if (v40 == 5)
          {
            v41 = 0xE700000000000000;
            v42 = 0x7972617262694CLL;
          }

          else
          {
            v42 = 0x756F72676B636142;
            v41 = 0xEA0000000000646ELL;
          }
        }

        else if (v40 == 3)
        {
          v41 = 0xE700000000000000;
          v42 = 0x6C6C6177796150;
        }

        else
        {
          v41 = 0xE500000000000000;
          v42 = 0x656D656854;
        }

        MEMORY[0x1DA6F9910](v42, v41);

        MEMORY[0x1DA6F9910](24415, 0xE200000000000000);
        MEMORY[0x1DA6F9910](*(v39 + 16), *(v39 + 24));

        v43 = v74;
        v44 = v75;
        v76 = v33;
        v46 = *(v33 + 16);
        v45 = *(v33 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1D5BFC364((v45 > 1), v46 + 1, 1);
          v33 = v76;
        }

        ++v35;
        *(v33 + 16) = v46 + 1;
        v47 = v33 + 16 * v46;
        *(v47 + 32) = v43;
        *(v47 + 40) = v44;
      }

      while (v37 != v35);
      v12 = v36;
      a1 = v71;
    }

    v48 = sub_1D5B86020(v33);

    sub_1D725B31C();

    v49 = v74;

    v72 = *(v49 + 16);
    if (!v72)
    {
      break;
    }

    v50 = 0;
    v19 = v48 + 56;
    v70 = MEMORY[0x1E69E7CC0];
    v71 = v49;
    while (v50 < *(v49 + 16))
    {
      a1 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v51 = *(v73 + 72);
      sub_1D67BF64C(v49 + a1 + v51 * v50, v12, type metadata accessor for DebugFormatCompilerResultEntry);
      v52 = *v12;
      v74 = 0;
      v75 = 0xE000000000000000;
      v53 = *(v52 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      if (v53 <= 2)
      {
        v54 = 0xE600000000000000;
        if (*(v52 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
        {
          if (v53 == 1)
          {
            v55 = 0x726564616548;
          }

          else
          {
            v55 = 0x7265746F6F46;
          }
        }

        else
        {
          v55 = 0x74756F79614CLL;
        }
      }

      else if (*(v52 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
      {
        if (v53 == 5)
        {
          v54 = 0xE700000000000000;
          v55 = 0x7972617262694CLL;
        }

        else
        {
          v55 = 0x756F72676B636142;
          v54 = 0xEA0000000000646ELL;
        }
      }

      else if (v53 == 3)
      {
        v54 = 0xE700000000000000;
        v55 = 0x6C6C6177796150;
      }

      else
      {
        v54 = 0xE500000000000000;
        v55 = 0x656D656854;
      }

      MEMORY[0x1DA6F9910](v55, v54);

      MEMORY[0x1DA6F9910](24415, 0xE200000000000000);
      MEMORY[0x1DA6F9910](*(v52 + 16), *(v52 + 24));
      v56 = v75;
      if (*(v48 + 16) && (v57 = v74, sub_1D7264A0C(), sub_1D72621EC(), v58 = sub_1D7264A5C(), v59 = -1 << *(v48 + 32), v60 = v58 & ~v59, ((*(v19 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0))
      {
        v61 = ~v59;
        while (1)
        {
          v62 = (*(v48 + 48) + 16 * v60);
          v63 = *v62 == v57 && v62[1] == v56;
          if (v63 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v60 = (v60 + 1) & v61;
          if (((*(v19 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        sub_1D67BF724(v12, v69, type metadata accessor for DebugFormatCompilerResultEntry);
        v64 = v70;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v76 = v64;
        if ((v65 & 1) == 0)
        {
          sub_1D6998024(0, *(v64 + 16) + 1, 1);
          v64 = v76;
        }

        v67 = *(v64 + 16);
        v66 = *(v64 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_1D6998024(v66 > 1, v67 + 1, 1);
          v64 = v76;
        }

        *(v64 + 16) = v67 + 1;
        v70 = v64;
        sub_1D67BF724(v69, v64 + a1 + v67 * v51, type metadata accessor for DebugFormatCompilerResultEntry);
      }

      else
      {
LABEL_45:

        sub_1D67BF78C(v12, type metadata accessor for DebugFormatCompilerResultEntry);
      }

      ++v50;
      v49 = v71;
      if (v50 == v72)
      {
        goto LABEL_79;
      }
    }
  }

  v70 = MEMORY[0x1E69E7CC0];
LABEL_79:

  return v70;
}

uint64_t sub_1D67BD314(uint64_t a1, uint64_t a2)
{

  sub_1D725972C();

  v3 = sub_1D6DF2510(a2);
  v6 = sub_1D6DE8450(v3, v5, v4 & 1, v8);

  return v6;
}

uint64_t sub_1D67BD3C4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *(a1 + 8);
  v19 = MEMORY[0x1E69E7CC0];
  if (*(v3 + 16))
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;

    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x7261206572656854, 0xEA00000000002065);
    v4 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v4);

    MEMORY[0x1DA6F9910](0xD00000000000002BLL, 0x80000001D73D50F0);
    sub_1D5B66F44(0, &qword_1EC88F1D0, &type metadata for DebugFormatUploadItem, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D7273AE0;
    *(v5 + 32) = v3;
    *(v5 + 40) = 1;
    v6 = sub_1D6994C7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1D6994C7C((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[32 * v8];
    v9[32] = 8;
    *(v9 + 5) = 0;
    *(v9 + 6) = 0xE000000000000000;
    *(v9 + 7) = v5;
    v19 = v6;
  }

  sub_1D5B66F44(0, &qword_1EC88B990, &type metadata for DebugFormatUploadSection, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7284F00;
  LOBYTE(v18[0]) = 0;

  sub_1D6A56C48(v11, v18, inited + 32);
  LOBYTE(v18[0]) = 1;

  sub_1D6A56C48(v12, v18, inited + 64);
  LOBYTE(v18[0]) = 2;

  sub_1D6A56C48(v13, v18, inited + 96);
  LOBYTE(v18[0]) = 3;

  sub_1D6A56C48(v14, v18, inited + 128);
  LOBYTE(v18[0]) = 6;

  sub_1D6A56C48(v15, v18, inited + 160);
  LOBYTE(v18[0]) = 4;

  sub_1D6A56C48(v16, v18, inited + 192);
  result = sub_1D69882C8(inited);
  *a2 = v19;
  return result;
}

uint64_t sub_1D67BD6A4(void *a1)
{
  sub_1D67BF4D4(0, &unk_1EC88B980, MEMORY[0x1E69D6788], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v18 - v4;
  v19 = a1;
  v6 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  v7 = sub_1D725B3BC();
  v8 = swift_dynamicCast();
  v9 = *(*(v7 - 8) + 56);
  if (!v8)
  {
    v9(v5, 1, 1, v7);
    sub_1D67BF6B4(v5, &unk_1EC88B980, MEMORY[0x1E69D6788]);
    goto LABEL_5;
  }

  v10 = *(v7 - 8);
  v9(v5, 0, 1, v7);
  v11 = (*(v10 + 88))(v5, v7);
  v12 = *MEMORY[0x1E69D6780];
  result = (*(v10 + 8))(v5, v7);
  if (v11 != v12)
  {
LABEL_5:
    v14 = MEMORY[0x1E69E6F90];
    sub_1D5B66F44(0, &qword_1EC88B990, &type metadata for DebugFormatUploadSection, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v18 = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = 7;
    sub_1D5B66F44(0, &qword_1EC88F1D0, &type metadata for DebugFormatUploadItem, v14);
    *(inited + 40) = 0;
    *(inited + 48) = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = v18;
    *(v16 + 32) = a1;
    *(v16 + 40) = 2;
    *(inited + 56) = v16;
    v17 = a1;
    sub_1D67BC630(inited);
    swift_setDeallocating();
    return sub_1D67BF5F8(inited + 32);
  }

  return result;
}

uint64_t sub_1D67BD940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = *(a1 + 16);
  if (!v31)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v30 = a1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = (v30 + 32 * v4);
    v8 = *(v7 + 2);
    v9 = *(v7 + 3);
    v10 = *(v7 + 1);
    v35[0] = *v7;
    v36 = v10;
    v37 = v8;
    v38 = v9;

    sub_1D67B9680(v35, a2, &v39);
    if (v3)
    {

      return v5;
    }

    v11 = v39;
    v12 = v39 >> 62;
    if (v39 >> 62)
    {
      v13 = sub_1D7263BFC();
    }

    else
    {
      v13 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v5 >> 62;
    if (v5 >> 62)
    {
      v29 = sub_1D7263BFC();
      v16 = v29 + v13;
      if (__OFADD__(v29, v13))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v33 = v13;
    if (result)
    {
      if (!v14)
      {
        v17 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_1D7263BFC();
      goto LABEL_16;
    }

    if (v14)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_1D7263DDC();
    v5 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v19 >> 1) - v18) < v33)
    {
      goto LABEL_38;
    }

    v21 = v17 + 8 * v18 + 32;
    if (v12)
    {
      if (v20 < 1)
      {
        goto LABEL_40;
      }

      sub_1D67BF4D4(0, &qword_1EC88B960, type metadata accessor for DebugFormatUploadEntry, MEMORY[0x1E69E62F8]);
      sub_1D67BF554();
      for (i = 0; i != v20; ++i)
      {
        v23 = sub_1D6D876E0(v34, i, v11);
        v25 = *v24;

        (v23)(v34, 0);
        *(v21 + 8 * i) = v25;
      }
    }

    else
    {
      type metadata accessor for DebugFormatUploadEntry();
      swift_arrayInitWithCopy();
    }

    v3 = 0;
    if (v33 >= 1)
    {
      v26 = *(v17 + 16);
      v27 = __OFADD__(v26, v33);
      v28 = v26 + v33;
      if (v27)
      {
        goto LABEL_39;
      }

      *(v17 + 16) = v28;
    }

LABEL_4:
    if (++v4 == v31)
    {
      return v5;
    }
  }

  result = sub_1D7263BFC();
  v20 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_1D67BDC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v69 = MEMORY[0x1E69E7CC0];
  v50 = *(a3 + 16);
  sub_1D6997FE4(0, v4, 0);
  v7 = 0;
  v51 = a3 + 32;
  v68 = a2 + 56;
  v56 = a1;
  v63 = a2;
  v64 = (a1 + 32);
  v8 = v69;
  do
  {
    v54 = v8;
    v55 = v7;
    v9 = (v51 + 32 * v7);
    v52 = *v9;
    v10 = *(v9 + 2);
    v53 = *(v9 + 1);
    v11 = *(v9 + 3);
    v12 = *(v11 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v60 = v12;
    if (!v12)
    {
      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_90;
    }

    v13 = 0;
    v59 = v11 + 32;
    v14 = MEMORY[0x1E69E7CC0];
    v57 = v11;
    v58 = v10;
    do
    {
      v62 = v14;
      while (1)
      {
        if (v13 >= *(v11 + 16))
        {
          __break(1u);
          return;
        }

        v15 = v59 + 16 * v13;
        v16 = *v15;
        v17 = *(v15 + 8);
        v66 = v13 + 1;
        v61 = v17;
        if (v17)
        {
          if (v17 == 1)
          {
          }

          else
          {
            v46 = v16;
          }

          goto LABEL_80;
        }

        if (!*(a2 + 16))
        {
          break;
        }

        v18 = *(v16[2] + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
        sub_1D7264A0C();

        sub_1D72621EC();

        v19 = sub_1D7264A5C();
        v20 = -1 << *(a2 + 32);
        v21 = v19 & ~v20;
        if (((*(v68 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_58;
        }

        v22 = ~v20;
        while (1)
        {
          v23 = *(*(a2 + 48) + v21);
          if (v23 <= 2)
          {
            break;
          }

          if (*(*(a2 + 48) + v21) > 4u)
          {
            if (v23 == 5)
            {
              v24 = 0xE700000000000000;
              v25 = 0x7972617262696CLL;
              if (v18 <= 2)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v25 = 0x756F72676B636162;
              v24 = 0xEA0000000000646ELL;
              if (v18 <= 2)
              {
                goto LABEL_42;
              }
            }
          }

          else if (v23 == 3)
          {
            v24 = 0xE700000000000000;
            v25 = 0x6C6C6177796170;
            if (v18 <= 2)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v24 = 0xE500000000000000;
            v25 = 0x656D656874;
            if (v18 <= 2)
            {
              goto LABEL_42;
            }
          }

LABEL_21:
          if (v18 == 5)
          {
            v26 = 0x7972617262696CLL;
          }

          else
          {
            v26 = 0x756F72676B636162;
          }

          v27 = 0xEA0000000000646ELL;
          if (v18 == 5)
          {
            v27 = 0xE700000000000000;
          }

          v28 = 0x6C6C6177796170;
          if (v18 != 3)
          {
            v28 = 0x656D656874;
          }

          v29 = 0xE500000000000000;
          if (v18 == 3)
          {
            v29 = 0xE700000000000000;
          }

          if (v18 <= 4)
          {
            v30 = v28;
          }

          else
          {
            v30 = v26;
          }

          if (v18 <= 4)
          {
            v31 = v29;
          }

          else
          {
            v31 = v27;
          }

          if (v25 == v30)
          {
            goto LABEL_49;
          }

LABEL_50:
          v33 = sub_1D72646CC();

          if (v33)
          {
            goto LABEL_77;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v68 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        if (!*(*(a2 + 48) + v21))
        {
          v24 = 0xE600000000000000;
          v25 = 0x74756F79616CLL;
          if (v18 <= 2)
          {
            goto LABEL_42;
          }

          goto LABEL_21;
        }

        if (v23 == 1)
        {
          v25 = 0x726564616568;
        }

        else
        {
          v25 = 0x7265746F6F66;
        }

        v24 = 0xE600000000000000;
        if (v18 > 2)
        {
          goto LABEL_21;
        }

LABEL_42:
        if (v18)
        {
          if (v18 == 1)
          {
            v32 = 0x726564616568;
          }

          else
          {
            v32 = 0x7265746F6F66;
          }

          v31 = 0xE600000000000000;
          if (v25 == v32)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        }

        v31 = 0xE600000000000000;
        if (v25 != 0x74756F79616CLL)
        {
          goto LABEL_50;
        }

LABEL_49:
        if (v24 != v31)
        {
          goto LABEL_50;
        }

LABEL_77:
        sub_1D67BE408(v16, 0);
        v13 = v66;
        v11 = v57;
        v10 = v58;
        v14 = v62;
        if (v66 == v60)
        {
          goto LABEL_90;
        }
      }

LABEL_58:
      v65 = *(v56 + 16);
      if (!v65)
      {
        goto LABEL_80;
      }

      v34 = *v64;
      v35 = *(*v64 + 16);
      if (!v35)
      {
        goto LABEL_80;
      }

      v36 = 1;
      while (2)
      {
        v67 = v36;

        v37 = 0;
        v38 = v34 + 40;
        v39 = v35 - 1;
        v40 = 1;
        while (2)
        {
          if (v40)
          {
            sub_1D5BF4D9C();

            if (sub_1D7263ABC())
            {

              goto LABEL_68;
            }

            v41 = v16[2] + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name;
            swift_beginAccess();
            if (*(v41 + 8))
            {
              sub_1D726210C();
              v42 = sub_1D7263ABC();

              if (v42)
              {
LABEL_68:
                if (v39 == v37)
                {

                  a2 = v63;
                  goto LABEL_80;
                }

                v40 = 1;
LABEL_62:
                ++v37;
                v38 += 16;
                if (v37 >= *(v34 + 16))
                {
                  __break(1u);
                  return;
                }

                continue;
              }
            }

            else
            {
            }
          }

          break;
        }

        if (v39 != v37)
        {
          v40 = 0;
          goto LABEL_62;
        }

        a2 = v63;
        if (v67 == v65)
        {
          goto LABEL_77;
        }

        v34 = v64[v67];
        v36 = v67 + 1;
        v35 = *(v34 + 16);
        if (v35)
        {
          continue;
        }

        break;
      }

LABEL_80:
      v14 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6998004(0, *(v62 + 16) + 1, 1);
        v14 = v62;
      }

      v13 = v66;
      v44 = *(v14 + 16);
      v43 = *(v14 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1D6998004((v43 > 1), v44 + 1, 1);
        v14 = v62;
      }

      *(v14 + 16) = v44 + 1;
      v45 = v14 + 16 * v44;
      *(v45 + 32) = v16;
      *(v45 + 40) = v61;
      v11 = v57;
      v10 = v58;
    }

    while (v66 != v60);
LABEL_90:
    swift_bridgeObjectRelease_n();

    v8 = v54;
    v48 = *(v54 + 16);
    v47 = *(v54 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_1D6997FE4((v47 > 1), v48 + 1, 1);
      v8 = v54;
    }

    *(v8 + 16) = v48 + 1;
    v49 = v8 + 32 * v48;
    *(v49 + 32) = v52;
    v7 = v55 + 1;
    *(v49 + 40) = v53;
    *(v49 + 48) = v10;
    *(v49 + 56) = v14;
  }

  while (v55 + 1 != v50);
}

void sub_1D67BE408(void *a1, char a2)
{
  switch(a2)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

void sub_1D67BE430()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_coverViewManager;
  sub_1D725D7AC();
  swift_allocObject();
  *(v1 + v3) = sub_1D725D79C();
  *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController____lazy_storage___nextBarButtonItem) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_sections) = MEMORY[0x1E69E7CC0];
  v5 = (v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filter);
  v6 = sub_1D614F964();
  v7 = MEMORY[0x1E69E7CD0];
  *v5 = v6;
  v5[1] = v7;
  *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections) = v4;
  v8 = (v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_selection);
  *v8 = v7;
  v8[1] = v7;
  v8[2] = v7;
  sub_1D726402C();
  __break(1u);
}

id sub_1D67BE55C(uint64_t a1, uint64_t a2, char a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v3 setAlignment_];
  sub_1D67BF4D4(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v6 = objc_opt_self();
  v36 = v5;
  v37 = v6;
  v7 = [v6 systemFontOfSize_];
  v8 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x1E69DB650];
  v35 = v8;
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = objc_opt_self();
  v33 = v9;
  v34 = v10;
  v11 = [v10 secondaryLabelColor];
  v12 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v11;
  v13 = *MEMORY[0x1E69DB688];
  v32 = v12;
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  v14 = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 144) = v14;
  *(inited + 120) = v3;
  v31 = v13;
  v15 = v3;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v17 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v18 = sub_1D7261D2C();

  v19 = [v16 initWithString:v17 attributes:v18];

  if (a3)
  {
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1D7279970;
    *(v20 + 32) = v36;
    v21 = *MEMORY[0x1E69DB958];
    v22 = v36;
    *(v20 + 40) = [v37 systemFontOfSize:10.0 weight:v21];
    *(v20 + 64) = v35;
    *(v20 + 72) = v33;
    v23 = v33;
    *(v20 + 80) = [v34 systemBlueColor];
    *(v20 + 104) = v32;
    *(v20 + 112) = v31;
    *(v20 + 144) = v14;
    *(v20 + 120) = v15;
    v24 = v31;
    v25 = v15;
    sub_1D5C09CEC(v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v27 = sub_1D726203C();
    v28 = sub_1D7261D2C();

    v29 = [v26 initWithString:v27 attributes:v28];

    [v19 appendAttributedString_];
  }

  return v19;
}