uint64_t sub_219817D38@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, unint64_t a3@<X8>)
{
  sub_21981AE80(0, &unk_27CC1FC40, type metadata accessor for SearchService.InflatedResults);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-1] - v8;
  v10 = type metadata accessor for SearchService.InflatedResults(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21981B104(a1, v9, &unk_27CC1FC40, type metadata accessor for SearchService.InflatedResults);
  v13 = *&v9[*(v7 + 56)];
  sub_21981AFD8(v9, v12, type metadata accessor for SearchService.InflatedResults);
  v14 = a2[1];
  v16 = *a2;
  v17[0] = v14;
  *(v17 + 9) = *(a2 + 25);
  sub_219817EC4(v12, v13, &v16, a3);

  return sub_21981B040(v12, type metadata accessor for SearchService.InflatedResults);
}

uint64_t sub_219817EC4@<X0>(unint64_t isUniquelyReferenced_nonNull_native@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X8>)
{
  v182 = a2;
  v7 = sub_219BE0874();
  v163 = *(v7 - 8);
  v164 = v7;
  MEMORY[0x28223BE20](v7);
  v165 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDBD64();
  v159 = *(v9 - 8);
  v160 = v9;
  MEMORY[0x28223BE20](v9);
  v158 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  MEMORY[0x28223BE20](v151);
  v152 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for SearchResultsGroup();
  v150 = *(v153 - 8);
  v12 = MEMORY[0x28223BE20](v153);
  v171 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v172 = (&v150 - v14);
  v15 = sub_219BF0BD4();
  v161 = *(v15 - 8);
  v162 = v15;
  MEMORY[0x28223BE20](v15);
  v176 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for SearchResponse(0);
  MEMORY[0x28223BE20](v169);
  v18 = (&v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a3;
  v154 = a3[1];
  v155 = v19;
  v20 = a3[2];
  v21 = a3[3];
  v156 = v20;
  v175 = v18;
  sub_21981AF48(isUniquelyReferenced_nonNull_native, v18, type metadata accessor for SearchResponse);
  if (v21 < 0xA)
  {
    v157 = v21;
    v174 = byte_219CAA012[v21];
    v187 = MEMORY[0x277D84F90];
    v22 = type metadata accessor for SearchService.InflatedResults(0);
    v23 = sub_219815628(MEMORY[0x277D84F98], *(isUniquelyReferenced_nonNull_native + *(v22 + 20)), &v187);
    v167 = 0;
    v168 = v23;
    v170 = v22;
    v21 = *(isUniquelyReferenced_nonNull_native + *(v22 + 24));
    if (v21 >> 62)
    {
      goto LABEL_82;
    }

    v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v177 = isUniquelyReferenced_nonNull_native;
    v166 = a4;
    if (v24)
    {
      a4 = 0;
      v179 = v21 & 0xFFFFFFFFFFFFFF8;
      v180 = v21 & 0xC000000000000001;
      isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
      v178 = v21;
      while (1)
      {
        if (v180)
        {
          v25 = MEMORY[0x21CECE0F0](a4, v21);
          v26 = (a4 + 1);
          if (__OFADD__(a4, 1))
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (a4 >= *(v179 + 16))
          {
            goto LABEL_71;
          }

          v25 = *(v21 + 8 * a4 + 32);

          v26 = (a4 + 1);
          if (__OFADD__(a4, 1))
          {
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
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
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            v24 = sub_219BF7214();
            goto LABEL_4;
          }
        }

        v181 = v26;
        v27 = [*(v25 + 16) identifier];
        v28 = sub_219BF5414();
        v30 = v29;

        v21 = isUniquelyReferenced_nonNull_native;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v183 = v21;
        v32 = sub_21870F700(v28, v30);
        v33 = *(v21 + 16);
        v34 = (v31 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_72;
        }

        v36 = v31;
        if (*(v21 + 24) >= v35)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v31)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v21 = v183;
            sub_219492A6C();
            if (v36)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          sub_219481C7C(v35, isUniquelyReferenced_nonNull_native);
          v21 = *v183;
          v37 = sub_21870F700(v28, v30);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_108;
          }

          v32 = v37;
          if (v36)
          {
LABEL_6:

            isUniquelyReferenced_nonNull_native = *v183;
            *(*(*v183 + 56) + 8 * v32) = v25;

            goto LABEL_7;
          }
        }

        isUniquelyReferenced_nonNull_native = *v183;
        *(*v183 + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v39 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v32);
        *v39 = v28;
        v39[1] = v30;
        *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v32) = v25;

        v40 = *(isUniquelyReferenced_nonNull_native + 16);
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_79;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v42;
LABEL_7:
        ++a4;
        v21 = v178;
        if (v181 == v24)
        {
          goto LABEL_26;
        }
      }
    }

    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
LABEL_26:
    v43 = *(v177 + *(v170 + 28));
    if (v43 >> 62)
    {
      v44 = sub_219BF7214();
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = v182;
    v170 = isUniquelyReferenced_nonNull_native;
    if (v44)
    {
      isUniquelyReferenced_nonNull_native = 0;
      v178 = v43 & 0xFFFFFFFFFFFFFF8;
      v179 = v43 & 0xC000000000000001;
      v181 = MEMORY[0x277D84F98];
      v177 = v43;
      while (1)
      {
        if (v179)
        {
          v47 = MEMORY[0x21CECE0F0](isUniquelyReferenced_nonNull_native, v43);
        }

        else
        {
          if (isUniquelyReferenced_nonNull_native >= *(v178 + 16))
          {
            goto LABEL_74;
          }

          v47 = *(v43 + 8 * isUniquelyReferenced_nonNull_native + 32);
        }

        v21 = v47;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
        {
          goto LABEL_73;
        }

        v180 = isUniquelyReferenced_nonNull_native + 1;
        v48 = [v47 identifier];
        v49 = sub_219BF5414();
        v51 = v50;

        a4 = v21;
        v21 = v181;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        *v183 = v21;
        v54 = sub_21870F700(v49, v51);
        v55 = *(v21 + 16);
        v56 = (v53 & 1) == 0;
        v57 = v55 + v56;
        if (__OFADD__(v55, v56))
        {
          goto LABEL_75;
        }

        v58 = v53;
        if (*(v21 + 24) >= v57)
        {
          if (v52)
          {
            if (v53)
            {
              goto LABEL_30;
            }
          }

          else
          {
            sub_2194931B8();
            if (v58)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
          sub_2194829C0(v57, v52);
          v21 = *v183;
          v59 = sub_21870F700(v49, v51);
          if ((v58 & 1) != (v60 & 1))
          {
            goto LABEL_108;
          }

          v54 = v59;
          if (v58)
          {
LABEL_30:

            v181 = *v183;
            v46 = *(*v183 + 56);
            v21 = *(v46 + 8 * v54);
            *(v46 + 8 * v54) = a4;

            goto LABEL_31;
          }
        }

        v21 = *v183;
        *(*v183 + 8 * (v54 >> 6) + 64) |= 1 << v54;
        v61 = (*(v21 + 48) + 16 * v54);
        *v61 = v49;
        v61[1] = v51;
        *(*(v21 + 56) + 8 * v54) = a4;

        v62 = *(v21 + 16);
        v41 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v41)
        {
          goto LABEL_80;
        }

        v181 = v21;
        *(v21 + 16) = v63;
LABEL_31:
        ++isUniquelyReferenced_nonNull_native;
        v45 = v182;
        v43 = v177;
        if (v180 == v44)
        {
          goto LABEL_49;
        }
      }
    }

    v181 = MEMORY[0x277D84F98];
LABEL_49:
    v177 = v45 >> 62;
    if (v45 >> 62)
    {
      v21 = v45;
      v85 = sub_219BF7214();
      v45 = v21;
      v64 = v85;
      if (v85)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v64 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v64)
      {
LABEL_51:
        isUniquelyReferenced_nonNull_native = 0;
        v178 = v45 & 0xFFFFFFFFFFFFFF8;
        v179 = v45 & 0xC000000000000001;
        v65 = MEMORY[0x277D84F98];
        while (1)
        {
          if (v179)
          {
            v67 = MEMORY[0x21CECE0F0](isUniquelyReferenced_nonNull_native);
          }

          else
          {
            if (isUniquelyReferenced_nonNull_native >= *(v178 + 16))
            {
              goto LABEL_77;
            }

            v67 = *(v45 + 8 * isUniquelyReferenced_nonNull_native + 32);
          }

          v21 = v67;
          if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
          {
            goto LABEL_76;
          }

          v180 = isUniquelyReferenced_nonNull_native + 1;
          v68 = v64;
          v69 = [v67 identifier];
          v70 = sub_219BF5414();
          v72 = v71;

          a4 = v21;
          v21 = v65;
          v73 = swift_isUniquelyReferenced_nonNull_native();
          *v183 = v21;
          v75 = sub_21870F700(v70, v72);
          v76 = *(v21 + 16);
          v77 = (v74 & 1) == 0;
          v78 = v76 + v77;
          if (__OFADD__(v76, v77))
          {
            goto LABEL_78;
          }

          v79 = v74;
          if (*(v21 + 24) >= v78)
          {
            if (v73)
            {
              if (v74)
              {
                goto LABEL_52;
              }
            }

            else
            {
              v21 = v183;
              sub_2194931B8();
              if (v79)
              {
                goto LABEL_52;
              }
            }
          }

          else
          {
            sub_2194829C0(v78, v73);
            v21 = *v183;
            v80 = sub_21870F700(v70, v72);
            if ((v79 & 1) != (v81 & 1))
            {
              goto LABEL_108;
            }

            v75 = v80;
            if (v79)
            {
LABEL_52:

              v65 = *v183;
              v66 = *(*v183 + 56);
              v21 = *(v66 + 8 * v75);
              *(v66 + 8 * v75) = a4;

              goto LABEL_53;
            }
          }

          v65 = *v183;
          *(*v183 + 8 * (v75 >> 6) + 64) |= 1 << v75;
          v82 = (v65[6] + 16 * v75);
          *v82 = v70;
          v82[1] = v72;
          *(v65[7] + 8 * v75) = a4;

          v83 = v65[2];
          v41 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (v41)
          {
            goto LABEL_81;
          }

          v65[2] = v84;
LABEL_53:
          ++isUniquelyReferenced_nonNull_native;
          v64 = v68;
          v45 = v182;
          if (v180 == v68)
          {
            goto LABEL_86;
          }
        }
      }
    }

    v65 = MEMORY[0x277D84F98];
LABEL_86:
    v86 = v173;
    swift_getObjectType();
    v87 = v176;
    sub_219BEEFB4();
    sub_219219310();
    v88 = sub_219BE21E4();
    MEMORY[0x28223BE20](v88);
    *(&v150 - 6) = v86;
    v89 = v170;
    *(&v150 - 5) = v168;
    *(&v150 - 4) = v89;
    *(&v150 - 3) = v181;
    *(&v150 - 2) = v87;
    *(&v150 - 8) = v174;
    v90 = sub_218F91818(sub_21981AFB0, (&v150 - 8), v88);

    v180 = v90;
    if (!v64)
    {

LABEL_106:
      v132 = v164;
      v133 = v158;
      sub_219BDBD54();
      v134 = sub_219BDBD44();
      v181 = v135;
      v182 = v134;
      (*(v159 + 8))(v133, v160);
      v136 = v157;
      (*(v163 + 104))(v165, **(&unk_2782431B8 + v157), v132);
      v137 = type metadata accessor for SearchResults();

      v138 = v166;
      sub_219BDF024();
      v139 = v175;
      v140 = v175[1];
      v179 = *v175;
      v141 = v137[8];
      v142 = *MEMORY[0x277D2E598];
      v143 = sub_219BE04F4();
      v144 = *(v143 - 8);
      (*(v144 + 104))(&v138[v141], v142, v143);
      (*(v144 + 56))(&v138[v141], 0, 1, v143);
      v145 = *(v139 + 16);

      sub_21981B040(v139, type metadata accessor for SearchResponse);
      v146 = v181;
      *v138 = v182;
      *(v138 + 1) = v146;
      v147 = v179;
      *(v138 + 2) = v180;
      v148 = &v138[v137[7]];
      *v148 = v147;
      v148[1] = v140;
      *&v138[v137[9]] = v145;
      *&v138[v137[10]] = v136;
      (*(v161 + 8))(v176, v162);
    }

    if (v177)
    {
      v91 = sub_219BF7214();
    }

    else
    {
      v91 = *((v182 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v92 = MEMORY[0x277D84F90];
    if (!v91)
    {
LABEL_101:
      v104 = v173;
      v105 = v173[10];
      v106 = v173[11];
      __swift_project_boxed_opaque_existential_1(v173 + 7, v105);
      v107 = MEMORY[0x277D84F90];
      v108 = sub_2194B1C18(MEMORY[0x277D84F90]);
      v109 = sub_2194B1C38(v107);
      v110 = (*(v106 + 8))(v92, v108, v109, v65, v176, v105, v106);

      v111 = v172;
      *v172 = v110;
      v112 = v152;
      *v152 = 6;
      v112[1] = 0;
      v112[2] = 0;
      v112[3] = v91;
      sub_2192189F4();
      sub_219218A48();
      sub_219BE21D4();
      sub_218718690((v104 + 2), v183);
      sub_218718690(v104[28] + 56, v185);
      v113 = __swift_mutable_project_boxed_opaque_existential_1(v185, v185[3]);
      MEMORY[0x28223BE20](v113);
      v115 = (&v150 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v116 + 16))(v115);
      v117 = *v115;
      v118 = type metadata accessor for SearchRecipeFactory();
      v184[4] = &off_282A75DA8;
      v184[3] = v118;
      v184[0] = v117;
      type metadata accessor for RecipeSearchResultsInflater();
      v119 = swift_allocObject();
      v120 = __swift_mutable_project_boxed_opaque_existential_1(v184, v118);
      MEMORY[0x28223BE20](v120);
      v122 = (&v150 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v123 + 16))(v122);
      v124 = *v122;
      v119[5] = v118;
      v119[6] = &off_282A75DA8;
      v119[2] = v124;
      __swift_destroy_boxed_opaque_existential_1(v184);
      __swift_destroy_boxed_opaque_existential_1(v185);
      sub_21981B0A0(0, &qword_27CC17A58, type metadata accessor for RecipeSearchResultsInflater);
      v126 = v125;
      v127 = swift_allocObject();
      sub_21981AFD8(v112, &v127[qword_27CC17930], type metadata accessor for SearchResponse.SearchResultsGroup);
      sub_2186CB1F0(v183, &v127[qword_27CC17938]);
      *&v127[*(*v127 + 120)] = v119;
      v127[*(*v127 + 128)] = v174;
      v127[16] = 1;
      v111[4] = v126;
      v111[5] = &off_282A64000;
      v111[1] = v127;
      swift_storeEnumTagMultiPayload();
      sub_21981AF48(v111, v171, type metadata accessor for SearchResultsGroup);
      v128 = v180;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v128 = sub_2191F7430(0, v128[2] + 1, 1, v128);
      }

      v129 = v150;
      v131 = v128[2];
      v130 = v128[3];
      if (v131 >= v130 >> 1)
      {
        v128 = sub_2191F7430(v130 > 1, v131 + 1, 1, v128);
      }

      v180 = v128;
      v128[2] = v131 + 1;
      sub_21981AFD8(v171, v128 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v131, type metadata accessor for SearchResultsGroup);
      sub_21981B040(v172, type metadata accessor for SearchResultsGroup);
      goto LABEL_106;
    }

    v186 = MEMORY[0x277D84F90];
    v21 = &v186;
    sub_218C380E0(0, v91 & ~(v91 >> 63), 0);
    if ((v91 & 0x8000000000000000) == 0)
    {
      v179 = v65;
      v92 = v186;
      v93.n128_f64[0] = sub_218CB4074(v185);
      v94 = 0;
      v181 = v182 & 0xC000000000000001;
      v95 = v91;
      do
      {
        if (v181)
        {
          v96 = MEMORY[0x21CECE0F0](v94, v182, v93);
        }

        else
        {
          v96 = *(v182 + 8 * v94 + 32);
        }

        v97 = v96;
        v98 = [v96 identifier];
        v99 = sub_219BF5414();
        v101 = v100;

        memcpy(v184, v185, sizeof(v184));
        v186 = v92;
        v103 = *(v92 + 16);
        v102 = *(v92 + 24);
        if (v103 >= v102 >> 1)
        {
          sub_218C380E0((v102 > 1), v103 + 1, 1);
          v92 = v186;
        }

        ++v94;
        *v183 = v99;
        *&v183[8] = v101;
        memcpy(&v183[16], v184, 0x148uLL);
        *&v183[344] = v97;
        sub_2197E4DC8(v183);
        *(v92 + 16) = v103 + 1;
        memcpy((v92 + 536 * v103 + 32), v183, 0x212uLL);
      }

      while (v95 != v94);
      v91 = v95;
      v65 = v179;
      goto LABEL_101;
    }

    __break(1u);
LABEL_108:
    sub_219BF79A4();
    __break(1u);
  }

  *v183 = v21;
  result = sub_219BF7974();
  __break(1u);
  return result;
}

uint64_t sub_2198190F0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = [*(*a2 + 16) identifier];
  v7 = sub_219BF5414();
  v9 = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a1;
  sub_21948ECAC(v5, v7, v9, isUniquelyReferenced_nonNull_native);

  *a1 = v20;
  v11 = [*(v5 + 16) identifier];
  v12 = sub_219BF5414();
  v14 = v13;

  v15 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v15;
  if ((result & 1) == 0)
  {
    result = sub_218840D24(0, *(v15 + 16) + 1, 1, v15);
    v15 = result;
    *a3 = result;
  }

  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    result = sub_218840D24((v17 > 1), v18 + 1, 1, v15);
    v15 = result;
    *a3 = result;
  }

  *(v15 + 16) = v18 + 1;
  v19 = v15 + 16 * v18;
  *(v19 + 32) = v12;
  *(v19 + 40) = v14;
  return result;
}

uint64_t sub_21981924C@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v86 = a6;
  v80 = a4;
  v81 = a5;
  v79 = a3;
  v13 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  MEMORY[0x28223BE20](v13);
  v78 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchModel(0);
  v72 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v73 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - v18;
  sub_21921898C();
  v20 = *(sub_219BE21E4() + 16);

  if (v20)
  {
    v75 = a7;
    v76 = a8;
    v77 = v8;
    v22 = a2[10];
    v21 = a2[11];
    v74 = a2;
    __swift_project_boxed_opaque_existential_1(a2 + 7, v22);
    sub_219BE21E4();
    v23 = (*(v21 + 8))();

    v24 = *a1;
    if (v24 <= 3)
    {
      if (*a1 > 1u)
      {
        a8 = v76;
        v50 = v75;
        *v76 = v23;
        v63 = v78;
        sub_21981AF48(a1, v78, type metadata accessor for SearchResponse.SearchResultsGroup);
        v64 = v74;
        sub_218718690((v74 + 2), v85);
        sub_218718690(v64[28] + 16, &v83);
        type metadata accessor for TagSearchResultsInflater();
        v65 = swift_allocObject();
        sub_2186CB1F0(&v83, v65 + 16);
        sub_21981B0A0(0, &qword_27CC179D8, type metadata accessor for TagSearchResultsInflater);
        v67 = v66;
        v68 = swift_allocObject();
        sub_21981AFD8(v63, &v68[qword_27CC17930], type metadata accessor for SearchResponse.SearchResultsGroup);
        sub_2186CB1F0(v85, &v68[qword_27CC17938]);
        *&v68[*(*v68 + 120)] = v65;
        v68[*(*v68 + 128)] = v50;
        v68[16] = 0;
        a8[4] = v67;
        a8[5] = &off_282A64050;
        a8[1] = v68;
        v69 = type metadata accessor for SearchResultsGroup();
      }

      else
      {
        a8 = v76;
        v25 = v75;
        if (!*a1)
        {
          if (*(v23 + 16))
          {
            v26 = v73;
            sub_21981AF48(v23 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v73, type metadata accessor for SearchModel);

            sub_21981AFD8(v26, v19, type metadata accessor for SearchModel);
            sub_21981AFD8(v19, a8, type metadata accessor for SearchModel);
            v27 = type metadata accessor for SearchResultsGroup();
            swift_storeEnumTagMultiPayload();
            return (*(*(v27 - 8) + 56))(a8, 0, 1, v27);
          }

          goto LABEL_19;
        }

        *v76 = v23;
        v57 = v78;
        sub_21981AF48(a1, v78, type metadata accessor for SearchResponse.SearchResultsGroup);
        sub_218718690((v74 + 2), v85);
        type metadata accessor for ArticleSearchResultsInflater();
        v58 = swift_allocObject();
        sub_21981B0A0(0, &unk_27CC1FC70, type metadata accessor for ArticleSearchResultsInflater);
        v60 = v59;
        v61 = swift_allocObject();
        sub_21981AFD8(v57, &v61[qword_27CC17930], type metadata accessor for SearchResponse.SearchResultsGroup);
        sub_2186CB1F0(v85, &v61[qword_27CC17938]);
        *&v61[*(*v61 + 120)] = v58;
        v61[*(*v61 + 128)] = v25;
        v61[16] = 0;
        a8[4] = v60;
        a8[5] = &off_282A64028;
        a8[1] = v61;
        v69 = type metadata accessor for SearchResultsGroup();
      }

LABEL_15:
      swift_storeEnumTagMultiPayload();
      return (*(*(v69 - 8) + 56))(a8, 0, 1, v69);
    }

    if (v24 - 5 >= 2)
    {
      a8 = v76;
      if (v24 == 4)
      {
        *v76 = v23;
        v51 = v78;
        sub_21981AF48(a1, v78, type metadata accessor for SearchResponse.SearchResultsGroup);
        v52 = v74;
        sub_218718690((v74 + 2), v85);
        sub_218718690(v52[28] + 16, &v83);
        type metadata accessor for TagSearchResultsInflater();
        v53 = swift_allocObject();
        sub_2186CB1F0(&v83, v53 + 16);
        sub_21981B0A0(0, &qword_27CC179D8, type metadata accessor for TagSearchResultsInflater);
        v55 = v54;
        v56 = swift_allocObject();
        sub_21981AFD8(v51, &v56[qword_27CC17930], type metadata accessor for SearchResponse.SearchResultsGroup);
        sub_2186CB1F0(v85, &v56[qword_27CC17938]);
        *&v56[*(*v56 + 120)] = v53;
        v56[*(*v56 + 128)] = v75;
        v56[16] = 0;
        a8[4] = v55;
        a8[5] = &off_282A64050;
        a8[1] = v56;
        v69 = type metadata accessor for SearchResultsGroup();
        goto LABEL_15;
      }

      v70 = type metadata accessor for SearchResultsGroup();
      (*(*(v70 - 8) + 56))(a8, 1, 1, v70);
    }

    else
    {
      v29 = v74;
      v30 = [v74[49] useFood];
      v31 = v76;
      if (v30)
      {
        *v76 = v23;
        v32 = v78;
        sub_21981AF48(a1, v78, type metadata accessor for SearchResponse.SearchResultsGroup);
        sub_218718690((v29 + 2), v85);
        sub_218718690(v29[28] + 56, &v83);
        v33 = __swift_mutable_project_boxed_opaque_existential_1(&v83, v84);
        v34 = v31;
        MEMORY[0x28223BE20](v33);
        v36 = (&v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v37 + 16))(v36);
        v38 = *v36;
        v39 = type metadata accessor for SearchRecipeFactory();
        v82[3] = v39;
        v82[4] = &off_282A75DA8;
        v82[0] = v38;
        type metadata accessor for RecipeSearchResultsInflater();
        v40 = swift_allocObject();
        v41 = __swift_mutable_project_boxed_opaque_existential_1(v82, v39);
        MEMORY[0x28223BE20](v41);
        v43 = (&v72 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v44 + 16))(v43);
        v45 = *v43;
        v40[5] = v39;
        v40[6] = &off_282A75DA8;
        v40[2] = v45;
        __swift_destroy_boxed_opaque_existential_1(v82);
        __swift_destroy_boxed_opaque_existential_1(&v83);
        sub_21981B0A0(0, &qword_27CC17A58, type metadata accessor for RecipeSearchResultsInflater);
        v47 = v46;
        v48 = swift_allocObject();
        sub_21981AFD8(v32, &v48[qword_27CC17930], type metadata accessor for SearchResponse.SearchResultsGroup);
        sub_2186CB1F0(v85, &v48[qword_27CC17938]);
        *&v48[*(*v48 + 120)] = v40;
        v48[*(*v48 + 128)] = v75;
        v48[16] = 0;
        v34[4] = v47;
        v34[5] = &off_282A64000;
        v34[1] = v48;
        v49 = type metadata accessor for SearchResultsGroup();
        swift_storeEnumTagMultiPayload();
        return (*(*(v49 - 8) + 56))(v34, 0, 1, v49);
      }

      v62 = type metadata accessor for SearchResultsGroup();
      (*(*(v62 - 8) + 56))(v31, 1, 1, v62);
    }
  }

LABEL_19:
  v71 = type metadata accessor for SearchResultsGroup();
  return (*(*(v71 - 8) + 56))(a8, 1, 1, v71);
}

uint64_t sub_219819E74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;

  v9 = sub_219819F18(v5, v6, v7, v8);

  return v9;
}

uint64_t sub_219819F18(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_21981B554(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84F90];
  *(v13 + 16) = MEMORY[0x277D84F90];
  v15 = swift_allocObject();
  v16 = a1;
  *(v15 + 16) = v14;
  if (!(a1 >> 62))
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v31 = sub_219BF7214();
  v16 = a1;
  if (v31)
  {
LABEL_3:
    *(v15 + 16) = sub_218E967B4(v16);
  }

LABEL_4:
  v37 = v15;
  if (a2 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_17;
    }

    v17 = sub_219BF7214();
    v32 = MEMORY[0x277D84F90];
    if (v17)
    {
      v38 = MEMORY[0x277D84F90];
      v32 = sub_219BF73F4();
      if ((v17 & 0x8000000000000000) == 0)
      {
LABEL_7:
        v34 = a4;
        v35 = a3;
        v36 = v13;
        v18 = 0;
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x21CECE0F0](v18, a2);
          }

          else
          {
            v21 = *(a2 + 8 * v18 + 32);
            swift_unknownObjectRetain();
          }

          __swift_project_boxed_opaque_existential_1((v5 + 352), *(v5 + 376));
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_getObjectType();
            sub_219BEEFB4();
            swift_unknownObjectRelease();
            v19 = 0;
          }

          else
          {
            v19 = 1;
          }

          v20 = sub_219BF0BD4();
          (*(*(v20 - 8) + 56))(v12, v19, 1, v20);
          ++v18;
          sub_21983F764(v21, v12);
          swift_unknownObjectRelease();
          sub_21981B410(v12, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88], sub_21981B554);
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        while (v17 != v18);
        v22 = v38;
        a3 = v35;
        v13 = v36;
        a4 = v34;
        goto LABEL_16;
      }

      __break(1u);
    }

    v22 = v32;
LABEL_16:
    *(v13 + 16) = v22;

    goto LABEL_17;
  }

  v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    v38 = v14;
    sub_219BF73F4();
    goto LABEL_7;
  }

LABEL_17:
  v23 = sub_21981A468(a4);
  v24 = sub_21981A68C(a3);
  v25 = MEMORY[0x28223BE20](v24);
  *(&v33 - 2) = v23;
  *(&v33 - 1) = v25;
  sub_21981B49C();
  sub_219BE3204();
  v26 = swift_allocObject();
  *(v26 + 16) = v37;
  *(v26 + 24) = v13;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_21981B50C;
  *(v27 + 24) = v26;

  v28 = sub_219BE2E54();
  sub_21981B204();
  v29 = sub_219BE2F64();

  return v29;
}

uint64_t sub_21981A3AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  sub_21981AF48(a2, a5, type metadata accessor for SearchResponse);

  sub_2191EF904(v9);
  v10 = type metadata accessor for SearchService.InflatedResults(0);
  *(a5 + v10[5]) = v8;
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
}

uint64_t sub_21981A468(uint64_t a1)
{
  if (*(a1 + 16))
  {

    v2 = sub_219BE5414();
    v3 = sub_219BF6214();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136315138;
      v6 = MEMORY[0x21CECC6D0](a1, MEMORY[0x277D837D0]);
      v8 = sub_2186D1058(v6, v7, &v11);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_2186C1000, v2, v3, "Search fetching articles not created from metadata, articleIDs=%s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x21CECF960](v5, -1, -1);
      MEMORY[0x21CECF960](v4, -1, -1);
    }

    MEMORY[0x28223BE20](v9);
    sub_21981B554(0, &unk_27CC1FCA0, sub_21981B278, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE30B4();
  }

  else
  {
    sub_21981B554(0, &unk_27CC1FCA0, sub_21981B278, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_21981A68C(uint64_t a1)
{
  if (*(a1 + 16))
  {

    v2 = sub_219BE5414();
    v3 = sub_219BF6214();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136315138;
      v6 = MEMORY[0x21CECC6D0](a1, MEMORY[0x277D837D0]);
      v8 = sub_2186D1058(v6, v7, &v11);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_2186C1000, v2, v3, "Search fetching tags not created from metadata, tagIDs=%s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x21CECF960](v5, -1, -1);
      MEMORY[0x21CECF960](v4, -1, -1);
    }

    v9 = off_282A4D758;
    type metadata accessor for TagService();
    return v9();
  }

  else
  {
    sub_21981B554(0, &qword_280EE6AF0, sub_218A3A1C4, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_21981A850()
{
  swift_beginAccess();

  sub_2191EF904(v0);
  swift_endAccess();
  swift_beginAccess();

  sub_2191F062C(v1);
  swift_endAccess();
  swift_beginAccess();
  swift_beginAccess();
  sub_21981B554(0, &unk_27CC1FC90, sub_21981B204, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

void sub_21981A984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = __swift_project_boxed_opaque_existential_1((a5 + 112), *(a5 + 136));
  v14 = *MEMORY[0x277D30B98];
  v15 = swift_allocObject();
  v15[2] = sub_218846958;
  v15[3] = v12;
  v15[4] = a3;
  v15[5] = a4;
  v16 = *v13;
  v17 = *(*v13 + 56);

  v18 = v17;
  sub_218ACE2AC(a6);
  v19 = objc_allocWithZone(MEMORY[0x277D30DE8]);
  v20 = sub_219BF5904();

  v21 = sub_219BF5904();
  v22 = [v19 initWithContext:v18 articleIDs:v20 ignoreCacheForArticleIDs:v21];

  [v22 setPurpose_];
  [v22 setQualityOfService_];
  [v22 setRelativePriority_];
  v23 = swift_allocObject();
  v23[2] = v16;
  v23[3] = sub_218E9AE88;
  v23[4] = v15;
  v26[4] = sub_218B6AF24;
  v26[5] = v23;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_218B66540;
  v26[3] = &block_descriptor_176;
  v24 = _Block_copy(v26);
  v25 = v22;

  [v25 setFetchCompletionBlock_];
  _Block_release(v24);

  [*(v16 + 72) addOperation_];
}

uint64_t sub_21981AC14()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  __swift_destroy_boxed_opaque_existential_1(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1(v0 + 312);
  __swift_destroy_boxed_opaque_existential_1(v0 + 352);
  swift_unknownObjectRelease();
  sub_219505E98(v0 + 400);
  v1 = OBJC_IVAR____TtC7NewsUI213SearchService_logger;
  v2 = sub_219BE5434();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_21981ACE4()
{
  sub_21981AC14();

  return swift_deallocClassInstance();
}

uint64_t sub_21981AD64()
{
  result = sub_219BE5434();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_21981AE80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2187995D4(255, &qword_280E8EB20, &qword_280E8DA30);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21981AF48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21981AFD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21981B040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21981B0A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for SearchResultsExpander();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21981B104(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_21981AE80(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_21981B170()
{
  if (!qword_280EE6A00)
  {
    sub_2187995D4(255, &qword_280E8EB20, &qword_280E8DA30);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6A00);
    }
  }
}

void sub_21981B204()
{
  if (!qword_27CC1FC80)
  {
    sub_21981B278(255);
    sub_218A3A1C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1FC80);
    }
  }
}

uint64_t sub_21981B2AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SearchResponse(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_21981A3AC(a1, v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_21981B410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_21981B49C()
{
  if (!qword_27CC1FC88)
  {
    sub_21981B278(255);
    sub_218A3A1C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1FC88);
    }
  }
}

void sub_21981B554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21981B628()
{
  if (!qword_27CC1FCB0)
  {
    sub_2186DF2B4(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1FCB0);
    }
  }
}

uint64_t sub_21981B6F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_219816204(a1, v4, (v1 + 24));
}

void sub_21981B7C8()
{
  type metadata accessor for SearchResponse(319);
  if (v0 <= 0x3F)
  {
    sub_21981B278(319);
    if (v1 <= 0x3F)
    {
      sub_218A3A1C4();
      if (v2 <= 0x3F)
      {
        sub_2187995D4(319, &qword_280E8EB20, &qword_280E8DA30);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21981B898(void *a1)
{
  v1 = [a1 type];
  sub_219BF5414();

  sub_218B9E340();
  sub_218B9E394();
  LOBYTE(v1) = sub_219BF5314();

  return v1 & 1;
}

uint64_t sub_21981B948(void *a1)
{
  v1 = [a1 type];
  sub_219BF5414();

  sub_218B9E340();
  sub_218B9E394();
  LOBYTE(v1) = sub_219BF5314();

  return v1 & 1;
}

uint64_t sub_21981B9F8(void *a1)
{
  v2 = v1;
  sub_21896FA3C();
  v65 = *(v4 - 8);
  v5 = *(v65 + 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v61 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - v14;
  v16 = [a1 type];
  v17 = sub_219BF5414();
  v19 = v18;

  v20 = v17 == 0xD000000000000019 && 0x8000000219D38830 == v19;
  if (v20 || (sub_219BF78F4() & 1) != 0)
  {

    v21 = swift_allocObject();
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    v63 = v21;
    v62 = OBJC_IVAR____TtC7NewsUI223NewsShortcutItemHandler_navigator;
    v22 = *(v2 + OBJC_IVAR____TtC7NewsUI223NewsShortcutItemHandler_tracker);
    v23 = sub_219BDFA44();
    v24 = v15;
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    sub_2187B1814(&v72, &v67, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v64 = v2;
    if (!v68)
    {
      sub_2187B1D30(&v67, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v29 = qword_280ED32D8;
      v30 = qword_280ED32E0;
      v31 = qword_280ED32E8;

      sub_2188202A8(v30);
      goto LABEL_13;
    }

    sub_21875F93C(&v67, &v69);
    __swift_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
    sub_2187A53A0();
    result = sub_219BE1E24();
    if (result)
    {
      v26 = result;
      __swift_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
      sub_2187367A8();
      result = sub_219BE1E24();
      if (result)
      {
        v27 = sub_219BED5B4();

        MEMORY[0x28223BE20](v28);
        *(&v61 - 2) = v26;
        *(&v61 - 1) = v27;
        sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        v29 = sub_219BE30B4();

        __swift_destroy_boxed_opaque_existential_1(&v69);
        v30 = 0;
        v31 = 0;
        v24 = v15;
LABEL_13:
        v61 = v24;
        v66 = v63 | 0x4000000000000002;
        v68 = sub_219BDD274();
        *&v67 = v22;
        sub_2189B4E2C(v24, v13);
        sub_2187B1814(&v75, &v69, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v32 = (v65[80] + 24) & ~v65[80];
        v33 = (v5 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
        v34 = swift_allocObject();
        *(v34 + 16) = v22;
        sub_2189B4EAC(v13, v34 + v32);
        v35 = v34 + v33;
        v36 = v70;
        *v35 = v69;
        *(v35 + 16) = v36;
        *(v35 + 32) = v71;
        v37 = (v34 + ((v33 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v37 = v29;
        v37[1] = v30;
        v37[2] = v31;
        swift_retain_n();

        sub_2188202A8(v30);
        sub_218702160();
        sub_21981C8C8(&qword_280EE5D90, sub_218702160);
        sub_219BEB474();

        sub_2187FABEC(v30);
        sub_2187B1D30(&v72, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_2187B1D30(&v75, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_218A42D80(v61);
        sub_218806FD0(&v67);

        return 1;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (v17 == 0xD00000000000001FLL && 0x8000000219D33070 == v19)
    {
    }

    else
    {
      v38 = sub_219BF78F4();

      if ((v38 & 1) == 0)
      {
        sub_219BF61F4();
        sub_2188096E0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_219C09BA0;
        *&v75 = 0;
        *(&v75 + 1) = 0xE000000000000000;
        sub_219BF7314();

        *&v75 = 0xD00000000000001FLL;
        *(&v75 + 1) = 0x8000000219D38880;
        v48 = [a1 type];
        v49 = sub_219BF5414();
        v51 = v50;

        MEMORY[0x21CECC330](v49, v51);

        v52 = v75;
        *(v47 + 56) = MEMORY[0x277D837D0];
        *(v47 + 64) = sub_2186FC3BC();
        *(v47 + 32) = v52;
        sub_2186C66AC();
        v53 = sub_219BF6F44();
        sub_219BE5314();

        return 0;
      }
    }

    sub_218D16904(a1, &v75);
    v39 = v75;
    v63 = OBJC_IVAR____TtC7NewsUI223NewsShortcutItemHandler_navigator;
    v64 = v2;
    v40 = *(v2 + OBJC_IVAR____TtC7NewsUI223NewsShortcutItemHandler_tracker);
    v41 = sub_219BDFA44();
    (*(*(v41 - 8) + 56))(v10, 1, 1, v41);
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    sub_2187B1814(&v72, &v67, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (v68)
    {
      sub_21875F93C(&v67, &v69);
      *&v67 = v39;
      v42 = sub_2194DA78C(&v69);
      v44 = v43;
      v46 = v45;
      __swift_destroy_boxed_opaque_existential_1(&v69);
    }

    else
    {
      sub_2187B1D30(&v67, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v42 = qword_280ED32D8;
      v44 = qword_280ED32E0;
      v46 = qword_280ED32E8;

      sub_2188202A8(v44);
    }

    v66 = v39;
    v68 = sub_219BDD274();
    *&v67 = v40;
    sub_2189B4E2C(v10, v7);
    sub_2187B1814(&v75, &v69, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v54 = v65[80];
    v65 = v10;
    v55 = (v54 + 24) & ~v54;
    v56 = (v5 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = v39;
    v57 = swift_allocObject();
    *(v57 + 16) = v40;
    sub_2189B4EAC(v7, v57 + v55);
    v58 = v57 + v56;
    v59 = v70;
    *v58 = v69;
    *(v58 + 16) = v59;
    *(v58 + 32) = v71;
    v60 = (v57 + ((v56 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v60 = v42;
    v60[1] = v44;
    v60[2] = v46;
    swift_retain_n();

    sub_2188202A8(v44);
    sub_218702160();
    sub_21981C8C8(&qword_280EE5D90, sub_218702160);
    sub_219BEB474();

    sub_2187FABEC(v44);
    sub_2187B1D30(&v72, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1D30(&v75, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_218A42D80(v65);
    sub_218806FD0(&v67);
    sub_218932F9C(v62);
    return 1;
  }

  return result;
}

uint64_t sub_21981C7B4()
{
  v1 = OBJC_IVAR____TtC7NewsUI223NewsShortcutItemHandler_navigator;
  sub_218702160();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21981C8C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SharedWithYouFeedConfigFetchResult()
{
  result = qword_27CC1FCD8;
  if (!qword_27CC1FCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21981C988()
{
  type metadata accessor for SharedWithYouFeedContentConfig();
  if (v0 <= 0x3F)
  {
    sub_2186EE86C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21981CA0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21981D218(0, &qword_27CC1FD00, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21981D160();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_21981D27C(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21981D1B4(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21981CCB8(uint64_t a1)
{
  v2 = sub_21981D160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21981CCF4(uint64_t a1)
{
  v2 = sub_21981D160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21981CD70(void *a1)
{
  sub_21981D218(0, &qword_27CC1FD10, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21981D160();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_21981D27C(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21981CFD0(uint64_t a1)
{
  result = sub_21981D27C(&qword_27CC1A518, type metadata accessor for TopicRecipesTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21981D028(void *a1)
{
  a1[1] = sub_21981D27C(&qword_27CC1FCF8, type metadata accessor for TopicRecipesTagFeedGroup);
  a1[2] = sub_21981D27C(&qword_27CC1C6C8, type metadata accessor for TopicRecipesTagFeedGroup);
  result = sub_21981D27C(&qword_27CC1C7D8, type metadata accessor for TopicRecipesTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_21981D0D4(uint64_t a1)
{
  v2 = sub_21981D27C(&qword_27CC1FCF8, type metadata accessor for TopicRecipesTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_21981D160()
{
  result = qword_27CC1FD08;
  if (!qword_27CC1FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FD08);
  }

  return result;
}

uint64_t sub_21981D1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRecipesTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21981D218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21981D160();
    v7 = a3(a1, &type metadata for TopicRecipesTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21981D27C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21981D2D8()
{
  result = qword_27CC1FD18;
  if (!qword_27CC1FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FD18);
  }

  return result;
}

unint64_t sub_21981D330()
{
  result = qword_27CC1FD20;
  if (!qword_27CC1FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FD20);
  }

  return result;
}

unint64_t sub_21981D388()
{
  result = qword_27CC1FD28;
  if (!qword_27CC1FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FD28);
  }

  return result;
}

uint64_t sub_21981D3DC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_21908A55C(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_219418294(v4, v5);
}

uint64_t MailShareLinkTextProvider.text(for:)(void *a1)
{
  v3 = sub_21981D4A4(v1, a1);

  MEMORY[0x21CECC330](8250, 0xE200000000000000);

  return v3;
}

uint64_t sub_21981D4A4(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_219BDB5E4();
  }

  else
  {
    type metadata accessor for Localized();
    v6 = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v4 = sub_219BDB5E4();

    v8 = [a2 sourceName];
    if (v8)
    {
      v9 = v8;
      v10 = sub_219BF5414();
      v12 = v11;

      MEMORY[0x21CECC330](v10, v12);
    }
  }

  return v4;
}

uint64_t sub_21981D668(void *a1)
{
  v3 = sub_21981D4A4(*v1, a1);

  MEMORY[0x21CECC330](8250, 0xE200000000000000);

  return v3;
}

void sub_21981D6E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a2;
  v24 = sub_219BE0234();
  v23[0] = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21981DA60();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDCC14();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(v23 - v14, a1, v13);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v12, v9);
    v16 = sub_219BDCC04();
    v17 = sub_219BDD084();
    v19 = v18;

    if (!v3)
    {
      sub_21981DAF4(&qword_280EE8480, MEMORY[0x277D2E3D8]);
      v20 = v24;
      sub_219BE1974();
      sub_2186C6190(v17, v19);
      (*(v23[0] + 32))(a3, v7, v20);
      v21 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
    }
  }

  else
  {
    v22 = type metadata accessor for EngagementEvent();
    (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }
}

void sub_21981DA60()
{
  if (!qword_280EE8F80)
  {
    sub_219BE0244();
    sub_21981DAF4(&qword_280EE8478, MEMORY[0x277D2E3E8]);
    v0 = sub_219BDCC14();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8F80);
    }
  }
}

uint64_t sub_21981DAF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21981DB3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v1 = off_282A88770[0];
        type metadata accessor for MagazineSectionBarViewController();
        v1();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21981DC14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for MagazineSectionBarModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &off_282A68D20;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21981DCC4()
{
  type metadata accessor for MagazineSectionBarViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EB3EA0);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280EB3EA8);
  sub_219BE2914();
  type metadata accessor for MagazineSectionBarRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_280E9FDD8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EA6008);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EA3270);
  sub_219BE2914();

  sub_219822554(0, &qword_280EE5568, MEMORY[0x277D6D8B8]);
  sub_219BE2904();

  type metadata accessor for MagazineSectionBarBlueprintModifierFactory();
  sub_219BE2904();

  sub_2198217D0();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21982203C();
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_2198218DC();
  sub_219BE2904();

  sub_219822178();
  sub_219BE2904();

  sub_2197D454C(0);
  sub_219BE2904();

  type metadata accessor for MagazineSectionBarLayoutAttributesFactory();
  sub_219BE2904();

  type metadata accessor for MagazineSectionBarBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_219822230();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0);
  sub_219BE2904();

  sub_2198219A8();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_218BF0580();
  sub_219BE2904();

  sub_219821B24();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219821D98();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219821F30();
  sub_219BE2904();

  type metadata accessor for MagazineSectionBarBlueprintViewCellProvider();
  sub_219BE2904();

  type metadata accessor for MagazineSectionBarBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_219822490(0, &unk_280EE4698, MEMORY[0x277D6E388]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_219822384();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE9C94();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();
}

uint64_t sub_21981E5E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB3EA0);
  result = sub_219BE1E34();
  if (!v42)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E9FDD8);
  result = sub_219BE1E34();
  if (!v39)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822230();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197D454C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineSectionBarConfig();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F37C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  v30 = v40;
  v31 = v39;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (v38)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v29[2] = v29;
    MEMORY[0x28223BE20](v7);
    v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for MagazineSectionBarStyler();
    v35 = v12;
    v36 = &off_282A4D638;
    v34[0] = v11;
    v13 = type metadata accessor for MagazineSectionBarViewController();
    v14 = objc_allocWithZone(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    v29[1] = v29;
    MEMORY[0x28223BE20](v15);
    v17 = (v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v33[3] = v12;
    v33[4] = &off_282A4D638;
    v33[0] = v19;
    v14[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_isBeingUsedAsPlugin] = 0;
    *&v14[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_pluggableDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v20 = OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_previousSelectedIndexPath;
    v21 = sub_219BDC104();
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    *&v14[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintHorizontalShimView] = 0;
    sub_218718690(v33, &v14[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_styler]);
    v22 = &v14[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler];
    v23 = v30;
    *v22 = v31;
    v22[1] = v23;
    *&v14[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintViewController] = v3;
    *&v14[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintLayoutProvider] = v4;
    *&v14[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_featureAvailability] = v6;
    sub_218718690(v37, &v14[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_offlineProvider]);
    *&v14[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_config] = v5;
    v32.receiver = v14;
    v32.super_class = v13;
    swift_unknownObjectRetain();
    v24 = v3;

    swift_unknownObjectRetain();

    v25 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
    *(*&v25[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler] + 24) = &off_282A88768;
    swift_unknownObjectWeakAssign();
    v26 = *&v25[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintViewController];
    v27 = v25;
    v28 = v26;
    sub_219BE8744();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return v27;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21981EBA0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_219821D50(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for MagazineSectionBarStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A4D638;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21981EE00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21876A328(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for MagazineSectionBarRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v8 + 64) = v5;
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A43278;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21981EF38(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineSectionBarViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_21981EFB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA6008);
  result = sub_219BE1E34();
  v5 = v27;
  if (v27)
  {
    v6 = v28;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EB3EA8);
    result = sub_219BE1E34();
    if (v26)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      MEMORY[0x28223BE20](v7);
      v9 = (&v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for MagazineSectionBarRouter();
      v24[3] = v12;
      v24[4] = &off_282A43278;
      v24[0] = v11;
      type metadata accessor for MagazineSectionBarEventHandler();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, v12);
      MEMORY[0x28223BE20](v14);
      v16 = (&v23[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v23[3] = v12;
      v23[4] = &off_282A43278;
      v23[0] = v18;
      v13[3] = 0;
      swift_unknownObjectWeakInit();
      v13[4] = v5;
      v13[5] = v6;
      sub_218718690(v23, (v13 + 6));
      ObjectType = swift_getObjectType();
      v20 = *(v6 + 16);
      swift_unknownObjectRetain();

      v20(v21, &off_282A497E8, ObjectType, v6);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v23);
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = __swift_destroy_boxed_opaque_existential_1(v25);
      *a2 = v13;
      a2[1] = &off_282A497F8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21981F2B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA3270);
  result = sub_219BE1E34();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198217D0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineSectionBarBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A328(0, &qword_280E90690, sub_2186F1660, &type metadata for MagazineFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    sub_2198225D8();
    v8 = swift_allocObject();
    v8[3] = 0;
    swift_unknownObjectWeakInit();
    v8[6] = v11;
    v8[7] = v12;
    v8[4] = v5;
    v8[5] = v6;
    v8[8] = v7;
    swift_allocObject();
    swift_weakInit();
    swift_unknownObjectRetain();

    v9 = v7;
    v10 = sub_219BF1AF4();
    swift_unknownObjectRelease();

    *a2 = v8;
    a2[1] = &off_282A6E708;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21981F4E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MagazineSectionBarDataManager();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_282A48500;
  return result;
}

uint64_t sub_21981F528()
{
  sub_219822554(0, &qword_280EE5568, MEMORY[0x277D6D8B8]);
  swift_allocObject();
  return sub_219BE6F94();
}

uint64_t sub_21981F57C()
{
  type metadata accessor for MagazineSectionBarBlueprintModifierFactory();

  return swift_allocObject();
}

uint64_t sub_21981F5B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822554(0, &qword_280EE5568, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2198218DC();
    result = sub_219BE1E24();
    if (result)
    {
      sub_2198217D0();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21981F6AC(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D6E728];
  sub_219822554(0, &qword_280EE4448, MEMORY[0x277D6E728]);
  swift_allocObject();
  sub_219BE96E4();
  sub_219822554(0, &unk_280EE45B0, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_219821D0C(&unk_280EE4450, &qword_280EE4448, v3);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21982203C();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_219821D50(&qword_280EE3BD0, sub_21982203C);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21981F864(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197D454C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineSectionBarBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822178();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21982203C();
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21981FA6C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_21981FAB0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198219A8();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_2198218DC();
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21981FC08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_219BF4B04();
  result = sub_219BE1DE4();
  if (result)
  {
    v4 = result;
    v9 = v2;
    v10 = sub_219821D50(&qword_280E8FD78, MEMORY[0x277D345C8]);
    *&v8 = v4;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE3CD0);
    result = sub_219BE1E34();
    if (v7)
    {
      type metadata accessor for MagazineSectionBarLayoutAttributesFactory();
      v5 = swift_allocObject();
      sub_2186CB1F0(&v8, v5 + 16);
      sub_2186CB1F0(&v6, v5 + 56);
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21981FD44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineSectionBarLayoutAttributesFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21872F37C();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for MagazineSectionBarBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21981FDF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822554(0, &qword_280EE5568, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198219A8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822490(0, &unk_280EE4698, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219821D50(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_219822230();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_219820130()
{
  v0 = sub_219BE8FC4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E3C8]);
  sub_219BE86C4();
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  [v3 setSelectionFollowsFocus_];
}

uint64_t sub_219820230(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0580();
  result = sub_219BE1DE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2198202D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219821B24();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219821D98();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219821F30();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2198219A8();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219820444@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198219A8();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2198204FC()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_2198205CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_218BF0580();
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21982065C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822554(0, &qword_280EE5568, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197D454C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineSectionBarBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineSectionBarBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_219821B24();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_219820814(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219820924(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2198209F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822554(0, &qword_280EE5568, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197D454C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822490(0, &unk_280EE4698, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219821D50(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_219821D98();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9754();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_219820C1C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219822384();
  if (sub_219BE1E24())
  {
    sub_219821D50(&qword_280EE40B0, sub_219822384);
  }

  return sub_219BE9774();
}

uint64_t sub_219820D20(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822554(0, &qword_280EE5568, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2197D454C(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219821F30();
      v4 = objc_allocWithZone(v3);
      return sub_219BE9F24();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219820DFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90158);
  result = sub_219BE1DF4();
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE4FB0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187164E4();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    type metadata accessor for MagazineSectionBarBlueprintViewCellProvider();
    v4 = swift_allocObject();
    sub_2186CB1F0(&v7, v4 + 16);
    sub_2186CB1F0(&v5, v4 + 56);
    *(v4 + 96) = v3;
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219820F40()
{
  type metadata accessor for MagazineSectionBarBlueprintViewSupplementaryViewProvider();

  return swift_allocObject();
}

uint64_t sub_219820F74(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_219822490(0, &qword_280EE4720, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822554(0, &qword_280EE5568, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_219822490(0, &unk_280EE4698, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21982121C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197D454C(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219821D50(&qword_280EE4C58, sub_2197D454C);
    return sub_219BE8E94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2198212DC(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822384();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_219821D50(&qword_280EE40B8, sub_219822384);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE9C94();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E890];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219821418(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198219A8();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822554(0, &qword_280EE5568, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219821D50(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_219822384();
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219821674(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219822230();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_219821D50(a3, sub_219822230);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_219821728@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219822230();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_219821D50(&qword_280EE4AD0, sub_219822230);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2198217D0()
{
  if (!qword_280EE55F8)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_219822554(255, &qword_280EE5568, MEMORY[0x277D6D8B8]);
    sub_2198218DC();
    sub_219821D0C(&qword_280EE5570, &qword_280EE5568, v0);
    sub_219821D50(&qword_280EE5310, sub_2198218DC);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE55F8);
    }
  }
}

void sub_2198218DC()
{
  if (!qword_280EE5308)
  {
    sub_2198219A8();
    sub_2189510B4();
    sub_218951108();
    sub_219821D50(&qword_280EE4F50, sub_2198219A8);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5308);
    }
  }
}

void sub_2198219A8()
{
  if (!qword_280EE4F48)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_219821B24();
    sub_219821D98();
    sub_219821F30();
    type metadata accessor for MagazineSectionBarViewController();
    sub_219821D50(&qword_280EE3F40, sub_219821B24);
    sub_219821D50(&unk_280EE43D8, sub_219821D98);
    sub_219821D50(&qword_280EE3DB8, sub_219821F30);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4F48);
    }
  }
}

void sub_219821B24()
{
  if (!qword_280EE3F38)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_219822554(255, &qword_280EE5568, MEMORY[0x277D6D8B8]);
    sub_2197D454C(255);
    type metadata accessor for MagazineSectionBarBlueprintViewCellProvider();
    type metadata accessor for MagazineSectionBarBlueprintViewSupplementaryViewProvider();
    sub_219821D0C(&qword_280EE5570, &qword_280EE5568, v0);
    sub_219821D50(&qword_280EE4C50, sub_2197D454C);
    sub_219821D50(&unk_280E94600, type metadata accessor for MagazineSectionBarBlueprintViewCellProvider);
    sub_219821D50(qword_280EE1B98, type metadata accessor for MagazineSectionBarBlueprintViewSupplementaryViewProvider);
    sub_219821D50(&unk_280EB01E0, type metadata accessor for MagazineSectionBarLayoutModel);
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3F38);
    }
  }
}

uint64_t sub_219821D0C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_219822554(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219821D50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_219821D98()
{
  if (!qword_280EE43D0)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_219822554(255, &qword_280EE5568, MEMORY[0x277D6D8B8]);
    sub_2197D454C(255);
    type metadata accessor for MagazineSectionBarViewController();
    sub_219821D0C(&qword_280EE5570, &qword_280EE5568, v0);
    sub_219821D50(&qword_280EE4C50, sub_2197D454C);
    sub_219821D50(&qword_280EA5FF8, type metadata accessor for MagazineSectionBarViewController);
    sub_219821D50(&unk_280EB01E0, type metadata accessor for MagazineSectionBarLayoutModel);
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE43D0);
    }
  }
}

void sub_219821F30()
{
  if (!qword_280EE3DB0)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_219822554(255, &qword_280EE5568, MEMORY[0x277D6D8B8]);
    sub_2197D454C(255);
    sub_219821D0C(&qword_280EE5570, &qword_280EE5568, v0);
    sub_219821D50(&qword_280EE4C50, sub_2197D454C);
    v1 = sub_219BE9F34();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3DB0);
    }
  }
}

void sub_21982203C()
{
  if (!qword_280EE3BC8)
  {
    sub_2197D454C(255);
    type metadata accessor for MagazineSectionBarBlueprintLayoutBuilder();
    sub_219822178();
    sub_219821D50(&qword_280EE4C50, sub_2197D454C);
    sub_219821D50(&qword_280E961D8, type metadata accessor for MagazineSectionBarBlueprintLayoutBuilder);
    sub_219821D50(&qword_280EE4218, sub_219822178);
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3BC8);
    }
  }
}

void sub_219822178()
{
  if (!qword_280EE4210)
  {
    type metadata accessor for MagazineSectionBarLayoutModel();
    sub_218DB77CC();
    sub_219821D50(&unk_280EB01E0, type metadata accessor for MagazineSectionBarLayoutModel);
    v0 = sub_219BE9974();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4210);
    }
  }
}

void sub_219822230()
{
  if (!qword_280EE4AC8)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_219822554(255, &qword_280EE5568, MEMORY[0x277D6D8B8]);
    sub_2198219A8();
    type metadata accessor for MagazineSectionBarViewController();
    sub_219821D0C(&qword_280EE5570, &qword_280EE5568, v0);
    sub_219821D50(&qword_280EE4F50, sub_2198219A8);
    sub_219821D50(&qword_280EA5FF8, type metadata accessor for MagazineSectionBarViewController);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4AC8);
    }
  }
}

void sub_219822384()
{
  if (!qword_280EE40A8)
  {
    sub_2198219A8();
    v0 = MEMORY[0x277D6D8B8];
    sub_219822554(255, &qword_280EE5568, MEMORY[0x277D6D8B8]);
    sub_219821D50(&qword_280EE4F50, sub_2198219A8);
    sub_219821D0C(&qword_280EE5578, &qword_280EE5568, v0);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE40A8);
    }
  }
}

void sub_219822490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277D6D8B8];
    sub_219822554(255, &qword_280EE5568, MEMORY[0x277D6D8B8]);
    v8 = v7;
    v9 = sub_219821D0C(&qword_280EE5570, &qword_280EE5568, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_219822554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineSectionBarSectionDescriptor;
    v8[1] = &type metadata for MagazineSectionBarModel;
    v8[2] = sub_2189510B4();
    v8[3] = sub_218951108();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2198225D8()
{
  if (!qword_280EB3EC0[0])
  {
    type metadata accessor for MagazineSectionBarBlueprintModifierFactory();
    sub_219821D50(qword_280E94C20, type metadata accessor for MagazineSectionBarBlueprintModifierFactory);
    v0 = type metadata accessor for MagazineSectionBarInteractor();
    if (!v1)
    {
      atomic_store(v0, qword_280EB3EC0);
    }
  }
}

uint64_t sub_219822674()
{
  v0 = sub_219BEF0F4();
  v1 = v0;
  v8 = MEMORY[0x277D84FA0];
  if (v0 >> 62)
  {
LABEL_14:
    v2 = sub_219BF7214();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v3, v1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v6 = v8;
            goto LABEL_16;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_11;
          }
        }

        v5 = sub_21960A8D8();
        sub_218DD88E0(v5);

        ++v3;
        if (v4 == v2)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v6 = MEMORY[0x277D84FA0];
LABEL_16:

  return v6;
}

uint64_t sub_219822788@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  sub_219BEF0B4();

  v6 = NewsCoreUserDefaults();
  v7 = [v6 BOOLForKey_];

  if (!v7)
  {
    goto LABEL_4;
  }

  if (!a2)
  {
    *a3 = 0xD000000000000040;
    a3[1] = 0x8000000219D38A20;
LABEL_7:
    v11 = MEMORY[0x277D328F0];
    goto LABEL_8;
  }

  sub_219BEF0B4();
  v8 = *(v15 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController);

  v9 = sub_219BF53D4();
  v10 = [v8 hasSubscriptionToTagID_];

  if ((v10 & 1) == 0)
  {
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD00000000000004FLL, 0x8000000219D38A70);
    MEMORY[0x21CECC330](a1, a2);
    *a3 = 0;
    a3[1] = 0xE000000000000000;
    goto LABEL_7;
  }

LABEL_4:
  v11 = MEMORY[0x277D328E8];
LABEL_8:
  v12 = *v11;
  v13 = sub_219BEFBB4();
  return (*(*(v13 - 8) + 104))(a3, v12, v13);
}

uint64_t sub_219822940@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  if (a2 && (sub_219BEF0B4(), v6 = *(v13 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController), , v7 = sub_219BF53D4(), v8 = [v6 hasMutedSubscriptionForTagID_], v6, v7, v8))
  {
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000038, 0x8000000219CF7F50);
    MEMORY[0x21CECC330](a1, a2);
    *a3 = 0;
    a3[1] = 0xE000000000000000;
    v9 = MEMORY[0x277D328F0];
  }

  else
  {
    v9 = MEMORY[0x277D328E8];
  }

  v10 = *v9;
  v11 = sub_219BEFBB4();
  return (*(*(v11 - 8) + 104))(a3, v10, v11);
}

uint64_t sub_219822A90@<X0>(unint64_t *a1@<X8>)
{
  sub_219BEF0B4();
  v2 = *(v9 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState);

  if (v2 == 1)
  {
    v5 = MEMORY[0x277D328E8];
  }

  else
  {
    if (v2)
    {
      v3 = 0x8000000219D28FD0;
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x8000000219D29040;
      v4 = 0xD00000000000001CLL;
    }

    *a1 = v4;
    a1[1] = v3;
    v5 = MEMORY[0x277D328F0];
  }

  v6 = *v5;
  v7 = sub_219BEFBB4();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

uint64_t sub_219822B78@<X0>(unint64_t *a1@<X8>)
{
  sub_219BEF0B4();
  v2 = *(v9 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState);

  if (v2 == 1)
  {
    v4 = 0x8000000219D28FF0;
    v5 = 0xD000000000000018;
LABEL_6:
    *a1 = v5;
    a1[1] = v4;
    v3 = MEMORY[0x277D328F0];
    goto LABEL_7;
  }

  if (v2)
  {
    v4 = 0x8000000219D28FD0;
    v5 = 0xD000000000000011;
    goto LABEL_6;
  }

  v3 = MEMORY[0x277D328E8];
LABEL_7:
  v6 = *v3;
  v7 = sub_219BEFBB4();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

void sub_219822C60(uint64_t a1@<X2>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_219BEF0B4();
    v3 = *(v16 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController);

    v4 = [v3 subscribedTagIDs];

    if (v4)
    {
      v5 = sub_219BF5924();

      v6 = sub_218845F78(v5);

      v8 = sub_218845F78(v7);

      v9 = sub_218C33480(v6, v8);

      if (v9)
      {
        *a2 = 0xD000000000000017;
        a2[1] = 0x8000000219D38AC0;
        v10 = MEMORY[0x277D328F0];
      }

      else
      {
        v10 = MEMORY[0x277D328E8];
      }

      v14 = *v10;
      v15 = sub_219BEFBB4();
      (*(*(v15 - 8) + 104))(a2, v14, v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = *MEMORY[0x277D328E8];
    v12 = sub_219BEFBB4();
    v13 = *(*(v12 - 8) + 104);

    v13(a2, v11, v12);
  }
}

uint64_t sub_219822E34()
{
  sub_2189AE994(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_280F61830);
  __swift_project_value_buffer(v1, qword_280F61830);
  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();
  return sub_219BEE974();
}

void sub_219822EE8(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_219BDB5E4();
  v7 = v6;

  v8 = [v3 bundleForClass_];
  v9 = sub_219BDB5E4();
  v11 = v10;

  strcpy(a1, "recentSearch");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
}

double sub_219823094@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_219BEEA84();
  v30 = *(v5 - 8);
  v6 = v30;
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SavedFeedContentConfig();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[1];
  v29 = *v2;
  v13 = v29;
  v27 = v11;
  v28 = v12;
  sub_2198233D0(a1, v11, type metadata accessor for SavedFeedContentConfig);
  v14 = type metadata accessor for SavedFeedServiceConfig();
  v15 = *(v2 + v14[6]);
  v16 = *(v2 + v14[7]);
  v17 = *(v6 + 16);
  v18 = v2 + v14[8];
  v19 = v31;
  v17(v8, v18, v31);
  v20 = v28;
  *a2 = v13;
  *(a2 + 1) = v20;
  v21 = v27;
  sub_2198233D0(v27, &a2[v14[5]], type metadata accessor for SavedFeedContentConfig);
  *&a2[v14[6]] = v15;
  *&a2[v14[7]] = v16;
  v22 = v19;
  v17(&a2[v14[8]], v8, v19);
  v23 = v15;
  swift_unknownObjectRetain();

  v24 = [v16 autoRefreshMinimumInterval];
  (*(v30 + 8))(v8, v22);
  sub_219619108(v21);
  result = v24;
  *&a2[v14[9]] = v24;
  return result;
}

uint64_t sub_2198233D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t TopHeadlinesQueryTimeRangeConfigurationManager.__allocating_init(appConfigurationManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TopHeadlinesQueryTimeRangeConfigurationManager.timeRange.getter()
{
  v1 = *(v0 + 16);
  v2 = [v1 appConfiguration];
  swift_unknownObjectRelease();
  v3 = [v1 appConfiguration];
  if ([v3 respondsToSelector_])
  {
    v4 = [v3 articleRecirculationPopularFeedQueryTimeRange];
  }

  else
  {
    v4 = 86400;
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t TopHeadlinesQueryTimeRangeConfigurationManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219823564()
{
  v1 = *(*v0 + 16);
  v2 = [v1 appConfiguration];
  swift_unknownObjectRelease();
  v3 = [v1 appConfiguration];
  if ([v3 respondsToSelector_])
  {
    v4 = [v3 articleRecirculationPopularFeedQueryTimeRange];
  }

  else
  {
    v4 = 86400;
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_21982363C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v5 = sub_219BF0BD4();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[9] = v6;
  *v6 = v3;
  v6[1] = sub_219823734;

  return sub_219823D00(a2);
}

uint64_t sub_219823734(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_219823884, 0, 0);
  }
}

uint64_t sub_219823884()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  type metadata accessor for ForYouAudioFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v3 + 8))(v2, v4);
  v5 = v0[2];
  if (v1 >> 62)
  {
    v6 = sub_219BF7214();
    if (v6 < v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 < v5)
    {
LABEL_3:

      v7 = sub_219BEEDD4();
      sub_2186E6EF0(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      *v8 = v5;
      v8[1] = v6;
      (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D32400], v7);
      swift_willThrow();

      v9 = v0[1];

      return v9();
    }
  }

  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_219823ABC;
  v12 = v0[10];
  v13 = v0[4];

  return sub_2198242F8(v13, v12);
}

uint64_t sub_219823ABC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_219823C94;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_219823BEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219823BEC()
{
  sub_219825400(*(v0 + 104), *(v0 + 24));

  sub_218C68E08(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219823C94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219823D00(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_219BF0BD4();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219823DC0, 0, 0);
}

uint64_t sub_219823DC0()
{
  sub_219BEF164();

  v0[12] = v0[3];

  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_219823EC8;

  return MEMORY[0x2821D23D8](v0 + 5);
}

uint64_t sub_219823EC8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_21982428C;
  }

  else
  {

    v2 = sub_219823FE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219823FE4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[8] + OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_knobs;
  v6 = *(v5 + *(type metadata accessor for ForYouAudioFeedGroupKnobs() + 24));
  sub_219BEF134();
  v7 = v6;
  sub_219BEF524();
  (*(v2 + 8))(v1, v3);
  v9 = v0[6];
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v3 = v4 >> 62;
    if (!(v4 >> 62))
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 >= v9)
      {
        v11 = v0[6];
      }

      else
      {
        v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (v10 >= v12)
      {
        goto LABEL_10;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  if (v4 < 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v8;
  }

  v1 = sub_219BF7214();
  result = sub_219BF7214();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (v1 >= v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = v1;
  }

  if (v1 < 0)
  {
    v24 = v9;
  }

  if (v9)
  {
    v12 = v24;
  }

  else
  {
    v12 = 0;
  }

  if (sub_219BF7214() < v12)
  {
    goto LABEL_45;
  }

LABEL_10:
  if ((v4 & 0xC000000000000001) != 0)
  {

    if (v12)
    {
      sub_218731D50();
      v13 = 0;
      do
      {
        v14 = v13 + 1;
        sub_219BF7334();
        v13 = v14;
      }

      while (v12 != v14);
    }
  }

  else
  {
  }

  if (v3)
  {
    v7 = sub_219BF7564();
    v3 = v15;
    v1 = v16;
    v12 = v17;

    if (v12)
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_218B667DC(v7, v3, v1, v12);
    v19 = v18;
LABEL_27:
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v1 = 0;
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  v3 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v12 = (2 * v12) | 1;
  if ((v12 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x277D84F90];
  }

  v21 = *(v20 + 16);

  if (__OFSUB__(v12 >> 1, v1))
  {
    goto LABEL_46;
  }

  if (v21 != (v12 >> 1) - v1)
  {
LABEL_47:
    swift_unknownObjectRelease_n();
    goto LABEL_20;
  }

  v19 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v19)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

LABEL_28:

  v22 = v0[1];

  return v22(v19);
}

uint64_t sub_21982428C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2198242F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186E4DC8(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_2186E4DC8(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[6] = swift_task_alloc();
  sub_2186E4DC8(0, &qword_280E91A50, sub_2186E7180, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_219BF2034();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  sub_218A89A94(0);
  v3[14] = swift_task_alloc();
  sub_2186FE720();
  v3[15] = swift_task_alloc();
  type metadata accessor for ForYouAudioFeedGroupConfigData();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = sub_219BF1934();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v8 = sub_219BF3C84();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v9 = sub_219BF3E84();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2198246C0, 0, 0);
}

uint64_t sub_2198246C0()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v56 = MEMORY[0x277D84F90];
    v4 = sub_218C34A88(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v4, v5, v6, v7, v8);
    }

    v9 = *(v0 + 176);
    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      v11 = *MEMORY[0x277D34128];
      do
      {
        v12 = *(v0 + 192);
        v13 = *(v0 + 168);
        *v12 = MEMORY[0x21CECE0F0](v10, *(v0 + 24));
        (*(v9 + 104))(v12, v11, v13);
        v15 = *(v56 + 16);
        v14 = *(v56 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_218C34A88(v14 > 1, v15 + 1, 1);
        }

        v16 = *(v0 + 192);
        v17 = *(v0 + 168);
        ++v10;
        *(v56 + 16) = v15 + 1;
        (*(v9 + 32))(v56 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v16, v17);
      }

      while (v2 != v10);
    }

    else
    {
      v18 = (*(v0 + 24) + 32);
      v53 = *(v9 + 104);
      do
      {
        **(v0 + 184) = *v18;
        v53();
        v19 = *(v56 + 16);
        v20 = *(v56 + 24);
        swift_unknownObjectRetain();
        if (v19 >= v20 >> 1)
        {
          sub_218C34A88(v20 > 1, v19 + 1, 1);
        }

        v21 = *(v0 + 184);
        v22 = *(v0 + 168);
        *(v56 + 16) = v19 + 1;
        (*(v9 + 32))(v56 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v21, v22);
        ++v18;
        --v2;
      }

      while (v2);
    }

    v3 = MEMORY[0x277D84F90];
  }

  v46 = *(v0 + 208);
  v47 = *(v0 + 216);
  v49 = *(v0 + 200);
  v23 = *(v0 + 152);
  v42 = *(v0 + 136);
  v43 = *(v0 + 144);
  v24 = *(v0 + 128);
  v40 = *(v0 + 120);
  v41 = *(v0 + 112);
  v50 = *(v0 + 56);
  v25 = *(v0 + 32);
  v52 = *(v0 + 40);
  v51 = *(v0 + 48);
  sub_218F0B984(v3);
  sub_218F0BA7C(v3);
  sub_218F0BB90(v3);
  sub_219BF3E74();
  v54 = *(v25 + OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_formatService + 32);
  v55 = *(v25 + OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_formatService + 24);
  __swift_project_boxed_opaque_existential_1((v25 + OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_formatService), v55);
  sub_2186ED79C();
  v48 = v25;
  sub_219BEDD14();
  v44 = sub_219BEC004();
  v45 = *(*(v44 - 8) + 56);
  v45(v40, 1, 1, v44);
  sub_218A42400(0);
  (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
  sub_219BEDD14();
  v27 = sub_219BF1914();
  v28 = *(v23 + 8);
  *(v0 + 224) = v28;
  *(v0 + 232) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v24, v43);
  sub_2194B1FF0(&unk_282A2A360, v27);
  swift_arrayDestroy();
  sub_219BF1764();

  sub_219825EC8(v41, sub_218A89A94);
  sub_219825EC8(v40, sub_2186FE720);
  v28(v42, v43);
  sub_2186E4DC8(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v29 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C09BA0;
  (*(v46 + 16))(v30 + v29, v47, v49);
  v45(v40, 1, 1, v44);
  sub_219A95188(v3);
  sub_219A95188(v3);
  sub_219A951A0(v3);
  sub_219A951B8(v3);
  sub_219A952CC(v3);
  sub_219A952E4(v3);
  sub_219A953F8(v3);
  sub_219BF2024();
  v31 = OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_knobs;
  sub_2186E7180(0);
  v33 = v32;
  v34 = *(v32 - 8);
  (*(v34 + 16))(v50, v48 + v31, v32);
  (*(v34 + 56))(v50, 0, 1, v33);
  v35 = sub_219BF35D4();
  (*(*(v35 - 8) + 56))(v51, 1, 1, v35);
  *(v0 + 264) = 2;
  sub_2197DCCD8();
  swift_allocObject();

  sub_219BF38D4();
  v36 = sub_219BF2774();
  (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
  v37 = qword_280E8D7D8;
  *MEMORY[0x277D30B50];
  if (v37 != -1)
  {
    swift_once();
  }

  qword_280F616F8;
  sub_219BF2A84();
  v38 = swift_task_alloc();
  *(v0 + 240) = v38;
  *v38 = v0;
  v38[1] = sub_219824F24;
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v4 = *(v0 + 160);
  v8 = v54;
  v7 = v55;

  return MEMORY[0x2821921B8](v4, v5, v6, v7, v8);
}

uint64_t sub_219824F24(uint64_t a1)
{
  v3 = *v2;
  v3[31] = v1;

  v15 = v3[28];
  v4 = v3[20];
  v5 = v3[18];
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
    v12 = sub_2198252D4;
  }

  else
  {
    v3[32] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_2198251A4;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2198251A4()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];
  v2 = v0[32];

  return v1(v2);
}

uint64_t sub_2198252D4()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_219825400@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19[2] = a1;
  v24 = a2;
  sub_2186E4DC8(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - v3;
  v5 = sub_219BEF554();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  v7 = sub_219BED8D4();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED79C();
  v10 = sub_219BEDCA4();
  v20 = v11;
  v21 = v10;

  v12 = sub_219BEDCB4();
  v19[0] = v13;
  v19[1] = v12;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2186E7180(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v14 = sub_219BEE5D4();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_219BED834();
  v15 = v24;
  v16 = v20;
  *v24 = v21;
  v15[1] = v16;
  v17 = type metadata accessor for ForYouAudioFeedGroup();
  (*(v22 + 32))(v15 + *(v17 + 20), v9, v23);
  type metadata accessor for AudioFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219825744()
{
  v1 = OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_config;
  sub_2186ED79C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219825EC8(v0 + OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_knobs, type metadata accessor for ForYouAudioFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ForYouAudioFeedGroupEmitter()
{
  result = qword_280EB8AA0;
  if (!qword_280EB8AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219825868()
{
  sub_2186ED79C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ForYouAudioFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21982593C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21982363C(a1, a2);
}

uint64_t sub_2198259E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_config;
  sub_2186ED79C();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for AudioFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219825A7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for ForYouAudioFeedGroupKnobs();
  a1[4] = sub_2186E6EF0(&qword_280EBE7B0, type metadata accessor for ForYouAudioFeedGroupKnobs);
  a1[5] = sub_2186E6EF0(&qword_27CC1F988, type metadata accessor for ForYouAudioFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

  return sub_219825F28(v3 + v4, boxed_opaque_existential_1);
}

uint64_t sub_219825B78@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E4DC8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186ED79C();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219825EC8(inited + 32, sub_2188317B0);
  sub_219825F8C(0);
  a1[3] = v5;
  a1[4] = sub_2186E6EF0(&qword_280EE7998, sub_219825F8C);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_219825CF4()
{
  sub_2186E6EF0(&qword_280EB8AC0, type metadata accessor for ForYouAudioFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_219825EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219825F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouAudioFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219825FE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v68 = sub_219BEE3E4();
  v62 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v69 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F64EC(0);
  v74 = v4;
  v70 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v77 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3B14();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v63 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = v55 - v11;
  v75 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v75);
  v79 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v73 = v55 - v17;
  sub_218CE8B24(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v72 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v76 = v55 - v21;
  sub_219827160(0, &qword_280E8C9B0, sub_2198270A8, &type metadata for MyMagazinesMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = v55 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198270A8();
  v27 = v78;
  sub_219BF7B34();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v58 = v24;
  v59 = 0;
  v60 = v16;
  v61 = a1;
  LOBYTE(v81) = 0;
  sub_2186EC950(&qword_280E919C8, sub_2186E3B14);
  v29 = v76;
  v30 = v65;
  sub_219BF7674();
  LOBYTE(v83) = 3;
  sub_219BF7674();
  v56 = v81;
  v55[3] = v82;
  sub_2186F9548();
  LOBYTE(v80) = 1;
  sub_2186EC950(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v78 = v83;
  LOBYTE(v80) = 2;
  sub_2186EC950(&qword_280E91838, sub_2186F64EC);
  v57 = v26;
  sub_219BF7674();
  v31 = v72;
  sub_218CE8CA0(v29, v72, sub_218CE8B24);
  v32 = v64;
  v33 = *(v64 + 48);
  if (v33(v31, 1, v30) == 1)
  {
    v34 = v72;
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v30, qword_280F61818);
    v36 = v63;
    (*(v32 + 16))(v63, v35, v30);
    v37 = v36;
    if (v33(v34, 1, v30) != 1)
    {
      sub_218CE8C40(v34, sub_218CE8B24);
    }
  }

  else
  {
    v37 = v63;
    (*(v32 + 32))(v63, v72, v30);
  }

  v72 = v23;
  v38 = sub_219BEDB04();
  v39 = v67;
  (*(*(v38 - 8) + 56))(v67, 1, 1, v38);
  v40 = v66;
  sub_219BEEA04();
  sub_218CE8C40(v39, sub_218CE8A90);
  (*(v32 + 8))(v37, v30);
  (*(v32 + 32))(v79, v40, v30);
  v41 = v74;
  v42 = v78;
  if (!v78)
  {
    v80 = 1;
    swift_allocObject();
    v42 = sub_219BEF534();
  }

  v43 = v77;
  v44 = v69;
  v45 = v60;
  *&v79[*(v75 + 20)] = v42;
  v46 = v73;
  sub_218CE8CA0(v73, v45, sub_218CE8AB0);
  v47 = v70;
  v48 = *(v70 + 48);
  v49 = v48(v45, 1, v41);
  v50 = v68;
  if (v49 == 1)
  {

    sub_219BEFA94();
    (*(v62 + 104))(v44, *MEMORY[0x277D31FE8], v50);
    sub_21893CC9C();
    swift_allocObject();
    sub_219BEF534();
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2186EC950(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    sub_219BEEC74();
    v43 = v77;

    sub_218CE8C40(v46, sub_218CE8AB0);
    sub_218CE8C40(v76, sub_218CE8B24);
    (*(v58 + 8))(v57, v72);
    v51 = v48(v45, 1, v41);
    v52 = v61;
    v53 = v71;
    if (v51 != 1)
    {
      sub_218CE8C40(v45, sub_218CE8AB0);
    }
  }

  else
  {
    sub_218CE8C40(v46, sub_218CE8AB0);
    sub_218CE8C40(v76, sub_218CE8B24);
    (*(v58 + 8))(v57, v72);
    (*(v47 + 32))(v43, v45, v41);
    v52 = v61;
    v53 = v71;
  }

  v54 = v79;
  (*(v47 + 32))(&v79[*(v75 + 24)], v43, v41);
  sub_2198270FC(v54, v53);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_219826AB8(void *a1)
{
  v3 = v1;
  sub_219827160(0, &qword_280E8C310, sub_2198271C8, &type metadata for MyMagazinesMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198271C8();
  sub_219BF7B44();
  v14 = 0;
  sub_2186E3B14();
  sub_2186EC950(&qword_280E919D0, sub_2186E3B14);
  sub_219BF7834();
  if (!v2)
  {
    v11[1] = *(v3 + *(type metadata accessor for MyMagazinesMagazineFeedGroupKnobs() + 20));
    v13 = 1;
    sub_2186F9548();
    sub_2186EC950(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v12 = 2;
    sub_2186F64EC(0);
    sub_2186EC950(&unk_280E91840, sub_2186F64EC);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219826D6C()
{
  v1 = 0x73656C7572;
  v2 = 0x6C6F6F706572;
  if (*v0 != 2)
  {
    v2 = 0x727563634F78616DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_219826DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21982744C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219826E18(uint64_t a1)
{
  v2 = sub_2198270A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219826E54(uint64_t a1)
{
  v2 = sub_2198270A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219826E90()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6C6F6F706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_219826EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2198275B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219826F10(uint64_t a1)
{
  v2 = sub_2198271C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219826F4C(uint64_t a1)
{
  v2 = sub_2198271C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219826FB8()
{
  type metadata accessor for MagazineFeedServiceConfig();
  sub_2186EC950(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  sub_2186F9548();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  return sub_219BEEC64();
}

unint64_t sub_2198270A8()
{
  result = qword_280EA30C0;
  if (!qword_280EA30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA30C0);
  }

  return result;
}

uint64_t sub_2198270FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219827160(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2198271C8()
{
  result = qword_280EA30E8;
  if (!qword_280EA30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA30E8);
  }

  return result;
}

unint64_t sub_219827240()
{
  result = qword_27CC1FD30;
  if (!qword_27CC1FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FD30);
  }

  return result;
}

unint64_t sub_219827298()
{
  result = qword_27CC1FD38;
  if (!qword_27CC1FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FD38);
  }

  return result;
}

unint64_t sub_2198272F0()
{
  result = qword_280EA30D8;
  if (!qword_280EA30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA30D8);
  }

  return result;
}

unint64_t sub_219827348()
{
  result = qword_280EA30E0;
  if (!qword_280EA30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA30E0);
  }

  return result;
}

unint64_t sub_2198273A0()
{
  result = qword_280EA30C8;
  if (!qword_280EA30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA30C8);
  }

  return result;
}

unint64_t sub_2198273F8()
{
  result = qword_280EA30D0;
  if (!qword_280EA30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA30D0);
  }

  return result;
}

uint64_t sub_21982744C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572)
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

uint64_t sub_2198275B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MagazineGridLayoutSectionDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 137))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 136);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MagazineGridLayoutSectionDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *(result + 136) = -a2;
    }
  }

  return result;
}

uint64_t sub_2198277B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    LOBYTE(a2) = 4;
    *(result + 120) = 0u;
  }

  *(result + 136) = a2;
  return result;
}

__n128 sub_219827800()
{
  v1 = v0[7];
  v16[6] = v0[6];
  v17[0] = v1;
  *(v17 + 9) = *(v0 + 121);
  v2 = v0[3];
  v16[2] = v0[2];
  v16[3] = v2;
  v3 = v0[5];
  v16[4] = v0[4];
  v16[5] = v3;
  v4 = v0[1];
  v16[0] = *v0;
  v16[1] = v4;
  if (sub_218CB826C(v16) < 4)
  {
    v6 = nullsub_1(v16);
    v7 = *(v6 + 112);
    v24 = *(v6 + 96);
    v25 = v7;
    v26 = *(v6 + 128);
    v8 = *(v6 + 48);
    v20 = *(v6 + 32);
    v21 = v8;
    v9 = *(v6 + 80);
    v22 = *(v6 + 64);
    v23 = v9;
    v10 = *(v6 + 16);
    v18 = *v6;
    v19 = v10;
    sub_2189334B8();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    *(v11 + 56) = &type metadata for MagazineGridSectionHeaderViewLayoutAttributes;
    *(v11 + 64) = sub_2198279D0();
    v12 = swift_allocObject();
    *(v11 + 32) = v12;
    v13 = v25;
    *(v12 + 112) = v24;
    *(v12 + 128) = v13;
    *(v12 + 144) = v26;
    v14 = v21;
    *(v12 + 48) = v20;
    *(v12 + 64) = v14;
    v15 = v23;
    *(v12 + 80) = v22;
    *(v12 + 96) = v15;
    result = v19;
    *(v12 + 16) = v18;
    *(v12 + 32) = result;
  }

  return result;
}

uint64_t sub_219827950(uint64_t a1)
{
  v2 = sub_219827A24();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_21982798C(uint64_t a1)
{
  v2 = sub_218DF4D58();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_2198279D0()
{
  result = qword_27CC1FD40;
  if (!qword_27CC1FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FD40);
  }

  return result;
}

unint64_t sub_219827A24()
{
  result = qword_27CC1FD48;
  if (!qword_27CC1FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FD48);
  }

  return result;
}

uint64_t type metadata accessor for ChannelPickerLayoutSectionDescriptor()
{
  result = qword_27CC1FD50;
  if (!qword_27CC1FD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219827AEC()
{
  type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(319);
  if (v0 <= 0x3F)
  {
    sub_219827DD0(319, &qword_27CC1FD60, MEMORY[0x277D6E620], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_219827BB0(uint64_t a1)
{
  sub_219827DD0(0, &qword_280E8BD90, sub_218933510, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  v4 = *(a1 + 20);
  *(v3 + 56) = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  *(v3 + 64) = sub_219827E34(&qword_27CC1FD68, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  sub_218967C78(v1 + v4, boxed_opaque_existential_1);
  return v3;
}

uint64_t sub_219827CC8(uint64_t a1)
{
  v2 = sub_219827E34(&qword_27CC1C0E0, type metadata accessor for ChannelPickerLayoutSectionDescriptor);

  return MEMORY[0x2821D5688](a1, v2);
}

void sub_219827DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219827E34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219827EC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = sub_219BF1214();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E26F88();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v9 = sub_219BF1934();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198286D4(0, &qword_280E8C8F8, MEMORY[0x277D844C8]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219828680();
  v16 = v45;
  sub_219BF7B34();
  if (v16)
  {
    v23 = a1;
  }

  else
  {
    v45 = a1;
    v17 = v13;
    v18 = v42;
    v19 = v43;
    v47 = 0;
    sub_218E2735C(&qword_280E90808, MEMORY[0x277D33478]);
    v20 = v15;
    sub_219BF7734();
    v46 = 1;
    sub_218E2735C(&qword_280E90948, MEMORY[0x277D33218]);
    v21 = v8;
    v22 = v18;
    sub_219BF76E4();
    v37 = v20;
    v25 = v19;
    v26 = v44;
    (*(v41 + 16))(v25, v44, v9);
    v36 = v9;
    v27 = v38;
    sub_218E2712C(v21, v38);
    v28 = *(v40 + 48);
    if (v28(v27, 1, v22) == 1)
    {
      sub_219BF1204();
      sub_218E27190(v21);
      (*(v41 + 8))(v26, v36);
      v29 = v28(v27, 1, v22);
      v30 = v39;
      v31 = v40;
      v32 = v29 == 1;
      v33 = v27;
      v34 = v45;
      if (!v32)
      {
        sub_218E27190(v33);
      }
    }

    else
    {
      sub_218E27190(v21);
      (*(v41 + 8))(v26, v36);
      v30 = v39;
      v31 = v40;
      (*(v40 + 32))(v39, v27, v22);
      v34 = v45;
    }

    v35 = type metadata accessor for SuggestionTodayFeedGroupConfigData();
    (*(v31 + 32))(v43 + *(v35 + 20), v30, v22);
    (*(v17 + 8))(v37, v12);
    v23 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_2198283C8(void *a1)
{
  sub_2198286D4(0, &qword_280E8C298, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219828680();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF1934();
  sub_218E2735C(&qword_280E90810, MEMORY[0x277D33478]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SuggestionTodayFeedGroupConfigData();
    v9[14] = 1;
    sub_219BF1214();
    sub_218E2735C(&qword_280E90950, MEMORY[0x277D33218]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2198285D8(uint64_t a1)
{
  v2 = sub_219828680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219828614(uint64_t a1)
{
  v2 = sub_219828680();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219828680()
{
  result = qword_280E9E730;
  if (!qword_280E9E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E730);
  }

  return result;
}

void sub_2198286D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219828680();
    v7 = a3(a1, &type metadata for SuggestionTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21982874C()
{
  result = qword_27CC1FD70;
  if (!qword_27CC1FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FD70);
  }

  return result;
}

unint64_t sub_2198287A4()
{
  result = qword_280E9E720;
  if (!qword_280E9E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E720);
  }

  return result;
}

unint64_t sub_2198287FC()
{
  result = qword_280E9E728;
  if (!qword_280E9E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E728);
  }

  return result;
}

uint64_t sub_219828850(uint64_t a1)
{
  v2 = v1;
  sub_219828A24();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PuzzleContinuePlayingRouteModel();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[5];
  ObjectType = swift_getObjectType();
  (*(v11 + 48))(a1, ObjectType, v11);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v13 = sub_219828A24;
    v14 = v6;
  }

  else
  {
    sub_219828A7C(v6, v10);
    __swift_project_boxed_opaque_existential_1(v2 + 6, v2[9]);
    sub_219308274(v10);
    v13 = type metadata accessor for PuzzleContinuePlayingRouteModel;
    v14 = v10;
  }

  return sub_219828AE0(v14, v13);
}

void sub_219828A24()
{
  if (!qword_27CC1FD78)
  {
    type metadata accessor for PuzzleContinuePlayingRouteModel();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1FD78);
    }
  }
}

uint64_t sub_219828A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleContinuePlayingRouteModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219828AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219828C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v55 = a1;
  v3 = type metadata accessor for SearchLayoutSectionDescriptor.Footer(0);
  v48 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v47 - v6;
  sub_218953A84();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = v8;
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BF00D4();
  v58 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchLayoutSectionDescriptor.Header(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v47 - v15;
  v16 = sub_219BE9834();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14D4C(0);
  sub_219BE8184();
  if (!v71)
  {
    goto LABEL_17;
  }

  v20 = v71;
  v21 = v72;
  sub_219BE95F4();
  v22 = (*(v17 + 88))(v19, v16);
  v23 = *MEMORY[0x277D6E758];
  v56 = v20;
  if (v22 == v23)
  {
    v24 = sub_219BE9604();
    if ((v24 & 0x8000000000000000) == 0)
    {
      if (v24 < *(v20 + 16))
      {
        v25 = v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24;
        v26 = v60;
        sub_2198298DC(v25, v60, type metadata accessor for SearchLayoutSectionDescriptor.Header);
        sub_2198298DC(v26, v14, type metadata accessor for SearchLayoutSectionDescriptor.Header);
        v27 = v58;
        (*(v58 + 32))(v61, v14, v62);
        v49 = v57[7];
        v50 = v57[8];
        v48 = __swift_project_boxed_opaque_existential_1(v57 + 4, v49);
        v28 = swift_allocObject();
        swift_weakInit();
        v29 = v53;
        v30 = v54;
        v31 = v52;
        (*(v53 + 16))(v52, v55, v54);
        v32 = (*(v29 + 80) + 24) & ~*(v29 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = v28;
        (*(v29 + 32))(v33 + v32, v31, v30);

        v34 = v61;
        v35 = sub_219BF0234();

        (*(v27 + 8))(v34, v62);
        sub_219829A10(v60, type metadata accessor for SearchLayoutSectionDescriptor.Header);

        return v35;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v22 == *MEMORY[0x277D6E750])
  {
    v36 = sub_219BE9604();
    v37 = *(v20 + 16);
    v38 = __OFSUB__(v36, v37);
    v39 = v36 - v37;
    if (!v38)
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        if (v39 < *(v21 + 16))
        {
          v40 = v50;
          sub_2198298DC(v21 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v39, v50, type metadata accessor for SearchLayoutSectionDescriptor.Footer);
          v41 = v49;
          sub_2198298DC(v40, v49, type metadata accessor for SearchLayoutSectionDescriptor.Footer);
          v42 = v58;
          v44 = v61;
          v43 = v62;
          (*(v58 + 32))(v61, v41, v62);
          __swift_project_boxed_opaque_existential_1(v57 + 4, v57[7]);
          v35 = sub_219BF0234();

          (*(v42 + 8))(v44, v43);
          sub_219829A10(v40, type metadata accessor for SearchLayoutSectionDescriptor.Footer);
          return v35;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v66 = 0;
      v67 = 0xE000000000000000;
      sub_219BF7314();
      v69 = v66;
      v70 = v67;
      sub_219BE8184();
      v46 = v66;
      v63 = v66;
      v64 = v67;
      v65 = v68;
      sub_219BF7484();
      sub_2191E8680(v46);
      MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE1A00);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_18:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_219829430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  sub_2198299B8();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchRouteModel();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0894();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  sub_219BEDF44();
  if ((*(v10 + 88))(v15, v9) == *MEMORY[0x277D32F88])
  {
    (*(v10 + 16))(v13, v15, v9);
    (*(v10 + 96))(v13, v9);
    v16 = sub_219BF13B4();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 88))(v13, v16);
    if (v18 != *MEMORY[0x277D33338])
    {
      if (v18 == *MEMORY[0x277D33330])
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            v37 = v20;
            v23 = *(v21 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler);
            sub_218DA3954(v45);
            v24 = v45[1];
            v39 = v45[0];
            v25 = v45[2];
            v35 = v45[3];
            v34 = v45[4];
            v33 = v46;
            v40 = v22;
            v36 = *(v22 + OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch);
            v32 = v23;
            v26 = *(v23 + 40);
            ObjectType = swift_getObjectType();
            v43[0] = v39;
            v43[1] = v24;
            v38 = v24;
            v39 = v25;
            v43[2] = v25;
            v43[3] = v35;
            v43[4] = v34;
            v44 = v33;
            (*(v26 + 88))(v42, v43, v36, ObjectType, v26);
            if ((*(v41 + 48))(v5, 1, v6) == 1)
            {
              v28 = sub_2198299B8;
              v29 = v5;
            }

            else
            {
              sub_2195329E0(v5, v8);
              __swift_project_boxed_opaque_existential_1((v32 + 48), *(v32 + 72));
              sub_219844B48(v8);
              v28 = type metadata accessor for SearchRouteModel;
              v29 = v8;
            }

            sub_219829A10(v29, v28);
            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      else
      {
        (*(v17 + 8))(v13, v16);
      }
    }
  }

  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_2198298DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219829944(uint64_t a1)
{
  sub_218953A84();
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_219829430(a1, v4, v5);
}

void sub_2198299B8()
{
  if (!qword_27CC12648)
  {
    type metadata accessor for SearchRouteModel();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12648);
    }
  }
}

uint64_t sub_219829A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219829A8C()
{
  sub_21982A764(0, &qword_280E8BDD0, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
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

unint64_t sub_219829BE4()
{
  result = qword_27CC1FD80;
  if (!qword_27CC1FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FD80);
  }

  return result;
}

uint64_t sub_219829C40(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a3;
  v67 = a2;
  v55 = sub_219BE91F4();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_219BE6DF4();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21982A554(0, &qword_27CC12500, MEMORY[0x277D6DF88]);
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = &v53 - v11;
  sub_21982A764(0, &qword_27CC1FD88, sub_2189534EC, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v76 = &v53 - v13;
  sub_2189534EC();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v70 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21982A4E0();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21982A554(0, &qword_27CC0B0D0, MEMORY[0x277D6D710]);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v77 = &v53 - v27;
  sub_21982A554(0, &qword_27CC0B100, MEMORY[0x277D6EC60]);
  MEMORY[0x28223BE20](v28);
  v59 = v29;
  v30 = *(v29 + 16);
  v78 = &v53 - v32;
  v79 = v31;
  v65 = a1;
  v30();
  v33 = *(a4 + 16);
  v62 = a5;
  v60 = a4;
  if (v33)
  {
    sub_21982A5E4(a4, a5);
    v34 = (v23 + 48);
    v73 = (v23 + 16);
    v74 = (v23 + 32);
    v68 = (v16 + 8);
    v69 = (v16 + 32);
    v71 = (v23 + 8);
    v72 = (v16 + 48);
    v35 = a4 + 40;
    v75 = (v23 + 48);
    do
    {

      sub_219BEB244();
      if ((*v34)(v20, 1, v22) == 1)
      {

        sub_21982A630(v20);
      }

      else
      {
        v36 = v77;
        (*v74)(v77, v20, v22);
        (*v73)(v26, v36, v22);
        v37 = v26;
        v38 = v15;
        v39 = v76;
        sub_219BE6A64();
        v40 = v39;
        v15 = v38;

        if ((*v72)(v40, 1, v38) == 1)
        {
          sub_21982A6D8(v40);
        }

        else
        {
          v41 = v70;
          (*v69)(v70, v40, v38);
          sub_219BE69D4();
          (*v68)(v41, v38);
        }

        v42 = v77;
        v26 = v37;
        sub_219BEB234();
        v43 = *v71;
        (*v71)(v37, v22);
        v43(v42, v22);
        v34 = v75;
      }

      v35 += 16;
      --v33;
    }

    while (v33);
  }

  else
  {
    sub_21982A5E4(a4, a5);
  }

  if (v62 < 0)
  {

    v49 = v54;
    v50 = v53;
    v51 = v55;
    (*(v54 + 104))(v53, *MEMORY[0x277D6E440], v55);
    sub_219BE9034();
    (*(v49 + 8))(v50, v51);
    type metadata accessor for ShortcutsModel();
    sub_2189532D4();
    sub_218DFC2B4();
    v47 = v61;
    v48 = v78;
    sub_219BE8574();
    v67(v47);
  }

  else
  {
    sub_21982A68C(v60, v62);
    v44 = v57;
    v45 = v56;
    v46 = v58;
    (*(v57 + 104))(v56, *MEMORY[0x277D6D868], v58);
    type metadata accessor for ShortcutsModel();
    sub_2189532D4();
    sub_218DFC2B4();
    sub_218E02AC4();
    v47 = v61;
    v48 = v78;
    sub_219BE85E4();
    (*(v44 + 8))(v45, v46);
    v67(v47);
  }

  (*(v63 + 8))(v47, v64);
  return (*(v59 + 8))(v48, v79);
}

void sub_21982A4E0()
{
  if (!qword_27CC1FD90)
  {
    sub_21982A554(255, &qword_27CC0B0D0, MEMORY[0x277D6D710]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1FD90);
    }
  }
}

void sub_21982A554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ShortcutsSectionDescriptor;
    v8[1] = type metadata accessor for ShortcutsModel();
    v8[2] = sub_2189532D4();
    v8[3] = sub_218DFC2B4();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21982A5E4(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_21982A630(uint64_t a1)
{
  sub_21982A4E0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21982A68C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_21982A6D8(uint64_t a1)
{
  sub_21982A764(0, &qword_27CC1FD88, sub_2189534EC, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21982A764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21982A7F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v53 = sub_219BF1214();
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v47 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TopicTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DEBB4(0, &qword_280E90940, MEMORY[0x277D33218]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v41 - v8;
  sub_2186DEBB4(0, &qword_280E90800, MEMORY[0x277D33478]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_219BF1934();
  v54 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21982B470(0, &qword_280E8CB60, MEMORY[0x277D844C8]);
  v16 = v15;
  v55 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21982B2F0();
  v19 = v56;
  sub_219BF7B34();
  if (v19)
  {
    v25 = a1;
  }

  else
  {
    v56 = a1;
    v59 = 0;
    sub_218E2735C(&qword_280E90808, MEMORY[0x277D33478]);
    v20 = v18;
    sub_219BF7734();
    v58 = 1;
    v21 = v11;
    sub_219BF76E4();
    v22 = v12;
    v57 = 2;
    sub_218E2735C(&qword_280E90948, MEMORY[0x277D33218]);
    v23 = v52;
    v24 = v53;
    sub_219BF76E4();
    v44 = v22;
    v45 = v20;
    v27 = v21;
    v28 = v54;
    v29 = *(v54 + 16);
    v30 = v50;
    v43 = v14;
    v29(v50, v14, v22);
    v31 = &v30[*(v51 + 20)];
    v42 = v27;
    sub_21982B344(v27, v31, &qword_280E90800, MEMORY[0x277D33478]);
    v32 = v46;
    sub_21982B344(v23, v46, &qword_280E90940, MEMORY[0x277D33218]);
    v33 = v49;
    v34 = *(v49 + 48);
    if (v34(v32, 1, v24) == 1)
    {
      v35 = v47;
      sub_219BF1204();
      sub_21982B3B0(v23, &qword_280E90940, MEMORY[0x277D33218]);
      sub_21982B3B0(v42, &qword_280E90800, MEMORY[0x277D33478]);
      (*(v28 + 8))(v43, v44);
      (*(v55 + 8))(v45, v16);
      v36 = v34(v32, 1, v24);
      v37 = v48;
      v38 = v49;
      if (v36 != 1)
      {
        sub_21982B3B0(v32, &qword_280E90940, MEMORY[0x277D33218]);
      }
    }

    else
    {
      sub_21982B3B0(v23, &qword_280E90940, MEMORY[0x277D33218]);
      sub_21982B3B0(v42, &qword_280E90800, MEMORY[0x277D33478]);
      (*(v28 + 8))(v43, v44);
      (*(v55 + 8))(v45, v16);
      v39 = *(v33 + 32);
      v38 = v33;
      v35 = v47;
      v39(v47, v32, v24);
      v37 = v48;
    }

    v40 = v50;
    (*(v38 + 32))(&v50[*(v51 + 24)], v35, v24);
    sub_21982B40C(v40, v37);
    v25 = v56;
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_21982AF5C(void *a1)
{
  sub_21982B470(0, &qword_280E8C3D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21982B2F0();
  sub_219BF7B44();
  v12 = 0;
  sub_219BF1934();
  sub_218E2735C(&qword_280E90810, MEMORY[0x277D33478]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for TopicTodayFeedGroupConfigData();
    v11 = 1;
    sub_219BF77E4();
    v10 = 2;
    sub_219BF1214();
    sub_218E2735C(&qword_280E90950, MEMORY[0x277D33218]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21982B1AC()
{
  v1 = 0x64656E616870726FLL;
  if (*v0 != 1)
  {
    v1 = 0x4372616365646973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_21982B220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21982B5EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21982B248(uint64_t a1)
{
  v2 = sub_21982B2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21982B284(uint64_t a1)
{
  v2 = sub_21982B2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21982B2F0()
{
  result = qword_280EADED8[0];
  if (!qword_280EADED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EADED8);
  }

  return result;
}

uint64_t sub_21982B344(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2186DEBB4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21982B3B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2186DEBB4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21982B40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicTodayFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21982B470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21982B2F0();
    v7 = a3(a1, &type metadata for TopicTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21982B4E8()
{
  result = qword_27CC1FD98;
  if (!qword_27CC1FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FD98);
  }

  return result;
}

unint64_t sub_21982B540()
{
  result = qword_280EADEC8;
  if (!qword_280EADEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EADEC8);
  }

  return result;
}

unint64_t sub_21982B598()
{
  result = qword_280EADED0;
  if (!qword_280EADED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EADED0);
  }

  return result;
}

uint64_t sub_21982B5EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656E616870726FLL && a2 == 0xEF746E65746E6F43 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4372616365646973 && a2 == 0xED00006769666E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_21982B754@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_219BED8D4();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21982C0EC();
  v32 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21982C258(0, &qword_27CC1FDA8, MEMORY[0x277D844C8]);
  v33 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21982C144();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v5;
  v25 = a1;
  v23 = v11;
  v14 = v13;
  v15 = v29;
  v16 = v30;
  v36 = 0;
  sub_21982C2BC(&unk_280EE67B0, sub_21982C0EC);
  v18 = v31;
  v17 = v32;
  sub_219BF7734();
  sub_219BE3384();
  (*(v16 + 8))(v18, v17);
  v19 = v14;
  *v14 = v34;
  v35 = 1;
  sub_21982C2BC(&unk_280E92630, MEMORY[0x277D31C50]);
  v20 = v24;
  v21 = v28;
  sub_219BF7734();
  (*(v15 + 8))(v10, v33);
  (*(v26 + 32))(v19 + *(v23 + 20), v20, v21);
  sub_21982C198(v19, v27);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_21982C1FC(v19);
}

uint64_t sub_21982BBA0(void *a1)
{
  sub_21982C0EC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21982C258(0, &qword_280E8C548, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21982C144();
  sub_219BF7B44();
  sub_2186D8870();
  swift_unknownObjectRetain();
  sub_219BE3404();
  v16 = 0;
  sub_21982C2BC(&qword_280EE67C0, sub_21982C0EC);
  v12 = v14[1];
  sub_219BF7834();
  (*(v4 + 8))(v6, v3);
  if (!v12)
  {
    type metadata accessor for SportsScoresTagFeedGroup();
    v15 = 1;
    sub_219BED8D4();
    sub_21982C2BC(&qword_280E92640, MEMORY[0x277D31C50]);
    sub_219BF7834();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21982BF58(uint64_t a1)
{
  result = sub_21982C2BC(&unk_280EC0150, type metadata accessor for SportsScoresTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21982BFB0(void *a1)
{
  a1[1] = sub_21982C2BC(&unk_280EC0198, type metadata accessor for SportsScoresTagFeedGroup);
  a1[2] = sub_21982C2BC(&unk_280EC0160, type metadata accessor for SportsScoresTagFeedGroup);
  result = sub_21982C2BC(&qword_280EC0180, type metadata accessor for SportsScoresTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_21982C05C(uint64_t a1)
{
  v2 = sub_21982C2BC(&unk_280EC0198, type metadata accessor for SportsScoresTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

void sub_21982C0EC()
{
  if (!qword_280EE67A0)
  {
    sub_2186D8870();
    v0 = sub_219BE3474();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE67A0);
    }
  }
}

unint64_t sub_21982C144()
{
  result = qword_280EC01C0;
  if (!qword_280EC01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC01C0);
  }

  return result;
}

uint64_t sub_21982C198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScoresTagFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21982C1FC(uint64_t a1)
{
  v2 = type metadata accessor for SportsScoresTagFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21982C258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21982C144();
    v7 = a3(a1, &type metadata for SportsScoresTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21982C2BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21982C314@<X0>(char *a1@<X8>)
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

uint64_t sub_21982C374@<X0>(char *a1@<X8>)
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

uint64_t sub_21982C3D8(uint64_t a1)
{
  v2 = sub_21982C144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21982C414(uint64_t a1)
{
  v2 = sub_21982C144();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21982C454()
{
  result = qword_27CC1FDB0[0];
  if (!qword_27CC1FDB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC1FDB0);
  }

  return result;
}

unint64_t sub_21982C4AC()
{
  result = qword_280EC01A8;
  if (!qword_280EC01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC01A8);
  }

  return result;
}

unint64_t sub_21982C504()
{
  result = qword_280EC01B0;
  if (!qword_280EC01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC01B0);
  }

  return result;
}

uint64_t sub_21982C558()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_21982C61C(uint64_t a1, uint64_t a2)
{
  v4 = off_282A60120;
  type metadata accessor for MyMagazinesDataManager();
  v4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_219BE2E54();
  sub_219BE2F94();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = sub_219BE2E54();
  sub_219BE2FE4();
}

uint64_t sub_21982C7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_219BED174();
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BED1D4();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(*(v8 + 88) + 40))(a1, *(v8 + 80));
  sub_2187D9028();
  v16 = sub_219BF66A4();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = v15;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_21982D2F8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_177;
  v18 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E408(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21982D304(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v14, v11, v18);
  _Block_release(v18);

  (*(v21 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v20);
}

uint64_t sub_21982CB2C()
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_21982CC4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  return a3(v5);
}

uint64_t sub_21982CD84(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_219BE6F24();
}

uint64_t sub_21982CE08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = *(v6 + 80);
  v8[3] = *(v6 + 88);
  v8[4] = v7;
  v8[5] = a3;
  v8[6] = a4;
  sub_2194BA890();
  sub_21874E408(&qword_27CC1FE38, sub_2194BA890);

  sub_219BE6EF4();
}

uint64_t sub_21982CF58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  result = a3();
  if (Strong)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        v9 = swift_allocObject();
        v9[2] = v7;
        v9[3] = sub_21982D378;
        v9[4] = v8;
        swift_unknownObjectRetain_n();

        sub_219BE3494();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_21982D094()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_21982D170()
{
  sub_21982D094();

  return swift_deallocClassInstance();
}

uint64_t sub_21982D1E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      type metadata accessor for MyMagazinesInteractor();

      sub_218CF7990(a2, v5);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_21982D304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21982D380(uint64_t a1)
{
  v3 = *v1;
  sub_21982D304(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = *(v3 + 80);
  *(v11 + 3) = *(v3 + 88);
  *(v11 + 4) = v9;
  (*(v6 + 32))(&v11[v10], v8, v5);

  sub_21982C7C4(a1, sub_21982D55C, v11);
}

uint64_t sub_21982D55C()
{
  sub_21982D304(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v2 = *(v1 - 8);
  v3 = *(v0 + 32);
  v4 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_21982D1E8(v3, v4);
}

uint64_t sub_21982D688(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SubscriptionTodayFeedGroupEmitter()
{
  result = qword_280EA1740;
  if (!qword_280EA1740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21982D730()
{
  sub_219834194(319, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SubscriptionTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186C6148(319, &qword_280E8DE40);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, &unk_280E90620);
          if (v4 <= 0x3F)
          {
            sub_2186CFDE4(319, &unk_280E90370);
            if (v5 <= 0x3F)
            {
              sub_2186CFDE4(319, &qword_280E910C0);
              if (v6 <= 0x3F)
              {
                sub_2186D6710(319, &unk_280E8DF40);
                if (v7 <= 0x3F)
                {
                  sub_2186C6148(319, &qword_280E8E540);
                  if (v8 <= 0x3F)
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
}

uint64_t sub_21982D918(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_21982D93C, 0, 0);
}

uint64_t sub_21982D93C()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_21982DA18;

  return MEMORY[0x282190858](&v0[1], &type metadata for SubscriptionTodayFeedGroupEmitterCursor, &unk_219CABC38, v1, &type metadata for SubscriptionTodayFeedGroupEmitterCursor);
}

uint64_t sub_21982DA18()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2195DC3D4;
  }

  else
  {

    v2 = sub_21982DB34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21982DB34()
{
  v1 = v0[2];
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_2195DC298;
  v3 = v0[4];
  v4 = v0[3];

  return sub_21982E2EC(v4, v3, v1);
}

uint64_t sub_21982DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_218D42644;

  return sub_21982DC78(a3);
}

uint64_t sub_21982DC78(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_21982DC98, 0, 0);
}

uint64_t sub_21982DC98()
{
  sub_219BEF164();
  v1 = v0[2];
  v0[7] = v1;
  sub_219BEF0B4();
  sub_21982FAE0(v1, v0[3]);
  v2 = v0[6];

  v3 = type metadata accessor for SubscriptionTodayFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((v2 + *(v3 + 32)), *(v2 + *(v3 + 32) + 24));
  v0[8] = sub_219BF1C34();

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_21982DE1C;

  return MEMORY[0x2821D23D8](v0 + 4);
}

uint64_t sub_21982DE1C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21982E280;
  }

  else
  {

    v2 = sub_21982DF38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21982DF38()
{
  v1 = *(v0 + 32);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_23:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v2 = sub_219BF7214();
  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CECE0F0](v5, v1);
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v7 = [v6 feedIDForBin_];
      if (v7)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v5;
      if (v3 == v2)
      {
        goto LABEL_24;
      }
    }

    v8 = v4;
    v9 = v7;
    v10 = sub_219BF5414();
    v24 = v11;
    v25 = v10;

    v12 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2191FB6B8(0, v8[2] + 1, 1, v8);
    }

    v14 = v12[2];
    v13 = v12[3];
    v15 = v12;
    if (v14 >= v13 >> 1)
    {
      v15 = sub_2191FB6B8((v13 > 1), v14 + 1, 1, v12);
    }

    v15[2] = v14 + 1;
    v4 = v15;
    v16 = &v15[3 * v14];
    v16[4] = v6;
    v16[5] = v25;
    v16[6] = v24;
  }

  while (v3 != v2);
LABEL_24:

  if (*(v4 + 16))
  {
    v17 = swift_task_alloc();
    v17[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
    v18 = sub_21894C29C(sub_21983362C, v17, v4);

    v19 = *(v0 + 8);

    return v19(v18);
  }

  else
  {

    v21 = sub_219BEEDD4();
    sub_21982D688(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D32390], v21);
    swift_willThrow();

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_21982E280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21982E2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_2186D8EE0(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v4[11] = swift_task_alloc();
  sub_219BEF554();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v5 = sub_219BED8D4();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for TodayFeedGroup();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21982E474, 0, 0);
}

uint64_t sub_21982E474()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = sub_2197B8F2C(v1);
    v0[19] = v2;
    v0[20] = v3;
    v0[21] = v4;
    if (v2)
    {
      v5 = v3;
      swift_unknownObjectRetain();

      sub_219BEF164();
      v0[22] = v0[4];
      v11 = swift_task_alloc();
      v0[23] = v11;
      sub_2187E7248();
      v13 = v12;
      v14 = sub_2186CFDE4(0, &qword_280E8B580);
      *v11 = v0;
      v11[1] = sub_21982E84C;
      v15 = MEMORY[0x277D84950];

      return MEMORY[0x282200430](v0 + 6, v5, v13, v14, v15);
    }

    v6 = MEMORY[0x277D32390];
  }

  else
  {
    v6 = MEMORY[0x277D323C8];
  }

  v7 = sub_219BEEDD4();
  sub_21982D688(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *v6, v7);
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_21982E84C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_21982F338;
  }

  else
  {
    v2 = sub_21982E960;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21982E960()
{
  v1 = v0[24];
  sub_219830864(v0[6], v0[22], v0[8]);
  v0[25] = v2;
  if (v1)
  {

    v0[29] = v1;
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v3 = swift_allocObject();
    v0[2] = 0;
    *(v3 + 16) = xmmword_219C09BA0;
    v0[3] = 0xE000000000000000;
    v0[5] = v1;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v4 = v0[2];
    v5 = v0[3];
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 64) = sub_2186FC3BC();
    *(v3 + 32) = v4;
    *(v3 + 40) = v5;
    sub_219BE5314();

    v6 = swift_task_alloc();
    v0[30] = v6;
    *v6 = v0;
    v6[1] = sub_21982F158;
    v7 = v0[21];
    v8 = v0[7];
    v9 = v0[8];

    return sub_21982E2EC(v8, v9, v7);
  }

  else
  {
    v11 = v2;
    v12 = v0[19];

    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = sub_21982EBE8;
    v14 = v0[8];

    return sub_2198315F8(v14, v12, v11);
  }
}

uint64_t sub_21982EBE8(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v4 = sub_21982F4F8;
  }

  else
  {
    sub_219833494(v3[19]);

    v4 = sub_21982ED10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21982ED10()
{
  v13 = v0[18];
  v14 = v0[21];
  v1 = v0[15];
  v11 = v0[16];
  v12 = v0[14];
  sub_219834194(0, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);

  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for SubscriptionTodayFeedGroupEmitter();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for SubscriptionTodayFeedGroupKnobs();
  sub_2198335AC(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  (*(v1 + 32))(v13, v11, v12);
  swift_storeEnumTagMultiPayload();
  if (v14)
  {
    v2 = v0[21];
    v3 = v0[18];
    v4 = v0[7];
    sub_218B8B468();
    v6 = (v4 + *(v5 + 48));
    sub_2198334D4(v3, v4, type metadata accessor for TodayFeedGroup);
    v6[3] = &type metadata for SubscriptionTodayFeedGroupEmitterCursor;

    swift_unknownObjectRelease();

    *v6 = v2;
    sub_219833388(v3, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    v7 = v0[18];
    v8 = v0[7];

    swift_unknownObjectRelease();
    sub_21983364C(v7, v8, type metadata accessor for TodayFeedGroup);
  }

  sub_2198335AC(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v9 = v0[1];

  return v9();
}

uint64_t sub_21982F158()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_21982F6C4;
  }

  else
  {
    v2 = sub_21982F26C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21982F26C()
{
  v1 = *(v0 + 152);

  swift_unknownObjectRelease();

  sub_219833494(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21982F338()
{

  v1 = v0[24];
  v0[29] = v1;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v2 = swift_allocObject();
  v0[2] = 0;
  *(v2 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[5] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_219BE5314();

  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_21982F158;
  v6 = v0[21];
  v7 = v0[7];
  v8 = v0[8];

  return sub_21982E2EC(v7, v8, v6);
}

uint64_t sub_21982F4F8()
{

  v1 = v0[28];
  v0[29] = v1;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v2 = swift_allocObject();
  v0[2] = 0;
  *(v2 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[5] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_219BE5314();

  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_21982F158;
  v6 = v0[21];
  v7 = v0[7];
  v8 = v0[8];

  return sub_21982E2EC(v7, v8, v6);
}

uint64_t sub_21982F6C4()
{
  v1 = *(v0 + 152);

  swift_unknownObjectRelease();

  sub_219833494(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21982F798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_2186D8EE0(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21982F8B8, 0, 0);
}

uint64_t sub_21982F8B8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_2198335AC(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21983353C(*(v0 + 48), qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    sub_21983364C(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_219833388(v8, type metadata accessor for TodayFeedGroup);
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

uint64_t sub_21982FAE0(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v4 = type metadata accessor for NewspaperTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219834194(0, &qword_280E92340, type metadata accessor for NewspaperTodayFeedGroupConfigData, sub_219834220, sub_219834254);
  v8 = v7;
  v90 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v79 - v9;
  v98 = type metadata accessor for TodayFeedGroupConfig();
  v92 = *(v98 - 8);
  v11 = MEMORY[0x28223BE20](v98);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v79 - v14;
  v15 = *(a1 + 16);
  if (([v15 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_44;
  }

  v16 = [v15 aLaCartePaidSubscriptionGroupWhitelistedChannelIDs];
  v17 = sub_219BF5924();

  if (!*(v17 + 16))
  {

    goto LABEL_44;
  }

  v96 = v13;
  v85 = v10;
  v86 = v8;
  v84 = v6;
  v89 = v4;
  if (qword_280E8D7A0 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v18 = qword_280F616D8;
    sub_2186F20D4();
    v20 = v19;
    v21 = swift_allocObject();
    v83 = xmmword_219C09EC0;
    *(v21 + 16) = xmmword_219C09EC0;
    v22 = *(v17 + 16);
    v23 = MEMORY[0x277D83C10];
    *(v21 + 56) = MEMORY[0x277D83B88];
    *(v21 + 64) = v23;
    *(v21 + 32) = v22;
    v24 = MEMORY[0x277D837D0];
    v25 = MEMORY[0x21CECC6D0](v17, MEMORY[0x277D837D0]);
    v27 = v26;
    *(v21 + 96) = v24;
    v28 = sub_2186FC3BC();
    *(v21 + 104) = v28;
    *(v21 + 72) = v25;
    *(v21 + 80) = v27;
    sub_219BF6214();
    sub_219BE5314();

    MEMORY[0x28223BE20](v29);
    *(&v79 - 2) = v2;
    v30 = v99;
    v31 = sub_2195E6068(sub_219834288, (&v79 - 4), v17);
    v81 = v20;
    v2 = swift_allocObject();
    *(v2 + 16) = v83;
    v32 = *(v31 + 16);
    *(v2 + 56) = MEMORY[0x277D83B88];
    *(v2 + 64) = MEMORY[0x277D83C10];
    *(v2 + 32) = v32;
    v33 = MEMORY[0x21CECC6D0](v31, v24);
    *(v2 + 96) = v24;
    *(v2 + 104) = v28;
    v80 = v28;
    *(v2 + 72) = v33;
    *(v2 + 80) = v34;
    sub_219BF6214();
    v82 = v18;
    sub_219BE5314();

    v99 = *(v31 + 16);
    if (!v99)
    {

      v55 = sub_219BEEDD4();
      sub_21982D688(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      v75 = v74;
      v76 = MEMORY[0x277D323E0];
      goto LABEL_45;
    }

    v79 = v30;
    v35 = v97 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
    v36 = *(v35 + *(type metadata accessor for TodayFeedConfig() + 20));
    v17 = MEMORY[0x277D84FA0];
    v100 = MEMORY[0x277D84FA0];
    v37 = *(v36 + 16);
    v97 = v31;
    v38 = v86;
    v39 = v85;
    v95 = v37;
    if (!v37)
    {
      break;
    }

    v40 = 0;
    v2 = v92;
    v93 = v36 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v88 = (v90 + 32);
    v87 = (v90 + 8);
    v41 = v84;
    v17 = v91;
    v94 = v36;
    while (v40 < *(v36 + 16))
    {
      sub_2198334D4(v93 + *(v2 + 72) * v40, v17, type metadata accessor for TodayFeedGroupConfig);
      v43 = v96;
      sub_2198334D4(v17, v96, type metadata accessor for TodayFeedGroupConfig);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v88)(v39, v43, v38);
        sub_219BEDD14();
        v44 = *(v41 + *(v89 + 32));

        sub_219833388(v41, type metadata accessor for NewspaperTodayFeedGroupConfigData);
        v45 = *(v44 + 16);
        if (v45)
        {
          v101 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v45, 0);
          v46 = v101;
          v90 = v44;
          v47 = (v44 + 40);
          do
          {
            v48 = *(v47 - 1);
            v49 = *v47;
            v101 = v46;
            v51 = *(v46 + 16);
            v50 = *(v46 + 24);

            if (v51 >= v50 >> 1)
            {
              sub_21870B65C((v50 > 1), v51 + 1, 1);
              v46 = v101;
            }

            *(v46 + 16) = v51 + 1;
            v52 = v46 + 16 * v51;
            *(v52 + 32) = v48;
            *(v52 + 40) = v49;
            v47 += 2;
            --v45;
          }

          while (v45);

          v41 = v84;
          v38 = v86;
          v39 = v85;
        }

        else
        {

          v46 = MEMORY[0x277D84F90];
        }

        sub_218DDBE70(v46);

        (*v87)(v39, v38);
        v17 = v91;
        v2 = v92;
        v42 = v91;
        v31 = v97;
      }

      else
      {
        sub_219833388(v17, type metadata accessor for TodayFeedGroupConfig);
        v42 = v43;
      }

      v36 = v94;
      ++v40;
      sub_219833388(v42, type metadata accessor for TodayFeedGroupConfig);
      if (v40 == v95)
      {
        v17 = v100;
        goto LABEL_21;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }

LABEL_21:
  v53 = 0;
  v98 = v31 + 32;
  v54 = v17 + 56;
  v55 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (v53 >= *(v31 + 16))
      {
        __break(1u);
        goto LABEL_48;
      }

      v56 = (v98 + 16 * v53);
      v58 = *v56;
      v57 = v56[1];
      ++v53;
      if (!*(v17 + 16))
      {

        goto LABEL_33;
      }

      sub_219BF7AA4();

      sub_219BF5524();
      v59 = sub_219BF7AE4();
      v60 = -1 << *(v17 + 32);
      v2 = v59 & ~v60;
      if ((*(v54 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2))
      {
        break;
      }

LABEL_33:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = &v101;
        sub_21870B65C(0, *(v55 + 16) + 1, 1);
        v55 = v101;
      }

      v66 = *(v55 + 16);
      v65 = *(v55 + 24);
      if (v66 >= v65 >> 1)
      {
        v2 = &v101;
        sub_21870B65C((v65 > 1), v66 + 1, 1);
        v55 = v101;
      }

      *(v55 + 16) = v66 + 1;
      v67 = v55 + 16 * v66;
      *(v67 + 32) = v58;
      *(v67 + 40) = v57;
      v31 = v97;
      if (v53 == v99)
      {
        goto LABEL_40;
      }
    }

    v61 = ~v60;
    while (1)
    {
      v62 = (*(v17 + 48) + 16 * v2);
      v63 = *v62 == v58 && v62[1] == v57;
      if (v63 || (sub_219BF78F4() & 1) != 0)
      {
        break;
      }

      v2 = (v2 + 1) & v61;
      if (((*(v54 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2) & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  while (v53 != v99);
LABEL_40:

  v68 = swift_allocObject();
  *(v68 + 16) = v83;
  v69 = *(v55 + 16);
  *(v68 + 56) = MEMORY[0x277D83B88];
  *(v68 + 64) = MEMORY[0x277D83C10];
  *(v68 + 32) = v69;
  v70 = MEMORY[0x277D837D0];
  v71 = MEMORY[0x21CECC6D0](v55, MEMORY[0x277D837D0]);
  v72 = v80;
  *(v68 + 96) = v70;
  *(v68 + 104) = v72;
  *(v68 + 72) = v71;
  *(v68 + 80) = v73;
  sub_219BF6214();
  sub_219BE5314();

  if (*(v55 + 16))
  {
    return v55;
  }

LABEL_44:
  v55 = sub_219BEEDD4();
  sub_21982D688(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  v75 = v77;
  v76 = MEMORY[0x277D323A8];
LABEL_45:
  (*(*(v55 - 8) + 104))(v75, *v76, v55);
  swift_willThrow();
  return v55;
}

uint64_t sub_219830550@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v23 = a3;
  v24 = a4;
  v6 = type metadata accessor for SubscriptionTodayFeedGroupEmitter();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8EE0(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v16 = sub_219BF5BF4();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_2198334D4(a2, v9, type metadata accessor for SubscriptionTodayFeedGroupEmitter);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_21983364C(v9, v19 + v17, type metadata accessor for SubscriptionTodayFeedGroupEmitter);
  *(v19 + v18) = v23;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v14;
  v20[1] = v13;
  v20[2] = v15;
  swift_unknownObjectRetain_n();

  result = sub_2195E76F4(0, 0, v12, &unk_219CABC68, v19);
  v22 = v24;
  *v24 = v14;
  v22[1] = result;
  return result;
}

uint64_t sub_2198307AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v12 = swift_task_alloc();
  *(v8 + 24) = v12;
  *v12 = v8;
  v12[1] = sub_218E5F004;

  return sub_219833808(a5, a7, a8);
}

void sub_219830864(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v101 = a3;
  v7 = sub_219BEE6E4();
  v93 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = sub_219BF0BD4();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_219BEFBD4();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v91[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = type metadata accessor for SubscriptionTodayFeedGroupEmitter();
  v12 = [*&v4[v104[12]] allReadArticleIDs];
  v13 = sub_219BF5D44();

  v113 = MEMORY[0x277D84F90];
  v102 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_58:
    v14 = sub_219BF7214();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v105 = a1;
  v111 = v13;
  v103 = v4;
  v94 = v7;
  if (v14)
  {
    v92 = v9;
    v7 = 0;
    *&v108 = a2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v109 = v105 & 0xFFFFFFFFFFFFFF8;
    v110 = (v105 & 0xC000000000000001);
    v9 = (v13 + 56);
    v106 = (v13 + 56);
    v107 = v105 + 32;
    while (1)
    {
      if (v110)
      {
        v4 = MEMORY[0x21CECE0F0](v7, v105);
        v15 = __OFADD__(v7++, 1);
        if (v15)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          v34 = v113;
          v4 = v103;
          v9 = v92;
          goto LABEL_36;
        }
      }

      else
      {
        if (v7 >= *(v109 + 16))
        {
          __break(1u);
          goto LABEL_58;
        }

        v4 = *(v107 + 8 * v7);
        swift_unknownObjectRetain();
        v15 = __OFADD__(v7++, 1);
        if (v15)
        {
          goto LABEL_33;
        }
      }

      v9 = v14;
      v16 = *(v108 + 16);
      v17 = [v4 identifier];
      v18 = sub_219BF5414();
      v20 = v19;

      if (*(v16 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v21 = sub_219BF7AE4(), a2 = v16 + 56, v22 = -1 << *(v16 + 32), v23 = v21 & ~v22, ((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
      {
        a1 = ~v22;
        while (1)
        {
          v24 = (*(v16 + 48) + 16 * v23);
          v25 = *v24 == v18 && v24[1] == v20;
          if (v25 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v23 = (v23 + 1) & a1;
          if (((*(a2 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        swift_unknownObjectRelease();

        v13 = v111;
        v14 = v9;
      }

      else
      {
LABEL_19:

        v26 = [v4 identifier];
        v27 = sub_219BF5414();
        v29 = v28;

        v13 = v111;
        v14 = v9;
        v9 = v106;
        if (*(v111 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v30 = sub_219BF7AE4(), v31 = -1 << *(v13 + 32), a2 = v30 & ~v31, ((*&v9[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) != 0))
        {
          a1 = ~v31;
          while (1)
          {
            v32 = (*(v13 + 48) + 16 * a2);
            v33 = *v32 == v27 && v32[1] == v29;
            if (v33 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            a2 = (a2 + 1) & a1;
            if (((*&v9[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          swift_unknownObjectRelease();
        }

        else
        {
LABEL_5:

          a2 = &v113;
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }
      }

      if (v7 == v14)
      {
        goto LABEL_34;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_36:
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v35 = qword_280F616D8;
  sub_2186F20D4();
  v37 = v36;
  v38 = swift_allocObject();
  v108 = xmmword_219C09EC0;
  *(v38 + 16) = xmmword_219C09EC0;
  if (v102)
  {
    v39 = sub_219BF7214();
  }

  else
  {
    v39 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = MEMORY[0x277D83B88];
  v41 = MEMORY[0x277D83C10];
  *(v38 + 56) = MEMORY[0x277D83B88];
  *(v38 + 64) = v41;
  *(v38 + 32) = v39;
  v42 = v34 < 0 || (v34 & 0x4000000000000000) != 0;
  if (v42)
  {
    v43 = sub_219BF7214();
    v40 = MEMORY[0x277D83B88];
  }

  else
  {
    v43 = *(v34 + 16);
  }

  *(v38 + 96) = v40;
  *(v38 + 104) = v41;
  *(v38 + 72) = v43;
  sub_219BF6214();
  sub_219BE5314();

  if (v42)
  {
    if (!sub_219BF7214())
    {
LABEL_48:

LABEL_114:

      v61 = sub_219BEEDD4();
      sub_21982D688(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      v63 = v88;
      v64 = MEMORY[0x277D323A8];
      goto LABEL_115;
    }
  }

  else if (!*(v34 + 16))
  {
    goto LABEL_48;
  }

  v105 = v37;
  v102 = v35;
  __swift_project_boxed_opaque_existential_1(&v4[v104[10]], *&v4[v104[10] + 24]);
  v44 = v96;
  v45 = v95;
  v46 = v97;
  (*(v96 + 104))(v95, *MEMORY[0x277D329E0], v97);
  v106 = v34;
  v47 = sub_219BF0034();
  (*(v44 + 8))(v45, v46);
  v48 = v47;
  v49 = *(v47 + 16);
  v50 = MEMORY[0x277D84F90];
  v107 = v48;
  if (v49)
  {
    v112 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v110 = *(v93 + 16);
    v51 = v48 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v52 = v94;
    v109 = *(v93 + 72);
    v53 = (v93 + 8);
    do
    {
      v110(v9, v51, v52);
      sub_219BEE6D4();
      (*v53)(v9, v52);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v51 += v109;
      --v49;
    }

    while (v49);
    v50 = v112;
    v4 = v103;
  }

  v54 = &v4[v104[5]];
  v55 = type metadata accessor for SubscriptionTodayFeedGroupKnobs();
  v56 = v99;
  sub_219BEF134();
  sub_219BEF524();
  v57 = *(v98 + 8);
  v57(v56, v100);
  v58 = v112;
  v59 = v50 >> 62;
  if (v50 >> 62)
  {
    v60 = sub_219BF7214();
    if (v60 < v58)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v60 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60 < v112)
    {
LABEL_56:

      v61 = sub_219BEEDD4();
      sub_21982D688(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      v63 = v62;
      *v62 = v58;
      v62[1] = v60;
      v64 = MEMORY[0x277D32400];
LABEL_115:
      (*(*(v61 - 8) + 104))(v63, *v64, v61);
      swift_willThrow();
      return;
    }
  }

  v65 = *&v54[*(v55 + 32)];
  v66 = v99;
  sub_219BEF134();
  v67 = v65;
  sub_219BEF524();
  v68 = (v57)(v66, v100);
  if (v112 <= v58)
  {
    v69 = v58;
  }

  else
  {
    v69 = v112;
  }

  if (v69 < 0)
  {
    __break(1u);
    goto LABEL_117;
  }

  if (v59)
  {
    if (v50 < 0)
    {
      v65 = v50;
    }

    else
    {
      v65 = v50 & 0xFFFFFFFFFFFFFF8;
    }

    v71 = sub_219BF7214();
    v72 = sub_219BF7214();
    v73 = v111;
    if (v72 < 0)
    {
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    if (v71 >= v69)
    {
      v74 = v69;
    }

    else
    {
      v74 = v71;
    }

    if (v71 < 0)
    {
      v74 = v69;
    }

    if (v69)
    {
      v67 = v74;
    }

    else
    {
      v67 = 0;
    }

    v68 = sub_219BF7214();
  }

  else
  {
    v68 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v68 >= v69)
    {
      v70 = v69;
    }

    else
    {
      v70 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v69)
    {
      v67 = v70;
    }

    else
    {
      v67 = 0;
    }
  }

  if (v68 < v67)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if ((v50 & 0xC000000000000001) == 0 || !v67)
  {

    if (!v59)
    {
      goto LABEL_91;
    }

LABEL_94:

    v65 = sub_219BF7564();
    v59 = v78;
    v71 = v79;
    if (v79)
    {
      goto LABEL_96;
    }

LABEL_95:
    sub_218B667DC(v65, v77, v59, v71);
    v67 = v80;
    goto LABEL_102;
  }

  sub_2186D6710(0, &qword_280E8E260);

  v75 = 0;
  do
  {
    v76 = v75 + 1;
    sub_219BF7334();
    v75 = v76;
  }

  while (v67 != v76);
  if (v59)
  {
    goto LABEL_94;
  }

LABEL_91:
  v65 = v50 & 0xFFFFFFFFFFFFFF8;
  v77 = (v50 & 0xFFFFFFFFFFFFFF8) + 32;
  v71 = (2 * v67) | 1;
  if ((v71 & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_96:
  v73 = v77;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v81 = swift_dynamicCastClass();
  if (!v81)
  {
    swift_unknownObjectRelease();
    v81 = MEMORY[0x277D84F90];
  }

  v82 = *(v81 + 16);

  if (__OFSUB__(v71 >> 1, v59))
  {
    goto LABEL_120;
  }

  if (v82 != (v71 >> 1) - v59)
  {
LABEL_121:
    swift_unknownObjectRelease();
    v77 = v73;
    goto LABEL_95;
  }

  v67 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v67)
  {
    goto LABEL_103;
  }

  v67 = MEMORY[0x277D84F90];
LABEL_102:
  swift_unknownObjectRelease();
LABEL_103:
  v68 = swift_allocObject();
  *(v68 + 16) = v108;
  v83 = MEMORY[0x277D83B88];
  *(v68 + 56) = MEMORY[0x277D83B88];
  v84 = MEMORY[0x277D83C10];
  *(v68 + 64) = MEMORY[0x277D83C10];
  *(v68 + 32) = v60;
  LODWORD(v65) = v67 < 0 || (v67 & 0x4000000000000000) != 0;
  if (v65 != 1)
  {
    v85 = *(v67 + 16);
    goto LABEL_108;
  }

LABEL_118:
  v89 = v68;
  v90 = sub_219BF7214();
  v84 = MEMORY[0x277D83C10];
  v83 = MEMORY[0x277D83B88];
  v85 = v90;
  v68 = v89;
LABEL_108:
  *(v68 + 96) = v83;
  *(v68 + 104) = v84;
  *(v68 + 72) = v85;
  sub_219BF6214();
  sub_219BE5314();

  if (v65)
  {
    if (sub_219BF7214())
    {
      goto LABEL_110;
    }

LABEL_113:

    goto LABEL_114;
  }

  if (!*(v67 + 16))
  {
    goto LABEL_113;
  }

LABEL_110:
  sub_2186D6710(0, &qword_280E8E260);
  v86 = sub_219BF5904();
  v87 = FCPromoteOneHeadline();

  if (v87)
  {

    sub_219BF5924();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2198315F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186D8EE0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[6] = swift_task_alloc();
  sub_2186D8EE0(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[7] = swift_task_alloc();
  sub_2186D8EE0(0, &unk_280E91A10, sub_2189AE994, v5);
  v4[8] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_219BF2034();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  sub_2186D8EE0(0, &unk_280E8FF30, sub_218A42400, v5);
  v4[15] = swift_task_alloc();
  sub_2186D8EE0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  v4[16] = swift_task_alloc();
  v8 = sub_219BDBD64();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for SubscriptionTodayFeedGroupConfigData();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = sub_219BF1934();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = sub_219BF26F4();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  v11 = sub_219BF3C84();
  v4[28] = v11;
  v4[29] = *(v11 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v12 = sub_219BF3E84();
  v4[32] = v12;
  v4[33] = *(v12 - 8);
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219831AB8, 0, 0);
}

uint64_t sub_219831AB8()
{
  v83 = v0;
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v82[0] = MEMORY[0x277D84F90];
    v3 = sub_218C34A88(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v3, v4, v5, v6, v7);
    }

    v8 = v82[0];
    v9 = *(v0 + 232);
    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      v11 = *MEMORY[0x277D34128];
      do
      {
        v12 = *(v0 + 248);
        v13 = *(v0 + 224);
        *v12 = MEMORY[0x21CECE0F0](v10, *(v0 + 32));
        (*(v9 + 104))(v12, v11, v13);
        v82[0] = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_218C34A88(v14 > 1, v15 + 1, 1);
          v8 = v82[0];
        }

        v16 = *(v0 + 248);
        v17 = *(v0 + 224);
        ++v10;
        *(v8 + 16) = v15 + 1;
        (*(v9 + 32))(v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v16, v17);
      }

      while (v2 != v10);
    }

    else
    {
      v19 = (*(v0 + 32) + 32);
      v79 = *(v9 + 104);
      do
      {
        **(v0 + 240) = *v19;
        v79();
        v82[0] = v8;
        v21 = *(v8 + 16);
        v20 = *(v8 + 24);
        swift_unknownObjectRetain();
        if (v21 >= v20 >> 1)
        {
          sub_218C34A88(v20 > 1, v21 + 1, 1);
          v8 = v82[0];
        }

        v22 = *(v0 + 240);
        v23 = *(v0 + 224);
        *(v8 + 16) = v21 + 1;
        (*(v9 + 32))(v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v22, v23);
        ++v19;
        --v2;
      }

      while (v2);
    }

    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v67 = *(v0 + 272);
  v68 = *(v0 + 264);
  v69 = *(v0 + 256);
  v24 = *(v0 + 208);
  v25 = *(v0 + 216);
  v73 = *(v0 + 200);
  v81 = *(v0 + 184);
  v63 = *(v0 + 176);
  v78 = *(v0 + 168);
  v57 = *(v0 + 152);
  v59 = *(v0 + 144);
  v61 = *(v0 + 136);
  v62 = *(v0 + 160);
  v77 = *(v0 + 128);
  v64 = *(v0 + 120);
  v70 = *(v0 + 64);
  v71 = *(v0 + 56);
  v75 = *(v0 + 48);
  v76 = *(v0 + 40);
  v80 = *(v0 + 24);
  sub_218F0B984(v18);
  sub_218F0BA7C(v18);
  sub_218F0BB90(v18);
  sub_219BF3E74();
  v66 = MEMORY[0x277D84560];
  sub_2186D8EE0(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
  sub_219BF1A44();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_219C09BA0;
  v56 = v26;
  sub_219BF1364();
  v27 = swift_allocBox();
  v29 = v28;
  swift_getObjectType();
  sub_2194F6464(v29);
  *v25 = v27;
  v30 = *MEMORY[0x277D33748];
  v31 = sub_219BF2124();
  (*(*(v31 - 8) + 104))(v25, v30, v31);
  (*(v24 + 104))(v25, *MEMORY[0x277D339C8], v73);
  sub_219BF1A04();
  v65 = type metadata accessor for SubscriptionTodayFeedGroupEmitter();
  v32 = (v76 + *(v65 + 24));
  v72 = v32[4];
  v74 = v32[3];
  __swift_project_boxed_opaque_existential_1(v32, v74);
  sub_219834194(0, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);
  sub_219BEDD14();
  v82[0] = 0;
  v82[1] = 0xE000000000000000;
  sub_219BF7314();

  strcpy(v82, "subscription::");
  HIBYTE(v82[1]) = -18;
  v33 = [v80 identifier];
  v34 = sub_219BF5414();
  v36 = v35;

  MEMORY[0x21CECC330](v34, v36);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BDBD54();
  v37 = sub_219BDBD44();
  v39 = v38;
  (*(v59 + 8))(v57, v61);
  MEMORY[0x21CECC330](v37, v39);

  v40 = [v80 identifier];
  sub_219BF5414();

  v60 = sub_219BEC004();
  v58 = *(*(v60 - 8) + 56);
  v58(v77, 1, 1, v60);
  sub_219BEDD14();
  v41 = sub_219BF1714();
  v42 = *(v81 + 8);
  *(v0 + 280) = v42;
  *(v0 + 288) = (v81 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v62, v63);
  v82[0] = v41;
  sub_2191EED30(v56);
  sub_218A42400(0);
  (*(*(v43 - 8) + 56))(v64, 1, 1, v43);
  sub_219BF1764();

  sub_21983353C(v64, &unk_280E8FF30, sub_218A42400);
  sub_21983353C(v77, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v42(v78, v63);
  sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_219C146A0;
  *(v44 + 32) = v80;
  sub_2186D8EE0(0, &unk_280E8B790, MEMORY[0x277D34258], v66);
  v45 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_219C09BA0;
  (*(v68 + 16))(v46 + v45, v67, v69);
  v58(v77, 1, 1, v60);
  swift_unknownObjectRetain();
  sub_219A95188(v18);
  sub_219A95188(v18);
  sub_219A951A0(v18);
  sub_219A951B8(v18);
  sub_219A952CC(v18);
  sub_219A952E4(v18);
  sub_219A953F8(v18);
  sub_219BF2024();
  v47 = *(v65 + 20);
  sub_2189AE994(0);
  v49 = v48;
  v50 = *(v48 - 8);
  (*(v50 + 16))(v70, v76 + v47, v48);
  (*(v50 + 56))(v70, 0, 1, v49);
  v51 = sub_219BF35D4();
  (*(*(v51 - 8) + 56))(v71, 1, 1, v51);
  *(v0 + 320) = 11;
  sub_2198335AC(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v52 = sub_219BF2774();
  (*(*(v52 - 8) + 56))(v75, 1, 1, v52);
  v53 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v53 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v54 = swift_task_alloc();
  *(v0 + 296) = v54;
  *v54 = v0;
  v54[1] = sub_2198326B8;
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  v3 = *(v0 + 192);
  v7 = v72;
  v6 = v74;

  return MEMORY[0x2821921B8](v3, v4, v5, v6, v7);
}

uint64_t sub_2198326B8(uint64_t a1)
{
  v3 = *v2;
  v3[38] = v1;

  v15 = v3[35];
  v4 = v3[24];
  v5 = v3[22];
  v6 = v3[14];
  v7 = v3[13];
  v8 = v3[12];
  v9 = v3[11];
  v10 = v3[10];
  v11 = v3[9];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_219832A84;
  }

  else
  {
    v3[39] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_219832938;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_219832938()
{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];
  v2 = v0[39];

  return v1(v2);
}

uint64_t sub_219832A84()
{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_219832BCC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = [objc_msgSend(*(a2 + *(type metadata accessor for SubscriptionTodayFeedGroupEmitter() + 44)) purchaseProvider)];
  v5 = sub_219BF5D44();

  LOBYTE(v2) = sub_2188537B8(v2, v3, v5);
  swift_unknownObjectRelease();

  return v2 & 1;
}

uint64_t sub_219832C8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21982D918(a1, a2);
}

uint64_t sub_219832D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_21982F798(a1, a2, a3);
}

uint64_t sub_219832DE4@<X0>(uint64_t a1@<X8>)
{
  sub_219834194(0, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219832EA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SubscriptionTodayFeedGroupKnobs();
  a2[4] = sub_21982D688(&qword_280EA7B38, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
  a2[5] = sub_21982D688(&qword_280EA7B40, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2198334D4(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
}

uint64_t sub_219832FC4()
{
  sub_219834194(0, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);

  return sub_219BEDCA4();
}

uint64_t sub_219833034@<X0>(uint64_t *a1@<X8>)
{
  sub_2186D8EE0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219834194(0, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219833388(inited + 32, sub_2188317B0);
  sub_2186D8EE0(0, &qword_280EE7728, type metadata accessor for SubscriptionTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_2198342A8();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2198331FC()
{
  sub_21982D688(&qword_280EA1760, type metadata accessor for SubscriptionTodayFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_219833388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2198333E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_21982DBD8(a1, v5, v4);
}

uint64_t sub_219833494(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2198334D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21983353C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8EE0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2198335AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_21983364C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2198336B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SubscriptionTodayFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + v8 + 16);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2187609C8;

  return sub_2198307AC(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

uint64_t sub_219833808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_2186D8EE0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  type metadata accessor for TodayFeedServiceContext();
  v4[14] = swift_task_alloc();
  v5 = sub_219BDBD34();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_219BF0BD4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2198339D4, 0, 0);
}

uint64_t sub_2198339D4()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[14];
  v5 = type metadata accessor for SubscriptionTodayFeedGroupEmitter();
  type metadata accessor for SubscriptionTodayFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v30 = *(v1 + 8);
  v30(v2, v3);
  sub_219BEF0B4();
  sub_2198334D4(v0[3] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v4, type metadata accessor for TodayFeedServiceContext);

  v6 = *(v4 + 8);
  sub_219833388(v4, type metadata accessor for TodayFeedServiceContext);
  v7 = [v6 startDate];

  v8 = v0[18];
  if (v7)
  {
    v29 = v5;
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    v12 = v0[13];
    sub_219BDBCA4();

    v13 = *(v10 + 32);
    v13(v12, v9, v11);
    v14 = *(v10 + 56);
    v14(v12, 0, 1, v11);
    v5 = v29;
    v13(v8, v12, v11);
  }

  else
  {
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[13];
    v14 = *(v15 + 56);
    v14(v17, 1, 1, v16);
    sub_219BDBD24();
    if ((*(v15 + 48))(v17, 1, v16) != 1)
    {
      sub_21983353C(v0[13], &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  v18 = v0[18];
  v20 = v0[15];
  v19 = v0[16];
  v22 = v0[11];
  v21 = v0[12];
  sub_2186C6148(0, &qword_280E8E860);
  (*(v19 + 16))(v21, v18, v20);
  v14(v21, 0, 1, v20);
  sub_219BDBBF4();
  v14(v22, 0, 1, v20);
  v23 = sub_2193707CC(v21, v22);
  v0[22] = v23;
  if (v23)
  {
    v24 = v0[21];
    v25 = v0[19];
    v26 = (v0[10] + *(v5 + 36));
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_219BEF134();
    sub_219BEF524();
    v30(v24, v25);
    v0[23] = sub_219BF27F4();
    v27 = swift_task_alloc();
    v0[24] = v27;
    *v27 = v0;
    v27[1] = sub_219833DF8;
    v23 = v0 + 4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821D23D8](v23);
}

uint64_t sub_219833DF8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2198340B0;
  }

  else
  {
    v2 = sub_219833F2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219833F2C()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v0[6] = v0[4];
  sub_2187E7248();
  sub_21982D688(&qword_280E8EBF0, sub_2187E7248);
  v5 = sub_219BF56E4();

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_2198340B0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

void sub_219834194(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    a5();
    v8 = sub_219BEDD94();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2198342A8()
{
  result = qword_280EE7730;
  if (!qword_280EE7730)
  {
    sub_2186D8EE0(255, &qword_280EE7728, type metadata accessor for SubscriptionTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7730);
  }

  return result;
}

uint64_t sub_219834330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioHistoryFeedGroup();

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_21890A6BC);
}

uint64_t sub_219834388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleListAudioHistoryFeedGroup();

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_21890A768);
}

uint64_t type metadata accessor for AudioHistoryFeedSectionDescriptor()
{
  result = qword_27CC1FE40;
  if (!qword_27CC1FE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21983443C()
{
  v1 = type metadata accessor for ArticleListAudioHistoryFeedGroup();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219834718(v0, v6);
  sub_2189BD64C(v6, v4);
  v7 = *v4;

  sub_218A30388(v4);
  return v7;
}

uint64_t sub_21983451C(uint64_t a1, uint64_t a2)
{
  sub_21983477C();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 56);
  sub_219834718(a1, v7);
  sub_219834718(a2, &v7[v8]);
  type metadata accessor for ArticleListAudioHistoryFeedGroup();
  sub_2198347E0(&unk_27CC11168);
  LOBYTE(a2) = sub_219BF1174();
  sub_218A30388(&v7[v8]);
  sub_218A30388(v7);
  return a2 & 1;
}

uint64_t sub_219834604@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ArticleListAudioHistoryFeedGroup();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219834718(v1, v8);
  sub_2189BD64C(v8, v6);
  a1[3] = v3;
  a1[4] = sub_2198347E0(&qword_27CC11148);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2189BD64C(v6, boxed_opaque_existential_1);
}

uint64_t sub_219834718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21983477C()
{
  if (!qword_27CC1FE50)
  {
    type metadata accessor for AudioHistoryFeedSectionDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1FE50);
    }
  }
}

uint64_t sub_2198347E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArticleListAudioHistoryFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}