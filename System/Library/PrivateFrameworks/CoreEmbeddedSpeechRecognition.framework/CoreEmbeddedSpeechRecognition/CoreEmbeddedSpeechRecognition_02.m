uint64_t sub_225F32368(uint64_t a1)
{
  v5 = *(v1 + 152);

  if (v5)
  {
    sub_2260998E8();
    sub_2260998E8();
    swift_beginAccess();
    v3 = *(v5 + 168);
    *(v5 + 168) = a1;

    swift_endAccess();
  }

  return result;
}

uint64_t sub_225F3242C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 152);

  if (v7)
  {
    sub_2260998E8();
    sub_2260998E8();
    swift_beginAccess();
    v4 = *(v7 + 184);
    *(v7 + 176) = a1;
    *(v7 + 184) = a2;

    swift_endAccess();
  }

  return result;
}

uint64_t sub_225F32504()
{
  v4 = *(v0 + 128);
  MEMORY[0x277D82BE0](v4);
  if (v4)
  {
    [v4 markRecognition];
    MEMORY[0x277D82BD8](v4);
  }

  v2 = *(v3 + 136);

  if (v2)
  {
    sub_2260321B8();
  }

  return result;
}

uint64_t sub_225F325D4(void *a1)
{
  v249 = a1;
  v238 = sub_225F33FE4;
  v239 = sub_225F34100;
  v240 = sub_225EF7450;
  v241 = sub_225EF7B84;
  v242 = sub_225EF7434;
  v243 = sub_225EF7434;
  v244 = sub_225EF7B90;
  v245 = "Fatal error";
  v246 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v247 = "CoreEmbeddedSpeechRecognition/CESAEvaluationRecord.swift";
  v304 = 0;
  v303 = 0;
  v302 = 0;
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v297 = 0;
  v298 = 0;
  v295 = 0;
  v296 = 0;
  v294 = 0;
  v293 = 0;
  v292[0] = 0;
  v292[1] = 0;
  v287 = 0;
  v284 = 0;
  v283[0] = 0;
  v283[1] = 0;
  v280 = 0;
  v278 = 0;
  v279 = 0;
  v276 = 0;
  v275 = 0;
  v273 = 0;
  v274 = 0;
  v271 = 0;
  v272 = 0;
  v270 = 0;
  v267 = 0;
  v248 = 0;
  v258 = 0;
  v250 = sub_226098C58();
  v251 = *(v250 - 8);
  v252 = v250 - 8;
  v253 = (*(v251 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v249, v2, v3, v4);
  v254 = &v47 - v253;
  v304 = v6;
  v303 = v1;
  v255 = [v6 rawRecognition];
  if (v255)
  {
    v236 = v255;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v234 = v236;
  v235 = [v236 oneBestTokenList];
  MEMORY[0x277D82BD8](v234);
  if (v235)
  {
    v233 = v235;
    v230 = v235;
    sub_225F1E118();
    v231 = sub_226099C88();
    MEMORY[0x277D82BD8](v230);
    v232 = v231;
  }

  else
  {
    v232 = 0;
  }

  v229 = v232;
  v302 = v232;
  sub_2260998E8();
  if (v229)
  {
    v228 = v229;
    v7 = v248;
    v256 = v229;
    v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
    v8 = sub_225F2D1E4();
    result = sub_225F15970(v238, 0, v224, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v225);
    v226 = v7;
    v227 = result;
    if (v7)
    {
      __break(1u);
      goto LABEL_106;
    }

    v221 = v227;
    sub_225EFE6E8(&v256);
    v222 = v221;
    v223 = v226;
  }

  else
  {
    v222 = 0;
    v223 = v248;
  }

  v218 = v223;
  v219 = v222;
  v301 = v222;
  v220 = [v249 rawRecognition];
  if (v220)
  {
    v217 = v220;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v215 = v217;
  v216 = [v217 nBestTokenListsLossless];
  MEMORY[0x277D82BD8](v215);
  if (v216)
  {
    v214 = v216;
    v211 = v216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
    v212 = sub_226099C88();
    MEMORY[0x277D82BD8](v211);
    v213 = v212;
  }

  else
  {
    v213 = 0;
  }

  v210 = v213;
  v300 = v213;
  sub_2260998E8();
  if (!v210)
  {
    v203 = 0;
    v204 = v218;
    goto LABEL_19;
  }

  v209 = v210;
  v10 = v218;
  v257 = v210;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CB0, &unk_2260A0300);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  v11 = sub_225F3E110();
  result = sub_225F15970(v239, 0, v205, v206, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v225);
  v207 = v10;
  v208 = result;
  if (v10)
  {
LABEL_106:
    __break(1u);
    return result;
  }

  v202 = v208;
  sub_225EFE6E8(&v257);
  v203 = v202;
  v204 = v207;
LABEL_19:
  v199 = v204;
  v200 = v203;
  v299 = v203;
  v201 = [v249 rawRecognition];
  if (v201)
  {
    v198 = v201;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v196 = v198;
  v197 = [v198 oneBestTranscript];
  MEMORY[0x277D82BD8](v196);
  if (v197)
  {
    v195 = v197;
    v190 = v197;
    v191 = sub_226099A08();
    v192 = v12;
    MEMORY[0x277D82BD8](v190);
    v193 = v191;
    v194 = v192;
  }

  else
  {
    v193 = 0;
    v194 = 0;
  }

  v187 = v194;
  v188 = v193;
  v297 = v193;
  v298 = v194;
  v189 = [v249 recognition];
  if (v189)
  {
    v186 = v189;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v184 = v186;
  v185 = [v186 oneBestTranscript];
  MEMORY[0x277D82BD8](v184);
  if (v185)
  {
    v183 = v185;
    v178 = v185;
    v179 = sub_226099A08();
    v180 = v13;
    MEMORY[0x277D82BD8](v178);
    v181 = v179;
    v182 = v180;
  }

  else
  {
    v181 = 0;
    v182 = 0;
  }

  v176 = v182;
  v177 = v181;
  v295 = v181;
  v296 = v182;
  sub_2260998E8();
  if (v219)
  {
    v175 = v219;
    v173 = v219;
    v276 = v219;
    sub_2260998E8();
    if (v200)
    {
      v172 = v200;
      v171 = v200;
      v275 = v200;
      sub_2260998E8();
      if (v176)
      {
        v169 = v177;
        v170 = v176;
        v167 = v176;
        v168 = v177;
        v273 = v177;
        v274 = v176;
        sub_2260998E8();
        if (v187)
        {
          v165 = v188;
          v166 = v187;
          v162 = v187;
          v163 = v188;
          v271 = v188;
          v272 = v187;
          v164 = v237[16];
          MEMORY[0x277D82BE0](v164);
          if (v164)
          {
            v161 = v164;
            v160 = v164;
            v258 = v164;
            sub_2260998E8();
            v157 = sub_226099C78();

            [v160 setRecognizedText_];
            MEMORY[0x277D82BD8](v157);
            sub_2260998E8();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
            v158 = sub_226099C78();

            [v160 setRecognizedNbest_];
            MEMORY[0x277D82BD8](v158);
            sub_2260998E8();
            v159 = sub_2260999F8();

            [v160 setPostITNRecognizedText_];
            MEMORY[0x277D82BD8](v159);
            MEMORY[0x277D82BD8](v160);
          }

          v156 = v237[17];

          if (v156)
          {
            v155 = v156;
            v14 = v254;
            v139 = v156;
            v267 = v156;
            sub_2260998E8();
            sub_2260998E8();
            v135 = &v266;
            v137 = 33;
            v138 = 0;
            swift_beginAccess();
            v15 = v139[11];
            v139[11] = v173;

            swift_endAccess();

            sub_2260998E8();
            sub_2260998E8();
            v136 = &v265;
            swift_beginAccess();
            v16 = v139[12];
            v139[12] = v171;

            swift_endAccess();

            sub_2260998E8();
            sub_2260998E8();
            v140 = &v264;
            swift_beginAccess();
            v17 = v139;
            v18 = v167;
            v19 = v139[14];
            v139[13] = v168;
            v17[14] = v18;

            swift_endAccess();

            v20 = sub_225EF5354();
            (*(v251 + 16))(v14, v20, v250);
            sub_2260998E8();
            v142 = 32;
            v143 = 7;
            v21 = swift_allocObject();
            v22 = v167;
            v144 = v21;
            *(v21 + 16) = v168;
            *(v21 + 24) = v22;
            v152 = sub_226098C48();
            v153 = sub_22609A088();
            v141 = 17;
            v146 = swift_allocObject();
            *(v146 + 16) = 32;
            v147 = swift_allocObject();
            *(v147 + 16) = 8;
            v23 = swift_allocObject();
            v24 = v144;
            v145 = v23;
            *(v23 + 16) = v240;
            *(v23 + 24) = v24;
            v25 = swift_allocObject();
            v26 = v145;
            v149 = v25;
            *(v25 + 16) = v241;
            *(v25 + 24) = v26;
            v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            v148 = sub_22609A4F8();
            v150 = v27;

            v28 = v146;
            v29 = v150;
            *v150 = v242;
            v29[1] = v28;

            v30 = v147;
            v31 = v150;
            v150[2] = v243;
            v31[3] = v30;

            v32 = v149;
            v33 = v150;
            v150[4] = v244;
            v33[5] = v32;
            sub_225EF5418();

            if (os_log_type_enabled(v152, v153))
            {
              v34 = v199;
              v128 = sub_22609A188();
              v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v129 = sub_225EF5468(0);
              v130 = sub_225EF5468(1);
              v131 = &v263;
              v263 = v128;
              v132 = &v262;
              v262 = v129;
              v133 = &v261;
              v261 = v130;
              sub_225EF54BC(2, &v263);
              sub_225EF54BC(1, v131);
              v259 = v242;
              v260 = v146;
              sub_225EF73E8(&v259, v131, v132, v133);
              v134 = v34;
              if (v34)
              {

                __break(1u);
              }

              else
              {
                v259 = v243;
                v260 = v147;
                sub_225EF73E8(&v259, &v263, &v262, &v261);
                v125 = 0;
                v259 = v244;
                v260 = v149;
                sub_225EF73E8(&v259, &v263, &v262, &v261);
                v124 = 0;
                _os_log_impl(&dword_225EEB000, v152, v153, "Set recognized text: %s", v128, 0xCu);
                sub_225EF7AF4(v129);
                sub_225EF7AF4(v130);
                sub_22609A168();

                v126 = v124;
              }
            }

            else
            {
              v35 = v199;

              v126 = v35;
            }

            v123 = v126;
            MEMORY[0x277D82BD8](v152);
            (*(v251 + 8))(v254, v250);

            v154 = v123;
          }

          else
          {
            v154 = v199;
          }

          v121 = v154;
          v122 = v237[19];

          if (v122)
          {
            v120 = v122;
            v119 = v122;
            v270 = v122;
            sub_2260998E8();
            sub_2260998E8();
            v115 = &v269;
            v116 = 33;
            v117 = 0;
            swift_beginAccess();
            v36 = v162;
            v37 = v119;
            v38 = v119[18];
            v119[17] = v163;
            v37[18] = v36;

            swift_endAccess();

            sub_2260998E8();
            sub_2260998E8();
            v118 = &v268;
            swift_beginAccess();
            v39 = v167;
            v40 = v119;
            v41 = v119[20];
            v119[19] = v168;
            v40[20] = v39;

            swift_endAccess();
          }

          v174 = v121;
        }

        else
        {

          v174 = v199;
        }
      }

      else
      {

        v174 = v199;
      }
    }

    else
    {

      v174 = v199;
    }
  }

  else
  {
    v174 = v199;
  }

  v114 = v174;
  if (*sub_225F7E5E8())
  {
    v113 = [v249 rawRecognition];
    if (v113)
    {
      v112 = v113;
      v110 = v113;
      v294 = v113;
      v293 = sub_22609A4F8();
      v42 = [v110 phrases];
      v111 = v42;
      if (v42)
      {
        v109 = v111;
        v106 = v111;
        sub_225F2C904();
        v107 = sub_226099C88();
        MEMORY[0x277D82BD8](v106);
        v108 = v107;
      }

      else
      {
        v108 = 0;
      }

      v105 = v108;
      if (v108)
      {
        v104 = v105;
      }

      else
      {
        sub_22609A3B8();
        __break(1u);
      }

      v291 = v104;
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860E8, &qword_2260A02F0);
      sub_225F3DBB0();
      sub_22609A028();
      for (i = v114; ; i = v52)
      {
        v100 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B0, &qword_2260A02F8);
        sub_22609A388();
        v101 = v290;
        if (!v290)
        {
          break;
        }

        v99 = v101;
        v97 = v101;
        v287 = v101;
        v98 = [v101 interpretations];
        if (v98)
        {
          v96 = v98;
          v93 = v98;
          sub_225F2CB58();
          v94 = sub_226099C88();
          MEMORY[0x277D82BD8](v93);
          v95 = v94;
        }

        else
        {
          v95 = 0;
        }

        v92 = v95;
        if (v95)
        {
          v91 = v92;
        }

        else
        {
          sub_22609A3B8();
          __break(1u);
        }

        v88 = v91;
        v286 = v91;
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860F0, &qword_2260A01A0);
        sub_225F2CC44();
        sub_226099FE8();
        v90 = v285;
        if (v285)
        {
          v87 = v90;
          v85 = v90;
          v284 = v90;

          v86 = [v85 tokens];
          if (v86)
          {
            v84 = v86;
            v81 = v86;
            sub_225F1E118();
            v82 = sub_226099C88();
            MEMORY[0x277D82BD8](v81);
            v83 = v82;
          }

          else
          {
            v83 = 0;
          }

          v80 = v83;
          if (v83)
          {
            v79 = v80;
          }

          else
          {
            sub_22609A3B8();
            __break(1u);
          }

          v282 = v79;
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
          sub_225F2D1E4();
          sub_22609A028();
          for (j = v100; ; j = v75)
          {
            v75 = j;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786140, &qword_2260A01C8);
            sub_22609A388();
            v76 = v281;
            if (!v281)
            {
              break;
            }

            v74 = v76;
            v72 = v76;
            v280 = v76;
            v73 = [v76 text];
            if (v73)
            {
              v71 = v73;
              v66 = v73;
              v67 = sub_226099A08();
              v68 = v43;
              MEMORY[0x277D82BD8](v66);
              v69 = v67;
              v70 = v68;
            }

            else
            {
              v69 = 0;
              v70 = 0;
            }

            v64 = v70;
            v65 = v69;
            if (v70)
            {
              v62 = v65;
              v63 = v64;
              v60 = v64;
              v58 = v65;
              v278 = v65;
              v279 = v64;
              sub_226099AA8();
              v59 = v44;
              v61 = sub_226099BA8();

              sub_2260998E8();
              if (v61)
              {
                v57 = 1;
              }

              else
              {
                sub_226099AA8();
                v55 = v45;
                v56 = sub_226099BA8();

                v57 = v56;
              }

              v54 = v57;

              if (v54)
              {
                sub_2260998E8();
                v53 = v277;
                v277[0] = v58;
                v277[1] = v60;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
                sub_226099CE8();
              }

              MEMORY[0x277D82BD8](v72);
            }

            else
            {
              MEMORY[0x277D82BD8](v72);
            }
          }

          sub_225EFE6E8(v283);
          MEMORY[0x277D82BD8](v85);
          MEMORY[0x277D82BD8](v97);
          v52 = v75;
        }

        else
        {

          MEMORY[0x277D82BD8](v97);
          v52 = v100;
        }
      }

      sub_225EFE6E8(v292);
      v50 = v293;
      sub_2260998E8();
      v289 = v50;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
      sub_225F156F8();
      v51 = sub_22609A008();

      if ((v51 & 1) == 0)
      {
        v48 = v293;
        sub_2260998E8();
        sub_2260998E8();
        v47 = &v288;
        swift_beginAccess();
        v46 = v237[18];
        v237[18] = v48;

        swift_endAccess();
      }

      sub_225EFE6E8(&v293);
      MEMORY[0x277D82BD8](v110);
    }
  }
}

id sub_225F33FE4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = 0;
  v10 = *a1;
  result = [v10 text];
  v8 = result;
  if (result)
  {
    *&v5 = sub_226099A08();
    *(&v5 + 1) = v3;
    result = MEMORY[0x277D82BD8](v8);
    v6 = v5;
  }

  else
  {
    v6 = 0uLL;
  }

  v9 = v6;
  if (*(&v6 + 1))
  {
    *a2 = v9;
  }

  else
  {
    result = sub_226099AA8();
    *a2 = result;
    *(a2 + 8) = v4;
    if (*(&v9 + 1))
    {
      return sub_225EFE6BC(&v9);
    }
  }

  return result;
}

uint64_t sub_225F34100@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
  v2 = sub_225F2D1E4();
  result = sub_225F15970(sub_225F33FE4, 0, v5, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v7);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_225F341D0(void *a1, unsigned int a2)
{
  v44 = a2;
  v49 = a1;
  v42 = a2;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v43 = 0;
  v45 = sub_226098C58();
  v46 = *(v45 - 8);
  v47 = v46;
  v3 = *(v46 + 64);
  v5 = MEMORY[0x28223BE20](v49, v44, v45, v4);
  v48 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v5;
  v56 = v7;
  v55 = v2;
  v50 = [v5 hasData];
  v8 = v49;
  if (v50)
  {
    v41 = [v49 hasRecognizedAnything];
  }

  else
  {
    v41 = 0;
  }

  v40 = v41;

  if (v40)
  {
    if (v42)
    {
      [v49 saveOneRecordPerDay];
    }

    else
    {
      [v49 save];
    }

    return v43;
  }

  else
  {
    v9 = v48;
    v10 = sub_225F31B9C();
    (*(v47 + 16))(v9, v10, v45);
    v37 = sub_226098C48();
    v34 = v37;
    v36 = sub_22609A0A8();
    v35 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v38 = sub_22609A4F8();
    if (os_log_type_enabled(v37, v36))
    {
      v11 = v43;
      v25 = sub_22609A188();
      v21 = v25;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v23 = 0;
      v26 = sub_225EF5468(0);
      v24 = v26;
      v27 = sub_225EF5468(v23);
      v54 = v25;
      v53 = v26;
      v52 = v27;
      v28 = 0;
      v29 = &v54;
      sub_225EF54BC(0, &v54);
      sub_225EF54BC(v28, v29);
      v51 = v38;
      v30 = &v17;
      MEMORY[0x28223BE20](&v17, v12, v13, v14);
      v31 = &v17 - 6;
      *(&v17 - 4) = v15;
      *(&v17 - 3) = &v53;
      *(&v17 - 2) = &v52;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v33 = v11;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v34, v35, "Not saving DES Record with no data or recognition", v21, 2u);
        v19 = 0;
        sub_225EF7AF4(v24);
        sub_225EF7AF4(v27);
        sub_22609A168();

        v20 = v33;
      }
    }

    else
    {

      v20 = v43;
    }

    v18 = v20;

    (*(v47 + 8))(v48, v45);
    return v18;
  }
}

uint64_t sub_225F34670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v627 = v4;
  v645 = v5;
  v629 = 0;
  v717 = 0;
  v716 = 0;
  v715 = 0;
  v714 = 0;
  v713 = 0;
  v712 = 0;
  v708 = 0;
  v707 = 0;
  v706 = 0;
  v628 = 0;
  v698 = 0;
  v696 = 0;
  v680 = 0;
  v679 = 0;
  v678 = 0;
  v676 = 0;
  v675[1] = 0;
  v675[0] = 0;
  v671 = 0;
  v670 = 0;
  v664 = 0;
  v663 = 0;
  v658 = 0;
  v657 = 0;
  v630 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v6, v7, v8);
  v631 = &v207 - v630;
  v632 = sub_226098C58();
  v633 = *(v632 - 8);
  v634 = v633;
  v639 = *(v633 + 64);
  MEMORY[0x28223BE20](v645, v632, v9, v10);
  v641 = (v639 + 15) & 0xFFFFFFFFFFFFFFF0;
  v635 = &v207 - v641;
  MEMORY[0x28223BE20](v11, &v207 - v641, v12, v13);
  v636 = &v207 - v641;
  MEMORY[0x28223BE20](v14, &v207 - v641, v15, v16);
  v637 = &v207 - v641;
  MEMORY[0x28223BE20](v17, &v207 - v641, v18, v19);
  v638 = &v207 - v641;
  MEMORY[0x28223BE20](v20, &v207 - v641, v21, v22);
  v640 = &v207 - v641;
  MEMORY[0x28223BE20](v23, &v207 - v641, v24, v25);
  v642 = &v207 - v641;
  v717 = v26;
  v716 = v4;
  v646 = v4[14];
  v643 = v646;
  v647 = v4[15];
  v644 = v647;
  sub_2260998E8();
  v714 = v646;
  v715 = v647;
  v648 = [v645 correctedText];
  if (v648)
  {
    v626 = v648;
    v621 = v648;
    v622 = sub_226099A08();
    v623 = v27;

    v624 = v622;
    v625 = v623;
  }

  else
  {
    v624 = 0;
    v625 = 0;
  }

  v619 = v625;
  v620 = v624;
  if (v625)
  {
    v617 = v620;
    v618 = v619;
    v614 = v619;
    v615 = v620;
    v712 = v620;
    v713 = v619;
    v710[0] = sub_226099AA8();
    v710[1] = v28;
    sub_22609A468();
    v616 = [v645 recognizedTextInfo];
    if (v616)
    {
      v613 = v616;
      v610 = v616;
      v611 = sub_226099878();

      v612 = v611;
    }

    else
    {
      v612 = 0;
    }

    v609 = v612;
    if (v612)
    {
      v608 = v609;
    }

    else
    {
      sub_22609A3B8();
      __break(1u);
    }

    v607 = v608;
    sub_226099938();
    if (v711[3])
    {
      if (swift_dynamicCast())
      {
        v605 = v649;
        v606 = v650;
      }

      else
      {
        v605 = 0;
        v606 = 0;
      }

      v601 = v606;
      v602 = v605;

      sub_225F3E364(v709);
      sub_225EFE6BC(v710);
      v603 = v602;
      v604 = v601;
    }

    else
    {

      sub_225F3E364(v709);
      sub_225EFE6BC(v710);
      sub_225F186BC(v711);
      v603 = 0;
      v604 = 0;
    }

    v599 = v604;
    v600 = v603;
    if (v604)
    {
      v597 = v600;
      v598 = v599;
      v595 = v599;
      v594 = v600;
      v707 = v600;
      v708 = v599;
      v596 = sub_226099B18();
      sub_2260998E8();
      if (v596)
      {
        v593 = 1;
      }

      else
      {
        v593 = sub_226099B18();
      }

      v592 = v593;

      if (v592)
      {

        return v628;
      }

      else
      {
        if (*sub_225F7E5E8() == 1)
        {
          v29 = v642;
          v575 = 9;
          v549 = sub_226099AA8();
          v550 = v30;
          v678 = v549;
          v679 = v30;
          v31 = sub_225EF5354();
          v551 = *(v634 + 16);
          v552 = (v634 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v551(v29, v31, v632);
          sub_2260998E8();
          v565 = 32;
          v570 = 32;
          v571 = 7;
          v32 = swift_allocObject();
          v33 = v644;
          v557 = v32;
          *(v32 + 16) = v643;
          *(v32 + 24) = v33;
          sub_2260998E8();
          v34 = swift_allocObject();
          v35 = v614;
          v562 = v34;
          *(v34 + 16) = v615;
          *(v34 + 24) = v35;
          sub_2260998E8();
          v36 = swift_allocObject();
          v37 = v595;
          v572 = v36;
          *(v36 + 16) = v594;
          *(v36 + 24) = v37;
          v590 = sub_226098C48();
          v553 = v590;
          v589 = sub_22609A078();
          v554 = v589;
          v566 = 17;
          v577 = swift_allocObject();
          v555 = v577;
          *(v577 + 16) = v565;
          v578 = swift_allocObject();
          v556 = v578;
          v568 = 8;
          *(v578 + 16) = 8;
          v38 = swift_allocObject();
          v39 = v557;
          v558 = v38;
          *(v38 + 16) = sub_225EF7450;
          *(v38 + 24) = v39;
          v40 = swift_allocObject();
          v41 = v558;
          v579 = v40;
          v559 = v40;
          *(v40 + 16) = sub_225EF7B84;
          *(v40 + 24) = v41;
          v580 = swift_allocObject();
          v560 = v580;
          *(v580 + 16) = v565;
          v581 = swift_allocObject();
          v561 = v581;
          *(v581 + 16) = v568;
          v42 = swift_allocObject();
          v43 = v562;
          v563 = v42;
          *(v42 + 16) = sub_225EF7450;
          *(v42 + 24) = v43;
          v44 = swift_allocObject();
          v45 = v563;
          v582 = v44;
          v564 = v44;
          *(v44 + 16) = sub_225EF7B84;
          *(v44 + 24) = v45;
          v583 = swift_allocObject();
          v567 = v583;
          *(v583 + 16) = v565;
          v584 = swift_allocObject();
          v569 = v584;
          *(v584 + 16) = v568;
          v46 = swift_allocObject();
          v47 = v572;
          v573 = v46;
          *(v46 + 16) = sub_225EF7450;
          *(v46 + 24) = v47;
          v48 = swift_allocObject();
          v49 = v573;
          v587 = v48;
          v574 = v48;
          *(v48 + 16) = sub_225EF7B84;
          *(v48 + 24) = v49;
          v588 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
          v576 = v588;
          v585 = sub_22609A4F8();
          v586 = v50;

          v51 = v577;
          v52 = v586;
          *v586 = sub_225EF7434;
          v52[1] = v51;

          v53 = v578;
          v54 = v586;
          v586[2] = sub_225EF7434;
          v54[3] = v53;

          v55 = v579;
          v56 = v586;
          v586[4] = sub_225EF7B90;
          v56[5] = v55;

          v57 = v580;
          v58 = v586;
          v586[6] = sub_225EF7434;
          v58[7] = v57;

          v59 = v581;
          v60 = v586;
          v586[8] = sub_225EF7434;
          v60[9] = v59;

          v61 = v582;
          v62 = v586;
          v586[10] = sub_225EF7B90;
          v62[11] = v61;

          v63 = v583;
          v64 = v586;
          v586[12] = sub_225EF7434;
          v64[13] = v63;

          v65 = v584;
          v66 = v586;
          v586[14] = sub_225EF7434;
          v66[15] = v65;

          v67 = v586;
          v68 = v587;
          v586[16] = sub_225EF7B90;
          v67[17] = v68;
          sub_225EF5418();

          if (os_log_type_enabled(v590, v589))
          {
            v69 = v628;
            v542 = sub_22609A188();
            v539 = v542;
            v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
            v543 = sub_225EF5468(0);
            v541 = v543;
            v545 = 3;
            v544 = sub_225EF5468(3);
            v655[0] = v542;
            v654 = v543;
            v653 = v544;
            v546 = v655;
            sub_225EF54BC(2, v655);
            sub_225EF54BC(v545, v546);
            v651 = sub_225EF7434;
            v652 = v555;
            sub_225EF73E8(&v651, v546, &v654, &v653);
            v547 = v69;
            v548 = v69;
            if (v69)
            {
              v537 = 0;

              __break(1u);
            }

            else
            {
              v651 = sub_225EF7434;
              v652 = v556;
              sub_225EF73E8(&v651, v655, &v654, &v653);
              v535 = 0;
              v536 = 0;
              v651 = sub_225EF7B90;
              v652 = v559;
              sub_225EF73E8(&v651, v655, &v654, &v653);
              v533 = 0;
              v534 = 0;
              v651 = sub_225EF7434;
              v652 = v560;
              sub_225EF73E8(&v651, v655, &v654, &v653);
              v531 = 0;
              v532 = 0;
              v651 = sub_225EF7434;
              v652 = v561;
              sub_225EF73E8(&v651, v655, &v654, &v653);
              v529 = 0;
              v530 = 0;
              v651 = sub_225EF7B90;
              v652 = v564;
              sub_225EF73E8(&v651, v655, &v654, &v653);
              v527 = 0;
              v528 = 0;
              v651 = sub_225EF7434;
              v652 = v567;
              sub_225EF73E8(&v651, v655, &v654, &v653);
              v525 = 0;
              v526 = 0;
              v651 = sub_225EF7434;
              v652 = v569;
              sub_225EF73E8(&v651, v655, &v654, &v653);
              v523 = 0;
              v524 = 0;
              v651 = sub_225EF7B90;
              v652 = v574;
              sub_225EF73E8(&v651, v655, &v654, &v653);
              v521 = 0;
              v522 = 0;
              _os_log_impl(&dword_225EEB000, v553, v554, "Received corrected texts, interactionId: %s, correctedText: %s, correctedTextV2: %s", v539, 0x20u);
              sub_225EF7AF4(v541);
              sub_225EF7AF4(v544);
              sub_22609A168();

              v538 = v521;
            }
          }

          else
          {
            v70 = v628;

            v538 = v70;
          }

          v515 = v538;

          v516 = *(v634 + 8);
          v517 = (v634 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v516(v642, v632);
          v519 = &v677;
          swift_beginAccess();
          v520 = v627[18];
          v518 = v520;
          sub_2260998E8();
          swift_endAccess();
          if (v520)
          {
            v514 = v518;
            v510 = v518;
            v676 = v518;
            sub_2260998E8();
            v674 = v510;
            v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
            sub_225F156F8();
            sub_22609A028();
            for (i = v515; ; i = v456)
            {
              v507 = i;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E48, &unk_22609F970);
              sub_22609A388();
              v508 = v672;
              v509 = v673;
              if (!v673)
              {
                break;
              }

              v505 = v508;
              v506 = v509;
              v488 = v509;
              v670 = v508;
              v671 = v509;
              v669[2] = v508;
              v669[3] = v509;
              v495 = 1;
              v669[0] = sub_226099AA8();
              v669[1] = v71;
              v668[0] = sub_226099AA8();
              v668[1] = v72;
              v497 = sub_225F2CF00();
              v489 = v497;
              v496 = MEMORY[0x277D837D0];
              sub_225F381C4();
              v491 = v669;
              v490 = v668;
              v494 = 0;
              v493 = sub_22609A208();
              v492 = v73;
              sub_225EFE6BC(v490);
              sub_225EFE6BC(v491);
              v667[0] = v493;
              v667[1] = v492;
              v666[0] = sub_226099AA8();
              v666[1] = v74;
              v665[0] = sub_226099AA8();
              v665[1] = v75;
              sub_225F381C4();
              v501 = v666;
              v498 = v665;
              v502 = v667;
              v504 = sub_22609A208();
              v503 = v76;
              v499 = v504;
              v500 = v76;
              sub_225EFE6BC(v498);
              sub_225EFE6BC(v501);
              sub_225EFE6BC(v502);
              v663 = v504;
              v664 = v503;
              if (sub_226099B18())
              {
                v459 = v507;
              }

              else
              {
                v661 = v615;
                v662 = v614;
                v659 = v499;
                v660 = v500;
                if (sub_22609A228())
                {
                  sub_225F3E494();
                  sub_2260998E8();
                  v487 = sub_225F38200();
                }

                else
                {
                  sub_225F3E494();
                  sub_2260998E8();
                  v487 = sub_225F38248();
                }

                v77 = v640;
                v481 = v487;
                v658 = v487;
                v477 = [objc_opt_self() new];
                v476 = v477;
                v657 = v477;
                sub_2260998E8();
                v478 = sub_2260999F8();

                v479 = 0x1FB87B000uLL;
                [v477 0x1FB87BD78];

                v78 = v481;
                sub_2260998E8();
                v480 = sub_2260999F8();

                [v481 (v479 + 3448)];

                v79 = sub_225EF5354();
                v551(v77, v79, v632);
                v485 = sub_226098C48();
                v482 = v485;
                v484 = sub_22609A078();
                v483 = v484;
                v486 = sub_22609A4F8();
                if (os_log_type_enabled(v485, v484))
                {
                  v80 = v507;
                  v466 = sub_22609A188();
                  v462 = v466;
                  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                  v464 = 0;
                  v467 = sub_225EF5468(0);
                  v465 = v467;
                  v468 = sub_225EF5468(v464);
                  v656 = v466;
                  v655[3] = v467;
                  v655[2] = v468;
                  v469 = 0;
                  v470 = &v656;
                  sub_225EF54BC(0, &v656);
                  sub_225EF54BC(v469, v470);
                  v655[1] = v486;
                  v473 = &v207;
                  MEMORY[0x28223BE20](&v207, v81, v82, v83);
                  v471 = &v207 - 6;
                  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
                  sub_225EFE598();
                  sub_226099C28();
                  v474 = v80;
                  v475 = v473;
                  if (v80)
                  {
                    __break(1u);
                  }

                  else
                  {
                    _os_log_impl(&dword_225EEB000, v482, v483, "Sending dictation feedback to Portrait based on correction", v462, 2u);
                    v460 = 0;
                    sub_225EF7AF4(v465);
                    sub_225EF7AF4(v468);
                    sub_22609A168();

                    v461 = v474;
                  }
                }

                else
                {

                  v461 = v507;
                }

                v458 = v461;

                v516(v640, v632);
                v457 = 0;
                v84 = sub_226099DA8();
                (*(*(v84 - 8) + 56))(v631, 1);
                v85 = v476;
                v86 = v481;
                v87 = swift_allocObject();
                v88 = v457;
                v89 = v631;
                v90 = v476;
                v91 = v481;
                v87[2] = v457;
                v87[3] = v88;
                v87[4] = v90;
                v87[5] = v91;
                sub_225F38F2C(v88, v88, v89, &unk_2260A0330, v87, MEMORY[0x277D84F78] + 8);

                v459 = v458;
              }

              v456 = v459;
            }

            sub_225EFE6E8(v675);

            v513 = v507;
          }

          else
          {
            v513 = v515;
          }

          v454 = v513;

          v455 = v454;
        }

        else
        {
          v455 = v628;
        }

        v453 = v455;
        if (*sub_225F7E704() == 1)
        {
          v452 = v627[16];
          v451 = v452;
          v92 = v452;
          if (v452)
          {
            v450 = v451;
            v446 = v451;
            v696 = v451;
            sub_2260998E8();
            v445 = sub_2260999F8();

            [v446 setCorrectedText_];

            sub_2260998E8();
            v447 = sub_2260999F8();

            [v446 setCorrectedTextV2_];

            v93 = [v645 selectedAlternativesInfo];
            v448 = v93;
            if (v93)
            {
              v444 = v448;
              v441 = v448;
              v442 = sub_226099C88();

              v443 = v442;
            }

            else
            {
              v443 = 0;
            }

            v440 = v443;
            if (v443)
            {
              v439 = v440;
              v436 = v440;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C0, &qword_2260A0318);
              v437 = sub_22609A458();

              v438 = v437;
            }

            else
            {
              v438 = 0;
            }

            v435 = v438;
            if (v438)
            {
              v434 = v435;
              v433 = v435;
              v680 = v435;
              sub_2260998E8();
              v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C0, &qword_2260A0318);
              v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
              v431 = sub_22609A378();
              v432 = sub_226099C78();

              [v446 setAlternatives_];
            }

            else
            {
              v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
              v427 = sub_22609A4F8();
              v428 = sub_226099C78();

              [v446 setAlternatives_];
            }

            v94 = v638;
            v95 = sub_225EF5354();
            v395 = *(v634 + 16);
            v396 = (v634 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v395(v94, v95, v632);
            sub_2260998E8();
            v404 = 32;
            v409 = 32;
            v410 = 7;
            v96 = swift_allocObject();
            v97 = v644;
            v98 = v446;
            v401 = v96;
            *(v96 + 16) = v643;
            *(v96 + 24) = v97;
            v99 = v98;
            v411 = swift_allocObject();
            *(v411 + 16) = v446;
            v425 = sub_226098C48();
            v397 = v425;
            v424 = sub_22609A088();
            v398 = v424;
            v405 = 17;
            v415 = swift_allocObject();
            v399 = v415;
            *(v415 + 16) = v404;
            v416 = swift_allocObject();
            v400 = v416;
            v407 = 8;
            *(v416 + 16) = 8;
            v100 = swift_allocObject();
            v101 = v401;
            v402 = v100;
            *(v100 + 16) = sub_225EF7450;
            *(v100 + 24) = v101;
            v102 = swift_allocObject();
            v103 = v402;
            v417 = v102;
            v403 = v102;
            *(v102 + 16) = sub_225EF7B84;
            *(v102 + 24) = v103;
            v418 = swift_allocObject();
            v406 = v418;
            *(v418 + 16) = v404;
            v419 = swift_allocObject();
            v408 = v419;
            *(v419 + 16) = v407;
            v104 = swift_allocObject();
            v105 = v411;
            v412 = v104;
            *(v104 + 16) = sub_225F3E38C;
            *(v104 + 24) = v105;
            v106 = swift_allocObject();
            v107 = v412;
            v422 = v106;
            v413 = v106;
            *(v106 + 16) = sub_225EF7B84;
            *(v106 + 24) = v107;
            v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            v414 = v423;
            v420 = sub_22609A4F8();
            v421 = v108;

            v109 = v415;
            v110 = v421;
            *v421 = sub_225EF7434;
            v110[1] = v109;

            v111 = v416;
            v112 = v421;
            v421[2] = sub_225EF7434;
            v112[3] = v111;

            v113 = v417;
            v114 = v421;
            v421[4] = sub_225EF7B90;
            v114[5] = v113;

            v115 = v418;
            v116 = v421;
            v421[6] = sub_225EF7434;
            v116[7] = v115;

            v117 = v419;
            v118 = v421;
            v421[8] = sub_225EF7434;
            v118[9] = v117;

            v119 = v421;
            v120 = v422;
            v421[10] = sub_225EF7B90;
            v119[11] = v120;
            sub_225EF5418();

            if (os_log_type_enabled(v425, v424))
            {
              v121 = v453;
              v388 = sub_22609A188();
              v385 = v388;
              v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v389 = sub_225EF5468(0);
              v387 = v389;
              v391 = 2;
              v390 = sub_225EF5468(2);
              v685 = v388;
              v684 = v389;
              v683 = v390;
              v392 = &v685;
              sub_225EF54BC(v391, &v685);
              sub_225EF54BC(v391, v392);
              v681 = sub_225EF7434;
              v682 = v399;
              sub_225EF73E8(&v681, v392, &v684, &v683);
              v393 = v121;
              v394 = v121;
              if (v121)
              {
                v383 = 0;

                __break(1u);
              }

              else
              {
                v681 = sub_225EF7434;
                v682 = v400;
                sub_225EF73E8(&v681, &v685, &v684, &v683);
                v381 = 0;
                v382 = 0;
                v681 = sub_225EF7B90;
                v682 = v403;
                sub_225EF73E8(&v681, &v685, &v684, &v683);
                v379 = 0;
                v380 = 0;
                v681 = sub_225EF7434;
                v682 = v406;
                sub_225EF73E8(&v681, &v685, &v684, &v683);
                v377 = 0;
                v378 = 0;
                v681 = sub_225EF7434;
                v682 = v408;
                sub_225EF73E8(&v681, &v685, &v684, &v683);
                v375 = 0;
                v376 = 0;
                v681 = sub_225EF7B90;
                v682 = v413;
                sub_225EF73E8(&v681, &v685, &v684, &v683);
                v373 = 0;
                v374 = 0;
                _os_log_impl(&dword_225EEB000, v397, v398, "Set correctedText for CESRFidesASRRecord, interactionId: %s, correctedText: %s", v385, 0x16u);
                sub_225EF7AF4(v387);
                sub_225EF7AF4(v390);
                sub_22609A168();

                v384 = v373;
              }
            }

            else
            {
              v122 = v453;

              v384 = v122;
            }

            v123 = v637;
            v343 = v384;

            v344 = *(v634 + 8);
            v345 = (v634 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v344(v638, v632);
            v124 = sub_225EF5354();
            v395(v123, v124, v632);
            sub_2260998E8();
            v353 = 32;
            v358 = 32;
            v359 = 7;
            v125 = swift_allocObject();
            v126 = v644;
            v127 = v446;
            v350 = v125;
            *(v125 + 16) = v643;
            *(v125 + 24) = v126;
            v128 = v127;
            v360 = swift_allocObject();
            *(v360 + 16) = v446;
            v372 = sub_226098C48();
            v346 = v372;
            v371 = sub_22609A088();
            v347 = v371;
            v354 = 17;
            v363 = swift_allocObject();
            v348 = v363;
            *(v363 + 16) = v353;
            v364 = swift_allocObject();
            v349 = v364;
            v356 = 8;
            *(v364 + 16) = 8;
            v129 = swift_allocObject();
            v130 = v350;
            v351 = v129;
            *(v129 + 16) = sub_225EF7450;
            *(v129 + 24) = v130;
            v131 = swift_allocObject();
            v132 = v351;
            v365 = v131;
            v352 = v131;
            *(v131 + 16) = sub_225EF7B84;
            *(v131 + 24) = v132;
            v366 = swift_allocObject();
            v355 = v366;
            *(v366 + 16) = v353;
            v367 = swift_allocObject();
            v357 = v367;
            *(v367 + 16) = v356;
            v133 = swift_allocObject();
            v134 = v360;
            v361 = v133;
            *(v133 + 16) = sub_225F3E394;
            *(v133 + 24) = v134;
            v135 = swift_allocObject();
            v136 = v361;
            v370 = v135;
            v362 = v135;
            *(v135 + 16) = sub_225EF7B84;
            *(v135 + 24) = v136;
            v368 = sub_22609A4F8();
            v369 = v137;

            v138 = v363;
            v139 = v369;
            *v369 = sub_225EF7434;
            v139[1] = v138;

            v140 = v364;
            v141 = v369;
            v369[2] = sub_225EF7434;
            v141[3] = v140;

            v142 = v365;
            v143 = v369;
            v369[4] = sub_225EF7B90;
            v143[5] = v142;

            v144 = v366;
            v145 = v369;
            v369[6] = sub_225EF7434;
            v145[7] = v144;

            v146 = v367;
            v147 = v369;
            v369[8] = sub_225EF7434;
            v147[9] = v146;

            v148 = v369;
            v149 = v370;
            v369[10] = sub_225EF7B90;
            v148[11] = v149;
            sub_225EF5418();

            if (os_log_type_enabled(v372, v371))
            {
              v150 = v343;
              v336 = sub_22609A188();
              v333 = v336;
              v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v337 = sub_225EF5468(0);
              v335 = v337;
              v339 = 2;
              v338 = sub_225EF5468(2);
              v690 = v336;
              v689 = v337;
              v688 = v338;
              v340 = &v690;
              sub_225EF54BC(v339, &v690);
              sub_225EF54BC(v339, v340);
              v686 = sub_225EF7434;
              v687 = v348;
              sub_225EF73E8(&v686, v340, &v689, &v688);
              v341 = v150;
              v342 = v150;
              if (v150)
              {
                v331 = 0;

                __break(1u);
              }

              else
              {
                v686 = sub_225EF7434;
                v687 = v349;
                sub_225EF73E8(&v686, &v690, &v689, &v688);
                v329 = 0;
                v330 = 0;
                v686 = sub_225EF7B90;
                v687 = v352;
                sub_225EF73E8(&v686, &v690, &v689, &v688);
                v327 = 0;
                v328 = 0;
                v686 = sub_225EF7434;
                v687 = v355;
                sub_225EF73E8(&v686, &v690, &v689, &v688);
                v325 = 0;
                v326 = 0;
                v686 = sub_225EF7434;
                v687 = v357;
                sub_225EF73E8(&v686, &v690, &v689, &v688);
                v323 = 0;
                v324 = 0;
                v686 = sub_225EF7B90;
                v687 = v362;
                sub_225EF73E8(&v686, &v690, &v689, &v688);
                v321 = 0;
                v322 = 0;
                _os_log_impl(&dword_225EEB000, v346, v347, "Set correctedTextV2 for CESRFidesASRRecord, interactionId: %s, correctedTextV2: %s", v333, 0x16u);
                sub_225EF7AF4(v335);
                sub_225EF7AF4(v338);
                sub_22609A168();

                v332 = v321;
              }
            }

            else
            {
              v151 = v343;

              v332 = v151;
            }

            v152 = v636;
            v292 = v332;

            v344(v637, v632);
            v153 = sub_225EF5354();
            v395(v152, v153, v632);
            sub_2260998E8();
            v301 = 32;
            v306 = 32;
            v307 = 7;
            v154 = swift_allocObject();
            v155 = v644;
            v156 = v446;
            v298 = v154;
            *(v154 + 16) = v643;
            *(v154 + 24) = v155;
            v157 = v156;
            v293 = swift_allocObject();
            *(v293 + 16) = v446;

            v158 = swift_allocObject();
            v159 = v293;
            v308 = v158;
            *(v158 + 16) = sub_225F3E39C;
            *(v158 + 24) = v159;

            v320 = sub_226098C48();
            v294 = v320;
            v319 = sub_22609A088();
            v295 = v319;
            v302 = 17;
            v311 = swift_allocObject();
            v296 = v311;
            *(v311 + 16) = v301;
            v312 = swift_allocObject();
            v297 = v312;
            v304 = 8;
            *(v312 + 16) = 8;
            v160 = swift_allocObject();
            v161 = v298;
            v299 = v160;
            *(v160 + 16) = sub_225EF7450;
            *(v160 + 24) = v161;
            v162 = swift_allocObject();
            v163 = v299;
            v313 = v162;
            v300 = v162;
            *(v162 + 16) = sub_225EF7B84;
            *(v162 + 24) = v163;
            v314 = swift_allocObject();
            v303 = v314;
            *(v314 + 16) = v301;
            v315 = swift_allocObject();
            v305 = v315;
            *(v315 + 16) = v304;
            v164 = swift_allocObject();
            v165 = v308;
            v309 = v164;
            *(v164 + 16) = sub_225F3E3A4;
            *(v164 + 24) = v165;
            v166 = swift_allocObject();
            v167 = v309;
            v318 = v166;
            v310 = v166;
            *(v166 + 16) = sub_225EF7B84;
            *(v166 + 24) = v167;
            v316 = sub_22609A4F8();
            v317 = v168;

            v169 = v311;
            v170 = v317;
            *v317 = sub_225EF7434;
            v170[1] = v169;

            v171 = v312;
            v172 = v317;
            v317[2] = sub_225EF7434;
            v172[3] = v171;

            v173 = v313;
            v174 = v317;
            v317[4] = sub_225EF7B90;
            v174[5] = v173;

            v175 = v314;
            v176 = v317;
            v317[6] = sub_225EF7434;
            v176[7] = v175;

            v177 = v315;
            v178 = v317;
            v317[8] = sub_225EF7434;
            v178[9] = v177;

            v179 = v317;
            v180 = v318;
            v317[10] = sub_225EF7B90;
            v179[11] = v180;
            sub_225EF5418();

            if (os_log_type_enabled(v320, v319))
            {
              v181 = v292;
              v285 = sub_22609A188();
              v282 = v285;
              v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v286 = sub_225EF5468(0);
              v284 = v286;
              v288 = 2;
              v287 = sub_225EF5468(2);
              v695 = v285;
              v694 = v286;
              v693 = v287;
              v289 = &v695;
              sub_225EF54BC(v288, &v695);
              sub_225EF54BC(v288, v289);
              v691 = sub_225EF7434;
              v692 = v296;
              sub_225EF73E8(&v691, v289, &v694, &v693);
              v290 = v181;
              v291 = v181;
              if (v181)
              {
                v280 = 0;

                __break(1u);
              }

              else
              {
                v691 = sub_225EF7434;
                v692 = v297;
                sub_225EF73E8(&v691, &v695, &v694, &v693);
                v278 = 0;
                v279 = 0;
                v691 = sub_225EF7B90;
                v692 = v300;
                sub_225EF73E8(&v691, &v695, &v694, &v693);
                v276 = 0;
                v277 = 0;
                v691 = sub_225EF7434;
                v692 = v303;
                sub_225EF73E8(&v691, &v695, &v694, &v693);
                v274 = 0;
                v275 = 0;
                v691 = sub_225EF7434;
                v692 = v305;
                sub_225EF73E8(&v691, &v695, &v694, &v693);
                v272 = 0;
                v273 = 0;
                v691 = sub_225EF7B90;
                v692 = v310;
                sub_225EF73E8(&v691, &v695, &v694, &v693);
                v270 = 0;
                v271 = 0;
                _os_log_impl(&dword_225EEB000, v294, v295, "Set alternativeSelection for CESRFidesASRRecord, interactionId: %s, alternatives: %s", v282, 0x16u);
                sub_225EF7AF4(v284);
                sub_225EF7AF4(v287);
                sub_22609A168();

                v281 = v270;
              }
            }

            else
            {
              v182 = v292;

              v281 = v182;
            }

            v269 = v281;

            v344(v636, v632);
            v449 = v269;
          }

          else
          {
            v449 = v453;
          }
        }

        else
        {
          v449 = v453;
        }

        v268 = v449;
        if (*sub_225EF72E8() == 1)
        {
          v267 = v627[17];
          v266 = v267;

          if (v267)
          {
            v265 = v266;
            v261 = v266;
            v706 = v266;
            sub_2260998E8();
            sub_2260998E8();
            v262 = &v705;
            swift_beginAccess();
            v183 = v261;
            v184 = v595;
            v185 = v261[16];
            v261[15] = v594;
            v183[16] = v184;

            swift_endAccess();

            v186 = [v645 selectedAlternativesInfo];
            v263 = v186;
            if (v186)
            {
              v260 = v263;
              v257 = v263;
              v258 = sub_226099C88();

              v259 = v258;
            }

            else
            {
              v259 = 0;
            }

            v256 = v259;
            if (v259)
            {
              v255 = v256;
              v252 = v256;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C0, &qword_2260A0318);
              v253 = sub_22609A458();

              v254 = v253;
            }

            else
            {
              v254 = 0;
            }

            v251 = v254;
            if (v254)
            {
              v250 = v251;
              v249 = v251;
              v698 = v251;
              sub_2260998E8();
              sub_2260998E8();
              v248 = &v697;
              swift_beginAccess();
              v187 = v261[17];
              v261[17] = v249;

              swift_endAccess();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C0, &qword_2260A0318);
              v245 = 0;
              v247 = sub_22609A4F8();
              sub_2260998E8();
              v246 = &v704;
              swift_beginAccess();
              v188 = v261[17];
              v261[17] = v247;

              swift_endAccess();
            }

            v189 = v635;
            v190 = sub_225EF5354();
            (*(v634 + 16))(v189, v190, v632);
            sub_2260998E8();
            v228 = 32;
            v232 = 32;
            v233 = 7;
            v191 = swift_allocObject();
            v192 = v644;
            v234 = v191;
            *(v191 + 16) = v643;
            *(v191 + 24) = v192;
            v244 = sub_226098C48();
            v226 = v244;
            v243 = sub_22609A088();
            v227 = v243;
            v229 = 17;
            v237 = swift_allocObject();
            v230 = v237;
            *(v237 + 16) = v228;
            v238 = swift_allocObject();
            v231 = v238;
            *(v238 + 16) = 8;
            v193 = swift_allocObject();
            v194 = v234;
            v235 = v193;
            *(v193 + 16) = sub_225EF7450;
            *(v193 + 24) = v194;
            v195 = swift_allocObject();
            v196 = v235;
            v241 = v195;
            v236 = v195;
            *(v195 + 16) = sub_225EF7B84;
            *(v195 + 24) = v196;
            v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            v239 = sub_22609A4F8();
            v240 = v197;

            v198 = v237;
            v199 = v240;
            *v240 = sub_225EF7434;
            v199[1] = v198;

            v200 = v238;
            v201 = v240;
            v240[2] = sub_225EF7434;
            v201[3] = v200;

            v202 = v240;
            v203 = v241;
            v240[4] = sub_225EF7B90;
            v202[5] = v203;
            sub_225EF5418();

            if (os_log_type_enabled(v244, v243))
            {
              v204 = v268;
              v219 = sub_22609A188();
              v216 = v219;
              v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v220 = sub_225EF5468(0);
              v218 = v220;
              v222 = 1;
              v221 = sub_225EF5468(1);
              v703 = v219;
              v702 = v220;
              v701 = v221;
              v223 = &v703;
              sub_225EF54BC(2, &v703);
              sub_225EF54BC(v222, v223);
              v699 = sub_225EF7434;
              v700 = v230;
              sub_225EF73E8(&v699, v223, &v702, &v701);
              v224 = v204;
              v225 = v204;
              if (v204)
              {
                v214 = 0;

                __break(1u);
              }

              else
              {
                v699 = sub_225EF7434;
                v700 = v231;
                sub_225EF73E8(&v699, &v703, &v702, &v701);
                v212 = 0;
                v213 = 0;
                v699 = sub_225EF7B90;
                v700 = v236;
                sub_225EF73E8(&v699, &v703, &v702, &v701);
                v210 = 0;
                v211 = 0;
                _os_log_impl(&dword_225EEB000, v226, v227, "Set correctedText for Biome edit record, interactionId: %s", v216, 0xCu);
                sub_225EF7AF4(v218);
                sub_225EF7AF4(v221);
                sub_22609A168();

                v215 = v210;
              }
            }

            else
            {
              v205 = v268;

              v215 = v205;
            }

            v209 = v215;

            (*(v634 + 8))(v635, v632);

            v264 = v209;
          }

          else
          {
            v264 = v268;
          }
        }

        else
        {
          v264 = v268;
        }

        v208 = v264;

        return v208;
      }
    }

    else
    {

      return v628;
    }
  }

  else
  {

    return v628;
  }
}

uint64_t sub_225F381C4()
{
  sub_226039094(0);

  return 0;
}

uint64_t sub_225F38290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a5;
  v5[22] = a4;
  v5[18] = v5;
  v5[19] = 0;
  v5[20] = 0;
  v5[21] = 0;
  v6 = sub_226098C58();
  v5[24] = v6;
  v10 = *(v6 - 8);
  v5[25] = v10;
  v7 = *(v10 + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[19] = a4;
  v5[20] = a5;
  v8 = v5[18];

  return MEMORY[0x2822009F8](sub_225F383AC, 0, 0);
}

uint64_t sub_225F383AC()
{
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  *(v0 + 144) = v0;
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_225F384EC;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862F8, &qword_2260A0478);
  *(v0 + 112) = v2;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_225F38D88;
  *(v0 + 104) = &block_descriptor_0;
  [v4 registerFeedback:v3 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_225F384EC()
{
  v6 = *v0;
  v6[18] = *v0;
  v7 = v6 + 18;
  v1 = v6[6];
  v6[27] = v1;
  if (v1)
  {
    v4 = *v7;
    v3 = sub_225F386E4;
  }

  else
  {
    v2 = *v7;
    v3 = sub_225F38644;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225F38644()
{
  *(v0 + 144) = v0;
  v1 = *(v0 + 208);

  v2 = *(*(v0 + 144) + 8);
  v3 = *(v0 + 144);

  return v2();
}

uint64_t sub_225F386E4()
{
  v35 = v0;
  v1 = v0[27];
  v18 = v0[26];
  v19 = v0[25];
  v20 = v0[24];
  v0[18] = v0;
  swift_willThrow();
  v2 = v1;
  v0[21] = v1;
  v3 = sub_225EF5354();
  (*(v19 + 16))(v18, v3, v20);
  v4 = v1;
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  sub_225F3EAE8();

  v28 = sub_226098C48();
  v29 = sub_22609A098();
  v24 = swift_allocObject();
  *(v24 + 16) = 64;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_225F3EA68;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225F3EA70;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_225F3E1C8;
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v27 = v5;

  *v27 = sub_225EF7434;
  v27[1] = v24;

  v27[2] = sub_225EF7434;
  v27[3] = v25;

  v27[4] = sub_225F3E358;
  v27[5] = v26;
  sub_225EF5418();

  if (os_log_type_enabled(v28, v29))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v15 = sub_225EF5468(1);
    v16 = sub_225EF5468(0);
    v30 = buf;
    v31 = v15;
    v32 = v16;
    sub_225EF54BC(2, &v30);
    sub_225EF54BC(1, &v30);
    v33 = sub_225EF7434;
    v34 = v24;
    sub_225EF73E8(&v33, &v30, &v31, &v32);
    v33 = sub_225EF7434;
    v34 = v25;
    sub_225EF73E8(&v33, &v30, &v31, &v32);
    v33 = sub_225F3E358;
    v34 = v26;
    sub_225EF73E8(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_225EEB000, v28, v29, "Failed to save PersonalizationPortrait feedback: %@", buf, 0xCu);
    sub_225EF7AF4(v15);
    sub_225EF7AF4(v16);
    sub_22609A168();
  }

  else
  {
  }

  v13 = v17[27];
  v11 = v17[26];
  v12 = v17[24];
  v10 = v17[25];
  MEMORY[0x277D82BD8](v28);
  (*(v10 + 8))(v11, v12);

  v6 = v17[26];

  v7 = *(v17[18] + 8);
  v8 = v17[18];

  return v7();
}

uint64_t sub_225F38D88(uint64_t a1, char a2, void *a3)
{
  MEMORY[0x277D82BE0](a3);
  v8 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_225F38E44(v8, a3, MEMORY[0x277D839B0]);
  }

  else
  {
    v9 = a2;
    sub_225F38EA8(v8, &v9, MEMORY[0x277D839B0]);
  }

  return MEMORY[0x277D82BD8](a3);
}

uint64_t sub_225F38E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  return sub_225F3DEC0(v7, a1, a3, v3);
}

uint64_t sub_225F38F2C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a1;
  v50 = a2;
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v51 = a6;
  v52 = "Fatal error";
  v53 = "Unexpectedly found nil while unwrapping an Optional value";
  v54 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v55 = &unk_2260A0468;
  v56 = 0;
  v69 = a6;
  v57 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60, v6, v7, v8);
  v61 = &v18 - v57;

  v67 = v59;
  v68 = v60;
  sub_225EF7BD0(v58, v61);
  v62 = sub_226099DA8();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  if ((*(v63 + 48))(v61, 1) == 1)
  {
    sub_225EF7CF8(v61);
    v48 = 0;
  }

  else
  {
    v47 = sub_226099D98();
    (*(v63 + 8))(v61, v62);
    v48 = v47;
  }

  v44 = v48 | 0x1C00;
  v46 = *(v60 + 16);
  v45 = *(v60 + 24);
  swift_unknownObjectRetain();

  if (v46)
  {
    v42 = v46;
    v43 = v45;
    v36 = v45;
    v37 = v46;
    swift_getObjectType();
    v38 = sub_226099D48();
    v39 = v9;
    swift_unknownObjectRelease();
    v40 = v38;
    v41 = v39;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v34 = v41;
  v35 = v40;
  sub_2260998E8();
  if (v50)
  {
    v32 = v49;
    v33 = v50;
    v10 = v56;
    v29 = v50;
    v30 = sub_226099A68();

    v11 = *(v30 + 16);
    sub_225F3DD00(v30 + 32, &v67, v51, &v65);
    if (v10)
    {
      __break(1u);
    }

    v28 = v65;

    v31 = v28;
  }

  else
  {
    v31 = 0;
  }

  v27 = v31;
  if (v31)
  {
    v21 = v27;
    v20 = v27;
    sub_225EF7CF8(v58);

    v22 = v20;
  }

  else
  {

    sub_225EF7CF8(v58);
    v23 = v67;
    v24 = v68;

    v12 = swift_allocObject();
    v13 = v23;
    v14 = v24;
    v15 = v35;
    v16 = v34;
    v25 = v12;
    v12[2] = v51;
    v12[3] = v13;
    v12[4] = v14;
    v26 = 0;
    if (v15 != 0 || v16 != 0)
    {
      v66[0] = 0;
      v66[1] = 0;
      v66[2] = v35;
      v66[3] = v34;
      v26 = v66;
    }

    v22 = swift_task_create();
  }

  v19 = v22;

  return v19;
}

uint64_t sub_225F394F8(void *a1)
{
  v2 = [a1 correctedText];
  v3 = sub_226099A08();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_225F39554(void *a1)
{
  v2 = [a1 correctedTextV2];
  v3 = sub_226099A08();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_225F395B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 alternatives];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
  *a2 = sub_226099C88();
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_225F3966C()
{
  swift_beginAccess();
  v2 = *(v0 + 112);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_225F396BC(uint64_t a1)
{
  sub_2260998E8();
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;

  swift_endAccess();
}

uint64_t sub_225F39778(uint64_t a1)
{
  v41 = a1;
  v52 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v40 = 0;
  v42 = sub_226098C58();
  v43 = *(v42 - 8);
  v44 = v43;
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v41, v42, v3, v4);
  v45 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v6;
  v69 = v1;
  v50 = *(v6 + 112);
  v46 = v50;
  v51 = *(v6 + 120);
  v47 = v51;
  sub_2260998E8();
  v67 = v50;
  v68 = v51;
  sub_2260998E8();
  v49 = &v66;
  swift_beginAccess();
  v53 = *(v1 + 112);
  v48 = v53;
  sub_2260998E8();
  swift_endAccess();
  v64[0] = v50;
  v64[1] = v51;
  type metadata accessor for CESAEvaluationRecord();
  v54 = v64;
  sub_226099938();
  sub_225EFE6BC(v54);
  v63 = v65;
  v39 = v65 != 0;
  v38 = v39;
  sub_225EF5A0C(&v63);

  if (v38)
  {
    v7 = v45;
    v8 = sub_225EF5354();
    (*(v44 + 16))(v7, v8, v42);
    v36 = sub_226098C48();
    v33 = v36;
    v35 = sub_22609A098();
    v34 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v37 = sub_22609A4F8();
    if (os_log_type_enabled(v36, v35))
    {
      v9 = v40;
      v24 = sub_22609A188();
      v20 = v24;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v22 = 0;
      v25 = sub_225EF5468(0);
      v23 = v25;
      v26 = sub_225EF5468(v22);
      v58 = v24;
      v57 = v25;
      v56 = v26;
      v27 = 0;
      v28 = &v58;
      sub_225EF54BC(0, &v58);
      sub_225EF54BC(v27, v28);
      v55 = v37;
      v29 = v15;
      MEMORY[0x28223BE20](v15, v10, v11, v12);
      v30 = &v15[-6];
      v15[-4] = v13;
      v15[-3] = &v57;
      v15[-2] = &v56;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v32 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v33, v34, "Duplicate interactionId, overriding record!", v20, 2u);
        v18 = 0;
        sub_225EF7AF4(v23);
        sub_225EF7AF4(v26);
        sub_22609A168();

        v19 = v32;
      }
    }

    else
    {

      v19 = v40;
    }

    v16 = v19;

    (*(v44 + 8))(v45, v42);
    v17 = v16;
  }

  else
  {
    v17 = v40;
  }

  sub_2260998E8();

  v62 = v41;
  v60 = v46;
  v61 = v47;
  v15[1] = &v59;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862E8, &qword_2260A0338);
  sub_226099948();
  swift_endAccess();
}

uint64_t sub_225F39DF4(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = a2;
  v52 = &unk_2260A0348;
  v59 = sub_225EF7450;
  v63 = sub_225EF7B84;
  v65 = sub_225EF7434;
  v67 = sub_225EF7434;
  v70 = sub_225EF7B90;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v44 = 0;
  v50 = 0;
  v55 = sub_226098C58();
  v53 = *(v55 - 8);
  v54 = v55 - 8;
  v45 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, v2, v3, v4);
  v5 = v36 - v45;
  v46 = v36 - v45;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50, v57, v6, v7);
  v51 = v36 - v47;
  v82 = v56;
  v83 = v8;
  v81 = v9;
  v10 = sub_226099DA8();
  (*(*(v10 - 8) + 56))(v51, 1);

  sub_2260998E8();

  v48 = sub_225F3E72C();
  v61 = 7;
  v11 = swift_allocObject();
  v12 = v48;
  v13 = v49;
  v14 = v50;
  v15 = v51;
  v16 = v52;
  v17 = v57;
  v18 = v11;
  v19 = v56;
  v18[2] = v49;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = v19;
  v18[6] = v17;
  sub_225F38F2C(v14, v14, v15, v16, v18, MEMORY[0x277D84F78] + 8);

  v20 = sub_225EF5354();
  (*(v53 + 16))(v5, v20, v55);
  sub_2260998E8();
  v60 = 32;
  v21 = swift_allocObject();
  v22 = v57;
  v62 = v21;
  *(v21 + 16) = v56;
  *(v21 + 24) = v22;
  v74 = sub_226098C48();
  v75 = sub_22609A088();
  v58 = 17;
  v66 = swift_allocObject();
  *(v66 + 16) = 32;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v23 = swift_allocObject();
  v24 = v62;
  v64 = v23;
  *(v23 + 16) = v59;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v64;
  v71 = v25;
  *(v25 + 16) = v63;
  *(v25 + 24) = v26;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v69 = sub_22609A4F8();
  v72 = v27;

  v28 = v66;
  v29 = v72;
  *v72 = v65;
  v29[1] = v28;

  v30 = v68;
  v31 = v72;
  v72[2] = v67;
  v31[3] = v30;

  v32 = v71;
  v33 = v72;
  v72[4] = v70;
  v33[5] = v32;
  sub_225EF5418();

  if (os_log_type_enabled(v74, v75))
  {
    v34 = v44;
    v37 = sub_22609A188();
    v36[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v38 = sub_225EF5468(0);
    v39 = sub_225EF5468(1);
    v40 = &v80;
    v80 = v37;
    v41 = &v79;
    v79 = v38;
    v42 = &v78;
    v78 = v39;
    sub_225EF54BC(2, &v80);
    sub_225EF54BC(1, v40);
    v76 = v65;
    v77 = v66;
    sub_225EF73E8(&v76, v40, v41, v42);
    v43 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v76 = v67;
      v77 = v68;
      sub_225EF73E8(&v76, &v80, &v79, &v78);
      v36[0] = 0;
      v76 = v70;
      v77 = v71;
      sub_225EF73E8(&v76, &v80, &v79, &v78);
      _os_log_impl(&dword_225EEB000, v74, v75, "Submitted delayed task for records to be written after 30 seconds, interactionId: %s", v37, 0xCu);
      sub_225EF7AF4(v38);
      sub_225EF7AF4(v39);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v74);
  return (*(v53 + 8))(v46, v55);
}

uint64_t sub_225F3A57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a6;
  v6[20] = a5;
  v6[19] = a4;
  v6[14] = v6;
  v6[15] = 0;
  v6[8] = 0;
  v6[9] = 0;
  v6[18] = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v8 = sub_226098C58();
  v6[23] = v8;
  v13 = *(v8 - 8);
  v6[24] = v13;
  v14 = *(v13 + 64);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v9 = sub_22609A358();
  v6[27] = v9;
  v15 = *(v9 - 8);
  v6[28] = v15;
  v10 = *(v15 + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[15] = a4;
  v6[8] = a5;
  v6[9] = a6;

  v11 = v6[14];

  return MEMORY[0x2822009F8](sub_225F3A774, a4, 0);
}

uint64_t sub_225F3A774()
{
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  *(v0 + 112) = v0;
  *(v0 + 128) = 30;
  sub_225EF81C4();
  *(v0 + 80) = sub_22609A628();
  *(v0 + 88) = v1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  v9 = sub_225F3E9A8();
  sub_225F7E764();
  v2 = swift_task_alloc();
  v8[30] = v2;
  *v2 = v8[14];
  v2[1] = sub_225EF41F0;
  v3 = v8[29];
  v4 = v8[27];

  return sub_225F7E788(v0 + 80, v0 + 40, v3, v4, v9);
}

uint64_t sub_225F3A8E0()
{
  v72 = v0;
  v60 = v0[31];
  v1 = v0[29];
  v2 = v0[28];
  v3 = v0[27];
  v0[14] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = v0[21];
  v5 = v0[19];
  v0[12] = v0[20];
  v0[13] = v4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862E8, &qword_2260A0338);
  sub_226099888();
  swift_endAccess();
  v61 = v0[17];
  if (v61)
  {
    v6 = v59[25];
    v48 = v59[23];
    v50 = v59[21];
    v49 = v59[20];
    v47 = v59[24];
    v59[18] = v61;
    v7 = sub_225EF5354();
    (*(v47 + 16))(v6, v7, v48);
    sub_2260998E8();
    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    *(v51 + 24) = v50;
    oslog = sub_226098C48();
    v58 = sub_22609A088();
    v53 = swift_allocObject();
    *(v53 + 16) = 32;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_225EF7450;
    *(v52 + 24) = v51;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_225EF7B84;
    *(v55 + 24) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v56 = v8;

    *v56 = sub_225EF7434;
    v56[1] = v53;

    v56[2] = sub_225EF7434;
    v56[3] = v54;

    v56[4] = sub_225EF7B90;
    v56[5] = v55;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v58))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v33 = sub_225EF5468(0);
      v34 = sub_225EF5468(1);
      v67 = buf;
      v68 = v33;
      v69 = v34;
      sub_225EF54BC(2, &v67);
      sub_225EF54BC(1, &v67);
      v70 = sub_225EF7434;
      v71 = v53;
      sub_225EF73E8(&v70, &v67, &v68, &v69);
      v70 = sub_225EF7434;
      v71 = v54;
      sub_225EF73E8(&v70, &v67, &v68, &v69);
      v70 = sub_225EF7B90;
      v71 = v55;
      sub_225EF73E8(&v70, &v67, &v68, &v69);
      _os_log_impl(&dword_225EEB000, oslog, v58, "Writing record with interactionId: %s", buf, 0xCu);
      sub_225EF7AF4(v33);
      sub_225EF7AF4(v34);
      sub_22609A168();
    }

    else
    {
    }

    v29 = v59[25];
    v30 = v59[23];
    v31 = v59[22];
    v28 = v59[24];
    MEMORY[0x277D82BD8](oslog);
    (*(v28 + 8))(v29, v30);
    v12 = sub_226099DA8();
    (*(*(v12 - 8) + 56))(v31, 1);

    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v61;
    sub_225F3B658(0, 0, v31, &unk_2260A0460, v13, MEMORY[0x277D84F78] + 8);
    sub_225EF7CF8(v31);
  }

  else
  {
    v9 = v59[26];
    v36 = v59[23];
    v38 = v59[21];
    v37 = v59[20];
    v35 = v59[24];
    v10 = sub_225EF5354();
    (*(v35 + 16))(v9, v10, v36);
    sub_2260998E8();
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    *(v39 + 24) = v38;
    log = sub_226098C48();
    v46 = sub_22609A098();
    v41 = swift_allocObject();
    *(v41 + 16) = 32;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_225EF7450;
    *(v40 + 24) = v39;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_225EF7B84;
    *(v43 + 24) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v44 = v11;

    *v44 = sub_225EF7434;
    v44[1] = v41;

    v44[2] = sub_225EF7434;
    v44[3] = v42;

    v44[4] = sub_225EF7B90;
    v44[5] = v43;
    sub_225EF5418();

    if (os_log_type_enabled(log, v46))
    {
      v25 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v26 = sub_225EF5468(0);
      v27 = sub_225EF5468(1);
      v62 = v25;
      v63 = v26;
      v64 = v27;
      sub_225EF54BC(2, &v62);
      sub_225EF54BC(1, &v62);
      v65 = sub_225EF7434;
      v66 = v41;
      sub_225EF73E8(&v65, &v62, &v63, &v64);
      v65 = sub_225EF7434;
      v66 = v42;
      sub_225EF73E8(&v65, &v62, &v63, &v64);
      v65 = sub_225EF7B90;
      v66 = v43;
      sub_225EF73E8(&v65, &v62, &v63, &v64);
      _os_log_impl(&dword_225EEB000, log, v46, "Record for interactionId %s does not exist or was already removed!", v25, 0xCu);
      sub_225EF7AF4(v26);
      sub_225EF7AF4(v27);
      sub_22609A168();
    }

    else
    {
    }

    v23 = v59[26];
    v24 = v59[23];
    v22 = v59[24];
    MEMORY[0x277D82BD8](log);
    (*(v22 + 8))(v23, v24);
  }

  v18 = v59[29];
  v19 = v59[26];
  v20 = v59[25];
  v21 = v59[22];
  v14 = v59[19];

  v15 = *(v59[14] + 8);
  v16 = v59[14];

  return v15();
}

uint64_t sub_225F3B658(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a1;
  v49 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v50 = a6;
  v51 = "Fatal error";
  v52 = "Unexpectedly found nil while unwrapping an Optional value";
  v53 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v54 = &unk_2260A0448;
  v55 = 0;
  v68 = a6;
  v56 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59, v6, v7, v8);
  v60 = &v19 - v56;

  v66 = v58;
  v67 = v59;
  sub_225EF7BD0(v57, v60);
  v61 = sub_226099DA8();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  if ((*(v62 + 48))(v60, 1) == 1)
  {
    sub_225EF7CF8(v60);
    v47 = 0;
  }

  else
  {
    v46 = sub_226099D98();
    (*(v62 + 8))(v60, v61);
    v47 = v46;
  }

  v43 = v47 | 0x1000;
  v45 = *(v59 + 16);
  v44 = *(v59 + 24);
  swift_unknownObjectRetain();

  if (v45)
  {
    v41 = v45;
    v42 = v44;
    v35 = v44;
    v36 = v45;
    swift_getObjectType();
    v37 = sub_226099D48();
    v38 = v9;
    swift_unknownObjectRelease();
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v33 = v40;
  v34 = v39;
  if (v49)
  {
    v31 = v48;
    v32 = v49;
    v10 = v55;
    v29 = sub_226099A68();
    v11 = *(v29 + 16);
    sub_225F3DF50(v29 + 32, &v66, v50, &v64);
    if (v10)
    {
      __break(1u);
    }

    v28 = v64;

    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  v27 = v30;
  if (v30)
  {
    v21 = v27;
    v22 = v27;
  }

  else
  {

    v23 = v66;
    v24 = v67;

    v12 = swift_allocObject();
    v13 = v23;
    v14 = v24;
    v15 = v34;
    v16 = v33;
    v25 = v12;
    v12[2] = v50;
    v12[3] = v13;
    v12[4] = v14;
    v26 = 0;
    if (v15 != 0 || v16 != 0)
    {
      v65[0] = 0;
      v65[1] = 0;
      v65[2] = v34;
      v65[3] = v33;
      v26 = v65;
    }

    v22 = swift_task_create();
  }

  sub_225EF7DA0();
  v20 = v17;

  return v20;
}

uint64_t sub_225F3BBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = v3;
  v4[16] = a3;
  v4[15] = a2;
  v4[14] = a1;
  v4[9] = v4;
  v4[10] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[11] = 0;
  v4[13] = 0;
  v5 = sub_226098C58();
  v4[18] = v5;
  v10 = *(v5 - 8);
  v4[19] = v10;
  v6 = *(v10 + 64) + 15;
  v4[20] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[10] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[11] = v13;
  v8 = v4[9];

  return MEMORY[0x2822009F8](sub_225F3BD74, v13, 0);
}

uint64_t sub_225F3BD74()
{
  v42 = v0;
  v32 = v0[17];
  v34 = v0[16];
  v33 = v0[15];
  v0[9] = v0;
  sub_2260998E8();
  swift_beginAccess();
  v35 = *(v32 + 112);
  sub_2260998E8();
  swift_endAccess();
  v0[7] = v33;
  v0[8] = v34;
  type metadata accessor for CESAEvaluationRecord();
  sub_226099938();
  sub_225EFE6BC((v0 + 7));
  v36 = v0[12];
  if (v36)
  {
    v30 = v31[21];
    v29 = v31[14];
    v31[13] = v36;

    v1 = sub_226099DA8();
    (*(*(v1 - 8) + 56))(v30, 1);

    MEMORY[0x277D82BE0](v29);
    v2 = swift_allocObject();
    v2[2] = 0;
    v2[3] = 0;
    v2[4] = v36;
    v2[5] = v29;
    sub_225F3B658(0, 0, v30, &unk_2260A0360, v2, MEMORY[0x277D84F78] + 8);
    sub_225EF7CF8(v30);
  }

  else
  {
    v3 = v31[20];
    v18 = v31[18];
    v20 = v31[16];
    v19 = v31[15];
    v17 = v31[19];

    v4 = sub_225EF5354();
    (*(v17 + 16))(v3, v4, v18);
    sub_2260998E8();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    oslog = sub_226098C48();
    v28 = sub_22609A088();
    v23 = swift_allocObject();
    *(v23 + 16) = 32;
    v24 = swift_allocObject();
    *(v24 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_225EF7450;
    *(v22 + 24) = v21;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_225EF7B84;
    *(v25 + 24) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v26 = v5;

    *v26 = sub_225EF7434;
    v26[1] = v23;

    v26[2] = sub_225EF7434;
    v26[3] = v24;

    v26[4] = sub_225EF7B90;
    v26[5] = v25;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v28))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v15 = sub_225EF5468(0);
      v16 = sub_225EF5468(1);
      v37 = buf;
      v38 = v15;
      v39 = v16;
      sub_225EF54BC(2, &v37);
      sub_225EF54BC(1, &v37);
      v40 = sub_225EF7434;
      v41 = v23;
      sub_225EF73E8(&v40, &v37, &v38, &v39);
      v40 = sub_225EF7434;
      v41 = v24;
      sub_225EF73E8(&v40, &v37, &v38, &v39);
      v40 = sub_225EF7B90;
      v41 = v25;
      sub_225EF73E8(&v40, &v37, &v38, &v39);
      _os_log_impl(&dword_225EEB000, oslog, v28, "Correction data not found for interaction id %s", buf, 0xCu);
      sub_225EF7AF4(v15);
      sub_225EF7AF4(v16);
      sub_22609A168();
    }

    else
    {
    }

    v12 = v31[20];
    v13 = v31[18];
    v11 = v31[19];
    MEMORY[0x277D82BD8](oslog);
    (*(v11 + 8))(v12, v13);
  }

  v6 = v31[21];
  v10 = v31[20];

  v7 = *(v31[9] + 8);
  v8 = v31[9];

  return v7();
}

uint64_t sub_225F3C5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  v6 = v5[2];
  return MEMORY[0x2822009F8](sub_225F3C5FC, a4, 0);
}

uint64_t sub_225F3C5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[6];
  v6 = v4[5];
  v4[2] = v4;
  sub_225F34670(v5, a2, a3, a4);
  v7 = *(v4[2] + 8);
  v8 = v4[2];

  return v7();
}

uint64_t sub_225F3C690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = v3;
  v4[16] = a3;
  v4[15] = a2;
  v4[14] = a1;
  v4[9] = v4;
  v4[10] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[11] = 0;
  v4[13] = 0;
  v5 = sub_226098C58();
  v4[18] = v5;
  v9 = *(v5 - 8);
  v4[19] = v9;
  v6 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[10] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[11] = v12;
  v7 = v4[9];

  return MEMORY[0x2822009F8](sub_225F3C7E0, v12, 0);
}

uint64_t sub_225F3C7E0()
{
  v38 = v0;
  v28 = v0[17];
  v30 = v0[16];
  v29 = v0[15];
  v0[9] = v0;
  sub_2260998E8();
  swift_beginAccess();
  v31 = *(v28 + 112);
  sub_2260998E8();
  swift_endAccess();
  v0[7] = v29;
  v0[8] = v30;
  type metadata accessor for CESAEvaluationRecord();
  sub_226099938();
  sub_225EFE6BC((v0 + 7));
  v32 = v0[12];
  v0[21] = v32;
  if (v32)
  {
    v27[13] = v32;

    v1 = v27[9];

    return MEMORY[0x2822009F8](sub_225F3CF3C, v32, 0);
  }

  else
  {
    v2 = v27[20];
    v16 = v27[18];
    v18 = v27[16];
    v17 = v27[15];
    v15 = v27[19];

    v3 = sub_225EF5354();
    (*(v15 + 16))(v2, v3, v16);
    sub_2260998E8();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v25 = sub_226098C48();
    v26 = sub_22609A088();
    v21 = swift_allocObject();
    *(v21 + 16) = 32;
    v22 = swift_allocObject();
    *(v22 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_225EF7450;
    *(v20 + 24) = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_225EF7B84;
    *(v23 + 24) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v24 = v4;

    *v24 = sub_225EF7434;
    v24[1] = v21;

    v24[2] = sub_225EF7434;
    v24[3] = v22;

    v24[4] = sub_225EF7B90;
    v24[5] = v23;
    sub_225EF5418();

    if (os_log_type_enabled(v25, v26))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v13 = sub_225EF5468(0);
      v14 = sub_225EF5468(1);
      v33 = buf;
      v34 = v13;
      v35 = v14;
      sub_225EF54BC(2, &v33);
      sub_225EF54BC(1, &v33);
      v36 = sub_225EF7434;
      v37 = v21;
      sub_225EF73E8(&v36, &v33, &v34, &v35);
      v36 = sub_225EF7434;
      v37 = v22;
      sub_225EF73E8(&v36, &v33, &v34, &v35);
      v36 = sub_225EF7B90;
      v37 = v23;
      sub_225EF73E8(&v36, &v33, &v34, &v35);
      _os_log_impl(&dword_225EEB000, v25, v26, "Evaluation record not found for interaction id %s", buf, 0xCu);
      sub_225EF7AF4(v13);
      sub_225EF7AF4(v14);
      sub_22609A168();
    }

    else
    {
    }

    v10 = v27[20];
    v11 = v27[18];
    v9 = v27[19];
    MEMORY[0x277D82BD8](v25);
    (*(v9 + 8))(v10, v11);
    v5 = v27[20];

    v6 = *(v27[9] + 8);
    v7 = v27[9];

    return v6();
  }
}

uint64_t sub_225F3CF3C()
{
  v1 = v0[21];
  v5 = v0[17];
  v2 = v0[14];
  v0[9] = v0;
  sub_225F32368(v2);
  v3 = v0[9];

  return MEMORY[0x2822009F8](sub_225F3CFBC, v5, 0);
}

uint64_t sub_225F3CFBC()
{
  v1 = v0[21];
  v0[9] = v0;

  v2 = v0[20];

  v3 = *(v0[9] + 8);
  v4 = v0[9];

  return v3();
}

uint64_t sub_225F3D074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = v4;
  v5[18] = a4;
  v5[17] = a3;
  v5[16] = a2;
  v5[15] = a1;
  v5[11] = v5;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;
  v5[12] = 0;
  v5[14] = 0;
  v6 = sub_226098C58();
  v5[20] = v6;
  v10 = *(v6 - 8);
  v5[21] = v10;
  v7 = *(v10 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = a4;
  v5[12] = v14;
  v8 = v5[11];

  return MEMORY[0x2822009F8](sub_225F3D1D8, v14, 0);
}

uint64_t sub_225F3D1D8()
{
  v38 = v0;
  v28 = v0[19];
  v30 = v0[18];
  v29 = v0[17];
  v0[11] = v0;
  sub_2260998E8();
  swift_beginAccess();
  v31 = *(v28 + 112);
  sub_2260998E8();
  swift_endAccess();
  v0[9] = v29;
  v0[10] = v30;
  type metadata accessor for CESAEvaluationRecord();
  sub_226099938();
  sub_225EFE6BC((v0 + 9));
  v32 = v0[13];
  v0[23] = v32;
  if (v32)
  {
    v27[14] = v32;

    v1 = v27[11];

    return MEMORY[0x2822009F8](sub_225F3D934, v32, 0);
  }

  else
  {
    v2 = v27[22];
    v16 = v27[20];
    v18 = v27[18];
    v17 = v27[17];
    v15 = v27[21];

    v3 = sub_225EF5354();
    (*(v15 + 16))(v2, v3, v16);
    sub_2260998E8();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v25 = sub_226098C48();
    v26 = sub_22609A088();
    v21 = swift_allocObject();
    *(v21 + 16) = 32;
    v22 = swift_allocObject();
    *(v22 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_225EF7450;
    *(v20 + 24) = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_225EF7B84;
    *(v23 + 24) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v24 = v4;

    *v24 = sub_225EF7434;
    v24[1] = v21;

    v24[2] = sub_225EF7434;
    v24[3] = v22;

    v24[4] = sub_225EF7B90;
    v24[5] = v23;
    sub_225EF5418();

    if (os_log_type_enabled(v25, v26))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v13 = sub_225EF5468(0);
      v14 = sub_225EF5468(1);
      v33 = buf;
      v34 = v13;
      v35 = v14;
      sub_225EF54BC(2, &v33);
      sub_225EF54BC(1, &v33);
      v36 = sub_225EF7434;
      v37 = v21;
      sub_225EF73E8(&v36, &v33, &v34, &v35);
      v36 = sub_225EF7434;
      v37 = v22;
      sub_225EF73E8(&v36, &v33, &v34, &v35);
      v36 = sub_225EF7B90;
      v37 = v23;
      sub_225EF73E8(&v36, &v33, &v34, &v35);
      _os_log_impl(&dword_225EEB000, v25, v26, "Evaluation record not found for interaction id %s", buf, 0xCu);
      sub_225EF7AF4(v13);
      sub_225EF7AF4(v14);
      sub_22609A168();
    }

    else
    {
    }

    v10 = v27[22];
    v11 = v27[20];
    v9 = v27[21];
    MEMORY[0x277D82BD8](v25);
    (*(v9 + 8))(v10, v11);
    v5 = v27[22];

    v6 = *(v27[11] + 8);
    v7 = v27[11];

    return v6();
  }
}

uint64_t sub_225F3D934()
{
  v1 = v0[23];
  v6 = v0[19];
  v2 = v0[16];
  v3 = v0[15];
  v0[11] = v0;
  sub_225F3242C(v3, v2);
  v4 = v0[11];

  return MEMORY[0x2822009F8](sub_225F3D9B8, v6, 0);
}

uint64_t sub_225F3D9B8()
{
  v1 = v0[23];
  v0[11] = v0;

  v2 = v0[22];

  v3 = *(v0[11] + 8);
  v4 = v0[11];

  return v3();
}

uint64_t sub_225F3DA70()
{
  sub_225EFE6E8((v0 + 112));
  swift_defaultActor_destroy();
  return v2;
}

uint64_t sub_225F3DB18()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862F0, &qword_2260A0438);
  sub_22609A4F8();
  type metadata accessor for CESAEvaluationRecord();
  v1 = sub_2260998A8();
  result = v0;
  *(v0 + 112) = v1;
  return result;
}

unint64_t sub_225F3DBB0()
{
  v2 = qword_280D765B8;
  if (!qword_280D765B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860E8, &qword_2260A02F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765B8);
    return WitnessTable;
  }

  return v2;
}

id sub_225F3DC38()
{
  v2 = sub_2260999F8();
  v3 = [v1 initWithImplicitlyEngagedString_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

id sub_225F3DC9C()
{
  v2 = sub_2260999F8();
  v3 = [v1 initWithExplicitlyRejectedString_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

uint64_t sub_225F3DD00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_22609A3B8();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_225F3DEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v4, a1);
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_225F3DF50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_22609A3B8();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

unint64_t sub_225F3E110()
{
  v2 = qword_280D765E0;
  if (!qword_280D765E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786CB0, &unk_2260A0300);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F3E198()
{
  result = *(v0 + 16);
  sub_225F177EC();
  return result;
}

uint64_t sub_225F3E1D4(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a4();
  v8 = *a1;
  MEMORY[0x277D82BE0](v9);
  sub_22609A1B8();
  if (v9)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (*a2)
  {
    MEMORY[0x277D82BE0](v9);
    *v5 = v9;
    result = MEMORY[0x277D82BD8](v9);
    *a2 = v5 + 1;
  }

  else
  {
    result = MEMORY[0x277D82BD8](v9);
  }

  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_225F3E3A4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862D0, &qword_2260A0530);
  v1 = sub_225F3E40C();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F3E40C()
{
  v2 = qword_27D7862D8;
  if (!qword_27D7862D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7862D0, &qword_2260A0530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7862D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F3E494()
{
  v2 = qword_27D7862E0;
  if (!qword_27D7862E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7862E0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_225F3E4F8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F38290(a1, v6, v7, v8, v9);
}

uint64_t sub_225F3E5DC()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_225F3E72C()
{
  v2 = qword_280D769A8;
  if (!qword_280D769A8)
  {
    type metadata accessor for CESAPreviousEvaluationRecordStorage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D769A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F3E7D4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F3A57C(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_225F3E8C4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F3C5B0(a1, v6, v7, v8, v9);
}

unint64_t sub_225F3E9A8()
{
  v2 = qword_280D76360;
  if (!qword_280D76360)
  {
    sub_22609A358();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76360);
    return WitnessTable;
  }

  return v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_225F3EB14()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D786308);
  __swift_project_value_buffer(v1, qword_27D786308);
  return sub_225F3EB60();
}

uint64_t sub_225F3EB60()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F3EC5C()
{
  if (qword_27D785D68 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D786308);
}

uint64_t sub_225F3ECC8(uint64_t a1)
{
  v6[2] = 0;
  v6[3] = a1;
  v6[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786520, &unk_2260A0490);
  v1 = sub_225F3EFC8();
  v6[0] = sub_225F15970(sub_225F3EE10, 0, v4, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v5);
  sub_226099AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3F050();
  v3 = sub_2260999C8();

  sub_225EFE6E8(v6);
  return v3;
}

uint64_t sub_225F3EE10@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = 0u;
  v12 = 0u;
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  v10[0] = sub_22609A4E8();
  v10[1] = v2;
  v3 = sub_226099AA8();
  MEMORY[0x22AA735F0](v3);

  sub_22609A4C8();
  v4 = sub_226099AA8();
  MEMORY[0x22AA735F0](v4);

  sub_22609A4C8();
  v5 = sub_226099AA8();
  MEMORY[0x22AA735F0](v5);

  sub_2260998E8();
  sub_225EFE6BC(v10);
  result = sub_226099A88();
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_225F3EFC8()
{
  v2 = qword_27D786320;
  if (!qword_27D786320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786520, &unk_2260A0490);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F3F050()
{
  v2 = qword_27D786440;
  if (!qword_27D786440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7869D0, &qword_2260A01B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786440);
    return WitnessTable;
  }

  return v2;
}

uint64_t static CESRAsrReplayCounterfactualABManager.runReplays(event:replayTypes:)(uint64_t a1, uint64_t a2)
{
  v3[133] = a2;
  v3[132] = a1;
  v3[116] = v3;
  v3[117] = 0;
  v3[118] = 0;
  v3[119] = 0;
  v3[62] = 0;
  v3[63] = 0;
  v3[64] = 0;
  v3[65] = 0;
  v3[120] = 0;
  v3[68] = 0;
  v3[69] = 0;
  v3[123] = 0;
  memset(v3 + 26, 0, 0x60uLL);
  v3[124] = 0;
  v3[125] = 0;
  v3[86] = 0;
  v3[87] = 0;
  v4 = sub_226098C58();
  v3[134] = v4;
  v7 = *(v4 - 8);
  v3[135] = v7;
  v8 = *(v7 + 64);
  v3[136] = swift_task_alloc();
  v3[137] = swift_task_alloc();
  v3[138] = swift_task_alloc();
  v3[117] = a1;
  v3[118] = a2;
  v3[119] = v2;
  v5 = v3[116];

  return MEMORY[0x2822009F8](sub_225F3F278, 0, 0);
}

uint64_t sub_225F3F278()
{
  v183 = v0;
  v1 = *(v0 + 1056);
  *(v0 + 928) = v0;
  v173 = [v1 metadata];
  if (v173)
  {
    v171 = [v173 language];
    if (v171)
    {
      v167 = sub_226099A08();
      v168 = v2;
      MEMORY[0x277D82BD8](v171);
      v169 = v167;
      v170 = v168;
    }

    else
    {
      v169 = 0;
      v170 = 0;
    }

    MEMORY[0x277D82BD8](v173);
    v165 = v169;
    v166 = v170;
  }

  else
  {
    v165 = 0;
    v166 = 0;
  }

  *(v172 + 1120) = v166;
  *(v172 + 1112) = v165;
  if (!v166)
  {
    goto LABEL_94;
  }

  v3 = *(v172 + 1056);
  *(v172 + 496) = v165;
  *(v172 + 504) = v166;
  v4 = [v3 metadata];
  v164 = v4;
  if (v4)
  {
    v5 = [v4 task];
    v163 = v5;
    if (v5)
    {
      v159 = sub_226099A08();
      v160 = v6;
      MEMORY[0x277D82BD8](v163);
      v161 = v159;
      v162 = v160;
    }

    else
    {
      v161 = 0;
      v162 = 0;
    }

    MEMORY[0x277D82BD8](v164);
    v157 = v161;
    v158 = v162;
  }

  else
  {
    v157 = 0;
    v158 = 0;
  }

  *(v172 + 1136) = v158;
  *(v172 + 1128) = v157;
  if (!v158)
  {

LABEL_94:
    v39 = *(v172 + 1096);
    v54 = *(v172 + 1072);
    v55 = *(v172 + 1056);
    v53 = *(v172 + 1080);
    v40 = sub_225F3EC5C();
    (*(v53 + 16))(v39, v40, v54);
    MEMORY[0x277D82BE0](v55);
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    log = sub_226098C48();
    v63 = sub_22609A088();
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_225F49848;
    *(v57 + 24) = v56;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_225EF7B84;
    *(v60 + 24) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v61 = v41;

    *v61 = sub_225EF7434;
    v61[1] = v58;

    v61[2] = sub_225EF7434;
    v61[3] = v59;

    v61[4] = sub_225EF7B90;
    v61[5] = v60;
    sub_225EF5418();

    if (os_log_type_enabled(log, v63))
    {
      v50 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v51 = sub_225EF5468(0);
      v52 = sub_225EF5468(1);
      v174 = v50;
      v175 = v51;
      v176 = v52;
      sub_225EF54BC(2, &v174);
      sub_225EF54BC(1, &v174);
      v177 = sub_225EF7434;
      v178 = v58;
      sub_225EF73E8(&v177, &v174, &v175, &v176);
      v177 = sub_225EF7434;
      v178 = v59;
      sub_225EF73E8(&v177, &v174, &v175, &v176);
      v177 = sub_225EF7B90;
      v178 = v60;
      sub_225EF73E8(&v177, &v174, &v175, &v176);
      _os_log_impl(&dword_225EEB000, log, v63, "Replay record for requestId %s is incomplete, skipping replay attempt", v50, 0xCu);
      sub_225EF7AF4(v51);
      sub_225EF7AF4(v52);
      sub_22609A168();
    }

    else
    {
    }

    v48 = *(v172 + 1096);
    v49 = *(v172 + 1072);
    v47 = *(v172 + 1080);
    MEMORY[0x277D82BD8](log);
    (*(v47 + 8))(v48, v49);
    goto LABEL_98;
  }

  v155 = *(v172 + 1056);
  *(v172 + 512) = v157;
  *(v172 + 520) = v158;
  v7 = sub_226098A78();
  *(v172 + 1144) = v7;
  v153 = *(v7 - 8);
  *(v172 + 1152) = v153;
  v8 = *(v153 + 64) + 15;
  v154 = swift_task_alloc();
  *(v172 + 1160) = v154;
  sub_226098A68();
  *(v172 + 1168) = type metadata accessor for CESASelfHelper();
  v9 = [v155 metadata];
  v156 = v9;
  if (v9 && (v152 = [v9 ids], MEMORY[0x277D82BD8](v156), v152))
  {
    v10 = [v152 asrId];
    v151 = v10;
    if (v10)
    {
      v147 = sub_226099A08();
      v148 = v11;
      MEMORY[0x277D82BD8](v151);
      v149 = v147;
      v150 = v148;
    }

    else
    {
      v149 = 0;
      v150 = 0;
    }

    MEMORY[0x277D82BD8](v152);
    v145 = v149;
    v146 = v150;
  }

  else
  {
    v145 = 0;
    v146 = 0;
  }

  *(v172 + 528) = v145;
  *(v172 + 536) = v146;
  if (*(v172 + 536))
  {
    v12 = *(v172 + 536);
    v179 = *(v172 + 528);
    v180 = v12;
  }

  else
  {
    v179 = sub_226099AA8();
    v180 = v13;
    if (*(v172 + 536))
    {
      sub_225EFE6BC(v172 + 528);
    }
  }

  v143 = *(v172 + 1064);
  sub_22603C3F4(v179, v180, v154);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786328, &unk_2260A05C0);
  sub_22609A4F8();
  *(v172 + 960) = sub_2260998A8();
  sub_2260998E8();
  *(v172 + 968) = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786330, &qword_2260A04C0);
  sub_225F4C138();
  sub_22609A028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786340, &qword_2260A04C8);
  sub_22609A388();
  v144 = *(v172 + 976);
  *(v172 + 1176) = v144;
  if (v144)
  {
    v14 = *(v172 + 1056);
    *(v172 + 984) = v144;
    v15 = [v14 audio];
    v142 = v15;
    if (v15)
    {
      v138 = sub_226098978();
      v139 = v16;
      MEMORY[0x277D82BD8](v142);
      v140 = v138;
      v141 = v139;
    }

    else
    {
      v140 = 0;
      v141 = 0xF000000000000000;
    }

    v131 = *(v172 + 1128);
    v129 = *(v172 + 1112);
    v130 = *(v172 + 1120);
    v132 = *(v172 + 1136);
    sub_2260998E8();
    sub_2260998E8();
    v133 = sub_225F49850();
    v17 = sub_225F4985C();
    CESRAsrReplayWorkerConfig.init(audio:language:taskHint:useBaseProfile:profileData:requestEntityStrings:)(v140, v141, v129, v130, v131, v132, v133 & 1, 0, (v172 + 112), 0xF000000000000000, v17);
    memcpy((v172 + 208), (v172 + 112), 0x60uLL);
    *(v172 + 592) = sub_226099AA8();
    *(v172 + 600) = v18;
    sub_226099938();
    sub_225EFE6BC(v172 + 592);
    v135 = *(v172 + 576);
    v136 = *(v172 + 584);
    sub_2260998E8();
    v134 = sub_226099AA8();
    v137 = v19;
    sub_2260998E8();
    *(v172 + 400) = v135;
    *(v172 + 408) = v136;
    *(v172 + 416) = v134;
    *(v172 + 424) = v137;
    if (*(v172 + 408))
    {
      sub_225F4C5E0((v172 + 400), (v172 + 880));
      if (*(v172 + 424))
      {
        *(v172 + 896) = *(v172 + 880);
        *(v172 + 912) = *(v172 + 416);
        v127 = MEMORY[0x22AA72BD0](*(v172 + 896), *(v172 + 904), *(v172 + 912), *(v172 + 920));
        sub_225EFE6BC(v172 + 912);
        sub_225EFE6BC(v172 + 896);
        sub_225EFE6BC(v172 + 400);
        v128 = v127;
        goto LABEL_42;
      }

      sub_225EFE6BC(v172 + 880);
    }

    else if (!*(v172 + 424))
    {
      sub_225EFE6BC(v172 + 400);
      v128 = 1;
LABEL_42:

      if (v128)
      {
        v126 = [*(v172 + 1056) profile];
        if (v126)
        {
          v122 = sub_226098978();
          v123 = v20;
          MEMORY[0x277D82BD8](v126);
          v124 = v122;
          v125 = v123;
        }

        else
        {
          v124 = 0;
          v125 = 0xF000000000000000;
        }

        v120 = v124;
        v121 = v125;
      }

      else
      {
        v120 = 0;
        v121 = 0xF000000000000000;
      }

      v21 = *(v172 + 280);
      v22 = *(v172 + 288);
      *(v172 + 280) = v120;
      *(v172 + 288) = v121;
      sub_225F4C1F8(v21, v22);
      *(v172 + 624) = sub_226099AA8();
      *(v172 + 632) = v23;
      sub_226099938();
      sub_225EFE6BC(v172 + 624);
      v117 = *(v172 + 608);
      v118 = *(v172 + 616);
      sub_2260998E8();
      v116 = sub_226099AA8();
      v119 = v24;
      sub_2260998E8();
      *(v172 + 432) = v117;
      *(v172 + 440) = v118;
      *(v172 + 448) = v116;
      *(v172 + 456) = v119;
      if (*(v172 + 440))
      {
        sub_225F4C5E0((v172 + 432), (v172 + 832));
        if (*(v172 + 456))
        {
          *(v172 + 848) = *(v172 + 832);
          *(v172 + 864) = *(v172 + 448);
          v114 = MEMORY[0x22AA72BD0](*(v172 + 848), *(v172 + 856), *(v172 + 864), *(v172 + 872));
          sub_225EFE6BC(v172 + 864);
          sub_225EFE6BC(v172 + 848);
          sub_225EFE6BC(v172 + 432);
          v115 = v114;
          goto LABEL_56;
        }

        sub_225EFE6BC(v172 + 832);
      }

      else if (!*(v172 + 456))
      {
        sub_225EFE6BC(v172 + 432);
        v115 = 1;
LABEL_56:

        if (v115)
        {
          v111 = [*(v172 + 1056) contextualEntities];
          v112 = sub_226099C88();
          MEMORY[0x277D82BD8](v111);
          v113 = v112;
        }

        else
        {
          v113 = sub_22609A4F8();
        }

        v25 = *(v172 + 296);
        *(v172 + 296) = v113;

        *(v172 + 656) = sub_226099AA8();
        *(v172 + 664) = v26;
        sub_226099938();
        sub_225EFE6BC(v172 + 656);
        v108 = *(v172 + 640);
        v109 = *(v172 + 648);
        sub_2260998E8();
        v107 = sub_226099AA8();
        v110 = v27;
        sub_2260998E8();
        *(v172 + 464) = v108;
        *(v172 + 472) = v109;
        *(v172 + 480) = v107;
        *(v172 + 488) = v110;
        if (*(v172 + 472))
        {
          sub_225F4C5E0((v172 + 464), (v172 + 784));
          if (*(v172 + 488))
          {
            *(v172 + 800) = *(v172 + 784);
            *(v172 + 816) = *(v172 + 480);
            v105 = MEMORY[0x22AA72BD0](*(v172 + 800), *(v172 + 808), *(v172 + 816), *(v172 + 824));
            sub_225EFE6BC(v172 + 816);
            sub_225EFE6BC(v172 + 800);
            sub_225EFE6BC(v172 + 464);
            v106 = v105;
LABEL_67:
            v86 = *(v172 + 1104);
            v89 = *(v172 + 1072);
            v90 = *(v172 + 1056);
            v88 = *(v172 + 1080);

            *(v172 + 272) = v106 & 1;
            type metadata accessor for CESRAsrReplayWorker();
            memcpy((v172 + 16), (v172 + 208), 0x60uLL);
            sub_225F4C240(v172 + 16, v172 + 304);
            v87 = CESRAsrReplayWorker.__allocating_init(config:)((v172 + 16));
            *(v172 + 1184) = v87;
            *(v172 + 992) = v87;
            v28 = sub_225F3EC5C();
            v29 = *(v88 + 16);
            *(v172 + 1192) = v29;
            *(v172 + 1200) = (v88 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v29(v86, v28, v89);
            MEMORY[0x277D82BE0](v90);
            v92 = swift_allocObject();
            *(v92 + 16) = v90;
            sub_2260998E8();
            v91 = swift_allocObject();
            *(v91 + 16) = v144;

            v94 = swift_allocObject();
            *(v94 + 16) = sub_225F2CE08;
            *(v94 + 24) = v91;

            oslog = sub_226098C48();
            v104 = sub_22609A088();
            v96 = swift_allocObject();
            *(v96 + 16) = 32;
            v97 = swift_allocObject();
            *(v97 + 16) = 8;
            v93 = swift_allocObject();
            *(v93 + 16) = sub_225F49848;
            *(v93 + 24) = v92;
            v98 = swift_allocObject();
            *(v98 + 16) = sub_225EF7B84;
            *(v98 + 24) = v93;
            v99 = swift_allocObject();
            *(v99 + 16) = 32;
            v100 = swift_allocObject();
            *(v100 + 16) = 8;
            v95 = swift_allocObject();
            *(v95 + 16) = sub_225F4C3B4;
            *(v95 + 24) = v94;
            v101 = swift_allocObject();
            *(v101 + 16) = sub_225EF7B84;
            *(v101 + 24) = v95;
            *(v172 + 1208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            sub_22609A4F8();
            v102 = v30;

            *v102 = sub_225EF7434;
            v102[1] = v96;

            v102[2] = sub_225EF7434;
            v102[3] = v97;

            v102[4] = sub_225EF7B90;
            v102[5] = v98;

            v102[6] = sub_225EF7434;
            v102[7] = v99;

            v102[8] = sub_225EF7434;
            v102[9] = v100;

            v102[10] = sub_225EF7B90;
            v102[11] = v101;
            sub_225EF5418();

            if (os_log_type_enabled(oslog, v104))
            {
              buf = sub_22609A188();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v84 = sub_225EF5468(0);
              v85 = sub_225EF5468(2);
              *(v172 + 1032) = buf;
              *(v172 + 1040) = v84;
              *(v172 + 1048) = v85;
              sub_225EF54BC(2, (v172 + 1032));
              sub_225EF54BC(2, (v172 + 1032));
              *(v172 + 768) = sub_225EF7434;
              *(v172 + 776) = v96;
              sub_225EF73E8(v172 + 768, v172 + 1032, v172 + 1040, v172 + 1048);
              *(v172 + 768) = sub_225EF7434;
              *(v172 + 776) = v97;
              sub_225EF73E8(v172 + 768, v172 + 1032, v172 + 1040, v172 + 1048);
              *(v172 + 768) = sub_225EF7B90;
              *(v172 + 776) = v98;
              sub_225EF73E8(v172 + 768, v172 + 1032, v172 + 1040, v172 + 1048);
              *(v172 + 768) = sub_225EF7434;
              *(v172 + 776) = v99;
              sub_225EF73E8(v172 + 768, v172 + 1032, v172 + 1040, v172 + 1048);
              *(v172 + 768) = sub_225EF7434;
              *(v172 + 776) = v100;
              sub_225EF73E8(v172 + 768, v172 + 1032, v172 + 1040, v172 + 1048);
              *(v172 + 768) = sub_225EF7B90;
              *(v172 + 776) = v101;
              sub_225EF73E8(v172 + 768, v172 + 1032, v172 + 1040, v172 + 1048);
              _os_log_impl(&dword_225EEB000, oslog, v104, "Attempting replay for requestId %s, replayType %s", buf, 0x16u);
              sub_225EF7AF4(v84);
              sub_225EF7AF4(v85);
              sub_22609A168();
            }

            v81 = *(v172 + 1104);
            v82 = *(v172 + 1072);
            v80 = *(v172 + 1080);
            MEMORY[0x277D82BD8](oslog);
            v31 = *(v80 + 8);
            *(v172 + 1216) = v31;
            *(v172 + 1224) = (v80 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v31(v81, v82);
            v32 = swift_task_alloc();
            *(v172 + 1232) = v32;
            *v32 = *(v172 + 928);
            v32[1] = sub_225F41CD4;

            return CESRAsrReplayWorker.runTranscription()();
          }

          sub_225EFE6BC(v172 + 784);
        }

        else if (!*(v172 + 488))
        {
          sub_225EFE6BC(v172 + 464);
          v106 = 1;
          goto LABEL_67;
        }

        sub_225F4C1C0(v172 + 464);
        v106 = 0;
        goto LABEL_67;
      }

      sub_225F4C1C0(v172 + 432);
      v115 = 0;
      goto LABEL_56;
    }

    sub_225F4C1C0(v172 + 400);
    v128 = 0;
    goto LABEL_42;
  }

  v78 = *(v172 + 1056);
  sub_225EFE6E8((v172 + 544));
  v79 = [v78 metadata];
  if (v79 && (v77 = [v79 ids], MEMORY[0x277D82BD8](v79), v77))
  {
    v34 = [v77 asrId];
    v76 = v34;
    if (v34)
    {
      v72 = sub_226099A08();
      v73 = v35;
      MEMORY[0x277D82BD8](v76);
      v74 = v72;
      v75 = v73;
    }

    else
    {
      v74 = 0;
      v75 = 0;
    }

    MEMORY[0x277D82BD8](v77);
    v70 = v74;
    v71 = v75;
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  *(v172 + 560) = v70;
  *(v172 + 568) = v71;
  if (*(v172 + 568))
  {
    v36 = *(v172 + 568);
    v181 = *(v172 + 560);
    v182 = v36;
  }

  else
  {
    v181 = sub_226099AA8();
    v182 = v37;
    if (*(v172 + 568))
    {
      sub_225EFE6BC(v172 + 560);
    }
  }

  v38 = *(v172 + 1168);
  v67 = *(v172 + 1160);
  v66 = *(v172 + 1144);
  v65 = *(v172 + 1152);
  v68 = *(v172 + 1136);
  v69 = *(v172 + 1120);
  v64 = *(v172 + 960);
  sub_2260998E8();
  sub_22603C688(v181, v182, v67, v64);

  sub_225EFE6E8((v172 + 960));
  (*(v65 + 8))(v67, v66);

LABEL_98:
  v42 = *(v172 + 1104);
  v45 = *(v172 + 1096);
  v46 = *(v172 + 1088);

  v43 = *(*(v172 + 928) + 8);
  v44 = *(v172 + 928);

  return v43();
}

uint64_t sub_225F41CD4(uint64_t a1, uint64_t a2)
{
  v11 = *v3;
  v10 = v11 + 116;
  v5 = *(*v3 + 1232);
  v11[116] = *v3;
  v11[155] = v2;
  v11[156] = a1;
  v11[157] = a2;

  if (v2)
  {
    v8 = *v10;
    v7 = sub_225F443D0;
  }

  else
  {
    v6 = *v10;
    v7 = sub_225F41E4C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_225F41E4C()
{
  v33 = v0[157];
  v32 = v0[156];
  v30 = v0[147];
  v35 = v0[132];
  v0[116] = v0;
  v0[86] = v32;
  v0[87] = v33;
  type metadata accessor for CESRAsrReplayCounterfactualABManager();
  v31 = sub_225F3ECC8(v30);
  v34 = v1;
  sub_2260998E8();
  v0[88] = v32;
  v0[89] = v33;
  v0[90] = v31;
  v0[91] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786520, &unk_2260A0490);
  sub_226099948();
  v36 = [v35 postITNTranscript];
  if (v36)
  {
    v25 = sub_226099A08();
    v26 = v2;
    MEMORY[0x277D82BD8](v36);
    v27 = v25;
    v28 = v26;
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v29[158] = v28;
  v23 = v29[132];
  sub_225F4C57C();
  v24 = [v23 metadata];
  if (v24 && (v22 = [v24 ids], MEMORY[0x277D82BD8](v24), v22))
  {
    v3 = [v22 requestId];
    v21 = v3;
    if (v3)
    {
      v17 = sub_226099A08();
      v18 = v4;
      MEMORY[0x277D82BD8](v21);
      v19 = v17;
      v20 = v18;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    MEMORY[0x277D82BD8](v22);
    v15 = v19;
    v16 = v20;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v29[94] = v15;
  v29[95] = v16;
  if (v29[95])
  {
    v5 = v29[95];
    v29[92] = v29[94];
    v29[93] = v5;
  }

  else
  {
    v29[92] = sub_226099AA8();
    v29[93] = v6;
    if (v29[95])
    {
      sub_225EFE6BC((v29 + 94));
    }
  }

  v13 = v29[147];
  v7 = v29[92];
  v8 = v29[93];
  v14 = sub_225F49880();
  v29[159] = v14;
  v9 = swift_task_alloc();
  v29[160] = v9;
  *v9 = v29[116];
  v9[1] = sub_225F424AC;
  v10 = v29[157];
  v11 = v29[156];

  return sub_225F498C8(v11, v10, v27, v28, v14, v13);
}

uint64_t sub_225F424AC()
{
  v10 = *v1;
  v8 = *v1 + 16;
  v9 = (v10 + 928);
  v2 = *(*v1 + 1280);
  *(v10 + 928) = *v1;
  *(v10 + 1288) = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = sub_225F46D04;
  }

  else
  {
    v7 = *(v8 + 1248);

    v3 = *v9;
    v4 = sub_225F4263C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225F4263C()
{
  v1 = v0[157];
  v0[116] = v0;

  v111 = v0[161];
  v2 = v0[148];
  v112 = v0[147];

  sub_225F4C4A4(v0 + 26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786340, &qword_2260A04C8);
  sub_22609A388();
  v113 = v0[122];
  v0[147] = v113;
  if (!v113)
  {
    v45 = *(v110 + 1056);
    sub_225EFE6E8((v110 + 544));
    v46 = [v45 metadata];
    if (v46 && (v44 = [v46 ids], MEMORY[0x277D82BD8](v46), v44))
    {
      v22 = [v44 asrId];
      v43 = v22;
      if (v22)
      {
        v39 = sub_226099A08();
        v40 = v23;
        MEMORY[0x277D82BD8](v43);
        v41 = v39;
        v42 = v40;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      MEMORY[0x277D82BD8](v44);
      v37 = v41;
      v38 = v42;
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    *(v110 + 560) = v37;
    *(v110 + 568) = v38;
    if (*(v110 + 568))
    {
      v114 = *(v110 + 560);
      v115 = *(v110 + 568);
    }

    else
    {
      v114 = sub_226099AA8();
      v115 = v24;
      if (*(v110 + 568))
      {
        sub_225EFE6BC(v110 + 560);
      }
    }

    v25 = *(v110 + 1168);
    v32 = *(v110 + 1160);
    v31 = *(v110 + 1144);
    v30 = *(v110 + 1152);
    v33 = *(v110 + 1136);
    v34 = *(v110 + 1120);
    v29 = *(v110 + 960);
    sub_2260998E8();
    sub_22603C688(v114, v115, v32, v29);

    sub_225EFE6E8((v110 + 960));
    (*(v30 + 8))(v32, v31);

    v26 = *(v110 + 1104);
    v35 = *(v110 + 1096);
    v36 = *(v110 + 1088);

    v27 = *(*(v110 + 928) + 8);
    v28 = *(v110 + 928);

    return v27();
  }

  v3 = *(v110 + 1056);
  *(v110 + 984) = v113;
  v109 = [v3 audio];
  if (v109)
  {
    v105 = sub_226098978();
    v106 = v4;
    MEMORY[0x277D82BD8](v109);
    v107 = v105;
    v108 = v106;
  }

  else
  {
    v107 = 0;
    v108 = 0xF000000000000000;
  }

  v98 = *(v110 + 1128);
  v96 = *(v110 + 1112);
  v97 = *(v110 + 1120);
  v99 = *(v110 + 1136);
  sub_2260998E8();
  sub_2260998E8();
  v100 = sub_225F49850();
  v5 = sub_225F4985C();
  CESRAsrReplayWorkerConfig.init(audio:language:taskHint:useBaseProfile:profileData:requestEntityStrings:)(v107, v108, v96, v97, v98, v99, v100 & 1, 0, (v110 + 112), 0xF000000000000000, v5);
  memcpy((v110 + 208), (v110 + 112), 0x60uLL);
  *(v110 + 592) = sub_226099AA8();
  *(v110 + 600) = v6;
  sub_226099938();
  sub_225EFE6BC(v110 + 592);
  v102 = *(v110 + 576);
  v103 = *(v110 + 584);
  sub_2260998E8();
  v101 = sub_226099AA8();
  v104 = v7;
  sub_2260998E8();
  *(v110 + 400) = v102;
  *(v110 + 408) = v103;
  *(v110 + 416) = v101;
  *(v110 + 424) = v104;
  if (*(v110 + 408))
  {
    sub_225F4C5E0((v110 + 400), (v110 + 880));
    if (*(v110 + 424))
    {
      *(v110 + 896) = *(v110 + 880);
      *(v110 + 912) = *(v110 + 416);
      v94 = MEMORY[0x22AA72BD0](*(v110 + 896), *(v110 + 904), *(v110 + 912), *(v110 + 920));
      sub_225EFE6BC(v110 + 912);
      sub_225EFE6BC(v110 + 896);
      sub_225EFE6BC(v110 + 400);
      v95 = v94;
      goto LABEL_11;
    }

    sub_225EFE6BC(v110 + 880);
    goto LABEL_13;
  }

  if (*(v110 + 424))
  {
LABEL_13:
    sub_225F4C1C0(v110 + 400);
    v95 = 0;
    goto LABEL_11;
  }

  sub_225EFE6BC(v110 + 400);
  v95 = 1;
LABEL_11:

  if (v95)
  {
    v93 = [*(v110 + 1056) profile];
    if (v93)
    {
      v89 = sub_226098978();
      v90 = v8;
      MEMORY[0x277D82BD8](v93);
      v91 = v89;
      v92 = v90;
    }

    else
    {
      v91 = 0;
      v92 = 0xF000000000000000;
    }

    v87 = v91;
    v88 = v92;
  }

  else
  {
    v87 = 0;
    v88 = 0xF000000000000000;
  }

  v9 = *(v110 + 280);
  v10 = *(v110 + 288);
  *(v110 + 280) = v87;
  *(v110 + 288) = v88;
  sub_225F4C1F8(v9, v10);
  *(v110 + 624) = sub_226099AA8();
  *(v110 + 632) = v11;
  sub_226099938();
  sub_225EFE6BC(v110 + 624);
  v84 = *(v110 + 608);
  v85 = *(v110 + 616);
  sub_2260998E8();
  v83 = sub_226099AA8();
  v86 = v12;
  sub_2260998E8();
  *(v110 + 432) = v84;
  *(v110 + 440) = v85;
  *(v110 + 448) = v83;
  *(v110 + 456) = v86;
  if (*(v110 + 440))
  {
    sub_225F4C5E0((v110 + 432), (v110 + 832));
    if (*(v110 + 456))
    {
      *(v110 + 848) = *(v110 + 832);
      *(v110 + 864) = *(v110 + 448);
      v81 = MEMORY[0x22AA72BD0](*(v110 + 848), *(v110 + 856), *(v110 + 864), *(v110 + 872));
      sub_225EFE6BC(v110 + 864);
      sub_225EFE6BC(v110 + 848);
      sub_225EFE6BC(v110 + 432);
      v82 = v81;
      goto LABEL_25;
    }

    sub_225EFE6BC(v110 + 832);
    goto LABEL_27;
  }

  if (*(v110 + 456))
  {
LABEL_27:
    sub_225F4C1C0(v110 + 432);
    v82 = 0;
    goto LABEL_25;
  }

  sub_225EFE6BC(v110 + 432);
  v82 = 1;
LABEL_25:

  if (v82)
  {
    v78 = [*(v110 + 1056) contextualEntities];
    v79 = sub_226099C88();
    MEMORY[0x277D82BD8](v78);
    v80 = v79;
  }

  else
  {
    v80 = sub_22609A4F8();
  }

  v13 = *(v110 + 296);
  *(v110 + 296) = v80;

  *(v110 + 656) = sub_226099AA8();
  *(v110 + 664) = v14;
  sub_226099938();
  sub_225EFE6BC(v110 + 656);
  v75 = *(v110 + 640);
  v76 = *(v110 + 648);
  sub_2260998E8();
  v74 = sub_226099AA8();
  v77 = v15;
  sub_2260998E8();
  *(v110 + 464) = v75;
  *(v110 + 472) = v76;
  *(v110 + 480) = v74;
  *(v110 + 488) = v77;
  if (!*(v110 + 472))
  {
    if (!*(v110 + 488))
    {
      sub_225EFE6BC(v110 + 464);
      v73 = 1;
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  sub_225F4C5E0((v110 + 464), (v110 + 784));
  if (!*(v110 + 488))
  {
    sub_225EFE6BC(v110 + 784);
LABEL_38:
    sub_225F4C1C0(v110 + 464);
    v73 = 0;
    goto LABEL_36;
  }

  *(v110 + 800) = *(v110 + 784);
  *(v110 + 816) = *(v110 + 480);
  v72 = MEMORY[0x22AA72BD0](*(v110 + 800), *(v110 + 808), *(v110 + 816), *(v110 + 824));
  sub_225EFE6BC(v110 + 816);
  sub_225EFE6BC(v110 + 800);
  sub_225EFE6BC(v110 + 464);
  v73 = v72;
LABEL_36:
  v53 = *(v110 + 1104);
  v56 = *(v110 + 1072);
  v57 = *(v110 + 1056);
  v55 = *(v110 + 1080);

  *(v110 + 272) = v73 & 1;
  type metadata accessor for CESRAsrReplayWorker();
  memcpy((v110 + 16), (v110 + 208), 0x60uLL);
  sub_225F4C240(v110 + 16, v110 + 304);
  v54 = CESRAsrReplayWorker.__allocating_init(config:)((v110 + 16));
  *(v110 + 1184) = v54;
  *(v110 + 992) = v54;
  v16 = sub_225F3EC5C();
  v17 = *(v55 + 16);
  *(v110 + 1192) = v17;
  *(v110 + 1200) = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v53, v16, v56);
  MEMORY[0x277D82BE0](v57);
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  sub_2260998E8();
  v58 = swift_allocObject();
  *(v58 + 16) = v113;

  v61 = swift_allocObject();
  *(v61 + 16) = sub_225F2CE08;
  *(v61 + 24) = v58;

  oslog = sub_226098C48();
  v71 = sub_22609A088();
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_225F49848;
  *(v60 + 24) = v59;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_225EF7B84;
  *(v65 + 24) = v60;
  v66 = swift_allocObject();
  *(v66 + 16) = 32;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_225F4C3B4;
  *(v62 + 24) = v61;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_225EF7B84;
  *(v68 + 24) = v62;
  *(v110 + 1208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v69 = v18;

  *v69 = sub_225EF7434;
  v69[1] = v63;

  v69[2] = sub_225EF7434;
  v69[3] = v64;

  v69[4] = sub_225EF7B90;
  v69[5] = v65;

  v69[6] = sub_225EF7434;
  v69[7] = v66;

  v69[8] = sub_225EF7434;
  v69[9] = v67;

  v69[10] = sub_225EF7B90;
  v69[11] = v68;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v71))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v51 = sub_225EF5468(0);
    v52 = sub_225EF5468(2);
    *(v110 + 1032) = buf;
    *(v110 + 1040) = v51;
    *(v110 + 1048) = v52;
    sub_225EF54BC(2, (v110 + 1032));
    sub_225EF54BC(2, (v110 + 1032));
    *(v110 + 768) = sub_225EF7434;
    *(v110 + 776) = v63;
    sub_225EF73E8(v110 + 768, v110 + 1032, v110 + 1040, v110 + 1048);
    if (v111)
    {
    }

    *(v110 + 768) = sub_225EF7434;
    *(v110 + 776) = v64;
    sub_225EF73E8(v110 + 768, v110 + 1032, v110 + 1040, v110 + 1048);
    *(v110 + 768) = sub_225EF7B90;
    *(v110 + 776) = v65;
    sub_225EF73E8(v110 + 768, v110 + 1032, v110 + 1040, v110 + 1048);
    *(v110 + 768) = sub_225EF7434;
    *(v110 + 776) = v66;
    sub_225EF73E8(v110 + 768, v110 + 1032, v110 + 1040, v110 + 1048);
    *(v110 + 768) = sub_225EF7434;
    *(v110 + 776) = v67;
    sub_225EF73E8(v110 + 768, v110 + 1032, v110 + 1040, v110 + 1048);
    *(v110 + 768) = sub_225EF7B90;
    *(v110 + 776) = v68;
    sub_225EF73E8(v110 + 768, v110 + 1032, v110 + 1040, v110 + 1048);
    _os_log_impl(&dword_225EEB000, oslog, v71, "Attempting replay for requestId %s, replayType %s", buf, 0x16u);
    sub_225EF7AF4(v51);
    sub_225EF7AF4(v52);
    sub_22609A168();
  }

  else
  {
  }

  v48 = *(v110 + 1104);
  v49 = *(v110 + 1072);
  v47 = *(v110 + 1080);
  MEMORY[0x277D82BD8](oslog);
  v20 = *(v47 + 8);
  *(v110 + 1216) = v20;
  *(v110 + 1224) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v48, v49);
  v21 = swift_task_alloc();
  *(v110 + 1232) = v21;
  *v21 = *(v110 + 928);
  v21[1] = sub_225F41CD4;

  return CESRAsrReplayWorker.runTranscription()();
}

uint64_t sub_225F443D0()
{
  v0[116] = v0;
  v128 = v0[155];
  v141 = v0[151];
  v125 = v0[150];
  v126 = v0[149];
  v1 = v0[136];
  v124 = v0[134];
  v127 = v0[132];
  v2 = v128;
  v0[125] = v128;
  v3 = sub_225F3EC5C();
  v126(v1, v3, v124);
  MEMORY[0x277D82BE0](v127);
  v129 = swift_allocObject();
  *(v129 + 16) = v127;
  v4 = v128;
  v131 = swift_allocObject();
  *(v131 + 16) = v128;
  sub_225F3EAE8();

  v142 = sub_226098C48();
  v143 = sub_22609A088();
  v134 = swift_allocObject();
  *(v134 + 16) = 32;
  v135 = swift_allocObject();
  *(v135 + 16) = 8;
  v130 = swift_allocObject();
  *(v130 + 16) = sub_225F49848;
  *(v130 + 24) = v129;
  v136 = swift_allocObject();
  *(v136 + 16) = sub_225EF7B84;
  *(v136 + 24) = v130;
  v137 = swift_allocObject();
  *(v137 + 16) = 64;
  v138 = swift_allocObject();
  *(v138 + 16) = 8;
  v132 = swift_allocObject();
  *(v132 + 16) = sub_225F3EA68;
  *(v132 + 24) = v131;
  v133 = swift_allocObject();
  *(v133 + 16) = sub_225F3EA70;
  *(v133 + 24) = v132;
  v139 = swift_allocObject();
  *(v139 + 16) = sub_225F3E1C8;
  *(v139 + 24) = v133;
  sub_22609A4F8();
  v140 = v5;

  *v140 = sub_225EF7434;
  v140[1] = v134;

  v140[2] = sub_225EF7434;
  v140[3] = v135;

  v140[4] = sub_225EF7B90;
  v140[5] = v136;

  v140[6] = sub_225EF7434;
  v140[7] = v137;

  v140[8] = sub_225EF7434;
  v140[9] = v138;

  v140[10] = sub_225F3E358;
  v140[11] = v139;
  sub_225EF5418();

  if (os_log_type_enabled(v142, v143))
  {
    v38 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = sub_225EF5468(1);
    v40 = sub_225EF5468(1);
    *(v123 + 1008) = v38;
    *(v123 + 1016) = v39;
    *(v123 + 1024) = v40;
    sub_225EF54BC(2, (v123 + 1008));
    sub_225EF54BC(2, (v123 + 1008));
    *(v123 + 672) = sub_225EF7434;
    *(v123 + 680) = v134;
    sub_225EF73E8(v123 + 672, v123 + 1008, v123 + 1016, v123 + 1024);
    *(v123 + 672) = sub_225EF7434;
    *(v123 + 680) = v135;
    sub_225EF73E8(v123 + 672, v123 + 1008, v123 + 1016, v123 + 1024);
    *(v123 + 672) = sub_225EF7B90;
    *(v123 + 680) = v136;
    sub_225EF73E8(v123 + 672, v123 + 1008, v123 + 1016, v123 + 1024);
    *(v123 + 672) = sub_225EF7434;
    *(v123 + 680) = v137;
    sub_225EF73E8(v123 + 672, v123 + 1008, v123 + 1016, v123 + 1024);
    *(v123 + 672) = sub_225EF7434;
    *(v123 + 680) = v138;
    sub_225EF73E8(v123 + 672, v123 + 1008, v123 + 1016, v123 + 1024);
    *(v123 + 672) = sub_225F3E358;
    *(v123 + 680) = v139;
    sub_225EF73E8(v123 + 672, v123 + 1008, v123 + 1016, v123 + 1024);
    _os_log_impl(&dword_225EEB000, v142, v143, "Replay for requestId %s failed with error %@", v38, 0x16u);
    sub_225EF7AF4(v39);
    sub_225EF7AF4(v40);
    sub_22609A168();
  }

  v35 = *(v123 + 1224);
  v36 = *(v123 + 1216);
  v33 = *(v123 + 1088);
  v34 = *(v123 + 1072);
  MEMORY[0x277D82BD8](v142);
  v36(v33, v34);

  v32 = *(v123 + 1184);
  v37 = *(v123 + 1176);

  sub_225F4C4A4((v123 + 208));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786340, &qword_2260A04C8);
  sub_22609A388();
  v121 = *(v123 + 976);
  *(v123 + 1176) = v121;
  if (v121)
  {
    v6 = *(v123 + 1056);
    *(v123 + 984) = v121;
    v122 = [v6 audio];
    if (v122)
    {
      v117 = sub_226098978();
      v118 = v7;
      MEMORY[0x277D82BD8](v122);
      v119 = v117;
      v120 = v118;
    }

    else
    {
      v119 = 0;
      v120 = 0xF000000000000000;
    }

    v110 = *(v123 + 1128);
    v108 = *(v123 + 1112);
    v109 = *(v123 + 1120);
    v111 = *(v123 + 1136);
    sub_2260998E8();
    sub_2260998E8();
    v112 = sub_225F49850();
    v8 = sub_225F4985C();
    CESRAsrReplayWorkerConfig.init(audio:language:taskHint:useBaseProfile:profileData:requestEntityStrings:)(v119, v120, v108, v109, v110, v111, v112 & 1, 0, (v123 + 112), 0xF000000000000000, v8);
    memcpy((v123 + 208), (v123 + 112), 0x60uLL);
    *(v123 + 592) = sub_226099AA8();
    *(v123 + 600) = v9;
    sub_226099938();
    sub_225EFE6BC(v123 + 592);
    v114 = *(v123 + 576);
    v115 = *(v123 + 584);
    sub_2260998E8();
    v113 = sub_226099AA8();
    v116 = v10;
    sub_2260998E8();
    *(v123 + 400) = v114;
    *(v123 + 408) = v115;
    *(v123 + 416) = v113;
    *(v123 + 424) = v116;
    if (*(v123 + 408))
    {
      sub_225F4C5E0((v123 + 400), (v123 + 880));
      if (*(v123 + 424))
      {
        *(v123 + 896) = *(v123 + 880);
        *(v123 + 912) = *(v123 + 416);
        v106 = MEMORY[0x22AA72BD0](*(v123 + 896), *(v123 + 904), *(v123 + 912), *(v123 + 920));
        sub_225EFE6BC(v123 + 912);
        sub_225EFE6BC(v123 + 896);
        sub_225EFE6BC(v123 + 400);
        v107 = v106;
        goto LABEL_12;
      }

      sub_225EFE6BC(v123 + 880);
    }

    else if (!*(v123 + 424))
    {
      sub_225EFE6BC(v123 + 400);
      v107 = 1;
LABEL_12:

      if (v107)
      {
        v105 = [*(v123 + 1056) profile];
        if (v105)
        {
          v101 = sub_226098978();
          v102 = v11;
          MEMORY[0x277D82BD8](v105);
          v103 = v101;
          v104 = v102;
        }

        else
        {
          v103 = 0;
          v104 = 0xF000000000000000;
        }

        v99 = v103;
        v100 = v104;
      }

      else
      {
        v99 = 0;
        v100 = 0xF000000000000000;
      }

      v12 = *(v123 + 280);
      v13 = *(v123 + 288);
      *(v123 + 280) = v99;
      *(v123 + 288) = v100;
      sub_225F4C1F8(v12, v13);
      *(v123 + 624) = sub_226099AA8();
      *(v123 + 632) = v14;
      sub_226099938();
      sub_225EFE6BC(v123 + 624);
      v96 = *(v123 + 608);
      v97 = *(v123 + 616);
      sub_2260998E8();
      v95 = sub_226099AA8();
      v98 = v15;
      sub_2260998E8();
      *(v123 + 432) = v96;
      *(v123 + 440) = v97;
      *(v123 + 448) = v95;
      *(v123 + 456) = v98;
      if (*(v123 + 440))
      {
        sub_225F4C5E0((v123 + 432), (v123 + 832));
        if (*(v123 + 456))
        {
          *(v123 + 848) = *(v123 + 832);
          *(v123 + 864) = *(v123 + 448);
          v93 = MEMORY[0x22AA72BD0](*(v123 + 848), *(v123 + 856), *(v123 + 864), *(v123 + 872));
          sub_225EFE6BC(v123 + 864);
          sub_225EFE6BC(v123 + 848);
          sub_225EFE6BC(v123 + 432);
          v94 = v93;
          goto LABEL_26;
        }

        sub_225EFE6BC(v123 + 832);
      }

      else if (!*(v123 + 456))
      {
        sub_225EFE6BC(v123 + 432);
        v94 = 1;
LABEL_26:

        if (v94)
        {
          v90 = [*(v123 + 1056) contextualEntities];
          v91 = sub_226099C88();
          MEMORY[0x277D82BD8](v90);
          v92 = v91;
        }

        else
        {
          v92 = sub_22609A4F8();
        }

        v16 = *(v123 + 296);
        *(v123 + 296) = v92;

        *(v123 + 656) = sub_226099AA8();
        *(v123 + 664) = v17;
        sub_226099938();
        sub_225EFE6BC(v123 + 656);
        v87 = *(v123 + 640);
        v88 = *(v123 + 648);
        sub_2260998E8();
        v86 = sub_226099AA8();
        v89 = v18;
        sub_2260998E8();
        *(v123 + 464) = v87;
        *(v123 + 472) = v88;
        *(v123 + 480) = v86;
        *(v123 + 488) = v89;
        if (*(v123 + 472))
        {
          sub_225F4C5E0((v123 + 464), (v123 + 784));
          if (*(v123 + 488))
          {
            *(v123 + 800) = *(v123 + 784);
            *(v123 + 816) = *(v123 + 480);
            v84 = MEMORY[0x22AA72BD0](*(v123 + 800), *(v123 + 808), *(v123 + 816), *(v123 + 824));
            sub_225EFE6BC(v123 + 816);
            sub_225EFE6BC(v123 + 800);
            sub_225EFE6BC(v123 + 464);
            v85 = v84;
LABEL_37:
            v65 = *(v123 + 1104);
            v68 = *(v123 + 1072);
            v69 = *(v123 + 1056);
            v67 = *(v123 + 1080);

            *(v123 + 272) = v85 & 1;
            type metadata accessor for CESRAsrReplayWorker();
            memcpy((v123 + 16), (v123 + 208), 0x60uLL);
            sub_225F4C240(v123 + 16, v123 + 304);
            v66 = CESRAsrReplayWorker.__allocating_init(config:)((v123 + 16));
            *(v123 + 1184) = v66;
            *(v123 + 992) = v66;
            v19 = sub_225F3EC5C();
            v20 = *(v67 + 16);
            *(v123 + 1192) = v20;
            *(v123 + 1200) = (v67 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v20(v65, v19, v68);
            MEMORY[0x277D82BE0](v69);
            v71 = swift_allocObject();
            *(v71 + 16) = v69;
            sub_2260998E8();
            v70 = swift_allocObject();
            *(v70 + 16) = v121;

            v73 = swift_allocObject();
            *(v73 + 16) = sub_225F2CE08;
            *(v73 + 24) = v70;

            oslog = sub_226098C48();
            v83 = sub_22609A088();
            v75 = swift_allocObject();
            *(v75 + 16) = 32;
            v76 = swift_allocObject();
            *(v76 + 16) = 8;
            v72 = swift_allocObject();
            *(v72 + 16) = sub_225F49848;
            *(v72 + 24) = v71;
            v77 = swift_allocObject();
            *(v77 + 16) = sub_225EF7B84;
            *(v77 + 24) = v72;
            v78 = swift_allocObject();
            *(v78 + 16) = 32;
            v79 = swift_allocObject();
            *(v79 + 16) = 8;
            v74 = swift_allocObject();
            *(v74 + 16) = sub_225F4C3B4;
            *(v74 + 24) = v73;
            v80 = swift_allocObject();
            *(v80 + 16) = sub_225EF7B84;
            *(v80 + 24) = v74;
            *(v123 + 1208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            sub_22609A4F8();
            v81 = v21;

            *v81 = sub_225EF7434;
            v81[1] = v75;

            v81[2] = sub_225EF7434;
            v81[3] = v76;

            v81[4] = sub_225EF7B90;
            v81[5] = v77;

            v81[6] = sub_225EF7434;
            v81[7] = v78;

            v81[8] = sub_225EF7434;
            v81[9] = v79;

            v81[10] = sub_225EF7B90;
            v81[11] = v80;
            sub_225EF5418();

            if (os_log_type_enabled(oslog, v83))
            {
              buf = sub_22609A188();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v63 = sub_225EF5468(0);
              v64 = sub_225EF5468(2);
              *(v123 + 1032) = buf;
              *(v123 + 1040) = v63;
              *(v123 + 1048) = v64;
              sub_225EF54BC(2, (v123 + 1032));
              sub_225EF54BC(2, (v123 + 1032));
              *(v123 + 768) = sub_225EF7434;
              *(v123 + 776) = v75;
              sub_225EF73E8(v123 + 768, v123 + 1032, v123 + 1040, v123 + 1048);
              *(v123 + 768) = sub_225EF7434;
              *(v123 + 776) = v76;
              sub_225EF73E8(v123 + 768, v123 + 1032, v123 + 1040, v123 + 1048);
              *(v123 + 768) = sub_225EF7B90;
              *(v123 + 776) = v77;
              sub_225EF73E8(v123 + 768, v123 + 1032, v123 + 1040, v123 + 1048);
              *(v123 + 768) = sub_225EF7434;
              *(v123 + 776) = v78;
              sub_225EF73E8(v123 + 768, v123 + 1032, v123 + 1040, v123 + 1048);
              *(v123 + 768) = sub_225EF7434;
              *(v123 + 776) = v79;
              sub_225EF73E8(v123 + 768, v123 + 1032, v123 + 1040, v123 + 1048);
              *(v123 + 768) = sub_225EF7B90;
              *(v123 + 776) = v80;
              sub_225EF73E8(v123 + 768, v123 + 1032, v123 + 1040, v123 + 1048);
              _os_log_impl(&dword_225EEB000, oslog, v83, "Attempting replay for requestId %s, replayType %s", buf, 0x16u);
              sub_225EF7AF4(v63);
              sub_225EF7AF4(v64);
              sub_22609A168();
            }

            v60 = *(v123 + 1104);
            v61 = *(v123 + 1072);
            v59 = *(v123 + 1080);
            MEMORY[0x277D82BD8](oslog);
            v22 = *(v59 + 8);
            *(v123 + 1216) = v22;
            *(v123 + 1224) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v22(v60, v61);
            v23 = swift_task_alloc();
            *(v123 + 1232) = v23;
            *v23 = *(v123 + 928);
            v23[1] = sub_225F41CD4;

            return CESRAsrReplayWorker.runTranscription()();
          }

          sub_225EFE6BC(v123 + 784);
        }

        else if (!*(v123 + 488))
        {
          sub_225EFE6BC(v123 + 464);
          v85 = 1;
          goto LABEL_37;
        }

        sub_225F4C1C0(v123 + 464);
        v85 = 0;
        goto LABEL_37;
      }

      sub_225F4C1C0(v123 + 432);
      v94 = 0;
      goto LABEL_26;
    }

    sub_225F4C1C0(v123 + 400);
    v107 = 0;
    goto LABEL_12;
  }

  v57 = *(v123 + 1056);
  sub_225EFE6E8((v123 + 544));
  v58 = [v57 metadata];
  if (v58 && (v56 = [v58 ids], MEMORY[0x277D82BD8](v58), v56))
  {
    v25 = [v56 asrId];
    v55 = v25;
    if (v25)
    {
      v51 = sub_226099A08();
      v52 = v26;
      MEMORY[0x277D82BD8](v55);
      v53 = v51;
      v54 = v52;
    }

    else
    {
      v53 = 0;
      v54 = 0;
    }

    MEMORY[0x277D82BD8](v56);
    v49 = v53;
    v50 = v54;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  *(v123 + 560) = v49;
  *(v123 + 568) = v50;
  if (*(v123 + 568))
  {
    v144 = *(v123 + 560);
    v145 = *(v123 + 568);
  }

  else
  {
    v144 = sub_226099AA8();
    v145 = v27;
    if (*(v123 + 568))
    {
      sub_225EFE6BC(v123 + 560);
    }
  }

  v28 = *(v123 + 1168);
  v44 = *(v123 + 1160);
  v43 = *(v123 + 1144);
  v42 = *(v123 + 1152);
  v45 = *(v123 + 1136);
  v46 = *(v123 + 1120);
  v41 = *(v123 + 960);
  sub_2260998E8();
  sub_22603C688(v144, v145, v44, v41);

  sub_225EFE6E8((v123 + 960));
  (*(v42 + 8))(v44, v43);

  v29 = *(v123 + 1104);
  v47 = *(v123 + 1096);
  v48 = *(v123 + 1088);

  v30 = *(*(v123 + 928) + 8);
  v31 = *(v123 + 928);

  return v30();
}

uint64_t sub_225F46D04()
{
  v1 = v0[159];
  v125 = v0[158];
  v126 = v0[157];
  v0[116] = v0;
  MEMORY[0x277D82BD8](v1);

  v131 = v0[161];
  v144 = v0[151];
  v128 = v0[150];
  v129 = v0[149];
  v2 = v0[136];
  v127 = v0[134];
  v130 = v0[132];
  v3 = v131;
  v0[125] = v131;
  v4 = sub_225F3EC5C();
  v129(v2, v4, v127);
  MEMORY[0x277D82BE0](v130);
  v132 = swift_allocObject();
  *(v132 + 16) = v130;
  v5 = v131;
  v134 = swift_allocObject();
  *(v134 + 16) = v131;
  sub_225F3EAE8();

  v145 = sub_226098C48();
  v146 = sub_22609A088();
  v137 = swift_allocObject();
  *(v137 + 16) = 32;
  v138 = swift_allocObject();
  *(v138 + 16) = 8;
  v133 = swift_allocObject();
  *(v133 + 16) = sub_225F49848;
  *(v133 + 24) = v132;
  v139 = swift_allocObject();
  *(v139 + 16) = sub_225EF7B84;
  *(v139 + 24) = v133;
  v140 = swift_allocObject();
  *(v140 + 16) = 64;
  v141 = swift_allocObject();
  *(v141 + 16) = 8;
  v135 = swift_allocObject();
  *(v135 + 16) = sub_225F3EA68;
  *(v135 + 24) = v134;
  v136 = swift_allocObject();
  *(v136 + 16) = sub_225F3EA70;
  *(v136 + 24) = v135;
  v142 = swift_allocObject();
  *(v142 + 16) = sub_225F3E1C8;
  *(v142 + 24) = v136;
  sub_22609A4F8();
  v143 = v6;

  *v143 = sub_225EF7434;
  v143[1] = v137;

  v143[2] = sub_225EF7434;
  v143[3] = v138;

  v143[4] = sub_225EF7B90;
  v143[5] = v139;

  v143[6] = sub_225EF7434;
  v143[7] = v140;

  v143[8] = sub_225EF7434;
  v143[9] = v141;

  v143[10] = sub_225F3E358;
  v143[11] = v142;
  sub_225EF5418();

  if (os_log_type_enabled(v145, v146))
  {
    v39 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v40 = sub_225EF5468(1);
    v41 = sub_225EF5468(1);
    *(v124 + 1008) = v39;
    *(v124 + 1016) = v40;
    *(v124 + 1024) = v41;
    sub_225EF54BC(2, (v124 + 1008));
    sub_225EF54BC(2, (v124 + 1008));
    *(v124 + 672) = sub_225EF7434;
    *(v124 + 680) = v137;
    sub_225EF73E8(v124 + 672, v124 + 1008, v124 + 1016, v124 + 1024);
    *(v124 + 672) = sub_225EF7434;
    *(v124 + 680) = v138;
    sub_225EF73E8(v124 + 672, v124 + 1008, v124 + 1016, v124 + 1024);
    *(v124 + 672) = sub_225EF7B90;
    *(v124 + 680) = v139;
    sub_225EF73E8(v124 + 672, v124 + 1008, v124 + 1016, v124 + 1024);
    *(v124 + 672) = sub_225EF7434;
    *(v124 + 680) = v140;
    sub_225EF73E8(v124 + 672, v124 + 1008, v124 + 1016, v124 + 1024);
    *(v124 + 672) = sub_225EF7434;
    *(v124 + 680) = v141;
    sub_225EF73E8(v124 + 672, v124 + 1008, v124 + 1016, v124 + 1024);
    *(v124 + 672) = sub_225F3E358;
    *(v124 + 680) = v142;
    sub_225EF73E8(v124 + 672, v124 + 1008, v124 + 1016, v124 + 1024);
    _os_log_impl(&dword_225EEB000, v145, v146, "Replay for requestId %s failed with error %@", v39, 0x16u);
    sub_225EF7AF4(v40);
    sub_225EF7AF4(v41);
    sub_22609A168();
  }

  v36 = *(v124 + 1224);
  v37 = *(v124 + 1216);
  v34 = *(v124 + 1088);
  v35 = *(v124 + 1072);
  MEMORY[0x277D82BD8](v145);
  v37(v34, v35);

  v33 = *(v124 + 1184);
  v38 = *(v124 + 1176);

  sub_225F4C4A4((v124 + 208));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786340, &qword_2260A04C8);
  sub_22609A388();
  v122 = *(v124 + 976);
  *(v124 + 1176) = v122;
  if (v122)
  {
    v7 = *(v124 + 1056);
    *(v124 + 984) = v122;
    v123 = [v7 audio];
    if (v123)
    {
      v118 = sub_226098978();
      v119 = v8;
      MEMORY[0x277D82BD8](v123);
      v120 = v118;
      v121 = v119;
    }

    else
    {
      v120 = 0;
      v121 = 0xF000000000000000;
    }

    v111 = *(v124 + 1128);
    v109 = *(v124 + 1112);
    v110 = *(v124 + 1120);
    v112 = *(v124 + 1136);
    sub_2260998E8();
    sub_2260998E8();
    v113 = sub_225F49850();
    v9 = sub_225F4985C();
    CESRAsrReplayWorkerConfig.init(audio:language:taskHint:useBaseProfile:profileData:requestEntityStrings:)(v120, v121, v109, v110, v111, v112, v113 & 1, 0, (v124 + 112), 0xF000000000000000, v9);
    memcpy((v124 + 208), (v124 + 112), 0x60uLL);
    *(v124 + 592) = sub_226099AA8();
    *(v124 + 600) = v10;
    sub_226099938();
    sub_225EFE6BC(v124 + 592);
    v115 = *(v124 + 576);
    v116 = *(v124 + 584);
    sub_2260998E8();
    v114 = sub_226099AA8();
    v117 = v11;
    sub_2260998E8();
    *(v124 + 400) = v115;
    *(v124 + 408) = v116;
    *(v124 + 416) = v114;
    *(v124 + 424) = v117;
    if (*(v124 + 408))
    {
      sub_225F4C5E0((v124 + 400), (v124 + 880));
      if (*(v124 + 424))
      {
        *(v124 + 896) = *(v124 + 880);
        *(v124 + 912) = *(v124 + 416);
        v107 = MEMORY[0x22AA72BD0](*(v124 + 896), *(v124 + 904), *(v124 + 912), *(v124 + 920));
        sub_225EFE6BC(v124 + 912);
        sub_225EFE6BC(v124 + 896);
        sub_225EFE6BC(v124 + 400);
        v108 = v107;
        goto LABEL_12;
      }

      sub_225EFE6BC(v124 + 880);
    }

    else if (!*(v124 + 424))
    {
      sub_225EFE6BC(v124 + 400);
      v108 = 1;
LABEL_12:

      if (v108)
      {
        v106 = [*(v124 + 1056) profile];
        if (v106)
        {
          v102 = sub_226098978();
          v103 = v12;
          MEMORY[0x277D82BD8](v106);
          v104 = v102;
          v105 = v103;
        }

        else
        {
          v104 = 0;
          v105 = 0xF000000000000000;
        }

        v100 = v104;
        v101 = v105;
      }

      else
      {
        v100 = 0;
        v101 = 0xF000000000000000;
      }

      v13 = *(v124 + 280);
      v14 = *(v124 + 288);
      *(v124 + 280) = v100;
      *(v124 + 288) = v101;
      sub_225F4C1F8(v13, v14);
      *(v124 + 624) = sub_226099AA8();
      *(v124 + 632) = v15;
      sub_226099938();
      sub_225EFE6BC(v124 + 624);
      v97 = *(v124 + 608);
      v98 = *(v124 + 616);
      sub_2260998E8();
      v96 = sub_226099AA8();
      v99 = v16;
      sub_2260998E8();
      *(v124 + 432) = v97;
      *(v124 + 440) = v98;
      *(v124 + 448) = v96;
      *(v124 + 456) = v99;
      if (*(v124 + 440))
      {
        sub_225F4C5E0((v124 + 432), (v124 + 832));
        if (*(v124 + 456))
        {
          *(v124 + 848) = *(v124 + 832);
          *(v124 + 864) = *(v124 + 448);
          v94 = MEMORY[0x22AA72BD0](*(v124 + 848), *(v124 + 856), *(v124 + 864), *(v124 + 872));
          sub_225EFE6BC(v124 + 864);
          sub_225EFE6BC(v124 + 848);
          sub_225EFE6BC(v124 + 432);
          v95 = v94;
          goto LABEL_26;
        }

        sub_225EFE6BC(v124 + 832);
      }

      else if (!*(v124 + 456))
      {
        sub_225EFE6BC(v124 + 432);
        v95 = 1;
LABEL_26:

        if (v95)
        {
          v91 = [*(v124 + 1056) contextualEntities];
          v92 = sub_226099C88();
          MEMORY[0x277D82BD8](v91);
          v93 = v92;
        }

        else
        {
          v93 = sub_22609A4F8();
        }

        v17 = *(v124 + 296);
        *(v124 + 296) = v93;

        *(v124 + 656) = sub_226099AA8();
        *(v124 + 664) = v18;
        sub_226099938();
        sub_225EFE6BC(v124 + 656);
        v88 = *(v124 + 640);
        v89 = *(v124 + 648);
        sub_2260998E8();
        v87 = sub_226099AA8();
        v90 = v19;
        sub_2260998E8();
        *(v124 + 464) = v88;
        *(v124 + 472) = v89;
        *(v124 + 480) = v87;
        *(v124 + 488) = v90;
        if (*(v124 + 472))
        {
          sub_225F4C5E0((v124 + 464), (v124 + 784));
          if (*(v124 + 488))
          {
            *(v124 + 800) = *(v124 + 784);
            *(v124 + 816) = *(v124 + 480);
            v85 = MEMORY[0x22AA72BD0](*(v124 + 800), *(v124 + 808), *(v124 + 816), *(v124 + 824));
            sub_225EFE6BC(v124 + 816);
            sub_225EFE6BC(v124 + 800);
            sub_225EFE6BC(v124 + 464);
            v86 = v85;
LABEL_37:
            v66 = *(v124 + 1104);
            v69 = *(v124 + 1072);
            v70 = *(v124 + 1056);
            v68 = *(v124 + 1080);

            *(v124 + 272) = v86 & 1;
            type metadata accessor for CESRAsrReplayWorker();
            memcpy((v124 + 16), (v124 + 208), 0x60uLL);
            sub_225F4C240(v124 + 16, v124 + 304);
            v67 = CESRAsrReplayWorker.__allocating_init(config:)((v124 + 16));
            *(v124 + 1184) = v67;
            *(v124 + 992) = v67;
            v20 = sub_225F3EC5C();
            v21 = *(v68 + 16);
            *(v124 + 1192) = v21;
            *(v124 + 1200) = (v68 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v21(v66, v20, v69);
            MEMORY[0x277D82BE0](v70);
            v72 = swift_allocObject();
            *(v72 + 16) = v70;
            sub_2260998E8();
            v71 = swift_allocObject();
            *(v71 + 16) = v122;

            v74 = swift_allocObject();
            *(v74 + 16) = sub_225F2CE08;
            *(v74 + 24) = v71;

            oslog = sub_226098C48();
            v84 = sub_22609A088();
            v76 = swift_allocObject();
            *(v76 + 16) = 32;
            v77 = swift_allocObject();
            *(v77 + 16) = 8;
            v73 = swift_allocObject();
            *(v73 + 16) = sub_225F49848;
            *(v73 + 24) = v72;
            v78 = swift_allocObject();
            *(v78 + 16) = sub_225EF7B84;
            *(v78 + 24) = v73;
            v79 = swift_allocObject();
            *(v79 + 16) = 32;
            v80 = swift_allocObject();
            *(v80 + 16) = 8;
            v75 = swift_allocObject();
            *(v75 + 16) = sub_225F4C3B4;
            *(v75 + 24) = v74;
            v81 = swift_allocObject();
            *(v81 + 16) = sub_225EF7B84;
            *(v81 + 24) = v75;
            *(v124 + 1208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            sub_22609A4F8();
            v82 = v22;

            *v82 = sub_225EF7434;
            v82[1] = v76;

            v82[2] = sub_225EF7434;
            v82[3] = v77;

            v82[4] = sub_225EF7B90;
            v82[5] = v78;

            v82[6] = sub_225EF7434;
            v82[7] = v79;

            v82[8] = sub_225EF7434;
            v82[9] = v80;

            v82[10] = sub_225EF7B90;
            v82[11] = v81;
            sub_225EF5418();

            if (os_log_type_enabled(oslog, v84))
            {
              buf = sub_22609A188();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v64 = sub_225EF5468(0);
              v65 = sub_225EF5468(2);
              *(v124 + 1032) = buf;
              *(v124 + 1040) = v64;
              *(v124 + 1048) = v65;
              sub_225EF54BC(2, (v124 + 1032));
              sub_225EF54BC(2, (v124 + 1032));
              *(v124 + 768) = sub_225EF7434;
              *(v124 + 776) = v76;
              sub_225EF73E8(v124 + 768, v124 + 1032, v124 + 1040, v124 + 1048);
              *(v124 + 768) = sub_225EF7434;
              *(v124 + 776) = v77;
              sub_225EF73E8(v124 + 768, v124 + 1032, v124 + 1040, v124 + 1048);
              *(v124 + 768) = sub_225EF7B90;
              *(v124 + 776) = v78;
              sub_225EF73E8(v124 + 768, v124 + 1032, v124 + 1040, v124 + 1048);
              *(v124 + 768) = sub_225EF7434;
              *(v124 + 776) = v79;
              sub_225EF73E8(v124 + 768, v124 + 1032, v124 + 1040, v124 + 1048);
              *(v124 + 768) = sub_225EF7434;
              *(v124 + 776) = v80;
              sub_225EF73E8(v124 + 768, v124 + 1032, v124 + 1040, v124 + 1048);
              *(v124 + 768) = sub_225EF7B90;
              *(v124 + 776) = v81;
              sub_225EF73E8(v124 + 768, v124 + 1032, v124 + 1040, v124 + 1048);
              _os_log_impl(&dword_225EEB000, oslog, v84, "Attempting replay for requestId %s, replayType %s", buf, 0x16u);
              sub_225EF7AF4(v64);
              sub_225EF7AF4(v65);
              sub_22609A168();
            }

            v61 = *(v124 + 1104);
            v62 = *(v124 + 1072);
            v60 = *(v124 + 1080);
            MEMORY[0x277D82BD8](oslog);
            v23 = *(v60 + 8);
            *(v124 + 1216) = v23;
            *(v124 + 1224) = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v23(v61, v62);
            v24 = swift_task_alloc();
            *(v124 + 1232) = v24;
            *v24 = *(v124 + 928);
            v24[1] = sub_225F41CD4;

            return CESRAsrReplayWorker.runTranscription()();
          }

          sub_225EFE6BC(v124 + 784);
        }

        else if (!*(v124 + 488))
        {
          sub_225EFE6BC(v124 + 464);
          v86 = 1;
          goto LABEL_37;
        }

        sub_225F4C1C0(v124 + 464);
        v86 = 0;
        goto LABEL_37;
      }

      sub_225F4C1C0(v124 + 432);
      v95 = 0;
      goto LABEL_26;
    }

    sub_225F4C1C0(v124 + 400);
    v108 = 0;
    goto LABEL_12;
  }

  v58 = *(v124 + 1056);
  sub_225EFE6E8((v124 + 544));
  v59 = [v58 metadata];
  if (v59 && (v57 = [v59 ids], MEMORY[0x277D82BD8](v59), v57))
  {
    v26 = [v57 asrId];
    v56 = v26;
    if (v26)
    {
      v52 = sub_226099A08();
      v53 = v27;
      MEMORY[0x277D82BD8](v56);
      v54 = v52;
      v55 = v53;
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    MEMORY[0x277D82BD8](v57);
    v50 = v54;
    v51 = v55;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  *(v124 + 560) = v50;
  *(v124 + 568) = v51;
  if (*(v124 + 568))
  {
    v147 = *(v124 + 560);
    v148 = *(v124 + 568);
  }

  else
  {
    v147 = sub_226099AA8();
    v148 = v28;
    if (*(v124 + 568))
    {
      sub_225EFE6BC(v124 + 560);
    }
  }

  v29 = *(v124 + 1168);
  v45 = *(v124 + 1160);
  v44 = *(v124 + 1144);
  v43 = *(v124 + 1152);
  v46 = *(v124 + 1136);
  v47 = *(v124 + 1120);
  v42 = *(v124 + 960);
  sub_2260998E8();
  sub_22603C688(v147, v148, v45, v42);

  sub_225EFE6E8((v124 + 960));
  (*(v43 + 8))(v45, v44);

  v30 = *(v124 + 1104);
  v48 = *(v124 + 1096);
  v49 = *(v124 + 1088);

  v31 = *(*(v124 + 928) + 8);
  v32 = *(v124 + 928);

  return v31();
}

uint64_t sub_225F4966C(void *a1)
{
  v13 = [a1 metadata];
  if (v13 && (v12 = [v13 ids], MEMORY[0x277D82BD8](v13), v12))
  {
    v1 = [v12 requestId];
    v11 = v1;
    if (v1)
    {
      v7 = sub_226099A08();
      v8 = v2;
      MEMORY[0x277D82BD8](v11);
      v9 = v7;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    MEMORY[0x277D82BD8](v12);
    v5 = v9;
    v6 = v10;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v14 = v5;
  v15 = v6;
  if (v6)
  {
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = sub_226099AA8();
    v17 = v3;
  }

  return v16;
}

uint64_t sub_225F498C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 200) = a6;
  *(v7 + 192) = a5;
  *(v7 + 184) = a4;
  *(v7 + 176) = a3;
  *(v7 + 168) = a2;
  *(v7 + 160) = a1;
  *(v7 + 128) = v7;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 248) = 0;
  *(v7 + 249) = 0;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  v8 = sub_226098C58();
  *(v7 + 208) = v8;
  v11 = *(v8 - 8);
  *(v7 + 216) = v11;
  v12 = *(v11 + 64);
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 136) = a5;
  *(v7 + 144) = a6;
  *(v7 + 152) = v6;
  v9 = *(v7 + 128);

  return MEMORY[0x2822009F8](sub_225F49AB4, 0, 0);
}

uint64_t sub_225F49AB4()
{
  v116 = v0;
  v1 = v0[30];
  v69 = v0[27];
  v70 = v0[26];
  v76 = v0[25];
  v78 = v0[24];
  v75 = v0[23];
  v74 = v0[22];
  v73 = v0[21];
  v72 = v0[20];
  v0[16] = v0;
  v2 = sub_225F3EC5C();
  v71 = *(v69 + 16);
  v71(v1, v2, v70);
  sub_2260998E8();
  v79 = swift_allocObject();
  *(v79 + 16) = v72;
  *(v79 + 24) = v73;
  sub_2260998E8();
  v81 = swift_allocObject();
  *(v81 + 16) = v74;
  *(v81 + 24) = v75;
  sub_2260998E8();
  v77 = swift_allocObject();
  *(v77 + 16) = v76;

  v83 = swift_allocObject();
  *(v83 + 16) = sub_225F2CE08;
  *(v83 + 24) = v77;

  MEMORY[0x277D82BE0](v78);
  v85 = swift_allocObject();
  *(v85 + 16) = v78;
  sub_225F3EAE8();

  v99 = sub_226098C48();
  v100 = sub_22609A088();
  v86 = swift_allocObject();
  *(v86 + 16) = 32;
  v87 = swift_allocObject();
  *(v87 + 16) = 8;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_225F4C620;
  *(v80 + 24) = v79;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_225EF7B84;
  *(v88 + 24) = v80;
  v89 = swift_allocObject();
  *(v89 + 16) = 32;
  v90 = swift_allocObject();
  *(v90 + 16) = 8;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_225F4C620;
  *(v82 + 24) = v81;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_225EF7B84;
  *(v91 + 24) = v82;
  v92 = swift_allocObject();
  *(v92 + 16) = 32;
  v93 = swift_allocObject();
  *(v93 + 16) = 8;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_225F4C3B4;
  *(v84 + 24) = v83;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_225EF7B84;
  *(v94 + 24) = v84;
  v95 = swift_allocObject();
  *(v95 + 16) = 64;
  v96 = swift_allocObject();
  *(v96 + 16) = 8;
  v97 = swift_allocObject();
  *(v97 + 16) = sub_225F4C62C;
  *(v97 + 24) = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v98 = v3;

  *v98 = sub_225EF7434;
  v98[1] = v86;

  v98[2] = sub_225EF7434;
  v98[3] = v87;

  v98[4] = sub_225EF7B90;
  v98[5] = v88;

  v98[6] = sub_225EF7434;
  v98[7] = v89;

  v98[8] = sub_225EF7434;
  v98[9] = v90;

  v98[10] = sub_225EF7B90;
  v98[11] = v91;

  v98[12] = sub_225EF7434;
  v98[13] = v92;

  v98[14] = sub_225EF7434;
  v98[15] = v93;

  v98[16] = sub_225EF7B90;
  v98[17] = v94;

  v98[18] = sub_225EF7434;
  v98[19] = v95;

  v98[20] = sub_225EF7434;
  v98[21] = v96;

  v98[22] = sub_225F3E358;
  v98[23] = v97;
  sub_225EF5418();

  if (os_log_type_enabled(v99, v100))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v66 = sub_225EF5468(1);
    v67 = sub_225EF5468(3);
    v111 = buf;
    v112 = v66;
    v113 = v67;
    sub_225EF54BC(2, &v111);
    sub_225EF54BC(4, &v111);
    v114 = sub_225EF7434;
    v115 = v86;
    sub_225EF73E8(&v114, &v111, &v112, &v113);
    v114 = sub_225EF7434;
    v115 = v87;
    sub_225EF73E8(&v114, &v111, &v112, &v113);
    v114 = sub_225EF7B90;
    v115 = v88;
    sub_225EF73E8(&v114, &v111, &v112, &v113);
    v114 = sub_225EF7434;
    v115 = v89;
    sub_225EF73E8(&v114, &v111, &v112, &v113);
    v114 = sub_225EF7434;
    v115 = v90;
    sub_225EF73E8(&v114, &v111, &v112, &v113);
    v114 = sub_225EF7B90;
    v115 = v91;
    sub_225EF73E8(&v114, &v111, &v112, &v113);
    v114 = sub_225EF7434;
    v115 = v92;
    sub_225EF73E8(&v114, &v111, &v112, &v113);
    v114 = sub_225EF7434;
    v115 = v93;
    sub_225EF73E8(&v114, &v111, &v112, &v113);
    v114 = sub_225EF7B90;
    v115 = v94;
    sub_225EF73E8(&v114, &v111, &v112, &v113);
    v114 = sub_225EF7434;
    v115 = v95;
    sub_225EF73E8(&v114, &v111, &v112, &v113);
    v114 = sub_225EF7434;
    v115 = v96;
    sub_225EF73E8(&v114, &v111, &v112, &v113);
    v114 = sub_225F3E358;
    v115 = v97;
    sub_225EF73E8(&v114, &v111, &v112, &v113);
    _os_log_impl(&dword_225EEB000, v99, v100, "Processing results for replay transcript %s, original transcript %s, replay type %s, for requestID %@", buf, 0x2Au);
    sub_225EF7AF4(v66);
    sub_225EF7AF4(v67);
    sub_22609A168();
  }

  else
  {
  }

  v61 = *(v68 + 240);
  v62 = *(v68 + 208);
  v64 = *(v68 + 168);
  v60 = *(v68 + 216);
  MEMORY[0x277D82BD8](v99);
  v63 = *(v60 + 8);
  v63(v61, v62);
  sub_2260998E8();
  if (v64)
  {
    v58 = *(v68 + 168);
    v59 = *(v68 + 184);
    *(v68 + 48) = *(v68 + 160);
    *(v68 + 56) = v58;
    sub_2260998E8();
    if (v59)
    {
      v55 = *(v68 + 184);
      *(v68 + 64) = *(v68 + 176);
      *(v68 + 72) = v55;
      sub_225F4C634();
      v56 = sub_225F26174();
      v57 = [v56 contextualEntityConfig];
      MEMORY[0x277D82BD8](v56);
      if (!v57)
      {
        return sub_22609A3B8();
      }

      v54 = [v57 enablementConfig];
      MEMORY[0x277D82BD8](v57);
      if (!v54)
      {
        return sub_22609A3B8();
      }

      v51 = *(v68 + 200);
      v50 = [v54 shouldEnroll];
      *(v68 + 248) = v50 & 1;
      MEMORY[0x277D82BD8](v54);
      *(v68 + 249) = 0;
      *(v68 + 96) = sub_226099AA8();
      *(v68 + 104) = v5;
      sub_226099938();
      sub_225EFE6BC(v68 + 96);
      v52 = *(v68 + 80);
      v53 = *(v68 + 88);
      if (v53)
      {
        *(v68 + 112) = v52;
        *(v68 + 120) = v53;
        v6 = sub_226099AA8();
        v49 = MEMORY[0x22AA72BD0](v52, v53, v6);

        if (v49)
        {
          *(v68 + 249) = 1;

          v48 = 1;
        }

        else
        {

          v48 = 0;
        }
      }

      else
      {
        v48 = 0;
      }

      if ((MEMORY[0x22AA72BD0](*(v68 + 160), v58, *(v68 + 176), v55) & 1) != 0 && v50 == (v48 & 1))
      {
        v7 = *(v68 + 232);
        v39 = *(v68 + 208);
        v40 = *(v68 + 192);
        v8 = sub_225F3EC5C();
        v71(v7, v8, v39);
        MEMORY[0x277D82BE0](v40);
        v41 = swift_allocObject();
        *(v41 + 16) = v40;
        sub_225F3EAE8();

        oslog = sub_226098C48();
        v47 = sub_22609A088();
        v42 = swift_allocObject();
        *(v42 + 16) = 64;
        v43 = swift_allocObject();
        *(v43 + 16) = 8;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_225F4C62C;
        *(v44 + 24) = v41;
        sub_22609A4F8();
        v45 = v9;

        *v45 = sub_225EF7434;
        v45[1] = v42;

        v45[2] = sub_225EF7434;
        v45[3] = v43;

        v45[4] = sub_225F3E358;
        v45[5] = v44;
        sub_225EF5418();

        if (os_log_type_enabled(oslog, v47))
        {
          v36 = sub_22609A188();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v37 = sub_225EF5468(1);
          v38 = sub_225EF5468(0);
          v106 = v36;
          v107 = v37;
          v108 = v38;
          sub_225EF54BC(2, &v106);
          sub_225EF54BC(1, &v106);
          v109 = sub_225EF7434;
          v110 = v42;
          sub_225EF73E8(&v109, &v106, &v107, &v108);
          v109 = sub_225EF7434;
          v110 = v43;
          sub_225EF73E8(&v109, &v106, &v107, &v108);
          v109 = sub_225F3E358;
          v110 = v44;
          sub_225EF73E8(&v109, &v106, &v107, &v108);
          _os_log_impl(&dword_225EEB000, oslog, v47, "Original and replay transcript match for matching configurations, emitting stability trigger log for requestID %@", v36, 0xCu);
          sub_225EF7AF4(v37);
          sub_225EF7AF4(v38);
          sub_22609A168();
        }

        else
        {
        }

        v33 = *(v68 + 232);
        v34 = *(v68 + 208);
        v35 = *(v68 + 192);
        MEMORY[0x277D82BD8](oslog);
        v63(v33, v34);
        type metadata accessor for CESAExperimentationManager();
        sub_226046714(2u, v35);
      }

      else if ((MEMORY[0x22AA72BD0](*(v68 + 160), v58, *(v68 + 176), v55) & 1) == 0 && v50 != (v48 & 1))
      {
        v10 = *(v68 + 224);
        v24 = *(v68 + 208);
        v25 = *(v68 + 192);
        v11 = sub_225F3EC5C();
        v71(v10, v11, v24);
        MEMORY[0x277D82BE0](v25);
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        sub_225F3EAE8();

        log = sub_226098C48();
        v32 = sub_22609A088();
        v27 = swift_allocObject();
        *(v27 + 16) = 64;
        v28 = swift_allocObject();
        *(v28 + 16) = 8;
        v29 = swift_allocObject();
        *(v29 + 16) = sub_225F4C62C;
        *(v29 + 24) = v26;
        sub_22609A4F8();
        v30 = v12;

        *v30 = sub_225EF7434;
        v30[1] = v27;

        v30[2] = sub_225EF7434;
        v30[3] = v28;

        v30[4] = sub_225F3E358;
        v30[5] = v29;
        sub_225EF5418();

        if (os_log_type_enabled(log, v32))
        {
          v21 = sub_22609A188();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v22 = sub_225EF5468(1);
          v23 = sub_225EF5468(0);
          v101 = v21;
          v102 = v22;
          v103 = v23;
          sub_225EF54BC(2, &v101);
          sub_225EF54BC(1, &v101);
          v104 = sub_225EF7434;
          v105 = v27;
          sub_225EF73E8(&v104, &v101, &v102, &v103);
          v104 = sub_225EF7434;
          v105 = v28;
          sub_225EF73E8(&v104, &v101, &v102, &v103);
          v104 = sub_225F3E358;
          v105 = v29;
          sub_225EF73E8(&v104, &v101, &v102, &v103);
          _os_log_impl(&dword_225EEB000, log, v32, "Original and replay transcript differ for differing configurations, emitting counterfactual trigger log for requestID %@", v21, 0xCu);
          sub_225EF7AF4(v22);
          sub_225EF7AF4(v23);
          sub_22609A168();
        }

        else
        {
        }

        v18 = *(v68 + 224);
        v19 = *(v68 + 208);
        v20 = *(v68 + 192);
        MEMORY[0x277D82BD8](log);
        v63(v18, v19);
        type metadata accessor for CESAExperimentationManager();
        sub_226046714(3u, v20);
      }
    }

    else
    {
    }
  }

  v13 = *(v68 + 240);
  v16 = *(v68 + 232);
  v17 = *(v68 + 224);

  v14 = *(*(v68 + 128) + 8);
  v15 = *(v68 + 128);

  return v14();
}

uint64_t sub_225F4BEC0(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  v6 = a1;
  v7 = a2;
  if (a2)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = sub_226099AA8();
    v9 = v2;
  }

  return v8;
}

uint64_t sub_225F4BF60(uint64_t a1)
{
  MEMORY[0x277D82BE0]();
  if (a1)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id sub_225F4C084()
{
  v2 = sub_2260999F8();
  v3 = [v1 initWithUUIDString_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

uint64_t sub_225F4C0E8(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0](v2);
  swift_unknownObjectRelease();
  return v2;
}

unint64_t sub_225F4C138()
{
  v2 = qword_27D786338;
  if (!qword_27D786338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786330, &qword_2260A04C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786338);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F4C1C0(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t sub_225F4C1F8(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_225EF5990(result, a2);
  }

  return result;
}

uint64_t sub_225F4C240(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v12 = *(a1 + 8);
  sub_2260998E8();
  *(a2 + 8) = v12;
  if ((*(a1 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + 16) = *(a1 + 16);
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    sub_225EF5A38(v8, v9);
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  *(a2 + 32) = *(a1 + 32);
  v6 = *(a1 + 40);
  sub_2260998E8();
  *(a2 + 40) = v6;
  *(a2 + 48) = *(a1 + 48);
  v7 = *(a1 + 56);
  sub_2260998E8();
  *(a2 + 56) = v7;
  *(a2 + 64) = *(a1 + 64);
  if ((*(a1 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + 72) = *(a1 + 72);
  }

  else
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    sub_225EF5A38(v4, v5);
    *(a2 + 72) = v4;
    *(a2 + 80) = v5;
  }

  v3 = *(a1 + 88);
  sub_2260998E8();
  result = a2;
  *(a2 + 88) = v3;
  return result;
}

uint64_t sub_225F4C3B4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786520, &unk_2260A0490);
  v1 = sub_225F4C41C();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F4C41C()
{
  v2 = qword_27D786348;
  if (!qword_27D786348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786520, &unk_2260A0490);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786348);
    return WitnessTable;
  }

  return v2;
}

void *sub_225F4C4A4(void *a1)
{
  v1 = a1[1];

  if ((a1[3] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_225EF5990(a1[2], a1[3]);
  }

  v2 = a1[5];

  v3 = a1[7];

  if ((a1[10] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_225EF5990(a1[9], a1[10]);
  }

  v4 = a1[11];

  return a1;
}

unint64_t sub_225F4C57C()
{
  v2 = qword_280D763B0;
  if (!qword_280D763B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763B0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_225F4C5E0(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_2260998E8();
  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_225F4C634()
{
  v2 = qword_280D76470;
  if (!qword_280D76470)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76470);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_225F4C698()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D786350);
  __swift_project_value_buffer(v1, qword_27D786350);
  return sub_225F4C6E4();
}

uint64_t sub_225F4C6E4()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F4C7E0()
{
  if (qword_27D785D70 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D786350);
}

BOOL sub_225F4C84C(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_225F4CAA0()
{
  v2 = qword_27D786368;
  if (!qword_27D786368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786368);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F4CBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v738 = v4;
  v740 = v5;
  v739 = v6;
  v762 = 0;
  v917 = 0;
  v916 = 0;
  v915 = 0;
  v914 = 0;
  v913 = 0;
  v912 = 0;
  v911 = 0;
  v910[1] = 0;
  v910[0] = 0;
  v905 = 0;
  v904 = 0;
  v903 = 0;
  v902 = 0;
  v901 = 0;
  v900 = 0;
  v896[1] = 0;
  v896[0] = 0;
  v737 = 0;
  v887 = 0;
  v883 = 0;
  v882 = 0;
  v876 = 0;
  v875 = 0;
  v868 = 0;
  v863 = 0;
  v862 = 0;
  v861 = 0;
  v860 = 0;
  v859 = 0;
  v854 = 0;
  v849 = 0;
  v845 = 0;
  v844 = 0;
  v843 = 0;
  v842 = 0;
  v841 = 0;
  v838 = 0;
  v837[1] = 0;
  v837[0] = 0;
  v834 = 0;
  v831 = 0;
  v828 = 0;
  v827 = 0;
  v824 = 0;
  v823 = 0;
  v822 = 0;
  v814 = 0;
  v810 = 0;
  v809 = 0;
  v804 = 0;
  v803 = 0;
  v791 = 0;
  v757 = sub_226098C58();
  v741 = v757;
  v742 = *(v757 - 8);
  v756 = v742;
  v743 = v742;
  v752 = *(v742 + 64);
  MEMORY[0x28223BE20](v739, v740, v738, v757);
  v754 = (v752 + 15) & 0xFFFFFFFFFFFFFFF0;
  v744 = &v196 - v754;
  MEMORY[0x28223BE20](v7, v8, v9, &v196 - v754);
  v745 = &v196 - v754;
  MEMORY[0x28223BE20](v10, v11, v12, &v196 - v754);
  v746 = &v196 - v754;
  MEMORY[0x28223BE20](v13, v14, v15, &v196 - v754);
  v747 = &v196 - v754;
  MEMORY[0x28223BE20](v16, v17, v18, &v196 - v754);
  v748 = &v196 - v754;
  MEMORY[0x28223BE20](v19, v20, v21, &v196 - v754);
  v749 = &v196 - v754;
  MEMORY[0x28223BE20](v22, v23, v24, &v196 - v754);
  v750 = &v196 - v754;
  MEMORY[0x28223BE20](v25, v26, v27, &v196 - v754);
  v751 = &v196 - v754;
  MEMORY[0x28223BE20](v28, v29, v30, &v196 - v754);
  v753 = &v196 - v754;
  MEMORY[0x28223BE20](v31, v32, v33, &v196 - v754);
  v34 = &v196 - v754;
  v755 = &v196 - v754;
  v916 = v35;
  v917 = v36;
  v915 = v37;
  v38 = sub_225F4C7E0();
  v758 = *(v756 + 16);
  v759 = (v756 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v758(v34, v38, v757);
  v765 = sub_226098C48();
  v760 = v765;
  v764 = sub_22609A078();
  v761 = v764;
  v763 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v766 = sub_22609A4F8();
  if (os_log_type_enabled(v765, v764))
  {
    v39 = v737;
    v728 = sub_22609A188();
    v724 = v728;
    v725 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v726 = 0;
    v729 = sub_225EF5468(0);
    v727 = v729;
    v730 = sub_225EF5468(v726);
    v770 = v728;
    v769 = v729;
    v768 = v730;
    v731 = 0;
    v732 = &v770;
    sub_225EF54BC(0, &v770);
    sub_225EF54BC(v731, v732);
    v767 = v766;
    v733 = &v196;
    MEMORY[0x28223BE20](&v196, v40, v41, v42);
    v734 = &v196 - 6;
    v735 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v736 = v39;
    if (v39)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v760, v761, "FullPayloadCorrector::Applying corrections", v724, 2u);
      v722 = 0;
      sub_225EF7AF4(v727);
      sub_225EF7AF4(v730);
      sub_22609A168();

      v723 = v736;
    }
  }

  else
  {

    v723 = v737;
  }

  v720 = v723;

  v714 = *(v743 + 8);
  v715 = (v743 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v714(v755, v741);
  v43 = sub_226099AE8();
  v716 = v44;
  v717 = MEMORY[0x22AA72C90](v43);
  v914 = v717;

  sub_2260998E8();
  v912 = v739;
  v913 = v740;
  v718 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
  v911 = sub_22609A4F8();
  sub_2260998E8();
  v909 = v738;
  v719 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786380, &qword_2260A0510);
  sub_225F513A8();
  sub_22609A028();
  for (i = v720; ; i = v384)
  {
    v710 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786390, &qword_2260A0518);
    sub_22609A388();
    v711 = v906;
    v712 = v907;
    v713 = v908;
    if (v908 == 1)
    {
      break;
    }

    v707 = v711;
    v708 = v712;
    v709 = v713;
    v45 = v753;
    v686 = v713;
    v688 = v712;
    v687 = v711;
    v843 = v711;
    v844 = v712;
    v845 = v713;
    v841 = v711;
    v842 = v712;
    v46 = sub_225F4C7E0();
    v758(v45, v46, v741);
    v691 = 32;
    v695 = 32;
    v696 = 7;
    v47 = swift_allocObject();
    v48 = v688;
    v697 = v47;
    *(v47 + 16) = v687;
    *(v47 + 24) = v48;
    v706 = sub_226098C48();
    v689 = v706;
    v705 = sub_22609A078();
    v690 = v705;
    v692 = 17;
    v700 = swift_allocObject();
    v693 = v700;
    *(v700 + 16) = v691;
    v701 = swift_allocObject();
    v694 = v701;
    *(v701 + 16) = 8;
    v49 = swift_allocObject();
    v50 = v697;
    v698 = v49;
    *(v49 + 16) = sub_225F7B770;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v698;
    v704 = v51;
    v699 = v51;
    *(v51 + 16) = sub_225EF7B84;
    *(v51 + 24) = v52;
    v702 = sub_22609A4F8();
    v703 = v53;

    v54 = v700;
    v55 = v703;
    *v703 = sub_225EF7434;
    v55[1] = v54;

    v56 = v701;
    v57 = v703;
    v703[2] = sub_225EF7434;
    v57[3] = v56;

    v58 = v703;
    v59 = v704;
    v703[4] = sub_225EF7B90;
    v58[5] = v59;
    sub_225EF5418();

    if (os_log_type_enabled(v706, v705))
    {
      v60 = v710;
      v676 = sub_22609A188();
      v673 = v676;
      v674 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v677 = sub_225EF5468(0);
      v675 = v677;
      v679 = 1;
      v678 = sub_225EF5468(1);
      v775[0] = v676;
      v774 = v677;
      v773 = v678;
      v680 = v775;
      sub_225EF54BC(2, v775);
      sub_225EF54BC(v679, v680);
      v771 = sub_225EF7434;
      v772 = v693;
      sub_225EF73E8(&v771, v680, &v774, &v773);
      v681 = v60;
      v682 = v693;
      v683 = v694;
      v684 = v699;
      v685 = v60;
      if (v60)
      {
        v668 = v682;
        v669 = v683;
        v670 = v684;
        v671 = 0;
        v657 = v684;
        v656 = v683;

        __break(1u);
      }

      else
      {
        v771 = sub_225EF7434;
        v772 = v694;
        sub_225EF73E8(&v771, v775, &v774, &v773);
        v663 = 0;
        v664 = v693;
        v665 = v694;
        v666 = v699;
        v667 = 0;
        v771 = sub_225EF7B90;
        v772 = v699;
        sub_225EF73E8(&v771, v775, &v774, &v773);
        v658 = 0;
        v659 = v693;
        v660 = v694;
        v661 = v699;
        v662 = 0;
        _os_log_impl(&dword_225EEB000, v689, v690, "FullPayloadCorrector::Result range %s", v673, 0xCu);
        sub_225EF7AF4(v675);
        sub_225EF7AF4(v678);
        sub_22609A168();

        v672 = v658;
      }
    }

    else
    {
      v61 = v710;

      v672 = v61;
    }

    v655 = v672;

    v714(v753, v741);
    v839 = v687;
    v840 = v688;
    v921 = v688;
    v920 = v687;
    if (v717 >= v687 + v688)
    {
      sub_2260998E8();
      if (v686)
      {
        v654 = v686;
        v650 = v686;
        v838 = v686;
        sub_2260998E8();
        v836 = v650;
        v652 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862D0, &qword_2260A0530);
        v651 = v652;
        sub_225F7B7B4();
        sub_22609A028();
        for (j = v655; ; j = v564)
        {
          v648 = j;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786408, &qword_2260A0558);
          sub_22609A388();
          v649 = v835;
          if (!v835)
          {
            sub_225EFE6E8(v837);

            v384 = v648;
            goto LABEL_94;
          }

          v647 = v649;
          v645 = v649;
          v834 = v649;
          v832[0] = sub_226099AA8();
          v832[1] = v62;
          v646 = v832;
          sub_226099938();
          sub_225EFE6BC(v646);
          if (v833[3])
          {
            sub_225F7BA0C();
            if (swift_dynamicCast())
            {
              v644 = v775[1];
            }

            else
            {
              v644 = 0;
            }

            v643 = v644;
          }

          else
          {
            sub_225F186BC(v833);
            v643 = 0;
          }

          v641 = v643;
          v831 = v643;
          v829[0] = sub_226099AA8();
          v829[1] = v63;
          v642 = v829;
          sub_226099938();
          sub_225EFE6BC(v642);
          if (v830[3])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786418, &unk_2260A0568);
            if (swift_dynamicCast())
            {
              v640 = v775[2];
            }

            else
            {
              v640 = 0;
            }

            v639 = v640;
          }

          else
          {
            sub_225F186BC(v830);
            v639 = 0;
          }

          v638 = v639;
          v828 = v639;
          v64 = v641;
          if (!v641)
          {
            goto LABEL_88;
          }

          v637 = v641;
          v636 = v641;
          v827 = v641;
          sub_2260998E8();
          if (v638)
          {
            v635 = v638;
            v634 = v638;
            v775[3] = v638;
            v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786418, &unk_2260A0568);
            sub_225F7B984();
            sub_226099FE8();
          }

          else
          {
            memset(v825, 0, sizeof(v825));
            v826 = 0;
          }

          if (v826)
          {
            if (swift_dynamicCast())
            {
              v631 = v775[4];
              v632 = v775[5];
            }

            else
            {
              v631 = 0;
              v632 = 0;
            }

            v629 = v631;
            v630 = v632;
          }

          else
          {
            sub_225F186BC(v825);
            v629 = 0;
            v630 = 0;
          }

          v627 = v630;
          v628 = v629;
          if (!v630)
          {
            break;
          }

          v625 = v628;
          v626 = v627;
          v615 = v627;
          v616 = v628;
          v823 = v628;
          v824 = v627;
          v619 = swift_allocObject();
          v617 = v619;
          v621 = (v619 + 16);
          v618 = (v619 + 16);
          v822 = v619 + 16;
          v65 = [v636 rangeValue];
          v66 = v619;
          v821[7] = v67;
          v821[6] = v65;
          v622 = v65;
          v620 = v67;
          *(v619 + 16) = v65;
          *(v66 + 24) = v67;
          result = swift_beginAccess();
          v623 = v621;
          v69 = __OFADD__(v622, v687);
          v624 = &v622[v687];
          if (v69)
          {
            goto LABEL_190;
          }

          *v623 = v624;
          swift_endAccess();
          v614 = v821;
          swift_beginAccess();
          swift_endAccess();
          v820[1] = v624;
          v820[2] = v620;
          v919 = v620;
          v918 = v624;
          if (v717 < &v620[v624])
          {
            v141 = v748;
            v142 = sub_225F4C7E0();
            v758(v141, v142, v741);

            v432 = sub_226098C48();
            v416 = v432;
            v431 = sub_22609A078();
            v417 = v431;
            v418 = 17;
            v423 = 7;
            v426 = swift_allocObject();
            v419 = v426;
            v420 = 32;
            *(v426 + 16) = 32;
            v143 = swift_allocObject();
            v144 = v420;
            v427 = v143;
            v421 = v143;
            *(v143 + 16) = 8;
            v422 = v144;
            v145 = swift_allocObject();
            v146 = v617;
            v424 = v145;
            *(v145 + 16) = sub_225F7B83C;
            *(v145 + 24) = v146;
            v147 = swift_allocObject();
            v148 = v424;
            v430 = v147;
            v425 = v147;
            *(v147 + 16) = sub_225EF7B84;
            *(v147 + 24) = v148;
            v428 = sub_22609A4F8();
            v429 = v149;

            v150 = v426;
            v151 = v429;
            *v429 = sub_225EF7434;
            v151[1] = v150;

            v152 = v427;
            v153 = v429;
            v429[2] = sub_225EF7434;
            v153[3] = v152;

            v154 = v429;
            v155 = v430;
            v429[4] = sub_225EF7B90;
            v154[5] = v155;
            sub_225EF5418();

            if (os_log_type_enabled(v432, v431))
            {
              v156 = v648;
              v406 = sub_22609A188();
              v403 = v406;
              v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v407 = sub_225EF5468(0);
              v405 = v407;
              v409 = 1;
              v408 = sub_225EF5468(1);
              v820[0] = v406;
              v819 = v407;
              v818 = v408;
              v410 = v820;
              sub_225EF54BC(2, v820);
              sub_225EF54BC(v409, v410);
              v816 = sub_225EF7434;
              v817 = v419;
              sub_225EF73E8(&v816, v410, &v819, &v818);
              v411 = v156;
              v412 = v419;
              v413 = v421;
              v414 = v425;
              v415 = v156;
              if (v156)
              {
                v398 = v412;
                v399 = v413;
                v400 = v414;
                v401 = 0;
                v387 = v414;
                v386 = v413;

                __break(1u);
              }

              else
              {
                v816 = sub_225EF7434;
                v817 = v421;
                sub_225EF73E8(&v816, v820, &v819, &v818);
                v393 = 0;
                v394 = v419;
                v395 = v421;
                v396 = v425;
                v397 = 0;
                v816 = sub_225EF7B90;
                v817 = v425;
                sub_225EF73E8(&v816, v820, &v819, &v818);
                v388 = 0;
                v389 = v419;
                v390 = v421;
                v391 = v425;
                v392 = 0;
                _os_log_impl(&dword_225EEB000, v416, v417, "FullPayloadCorrector::Dropping Range %s Correction REDACTED", v403, 0xCu);
                sub_225EF7AF4(v405);
                sub_225EF7AF4(v408);
                sub_22609A168();

                v402 = v388;
              }
            }

            else
            {
              v157 = v648;

              v402 = v157;
            }

            v385 = v402;

            v714(v748, v741);

            v564 = v385;
          }

          else
          {
            v612 = &v815;
            swift_beginAccess();
            v613 = v618[1];
            swift_endAccess();
            if (v613)
            {
              v558 = 0;
              sub_225F7B844();
              sub_2260998E8();
              v553 = sub_225F51668();
              v551 = v553;
              v814 = v553;
              v557 = 32;
              v552 = &v813;
              swift_beginAccess();
              v554 = *v618;
              swift_endAccess();
              v87 = [v553 rangeOfComposedCharacterSequenceAtIndex_];
              v812 = v88;
              v811 = v87;
              v555.location = v87;
              v555.length = v88;
              v809 = v87;
              v810 = v88;
              v556 = &v808;
              swift_beginAccess();
              v561 = *v618;
              swift_endAccess();
              v559 = &v807;
              swift_beginAccess();
              v560 = v618[1];
              result = swift_endAccess();
              v89 = __OFADD__(v561, v560);
              v562 = v561 + v560;
              if (v89)
              {
                goto LABEL_191;
              }

              result = v562 - 1;
              v90 = __OFSUB__(v562, 1);
              v550 = v562 - 1;
              if (v90)
              {
                goto LABEL_192;
              }

              v91 = [v551 rangeOfComposedCharacterSequenceAtIndex_];
              v806 = v92;
              v805 = v91;
              v546.location = v91;
              v546.length = v92;
              v803 = v91;
              v804 = v92;
              v547 = &v802;
              swift_beginAccess();
              v548 = *v618;
              swift_endAccess();
              v801 = v548;
              v800 = v555;
              v799 = NSIntersectionRange(v548, v555);
              v798 = v799;
              *&v797[24] = v555;
              v925 = v799;
              v924 = v555;
              v549 = 0;
              if (v799.location == v555.location)
              {
                v549 = v925.length == v924.length;
              }

              if (v549)
              {
                v542 = v797;
                swift_beginAccess();
                v543 = *v618;
                swift_endAccess();
                v796 = v543;
                v795 = v546;
                v794 = NSIntersectionRange(v543, v546);
                v793 = v794;
                *&v792[24] = v546;
                v923 = v794;
                v922 = v546;
                v544 = 0;
                if (v794.location == v546.location)
                {
                  v544 = v923.length == v922.length;
                }

                v545 = !v544;
              }

              else
              {
                v545 = 1;
              }

              if (v545)
              {
                v93 = v750;
                v94 = sub_225F4C7E0();
                v758(v93, v94, v741);

                v526 = 32;
                v530 = 32;
                v531 = 7;
                v95 = swift_allocObject();
                v96 = v617;
                v532 = v95;
                *(v95 + 16) = sub_225F7B8A8;
                *(v95 + 24) = v96;

                v541 = sub_226098C48();
                v524 = v541;
                v540 = sub_22609A078();
                v525 = v540;
                v527 = 17;
                v535 = swift_allocObject();
                v528 = v535;
                *(v535 + 16) = v526;
                v536 = swift_allocObject();
                v529 = v536;
                *(v536 + 16) = 8;
                v97 = swift_allocObject();
                v98 = v532;
                v533 = v97;
                *(v97 + 16) = sub_225F7B8B0;
                *(v97 + 24) = v98;
                v99 = swift_allocObject();
                v100 = v533;
                v539 = v99;
                v534 = v99;
                *(v99 + 16) = sub_225EF7B84;
                *(v99 + 24) = v100;
                v537 = sub_22609A4F8();
                v538 = v101;

                v102 = v535;
                v103 = v538;
                *v538 = sub_225EF7434;
                v103[1] = v102;

                v104 = v536;
                v105 = v538;
                v538[2] = sub_225EF7434;
                v105[3] = v104;

                v106 = v538;
                v107 = v539;
                v538[4] = sub_225EF7B90;
                v106[5] = v107;
                sub_225EF5418();

                if (os_log_type_enabled(v541, v540))
                {
                  v108 = v648;
                  v514 = sub_22609A188();
                  v511 = v514;
                  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                  v515 = sub_225EF5468(0);
                  v513 = v515;
                  v517 = 1;
                  v516 = sub_225EF5468(1);
                  v785 = v514;
                  v784 = v515;
                  v783 = v516;
                  v518 = &v785;
                  sub_225EF54BC(2, &v785);
                  sub_225EF54BC(v517, v518);
                  v781 = sub_225EF7434;
                  v782 = v528;
                  sub_225EF73E8(&v781, v518, &v784, &v783);
                  v519 = v108;
                  v520 = v528;
                  v521 = v529;
                  v522 = v534;
                  v523 = v108;
                  if (v108)
                  {
                    v506 = v520;
                    v507 = v521;
                    v508 = v522;
                    v509 = 0;
                    v495 = v522;
                    v494 = v521;

                    __break(1u);
                  }

                  else
                  {
                    v781 = sub_225EF7434;
                    v782 = v529;
                    sub_225EF73E8(&v781, &v785, &v784, &v783);
                    v501 = 0;
                    v502 = v528;
                    v503 = v529;
                    v504 = v534;
                    v505 = 0;
                    v781 = sub_225EF7B90;
                    v782 = v534;
                    sub_225EF73E8(&v781, &v785, &v784, &v783);
                    v496 = 0;
                    v497 = v528;
                    v498 = v529;
                    v499 = v534;
                    v500 = 0;
                    _os_log_impl(&dword_225EEB000, v524, v525, "FullPayloadCorrector::Dropping Range %s Correction REDACTED", v511, 0xCu);
                    sub_225EF7AF4(v513);
                    sub_225EF7AF4(v516);
                    sub_22609A168();

                    v510 = v496;
                  }
                }

                else
                {
                  v109 = v648;

                  v510 = v109;
                }

                v493 = v510;

                v714(v750, v741);

                v564 = v493;
              }

              else
              {
                v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786C70, &qword_2260A0560);
                v469 = sub_22609A4F8();
                v470 = v110;
                v482 = 7;
                v468 = 1;
                v111 = sub_226099AA8();
                v112 = v470;
                *v470 = v111;
                v112[1] = v113;
                v477 = 32;
                v481 = 32;
                v464 = v792;
                v465 = 0;
                swift_beginAccess();
                v466 = *v618;
                v467 = v618[1];
                swift_endAccess();
                v114 = type metadata accessor for _NSRange();
                v115 = v466;
                v116 = v467;
                v117 = v470;
                v470[5] = v114;
                v117[2] = v115;
                v117[3] = v116;
                v118 = sub_226099AA8();
                v119 = v470;
                v470[6] = v118;
                v119[7] = v120;
                sub_2260998E8();
                v121 = v616;
                v122 = v470;
                v123 = v615;
                v472 = MEMORY[0x277D837D0];
                v470[11] = MEMORY[0x277D837D0];
                v122[8] = v121;
                v122[9] = v123;
                sub_225EF5418();
                v474 = sub_2260998A8();
                v473 = v474;
                v791 = v474;
                sub_2260998E8();
                v790[1] = v474;
                sub_226099CE8();
                v124 = v749;
                v125 = sub_225F4C7E0();
                v758(v124, v125, v741);

                v126 = swift_allocObject();
                v127 = v617;
                v483 = v126;
                *(v126 + 16) = sub_225F7B8A8;
                *(v126 + 24) = v127;

                v492 = sub_226098C48();
                v475 = v492;
                v491 = sub_22609A078();
                v476 = v491;
                v478 = 17;
                v486 = swift_allocObject();
                v479 = v486;
                *(v486 + 16) = v477;
                v487 = swift_allocObject();
                v480 = v487;
                *(v487 + 16) = 8;
                v128 = swift_allocObject();
                v129 = v483;
                v484 = v128;
                *(v128 + 16) = sub_225F7B8B0;
                *(v128 + 24) = v129;
                v130 = swift_allocObject();
                v131 = v484;
                v490 = v130;
                v485 = v130;
                *(v130 + 16) = sub_225EF7B84;
                *(v130 + 24) = v131;
                v488 = sub_22609A4F8();
                v489 = v132;

                v133 = v486;
                v134 = v489;
                *v489 = sub_225EF7434;
                v134[1] = v133;

                v135 = v487;
                v136 = v489;
                v489[2] = sub_225EF7434;
                v136[3] = v135;

                v137 = v489;
                v138 = v490;
                v489[4] = sub_225EF7B90;
                v137[5] = v138;
                sub_225EF5418();

                if (os_log_type_enabled(v492, v491))
                {
                  v139 = v648;
                  v454 = sub_22609A188();
                  v451 = v454;
                  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                  v455 = sub_225EF5468(0);
                  v453 = v455;
                  v457 = 1;
                  v456 = sub_225EF5468(1);
                  v790[0] = v454;
                  v789 = v455;
                  v788 = v456;
                  v458 = v790;
                  sub_225EF54BC(2, v790);
                  sub_225EF54BC(v457, v458);
                  v786 = sub_225EF7434;
                  v787 = v479;
                  sub_225EF73E8(&v786, v458, &v789, &v788);
                  v459 = v139;
                  v460 = v479;
                  v461 = v480;
                  v462 = v485;
                  v463 = v139;
                  if (v139)
                  {
                    v446 = v460;
                    v447 = v461;
                    v448 = v462;
                    v449 = 0;
                    v435 = v462;
                    v434 = v461;

                    __break(1u);
                  }

                  else
                  {
                    v786 = sub_225EF7434;
                    v787 = v480;
                    sub_225EF73E8(&v786, v790, &v789, &v788);
                    v441 = 0;
                    v442 = v479;
                    v443 = v480;
                    v444 = v485;
                    v445 = 0;
                    v786 = sub_225EF7B90;
                    v787 = v485;
                    sub_225EF73E8(&v786, v790, &v789, &v788);
                    v436 = 0;
                    v437 = v479;
                    v438 = v480;
                    v439 = v485;
                    v440 = 0;
                    _os_log_impl(&dword_225EEB000, v475, v476, "FullPayloadCorrector::Detail NSRange: %s Correction: REDACTED", v451, 0xCu);
                    sub_225EF7AF4(v453);
                    sub_225EF7AF4(v456);
                    sub_22609A168();

                    v450 = v436;
                  }
                }

                else
                {
                  v140 = v648;

                  v450 = v140;
                }

                v433 = v450;

                v714(v749, v741);

                v564 = v433;
              }
            }

            else
            {
              v70 = v751;
              v71 = sub_225F4C7E0();
              v758(v70, v71, v741);

              v611 = sub_226098C48();
              v595 = v611;
              v610 = sub_22609A078();
              v596 = v610;
              v597 = 17;
              v602 = 7;
              v605 = swift_allocObject();
              v598 = v605;
              v599 = 32;
              *(v605 + 16) = 32;
              v72 = swift_allocObject();
              v73 = v599;
              v606 = v72;
              v600 = v72;
              *(v72 + 16) = 8;
              v601 = v73;
              v74 = swift_allocObject();
              v75 = v617;
              v603 = v74;
              *(v74 + 16) = sub_225F7B83C;
              *(v74 + 24) = v75;
              v76 = swift_allocObject();
              v77 = v603;
              v609 = v76;
              v604 = v76;
              *(v76 + 16) = sub_225EF7B84;
              *(v76 + 24) = v77;
              v607 = sub_22609A4F8();
              v608 = v78;

              v79 = v605;
              v80 = v608;
              *v608 = sub_225EF7434;
              v80[1] = v79;

              v81 = v606;
              v82 = v608;
              v608[2] = sub_225EF7434;
              v82[3] = v81;

              v83 = v608;
              v84 = v609;
              v608[4] = sub_225EF7B90;
              v83[5] = v84;
              sub_225EF5418();

              if (os_log_type_enabled(v611, v610))
              {
                v85 = v648;
                v585 = sub_22609A188();
                v582 = v585;
                v583 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                v586 = sub_225EF5468(0);
                v584 = v586;
                v588 = 1;
                v587 = sub_225EF5468(1);
                v780 = v585;
                v779 = v586;
                v778 = v587;
                v589 = &v780;
                sub_225EF54BC(2, &v780);
                sub_225EF54BC(v588, v589);
                v776 = sub_225EF7434;
                v777 = v598;
                sub_225EF73E8(&v776, v589, &v779, &v778);
                v590 = v85;
                v591 = v598;
                v592 = v600;
                v593 = v604;
                v594 = v85;
                if (v85)
                {
                  v577 = v591;
                  v578 = v592;
                  v579 = v593;
                  v580 = 0;
                  v566 = v593;
                  v565 = v592;

                  __break(1u);
                }

                else
                {
                  v776 = sub_225EF7434;
                  v777 = v600;
                  sub_225EF73E8(&v776, &v780, &v779, &v778);
                  v572 = 0;
                  v573 = v598;
                  v574 = v600;
                  v575 = v604;
                  v576 = 0;
                  v776 = sub_225EF7B90;
                  v777 = v604;
                  sub_225EF73E8(&v776, &v780, &v779, &v778);
                  v567 = 0;
                  v568 = v598;
                  v569 = v600;
                  v570 = v604;
                  v571 = 0;
                  _os_log_impl(&dword_225EEB000, v595, v596, "FullPayloadCorrector::Dropping Range %s Correction REDACTED", v582, 0xCu);
                  sub_225EF7AF4(v584);
                  sub_225EF7AF4(v587);
                  sub_22609A168();

                  v581 = v567;
                }
              }

              else
              {
                v86 = v648;

                v581 = v86;
              }

              v563 = v581;

              v714(v751, v741);

              v564 = v563;
            }
          }

LABEL_89:
          ;
        }

LABEL_88:

        v564 = v648;
        goto LABEL_89;
      }
    }

    v384 = v655;
LABEL_94:
    ;
  }

  sub_225EFE6E8(v910);
  v382 = v911;
  sub_2260998E8();
  v383 = sub_226099CD8();

  if (!v383)
  {
    sub_2260998E8();
    v377 = v740;
    sub_225EFE6E8(&v911);
    sub_225EFE6BC(&v912);
    v378 = v739;
    v379 = v377;
    v380 = 0;
    v381 = v710;
    return v378;
  }

  v905 = 0;
  v904 = 0;
  v374 = v911;
  sub_2260998E8();
  v375 = sub_226099CD8();

  result = v375;
  v158 = __OFSUB__(v375, 1);
  v376 = v375 - 1;
  if (!v158)
  {
    if (v376 < 0)
    {
      sub_22609A3B8();
      __break(1u);
    }

    v898 = 0;
    v899 = v376;
    v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786398, &qword_2260A0520);
    v366 = v367;
    v368 = sub_225F51430();
    sub_22609A028();
    v369 = 0;
    v370 = 0;
    v371 = 0;
    v372 = 0;
    for (k = v710; ; k = v332)
    {
      v357 = k;
      v358 = v372;
      v359 = v371;
      v362 = v370;
      v361 = v369;
      v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863B0, &qword_2260A0528);
      sub_22609A388();
      result = v362;
      v363 = v896[2];
      v364 = v361;
      v365 = v362;
      if (v897)
      {
        break;
      }

      v356 = v363;
      v354 = v363;
      v868 = v363;
      v159 = __OFADD__(v363, 1);
      v355 = v356 + 1;
      if (v159)
      {
        goto LABEL_186;
      }

      v351 = v911;
      sub_2260998E8();
      v352 = sub_226099CD8();

      result = v352;
      v160 = __OFSUB__(v352, 1);
      v353 = v352 - 1;
      if (v160)
      {
        goto LABEL_187;
      }

      v349 = v361;
      v350 = v362;
      if (v353 < v355)
      {
        v346 = v349;
        v347 = v350;
        v348 = v357;
        goto LABEL_145;
      }

      v342 = sub_226099AA8();
      v343 = v161;
      sub_226099D38();
      v344 = v866[4];
      v865[0] = v342;
      v865[1] = v343;
      v345 = v865;
      sub_226099938();
      sub_225EFE6BC(v345);
      if (!v866[3])
      {
        sub_22609A3B8();
        __break(1u);
      }

      v338 = v867;
      sub_225EF9790(v866, v867);
      v339 = type metadata accessor for _NSRange();
      swift_dynamicCast();
      v340 = v864;
      v863 = v864;

      v162 = __OFADD__(v354, 1);
      v341 = v354 + 1;
      if (v162)
      {
        goto LABEL_188;
      }

      v335 = v911;
      sub_2260998E8();
      v336 = sub_226099CD8();

      result = v336;
      v163 = __OFSUB__(v336, 1);
      v337 = v336 - 1;
      if (v163)
      {
        goto LABEL_189;
      }

      if (v337 < v341)
      {
        sub_22609A3B8();
        __break(1u);
      }

      v857 = v341;
      v858 = v337;
      sub_22609A028();
      for (m = v357; ; m = v332)
      {
        v332 = m;
        sub_22609A388();
        v333 = v855;
        if (v856)
        {
          break;
        }

        v331 = v333;
        v326 = v333;
        v854 = v333;
        v327 = sub_226099AA8();
        v328 = v164;
        sub_226099D38();
        v329 = v852[4];
        v851[0] = v327;
        v851[1] = v328;
        v330 = v851;
        sub_226099938();
        sub_225EFE6BC(v330);
        if (!v852[3])
        {
          sub_22609A3B8();
          __break(1u);
        }

        v323 = v853;
        sub_225EF9790(v852, v853);
        swift_dynamicCast();
        v325 = v850;
        location = v850.location;
        v849 = v850;

        v848 = v340;
        v847 = v325;
        v846 = NSIntersectionRange(v340, v325);
        if (v846.length >= 1)
        {
          v905 = 1;
          v320 = v361;
          v321 = v359;
          v322 = 1;
          goto LABEL_138;
        }

        if (v340.location >= location)
        {
          v904 = 1;
          v320 = 1;
          v321 = 1;
          v322 = v358;
          goto LABEL_138;
        }
      }

      v320 = v361;
      v321 = v359;
      v322 = v358;
LABEL_138:
      v317 = v322;
      v318 = v321;
      v319 = v320;
      if (v322)
      {
        v315 = 1;
        v316 = v319;
      }

      else
      {
        v315 = v318;
        v316 = v318;
      }

      v312 = v316;
      v313 = v316;
      v314 = v317;
      if (v315)
      {
        v346 = v313;
        v347 = v314;
        v348 = v332;
        goto LABEL_145;
      }

      v369 = v312;
      v370 = v317;
      v371 = v318;
      v372 = v317;
    }

    v346 = v364;
    v347 = v365;
    v348 = v357;
LABEL_145:
    v309 = v348;
    v310 = v347;
    v311 = v346;
    if (v347)
    {
      v308 = 1;
    }

    else
    {
      v308 = v311;
    }

    if (v308)
    {
      if (v310)
      {
        v165 = v747;
        v166 = sub_225F4C7E0();
        v758(v165, v166, v741);
        v306 = sub_226098C48();
        v303 = v306;
        v305 = sub_22609A078();
        v304 = v305;
        v307 = sub_22609A4F8();
        if (os_log_type_enabled(v306, v305))
        {
          v167 = v309;
          v294 = sub_22609A188();
          v290 = v294;
          v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v292 = 0;
          v295 = sub_225EF5468(0);
          v293 = v295;
          v296 = sub_225EF5468(v292);
          v872[0] = v294;
          v871 = v295;
          v870 = v296;
          v297 = 0;
          v298 = v872;
          sub_225EF54BC(0, v872);
          sub_225EF54BC(v297, v298);
          v869 = v307;
          v299 = &v196;
          MEMORY[0x28223BE20](&v196, v168, v169, v170);
          v300 = &v196 - 6;
          v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v302 = v167;
          if (v167)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v303, v304, "Output ranges are intersecting", v290, 2u);
            v288 = 0;
            sub_225EF7AF4(v293);
            sub_225EF7AF4(v296);
            sub_22609A168();

            v289 = v302;
          }
        }

        else
        {

          v289 = v309;
        }

        v286 = v289;

        v714(v747, v741);
        v287 = v286;
      }

      else
      {
        v171 = v746;
        v172 = sub_225F4C7E0();
        v758(v171, v172, v741);
        v284 = sub_226098C48();
        v281 = v284;
        v283 = sub_22609A078();
        v282 = v283;
        v285 = sub_22609A4F8();
        if (os_log_type_enabled(v284, v283))
        {
          v173 = v309;
          v272 = sub_22609A188();
          v268 = v272;
          v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v270 = 0;
          v273 = sub_225EF5468(0);
          v271 = v273;
          v274 = sub_225EF5468(v270);
          v873[0] = v272;
          v872[3] = v273;
          v872[2] = v274;
          v275 = 0;
          v276 = v873;
          sub_225EF54BC(0, v873);
          sub_225EF54BC(v275, v276);
          v872[1] = v285;
          v277 = &v196;
          MEMORY[0x28223BE20](&v196, v174, v175, v176);
          v278 = &v196 - 6;
          v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v280 = v173;
          if (v173)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v281, v282, "Output ranges are not sorted", v268, 2u);
            v266 = 0;
            sub_225EF7AF4(v271);
            sub_225EF7AF4(v274);
            sub_22609A168();

            v267 = v280;
          }
        }

        else
        {

          v267 = v309;
        }

        v265 = v267;

        v714(v746, v741);
        v287 = v265;
      }

      v264 = v287;
      sub_225F7B6F4();
      v262 = 0;
      v177 = swift_allocError();
      *v178 = 3;
      v263 = v177;
      sub_225EFE6E8(&v911);
      sub_225EFE6BC(&v912);
      v378 = v263;
      v379 = v262;
      v380 = 1;
      v381 = v264;
    }

    else
    {
      v259 = v911;
      sub_2260998E8();
      v894 = v259;
      v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862D0, &qword_2260A0530);
      v179 = sub_225F514D4();
      MEMORY[0x22AA72AD0](&v895, v260, v179);
      v893 = v895;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7863C8, &qword_2260A0538);
      sub_22609A418();
      for (n = v309; ; n = v221)
      {
        v257 = n;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863D0, &unk_2260A0540);
        sub_22609A428();
        v258 = v892;
        if (!v892)
        {
          break;
        }

        v256 = v258;
        v254 = v258;
        v887 = v258;
        v884[0] = sub_226099AA8();
        v884[1] = v180;
        v255 = v884;
        sub_226099938();
        sub_225EFE6BC(v255);
        if (!v885[3])
        {
          sub_22609A3B8();
          __break(1u);
        }

        v251 = v886;
        sub_225EF9790(v885, v886);
        type metadata accessor for _NSRange();
        swift_dynamicCast();
        v252 = sub_22609A058();
        v253 = v181;
        if (v182)
        {
          sub_22609A3B8();
          __break(1u);
        }

        else
        {
          v249 = v252;
          v250 = v253;
        }

        v246 = v250;
        v247 = v249;
        v882 = v249;
        v883 = v250;
        v879[0] = sub_226099AA8();
        v879[1] = v183;
        v248 = v879;
        sub_226099938();
        sub_225EFE6BC(v248);
        if (!v880[3])
        {
          sub_22609A3B8();
          __break(1u);
        }

        v238 = v881;
        sub_225EF9790(v880, v881);
        v240 = MEMORY[0x277D837D0];
        swift_dynamicCast();
        v239 = v878;
        v875 = v877;
        v876 = v878;
        v874[1] = v877;
        v874[2] = v878;
        sub_225F2D16C();
        sub_226099A78();
        v184 = v745;
        v185 = sub_225F4C7E0();
        v758(v184, v185, v741);
        v244 = sub_226098C48();
        v241 = v244;
        v243 = sub_22609A078();
        v242 = v243;
        v245 = sub_22609A4F8();
        if (os_log_type_enabled(v244, v243))
        {
          v186 = v257;
          v228 = sub_22609A188();
          v224 = v228;
          v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v226 = 0;
          v229 = sub_225EF5468(0);
          v227 = v229;
          v230 = sub_225EF5468(v226);
          v874[0] = v228;
          v873[3] = v229;
          v873[2] = v230;
          v231 = 0;
          v232 = v874;
          sub_225EF54BC(0, v874);
          sub_225EF54BC(v231, v232);
          v873[1] = v245;
          v235 = &v196;
          MEMORY[0x28223BE20](&v196, v187, v188, v189);
          v233 = &v196 - 6;
          v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v236 = v186;
          v237 = v235;
          if (v186)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v241, v242, "FullPayloadCorrector::Output REDACTED", v224, 2u);
            v222 = 0;
            sub_225EF7AF4(v227);
            sub_225EF7AF4(v230);
            sub_22609A168();

            v223 = v236;
          }
        }

        else
        {

          v223 = v257;
        }

        v221 = v223;

        v714(v745, v741);
      }

      v190 = v744;
      sub_225EFE6E8(v896);
      v191 = sub_225F4C7E0();
      v758(v190, v191, v741);
      v219 = sub_226098C48();
      v216 = v219;
      v218 = sub_22609A078();
      v217 = v218;
      v220 = sub_22609A4F8();
      if (os_log_type_enabled(v219, v218))
      {
        v192 = v257;
        v207 = sub_22609A188();
        v203 = v207;
        v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v205 = 0;
        v208 = sub_225EF5468(0);
        v206 = v208;
        v209 = sub_225EF5468(v205);
        v891 = v207;
        v890 = v208;
        v889 = v209;
        v210 = 0;
        v211 = &v891;
        sub_225EF54BC(0, &v891);
        sub_225EF54BC(v210, v211);
        v888 = v220;
        v212 = &v196;
        MEMORY[0x28223BE20](&v196, v193, v194, v195);
        v213 = &v196 - 6;
        v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v215 = v192;
        if (v192)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v216, v217, "FullPayloadCorrector::Final Output REDACTED", v203, 2u);
          v201 = 0;
          sub_225EF7AF4(v206);
          sub_225EF7AF4(v209);
          sub_22609A168();

          v202 = v215;
        }
      }

      else
      {

        v202 = v257;
      }

      v200 = v202;

      v714(v744, v741);
      v198 = v912;
      v197 = v913;
      sub_2260998E8();
      v199 = v197;
      sub_225EFE6E8(&v911);
      sub_225EFE6BC(&v912);
      v378 = v198;
      v379 = v199;
      v380 = 0;
      v381 = v200;
    }

    return v378;
  }

  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
  return result;
}

unint64_t sub_225F513A8()
{
  v2 = qword_27D786388;
  if (!qword_27D786388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786380, &qword_2260A0510);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F51430()
{
  v2 = qword_27D7863A0;
  if (!qword_27D7863A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786398, &qword_2260A0520);
    sub_225EF94B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7863A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F514D4()
{
  v2 = qword_27D7863C0;
  if (!qword_27D7863C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7862D0, &qword_2260A0530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7863C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F5155C(NSRange a1)
{
  v2 = NSStringFromRange(a1);
  v3 = sub_226099A08();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_225F515C0(NSRange *a1)
{
  swift_beginAccess();
  v3 = a1[1];
  swift_endAccess();
  v4 = NSStringFromRange(v3);
  v5 = sub_226099A08();
  MEMORY[0x277D82BD8](v4);
  return v5;
}

uint64_t sub_225F516B0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 16);
  return swift_endAccess();
}

uint64_t sub_225F51708(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v26 = 0;
  v27[5] = a1;
  v27[6] = a2;
  v2 = sub_226099A48();
  v22 = v3;
  v27[3] = v2;
  v27[4] = v3;
  v27[1] = v2;
  v27[2] = v3;
  v17 = 0;
  v14 = sub_2260987C8();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v4, v5, v6);
  v15 = &v10 - v11;
  sub_2260987B8();
  sub_225F2CF00();
  v16 = sub_22609A1D8();
  (*(v12 + 8))(v15, v14);
  v21 = v27;
  v27[0] = v16;
  v19 = sub_226099AA8();
  v20 = v7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3F050();
  v23 = sub_2260999C8();
  v24 = v8;

  sub_225EFE6E8(v21);
  v25 = v23;
  v26 = v24;

  return v23;
}

uint64_t sub_225F518C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[77] = a6;
  v6[76] = a5;
  v6[75] = a4;
  v6[74] = a3;
  v6[73] = a2;
  v6[72] = a1;
  v6[41] = v6;
  v6[27] = 0;
  v6[28] = 0;
  v6[29] = 0;
  v6[30] = 0;
  v6[31] = 0;
  v6[32] = 0;
  v6[42] = 0;
  v6[21] = 0;
  v6[22] = 0;
  v6[23] = 0;
  v6[43] = 0;
  v6[44] = 0;
  v6[52] = 0;
  v6[53] = 0;
  v6[24] = 0;
  v6[25] = 0;
  v6[26] = 0;
  v6[61] = 0;
  v7 = sub_226098C58();
  v6[78] = v7;
  v10 = *(v7 - 8);
  v6[79] = v10;
  v11 = *(v10 + 64);
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  v6[27] = a1;
  v6[28] = a2;
  v6[29] = a3;
  v6[30] = a4;
  v6[31] = a5;
  v6[32] = a6;
  v8 = v6[41];

  return MEMORY[0x2822009F8](sub_225F51A98, 0, 0);
}

uint64_t sub_225F51A98()
{
  v33 = v0[75];
  v1 = v0[73];
  v2 = v0[72];
  v0[41] = v0;
  v34 = sub_226099B18();
  sub_2260998E8();
  if (v34)
  {
    v3 = *(v32 + 600);

LABEL_4:
    v24 = *(v32 + 600);
    v25 = *(v32 + 592);
    v22 = *(v32 + 584);
    v23 = *(v32 + 576);
    v28 = sub_22609A4F8();
    v29 = sub_22609A4F8();
    *(v32 + 560) = sub_226099AD8();
    *(v32 + 568) = sub_226099AD8();
    sub_22609A528();
    v30 = *(v32 + 552);
    v7 = *(v32 + 656);
    v26 = *(v32 + 648);
    v27 = *(v32 + 640);

    v8 = *(*(v32 + 328) + 8);
    v9 = *(v32 + 328);

    return v8(v28, v29, v30);
  }

  v4 = *(v32 + 600);
  v5 = *(v32 + 592);
  v31 = sub_226099B18();
  v6 = *(v32 + 600);

  if (v31)
  {
    goto LABEL_4;
  }

  v16 = *(v32 + 616);
  v15 = *(v32 + 608);
  v12 = *(v32 + 600);
  v11 = *(v32 + 592);
  v14 = *(v32 + 584);
  v13 = *(v32 + 576);
  sub_225F7BA70();
  v21 = sub_225F26174();
  *(v32 + 664) = v21;
  *(v32 + 336) = v21;
  sub_2260998E8();
  v18 = sub_2260999F8();
  *(v32 + 672) = v18;

  sub_2260998E8();
  v19 = sub_2260999F8();
  *(v32 + 680) = v19;

  sub_2260998E8();
  v20 = sub_2260999F8();
  *(v32 + 688) = v20;

  *(v32 + 16) = *(v32 + 328);
  *(v32 + 56) = v32 + 144;
  *(v32 + 24) = sub_225F51F14;
  v17 = swift_continuation_init();
  *(v32 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786450, &unk_2260A0580);
  *(v32 + 112) = v17;
  *(v32 + 80) = MEMORY[0x277D85DD0];
  *(v32 + 88) = 1107296256;
  *(v32 + 92) = 0;
  *(v32 + 96) = sub_225F537A0;
  *(v32 + 104) = &block_descriptor_1;
  [v21 editAlignmentWithRefText:v18 hypText:v19 placeholderSymbol:v20 caseInsensitive:1 removeWordSense:0 completion:?];

  return MEMORY[0x282200938](v32 + 16);
}

uint64_t sub_225F51F14()
{
  v3 = *v0;
  *(v3 + 328) = *v0;
  v1 = *(v3 + 328);

  return MEMORY[0x2822009F8](sub_225F52010, 0, 0);
}

uint64_t sub_225F52010()
{
  v1 = v0[86];
  v96 = v0[85];
  v97 = v0[84];
  v0[41] = v0;
  v98 = v0[18];
  v99 = v0[19];
  v100 = v0[20];
  v0[21] = v98;
  v0[22] = v99;
  v0[23] = v100;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BE0](v98);
  sub_2260998E8();
  sub_2260998E8();
  if (v100)
  {
    v93 = sub_22609A458();

    MEMORY[0x277D82BD8](v98);
    v94 = v93;
  }

  else
  {

    MEMORY[0x277D82BD8](v98);
    v94 = 0;
  }

  *(v95 + 344) = v94;
  MEMORY[0x277D82BE0](v98);
  sub_2260998E8();
  sub_2260998E8();
  if (v99)
  {
    v91 = sub_22609A458();

    MEMORY[0x277D82BD8](v98);
    v92 = v91;
  }

  else
  {

    MEMORY[0x277D82BD8](v98);
    v92 = 0;
  }

  *(v95 + 352) = v92;
  sub_2260998E8();
  if (!v94)
  {
    goto LABEL_27;
  }

  *(v95 + 416) = v94;
  sub_2260998E8();
  if (!v92)
  {

LABEL_27:
    v7 = *(v95 + 640);
    v30 = *(v95 + 624);
    v29 = *(v95 + 632);
    v8 = sub_225F4C7E0();
    (*(v29 + 16))(v7, v8, v30);
    v32 = sub_226098C48();
    v31 = sub_22609A098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v33 = sub_22609A4F8();
    if (os_log_type_enabled(v32, v31))
    {
      v25 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v26 = sub_225EF5468(0);
      v27 = sub_225EF5468(0);
      *(v95 + 384) = v25;
      *(v95 + 392) = v26;
      *(v95 + 400) = v27;
      sub_225EF54BC(0, (v95 + 384));
      sub_225EF54BC(0, (v95 + 384));
      *(v95 + 408) = v33;
      v28 = swift_task_alloc();
      v28[2] = v95 + 384;
      v28[3] = v95 + 392;
      v28[4] = v95 + 400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v32, v31, "Edit alignment output corrupted", v25, 2u);
      sub_225EF7AF4(v26);
      sub_225EF7AF4(v27);
      sub_22609A168();
    }

    v21 = *(v95 + 664);
    v15 = *(v95 + 640);
    v16 = *(v95 + 624);
    v19 = *(v95 + 600);
    v20 = *(v95 + 592);
    v17 = *(v95 + 584);
    v18 = *(v95 + 576);
    v14 = *(v95 + 632);
    MEMORY[0x277D82BD8](v32);
    (*(v14 + 8))(v15, v16);
    v22 = sub_22609A4F8();
    v23 = sub_22609A4F8();
    *(v95 + 368) = sub_226099AD8();
    *(v95 + 376) = sub_226099AD8();
    sub_22609A528();
    v24 = *(v95 + 360);

    MEMORY[0x277D82BD8](v98);

    MEMORY[0x277D82BD8](v21);
    v67 = v22;
    v68 = v23;
    v69 = v24;
    goto LABEL_32;
  }

  *(v95 + 424) = v92;
  v90 = sub_226099CD8();
  if (v90 == sub_226099CD8())
  {
    v89 = sub_226099CD8();
    if (v89 < 0)
    {
      return sub_22609A3B8();
    }

    *(v95 + 264) = 0;
    *(v95 + 272) = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786260, &qword_2260A02C8);
    sub_225F7BB14();
    sub_22609A028();
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786468, &unk_2260A0590);
      sub_22609A388();
      if (*(v95 + 320))
      {
        v54 = *(v95 + 664);
        MEMORY[0x277D82BE0](v98);
        sub_2260998E8();
        sub_2260998E8();
        v55 = [v98 integerValue];
        MEMORY[0x277D82BD8](v98);

        MEMORY[0x277D82BD8](v98);

        MEMORY[0x277D82BD8](v54);
        v67 = v94;
        v68 = v92;
        v69 = v55;
        goto LABEL_32;
      }

      v87 = *(v95 + 616);
      v85 = *(v95 + 608);
      *(v95 + 488) = *(v95 + 312);
      sub_226099D38();
      v86 = *(v95 + 288);
      v88 = MEMORY[0x22AA72BD0](*(v95 + 280));

      sub_2260998E8();
      sub_2260998E8();
      if (v88)
      {
        v81 = *(v95 + 616);
        v80 = *(v95 + 608);
        sub_226099D38();
        v82 = *(v95 + 304);
        v83 = MEMORY[0x22AA72BD0](*(v95 + 296));

        v84 = v83;
      }

      else
      {
        v84 = 0;
      }

      v79 = *(v95 + 616);
    }

    while ((v84 & 1) == 0);
    v3 = *(v95 + 656);
    v75 = *(v95 + 624);
    v74 = *(v95 + 632);
    v4 = sub_225F4C7E0();
    (*(v74 + 16))(v3, v4, v75);
    oslog = sub_226098C48();
    v76 = sub_22609A098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v78 = sub_22609A4F8();
    if (os_log_type_enabled(oslog, v76))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v71 = sub_225EF5468(0);
      v72 = sub_225EF5468(0);
      *(v95 + 520) = buf;
      *(v95 + 528) = v71;
      *(v95 + 536) = v72;
      sub_225EF54BC(0, (v95 + 520));
      sub_225EF54BC(0, (v95 + 520));
      *(v95 + 544) = v78;
      v73 = swift_task_alloc();
      v73[2] = v95 + 520;
      v73[3] = v95 + 528;
      v73[4] = v95 + 536;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, oslog, v76, "Edit alignment has both elements as placeholders", buf, 2u);
      sub_225EF7AF4(v71);
      sub_225EF7AF4(v72);
      sub_22609A168();
    }

    v63 = *(v95 + 664);
    v57 = *(v95 + 656);
    v58 = *(v95 + 624);
    v61 = *(v95 + 600);
    v62 = *(v95 + 592);
    v59 = *(v95 + 584);
    v60 = *(v95 + 576);
    v56 = *(v95 + 632);
    MEMORY[0x277D82BD8](oslog);
    (*(v56 + 8))(v57, v58);
    v64 = sub_22609A4F8();
    v65 = sub_22609A4F8();
    *(v95 + 504) = sub_226099AD8();
    *(v95 + 512) = sub_226099AD8();
    sub_22609A528();
    v66 = *(v95 + 496);

    MEMORY[0x277D82BD8](v98);

    MEMORY[0x277D82BD8](v63);
    v67 = v64;
    v68 = v65;
    v69 = v66;
  }

  else
  {
    v5 = *(v95 + 648);
    v50 = *(v95 + 624);
    v49 = *(v95 + 632);
    v6 = sub_225F4C7E0();
    (*(v49 + 16))(v5, v6, v50);
    log = sub_226098C48();
    v51 = sub_22609A098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v53 = sub_22609A4F8();
    if (os_log_type_enabled(log, v51))
    {
      v45 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v46 = sub_225EF5468(0);
      v47 = sub_225EF5468(0);
      *(v95 + 456) = v45;
      *(v95 + 464) = v46;
      *(v95 + 472) = v47;
      sub_225EF54BC(0, (v95 + 456));
      sub_225EF54BC(0, (v95 + 456));
      *(v95 + 480) = v53;
      v48 = swift_task_alloc();
      v48[2] = v95 + 456;
      v48[3] = v95 + 464;
      v48[4] = v95 + 472;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, log, v51, "Edit alignment output not equal in size", v45, 2u);
      sub_225EF7AF4(v46);
      sub_225EF7AF4(v47);
      sub_22609A168();
    }

    v41 = *(v95 + 664);
    v35 = *(v95 + 648);
    v36 = *(v95 + 624);
    v39 = *(v95 + 600);
    v40 = *(v95 + 592);
    v37 = *(v95 + 584);
    v38 = *(v95 + 576);
    v34 = *(v95 + 632);
    MEMORY[0x277D82BD8](log);
    (*(v34 + 8))(v35, v36);
    v42 = sub_22609A4F8();
    v43 = sub_22609A4F8();
    *(v95 + 440) = sub_226099AD8();
    *(v95 + 448) = sub_226099AD8();
    sub_22609A528();
    v44 = *(v95 + 432);

    MEMORY[0x277D82BD8](v98);

    MEMORY[0x277D82BD8](v41);
    v67 = v42;
    v68 = v43;
    v69 = v44;
  }

LABEL_32:
  v9 = *(v95 + 656);
  v12 = *(v95 + 648);
  v13 = *(v95 + 640);

  v10 = *(*(v95 + 328) + 8);
  v11 = *(v95 + 328);

  return v10(v67, v68, v69);
}