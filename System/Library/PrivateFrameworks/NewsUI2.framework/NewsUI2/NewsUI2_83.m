uint64_t sub_219020924@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v74 = a2;
  v88 = a1;
  v72 = a3;
  v67 = type metadata accessor for MagazineFeedLayoutModel();
  MEMORY[0x28223BE20](v67);
  v92 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BEF974();
  v94 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3ED68();
  v89 = v5;
  v93 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_219BE9FA4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v71 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219021960(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v83 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v82 = &v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v81 = &v64 - v14;
  MEMORY[0x28223BE20](v13);
  v80 = &v64 - v15;
  v16 = sub_219BDCB14();
  v85 = *(v16 - 8);
  v86 = v16;
  MEMORY[0x28223BE20](v16);
  v79 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BEE074();
  v73 = *(v70 - 8);
  v18 = MEMORY[0x28223BE20](v70);
  v66 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = &v64 - v20;
  v78 = MEMORY[0x277D32218];
  sub_219021960(0, &qword_280E91990, MEMORY[0x277D32218]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v64 - v22;
  v77 = MEMORY[0x277D325F8];
  sub_219021960(0, &qword_280E91548, MEMORY[0x277D325F8]);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v64 - v25;
  v76 = MEMORY[0x277D31DD0];
  sub_219021960(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v64 - v28;
  v30 = sub_219BF1904();
  v75 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED874();
  v33 = sub_219BEDB64();
  (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
  v34 = sub_219BEF4E4();
  (*(*(v34 - 8) + 56))(v26, 1, 1, v34);
  v35 = sub_219BEEA64();
  (*(*(v35 - 8) + 56))(v23, 1, 1, v35);
  sub_218BB7DB4();
  sub_218951DB0();
  sub_2186EC038(&qword_280EB0358, type metadata accessor for MagazineFeedSectionDescriptor);
  sub_2186EC038(&qword_280ED5CF0, type metadata accessor for MagazineFeedModel);
  sub_219BE69F4();

  sub_218864D54(v23, &qword_280E91990, v78);
  sub_218864D54(v26, &qword_280E91548, v77);
  sub_218864D54(v29, &qword_280E924F8, v76);
  v36 = *(v75 + 8);
  v36(v32, v30);
  sub_219BED874();
  v37 = sub_219BF44B4();
  v36(v32, v30);
  v97 = sub_219BF3594();
  v98 = MEMORY[0x277D33EB8];
  v96[0] = v37;
  v38 = sub_219BDCB24();
  v39 = *(*(v38 - 8) + 56);
  v39(v80, 1, 1, v38);
  v39(v81, 1, 1, v38);
  v39(v82, 1, 1, v38);
  v40 = v38;
  v41 = v79;
  v39(v83, 1, 1, v40);
  v42 = v84;

  sub_219BDCB04();
  v43 = v95;
  sub_219BEE0B4();
  if (v43)
  {
    (*(v85 + 8))(v41, v86);

    return sub_218864D54(v96, &qword_280E91020, sub_2189BD704);
  }

  else
  {
    v83 = v37;
    (*(v85 + 8))(v41, v86);

    sub_218864D54(v96, &qword_280E91020, sub_2189BD704);
    v45 = v66;
    v46 = v70;
    (*(v73 + 16))(v66, v42, v70);
    v96[0] = sub_21999E93C(v45);
    v96[1] = v47;
    v96[2] = v48;
    LOBYTE(v97) = 0;
    v49 = *MEMORY[0x277D6E980];
    v50 = sub_219BE9F84();
    v51 = v71;
    (*(*(v50 - 8) + 104))(v71, v49, v50);
    (*(v68 + 104))(v51, *MEMORY[0x277D6E988], v69);
    v52 = sub_219BEE004();
    v53 = *(v52 + 16);
    if (v53)
    {
      v82 = 0;
      v99 = MEMORY[0x277D84F90];
      sub_218C36738(0, v53, 0);
      v95 = v99;
      v54 = *(v94 + 16);
      v55 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v81 = v52;
      v56 = v52 + v55;
      v87 = *(v94 + 72);
      v88 = v54;
      v85 = v93 + 32;
      v86 = (v94 + 8);
      v57 = v65;
      v94 += 16;
      do
      {
        v58 = v90;
        v59 = v91;
        v60 = v88;
        v88(v90, v56, v91);
        v60(v92, v58, v59);
        sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel);
        sub_219BE75D4();
        (*v86)(v58, v59);
        v99 = v95;
        v62 = *(v95 + 16);
        v61 = *(v95 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_218C36738(v61 > 1, v62 + 1, 1);
          v95 = v99;
        }

        v63 = v95;
        *(v95 + 16) = v62 + 1;
        (*(v93 + 32))(v63 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v62, v57, v89);
        v56 += v87;
        --v53;
      }

      while (v53);

      v46 = v70;
    }

    else
    {

      v95 = MEMORY[0x277D84F90];
    }

    sub_2187EF004();
    sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel);
    sub_219BE81A4();

    return (*(v73 + 8))(v84, v46);
  }
}

uint64_t sub_219021660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_21901D05C(a1, a2, a3, a4);
}

unint64_t sub_219021748()
{
  result = qword_280EE5958;
  if (!qword_280EE5958)
  {
    sub_218951DB0();
    sub_2186EC038(&qword_280EB0358, type metadata accessor for MagazineFeedSectionDescriptor);
    sub_2186EC038(&qword_280ED5CF0, type metadata accessor for MagazineFeedModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE5958);
  }

  return result;
}

uint64_t sub_219021828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219021888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2190218F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_219021960(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2190219B4(uint64_t a1)
{
  v3 = type metadata accessor for AudioFeedTrack(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE15B4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277D2F4C8], v7, v9);
  v12 = sub_219BDD0F4();
  (*(v8 + 8))(v11, v7);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for AudioTrackDetailsViewController();
  sub_218C1620C(a1, v6);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  sub_218C162E4(v6, v15 + v13);
  *(v15 + v14) = v12;

  v16 = sub_219BE1E04();

  if (v16)
  {

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219021C04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioFeedTrack(0);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  return sub_219BE1B94();
}

uint64_t sub_219021CC8(void *a1)
{
  type metadata accessor for AudioFeedTrack(0);

  return sub_219021C04(a1);
}

void sub_219021D74(unint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  *&v10 = COERCE_DOUBLE(sub_219BDCAF4());
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FF18C();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v19 = a2[1];
  if (v19 > 0.0)
  {
    v175 = v15;
    v176 = v17;
    v178 = v11;
    v179 = *&v10;
    v198 = v18;
    v20 = sub_219BE8D54();
    v21 = [v20 horizontalSizeClass];
    v177 = *&v13;
    if (v21 == 1)
    {

      v22 = 0;
    }

    else
    {
      v57 = [v20 verticalSizeClass];

      v22 = v57 != 1;
    }

    v58 = sub_219BE8D54();
    v59 = [v58 horizontalSizeClass];

    v60 = 14.0;
    v61 = a1 >> 60;
    if (v59 == 1 && v61 <= 6)
    {
      v60 = *(&unk_219C53950 + ((a1 >> 57) & 0x78));
    }

    x = v60;
    *&v197 = a4;
    v62 = 0.0;
    v23 = v22;
    if ((sub_219BE8D14() & 1) == 0)
    {
      sub_219BE8D34();
      v62 = v63 + -10.0;
    }

    v64 = a2[3];
    v65 = a2[5];
    sub_219BF6034();
    v67 = v66;
    v68 = sub_219BE8D54();
    v69 = [v68 horizontalSizeClass];

    v70 = v61 == 4 && v69 == 1;
    v71 = 12.0;
    if (!v70)
    {
      v71 = 0.0;
    }

    v72 = *&v198 - v67;
    v73 = v19 - x - v71;
    v180 = v65;
    sub_219BF6034();
    if (*&v197 <= 0.0)
    {
      v75 = v73 - v62;
    }

    else
    {
      v75 = v73 - v62 - *&v197 + -10.0;
    }

    v76 = *&v198 - v74;
    v189 = v64;
    v77 = v64;
    v181 = v62;
    v78 = v62;
    v204 = CGRectIntegral(*(&v75 - 3));
    y = v204.origin.y;
    x = v204.origin.x;
    width = v204.size.width;
    height = v204.size.height;
    __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
    v80 = sub_219BE8D04();
    v31 = sub_2188158D8(a1, v22, v80, v72);

    if (v23)
    {
      v81 = 2;
    }

    else
    {
      v81 = qword_219C53988[v61];
    }

    [v31 boundingRectWithSize:v81 options:0 context:{v72, v73}];
    v83 = ceil(v82);
    v84 = COERCE_DOUBLE(sub_218C8F1D0(v23));
    [*&v84 ascender];
    v86 = v85;
    [*&v84 capHeight];
    v88 = v86 - v87;
    v89 = sub_21881505C(v23, a1, v72);
    v205.origin.y = y;
    v205.origin.x = x;
    v205.size.width = width;
    v205.size.height = height;
    v90 = CGRectGetHeight(v205) - v83;
    [v89 descender];
    v206.origin.y = v90 + fabs(v91);
    v206.origin.x = 0.0;
    v194 = 0.0;
    v186 = v72;
    v206.size.width = v72;
    v206.size.height = v83;
    v207 = CGRectIntegral(v206);
    v92 = v207.origin.x;
    v93 = v207.size.width;
    v192 = v207.origin.y;
    v94 = v88 + v207.origin.y;
    v190 = v207.size.height;
    v95 = v207.size.height - v88;
    [v89 descender];
    v208.size.height = v95 - fabs(v96);
    v193 = v92;
    v208.origin.x = v92;
    v208.origin.y = v94;
    v191 = v93;
    v208.size.width = v93;
    v209 = CGRectIntegral(v208);
    v97 = v209.origin.x;
    v98 = v209.origin.y;
    v99 = v209.size.width;
    v196 = v209.size.height;
    v100 = sub_21881A36C(a1);
    v101 = 0.0;
    v102 = 0;
    v103 = 0;
    v195 = height;
    if (v100)
    {
      sub_219BE3E44();
      sub_219BE3E34();
      v194 = v104;
      v106 = v105;
      v107 = v99;
      v108 = v97;
      v109 = x;
      v210.origin.x = x;
      v110 = v98;
      v112 = width;
      v111 = y;
      v210.origin.y = y;
      v210.size.width = width;
      v210.size.height = v195;
      v188 = CGRectGetWidth(v210);
      v211.origin.x = v108;
      v211.origin.y = v110;
      v211.size.width = v107;
      v211.size.height = v196;
      MaxY = CGRectGetMaxY(v211);
      v212.origin.x = v109;
      v97 = v108;
      v99 = v107;
      v212.origin.y = v111;
      v98 = v110;
      v212.size.width = v112;
      height = v195;
      v212.size.height = v195;
      v114 = CGRectGetHeight(v212);
      if (v114 >= MaxY)
      {
        v115 = MaxY;
      }

      else
      {
        v115 = v114;
      }

      v213.size.width = v194;
      v213.origin.x = v188 - v194;
      v213.origin.y = v115 - v106;
      v213.size.height = v106;
      *(&v101 - 1) = CGRectIntegral(v213);
      v194 = v116;
    }

    v185 = v103;
    v187 = v102;
    v188 = v101;
    sub_219022A80(a1);
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v124 = v123;
    if (v61 <= 6 && ((1 << v61) & 0x73) != 0)
    {
      v214.origin.x = v97;
      v214.origin.y = v98;
      v214.size.width = v99;
      v214.size.height = v196;
      MidY = CGRectGetMidY(v214);
      v215.origin.x = v118;
      v215.origin.y = v120;
      v215.size.width = v122;
      v215.size.height = v124;
      v126 = MidY + CGRectGetHeight(v215) * -0.5;
    }

    else
    {
      v126 = 0.0;
    }

    v216.origin.y = y;
    v216.origin.x = x;
    v216.size.width = width;
    v216.size.height = height;
    v127 = CGRectGetWidth(v216);
    v217.origin.x = v118;
    v217.origin.y = v120;
    v217.size.width = v122;
    v217.size.height = v124;
    v128 = v127 - CGRectGetWidth(v217);
    v218.origin.x = v118;
    v218.origin.y = v120;
    v218.size.width = v122;
    v218.size.height = v124;
    v129 = CGRectGetWidth(v218);
    v219.origin.x = v118;
    v219.origin.y = v120;
    v219.size.width = v122;
    v219.size.height = v124;
    v220.size.height = CGRectGetHeight(v219);
    v220.origin.x = v128;
    v220.origin.y = v126;
    v220.size.width = v129;
    v221 = CGRectIntegral(v220);
    v183 = v221.origin.y;
    v184 = v221.origin.x;
    v182 = v221.size.width;
    v130 = v221.size.height;
    v131 = 0.0;
    v132 = 0.0;
    v133 = 0.0;
    v134 = 0.0;
    v135 = *&v197;
    v136 = v186;
    if (v61)
    {
      goto LABEL_43;
    }

    v196 = v84;
    v137 = swift_projectBox();
    v138 = v176;
    sub_2190230F8(v137, v176, sub_2187FF18C);

    v139 = *(v175 + 48);
    sub_219023098(v138 + *(v175 + 64), type metadata accessor for MastheadModelSupplementaryInfo);
    sub_219023098(v138 + v139, type metadata accessor for MastheadModelContext);
    v140 = sub_219BE8D54();
    v141 = [v140 horizontalSizeClass];

    v142 = sub_219BE8D54();
    v143 = [v142 userInterfaceIdiom];

    if (v141 == 1)
    {
      if (!v143)
      {
        v176 = v31;
        v162 = v89;
        v163 = 0;
        goto LABEL_39;
      }

      if (v143 == 1)
      {
        v176 = v89;

        v144 = objc_opt_self();
        sub_219BF0CD4();
        v146 = v177;
        v145 = v178;
        v147 = v179;
        (*(*&v178 + 104))(COERCE_DOUBLE(*&v177), *MEMORY[0x277D6D198], COERCE_DOUBLE(*&v179));
        sub_219BF0CC4();
        v149 = v148;
        (*(*&v145 + 8))(COERCE_DOUBLE(*&v146), COERCE_DOUBLE(*&v147));
        v150 = [v144 systemFontOfSize:v149 weight:*MEMORY[0x277D74410]];
        [v150 lineHeight];
        v134 = v151;

        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v153 = [objc_opt_self() bundleForClass_];
        v154 = sub_219BDB5E4();
        v156 = v155;

        v157 = sub_219BE8D54();
        v158 = sub_218C8FC78(v154, v156);

        v159 = v189;
        v133 = *&v198 - v189 - v180 + -60.0 + -110.0;
        [v158 boundingRectWithSize:2 options:0 context:{v133, 44.0}];
        v161 = v160;

        v131 = v159 + 60.0;
        if (v161 == v134)
        {
          v132 = v181 + v134 * -0.5 + -22.0;
        }

        else
        {
          v132 = v181 + -44.0;
          v134 = 44.0;
        }

        v84 = v196;
        v89 = v176;
LABEL_43:
        v177 = v132;
        v178 = v131;
        v179 = v133;
        v180 = v134;
        v181 = v130;
        if (v135 <= 0.0)
        {

          v197 = 0u;
          v196 = 0.0;
          v26 = 0.0;
          v25 = 0.0;
          v27 = 0.0;
          v33 = 0uLL;
          v34 = 0uLL;
          v35 = 0uLL;
          v36 = 0uLL;
          v37 = 0uLL;
          v38 = 0uLL;
          v39 = 0uLL;
          v40 = 0uLL;
          v41 = 0uLL;
          v42 = 0uLL;
          v43 = 0uLL;
          v24 = v198;
          v44 = v195;
        }

        else
        {
          v223.origin.y = y;
          v223.origin.x = x;
          v223.size.width = width;
          v44 = v195;
          v223.size.height = v195;
          v224.origin.y = CGRectGetMaxY(v223) + 10.0;
          v224.origin.x = v189;
          v224.size.width = v136;
          v224.size.height = v135;
          v225 = CGRectIntegral(v224);
          v196 = v225.origin.x;
          v26 = v225.origin.y;
          v25 = v225.size.width;
          v27 = v225.size.height;

          v197 = 0u;
          v33 = 0uLL;
          v34 = 0uLL;
          v35 = 0uLL;
          v36 = 0uLL;
          v37 = 0uLL;
          v38 = 0uLL;
          v39 = 0uLL;
          v40 = 0uLL;
          v41 = 0uLL;
          v42 = 0uLL;
          v43 = 0uLL;
          v24 = v198;
        }

        v29 = v192;
        v28 = v193;
        v32 = v190;
        v30 = v191;
        v49 = v194;
        v51 = v187;
        v50 = v188;
        v53 = v184;
        v52 = v185;
        v56 = v182;
        v54 = v183;
        v47 = v180;
        v55 = v181;
        v46 = v178;
        v48 = v179;
        v45 = v177;
        goto LABEL_47;
      }
    }

    v176 = v31;
    v162 = v89;
    v163 = 1;
LABEL_39:

    v164 = objc_opt_self();
    sub_219BF0CD4();
    v165 = v177;
    v166 = v178;
    v167 = v179;
    (*(*&v178 + 104))(COERCE_DOUBLE(*&v177), *MEMORY[0x277D6D198], COERCE_DOUBLE(*&v179));
    sub_219BF0CC4();
    v169 = v168;
    (*(*&v166 + 8))(COERCE_DOUBLE(*&v165), COERCE_DOUBLE(*&v167));
    v170 = [v164 systemFontOfSize:v169 weight:*MEMORY[0x277D74410]];
    [v170 lineHeight];
    v134 = v171;

    if (v163)
    {
      v222.origin.y = v192;
      v222.origin.x = v193;
      v222.size.height = v190;
      v222.size.width = v191;
      v172 = v181 + CGRectGetMinY(v222) - v134;
      v173 = -2.0;
    }

    else
    {
      v172 = v181 + v134 * -0.5;
      v173 = -22.0;
    }

    v132 = v172 + v173;
    v84 = v196;
    v89 = v162;
    v31 = v176;
    v133 = *&v198 - v189 - v180;
    v131 = v189;
    goto LABEL_43;
  }

  if (qword_27CC07D20 != -1)
  {
    swift_once();
  }

  memcpy(v203, &byte_27CCD8250, sizeof(v203));
  sub_21902303C(v203, v202);
  LOBYTE(v23) = v203[0];
  v202[0] = *(v203 + 1);
  *(v202 + 3) = DWORD1(v203[0]);
  v24 = *(v203 + 8);
  v196 = *(&v203[1] + 1);
  v25 = *(&v203[2] + 1);
  v26 = *&v203[2];
  v28 = *(&v203[3] + 1);
  v27 = *&v203[3];
  v30 = *(&v203[4] + 1);
  v29 = *&v203[4];
  v31 = *(&v203[5] + 1);
  v32 = *&v203[5];
  v197 = v203[6];
  v33 = v203[7];
  v34 = v203[8];
  v35 = v203[9];
  v36 = v203[10];
  v37 = v203[11];
  v38 = v203[12];
  v39 = v203[13];
  v40 = v203[14];
  v41 = v203[15];
  v42 = v203[16];
  v43 = v203[17];
  y = *(&v203[18] + 1);
  x = *&v203[18];
  v44 = *(&v203[19] + 1);
  width = *&v203[19];
  v45 = *(&v203[20] + 1);
  v46 = *&v203[20];
  v47 = *(&v203[21] + 1);
  v48 = *&v203[21];
  v50 = *(&v203[22] + 1);
  v49 = *&v203[22];
  v52 = *(&v203[23] + 1);
  v51 = *&v203[23];
  v54 = *(&v203[24] + 1);
  v53 = *&v203[24];
  v55 = *(&v203[25] + 1);
  v56 = *&v203[25];
LABEL_47:
  *(a3 + 8) = v24;
  *(a3 + 24) = v196;
  *(a3 + 32) = v26;
  *(a3 + 40) = v25;
  *(a3 + 48) = v27;
  *a3 = v23;
  *(a3 + 1) = v202[0];
  *(a3 + 4) = *(v202 + 3);
  *(a3 + 56) = v28;
  *(a3 + 64) = v29;
  *(a3 + 72) = v30;
  *(a3 + 80) = v32;
  *(a3 + 88) = v31;
  *(a3 + 96) = v197;
  *(a3 + 112) = v33;
  *(a3 + 128) = v34;
  *(a3 + 144) = v35;
  *(a3 + 160) = v36;
  *(a3 + 176) = v37;
  *(a3 + 192) = v38;
  *(a3 + 208) = v39;
  *(a3 + 224) = v40;
  *(a3 + 240) = v41;
  *(a3 + 256) = v42;
  *(a3 + 272) = v43;
  v174 = y;
  *(a3 + 288) = x;
  *(a3 + 296) = v174;
  *(a3 + 304) = width;
  *(a3 + 312) = v44;
  *(a3 + 320) = v46;
  *(a3 + 328) = v45;
  *(a3 + 336) = v48;
  *(a3 + 344) = v47;
  *(a3 + 352) = v49;
  *(a3 + 360) = v50;
  *(a3 + 368) = v51;
  *(a3 + 376) = v52;
  *(a3 + 384) = v53;
  *(a3 + 392) = v54;
  *(a3 + 400) = v56;
  *(a3 + 408) = v55;
}

void sub_219022A80(unint64_t a1)
{
  v2 = type metadata accessor for MastheadModelSupplementaryInfo();
  MEMORY[0x28223BE20](v2);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v36 - v9;
  v11 = sub_219BEC004();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v16 = v36 - v15;
  v17 = a1 >> 60;
  if ((a1 >> 60) - 2 < 7)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_3:
    sub_219023098(v10, sub_2186FE720);
    return;
  }

  v37 = v14;
  if (v17)
  {
    sub_218A6E454();
    v22 = v21;
    v23 = swift_projectBox();
    sub_2190230F8(v23 + *(v22 + 48), v10, sub_2186FE720);
  }

  else
  {
    sub_2187FF18C();
    v19 = v18;
    v20 = swift_projectBox();
    sub_2190230F8(v20 + *(v19 + 64), v4, type metadata accessor for MastheadModelSupplementaryInfo);
    sub_2190230F8(&v4[*(v2 + 24)], v10, sub_2186FE720);
    sub_219023098(v4, type metadata accessor for MastheadModelSupplementaryInfo);
  }

  v38 = *(v12 + 48);
  if (v38(v10, 1, v11) == 1)
  {
    goto LABEL_3;
  }

  v36[0] = *(v12 + 32);
  v36[1] = v12 + 32;
  (v36[0])(v16, v10, v11);
  v24 = sub_219BEBFF4();
  v25 = v16;
  v26 = *(v12 + 8);
  v26(v25, v11);
  if (v24)
  {

    if (v17)
    {
      sub_218A6E454();
      v31 = v30;
      v32 = swift_projectBox();
      sub_2190230F8(v32 + *(v31 + 48), v8, sub_2186FE720);
    }

    else
    {
      sub_2187FF18C();
      v28 = v27;
      v29 = swift_projectBox();
      sub_2190230F8(v29 + *(v28 + 64), v4, type metadata accessor for MastheadModelSupplementaryInfo);
      sub_2190230F8(&v4[*(v2 + 24)], v8, sub_2186FE720);
      sub_219023098(v4, type metadata accessor for MastheadModelSupplementaryInfo);
    }

    if (v38(v8, 1, v11) == 1)
    {
      sub_219023098(v8, sub_2186FE720);
    }

    else
    {
      v33 = v37;
      (v36[0])(v37, v8, v11);
      v34 = sub_219BEBFF4();
      if (v34)
      {
        v35 = v34;
        if (sub_219BEBFE4())
        {
          [v35 frame];
          CGRectIntegral(v39);

          v26(v33, v11);
        }

        else
        {
          v26(v33, v11);
        }
      }

      else
      {
        v26(v33, v11);
      }
    }
  }
}

uint64_t sub_219022F88()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219023098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190230F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_219023160(unint64_t a1, double a2)
{
  v3 = a1 >> 60;
  if (a1 >> 60 != 6 || (v4 = sub_219BE8D54(), v5 = [v4 userInterfaceIdiom], v4, v6 = 0.0, !v5))
  {
    v7 = sub_219BE8D54();
    v8 = [v7 horizontalSizeClass];

    if (v8 == 1 && v3 <= 6 && ((1 << v3) & 0x73) != 0)
    {
      v9 = 0;
      v10 = 0x4050000000000000;
    }

    else
    {
      v9 = 1;
      v10 = 0x4054800000000000;
    }

    v11 = *&v10;
    v12 = sub_219BE8D14();
    v13 = 0.0;
    if ((v12 & 1) == 0)
    {
      sub_219BE8D34();
      v13 = v14 + -10.0;
    }

    v6 = v11 + v13;
    v15 = sub_219BE8D54();
    v16 = [v15 horizontalSizeClass];

    if (v3 == 4 && v16 == 1)
    {
      v6 = v6 + 12.0;
    }

    if (a2 > 0.0)
    {
      v6 = a2 + 10.0 + v6;
    }

    sub_219BE8D74();
    if (v17 <= 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = v9;
    }

    if ((v18 & 1) == 0)
    {
      sub_219BE8D74();
      return v6 + v19;
    }
  }

  return v6;
}

uint64_t sub_2190232CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  sub_2186F64EC(0);
  v89 = v3;
  v83 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v82 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3B14();
  v87 = v7;
  v78 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v79 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = v62 - v10;
  v85 = type metadata accessor for TopicMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v85);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v88 = v62 - v17;
  sub_218CE8B24(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v77 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v76 = v62 - v21;
  sub_219024570(0, &qword_280E8CC70, sub_2190244B8, &type metadata for TopicMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v86 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v62 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190244B8();
  v26 = v90;
  sub_219BF7B34();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v72 = v23;
  v73 = 0;
  v75 = v16;
  v90 = v12;
  v74 = a1;
  LOBYTE(v97) = 0;
  sub_2186EC7A0(&qword_280E919C8, sub_2186E3B14);
  v28 = v76;
  v29 = v87;
  sub_219BF7674();
  LOBYTE(v97) = 1;
  sub_218CE8B98();
  sub_219BF7674();
  v99 = v102;
  LOBYTE(v95) = 4;
  sub_219BF7674();
  v69 = v97;
  v68 = v98;
  LOBYTE(v95) = 2;
  sub_218CE8BEC();
  sub_219BF7674();
  v70 = v101;
  LOBYTE(v93) = 5;
  sub_219BF7674();
  v67 = v95;
  v66 = v96;
  LOBYTE(v91) = 6;
  sub_219BF7674();
  v65 = v93;
  v64 = v94;
  v100 = 7;
  sub_219BF7674();
  v63 = v91;
  v62[1] = v92;
  v100 = 3;
  sub_2186EC7A0(&qword_280E91838, sub_2186F64EC);
  sub_219BF7674();
  v30 = v77;
  sub_218CE8CA0(v28, v77, sub_218CE8B24);
  v31 = v78;
  v32 = *(v78 + 48);
  v33 = v32(v30, 1, v29);
  v71 = v25;
  if (v33 == 1)
  {
    v34 = v30;
    v35 = v28;
    v36 = v87;
    v37 = v90;
    v38 = v75;
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v36, qword_280F61818);
    v40 = v79;
    (*(v31 + 16))(v79, v39, v36);
    v41 = v32(v34, 1, v36);
    v42 = v36;
    v28 = v35;
    v43 = v40;
    if (v41 != 1)
    {
      sub_218CE8C40(v34, sub_218CE8B24);
    }
  }

  else
  {
    v43 = v79;
    v42 = v87;
    (*(v31 + 32))(v79, v30, v87);
    v37 = v90;
    v38 = v75;
  }

  v44 = sub_219BEDB04();
  v45 = v81;
  (*(*(v44 - 8) + 56))(v81, 1, 1, v44);
  v46 = v80;
  sub_219BEEA04();
  sub_218CE8C40(v45, sub_218CE8A90);
  (*(v31 + 8))(v43, v42);
  (*(v31 + 32))(v37, v46, v42);
  v47 = v99;
  if (v99 == 3)
  {
    v47 = 0;
  }

  v48 = v85;
  v37[*(v85 + 20)] = v47;
  v49 = v70;
  if (v70 == 4)
  {
    v49 = 0;
  }

  v50 = v48;
  v37[*(v48 + 24)] = v49;
  v51 = v88;
  sub_218CE8CA0(v88, v38, sub_218CE8AB0);
  v52 = v83;
  v53 = *(v83 + 48);
  v54 = v89;
  if (v53(v38, 1, v89) == 1)
  {
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2186EC7A0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v55 = v28;
    v56 = v82;
    sub_219BEEC74();
    v50 = v85;
    sub_218CE8C40(v51, sub_218CE8AB0);
    sub_218CE8C40(v55, sub_218CE8B24);
    v57 = v75;
    (*(v72 + 8))(v71, v86);
    v58 = v53(v57, 1, v54);
    v59 = v74;
    v60 = v84;
    if (v58 != 1)
    {
      sub_218CE8C40(v57, sub_218CE8AB0);
    }
  }

  else
  {
    sub_218CE8C40(v51, sub_218CE8AB0);
    sub_218CE8C40(v28, sub_218CE8B24);
    (*(v72 + 8))(v71, v86);
    v56 = v82;
    (*(v52 + 32))(v82, v38, v54);
    v59 = v74;
    v60 = v84;
  }

  v61 = v90;
  (*(v52 + 32))(&v90[*(v50 + 28)], v56, v54);
  sub_21902450C(v61, v60);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_219023DA4(void *a1)
{
  v3 = v1;
  sub_219024570(0, &qword_280E8C468, sub_2190245D8, &type metadata for TopicMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190245D8();
  sub_219BF7B44();
  v18 = 0;
  sub_2186E3B14();
  sub_2186EC7A0(&qword_280E919D0, sub_2186E3B14);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for TopicMagazineFeedGroupKnobs();
    v17 = *(v3 + *(v10 + 20));
    v16 = 1;
    sub_218CE8E28();
    sub_219BF7834();
    v15 = *(v3 + *(v10 + 24));
    v14 = 2;
    sub_218CE8E7C();
    sub_219BF7834();
    v13 = 3;
    sub_2186F64EC(0);
    sub_2186EC7A0(&unk_280E91840, sub_2186F64EC);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219024060()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0x72685465726F6373;
  if (v1 != 6)
  {
    v3 = 0x726F635365736162;
  }

  v4 = 0x727563634F78616DLL;
  if (v1 != 4)
  {
    v4 = 0x746C754D6B6E6172;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7942726564726FLL;
  if (v1 != 2)
  {
    v5 = 0x6C6F6F706572;
  }

  if (*v0)
  {
    v2 = 0x704F7265746C6966;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_219024184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21902485C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2190241AC(uint64_t a1)
{
  v2 = sub_2190244B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190241E8(uint64_t a1)
{
  v2 = sub_2190244B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219024224()
{
  v1 = 0x73656C7572;
  v2 = 0x7942726564726FLL;
  if (*v0 != 2)
  {
    v2 = 0x6C6F6F706572;
  }

  if (*v0)
  {
    v1 = 0x704F7265746C6966;
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

uint64_t sub_2190242A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219024B0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2190242C8(uint64_t a1)
{
  v2 = sub_2190245D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219024304(uint64_t a1)
{
  v2 = sub_2190245D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219024374(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MagazineFeedServiceConfig();
  sub_2186EC7A0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TopicMagazineFeedGroupKnobs();
  if (*&aNone_15[8 * *(a1 + *(v4 + 20))] == *&aNone_15[8 * *(a2 + *(v4 + 20))])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_219BF78F4();
    swift_bridgeObjectRelease_n();
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_21908B134(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  return sub_219BEEC64();
}

unint64_t sub_2190244B8()
{
  result = qword_280EB6220;
  if (!qword_280EB6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6220);
  }

  return result;
}

uint64_t sub_21902450C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicMagazineFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219024570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2190245D8()
{
  result = qword_280EB6248;
  if (!qword_280EB6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6248);
  }

  return result;
}

unint64_t sub_219024650()
{
  result = qword_27CC152A0;
  if (!qword_27CC152A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC152A0);
  }

  return result;
}

unint64_t sub_2190246A8()
{
  result = qword_27CC152A8;
  if (!qword_27CC152A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC152A8);
  }

  return result;
}

unint64_t sub_219024700()
{
  result = qword_280EB6238;
  if (!qword_280EB6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6238);
  }

  return result;
}

unint64_t sub_219024758()
{
  result = qword_280EB6240;
  if (!qword_280EB6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6240);
  }

  return result;
}

unint64_t sub_2190247B0()
{
  result = qword_280EB6228;
  if (!qword_280EB6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6228);
  }

  return result;
}

unint64_t sub_219024808()
{
  result = qword_280EB6230;
  if (!qword_280EB6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6230);
  }

  return result;
}

uint64_t sub_21902485C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xEC0000006E6F6974 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7942726564726FLL && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746C754D6B6E6172 && a2 == 0xEE007265696C7069 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72685465726F6373 && a2 == 0xEE00646C6F687365 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065)
  {

    return 7;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_219024B0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xEC0000006E6F6974 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7942726564726FLL && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_219024C94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219025134(0, &qword_280E8C9D8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190250E0();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219024EDC(uint64_t a1)
{
  v2 = sub_2190250E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219024F18(uint64_t a1)
{
  v2 = sub_2190250E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219024F6C(void *a1)
{
  sub_219025134(0, &qword_280E8C320, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190250E0();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2190250E0()
{
  result = qword_280EA4038[0];
  if (!qword_280EA4038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA4038);
  }

  return result;
}

void sub_219025134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190250E0();
    v7 = a3(a1, &type metadata for TrendingTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2190251AC()
{
  result = qword_27CC152B0;
  if (!qword_27CC152B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC152B0);
  }

  return result;
}

unint64_t sub_219025204()
{
  result = qword_280EA4028;
  if (!qword_280EA4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4028);
  }

  return result;
}

unint64_t sub_21902525C()
{
  result = qword_280EA4030;
  if (!qword_280EA4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4030);
  }

  return result;
}

void *sub_2190252B0()
{
  v1 = v0;
  sub_2187F7854(0, &unk_280EE88F0, MEMORY[0x277D2D798]);
  MEMORY[0x28223BE20](v2 - 8);
  v214 = &v178 - v3;
  v216 = sub_219BDEFE4();
  v215 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v208 = &v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_219BDF3A4();
  v195 = *(v196 - 8);
  v5 = MEMORY[0x28223BE20](v196);
  v194 = &v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v193 = &v178 - v8;
  MEMORY[0x28223BE20](v7);
  v192 = &v178 - v9;
  sub_2187F7854(0, &qword_280EE8908, MEMORY[0x277D2D788]);
  MEMORY[0x28223BE20](v10 - 8);
  v221 = &v178 - v11;
  v213 = sub_219BDEF94();
  v218 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v207 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &unk_280EE86F0, MEMORY[0x277D2DC88]);
  MEMORY[0x28223BE20](v13 - 8);
  v219 = &v178 - v14;
  v220 = sub_219BDF654();
  v217 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v206 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &unk_280EE87F0, MEMORY[0x277D2D9E8]);
  MEMORY[0x28223BE20](v16 - 8);
  v203 = &v178 - v17;
  v212 = sub_219BDF2F4();
  v205 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v204 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  MEMORY[0x28223BE20](v19 - 8);
  v200 = &v178 - v20;
  v211 = sub_219BDF0E4();
  v210 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v202 = &v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_219BE16E4();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v185 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_219BDF584();
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v182 = &v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  MEMORY[0x28223BE20](v24 - 8);
  v197 = &v178 - v25;
  v199 = sub_219BE16D4();
  v209 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v198 = &v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_219BE14C4();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v28 = &v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_219BE3D94();
  v224 = *(v223 - 8);
  v29 = MEMORY[0x28223BE20](v223);
  v191 = (&v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v190 = (&v178 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v189 = (&v178 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v188 = (&v178 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v201 = (&v178 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v181 = (&v178 - v40);
  MEMORY[0x28223BE20](v39);
  v42 = (&v178 - v41);
  v43 = MEMORY[0x277D2F280];
  sub_2187F7854(0, &qword_280EE8008, MEMORY[0x277D2F280]);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v178 - v45;
  v47 = sub_219BE14A4();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v178 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_feedData;
  swift_beginAccess();
  v52 = v43;
  v53 = v1;
  sub_21902B860(v1 + v51, v46, &qword_280EE8008, v52);
  v54 = (*(v48 + 48))(v46, 1, v47);
  v222 = v1;
  if (v54 == 1)
  {
    sub_21902B804(v46, &qword_280EE8008, MEMORY[0x277D2F280]);
    v55 = MEMORY[0x277D84F90];
    v56 = v1;
    v57 = v223;
    v58 = v224;
  }

  else
  {
    (*(v48 + 32))(v50, v46, v47);
    sub_219BE1494();
    v59 = sub_21999E434();
    (*(v179 + 8))(v28, v180);
    v60 = sub_219BE1474();
    v62 = v61;
    v63 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_sectionData;
    swift_beginAccess();
    v64 = sub_219BDF1E4();
    v65 = (*(*(v64 - 8) + 48))(v53 + v63, 1, v64);
    v66 = 0;
    v67 = 0;
    if (!v65)
    {
      v66 = sub_219BDF1D4();
      v67 = v68;
    }

    swift_endAccess();
    *v42 = v59;
    v42[1] = v60;
    v42[2] = v62;
    v42[3] = v66;
    v42[4] = v67;
    v57 = v223;
    (*(v224 + 104))(v42, *MEMORY[0x277D34DD8], v223);
    v55 = sub_2191F999C(0, 1, 1, MEMORY[0x277D84F90]);
    v70 = v55[2];
    v69 = v55[3];
    if (v70 >= v69 >> 1)
    {
      v55 = sub_2191F999C(v69 > 1, v70 + 1, 1, v55);
    }

    v56 = v222;
    (*(v48 + 8))(v50, v47);
    v55[2] = v70 + 1;
    v58 = v224;
    (*(v224 + 32))(v55 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v70, v42, v57);
  }

  v71 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_groupData;
  swift_beginAccess();
  v72 = v197;
  sub_21902B860(v56 + v71, v197, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  v73 = v209;
  v74 = v199;
  if ((*(v209 + 48))(v72, 1, v199) == 1)
  {
    sub_21902B804(v72, &unk_280EE7FA0, MEMORY[0x277D2F590]);
    v75 = v221;
    v76 = v220;
  }

  else
  {
    v77 = v186;
    (*(v73 + 32))(v198, v72, v74);
    v78 = v182;
    sub_219BE15F4();
    v79 = sub_219BDF574();
    v81 = v80;
    (*(v183 + 8))(v78, v184);
    v82 = v185;
    sub_219BE16B4();
    v83 = sub_2190D909C();
    (*(v77 + 8))(v82, v187);
    v84 = sub_219BE16A4();
    v86 = v85;
    v87 = sub_219BE15D4();
    v88 = sub_219BE1604();
    v89 = v181;
    *v181 = v79;
    v89[1] = v81;
    v89[2] = v83;
    v89[3] = v84;
    v58 = v224;
    v89[4] = v86;
    v89[5] = v87;
    v57 = v223;
    v89[6] = v88;
    (*(v58 + 104))(v89, *MEMORY[0x277D34DE0], v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2191F999C(0, v55[2] + 1, 1, v55);
    }

    v91 = v55[2];
    v90 = v55[3];
    v56 = v222;
    v75 = v221;
    v76 = v220;
    if (v91 >= v90 >> 1)
    {
      v55 = sub_2191F999C(v90 > 1, v91 + 1, 1, v55);
    }

    (*(v209 + 8))(v198, v74);
    v55[2] = v91 + 1;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v91, v89, v57);
  }

  v92 = v219;
  v93 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_articleData;
  swift_beginAccess();
  v94 = v200;
  sub_21902B860(v56 + v93, v200, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  v95 = v210;
  v96 = v211;
  if ((*(v210 + 48))(v94, 1, v211) == 1)
  {
    sub_21902B804(v94, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
    v97 = v205;
  }

  else
  {
    (*(v95 + 32))(v202, v94, v96);
    v209 = sub_219BDF0D4();
    v200 = v98;
    v99 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_articleExposureContextData;
    swift_beginAccess();
    v100 = sub_219BE0D44();
    v101 = *(*(v100 - 8) + 48);
    v102 = 0;
    v103 = 0;
    if (!v101(v56 + v99, 1, v100))
    {
      v102 = sub_219BE0D34();
      v103 = v104;
    }

    if (v101(v56 + v99, 1, v100))
    {
      v105 = 0;
      v106 = v56;
      v107 = 0;
    }

    else
    {
      v105 = sub_219BE0D24();
      v106 = v56;
      v107 = v108;
    }

    if (v101(v106 + v99, 1, v100))
    {
      swift_endAccess();
      v109 = MEMORY[0x277D84F90];
    }

    else
    {
      v110 = sub_219BE0D04();
      swift_endAccess();
      v109 = MEMORY[0x277D84F90];
      if (v110)
      {
        v109 = v110;
      }
    }

    v75 = v221;
    v97 = v205;
    v111 = v210;
    v112 = v201;
    v113 = v200;
    *v201 = v209;
    v112[1] = v113;
    v112[2] = v102;
    v112[3] = v103;
    v112[4] = v105;
    v112[5] = v107;
    v112[6] = v109;
    v58 = v224;
    v57 = v223;
    (*(v224 + 104))();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2191F999C(0, v55[2] + 1, 1, v55);
    }

    v56 = v222;
    v76 = v220;
    v115 = v55[2];
    v114 = v55[3];
    if (v115 >= v114 >> 1)
    {
      v55 = sub_2191F999C(v114 > 1, v115 + 1, 1, v55);
    }

    (*(v111 + 8))(v202, v211);
    v55[2] = v115 + 1;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v115, v201, v57);
    v92 = v219;
  }

  v116 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_campaignData;
  swift_beginAccess();
  v117 = v203;
  sub_21902B860(v56 + v116, v203, &unk_280EE87F0, MEMORY[0x277D2D9E8]);
  v118 = v212;
  if ((*(v97 + 48))(v117, 1, v212) == 1)
  {
    sub_21902B804(v117, &unk_280EE87F0, MEMORY[0x277D2D9E8]);
  }

  else
  {
    (*(v97 + 32))(v204, v117, v118);
    v119 = sub_219BDF2C4();
    v121 = v120;
    v122 = sub_219BDF2E4();
    v124 = v123;
    v125 = sub_219BDF2D4();
    v126 = v188;
    *v188 = v119;
    v126[1] = v121;
    v126[2] = v122;
    v126[3] = v124;
    v58 = v224;
    v126[4] = v125;
    v126[5] = v127;
    (*(v58 + 104))(v126, *MEMORY[0x277D34E08], v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2191F999C(0, v55[2] + 1, 1, v55);
    }

    v129 = v55[2];
    v128 = v55[3];
    v75 = v221;
    v76 = v220;
    if (v129 >= v128 >> 1)
    {
      v55 = sub_2191F999C(v128 > 1, v129 + 1, 1, v55);
    }

    (*(v97 + 8))(v204, v212);
    v55[2] = v129 + 1;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v129, v126, v57);
    v92 = v219;
  }

  v130 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_adReferralData;
  swift_beginAccess();
  sub_21902B860(v56 + v130, v92, &unk_280EE86F0, MEMORY[0x277D2DC88]);
  v131 = v92;
  v132 = v217;
  v133 = (*(v217 + 48))(v131, 1, v76);
  v134 = v215;
  if (v133 == 1)
  {
    sub_21902B804(v131, &unk_280EE86F0, MEMORY[0x277D2DC88]);
  }

  else
  {
    (*(v132 + 32))(v206, v131, v76);
    v135 = sub_219BDF644();
    v136 = v189;
    *v189 = v135;
    v136[1] = v137;
    *(v136 + 16) = 1;
    (*(v58 + 104))(v136, *MEMORY[0x277D34DD0], v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2191F999C(0, v55[2] + 1, 1, v55);
    }

    v139 = v55[2];
    v138 = v55[3];
    v140 = v217;
    if (v139 >= v138 >> 1)
    {
      v176 = sub_2191F999C(v138 > 1, v139 + 1, 1, v55);
      v140 = v217;
      v55 = v176;
    }

    (*(v140 + 8))(v206, v76);
    v55[2] = v139 + 1;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v139, v136, v57);
  }

  v141 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_puzzleData;
  swift_beginAccess();
  sub_21902B860(v56 + v141, v75, &qword_280EE8908, MEMORY[0x277D2D788]);
  v142 = v218;
  v143 = v213;
  v144 = (*(v218 + 48))(v75, 1, v213);
  v145 = v214;
  if (v144 == 1)
  {
    sub_21902B804(v75, &qword_280EE8908, MEMORY[0x277D2D788]);
  }

  else
  {
    (*(v142 + 32))(v207, v75, v143);
    v221 = sub_219BDEF84();
    v220 = v146;
    v219 = sub_219BDEF54();
    v217 = v147;
    v148 = v192;
    sub_219BDEF44();
    LODWORD(v212) = sub_219BDF384();
    v149 = *(v195 + 8);
    v150 = v196;
    v149(v148, v196);
    v151 = v193;
    sub_219BDEF44();
    v211 = sub_219BDF394();
    v153 = v152;
    v149(v151, v150);
    v154 = v194;
    sub_219BDEF44();
    v155 = sub_219BDF364();
    LOBYTE(v151) = v156;
    v157 = v150;
    v57 = v223;
    v149(v154, v157);
    LOBYTE(v149) = sub_219BDEF64();
    v58 = v224;
    v158 = sub_219BDEF34();
    v228 = v153 & 1;
    v227 = v151 & 1;
    v159 = v149 & 1;
    v160 = v190;
    *v190 = v221;
    v160[1] = v220;
    v160[2] = v219;
    v160[3] = v217;
    *(v160 + 8) = v212;
    v160[5] = v211;
    *(v160 + 48) = v153 & 1;
    *(v160 + 49) = v229[0];
    *(v160 + 13) = *(v229 + 3);
    v160[7] = v155;
    *(v160 + 64) = v151 & 1;
    *(v160 + 65) = v159;
    *(v160 + 66) = v225;
    *(v160 + 35) = v226;
    v160[9] = v158;
    (*(v58 + 104))(v160, *MEMORY[0x277D34DE8], v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2191F999C(0, v55[2] + 1, 1, v55);
    }

    v162 = v55[2];
    v161 = v55[3];
    v134 = v215;
    v145 = v214;
    v56 = v222;
    v163 = v218;
    if (v162 >= v161 >> 1)
    {
      v177 = sub_2191F999C(v161 > 1, v162 + 1, 1, v55);
      v163 = v218;
      v55 = v177;
    }

    (*(v163 + 8))(v207, v213);
    v55[2] = v162 + 1;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v162, v160, v57);
  }

  v164 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_recipeData;
  swift_beginAccess();
  sub_21902B860(v56 + v164, v145, &unk_280EE88F0, MEMORY[0x277D2D798]);
  v165 = v216;
  if ((*(v134 + 48))(v145, 1, v216) == 1)
  {
    sub_21902B804(v145, &unk_280EE88F0, MEMORY[0x277D2D798]);
  }

  else
  {
    (*(v134 + 32))(v208, v145, v165);
    v166 = sub_219BDEFC4();
    v168 = v167;
    v169 = sub_219BDEFA4();
    v170 = sub_219BDEFD4();
    v171 = v191;
    *v191 = v166;
    v171[1] = v168;
    *(v171 + 16) = v169 & 1;
    v171[3] = v170;
    v171[4] = v172;
    (*(v58 + 104))(v171, *MEMORY[0x277D34DF0], v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2191F999C(0, v55[2] + 1, 1, v55);
    }

    v174 = v55[2];
    v173 = v55[3];
    if (v174 >= v173 >> 1)
    {
      v55 = sub_2191F999C(v173 > 1, v174 + 1, 1, v55);
    }

    (*(v134 + 8))(v208, v216);
    v55[2] = v174 + 1;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v174, v171, v57);
  }

  return v55;
}

uint64_t sub_219026ED0(void (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v141 = a5;
  v142 = a6;
  v147 = a3;
  v148 = a4;
  v8 = sub_219BE0484();
  v144 = *(v8 - 8);
  v145 = v8;
  MEMORY[0x28223BE20](v8);
  v143 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_219BE4034();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &unk_280EE8200, MEMORY[0x277D2EB90]);
  MEMORY[0x28223BE20](v11 - 8);
  v134 = &v101 - v12;
  v137 = sub_219BDF184();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDF194();
  v152 = *(v14 - 8);
  v153 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v133 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v151 = &v101 - v17;
  v132 = sub_219BE02A4();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_219BDF3C4();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BDF3D4();
  v155 = *(v20 - 8);
  v156 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v126 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v150 = &v101 - v23;
  v111 = sub_219BDF074();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BDBD64();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BE1524();
  v149 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v107 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BE1544();
  v106 = *(v108 - 8);
  v27 = MEMORY[0x28223BE20](v108);
  v101 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v103 = &v101 - v29;
  v125 = MEMORY[0x277D2F398];
  sub_2187F7854(0, &unk_280EE7FD0, MEMORY[0x277D2F398]);
  MEMORY[0x28223BE20](v30 - 8);
  v124 = &v101 - v31;
  v157 = MEMORY[0x277D2D798];
  sub_2187F7854(0, &unk_280EE88F0, MEMORY[0x277D2D798]);
  MEMORY[0x28223BE20](v32 - 8);
  v123 = &v101 - v33;
  v154 = MEMORY[0x277D2D788];
  sub_2187F7854(0, &qword_280EE8908, MEMORY[0x277D2D788]);
  MEMORY[0x28223BE20](v34 - 8);
  v122 = &v101 - v35;
  v121 = MEMORY[0x277D2D8B8];
  sub_2187F7854(0, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  MEMORY[0x28223BE20](v36 - 8);
  v120 = &v101 - v37;
  v119 = MEMORY[0x277D2DC88];
  sub_2187F7854(0, &unk_280EE86F0, MEMORY[0x277D2DC88]);
  MEMORY[0x28223BE20](v38 - 8);
  v118 = &v101 - v39;
  v117 = MEMORY[0x277D2D9E8];
  sub_2187F7854(0, &unk_280EE87F0, MEMORY[0x277D2D9E8]);
  MEMORY[0x28223BE20](v40 - 8);
  v116 = &v101 - v41;
  v115 = MEMORY[0x277D2ECA0];
  sub_2187F7854(0, &qword_280EE8188, MEMORY[0x277D2ECA0]);
  MEMORY[0x28223BE20](v42 - 8);
  v114 = &v101 - v43;
  v113 = MEMORY[0x277D2D8A8];
  sub_2187F7854(0, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v101 - v45;
  v112 = MEMORY[0x277D2D970];
  sub_2187F7854(0, &unk_280EE8830, MEMORY[0x277D2D970]);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v101 - v48;
  v50 = MEMORY[0x277D2F590];
  sub_2187F7854(0, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v101 - v52;
  v54 = MEMORY[0x277D2F280];
  sub_2187F7854(0, &qword_280EE8008, MEMORY[0x277D2F280]);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v101 - v56;
  sub_219BE14A4();
  sub_21902BB54(&qword_280EE8010, MEMORY[0x277D2F280]);
  sub_219BDCCB4();
  v58 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_feedData;
  swift_beginAccess();
  sub_21902BAE8(v57, a2 + v58, &qword_280EE8008, v54);
  swift_endAccess();
  sub_219BE16D4();
  sub_21902BB54(&unk_280EE7FB0, MEMORY[0x277D2F590]);
  sub_219BDCCB4();
  v59 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_groupData;
  swift_beginAccess();
  sub_21902BAE8(v53, a2 + v59, &unk_280EE7FA0, v50);
  swift_endAccess();
  sub_219BDF1E4();
  sub_21902BB54(&unk_280EE8840, MEMORY[0x277D2D970]);
  sub_219BDCCB4();
  v60 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_sectionData;
  swift_beginAccess();
  v61 = v146;
  sub_21902BAE8(v49, a2 + v60, &unk_280EE8830, v112);
  swift_endAccess();
  sub_219BDF0E4();
  sub_21902BB54(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  sub_219BDCCB4();
  v62 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_articleData;
  swift_beginAccess();
  sub_21902BAE8(v46, a2 + v62, &unk_280EE88A0, v113);
  swift_endAccess();
  sub_219BE0D44();
  sub_21902BB54(&qword_280EE8190, MEMORY[0x277D2ECA0]);
  v63 = v114;
  sub_219BDCCB4();
  v64 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_articleExposureContextData;
  swift_beginAccess();
  sub_21902BAE8(v63, a2 + v64, &qword_280EE8188, v115);
  swift_endAccess();
  sub_219BDF2F4();
  sub_21902BB54(&qword_280EE8800, MEMORY[0x277D2D9E8]);
  v65 = v116;
  sub_219BDCCB4();
  v66 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_campaignData;
  swift_beginAccess();
  sub_21902BAE8(v65, a2 + v66, &unk_280EE87F0, v117);
  swift_endAccess();
  sub_219BDF654();
  sub_21902BB54(&qword_280EE8700, MEMORY[0x277D2DC88]);
  v67 = v118;
  sub_219BDCCB4();
  v68 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_adReferralData;
  swift_beginAccess();
  sub_21902BAE8(v67, a2 + v68, &unk_280EE86F0, v119);
  swift_endAccess();
  sub_219BDF104();
  sub_21902BB54(&unk_280EE8890, MEMORY[0x277D2D8B8]);
  v69 = v120;
  sub_219BDCCB4();
  v70 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_channelData;
  swift_beginAccess();
  sub_21902BAE8(v69, a2 + v70, &unk_280EE8878, v121);
  swift_endAccess();
  sub_219BDEF94();
  sub_21902BB54(&qword_280EE8910, MEMORY[0x277D2D788]);
  v71 = v122;
  sub_219BDCCB4();
  v72 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_puzzleData;
  swift_beginAccess();
  sub_21902BAE8(v71, a2 + v72, &qword_280EE8908, v154);
  swift_endAccess();
  sub_219BDEFE4();
  sub_21902BB54(&qword_280EE8900, MEMORY[0x277D2D798]);
  v73 = v123;
  sub_219BDCCB4();
  v74 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_recipeData;
  swift_beginAccess();
  v154 = a2;
  sub_21902BAE8(v73, a2 + v74, &unk_280EE88F0, v157);
  swift_endAccess();
  sub_21902BB54(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v75 = v124;
  v157 = a1;
  sub_219BDCCB4();
  LODWORD(v60) = (*(v149 + 6))(v75, 1, v61);
  sub_21902B804(v75, &unk_280EE7FD0, v125);
  if (v60 == 1)
  {
    v76 = v103;
    sub_2190286F4(v147, v103);
    v77 = v102;
    sub_219BDBD54();
    sub_219BDBD44();
    (*(v104 + 8))(v77, v105);
    v78 = v106;
    v79 = v108;
    (*(v106 + 16))(v101, v76, v108);
    (*(v110 + 104))(v109, *MEMORY[0x277D2D850], v111);
    v80 = v107;
    sub_219BE1514();
    v81 = v146;
    sub_219BDCCC4();
    (*(v149 + 1))(v80, v81);
    (*(v78 + 8))(v76, v79);
  }

  v82 = sub_219BE3D04();
  if (v82 > 5)
  {
    v83 = MEMORY[0x277D2DA58];
  }

  else
  {
    v83 = qword_2782428D0[v82];
  }

  v84 = v138;
  v85 = v150;
  (*(v155 + 104))(v150, *v83, v156);
  v86 = sub_219BE3CF4();
  if (v86)
  {
    if (*(v86 + 16))
    {
    }
  }

  (*(v155 + 16))(v126, v85, v156);
  v87 = v127;
  sub_219BDF3B4();
  sub_21902BB54(&qword_280EE87E0, MEMORY[0x277D2DA30]);
  v149 = "alData";
  v88 = v129;
  sub_219BDCCC4();
  (*(v128 + 8))(v87, v88);
  v89 = sub_219BE3CF4();
  if (v89)
  {
    v90 = v89;
    MEMORY[0x28223BE20](v89);
    *(&v101 - 2) = v85;
    sub_218F8FC08(sub_21902BB9C, (&v101 - 4), v90);
  }

  v91 = v130;
  sub_219BE0294();
  sub_21902BB54(&qword_280EE8448, MEMORY[0x277D2E440]);
  v92 = v132;
  sub_219BDCCC4();
  (*(v131 + 8))(v91, v92);
  v93 = v151;
  sub_2198A99E8(v151);
  (*(v152 + 16))(v133, v93, v153);
  sub_219BE3CE4();
  sub_219BE4024();
  v94 = *(v139 + 8);
  v95 = v140;
  v94(v84, v140);
  sub_219BE0BB4();
  v96 = v135;
  sub_219BDF174();
  sub_21902BB54(&qword_280EE8860, MEMORY[0x277D2D928]);
  v97 = v137;
  sub_219BDCCC4();
  (*(v136 + 8))(v96, v97);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_219BE3CE4();
    sub_219BE4564();
    swift_unknownObjectRelease();
    v94(v84, v95);
  }

  v98 = v143;
  sub_219BE0474();
  sub_21902BB54(&unk_280EE83F0, MEMORY[0x277D2E550]);
  v99 = v145;
  sub_219BDCCC4();
  (*(v144 + 8))(v98, v99);
  (*(v152 + 8))(v151, v153);
  return (*(v155 + 8))(v150, v156);
}

uint64_t sub_2190286F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE4574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D351D0])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277D35188])
  {
LABEL_4:
    v9 = MEMORY[0x277D2F3E0];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D35190])
  {
LABEL_6:
    v9 = MEMORY[0x277D2F3B8];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D35168])
  {
    goto LABEL_4;
  }

  if (v8 == *MEMORY[0x277D351A0])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277D35170])
  {
    goto LABEL_4;
  }

  if (v8 == *MEMORY[0x277D351E0])
  {
    goto LABEL_6;
  }

  if (v8 == *MEMORY[0x277D351B8])
  {
    goto LABEL_4;
  }

  if (v8 == *MEMORY[0x277D351B0] || v8 == *MEMORY[0x277D35178])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277D35180])
  {
    goto LABEL_6;
  }

  if (v8 == *MEMORY[0x277D351A8])
  {
LABEL_2:
    v9 = MEMORY[0x277D2F3F0];
LABEL_7:
    v10 = *v9;
    v11 = sub_219BE1544();
    v12 = *(*(v11 - 8) + 104);
    v13 = a2;
    v14 = v10;
    return v12(v13, v14, v11);
  }

  if (v8 == *MEMORY[0x277D351F0])
  {
    goto LABEL_6;
  }

  if (v8 == *MEMORY[0x277D351E8])
  {
    v9 = MEMORY[0x277D2F3B0];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D351C0])
  {
    v9 = MEMORY[0x277D2F3C8];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D35198] || v8 == *MEMORY[0x277D351D8])
  {
    goto LABEL_6;
  }

  v17 = *MEMORY[0x277D351C8];
  v18 = v8;
  v11 = sub_219BE1544();
  v12 = *(*(v11 - 8) + 104);
  if (v18 != v17)
  {
    v12(a2, *MEMORY[0x277D2F3F0], v11);
    return (*(v5 + 8))(v7, v4);
  }

  v14 = *MEMORY[0x277D2F3D0];
  v13 = a2;
  return v12(v13, v14, v11);
}

uint64_t sub_219028A34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_219BDF3D4();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);

  sub_219BDF3B4();
  v7 = sub_219BDF3C4();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t sub_219028B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v5 = MEMORY[0x277D2D8B8];
  sub_2187F7854(0, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_219BDF104();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_channelData;
  swift_beginAccess();
  sub_21902B860(a2 + v13, v8, &unk_280EE8878, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21902B804(v8, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_21902BB54(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    sub_219BDCCC4();
    (*(v10 + 8))(v12, v9);
  }

  sub_219BE06E4();
  sub_21902BB54(&qword_280EE8340, MEMORY[0x277D2E708]);
  sub_219BDCC64();
  return sub_219BDCC74();
}

uint64_t sub_219028E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a3;
  v4 = sub_219BE1594();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF014();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BDF004();
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE43E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D2D8B8];
  sub_2187F7854(0, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = sub_219BDF104();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_channelData;
  swift_beginAccess();
  sub_21902B860(a2 + v21, v16, &unk_280EE8878, v13);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_21902B804(v16, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    sub_21902BB54(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    sub_219BDCCC4();
    (*(v18 + 8))(v20, v17);
  }

  (*(v10 + 16))(v12, v41, v9);
  v22 = (*(v10 + 88))(v12, v9);
  if (v22 == *MEMORY[0x277D35090])
  {
    (*(v10 + 96))(v12, v9);
    v23 = *(v36 + 104);
    v24 = (v34 + 8);
    if (*v12 == 1)
    {
      v23(v35, *MEMORY[0x277D2D7C0], v37);
    }

    else
    {
      v23(v35, *MEMORY[0x277D2D7B0], v37);
    }

    v25 = v38;
    sub_219BDEFF4();
    sub_21902BB54(&qword_27CC152C8, MEMORY[0x277D2D7A8]);
    v28 = v39;
    sub_219BDCCC4();
    (*v24)(v25, v28);
  }

  else if (v22 == *MEMORY[0x277D35088])
  {
    (*(v10 + 96))(v12, v9);
    v26 = v31;
    sub_219BE1584();
    sub_21902BB54(&qword_280EE7FC0, MEMORY[0x277D2F440]);
    v27 = v33;
    sub_219BDCCC4();
    (*(v32 + 8))(v26, v27);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  sub_219BE1344();
  sub_21902BB54(&qword_27CC152C0, MEMORY[0x277D2F1C8]);
  memset(v42, 0, sizeof(v42));
  sub_219BDCCE4();
  return sub_218806FD0(v42);
}

uint64_t sub_219029578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a4;
  v71 = a3;
  v56 = a1;
  v54 = sub_219BE0484();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &qword_280EE6318, MEMORY[0x277D350F8]);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v51 - v7;
  sub_2187F7854(0, &qword_280EE8198, MEMORY[0x277D2EC90]);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v51 - v9;
  v10 = sub_219BE3E04();
  MEMORY[0x28223BE20](v10 - 8);
  v64 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE0AC4();
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE0EA4();
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x28223BE20](v14);
  v65 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDF3D4();
  v58 = *(v16 - 8);
  v59 = v16;
  MEMORY[0x28223BE20](v16);
  v57 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDF3C4();
  v61 = *(v18 - 8);
  v62 = v18;
  MEMORY[0x28223BE20](v18);
  v60 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &qword_280EE8908, MEMORY[0x277D2D788]);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v51 - v21;
  v23 = sub_219BDEF94();
  v55 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v51 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x277D2D8B8];
  sub_2187F7854(0, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v51 - v27;
  v29 = sub_219BDF104();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_channelData;
  swift_beginAccess();
  sub_21902B860(a2 + v33, v28, &unk_280EE8878, v25);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_21902B804(v28, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  }

  else
  {
    (*(v30 + 32))(v32, v28, v29);
    sub_21902BB54(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    sub_219BDCCC4();
    (*(v30 + 8))(v32, v29);
  }

  v34 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_puzzleData;
  swift_beginAccess();
  sub_21902B860(a2 + v34, v22, &qword_280EE8908, MEMORY[0x277D2D788]);
  v35 = v55;
  if ((*(v55 + 48))(v22, 1, v23) == 1)
  {
    sub_21902B804(v22, &qword_280EE8908, MEMORY[0x277D2D788]);
  }

  else
  {
    v36 = v51;
    (*(v35 + 32))(v51, v22, v23);
    sub_21902BB54(&qword_280EE8910, MEMORY[0x277D2D788]);
    sub_219BDCCC4();
    (*(v35 + 8))(v36, v23);
  }

  sub_219BE41B4();
  if (!v37)
  {
    v38 = sub_219BE3CF4();
    if (v38)
    {
      if (*(v38 + 16))
      {
      }
    }
  }

  v39 = sub_219BE3D04();
  if (v39 > 5)
  {
    v40 = MEMORY[0x277D2DA58];
  }

  else
  {
    v40 = qword_2782428D0[v39];
  }

  (*(v58 + 104))(v57, *v40, v59);
  v41 = v60;
  sub_219BDF3B4();
  sub_21902BB54(&qword_280EE87E0, MEMORY[0x277D2DA30]);
  v42 = v62;
  sub_219BDCCC4();
  (*(v61 + 8))(v41, v42);
  v43 = v64;
  sub_219BE3D14();
  sub_219029FF8(v43, v63);
  v44 = v69;
  sub_219BE41D4();
  sub_21902A2CC(v44, v68);
  v45 = v65;
  sub_219BE0E94();
  sub_21902BB54(&qword_280EE8170, MEMORY[0x277D2EDA0]);
  v46 = v67;
  sub_219BDCCC4();
  (*(v66 + 8))(v45, v46);
  result = sub_219BE41C4();
  if (v48)
  {
    v49 = v52;
    sub_219BE0474();
    sub_21902BB54(&unk_280EE83F0, MEMORY[0x277D2E550]);
    v50 = v54;
    sub_219BDCCC4();
    return (*(v53 + 8))(v49, v50);
  }

  return result;
}

uint64_t sub_219029FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE3E04();
  v17 = *(v4 - 8);
  v5 = (*(v17 + 88))(a1, v4);
  if (v5 == *MEMORY[0x277D34E40])
  {
    (*(v17 + 8))(a1, v4);
    v6 = MEMORY[0x277D2EA90];
LABEL_17:
    v7 = *v6;
    v8 = sub_219BE0AC4();
    v9 = *(*(v8 - 8) + 104);
    v10 = v8;
    v11 = a2;
    v12 = v7;
LABEL_18:

    return v9(v11, v12, v10);
  }

  if (v5 == *MEMORY[0x277D34E70])
  {
    (*(v17 + 8))(a1, v4);
    v6 = MEMORY[0x277D2EAD0];
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x277D34E68])
  {
    v6 = MEMORY[0x277D2EAC8];
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x277D34E78])
  {
    v6 = MEMORY[0x277D2EAE0];
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x277D34E48])
  {
    v6 = MEMORY[0x277D2EAA0];
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x277D34E80])
  {
    v6 = MEMORY[0x277D2EAE8];
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x277D34E58])
  {
    v6 = MEMORY[0x277D2EAB8];
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x277D34E50])
  {
    v6 = MEMORY[0x277D2EAA8];
    goto LABEL_17;
  }

  v14 = *MEMORY[0x277D34E60];
  v15 = v5;
  v10 = sub_219BE0AC4();
  v9 = *(*(v10 - 8) + 104);
  if (v15 == v14)
  {
    v12 = *MEMORY[0x277D2EAC0];
    v11 = a2;
    goto LABEL_18;
  }

  v9(a2, *MEMORY[0x277D2EAD8], v10);
  v16 = *(v17 + 8);

  return v16(a1, v4);
}

uint64_t sub_21902A2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE44D4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = sub_219BE0CF4();
  v22 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v5 + 48))(a1, 1, v4) != 1)
  {
    (*(v5 + 32))(v10, a1, v4);
    (*(v5 + 16))(v8, v10, v4);
    v16 = (*(v5 + 88))(v8, v4);
    if (v16 == *MEMORY[0x277D350E8])
    {
      v17 = *MEMORY[0x277D2EC88];
      v18 = v22;
    }

    else
    {
      if (v16 == *MEMORY[0x277D350E0])
      {
        v19 = MEMORY[0x277D2EC78];
      }

      else
      {
        if (v16 != *MEMORY[0x277D350F0])
        {
          v20 = *(v22 + 104);
          if (v16 != *MEMORY[0x277D350D8])
          {
            v20(v13, *MEMORY[0x277D2EC88], v11);
            (*(v5 + 8))(v8, v4);
            goto LABEL_14;
          }

          v17 = *MEMORY[0x277D2EC70];
LABEL_13:
          v20(v13, v17, v11);
LABEL_14:
          (*(v5 + 8))(v10, v4);
          (*(v22 + 32))(a2, v13, v11);
          return (*(v22 + 56))(a2, 0, 1, v11);
        }

        v19 = MEMORY[0x277D2EC80];
      }

      v17 = *v19;
      v18 = v22;
    }

    v20 = *(v18 + 104);
    goto LABEL_13;
  }

  sub_21902B804(a1, &qword_280EE6318, MEMORY[0x277D350F8]);
  v14 = *(v22 + 56);

  return v14(a2, 1, 1, v11);
}

uint64_t sub_21902A664(uint64_t a1)
{
  v18[1] = a1;
  sub_2187F7854(0, &qword_280EE6318, MEMORY[0x277D350F8]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  sub_2187F7854(0, &qword_280EE8198, MEMORY[0x277D2EC90]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_219BE3E04();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE0AC4();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE0EA4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3D14();
  sub_219029FF8(v9, v12);
  sub_219BE41D4();
  sub_21902A2CC(v3, v6);
  sub_219BE0E94();
  sub_21902BB54(&qword_280EE8170, MEMORY[0x277D2EDA0]);
  sub_219BDD1F4();
  (*(v14 + 8))(v16, v13);
  sub_219BE0AD4();
  sub_21902BB54(&qword_27CC152B8, MEMORY[0x277D2EAF8]);
  return sub_219BDD234();
}

uint64_t sub_21902A98C()
{
  v0 = sub_219BE0C94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE0C84();
  sub_21902BB54(&unk_280EE81B0, MEMORY[0x277D2EC30]);
  sub_219BDCCC4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21902AACC()
{

  sub_218774F78(v0 + 24);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_feedData, &qword_280EE8008, MEMORY[0x277D2F280]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_channelData, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_groupData, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_sectionData, &unk_280EE8830, MEMORY[0x277D2D970]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_articleData, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_articleExposureContextData, &qword_280EE8188, MEMORY[0x277D2ECA0]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_campaignData, &unk_280EE87F0, MEMORY[0x277D2D9E8]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_adReferralData, &unk_280EE86F0, MEMORY[0x277D2DC88]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_puzzleData, &qword_280EE8908, MEMORY[0x277D2D788]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_recipeData, &unk_280EE88F0, MEMORY[0x277D2D798]);
  return v0;
}

uint64_t sub_21902ACAC()
{
  sub_21902AACC();

  return swift_deallocClassInstance();
}

uint64_t sub_21902AD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v26 = a1;
  v27 = a2;
  v5 = sub_219BE3D34();
  v21 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v22 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE4574();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  sub_219BE06E4();
  sub_21902BB54(&qword_280EE8340, MEMORY[0x277D2E708]);
  sub_219BDD214();
  v23 = *(v12 + 16);
  (*(v9 + 16))(v11, v24, v8);
  v13 = v22;
  (*(v6 + 16))(v22, v25, v5);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = (v10 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  (*(v9 + 32))(v16 + v14, v11, v8);
  (*(v6 + 32))(v16 + v15, v13, v21);
  v17 = (v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v27;
  *v17 = v26;
  v17[1] = v18;

  sub_219BDD154();
}

uint64_t sub_21902AFE4()
{
  sub_219BE06E4();
  sub_21902BB54(&qword_280EE8340, MEMORY[0x277D2E708]);
  return sub_219BDD234();
}

uint64_t sub_21902B064(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = *v2;
  v12 = *(v5 + 16);
  v12(&v19 - v9, a1, v4);
  v12(v8, v20, v4);
  v13 = *(v5 + 80);
  v14 = (v13 + 24) & ~v13;
  v15 = (v6 + v13 + v14) & ~v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  v17 = *(v5 + 32);
  v17(v16 + v14, v10, v4);
  v17(v16 + v15, v8, v4);

  sub_219BDD154();
}

uint64_t sub_21902B21C(uint64_t a1)
{
  v3 = sub_219BE43E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_219BDD154();
}

uint64_t sub_21902B36C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v17 = a1;
  v18 = sub_219BE3D34();
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = sub_219BE41E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_219BE10E4();
  sub_21902BB54(&qword_280EE8110, MEMORY[0x277D2EF18]);
  sub_219BDD214();
  v16 = *(v9 + 16);
  (*(v6 + 16))(v8, v17, v5);
  v10 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v18;
  (*(v3 + 16))(v10, v19, v18);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = (v7 + *(v3 + 80) + v12) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  (*(v6 + 32))(v14 + v12, v8, v5);
  (*(v3 + 32))(v14 + v13, v10, v11);

  sub_219BDD154();
}

uint64_t sub_21902B5F4()
{
  sub_219BE10E4();
  sub_21902BB54(&qword_280EE8110, MEMORY[0x277D2EF18]);
  return sub_219BDD234();
}

uint64_t sub_21902B698(uint64_t result)
{
  if (result)
  {
    *(swift_allocObject() + 16) = result;

    sub_219BDD154();
  }

  return result;
}

uint64_t sub_21902B72C(uint64_t a1)
{
  v3 = *(sub_219BE41E4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BE3D34() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_219029578(a1, v7, v1 + v4, v8);
}

uint64_t sub_21902B804(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2187F7854(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21902B860(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2187F7854(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21902B8CC(uint64_t a1)
{
  v3 = *(sub_219BE43E4() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_219028E2C(a1, v4, v5);
}

uint64_t sub_21902B940(uint64_t a1)
{
  v3 = *(sub_219BDBD34() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_219028B68(a1, v6, v1 + v5, v7);
}

uint64_t sub_21902B9E0(void (*a1)(uint64_t))
{
  v3 = *(sub_219BE4574() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BE3D34() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_219026ED0(a1, v8, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_21902BAE8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2187F7854(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_21902BB54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21902BBD4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v57 = a3;
  v58 = a2;
  sub_21902C6F0(0, &qword_27CC152D8, MEMORY[0x277D6DF88]);
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v45 - v5;
  v48 = type metadata accessor for SearchMoreFeedGapLocation(0);
  MEMORY[0x28223BE20](v48);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BF0BD4();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F935EC();
  v12 = v11;
  v59 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchMoreFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21902C624();
  MEMORY[0x28223BE20](v18 - 8);
  sub_21902C6F0(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  v61 = v19;
  v53 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_21902C5DC(&unk_27CC1E150, sub_218F935EC);
  v23 = sub_21902C5DC(&qword_27CC152E0, sub_218F935EC);
  v60 = v12;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v12, v22, v23);
  v24 = type metadata accessor for SearchMoreSectionDescriptor();
  v25 = type metadata accessor for SearchMoreModel(0);
  v26 = sub_21902C5DC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
  v27 = sub_21902C5DC(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
  v51 = v25;
  v52 = v24;
  v49 = v27;
  v50 = v26;
  sub_219BEB2D4();
  v28 = v3[2];
  if ((v28 >> 61) <= 2 && v28 >> 61 != 1)
  {
    sub_218A5C5A8();
    v29 = swift_projectBox();
    sub_218965054(v29, v17);
    __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
    type metadata accessor for SearchMoreFeedServiceConfig();
    sub_21902C5DC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);

    sub_219BEE7A4();
    sub_219A972C0(v17, v10, v14);
    (*(v46 + 8))(v10, v47);
    sub_219BEB1E4();

    (*(v59 + 8))(v14, v60);
    sub_21902C880(v17, type metadata accessor for SearchMoreFeedGroup);
  }

  type metadata accessor for SearchMoreFeedServiceConfig();
  v30 = sub_21902C5DC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
  sub_219BEF3D4();
  sub_218A5CB84(v28, &v62);
  v31 = v62;
  v32 = v63;
  if ((sub_219BEF394() & 1) == 0)
  {
    v37 = swift_allocObject();
    sub_21902C7E4(0, &unk_27CC1E160, MEMORY[0x277D32188]);
    swift_allocObject();
    v47 = v30;
    v34 = v21;
    v35 = v31;

    *(v37 + 16) = sub_219BEE874();
    *v7 = v37;
    v36 = MEMORY[0x277D33090];
    goto LABEL_8;
  }

  if (sub_219BEE854())
  {
    v33 = swift_allocObject();
    sub_21902C7E4(0, &unk_27CC1E160, MEMORY[0x277D32188]);
    swift_allocObject();
    v47 = v30;
    v34 = v21;
    v35 = v31;

    *(v33 + 16) = sub_219BEE874();
    *v7 = v33;
    v36 = MEMORY[0x277D33068];
LABEL_8:
    v38 = *v36;
    sub_21902C7E4(0, &qword_27CC20A10, MEMORY[0x277D33098]);
    (*(*(v39 - 8) + 104))(v7, v38, v39);
    swift_storeEnumTagMultiPayload();
    v62 = v35;
    v21 = v34;
    LOBYTE(v63) = v32;
    sub_2192FDB8C(v7, &v62, v14);
    sub_21902C880(v7, type metadata accessor for SearchMoreFeedGapLocation);
    v40 = v61;
    sub_219BEB1E4();
    (*(v59 + 8))(v14, v60);
    goto LABEL_10;
  }

  v40 = v61;
LABEL_10:
  sub_219BEEFF4();

  sub_219BEEFE4();
  v41 = sub_219BEEFC4();

  v42 = 0;
  if (v41)
  {
    v42 = sub_219BEDC74();
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v62 = v41;
  v65 = v42;
  sub_219BEB2C4();

  v43 = v54;
  sub_219BE85C4();
  v58(v43);

  (*(v55 + 8))(v43, v56);
  return (*(v53 + 8))(v21, v40);
}

uint64_t sub_21902C4B8(uint64_t a1)
{
  v2 = sub_218F9FA8C();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21902C4F8()
{
  result = qword_27CC152D0;
  if (!qword_27CC152D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC152D0);
  }

  return result;
}

uint64_t sub_21902C5DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21902C624()
{
  if (!qword_27CC1E140)
  {
    sub_218F935EC();
    sub_21902C5DC(&unk_27CC1E150, sub_218F935EC);
    sub_21902C5DC(&qword_27CC152E0, sub_218F935EC);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E140);
    }
  }
}

void sub_21902C6F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchMoreSectionDescriptor();
    v8[1] = type metadata accessor for SearchMoreModel(255);
    v8[2] = sub_21902C5DC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    v8[3] = sub_21902C5DC(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21902C7E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchMoreFeedServiceConfig();
    v7 = sub_21902C5DC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21902C880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21902C8E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = sub_219BF5474();
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8B18(0, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides();
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TodayFeedGroupClusteringKnobOverrides();
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 possiblyUnfetchedAppConfiguration];
  if ([v17 respondsToSelector_])
  {
    v61 = v11;
    v18 = [v17 todayFeedGroupClusteringKnobOverrides];
    swift_unknownObjectRelease();
    if (v18)
    {
      v59 = v13;
      v60 = v10;
      v64 = a2;
      v65 = v16;
      v63 = a3;
      sub_219BF5214();

      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v19 = qword_280F616D8;
      sub_2186F20D4();
      v20 = swift_allocObject();
      v58 = xmmword_219C09BA0;
      *(v20 + 16) = xmmword_219C09BA0;
      v21 = sub_219BF5224();
      v23 = v22;
      *(v20 + 56) = MEMORY[0x277D837D0];
      v62 = sub_2186FC3BC();
      *(v20 + 64) = v62;
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      sub_219BF6214();
      sub_219BE5314();

      v24 = objc_opt_self();
      v25 = sub_219BF5204();
      v69 = 0;
      v26 = [v24 dataWithJSONObject:v25 options:0 error:&v69];

      v27 = v69;
      if (v26)
      {
        v28 = v62;

        v29 = sub_219BDBA04();
        v31 = v30;

        sub_219BDAFF4();
        swift_allocObject();
        sub_219BDAFE4();
        sub_2186E0570(&qword_280E98800, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
        sub_219BDAFC4();
        a3 = v63;
        v56 = v29;
        v57 = v31;
        v67 = v19;

        v43 = v60;
        sub_2190351BC(&v65[*(v14 + 28)], v60, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
        v44 = (*(v66 + 48))(v43, 1, v61);
        a2 = v64;
        if (v44 != 1)
        {
          v49 = v59;
          sub_2190352AC(v43, v59, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_219C09EC0;
          v69 = 0;
          v70 = 0xE000000000000000;
          sub_219BF7484();
          v51 = v69;
          v52 = v70;
          v53 = MEMORY[0x277D837D0];
          *(v50 + 56) = MEMORY[0x277D837D0];
          *(v50 + 64) = v28;
          *(v50 + 32) = v51;
          *(v50 + 40) = v52;
          v69 = 0;
          v70 = 0xE000000000000000;
          type metadata accessor for TopicTodayFeedGroupKnobs();
          sub_219BF7484();
          v54 = v69;
          v55 = v70;
          *(v50 + 96) = v53;
          *(v50 + 104) = v28;
          *(v50 + 72) = v54;
          *(v50 + 80) = v55;
          sub_219BF6214();
          sub_219BE5314();

          sub_219965FB0(v49, a3);
          sub_2186C6190(v56, v57);
          sub_219035314(v49, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
          return sub_219035314(v65, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
        }

        sub_21903523C(v43, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
        v45 = swift_allocObject();
        *(v45 + 16) = v58;
        v69 = 0;
        v70 = 0xE000000000000000;
        v46 = v65;
        sub_219BF7484();
        v47 = v69;
        v48 = v70;
        *(v45 + 56) = MEMORY[0x277D837D0];
        *(v45 + 64) = v28;
        *(v45 + 32) = v47;
        *(v45 + 40) = v48;
        sub_219BF6214();
        sub_219BE5314();
        sub_2186C6190(v56, v57);

        sub_219035314(v46, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
      }

      else
      {
        v33 = v27;
        v34 = sub_219BDB724();

        swift_willThrow();
        sub_219BF61F4();
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_219C09EC0;
        v36 = sub_219BF5224();
        v38 = v37;

        v39 = MEMORY[0x277D837D0];
        v40 = v62;
        *(v35 + 56) = MEMORY[0x277D837D0];
        *(v35 + 64) = v40;
        *(v35 + 32) = v36;
        *(v35 + 40) = v38;
        v69 = 0;
        v70 = 0xE000000000000000;
        v68 = v34;
        sub_2186CFDE4(0, &qword_280E8B580);
        sub_219BF7484();
        v41 = v69;
        v42 = v70;
        *(v35 + 96) = v39;
        *(v35 + 104) = v40;
        *(v35 + 72) = v41;
        *(v35 + 80) = v42;
        sub_219BE5314();

        a3 = v63;
        a2 = v64;
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  return sub_2190350CC(a2, a3, type metadata accessor for TopicTodayFeedGroupKnobs);
}

uint64_t sub_21902D2BC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = type metadata accessor for TopicTodayFeedGroupEmitter.Errors(0);
  v3[8] = swift_task_alloc();
  v4 = MEMORY[0x277D83D88];
  sub_2186D8B18(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[9] = swift_task_alloc();
  sub_219BEF554();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_219BED8D4();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for TodayFeedGroup();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_2186D8B18(0, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor, v4);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = sub_219BEFB64();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for TopicTodayFeedGroupEmitterCursor();
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21902D5B8, 0, 0);
}

uint64_t sub_21902D5B8()
{
  sub_219BEF164();
  v1 = *(v0 + 16);
  *(v0 + 232) = v1;
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  v2[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = sub_21902D7B0;
  v4 = *(v0 + 224);
  v5 = *(v0 + 192);

  return MEMORY[0x282190858](v4, v5, &unk_219C54228, v2, v5);
}

uint64_t sub_21902D7B0()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_21902E380;
  }

  else
  {

    v2 = sub_21902D8CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21902D8CC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 40);
  sub_2190350CC(*(v0 + 224), v7, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  (*(v4 + 56))(v7, 0, 1, v3);
  sub_21902F334(v5, v6, v7, v2, v8);
  v9 = v1;
  sub_21903523C(*(v0 + 152), qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  if (v1)
  {
    *(v0 + 24) = v1;
    v10 = v1;
    sub_2186CFDE4(0, &qword_280E8B580);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:
      v13 = *(v0 + 224);

      swift_willThrow();

      sub_219035314(v13, type metadata accessor for TopicTodayFeedGroupEmitterCursor);

      v14 = *(v0 + 8);

      return v14();
    }

    v11 = *(v0 + 64);
    sub_219034814();
    if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
    {
      sub_219035314(v11, type metadata accessor for TopicTodayFeedGroupEmitter.Errors);
      goto LABEL_5;
    }

    v19 = *(v0 + 208);

    sub_2190352AC(v11, v19, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    v20 = swift_task_alloc();
    *(v0 + 288) = v20;
    *v20 = v0;
    v20[1] = sub_21902E4AC;
    v21 = *(v0 + 232);
    v22 = *(v0 + 208);
    v23 = *(v0 + 40);

    return sub_2190321C8(v23, v21, v22);
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 264) = v16;
    *v16 = v0;
    v16[1] = sub_21902DC88;
    v17 = *(v0 + 184);
    v18 = *(v0 + 40);

    return sub_21903085C(v18, v17);
  }
}

uint64_t sub_21902DC88(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_21902E7CC;
  }

  else
  {
    v4 = sub_21902DD9C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21902DD9C()
{
  v28 = v0[25];
  v30 = v0[24];
  v24 = v0[18];
  v26 = v0[20];
  v22 = v0[17];
  v21 = v0[14];
  v1 = v0[13];
  v23 = v0[12];
  sub_2186E03A0();

  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for TopicTodayFeedGroupKnobs();
  sub_21903485C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  v2 = sub_219BEFB24();
  (*(v1 + 32))(v22, v21, v23);
  *(v22 + *(type metadata accessor for TopicTodayFeedGroup() + 20)) = v2 & 1;
  swift_storeEnumTagMultiPayload();
  sub_2190351BC(v26, v24, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  v3 = (*(v28 + 48))(v24, 1, v30);
  v31 = v0[28];
  if (v3 == 1)
  {
    v4 = v0[22];
    v5 = v0[23];
    v7 = v0[20];
    v6 = v0[21];
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[4];

    sub_21903523C(v7, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    (*(v4 + 8))(v5, v6);
    sub_219035314(v31, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    sub_21903523C(v8, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    sub_2190352AC(v9, v10, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    v11 = v0[27];
    v12 = v0[24];
    v13 = v0[22];
    v27 = v0[21];
    v29 = v0[23];
    v25 = v0[20];
    v14 = v0[17];
    v15 = v0[4];
    sub_2190352AC(v0[18], v11, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    sub_218B8B468();
    v17 = (v15 + *(v16 + 48));
    sub_2190350CC(v14, v15, type metadata accessor for TodayFeedGroup);
    v17[3] = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    sub_2190352AC(v11, boxed_opaque_existential_1, type metadata accessor for TopicTodayFeedGroupEmitterCursor);

    sub_219035314(v14, type metadata accessor for TodayFeedGroup);
    sub_21903523C(v25, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    (*(v13 + 8))(v29, v27);
    sub_219035314(v31, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  }

  sub_21903485C(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v19 = v0[1];

  return v19();
}

uint64_t sub_21902E380()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21902E4AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_21902EAB8;
  }

  else
  {
    *(v4 + 304) = a1;
    v5 = sub_21902E5D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21902E5D4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 128);
  v4 = *(v0 + 32);
  sub_219033730(*(v0 + 304), v3);

  sub_219035314(v2, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  sub_219035314(v1, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  sub_2190352AC(v3, v4, type metadata accessor for TodayFeedGroup);
  sub_21903485C(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21902E7CC()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  sub_21903523C(*(v0 + 160), qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 280);
  *(v0 + 24) = v4;
  v5 = v4;
  sub_2186CFDE4(0, &qword_280E8B580);
  if (!swift_dynamicCast())
  {
LABEL_4:
    v8 = *(v0 + 224);

    swift_willThrow();

    sub_219035314(v8, type metadata accessor for TopicTodayFeedGroupEmitterCursor);

    v9 = *(v0 + 8);

    return v9();
  }

  v6 = *(v0 + 64);
  sub_219034814();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_219035314(v6, type metadata accessor for TopicTodayFeedGroupEmitter.Errors);
    goto LABEL_4;
  }

  v11 = *(v0 + 208);

  sub_2190352AC(v6, v11, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  v12 = swift_task_alloc();
  *(v0 + 288) = v12;
  *v12 = v0;
  v12[1] = sub_21902E4AC;
  v13 = *(v0 + 232);
  v14 = *(v0 + 208);
  v15 = *(v0 + 40);

  return sub_2190321C8(v15, v13, v14);
}

uint64_t sub_21902EAB8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  sub_219035314(v2, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  sub_219035314(v1, type metadata accessor for TopicTodayFeedGroupEmitterCursor);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21902EC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2187608D4;

  return sub_21902ECCC(a1, a3, a4);
}

uint64_t sub_21902ECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v4 = sub_219BF02B4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21902ED8C, 0, 0);
}

uint64_t sub_21902ED8C()
{
  sub_219BE2CF4();
  v0[10] = v0[3];
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_21902EE48;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_21902EE48()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21902F254;
  }

  else
  {

    v2 = sub_21902EF64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21902EF64()
{
  v0[13] = v0[2];

  sub_219BE2CF4();

  v1 = sub_219BE2E54();
  v0[14] = sub_219BE2F74();

  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_21902F07C;
  v3 = v0[9];

  return MEMORY[0x2821D23D8](v3);
}

uint64_t sub_21902F07C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_21902F2C0;
  }

  else
  {

    v2 = sub_21902F198;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21902F198()
{
  v1 = v0[13];
  v2 = v0[5];
  (*(v0[8] + 32))(v2, v0[9], v0[7]);
  v3 = *(v1 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_decayedPublisherDiversificationPenalty);

  *(v2 + *(type metadata accessor for TopicTodayFeedGroupEmitterCursor() + 20)) = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_21902F254()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21902F2C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21902F334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v139 = a5;
  v147 = a4;
  v160 = a3;
  v146 = a2;
  v145 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_2186D8B18(0, &qword_280E91258, MEMORY[0x277D328D0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v143 = &v132 - v7;
  v8 = sub_219BEE6E4();
  v156 = *(v8 - 8);
  v157 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v159 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v161 = &v132 - v11;
  v150 = sub_219BEFB64();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v151 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8B18(0, &qword_280E91250, MEMORY[0x277D328D8], v5);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v132 - v17;
  sub_2186D8B18(0, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor, v5);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v136 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v142 = &v132 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v132 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v132 - v27;
  v29 = type metadata accessor for TopicTodayFeedGroupEmitterCursor();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v140 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v138 = &v132 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v132 - v35;
  sub_2190351BC(v160, v28, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  v137 = v30;
  v38 = *(v30 + 48);
  v37 = v30 + 48;
  v144 = v29;
  v141 = v38;
  if (v38(v28, 1, v29) == 1)
  {
    sub_21903523C(v28, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    v39 = sub_219BEEDD4();
    sub_2186E0570(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D323C8], v39);
    return swift_willThrow();
  }

  v135 = v37;
  sub_2190352AC(v28, v36, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  sub_218C82C58(v18, v26);
  sub_2190351BC(v18, v16, &qword_280E91250, MEMORY[0x277D328D8]);
  v42 = v149;
  v43 = v150;
  if ((*(v149 + 48))(v16, 1, v150) == 1)
  {
    sub_21903523C(v16, &qword_280E91250, MEMORY[0x277D328D8]);
    v44 = *(sub_219BF0274() + 16);

    if (v44)
    {
      type metadata accessor for TopicTodayFeedGroupEmitter.Errors(0);
      sub_2186E0570(&unk_280EB9B78, type metadata accessor for TopicTodayFeedGroupEmitter.Errors);
      swift_allocError();
      v46 = v45;
      sub_2190350CC(v36, v45, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      sub_219034814();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
    }

    else
    {
      v70 = sub_219BEEDD4();
      sub_2186E0570(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      (*(*(v70 - 8) + 104))(v71, *MEMORY[0x277D32390], v70);
    }

    swift_willThrow();
    sub_21903523C(v26, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    sub_21903523C(v18, &qword_280E91250, MEMORY[0x277D328D8]);
    v72 = v36;
    return sub_219035314(v72, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  }

  v134 = v26;
  v132 = v36;
  v133 = v18;
  (*(v42 + 32))(v151, v16, v43);
  v48 = sub_219BEFAF4();
  v154 = *(v48 + 16);
  v155 = v147 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
  if (v154)
  {
    v49 = 0;
    v152 = v156 + 16;
    v148 = (v156 + 8);
    *&v158 = v156 + 32;
    v50 = MEMORY[0x277D84F90];
    v51 = v157;
    v153 = v48;
    while (v49 < *(v48 + 16))
    {
      v160 = v50;
      v52 = (*(v156 + 80) + 32) & ~*(v156 + 80);
      v53 = *(v156 + 72);
      v54 = (*(v156 + 16))(v161, v48 + v52 + v53 * v49, v51);
      v55 = *(v155 + 16);
      v56 = MEMORY[0x21CEC5420](v54);
      v58 = v57;
      if (*(v55 + 16) && (v59 = v56, sub_219BF7AA4(), sub_219BF5524(), v60 = sub_219BF7AE4(), v61 = -1 << *(v55 + 32), v62 = v60 & ~v61, ((*(v55 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) != 0))
      {
        v63 = ~v61;
        while (1)
        {
          v64 = (*(v55 + 48) + 16 * v62);
          v65 = *v64 == v59 && v64[1] == v58;
          if (v65 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v62 = (v62 + 1) & v63;
          if (((*(v55 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v51 = v157;
        (*v148)(v161, v157);
        v50 = v160;
      }

      else
      {
LABEL_20:

        v51 = v157;
        v66 = *v158;
        (*v158)(v159, v161, v157);
        v50 = v160;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v163 = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34B28(0, *(v50 + 16) + 1, 1);
          v50 = v163;
        }

        v69 = *(v50 + 16);
        v68 = *(v50 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_218C34B28(v68 > 1, v69 + 1, 1);
          v50 = v163;
        }

        *(v50 + 16) = v69 + 1;
        v66(v50 + v52 + v69 * v53, v159, v51);
      }

      ++v49;
      v48 = v153;
      if (v49 == v154)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_30;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_29:

  if (qword_280E8D7A0 != -1)
  {
    goto LABEL_41;
  }

LABEL_30:
  v161 = qword_280F616D8;
  sub_2186F20D4();
  v73 = swift_allocObject();
  v158 = xmmword_219C0B8C0;
  *(v73 + 16) = xmmword_219C0B8C0;
  v74 = [sub_219BEFB34() identifier];
  swift_unknownObjectRelease();
  v75 = sub_219BF5414();
  v77 = v76;

  *(v73 + 56) = MEMORY[0x277D837D0];
  v159 = sub_2186FC3BC();
  *(v73 + 64) = v159;
  *(v73 + 32) = v75;
  *(v73 + 40) = v77;
  v78 = sub_219BEFB44();
  if (v78 >> 62)
  {
    v79 = sub_219BF7214();
  }

  else
  {
    v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = MEMORY[0x277D83B88];
  v81 = MEMORY[0x277D83C10];
  *(v73 + 96) = MEMORY[0x277D83B88];
  *(v73 + 104) = v81;
  *(v73 + 72) = v79;
  v82 = *(v50 + 16);
  *(v73 + 136) = v80;
  *(v73 + 144) = v81;
  *(v73 + 112) = v82;
  sub_219BF6214();
  sub_219BE5314();

  v83 = v151;
  if (v82 >= sub_219BEFAE4())
  {
    v104 = sub_219BEFB04();
    v105 = v143;
    (*(*(v104 - 8) + 56))(v143, 1, 1, v104);
    sub_219BEFB54();

    sub_21903523C(v105, &qword_280E91258, MEMORY[0x277D328D0]);
    (*(v149 + 8))(v83, v150);
    sub_21903523C(v133, &qword_280E91250, MEMORY[0x277D328D8]);
    sub_219035314(v132, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    return sub_219035038(v134, v146);
  }

  else
  {
    v160 = v50;
    v84 = swift_allocObject();
    *(v84 + 16) = v158;
    v85 = [sub_219BEFB34() identifier];
    swift_unknownObjectRelease();
    v86 = sub_219BF5414();
    v88 = v87;

    v89 = v159;
    *(v84 + 56) = MEMORY[0x277D837D0];
    *(v84 + 64) = v89;
    *(v84 + 32) = v86;
    *(v84 + 40) = v88;
    v90 = MEMORY[0x277D83B88];
    *(v84 + 96) = MEMORY[0x277D83B88];
    *(v84 + 104) = v81;
    *(v84 + 72) = v82;
    v91 = sub_219BEFAE4();
    *(v84 + 136) = v90;
    *(v84 + 144) = v81;
    *(v84 + 112) = v91;
    sub_219BF6214();
    sub_219BE5314();

    v92 = v134;
    v93 = v142;
    sub_2190351BC(v134, v142, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    v94 = v144;
    if (v141(v93, 1, v144) == 1)
    {

      sub_21903523C(v93, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      sub_219BF6204();
      v95 = swift_allocObject();
      *(v95 + 16) = v158;
      v96 = [sub_219BEFB34() identifier];
      swift_unknownObjectRelease();
      v97 = sub_219BF5414();
      v99 = v98;

      v100 = v151;
      v101 = v159;
      *(v95 + 56) = MEMORY[0x277D837D0];
      *(v95 + 64) = v101;
      *(v95 + 32) = v97;
      *(v95 + 40) = v99;
      v102 = MEMORY[0x277D83B88];
      *(v95 + 96) = MEMORY[0x277D83B88];
      *(v95 + 104) = v81;
      *(v95 + 72) = v82;
      v103 = sub_219BEFAE4();
      *(v95 + 136) = v102;
      *(v95 + 144) = v81;
      *(v95 + 112) = v103;
      sub_219BE5314();

      sub_21902F334(v145, v146, v92, v147, v139);
      (*(v149 + 8))(v100, v150);
      sub_21903523C(v92, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      sub_21903523C(v133, &qword_280E91250, MEMORY[0x277D328D8]);
      v72 = v132;
      return sub_219035314(v72, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    }

    v106 = v138;
    sub_2190352AC(v93, v138, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    sub_219BEFB34();
    result = sub_219BEFAE4();
    if (__OFSUB__(result, v82))
    {
      __break(1u);
    }

    else
    {
      v107 = v140;
      v108 = sub_219BF0264();
      swift_unknownObjectRelease();
      *(v107 + *(v94 + 20)) = *(v106 + *(v94 + 20));
      v109 = MEMORY[0x277D83B88];
      if (!v108)
      {

        sub_219BF6204();
        v122 = swift_allocObject();
        *(v122 + 16) = v158;
        v123 = v151;
        v124 = [sub_219BEFB34() identifier];
        swift_unknownObjectRelease();
        v125 = sub_219BF5414();
        v127 = v126;

        v128 = v159;
        *(v122 + 56) = MEMORY[0x277D837D0];
        *(v122 + 64) = v128;
        *(v122 + 32) = v125;
        *(v122 + 40) = v127;
        *(v122 + 96) = v109;
        *(v122 + 104) = v81;
        *(v122 + 72) = v82;
        v129 = sub_219BEFAE4();
        *(v122 + 136) = v109;
        *(v122 + 144) = v81;
        *(v122 + 112) = v129;
        sub_219BE5314();

        v130 = v140;
        v131 = v136;
        sub_2190350CC(v140, v136, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
        (*(v137 + 56))(v131, 0, 1, v144);
        sub_21902F334(v145, v146, v131, v147, v139);
        sub_21903523C(v131, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
        sub_219035314(v130, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
        sub_219035314(v138, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
        (*(v149 + 8))(v123, v150);
        sub_21903523C(v134, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
        sub_21903523C(v133, &qword_280E91250, MEMORY[0x277D328D8]);
        v72 = v132;
        return sub_219035314(v72, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      }

      v110 = v106;
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_219C09EC0;
      v112 = v151;
      v113 = [sub_219BEFB34() identifier];
      swift_unknownObjectRelease();
      v114 = sub_219BF5414();
      v116 = v115;

      v117 = v159;
      *(v111 + 56) = MEMORY[0x277D837D0];
      *(v111 + 64) = v117;
      *(v111 + 32) = v114;
      *(v111 + 40) = v116;
      v118 = *(v108 + 16);
      *(v111 + 96) = v109;
      *(v111 + 104) = v81;
      *(v111 + 72) = v118;
      sub_219BF6214();
      sub_219BE5314();

      v162 = v160;
      sub_2191EDA68(v108);
      v119 = sub_219BEFB04();
      v120 = v143;
      (*(*(v119 - 8) + 56))(v143, 1, 1, v119);
      sub_219BEFB54();

      sub_21903523C(v120, &qword_280E91258, MEMORY[0x277D328D0]);
      sub_219035314(v110, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      (*(v149 + 8))(v112, v150);
      sub_21903523C(v134, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      sub_21903523C(v133, &qword_280E91250, MEMORY[0x277D328D8]);
      sub_219035314(v132, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      v121 = v146;
      sub_2190352AC(v140, v146, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      return (*(v137 + 56))(v121, 0, 1, v144);
    }
  }

  return result;
}

uint64_t sub_21903085C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186D8B18(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_2186D8B18(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[6] = swift_task_alloc();
  sub_2186D8B18(0, &unk_280E91A10, sub_2189AE994, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_219BF2034();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  sub_2186D8B18(0, &unk_280E8FF30, sub_218A42400, v4);
  v3[14] = swift_task_alloc();
  sub_2186D8B18(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v4);
  v3[15] = swift_task_alloc();
  v7 = sub_219BDBD64();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = sub_219BF2124();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v9 = sub_219BF3C84();
  v3[22] = v9;
  v3[23] = *(v9 - 8);
  v3[24] = swift_task_alloc();
  v10 = sub_219BF26F4();
  v3[25] = v10;
  v3[26] = *(v10 - 8);
  v3[27] = swift_task_alloc();
  v11 = sub_219BF1364();
  v3[28] = v11;
  v3[29] = *(v11 - 8);
  v3[30] = swift_task_alloc();
  v12 = sub_219BF1214();
  v3[31] = v12;
  v3[32] = *(v12 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = type metadata accessor for TopicTodayFeedGroupConfigData();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v13 = sub_219BF1934();
  v3[37] = v13;
  v3[38] = *(v13 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219030DE4, 0, 0);
}

uint64_t sub_219030DE4()
{
  v1 = v0[40];
  v2 = v0[38];
  v71 = v0[37];
  v3 = v0[35];
  v4 = v0[36];
  v80 = v0[33];
  v5 = v0[32];
  v76 = v0[34];
  v77 = v0[31];
  sub_2186E03A0();
  sub_219BEDD14();
  (*(v2 + 16))(v1, v4, v71);
  sub_219035314(v4, type metadata accessor for TopicTodayFeedGroupConfigData);
  sub_219BEF174();
  sub_219BEDD14();
  (*(v5 + 16))(v80, v3 + *(v76 + 24), v77);
  sub_219035314(v3, type metadata accessor for TopicTodayFeedGroupConfigData);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v61 = v0[40];
  v6 = v0[38];
  v8 = v0[32];
  v7 = v0[33];
  v62 = v0[31];
  v63 = v0[37];
  v65 = v0[30];
  v68 = v0[28];
  v69 = v0[29];
  v72 = v0[27];
  v78 = v0[26];
  v81 = v0[25];
  v74 = v0[20];
  v9 = qword_280F616D8;
  sub_219BEFB34();
  v60 = v9;
  sub_219BF1774();
  swift_unknownObjectRelease();

  (*(v8 + 8))(v7, v62);
  v10 = *(v6 + 8);
  v0[42] = v10;
  v0[43] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v61, v63);
  sub_219BEFB34();
  swift_getObjectType();
  sub_2194F6464(v65);
  swift_unknownObjectRelease();
  v11 = MEMORY[0x277D84560];
  sub_2186D8B18(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
  sub_219BF1A44();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  v13 = swift_allocBox();
  (*(v69 + 16))(v14, v65, v68);
  *v72 = v13;
  (*(v74 + 104))();
  (*(v78 + 104))(v72, *MEMORY[0x277D339C8], v81);
  sub_219BF1A04();
  sub_2186D8B18(0, &unk_280E8B790, MEMORY[0x277D34258], v11);
  sub_219BF3E84();
  *(swift_allocObject() + 16) = xmmword_219C09EC0;
  v15 = sub_219BEFB44();
  if (v15 >> 62)
  {
    v52 = v15;
    v16 = sub_219BF7214();
    v15 = v52;
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = v0;
  v67 = v12;
  if (v16)
  {
    v17 = v15;
    v84 = MEMORY[0x277D84F90];
    v18 = sub_218C34A88(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v18, v19, v20, v21, v22);
    }

    v23 = 0;
    v24 = v0[23];
    v79 = *MEMORY[0x277D34128];
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CECE0F0](v23);
      }

      else
      {
        v25 = swift_unknownObjectRetain();
      }

      v26 = v83[24];
      v27 = v83[22];
      *v26 = v25;
      (*(v24 + 104))(v26, v79, v27);
      v29 = *(v84 + 16);
      v28 = *(v84 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_218C34A88(v28 > 1, v29 + 1, 1);
      }

      v30 = v83[24];
      v31 = v83[22];
      ++v23;
      *(v84 + 16) = v29 + 1;
      (*(v24 + 32))(v84 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v29, v30, v31);
    }

    while (v16 != v23);

    v0 = v83;
  }

  else
  {
  }

  v54 = v0[18];
  v55 = v0[17];
  v57 = v0[16];
  v58 = v0[15];
  v59 = v0[14];
  v64 = v0[7];
  v66 = v0[6];
  v82 = v0[4];
  v70 = v0[5];
  v32 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v32);
  sub_218F0BB90(v32);
  sub_219BF3E74();
  sub_2186D8B18(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  sub_219BF14C4();
  *(swift_allocObject() + 16) = xmmword_219C09EC0;
  v33 = [sub_219BEFB34() groupName];
  swift_unknownObjectRelease();
  sub_219BF5414();

  sub_219BF20F4();

  sub_219BF14A4();
  sub_219BF2104();
  sub_219BF14A4();
  sub_218F0B984(v32);
  sub_218F0BA7C(v32);
  sub_218F0BB90(v32);
  sub_219BF3E74();
  v73 = *(v82 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService + 24);
  v75 = *(v82 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService + 32);
  __swift_project_boxed_opaque_existential_1((v82 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService), v73);
  v34 = [sub_219BEFB34() identifier];
  swift_unknownObjectRelease();
  v35 = sub_219BF5414();
  v37 = v36;

  MEMORY[0x21CECC330](v35, v37);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BDBD54();
  v38 = sub_219BDBD44();
  v40 = v39;
  (*(v55 + 8))(v54, v57);
  MEMORY[0x21CECC330](v38, v40);

  v41 = [sub_219BEFB34() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v42 = sub_219BEC004();
  v56 = *(*(v42 - 8) + 56);
  v56(v58, 1, 1, v42);
  sub_219BF1714();
  sub_2191EED30(v67);
  sub_218A42400(0);
  (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
  sub_219BF1764();

  sub_21903523C(v59, &unk_280E8FF30, sub_218A42400);
  sub_21903523C(v58, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  sub_2186DF030(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_219C146A0;
  *(v44 + 32) = sub_219BEFB34();
  v56(v58, 1, 1, v42);
  sub_219A95188(v32);
  sub_219A95188(v32);
  sub_219A951A0(v32);
  sub_219A951B8(v32);
  sub_219A952CC(v32);
  sub_219A952E4(v32);
  sub_219A953F8(v32);
  sub_219BF2024();
  v45 = OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v47 = v46;
  v48 = *(v46 - 8);
  (*(v48 + 16))(v64, v82 + v45, v46);
  (*(v48 + 56))(v64, 0, 1, v47);
  v49 = sub_219BF35D4();
  (*(*(v49 - 8) + 56))(v66, 1, 1, v49);
  *(v83 + 376) = 8;
  sub_21903485C(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v50 = sub_219BF2774();
  (*(*(v50 - 8) + 56))(v70, 1, 1, v50);
  *MEMORY[0x277D30BC8];
  v60;
  sub_219BF2A84();
  v51 = swift_task_alloc();
  v83[44] = v51;
  *v51 = v83;
  v51[1] = sub_219031C34;
  v19 = v83[13];
  v20 = v83[10];
  v18 = v83[39];
  v21 = v73;
  v22 = v75;

  return MEMORY[0x2821921B8](v18, v19, v20, v21, v22);
}

uint64_t sub_219031C34(uint64_t a1)
{
  v3 = *v2;
  v3[45] = v1;

  v15 = v3[42];
  v4 = v3[39];
  v5 = v3[37];
  v6 = v3[13];
  v7 = v3[12];
  v8 = v3[11];
  v9 = v3[10];
  v10 = v3[9];
  v11 = v3[8];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_219032040;
  }

  else
  {
    v3[46] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_219031EB4;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_219031EB4()
{
  v1 = v0[42];
  v2 = v0[41];
  v3 = v0[37];
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[46];

  return v4(v5);
}

uint64_t sub_219032040()
{
  v1 = v0[42];
  v2 = v0[41];
  v3 = v0[37];
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2190321C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186D8B18(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[6] = swift_task_alloc();
  sub_2186D8B18(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[7] = swift_task_alloc();
  sub_2186D8B18(0, &unk_280E91A10, sub_2189AE994, v5);
  v4[8] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_219BF2034();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  sub_2186D8B18(0, &unk_280E8FF30, sub_218A42400, v5);
  v4[15] = swift_task_alloc();
  sub_2186D8B18(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  v4[16] = swift_task_alloc();
  v8 = sub_219BDBD64();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = sub_219BF3C84();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v10 = sub_219BF3E84();
  v4[24] = v10;
  v4[25] = *(v10 - 8);
  v4[26] = swift_task_alloc();
  sub_2186D8B18(0, &qword_280E90800, MEMORY[0x277D33478], v5);
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for TopicTodayFeedGroupConfigData();
  v4[29] = swift_task_alloc();
  v11 = sub_219BF1934();
  v4[30] = v11;
  v4[31] = *(v11 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21903267C, 0, 0);
}

uint64_t sub_21903267C()
{
  v72 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 216);
  sub_2186E03A0();
  sub_219BEDD14();
  sub_2190351BC(v3 + *(v4 + 20), v5, &qword_280E90800, MEMORY[0x277D33478]);
  sub_219035314(v3, type metadata accessor for TopicTodayFeedGroupConfigData);
  if ((*(v2 + 48))(v5, 1, v1) != 1)
  {
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    (*(*(v0 + 248) + 32))(*(v0 + 264), *(v0 + 216), *(v0 + 240));
    v11 = sub_219BF0274();
    v12 = type metadata accessor for TopicTodayFeedGroupEmitterCursor();
    v15 = sub_2190348DC(v11, v10, *(v9 + *(v12 + 20)));

    if (v15 >> 62)
    {
      v16 = sub_219BF7214();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      v71[0] = MEMORY[0x277D84F90];
      v17 = sub_218C34A88(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        __break(1u);
        return MEMORY[0x2821921B8](v17, v18, v19, v20, v21);
      }

      v22 = v71[0];
      v23 = *(v0 + 168);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v24 = 0;
        v25 = *MEMORY[0x277D34128];
        do
        {
          v26 = *(v0 + 184);
          v27 = *(v0 + 160);
          *v26 = MEMORY[0x21CECE0F0](v24, v15);
          (*(v23 + 104))(v26, v25, v27);
          v71[0] = v22;
          v29 = *(v22 + 16);
          v28 = *(v22 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_218C34A88(v28 > 1, v29 + 1, 1);
            v22 = v71[0];
          }

          v30 = *(v0 + 184);
          v31 = *(v0 + 160);
          ++v24;
          *(v22 + 16) = v29 + 1;
          (*(v23 + 32))(v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v29, v30, v31);
        }

        while (v16 != v24);
      }

      else
      {
        v68 = *(v23 + 104);
        v32 = 32;
        do
        {
          v33 = v15;
          **(v0 + 176) = *(v15 + v32);
          v68();
          v71[0] = v22;
          v34 = *(v22 + 16);
          v35 = *(v22 + 24);
          swift_unknownObjectRetain();
          if (v34 >= v35 >> 1)
          {
            sub_218C34A88(v35 > 1, v34 + 1, 1);
            v22 = v71[0];
          }

          v36 = *(v0 + 176);
          v37 = *(v0 + 160);
          *(v22 + 16) = v34 + 1;
          (*(v23 + 32))(v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v34, v36, v37);
          v32 += 8;
          --v16;
          v15 = v33;
        }

        while (v16);
      }
    }

    v38 = *(v0 + 200);
    v63 = *(v0 + 208);
    v64 = *(v0 + 192);
    v39 = *(v0 + 144);
    v40 = *(v0 + 152);
    v60 = *(v0 + 136);
    v61 = *(v0 + 128);
    v62 = *(v0 + 120);
    v65 = *(v0 + 64);
    v66 = *(v0 + 56);
    v41 = *(v0 + 40);
    v67 = *(v0 + 48);
    v42 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v42);
    sub_218F0BB90(v42);
    sub_219BF3E74();
    v69 = *(v41 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService + 32);
    v70 = *(v41 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService + 24);
    __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService), v70);
    strcpy(v71, "moreForYou::");
    BYTE5(v71[1]) = 0;
    HIWORD(v71[1]) = -5120;
    sub_219BDBD54();
    v43 = sub_219BDBD44();
    v45 = v44;
    (*(v39 + 8))(v40, v60);
    MEMORY[0x21CECC330](v43, v45);

    v46 = sub_219BEC004();
    v47 = *(*(v46 - 8) + 56);
    v47(v61, 1, 1, v46);
    sub_218A42400(0);
    (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
    sub_219BF1764();

    sub_21903523C(v62, &unk_280E8FF30, sub_218A42400);
    sub_21903523C(v61, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    sub_2186D8B18(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v49 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_219C09BA0;
    (*(v38 + 16))(v50 + v49, v63, v64);
    v47(v61, 1, 1, v46);
    sub_219A95188(v42);
    sub_219A95188(v42);
    sub_219A951A0(v42);
    sub_219A951B8(v42);
    sub_219A952CC(v42);
    sub_219A952E4(v42);
    sub_219A953F8(v42);
    sub_219BF2024();
    v51 = v41 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_knobs;
    v52 = *(type metadata accessor for TopicTodayFeedGroupKnobs() + 24);
    sub_2189AE994(0);
    v54 = v53;
    v55 = *(v53 - 8);
    (*(v55 + 16))(v65, v51 + v52, v53);
    (*(v55 + 56))(v65, 0, 1, v54);
    v56 = sub_219BF35D4();
    (*(*(v56 - 8) + 56))(v66, 1, 1, v56);
    *(v0 + 328) = 7;
    sub_21903485C(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
    swift_allocObject();

    sub_219BF38D4();
    v57 = sub_219BF2774();
    (*(*(v57 - 8) + 56))(v67, 1, 1, v57);
    v58 = qword_280E8D7A0;
    *MEMORY[0x277D30BC8];
    if (v58 != -1)
    {
      swift_once();
    }

    qword_280F616D8;
    sub_219BF2A84();
    v59 = swift_task_alloc();
    *(v0 + 272) = v59;
    *v59 = v0;
    v59[1] = sub_2190331E4;
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v17 = *(v0 + 256);
    v21 = v69;
    v20 = v70;

    return MEMORY[0x2821921B8](v17, v18, v19, v20, v21);
  }

  sub_21903523C(*(v0 + 216), &qword_280E90800, MEMORY[0x277D33478]);
  type metadata accessor for TopicTodayFeedGroupEmitter.Errors(0);
  sub_2186E0570(&unk_280EB9B78, type metadata accessor for TopicTodayFeedGroupEmitter.Errors);
  swift_allocError();
  v7 = v6;
  sub_219034814();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2190331E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 80);
  v3[35] = v1;

  v7 = (v6 + 8);
  v8 = (v5 + 8);
  v9 = (v4 + 8);
  v10 = v3[32];
  v11 = v3[30];
  v12 = v3[14];
  v13 = v3[12];
  v14 = v3[11];
  v15 = v3[9];
  if (v1)
  {
    (*v7)(v14, v15);
    (*v8)(v12, v13);
    v16 = *v9;
    v3[39] = *v9;
    v3[40] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v10, v11);
    v17 = sub_2190335D8;
  }

  else
  {
    v3[36] = a1;
    (*v7)(v14, v15);
    (*v8)(v12, v13);
    v18 = *v9;
    v3[37] = *v9;
    v3[38] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v10, v11);
    v17 = sub_21903347C;
  }

  return MEMORY[0x2822009F8](v17, 0, 0);
}

uint64_t sub_21903347C()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[30];
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[36];

  return v4(v5);
}

uint64_t sub_2190335D8()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[30];
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219033730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[3] = a1;
  v13 = a2;
  sub_2186D8B18(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_219BEF554();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v12 = sub_219BED8D4();
  v5 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E03A0();

  v8 = sub_219BEDCB4();
  v11[1] = v9;
  v11[2] = v8;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for TopicTodayFeedGroupKnobs();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_21903485C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  (*(v5 + 32))(v13, v7, v12);
  type metadata accessor for TodayFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219033A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_2186D8B18(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219033B98, 0, 0);
}

uint64_t sub_219033B98()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_21903485C(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21903523C(*(v0 + 48), qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    sub_2190352AC(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_219035314(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_219034698(*(v0 + 40), *(v0 + 24));
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_219033DC0()
{
  v1 = OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_config;
  sub_2186E03A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219035314(v0 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_knobs, type metadata accessor for TopicTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_sportsGraphManager);

  return swift_deallocClassInstance();
}

void sub_219033EEC()
{
  sub_2186E03A0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TopicTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_219033FD8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21902D2BC(a1, a2);
}

uint64_t sub_219034084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187609C8;

  return sub_219033A78(a1, a2, a3);
}

uint64_t sub_219034134()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_219034174@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_config;
  sub_2186E03A0();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219034208@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for TopicTodayFeedGroupKnobs();
  a1[4] = sub_2186E0570(&qword_280EBFCC0, type metadata accessor for TopicTodayFeedGroupKnobs);
  a1[5] = sub_2186E0570(&qword_280EBFCC8, type metadata accessor for TopicTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2190350CC(v3 + v4, boxed_opaque_existential_1, type metadata accessor for TopicTodayFeedGroupKnobs);
}

uint64_t sub_21903436C@<X0>(uint64_t *a1@<X8>)
{
  sub_2186D8B18(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E03A0();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219035314(inited + 32, sub_2188317B0);
  sub_2186D8B18(0, &qword_280EE79B0, type metadata accessor for TopicTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_219035134();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21903450C()
{
  sub_2186E0570(&qword_280EB9A98, type metadata accessor for TopicTodayFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_219034698(uint64_t a1, uint64_t a2)
{
  sub_21903485C(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219034760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_21902EC14(a1, v4, v5, v6);
}

void sub_219034814()
{
  if (!qword_280EA4290[0])
  {
    v0 = type metadata accessor for TopicTodayFeedGroupEmitterCursor();
    if (!v1)
    {
      atomic_store(v0, qword_280EA4290);
    }
  }
}

void sub_21903485C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_2190348DC(uint64_t a1, uint64_t a2, double a3)
{
  v60 = sub_219BEEA24();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BEE6E4();
  v8 = MEMORY[0x28223BE20](v7);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v71 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v15 = MEMORY[0x277D84F90];
  v69 = *(a1 + 16);
  v57 = v12;
  if (v69)
  {
    v16 = 0;
    v67 = a2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v68 = v7;
    v18 = *(v12 + 16);
    v17 = v12 + 16;
    v63 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v64 = a1 + v63;
    v65 = v18;
    v72 = *(v17 + 56);
    v62 = (v17 - 8);
    v66 = v17;
    v70 = (v17 + 16);
    for (i = v18(v14, a1 + v63, v7); ; i = v65(v14, v64 + v72 * v16, v7))
    {
      v20 = *(v67 + 16);
      v21 = v14;
      v22 = MEMORY[0x21CEC5420](i);
      v24 = v23;
      if (*(v20 + 16) && (v25 = v22, sub_219BF7AA4(), sub_219BF5524(), v26 = sub_219BF7AE4(), v27 = -1 << *(v20 + 32), v28 = v26 & ~v27, ((*(v20 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(v20 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v20 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v14 = v21;
        v7 = v68;
        (*v62)(v21, v68);
      }

      else
      {
LABEL_15:

        v32 = *v70;
        v14 = v21;
        v7 = v68;
        (*v70)(v71, v21, v68);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34B28(0, *(v15 + 16) + 1, 1);
          v15 = v74;
        }

        v35 = *(v15 + 16);
        v34 = *(v15 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_218C34B28(v34 > 1, v35 + 1, 1);
          v15 = v74;
        }

        *(v15 + 16) = v35 + 1;
        v32((v15 + v63 + v35 * v72), v71, v7);
      }

      if (++v16 == v69)
      {
        break;
      }
    }
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C09EC0;
  v37 = MEMORY[0x277D83B88];
  v38 = MEMORY[0x277D83C10];
  *(v36 + 56) = MEMORY[0x277D83B88];
  *(v36 + 64) = v38;
  *(v36 + 32) = v69;
  v39 = *(v15 + 16);
  *(v36 + 96) = v37;
  *(v36 + 104) = v38;
  *(v36 + 72) = v39;
  sub_219BF6214();
  sub_219BE5314();

  v40 = v61;
  if (*(v15 + 16))
  {
    v41 = v58;
    *v58 = a3;
    *(v41 + 8) = 0;
    v42 = v59;
    v43 = v60;
    (*(v59 + 104))(v41, *MEMORY[0x277D321C0], v60);
    sub_2186E0570(&unk_280E91B40, MEMORY[0x277D320C0]);
    v44 = sub_219BF5A74();

    (*(v42 + 8))(v41, v43);
    v45 = *(v44 + 16);
    if (v45)
    {
      v73 = MEMORY[0x277D84F90];
      sub_219BF73F4();
      v46 = *(v57 + 16);
      v47 = *(v57 + 80);
      v48 = v7;
      v70 = v44;
      v49 = v44 + ((v47 + 32) & ~v47);
      v71 = *(v57 + 72);
      v72 = v46;
      v50 = (v57 + 8);
      do
      {
        v72(v40, v49, v48);
        sub_219BEE6D4();
        (*v50)(v40, v48);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v49 += v71;
        --v45;
      }

      while (v45);

      v51 = v73;
    }

    else
    {

      v51 = MEMORY[0x277D84F90];
    }

    sub_218731D50();
    v53 = sub_219BF5904();
    v54 = FCPromoteOneHeadline();

    if (v54)
    {
      v55 = sub_219BF5924();

      return v55;
    }
  }

  else
  {

    v51 = sub_219BEEDD4();
    sub_2186E0570(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D323A8], v51);
    swift_willThrow();
  }

  return v51;
}

uint64_t sub_219035038(uint64_t a1, uint64_t a2)
{
  sub_2186D8B18(0, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2190350CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219035134()
{
  result = qword_280EE79B8;
  if (!qword_280EE79B8)
  {
    sub_2186D8B18(255, &qword_280EE79B0, type metadata accessor for TopicTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE79B8);
  }

  return result;
}

uint64_t sub_2190351BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186D8B18(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21903523C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8B18(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2190352AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219035314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21903539C()
{
  sub_219034814();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

id sub_2190353F4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_219BF53D4();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_2190354F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v8);
  v3 = type metadata accessor for WelcomeModule();
  v4 = objc_allocWithZone(v3);
  sub_218718690(v8, v4 + OBJC_IVAR____TtC7NewsUI213WelcomeModule_resolver);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  a2[3] = v3;
  a2[4] = &protocol witness table for WelcomeModule;
  *a2 = v5;
  return result;
}

uint64_t sub_219035588@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WelcomeStatus();
  swift_allocObject();
  result = sub_2195808B8();
  a1[3] = v2;
  a1[4] = &off_282A795B8;
  *a1 = result;
  return result;
}

uint64_t sub_2190355E0()
{
  type metadata accessor for WelcomeViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC152E8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC152F0);
  sub_219BE2914();
  type metadata accessor for WelcomeRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC152F8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15300);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15308);
  sub_219BE2914();

  type metadata accessor for WelcomeViewAnimator();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC15310);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15318);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15320);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15328);
  sub_219BE2914();

  sub_2186C6148(0, &unk_27CC15330);
  sub_219BE2904();
}

uint64_t sub_21903597C(void *a1)
{
  v2 = [objc_opt_self() systemBackgroundColor];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.988235294 green:0.262745098 blue:0.368627451 alpha:1.0];
  v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC152E8);
  v5 = v2;
  v6 = v3;
  v7 = v4;
  result = sub_219BE1E34();
  v9 = v32;
  if (!v32)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15318);
  result = sub_219BE1E34();
  if (!v31)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v23 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15310);
  result = sub_219BE1E34();
  if (!v29)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5150);
  result = sub_219BE1E34();
  v10 = v26;
  if (!v26)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE73A0);
  result = sub_219BE1E34();
  if (v25)
  {
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    MEMORY[0x28223BE20](v12);
    v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
    MEMORY[0x28223BE20](v16);
    v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = v23;
    v21 = sub_219037AF4(v5, v6, v23, v9, v22, *v14, *v18, v10, v11, v24);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v21;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_219035DC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC152F8);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC152F0);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15300);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_2190373DC(v5, v6, *v9, *v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A3D8A0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219036068@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v6);
  v3 = type metadata accessor for WelcomeRouter();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = sub_2186CB1F0(v6, v4 + 24);
  a2[3] = v3;
  a2[4] = &off_282A6C120;
  *a2 = v4;
  return result;
}

void sub_2190360E4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WelcomeViewController();
  v2 = sub_219BE1E24();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21903616C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_27CC15340);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE81A8);
  result = sub_219BE1E34();
  v6 = v24;
  if (!v24)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDD0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v22 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E210);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for WelcomeInteractor();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v12 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_userTypePromise;
    sub_219037AA8(0, &qword_27CC15350);
    swift_allocObject();
    *&v11[v12] = sub_219BE2244();
    v13 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_feedLoadedPromise;
    sub_219037AA8(0, &unk_280EE7A80);
    swift_allocObject();
    *&v11[v13] = sub_219BE2244();
    v14 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_minimumTimePromise;
    swift_allocObject();
    *&v11[v14] = sub_219BE2244();
    v15 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_maximumTimePromise;
    swift_allocObject();
    *&v11[v15] = sub_219BE2244();
    v16 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_isCloudKitReachablePromise;
    swift_allocObject();
    *&v11[v16] = sub_219BE2244();
    *&v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_minimumTimer] = 0;
    *&v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_maximumTimer] = 0;
    *&v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_dataManager] = v5;
    v17 = &v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_heartbeatEventService];
    *v17 = v6;
    *(v17 + 1) = v7;
    *&v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_networkReachability] = v8;
    *&v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_appActivityMonitor] = v9;
    v23.receiver = v11;
    v23.super_class = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v18 = objc_msgSendSuper2(&v23, sel_init);
    v19 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_dataManager;
    v20 = *&v18[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_dataManager];
    v21 = v18;
    [v20 setDelegate_];
    [*&v18[v19] suspendLoadingFeed];
    [*&v18[v19] beginFetchingUserType];
    [*&v21[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_networkReachability] addObserver_];
    sub_218CCAAFC();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    *v22 = v21;
    v22[1] = &off_282A41E00;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219036514@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for WelcomeTracker();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;

    sub_219BDD154();

    a2[3] = v5;
    a2[4] = &off_282A43958;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2190365EC(uint64_t *a1)
{
  v1 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_27CC15330);
  v2 = sub_219BE1E24();
  if (!v2)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v3 = v2;
  [v2 setDisplayLargeIcon_];
  [v3 setDisplayCaptionText_];
  v4 = v3;
  v5 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v6 = [v4 view];
  if (!v6)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v7 = v6;
  v8 = &selRef_boldSystemFontOfSize_;
  v9 = [v6 subviews];

  sub_2186C6148(0, &qword_280E8DAE0);
  v10 = sub_219BF5924();

  if (v10 >> 62)
  {
    goto LABEL_23;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v73 = v4;
  if (v11)
  {
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_52;
        }

        v12 = *(v10 + 32);
      }

      v13 = v12;

      v14 = [v13 *(v8 + 1568)];

      v10 = sub_219BF5924();
      if (v10 >> 62)
      {
        v15 = sub_219BF7214();
        if (!v15)
        {
          break;
        }
      }

      else
      {
        v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          break;
        }
      }

      v75 = v1;
      v16 = 0;
      v4 = (v10 & 0xC000000000000001);
      v1 = (v10 & 0xFFFFFFFFFFFFFF8);
      v5 = 0x277D75000;
      while (1)
      {
        if (v4)
        {
          v17 = MEMORY[0x21CECE0F0](v16, v10);
        }

        else
        {
          if (v16 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v17 = *(v10 + 8 * v16 + 32);
        }

        v8 = v17;
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          v76 = v19;
          goto LABEL_20;
        }

        ++v16;
        if (v18 == v15)
        {
          v76 = 0;
LABEL_20:
          v4 = v73;
          v1 = v75;
          v8 = 0x278248000;
          v5 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v73 = v4;
    }

    while (sub_219BF7214());
  }

  v76 = 0;
LABEL_28:

  v20 = [v76 attributedText];
  v21 = [v4 v5[253]];

  if (!v21)
  {
    goto LABEL_74;
  }

  v10 = v8;
  v22 = [v21 *(v8 + 1568)];

  v8 = sub_219BF5924();
  if (v8 >> 62)
  {
    goto LABEL_49;
  }

  v23 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v75 = v20;
  if (v23)
  {
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
LABEL_52:
        v24 = MEMORY[0x21CECE0F0](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_72;
        }

        v24 = *(v8 + 32);
      }

      v25 = v24;

      v26 = [v25 (v10 + 3827)];

      v8 = sub_219BF5924();
      if (v8 >> 62)
      {
        v27 = sub_219BF7214();
        if (!v27)
        {
          break;
        }
      }

      else
      {
        v27 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          break;
        }
      }

      v28 = v1;
      v29 = 0;
      v1 = (v8 & 0xFFFFFFFFFFFFFF8);
      v20 = 0x277D75000;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x21CECE0F0](v29, v8);
        }

        else
        {
          if (v29 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v30 = *(v8 + 8 * v29 + 32);
        }

        v31 = v30;
        v10 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v74 = v32;
          goto LABEL_46;
        }

        ++v29;
        if (v10 == v27)
        {
          v74 = 0;
LABEL_46:
          v1 = v28;
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v75 = v20;
    }

    while (sub_219BF7214());
  }

  v74 = 0;
LABEL_55:

  v33 = [v74 image];
  v34 = v1;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_219BE1E34();
  v35 = v83;
  if (v83 == 2)
  {
    goto LABEL_75;
  }

  v36 = sub_2190353F4();
  LOBYTE(v83) = 0;
  sub_218F5955C(v36, [objc_allocWithZone(MEMORY[0x277D755B8]) init], v81);
  v72 = v33;
  if (v75)
  {
    v37 = v75;
    if ([v37 length] && v33)
    {
      LOBYTE(v83) = v35 & 1;
      v38 = v33;
LABEL_62:
      v39 = v38;
      v40 = v82;
      v41 = v37;
LABEL_66:
      sub_218F5955C(v41, v39, v82);
      sub_218C4F040(v81);
      goto LABEL_67;
    }

    v37 = v37;
    if ([v37 length])
    {
      LOBYTE(v83) = v35 & 1;
      v38 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      goto LABEL_62;
    }
  }

  if (v33)
  {
    LOBYTE(v83) = v35 & 1;
    v42 = v33;
    v41 = sub_2190353F4();
    v40 = v82;
    v39 = v42;
    goto LABEL_66;
  }

  v40 = v81;
LABEL_67:
  v43 = v40[16];
  v70 = v40[15];
  v71 = v43;
  v44 = v40[14];
  v68 = v40[13];
  v69 = v44;
  v45 = v40[12];
  v66 = v40[11];
  v67 = v45;
  v46 = v40[10];
  v64 = v40[9];
  v65 = v46;
  v63 = v40[8];
  v62 = *(v40 + 3);
  v47 = v40[4];
  v61 = v40[5];
  v49 = v40[2];
  v48 = v40[3];
  v50 = *v40;
  v51 = v40[1];
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_2186C709C(0, &qword_27CC15320);
  sub_219BE1E34();
  if (!v80)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_2186C709C(0, &qword_27CC15308);
  sub_219BE1E34();
  if (v78)
  {
    *&v83 = v50;
    *(&v83 + 1) = v51;
    v84 = v49;
    v85 = v48;
    v86 = v47;
    v87 = v61;
    v88 = v62;
    v89 = v63;
    v90 = v64;
    v91 = v65;
    v92 = v66;
    v93 = v67;
    v94 = v68;
    v95 = v69;
    v96 = v70;
    v97 = v71;
    v52 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    MEMORY[0x28223BE20](v52);
    v54 = (&v60 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54);
    v56 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
    MEMORY[0x28223BE20](v56);
    v58 = (&v60 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58);
    sub_219037644(&v83, *v54, *v58);

    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v79);
    return;
  }

LABEL_77:
  __break(1u);
}

uint64_t sub_219036E8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for WelcomeViewAnimator();
  result = sub_219BE1E24();
  if (result)
  {
    a3[3] = v5;
    a3[4] = a2;
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219036F1C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15328);
  result = sub_219BE1E34();
  if (v23)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v8);
    v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for WelcomeViewStylerFactory();
    v21[3] = v13;
    v21[4] = &off_282A3BDE8;
    v21[0] = v12;
    v14 = a2(0);
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
    MEMORY[0x28223BE20](v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[5] = v13;
    v15[6] = &off_282A3BDE8;
    v15[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a4[3] = v14;
    a4[4] = a3;
    *a4 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219037154@<X0>(uint64_t *a1@<X8>)
{
  v11[3] = &type metadata for WelcomeColorStyler;
  v11[4] = &off_282A3FDC0;
  v11[0] = [objc_opt_self() systemBackgroundColor];
  v11[1] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.988235294 green:0.262745098 blue:0.368627451 alpha:1.0];
  v11[2] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  v2 = type metadata accessor for WelcomeViewStylerFactory();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v11, &type metadata for WelcomeColorStyler);
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = *(v6 + 2);
  *(v3 + 40) = &type metadata for WelcomeColorStyler;
  *(v3 + 48) = &off_282A3FDC0;
  *(v3 + 16) = *v6;
  *(v3 + 32) = v8;
  result = __swift_destroy_boxed_opaque_existential_1(v11);
  a1[3] = v2;
  a1[4] = &off_282A3BDE8;
  *a1 = v3;
  return result;
}

uint64_t sub_219037304()
{
  v0 = objc_opt_self();
  v1 = sub_219BF53D4();
  v2 = [v0 linkWithBundleIdentifier_];

  if (v2)
  {
    return v2;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

void *sub_2190373DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for WelcomeRouter();
  v32[3] = v9;
  v32[4] = &off_282A6C120;
  v32[0] = a3;
  v30 = v8;
  v31 = &off_282A43958;
  v29[0] = a4;
  type metadata accessor for WelcomeEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v27 = v9;
  v28 = &off_282A6C120;
  v25 = &off_282A43958;
  *&v26 = v19;
  v24 = v8;
  *&v23 = v20;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v26, (v10 + 6));
  sub_2186CB1F0(&v23, (v10 + 11));
  *(a1 + OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_delegate + 8) = &off_282A3D878;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v10;
}

uint64_t sub_219037644(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for WelcomeViewRenderer();
  v29[3] = v7;
  v29[4] = &off_282A44F28;
  v29[0] = a2;
  v27 = v6;
  v28 = &off_282A42FD8;
  v26[0] = a3;
  type metadata accessor for WelcomeViewAnimator();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v29, v7);
  MEMORY[0x28223BE20](v9);
  v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  MEMORY[0x28223BE20](v13);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v11;
  v18 = *v15;
  *(v8 + 184) = v7;
  *(v8 + 192) = &off_282A44F28;
  *(v8 + 160) = v17;
  *(v8 + 224) = v6;
  *(v8 + 232) = &off_282A42FD8;
  *(v8 + 200) = v18;
  v19 = objc_allocWithZone(type metadata accessor for WelcomeView());
  v20 = [v19 initWithFrame_];
  v21 = a1[4];
  *(v8 + 104) = a1[5];
  v22 = a1[7];
  *(v8 + 120) = a1[6];
  *(v8 + 136) = v22;
  v23 = *a1;
  *(v8 + 40) = a1[1];
  v24 = a1[3];
  *(v8 + 56) = a1[2];
  *(v8 + 72) = v24;
  *(v8 + 88) = v21;
  *(v8 + 16) = v20;
  *(v8 + 152) = *(a1 + 16);
  *(v8 + 24) = v23;
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v8;
}

uint64_t sub_2190378BC()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186C709C(0, qword_280ED4338);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280ED4330);
  sub_219BE2914();

  (*(v1 + 104))(v3, *MEMORY[0x277D6CF10], v0);
  sub_219BE19F4();

  (*(v1 + 8))(v3, v0);
  sub_219BE2054();
  sub_219BE28F4();
}

void sub_219037AA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_219BE2254();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

char *sub_219037AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v55 = a8;
  v52 = a4;
  v53 = a5;
  v56 = a10;
  v54 = a9;
  v72[3] = &type metadata for WelcomeColorStyler;
  v72[4] = &off_282A3FDC0;
  v72[0] = a1;
  v72[1] = a2;
  v72[2] = a3;
  v12 = type metadata accessor for WelcomeViewAnimator();
  v71[3] = v12;
  v71[4] = &off_282A44028;
  v71[0] = a6;
  v69 = v12;
  v70 = &off_282A44038;
  v68[0] = a7;
  v13 = type metadata accessor for WelcomeViewController();
  v14 = objc_allocWithZone(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v72, &type metadata for WelcomeColorStyler);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v71, v12);
  MEMORY[0x28223BE20](v19);
  v21 = (&v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
  MEMORY[0x28223BE20](v23);
  v25 = (&v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *(v17 + 2);
  v28 = *v21;
  v29 = *v25;
  v66 = &type metadata for WelcomeColorStyler;
  v67 = &off_282A3FDC0;
  v64 = *v17;
  v65 = v27;
  v62 = v12;
  v63 = &off_282A44028;
  v61[0] = v28;
  v60[3] = v12;
  v60[4] = &off_282A44038;
  v60[0] = v29;
  v30 = &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame];
  *v30 = 0;
  v30[1] = 0;
  v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_startedFirstAnimation] = 0;
  sub_218718690(&v64, &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_colorStyler]);
  v31 = &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_eventHandler];
  v32 = v53;
  *v31 = v52;
  v31[1] = v32;
  sub_218718690(v61, &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewProvider]);
  sub_218718690(v60, &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator]);
  v33 = &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_toolbarManager];
  v34 = v54;
  *v33 = v55;
  v33[1] = v34;
  sub_218718690(a10, &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_sceneStateManager]);
  v59.receiver = v14;
  v59.super_class = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v35 = objc_msgSendSuper2(&v59, sel_initWithNibName_bundle_, 0, 0);
  v36 = *&v35[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_eventHandler + 8];
  ObjectType = swift_getObjectType();
  v38 = *(v36 + 16);
  v39 = v35;
  swift_unknownObjectRetain();
  v38(v35, &off_282A96928, ObjectType, v36);
  swift_unknownObjectRelease();
  [*(*(*(*__swift_project_boxed_opaque_existential_1(v61 v62) + 16) + OBJC:sel_addTarget_action_forControlEvents_ IVAR:v39 :sel_didTapContinueButton :64 :? TtC7NewsUI211WelcomeView:? footer) + OBJC:? IVAR:? :? :? :? TtCC7NewsUI211WelcomeView6Footer:?continueButton)];
  v40 = *(*(*(*__swift_project_boxed_opaque_existential_1(v61, v62) + 16) + OBJC_IVAR____TtC7NewsUI211WelcomeView_footer) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink);
  [v40 setDelegate_];

  v42 = *MEMORY[0x277D76810];
  v57 = *MEMORY[0x277D764C8];
  v41 = v57;
  v58 = v42;
  v43 = objc_opt_self();
  v44 = v41;
  v45 = v42;
  v46 = v44;
  v47 = [v43 defaultCenter];
  [v47 addObserver:v39 selector:sel_updateStyling name:v46 object:0];

  type metadata accessor for Name(0);
  v48 = v45;
  swift_arrayDestroy();
  v49 = [v43 defaultCenter];
  [v49 addObserver:v39 selector:sel_updateStyling name:v48 object:0];

  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(&v64);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return v39;
}

id sub_2190380A8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  [v4 ts_settlingDuration];
  v6 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v4 timingParameters:v5];
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_218793E0C;
  v9[3] = &block_descriptor_89;
  v7 = _Block_copy(v9);

  [v6 addAnimations_];
  _Block_release(v7);

  return v6;
}

uint64_t sub_2190381E4()
{
  sub_21903875C();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AudioFeedRouteModel();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21914D700(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_219038818(v3, sub_21903875C);
    return 0;
  }

  else
  {
    sub_2190387B4(v3, v7);
    __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
    v9 = sub_2196D5548(v7);
    sub_219038818(v7, type metadata accessor for AudioFeedRouteModel);
    return v9;
  }
}

uint64_t sub_219038380()
{
  sub_21903875C();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v16[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for AudioFeedRouteModel();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21914D700(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v7 = sub_21903875C;
    v8 = v2;
  }

  else
  {
    sub_2190387B4(v2, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_218AB7640();
      v11 = sub_219BE5F84();
      v13 = v12;
      __swift_project_boxed_opaque_existential_1((v10 + 48), *(v10 + 72));
      v16[0] = v11;
      v16[1] = v13;
      v16[2] = 0;
      v16[3] = 0;
      v17 = 0;
      sub_2196D4AD0(v6, v16);
      sub_219038818(v6, type metadata accessor for AudioFeedRouteModel);

      return swift_unknownObjectRelease();
    }

    v7 = type metadata accessor for AudioFeedRouteModel;
    v8 = v6;
  }

  return sub_219038818(v8, v7);
}

uint64_t sub_219038578(uint64_t a1)
{
  v2 = sub_219BE8F74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_219BDD154();

  v8[1] = 0xF000000000000000;
  sub_219BE7864();
  return sub_21914E00C();
}

uint64_t sub_2190386E8()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_21903875C()
{
  if (!qword_27CC15358)
  {
    type metadata accessor for AudioFeedRouteModel();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15358);
    }
  }
}

uint64_t sub_2190387B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedRouteModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219038818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219038878(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_219A67054(a1, v4);
}

uint64_t sub_2190388F8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_219039398(v6);
  return sub_219BF73E4();
}

uint64_t sub_219038974(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_219039294(v6);
  return sub_219BF73E4();
}

uint64_t sub_2190389F0(void *a1, char a2)
{
  sub_21903EA54(0, &qword_280E8C3B8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21903EA00();
  sub_219BF7B44();
  v10[15] = a2;
  sub_218A835E8();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_219038B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x617453746E657665 && a2 == 0xEB00000000737574)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_219038BF4(uint64_t a1)
{
  v2 = sub_21903EA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219038C30(uint64_t a1)
{
  v2 = sub_21903EA00();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_219038C6C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21903E868(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_219038CB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696D6F637075;
  if (v2 != 1)
  {
    v4 = 1702259052;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C616E6966;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696D6F637075;
  if (*a2 != 1)
  {
    v8 = 1702259052;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C616E6966;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_219038DA4()
{
  v1 = *v0;
  strcpy(v7, "eventStatus=");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  v2 = 0xE800000000000000;
  v3 = 0x676E696D6F637075;
  if (v1 != 1)
  {
    v3 = 1702259052;
    v2 = 0xE400000000000000;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6C616E6966;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v4, v5);

  return v7[0];
}

BOOL sub_219038E4C(uint64_t a1, char a2)
{
  v3 = sub_219BF4AC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3FA4();
  v7 = (v4 + 8);
  if (a2)
  {
    if (a2 == 1)
    {
      v8 = sub_219BF4A74();
    }

    else
    {
      v8 = sub_219BF4A94();
    }
  }

  else
  {
    v8 = sub_219BF4A84();
  }

  v9 = v8;
  (*v7)(v6, v3);
  return (v9 & 1) != 0;
}

unint64_t sub_219038F68(char a1)
{
  if (!a1)
  {

    v6 = sub_21975902C(v2);
    sub_2190388F8(&v6);
    return v6;
  }

  if (a1 == 1)
  {

    v6 = sub_21975902C(v1);
    sub_219038974(&v6);
    return v6;
  }

  v6 = sub_21975902C(v4);
  sub_219038974(&v6);
  v5 = v6;

  return sub_218B18BEC(v5);
}

uint64_t sub_219039048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  v16[3] = a2;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF4AC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3FA4();
  sub_219BF4AB4();
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_2189DD39C(v5);
  }

  else
  {
    (*(v11 + 32))(v13, v5, v10);
    v14 = sub_219BDBF14();
    (*(v11 + 8))(v13, v10);
    if (v14)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_219039294(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_219BF4044();
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21903A430(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_21903949C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_219039398(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_219BF4044();
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21903B3C4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_219039A78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21903949C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v60 - v12;
  sub_218C82694();
  v76 = v13;
  MEMORY[0x28223BE20](v13);
  v79 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v75 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v74 = &v60 - v18;
  v73 = sub_219BF4AC4();
  v19 = MEMORY[0x28223BE20](v73);
  v72 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v19);
  v71 = &v60 - v23;
  v61 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v69 = (v9 + 48);
    v70 = (v22 + 8);
    v65 = (v9 + 32);
    v68 = (v9 + 8);
    v77 = v24;
    v25 = (v24 + 8 * a3 - 8);
    v26 = a1 - a3;
LABEL_7:
    v63 = v25;
    v64 = a3;
    v28 = *(v77 + 8 * a3);
    v62 = v26;
    while (1)
    {
      v78 = v26;
      v29 = *v25;

      v30 = v71;
      v81 = v28;
      sub_219BF3FA4();
      v31 = v8;
      v32 = v74;
      sub_219BF4AB4();
      v33 = *v70;
      v34 = v73;
      (*v70)(v30, v73);
      v35 = v72;
      v80 = v29;
      sub_219BF3FA4();
      v36 = v75;
      sub_219BF4AB4();
      v33(v35, v34);
      v37 = *(v76 + 48);
      v38 = v32;
      v8 = v31;
      v39 = v79;
      sub_218A5DD60(v38, v79);
      sub_218A5DD60(v36, v39 + v37);
      v40 = *v69;
      v41 = (*v69)(v39, 1, v8);
      v42 = v40(v39 + v37, 1, v8);
      if (v41 == 1)
      {
        if (v42 != 1)
        {
          sub_2189DD39C(v79 + v37);
        }

        goto LABEL_5;
      }

      if (v42 == 1)
      {
        (*v68)(v79, v8);

        v43 = v78;
      }

      else
      {
        v44 = v66;
        v45 = *v65;
        v46 = v79;
        (*v65)(v66, v79, v8);
        v47 = v46 + v37;
        v48 = v67;
        v45(v67, v47, v8);
        if (sub_219BDBC94())
        {
          v49 = sub_219BF3F84();
          v51 = v50;
          if (v49 == sub_219BF3F84() && v51 == v52)
          {

            v27 = *v68;
            (*v68)(v67, v8);
            v27(v66, v8);
LABEL_5:

LABEL_6:
            a3 = v64 + 1;
            v25 = v63 + 1;
            v26 = v62 - 1;
            if (v64 + 1 == v61)
            {
              return result;
            }

            goto LABEL_7;
          }

          v53 = sub_219BF78F4();

          v54 = *v68;
          (*v68)(v67, v8);
          v54(v66, v8);

          v43 = v78;
          if ((v53 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v55 = sub_219BDBC24();
          v56 = v48;
          v57 = *v68;
          (*v68)(v56, v8);
          v57(v44, v8);

          v43 = v78;
          if ((v55 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      if (!v77)
      {
        break;
      }

      v58 = *v25;
      v28 = v25[1];
      *v25 = v28;
      v25[1] = v58;
      --v25;
      v59 = __CFADD__(v43, 1);
      v26 = v43 + 1;
      if (v59)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_219039A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v128 = sub_219BDBD34();
  v8 = *(v128 - 8);
  v9 = MEMORY[0x28223BE20](v128);
  v107 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v106 = &v101[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v116 = &v101[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v101[-v15];
  sub_218C82694();
  v125 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v111 = &v101[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v126 = &v101[-v20];
  sub_2186DCF58();
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v110 = &v101[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v113 = &v101[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v120 = &v101[-v27];
  MEMORY[0x28223BE20](v26);
  v119 = &v101[-v28];
  v124 = sub_219BF4AC4();
  v29 = MEMORY[0x28223BE20](v124);
  v109 = &v101[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v101[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v118 = &v101[-v34];
  result = MEMORY[0x28223BE20](v33);
  v117 = &v101[-v37];
  v102 = a2;
  if (a3 != a2)
  {
    v38 = *a4;
    v122 = (v8 + 48);
    v123 = (v36 + 8);
    v114 = (v8 + 32);
    v115 = (v8 + 8);
    v121 = v38;
    v39 = v38 + 8 * a3 - 8;
    v40 = a1 - a3;
    v112 = v16;
LABEL_7:
    v105 = a3;
    v103 = v40;
    v104 = v39;
    v43 = v39;
    while (1)
    {
      v127 = v40;
      v44 = *v43;

      v45 = v117;
      sub_219BF3FA4();
      v46 = v119;
      sub_219BF4AA4();
      v47 = *v123;
      v48 = v45;
      v49 = v124;
      (*v123)(v48, v124);
      v50 = v118;
      v129 = v44;
      sub_219BF3FA4();
      v51 = v120;
      sub_219BF4AA4();
      v47(v50, v49);
      v52 = v126;
      v53 = &v126[*(v125 + 48)];
      sub_218A5DD60(v46, v126);
      sub_218A5DD60(v51, v53);
      v54 = *v122;
      v55 = v128;
      LODWORD(v52) = (*v122)(v52, 1, v128);
      v56 = v54(v53, 1, v55);
      if (v52 == 1)
      {
        if (v56 != 1)
        {
          goto LABEL_12;
        }

        v57 = v108;
        sub_219BF3FA4();
        sub_219BF4AB4();
        v58 = v57;
        v59 = v124;
        v47(v58, v124);
        v60 = v109;
        sub_219BF3FA4();
        v61 = v110;
        sub_219BF4AB4();
        v47(v60, v59);
        v62 = v111;
        v53 = &v111[*(v125 + 48)];
        sub_218A5DD60(v113, v111);
        v63 = v61;
        v64 = v128;
        sub_218A5DD60(v63, v53);
        LODWORD(v62) = v54(v62, 1, v64);
        v65 = v54(v53, 1, v64);
        if (v62 == 1)
        {
          if (v65 != 1)
          {
LABEL_12:
            sub_2189DD39C(v53);
          }

LABEL_13:

          v66 = v127;
          goto LABEL_21;
        }

        if (v65 == 1)
        {
          (*v115)(v111, v128);
          goto LABEL_5;
        }

        v84 = *v114;
        v85 = v106;
        v86 = v128;
        (*v114)(v106, v111, v128);
        v87 = v107;
        v84(v107, v53, v86);
        if (sub_219BDBC94())
        {
          v88 = sub_219BF3F84();
          v90 = v89;
          if (v88 == sub_219BF3F84() && v90 == v91)
          {

            v92 = *v115;
            v93 = v128;
            (*v115)(v107, v128);
            v92(v106, v93);
            goto LABEL_13;
          }

          v98 = sub_219BF78F4();

          v99 = *v115;
          v100 = v128;
          (*v115)(v107, v128);
          v99(v106, v100);

          v66 = v127;
          if (v98)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v94 = sub_219BDBC24();
          v95 = *v115;
          v96 = v87;
          v97 = v128;
          (*v115)(v96, v128);
          v95(v85, v97);

          v66 = v127;
          if (v94)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        if (v56 == 1)
        {
          (*v115)(v126, v128);
          goto LABEL_5;
        }

        v67 = *v114;
        v68 = v112;
        v69 = v128;
        (*v114)(v112, v126, v128);
        v70 = v116;
        v67(v116, v53, v69);
        if (sub_219BDBC94())
        {
          v71 = sub_219BF3F84();
          v73 = v72;
          if (sub_219BF3F84() == v71 && v74 == v73)
          {

            v41 = *v115;
            v42 = v128;
            (*v115)(v116, v128);
            v41(v68, v42);
LABEL_5:

LABEL_6:
            a3 = v105 + 1;
            v39 = v104 + 8;
            v40 = v103 - 1;
            if (v105 + 1 == v102)
            {
              return result;
            }

            goto LABEL_7;
          }

          v75 = sub_219BF78F4();

          v76 = *v115;
          v77 = v128;
          (*v115)(v116, v128);
          v76(v68, v77);

          v66 = v127;
          if ((v75 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v78 = sub_219BDBC14();
          v79 = *v115;
          v80 = v70;
          v81 = v128;
          (*v115)(v80, v128);
          v79(v68, v81);

          v66 = v127;
          if ((v78 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

LABEL_21:
      if (!v121)
      {
        __break(1u);
        return result;
      }

      v82 = *v43;
      *v43 = v43[1];
      v43[1] = v82;
      --v43;
      v83 = __CFADD__(v66, 1);
      v40 = v66 + 1;
      if (v83)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_21903A430(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v170 = a4;
  v171 = a1;
  v198 = sub_219BDBD34();
  v7 = *(v198 - 8);
  v8 = MEMORY[0x28223BE20](v198);
  v187 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v168 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v173 = &v168 - v14;
  MEMORY[0x28223BE20](v13);
  v172 = &v168 - v15;
  sub_218C82694();
  v17 = v16;
  v18 = MEMORY[0x28223BE20](v16);
  v200 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v181 = &v168 - v20;
  sub_2186DCF58();
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v191 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v190 = &v168 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v180 = &v168 - v27;
  MEMORY[0x28223BE20](v26);
  v179 = &v168 - v28;
  v197 = sub_219BF4AC4();
  v29 = MEMORY[0x28223BE20](v197);
  v189 = &v168 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v188 = &v168 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v178 = &v168 - v34;
  result = MEMORY[0x28223BE20](v33);
  v177 = &v168 - v37;
  v38 = a3[1];
  if (v38 >= 1)
  {
    v39 = 0;
    v194 = (v7 + 48);
    v195 = (v36 + 8);
    v185 = (v7 + 32);
    v192 = (v7 + 8);
    v40 = MEMORY[0x277D84F90];
    v176 = a3;
    v186 = v12;
    v196 = v17;
    while (1)
    {
      v41 = v39++;
      v174 = v40;
      if (v39 >= v38)
      {
        v81 = v170;
      }

      else
      {
        v42 = *a3;
        v7 = *(*a3 + 8 * v39);
        v43 = *(*a3 + 8 * v41);

        LODWORD(v199) = sub_219ACD918(v7, v43);

        v39 = v41 + 2;
        if (v41 + 2 >= v38)
        {
          v81 = v170;
          if (v199)
          {
LABEL_26:
            if (v39 < v41)
            {
              goto LABEL_147;
            }

LABEL_27:
            if (v41 < v39)
            {
              v75 = 8 * v39 - 8;
              v76 = 8 * v41;
              v77 = v39;
              v78 = v41;
              do
              {
                if (v78 != --v77)
                {
                  v79 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_153;
                  }

                  v80 = *(v79 + v76);
                  *(v79 + v76) = *(v79 + v75);
                  *(v79 + v75) = v80;
                }

                ++v78;
                v75 -= 8;
                v76 += 8;
              }

              while (v78 < v77);
            }
          }
        }

        else
        {
          v169 = v5;
          v168 = v41;
          v44 = (v42 + 8 * v41 + 16);
          v193 = v38;
          do
          {
            v184 = v39;
            v47 = *(v44 - 1);
            v46 = *v44;

            v48 = v177;
            v201 = v46;
            sub_219BF3FA4();
            v49 = v179;
            sub_219BF4AB4();
            v50 = *v195;
            v51 = v48;
            v52 = v197;
            (*v195)(v51, v197);
            v53 = v178;
            v202 = v47;
            sub_219BF3FA4();
            v54 = v180;
            sub_219BF4AB4();
            v50(v53, v52);
            v55 = *(v196 + 48);
            v56 = v49;
            v57 = v181;
            sub_218A5DD60(v56, v181);
            sub_218A5DD60(v54, v57 + v55);
            v7 = v194;
            v58 = *v194;
            v59 = v198;
            LODWORD(v46) = (*v194)(v57, 1, v198);
            v60 = v58(v57 + v55, 1, v59);
            if (v46 == 1)
            {
              if (v60 != 1)
              {
                sub_2189DD39C(v181 + v55);
              }

              a3 = v176;
              v39 = v184;
              v45 = v193;
              if (v199)
              {
                v5 = v169;
                v81 = v170;
                v41 = v168;
                if (v184 < v168)
                {
                  goto LABEL_147;
                }

                goto LABEL_27;
              }
            }

            else if (v60 == 1)
            {
              (*v192)(v181, v198);

              a3 = v176;
              v39 = v184;
              v45 = v193;
              if ((v199 & 1) == 0)
              {
                v5 = v169;
                v81 = v170;
                v41 = v168;
                goto LABEL_38;
              }
            }

            else
            {
              v61 = *v185;
              v62 = v172;
              v63 = v181;
              v64 = v198;
              (*v185)(v172, v181, v198);
              v65 = v63 + v55;
              v66 = v173;
              v61(v173, v65, v64);
              if (sub_219BDBC94())
              {
                v67 = sub_219BF3F84();
                v69 = v68;
                if (v67 == sub_219BF3F84() && v69 == v70)
                {
                  v71 = 0;
                }

                else
                {
                  v71 = sub_219BF78F4();
                }

                a3 = v176;
                v39 = v184;
                v45 = v193;

                v72 = v173;
                v62 = v172;
              }

              else
              {
                v71 = sub_219BDBC24();
                v72 = v66;
                a3 = v176;
                v39 = v184;
                v45 = v193;
              }

              v7 = v192;
              v73 = *v192;
              v74 = v198;
              (*v192)(v72, v198);
              v73(v62, v74);

              v40 = v174;
              if ((v199 ^ v71))
              {
                goto LABEL_34;
              }
            }

            ++v39;
            ++v44;
          }

          while (v45 != v39);
          v39 = v45;
LABEL_34:
          v5 = v169;
          v81 = v170;
          v41 = v168;
          if (v199)
          {
            goto LABEL_26;
          }
        }
      }

LABEL_38:
      v82 = a3[1];
      if (v39 >= v82)
      {
        goto LABEL_67;
      }

      if (__OFSUB__(v39, v41))
      {
        goto LABEL_146;
      }

      if (v39 - v41 >= v81)
      {
        goto LABEL_67;
      }

      v83 = v41 + v81;
      if (__OFADD__(v41, v81))
      {
        goto LABEL_148;
      }

      if (v83 >= v82)
      {
        v83 = a3[1];
      }

      if (v83 < v41)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v39 == v83)
      {
        goto LABEL_67;
      }

      v169 = v5;
      v193 = *a3;
      v84 = (v193 + 8 * v39 - 8);
      v168 = v41;
      v85 = v41 - v39;
      v175 = v83;
LABEL_50:
      v183 = v84;
      v184 = v39;
      v87 = *(v193 + 8 * v39);
      v182 = v85;
      v88 = v85;
      while (1)
      {
        v199 = v88;
        v89 = *v84;

        v90 = v188;
        v201 = v87;
        sub_219BF3FA4();
        v91 = v190;
        sub_219BF4AB4();
        v92 = *v195;
        v93 = v197;
        (*v195)(v90, v197);
        v94 = v189;
        v202 = v89;
        sub_219BF3FA4();
        v95 = v191;
        sub_219BF4AB4();
        v92(v94, v93);
        v96 = *(v196 + 48);
        v97 = v91;
        v98 = v200;
        sub_218A5DD60(v97, v200);
        sub_218A5DD60(v95, v98 + v96);
        v7 = v194;
        v99 = *v194;
        v100 = v198;
        v101 = (*v194)(v98, 1, v198);
        v102 = v99(v98 + v96, 1, v100);
        if (v101 == 1)
        {
          if (v102 != 1)
          {
            sub_2189DD39C(v200 + v96);
          }

          goto LABEL_48;
        }

        if (v102 == 1)
        {
          (*v192)(v200, v100);

          goto LABEL_60;
        }

        v103 = v186;
        v104 = *v185;
        v105 = v200;
        (*v185)(v186, v200, v100);
        v106 = v105 + v96;
        v107 = v187;
        v104(v187, v106, v100);
        if (sub_219BDBC94())
        {
          break;
        }

        v114 = sub_219BDBC24();
        v7 = v192;
        v115 = *v192;
        (*v192)(v107, v100);
        v115(v103, v100);

        if ((v114 & 1) == 0)
        {
          goto LABEL_49;
        }

LABEL_60:
        v116 = v199;
        if (!v193)
        {
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        v117 = *v84;
        v87 = v84[1];
        *v84 = v87;
        v84[1] = v117;
        --v84;
        v118 = __CFADD__(v116, 1);
        v88 = v116 + 1;
        if (v118)
        {
          goto LABEL_49;
        }
      }

      v108 = sub_219BF3F84();
      v110 = v109;
      if (v108 != sub_219BF3F84() || v110 != v111)
      {
        break;
      }

      v7 = v192;
      v86 = *v192;
      (*v192)(v187, v100);
      v86(v186, v100);
LABEL_48:

LABEL_49:
      v39 = v184 + 1;
      v84 = v183 + 1;
      v85 = v182 - 1;
      if (v184 + 1 != v175)
      {
        goto LABEL_50;
      }

      v39 = v175;
      v5 = v169;
      a3 = v176;
      v40 = v174;
      v41 = v168;
LABEL_67:
      if (v39 < v41)
      {
        goto LABEL_145;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2191F6B60(0, *(v40 + 2) + 1, 1, v40);
        v40 = result;
      }

      v7 = *(v40 + 2);
      v119 = *(v40 + 3);
      v120 = v7 + 1;
      if (v7 >= v119 >> 1)
      {
        result = sub_2191F6B60((v119 > 1), v7 + 1, 1, v40);
        v40 = result;
      }

      *(v40 + 2) = v120;
      v121 = &v40[16 * v7];
      *(v121 + 4) = v41;
      *(v121 + 5) = v39;
      v122 = *v171;
      if (!*v171)
      {
        goto LABEL_155;
      }

      if (v7)
      {
        while (2)
        {
          v7 = v120 - 1;
          if (v120 >= 4)
          {
            v127 = &v40[16 * v120 + 32];
            v128 = *(v127 - 64);
            v129 = *(v127 - 56);
            v133 = __OFSUB__(v129, v128);
            v130 = v129 - v128;
            if (v133)
            {
              goto LABEL_132;
            }

            v132 = *(v127 - 48);
            v131 = *(v127 - 40);
            v133 = __OFSUB__(v131, v132);
            v125 = v131 - v132;
            v126 = v133;
            if (v133)
            {
              goto LABEL_133;
            }

            v134 = &v40[16 * v120];
            v136 = *v134;
            v135 = *(v134 + 1);
            v133 = __OFSUB__(v135, v136);
            v137 = v135 - v136;
            if (v133)
            {
              goto LABEL_135;
            }

            v133 = __OFADD__(v125, v137);
            v138 = v125 + v137;
            if (v133)
            {
              goto LABEL_138;
            }

            if (v138 >= v130)
            {
              v156 = &v40[16 * v7 + 32];
              v158 = *v156;
              v157 = *(v156 + 1);
              v133 = __OFSUB__(v157, v158);
              v159 = v157 - v158;
              if (v133)
              {
                goto LABEL_142;
              }

              if (v125 < v159)
              {
                v7 = v120 - 2;
              }
            }

            else
            {
LABEL_87:
              if (v126)
              {
                goto LABEL_134;
              }

              v139 = &v40[16 * v120];
              v141 = *v139;
              v140 = *(v139 + 1);
              v142 = __OFSUB__(v140, v141);
              v143 = v140 - v141;
              v144 = v142;
              if (v142)
              {
                goto LABEL_137;
              }

              v145 = &v40[16 * v7 + 32];
              v147 = *v145;
              v146 = *(v145 + 1);
              v133 = __OFSUB__(v146, v147);
              v148 = v146 - v147;
              if (v133)
              {
                goto LABEL_140;
              }

              if (__OFADD__(v143, v148))
              {
                goto LABEL_141;
              }

              if (v143 + v148 < v125)
              {
                goto LABEL_101;
              }

              if (v125 < v148)
              {
                v7 = v120 - 2;
              }
            }
          }

          else
          {
            if (v120 == 3)
            {
              v123 = *(v40 + 4);
              v124 = *(v40 + 5);
              v133 = __OFSUB__(v124, v123);
              v125 = v124 - v123;
              v126 = v133;
              goto LABEL_87;
            }

            v149 = &v40[16 * v120];
            v151 = *v149;
            v150 = *(v149 + 1);
            v133 = __OFSUB__(v150, v151);
            v143 = v150 - v151;
            v144 = v133;
LABEL_101:
            if (v144)
            {
              goto LABEL_136;
            }

            v152 = &v40[16 * v7];
            v154 = *(v152 + 4);
            v153 = *(v152 + 5);
            v133 = __OFSUB__(v153, v154);
            v155 = v153 - v154;
            if (v133)
            {
              goto LABEL_139;
            }

            if (v155 < v143)
            {
              break;
            }
          }

          v160 = v7 - 1;
          if (v7 - 1 >= v120)
          {
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
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
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          if (!*a3)
          {
            goto LABEL_152;
          }

          v161 = *&v40[16 * v160 + 32];
          v162 = *&v40[16 * v7 + 40];
          sub_21903CBDC((*a3 + 8 * v161), (*a3 + 8 * *&v40[16 * v7 + 32]), (*a3 + 8 * v162), v122);
          if (v5)
          {
          }

          if (v162 < v161)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_218C81048(v40);
          }

          if (v160 >= *(v40 + 2))
          {
            goto LABEL_131;
          }

          v163 = &v40[16 * v160];
          *(v163 + 4) = v161;
          *(v163 + 5) = v162;
          v203 = v40;
          result = sub_218C80FBC(v7);
          v40 = v203;
          v120 = *(v203 + 2);
          if (v120 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v38 = a3[1];
      if (v39 >= v38)
      {
        goto LABEL_118;
      }
    }

    v112 = sub_219BF78F4();

    v7 = v192;
    v113 = *v192;
    (*v192)(v187, v100);
    v113(v186, v100);

    if ((v112 & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_60;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_118:
  v7 = *v171;
  if (!*v171)
  {
    goto LABEL_156;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_150:
    result = sub_218C81048(v40);
    v40 = result;
  }

  v203 = v40;
  v164 = *(v40 + 2);
  if (v164 < 2)
  {
  }

  while (*a3)
  {
    v165 = *&v40[16 * v164];
    v166 = *&v40[16 * v164 + 24];
    sub_21903CBDC((*a3 + 8 * v165), (*a3 + 8 * *&v40[16 * v164 + 16]), (*a3 + 8 * v166), v7);
    if (v5)
    {
    }

    if (v166 < v165)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_218C81048(v40);
    }

    if (v164 - 2 >= *(v40 + 2))
    {
      goto LABEL_144;
    }

    v167 = &v40[16 * v164];
    *v167 = v165;
    *(v167 + 1) = v166;
    v203 = v40;
    result = sub_218C80FBC(v164 - 1);
    v40 = v203;
    v164 = *(v203 + 2);
    if (v164 <= 1)
    {
    }
  }

LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t sub_21903B3C4(uint64_t **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v265 = a4;
  v270 = a1;
  v309 = sub_219BDBD34();
  v7 = *(v309 - 8);
  v8 = MEMORY[0x28223BE20](v309);
  v10 = &v261 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v261 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v261 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v261 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v264 = &v261 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v263 = &v261 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v273 = &v261 - v25;
  MEMORY[0x28223BE20](v24);
  v272 = &v261 - v26;
  sub_218C82694();
  v305 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v292 = &v261 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v306 = &v261 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v274 = &v261 - v33;
  MEMORY[0x28223BE20](v32);
  v281 = &v261 - v34;
  sub_2186DCF58();
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v290 = &v261 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v293 = &v261 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v300 = &v261 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v299 = &v261 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v269 = &v261 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v268 = &v261 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v279 = &v261 - v49;
  MEMORY[0x28223BE20](v48);
  v278 = &v261 - v50;
  v304 = sub_219BF4AC4();
  v51 = MEMORY[0x28223BE20](v304);
  v289 = &v261 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v288 = &v261 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v56 = MEMORY[0x28223BE20](v55);
  v298 = &v261 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v267 = &v261 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v266 = &v261 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v271 = (&v261 - v63);
  result = MEMORY[0x28223BE20](v62);
  if (a3[1] >= 1)
  {
    v68 = a3[1];
    v287 = v67;
    v69 = 0;
    v302 = v7 + 6;
    v303 = (v65 + 8);
    v294 = (v7 + 4);
    v295 = v7 + 1;
    v70 = MEMORY[0x277D84F90];
    v277 = a3;
    v286 = v10;
    v285 = v13;
    v296 = v19;
    v297 = v16;
    v276 = &v261 - v66;
    v71 = a3;
    v72 = v68;
    while (1)
    {
      v73 = v69++;
      v280 = v70;
      if (v69 >= v72)
      {
        v145 = v265;
      }

      else
      {
        v74 = *v71;
        v7 = *(*v71 + 8 * v69);
        v75 = *(*v71 + 8 * v73);

        LODWORD(v301) = sub_219ACDD6C(v7, v75);

        v69 = v73 + 2;
        if (v73 + 2 < v72)
        {
          v262 = v73;
          v76 = (v74 + 8 * v73 + 16);
          v7 = v271;
          v283 = v72;
          while (1)
          {
            v284 = v5;
            v291 = v69;
            v79 = *(v76 - 1);
            v78 = *v76;

            v80 = v276;
            v307 = v78;
            sub_219BF3FA4();
            v81 = v278;
            sub_219BF4AA4();
            v82 = v304;
            v83 = *v303;
            (*v303)(v80, v304);
            v308 = v79;
            sub_219BF3FA4();
            v84 = v279;
            sub_219BF4AA4();
            v83(v7, v82);
            v85 = *(v305 + 48);
            v86 = v81;
            v87 = v281;
            sub_218A5DD60(v86, v281);
            sub_218A5DD60(v84, v87 + v85);
            v88 = *v302;
            v89 = v309;
            LODWORD(v78) = (*v302)(v87, 1, v309);
            v90 = v88(v87 + v85, 1, v89);
            if (v78 == 1)
            {
              if (v90 == 1)
              {
                v91 = v266;
                sub_219BF3FA4();
                v92 = v268;
                sub_219BF4AB4();
                v93 = v91;
                v94 = v304;
                v83(v93, v304);
                v95 = v267;
                sub_219BF3FA4();
                v96 = v269;
                sub_219BF4AB4();
                v83(v95, v94);
                v97 = *(v305 + 48);
                v98 = v274;
                sub_218A5DD60(v92, v274);
                sub_218A5DD60(v96, v98 + v97);
                v99 = v309;
                v100 = v88(v98, 1, v309);
                v101 = v88(v98 + v97, 1, v99);
                if (v100 == 1)
                {
                  v71 = v277;
                  v70 = v280;
                  if (v101 != 1)
                  {
                    sub_2189DD39C(v274 + v97);
                  }

                  v102 = 0;
LABEL_24:
                  v7 = v271;
                  v69 = v291;
                  v5 = v284;
                }

                else
                {
                  v71 = v277;
                  if (v101 == 1)
                  {
                    (*v295)(v274, v309);
                    v102 = 1;
                    v70 = v280;
                    goto LABEL_24;
                  }

                  v121 = v277;
                  v122 = *v294;
                  v123 = v263;
                  v124 = v274;
                  v125 = v309;
                  (*v294)(v263, v274, v309);
                  v126 = v124 + v97;
                  v127 = v264;
                  (v122)(v264, v126, v125);
                  v128 = sub_219BDBC94();
                  v7 = v271;
                  v69 = v291;
                  if (v128)
                  {
                    v129 = sub_219BF3F84();
                    v131 = v130;
                    v132 = sub_219BF3F84();
                    v70 = v280;
                    if (v129 == v132 && v131 == v133)
                    {
                      v102 = 0;
                    }

                    else
                    {
                      v102 = sub_219BF78F4();
                    }

                    v137 = *v295;
                    v138 = v309;
                    (*v295)(v264, v309);
                    v137(v263, v138);
                  }

                  else
                  {
                    v102 = sub_219BDBC24();
                    v134 = v127;
                    v135 = *v295;
                    v136 = v309;
                    (*v295)(v134, v309);
                    v135(v123, v136);
                    v70 = v280;
                  }

                  v5 = v284;
                  v71 = v121;
                }

                v77 = v283;

                v113 = v102 ^ 1;
                goto LABEL_38;
              }

              sub_2189DD39C(v281 + v85);

              v71 = v277;
              v70 = v280;
              v69 = v291;
              v5 = v284;
              v77 = v283;
              if ((v301 & 1) == 0)
              {
                v145 = v265;
                v73 = v262;
                goto LABEL_52;
              }
            }

            else
            {
              if (v90 != 1)
              {
                v103 = *v294;
                v104 = v272;
                v105 = v281;
                v106 = v309;
                (*v294)(v272, v281, v309);
                v107 = v105 + v85;
                v108 = v273;
                (v103)(v273, v107, v106);
                if (sub_219BDBC94())
                {
                  v109 = sub_219BF3F84();
                  v111 = v110;
                  if (sub_219BF3F84() == v109 && v112 == v111)
                  {
                    v113 = 0;
                  }

                  else
                  {
                    v113 = sub_219BF78F4();
                  }

                  v118 = v277;
                  v70 = v280;
                  v69 = v291;

                  v119 = *v295;
                  v120 = v309;
                  (*v295)(v273, v309);
                  v119(v272, v120);

                  v5 = v284;
                  v71 = v118;
                }

                else
                {
                  v113 = sub_219BDBC14();
                  v114 = v104;
                  v115 = *v295;
                  v116 = v108;
                  v117 = v309;
                  (*v295)(v116, v309);
                  v115(v114, v117);

                  v71 = v277;
                  v70 = v280;
                  v69 = v291;
                  v5 = v284;
                }

                v77 = v283;
LABEL_38:
                if ((v301 ^ v113))
                {
                  goto LABEL_42;
                }

                goto LABEL_8;
              }

              (*v295)(v281, v309);

              v71 = v277;
              v70 = v280;
              v69 = v291;
              v5 = v284;
              v77 = v283;
              if (v301)
              {
                v145 = v265;
                v73 = v262;
                if (v291 < v262)
                {
                  goto LABEL_176;
                }

                goto LABEL_45;
              }
            }

LABEL_8:
            ++v69;
            ++v76;
            if (v77 == v69)
            {
              v69 = v77;
LABEL_42:
              v73 = v262;
              break;
            }
          }
        }

        v145 = v265;
        if (v301)
        {
          if (v69 < v73)
          {
            goto LABEL_176;
          }

LABEL_45:
          if (v73 < v69)
          {
            v139 = 8 * v69 - 8;
            v140 = 8 * v73;
            v141 = v69;
            v142 = v73;
            do
            {
              if (v142 != --v141)
              {
                v144 = *v71;
                if (!*v71)
                {
                  goto LABEL_182;
                }

                v143 = *(v144 + v140);
                *(v144 + v140) = *(v144 + v139);
                *(v144 + v139) = v143;
              }

              ++v142;
              v139 -= 8;
              v140 += 8;
            }

            while (v142 < v141);
          }
        }
      }

LABEL_52:
      v146 = *(v71 + 8);
      if (v69 >= v146)
      {
        goto LABEL_94;
      }

      if (__OFSUB__(v69, v73))
      {
        goto LABEL_175;
      }

      if (v69 - v73 >= v145)
      {
        goto LABEL_94;
      }

      v147 = v73 + v145;
      if (__OFADD__(v73, v145))
      {
        goto LABEL_177;
      }

      if (v147 >= v146)
      {
        v147 = *(v71 + 8);
      }

      if (v147 < v73)
      {
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      if (v69 == v147)
      {
        goto LABEL_94;
      }

      v284 = v5;
      v301 = *v71;
      v148 = v301 + 8 * v69 - 8;
      v262 = v73;
      v149 = v73 - v69;
      v150 = v287;
      v275 = v147;
LABEL_64:
      v291 = v69;
      v282 = v149;
      v153 = v149;
      v283 = v148;
      v154 = v148;
      while (1)
      {
        v307 = v153;
        v155 = *v154;

        v156 = v298;
        sub_219BF3FA4();
        v157 = v299;
        sub_219BF4AA4();
        v158 = *v303;
        v159 = v156;
        v160 = v304;
        (*v303)(v159, v304);
        v308 = v155;
        sub_219BF3FA4();
        v161 = v300;
        sub_219BF4AA4();
        v158(v150, v160);
        v162 = v306;
        v163 = v306 + *(v305 + 48);
        sub_218A5DD60(v157, v306);
        sub_218A5DD60(v161, v163);
        v7 = v302;
        v164 = *v302;
        v165 = v309;
        LODWORD(v162) = (*v302)(v162, 1, v309);
        v166 = v164(v163, 1, v165);
        if (v162 != 1)
        {
          break;
        }

        if (v166 != 1)
        {
          goto LABEL_69;
        }

        v167 = v288;
        sub_219BF3FA4();
        sub_219BF4AB4();
        v168 = v167;
        v169 = v304;
        v158(v168, v304);
        v170 = v289;
        sub_219BF3FA4();
        v171 = v290;
        sub_219BF4AB4();
        v158(v170, v169);
        v172 = v292;
        v163 = v292 + *(v305 + 48);
        sub_218A5DD60(v293, v292);
        v7 = v309;
        sub_218A5DD60(v171, v163);
        LODWORD(v172) = v164(v172, 1, v7);
        v173 = v164(v163, 1, v7);
        if (v172 == 1)
        {
          v150 = v287;
          if (v173 != 1)
          {
LABEL_69:
            sub_2189DD39C(v163);
          }

LABEL_70:

          goto LABEL_78;
        }

        if (v173 == 1)
        {
          (*v295)(v292, v309);
          v150 = v287;
          goto LABEL_62;
        }

        v192 = *v294;
        v193 = v285;
        (*v294)(v285, v292, v309);
        v194 = v286;
        v192();
        v195 = sub_219BDBC94();
        v150 = v287;
        if (v195)
        {
          v196 = sub_219BF3F84();
          v198 = v197;
          if (v196 == sub_219BF3F84() && v198 == v199)
          {

            v7 = v295;
            v200 = *v295;
            v201 = v309;
            (*v295)(v286, v309);
            v200(v285, v201);
            goto LABEL_70;
          }

          v207 = sub_219BF78F4();

          v7 = v295;
          v208 = *v295;
          v209 = v309;
          (*v295)(v286, v309);
          v208(v285, v209);

          if (v207)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v202 = sub_219BDBC24();
          v203 = v194;
          v204 = v202;
          v7 = v295;
          v205 = *v295;
          v206 = v309;
          (*v295)(v203, v309);
          v205(v193, v206);

          if (v204)
          {
            goto LABEL_63;
          }
        }

LABEL_78:
        v189 = v307;
        if (!v301)
        {
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        v190 = *v154;
        *v154 = v154[1];
        v154[1] = v190;
        --v154;
        v191 = __CFADD__(v189, 1);
        v153 = v189 + 1;
        if (v191)
        {
          goto LABEL_63;
        }
      }

      if (v166 == 1)
      {
        (*v295)(v306, v309);
        goto LABEL_62;
      }

      v174 = *v294;
      v175 = v296;
      v176 = v309;
      (*v294)(v296, v306, v309);
      v177 = v297;
      (v174)(v297, v163, v176);
      if ((sub_219BDBC94() & 1) == 0)
      {
        break;
      }

      v178 = sub_219BF3F84();
      v180 = v179;
      if (sub_219BF3F84() != v178 || v181 != v180)
      {
        v182 = sub_219BF78F4();

        v7 = v295;
        v183 = *v295;
        v184 = v309;
        (*v295)(v297, v309);
        v183(v296, v184);

        if ((v182 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_78;
      }

      v7 = v295;
      v151 = *v295;
      v152 = v309;
      (*v295)(v297, v309);
      v151(v296, v152);
LABEL_62:

LABEL_63:
      v69 = v291 + 1;
      v148 = v283 + 8;
      v149 = v282 - 1;
      if (v291 + 1 != v275)
      {
        goto LABEL_64;
      }

      v69 = v275;
      v5 = v284;
      v71 = v277;
      v70 = v280;
      v73 = v262;
LABEL_94:
      if (v69 < v73)
      {
        goto LABEL_174;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2191F6B60(0, *(v70 + 2) + 1, 1, v70);
        v70 = result;
      }

      v211 = *(v70 + 2);
      v210 = *(v70 + 3);
      v212 = v211 + 1;
      if (v211 >= v210 >> 1)
      {
        result = sub_2191F6B60((v210 > 1), v211 + 1, 1, v70);
        v70 = result;
      }

      *(v70 + 2) = v212;
      v213 = &v70[16 * v211];
      *(v213 + 4) = v73;
      *(v213 + 5) = v69;
      v7 = *v270;
      if (!*v270)
      {
        goto LABEL_184;
      }

      if (v211)
      {
        while (2)
        {
          v214 = v212 - 1;
          if (v212 >= 4)
          {
            v219 = &v70[16 * v212 + 32];
            v220 = *(v219 - 64);
            v221 = *(v219 - 56);
            v225 = __OFSUB__(v221, v220);
            v222 = v221 - v220;
            if (v225)
            {
              goto LABEL_161;
            }

            v224 = *(v219 - 48);
            v223 = *(v219 - 40);
            v225 = __OFSUB__(v223, v224);
            v217 = v223 - v224;
            v218 = v225;
            if (v225)
            {
              goto LABEL_162;
            }

            v226 = &v70[16 * v212];
            v228 = *v226;
            v227 = *(v226 + 1);
            v225 = __OFSUB__(v227, v228);
            v229 = v227 - v228;
            if (v225)
            {
              goto LABEL_164;
            }

            v225 = __OFADD__(v217, v229);
            v230 = v217 + v229;
            if (v225)
            {
              goto LABEL_167;
            }

            if (v230 >= v222)
            {
              v248 = &v70[16 * v214 + 32];
              v250 = *v248;
              v249 = *(v248 + 1);
              v225 = __OFSUB__(v249, v250);
              v251 = v249 - v250;
              if (v225)
              {
                goto LABEL_171;
              }

              if (v217 < v251)
              {
                v214 = v212 - 2;
              }
            }

            else
            {
LABEL_114:
              if (v218)
              {
                goto LABEL_163;
              }

              v231 = &v70[16 * v212];
              v233 = *v231;
              v232 = *(v231 + 1);
              v234 = __OFSUB__(v232, v233);
              v235 = v232 - v233;
              v236 = v234;
              if (v234)
              {
                goto LABEL_166;
              }

              v237 = &v70[16 * v214 + 32];
              v239 = *v237;
              v238 = *(v237 + 1);
              v225 = __OFSUB__(v238, v239);
              v240 = v238 - v239;
              if (v225)
              {
                goto LABEL_169;
              }

              if (__OFADD__(v235, v240))
              {
                goto LABEL_170;
              }

              if (v235 + v240 < v217)
              {
                goto LABEL_128;
              }

              if (v217 < v240)
              {
                v214 = v212 - 2;
              }
            }
          }

          else
          {
            if (v212 == 3)
            {
              v215 = *(v70 + 4);
              v216 = *(v70 + 5);
              v225 = __OFSUB__(v216, v215);
              v217 = v216 - v215;
              v218 = v225;
              goto LABEL_114;
            }

            v241 = &v70[16 * v212];
            v243 = *v241;
            v242 = *(v241 + 1);
            v225 = __OFSUB__(v242, v243);
            v235 = v242 - v243;
            v236 = v225;
LABEL_128:
            if (v236)
            {
              goto LABEL_165;
            }

            v244 = &v70[16 * v214];
            v246 = *(v244 + 4);
            v245 = *(v244 + 5);
            v225 = __OFSUB__(v245, v246);
            v247 = v245 - v246;
            if (v225)
            {
              goto LABEL_168;
            }

            if (v247 < v235)
            {
              break;
            }
          }

          v252 = v214 - 1;
          if (v214 - 1 >= v212)
          {
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
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          if (!*v71)
          {
            goto LABEL_181;
          }

          v253 = *&v70[16 * v252 + 32];
          v254 = *&v70[16 * v214 + 40];
          sub_21903D748((*v71 + 8 * v253), (*v71 + 8 * *&v70[16 * v214 + 32]), (*v71 + 8 * v254), v7);
          if (v5)
          {
          }

          if (v254 < v253)
          {
            goto LABEL_159;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_218C81048(v70);
          }

          if (v252 >= *(v70 + 2))
          {
            goto LABEL_160;
          }

          v255 = &v70[16 * v252];
          *(v255 + 4) = v253;
          *(v255 + 5) = v254;
          v310 = v70;
          result = sub_218C80FBC(v214);
          v70 = v310;
          v212 = *(v310 + 2);
          if (v212 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v72 = *(v71 + 8);
      if (v69 >= v72)
      {
        goto LABEL_147;
      }
    }

    v185 = sub_219BDBC14();
    v7 = v295;
    v186 = *v295;
    v187 = v177;
    v188 = v309;
    (*v295)(v187, v309);
    v186(v175, v188);

    if ((v185 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_78;
  }

  v70 = MEMORY[0x277D84F90];
  v71 = a3;
LABEL_147:
  v7 = *v270;
  if (!*v270)
  {
    goto LABEL_185;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_179:
    result = sub_218C81048(v70);
    v70 = result;
  }

  v310 = v70;
  v256 = *(v70 + 2);
  if (v256 < 2)
  {
  }

  while (1)
  {
    v257 = *v71;
    if (!*v71)
    {
      break;
    }

    v258 = v71;
    v259 = *&v70[16 * v256];
    v71 = *&v70[16 * v256 + 24];
    sub_21903D748((v257 + 8 * v259), (v257 + 8 * *&v70[16 * v256 + 16]), (v257 + 8 * v71), v7);
    if (v5)
    {
    }

    if (v71 < v259)
    {
      goto LABEL_172;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_218C81048(v70);
    }

    if (v256 - 2 >= *(v70 + 2))
    {
      goto LABEL_173;
    }

    v260 = &v70[16 * v256];
    *v260 = v259;
    *(v260 + 1) = v71;
    v310 = v70;
    result = sub_218C80FBC(v256 - 1);
    v70 = v310;
    v256 = *(v310 + 2);
    v71 = v258;
    if (v256 <= 1)
    {
    }
  }

LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
  return result;
}

uint64_t sub_21903CBDC(char *a1, char *a2, char *a3, char *a4)
{
  v135 = sub_219BDBD34();
  v8 = *(v135 - 8);
  v9 = MEMORY[0x28223BE20](v135);
  v117 = &v113[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v116 = &v113[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v114 = &v113[-v14];
  MEMORY[0x28223BE20](v13);
  v115 = &v113[-v15];
  sub_218C82694();
  v131 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v126 = &v113[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v128 = &v113[-v19];
  sub_2186DCF58();
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v125 = &v113[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v124 = &v113[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v123 = &v113[-v26];
  MEMORY[0x28223BE20](v25);
  v122 = &v113[-v27];
  v130 = sub_219BF4AC4();
  v28 = *(v130 - 8);
  v29 = MEMORY[0x28223BE20](v130);
  v121 = &v113[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v120 = &v113[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v119 = &v113[-v34];
  MEMORY[0x28223BE20](v33);
  v118 = &v113[-v35];
  v36 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v36 = a2 - a1;
  }

  v37 = v36 >> 3;
  v127 = a3;
  v38 = a3 - a2;
  v39 = v38 / 8;
  if (v36 >> 3 >= v38 / 8)
  {
    v132 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v39] <= a4)
    {
      memmove(a4, a2, 8 * v39);
    }

    v134 = &a4[8 * v39];
    if (v38 >= 8 && a2 > v132)
    {
      v122 = (v28 + 8);
      v115 = v8 + 32;
      v118 = v8 + 8;
      v119 = v8 + 48;
      v78 = v127;
      v133 = a4;
LABEL_38:
      v129 = a1;
      v79 = v134;
      v123 = a1 - 8;
      do
      {
        v127 = v79 - 8;
        v128 = v78;

        v80 = v120;
        sub_219BF3FA4();
        v81 = v124;
        sub_219BF4AB4();
        v82 = *v122;
        v83 = v80;
        v84 = v130;
        (*v122)(v83, v130);
        v85 = v121;
        sub_219BF3FA4();
        v86 = v125;
        sub_219BF4AB4();
        v82(v85, v84);
        v87 = *(v131 + 48);
        v88 = v81;
        v89 = v126;
        sub_218A5DD60(v88, v126);
        sub_218A5DD60(v86, &v89[v87]);
        v90 = *v119;
        v91 = v135;
        v92 = (*v119)(v89, 1, v135);
        v93 = v90(&v89[v87], 1, v91);
        if (v92 == 1)
        {
          if (v93 != 1)
          {
            sub_2189DD39C(v126 + v87);
          }

          v94 = v128;
          v78 = v128 - 8;
          a4 = v133;
        }

        else
        {
          v95 = v116;
          if (v93 == 1)
          {
            (*v118)(v126, v135);

            v94 = v128;
            v78 = v128 - 8;
            a4 = v133;
            v109 = v123;
LABEL_56:
            if (v94 != v129)
            {
              *v78 = *v109;
            }

            if (v134 <= a4 || (a1 = v109, v109 <= v132))
            {
              a1 = v109;
              goto LABEL_62;
            }

            goto LABEL_38;
          }

          v96 = *v115;
          v97 = v126;
          v98 = v135;
          (*v115)(v116, v126, v135);
          v99 = v97 + v87;
          v100 = v117;
          v96(v117, v99, v98);
          if (sub_219BDBC94())
          {
            v101 = sub_219BF3F84();
            v103 = v102;
            if (v101 == sub_219BF3F84() && v103 == v104)
            {
              v105 = 0;
            }

            else
            {
              v105 = sub_219BF78F4();
            }

            v110 = *v118;
            v111 = v135;
            (*v118)(v117, v135);
            v110(v95, v111);

            v94 = v128;
            v78 = v128 - 8;
            a4 = v133;
            v109 = v123;
            if (v105)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v106 = sub_219BDBC24();
            v107 = v100;
            v108 = *v118;
            (*v118)(v107, v98);
            v108(v95, v98);

            v94 = v128;
            v78 = v128 - 8;
            a4 = v133;
            v109 = v123;
            if (v106)
            {
              goto LABEL_56;
            }
          }
        }

        v57 = v134 == v94;
        v79 = v127;
        if (!v57)
        {
          *v78 = *v127;
        }

        v134 = v79;
      }

      while (v79 > a4);
      v134 = v79;
      a1 = v129;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v37] <= a4)
    {
      memmove(a4, a1, 8 * v37);
    }

    v134 = &a4[8 * v37];
    if (a2 - a1 >= 8 && a2 < v127)
    {
      v40 = a2;
      v125 = v8 + 48;
      v126 = (v28 + 8);
      v121 = v8 + 32;
      v124 = v8 + 8;
      while (1)
      {
        v132 = a1;
        v133 = a4;
        v129 = v40;

        v41 = v118;
        sub_219BF3FA4();
        v42 = v122;
        sub_219BF4AB4();
        v43 = *v126;
        v44 = v41;
        v45 = v130;
        (*v126)(v44, v130);
        v46 = v119;
        sub_219BF3FA4();
        v47 = v123;
        sub_219BF4AB4();
        v43(v46, v45);
        v48 = *(v131 + 48);
        v49 = v42;
        v50 = v128;
        sub_218A5DD60(v49, v128);
        sub_218A5DD60(v47, &v50[v48]);
        v51 = *v125;
        v52 = v135;
        v53 = (*v125)(v50, 1, v135);
        v54 = v51(&v50[v48], 1, v52);
        if (v53 == 1)
        {
          break;
        }

        if (v54 == 1)
        {
          (*v124)(v128, v135);

          v55 = v132;
          a4 = v133;
        }

        else
        {
          v59 = *v121;
          v60 = v115;
          v61 = v128;
          v62 = v135;
          (*v121)(v115, v128, v135);
          v63 = &v61[v48];
          v64 = v114;
          v59(v114, v63, v62);
          v65 = sub_219BDBC94();
          a4 = v133;
          if (v65)
          {
            v66 = sub_219BF3F84();
            v68 = v67;
            v57 = v66 == sub_219BF3F84();
            v55 = v132;
            if (v57 && v68 == v69)
            {

              v70 = *v124;
              v71 = v135;
              (*v124)(v64, v135);
              v70(v115, v71);
LABEL_13:

LABEL_14:
              v56 = a4;
              v57 = v55 == a4;
              a4 += 8;
              v40 = v129;
              v58 = v127;
              if (v57)
              {
                goto LABEL_16;
              }

LABEL_15:
              *v55 = *v56;
              goto LABEL_16;
            }

            v75 = sub_219BF78F4();

            v76 = *v124;
            v77 = v135;
            (*v124)(v64, v135);
            v76(v115, v77);

            if ((v75 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v72 = sub_219BDBC24();
            v73 = v64;
            v74 = *v124;
            (*v124)(v73, v62);
            v74(v60, v62);

            v55 = v132;
            if ((v72 & 1) == 0)
            {
              goto LABEL_14;
            }
          }
        }

        v56 = v129;
        v40 = v129 + 8;
        v58 = v127;
        if (v55 != v129)
        {
          goto LABEL_15;
        }

LABEL_16:
        a1 = v55 + 8;
        if (a4 >= v134 || v40 >= v58)
        {
          goto LABEL_62;
        }
      }

      v55 = v132;
      a4 = v133;
      if (v54 != 1)
      {
        sub_2189DD39C(&v128[v48]);
      }

      goto LABEL_13;
    }
  }

LABEL_62:
  if (a1 != a4 || a1 >= &a4[(v134 - a4 + (v134 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v134 - a4) / 8));
  }

  return 1;
}