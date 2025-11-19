uint64_t sub_2191440D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219144118()
{
  result = qword_27CC16948;
  if (!qword_27CC16948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16948);
  }

  return result;
}

void sub_21914418C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_17Tm_2()
{

  return swift_deallocObject();
}

uint64_t sub_219144298()
{
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v1 = off_282A6EDF8[0];
  type metadata accessor for MagazineCategoryConfigService();
  return v1();
}

uint64_t sub_219144364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2191443C4()
{
  v0 = off_282A4D758;
  type metadata accessor for TagService();
  return v0();
}

uint64_t sub_219144454(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21914418C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2191444D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_219144534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21914459C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2191445EC()
{
  if (!qword_27CC16980)
  {
    sub_219144660(255, &qword_27CC16910, MEMORY[0x277D834F8]);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC16980);
    }
  }
}

void sub_219144660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2191446D8()
{
  result = qword_27CC16990;
  if (!qword_27CC16990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16990);
  }

  return result;
}

uint64_t _s7NewsUI222IssueLinkActionHandlerC6handle6action7trackery0A8Articles0dE0O_12AppAnalytics7TrackerCtF_0(uint64_t a1, uint64_t a2)
{
  v184 = a1;
  sub_2186E5554(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v163 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v168 = &v160 - v6;
  v166 = sub_219BDD534();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_219BDD4B4();
  v8 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v10 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_219BDE294();
  v176 = *(v177 - 8);
  v11 = MEMORY[0x28223BE20](v177);
  v170 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v173 = &v160 - v13;
  sub_2186E5554(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v174 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v161 = &v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v162 = (&v160 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v167 = &v160 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v169 = &v160 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v172 = &v160 - v24;
  v175 = v25;
  MEMORY[0x28223BE20](v23);
  v180 = &v160 - v26;
  v171 = type metadata accessor for WebLinkViewControllerType(0);
  MEMORY[0x28223BE20](v171);
  v179 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BDD434();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v160 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = sub_219BDB954();
  v182 = *(v181 - 8);
  v32 = MEMORY[0x28223BE20](v181);
  v178 = &v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v160 - v34;
  v36 = sub_219BDD0A4();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = (&v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    *v39 = 1802398060;
    v39[1] = 0xE400000000000000;
    (*(v37 + 104))(v39, *MEMORY[0x277CEAE40], v36);
    sub_219BDD204();
    (*(v37 + 8))(v39, v36);
  }

  v29[2](v31, v184, v28);
  v40 = (v29[11])(v31, v28);
  if (v40 == *MEMORY[0x277D2F978])
  {
    goto LABEL_4;
  }

  if (v40 == *MEMORY[0x277D2F968])
  {
    (v29[12])(v31, v28);
    sub_218DB63C8();
    v44 = v182;
    v45 = v178;
    v46 = v181;
    (*(v182 + 32))(v178, v31, v181);
    v47 = *(v44 + 16);
    v48 = v179;
    v47(v179, v45, v46);
    swift_storeEnumTagMultiPayload();
    v49 = *(v183 + 16);
    v50 = swift_allocBox();
    sub_218DB6434(v48, v51);
    v185 = v50;
    v52 = v50 | 0xB000000000000000;
    v53 = sub_219BDFA44();
    v54 = v180;
    (*(*(v53 - 8) + 56))(v180, 1, 1, v53);
    v198 = 0;
    v196 = 0u;
    v197 = 0u;
    v195 = 0;
    v193 = 0u;
    v194 = 0u;
    v192 = v49;
    sub_2187B14CC(&v193, &v187, &unk_280EE7DB0, &qword_280EE7DC0);
    if (!*(&v188 + 1))
    {
      sub_2187448D0(&v187, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v56 = qword_280ED32D8;
      v55 = qword_280ED32E0;
      v57 = qword_280ED32E8;

      sub_2188202A8(v55);
      goto LABEL_24;
    }

    sub_21875F93C(&v187, &v189);
    if (qword_280ED32D0 == -1)
    {
LABEL_8:
      v56 = qword_280ED32D8;
      v55 = qword_280ED32E0;
      v57 = qword_280ED32E8;

      sub_2188202A8(v55);
      __swift_destroy_boxed_opaque_existential_1(&v189);
LABEL_24:
      v186 = v52;
      v188 = 0u;
      v187 = 0u;
      v96 = v172;
      sub_2189B4E2C(v54, v172);
      sub_2187B14CC(&v196, &v189, &qword_280EE33A0, &qword_280EE33B0);
      v97 = (*(v174 + 80) + 24) & ~*(v174 + 80);
      v98 = (v175 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
      v99 = (v98 + 47) & 0xFFFFFFFFFFFFFFF8;
      v100 = swift_allocObject();
      *(v100 + 16) = 0;
      sub_218DB61E8(v96, v100 + v97, &qword_280EE8610, MEMORY[0x277D2DED0]);
      v101 = v100 + v98;
      v102 = v190;
      *v101 = v189;
      *(v101 + 16) = v102;
      *(v101 + 32) = v191;
      v103 = (v100 + v99);
      v104 = (v100 + ((v99 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v103 = 0;
      v103[1] = 0;
      *v104 = v56;
      v104[1] = v55;
      v104[2] = v57;

      sub_2188202A8(v55);
      sub_2186CF94C();
      sub_219146D64(&qword_280EE5A90, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v55);
      sub_2187448D0(&v193, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(&v196, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218DB6258(v180, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_218DB6700(v179);
      (*(v182 + 8))(v178, v46);
LABEL_25:
      sub_2187448D0(&v187, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F84F8);
    }

LABEL_50:
    swift_once();
    goto LABEL_8;
  }

  if (v40 == *MEMORY[0x277D2F960])
  {
    v180 = a2;
    (v29[12])(v31, v28);
    v54 = *v31;
    v184 = v31[1];
    sub_218DB635C();
    (*(v176 + 32))(v173, v31 + *(v58 + 48), v177);
    v179 = OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_issue;
    v52 = v183 + OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_issue;
    v59 = sub_219BDD754();
    v60 = 0;
    v61 = *(v59 + 16);
    v46 = (v8 + 8);
    while (1)
    {
      if (v61 == v60)
      {

        v111 = *(v182 + 56);
        v112 = v168;
        v113 = v181;
        v111(v168, 1, 1, v181);
        v114 = v164;
        sub_219BDD514();
        v115 = v183;
        *&v196 = *(v183 + 16);
        sub_2187B2C48();
        v117 = v116;
        v185 = swift_allocBox();
        v119 = v118;
        v120 = *(v117 + 48);
        sub_2187B2DA0();
        v122 = *(v121 + 48);
        v111(v112, 1, 1, v113);

        sub_219BDD894();
        sub_218DB6258(v112, &unk_280EE9D00, MEMORY[0x277CC9260]);
        *(v119 + v122) = MEMORY[0x277D84F90];
        *(v119 + v120) = &unk_282A25DD8;
        *&v193 = v185 | 2;
        v123 = swift_allocObject();
        *(v123 + 16) = v180;
        *(v123 + 24) = v115;
        sub_2186CF94C();
        sub_219146D64(&qword_280EE5A90, sub_2186CF94C);

        sub_219BEB4A4();

        sub_218932F9C(v193);

        (*(v165 + 8))(v114, v166);
        return (*(v176 + 8))(v173, v177);
      }

      if (v60 >= *(v59 + 16))
      {
        break;
      }

      (*(v8 + 16))(v10, v59 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v60, v185);
      v63 = sub_219BDD4A4();
      v52 = v64;
      if (v63 == v54 && v64 == v184)
      {

        (*v46)(v10, v185);
LABEL_17:

        v65 = v183;
        v66 = sub_219BDD744();
        *&v196 = *(v65 + 16);
        v67 = swift_allocObject();
        LOBYTE(v189) = 0;
        *(v67 + 16) = 0;
        *(v67 + 24) = 0;
        *(v67 + 40) = 0;
        *(v67 + 48) = 0;
        *(v67 + 32) = v66;
        *(v67 + 56) = 0;
        *(v67 + 63) = 0;
        *(v67 + 61) = 0;
        *(v67 + 57) = 0;
        *(v67 + 64) = MEMORY[0x277D84F90];
        v68 = v184;
        *(v67 + 88) = v54;
        *(v67 + 96) = v68;
        *(v67 + 104) = &unk_282A25DB0;
        *&v193 = v67 | 0x5000000000000006;
        v69 = swift_allocObject();
        *(v69 + 16) = v180;
        *(v69 + 24) = v65;
        sub_2186CF94C();
        sub_219146D64(&qword_280EE5A90, sub_2186CF94C);

        v70 = v66;

        sub_219BEB4A4();

        sub_218932F9C(v193);

        return (*(v176 + 8))(v173, v177);
      }

      ++v60;
      v62 = sub_219BF78F4();

      (*v46)(v10, v185);
      if (v62)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  if (v40 == *MEMORY[0x277D2F970])
  {
    v180 = a2;
    (v29[12])(v31, v28);
    sub_218DB62B4();
    v72 = v176;
    v73 = v170;
    v74 = v177;
    (*(v176 + 32))(v170, v31 + *(v71 + 64), v177);
    sub_219BDEA94();
    (*(v182 + 56))(v168, 1, 1, v181);
    v75 = MEMORY[0x277D84F90];
    sub_2187B3078(MEMORY[0x277D84F90]);
    v76 = sub_219BDEA44();
    v77 = *(v183 + 16);
    sub_2187B2C48();
    v79 = v78;
    v80 = swift_allocBox();
    v82 = v81;
    v83 = *(v79 + 48);
    sub_2187B2DA0();
    v85 = *(v84 + 48);
    sub_2187B3004();
    v87 = *(v86 + 48);
    *v82 = v76;
    (*(v72 + 16))(v82 + v87, v73, v74);
    sub_219BDD944();
    swift_storeEnumTagMultiPayload();
    *(v82 + v85) = v75;
    *(v82 + v83) = v75;
    v185 = v80;
    v88 = v80 | 2;
    v89 = sub_219BDFA44();
    v90 = v169;
    (*(*(v89 - 8) + 56))(v169, 1, 1, v89);
    v198 = 0;
    v196 = 0u;
    v197 = 0u;
    v195 = 0;
    v193 = 0u;
    v194 = 0u;
    v192 = v77;
    sub_2187B14CC(&v193, &v187, &unk_280EE7DB0, &qword_280EE7DC0);
    if (*(&v188 + 1))
    {
      sub_21875F93C(&v187, &v189);
      *&v187 = v80 | 2;

      v91 = sub_2194DA78C(&v189);
      v93 = v92;
      v95 = v94;
      __swift_destroy_boxed_opaque_existential_1(&v189);
    }

    else
    {

      sub_2187448D0(&v187, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v91 = qword_280ED32D8;
      v93 = qword_280ED32E0;
      v95 = qword_280ED32E8;

      sub_2188202A8(v93);
    }

    v138 = v180;
    v186 = v88;
    v184 = v76;
    if (v180)
    {
      v139 = sub_219BDD274();
      v140 = v138;
    }

    else
    {
      v140 = 0;
      v139 = 0;
      *&v188 = 0;
      *(&v187 + 1) = 0;
    }

    *&v187 = v140;
    *(&v188 + 1) = v139;
    v141 = v167;
    sub_2189B4E2C(v90, v167);
    sub_2187B14CC(&v196, &v189, &qword_280EE33A0, &qword_280EE33B0);
    v142 = (*(v174 + 80) + 24) & ~*(v174 + 80);
    v143 = (v175 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
    v144 = (v143 + 47) & 0xFFFFFFFFFFFFFFF8;
    v145 = swift_allocObject();
    *(v145 + 16) = v138;
    sub_218DB61E8(v141, v145 + v142, &qword_280EE8610, MEMORY[0x277D2DED0]);
    v146 = v145 + v143;
    v147 = v190;
    *v146 = v189;
    *(v146 + 16) = v147;
    *(v146 + 32) = v191;
    v148 = (v145 + v144);
    v149 = (v145 + ((v144 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v148 = 0;
    v148[1] = 0;
    *v149 = v91;
    v149[1] = v93;
    v149[2] = v95;
    swift_retain_n();

    sub_2188202A8(v93);
    sub_2186CF94C();
    sub_219146D64(&qword_280EE5A90, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v93);

    sub_2187448D0(&v193, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(&v196, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218DB6258(v169, &qword_280EE8610, MEMORY[0x277D2DED0]);
    (*(v176 + 8))(v170, v177);
    goto LABEL_25;
  }

  if (v40 == *MEMORY[0x277D2F958])
  {
    (v29[12])(v31, v28);
    v105 = a2;
    v106 = *v31;
    v107 = v31[1];
    v108 = v183;
    *&v196 = *(v183 + 16);
    v109 = swift_allocObject();
    *(v109 + 16) = v106;
    *(v109 + 24) = v107;
    *(v109 + 32) = MEMORY[0x277D84F90];
    *(v109 + 56) = 0x4000000000000000;
    *&v193 = v109 | 0x5000000000000000;
    v110 = swift_allocObject();
    *(v110 + 16) = v105;
    *(v110 + 24) = v108;
    sub_2186CF94C();
    sub_219146D64(&qword_280EE5A90, sub_2186CF94C);

    sub_219BEB4A4();

    sub_218932F9C(v193);
  }

  if (v40 != *MEMORY[0x277D2F950])
  {
    if (v40 == *MEMORY[0x277D2F948] || v40 == *MEMORY[0x277D2F940])
    {
LABEL_4:
      (v29[12])(v31, v28);
      v41 = v182;
      v42 = v181;
      (*(v182 + 32))(v35, v31, v181);
      __swift_project_boxed_opaque_existential_1((v183 + OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_urlHandler), *(v183 + OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_urlHandler + 24));
      sub_219BE6DC4();
      return (*(v41 + 8))(v35, v42);
    }

    sub_219BF7514();
    __break(1u);
    goto LABEL_45;
  }

  (v29[12])(v31, v28);
  v124 = *v31;
  v125 = v31[1];
  sub_218DB60E0();
  v127 = v163;
  sub_218DB61E8(v31 + *(v126 + 48), v163, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v29 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
  v128 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  swift_beginAccess();
  sub_218DB6168(v127, v29 + v128);
  swift_endAccess();
  v129 = *(v183 + 16);
  v130 = swift_allocObject();
  *(v130 + 16) = v124;
  *(v130 + 24) = v125;
  v131 = MEMORY[0x277D84F90];
  *(v130 + 32) = v29;
  *(v130 + 40) = v131;
  *(v130 + 48) = 1;
  *(v130 + 56) = 0u;
  *(v130 + 72) = 0u;
  *(v130 + 88) = 0;
  *(v130 + 96) = -1;
  a2 = v130 | 0x2000000000000006;
  v132 = sub_219BDFA44();
  v39 = v162;
  (*(*(v132 - 8) + 56))(v162, 1, 1, v132);
  v198 = 0;
  v196 = 0u;
  v197 = 0u;
  v195 = 0;
  v193 = 0u;
  v194 = 0u;
  v192 = v129;
  sub_2187B14CC(&v193, &v187, &unk_280EE7DB0, &qword_280EE7DC0);
  v185 = v29;
  if (!*(&v188 + 1))
  {
LABEL_45:
    v150 = v29;
    sub_2187448D0(&v187, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v136 = qword_280ED32D8;
    v135 = qword_280ED32E0;
    v137 = qword_280ED32E8;

    sub_2188202A8(v135);
    goto LABEL_48;
  }

  sub_21875F93C(&v187, &v189);
  v133 = qword_280ED32D0;
  v134 = v29;
  if (v133 != -1)
  {
    swift_once();
  }

  v136 = qword_280ED32D8;
  v135 = qword_280ED32E0;
  v137 = qword_280ED32E8;

  sub_2188202A8(v135);
  __swift_destroy_boxed_opaque_existential_1(&v189);
LABEL_48:
  v186 = a2;
  v188 = 0u;
  v187 = 0u;
  v151 = v161;
  sub_2189B4E2C(v39, v161);
  sub_2187B14CC(&v196, &v189, &qword_280EE33A0, &qword_280EE33B0);
  v152 = (*(v174 + 80) + 24) & ~*(v174 + 80);
  v153 = (v175 + v152 + 7) & 0xFFFFFFFFFFFFFFF8;
  v154 = (v153 + 47) & 0xFFFFFFFFFFFFFFF8;
  v155 = swift_allocObject();
  *(v155 + 16) = 0;
  sub_218DB61E8(v151, v155 + v152, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v156 = v155 + v153;
  v157 = v190;
  *v156 = v189;
  *(v156 + 16) = v157;
  *(v156 + 32) = v191;
  v158 = (v155 + v154);
  v159 = (v155 + ((v154 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v158 = 0;
  v158[1] = 0;
  *v159 = v136;
  v159[1] = v135;
  v159[2] = v137;

  sub_2188202A8(v135);
  sub_2186CF94C();
  sub_219146D64(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v135);

  sub_2187448D0(&v193, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(&v196, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218DB6258(v162, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_218DB6258(v163, &unk_280EE9D00, MEMORY[0x277CC9260]);
  sub_2187448D0(&v187, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F84F8);
}

uint64_t sub_21914699C(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (!a2)
  {
  }

  sub_219BDD274();

  sub_219BE1B94();
}

uint64_t IssueLinkActionHandler.deinit()
{

  v1 = OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_issue;
  v2 = sub_219BDEE34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_urlHandler);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t IssueLinkActionHandler.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_issue;
  v2 = sub_219BDEE34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_urlHandler);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IssueLinkActionHandler()
{
  result = qword_27CC169C0;
  if (!qword_27CC169C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219146C98()
{
  result = sub_219BDEE34();
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

uint64_t sub_219146D64(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_219146F2C()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_blueprintViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = [v1 view];
  if (result)
  {
    v7 = result;
    [result bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v6 setFrame_];
    sub_219BE8664();
    v16 = sub_219BE7BC4();

    sub_218807578();
    sub_218713968(&qword_280E90610, 255, sub_218807578);
    sub_219BF6C74();

    sub_219BE8664();
    v17 = sub_219BE7BC4();

    [v1 setContentScrollView:v17 forEdge:15];

    sub_219BF2394();
    v18 = sub_219BF2364();
    MEMORY[0x21CEC9110]();

    v19 = sub_219BF53D4();

    [v1 setTitle_];

    v20 = sub_219BF65B4();
    v21 = [v1 title];
    [v20 setTitle_];

    v22 = [v1 traitCollection];
    sub_2191495D4();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_218713968(&qword_27CC16A10, v23, type metadata accessor for SharedWithYouFeedViewController);
    sub_218713968(&qword_27CC16A18, v24, type metadata accessor for SharedWithYouFeedViewController);

    sub_219BEEA54();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2191472F8()
{
  v0 = sub_219BEDA44();
  MEMORY[0x28223BE20](v0);
  sub_219BEDA34();
  sub_218713968(&qword_280E92580, 255, MEMORY[0x277D31D00]);
  return sub_219BF1C54();
}

void sub_2191473EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_blueprintViewController);

    sub_219BE8664();
    v3 = sub_219BE7BC4();

    [v3 reloadData];
  }
}

id sub_2191475C4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE7C14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_viewWillAppear_, a1 & 1);
  result = [v2 view];
  if (result)
  {
    v10 = result;
    v11 = sub_219BF6C14();

    if (v11)
    {

      sub_219BE8664();
      v12 = sub_219BE7BC4();

      sub_219BF6C34();
    }

    swift_getObjectType();
    sub_219BE7544();
    sub_219BE5CC4();
    v20[1] = sub_219BE5CA4();
    v13 = [v2 title];
    if (v13)
    {
      v20[0] = v8;
      v14 = v6;
      v15 = v5;
      v16 = v13;
      v17 = sub_219BF5414();
      v19 = v18;

      v5 = v15;
      v6 = v14;
      v8 = v20[0];
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    *v8 = v17;
    v8[1] = v19;
    (*(v6 + 104))(v8, *MEMORY[0x277D6DCB0], v5);
    sub_219BE7C24();
    sub_218713968(&qword_280EE4E50, 255, MEMORY[0x277D6DCC8]);
    sub_219BE7514();
    (*(v6 + 8))(v8, v5);

    [*&v2[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_userInfo] markSharedWithYouAsViewed];
    return sub_2191478A4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2191478A4()
{
  sub_219BEAE34();
  sub_219BEE674();
  v5 = 0;
  v6 = sub_219BEE664();
  v3 = 0u;
  v4 = 0u;
  sub_219BE6A74();

  sub_2191497B4(&v3, sub_219149814);

  sub_219BEAE44();
  v0 = sub_219BEE664();
  v5 = 0;
  v6 = v0;
  v3 = 0u;
  v4 = 0u;
  sub_219BE6A74();

  sub_2191497B4(&v3, sub_219149814);

  sub_219BEAE54();
  v1 = sub_219BEE664();
  v5 = 0;
  v6 = v1;
  v3 = 0u;
  v4 = 0u;
  sub_219BE6A74();

  sub_2191497B4(&v3, sub_219149814);
}

id sub_219147A60(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (v5)
    {
      v6 = [v5 windowScene];

      if (v6)
      {
        v7 = [v1 title];
        [v6 setTitle_];
      }
    }

    return sub_219BE7884();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219147D6C()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  *v7 = sub_219BF1554();
  v7[1] = v8;
  v9 = sub_219BE5AA4();
  v10 = MEMORY[0x277D6D2E8];
  v7[5] = v9;
  v7[6] = v10;
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_219BE5A94();
  v7[7] = sub_219BF1534();
  v7[8] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219147F90()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BE8644();
  sub_2189DA200();
  v10 = &v6[*(v9 + 48)];
  v11 = *(v9 + 64);
  sub_219BE66B4();
  v12 = sub_219BE6C74();
  v13 = MEMORY[0x277D6D7C0];
  v10[3] = v12;
  v10[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_219BE6C64();
  v14 = *MEMORY[0x277D6D9C8];
  v15 = sub_219BE73A4();
  (*(*(v15 - 8) + 104))(&v6[v11], v14, v15);
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC90], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECA8], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2191482A4()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219148480()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v8 = sub_219BF01B4();
  v9 = __swift_project_value_buffer(v8, qword_280F61940);
  v7[3] = v8;
  v7[4] = sub_218713968(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v7[5] = v13;
  v7[6] = v15;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_2191487D8()
{
  sub_219BE8664();
  v0 = sub_219BE7BC4();

  [v0 reloadData];
}

uint64_t sub_219148844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [v4 tabBarSplitViewFocusable];
  if (v7)
  {
    [v7 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  v8 = *&v4[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler];
  __swift_project_boxed_opaque_existential_1(v8 + 11, v8[14]);
  sub_2191FE9CC();
  v9 = v8[5];
  ObjectType = swift_getObjectType();
  return (*(v9 + 56))(a2, 0, a4, ObjectType, v9);
}

void sub_219148900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = *(*(v3 + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(ObjectType, v10);
    return;
  }

  if (v9 == *MEMORY[0x277D6E928])
  {
    v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler) + 40);
    v13 = swift_getObjectType();
    (*(v12 + 32))(v13, v12);
  }

  else
  {
    if (v9 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v9 != *MEMORY[0x277D6E978])
    {
      if (v9 == *MEMORY[0x277D6E930])
      {
        goto LABEL_3;
      }

      if (v9 != *MEMORY[0x277D6E958])
      {
        if (v9 == *MEMORY[0x277D6E970])
        {
          sub_219BE8664();
          v14 = sub_219BE7BC4();

          v15 = [v14 collectionViewLayout];

          [v15 invalidateLayout];
          sub_219BE8664();
          v16 = sub_219BE7BC4();

          [v16 reloadData];
        }

        else
        {
          (*(v6 + 8))(v8, v5);
        }
      }
    }
  }
}

uint64_t sub_219148B9C(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v12 = sub_219BF01B4();
    v13 = __swift_project_value_buffer(v12, qword_280F61940);
    v11[3] = v12;
    v11[4] = sub_218713968(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v17 = sub_219BF54E4();
    v19 = v18;

    v11[5] = v17;
    v11[6] = v19;
    (*(v8 + 104))(v11, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_219148EF8()
{
  sub_218985EAC();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40500();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218EA89D8();
    v12 = &v7[*(v13 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218EA8964();
    v10 = *(v9 + 48);
    v11 = sub_219BF1584();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
    v12 = v7;
LABEL_5:
    sub_2191497B4(v12, type metadata accessor for SharedWithYouFeedGapLocation);
    return 0;
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_219BE5F84();
  v15 = sub_219BF4FC4();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_219149200(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler) + 88), *(*(v2 + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler) + 112));
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_219BDD154();
}

uint64_t sub_21914938C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

uint64_t sub_219149564(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2191FDEB4(a1, v4);
}

void sub_2191495D4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_styler], v12);
  v3 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    [v5 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v12);
    v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 setBackgroundColor_];
    [v8 setAlwaysBounceVertical_];
    [v8 setContentInset_];

    v9 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v10 = [v1 navigationItem];
    v11 = *(*__swift_project_boxed_opaque_existential_1((*v9 + 16), *(*v9 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    sub_219BEDA04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191497B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219149814()
{
  if (!qword_280EE5AD0)
  {
    sub_2186CFDE4(255, &qword_280EE5AE0);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5AD0);
    }
  }
}

uint64_t sub_219149884(uint64_t a1, uint64_t a2)
{
  sub_21875D3C8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_219BE20E4();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_21914FA30(v8, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

void sub_2191499E8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        sub_21914FA30(a1, v4);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_219149A90()
{
  swift_getObjectType();
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v0 = CACurrentMediaTime();
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v2 = sub_219BF5054();
  MEMORY[0x28223BE20](v2);
  sub_219BE3204();
  sub_2187D9028();
  v3 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v4 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v0;
  sub_219BE2F94();

  v5 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v0;
  sub_219BE2FE4();
}

uint64_t sub_219149D6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
  v4 = off_282A42D88[0];
  type metadata accessor for AudioFeedBlueprintModifierFactory();
  v4(v2, v3);
  sub_218CF947C();
  sub_21915037C(&unk_280EE5660, sub_218CF947C);
  v5 = sub_219BE6E84();

  return v5;
}

uint64_t sub_219149E7C()
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_219BF6214();
  sub_219BE5314();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219149FE8(uint64_t a1)
{
  v2 = sub_219BF1584();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = &v30 - v6;
  sub_21914F974();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v11 = MEMORY[0x277D83A80];
  *(v10 + 56) = MEMORY[0x277D839F8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v12;
  v34 = 0;
  v35 = 0xE000000000000000;
  v33 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v13 = v34;
  v14 = v35;
  *(v10 + 96) = MEMORY[0x277D837D0];
  *(v10 + 104) = sub_2186FC3BC();
  *(v10 + 72) = v13;
  *(v10 + 80) = v14;
  sub_219BE5314();

  v15 = off_282A76950[0];
  type metadata accessor for AudioFeedDataManager();
  v15();
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (qword_27CC082B8 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v2, qword_27CCD87C0);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = Strong;
        v20 = v31;
        (*(v3 + 16))(v31, v17, v2);
        v21 = (*(v3 + 80) + 24) & ~*(v3 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = v19;
        (*(v3 + 32))(v22 + v21, v20, v2);
        swift_unknownObjectRetain();
        sub_219BE3494();

        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v23 = *(v3 + 32);
    v24 = v32;
    v23(v32, v9, v2);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = swift_unknownObjectWeakLoadStrong();
      if (v25)
      {
        v26 = v25;
        v27 = v31;
        (*(v3 + 16))(v31, v24, v2);
        v28 = (*(v3 + 80) + 24) & ~*(v3 + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = v26;
        v23((v29 + v28), v27, v2);
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return (*(v3 + 8))(v24, v2);
  }

  return result;
}

uint64_t sub_21914A4BC(uint64_t a1, void *a2)
{
  v64 = a1;
  ObjectType = swift_getObjectType();
  v62 = type metadata accessor for AudioFeedExpandRequest();
  MEMORY[0x28223BE20](v62);
  v73 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v69);
  v6 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AudioFeedGapLocation(0);
  v66 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v67 = v9;
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v57 - v10;
  sub_218729DE0(0, &unk_280EE5CA0, sub_218AB7640, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - v12;
  sub_218AB7640();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v65 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v18;
  MEMORY[0x28223BE20](v17);
  v74 = &v57 - v19;
  sub_21914F880(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v21 = v20;
  v75 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v72 = v2;
  sub_219BE6EC4();
  v77 = *&v76[0];
  sub_21898746C();
  sub_21915037C(&unk_280EE54C0, sub_21898746C);
  sub_219BE7B94();
  v24 = v21;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE1D74();
  sub_219BEB1C4();
  v25 = v16;

  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_21914FEDC(v13, &unk_280EE5CA0, sub_218AB7640);
    v26 = a2[3];
    v27 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v26);
    MEMORY[0x21CEC0B20](0, v26, v27);
    return (*(v75 + 8))(v23, v24);
  }

  else
  {
    v60 = v23;
    v61 = v24;
    v29 = *(v16 + 32);
    v30 = v74;
    v29(v74, v13, v15);
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v58 = v15;
      v31 = *v6;
      v32 = v6[1];
      sub_2186F151C();
      v34 = *(v33 + 48);
      v69 = type metadata accessor for AudioFeedGapLocation;
      v35 = v6 + v34;
      v36 = v70;
      sub_2191503C4(v35, v70, type metadata accessor for AudioFeedGapLocation);
      v59 = v29;
      v37 = v62;
      v38 = v73;
      v39 = sub_219150184(v36, v73 + *(v62 + 20));
      *v38 = v31;
      v38[1] = v32;
      v40 = v38 + *(v37 + 24);
      v41 = v64;
      *(v40 + 4) = *(v64 + 32);
      v42 = v41[1];
      *v40 = *v41;
      *(v40 + 1) = v42;
      MEMORY[0x28223BE20](v39);
      *(&v57 - 2) = v72;
      *(&v57 - 1) = v38;
      v44 = *v43;
      sub_219BE3204();
      sub_2187D9028();
      v45 = sub_219BF66A4();
      sub_218718690(a2, v76);
      v46 = swift_allocObject();
      sub_2186CB1F0(v76, v46 + 16);
      v64 = sub_219BE2F94();

      v47 = sub_219BF66A4();
      sub_218718690(a2, v76);
      v48 = v65;
      v49 = v58;
      (*(v16 + 16))(v65, v30, v58);
      v50 = v70;
      v51 = v68;
      sub_219150184(v70, v68);
      v52 = (*(v16 + 80) + 56) & ~*(v16 + 80);
      v53 = (v63 + *(v66 + 80) + v52) & ~*(v66 + 80);
      v54 = swift_allocObject();
      sub_2186CB1F0(v76, v54 + 16);
      v59(v54 + v52, v48, v49);
      sub_2191503C4(v51, v54 + v53, v69);
      sub_219BE2FE4();

      sub_21914F9D0(v50, type metadata accessor for AudioFeedGapLocation);
      (*(v25 + 8))(v74, v49);
      (*(v75 + 8))(v60, v61);
      return sub_21914F9D0(v73, type metadata accessor for AudioFeedExpandRequest);
    }

    else
    {
      sub_21914F9D0(v6, type metadata accessor for AudioFeedModel);
      v55 = a2[3];
      v56 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v55);
      MEMORY[0x21CEC0B20](0, v55, v56);
      (*(v25 + 8))(v30, v15);
      return (*(v75 + 8))(v60, v61);
    }
  }
}

uint64_t sub_21914AD1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
  v7 = off_282A42D90[0];
  type metadata accessor for AudioFeedBlueprintModifierFactory();
  v12 = v7(v3, v4, v5, v6);
  sub_218718690(a3, v11);
  v8 = swift_allocObject();
  sub_2186CB1F0(v11, v8 + 16);
  sub_218CF947C();
  sub_21915037C(&unk_280EE5660, sub_218CF947C);
  sub_219BE6EF4();
}

uint64_t sub_21914AE88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for AudioFeedFailedData(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_219BE81D4())
  {
    v13 = a3[3];
    v14 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v13);
    return MEMORY[0x21CEC0B20](0, v13, v14);
  }

  else
  {
    v29 = a4;
    v30 = a5;
    v31 = a2;
    if (qword_280E8D7D8 != -1)
    {
      swift_once();
    }

    v28 = qword_280F616F8;
    v27[3] = sub_219BF61F4();
    sub_2186F20D4();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09EC0;
    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    sub_2186CFDE4(0, &unk_280EE3DF0);
    sub_219BF7484();
    v17 = v32[0];
    v18 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v19 = sub_2186FC3BC();
    *(v16 + 64) = v19;
    *(v16 + 32) = v17;
    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    v33 = a1;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v20 = v32[0];
    *(v16 + 96) = v18;
    *(v16 + 104) = v19;
    *(v16 + 72) = v20;
    sub_219BE5314();

    __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(v31 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
    sub_218AB7640();
    v21 = sub_219BE5F84();
    v23 = v22;
    sub_219150184(v30, v12 + *(v10 + 20));
    *v12 = v21;
    v12[1] = v23;
    v24 = off_282A42DB8;
    type metadata accessor for AudioFeedBlueprintModifierFactory();
    v25 = v24(v12);
    sub_21914F9D0(v12, type metadata accessor for AudioFeedFailedData);
    v33 = v25;
    sub_218718690(a3, v32);
    v26 = swift_allocObject();
    sub_2186CB1F0(v32, v26 + 16);
    sub_218CF947C();
    sub_21915037C(&unk_280EE5660, sub_218CF947C);
    sub_219BE6EF4();
  }
}

uint64_t sub_21914B200()
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_21914B32C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  ObjectType = swift_getObjectType();
  v41 = *a1;
  v40 = *(a1 + 24);
  v39 = *(a1 + 8);
  v38 = sub_219BDBD64();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21914F880(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = sub_219BE61B4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v44 = v3;
  sub_219BE6EC4();
  sub_219BE6F74();

  (*(v12 + 104))(v15, *MEMORY[0x277D6D520], v11);
  sub_21915037C(&qword_280EE5AF0, MEMORY[0x277D6D528]);
  LOBYTE(a1) = sub_219BF53A4();
  v18 = *(v12 + 8);
  v18(v15, v11);
  result = (v18)(v17, v11);
  if ((a1 & 1) == 0)
  {
    sub_219BE6EC4();
    v50 = v51;
    sub_21898746C();
    sub_21915037C(&unk_280EE54C0, sub_21898746C);
    sub_219BE7B94();

    v20 = sub_2191CDB2C();
    result = (*(v8 + 8))(v10, v7);
    if ((~v20 & 0xF000000000000007) != 0)
    {
      v21 = v42;

      v22 = v36;
      sub_219BDBD54();
      v23 = sub_219BDBD44();
      v25 = v24;
      v26 = (*(v37 + 8))(v22, v38);
      *&v46 = v23;
      *(&v46 + 1) = v25;
      *&v47 = v21;
      *(&v47 + 1) = v41;
      v48 = v39;
      v49 = v40;
      v52 = v46;
      v53 = v47;
      v54 = v39;
      v55 = v40;
      MEMORY[0x28223BE20](v26);
      *(&v35 - 4) = v44;
      *(&v35 - 3) = v20;
      *(&v35 - 2) = &v52;
      v28 = v27;
      sub_219BE3204();
      sub_2187D9028();
      v29 = sub_219BF66A4();
      *(swift_allocObject() + 16) = v21;
      sub_219BE95D4();

      sub_219BE2F84();

      v30 = sub_219BE2E54();
      sub_218739B30(0, &qword_280E8B4E0, MEMORY[0x277D83D88]);
      sub_219BE2F94();

      v31 = swift_allocObject();
      v32 = v53;
      v31[1] = v52;
      v31[2] = v32;
      v33 = v55;
      v31[3] = v54;
      v31[4] = v33;
      sub_219150010(&v46, v45);
      v34 = sub_219BE2E54();
      sub_219BE2FD4();

      sub_21915006C(&v46);
      return sub_218ED1AFC(v20);
    }
  }

  return result;
}

uint64_t sub_21914B950(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
  v6 = off_282A42DA8[0];
  type metadata accessor for AudioFeedBlueprintModifierFactory();
  v6(a3, v4, v5);
  sub_218CF947C();
  sub_21915037C(&unk_280EE5660, sub_218CF947C);
  v7 = sub_219BE6E84();

  return v7;
}

uint64_t sub_21914BA68@<X0>(BOOL *a1@<X8>)
{
  sub_21914F880(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - v5;
  sub_219BE6EC4();
  v9[0] = v9[1];
  sub_21898746C();
  sub_21915037C(&unk_280EE54C0, sub_21898746C);
  sub_219BE7B94();

  v7 = sub_2191CDB2C();
  result = (*(v4 + 8))(v6, v3);
  if ((v7 & 0xF000000000000007) != 0xF000000000000007)
  {
    type metadata accessor for AudioFeedServiceConfig();
    sub_21915037C(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
    sub_219BEE7D4();
    sub_218ED1AFC(v7);
    sub_219BEE2F4();
  }

  *a1 = (v7 & 0xF000000000000007) == 0xF000000000000007;
  return result;
}

uint64_t sub_21914BC6C()
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09EC0;
  sub_219BF7484();
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_2186FC3BC();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *&v4 = 0;
  *(&v4 + 1) = 0xE000000000000000;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = v4;
  sub_219BE5314();
}

void sub_21914BDF8()
{
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      *(swift_allocObject() + 16) = v2;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectRelease();
  }

  MEMORY[0x28223BE20](Strong);
  sub_219BE3204();
  sub_2187D9028();
  v3 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v0;
  v4 = v0;
  v5 = sub_219BE2E54();
  sub_219BE2F94();

  v6 = sub_219BE2E54();
  sub_219BE3034();
}

uint64_t sub_21914C01C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
  v4 = off_282A42D98[0];
  type metadata accessor for AudioFeedBlueprintModifierFactory();
  v4(v2, v3);
  sub_218CF947C();
  sub_21915037C(&unk_280EE5660, sub_218CF947C);
  v5 = sub_219BE6E84();

  return v5;
}

uint64_t sub_21914C12C(uint64_t a1)
{
  v2 = sub_219BE95D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  result = (*(v3 + 88))(v5, v2);
  if (result != *MEMORY[0x277D6E6A0])
  {
    if (result == *MEMORY[0x277D6E6A8])
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v7 = result;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = off_282A82188;
          type metadata accessor for AudioFeedViewController();
          v8(v7, &off_282A59080, 0);
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_21914C2D8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21914C398()
{
  sub_219BE6EC4();
  v1 = sub_218982930();

  if ((v1 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_219BE6084();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(v0 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
  v3 = off_282A42DA0[0];
  type metadata accessor for AudioFeedBlueprintModifierFactory();
  v3();

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = HIBYTE(v1) & 1;
  sub_218CF947C();
  sub_21915037C(&unk_280EE5660, sub_218CF947C);

  sub_219BE6EF4();
}

void sub_21914C5D8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      v5 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          *(swift_allocObject() + 16) = v6;
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
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

uint64_t sub_21914C6C8(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  sub_218729DE0(0, &qword_280E905C0, MEMORY[0x277D33610], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v40 - v3;
  v4 = sub_219BF1DA4();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDAE4();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28();
  v45 = v8;
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF0F34();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB7640();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {

        sub_2186F151C();
        v25 = type metadata accessor for AudioFeedGapLocation;
        v26 = &v22[*(v24 + 48)];
        return sub_21914F9D0(v26, v25);
      }

      sub_2186FB36C();
      v37 = *(v36 + 48);
      v38 = sub_219BF1584();
      (*(*(v38 - 8) + 8))(&v22[v37], v38);
      v27 = type metadata accessor for AudioFeedGapLocation;
LABEL_13:
      v25 = v27;
      v26 = v22;
      return sub_21914F9D0(v26, v25);
    }

LABEL_8:
    v27 = type metadata accessor for AudioFeedModel;
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v17 + 32))(v19, v22, v16);
    sub_219BF07D4();
    v28 = sub_219BF0F14();
    (*(v12 + 8))(v14, v11);
    sub_21914CD14(v28, v42);
    swift_unknownObjectRelease();
    return (*(v17 + 8))(v19, v16);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21914D4C4();
    goto LABEL_8;
  }

  v30 = v43;
  v31 = v45;
  (*(v43 + 32))(v10, v22, v45);
  v32 = v41;
  sub_219BF07D4();
  v33 = v44;
  sub_219BEDAD4();
  v35 = v46;
  v34 = v47;
  if ((*(v46 + 48))(v33, 1, v47) == 1)
  {
    (*(v48 + 8))(v32, v49);
    (*(v30 + 8))(v10, v31);
    return sub_21914FEDC(v33, &qword_280E905C0, MEMORY[0x277D33610]);
  }

  else
  {
    v39 = v40;
    (*(v35 + 32))(v40, v33, v34);
    sub_219BF1D94();
    (*(v35 + 8))(v39, v34);
    (*(v48 + 8))(v32, v49);
    return (*(v30 + 8))(v10, v31);
  }
}

uint64_t sub_21914CD14(void *a1, uint64_t a2)
{
  v46 = a2;
  sub_218729DE0(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v43 - v4;
  v56 = sub_219BDE294();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDEE04();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for AudioFeedRouteModel();
  MEMORY[0x28223BE20](v49);
  v57 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for AudioFeedSectionDescriptor();
  MEMORY[0x28223BE20](v43);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BF1324();
  v11 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF1C74();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF2A04();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729DE0(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
  v47 = *(v22 - 8);
  v48 = v22;
  MEMORY[0x28223BE20](v22);
  v45 = &v43 - v23;
  v61 = a1;
  (*(v19 + 104))(v21, *MEMORY[0x277D33A68], v18);
  (*(v15 + 104))(v17, *MEMORY[0x277D33570], v14);
  sub_21914F880(0, &qword_280EE57D0, MEMORY[0x277D6D710]);
  swift_unknownObjectRetain();
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v25 = MEMORY[0x277D33298];
    goto LABEL_5;
  }

  v25 = MEMORY[0x277D33290];
  if (EnumCaseMultiPayload - 2 < 2)
  {
LABEL_5:
    sub_21914F9D0(v10, type metadata accessor for AudioFeedSectionDescriptor);
  }

  (*(v11 + 104))(v13, *v25, v44);
  sub_218731D50();
  v58 = 0u;
  v59 = 0u;
  v26 = v45;
  sub_219BF2564();
  swift_unknownObjectRetain();
  v27 = v50;
  sub_219BDEDE4();
  v29 = v47;
  v28 = v48;
  v30 = v53;
  (*(v47 + 16))(v53, v26, v48);
  v31 = v54;
  v32 = v56;
  (*(v54 + 104))(v30, *MEMORY[0x277D2FF00], v56);
  v33 = sub_219BDB954();
  v34 = v55;
  (*(*(v33 - 8) + 56))(v55, 1, 1, v33);
  v35 = v57;
  sub_219BDD904();
  sub_21914FEDC(v34, &unk_280EE9D00, MEMORY[0x277CC9260]);
  (*(v31 + 8))(v30, v32);
  (*(v51 + 8))(v27, v52);
  swift_storeEnumTagMultiPayload();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [a1 identifier];
    v39 = sub_219BF5414();
    v41 = v40;

    __swift_project_boxed_opaque_existential_1((v37 + 48), *(v37 + 72));
    *&v58 = v39;
    *(&v58 + 1) = v41;
    v59 = 0uLL;
    v60 = 0;
    sub_2196D4AD0(v35, &v58);
    sub_21914F9D0(v35, type metadata accessor for AudioFeedRouteModel);
    (*(v29 + 8))(v26, v28);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_21914F9D0(v35, type metadata accessor for AudioFeedRouteModel);
    return (*(v29 + 8))(v26, v28);
  }
}

uint64_t sub_21914D4C4()
{
  sub_218729DE0(0, &qword_27CC15358, type metadata accessor for AudioFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v14[-1] - v1);
  v3 = type metadata accessor for AudioFeedRouteModel();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21914D700(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_21914FEDC(v2, &qword_27CC15358, type metadata accessor for AudioFeedRouteModel);
  }

  sub_2191503C4(v2, v6, type metadata accessor for AudioFeedRouteModel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_21914F9D0(v6, type metadata accessor for AudioFeedRouteModel);
  }

  v9 = Strong;
  sub_218AB7640();
  v10 = sub_219BE5F84();
  v12 = v11;
  __swift_project_boxed_opaque_existential_1((v9 + 48), *(v9 + 72));
  v14[0] = v10;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;
  v15 = 0;
  sub_2196D4AD0(v6, v14);
  sub_21914F9D0(v6, type metadata accessor for AudioFeedRouteModel);

  return swift_unknownObjectRelease();
}

uint64_t sub_21914D700@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = sub_219BF0F34();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v5 = v4;
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF04A4();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v12 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB7640();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {

        sub_2186F151C();
        v25 = type metadata accessor for AudioFeedGapLocation;
        v26 = &v17[*(v24 + 48)];
LABEL_13:
        sub_21914F9D0(v26, v25);
        v32 = type metadata accessor for AudioFeedRouteModel();
        v22 = *(*(v32 - 8) + 56);
        v23 = v42;
        v31 = 1;
        return v22(v23, v31, 1, v32);
      }

      sub_2186FB36C();
      v34 = *(v33 + 48);
      v35 = sub_219BF1584();
      (*(*(v35 - 8) + 8))(&v17[v34], v35);
      v27 = type metadata accessor for AudioFeedGapLocation;
LABEL_12:
      v25 = v27;
      v26 = v17;
      goto LABEL_13;
    }

LABEL_8:
    v27 = type metadata accessor for AudioFeedModel;
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v28 = v39;
    (*(v39 + 32))(v7, v17, v5);
    sub_219BF07D4();
    v29 = sub_219BF0F14();
    (*(v40 + 8))(v3, v41);
    (*(v28 + 8))(v7, v5);
    v30 = v42;
    *v42 = v29;
    v21 = type metadata accessor for AudioFeedRouteModel();
    swift_storeEnumTagMultiPayload();
    v22 = *(*(v21 - 8) + 56);
    v23 = v30;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_8;
  }

  v19 = v37;
  (*(v37 + 32))(v14, v17, v12);
  sub_219BF07D4();
  sub_219BF0404();
  (*(v38 + 8))(v10, v8);
  v20 = v42;
  sub_219BDD644();
  (*(v19 + 8))(v14, v12);
  v21 = type metadata accessor for AudioFeedRouteModel();
  swift_storeEnumTagMultiPayload();
  v22 = *(*(v21 - 8) + 56);
  v23 = v20;
LABEL_10:
  v31 = 0;
  v32 = v21;
  return v22(v23, v31, 1, v32);
}

uint64_t sub_21914DC20()
{
  sub_218CFB62C();
  MEMORY[0x28223BE20](v0 - 8);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BF1324();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BF1C74();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF2A04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218739B30(0, &qword_280E90410, MEMORY[0x277D33910]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v9 + 104))(v11, *MEMORY[0x277D33A68], v8);
  v17 = v21;
  (*(v5 + 104))(v7, *MEMORY[0x277D33570], v20);
  (*(v2 + 104))(v4, *MEMORY[0x277D33298], v22);
  v23 = 0u;
  v24 = 0u;
  sub_219BF2564();
  swift_getObjectType();
  sub_219BEABD4();
  (*(v14 + 16))(v17, v16, v13);
  (*(v14 + 56))(v17, 0, 1, v13);
  sub_219BE7094();

  sub_21914F9D0(v17, sub_218CFB62C);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_21914E00C()
{
  v0 = sub_219BE61B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  sub_219BE6F74();

  v4 = (*(v1 + 88))(v3, v0);
  v5 = *MEMORY[0x277D6D518];
  result = (*(v1 + 8))(v3, v0);
  if (v4 == v5)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = off_282A82178[0];
        type metadata accessor for AudioFeedViewController();
        v8(v7, &off_282A59080, &unk_282A25908);
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21914E2C8()
{
  swift_getObjectType();
  sub_219BE3204();
  sub_2187D9028();
  v0 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v1 = sub_219BE2E54();
  sub_218739B30(0, &qword_280E8B4E0, MEMORY[0x277D83D88]);
  sub_219BE2F94();

  v2 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_21914E438@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = sub_219BF0F34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF04A4();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0614();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF13A4();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4();
  sub_219BE5FC4();
  sub_219BF1394();
  sub_21914F9D0(v14, MEMORY[0x277D33320]);
  v15 = (*(v9 + 88))(v11, v8);
  if (v15 == *MEMORY[0x277D32DB8] || v15 == *MEMORY[0x277D32D10] || v15 == *MEMORY[0x277D32E00])
  {
    goto LABEL_9;
  }

  if (v15 != *MEMORY[0x277D32E10])
  {
    if (v15 != *MEMORY[0x277D32E18] && v15 != *MEMORY[0x277D32DD8] && v15 != *MEMORY[0x277D32CF8])
    {
      if (v15 == *MEMORY[0x277D32DC0])
      {
        (*(v9 + 96))(v11, v8);
        v23 = v25;
        (*(v25 + 32))(v7, v11, v5);
        sub_219BF0404();
        v21 = v26;
        sub_219BDD644();
        (*(v23 + 8))(v7, v5);
        v22 = type metadata accessor for AudioFeedRouteModel();
        goto LABEL_13;
      }

      if (v15 != *MEMORY[0x277D32CF0] && v15 != *MEMORY[0x277D32E08] && v15 != *MEMORY[0x277D32DB0] && v15 != *MEMORY[0x277D32DE0] && v15 != *MEMORY[0x277D32D38] && v15 != *MEMORY[0x277D32DE8] && v15 != *MEMORY[0x277D32D18])
      {
        if (v15 != *MEMORY[0x277D32DD0])
        {
          v24 = type metadata accessor for AudioFeedRouteModel();
          (*(*(v24 - 8) + 56))(v26, 1, 1, v24);
          return (*(v9 + 8))(v11, v8);
        }

LABEL_10:
        v18 = type metadata accessor for AudioFeedRouteModel();
        return (*(*(v18 - 8) + 56))(v26, 1, 1, v18);
      }
    }

LABEL_9:
    (*(v9 + 8))(v11, v8);
    goto LABEL_10;
  }

  (*(v9 + 96))(v11, v8);
  (*(v2 + 32))(v4, v11, v1);
  v20 = sub_219BF0F14();
  (*(v2 + 8))(v4, v1);
  v21 = v26;
  *v26 = v20;
  v22 = type metadata accessor for AudioFeedRouteModel();
LABEL_13:
  swift_storeEnumTagMultiPayload();
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_21914E9A4(uint64_t a1)
{
  sub_218729DE0(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v14 - v3);
  if ([*(a1 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_featureAvailability) useOfflineMode] && (sub_21914F974(), (sub_219BF1B14() & 1) != 0))
  {

    sub_219BE20E4();

    v5 = type metadata accessor for AudioFeedTrack(0);
    if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
    {
      sub_21914FEDC(v4, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      v6 = 0;
    }

    else
    {
      v8 = [*v4 identifier];
      v9 = sub_219BF5414();
      v11 = v10;

      sub_21914F9D0(v4, type metadata accessor for AudioFeedTrack);
      v12 = [*(a1 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_offlineArticleManager) listenableArticleIDs];
      v13 = sub_219BF5D44();

      v6 = sub_2188537B8(v9, v11, v13);
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_21914EBD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = sub_219BF0644();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - v7;
  sub_21914F880(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  sub_219BE6EC4();
  v32 = v34;
  sub_21898746C();
  sub_21915037C(&unk_280EE54C0, sub_21898746C);
  sub_219BE7B94();

  v14 = sub_2191CDB2C();
  (*(v11 + 8))(v13, v10);
  if ((~v14 & 0xF000000000000007) != 0)
  {
    v15 = type metadata accessor for AudioFeedServiceConfig();
    v29[0] = sub_21915037C(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
    v29[1] = v15;
    sub_219BEE844();
    v34 = *__swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeatures), *(v30 + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeatures + 24));
    v16 = off_282A442B8;
    type metadata accessor for OfflineFeatures();
    if (v16(5) == 6)
    {
      v17 = sub_219BF1AE4();
      v18 = v31;
      if (v17)
      {
        v19 = MEMORY[0x277D32EF8];
      }

      else
      {
        v19 = MEMORY[0x277D32EF0];
      }

      (*(v4 + 104))(v31, *v19, v3);
    }

    else
    {
      v18 = v31;
      (*(v4 + 104))(v31, *MEMORY[0x277D32EF0], v3);
    }

    sub_21915037C(&qword_280E90ED0, MEMORY[0x277D32F00]);
    sub_219BF5874();
    sub_219BF5874();
    if (v34 == v32 && v35 == v33)
    {
      v20 = *(v4 + 8);
      v20(v18, v3);
      v20(v8, v3);
    }

    else
    {
      v21 = sub_219BF78F4();
      v22 = v18;
      v23 = v21;
      v24 = *(v4 + 8);
      v24(v22, v3);
      v24(v8, v3);

      if ((v23 & 1) == 0)
      {
        sub_219BEE844();
        sub_218ED1AFC(v14);
        v25 = MEMORY[0x277D331E0];
        goto LABEL_15;
      }
    }

    sub_219BEE844();
    sub_218ED1AFC(v14);
  }

  else
  {
    (*(v4 + 104))(a2, *MEMORY[0x277D32EF0], v3);
  }

  v25 = MEMORY[0x277D331F8];
LABEL_15:
  v26 = *v25;
  v27 = sub_219BF11C4();
  return (*(*(v27 - 8) + 104))(a2, v26, v27);
}

uint64_t sub_21914F0D8()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(v0 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
  v1 = off_282A42DB0[0];
  type metadata accessor for AudioFeedBlueprintModifierFactory();
  v1();
  sub_218CF947C();
  sub_21915037C(&unk_280EE5660, sub_218CF947C);
  sub_219BE6EF4();
}

uint64_t sub_21914F1E4()
{
  v1 = sub_219BF0644();
  v22 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  sub_21914F880(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  sub_219BE6EC4();
  v23 = v24;
  sub_21898746C();
  sub_21915037C(&unk_280EE54C0, sub_21898746C);
  sub_219BE7B94();

  v12 = sub_2191CDB2C();
  (*(v9 + 8))(v11, v8);
  if ((~v12 & 0xF000000000000007) != 0)
  {
    v24 = *__swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_dataManager) + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeatures), *(*(v0 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_dataManager) + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeatures + 24));
    v14 = off_282A442B8;
    type metadata accessor for OfflineFeatures();
    if (v14(5) == 6)
    {
      v15 = sub_219BF1AE4();
      v16 = v22;
      if (v15)
      {
        v17 = MEMORY[0x277D32EF8];
      }

      else
      {
        v17 = MEMORY[0x277D32EF0];
      }

      (*(v22 + 104))(v6, *v17, v1);
    }

    else
    {
      v16 = v22;
      (*(v22 + 104))(v6, *MEMORY[0x277D32EF0], v1);
    }

    type metadata accessor for AudioFeedServiceConfig();
    sub_21915037C(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
    sub_219BEE844();
    sub_21915037C(&unk_280E90EE0, MEMORY[0x277D32F00]);
    v18 = sub_219BF53A4();
    sub_218ED1AFC(v12);
    v19 = *(v16 + 8);
    v19(v4, v1);
    v19(v6, v1);
    v13 = v18 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

id sub_21914F5B4()
{
  swift_getObjectType();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_219BE86E4();
      v3 = objc_allocWithZone(sub_219BE9274());
      v4 = sub_219BE9254();
      result = [v2 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = result;
      [result bounds];

      sub_21914E2C8();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21914F714()
{
  result = sub_21914F1E4();
  if (result)
  {
    if (qword_280E8D7D8 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v1 = result;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v2 = off_282A82180[0];
        v3 = type metadata accessor for AudioFeedViewController();
        v2(v1, &off_282A59080, v3, &off_282A82148);
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21914F880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_21915037C(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    v8[3] = sub_21915037C(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21914F974()
{
  if (!qword_280E90790)
  {
    sub_2186F17B0();
    v0 = sub_219BF1B54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90790);
    }
  }
}

uint64_t sub_21914F9D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21914FA30(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_21875D3C8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729DE0(0, &qword_280E91758, MEMORY[0x277D324B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - v11;
  v13 = a2 + OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_mastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    v15 = swift_getObjectType();
    v16 = sub_21915037C(&qword_280EC5D20, type metadata accessor for AudioFeedViewController);
    (*(v14 + 16))(a2, v16, a1, v15, v14);
    swift_unknownObjectRelease();
  }

  v17 = sub_21915037C(&qword_280EC5D20, type metadata accessor for AudioFeedViewController);
  v18 = MEMORY[0x21CEBCBD0](ObjectType, v17);
  if (v18)
  {
    v19 = v18;
    swift_getObjectType();
    sub_219BE9114();
  }

  if (sub_219BED0C4())
  {
    v20 = sub_2196D74D4();
    (*(v7 + 16))(v9, a1, v6);
    v21 = (*(v7 + 88))(v9, v6);
    if (v21 == *MEMORY[0x277D30130])
    {
      (*(v7 + 96))(v9, v6);
      sub_218A6E5D0(0);
      v23 = *(v22 + 64);
      v24 = MEMORY[0x277D324A8];
    }

    else
    {
      if (v21 != *MEMORY[0x277D30128])
      {
        v30 = *MEMORY[0x277D30138];
        v31 = *MEMORY[0x277D324A0];
        v32 = v21;
        v33 = sub_219BEEF64();
        v34 = *(v33 - 8);
        (*(v34 + 104))(v12, v31, v33);
        (*(v34 + 56))(v12, 0, 1, v33);
        if (v32 != v30)
        {
          (*(v7 + 8))(v9, v6);
        }

        goto LABEL_11;
      }

      (*(v7 + 96))(v9, v6);
      sub_218A6E554();
      v23 = *(v25 + 64);
      v24 = MEMORY[0x277D32498];
    }

    v26 = *v24;
    v27 = sub_219BEEF64();
    v28 = *(v27 - 8);
    (*(v28 + 104))(v12, v26, v27);
    (*(v28 + 56))(v12, 0, 1, v27);
    v29 = sub_219BDD9E4();
    (*(*(v29 - 8) + 8))(&v9[v23], v29);
    sub_21914F9D0(v9, type metadata accessor for AudioFeedTrack);
LABEL_11:
    sub_219BE8E34();
  }
}

uint64_t sub_21914FEDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218729DE0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219150120()
{
  sub_219BF1584();

  return sub_2196D9354();
}

uint64_t sub_219150184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21915023C(uint64_t a1, uint64_t a2)
{
  sub_218AB7640();
  v6 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for AudioFeedGapLocation(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_21914AE88(a1, a2, (v2 + 16), v2 + v6, v9);
}

uint64_t sub_21915037C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2191503C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219150494(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 8))
  {
    return (*a1 + 114);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x71)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2191504E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_219150544(uint64_t a1)
{
  v2 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8);
  v165 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58();
  v164 = v4;
  v163 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v162 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for NewspaperMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v161);
  v160 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC();
  v159 = v7;
  v158 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v157 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v9 - 8);
  v156 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748();
  v155 = v11;
  v154 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v153 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TrendingMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v13 - 8);
  v152 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8();
  v151 = v15;
  v150 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v149 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TopicMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v17 - 8);
  v148 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0();
  v147 = v19;
  v146 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v145 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v21 - 8);
  v144 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C();
  v143 = v23;
  v142 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v141 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PaywallMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v25 - 8);
  v140 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670();
  v139 = v27;
  v138 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v137 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for NewIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v29 - 8);
  v136 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30();
  v135 = v31;
  v134 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v133 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v33 - 8);
  v132 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C();
  v131 = v35;
  v130 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v129 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574);
  v128 = v37;
  v127 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v126 = &v118 - v38;
  v125 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v125);
  v124 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4();
  v123 = v40;
  v122 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v121 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v120);
  v43 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80();
  v45 = v44;
  v119 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v118 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v48);
  v50 = &v118 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594();
  v52 = v51;
  v118 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v118 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698);
  v56 = v55;
  v57 = *(v55 - 8);
  v58 = MEMORY[0x28223BE20](a1);
  v60 = &v118 - v59;
  switch(v58 >> 60)
  {
    case 1uLL:
      v96 = swift_projectBox();
      v97 = v118;
      (*(v118 + 16))(v54, v96, v52);
      sub_219BEDD14();
      (*(v97 + 8))(v54, v52);
      v62 = v50[*(v48 + 24)];
      v86 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData;
      v87 = v50;
      goto LABEL_18;
    case 2uLL:
      v84 = swift_projectBox();
      v85 = v119;
      (*(v119 + 16))(v47, v84, v45);
      sub_219BEDD14();
      (*(v85 + 8))(v47, v45);
      v62 = v43[*(v120 + 24)];
      v86 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData;
      v87 = v43;
      goto LABEL_18;
    case 3uLL:
      v88 = swift_projectBox();
      v89 = v122;
      v90 = v121;
      v91 = v123;
      (*(v122 + 16))(v121, v88, v123);
      v70 = v124;
      sub_219BEDD14();
      (*(v89 + 8))(v90, v91);
      v62 = v70[*(v125 + 24)];
      v71 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 4uLL:
      v72 = swift_projectBox();
      v73 = v127;
      v74 = v126;
      v75 = v128;
      (*(v127 + 16))(v126, v72, v128);
      sub_219BEDD14();
      (*(v73 + 8))(v74, v75);
      v171 = v168;
      *v172 = *v169;
      *&v172[10] = *&v169[10];
      v170[0] = v166;
      v170[1] = v167;
      sub_21915A74C(v170);
      return v172[24];
    case 5uLL:
      v98 = swift_projectBox();
      v99 = v130;
      v100 = v129;
      v101 = v131;
      (*(v130 + 16))(v129, v98, v131);
      v70 = v132;
      sub_219BEDD14();
      (*(v99 + 8))(v100, v101);
      v62 = v70[24];
      v71 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 6uLL:
      v106 = swift_projectBox();
      v107 = v134;
      v108 = v133;
      v109 = v135;
      (*(v134 + 16))(v133, v106, v135);
      v70 = v136;
      sub_219BEDD14();
      (*(v107 + 8))(v108, v109);
      v62 = v70[1];
      v71 = type metadata accessor for NewIssueMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 7uLL:
      v92 = swift_projectBox();
      v93 = v138;
      v94 = v137;
      v95 = v139;
      (*(v138 + 16))(v137, v92, v139);
      v70 = v140;
      sub_219BEDD14();
      (*(v93 + 8))(v94, v95);
      v62 = v70[1];
      v71 = type metadata accessor for PaywallMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 8uLL:
      v114 = swift_projectBox();
      v115 = v142;
      v116 = v141;
      v117 = v143;
      (*(v142 + 16))(v141, v114, v143);
      v70 = v144;
      sub_219BEDD14();
      (*(v115 + 8))(v116, v117);
      v62 = v70[56];
      v71 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 9uLL:
      v80 = swift_projectBox();
      v81 = v146;
      v82 = v145;
      v83 = v147;
      (*(v146 + 16))(v145, v80, v147);
      v70 = v148;
      sub_219BEDD14();
      (*(v81 + 8))(v82, v83);
      v62 = v70[1];
      v71 = type metadata accessor for TopicMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xAuLL:
      v110 = swift_projectBox();
      v111 = v150;
      v112 = v149;
      v113 = v151;
      (*(v150 + 16))(v149, v110, v151);
      v70 = v152;
      sub_219BEDD14();
      (*(v111 + 8))(v112, v113);
      v62 = v70[1];
      v71 = type metadata accessor for TrendingMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xBuLL:
      v66 = swift_projectBox();
      v67 = v154;
      v68 = v153;
      v69 = v155;
      (*(v154 + 16))(v153, v66, v155);
      v70 = v156;
      sub_219BEDD14();
      (*(v67 + 8))(v68, v69);
      v62 = v70[1];
      v71 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xCuLL:
      v76 = swift_projectBox();
      v77 = v158;
      v78 = v157;
      v79 = v159;
      (*(v158 + 16))(v157, v76, v159);
      v70 = v160;
      sub_219BEDD14();
      (*(v77 + 8))(v78, v79);
      v62 = v70[*(v161 + 36)];
      v71 = type metadata accessor for NewspaperMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xDuLL:
      v102 = swift_projectBox();
      v103 = v163;
      v104 = v162;
      v105 = v164;
      (*(v163 + 16))(v162, v102, v164);
      v70 = v165;
      sub_219BEDD14();
      (*(v103 + 8))(v104, v105);
      v62 = v70[1];
      v71 = type metadata accessor for CuratedMagazineFeedGroupConfigData;
LABEL_17:
      v86 = v71;
      v87 = v70;
LABEL_18:
      sub_21915A6EC(v87, v86);
      return v62;
    case 0xEuLL:
      v63 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v64 = sub_219150544(v63);

      return v64 & 1;
    default:
      v61 = swift_projectBox();
      (*(v57 + 16))(v60, v61, v56);
      sub_219BEDD14();
      (*(v57 + 8))(v60, v56);

      return v171;
  }
}

uint64_t sub_219151874(uint64_t a1)
{
  v2 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8);
  v163 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58();
  v162 = v4;
  v161 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v160 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for NewspaperMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v159);
  v158 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC();
  v157 = v7;
  v156 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v155 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v9 - 8);
  v154 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748();
  v153 = v11;
  v152 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v151 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TrendingMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v13 - 8);
  v150 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8();
  v149 = v15;
  v148 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v147 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TopicMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v17 - 8);
  v146 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0();
  v145 = v19;
  v144 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v143 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v21 - 8);
  v142 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C();
  v141 = v23;
  v140 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v139 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PaywallMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v25 - 8);
  v138 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670();
  v137 = v27;
  v136 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v135 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for NewIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v29 - 8);
  v134 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30();
  v133 = v31;
  v132 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v131 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v33 - 8);
  v130 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C();
  v129 = v35;
  v128 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v127 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v37 - 8);
  v126 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4();
  v125 = v39;
  v124 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v123 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v41 - 8);
  v122 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80();
  v121 = v43;
  v120 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v45 = &v118 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v118 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594();
  v50 = v49;
  v119 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v118 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574);
  v54 = v53;
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v57 = &v118 - v56;
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698);
  v59 = v58;
  v60 = *(v58 - 8);
  v61 = MEMORY[0x28223BE20](a1);
  v63 = &v118 - v62;
  switch(v61 >> 60)
  {
    case 1uLL:
      v93 = swift_projectBox();
      v94 = v119;
      (*(v119 + 16))(v52, v93, v50);
      sub_219BEDD14();
      (*(v94 + 8))(v52, v50);
      v65 = *v48;
      v95 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData;
      v96 = v48;
      goto LABEL_18;
    case 2uLL:
      v82 = swift_projectBox();
      v83 = v120;
      v84 = v121;
      (*(v120 + 16))(v45, v82, v121);
      v71 = v122;
      sub_219BEDD14();
      (*(v83 + 8))(v45, v84);
      v65 = *v71;
      v72 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 3uLL:
      v85 = swift_projectBox();
      v86 = v124;
      v87 = v123;
      v88 = v125;
      (*(v124 + 16))(v123, v85, v125);
      v71 = v126;
      sub_219BEDD14();
      (*(v86 + 8))(v87, v88);
      v65 = *v71;
      v72 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 4uLL:
      v73 = swift_projectBox();
      (*(v55 + 16))(v57, v73, v54);
      sub_219BEDD14();
      (*(v55 + 8))(v57, v54);
      v168[2] = v166;
      *v169 = *v167;
      *&v169[10] = *&v167[10];
      v168[0] = v164;
      v168[1] = v165;
      sub_21915A74C(v168);
      return LOBYTE(v168[0]);
    case 5uLL:
      v97 = swift_projectBox();
      v98 = v128;
      v99 = v127;
      v100 = v129;
      (*(v128 + 16))(v127, v97, v129);
      v71 = v130;
      sub_219BEDD14();
      (*(v98 + 8))(v99, v100);
      v65 = *v71;
      v72 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 6uLL:
      v105 = swift_projectBox();
      v106 = v132;
      v107 = v131;
      v108 = v133;
      (*(v132 + 16))(v131, v105, v133);
      v71 = v134;
      sub_219BEDD14();
      (*(v106 + 8))(v107, v108);
      v65 = *v71;
      v72 = type metadata accessor for NewIssueMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 7uLL:
      v89 = swift_projectBox();
      v90 = v136;
      v91 = v135;
      v92 = v137;
      (*(v136 + 16))(v135, v89, v137);
      v71 = v138;
      sub_219BEDD14();
      (*(v90 + 8))(v91, v92);
      v65 = *v71;
      v72 = type metadata accessor for PaywallMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 8uLL:
      v113 = swift_projectBox();
      v114 = v140;
      v115 = v139;
      v116 = v141;
      (*(v140 + 16))(v139, v113, v141);
      v71 = v142;
      sub_219BEDD14();
      (*(v114 + 8))(v115, v116);
      v65 = *v71;
      v72 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 9uLL:
      v78 = swift_projectBox();
      v79 = v144;
      v80 = v143;
      v81 = v145;
      (*(v144 + 16))(v143, v78, v145);
      v71 = v146;
      sub_219BEDD14();
      (*(v79 + 8))(v80, v81);
      v65 = *v71;
      v72 = type metadata accessor for TopicMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xAuLL:
      v109 = swift_projectBox();
      v110 = v148;
      v111 = v147;
      v112 = v149;
      (*(v148 + 16))(v147, v109, v149);
      v71 = v150;
      sub_219BEDD14();
      (*(v110 + 8))(v111, v112);
      v65 = *v71;
      v72 = type metadata accessor for TrendingMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xBuLL:
      v67 = swift_projectBox();
      v68 = v152;
      v69 = v151;
      v70 = v153;
      (*(v152 + 16))(v151, v67, v153);
      v71 = v154;
      sub_219BEDD14();
      (*(v68 + 8))(v69, v70);
      v65 = *v71;
      v72 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xCuLL:
      v74 = swift_projectBox();
      v75 = v156;
      v76 = v155;
      v77 = v157;
      (*(v156 + 16))(v155, v74, v157);
      v71 = v158;
      sub_219BEDD14();
      (*(v75 + 8))(v76, v77);
      v65 = v71[*(v159 + 56)];
      v72 = type metadata accessor for NewspaperMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xDuLL:
      v101 = swift_projectBox();
      v102 = v161;
      v103 = v160;
      v104 = v162;
      (*(v161 + 16))(v160, v101, v162);
      v71 = v163;
      sub_219BEDD14();
      (*(v102 + 8))(v103, v104);
      v65 = *v71;
      v72 = type metadata accessor for CuratedMagazineFeedGroupConfigData;
LABEL_17:
      v95 = v72;
      v96 = v71;
LABEL_18:
      sub_21915A6EC(v96, v95);
      break;
    case 0xEuLL:
      v66 = *((v61 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v65 = sub_219151874(v66);

      break;
    default:
      v64 = swift_projectBox();
      (*(v60 + 16))(v63, v64, v59);
      sub_219BEDD14();
      (*(v60 + 8))(v63, v59);
      v65 = LOBYTE(v168[0]);

      break;
  }

  return v65;
}

char *sub_219152B54(unint64_t a1)
{
  v105 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v105);
  v106 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58();
  v112 = *(v3 - 8);
  v113 = v3;
  MEMORY[0x28223BE20](v3);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v104);
  v114 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v8);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80();
  v12 = v11;
  v107 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF1934();
  v115 = *(v15 - 8);
  v116 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v103 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v102 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v102 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v102 - v24;
  v26 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v26);
  v28 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594();
  v30 = MEMORY[0x28223BE20](v29);
  v34 = &v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1 >> 60;
  v36 = MEMORY[0x277D84F90];
  if (v35 <= 3)
  {
    v111 = v8;
    v112 = v14;
    v52 = v114;
    v113 = v12;
    if (v35 <= 1)
    {
      if (!v35)
      {
        return v36;
      }

      v53 = v30;
      v54 = v32;
      v55 = v34;
      v56 = swift_projectBox();
      v113 = v54;
      (*(v54 + 16))(v55, v56, v53);
      v114 = v53;
      v112 = v55;
      sub_219BEDD14();
      v58 = v115;
      v57 = v116;
      (*(v115 + 16))(v25, &v28[*(v26 + 20)], v116);
      sub_21915A6EC(v28, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData);
      sub_219BF1724();
      (*(v58 + 8))(v25, v57);
      v59 = sub_219BF5AB4();

      if (v59 >> 62)
      {
        v60 = sub_219BF7214();
        if (v60)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v60)
        {
LABEL_19:
          v117 = v36;
          result = sub_21870B65C(0, v60 & ~(v60 >> 63), 0);
          if ((v60 & 0x8000000000000000) == 0)
          {
            v61 = 0;
            v36 = v117;
            do
            {
              if ((v59 & 0xC000000000000001) != 0)
              {
                MEMORY[0x21CECE0F0](v61, v59);
              }

              else
              {
              }

              v62 = sub_219BF16A4();
              v64 = v63;

              v117 = v36;
              v66 = *(v36 + 16);
              v65 = *(v36 + 24);
              if (v66 >= v65 >> 1)
              {
                sub_21870B65C((v65 > 1), v66 + 1, 1);
                v36 = v117;
              }

              ++v61;
              *(v36 + 16) = v66 + 1;
              v67 = v36 + 16 * v66;
              *(v67 + 32) = v62;
              *(v67 + 40) = v64;
            }

            while (v60 != v61);
            (*(v113 + 8))(v112, v114);
            goto LABEL_52;
          }

          __break(1u);
          goto LABEL_63;
        }
      }

      (*(v113 + 8))(v112, v114);
      return v36;
    }

    if (v35 == 2)
    {
      v68 = swift_projectBox();
      v69 = v107;
      v71 = v112;
      v70 = v113;
      (*(v107 + 16))(v112, v68, v113);
      sub_219BEDD14();
      v73 = v115;
      v72 = v116;
      (*(v115 + 16))(v23, &v10[*(v111 + 5)], v116);
      sub_21915A6EC(v10, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData);
      sub_219BF1724();
      (*(v73 + 8))(v23, v72);
      v74 = sub_219BF5AB4();

      if (v74 >> 62)
      {
        v75 = sub_219BF7214();
        if (v75)
        {
LABEL_31:
          v117 = v36;
          result = sub_21870B65C(0, v75 & ~(v75 >> 63), 0);
          if ((v75 & 0x8000000000000000) == 0)
          {
            v76 = 0;
            v36 = v117;
            do
            {
              if ((v74 & 0xC000000000000001) != 0)
              {
                MEMORY[0x21CECE0F0](v76, v74);
              }

              else
              {
              }

              v77 = sub_219BF16A4();
              v79 = v78;

              v117 = v36;
              v81 = *(v36 + 16);
              v80 = *(v36 + 24);
              if (v81 >= v80 >> 1)
              {
                sub_21870B65C((v80 > 1), v81 + 1, 1);
                v36 = v117;
              }

              ++v76;
              *(v36 + 16) = v81 + 1;
              v82 = v36 + 16 * v81;
              *(v82 + 32) = v77;
              *(v82 + 40) = v79;
            }

            while (v75 != v76);
            (*(v107 + 8))(v112, v113);
            goto LABEL_52;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      else
      {
        v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v75)
        {
          goto LABEL_31;
        }
      }

      (*(v69 + 8))(v71, v70);
      return v36;
    }

    v83 = swift_projectBox();
    v85 = v108;
    v84 = v109;
    v86 = v110;
    (*(v109 + 16))(v108, v83, v110);
    v87 = v52;
    sub_219BEDD14();
    v88 = v115;
    v89 = &v52[*(v104 + 20)];
    v90 = v116;
    (*(v115 + 16))(v20, v89, v116);
    sub_21915A6EC(v87, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData);
    sub_219BF1724();
    (*(v88 + 8))(v20, v90);
    v91 = sub_219BF5AB4();

    if (v91 >> 62)
    {
      v92 = sub_219BF7214();
      if (v92)
      {
LABEL_42:
        v117 = v36;
        result = sub_21870B65C(0, v92 & ~(v92 >> 63), 0);
        if ((v92 & 0x8000000000000000) == 0)
        {
          v93 = 0;
          v36 = v117;
          do
          {
            if ((v91 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CECE0F0](v93, v91);
            }

            else
            {
            }

            v94 = sub_219BF16A4();
            v96 = v95;

            v117 = v36;
            v98 = *(v36 + 16);
            v97 = *(v36 + 24);
            if (v98 >= v97 >> 1)
            {
              sub_21870B65C((v97 > 1), v98 + 1, 1);
              v36 = v117;
            }

            ++v93;
            *(v36 + 16) = v98 + 1;
            v99 = v36 + 16 * v98;
            *(v99 + 32) = v94;
            *(v99 + 40) = v96;
          }

          while (v92 != v93);
          (*(v109 + 8))(v108, v110);
          goto LABEL_52;
        }

        goto LABEL_64;
      }
    }

    else
    {
      v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v92)
      {
        goto LABEL_42;
      }
    }

    (*(v84 + 8))(v85, v86);
    return v36;
  }

  if ((v35 - 4) < 9)
  {
    return v36;
  }

  if (v35 != 13)
  {
    v100 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

    v101 = sub_219152B54(v100);

    return v101;
  }

  v37 = swift_projectBox();
  (*(v112 + 2))(v111, v37, v113);
  v38 = v106;
  sub_219BEDD14();
  v40 = v115;
  v39 = v116;
  v41 = v103;
  (*(v115 + 16))(v103, v38 + *(v105 + 32), v116);
  sub_21915A6EC(v38, type metadata accessor for CuratedMagazineFeedGroupConfigData);
  sub_219BF1724();
  (*(v40 + 8))(v41, v39);
  v42 = sub_219BF5AB4();

  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_6;
    }

LABEL_60:

    (*(v112 + 1))(v111, v113);
    return v36;
  }

  v43 = sub_219BF7214();
  if (!v43)
  {
    goto LABEL_60;
  }

LABEL_6:
  v117 = v36;
  result = sub_21870B65C(0, v43 & ~(v43 >> 63), 0);
  if ((v43 & 0x8000000000000000) == 0)
  {
    v45 = 0;
    v36 = v117;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v45, v42);
      }

      else
      {
      }

      v46 = sub_219BF16A4();
      v48 = v47;

      v117 = v36;
      v50 = *(v36 + 16);
      v49 = *(v36 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_21870B65C((v49 > 1), v50 + 1, 1);
        v36 = v117;
      }

      ++v45;
      *(v36 + 16) = v50 + 1;
      v51 = v36 + 16 * v50;
      *(v51 + 32) = v46;
      *(v51 + 40) = v48;
    }

    while (v43 != v45);
    (*(v112 + 1))(v111, v113);
LABEL_52:

    return v36;
  }

LABEL_65:
  __break(1u);
  return result;
}

char *sub_21915379C(unint64_t a1)
{
  v80 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v80);
  v81 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58();
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v5);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4();
  v9 = v8;
  v82 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF1934();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v79 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v79 - v19;
  v21 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = a1;
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1 >> 60;
  v31 = MEMORY[0x277D84F90];
  if (v30 > 3)
  {
    if ((v30 - 4) < 9)
    {
      return v31;
    }

    if (v30 != 13)
    {
      v77 = *((v27 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v78 = sub_21915379C(v77);

      return v78;
    }

    v48 = swift_projectBox();
    (*(v84 + 2))(v83, v48, v85);
    v49 = v81;
    sub_219BEDD14();
    v51 = v86;
    v50 = v87;
    (*(v86 + 16))(v15, v49 + *(v80 + 32), v87);
    sub_21915A6EC(v49, type metadata accessor for CuratedMagazineFeedGroupConfigData);
    sub_219BF1724();
    (*(v51 + 8))(v15, v50);
    v52 = sub_219BF5A94();

    if (v52 >> 62)
    {
      v53 = sub_219BF7214();
      if (v53)
      {
LABEL_21:
        v88 = v31;
        result = sub_21870B65C(0, v53 & ~(v53 >> 63), 0);
        if ((v53 & 0x8000000000000000) == 0)
        {
          v54 = 0;
          v31 = v88;
          do
          {
            if ((v52 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CECE0F0](v54, v52);
            }

            else
            {
            }

            v55 = sub_219BF1374();
            v57 = v56;

            v88 = v31;
            v59 = *(v31 + 16);
            v58 = *(v31 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_21870B65C((v58 > 1), v59 + 1, 1);
              v31 = v88;
            }

            ++v54;
            *(v31 + 16) = v59 + 1;
            v60 = v31 + 16 * v59;
            *(v60 + 32) = v55;
            *(v60 + 40) = v57;
          }

          while (v53 != v54);
LABEL_17:
          (*(v84 + 1))(v83, v85);
LABEL_42:

          return v31;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        goto LABEL_21;
      }
    }

LABEL_48:

    (*(v84 + 1))(v83, v85);
    return v31;
  }

  v84 = v11;
  v85 = v9;
  if (v30 < 2)
  {
    return v31;
  }

  if (v30 != 2)
  {
    v61 = swift_projectBox();
    v62 = v82;
    v64 = v84;
    v63 = v85;
    (*(v82 + 16))(v84, v61, v85);
    sub_219BEDD14();
    v65 = *(v5 + 20);
    v67 = v86;
    v66 = v87;
    (*(v86 + 16))(v18, &v7[v65], v87);
    sub_21915A6EC(v7, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData);
    sub_219BF1724();
    (*(v67 + 8))(v18, v66);
    v68 = sub_219BF5A94();

    if (v68 >> 62)
    {
      v69 = sub_219BF7214();
      if (v69)
      {
LABEL_32:
        v88 = v31;
        result = sub_21870B65C(0, v69 & ~(v69 >> 63), 0);
        if ((v69 & 0x8000000000000000) == 0)
        {
          v70 = 0;
          v31 = v88;
          do
          {
            if ((v68 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CECE0F0](v70, v68);
            }

            else
            {
            }

            v71 = sub_219BF1374();
            v73 = v72;

            v88 = v31;
            v75 = *(v31 + 16);
            v74 = *(v31 + 24);
            if (v75 >= v74 >> 1)
            {
              sub_21870B65C((v74 > 1), v75 + 1, 1);
              v31 = v88;
            }

            ++v70;
            *(v31 + 16) = v75 + 1;
            v76 = v31 + 16 * v75;
            *(v76 + 32) = v71;
            *(v76 + 40) = v73;
          }

          while (v69 != v70);
          (*(v82 + 8))(v84, v85);
          goto LABEL_42;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v69)
      {
        goto LABEL_32;
      }
    }

    (*(v62 + 8))(v64, v63);
    return v31;
  }

  v33 = v25;
  v34 = v26;
  v35 = v29;
  v36 = swift_projectBox();
  v84 = v34;
  (*(v34 + 2))(v35, v36, v33);
  v85 = v33;
  v83 = v35;
  sub_219BEDD14();
  v38 = v86;
  v37 = v87;
  (*(v86 + 16))(v20, &v23[*(v21 + 20)], v87);
  sub_21915A6EC(v23, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData);
  sub_219BF1724();
  (*(v38 + 8))(v20, v37);
  v39 = sub_219BF5A94();

  if (v39 >> 62)
  {
    v40 = sub_219BF7214();
    if (!v40)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_48;
    }
  }

  v88 = v31;
  result = sub_21870B65C(0, v40 & ~(v40 >> 63), 0);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v41 = 0;
    v31 = v88;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v41, v39);
      }

      else
      {
      }

      v42 = sub_219BF1374();
      v44 = v43;

      v88 = v31;
      v46 = *(v31 + 16);
      v45 = *(v31 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_21870B65C((v45 > 1), v46 + 1, 1);
        v31 = v88;
      }

      ++v41;
      *(v31 + 16) = v46 + 1;
      v47 = v31 + 16 * v46;
      *(v47 + 32) = v42;
      *(v47 + 40) = v44;
    }

    while (v40 != v41);
    goto LABEL_17;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_21915410C(unint64_t a1)
{
  v2 = a1 >> 60;
  if ((a1 >> 60) <= 7)
  {
    if (v2 > 2)
    {
      if ((v2 - 4) >= 4)
      {
        v3 = &unk_282A24508;

        return sub_2194B37A8(v3);
      }
    }

    else if (v2)
    {
      if (v2 == 1)
      {
        v3 = &unk_282A244B8;
      }

      else
      {
        v3 = &unk_282A244E0;
      }

      return sub_2194B37A8(v3);
    }

    return MEMORY[0x277D84FA0];
  }

  if (v2 <= 10)
  {
    if (v2 == 8)
    {
      v3 = &unk_282A24530;
    }

    else if (v2 == 9)
    {
      v3 = &unk_282A24558;
    }

    else
    {
      v3 = &unk_282A24580;
    }

    return sub_2194B37A8(v3);
  }

  if (v2 <= 12)
  {
    if (v2 == 11)
    {
      v3 = &unk_282A245A8;

      return sub_2194B37A8(v3);
    }

    return MEMORY[0x277D84FA0];
  }

  if (v2 == 13)
  {
    v3 = &unk_282A245D0;

    return sub_2194B37A8(v3);
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

  v6 = sub_21915410C(v5);

  return v6;
}

uint64_t sub_219154278@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2191542CC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_219154324(uint64_t a1)
{
  v2 = sub_21915C044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219154360(uint64_t a1)
{
  v2 = sub_21915C044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21915439C(uint64_t a1)
{
  v95 = a1;
  sub_2186ECF58();
  v93 = *(v1 - 8);
  v94 = v1;
  MEMORY[0x28223BE20](v1);
  v92 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC();
  v90 = *(v3 - 8);
  v91 = v3;
  MEMORY[0x28223BE20](v3);
  v89 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v86 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8();
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x28223BE20](v7);
  v83 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0();
  v81 = *(v9 - 8);
  v82 = v9;
  MEMORY[0x28223BE20](v9);
  v80 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C();
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x28223BE20](v11);
  v77 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670();
  v75 = *(v13 - 8);
  v76 = v13;
  MEMORY[0x28223BE20](v13);
  v74 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30();
  v73 = v15;
  v72 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v71 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C();
  v70 = v17;
  v69 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v68 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4();
  v67 = v19;
  v66 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v65 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80();
  v62 = v21;
  v64 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594();
  v25 = v24;
  v63 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v61 - v31;
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698);
  v34 = v33;
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v38 = &v61 - v37;
  switch(v36 >> 60)
  {
    case 1uLL:
      v54 = swift_projectBox();
      v55 = v63;
      (*(v63 + 16))(v27, v54, v25);
      sub_219BEDD64();
      return (*(v55 + 8))(v27, v25);
    case 2uLL:
      v49 = swift_projectBox();
      v50 = v64;
      v51 = v62;
      (*(v64 + 16))(v23, v49, v62);
      sub_219BEDD64();
      return (*(v50 + 8))(v23, v51);
    case 3uLL:
      v52 = swift_projectBox();
      v44 = v66;
      v43 = v65;
      v45 = v67;
      (*(v66 + 16))(v65, v52, v67);
      goto LABEL_17;
    case 4uLL:
      v46 = swift_projectBox();
      (*(v30 + 16))(v32, v46, v29);
      sub_219BEDD64();
      return (*(v30 + 8))(v32, v29);
    case 5uLL:
      v56 = swift_projectBox();
      v44 = v69;
      v43 = v68;
      v45 = v70;
      (*(v69 + 16))(v68, v56, v70);
      goto LABEL_17;
    case 6uLL:
      v58 = swift_projectBox();
      v44 = v72;
      v43 = v71;
      v45 = v73;
      (*(v72 + 16))(v71, v58, v73);
      goto LABEL_17;
    case 7uLL:
      v53 = swift_projectBox();
      v44 = v75;
      v45 = v76;
      v43 = v74;
      (*(v75 + 16))(v74, v53, v76);
      goto LABEL_17;
    case 8uLL:
      v60 = swift_projectBox();
      v43 = v77;
      v44 = v78;
      v45 = v79;
      (*(v78 + 16))(v77, v60, v79);
      goto LABEL_17;
    case 9uLL:
      v48 = swift_projectBox();
      v43 = v80;
      v44 = v81;
      v45 = v82;
      (*(v81 + 16))(v80, v48, v82);
      goto LABEL_17;
    case 0xAuLL:
      v59 = swift_projectBox();
      v43 = v83;
      v44 = v84;
      v45 = v85;
      (*(v84 + 16))(v83, v59, v85);
      goto LABEL_17;
    case 0xBuLL:
      v42 = swift_projectBox();
      v43 = v86;
      v44 = v87;
      v45 = v88;
      (*(v87 + 16))(v86, v42, v88);
      goto LABEL_17;
    case 0xCuLL:
      v47 = swift_projectBox();
      v43 = v89;
      v44 = v90;
      v45 = v91;
      (*(v90 + 16))(v89, v47, v91);
      goto LABEL_17;
    case 0xDuLL:
      v57 = swift_projectBox();
      v43 = v92;
      v44 = v93;
      v45 = v94;
      (*(v93 + 16))(v92, v57, v94);
LABEL_17:
      sub_219BEDD64();
      result = (*(v44 + 8))(v43, v45);
      break;
    case 0xEuLL:
      v41 = *((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      sub_21915439C(v95, v41);

      break;
    default:
      v39 = swift_projectBox();
      (*(v35 + 16))(v38, v39, v34);
      sub_219BEDD64();
      result = (*(v35 + 8))(v38, v34);
      break;
  }

  return result;
}

uint64_t sub_219154EDC(uint64_t a1)
{
  sub_2186ECF58();
  v96 = *(v2 - 8);
  v97 = v2;
  MEMORY[0x28223BE20](v2);
  v95 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC();
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x28223BE20](v4);
  v92 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748();
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v89 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8();
  v87 = *(v8 - 8);
  v88 = v8;
  MEMORY[0x28223BE20](v8);
  v86 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0();
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x28223BE20](v10);
  v83 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670();
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x28223BE20](v12);
  v80 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C();
  v78 = *(v14 - 8);
  v79 = v14;
  MEMORY[0x28223BE20](v14);
  v77 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30();
  v76 = v16;
  v75 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v74 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C();
  v73 = v18;
  v72 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v71 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4();
  v70 = v20;
  v69 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v66 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80();
  v23 = v22;
  v68 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594();
  v27 = v26;
  v67 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v34 = &v65 - v33;
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698);
  v36 = v35;
  v37 = *(v35 - 8);
  v38 = MEMORY[0x28223BE20](a1);
  v40 = &v65 - v39;
  switch(v38 >> 60)
  {
    case 1uLL:
      v61 = swift_projectBox();
      v62 = v67;
      (*(v67 + 16))(v29, v61, v27);
      v43 = sub_219BEDCA4();
      (*(v62 + 8))(v29, v27);
      return v43;
    case 2uLL:
      v54 = swift_projectBox();
      v55 = v68;
      (*(v68 + 16))(v25, v54, v23);
      v43 = sub_219BEDCA4();
      (*(v55 + 8))(v25, v23);
      return v43;
    case 3uLL:
      v56 = swift_projectBox();
      v49 = v69;
      v57 = *(v69 + 16);
      v48 = v66;
      v58 = v66;
      v59 = &v98;
      goto LABEL_15;
    case 4uLL:
      v51 = swift_projectBox();
      (*(v32 + 16))(v34, v51, v31);
      v43 = sub_219BEDCA4();
      (*(v32 + 8))(v34, v31);
      return v43;
    case 5uLL:
      v56 = swift_projectBox();
      v49 = v72;
      v57 = *(v72 + 16);
      v48 = v71;
      v58 = v71;
      v59 = &v99;
      goto LABEL_15;
    case 6uLL:
      v56 = swift_projectBox();
      v49 = v75;
      v57 = *(v75 + 16);
      v48 = v74;
      v58 = v74;
      v59 = &v100;
LABEL_15:
      v50 = *(v59 - 32);
      goto LABEL_18;
    case 7uLL:
      v60 = swift_projectBox();
      v48 = v80;
      v49 = v81;
      v50 = v82;
      (*(v81 + 16))(v80, v60, v82);
      goto LABEL_19;
    case 8uLL:
      v56 = swift_projectBox();
      v48 = v77;
      v49 = v78;
      v57 = *(v78 + 16);
      v58 = v77;
      v50 = v79;
LABEL_18:
      v57(v58, v56, v50);
      goto LABEL_19;
    case 9uLL:
      v53 = swift_projectBox();
      v48 = v83;
      v49 = v84;
      v50 = v85;
      (*(v84 + 16))(v83, v53, v85);
      goto LABEL_19;
    case 0xAuLL:
      v64 = swift_projectBox();
      v48 = v86;
      v49 = v87;
      v50 = v88;
      (*(v87 + 16))(v86, v64, v88);
      goto LABEL_19;
    case 0xBuLL:
      v47 = swift_projectBox();
      v48 = v89;
      v49 = v90;
      v50 = v91;
      (*(v90 + 16))(v89, v47, v91);
      goto LABEL_19;
    case 0xCuLL:
      v52 = swift_projectBox();
      v48 = v92;
      v49 = v93;
      v50 = v94;
      (*(v93 + 16))(v92, v52, v94);
      goto LABEL_19;
    case 0xDuLL:
      v63 = swift_projectBox();
      v48 = v95;
      v49 = v96;
      v50 = v97;
      (*(v96 + 16))(v95, v63, v97);
LABEL_19:
      v43 = sub_219BEDCA4();
      (*(v49 + 8))(v48, v50);
      return v43;
    case 0xEuLL:
      v44 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v45 = sub_219154EDC(v44);

      return v45;
    default:
      v41 = swift_projectBox();
      (*(v37 + 16))(v40, v41, v36);
      v42 = sub_219BEDCA4();
      (*(v37 + 8))(v40, v36);
      return v42;
  }
}

uint64_t sub_2191559E0(uint64_t a1)
{
  sub_2186ECF58();
  v93 = *(v2 - 8);
  v94 = v2;
  MEMORY[0x28223BE20](v2);
  v92 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC();
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x28223BE20](v4);
  v89 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v86 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8();
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  v83 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0();
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x28223BE20](v10);
  v80 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C();
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x28223BE20](v12);
  v77 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670();
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x28223BE20](v14);
  v74 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30();
  v73 = v16;
  v72 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v71 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C();
  v70 = v18;
  v69 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v68 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574);
  v67 = v20;
  v66 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v65 = &v62 - v21;
  sub_2186EC3A4();
  v23 = v22;
  v64 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80();
  v27 = v26;
  v63 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594();
  v31 = v30;
  v62 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698);
  v35 = v34;
  v36 = *(v34 - 8);
  v37 = MEMORY[0x28223BE20](a1);
  v39 = &v62 - v38;
  v40 = 0;
  switch(v37 >> 60)
  {
    case 1uLL:
      v51 = swift_projectBox();
      v52 = v62;
      (*(v62 + 16))(v33, v51, v31);
      v40 = sub_219BEDD54();
      (*(v52 + 8))(v33, v31);
      return v40;
    case 2uLL:
      v53 = swift_projectBox();
      v54 = v63;
      (*(v63 + 16))(v29, v53, v27);
      v40 = sub_219BEDD54();
      (*(v54 + 8))(v29, v27);
      return v40;
    case 3uLL:
      v47 = swift_projectBox();
      v48 = v64;
      (*(v64 + 16))(v25, v47, v23);
      v40 = sub_219BEDD54();
      (*(v48 + 8))(v25, v23);
      return v40;
    case 4uLL:
      v56 = swift_projectBox();
      v44 = v66;
      v43 = v65;
      v45 = v67;
      (*(v66 + 16))(v65, v56, v67);
      goto LABEL_16;
    case 5uLL:
      v58 = swift_projectBox();
      v44 = v69;
      v43 = v68;
      v45 = v70;
      (*(v69 + 16))(v68, v58, v70);
      goto LABEL_16;
    case 6uLL:
      v55 = swift_projectBox();
      v44 = v72;
      v43 = v71;
      v45 = v73;
      (*(v72 + 16))(v71, v55, v73);
      goto LABEL_16;
    case 7uLL:
      v60 = swift_projectBox();
      v43 = v74;
      v44 = v75;
      v45 = v76;
      (*(v75 + 16))(v74, v60, v76);
      goto LABEL_16;
    case 8uLL:
      v50 = swift_projectBox();
      v43 = v77;
      v44 = v78;
      v45 = v79;
      (*(v78 + 16))(v77, v50, v79);
      goto LABEL_16;
    case 9uLL:
      v59 = swift_projectBox();
      v43 = v80;
      v44 = v81;
      v45 = v82;
      (*(v81 + 16))(v80, v59, v82);
      goto LABEL_16;
    case 0xAuLL:
      v46 = swift_projectBox();
      v43 = v83;
      v44 = v84;
      v45 = v85;
      (*(v84 + 16))(v83, v46, v85);
      goto LABEL_16;
    case 0xBuLL:
      v49 = swift_projectBox();
      v43 = v86;
      v44 = v87;
      v45 = v88;
      (*(v87 + 16))(v86, v49, v88);
      goto LABEL_16;
    case 0xCuLL:
      v57 = swift_projectBox();
      v43 = v89;
      v44 = v90;
      v45 = v91;
      (*(v90 + 16))(v89, v57, v91);
      goto LABEL_16;
    case 0xDuLL:
      v42 = swift_projectBox();
      v43 = v92;
      v44 = v93;
      v45 = v94;
      (*(v93 + 16))(v92, v42, v94);
LABEL_16:
      v40 = sub_219BEDD54();
      (*(v44 + 8))(v43, v45);
      break;
    case 0xEuLL:
      return v40;
    default:
      v41 = swift_projectBox();
      (*(v36 + 16))(v39, v41, v35);
      v40 = sub_219BEDD54();
      (*(v36 + 8))(v39, v35);
      break;
  }

  return v40;
}

uint64_t sub_2191564A4(uint64_t a1)
{
  v2 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8);
  v165 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58();
  v164 = v4;
  v163 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v162 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for NewspaperMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v161);
  v160 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC();
  v159 = v7;
  v158 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v157 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v9 - 8);
  v156 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748();
  v155 = v11;
  v154 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v153 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TrendingMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v13 - 8);
  v152 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8();
  v151 = v15;
  v150 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v149 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TopicMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v17 - 8);
  v148 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0();
  v147 = v19;
  v146 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v145 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v21 - 8);
  v144 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C();
  v143 = v23;
  v142 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v141 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PaywallMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v25 - 8);
  v140 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670();
  v139 = v27;
  v138 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v137 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for NewIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v29 - 8);
  v136 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30();
  v135 = v31;
  v134 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v133 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v33 - 8);
  v132 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C();
  v131 = v35;
  v130 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v129 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574);
  v128 = v37;
  v127 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v126 = &v118 - v38;
  v125 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v125);
  v124 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4();
  v123 = v40;
  v122 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v121 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v120);
  v43 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80();
  v45 = v44;
  v119 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v118 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v48);
  v50 = &v118 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594();
  v52 = v51;
  v118 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v118 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698);
  v56 = v55;
  v57 = *(v55 - 8);
  v58 = MEMORY[0x28223BE20](a1);
  v60 = &v118 - v59;
  switch(v58 >> 60)
  {
    case 1uLL:
      v96 = swift_projectBox();
      v97 = v118;
      (*(v118 + 16))(v54, v96, v52);
      sub_219BEDD14();
      (*(v97 + 8))(v54, v52);
      v62 = v50[*(v48 + 32)];
      v86 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData;
      v87 = v50;
      goto LABEL_18;
    case 2uLL:
      v84 = swift_projectBox();
      v85 = v119;
      (*(v119 + 16))(v47, v84, v45);
      sub_219BEDD14();
      (*(v85 + 8))(v47, v45);
      v62 = v43[*(v120 + 32)];
      v86 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData;
      v87 = v43;
      goto LABEL_18;
    case 3uLL:
      v88 = swift_projectBox();
      v89 = v122;
      v90 = v121;
      v91 = v123;
      (*(v122 + 16))(v121, v88, v123);
      v70 = v124;
      sub_219BEDD14();
      (*(v89 + 8))(v90, v91);
      v62 = v70[*(v125 + 32)];
      v71 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 4uLL:
      v72 = swift_projectBox();
      v73 = v127;
      v74 = v126;
      v75 = v128;
      (*(v127 + 16))(v126, v72, v128);
      sub_219BEDD14();
      (*(v73 + 8))(v74, v75);
      v171 = v168;
      *v172 = *v169;
      *&v172[10] = *&v169[10];
      v170[0] = v166;
      v170[1] = v167;
      sub_21915A74C(v170);
      return v172[25];
    case 5uLL:
      v98 = swift_projectBox();
      v99 = v130;
      v100 = v129;
      v101 = v131;
      (*(v130 + 16))(v129, v98, v131);
      v70 = v132;
      sub_219BEDD14();
      (*(v99 + 8))(v100, v101);
      v62 = v70[25];
      v71 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 6uLL:
      v106 = swift_projectBox();
      v107 = v134;
      v108 = v133;
      v109 = v135;
      (*(v134 + 16))(v133, v106, v135);
      v70 = v136;
      sub_219BEDD14();
      (*(v107 + 8))(v108, v109);
      v62 = v70[2];
      v71 = type metadata accessor for NewIssueMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 7uLL:
      v92 = swift_projectBox();
      v93 = v138;
      v94 = v137;
      v95 = v139;
      (*(v138 + 16))(v137, v92, v139);
      v70 = v140;
      sub_219BEDD14();
      (*(v93 + 8))(v94, v95);
      v62 = v70[2];
      v71 = type metadata accessor for PaywallMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 8uLL:
      v114 = swift_projectBox();
      v115 = v142;
      v116 = v141;
      v117 = v143;
      (*(v142 + 16))(v141, v114, v143);
      v70 = v144;
      sub_219BEDD14();
      (*(v115 + 8))(v116, v117);
      v62 = v70[57];
      v71 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 9uLL:
      v80 = swift_projectBox();
      v81 = v146;
      v82 = v145;
      v83 = v147;
      (*(v146 + 16))(v145, v80, v147);
      v70 = v148;
      sub_219BEDD14();
      (*(v81 + 8))(v82, v83);
      v62 = v70[2];
      v71 = type metadata accessor for TopicMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xAuLL:
      v110 = swift_projectBox();
      v111 = v150;
      v112 = v149;
      v113 = v151;
      (*(v150 + 16))(v149, v110, v151);
      v70 = v152;
      sub_219BEDD14();
      (*(v111 + 8))(v112, v113);
      v62 = v70[2];
      v71 = type metadata accessor for TrendingMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xBuLL:
      v66 = swift_projectBox();
      v67 = v154;
      v68 = v153;
      v69 = v155;
      (*(v154 + 16))(v153, v66, v155);
      v70 = v156;
      sub_219BEDD14();
      (*(v67 + 8))(v68, v69);
      v62 = v70[2];
      v71 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xCuLL:
      v76 = swift_projectBox();
      v77 = v158;
      v78 = v157;
      v79 = v159;
      (*(v158 + 16))(v157, v76, v159);
      v70 = v160;
      sub_219BEDD14();
      (*(v77 + 8))(v78, v79);
      v62 = v70[*(v161 + 40)];
      v71 = type metadata accessor for NewspaperMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xDuLL:
      v102 = swift_projectBox();
      v103 = v163;
      v104 = v162;
      v105 = v164;
      (*(v163 + 16))(v162, v102, v164);
      v70 = v165;
      sub_219BEDD14();
      (*(v103 + 8))(v104, v105);
      v62 = v70[2];
      v71 = type metadata accessor for CuratedMagazineFeedGroupConfigData;
LABEL_17:
      v86 = v71;
      v87 = v70;
LABEL_18:
      sub_21915A6EC(v87, v86);
      return v62;
    case 0xEuLL:
      v63 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v64 = sub_2191564A4(v63);

      return v64 & 1;
    default:
      v61 = swift_projectBox();
      (*(v57 + 16))(v60, v61, v56);
      sub_219BEDD14();
      (*(v57 + 8))(v60, v56);

      return BYTE1(v171);
  }
}

uint64_t sub_2191577D4@<X0>(uint64_t a1@<X8>)
{
  v162 = a1;
  v160 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v160);
  v161 = &v116 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58();
  v158 = *(v2 - 8);
  v159 = v2;
  MEMORY[0x28223BE20](v2);
  v156 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for NewspaperMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v155);
  v157 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC();
  v153 = *(v5 - 8);
  v154 = v5;
  MEMORY[0x28223BE20](v5);
  v151 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v150);
  v152 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748();
  v148 = *(v8 - 8);
  v149 = v8;
  MEMORY[0x28223BE20](v8);
  v146 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for TrendingMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v145);
  v147 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8();
  v143 = *(v11 - 8);
  v144 = v11;
  MEMORY[0x28223BE20](v11);
  v141 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for TopicMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v140);
  v142 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0();
  v139 = v14;
  v138 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v136 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v135);
  v137 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C();
  v134 = v17;
  v133 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v131 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for NewIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v130);
  v132 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30();
  v129 = v20;
  v128 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v126 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v125);
  v127 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C();
  v124 = v23;
  v123 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v121 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v120);
  v122 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4();
  v119 = v26;
  v118 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v29);
  v31 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80();
  v33 = v32;
  v117 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v36);
  v38 = &v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594();
  v40 = v39;
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v44 = &v116 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(v42 >> 60)
  {
    case 1uLL:
      v78 = swift_projectBox();
      (*(v41 + 16))(v44, v78, v40);
      sub_219BEDD14();
      (*(v41 + 8))(v44, v40);
      v79 = *(v36 + 28);
      v80 = sub_219BEF554();
      (*(*(v80 - 8) + 16))(v162, &v38[v79], v80);
      v64 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData;
      v65 = v38;
      goto LABEL_20;
    case 2uLL:
      v60 = swift_projectBox();
      v61 = v117;
      (*(v117 + 16))(v35, v60, v33);
      sub_219BEDD14();
      (*(v61 + 8))(v35, v33);
      v62 = *(v29 + 28);
      v63 = sub_219BEF554();
      (*(*(v63 - 8) + 16))(v162, &v31[v62], v63);
      v64 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData;
      v65 = v31;
      goto LABEL_20;
    case 3uLL:
      v87 = swift_projectBox();
      v88 = v118;
      v89 = v119;
      (*(v118 + 16))(v28, v87, v119);
      v56 = v122;
      sub_219BEDD14();
      (*(v88 + 8))(v28, v89);
      v90 = *(v120 + 28);
      v91 = sub_219BEF554();
      (*(*(v91 - 8) + 16))(v162, &v56[v90], v91);
      v59 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 5uLL:
      v98 = swift_projectBox();
      v99 = v123;
      v100 = v121;
      v101 = v124;
      (*(v123 + 16))(v121, v98, v124);
      v56 = v127;
      sub_219BEDD14();
      (*(v99 + 8))(v100, v101);
      v102 = *(v125 + 32);
      v103 = sub_219BEF554();
      (*(*(v103 - 8) + 16))(v162, &v56[v102], v103);
      v59 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 6uLL:
      v81 = swift_projectBox();
      v82 = v128;
      v83 = v126;
      v84 = v129;
      (*(v128 + 16))(v126, v81, v129);
      v56 = v132;
      sub_219BEDD14();
      (*(v82 + 8))(v83, v84);
      v85 = *(v130 + 28);
      v86 = sub_219BEF554();
      (*(*(v86 - 8) + 16))(v162, &v56[v85], v86);
      v59 = type metadata accessor for NewIssueMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 8uLL:
      v110 = swift_projectBox();
      v111 = v133;
      v112 = v131;
      v113 = v134;
      (*(v133 + 16))(v131, v110, v134);
      v56 = v137;
      sub_219BEDD14();
      (*(v111 + 8))(v112, v113);
      v114 = *(v135 + 40);
      v115 = sub_219BEF554();
      (*(*(v115 - 8) + 16))(v162, &v56[v114], v115);
      v59 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 9uLL:
      v72 = swift_projectBox();
      v73 = v138;
      v74 = v136;
      v75 = v139;
      (*(v138 + 16))(v136, v72, v139);
      v56 = v142;
      sub_219BEDD14();
      (*(v73 + 8))(v74, v75);
      v76 = *(v140 + 28);
      v77 = sub_219BEF554();
      (*(*(v77 - 8) + 16))(v162, &v56[v76], v77);
      v59 = type metadata accessor for TopicMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 0xAuLL:
      v104 = swift_projectBox();
      v106 = v143;
      v105 = v144;
      v107 = v141;
      (*(v143 + 16))(v141, v104, v144);
      v56 = v147;
      sub_219BEDD14();
      (*(v106 + 8))(v107, v105);
      v108 = *(v145 + 28);
      v109 = sub_219BEF554();
      (*(*(v109 - 8) + 16))(v162, &v56[v108], v109);
      v59 = type metadata accessor for TrendingMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 0xBuLL:
      v52 = swift_projectBox();
      v54 = v148;
      v53 = v149;
      v55 = v146;
      (*(v148 + 16))(v146, v52, v149);
      v56 = v152;
      sub_219BEDD14();
      (*(v54 + 8))(v55, v53);
      v57 = *(v150 + 28);
      v58 = sub_219BEF554();
      (*(*(v58 - 8) + 16))(v162, &v56[v57], v58);
      v59 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 0xCuLL:
      v66 = swift_projectBox();
      v68 = v153;
      v67 = v154;
      v69 = v151;
      (*(v153 + 16))(v151, v66, v154);
      v56 = v157;
      sub_219BEDD14();
      (*(v68 + 8))(v69, v67);
      v70 = *(v155 + 44);
      v71 = sub_219BEF554();
      (*(*(v71 - 8) + 16))(v162, &v56[v70], v71);
      v59 = type metadata accessor for NewspaperMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 0xDuLL:
      v92 = swift_projectBox();
      v94 = v158;
      v93 = v159;
      v95 = v156;
      (*(v158 + 16))(v156, v92, v159);
      v56 = v161;
      sub_219BEDD14();
      (*(v94 + 8))(v95, v93);
      v96 = *(v160 + 28);
      v97 = sub_219BEF554();
      (*(*(v97 - 8) + 16))(v162, &v56[v96], v97);
      v59 = type metadata accessor for CuratedMagazineFeedGroupConfigData;
LABEL_19:
      v64 = v59;
      v65 = v56;
LABEL_20:
      result = sub_21915A6EC(v65, v64);
      break;
    case 0xEuLL:
      v51 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      sub_2191577D4(v51);

      break;
    default:
      v45 = *MEMORY[0x277D32640];
      v46 = sub_219BEF554();
      v47 = *(*(v46 - 8) + 104);
      v48 = v46;
      v49 = v162;

      result = v47(v49, v45, v48);
      break;
  }

  return result;
}

uint64_t sub_219158A70@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v100 = a3;
  v102 = a2;
  v103 = a4;
  sub_2186ECF58();
  v101 = v5;
  v99 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v98 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC();
  v96 = *(v7 - 8);
  v97 = v7;
  MEMORY[0x28223BE20](v7);
  v95 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748();
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x28223BE20](v9);
  v92 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8();
  v90 = *(v11 - 8);
  v91 = v11;
  MEMORY[0x28223BE20](v11);
  v89 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0();
  v87 = *(v13 - 8);
  v88 = v13;
  MEMORY[0x28223BE20](v13);
  v86 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C();
  v84 = *(v15 - 8);
  v85 = v15;
  MEMORY[0x28223BE20](v15);
  v83 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670();
  v82 = v17;
  v81 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v80 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30();
  v79 = v19;
  v78 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v77 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C();
  v76 = v21;
  v75 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v74 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574);
  v73 = v23;
  v72 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  sub_2186EC3A4();
  v27 = v26;
  v71 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80();
  v31 = v30;
  v70 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594();
  v35 = v34;
  v69 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698);
  v39 = v38;
  v40 = *(v38 - 8);
  v41 = MEMORY[0x28223BE20](a1);
  v43 = &v69 - v42;
  switch(v41 >> 60)
  {
    case 1uLL:
      v65 = swift_projectBox();
      v66 = v69;
      (*(v69 + 16))(v37, v65, v35);
      v102(v35);
      return (*(v66 + 8))(v37, v35);
    case 2uLL:
      v57 = swift_projectBox();
      v58 = v70;
      (*(v70 + 16))(v33, v57, v31);
      v102(v31);
      return (*(v58 + 8))(v33, v31);
    case 3uLL:
      v59 = swift_projectBox();
      v60 = v71;
      (*(v71 + 16))(v29, v59, v27);
      v102(v27);
      return (*(v60 + 8))(v29, v27);
    case 4uLL:
      v51 = swift_projectBox();
      v52 = v72;
      v50 = v73;
      (*(v72 + 16))(v25, v51, v73);
      v102(v50);
      v53 = *(v52 + 8);
      v54 = v25;
      goto LABEL_22;
    case 5uLL:
      v61 = swift_projectBox();
      v49 = v75;
      v62 = *(v75 + 16);
      v48 = v74;
      v63 = v74;
      v64 = &v104;
      goto LABEL_17;
    case 6uLL:
      v61 = swift_projectBox();
      v49 = v78;
      v62 = *(v78 + 16);
      v48 = v77;
      v63 = v77;
      v64 = &v105;
      goto LABEL_17;
    case 7uLL:
      v61 = swift_projectBox();
      v49 = v81;
      v62 = *(v81 + 16);
      v48 = v80;
      v63 = v80;
      v64 = &v106;
LABEL_17:
      v50 = *(v64 - 32);
      goto LABEL_20;
    case 8uLL:
      v61 = swift_projectBox();
      v48 = v83;
      v49 = v84;
      v62 = *(v84 + 16);
      v63 = v83;
      v50 = v85;
LABEL_20:
      v62(v63, v61, v50);
      goto LABEL_21;
    case 9uLL:
      v56 = swift_projectBox();
      v48 = v86;
      v49 = v87;
      v50 = v88;
      (*(v87 + 16))(v86, v56, v88);
      goto LABEL_21;
    case 0xAuLL:
      v68 = swift_projectBox();
      v48 = v89;
      v49 = v90;
      v50 = v91;
      (*(v90 + 16))(v89, v68, v91);
      goto LABEL_21;
    case 0xBuLL:
      v47 = swift_projectBox();
      v48 = v92;
      v49 = v93;
      v50 = v94;
      (*(v93 + 16))(v92, v47, v94);
      goto LABEL_21;
    case 0xCuLL:
      v55 = swift_projectBox();
      v48 = v95;
      v49 = v96;
      v50 = v97;
      (*(v96 + 16))(v95, v55, v97);
      goto LABEL_21;
    case 0xDuLL:
      v67 = swift_projectBox();
      v48 = v98;
      v49 = v99;
      v50 = v101;
      (*(v99 + 16))(v98, v67, v101);
LABEL_21:
      v102(v50);
      v53 = *(v49 + 8);
      v54 = v48;
LABEL_22:
      result = v53(v54, v50);
      break;
    case 0xEuLL:
      v46 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v100(v46);

      break;
    default:
      v44 = swift_projectBox();
      (*(v40 + 16))(v43, v44, v39);
      v102(v39);
      result = (*(v40 + 8))(v43, v39);
      break;
  }

  return result;
}

uint64_t sub_219159680(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v103 = a3;
  v106 = a2;
  sub_2186ECF58();
  v104 = *(v4 - 8);
  v105 = v4;
  MEMORY[0x28223BE20](v4);
  v102 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC();
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x28223BE20](v6);
  v99 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x28223BE20](v8);
  v96 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x28223BE20](v10);
  v93 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0();
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x28223BE20](v12);
  v90 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C();
  v88 = *(v14 - 8);
  v89 = v14;
  MEMORY[0x28223BE20](v14);
  v87 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670();
  v86 = v16;
  v85 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v84 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30();
  v83 = v18;
  v82 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v81 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C();
  v80 = v20;
  v79 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v78 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574);
  v77 = v22;
  v76 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  sub_2186EC3A4();
  v26 = v25;
  v75 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80();
  v30 = v29;
  v74 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594();
  v34 = v33;
  v73 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698);
  v38 = v37;
  v39 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](a1);
  v42 = &v72 - v41;
  switch(v40 >> 60)
  {
    case 1uLL:
      v64 = swift_projectBox();
      v65 = v73;
      (*(v73 + 16))(v36, v64, v34);
      v46 = v106(v34);
      v55 = *(v65 + 8);
      v56 = v36;
      goto LABEL_20;
    case 2uLL:
      v59 = swift_projectBox();
      v60 = v74;
      (*(v74 + 16))(v32, v59, v30);
      v46 = v106(v30);
      (*(v60 + 8))(v32, v30);
      return v46;
    case 3uLL:
      v61 = swift_projectBox();
      v62 = v75;
      (*(v75 + 16))(v28, v61, v26);
      v46 = v106(v26);
      (*(v62 + 8))(v28, v26);
      return v46;
    case 4uLL:
      v53 = swift_projectBox();
      v54 = v76;
      v34 = v77;
      (*(v76 + 16))(v24, v53, v77);
      v46 = v106(v34);
      v55 = *(v54 + 8);
      v56 = v24;
      goto LABEL_20;
    case 5uLL:
      v66 = swift_projectBox();
      v52 = v79;
      v67 = *(v79 + 16);
      v51 = v78;
      v68 = v78;
      v69 = &v107;
      goto LABEL_15;
    case 6uLL:
      v66 = swift_projectBox();
      v52 = v82;
      v67 = *(v82 + 16);
      v51 = v81;
      v68 = v81;
      v69 = &v108;
LABEL_15:
      v34 = *(v69 - 32);
      goto LABEL_18;
    case 7uLL:
      v63 = swift_projectBox();
      v52 = v85;
      v51 = v84;
      v34 = v86;
      (*(v85 + 16))(v84, v63, v86);
      goto LABEL_19;
    case 8uLL:
      v66 = swift_projectBox();
      v51 = v87;
      v52 = v88;
      v67 = *(v88 + 16);
      v68 = v87;
      v34 = v89;
LABEL_18:
      v67(v68, v66, v34);
      goto LABEL_19;
    case 9uLL:
      v58 = swift_projectBox();
      v51 = v90;
      v52 = v91;
      v34 = v92;
      (*(v91 + 16))(v90, v58, v92);
      goto LABEL_19;
    case 0xAuLL:
      v71 = swift_projectBox();
      v51 = v93;
      v52 = v94;
      v34 = v95;
      (*(v94 + 16))(v93, v71, v95);
      goto LABEL_19;
    case 0xBuLL:
      v50 = swift_projectBox();
      v51 = v96;
      v52 = v97;
      v34 = v98;
      (*(v97 + 16))(v96, v50, v98);
      goto LABEL_19;
    case 0xCuLL:
      v57 = swift_projectBox();
      v51 = v99;
      v52 = v100;
      v34 = v101;
      (*(v100 + 16))(v99, v57, v101);
      goto LABEL_19;
    case 0xDuLL:
      v70 = swift_projectBox();
      v52 = v104;
      v34 = v105;
      v51 = v102;
      (*(v104 + 16))(v102, v70, v105);
LABEL_19:
      v46 = v106(v34);
      v55 = *(v52 + 8);
      v56 = v51;
LABEL_20:
      v55(v56, v34);
      return v46;
    case 0xEuLL:
      v47 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v48 = v103(v47);

      return v48;
    default:
      v43 = swift_projectBox();
      (*(v39 + 16))(v42, v43, v38);
      v44 = v106(v38);
      v45 = v38;
      v46 = v44;
      (*(v39 + 8))(v42, v45);
      return v46;
  }
}

uint64_t sub_21915A1D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21915A7A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21915A258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21915C098();

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

unint64_t sub_21915A2B0()
{
  result = qword_280EC4880;
  if (!qword_280EC4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4880);
  }

  return result;
}

unint64_t sub_21915A308()
{
  result = qword_280EC4890;
  if (!qword_280EC4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4890);
  }

  return result;
}

unint64_t sub_21915A360()
{
  result = qword_280EC4888;
  if (!qword_280EC4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4888);
  }

  return result;
}

unint64_t sub_21915A3B8()
{
  result = qword_280EC4898;
  if (!qword_280EC4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4898);
  }

  return result;
}

void sub_21915A40C()
{
  if (!qword_280E91FA0)
  {
    type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData();
    sub_21915A4D8(&unk_280E93D10, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData);
    sub_21915A4D8(&qword_280E93D20, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91FA0);
    }
  }
}

uint64_t sub_21915A4D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21915A520()
{
  result = qword_280E94610;
  if (!qword_280E94610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94610);
  }

  return result;
}

unint64_t sub_21915A574()
{
  result = qword_280E94618;
  if (!qword_280E94618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94618);
  }

  return result;
}

void sub_21915A5C8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_219BEDD94();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_21915A644()
{
  result = qword_280E99DA8;
  if (!qword_280E99DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99DA8);
  }

  return result;
}

unint64_t sub_21915A698()
{
  result = qword_280E99DB0;
  if (!qword_280E99DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99DB0);
  }

  return result;
}

uint64_t sub_21915A6EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21915A7A0(void *a1)
{
  sub_2186ECF58();
  v138 = v2;
  v124 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v135 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC();
  v123 = v4;
  v122 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v134 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748();
  v121 = v6;
  v120 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v133 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8();
  v119 = v8;
  v118 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v132 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0();
  v117 = v10;
  v116 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v131 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C();
  v115 = v12;
  v114 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v130 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670();
  v113 = v14;
  v112 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v129 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30();
  v111 = v16;
  v110 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v128 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C();
  v106 = v18;
  v109 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v137 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4();
  v108 = v20;
  v107 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v126 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80();
  v105 = v22;
  v104 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v127 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594();
  v103 = v24;
  v102 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v125 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574);
  v136 = v26;
  v101 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698);
  v30 = v29;
  v100 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v97 - v31;
  sub_21915BFE8();
  v34 = v33;
  v139 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_21915C044();
  v38 = v140;
  sub_219BF7B34();
  v39 = a1;
  if (v38)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v99 = v32;
    v98 = v30;
    v40 = v28;
    v41 = v136;
    v42 = v137;
    v43 = v138;
    v140 = v39;
    sub_218CD679C();
    sub_219BF7734();
    v97 = v36;
    switch(v141)
    {
      case 1:
        sub_218718690(v140, &v141);
        sub_21915A520();
        sub_21915A574();
        sub_219BEDD24();
        (*(v139 + 8))(v36, v34);
        v73 = swift_allocBox();
        (*(v101 + 32))(v74, v40, v41);
        v37 = v73 | 0x4000000000000000;
        v44 = v140;
        break;
      case 2:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData();
        sub_21915A4D8(&unk_280E94FE0, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData);
        sub_21915A4D8(&qword_280E94FF0, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData);
        v64 = v125;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v91 = v103;
        v92 = swift_allocBox();
        (*(v102 + 32))(v93, v64, v91);
        v37 = v92 | 0x1000000000000000;
        break;
      case 3:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData();
        sub_21915A4D8(&qword_280E964B0, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData);
        sub_21915A4D8(&qword_280E964B8, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData);
        v65 = v127;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v66 = v105;
        v67 = swift_allocBox();
        (*(v104 + 32))(v68, v65, v66);
        v37 = v67 | 0x2000000000000000;
        break;
      case 4:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
        sub_21915A4D8(&unk_280E93670, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData);
        sub_21915A4D8(&qword_280E93680, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData);
        v53 = v126;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v54 = v108;
        v55 = swift_allocBox();
        (*(v107 + 32))(v56, v53, v54);
        v37 = v55 | 0x3000000000000000;
        break;
      case 5:
        v75 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for MyMagazinesMagazineFeedGroupConfigData();
        sub_21915A4D8(&qword_280E98338, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData);
        sub_21915A4D8(&qword_280E98340, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData);
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v76 = v106;
        v77 = swift_allocBox();
        (*(v109 + 32))(v78, v42, v76);
        v37 = v77 | 0x5000000000000000;
        v44 = v75;
        break;
      case 6:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for NewIssueMagazineFeedGroupConfigData();
        sub_21915A4D8(&unk_280E9CEE0, type metadata accessor for NewIssueMagazineFeedGroupConfigData);
        sub_21915A4D8(&qword_280E9CEF0, type metadata accessor for NewIssueMagazineFeedGroupConfigData);
        v82 = v128;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v83 = v111;
        v84 = swift_allocBox();
        (*(v110 + 32))(v85, v82, v83);
        v37 = v84 | 0x6000000000000000;
        break;
      case 7:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for PaywallMagazineFeedGroupConfigData();
        sub_21915A4D8(&unk_280E9F9B0, type metadata accessor for PaywallMagazineFeedGroupConfigData);
        sub_21915A4D8(&qword_280E9F9C0, type metadata accessor for PaywallMagazineFeedGroupConfigData);
        v69 = v129;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v70 = v113;
        v71 = swift_allocBox();
        (*(v112 + 32))(v72, v69, v70);
        v37 = v71 | 0x7000000000000000;
        break;
      case 8:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData();
        sub_21915A4D8(&unk_280E93D10, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData);
        sub_21915A4D8(&qword_280E93D20, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData);
        v89 = v130;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v94 = v115;
        v95 = swift_allocBox();
        (*(v114 + 32))(v96, v89, v94);
        v37 = v95 | 0x8000000000000000;
        break;
      case 9:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for TopicMagazineFeedGroupConfigData();
        sub_21915A4D8(&unk_280EA4340, type metadata accessor for TopicMagazineFeedGroupConfigData);
        sub_21915A4D8(&qword_280EA4350, type metadata accessor for TopicMagazineFeedGroupConfigData);
        v61 = v131;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v62 = v117;
        v50 = swift_allocBox();
        (*(v116 + 32))(v63, v61, v62);
        v52 = 0x9000000000000000;
        goto LABEL_16;
      case 10:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for TrendingMagazineFeedGroupConfigData();
        sub_21915A4D8(&unk_280E9BFB0, type metadata accessor for TrendingMagazineFeedGroupConfigData);
        sub_21915A4D8(&qword_280E9BFC0, type metadata accessor for TrendingMagazineFeedGroupConfigData);
        v86 = v132;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v87 = v119;
        v50 = swift_allocBox();
        (*(v118 + 32))(v88, v86, v87);
        v52 = 0xA000000000000000;
        goto LABEL_16;
      case 11:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for BestOfBundleMagazineFeedGroupConfigData();
        sub_21915A4D8(&unk_280E97770, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData);
        sub_21915A4D8(&qword_280E97780, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData);
        v48 = v133;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v49 = v121;
        v50 = swift_allocBox();
        (*(v120 + 32))(v51, v48, v49);
        v52 = 0xB000000000000000;
        goto LABEL_16;
      case 12:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for NewspaperMagazineFeedGroupConfigData();
        sub_21915A4D8(&unk_280E9AE60, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
        sub_21915A4D8(&qword_280E9AE70, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
        v57 = v134;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v58 = v123;
        v59 = swift_allocBox();
        (*(v122 + 32))(v60, v57, v58);
        v37 = v59 | 0xC000000000000000;
        break;
      case 13:
        v79 = v43;
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for CuratedMagazineFeedGroupConfigData();
        sub_21915A4D8(&unk_280EA0BC0, type metadata accessor for CuratedMagazineFeedGroupConfigData);
        sub_21915A4D8(&qword_280EA0BD0, type metadata accessor for CuratedMagazineFeedGroupConfigData);
        v80 = v135;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v50 = swift_allocBox();
        (*(v124 + 32))(v81, v80, v79);
        v52 = 0xD000000000000000;
LABEL_16:
        v37 = v50 | v52;
        break;
      default:
        v44 = v140;
        sub_218718690(v140, &v141);
        sub_21915A644();
        sub_21915A698();
        v45 = v99;
        sub_219BEDD24();
        (*(v139 + 8))(v36, v34);
        v46 = v98;
        v37 = swift_allocBox();
        (*(v100 + 32))(v47, v45, v46);
        break;
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  return v37;
}

void sub_21915BFE8()
{
  if (!qword_280E8CDF0)
  {
    sub_21915C044();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CDF0);
    }
  }
}

unint64_t sub_21915C044()
{
  result = qword_280EC48A8;
  if (!qword_280EC48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC48A8);
  }

  return result;
}

unint64_t sub_21915C098()
{
  result = qword_280EC48A0;
  if (!qword_280EC48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC48A0);
  }

  return result;
}

unint64_t sub_21915C100()
{
  result = qword_27CC16A70;
  if (!qword_27CC16A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16A70);
  }

  return result;
}

unint64_t sub_21915C158()
{
  result = qword_280EC48B0;
  if (!qword_280EC48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC48B0);
  }

  return result;
}

unint64_t sub_21915C1B0()
{
  result = qword_280EC48B8[0];
  if (!qword_280EC48B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC48B8);
  }

  return result;
}

unint64_t sub_21915C218()
{
  result = qword_27CC16A78;
  if (!qword_27CC16A78)
  {
    sub_21915C270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16A78);
  }

  return result;
}

void sub_21915C270()
{
  if (!qword_27CC16A80)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC16A80);
    }
  }
}

uint64_t sub_21915C2C0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_21915C3D8()
{
  result = qword_280ECE808;
  if (!qword_280ECE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECE808);
  }

  return result;
}

uint64_t type metadata accessor for MagazineSectionConfig()
{
  result = qword_280ECA858;
  if (!qword_280ECA858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21915C4A0()
{
  sub_2186E57E0(319, &unk_280EE9D00, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_2186E57E0(319, &qword_280EE68E0, MEMORY[0x277D6CF38]);
    if (v1 <= 0x3F)
    {
      sub_21915C590();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21915C590()
{
  if (!qword_280E8E9F0)
  {
    sub_219BF0FB4();
    sub_21915DB1C(&qword_280E909C8, MEMORY[0x277D330A8]);
    v0 = sub_219BF5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8E9F0);
    }
  }
}

uint64_t sub_21915C624@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_219BDBD64();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for MagazineSectionConfig();
  MEMORY[0x28223BE20](v69);
  v68 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186E57E0(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v71 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v51 - v9;
  sub_2186E57E0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  sub_21915D9D4(0, &qword_280E8CE80, MEMORY[0x277D844C8]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v24 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_21915D85C();
  v25 = v73;
  sub_219BF7B34();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  v62 = v13;
  v63 = v18;
  v64 = v16;
  v73 = v21;
  LOBYTE(v77) = 0;
  v60 = sub_219BF76F4();
  v61 = v26;
  LOBYTE(v77) = 1;
  sub_219BF7674();
  v27 = v81;
  v59 = v80;
  sub_219BDB954();
  LOBYTE(v77) = 2;
  sub_21915DB1C(&unk_280EE9D10, MEMORY[0x277CC9260]);
  sub_219BF7674();
  LOBYTE(v77) = 3;
  sub_219BF7674();
  LOBYTE(v77) = 4;
  sub_219BF7674();
  LOBYTE(v82) = 5;
  sub_21915D8B0();
  sub_219BF7734();
  v57 = v27;
  v30 = v77;
  v29 = v78;
  v58 = v79;
  sub_219BE3184();
  LOBYTE(v82) = 6;
  sub_21915DB1C(&qword_280EE68E8, MEMORY[0x277D6CF38]);
  sub_219BF76E4();
  v55 = v30;
  v56 = v29;
  LOBYTE(v82) = 7;
  sub_219BF76E4();
  sub_21915C590();
  LOBYTE(v76) = 8;
  sub_21915DA8C(&qword_280E8E9E8, &unk_280E909B8);
  sub_219BF76E4();
  v31 = v82;
  v75 = 9;
  sub_219BF76E4();
  v54 = 0;
  v51 = v23;
  v52 = v76;
  v32 = v68;
  v33 = v61;
  *v68 = v60;
  v32[1] = v33;
  v34 = v57;
  v53 = v31;
  if (v57)
  {
    v35 = v69;
    v36 = v62;
    v37 = v59;
  }

  else
  {
    v38 = v65;
    sub_219BDBD54();
    v37 = sub_219BDBD44();
    v34 = v39;
    (*(v66 + 8))(v38, v67);
    v35 = v69;
    v36 = v62;
  }

  v32[2] = v37;
  v32[3] = v34;
  v40 = MEMORY[0x277CC9260];
  sub_21915D904(v63, v32 + v35[6], &unk_280EE9D00, MEMORY[0x277CC9260]);
  sub_21915D904(v64, v32 + v35[7], &unk_280EE9D00, v40);
  sub_21915D904(v36, v32 + v35[8], &unk_280EE9D00, v40);
  v41 = v32 + v35[9];
  v42 = v56;
  *v41 = v55;
  *(v41 + 1) = v42;
  v41[16] = v58;
  v43 = MEMORY[0x277D6CF38];
  v44 = v32 + v35[10];
  v45 = v36;
  v46 = v35;
  v47 = v72;
  sub_21915D904(v72, v44, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  v48 = v71;
  sub_21915D904(v71, v32 + v46[11], &qword_280EE68E0, v43);
  v49 = v53;
  if (!v53)
  {
    v49 = MEMORY[0x277D84FA0];
  }

  *(v32 + v46[12]) = v49;
  sub_2187BC6FC(v48, &qword_280EE68E0, v43);
  sub_2187BC6FC(v47, &qword_280EE68E0, v43);
  sub_2187BC6FC(v45, &unk_280EE9D00, v40);
  sub_2187BC6FC(v64, &unk_280EE9D00, v40);
  sub_2187BC6FC(v63, &unk_280EE9D00, v40);
  (*(v73 + 8))(v51, v20);
  v50 = v52;
  if (!v52)
  {
    v50 = MEMORY[0x277D84FA0];
  }

  *(v32 + v46[13]) = v50;
  sub_21915D970(v32, v70);
  return __swift_destroy_boxed_opaque_existential_1(v74);
}

unint64_t sub_21915D1F4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x567377654E78616DLL;
    if (a1 != 7)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0x6E6F6974636573;
    if (a1 != 5)
    {
      v6 = 0x567377654E6E696DLL;
    }

    if (a1 <= 6u)
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
    v1 = 0x656C746974;
    v2 = 0x316C72556E6F6369;
    v3 = 0x326C72556E6F6369;
    if (a1 != 3)
    {
      v3 = 0x336C72556E6F6369;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21915D35C(void *a1)
{
  v3 = v1;
  sub_21915D9D4(0, &qword_27CC16A88, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21915D85C();
  sub_219BF7B44();
  LOBYTE(v16) = 0;
  sub_219BF77F4();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_219BF77F4();
    v11 = type metadata accessor for MagazineSectionConfig();
    LOBYTE(v16) = 2;
    sub_219BDB954();
    sub_21915DB1C(&unk_280EE9D40, MEMORY[0x277CC9260]);
    sub_219BF77E4();
    LOBYTE(v16) = 3;
    sub_219BF77E4();
    LOBYTE(v16) = 4;
    sub_219BF77E4();
    v12 = v3 + v11[9];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v16 = *v12;
    v17 = v13;
    v18 = v14;
    v19 = 5;
    sub_218AB7B18(v16, v13, v14);
    sub_21915DA38();
    sub_219BF7834();
    sub_21896755C(v16, v17, v18);
    LOBYTE(v16) = 6;
    sub_219BE3184();
    sub_21915DB1C(&qword_280EE68F8, MEMORY[0x277D6CF38]);
    sub_219BF77E4();
    LOBYTE(v16) = 7;
    sub_219BF77E4();
    v16 = *(v3 + v11[12]);
    v19 = 8;
    sub_21915C590();
    sub_21915DA8C(&qword_27CC16A98, &qword_280E909D0);
    sub_219BF7834();
    v16 = *(v3 + v11[13]);
    v19 = 9;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21915D78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21915DC7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21915D7B4(uint64_t a1)
{
  v2 = sub_21915D85C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21915D7F0(uint64_t a1)
{
  v2 = sub_21915D85C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21915D85C()
{
  result = qword_280ECA880;
  if (!qword_280ECA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA880);
  }

  return result;
}

unint64_t sub_21915D8B0()
{
  result = qword_280EBDE70;
  if (!qword_280EBDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBDE70);
  }

  return result;
}

uint64_t sub_21915D904(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2186E57E0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21915D970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineSectionConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21915D9D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21915D85C();
    v7 = a3(a1, &type metadata for MagazineSectionConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21915DA38()
{
  result = qword_27CC16A90;
  if (!qword_27CC16A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16A90);
  }

  return result;
}

uint64_t sub_21915DA8C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21915C590();
    sub_21915DB1C(a2, MEMORY[0x277D330A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21915DB1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21915DB78()
{
  result = qword_27CC16AA0;
  if (!qword_27CC16AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16AA0);
  }

  return result;
}

unint64_t sub_21915DBD0()
{
  result = qword_280ECA870;
  if (!qword_280ECA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA870);
  }

  return result;
}

unint64_t sub_21915DC28()
{
  result = qword_280ECA878;
  if (!qword_280ECA878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA878);
  }

  return result;
}

uint64_t sub_21915DC7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x316C72556E6F6369 && a2 == 0xE900000000000078 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x326C72556E6F6369 && a2 == 0xE900000000000078 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x336C72556E6F6369 && a2 == 0xE900000000000078 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974636573 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x567377654E6E696DLL && a2 == 0xEE006E6F69737265 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x567377654E78616DLL && a2 == 0xEE006E6F69737265 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219D0D970 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219D0D990 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t type metadata accessor for ForYouTagFeedGroupKnobs()
{
  result = qword_280EC4DB8;
  if (!qword_280EC4DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21915E058()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186EDD58(319, &qword_280E913C8, sub_2186ECA28);
    if (v1 <= 0x3F)
    {
      sub_2186F9548();
      if (v2 <= 0x3F)
      {
        sub_2186F95C4();
        if (v3 <= 0x3F)
        {
          sub_2186EDD58(319, &qword_280E912E0, MEMORY[0x277D32720]);
          if (v4 <= 0x3F)
          {
            sub_2186ECA28();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21915E180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a8;
  v36 = a3;
  v37 = a7;
  v34 = a6;
  v33 = a2;
  sub_2186EDD58(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  sub_2189AD5C8();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  sub_21915F77C(a1, v16, &qword_280E91A70, sub_2189AD5C8);
  v22 = *(v19 + 48);
  if (v22(v16, 1, v18) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877CA20(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    sub_219BEE974();
    if (v22(v16, 1, v18) != 1)
    {
      sub_21915F7E8(v16, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    (*(v19 + 32))(v21, v16, v18);
  }

  (*(v19 + 32))(a9, v21, v18);
  v23 = type metadata accessor for ForYouTagFeedGroupKnobs();
  *(a9 + v23[5]) = v33;
  v24 = v35;
  if (v36)
  {
    v25 = v36;
  }

  else
  {
    v39 = 1;
    sub_2186F9548();
    swift_allocObject();
    v25 = sub_219BEF534();
  }

  v26 = v37;
  *(a9 + v23[6]) = v25;
  if (a4)
  {

    v27 = a4;
  }

  else
  {
    v39 = 5;
    sub_2186F9548();
    swift_allocObject();

    v27 = sub_219BEF534();
  }

  *(a9 + v23[7]) = v27;
  if (a5)
  {

    v28 = a5;
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_2186F95C4();
    swift_allocObject();

    v28 = sub_219BEF534();
  }

  v29 = a10;
  *(a9 + v23[8]) = v28;
  *(a9 + v23[9]) = (v34 == 2) | v34 & 1;
  sub_21915F77C(v26, a9 + v23[10], &qword_280E912E0, MEMORY[0x277D32720]);

  if (!v24)
  {
    sub_219BF5CE4();
    v39 = v30;
    sub_2186ECA28();
    swift_allocObject();
    v24 = sub_219BEF534();
  }

  *(a9 + v23[11]) = v24;
  if (!a10)
  {
    v39 = 30;
    sub_2186F9548();
    swift_allocObject();
    v29 = sub_219BEF534();
  }

  sub_21915F7E8(v26, &qword_280E912E0, MEMORY[0x277D32720]);
  result = sub_21915F7E8(v38, &qword_280E91A70, sub_2189AD5C8);
  *(a9 + v23[12]) = v29;
  return result;
}

uint64_t sub_21915E660@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  sub_2189AD5C8();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v67 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ForYouTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDD58(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = v51 - v9;
  sub_2186EDD58(0, &qword_280E91A70, sub_2189AD5C8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v71 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = v51 - v13;
  sub_21915F8FC(0, &qword_280E8CDF8, MEMORY[0x277D844C8]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = v51 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21915F844();
  v19 = v72;
  sub_219BF7B34();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v62 = 0;
  v63 = v5;
  v72 = v16;
  v64 = v7;
  v57 = a1;
  LOBYTE(v80) = 0;
  sub_21877CA20(&qword_280E91A88, sub_2189AD5C8);
  v21 = v69;
  v22 = v66;
  sub_219BF7674();
  sub_2186ECA28();
  v24 = v23;
  LOBYTE(v79) = 1;
  v56 = sub_21877CA20(&qword_280E913D8, sub_2186ECA28);
  sub_219BF7674();
  v52 = v80;
  sub_2186F9548();
  LOBYTE(v78) = 2;
  sub_21877CA20(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v60 = v79;
  LOBYTE(v77) = 3;
  sub_219BF7674();
  v59 = v78;
  sub_2186F95C4();
  v26 = v25;
  LOBYTE(v75) = 4;
  sub_21877CA20(&qword_280E913F8, sub_2186F95C4);
  v51[1] = v26;
  sub_219BF7674();
  v58 = v77;
  LOBYTE(v75) = 5;
  sub_219BF7674();
  v54 = v76;
  sub_219BEF814();
  LOBYTE(v75) = 6;
  sub_21877CA20(&qword_280E912E8, MEMORY[0x277D32720]);
  sub_219BF7674();
  LOBYTE(v74) = 7;
  v51[2] = v24;
  sub_219BF7674();
  v53 = v75;
  LOBYTE(v73) = 8;
  v56 = v15;
  sub_219BF7674();
  v55 = v74;
  v27 = v71;
  sub_21915F77C(v21, v71, &qword_280E91A70, sub_2189AD5C8);
  v28 = v65;
  v29 = *(v65 + 48);
  v30 = v29(v27, 1, v22);
  v31 = v22;
  v61 = v18;
  if (v30 == 1)
  {
    v32 = v28;
    type metadata accessor for TagFeedServiceConfig();
    sub_21877CA20(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v33 = v67;
    sub_219BEE974();
    v34 = v29(v71, 1, v22);
    v35 = v72;
    if (v34 != 1)
    {
      sub_21915F7E8(v71, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    v32 = v28;
    v36 = *(v28 + 32);
    v33 = v67;
    v36(v67, v71, v22);
    v35 = v72;
  }

  v37 = v64;
  (*(v32 + 32))(v64, v33, v31);
  v38 = v63;
  *(v37 + v63[5]) = v52;
  v39 = v70;
  v40 = v58;
  if (v60)
  {
    v41 = v60;
  }

  else
  {
    v73 = 1;
    swift_allocObject();
    v41 = sub_219BEF534();
    v35 = v72;
  }

  v42 = v59;
  *(v37 + v38[6]) = v41;
  v43 = v55;
  if (v42)
  {

    v44 = v42;
  }

  else
  {
    v73 = 5;
    swift_allocObject();

    v44 = sub_219BEF534();
    v35 = v72;
  }

  *(v37 + v38[7]) = v44;
  if (v40)
  {

    v45 = v40;
  }

  else
  {
    LOBYTE(v73) = 0;
    swift_allocObject();

    v45 = sub_219BEF534();
    v35 = v72;
  }

  *(v37 + v38[8]) = v45;
  *(v37 + v38[9]) = (v54 == 2) | v54 & 1;
  sub_21915F77C(v39, v37 + v38[10], &qword_280E912E0, MEMORY[0x277D32720]);
  v46 = v53;
  if (v53)
  {
  }

  else
  {

    sub_219BF5CE4();
    v73 = v47;
    swift_allocObject();
    v48 = sub_219BEF534();
    v35 = v72;
    v46 = v48;
  }

  *(v37 + v38[11]) = v46;
  if (v43)
  {

    sub_21915F7E8(v39, &qword_280E912E0, MEMORY[0x277D32720]);
    sub_21915F7E8(v69, &qword_280E91A70, sub_2189AD5C8);
    (*(v35 + 8))(v61, v56);
  }

  else
  {
    v73 = 30;
    swift_allocObject();
    v49 = v35;
    v50 = sub_219BEF534();

    v43 = v50;

    sub_21915F7E8(v39, &qword_280E912E0, MEMORY[0x277D32720]);
    sub_21915F7E8(v69, &qword_280E91A70, sub_2189AD5C8);
    (*(v49 + 8))(v61, v56);
  }

  *(v37 + v38[12]) = v43;
  sub_21915F898(v37, v68);
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

unint64_t sub_21915F0F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73656C7572;
    if (a1)
    {
      v5 = 0x65674178616DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v1 = 0x6972657473756C63;
    v2 = 0xD000000000000019;
    if (a1 != 7)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001FLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000017;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21915F228(void *a1)
{
  v3 = v1;
  sub_21915F8FC(0, &qword_27CC16AA8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21915F844();
  sub_219BF7B44();
  LOBYTE(v20) = 0;
  sub_2189AD5C8();
  sub_21877CA20(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for ForYouTagFeedGroupKnobs();
    v20 = *(v3 + v10[5]);
    v19 = 1;
    sub_2186ECA28();
    v12 = v11;
    v13 = sub_21877CA20(&qword_280E913E0, sub_2186ECA28);
    sub_219BF77E4();
    v18[3] = v13;
    v18[4] = v12;
    v20 = *(v3 + v10[6]);
    v19 = 2;
    sub_2186F9548();
    v15 = v14;
    v16 = sub_21877CA20(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v20 = *(v3 + v10[7]);
    v19 = 3;
    sub_219BF7834();
    v18[1] = v16;
    v18[2] = v15;
    v20 = *(v3 + v10[8]);
    v19 = 4;
    sub_2186F95C4();
    sub_21877CA20(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    LOBYTE(v20) = 5;
    sub_219BF7804();
    LOBYTE(v20) = 6;
    sub_219BEF814();
    sub_21877CA20(&qword_280E912F0, MEMORY[0x277D32720]);
    sub_219BF77E4();
    v20 = *(v3 + v10[11]);
    v19 = 7;
    sub_219BF7834();
    v20 = *(v3 + v10[12]);
    v19 = 8;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21915F6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21915FFA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21915F6D0(uint64_t a1)
{
  v2 = sub_21915F844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21915F70C(uint64_t a1)
{
  v2 = sub_21915F844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21915F77C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2186EDD58(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21915F7E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2186EDD58(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_21915F844()
{
  result = qword_280EC4DE0[0];
  if (!qword_280EC4DE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC4DE0);
  }

  return result;
}

uint64_t sub_21915F898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21915F8FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21915F844();
    v7 = a3(a1, &type metadata for ForYouTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21915F960(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDD58(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  sub_218CC85CC();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TagFeedServiceConfig();
  sub_21877CA20(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    goto LABEL_20;
  }

  v32 = type metadata accessor for ForYouTagFeedGroupKnobs();
  v15 = *(v32 + 20);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    v34 = v16;
    if (!v17)
    {
      goto LABEL_20;
    }

    v31 = v5;
    v33 = v17;
    sub_2186ECA28();
    sub_21877CA20(&qword_27CC0DD70, sub_2186ECA28);

    v18 = sub_219BF53A4();

    if ((v18 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v31 = v5;
    if (v17)
    {
LABEL_20:
      v27 = 0;
      return v27 & 1;
    }
  }

  sub_2186F9548();
  v19 = v32;
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_2186F95C4();
  if ((sub_219BEF504() & 1) == 0 || *(a1 + *(v19 + 36)) != *(a2 + *(v19 + 36)))
  {
    goto LABEL_20;
  }

  v20 = *(v19 + 40);
  v21 = *(v12 + 48);
  v22 = MEMORY[0x277D32720];
  sub_21915F77C(a1 + v20, v14, &qword_280E912E0, MEMORY[0x277D32720]);
  v30 = v21;
  sub_21915F77C(a2 + v20, &v14[v21], &qword_280E912E0, v22);
  v23 = *(v31 + 48);
  if (v23(v14, 1, v4) == 1)
  {
    if (v23(&v14[v30], 1, v4) == 1)
    {
      sub_21915F7E8(v14, &qword_280E912E0, MEMORY[0x277D32720]);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  sub_21915F77C(v14, v10, &qword_280E912E0, MEMORY[0x277D32720]);
  if (v23(&v14[v30], 1, v4) == 1)
  {
    (*(v31 + 8))(v10, v4);
LABEL_16:
    sub_218D0BBC4(v14);
    goto LABEL_20;
  }

  v24 = v31;
  (*(v31 + 32))(v7, &v14[v30], v4);
  sub_21877CA20(&qword_27CC10CD8, MEMORY[0x277D32720]);
  v25 = sub_219BF53A4();
  v26 = *(v24 + 8);
  v26(v7, v4);
  v26(v10, v4);
  sub_21915F7E8(v14, &qword_280E912E0, MEMORY[0x277D32720]);
  if ((v25 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_20;
  }

  v27 = sub_219BEF504();
  return v27 & 1;
}

unint64_t sub_21915FE9C()
{
  result = qword_27CC16AB0;
  if (!qword_27CC16AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16AB0);
  }

  return result;
}

unint64_t sub_21915FEF4()
{
  result = qword_280EC4DD0;
  if (!qword_280EC4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4DD0);
  }

  return result;
}

unint64_t sub_21915FF4C()
{
  result = qword_280EC4DD8;
  if (!qword_280EC4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4DD8);
  }

  return result;
}

uint64_t sub_21915FFA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000219CEBCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF5000 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000219D0D9B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000219D0D9D0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_219160290()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219160358()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

id sub_2191605C0()
{
  v0 = sub_219BF4164();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000208, 0x8000000219D0DBF0);
  MEMORY[0x21CECC330](0xD000000000000012, 0x8000000219D0DBA0);
  MEMORY[0x21CECC330](0xD0000000000000CALL, 0x8000000219D0DE00);
  (*(v1 + 104))(v3, *MEMORY[0x277D342F0], v0);
  v4 = sub_219BF4154();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x21CECC330](v4, v6);

  MEMORY[0x21CECC330](0xD000000000000186, 0x8000000219D0DED0);
  v7 = objc_allocWithZone(MEMORY[0x277CE3838]);
  v8 = sub_219BF53D4();

  v9 = [v7 initWithSource:v8 injectionTime:0 forMainFrameOnly:1];

  return v9;
}

unint64_t sub_2191607F0()
{
  result = qword_27CC16B20;
  if (!qword_27CC16B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B20);
  }

  return result;
}

uint64_t sub_219160854()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_280F61CC0);
  __swift_project_value_buffer(v0, qword_280F61CC0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219160A04()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD87C0);
  __swift_project_value_buffer(v0, qword_27CCD87C0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219160BB8()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD87D8);
  __swift_project_value_buffer(v0, qword_27CCD87D8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219160D6C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD87F0);
  __swift_project_value_buffer(v0, qword_27CCD87F0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219160F18()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8808);
  __swift_project_value_buffer(v0, qword_27CCD8808);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_21916117C(uint64_t a1, uint64_t a2)
{
  sub_2186EED10();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2191611E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186EED10();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_2191612AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_2186EED10();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219161F50(v3, v12);
  (*(v7 + 32))(v10, v12, v6);
  a3(v6);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21916145C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_2186EED10();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219161F50(v3, v12);
  (*(v7 + 32))(v10, v12, v6);
  v13 = a3(v6);
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_2191615A4()
{
  sub_2186EED10();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219161F50(v0, v8);
  (*(v3 + 32))(v6, v8, v2);
  v9 = sub_219BEDCA4();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_2191616EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2186EEE24(&qword_280EC82E8, type metadata accessor for HistoryFeedGroupConfig);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_219161890@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_2186EED10();
  v5 = v4;
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219161E4C();
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219161EA8();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v21;
    v16 = v5;
    v17 = v7;
    sub_219161EFC();
    sub_219BF7734();
    sub_218718690(a1, v20);
    type metadata accessor for ArticleListHistoryFeedGroupConfigData();
    sub_2186EEE24(&qword_280E99FC0, type metadata accessor for ArticleListHistoryFeedGroupConfigData);
    sub_2186EEE24(&qword_280E99FC8, type metadata accessor for ArticleListHistoryFeedGroupConfigData);
    v13 = v17;
    sub_219BEDD24();
    (*(v12 + 8))(v11, v9);
    (*(v18 + 32))(v19, v13, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219161B50@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_219161BA8(uint64_t a1)
{
  v2 = sub_219161EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219161BE4(uint64_t a1)
{
  v2 = sub_219161EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219161CF4()
{
  v1 = v0;
  sub_2186EED10();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219161F50(v1, v9);
  (*(v4 + 32))(v7, v9, v3);
  sub_219BEDD64();
  return (*(v4 + 8))(v7, v3);
}

void sub_219161E4C()
{
  if (!qword_280E8CE60)
  {
    sub_219161EA8();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CE60);
    }
  }
}

unint64_t sub_219161EA8()
{
  result = qword_280EC8310[0];
  if (!qword_280EC8310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC8310);
  }

  return result;
}

unint64_t sub_219161EFC()
{
  result = qword_280EC82F0;
  if (!qword_280EC82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC82F0);
  }

  return result;
}

uint64_t sub_219161F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_219161FD8()
{
  result = qword_27CC16B28;
  if (!qword_27CC16B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B28);
  }

  return result;
}

unint64_t sub_219162030()
{
  result = qword_27CC16B30;
  if (!qword_27CC16B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B30);
  }

  return result;
}

unint64_t sub_219162088()
{
  result = qword_280EC8300;
  if (!qword_280EC8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8300);
  }

  return result;
}

unint64_t sub_2191620E0()
{
  result = qword_280EC8308;
  if (!qword_280EC8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8308);
  }

  return result;
}

unint64_t sub_219162134()
{
  result = qword_280EC82F8;
  if (!qword_280EC82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC82F8);
  }

  return result;
}

uint64_t sub_219162188@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219162998(0, &qword_280E8CCA8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191628E0();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2191629FC(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219162934(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219162434(uint64_t a1)
{
  v2 = sub_2191628E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219162470(uint64_t a1)
{
  v2 = sub_2191628E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2191624EC(void *a1)
{
  sub_219162998(0, &qword_280E8C490, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191628E0();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_2191629FC(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21916274C(uint64_t a1)
{
  result = sub_2191629FC(&qword_280EB7EE8, type metadata accessor for MissedStoriesTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2191627A4(uint64_t a1)
{
  v2 = sub_2191629FC(&qword_280EB7F18, type metadata accessor for MissedStoriesTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219162834(void *a1)
{
  a1[1] = sub_2191629FC(&qword_280EB7F18, type metadata accessor for MissedStoriesTodayFeedGroup);
  a1[2] = sub_2191629FC(&qword_280EB7EF0, type metadata accessor for MissedStoriesTodayFeedGroup);
  result = sub_2191629FC(&qword_280EB7F00, type metadata accessor for MissedStoriesTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_2191628E0()
{
  result = qword_280EB7F30[0];
  if (!qword_280EB7F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB7F30);
  }

  return result;
}

uint64_t sub_219162934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MissedStoriesTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219162998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2191628E0();
    v7 = a3(a1, &type metadata for MissedStoriesTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2191629FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219162A58()
{
  result = qword_27CC16B38;
  if (!qword_27CC16B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B38);
  }

  return result;
}

unint64_t sub_219162AB0()
{
  result = qword_280EB7F20;
  if (!qword_280EB7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB7F20);
  }

  return result;
}

unint64_t sub_219162B08()
{
  result = qword_280EB7F28;
  if (!qword_280EB7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB7F28);
  }

  return result;
}

uint64_t sub_219162B5C()
{
  swift_getKeyPath();
  sub_219162E54();
  sub_219BDC204();

  return *(v0 + 48);
}

uint64_t sub_219162BCC(uint64_t result)
{
  if (*(v1 + 48) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_219162E54();
    sub_219BDC1F4();
  }

  return result;
}

uint64_t sub_219162CAC()
{

  v1 = OBJC_IVAR____TtC7NewsUI231RecipeFilterTagCapsuleViewModel___observationRegistrar;
  v2 = sub_219BDC244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipeFilterTagCapsuleViewModel()
{
  result = qword_27CC16B48;
  if (!qword_27CC16B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219162DAC()
{
  result = sub_219BDC244();
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

unint64_t sub_219162E54()
{
  result = qword_27CC0B238;
  if (!qword_27CC0B238)
  {
    type metadata accessor for RecipeFilterTagCapsuleViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B238);
  }

  return result;
}

uint64_t sub_219162EBC()
{
  v1 = [*(v0 + 24) appConfiguration];
  if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_audioHistoryFeedConfigurationResourceId)) != 0)
  {
    v3 = v2;
    sub_219BF5414();

    MEMORY[0x28223BE20](v4);
    sub_2186E9518();
    sub_219BE3204();

    v5 = sub_219BE2E54();
    type metadata accessor for AudioHistoryFeedConfigFetchResult();
    sub_219BE2F84();

    v6 = sub_219BE2E54();
    v7 = sub_219BE2FD4();
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    sub_219163B74();
    swift_allocError();
    *v9 = 0;
    sub_219163CB0(0, &qword_280EE6CC0, type metadata accessor for AudioHistoryFeedConfigFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v10 = sub_219BE2FF4();
    swift_unknownObjectRelease();
    return v10;
  }
}

uint64_t sub_2191630FC(uint64_t a1)
{
  sub_219163CB0(0, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v11 - v3);
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_219BF5CE4();
  *v4 = v5;
  v6 = *MEMORY[0x277D6CA48];
  v7 = sub_219BE1B34();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v4, v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v9 = sub_219BF2944();
  sub_21897DAD8(v4);
  return v9;
}

char *sub_219163298(void **a1, unint64_t a2)
{
  v35 = a2;
  v33 = type metadata accessor for AudioHistoryFeedConfigFetchResult();
  v4 = MEMORY[0x28223BE20](v33);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = type metadata accessor for AudioHistoryFeedContentConfig();
  MEMORY[0x28223BE20](v8);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = [v17 fileURL];
  if (v18)
  {
    v19 = v18;
    sub_219BDB8B4();

    (*(v11 + 32))(v16, v14, v10);
    v20 = sub_219BDB974();
    if (!v2)
    {
      v31 = v7;
      v23 = v21;
      v24 = v20;
      sub_219163AB8();
      v32 = v24;
      v35 = v23;
      sub_219BE1974();
      v26 = v36;
      v27 = v31;
      sub_219163BE8(v36, v31, type metadata accessor for AudioHistoryFeedContentConfig);
      v28 = v34;
      *(v27 + *(v33 + 20)) = v17;
      sub_219163BE8(v27, v28, type metadata accessor for AudioHistoryFeedConfigFetchResult);
      sub_219163CB0(0, &qword_280EE6CC0, type metadata accessor for AudioHistoryFeedConfigFetchResult, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v29 = v17;
      v7 = sub_219BE3014();
      sub_2186C6190(v32, v35);
      sub_219163C50(v27, type metadata accessor for AudioHistoryFeedConfigFetchResult);
      sub_219163C50(v26, type metadata accessor for AudioHistoryFeedContentConfig);
    }

    (*(v11 + 8))(v16, v10);
  }

  else
  {
    sub_219163B74();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_219163678()
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_2191637A4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AudioHistoryFeedContentConfig();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219163AB8();
  result = sub_219BE1974();
  if (!v1)
  {
    sub_219163B10(v5, a1);
    result = type metadata accessor for AudioHistoryFeedConfigFetchResult();
    *(a1 + *(result + 20)) = 0;
  }

  return result;
}

uint64_t sub_2191638B0(uint64_t a1)
{
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_219BDAF64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v5, a1, v2);
  sub_219BDAF44();
  v14 = v9;
  sub_219BE3204();
  v10 = sub_219BE2E54();
  type metadata accessor for AudioHistoryFeedConfigFetchResult();
  v11 = sub_219BE2F94();

  (*(v7 + 8))(v9, v6);
  return v11;
}

unint64_t sub_219163AB8()
{
  result = qword_280EB1490;
  if (!qword_280EB1490)
  {
    type metadata accessor for AudioHistoryFeedContentConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1490);
  }

  return result;
}

uint64_t sub_219163B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedContentConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_219163B74()
{
  result = qword_27CC16B58;
  if (!qword_27CC16B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B58);
  }

  return result;
}

uint64_t sub_219163BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219163C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219163CB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219163D28()
{
  result = qword_27CC16B68;
  if (!qword_27CC16B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B68);
  }

  return result;
}

uint64_t sub_219163D7C(uint64_t a1, void (**a2)(void))
{
  v3 = *a2;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_219163E5C();
  result = sub_219BE1E34();
  if (v8)
  {
    sub_2186CB1F0(&v7, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_218EC0600(v3);
    if (v5)
    {
      sub_2187C5110();
      v6 = sub_219BEA784();
      v6(v5);
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_219163E5C()
{
  result = qword_280ECE1C0;
  if (!qword_280ECE1C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280ECE1C0);
  }

  return result;
}

uint64_t sub_219163EC0()
{

  return swift_deallocClassInstance();
}

char *sub_219163F08(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v6 = sub_219BF1904();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioFeedGroup();
  MEMORY[0x28223BE20](v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21916443C(v15, v12);
    sub_219BED874();
    v16 = sub_219BF18D4();
    (*(v7 + 8))(v9, v6);
    a2 = sub_219164158(v16, a2);

    sub_2191644A0(v12, type metadata accessor for UpNextAudioFeedGroup);
  }

  else
  {
    sub_2191644A0(v15, type metadata accessor for AudioFeedGroup);
  }

  return a2;
}

char *sub_219164158(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_15:
    v23 = sub_218845F78(v5);

    *(swift_allocObject() + 16) = v23;

    v24 = sub_219BE2E54();
    sub_218786310(&qword_280E8EBF0, sub_2187E7248);
    sub_219BE30F4();

    return a2;
  }

  v25 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v25;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v7, a1);
        v8 = [swift_unknownObjectRetain() identifier];
        v9 = sub_219BF5414();
        v11 = v10;
        swift_unknownObjectRelease_n();

        v13 = *(v25 + 16);
        v12 = *(v25 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_21870B65C((v12 > 1), v13 + 1, 1);
        }

        ++v7;
        *(v25 + 16) = v13 + 1;
        v14 = v25 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
      }

      while (v4 != v7);
    }

    else
    {
      v15 = a1 + 32;
      do
      {
        v16 = [swift_unknownObjectRetain_n() identifier];
        v17 = sub_219BF5414();
        v19 = v18;
        swift_unknownObjectRelease_n();

        v21 = *(v25 + 16);
        v20 = *(v25 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_21870B65C((v20 > 1), v21 + 1, 1);
        }

        *(v25 + 16) = v21 + 1;
        v22 = v25 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        v15 += 8;
        --v4;
      }

      while (v4);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

char *sub_219164408@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_219163F08(a1, *v2, *(v2 + 8), *(v2 + 16));
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_21916443C(uint64_t a1, uint64_t a2)
{
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  (*(*(AudioFeedGroup - 8) + 32))(a2, a1, AudioFeedGroup);
  return a2;
}

uint64_t sub_2191644A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219164514()
{
  result = qword_27CC16B70;
  if (!qword_27CC16B70)
  {
    sub_21916456C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B70);
  }

  return result;
}

void sub_21916456C()
{
  if (!qword_27CC16B78)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC16B78);
    }
  }
}

uint64_t sub_2191645BC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_2191646D4()
{
  result = qword_280EBF7C8;
  if (!qword_280EBF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBF7C8);
  }

  return result;
}

uint64_t sub_219164728(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v82 = a6;
  v86 = a5;
  v81 = a4;
  v80 = a3;
  v85 = a1;
  v99 = *MEMORY[0x277D85DE8];
  v9 = v7;
  v83 = *v7;
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v84 = v10;
  v79 = *(v10 - 8);
  v77 = *(v79 + 64);
  MEMORY[0x28223BE20](v10);
  v78 = &v72 - v11;
  v12 = sub_219BDD944();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NewsActivity2.Article(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  v75 = *(v19 - 8);
  v20 = *(v75 + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v76 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v29 = &v72 - v28;
  v30 = a2[1];
  v94 = *a2;
  v95 = v30;
  v31 = a2[3];
  v96 = a2[2];
  v97 = v31;
  v98 = *(a2 + 8);
  v32 = *(&v94 + 1);
  v33 = v94;
  v34 = HIBYTE(v96) >> 6;
  if (v34)
  {
    if (v34 == 1)
    {
    }

    else
    {
      v88 = v94;
      v89 = v95;
      *&v90 = v96;
      BYTE8(v90) = BYTE8(v96) & 1;
      v33 = sub_219BD47C0(v22, v23, v24, v25, v26, v27);
      v32 = v37;
    }
  }

  else
  {
    v88 = v94;
    v89 = v95;
    *&v90 = v96;
    BYTE8(v90) = BYTE8(v96) & 1;
    v35 = [sub_219BD4870(v22 v23];
    v33 = sub_219BF5414();
    v32 = v36;
  }

  sub_218AB06A4(v86, v29);
  if ((*(v16 + 48))(v29, 1, v15) == 1)
  {
    sub_2187454CC(v29, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_21916B970);
    v38 = 0;
    v39 = 0;
  }

  else
  {
    sub_218B1B33C(v29, v18, type metadata accessor for NewsActivity2.Article);
    sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

    sub_218B1B3A4(v18, v14, MEMORY[0x277D2FB40]);
    v38 = sub_219BDD8C4();
    v39 = v40;
    sub_21916B2E8(v14, MEMORY[0x277D2FB40]);
    sub_21916B2E8(v29, type metadata accessor for NewsActivity2.Article);
  }

  v41 = v33;
  v42 = v85;
  v43 = v9;
  v44 = sub_219166CE8(v41, v32, v85, v38, v39);

  if (v44)
  {
    *&v88 = 0;
    sub_21916B264();
    swift_allocObject();
    return sub_219BE3014();
  }

  sub_219BEA7A4();
  v93 = v88;
  sub_218B1ACC0(&v93);
  sub_218932F9C(v93);
  __swift_project_boxed_opaque_existential_1(v9 + 2, v9[5]);
  sub_2186C6148(0, &unk_280E8E608);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v51 = result;
  if (((HIBYTE(v96) << 48) & 0xC0000000000000) == 0x40000000000000)
  {
    goto LABEL_18;
  }

  v88 = v94;
  v89 = v95;
  *&v90 = v96;
  BYTE8(v90) = BYTE8(v96) & 1;
  v52 = sub_219BD4870(result, v46, v47, v48, v49, v50);
  if (![v51 canSynchronouslyCheckAccessToItem_])
  {

LABEL_18:
    MEMORY[0x28223BE20](result);
    *(&v72 - 2) = v9;
    *(&v72 - 1) = &v94;
    sub_219BDED54();
    sub_219BE3204();
    v54 = sub_219BE1C44();
    sub_2186C6148(0, &unk_280E8E2D8);
    v74 = sub_219BE2F84();

    v72 = sub_219BE1C44();
    v73 = v51;
    v55 = v79;
    v56 = v78;
    v57 = v84;
    (*(v79 + 16))(v78, v42, v84);
    v58 = v76;
    sub_218AB06A4(v86, v76);
    v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v60 = (v77 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 79) & 0xFFFFFFFFFFFFFFF8;
    v62 = *(v75 + 80);
    v86 = v43;
    v63 = (v62 + v61 + 16) & ~v62;
    v64 = (v20 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    (*(v55 + 32))(v65 + v59, v56, v57);
    v66 = v65 + v60;
    v67 = v95;
    v68 = v97;
    *(v66 + 32) = v96;
    *(v66 + 48) = v68;
    *(v66 + 64) = v98;
    *v66 = v94;
    *(v66 + 16) = v67;
    v69 = (v65 + v61);
    v70 = v81;
    *v69 = v80;
    v69[1] = v70;
    sub_21916A024(v58, v65 + v63);
    *(v65 + v64) = v82;
    sub_219092568(&v94, &v88);
    sub_218962DB8(0, &qword_280E8E478, &qword_280E8E480, 0x277D75D28, MEMORY[0x277D83D88]);

    v71 = v72;
    v53 = sub_219BE2F84();

    return v53;
  }

  v93 = 0;
  v87 = 0;
  if (![v51 hasAccessToItem:v52 blockedReason:&v93 error:&v87])
  {

    goto LABEL_18;
  }

  v90 = v96;
  v91 = v97;
  v92 = v98;
  v88 = v94;
  v89 = v95;
  *&v88 = sub_219167ADC(v42, &v88, v80, v81, v86, v82);
  sub_21916B264();
  swift_allocObject();
  v53 = sub_219BE3014();

  return v53;
}

void sub_219165148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_2191651D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v140 = a4;
  v141 = a5;
  v139 = a3;
  v146 = a1;
  v163 = *MEMORY[0x277D85DE8];
  v8 = sub_219BE7784();
  MEMORY[0x28223BE20](v8 - 8);
  v136 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDD944();
  MEMORY[0x28223BE20](v10 - 8);
  v138 = (&v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for NewsActivity2.Article(0);
  v143 = *(v12 - 8);
  v144 = v12;
  MEMORY[0x28223BE20](v12);
  v137 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v142 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v134 = &v126 - v18;
  MEMORY[0x28223BE20](v17);
  v135 = &v126 - v19;
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v145 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v126 - v23;
  v25 = *(a2 + 32);
  v157 = *(a2 + 16);
  v158 = v25;
  v159 = *(a2 + 48);
  v160 = *(a2 + 64);
  v156 = *a2;
  v27 = *a2;
  v26 = *(a2 + 8);
  v28 = *(v6 + 40);
  v147 = v6;
  __swift_project_boxed_opaque_existential_1((v6 + 16), v28);
  sub_2186C6148(0, &unk_280E8E608);
  v148 = sub_219BE1DE4();
  if (!v148)
  {
    __break(1u);
  }

  if (((HIBYTE(v158) << 48) & 0xC0000000000000) == 0x40000000000000)
  {
    v29 = v146;
    v30 = v147;
    v31 = v142;
LABEL_4:

    goto LABEL_5;
  }

  v133 = v21;
  v38 = *(&v156 + 1);
  v39 = v156;
  v40 = v157;
  v41 = v158;
  v42 = BYTE8(v158);
  v30 = v147;
  if ((BYTE8(v158) & 1) == 0)
  {
    swift_unknownObjectRetain();

    v75 = v40;
LABEL_22:
    v83 = v40;
    goto LABEL_23;
  }

  v43 = *(v156 + 72);
  v161 = *(v156 + 56);
  v162[0] = v43;
  *(v162 + 9) = *(v156 + 81);
  sub_218718690(v156 + 16, v149);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    v75 = __swift_destroy_boxed_opaque_existential_1(v149);
    goto LABEL_22;
  }

  v131 = Strong;
  v132 = v38;
  v45 = v41;
  v46 = *(v30 + 168);
  v129 = v45;
  v130 = v40;
  sub_21896FE24(v39, v38, v40, *(&v40 + 1), v45, 1);
  sub_21916B730(&v161, &v150);
  if (([v46 improvedBlockingBehaviorEnabled] & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v149);
    sub_21916B78C(&v161);

    v41 = v129;
    v83 = v130;
    v38 = v132;
LABEL_23:
    *&v150 = v39;
    *(&v150 + 1) = v38;
    *&v151 = v83;
    *(&v151 + 1) = *(&v40 + 1);
    *&v152 = v41;
    BYTE8(v152) = v42 & 1;
    v84 = sub_219BD4870(v75, v76, v77, v78, v79, v80);
    sub_21896FDCC(v39, v38, v83, *(&v40 + 1), v41, v42 & 1);
    v85 = [v148 canSynchronouslyCheckAccessToItem_];
    v29 = v146;
    v31 = v142;
    if (v85)
    {
      v91 = *(&v156 + 1);
      v92 = v156;
      v93 = HIBYTE(v158) >> 6;
      if (v93)
      {
        if (v93 == 1)
        {
        }

        else
        {
          v150 = v156;
          v151 = v157;
          *&v152 = v158;
          BYTE8(v152) = BYTE8(v158) & 1;
          v92 = sub_219BD47C0(v85, v86, v87, v88, v89, v90);
          v91 = v106;
        }
      }

      else
      {
        v150 = v156;
        v151 = v157;
        *&v152 = v158;
        BYTE8(v152) = BYTE8(v158) & 1;
        v104 = [sub_219BD4870(v85 v86];
        v92 = sub_219BF5414();
        v91 = v105;
      }

      sub_219BEA7A4();
      v107 = v150;
      v108 = (v107 >> 58) & 0x3C | (v107 >> 1) & 3;
      if ((v108 - 9) >= 0x34)
      {
        v122 = 1 << v108;
        if ((v122 & 0xF9) == 0)
        {
          if ((v122 & 6) != 0)
          {
            sub_2187B2C48();
          }

          v123 = swift_projectBox();
          sub_218B1B33C(v123, v135, type metadata accessor for NewsActivity2.Article);
        }
      }

      v110 = v143;
      v109 = v144;
      v111 = v135;
      v133 = v143[7];
      (v133)(v135);
      sub_218932F9C(v107);
      if ((v110[6])(v111, 1, v109) == 1)
      {
        sub_2187454CC(v111, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_21916B970);
        v112 = 0;
        v113 = 0;
      }

      else
      {
        v114 = v111;
        v115 = v111;
        v116 = v137;
        sub_218B1B33C(v114, v137, type metadata accessor for NewsActivity2.Article);
        sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

        v117 = v138;
        sub_218B1B3A4(v116, v138, MEMORY[0x277D2FB40]);
        v112 = sub_219BDD8C4();
        v113 = v118;
        sub_21916B2E8(v117, MEMORY[0x277D2FB40]);
        sub_21916B2E8(v115, type metadata accessor for NewsActivity2.Article);
      }

      v119 = sub_219166CE8(v92, v91, v146, v112, v113);

      if (v119)
      {

        return 0;
      }

      v149[0] = 0;
      v155 = 0;
      if ([v148 hasAccessToItem:v84 blockedReason:v149 error:&v155])
      {
        v152 = v158;
        v153 = v159;
        v154 = v160;
        v150 = v156;
        v151 = v157;
        v120 = v134;
        (v133)(v134, 1, 1, v144);
        v121 = sub_219167ADC(v146, &v150, v139, v140, v120, v141);

        sub_2187454CC(v120, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_21916B970);
        return v121;
      }

      v29 = v146;
      v30 = v147;
    }

    else
    {
    }

    v26 = *(&v156 + 1);
    v27 = v156;
    v100 = HIBYTE(v158) >> 6;
    if (v100)
    {
      if (v100 == 1)
      {
        goto LABEL_4;
      }

      v150 = v156;
      v151 = v157;
      *&v152 = v158;
      BYTE8(v152) = BYTE8(v158) & 1;
      v27 = sub_219BD47C0(v94, v95, v96, v97, v98, v99);
      v26 = v101;
    }

    else
    {
      v150 = v156;
      v151 = v157;
      *&v152 = v158;
      BYTE8(v152) = BYTE8(v158) & 1;
      v102 = [sub_219BD4870(v94 v95];
      v27 = sub_219BF5414();
      v26 = v103;
    }

LABEL_5:
    sub_219BEA7A4();
    v32 = v150;
    v33 = (v32 >> 58) & 0x3C | (v32 >> 1) & 3;
    if ((v33 - 9) >= 0x34)
    {
      v81 = 1 << v33;
      if ((v81 & 0xF9) == 0)
      {
        if ((v81 & 6) != 0)
        {
          sub_2187B2C48();
        }

        v82 = swift_projectBox();
        sub_218B1B33C(v82, v31, type metadata accessor for NewsActivity2.Article);
      }
    }

    v35 = v143;
    v34 = v144;
    (v143[7])(v31);
    sub_218932F9C(v32);
    if ((v35[6])(v31, 1, v34) == 1)
    {
      sub_2187454CC(v31, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_21916B970);
      v36 = 0;
      v37 = 0;
    }

    else
    {
      v66 = v137;
      sub_218B1B33C(v31, v137, type metadata accessor for NewsActivity2.Article);
      sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

      v67 = v138;
      sub_218B1B3A4(v66, v138, MEMORY[0x277D2FB40]);
      v36 = sub_219BDD8C4();
      v37 = v68;
      sub_21916B2E8(v67, MEMORY[0x277D2FB40]);
      sub_21916B2E8(v31, type metadata accessor for NewsActivity2.Article);
    }

    v69 = sub_219166CE8(v27, v26, v29, v36, v37);

    if ((v69 & 1) == 0)
    {
      v70 = v141;
      sub_219168ED4(v141, &v156);
      v71 = sub_219BE7DC4();
      MEMORY[0x28223BE20](v71);
      *(&v126 - 6) = v30;
      *(&v126 - 5) = v29;
      v72 = v139;
      *(&v126 - 4) = &v156;
      *(&v126 - 3) = v72;
      v125 = v70;
      sub_219BE7774();
      v124 = &v126 - 8;
      v73 = sub_219BE7D74();

      return v73;
    }

    return 0;
  }

  sub_218718690(v149, &v150);
  sub_219BEA744();
  swift_allocObject();
  v136 = sub_219BEA6C4();
  v127 = swift_allocObject();
  swift_weakInit();
  v47 = v133;
  v48 = *(v133 + 16);
  v142 = (v133 + 16);
  v143 = v48;
  v49 = v145;
  (v48)(v24, v146, v145);
  v50 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v137 = *(v47 + 80);
  v51 = (v22 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v128 = (v51 + 79) & 0xFFFFFFFFFFFFFFF8;
  v135 = (v51 + 127) & 0xFFFFFFFFFFFFFFF8;
  v144 = *(&v40 + 1);
  v134 = ((v135 + 23) & 0xFFFFFFFFFFFFFFF8);
  v52 = swift_allocObject();
  *(v52 + 16) = v127;
  v138 = *(v47 + 32);
  (v138)(v52 + v50, v24, v49);
  v53 = v52 + v51;
  v54 = v157;
  v55 = v159;
  *(v53 + 32) = v158;
  *(v53 + 48) = v55;
  *(v53 + 64) = v160;
  *v53 = v156;
  *(v53 + 16) = v54;
  v56 = (v52 + v128);
  *(v56 + 25) = *(v162 + 9);
  v57 = v162[0];
  *v56 = v161;
  v56[1] = v57;
  v58 = (v52 + v135);
  v59 = v140;
  *v58 = v139;
  v58[1] = v59;
  *&v134[v52] = v141;
  sub_21916B730(&v161, &v150);

  sub_219092568(&v156, &v150);

  sub_219BEA6F4();

  sub_219BEA714();

  v60 = swift_allocObject();
  swift_weakInit();
  sub_218718690(v149, &v150);
  v61 = v145;
  (v143)(v24, v146, v145);
  v62 = (v137 + 64) & ~v137;
  v63 = swift_allocObject();
  sub_2186CB1F0(&v150, v63 + 16);
  *(v63 + 56) = v60;
  (v138)(v63 + v62, v24, v61);

  sub_219BEA734();

  v64 = v131;
  v65 = sub_219BF6534();
  sub_219BEA6D4();

  sub_21916B78C(&v161);
  __swift_destroy_boxed_opaque_existential_1(v149);
  sub_21896FDCC(v39, v132, v130, v144, v129, 1);
  return 0;
}

void sub_2191661A0(uint64_t a1, char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v61 = a7;
  v60 = a6;
  v59 = a5;
  v58 = a2;
  v9 = *a4;
  v55 = *(a4 + 16);
  v56 = v9;
  v57 = *(a4 + 32);
  v10 = *(a4 + 40);
  sub_21916B970(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_219BE92E4();
  v54 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = &v47 - v17;
  v18 = sub_219BE9EC4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v49 = v14;
  v50 = v21;
  v51 = v19;
  v22 = a3[6];
  v23 = a3[8];
  v24 = a3[5] >> 62;
  if (!v24)
  {
    goto LABEL_5;
  }

  if (v24 == 1)
  {
    v22 = a3[2];
LABEL_5:
    v25 = v10 & 1;
    LOBYTE(v68[0]) = v25;

    v26 = 0;
    goto LABEL_7;
  }

  a3 = a3[7];
  v25 = v10 & 1;
  LOBYTE(v68[0]) = v25;

  v26 = 0x8000000000000000;
LABEL_7:
  v64 = v55;
  v63 = v56;
  *&v65 = v57;
  *(&v65 + 1) = v26 | v25;
  *&v66 = v22;
  *(&v66 + 1) = a3;
  v67 = v23;
  sub_21916B730(a4, v62);
  v27 = sub_2191651D0(v58, &v63, v59, v60, v61);

  v68[1] = v64;
  v68[2] = v65;
  v68[3] = v66;
  v69 = v67;
  v68[0] = v63;
  sub_218AAFFC4(v68);
  if (v27)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v61 = *(Strong + 56);

      sub_218AB0628(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
      v30 = v29;
      v31 = *(v29 + 48);
      LODWORD(v56) = *MEMORY[0x277D6E4D0];
      v32 = v56;
      v33 = sub_219BE92A4();
      v34 = *(v33 - 8);
      *&v55 = *(v34 + 104);
      v57 = v34 + 104;
      v59 = v27;
      v35 = v52;
      (v55)(v52, v32, v33);
      v36 = *MEMORY[0x277D6E500];
      v37 = sub_219BE92B4();
      v48 = *(*(v37 - 8) + 104);
      v58 = v13;
      v48(&v35[v31], v36, v37);
      v38 = *MEMORY[0x277D6E4F0];
      v60 = v18;
      v39 = *(v54 + 104);
      v40 = v49;
      v39(v35, v38, v49);
      v41 = *(v30 + 48);
      v42 = v53;
      (v55)(v53, v56, v33);
      v48(&v42[v41], *MEMORY[0x277D6E508], v37);
      v39(v42, v38, v40);
      v43 = v50;
      sub_219BE9EB4();
      v44 = sub_219BE94F4();
      v45 = v58;
      (*(*(v44 - 8) + 56))(v58, 1, 1, v44);
      v46 = v59;
      sub_21909BA64(v59, v43, v45);

      sub_2187454CC(v45, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_21916B970);
      (*(v51 + 8))(v43, v60);
    }

    else
    {
    }
  }
}