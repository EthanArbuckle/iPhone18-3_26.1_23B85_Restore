void *sub_20C437EDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v335 = a2;
  v2 = *(a1 + 8);
  v327 = *a1;
  *&v328 = v2;
  v3 = *(a1 + 24);
  *(&v328 + 1) = *(a1 + 16);
  v329 = v3;
  v330 = *(a1 + 32);
  v4 = *(a1 + 48);
  *&v331 = *(a1 + 40);
  *(&v331 + 1) = v4;
  v332 = a1;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB830, &qword_20C464B00);
  v5 = *(*(v337 - 8) + 64);
  MEMORY[0x28223BE20](v337);
  v338 = &v309 - v6;
  v357 = sub_20C45FEB0();
  v340 = *(v357 - 8);
  v7 = *(v340 + 64);
  v8 = MEMORY[0x28223BE20](v357);
  v339 = &v309 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v309 - v10;
  v336 = sub_20C45FEC0();
  v12 = *(*(v336 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v336);
  v318 = &v309 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v316 = &v309 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v317 = &v309 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v315 = &v309 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v309 = &v309 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v311 = &v309 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v310 = &v309 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v312 = &v309 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v313 = &v309 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v334 = &v309 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v314 = &v309 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v324 = (&v309 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v325 = (&v309 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v322 = &v309 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v323 = (&v309 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v321 = (&v309 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v320 = (&v309 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v326 = &v309 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v319 = &v309 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v309 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v309 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v309 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v309 - v60;
  sub_20C45FF70();
  sub_20C45FE90();
  v62 = MEMORY[0x277D0A8D0];
  v333 = v61;
  sub_20C43AA94(v61, MEMORY[0x277D0A8D0]);
  sub_20C45FF80();
  v63 = v339;
  sub_20C45FE90();
  sub_20C43AA94(v59, v62);
  v64 = sub_20C45FEA0();
  v65 = *(v340 + 8);
  v66 = v63;
  v67 = v357;
  v65(v66, v357);
  v65(v11, v67);
  if (v64)
  {
    sub_20C45FF70();
    sub_20C45FF80();
    v68 = v338;
    v69 = (v338 + *(v337 + 48));
    v70 = MEMORY[0x277D0A8D0];
    sub_20C43AA2C(v56, v338, MEMORY[0x277D0A8D0]);
    sub_20C43AA2C(v53, v69, v70);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v72 = v68;
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v73 = v319;
          sub_20C43A9C4(v68, v319, MEMORY[0x277D0A8D0]);
          v74 = *v73;
          v75 = swift_getEnumCaseMultiPayload();
          if (v75)
          {
            if (v75 == 4)
            {
              v76 = v314;
              sub_20C43A9C4(v69, v314, MEMORY[0x277D0A8D0]);
              v77 = sub_20C45FF10();
              v78 = *(v77 - 8);
              if ((*(v78 + 88))(v76, v77) == *MEMORY[0x277D0A8F0])
              {
                v79 = sub_20C45FE10();
                MEMORY[0x28223BE20](v79);
                *(&v309 - 2) = &type metadata for ArtworkPredicateInput;
                *(&v309 - 1) = sub_20C43C484();
                KeyPath = swift_getKeyPath();
                v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB870, &qword_20C464BD0);
                v82 = v335;
                v335[3] = v81;
                v82[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
                v83 = swift_allocObject();
                v85 = v327;
                v84 = v328;
                *&v346 = KeyPath;
                *(&v346 + 1) = v327;
                v87 = *(&v328 + 1);
                v86 = v329;
                v347 = v328;
                *&v348 = v329;
                v88 = v330;
                BYTE8(v348) = v330;
                v89 = *(&v331 + 1);
                v90 = v331;
                v349 = v331;
                v91 = v328;
                *(v83 + 24) = v346;
                *(v83 + 40) = v91;
                v92 = v349;
                *(v83 + 56) = v348;
                *v82 = v83;
                *(v83 + 16) = v79;
                *(v83 + 72) = v92;
                v350 = KeyPath;
LABEL_89:
                v351 = v85;
                v352 = v84;
                v353 = v87;
                v354 = v86;
                v355 = v88;
                *&v356 = v90;
                *(&v356 + 1) = v89;
                sub_20C43C4D8(v332, &v342);
                v182 = &qword_27C7BB810;
                v183 = &qword_20C464AB0;
                goto LABEL_90;
              }

              (*(v78 + 8))(v76, v77);
            }

            goto LABEL_67;
          }

          v184 = v333;
          sub_20C43A9C4(v69, v333, MEMORY[0x277D0A8D0]);
          LOBYTE(v184) = *v184;
          v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8A8, &qword_20C464C08);
          v186 = v335;
          v335[3] = v185;
          v186[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          *v186 = v74;
          *(v186 + 1) = v184;
LABEL_92:
          v267 = MEMORY[0x277D0A8D0];
          sub_20C43AA94(v69, MEMORY[0x277D0A8D0]);
          v116 = v72;
          v115 = v267;
          return sub_20C43AA94(v116, v115);
        }

        v129 = v320;
        sub_20C43A9C4(v68, v320, MEMORY[0x277D0A8D0]);
        v130 = *v129;
        v131 = swift_getEnumCaseMultiPayload();
        if (v131 != 1)
        {
          if (v131 == 4)
          {
            v132 = v315;
            sub_20C43A9C4(v69, v315, MEMORY[0x277D0A8D0]);
            v133 = sub_20C45FF10();
            v134 = *(v133 - 8);
            v135 = (*(v134 + 88))(v132, v133);
            if (v135 == *MEMORY[0x277D0A8E8])
            {
              MEMORY[0x28223BE20](v135);
              *(&v309 - 2) = &type metadata for ArtworkPredicateInput;
              *(&v309 - 1) = sub_20C43C484();
              v136 = swift_getKeyPath();
              v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB870, &qword_20C464BD0);
              v138 = v335;
              v335[3] = v137;
              v138[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
              v139 = swift_allocObject();
              v85 = v327;
              v84 = v328;
              *&v346 = v136;
              *(&v346 + 1) = v327;
              v87 = *(&v328 + 1);
              v86 = v329;
              v347 = v328;
              *&v348 = v329;
              v88 = v330;
              BYTE8(v348) = v330;
              v89 = *(&v331 + 1);
              v90 = v331;
              v349 = v331;
              v140 = v328;
              *(v139 + 24) = v346;
              *(v139 + 40) = v140;
              v141 = v349;
              *(v139 + 56) = v348;
              *v138 = v139;
              *(v139 + 16) = v130;
              *(v139 + 72) = v141;
LABEL_88:
              v350 = v136;
              goto LABEL_89;
            }

            goto LABEL_52;
          }

LABEL_67:
          if (swift_getEnumCaseMultiPayload() != 4)
          {
            goto LABEL_74;
          }

          v241 = v334;
          sub_20C43A9C4(v69, v334, MEMORY[0x277D0A8D0]);
          v242 = sub_20C45FF10();
          v243 = *(v242 - 8);
          v244 = (*(v243 + 88))(v241, v242);
          if (v244 != *MEMORY[0x277D0A8F0] && v244 != *MEMORY[0x277D0A8E8] && v244 != *MEMORY[0x277D0A900] && v244 != *MEMORY[0x277D0A908] && v244 != *MEMORY[0x277D0A8F8])
          {
            (*(v243 + 8))(v334, v242);
LABEL_74:
            v245 = 1 << swift_getEnumCaseMultiPayload();
            if ((v245 & 0x2B) == 0)
            {
              if ((v245 & 0xC4) != 0)
              {
                v246 = v72;
              }

              else
              {
                v247 = 1 << swift_getEnumCaseMultiPayload();
                if ((v247 & 0x2B) != 0)
                {
                  v69 = v72;
                  goto LABEL_78;
                }

                if ((v247 & 0xC4) == 0)
                {
                  sub_20C43C430();
                  swift_allocError();
                  *v280 = 10;
                  swift_willThrow();
                  return sub_20C40B440(v72, &qword_27C7BB830, &qword_20C464B00);
                }

                v246 = v69;
                v69 = v72;
              }

              sub_20C43AA94(v246, MEMORY[0x277D0A8D0]);
            }

LABEL_78:
            sub_20C43AA94(v69, MEMORY[0x277D0A8D0]);
            sub_20C43C430();
            swift_allocError();
            v94 = 2;
            goto LABEL_115;
          }

LABEL_114:
          v308 = MEMORY[0x277D0A8D0];
          sub_20C43AA94(v69, MEMORY[0x277D0A8D0]);
          sub_20C43AA94(v72, v308);
          sub_20C43C430();
          swift_allocError();
          v94 = 7;
          goto LABEL_115;
        }

        v187 = v333;
        sub_20C43A9C4(v69, v333, MEMORY[0x277D0A8D0]);
        v149 = *v187;
        sub_20C43AA94(v69, MEMORY[0x277D0A8D0]);
LABEL_48:
        sub_20C43AA94(v72, MEMORY[0x277D0A8D0]);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB868, &qword_20C464B98);
        v188 = v335;
        v335[3] = result;
        v188[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
        *v188 = v130;
        v188[1] = v149;
        return result;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v148 = v323;
        sub_20C43A9C4(v68, v323, MEMORY[0x277D0A8D0]);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_67;
        }

        v130 = *v148;
        v149 = *v69;
        goto LABEL_48;
      }

      v117 = v321;
      sub_20C43A9C4(v68, v321, MEMORY[0x277D0A8D0]);
      v119 = *v117;
      v118 = v117[1];
      v120 = swift_getEnumCaseMultiPayload();
      if (v120 != 2)
      {
        if (v120 == 4)
        {
          v121 = v317;
          sub_20C43A9C4(v69, v317, MEMORY[0x277D0A8D0]);
          v122 = sub_20C45FF10();
          v123 = *(v122 - 8);
          v124 = (*(v123 + 88))(v121, v122);
          if (v124 == *MEMORY[0x277D0A900])
          {
            goto LABEL_54;
          }

          goto LABEL_56;
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }

    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v125 = v68;
        v126 = v325;
        sub_20C43A9C4(v125, v325, MEMORY[0x277D0A8D0]);
        v118 = v126[1];
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_36;
        }

        v119 = *v126;
        v127 = *v69;
        v128 = v69[1];
LABEL_35:
        sub_20C43AA94(v72, MEMORY[0x277D0A8D0]);
        v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB848, &qword_20C464B48);
        v154 = v335;
        v335[3] = v153;
        v154[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
        result = swift_allocObject();
        *v154 = result;
        result[2] = v119;
        result[3] = v118;
        result[4] = v127;
        result[5] = v128;
        return result;
      }

      v150 = v324;
      sub_20C43A9C4(v68, v324, MEMORY[0x277D0A8D0]);
      v119 = *v150;
      v118 = v150[1];
      v151 = swift_getEnumCaseMultiPayload();
      if (v151 == 4)
      {
        v121 = v318;
        sub_20C43A9C4(v69, v318, MEMORY[0x277D0A8D0]);
        v122 = sub_20C45FF10();
        v123 = *(v122 - 8);
        v124 = (*(v123 + 88))(v121, v122);
        if (v124 == *MEMORY[0x277D0A8F8])
        {
LABEL_54:
          MEMORY[0x28223BE20](v124);
          *(&v309 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v309 - 1) = sub_20C43C484();
          v203 = swift_getKeyPath();
          v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB838, &qword_20C464B38);
          v205 = v335;
          v335[3] = v204;
          v205[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v206 = swift_allocObject();
          *v205 = v206;
          v208 = v327;
          v207 = v328;
          *&v346 = v203;
          *(&v346 + 1) = v327;
          v210 = *(&v328 + 1);
          v209 = v329;
          v347 = v328;
          *&v348 = v329;
          v211 = v330;
          BYTE8(v348) = v330;
          v212 = *(&v331 + 1);
          v213 = v331;
          v349 = v331;
          *(v206 + 16) = v119;
          *(v206 + 24) = v118;
          v214 = v347;
          *(v206 + 32) = v346;
          *(v206 + 48) = v214;
          v215 = v349;
          *(v206 + 64) = v348;
          *(v206 + 80) = v215;
          v350 = v203;
LABEL_55:
          v351 = v208;
          v352 = v207;
          v353 = v210;
          v354 = v209;
          v355 = v211;
          *&v356 = v213;
          *(&v356 + 1) = v212;
          sub_20C43C4D8(v332, &v342);
          v182 = &unk_27C7BB840;
          v183 = &unk_20C464B40;
          goto LABEL_90;
        }

LABEL_56:

        (*(v123 + 8))(v121, v122);
        goto LABEL_67;
      }

      if (v151 != 7)
      {
LABEL_36:

        goto LABEL_67;
      }

LABEL_34:
      v152 = v333;
      sub_20C43A9C4(v69, v333, MEMORY[0x277D0A8D0]);
      v127 = *v152;
      v128 = v152[1];
      sub_20C43AA94(v69, MEMORY[0x277D0A8D0]);
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v95 = v326;
      sub_20C43A9C4(v68, v326, MEMORY[0x277D0A8D0]);
      v96 = sub_20C45FF10();
      v97 = *(v96 - 8);
      v98 = *(v97 + 88);
      v99 = v98(v95, v96);
      if (v99 == *MEMORY[0x277D0A8F0])
      {
        v100 = swift_getEnumCaseMultiPayload();
        if (!v100)
        {
          v101 = *v69;
          MEMORY[0x28223BE20](v100);
          *(&v309 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v309 - 1) = sub_20C43C484();
          v102 = swift_getKeyPath();
          sub_20C43C4D8(v332, &v350);
          v103 = sub_20C45FE10();
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8A0, &qword_20C464C00);
          v105 = v335;
          v335[3] = v104;
          v105[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v106 = swift_allocObject();
          *v105 = v106;
          v108 = v327;
          v107 = v328;
          *&v346 = v102;
          *(&v346 + 1) = v327;
          v110 = *(&v328 + 1);
          v109 = v329;
          v347 = v328;
          *&v348 = v329;
          v111 = v330;
          BYTE8(v348) = v330;
          v112 = v331;
          v349 = v331;
          v113 = v328;
          *(v106 + 16) = v346;
          *(v106 + 32) = v113;
          v114 = v349;
          *(v106 + 48) = v348;
          *(v106 + 64) = v114;
          *(v106 + 80) = v103;
          v350 = v102;
          v351 = v108;
          v352 = v107;
          v353 = v110;
          v354 = v109;
          v355 = v111;
          v356 = v112;
          sub_20C409B04(&v346, &v342, &qword_27C7BB810, &qword_20C464AB0);
          sub_20C40B440(&v350, &qword_27C7BB810, &qword_20C464AB0);
          v115 = MEMORY[0x277D0A8D0];
          v116 = v72;
          return sub_20C43AA94(v116, v115);
        }

        goto LABEL_114;
      }

      if (v99 == *MEMORY[0x277D0A8E8])
      {
        v156 = v99;
        v157 = swift_getEnumCaseMultiPayload();
        if (v157 == 1)
        {
          v258 = v333;
          v259 = sub_20C43A9C4(v69, v333, MEMORY[0x277D0A8D0]);
          v260 = *v258;
          MEMORY[0x28223BE20](v259);
          *(&v309 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v309 - 1) = sub_20C43C484();
          v136 = swift_getKeyPath();
          v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8A0, &qword_20C464C00);
          v262 = v335;
          v335[3] = v261;
          v262[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v263 = swift_allocObject();
          *v262 = v263;
          v85 = v327;
          v84 = v328;
          *&v346 = v136;
          *(&v346 + 1) = v327;
          v87 = *(&v328 + 1);
          v86 = v329;
          v347 = v328;
          *&v348 = v329;
          v88 = v330;
          BYTE8(v348) = v330;
          v89 = *(&v331 + 1);
          v90 = v331;
          v349 = v331;
          v264 = v328;
          *(v263 + 16) = v346;
          *(v263 + 32) = v264;
          v265 = v349;
          *(v263 + 48) = v348;
          *(v263 + 64) = v265;
          *(v263 + 80) = v260;
          goto LABEL_88;
        }

        if (v157 != 4)
        {
          goto LABEL_114;
        }

        v158 = v313;
        sub_20C43A9C4(v69, v313, MEMORY[0x277D0A8D0]);
        if (v98(v158, v96) == v156)
        {
          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v159 = sub_20C460000();
          __swift_project_value_buffer(v159, qword_28110E2C0);
          v160 = sub_20C45FFE0();
          v161 = sub_20C460660();
          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            v350 = v163;
            *v162 = 136315138;
            *(v162 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v350);
            _os_log_impl(&dword_20C404000, v160, v161, "%s", v162, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v163);
            MEMORY[0x20F2FB570](v163, -1, -1);
            MEMORY[0x20F2FB570](v162, -1, -1);
          }

          v164 = v332;
          MEMORY[0x28223BE20](v165);
          *(&v309 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v309 - 1) = sub_20C43C484();
          v166 = swift_getKeyPath();
          v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB898, &qword_20C464BF8);
          v168 = v335;
          v335[3] = v167;
          v168[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v169 = swift_allocObject();
          *v168 = v169;
          v171 = v327;
          v170 = v328;
          *&v342 = v166;
          *(&v342 + 1) = v327;
          v173 = *(&v328 + 1);
          v172 = v329;
          v343 = v328;
          *&v344 = v329;
          v174 = v330;
          BYTE8(v344) = v330;
          v175 = v331;
          v345 = v331;
          *&v346 = v166;
          *(&v346 + 1) = v327;
          v347 = v328;
          *&v348 = v329;
          BYTE8(v348) = v330;
          v349 = v331;
          v176 = v342;
          v177 = v328;
          v178 = v331;
          v169[3] = v344;
          v169[4] = v178;
          v169[1] = v176;
          v169[2] = v177;
          v179 = v346;
          v180 = v347;
          v181 = v349;
          v169[7] = v348;
          v169[8] = v181;
          v169[5] = v179;
          v169[6] = v180;
          v350 = v166;
          v351 = v171;
          v352 = v170;
          v353 = v173;
          v354 = v172;
          v355 = v174;
          v356 = v175;
          sub_20C43C4D8(v164, v341);
          v182 = &qword_27C7BB810;
          v183 = &qword_20C464AB0;
          goto LABEL_106;
        }

LABEL_113:
        (*(v97 + 8))(v158, v96);
        goto LABEL_114;
      }

      if (v99 == *MEMORY[0x277D0A900])
      {
        v216 = v99;
        v217 = swift_getEnumCaseMultiPayload();
        if (v217 != 2)
        {
          if (v217 != 4)
          {
            goto LABEL_114;
          }

          v158 = v312;
          sub_20C43A9C4(v69, v312, MEMORY[0x277D0A8D0]);
          if (v98(v158, v96) != v216)
          {
            goto LABEL_113;
          }

          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v218 = sub_20C460000();
          __swift_project_value_buffer(v218, qword_28110E2C0);
          v219 = sub_20C45FFE0();
          v220 = sub_20C460660();
          if (os_log_type_enabled(v219, v220))
          {
            v221 = swift_slowAlloc();
            v222 = swift_slowAlloc();
            v350 = v222;
            *v221 = 136315138;
            *(v221 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v350);
            _os_log_impl(&dword_20C404000, v219, v220, "%s", v221, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v222);
            MEMORY[0x20F2FB570](v222, -1, -1);
            MEMORY[0x20F2FB570](v221, -1, -1);
          }

LABEL_65:

          v223 = v332;
          MEMORY[0x28223BE20](v224);
          *(&v309 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v309 - 1) = sub_20C43C484();
          v225 = swift_getKeyPath();
          v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB878, &qword_20C464BD8);
          v227 = v335;
          v335[3] = v226;
          v227[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v228 = swift_allocObject();
          *v227 = v228;
          v230 = v327;
          v229 = v328;
          *&v342 = v225;
          *(&v342 + 1) = v327;
          v232 = *(&v328 + 1);
          v231 = v329;
          v343 = v328;
          *&v344 = v329;
          v233 = v330;
          BYTE8(v344) = v330;
          v234 = v331;
          v345 = v331;
          *&v346 = v225;
          *(&v346 + 1) = v327;
          v347 = v328;
          *&v348 = v329;
          BYTE8(v348) = v330;
          v349 = v331;
          v235 = v342;
          v236 = v328;
          v237 = v331;
          v228[3] = v344;
          v228[4] = v237;
          v228[1] = v235;
          v228[2] = v236;
          v238 = v346;
          v239 = v347;
          v240 = v349;
          v228[7] = v348;
          v228[8] = v240;
          v228[5] = v238;
          v228[6] = v239;
          v350 = v225;
          v351 = v230;
          v352 = v229;
          v353 = v232;
          v354 = v231;
          v355 = v233;
          v356 = v234;
          sub_20C43C4D8(v223, v341);
          v182 = &unk_27C7BB840;
          v183 = &unk_20C464B40;
LABEL_106:
          sub_20C409B04(&v342, v341, v182, v183);
          v266 = v341;
          goto LABEL_91;
        }

        goto LABEL_97;
      }

      if (v99 != *MEMORY[0x277D0A908])
      {
        if (v99 != *MEMORY[0x277D0A8F8])
        {
          (*(v97 + 8))(v95, v96);
          goto LABEL_67;
        }

        v268 = v99;
        v269 = swift_getEnumCaseMultiPayload();
        if (v269 == 4)
        {
          v158 = v309;
          sub_20C43A9C4(v69, v309, MEMORY[0x277D0A8D0]);
          if (v98(v158, v96) != v268)
          {
            goto LABEL_113;
          }

          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v304 = sub_20C460000();
          __swift_project_value_buffer(v304, qword_28110E2C0);
          v219 = sub_20C45FFE0();
          v305 = sub_20C460660();
          if (os_log_type_enabled(v219, v305))
          {
            v306 = swift_slowAlloc();
            v307 = swift_slowAlloc();
            v350 = v307;
            *v306 = 136315138;
            *(v306 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v350);
            _os_log_impl(&dword_20C404000, v219, v305, "%s", v306, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v307);
            MEMORY[0x20F2FB570](v307, -1, -1);
            MEMORY[0x20F2FB570](v306, -1, -1);
          }

          goto LABEL_65;
        }

        if (v269 != 7)
        {
          goto LABEL_114;
        }

LABEL_97:
        v270 = v333;
        v271 = sub_20C43A9C4(v69, v333, MEMORY[0x277D0A8D0]);
        v272 = *v270;
        v273 = v270[1];
        MEMORY[0x28223BE20](v271);
        *(&v309 - 2) = &type metadata for ArtworkPredicateInput;
        *(&v309 - 1) = sub_20C43C484();
        v274 = swift_getKeyPath();
        v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB880, &qword_20C464BE0);
        v276 = v335;
        v335[3] = v275;
        v276[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
        v277 = swift_allocObject();
        *v276 = v277;
        v208 = v327;
        v207 = v328;
        *&v346 = v274;
        *(&v346 + 1) = v327;
        v210 = *(&v328 + 1);
        v209 = v329;
        v347 = v328;
        *&v348 = v329;
        v211 = v330;
        BYTE8(v348) = v330;
        v212 = *(&v331 + 1);
        v213 = v331;
        v349 = v331;
        v278 = v328;
        *(v277 + 16) = v346;
        *(v277 + 32) = v278;
        v279 = v349;
        *(v277 + 48) = v348;
        *(v277 + 64) = v279;
        *(v277 + 80) = v272;
        *(v277 + 88) = v273;
        v350 = v274;
        goto LABEL_55;
      }

      v248 = v99;
      v249 = swift_getEnumCaseMultiPayload();
      if (v249 == 4)
      {
        v158 = v311;
        sub_20C43A9C4(v69, v311, MEMORY[0x277D0A8D0]);
        if (v98(v158, v96) == v248)
        {
          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v281 = sub_20C460000();
          __swift_project_value_buffer(v281, qword_28110E2C0);
          v282 = sub_20C45FFE0();
          v283 = sub_20C460660();
          if (os_log_type_enabled(v282, v283))
          {
            v284 = swift_slowAlloc();
            v285 = swift_slowAlloc();
            v350 = v285;
            *v284 = 136315138;
            *(v284 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v350);
            _os_log_impl(&dword_20C404000, v282, v283, "%s", v284, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v285);
            MEMORY[0x20F2FB570](v285, -1, -1);
            MEMORY[0x20F2FB570](v284, -1, -1);
          }

          v286 = v332;
          MEMORY[0x28223BE20](v287);
          *(&v309 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v309 - 1) = sub_20C43C484();
          v288 = swift_getKeyPath();
          v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB888, &qword_20C464BE8);
          v290 = v335;
          v335[3] = v289;
          v290[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v291 = swift_allocObject();
          *v290 = v291;
          v293 = v327;
          v292 = v328;
          *&v342 = v288;
          *(&v342 + 1) = v327;
          v295 = *(&v328 + 1);
          v294 = v329;
          v343 = v328;
          *&v344 = v329;
          v296 = v330;
          BYTE8(v344) = v330;
          v297 = v331;
          v345 = v331;
          *&v346 = v288;
          *(&v346 + 1) = v327;
          v347 = v328;
          *&v348 = v329;
          BYTE8(v348) = v330;
          v349 = v331;
          v298 = v342;
          v299 = v328;
          v300 = v331;
          v291[3] = v344;
          v291[4] = v300;
          v291[1] = v298;
          v291[2] = v299;
          v301 = v346;
          v302 = v347;
          v303 = v349;
          v291[7] = v348;
          v291[8] = v303;
          v291[5] = v301;
          v291[6] = v302;
          v350 = v288;
          v351 = v293;
          v352 = v292;
          v353 = v295;
          v354 = v294;
          v355 = v296;
          v356 = v297;
          sub_20C43C4D8(v286, v341);
          v182 = &unk_27C7BB858;
          v183 = &unk_20C464B88;
          goto LABEL_106;
        }

        goto LABEL_113;
      }

      if (v249 != 5)
      {
        goto LABEL_114;
      }

      v250 = v310;
      v251 = sub_20C43A9C4(v69, v310, MEMORY[0x277D0A8D0]);
      v252 = *v250;
      MEMORY[0x28223BE20](v251);
      *(&v309 - 2) = &type metadata for ArtworkPredicateInput;
      *(&v309 - 1) = sub_20C43C484();
      v190 = swift_getKeyPath();
      v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB890, &qword_20C464BF0);
      v254 = v335;
      v335[3] = v253;
      v254[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
      v255 = swift_allocObject();
      *v254 = v255;
      v195 = v327;
      v194 = v328;
      *&v346 = v190;
      *(&v346 + 1) = v327;
      v197 = *(&v328 + 1);
      v196 = v329;
      v347 = v328;
      *&v348 = v329;
      v198 = v330;
      BYTE8(v348) = v330;
      v199 = *(&v331 + 1);
      v200 = v331;
      v349 = v331;
      v256 = v328;
      *(v255 + 16) = v346;
      *(v255 + 32) = v256;
      v257 = v349;
      *(v255 + 48) = v348;
      *(v255 + 64) = v257;
      *(v255 + 80) = v252;
    }

    else
    {
      v142 = v322;
      sub_20C43A9C4(v68, v322, MEMORY[0x277D0A8D0]);
      v143 = *v142;
      v144 = swift_getEnumCaseMultiPayload();
      if (v144 != 4)
      {
        if (v144 == 5)
        {
          v145 = v333;
          sub_20C43A9C4(v69, v333, MEMORY[0x277D0A8D0]);
          LOBYTE(v145) = *v145;
          v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB860, &qword_20C464B90);
          v147 = v335;
          v335[3] = v146;
          v147[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          *v147 = v143;
          *(v147 + 1) = v145;
          goto LABEL_92;
        }

        goto LABEL_67;
      }

      v132 = v316;
      sub_20C43A9C4(v69, v316, MEMORY[0x277D0A8D0]);
      v133 = sub_20C45FF10();
      v134 = *(v133 - 8);
      v189 = (*(v134 + 88))(v132, v133);
      if (v189 != *MEMORY[0x277D0A908])
      {
LABEL_52:
        (*(v134 + 8))(v132, v133);
        goto LABEL_67;
      }

      MEMORY[0x28223BE20](v189);
      *(&v309 - 2) = &type metadata for ArtworkPredicateInput;
      *(&v309 - 1) = sub_20C43C484();
      v190 = swift_getKeyPath();
      v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB850, &qword_20C464B80);
      v192 = v335;
      v335[3] = v191;
      v192[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
      v193 = swift_allocObject();
      v195 = v327;
      v194 = v328;
      *&v346 = v190;
      *(&v346 + 1) = v327;
      v197 = *(&v328 + 1);
      v196 = v329;
      v347 = v328;
      *&v348 = v329;
      v198 = v330;
      BYTE8(v348) = v330;
      v199 = *(&v331 + 1);
      v200 = v331;
      v349 = v331;
      v201 = v328;
      *(v193 + 24) = v346;
      *(v193 + 40) = v201;
      v202 = v349;
      *(v193 + 56) = v348;
      *v192 = v193;
      *(v193 + 16) = v143;
      *(v193 + 72) = v202;
    }

    v350 = v190;
    v351 = v195;
    v352 = v194;
    v353 = v197;
    v354 = v196;
    v355 = v198;
    *&v356 = v200;
    *(&v356 + 1) = v199;
    sub_20C43C4D8(v332, &v342);
    v182 = &unk_27C7BB858;
    v183 = &unk_20C464B88;
LABEL_90:
    v266 = &v342;
LABEL_91:
    sub_20C409B04(&v346, v266, v182, v183);
    sub_20C40B440(&v350, v182, v183);
    goto LABEL_92;
  }

  sub_20C43C430();
  swift_allocError();
  v94 = 8;
LABEL_115:
  *v93 = v94;
  return swift_willThrow();
}

uint64_t sub_20C43A260(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20C43A32C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20C427900(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_20C43A32C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_20C43A438(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_20C460780();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_20C43A438(uint64_t a1, unint64_t a2)
{
  v4 = sub_20C43A484(a1, a2);
  sub_20C43A5B4(&unk_2823644C8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20C43A484(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20C43A6A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20C460780();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20C460510();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20C43A6A0(v10, 0);
        result = sub_20C460730();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20C43A5B4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_20C43A714(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20C43A6A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B8, &qword_20C464A38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20C43A714(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B8, &qword_20C464A38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_20C43A808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_20C43AC18(v9, v7, a3, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v12 = swift_slowAlloc();
  v13 = sub_20C43AF68(v12, v7, a3, v5);
  result = MEMORY[0x20F2FB570](v12, -1, -1);
  if (!v3)
  {
    result = v13;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20C43A9C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C43AA2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C43AA94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C43AAF4(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + ((v6 + 87) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C414268;

  return sub_20C436334(a1, v1 + v5, v1 + v6, v8, v9);
}

uint64_t sub_20C43AC18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, char *))
{
  v5 = v4;
  v41 = a4;
  v35 = a2;
  v36 = a1;
  v7 = &qword_27C7BAF10;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v34 - v11;
  v37 = 0;
  v13 = 0;
  v53 = a3;
  v14 = *(a3 + 64);
  v38 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v39 = (v15 + 63) >> 6;
  if ((v16 & v14) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_10:
      v21 = v18 | (v13 << 6);
      v22 = v53[7];
      v23 = (v53[6] + 80 * v21);
      v52[0] = *v23;
      v24 = v23[4];
      v26 = v23[1];
      v25 = v23[2];
      v52[3] = v23[3];
      v52[4] = v24;
      v52[1] = v26;
      v52[2] = v25;
      v27 = v23[3];
      v49 = v23[2];
      v50 = v27;
      v51 = v23[4];
      v28 = v23[1];
      v47 = *v23;
      v48 = v28;
      sub_20C409B04(v22 + *(v40 + 72) * v21, v12, v7, &qword_20C4640D0);
      sub_20C40C520(v52, &v42);
      v29 = v41(&v47, v12);
      if (v5)
      {
        sub_20C40B440(v12, &qword_27C7BAF10, &qword_20C4640D0);
        v44 = v49;
        v45 = v50;
        v46 = v51;
        v43 = v48;
        v42 = v47;
        return sub_20C40C57C(&v42);
      }

      v30 = v7;
      v31 = v29;
      v32 = v30;
      sub_20C40B440(v12, v30, &qword_20C4640D0);
      v44 = v49;
      v45 = v50;
      v46 = v51;
      v43 = v48;
      v42 = v47;
      result = sub_20C40C57C(&v42);
      if (v31)
      {
        *(v36 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        if (__OFADD__(v37++, 1))
        {
          break;
        }
      }

      v7 = v32;
      v5 = 0;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    return sub_20C43AFF8(v36, v35, v37, v53);
  }

  else
  {
LABEL_5:
    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v39)
      {
        return sub_20C43AFF8(v36, v35, v37, v53);
      }

      v20 = *(v38 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v17 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_20C43AF68(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_20C43AC18(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_20C43AFF8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v37 = &v35 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8B0, &qword_20C464C10);
  result = sub_20C4607D0();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v35 = a4;
  v36 = result + 64;
  v15 = v37;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v39 = (v13 - 1) & v13;
LABEL_16:
    v19 = v16 | (v14 << 6);
    v20 = a4[7];
    v21 = (a4[6] + 80 * v19);
    v45 = *v21;
    v22 = v21[4];
    v24 = v21[1];
    v23 = v21[2];
    v48 = v21[3];
    v49 = v22;
    v46 = v24;
    v47 = v23;
    v25 = *(v38 + 72);
    sub_20C409B04(v20 + v25 * v19, v15, &qword_27C7BAF10, &qword_20C4640D0);
    v26 = *(v12 + 40);
    v42 = v47;
    v43 = v48;
    v44 = v49;
    *&v40[152] = v45;
    v41 = v46;
    sub_20C460930();
    sub_20C40C520(&v45, v40);
    ImageAssetCacheKey.hash(into:)();
    sub_20C460970();
    v27 = -1 << *(v12 + 32);
    v28 = v36;
    v29 = sub_20C460710();
    *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v30 = (*(v12 + 48) + 80 * v29);
    *v30 = v45;
    v31 = v46;
    v32 = v47;
    v33 = v49;
    v30[3] = v48;
    v30[4] = v33;
    v30[1] = v31;
    v30[2] = v32;
    result = sub_20C409BD0(v15, *(v12 + 56) + v29 * v25, &qword_27C7BAF10, &qword_20C4640D0);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v35;
    v13 = v39;
    if (!a3)
    {
      return v12;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void (*sub_20C43B2D0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x58uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(*(type metadata accessor for ImageAsset() - 8) + 64);
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v7[8] = v9;
  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20C43A9C4(a2, v10, type metadata accessor for ImageAsset);
  v7[9] = sub_20C43B710(v7);
  v7[10] = sub_20C43B45C(v7 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_20C43B3CC;
}

void sub_20C43B3CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_20C43AA94(v3, type metadata accessor for ImageAsset);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_20C43B45C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = *(type metadata accessor for ImageAsset() - 8);
  *(v10 + 24) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 32) = v12;
  v13 = *v4;
  v14 = sub_20C457F00(a2);
  *(v10 + 48) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_20C45A474();
      v14 = v22;
      goto LABEL_14;
    }

    sub_20C4587FC(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_20C457F00(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_20C4608E0();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 40) = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_20C43B608;
}

void sub_20C43B608(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 48);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[5];
    if ((*a1)[6])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[4];
      sub_20C43A9C4(v1[1], v8, type metadata accessor for ImageAsset);
      sub_20C45A10C(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[6])
  {
    v6 = v1[5];
    v7 = *v1[2];
    sub_20C43AA94(*(v7 + 48) + *(v1[3] + 72) * v6, type metadata accessor for ImageAsset);
    sub_20C45968C(v6, v7);
  }

  v9 = v1[4];
  v10 = *v1;

  free(v9);

  free(v1);
}

uint64_t (*sub_20C43B710(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_20C43B738;
}

uint64_t sub_20C43B744(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + ((v6 + 87) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C414268;

  return sub_20C436334(a1, v1 + v5, v1 + v6, v8, v9);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for ImageAsset();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_20C45FD00();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  v9 = *(v1 + 28);
  v10 = sub_20C45FC30();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 87) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v0 + v12);
  v15 = *(v0 + v12 + 16);

  v16 = v14[3];

  v17 = v14[5];

  v18 = v14[7];

  return MEMORY[0x2821FE8E8](v0, v13 + 16, v2 | 7);
}

uint64_t sub_20C43BA44(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + ((v6 + 87) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C413D30;

  return sub_20C435F4C(a1, v1 + v5, v1 + v6, v8, v9);
}

uint64_t sub_20C43BB68(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for DynamicImageAssetFeature(0) - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_20C414268;

  return sub_20C433C88(a1, v1 + v5, v1 + v8, v1 + v9, v10, v11);
}

uint64_t sub_20C43BD3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20C43BE40()
{
  sub_20C406420();
  if (v0 <= 0x3F)
  {
    sub_20C41DBC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_20C43BEFC(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for ImageAsset();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20C45FCC0();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v36);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicImageAssetFeature.TaskIdentifier(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7A8, &unk_20C464A10);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v34 - v20;
  v22 = &v34 + *(v19 + 56) - v20;
  sub_20C43A9C4(a1, &v34 - v20, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
  sub_20C43A9C4(v37, v22, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C43A9C4(v21, v16, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = v36;
      (*(v6 + 32))(v9, v22, v36);
      v30 = sub_20C45FCA0();
      v32 = *(v6 + 8);
      v32(v9, v31);
      v32(v16, v31);
      goto LABEL_11;
    }

    (*(v6 + 8))(v16, v36);
    goto LABEL_8;
  }

  sub_20C43A9C4(v21, v14, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48);
  v24 = *&v14[v23 + 64];
  v48 = *&v14[v23 + 48];
  v49 = v24;
  v25 = *&v14[v23 + 32];
  v46 = *&v14[v23 + 16];
  v47 = v25;
  v45 = *&v14[v23];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C40C57C(&v45);
    sub_20C43AA94(v14, type metadata accessor for ImageAsset);
LABEL_8:
    sub_20C40B440(v21, &qword_27C7BB7A8, &unk_20C464A10);
    goto LABEL_9;
  }

  v26 = *&v22[v23 + 48];
  v42 = *&v22[v23 + 32];
  v43 = v26;
  v44 = *&v22[v23 + 64];
  v27 = *&v22[v23 + 16];
  v40 = *&v22[v23];
  v41 = v27;
  v28 = v35;
  sub_20C43AA2C(v22, v35, type metadata accessor for ImageAsset);
  v29 = static ImageAsset.== infix(_:_:)(v14, v28);
  sub_20C43AA94(v14, type metadata accessor for ImageAsset);
  if (v29)
  {
    v39[2] = v47;
    v39[3] = v48;
    v39[4] = v49;
    v39[0] = v45;
    v39[1] = v46;
    v38[2] = v42;
    v38[3] = v43;
    v38[4] = v44;
    v38[0] = v40;
    v38[1] = v41;
    v30 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(v39, v38);
    sub_20C43AA94(v28, type metadata accessor for ImageAsset);
    sub_20C40C57C(&v40);
    sub_20C40C57C(&v45);
LABEL_11:
    sub_20C43AA94(v21, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
    return v30 & 1;
  }

  sub_20C43AA94(v28, type metadata accessor for ImageAsset);
  sub_20C40C57C(&v45);
  sub_20C40C57C(&v40);
  sub_20C43AA94(v21, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
LABEL_9:
  v30 = 0;
  return v30 & 1;
}

unint64_t sub_20C43C430()
{
  result = qword_27C7BB7E8;
  if (!qword_27C7BB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB7E8);
  }

  return result;
}

unint64_t sub_20C43C484()
{
  result = qword_27C7BB800;
  if (!qword_27C7BB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB800);
  }

  return result;
}

uint64_t objectdestroy_29Tm(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 40);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_32Tm(uint64_t a1)
{
  v3 = v1[3];

  v4 = v1[7];

  v5 = v1[10];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_35Tm(uint64_t a1)
{
  v3 = v1[2];

  v4 = v1[6];

  v5 = v1[9];

  v6 = v1[10];

  v7 = v1[14];

  v8 = v1[17];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_38Tm(uint64_t a1)
{
  v3 = v1[2];

  v4 = v1[6];

  v5 = v1[9];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_20C43C69C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  v12 = a3[3];
  v26[2] = a3[2];
  v26[3] = v12;
  v26[4] = a3[4];
  v13 = a3[1];
  v26[0] = *a3;
  v26[1] = v13;
  v14 = *(type metadata accessor for DynamicImageAssetState() + 20);
  v15 = *(v4 + v14);
  if (*(v15 + 16) && (v16 = sub_20C457F00(a2), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = sub_20C43C99C(MEMORY[0x277D84F90]);
  }

  sub_20C409B04(a1, v11, &qword_27C7BAF10, &qword_20C4640D0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v18;
  sub_20C459D30(v11, v26, isUniquelyReferenced_nonNull_native);
  v20 = v25;
  v21 = *(v4 + v14);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v4 + v14);
  result = sub_20C459E94(v20, a2, v22);
  *(v4 + v14) = v25;
  return result;
}

uint64_t sub_20C43C7F4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v24[2] = a2[2];
  v24[3] = v6;
  v24[4] = a2[4];
  v7 = a2[1];
  v24[0] = *a2;
  v24[1] = v7;
  v8 = *(v3 + *(type metadata accessor for DynamicImageAssetState() + 20));
  if (*(v8 + 16))
  {
    v9 = sub_20C457F00(a1);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      if (*(v11 + 16))
      {

        v12 = sub_20C457E7C(v24);
        if (v13)
        {
          v14 = v12;
          v15 = *(v11 + 56);
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
          v23 = *(v16 - 8);
          sub_20C409B04(v15 + *(v23 + 72) * v14, a3, &qword_27C7BAF10, &qword_20C4640D0);

          v17 = *(v23 + 56);
          v18 = a3;
          v19 = 0;
          v20 = v16;
          goto LABEL_8;
        }
      }
    }
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v17 = *(*(v21 - 8) + 56);
  v20 = v21;
  v18 = a3;
  v19 = 1;
LABEL_8:

  return v17(v18, v19, 1, v20);
}

uint64_t sub_20C43C99C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8B8, &qword_20C464C18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v27 - v5);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8B0, &qword_20C464C10);
  v8 = sub_20C4607D0();
  v9 = *(v2 + 48);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = *(v3 + 72);

  sub_20C409B04(a1 + v10, v6, &qword_27C7BB8B8, &qword_20C464C18);
  v12 = v6[3];
  v29 = v6[2];
  v30 = v12;
  v31 = v6[4];
  v13 = v6[1];
  v27 = *v6;
  v28 = v13;
  v14 = sub_20C457E7C(&v27);
  if (v15)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v8;
  }

  v16 = v14;
  v17 = a1 + v11 + v10;
  while (1)
  {
    *(v8 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
    memmove((v8[6] + 80 * v16), v6, 0x50uLL);
    v18 = v8[7];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
    result = sub_20C43CBEC(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
    v21 = v8[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v8[2] = v23;
    if (!--v7)
    {
      goto LABEL_8;
    }

    sub_20C409B04(v17, v6, &qword_27C7BB8B8, &qword_20C464C18);
    v24 = v6[3];
    v29 = v6[2];
    v30 = v24;
    v31 = v6[4];
    v25 = v6[1];
    v27 = *v6;
    v28 = v25;
    v16 = sub_20C457E7C(&v27);
    v17 += v11;
    if (v26)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20C43CBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C43CC74()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_20C43CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x800000020C4678C0 == a2;
  if (v5 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C4678E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C43CD94(uint64_t a1)
{
  v2 = sub_20C43D1AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C43CDD0(uint64_t a1)
{
  v2 = sub_20C43D1AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C43CE0C(uint64_t a1)
{
  v2 = sub_20C43D254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C43CE48(uint64_t a1)
{
  v2 = sub_20C43D254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C43CE84(uint64_t a1)
{
  v2 = sub_20C43D200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C43CEC0(uint64_t a1)
{
  v2 = sub_20C43D200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAssetLoadError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8C0, &qword_20C464C20);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8C8, &qword_20C464C28);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8D0, &qword_20C464C30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C43D1AC();
  sub_20C4609C0();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_20C43D200();
    v18 = v22;
    sub_20C460870();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_20C43D254();
    sub_20C460870();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_20C43D1AC()
{
  result = qword_27C7BB8D8;
  if (!qword_27C7BB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB8D8);
  }

  return result;
}

unint64_t sub_20C43D200()
{
  result = qword_27C7BB8E0;
  if (!qword_27C7BB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB8E0);
  }

  return result;
}

unint64_t sub_20C43D254()
{
  result = qword_27C7BB8E8;
  if (!qword_27C7BB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB8E8);
  }

  return result;
}

uint64_t ImageAssetLoadError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8F0, &qword_20C464C38);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8F8, &qword_20C464C40);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB900, &unk_20C464C48);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C43D1AC();
  v16 = v36;
  sub_20C4609B0();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_20C460850();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_20C417824();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_20C460770();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670) + 48);
      *v26 = &type metadata for ImageAssetLoadError;
      sub_20C460800();
      sub_20C460760();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_20C43D200();
        sub_20C4607F0();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_20C43D254();
        sub_20C4607F0();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t ImageAssetLoadError.hashValue.getter()
{
  v1 = *v0;
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  return sub_20C460970();
}

unint64_t sub_20C43D83C()
{
  result = qword_27C7BB908;
  if (!qword_27C7BB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB908);
  }

  return result;
}

unint64_t sub_20C43D894()
{
  result = qword_27C7BB910;
  if (!qword_27C7BB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB910);
  }

  return result;
}

unint64_t sub_20C43D8EC()
{
  result = qword_27C7BB918;
  if (!qword_27C7BB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB918);
  }

  return result;
}

unint64_t sub_20C43D944()
{
  result = qword_27C7BB920;
  if (!qword_27C7BB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB920);
  }

  return result;
}

unint64_t sub_20C43D99C()
{
  result = qword_27C7BB928;
  if (!qword_27C7BB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB928);
  }

  return result;
}

unint64_t sub_20C43D9F4()
{
  result = qword_27C7BB930;
  if (!qword_27C7BB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB930);
  }

  return result;
}

unint64_t sub_20C43DA4C()
{
  result = qword_27C7BB938;
  if (!qword_27C7BB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB938);
  }

  return result;
}

uint64_t DynamicPredicateDescriptor.makePredicateExpression<A>(using:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v40 = a3;
  v41 = a4;
  v38 = a5;
  v39 = a1;
  v6 = sub_20C45FF60();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C45FF90();
  v34 = *(v10 - 8);
  v35 = v10;
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C45FFD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C45FE80();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v24 == 2)
    {
      v27 = swift_projectBox();
      v29 = v34;
      v28 = v35;
      (*(v34 + 16))(v13, v27, v35);
      DynamicPredicateEqualityDescriptor.makePredicateExpression<A>(using:)(v39, v40, v41, v38);
      return (*(v29 + 8))(v13, v28);
    }

    else
    {
      v31 = swift_projectBox();
      v33 = v36;
      v32 = v37;
      (*(v36 + 16))(v9, v31, v37);
      DynamicPredicateLogicalDescriptor.makePredicateExpression<A>(using:)(v39, v40, v41);
      return (*(v33 + 8))(v9, v32);
    }
  }

  else if (v24)
  {
    v30 = swift_projectBox();
    (*(v15 + 16))(v18, v30, v14);
    DynamicPredicateComparisonDescriptor.makePredicateExpression<A>(using:)(v39, v40, v38);
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    v25 = swift_projectBox();
    (*(v20 + 16))(v23, v25, v19);
    DynamicPredicateBooleanValue.makePredicateExpression<A>(using:)(v38);
    return (*(v20 + 8))(v23, v19);
  }
}

FitnessAsset::FileType_optional __swiftcall FileType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20C4607E0();

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

uint64_t FileType.rawValue.getter()
{
  if (*v0)
  {
    return 6778986;
  }

  else
  {
    return 6778480;
  }
}

uint64_t sub_20C43DEF0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 6778986;
  }

  else
  {
    v2 = 6778480;
  }

  if (*a2)
  {
    v3 = 6778986;
  }

  else
  {
    v3 = 6778480;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_20C4608D0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_20C43DF64@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20C4607E0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_20C43DFC4(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 6778986;
  }

  else
  {
    v2 = 6778480;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

unint64_t sub_20C43E09C()
{
  result = qword_27C7BB940;
  if (!qword_27C7BB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB940);
  }

  return result;
}

uint64_t sub_20C43E0F0()
{
  v1 = *v0;
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

uint64_t sub_20C43E154()
{
  *v0;
  sub_20C4604F0();
}

uint64_t sub_20C43E19C()
{
  v1 = *v0;
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

unint64_t sub_20C43E20C()
{
  result = qword_28110B578;
  if (!qword_28110B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B578);
  }

  return result;
}

uint64_t static ArtworkPredicate.makeLogicalOperation(lhs:rhs:logicalOperator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_20C42A130(a1, a4);
  result = sub_20C42A130(a2, a4 + 40);
  *(a4 + 80) = a3 & 1;
  return result;
}

uint64_t static ArtworkPredicate.makeComparison<A, B>(lhs:rhs:comparisonOperator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v23 = a5;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v19;
  (*(v21 + 16))(v18);
  (*(v10 + 16))(v14, a2, a4);
  v24 = v20;
  return sub_20C43FFD8(v18, v14, &v24, a3, a4, a6);
}

uint64_t static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  (*(v9 + 16))(v13, a2, a4);
  return sub_20C4420CC(v17, v13, a3, a4, a5);
}

uint64_t static ArtworkPredicate.makeKeyPath<A, B>(root:keyPath:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *a2;
  v8 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = *(v7 + *MEMORY[0x277D84DE8] + 8);
  ArtworkPredicateKeyPath.init(root:keyPath:)(v10, a2, a3, a4);
}

uint64_t ImageAssetCacheKey.cropCode.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ImageAssetCacheKey.fileType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ImageAssetCacheKey.template.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ImageAssetCacheKey.widthBucket.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t ImageAssetCacheKey.init(aspectRatio:cropCode:decoratorCacheKeys:fileType:template:widthBucket:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  *a9 = a10;
  *(a9 + 8) = result;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a11;
  return result;
}

uint64_t sub_20C43E7D4()
{
  v1 = *v0;
  v2 = 0x6152746365707361;
  v3 = 0x65707954656C6966;
  v4 = 0x6574616C706D6574;
  if (v1 != 4)
  {
    v4 = 0x6375426874646977;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65646F43706F7263;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_20C43E8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C43F990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C43E8D8(uint64_t a1)
{
  v2 = sub_20C43F4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C43E914(uint64_t a1)
{
  v2 = sub_20C43F4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAssetCacheKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB948, &qword_20C465150);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v26 = v1[2];
  v27 = v9;
  v10 = v1[3];
  v24 = v1[4];
  v25 = v10;
  v11 = v1[5];
  v13 = v1[7];
  v12 = v1[8];
  v21[0] = v1[6];
  v21[1] = v13;
  v22 = v12;
  v23 = v11;
  v14 = v1[9];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C43F4AC();
  sub_20C4609C0();
  v29 = v8;
  v31 = 0;
  sub_20C43F500();
  v16 = v3;
  v17 = v28;
  sub_20C4608B0();
  if (v17)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = v25;
  v28 = v14;
  v20 = v22;
  LOBYTE(v29) = 1;
  sub_20C460890();
  v29 = v19;
  v31 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB950, &qword_20C465158);
  sub_20C43F614(&qword_28110B3F0);
  sub_20C4608B0();
  LOBYTE(v29) = 3;
  sub_20C460890();
  LOBYTE(v29) = 4;
  sub_20C460890();
  v29 = v20;
  v30 = v28;
  v31 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB958, &qword_20C465160);
  sub_20C43F554(&qword_28110B3F8);
  sub_20C4608B0();
  return (*(v4 + 8))(v7, v16);
}

uint64_t ImageAssetCacheKey.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB960, &qword_20C465168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C43F4AC();
  sub_20C4609B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30) = 0;
  sub_20C43F5C0();
  sub_20C460840();
  v11 = v35[0];
  LOBYTE(v35[0]) = 1;
  v12 = sub_20C460820();
  v29 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB950, &qword_20C465158);
  LOBYTE(v30) = 2;
  sub_20C43F614(&qword_27C7BB970);
  sub_20C460840();
  v28 = v35[0];
  LOBYTE(v35[0]) = 3;
  *&v27 = sub_20C460820();
  *(&v27 + 1) = v14;
  LOBYTE(v35[0]) = 4;
  v26 = sub_20C460820();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB958, &qword_20C465160);
  v41 = 5;
  sub_20C43F554(&qword_27C7BB978);
  sub_20C460840();
  (*(v6 + 8))(v9, v5);
  v24 = *(&v42 + 1);
  v25 = v42;
  *&v30 = v11;
  *(&v30 + 1) = v12;
  v17 = v29;
  v18 = v28;
  *&v31 = v29;
  *(&v31 + 1) = v28;
  v19 = v27;
  v32 = v27;
  *&v33 = v26;
  *(&v33 + 1) = v16;
  v34 = v42;
  v20 = v33;
  a2[2] = v27;
  a2[3] = v20;
  v21 = v31;
  *a2 = v30;
  a2[1] = v21;
  a2[4] = v34;
  sub_20C40C520(&v30, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v11;
  v35[1] = v12;
  v35[2] = v17;
  v35[3] = v18;
  v36 = v19;
  v37 = v26;
  v38 = v16;
  v39 = v25;
  v40 = v24;
  return sub_20C40C57C(v35);
}

uint64_t ImageAssetCacheKey.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v15 = *(v0 + 72);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2FAEC0](*&v1);
  sub_20C4604F0();
  MEMORY[0x20F2FAEA0](*(v4 + 16));
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = (v4 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      sub_20C4604F0();

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  sub_20C4604F0();
  sub_20C4604F0();
  MEMORY[0x20F2FAEA0](v8);
  return MEMORY[0x20F2FAEA0](v15);
}

uint64_t ImageAssetCacheKey.hashValue.getter()
{
  sub_20C460930();
  ImageAssetCacheKey.hash(into:)();
  return sub_20C460970();
}

uint64_t sub_20C43F2F0()
{
  sub_20C460930();
  ImageAssetCacheKey.hash(into:)();
  return sub_20C460970();
}

uint64_t sub_20C43F334()
{
  sub_20C460930();
  ImageAssetCacheKey.hash(into:)();
  return sub_20C460970();
}

BOOL _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v16 = *(a1 + 72);
  v17 = *(a1 + 64);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(a2 + 56);
  v14 = *(a2 + 72);
  v15 = *(a2 + 64);
  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_20C4608D0() & 1) == 0 || (sub_20C453A94(v2, v8) & 1) == 0 || (v3 != v7 || v4 != v10) && (sub_20C4608D0() & 1) == 0 || (v5 != v9 || v6 != v11) && (sub_20C4608D0() & 1) == 0)
  {
    return 0;
  }

  return v17 == v15 && v16 == v14;
}

unint64_t sub_20C43F4AC()
{
  result = qword_28110B890;
  if (!qword_28110B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B890);
  }

  return result;
}

unint64_t sub_20C43F500()
{
  result = qword_28110BE88;
  if (!qword_28110BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BE88);
  }

  return result;
}

uint64_t sub_20C43F554(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB958, &qword_20C465160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C43F5C0()
{
  result = qword_27C7BB968;
  if (!qword_27C7BB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB968);
  }

  return result;
}

uint64_t sub_20C43F614(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB950, &qword_20C465158);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_20C43F69C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C43F6E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageAssetCacheKey.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageAssetCacheKey.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C43F88C()
{
  result = qword_27C7BB980;
  if (!qword_27C7BB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB980);
  }

  return result;
}

unint64_t sub_20C43F8E4()
{
  result = qword_28110B880;
  if (!qword_28110B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B880);
  }

  return result;
}

unint64_t sub_20C43F93C()
{
  result = qword_28110B888;
  if (!qword_28110B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B888);
  }

  return result;
}

uint64_t sub_20C43F990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C467900 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65707954656C6966 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6375426874646977 && a2 == 0xEB0000000074656BLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_20C4608D0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

FitnessAsset::LogicalOperator_optional __swiftcall LogicalOperator.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_20C4607E0();

  if (v1 == 1)
  {
    v2.value = FitnessAsset_LogicalOperator_or;
  }

  else
  {
    v2.value = FitnessAsset_LogicalOperator_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t LogicalOperator.rawValue.getter(char a1)
{
  if (a1)
  {
    return 29295;
  }

  else
  {
    return 6581857;
  }
}

uint64_t sub_20C43FC14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 29295;
  }

  else
  {
    v4 = 6581857;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (*a2)
  {
    v6 = 29295;
  }

  else
  {
    v6 = 6581857;
  }

  if (*a2)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();
  }

  return v9 & 1;
}

uint64_t sub_20C43FCA8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20C4607E0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_20C43FD08(uint64_t *a1@<X8>)
{
  v2 = 6581857;
  if (*v1)
  {
    v2 = 29295;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_20C43FDE8()
{
  result = qword_27C7BB988;
  if (!qword_27C7BB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB988);
  }

  return result;
}

uint64_t sub_20C43FE3C()
{
  v1 = *v0;
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

uint64_t sub_20C43FEAC()
{
  *v0;
  sub_20C4604F0();
}

uint64_t sub_20C43FF08()
{
  v1 = *v0;
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

unint64_t sub_20C43FF84()
{
  result = qword_27C7BB990[0];
  if (!qword_27C7BB990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C7BB990);
  }

  return result;
}

uint64_t sub_20C43FFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v10 = type metadata accessor for ArtworkPredicateComparison();
  result = (*(*(a5 - 8) + 32))(a6 + *(v10 + 60), a2, a5);
  *(a6 + *(v10 + 64)) = v9;
  return result;
}

Swift::Bool __swiftcall ArtworkPredicateComparison.evaluate()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  (*(v4 + 16))(v5, v4);
  v14 = v1 + *(v3 + 60);
  (*(*(v3 + 40) + 16))(*(v3 + 24));
  v15 = *(v3 + 48);
  if (*(v2 + *(v3 + 64)) > 1u)
  {
    if (*(v2 + *(v3 + 64)) == 2)
    {
      v16 = sub_20C460480();
    }

    else
    {
      v16 = sub_20C4604A0();
    }
  }

  else if (*(v2 + *(v3 + 64)))
  {
    v16 = sub_20C460490();
  }

  else
  {
    v16 = sub_20C460470();
  }

  v17 = v16;
  v18 = *(v7 + 8);
  v18(v11, AssociatedTypeWitness);
  v18(v13, AssociatedTypeWitness);
  return v17 & 1;
}

BOOL sub_20C440308@<W0>(_BYTE *a1@<X8>)
{
  result = ArtworkPredicateComparison.evaluate()();
  *a1 = result;
  return result;
}

uint64_t sub_20C44033C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20C4403D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFC)
  {
    v11 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v14 = v10 + (v12 & ~v9) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_30:
      if (v5 == v11)
      {
        return (*(v4 + 48))();
      }

      v22 = (a1 + v12) & ~v9;
      if (v8 == v11)
      {
        return (*(v7 + 48))(v22, v8, v6);
      }

      v23 = *(v22 + v10);
      if (v23 >= 4)
      {
        return v23 - 3;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_30;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v10 + (v12 & ~v9) == -1)
  {
    v21 = 0;
  }

  else
  {
    if (v14 <= 3)
    {
      v20 = v10 + (v12 & ~v9) + 1;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  return v11 + (v21 | v19) + 1;
}

char *sub_20C4405D4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFC)
  {
    v12 = 252;
  }

  v13 = v9 + v10;
  v14 = v11 + ((v9 + v10) & ~v10) + 1;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_50:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    return v25();
  }

  else
  {
    result = (&result[v13] & ~v10);
    if (v8 == v12)
    {
      v26 = *(v7 + 56);

      return v26(result);
    }

    else
    {
      result[v11] = a2 + 3;
    }
  }

  return result;
}

uint64_t ArtworkPredicateKeyPath.init(root:keyPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ArtworkPredicateKeyPath();
  result = (*(*(a3 - 8) + 32))(&a4[*(v8 + 44)], a1, a3);
  *a4 = a2;
  return result;
}

uint64_t ArtworkPredicateKeyPath.evaluate()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14 - v9;
  v11 = v2 + *(a1 + 44);
  (*(v4 + 16))(v5, v4);
  v12 = *v2;
  swift_getAtKeyPath();
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_20C440ADC(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  v4 = a1[3];
  result = sub_20C4609D0();
  if (v6 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20C440B90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_20C440D14(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t ArtworkPredicateError.hashValue.getter()
{
  v1 = *v0;
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  return sub_20C460970();
}

unint64_t sub_20C440FF0()
{
  result = qword_27C7BBA98;
  if (!qword_27C7BBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBA98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkPredicateError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkPredicateError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20C441194(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E6F6870;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 30324;
    }

    else
    {
      v4 = 0x6863746177;
    }

    if (v3 == 2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x74656C626174;
    }

    else
    {
      v4 = 0x656E6F6870;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE200000000000000;
  v8 = 30324;
  if (a2 != 2)
  {
    v8 = 0x6863746177;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x74656C626174;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20C4608D0();
  }

  return v11 & 1;
}

uint64_t sub_20C4412AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 == 2)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xEF6C61757145724FLL;
  }

  v4 = 0xD000000000000012;
  v5 = 0x800000020C4674F0;
  if (!a1)
  {
    v4 = 0x5472657461657267;
    v5 = 0xEB000000006E6168;
  }

  if (a1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E6168547373656CLL;
  }

  if (v2 <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xEF6C61757145724FLL;
    }

    if (v6 != 0x6E6168547373656CLL)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x5472657461657267;
    }

    if (a2)
    {
      v9 = 0x800000020C4674F0;
    }

    else
    {
      v9 = 0xEB000000006E6168;
    }

    if (v6 != v8)
    {
      goto LABEL_27;
    }
  }

  if (v7 != v9)
  {
LABEL_27:
    v10 = sub_20C4608D0();
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10 & 1;
}

FitnessAsset::ComparisonOperator_optional __swiftcall ComparisonOperator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20C4607E0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ComparisonOperator.rawValue.getter()
{
  v1 = 0x5472657461657267;
  *v0;
  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6E6168547373656CLL;
  }
}

void sub_20C441518(uint64_t *a1@<X8>)
{
  v2 = 0xEB000000006E6168;
  v3 = 0x5472657461657267;
  v4 = 0xE800000000000000;
  if (*v1 != 2)
  {
    v4 = 0xEF6C61757145724FLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000020C4674F0;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6168547373656CLL;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_20C441664()
{
  result = qword_27C7BBAA0;
  if (!qword_27C7BBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBAA0);
  }

  return result;
}

uint64_t sub_20C4416B8()
{
  v1 = *v0;
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

uint64_t sub_20C441794()
{
  *v0;
  *v0;
  *v0;
  sub_20C4604F0();
}

uint64_t sub_20C44185C()
{
  v1 = *v0;
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

unint64_t sub_20C441944()
{
  result = qword_27C7BBAA8[0];
  if (!qword_27C7BBAA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C7BBAA8);
  }

  return result;
}

uint64_t sub_20C441A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20C441A84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_20C441BC4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

Swift::Bool __swiftcall ArtworkPredicateLogicalOperation.evaluate()()
{
  v1 = v0;
  v2 = *(v0 + 80);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  if (v2)
  {
    (*(v4 + 16))(&v10 + 3, v3, v4);
    if (v10 & 0x1000000)
    {
      return 1;
    }

    else
    {
      v8 = v1[8];
      v9 = v1[9];
      __swift_project_boxed_opaque_existential_1(v1 + 5, v8);
      (*(v9 + 16))(&v10 + 2, v8, v9);
      return BYTE2(v10);
    }
  }

  else
  {
    (*(v4 + 16))(&v10 + 1, v3, v4);
    if (BYTE1(v10) == 1)
    {
      v6 = v1[8];
      v7 = v1[9];
      __swift_project_boxed_opaque_existential_1(v1 + 5, v6);
      (*(v7 + 16))(&v10, v6, v7);
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

BOOL sub_20C441FCC@<W0>(_BYTE *a1@<X8>)
{
  result = ArtworkPredicateLogicalOperation.evaluate()();
  *a1 = result;
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_20C44201C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C442064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C4420CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ArtworkPredicateEquality();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 60), a2, a4);
}

Swift::Bool __swiftcall ArtworkPredicateEquality.evaluate()()
{
  v2 = v0;
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  (*(v3 + 16))(v4, v3);
  v13 = v1 + *(v2 + 60);
  (*(*(v2 + 40) + 16))(*(v2 + 24));
  v14 = *(v2 + 48);
  LOBYTE(v13) = sub_20C4604B0();
  v15 = *(v6 + 8);
  v15(v10, AssociatedTypeWitness);
  v15(v12, AssociatedTypeWitness);
  return v13 & 1;
}

BOOL sub_20C442398@<W0>(_BYTE *a1@<X8>)
{
  result = ArtworkPredicateEquality.evaluate()();
  *a1 = result;
  return result;
}

uint64_t sub_20C4423CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20C442458(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_20C442634(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

void __swiftcall ArtworkPredicateInput.init(dynamicTypeSize:gridSizeClass:horizontalSizeClass:platform:verticalSizeClass:)(FitnessAsset::ArtworkPredicateInput *__return_ptr retstr, Swift::Int dynamicTypeSize, Swift::Int gridSizeClass, Swift::String horizontalSizeClass, FitnessAsset::AssetPlatform platform, Swift::String verticalSizeClass)
{
  retstr->dynamicTypeSize = dynamicTypeSize;
  retstr->gridSizeClass = gridSizeClass;
  retstr->horizontalSizeClass = horizontalSizeClass;
  retstr->platform = platform;
  retstr->verticalSizeClass = verticalSizeClass;
}

uint64_t ArtworkPredicateInput.horizontalSizeClass.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ArtworkPredicateInput.verticalSizeClass.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

unint64_t sub_20C442994()
{
  v1 = *v0;
  v2 = 0x5463696D616E7964;
  v3 = 0xD000000000000013;
  v4 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657A695364697267;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20C442A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C443A40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C442A88(uint64_t a1)
{
  v2 = sub_20C442DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C442AC4(uint64_t a1)
{
  v2 = sub_20C442DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C442B10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_20C442B48()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ArtworkPredicateInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBBB0, &qword_20C465970);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v19 = v1[2];
  v20 = v8;
  v18 = v10;
  v17 = *(v1 + 32);
  v11 = v1[6];
  v16 = v1[5];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C442DCC();
  sub_20C4609C0();
  v27 = 0;
  v13 = v21;
  sub_20C4608A0();
  if (!v13)
  {
    v14 = v17;
    v26 = 1;
    sub_20C4608A0();
    v25 = 2;
    sub_20C460890();
    v24 = v14;
    v23 = 3;
    sub_20C442E20();
    sub_20C4608B0();
    v22 = 4;
    sub_20C460890();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_20C442DCC()
{
  result = qword_27C7BBBB8;
  if (!qword_27C7BBBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBB8);
  }

  return result;
}

unint64_t sub_20C442E20()
{
  result = qword_27C7BBBC0;
  if (!qword_27C7BBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBC0);
  }

  return result;
}

uint64_t ArtworkPredicateInput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBBC8, &qword_20C465978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C442DCC();
  sub_20C4609B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v11 = sub_20C460830();
  v30 = 1;
  v25 = sub_20C460830();
  v29 = 2;
  v12 = sub_20C460820();
  v14 = v13;
  v24 = v12;
  v27 = 3;
  sub_20C443118();
  sub_20C460840();
  v23 = v28;
  v26 = 4;
  v15 = sub_20C460820();
  v18 = v17;
  v19 = *(v6 + 8);
  v22 = v15;
  v19(v9, v5);
  v20 = v24;
  v21 = v25;
  *a2 = v11;
  *(a2 + 8) = v21;
  *(a2 + 16) = v20;
  *(a2 + 24) = v14;
  *(a2 + 32) = v23;
  *(a2 + 40) = v22;
  *(a2 + 48) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_20C443118()
{
  result = qword_27C7BBBD0;
  if (!qword_27C7BBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBD0);
  }

  return result;
}

uint64_t ArtworkPredicateInput.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  MEMORY[0x20F2FAEA0](*v0);
  MEMORY[0x20F2FAEA0](v1);
  sub_20C4604F0();
  sub_20C4604F0();

  return sub_20C4604F0();
}

uint64_t ArtworkPredicateInput.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  MEMORY[0x20F2FAEA0](v2);
  sub_20C4604F0();
  sub_20C4604F0();

  sub_20C4604F0();
  return sub_20C460970();
}

uint64_t sub_20C4433A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  MEMORY[0x20F2FAEA0](v2);
  sub_20C4604F0();
  sub_20C4604F0();

  sub_20C4604F0();
  return sub_20C460970();
}

uint64_t _s12FitnessAsset21ArtworkPredicateInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (v10 = *(a1 + 24), (sub_20C4608D0())) && (sub_20C441194(v4, v7))
    {
      if (v5 == v8 && v6 == v9)
      {
        return 1;
      }

      else
      {

        return sub_20C4608D0();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_20C44359C(void *a1)
{
  a1[1] = sub_20C4435D4();
  a1[2] = sub_20C443628();
  result = sub_20C44367C();
  a1[3] = result;
  return result;
}

unint64_t sub_20C4435D4()
{
  result = qword_27C7BBBD8;
  if (!qword_27C7BBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBD8);
  }

  return result;
}

unint64_t sub_20C443628()
{
  result = qword_27C7BBBE0;
  if (!qword_27C7BBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBE0);
  }

  return result;
}

unint64_t sub_20C44367C()
{
  result = qword_27C7BBBE8;
  if (!qword_27C7BBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBE8);
  }

  return result;
}

unint64_t sub_20C4436D4()
{
  result = qword_27C7BBBF0;
  if (!qword_27C7BBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBF0);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20C443744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C44378C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkPredicateInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkPredicateInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C44393C()
{
  result = qword_27C7BBBF8;
  if (!qword_27C7BBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBF8);
  }

  return result;
}

unint64_t sub_20C443994()
{
  result = qword_27C7BBC00;
  if (!qword_27C7BBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC00);
  }

  return result;
}

unint64_t sub_20C4439EC()
{
  result = qword_27C7BBC08;
  if (!qword_27C7BBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC08);
  }

  return result;
}

uint64_t sub_20C443A40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A695364697267 && a2 == 0xED00007373616C43 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C467920 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C467940 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_20C4608D0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_20C443C14()
{
  v1 = 0x676E696863746566;
  if (*v0 != 1)
  {
    v1 = 0x64656863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_20C443C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C445DA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C443C90(uint64_t a1)
{
  v2 = sub_20C445694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C443CCC(uint64_t a1)
{
  v2 = sub_20C445694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C443D08()
{
  if (*v0)
  {
    result = 0x637465467473616CLL;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_20C443D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x637465467473616CLL && a2 == 0xEB00000000646568)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C443E18(uint64_t a1)
{
  v2 = sub_20C4456E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C443E54(uint64_t a1)
{
  v2 = sub_20C4456E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C443E90(uint64_t a1)
{
  v2 = sub_20C44573C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C443ECC(uint64_t a1)
{
  v2 = sub_20C44573C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C443F08(uint64_t a1)
{
  v2 = sub_20C445790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C443F44(uint64_t a1)
{
  v2 = sub_20C445790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonogramLoadState.encode(to:)(void *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC10, &unk_20C465BD0);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v44 = &v39 - v3;
  v45 = sub_20C45FC90();
  v43 = *(v45 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  v6 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v47 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC18, &qword_20C465BE0);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC20, &qword_20C465BE8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  State = type metadata accessor for MonogramLoadState();
  v18 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC28, &unk_20C465BF0);
  v50 = *(v21 - 8);
  v51 = v21;
  v22 = *(v50 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v39 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C445694();
  sub_20C4609C0();
  sub_20C420818(v49, v20);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
  v27 = (*(*(v26 - 8) + 48))(v20, 2, v26);
  if (v27)
  {
    if (v27 == 1)
    {
      v53 = 0;
      sub_20C445790();
      v28 = v51;
      sub_20C460870();
      (*(v13 + 8))(v16, v12);
    }

    else
    {
      v54 = 1;
      sub_20C44573C();
      v28 = v51;
      sub_20C460870();
      (*(v39 + 8))(v11, v40);
    }

    return (*(v50 + 8))(v24, v28);
  }

  else
  {
    v29 = v41;
    v30 = *(v26 + 48);
    sub_20C41F6F8(v20, v47);
    v31 = v43;
    v32 = &v20[v30];
    v33 = v45;
    (*(v43 + 32))(v48, v32, v45);
    v57 = 2;
    sub_20C4456E8();
    v34 = v44;
    v35 = v51;
    sub_20C460870();
    v56 = 0;
    sub_20C445838(&qword_27C7BB298);
    v36 = v46;
    v37 = v52;
    sub_20C4608B0();
    if (!v37)
    {
      v55 = 1;
      sub_20C445EBC(&qword_27C7BACB0, MEMORY[0x277CC9578]);
      sub_20C4608B0();
    }

    (*(v29 + 8))(v34, v36);
    (*(v31 + 8))(v48, v33);
    sub_20C40B440(v47, &qword_27C7BB268, &qword_20C462D40);
    return (*(v50 + 8))(v24, v35);
  }
}

uint64_t MonogramLoadState.hash(into:)()
{
  v1 = sub_20C45FC90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  State = type metadata accessor for MonogramLoadState();
  v11 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C420818(v0, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
  v15 = (*(*(v14 - 8) + 48))(v13, 2, v14);
  if (v15)
  {
    return MEMORY[0x20F2FAEA0](v15 != 1);
  }

  v16 = *(v14 + 48);
  sub_20C41F6F8(v13, v9);
  (*(v2 + 32))(v5, &v13[v16], v1);
  MEMORY[0x20F2FAEA0](2);
  sub_20C445EBC(&qword_27C7BBC50, type metadata accessor for Monogram);
  sub_20C4457E4();
  sub_20C460990();
  sub_20C445EBC(qword_27C7BACD0, MEMORY[0x277CC9578]);
  sub_20C460460();
  (*(v2 + 8))(v5, v1);
  return sub_20C40B440(v9, &qword_27C7BB268, &qword_20C462D40);
}

uint64_t MonogramLoadState.hashValue.getter()
{
  sub_20C460930();
  MonogramLoadState.hash(into:)();
  return sub_20C460970();
}

uint64_t MonogramLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC60, &qword_20C465C00);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v56 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC68, &qword_20C465C08);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC70, &qword_20C465C10);
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC78, &unk_20C465C18);
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  State = type metadata accessor for MonogramLoadState();
  v18 = *(*(State - 8) + 64);
  v19 = MEMORY[0x28223BE20](State);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_20C445694();
  v26 = v62;
  sub_20C4609B0();
  if (!v26)
  {
    v62 = State;
    v28 = v57;
    v27 = v58;
    v50 = v21;
    v51 = v23;
    v29 = v59;
    v30 = v60;
    v31 = sub_20C460850();
    v32 = (2 * *(v31 + 16)) | 1;
    v64 = v31;
    v65 = v31 + 32;
    v66 = 0;
    v67 = v32;
    v33 = sub_20C41ED38();
    if (v33 == 3 || v66 != v67 >> 1)
    {
      v37 = sub_20C460770();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670) + 48);
      *v39 = v62;
      sub_20C460800();
      sub_20C460760();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
      swift_willThrow();
      (*(v61 + 8))(v16, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33)
      {
        v34 = v61;
        if (v33 == 1)
        {
          v68 = 1;
          sub_20C44573C();
          sub_20C4607F0();
          (*(v52 + 8))(v29, v53);
          (*(v34 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
          v36 = v51;
          (*(*(v35 - 8) + 56))(v51, 2, 2, v35);
        }

        else
        {
          v68 = 2;
          sub_20C4456E8();
          sub_20C4607F0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
          v68 = 0;
          sub_20C445838(&qword_27C7BB2E8);
          v43 = v50;
          v44 = v56;
          sub_20C460840();
          v46 = v43;
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
          v47 = *(v59 + 12);
          sub_20C45FC90();
          v62 = 0;
          v68 = 1;
          sub_20C445EBC(&qword_27C7BACC8, MEMORY[0x277CC9578]);
          v48 = v55;
          v49 = v62;
          sub_20C460840();
          if (v49)
          {
            (*(v54 + 8))(v44, v48);
            (*(v34 + 8))(v16, v13);
            swift_unknownObjectRelease();
            sub_20C40B440(v46, &qword_27C7BB268, &qword_20C462D40);
            return __swift_destroy_boxed_opaque_existential_1(v63);
          }

          (*(v54 + 8))(v44, v48);
          (*(v34 + 8))(v16, v13);
          swift_unknownObjectRelease();
          (*(*(v59 - 1) + 56))(v46, 0, 2);
          v36 = v51;
          sub_20C445920(v46, v51);
        }
      }

      else
      {
        v68 = 0;
        sub_20C445790();
        sub_20C4607F0();
        v42 = v61;
        (*(v28 + 8))(v12, v27);
        (*(v42 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
        v36 = v51;
        (*(*(v45 - 8) + 56))(v51, 1, 2, v45);
      }

      sub_20C445920(v36, v30);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_20C44516C()
{
  sub_20C460930();
  MonogramLoadState.hash(into:)();
  return sub_20C460970();
}

uint64_t sub_20C4451B0()
{
  sub_20C460930();
  MonogramLoadState.hash(into:)();
  return sub_20C460970();
}

uint64_t _s12FitnessAsset13MonogramStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FC90();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  State = type metadata accessor for MonogramLoadState();
  v16 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBCD8, &qword_20C4660B8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v40 - v22;
  v24 = &v40 + *(v21 + 56) - v22;
  sub_20C420818(a1, &v40 - v22);
  sub_20C420818(a2, v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
  v26 = *(*(v25 - 8) + 48);
  v27 = v26(v23, 2, v25);
  if (!v27)
  {
    v41 = v8;
    v42 = v10;
    v28 = v43;
    sub_20C420818(v23, v18);
    v29 = *(v25 + 48);
    if (!v26(v24, 2, v25))
    {
      sub_20C41F6F8(v24, v14);
      v32 = v28;
      v33 = *(v28 + 32);
      v34 = v42;
      v33(v42, &v18[v29], v4);
      v35 = &v24[v29];
      v36 = v41;
      v33(v41, v35, v4);
      type metadata accessor for Monogram();
      sub_20C445EBC(&qword_27C7BBCE0, type metadata accessor for Monogram);
      sub_20C422004();
      sub_20C4139F0();
      v37 = sub_20C4609A0();
      sub_20C40B440(v18, &qword_27C7BB268, &qword_20C462D40);
      if (v37)
      {
        v30 = sub_20C45FC70();
        v38 = *(v32 + 8);
        v38(v36, v4);
        v38(v34, v4);
        sub_20C40B440(v14, &qword_27C7BB268, &qword_20C462D40);
        sub_20C445F04(v23);
        return v30 & 1;
      }

      v39 = *(v32 + 8);
      v39(v36, v4);
      v39(v34, v4);
      sub_20C40B440(v14, &qword_27C7BB268, &qword_20C462D40);
      sub_20C445F04(v23);
      goto LABEL_10;
    }

    (*(v28 + 8))(&v18[v29], v4);
    sub_20C40B440(v18, &qword_27C7BB268, &qword_20C462D40);
    goto LABEL_9;
  }

  if (v27 != 1)
  {
    if (v26(v24, 2, v25) == 2)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_20C40B440(v23, &qword_27C7BBCD8, &qword_20C4660B8);
LABEL_10:
    v30 = 0;
    return v30 & 1;
  }

  if (v26(v24, 2, v25) != 1)
  {
    goto LABEL_9;
  }

LABEL_8:
  sub_20C445F04(v23);
  v30 = 1;
  return v30 & 1;
}

unint64_t sub_20C445694()
{
  result = qword_27C7BBC30;
  if (!qword_27C7BBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC30);
  }

  return result;
}

unint64_t sub_20C4456E8()
{
  result = qword_27C7BBC38;
  if (!qword_27C7BBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC38);
  }

  return result;
}

unint64_t sub_20C44573C()
{
  result = qword_27C7BBC40;
  if (!qword_27C7BBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC40);
  }

  return result;
}

unint64_t sub_20C445790()
{
  result = qword_27C7BBC48;
  if (!qword_27C7BBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC48);
  }

  return result;
}

unint64_t sub_20C4457E4()
{
  result = qword_27C7BBC58;
  if (!qword_27C7BBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC58);
  }

  return result;
}

uint64_t sub_20C445838(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB268, &qword_20C462D40);
    sub_20C445EBC(&qword_27C7BB2A0, type metadata accessor for Monogram);
    sub_20C445EBC(&qword_27C7BB2A8, type metadata accessor for Monogram);
    sub_20C41F800();
    sub_20C41F854();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C445920(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for MonogramLoadState();
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

unint64_t sub_20C445A38()
{
  result = qword_27C7BBC88;
  if (!qword_27C7BBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC88);
  }

  return result;
}

unint64_t sub_20C445A90()
{
  result = qword_27C7BBC90;
  if (!qword_27C7BBC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC90);
  }

  return result;
}

unint64_t sub_20C445AE8()
{
  result = qword_27C7BBC98;
  if (!qword_27C7BBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC98);
  }

  return result;
}

unint64_t sub_20C445B40()
{
  result = qword_27C7BBCA0;
  if (!qword_27C7BBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCA0);
  }

  return result;
}

unint64_t sub_20C445B98()
{
  result = qword_27C7BBCA8;
  if (!qword_27C7BBCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCA8);
  }

  return result;
}

unint64_t sub_20C445BF0()
{
  result = qword_27C7BBCB0;
  if (!qword_27C7BBCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCB0);
  }

  return result;
}

unint64_t sub_20C445C48()
{
  result = qword_27C7BBCB8;
  if (!qword_27C7BBCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCB8);
  }

  return result;
}

unint64_t sub_20C445CA0()
{
  result = qword_27C7BBCC0;
  if (!qword_27C7BBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCC0);
  }

  return result;
}

unint64_t sub_20C445CF8()
{
  result = qword_27C7BBCC8;
  if (!qword_27C7BBCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCC8);
  }

  return result;
}

unint64_t sub_20C445D50()
{
  result = qword_27C7BBCD0;
  if (!qword_27C7BBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCD0);
  }

  return result;
}

uint64_t sub_20C445DA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C4608D0();

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

uint64_t sub_20C445EBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C445F04(uint64_t a1)
{
  State = type metadata accessor for MonogramLoadState();
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t sub_20C445F60(uint64_t a1)
{
  v2 = sub_20C447648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C445F9C(uint64_t a1)
{
  v2 = sub_20C447648();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_20C445FD8()
{
  v1 = *v0;
  if (v1 > 2)
  {
    v4 = 0x6570704177656976;
    if (v1 != 4)
    {
      v4 = 0x657A695377656976;
    }

    if (v1 == 3)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 == 1)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (*v0)
    {
      return v2;
    }

    else
    {
      return 0xD00000000000001ALL;
    }
  }
}

uint64_t sub_20C4460BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C44A80C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C4460E4(uint64_t a1)
{
  v2 = sub_20C4473EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C446120(uint64_t a1)
{
  v2 = sub_20C4473EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C44615C(uint64_t a1)
{
  v2 = sub_20C4475F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C446198(uint64_t a1)
{
  v2 = sub_20C4475F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C4461D4()
{
  if (*v0)
  {
    result = 0x79654B6568636163;
  }

  else
  {
    result = 0x726F727265;
  }

  *v0;
  return result;
}

uint64_t sub_20C44620C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C4462E4(uint64_t a1)
{
  v2 = sub_20C4475A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C446320(uint64_t a1)
{
  v2 = sub_20C4475A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C44635C(uint64_t a1)
{
  v2 = sub_20C44754C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C446398(uint64_t a1)
{
  v2 = sub_20C44754C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C4463D4(uint64_t a1)
{
  v2 = sub_20C4474F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C446410(uint64_t a1)
{
  v2 = sub_20C4474F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C44644C(uint64_t a1)
{
  v2 = sub_20C4474A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C446488(uint64_t a1)
{
  v2 = sub_20C4474A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAssetAction.encode(to:)(void *a1)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBCE8, &qword_20C4660C0);
  v82 = *(v83 - 8);
  v2 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v71 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBCF0, &qword_20C4660C8);
  v78 = *(v80 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v75 = &v71 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBCF8, &qword_20C4660D0);
  v87 = *(v88 - 8);
  v6 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v84 = &v71 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD00, &qword_20C4660D8);
  v77 = *(v79 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v74 = &v71 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD08, &qword_20C4660E0);
  v89 = *(v90 - 8);
  v10 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v85 = &v71 - v11;
  v91 = type metadata accessor for ImageAsset();
  v12 = *(*(v91 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v91);
  v76 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = &v71 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD10, &qword_20C4660E8);
  v72 = *(v73 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v18 = &v71 - v17;
  v19 = type metadata accessor for ImageAssetAction();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD18, &qword_20C4660F0);
  v93 = *(v23 - 8);
  v24 = *(v93 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C4473EC();
  sub_20C4609C0();
  sub_20C447440(v105, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v53 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48)];
      v54 = *(v53 + 4);
      v55 = *(v53 + 2);
      v103 = *(v53 + 3);
      v104 = v54;
      v56 = *v53;
      v101 = *(v53 + 1);
      v102 = v55;
      v100 = v56;
      v57 = v22;
      v58 = v76;
      sub_20C448B40(v57, v76, type metadata accessor for ImageAsset);
      LOBYTE(v95) = 3;
      sub_20C44754C();
      v59 = v84;
      sub_20C460870();
      LOBYTE(v95) = 0;
      sub_20C449E9C(&qword_28110BC98, type metadata accessor for ImageAsset);
      v60 = v88;
      v61 = v92;
      sub_20C4608B0();
      if (v61)
      {
        sub_20C40C57C(&v100);
        (*(v87 + 8))(v59, v60);
        sub_20C44AA8C(v58, type metadata accessor for ImageAsset);
        return (*(v93 + 8))(v26, v23);
      }

      v97 = v102;
      v98 = v103;
      v99 = v104;
      v96 = v101;
      v95 = v100;
      v94 = 1;
      sub_20C40B974();
      sub_20C4608B0();
      (*(v87 + 8))(v59, v60);
      sub_20C44AA8C(v58, type metadata accessor for ImageAsset);
      (*(v93 + 8))(v26, v23);
      return sub_20C40C57C(&v100);
    }

    v29 = v23;
    v43 = *v22;
    v44 = *(v22 + 1);
    if (EnumCaseMultiPayload == 4)
    {
      LOBYTE(v100) = 4;
      sub_20C4474F8();
      v18 = v75;
      sub_20C460870();
      *&v100 = v43;
      *(&v100 + 1) = v44;
      type metadata accessor for CGSize();
      sub_20C449E9C(&qword_28110B3E0, type metadata accessor for CGSize);
      v45 = v80;
      sub_20C4608B0();
      v46 = &v102 + 8;
    }

    else
    {
      LOBYTE(v100) = 5;
      sub_20C4474A4();
      v18 = v81;
      sub_20C460870();
      *&v100 = v43;
      *(&v100 + 1) = v44;
      type metadata accessor for CGSize();
      sub_20C449E9C(&qword_28110B3E0, type metadata accessor for CGSize);
      v45 = v83;
      sub_20C4608B0();
      v46 = &v104 + 8;
    }

    goto LABEL_19;
  }

  if (!EnumCaseMultiPayload)
  {
    v47 = *(v22 + 2);
    v48 = *(v22 + 4);
    v103 = *(v22 + 3);
    v104 = v48;
    v49 = *v22;
    v101 = *(v22 + 1);
    v102 = v47;
    v100 = v49;
    v50 = *(v22 + 10);
    v51 = *(v22 + 11);
    LOBYTE(v95) = 0;
    sub_20C447648();
    v29 = v23;
    sub_20C460870();
    v97 = v102;
    v98 = v103;
    v99 = v104;
    v96 = v101;
    v95 = v100;
    v94 = 0;
    sub_20C40B974();
    v45 = v73;
    v52 = v92;
    sub_20C4608B0();
    if (v52)
    {
      (*(v72 + 8))(v18, v45);
      (*(v93 + 8))(v26, v23);
      return sub_20C40C57C(&v100);
    }

    sub_20C40C57C(&v100);
    *&v95 = v50;
    *(&v95 + 1) = v51;
    v94 = 1;
    type metadata accessor for CGSize();
    sub_20C449E9C(&qword_28110B3E0, type metadata accessor for CGSize);
    sub_20C4608B0();
    v46 = &v99 + 8;
LABEL_19:
    (*(*(v46 - 32) + 8))(v18, v45);
    v69 = *(v93 + 8);
    v70 = v26;
    return v69(v70, v29);
  }

  v29 = v23;
  if (EnumCaseMultiPayload == 1)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
    v31 = &v22[*(v30 + 48)];
    v32 = *(v31 + 4);
    v33 = *(v31 + 2);
    v103 = *(v31 + 3);
    v104 = v32;
    v34 = *v31;
    v101 = *(v31 + 1);
    v102 = v33;
    v100 = v34;
    v35 = &v22[*(v30 + 64)];
    v36 = *v35;
    v37 = *(v35 + 1);
    v38 = v22;
    v39 = v86;
    sub_20C448B40(v38, v86, type metadata accessor for ImageAsset);
    LOBYTE(v95) = 1;
    sub_20C4475F4();
    v40 = v85;
    sub_20C460870();
    LOBYTE(v95) = 0;
    sub_20C449E9C(&qword_28110BC98, type metadata accessor for ImageAsset);
    v41 = v90;
    v42 = v92;
    sub_20C4608B0();
    if (v42)
    {
      sub_20C40C57C(&v100);
    }

    else
    {
      v97 = v102;
      v98 = v103;
      v99 = v104;
      v96 = v101;
      v95 = v100;
      v94 = 1;
      sub_20C40B974();
      sub_20C4608B0();
      sub_20C40C57C(&v100);
      *&v95 = v36;
      *(&v95 + 1) = v37;
      v94 = 2;
      type metadata accessor for CGSize();
      sub_20C449E9C(&qword_28110B3E0, type metadata accessor for CGSize);
      sub_20C4608B0();
    }

    (*(v89 + 8))(v40, v41);
    sub_20C44AA8C(v39, type metadata accessor for ImageAsset);
    goto LABEL_16;
  }

  v63 = *v22;
  v64 = *(v22 + 40);
  v101 = *(v22 + 24);
  v102 = v64;
  v65 = *(v22 + 72);
  v103 = *(v22 + 56);
  v104 = v65;
  v100 = *(v22 + 8);
  LOBYTE(v95) = 2;
  sub_20C4475A0();
  v66 = v74;
  sub_20C460870();
  LOBYTE(v95) = v63;
  v94 = 0;
  sub_20C419B7C();
  v67 = v79;
  v68 = v92;
  sub_20C4608B0();
  if (v68)
  {
    sub_20C40C57C(&v100);
    (*(v77 + 8))(v66, v67);
LABEL_16:
    v69 = *(v93 + 8);
    v70 = v26;
    return v69(v70, v29);
  }

  v97 = v102;
  v98 = v103;
  v99 = v104;
  v96 = v101;
  v95 = v100;
  v94 = 1;
  sub_20C40B974();
  sub_20C4608B0();
  (*(v77 + 8))(v66, v67);
  (*(v93 + 8))(v26, v23);
  return sub_20C40C57C(&v100);
}

uint64_t type metadata accessor for ImageAssetAction()
{
  result = qword_28110BA88;
  if (!qword_28110BA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C4473EC()
{
  result = qword_28110BAE0;
  if (!qword_28110BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAE0);
  }

  return result;
}

uint64_t sub_20C447440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAssetAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C4474A4()
{
  result = qword_27C7BBD20;
  if (!qword_27C7BBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD20);
  }

  return result;
}

unint64_t sub_20C4474F8()
{
  result = qword_28110BAC8;
  if (!qword_28110BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAC8);
  }

  return result;
}

unint64_t sub_20C44754C()
{
  result = qword_28110BB20;
  if (!qword_28110BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB20);
  }

  return result;
}

unint64_t sub_20C4475A0()
{
  result = qword_27C7BBD28;
  if (!qword_27C7BBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD28);
  }

  return result;
}

unint64_t sub_20C4475F4()
{
  result = qword_28110BAF8;
  if (!qword_28110BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAF8);
  }

  return result;
}

unint64_t sub_20C447648()
{
  result = qword_28110BB38[0];
  if (!qword_28110BB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28110BB38);
  }

  return result;
}

uint64_t ImageAssetAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD30, &qword_20C4660F8);
  v131 = *(v132 - 8);
  v3 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v139 = &v113 - v4;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD38, &qword_20C466100);
  v125 = *(v126 - 8);
  v5 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v138 = &v113 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD40, &qword_20C466108);
  v128 = *(v129 - 8);
  v7 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v134 = &v113 - v8;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD48, &qword_20C466110);
  v123 = *(v124 - 8);
  v9 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v137 = &v113 - v10;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD50, &qword_20C466118);
  v130 = *(v127 - 8);
  v11 = *(v130 + 64);
  MEMORY[0x28223BE20](v127);
  v133 = &v113 - v12;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD58, &qword_20C466120);
  v121 = *(v122 - 8);
  v13 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v136 = &v113 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD60, &unk_20C466128);
  v141 = *(v142 - 8);
  v15 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v17 = &v113 - v16;
  v135 = type metadata accessor for ImageAssetAction();
  v18 = *(*(v135 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v135);
  v120 = (&v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v119 = (&v113 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v113 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v113 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v113 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v113 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v113 - v35;
  v38 = a1[3];
  v37 = a1[4];
  v143 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_20C4473EC();
  v39 = v157;
  sub_20C4609B0();
  v157 = v39;
  if (!v39)
  {
    v113 = v34;
    v114 = v28;
    v115 = v25;
    v40 = v136;
    v41 = v137;
    v116 = v31;
    v42 = v138;
    v43 = v139;
    v117 = v36;
    v44 = v140;
    v118 = v17;
    v45 = sub_20C460850();
    v46 = (2 * *(v45 + 16)) | 1;
    v153 = v45;
    v154 = v45 + 32;
    v155 = 0;
    v156 = v46;
    v47 = sub_20C41788C();
    if (v47 == 6 || v155 != v156 >> 1)
    {
      v55 = sub_20C460770();
      v56 = swift_allocError();
      v58 = v57;
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670) + 48);
      *v58 = v135;
      v60 = v142;
      v61 = v118;
      sub_20C460800();
      sub_20C460760();
      (*(*(v55 - 8) + 104))(v58, *MEMORY[0x277D84160], v55);
      v157 = v56;
      swift_willThrow();
      (*(v141 + 8))(v61, v60);
    }

    else
    {
      if (v47 <= 2u)
      {
        if (v47)
        {
          v48 = v142;
          v49 = v118;
          if (v47 == 1)
          {
            v146[0] = 1;
            sub_20C4475F4();
            v50 = v133;
            v51 = v157;
            sub_20C4607F0();
            v157 = v51;
            if (v51)
            {
LABEL_24:
              (*(v141 + 8))(v49, v48);
              goto LABEL_11;
            }

            type metadata accessor for ImageAsset();
            v146[0] = 0;
            sub_20C449E9C(&qword_27C7BAF30, type metadata accessor for ImageAsset);
            v52 = v116;
            v53 = v127;
            v54 = v157;
            sub_20C460840();
            v157 = v54;
            if (v54)
            {
              (*(v130 + 8))(v50, v53);
              goto LABEL_24;
            }

            v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
            v96 = v52 + *(v95 + 48);
            v146[0] = 1;
            sub_20C40BDE4();
            v97 = v50;
            v98 = v157;
            sub_20C460840();
            v99 = v130;
            if (v98)
            {
              (*(v130 + 8))(v97, v53);
              (*(v141 + 8))(v118, v48);
              swift_unknownObjectRelease();
              sub_20C44AA8C(v52, type metadata accessor for ImageAsset);
              v157 = v98;
              return __swift_destroy_boxed_opaque_existential_1(v143);
            }

            v157 = *(v95 + 64);
            type metadata accessor for CGSize();
            LOBYTE(v148) = 2;
            sub_20C449E9C(&qword_27C7BAC78, type metadata accessor for CGSize);
            sub_20C460840();
            v157 = 0;
            (*(v99 + 8))(v97, v53);
            (*(v141 + 8))(v118, v48);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v109 = v52;
LABEL_52:
            v112 = v117;
            sub_20C448B40(v109, v117, type metadata accessor for ImageAssetAction);
            sub_20C448B40(v112, v44, type metadata accessor for ImageAssetAction);
            return __swift_destroy_boxed_opaque_existential_1(v143);
          }

          v146[0] = 2;
          sub_20C4475A0();
          v72 = v157;
          sub_20C4607F0();
          v157 = v72;
          if (v72)
          {
            goto LABEL_24;
          }

          v146[0] = 0;
          sub_20C41B93C();
          v73 = v124;
          v74 = v157;
          sub_20C460840();
          v157 = v74;
          if (v74)
          {
            (*(v123 + 8))(v41, v73);
            goto LABEL_24;
          }

          v100 = v145;
          v147 = 1;
          sub_20C40BDE4();
          v101 = v157;
          sub_20C460840();
          v102 = (v123 + 8);
          v103 = (v141 + 8);
          v157 = v101;
          if (v101)
          {
            (*v102)(v41, v73);
            (*v103)(v118, v48);
            goto LABEL_11;
          }

          (*v102)(v41, v73);
          (*v103)(v118, v48);
          swift_unknownObjectRelease();
          *&v146[39] = v150;
          *&v146[23] = v149;
          *&v146[55] = v151;
          *&v146[71] = v152;
          *&v146[7] = v148;
          v110 = *&v146[48];
          v104 = v114;
          *(v114 + 33) = *&v146[32];
          *(v104 + 49) = v110;
          *(v104 + 65) = *&v146[64];
          v111 = *&v146[16];
          *(v104 + 1) = *v146;
          *v104 = v100;
          *(v104 + 10) = *&v146[79];
          *(v104 + 17) = v111;
LABEL_51:
          swift_storeEnumTagMultiPayload();
          v109 = v104;
          goto LABEL_52;
        }

        v146[0] = 0;
        sub_20C447648();
        v67 = v142;
        v68 = v118;
        v69 = v157;
        sub_20C4607F0();
        v157 = v69;
        if (v69)
        {
          goto LABEL_18;
        }

        v147 = 0;
        sub_20C40BDE4();
        v80 = v122;
        v81 = v157;
        sub_20C460840();
        v71 = v141;
        v157 = v81;
        if (v81)
        {
          (*(v121 + 8))(v40, v80);
        }

        else
        {
          v149 = *&v146[16];
          v150 = *&v146[32];
          v151 = *&v146[48];
          v152 = *&v146[64];
          v148 = *v146;
          type metadata accessor for CGSize();
          v144 = 1;
          sub_20C449E9C(&qword_27C7BAC78, type metadata accessor for CGSize);
          v90 = v157;
          sub_20C460840();
          v157 = v90;
          v91 = v121;
          if (!v90)
          {
            (*(v121 + 8))(v40, v80);
            (*(v71 + 8))(v118, v67);
            swift_unknownObjectRelease();
            v105 = v149;
            v106 = v151;
            v107 = v152;
            v104 = v113;
            *(v113 + 2) = v150;
            v104[3] = v106;
            *v104 = v148;
            v104[1] = v105;
            v108 = v145;
            v104[4] = v107;
            v104[5] = v108;
            goto LABEL_51;
          }

          sub_20C40C57C(&v148);
          (*(v91 + 8))(v40, v80);
        }

        goto LABEL_31;
      }

      if (v47 == 3)
      {
        v146[0] = 3;
        sub_20C44754C();
        v67 = v142;
        v68 = v118;
        v70 = v157;
        sub_20C4607F0();
        v71 = v141;
        v157 = v70;
        if (v70)
        {
LABEL_18:
          (*(v141 + 8))(v68, v67);
          goto LABEL_11;
        }

        type metadata accessor for ImageAsset();
        v146[0] = 0;
        sub_20C449E9C(&qword_27C7BAF30, type metadata accessor for ImageAsset);
        v82 = v115;
        v83 = v129;
        v84 = v134;
        v85 = v157;
        sub_20C460840();
        v157 = v85;
        if (!v85)
        {
          v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48);
          v146[0] = 1;
          sub_20C40BDE4();
          v93 = v134;
          v94 = v157;
          sub_20C460840();
          v157 = v94;
          if (v94)
          {
            (*(v128 + 8))(v93, v83);
            (*(v71 + 8))(v118, v67);
            swift_unknownObjectRelease();
            sub_20C44AA8C(v82, type metadata accessor for ImageAsset);
            return __swift_destroy_boxed_opaque_existential_1(v143);
          }

          (*(v128 + 8))(v93, v83);
          (*(v71 + 8))(v118, v67);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v109 = v82;
          goto LABEL_52;
        }

        (*(v128 + 8))(v84, v83);
LABEL_31:
        (*(v71 + 8))(v118, v67);
        goto LABEL_11;
      }

      v63 = v141;
      if (v47 != 4)
      {
        v146[0] = 5;
        sub_20C4474A4();
        v75 = v142;
        v76 = v118;
        v77 = v157;
        sub_20C4607F0();
        v157 = v77;
        if (v77)
        {
          v78 = *(v63 + 8);
          v79 = v76;
        }

        else
        {
          type metadata accessor for CGSize();
          sub_20C449E9C(&qword_27C7BAC78, type metadata accessor for CGSize);
          v88 = v132;
          v89 = v157;
          sub_20C460840();
          v157 = v89;
          if (!v89)
          {
            (*(v131 + 8))(v43, v88);
            (*(v63 + 8))(v118, v75);
            swift_unknownObjectRelease();
            v104 = v120;
            *v120 = *v146;
            goto LABEL_51;
          }

          (*(v131 + 8))(v43, v88);
          v78 = *(v63 + 8);
          v79 = v118;
        }

        v78(v79, v75);
        goto LABEL_11;
      }

      v146[0] = 4;
      sub_20C4474F8();
      v64 = v142;
      v65 = v118;
      v66 = v157;
      sub_20C4607F0();
      v157 = v66;
      if (!v66)
      {
        type metadata accessor for CGSize();
        sub_20C449E9C(&qword_27C7BAC78, type metadata accessor for CGSize);
        v86 = v126;
        v87 = v157;
        sub_20C460840();
        v157 = v87;
        if (v87)
        {
          (*(v125 + 8))(v42, v86);
          (*(v63 + 8))(v65, v142);
          goto LABEL_11;
        }

        (*(v125 + 8))(v42, v86);
        (*(v63 + 8))(v65, v142);
        swift_unknownObjectRelease();
        v104 = v119;
        *v119 = *v146;
        goto LABEL_51;
      }

      (*(v63 + 8))(v65, v64);
    }

LABEL_11:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v143);
}

uint64_t sub_20C448B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ImageAssetAction.hash(into:)(uint64_t a1)
{
  v76 = a1;
  v75 = sub_20C45FC30();
  v74 = *(v75 - 8);
  v2 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v72 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v69 - v9;
  v10 = sub_20C45FD00();
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x28223BE20](v10);
  v71 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v69 - v18;
  v20 = type metadata accessor for ImageAsset();
  v21 = *(*(v20 - 1) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v69 - v25;
  v27 = type metadata accessor for ImageAssetAction();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C447440(v1, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v49 = *v30;
        v50 = *(v30 + 24);
        v51 = *(v30 + 56);
        v84 = *(v30 + 40);
        v85 = v51;
        v86 = *(v30 + 72);
        v82 = *(v30 + 8);
        v83 = v50;
        MEMORY[0x20F2FAEA0](2);
        MEMORY[0x20F2FAEA0](v49);
        v79 = v84;
        v80 = v85;
        v81 = v86;
        v78 = v83;
        v77 = v82;
        ImageAssetCacheKey.hash(into:)();
        return sub_20C40C57C(&v82);
      }

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
      v33 = &v30[*(v32 + 48)];
      v34 = *(v33 + 4);
      v85 = *(v33 + 3);
      v86 = v34;
      v35 = *(v33 + 2);
      v83 = *(v33 + 1);
      v84 = v35;
      v82 = *v33;
      v36 = &v30[*(v32 + 64)];
      v37 = *v36;
      v38 = v36[1];
      sub_20C448B40(v30, v26, type metadata accessor for ImageAsset);
      MEMORY[0x20F2FAEA0](1);
      sub_20C409B04(v26, v19, &qword_27C7BAC10, &qword_20C462070);
      v39 = v73;
      if ((*(v73 + 48))(v19, 1, v10) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v61 = v71;
        (*(v39 + 32))(v71, v19, v10);
        sub_20C460950();
        sub_20C449E9C(&qword_28110B4D8, MEMORY[0x277D09D68]);
        sub_20C460460();
        (*(v39 + 8))(v61, v10);
      }

      v62 = &v26[v20[5]];
      v63 = *v62;
      v64 = *(v62 + 1);
      sub_20C4604F0();
      v26[v20[6]];
      sub_20C4604F0();

      v65 = v70;
      sub_20C409B04(&v26[v20[7]], v70, &qword_27C7BAC18, &unk_20C464A00);
      v66 = v74;
      v67 = v75;
      if ((*(v74 + 48))(v65, 1, v75) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v68 = v72;
        (*(v66 + 32))(v72, v65, v67);
        sub_20C460950();
        sub_20C449E9C(&qword_28110BEB0, MEMORY[0x277CC9260]);
        sub_20C460460();
        (*(v66 + 8))(v68, v67);
      }

      v79 = v84;
      v80 = v85;
      v81 = v86;
      v78 = v83;
      v77 = v82;
      ImageAssetCacheKey.hash(into:)();
      sub_20C40C57C(&v82);
      sub_20C40C1A4(v37, v38);
      v60 = v26;
      return sub_20C44AA8C(v60, type metadata accessor for ImageAsset);
    }

    v43 = *(v30 + 3);
    v84 = *(v30 + 2);
    v85 = v43;
    v86 = *(v30 + 4);
    v44 = *(v30 + 1);
    v82 = *v30;
    v83 = v44;
    v40 = *(v30 + 10);
    v41 = *(v30 + 11);
    MEMORY[0x20F2FAEA0](0);
    v79 = v84;
    v80 = v85;
    v81 = v86;
    v78 = v83;
    v77 = v82;
    ImageAssetCacheKey.hash(into:)();
    sub_20C40C57C(&v82);
    return sub_20C40C1A4(v40, v41);
  }

  if (EnumCaseMultiPayload != 3)
  {
    v40 = *v30;
    v41 = *(v30 + 1);
    if (EnumCaseMultiPayload == 4)
    {
      v42 = 4;
    }

    else
    {
      v42 = 5;
    }

    MEMORY[0x20F2FAEA0](v42);
    return sub_20C40C1A4(v40, v41);
  }

  v45 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48)];
  v46 = *(v45 + 4);
  v85 = *(v45 + 3);
  v86 = v46;
  v47 = *(v45 + 2);
  v83 = *(v45 + 1);
  v84 = v47;
  v82 = *v45;
  sub_20C448B40(v30, v24, type metadata accessor for ImageAsset);
  MEMORY[0x20F2FAEA0](3);
  sub_20C409B04(v24, v17, &qword_27C7BAC10, &qword_20C462070);
  v48 = v73;
  if ((*(v73 + 48))(v17, 1, v10) == 1)
  {
    sub_20C460950();
  }

  else
  {
    v53 = v71;
    (*(v48 + 32))(v71, v17, v10);
    sub_20C460950();
    sub_20C449E9C(&qword_28110B4D8, MEMORY[0x277D09D68]);
    sub_20C460460();
    (*(v48 + 8))(v53, v10);
  }

  v54 = &v24[v20[5]];
  v55 = *v54;
  v56 = *(v54 + 1);
  sub_20C4604F0();
  v24[v20[6]];
  sub_20C4604F0();

  sub_20C409B04(&v24[v20[7]], v8, &qword_27C7BAC18, &unk_20C464A00);
  v57 = v74;
  v58 = v75;
  if ((*(v74 + 48))(v8, 1, v75) == 1)
  {
    sub_20C460950();
  }

  else
  {
    v59 = v72;
    (*(v57 + 32))(v72, v8, v58);
    sub_20C460950();
    sub_20C449E9C(&qword_28110BEB0, MEMORY[0x277CC9260]);
    sub_20C460460();
    (*(v57 + 8))(v59, v58);
  }

  v79 = v84;
  v80 = v85;
  v81 = v86;
  v78 = v83;
  v77 = v82;
  ImageAssetCacheKey.hash(into:)();
  sub_20C40C57C(&v82);
  v60 = v24;
  return sub_20C44AA8C(v60, type metadata accessor for ImageAsset);
}

uint64_t ImageAssetAction.hashValue.getter()
{
  sub_20C460930();
  ImageAssetAction.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C449664()
{
  sub_20C460930();
  ImageAssetAction.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C4496A8()
{
  sub_20C460930();
  ImageAssetAction.hash(into:)(v1);
  return sub_20C460970();
}

BOOL _s12FitnessAsset05ImageB6ActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v3 = type metadata accessor for ImageAsset();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v80 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v80 - v7;
  v8 = type metadata accessor for ImageAssetAction();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v80 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v82 = &v80 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v80 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v80 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v80 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDA8, &qword_20C466A58);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v80 - v29;
  v31 = &v80 + *(v28 + 56) - v29;
  sub_20C447440(a1, &v80 - v29);
  sub_20C447440(v83, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v59 = v82;
      sub_20C447440(v30, v82);
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48);
      v61 = *(v59 + v60 + 64);
      v102 = *(v59 + v60 + 48);
      v103 = v61;
      v62 = *(v59 + v60 + 32);
      v100 = *(v59 + v60 + 16);
      v101 = v62;
      v99 = *(v59 + v60);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_20C40C57C(&v99);
        v74 = v59;
LABEL_33:
        sub_20C44AA8C(v74, type metadata accessor for ImageAsset);
        goto LABEL_34;
      }

      v63 = *&v31[v60 + 48];
      v96 = *&v31[v60 + 32];
      v97 = v63;
      v98 = *&v31[v60 + 64];
      v64 = *&v31[v60 + 16];
      v94 = *&v31[v60];
      v95 = v64;
      v44 = v80;
      sub_20C448B40(v31, v80, type metadata accessor for ImageAsset);
      v65 = static ImageAsset.== infix(_:_:)(v59, v44);
      sub_20C44AA8C(v59, type metadata accessor for ImageAsset);
      if (!v65)
      {
LABEL_29:
        sub_20C44AA8C(v44, type metadata accessor for ImageAsset);
        sub_20C40C57C(&v99);
        v73 = &v94;
        goto LABEL_30;
      }

      v91 = v101;
      v92 = v102;
      v93 = v103;
      v89 = v99;
      v90 = v100;
      v86 = v96;
      v87 = v97;
      v88 = v98;
      v84 = v94;
      v85 = v95;
      v66 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v89, &v84);
      sub_20C44AA8C(v44, type metadata accessor for ImageAsset);
LABEL_37:
      sub_20C40C57C(&v94);
      sub_20C40C57C(&v99);
LABEL_38:
      sub_20C44AA8C(v30, type metadata accessor for ImageAssetAction);
      return v66;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_20C447440(v30, v15);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_34:
        sub_20C44AA24(v30);
        return 0;
      }

      v48 = *v15;
      v47 = v15[1];
    }

    else
    {
      sub_20C447440(v30, v12);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_34;
      }

      v48 = *v12;
      v47 = v12[1];
    }

    v57 = v48 == *v31;
    v58 = v47 == *(v31 + 1);
LABEL_25:
    v66 = v58 && v57;
    goto LABEL_38;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20C447440(v30, v25);
    v49 = *(v25 + 3);
    v101 = *(v25 + 2);
    v102 = v49;
    v103 = *(v25 + 4);
    v50 = *(v25 + 1);
    v99 = *v25;
    v100 = v50;
    v39 = *(v25 + 10);
    v38 = *(v25 + 11);
    if (!swift_getEnumCaseMultiPayload())
    {
      v51 = *(v31 + 1);
      v52 = *(v31 + 3);
      v96 = *(v31 + 2);
      v97 = v52;
      v53 = *(v31 + 3);
      v98 = *(v31 + 4);
      v54 = *(v31 + 1);
      v94 = *v31;
      v95 = v54;
      v55 = *(v25 + 3);
      v91 = *(v25 + 2);
      v92 = v55;
      v93 = *(v25 + 4);
      v56 = *(v25 + 1);
      v89 = *v25;
      v90 = v56;
      v86 = v96;
      v87 = v53;
      v88 = *(v31 + 4);
      v43 = *(v31 + 10);
      v42 = *(v31 + 11);
      v84 = v94;
      v85 = v51;
      v46 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v89, &v84);
LABEL_13:
      sub_20C40C57C(&v94);
      sub_20C40C57C(&v99);
      if (v46)
      {
        v57 = v39 == v43;
        v58 = v38 == v42;
        goto LABEL_25;
      }

      goto LABEL_31;
    }

LABEL_21:
    sub_20C40C57C(&v99);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_20C447440(v30, v23);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
    v34 = *(v33 + 48);
    v35 = *&v23[v34 + 64];
    v102 = *&v23[v34 + 48];
    v103 = v35;
    v36 = *&v23[v34 + 32];
    v100 = *&v23[v34 + 16];
    v101 = v36;
    v99 = *&v23[v34];
    v37 = *(v33 + 64);
    v39 = *&v23[v37];
    v38 = *&v23[v37 + 8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = *&v31[v34 + 48];
      v96 = *&v31[v34 + 32];
      v97 = v40;
      v98 = *&v31[v34 + 64];
      v41 = *&v31[v34 + 16];
      v94 = *&v31[v34];
      v95 = v41;
      v43 = *&v31[v37];
      v42 = *&v31[v37 + 8];
      v44 = v81;
      sub_20C448B40(v31, v81, type metadata accessor for ImageAsset);
      v45 = static ImageAsset.== infix(_:_:)(v23, v44);
      sub_20C44AA8C(v23, type metadata accessor for ImageAsset);
      if (v45)
      {
        v91 = v101;
        v92 = v102;
        v93 = v103;
        v89 = v99;
        v90 = v100;
        v86 = v96;
        v87 = v97;
        v88 = v98;
        v84 = v94;
        v85 = v95;
        v46 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v89, &v84);
        sub_20C44AA8C(v44, type metadata accessor for ImageAsset);
        goto LABEL_13;
      }

      goto LABEL_29;
    }

    sub_20C40C57C(&v99);
    v74 = v23;
    goto LABEL_33;
  }

  sub_20C447440(v30, v20);
  v67 = *v20;
  v68 = *(v20 + 24);
  v69 = *(v20 + 56);
  v101 = *(v20 + 40);
  v102 = v69;
  v103 = *(v20 + 72);
  v99 = *(v20 + 8);
  v100 = v68;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_21;
  }

  v70 = *v31;
  v71 = *(v31 + 24);
  v72 = *(v31 + 56);
  v96 = *(v31 + 40);
  v97 = v72;
  v98 = *(v31 + 72);
  v94 = *(v31 + 8);
  v95 = v71;
  if (v67 == v70)
  {
    v75 = *(v20 + 24);
    v76 = *(v20 + 56);
    v91 = *(v20 + 40);
    v92 = v76;
    v93 = *(v20 + 72);
    v89 = *(v20 + 8);
    v90 = v75;
    v77 = *(v31 + 24);
    v78 = *(v31 + 56);
    v86 = *(v31 + 40);
    v87 = v78;
    v88 = *(v31 + 72);
    v84 = *(v31 + 8);
    v85 = v77;
    v66 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v89, &v84);
    goto LABEL_37;
  }

  sub_20C40C57C(&v94);
  v73 = &v99;
LABEL_30:
  sub_20C40C57C(v73);
LABEL_31:
  sub_20C44AA8C(v30, type metadata accessor for ImageAssetAction);
  return 0;
}

uint64_t sub_20C449E9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20C449EE4()
{
  sub_20C449F94();
  if (v0 <= 0x3F)
  {
    sub_20C41DA60();
    if (v1 <= 0x3F)
    {
      sub_20C44A000();
      if (v2 <= 0x3F)
      {
        sub_20C41DBC4();
        if (v3 <= 0x3F)
        {
          sub_20C41DC30();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20C449F94()
{
  if (!qword_28110B898[0])
  {
    type metadata accessor for CGSize();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_28110B898);
    }
  }
}

void sub_20C44A000()
{
  if (!qword_28110B860)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28110B860);
    }
  }
}

unint64_t sub_20C44A0D8()
{
  result = qword_27C7BBD70;
  if (!qword_27C7BBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD70);
  }

  return result;
}

unint64_t sub_20C44A130()
{
  result = qword_27C7BBD78;
  if (!qword_27C7BBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD78);
  }

  return result;
}

unint64_t sub_20C44A188()
{
  result = qword_27C7BBD80;
  if (!qword_27C7BBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD80);
  }

  return result;
}

unint64_t sub_20C44A1E0()
{
  result = qword_27C7BBD88;
  if (!qword_27C7BBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD88);
  }

  return result;
}

unint64_t sub_20C44A238()
{
  result = qword_27C7BBD90;
  if (!qword_27C7BBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD90);
  }

  return result;
}

unint64_t sub_20C44A290()
{
  result = qword_27C7BBD98;
  if (!qword_27C7BBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD98);
  }

  return result;
}

unint64_t sub_20C44A2E8()
{
  result = qword_27C7BBDA0;
  if (!qword_27C7BBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBDA0);
  }

  return result;
}

unint64_t sub_20C44A340()
{
  result = qword_28110BB28;
  if (!qword_28110BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB28);
  }

  return result;
}

unint64_t sub_20C44A398()
{
  result = qword_28110BB30;
  if (!qword_28110BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB30);
  }

  return result;
}

unint64_t sub_20C44A3F0()
{
  result = qword_28110BAE8;
  if (!qword_28110BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAE8);
  }

  return result;
}

unint64_t sub_20C44A448()
{
  result = qword_28110BAF0;
  if (!qword_28110BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAF0);
  }

  return result;
}

unint64_t sub_20C44A4A0()
{
  result = qword_28110BB00;
  if (!qword_28110BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB00);
  }

  return result;
}

unint64_t sub_20C44A4F8()
{
  result = qword_28110BB08;
  if (!qword_28110BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB08);
  }

  return result;
}

unint64_t sub_20C44A550()
{
  result = qword_28110BB10;
  if (!qword_28110BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB10);
  }

  return result;
}

unint64_t sub_20C44A5A8()
{
  result = qword_28110BB18;
  if (!qword_28110BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB18);
  }

  return result;
}

unint64_t sub_20C44A600()
{
  result = qword_28110BAB8;
  if (!qword_28110BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAB8);
  }

  return result;
}

unint64_t sub_20C44A658()
{
  result = qword_28110BAC0;
  if (!qword_28110BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAC0);
  }

  return result;
}

unint64_t sub_20C44A6B0()
{
  result = qword_28110BAA8;
  if (!qword_28110BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAA8);
  }

  return result;
}

unint64_t sub_20C44A708()
{
  result = qword_28110BAB0;
  if (!qword_28110BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAB0);
  }

  return result;
}

unint64_t sub_20C44A760()
{
  result = qword_28110BAD0;
  if (!qword_28110BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAD0);
  }

  return result;
}

unint64_t sub_20C44A7B8()
{
  result = qword_28110BAD8;
  if (!qword_28110BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAD8);
  }

  return result;
}

uint64_t sub_20C44A80C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x800000020C467650 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000020C467670 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020C467690 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C4676D0 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_20C4608D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657A695377656976 && a2 == 0xEF6465676E616843)
  {

    return 5;
  }

  else
  {
    v5 = sub_20C4608D0();

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

uint64_t sub_20C44AA24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDA8, &qword_20C466A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C44AA8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DynamicImageAssetView.init(store:placeholderImage:platform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DynamicImageAssetView();
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  swift_storeEnumTagMultiPayload();
  v12 = v10[6];
  *(a5 + v12) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  v14 = a5 + v10[7];
  *v14 = sub_20C4142D4;
  *(v14 + 1) = result;
  v14[16] = 0;
  *(a5 + v10[8]) = a3;
  *(a5 + v10[9]) = a4;
  return result;
}

void sub_20C44AC34(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_20C4603C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DynamicImageAssetView();
  v17 = *(v1 + *(v16 + 32));
  if (!v17)
  {
    v20 = (v1 + *(v16 + 28));
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
    sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90);
    sub_20C460020();
    swift_getKeyPath();
    sub_20C460430();

    v24 = type metadata accessor for ImageAsset();
    if ((*(*(v24 - 8) + 48))(v6, 1, v24) == 1)
    {
      v25 = &qword_27C7BB600;
      v26 = &unk_20C464880;
      v27 = v6;
    }

    else
    {
      sub_20C409B04(v6, v10, &qword_27C7BAC10, &qword_20C462070);
      sub_20C4511D8(v6, type metadata accessor for ImageAsset);
      v28 = sub_20C45FD00();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v10, 1, v28) != 1)
      {
        sub_20C45FCF0();
        (*(v29 + 8))(v10, v28);
        goto LABEL_9;
      }

      v25 = &qword_27C7BAC10;
      v26 = &qword_20C462070;
      v27 = v10;
    }

    sub_20C40B440(v27, v25, v26);
    v30 = [objc_opt_self() tertiarySystemFillColor];
LABEL_9:
    v32 = sub_20C460390();
    v33 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFE0, &unk_20C466C00);
    sub_20C41703C();
    sub_20C460220();
    goto LABEL_10;
  }

  v18 = v17;
  sub_20C4603A0();
  (*(v12 + 104))(v15, *MEMORY[0x277CE0FE0], v11);
  v19 = sub_20C4603D0();

  (*(v12 + 8))(v15, v11);
  v32 = v19;
  v33 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFE0, &unk_20C466C00);
  sub_20C41703C();
  sub_20C460220();

LABEL_10:
  v31 = v35;
  *a1 = v34;
  *(a1 + 8) = v31;
}

uint64_t DynamicImageAssetView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DynamicImageAssetView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_20C4516E4(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DynamicImageAssetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_20C451170(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for DynamicImageAssetView);
  *a1 = sub_20C4500D0;
  a1[1] = v7;
  return result;
}

uint64_t sub_20C44B1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v5 = sub_20C460090();
  v6 = *(v5 - 8);
  v92 = v5;
  v93 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v87 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DynamicImageAssetView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = v9 - 8;
  v79 = v9 - 8;
  MEMORY[0x28223BE20](v9 - 8);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD0, &qword_20C466B88);
  v13 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v15 = &v75 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDF0, &qword_20C466BA0);
  v16 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v18 = &v75 - v17;
  v77 = &v75 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDF8, &qword_20C466BA8);
  v83 = *(v82 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  v78 = &v75 - v20;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE00, &qword_20C466BB0);
  v85 = *(v84 - 8);
  v21 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  v99 = &v75 - v22;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE08, &qword_20C466BB8);
  v89 = *(v88 - 8);
  v23 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  v100 = &v75 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE10, &qword_20C466BC0);
  v26 = *(v25 - 8);
  v90 = v25;
  v91 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v86 = &v75 - v28;
  sub_20C460040();
  sub_20C4606A0();
  v30 = v29;
  v32 = v31;
  v101 = a2;
  sub_20C44BB88(a2, a1, v18, v29, v31);
  v33 = a2 + *(v12 + 28);
  sub_20C450424(v15);
  v95 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C4516E4(a2, v95, type metadata accessor for DynamicImageAssetView);
  v34 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v35 = *(v10 + 80);
  v81 = v34 + v11;
  v36 = v34;
  v96 = v34;
  v97 = v35;
  v37 = (v34 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_20C451170(&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v36, type metadata accessor for DynamicImageAssetView);
  v39 = (v38 + v37);
  *v39 = v30;
  v39[1] = v32;
  v40 = sub_20C4507FC(&qword_27C7BBE18, &qword_27C7BBDF0, &qword_20C466BA0, sub_20C4506A0);
  v41 = sub_20C450878();
  v42 = v80;
  v43 = v98;
  v44 = v77;
  sub_20C460370();

  sub_20C40B440(v15, &qword_27C7BBDD0, &qword_20C466B88);
  sub_20C408538(v44);
  v45 = v101;
  v46 = v101 + *(v79 + 32);
  sub_20C450424(v15);
  v47 = v95;
  sub_20C4516E4(v45, v95, type metadata accessor for DynamicImageAssetView);
  v48 = swift_allocObject();
  v49 = v96;
  sub_20C451170(v47, v48 + v96, type metadata accessor for DynamicImageAssetView);
  v50 = (v48 + v37);
  *v50 = v30;
  v50[1] = v32;
  v104 = v42;
  v105 = v43;
  v106 = v40;
  v107 = v41;
  v76 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v82;
  v53 = v78;
  sub_20C460370();

  sub_20C40B440(v15, &qword_27C7BBDD0, &qword_20C466B88);
  v54 = v52;
  (*(v83 + 8))(v53, v52);
  v55 = v87;
  v56 = v101;
  sub_20C450198(v87);
  v57 = v95;
  sub_20C4516E4(v56, v95, type metadata accessor for DynamicImageAssetView);
  v58 = swift_allocObject();
  sub_20C451170(v57, v58 + v49, type metadata accessor for DynamicImageAssetView);
  v59 = (v58 + v37);
  *v59 = v30;
  v59[1] = v32;
  v104 = v54;
  v105 = v98;
  v106 = OpaqueTypeConformance2;
  v107 = v76;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = sub_20C451014(&qword_27C7BBE40, MEMORY[0x277CDFA28]);
  v62 = v99;
  v63 = v84;
  v64 = v92;
  sub_20C460370();

  (*(v93 + 8))(v55, v64);
  (*(v85 + 8))(v62, v63);
  v102 = v30;
  v103 = v32;
  sub_20C4516E4(v101, v57, type metadata accessor for DynamicImageAssetView);
  v65 = swift_allocObject();
  sub_20C451170(v57, v65 + v96, type metadata accessor for DynamicImageAssetView);
  type metadata accessor for CGSize();
  v67 = v66;
  v104 = v63;
  v105 = v64;
  v106 = v60;
  v107 = v61;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = sub_20C451014(&qword_28110B3D8, type metadata accessor for CGSize);
  v70 = v86;
  v71 = v88;
  v72 = v100;
  sub_20C460370();

  (*(v89 + 8))(v72, v71);
  sub_20C460380();
  v104 = v71;
  v105 = v67;
  v106 = v68;
  v107 = v69;
  swift_getOpaqueTypeConformance2();
  v73 = v90;
  sub_20C460320();

  return (*(v91 + 8))(v70, v73);
}

uint64_t sub_20C44BB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v92 = a2;
  v101 = a3;
  v88 = type metadata accessor for ImageAsset();
  v86 = *(v88 - 8);
  v8 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v87 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v85 = &v78 - v14;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v78 = *(v104 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v78 - v16;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE50, &qword_20C466C70);
  v91 = *(v100 - 8);
  v17 = *(v91 + 64);
  MEMORY[0x28223BE20](v100);
  v90 = &v78 - v18;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE58, &qword_20C466C78);
  v19 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v98 = (&v78 - v20);
  v21 = sub_20C460050();
  v96 = *(v21 - 8);
  v97 = v21;
  v22 = *(v96 + 64);
  MEMORY[0x28223BE20](v21);
  v95 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DynamicImageAssetView();
  v93 = *(v23 - 8);
  v24 = *(v93 + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v94 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 + 36);
  v103 = a1;
  v27 = (a1 + v26);
  v29 = *v27;
  v28 = v27[1];
  v30 = *(v27 + 16);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
  sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90);
  v84 = v29;
  v81 = v31;
  v82 = v28;
  v83 = v30;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460420();

  v119[2] = v112[1];
  v119[3] = v112[2];
  v119[4] = v112[3];
  v119[0] = v111;
  v119[1] = v112[0];
  if (!*&v112[0])
  {
    v43 = v103;
    sub_20C44AC34(&v113);
    v102 = v113;
    LODWORD(v91) = BYTE8(v113);
    v44 = v94;
    sub_20C4516E4(v43, v94, type metadata accessor for DynamicImageAssetView);
    v46 = v95;
    v45 = v96;
    v47 = v97;
    (*(v96 + 16))(v95, v92, v97);
    v48 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v49 = (v24 + *(v45 + 80) + v48) & ~*(v45 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = a4;
    *(v50 + 24) = a5;
    sub_20C451170(v44, v50 + v48, type metadata accessor for DynamicImageAssetView);
    (*(v45 + 32))(v50 + v49, v46, v47);
    v51 = v98;
    *v98 = v102;
    *(v51 + 8) = v91;
    v51[2] = sub_20C45174C;
    v51[3] = v50;
    v51[4] = 0;
    v51[5] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFB0, &unk_20C466BD0);
    v53 = sub_20C4507FC(&qword_28110B440, &qword_27C7BAFB0, &unk_20C466BD0, sub_20C416E3C);
    v54 = sub_20C417418(qword_28110B7C8, &qword_27C7BAF10, &qword_20C4640D0);
    *&v113 = v52;
    *(&v113 + 1) = v104;
    v114 = v53;
    *&v115 = v54;
    swift_getOpaqueTypeConformance2();
    sub_20C416F80();
    return sub_20C460220();
  }

  v79 = v24;
  v80 = v22;
  v113 = v111;
  v115 = *(v112 + 8);
  v116 = *(&v112[1] + 8);
  v117 = *(&v112[2] + 8);
  v114 = *&v112[0];
  v118 = *(&v112[3] + 1);
  v32 = v92;
  sub_20C44C7CC(v103, &v113, v92, v109, a4, a5);
  v106 = v109[0];
  v107 = v109[1];
  *v108 = *v110;
  *&v108[15] = *&v110[15];
  sub_20C460020();
  swift_getKeyPath();
  v33 = v85;
  sub_20C460430();

  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  v34 = v105;
  v35 = v87;
  sub_20C409B04(v33, v87, &qword_27C7BB600, &unk_20C464880);
  v36 = (*(v86 + 48))(v35, 1, v88);
  v37 = v103;
  v38 = v33;
  if (v36 != 1)
  {
    v56 = v89;
    sub_20C451170(v35, v89, type metadata accessor for ImageAsset);
    v57 = v102;
    v40 = v96;
    v42 = v80;
    if (*(v34 + 16))
    {
      v58 = sub_20C457F00(v56);
      if (v59)
      {
        v60 = *(*(v34 + 56) + 8 * v58);
        if (*(v60 + 16))
        {
          v61 = *(*(v34 + 56) + 8 * v58);

          v62 = sub_20C457E7C(&v113);
          if (v63)
          {
            sub_20C409B04(*(v60 + 56) + *(v78 + 72) * v62, v57, &qword_27C7BAF10, &qword_20C4640D0);

            sub_20C40B440(v119, &qword_27C7BAC68, &unk_20C464890);
            sub_20C4511D8(v89, type metadata accessor for ImageAsset);
            sub_20C40B440(v38, &qword_27C7BB600, &unk_20C464880);

LABEL_11:
            v41 = v95;
            v39 = v97;
            goto LABEL_12;
          }
        }
      }
    }

    sub_20C40B440(v119, &qword_27C7BAC68, &unk_20C464890);
    sub_20C4511D8(v89, type metadata accessor for ImageAsset);
    sub_20C40B440(v38, &qword_27C7BB600, &unk_20C464880);
    swift_storeEnumTagMultiPayload();
    goto LABEL_11;
  }

  sub_20C40B440(v119, &qword_27C7BAC68, &unk_20C464890);
  sub_20C40B440(v33, &qword_27C7BB600, &unk_20C464880);
  sub_20C40B440(v35, &qword_27C7BB600, &unk_20C464880);
  swift_storeEnumTagMultiPayload();
  v40 = v96;
  v39 = v97;
  v41 = v95;
  v42 = v80;
LABEL_12:
  v64 = v94;
  sub_20C4516E4(v37, v94, type metadata accessor for DynamicImageAssetView);
  (*(v40 + 16))(v41, v32, v39);
  v65 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v66 = v41;
  v67 = (v79 + *(v40 + 80) + v65) & ~*(v40 + 80);
  v68 = swift_allocObject();
  sub_20C451170(v64, v68 + v65, type metadata accessor for DynamicImageAssetView);
  (*(v40 + 32))(v68 + v67, v66, v39);
  v69 = (v68 + ((v42 + v67 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v69 = a4;
  v69[1] = a5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB0, &unk_20C466BD0);
  v71 = sub_20C4507FC(&qword_28110B440, &qword_27C7BAFB0, &unk_20C466BD0, sub_20C416E3C);
  v72 = sub_20C417418(qword_28110B7C8, &qword_27C7BAF10, &qword_20C4640D0);
  v73 = v90;
  v74 = v102;
  v75 = v104;
  sub_20C460370();

  sub_20C40B440(v74, &qword_27C7BAF10, &qword_20C4640D0);
  sub_20C40B440(v109, &qword_27C7BAFC0, &unk_20C466BE0);
  v76 = v91;
  v77 = v100;
  (*(v91 + 16))(v98, v73, v100);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
  *&v106 = v70;
  *(&v106 + 1) = v75;
  *&v107 = v71;
  *(&v107 + 1) = v72;
  swift_getOpaqueTypeConformance2();
  sub_20C416F80();
  sub_20C460220();
  return (*(v76 + 8))(v73, v77);
}