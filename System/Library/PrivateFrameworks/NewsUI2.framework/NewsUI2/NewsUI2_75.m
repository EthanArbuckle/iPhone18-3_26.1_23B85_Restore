uint64_t sub_218F31004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218F31064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F310C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F31164(uint64_t a1, char *a2)
{
  v253 = a2;
  v254 = a1;
  sub_2186F1164();
  v235 = *(v2 - 8);
  v236 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v218 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v217 = &v192 - v5;
  sub_2186F7328();
  v234 = v6;
  v233 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v216 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v215 = &v192 - v9;
  sub_2186F107C();
  v232 = v10;
  v231 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v214 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v213 = &v192 - v13;
  sub_2186FB04C();
  v230 = v14;
  v229 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v212 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v210 = &v192 - v17;
  sub_2186F7240();
  v228 = v18;
  v227 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v208 = &v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v207 = &v192 - v21;
  sub_2186FAF54();
  v226 = v22;
  v225 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v206 = &v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v205 = &v192 - v25;
  sub_2186EAD48();
  v248 = *(v26 - 8);
  v249 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v211 = &v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v209 = &v192 - v29;
  v222 = sub_219BF0D74();
  v221 = *(v222 - 8);
  v30 = MEMORY[0x28223BE20](v222);
  v200 = &v192 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v199 = &v192 - v32;
  sub_2186F7158();
  v224 = v33;
  v223 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v202 = &v192 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v201 = &v192 - v36;
  sub_2186F0F3C();
  v220 = v37;
  v219 = *(v37 - 8);
  v38 = MEMORY[0x28223BE20](v37);
  v198 = &v192 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v197 = &v192 - v40;
  sub_2186F0E54();
  v250 = *(v41 - 8);
  v251 = v41;
  v42 = MEMORY[0x28223BE20](v41);
  v204 = &v192 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v203 = &v192 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v196 = &v192 - v47;
  MEMORY[0x28223BE20](v46);
  v195 = &v192 - v48;
  v49 = sub_219BF1584();
  v246 = *(v49 - 8);
  v247 = v49;
  v50 = MEMORY[0x28223BE20](v49);
  v194 = &v192 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v193 = &v192 - v52;
  v53 = type metadata accessor for TagFeedModel(0);
  v54 = MEMORY[0x28223BE20](v53);
  v252 = &v192 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v244 = &v192 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v243 = &v192 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v242 = &v192 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v240 = &v192 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v239 = &v192 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v238 = &v192 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v70 = (&v192 - v69);
  v71 = MEMORY[0x28223BE20](v68);
  v241 = &v192 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v237 = &v192 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v77 = &v192 - v76;
  v78 = MEMORY[0x28223BE20](v75);
  v80 = &v192 - v79;
  v81 = MEMORY[0x28223BE20](v78);
  v83 = &v192 - v82;
  v84 = MEMORY[0x28223BE20](v81);
  v86 = &v192 - v85;
  v87 = MEMORY[0x28223BE20](v84);
  v245 = &v192 - v88;
  MEMORY[0x28223BE20](v87);
  v90 = (&v192 - v89);
  sub_218F33010();
  v92 = MEMORY[0x28223BE20](v91 - 8);
  v94 = &v192 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = &v94[*(v92 + 56)];
  sub_218F310C8(v254, v94, type metadata accessor for TagFeedModel);
  v96 = v253;
  v253 = v95;
  sub_218F310C8(v96, v95, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v144 = v245;
      sub_218F310C8(v94, v245, type metadata accessor for TagFeedModel);
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v146 = *(v145 + 48);
      v147 = v253;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v148 = v246;
        v149 = *(v246 + 32);
        v150 = v144 + v146;
        v151 = v193;
        v152 = v247;
        v149(v193, v150, v247);
        v153 = v194;
        v149(v194, v147 + v146, v152);
        v143 = MEMORY[0x21CEC82E0](v151, v153);
        v154 = *(v148 + 8);
        v154(v153, v152);
        v154(v151, v152);
        sub_218F31004(v147, type metadata accessor for TagFeedGapLocation);
        v155 = v245;
        goto LABEL_70;
      }

      (*(v246 + 8))(v144 + v146, v247);
      sub_218F31004(v144, type metadata accessor for TagFeedGapLocation);
      goto LABEL_52;
    case 2u:
      sub_218F310C8(v94, v86, type metadata accessor for TagFeedModel);
      v123 = v253;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v106 = v250;
        v105 = v251;
        v124 = *(v250 + 32);
        v108 = v195;
        v124(v195, v86, v251);
        v109 = v196;
        v124(v196, v123, v105);
        sub_219BF0F34();
        sub_2186FAF08();
        v110 = MEMORY[0x277D33058];
        sub_2186EFCF4(&unk_280E90A40, MEMORY[0x277D33058]);
        v111 = &qword_280E90A50;
        goto LABEL_31;
      }

      (*(v250 + 8))(v86, v251);
      goto LABEL_52;
    case 3u:
      sub_218F310C8(v94, v83, type metadata accessor for TagFeedModel);
      v125 = v253;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v106 = v219;
        v126 = *(v219 + 32);
        v108 = v197;
        v105 = v220;
        v126(v197, v83, v220);
        v109 = v198;
        v126(v198, v125, v105);
        sub_219BF04A4();
        sub_2186FAF08();
        v110 = MEMORY[0x277D32CE0];
        sub_2186EFCF4(&unk_280E90F10, MEMORY[0x277D32CE0]);
        v111 = &unk_280E90F20;
        goto LABEL_31;
      }

      v177 = *(v219 + 8);
      v178 = v83;
      v179 = &v252;
      goto LABEL_51;
    case 4u:
      sub_218F310C8(v94, v80, type metadata accessor for TagFeedModel);
      v115 = v253;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v106 = v223;
        v116 = *(v223 + 32);
        v108 = v201;
        v105 = v224;
        v116(v201, v80, v224);
        v109 = v202;
        v116(v202, v115, v105);
        sub_219BF1094();
        sub_2186FAF08();
        v110 = MEMORY[0x277D330F8];
        sub_2186EFCF4(&unk_280E909A0, MEMORY[0x277D330F8]);
        v111 = &qword_280E909B0;
        goto LABEL_31;
      }

      v177 = *(v223 + 8);
      v178 = v80;
      v179 = &v255;
      goto LABEL_51;
    case 5u:
      sub_218F310C8(v94, v77, type metadata accessor for TagFeedModel);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_219BE5BA4();
        v143 = sub_219BE5B74();

        goto LABEL_32;
      }

      goto LABEL_52;
    case 6u:
      v159 = v237;
      sub_218F310C8(v94, v237, type metadata accessor for TagFeedModel);
      v160 = v253;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v161 = v221;
        v162 = *(v221 + 32);
        v163 = v199;
        v164 = v159;
        v165 = v222;
        v162(v199, v164, v222);
        v166 = v200;
        v162(v200, v160, v165);
        v143 = sub_219BF0D64();
        v167 = *(v161 + 8);
        v167(v166, v165);
        v167(v163, v165);
        goto LABEL_32;
      }

      v177 = *(v221 + 8);
      v178 = v159;
      v179 = &v254;
      goto LABEL_51;
    case 7u:
      v127 = v241;
      sub_218F310C8(v94, v241, type metadata accessor for TagFeedModel);
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v129 = *(v128 + 48);
      v130 = v253;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        (*(v250 + 8))(v127 + v129, v251);
        (*(v248 + 8))(v127, v249);
        goto LABEL_52;
      }

      v131 = v249;
      v132 = *(v248 + 32);
      v133 = v209;
      v132(v209, v127, v249);
      v134 = v211;
      v132(v211, v130, v131);
      v135 = v251;
      v136 = *(v250 + 32);
      v137 = v127 + v129;
      v138 = v203;
      v136(v203, v137, v251);
      v139 = &v130[v129];
      v140 = v204;
      v136(v204, v139, v135);
      sub_219BEC504();
      v141 = MEMORY[0x277D2D6B0];
      sub_2186EFCF4(&unk_280EE32C0, MEMORY[0x277D2D6B0]);
      sub_2186EFCF4(&qword_280EE32D0, v141);
      if (sub_219BF07C4())
      {
        sub_219BF0F34();
        sub_2186FAF08();
        v142 = MEMORY[0x277D33058];
        sub_2186EFCF4(&unk_280E90A40, MEMORY[0x277D33058]);
        sub_2186EFCF4(&qword_280E90A50, v142);
        v143 = sub_219BF07C4();
      }

      else
      {
        v143 = 0;
      }

      v188 = v251;
      v189 = *(v250 + 8);
      v189(v140, v251);
      v189(v138, v188);
      v190 = v249;
      v191 = *(v248 + 8);
      v191(v134, v249);
      v191(v133, v190);
      goto LABEL_32;
    case 8u:
      sub_218F310C8(v94, v70, type metadata accessor for TagFeedModel);
      v173 = *v70;
      v172 = v70[1];
      v174 = v253;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_37;
      }

      v175 = *v174;
      v176 = v174[1];
      if (v173 == v175 && v172 == v176)
      {
        v143 = 1;
      }

      else
      {
        v143 = sub_219BF78F4();
      }

      goto LABEL_32;
    case 9u:
      v120 = v238;
      sub_218F310C8(v94, v238, type metadata accessor for TagFeedModel);
      v121 = v253;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v106 = v225;
        v122 = *(v225 + 32);
        v108 = v205;
        v105 = v226;
        v122(v205, v120, v226);
        v109 = v206;
        v122(v206, v121, v105);
        sub_219BEDAE4();
        sub_2186FAF08();
        v110 = MEMORY[0x277D31D50];
        sub_2186EFCF4(&unk_280E92550, MEMORY[0x277D31D50]);
        v111 = &unk_280E92560;
        goto LABEL_31;
      }

      v177 = *(v225 + 8);
      v178 = v120;
      v179 = &v256;
      goto LABEL_51;
    case 0xAu:
      v168 = v239;
      sub_218F310C8(v94, v239, type metadata accessor for TagFeedModel);
      v169 = v253;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v106 = v227;
        v170 = *(v227 + 32);
        v108 = v207;
        v105 = v228;
        v170(v207, v168, v228);
        v109 = v208;
        v170(v208, v169, v105);
        sub_219BF07A4();
        sub_2186FAF08();
        v110 = MEMORY[0x277D32F68];
        sub_2186EFCF4(&unk_280E90E90, MEMORY[0x277D32F68]);
        v111 = &qword_280E90EA0;
        goto LABEL_31;
      }

      v177 = *(v227 + 8);
      v178 = v168;
      v179 = &v257;
      goto LABEL_51;
    case 0xBu:
      v112 = v240;
      sub_218F310C8(v94, v240, type metadata accessor for TagFeedModel);
      v113 = v253;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v106 = v229;
        v114 = *(v229 + 32);
        v108 = v210;
        v105 = v230;
        v114(v210, v112, v230);
        v109 = v212;
        v114(v212, v113, v105);
        sub_219BF0AC4();
        sub_2186FAF08();
        v110 = MEMORY[0x277D32FB8];
        sub_2186EFCF4(&unk_280E90C90, MEMORY[0x277D32FB8]);
        v111 = &qword_280E90CA0;
        goto LABEL_31;
      }

      v177 = *(v229 + 8);
      v178 = v112;
      v179 = &v258;
      goto LABEL_51;
    case 0xCu:
      v117 = v242;
      sub_218F310C8(v94, v242, type metadata accessor for TagFeedModel);
      v118 = v253;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v106 = v231;
        v119 = *(v231 + 32);
        v108 = v213;
        v105 = v232;
        v119(v213, v117, v232);
        v109 = v214;
        v119(v214, v118, v105);
        sub_219BEDB94();
        sub_2186FAF08();
        v110 = MEMORY[0x277D31DE8];
        sub_2186EFCF4(&unk_280E924E0, MEMORY[0x277D31DE8]);
        v111 = &qword_280E924F0;
        goto LABEL_31;
      }

      v177 = *(v231 + 8);
      v178 = v117;
      v179 = &v259;
LABEL_51:
      v177(v178, *(v179 - 32));
      goto LABEL_52;
    case 0xDu:
      v156 = v243;
      sub_218F310C8(v94, v243, type metadata accessor for TagFeedModel);
      v157 = v253;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v106 = v233;
        v158 = *(v233 + 32);
        v108 = v215;
        v105 = v234;
        v158(v215, v156, v234);
        v109 = v216;
        v158(v216, v157, v105);
        sub_219BEEAD4();
        sub_2186FAF08();
        v110 = MEMORY[0x277D32260];
        sub_2186EFCF4(&qword_280E91968, MEMORY[0x277D32260]);
        v111 = &unk_280E91970;
        goto LABEL_31;
      }

      (*(v233 + 8))(v156, v234);
      goto LABEL_52;
    case 0xEu:
      v103 = v244;
      sub_218F310C8(v94, v244, type metadata accessor for TagFeedModel);
      v104 = v253;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        (*(v235 + 8))(v103, v236);
        goto LABEL_52;
      }

      v106 = v235;
      v105 = v236;
      v107 = *(v235 + 32);
      v108 = v217;
      v107(v217, v103, v236);
      v109 = v218;
      v107(v218, v104, v105);
      sub_219BF0B74();
      sub_2186FAF08();
      v110 = MEMORY[0x277D32FD0];
      sub_2186EFCF4(&unk_280E90C70, MEMORY[0x277D32FD0]);
      v111 = &unk_280E90C80;
LABEL_31:
      sub_2186EFCF4(v111, v110);
      v143 = sub_219BF07C4();
      v171 = *(v106 + 8);
      v171(v109, v105);
      v171(v108, v105);
      goto LABEL_32;
    default:
      sub_218F310C8(v94, v90, type metadata accessor for TagFeedModel);
      v98 = *v90;
      v97 = v90[1];
      sub_2186F0CC0();
      v100 = v99;
      v101 = *(v99 + 48);
      v102 = v253;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_218F31004(v90 + v101, type metadata accessor for TagFeedGapLocation);
LABEL_37:

LABEL_52:
        sub_218F31004(v94, sub_218F33010);
        v180 = v252;
        sub_218F310C8(v254, v252, type metadata accessor for TagFeedModel);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
            (*(v246 + 8))(v180 + *(v187 + 48), v247);
            v181 = type metadata accessor for TagFeedGapLocation;
            goto LABEL_54;
          case 2u:
          case 3u:
          case 4u:
          case 5u:
          case 6u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
            v181 = type metadata accessor for TagFeedModel;
LABEL_54:
            v182 = v181;
            v183 = v180;
            goto LABEL_55;
          case 7u:
            sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
            (*(v250 + 8))(v180 + *(v185 + 48), v251);
            (*(v248 + 8))(v180, v249);
            goto LABEL_56;
          default:

            sub_2186F0CC0();
            v182 = type metadata accessor for TagFeedGapLocation;
            v183 = v180 + *(v186 + 48);
LABEL_55:
            sub_218F31004(v183, v182);
LABEL_56:
            v143 = 0;
            break;
        }
      }

      else
      {
        if (v98 == *v102 && v97 == *(v102 + 1))
        {
          v143 = 1;
        }

        else
        {
          v143 = sub_219BF78F4();
        }

        sub_218F31004(&v102[*(v100 + 48)], type metadata accessor for TagFeedGapLocation);
        v155 = v90 + v101;
LABEL_70:
        sub_218F31004(v155, type metadata accessor for TagFeedGapLocation);
LABEL_32:
        sub_218F31004(v94, type metadata accessor for TagFeedModel);
      }

      return v143 & 1;
  }
}

void sub_218F33010()
{
  if (!qword_280EDE750[0])
  {
    type metadata accessor for TagFeedModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280EDE750);
    }
  }
}

void sub_218F33074(void *a1)
{
  v2 = [a1 sportsUserID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_219BF5414();
    v6 = v5;

    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = v4;
    v7[4] = v6;
    v8 = a1;
    sub_219BDCD84();
  }

  else
  {
    sub_2186C6148(0, &qword_280E8D790);
    v9 = sub_219BF6F64();
    sub_219BF61F4();
    sub_219BE5314();
  }
}

void sub_218F331B8(void *a1)
{
  v1 = [a1 sportsUserID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_219BF5414();
    v5 = v4;

    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    sub_219BDCD84();
  }

  else
  {
    sub_2186C6148(0, &qword_280E8D790);
    v7 = sub_219BF6F64();
    sub_219BF61F4();
    sub_219BE5314();
  }
}

uint64_t sub_218F33358(void *a1, uint64_t a2, uint64_t a3)
{
  v114 = a3;
  v108 = sub_219BE9674();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_219BE9CC4();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE8424();
  MEMORY[0x28223BE20](v7 - 8);
  v100 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BE8404();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v95 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F35250(0, &qword_280EE4CE8, MEMORY[0x277D6DEE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v77 - v11;
  v99 = sub_219BE8434();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
  v101 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v102 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BDCAA4();
  v83 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v109 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v115 = sub_219BE8164();
  v15 = *(v115 - 8);
  v16 = MEMORY[0x28223BE20](v115);
  v92 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v77 - v18;
  v84 = type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions();
  MEMORY[0x28223BE20](v84);
  v85 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes();
  MEMORY[0x28223BE20](v21 - 8);
  v86 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  v93 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() ts:a1[4] dynamicColor:a1[5] withDarkStyleVariant:?];
  v27 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  v28 = *(a1 + *(v27 + 56));
  if (v28 && *(a1 + *(v27 + 60)) == 1)
  {
    swift_unknownObjectRetain();
    v29 = v26;
    v112 = sub_2197A0B74(v28);
    v111 = v30;
    v110 = v31;
  }

  else
  {
    v112 = 0;
    v111 = 0;
    v110 = 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v91 = v25;
  if (a2 < 1)
  {

    v37 = 0;
    v39 = 0;
  }

  else
  {
    sub_218F35250(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D83B88];
    *(v34 + 16) = xmmword_219C09BA0;
    v36 = MEMORY[0x277D83C10];
    *(v34 + 56) = v35;
    *(v34 + 64) = v36;
    *(v34 + 32) = a2;
    v37 = sub_219BF5454();
    v39 = v38;
  }

  v40 = a1[3];
  *&v117 = a1[2];
  *(&v117 + 1) = v40;
  *&v118 = 0x403D000000000000;
  *(&v118 + 1) = v26;
  *&v119 = v37;
  *(&v119 + 1) = v39;
  v41 = v112;
  v42 = v111;
  *&v120 = v112;
  *(&v120 + 1) = v111;
  v121 = v110;
  sub_218718690(v113 + 56, v116);
  v79 = __swift_project_boxed_opaque_existential_1(v116, v116[3]);
  v43 = *(v15 + 16);
  v78 = v19;
  v44 = v114;
  v82 = v15 + 16;
  v81 = v43;
  v43(v19, v114, v115);
  v45 = type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions();
  v46 = v83;
  v47 = v87;
  (*(v83 + 16))(v109, v44 + *(v45 + 20), v87);
  v88 = v26;
  v80 = v26;

  sub_218F35160(v41, v42);
  if (sub_219BED0C4())
  {
    v48 = 18.0;
  }

  else
  {
    v48 = 37.0;
  }

  v49 = *(v45 + 24);
  v50 = v84;
  v51 = *(v84 + 36);
  v52 = sub_219BDCAF4();
  v53 = v85;
  (*(*(v52 - 8) + 16))(&v85[v51], v44 + v49, v52);
  (*(v15 + 32))(v53, v78, v115);
  (*(v46 + 32))(&v53[v50[7]], v109, v47);
  *&v53[v50[5]] = v48;
  *&v53[v50[6]] = 0;
  v53[v50[8]] = 1;
  v54 = v86;
  sub_219258418(&v117, v53, v86);
  sub_218F351F0(v53, type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions);
  __swift_destroy_boxed_opaque_existential_1(v116);
  sub_2187DE3C8();
  v56 = *(v55 + 48);
  v57 = v91;
  *(v91 + 8) = v121;
  v58 = v120;
  v57[2] = v119;
  v57[3] = v58;
  v59 = v118;
  *v57 = v117;
  v57[1] = v59;
  sub_218F352B4(v54, v57 + v56, type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes);
  (*(v89 + 56))(v94, 1, 1, v90);
  if (qword_27CC07DA0 != -1)
  {
    swift_once();
  }

  v60 = qword_27CC07DA8;
  v61 = v80;

  if (v60 != -1)
  {
    swift_once();
  }

  sub_219BE83F4();
  sub_218A293AC();
  sub_219BF6BD4();
  v62 = [qword_27CCD84A8 imageWithTintColor:v61 renderingMode:1];
  sub_219BE8414();
  v63 = v113;
  v64 = *(*__swift_project_boxed_opaque_existential_1((v113 + 16), *(v113 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 72);
  v65 = v96;
  sub_219BE83E4();
  __swift_project_boxed_opaque_existential_1((v63 + 96), *(v63 + 120));
  v81(v92, v114, v115);
  v66 = v104;
  sub_219BE9664();
  v67 = v103;
  sub_219BEA504();
  (*(v106 + 8))(v66, v108);
  sub_2187DE694();
  v69 = *(v68 + 48);
  v70 = v102;
  (*(v98 + 32))(v102, v65, v99);
  (*(v105 + 32))(v70 + v69, v67, v107);
  swift_storeEnumTagMultiPayload();
  v71 = MEMORY[0x277D84560];
  sub_218F35250(0, &qword_280E8B920, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader, MEMORY[0x277D84560]);
  v72 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v73 = swift_allocObject();
  v115 = xmmword_219C09BA0;
  *(v73 + 16) = xmmword_219C09BA0;
  sub_218AD8008(v57, v73 + v72, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  sub_218F35250(0, &qword_280E8B928, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter, v71);
  v74 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = v115;
  sub_218AD8008(v70, v75 + v74, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  sub_218F351A8(v112, v111);

  sub_218F351F0(v70, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  sub_218F351F0(v57, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  return v73;
}

uint64_t sub_218F341E0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v61 = sub_219BE9834();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v62 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = v63;
  MEMORY[0x28223BE20](v62);
  v59 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_219BDCAA4();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE8164();
  v48 = *(v7 - 8);
  v8 = v48;
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v10;
  v11 = type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions();
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes();
  MEMORY[0x28223BE20](v15 - 8);
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  v18 = *(v17 - 8);
  v55 = v17 - 8;
  v56 = v18;
  v57 = v18;
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = objc_opt_self();

  v24 = [v23 labelColor];
  *&v67 = v21;
  *(&v67 + 1) = v22;
  *&v68 = 0x403D000000000000;
  *(&v68 + 1) = v24;
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  sub_218718690((v54 + 7), v66);
  v54 = __swift_project_boxed_opaque_existential_1(v66, v66[3]);
  v25 = *(v8 + 16);
  v26 = v53;
  v27 = v7;
  v25(v10, v53, v7);
  v28 = type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions();
  v29 = v51;
  v30 = v52;
  (*(v5 + 16))(v51, v26 + *(v28 + 20), v52);
  if (sub_219BED0C4())
  {
    v31 = 18.0;
  }

  else
  {
    v31 = 37.0;
  }

  v32 = *(v28 + 24);
  v33 = v12[11];
  v34 = sub_219BDCAF4();
  (*(*(v34 - 8) + 16))(&v14[v33], v26 + v32, v34);
  (*(v48 + 32))(v14, v49, v27);
  (*(v5 + 32))(&v14[v12[9]], v29, v30);
  *&v14[v12[7]] = v31;
  *&v14[v12[8]] = 0;
  v14[v12[10]] = 0;
  v35 = v50;
  sub_219258418(&v67, v14, v50);
  sub_218F351F0(v14, type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions);
  __swift_destroy_boxed_opaque_existential_1(v66);
  sub_2187DE3C8();
  v37 = *(v36 + 48);
  *(v20 + 8) = v71;
  v38 = v70;
  *(v20 + 2) = v69;
  *(v20 + 3) = v38;
  v39 = v68;
  *v20 = v67;
  *(v20 + 1) = v39;
  sub_218F352B4(v35, &v20[v37], type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes);
  sub_219BE8154();
  (*(v60 + 104))(v58, *MEMORY[0x277D6E750], v61);
  sub_219BF4E64();
  swift_allocObject();
  v40 = sub_219BF4E44();
  v41 = v59;
  *v59 = v40;
  swift_storeEnumTagMultiPayload();
  v42 = MEMORY[0x277D84560];
  sub_218F35250(0, &qword_280E8B920, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader, MEMORY[0x277D84560]);
  v43 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v44 = swift_allocObject();
  v62 = xmmword_219C09BA0;
  *(v44 + 16) = xmmword_219C09BA0;
  sub_218AD8008(v20, v44 + v43, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  sub_218F35250(0, &qword_280E8B928, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter, v42);
  v45 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v62;
  sub_218F352B4(v41, v46 + v45, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  sub_218F351F0(v20, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  return v44;
}

uint64_t sub_218F3498C(void *a1, uint64_t a2)
{
  v58 = a2;
  v65 = sub_219BE9834();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v66 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = v67;
  MEMORY[0x28223BE20](v66);
  v63 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_219BDCAA4();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE8164();
  v50 = *(v6 - 8);
  v7 = v50;
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v9;
  v10 = type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions();
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes();
  MEMORY[0x28223BE20](v14 - 8);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  v17 = *(v16 - 8);
  v59 = v16 - 8;
  v60 = v17;
  v61 = v17;
  MEMORY[0x28223BE20](v16 - 8);
  v52 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[2];
  v19 = a1[3];
  v21 = objc_opt_self();

  v22 = [v21 labelColor];
  v23 = a1[6];
  v24 = a1[7];
  *&v71 = v20;
  *(&v71 + 1) = v19;
  *&v72 = 0x403D000000000000;
  *(&v72 + 1) = v22;
  *&v73 = v23;
  *(&v73 + 1) = v24;
  v75 = 0;
  v74 = 0uLL;
  sub_218718690((v57 + 7), v70);
  v57 = __swift_project_boxed_opaque_existential_1(v70, v70[3]);
  v25 = *(v7 + 16);
  v26 = v58;
  v27 = v6;
  v25(v9, v58, v6);
  v28 = type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions();
  v29 = v55;
  v30 = v53;
  v31 = v56;
  (*(v55 + 16))(v53, v26 + *(v28 + 20), v56);

  if (sub_219BED0C4())
  {
    v32 = 18.0;
  }

  else
  {
    v32 = 37.0;
  }

  v33 = *(v28 + 24);
  v34 = v11[11];
  v35 = sub_219BDCAF4();
  (*(*(v35 - 8) + 16))(&v13[v34], v26 + v33, v35);
  (*(v50 + 32))(v13, v51, v27);
  (*(v29 + 32))(&v13[v11[9]], v30, v31);
  *&v13[v11[7]] = v32;
  *&v13[v11[8]] = 0;
  v13[v11[10]] = 0;
  v36 = v54;
  sub_219258418(&v71, v13, v54);
  sub_218F351F0(v13, type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_2187DE3C8();
  v38 = *(v37 + 48);
  v39 = v52;
  *(v52 + 8) = v75;
  v40 = v74;
  v39[2] = v73;
  v39[3] = v40;
  v41 = v72;
  *v39 = v71;
  v39[1] = v41;
  sub_218F352B4(v36, v39 + v38, type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes);
  sub_219BE8154();
  (*(v64 + 104))(v62, *MEMORY[0x277D6E750], v65);
  sub_219BF4E64();
  swift_allocObject();
  v42 = sub_219BF4E44();
  v43 = v63;
  *v63 = v42;
  swift_storeEnumTagMultiPayload();
  v44 = MEMORY[0x277D84560];
  sub_218F35250(0, &qword_280E8B920, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader, MEMORY[0x277D84560]);
  v45 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v46 = swift_allocObject();
  v66 = xmmword_219C09BA0;
  *(v46 + 16) = xmmword_219C09BA0;
  sub_218AD8008(v39, v46 + v45, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  sub_218F35250(0, &qword_280E8B928, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter, v44);
  v47 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v66;
  sub_218F352B4(v43, v48 + v47, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  sub_218F351F0(v39, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  return v46;
}

uint64_t sub_218F35160(uint64_t result, void *a2)
{
  if (result)
  {
    swift_unknownObjectRetain();
    v3 = a2;
  }

  return result;
}

uint64_t sub_218F351A8(uint64_t result, void *a2)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218F351F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218F35250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F352B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F3531C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  result = sub_21922CCB8(v2);
  v4 = result;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = result + 32;
    v8 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      sub_21896FC94(v7, v23);
      v9 = *&v23[0] == 0x657061707377656ELL && *(&v23[0] + 1) == 0xEA00000000007372;
      if (v9 || (sub_219BF78F4() & 1) != 0)
      {
        result = sub_218C113E0(v23);
      }

      else
      {
        v21 = v23[8];
        *v22 = v24[0];
        *&v22[9] = *(v24 + 9);
        v17 = v23[4];
        v18 = v23[5];
        v19 = v23[6];
        v20 = v23[7];
        v13 = v23[0];
        v14 = v23[1];
        v15 = v23[2];
        v16 = v23[3];
        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v8;
        if ((result & 1) == 0)
        {
          result = sub_218C35080(0, *(v8 + 16) + 1, 1);
          v8 = v25;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          result = sub_218C35080((v10 > 1), v11 + 1, 1);
          v8 = v25;
        }

        *(v8 + 16) = v11 + 1;
        v12 = (v8 + 176 * v11);
        v12[3] = v14;
        v12[4] = v15;
        v12[2] = v13;
        v12[7] = v18;
        v12[8] = v19;
        v12[5] = v16;
        v12[6] = v17;
        *(v12 + 185) = *&v22[9];
        v12[10] = v21;
        v12[11] = *v22;
        v12[9] = v20;
      }

      ++v6;
      v7 += 176;
      if (v5 == v6)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_17:

    *&v23[0] = v8;
    sub_218F3581C();
    swift_allocObject();
    return sub_219BE3014();
  }

  return result;
}

void sub_218F35538()
{
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
  sub_2186C66AC();
  v1 = sub_219BF6F44();
  sub_219BE5314();
}

uint64_t sub_218F35660()
{
  sub_218F357C4();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE2F84();

  v1 = sub_219BE2E54();
  v2 = sub_219BE2FD4();

  return v2;
}

uint64_t sub_218F35758()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = off_282A6EDF8[0];
  type metadata accessor for MagazineCategoryConfigService();
  return v1();
}

void sub_218F357C4()
{
  if (!qword_280E8F130)
  {
    type metadata accessor for MagazineCategoryConfig(255);
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F130);
    }
  }
}

void sub_218F3581C()
{
  if (!qword_27CC139E0)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC139E0);
    }
  }
}

uint64_t sub_218F3586C(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 11, v1[14]);
  sub_218CBCA50(a1);
  v4 = __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  v5 = [a1 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  v9 = __swift_project_boxed_opaque_existential_1(v2 + 11, v2[14]);
  v10 = *(*v4 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(*v9 + 16);
    v13 = v10 + 32;

    do
    {
      sub_218718690(v13, v17);
      v14 = v18;
      v15 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v15 + 8))(v6, v8, 1, v12, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {
  }

  sub_218B0705C([a1 backingTag]);
  swift_unknownObjectRelease();
  return sub_218B07B30();
}

uint64_t sub_218F359E8(void *a1)
{
  sub_218760638();
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  v8 = [a1 backingTag];
  if (([v8 isPuzzleHub] & 1) != 0 || objc_msgSend(v8, sel_isPuzzleType))
  {
    v9 = sub_219BF5BF4();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;
    swift_unknownObjectRetain();
    sub_218AB3D80(0, 0, v6, &unk_219C47DA0, v10);

    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_218F35B60()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);

  return swift_deallocClassInstance();
}

uint64_t sub_218F35BE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_218B079A8(a1, v4, v5, v6);
}

unint64_t sub_218F35D68()
{
  result = qword_280EB01F0;
  if (!qword_280EB01F0)
  {
    type metadata accessor for MagazineSectionBarLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB01F0);
  }

  return result;
}

uint64_t sub_218F35E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEE914();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218F35EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BEE914();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_218F35F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TodayLayoutSectionDescriptor.Decoration(0);
  v59 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TodayLayoutSectionDescriptor.Footer(0);
  v69 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TodayLayoutSectionDescriptor.Header(0);
  v8 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE9834();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277D6E758];
  v61 = *(v12 + 104);
  v62 = v12 + 104;
  v61(v14, v15, v11);
  v16 = sub_219BEE054();
  v18 = *(v12 + 8);
  v17 = v12 + 8;
  v63 = v14;
  v60 = v18;
  v18(v14, v11);
  v19 = *(v16 + 16);
  v20 = MEMORY[0x277D84F90];
  v65 = a2;
  v66 = a1;
  if (v19)
  {
    v54[1] = v17;
    v55 = v11;
    v56 = v7;
    v70 = MEMORY[0x277D84F90];
    sub_218C351A0(0, v19, 0);
    v21 = v16;
    v22 = v70;
    v68 = sub_219BF00D4();
    v23 = *(v68 - 8);
    v67 = *(v23 + 16);
    v24 = *(v23 + 80);
    v54[0] = v21;
    v25 = v21 + ((v24 + 32) & ~v24);
    v26 = *(v23 + 72);
    do
    {
      v67(v10, v25, v68);
      swift_storeEnumTagMultiPayload();
      v70 = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_218C351A0(v27 > 1, v28 + 1, 1);
        v22 = v70;
      }

      *(v22 + 16) = v28 + 1;
      sub_218F375CC(v10, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v28, type metadata accessor for TodayLayoutSectionDescriptor.Header);
      v25 += v26;
      --v19;
    }

    while (v19);

    a2 = v65;
    a1 = v66;
    v11 = v55;
    v7 = v56;
    v20 = MEMORY[0x277D84F90];
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *a2 = v22;
  v29 = v63;
  v61(v63, *MEMORY[0x277D6E750], v11);
  v30 = sub_219BEE054();
  v60(v29, v11);
  v31 = *(v30 + 16);
  if (v31)
  {
    v70 = v20;
    sub_218C35150(0, v31, 0);
    v32 = v70;
    v68 = sub_219BF00D4();
    v33 = *(v68 - 8);
    v34 = *(v33 + 16);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v67 = v30;
    v36 = v30 + v35;
    v37 = *(v33 + 72);
    do
    {
      v34(v7, v36, v68);
      swift_storeEnumTagMultiPayload();
      v70 = v32;
      v39 = *(v32 + 16);
      v38 = *(v32 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_218C35150(v38 > 1, v39 + 1, 1);
        v32 = v70;
      }

      *(v32 + 16) = v39 + 1;
      sub_218F375CC(v7, v32 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v39, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
      v36 += v37;
      --v31;
    }

    while (v31);

    a2 = v65;
    a1 = v66;
    v20 = MEMORY[0x277D84F90];
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  a2[1] = v32;
  v40 = sub_219BEE044();
  v41 = *(v40 + 16);
  v42 = v64;
  if (v41)
  {
    v70 = v20;
    sub_218C36218(0, v41, 0);
    v43 = v70;
    v69 = sub_219BEE914();
    v44 = *(v69 - 8);
    v45 = *(v44 + 16);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v68 = v40;
    v47 = v40 + v46;
    v48 = *(v44 + 72);
    v49 = v59;
    do
    {
      v45(v42, v47, v69);
      v70 = v43;
      v51 = *(v43 + 16);
      v50 = *(v43 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_218C36218(v50 > 1, v51 + 1, 1);
        v49 = v59;
        v43 = v70;
      }

      *(v43 + 16) = v51 + 1;
      sub_218F375CC(v42, v43 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v51, type metadata accessor for TodayLayoutSectionDescriptor.Decoration);
      v47 += v48;
      --v41;
    }

    while (v41);

    a2 = v65;
    a1 = v66;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  a2[2] = v43;
  type metadata accessor for TodayLayoutSectionDescriptor.LayoutData(0);
  sub_219BEE034();
  v52 = sub_219BEE074();
  return (*(*(v52 - 8) + 8))(a1, v52);
}

uint64_t sub_218F36634()
{
  v1 = type metadata accessor for TodayLayoutSectionDescriptor.LayoutData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TodayLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218F37504(v0, v6, type metadata accessor for TodayLayoutSectionDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_218F3756C(v6, type metadata accessor for TodayLayoutSectionDescriptor);
        return 0;
      }

      else
      {
        v12 = v6[1];
        v13 = sub_218ACE90C(*v6);
        v14 = sub_218ACEB00(v12);
        v16 = v13;
        sub_2191ED57C(v14);

        return v16;
      }
    }

    else
    {
      sub_218F375CC(v6, v3, type metadata accessor for TodayLayoutSectionDescriptor.LayoutData);
      v9 = sub_218F36808(*v3);
      v10 = sub_218F36B80(v3[1]);
      v16 = v9;
      sub_2191ED57C(v10);
      v11 = v16;
      sub_218F3756C(v3, type metadata accessor for TodayLayoutSectionDescriptor.LayoutData);
      return v11;
    }
  }

  return result;
}

uint64_t sub_218F36808(uint64_t a1)
{
  v25 = type metadata accessor for TodayLayoutSectionDescriptor.Header(0);
  v2 = *(v25 - 8);
  v3 = MEMORY[0x28223BE20](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v29 = MEMORY[0x277D84F90];
    sub_218C34270(0, v8, 0);
    v9 = v29;
    v10 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_218F37504(v10, v7, type metadata accessor for TodayLayoutSectionDescriptor.Header);
      sub_218F37504(v7, v5, type metadata accessor for TodayLayoutSectionDescriptor.Header);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
        v28 = sub_2187DE8A8(qword_280E97070, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
        sub_218F375CC(v5, boxed_opaque_existential_1, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
      }

      else
      {
        v13 = sub_219BF00D4();
        v27 = v13;
        v28 = sub_2187DE8A8(&qword_280E91018, MEMORY[0x277D32BB0]);
        v14 = __swift_allocate_boxed_opaque_existential_1(v26);
        (*(*(v13 - 8) + 32))(v14, v5, v13);
      }

      sub_218F3756C(v7, type metadata accessor for TodayLayoutSectionDescriptor.Header);
      v29 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C34270((v15 > 1), v16 + 1, 1);
      }

      v17 = v27;
      v18 = v28;
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      MEMORY[0x28223BE20](v19);
      v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21);
      sub_218DD76AC(v16, v21, &v29, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v9 = v29;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_218F36B80(uint64_t a1)
{
  v25 = type metadata accessor for TodayLayoutSectionDescriptor.Footer(0);
  v2 = *(v25 - 8);
  v3 = MEMORY[0x28223BE20](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v29 = MEMORY[0x277D84F90];
    sub_218C34270(0, v8, 0);
    v9 = v29;
    v10 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_218F37504(v10, v7, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
      sub_218F37504(v7, v5, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
        v28 = sub_2187DE8A8(qword_280E97138, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
        sub_218F375CC(v5, boxed_opaque_existential_1, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      }

      else
      {
        v13 = sub_219BF00D4();
        v27 = v13;
        v28 = sub_2187DE8A8(&qword_280E91018, MEMORY[0x277D32BB0]);
        v14 = __swift_allocate_boxed_opaque_existential_1(v26);
        (*(*(v13 - 8) + 32))(v14, v5, v13);
      }

      sub_218F3756C(v7, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
      v29 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C34270((v15 > 1), v16 + 1, 1);
      }

      v17 = v27;
      v18 = v28;
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      MEMORY[0x28223BE20](v19);
      v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21);
      sub_218DD76AC(v16, v21, &v29, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v9 = v29;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_218F36EFC(uint64_t a1)
{
  v2 = sub_2187DE8A8(&qword_27CC13A20, type metadata accessor for TodayLayoutSectionDescriptor);

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_218F36FB0(uint64_t a1)
{
  v2 = sub_2187DE8A8(&unk_280EB1A50, type metadata accessor for TodayLayoutSectionDescriptor);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_218F3701C()
{
  v1 = type metadata accessor for TodayLayoutSectionDescriptor.LayoutData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TodayLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218F37504(v0, v6, type metadata accessor for TodayLayoutSectionDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v9 = sub_218F371BC(*v6);

        return v9;
      }

      else
      {
        v11 = sub_2193C3E70(v6[2]);

        return v11;
      }
    }

    else
    {
      sub_218F375CC(v6, v3, type metadata accessor for TodayLayoutSectionDescriptor.LayoutData);
      v10 = sub_218F371BC(*(v3 + 2));
      sub_218F3756C(v3, type metadata accessor for TodayLayoutSectionDescriptor.LayoutData);
      return v10;
    }
  }

  return result;
}

uint64_t sub_218F371BC(uint64_t a1)
{
  v31 = sub_219BEE914();
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TodayLayoutSectionDescriptor.Decoration(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C35B30(0, v11, 0);
    v12 = v35;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v28 = (v2 + 32);
    v29 = v14;
    v15 = (v2 + 8);
    do
    {
      sub_218F37504(v13, v10, type metadata accessor for TodayLayoutSectionDescriptor.Decoration);
      v16 = v30;
      sub_218F37504(v10, v30, type metadata accessor for TodayLayoutSectionDescriptor.Decoration);
      v17 = v16;
      v18 = v31;
      (*v28)(v4, v17, v31);
      sub_219BEE8F4();
      (*v15)(v4, v18);
      sub_218F3756C(v10, type metadata accessor for TodayLayoutSectionDescriptor.Decoration);
      v35 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C35B30((v19 > 1), v20 + 1, 1);
      }

      v21 = v33;
      v22 = v34;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      MEMORY[0x28223BE20](v23);
      v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25);
      sub_218DD76AC(v20, v25, &v35, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v32);
      v12 = v35;
      v13 += v29;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_218F37504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F3756C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218F375CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ChannelPickerMainModule.createViewController(pickerType:useAlternateTitle:)(uint64_t *a1, char a2)
{
  v5 = *a1;
  v4 = a1[1];
  sub_219BDD224();
  if (v4 >= 3)
  {
    MEMORY[0x21CECC330](v5, v4);
  }

  else
  {
    sub_218DB964C(v5, v4);
    sub_219BF5484();
  }

  v6 = sub_219BDD224();

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for ChannelPickerViewController();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = a2 & 1;
  sub_218DB964C(v5, v4);

  v8 = sub_219BE1E04();

  if (v8)
  {

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218F377E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_219BE1BA4();
}

uint64_t ChannelPickerMainModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t ChannelPickerMainModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_7NewsUI227ChannelPickerEntryPointTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_218F37998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218F379F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_218F37A90()
{
  v1 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      return *v3;
    case 0xBu:

      sub_218748BF4();
      v7 = *(v6 + 48);
      sub_218748D40();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      return 0;
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return 0;
  }
}

uint64_t sub_218F37C08()
{
  v1 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = *(v3 + 3);

      return 0xD000000000000010;
    case 2u:
      sub_218F3B148(v3, type metadata accessor for FollowingAudioModel);
      v7 = 0x466F69647541;
      return v7 & 0xFFFFFFFFFFFFLL | 0x6565000000000000;
    case 3u:
      v4 = *(*(*v3 + 16) + 16);
      goto LABEL_3;
    case 4u:
      v6 = *(v3 + 3);

      v7 = 0x466465766153;
      return v7 & 0xFFFFFFFFFFFFLL | 0x6565000000000000;
    case 5u:
      v10 = *(v3 + 2);

      return 0x4679726F74736948;
    case 6u:
    case 7u:
      v11 = *(*v3 + 16);
      v12 = *(*v3 + 24);
      v25 = 0;
      v26 = 0xE000000000000000;
      v24[15] = v11;
      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      v13 = [*(v12 + 16) identifier];
      v14 = sub_219BF5414();
      v16 = v15;

      MEMORY[0x21CECC330](v14, v16);

      return v25;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
      v4 = *(*v3 + 16);
LABEL_3:

      goto LABEL_4;
    case 0xBu:
      v17 = *v3;
      sub_218748BF4();
      v19 = *(v18 + 48);
      v4 = *(v17 + 16);

      sub_218748D40();
      (*(*(v20 - 8) + 8))(&v3[v19], v20);
      return v4;
    case 0xEu:
      v5 = *(v3 + 3);

      return 0x6957646572616853;
    case 0xFu:
      v4 = sub_219A910C0();
LABEL_4:

      break;
    case 0x10u:
      sub_218F3B148(v3, type metadata accessor for FollowingMySportsModel);
      v4 = 0x7374726F7053796DLL;
      break;
    case 0x11u:
      sub_218F3B148(v3, type metadata accessor for FollowingPuzzleHubModel);
      v4 = 0x7548656C7A7A7570;
      break;
    case 0x12u:
      v21 = *(v3 + 4);

      v4 = 0x627548646F6F66;
      break;
    case 0x13u:
      v22 = *(v3 + 2);

      v4 = 0x6F42657069636552;
      break;
    default:
      v8 = *(v3 + 2);

      v4 = 0x6546756F59726F46;
      break;
  }

  return v4;
}

uint64_t sub_218F38050()
{
  v1 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
    case 0xEu:
      v6 = *(v3 + 3);
      goto LABEL_15;
    case 2u:
      v11 = type metadata accessor for FollowingAudioModel;
      goto LABEL_13;
    case 3u:
      v5 = *(*v3 + 24);

      return v5;
    case 6u:
    case 7u:
      v5 = *(*v3 + 32);

      return v5;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
      v4 = *v3;
      goto LABEL_3;
    case 0xBu:
      v7 = *v3;
      sub_218748BF4();
      v9 = *(v8 + 48);
      sub_218748D40();
      (*(*(v10 - 8) + 8))(&v3[v9], v10);
      v4 = v7;
LABEL_3:
      v5 = *(v4 + 48);

      return v5;
    case 0xFu:
      v5 = *(*v3 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_allowsUserInteraction);

      return v5;
    case 0x10u:
      v11 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_13;
    case 0x11u:
      v11 = type metadata accessor for FollowingPuzzleHubModel;
LABEL_13:
      sub_218F3B148(v3, v11);
      return 1;
    case 0x12u:
      v6 = *(v3 + 4);

      goto LABEL_15;
    default:
      v6 = *(v3 + 2);
LABEL_15:

      return 1;
  }
}

uint64_t sub_218F3822C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2187491C8(&qword_280EDC650, type metadata accessor for FollowingModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

double sub_218F382AC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FollowingPuzzleHubModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FollowingMySportsModel();
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FollowingAudioModel();
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v2, v15, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = v15[32];
      *(a1 + 24) = &type metadata for FollowingMagazineModel;
      *(a1 + 32) = &off_282A81B18;
      goto LABEL_14;
    case 2u:
      v20 = type metadata accessor for FollowingAudioModel;
      sub_218F3B0E0(v15, v12, type metadata accessor for FollowingAudioModel);
      *(a1 + 24) = v10;
      *(a1 + 32) = &off_282A41AE0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v22 = v12;
      goto LABEL_9;
    case 3u:
      v17 = *v15;
      v18 = type metadata accessor for FollowingEditorialModel();
      v19 = &off_282A546A0;
      goto LABEL_11;
    case 4u:
      v23 = v15[32];
      *(a1 + 24) = &type metadata for FollowingSavedModel;
      *(a1 + 32) = &off_282A95760;
LABEL_14:
      v30 = swift_allocObject();
      *a1 = v30;
      v16 = *v15;
      v31 = *(v15 + 1);
      *(v30 + 16) = *v15;
      *(v30 + 32) = v31;
      *(v30 + 48) = v23;
      return *&v16;
    case 5u:
      v42 = *v15;
      v33 = *(v15 + 2);
      v34 = v15[24];
      *(a1 + 24) = &type metadata for FollowingHistoryModel;
      *(a1 + 32) = &off_282A5FBD0;
      goto LABEL_20;
    case 6u:
    case 7u:
      v17 = *v15;
      v18 = type metadata accessor for FollowingTagModel();
      v19 = &off_282A3ABF8;
LABEL_11:
      *(a1 + 24) = v18;
      *(a1 + 32) = v19;
      *a1 = v17;
      return *&v16;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
      sub_218F3B148(v15, type metadata accessor for FollowingModel);
      goto LABEL_3;
    case 0xBu:

      sub_218748BF4();
      v36 = *(v35 + 48);
      sub_218748D40();
      (*(*(v37 - 8) + 8))(&v15[v36], v37);
LABEL_3:
      *(a1 + 32) = 0;
      *&v16 = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      break;
    case 0xEu:
      v24 = *(v15 + 16);
      v25 = v15[34];
      v26 = v15[35];
      *(a1 + 24) = &type metadata for FollowingSharedWithYouModel;
      *(a1 + 32) = &off_282A8F9F0;
      v27 = swift_allocObject();
      *a1 = v27;
      v16 = *v15;
      v28 = *(v15 + 1);
      *(v27 + 16) = *v15;
      *(v27 + 32) = v28;
      *(v27 + 50) = v25;
      *(v27 + 48) = v24;
      *(v27 + 51) = v26;
      break;
    case 0x10u:
      v20 = type metadata accessor for FollowingMySportsModel;
      sub_218F3B0E0(v15, v9, type metadata accessor for FollowingMySportsModel);
      *(a1 + 24) = v7;
      *(a1 + 32) = &off_282A53EA8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v22 = v9;
LABEL_9:
      sub_218F3B0E0(v22, boxed_opaque_existential_1, v20);
      break;
    case 0x11u:
      sub_218F3B0E0(v15, v6, type metadata accessor for FollowingPuzzleHubModel);
      *(a1 + 24) = v4;
      *(a1 + 32) = &off_282A6F6C8;
      v32 = __swift_allocate_boxed_opaque_existential_1(a1);
      sub_218F3B0E0(v6, v32, type metadata accessor for FollowingPuzzleHubModel);
      break;
    case 0x12u:
      *(a1 + 24) = &type metadata for FollowingFoodModel;
      *(a1 + 32) = &off_282A42E50;
      v38 = swift_allocObject();
      *a1 = v38;
      v39 = *(v15 + 1);
      v38[1] = *v15;
      v38[2] = v39;
      v38[3] = *(v15 + 2);
      v16 = *(v15 + 46);
      *(v38 + 62) = v16;
      break;
    case 0x13u:
      v42 = *v15;
      v33 = *(v15 + 2);
      v34 = v15[24];
      *(a1 + 24) = &type metadata for FollowingRecipeBoxModel;
      *(a1 + 32) = &off_282A55700;
LABEL_20:
      v40 = swift_allocObject();
      *a1 = v40;
      *&v16 = v42;
      *(v40 + 16) = v42;
      *(v40 + 32) = v33;
      *(v40 + 40) = v34;
      break;
    default:
      v29 = *(v15 + 2);
      *(a1 + 24) = &type metadata for FollowingForYouModel;
      *(a1 + 32) = &off_282A84BE0;
      v16 = *v15;
      *a1 = *v15;
      *(a1 + 16) = v29;
      break;
  }

  return *&v16;
}

uint64_t sub_218F387A8()
{
  v1 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
      sub_218F3B148(v3, type metadata accessor for FollowingModel);
      return 0;
    case 0xBu:

      sub_218748BF4();
      v7 = *(v6 + 48);
      sub_218748D40();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      return 0;
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return 1;
  }
}

uint64_t sub_218F389A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v2, v6, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v7 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      if (*(*v6 + 32) == 1 && ((v10 = *(*v6 + 16), v10 != 3) ? (v11 = v10 == 0) : (v11 = 1), v11))
      {

        TagModel.dragItem.getter(a1);
      }

      else
      {

LABEL_4:
        v8 = sub_219BEAF84();
        return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
      }

    case 0xBu:

      sub_218748BF4();
      v13 = *(v12 + 48);
      sub_218748D40();
      (*(*(v14 - 8) + 8))(&v6[v13], v14);
      goto LABEL_4;
    case 0x10u:
      v7 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v7 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v7 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v6, v7);
      goto LABEL_4;
  }
}

BOOL sub_218F38BAC()
{
  v1 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      if (*(*v3 + 32) == 1)
      {
        v6 = *(*v3 + 16);

        return !v6 || v6 == 3;
      }

      else
      {

        return 0;
      }

    case 0xBu:

      sub_218748BF4();
      v9 = *(v8 + 48);
      sub_218748D40();
      (*(*(v10 - 8) + 8))(&v3[v9], v10);
      return 0;
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return 0;
  }
}

uint64_t sub_218F38D50()
{
  v1 = sub_219BE59F4();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  v51 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_219BE5A04();
  v54 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - v7;
  sub_218F3C4F0(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FollowingModel();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = 0;
  if (sub_218F38050())
  {
    sub_218F3C590(v0, v20, type metadata accessor for FollowingModel);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 2u:
        v22 = type metadata accessor for FollowingAudioModel;
        goto LABEL_4;
      case 3u:
        v31 = *v20;
        sub_218F3C524(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_219C09BA0;
        sub_218F3C590(*(v31 + 16) + OBJC_IVAR____TtC7NewsUI214EditorialModel_route, v11, sub_218F3C4F0);
        v33 = type metadata accessor for EditorialModelRoute(0);
        if ((*(*(v33 - 8) + 48))(v11, 1, v33) == 1)
        {
          sub_218F3B148(v11, sub_218F3C4F0);
          v34 = sub_219BDB954();
          (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
        }

        else
        {
          sub_218DCFB08(v14);
          sub_218F3B148(v11, type metadata accessor for EditorialModelRoute);
        }

        v35 = sub_219BE6684();
        v36 = sub_219BE65C4();
        sub_218F3B148(v14, sub_21873F65C);
        if (v36)
        {
          v37 = MEMORY[0x277D6D630];
        }

        else
        {
          v35 = 0;
          v37 = 0;
          *(v32 + 40) = 0;
          *(v32 + 48) = 0;
        }

        *(v32 + 32) = v36;
        *(v32 + 56) = v35;
        *(v32 + 64) = v37;
        sub_219BE5A14();
        v21 = sub_219BE59D4();

        return v21;
      case 6u:
      case 7u:
        v24 = *v20;
        v55 = MEMORY[0x277D84FA0];
        sub_218F3C590(v0, v18, type metadata accessor for FollowingModel);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_218F3B148(v18, type metadata accessor for FollowingModel);
        if (EnumCaseMultiPayload == 6)
        {
          v26 = *MEMORY[0x277D31AA8];
          v27 = v54;
LABEL_27:
          v39 = *(v27 + 13);
          v39(v6, v26, v3);
          sub_219498044(v8, v6);
          (*(v27 + 1))(v8, v3);
          v39(v6, *MEMORY[0x277D31A80], v3);
          goto LABEL_28;
        }

        v27 = v54;
        if (*(v24 + 16) <= 1u && *(v24 + 16))
        {

LABEL_26:
          v26 = *MEMORY[0x277D31AA8];
          goto LABEL_27;
        }

        v38 = sub_219BF78F4();

        v27 = v54;
        if (v38)
        {
          goto LABEL_26;
        }

        v39 = *(v54 + 13);
        v39(v6, *MEMORY[0x277D31A80], v3);
LABEL_28:
        sub_219498044(v8, v6);
        v40 = *(v27 + 1);
        v40(v8, v3);
        v41 = MEMORY[0x277D31AC8];
        if (*(v24 + 16) > 1u)
        {
          if (*(v24 + 16) != 2)
          {

            goto LABEL_35;
          }

          v54 = v40;
          v42 = v39;
          v43 = v24;
          v44 = MEMORY[0x277D31AC8];
        }

        else
        {
          v54 = v40;
          v42 = v39;
          v43 = v24;
          v44 = MEMORY[0x277D31AC8];
        }

        v45 = sub_219BF78F4();

        v41 = v44;
        v24 = v43;
        v39 = v42;
        v40 = v54;
        if ((v45 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_35:
        v39(v6, *MEMORY[0x277D31A78], v3);
        sub_219498044(v8, v6);
        v40(v8, v3);
        v39(v6, *v41, v3);
        sub_219498044(v8, v6);
        v40(v8, v3);
LABEL_36:
        if ([*(*(v24 + 24) + 16) isPuzzleType])
        {
          v39(v6, *v41, v3);
          sub_219498044(v8, v6);
          v40(v8, v3);
        }

        sub_219BE5A14();
        v47 = v51;
        v46 = v52;
        *v51 = *(*(v24 + 24) + 16);
        v47[1] = 0;
        v48 = v53;
        (*(v46 + 104))(v47, *MEMORY[0x277D31A10], v53);
        v49 = v55;
        swift_unknownObjectRetain();
        MEMORY[0x21CEBC780](v47, v49);

        (*(v46 + 8))(v47, v48);
        swift_allocObject();
        v21 = sub_219BE59B4();
        break;
      case 0xBu:

        sub_218748BF4();
        v29 = *(v28 + 48);
        sub_218748D40();
        (*(*(v30 - 8) + 8))(&v20[v29], v30);
        return 0;
      case 0x10u:
        v22 = type metadata accessor for FollowingMySportsModel;
        goto LABEL_4;
      case 0x11u:
        v22 = type metadata accessor for FollowingPuzzleHubModel;
        goto LABEL_4;
      default:
        v22 = type metadata accessor for FollowingModel;
LABEL_4:
        sub_218F3B148(v20, v22);
        return 0;
    }
  }

  return v21;
}

uint64_t sub_218F39684()
{
  sub_219BF4284();
  swift_unknownObjectRetain();
  return sub_219BF4274();
}

uint64_t sub_218F396C4()
{
  v1 = type metadata accessor for FollowingPuzzleHubModel();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for FollowingMySportsModel();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FollowingAudioModel();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218F3C590(v0, v12, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
      v19 = v12[3];
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass_];
      goto LABEL_15;
    case 2u:
      sub_218F3B0E0(v12, v9, type metadata accessor for FollowingAudioModel);
      v14 = *v9;

      sub_218F3B148(v9, type metadata accessor for FollowingAudioModel);
      return v14;
    case 3u:
      v14 = *(*(*v12 + 16) + 32);
      goto LABEL_4;
    case 6u:
    case 7u:
      v15 = [*(*(*v12 + 24) + 16) name];
      v14 = sub_219BF5414();

      return v14;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
      v13 = *v12;
      goto LABEL_3;
    case 0xBu:
      v13 = *v12;
      sub_218748BF4();
      v17 = *(v16 + 48);
      sub_218748D40();
      (*(*(v18 - 8) + 8))(v12 + v17, v18);
LABEL_3:
      v14 = *(v13 + 16);
      goto LABEL_4;
    case 0xEu:
      v19 = v12[3];
      sub_219BF2394();
      v21 = sub_219BF2364();
      v23 = MEMORY[0x21CEC9110]();
      goto LABEL_16;
    case 0xFu:
      v14 = *(*v12 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_title);
LABEL_4:

      break;
    case 0x10u:
      sub_218F3B0E0(v12, v6, type metadata accessor for FollowingMySportsModel);
      v14 = *v6;

      sub_218F3B148(v6, type metadata accessor for FollowingMySportsModel);
      break;
    case 0x11u:
      sub_218F3B0E0(v12, v3, type metadata accessor for FollowingPuzzleHubModel);
      v14 = *v3;

      sub_218F3B148(v3, type metadata accessor for FollowingPuzzleHubModel);
      break;
    case 0x12u:
      v14 = *v12;
      v22 = v12[4];

      break;
    default:
      v19 = v12[2];
      type metadata accessor for Localized();
      v24 = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass_];
LABEL_15:
      v23 = sub_219BDB5E4();
LABEL_16:
      v14 = v23;

      break;
  }

  return v14;
}

uint64_t sub_218F39CC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v2, v6, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v7 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      v15 = *(*v6 + 32);

      v10 = sub_219BE6244();
      v11 = *(*(v10 - 8) + 104);
      if (v15 == 1)
      {
        v16 = MEMORY[0x277D6D588];
      }

      else
      {
        v16 = MEMORY[0x277D6D580];
      }

      v13 = *v16;
      v12 = a1;
      return v11(v12, v13, v10);
    case 8u:
    case 9u:
    case 0xFu:
      sub_218F3B148(v6, type metadata accessor for FollowingModel);
      v8 = MEMORY[0x277D6D580];
      goto LABEL_5;
    case 0xBu:

      sub_218748BF4();
      v18 = *(v17 + 48);
      sub_218748D40();
      (*(*(v19 - 8) + 8))(&v6[v18], v19);
      goto LABEL_4;
    case 0x10u:
      v7 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v7 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v7 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v6, v7);
LABEL_4:
      v8 = MEMORY[0x277D6D588];
LABEL_5:
      v9 = *v8;
      v10 = sub_219BE6244();
      v11 = *(*(v10 - 8) + 104);
      v12 = a1;
      v13 = v9;
      return v11(v12, v13, v10);
  }
}

uint64_t sub_218F39F04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v2, v6, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v7 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
      sub_218F3B148(v6, type metadata accessor for FollowingModel);
      goto LABEL_5;
    case 0xBu:

      sub_218748BF4();
      v13 = *(v12 + 48);
      sub_218748D40();
      (*(*(v14 - 8) + 8))(&v6[v13], v14);
LABEL_5:
      v8 = MEMORY[0x277D6D5D8];
      goto LABEL_6;
    case 0x10u:
      v7 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v7 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v7 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v6, v7);
      v8 = MEMORY[0x277D6D5E0];
LABEL_6:
      v9 = *v8;
      v10 = sub_219BE63D4();
      return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }
}

uint64_t sub_218F3A0EC()
{
  v1 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_218F38050();
  result = 0;
  if (v4)
  {
    sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 2u:
        v6 = type metadata accessor for FollowingAudioModel;
        goto LABEL_4;
      case 6u:
      case 7u:
        v7 = MEMORY[0x277D84560];
        sub_218F3C524(0, &qword_27CC13A28, MEMORY[0x277D6DB00], MEMORY[0x277D84560]);
        v8 = sub_219BE7674();
        v9 = *(v8 - 8);
        v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v11 = swift_allocObject();
        v28 = xmmword_219C09BA0;
        *(v11 + 16) = xmmword_219C09BA0;
        v12 = (v11 + v10);
        sub_218F3C5F8();
        v14 = *(v13 + 48);
        v15 = *(v13 + 64);
        v16 = sub_218F3A4BC();
        v18 = v17;

        *v12 = v16;
        v12[1] = v18;
        v19 = *MEMORY[0x277D6DA70];
        v20 = sub_219BE7634();
        (*(*(v20 - 8) + 104))(v12 + v14, v19, v20);
        sub_218F3C524(0, &qword_27CC13A40, MEMORY[0x277D6DAF8], v7);
        v21 = sub_219BE7664();
        v22 = *(v21 - 8);
        v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = v28;
        (*(v22 + 104))(v24 + v23, *MEMORY[0x277D6DAD8], v21);
        *(v12 + v15) = v24;
        (*(v9 + 104))(v12, *MEMORY[0x277D6DA90], v8);
        return v11;
      case 0xBu:

        sub_218748BF4();
        v26 = *(v25 + 48);
        sub_218748D40();
        (*(*(v27 - 8) + 8))(&v3[v26], v27);
        goto LABEL_5;
      case 0x10u:
        v6 = type metadata accessor for FollowingMySportsModel;
        goto LABEL_4;
      case 0x11u:
        v6 = type metadata accessor for FollowingPuzzleHubModel;
        goto LABEL_4;
      default:
        v6 = type metadata accessor for FollowingModel;
LABEL_4:
        sub_218F3B148(v3, v6);
LABEL_5:
        result = 0;
        break;
    }
  }

  return result;
}

uint64_t sub_218F3A4BC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218F3A690()
{
  v1 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
      sub_218F3B148(v3, type metadata accessor for FollowingModel);
      return 0;
    case 0xBu:

      sub_218748BF4();
      v7 = *(v6 + 48);
      sub_218748D40();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      return 0;
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return 1;
  }
}

uint64_t sub_218F3A824()
{
  v1 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      sub_218F3B148(v3, type metadata accessor for FollowingModel);
      return 1;
    case 0xBu:

      sub_218748BF4();
      v7 = *(v6 + 48);
      sub_218748D40();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      return 0;
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return 0;
  }
}

unint64_t sub_218F3A9B8()
{
  v1 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      if (*(*v3 + 16) <= 1u && *(*v3 + 16))
      {
        sub_218F3C524(0, &qword_27CC13A48, sub_218F3C6A4, MEMORY[0x277D84560]);
        sub_218F3C6A4();
        v7 = v6 - 8;
        v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_219C09BA0;
        v10 = v9 + v8;
        v11 = (v10 + *(v7 + 56));
        v12 = *MEMORY[0x277D6D238];
        v13 = sub_219BE5854();
        (*(*(v13 - 8) + 104))(v10, v12, v13);
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v15 = [objc_opt_self() bundleForClass_];
        v16 = sub_219BDB5E4();
        v18 = v17;

        *v11 = v16;
        v11[1] = v18;
        v19 = sub_2194B0F38(v9);
        swift_setDeallocating();
        sub_218F3B148(v10, sub_218F3C6A4);
        swift_deallocClassInstance();

        return v19;
      }

      else
      {

        return 0;
      }

    case 0xBu:

      sub_218748BF4();
      v21 = *(v20 + 48);
      sub_218748D40();
      (*(*(v22 - 8) + 8))(&v3[v21], v22);
      return 0;
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return 0;
  }
}

uint64_t sub_218F3AD44()
{
  v1 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 0xBu:

      sub_218748BF4();
      v7 = *(v6 + 48);
      sub_218748D40();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      return MEMORY[0x277D84F90];
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return MEMORY[0x277D84F90];
  }
}

uint64_t sub_218F3AEE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v2, v6, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v7 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      *(a1 + 24) = sub_219BF09E4();
      *(a1 + 32) = sub_2187491C8(&qword_280E90CA8, MEMORY[0x277D32FA8]);
      __swift_allocate_boxed_opaque_existential_1(a1);
      swift_unknownObjectRetain();
      sub_219BF09D4();

    case 0xBu:

      sub_218748BF4();
      v10 = *(v9 + 48);
      sub_218748D40();
      result = (*(*(v11 - 8) + 8))(&v6[v10], v11);
      goto LABEL_4;
    case 0x10u:
      v7 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v7 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v7 = type metadata accessor for FollowingModel;
LABEL_3:
      result = sub_218F3B148(v6, v7);
LABEL_4:
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
  }
}

uint64_t sub_218F3B0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F3B148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218F3B1A8(uint64_t a1, uint64_t a2)
{
  v84 = type metadata accessor for FollowingPuzzleHubModel();
  v4 = MEMORY[0x28223BE20](v84);
  v83 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v82 - v6;
  v8 = type metadata accessor for FollowingMySportsModel();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v82 - v12;
  sub_218748D40();
  v85 = *(v14 - 8);
  v86 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v82 - v18;
  sub_218F3C48C();
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v23[*(v21 + 56)];
  sub_218F3C590(a1, v23, type metadata accessor for FollowingModel);
  v25 = v24;
  sub_218F3C590(a2, v24, type metadata accessor for FollowingModel);
  type metadata accessor for FollowingModel();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v28 = *(v23 + 3);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    case 2u:
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v77 = type metadata accessor for FollowingAudioModel;
        goto LABEL_60;
      }

      sub_218F3B148(v24, type metadata accessor for FollowingAudioModel);
      v41 = v23;
      v42 = type metadata accessor for FollowingAudioModel;
LABEL_54:
      sub_218F3B148(v41, v42);
      v27 = 1;
      return v27 & 1;
    case 3u:
      v48 = *v23;
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_26;
      }

      v27 = sub_218DD0AA8(*(v48 + 16), *(*v24 + 16));
      goto LABEL_71;
    case 4u:
      v28 = *(v23 + 3);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    case 5u:
      v54 = *(v23 + 2);
      v26 = v25;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_65;
      }

      goto LABEL_56;
    case 6u:
      v49 = *v23;
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }

      goto LABEL_26;
    case 7u:
      v49 = *v23;
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_26;
      }

LABEL_38:
      v55 = *v24;
      v56 = *(v49 + 16);
      v57 = *(v49 + 24);
      v88 = 0;
      v89 = 0xE000000000000000;
      v87 = v56;
      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      v58 = [*(v57 + 16) identifier];
      v59 = sub_219BF5414();
      v61 = v60;

      MEMORY[0x21CECC330](v59, v61);

      v63 = v88;
      v62 = v89;
      v64 = *(v55 + 16);
      v65 = *(v55 + 24);
      v88 = 0;
      v89 = 0xE000000000000000;
      v87 = v64;
      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      v66 = [*(v65 + 16) identifier];
      v67 = sub_219BF5414();
      v69 = v68;

      MEMORY[0x21CECC330](v67, v69);

      if (v63 == v88 && v62 == v89)
      {

LABEL_62:
        v27 = _s7NewsUI28TagModelC2eeoiySbAC_ACtFZ_0(*(v49 + 24), *(v55 + 24));

        return v27 & 1;
      }

      v78 = sub_219BF78F4();

      if (v78)
      {
        goto LABEL_62;
      }

LABEL_67:
      v27 = 0;
      return v27 & 1;
    case 8u:
      sub_218F3B148(v23, type metadata accessor for FollowingModel);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_53;
      }

      goto LABEL_66;
    case 9u:
      sub_218F3B148(v23, type metadata accessor for FollowingModel);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    case 0xAu:
      sub_218F3B148(v23, type metadata accessor for FollowingModel);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    case 0xBu:

      sub_218748BF4();
      v33 = v32;
      v34 = *(v32 + 48);
      v26 = v25;
      if (swift_getEnumCaseMultiPayload() == 11)
      {

        v35 = *(v33 + 48);
        v36 = v85;
        v37 = *(v85 + 32);
        v38 = &v23[v34];
        v39 = v86;
        v37(v19, v38, v86);
        v37(v17, (v25 + v35), v39);
        type metadata accessor for FollowingTagModel();
        sub_2187491C8(&unk_280ED6630, type metadata accessor for FollowingTagModel);
        sub_2187491C8(&qword_280ED6640, type metadata accessor for FollowingTagModel);
        v27 = sub_219BE23C4();
        v40 = *(v36 + 8);
        v40(v17, v39);
        v40(v19, v39);
        return v27 & 1;
      }

      (*(v85 + 8))(&v23[v34], v86);
      goto LABEL_66;
    case 0xCu:
      sub_218F3B148(v23, type metadata accessor for FollowingModel);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    case 0xDu:
      sub_218F3B148(v23, type metadata accessor for FollowingModel);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    case 0xEu:
      v28 = *(v23 + 3);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
LABEL_7:
        v29 = *v23;
        v30 = *v26;
        v31 = v26[3];

        v27 = v29 == v30;
        return v27 & 1;
      }

LABEL_11:

      goto LABEL_66;
    case 0xFu:
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
LABEL_26:

        goto LABEL_66;
      }

      v43 = sub_219A910C0();
      v45 = v44;
      if (v43 == sub_219A910C0() && v45 == v46)
      {
        v27 = 1;
      }

      else
      {
        v27 = sub_219BF78F4();
      }

LABEL_71:

      return v27 & 1;
    case 0x10u:
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        sub_218F3B0E0(v23, v13, type metadata accessor for FollowingMySportsModel);
        sub_218F3B0E0(v24, v11, type metadata accessor for FollowingMySportsModel);
        v27 = _s7NewsUI222FollowingMySportsModelV2eeoiySbAC_ACtFZ_0(v13, v11);
        sub_218F3B148(v11, type metadata accessor for FollowingMySportsModel);
        sub_218F3B148(v13, type metadata accessor for FollowingMySportsModel);
        return v27 & 1;
      }

      v77 = type metadata accessor for FollowingMySportsModel;
LABEL_60:
      sub_218F3B148(v23, v77);
      goto LABEL_66;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        sub_218F3B0E0(v23, v7, type metadata accessor for FollowingPuzzleHubModel);
        v50 = v83;
        sub_218F3B0E0(v24, v83, type metadata accessor for FollowingPuzzleHubModel);
        v51 = v84;
        v52 = *&v7[*(v84 + 40)];
        sub_218F3B148(v7, type metadata accessor for FollowingPuzzleHubModel);
        v53 = *(v50 + *(v51 + 40));
        sub_218F3B148(v50, type metadata accessor for FollowingPuzzleHubModel);
        v27 = v52 == v53;
        return v27 & 1;
      }

      sub_218F3B148(v23, type metadata accessor for FollowingPuzzleHubModel);
      v26 = v24;
      goto LABEL_66;
    case 0x12u:
      v54 = *(v23 + 4);
      v70 = v23[61];
      v71 = *(v23 + 59);
      v26 = v25;
      if (swift_getEnumCaseMultiPayload() != 18)
      {

LABEL_65:

LABEL_66:
        sub_218F3B148(v26, type metadata accessor for FollowingModel);
        goto LABEL_67;
      }

      v72 = v71 | (v70 << 16);
      v73 = *(v25 + 32);
      v74 = *(v25 + 59) | (*(v25 + 61) << 16);

      v75 = (v72 >> 21) & 3;
      if (v75 > 1)
      {
        if (v75 == 2)
        {
          if ((v74 & 0x600000) != 0x400000)
          {
            goto LABEL_67;
          }

          v27 = v74 ^ v72 ^ 1;
        }

        else
        {
          if (v74 != 6291456)
          {
            goto LABEL_67;
          }

          v27 = 1;
        }
      }

      else if (v75)
      {
        if ((v74 & 0x600000) != 0x200000)
        {
          goto LABEL_67;
        }

        v27 = v74 == v72;
      }

      else
      {
        if ((v74 & 0x600000) != 0 || v74 != v72)
        {
          goto LABEL_67;
        }

        if (BYTE1(v72) == 2)
        {
          if (BYTE1(v74) != 2)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v27 = 0;
          if (BYTE1(v74) == 2 || (((v74 >> 8) ^ (v72 >> 8)) & 1) != 0)
          {
            return v27 & 1;
          }
        }

        v80 = BYTE2(v74) ^ BYTE2(v72) ^ 1;
        if (v74 < 0)
        {
          v81 = 0;
        }

        else
        {
          v81 = BYTE2(v74) ^ BYTE2(v72) ^ 1;
        }

        if (v74 >= 0)
        {
          v80 = 0;
        }

        if (v72 < 0)
        {
          v27 = v80;
        }

        else
        {
          v27 = v81;
        }
      }

      return v27 & 1;
    case 0x13u:
      v54 = *(v23 + 2);
      v26 = v25;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_65;
      }

LABEL_56:
      v76 = v26[2];

      v27 = 1;
      return v27 & 1;
    default:
      sub_218F3B148(v23, type metadata accessor for FollowingModel);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_66;
      }

LABEL_53:
      v42 = type metadata accessor for FollowingModel;
      v41 = v26;
      goto LABEL_54;
  }
}

uint64_t sub_218F3BE9C(uint64_t a1)
{
  v2 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(a1, v4, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 1;
      break;
    case 2u:
      sub_218F3B148(v4, type metadata accessor for FollowingAudioModel);
      result = 2;
      break;
    case 3u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 8;
      break;
    case 4u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 9;
      break;
    case 5u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 10;
      break;
    case 6u:
    case 7u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 17;
      break;
    case 8u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 16;
      break;
    case 9u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 18;
      break;
    case 0xAu:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 12;
      break;
    case 0xBu:

      sub_218748BF4();
      v7 = *(v6 + 48);
      sub_218748D40();
      (*(*(v8 - 8) + 8))(&v4[v7], v8);
      result = 13;
      break;
    case 0xCu:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 14;
      break;
    case 0xDu:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 15;
      break;
    case 0xEu:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 11;
      break;
    case 0xFu:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 7;
      break;
    case 0x10u:
      sub_218F3B148(v4, type metadata accessor for FollowingMySportsModel);
      result = 3;
      break;
    case 0x11u:
      sub_218F3B148(v4, type metadata accessor for FollowingPuzzleHubModel);
      result = 4;
      break;
    case 0x12u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 5;
      break;
    case 0x13u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 6;
      break;
    default:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 0;
      break;
  }

  return result;
}

BOOL sub_218F3C23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingModel();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v22 - v8);
  sub_218F3C48C();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 56);
  sub_218F3C590(a1, v13, type metadata accessor for FollowingModel);
  sub_218F3C590(a2, &v13[v14], type metadata accessor for FollowingModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    sub_218F3C590(v13, v7, type metadata accessor for FollowingModel);
    v16 = *v7;
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 != 6 && v18 != 7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 6)
    {
LABEL_10:
      v20 = sub_218F3BE9C(a1);
      v19 = v20 < sub_218F3BE9C(a2);
      sub_218F3B148(&v13[v14], type metadata accessor for FollowingModel);
      goto LABEL_11;
    }

    sub_218F3C590(v13, v9, type metadata accessor for FollowingModel);
    v16 = *v9;
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 != 7 && v17 != 6)
    {
LABEL_9:

      goto LABEL_10;
    }
  }

  v19 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(*(v16 + 24), *(*&v13[v14] + 24));

LABEL_11:
  sub_218F3B148(v13, type metadata accessor for FollowingModel);
  return v19;
}

void sub_218F3C48C()
{
  if (!qword_280EDC568[0])
  {
    type metadata accessor for FollowingModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280EDC568);
    }
  }
}

void sub_218F3C524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F3C590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218F3C5F8()
{
  if (!qword_27CC13A30)
  {
    sub_219BE7634();
    sub_218F3C524(255, &qword_27CC13A38, MEMORY[0x277D6DAF8], MEMORY[0x277D83940]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC13A30);
    }
  }
}

void sub_218F3C6A4()
{
  if (!qword_27CC1AAD0)
  {
    sub_219BE5854();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1AAD0);
    }
  }
}

uint64_t sub_218F3C70C()
{
  v0 = sub_219BE1544();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE1524();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE9C04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF074();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_219BE9934();
  v17 = (*(v7 + 88))(v9, v6);
  if (v17 == *MEMORY[0x277D6E830])
  {
    v18 = MEMORY[0x277D2D868];
LABEL_9:
    v20 = *v18;
    v21 = *(v11 + 104);
    goto LABEL_10;
  }

  if (v17 == *MEMORY[0x277D6E840] || v17 == *MEMORY[0x277D6E848])
  {
    v18 = MEMORY[0x277D2D850];
    goto LABEL_9;
  }

  v21 = *(v11 + 104);
  if (v17 != *MEMORY[0x277D6E838])
  {
    v21(v16, *MEMORY[0x277D2D850], v10);
    (*(v7 + 8))(v9, v6);
    goto LABEL_11;
  }

  v20 = *MEMORY[0x277D2D810];
LABEL_10:
  v21(v16, v20, v10);
LABEL_11:
  sub_219BE9924();
  (*(v25 + 104))(v2, *MEMORY[0x277D2F3D8], v26);
  (*(v11 + 16))(v14, v16, v10);
  sub_219BE1514();
  sub_218F420A4(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v22 = v28;
  sub_219BDD1F4();
  (*(v27 + 8))(v5, v22);
  sub_219BDD134();
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_218F3CB60(uint64_t a1)
{
  sub_218F40F48();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0B74();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F413E4(0, &unk_27CC13A60, MEMORY[0x277D6DA48]);
  v10 = v9;
  v11 = *(v9 - 8);
  v67 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v68 = &v56 - v12;
  sub_218985EAC();
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F834();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v10;
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v21 + 8))(v23, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v27 = a1;
    if (EnumCaseMultiPayload == 2)
    {
      (*(v61 + 32))(v15, v18, v62);
      sub_219BF07D4();
      v28 = *(v71 + 16);
      swift_unknownObjectRetain();

      v29 = v70;
      v30 = v70[14];
      v66 = v70[15];
      __swift_project_boxed_opaque_existential_1(v70 + 11, v30);
      v31 = [v28 identifier];
      sub_219BF5414();

      v32 = sub_219BF4774();

      v66 = v29[2];
      v33 = v68;
      v34 = v69;
      (*(v11 + 16))(v68, v27, v69);
      v35 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v36 = v35 + v67;
      v37 = swift_allocObject();
      *(v37 + 16) = v29;
      *(v37 + 24) = v28;
      (*(v11 + 32))(v37 + v35, v33, v34);
      *(v37 + v36) = v32 & 1;
      swift_unknownObjectRetain();

      sub_219BDD154();
      swift_unknownObjectRelease();

      return (*(v61 + 8))(v15, v62);
    }

    else
    {
      (*(v65 + 32))(v64, v18, v66);
      sub_219BF07D4();
      v46 = sub_219BF0B44();
      (*(v57 + 8))(v6, v58);
      v47 = v70;
      __swift_project_boxed_opaque_existential_1(v70 + 11, v70[14]);
      v48 = [v46 identifier];
      sub_219BF5414();

      v49 = sub_219BF4774();

      v51 = v68;
      v50 = v69;
      (*(v11 + 16))(v68, v27, v69);
      v52 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v53 = v52 + v67;
      v54 = swift_allocObject();
      *(v54 + 16) = v47;
      *(v54 + 24) = v46;
      (*(v11 + 32))(v54 + v52, v51, v50);
      *(v54 + v53) = v49 & 1;

      v55 = v46;
      sub_219BDD154();

      return (*(v65 + 8))(v64, v66);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v39 = v59;
    v38 = v60;
    (*(v59 + 32))();
    sub_219BF07D4();
    v40 = *(v71 + 16);
    swift_unknownObjectRetain();

    v42 = v69;
    v41 = v70;
    v43 = v68;
    (*(v11 + 16))(v68, a1, v69);
    v44 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v41;
    *(v45 + 24) = v40;
    (*(v11 + 32))(v45 + v44, v43, v42);

    swift_unknownObjectRetain();
    sub_219BDD154();
    swift_unknownObjectRelease();

    return (*(v39 + 8))(v63, v38);
  }

  else
  {

    sub_218F41028();
    return sub_218F4120C(&v18[*(v25 + 48)], type metadata accessor for SearchMoreFeedGapLocation);
  }
}

uint64_t sub_218F3D394()
{
  sub_218F40F48();
  v90 = *(v0 - 8);
  v91 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v86 = v2;
  v87 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v97 = &v80 - v3;
  sub_2186EB308();
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v85 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v6;
  MEMORY[0x28223BE20](v5);
  v96 = &v80 - v7;
  v8 = sub_219BE0874();
  v98 = *(v8 - 8);
  v99 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v84 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v83 = &v80 - v12;
  MEMORY[0x28223BE20](v11);
  v82 = &v80 - v13;
  v14 = sub_219BDF034();
  v102 = *(v14 - 8);
  v103 = v14;
  v15 = *(v102 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v95 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v94 = &v80 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v101 = &v80 - v20;
  MEMORY[0x28223BE20](v19);
  v93 = &v80 - v21;
  v22 = sub_219BDD0A4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218985EAC();
  v92 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 8);
  v29 = MEMORY[0x28223BE20](v26);
  v80 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v80 - v30;
  v32 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F834();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {

      sub_218F41028();
      return sub_218F4120C(&v34[*(v36 + 48)], type metadata accessor for SearchMoreFeedGapLocation);
    }

    v51 = v90;
    v52 = *(v90 + 32);
    v53 = v34;
    v54 = v91;
    v96 = (v90 + 32);
    v94 = v52;
    (v52)(v97, v53, v91);
    v55 = v100;
    v56 = *(v100 + 16);
    *v25 = 6775156;
    v25[1] = 0xE300000000000000;
    (*(v23 + 104))(v25, *MEMORY[0x277CEAE48], v22);
    v93 = v56;
    sub_219BDD204();
    (*(v23 + 8))(v25, v22);
    v57 = *(v55 + 64);
    if (v57 < 0xA)
    {
      (*(v98 + 104))(v84, **(&unk_2782427C8 + v57), v99);

      v58 = v95;
      sub_219BDF024();
      v59 = v87;
      (*(v51 + 16))(v87, v97, v54);
      v60 = v54;
      v62 = v101;
      v61 = v102;
      v63 = v103;
      (*(v102 + 16))(v101, v58, v103);
      v64 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v65 = (v86 + *(v61 + 80) + v64) & ~*(v61 + 80);
      v66 = swift_allocObject();
      (v94)(v66 + v64, v59, v60);
      (*(v61 + 32))(v66 + v65, v62, v63);
      sub_219BDD154();

      (*(v61 + 8))(v95, v63);
      return (*(v51 + 8))(v97, v60);
    }

    v104 = *(v55 + 64);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v96 = v27;
    v97 = v31;
    v94 = *(v27 + 4);
    v95 = v27 + 32;
    (v94)(v31, v34, v92);
    v38 = v100;
    v39 = *(v100 + 16);
    *v25 = 0x656E696C64616568;
    v25[1] = 0xE800000000000000;
    (*(v23 + 104))(v25, *MEMORY[0x277CEAE48], v22);
    v91 = v39;
    sub_219BDD204();
    (*(v23 + 8))(v25, v22);
    v40 = *(v38 + 64);
    if (v40 < 0xA)
    {
      (*(v98 + 104))(v82, **(&unk_2782427C8 + v40), v99);

      v41 = v93;
      sub_219BDF024();
      v42 = v96;
      v43 = v80;
      v44 = v92;
      (*(v96 + 2))(v80, v97, v92);
      v46 = v101;
      v45 = v102;
      v47 = v103;
      (*(v102 + 16))(v101, v41, v103);
      v48 = (v42[80] + 16) & ~v42[80];
      v49 = (v28 + *(v45 + 80) + v48) & ~*(v45 + 80);
      v50 = swift_allocObject();
      (v94)(v50 + v48, v43, v44);
      (*(v45 + 32))(v50 + v49, v46, v47);
      sub_219BDD154();

      (*(v45 + 8))(v93, v47);
      return (*(v42 + 1))(v97, v44);
    }

    v104 = *(v38 + 64);
LABEL_14:

LABEL_16:

    result = sub_219BF7974();
    __break(1u);
    return result;
  }

  v93 = v15;
  v67 = v88;
  v68 = *(v88 + 32);
  v69 = v89;
  v97 = (v88 + 32);
  v95 = v68;
  (v68)(v96, v34);
  v70 = v100;
  *v25 = 0x657069636572;
  v25[1] = 0xE600000000000000;
  (*(v23 + 104))(v25, *MEMORY[0x277CEAE48], v22);
  sub_219BDD204();
  (*(v23 + 8))(v25, v22);
  v71 = *(v70 + 64);
  if (v71 >= 0xA)
  {
    v104 = *(v70 + 64);

    goto LABEL_16;
  }

  (*(v98 + 104))(v83, **(&unk_2782427C8 + v71), v99);

  v72 = v94;
  sub_219BDF024();
  v73 = v85;
  (*(v67 + 16))(v85, v96, v69);
  v75 = v101;
  v74 = v102;
  v76 = v103;
  (*(v102 + 16))(v101, v72, v103);
  v77 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v78 = (v81 + *(v74 + 80) + v77) & ~*(v74 + 80);
  v79 = swift_allocObject();
  (v95)(v79 + v77, v73, v69);
  (*(v74 + 32))(v79 + v78, v75, v76);
  sub_219BDD154();

  (*(v74 + 8))(v94, v76);
  return (*(v67 + 8))(v96, v69);
}

uint64_t sub_218F3DF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v18 = a3;
  v3 = sub_219BE0304();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE0514();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  sub_219BF07D4();
  v11 = [*(*&v19[0] + 16) identifier];
  sub_219BF5414();

  (*(v4 + 104))(v6, *MEMORY[0x277D2E468], v3);
  sub_219BE0504();
  sub_218F420A4(&qword_27CC13A50, MEMORY[0x277D2E5B0]);
  sub_219BDCCC4();
  (*(v8 + 8))(v10, v7);
  sub_2187F5D38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v12 = sub_219BDCD44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x277CEAD18], v12);
  sub_219BDF034();
  sub_218F420A4(&unk_280EE88E0, MEMORY[0x277D2D7D8]);
  sub_219BDCCC4();

  sub_219BE0AA4();
  sub_218F420A4(&qword_27CC13A58, MEMORY[0x277D2EA78]);
  memset(v19, 0, sizeof(v19));
  sub_219BDCCE4();
  return sub_218F4120C(v19, sub_21880702C);
}

uint64_t sub_218F3E38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v20 = sub_219BE0304();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF0B74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE0514();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  sub_219BF07D4();
  sub_219BF0AF4();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D2E460], v20);
  sub_219BE0504();
  sub_218F420A4(&qword_27CC13A50, MEMORY[0x277D2E5B0]);
  sub_219BDCCC4();
  (*(v11 + 8))(v13, v10);
  sub_2187F5D38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v14 = sub_219BDCD44();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09BA0;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x277CEAD18], v14);
  sub_219BDF034();
  sub_218F420A4(&unk_280EE88E0, MEMORY[0x277D2D7D8]);
  sub_219BDCCC4();

  sub_219BE0AA4();
  sub_218F420A4(&qword_27CC13A58, MEMORY[0x277D2EA78]);
  memset(v23, 0, sizeof(v23));
  sub_219BDCCE4();
  return sub_218F4120C(v23, sub_21880702C);
}

uint64_t sub_218F3E800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = a3;
  v3 = sub_219BE0304();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE0514();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F40F48();
  sub_219BF07D4();
  v11 = *(*&v19[0] + 16);
  swift_unknownObjectRetain();

  v12 = [v11 identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  (*(v4 + 104))(v6, *MEMORY[0x277D2E458], v3);
  sub_219BE0504();
  sub_218F420A4(&qword_27CC13A50, MEMORY[0x277D2E5B0]);
  sub_219BDCCC4();
  (*(v8 + 8))(v10, v7);
  sub_2187F5D38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v13 = sub_219BDCD44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  (*(v14 + 104))(v16 + v15, *MEMORY[0x277CEAD18], v13);
  sub_219BDF034();
  sub_218F420A4(&unk_280EE88E0, MEMORY[0x277D2D7D8]);
  sub_219BDCCC4();

  sub_219BE0AA4();
  sub_218F420A4(&qword_27CC13A58, MEMORY[0x277D2EA78]);
  memset(v19, 0, sizeof(v19));
  sub_219BDCCE4();
  return sub_218F4120C(v19, sub_21880702C);
}

uint64_t sub_218F3EC30(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v118 = a4;
  v135 = a3;
  v145 = a1;
  v124 = sub_219BDBD34();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_219BDF8A4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2187F5D38(0, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v102 = &v93 - v9;
  v104 = sub_219BDF754();
  v117 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F5D38(0, &qword_280EE8330, MEMORY[0x277D2E738], v7);
  MEMORY[0x28223BE20](v11 - 8);
  v114 = &v93 - v12;
  v116 = sub_219BE0724();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BE09E4();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDF104();
  v110 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F834();
  v108 = v19;
  v107 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v132 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F413E4(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  v131 = v21;
  v105 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v134 = &v93 - v22;
  v23 = sub_219BDFCE4();
  v109 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v106 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BE1774();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BEFBD4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_219BDF1A4();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BDF0E4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  result = [a2 sourceChannel];
  v133 = result;
  if (!result)
  {
    return result;
  }

  v97 = v23;
  v98 = v18;
  v99 = v16;
  v93 = v14;
  v101 = ObjectType;
  v143 = a2;
  sub_219BF67F4();
  sub_2187F5D38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v35 = v34;
  v36 = sub_219BDCD44();
  v37 = *(v36 - 8);
  v141 = *(v37 + 72);
  v38 = *(v37 + 80);
  v39 = swift_allocObject();
  v144 = xmmword_219C09BA0;
  *(v39 + 16) = xmmword_219C09BA0;
  v142 = *MEMORY[0x277CEAD18];
  v41 = *(v37 + 104);
  v40 = v37 + 104;
  v140 = v41;
  (v41)(v39 + ((v38 + 32) & ~v38));
  v139 = "ion expandLocation ";
  sub_218F420A4(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  sub_219BDCCC4();

  v42 = v31;
  v43 = (v38 + 32) & ~v38;
  (*(v29 + 8))(v42, v28);
  v44 = v126;
  v45 = v125;
  v46 = v127;
  (*(v126 + 104))(v125, *MEMORY[0x277D329E0], v127);
  v47 = v128;
  sub_219BE02C4();
  (*(v44 + 8))(v45, v46);
  v136 = v38;
  v137 = v35;
  v48 = v142;
  v49 = swift_allocObject();
  *(v49 + 16) = v144;
  v127 = v43;
  v138 = v36;
  v140(v49 + v43, v48, v36);
  sub_218F420A4(&unk_280EE8850, MEMORY[0x277D2D950]);
  v50 = v130;
  sub_219BDCCC4();

  (*(v129 + 8))(v47, v50);
  v51 = [v143 scoreProfile];
  v52 = v131;
  if (v51)
  {
    v53 = v51;
    if ([v51 hasShadowScores])
    {
      [v53 shadowTabiScore];
      [v53 shadowAgedPersonalizationScore];
      v54 = v94;
      sub_219BE1764();
      v55 = v127;
      v56 = swift_allocObject();
      *(v56 + 16) = v144;
      v140(v56 + v55, v48, v138);
      sub_218F420A4(&unk_280EE7F40, MEMORY[0x277D2F8F0]);
      v57 = v96;
      sub_219BDCCC4();

      (*(v95 + 8))(v54, v57);
    }

    else
    {
    }
  }

  sub_218F413E4(0, &unk_27CC13A60, MEMORY[0x277D6DA48]);
  v59 = v58;
  sub_219BE7594();
  v60 = v132;
  sub_219BE7564();
  sub_218F420A4(&unk_27CC13A78, type metadata accessor for SearchMoreModel);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v130 = v59;
  v61 = v106;
  sub_219BDFCD4();
  (*(v107 + 8))(v60, v108);
  (*(v105 + 8))(v134, v52);
  v62 = v127;
  v100 = v40;
  v63 = swift_allocObject();
  *(v63 + 16) = v144;
  v64 = v138;
  (v140)(v63 + v62, v142);
  sub_218F420A4(&unk_280EE8590, MEMORY[0x277D2E058]);
  v65 = v97;
  sub_219BDCCC4();

  (*(v109 + 8))(v61, v65);
  v66 = v98;
  sub_219BE01F4();
  v67 = swift_allocObject();
  *(v67 + 16) = v144;
  v68 = v140;
  v140(v67 + v62, v142, v64);
  sub_218F420A4(&unk_280EE8890, MEMORY[0x277D2D8B8]);
  v69 = v99;
  sub_219BDCCC4();

  (*(v110 + 8))(v66, v69);
  v70 = v111;
  sub_219BE01E4();
  v71 = v68;
  v72 = v142;
  v73 = swift_allocObject();
  *(v73 + 16) = v144;
  v71(v73 + v62, v72, v138);
  sub_218F420A4(&qword_280EE8270, MEMORY[0x277D2E9C0]);
  v74 = v113;
  sub_219BDCCC4();

  (*(v112 + 8))(v70, v74);
  v75 = v114;
  sub_219BF6824();
  v76 = v115;
  v77 = v116;
  if ((*(v115 + 48))(v75, 1, v116) == 1)
  {
    v78 = v62;
    sub_218F414D8(v75, &qword_280EE8330, MEMORY[0x277D2E738]);
  }

  else
  {
    v79 = v93;
    (*(v76 + 32))(v93, v75, v77);
    v80 = swift_allocObject();
    *(v80 + 16) = v144;
    v78 = v62;
    v140(v80 + v62, v72, v138);
    sub_218F420A4(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v76 + 8))(v79, v77);
  }

  v81 = v104;
  v82 = v102;
  sub_219BF6804();
  v83 = v117;
  if ((*(v117 + 48))(v82, 1, v81) == 1)
  {
    sub_218F414D8(v82, &unk_280EE8690, MEMORY[0x277D2DD28]);
    v84 = v140;
    v85 = v142;
  }

  else
  {
    (*(v83 + 32))(v103, v82, v81);
    v86 = swift_allocObject();
    *(v86 + 16) = v144;
    v85 = v142;
    v84 = v140;
    v140(v86 + v78, v142, v138);
    sub_218F420A4(&unk_280EE86A0, MEMORY[0x277D2DD28]);
    sub_219BDCCC4();

    (*(v83 + 8))(v103, v81);
  }

  v87 = v119;
  sub_219BDF894();
  v88 = swift_allocObject();
  *(v88 + 16) = v144;
  v84(v88 + v78, v85, v138);
  sub_218F420A4(&qword_280EE8640, MEMORY[0x277D2DE40]);
  v89 = v121;
  sub_219BDCCC4();

  (*(v120 + 8))(v87, v89);
  sub_219BE0834();
  v90 = v122;
  sub_219BE75A4();
  sub_218F420A4(&qword_280EE82C0, MEMORY[0x277D2E858]);
  sub_219BDCC64();
  v91 = *(v123 + 8);
  v92 = v124;
  v91(v90, v124);
  sub_219BE7574();
  v146[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v146);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();
  swift_unknownObjectRelease();
  v91(v90, v92);
  return sub_218F4120C(v146, sub_21880702C);
}

uint64_t sub_218F4020C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v64 = a4;
  v80 = a3;
  v83 = a1;
  v5 = sub_219BDBD34();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDF8A4();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x28223BE20](v7);
  v65 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_219BDEFE4();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_219BDFCE4();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v84 = sub_219BEF9C4();
  v11 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BDFFE4();
  v63 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_219BE09E4();
  v62 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_219BDF104();
  v61 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a2 sourceChannel];
  v74 = v19;
  v21 = a2;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v22 = [a2 sourceChannel];
  v75 = v17;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v23 = v84;
  (*(v11 + 104))(v13, *MEMORY[0x277D32840], v84);
  v77 = v15;
  sub_219BE02B4();
  (*(v11 + 8))(v13, v23);
  sub_218F413E4(0, &unk_27CC13A60, MEMORY[0x277D6DA48]);
  v25 = v24;
  sub_218F420A4(&unk_27CC13A78, type metadata accessor for SearchMoreModel);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v27 = v55;
    sub_219BDFCD4();
    sub_2187F5D38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v71 = v28;
    v53 = sub_219BDCD44();
    v29 = *(v53 - 8);
    v54 = v25;
    v30 = v29;
    v72 = *(v29 + 80);
    v31 = (v72 + 32) & ~v72;
    v32 = swift_allocObject();
    v84 = xmmword_219C09BA0;
    *(v32 + 16) = xmmword_219C09BA0;
    v73 = *MEMORY[0x277CEAD18];
    v82 = *(v30 + 104);
    v82(v32 + v31);
    v52 = v30 + 104;
    v81 = "ion expandLocation ";
    sub_218F420A4(&unk_280EE8590, MEMORY[0x277D2E058]);
    v33 = v57;
    sub_219BDCCC4();

    (*(v56 + 8))(v27, v33);
    v34 = [v21 identifier];
    sub_219BF5414();

    [v21 isPaid];
    v35 = [v21 totalTime];
    sub_219BF5414();

    v36 = v58;
    sub_219BDEFB4();
    v37 = swift_allocObject();
    *(v37 + 16) = v84;
    v38 = v53;
    (v82)(v37 + v31, v73, v53);
    sub_218F420A4(&qword_280EE8900, MEMORY[0x277D2D798]);
    v39 = v60;
    sub_219BDCCC4();

    (*(v59 + 8))(v36, v39);
    v40 = swift_allocObject();
    *(v40 + 16) = v84;
    v41 = v73;
    v42 = v82;
    (v82)(v40 + v31, v73, v38);
    sub_218F420A4(&unk_280EE84E0, MEMORY[0x277D2E2C0]);
    sub_219BDCCC4();

    v43 = swift_allocObject();
    *(v43 + 16) = v84;
    v42(v43 + v31, v41, v38);
    sub_218F420A4(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    sub_219BDCCC4();

    v44 = swift_allocObject();
    *(v44 + 16) = v84;
    v45 = v82;
    (v82)(v44 + v31, v41, v38);
    sub_218F420A4(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    sub_219BDCCC4();

    v46 = v65;
    sub_219BDF894();
    v47 = swift_allocObject();
    *(v47 + 16) = v84;
    v45(v47 + v31, v41, v38);
    sub_218F420A4(&qword_280EE8640, MEMORY[0x277D2DE40]);
    v48 = v67;
    sub_219BDCCC4();

    (*(v66 + 8))(v46, v48);
    sub_219BE04C4();
    v49 = v68;
    sub_219BE75A4();
    sub_218F420A4(&unk_280EE83D0, MEMORY[0x277D2E570]);
    sub_219BDCC64();
    v50 = v70;
    v51 = *(v69 + 8);
    v51(v49, v70);
    sub_219BE7574();
    sub_219BDCC74();
    v51(v49, v50);
    (*(v63 + 8))(v77, v79);
    (*(v62 + 8))(v75, v78);
    return (*(v61 + 8))(v74, v76);
  }

  __break(1u);
  return result;
}

uint64_t sub_218F40EBC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

void sub_218F40F48()
{
  if (!qword_280E90E60)
  {
    type metadata accessor for TagModel();
    sub_218F420A4(&unk_280E92B30, type metadata accessor for TagModel);
    sub_218F420A4(qword_280E92B40, type metadata accessor for TagModel);
    v0 = sub_219BF0854();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90E60);
    }
  }
}

void sub_218F41028()
{
  if (!qword_27CC209F0)
  {
    type metadata accessor for SearchMoreFeedGapLocation(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC209F0);
    }
  }
}

uint64_t sub_218F410F4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_219BDF034() - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(a1, v3 + v6, v9);
}

uint64_t sub_218F4120C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218F4126C(uint64_t a1)
{
  sub_218F413E4(0, &unk_27CC13A60, MEMORY[0x277D6DA48]);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));

  return sub_218F41548(a1, v4, v5);
}

uint64_t sub_218F4132C(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, void))
{
  sub_218F413E4(0, &unk_27CC13A60, MEMORY[0x277D6DA48]);
  v6 = v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  return a2(a1, *(v2 + 24), v6, *(v6 + *(*(v5 - 8) + 64)));
}

void sub_218F413E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchMoreSectionDescriptor();
    v8[1] = type metadata accessor for SearchMoreModel(255);
    v8[2] = sub_218F420A4(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    v8[3] = sub_218F420A4(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218F414D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187F5D38(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218F41548(uint64_t a1, void *a2, uint64_t a3)
{
  v84 = a2;
  v91 = a1;
  v4 = sub_219BDBD34();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v81 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF1E4();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDFCE4();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8);
  v75 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE1444();
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x28223BE20](v10);
  v85 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F834();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F413E4(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  v18 = v17;
  v90 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v62 - v19;
  sub_218F42030();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F413E4(0, &qword_27CC13A90, MEMORY[0x277D6D710]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v92 = v62 - v27;
  sub_218F413E4(0, &unk_27CC13A60, MEMORY[0x277D6DA48]);
  v29 = v28;
  sub_219BE7594();
  v88 = v29;
  v89 = a3;
  sub_219BE7564();
  sub_219BE5F84();
  v30 = *(v14 + 8);
  v31 = v14 + 8;
  v32 = v18;
  v33 = v90;
  v73 = v31;
  v74 = v13;
  v72 = v30;
  v30(v16, v13);
  sub_219BEB244();

  v34 = *(v33 + 8);
  v34(v20, v32);
  if ((*(v26 + 48))(v23, 1, v25) == 1)
  {
    return sub_218F4120C(v23, sub_218F42030);
  }

  v67 = v34;
  v69 = v26;
  v36 = *(v26 + 32);
  v90 = v25;
  v36(v92, v23, v25);
  v37 = [v84 identifier];
  sub_219BF5414();

  v38 = v85;
  sub_219BE1424();
  sub_2187F5D38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v40 = v39;
  v41 = sub_219BDCD44();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = v43 + *(v42 + 72);
  v84 = *(v42 + 80);
  v66 = v40;
  v64 = v44;
  v45 = swift_allocObject();
  v70 = xmmword_219C09BA0;
  *(v45 + 16) = xmmword_219C09BA0;
  v46 = *MEMORY[0x277CEAD18];
  v48 = *(v42 + 104);
  v47 = v42 + 104;
  v65 = v43;
  v71 = v46;
  v68 = v41;
  v63 = v48;
  v48(v45 + v43);
  sub_218F420A4(&unk_280EE8030, MEMORY[0x277D2F260]);
  v49 = v87;
  sub_219BDCCC4();

  (*(v86 + 8))(v38, v49);
  sub_219BE7594();
  sub_219BE7564();
  sub_218F420A4(&unk_27CC13A78, type metadata accessor for SearchMoreModel);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v50 = v75;
  sub_219BDFCD4();
  v72(v16, v74);
  v67(v20, v32);
  v62[1] = v47;
  v51 = swift_allocObject();
  *(v51 + 16) = v70;
  v62[2] = "ion expandLocation ";
  v52 = v65;
  v53 = v68;
  v54 = v63;
  v63(v51 + v65, v71, v68);
  sub_218F420A4(&unk_280EE8590, MEMORY[0x277D2E058]);
  v55 = v77;
  sub_219BDCCC4();

  (*(v76 + 8))(v50, v55);
  sub_219BE6944();
  v56 = v78;
  sub_219BDF1C4();
  v57 = swift_allocObject();
  *(v57 + 16) = v70;
  v54(v57 + v52, v71, v53);
  sub_218F420A4(&unk_280EE8840, MEMORY[0x277D2D970]);
  v58 = v80;
  sub_219BDCCC4();

  (*(v79 + 8))(v56, v58);
  sub_219BDFEC4();
  v59 = v81;
  sub_219BE75A4();
  sub_218F420A4(&unk_280EE8520, MEMORY[0x277D2E1D0]);
  sub_219BDCC64();
  v60 = v83;
  v61 = *(v82 + 8);
  v61(v59, v83);
  sub_219BE7574();
  sub_219BDCC74();
  v61(v59, v60);
  return (*(v69 + 8))(v92, v90);
}

void sub_218F42030()
{
  if (!qword_27CC13A88)
  {
    sub_218F413E4(255, &qword_27CC13A90, MEMORY[0x277D6D710]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13A88);
    }
  }
}

uint64_t sub_218F420A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218F420EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F428F4(0, &qword_27CC13AC8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F4283C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218F42958(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218F42890(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218F42398(uint64_t a1)
{
  v2 = sub_218F4283C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F423D4(uint64_t a1)
{
  v2 = sub_218F4283C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218F42450(void *a1)
{
  sub_218F428F4(0, &qword_27CC13AD8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F4283C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218F42958(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218F426B0(uint64_t a1)
{
  result = sub_218F42958(&unk_27CC1C5E0, type metadata accessor for SportsEventTopicTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218F42708(void *a1)
{
  a1[1] = sub_218F42958(&qword_27CC13AB0, type metadata accessor for SportsEventTopicTagFeedGroup);
  a1[2] = sub_218F42958(&qword_27CC13AB8, type metadata accessor for SportsEventTopicTagFeedGroup);
  result = sub_218F42958(&qword_27CC13AC0, type metadata accessor for SportsEventTopicTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218F427B4(uint64_t a1)
{
  v2 = sub_218F42958(&qword_27CC13AB0, type metadata accessor for SportsEventTopicTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218F4283C()
{
  result = qword_27CC13AD0;
  if (!qword_27CC13AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13AD0);
  }

  return result;
}

uint64_t sub_218F42890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventTopicTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218F428F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F4283C();
    v7 = a3(a1, &type metadata for SportsEventTopicTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218F42958(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218F429B4()
{
  result = qword_27CC13AE0;
  if (!qword_27CC13AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13AE0);
  }

  return result;
}

unint64_t sub_218F42A0C()
{
  result = qword_27CC13AE8;
  if (!qword_27CC13AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13AE8);
  }

  return result;
}

unint64_t sub_218F42A64()
{
  result = qword_27CC13AF0;
  if (!qword_27CC13AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13AF0);
  }

  return result;
}

uint64_t sub_218F42AB8(uint64_t a1)
{
  v22 = type metadata accessor for TagFeedLayoutModel();
  MEMORY[0x28223BE20](v22);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934();
  v21 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v18[1] = v1;
    v23 = MEMORY[0x277D84F90];
    sub_218C34D90(0, v9, 0);
    v10 = v23;
    v20 = sub_219BEF974();
    v11 = *(v20 - 8);
    v12 = *(v11 + 16);
    v18[3] = v11 + 16;
    v19 = v12;
    v13 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18[2] = v6 + 32;
    v14 = *(v11 + 72);
    do
    {
      v19(v4, v13, v20);
      sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
      sub_219BE75D4();
      v23 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C34D90(v15 > 1, v16 + 1, 1);
        v10 = v23;
      }

      *(v10 + 16) = v16 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v8, v21);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_218F42D28(uint64_t a1)
{
  v41 = type metadata accessor for TagFeedLayoutModel();
  MEMORY[0x28223BE20](v41);
  v40 = (v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21898BF70();
  v39 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934();
  v38 = v7;
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v11 = v10;
  v12 = sub_218F54E5C(&unk_280EE5850, sub_218954350);
  v13 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v45 = MEMORY[0x277D84F90];
    sub_218C34D90(0, v13 & ~(v13 >> 63), 0);
    v43 = v45;
    result = sub_219BF5DF4();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v36 = v9;
      v31[1] = v1;
      v15 = 0;
      v34 = (v5 + 16);
      v33 = *MEMORY[0x277D32830];
      v31[3] = v42 + 32;
      v32 = (v5 + 8);
      v35 = v13;
      v31[2] = v12;
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v17 = sub_219BF5EC4();
        v18 = v37;
        v19 = v39;
        (*v34)(v37);
        v17(v44, 0);
        v20 = swift_allocObject();
        *(v20 + 16) = sub_219BE5F84();
        *(v20 + 24) = v21;
        v22 = v40;
        *v40 = v20;
        v23 = sub_219BEF974();
        (*(*(v23 - 8) + 104))(v22, v33, v23);
        sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
        v24 = v11;
        v25 = v36;
        sub_219BE75D4();
        (*v32)(v18, v19);
        v26 = v43;
        v45 = v43;
        v27 = a1;
        v29 = *(v43 + 16);
        v28 = *(v43 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_218C34D90(v28 > 1, v29 + 1, 1);
          v26 = v45;
        }

        *(v26 + 16) = v29 + 1;
        v30 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v43 = v26;
        (*(v42 + 32))(v26 + v30 + *(v42 + 72) * v29, v25, v38);
        result = sub_219BF5E94();
        ++v15;
        a1 = v27;
        v11 = v24;
        if (v16 == v35)
        {
          return v43;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218F43190()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_218F43294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_219BE8944();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  sub_21898BBC4(0);
  v5[18] = swift_task_alloc();
  sub_21898BBF8();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  sub_218954350();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v9 = MEMORY[0x277D83D88];
  sub_218F54EA4(0, &qword_280E8E970, sub_21898BBF8, MEMORY[0x277D83D88]);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_218954408();
  v5[28] = v10;
  v5[29] = *(v10 - 8);
  v5[30] = swift_task_alloc();
  sub_218F534E0(0, &qword_280E8D430, &qword_280EE36E0, MEMORY[0x277D6EC68], MEMORY[0x277D843E8]);
  v5[31] = swift_task_alloc();
  sub_21898BC64(0);
  v5[32] = v11;
  v5[33] = swift_task_alloc();
  sub_219BEF6B4();
  v5[34] = swift_task_alloc();
  v12 = sub_219BEF594();
  v5[35] = v12;
  v5[36] = *(v12 - 8);
  v5[37] = swift_task_alloc();
  sub_219BEF5B4();
  v5[38] = swift_task_alloc();
  sub_219BEF644();
  v5[39] = swift_task_alloc();
  sub_219BEF664();
  v5[40] = swift_task_alloc();
  v13 = sub_219BEF694();
  v5[41] = v13;
  v5[42] = *(v13 - 8);
  v5[43] = swift_task_alloc();
  sub_218F54EA4(0, &qword_280E91358, MEMORY[0x277D326A8], v9);
  v5[44] = swift_task_alloc();
  v14 = sub_219BE8164();
  v5[45] = v14;
  v5[46] = *(v14 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  sub_218F54EA4(0, &qword_280E91368, MEMORY[0x277D32698], v9);
  v5[49] = swift_task_alloc();
  sub_219BEF604();
  v5[50] = swift_task_alloc();
  v15 = sub_219BEF6C4();
  v5[51] = v15;
  v5[52] = *(v15 - 8);
  v5[53] = swift_task_alloc();
  sub_219BDCAF4();
  v5[54] = swift_task_alloc();
  v16 = sub_219BDCAE4();
  v5[55] = v16;
  v5[56] = *(v16 - 8);
  v5[57] = swift_task_alloc();
  v17 = sub_219BDCAB4();
  v5[58] = v17;
  v5[59] = *(v17 - 8);
  v5[60] = swift_task_alloc();
  sub_218B6AF30(0);
  v5[61] = swift_task_alloc();
  v18 = sub_219BF0634();
  v5[62] = v18;
  v5[63] = *(v18 - 8);
  v5[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218F43A04, 0, 0);
}

uint64_t sub_218F43A04()
{
  v100 = v0;
  if (qword_280E8D7F8 != -1)
  {
LABEL_29:
    swift_once();
  }

  sub_219BF63B4();
  v1 = sub_219759E94();
  if ((~v1 & 0xF000000000000007) != 0)
  {
    v3 = v1;
    type metadata accessor for TagFeedServiceConfig();
    sub_218F54E5C(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    sub_219BEE7A4();
    sub_21885AB78(v3);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v67 = v0[64];
  v4 = v0[61];
  v78 = v0[63];
  v80 = v0[62];
  v63 = v4;
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[58];
  v95 = v0[57];
  v70 = v0[56];
  v72 = v0[55];
  v65 = v0[53];
  v66 = v0[52];
  v68 = v0[51];
  v92 = v0[49];
  v55 = v0[48];
  v8 = v0[46];
  v57 = v0[44];
  v58 = v0[43];
  v9 = v0[42];
  v56 = v0[45];
  v59 = v0[41];
  v60 = v0[36];
  v61 = v0[37];
  v62 = v0[35];
  v84 = v0[33];
  v82 = v0[32];
  v74 = v0[31];
  v76 = v0[30];
  v71 = v0[29];
  v73 = v0[28];
  v87 = v0[23];
  v89 = v0[20];
  v54 = v0[19];
  v10 = v0[12];
  v69 = v0[11];
  v11 = sub_219BF0BD4();
  (*(*(v11 - 8) + 56))(v4, v2, 1, v11);
  (*(v6 + 104))(v5, *MEMORY[0x277D6D178], v7);
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

  v12 = v54;
  sub_219BDCAC4();
  sub_219BEF5F4();
  v53 = *(v8 + 16);
  v53(v55, v10, v56);
  v13 = v84;
  sub_219BEF614();
  v14 = sub_219BEF624();
  (*(*(v14 - 8) + 56))(v92, 0, 1, v14);
  v15 = sub_219BEF684();
  (*(*(v15 - 8) + 56))(v57, 1, 1, v15);
  (*(v9 + 104))(v58, *MEMORY[0x277D326B0], v59);
  sub_219BEF654();
  sub_219BEF5F4();
  (*(v60 + 104))(v61, *MEMORY[0x277D32680], v62);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  v64 = sub_219BEE0E4();
  (*(v66 + 8))(v65, v68);
  (*(v70 + 8))(v95, v72);
  (*(v6 + 8))(v5, v7);
  sub_218864CF4(v63, sub_218B6AF30);
  (*(v78 + 8))(v67, v80);
  v99[0] = 0;
  (*(v71 + 16))(v74, v69, v73);
  (*(v71 + 32))(v76, v74, v73);
  sub_218F54E5C(&qword_280EE36E0, sub_218954408);
  sub_219BF56A4();
  v81 = *(v82 + 36);
  *(v84 + v81) = 0;
  sub_218F534E0(0, &qword_280E8D490, &unk_280EE36D0, MEMORY[0x277D6EC70], MEMORY[0x277D84310]);
  v83 = (v87 + 16);
  v17 = *(v16 + 36);
  v18 = (v89 + 56);
  v91 = (v89 + 48);
  v93 = (v87 + 32);
  v88 = (v87 + 8);
  sub_218F54E5C(&unk_280EE36D0, sub_218954408);
  v77 = 0;
  v75 = 0;
  v96 = 0;
  v90 = 0;
  v79 = v18;
  while (1)
  {
    sub_219BF5E84();
    if (*(v13 + v17) == v0[6])
    {
      v19 = 1;
    }

    else
    {
      v20 = v0[25];
      v21 = v0[22];
      v85 = v0[21];
      v22 = v17;
      v23 = v12;
      v24 = sub_219BF5EC4();
      (*v83)(v20);
      v24(v0 + 2, 0);
      v12 = v23;
      v17 = v22;
      v13 = v84;
      sub_219BF5E94();
      v25 = *(v12 + 48);
      *v85 = v90;
      (*v93)(&v85[v25], v20, v21);
      v26 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      v27 = v0[26];
      v28 = v0[21];
      ++v90;
      *(v84 + v81) = v26;
      sub_218F53578(v28, v27);
      v19 = 0;
      v18 = v79;
    }

    v30 = v0[26];
    v29 = v0[27];
    v31 = v0[19];
    (*v18)(v30, v19, 1, v31);
    sub_218F535DC(v30, v29);
    if ((*v91)(v29, 1, v31) == 1)
    {
      break;
    }

    v32 = v0[27];
    v33 = *v32;
    (*v93)(v0[24], v32 + *(v12 + 48), v0[22]);
    if (v96)
    {
      (*v88)(v0[24], v0[22]);
      v96 = 1;
    }

    else
    {
      sub_219BE6934();
      v34 = (v0[7] >> 58) & 0x3C | (v0[7] >> 1) & 3;
      if (v34 == 8)
      {
        goto LABEL_16;
      }

      if (v34)
      {
        (*v88)(v0[24], v0[22]);

        if (v75)
        {
          v77 = 1;
          v75 = 1;
          v96 = 1;
        }

        else
        {
          v75 = 0;
          v96 = 0;
        }
      }

      else
      {
        type metadata accessor for TagFeedSectionGapDescriptor(0);
        v35 = swift_projectBox();
        v36 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
        if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
        {
LABEL_16:
          (*v88)(v0[24], v0[22]);

          v96 = 0;
        }

        else
        {
          v97 = v0[24];
          v86 = v0[22];
          sub_219BF5DF4();
          sub_219BF5E84();
          v37 = sub_219BF5E74();
          (*v88)(v97, v86);

          v39 = v37 - 1;
          if (__OFSUB__(v37, 1))
          {
            __break(1u);
            return result;
          }

          v40 = v33 == v39;
          v96 = v33 == v39;
          v41 = v77;
          if (v40)
          {
            v41 = 1;
          }

          v77 = v41;
          v75 = 1;
        }
      }
    }
  }

  v99[0] = v77;
  v42 = v0[47];
  v43 = v0[45];
  v44 = v0[22];
  v45 = v0[23];
  v46 = v0[18];
  v48 = v0[15];
  v47 = v0[16];
  v49 = v0[14];
  v50 = v0[12];
  v94 = v0[17];
  v98 = v0[11];
  sub_218864CF4(v0[33], sub_21898BC64);
  (*(v45 + 56))(v46, 1, 1, v44);
  v53(v42, v50, v43);
  (*(v47 + 104))(v94, *MEMORY[0x277D6E080], v48);

  sub_218F544F4(v98, v46, v49, v64, v99);
  v51 = v0[18];

  type metadata accessor for TagFeedLayoutModel();
  sub_218DED7F0();
  sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
  sub_219BE6564();
  sub_218864CF4(v51, sub_21898BBC4);
  sub_219BEE0C4();

  v52 = v0[1];

  return v52();
}

uint64_t sub_218F4495C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X2>, _BYTE *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v1189 = a5;
  v1232 = a4;
  v1170 = a3;
  v1233 = a2;
  v1234 = a1;
  v1231 = a6;
  v6 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v1149 = &v1070 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v1191 = (&v1070 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v1148 = &v1070 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v1190 = (&v1070 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v1147 = &v1070 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v1146 = &v1070 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v1145 = &v1070 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v1144 = &v1070 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v1143 = &v1070 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v1142 = &v1070 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v1141 = &v1070 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v1140 = &v1070 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v1139 = &v1070 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v32 - 8);
  v1138 = &v1070 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v34 - 8);
  v1137 = &v1070 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1134 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v1134);
  v1136 = &v1070 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v1135 = &v1070 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v39 - 8);
  v1133 = &v1070 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v41 - 8);
  v1132 = &v1070 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v43 - 8);
  v1131 = &v1070 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1129 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v1129);
  v1130 = &v1070 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v1128 = &v1070 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v48 - 8);
  v1127 = &v1070 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v1126 = &v1070 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v1125 = &v1070 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v54 - 8);
  v1188 = (&v1070 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v56 - 8);
  v1187 = (&v1070 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v58 - 8);
  v1186 = (&v1070 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v60 - 8);
  v1185 = (&v1070 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1124 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v1124);
  v1184 = (&v1070 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v63 - 8);
  v1183 = (&v1070 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1123 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v1123);
  v1182 = (&v1070 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v66 - 8);
  v1181 = (&v1070 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1122 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v1122);
  v1180 = (&v1070 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v69 - 8);
  v1179 = (&v1070 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1120 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v1120);
  v1178 = (&v1070 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v72 - 8);
  v1177 = (&v1070 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v74 - 8);
  v1176 = (&v1070 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218F54AFC(0);
  MEMORY[0x28223BE20](v76 - 8);
  v1118 = &v1070 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54B30();
  v1121 = v78;
  v1119 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v1117 = &v1070 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54B8C(0);
  MEMORY[0x28223BE20](v80 - 8);
  v1116 = &v1070 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54BC0(0);
  MEMORY[0x28223BE20](v82 - 8);
  v1115 = &v1070 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1114 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v1114);
  v1175 = (&v1070 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v85 - 8);
  v1174 = (&v1070 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v87 - 8);
  v1173 = (&v1070 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v89 - 8);
  v1172 = (&v1070 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1242 = type metadata accessor for TagFeedLayoutModel();
  MEMORY[0x28223BE20](v1242);
  v1240 = &v1070 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1239 = sub_219BEF974();
  v1243 = *(v1239 - 8);
  MEMORY[0x28223BE20](v1239);
  v1238 = &v1070 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934();
  v1237 = v93;
  v1241 = *(v93 - 8);
  v94 = MEMORY[0x28223BE20](v93);
  v1212 = &v1070 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x28223BE20](v94);
  v1211 = &v1070 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v1210 = &v1070 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v1208 = &v1070 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v1207 = &v1070 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v1206 = &v1070 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v1205 = &v1070 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v1204 = &v1070 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v1203 = &v1070 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v1202 = &v1070 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v1201 = &v1070 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v1200 = &v1070 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v1199 = &v1070 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v1198 = &v1070 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v1197 = &v1070 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v1209 = &v1070 - v125;
  v126 = MEMORY[0x28223BE20](v124);
  v1196 = &v1070 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v1195 = &v1070 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v1194 = &v1070 - v131;
  MEMORY[0x28223BE20](v130);
  v1193 = &v1070 - v132;
  sub_218F54EA4(0, &qword_280EE9048, MEMORY[0x277D6D1A0], MEMORY[0x277D83D88]);
  v134 = MEMORY[0x28223BE20](v133 - 8);
  v1228 = &v1070 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = MEMORY[0x28223BE20](v134);
  v1227 = &v1070 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v1226 = &v1070 - v139;
  MEMORY[0x28223BE20](v138);
  v1225 = &v1070 - v140;
  v1229 = sub_219BDCB14();
  v1230 = *(v1229 - 8);
  v141 = MEMORY[0x28223BE20](v1229);
  v1113 = &v1070 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = MEMORY[0x28223BE20](v141);
  v1112 = &v1070 - v144;
  v145 = MEMORY[0x28223BE20](v143);
  v1111 = &v1070 - v146;
  v147 = MEMORY[0x28223BE20](v145);
  v1109 = &v1070 - v148;
  v149 = MEMORY[0x28223BE20](v147);
  v1108 = &v1070 - v150;
  v151 = MEMORY[0x28223BE20](v149);
  v1107 = &v1070 - v152;
  v153 = MEMORY[0x28223BE20](v151);
  v1106 = &v1070 - v154;
  v155 = MEMORY[0x28223BE20](v153);
  v1105 = &v1070 - v156;
  v157 = MEMORY[0x28223BE20](v155);
  v1104 = &v1070 - v158;
  v159 = MEMORY[0x28223BE20](v157);
  v1103 = &v1070 - v160;
  v161 = MEMORY[0x28223BE20](v159);
  v1102 = &v1070 - v162;
  v163 = MEMORY[0x28223BE20](v161);
  v1101 = &v1070 - v164;
  v165 = MEMORY[0x28223BE20](v163);
  v1100 = &v1070 - v166;
  v167 = MEMORY[0x28223BE20](v165);
  v1099 = &v1070 - v168;
  v169 = MEMORY[0x28223BE20](v167);
  v1098 = &v1070 - v170;
  v171 = MEMORY[0x28223BE20](v169);
  v1110 = &v1070 - v172;
  v173 = MEMORY[0x28223BE20](v171);
  v1097 = &v1070 - v174;
  v175 = MEMORY[0x28223BE20](v173);
  v1096 = &v1070 - v176;
  v177 = MEMORY[0x28223BE20](v175);
  v1095 = &v1070 - v178;
  MEMORY[0x28223BE20](v177);
  v1094 = &v1070 - v179;
  v1217 = sub_219BED8D4();
  v1218 = *(v1217 - 8);
  MEMORY[0x28223BE20](v1217);
  v1219 = &v1070 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54BF4(0);
  MEMORY[0x28223BE20](v181 - 8);
  v1220 = &v1070 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54C28(0);
  MEMORY[0x28223BE20](v183 - 8);
  v1221 = &v1070 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1223 = sub_219BF1904();
  v1224 = *(v1223 - 8);
  MEMORY[0x28223BE20](v1223);
  v1222 = &v1070 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v186 - 8);
  v1171 = (&v1070 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1215 = sub_219BEE074();
  v1216 = *(v1215 - 8);
  v188 = MEMORY[0x28223BE20](v1215);
  v1169 = &v1070 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = MEMORY[0x28223BE20](v188);
  v1168 = &v1070 - v191;
  v192 = MEMORY[0x28223BE20](v190);
  v1167 = &v1070 - v193;
  v194 = MEMORY[0x28223BE20](v192);
  v1166 = &v1070 - v195;
  v196 = MEMORY[0x28223BE20](v194);
  v1165 = &v1070 - v197;
  v198 = MEMORY[0x28223BE20](v196);
  v1163 = &v1070 - v199;
  v200 = MEMORY[0x28223BE20](v198);
  v1162 = &v1070 - v201;
  v202 = MEMORY[0x28223BE20](v200);
  v1161 = &v1070 - v203;
  v204 = MEMORY[0x28223BE20](v202);
  v1160 = &v1070 - v205;
  v206 = MEMORY[0x28223BE20](v204);
  v1159 = &v1070 - v207;
  v208 = MEMORY[0x28223BE20](v206);
  v1158 = &v1070 - v209;
  v210 = MEMORY[0x28223BE20](v208);
  v1157 = &v1070 - v211;
  v212 = MEMORY[0x28223BE20](v210);
  v1156 = &v1070 - v213;
  v214 = MEMORY[0x28223BE20](v212);
  v1155 = &v1070 - v215;
  v216 = MEMORY[0x28223BE20](v214);
  v1154 = &v1070 - v217;
  v218 = MEMORY[0x28223BE20](v216);
  v1093 = &v1070 - v219;
  v220 = MEMORY[0x28223BE20](v218);
  v1092 = &v1070 - v221;
  v222 = MEMORY[0x28223BE20](v220);
  v1164 = &v1070 - v223;
  v224 = MEMORY[0x28223BE20](v222);
  v1153 = &v1070 - v225;
  v226 = MEMORY[0x28223BE20](v224);
  v1152 = &v1070 - v227;
  v228 = MEMORY[0x28223BE20](v226);
  v230 = &v1070 - v229;
  v231 = MEMORY[0x28223BE20](v228);
  v1151 = &v1070 - v232;
  v233 = MEMORY[0x28223BE20](v231);
  v1192 = &v1070 - v234;
  v235 = MEMORY[0x28223BE20](v233);
  v1150 = &v1070 - v236;
  v237 = MEMORY[0x28223BE20](v235);
  v1071 = &v1070 - v238;
  MEMORY[0x28223BE20](v237);
  v240 = &v1070 - v239;
  v1213 = sub_219BE9FA4();
  v1214 = *(v1213 - 8);
  v241 = MEMORY[0x28223BE20](v1213);
  v1091 = &v1070 - ((v242 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = MEMORY[0x28223BE20](v241);
  v1090 = &v1070 - v244;
  v245 = MEMORY[0x28223BE20](v243);
  v1089 = &v1070 - v246;
  v247 = MEMORY[0x28223BE20](v245);
  v1088 = &v1070 - v248;
  v249 = MEMORY[0x28223BE20](v247);
  v1087 = &v1070 - v250;
  v251 = MEMORY[0x28223BE20](v249);
  v1085 = &v1070 - v252;
  v253 = MEMORY[0x28223BE20](v251);
  v1084 = &v1070 - v254;
  v255 = MEMORY[0x28223BE20](v253);
  v1083 = &v1070 - v256;
  v257 = MEMORY[0x28223BE20](v255);
  v1082 = &v1070 - v258;
  v259 = MEMORY[0x28223BE20](v257);
  v1081 = &v1070 - v260;
  v261 = MEMORY[0x28223BE20](v259);
  v1080 = &v1070 - v262;
  v263 = MEMORY[0x28223BE20](v261);
  v1079 = &v1070 - v264;
  v265 = MEMORY[0x28223BE20](v263);
  v1078 = &v1070 - v266;
  v267 = MEMORY[0x28223BE20](v265);
  v1077 = &v1070 - v268;
  v269 = MEMORY[0x28223BE20](v267);
  v1076 = &v1070 - v270;
  v271 = MEMORY[0x28223BE20](v269);
  v273 = &v1070 - v272;
  v274 = MEMORY[0x28223BE20](v271);
  v276 = &v1070 - v275;
  v277 = MEMORY[0x28223BE20](v274);
  v1086 = &v1070 - v278;
  v279 = MEMORY[0x28223BE20](v277);
  v1075 = &v1070 - v280;
  v281 = MEMORY[0x28223BE20](v279);
  v1074 = &v1070 - v282;
  v283 = MEMORY[0x28223BE20](v281);
  v285 = &v1070 - v284;
  v286 = MEMORY[0x28223BE20](v283);
  v1073 = &v1070 - v287;
  v288 = MEMORY[0x28223BE20](v286);
  v1072 = &v1070 - v289;
  v290 = MEMORY[0x28223BE20](v288);
  v292 = &v1070 - v291;
  v293 = MEMORY[0x28223BE20](v290);
  v295 = &v1070 - v294;
  MEMORY[0x28223BE20](v293);
  v297 = &v1070 - v296;
  v298 = type metadata accessor for TagFeedSectionGapDescriptor(0);
  v299 = MEMORY[0x28223BE20](v298 - 8);
  v301 = &v1070 - ((v300 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v299);
  switch((v303 >> 58) & 0x3C | (v303 >> 1) & 3)
  {
    case 1uLL:
      v479 = swift_projectBox();
      v480 = v1171;
      sub_218F54C5C(v479, v1171, type metadata accessor for ArticleListTagFeedGroup);
      v481 = v1222;
      sub_219BED874();
      v482 = sub_219BEDB64();
      v483 = v1221;
      (*(*(v482 - 8) + 56))(v1221, 1, 1, v482);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v480, v1217);
      v484 = v1220;
      sub_219BEF4D4();
      v485 = sub_219BEF4E4();
      (*(*(v485 - 8) + 56))(v484, 0, 1, v485);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v484, sub_218F54BF4);
      sub_218864CF4(v483, sub_218F54C28);
      v486 = *(v1224 + 8);
      v487 = v1223;
      v486(v481, v1223);
      sub_219BED874();
      v488 = sub_219BF44B4();
      v486(v481, v487);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v488;
      v489 = sub_219BDCB24();
      v490 = *(*(v489 - 8) + 56);
      v490(v1225, 1, 1, v489);
      v490(v1226, 1, 1, v489);
      v490(v1227, 1, 1, v489);
      v490(v1228, 1, 1, v489);
      v491 = v488;

      v492 = v1094;
      sub_219BDCB04();
      v493 = v1150;
      v494 = v1235;
      sub_219BEE0B4();
      if (v494)
      {

        (*(v1230 + 8))(v492, v1229);
        v337 = type metadata accessor for ArticleListTagFeedGroup;
        v338 = &v1203;
        goto LABEL_80;
      }

      v851 = MEMORY[0x277D84F90];
      v1233 = v491;
      (*(v1230 + 8))(v492, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v852 = v1192;
      (*(v1216 + 16))(v1192, v493, v1215);
      *&v1248 = sub_218DED880(v852);
      *(&v1248 + 1) = v853;
      *&v1249 = v854;
      BYTE8(v1249) = 0;
      v855 = *MEMORY[0x277D6E980];
      v856 = sub_219BE9F84();
      v857 = v1072;
      (*(*(v856 - 8) + 104))(v1072, v855, v856);
      (*(v1214 + 104))(v857, *MEMORY[0x277D6E988], v1213);
      v858 = sub_219BEE004();
      v859 = *(v858 + 16);
      if (v859)
      {
        v1235 = 0;
        v1244 = v851;
        sub_218C33FD0(v859);
        v860 = *(v1243 + 16);
        v861 = *(v1243 + 80);
        v1232 = v858;
        v862 = v858 + ((v861 + 32) & ~v861);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v863 = (v1243 - 8);
        v1234 = v1241 + 32;
        v864 = v1238;
        do
        {
          v865 = v1239;
          v860(v864, v862, v1239);
          v860(v1240, v864, v865);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v863)(v864, v865);
          v866 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v866 + 16) + 1, 1);
            v866 = v1244;
          }

          v868 = *(v866 + 16);
          v867 = *(v866 + 24);
          if (v868 >= v867 >> 1)
          {
            sub_218C34D90(v867 > 1, v868 + 1, 1);
            v866 = v1244;
          }

          *(v866 + 16) = v868 + 1;
          (*(v1241 + 32))(v866 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v868, v1193, v1237);
          v1244 = v866;
          v862 += v1236;
          --v859;
        }

        while (v859);

        v493 = v1150;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v493, v1215);
      v683 = type metadata accessor for ArticleListTagFeedGroup;
      v684 = v1171;
      return sub_218864CF4(v684, v683);
    case 2uLL:
      v420 = swift_projectBox();
      v421 = v1172;
      sub_218F54C5C(v420, v1172, type metadata accessor for PromotedArticleListTagFeedGroup);
      v422 = v1222;
      sub_219BED874();
      v423 = sub_219BEDB64();
      v424 = v1221;
      (*(*(v423 - 8) + 56))(v1221, 1, 1, v423);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v421, v1217);
      v425 = v1220;
      sub_219BEF4D4();
      v426 = sub_219BEF4E4();
      (*(*(v426 - 8) + 56))(v425, 0, 1, v426);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v425, sub_218F54BF4);
      sub_218864CF4(v424, sub_218F54C28);
      v427 = *(v1224 + 8);
      v428 = v1223;
      v427(v422, v1223);
      sub_219BED874();
      v429 = sub_219BF44B4();
      v427(v422, v428);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v429;
      v430 = sub_219BDCB24();
      v431 = *(*(v430 - 8) + 56);
      v431(v1225, 1, 1, v430);
      v431(v1226, 1, 1, v430);
      v431(v1227, 1, 1, v430);
      v431(v1228, 1, 1, v430);
      v432 = v429;

      v433 = v1095;
      sub_219BDCB04();
      v434 = v1151;
      v435 = v1235;
      sub_219BEE0B4();
      if (v435)
      {

        (*(v1230 + 8))(v433, v1229);
        v337 = type metadata accessor for PromotedArticleListTagFeedGroup;
        v338 = &v1204;
        goto LABEL_80;
      }

      v796 = MEMORY[0x277D84F90];
      v1233 = v432;
      (*(v1230 + 8))(v433, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v797 = v1192;
      (*(v1216 + 16))(v1192, v434, v1215);
      *&v1248 = sub_218DED880(v797);
      *(&v1248 + 1) = v798;
      *&v1249 = v799;
      BYTE8(v1249) = 0;
      v800 = *MEMORY[0x277D6E980];
      v801 = sub_219BE9F84();
      v802 = v1073;
      (*(*(v801 - 8) + 104))(v1073, v800, v801);
      (*(v1214 + 104))(v802, *MEMORY[0x277D6E988], v1213);
      v803 = sub_219BEE004();
      v804 = *(v803 + 16);
      if (v804)
      {
        v1235 = 0;
        v1244 = v796;
        sub_218C33FD0(v804);
        v805 = *(v1243 + 16);
        v806 = *(v1243 + 80);
        v1232 = v803;
        v807 = v803 + ((v806 + 32) & ~v806);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v808 = (v1243 - 8);
        v1234 = v1241 + 32;
        v809 = v1238;
        do
        {
          v810 = v1239;
          v805(v809, v807, v1239);
          v805(v1240, v809, v810);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v808)(v809, v810);
          v811 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v811 + 16) + 1, 1);
            v811 = v1244;
          }

          v813 = *(v811 + 16);
          v812 = *(v811 + 24);
          if (v813 >= v812 >> 1)
          {
            sub_218C34D90(v812 > 1, v813 + 1, 1);
            v811 = v1244;
          }

          *(v811 + 16) = v813 + 1;
          (*(v1241 + 32))(v811 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v813, v1194, v1237);
          v1244 = v811;
          v807 += v1236;
          --v804;
        }

        while (v804);

        v434 = v1151;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v434, v1215);
      v683 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v684 = v1172;
      return sub_218864CF4(v684, v683);
    case 3uLL:
      v452 = swift_projectBox();
      v453 = v1175;
      sub_218F54C5C(v452, v1175, type metadata accessor for WeatherTagFeedGroup);
      v454 = *(v1114 + 20);
      sub_218F54EA4(0, &qword_280E8B878, MEMORY[0x277D33130], MEMORY[0x277D84560]);
      v455 = sub_219BF10D4();
      v456 = *(v455 - 8);
      v457 = (*(v456 + 80) + 32) & ~*(v456 + 80);
      v458 = swift_allocObject();
      *(v458 + 16) = xmmword_219C09BA0;
      v459 = sub_219BF0D34();
      (*(*(v459 - 8) + 16))(v458 + v457, v453, v459);
      (*(v456 + 104))(v458 + v457, *MEMORY[0x277D33128], v455);
      v1212 = sub_2194AD438(v458);
      swift_setDeallocating();
      (*(v456 + 8))(v458 + v457, v455);
      swift_deallocClassInstance();
      v460 = v1222;
      sub_219BED874();
      v461 = sub_219BEDB64();
      v462 = v1221;
      (*(*(v461 - 8) + 56))(v1221, 1, 1, v461);
      v1210 = *(v1236 + 72);
      v463 = *(v1218 + 16);
      v1211 = v454;
      v463(v1219, &v454[v453], v1217);
      v464 = v1220;
      sub_219BEF4D4();
      v465 = sub_219BEF4E4();
      (*(*(v465 - 8) + 56))(v464, 0, 1, v465);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v464, sub_218F54BF4);
      sub_218864CF4(v462, sub_218F54C28);
      v466 = *(v1224 + 8);
      v467 = v1223;
      v466(v460, v1223);
      sub_219BED874();
      v468 = sub_219BF44B4();
      v466(v460, v467);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v468;
      v469 = sub_219BDCB24();
      v470 = *(*(v469 - 8) + 56);
      v470(v1225, 1, 1, v469);
      v470(v1226, 1, 1, v469);
      v470(v1227, 1, 1, v469);
      v470(v1228, 1, 1, v469);
      v471 = v468;

      v472 = v1110;
      sub_219BDCB04();
      v473 = v1164;
      v474 = v1235;
      sub_219BEE0B4();
      if (v474)
      {

        (*(v1230 + 8))(v472, v1229);
        v337 = type metadata accessor for WeatherTagFeedGroup;
        v338 = &v1207;
        goto LABEL_80;
      }

      v832 = MEMORY[0x277D84F90];
      v1233 = v471;
      (*(v1230 + 8))(v472, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v833 = v1192;
      (*(v1216 + 16))(v1192, v473, v1215);
      *&v1248 = sub_218DED880(v833);
      *(&v1248 + 1) = v834;
      *&v1249 = v835;
      BYTE8(v1249) = 0;
      v836 = *MEMORY[0x277D6E980];
      v837 = sub_219BE9F84();
      v838 = v1086;
      (*(*(v837 - 8) + 104))(v1086, v836, v837);
      (*(v1214 + 104))(v838, *MEMORY[0x277D6E988], v1213);
      v839 = sub_219BEE004();
      v840 = *(v839 + 16);
      if (v840)
      {
        v1235 = 0;
        v1244 = v832;
        sub_218C33FD0(v840);
        v841 = *(v1243 + 16);
        v842 = *(v1243 + 80);
        v1232 = v839;
        v843 = v839 + ((v842 + 32) & ~v842);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v844 = (v1243 - 8);
        v1234 = v1241 + 32;
        v845 = v1238;
        do
        {
          v846 = v1239;
          v841(v845, v843, v1239);
          v841(v1240, v845, v846);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v844)(v845, v846);
          v847 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v847 + 16) + 1, 1);
            v847 = v1244;
          }

          v849 = *(v847 + 16);
          v848 = *(v847 + 24);
          if (v849 >= v848 >> 1)
          {
            sub_218C34D90(v848 > 1, v849 + 1, 1);
            v847 = v1244;
          }

          *(v847 + 16) = v849 + 1;
          (*(v1241 + 32))(v847 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v849, v1209, v1237);
          v1244 = v847;
          v843 += v1236;
          --v840;
        }

        while (v840);

        v473 = v1164;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v473, v1215);
      v683 = type metadata accessor for WeatherTagFeedGroup;
      v684 = v1175;
      return sub_218864CF4(v684, v683);
    case 4uLL:
      v1244 = MEMORY[0x277D84F90];
      v1245 = MEMORY[0x277D84F90];
      v1246 = MEMORY[0x277D84F90];
      v1247 = 1;
      v389 = v1214;
      v390 = v1213;
      (*(v1214 + 104))(v285, *MEMORY[0x277D6E9B0], v1213);
      sub_218954350();
      sub_218F54D18();
      v1248 = 0u;
      v1249 = 0u;
      v1250 = 0;
      v391 = v1235;
      sub_219BEE0A4();
      sub_218864CF4(&v1248, sub_218C8A15C);
      if (v391)
      {
        return (*(v389 + 8))(v285, v390);
      }

      v777 = sub_219BEE004();
      (*(v1216 + 8))(v230, v1215);
      sub_218F42AB8(v777);

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      return sub_219BE81A4();
    case 5uLL:
      v534 = swift_projectBox();
      v535 = v1173;
      sub_218F54C5C(v534, v1173, type metadata accessor for ChannelSectionTagFeedGroup);
      v536 = v1222;
      sub_219BED874();
      v537 = sub_219BEDB64();
      v538 = v1221;
      (*(*(v537 - 8) + 56))(v1221, 1, 1, v537);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v535, v1217);
      v539 = v1220;
      sub_219BEF4D4();
      v540 = sub_219BEF4E4();
      (*(*(v540 - 8) + 56))(v539, 0, 1, v540);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v539, sub_218F54BF4);
      sub_218864CF4(v538, sub_218F54C28);
      v541 = *(v1224 + 8);
      v542 = v1223;
      v541(v536, v1223);
      sub_219BED874();
      v543 = sub_219BF44B4();
      v541(v536, v542);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v543;
      v544 = sub_219BDCB24();
      v545 = *(*(v544 - 8) + 56);
      v545(v1225, 1, 1, v544);
      v545(v1226, 1, 1, v544);
      v545(v1227, 1, 1, v544);
      v545(v1228, 1, 1, v544);
      v546 = v543;

      v547 = v1096;
      sub_219BDCB04();
      v548 = v1152;
      v549 = v1235;
      sub_219BEE0B4();
      if (v549)
      {

        (*(v1230 + 8))(v547, v1229);
        v337 = type metadata accessor for ChannelSectionTagFeedGroup;
        v338 = &v1205;
        goto LABEL_80;
      }

      v905 = MEMORY[0x277D84F90];
      v1233 = v546;
      (*(v1230 + 8))(v547, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v906 = v1192;
      (*(v1216 + 16))(v1192, v548, v1215);
      *&v1248 = sub_218DED880(v906);
      *(&v1248 + 1) = v907;
      *&v1249 = v908;
      BYTE8(v1249) = 0;
      v909 = *MEMORY[0x277D6E980];
      v910 = sub_219BE9F84();
      v911 = v1074;
      (*(*(v910 - 8) + 104))(v1074, v909, v910);
      (*(v1214 + 104))(v911, *MEMORY[0x277D6E988], v1213);
      v912 = sub_219BEE004();
      v913 = *(v912 + 16);
      if (v913)
      {
        v1235 = 0;
        v1244 = v905;
        sub_218C33FD0(v913);
        v914 = *(v1243 + 16);
        v915 = *(v1243 + 80);
        v1232 = v912;
        v916 = v912 + ((v915 + 32) & ~v915);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v917 = (v1243 - 8);
        v1234 = v1241 + 32;
        v918 = v1238;
        do
        {
          v919 = v1239;
          v914(v918, v916, v1239);
          v914(v1240, v918, v919);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v917)(v918, v919);
          v920 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v920 + 16) + 1, 1);
            v920 = v1244;
          }

          v922 = *(v920 + 16);
          v921 = *(v920 + 24);
          if (v922 >= v921 >> 1)
          {
            sub_218C34D90(v921 > 1, v922 + 1, 1);
            v920 = v1244;
          }

          *(v920 + 16) = v922 + 1;
          (*(v1241 + 32))(v920 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v922, v1195, v1237);
          v1244 = v920;
          v916 += v1236;
          --v913;
        }

        while (v913);

        v548 = v1152;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v548, v1215);
      v683 = type metadata accessor for ChannelSectionTagFeedGroup;
      v684 = v1173;
      return sub_218864CF4(v684, v683);
    case 6uLL:
      v582 = swift_projectBox();
      v583 = v1174;
      sub_218F54C5C(v582, v1174, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v584 = v1222;
      sub_219BED874();
      v585 = sub_219BEDB64();
      v586 = v1221;
      (*(*(v585 - 8) + 56))(v1221, 1, 1, v585);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v583, v1217);
      v587 = v1220;
      sub_219BEF4D4();
      v588 = sub_219BEF4E4();
      (*(*(v588 - 8) + 56))(v587, 0, 1, v588);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v587, sub_218F54BF4);
      sub_218864CF4(v586, sub_218F54C28);
      v589 = *(v1224 + 8);
      v590 = v1223;
      v589(v584, v1223);
      sub_219BED874();
      v591 = sub_219BF44B4();
      v589(v584, v590);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v591;
      v592 = sub_219BDCB24();
      v593 = *(*(v592 - 8) + 56);
      v593(v1225, 1, 1, v592);
      v593(v1226, 1, 1, v592);
      v593(v1227, 1, 1, v592);
      v593(v1228, 1, 1, v592);
      v594 = v591;

      v595 = v1097;
      sub_219BDCB04();
      v596 = v1153;
      v597 = v1235;
      sub_219BEE0B4();
      if (v597)
      {

        (*(v1230 + 8))(v595, v1229);
        v337 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
        v338 = &v1206;
        goto LABEL_80;
      }

      v959 = MEMORY[0x277D84F90];
      v1233 = v594;
      (*(v1230 + 8))(v595, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v960 = v1192;
      (*(v1216 + 16))(v1192, v596, v1215);
      *&v1248 = sub_218DED880(v960);
      *(&v1248 + 1) = v961;
      *&v1249 = v962;
      BYTE8(v1249) = 0;
      v963 = *MEMORY[0x277D6E980];
      v964 = sub_219BE9F84();
      v965 = v1075;
      (*(*(v964 - 8) + 104))(v1075, v963, v964);
      (*(v1214 + 104))(v965, *MEMORY[0x277D6E988], v1213);
      v966 = sub_219BEE004();
      v967 = *(v966 + 16);
      if (v967)
      {
        v1235 = 0;
        v1244 = v959;
        sub_218C33FD0(v967);
        v968 = *(v1243 + 16);
        v969 = *(v1243 + 80);
        v1232 = v966;
        v970 = v966 + ((v969 + 32) & ~v969);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v971 = (v1243 - 8);
        v1234 = v1241 + 32;
        v972 = v1238;
        do
        {
          v973 = v1239;
          v968(v972, v970, v1239);
          v968(v1240, v972, v973);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v971)(v972, v973);
          v974 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v974 + 16) + 1, 1);
            v974 = v1244;
          }

          v976 = *(v974 + 16);
          v975 = *(v974 + 24);
          if (v976 >= v975 >> 1)
          {
            sub_218C34D90(v975 > 1, v976 + 1, 1);
            v974 = v1244;
          }

          *(v974 + 16) = v976 + 1;
          (*(v1241 + 32))(v974 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v976, v1196, v1237);
          v1244 = v974;
          v970 += v1236;
          --v967;
        }

        while (v967);

        v596 = v1153;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v596, v1215);
      v683 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v684 = v1174;
      return sub_218864CF4(v684, v683);
    case 7uLL:
      v1244 = 0;
      v1245 = 0;
      v1246 = 0;
      v1247 = 3;
      v475 = v1214;
      v476 = v1213;
      (*(v1214 + 104))(v276, *MEMORY[0x277D6E9B0], v1213);
      sub_218954350();
      sub_218F54D18();
      v1248 = 0u;
      v1249 = 0u;
      v1250 = 0;
      v477 = v1092;
      v478 = v1235;
      sub_219BEE0A4();
      if (v478)
      {
        sub_218864CF4(&v1248, sub_218C8A15C);
        return (*(v475 + 8))(v276, v476);
      }

      sub_218864CF4(&v1248, sub_218C8A15C);
      v850 = sub_219BEE004();
      (*(v1216 + 8))(v477, v1215);
      sub_218F42AB8(v850);

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      return sub_219BE81A4();
    case 8uLL:
      sub_218F52B40(v1189);
      v1244 = MEMORY[0x277D84F90];
      v1245 = MEMORY[0x277D84F90];
      v1246 = MEMORY[0x277D84F90];
      v1247 = 2;
      v631 = v1214;
      v632 = v1213;
      (*(v1214 + 104))(v273, *MEMORY[0x277D6E9B0], v1213);
      v633 = sub_219BEF664();
      v634 = v1115;
      (*(*(v633 - 8) + 56))(v1115, 1, 1, v633);
      v635 = v1116;
      sub_219BEF5D4();
      v636 = sub_219BEF5E4();
      (*(*(v636 - 8) + 56))(v635, 0, 1, v636);
      sub_219BEE0D4();
      sub_218864CF4(v635, sub_218F54B8C);
      sub_218864CF4(v634, sub_218F54BC0);
      sub_218954350();
      sub_218F54D18();
      v1248 = 0u;
      v1249 = 0u;
      v1250 = 0;
      v637 = v1093;
      v638 = v1235;
      sub_219BEE0A4();
      if (v638)
      {

        sub_218864CF4(&v1248, sub_218C8A15C);
        return (*(v631 + 8))(v273, v632);
      }

      else
      {
        sub_218864CF4(&v1248, sub_218C8A15C);

        v1013 = sub_219BEE004();
        (*(v1216 + 8))(v637, v1215);
        sub_218F42AB8(v1013);

        sub_218DED7F0();
        sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
        return sub_219BE81A4();
      }

    case 9uLL:
      v411 = swift_projectBox();
      v412 = v1119;
      v413 = v1117;
      v414 = v1121;
      (*(v1119 + 16))(v1117, v411, v1121);
      sub_219BEE474();
      v415 = v1248;
      v416 = v1118;
      sub_219BEE484();
      v417 = sub_219BEEA64();
      (*(*(v417 - 8) + 56))(v416, 0, 1, v417);
      sub_218F4495C(v1234, v415, v1233, v1170, v416, v1189);

      sub_218864CF4(v416, sub_218F54AFC);
      return (*(v412 + 8))(v413, v414);
    case 0xAuLL:
      v615 = swift_projectBox();
      v616 = v1176;
      sub_218F54C5C(v615, v1176, type metadata accessor for CuratedTagFeedGroup);
      v617 = v1222;
      sub_219BED874();
      v618 = sub_219BEDB64();
      v619 = v1221;
      (*(*(v618 - 8) + 56))(v1221, 1, 1, v618);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v616, v1217);
      v620 = v1220;
      sub_219BEF4D4();
      v621 = sub_219BEF4E4();
      (*(*(v621 - 8) + 56))(v620, 0, 1, v621);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v620, sub_218F54BF4);
      sub_218864CF4(v619, sub_218F54C28);
      v622 = *(v1224 + 8);
      v623 = v1223;
      v622(v617, v1223);
      sub_219BED874();
      v624 = sub_219BF44B4();
      v622(v617, v623);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v624;
      v625 = sub_219BDCB24();
      v626 = *(*(v625 - 8) + 56);
      v626(v1225, 1, 1, v625);
      v626(v1226, 1, 1, v625);
      v626(v1227, 1, 1, v625);
      v626(v1228, 1, 1, v625);
      v627 = v624;

      v628 = v1098;
      sub_219BDCB04();
      v629 = v1154;
      v630 = v1235;
      sub_219BEE0B4();
      if (v630)
      {

        (*(v1230 + 8))(v628, v1229);
        v337 = type metadata accessor for CuratedTagFeedGroup;
        v338 = &v1208;
        goto LABEL_80;
      }

      v995 = MEMORY[0x277D84F90];
      v1233 = v627;
      (*(v1230 + 8))(v628, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v996 = v1192;
      (*(v1216 + 16))(v1192, v629, v1215);
      *&v1248 = sub_218DED880(v996);
      *(&v1248 + 1) = v997;
      *&v1249 = v998;
      BYTE8(v1249) = 0;
      v999 = *MEMORY[0x277D6E980];
      v1000 = sub_219BE9F84();
      v1001 = v1076;
      (*(*(v1000 - 8) + 104))(v1076, v999, v1000);
      (*(v1214 + 104))(v1001, *MEMORY[0x277D6E988], v1213);
      v1002 = sub_219BEE004();
      v1003 = *(v1002 + 16);
      if (v1003)
      {
        v1235 = 0;
        v1244 = v995;
        sub_218C33FD0(v1003);
        v1004 = *(v1243 + 16);
        v1005 = *(v1243 + 80);
        v1232 = v1002;
        v1006 = v1002 + ((v1005 + 32) & ~v1005);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v1007 = (v1243 - 8);
        v1234 = v1241 + 32;
        v1008 = v1238;
        do
        {
          v1009 = v1239;
          v1004(v1008, v1006, v1239);
          v1004(v1240, v1008, v1009);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v1007)(v1008, v1009);
          v1010 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v1010 + 16) + 1, 1);
            v1010 = v1244;
          }

          v1012 = *(v1010 + 16);
          v1011 = *(v1010 + 24);
          if (v1012 >= v1011 >> 1)
          {
            sub_218C34D90(v1011 > 1, v1012 + 1, 1);
            v1010 = v1244;
          }

          *(v1010 + 16) = v1012 + 1;
          (*(v1241 + 32))(v1010 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v1012, v1197, v1237);
          v1244 = v1010;
          v1006 += v1236;
          --v1003;
        }

        while (v1003);

        v629 = v1154;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v629, v1215);
      v683 = type metadata accessor for CuratedTagFeedGroup;
      v684 = v1176;
      return sub_218864CF4(v684, v683);
    case 0xBuLL:
      v373 = swift_projectBox();
      v374 = v1177;
      sub_218F54C5C(v373, v1177, type metadata accessor for SportsRecordTagFeedGroup);
      v375 = v1222;
      sub_219BED874();
      v376 = sub_219BEDB64();
      v377 = v1221;
      (*(*(v376 - 8) + 56))(v1221, 1, 1, v376);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v374, v1217);
      v378 = v1220;
      sub_219BEF4D4();
      v379 = sub_219BEF4E4();
      (*(*(v379 - 8) + 56))(v378, 0, 1, v379);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v378, sub_218F54BF4);
      sub_218864CF4(v377, sub_218F54C28);
      v380 = *(v1224 + 8);
      v381 = v1223;
      v380(v375, v1223);
      sub_219BED874();
      v382 = sub_219BF44B4();
      v380(v375, v381);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v382;
      v383 = sub_219BDCB24();
      v384 = *(*(v383 - 8) + 56);
      v384(v1225, 1, 1, v383);
      v384(v1226, 1, 1, v383);
      v384(v1227, 1, 1, v383);
      v384(v1228, 1, 1, v383);
      v385 = v382;

      v386 = v1099;
      sub_219BDCB04();
      v387 = v1155;
      v388 = v1235;
      sub_219BEE0B4();
      if (v388)
      {

        (*(v1230 + 8))(v386, v1229);
        v337 = type metadata accessor for SportsRecordTagFeedGroup;
        v338 = &v1209;
        goto LABEL_80;
      }

      v759 = MEMORY[0x277D84F90];
      v1233 = v385;
      (*(v1230 + 8))(v386, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v760 = v1192;
      (*(v1216 + 16))(v1192, v387, v1215);
      *&v1248 = sub_218DED880(v760);
      *(&v1248 + 1) = v761;
      *&v1249 = v762;
      BYTE8(v1249) = 0;
      v763 = *MEMORY[0x277D6E980];
      v764 = sub_219BE9F84();
      v765 = v1077;
      (*(*(v764 - 8) + 104))(v1077, v763, v764);
      (*(v1214 + 104))(v765, *MEMORY[0x277D6E988], v1213);
      v766 = sub_219BEE004();
      v767 = *(v766 + 16);
      if (v767)
      {
        v1235 = 0;
        v1244 = v759;
        sub_218C33FD0(v767);
        v768 = *(v1243 + 16);
        v769 = *(v1243 + 80);
        v1232 = v766;
        v770 = v766 + ((v769 + 32) & ~v769);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v771 = (v1243 - 8);
        v1234 = v1241 + 32;
        v772 = v1238;
        do
        {
          v773 = v1239;
          v768(v772, v770, v1239);
          v768(v1240, v772, v773);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v771)(v772, v773);
          v774 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v774 + 16) + 1, 1);
            v774 = v1244;
          }

          v776 = *(v774 + 16);
          v775 = *(v774 + 24);
          if (v776 >= v775 >> 1)
          {
            sub_218C34D90(v775 > 1, v776 + 1, 1);
            v774 = v1244;
          }

          *(v774 + 16) = v776 + 1;
          (*(v1241 + 32))(v774 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v776, v1198, v1237);
          v1244 = v774;
          v770 += v1236;
          --v767;
        }

        while (v767);

        v387 = v1155;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v387, v1215);
      v683 = type metadata accessor for SportsRecordTagFeedGroup;
      v684 = v1177;
      return sub_218864CF4(v684, v683);
    case 0xCuLL:
      v394 = swift_projectBox();
      v395 = v1178;
      sub_218F54C5C(v394, v1178, type metadata accessor for SportsNavigationTagFeedGroup);
      v396 = *(v1120 + 20);
      v397 = v1222;
      sub_219BED874();
      v398 = sub_219BEDB64();
      v399 = v1221;
      (*(*(v398 - 8) + 56))(v1221, 1, 1, v398);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v395 + v396, v1217);
      v400 = v1220;
      sub_219BEF4D4();
      v401 = sub_219BEF4E4();
      (*(*(v401 - 8) + 56))(v400, 0, 1, v401);
      v1219 = sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v400, sub_218F54BF4);
      sub_218864CF4(v399, sub_218F54C28);
      v402 = *(v1224 + 8);
      v403 = v1223;
      v402(v397, v1223);
      sub_219BED874();
      v404 = sub_219BF44B4();
      v402(v397, v403);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v404;
      v405 = sub_219BDCB24();
      v406 = *(*(v405 - 8) + 56);
      v406(v1225, 1, 1, v405);
      v406(v1226, 1, 1, v405);
      v406(v1227, 1, 1, v405);
      v406(v1228, 1, 1, v405);
      v407 = v404;

      v408 = v1100;
      sub_219BDCB04();
      v409 = v1156;
      v410 = v1235;
      sub_219BEE0B4();
      if (v410)
      {

        (*(v1230 + 8))(v408, v1229);
        v337 = type metadata accessor for SportsNavigationTagFeedGroup;
        v338 = &v1210;
        goto LABEL_80;
      }

      v778 = MEMORY[0x277D84F90];
      v1233 = v407;
      (*(v1230 + 8))(v408, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v779 = v1192;
      (*(v1216 + 16))(v1192, v409, v1215);
      *&v1248 = sub_218DED880(v779);
      *(&v1248 + 1) = v780;
      *&v1249 = v781;
      BYTE8(v1249) = 0;
      v782 = *MEMORY[0x277D6E980];
      v783 = sub_219BE9F84();
      v784 = v1078;
      (*(*(v783 - 8) + 104))(v1078, v782, v783);
      (*(v1214 + 104))(v784, *MEMORY[0x277D6E988], v1213);
      v785 = sub_219BEE004();
      v786 = *(v785 + 16);
      if (v786)
      {
        v1235 = 0;
        v1244 = v778;
        sub_218C33FD0(v786);
        v787 = *(v1243 + 16);
        v788 = *(v1243 + 80);
        v1232 = v785;
        v789 = v785 + ((v788 + 32) & ~v788);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v790 = (v1243 - 8);
        v1234 = v1241 + 32;
        v791 = v1238;
        do
        {
          v792 = v1239;
          v787(v791, v789, v1239);
          v787(v1240, v791, v792);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v790)(v791, v792);
          v793 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v793 + 16) + 1, 1);
            v793 = v1244;
          }

          v795 = *(v793 + 16);
          v794 = *(v793 + 24);
          if (v795 >= v794 >> 1)
          {
            sub_218C34D90(v794 > 1, v795 + 1, 1);
            v793 = v1244;
          }

          *(v793 + 16) = v795 + 1;
          (*(v1241 + 32))(v793 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v795, v1199, v1237);
          v1244 = v793;
          v789 += v1236;
          --v786;
        }

        while (v786);

        v409 = v1156;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v409, v1215);
      v683 = type metadata accessor for SportsNavigationTagFeedGroup;
      v684 = v1178;
      return sub_218864CF4(v684, v683);
    case 0xDuLL:
      v566 = swift_projectBox();
      v567 = v1179;
      sub_218F54C5C(v566, v1179, type metadata accessor for SportsScheduleTagFeedGroup);
      v568 = v1222;
      sub_219BED874();
      v569 = sub_219BEDB64();
      v570 = v1221;
      (*(*(v569 - 8) + 56))(v1221, 1, 1, v569);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v567, v1217);
      v571 = v1220;
      sub_219BEF4D4();
      v572 = sub_219BEF4E4();
      (*(*(v572 - 8) + 56))(v571, 0, 1, v572);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v571, sub_218F54BF4);
      sub_218864CF4(v570, sub_218F54C28);
      v573 = *(v1224 + 8);
      v574 = v1223;
      v573(v568, v1223);
      sub_219BED874();
      v575 = sub_219BF44B4();
      v573(v568, v574);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v575;
      v576 = sub_219BDCB24();
      v577 = *(*(v576 - 8) + 56);
      v577(v1225, 1, 1, v576);
      v577(v1226, 1, 1, v576);
      v577(v1227, 1, 1, v576);
      v577(v1228, 1, 1, v576);
      v578 = v575;

      v579 = v1101;
      sub_219BDCB04();
      v580 = v1157;
      v581 = v1235;
      sub_219BEE0B4();
      if (v581)
      {

        (*(v1230 + 8))(v579, v1229);
        v337 = type metadata accessor for SportsScheduleTagFeedGroup;
        v338 = &v1211;
        goto LABEL_80;
      }

      v941 = MEMORY[0x277D84F90];
      v1233 = v578;
      (*(v1230 + 8))(v579, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v942 = v1192;
      (*(v1216 + 16))(v1192, v580, v1215);
      *&v1248 = sub_218DED880(v942);
      *(&v1248 + 1) = v943;
      *&v1249 = v944;
      BYTE8(v1249) = 0;
      v945 = *MEMORY[0x277D6E980];
      v946 = sub_219BE9F84();
      v947 = v1079;
      (*(*(v946 - 8) + 104))(v1079, v945, v946);
      (*(v1214 + 104))(v947, *MEMORY[0x277D6E988], v1213);
      v948 = sub_219BEE004();
      v949 = *(v948 + 16);
      if (v949)
      {
        v1235 = 0;
        v1244 = v941;
        sub_218C33FD0(v949);
        v950 = *(v1243 + 16);
        v951 = *(v1243 + 80);
        v1232 = v948;
        v952 = v948 + ((v951 + 32) & ~v951);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v953 = (v1243 - 8);
        v1234 = v1241 + 32;
        v954 = v1238;
        do
        {
          v955 = v1239;
          v950(v954, v952, v1239);
          v950(v1240, v954, v955);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v953)(v954, v955);
          v956 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v956 + 16) + 1, 1);
            v956 = v1244;
          }

          v958 = *(v956 + 16);
          v957 = *(v956 + 24);
          if (v958 >= v957 >> 1)
          {
            sub_218C34D90(v957 > 1, v958 + 1, 1);
            v956 = v1244;
          }

          *(v956 + 16) = v958 + 1;
          (*(v1241 + 32))(v956 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v958, v1200, v1237);
          v1244 = v956;
          v952 += v1236;
          --v949;
        }

        while (v949);

        v580 = v1157;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v580, v1215);
      v683 = type metadata accessor for SportsScheduleTagFeedGroup;
      v684 = v1179;
      return sub_218864CF4(v684, v683);
    case 0xEuLL:
      v355 = swift_projectBox();
      v356 = v1180;
      sub_218F54C5C(v355, v1180, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v357 = *(v1122 + 20);
      v358 = v1222;
      sub_219BED874();
      v359 = sub_219BEDB64();
      v360 = v1221;
      (*(*(v359 - 8) + 56))(v1221, 1, 1, v359);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v356 + v357, v1217);
      v361 = v1220;
      sub_219BEF4D4();
      v362 = sub_219BEF4E4();
      (*(*(v362 - 8) + 56))(v361, 0, 1, v362);
      v1219 = sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v361, sub_218F54BF4);
      sub_218864CF4(v360, sub_218F54C28);
      v363 = *(v1224 + 8);
      v364 = v1223;
      v363(v358, v1223);
      sub_219BED874();
      v365 = sub_219BF44B4();
      v363(v358, v364);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v365;
      v366 = sub_219BDCB24();
      v367 = *(*(v366 - 8) + 56);
      v367(v1225, 1, 1, v366);
      v367(v1226, 1, 1, v366);
      v367(v1227, 1, 1, v366);
      v367(v1228, 1, 1, v366);
      v368 = v365;

      v369 = v1102;
      sub_219BDCB04();
      v370 = v1158;
      v371 = v1235;
      sub_219BEE0B4();
      if (v371)
      {

        (*(v1230 + 8))(v369, v1229);
        v337 = type metadata accessor for SportsTopStoriesTagFeedGroup;
        v338 = &v1212;
        goto LABEL_80;
      }

      v741 = MEMORY[0x277D84F90];
      v1233 = v368;
      (*(v1230 + 8))(v369, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v742 = v1192;
      (*(v1216 + 16))(v1192, v370, v1215);
      *&v1248 = sub_218DED880(v742);
      *(&v1248 + 1) = v743;
      *&v1249 = v744;
      BYTE8(v1249) = 0;
      v745 = *MEMORY[0x277D6E980];
      v746 = sub_219BE9F84();
      v747 = v1080;
      (*(*(v746 - 8) + 104))(v1080, v745, v746);
      (*(v1214 + 104))(v747, *MEMORY[0x277D6E988], v1213);
      v748 = sub_219BEE004();
      v749 = *(v748 + 16);
      if (v749)
      {
        v1235 = 0;
        v1244 = v741;
        sub_218C33FD0(v749);
        v750 = *(v1243 + 16);
        v751 = *(v1243 + 80);
        v1232 = v748;
        v752 = v748 + ((v751 + 32) & ~v751);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v753 = (v1243 - 8);
        v1234 = v1241 + 32;
        v754 = v1238;
        do
        {
          v755 = v1239;
          v750(v754, v752, v1239);
          v750(v1240, v754, v755);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v753)(v754, v755);
          v756 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v756 + 16) + 1, 1);
            v756 = v1244;
          }

          v758 = *(v756 + 16);
          v757 = *(v756 + 24);
          if (v758 >= v757 >> 1)
          {
            sub_218C34D90(v757 > 1, v758 + 1, 1);
            v756 = v1244;
          }

          *(v756 + 16) = v758 + 1;
          (*(v1241 + 32))(v756 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v758, v1201, v1237);
          v1244 = v756;
          v752 += v1236;
          --v749;
        }

        while (v749);

        v370 = v1158;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v370, v1215);
      v683 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      v684 = v1180;
      return sub_218864CF4(v684, v683);
    case 0xFuLL:
      v436 = swift_projectBox();
      v437 = v1181;
      sub_218F54C5C(v436, v1181, type metadata accessor for SportsFavoritesTagFeedGroup);
      v438 = v1222;
      sub_219BED874();
      v439 = sub_219BEDB64();
      v440 = v1221;
      (*(*(v439 - 8) + 56))(v1221, 1, 1, v439);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v437, v1217);
      v441 = v1220;
      sub_219BEF4D4();
      v442 = sub_219BEF4E4();
      (*(*(v442 - 8) + 56))(v441, 0, 1, v442);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v441, sub_218F54BF4);
      sub_218864CF4(v440, sub_218F54C28);
      v443 = *(v1224 + 8);
      v444 = v1223;
      v443(v438, v1223);
      sub_219BED874();
      v445 = sub_219BF44B4();
      v443(v438, v444);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v445;
      v446 = sub_219BDCB24();
      v447 = *(*(v446 - 8) + 56);
      v447(v1225, 1, 1, v446);
      v447(v1226, 1, 1, v446);
      v447(v1227, 1, 1, v446);
      v447(v1228, 1, 1, v446);
      v448 = v445;

      v449 = v1103;
      sub_219BDCB04();
      v450 = v1159;
      v451 = v1235;
      sub_219BEE0B4();
      if (v451)
      {

        (*(v1230 + 8))(v449, v1229);
        v337 = type metadata accessor for SportsFavoritesTagFeedGroup;
        v338 = &v1213;
        goto LABEL_80;
      }

      v814 = MEMORY[0x277D84F90];
      v1233 = v448;
      (*(v1230 + 8))(v449, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v815 = v1192;
      (*(v1216 + 16))(v1192, v450, v1215);
      *&v1248 = sub_218DED880(v815);
      *(&v1248 + 1) = v816;
      *&v1249 = v817;
      BYTE8(v1249) = 0;
      v818 = *MEMORY[0x277D6E980];
      v819 = sub_219BE9F84();
      v820 = v1081;
      (*(*(v819 - 8) + 104))(v1081, v818, v819);
      (*(v1214 + 104))(v820, *MEMORY[0x277D6E988], v1213);
      v821 = sub_219BEE004();
      v822 = *(v821 + 16);
      if (v822)
      {
        v1235 = 0;
        v1244 = v814;
        sub_218C33FD0(v822);
        v823 = *(v1243 + 16);
        v824 = *(v1243 + 80);
        v1232 = v821;
        v825 = v821 + ((v824 + 32) & ~v824);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v826 = (v1243 - 8);
        v1234 = v1241 + 32;
        v827 = v1238;
        do
        {
          v828 = v1239;
          v823(v827, v825, v1239);
          v823(v1240, v827, v828);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v826)(v827, v828);
          v829 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v829 + 16) + 1, 1);
            v829 = v1244;
          }

          v831 = *(v829 + 16);
          v830 = *(v829 + 24);
          if (v831 >= v830 >> 1)
          {
            sub_218C34D90(v830 > 1, v831 + 1, 1);
            v829 = v1244;
          }

          *(v829 + 16) = v831 + 1;
          (*(v1241 + 32))(v829 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v831, v1202, v1237);
          v1244 = v829;
          v825 += v1236;
          --v822;
        }

        while (v822);

        v450 = v1159;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v450, v1215);
      v683 = type metadata accessor for SportsFavoritesTagFeedGroup;
      v684 = v1181;
      return sub_218864CF4(v684, v683);
    case 0x10uLL:
      v320 = swift_projectBox();
      v321 = v1182;
      sub_218F54C5C(v320, v1182, type metadata accessor for SportsScoresTagFeedGroup);
      v322 = *(v1123 + 20);
      v323 = v1222;
      sub_219BED874();
      v324 = sub_219BEDB64();
      v325 = v1221;
      (*(*(v324 - 8) + 56))(v1221, 1, 1, v324);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v321 + v322, v1217);
      v326 = v1220;
      sub_219BEF4D4();
      v327 = sub_219BEF4E4();
      (*(*(v327 - 8) + 56))(v326, 0, 1, v327);
      v1219 = sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v326, sub_218F54BF4);
      sub_218864CF4(v325, sub_218F54C28);
      v328 = *(v1224 + 8);
      v329 = v1223;
      v328(v323, v1223);
      sub_219BED874();
      v330 = sub_219BF44B4();
      v328(v323, v329);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v330;
      v331 = sub_219BDCB24();
      v332 = *(*(v331 - 8) + 56);
      v332(v1225, 1, 1, v331);
      v332(v1226, 1, 1, v331);
      v332(v1227, 1, 1, v331);
      v332(v1228, 1, 1, v331);
      v333 = v330;

      v334 = v1104;
      sub_219BDCB04();
      v335 = v1160;
      v336 = v1235;
      sub_219BEE0B4();
      if (v336)
      {

        (*(v1230 + 8))(v334, v1229);
        v337 = type metadata accessor for SportsScoresTagFeedGroup;
        v338 = &v1214;
        goto LABEL_80;
      }

      v705 = MEMORY[0x277D84F90];
      v1233 = v333;
      (*(v1230 + 8))(v334, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v706 = v1192;
      (*(v1216 + 16))(v1192, v335, v1215);
      *&v1248 = sub_218DED880(v706);
      *(&v1248 + 1) = v707;
      *&v1249 = v708;
      BYTE8(v1249) = 0;
      v709 = *MEMORY[0x277D6E980];
      v710 = sub_219BE9F84();
      v711 = v1082;
      (*(*(v710 - 8) + 104))(v1082, v709, v710);
      (*(v1214 + 104))(v711, *MEMORY[0x277D6E988], v1213);
      v712 = sub_219BEE004();
      v713 = *(v712 + 16);
      if (v713)
      {
        v1235 = 0;
        v1244 = v705;
        sub_218C33FD0(v713);
        v714 = *(v1243 + 16);
        v715 = *(v1243 + 80);
        v1232 = v712;
        v716 = v712 + ((v715 + 32) & ~v715);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v717 = (v1243 - 8);
        v1234 = v1241 + 32;
        v718 = v1238;
        do
        {
          v719 = v1239;
          v714(v718, v716, v1239);
          v714(v1240, v718, v719);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v717)(v718, v719);
          v720 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v720 + 16) + 1, 1);
            v720 = v1244;
          }

          v722 = *(v720 + 16);
          v721 = *(v720 + 24);
          if (v722 >= v721 >> 1)
          {
            sub_218C34D90(v721 > 1, v722 + 1, 1);
            v720 = v1244;
          }

          *(v720 + 16) = v722 + 1;
          (*(v1241 + 32))(v720 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v722, v1203, v1237);
          v1244 = v720;
          v716 += v1236;
          --v713;
        }

        while (v713);

        v335 = v1160;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v335, v1215);
      v683 = type metadata accessor for SportsScoresTagFeedGroup;
      v684 = v1182;
      return sub_218864CF4(v684, v683);
    case 0x11uLL:
      v499 = swift_projectBox();
      v500 = v1183;
      sub_218F54C5C(v499, v1183, type metadata accessor for SportsLinksTagFeedGroup);
      v501 = v1222;
      sub_219BED874();
      v502 = sub_219BEDB64();
      v503 = v1221;
      (*(*(v502 - 8) + 56))(v1221, 1, 1, v502);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v500, v1217);
      v504 = v1220;
      sub_219BEF4D4();
      v505 = sub_219BEF4E4();
      (*(*(v505 - 8) + 56))(v504, 0, 1, v505);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v504, sub_218F54BF4);
      sub_218864CF4(v503, sub_218F54C28);
      v506 = *(v1224 + 8);
      v507 = v1223;
      v506(v501, v1223);
      sub_219BED874();
      v508 = sub_219BF44B4();
      v506(v501, v507);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v508;
      v509 = sub_219BDCB24();
      v510 = *(*(v509 - 8) + 56);
      v510(v1225, 1, 1, v509);
      v510(v1226, 1, 1, v509);
      v510(v1227, 1, 1, v509);
      v510(v1228, 1, 1, v509);
      v511 = v508;

      v512 = v1105;
      sub_219BDCB04();
      v513 = v1161;
      v514 = v1235;
      sub_219BEE0B4();
      if (v514)
      {

        (*(v1230 + 8))(v512, v1229);
        v337 = type metadata accessor for SportsLinksTagFeedGroup;
        v338 = &v1215;
        goto LABEL_80;
      }

      v869 = MEMORY[0x277D84F90];
      v1233 = v511;
      (*(v1230 + 8))(v512, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v870 = v1192;
      (*(v1216 + 16))(v1192, v513, v1215);
      *&v1248 = sub_218DED880(v870);
      *(&v1248 + 1) = v871;
      *&v1249 = v872;
      BYTE8(v1249) = 0;
      v873 = *MEMORY[0x277D6E980];
      v874 = sub_219BE9F84();
      v875 = v1083;
      (*(*(v874 - 8) + 104))(v1083, v873, v874);
      (*(v1214 + 104))(v875, *MEMORY[0x277D6E988], v1213);
      v876 = sub_219BEE004();
      v877 = *(v876 + 16);
      if (v877)
      {
        v1235 = 0;
        v1244 = v869;
        sub_218C33FD0(v877);
        v878 = *(v1243 + 16);
        v879 = *(v1243 + 80);
        v1232 = v876;
        v880 = v876 + ((v879 + 32) & ~v879);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v881 = (v1243 - 8);
        v1234 = v1241 + 32;
        v882 = v1238;
        do
        {
          v883 = v1239;
          v878(v882, v880, v1239);
          v878(v1240, v882, v883);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v881)(v882, v883);
          v884 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v884 + 16) + 1, 1);
            v884 = v1244;
          }

          v886 = *(v884 + 16);
          v885 = *(v884 + 24);
          if (v886 >= v885 >> 1)
          {
            sub_218C34D90(v885 > 1, v886 + 1, 1);
            v884 = v1244;
          }

          *(v884 + 16) = v886 + 1;
          (*(v1241 + 32))(v884 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v886, v1204, v1237);
          v1244 = v884;
          v880 += v1236;
          --v877;
        }

        while (v877);

        v513 = v1161;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v513, v1215);
      v683 = type metadata accessor for SportsLinksTagFeedGroup;
      v684 = v1183;
      return sub_218864CF4(v684, v683);
    case 0x12uLL:
      v598 = swift_projectBox();
      v599 = v1184;
      sub_218F54C5C(v598, v1184, type metadata accessor for MySportsTopicTagFeedGroup);
      v600 = *(v1124 + 20);
      v601 = v1222;
      sub_219BED874();
      v602 = sub_219BEDB64();
      v603 = v1221;
      (*(*(v602 - 8) + 56))(v1221, 1, 1, v602);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v599 + v600, v1217);
      v604 = v1220;
      sub_219BEF4D4();
      v605 = sub_219BEF4E4();
      (*(*(v605 - 8) + 56))(v604, 0, 1, v605);
      v1219 = sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v604, sub_218F54BF4);
      sub_218864CF4(v603, sub_218F54C28);
      v606 = *(v1224 + 8);
      v607 = v1223;
      v606(v601, v1223);
      sub_219BED874();
      v608 = sub_219BF44B4();
      v606(v601, v607);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v608;
      v609 = sub_219BDCB24();
      v610 = *(*(v609 - 8) + 56);
      v610(v1225, 1, 1, v609);
      v610(v1226, 1, 1, v609);
      v610(v1227, 1, 1, v609);
      v610(v1228, 1, 1, v609);
      v611 = v608;

      v612 = v1106;
      sub_219BDCB04();
      v613 = v1162;
      v614 = v1235;
      sub_219BEE0B4();
      if (v614)
      {

        (*(v1230 + 8))(v612, v1229);
        v337 = type metadata accessor for MySportsTopicTagFeedGroup;
        v338 = &v1216;
        goto LABEL_80;
      }

      v977 = MEMORY[0x277D84F90];
      v1233 = v611;
      (*(v1230 + 8))(v612, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v978 = v1192;
      (*(v1216 + 16))(v1192, v613, v1215);
      *&v1248 = sub_218DED880(v978);
      *(&v1248 + 1) = v979;
      *&v1249 = v980;
      BYTE8(v1249) = 0;
      v981 = *MEMORY[0x277D6E980];
      v982 = sub_219BE9F84();
      v983 = v1084;
      (*(*(v982 - 8) + 104))(v1084, v981, v982);
      (*(v1214 + 104))(v983, *MEMORY[0x277D6E988], v1213);
      v984 = sub_219BEE004();
      v985 = *(v984 + 16);
      if (v985)
      {
        v1235 = 0;
        v1244 = v977;
        sub_218C33FD0(v985);
        v986 = *(v1243 + 16);
        v987 = *(v1243 + 80);
        v1232 = v984;
        v988 = v984 + ((v987 + 32) & ~v987);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v989 = (v1243 - 8);
        v1234 = v1241 + 32;
        v990 = v1238;
        do
        {
          v991 = v1239;
          v986(v990, v988, v1239);
          v986(v1240, v990, v991);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v989)(v990, v991);
          v992 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v992 + 16) + 1, 1);
            v992 = v1244;
          }

          v994 = *(v992 + 16);
          v993 = *(v992 + 24);
          if (v994 >= v993 >> 1)
          {
            sub_218C34D90(v993 > 1, v994 + 1, 1);
            v992 = v1244;
          }

          *(v992 + 16) = v994 + 1;
          (*(v1241 + 32))(v992 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v994, v1205, v1237);
          v1244 = v992;
          v988 += v1236;
          --v985;
        }

        while (v985);

        v613 = v1162;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v613, v1215);
      v683 = type metadata accessor for MySportsTopicTagFeedGroup;
      v684 = v1184;
      return sub_218864CF4(v684, v683);
    case 0x13uLL:
      v660 = swift_projectBox();
      v661 = v1185;
      sub_218F54C5C(v660, v1185, type metadata accessor for SportsStandingsTagFeedGroup);
      v662 = v1222;
      sub_219BED874();
      v663 = sub_219BEDB64();
      v664 = v1221;
      (*(*(v663 - 8) + 56))(v1221, 1, 1, v663);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v661, v1217);
      v665 = v1220;
      sub_219BEF4D4();
      v666 = sub_219BEF4E4();
      (*(*(v666 - 8) + 56))(v665, 0, 1, v666);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v665, sub_218F54BF4);
      sub_218864CF4(v664, sub_218F54C28);
      v667 = *(v1224 + 8);
      v668 = v1223;
      v667(v662, v1223);
      sub_219BED874();
      v669 = sub_219BF44B4();
      v667(v662, v668);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v669;
      v670 = sub_219BDCB24();
      v671 = *(*(v670 - 8) + 56);
      v671(v1225, 1, 1, v670);
      v671(v1226, 1, 1, v670);
      v671(v1227, 1, 1, v670);
      v671(v1228, 1, 1, v670);
      v672 = v669;

      v673 = v1107;
      sub_219BDCB04();
      v674 = v1163;
      v675 = v1235;
      sub_219BEE0B4();
      if (v675)
      {

        (*(v1230 + 8))(v673, v1229);
        v337 = type metadata accessor for SportsStandingsTagFeedGroup;
        v338 = &v1217;
        goto LABEL_80;
      }

      v1032 = MEMORY[0x277D84F90];
      v1233 = v672;
      (*(v1230 + 8))(v673, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v1033 = v1192;
      (*(v1216 + 16))(v1192, v674, v1215);
      *&v1248 = sub_218DED880(v1033);
      *(&v1248 + 1) = v1034;
      *&v1249 = v1035;
      BYTE8(v1249) = 0;
      v1036 = *MEMORY[0x277D6E980];
      v1037 = sub_219BE9F84();
      v1038 = v1085;
      (*(*(v1037 - 8) + 104))(v1085, v1036, v1037);
      (*(v1214 + 104))(v1038, *MEMORY[0x277D6E988], v1213);
      v1039 = sub_219BEE004();
      v1040 = *(v1039 + 16);
      if (v1040)
      {
        v1235 = 0;
        v1244 = v1032;
        sub_218C33FD0(v1040);
        v1041 = *(v1243 + 16);
        v1042 = *(v1243 + 80);
        v1232 = v1039;
        v1043 = v1039 + ((v1042 + 32) & ~v1042);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v1044 = (v1243 - 8);
        v1234 = v1241 + 32;
        v1045 = v1238;
        do
        {
          v1046 = v1239;
          v1041(v1045, v1043, v1239);
          v1041(v1240, v1045, v1046);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v1044)(v1045, v1046);
          v1047 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v1047 + 16) + 1, 1);
            v1047 = v1244;
          }

          v1049 = *(v1047 + 16);
          v1048 = *(v1047 + 24);
          if (v1049 >= v1048 >> 1)
          {
            sub_218C34D90(v1048 > 1, v1049 + 1, 1);
            v1047 = v1244;
          }

          *(v1047 + 16) = v1049 + 1;
          (*(v1241 + 32))(v1047 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v1049, v1206, v1237);
          v1244 = v1047;
          v1043 += v1236;
          --v1040;
        }

        while (v1040);

        v674 = v1163;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v674, v1215);
      v683 = type metadata accessor for SportsStandingsTagFeedGroup;
      v684 = v1185;
      return sub_218864CF4(v684, v683);
    case 0x14uLL:
      v518 = swift_projectBox();
      v519 = v1186;
      sub_218F54C5C(v518, v1186, type metadata accessor for SportsBracketTagFeedGroup);
      v520 = v1222;
      sub_219BED874();
      v521 = sub_219BEDB64();
      v522 = v1221;
      (*(*(v521 - 8) + 56))(v1221, 1, 1, v521);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v519, v1217);
      v523 = v1220;
      sub_219BEF4D4();
      v524 = sub_219BEF4E4();
      (*(*(v524 - 8) + 56))(v523, 0, 1, v524);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v523, sub_218F54BF4);
      sub_218864CF4(v522, sub_218F54C28);
      v525 = *(v1224 + 8);
      v526 = v1223;
      v525(v520, v1223);
      sub_219BED874();
      v527 = sub_219BF44B4();
      v525(v520, v526);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v527;
      v528 = sub_219BDCB24();
      v529 = *(*(v528 - 8) + 56);
      v529(v1225, 1, 1, v528);
      v529(v1226, 1, 1, v528);
      v529(v1227, 1, 1, v528);
      v529(v1228, 1, 1, v528);
      v530 = v527;

      v531 = v1108;
      sub_219BDCB04();
      v532 = v1165;
      v533 = v1235;
      sub_219BEE0B4();
      if (v533)
      {

        (*(v1230 + 8))(v531, v1229);
        v337 = type metadata accessor for SportsBracketTagFeedGroup;
        v338 = &v1218;
        goto LABEL_80;
      }

      v887 = MEMORY[0x277D84F90];
      v1233 = v530;
      (*(v1230 + 8))(v531, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v888 = v1192;
      (*(v1216 + 16))(v1192, v532, v1215);
      *&v1248 = sub_218DED880(v888);
      *(&v1248 + 1) = v889;
      *&v1249 = v890;
      BYTE8(v1249) = 0;
      v891 = *MEMORY[0x277D6E980];
      v892 = sub_219BE9F84();
      v893 = v1087;
      (*(*(v892 - 8) + 104))(v1087, v891, v892);
      (*(v1214 + 104))(v893, *MEMORY[0x277D6E988], v1213);
      v894 = sub_219BEE004();
      v895 = *(v894 + 16);
      if (v895)
      {
        v1235 = 0;
        v1244 = v887;
        sub_218C33FD0(v895);
        v896 = *(v1243 + 16);
        v897 = *(v1243 + 80);
        v1232 = v894;
        v898 = v894 + ((v897 + 32) & ~v897);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v899 = (v1243 - 8);
        v1234 = v1241 + 32;
        v900 = v1238;
        do
        {
          v901 = v1239;
          v896(v900, v898, v1239);
          v896(v1240, v900, v901);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v899)(v900, v901);
          v902 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v902 + 16) + 1, 1);
            v902 = v1244;
          }

          v904 = *(v902 + 16);
          v903 = *(v902 + 24);
          if (v904 >= v903 >> 1)
          {
            sub_218C34D90(v903 > 1, v904 + 1, 1);
            v902 = v1244;
          }

          *(v902 + 16) = v904 + 1;
          (*(v1241 + 32))(v902 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v904, v1207, v1237);
          v1244 = v902;
          v898 += v1236;
          --v895;
        }

        while (v895);

        v532 = v1165;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v532, v1215);
      v683 = type metadata accessor for SportsBracketTagFeedGroup;
      v684 = v1186;
      return sub_218864CF4(v684, v683);
    case 0x15uLL:
      v550 = swift_projectBox();
      v551 = v1187;
      sub_218F54C5C(v550, v1187, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v552 = v1222;
      sub_219BED874();
      v553 = sub_219BEDB64();
      v554 = v1221;
      (*(*(v553 - 8) + 56))(v1221, 1, 1, v553);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v551, v1217);
      v555 = v1220;
      sub_219BEF4D4();
      v556 = sub_219BEF4E4();
      (*(*(v556 - 8) + 56))(v555, 0, 1, v556);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v555, sub_218F54BF4);
      sub_218864CF4(v554, sub_218F54C28);
      v557 = *(v1224 + 8);
      v558 = v1223;
      v557(v552, v1223);
      sub_219BED874();
      v559 = sub_219BF44B4();
      v557(v552, v558);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v559;
      v560 = sub_219BDCB24();
      v561 = *(*(v560 - 8) + 56);
      v561(v1225, 1, 1, v560);
      v561(v1226, 1, 1, v560);
      v561(v1227, 1, 1, v560);
      v561(v1228, 1, 1, v560);
      v562 = v559;

      v563 = v1109;
      sub_219BDCB04();
      v564 = v1166;
      v565 = v1235;
      sub_219BEE0B4();
      if (v565)
      {

        (*(v1230 + 8))(v563, v1229);
        v337 = type metadata accessor for SportsBoxScoresTagFeedGroup;
        v338 = &v1219;
        goto LABEL_80;
      }

      v923 = MEMORY[0x277D84F90];
      v1233 = v562;
      (*(v1230 + 8))(v563, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v924 = v1192;
      (*(v1216 + 16))(v1192, v564, v1215);
      *&v1248 = sub_218DED880(v924);
      *(&v1248 + 1) = v925;
      *&v1249 = v926;
      BYTE8(v1249) = 0;
      v927 = *MEMORY[0x277D6E980];
      v928 = sub_219BE9F84();
      v929 = v1088;
      (*(*(v928 - 8) + 104))(v1088, v927, v928);
      (*(v1214 + 104))(v929, *MEMORY[0x277D6E988], v1213);
      v930 = sub_219BEE004();
      v931 = *(v930 + 16);
      if (v931)
      {
        v1235 = 0;
        v1244 = v923;
        sub_218C33FD0(v931);
        v932 = *(v1243 + 16);
        v933 = *(v1243 + 80);
        v1232 = v930;
        v934 = v930 + ((v933 + 32) & ~v933);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v935 = (v1243 - 8);
        v1234 = v1241 + 32;
        v936 = v1238;
        do
        {
          v937 = v1239;
          v932(v936, v934, v1239);
          v932(v1240, v936, v937);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v935)(v936, v937);
          v938 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v938 + 16) + 1, 1);
            v938 = v1244;
          }

          v940 = *(v938 + 16);
          v939 = *(v938 + 24);
          if (v940 >= v939 >> 1)
          {
            sub_218C34D90(v939 > 1, v940 + 1, 1);
            v938 = v1244;
          }

          *(v938 + 16) = v940 + 1;
          (*(v1241 + 32))(v938 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v940, v1208, v1237);
          v1244 = v938;
          v934 += v1236;
          --v931;
        }

        while (v931);

        v564 = v1166;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v564, v1215);
      v683 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      v684 = v1187;
      return sub_218864CF4(v684, v683);
    case 0x16uLL:
      v643 = swift_projectBox();
      v644 = v1188;
      sub_218F54C5C(v643, v1188, type metadata accessor for SportsEventInfoTagFeedGroup);
      v645 = v1222;
      sub_219BED874();
      v646 = sub_219BEDB64();
      v647 = v1221;
      (*(*(v646 - 8) + 56))(v1221, 1, 1, v646);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v644, v1217);
      v648 = v1220;
      sub_219BEF4D4();
      v649 = sub_219BEF4E4();
      (*(*(v649 - 8) + 56))(v648, 0, 1, v649);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v648, sub_218F54BF4);
      sub_218864CF4(v647, sub_218F54C28);
      v650 = *(v1224 + 8);
      v651 = v1223;
      v650(v645, v1223);
      sub_219BED874();
      v652 = sub_219BF44B4();
      v650(v645, v651);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v652;
      v653 = sub_219BDCB24();
      v654 = *(*(v653 - 8) + 56);
      v654(v1225, 1, 1, v653);
      v654(v1226, 1, 1, v653);
      v654(v1227, 1, 1, v653);
      v654(v1228, 1, 1, v653);
      v655 = v652;

      v656 = v1111;
      sub_219BDCB04();
      v657 = v1167;
      v658 = v1235;
      sub_219BEE0B4();
      if (v658)
      {

        (*(v1230 + 8))(v656, v1229);
        v337 = type metadata accessor for SportsEventInfoTagFeedGroup;
        v338 = &v1220;
        goto LABEL_80;
      }

      v1014 = MEMORY[0x277D84F90];
      v1233 = v655;
      (*(v1230 + 8))(v656, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v1015 = v1192;
      (*(v1216 + 16))(v1192, v657, v1215);
      *&v1248 = sub_218DED880(v1015);
      *(&v1248 + 1) = v1016;
      *&v1249 = v1017;
      BYTE8(v1249) = 0;
      v1018 = *MEMORY[0x277D6E980];
      v1019 = sub_219BE9F84();
      v1020 = v1089;
      (*(*(v1019 - 8) + 104))(v1089, v1018, v1019);
      (*(v1214 + 104))(v1020, *MEMORY[0x277D6E988], v1213);
      v1021 = sub_219BEE004();
      v1022 = *(v1021 + 16);
      if (v1022)
      {
        v1235 = 0;
        v1244 = v1014;
        sub_218C33FD0(v1022);
        v1023 = *(v1243 + 16);
        v1024 = *(v1243 + 80);
        v1232 = v1021;
        v1025 = v1021 + ((v1024 + 32) & ~v1024);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v1026 = (v1243 - 8);
        v1234 = v1241 + 32;
        v1027 = v1238;
        do
        {
          v1028 = v1239;
          v1023(v1027, v1025, v1239);
          v1023(v1240, v1027, v1028);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v1026)(v1027, v1028);
          v1029 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v1029 + 16) + 1, 1);
            v1029 = v1244;
          }

          v1031 = *(v1029 + 16);
          v1030 = *(v1029 + 24);
          if (v1031 >= v1030 >> 1)
          {
            sub_218C34D90(v1030 > 1, v1031 + 1, 1);
            v1029 = v1244;
          }

          *(v1029 + 16) = v1031 + 1;
          (*(v1241 + 32))(v1029 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v1031, v1210, v1237);
          v1244 = v1029;
          v1025 += v1236;
          --v1022;
        }

        while (v1022);

        v657 = v1167;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v657, v1215);
      v683 = type metadata accessor for SportsEventInfoTagFeedGroup;
      v684 = v1188;
      return sub_218864CF4(v684, v683);
    case 0x17uLL:
      v677 = swift_projectBox();
      v312 = v1125;
      sub_218F54C5C(v677, v1125, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_77;
    case 0x18uLL:
      v419 = swift_projectBox();
      v312 = v1126;
      sub_218F54C5C(v419, v1126, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_77;
    case 0x19uLL:
      v418 = swift_projectBox();
      v312 = v1127;
      sub_218F54C5C(v418, v1127, type metadata accessor for SportsEventArticlesTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_77;
    case 0x1AuLL:
      v682 = swift_projectBox();
      v312 = v1128;
      sub_218F54C5C(v682, v1128, type metadata accessor for HighlightsTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_77;
    case 0x1BuLL:
      v318 = swift_projectBox();
      v312 = v1130;
      sub_218F54C5C(v318, v1130, type metadata accessor for ForYouTagFeedGroup);
      sub_218F51E50(v1233, v312 + *(v1129 + 20), MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_77;
    case 0x1CuLL:
      v678 = swift_projectBox();
      v312 = v1131;
      sub_218F54C5C(v678, v1131, type metadata accessor for ChannelRecipesTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_77;
    case 0x1DuLL:
      v679 = swift_projectBox();
      v312 = v1132;
      sub_218F54C5C(v679, v1132, type metadata accessor for ForYouRecipesTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_77;
    case 0x1EuLL:
      v639 = swift_projectBox();
      v312 = v1133;
      sub_218F54C5C(v639, v1133, type metadata accessor for RecentStoriesTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_77;
    case 0x1FuLL:
      v495 = swift_projectBox();
      v496 = v1135;
      sub_218F54C5C(v495, v1135, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v497 = v1234;
      if (sub_218F53670())
      {
        sub_218F52E84(v497, v1231);
        v498 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
        return sub_218864CF4(v496, v498);
      }

      sub_218F51E50(v1233, v496, MEMORY[0x277D84FA0], v1232, v1231);
      v517 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_91;
    case 0x20uLL:
      v640 = swift_projectBox();
      v312 = v1136;
      sub_218F54C5C(v640, v1136, type metadata accessor for DateRangeTagFeedGroup);
      sub_218F51E50(v1233, v312 + *(v1134 + 20), MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for DateRangeTagFeedGroup;
      goto LABEL_77;
    case 0x21uLL:
      v372 = swift_projectBox();
      v312 = v1137;
      sub_218F54C5C(v372, v1137, type metadata accessor for SportsOnboardingTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_77;
    case 0x22uLL:
      v319 = swift_projectBox();
      v312 = v1138;
      sub_218F54C5C(v319, v1138, type metadata accessor for SportsMastheadTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_77;
    case 0x23uLL:
      v316 = swift_projectBox();
      v312 = v1139;
      sub_218F54C5C(v316, v1139, type metadata accessor for SportsEventTopicTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_77;
    case 0x24uLL:
      v317 = swift_projectBox();
      v312 = v1140;
      sub_218F54C5C(v317, v1140, type metadata accessor for PuzzleListTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_77;
    case 0x25uLL:
      v314 = swift_projectBox();
      v312 = v1141;
      sub_218F54C5C(v314, v1141, type metadata accessor for PuzzleArchiveTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_77;
    case 0x26uLL:
      v680 = swift_projectBox();
      v496 = v1142;
      sub_218F54C5C(v680, v1142, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v681 = v1234;
      if (sub_218F53670())
      {
        sub_218F52E84(v681, v1231);
        v498 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
        return sub_218864CF4(v496, v498);
      }

      sub_218F51E50(v1233, v496, MEMORY[0x277D84FA0], v1232, v1231);
      v517 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_91;
    case 0x27uLL:
      v659 = swift_projectBox();
      v312 = v1143;
      sub_218F54C5C(v659, v1143, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_77;
    case 0x28uLL:
      v393 = swift_projectBox();
      v312 = v1144;
      sub_218F54C5C(v393, v1144, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_77;
    case 0x29uLL:
      v515 = swift_projectBox();
      v496 = v1145;
      sub_218F54C5C(v515, v1145, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v516 = v1234;
      if (sub_218F53838())
      {
        sub_218F51E50(v1233, v496, MEMORY[0x277D84FA0], v1232, v1231);
        v517 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
        goto LABEL_91;
      }

      sub_218F52E84(v516, v1231);
      v498 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      return sub_218864CF4(v496, v498);
    case 0x2AuLL:
      v676 = swift_projectBox();
      v312 = v1146;
      sub_218F54C5C(v676, v1146, type metadata accessor for AffinityTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_77;
    case 0x2BuLL:
      v311 = swift_projectBox();
      v312 = v1147;
      sub_218F54C5C(v311, v1147, type metadata accessor for SponsoredBannerTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_77;
    case 0x2CuLL:
      v339 = swift_projectBox();
      v340 = v1190;
      sub_218F54C5C(v339, v1190, type metadata accessor for LatestRecipesTagFeedGroup);
      v341 = v1222;
      sub_219BED874();
      v342 = sub_219BEDB64();
      v343 = v1221;
      (*(*(v342 - 8) + 56))(v1221, 1, 1, v342);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v340, v1217);
      v344 = v1220;
      sub_219BEF4D4();
      v345 = sub_219BEF4E4();
      (*(*(v345 - 8) + 56))(v344, 0, 1, v345);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v344, sub_218F54BF4);
      sub_218864CF4(v343, sub_218F54C28);
      v346 = *(v1224 + 8);
      v347 = v1223;
      v346(v341, v1223);
      sub_219BED874();
      v348 = sub_219BF44B4();
      v346(v341, v347);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v348;
      v349 = sub_219BDCB24();
      v350 = *(*(v349 - 8) + 56);
      v350(v1225, 1, 1, v349);
      v350(v1226, 1, 1, v349);
      v350(v1227, 1, 1, v349);
      v350(v1228, 1, 1, v349);
      v351 = v348;

      v352 = v1112;
      sub_219BDCB04();
      v353 = v1168;
      v354 = v1235;
      sub_219BEE0B4();
      if (v354)
      {

        (*(v1230 + 8))(v352, v1229);
        v337 = type metadata accessor for LatestRecipesTagFeedGroup;
        v338 = &v1222;
        goto LABEL_80;
      }

      v723 = MEMORY[0x277D84F90];
      v1233 = v351;
      (*(v1230 + 8))(v352, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v724 = v1192;
      (*(v1216 + 16))(v1192, v353, v1215);
      *&v1248 = sub_218DED880(v724);
      *(&v1248 + 1) = v725;
      *&v1249 = v726;
      BYTE8(v1249) = 0;
      v727 = *MEMORY[0x277D6E980];
      v728 = sub_219BE9F84();
      v729 = v1090;
      (*(*(v728 - 8) + 104))(v1090, v727, v728);
      (*(v1214 + 104))(v729, *MEMORY[0x277D6E988], v1213);
      v730 = sub_219BEE004();
      v731 = *(v730 + 16);
      if (v731)
      {
        v1235 = 0;
        v1244 = v723;
        sub_218C33FD0(v731);
        v732 = *(v1243 + 16);
        v733 = *(v1243 + 80);
        v1232 = v730;
        v734 = v730 + ((v733 + 32) & ~v733);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v735 = (v1243 - 8);
        v1234 = v1241 + 32;
        v736 = v1238;
        do
        {
          v737 = v1239;
          v732(v736, v734, v1239);
          v732(v1240, v736, v737);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
          sub_219BE75D4();
          (*v735)(v736, v737);
          v738 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v738 + 16) + 1, 1);
            v738 = v1244;
          }

          v740 = *(v738 + 16);
          v739 = *(v738 + 24);
          if (v740 >= v739 >> 1)
          {
            sub_218C34D90(v739 > 1, v740 + 1, 1);
            v738 = v1244;
          }

          *(v738 + 16) = v740 + 1;
          (*(v1241 + 32))(v738 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v740, v1211, v1237);
          v1244 = v738;
          v734 += v1236;
          --v731;
        }

        while (v731);

        v353 = v1168;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE81A4();

      (*(v1216 + 8))(v353, v1215);
      v683 = type metadata accessor for LatestRecipesTagFeedGroup;
      v684 = v1190;
      return sub_218864CF4(v684, v683);
    case 0x2DuLL:
      v641 = swift_projectBox();
      v496 = v1148;
      sub_218F54C5C(v641, v1148, type metadata accessor for SavedRecipesTagFeedGroup);
      v642 = v1234;
      if (!sub_218F53670())
      {
        sub_218F51E50(v1233, v496, MEMORY[0x277D84FA0], v1232, v1231);
        v517 = type metadata accessor for SavedRecipesTagFeedGroup;
LABEL_91:
        v683 = v517;
        v684 = v496;
        return sub_218864CF4(v684, v683);
      }

      sub_218F52E84(v642, v1231);
      v498 = type metadata accessor for SavedRecipesTagFeedGroup;
      return sub_218864CF4(v496, v498);
    case 0x2EuLL:
      v685 = swift_projectBox();
      v686 = v1191;
      sub_218F54C5C(v685, v1191, type metadata accessor for TrendingRecipesTagFeedGroup);
      v687 = v1222;
      sub_219BED874();
      v688 = sub_219BEDB64();
      v689 = v1221;
      (*(*(v688 - 8) + 56))(v1221, 1, 1, v688);
      v1211 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v686, v1217);
      v690 = v1220;
      sub_219BEF4D4();
      v691 = sub_219BEF4E4();
      (*(*(v691 - 8) + 56))(v690, 0, 1, v691);
      sub_219BED894();
      sub_21905F818();
      sub_218954350();
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
      sub_219BE69F4();

      sub_218864CF4(v690, sub_218F54BF4);
      sub_218864CF4(v689, sub_218F54C28);
      v692 = *(v1224 + 8);
      v693 = v1223;
      v692(v687, v1223);
      sub_219BED874();
      v694 = sub_219BF44B4();
      v692(v687, v693);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v694;
      v695 = sub_219BDCB24();
      v696 = *(*(v695 - 8) + 56);
      v696(v1225, 1, 1, v695);
      v696(v1226, 1, 1, v695);
      v696(v1227, 1, 1, v695);
      v696(v1228, 1, 1, v695);
      v697 = v694;

      v698 = v1113;
      sub_219BDCB04();
      v699 = v1169;
      v700 = v1235;
      sub_219BEE0B4();
      if (v700)
      {

        (*(v1230 + 8))(v698, v1229);
        v337 = type metadata accessor for TrendingRecipesTagFeedGroup;
        v338 = &v1223;
LABEL_80:
        sub_218864CF4(*(v338 - 32), v337);
        v683 = sub_218C8A15C;
        v684 = &v1248;
      }

      else
      {
        v1050 = MEMORY[0x277D84F90];
        v1233 = v697;
        (*(v1230 + 8))(v698, v1229);

        sub_218864CF4(&v1248, sub_218C8A15C);
        v1051 = v1192;
        (*(v1216 + 16))(v1192, v699, v1215);
        *&v1248 = sub_218DED880(v1051);
        *(&v1248 + 1) = v1052;
        *&v1249 = v1053;
        BYTE8(v1249) = 0;
        v1054 = *MEMORY[0x277D6E980];
        v1055 = sub_219BE9F84();
        v1056 = v1091;
        (*(*(v1055 - 8) + 104))(v1091, v1054, v1055);
        (*(v1214 + 104))(v1056, *MEMORY[0x277D6E988], v1213);
        v1057 = sub_219BEE004();
        v1058 = *(v1057 + 16);
        if (v1058)
        {
          v1235 = 0;
          v1244 = v1050;
          sub_218C33FD0(v1058);
          v1059 = *(v1243 + 16);
          v1060 = *(v1243 + 80);
          v1232 = v1057;
          v1061 = v1057 + ((v1060 + 32) & ~v1060);
          v1236 = *(v1243 + 72);
          v1243 += 16;
          v1062 = (v1243 - 8);
          v1234 = v1241 + 32;
          v1063 = v1238;
          do
          {
            v1064 = v1239;
            v1059(v1063, v1061, v1239);
            v1059(v1240, v1063, v1064);
            sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
            sub_219BE75D4();
            (*v1062)(v1063, v1064);
            v1065 = v1244;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_218C34D90(0, *(v1065 + 16) + 1, 1);
              v1065 = v1244;
            }

            v1067 = *(v1065 + 16);
            v1066 = *(v1065 + 24);
            if (v1067 >= v1066 >> 1)
            {
              sub_218C34D90(v1066 > 1, v1067 + 1, 1);
              v1065 = v1244;
            }

            *(v1065 + 16) = v1067 + 1;
            (*(v1241 + 32))(v1065 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v1067, v1212, v1237);
            v1244 = v1065;
            v1061 += v1236;
            --v1058;
          }

          while (v1058);

          v699 = v1169;
        }

        else
        {
        }

        sub_218DED7F0();
        sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
        sub_219BE81A4();

        (*(v1216 + 8))(v699, v1215);
        v683 = type metadata accessor for TrendingRecipesTagFeedGroup;
        v684 = v1191;
      }

      return sub_218864CF4(v684, v683);
    case 0x2FuLL:
      v315 = swift_projectBox();
      v312 = v1149;
      sub_218F54C5C(v315, v1149, type metadata accessor for TopicRecipesTagFeedGroup);
      sub_218F51E50(v1233, v312, MEMORY[0x277D84FA0], v1232, v1231);
      v313 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_77:
      v683 = v313;
      v684 = v312;
      return sub_218864CF4(v684, v683);
    default:
      v304 = &v1070 - v302;
      v305 = swift_projectBox();
      sub_218F54C5C(v305, v304, type metadata accessor for TagFeedSectionGapDescriptor);
      v306 = v304;
      sub_218F54C5C(v304, v301, type metadata accessor for TagFeedSectionGapDescriptor);
      v307 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
      if ((*(*(v307 - 8) + 48))(v301, 1, v307) == 1)
      {
        v1245 = 0;
        v1246 = 0;
        v1244 = 1;
        v1247 = 3;
        v308 = v1214;
        v309 = v1213;
        (*(v1214 + 104))(v297, *MEMORY[0x277D6E9B0], v1213);
        sub_218954350();
        sub_218F54D18();
        v1248 = 0u;
        v1249 = 0u;
        v1250 = 0;
        v310 = v1235;
        sub_219BEE0A4();
        sub_218864CF4(&v1248, sub_218C8A15C);
        if (v310)
        {
          (*(v308 + 8))(v297, v309);
        }

        else
        {
          v1068 = sub_219BEE004();
          (*(v1216 + 8))(v240, v1215);
          sub_218F42AB8(v1068);

          sub_218DED7F0();
          sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
          sub_219BE81A4();
        }

        v683 = type metadata accessor for TagFeedSectionGapDescriptor;
        v684 = v306;
        return sub_218864CF4(v684, v683);
      }

      if (*v1170 != 1)
      {
        v1248 = 0uLL;
        *&v1249 = 0;
        BYTE8(v1249) = 3;
        (*(v1214 + 104))(v292, *MEMORY[0x277D6E9B0], v1213);
        sub_218F42D28(v1234);
        sub_218DED7F0();
        sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
LABEL_300:
        sub_219BE81A4();
        sub_218864CF4(v306, type metadata accessor for TagFeedSectionGapDescriptor);
        v684 = v301;
        v683 = type metadata accessor for TagFeedSectionGapDescriptor;
        return sub_218864CF4(v684, v683);
      }

      *v1170 = 0;
      v1245 = 0;
      v1246 = 0;
      v1244 = 1;
      v1247 = 3;
      v701 = v1214;
      v702 = v1213;
      (*(v1214 + 104))(v295, *MEMORY[0x277D6E9B0], v1213);
      sub_218954350();
      sub_218F54D18();
      v1248 = 0u;
      v1249 = 0u;
      v1250 = 0;
      v703 = v1071;
      v704 = v1235;
      sub_219BEE0A4();
      if (!v704)
      {
        sub_218864CF4(&v1248, sub_218C8A15C);
        v1069 = sub_219BEE004();
        (*(v1216 + 8))(v703, v1215);
        sub_218F42AB8(v1069);

        sub_218DED7F0();
        sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
        goto LABEL_300;
      }

      sub_218864CF4(&v1248, sub_218C8A15C);
      (*(v701 + 8))(v295, v702);
      sub_218864CF4(v306, type metadata accessor for TagFeedSectionGapDescriptor);
      return sub_218864CF4(v301, type metadata accessor for TagFeedSectionGapDescriptor);
  }
}

uint64_t sub_218F51E50@<X0>(void (*a1)(char *, char *, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v88 = a4;
  v90 = a3;
  v93 = a1;
  v79 = a5;
  v73 = type metadata accessor for TagFeedLayoutModel();
  MEMORY[0x28223BE20](v73);
  v97 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BEF974();
  v99 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934();
  v94 = v8;
  v98 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v71 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BE9FA4();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v78 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54EA4(0, &qword_280EE9048, MEMORY[0x277D6D1A0], MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v87 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v86 = &v70 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v70 - v17;
  MEMORY[0x28223BE20](v16);
  v84 = &v70 - v18;
  v19 = sub_219BDCB14();
  v91 = *(v19 - 8);
  v92 = v19;
  MEMORY[0x28223BE20](v19);
  v83 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BEE074();
  v76 = *(v77 - 8);
  v21 = MEMORY[0x28223BE20](v77);
  v72 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v89 = &v70 - v23;
  v24 = sub_219BED8D4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54BF4(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54C28(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_219BF1904();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED874();
  v36 = sub_219BEDB64();
  (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
  v37 = *(v25 + 16);
  v80 = a2;
  v37(v27, a2, v24);
  sub_219BEF4D4();
  v38 = sub_219BEF4E4();
  (*(*(v38 - 8) + 56))(v30, 0, 1, v38);
  sub_219BED894();
  sub_21905F818();
  sub_218954350();
  sub_218F54CC4();
  sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
  sub_219BE69F4();

  sub_218864CF4(v30, sub_218F54BF4);
  sub_218864CF4(v33, sub_218F54C28);
  v39 = *(v81 + 8);
  v40 = v82;
  v39(v35, v82);
  sub_219BED874();
  v41 = sub_219BF44B4();
  v39(v35, v40);
  v102 = sub_219BF3594();
  v103 = MEMORY[0x277D33EB8];
  v101[0] = v41;
  v42 = sub_219BDCB24();
  v43 = *(*(v42 - 8) + 56);
  v43(v84, 1, 1, v42);
  v43(v85, 1, 1, v42);
  v43(v86, 1, 1, v42);
  v44 = v42;
  v45 = v83;
  v43(v87, 1, 1, v44);

  v46 = v89;
  sub_219BDCB04();
  v47 = v100;
  sub_219BEE0B4();
  if (v47)
  {
    v91[1](v45, v92);

    return sub_218864CF4(v101, sub_218C8A15C);
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
    v87 = 0;
    v88 = v41;
    v91[1](v45, v92);

    sub_218864CF4(v101, sub_218C8A15C);
    v50 = v76;
    v51 = v72;
    v52 = v77;
    (*(v76 + 16))(v72, v46, v77);
    v101[0] = sub_218DED880(v51);
    v101[1] = v53;
    v101[2] = v54;
    LOBYTE(v102) = 0;
    v55 = *MEMORY[0x277D6E980];
    v56 = sub_219BE9F84();
    v57 = v78;
    (*(*(v56 - 8) + 104))(v78, v55, v56);
    (*(v74 + 104))(v57, *MEMORY[0x277D6E988], v75);
    v58 = sub_219BEE004();
    v59 = *(v58 + 16);
    if (v59)
    {
      v104 = v49;
      sub_218C34D90(0, v59, 0);
      v100 = v104;
      v60 = *(v99 + 16);
      v61 = (*(v99 + 80) + 32) & ~*(v99 + 80);
      v86 = v58;
      v62 = v58 + v61;
      v92 = *(v99 + 72);
      v93 = v60;
      v90 = v98 + 32;
      v91 = (v99 + 8);
      v63 = v71;
      v99 += 16;
      do
      {
        v64 = v95;
        v65 = v96;
        v66 = v93;
        v93(v95, v62, v96);
        v66(v97, v64, v65);
        sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
        sub_219BE75D4();
        (*v91)(v64, v65);
        v104 = v100;
        v68 = *(v100 + 16);
        v67 = *(v100 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_218C34D90(v67 > 1, v68 + 1, 1);
          v100 = v104;
        }

        v69 = v100;
        *(v100 + 16) = v68 + 1;
        (*(v98 + 32))(v69 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v68, v63, v94);
        v62 += v92;
        --v59;
      }

      while (v59);

      v52 = v77;
      v50 = v76;
    }

    else
    {

      v100 = MEMORY[0x277D84F90];
    }

    sub_218DED7F0();
    sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
    sub_219BE81A4();

    return (*(v50 + 8))(v89, v52);
  }
}

uint64_t sub_218F52B40(uint64_t a1)
{
  v2 = sub_219BDCAA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54C5C(a1, v8, sub_21898BBC4);
  sub_218954350();
  v13 = v12;
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v8, 1, v12) == 1)
  {
    sub_218864CF4(v8, sub_21898BBC4);
    v15 = type metadata accessor for TagFeedGroup();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    return sub_218864CF4(v11, sub_218A1299C);
  }

  sub_219BE6934();
  v16 = v20[1];
  (*(v14 + 8))(v8, v13);
  sub_21943EC40(v16, v11);

  v17 = type metadata accessor for TagFeedGroup();
  if ((*(*(v17 - 8) + 48))(v11, 1, v17) == 1)
  {
    return sub_218864CF4(v11, sub_218A1299C);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_218864CF4(v11, type metadata accessor for TagFeedGroup);
  if (!EnumCaseMultiPayload)
  {
    sub_219BEE084();
    sub_219BDCA94();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_218F52E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = type metadata accessor for TagFeedLayoutModel();
  MEMORY[0x28223BE20](v45);
  v43 = (v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21898BF70();
  v42 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934();
  v41 = v8;
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE9FA4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 3;
  v15 = *MEMORY[0x277D6E980];
  v16 = sub_219BE9F84();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(v12 + 104))(v14, *MEMORY[0x277D6E988], v11);
  sub_218954350();
  v18 = v17;
  v19 = sub_218F54E5C(&unk_280EE5850, sub_218954350);
  v20 = sub_219BF5E44();
  if (!v20)
  {
LABEL_7:
    sub_218DED7F0();
    sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
    return sub_219BE81A4();
  }

  v21 = v20;
  v47 = MEMORY[0x277D84F90];
  sub_218C34D90(0, v20 & ~(v20 >> 63), 0);
  v22 = v47;
  result = sub_219BF5DF4();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v36[1] = v14;
    v36[2] = a2;
    v39 = (v6 + 16);
    v38 = *MEMORY[0x277D32830];
    v36[3] = v44 + 32;
    v37 = (v6 + 8);
    v24 = v40;
    do
    {
      v25 = v18;
      v26 = sub_219BF5EC4();
      v27 = v19;
      v28 = v42;
      (*v39)(v24);
      v26(v46, 0);
      v29 = swift_allocObject();
      *(v29 + 16) = sub_219BE5F84();
      *(v29 + 24) = v30;
      v31 = v43;
      *v43 = v29;
      v32 = sub_219BEF974();
      (*(*(v32 - 8) + 104))(v31, v38, v32);
      sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
      sub_219BE75D4();
      (*v37)(v24, v28);
      v47 = v22;
      v33 = a1;
      v35 = *(v22 + 16);
      v34 = *(v22 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_218C34D90(v34 > 1, v35 + 1, 1);
        v22 = v47;
      }

      *(v22 + 16) = v35 + 1;
      (*(v44 + 32))(v22 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v35, v10, v41);
      sub_219BF5E94();
      --v21;
      a1 = v33;
      v18 = v25;
      v19 = v27;
    }

    while (v21);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_218F5341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_218F43294(a1, a2, a3, a4);
}

void sub_218F534E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218954408();
    v10 = v9;
    v11 = sub_218F54E5C(a3, sub_218954408);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_218F53578(uint64_t a1, uint64_t a2)
{
  sub_21898BBF8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F535DC(uint64_t a1, uint64_t a2)
{
  sub_218F54EA4(0, &qword_280E8E970, sub_21898BBF8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_218F53670()
{
  sub_218A12934(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C874C4(v2);
  sub_21898BF70();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v2, 1, v6) == 1)
  {
    v9 = sub_218A12934;
    v10 = v2;
  }

  else
  {
    sub_219BE5FC4();
    (*(v8 + 8))(v2, v7);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_219BE5B84();
      v12 = v11;

      return v12 == 0.0;
    }

    v9 = type metadata accessor for TagFeedModel;
    v10 = v5;
  }

  sub_218864CF4(v10, v9);
  return 0;
}

uint64_t sub_218F53838()
{
  v97 = sub_219BF2934();
  v72 = *(v97 - 8);
  v0 = MEMORY[0x28223BE20](v97);
  v96 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v95 = &v70 - v2;
  v93 = sub_219BF3464();
  v71 = *(v93 - 8);
  v3 = MEMORY[0x28223BE20](v93);
  v79 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v87 = &v70 - v5;
  v92 = sub_219BF1D54();
  v70 = *(v92 - 8);
  v6 = MEMORY[0x28223BE20](v92);
  v78 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v70 - v8;
  v9 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v9);
  v83 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7328();
  v82 = v11;
  v88 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v81 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_219BEEAD4();
  v89 = *(v98 - 8);
  v13 = MEMORY[0x28223BE20](v98);
  v80 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v91 = &v70 - v16;
  MEMORY[0x28223BE20](v15);
  v94 = &v70 - v17;
  sub_21898BF70();
  v19 = v18;
  v85 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54DC8();
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BEA4();
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v70 - v32;
  sub_218954350();
  sub_219BE6974();
  v74 = v28;
  v34 = *(v28 + 16);
  v73 = v33;
  v34(v31, v33, v27);
  sub_218F54E5C(&qword_280EE7570, sub_21898BEA4);
  sub_219BF56A4();
  v35 = *(v23 + 44);
  sub_218F54E5C(&qword_280EE7568, sub_21898BEA4);
  sub_219BF5E84();
  if (*&v25[v35] == v101[0])
  {
    v88 = MEMORY[0x277D84F90];
  }

  else
  {
    v90 = (v85 + 16);
    v85 += 8;
    v76 = (v88 + 4);
    v75 = v88 + 1;
    v84 = (v89 + 32);
    v88 = MEMORY[0x277D84F90];
    v55 = v83;
    v77 = v9;
    do
    {
      v56 = sub_219BF5EC4();
      (*v90)(v21);
      v56(v101, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v57 = v81;
        v58 = v55;
        v59 = v82;
        (*v76)(v81, v58, v82);
        v60 = v19;
        v61 = v80;
        sub_219BF07D4();
        (*v75)(v57, v59);
        v62 = v21;
        v63 = v21;
        v64 = v60;
        (*v85)(v63, v60);
        v65 = *v84;
        (*v84)(v91, v61, v98);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v66 = v88;
        }

        else
        {
          v66 = sub_2191F97A0(0, v88[2] + 1, 1, v88);
        }

        v68 = v66[2];
        v67 = v66[3];
        v19 = v64;
        if (v68 >= v67 >> 1)
        {
          v66 = sub_2191F97A0(v67 > 1, v68 + 1, 1, v66);
        }

        v21 = v62;
        v66[2] = v68 + 1;
        v69 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v88 = v66;
        v65(v66 + v69 + *(v89 + 72) * v68, v91, v98);
        v55 = v83;
      }

      else
      {
        (*v85)(v21, v19);
        sub_218864CF4(v55, type metadata accessor for TagFeedModel);
      }

      sub_219BF5E84();
    }

    while (*&v25[v35] != v101[0]);
  }

  sub_218864CF4(v25, sub_218F54DC8);
  (*(v74 + 8))(v73, v27);
  v36 = v88[2];
  if (!v36)
  {

    return 0;
  }

  v80 = 0;
  v85 = *(v89 + 16);
  v37 = v88 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
  v81 = *(v89 + 72);
  v91 = (v70 + 8);
  v90 = (v71 + 8);
  LODWORD(v84) = *MEMORY[0x277D33A20];
  v83 = (v72 + 104);
  v38 = (v72 + 8);
  v82 = (v89 + 8);
  v89 += 16;
  (v85)(v94, v37, v98);
  while (1)
  {
    v39 = v86;
    sub_219BEEAB4();
    v40 = v87;
    sub_219BF1D44();
    v41 = *v91;
    (*v91)(v39, v92);
    sub_219BF3444();
    v42 = *v90;
    (*v90)(v40, v93);
    (*v83)(v96, v84, v97);
    sub_218F54E5C(&qword_27CC0C710, MEMORY[0x277D33A28]);
    sub_219BF5874();
    sub_219BF5874();
    if (v101[0] == v99 && v101[1] == v100)
    {
      v43 = *v38;
      v44 = v97;
      (*v38)(v96, v97);
      v43(v95, v44);
    }

    else
    {
      v45 = sub_219BF78F4();
      v46 = *v38;
      v47 = v97;
      (*v38)(v96, v97);
      v46(v95, v47);

      if ((v45 & 1) == 0)
      {
        (*v82)(v94, v98);
        goto LABEL_6;
      }
    }

    v48 = v78;
    v49 = v94;
    sub_219BEEAB4();
    v50 = v79;
    sub_219BF1D44();
    v41(v48, v92);
    sub_219BF3434();
    v52 = v51;
    v53 = v51;
    (v42)(v50, v93);
    result = (*v82)(v49, v98);
    if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v52 <= -9.22337204e18)
    {
      goto LABEL_29;
    }

    if (v52 >= 9.22337204e18)
    {
      goto LABEL_30;
    }

    v80 = v52;
LABEL_6:
    v37 = &v81[v37];
    if (!--v36)
    {

      return v80 > 0;
    }

    (v85)(v94, v37, v98);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}