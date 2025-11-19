void sub_190C44508(char **a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v289 = a1;
  v302 = sub_190D50EF0();
  MEMORY[0x1EEE9AC00](v302);
  v301 = &v289 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = a3;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v290 = MEMORY[0x1E69E7CC0];
    v300 = (v6 + 8);
    v304 = *MEMORY[0x1E695C410];
    v305 = xmmword_190DDA780;
    v293 = a4;
    while (1)
    {
      v16 = v9 + 1;
      v292 = v9;
      if (v9 + 1 < v8)
      {
        v17 = *v298;
        v18 = (v9 + 1);
        v19 = (*v298 + 80 * v16);
        v329[0] = *v19;
        v21 = v19[2];
        v20 = v19[3];
        v22 = v19[1];
        *&v330[9] = *(v19 + 57);
        v329[2] = v21;
        *v330 = v20;
        v329[1] = v22;
        v23 = (v17 + 80 * v9);
        v25 = v23[2];
        v24 = v23[3];
        v26 = v23[1];
        *(v328 + 9) = *(v23 + 57);
        v327[2] = v25;
        v328[0] = v24;
        v327[1] = v26;
        v327[0] = *v23;
        sub_1909B8804(v329, &v322);
        sub_1909B8804(v327, &v322);
        *&v322 = sub_19091D9F4();
        *(&v322 + 1) = v27;
        *&v318 = sub_19091D9F4();
        *(&v318 + 1) = v28;
        v310 = sub_19081E484();
        v309 = sub_190D580D0();

        sub_1909B8860(v327);
        sub_1909B8860(v329);
        v29 = (v9 + 2);
        v303 = v8;
        if (v9 + 2 < v8)
        {
          v30 = (v17 + 80 * v9 + 160);
          v31 = v303;
          while (1)
          {
            v32 = v29;
            v318 = *v30;
            v33 = v30[1];
            v34 = v30[2];
            v35 = v30[3];
            *(v321 + 9) = *(v30 + 57);
            v320 = v34;
            v321[0] = v35;
            v319 = v33;
            v37 = *(v30 - 3);
            v36 = *(v30 - 2);
            v38 = *(v30 - 4);
            *(v325 + 9) = *(v30 - 23);
            v324 = v37;
            v325[0] = v36;
            v323 = v38;
            v322 = *(v30 - 5);
            v39 = *(&v34 + 1);
            v40 = v34;
            v41 = *(&v321[0] + 1);
            v42 = *&v321[0];
            v43 = *&v321[1];
            v311 = v29;
            if (BYTE8(v321[1]))
            {
              sub_1909B8804(&v318, &v314);
              sub_1909B8804(&v322, &v314);
              sub_19091E678(v40, v39, v42, v41, v43, 1);

              goto LABEL_46;
            }

            sub_1909B8804(&v318, &v314);
            sub_1909B8804(&v322, &v314);
            v308 = v41;
            sub_19091E678(v40, v39, v42, v41, v43, 0);
            v44 = [v40 recipient];
            if (v44)
            {
              v45 = v44;
              v306 = v40;
              v307 = v43;
              v46 = v42;
              v47 = v39;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
              v48 = swift_allocObject();
              *(v48 + 16) = v305;
              v49 = objc_opt_self();
              v50 = [v49 descriptorForUsedKeys];
              if (!v50)
              {
                goto LABEL_248;
              }

              v51 = v304;
              *(v48 + 32) = v50;
              *(v48 + 40) = v51;
              v52 = objc_opt_self();
              v53 = v51;
              v297 = v52;
              *(v48 + 48) = [v52 descriptorForRequiredKeysForStyle_];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
              v54 = sub_190D57160();

              v55 = [v45 cnContactWithKeys_];

              v39 = v47;
              v42 = v46;
              v40 = v306;
              v43 = v307;
              if (v55)
              {
                if (![v55 contactType])
                {
                  v66 = [v49 componentsForContact_];
                  if (!v66)
                  {
                    goto LABEL_250;
                  }

                  v67 = v66;
                  v68 = [objc_opt_self() localizedStringFromPersonNameComponents:v66 style:1 options:0];

                  v69 = sub_190D56F10();
                  v71 = v70;

                  v296 = v69;
                  *&v314 = v69;
                  *(&v314 + 1) = v71;
                  v331 = v71;
                  v72 = v301;
                  sub_190D50ED0();
                  v73 = sub_190D580B0();
                  v75 = v74;
                  (*v300)(v72, v302);

                  v76 = HIBYTE(v75) & 0xF;
                  if ((v75 & 0x2000000000000000) == 0)
                  {
                    v76 = v73 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v76)
                  {

                    sub_19091E6E0(v40, v39, v42, v308, v307, 0);
                    v42 = v296;
                    goto LABEL_37;
                  }

                  v43 = v307;
                }

                v56 = [v297 stringFromContact:v55 style:{0, v289}];
                if (v56)
                {
                  v57 = v56;
                  v58 = sub_190D56F10();
                  v60 = v59;

                  v297 = v58;
                  *&v314 = v58;
                  *(&v314 + 1) = v60;
                  v331 = v60;
                  v61 = v301;
                  sub_190D50ED0();
                  v62 = sub_190D580B0();
                  v64 = v63;
                  (*v300)(v61, v302);

                  if ((v64 & 0x2000000000000000) != 0)
                  {
                    v65 = HIBYTE(v64) & 0xF;
                  }

                  else
                  {
                    v65 = v62 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v65)
                  {
                    sub_19091E6E0(v40, v39, v42, v308, v307, 0);
                    v42 = v297;
LABEL_37:
                    v31 = v303;
                    v32 = v311;
                    v41 = v331;
                    goto LABEL_46;
                  }

                  v43 = v307;
                }

                else
                {
                }
              }
            }

            if ([v40 hasDisplayName])
            {
              v77 = [v40 displayName];
              if (!v77)
              {
                goto LABEL_44;
              }
            }

            else
            {
              [v40 fetchSuggestedNameIfNecessary];
              v77 = [v40 name];
              if (!v77)
              {
LABEL_44:
                sub_19091E6E0(v40, v39, v42, v308, v43, 0);
                v42 = 0;
                v41 = 0xE000000000000000;
                goto LABEL_45;
              }
            }

            v78 = v77;
            v79 = v43;
            v80 = sub_190D56F10();
            v82 = v81;

            sub_19091E6E0(v40, v39, v42, v308, v79, 0);
            v41 = v82;
            v42 = v80;
LABEL_45:
            v31 = v303;
            v32 = v311;
LABEL_46:
            *&v314 = v42;
            *(&v314 + 1) = v41;
            v331 = v41;
            v83 = *(&v324 + 1);
            v84 = v324;
            v85 = *(&v325[0] + 1);
            v86 = *&v325[0];
            if (BYTE8(v325[1]))
            {
              sub_19091E678(v324, *(&v324 + 1), *&v325[0], *(&v325[0] + 1), *&v325[1], 1);

              goto LABEL_72;
            }

            v306 = *(&v324 + 1);
            v307 = *&v325[1];
            v308 = *(&v325[0] + 1);
            v87 = v324;
            v88 = [v87 recipient];
            if (v88)
            {
              v89 = v88;
              v296 = v86;
              v297 = v87;
              v90 = v84;
              v91 = v31;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
              v92 = swift_allocObject();
              *(v92 + 16) = v305;
              v93 = objc_opt_self();
              v94 = [v93 descriptorForUsedKeys];
              if (!v94)
              {
                goto LABEL_247;
              }

              v95 = v304;
              *(v92 + 32) = v94;
              *(v92 + 40) = v95;
              v96 = objc_opt_self();
              v97 = v95;
              v295 = v96;
              *(v92 + 48) = [v96 descriptorForRequiredKeysForStyle_];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
              v98 = sub_190D57160();

              v99 = [v89 cnContactWithKeys_];

              v31 = v91;
              v84 = v90;
              v86 = v296;
              v87 = v297;
              if (v99)
              {
                if (![v99 contactType])
                {
                  v109 = [v93 componentsForContact_];
                  if (!v109)
                  {
                    goto LABEL_251;
                  }

                  v110 = v109;
                  v111 = [objc_opt_self() localizedStringFromPersonNameComponents:v109 style:1 options:0];

                  v112 = sub_190D56F10();
                  v85 = v113;

                  v294 = v112;
                  v312 = v112;
                  v313 = v85;
                  v114 = v301;
                  sub_190D50ED0();
                  v115 = sub_190D580B0();
                  v117 = v116;
                  (*v300)(v114, v302);

                  v118 = HIBYTE(v117) & 0xF;
                  if ((v117 & 0x2000000000000000) == 0)
                  {
                    v118 = v115 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v118)
                  {

                    sub_19091E6E0(v84, v306, v86, v308, v307, 0);
                    v86 = v294;
                    goto LABEL_63;
                  }

                  v87 = v297;
                }

                v100 = [v295 stringFromContact:v99 style:{0, v289}];
                if (v100)
                {
                  v101 = v100;
                  v102 = sub_190D56F10();
                  v85 = v103;

                  v295 = v102;
                  v312 = v102;
                  v313 = v85;
                  v104 = v301;
                  sub_190D50ED0();
                  v105 = sub_190D580B0();
                  v107 = v106;
                  (*v300)(v104, v302);

                  if ((v107 & 0x2000000000000000) != 0)
                  {
                    v108 = HIBYTE(v107) & 0xF;
                  }

                  else
                  {
                    v108 = v105 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v108)
                  {
                    sub_19091E6E0(v84, v306, v86, v308, v307, 0);
                    v86 = v295;
LABEL_63:
                    v31 = v303;
                    v32 = v311;
                    goto LABEL_72;
                  }

                  v31 = v303;
                  v87 = v297;
                }

                else
                {

                  v31 = v303;
                }
              }
            }

            if ([v87 hasDisplayName])
            {
              v119 = [v87 displayName];
            }

            else
            {
              [v87 fetchSuggestedNameIfNecessary];
              v119 = [v87 name];
            }

            v120 = v119;
            v32 = v311;
            if (v120)
            {
              v121 = v120;
              v122 = sub_190D56F10();
              v85 = v123;

              sub_19091E6E0(v84, v306, v86, v308, v307, 0);
              v86 = v122;
            }

            else
            {
              sub_19091E6E0(v84, v306, v86, v308, v307, 0);
              v86 = 0;
              v85 = 0xE000000000000000;
            }

LABEL_72:
            v124 = v309 == -1;
            v312 = v86;
            v313 = v85;
            v125 = sub_190D580D0();

            sub_1909B8860(&v322);
            sub_1909B8860(&v318);
            if (((v124 ^ (v125 != -1)) & 1) == 0)
            {
              v18 = (v32 - 1);
              goto LABEL_79;
            }

            v29 = (v32 + 1);
            v30 += 5;
            a4 = v293;
            if (v31 == (v32 + 1))
            {
              v18 = v32;
              v32 = v31;
              goto LABEL_80;
            }
          }
        }

        v32 = v9 + 2;
LABEL_79:
        a4 = v293;
        if (v309 != -1)
        {
          goto LABEL_83;
        }

LABEL_80:
        if (v32 < v292)
        {
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
          goto LABEL_245;
        }

        if (v292 <= v18)
        {
          v282 = 80 * v32 - 80;
          v283 = 80 * v292;
          v284 = v32;
          v285 = v32;
          v286 = v292;
          do
          {
            if (v286 != --v285)
            {
              v288 = *v298;
              if (!*v298)
              {
                goto LABEL_246;
              }

              v287 = (v288 + v282);
              v323 = *(v288 + v283 + 16);
              v324 = *(v288 + v283 + 32);
              v325[0] = *(v288 + v283 + 48);
              *(v325 + 9) = *(v288 + v283 + 57);
              v322 = *(v288 + v283);
              memmove((v288 + v283), (v288 + v282), 0x50uLL);
              v287[1] = v323;
              v287[2] = v324;
              v287[3] = v325[0];
              *(v287 + 57) = *(v325 + 9);
              *v287 = v322;
            }

            ++v286;
            v282 -= 80;
            v283 += 80;
          }

          while (v286 < v285);
          v16 = v284;
          a4 = v293;
        }

        else
        {
LABEL_83:
          v16 = v32;
        }
      }

      v126 = v298[1];
      if (v16 >= v126)
      {
        goto LABEL_156;
      }

      if (__OFSUB__(v16, v292))
      {
        goto LABEL_234;
      }

      if (v16 - v292 >= a4)
      {
LABEL_156:
        v128 = v292;
      }

      else
      {
        if (__OFADD__(v292, a4))
        {
          goto LABEL_235;
        }

        if (&a4[v292] >= v126)
        {
          v127 = v298[1];
        }

        else
        {
          v127 = &a4[v292];
        }

        if (v127 < v292)
        {
LABEL_236:
          __break(1u);
          goto LABEL_237;
        }

        v128 = v292;
        if (v16 != v127)
        {
          v308 = *v298;
          v129 = (v308 + 80 * v16);
          v130 = (v292 - v16 + 1);
          v291 = v127;
          while (1)
          {
            v296 = v129;
            v297 = v16;
            v295 = v130;
            for (i = v130; ; ++i)
            {
              v318 = *v129;
              v132 = v129[1];
              v133 = v129[2];
              v134 = v129[3];
              *(v321 + 9) = *(v129 + 57);
              v320 = v133;
              v321[0] = v134;
              v319 = v132;
              v136 = *(v129 - 3);
              v135 = *(v129 - 2);
              v137 = *(v129 - 4);
              *(v325 + 9) = *(v129 - 23);
              v324 = v136;
              v325[0] = v135;
              v323 = v137;
              v322 = *(v129 - 5);
              v138 = *(&v133 + 1);
              v139 = v133;
              v141 = *(&v321[0] + 1);
              v140 = *&v321[0];
              v142 = *&v321[1];
              v331 = i;
              if (BYTE8(v321[1]))
              {
                sub_1909B8804(&v318, &v314);
                sub_1909B8804(&v322, &v314);
                sub_19091E678(v139, v138, v140, v141, v142, 1);

                v143 = v141;
                goto LABEL_122;
              }

              sub_1909B8804(&v318, &v314);
              sub_1909B8804(&v322, &v314);
              v310 = v142;
              sub_19091E678(v139, v138, v140, v141, v142, 0);
              v144 = [v139 recipient];
              if (v144)
              {
                v145 = v144;
                v307 = v139;
                v146 = v140;
                v147 = v138;
                v309 = v141;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
                v148 = swift_allocObject();
                *(v148 + 16) = v305;
                v149 = objc_opt_self();
                v150 = [v149 descriptorForUsedKeys];
                if (!v150)
                {
                  goto LABEL_240;
                }

                v151 = v304;
                *(v148 + 32) = v150;
                *(v148 + 40) = v151;
                v152 = objc_opt_self();
                v153 = v151;
                v306 = v152;
                *(v148 + 48) = [v152 descriptorForRequiredKeysForStyle_];
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
                v154 = sub_190D57160();

                v155 = [v145 cnContactWithKeys_];

                v141 = v309;
                v138 = v147;
                v140 = v146;
                v139 = v307;
                if (v155)
                {
                  if (![v155 contactType])
                  {
                    v166 = [v149 componentsForContact_];
                    if (!v166)
                    {
                      goto LABEL_244;
                    }

                    v167 = v166;
                    v168 = [objc_opt_self() localizedStringFromPersonNameComponents:v166 style:1 options:0];

                    v169 = sub_190D56F10();
                    v171 = v170;

                    v303 = v169;
                    *&v314 = v169;
                    *(&v314 + 1) = v171;
                    v311 = v171;
                    v172 = v301;
                    sub_190D50ED0();
                    sub_19081E484();
                    v173 = sub_190D580B0();
                    v175 = v174;
                    (*v300)(v172, v302);

                    v176 = HIBYTE(v175) & 0xF;
                    if ((v175 & 0x2000000000000000) == 0)
                    {
                      v176 = v173 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v176)
                    {

                      sub_19091E6E0(v139, v138, v140, v309, v310, 0);
                      v140 = v303;
                      goto LABEL_113;
                    }

                    v141 = v309;
                  }

                  v156 = [v306 stringFromContact:v155 style:{0, v289}];
                  if (v156)
                  {
                    v157 = v156;
                    v158 = sub_190D56F10();
                    v160 = v159;

                    v306 = v158;
                    *&v314 = v158;
                    *(&v314 + 1) = v160;
                    v311 = v160;
                    v161 = v301;
                    sub_190D50ED0();
                    sub_19081E484();
                    v162 = sub_190D580B0();
                    v164 = v163;
                    (*v300)(v161, v302);

                    if ((v164 & 0x2000000000000000) != 0)
                    {
                      v165 = HIBYTE(v164) & 0xF;
                    }

                    else
                    {
                      v165 = v162 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v165)
                    {
                      sub_19091E6E0(v139, v138, v140, v309, v310, 0);
                      v140 = v306;
LABEL_113:
                      i = v331;
                      v143 = v311;
                      goto LABEL_122;
                    }

                    v141 = v309;
                  }

                  else
                  {
                  }
                }
              }

              if ([v139 hasDisplayName])
              {
                v177 = [v139 displayName];
                if (!v177)
                {
                  goto LABEL_120;
                }
              }

              else
              {
                [v139 fetchSuggestedNameIfNecessary];
                v177 = [v139 name];
                if (!v177)
                {
LABEL_120:
                  sub_19091E6E0(v139, v138, v140, v141, v310, 0);
                  v140 = 0;
                  v143 = 0xE000000000000000;
                  goto LABEL_121;
                }
              }

              v178 = v177;
              v179 = sub_190D56F10();
              v181 = v180;

              v182 = v139;
              v143 = v181;
              sub_19091E6E0(v182, v138, v140, v141, v310, 0);
              v140 = v179;
LABEL_121:
              i = v331;
LABEL_122:
              *&v314 = v140;
              *(&v314 + 1) = v143;
              v183 = *(&v324 + 1);
              v184 = v324;
              a4 = *(&v325[0] + 1);
              v185 = *&v325[0];
              if (BYTE8(v325[1]))
              {
                sub_19091E678(v324, *(&v324 + 1), *&v325[0], *(&v325[0] + 1), *&v325[1], 1);

                goto LABEL_149;
              }

              v309 = *&v325[1];
              v310 = *(&v325[0] + 1);
              v307 = v324;
              v186 = [v307 recipient];
              if (v186)
              {
                v187 = v186;
                v311 = v143;
                v188 = v185;
                v189 = v184;
                v306 = v183;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
                v190 = swift_allocObject();
                *(v190 + 16) = v305;
                v191 = objc_opt_self();
                v192 = [v191 descriptorForUsedKeys];
                if (!v192)
                {
                  goto LABEL_241;
                }

                v193 = v304;
                *(v190 + 32) = v192;
                *(v190 + 40) = v193;
                v194 = objc_opt_self();
                v195 = v193;
                v303 = v194;
                *(v190 + 48) = [v194 descriptorForRequiredKeysForStyle_];
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
                v196 = sub_190D57160();

                v197 = [v187 cnContactWithKeys_];

                v183 = v306;
                v184 = v189;
                v185 = v188;
                if (v197)
                {
                  if (![v197 contactType])
                  {
                    v207 = [v191 componentsForContact_];
                    if (!v207)
                    {
                      goto LABEL_243;
                    }

                    v208 = v207;
                    v209 = [objc_opt_self() localizedStringFromPersonNameComponents:v207 style:1 options:0];

                    v210 = sub_190D56F10();
                    a4 = v211;

                    v294 = v210;
                    v312 = v210;
                    v313 = a4;
                    v212 = v301;
                    sub_190D50ED0();
                    sub_19081E484();
                    v213 = sub_190D580B0();
                    v215 = v214;
                    (*v300)(v212, v302);

                    v216 = HIBYTE(v215) & 0xF;
                    if ((v215 & 0x2000000000000000) == 0)
                    {
                      v216 = v213 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v216)
                    {

                      sub_19091E6E0(v184, v306, v185, v310, v309, 0);
                      v185 = v294;
                      goto LABEL_139;
                    }
                  }

                  v198 = [v303 stringFromContact:v197 style:{0, v289}];
                  if (v198)
                  {
                    v199 = v198;
                    v200 = sub_190D56F10();
                    a4 = v201;

                    v303 = v200;
                    v312 = v200;
                    v313 = a4;
                    v202 = v301;
                    sub_190D50ED0();
                    sub_19081E484();
                    v203 = sub_190D580B0();
                    v205 = v204;
                    (*v300)(v202, v302);

                    if ((v205 & 0x2000000000000000) != 0)
                    {
                      v206 = HIBYTE(v205) & 0xF;
                    }

                    else
                    {
                      v206 = v203 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v206)
                    {
                      sub_19091E6E0(v184, v306, v185, v310, v309, 0);
                      v185 = v303;
LABEL_139:
                      i = v331;
                      goto LABEL_149;
                    }
                  }

                  else
                  {
                  }

                  v183 = v306;
                }
              }

              v217 = v307;
              if ([v307 hasDisplayName])
              {
                v218 = [v217 displayName];
                if (!v218)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                [v217 fetchSuggestedNameIfNecessary];
                v218 = [v217 name];
                if (!v218)
                {
LABEL_147:
                  sub_19091E6E0(v184, v183, v185, v310, v309, 0);
                  v185 = 0;
                  a4 = 0xE000000000000000;
                  goto LABEL_148;
                }
              }

              v219 = v218;
              v220 = sub_190D56F10();
              a4 = v221;

              sub_19091E6E0(v184, v183, v185, v310, v309, 0);
              v185 = v220;
LABEL_148:
              i = v331;
LABEL_149:
              v312 = v185;
              v313 = a4;
              sub_19081E484();
              v222 = sub_190D580D0();

              sub_1909B8860(&v322);
              sub_1909B8860(&v318);
              if (v222 != -1)
              {
                break;
              }

              if (!v308)
              {
                goto LABEL_239;
              }

              v223 = v129 - 5;
              v315 = v129[1];
              v316 = v129[2];
              v317[0] = v129[3];
              *(v317 + 9) = *(v129 + 57);
              v314 = *v129;
              v224 = *(v129 - 2);
              v129[2] = *(v129 - 3);
              v129[3] = v224;
              v129[4] = *(v129 - 1);
              v225 = *(v129 - 4);
              *v129 = *(v129 - 5);
              v129[1] = v225;
              *v223 = v314;
              v226 = v315;
              v227 = v316;
              v228 = v317[0];
              *(v223 + 57) = *(v317 + 9);
              v223[2] = v227;
              v223[3] = v228;
              v223[1] = v226;
              if (!i)
              {
                break;
              }

              v129 -= 5;
            }

            v16 = (v297 + 1);
            v129 = v296 + 5;
            v130 = v295 - 1;
            if (v297 + 1 == v291)
            {
              v16 = v291;
              goto LABEL_156;
            }
          }
        }
      }

      if (v16 < v128)
      {
        goto LABEL_233;
      }

      v9 = v16;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v229 = v290;
      }

      else
      {
        v229 = sub_190835714(0, *(v290 + 2) + 1, 1, v290);
      }

      v231 = *(v229 + 2);
      v230 = *(v229 + 3);
      v232 = v231 + 1;
      if (v231 >= v230 >> 1)
      {
        v229 = sub_190835714((v230 > 1), v231 + 1, 1, v229);
      }

      *(v229 + 2) = v232;
      v233 = &v229[16 * v231];
      *(v233 + 4) = v292;
      *(v233 + 5) = v9;
      a4 = *v289;
      if (!*v289)
      {
        goto LABEL_249;
      }

      v234 = v229;
      if (v231)
      {
        while (1)
        {
          v235 = v232 - 1;
          if (v232 >= 4)
          {
            break;
          }

          if (v232 == 3)
          {
            v236 = v234;
            v237 = *(v234 + 32);
            v238 = v236;
            v239 = *(v236 + 40);
            v249 = __OFSUB__(v239, v237);
            v240 = v239 - v237;
            v241 = v249;
LABEL_177:
            if (v241)
            {
              goto LABEL_222;
            }

            v255 = (v238 + 16 * v232);
            v257 = *v255;
            v256 = v255[1];
            v258 = __OFSUB__(v256, v257);
            v259 = v256 - v257;
            v260 = v258;
            if (v258)
            {
              goto LABEL_225;
            }

            v261 = (v238 + 32 + 16 * v235);
            v263 = *v261;
            v262 = v261[1];
            v249 = __OFSUB__(v262, v263);
            v264 = v262 - v263;
            if (v249)
            {
              goto LABEL_228;
            }

            if (__OFADD__(v259, v264))
            {
              goto LABEL_229;
            }

            if (v259 + v264 >= v240)
            {
              if (v240 < v264)
              {
                v235 = v232 - 2;
              }

              goto LABEL_198;
            }

            goto LABEL_191;
          }

          v238 = v234;
          v265 = (v234 + 16 * v232);
          v267 = *v265;
          v266 = v265[1];
          v249 = __OFSUB__(v266, v267);
          v259 = v266 - v267;
          v260 = v249;
LABEL_191:
          if (v260)
          {
            goto LABEL_224;
          }

          v268 = v238 + 16 * v235;
          v270 = *(v268 + 32);
          v269 = *(v268 + 40);
          v249 = __OFSUB__(v269, v270);
          v271 = v269 - v270;
          if (v249)
          {
            goto LABEL_227;
          }

          if (v271 < v259)
          {
            v234 = v238;
            goto LABEL_16;
          }

LABEL_198:
          v276 = v235 - 1;
          if (v235 - 1 >= v232)
          {
            __break(1u);
LABEL_218:
            __break(1u);
LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
LABEL_224:
            __break(1u);
LABEL_225:
            __break(1u);
LABEL_226:
            __break(1u);
LABEL_227:
            __break(1u);
LABEL_228:
            __break(1u);
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
LABEL_232:
            __break(1u);
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
LABEL_235:
            __break(1u);
            goto LABEL_236;
          }

          if (!*v298)
          {
            goto LABEL_242;
          }

          v277 = *(v238 + 32 + 16 * v276);
          v278 = *(v238 + 32 + 16 * v235 + 8);
          v279 = v299;
          sub_190C46058((*v298 + 80 * v277), (*v298 + 80 * *(v238 + 32 + 16 * v235)), (*v298 + 80 * v278), a4);
          v299 = v279;
          if (v279)
          {
            goto LABEL_216;
          }

          if (v278 < v277)
          {
            goto LABEL_218;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v280 = v238;
          }

          else
          {
            v280 = sub_1909E383C(v238);
          }

          if (v276 >= *(v280 + 2))
          {
            goto LABEL_219;
          }

          v281 = &v280[16 * v276];
          *(v281 + 4) = v277;
          *(v281 + 5) = v278;
          v326 = v280;
          sub_1909E37B0(v235);
          v234 = v326;
          v232 = *(v326 + 2);
          if (v232 <= 1)
          {
            goto LABEL_16;
          }
        }

        v238 = v234;
        v242 = v234 + 32;
        v243 = v234 + 32 + 16 * v232;
        v244 = *(v243 - 64);
        v245 = *(v243 - 56);
        v249 = __OFSUB__(v245, v244);
        v246 = v245 - v244;
        if (v249)
        {
          goto LABEL_220;
        }

        v248 = *(v243 - 48);
        v247 = *(v243 - 40);
        v249 = __OFSUB__(v247, v248);
        v240 = v247 - v248;
        v241 = v249;
        if (v249)
        {
          goto LABEL_221;
        }

        v250 = (v238 + 16 * v232);
        v252 = *v250;
        v251 = v250[1];
        v249 = __OFSUB__(v251, v252);
        v253 = v251 - v252;
        if (v249)
        {
          goto LABEL_223;
        }

        v249 = __OFADD__(v240, v253);
        v254 = v240 + v253;
        if (v249)
        {
          goto LABEL_226;
        }

        if (v254 >= v246)
        {
          v272 = (v242 + 16 * v235);
          v274 = *v272;
          v273 = v272[1];
          v249 = __OFSUB__(v273, v274);
          v275 = v273 - v274;
          if (v249)
          {
            goto LABEL_230;
          }

          if (v240 < v275)
          {
            v235 = v232 - 2;
          }

          goto LABEL_198;
        }

        goto LABEL_177;
      }

LABEL_16:
      v290 = v234;
      v8 = v298[1];
      a4 = v293;
      if (v9 >= v8)
      {
        goto LABEL_4;
      }
    }
  }

  v290 = MEMORY[0x1E69E7CC0];
LABEL_4:
  a4 = *v289;
  if (*v289)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v290;
    }

    else
    {
LABEL_237:
      v10 = sub_1909E383C(v290);
    }

    v326 = v10;
    v11 = *(v10 + 2);
    if (v11 < 2)
    {
LABEL_216:

      return;
    }

    while (*v298)
    {
      v12 = *&v10[16 * v11];
      v13 = *&v10[16 * v11 + 24];
      v14 = v299;
      sub_190C46058((*v298 + 80 * v12), (*v298 + 80 * *&v10[16 * v11 + 16]), (*v298 + 80 * v13), a4);
      v299 = v14;
      if (v14)
      {
        goto LABEL_216;
      }

      if (v13 < v12)
      {
        goto LABEL_231;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1909E383C(v10);
      }

      if (v11 - 2 >= *(v10 + 2))
      {
        goto LABEL_232;
      }

      v15 = &v10[16 * v11];
      *v15 = v12;
      *(v15 + 1) = v13;
      v326 = v10;
      sub_1909E37B0(v11 - 1);
      v10 = v326;
      v11 = *(v326 + 2);
      if (v11 <= 1)
      {
        goto LABEL_216;
      }
    }

LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_190C46058(char *a1, char *a2, char *a3, char *a4)
{
  v208 = sub_190D50EF0();
  v8 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v207 = &v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a2 - a1) / 80;
  v231 = a3;
  v11 = a3 - a2;
  v12 = (a3 - a2) / 80;
  v216 = a1;
  if (v10 >= v12)
  {
    v112 = 80 * v12;
    if (a4 != a2 || &a2[v112] <= a4)
    {
      memmove(a4, a2, 80 * v12);
    }

    v14 = &a4[v112];
    if (v11 < 80 || a2 <= v216)
    {
      v201 = a2;
      goto LABEL_149;
    }

    v113 = *MEMORY[0x1E695C410];
    v204 = (v8 + 8);
    v205 = v113;
    v206 = xmmword_190DDA780;
    v218 = a4;
    v114 = v231;
LABEL_75:
    v111 = a2 - 80;
    v114 -= 80;
    v115 = v14;
    v213 = a2 - 80;
    v214 = a2;
    while (1)
    {
      v14 = v115;
      v223 = *(v115 - 80);
      v116 = *(v115 - 64);
      v117 = *(v115 - 48);
      v118 = *(v115 - 32);
      *(v226 + 9) = *(v115 - 23);
      v225 = v117;
      v226[0] = v118;
      v224 = v116;
      v119 = *(v111 + 3);
      v229 = *(v111 + 2);
      *v230 = v119;
      *&v230[9] = *(v111 + 57);
      v120 = *(v111 + 1);
      v227 = *v111;
      v228 = v120;
      v121 = *(&v225 + 1);
      v122 = v225;
      v123 = *(&v118 + 1);
      v124 = v118;
      v125 = *&v226[1];
      v231 = v114;
      if (BYTE8(v226[1]))
      {
        sub_1909B8804(&v223, &v221);
        sub_1909B8804(&v227, &v221);
        sub_19091E678(v122, v121, v124, v123, v125, 1);

        goto LABEL_104;
      }

      sub_1909B8804(&v223, &v221);
      sub_1909B8804(&v227, &v221);
      v212 = v123;
      sub_19091E678(v122, v121, v124, v123, v125, 0);
      v126 = [v122 recipient];
      if (v126)
      {
        v127 = v126;
        v211 = v122;
        v128 = v124;
        v129 = v121;
        v130 = v125;
        v215 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
        v131 = swift_allocObject();
        *(v131 + 16) = v206;
        v132 = objc_opt_self();
        result = [v132 descriptorForUsedKeys];
        if (!result)
        {
          goto LABEL_155;
        }

        v133 = v205;
        *(v131 + 32) = result;
        *(v131 + 40) = v133;
        v134 = objc_opt_self();
        v135 = v133;
        *&v210 = v134;
        *(v131 + 48) = [v134 descriptorForRequiredKeysForStyle_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
        v136 = sub_190D57160();

        v137 = [v127 cnContactWithKeys_];

        v14 = v215;
        v125 = v130;
        v121 = v129;
        v124 = v128;
        v122 = v211;
        if (v137)
        {
          if (![v137 contactType])
          {
            result = [v132 componentsForContact_];
            if (!result)
            {
              goto LABEL_158;
            }

            v148 = result;
            v149 = [objc_opt_self() localizedStringFromPersonNameComponents:result style:1 options:0];

            v150 = sub_190D56F10();
            v152 = v151;

            v209 = v150;
            v221 = v150;
            v222 = v152;
            v217 = v152;
            v153 = v207;
            sub_190D50ED0();
            sub_19081E484();
            v154 = sub_190D580B0();
            v156 = v155;
            (*v204)(v153, v208);

            v157 = HIBYTE(v156) & 0xF;
            if ((v156 & 0x2000000000000000) == 0)
            {
              v157 = v154 & 0xFFFFFFFFFFFFLL;
            }

            if (v157)
            {

              sub_19091E6E0(v122, v121, v124, v212, v125, 0);
              v124 = v209;
              goto LABEL_95;
            }

            v14 = v215;
          }

          v138 = [v210 stringFromContact:v137 style:0];
          if (v138)
          {
            v139 = v138;
            v140 = sub_190D56F10();
            v142 = v141;

            *&v210 = v140;
            v221 = v140;
            v222 = v142;
            v217 = v142;
            v143 = v207;
            sub_190D50ED0();
            sub_19081E484();
            v144 = sub_190D580B0();
            v146 = v145;
            (*v204)(v143, v208);

            if ((v146 & 0x2000000000000000) != 0)
            {
              v147 = HIBYTE(v146) & 0xF;
            }

            else
            {
              v147 = v144 & 0xFFFFFFFFFFFFLL;
            }

            if (v147)
            {
              sub_19091E6E0(v122, v121, v124, v212, v125, 0);
              v124 = v210;
LABEL_95:
              v123 = v217;
              a4 = v218;
              v114 = v231;
              v14 = v215;
              goto LABEL_104;
            }

            v14 = v215;
          }

          else
          {
          }
        }
      }

      if ([v122 hasDisplayName])
      {
        v158 = [v122 displayName];
        if (!v158)
        {
          goto LABEL_102;
        }
      }

      else
      {
        [v122 fetchSuggestedNameIfNecessary];
        v158 = [v122 name];
        if (!v158)
        {
LABEL_102:
          sub_19091E6E0(v122, v121, v124, v212, v125, 0);
          v124 = 0;
          v123 = 0xE000000000000000;
          goto LABEL_103;
        }
      }

      v159 = v158;
      v160 = sub_190D56F10();
      v162 = v161;

      v123 = v162;
      sub_19091E6E0(v122, v121, v124, v212, v125, 0);
      v124 = v160;
LABEL_103:
      a4 = v218;
      v114 = v231;
LABEL_104:
      v221 = v124;
      v222 = v123;
      v217 = v123;
      v163 = v229;
      v164 = *&v230[8];
      v165 = *v230;
      if (v230[24])
      {
        sub_19091E678(v229, *(&v229 + 1), *v230, *&v230[8], *&v230[16], 1);

        goto LABEL_132;
      }

      v209 = *v230;
      *&v210 = *(&v229 + 1);
      v211 = *&v230[16];
      v212 = *&v230[8];
      v166 = v229;
      v167 = v229;
      v168 = [v167 recipient];
      if (v168)
      {
        v169 = v168;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
        v170 = swift_allocObject();
        *(v170 + 16) = v206;
        v171 = objc_opt_self();
        result = [v171 descriptorForUsedKeys];
        if (!result)
        {
          goto LABEL_156;
        }

        v172 = v205;
        *(v170 + 32) = result;
        *(v170 + 40) = v172;
        v173 = objc_opt_self();
        v174 = v172;
        *(v170 + 48) = [v173 descriptorForRequiredKeysForStyle_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
        v175 = sub_190D57160();

        v176 = [v169 cnContactWithKeys_];

        if (v176)
        {
          v215 = v14;
          if (![v176 contactType])
          {
            result = [v171 componentsForContact_];
            if (!result)
            {
              goto LABEL_159;
            }

            v186 = result;
            v187 = [objc_opt_self() localizedStringFromPersonNameComponents:result style:1 options:0];

            v188 = sub_190D56F10();
            v164 = v189;

            v203 = v188;
            v219 = v188;
            v220 = v164;
            v190 = v207;
            sub_190D50ED0();
            sub_19081E484();
            v191 = sub_190D580B0();
            v193 = v192;
            (*v204)(v190, v208);

            v194 = HIBYTE(v193) & 0xF;
            if ((v193 & 0x2000000000000000) == 0)
            {
              v194 = v191 & 0xFFFFFFFFFFFFLL;
            }

            if (v194)
            {

              sub_19091E6E0(v166, v210, v209, v212, v211, 0);
              v165 = v203;
              goto LABEL_121;
            }
          }

          v177 = [v173 stringFromContact:v176 style:0];
          if (v177)
          {
            v178 = v177;
            v179 = sub_190D56F10();
            v164 = v180;

            v219 = v179;
            v220 = v164;
            v181 = v207;
            sub_190D50ED0();
            sub_19081E484();
            v182 = sub_190D580B0();
            v184 = v183;
            (*v204)(v181, v208);

            if ((v184 & 0x2000000000000000) != 0)
            {
              v185 = HIBYTE(v184) & 0xF;
            }

            else
            {
              v185 = v182 & 0xFFFFFFFFFFFFLL;
            }

            if (v185)
            {
              sub_19091E6E0(v166, v210, v209, v212, v211, 0);
              v165 = v179;
LABEL_121:
              a4 = v218;
              v114 = v231;
              v14 = v215;
              goto LABEL_132;
            }
          }

          else
          {
          }

          v14 = v215;
        }
      }

      if ([v167 hasDisplayName])
      {
        v195 = [v167 displayName];
      }

      else
      {
        [v167 fetchSuggestedNameIfNecessary];
        v195 = [v167 name];
      }

      v196 = v195;
      a4 = v218;
      if (v196)
      {
        v197 = v196;
        v165 = sub_190D56F10();
        v164 = v198;

        sub_19091E6E0(v166, v210, v209, v212, v211, 0);
      }

      else
      {
        sub_19091E6E0(v166, v210, v209, v212, v211, 0);
        v165 = 0;
        v164 = 0xE000000000000000;
      }

      v114 = v231;
LABEL_132:
      v219 = v165;
      v220 = v164;
      sub_19081E484();
      v199 = sub_190D580D0();

      sub_1909B8860(&v227);
      sub_1909B8860(&v223);
      v111 = v213;
      v200 = v114 + 80;
      if (v199 == -1)
      {
        if (v200 < v214 || v114 >= v214 || v200 != v214)
        {
          memmove(v114, v213, 0x50uLL);
        }

        if (v14 <= a4 || (a2 = v111, v111 <= v216))
        {
LABEL_145:
          v201 = v111;
          goto LABEL_149;
        }

        goto LABEL_75;
      }

      v115 = (v14 - 80);
      if (v200 < v14 || v114 >= v14 || v200 != v14)
      {
        memmove(v114, v14 - 80, 0x50uLL);
      }

      v114 -= 80;
      if (v115 <= a4)
      {
        v14 -= 80;
        v201 = v214;
LABEL_149:
        v202 = 80 * ((v14 - a4) / 80);
        if (v201 != a4 || v201 >= &a4[v202])
        {
          memmove(v201, a4, v202);
        }

        return 1;
      }
    }
  }

  v13 = 80 * v10;
  if (a4 != a1 || &a1[v13] <= a4)
  {
    memmove(a4, a1, v13);
  }

  v14 = &a4[v13];
  v15 = v231;
  if (a2 - a1 < 80 || a2 >= v231)
  {
LABEL_146:
    v201 = v216;
    goto LABEL_149;
  }

  v205 = (v8 + 8);
  v209 = *MEMORY[0x1E695C410];
  v210 = xmmword_190DDA780;
  v16 = a2;
  v215 = &a4[v13];
  while (1)
  {
    v223 = *v16;
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    *(v226 + 9) = *(v16 + 57);
    v225 = v18;
    v226[0] = v19;
    v224 = v17;
    v21 = *(a4 + 2);
    v20 = *(a4 + 3);
    v22 = *(a4 + 1);
    *&v230[9] = *(a4 + 57);
    v229 = v21;
    *v230 = v20;
    v228 = v22;
    v218 = a4;
    v227 = *a4;
    v24 = *(&v18 + 1);
    v23 = v18;
    v25 = *(&v226[0] + 1);
    v26 = *&v226[0];
    v27 = *&v226[1];
    v214 = v16;
    if (BYTE8(v226[1]))
    {
      sub_1909B8804(&v223, &v221);
      sub_1909B8804(&v227, &v221);
      sub_19091E678(v23, v24, v26, v25, v27, 1);

      v28 = v25;
      goto LABEL_33;
    }

    sub_1909B8804(&v223, &v221);
    sub_1909B8804(&v227, &v221);
    v213 = v25;
    sub_19091E678(v23, v24, v26, v25, v27, 0);
    v29 = [v23 recipient];
    if (!v29)
    {
      goto LABEL_28;
    }

    v30 = v29;
    v212 = v23;
    v31 = v26;
    v32 = v24;
    v33 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v34 = swift_allocObject();
    *(v34 + 16) = v210;
    v35 = objc_opt_self();
    result = [v35 descriptorForUsedKeys];
    if (!result)
    {
      break;
    }

    v37 = v209;
    *(v34 + 32) = result;
    *(v34 + 40) = v37;
    v38 = objc_opt_self();
    v39 = v37;
    v211 = v38;
    *(v34 + 48) = [v38 descriptorForRequiredKeysForStyle_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
    v40 = sub_190D57160();

    v41 = [v30 cnContactWithKeys_];

    v15 = v231;
    v27 = v33;
    v24 = v32;
    v26 = v31;
    v23 = v212;
    if (v41)
    {
      if (![v41 contactType])
      {
        result = [v35 componentsForContact_];
        if (!result)
        {
          goto LABEL_157;
        }

        v52 = result;
        v53 = [objc_opt_self() localizedStringFromPersonNameComponents:result style:1 options:0];

        v54 = sub_190D56F10();
        v56 = v55;

        *&v206 = v54;
        v221 = v54;
        v222 = v56;
        v217 = v56;
        v57 = v207;
        sub_190D50ED0();
        sub_19081E484();
        v58 = sub_190D580B0();
        v60 = v59;
        (*v205)(v57, v208);

        v61 = HIBYTE(v60) & 0xF;
        if ((v60 & 0x2000000000000000) == 0)
        {
          v61 = v58 & 0xFFFFFFFFFFFFLL;
        }

        if (v61)
        {

          sub_19091E6E0(v23, v24, v26, v213, v27, 0);
          v26 = v206;
          goto LABEL_25;
        }

        v15 = v231;
      }

      v42 = [v211 stringFromContact:v41 style:0];
      if (v42)
      {
        v43 = v42;
        v44 = sub_190D56F10();
        v46 = v45;

        v211 = v44;
        v221 = v44;
        v222 = v46;
        v217 = v46;
        v47 = v207;
        sub_190D50ED0();
        sub_19081E484();
        v48 = sub_190D580B0();
        v50 = v49;
        (*v205)(v47, v208);

        if ((v50 & 0x2000000000000000) != 0)
        {
          v51 = HIBYTE(v50) & 0xF;
        }

        else
        {
          v51 = v48 & 0xFFFFFFFFFFFFLL;
        }

        if (v51)
        {
          sub_19091E6E0(v23, v24, v26, v213, v27, 0);
          v26 = v211;
LABEL_25:
          v15 = v231;
          v28 = v217;
          goto LABEL_33;
        }

        v15 = v231;
      }

      else
      {
      }
    }

LABEL_28:
    if ([v23 hasDisplayName])
    {
      v62 = [v23 displayName];
      if (v62)
      {
        goto LABEL_30;
      }
    }

    else
    {
      [v23 fetchSuggestedNameIfNecessary];
      v62 = [v23 name];
      if (v62)
      {
LABEL_30:
        v63 = v62;
        v64 = sub_190D56F10();
        v66 = v65;

        v67 = v24;
        v28 = v66;
        sub_19091E6E0(v23, v67, v26, v213, v27, 0);
        v26 = v64;
        goto LABEL_33;
      }
    }

    sub_19091E6E0(v23, v24, v26, v213, v27, 0);
    v26 = 0;
    v28 = 0xE000000000000000;
LABEL_33:
    v221 = v26;
    v222 = v28;
    v68 = *(&v229 + 1);
    v69 = v229;
    v70 = *&v230[8];
    v71 = *v230;
    if (v230[24])
    {
      sub_19091E678(v229, *(&v229 + 1), *v230, *&v230[8], *&v230[16], 1);
    }

    else
    {
      v211 = *(&v229 + 1);
      v212 = *&v230[16];
      v213 = *&v230[8];
      v72 = v229;
      v73 = [v72 recipient];
      if (v73)
      {
        v74 = v73;
        v217 = v28;
        v75 = v71;
        v76 = v69;
        v77 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
        v78 = swift_allocObject();
        *(v78 + 16) = v210;
        v79 = objc_opt_self();
        result = [v79 descriptorForUsedKeys];
        if (!result)
        {
          goto LABEL_154;
        }

        v80 = v209;
        *(v78 + 32) = result;
        *(v78 + 40) = v80;
        v81 = objc_opt_self();
        v82 = v80;
        *&v206 = v81;
        *(v78 + 48) = [v81 descriptorForRequiredKeysForStyle_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
        v83 = sub_190D57160();

        v84 = [v74 cnContactWithKeys_];

        v15 = v231;
        v72 = v77;
        v69 = v76;
        v71 = v75;
        if (v84)
        {
          if (![v84 contactType])
          {
            result = [v79 componentsForContact_];
            if (!result)
            {
              goto LABEL_160;
            }

            v94 = result;
            v95 = [objc_opt_self() localizedStringFromPersonNameComponents:result style:1 options:0];

            v96 = sub_190D56F10();
            v70 = v97;

            v204 = v96;
            v219 = v96;
            v220 = v70;
            v98 = v207;
            sub_190D50ED0();
            sub_19081E484();
            v99 = sub_190D580B0();
            v101 = v100;
            (*v205)(v98, v208);

            v102 = HIBYTE(v101) & 0xF;
            if ((v101 & 0x2000000000000000) == 0)
            {
              v102 = v99 & 0xFFFFFFFFFFFFLL;
            }

            if (v102)
            {

              sub_19091E6E0(v69, v211, v71, v213, v212, 0);
              v71 = v204;
              goto LABEL_50;
            }

            v15 = v231;
          }

          v85 = [v206 stringFromContact:v84 style:0];
          if (v85)
          {
            v86 = v85;
            v87 = sub_190D56F10();
            v70 = v88;

            *&v206 = v87;
            v219 = v87;
            v220 = v70;
            v89 = v207;
            sub_190D50ED0();
            sub_19081E484();
            v90 = sub_190D580B0();
            v92 = v91;
            (*v205)(v89, v208);

            if ((v92 & 0x2000000000000000) != 0)
            {
              v93 = HIBYTE(v92) & 0xF;
            }

            else
            {
              v93 = v90 & 0xFFFFFFFFFFFFLL;
            }

            if (v93)
            {
              sub_19091E6E0(v69, v211, v71, v213, v212, 0);
              v71 = v206;
LABEL_50:
              a4 = v218;
              v15 = v231;
              goto LABEL_59;
            }

            v15 = v231;
          }

          else
          {
          }
        }
      }

      if ([v72 hasDisplayName])
      {
        v103 = [v72 displayName];
        if (!v103)
        {
          goto LABEL_57;
        }
      }

      else
      {
        [v72 fetchSuggestedNameIfNecessary];
        v103 = [v72 name];
        if (!v103)
        {
LABEL_57:
          sub_19091E6E0(v69, v211, v71, v213, v212, 0);
          v71 = 0;
          v70 = 0xE000000000000000;
          goto LABEL_58;
        }
      }

      v104 = v103;
      v105 = sub_190D56F10();
      v70 = v106;

      sub_19091E6E0(v69, v211, v71, v213, v212, 0);
      v71 = v105;
    }

LABEL_58:
    a4 = v218;
LABEL_59:
    v219 = v71;
    v220 = v70;
    sub_19081E484();
    v107 = sub_190D580D0();

    sub_1909B8860(&v227);
    sub_1909B8860(&v223);
    v108 = v216;
    if (v107 == -1)
    {
      v109 = v214;
      v16 = v214 + 80;
      v14 = v215;
      if (v216 == v214)
      {
        goto LABEL_62;
      }

LABEL_61:
      memmove(v216, v109, 0x50uLL);
      goto LABEL_62;
    }

    v109 = a4;
    v110 = v216 == a4;
    a4 += 80;
    v16 = v214;
    v14 = v215;
    if (!v110)
    {
      goto LABEL_61;
    }

LABEL_62:
    v111 = v108 + 80;
    if (a4 >= v14)
    {
      goto LABEL_145;
    }

    v216 = v111;
    if (v16 >= v15)
    {
      goto LABEL_146;
    }
  }

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
  return result;
}

uint64_t sub_190C476E0()
{
  v1 = (*(v0 + 16))();
  if (!v1)
  {
    return -1;
  }

  v2 = v1;
  v3 = [v1 serviceForSendingPriority];

  return v3;
}

uint64_t sub_190C47730(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v39 = a3;
  v5 = __src;
  v6 = __src - __dst;
  v7 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 4;
  v9 = a3 - __src;
  v10 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 4;
  if (v8 < v10 >> 4)
  {
    v12 = __dst;
    if (a4 != __dst || &__dst[16 * v8] <= a4)
    {
      v14 = a4;
      memmove(a4, __dst, 16 * v8);
      a4 = v14;
      v12 = __dst;
    }

    v38 = &a4[16 * v8];
    v15 = a4;
    if (v6 < 16)
    {
LABEL_10:
      v5 = v12;
      goto LABEL_35;
    }

    while (1)
    {
      if (v5 >= v39)
      {
        goto LABEL_10;
      }

      v18 = *v5;
      v19 = *(v5 + 1);
      v21 = *v15;
      v20 = *(v15 + 1);
      sub_190D52690();
      sub_190D52690();
      v22 = v5;
      v23 = a5(v18, v19);
      v24 = a5(v21, v20);

      if (v24 < v23)
      {
        break;
      }

      v16 = v15;
      v17 = v12 == v15;
      v15 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v12 += 16;
      if (v15 >= v38)
      {
        goto LABEL_10;
      }
    }

    v16 = v5;
    v5 += 16;
    if (v12 == v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v12 = *v16;
    goto LABEL_13;
  }

  v15 = a4;
  if (a4 != __src || &__src[16 * v11] <= a4)
  {
    memmove(a4, __src, 16 * v11);
  }

  v38 = &v15[16 * v11];
  if (v9 >= 16 && v5 > __dst)
  {
    v35 = v15;
    do
    {
      v36 = v5;
      v5 -= 16;
      v39 -= 16;
      v25 = v38;
      while (1)
      {
        v26 = v39 + 16;
        v28 = *(v25 - 2);
        v27 = *(v25 - 1);
        v25 -= 16;
        v29 = *(v36 - 2);
        v30 = *(v36 - 1);
        sub_190D52690();
        sub_190D52690();
        v31 = a5(v28, v27);
        v32 = a5(v29, v30);

        if (v32 < v31)
        {
          break;
        }

        if (v26 != v38)
        {
          *v39 = *v25;
        }

        v39 -= 16;
        v38 = v25;
        v15 = v35;
        if (v25 <= v35)
        {
          v38 = v25;
          v5 = v36;
          goto LABEL_35;
        }
      }

      if (v26 != v36)
      {
        *v39 = *v5;
      }

      v15 = v35;
    }

    while (v38 > v35 && v5 > __dst);
  }

LABEL_35:
  if (v5 != v15 || v5 >= &v15[(v38 - v15 + (v38 - v15 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v5, v15, 16 * ((v38 - v15) / 16));
  }

  return 1;
}

uint64_t sub_190C47A48(char *a1, char *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;
  sub_190D50920();
  v25 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = sub_1909E383C(v25);
  }

  v21 = v6;
  *v6 = v25;
  v8 = v25 + 16;
  v9 = *(v25 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v21 = v25;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v25[16 * v9];
      v13 = *v12;
      v14 = v8;
      v15 = &v8[16 * v9];
      v16 = *(v15 + 1);
      __dst = (v10 + 16 * *v12);
      v17 = (v10 + 16 * *v15);
      v6 = (v10 + 16 * v16);
      sub_190D50920();
      sub_190C47730(__dst, v17, v6, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v21 = v25;

        return 1;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v18 = *v14;
      if (v9 - 2 >= *v14)
      {
        goto LABEL_13;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v19 = v18 - v9;
      if (v18 < v9)
      {
        goto LABEL_14;
      }

      v8 = v14;
      v9 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v25;
    __break(1u);
  }

  return result;
}

uint64_t sub_190C47BF0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = v5;
  v130 = MEMORY[0x1E69E7CC0];
  v7 = a3[1];
  swift_retain_n();
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      v113 = v10;
      if (v11 >= v7)
      {
        v7 = v11;
        v30 = a4;
      }

      else
      {
        v123 = v9;
        v109 = v6;
        v12 = (*a3 + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        v15 = v10;
        v116 = 16 * v10;
        v16 = (*a3 + 16 * v10);
        v18 = *v16;
        v17 = v16[1];
        sub_190D52690();
        sub_190D52690();
        v120 = a5(v13, v14);
        v118 = a5(v18, v17);

        v19 = v15 + 2;
        v20 = v16 + 5;
        while (v7 != v19)
        {
          v21 = *(v20 - 1);
          v22 = *v20;
          v24 = *(v20 - 3);
          v23 = *(v20 - 2);
          sub_190D52690();
          sub_190D52690();
          v25 = v7;
          v26 = a5(v21, v22);
          v27 = a5(v24, v23);

          v28 = v27 < v26;
          v7 = v25;
          v29 = !v28;
          ++v19;
          v20 += 2;
          if ((((v118 < v120) ^ v29) & 1) == 0)
          {
            v7 = v19 - 1;
            break;
          }
        }

        v6 = v109;
        v30 = a4;
        v9 = v123;
        v10 = v113;
        v31 = v116;
        if (v118 < v120)
        {
          if (v7 < v113)
          {
            goto LABEL_118;
          }

          if (v113 < v7)
          {
            v32 = 0;
            v33 = 16 * v7;
            v34 = v113;
            do
            {
              if (v34 != v7 + v32 - 1)
              {
                v39 = *a3;
                if (!*a3)
                {
                  goto LABEL_123;
                }

                v35 = (v39 + v31);
                v36 = v39 + v33;
                v37 = *v35;
                v38 = v35[1];
                *v35 = *(v36 - 16);
                *(v36 - 16) = v37;
                *(v36 - 8) = v38;
              }

              ++v34;
              --v32;
              v33 -= 16;
              v31 += 16;
            }

            while (v34 < v7 + v32);
          }
        }
      }

      v40 = a3[1];
      if (v7 >= v40)
      {
        goto LABEL_31;
      }

      if (__OFSUB__(v7, v10))
      {
        goto LABEL_117;
      }

      if (v7 - v10 >= v30)
      {
        goto LABEL_31;
      }

      if (__OFADD__(v10, v30))
      {
        goto LABEL_119;
      }

      if (v10 + v30 >= v40)
      {
        v41 = a3[1];
      }

      else
      {
        v41 = v10 + v30;
      }

      if (v41 < v10)
      {
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
        return result;
      }

      if (v7 == v41)
      {
LABEL_31:
        v42 = v7;
        if (v7 < v10)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v125 = v9;
        v110 = v6;
        v128 = *a3;
        v97 = (*a3 + 16 * v7);
        v98 = v10 - v7;
        v115 = v41;
        do
        {
          v119 = v97;
          v122 = v7;
          v99 = &v128[16 * v7];
          v100 = *v99;
          v101 = v99[1];
          v117 = v98;
          do
          {
            v102 = *(v97 - 2);
            v103 = *(v97 - 1);
            sub_190D52690();
            sub_190D52690();
            v104 = a5(v100, v101);
            v105 = a5(v102, v103);

            if (v105 >= v104)
            {
              break;
            }

            if (!v128)
            {
              goto LABEL_121;
            }

            v100 = *v97;
            v101 = v97[1];
            *v97 = *(v97 - 1);
            *(v97 - 1) = v101;
            *(v97 - 2) = v100;
            v97 -= 2;
          }

          while (!__CFADD__(v98++, 1));
          v7 = v122 + 1;
          v97 = v119 + 2;
          v42 = v115;
          v98 = v117 - 1;
        }

        while (v122 + 1 != v115);
        v6 = v110;
        v9 = v125;
        if (v115 < v113)
        {
          goto LABEL_116;
        }
      }

      v114 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_190835714(0, *(v9 + 2) + 1, 1, v9);
      }

      v44 = *(v9 + 2);
      v43 = *(v9 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v9 = sub_190835714((v43 > 1), v44 + 1, 1, v9);
      }

      *(v9 + 2) = v45;
      v46 = v9 + 32;
      v47 = &v9[16 * v44 + 32];
      *v47 = v113;
      *(v47 + 1) = v42;
      v127 = *a1;
      if (!*a1)
      {
        goto LABEL_124;
      }

      if (v44)
      {
        v121 = v9 + 32;
        v124 = v9;
        while (1)
        {
          v48 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v49 = *(v9 + 4);
            v50 = *(v9 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_52:
            if (v52)
            {
              goto LABEL_106;
            }

            v65 = &v9[16 * v45];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_108;
            }

            v71 = &v46[16 * v48];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_113;
            }

            if (v69 + v74 >= v51)
            {
              if (v51 < v74)
              {
                v48 = v45 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          if (v45 < 2)
          {
            goto LABEL_114;
          }

          v75 = &v9[16 * v45];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_67:
          if (v70)
          {
            goto LABEL_110;
          }

          v78 = &v46[16 * v48];
          v80 = *v78;
          v79 = *(v78 + 1);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_112;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }

LABEL_74:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_120;
          }

          v86 = *a3;
          if (!*a3)
          {
            goto LABEL_122;
          }

          v87 = v6;
          v88 = &v46[16 * v48 - 16];
          v89 = *v88;
          v90 = v48;
          v91 = &v46[16 * v48];
          v92 = *(v91 + 1);
          v93 = (v86 + 16 * *v88);
          v94 = (v86 + 16 * *v91);
          v95 = (v86 + 16 * v92);
          sub_190D50920();
          sub_190C47730(v93, v94, v95, v127, a5);
          v6 = v87;
          if (v87)
          {

            goto LABEL_97;
          }

          v9 = v124;
          if (v92 < v89)
          {
            goto LABEL_101;
          }

          v96 = *(v124 + 2);
          if (v90 > v96)
          {
            goto LABEL_102;
          }

          *v88 = v89;
          *(v88 + 1) = v92;
          if (v90 >= v96)
          {
            goto LABEL_103;
          }

          v45 = v96 - 1;
          memmove(v91, v91 + 16, 16 * (v96 - 1 - v90));
          *(v124 + 2) = v96 - 1;
          v46 = v121;
          if (v96 <= 2)
          {
            goto LABEL_3;
          }
        }

        v53 = &v46[16 * v45];
        v54 = *(v53 - 8);
        v55 = *(v53 - 7);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_104;
        }

        v58 = *(v53 - 6);
        v57 = *(v53 - 5);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_105;
        }

        v60 = &v9[16 * v45];
        v62 = *v60;
        v61 = *(v60 + 1);
        v59 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v59)
        {
          goto LABEL_107;
        }

        v59 = __OFADD__(v51, v63);
        v64 = v51 + v63;
        if (v59)
        {
          goto LABEL_109;
        }

        if (v64 >= v56)
        {
          v82 = &v46[16 * v48];
          v84 = *v82;
          v83 = *(v82 + 1);
          v59 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v59)
          {
            goto LABEL_115;
          }

          if (v51 < v85)
          {
            v48 = v45 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_52;
      }

LABEL_3:
      v7 = a3[1];
      v8 = v114;
      if (v114 >= v7)
      {
        v130 = v9;
        break;
      }
    }
  }

  v107 = *a1;
  if (!*a1)
  {
    goto LABEL_125;
  }

  sub_190D50920();
  sub_190C47A48(&v130, v107, a3, a5);
  if (v6)
  {

LABEL_97:
  }

  else
  {
  }
}

uint64_t sub_190C48320(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3 != a2)
  {
    v20 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
LABEL_5:
    v18 = v6;
    v19 = a3;
    v8 = (v20 + 16 * a3);
    v9 = *v8;
    v10 = v8[1];
    v17 = v7;
    while (1)
    {
      v11 = *(v6 - 2);
      v12 = *(v6 - 1);
      sub_190D52690();
      sub_190D52690();
      v13 = a5(v9, v10);
      v14 = a5(v11, v12);

      if (v14 >= v13)
      {
LABEL_4:
        a3 = v19 + 1;
        v6 = v18 + 2;
        v7 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v9 = *v6;
      v10 = v6[1];
      *v6 = *(v6 - 1);
      *(v6 - 1) = v10;
      *(v6 - 2) = v9;
      v6 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_190C48444(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_190D58710();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_190D571D0();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_190D50920();
      sub_190C47BF0(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_190D50920();
    sub_190C48320(0, v4, 1, a1, a2);
  }
}

uint64_t sub_190C485A0(char **a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1909E39A8(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  sub_190D50920();
  sub_190C48444(v7, a2);

  *a1 = v4;
}

uint64_t sub_190C48654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA4;

  return sub_190C41DE4(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_190C4880C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA4;

  return sub_190C40444(a1, v4, v5, v6);
}

uint64_t sub_190C488C0(uint64_t a1)
{
  *(v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_190C48950, 0, 0);
}

uint64_t sub_190C48950()
{
  v0[8] = MEMORY[0x1E69E7CC0];
  v1 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_190DD5CE0;
  v3 = *MEMORY[0x1E695C208];
  v4 = *MEMORY[0x1E695C330];
  *(v2 + 32) = *MEMORY[0x1E695C208];
  *(v2 + 40) = v4;
  v5 = v3;
  v6 = v4;
  v7 = sub_19091E32C();
  sub_190CAA03C(v7);
  v8 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
  v9 = sub_190D57160();

  v10 = [v8 initWithKeysToFetch_];

  [v10 setUnifyResults_];
  [v10 setSortOrder_];
  v11 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = v0 + 8;
  v12[4] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_190C49448;
  *(v13 + 24) = v12;
  v0[6] = sub_190C49454;
  v0[7] = v13;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_190C40ECC;
  v0[5] = &block_descriptor_175_0;
  v14 = _Block_copy(v0 + 2);
  sub_190D52690();
  v15 = v11;
  sub_190D50920();

  v0[2] = 0;
  v16 = [v15 enumerateContactsWithFetchRequest:v10 error:v0 + 2 usingBlock:v14];
  _Block_release(v14);
  v17 = v0[2];
  v18 = v17;
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  if (v16)
  {

    goto LABEL_8;
  }

  v17 = sub_190D51420();

  swift_willThrow();
  if (qword_1EAD51CB8 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v19 = sub_190D53040();
  __swift_project_value_buffer(v19, qword_1EAD9E058);
  v20 = v17;
  v21 = sub_190D53020();
  v22 = sub_190D576A0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v17;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_19020E000, v21, v22, "Unable to enumerate contacts: %@", v23, 0xCu);
    sub_19022EEA4(v24, &unk_1EAD54610);
    MEMORY[0x193AF7A40](v24, -1, -1);
    MEMORY[0x193AF7A40](v23, -1, -1);
  }

  else
  {
  }

LABEL_8:
  v27 = v0[8];

  v28 = v0[1];

  return v28(v27);
}

uint64_t sub_190C48DC8()
{
  sub_190D572A0();
  v0[2] = sub_190D57290();
  v2 = sub_190D57240();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x1EEE6DFA0](sub_190C48E5C, v2, v1);
}

uint64_t sub_190C48E5C()
{
  v1 = [objc_opt_self() sharedManager];
  v0[5] = v1;
  v2 = [v1 favoriteHandleStrings];
  v3 = sub_190D57180();
  v0[6] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_190C48F40;

  return sub_190C488C0(v3);
}

uint64_t sub_190C48F40(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_190C4908C, v4, v3);
}

uint64_t sub_190C4908C()
{
  v29 = v0;
  v1 = *(v0 + 64);

  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = v0;
    v27 = v2 - 1;
    v3 = MEMORY[0x1E69E7CC0];
    for (i = (*(v0 + 64) + 64); ; i += 5)
    {
      v5 = *(i - 3);
      v6 = *(i - 1);
      v25 = *(i - 2);
      v7 = *i;
      v26 = *(i - 4);
      v8 = v26;
      v9 = v5;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v10 = v8;
      v11 = v9;
      v12 = v10;
      v13 = v11;
      v14 = [v12 identifier];
      v15 = sub_190D56F10();
      v17 = v16;

      v28[0] = 0x3A746361746E6F43;
      v28[1] = 0xE800000000000000;
      MEMORY[0x193AF28B0](v15, v17);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_190837108(0, *(v3 + 2) + 1, 1, v3);
      }

      v19 = *(v3 + 2);
      v18 = *(v3 + 3);
      if (v19 >= v18 >> 1)
      {
        v3 = sub_190837108((v18 > 1), v19 + 1, 1, v3);
      }

      *(v3 + 2) = v19 + 1;
      v20 = &v3[80 * v19];
      *(v20 + 4) = 0x3A746361746E6F43;
      *(v20 + 5) = 0xE800000000000000;
      *(v20 + 6) = 0;
      v20[56] = 0;
      *(v20 + 57) = 1953394499;
      *(v20 + 15) = 1952670068;
      *(v20 + 8) = v26;
      *(v20 + 9) = v5;
      *(v20 + 10) = v25;
      *(v20 + 11) = v6;
      *(v20 + 12) = v7;
      v20[104] = 1;
      if (!v27)
      {
        break;
      }

      --v27;
    }

    v0 = v24;
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v28[0] = v3;
  sub_190D52690();
  sub_190C43854(v28);

  v21 = v28[0];
  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_190C49388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_190C40784(a1, v4, v5, v7, v6);
}

uint64_t sub_190C4947C()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
  sub_190D50920();
}

uint64_t sub_190C494B8()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
  sub_190D52690();
}

id CKCallButtonConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKCallButtonConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKCallButtonConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190C49AE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = CKFrameworkBundle();
  if (v5)
  {
    v6 = v5;
    v7 = sub_190D56ED0();
    v8 = sub_190D56ED0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

    v10 = sub_190D56F10();
    v12 = v11;

    v13 = sub_190D56ED0();
    v14 = [objc_opt_self() systemImageNamed_];

    v15 = objc_opt_self();
    v16 = [v15 whiteColor];
    v17 = [v15 whiteColor];
    v18 = type metadata accessor for CKCallButtonConfiguration();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_title];
    *v20 = v10;
    v20[1] = v12;
    *&v19[OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_symbolImage] = v14;
    *&v19[OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_textColor] = v16;
    *&v19[OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_imageColor] = v17;
    v19[OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_wantsExtraPadding] = 1;
    *&v19[OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_buttonTintColor] = 0;
    v25.receiver = v19;
    v25.super_class = v18;
    v21 = v14;
    v22 = v16;
    v23 = v17;
    v24 = objc_msgSendSuper2(&v25, sel_init);

    *a4 = v24;
  }

  else
  {
    __break(1u);
  }
}

void sub_190C49D48(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, void *a5)
{
  v7 = sub_190D56ED0();
  v8 = [objc_opt_self() systemImageNamed_];

  v9 = [objc_opt_self() *a4];
  v10 = type metadata accessor for CKCallButtonConfiguration();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_title];
  *v12 = 0;
  v12[1] = 0;
  *&v11[OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_symbolImage] = v8;
  *&v11[OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_textColor] = 0;
  *&v11[OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_imageColor] = v9;
  v11[OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_wantsExtraPadding] = 0;
  *&v11[OBJC_IVAR____TtC7ChatKit25CKCallButtonConfiguration_buttonTintColor] = 0;
  v16.receiver = v11;
  v16.super_class = v10;
  v13 = v8;
  v14 = v9;
  v15 = objc_msgSendSuper2(&v16, sel_init);

  *a5 = v15;
}

id static CKCallButtonConfiguration.configurationForCallMode(_:)(uint64_t a1)
{
  v1 = sub_190C49F10(a1);

  return v1;
}

uint64_t sub_190C49F10(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_1EAD51F98 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EAD60C30;
        return *v1;
      }

      if (a1 == 2)
      {
        if (qword_1EAD51FA0 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EAD60C38;
        return *v1;
      }
    }

LABEL_18:
    if (qword_1EAD51F90 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EAD60C28;
    return *v1;
  }

  if (a1 <= 4)
  {
    if (a1 == 3)
    {
      if (qword_1EAD51FA8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EAD60C40;
    }

    else
    {
      if (qword_1EAD51FB0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EAD60C48;
    }

    return *v1;
  }

  if (a1 != 5)
  {
    if (a1 == 6)
    {
      if (qword_1EAD51FC0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EAD60C58;
      return *v1;
    }

    goto LABEL_18;
  }

  if (qword_1EAD51FB8 != -1)
  {
    swift_once();
  }

  v1 = &qword_1EAD60C50;
  return *v1;
}

uint64_t sub_190C4A124(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60D80);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60D88);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60D90);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60D98);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190C4DF08();
  sub_190D58900();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_190C4DFB0();
      sub_190D58690();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_190C4DF5C();
      v16 = v22;
      sub_190D58690();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_190C4E004();
    sub_190D58690();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_190C4A4A4()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_190C4A50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_190C4D5E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_190C4A540(uint64_t a1)
{
  v2 = sub_190C4DF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_190C4A57C(uint64_t a1)
{
  v2 = sub_190C4DF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_190C4A5C4(uint64_t a1)
{
  v2 = sub_190C4DF5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_190C4A600(uint64_t a1)
{
  v2 = sub_190C4DF5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_190C4A63C(uint64_t a1)
{
  v2 = sub_190C4DFB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_190C4A678(uint64_t a1)
{
  v2 = sub_190C4DFB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_190C4A6B4(uint64_t a1)
{
  v2 = sub_190C4E004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_190C4A6F0(uint64_t a1)
{
  v2 = sub_190C4E004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_190C4A72C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_190C4D708(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_190C4A788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_190D58760();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_190C4A80C(uint64_t a1)
{
  v2 = sub_190C4E058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_190C4A848(uint64_t a1)
{
  v2 = sub_190C4E058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_190C4A8BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60DA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190C4E058();
  sub_190D588F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_190D58630();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_190C4AA38(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60DB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190C4E058();
  sub_190D58900();
  sub_190D586B0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_190C4AB74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D518A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_190C4ABE0()
{
  sub_190D58870();
  sub_190D518A0();
  sub_190C4C29C(&qword_1EAD462D8, MEMORY[0x1E69695A8]);
  sub_190D56DD0();
  return sub_190D588C0();
}

uint64_t sub_190C4AC68()
{
  sub_190D518A0();
  sub_190C4C29C(&qword_1EAD462D8, MEMORY[0x1E69695A8]);

  return sub_190D56DD0();
}

uint64_t sub_190C4ACEC()
{
  sub_190D58870();
  sub_190D518A0();
  sub_190C4C29C(&qword_1EAD462D8, MEMORY[0x1E69695A8]);
  sub_190D56DD0();
  return sub_190D588C0();
}

uint64_t sub_190C4AD70(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_190D58760()) && (sub_19084A764(), (sub_190D57D90()))
  {
    return sub_190C4CFE8(v2, v3, v5, v6) & (v4 == v7);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190C4AE2C()
{
  v1 = *(v0 + 40);
  sub_190D58870();
  sub_190D56FC0();
  sub_190D57DA0();
  sub_190D51680();
  MEMORY[0x193AF4110](v1);
  return sub_190D588C0();
}

uint64_t sub_190C4AEC0()
{
  v1 = *(v0 + 40);
  sub_190D56FC0();
  sub_190D57DA0();
  sub_190D51680();
  return MEMORY[0x193AF4110](v1);
}

uint64_t sub_190C4AF28()
{
  v1 = *(v0 + 40);
  sub_190D58870();
  sub_190D56FC0();
  sub_190D57DA0();
  sub_190D51680();
  MEMORY[0x193AF4110](v1);
  return sub_190D588C0();
}

uint64_t sub_190C4AFB8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60D28);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190C4DE0C();
  sub_190D58900();
  v11 = a2;
  v12 = a3;
  sub_19083B680(a2, a3);
  sub_190C4DEB4();
  sub_190D586E0();
  sub_19083B6D4(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_190C4B130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_190D58760();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_190C4B1B8(uint64_t a1)
{
  v2 = sub_190C4DE0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_190C4B1F4(uint64_t a1)
{
  v2 = sub_190C4DE0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_190C4B25C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *v3;
  v5 = v3[1];
  sub_190D58870();
  a3(v8, v6, v5);
  return sub_190D588C0();
}

uint64_t sub_190C4B2D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v7 = *v4;
  v6 = v4[1];
  sub_190D58870();
  a4(v9, v7, v6);
  return sub_190D588C0();
}

void *sub_190C4B330@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_190C4DC98(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_190C4B378()
{
  v1 = v0;
  v2 = sub_190D518A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_190D582B0();
  v16 = v14;
  v17 = v15;
  MEMORY[0x193AF28B0](3826793, 0xE300000000000000);
  v6 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  sub_190C4C29C(&qword_1EAD60DE0, MEMORY[0x1E69695A8]);
  v7 = sub_190D58720();
  MEMORY[0x193AF28B0](v7);

  (*(v3 + 8))(v5, v2);
  MEMORY[0x193AF28B0](0xD000000000000011, 0x8000000190E7BEF0);
  v8 = *(v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_conversationId);
  v9 = *(v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_conversationId + 8);
  sub_190D52690();
  MEMORY[0x193AF28B0](v8, v9);

  MEMORY[0x193AF28B0](0x3A6574617473202CLL, 0xE800000000000000);
  v13[7] = *(v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state);
  sub_190D58450();
  MEMORY[0x193AF28B0](0xD00000000000001BLL, 0x8000000190E7BF10);
  v10 = sub_190D58920();
  MEMORY[0x193AF28B0](v10);

  MEMORY[0x193AF28B0](0xD00000000000001ALL, 0x8000000190E7BF30);
  v11 = sub_190D58920();
  MEMORY[0x193AF28B0](v11);

  return v16;
}

uint64_t sub_190C4B620()
{
  v1 = v0;
  v2 = sub_190D518A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  sub_190C4C29C(&qword_1EAD462D8, MEMORY[0x1E69695A8]);
  sub_190D56DD0();
  (*(v3 + 8))(v5, v2);
  sub_190D52690();
  sub_190D56FC0();

  if (*(v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt + 8))
  {
    sub_190D58890();
    sub_190D52690();
    sub_190D56FC0();
  }

  else
  {
    sub_190D58890();
  }

  MEMORY[0x193AF4110](*(v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state));
  v7 = (v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image);
  v8 = *(v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image + 8);
  if (v8 >> 60 == 15)
  {
    return sub_190D58890();
  }

  v10 = *v7;
  sub_190D58890();
  sub_19083B680(v10, v8);
  sub_190D51680();
  return sub_19029064C(v10, v8);
}

unint64_t sub_190C4B868()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7865646E69;
  if (v1 == 6)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 == 4)
  {
    v4 = 0x61737265766E6F63;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x6574617473;
  if (v1 != 2)
  {
    v5 = 0x6567616D69;
  }

  if (*v0)
  {
    v2 = 0x74706D6F7270;
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
    return v4;
  }
}

uint64_t sub_190C4B954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_190C4E848(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_190C4B988(uint64_t a1)
{
  v2 = sub_190C4D490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_190C4B9C4(uint64_t a1)
{
  v2 = sub_190C4D490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_190C4BA00()
{
  v1 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
  v2 = sub_190D518A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_19029064C(*(v0 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image), *(v0 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_190C4BB00()
{
  result = sub_190D518A0();
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

uint64_t sub_190C4BBD0(void *a1)
{
  v2 = sub_190D518A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60DB8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190C4D490();
  v10 = v15[0];
  sub_190D58900();
  v11 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
  swift_beginAccess();
  (*(v3 + 16))(v5, v10 + v11, v2);
  LOBYTE(v16) = 0;
  sub_190C4C29C(&qword_1EAD60DC0, MEMORY[0x1E69695A8]);
  v12 = v15[1];
  sub_190D586E0();
  (*(v3 + 8))(v5, v2);
  if (!v12)
  {
    v16 = *(v10 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt);
    v17 = 1;
    sub_190C4E0AC();
    sub_190D586A0();
    LOBYTE(v16) = *(v10 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state);
    v17 = 2;
    sub_190C4E100();
    sub_190D586E0();
    v13 = *(v10 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image + 8);
    *&v16 = *(v10 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image);
    *(&v16 + 1) = v13;
    v17 = 3;
    sub_19087C5A8(v16, v13);
    sub_190C4E154();
    sub_190D586A0();
    sub_19029064C(v16, *(&v16 + 1));
    LOBYTE(v16) = 4;
    sub_190D52690();
    sub_190D586B0();

    v16 = *(v10 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_promptGenerationDuration);
    v17 = 5;
    sub_190D586E0();
    v16 = *(v10 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_imageGenerationDuration);
    v17 = 6;
    sub_190D586E0();
    LOBYTE(v16) = 7;
    sub_190D586D0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_190C4C060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_190C4C0B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_190C4C188()
{
  result = sub_190D518A0();
  if (v1 <= 0x3F)
  {
    result = sub_1908E1324();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_190C4C29C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190C4C2E8()
{
  result = qword_1EAD60CB8;
  if (!qword_1EAD60CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60CB8);
  }

  return result;
}

unint64_t sub_190C4C340()
{
  result = qword_1EAD60CC0;
  if (!qword_1EAD60CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60CC0);
  }

  return result;
}

unint64_t sub_190C4C398()
{
  result = qword_1EAD60CC8;
  if (!qword_1EAD60CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60CC8);
  }

  return result;
}

unint64_t sub_190C4C3F0()
{
  result = qword_1EAD60CD0;
  if (!qword_1EAD60CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60CD0);
  }

  return result;
}

uint64_t sub_190C4C444(void *a1)
{
  v3 = sub_190D518A0();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60CE0);
  v33 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v28 - v6;
  v32 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
  sub_190D50450();
  v8 = (v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt);
  *v8 = 0;
  v8[1] = 0;
  v31 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state;
  *(v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state) = 0;
  v9 = (v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image);
  *(v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image) = xmmword_190DD9310;
  v10 = (v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_promptGenerationDuration);
  *v10 = sub_190D58930();
  v10[1] = v11;
  v38 = v1;
  v12 = (v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_imageGenerationDuration);
  *v12 = sub_190D58930();
  v12[1] = v13;
  v14 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_190C4D490();
  v35 = v7;
  v15 = v37;
  sub_190D588F0();
  if (v15)
  {
    v21 = v38;
    (*(v40 + 8))(v38 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id, v39);

    sub_19029064C(*(v21 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image), *(v21 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image + 8));
    _s10SuggestionCMa(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v32;
    v17 = v33;
    v37 = v8;
    v29 = v10;
    v30 = v9;
    LOBYTE(v42) = 0;
    sub_190C4C29C(&qword_1EAD60CF0, MEMORY[0x1E69695A8]);
    v18 = v34;
    v19 = v39;
    sub_190D58660();
    v21 = v38;
    swift_beginAccess();
    (*(v40 + 40))(v21 + v16, v18, v19);
    swift_endAccess();
    v43 = 1;
    sub_190C4D4E4();
    sub_190D58620();
    *v37 = v42;

    v43 = 2;
    sub_190C4D538();
    sub_190D58660();
    *(v21 + v31) = v42;
    v43 = 3;
    sub_190C4D58C();
    sub_190D58620();
    v22 = *v30;
    v23 = v30[1];
    *v30 = v42;
    sub_19029064C(v22, v23);
    LOBYTE(v42) = 4;
    v24 = sub_190D58630();
    v25 = (v21 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_conversationId);
    *v25 = v24;
    v25[1] = v26;
    v43 = 5;
    sub_190D58660();
    *v29 = v42;
    v43 = 6;
    sub_190D58660();
    *v12 = v42;
    LOBYTE(v42) = 7;
    v27 = sub_190D58650();
    (*(v17 + 8))(v35, v36);
    *(v21 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_index) = v27;
  }

  __swift_destroy_boxed_opaque_existential_0(v41);
  return v21;
}

uint64_t sub_190C4CA00()
{
  sub_190D58870();
  sub_190C4B620();
  return sub_190D588C0();
}

uint64_t sub_190C4CA68()
{
  sub_190D58870();
  sub_190C4B620();
  return sub_190D588C0();
}

uint64_t sub_190C4CAA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  _s10SuggestionCMa(0);
  v5 = swift_allocObject();
  result = sub_190C4C444(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_190C4CB70@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_190D51070();
    if (v10)
    {
      v11 = sub_190D510A0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_190D51090();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_190D51070();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_190D510A0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_190D51090();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_190C4CDA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_190C4CF30(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_19083B6D4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_190C4CB70(v13, a3, a4, &v12);
  v10 = v4;
  sub_19083B6D4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_190C4CF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_190D51070();
  v11 = result;
  if (result)
  {
    result = sub_190D510A0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_190D51090();
  sub_190C4CB70(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_190C4CFE8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_19083B680(a3, a4);
          return sub_190C4CDA0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_190C4D150(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D518A0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-v9];
  v11 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, a1 + v11, v4);
  v13 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
  swift_beginAccess();
  v12(v8, a2 + v13, v4);
  LOBYTE(v13) = sub_190D51870();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

  v15 = *(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_conversationId) == *(a2 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_conversationId) && *(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_conversationId + 8) == *(a2 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_conversationId + 8);
  if (!v15 && (sub_190D58760() & 1) == 0)
  {
    goto LABEL_20;
  }

  v16 = *(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt + 8);
  v17 = *(a2 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt + 8);
  if (v16)
  {
    if (!v17 || (*(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt) != *(a2 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt) || v16 != v17) && (sub_190D58760() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v17)
  {
LABEL_20:
    v22 = 0;
    return v22 & 1;
  }

  if (*(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state) != *(a2 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state))
  {
    goto LABEL_20;
  }

  v19 = *(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image);
  v18 = *(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image + 8);
  v21 = *(a2 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image);
  v20 = *(a2 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image + 8);
  if (v18 >> 60 != 15)
  {
    if (v20 >> 60 != 15)
    {
      sub_19087C5A8(v19, v18);
      sub_19087C5A8(v21, v20);
      sub_19087C5A8(v19, v18);
      sub_19087C5A8(v21, v20);
      v22 = sub_190C4CFE8(v19, v18, v21, v20);
      sub_19029064C(v21, v20);
      sub_19029064C(v21, v20);
      sub_19029064C(v19, v18);
      sub_19029064C(v19, v18);
      return v22 & 1;
    }

    goto LABEL_19;
  }

  if (v20 >> 60 != 15)
  {
LABEL_19:
    sub_19087C5A8(v19, v18);
    sub_19087C5A8(v21, v20);
    sub_19029064C(v19, v18);
    sub_19029064C(v21, v20);
    goto LABEL_20;
  }

  sub_19087C5A8(v19, v18);
  sub_19087C5A8(v21, v20);
  sub_19029064C(v19, v18);
  v22 = 1;
  return v22 & 1;
}

unint64_t sub_190C4D490()
{
  result = qword_1EAD60CE8;
  if (!qword_1EAD60CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60CE8);
  }

  return result;
}

unint64_t sub_190C4D4E4()
{
  result = qword_1EAD60CF8;
  if (!qword_1EAD60CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60CF8);
  }

  return result;
}

unint64_t sub_190C4D538()
{
  result = qword_1EAD60D00;
  if (!qword_1EAD60D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60D00);
  }

  return result;
}

unint64_t sub_190C4D58C()
{
  result = qword_1EAD60D08;
  if (!qword_1EAD60D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60D08);
  }

  return result;
}

uint64_t sub_190C4D5E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_190D58760() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000190E7BF50 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000190E7BF70 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_190D58760();

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

uint64_t sub_190C4D708(void *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60D38);
  v32 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v26 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60D40);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60D48);
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60D50);
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190C4DF08();
  v12 = v35;
  sub_190D588F0();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = sub_190D58680();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = sub_190D58330();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60D60);
    *v21 = &_s5StateON;
    sub_190D58610();
    sub_190D58320();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    sub_190C4E004();
    v22 = v11;
    sub_190D58600();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    sub_190C4DFB0();
    v22 = v11;
    sub_190D58600();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  sub_190C4DF5C();
  sub_190D58600();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v36;
}

void *sub_190C4DC98(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60D10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190C4DE0C();
  sub_190D588F0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_190C4DE60();
    sub_190D58660();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_190C4DE0C()
{
  result = qword_1EAD60D18;
  if (!qword_1EAD60D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60D18);
  }

  return result;
}

unint64_t sub_190C4DE60()
{
  result = qword_1EAD60D20;
  if (!qword_1EAD60D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60D20);
  }

  return result;
}

unint64_t sub_190C4DEB4()
{
  result = qword_1EAD60D30;
  if (!qword_1EAD60D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60D30);
  }

  return result;
}

unint64_t sub_190C4DF08()
{
  result = qword_1EAD60D58;
  if (!qword_1EAD60D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60D58);
  }

  return result;
}

unint64_t sub_190C4DF5C()
{
  result = qword_1EAD60D68;
  if (!qword_1EAD60D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60D68);
  }

  return result;
}

unint64_t sub_190C4DFB0()
{
  result = qword_1EAD60D70;
  if (!qword_1EAD60D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60D70);
  }

  return result;
}

unint64_t sub_190C4E004()
{
  result = qword_1EAD60D78;
  if (!qword_1EAD60D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60D78);
  }

  return result;
}

unint64_t sub_190C4E058()
{
  result = qword_1EAD60DA8;
  if (!qword_1EAD60DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60DA8);
  }

  return result;
}

unint64_t sub_190C4E0AC()
{
  result = qword_1EAD60DC8;
  if (!qword_1EAD60DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60DC8);
  }

  return result;
}

unint64_t sub_190C4E100()
{
  result = qword_1EAD60DD0;
  if (!qword_1EAD60DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60DD0);
  }

  return result;
}

unint64_t sub_190C4E154()
{
  result = qword_1EAD60DD8;
  if (!qword_1EAD60DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60DD8);
  }

  return result;
}

unint64_t sub_190C4E21C()
{
  result = qword_1EAD60DE8;
  if (!qword_1EAD60DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60DE8);
  }

  return result;
}

unint64_t sub_190C4E274()
{
  result = qword_1EAD60DF0;
  if (!qword_1EAD60DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60DF0);
  }

  return result;
}

unint64_t sub_190C4E2CC()
{
  result = qword_1EAD60DF8;
  if (!qword_1EAD60DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60DF8);
  }

  return result;
}

unint64_t sub_190C4E324()
{
  result = qword_1EAD60E00;
  if (!qword_1EAD60E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E00);
  }

  return result;
}

unint64_t sub_190C4E37C()
{
  result = qword_1EAD60E08;
  if (!qword_1EAD60E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E08);
  }

  return result;
}

unint64_t sub_190C4E3D4()
{
  result = qword_1EAD60E10;
  if (!qword_1EAD60E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E10);
  }

  return result;
}

unint64_t sub_190C4E42C()
{
  result = qword_1EAD60E18;
  if (!qword_1EAD60E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E18);
  }

  return result;
}

unint64_t sub_190C4E484()
{
  result = qword_1EAD60E20;
  if (!qword_1EAD60E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E20);
  }

  return result;
}

unint64_t sub_190C4E4DC()
{
  result = qword_1EAD60E28;
  if (!qword_1EAD60E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E28);
  }

  return result;
}

unint64_t sub_190C4E534()
{
  result = qword_1EAD60E30;
  if (!qword_1EAD60E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E30);
  }

  return result;
}

unint64_t sub_190C4E58C()
{
  result = qword_1EAD60E38;
  if (!qword_1EAD60E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E38);
  }

  return result;
}

unint64_t sub_190C4E5E4()
{
  result = qword_1EAD60E40;
  if (!qword_1EAD60E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E40);
  }

  return result;
}

unint64_t sub_190C4E63C()
{
  result = qword_1EAD60E48;
  if (!qword_1EAD60E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E48);
  }

  return result;
}

unint64_t sub_190C4E694()
{
  result = qword_1EAD60E50;
  if (!qword_1EAD60E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E50);
  }

  return result;
}

unint64_t sub_190C4E6EC()
{
  result = qword_1EAD60E58;
  if (!qword_1EAD60E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E58);
  }

  return result;
}

unint64_t sub_190C4E744()
{
  result = qword_1EAD60E60;
  if (!qword_1EAD60E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E60);
  }

  return result;
}

unint64_t sub_190C4E79C()
{
  result = qword_1EAD60E68;
  if (!qword_1EAD60E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E68);
  }

  return result;
}

unint64_t sub_190C4E7F4()
{
  result = qword_1EAD60E70;
  if (!qword_1EAD60E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60E70);
  }

  return result;
}

uint64_t sub_190C4E848(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_190D58760() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_190D58760() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_190D58760() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_190D58760() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974 || (sub_190D58760() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000190E7BE80 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000190E7BEA0 == a2 || (sub_190D58760() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_190D58760();

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

double sub_190C4EAEC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C4FEE8(&qword_1EAD5B318, type metadata accessor for CKLanguageSelectionDownloadModel);
  sub_190D51C20();

  result = *(v3 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__progress);
  *a2 = result;
  return result;
}

double sub_190C4EBC4()
{
  swift_getKeyPath();
  sub_190C4FEE8(&qword_1EAD5B318, type metadata accessor for CKLanguageSelectionDownloadModel);
  sub_190D51C20();

  return *(v0 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__progress);
}

uint64_t type metadata accessor for CKLanguageSelectionDownloadModel()
{
  result = qword_1EAD60EA0;
  if (!qword_1EAD60EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190C4ECB8(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__progress) == a1)
  {
    *(v1 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__progress) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C4FEE8(&qword_1EAD5B318, type metadata accessor for CKLanguageSelectionDownloadModel);
    sub_190D51C10();
  }
}

uint64_t sub_190C4EDE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C4FEE8(&qword_1EAD5B318, type metadata accessor for CKLanguageSelectionDownloadModel);
  sub_190D51C20();

  v4 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__state;
  swift_beginAccess();
  v5 = sub_190D52170();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_190C4EEE0(uint64_t a1)
{
  v2 = sub_190D52170();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_190C4F0A4(v5);
}

uint64_t sub_190C4EFAC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_190C4FEE8(&qword_1EAD5B318, type metadata accessor for CKLanguageSelectionDownloadModel);
  sub_190D51C20();

  v3 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__state;
  swift_beginAccess();
  v4 = sub_190D52170();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_190C4F0A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_190D52170();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__state;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_190C4FEE8(&qword_1EAD5EE78, MEMORY[0x1E69A6798]);
  v14[0] = a1;
  LOBYTE(a1) = sub_190D56E30();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_190C4FEE8(&qword_1EAD5B318, type metadata accessor for CKLanguageSelectionDownloadModel);
    sub_190D51C10();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_190C4F344(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D52170();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__state;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t sub_190C4F460(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C4FEE8(&qword_1EAD5B318, type metadata accessor for CKLanguageSelectionDownloadModel);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190C4F578()
{
  swift_getKeyPath();
  sub_190C4FEE8(&qword_1EAD5B318, type metadata accessor for CKLanguageSelectionDownloadModel);
  sub_190D51C20();

  return *(v0 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected);
}

uint64_t sub_190C4F634@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale;
  v4 = sub_190D519C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_190C4F6AC()
{
  sub_190D519C0();
  sub_190C4FEE8(&qword_1EAD46BD0, MEMORY[0x1E6969770]);
  return sub_190D56DD0();
}

uint64_t CKLanguageSelectionDownloadModel.deinit()
{
  v1 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale;
  v2 = sub_190D519C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__state;
  v4 = sub_190D52170();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel___observationRegistrar;
  v6 = sub_190D51C60();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t CKLanguageSelectionDownloadModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale;
  v2 = sub_190D519C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__state;
  v4 = sub_190D52170();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel___observationRegistrar;
  v6 = sub_190D51C60();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_190C4F940()
{
  sub_190D58870();
  sub_190D519C0();
  sub_190C4FEE8(&qword_1EAD46BD0, MEMORY[0x1E6969770]);
  sub_190D56DD0();
  return sub_190D588C0();
}

uint64_t sub_190C4F9DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale;
  v5 = sub_190D519C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_190C4FA58()
{
  sub_190D58870();
  sub_190D519C0();
  sub_190C4FEE8(&qword_1EAD46BD0, MEMORY[0x1E6969770]);
  sub_190D56DD0();
  return sub_190D588C0();
}

uint64_t sub_190C4FAF8()
{
  sub_190D519C0();
  sub_190C4FEE8(&qword_1EAD46BD0, MEMORY[0x1E6969770]);
  return sub_190D56DD0();
}

uint64_t sub_190C4FC10()
{
  sub_190D58870();
  sub_190D519C0();
  sub_190C4FEE8(&qword_1EAD46BD0, MEMORY[0x1E6969770]);
  sub_190D56DD0();
  return sub_190D588C0();
}

uint64_t sub_190C4FCD0()
{
  result = sub_190D519C0();
  if (v1 <= 0x3F)
  {
    result = sub_190D52170();
    if (v2 <= 0x3F)
    {
      result = sub_190D51C60();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_190C4FEE8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_190C4FF4C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__progress) = result;
  return result;
}

uint64_t sub_190C4FF74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_190C4FFD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t type metadata accessor for DetailsViewSheet()
{
  result = qword_1EAD60EB0;
  if (!qword_1EAD60EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190C500B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetailsViewSheet();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsViewConfiguration();
  sub_190213F08(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v9 = a1;
  sub_190D56340();
  MEMORY[0x193AF14A0](v8, a2, v6, a3);
  return sub_190C5290C(v8, type metadata accessor for DetailsViewSheet);
}

uint64_t sub_190C501E0()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190C502D4()
{
  sub_190D56FC0();
}

uint64_t sub_190C503B4()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

void sub_190C504B0(unint64_t *a1@<X8>)
{
  v2 = *v1 >> 61;
  v3 = 0xEC000000746E6569;
  v4 = 0x7069636552646461;
  v5 = 0x8000000190E7C000;
  v6 = 0xED00006F746F6850;
  v7 = 0x656D614E74696465;
  if (v2 != 3)
  {
    v7 = 29803;
    v6 = 0xE200000000000000;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v5 = v6;
  }

  if (v2)
  {
    v4 = 0xD000000000000014;
    v3 = 0x8000000190E7C020;
  }

  v8 = v2 <= 1;
  if (v2 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v7;
  }

  if (!v8)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_190C50564()
{
  result = qword_1EAD60EC0;
  if (!qword_1EAD60EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60EC0);
  }

  return result;
}

void sub_190C505D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = a1;
  v3 = type metadata accessor for DetailsViewSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  sub_190D56330();
  swift_getKeyPath();
  sub_190D56350();

  (*(v11 + 8))(v13, v10);
  v18 = v26;
  v21 = v24;
  v22 = v25;
  v23 = v26;
  sub_190C5282C(v2, v9, type metadata accessor for DetailsViewSheet);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_190C51E94(v9, v15 + v14);
  sub_190C5282C(v2, v6, type metadata accessor for DetailsViewSheet);
  v16 = swift_allocObject();
  sub_190C51E94(v6, v16 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60ED0);
  sub_190C520B0();
  sub_190C52114();
  sub_190C52168();
  sub_190D55B90();

  sub_190C52538(v18);
}

unint64_t sub_190C508DC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190213F08(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v4 = *(v3 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentedSheetType);
  *a2 = v4;
  return sub_190C528B0(v4);
}

void sub_190C50990(unint64_t *a1)
{
  v1 = *a1;
  sub_190C528B0(*a1);
  sub_190CEBFBC(v1);
}

void sub_190C509C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  if ((~*&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentedSheetType] & 0xF000000000000007) != 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190213F08(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
    sub_190D51C10();
  }

  else
  {
    *&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentedSheetType] = 0xF000000000000007;
  }
}

uint64_t sub_190C50B04@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v88 = a3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F30);
  v73 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v72 = &v69 - v4;
  v78 = type metadata accessor for GroupIdentityPickerViewController(0);
  MEMORY[0x1EEE9AC00](v78);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F38);
  MEMORY[0x1EEE9AC00](v75);
  v7 = &v69 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F28);
  MEMORY[0x1EEE9AC00](v82);
  v77 = &v69 - v8;
  v76 = type metadata accessor for NewContactViewControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v76);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChooseExistingContactViewControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F40);
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v69 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F48);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F50);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F18);
  MEMORY[0x1EEE9AC00](v80);
  v19 = &v69 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F08);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v69 - v20;
  v21 = _s30AddRecipientsRepresentableViewVMa(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F58);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v69 - v27;
  v29 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    v75 = v15;
    v76 = v25;
    v77 = v19;
    v78 = v10;
    if (!v29)
    {
      v74 = v26;
      _s9ViewModelCMa();
      sub_190213F08(&qword_1EAD53090, _s9ViewModelCMa);
      sub_190D50920();
      sub_190D56340();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F60);
      v37 = sub_190D54A10();
      v38 = *(v37 - 8);
      v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_190DD1D90;
      sub_190D54A00();
      sub_1908B04B4(v40);
      swift_setDeallocating();
      (*(v38 + 8))(v40 + v39, v37);
      swift_deallocClassInstance();
      v41 = sub_190213F08(&qword_1EAD52268, _s30AddRecipientsRepresentableViewVMa);
      sub_190D55A30();

      sub_190C5290C(v23, _s30AddRecipientsRepresentableViewVMa);
      v42 = v74;
      v43 = v76;
      (*(v74 + 16))(v17, v28, v76);
      swift_storeEnumTagMultiPayload();
      v89 = v21;
      v90 = v41;
      swift_getOpaqueTypeConformance2();
      sub_190213F08(&qword_1EAD57A18, type metadata accessor for ChooseExistingContactViewControllerRepresentable);
      v44 = v77;
      sub_190D54C50();
      sub_19022FD14(v44, v81, &qword_1EAD60F18);
      swift_storeEnumTagMultiPayload();
      sub_190C52330();
      sub_190C5244C();
      v45 = v83;
      sub_190D54C50();
      sub_19022EEA4(v44, &qword_1EAD60F18);
      sub_19022FD14(v45, v87, &qword_1EAD60F08);
      swift_storeEnumTagMultiPayload();
      sub_190C522A4();
      v46 = sub_190AE20D4();
      v89 = &_s29ContactVerificationControllerVN;
      v90 = v46;
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();
      sub_19022EEA4(v45, &qword_1EAD60F08);
      return (*(v42 + 8))(v28, v43);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
    sub_190D56320();
    type metadata accessor for DetailsViewConfiguration();
    sub_190213F08(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
    sub_190D56340();
    sub_190C5282C(v12, v17, type metadata accessor for ChooseExistingContactViewControllerRepresentable);
    swift_storeEnumTagMultiPayload();
    v65 = sub_190213F08(&qword_1EAD52268, _s30AddRecipientsRepresentableViewVMa);
    v89 = v21;
    v90 = v65;
    swift_getOpaqueTypeConformance2();
    sub_190213F08(&qword_1EAD57A18, type metadata accessor for ChooseExistingContactViewControllerRepresentable);
    v66 = v77;
    sub_190D54C50();
    sub_19022FD14(v66, v81, &qword_1EAD60F18);
    swift_storeEnumTagMultiPayload();
    sub_190C52330();
    sub_190C5244C();
    v67 = v83;
    sub_190D54C50();
    sub_19022EEA4(v66, &qword_1EAD60F18);
    sub_19022FD14(v67, v87, &qword_1EAD60F08);
    swift_storeEnumTagMultiPayload();
    sub_190C522A4();
    v68 = sub_190AE20D4();
    v89 = &_s29ContactVerificationControllerVN;
    v90 = v68;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    sub_19022EEA4(v67, &qword_1EAD60F08);
    v52 = type metadata accessor for ChooseExistingContactViewControllerRepresentable;
    v53 = v12;
  }

  else
  {
    v30 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
    if (v29 == 2)
    {
      type metadata accessor for DetailsViewConfiguration();
      sub_190213F08(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
      v48 = v30;
      v32 = v70;
      sub_190D56340();
      sub_190C5282C(v32, v7, type metadata accessor for NewContactViewControllerRepresentable);
      swift_storeEnumTagMultiPayload();
      sub_190213F08(&qword_1EAD608A0, type metadata accessor for NewContactViewControllerRepresentable);
      sub_190213F08(&qword_1EAD5DBE8, type metadata accessor for GroupIdentityPickerViewController);
      v49 = v77;
      sub_190D54C50();
      sub_190C52754(v49, v81);
      swift_storeEnumTagMultiPayload();
      sub_190C52330();
      sub_190C5244C();
      v50 = v83;
      sub_190D54C50();
      sub_190C527C4(v49);
      sub_19022FD14(v50, v87, &qword_1EAD60F08);
      swift_storeEnumTagMultiPayload();
      sub_190C522A4();
      v51 = sub_190AE20D4();
      v89 = &_s29ContactVerificationControllerVN;
      v90 = v51;
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();
      sub_19022EEA4(v50, &qword_1EAD60F08);
      v36 = type metadata accessor for NewContactViewControllerRepresentable;
    }

    else
    {
      if (v29 != 3)
      {
        swift_getKeyPath();
        v89 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
        sub_190213F08(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
        sub_190D51C20();

        v54 = *(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
        v55 = swift_allocObject();
        swift_weakInit();
        v89 = v54;
        v90 = sub_190C52594;
        v91 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F60);
        v56 = sub_190D54A10();
        v57 = v84;
        v58 = *(v56 - 8);
        v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_190DD1D90;
        v61 = v54;
        sub_190D54A00();
        sub_1908B04B4(v60);
        swift_setDeallocating();
        (*(v58 + 8))(v60 + v59, v56);
        swift_deallocClassInstance();
        v62 = sub_190AE20D4();
        v63 = v72;
        sub_190D55A30();

        v64 = v73;
        (*(v73 + 16))(v87, v63, v57);
        swift_storeEnumTagMultiPayload();
        sub_190C522A4();
        v89 = &_s29ContactVerificationControllerVN;
        v90 = v62;
        swift_getOpaqueTypeConformance2();
        sub_190D54C50();
        return (*(v64 + 8))(v63, v57);
      }

      type metadata accessor for DetailsViewConfiguration();
      sub_190213F08(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
      v31 = v30;
      v32 = v71;
      sub_190D56340();
      sub_190C5282C(v32, v7, type metadata accessor for GroupIdentityPickerViewController);
      swift_storeEnumTagMultiPayload();
      sub_190213F08(&qword_1EAD608A0, type metadata accessor for NewContactViewControllerRepresentable);
      sub_190213F08(&qword_1EAD5DBE8, type metadata accessor for GroupIdentityPickerViewController);
      v33 = v77;
      sub_190D54C50();
      sub_190C52754(v33, v81);
      swift_storeEnumTagMultiPayload();
      sub_190C52330();
      sub_190C5244C();
      v34 = v83;
      sub_190D54C50();
      sub_190C527C4(v33);
      sub_19022FD14(v34, v87, &qword_1EAD60F08);
      swift_storeEnumTagMultiPayload();
      sub_190C522A4();
      v35 = sub_190AE20D4();
      v89 = &_s29ContactVerificationControllerVN;
      v90 = v35;
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();
      sub_19022EEA4(v34, &qword_1EAD60F08);
      v36 = type metadata accessor for GroupIdentityPickerViewController;
    }

    v52 = v36;
    v53 = v32;
  }

  return sub_190C5290C(v53, v52);
}

void sub_190C51CC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_190213F08(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
    sub_190D51C20();

    v2 = *(v1 + 16);

    v3 = *&v2[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

    v4 = [v3 chat];
    [v4 fetchKTStatus];
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  if (v5)
  {
    v6 = v5;
    swift_getKeyPath();
    sub_190213F08(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
    sub_190D51C20();

    v7 = *(v6 + 16);

    sub_190CEB87C();
  }
}

uint64_t sub_190C51E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsViewSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_190C51EF8()
{
  type metadata accessor for DetailsViewSheet();

  sub_190C509C4();
}

uint64_t objectdestroyTm_45()
{
  v1 = *(type metadata accessor for DetailsViewSheet() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190C52030@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DetailsViewSheet() - 8);
  v6 = *a1;
  v7 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_190C50B04(v6, v7, a2);
}

unint64_t sub_190C520B0()
{
  result = qword_1EAD60ED8;
  if (!qword_1EAD60ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60ED8);
  }

  return result;
}

unint64_t sub_190C52114()
{
  result = qword_1EAD60EE0;
  if (!qword_1EAD60EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60EE0);
  }

  return result;
}

unint64_t sub_190C52168()
{
  result = qword_1EAD60EE8;
  if (!qword_1EAD60EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60ED0);
    sub_190C521EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60EE8);
  }

  return result;
}

unint64_t sub_190C521EC()
{
  result = qword_1EAD60EF0;
  if (!qword_1EAD60EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60EF8);
    sub_190C522A4();
    sub_190AE20D4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60EF0);
  }

  return result;
}

unint64_t sub_190C522A4()
{
  result = qword_1EAD60F00;
  if (!qword_1EAD60F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60F08);
    sub_190C52330();
    sub_190C5244C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60F00);
  }

  return result;
}

unint64_t sub_190C52330()
{
  result = qword_1EAD60F10;
  if (!qword_1EAD60F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60F18);
    _s30AddRecipientsRepresentableViewVMa(255);
    sub_190213F08(&qword_1EAD52268, _s30AddRecipientsRepresentableViewVMa);
    swift_getOpaqueTypeConformance2();
    sub_190213F08(&qword_1EAD57A18, type metadata accessor for ChooseExistingContactViewControllerRepresentable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60F10);
  }

  return result;
}

unint64_t sub_190C5244C()
{
  result = qword_1EAD60F20;
  if (!qword_1EAD60F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60F28);
    sub_190213F08(&qword_1EAD608A0, type metadata accessor for NewContactViewControllerRepresentable);
    sub_190213F08(&qword_1EAD5DBE8, type metadata accessor for GroupIdentityPickerViewController);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60F20);
  }

  return result;
}

void sub_190C52538(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_190C5254C(a1);
  }
}

void sub_190C5254C(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) > 1)
  {
    if (v1 != 2 && v1 != 3)
    {
      if (v1 != 4)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_8:

    return;
  }

  if (v1)
  {
    if (v1 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

LABEL_9:
}

uint64_t sub_190C5259C(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v2)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x7069636552646461;
    }

    if (v2)
    {
      v4 = 0x8000000190E7C020;
    }

    else
    {
      v4 = 0xEC000000746E6569;
    }
  }

  else if (v2 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000190E7C000;
  }

  else if (v2 == 3)
  {
    v3 = 0x656D614E74696465;
    v4 = 0xED00006F746F6850;
  }

  else
  {
    v4 = 0xE200000000000000;
    v3 = 29803;
  }

  v5 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v5)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = 0x7069636552646461;
    }

    if (v5)
    {
      v6 = 0x8000000190E7C020;
    }

    else
    {
      v6 = 0xEC000000746E6569;
    }

    if (v3 != v7)
    {
      goto LABEL_31;
    }
  }

  else if (v5 == 2)
  {
    v6 = 0x8000000190E7C000;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else if (v5 == 3)
  {
    v6 = 0xED00006F746F6850;
    if (v3 != 0x656D614E74696465)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v6 = 0xE200000000000000;
    if (v3 != 29803)
    {
LABEL_31:
      v8 = sub_190D58760();
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_31;
  }

  v8 = 1;
LABEL_32:

  return v8 & 1;
}

uint64_t sub_190C52754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C527C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190C5282C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_190C528B0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_190C528C4(result);
  }

  return result;
}

unint64_t sub_190C528C4(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) > 1)
  {
    if (v1 != 2 && v1 != 3)
    {
      if (v1 != 4)
      {
        return result;
      }

      return sub_190D50920();
    }

    return (result & 0x1FFFFFFFFFFFFFFFLL);
  }

  if (v1)
  {
    if (v1 != 1)
    {
      return result;
    }

    return (result & 0x1FFFFFFFFFFFFFFFLL);
  }

  return sub_190D50920();
}

uint64_t sub_190C5290C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id CKTranscriptNavigationBarViewProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKTranscriptNavigationBarViewProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTranscriptNavigationBarViewProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TTRRegistrationSheetButtonView()
{
  result = qword_1EAD60F78;
  if (!qword_1EAD60F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190C52B70()
{
  sub_1909606CC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_190C52BF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D54800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_19022FD14(v2, &v14 - v9, &qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53D10();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_190C52DF8(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v23 = sub_190D53D10();
  v22 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v21 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_190D515F0();
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v20 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D51040();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51030();
  sub_190D51010();
  MEMORY[0x193AEC890](7824750, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F60);
  sub_190D50FD0();
  *(swift_allocObject() + 16) = xmmword_190DE4300;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_190D582B0();

  v28 = 0x727473696765525BLL;
  v29 = 0xEF205D6E6F697461;
  MEMORY[0x193AF28B0](v24, a2);
  sub_190D50FC0();

  sub_190D50FC0();
  sub_190D50FC0();
  sub_190D50FC0();
  sub_190D50FC0();
  v12 = v25;
  sub_190D50FC0();
  sub_190D50FC0();
  sub_190D50FC0();
  sub_190D50FE0();
  sub_190D50FF0();
  if ((*(v12 + 48))(v6, 1, v7) == 1)
  {
    (*(v26 + 8))(v11, v27);
    return sub_19022EEA4(v6, &unk_1EAD55F20);
  }

  else
  {
    v14 = v20;
    (*(v12 + 32))(v20, v6, v7);
    v15 = [objc_opt_self() sharedApplication];
    v16 = sub_190D51570();
    sub_19082233C(MEMORY[0x1E69E7CC0]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_190964630();
    v17 = sub_190D56D60();

    [v15 openURL:v16 options:v17 completionHandler:0];

    v18 = v21;
    sub_190C52BF8(v21);
    sub_190D53D00();
    (*(v22 + 8))(v18, v23);
    (*(v12 + 8))(v14, v7);
    return (*(v26 + 8))(v11, v27);
  }
}

uint64_t sub_190C53494@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60FA0);
  v55 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v40 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60FA8);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v40 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60FB0);
  v52 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v40 - v15;
  sub_190D549E0();
  v60 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60FB8);
  sub_190233640(&qword_1EAD60FC0, &qword_1EAD60FB8);
  sub_190D562A0();
  sub_190D549E0();
  v59 = a1;
  v16 = v46;
  sub_190D562A0();
  sub_190D549E0();
  v58 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60FC8);
  sub_190233640(&qword_1EAD60FD0, &qword_1EAD60FC8);
  v17 = v47;
  sub_190D562A0();
  sub_190D549E0();
  v61 = sub_190D555D0();
  v62 = v18;
  v63 = v19 & 1;
  v64 = v20;
  v21 = v50;
  sub_190D562F0();
  v22 = *(v52 + 16);
  v23 = v48;
  v24 = v57;
  v22(v48, v49, v57);
  v22(v56, v16, v24);
  v42 = *(v53 + 16);
  v25 = v51;
  v42(v51, v17, v54);
  v41 = *(v55 + 16);
  v26 = v43;
  v27 = v44;
  v41(v43, v21, v44);
  v28 = v45;
  v29 = v23;
  v30 = v57;
  v22(v45, v29, v57);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60FD8);
  v22(&v28[v31[12]], v56, v30);
  v32 = v25;
  v33 = v54;
  v42(&v28[v31[16]], v32, v54);
  v41(&v28[v31[20]], v26, v27);
  v34 = *(v55 + 8);
  v35 = v27;
  v34(v50, v27);
  v36 = *(v53 + 8);
  v36(v47, v33);
  v37 = *(v52 + 8);
  v38 = v57;
  v37(v46, v57);
  v37(v49, v38);
  v34(v26, v35);
  v36(v51, v33);
  v37(v56, v38);
  return (v37)(v48, v38);
}

uint64_t sub_190C53C04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a1;
  v42 = a2;
  v3 = type metadata accessor for TTRRegistrationSheetButtonView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36[1] = v5;
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A700);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = v36 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v44 = v36 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v43 = v36 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v39 = v36 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v38 = v36 - v19;
  sub_190C55D54(a1, v6);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_190C55DB8(v6, v21 + v20);
  v36[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A718);
  sub_190233640(&qword_1EAD5A720, &qword_1EAD5A718);
  sub_190D56030();
  v22 = v37;
  sub_190C55D54(v37, v6);
  v23 = swift_allocObject();
  sub_190C55DB8(v6, v23 + v20);
  v24 = v39;
  sub_190D56030();
  sub_190C55D54(v22, v6);
  v25 = swift_allocObject();
  sub_190C55DB8(v6, v25 + v20);
  v26 = v43;
  sub_190D56030();
  v27 = *(v8 + 16);
  v28 = v44;
  v29 = v38;
  v27(v44, v38, v7);
  v30 = v40;
  v27(v40, v24, v7);
  v31 = v41;
  v27(v41, v26, v7);
  v32 = v42;
  v27(v42, v28, v7);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60FE8);
  v27(&v32[*(v33 + 48)], v30, v7);
  v27(&v32[*(v33 + 64)], v31, v7);
  v34 = *(v8 + 8);
  v34(v43, v7);
  v34(v24, v7);
  v34(v29, v7);
  v34(v31, v7);
  v34(v30, v7);
  return (v34)(v44, v7);
}

uint64_t sub_190C54128@<X0>(uint64_t a1@<X8>)
{
  v16 = sub_190D55EA0();
  v2 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v3 = sub_190D555D0();
  v5 = v4;
  v7 = v6;
  sub_190D54E80();
  v8 = sub_190D55580();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_19081E474(v3, v5, v7 & 1);

  *a1 = v16;
  *(a1 + 8) = v2;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10;
  *(a1 + 80) = v12 & 1;
  *(a1 + 88) = v14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v8, v10, v12 & 1);
  sub_190D52690();
  sub_19081E474(v8, v10, v12 & 1);
}

double sub_190C54348@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D548D0();
  v18 = 1;
  a1(&v11);
  v23 = v15;
  v24[0] = v16[0];
  *(v24 + 9) = *(v16 + 9);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26[0] = v16[0];
  *(v26 + 9) = *(v16 + 9);
  sub_19022FD14(&v19, &v10, &qword_1EAD5A728);
  sub_19022EEA4(v25, &qword_1EAD5A728);
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24[0];
  *&v17[96] = *(v24 + 9);
  *&v17[7] = v19;
  *&v17[23] = v20;
  *&v17[39] = v21;
  v5 = *&v17[32];
  *(a2 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a2 + 81) = *&v17[64];
  *(a2 + 97) = v6;
  *(a2 + 113) = *&v17[96];
  result = *v17;
  v8 = *&v17[16];
  *(a2 + 17) = *v17;
  *(a2 + 33) = v8;
  v9 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 49) = v5;
  return result;
}

uint64_t sub_190C544A8@<X0>(uint64_t a1@<X8>)
{
  v16 = sub_190D55EA0();
  v2 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v3 = sub_190D555D0();
  v5 = v4;
  v7 = v6;
  sub_190D54E80();
  v8 = sub_190D55580();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_19081E474(v3, v5, v7 & 1);

  *a1 = v16;
  *(a1 + 8) = v2;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10;
  *(a1 + 80) = v12 & 1;
  *(a1 + 88) = v14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v8, v10, v12 & 1);
  sub_190D52690();
  sub_19081E474(v8, v10, v12 & 1);
}

uint64_t sub_190C546C8@<X0>(uint64_t a1@<X8>)
{
  v16 = sub_190D55EA0();
  v2 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v3 = sub_190D555D0();
  v5 = v4;
  v7 = v6;
  sub_190D54E80();
  v8 = sub_190D55580();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_19081E474(v3, v5, v7 & 1);

  *a1 = v16;
  *(a1 + 8) = v2;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10;
  *(a1 + 80) = v12 & 1;
  *(a1 + 88) = v14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v8, v10, v12 & 1);
  sub_190D52690();
  sub_19081E474(v8, v10, v12 & 1);
}

uint64_t sub_190C548D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a1;
  v42 = a2;
  v3 = type metadata accessor for TTRRegistrationSheetButtonView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36[1] = v5;
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A700);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = v36 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v44 = v36 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v43 = v36 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v39 = v36 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v38 = v36 - v19;
  sub_190C55D54(a1, v6);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_190C55DB8(v6, v21 + v20);
  v36[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A718);
  sub_190233640(&qword_1EAD5A720, &qword_1EAD5A718);
  sub_190D56030();
  v22 = v37;
  sub_190C55D54(v37, v6);
  v23 = swift_allocObject();
  sub_190C55DB8(v6, v23 + v20);
  v24 = v39;
  sub_190D56030();
  sub_190C55D54(v22, v6);
  v25 = swift_allocObject();
  sub_190C55DB8(v6, v25 + v20);
  v26 = v43;
  sub_190D56030();
  v27 = *(v8 + 16);
  v28 = v44;
  v29 = v38;
  v27(v44, v38, v7);
  v30 = v40;
  v27(v40, v24, v7);
  v31 = v41;
  v27(v41, v26, v7);
  v32 = v42;
  v27(v42, v28, v7);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60FE8);
  v27(&v32[*(v33 + 48)], v30, v7);
  v27(&v32[*(v33 + 64)], v31, v7);
  v34 = *(v8 + 8);
  v34(v43, v7);
  v34(v24, v7);
  v34(v29, v7);
  v34(v31, v7);
  v34(v30, v7);
  return (v34)(v44, v7);
}

uint64_t sub_190C54DF4@<X0>(uint64_t a1@<X8>)
{
  v16 = sub_190D55EA0();
  v2 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v3 = sub_190D555D0();
  v5 = v4;
  v7 = v6;
  sub_190D54E80();
  v8 = sub_190D55580();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_19081E474(v3, v5, v7 & 1);

  *a1 = v16;
  *(a1 + 8) = v2;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10;
  *(a1 + 80) = v12 & 1;
  *(a1 + 88) = v14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v8, v10, v12 & 1);
  sub_190D52690();
  sub_19081E474(v8, v10, v12 & 1);
}

uint64_t sub_190C55014@<X0>(uint64_t a1@<X8>)
{
  v16 = sub_190D55EA0();
  v2 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v3 = sub_190D555D0();
  v5 = v4;
  v7 = v6;
  sub_190D54E80();
  v8 = sub_190D55580();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_19081E474(v3, v5, v7 & 1);

  *a1 = v16;
  *(a1 + 8) = v2;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10;
  *(a1 + 80) = v12 & 1;
  *(a1 + 88) = v14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v8, v10, v12 & 1);
  sub_190D52690();
  sub_19081E474(v8, v10, v12 & 1);
}

uint64_t sub_190C55234@<X0>(uint64_t a1@<X8>)
{
  v16 = sub_190D55EA0();
  v2 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v3 = sub_190D555D0();
  v5 = v4;
  v7 = v6;
  sub_190D54E80();
  v8 = sub_190D55580();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_19081E474(v3, v5, v7 & 1);

  *a1 = v16;
  *(a1 + 8) = v2;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10;
  *(a1 + 80) = v12 & 1;
  *(a1 + 88) = v14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v8, v10, v12 & 1);
  sub_190D52690();
  sub_19081E474(v8, v10, v12 & 1);
}

uint64_t sub_190C5543C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a1;
  v33 = a2;
  v3 = type metadata accessor for TTRRegistrationSheetButtonView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = v5;
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A700);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v28 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  sub_190C55D54(a1, v6);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_190C55DB8(v6, v18 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A718);
  sub_190233640(&qword_1EAD5A720, &qword_1EAD5A718);
  sub_190D56030();
  sub_190C55D54(v29, v6);
  v19 = swift_allocObject();
  sub_190C55DB8(v6, v19 + v17);
  v20 = v30;
  sub_190D56030();
  v21 = *(v8 + 16);
  v22 = v31;
  v21(v31, v16, v7);
  v23 = v32;
  v21(v32, v20, v7);
  v24 = v33;
  v21(v33, v22, v7);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60FE0);
  v21(&v24[*(v25 + 48)], v23, v7);
  v26 = *(v8 + 8);
  v26(v20, v7);
  v26(v16, v7);
  v26(v23, v7);
  return (v26)(v22, v7);
}

uint64_t sub_190C5582C@<X0>(uint64_t a1@<X8>)
{
  v16 = sub_190D55EA0();
  v2 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v3 = sub_190D555D0();
  v5 = v4;
  v7 = v6;
  sub_190D54E80();
  v8 = sub_190D55580();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_19081E474(v3, v5, v7 & 1);

  *a1 = v16;
  *(a1 + 8) = v2;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10;
  *(a1 + 80) = v12 & 1;
  *(a1 + 88) = v14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v8, v10, v12 & 1);
  sub_190D52690();
  sub_19081E474(v8, v10, v12 & 1);
}

uint64_t sub_190C55A50@<X0>(uint64_t a1@<X8>)
{
  v16 = sub_190D55EA0();
  v2 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v3 = sub_190D555D0();
  v5 = v4;
  v7 = v6;
  sub_190D54E80();
  v8 = sub_190D55580();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_19081E474(v3, v5, v7 & 1);

  *a1 = v16;
  *(a1 + 8) = v2;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10;
  *(a1 + 80) = v12 & 1;
  *(a1 + 88) = v14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v8, v10, v12 & 1);
  sub_190D52690();
  sub_19081E474(v8, v10, v12 & 1);
}

uint64_t sub_190C55C58@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F88);
  sub_190233640(&qword_1EAD60F90, &qword_1EAD60F88);
  sub_190D554D0();
  v2 = sub_190D55E00();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60F98);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_190C55D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRegistrationSheetButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C55DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRegistrationSheetButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_46()
{
  v1 = *(type metadata accessor for TTRRegistrationSheetButtonView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_190D53D10();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_190C562BC()
{
  result = qword_1EAD60FF0;
  if (!qword_1EAD60FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60F98);
    sub_190233640(&qword_1EAD60FF8, &qword_1EAD61000);
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60FF0);
  }

  return result;
}

uint64_t type metadata accessor for TTRRegistrationSheetView()
{
  result = qword_1EAD61008;
  if (!qword_1EAD61008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190C56430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_190D54870();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRegistrationSheetButtonView();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61030);
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61028);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61020);
  v15 = *(v14 - 8);
  v37 = v14;
  v38 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v30 = &v29 - v16;
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  sub_190D549E0();
  v17 = sub_190C57158();
  sub_190D558B0();

  sub_190C571B0(v6);
  v19 = v33;
  v18 = v34;
  v20 = v31;
  (*(v33 + 104))(v31, *MEMORY[0x1E697C428], v34);
  v42 = v4;
  v43 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_190D55AE0();
  (*(v19 + 8))(v20, v18);
  (*(v32 + 8))(v9, v7);
  sub_190D549E0();
  v42 = v7;
  v43 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v30;
  v24 = v35;
  sub_190D559D0();

  (*(v36 + 8))(v13, v24);
  v41 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A8A0);
  v42 = v24;
  v43 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A908);
  v26 = sub_190233640(&qword_1EAD5A910, &qword_1EAD5A908);
  v42 = v25;
  v43 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v37;
  sub_190D55BF0();
  return (*(v38 + 8))(v23, v27);
}

uint64_t sub_190C569C0(uint64_t a1)
{
  v2 = sub_190D54D70();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A908);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_190D54D30();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  sub_190D53AE0();
  v7 = sub_190233640(&qword_1EAD5A910, &qword_1EAD5A908);
  MEMORY[0x193AF0690](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_190C56BAC(uint64_t a1)
{
  v2 = type metadata accessor for TTRRegistrationSheetView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_190D549E0();
  sub_190C5721C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_190C57280(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_190D56070();
}

uint64_t sub_190C56CF0(uint64_t a1)
{
  v2 = sub_190D54800();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = sub_190D53D10();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1909645C0(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_190D53D00();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_190C56F58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61020);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61028);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61030);
  type metadata accessor for TTRRegistrationSheetButtonView();
  sub_190C57158();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A908);
  sub_190233640(&qword_1EAD5A910, &qword_1EAD5A908);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_190D54220();
}

unint64_t sub_190C57158()
{
  result = qword_1EAD61038;
  if (!qword_1EAD61038)
  {
    type metadata accessor for TTRRegistrationSheetButtonView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61038);
  }

  return result;
}

uint64_t sub_190C571B0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRegistrationSheetButtonView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190C5721C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRegistrationSheetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C57280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRegistrationSheetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C572E4()
{
  v1 = *(type metadata accessor for TTRRegistrationSheetView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_190C56CF0(v2);
}

id sub_190C57344()
{
  v0 = type metadata accessor for TTRRegistrationSheetView();
  MEMORY[0x1EEE9AC00](v0 - 8);
  *(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61050));
  v3 = sub_190D54B60();
  [v3 setModalPresentationStyle_];
  [v3 setModalTransitionStyle_];

  return v3;
}

id TTRRegistrationSheetViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRRegistrationSheetViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRRegistrationSheetViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TTRRegistrationSheetViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRRegistrationSheetViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190C57688(uint64_t *a1@<X0>, const char **a2@<X4>, unsigned __int8 *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v6 = [*(v5 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
  if (v6)
  {
    v7 = *a2;
    v8 = v6;
    v9 = [v6 v7];
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
}

uint64_t sub_190C57778@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  *a4 = 4;
  v8 = type metadata accessor for DetailsViewConversationSettings();
  v9 = &a4[v8[11]];
  v10 = &a4[v8[12]];
  sub_190D55FC0();
  *v10 = v15;
  *(v10 + 1) = v16;
  v11 = v8[13];
  *&a4[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DetailsViewConfiguration();
  sub_190C64F58(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v12 = a1;
  sub_190D56340();
  type metadata accessor for DetailsConversationSettingsViewModel();
  swift_allocObject();
  v13 = v12;
  sub_190C57D08(v13);
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D56340();

  *v9 = a2;
  v9[1] = a3;
  return result;
}

id sub_190C57940@<X0>(void *a1@<X8>)
{
  v2 = sub_190A07FCC();
  *a1 = v2;

  return v2;
}

id sub_190C5797C()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD61060 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190C579C0()
{
  if (qword_1EAD51FC8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD61060;
  v1 = [v0 theme];

  if (v1)
  {
    qword_1EAD61068 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_190C57A70(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
  if (v3)
  {
    v4 = v3;
    if ([a1 object])
    {
      sub_190D58140();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19[0] = v17;
    v19[1] = v18;
    if (!*(&v18 + 1))
    {

      sub_19022EEA4(v19, &unk_1EAD551C0);
      return;
    }

    sub_1902188FC(0, &qword_1EAD44EE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

    v5 = [v4 deviceIndependentID];
    if (v5)
    {
      v6 = v5;
      v7 = sub_190D56F10();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = [v16 deviceIndependentID];
    if (v10)
    {
      v11 = v10;
      v12 = sub_190D56F10();
      v14 = v13;

      if (!v9)
      {
        if (!v14)
        {
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      if (v14)
      {
        if (v7 == v12 && v9 == v14)
        {

LABEL_22:
          [v4 setAutoDonationBehavior_];
          goto LABEL_23;
        }

        v15 = sub_190D58760();

        if (v15)
        {
          goto LABEL_22;
        }

LABEL_23:

LABEL_24:
        return;
      }
    }

    else if (!v9)
    {
      goto LABEL_22;
    }
  }
}

uint64_t sub_190C57D08(void *a1)
{
  v2 = v1;
  *(v2 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isPresentingLeaveAlert) = 0;
  *(v2 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isPresentingDeleteAndBlockAlert) = 0;
  *(v2 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsSharingFocusStatus) = 0;
  *(v2 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isSharingFocusStatus) = 0;
  *(v2 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isSharingFocusStatusToggleOn) = 0;
  *(v2 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__availableTranslationLocales) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsSendingReadReceipts) = 0;
  *(v2 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsAutomaticTranslation) = 0;
  sub_190D51C50();
  v4 = a1;
  sub_190D51C50();
  *(v2 + 16) = v4;
  sub_190D50920();
  sub_190C59CC8();
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C10();

  swift_getKeyPath();
  sub_190D51C10();

  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  [v6 addObserver:v2 selector:sel_accountDefaultsChanged_ name:*MEMORY[0x1E69A56B8] object:0];

  v7 = [v5 defaultCenter];
  v8 = *MEMORY[0x1E69A5908];
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  swift_retain_n();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  v9 = *(*(v2 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);

  [v7 addObserver:v2 selector:sel_serviceForSendingChanged_ name:v8 object:v9];

  return v2;
}

uint64_t sub_190C5809C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
    sub_190D51C10();
  }

  return result;
}

void sub_190C581F0(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + *a2);
  if (!v6)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
    sub_190D51C10();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1902188FC(0, &qword_1EAD46510);
  v7 = v6;
  v8 = a1;
  v9 = sub_190D57D90();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

void sub_190C58384(char a1)
{
  v2 = OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isSharingFocusStatusToggleOn;
  if (*(v1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isSharingFocusStatusToggleOn) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isSharingFocusStatusToggleOn) = a1 & 1;
    swift_getKeyPath();
    sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
    sub_190D51C20();

    sub_190C58C90(*(v1 + v2));
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
    sub_190D51C10();
  }
}

uint64_t sub_190C58518(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__availableTranslationLocales;
  if (sub_1909A7254(*(v1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__availableTranslationLocales), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
    sub_190D51C10();
  }
}

uint64_t sub_190C586DC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  return *(v2 + *a2);
}

uint64_t sub_190C5877C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  *a3 = *(v5 + *a2);
  return result;
}

id sub_190C58844()
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  return [*(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) isAutoDonatingMessages];
}

id sub_190C58960(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  return [*(*(a1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) sendAutoDonationUpdate_];
}

void *sub_190C58A54(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_190C58AFC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_190C58BD4(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isSharingFocusStatusToggleOn;
  *(a1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isSharingFocusStatusToggleOn) = a2;
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  sub_190C58C90(*(a1 + v3));
}

void sub_190C58C90(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  v4 = *(v1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsSharingFocusStatus);
  if (v4)
  {
    if ([v4 BOOLValue])
    {
      swift_getKeyPath();
      sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
      sub_190D51C20();

      swift_getKeyPath();
      aBlock = v1;
      sub_190D51C20();

      v5 = [*(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) recipient];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 defaultIMHandle];

        if (!v7)
        {
          __break(1u);
          return;
        }

        v8 = [v7 normalizedID];

        if (v8)
        {
          v9 = sub_190D56F10();
          v11 = v10;
          if (a1)
          {
            swift_getKeyPath();
            sub_190D51C20();

            swift_getKeyPath();
            aBlock = v2;
            sub_190D51C20();

            v12 = [*(*(v2 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) lastAddressedHandle];
            if (v12)
            {
              v13 = v12;
              v14 = sub_190D56F10();
              v16 = v15;
              if (qword_1EAD51A58 != -1)
              {
                swift_once();
              }

              v17 = sub_190D53040();
              __swift_project_value_buffer(v17, qword_1EAD9DBF0);
              sub_190D52690();
              sub_190D52690();
              v18 = sub_190D53020();
              v19 = sub_190D576C0();

              if (os_log_type_enabled(v18, v19))
              {
                v37 = v9;
                v20 = v14;
                v21 = swift_slowAlloc();
                v22 = swift_slowAlloc();
                aBlock = v22;
                *v21 = 136315394;
                *(v21 + 4) = sub_19021D9F8(v37, v11, &aBlock);
                *(v21 + 12) = 2080;
                *(v21 + 14) = sub_19021D9F8(v20, v16, &aBlock);
                _os_log_impl(&dword_19020E000, v18, v19, "User requested begin sharing focus status with handleID: %s fromHandleID: %s", v21, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x193AF7A40](v22, -1, -1);
                v23 = v21;
                v14 = v20;
                v9 = v37;
                MEMORY[0x193AF7A40](v23, -1, -1);
              }

              v24 = [objc_opt_self() sharedInstance];
              v25 = swift_allocObject();
              swift_weakInit();
              v26 = swift_allocObject();
              v26[2] = v9;
              v26[3] = v11;
              v26[4] = v14;
              v26[5] = v16;
              v26[6] = v25;
              v42 = sub_190C6503C;
              v43 = v26;
              aBlock = MEMORY[0x1E69E9820];
              v39 = 1107296256;
              v40 = sub_190C597D4;
              v41 = &block_descriptor_227_0;
              v27 = _Block_copy(&aBlock);

              [v24 manuallyShareFocusStatusWithHandleID:v8 fromHandleID:v13 completion:v27];
              _Block_release(v27);

              goto LABEL_20;
            }
          }

          else
          {
            if (qword_1EAD51A58 != -1)
            {
              swift_once();
            }

            v28 = sub_190D53040();
            __swift_project_value_buffer(v28, qword_1EAD9DBF0);
            sub_190D52690();
            v29 = sub_190D53020();
            v30 = sub_190D576C0();

            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              aBlock = v32;
              *v31 = 136315138;
              *(v31 + 4) = sub_19021D9F8(v9, v11, &aBlock);
              _os_log_impl(&dword_19020E000, v29, v30, "User requested end sharing focus status with handleID: %s", v31, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v32);
              MEMORY[0x193AF7A40](v32, -1, -1);
              MEMORY[0x193AF7A40](v31, -1, -1);
            }

            v33 = [objc_opt_self() sharedInstance];
            v34 = swift_allocObject();
            swift_weakInit();
            v35 = swift_allocObject();
            v35[2] = v9;
            v35[3] = v11;
            v35[4] = v34;
            v42 = sub_190C65030;
            v43 = v35;
            aBlock = MEMORY[0x1E69E9820];
            v39 = 1107296256;
            v40 = sub_190BB9AE8;
            v41 = &block_descriptor_220_0;
            v36 = _Block_copy(&aBlock);

            [v33 manuallyRemoveSharingOfFocusStatusWithHandleID:v8 completion:v36];
            _Block_release(v36);
          }

          v13 = v8;
LABEL_20:
        }
      }
    }
  }
}

void sub_190C59398(uint64_t a1, char a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a3 || (a2 & 1) == 0)
  {
    if (qword_1EAD51A58 != -1)
    {
      swift_once();
    }

    v17 = sub_190D53040();
    __swift_project_value_buffer(v17, qword_1EAD9DBF0);
    sub_190D52690();
    sub_190D52690();
    v18 = a3;
    oslog = sub_190D53020();
    v19 = sub_190D576C0();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27[0] = v22;
      *v20 = 136315650;
      *(v20 + 4) = sub_19021D9F8(a4, a5, v27);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_19021D9F8(a6, a7, v27);
      *(v20 + 22) = 2112;
      if (a3)
      {
        v23 = a3;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        v25 = v24;
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      *(v20 + 24) = v24;
      *v21 = v25;
      _os_log_impl(&dword_19020E000, oslog, v19, "Error manually sharing focus with handleID: %s fromHandleID: %s error: %@", v20, 0x20u);
      sub_19022EEA4(v21, &unk_1EAD54610);
      MEMORY[0x193AF7A40](v21, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v22, -1, -1);
      MEMORY[0x193AF7A40](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EAD51A58 != -1)
    {
      swift_once();
    }

    v12 = sub_190D53040();
    __swift_project_value_buffer(v12, qword_1EAD9DBF0);
    sub_190D52690();
    v13 = sub_190D53020();
    v14 = sub_190D576C0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_19021D9F8(a4, a5, v27);
      _os_log_impl(&dword_19020E000, v13, v14, "Successfully manually shared focus status with handleID: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x193AF7A40](v16, -1, -1);
      MEMORY[0x193AF7A40](v15, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54878);
      sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
      sub_190D51C10();
    }
  }
}

void sub_190C597D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  sub_190D50920();
  v8 = a4;
  v7(a2, a3, a4);
}

void sub_190C5985C(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (qword_1EAD51A58 != -1)
    {
      swift_once();
    }

    v6 = sub_190D53040();
    __swift_project_value_buffer(v6, qword_1EAD9DBF0);
    sub_190D52690();
    v7 = a1;
    oslog = sub_190D53020();
    v8 = sub_190D576C0();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_19021D9F8(a2, a3, v20);
      *(v9 + 12) = 2112;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      *v10 = v13;
      _os_log_impl(&dword_19020E000, oslog, v8, "Error manually unsharing focus with handleID: %s error: %@", v9, 0x16u);
      sub_19022EEA4(v10, &unk_1EAD54610);
      MEMORY[0x193AF7A40](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x193AF7A40](v11, -1, -1);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EAD51A58 != -1)
    {
      swift_once();
    }

    v14 = sub_190D53040();
    __swift_project_value_buffer(v14, qword_1EAD9DBF0);
    sub_190D52690();
    v15 = sub_190D53020();
    v16 = sub_190D576C0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_19021D9F8(a2, a3, v20);
      _os_log_impl(&dword_19020E000, v15, v16, "Successfully manually unshared focus status with handleID: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x193AF7A40](v18, -1, -1);
      MEMORY[0x193AF7A40](v17, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54878);
      sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
      sub_190D51C10();
    }
  }
}

uint64_t sub_190C59C30@<X0>(char a1@<W1>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
    sub_190C581C8([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_]);
  }

  *a2 = v5 == 0;
  return result;
}

void sub_190C59CC8()
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  v5[0] = v0;
  sub_190D51C20();

  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
  v2 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_190C64EE8;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_190896518;
  v5[3] = &block_descriptor_113;
  v3 = _Block_copy(v5);
  v4 = v1;

  [v4 canShareFocusStatusWithCompletion_];
  _Block_release(v3);
}

void sub_190C59E70(char a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 isSatelliteConnectionActive];

  if (v5)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_190C581A0([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_]);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_getKeyPath();
      v36 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54878);
      sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
LABEL_23:
      sub_190D51C10();

      return;
    }

    return;
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = v8;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54878);
    sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
    sub_190D51C10();
  }

  if (a1)
  {
    if (qword_1EAD51A58 != -1)
    {
      swift_once();
    }

    v11 = sub_190D53040();
    __swift_project_value_buffer(v11, qword_1EAD9DBF0);
    sub_190D50920();
    v12 = sub_190D53020();
    v13 = sub_190D576C0();

    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_27;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    swift_beginAccess();
    v16 = swift_weakLoadStrong();
    if (v16)
    {
      v17 = v16;
      swift_getKeyPath();
      sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
      sub_190D51C20();

      swift_getKeyPath();
      v36 = v17;
      sub_190D51C20();

      v18 = *(*(v17 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);

      v19 = [v18 chat];

      if (v19)
      {
        v20 = [v19 guid];

        v21 = sub_190D56F10();
        v23 = v22;

        v16 = v21;
LABEL_26:
        v30 = sub_19021D9F8(v16, v23, aBlock);

        *(v14 + 4) = v30;
        _os_log_impl(&dword_19020E000, v12, v13, "Checking to see if focus status is shared with chat: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x193AF7A40](v15, -1, -1);
        MEMORY[0x193AF7A40](v14, -1, -1);
LABEL_27:

        swift_beginAccess();
        v31 = swift_weakLoadStrong();
        if (v31)
        {
          v32 = v31;
          swift_getKeyPath();
          aBlock[0] = v32;
          sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
          sub_190D51C20();

          swift_getKeyPath();
          aBlock[0] = v32;
          sub_190D51C20();

          v33 = *(*(v32 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);

          aBlock[4] = sub_190C64F40;
          aBlock[5] = a2;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_190B271EC;
          aBlock[3] = &block_descriptor_207;
          v34 = _Block_copy(aBlock);
          sub_190D50920();

          [v33 isInvitedToViewMyFocusStatusWithCompletion_];
          _Block_release(v34);
        }

        return;
      }

      v16 = 0;
    }

    v23 = 0xE000000000000000;
    goto LABEL_26;
  }

  if (qword_1EAD51A58 != -1)
  {
    swift_once();
  }

  v24 = sub_190D53040();
  __swift_project_value_buffer(v24, qword_1EAD9DBF0);
  v25 = sub_190D53020();
  v26 = sub_190D576C0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_19020E000, v25, v26, "Cannot share focus status with chat, not checking to see if focus status is already shared", v27, 2u);
    MEMORY[0x193AF7A40](v27, -1, -1);
  }

  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (v28)
  {
    v29 = v28;
    swift_getKeyPath();
    v36 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54878);
    sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
    sub_190D51C10();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54878);
    sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
    goto LABEL_23;
  }
}

uint64_t sub_190C5A72C@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isSharingFocusStatus))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
      sub_190D51C10();
    }
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_190C5A890@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_getKeyPath();
      sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
      sub_190D51C20();

      v6 = *(v5 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__isSharingFocusStatus);
      v7 = v6;

      if (v6)
      {
        v8 = [v7 BOOLValue];

        LOBYTE(Strong) = v8;
      }

      else
      {
        LOBYTE(Strong) = 0;
      }
    }

    sub_190C58384(Strong);
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_190C5A9E8(char a1, void *a2, uint64_t a3)
{
  v6 = sub_190D56770();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_190D567A0();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  v12 = sub_190D57870();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  *(v13 + 32) = a3;
  aBlock[4] = sub_190C64F48;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_213;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  sub_190D50920();

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190C64F58(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
  sub_190D58170();
  MEMORY[0x193AF3110](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_190C5ACF8(void *a1, char a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_1EAD51A58 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9DBF0);
    v5 = a1;
    v6 = sub_190D53020();
    v7 = sub_190D576C0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_190D58800();
      v12 = sub_19021D9F8(v10, v11, v20);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_19020E000, v6, v7, "Error determining if focus status is shared with chat, leaving switch disabled. Error: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x193AF7A40](v9, -1, -1);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (a2)
  {
    if (qword_1EAD51A58 != -1)
    {
      swift_once();
    }

    v13 = sub_190D53040();
    __swift_project_value_buffer(v13, qword_1EAD9DBF0);
    v14 = sub_190D53020();
    v15 = sub_190D576C0();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_19;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Determined focus status is shared with chat, enabling and updating switch";
  }

  else
  {
    if (qword_1EAD51A58 != -1)
    {
      swift_once();
    }

    v18 = sub_190D53040();
    __swift_project_value_buffer(v18, qword_1EAD9DBF0);
    v14 = sub_190D53020();
    v15 = sub_190D576C0();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_19;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Determined focus status is NOT shared with chat, enabling and updating switch";
  }

  _os_log_impl(&dword_19020E000, v14, v15, v17, v16, 2u);
  MEMORY[0x193AF7A40](v16, -1, -1);
LABEL_19:

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54878);
    sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
    sub_190D51C10();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54878);
    sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
    sub_190D51C10();
  }
}

uint64_t sub_190C5B1D0@<X0>(char a1@<W1>, void (*a2)(id)@<X2>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v7 = result;
  if (result)
  {
    a2([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_]);
  }

  *a3 = v7 == 0;
  return result;
}

uint64_t sub_190C5B278()
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  return sub_190D52690();
}

uint64_t sub_190C5B324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__availableTranslationLocales);
  return sub_190D52690();
}

id sub_190C5B3E4()
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  if ([*(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) hasLeftGroupChat])
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190D51C20();

  return [*(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) canLeave];
}

uint64_t sub_190C5B500()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  if (*(v0 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsSendingReadReceipts) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v3 = v2;
  sub_190D51C20();

  LOBYTE(v2) = [*&v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation] isBusinessConversation];

  if (v2)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190D51C20();

  v4 = *(v1 + 16);
  swift_getKeyPath();
  v5 = v4;
  sub_190D51C20();

  LOBYTE(v4) = v5[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation];

  if (v4)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190D51C20();

  v7 = *(v1 + 16);
  swift_getKeyPath();
  v8 = v7;
  sub_190D51C20();

  v9 = *&v8[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__visibleConversationDetailsSections];

  return (v9 >> 6) & 1;
}

void sub_190C5B800(uint64_t a1)
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  v2 = *(*(a1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
  v3 = [v2 chat];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 supportsSendingReadReceipts];

    v6 = (a1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsSendingReadReceipts);
    if (v5 != *(a1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsSendingReadReceipts))
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
      sub_190D51C10();

      return;
    }
  }

  else
  {

    LOBYTE(v5) = 0;
    v6 = (a1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsSendingReadReceipts);
    if (*(a1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsSendingReadReceipts))
    {
      goto LABEL_3;
    }
  }

  *v6 = v5;
}

void sub_190C5BA48(uint64_t a1)
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  v2 = [*(*(a1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 supportsAutomaticTranslation];

    v5 = (a1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsAutomaticTranslation);
    if (v4 != *(a1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsAutomaticTranslation))
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
      sub_190D51C10();

      return;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
    v5 = (a1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsAutomaticTranslation);
    if (*(a1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsAutomaticTranslation))
    {
      goto LABEL_3;
    }
  }

  *v5 = v4;
}

uint64_t sub_190C5BC90()
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C10();
}

id sub_190C5BD50(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  return [*(*(a1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) setSendReadReceipts_];
}

id sub_190C5BE7C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  if (*(v4 + *a3) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  return [*(*(v4 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) *a4];
}

void sub_190C5C030(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  v4 = *(*(a1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
  sub_190C5C170();
  v5 = sub_190D56ED0();

  [v4 setAutomaticallyTranslate:a2 & 1 languageCode:v5 userLanguageCode:0];
}

uint64_t sub_190C5C170()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  v2 = OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsAutomaticTranslation;
  if (*(v0 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsAutomaticTranslation) == 1)
  {
    swift_getKeyPath();
    sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
    sub_190D51C20();

    swift_getKeyPath();
    sub_190D51C20();

    v3 = [*(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) translationLanguageCode];
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  swift_getKeyPath();
  sub_190D51C20();

  if (*(v1 + v2) == 1)
  {
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {

      swift_getKeyPath();
      sub_190D51C20();

      v8 = *(v1 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__availableTranslationLocales);
      if (*(v8 + 16))
      {
        v4 = *(v8 + 32);
        sub_190D52690();
      }

      else
      {
        v4 = 0;
      }

      swift_getKeyPath();
      sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
      sub_190D51C20();

      swift_getKeyPath();
      sub_190D51C20();

      v9 = *(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
      v10 = sub_190C5BE58();
      v11 = sub_190D56ED0();
      [v9 setAutomaticallyTranslate:v10 & 1 languageCode:v11 userLanguageCode:0];
    }
  }

  return v4;
}

uint64_t sub_190C5C504()
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C10();
}

void sub_190C5C5D4(uint64_t a1)
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  v2 = *(*(a1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
  v3 = sub_190C5BE58();
  v4 = sub_190D56ED0();
  [v2 setAutomaticallyTranslate:v3 & 1 languageCode:v4 userLanguageCode:0];
}

id sub_190C5C734(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  return [*(*(v2 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) *a2];
}

uint64_t sub_190C5C884()
{
  swift_getKeyPath();
  sub_190C64F58(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D51C10();
}

void sub_190C5C954(char a1, uint64_t a2)
{
  v4 = sub_190D51840();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = a2;
  sub_190C64F58(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  v14 = a2;
  sub_190D51C20();

  if (a1)
  {
    v8 = *(*(a2 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 distantFuture];
    sub_190D517E0();

    v12 = sub_190D51780();
    (*(v5 + 8))(v7, v4);
    [v10 setMutedUntilDate_];
  }

  else
  {
    [*(*(a2 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) unmute];
  }
}

uint64_t sub_190C5CC58(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  sub_190D50920();
  sub_190C650EC();
}

uint64_t sub_190C5CCBC()
{

  v1 = OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_190C5CD54()
{
  v1 = OBJC_IVAR____TtC7ChatKit26DetailsConfiguredViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel__supportsSharingFocusStatus);
  sub_190D50920();

  v3(v0 + OBJC_IVAR____TtC7ChatKit36DetailsConversationSettingsViewModel___observationRegistrar, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetailsConversationSettingsViewModel()
{
  result = qword_1EAD610C0;
  if (!qword_1EAD610C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190C5CEBC()
{
  result = sub_190D51C60();
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

void sub_190C5CF78()
{
  sub_190C5D124(319, &qword_1EAD52C00, type metadata accessor for DetailsViewConfiguration, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_190C5D124(319, &unk_1EAD61170, type metadata accessor for DetailsConversationSettingsViewModel, MEMORY[0x1E6981AA0]);
    if (v1 <= 0x3F)
    {
      sub_19081C950();
      if (v2 <= 0x3F)
      {
        sub_1908CB188();
        if (v3 <= 0x3F)
        {
          sub_190C5D124(319, &qword_1EAD562D0, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_190C5D124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_190C5D1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v77 = a2;
  v5 = *(a1 + 16);
  v58 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  v69 = sub_190D54200();
  v76 = sub_190D58050();
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v56 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61180);
  MEMORY[0x1EEE9AC00](v79);
  v13 = &v56 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61188);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v56 - v16;
  v17 = *(a1 + 24);
  v67 = v13;
  sub_190C5DA60(v13);
  result = CKFrameworkBundle();
  if (result)
  {
    v19 = result;
    v20 = sub_190D56ED0();
    v21 = sub_190D56ED0();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_190D56F10();
    v25 = v24;
    v61 = v24;

    v91 = v23;
    v92 = v25;
    v26 = &v3[*(a1 + 48)];
    v27 = *v26;
    v28 = *(v26 + 1);
    LOBYTE(v89) = v27;
    v90 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
    v29 = sub_190D55FF0();
    v60 = &v56;
    v59 = v82;
    MEMORY[0x1EEE9AC00](v29);
    v56 = v5;
    v66 = v17;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0);
    v31 = sub_190C64350();
    v32 = sub_19081E484();
    v62 = sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0);
    v63 = v32;
    v64 = v31;
    v65 = v30;
    v33 = v78;
    v34 = v67;
    sub_190D55B50();

    sub_19022EEA4(v34, &qword_1EAD61180);
    v35 = *&v3[*(a1 + 44)];
    v36 = v33;
    if (v35)
    {
      LOBYTE(OpaqueTypeConformance2) = *v3;
      v37 = v57;
      v35(&OpaqueTypeConformance2);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
      sub_190D56320();

      v38 = [objc_opt_self() currentDevice];
      v39 = [v38 userInterfaceIdiom];

      if (v39 == 5)
      {
        v40 = sub_190D55DA0();
      }

      else
      {
        v40 = 0;
      }

      v42 = v68;
      OpaqueTypeConformance2 = v40;
      v44 = v56;
      v43 = v66;
      sub_190D55940();

      (*(v58 + 8))(v37, v44);
      v41 = 0;
    }

    else
    {
      v41 = 1;
      v42 = v68;
      v43 = v66;
    }

    (*(*(v69 - 8) + 56))(v42, v41, 1, v69);
    v45 = sub_190233640(&unk_1EAD52250, &qword_1EAD55E40);
    v87 = v43;
    v88 = v45;
    WitnessTable = swift_getWitnessTable();
    v46 = v76;
    v47 = swift_getWitnessTable();
    v48 = v74;
    sub_19096BC74(v42, v46, v47);
    v49 = v72;
    v50 = *(v72 + 8);
    v50(v42, v46);
    v51 = v71;
    v52 = v70;
    v53 = v73;
    (*(v71 + 16))(v70, v36, v73);
    v91 = v52;
    v54 = v75;
    (*(v49 + 16))(v75, v48, v46);
    v92 = v54;
    v89 = v53;
    v90 = v46;
    OpaqueTypeConformance2 = v79;
    v81 = MEMORY[0x1E69E6158];
    v82 = v65;
    v83 = v64;
    v84 = v63;
    v85 = v62;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v81 = v47;
    sub_190B74A3C(&v91, 2uLL, &v89);
    v50(v48, v46);
    v55 = *(v51 + 8);
    v55(v78, v53);
    v50(v54, v46);
    return (v55)(v52, v53);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190C5DA60@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD611C8);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v60 = &v59 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD611D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD611D8);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD611E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD611E8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD611F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v64 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD611F8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v74 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61200);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v72 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v59 - v29;
  v31 = type metadata accessor for DetailsViewConversationSettings();
  v70 = v30;
  sub_190C5E500(v31, v30);
  v71 = v25;
  sub_190C5E8DC(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v32 = v76;
  swift_getKeyPath();
  v76 = v32;
  sub_190C64F58(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v33 = [*&v32[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation] supportsAutomaticTranslation];

  if (v33)
  {
    sub_190C5E9D8(v31, v15);
    sub_19081E40C(v15, v20, &qword_1EAD611E8);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = *(v13 + 56);
  v73 = v20;
  v35(v20, v34, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v36 = v76;
  swift_getKeyPath();
  v76 = v36;
  sub_190D51C20();

  swift_getKeyPath();
  v76 = v36;
  sub_190D51C20();

  v37 = v75;
  if (v36[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation] == 1)
  {
    v38 = [*&v36[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation] supportsMutatingGroupMembers];

    if (v38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
      sub_190D56320();
      v39 = v76;
      swift_getKeyPath();
      v76 = v39;
      sub_190D51C20();

      v40 = *&v39[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__visibleConversationDetailsSections];

      if ((v40 & 0x80) != 0)
      {
        v41 = v59;
        sub_190C5EC3C(v31, v59);
        sub_19081E40C(v41, v37, &qword_1EAD611D8);
        v42 = 0;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

  v42 = 1;
LABEL_10:
  v43 = 1;
  (*(v61 + 56))(v37, v42, 1, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v44 = v76;
  swift_getKeyPath();
  v76 = v44;
  sub_190D51C20();

  v45 = [*&v44[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation] supportsDeleteAndBlockGroup];

  if (v45)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
    sub_190D56320();
    v46 = v76;
    swift_getKeyPath();
    v76 = v46;
    sub_190D51C20();

    v47 = *&v46[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__visibleConversationDetailsSections];

    if ((v47 & 0x100) != 0)
    {
      v48 = v60;
      sub_190C5F174(v31, v60);
      sub_19081E40C(v48, v69, &qword_1EAD611C8);
      v43 = 0;
    }

    else
    {
      v43 = 1;
    }
  }

  v49 = v69;
  (*(v63 + 56))(v69, v43, 1, v65);
  v50 = v72;
  sub_19022FD14(v70, v72, &qword_1EAD61200);
  v51 = v74;
  sub_19022FD14(v71, v74, &qword_1EAD611F8);
  v52 = v64;
  sub_19022FD14(v73, v64, &qword_1EAD611F0);
  v53 = v66;
  sub_19022FD14(v75, v66, &qword_1EAD611E0);
  v54 = v67;
  sub_19022FD14(v49, v67, &qword_1EAD611D0);
  v55 = v50;
  v56 = v68;
  sub_19022FD14(v55, v68, &qword_1EAD61200);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61208);
  sub_19022FD14(v51, v56 + v57[12], &qword_1EAD611F8);
  sub_19022FD14(v52, v56 + v57[16], &qword_1EAD611F0);
  sub_19022FD14(v53, v56 + v57[20], &qword_1EAD611E0);
  sub_19022FD14(v54, v56 + v57[24], &qword_1EAD611D0);
  sub_19022EEA4(v49, &qword_1EAD611D0);
  sub_19022EEA4(v75, &qword_1EAD611E0);
  sub_19022EEA4(v73, &qword_1EAD611F0);
  sub_19022EEA4(v71, &qword_1EAD611F8);
  sub_19022EEA4(v70, &qword_1EAD61200);
  sub_19022EEA4(v54, &qword_1EAD611D0);
  sub_19022EEA4(v53, &qword_1EAD611E0);
  sub_19022EEA4(v52, &qword_1EAD611F0);
  sub_19022EEA4(v74, &qword_1EAD611F8);
  return sub_19022EEA4(v72, &qword_1EAD61200);
}