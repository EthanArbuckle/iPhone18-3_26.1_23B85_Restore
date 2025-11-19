uint64_t sub_218D01280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v107 = a8;
  v106 = a7;
  v97 = a6;
  v111 = a5;
  v112 = a4;
  v116 = a3;
  v103 = a2;
  v118 = a1;
  v8 = type metadata accessor for ChannelSectionsGroupSectionModel();
  v79 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF3DC();
  v12 = v11;
  v105 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v104 = v13;
  v117 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChannelSectionsGroupModel();
  v15 = *(v14 - 8);
  v93 = v14 - 8;
  v101 = v15;
  MEMORY[0x28223BE20](v14 - 8);
  v102 = v16;
  v115 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D0698C(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v92 = &v78 - v18;
  v19 = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  v20 = v19 - 8;
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v90 = &v78 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v89 = &v78 - v26;
  MEMORY[0x28223BE20](v25);
  v88 = &v78 - v27;
  v28 = sub_219BEF554();
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v110 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v109 = &v78 - v31;
  v119 = sub_219BED8D4();
  v114 = *(v119 - 8);
  v32 = MEMORY[0x28223BE20](v119);
  v113 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v33;
  MEMORY[0x28223BE20](v32);
  v108 = &v78 - v34;
  sub_218D06650();
  v36 = v35 - 8;
  MEMORY[0x28223BE20](v35);
  v38 = &v78 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BF1904();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v78 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v43;
  MEMORY[0x28223BE20](v41);
  v45 = &v78 - v44;
  sub_218D069F0(v118, v38, sub_218D06650);
  v46 = &v38[*(v36 + 56)];
  v95 = *v46;
  v94 = v46[8];
  (*(v40 + 32))(v45, v38, v39);
  v99 = v40;
  v47 = *(v40 + 16);
  v98 = v45;
  v100 = v39;
  v47(v43, v45, v39);
  v86 = sub_219BEDCB4();
  v85 = v48;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_218D066B8(0, &qword_280E91A20, MEMORY[0x277D321A0]);
  sub_219BEE9C4();
  sub_219BEE994();
  v84 = v49;
  sub_219BEE9E4();
  v83 = v50;
  v51 = v88;
  sub_219BEDD14();
  v52 = v51 + *(v20 + 76);
  v82 = *v52;
  v81 = *(v52 + 8);
  sub_218D06DBC(v51, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v53 = v89;
  sub_219BEDD14();
  v54 = (v53 + *(v20 + 80));
  v88 = *v54;
  v80 = *(v54 + 8);
  sub_218D06DBC(v53, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v55 = v90;
  sub_219BEDD14();
  sub_218D06DBC(v55, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v56 = v91;
  v118 = v12;
  sub_219BEDD14();
  sub_218D06DBC(v56, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
  sub_218D066B8(0, &qword_280E91860, MEMORY[0x277D32318]);
  sub_219BEEC94();
  v57 = v97;
  v58 = v108;
  v59 = sub_219BED854();
  v60 = *(v57 + *(v93 + 32));
  v61 = *(v60 + 16);
  v62 = MEMORY[0x277D84F90];
  if (v61)
  {
    v120 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v63 = v60 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v64 = *(v79 + 72);
    do
    {
      sub_218D069F0(v63, v10, type metadata accessor for ChannelSectionsGroupSectionModel);
      swift_unknownObjectRetain();
      sub_218D06DBC(v10, type metadata accessor for ChannelSectionsGroupSectionModel);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      v59 = sub_219BF73E4();
      v63 += v64;
      --v61;
    }

    while (v61);
    v62 = v120;
  }

  v112 = v62;
  MEMORY[0x28223BE20](v59);
  sub_218D0698C(0, &unk_280E90AF0, MEMORY[0x277D33020], MEMORY[0x277D83D88]);
  v111 = sub_219BE3204();
  v65 = v114;
  (*(v114 + 16))(v113, v58, v119);
  sub_218D069F0(v57, v115, type metadata accessor for ChannelSectionsGroupModel);
  v66 = v105;
  (*(v105 + 16))(v117, v116, v118);
  v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v68 = (v96 + *(v101 + 80) + v67) & ~*(v101 + 80);
  v69 = (v102 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (*(v66 + 80) + v69 + 8) & ~*(v66 + 80);
  v71 = (v104 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v73 = v107;
  *(v72 + 16) = v106;
  *(v72 + 24) = v73;
  (*(v65 + 32))(v72 + v67, v113, v119);
  sub_218D06754(v115, v72 + v68, type metadata accessor for ChannelSectionsGroupModel);
  *(v72 + v69) = v112;
  (*(v66 + 32))(v72 + v70, v117, v118);
  v74 = v72 + v71;
  *v74 = v95;
  *(v74 + 8) = v94;

  v75 = sub_219BE2E54();
  type metadata accessor for LocalNewsTodayFeedGroup();
  v76 = sub_219BE2F74();

  (*(v114 + 8))(v108, v119);
  (*(v99 + 8))(v98, v100);
  return v76;
}

uint64_t sub_218D01E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelSectionsGroupModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v15 = a1;
  v16 = a2;
  sub_219BF1404();
  sub_219BE3204();
  v7 = sub_219BE2E54();
  sub_219BF0D34();
  type metadata accessor for LocalNewsTodayFeedGroupService();
  sub_219BE2F84();

  v8 = sub_219BE2E54();
  sub_218D0698C(0, &unk_280E90AF0, MEMORY[0x277D33020], MEMORY[0x277D83D88]);
  sub_219BE2F74();

  sub_218D069F0(a2, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ChannelSectionsGroupModel);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_218D06754(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for ChannelSectionsGroupModel);
  v11 = sub_219BE2E54();
  v12 = sub_219BE3064();

  return v12;
}

uint64_t sub_218D0206C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v30 = a8;
  v27 = a1;
  v28 = a7;
  v26 = a5;
  v29 = a10;
  v15 = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D958 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09BA0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_2186FC3BC();
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;

  sub_219BF6214();
  sub_219BE5314();

  v19 = sub_219BED8D4();
  (*(*(v19 - 8) + 16))(a9, a4, v19);
  v20 = *v26;
  v21 = type metadata accessor for LocalNewsTodayFeedGroup();
  sub_218D06E1C(v27, a9 + v21[7], &unk_280E90AF0, MEMORY[0x277D33020]);
  sub_2186DF3DC();
  swift_unknownObjectRetain();

  sub_219BEDD14();
  v22 = *&v17[*(v15 + 84)];

  sub_218D06DBC(v17, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  *(a9 + v21[5]) = v20;
  *(a9 + v21[6]) = a6;
  *(a9 + v21[8]) = v22;
  v23 = a9 + v21[9];
  *v23 = v30;
  *(v23 + 8) = v29 & 1;
}

uint64_t sub_218D022E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D958 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v7 = sub_2186FC3BC();
  *(v5 + 64) = v7;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  sub_2186CFDE4(0, &qword_280E8B580);

  sub_219BF7484();
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218D02438()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_218D024B0()
{
  sub_218D02438();

  return swift_deallocClassInstance();
}

uint64_t sub_218D024E4(char a1, uint64_t a2, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v219 = a7;
  v224 = a6;
  v250 = a5;
  v249 = a4;
  v266 = a3;
  v9 = sub_219BF19F4();
  MEMORY[0x28223BE20](v9 - 8);
  v221 = &v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218860D7C();
  v214 = v11;
  v213 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v215 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DEE0C();
  MEMORY[0x28223BE20](v13 - 8);
  v217 = &v209 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_219BDBD64();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v210 = &v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_219BF2DE4();
  v218 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v216 = &v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for ChannelSectionsGroupSectionModel();
  v232 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v246 = &v209 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_219BF20B4();
  v248 = *(v247 - 8);
  v18 = MEMORY[0x28223BE20](v247);
  v231 = &v209 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v269 = &v209 - v20;
  v21 = MEMORY[0x277D83D88];
  sub_218D0698C(0, &qword_280E8FEA0, MEMORY[0x277D343A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v22 - 8);
  v257 = &v209 - v23;
  sub_218D0698C(0, &unk_280EE9D00, MEMORY[0x277CC9260], v21);
  MEMORY[0x28223BE20](v24 - 8);
  v253 = &v209 - v25;
  sub_218D0698C(0, &unk_280E905F0, MEMORY[0x277D33578], v21);
  MEMORY[0x28223BE20](v26 - 8);
  v252 = &v209 - v27;
  sub_218D0698C(0, &qword_280E901F0, MEMORY[0x277D33C78], v21);
  MEMORY[0x28223BE20](v28 - 8);
  v251 = &v209 - v29;
  sub_218D0698C(0, &qword_280EE9C40, MEMORY[0x277CC9578], v21);
  MEMORY[0x28223BE20](v30 - 8);
  v245 = &v209 - v31;
  v32 = sub_219BF3034();
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v255 = &v209 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v244 = &v209 - v35;
  v256 = sub_219BF3C94();
  v222 = *(v256 - 8);
  v36 = MEMORY[0x28223BE20](v256);
  v254 = (&v209 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36);
  v243 = (&v209 - v38);
  v261 = sub_219BF2D44();
  v258 = *(v261 - 8);
  v39 = MEMORY[0x28223BE20](v261);
  v260 = &v209 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v264 = &v209 - v41;
  v42 = sub_219BF26F4();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v209 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_219BF1A44();
  v230 = *(v263 - 8);
  v46 = MEMORY[0x28223BE20](v263);
  v48 = &v209 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v50 = &v209 - v49;
  v51 = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  v52 = MEMORY[0x28223BE20](v51);
  v262 = &v209 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v267 = &v209 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v209 - v57;
  v273 = MEMORY[0x277D84FA0];
  v268 = a2;
  v265 = v56;
  v229 = v42;
  v228 = v45;
  v223 = v43;
  if (a1)
  {
    sub_2186DF3DC();
    sub_219BEDD14();
    v59 = *&v58[*(v51 + 32) + 8];

    sub_218D06DBC(v58, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
    if (!v59)
    {
      v226 = MEMORY[0x277D84F90];
      v68 = v266;
      goto LABEL_9;
    }

    v60 = v228;
    sub_219BF20F4();

    (*(v223 + 104))(v60, *MEMORY[0x277D339C8], v229);
    sub_219BF1A04();
    v61 = sub_2191F8688(0, 1, 1, MEMORY[0x277D84F90]);
    v63 = v61[2];
    v62 = v61[3];
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v61 = sub_2191F8688(v62 > 1, v63 + 1, 1, v61);
    }
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v66 = [objc_opt_self() bundleForClass_];
    *&v208 = 0x8000000219CF35D0;
    sub_219BDB5E4();

    sub_219BF20F4();

    (*(v43 + 104))(v45, *MEMORY[0x277D339C8], v42);
    sub_219BF1A04();
    v61 = sub_2191F8688(0, 1, 1, MEMORY[0x277D84F90]);
    v63 = v61[2];
    v67 = v61[3];
    v64 = v63 + 1;
    if (v63 >= v67 >> 1)
    {
      v61 = sub_2191F8688(v67 > 1, v63 + 1, 1, v61);
    }

    v50 = v48;
  }

  v68 = v266;
  v69 = v263;
  v61[2] = v64;
  v70 = *(v230 + 32);
  v71 = (*(v230 + 80) + 32) & ~*(v230 + 80);
  v226 = v61;
  v70(v61 + v71 + *(v230 + 72) * v63, v50, v69);
  v51 = v265;
LABEL_9:
  v72 = *(v68 + 16);
  v73 = (v72 >> 62);
  v74 = v268;
  if (v72 >> 62)
  {
    goto LABEL_124;
  }

  for (i = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    sub_2186DF3DC();
    v77 = v76;
    v78 = v267;
    sub_219BEDD14();
    v79 = *(v78 + *(v51 + 52));
    sub_218D06DBC(v78, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
    if (i < v79)
    {

      if (qword_280E8D958 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_219C09EC0;
      v81 = v250;
      if (v73)
      {
        v82 = sub_219BF7214();
      }

      else
      {
        v82 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v88 = MEMORY[0x277D83C10];
      *(v80 + 56) = MEMORY[0x277D83B88];
      *(v80 + 64) = v88;
      *(v80 + 32) = v82;
      *(v80 + 96) = MEMORY[0x277D837D0];
      *(v80 + 104) = sub_2186FC3BC();
      v51 = v249;
      *(v80 + 72) = v249;
      *(v80 + 80) = v81;

      sub_219BF6214();
      sub_219BE5314();

      v89 = 4;
      goto LABEL_115;
    }

    v83 = v262;
    v266 = v77;
    sub_219BEDD14();
    v84 = *(v83 + *(v51 + 56));
    sub_218D06DBC(v83, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
    if (v84 < 0)
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v73)
    {
      v90 = sub_219BF7214();
      if (sub_219BF7214() < 0)
      {
        goto LABEL_127;
      }

      if (v90 >= v84)
      {
        v91 = v84;
      }

      else
      {
        v91 = v90;
      }

      if (v90 < 0)
      {
        v91 = v84;
      }

      if (v84)
      {
        v87 = v91;
      }

      else
      {
        v87 = 0;
      }

      v85 = sub_219BF7214();
    }

    else
    {
      v85 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v85 >= v84)
      {
        v86 = v84;
      }

      else
      {
        v86 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v84)
      {
        v87 = v86;
      }

      else
      {
        v87 = 0;
      }
    }

    if (v85 < v87)
    {
      goto LABEL_126;
    }

    if ((v72 & 0xC000000000000001) != 0 && v87)
    {
      sub_218731D50();

      v92 = 0;
      do
      {
        v93 = v92 + 1;
        sub_219BF7334();
        v92 = v93;
      }

      while (v87 != v93);
      if (!v73)
      {
LABEL_42:
        v94 = 0;
        v209 = v72 & 0xFFFFFFFFFFFFFF8;
        v95 = (v72 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_45;
      }
    }

    else
    {

      if (!v73)
      {
        goto LABEL_42;
      }
    }

    v209 = sub_219BF7564();
    v87 = v96 >> 1;
LABEL_45:
    v259 = MEMORY[0x277D84F90];
    if (v87 != v94)
    {
      v72 = 0;
      v241 = (v222 + 104);
      v240 = v258 + 16;
      LODWORD(v239) = *MEMORY[0x277D340E0];
      v238 = v248 + 32;
      v237 = (v258 + 8);
      v236 = (v87 - v94);
      if (v87 <= v94)
      {
        v110 = v94;
      }

      else
      {
        v110 = v87;
      }

      v242 = v110 - v94;
      v235 = v95 + 8 * v94;
      v234 = xmmword_219C09BA0;
      v233 = xmmword_219C0B8C0;
      v259 = MEMORY[0x277D84F90];
      while (v242 != v72)
      {
        if (__OFADD__(v72, 1))
        {
          goto LABEL_121;
        }

        v111 = *(v235 + 8 * v72);
        v112 = [swift_unknownObjectRetain() identifier];
        v113 = sub_219BF5414();
        v115 = v114;

        sub_219497B60(&v270, v113, v115);

        v116 = [v111 identifier];
        v117 = sub_219BF5414();
        v262 = v118;
        v263 = v117;

        v119 = [v111 title];
        if (v119)
        {
          v120 = v119;
          sub_219BF5414();
        }

        v121 = sub_219BDBD34();
        (*(*(v121 - 8) + 56))(v245, 1, 1, v121);
        v122 = sub_219BF3044();
        (*(*(v122 - 8) + 56))(v251, 1, 1, v122);
        v123 = sub_219BF1C84();
        (*(*(v123 - 8) + 56))(v252, 1, 1, v123);
        v124 = sub_219BDB954();
        (*(*(v124 - 8) + 56))(v253, 1, 1, v124);
        sub_219BF3004();
        sub_219BF16E4();
        swift_allocObject();
        v125 = sub_219BF1694();
        v126 = v243;
        *v243 = v125;
        (*v241)(v126, v239, v256);
        v127 = sub_219BF4324();
        (*(*(v127 - 8) + 56))(v257, 1, 1, v127);
        v51 = v264;
        sub_219BF2D24();
        v270 = 0x2D6F726568;
        v271 = 0xE500000000000000;
        v272 = v72;
        v128 = sub_219BF7894();
        MEMORY[0x21CECC330](v128);

        sub_218D0698C(0, &unk_280E8B800, MEMORY[0x277D33BF0], MEMORY[0x277D84560]);
        v129 = v258;
        v130 = (*(v258 + 80) + 32) & ~*(v258 + 80);
        v131 = swift_allocObject();
        *(v131 + 16) = v234;
        (*(v129 + 16))(v131 + v130, v51, v261);
        sub_219BF2054();
        v132 = v259;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = sub_2191F8654(0, v132[2] + 1, 1, v132);
        }

        v134 = v132[2];
        v133 = v132[3];
        if (v134 >= v133 >> 1)
        {
          v132 = sub_2191F8654(v133 > 1, v134 + 1, 1, v132);
        }

        v132[2] = v134 + 1;
        v135 = (*(v248 + 80) + 32) & ~*(v248 + 80);
        v259 = v132;
        (*(v248 + 32))(v132 + v135 + *(v248 + 72) * v134, v269, v247);
        if (qword_280E8D958 != -1)
        {
          swift_once();
        }

        sub_2186F20D4();
        v136 = swift_allocObject();
        *(v136 + 16) = v233;
        v137 = [v111 identifier];
        v138 = sub_219BF5414();
        v140 = v139;

        v73 = MEMORY[0x277D837D0];
        *(v136 + 56) = MEMORY[0x277D837D0];
        v141 = sub_2186FC3BC();
        *(v136 + 32) = v138;
        *(v136 + 40) = v140;
        *(v136 + 96) = MEMORY[0x277D83B88];
        v142 = MEMORY[0x277D83C10];
        *(v136 + 64) = v141;
        *(v136 + 72) = v72;
        *(v136 + 136) = v73;
        *(v136 + 144) = v141;
        v143 = v249;
        *(v136 + 104) = v142;
        *(v136 + 112) = v143;
        *(v136 + 120) = v250;

        sub_219BF6214();
        sub_219BE5314();
        swift_unknownObjectRelease();

        (*v237)(v264, v261);
        ++v72;
        v74 = v268;
        if (v236 == v72)
        {
          goto LABEL_46;
        }
      }

LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

LABEL_46:
    swift_unknownObjectRelease();
    v97 = type metadata accessor for ChannelSectionsGroupModel();
    v98 = *(v224 + *(v97 + 24));
    MEMORY[0x28223BE20](v97);
    *&v208 = v74;

    v99 = v98;
    v100 = v225;
    v101 = sub_2195E6694(sub_218D06E9C, &v207, v99);
    v225 = v100;
    v84 = *(v101 + 16);
    v102 = v267;
    sub_219BEDD14();
    v103 = *(v102 + v265[15]);
    sub_218D06DBC(v102, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
    if (v84 < v103)
    {

      v51 = v249;
      if (qword_280E8D958 == -1)
      {
LABEL_48:
        sub_2186F20D4();
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_219C0B8C0;
        *(v104 + 56) = MEMORY[0x277D837D0];
        v105 = sub_2186FC3BC();
        v81 = v250;
        *(v104 + 32) = v51;
        *(v104 + 40) = v81;
        v106 = MEMORY[0x277D83B88];
        v107 = MEMORY[0x277D83C10];
        *(v104 + 96) = MEMORY[0x277D83B88];
        *(v104 + 104) = v107;
        *(v104 + 64) = v105;
        *(v104 + 72) = v84;

        v108 = v267;
        sub_219BEDD14();
        v109 = *(v108 + v265[15]);
        sub_218D06DBC(v108, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
        *(v104 + 136) = v106;
        *(v104 + 144) = v107;
        *(v104 + 112) = v109;
        sub_219BF6214();
        sub_219BE5314();
        goto LABEL_114;
      }

LABEL_128:
      swift_once();
      goto LABEL_48;
    }

    v243 = *(v101 + 16);
    if (!v243)
    {
      break;
    }

    v244 = 0;
    v72 = 0;
    v242 = v101 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
    LODWORD(v253) = *MEMORY[0x277D340E0];
    v252 = (v222 + 104);
    v251 = (v258 + 32);
    v239 = "%ld, channelID=%{public}@";
    LODWORD(v238) = *MEMORY[0x277D339C8];
    v237 = (v223 + 104);
    v236 = "local-section-kicker-title";
    v235 = v248 + 32;
    v234 = xmmword_219C0B8C0;
    v233 = xmmword_219C09EC0;
    v144 = v265;
    v241 = v101;
    while (v72 < *(v101 + 16))
    {
      v151 = *(v232 + 72);
      v245 = v72;
      v152 = v242 + v151 * v72;
      v153 = v246;
      sub_218D069F0(v152, v246, type metadata accessor for ChannelSectionsGroupSectionModel);
      v72 = *(v153 + 48);
      if (v72 >> 62)
      {
        v154 = sub_219BF7214();
        if (v154)
        {
LABEL_74:
          v155 = 0;
          v263 = v72 & 0xFFFFFFFFFFFFFF8;
          v264 = (v72 & 0xC000000000000001);
          v240 = v72;
          v262 = (v72 + 32);
          v51 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v264)
            {
              v269 = MEMORY[0x21CECE0F0](v155, v240);
            }

            else
            {
              if (v155 >= *(v263 + 16))
              {
                goto LABEL_119;
              }

              v269 = *&v262[8 * v155];
              swift_unknownObjectRetain();
            }

            if (__OFADD__(v155++, 1))
            {
              break;
            }

            v157 = *(v51 + 16);
            v158 = v267;
            sub_219BEDD14();
            v159 = *(v158 + v144[12]);
            sub_218D06DBC(v158, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
            if (v157 >= v159)
            {
              swift_unknownObjectRelease();
              goto LABEL_100;
            }

            v160 = v273;
            v161 = [v269 identifier];
            v162 = sub_219BF5414();
            v73 = v163;

            if (*(v160 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v164 = sub_219BF7AE4(), v165 = -1 << *(v160 + 32), v72 = v164 & ~v165, ((*(v160 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) != 0))
            {
              v166 = ~v165;
              while (1)
              {
                v167 = (*(v160 + 48) + 16 * v72);
                v168 = *v167 == v162 && v167[1] == v73;
                if (v168 || (sub_219BF78F4() & 1) != 0)
                {
                  break;
                }

                v72 = (v72 + 1) & v166;
                if (((*(v160 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
                {
                  goto LABEL_90;
                }
              }

              swift_unknownObjectRelease();

              v74 = v268;
              v144 = v265;
              if (v155 == v154)
              {
                goto LABEL_100;
              }
            }

            else
            {
LABEL_90:

              v169 = v269;
              v170 = [v269 identifier];
              v171 = sub_219BF5414();
              v173 = v172;

              sub_219497B60(&v270, v171, v173);

              v174 = [v169 identifier];
              v73 = sub_219BF5414();

              sub_219BF2FF4();
              sub_219BF16E4();
              swift_allocObject();
              v175 = sub_219BF1694();
              v176 = v254;
              *v254 = v175;
              (*v252)(v176, v253, v256);
              v177 = sub_219BF4324();
              (*(*(v177 - 8) + 56))(v257, 1, 1, v177);
              sub_219BF2D24();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v51 = sub_2191F8620(0, *(v51 + 16) + 1, 1, v51);
              }

              v74 = v268;
              v144 = v265;
              v72 = *(v51 + 16);
              v178 = *(v51 + 24);
              if (v72 >= v178 >> 1)
              {
                v51 = sub_2191F8620(v178 > 1, v72 + 1, 1, v51);
              }

              swift_unknownObjectRelease();
              *(v51 + 16) = v72 + 1;
              (*(v258 + 32))(v51 + ((*(v258 + 80) + 32) & ~*(v258 + 80)) + *(v258 + 72) * v72, v260, v261);
              if (v155 == v154)
              {
                goto LABEL_100;
              }
            }
          }

          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }
      }

      else
      {
        v154 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v154)
        {
          goto LABEL_74;
        }
      }

      v51 = MEMORY[0x277D84F90];
LABEL_100:
      v179 = *(v51 + 16);
      v180 = v267;
      sub_219BEDD14();
      v181 = *(v180 + v144[11]);
      sub_218D06DBC(v180, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
      if (v179 < v181)
      {
        if (qword_280E8D958 != -1)
        {
          swift_once();
        }

        sub_2186F20D4();
        v145 = swift_allocObject();
        *(v145 + 16) = v234;
        v146 = *(v51 + 16);

        v73 = MEMORY[0x277D83B88];
        *(v145 + 56) = MEMORY[0x277D83B88];
        v147 = MEMORY[0x277D83C10];
        *(v145 + 64) = MEMORY[0x277D83C10];
        *(v145 + 32) = v146;
        *(v145 + 96) = MEMORY[0x277D837D0];
        *(v145 + 104) = sub_2186FC3BC();
        v148 = v250;
        *(v145 + 72) = v249;
        *(v145 + 80) = v148;

        v149 = v267;
        sub_219BEDD14();
        v150 = *(v149 + v144[11]);
        sub_218D06DBC(v149, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
        *(v145 + 136) = v73;
        *(v145 + 144) = v147;
        *(v145 + 112) = v150;
        sub_219BF6214();
        sub_219BE5314();

        v101 = v241;
      }

      else
      {
        v270 = 0x2D6E6F6974636573;
        v271 = 0xE800000000000000;
        v272 = v244;
        v182 = sub_219BF7894();
        MEMORY[0x21CECC330](v182);

        v269 = v270;
        v264 = v271;
        sub_218D0698C(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
        v263 = *(v230 + 72);
        v262 = swift_allocObject();
        *(v262 + 1) = v233;
        v183 = v228;
        sub_219BF20F4();
        v73 = *v237;
        v184 = v238;
        v185 = v229;
        (*v237)(v183, v238, v229);
        sub_219BF1A04();
        sub_219BF20E4();
        v73(v183, v184, v185);
        sub_219BF1A04();
        sub_219BF2054();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v259 = sub_2191F8654(0, v259[2] + 1, 1, v259);
        }

        v101 = v241;
        v187 = v259[2];
        v186 = v259[3];
        v72 = v187 + 1;
        v144 = v265;
        if (v187 >= v186 >> 1)
        {
          v259 = sub_2191F8654(v186 > 1, v187 + 1, 1, v259);
        }

        v188 = v259;
        v259[2] = v72;
        (*(v248 + 32))(v188 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v187, v231, v247);
        if (__OFADD__(v244, 1))
        {
          goto LABEL_123;
        }

        ++v244;
      }

      v72 = (v245 + 1);
      sub_218D06DBC(v246, type metadata accessor for ChannelSectionsGroupSectionModel);
      if (v72 == v243)
      {

        v189 = v244;
        goto LABEL_110;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    ;
  }

  v189 = 0;
  v144 = v265;
LABEL_110:

  v190 = v267;
  sub_219BEDD14();
  v191 = *(v190 + v144[15]);
  sub_218D06DBC(v190, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  if (v189 < v191)
  {
    v192 = v189;

    if (qword_280E8D958 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v193 = swift_allocObject();
    *(v193 + 16) = xmmword_219C0B8C0;
    *(v193 + 56) = MEMORY[0x277D837D0];
    v194 = sub_2186FC3BC();
    v51 = v249;
    v195 = v250;
    *(v193 + 32) = v249;
    *(v193 + 40) = v195;
    v196 = MEMORY[0x277D83B88];
    v197 = MEMORY[0x277D83C10];
    *(v193 + 96) = MEMORY[0x277D83B88];
    *(v193 + 104) = v197;
    *(v193 + 64) = v194;
    *(v193 + 72) = v192;

    v198 = v267;
    sub_219BEDD14();
    v199 = *(v198 + v265[15]);
    sub_218D06DBC(v198, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
    *(v193 + 136) = v196;
    *(v193 + 144) = v197;
    *(v193 + 112) = v199;
    sub_219BF6214();
    sub_219BE5314();
    v81 = v195;
LABEL_114:

    v89 = 5;
LABEL_115:
    sub_218D06D68();
    swift_allocError();
    *v200 = v51;
    *(v200 + 8) = v81;
    *(v200 + 16) = v89;
    swift_willThrow();

    return v89;
  }

  v202 = v210;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v211 + 8))(v202, v212);
  (*(v213 + 16))(v215, v219, v214);
  sub_219BF1944();
  sub_2186DF6F4(&unk_280E907F0, MEMORY[0x277D33498]);
  sub_219BF4B74();
  v207 = 0u;
  v208 = 0u;
  v203 = v221;
  sub_219BF19E4();
  *&v208 = v203;
  *(&v208 + 1) = MEMORY[0x277D84F90];
  v204 = v216;
  sub_219BF2D54();
  sub_218D0698C(0, &unk_280E8B7F0, MEMORY[0x277D33C00], MEMORY[0x277D84560]);
  v205 = v218;
  v206 = (*(v218 + 80) + 32) & ~*(v218 + 80);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_219C09BA0;
  (*(v205 + 32))(v89 + v206, v204, v220);
  return v89;
}

BOOL sub_218D04A28(uint64_t a1)
{
  v2 = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 48);
  if (v5 >> 62)
  {
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_2186DF3DC();
  sub_219BEDD14();
  v7 = *&v4[*(v2 + 44)];
  sub_218D06DBC(v4, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  return v6 >= v7;
}

uint64_t sub_218D04B1C()
{
  sub_218A42400(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_218D0698C(0, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  sub_218D0698C(0, &unk_280E903D0, sub_218860D7C, v5);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  sub_218860D7C();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_218F998B0(v8);
  v17 = type metadata accessor for ChannelSupergroupConfig();
  if ((*(*(v17 - 8) + 48))(v8, 1, v17) == 1)
  {
    sub_218744F8C(v8, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig, MEMORY[0x277D83D88], sub_218D0698C);
    (*(v14 + 56))(v11, 1, 1, v13);
LABEL_4:
    sub_218744F8C(v11, &unk_280E903D0, sub_218860D7C, MEMORY[0x277D83D88], sub_218D0698C);
    sub_219BF1944();
    sub_2186DF6F4(&unk_280E907F0, MEMORY[0x277D33498]);
    return sub_219BF4064();
  }

  (*(v2 + 16))(v4, v8, v1);
  sub_218D06DBC(v8, type metadata accessor for ChannelSupergroupConfig);
  sub_219BF4054();
  (*(v2 + 8))(v4, v1);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    goto LABEL_4;
  }

  (*(v14 + 32))(v16, v11, v13);
  sub_218D0698C(0, &unk_280E8B810, sub_218860D7C, MEMORY[0x277D84560]);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09BA0;
  (*(v14 + 16))(v20 + v19, v16, v13);
  sub_219BF1944();
  sub_2186DF6F4(&unk_280E907F0, MEMORY[0x277D33498]);
  sub_219BF4064();
  return (*(v14 + 8))(v16, v13);
}

void sub_218D05034(void (*a1)(void *), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = qword_280E8D958;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_2186FC3BC();
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;

  sub_219BF6214();
  sub_219BE5314();

  v16 = *(a7 + 256);
  v17 = sub_219BF53D4();
  LODWORD(v16) = [v16 hasSubscriptionToTagID_];

  if (v16)
  {

    LOBYTE(aBlock[0]) = 1;
LABEL_7:
    a1(aBlock);
    return;
  }

  v18 = NewsCoreUserDefaults();
  v19 = [v18 BOOLForKey_];

  if (v19)
  {

    sub_219BF6214();
    sub_219BE5314();
    LOBYTE(aBlock[0]) = 0;
    goto LABEL_7;
  }

  sub_219BF6214();
  sub_219BE5314();
  v20 = [*(a7 + 264) mostFrequentLocation];
  if (v20)
  {
    v21 = v20;
    sub_219BF6214();
    sub_219BE5314();
    v22 = *(a7 + 272);
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = v21;
    v23[5] = a5;
    v23[6] = a6;
    v23[7] = sub_218858DF4;
    v23[8] = v13;
    aBlock[4] = sub_218D06F84;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218C1CBB4;
    aBlock[3] = &block_descriptor_21_1;
    v24 = _Block_copy(aBlock);

    v25 = v21;

    [v22 fetchLocalAreasProvider_];
    _Block_release(v24);
  }

  else
  {

    sub_219BF6214();
    sub_219BE5314();
    sub_218D06D68();
    v26 = swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 8;
    a3();
  }
}

void sub_218D0543C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  if (qword_280E8D958 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09BA0;
  v15 = MEMORY[0x277D839F0];
  *(v14 + 56) = MEMORY[0x277D839B0];
  *(v14 + 64) = v15;
  *(v14 + 32) = a1 != 0;
  sub_219BF6214();
  sub_219BE5314();

  if (a1)
  {
    v16 = [swift_unknownObjectRetain() autoFavoriteTagIDsForLocation_];
    v17 = sub_219BF5D44();

    v18 = sub_2188537B8(a6, a7, v17);

    a8(v18 & 1);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_218D06D68();
    v19 = swift_allocError();
    *v20 = xmmword_219C14CF0;
    *(v20 + 16) = 8;
    a3();
  }
}

uint64_t sub_218D05638()
{
  if (qword_280E8D958 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v0 = sub_219BE5314();
  MEMORY[0x28223BE20](v0);
  sub_218D0698C(0, &unk_280EE6BC8, MEMORY[0x277D33350], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218D057B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BF0D34();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_218D05880@<X0>(id *a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_280E8D958 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = [*a1 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  v9 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2186FC3BC();
  *(v4 + 64) = v10;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v4 + 96) = v9;
  *(v4 + 104) = v10;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  v11 = sub_219BF0D34();
  return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
}

void sub_218D05A40(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v28 = a3;
  v29 = a4;
  v27 = a1;
  v9 = sub_219BF1404();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ChannelSectionsGroupModel();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [*(a5 + 264) mostFrequentLocation];
  if (v17)
  {
    v18 = v17;
    if (qword_280E8D958 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    v19 = *(a5 + 272);
    sub_218D069F0(a6, &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChannelSectionsGroupModel);
    v20 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v21 = (v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v22[2] = v27;
    v22[3] = a2;
    v22[4] = a5;
    sub_218D06754(v16, v22 + v20, type metadata accessor for ChannelSectionsGroupModel);
    *(v22 + v21) = v18;
    v23 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
    v24 = v29;
    *v23 = v28;
    v23[1] = v24;
    aBlock[4] = sub_218D06CA4;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218C1CBB4;
    aBlock[3] = &block_descriptor_53;
    v25 = _Block_copy(aBlock);

    v26 = v18;

    [v19 fetchLocalAreasProvider_];
    _Block_release(v25);
  }

  else
  {
    if (qword_280E8D958 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    sub_218D05E40(a6, v12);
    v27(v12);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_218D05E40@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D83D88];
  sub_218D0698C(0, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  sub_218D0698C(0, &qword_280E908B8, MEMORY[0x277D33350], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - v9;
  if (qword_280E8D958 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v11 = *a1;
  swift_getObjectType();
  sub_218F998B0(v7);
  v12 = type metadata accessor for ChannelSupergroupConfig();
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_218744F8C(v7, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig, MEMORY[0x277D83D88], sub_218D0698C);
    v13 = sub_219BF1404();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
LABEL_6:
    sub_218744F8C(v10, &qword_280E908B8, MEMORY[0x277D33350], MEMORY[0x277D83D88], sub_218D0698C);
    sub_2186F20D4();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09BA0;
    v17 = [v11 identifier];
    v18 = sub_219BF5414();
    v20 = v19;

    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_2186FC3BC();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    sub_219BF6214();
    sub_219BE5314();

    v21 = [v11 identifier];
    v22 = sub_219BF5414();
    v24 = v23;

    sub_218D06D68();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    *(v25 + 16) = 6;
    return swift_willThrow();
  }

  sub_218D06E1C(&v7[*(v12 + 24)], v10, &qword_280E908B8, MEMORY[0x277D33350]);
  sub_218D06DBC(v7, type metadata accessor for ChannelSupergroupConfig);
  v14 = sub_219BF1404();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    goto LABEL_6;
  }

  (*(v15 + 32))(a2, v10, v14);
  sub_219BF6214();
  return sub_219BE5314();
}

uint64_t sub_218D062E8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, id *a6, void *a7, uint64_t a8)
{
  v31[1] = a8;
  v33 = a4;
  v34 = a3;
  v32 = sub_219BF1404();
  v12 = *(v32 - 8);
  v13 = MEMORY[0x28223BE20](v32);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v31 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v31 - v19;
  if (qword_280E8D958 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_219C09BA0;
  v22 = MEMORY[0x277D839F0];
  *(v21 + 56) = MEMORY[0x277D839B0];
  *(v21 + 64) = v22;
  *(v21 + 32) = a1 != 0;
  sub_219BF6214();
  sub_219BE5314();

  if (a1)
  {
    v31[0] = a5;
    v23 = [swift_unknownObjectRetain() autoFavoriteTagIDsForLocation_];
    v24 = sub_219BF5D44();

    v25 = [*a6 identifier];
    v26 = sub_219BF5414();
    v28 = v27;

    LOBYTE(v25) = sub_2188537B8(v26, v28, v24);

    if (v25)
    {
      v29 = a7;
      sub_219BF13F4();
      v34(v18);
      swift_unknownObjectRelease();
      return (*(v12 + 8))(v18, v32);
    }

    else
    {
      sub_218D05E40(a6, v15);
      v34(v15);
      swift_unknownObjectRelease();
      return (*(v12 + 8))(v15, v32);
    }
  }

  else
  {
    sub_218D05E40(a6, v20);
    v34(v20);
    return (*(v12 + 8))(v20, v32);
  }
}

void sub_218D06650()
{
  if (!qword_280E90828)
  {
    sub_219BF1904();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E90828);
    }
  }
}

void sub_218D066B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig();
    v7 = sub_2186DF6F4(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218D06754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D067BC(uint64_t a1, uint64_t a2)
{
  sub_2186DF3DC();
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_219BF0BD4() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for ChannelSectionsGroupModel() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (v2 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_218D01280(a1, a2, v2 + v6, v2 + v9, v2 + v12, v2 + v15, *v16, v16[1]);
}

void sub_218D0698C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218D069F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D06A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_219BED8D4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ChannelSectionsGroupModel() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2186DF3DC();
  v12 = (v10 + *(*(v11 - 8) + 80) + 8) & ~*(*(v11 - 8) + 80);
  v13 = v2 + ((*(*(v11 - 8) + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_218D0206C(a1, *(v2 + 16), *(v2 + 24), v2 + v6, (v2 + v9), *(v2 + v10), v2 + v12, *v13, a2, *(v13 + 8));
}

uint64_t sub_218D06CA4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ChannelSectionsGroupModel() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_218D062E8(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), (v2 + v6), *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_218D06D68()
{
  result = qword_280EE16F0[0];
  if (!qword_280EE16F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EE16F0);
  }

  return result;
}

uint64_t sub_218D06DBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D06E1C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218D0698C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_218D06EBC()
{
  result = qword_280E8E850;
  if (!qword_280E8E850)
  {
    sub_2186C6148(255, &qword_280E8E860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8E850);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI205LocalA21TodayFeedGroupServiceC6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

uint64_t sub_218D06FD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_218D0701C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_218D07060(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_218D07090()
{
  sub_21896FA3C();
  v31 = *(v1 - 8);
  v2 = *(v31 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v32 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - v4;
  sub_218D07774(0, &qword_280EE5B78, sub_218951108, &type metadata for MagazineSectionBarModel, MEMORY[0x277D6D3F0]);
  sub_219BE5FC4();
  v44[8] = v45[10];
  v45[0] = v46[0];
  *(v45 + 9) = *(v46 + 9);
  v44[4] = v45[6];
  v44[5] = v45[7];
  v44[6] = v45[8];
  v44[7] = v45[9];
  v44[0] = v45[2];
  v44[1] = v45[3];
  v6 = v5;
  v44[2] = v45[4];
  v44[3] = v45[5];
  v7 = *(v0 + 72);
  v8 = swift_allocObject();
  v9 = *(&v45[0] + 1);
  v10 = *&v45[1];
  v11 = BYTE8(v45[1]);
  *(v8 + 16) = *(&v45[0] + 1);
  *(v8 + 24) = v10;
  *(v8 + 32) = v11;
  v33 = v8;
  v29 = v8 | 0x6000000000000006;
  v12 = *(v0 + 64);
  v13 = sub_219BDFA44();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v39 = v7;
  sub_2187B14CC(v40, &v35, &unk_280EE7DB0, &qword_280EE7DC0);
  if (v36)
  {
    sub_21875F93C(&v35, v37);
    sub_218AB7B18(v9, v10, v11);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v15 = qword_280ED32D8;
    v14 = qword_280ED32E0;
    v16 = qword_280ED32E8;

    v30 = v14;
    sub_2188202A8(v14);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_218AB7B18(v9, v10, v11);
    sub_2187448D0(&v35, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v15 = qword_280ED32D8;
    v17 = qword_280ED32E0;
    v16 = qword_280ED32E8;

    v30 = v17;
    sub_2188202A8(v17);
  }

  v34 = v29;
  v36 = sub_219BDD274();
  *&v35 = v12;
  v18 = v32;
  sub_2189B4E2C(v6, v32);
  sub_2187B14CC(v42, v37, &qword_280EE33A0, &qword_280EE33B0);
  v19 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v20 = (v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v31 = v6;
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  sub_2189B4EAC(v18, v22 + v19);
  v23 = v22 + v20;
  v24 = v37[1];
  *v23 = v37[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v38;
  v25 = (v22 + v21);
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = 0;
  v25[1] = 0;
  v27 = v30;
  *v26 = v15;
  v26[1] = v27;
  v26[2] = v16;
  swift_retain_n();

  sub_2188202A8(v27);
  sub_218D07774(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v27);
  sub_2187448D0(v40, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v42, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v31);
  sub_218C113E0(v44);
  sub_2187448D0(&v35, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

void sub_218D07774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_218D07894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  sub_218D09D1C(0);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  sub_218C3E604();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = sub_219BE8944();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v9 = sub_219BE8164();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  sub_219BEF6B4();
  v5[25] = swift_task_alloc();
  v10 = sub_219BEF594();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  sub_219BEF5B4();
  v5[29] = swift_task_alloc();
  sub_219BEF604();
  v5[30] = swift_task_alloc();
  sub_219BEF644();
  v5[31] = swift_task_alloc();
  sub_219BEF664();
  v5[32] = swift_task_alloc();
  v11 = sub_219BEF694();
  v5[33] = v11;
  v5[34] = *(v11 - 8);
  v5[35] = swift_task_alloc();
  sub_218D09EB8(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[36] = swift_task_alloc();
  sub_218D09EB8(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[37] = swift_task_alloc();
  v12 = sub_219BEF6C4();
  v5[38] = v12;
  v5[39] = *(v12 - 8);
  v5[40] = swift_task_alloc();
  sub_219BDCAF4();
  v5[41] = swift_task_alloc();
  v13 = sub_219BDCAE4();
  v5[42] = v13;
  v5[43] = *(v13 - 8);
  v5[44] = swift_task_alloc();
  v14 = sub_219BDCAB4();
  v5[45] = v14;
  v5[46] = *(v14 - 8);
  v5[47] = swift_task_alloc();
  sub_218D09EB8(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[48] = swift_task_alloc();
  v15 = sub_219BF0634();
  v5[49] = v15;
  v5[50] = *(v15 - 8);
  v5[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D07E78, 0, 0);
}

uint64_t sub_218D07E78()
{
  v33 = v0[51];
  v1 = v0[48];
  v36 = v0[49];
  v37 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];
  v53 = v0[44];
  v45 = v0[43];
  v49 = v0[42];
  v35 = v0[40];
  v38 = v0[39];
  v39 = v0[38];
  v27 = v0[36];
  v5 = v0[34];
  v29 = v0[35];
  v30 = v0[33];
  v25 = v0[37];
  v34 = v0[28];
  v32 = v0[27];
  v26 = *(*(v0[12] + 24) + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_log);
  v31 = v0[26];
  v42 = v0[24];
  v40 = v0[23];
  v41 = v0[22];
  v48 = v0[21];
  v43 = v0[20];
  v46 = v0[19];
  v6 = v0[10];
  (*(v37 + 16))();
  v7 = sub_219BF0BD4();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 104))(v2, *MEMORY[0x277D6D178], v4);
  v28 = v26;
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v8 = sub_219BEF624();
  (*(*(v8 - 8) + 56))(v25, 1, 1, v8);
  v9 = sub_219BEF684();
  (*(*(v9 - 8) + 56))(v27, 1, 1, v9);
  (*(v5 + 104))(v29, *MEMORY[0x277D326B0], v30);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v32 + 104))(v34, *MEMORY[0x277D32680], v31);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  v51 = sub_219BEE0E4();

  (*(v38 + 8))(v35, v39);
  (*(v45 + 8))(v53, v49);
  (*(v3 + 8))(v2, v4);
  sub_218864BCC(v1, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v37 + 8))(v33, v36);
  (*(v40 + 16))(v42, v6, v41);
  (*(v43 + 104))(v48, *MEMORY[0x277D6E078], v46);
  sub_218D09D3C(0);
  sub_218D09E70(&qword_280EE35E8, sub_218D09D3C);
  v10 = sub_219BF5E44();
  if (v10)
  {
    v11 = v10;
    v54 = MEMORY[0x277D84F90];
    sub_218C353D0(0, v10 & ~(v10 >> 63), 0);
    result = sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v14 = v0[14];
      v47 = (v14 + 16);
      v50 = (v14 + 8);
      v44 = v0[17];
      while (!__OFADD__(v13, 1))
      {
        v52 = v13 + 1;
        v15 = v0[18];
        v16 = v0[15];
        v17 = sub_219BF5EC4();
        (*v47)(v16);
        v17(v0 + 2, 0);
        sub_219BE6934();
        sub_218D08918(v51, v0[7] + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_formatContent, v15);
        v18 = v0[15];
        v19 = v0[13];

        (*v50)(v18, v19);
        v21 = *(v54 + 16);
        v20 = *(v54 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_218C353D0(v20 > 1, v21 + 1, 1);
        }

        v22 = v0[18];
        v23 = v0[16];
        *(v54 + 16) = v21 + 1;
        (*(v44 + 32))(v54 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v21, v22, v23);
        result = sub_219BF5E94();
        ++v13;
        if (v52 == v11)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    type metadata accessor for PuzzleContinuePlayingLayoutModel();
    sub_218B201C0();
    sub_218D09E70(&unk_280EA5730, type metadata accessor for PuzzleContinuePlayingLayoutModel);
    sub_219BE6564();
    sub_219BEE0C4();

    v24 = v0[1];

    return v24();
  }

  return result;
}

uint64_t sub_218D08918@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v132 = a2;
  v145 = a1;
  v127 = a3;
  sub_218D09EB8(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v135 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v121 = &v110 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v120 = &v110 - v9;
  MEMORY[0x28223BE20](v8);
  v119 = &v110 - v10;
  v136 = sub_219BDCB14();
  v133 = *(v136 - 1);
  MEMORY[0x28223BE20](v136);
  v134 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D09EB8(0, &qword_280E91990, MEMORY[0x277D32218]);
  MEMORY[0x28223BE20](v12 - 8);
  v118 = &v110 - v13;
  sub_218D09EB8(0, &qword_280E91548, MEMORY[0x277D325F8]);
  MEMORY[0x28223BE20](v14 - 8);
  v117 = &v110 - v15;
  sub_218D09EB8(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v110 - v17;
  v144 = type metadata accessor for PuzzleContinuePlayingLayoutModel();
  MEMORY[0x28223BE20](v144);
  v141 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3E570();
  v140 = v20;
  v143 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v111 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v115 = &v110 - v23;
  sub_218C401FC();
  v138 = v24;
  v113 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v137 = (&v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = sub_219BEF974();
  v146 = *(v142 - 8);
  v26 = MEMORY[0x28223BE20](v142);
  v139 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v112 = (&v110 - v28);
  v29 = sub_219BE9FA4();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v116 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v126 = &v110 - v33;
  v128 = sub_219BEE074();
  v34 = *(v128 - 8);
  v35 = MEMORY[0x28223BE20](v128);
  v37 = &v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v122 = &v110 - v39;
  MEMORY[0x28223BE20](v38);
  v125 = &v110 - v40;
  sub_218D09D1C(0);
  v42 = v41;
  v43 = sub_218D09E70(&qword_280EE5900, sub_218D09D1C);
  sub_219BF5DF4();
  sub_219BF5E84();
  v124 = v34;
  v123 = v30;
  if (*&v147[0] == v149)
  {
    v44 = sub_219BF5E44();
    if (v44)
    {
      v45 = v42;
      v114 = v29;
      v149 = MEMORY[0x277D84F90];
      v46 = v44;
      sub_218C35510(0, v44 & ~(v44 >> 63), 0);
      v47 = v149;
      result = sub_219BF5DF4();
      if (v46 < 0)
      {
        __break(1u);
        return result;
      }

      v49 = v46;
      v50 = v43;
      v135 = (v113 + 8);
      v136 = (v113 + 16);
      LODWORD(v134) = *MEMORY[0x277D32830];
      v132 = v146 + 32;
      v133 = v146 + 104;
      v51 = v142;
      v52 = v112;
      v53 = v47;
      v131 = v50;
      v130 = v45;
      do
      {
        v145 = v49;
        v54 = sub_219BF5EC4();
        v55 = v137;
        v56 = v138;
        (*v136)(v137);
        v54(v147, 0);
        v57 = swift_allocObject();
        v58 = sub_219BE5F84();
        v60 = v59;
        (*v135)(v55, v56);
        *(v57 + 16) = v58;
        *(v57 + 24) = v60;
        *v52 = v57;
        (*v133)(v52, v134, v51);
        v149 = v53;
        v62 = *(v53 + 16);
        v61 = *(v53 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_218C35510(v61 > 1, v62 + 1, 1);
          v51 = v142;
          v53 = v149;
        }

        *(v53 + 16) = v62 + 1;
        (*(v146 + 32))(v53 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v62, v52, v51);
        sub_219BF5E94();
        v49 = v145 - 1;
      }

      while (v145 != 1);
      v72 = v128;
      v34 = v124;
      v29 = v114;
    }

    else
    {
      v72 = v128;
    }

    v73 = v125;
    sub_219BEE064();

    v74 = v122;
    (*(v34 + 16))(v122, v73, v72);
    *&v147[0] = sub_21972C54C(v74);
    *(&v147[0] + 1) = v75;
    v76 = *MEMORY[0x277D6E980];
    v77 = sub_219BE9F84();
    v78 = v126;
    (*(*(v77 - 8) + 104))(v126, v76, v77);
    (*(v123 + 104))(v78, *MEMORY[0x277D6E988], v29);
    v79 = sub_219BEE004();
    v80 = *(v79 + 16);
    if (v80)
    {
      v149 = MEMORY[0x277D84F90];
      sub_218C354C0(0, v80, 0);
      v81 = v149;
      v145 = *(v146 + 16);
      v146 += 16;
      v82 = v79 + ((*(v146 + 64) + 32) & ~*(v146 + 64));
      v83 = *(v146 + 56);
      v137 = (v146 - 8);
      v138 = v83;
      v135 = v79;
      v136 = (v143 + 32);
      v84 = v115;
      v85 = v145;
      do
      {
        v86 = v139;
        v87 = v142;
        (v85)(v139, v82, v142);
        (v85)(v141, v86, v87);
        sub_218D09E70(qword_280EA5740, type metadata accessor for PuzzleContinuePlayingLayoutModel);
        sub_219BE75D4();
        (*v137)(v86, v87);
        v149 = v81;
        v89 = *(v81 + 16);
        v88 = *(v81 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_218C354C0(v88 > 1, v89 + 1, 1);
          v81 = v149;
        }

        *(v81 + 16) = v89 + 1;
        (*(v143 + 32))(v81 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v89, v84, v140);
        v82 += v138;
        --v80;
      }

      while (v80);

      v72 = v128;
      v34 = v124;
    }

    else
    {
    }

    sub_218B201C0();
    sub_218D09E70(&unk_280EA5730, type metadata accessor for PuzzleContinuePlayingLayoutModel);
    sub_219BE81A4();
    return (*(v34 + 8))(v125, v72);
  }

  else
  {
    v114 = v29;
    v63 = sub_219BEDB64();
    (*(*(v63 - 8) + 56))(v18, 1, 1, v63);
    v64 = sub_219BEF4E4();
    v65 = v117;
    (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
    v66 = sub_219BEEA64();
    v67 = v118;
    (*(*(v66 - 8) + 56))(v118, 1, 1, v66);
    sub_218D09E1C();
    sub_218D09E70(&qword_27CC11220, type metadata accessor for PuzzleContinuePlayingModel);
    sub_219BE69F4();
    sub_218864BCC(v67, &qword_280E91990, MEMORY[0x277D32218]);
    sub_218864BCC(v65, &qword_280E91548, MEMORY[0x277D325F8]);
    sub_218864BCC(v18, &qword_280E924F8, MEMORY[0x277D31DD0]);
    v68 = sub_219BDCB24();
    memset(v147, 0, sizeof(v147));
    v148 = 0;
    v69 = *(*(v68 - 8) + 56);
    v69(v119, 1, 1, v68);
    v69(v120, 1, 1, v68);
    v69(v121, 1, 1, v68);
    v69(v135, 1, 1, v68);
    v70 = v134;
    sub_219BDCB04();
    v71 = v129;
    sub_219BEE0B4();
    if (v71)
    {

      (*(v133 + 8))(v70, v136);
      return sub_218864BCC(v147, &qword_280E91020, sub_2189BD704);
    }

    else
    {
      v90 = MEMORY[0x277D84F90];

      (*(v133 + 8))(v70, v136);
      sub_218864BCC(v147, &qword_280E91020, sub_2189BD704);
      v91 = v124;
      v92 = v122;
      v93 = v128;
      (*(v124 + 16))(v122, v37, v128);
      *&v147[0] = sub_21972C54C(v92);
      *(&v147[0] + 1) = v94;
      v95 = *MEMORY[0x277D6E980];
      v96 = sub_219BE9F84();
      v97 = v116;
      (*(*(v96 - 8) + 104))(v116, v95, v96);
      (*(v123 + 104))(v97, *MEMORY[0x277D6E988], v114);
      v135 = v37;
      v98 = sub_219BEE004();
      v99 = *(v98 + 16);
      if (v99)
      {
        v129 = 0;
        v149 = v90;
        sub_218C354C0(0, v99, 0);
        v100 = v149;
        v145 = *(v146 + 16);
        v146 += 16;
        v101 = (*(v146 + 64) + 32) & ~*(v146 + 64);
        v134 = v98;
        v102 = v98 + v101;
        v103 = *(v146 + 56);
        v137 = (v146 - 8);
        v138 = v103;
        v136 = (v143 + 32);
        v104 = v111;
        v105 = v145;
        do
        {
          v106 = v139;
          v107 = v142;
          (v105)(v139, v102, v142);
          (v105)(v141, v106, v107);
          sub_218D09E70(qword_280EA5740, type metadata accessor for PuzzleContinuePlayingLayoutModel);
          sub_219BE75D4();
          (*v137)(v106, v107);
          v149 = v100;
          v109 = *(v100 + 16);
          v108 = *(v100 + 24);
          if (v109 >= v108 >> 1)
          {
            sub_218C354C0(v108 > 1, v109 + 1, 1);
            v100 = v149;
          }

          *(v100 + 16) = v109 + 1;
          (*(v143 + 32))(v100 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v109, v104, v140);
          v102 += v138;
          --v99;
        }

        while (v99);

        v93 = v128;
        v91 = v124;
      }

      else
      {
      }

      sub_218B201C0();
      sub_218D09E70(&unk_280EA5730, type metadata accessor for PuzzleContinuePlayingLayoutModel);
      sub_219BE81A4();
      return (*(v91 + 8))(v135, v93);
    }
  }
}

uint64_t sub_218D09C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_218D07894(a1, a2, a3, a4);
}

void sub_218D09D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for PuzzleContinuePlayingSectionDescriptor;
    v8[1] = type metadata accessor for PuzzleContinuePlayingModel();
    v8[2] = sub_218AE146C();
    v8[3] = sub_218D09E70(&qword_280EBAB50, type metadata accessor for PuzzleContinuePlayingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218D09E1C()
{
  result = qword_27CC11218;
  if (!qword_27CC11218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11218);
  }

  return result;
}

uint64_t sub_218D09E70(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218D09EB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for CuratedTagFeedGroupKnobs()
{
  result = qword_280EC23F0;
  if (!qword_280EC23F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D09F80()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_218CC4F9C();
    if (v1 <= 0x3F)
    {
      sub_2186F9548();
      if (v2 <= 0x3F)
      {
        sub_2186F95C4();
        if (v3 <= 0x3F)
        {
          sub_2186ECA28();
          if (v4 <= 0x3F)
          {
            sub_218D0A09C();
            if (v5 <= 0x3F)
            {
              sub_2186EDCB0(319, &qword_280E912E0, MEMORY[0x277D32720]);
              if (v6 <= 0x3F)
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

void sub_218D0A09C()
{
  if (!qword_280EE2410)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE2410);
    }
  }
}

uint64_t sub_218D0A0EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  sub_2189AD5C8();
  v70 = v3;
  v75 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v71 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CuratedTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = v54 - v9;
  sub_2186EDCB0(0, &qword_280E91A70, sub_2189AD5C8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v73 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = v54 - v13;
  sub_218D0B63C(0, &qword_280E8CDB8, MEMORY[0x277D844C8]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = v54 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D0B468();
  v19 = v76;
  sub_219BF7B34();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v60 = 0;
  v76 = v16;
  v62 = v7;
  v61 = v5;
  v57 = a1;
  LOBYTE(v85) = 0;
  sub_21877C798(&qword_280E91A88, sub_2189AD5C8);
  v21 = v74;
  v22 = v70;
  sub_219BF7674();
  sub_218CC4F9C();
  v24 = v23;
  LOBYTE(v84) = 1;
  sub_21877C798(&qword_280E91798, sub_218CC4F9C);
  v54[0] = v24;
  sub_219BF7674();
  v58 = v85;
  sub_2186F9548();
  v26 = v25;
  LOBYTE(v83) = 2;
  sub_21877C798(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v68 = v84;
  LOBYTE(v82) = 3;
  v54[2] = v26;
  sub_219BF7674();
  v64 = v83;
  sub_2186F95C4();
  LOBYTE(v81) = 4;
  sub_21877C798(&qword_280E913F8, sub_2186F95C4);
  sub_219BF7674();
  v67 = v82;
  sub_2186ECA28();
  v28 = v27;
  LOBYTE(v80) = 5;
  sub_21877C798(&qword_280E913D8, sub_2186ECA28);
  v54[1] = v28;
  sub_219BF7674();
  v63 = v81;
  LOBYTE(v78) = 6;
  sub_219BF7674();
  v65 = v80;
  LOBYTE(v78) = 7;
  sub_218D0B4BC();
  sub_219BF7674();
  v56 = v79;
  sub_219BEF814();
  LOBYTE(v78) = 8;
  sub_21877C798(&qword_280E912E8, MEMORY[0x277D32720]);
  v29 = v69;
  sub_219BF7674();
  LOBYTE(v77) = 9;
  v55 = v15;
  sub_219BF7674();
  v66 = v78;
  v30 = v73;
  sub_218D0B510(v21, v73, &qword_280E91A70, sub_2189AD5C8);
  v31 = *(v75 + 48);
  v32 = v31(v30, 1, v22);
  v33 = v22;
  v59 = v18;
  if (v32 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C798(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v33 = v22;
    v34 = v73;
    v35 = v71;
    sub_219BEE974();
    v36 = v31(v34, 1, v33);
    v38 = v75;
    v37 = v76;
    if (v36 != 1)
    {
      sub_218D0B57C(v34, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    v38 = v75;
    v35 = v71;
    (*(v75 + 32))(v71, v30, v22);
    v37 = v76;
  }

  v39 = v62;
  (*(v38 + 32))(v62, v35, v33);
  v40 = v61;
  if (v58)
  {
    v41 = v58;
  }

  else
  {
    swift_allocObject();
    v41 = sub_219BEEE04();
    v37 = v76;
  }

  v42 = v55;
  *(v39 + v40[5]) = v41;
  v43 = v68;
  if (v68)
  {

    v44 = v43;
  }

  else
  {
    v77 = 1;
    swift_allocObject();

    v44 = sub_219BEF534();
    v37 = v76;
  }

  *(v39 + v40[6]) = v44;
  v45 = v64;
  if (v64)
  {

    v46 = v45;
  }

  else
  {
    v77 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();

    v46 = sub_219BEF534();
    v37 = v76;
  }

  *(v39 + v40[7]) = v46;
  v47 = v67;
  if (v67)
  {

    v48 = v47;
  }

  else
  {
    LOBYTE(v77) = 1;
    swift_allocObject();

    v48 = sub_219BEF534();
    v37 = v76;
  }

  *(v39 + v40[8]) = v48;
  v49 = v63;
  if (v63)
  {

    v50 = v49;
  }

  else
  {
    v77 = 0;
    swift_allocObject();

    v50 = sub_219BEF534();
    v37 = v76;
  }

  *(v39 + v40[9]) = v50;
  if (v65)
  {

    v51 = v65;
  }

  else
  {
    LOBYTE(v77) = 1;
    swift_allocObject();

    v51 = sub_219BEF534();
    v37 = v76;
  }

  *(v39 + v40[10]) = v51;
  *(v39 + v40[11]) = v56;
  sub_218D0B510(v29, v39 + v40[12], &qword_280E912E0, MEMORY[0x277D32720]);
  if (v66)
  {

    sub_218D0B57C(v29, &qword_280E912E0, MEMORY[0x277D32720]);
    sub_218D0B57C(v74, &qword_280E91A70, sub_2189AD5C8);
    (*(v37 + 8))(v59, v42);
    v52 = v66;
  }

  else
  {
    LOBYTE(v77) = 1;
    swift_allocObject();
    v53 = v37;
    v52 = sub_219BEF534();

    sub_218D0B57C(v29, &qword_280E912E0, MEMORY[0x277D32720]);
    sub_218D0B57C(v74, &qword_280E91A70, sub_2189AD5C8);
    (*(v53 + 8))(v59, v42);
  }

  *(v39 + v40[13]) = v52;
  sub_218D0B5D8(v39, v72);
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

unint64_t sub_218D0ACDC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6972657473756C63;
    if (a1 != 8)
    {
      v5 = 0x6F6C42776F6C6C61;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000011;
    if (a1 == 5)
    {
      v6 = 0xD000000000000016;
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
    v1 = 0x73656C7572;
    v2 = 0xD000000000000010;
    v3 = 0x6F43657269707865;
    if (a1 == 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000015;
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

uint64_t sub_218D0AE48(void *a1)
{
  v3 = v1;
  sub_218D0B63C(0, &qword_27CC11228, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D0B468();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877C798(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for CuratedTagFeedGroupKnobs();
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_218CC4F9C();
    sub_21877C798(&qword_280E917A0, sub_218CC4F9C);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_2186F9548();
    sub_21877C798(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_2186F95C4();
    sub_21877C798(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_2186ECA28();
    sub_21877C798(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_219BF7834();
    LOBYTE(v14) = *(v3 + v10[11]);
    v13 = 7;
    sub_218D0B6A0();
    sub_219BF77E4();
    v12 = v10[12];
    LOBYTE(v14) = 8;
    sub_219BEF814();
    sub_21877C798(&qword_280E912F0, MEMORY[0x277D32720]);
    sub_219BF77E4();
    v14 = *(v3 + v10[13]);
    v13 = 9;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218D0B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218D0BE78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218D0B38C(uint64_t a1)
{
  v2 = sub_218D0B468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D0B3C8(uint64_t a1)
{
  v2 = sub_218D0B468();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218D0B468()
{
  result = qword_280EC2428[0];
  if (!qword_280EC2428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC2428);
  }

  return result;
}

unint64_t sub_218D0B4BC()
{
  result = qword_280EE2418;
  if (!qword_280EE2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2418);
  }

  return result;
}

uint64_t sub_218D0B510(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2186EDCB0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218D0B57C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2186EDCB0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218D0B5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218D0B63C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D0B468();
    v7 = a3(a1, &type metadata for CuratedTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218D0B6A0()
{
  result = qword_27CC11230;
  if (!qword_27CC11230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11230);
  }

  return result;
}

uint64_t sub_218D0B6F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v28 - v9;
  sub_218CC85CC();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TagFeedServiceConfig();
  sub_21877C798(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_218CC4F9C();
  v15 = type metadata accessor for CuratedTagFeedGroupKnobs();
  if ((sub_219BEEDE4() & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_2186F9548();
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_2186F95C4();
  v28[1] = v16;
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0 || (sub_219BEF504() & 1) == 0)
  {
    goto LABEL_19;
  }

  v17 = *(v15 + 44);
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18 == 7)
  {
    if (v19 != 7)
    {
      goto LABEL_19;
    }
  }

  else if (v19 == 7 || (sub_21908AACC(v18, v19) & 1) == 0)
  {
    goto LABEL_19;
  }

  v28[0] = *(v15 + 48);
  v20 = *(v12 + 48);
  v21 = MEMORY[0x277D32720];
  sub_218D0B510(a1 + v28[0], v14, &qword_280E912E0, MEMORY[0x277D32720]);
  v22 = a2 + v28[0];
  v28[0] = v20;
  sub_218D0B510(v22, &v14[v20], &qword_280E912E0, v21);
  v23 = *(v5 + 48);
  if (v23(v14, 1, v4) == 1)
  {
    if (v23(&v14[v28[0]], 1, v4) == 1)
    {
      sub_218D0B57C(v14, &qword_280E912E0, MEMORY[0x277D32720]);
LABEL_22:
      v24 = sub_219BEF504();
      return v24 & 1;
    }

    goto LABEL_18;
  }

  sub_218D0B510(v14, v10, &qword_280E912E0, MEMORY[0x277D32720]);
  if (v23(&v14[v28[0]], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_18:
    sub_218D0BBC4(v14);
    goto LABEL_19;
  }

  (*(v5 + 32))(v7, &v14[v28[0]], v4);
  sub_21877C798(&qword_27CC10CD8, MEMORY[0x277D32720]);
  v26 = sub_219BF53A4();
  v27 = *(v5 + 8);
  v27(v7, v4);
  v27(v10, v4);
  sub_218D0B57C(v14, &qword_280E912E0, MEMORY[0x277D32720]);
  if (v26)
  {
    goto LABEL_22;
  }

LABEL_19:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_218D0BBC4(uint64_t a1)
{
  sub_218CC85CC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CuratedTagFeedGroupKnobs.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CuratedTagFeedGroupKnobs.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_218D0BD74()
{
  result = qword_27CC11238;
  if (!qword_27CC11238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11238);
  }

  return result;
}

unint64_t sub_218D0BDCC()
{
  result = qword_280EC2418;
  if (!qword_280EC2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC2418);
  }

  return result;
}

unint64_t sub_218D0BE24()
{
  result = qword_280EC2420;
  if (!qword_280EC2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC2420);
  }

  return result;
}

uint64_t sub_218D0BE78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CF3A80 == a2 || (sub_219BF78F4() & 1) != 0)
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

  else if (a1 == 0x6F43657269707865 && a2 == 0xED0000746E65746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF3AA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CF3AC0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CF3AE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F6C42776F6C6C61 && a2 == 0xED0000676E696B63)
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

uint64_t sub_218D0C1C4(uint64_t a1)
{
  v2 = v1;
  v112 = sub_219BDD664();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896FA3C();
  v113 = *(v5 - 8);
  v6 = *(v113 + 8);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v105 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v105 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v105 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v105 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v105 - v19;
  v21 = sub_219BDD944();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SearchMoreRouteModel();
  MEMORY[0x28223BE20](v24);
  v26 = (&v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218D0E5E8(a1, v26, type metadata accessor for SearchMoreRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218D0E520(v26, v23, MEMORY[0x277D2FB40]);
    v38 = *(v2 + 112);
    sub_2187B2C48();
    v40 = v39;
    v41 = swift_allocBox();
    v43 = v42;
    v44 = *(v40 + 48);
    sub_2187B2DA0();
    v46 = *(v45 + 48);
    sub_218D0E5E8(v23, v43, MEMORY[0x277D2FB40]);
    v47 = MEMORY[0x277D84F90];
    *(v43 + v46) = MEMORY[0x277D84F90];
    *(v43 + v44) = v47;
    v112 = v41;
    v48 = v41 | 2;
    v49 = *(v2 + 64);
    v50 = sub_219BDFA44();
    (*(*(v50 - 8) + 56))(v20, 1, 1, v50);
    sub_218718690(v2 + 72, v124);
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v120 = v38;
    sub_21896FEF0(&v121, &v115, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v107 = v23;
    if (v116)
    {
      sub_21875F93C(&v115, &v117);
      *&v115 = v41 | 2;
      v48 = v41 | 2;
      v51 = sub_2194DA78C(&v117);
      v53 = v52;
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_1(&v117);
    }

    else
    {
      sub_21896FF74(&v115, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v51 = qword_280ED32D8;
      v53 = qword_280ED32E0;
      v55 = qword_280ED32E8;

      sub_2188202A8(v53);
    }

    v114 = v48;
    v116 = sub_219BDD274();
    *&v115 = v49;
    sub_218D0E5E8(v20, v17, sub_21896FA3C);
    sub_21896FEF0(v124, &v117, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v83 = (v113[80] + 24) & ~v113[80];
    v84 = (v6 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = v20;
    v85 = v49;
    v86 = (v84 + 47) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    *(v87 + 16) = v85;
    sub_218D0E520(v17, v87 + v83, sub_21896FA3C);
    v88 = v87 + v84;
    v89 = v118;
    *v88 = v117;
    *(v88 + 16) = v89;
    *(v88 + 32) = v119;
    v90 = (v87 + v86);
    v91 = (v87 + ((v86 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v90 = 0;
    v90[1] = 0;
    *v91 = v51;
    v91[1] = v53;
    v91[2] = v55;
    swift_retain_n();

    sub_2188202A8(v53);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v53);
    sub_21896FF74(&v121, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_21896FF74(v124, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_218D0E588(v113, sub_21896FA3C);
    v81 = MEMORY[0x277D2FB40];
    v82 = &v126;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v28 = *v26;
    v29 = *(v2 + 112);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    v112 = v30;
    v31 = v30 | 0x7000000000000004;
    v32 = *(v2 + 64);
    v33 = sub_219BDFA44();
    (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
    sub_218718690(v2 + 72, v124);
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v120 = v29;
    sub_21896FEF0(&v121, &v115, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v111 = v28;
    if (v116)
    {
      sub_21875F93C(&v115, &v117);
      v34 = qword_280ED32D0;

      if (v34 != -1)
      {
        swift_once();
      }

      v36 = qword_280ED32D8;
      v35 = qword_280ED32E0;
      v37 = qword_280ED32E8;

      sub_2188202A8(v35);
      __swift_destroy_boxed_opaque_existential_1(&v117);
    }

    else
    {

      sub_21896FF74(&v115, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v36 = qword_280ED32D8;
      v35 = qword_280ED32E0;
      v37 = qword_280ED32E8;

      sub_2188202A8(v35);
    }

    v114 = v31;
    v116 = sub_219BDD274();
    *&v115 = v32;
    sub_218D0E5E8(v14, v11, sub_21896FA3C);
    sub_21896FEF0(v124, &v117, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v73 = (v113[80] + 24) & ~v113[80];
    v74 = (v6 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = v14;
    v75 = (v74 + 47) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 16) = v32;
    sub_218D0E520(v11, v76 + v73, sub_21896FA3C);
    v77 = v76 + v74;
    v78 = v118;
    *v77 = v117;
    *(v77 + 16) = v78;
    *(v77 + 32) = v119;
    v79 = (v76 + v75);
    v80 = (v76 + ((v75 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v79 = 0;
    v79[1] = 0;
    *v80 = v36;
    v80[1] = v35;
    v80[2] = v37;
    swift_retain_n();

    sub_2188202A8(v35);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v35);

    sub_21896FF74(&v121, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_21896FF74(v124, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v81 = sub_21896FA3C;
    v82 = &v127;
LABEL_21:
    sub_218D0E588(*(v82 - 32), v81);
    sub_218806FD0(&v115);
  }

  sub_218D0E4AC();
  v57 = *(v26 + *(v56 + 48));
  (*(v111 + 32))(v110, v26, v112);
  v58 = *(v2 + 112);
  v59 = sub_219BDD654();
  v60 = swift_allocObject();
  v61 = [v59 identifier];
  v62 = sub_219BF5414();
  v64 = v63;

  swift_unknownObjectRelease();
  *(v60 + 16) = v62;
  *(v60 + 24) = v64;
  *(v60 + 32) = v57;
  *(v60 + 40) = 0;
  *(v60 + 48) = 1;
  *(v60 + 56) = 0u;
  *(v60 + 72) = 0u;
  *(v60 + 88) = 0;
  *(v60 + 96) = -1;
  v65 = *(v2 + 64);
  v66 = sub_219BDFA44();
  v67 = v109;
  (*(*(v66 - 8) + 56))(v109, 1, 1, v66);
  v125 = 0;
  memset(v124, 0, sizeof(v124));
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = v58;
  sub_21896FEF0(&v121, &v115, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v107 = v57;
  if (v116)
  {
    sub_21875F93C(&v115, &v117);
    v68 = qword_280ED32D0;
    v69 = v57;
    if (v68 != -1)
    {
      swift_once();
    }

    v71 = qword_280ED32D8;
    v70 = qword_280ED32E0;
    v72 = qword_280ED32E8;

    v106 = v70;
    sub_2188202A8(v70);
    __swift_destroy_boxed_opaque_existential_1(&v117);
  }

  else
  {
    v92 = v57;
    sub_21896FF74(&v115, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v71 = qword_280ED32D8;
    v93 = qword_280ED32E0;
    v72 = qword_280ED32E8;

    v106 = v93;
    sub_2188202A8(v93);
  }

  v114 = v60 | 0x2000000000000006;
  v116 = sub_219BDD274();
  *&v115 = v65;
  v94 = v108;
  sub_218D0E5E8(v67, v108, sub_21896FA3C);
  sub_21896FEF0(v124, &v117, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v95 = (v113[80] + 24) & ~v113[80];
  v96 = (v6 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = (v96 + 47) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  *(v98 + 16) = v65;
  sub_218D0E520(v94, v98 + v95, sub_21896FA3C);
  v99 = v98 + v96;
  v100 = v118;
  *v99 = v117;
  *(v99 + 16) = v100;
  *(v99 + 32) = v119;
  v101 = (v98 + v97);
  v102 = (v98 + ((v97 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v101 = 0;
  v101[1] = 0;
  v103 = v106;
  *v102 = v71;
  v102[1] = v103;
  v102[2] = v72;
  swift_retain_n();

  sub_2188202A8(v103);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v103);

  sub_21896FF74(&v121, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_21896FF74(v124, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218D0E588(v109, sub_21896FA3C);
  (*(v111 + 8))(v110, v112);
  sub_218806FD0(&v115);
}

uint64_t sub_218D0D3B8(uint64_t a1)
{
  v126 = a1;
  v121 = sub_219BDD664();
  v123 = *(v121 - 1);
  MEMORY[0x28223BE20](v121);
  v122 = &v114 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896F9B8();
  v116 = v2;
  MEMORY[0x28223BE20](v2);
  v115 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NewsActivity2.Article(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v114 - v8;
  sub_21896FA3C();
  v125 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v119 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v120 = &v114 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v117 = &v114 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v118 = &v114 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v114 - v20;
  v124 = v22;
  MEMORY[0x28223BE20](v19);
  v24 = &v114 - v23;
  v25 = sub_219BDD944();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v114 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v114 - v32;
  v34 = type metadata accessor for SearchMoreRouteModel();
  MEMORY[0x28223BE20](v34);
  v36 = (&v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218D0E5E8(v126, v36, type metadata accessor for SearchMoreRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v38 = *v36;
      v39 = v127;
      v40 = *(v127 + 112);
      v41 = swift_allocObject();
      *(v41 + 16) = v38;
      v42 = *(v39 + 64);
      v43 = sub_219BDFA44();
      v44 = v118;
      (*(*(v43 - 8) + 56))(v118, 1, 1, v43);
      sub_218718690(v39 + 72, v135);
      v134 = v40;
      sub_219BDC8D4();

      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      sub_219BDC8C4();

      v133 = v41 | 0x7000000000000004;
      v132 = sub_219BDD274();
      v131[0] = v42;
      v45 = v117;
      sub_218D0E5E8(v44, v117, sub_21896FA3C);
      v46 = MEMORY[0x277D2D578];
      sub_21896FEF0(v135, &v128, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v47 = (*(v125 + 80) + 24) & ~*(v125 + 80);
      v48 = (v124 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      *(v49 + 16) = v42;
      sub_218D0E520(v45, v49 + v47, sub_21896FA3C);
      v50 = v49 + v48;
      v51 = v129;
      *v50 = v128;
      *(v50 + 16) = v51;
      *(v50 + 32) = v130;
      v52 = (v49 + ((v48 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v52 = 0;
      v52[1] = 0;
      sub_2186CF94C();
      sub_2189B4DD4();
      swift_retain_n();
      v53 = sub_219BEB454();

      sub_21896FF74(v135, &qword_280EE33A0, &qword_280EE33B0, v46);
      sub_218D0E588(v44, sub_21896FA3C);
      sub_218806FD0(v131);
    }

    else
    {
      sub_218D0E4AC();
      v85 = *(v36 + *(v84 + 48));
      v86 = v121;
      (*(v123 + 32))(v122, v36, v121);
      v87 = v127;
      v88 = *(v127 + 112);
      v89 = sub_219BDD654();
      v90 = swift_allocObject();
      v91 = [v89 identifier];
      v92 = sub_219BF5414();
      v94 = v93;

      swift_unknownObjectRelease();
      *(v90 + 16) = v92;
      *(v90 + 24) = v94;
      *(v90 + 32) = v85;
      *(v90 + 40) = 0;
      *(v90 + 48) = 1;
      *(v90 + 56) = 0u;
      *(v90 + 72) = 0u;
      *(v90 + 88) = 0;
      *(v90 + 96) = -1;
      v95 = *(v87 + 64);
      v96 = sub_219BDFA44();
      v97 = v120;
      (*(*(v96 - 8) + 56))(v120, 1, 1, v96);
      v136 = 0;
      memset(v135, 0, sizeof(v135));
      v134 = v88;
      sub_219BDC8D4();
      v98 = v85;
      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      sub_219BDC8C4();

      v133 = v90 | 0x2000000000000006;
      v132 = sub_219BDD274();
      v131[0] = v95;
      v99 = v119;
      sub_218D0E5E8(v97, v119, sub_21896FA3C);
      sub_21896FEF0(v135, &v128, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v100 = (*(v125 + 80) + 24) & ~*(v125 + 80);
      v101 = (v124 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
      v102 = swift_allocObject();
      *(v102 + 16) = v95;
      sub_218D0E520(v99, v102 + v100, sub_21896FA3C);
      v103 = v102 + v101;
      v104 = v129;
      *v103 = v128;
      *(v103 + 16) = v104;
      *(v103 + 32) = v130;
      v105 = (v102 + ((v101 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v105 = 0;
      v105[1] = 0;
      sub_2186CF94C();
      sub_2189B4DD4();
      swift_retain_n();
      v53 = sub_219BEB454();

      sub_21896FF74(v135, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218D0E588(v97, sub_21896FA3C);
      (*(v123 + 8))(v122, v86);
      sub_218806FD0(v131);
    }
  }

  else
  {
    v118 = v25;
    v119 = v28;
    v120 = v7;
    v121 = v9;
    v122 = v21;
    v117 = v31;
    sub_218D0E520(v36, v33, MEMORY[0x277D2FB40]);
    v54 = v127;
    v55 = *(v127 + 112);
    sub_2187B2C48();
    v57 = v56;
    v123 = swift_allocBox();
    v59 = v58;
    v60 = *(v57 + 48);
    sub_2187B2DA0();
    v62 = *(v61 + 48);
    v126 = v33;
    sub_218D0E5E8(v33, v59, MEMORY[0x277D2FB40]);
    v63 = MEMORY[0x277D84F90];
    *(v59 + v62) = MEMORY[0x277D84F90];
    *(v59 + v60) = v63;
    v64 = *(v54 + 64);
    v65 = sub_219BDFA44();
    (*(*(v65 - 8) + 56))(v24, 1, 1, v65);
    sub_218718690(v54 + 72, v135);
    v134 = v55;
    sub_219BDC8D4();
    sub_219BDC8B4();
    v66 = v24;
    if (qword_280EE9210 != -1)
    {
      swift_once();
    }

    v67 = sub_219BDC8C4();

    v68 = v123;
    v69 = v122;
    v70 = v121;
    if (v67)
    {
      sub_218D0E5E8(v59, v121, type metadata accessor for NewsActivity2.Article);
      v71 = v120;
      sub_218D0E5E8(v70, v120, type metadata accessor for NewsActivity2.Article);

      v72 = v119;
      sub_218D0E520(v71, v119, MEMORY[0x277D2FB40]);
      sub_218D0E588(v70, type metadata accessor for NewsActivity2.Article);
      v73 = swift_getEnumCaseMultiPayload();
      v74 = v126;
      if (v73 == 1)
      {
        v75 = swift_projectBox();
        v76 = v115;
        sub_218D0E5E8(v75, v115, sub_21896F9B8);
        v77 = v117;
        sub_218D0E520(v76 + *(v116 + 48), v117, MEMORY[0x277D2FB40]);
        __swift_destroy_boxed_opaque_existential_1(v76);

        sub_2186C66AC();
        v78 = sub_219BF6F44();
        sub_2186C6FC8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_219C09BA0;
        v80 = sub_219BDD8C4();
        v82 = v81;
        *(v79 + 56) = MEMORY[0x277D837D0];
        *(v79 + 64) = sub_2186FC3BC();
        *(v79 + 32) = v80;
        *(v79 + 40) = v82;
        sub_219BF6214();
        sub_219BE5314();

        v83 = MEMORY[0x277D2FB40];
        sub_218D0E588(v77, MEMORY[0x277D2FB40]);
        sub_21896FF74(v135, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_218D0E588(v66, sub_21896FA3C);
        sub_218D0E588(v74, v83);

        return 0;
      }

      sub_218D0E588(v72, MEMORY[0x277D2FB40]);
    }

    v133 = v68 | 2;
    v132 = sub_219BDD274();
    v131[0] = v64;
    sub_218D0E5E8(v66, v69, sub_21896FA3C);
    sub_21896FEF0(v135, &v128, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v106 = (*(v125 + 80) + 24) & ~*(v125 + 80);
    v107 = v69;
    v108 = (v124 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v109 = swift_allocObject();
    *(v109 + 16) = v64;
    sub_218D0E520(v107, v109 + v106, sub_21896FA3C);
    v110 = v109 + v108;
    v111 = v129;
    *v110 = v128;
    *(v110 + 16) = v111;
    *(v110 + 32) = v130;
    v112 = (v109 + ((v108 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v112 = 0;
    v112[1] = 0;
    sub_2186CF94C();
    sub_2189B4DD4();
    swift_retain_n();
    v53 = sub_219BEB454();

    sub_21896FF74(v135, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_218D0E588(v66, sub_21896FA3C);
    sub_218D0E588(v126, MEMORY[0x277D2FB40]);
    sub_218806FD0(v131);
  }

  return v53;
}

uint64_t sub_218D0E430()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

void sub_218D0E4AC()
{
  if (!qword_27CC11240)
  {
    sub_219BDD664();
    type metadata accessor for FeedViewContext();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11240);
    }
  }
}

uint64_t sub_218D0E520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D0E588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D0E5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218D0E668(unint64_t a1, char a2)
{
  v2 = a1;
  if ((a2 & 1) == 0)
  {
    goto LABEL_15;
  }

  v15 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_31:
    v12 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

LABEL_4:
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  do
  {
    if (v5)
    {
      v6 = MEMORY[0x21CECE0F0](v4, v2);
      v7 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
LABEL_15:

      return v2;
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v3 = sub_219BF7214();
      if (!v3)
      {
        goto LABEL_31;
      }

      goto LABEL_4;
    }

    v6 = *(v2 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    if ([v6 sportsType] == 3)
    {
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v4;
  }

  while (v7 != v3);
  v8 = 0;
  v14 = v15;
  v15 = MEMORY[0x277D84F90];
  while (v5)
  {
    v9 = MEMORY[0x21CECE0F0](v8, v2);
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_26;
    }

LABEL_22:
    if ([v9 sportsType] == 3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    ++v8;
    if (v10 == v3)
    {
      goto LABEL_27;
    }
  }

  if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v9 = *(v2 + 8 * v8 + 32);
  swift_unknownObjectRetain();
  v10 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v12 = v14;
  v11 = v15;
LABEL_32:
  v16 = v12;
  sub_2191EE304(v11);
  return v16;
}

uint64_t sub_218D0E8A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x636572506D616574;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEE0065636E656465;
  }

  if (*a2)
  {
    v5 = 0x636572506D616574;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xEE0065636E656465;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218D0E954()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218D0E9E4()
{
  sub_219BF5524();
}

uint64_t sub_218D0EA60()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218D0EAEC@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

void sub_218D0EB4C(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x636572506D616574;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEE0065636E656465;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_218D0EB9C()
{
  result = qword_280EAC360;
  if (!qword_280EAC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC360);
  }

  return result;
}

unint64_t sub_218D0ECA0()
{
  result = qword_280EAC358;
  if (!qword_280EAC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC358);
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_218D0ED38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_218D0ED80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218D0EE00(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v67 = a3;
  v78 = type metadata accessor for PuzzleContinuePlayingModel();
  MEMORY[0x28223BE20](v78);
  v76 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896993C();
  v75 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v74 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C401FC();
  v77 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE6DF4();
  v66 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v65 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D0FC34(0, &qword_280EE4AE8, MEMORY[0x277D6DF88]);
  v64 = v16;
  v63 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v62 = v52 - v17;
  sub_218D0FA54();
  MEMORY[0x28223BE20](v18 - 8);
  v58 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D0FB68();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D0FC34(0, &qword_280EE35E0, MEMORY[0x277D6EC60]);
  v61 = v23;
  v60 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v59 = v52 - v24;
  v25 = *(v3 + 56);
  v80 = v3;
  v26 = sub_218946470(sub_218D0FCF4, v79, v25);
  v27 = *(v3 + 64);
  v28 = sub_2194F9D30(v26, v27);

  sub_218D0FD14();
  sub_218D09D1C(0);
  v57 = v29;
  v55 = (*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_219C09BA0;
  v82 = v27;
  v30 = *(v28 + 16);
  v68 = a2;
  if (v30)
  {
    v52[1] = v22;
    v53 = v14;
    v54 = a1;
    v81 = MEMORY[0x277D84F90];

    sub_218C35560(0, v30, 0);
    v31 = v81;
    v33 = *(v8 + 16);
    v32 = v8 + 16;
    v72 = v33;
    v34 = (*(v32 + 64) + 32) & ~*(v32 + 64);
    v52[0] = v28;
    v35 = v28 + v34;
    v36 = *(v32 + 56);
    v73 = v32;
    v70 = (v32 - 8);
    v71 = v36;
    v69 = v11 + 32;
    v37 = v74;
    v38 = v33;
    do
    {
      v39 = v75;
      v38(v37, v35, v75);
      v38(v76, v37, v39);
      sub_218D0FB20(&qword_280EBAB50, type metadata accessor for PuzzleContinuePlayingModel);
      sub_219BE5FB4();
      (*v70)(v37, v39);
      v81 = v31;
      v41 = *(v31 + 16);
      v40 = *(v31 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_218C35560(v40 > 1, v41 + 1, 1);
        v31 = v81;
      }

      *(v31 + 16) = v41 + 1;
      (*(v11 + 32))(v31 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v41, v13, v77);
      v35 += v71;
      --v30;
    }

    while (v30);

    v14 = v53;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v42 = sub_218D0FB20(&qword_280EE5B60, sub_218C401FC);
  v43 = sub_218D0FB20(&unk_280EE5B68, sub_218C401FC);
  MEMORY[0x21CEB9170](v31, v77, v42, v43);
  sub_218AE146C();
  sub_218D0FB20(&qword_280EBAB50, type metadata accessor for PuzzleContinuePlayingModel);
  v44 = v56;
  sub_219BE6924();
  v45 = sub_218D0FB20(&qword_280EE5908, sub_218D09D1C);
  v46 = sub_218D0FB20(&unk_280EE5910, sub_218D09D1C);
  MEMORY[0x21CEB9150](v44, v57, v45, v46);
  v47 = v59;
  sub_219BEB2D4();
  v49 = v65;
  v48 = v66;
  (*(v66 + 104))(v65, *MEMORY[0x277D6D868], v14);
  sub_218D0FD6C();
  v50 = v62;
  sub_219BE85A4();
  (*(v48 + 8))(v49, v14);
  v68(v50);
  (*(v63 + 8))(v50, v64);
  return (*(v60 + 8))(v47, v61);
}

id sub_218D0F744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 72);
  if ([swift_unknownObjectRetain() isPaid])
  {
    v8 = [objc_msgSend(v7 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v8, v8 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18 = v16;
    v19 = v17;
    if (*(&v17 + 1))
    {
      sub_21870AD58();
      if (swift_dynamicCast())
      {
        v10 = v20;
        v11 = [v20 integerValue];
        if (v11 == -1)
        {
          goto LABEL_19;
        }

LABEL_12:
        if (objc_getAssociatedObject(v8, ~v11))
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v16 = 0u;
          v17 = 0u;
        }

        v18 = v16;
        v19 = v17;
        if (*(&v17 + 1))
        {
          sub_21870AD58();
          if (swift_dynamicCast())
          {
            v12 = v20;
            v13 = [v12 integerValue];

            v9 = (v13 ^ v11) & 1;
            goto LABEL_20;
          }
        }

        else
        {
          sub_218806FD0(&v18);
        }

LABEL_19:

        v9 = v11 & 1;
        goto LABEL_20;
      }
    }

    else
    {
      sub_218806FD0(&v18);
    }

    v10 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v9 = 1;
LABEL_20:
  v14 = a1[2];
  sub_218718690(a2 + 80, a3 + 24);
  sub_218718690(a2 + 120, a3 + 64);
  sub_218718690(a2 + 160, a3 + 104);
  *a3 = v6;
  *(a3 + 8) = v9;
  *(a3 + 16) = v14;
  return v14;
}

unint64_t sub_218D0F9B8()
{
  result = qword_27CC11248;
  if (!qword_27CC11248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11248);
  }

  return result;
}

void sub_218D0FA54()
{
  if (!qword_280EE74B8)
  {
    sub_218D09D1C(255);
    sub_218D0FB20(&qword_280EE5908, sub_218D09D1C);
    sub_218D0FB20(&unk_280EE5910, sub_218D09D1C);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE74B8);
    }
  }
}

uint64_t sub_218D0FB20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218D0FB68()
{
  if (!qword_280EE74E0)
  {
    sub_218C401FC();
    sub_218D0FB20(&qword_280EE5B60, sub_218C401FC);
    sub_218D0FB20(&unk_280EE5B68, sub_218C401FC);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE74E0);
    }
  }
}

void sub_218D0FC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for PuzzleContinuePlayingSectionDescriptor;
    v8[1] = type metadata accessor for PuzzleContinuePlayingModel();
    v8[2] = sub_218AE146C();
    v8[3] = sub_218D0FB20(&qword_280EBAB50, type metadata accessor for PuzzleContinuePlayingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218D0FD14()
{
  if (!qword_280E8BF28)
  {
    sub_218D09D1C(255);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8BF28);
    }
  }
}

unint64_t sub_218D0FD6C()
{
  result = qword_27CC11250;
  if (!qword_27CC11250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11250);
  }

  return result;
}

uint64_t sub_218D0FDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_21889E3BC);
}

uint64_t sub_218D0FE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_21889E468);
}

uint64_t type metadata accessor for AudioPlaylistFeedSectionDescriptor()
{
  result = qword_27CC11258;
  if (!qword_27CC11258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218D0FECC(uint64_t a1)
{
  result = type metadata accessor for ArticleListAudioPlaylistFeedGroup();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_218D0FF70()
{
  v1 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D1031C(v0, v6);
  sub_218A6DD44(v6, v4);
  v7 = *v4;

  sub_218D10380(v4);
  return v7;
}

uint64_t sub_218D10050(uint64_t a1, uint64_t a2)
{
  sub_218D103DC();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 56);
  sub_218D1031C(a1, v7);
  sub_218D1031C(a2, &v7[v8]);
  type metadata accessor for ArticleListAudioPlaylistFeedGroup();
  sub_218D10440(&qword_27CC11278);
  LOBYTE(a2) = sub_219BF1174();
  sub_218D10380(&v7[v8]);
  sub_218D10380(v7);
  return a2 & 1;
}

uint64_t sub_218D10198@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_218D10208@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D1031C(v1, v8);
  sub_218A6DD44(v8, v6);
  a1[3] = v3;
  a1[4] = sub_218D10440(&qword_27CC11268);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_218A6DD44(v6, boxed_opaque_existential_1);
}

uint64_t sub_218D1031C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D10380(uint64_t a1)
{
  v2 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218D103DC()
{
  if (!qword_27CC11270)
  {
    type metadata accessor for AudioPlaylistFeedSectionDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11270);
    }
  }
}

uint64_t sub_218D10440(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArticleListAudioPlaylistFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218D10498()
{
  result = qword_27CC11280;
  if (!qword_27CC11280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11280);
  }

  return result;
}

uint64_t sub_218D104EC()
{
  sub_218D13CEC(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218D1056C(uint64_t a1)
{
  v3 = type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v7 = sub_219BE2E54();
  sub_218D13CEC(0, &unk_280E8EEC0, MEMORY[0x277D335C8], MEMORY[0x277D83940]);
  sub_219BE2F64();

  sub_218D13EA0(v1, v6, type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19[1] = v8 + v5;
  v9 = (v8 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_218D118C8(v6, v10 + v8);
  *(v10 + v9) = a1;

  v11 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v12 = v19[0];
  sub_218D13EA0(v19[0], v6, type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter);
  v13 = swift_allocObject();
  sub_218D118C8(v6, v13 + v8);
  *(v13 + v9) = a1;

  v14 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_218D13EA0(v12, v6, type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter);
  v15 = swift_allocObject();
  sub_218D118C8(v6, v15 + v8);
  v16 = sub_219BE2E54();
  v17 = sub_219BE3064();

  return v17;
}

uint64_t sub_218D10890@<X0>(unint64_t *a1@<X8>)
{
  sub_218D10EB4();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x9000000000000006;
  return result;
}

uint64_t sub_218D10910@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs();
  a2[4] = sub_218D10F80(&qword_280EA2650, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
  a2[5] = sub_218D10F80(&qword_27CC112B8, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218D13EA0(v2 + v4, boxed_opaque_existential_1, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
}

uint64_t sub_218D109D8()
{
  type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter();
  sub_2189AD5C8();
  v0 = sub_219BEE964();
  sub_218D13CEC(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_218D13E04(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v5 + v4) = sub_219BEFB94();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D32308], v2);
  sub_2191EDA0C(v5);
  return v0;
}

uint64_t sub_218D10BA8()
{
  sub_218D10EB4();

  return sub_219BEDCA4();
}

uint64_t sub_218D10BD4@<X0>(uint64_t *a1@<X8>)
{
  sub_218D13CEC(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218D10EB4();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218D13D50(inited + 32, sub_2188317B0);
  sub_218D13F08(0);
  a1[3] = v5;
  a1[4] = sub_218D10F80(&qword_27CC112C8, sub_218D13F08);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218D10D58()
{
  sub_218D10F80(&qword_27CC112A0, type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t PuzzleScoreboardTagFeedGroupEmitterError.hashValue.getter()
{
  sub_219BF7AA4();
  MEMORY[0x21CECE850](0);
  return sub_219BF7AE4();
}

unint64_t sub_218D10E3C()
{
  result = qword_27CC11288;
  if (!qword_27CC11288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11288);
  }

  return result;
}

void sub_218D10EB4()
{
  if (!qword_280E920C0)
  {
    type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData();
    sub_218D10F80(&unk_280E98160, type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData);
    sub_218D10F80(&qword_280E98170, type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E920C0);
    }
  }
}

uint64_t sub_218D10F80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter()
{
  result = qword_280E9CAF8;
  if (!qword_280E9CAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D11028()
{
  sub_218D10EB4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, &unk_280E901D0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_218D11288(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v51 = a3;
  v46 = sub_219BF2034();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF0BD4();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF3464();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v63 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_219BF1D54();
  v10 = *(v56 - 8);
  v11 = MEMORY[0x28223BE20](v56);
  v62 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = *a1;
  v61 = *(*a1 + 16);
  if (!v61)
  {
    v65 = MEMORY[0x277D84F90];
LABEL_13:
    v30 = v65;
    if (*(v65 + 16))
    {
      v31 = type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter();
      v32 = v52;
      v33 = v52 + *(v31 + 20);
      v15 = *(v33 + *(type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs() + 28));
      if (v15)
      {

        v34 = v47;
        v35 = v51;
        sub_219BEF134();
        v36 = sub_219BEF264();
        (*(v48 + 8))(v34, v49);
        v64[3] = v31;
        v64[4] = sub_218D10F80(&qword_27CC23430, type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
        sub_218D13EA0(v32, boxed_opaque_existential_1, type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter);
        v38 = v53;
        v39 = sub_218D119C4(v36, v64, v30);
        v40 = v38;
        v41 = v50;
        if (v38)
        {

          __swift_destroy_boxed_opaque_existential_1(v64);
          return v15;
        }

        v42 = v39;

        __swift_destroy_boxed_opaque_existential_1(v64);
        v30 = v42;
      }

      else
      {
        v40 = v53;
        v41 = v50;
        v35 = v51;
      }

      sub_218D12A98(v30, v41);

      v43 = sub_218D12F0C(v35, v41);
      if (!v40)
      {
        v15 = v43;
      }

      (*(v45 + 8))(v41, v46);
      return v15;
    }

    sub_218D13DB0();
    swift_allocError();
    swift_willThrow();
    return v15;
  }

  v17 = 0;
  v58 = (v8 + 8);
  v59 = v10 + 16;
  v54 = (v10 + 8);
  v57 = (v10 + 32);
  v65 = MEMORY[0x277D84F90];
  v55 = v7;
  v18 = v56;
  v60 = v16;
  while (v17 < *(v16 + 16))
  {
    v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v20 = *(v10 + 72);
    (*(v10 + 16))(v15, v16 + v19 + v20 * v17, v18);
    v21 = v63;
    v22 = v18;
    sub_219BF1D44();
    v23 = sub_219BF3454();
    (*v58)(v21, v7);
    if (v23)
    {
      v24 = *v57;
      (*v57)(v62, v15, v22);
      v25 = v65;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64[0] = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C34958(0, *(v25 + 16) + 1, 1);
        v25 = v64[0];
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_218C34958(v27 > 1, v28 + 1, 1);
        v25 = v64[0];
      }

      v65 = v25;
      *(v25 + 16) = v28 + 1;
      v29 = v25 + v19 + v28 * v20;
      v18 = v56;
      result = (v24)(v29, v62, v56);
      v7 = v55;
    }

    else
    {
      result = (*v54)(v15, v22);
      v18 = v22;
    }

    ++v17;
    v16 = v60;
    if (v61 == v17)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218D118C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D1192C(uint64_t *a1)
{
  v3 = *(type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_218D11288(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_218D119C4(uint64_t a1, unint64_t a2, uint64_t isUniquelyReferenced_nonNull_native)
{
  v169 = sub_219BF3464();
  v6 = *(v169 - 8);
  v7 = MEMORY[0x28223BE20](v169);
  v153 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v165 = &v147 - v9;
  v176 = sub_219BF1D54();
  v167 = *(v176 - 8);
  v10 = MEMORY[0x28223BE20](v176);
  v152 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v155 = &v147 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v147 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v173 = &v147 - v17;
  MEMORY[0x28223BE20](v16);
  v172 = &v147 - v18;
  v19 = sub_219BF2934();
  v149 = *(v19 - 1);
  v20 = MEMORY[0x28223BE20](v19);
  v168 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v147 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v164 = &v147 - v26;
  MEMORY[0x28223BE20](v25);
  v166 = &v147 - v27;
  if (qword_280EE5F80 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v28 = sub_219BE5434();
    v29 = __swift_project_value_buffer(v28, qword_280F625E0);
    sub_218718690(a2, &v178);

    v157 = v29;
    v30 = sub_219BE5414();
    v31 = sub_219BF6214();

    v32 = os_log_type_enabled(v30, v31);
    v174 = v19;
    v156 = v24;
    v147 = v6;
    v158 = a2;
    v148 = a1;
    if (!v32)
    {

      __swift_destroy_boxed_opaque_existential_1(&v178);
      v51 = *(isUniquelyReferenced_nonNull_native + 16);
      if (!v51)
      {
        break;
      }

      goto LABEL_10;
    }

    LODWORD(v162) = v31;
    v33 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v180 = v161;
    *v33 = 136315394;
    __swift_project_boxed_opaque_existential_1(&v178, v179);
    v34 = sub_219BED6D4();
    v36 = v35;
    __swift_destroy_boxed_opaque_existential_1(&v178);
    v37 = sub_2186D1058(v34, v36, &v180);

    *(v33 + 4) = v37;
    v163 = v33;
    *(v33 + 12) = 2080;
    v38 = *(a1 + 16);
    v39 = MEMORY[0x277D84F90];
    if (v38)
    {
      v159 = v30;
      v160 = isUniquelyReferenced_nonNull_native;
      v177 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v38, 0);
      v39 = v177;
      v40 = *(v149 + 16);
      v41 = a1 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
      v170 = *(v149 + 72);
      v171 = v40;
      v175 = (v149 + 16);
      v42 = (v149 + 8);
      do
      {
        v43 = v166;
        (v171)(v166, v41, v19);
        v44 = sub_219BF2924();
        v46 = v45;
        (*v42)(v43, v19);
        v177 = v39;
        v48 = *(v39 + 16);
        v47 = *(v39 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_21870B65C((v47 > 1), v48 + 1, 1);
          v39 = v177;
        }

        *(v39 + 16) = v48 + 1;
        v49 = v39 + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v46;
        v41 += v170;
        --v38;
        v19 = v174;
      }

      while (v38);
      v6 = v147;
      isUniquelyReferenced_nonNull_native = v160;
      v30 = v159;
    }

    v71 = MEMORY[0x21CECC6D0](v39, MEMORY[0x277D837D0]);
    v73 = v72;

    v74 = sub_2186D1058(v71, v73, &v180);

    v75 = v163;
    *(v163 + 14) = v74;
    _os_log_impl(&dword_2186C1000, v30, v162, "%s is attempting to order statistics by %s", v75, 0x16u);
    v76 = v161;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v76, -1, -1);
    MEMORY[0x21CECF960](v75, -1, -1);

    v51 = *(isUniquelyReferenced_nonNull_native + 16);
    if (!v51)
    {
      break;
    }

LABEL_10:
    *&v162 = *(v167 + 16);
    v52 = isUniquelyReferenced_nonNull_native + ((*(v167 + 80) + 32) & ~*(v167 + 80));
    v53 = *(v167 + 72);
    v161 = (v6 + 1);
    v160 = (v149 + 8);
    v151 = (v167 + 32);
    v159 = (v167 + 8);
    v163 = v167 + 16;
    v150 = (v167 + 40);
    v175 = MEMORY[0x277D84F98];
    while (1)
    {
      v170 = v52;
      v171 = v51;
      v55 = v172;
      v6 = v176;
      v19 = v162;
      (v162)(v172);
      v56 = v165;
      sub_219BF1D44();
      v57 = v164;
      sub_219BF3444();
      (*v161)(v56, v169);
      a1 = sub_219BF2924();
      v24 = v58;
      (*v160)(v57, v174);
      (v19)(v173, v55, v6);
      v59 = v175;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v178 = v59;
      a2 = sub_21870F700(a1, v24);
      v61 = v59[2];
      v62 = (v60 & 1) == 0;
      v63 = v61 + v62;
      if (__OFADD__(v61, v62))
      {
        break;
      }

      v64 = v60;
      if (v59[3] >= v63)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v60)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_219492A38();
          if (v64)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        sub_219481C48(v63, isUniquelyReferenced_nonNull_native);
        v65 = sub_21870F700(a1, v24);
        if ((v64 & 1) != (v66 & 1))
        {
          result = sub_219BF79A4();
          __break(1u);
          return result;
        }

        a2 = v65;
        if (v64)
        {
LABEL_11:

          v175 = v178;
          v54 = v176;
          (*v150)(v178[7] + a2 * v53, v173, v176);
          (v159->isa)(v172, v54);
          goto LABEL_12;
        }
      }

      v6 = v178;
      v178[(a2 >> 6) + 8] |= 1 << a2;
      v67 = (v6[6] + 16 * a2);
      *v67 = a1;
      v67[1] = v24;
      v24 = v176;
      (*v151)(v6[7] + a2 * v53, v173, v176);
      (v159->isa)(v172, v24);
      v68 = v6[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_55;
      }

      v175 = v6;
      v6[2] = v70;
LABEL_12:
      v52 = v170 + v53;
      v51 = v171 - 1;
      if (v171 == 1)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v175 = MEMORY[0x277D84F98];
LABEL_26:
  v77 = *(v148 + 16);
  if (v77)
  {
    v172 = *(v149 + 16);
    v78 = v148 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
    v170 = *(v149 + 72);
    v161 = (v167 + 16);
    v160 = (v167 + 8);
    v173 = v149 + 16;
    v165 = (v149 + 8);
    v159 = (v167 + 32);
    v171 = MEMORY[0x277D84F90];
    *&v50 = 136315394;
    v162 = v50;
    v79 = v168;
    v80 = v156;
    v81 = v174;
    v82 = v175;
    (v172)(v156, v78, v174);
    while (1)
    {
      v95 = sub_219BF2924();
      if (!v82[2])
      {
        break;
      }

      v97 = sub_21870F700(v95, v96);
      v99 = v98;

      if ((v99 & 1) == 0)
      {
        goto LABEL_39;
      }

      v100 = v82[7];
      v164 = *(v167 + 72);
      v101 = v100 + v164 * v97;
      v102 = *(v167 + 16);
      v103 = v154;
      v104 = v176;
      v102(v154, v101, v176);
      v102(v155, v103, v104);
      v105 = v171;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_2191F88F8(0, v105[2] + 1, 1, v105);
      }

      v107 = v105[2];
      v106 = v105[3];
      if (v107 >= v106 >> 1)
      {
        v171 = sub_2191F88F8(v106 > 1, v107 + 1, 1, v105);
      }

      else
      {
        v171 = v105;
      }

      v108 = v167;
      v109 = v176;
      (*(v167 + 8))(v154, v176);
      v110 = v156;
      (*v165)(v156, v81);
      v111 = v171;
      *(v171 + 16) = v107 + 1;
      v112 = v111 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + v107 * v164;
      v113 = *(v108 + 32);
      v80 = v110;
      v113(v112, v155, v109);
      v79 = v168;
LABEL_29:
      v78 += v170;
      if (!--v77)
      {

        v118 = "HistoryFeedInteractorType";
        v119 = v171;
        goto LABEL_44;
      }

      (v172)(v80, v78, v81);
    }

LABEL_39:
    sub_218718690(v158, &v178);
    (v172)(v79, v80, v81);
    v114 = v80;
    v115 = sub_219BE5414();
    v116 = sub_219BF6214();
    if (os_log_type_enabled(v115, v116))
    {
      v83 = swift_slowAlloc();
      LODWORD(v163) = v116;
      v84 = v83;
      v164 = swift_slowAlloc();
      v180 = v164;
      *v84 = v162;
      __swift_project_boxed_opaque_existential_1(&v178, v179);
      v85 = sub_219BED6D4();
      v87 = v86;
      __swift_destroy_boxed_opaque_existential_1(&v178);
      v88 = sub_2186D1058(v85, v87, &v180);

      *(v84 + 4) = v88;
      *(v84 + 12) = 2080;
      v89 = sub_219BF2924();
      v91 = v90;
      v92 = *v165;
      (*v165)(v168, v81);
      v93 = sub_2186D1058(v89, v91, &v180);
      v79 = v168;

      *(v84 + 14) = v93;
      _os_log_impl(&dword_2186C1000, v115, v163, "%s dropping stat not included in ordering: %s", v84, 0x16u);
      v94 = v164;
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v94, -1, -1);
      MEMORY[0x21CECF960](v84, -1, -1);

      v80 = v156;
      v92(v156, v81);
      v82 = v175;
    }

    else
    {

      v117 = *v165;
      (*v165)(v79, v81);
      v117(v114, v81);
      __swift_destroy_boxed_opaque_existential_1(&v178);
      v80 = v114;
    }

    goto LABEL_29;
  }

  v119 = MEMORY[0x277D84F90];
  v118 = "HistoryFeedInteractorType";
LABEL_44:
  sub_218718690(v158, &v178);

  v120 = sub_219BE5414();
  v121 = sub_219BF6214();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v180 = v165;
    *v122 = *(v118 + 201);
    __swift_project_boxed_opaque_existential_1(&v178, v179);
    v123 = sub_219BED6D4();
    v125 = v124;
    __swift_destroy_boxed_opaque_existential_1(&v178);
    v126 = sub_2186D1058(v123, v125, &v180);

    *(v122 + 4) = v126;
    *(v122 + 12) = 2080;
    v127 = *(v119 + 16);
    v128 = MEMORY[0x277D84F90];
    if (v127)
    {
      LODWORD(v162) = v121;
      v163 = v122;
      v164 = v120;
      v177 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v127, 0);
      v128 = v177;
      v175 = *(v167 + 16);
      v129 = *(v167 + 80);
      v171 = v119;
      v130 = v119 + ((v129 + 32) & ~v129);
      v173 = *(v167 + 72);
      v172 = (v147 + 1);
      v170 = v149 + 8;
      v167 += 16;
      v168 = (v167 - 8);
      do
      {
        v131 = v152;
        v132 = v176;
        (v175)(v152, v130, v176);
        v133 = v153;
        sub_219BF1D44();
        v134 = v166;
        sub_219BF3444();
        (*v172)(v133, v169);
        v135 = sub_219BF2924();
        v137 = v136;
        (*v170)(v134, v174);
        (*v168)(v131, v132);
        v177 = v128;
        v139 = *(v128 + 16);
        v138 = *(v128 + 24);
        if (v139 >= v138 >> 1)
        {
          sub_21870B65C((v138 > 1), v139 + 1, 1);
          v128 = v177;
        }

        *(v128 + 16) = v139 + 1;
        v140 = v128 + 16 * v139;
        *(v140 + 32) = v135;
        *(v140 + 40) = v137;
        v130 += v173;
        --v127;
      }

      while (v127);
      v119 = v171;
      v122 = v163;
      v120 = v164;
      LOBYTE(v121) = v162;
    }

    v141 = MEMORY[0x21CECC6D0](v128, MEMORY[0x277D837D0]);
    v143 = v142;

    v144 = sub_2186D1058(v141, v143, &v180);

    *(v122 + 14) = v144;

    _os_log_impl(&dword_2186C1000, v120, v121, "%s ordered stats %s", v122, 0x16u);
    v145 = v165;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v145, -1, -1);
    MEMORY[0x21CECF960](v122, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v178);
  }

  return v119;
}

uint64_t sub_218D12A98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_218D13CEC(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = &v21 - v4;
  v5 = sub_219BF3C84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D13CEC(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v9 = *(sub_219BF3E84() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09BA0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v21 = v10;
    v30 = MEMORY[0x277D84F90];
    sub_218C34A88(0, v11, 0);
    v12 = v30;
    v29 = sub_219BF1D54();
    v13 = *(v29 - 8);
    v14 = *(v13 + 16);
    v27 = v13 + 16;
    v28 = v14;
    v15 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v26 = *(v13 + 72);
    v25 = *MEMORY[0x277D340F8];
    do
    {
      v28(v8, v15, v29);
      (*(v6 + 104))(v8, v25, v5);
      v30 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_218C34A88(v16 > 1, v17 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v17 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v8, v5);
      v15 += v26;
      --v11;
    }

    while (v11);
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  sub_218F0B984(v18);
  sub_218F0BA7C(v18);
  sub_218F0BB90(v18);
  sub_219BF3E74();
  v19 = sub_219BEC004();
  (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
  sub_219A95188(v18);
  sub_219A95188(v18);
  sub_219A951A0(v18);
  sub_219A951B8(v18);
  sub_219A952CC(v18);
  sub_219A952E4(v18);
  sub_219A953F8(v18);
  return sub_219BF2024();
}

uint64_t sub_218D12F0C(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_218D13CEC(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = v36 - v5;
  sub_218D13CEC(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v36 - v7;
  sub_218D13CEC(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v36 - v10;
  v12 = sub_219BF2AB4();
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter();
  v20 = (v2 + *(v19 + 24));
  v21 = v20[3];
  v36[2] = v20[4];
  v36[3] = v21;
  v36[1] = __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_218D10EB4();
  sub_219BEDD14();
  v36[0] = *(v16 + 28);
  v22 = *(v19 + 20);
  sub_2189AD5C8();
  v24 = v23;
  v25 = *(v23 - 8);
  (*(v25 + 16))(v11, v2 + v22, v23);
  (*(v25 + 56))(v11, 0, 1, v24);
  sub_219BEF0B4();
  v26 = *(v42 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v27 = sub_219BF35D4();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  LOBYTE(v41) = 40;
  sub_218D13E04(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v28 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  v29 = v37;
  sub_219BF3904();
  v30 = sub_219BF2774();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  v31 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v31 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v32 = v36[0];
  v33 = sub_219BF2194();
  (*(v38 + 8))(v14, v39);
  v34 = sub_219BF1934();
  (*(*(v34 - 8) + 8))(&v18[v32], v34);
  return v33;
}

uint64_t sub_218D1349C(uint64_t a1)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D136C8(a1, v7);
  sub_218D13EA0(v7, v4, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_218D13CEC(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE3014();
  sub_218D13D50(v7, type metadata accessor for TagFeedGroup);
  return v8;
}

uint64_t sub_218D136C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_218D13CEC(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v19 = &v17 - v4;
  v5 = sub_219BEF554();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v17 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = sub_219BF1904();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BED8D4();
  v12 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  sub_218D10EB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v15 = sub_219BEE5D4();
  (*(*(v15 - 8) + 56))(v19, 1, 1, v15);
  sub_219BED864();
  (*(v12 + 32))(v20, v14, v18);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218D13A5C(void *a1)
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  v3 = a1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2186C1000, v4, v5, "Error while trying to emit Puzzle Scoreboard group: %@", v6, 0xCu);
    sub_218D13D50(v7, sub_2189B3F3C);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_218D10F80(&qword_280EDE9C0, type metadata accessor for TagFeedGroup);
  return sub_219BEF194();
}

void sub_218D13CEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218D13D50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218D13DB0()
{
  result = qword_27CC112B0;
  if (!qword_27CC112B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC112B0);
  }

  return result;
}

void sub_218D13E04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig();
    v7 = sub_218D10F80(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218D13EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D13F3C(uint64_t a1, uint64_t a2)
{
  sub_21872FA60();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218D13FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21872FA60();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_218D1406C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_21872FA60();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D14F10(v3, v12);
  (*(v7 + 32))(v10, v12, v6);
  a3(v6);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_218D1421C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_21872FA60();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D14F10(v3, v12);
  (*(v7 + 32))(v10, v12, v6);
  v13 = a3(v6);
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_218D14364()
{
  sub_21872FA60();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D14F10(v0, v8);
  (*(v3 + 32))(v6, v8, v2);
  v9 = sub_219BEDCA4();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_218D144AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21872FBA8(&qword_27CC100C0, type metadata accessor for AudioPlaylistFeedGroupConfig);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_218D14650@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_21872FA60();
  v5 = v4;
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D14E0C();
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D14E68();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v21;
    v16 = v5;
    v17 = v7;
    sub_218D14EBC();
    sub_219BF7734();
    sub_218718690(a1, v20);
    type metadata accessor for ArticleListAudioPlaylistFeedGroupConfigData();
    sub_21872FBA8(&unk_280E94890, type metadata accessor for ArticleListAudioPlaylistFeedGroupConfigData);
    sub_21872FBA8(&qword_280E948A0, type metadata accessor for ArticleListAudioPlaylistFeedGroupConfigData);
    v13 = v17;
    sub_219BEDD24();
    (*(v12 + 8))(v11, v9);
    (*(v18 + 32))(v19, v13, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218D14910@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_218D14968(uint64_t a1)
{
  v2 = sub_218D14E68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D149A4(uint64_t a1)
{
  v2 = sub_218D14E68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218D14AB4()
{
  v1 = v0;
  sub_21872FA60();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D14F10(v1, v9);
  (*(v4 + 32))(v7, v9, v3);
  sub_219BEDD64();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_218D14C0C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ArticleListAudioPlaylistFeedGroupConfigData();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872FA60();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D14F10(v1, v13);
  (*(v8 + 32))(v11, v13, v7);
  sub_219BEDD14();
  (*(v8 + 8))(v11, v7);
  v14 = sub_219BF1934();
  v15 = *(v14 - 8);
  (*(v15 + 32))(a1, v5, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

void sub_218D14E0C()
{
  if (!qword_280E8CC50)
  {
    sub_218D14E68();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CC50);
    }
  }
}

unint64_t sub_218D14E68()
{
  result = qword_280EB55B8;
  if (!qword_280EB55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB55B8);
  }

  return result;
}

unint64_t sub_218D14EBC()
{
  result = qword_280EB5598;
  if (!qword_280EB5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB5598);
  }

  return result;
}

uint64_t sub_218D14F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218D14F98()
{
  result = qword_27CC112E0;
  if (!qword_27CC112E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC112E0);
  }

  return result;
}

unint64_t sub_218D14FF0()
{
  result = qword_27CC112E8;
  if (!qword_27CC112E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC112E8);
  }

  return result;
}

unint64_t sub_218D15048()
{
  result = qword_280EB55A8;
  if (!qword_280EB55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB55A8);
  }

  return result;
}

unint64_t sub_218D150A0()
{
  result = qword_280EB55B0;
  if (!qword_280EB55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB55B0);
  }

  return result;
}

unint64_t sub_218D150F4()
{
  result = qword_280EB55A0;
  if (!qword_280EB55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB55A0);
  }

  return result;
}

uint64_t sub_218D15170@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_219BEF554();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v40);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BF1934();
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D15B24();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D15C90(0, &qword_280E8C6B8, MEMORY[0x277D844C8]);
  v44 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D15B7C();
  v15 = v14;
  v16 = v45;
  sub_219BF7B34();
  if (!v16)
  {
    v45 = v12;
    v35 = v7;
    v17 = v40;
    v18 = v41;
    v20 = v42;
    v19 = v43;
    v50 = 0;
    v21 = v15;
    v22 = sub_219BF76A4();
    v49 = 1;
    v34 = sub_219BF76A4();
    v48 = 2;
    sub_218D15CF4(&unk_280E91390, MEMORY[0x277D32648]);
    sub_219BF76E4();
    v47 = 3;
    v33 = sub_219BF76A4();
    v46 = 4;
    sub_218D15CF4(&qword_280E90808, MEMORY[0x277D33478]);
    sub_219BF7734();
    v45[1](v21, v44);
    v24 = v38;
    *v38 = 4;
    v25 = v22;
    v26 = v17;
    v24[v17[6]] = v25 & 1;
    v24[v17[8]] = (v34 == 2) | v34 & 1;
    v27 = *(v18 + 48);
    v28 = v27(v10, 1, v20);
    v29 = v10;
    if (v28 == 1)
    {
      v45 = v10;
      v30 = v37;
      (*(v18 + 104))(v37, *MEMORY[0x277D32628], v20);
      v31 = v19;
      if (v27(v45, 1, v20) != 1)
      {
        sub_218D15BD0(v45);
      }
    }

    else
    {
      v30 = v37;
      (*(v18 + 32))(v37, v29, v20);
      v31 = v19;
    }

    v32 = v38;
    (*(v18 + 32))(&v38[v26[7]], v30, v20);
    *(v32 + v26[9]) = v33 & 1;
    (*(v36 + 32))(v32 + v26[5], v35, v39);
    sub_218D15C2C(v32, v31);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218D15714(void *a1)
{
  sub_218D15C90(0, &qword_280E8C1B8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D15B7C();
  sub_219BF7B44();
  type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
  v9[15] = 0;
  sub_219BF7804();
  if (!v1)
  {
    v9[14] = 1;
    sub_219BF7804();
    v9[13] = 2;
    sub_219BEF554();
    sub_218D15CF4(&qword_280E913A0, MEMORY[0x277D32648]);
    sub_219BF7834();
    v9[12] = 3;
    sub_219BF7804();
    v9[11] = 4;
    sub_219BF1934();
    sub_218D15CF4(&qword_280E90810, MEMORY[0x277D33478]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_218D159A8()
{
  v1 = *v0;
  v2 = 0x746E65746E6F63;
  if (v1 == 3)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000016;
  }

  v3 = 0xD000000000000011;
  if (*v0)
  {
    v3 = 0xD000000000000017;
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

uint64_t sub_218D15A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218D15E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218D15A7C(uint64_t a1)
{
  v2 = sub_218D15B7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D15AB8(uint64_t a1)
{
  v2 = sub_218D15B7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218D15B24()
{
  if (!qword_280E91380)
  {
    sub_219BEF554();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91380);
    }
  }
}

unint64_t sub_218D15B7C()
{
  result = qword_280E93698;
  if (!qword_280E93698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E93698);
  }

  return result;
}

uint64_t sub_218D15BD0(uint64_t a1)
{
  sub_218D15B24();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218D15C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218D15C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D15B7C();
    v7 = a3(a1, &type metadata for FeaturedIssueArticleMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218D15CF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218D15D50()
{
  result = qword_27CC112F0;
  if (!qword_27CC112F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC112F0);
  }

  return result;
}

unint64_t sub_218D15DA8()
{
  result = qword_280E93688;
  if (!qword_280E93688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E93688);
  }

  return result;
}

unint64_t sub_218D15E00()
{
  result = qword_280E93690;
  if (!qword_280E93690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E93690);
  }

  return result;
}

uint64_t sub_218D15E54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000219CD77A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CD7500 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CD77C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_219BF78F4();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t type metadata accessor for AlertDeviceOffline()
{
  result = qword_27CC112F8;
  if (!qword_27CC112F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218D16080()
{
  result = sub_219BF1584();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218D160F4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218D161D0()
{
  v0 = sub_219BE0A54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE0A44();
  sub_2187F3258();
  v4 = sub_219BDCD44();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277CEAD10], v4);
  sub_218D16698(&qword_27CC11308, MEMORY[0x277D2EA10]);
  sub_219BDCCC4();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_218D163C0()
{
  sub_219BE0914();
  sub_218D16698(&unk_27CC11310, MEMORY[0x277D2E908]);
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_218806FD0(v1);
}

uint64_t sub_218D16458()
{
  v0 = sub_219BE0A54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE0A44();
  sub_2187F3258();
  v4 = sub_219BDCD44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09EC0;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x277CEAD18], v4);
  v10(v9 + v6, *MEMORY[0x277CEAD10], v4);
  sub_218D16698(&qword_27CC11308, MEMORY[0x277D2EA10]);
  sub_219BDCCC4();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_218D16698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218D166F0()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  v2 = v0 | 0x7000000000000006;
  sub_2186CF94C();
  sub_2189B4DD4();

  sub_219BEB484();
  sub_218932F9C(v2);
}

id NewsActivityInfoDeserializer.deserialize(userActivity:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = [a1 userInfo];
  if (result)
  {
    v5 = result;
    v6 = sub_219BF5214();

    v7 = [a1 activityType];
    v8 = sub_219BF5414();
    v10 = v9;

    [a1 _executionContext];
    v11 = [a1 interaction];
    sub_218D16ED0(v8, v10, v6, v11, &v13);

    v12 = v13;
  }

  else
  {
    v12 = 0xF000000000000007;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_218D16904@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 userInfo];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  sub_218D17A08();
  v6 = sub_219BF5214();

  if (!*(v6 + 16) || (sub_21870F700(0x656E696C64616568, 0xEA00000000004449), (v7 & 1) == 0))
  {

    goto LABEL_12;
  }

  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_218D179B4();
    swift_allocError();
    *v20 = xmmword_219C312D0;
    *(v20 + 16) = 1;
    return swift_willThrow();
  }

  v8 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
  v9 = [a1 localizedTitle];
  v10 = sub_219BF5414();
  v12 = v11;

  v13 = &v8[OBJC_IVAR___TSFeedViewContext_title];
  swift_beginAccess();
  *v13 = v10;
  v13[1] = v12;

  v14 = [a1 userInfo];
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = v14;
  v16 = sub_219BF5214();

  if (!*(v16 + 16) || (sub_21870F700(0x726F7053794D7369, 0xEA00000000007374), (v17 & 1) == 0))
  {

    goto LABEL_14;
  }

  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0 || v35 != 1)
  {
LABEL_14:
    v21 = [a1 userInfo];
    if (v21)
    {
      v22 = v21;
      v23 = sub_219BF5214();

      if (*(v23 + 16) && (sub_21870F700(0x656C7A7A75507369, 0xEB00000000627548), (v24 & 1) != 0))
      {
        swift_unknownObjectRetain();

        if (swift_dynamicCast() & 1) != 0 && (v35)
        {

          result = swift_allocObject();
          *(result + 24) = 0;
          *(result + 32) = 0;
          *(result + 16) = v8;
          *(result + 40) = 1;
          v25 = 0xE000000000000002;
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    v26 = [a1 userInfo];
    if (v26)
    {
      v27 = v26;
      v28 = sub_219BF5214();

      if (*(v28 + 16) && (sub_21870F700(0x7548646F6F467369, 0xE900000000000062), (v29 & 1) != 0))
      {
        swift_unknownObjectRetain();

        if (swift_dynamicCast() & 1) != 0 && (v35)
        {

          result = swift_allocObject();
          *(result + 16) = v8;
          v25 = 0x3000000000000006;
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    v30 = [a1 userInfo];
    if (v30)
    {
      v31 = v30;
      v32 = sub_219BF5214();

      if (*(v32 + 16) && (sub_21870F700(0x6570696365527369, 0xEF676F6C61746143), (v33 & 1) != 0))
      {
        swift_unknownObjectRetain();

        if (swift_dynamicCast() & 1) != 0 && (v35)
        {
          result = swift_allocObject();
          *(result + 16) = v34;
          *(result + 24) = v37;
          *(result + 32) = v8;
          *(result + 40) = 0;
          *(result + 48) = 1;
          *(result + 56) = 0u;
          *(result + 72) = 0u;
          *(result + 88) = 0;
          *(result + 96) = -1;
          v19 = result | 0x4000000000000000;
          goto LABEL_37;
        }
      }

      else
      {
      }
    }

    result = swift_allocObject();
    *(result + 16) = v34;
    *(result + 24) = v37;
    *(result + 32) = v8;
    *(result + 40) = 0;
    *(result + 48) = 1;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0;
    *(result + 96) = -1;
    v25 = 0x2000000000000004;
LABEL_36:
    v19 = result | v25;
    goto LABEL_37;
  }

  result = swift_allocObject();
  *(result + 16) = 3;
  *(result + 24) = v8;
  *(result + 32) = 2;
  v19 = result | 0x7000000000000000;
LABEL_37:
  *a2 = v19;
  return result;
}

void sub_218D16ED0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v69 = a3;
  v70 = a5;
  v10 = sub_219BDD804();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x28223BE20](v10);
  v65 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_219BDE294();
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E54F0(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v63 - v16;
  v18 = sub_219BDD534();
  v66 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x6E65746E49676154 && a2 == 0xE900000000000074 || (sub_219BF78F4() & 1) != 0)
  {
    if (a4)
    {
      v21 = *(v6 + OBJC_IVAR____TtC7NewsUI228NewsActivityInfoDeserializer_intentDeserializer);
      v22 = a4;
      v23 = [v22 intent];
      v24 = [v21 activityDataForIntent_];

      if (v24)
      {
        BridgedNewsActivityData.convertToNewsActivity2()(v70);
      }

      else
      {
        sub_218D179B4();
        swift_allocError();
        *v29 = xmmword_219C31300;
        *(v29 + 16) = 1;
        swift_willThrow();
      }

      return;
    }

    sub_218D179B4();
    swift_allocError();
    v26 = xmmword_219C31310;
    goto LABEL_8;
  }

  if (a1 == 0x746E497961646F54 && a2 == 0xEB00000000746E65 || (sub_219BF78F4() & 1) != 0)
  {
    v27 = swift_allocObject();
    v28 = v27 | 0x4000000000000002;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
LABEL_14:
    *v70 = v28;
    return;
  }

  v72[0] = a1;
  v72[1] = a2;
  strcpy(v73, "com.apple.news");
  v73[15] = -18;
  sub_218B9E340();
  sub_218B9E394();
  if ((sub_219BF5314() & 1) == 0)
  {
    v34 = v69;
    if ((a1 != 0xD00000000000001BLL || 0x8000000219CF3C80 != a2) && (sub_219BF78F4() & 1) == 0)
    {
      sub_218D179B4();
      swift_allocError();
      *v60 = a1;
      *(v60 + 8) = a2;
      *(v60 + 16) = 0;
      swift_willThrow();

      return;
    }

    *&v71[0] = sub_219BF5414();
    *(&v71[0] + 1) = v35;
    sub_219BF72A4();
    if (*(v34 + 16) && (v36 = sub_21931EECC(v72), (v37 & 1) != 0))
    {
      sub_2186D1230(*(v34 + 56) + 32 * v36, v73);
      sub_218B6B67C(v72);
      if (swift_dynamicCast())
      {
        sub_218D17A6C(*&v71[0], *(&v71[0] + 1), a1, a2, v70);
        goto LABEL_48;
      }
    }

    else
    {
      sub_218B6B67C(v72);
    }

    sub_218D179B4();
    swift_allocError();
    v26 = xmmword_219C312E0;
LABEL_8:
    *v25 = v26;
LABEL_9:
    *(v25 + 16) = 1;
    swift_willThrow();
    return;
  }

  *&v71[0] = 1635017060;
  *(&v71[0] + 1) = 0xE400000000000000;
  sub_219BF72A4();
  v30 = v69;
  if (!*(v69 + 16) || (v31 = sub_21931EECC(v72), (v32 & 1) == 0))
  {
    sub_218B6B67C(v72);
    *&v71[0] = 0x49656C6369747261;
    *(&v71[0] + 1) = 0xE900000000000044;
    sub_219BF72A4();
    if (*(v30 + 16) && (v38 = sub_21931EECC(v72), (v39 & 1) != 0))
    {
      sub_2186D1230(*(v30 + 56) + 32 * v38, v73);
      sub_218B6B67C(v72);
      if (swift_dynamicCast())
      {
        v63 = *&v71[0];
        sub_2187B2C48();
        v41 = v40;
        v69 = swift_allocBox();
        v43 = v42;
        v65 = *(v41 + 48);
        sub_2187B2DA0();
        v64 = *(v44 + 48);
        v45 = sub_219BDB954();
        v46 = *(*(v45 - 8) + 56);
        v46(v17, 1, 1, v45);
        sub_219BDD514();
        v46(v17, 1, 1, v45);
        v48 = v67;
        v47 = v68;
        (*(v67 + 104))(v14, *MEMORY[0x277D2FF08], v68);
        sub_219BDD894();
        (*(v48 + 8))(v14, v47);
        sub_218838478(v17);
        (*(v66 + 8))(v20, v18);
        v49 = MEMORY[0x277D84F90];
        v50 = v65;
        *(v43 + v64) = MEMORY[0x277D84F90];
        *(v50 + v43) = v49;
        v28 = v69 | 2;
        goto LABEL_14;
      }
    }

    else
    {
      sub_218B6B67C(v72);
    }

    *&v71[0] = 0x6143657069636552;
    *(&v71[0] + 1) = 0xEA00000000006472;
    sub_219BF72A4();
    if (*(v30 + 16) && (v51 = sub_21931EECC(v72), (v52 & 1) != 0))
    {
      sub_2186D1230(*(v30 + 56) + 32 * v51, v73);
      sub_218B6B67C(v72);
      sub_218A19674();
      if (swift_dynamicCast())
      {
        v53 = *&v71[0];
        if (*(*&v71[0] + 16))
        {
          v54 = sub_21870F700(0x4449657069636572, 0xE800000000000000);
          if (v55)
          {
            sub_2186D1230(*(v53 + 56) + 32 * v54, v72);
            if (swift_dynamicCast())
            {
              v56 = *v73;
              sub_218A27458();
              v57 = v65;
              *v65 = v56;

              sub_219BDDBE4();
              (*(v63 + 104))(v57, *MEMORY[0x277D2FB08], v64);
              sub_219BDE674();
              swift_allocObject();
              v58 = sub_219BDE614();

              v59 = swift_allocObject();
              *(v59 + 16) = v58;
              v28 = v59 | 0x7000000000000004;
              goto LABEL_14;
            }
          }
        }

        sub_218D179B4();
        swift_allocError();
        *v62 = xmmword_219C312F0;
        *(v62 + 16) = 1;
        swift_willThrow();
LABEL_48:

        return;
      }
    }

    else
    {
      sub_218B6B67C(v72);
    }

    sub_218D179B4();
    swift_allocError();
    *v25 = 0xD00000000000001ELL;
    *(v25 + 8) = 0x8000000219CF3CA0;
    goto LABEL_9;
  }

  sub_2186D1230(*(v30 + 56) + 32 * v31, v71);
  sub_218B6B67C(v72);
  sub_218751558(v71, v73);
  sub_2186D1230(v73, v72);
  if (swift_dynamicCast())
  {
    v33 = v71[0];
    sub_218D17EEC(*&v71[0], *(&v71[0] + 1), a1, a2, v70);
    __swift_destroy_boxed_opaque_existential_1(v73);
    sub_2186C6190(v33, *(&v33 + 1));
  }

  else
  {
    sub_218D179B4();
    swift_allocError();
    *v61 = xmmword_219C312E0;
    *(v61 + 16) = 2;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v73);
  }
}

unint64_t sub_218D179B4()
{
  result = qword_27CC11320;
  if (!qword_27CC11320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11320);
  }

  return result;
}

unint64_t sub_218D17A08()
{
  result = qword_280E8E660;
  if (!qword_280E8E660)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E660);
  }

  return result;
}

uint64_t sub_218D17A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v42 = a3;
  v47 = a4;
  v41 = a5;
  v7 = sub_219BDE294();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E54F0(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_219BDD534();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v46 = a2;
  v43 = 84;
  v44 = 0xE100000000000000;
  sub_218B9E340();
  sub_218B9E394();
  if (sub_219BF5314())
  {
    v16 = sub_219BF5554();
    if ((v16 & 0x8000000000000000) == 0 && v16 == *MEMORY[0x277D30A00])
    {
      v17 = objc_allocWithZone(type metadata accessor for FeedViewContext());

      v18 = [v17 init];
      result = swift_allocObject();
      v20 = result;
      v21 = MEMORY[0x277D84F90];
      *(result + 16) = a1;
      *(result + 24) = a2;
      *(result + 32) = v18;
      *(result + 40) = v21;
      *(result + 48) = 1;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0;
      *(result + 96) = -1;
      v22 = 0x2000000000000004;
LABEL_9:
      *v41 = v22 | v20;
      return result;
    }
  }

  v45 = a1;
  v46 = a2;
  v43 = 65;
  v44 = 0xE100000000000000;
  if (sub_219BF5314())
  {
    v23 = sub_219BF5554();
    if ((v23 & 0x8000000000000000) == 0 && v23 == *MEMORY[0x277D30A00])
    {
      sub_2187B2C48();
      v25 = v24;
      v20 = swift_allocBox();
      v36 = v26;
      v47 = *(v25 + 48);
      sub_2187B2DA0();
      v42 = *(v27 + 48);
      v28 = sub_219BDB954();
      v29 = *(*(v28 - 8) + 56);
      v29(v12, 1, 1, v28);

      sub_219BDD514();
      v29(v12, 1, 1, v28);
      v31 = v39;
      v30 = v40;
      (*(v39 + 104))(v9, *MEMORY[0x277D2FF08], v40);
      v32 = v36;
      sub_219BDD894();
      (*(v31 + 8))(v9, v30);
      sub_218838478(v12);
      result = (*(v37 + 8))(v15, v38);
      v33 = MEMORY[0x277D84F90];
      *(v32 + v42) = MEMORY[0x277D84F90];
      *(v32 + v47) = v33;
      v22 = 2;
      goto LABEL_9;
    }
  }

  sub_218D179B4();
  swift_allocError();
  v34 = v47;
  *v35 = v42;
  *(v35 + 8) = v34;
  *(v35 + 16) = 0;
  swift_willThrow();
}

void sub_218D17EEC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v185 = a2;
  v182 = a3;
  v183 = a4;
  v184 = a1;
  v179 = a5;
  v5 = sub_219BDD804();
  v6 = *(v5 - 8);
  v172 = v5;
  v173 = v6;
  MEMORY[0x28223BE20](v5);
  v171 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_219BDE664();
  v178 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v169 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v180);
  v170 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  v176 = v10;
  v177 = v11;
  MEMORY[0x28223BE20](v10);
  v168 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E54F0(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v163 - v17;
  v19 = sub_219BDD534();
  v175 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BDE294();
  v174 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v163 - v26;
  sub_219BE1994();
  swift_allocObject();
  sub_219BE1984();
  type metadata accessor for NewsActivityInfo();
  sub_218D195B4();
  v28 = v186;
  sub_219BE1974();

  if (!v28)
  {
    v164 = v27;
    v165 = v25;
    v186 = 0;
    v29 = v180;
    v166 = v21;
    v167 = v22;
    v184 = v18;
    v185 = v19;
    v30 = v181;
    v31 = v188;
    sub_2186E54F0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_219C09BA0;
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 64) = sub_2186FC3BC();
    v33 = v183;
    v34 = v182;
    *(v32 + 32) = v182;
    *(v32 + 40) = v33;
    sub_2186C66AC();

    v35 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();
    v36 = v31;

    switch(v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type])
    {
      case 1:
        if (*&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark + 8])
        {
          v37 = objc_allocWithZone(MEMORY[0x277D550E0]);
          v38 = sub_219BF53D4();
          v39 = [v37 initWithJSONRepresentation_];

          if (v39)
          {
            v40 = v165;
            *v165 = v39;
            v41 = MEMORY[0x277D2FF10];
          }

          else
          {
            v41 = MEMORY[0x277D2FF08];
            v40 = v165;
          }

          v36 = v31;
        }

        else
        {
          v41 = MEMORY[0x277D2FF08];
          v40 = v165;
        }

        v136 = v174;
        (*(v174 + 104))(v40, *v41, v167);
        sub_2187B2C48();
        v138 = v137;
        v139 = swift_allocBox();
        v141 = v140;
        v182 = *(v138 + 48);
        v183 = v139;
        v142 = v184;
        sub_2188383F8(&v36[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url], v184);

        v143 = v166;
        sub_219BDD514();
        sub_2187B2DA0();
        v145 = *(v144 + 48);
        (*(v177 + 56))(v142, 1, 1, v176);
        sub_219BDD894();
        sub_218838478(v142);
        (*(v175 + 8))(v143, v185);
        (*(v136 + 8))(v40, v167);
        *(v141 + v145) = *&v36[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits];

        *(v141 + v182) = MEMORY[0x277D84F90];
        v49 = v183;
        goto LABEL_60;
      case 2:

        v44 = 0xF000000000000000;
        goto LABEL_61;
      case 7:
        v67 = v31;
        v68 = swift_allocObject();
        v69 = &v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
        v70 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
        v71 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition + 8];
        v72 = *&v36[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition + 16];
        v73 = *(v69 + 3);
        sub_2188382C8(v70, v71);

        if (v71 == 1)
        {
          v74 = v68 | 0x4000000000000002;
          *(v68 + 16) = 0u;
          *(v68 + 32) = 0u;
        }

        else
        {
          *(v68 + 16) = v70;
          *(v68 + 24) = v71;
          *(v68 + 32) = v72;
          *(v68 + 40) = v73;
          v74 = v68 | 0x4000000000000002;
        }

        *v179 = v74;
        return;
      case 8:
        if (*&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark + 8])
        {
          v91 = objc_allocWithZone(MEMORY[0x277D550E0]);
          v92 = sub_219BF53D4();
          v93 = [v91 initWithJSONRepresentation_];

          v94 = v167;
          if (v93)
          {
            v95 = v164;
            *v164 = v93;
            v96 = MEMORY[0x277D2FF10];
            v97 = v177;
            v98 = v174;
          }

          else
          {
            v96 = MEMORY[0x277D2FF08];
            v97 = v177;
            v98 = v174;
            v95 = v164;
          }

          v36 = v31;
        }

        else
        {
          v96 = MEMORY[0x277D2FF08];
          v97 = v177;
          v94 = v167;
          v98 = v174;
          v95 = v164;
        }

        (*(v98 + 104))(v95, *v96, v94);
        type metadata accessor for NewsActivity2.Article(0);
        v183 = swift_allocBox();
        v147 = v146;
        v148 = v36;
        v149 = v184;
        sub_2188383F8(&v36[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url], v184);

        v150 = v166;
        sub_219BDD514();
        sub_2187B2DA0();
        v152 = *(v151 + 48);
        (*(v97 + 56))(v149, 1, 1, v176);
        sub_219BDD894();
        sub_218838478(v149);
        (*(v175 + 8))(v150, v185);
        (*(v98 + 8))(v95, v167);
        v153 = *&v148[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits];

        *(v147 + v152) = v153;
        v44 = v183 | 0x2000000000000000;
        goto LABEL_61;
      case 9:
        v100 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits];
        if (v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue + 8])
        {
          v101 = 0;
        }

        else
        {
          v101 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
        }

        v114 = v31;
        v116 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
        v115 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier + 8];
        v117 = objc_allocWithZone(type metadata accessor for FeedViewContext());

        v118 = [v117 init];

        v119 = v179;
        if ((v101 - 3) < 6)
        {
          v120 = swift_allocObject();
          *(v120 + 16) = v116;
          *(v120 + 24) = v115;
          *(v120 + 32) = v118;
          *(v120 + 40) = v100;
          *(v120 + 48) = 1;
          *(v120 + 49) = v187[0];
          *(v120 + 52) = *(v187 + 3);
          *(v120 + 56) = v101;
          *(v120 + 64) = 0u;
          *(v120 + 80) = 0u;
          *(v120 + 96) = -1;
          v121 = 0x9000000000000004;
LABEL_49:
          *v119 = v120 | v121;
          return;
        }

        if (v101 != 13)
        {
          v120 = swift_allocObject();
          *(v120 + 16) = v116;
          *(v120 + 24) = v115;
          *(v120 + 32) = v118;
          *(v120 + 40) = v100;
          *(v120 + 48) = 1;
          *(v120 + 49) = v187[0];
          *(v120 + 52) = *(v187 + 3);
          *(v120 + 56) = v101;
          *(v120 + 64) = 0u;
          *(v120 + 80) = 0u;
          *(v120 + 96) = -1;
          v121 = 0x2000000000000004;
          goto LABEL_49;
        }

        v135 = swift_allocObject();
        *(v135 + 16) = v116;
        *(v135 + 24) = v115;
        *(v135 + 32) = v118;
        *(v135 + 40) = v100;
        *(v135 + 48) = 1;
        *(v135 + 49) = v187[0];
        *(v135 + 52) = *(v187 + 3);
        *(v135 + 56) = 13;
        *(v135 + 64) = 0u;
        *(v135 + 80) = 0u;
        *(v135 + 96) = -1;
        *v119 = v135 | 0x4000000000000000;
        break;
      case 10:
        v75 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits];
        v76 = v31;
        v78 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
        v77 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier + 8];
        v79 = objc_allocWithZone(type metadata accessor for FeedViewContext());

        v80 = [v79 init];

        v81 = swift_allocObject();
        *(v81 + 16) = v78;
        *(v81 + 24) = v77;
        *(v81 + 32) = v80;
        *(v81 + 40) = v75;
        *(v81 + 48) = 1;
        *(v81 + 56) = 2;
        *(v81 + 64) = 0u;
        *(v81 + 80) = 0u;
        *(v81 + 96) = -1;
        v44 = v81 | 0x2000000000000004;
        goto LABEL_61;
      case 12:

        *v179 = 0xF000000000000018;
        return;
      case 13:
        v86 = swift_allocObject();
        v87 = v31;
        v89 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
        v88 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier + 8];
        v90 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits];

        *(v86 + 16) = v89;
        *(v86 + 24) = v88;
        *(v86 + 32) = v90;
        *(v86 + 56) = 0x4000000000000000;
        v44 = v86 | 0x5000000000000000;
        goto LABEL_61;
      case 14:
        sub_2188383F8(&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url], v16);
        v104 = v176;
        v105 = v177;
        if ((*(v177 + 48))(v16, 1, v176) == 1)
        {
          sub_218838478(v16);
          sub_218D179B4();
          swift_allocError();
          *v106 = xmmword_219C31320;
          *(v106 + 16) = 1;
          swift_willThrow();
        }

        else
        {

          v122 = *(v105 + 32);
          v123 = v168;
          v122(v168, v16, v104);
          v124 = swift_allocBox();
          v122(v125, v123, v104);
          v44 = v124 | 0x6000000000000000;
LABEL_61:
          *v179 = v44;
        }

        return;
      case 15:
        v45 = swift_allocObject();
        v103 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
        v102 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier + 8];

        MagazineSectionConfigKind.init(identifier:)(v103, v102, v45 + 16);

        v47 = 0x6000000000000004;
        goto LABEL_35;
      case 16:

        v44 = 0xF000000000000030;
        goto LABEL_61;
      case 17:
        v83 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
        v82 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier + 8];
        v84 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
        v85 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title + 8];
        if (v85)
        {

          swift_bridgeObjectRetain_n();
        }

        else
        {
          v126 = v36;
          type metadata accessor for Localized();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v128 = objc_opt_self();
          swift_bridgeObjectRetain_n();
          v129 = [v128 bundleForClass_];
          v84 = sub_219BDB5E4();
          v85 = v130;
        }

        v119 = v179;
        v120 = swift_allocObject();
        *(v120 + 16) = v83;
        *(v120 + 24) = v82;
        *(v120 + 32) = v84;
        *(v120 + 40) = v85;
        *(v120 + 48) = 0u;
        *(v120 + 64) = 0u;
        *(v120 + 80) = 0u;
        *(v120 + 96) = 0u;
        *(v120 + 112) = 0u;
        *(v120 + 128) = 0u;
        *(v120 + 144) = 0u;
        *(v120 + 160) = 0;
        *(v120 + 168) = v83;
        *(v120 + 176) = v82;
        *(v120 + 184) = 0;
        v121 = 0x6000000000000004;
        goto LABEL_49;
      case 18:
        v184 = v31;
        v50 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits];
        if (!v50)
        {
          goto LABEL_53;
        }

        v51 = *(v50 + 16);
        v52 = (v50 + 32);
        v185 = 0x8000000219CD77E0;

        v53 = v30;
        v54 = v169;
        while (1)
        {
          v56 = v178;
          if (!v51)
          {
            break;
          }

          if (*v52 <= 1u && *v52)
          {

            goto LABEL_68;
          }

          v55 = sub_219BF78F4();

          ++v52;
          --v51;
          if (v55)
          {
            v56 = v178;
LABEL_68:

            (*(v56 + 104))(v54, *MEMORY[0x277D30088], v53);
            v154 = sub_2191F853C(0, 1, 1, MEMORY[0x277D84F90]);
            v156 = v154[2];
            v155 = v154[3];
            v157 = v179;
            v133 = v171;
            if (v156 >= v155 >> 1)
            {
              v154 = sub_2191F853C(v155 > 1, v156 + 1, 1, v154);
            }

            v132 = v172;
            v154[2] = v156 + 1;
            (*(v56 + 32))(v154 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v156, v169, v53);
            v134 = v173;
            v131 = v157;
            goto LABEL_71;
          }
        }

LABEL_53:
        v131 = v179;
        v133 = v171;
        v132 = v172;
        v134 = v173;
LABEL_71:
        v158 = v184;
        v159 = *&v184[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
        v160 = *&v184[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier + 8];
        sub_218A27458();
        *v133 = v159;
        v133[1] = v160;
        swift_bridgeObjectRetain_n();
        sub_219BDDBE4();
        (*(v134 + 104))(v133, *MEMORY[0x277D2FB08], v132);
        sub_219BDE674();
        swift_allocObject();
        v161 = sub_219BDE614();

        v162 = swift_allocObject();
        *(v162 + 16) = v161;
        *v131 = v162 | 0x7000000000000004;
        return;
      case 19:

        v48 = swift_allocObject();
        *(v48 + 16) = 0;
        v49 = v48 | 0x7000000000000004;
        goto LABEL_60;
      case 25:

        v44 = 0xF000000000000040;
        goto LABEL_61;
      case 27:

        v44 = 0xF000000000000048;
        goto LABEL_61;
      case 30:

        v111 = swift_allocObject();
        *(v111 + 16) = 2;
        v44 = v111 | 0x3000000000000000;
        goto LABEL_61;
      case 31:

        type metadata accessor for FollowingNotificationsPrewarm();
        v107 = swift_allocBox();
        v109 = v108;
        v110 = sub_219BF3BD4();
        (*(*(v110 - 8) + 56))(v109, 1, 1, v110);
        swift_storeEnumTagMultiPayload();
        v44 = v107 | 0x3000000000000004;
        goto LABEL_61;
      case 32:
        v42 = swift_allocObject();
        *(v42 + 16) = 0;
        v43 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];

        *(v42 + 24) = v43;
        *(v42 + 32) = 2;
        v44 = v42 | 0x7000000000000000;
        goto LABEL_61;
      case 33:
        v58 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
        v57 = *&v31[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier + 8];

        v59 = v29[5];
        v60 = sub_219BF24E4();
        v61 = v170;
        (*(*(v60 - 8) + 56))(&v170[v59], 1, 1, v60);
        *v61 = v58;
        *(v61 + 8) = v57;
        *(v61 + 16) = 0;
        v62 = (v61 + v29[6]);
        *v62 = 0;
        v62[1] = 0;
        v63 = (v61 + v29[7]);
        *v63 = 0;
        v63[1] = 0;
        v64 = (v61 + v29[8]);
        *v64 = 0;
        v64[1] = 0;
        v65 = swift_allocBox();
        sub_218D1960C(v61, v66);
        v44 = v65 | 0xE000000000000006;
        goto LABEL_61;
      case 35:
        v112 = swift_allocObject();
        v113 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];

        *(v112 + 24) = 0;
        *(v112 + 32) = 0;
        *(v112 + 16) = v113;
        *(v112 + 40) = 1;
        v44 = v112 | 0xE000000000000002;
        goto LABEL_61;
      case 36:
        v45 = swift_allocObject();
        v46 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];

        *(v45 + 16) = v46;
        v47 = 0x3000000000000004;
LABEL_35:
        v49 = v45 | v47;
LABEL_60:
        v44 = v49 | 2;
        goto LABEL_61;
      default:
        sub_218D179B4();
        swift_allocError();
        *v99 = v34;
        *(v99 + 8) = v33;
        *(v99 + 16) = 0;
        swift_willThrow();

        return;
    }
  }
}

id NewsActivityInfoDeserializer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsActivityInfoDeserializer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewsActivityInfoDeserializer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_218D195B4()
{
  result = qword_280EE0DC0;
  if (!qword_280EE0DC0)
  {
    type metadata accessor for NewsActivityInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0DC0);
  }

  return result;
}

uint64_t sub_218D1960C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D196BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218D19A08(a1, &v18);
  if (v19)
  {
    sub_2186CB1F0(&v18, v21);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v17 = a2;
    sub_219BEF9A4();
    v3 = sub_219BEF994();
    v4 = type metadata accessor for FeedPaywallLayoutOptionsProvider();
    v5 = swift_allocObject();
    v6 = MEMORY[0x277D6E490];
    *(v5 + 16) = v3;
    *(v5 + 24) = v6;
    v19 = v4;
    v20 = sub_218D1A810();
    *&v18 = v5;
    swift_getWitnessTable();
    v7 = sub_219BE4004();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(&v18);
    *&v18 = v7;
    *(&v18 + 1) = v9;
    v10 = swift_allocObject();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_219BE1D74();
    sub_219BEA8C4();
    swift_allocObject();
    v11 = sub_219BEA8A4();

    *(v10 + 16) = v11;
    *v17 = v10;
    v12 = *MEMORY[0x277D326D8];
    v13 = sub_219BEF6E4();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v17, v12, v13);
    (*(v14 + 56))(v17, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_218D1A8BC(&v18, &qword_280EE6458, sub_2186D83E8);
    v16 = sub_219BEF6E4();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

double sub_218D19A08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a1;
  v97 = a2;
  v77 = sub_219BE4884();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for FeedPaywallType(0);
  MEMORY[0x28223BE20](v79);
  v81 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE4034();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x28223BE20](v5);
  v93 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE3E04();
  v88 = *(v7 - 8);
  v89 = v7;
  MEMORY[0x28223BE20](v7);
  v87 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE4914();
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v83 = (&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v82 = &v75 - v12;
  sub_218D1A868(0, qword_280ED5D90, type metadata accessor for MagazineFeedGroup);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v75 - v14;
  v78 = type metadata accessor for PaywallMagazineFeedGroup();
  MEMORY[0x28223BE20](v78);
  v90 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D1A868(0, qword_280EDCCA8, type metadata accessor for AudioFeedGroup);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v75 - v17;
  v19 = type metadata accessor for PaywallAudioFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v86 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D1A868(0, qword_280EDE900, type metadata accessor for TagFeedGroup);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v75 - v22;
  v80 = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v91 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v75 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v75 - v31;
  v33 = type metadata accessor for PaywallTagFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v25 + 16);
  v37 = v96;
  v36(v32);
  v38 = type metadata accessor for TagFeedGroup();
  v39 = swift_dynamicCast();
  v40 = *(*(v38 - 8) + 56);
  if (v39)
  {
    v40(v23, 0, 1, v38);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_218D1A9DC(v23, v35, type metadata accessor for PaywallTagFeedGroup);
      sub_218718690((v35 + 32), v97);
      sub_218D1A918(v35, type metadata accessor for PaywallTagFeedGroup);
      return result;
    }

    sub_218D1A918(v23, type metadata accessor for TagFeedGroup);
  }

  else
  {
    v40(v23, 1, 1, v38);
    sub_218D1A8BC(v23, qword_280EDE900, type metadata accessor for TagFeedGroup);
  }

  (v36)(v30, v37, AssociatedTypeWitness);
  v42 = type metadata accessor for AudioFeedGroup();
  v43 = swift_dynamicCast();
  v44 = *(*(v42 - 8) + 56);
  if (v43)
  {
    v44(v18, 0, 1, v42);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v45 = v86;
      sub_218D1A9DC(v18, v86, type metadata accessor for PaywallAudioFeedGroup);
      sub_218718690(v45 + 16, v97);
      sub_218D1A918(v45, type metadata accessor for PaywallAudioFeedGroup);
      return result;
    }

    sub_218D1A918(v18, type metadata accessor for AudioFeedGroup);
  }

  else
  {
    v44(v18, 1, 1, v42);
    sub_218D1A8BC(v18, qword_280EDCCA8, type metadata accessor for AudioFeedGroup);
  }

  (v36)(v91, v37, AssociatedTypeWitness);
  v46 = type metadata accessor for MagazineFeedGroup();
  v47 = v92;
  v48 = swift_dynamicCast();
  v49 = *(*(v46 - 8) + 56);
  v51 = v94;
  v50 = v95;
  v52 = v93;
  if (!v48)
  {
    v49(v47, 1, 1, v46);
    sub_218D1A8BC(v47, qword_280ED5D90, type metadata accessor for MagazineFeedGroup);
LABEL_17:
    v58 = v97;
    *(v97 + 32) = 0;
    result = 0.0;
    *v58 = 0u;
    v58[1] = 0u;
    return result;
  }

  v49(v47, 0, 1, v46);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_218D1A918(v47, type metadata accessor for MagazineFeedGroup);
    goto LABEL_17;
  }

  v53 = v90;
  sub_218D1A9DC(v47, v90, type metadata accessor for PaywallMagazineFeedGroup);
  v54 = v80[5];
  v96 = v80[6];
  __swift_project_boxed_opaque_existential_1(v80 + 2, v54);
  (*(v88 + 104))(v87, *MEMORY[0x277D34E48], v89);
  v55 = *(v78 + 36);
  v56 = v53 + v55 + *(type metadata accessor for FeedPaywallConfig() + 28);
  v57 = v81;
  sub_218D1A978(v56, v81);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v51 + 104))(v52, *MEMORY[0x277D34EF0], v50);
  }

  else
  {
    sub_2186F6684();
    (*(v51 + 32))(v52, v57 + *(v59 + 48), v50);
  }

  v61 = v84;
  v60 = v85;
  v63 = v82;
  v62 = v83;
  v64 = v87;
  sub_219BE4064();
  (*(v51 + 8))(v52, v50);
  (*(v88 + 8))(v64, v89);
  (*(v61 + 16))(v62, v63, v60);
  v65 = (*(v61 + 88))(v62, v60);
  if (v65 == *MEMORY[0x277D353A0])
  {
    (*(v61 + 8))(v63, v60);
    sub_218D1A918(v90, type metadata accessor for PaywallMagazineFeedGroup);
    (*(v61 + 96))(v62, v60);
    sub_2186CB1F0(v62, v97);
  }

  else if (v65 == *MEMORY[0x277D353B0])
  {
    (*(v61 + 96))(v62, v60);
    v66 = *v62;
    if (*(*v62 + 16))
    {
      v67 = v76;
      v68 = v75;
      v69 = v77;
      (*(v76 + 16))(v75, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v77);

      sub_219BE4874();
      (*(v61 + 8))(v63, v60);
      sub_218D1A918(v90, type metadata accessor for PaywallMagazineFeedGroup);
      (*(v67 + 8))(v68, v69);
    }

    else
    {

      (*(v61 + 8))(v63, v60);
      sub_218D1A918(v90, type metadata accessor for PaywallMagazineFeedGroup);
      result = 0.0;
      v74 = v97;
      *v97 = 0u;
      *(v74 + 16) = 0u;
      *(v74 + 32) = 0;
    }
  }

  else
  {
    v70 = *MEMORY[0x277D353A8];
    v71 = *(v61 + 8);
    v72 = v65;
    v71(v63, v60);
    sub_218D1A918(v90, type metadata accessor for PaywallMagazineFeedGroup);
    result = 0.0;
    v73 = v97;
    *v97 = 0u;
    *(v73 + 16) = 0u;
    *(v73 + 32) = 0;
    if (v72 != v70)
    {
      v71(v62, v60);
    }
  }

  return result;
}

uint64_t sub_218D1A714()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_218774F78(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_218D1A790()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_219BE4564();

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_218D1A810()
{
  result = qword_280EA6A20[0];
  if (!qword_280EA6A20[0])
  {
    type metadata accessor for FeedPaywallLayoutOptionsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA6A20);
  }

  return result;
}

void sub_218D1A868(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218D1A8BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218D1A868(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218D1A918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D1A978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedPaywallType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D1A9DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

NewsUI2::ShortcutsCustomizeAffordance::Position_optional __swiftcall ShortcutsCustomizeAffordance.Position.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ShortcutsCustomizeAffordance.Position.rawValue.getter()
{
  if (*v0)
  {
    return 1801675106;
  }

  else
  {
    return 0x746E6F7266;
  }
}

uint64_t sub_218D1AAD8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218D1AB50()
{
  sub_219BF5524();
}

uint64_t sub_218D1ABB4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218D1AC28@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

void sub_218D1AC88(uint64_t *a1@<X8>)
{
  v2 = 1801675106;
  if (!*v1)
  {
    v2 = 0x746E6F7266;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_218D1ACBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1801675106;
  }

  else
  {
    v3 = 0x746E6F7266;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1801675106;
  }

  else
  {
    v5 = 0x746E6F7266;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218D1AD58(uint64_t a1)
{
  v2 = sub_218D1B450();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_218D1ADAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_218D1B450();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_218D1AE08(uint64_t a1)
{
  v2 = sub_218D1B450();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

uint64_t _s7NewsUI228ShortcutsCustomizeAffordanceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_219BE6034();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D1B3EC(0, &qword_280EE5B08, MEMORY[0x277D6D478]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  sub_218D1B4A4();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_219BF78F4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_219BF78F4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = a1[4];
  v16 = a2[4];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    v37 = v5;
    sub_2186F8B0C();
    v17 = v16;
    v18 = v15;
    v19 = sub_219BF6DD4();

    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v37 = v5;
    if (v16)
    {
      goto LABEL_18;
    }
  }

  v20 = type metadata accessor for ShortcutsCustomizeAffordance();
  v21 = *(v20 + 28);
  v22 = *(v12 + 48);
  sub_218D1B524(a1 + v21, v14);
  sub_218D1B524(a2 + v21, &v14[v22]);
  v23 = *(v37 + 48);
  if (v23(v14, 1, v4) != 1)
  {
    sub_218D1B524(v14, v10);
    if (v23(&v14[v22], 1, v4) == 1)
    {
      (*(v37 + 8))(v10, v4);
      goto LABEL_17;
    }

    v26 = v37;
    (*(v37 + 32))(v7, &v14[v22], v4);
    sub_218D1B678();
    v27 = sub_219BF53A4();
    v28 = *(v26 + 8);
    v28(v7, v4);
    v28(v10, v4);
    sub_218D1B600(v14);
    if (v27)
    {
      goto LABEL_21;
    }

LABEL_18:
    v24 = 0;
    return v24 & 1;
  }

  if (v23(&v14[v22], 1, v4) != 1)
  {
LABEL_17:
    sub_218D1B5A4(v14);
    goto LABEL_18;
  }

  sub_218D1B600(v14);
LABEL_21:
  v29 = *(v20 + 32);
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30)
  {
    v32 = 1801675106;
  }

  else
  {
    v32 = 0x746E6F7266;
  }

  if (v30)
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  if (v31)
  {
    v34 = 1801675106;
  }

  else
  {
    v34 = 0x746E6F7266;
  }

  if (v31)
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  if (v32 == v34 && v33 == v35)
  {

    v24 = 1;
  }

  else
  {
    v24 = sub_219BF78F4();
  }

  return v24 & 1;
}

unint64_t sub_218D1B250()
{
  result = qword_27CC113B8;
  if (!qword_27CC113B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC113B8);
  }

  return result;
}

uint64_t type metadata accessor for ShortcutsCustomizeAffordance()
{
  result = qword_27CC113C0;
  if (!qword_27CC113C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D1B318()
{
  sub_218D1B3EC(319, &qword_280E8DA70, sub_2186F8B0C);
  if (v0 <= 0x3F)
  {
    sub_218D1B3EC(319, &qword_280EE5B08, MEMORY[0x277D6D478]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_218D1B3EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_218D1B450()
{
  result = qword_27CC113D0;
  if (!qword_27CC113D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC113D0);
  }

  return result;
}

void sub_218D1B4A4()
{
  if (!qword_27CC113D8)
  {
    sub_218D1B3EC(255, &qword_280EE5B08, MEMORY[0x277D6D478]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC113D8);
    }
  }
}

uint64_t sub_218D1B524(uint64_t a1, uint64_t a2)
{
  sub_218D1B3EC(0, &qword_280EE5B08, MEMORY[0x277D6D478]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D1B5A4(uint64_t a1)
{
  sub_218D1B4A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218D1B600(uint64_t a1)
{
  sub_218D1B3EC(0, &qword_280EE5B08, MEMORY[0x277D6D478]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218D1B678()
{
  result = qword_27CC113E0;
  if (!qword_27CC113E0)
  {
    sub_219BE6034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC113E0);
  }

  return result;
}

uint64_t sub_218D1B6D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AnalyticsReferralFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EE0368);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  v6 = type metadata accessor for NewsActivityInfoDeserializer();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC7NewsUI228NewsActivityInfoDeserializer_analyticsReferralFactory] = v3;
  *&v7[OBJC_IVAR____TtC7NewsUI228NewsActivityInfoDeserializer_intentDeserializer] = v4;
  *&v7[OBJC_IVAR____TtC7NewsUI228NewsActivityInfoDeserializer_featureAvailability] = v5;
  v13.receiver = v7;
  v13.super_class = v6;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    sub_218718690(a1, v12);
    type metadata accessor for NewsUserActivityHandler();
    v10 = swift_allocObject();
    sub_218D1BAD8();
    sub_219BE91D4();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09EC0;
    sub_219BE91C4();
    sub_219BE91C4();
    *(v10 + 16) = v11;
    sub_218D1BB30(&qword_280EE5A90, sub_2186CF94C);
    sub_219BE5D14();
    *(v10 + OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_userActivityDeserializer) = v8;
    *(v10 + OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_tracker) = v9;
    sub_21875F93C(v12, v10 + OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_resolver);
    return v10;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218D1BA10(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for NewsUserActivityHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_218D1BB30(&qword_280EE0858, type metadata accessor for NewsUserActivityHandler);
    v5[0] = v4;
    sub_219BE9194();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218D1BAD8()
{
  if (!qword_280E8BDA0)
  {
    sub_219BE91D4();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8BDA0);
    }
  }
}

uint64_t sub_218D1BB30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218D1BB88()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218D1BBE4()
{
  sub_219BF5524();
}

uint64_t sub_218D1BC24()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218D1BC7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218D1C0C4();
  *a1 = result;
  return result;
}

uint64_t sub_218D1BD78(char *a1, char *a2)
{
  if (*&aNone_12[8 * *a1] == *&aNone_12[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_219BF78F4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

unint64_t sub_218D1BDE4()
{
  result = qword_27CC113E8;
  if (!qword_27CC113E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC113E8);
  }

  return result;
}

uint64_t sub_218D1BE38(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 40;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v5 + 16 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v3 >= v4)
    {
      break;
    }

    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_18;
    }

    v10 = v7;
    v11 = *v7;
    if (v2 == 1)
    {
      v8 = 4;
    }

    else
    {
      if (v2 != 2)
      {
LABEL_11:
        v12 = *(v10 - 1);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_218C355D0(0, *(v6 + 16) + 1, 1);
        }

        v14 = *(v6 + 16);
        v13 = *(v6 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_218C355D0((v13 > 1), v14 + 1, 1);
        }

        *(v6 + 16) = v14 + 1;
        v15 = v6 + 16 * v14;
        *(v15 + 32) = v12;
        *(v15 + 40) = v11;
        v3 = v9;
        goto LABEL_2;
      }

      v8 = v2;
    }

    ++v3;
    v7 += 2;
    if ((v11 & v8) == 0)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_218D1BF74(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 48;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v5 + 24 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v3 >= v4)
    {
      break;
    }

    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_18;
    }

    v10 = v7;
    v11 = *v7;
    if (v2 == 1)
    {
      v8 = 4;
    }

    else
    {
      if (v2 != 2)
      {
LABEL_11:
        v12 = *(v10 - 1);
        v13 = *(v10 - 2);
        v14 = v12;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_218C355F0(0, *(v6 + 16) + 1, 1);
        }

        v16 = *(v6 + 16);
        v15 = *(v6 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_218C355F0((v15 > 1), v16 + 1, 1);
        }

        *(v6 + 16) = v16 + 1;
        v17 = (v6 + 24 * v16);
        v17[4] = v13;
        v17[5] = v14;
        v17[6] = v11;
        v3 = v9;
        goto LABEL_2;
      }

      v8 = v2;
    }

    ++v3;
    v7 += 3;
    if ((v11 & v8) == 0)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_218D1C0C4()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_218D1C110()
{
  result = qword_280EB0368;
  if (!qword_280EB0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0368);
  }

  return result;
}

uint64_t type metadata accessor for SportsManagementMoveBlueprintModifier()
{
  result = qword_27CC113F0;
  if (!qword_27CC113F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D1C1D8()
{
  sub_2189525B0();
  if (v0 <= 0x3F)
  {
    sub_219BDC104();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218D1C25C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v47 = a3;
  v49 = a2;
  sub_218D1CC2C(0, &qword_27CC0E9B0, MEMORY[0x277D6DF88]);
  v48 = v4;
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v37 - v5);
  sub_218D1CC2C(0, &qword_27CC0AFB0, MEMORY[0x277D6EC60]);
  v8 = v7;
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  sub_218D1CED4(0, &qword_27CC11408, sub_2189525B0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for SportsManagementModel();
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189525B0();
  v44 = *(v16 - 8);
  v45 = v16;
  MEMORY[0x28223BE20](v16);
  v42 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D1CD20();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D1CC2C(0, &qword_27CC0AF80, MEMORY[0x277D6D710]);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v38 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v8;
  v43 = a1;
  sub_219BEB354();
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    sub_218D1CDE8(v20, sub_218D1CD20);
LABEL_5:
    sub_218D1CD94();
    *v6 = swift_allocError();
    v29 = v46;
    v30 = v48;
    (*(v46 + 104))(v6, *MEMORY[0x277D6DF68], v48);
    v49(v6);
    return (*(v29 + 8))(v6, v30);
  }

  v37 = v13;
  (*(v23 + 32))(v27, v20, v22);
  v28 = v45;
  sub_219BE5FC4();
  sub_21991E404();
  sub_218D1CDE8(v15, type metadata accessor for SportsManagementModel);
  sub_219BE6A64();

  if ((*(v44 + 48))(v12, 1, v28) == 1)
  {
    (*(v23 + 8))(v27, v22);
    sub_218D1CE48(v12);
    goto LABEL_5;
  }

  (*(v44 + 32))(v42, v12, v45);
  v32 = v38;
  (*(v23 + 16))(v38, v27, v22);
  type metadata accessor for SportsManagementMoveBlueprintModifier();
  sub_219BDC0D4();
  sub_219BE6964();
  v33 = v39;
  v34 = v40;
  v35 = v41;
  (*(v40 + 16))(v39, v43, v41);
  sub_219BEB234();
  type metadata accessor for SportsManagementSectionDescriptor();
  sub_218D1CF38(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
  sub_218D1CF38(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
  sub_219BE85B4();
  v49(v6);
  (*(v46 + 8))(v6, v48);
  (*(v34 + 8))(v33, v35);
  v36 = *(v23 + 8);
  v36(v32, v22);
  (*(v44 + 8))(v42, v45);
  return (v36)(v27, v22);
}

uint64_t sub_218D1C998()
{
  sub_218D1CED4(0, &qword_280E8BDD0, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_219BE81C4();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE40], v0);
  v4 = sub_218847E58(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_218D1CAE8(uint64_t a1)
{
  v2 = sub_218D1CF38(&qword_27CC0EB10, type metadata accessor for SportsManagementMoveBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_218D1CC2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SportsManagementSectionDescriptor();
    v8[1] = type metadata accessor for SportsManagementModel();
    v8[2] = sub_218D1CF38(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    v8[3] = sub_218D1CF38(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218D1CD20()
{
  if (!qword_27CC11410)
  {
    sub_218D1CC2C(255, &qword_27CC0AF80, MEMORY[0x277D6D710]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC11410);
    }
  }
}

unint64_t sub_218D1CD94()
{
  result = qword_27CC11418;
  if (!qword_27CC11418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11418);
  }

  return result;
}

uint64_t sub_218D1CDE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D1CE48(uint64_t a1)
{
  sub_218D1CED4(0, &qword_27CC11408, sub_2189525B0, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218D1CED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218D1CF38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218D1CF94()
{
  result = qword_27CC11420;
  if (!qword_27CC11420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11420);
  }

  return result;
}

uint64_t type metadata accessor for TopicRecipesTagFeedGroupKnobs()
{
  result = qword_280EADF80;
  if (!qword_280EADF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D1D05C()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186EDCB0(319, &qword_280E912E0, MEMORY[0x277D32720]);
    if (v1 <= 0x3F)
    {
      sub_218D1D174();
      if (v2 <= 0x3F)
      {
        sub_218CC4F9C();
        if (v3 <= 0x3F)
        {
          sub_2186ECA28();
          if (v4 <= 0x3F)
          {
            sub_2186F95C4();
            if (v5 <= 0x3F)
            {
              sub_218CC4F34();
              if (v6 <= 0x3F)
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

void sub_218D1D174()
{
  if (!qword_280E91460)
  {
    sub_219BEFD94();
    v0 = MEMORY[0x277D32A98];
    sub_21877C7E0(&qword_280E91128, MEMORY[0x277D32A98]);
    sub_21877C7E0(&unk_280E91138, v0);
    sub_21877C7E0(&qword_280E91130, v0);
    v1 = sub_219BEF544();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91460);
    }
  }
}

uint64_t sub_218D1D278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v45 = a8;
  v39 = a7;
  v40 = a5;
  v41 = a4;
  v42 = a3;
  v43 = a2;
  v12 = sub_219BEFD94();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDCB0(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  sub_2189AD5C8();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  sub_218D0B510(a1, v17, &qword_280E91A70, sub_2189AD5C8);
  v23 = *(v20 + 48);
  if (v23(v17, 1, v19) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C7E0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    sub_219BEE974();
    if (v23(v17, 1, v19) != 1)
    {
      sub_218D0B57C(v17, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    (*(v20 + 32))(v22, v17, v19);
  }

  (*(v20 + 32))(a9, v22, v19);
  v24 = type metadata accessor for TopicRecipesTagFeedGroupKnobs();
  v25 = MEMORY[0x277D32720];
  v26 = v43;
  sub_218D0B510(v43, a9 + v24[5], &qword_280E912E0, MEMORY[0x277D32720]);
  v27 = v42;
  sub_218D0B510(v42, a9 + v24[6], &qword_280E912E0, v25);
  v28 = v40;
  v29 = v39;
  if (v41)
  {
    v30 = v41;
  }

  else
  {
    (*(v37 + 104))(v14, *MEMORY[0x277D32A90], v38);
    sub_218D1D174();
    swift_allocObject();
    v30 = sub_219BEF534();
  }

  v31 = v45;
  *(a9 + v24[7]) = v30;
  if (v28)
  {

    v32 = v28;
  }

  else
  {
    sub_218CC4F9C();
    swift_allocObject();

    v32 = sub_219BEEE04();
  }

  *(a9 + v24[8]) = v32;
  if (a6)
  {

    v33 = a6;
  }

  else
  {
    v47 = 0;
    sub_2186ECA28();
    swift_allocObject();

    v33 = sub_219BEF534();
  }

  *(a9 + v24[9]) = v33;
  if (v29)
  {
  }

  else
  {
    v46 = 0;
    sub_2186F95C4();
    swift_allocObject();

    v29 = sub_219BEF534();
  }

  *(a9 + v24[10]) = v29;
  if (!v31)
  {
    v31 = sub_2194AE724(MEMORY[0x277D84F90]);
  }

  v34 = MEMORY[0x277D32720];
  sub_218D0B57C(v27, &qword_280E912E0, MEMORY[0x277D32720]);
  sub_218D0B57C(v26, &qword_280E912E0, v34);
  result = sub_218D0B57C(v44, &qword_280E91A70, sub_2189AD5C8);
  *(a9 + v24[11]) = v31;
  return result;
}

uint64_t sub_218D1D7D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v78 = sub_219BEFD94();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v83 = v4;
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v75 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TopicRecipesTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v79);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v73 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v61 - v11;
  sub_2186EDCB0(0, &qword_280E91A70, sub_2189AD5C8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v81 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = v61 - v16;
  sub_218D1F0BC(0, &qword_280E8CB68, MEMORY[0x277D844C8]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = v61 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D1F004();
  v22 = v84;
  sub_219BF7B34();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v67 = 0;
  v69 = v19;
  v71 = v7;
  v66 = a1;
  LOBYTE(v90) = 0;
  sub_21877C7E0(&qword_280E91A88, sub_2189AD5C8);
  v24 = v82;
  v25 = v83;
  sub_219BF7674();
  sub_219BEF814();
  LOBYTE(v90) = 1;
  sub_21877C7E0(&qword_280E912E8, MEMORY[0x277D32720]);
  v72 = v12;
  sub_219BF7674();
  LOBYTE(v90) = 2;
  v26 = v73;
  sub_219BF7674();
  sub_218D1D174();
  v28 = v27;
  LOBYTE(v89) = 3;
  sub_21877C7E0(&qword_280E91468, sub_218D1D174);
  v61[2] = v28;
  sub_219BF7674();
  v65 = v90;
  sub_218CC4F9C();
  v30 = v29;
  LOBYTE(v88) = 4;
  sub_21877C7E0(&qword_280E91798, sub_218CC4F9C);
  v61[1] = v30;
  sub_219BF7674();
  v64 = v89;
  sub_2186ECA28();
  v32 = v31;
  LOBYTE(v87) = 5;
  sub_21877C7E0(&qword_280E913D8, sub_2186ECA28);
  v61[3] = v32;
  sub_219BF7674();
  v84 = v88;
  sub_2186F95C4();
  v34 = v33;
  LOBYTE(v86) = 6;
  sub_21877C7E0(&qword_280E913F8, sub_2186F95C4);
  v61[4] = v34;
  sub_219BF7674();
  v62 = v87;
  sub_218CC4F34();
  LOBYTE(v85) = 7;
  sub_218CC84B8();
  v70 = v18;
  sub_219BF7674();
  v63 = v86;
  v35 = v24;
  v36 = v81;
  sub_218D0B510(v35, v81, &qword_280E91A70, sub_2189AD5C8);
  v37 = v74;
  v38 = *(v74 + 48);
  v39 = v38(v36, 1, v25);
  v40 = v26;
  v68 = v21;
  if (v39 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C7E0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v41 = v75;
    sub_219BEE974();
    v42 = v36;
    v43 = v83;
    v44 = v38(v42, 1, v83);
    v45 = v41;
    v46 = v79;
    v47 = v71;
    v48 = v69;
    v49 = v43;
    if (v44 != 1)
    {
      sub_218D0B57C(v81, &qword_280E91A70, sub_2189AD5C8);
      v49 = v43;
    }
  }

  else
  {
    v45 = v75;
    v50 = v83;
    (*(v37 + 32))(v75, v36, v83);
    v46 = v79;
    v47 = v71;
    v48 = v69;
    v49 = v50;
  }

  (*(v37 + 32))(v47, v45, v49);
  v51 = MEMORY[0x277D32720];
  sub_218D0B510(v72, v47 + v46[5], &qword_280E912E0, MEMORY[0x277D32720]);
  sub_218D0B510(v40, v47 + v46[6], &qword_280E912E0, v51);
  v52 = v80;
  v53 = v62;
  if (v65)
  {
    v54 = v65;
  }

  else
  {
    (*(v76 + 104))(v77, *MEMORY[0x277D32A90], v78);
    swift_allocObject();
    v54 = sub_219BEF534();
  }

  *(v47 + v46[7]) = v54;
  v55 = v64;
  v56 = v84;
  if (v64)
  {

    v57 = v55;
  }

  else
  {
    swift_allocObject();

    v57 = sub_219BEEE04();
    v56 = v84;
  }

  *(v47 + v46[8]) = v57;
  if (v56)
  {

    v58 = v56;
  }

  else
  {
    v85 = 0;
    swift_allocObject();

    v58 = sub_219BEF534();
  }

  *(v47 + v46[9]) = v58;
  if (v53)
  {
  }

  else
  {
    LOBYTE(v85) = 0;
    swift_allocObject();

    v53 = sub_219BEF534();
  }

  *(v47 + v46[10]) = v53;
  v59 = v63;
  if (!v63)
  {
    v59 = sub_2194AE724(MEMORY[0x277D84F90]);
  }

  v60 = MEMORY[0x277D32720];
  sub_218D0B57C(v40, &qword_280E912E0, MEMORY[0x277D32720]);
  sub_218D0B57C(v72, &qword_280E912E0, v60);
  sub_218D0B57C(v82, &qword_280E91A70, sub_2189AD5C8);
  (*(v48 + 8))(v68, v70);
  *(v47 + v46[11]) = v59;
  sub_218D1F058(v47, v52);
  return __swift_destroy_boxed_opaque_existential_1(v66);
}