uint64_t sub_1CF44058C(uint64_t (*a1)(void, void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v338 = a4;
  v335 = a3;
  v336 = a1;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01F0, &qword_1CFA05700);
  v9 = *(*(v325 - 8) + 64);
  MEMORY[0x1EEE9AC00](v325);
  v327 = &v308 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v323 = &v308 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v321 = &v308 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v328 = *(v16 - 8);
  v329 = v16;
  v17 = *(v328 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v318 = &v308 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v317 = &v308 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDF0, &unk_1CFA054F0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v310 = &v308 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v316 = &v308 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v311 = &v308 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v312 = &v308 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v315 = &v308 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v313 = &v308 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v314 = &v308 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v319 = &v308 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v320 = &v308 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v324 = &v308 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v326 = &v308 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v308 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v308 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48);
  v53 = &v308 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51);
  v56 = &v308 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54);
  v59 = &v308 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57);
  v322 = &v308 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v330 = &v308 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v309 = &v308 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v333 = &v308 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v334 = &v308 - v68;
  v331 = a5;
  v345 = a5;
  v69 = v336;
  LODWORD(v332) = a6;
  v346 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF80, &unk_1CF9FAE70);
  v393 = a2;
  v70 = swift_dynamicCastClass();
  if (!v70 || v69 != 8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
    v78 = swift_dynamicCastClass();
    if (v78 && v69 == 32)
    {
      v79 = v78;
      v50 = v334;
      sub_1CEFCCBDC(v335, v334, &unk_1EC4BFDF0, &unk_1CFA054F0);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
      v336 = *(*(v80 - 8) + 48);
      v81 = (v336)(v50, 1, v80);
      v82 = v338;
      if (v81 == 1)
      {
        v330 = v80;

        v83 = v337;
LABEL_9:
        sub_1CEFCCC44(v50, &unk_1EC4BFDF0, &unk_1CFA054F0);
        v84 = *(v82 + 16);
        v86 = v79 + 144;
        v85 = *(v79 + 144);
        v87 = v79;
        v88 = *(v79 + 152);

        sub_1CF7EB934(v85, v88, v331, v332, v344);
        if (v83)
        {
        }

        memcpy(v343, v344, sizeof(v343));
        if (sub_1CF08B99C(v343) == 1)
        {

LABEL_43:
          memcpy(v342, v344, sizeof(v342));
LABEL_92:
          v157 = &unk_1EC4BFC20;
          v158 = &unk_1CFA0A290;
          v159 = v342;
LABEL_93:
          sub_1CEFCCC44(v159, v157, v158);
LABEL_94:
          v77 = 1;
          return v77 & 1;
        }

        memcpy(v342, v344, sizeof(v342));
        v347 = v344[0];
        v353 = *(&v344[5] + 1);
        v354 = *(&v344[6] + 1);
        v355 = *(&v344[7] + 1);
        v356 = *(&v344[8] + 1);
        v350 = *(&v344[2] + 1);
        v351 = *(&v344[3] + 1);
        v352 = *(&v344[4] + 1);
        v360 = *(&v344[10] + 10);
        v359 = *(&v344[9] + 10);
        v358 = *(&v344[8] + 10);
        *&v363[14] = *(&v344[14] + 8);
        *v363 = *(&v344[13] + 10);
        v362 = *(&v344[12] + 10);
        v361 = *(&v344[11] + 10);
        v132 = *&v342[248];
        v365 = v344[16];
        v366 = v344[17];
        v368 = v344[19];
        v369 = v344[20];
        v367 = v344[18];
        v372 = *(&v344[21] + 9);
        v373 = *(&v344[22] + 9);
        v376 = *(&v344[25] + 9);
        v377 = *(&v344[26] + 9);
        v374 = *(&v344[23] + 9);
        v375 = *(&v344[24] + 9);
        *&v381[15] = *(&v344[31] + 8);
        v380 = *(&v344[29] + 9);
        *v381 = *(&v344[30] + 9);
        v378 = *(&v344[27] + 9);
        v379 = *(&v344[28] + 9);
        v348 = *&v342[16];
        v349 = v342[32];
        v357 = v342[137];
        v370 = *&v344[21];
        v364 = *&v342[248];
        v371 = v342[344];
        if (v342[16])
        {

          goto LABEL_92;
        }

        LODWORD(v337) = v342[344];
        v332 = *&v342[16];
        LODWORD(v333) = v342[32];
        LODWORD(v334) = v342[137];
        v133 = *(v87 + 144);
        v134 = *(v87 + 152);
        v135 = *(v338 + 32);

        v340 = v133;
        v341 = v134;
        v136 = v321;
        (*(*v135 + 240))(&v340, 1, &v345, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if ((*(v328 + 48))(v136, 1, v329) == 1)
        {
          sub_1CEFCCC44(v342, &unk_1EC4BFC20, &unk_1CFA0A290);

          v157 = &qword_1EC4C1B40;
          v158 = &unk_1CF9FCB70;
          v159 = v136;
          goto LABEL_93;
        }

        v213 = v317;
        sub_1CEFE55D0(v136, v317, &unk_1EC4BE360, &qword_1CF9FE650);
        if ((sub_1CF7E6990() & 1) == 0 || *(v213 + *(v329 + 48)) == 2)
        {
          v214 = sub_1CF75C288();
          if (v214 && (v337 | 4) == 4 || (v334 | 2) != 6 || v214 && (v337 | 2) == 3)
          {

            sub_1CEFCCC44(v213, &unk_1EC4BE360, &qword_1CF9FE650);
            v184 = &unk_1EC4BFC20;
            v185 = &unk_1CFA0A290;
            v186 = v342;
            goto LABEL_367;
          }

          if (v334 == 4)
          {
            v337 = v135;
            v271 = v338;
            if (v132)
            {
              v340 = v132;
              v272 = v309;
              sub_1CEFCCBDC(v335, v309, &unk_1EC4BFDF0, &unk_1CFA054F0);
              if ((v336)(v272, 1, v330) == 1)
              {
                v273 = v132;
                v274 = &unk_1EC4BFDF0;
                v275 = &unk_1CFA054F0;
                goto LABEL_468;
              }

              if (swift_getEnumCaseMultiPayload() != 3)
              {
                v301 = v132;
                v274 = &qword_1EC4BE710;
                v275 = &qword_1CF9FE5A8;
LABEL_468:
                sub_1CEFCCC44(v272, v274, v275);
                if ((v332 & 0x10) != 0)
                {
                }

                else
                {
                  v302 = (*(*v337 + 488))(v86, &v345, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
                  if (v302)
                  {
                  }

                  else
                  {
                    (*(**(v338 + 40) + 432))(&v339, &v340, 1, &v345, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

                    v307 = v339;
                    if (v339)
                    {

                      sub_1CEFCCC44(v317, &unk_1EC4BE360, &qword_1CF9FE650);
                      sub_1CEFCCC44(v342, &unk_1EC4BFC20, &unk_1CFA0A290);

                      return 0;
                    }
                  }

                  v271 = v338;
                  v213 = v317;
                }

                goto LABEL_471;
              }

              sub_1CEFCCC44(v272, &qword_1EC4BE710, &qword_1CF9FE5A8);
LABEL_471:
              v340 = v132;
              v303 = *(**(v271 + 24) + 256);
              v304 = v132;
              v305 = v303(&v340, &v345, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

              if (v305)
              {
                v306 = *(v305 + 136);

                sub_1CEFCCC44(v213, &unk_1EC4BE360, &qword_1CF9FE650);
                sub_1CEFCCC44(v342, &unk_1EC4BFC20, &unk_1CFA0A290);
                if ((v306 & 2) == 0)
                {
                  goto LABEL_94;
                }

                return 0;
              }

LABEL_379:
              sub_1CEFCCC44(v213, &unk_1EC4BE360, &qword_1CF9FE650);
              goto LABEL_92;
            }
          }

          else
          {
            v271 = v338;
            if (v132)
            {
              goto LABEL_471;
            }
          }

          goto LABEL_379;
        }

        sub_1CEFCCC44(v213, &unk_1EC4BE360, &qword_1CF9FE650);

        if (v337 == 4 && v333)
        {
          goto LABEL_92;
        }

        sub_1CEFCCC44(v342, &unk_1EC4BFC20, &unk_1CFA0A290);
        if (v132)
        {
          v270 = 0;
        }

        else
        {
          v270 = v334 == 6;
        }

LABEL_329:
        v77 = v270;
        return v77 & 1;
      }

      sub_1CEFCCBDC(v50, v333, &unk_1EC4BFDF0, &unk_1CFA054F0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v83 = v337;
      if (EnumCaseMultiPayload <= 14)
      {
        if (EnumCaseMultiPayload <= 10)
        {
          v99 = v333;
          if (EnumCaseMultiPayload != 3)
          {
            if (EnumCaseMultiPayload == 6)
            {
              v330 = v80;
              v326 = v79;
              v327 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48);
              v100 = v329;
              v101 = *(v328 + 48);
              if (v101(v99, 1, v329) == 1)
              {
                sub_1CEFCCC44(v99 + v327, &qword_1EC4C1B40, &unk_1CF9FCB70);
                v102 = v99;
                v103 = &qword_1EC4C1B40;
                v104 = &unk_1CF9FCB70;
LABEL_184:
                sub_1CEFCCC44(v102, v103, v104);
                goto LABEL_366;
              }

              if (v101(v99 + v327, 1, v100) != 1)
              {
                sub_1CEFCCC44(v99, &unk_1EC4BE360, &qword_1CF9FE650);
                v103 = &qword_1EC4C1B40;
                v104 = &unk_1CF9FCB70;
                v102 = v99 + v327;
                goto LABEL_184;
              }

              v193 = *v99;
              v194 = *(v99 + 8);

              sub_1CEFCCC44(v99, &unk_1EC4BE360, &qword_1CF9FE650);
              v79 = v326;
              v195 = *(v326 + 144);
              v196 = *(v326 + 152);
              if (v194)
              {
                if (v194 == 1)
                {
                  if (v196 == 1)
                  {
                    v197 = v193 == v195;
                    goto LABEL_292;
                  }

LABEL_365:

                  goto LABEL_366;
                }

                if (v193)
                {
                  v50 = v334;
                  if (v196 != 2)
                  {
                    goto LABEL_365;
                  }

LABEL_296:
                  if (v195 == 1)
                  {
                    goto LABEL_9;
                  }

                  goto LABEL_365;
                }

                v50 = v334;
                if (v196 != 2)
                {
                  goto LABEL_365;
                }

                goto LABEL_364;
              }

              if (*(v326 + 152))
              {
                goto LABEL_365;
              }

              v197 = v193 == v195;
              goto LABEL_292;
            }

LABEL_107:
            v103 = &qword_1EC4BE710;
            v104 = &qword_1CF9FE5A8;
            v102 = v99;
            goto LABEL_184;
          }

          v160 = *v333;
          v161 = *(v333 + 8);
          if ((*(v333 + 9) & 1) == 0)
          {
            v187 = *(v79 + 144);
            v188 = *(v79 + 152);
            v330 = v80;
            if (v188)
            {
              if (v188 == 1)
              {
                if (v161 != 1 || v187 != v160)
                {
                  goto LABEL_366;
                }
              }

              else if (v187)
              {
                if (v161 != 2 || v160 != 1)
                {
                  goto LABEL_366;
                }
              }

              else if (v161 != 2 || v160)
              {
                goto LABEL_366;
              }
            }

            else if (v161 || v187 != v160)
            {
              goto LABEL_366;
            }

            v50 = v334;
            goto LABEL_9;
          }

          goto LABEL_96;
        }

        v99 = v333;
        if (EnumCaseMultiPayload != 11)
        {
          if (EnumCaseMultiPayload != 12)
          {
            goto LABEL_107;
          }

          if ((*(v333 + 9) & 1) == 0)
          {
            v128 = *v333;
            v129 = *(v333 + 8);
            v130 = *(v79 + 144);
            v131 = *(v79 + 152);
            v330 = v80;
            if (v131)
            {
              if (v131 == 1)
              {
                if (v129 != 1 || v130 != v128)
                {
                  goto LABEL_102;
                }
              }

              else if (v130)
              {
                if (v129 != 2 || v128 != 1)
                {
                  goto LABEL_102;
                }
              }

              else if (v129 != 2 || v128)
              {
                goto LABEL_102;
              }
            }

            else if (v129 || v130 != v128)
            {
              goto LABEL_102;
            }

            v262 = *(v333 + 16);
            v263 = *(v333 + 24);

            sub_1CF47FDFC(v262, v263);
            v50 = v334;
            goto LABEL_9;
          }

          goto LABEL_104;
        }

        if ((*(v333 + 9) & 1) == 0)
        {
LABEL_104:
          v164 = *(v333 + 16);
          v163 = *(v333 + 24);
LABEL_105:
          sub_1CF47FDFC(v164, v163);
          goto LABEL_106;
        }

        v163 = *(v333 + 24);
        if (v163 >> 8 > 0xFE)
        {
          sub_1CEFD0994(*v333, *(v333 + 8), 1);
LABEL_102:
          sub_1CF47FDFC(*(v99 + 16), *(v99 + 24));
          goto LABEL_366;
        }

        if ((v163 & 0x100) != 0)
        {
          v164 = *(v333 + 16);
          goto LABEL_105;
        }

        if (*(v333 + 27) != 2)
        {
LABEL_450:
          v160 = *v333;
          v161 = *(v333 + 8);
LABEL_96:
          sub_1CEFD0994(v160, v161, 1);
LABEL_366:
          v184 = &unk_1EC4BFDF0;
          v185 = &unk_1CFA054F0;
          v186 = v334;
          goto LABEL_367;
        }

        v208 = *(v333 + 16);
        v209 = *(v333 + 24);
        v210 = *(v79 + 144);
        v211 = *(v79 + 152);
        v330 = v80;
        if (v211)
        {
          if (v211 == 1)
          {
            if (v209 != 1 || v210 != v208)
            {
              goto LABEL_450;
            }
          }

          else if (v210)
          {
            if (v209 != 2 || v208 != 1)
            {
              goto LABEL_450;
            }
          }

          else if (v209 != 2 || v208)
          {
            goto LABEL_450;
          }
        }

        else if (v209 || v210 != v208)
        {
          goto LABEL_450;
        }

        v295 = *v333;
        v296 = *(v333 + 8);

        v267 = v295;
        v268 = v296;
        v269 = 1;
LABEL_316:
        sub_1CEFD0994(v267, v268, v269);
        v50 = v334;
        goto LABEL_9;
      }

      if (EnumCaseMultiPayload <= 21)
      {
        if (EnumCaseMultiPayload != 15)
        {
          v99 = v333;
          if (EnumCaseMultiPayload != 16)
          {
            goto LABEL_107;
          }

          v114 = *(v333 + 16);

          if ((*(v99 + 9) & 1) == 0)
          {
            v195 = *v99;
            v198 = *(v99 + 8);
            v199 = *(v79 + 144);
            v200 = *(v79 + 152);
            if (*(v79 + 152))
            {
              v330 = v80;
              if (v200 != 1)
              {
                v50 = v334;
                if (v199)
                {
                  if (v198 != 2)
                  {
                    goto LABEL_365;
                  }

                  goto LABEL_296;
                }

                if (v198 != 2)
                {
                  goto LABEL_365;
                }

LABEL_364:
                if (!v195)
                {
                  goto LABEL_9;
                }

                goto LABEL_365;
              }

              if (v198 != 1)
              {
                goto LABEL_365;
              }

              v197 = v199 == v195;
            }

            else
            {
              if (*(v99 + 8))
              {
                goto LABEL_365;
              }

              v330 = v80;
              v197 = v199 == v195;
            }

LABEL_292:
            v50 = v334;
            if (v197)
            {
              goto LABEL_9;
            }

            goto LABEL_365;
          }

          goto LABEL_106;
        }

        v162 = v333;
        if (*(v333 + 9))
        {

          sub_1CEFD0994(*v162, *(v162 + 8), *(v162 + 9));
          goto LABEL_366;
        }

        v189 = v79;
        *&v344[0] = *(v333 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_390;
        }

        if (v343[0] == 5)
        {
          v190 = *v333;
          v191 = *(v333 + 8);
          v192 = *(v79 + 144);
          if (*(v79 + 152))
          {
            if (*(v79 + 152) == 1)
            {
              goto LABEL_137;
            }

LABEL_286:
            if (v192)
            {
              if (v191 != 2 || v190 != 1)
              {
                goto LABEL_390;
              }

LABEL_389:

              goto LABEL_126;
            }

            if (v191 == 2 && !v190)
            {
              goto LABEL_389;
            }

LABEL_390:

            v279 = *v333;
            v280 = *(v333 + 8);
            v281 = v189;
            v282 = *(v189 + 144);
            v283 = *(v281 + 152);
            if (v283)
            {
              if (v283 == 1)
              {

                if (v280 != 1 || v282 != v279)
                {
                  goto LABEL_366;
                }
              }

              else
              {

                if (v282)
                {
                  if (v280 != 2 || v279 != 1)
                  {
                    goto LABEL_366;
                  }
                }

                else if (v280 != 2 || v279)
                {
                  goto LABEL_366;
                }
              }
            }

            else
            {

              if (v280 || v282 != v279)
              {
                goto LABEL_366;
              }
            }

            v157 = &unk_1EC4BFDF0;
            v158 = &unk_1CFA054F0;
            v159 = v334;
            goto LABEL_93;
          }
        }

        else
        {
          if (v343[0] != 3)
          {
            goto LABEL_390;
          }

          v190 = *v333;
          v191 = *(v333 + 8);
          v192 = *(v79 + 144);
          if (*(v79 + 152))
          {
            if (*(v79 + 152) == 1)
            {
LABEL_137:
              if (v191 != 1 || v192 != v190)
              {
                goto LABEL_390;
              }

              goto LABEL_389;
            }

            goto LABEL_286;
          }
        }

        if (!v191 && v192 == v190)
        {
          goto LABEL_389;
        }

        goto LABEL_390;
      }

      if (EnumCaseMultiPayload == 22)
      {
        v330 = v80;

        sub_1CEFCCC44(v333, &qword_1EC4BE710, &qword_1CF9FE5A8);
        goto LABEL_9;
      }

      v99 = v333;
      if (EnumCaseMultiPayload != 32)
      {
        goto LABEL_107;
      }

      if (*(v333 + 9))
      {
        sub_1CEFD0994(*(v333 + 16), *(v333 + 24), *(v333 + 25));
LABEL_106:
        sub_1CEFD0994(*v99, *(v99 + 8), *(v99 + 9));
        goto LABEL_366;
      }

      v201 = *v333;
      v202 = *(v79 + 144);
      v203 = *(v79 + 152);
      if (*(v333 + 8))
      {
        if (*(v333 + 8) == 1)
        {
          if (v203 != 1 || v201 != v202)
          {
LABEL_317:
            sub_1CEFD0994(*(v333 + 16), *(v333 + 24), *(v333 + 25));
            goto LABEL_366;
          }
        }

        else if (v201)
        {
          if (v203 != 2 || v202 != 1)
          {
            goto LABEL_317;
          }
        }

        else if (v203 != 2 || v202)
        {
          goto LABEL_317;
        }
      }

      else if (*(v79 + 152) || v201 != v202)
      {
        goto LABEL_317;
      }

      v330 = v80;
      v264 = *(v333 + 16);
      v265 = *(v333 + 25);
      v266 = *(v333 + 24);

      v267 = v264;
      v268 = v266;
      v269 = v265;
      goto LABEL_316;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDB0, &unk_1CF9FAE50);
    v89 = swift_dynamicCastClass();
    v90 = v338;
    if (v89)
    {
      if (v69 <= 255)
      {
        if (v69 == 64)
        {
          v91 = v89;
          v92 = v330;
          sub_1CEFCCBDC(v335, v330, &unk_1EC4BFDF0, &unk_1CFA054F0);
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
          if ((*(*(v93 - 8) + 48))(v92, 1, v93) == 1)
          {

            v94 = v337;
LABEL_16:
            sub_1CEFCCC44(v92, &unk_1EC4BFDF0, &unk_1CFA054F0);
            v95 = v90[4];
            v96 = *(v91 + 152);
            *&v344[0] = *(v91 + 144);
            BYTE8(v344[0]) = v96;
            v97 = *(*v95 + 240);

            v92 = v323;
            v97(v344, 1, &v345, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            if (v94)
            {
            }

            v204 = v329;
            if ((*(v328 + 48))(v92, 1, v329) == 1)
            {

              v157 = &qword_1EC4C1B40;
              v158 = &unk_1CF9FCB70;
LABEL_160:
              v159 = v92;
              goto LABEL_93;
            }

            v56 = v318;
            sub_1CEFE55D0(v92, v318, &unk_1EC4BE360, &qword_1CF9FE650);
            v212 = &v56[*(v204 + 48)];
            if (*v212 == 2)
            {

              v157 = &unk_1EC4BE360;
              v158 = &qword_1CF9FE650;
              v159 = v56;
              goto LABEL_93;
            }

            if (v212[*(type metadata accessor for ItemMetadata() + 80)] == 1)
            {
              v235 = v90[2];
              v236 = *(v91 + 144);
              v237 = *(v91 + 152);

              sub_1CF7EB934(v236, v237, v331, v332, v344);
              memcpy(v343, v344, sizeof(v343));
              if (sub_1CF08B99C(v343) == 1)
              {
                sub_1CEFCCC44(v56, &unk_1EC4BE360, &qword_1CF9FE650);

                goto LABEL_43;
              }

              memcpy(v342, v344, sizeof(v342));
              memcpy(v382, v344, 0x158uLL);
              v293 = v342[344];
              v391 = *(&v344[29] + 9);
              v392[0] = *(&v344[30] + 9);
              *(v392 + 15) = *(&v344[31] + 8);
              v387 = *(&v344[25] + 9);
              v388 = *(&v344[26] + 9);
              v389 = *(&v344[27] + 9);
              v390 = *(&v344[28] + 9);
              v383 = *(&v344[21] + 9);
              v384 = *(&v344[22] + 9);
              v385 = *(&v344[23] + 9);
              v386 = *(&v344[24] + 9);
              v382[344] = v342[344];
              v294 = sub_1CF75C288();

              sub_1CEFCCC44(v56, &unk_1EC4BE360, &qword_1CF9FE650);
              sub_1CEFCCC44(v342, &unk_1EC4BFC20, &unk_1CFA0A290);
              if (!v294)
              {
                goto LABEL_94;
              }

              v270 = v293 == 0;
              goto LABEL_329;
            }

            v184 = &unk_1EC4BE360;
            v185 = &qword_1CF9FE650;
LABEL_157:
            v186 = v56;
            goto LABEL_367;
          }

          v151 = v322;
          sub_1CEFCCBDC(v92, v322, &unk_1EC4BFDF0, &unk_1CFA054F0);
          v152 = swift_getEnumCaseMultiPayload();
          v94 = v337;
          if (v152 > 10)
          {
            if (v152 == 11)
            {
              v215 = *(v151 + 16);
              v216 = *(v151 + 24);
              if (!*(v151 + 27))
              {

                sub_1CF47FDFC(v215, v216);
                sub_1CEFD0994(*v151, *(v151 + 8), *(v151 + 9));
                goto LABEL_16;
              }

              sub_1CF47FDFC(*(v151 + 16), *(v151 + 24));
              goto LABEL_201;
            }

            if (v152 != 15)
            {
              if (v152 == 16)
              {
                v153 = *(v151 + 16);

                if ((*(v151 + 9) & 1) == 0)
                {
                  v154 = *v151;
                  v155 = *(v151 + 8);
                  v156 = *(v91 + 144);
                  if (*(v91 + 152))
                  {
                    if (*(v91 + 152) == 1)
                    {

                      if (v155 != 1 || v156 != v154)
                      {
                        goto LABEL_432;
                      }
                    }

                    else
                    {

                      if (v156)
                      {
                        if (v155 != 2 || v154 != 1)
                        {
                          goto LABEL_432;
                        }
                      }

                      else if (v155 != 2 || v154)
                      {
                        goto LABEL_432;
                      }
                    }
                  }

                  else
                  {

                    if (v155 || v156 != v154)
                    {
                      goto LABEL_432;
                    }
                  }

                  v157 = &unk_1EC4BFDF0;
                  v158 = &unk_1CFA054F0;
                  goto LABEL_160;
                }

                goto LABEL_198;
              }

LABEL_202:
              sub_1CEFCCC44(v151, &qword_1EC4BE710, &qword_1CF9FE5A8);
              goto LABEL_432;
            }

            v217 = *(v151 + 16);

            if (*(v151 + 9))
            {
LABEL_198:

LABEL_201:
              sub_1CEFD0994(*v151, *(v151 + 8), *(v151 + 9));
LABEL_432:
              v184 = &unk_1EC4BFDF0;
              v185 = &unk_1CFA054F0;
              v186 = v92;
              goto LABEL_367;
            }

            v247 = *v151;
            v248 = *(v151 + 8);
            v249 = *(v91 + 144);
            if (*(v91 + 152))
            {
              if (*(v91 + 152) == 1)
              {
                if (v248 == 1 && v249 == v247)
                {
                  goto LABEL_16;
                }

                goto LABEL_416;
              }

              v278 = v248 == 2;
              if (v249)
              {
                goto LABEL_351;
              }

LABEL_413:
              if (v278 && !v247)
              {
                goto LABEL_16;
              }

              goto LABEL_416;
            }

            if (!*(v151 + 8) && v249 == v247)
            {
              goto LABEL_16;
            }

            goto LABEL_416;
          }

          if (v152 != 5)
          {
            if (v152 != 6)
            {
              goto LABEL_202;
            }

            v336 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48);
            v205 = v329;
            v206 = *(v328 + 48);
            if (v206(v151, 1, v329) == 1)
            {
              sub_1CEFCCC44(v151 + v336, &qword_1EC4C1B40, &unk_1CF9FCB70);
              v207 = v151;
            }

            else
            {
              if (v206(v151 + v336, 1, v205) == 1)
              {
                v253 = *v151;
                v254 = *(v151 + 8);

                sub_1CEFCCC44(v151, &unk_1EC4BE360, &qword_1CF9FE650);
                v247 = *(v91 + 144);
                v255 = *(v91 + 152);
                v92 = v330;
                if (v254)
                {
                  if (v254 != 1)
                  {
                    v278 = v255 == 2;
                    if (v253)
                    {
LABEL_351:
                      if (v278 && v247 == 1)
                      {
                        goto LABEL_16;
                      }

                      goto LABEL_416;
                    }

                    goto LABEL_413;
                  }

                  if (v255 == 1 && v253 == v247)
                  {
                    goto LABEL_16;
                  }
                }

                else if (!*(v91 + 152) && v253 == v247)
                {
                  goto LABEL_16;
                }

LABEL_416:

                goto LABEL_432;
              }

              sub_1CEFCCC44(v151, &unk_1EC4BE360, &qword_1CF9FE650);
              v207 = v151 + v336;
            }

            sub_1CEFCCC44(v207, &qword_1EC4C1B40, &unk_1CF9FCB70);
            v92 = v330;
            goto LABEL_432;
          }

          if (*(v151 + 9))
          {
            sub_1CEFD0994(*(v151 + 16), *(v151 + 24), *(v151 + 25));
            goto LABEL_201;
          }

          v250 = *v151;
          v251 = *(v151 + 8);
          v252 = *(v91 + 144);
          if (*(v91 + 152))
          {
            if (*(v91 + 152) == 1)
            {
              if (v251 != 1 || v252 != v250)
              {
LABEL_431:
                sub_1CEFD0994(*(v151 + 16), *(v151 + 24), *(v151 + 25));
                goto LABEL_432;
              }
            }

            else if (v252)
            {
              if (v251 != 2 || v250 != 1)
              {
                goto LABEL_431;
              }
            }

            else if (v251 != 2 || v250)
            {
              goto LABEL_431;
            }
          }

          else if (*(v151 + 8) || v252 != v250)
          {
            goto LABEL_431;
          }

          v290 = *(v151 + 16);
          v291 = *(v151 + 25);
          v292 = *(v151 + 24);

          sub_1CEFD0994(v290, v292, v291);
          goto LABEL_16;
        }

LABEL_26:
        if (v69 == 128)
        {
          if (((*(*v338 + 152))() & 0x100) == 0)
          {
            v105 = *(v325 + 48);
            v106 = v327;
            sub_1CEFCCBDC(v335, v327, &unk_1EC4BFDF0, &unk_1CFA054F0);
            *(v106 + v105) = v393;
            v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
            if ((*(*(v107 - 8) + 48))(v106, 1, v107) == 1)
            {
            }

            else
            {
              sub_1CEFCCBDC(v106, v59, &unk_1EC4BFDF0, &unk_1CFA054F0);
              if (swift_getEnumCaseMultiPayload() == 12)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA28, &unk_1CFA05660);
                if (swift_dynamicCastClass())
                {
                  v174 = v59[27];
                  v175 = *(v59 + 2);
                  v176 = *(v59 + 12);

                  sub_1CF47FDFC(v175, v176);
                  sub_1CEFD0994(*v59, v59[8], v59[9]);
                  if (v174 == 6)
                  {

                    v157 = &unk_1EC4BFDF0;
                    v158 = &unk_1CFA054F0;
                    v159 = v106;
                    goto LABEL_93;
                  }
                }

                else
                {
                  v218 = *(v59 + 2);
                  v219 = *(v59 + 12);

                  sub_1CF47FDFC(v218, v219);
                  sub_1CEFD0994(*v59, v59[8], v59[9]);
                }
              }

              else
              {

                sub_1CEFCCC44(v59, &qword_1EC4BE710, &qword_1CF9FE5A8);
              }
            }

            v220 = sub_1CEFCCC44(v106, &qword_1EC4C01F0, &qword_1CFA05700);
            v221 = (*(*v90 + 264))(v220);
            v77 = sub_1CF9615C8(sub_1CF193328, 0);

            return v77 & 1;
          }

LABEL_443:
          v77 = 1;
          return v77 & 1;
        }

LABEL_49:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA18, &unk_1CFA05680);
        v118 = v393;
        v119 = swift_dynamicCastClass();
        if (v119 && v69 == 2048)
        {
          v120 = v119;
          v121 = v326;
          sub_1CEFCCBDC(v335, v326, &unk_1EC4BFDF0, &unk_1CFA054F0);
          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
          v123 = (*(*(v122 - 8) + 48))(v121, 1, v122);
          v124 = v324;
          if (v123 == 1)
          {
LABEL_446:
            sub_1CEFCCC44(v121, &unk_1EC4BFDF0, &unk_1CFA054F0);
            return 0;
          }

          sub_1CEFCCBDC(v121, v324, &unk_1EC4BFDF0, &unk_1CFA054F0);
          v125 = swift_getEnumCaseMultiPayload();
          if (v125 == 48)
          {
LABEL_442:
            sub_1CEFCCC44(v121, &unk_1EC4BFDF0, &unk_1CFA054F0);
            goto LABEL_443;
          }

          if (v125 != 20)
          {
            sub_1CEFCCC44(v124, &qword_1EC4BE710, &qword_1CF9FE5A8);
            goto LABEL_446;
          }

          v126 = *v124;
          v127 = *(v124 + 3);

          if (v124[17])
          {

            sub_1CEFD0994(*(v124 + 1), v124[16], v124[17]);
            goto LABEL_446;
          }

          v222 = *v120;
          if (qword_1CFA05BE8[sub_1CF388E8C()] == qword_1CFA05BE8[v126])
          {
            v223 = *(v124 + 1);
            v224 = v124[16];
            v225 = v120;
            v226 = v120[18];
            v227 = *(v225 + 152);
            if (!v227)
            {

              if (v224 || v226 != v223)
              {
                goto LABEL_446;
              }

              goto LABEL_442;
            }

            if (v227 == 1)
            {

              if (v224 != 1 || v226 != v223)
              {
                goto LABEL_446;
              }

              goto LABEL_442;
            }

            if (v226)
            {
              if (v224 != 2 || v223 != 1)
              {
                goto LABEL_445;
              }
            }

            else if (v224 != 2 || v223)
            {
              goto LABEL_445;
            }

            goto LABEL_442;
          }

LABEL_445:

          goto LABEL_446;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00E0, &qword_1CF9FACC8);
        v137 = swift_dynamicCastClass();
        if (v137 && v69 == 2048)
        {
          v138 = v137;
          v139 = v320;
          sub_1CEFCCBDC(v335, v320, &unk_1EC4BFDF0, &unk_1CFA054F0);
          v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
          v141 = (*(*(v140 - 8) + 48))(v139, 1, v140);
          v142 = v319;
          if (v141 == 1)
          {
LABEL_466:
            v184 = &unk_1EC4BFDF0;
            v185 = &unk_1CFA054F0;
            v186 = v139;
            goto LABEL_367;
          }

          sub_1CEFCCBDC(v139, v319, &unk_1EC4BFDF0, &unk_1CFA054F0);
          v143 = swift_getEnumCaseMultiPayload();
          if (v143 != 48)
          {
            if (v143 != 20)
            {
              sub_1CEFCCC44(v142, &qword_1EC4BE710, &qword_1CF9FE5A8);
              goto LABEL_466;
            }

            v144 = *v142;
            v145 = *(v142 + 3);

            if (v142[17])
            {

              sub_1CEFD0994(*(v142 + 1), v142[16], v142[17]);
              goto LABEL_466;
            }

            v256 = *v138;
            if (qword_1CFA05BE8[sub_1CF388E8C()] != qword_1CFA05BE8[v144])
            {
LABEL_465:

              goto LABEL_466;
            }

            v257 = *(v142 + 1);
            v258 = v142[16];
            v259 = v138;
            v260 = v138[18];
            v261 = *(v259 + 152);
            if (v261)
            {
              if (v261 == 1)
              {

                if (v258 != 1)
                {
                  goto LABEL_466;
                }

                goto LABEL_302;
              }

              if (v260)
              {
                if (v258 != 2 || v257 != 1)
                {
                  goto LABEL_465;
                }
              }

              else if (v258 != 2 || v257)
              {
                goto LABEL_465;
              }

              goto LABEL_464;
            }

            if (v258)
            {
              goto LABEL_466;
            }

LABEL_418:
            if (v260 != v257)
            {
              goto LABEL_466;
            }
          }

LABEL_464:
          v157 = &unk_1EC4BFDF0;
          v158 = &unk_1CFA054F0;
          v159 = v139;
          goto LABEL_93;
        }

        v165 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA00, &qword_1CF9FADC8);
        v166 = swift_dynamicCastClass();
        v167 = v337;
        if (v166)
        {
          if (v165 < 0x20000)
          {
            if (v165 < 0x2000)
            {
              if (v165 != 1)
              {
                if (v165 == 2048)
                {
                  v168 = v166;
                  v139 = v314;
                  sub_1CEFCCBDC(v335, v314, &unk_1EC4BFDF0, &unk_1CFA054F0);
                  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
                  if ((*(*(v169 - 8) + 48))(v139, 1, v169) == 1)
                  {
                    goto LABEL_466;
                  }

                  sub_1CEFCCBDC(v139, v313, &unk_1EC4BFDF0, &unk_1CFA054F0);
                  v170 = swift_getEnumCaseMultiPayload();
                  if (v170 == 48)
                  {
                    goto LABEL_464;
                  }

                  if (v170 != 20)
                  {
                    sub_1CEFCCC44(v313, &qword_1EC4BE710, &qword_1CF9FE5A8);
                    goto LABEL_466;
                  }

                  v171 = v313;
                  v172 = *v313;
                  v173 = *(v313 + 3);

                  if (v171[17])
                  {

                    sub_1CEFD0994(*(v313 + 1), v313[16], v313[17]);
                    goto LABEL_466;
                  }

                  v297 = *v168;
                  if (qword_1CFA05BE8[sub_1CF388E8C()] == qword_1CFA05BE8[v172])
                  {
                    v257 = *(v313 + 1);
                    v298 = v313[16];
                    v299 = v168;
                    v260 = v168[18];
                    v300 = *(v299 + 152);
                    if (!v300)
                    {

                      v139 = v314;
                      if (v298)
                      {
                        goto LABEL_466;
                      }

                      goto LABEL_418;
                    }

                    if (v300 == 1)
                    {

                      v139 = v314;
                      if (v298 != 1)
                      {
                        goto LABEL_466;
                      }

LABEL_302:
                      if (v260 != v257)
                      {
                        goto LABEL_466;
                      }

                      goto LABEL_464;
                    }

                    if (v260)
                    {
                      if (v298 != 2 || v257 != 1)
                      {
                        goto LABEL_490;
                      }
                    }

                    else if (v298 != 2 || v257)
                    {
                      goto LABEL_490;
                    }

                    v139 = v314;
                    goto LABEL_464;
                  }

LABEL_490:

                  v139 = v314;
                  goto LABEL_466;
                }

                goto LABEL_262;
              }

              goto LABEL_250;
            }

            if (v165 == 0x2000)
            {
              goto LABEL_243;
            }

            goto LABEL_240;
          }
        }

        else if (v165 < 0x20000)
        {
          if (v165 == 1)
          {
LABEL_250:
            v231 = v315;
            sub_1CEFCCBDC(v335, v315, &unk_1EC4BFDF0, &unk_1CFA054F0);
            v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
            if ((*(*(v238 - 8) + 48))(v231, 1, v238) != 1)
            {
              v77 = swift_getEnumCaseMultiPayload() == 45;
              sub_1CEFCCC44(v231, &qword_1EC4BE710, &qword_1CF9FE5A8);
              return v77 & 1;
            }

            goto LABEL_261;
          }

          if (v165 == 0x2000)
          {
LABEL_243:
            if (((*(*v90 + 152))() & 0x80) == 0)
            {
              goto LABEL_94;
            }

            v231 = v312;
            sub_1CEFCCBDC(v335, v312, &unk_1EC4BFDF0, &unk_1CFA054F0);
            v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
            if ((*(*(v232 - 8) + 48))(v231, 1, v232) != 1)
            {
              v233 = v311;
              sub_1CEFCCBDC(v231, v311, &unk_1EC4BFDF0, &unk_1CFA054F0);
              v234 = swift_getEnumCaseMultiPayload();
              sub_1CEFCCC44(v233, &qword_1EC4BE710, &qword_1CF9FE5A8);
              if (v234 == 28)
              {
                v157 = &unk_1EC4BFDF0;
                v158 = &unk_1CFA054F0;
                v159 = v231;
                goto LABEL_93;
              }
            }

            goto LABEL_261;
          }

LABEL_240:
          if (v165 == 0x10000)
          {
            v228 = *(**(v90[4] + 16) + 848);

            v230 = v228(v229);

            v77 = v230 ^ 1;
            return v77 & 1;
          }

LABEL_262:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD960, &qword_1CF9FAC80);
          v241 = swift_dynamicCastClass();
          if (v241)
          {
            if (v165 != 0x2000000)
            {
              if (v165 != 0x1000000)
              {
                if (v165 == 0x800000)
                {
                  v242 = v241;
                  v243 = v310;
                  sub_1CEFCCBDC(v335, v310, &unk_1EC4BFDF0, &unk_1CFA054F0);
                  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
                  if ((*(*(v244 - 8) + 48))(v243, 1, v244) == 1)
                  {
                    v245 = &unk_1EC4BFDF0;
                    v246 = &unk_1CFA054F0;
                  }

                  else
                  {
                    if (swift_getEnumCaseMultiPayload() == 38)
                    {
                      v284 = *(v243 + 10);
                      v285 = *v243;
                      v286 = *(v243 + 8);
                      v287 = *(v243 + 9);
                      v288 = *v242;
                      if (qword_1CFA05BE8[sub_1CF388E8C()] == qword_1CFA05BE8[v284])
                      {
                        v289 = sub_1CF7BC790(*(v242 + 144), *(v242 + 152), v285, v286 | (v287 << 8));
                        sub_1CEFD0994(v285, v286, v287);
                        if (v289)
                        {
                          goto LABEL_94;
                        }
                      }

                      else
                      {
                        sub_1CEFD0994(v285, v286, v287);
                      }

                      return 0;
                    }

                    v245 = &qword_1EC4BE710;
                    v246 = &qword_1CF9FE5A8;
                  }

                  sub_1CEFCCC44(v243, v245, v246);
                  return 0;
                }

LABEL_491:
                *&v344[0] = 0;
                *(&v344[0] + 1) = 0xE000000000000000;
                sub_1CF9E7948();
                MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA45B90);
                sub_1CF961388();
                result = sub_1CF9E7B68();
                __break(1u);
                return result;
              }

LABEL_381:
              if (qword_1EDEA5A98 != -1)
              {
                swift_once();
              }

              return sub_1CF9615C8(sub_1CF193328, 0) & 1;
            }
          }

          else if (v165 != 0x2000000)
          {
            if (v165 != 0x1000000)
            {
              goto LABEL_491;
            }

            goto LABEL_381;
          }

          v276 = v90[3];
          (*(**(v90[4] + 16) + 96))(v344);
          v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB80, &unk_1CF9FAD90);
          result = (*(*v276 + 328))(v344, v277, 0, &v345, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v167)
          {
            return result;
          }

LABEL_48:
          v77 = result ^ 1;
          return v77 & 1;
        }

        if (v165 >= 0x200000)
        {
          if (v165 == 0x200000)
          {
            if (*(v118 + 136) == 0x8000)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
              if (swift_dynamicCastClass())
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
                if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60), swift_dynamicCastClass()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA58, &unk_1CFA05640), swift_dynamicCastClass()))
                {
                  v239 = qword_1EDEACC50;

                  if (v239 != -1)
                  {
                    swift_once();
                  }

                  v77 = sub_1CF9615C8(sub_1CF193328, 0);

                  return v77 & 1;
                }
              }
            }

            goto LABEL_94;
          }

          if (v165 == 0x400000)
          {
            LOBYTE(result) = (*(*v90 + 256))();
            goto LABEL_48;
          }

          goto LABEL_262;
        }

        if (v165 != 0x20000)
        {
          if (v165 == 0x80000)
          {
            LOBYTE(result) = (*(*v90 + 160))();
            goto LABEL_48;
          }

          goto LABEL_262;
        }

        v231 = v316;
        sub_1CEFCCBDC(v335, v316, &unk_1EC4BFDF0, &unk_1CFA054F0);
        v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
        if ((*(*(v240 - 8) + 48))(v231, 1, v240) != 1)
        {
          if (swift_getEnumCaseMultiPayload() == 24)
          {
            goto LABEL_94;
          }

          v184 = &qword_1EC4BE710;
          v185 = &qword_1CF9FE5A8;
          v186 = v231;
LABEL_367:
          sub_1CEFCCC44(v186, v184, v185);
          return 0;
        }

LABEL_261:
        v184 = &unk_1EC4BFDF0;
        v185 = &unk_1CFA054F0;
        v186 = v231;
        goto LABEL_367;
      }

      if (v69 != 256)
      {
        if (v69 != 0x40000)
        {
          goto LABEL_49;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (v69 == 0x40000)
      {
LABEL_32:
        if (!*(v393 + 112) && (*(v393 + 97) & 1) == 0)
        {
          goto LABEL_443;
        }

        sub_1CEFCCBDC(v335, v50, &unk_1EC4BFDF0, &unk_1CFA054F0);
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
        v109 = (*(*(v108 - 8) + 48))(v50, 1, v108);
        v110 = v337;
        if (v109 != 1)
        {
          sub_1CEFCCBDC(v50, v47, &unk_1EC4BFDF0, &unk_1CFA054F0);
          if (swift_getEnumCaseMultiPayload() != 14)
          {
            sub_1CEFCCC44(v47, &qword_1EC4BE710, &qword_1CF9FE5A8);
LABEL_126:
            v184 = &unk_1EC4BFDF0;
            v185 = &unk_1CFA054F0;
            v186 = v50;
            goto LABEL_367;
          }

          v146 = *v47;
          v147 = v47[9];
          v148 = v47[10];
          v149 = v47[8];
          v150 = sub_1CF39C138(v393);
          LOBYTE(v148) = sub_1CF384598(v146, v149 | (v148 << 16) | (v147 << 8), v150);

          sub_1CEFD0994(v146, v149, v147);
          if ((v148 & 1) == 0)
          {
            goto LABEL_126;
          }
        }

        sub_1CEFCCC44(v50, &unk_1EC4BFDF0, &unk_1CFA054F0);
        v111 = v90[3];
        v112 = v393;
        v113 = 1;
        goto LABEL_47;
      }

      if (v69 != 256)
      {
        goto LABEL_26;
      }
    }

    if (((*(*v338 + 152))() & 0x100) != 0)
    {
      goto LABEL_443;
    }

    sub_1CEFCCBDC(v335, v56, &unk_1EC4BFDF0, &unk_1CFA054F0);
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
    v116 = (*(*(v115 - 8) + 48))(v56, 1, v115);
    v110 = v337;
    if (v116 == 1)
    {
LABEL_46:
      sub_1CEFCCC44(v56, &unk_1EC4BFDF0, &unk_1CFA054F0);
      v117 = v90[3];
      v112 = v393;
      v113 = 0;
LABEL_47:
      result = sub_1CF3F1098(v112, v113, v331, v332);
      if (v110)
      {
        return result;
      }

      goto LABEL_48;
    }

    sub_1CEFCCBDC(v56, v53, &unk_1EC4BFDF0, &unk_1CFA054F0);
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      v177 = *v53;
      v178 = v53[9];
      v179 = v53[10];
      v180 = v53[8];
      v181 = sub_1CF39C138(v393);
      v182 = v180 | (v179 << 16);
      v90 = v338;
      v183 = sub_1CF384598(v177, v182 | (v178 << 8), v181);

      sub_1CEFD0994(v177, v180, v178);
      if (v183)
      {
        goto LABEL_46;
      }
    }

    else
    {
      sub_1CEFCCC44(v53, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }

    v184 = &unk_1EC4BFDF0;
    v185 = &unk_1CFA054F0;
    goto LABEL_157;
  }

  v71 = *(v338 + 32);
  v72 = *(v70 + 152);
  *&v344[0] = *(v70 + 144);
  BYTE8(v344[0]) = v72;
  v73 = *(*v71 + 384);

  v74 = v337;
  v75 = v73(v344, 1, &v345, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

  if (!v74)
  {
    v77 = v75 ^ 1;
    return v77 & 1;
  }

  return result;
}

uint64_t sub_1CF443664(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8)
{
  v10 = a4;
  v11 = a3;
  if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0;
      if (a6 != 1 || a1 != a5)
      {
        return v12 & 1;
      }

LABEL_15:
      v13 = sub_1CEFE7394(a3, a4);
      if (v14)
      {
        if (v13 == 12565487 && v14 == 0xA300000000000000)
        {

LABEL_20:
          v16 = sub_1CF9E69E8();
          v17 = sub_1CF025150(v16, v11, v10);
          v11 = MEMORY[0x1D3868C10](v17);
          v10 = v18;

          goto LABEL_22;
        }

        v15 = sub_1CF9E8048();

        if (v15)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v19 = sub_1CEFE7394(a7, a8);
      if (v20)
      {
        if (v19 == 12565487 && v20 == 0xA300000000000000)
        {

          goto LABEL_27;
        }

        v21 = sub_1CF9E8048();

        if (v21)
        {
LABEL_27:
          v22 = sub_1CF9E69E8();
          v23 = sub_1CF025150(v22, a7, a8);
          v24 = MEMORY[0x1D3868C10](v23);
          a8 = v25;

          if (v11 != v24)
          {
            goto LABEL_32;
          }

LABEL_30:
          if (v10 == a8)
          {
            v12 = 1;
LABEL_33:

            return v12 & 1;
          }

LABEL_32:
          v12 = sub_1CF9E8048();
          goto LABEL_33;
        }
      }

      if (v11 != a7)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v12 = 0;
    if (a1)
    {
      if (a6 == 2 && a5 == 1)
      {
        goto LABEL_15;
      }
    }

    else if (a6 == 2 && !a5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = 0;
    if (!a6 && a1 == a5)
    {
      goto LABEL_15;
    }
  }

  return v12 & 1;
}

uint64_t sub_1CF44389C(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v123 = v2;
  v118 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v115 = v11;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v12 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v114 = (&v84 - v13);
  v119 = v7;
  v159 = v7;
  LODWORD(v120) = v5;
  v160 = v5;
  memcpy(v157, v9, sizeof(v157));
  v14 = *(v9 + 1056);
  v15 = *(v9 + 1064);
  v16 = *(v9 + 1072);
  LODWORD(v7) = *(v9 + 1080);
  memcpy(v156, (v9 + 1081), sizeof(v156));
  memcpy(v181, v9, 0x420uLL);
  v181[132] = v14;
  v181[133] = v15;
  v181[134] = v16;
  v184 = v7;
  LOBYTE(v181[135]) = v7;
  memcpy(&v181[135] + 1, (v9 + 1081), 0x20FuLL);
  memcpy(v182, v181, 0x648uLL);
  v17 = sub_1CF480474(v182);
  v116 = v10;
  if (v17 == 1)
  {
    sub_1CEFCCBDC(v9, v155, &qword_1EC4BFC40, &qword_1CFA05380);
    v18 = v123;
  }

  else
  {
    v121 = v16;
    v122 = v15;
    memcpy(v155, v181, sizeof(v155));
    memcpy(v162, v181, sizeof(v162));
    sub_1CEFCCBDC(v9, v154, &qword_1EC4BFC40, &qword_1CFA05380);
    sub_1CEFCCBDC(v181, v154, &qword_1EC4BFC40, &qword_1CFA05380);
    if (sub_1CF44D9C4(v10))
    {
      v117 = v14;
      sub_1CEFCCBDC(&v155[16], v154, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(&v155[536], v154, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCC44(v181, &qword_1EC4BFC40, &qword_1CFA05380);
      memcpy(v158, &v155[536], sizeof(v158));
      v84 = *v155;
      v85 = v155[8];
      v98 = *&v155[528];
      v97 = v155[520];
      v95 = *&v155[488];
      v96 = *&v155[504];
      v94 = *&v155[480];
      v93 = v155[472];
      v111 = *&v155[168];
      v112 = *&v155[160];
      v90 = v155[154];
      v103 = v155[176];
      v104 = v155[153];
      v108 = v155[152];
      v105 = v155[48];
      v99 = *&v155[32];
      v106 = *&v155[16];
      v183 = v155[24];
      v91 = *&v155[456];
      v92 = *&v155[464];
      v100 = *&v155[376];
      v101 = *&v155[368];
      v102 = v155[384];
      v87 = v155[361];
      v88 = v155[362];
      v109 = *&v155[264];
      v110 = *&v155[208];
      v172 = *&v155[200];
      v107 = v155[360];
      v165 = *&v155[88];
      v166 = *&v155[104];
      v167 = *&v155[120];
      v168 = *&v155[136];
      v163 = *&v155[56];
      v164 = *&v155[72];
      v171 = *&v155[184];
      v170 = *&v155[232];
      v169 = *&v155[216];
      v173 = *&v155[296];
      v19 = v155[288];
      v174 = *&v155[312];
      v175 = *&v155[328];
      v176 = *&v155[344];
      v177 = *&v155[392];
      v89 = *&v155[280];
      v178 = *&v155[408];
      v86 = *&v155[248];
      v179 = *&v155[424];
      v180 = *&v155[440];
      goto LABEL_27;
    }

    sub_1CEFCCC44(v181, &qword_1EC4BFC40, &qword_1CFA05380);
    v15 = v122;
    v18 = v123;
    v16 = v121;
  }

  memcpy(v154, v157, 0x420uLL);
  v154[132] = v14;
  v154[133] = v15;
  v154[134] = v16;
  LOBYTE(v154[135]) = v184;
  memcpy(&v154[135] + 1, v156, 0x20FuLL);
  memcpy(v155, v154, sizeof(v155));
  v20 = sub_1CF480474(v155);
  v21 = v118;
  if (v20 == 1)
  {
    v121 = v16;
    v122 = v15;
    v117 = v14;
  }

  else
  {
    memcpy(v161, v154, sizeof(v161));
    memcpy(v146, v154, sizeof(v146));
    sub_1CEFCCBDC(v146, v136, &qword_1EC4BFC48, &qword_1CFA05388);
    sub_1CF3F7B80(v161);
    if (v18)
    {
      sub_1CEFCCC44(v154, &qword_1EC4BFC40, &qword_1CFA05380);
LABEL_37:
      memcpy(v155, v157, 0x420uLL);
      *&v155[1056] = v14;
      *&v155[1064] = v15;
      *&v155[1072] = v16;
      v155[1080] = v184;
      memcpy(&v155[1081], v156, 0x20FuLL);
      v45 = v155;
      return sub_1CEFCCC44(v45, &qword_1EC4BFC40, &qword_1CFA05380);
    }

    sub_1CEFCCC44(v154, &qword_1EC4BFC40, &qword_1CFA05380);
    memcpy(v129, v157, sizeof(v129));
    v130 = v14;
    v131 = v15;
    v132 = v16;
    v133 = v184;
    memcpy(v134, v156, sizeof(v134));
    v18 = 0;
    sub_1CEFCCC44(v129, &qword_1EC4BFC40, &qword_1CFA05380);
    sub_1CF48043C(v136);
    memcpy(v157, v136, sizeof(v157));
    v117 = v137;
    v121 = v139;
    v122 = v138;
    v184 = v140;
    memcpy(v156, v141, sizeof(v156));
  }

  sub_1CF44DD2C(v150);
  v22 = *v150;
  v23 = v150[8];
  v24 = v150[9];
  *v148 = *v150;
  v148[8] = v150[8];
  v148[9] = v150[9];
  *&v149[0] = v119;
  BYTE8(v149[0]) = v120;
  v25 = *(*v21 + 168);
  v25(v146, v148, 1, v149, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v18)
  {
    sub_1CEFD0994(v22, v23, v24);
LABEL_36:
    v14 = v117;
    v16 = v121;
    v15 = v122;
    goto LABEL_37;
  }

  v112 = v25;
  v123 = 0;
  memcpy(v136, v146, 0x210uLL);
  v26 = sub_1CF08B99C(v136);
  if (v26 == 1)
  {
    memcpy(v129, v146, 0x210uLL);
    sub_1CEFCCC44(v129, &unk_1EC4BFD20, &unk_1CFA05440);
    sub_1CF445058(*v148, v148[8] | (v148[9] << 8), v153);
    v27 = 0;
  }

  else
  {
    memcpy(v153, v146, sizeof(v153));
    v27 = v146[65];
  }

  sub_1CEFD0994(v22, v23, v24);
  memcpy(v158, v153, sizeof(v158));
  if (v26 == 1)
  {
    v28 = *(v116 + 16);
    v29 = *(v116 + 115);
    if (v29 == 1)
    {
      *v147 = *(v116 + 16);
      *&v147[8] = 256;
      v126 = v119;
      v127 = v120;
      sub_1CEFCCBDC(v116, v125, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v30 = v123;
      (v112)(v129, v147, 1, &v126, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v123 = v30;
      if (v30)
      {

        memcpy(v125, v153, 0x208uLL);
LABEL_35:
        sub_1CEFCCC44(v125, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        goto LABEL_36;
      }

      memcpy(v125, v129, sizeof(v125));
      v31 = sub_1CF08B99C(v125);
      v85 = v31 == 1;
      if (v31 == 1)
      {
        memcpy(v124, v129, sizeof(v124));
        sub_1CEFCCC44(v124, &unk_1EC4BFD20, &unk_1CFA05440);
        sub_1CF445058(*v147, v147[8] | (v147[9] << 8), v135);

        v84 = 0;
      }

      else
      {

        memcpy(v135, v129, sizeof(v135));
        v84 = *(&v129[32] + 1);
      }

      memcpy(v124, v153, 0x208uLL);
      sub_1CEFCCC44(v124, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      memcpy(v158, v135, sizeof(v158));
    }

    else
    {
      v84 = v27;
      v129[0] = *v116;
      *&v129[1] = v28;
      *(&v129[3] + 8) = *(v116 + 56);
      *(&v129[4] + 8) = *(v116 + 72);
      *(&v129[5] + 8) = *(v116 + 88);
      *(&v129[6] + 3) = *(v116 + 99);
      *(&v129[1] + 8) = *(v116 + 24);
      *(&v129[2] + 8) = *(v116 + 40);
      BYTE3(v129[7]) = v29;
      sub_1CEFCCBDC(v116, v125, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFCCC44(v129, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v85 = 1;
    }
  }

  else
  {
    v84 = v27;
    v85 = 0;
  }

  memcpy(v129, v158, 0x208uLL);
  v98 = *&v129[32];
  v97 = BYTE8(v129[31]);
  v95 = *(&v129[29] + 8);
  v96 = *(&v129[30] + 8);
  v94 = *&v129[29];
  v93 = BYTE8(v129[28]);
  v111 = *(&v129[9] + 1);
  v112 = *&v129[9];
  v90 = BYTE10(v129[8]);
  v103 = LOBYTE(v129[10]);
  v104 = BYTE9(v129[8]);
  v108 = BYTE8(v129[8]);
  v105 = LOBYTE(v129[2]);
  v99 = v129[1];
  v106 = *&v129[0];
  v183 = BYTE8(v129[0]);
  v91 = *(&v129[27] + 1);
  v92 = *&v129[28];
  v100 = *(&v129[22] + 1);
  v101 = *&v129[22];
  v102 = LOBYTE(v129[23]);
  v87 = BYTE9(v129[21]);
  v88 = BYTE10(v129[21]);
  v107 = BYTE8(v129[21]);
  v19 = v129[17];
  v89 = *(&v129[16] + 1);
  v109 = *(&v129[15] + 8);
  v86 = *(&v129[14] + 8);
  sub_1CEFCCBDC(v129, v125, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v165 = *(&v129[4] + 8);
  v166 = *(&v129[5] + 8);
  v167 = *(&v129[6] + 8);
  v168 = *(&v129[7] + 8);
  v163 = *(&v129[2] + 8);
  v164 = *(&v129[3] + 8);
  v171 = *(&v129[10] + 8);
  v169 = *(&v129[12] + 8);
  v170 = *(&v129[13] + 8);
  v173 = *(&v129[17] + 8);
  v174 = *(&v129[18] + 8);
  v175 = *(&v129[19] + 8);
  v176 = *(&v129[20] + 8);
  v180 = *(&v129[26] + 8);
  v179 = *(&v129[25] + 8);
  v178 = *(&v129[24] + 8);
  v110 = *&v129[12];
  v172 = *(&v129[11] + 1);
  v177 = *(&v129[23] + 8);
LABEL_27:
  memcpy(v155, v157, 0x420uLL);
  memcpy(&v155[1081], v156, 0x20FuLL);
  v32 = v117;
  *&v155[1056] = v117;
  v33 = v121;
  v34 = v122;
  *&v155[1064] = v122;
  *&v155[1072] = v121;
  v35 = v184;
  v155[1080] = v184;
  if (sub_1CF480474(v155) == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = v32;
  }

  v152 = v36;
  memcpy(v154, v157, 0x420uLL);
  memcpy(&v154[135] + 1, v156, 0x20FuLL);
  v154[132] = v32;
  v154[133] = v34;
  v154[134] = v33;
  LOBYTE(v154[135]) = v35;
  if (sub_1CF480474(v154) == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = v34;
  }

  v151 = v37;
  *&v150[23] = v164;
  *&v150[7] = v163;
  *&v150[87] = v168;
  *(&v149[1] + 7) = v172;
  *&v125[8] = *(&v168 + 1);
  *&v148[7] = v173;
  *&v148[23] = v174;
  *&v148[39] = v175;
  *&v148[55] = v176;
  BYTE10(v125[8]) = v90;
  LOBYTE(v125[17]) = v19;
  *(&v125[19] + 1) = *&v148[32];
  *(&v125[20] + 1) = *&v148[48];
  *(&v125[17] + 1) = *v148;
  *(&v125[18] + 1) = *&v148[16];
  *&v125[21] = *(&v176 + 1);
  BYTE9(v125[21]) = v87;
  *&v147[7] = v177;
  *&v147[23] = v178;
  *&v147[39] = v179;
  *&v147[55] = v180;
  BYTE10(v125[21]) = v88;
  *(&v125[25] + 1) = *&v147[32];
  *(&v125[26] + 1) = *&v147[48];
  *(&v125[23] + 1) = *v147;
  *(&v125[24] + 1) = *&v147[16];
  *(v149 + 7) = v171;
  *&v125[27] = *(&v180 + 1);
  *(&v125[27] + 1) = v91;
  *&v125[28] = v92;
  BYTE8(v125[28]) = v93;
  *&v125[29] = v94;
  *(&v125[29] + 8) = v95;
  *(&v125[30] + 8) = v96;
  BYTE8(v125[31]) = v97;
  v38 = v99;
  *&v125[32] = v98;
  *&v150[71] = v167;
  *&v150[55] = v166;
  *&v150[39] = v165;
  *(&v125[13] + 8) = v170;
  *(&v125[12] + 8) = v169;
  *&v125[0] = v106;
  BYTE8(v125[0]) = v183;
  v39 = *(&v99 + 1);
  v125[1] = v99;
  LOBYTE(v125[2]) = v105;
  *(&v125[4] + 1) = *&v150[32];
  *(&v125[3] + 1) = *&v150[16];
  *(&v125[2] + 1) = *v150;
  *(&v125[7] + 1) = *&v150[80];
  *(&v125[6] + 1) = *&v150[64];
  *(&v125[5] + 1) = *&v150[48];
  BYTE8(v125[8]) = v108;
  BYTE9(v125[8]) = v104;
  v40 = v112;
  *&v125[9] = v112;
  *(&v125[9] + 1) = v111;
  LOBYTE(v125[10]) = v103;
  v125[11] = *(v149 + 15);
  *(&v125[10] + 1) = v149[0];
  *&v125[12] = v110;
  *(&v125[15] + 8) = v109;
  *(&v125[14] + 8) = v86;
  v41 = v89;
  *(&v125[16] + 1) = v89;
  BYTE8(v125[21]) = v107;
  *&v125[22] = v101;
  *(&v125[22] + 1) = v100;
  LOBYTE(v125[23]) = v102;
  v42 = v123;
  sub_1CF447FF8(v116, v158, &v152, &v151, v119, v120);
  v123 = v42;
  if (v42)
  {
    memcpy(v146, v158, 0x208uLL);
    sub_1CEFCCC44(v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    goto LABEL_35;
  }

  v47 = v39;
  v112 = v40;
  LODWORD(v98) = v44;
  v120 = v43;
  v48 = v38;
  v49 = v110;
  v50 = v111;
  v51 = sub_1CF44F21C();
  if ((v53 & 1) == 0)
  {
    if (v85)
    {
LABEL_41:
      v158[59] = v51;
      v158[60] = v52;
      goto LABEL_72;
    }

    v54 = v50;
    v55 = v41;
    if (qword_1EDEABDE0 != -1)
    {
      v119 = v51;
      v83 = v52;
      swift_once();
      v55 = v41;
      v54 = v50;
      v51 = v119;
      v52 = v83;
    }

    v56 = qword_1EDEABDE8;
    if (qword_1EDEABDE8)
    {
      if ((qword_1EDEABDE8 & 0x10) != 0)
      {
        if (!(qword_1EDEABDE8 & v47 | v48 & 0x51))
        {
LABEL_51:
          if ((v56 & v55) == 0 && (BYTE8(v109) & 0x51) == 0 && v108 != 1 && v107 != 1 && v105 == 5 && v104 == 6 && (v183 == 255 || !v109 || (v49 & 0xF000000000000000) == 0xB000000000000000 || v107) && (v103 == 3 || v103 == 4 && !(v112 & 0xFFFFFFFFFFFFFFFELL | v54)) && (v102 == 3 || v102 == 4 && !(v101 & 0xFFFFFFFFFFFFFFFELL | v100)))
          {
            goto LABEL_41;
          }
        }

LABEL_67:
        v58 = v158[59];
        if (v51 > v158[59])
        {
          v58 = v51;
        }

        v59 = v158[60];
        if (v52 < v158[60])
        {
          v59 = v52;
        }

        v158[59] = v58;
        v158[60] = v59;
        goto LABEL_72;
      }

      v57 = (qword_1EDEABDE8 | 0x10) & v47;
    }

    else
    {
      v57 = v47 & 0x10;
    }

    if (!(v57 | v48 & 0x51))
    {
      v56 = qword_1EDEABDE8 | 0x10;
      goto LABEL_51;
    }

    goto LABEL_67;
  }

LABEL_72:
  memcpy(v124, v158, 0x208uLL);
  v60 = v151;
  v119 = v152;
  memcpy(v146, v157, 0x420uLL);
  memcpy(&v146[135] + 1, v156, 0x20FuLL);
  v61 = v117;
  v146[132] = v117;
  v62 = v121;
  v63 = v122;
  v146[133] = v122;
  v146[134] = v121;
  v64 = v184;
  LOBYTE(v146[135]) = v184;
  v65 = sub_1CF480474(v146);
  v66 = v65 == 1;
  if (v65 == 1)
  {
    v67 = 0;
  }

  else
  {
    v67 = v62;
  }

  if (v66)
  {
    v68 = -1;
  }

  else
  {
    v68 = v64;
  }

  v69 = v98;
  v111 = sub_1CF079564(v67, v68, v120, v98);
  LODWORD(v112) = v70;
  memcpy(v136, v157, sizeof(v136));
  memcpy(v141, v156, sizeof(v141));
  v137 = v61;
  v138 = v63;
  v139 = v62;
  v140 = v64;
  if (sub_1CF480474(v136) == 1)
  {
    sub_1CF095754(v153);
  }

  else
  {
    memcpy(v129, &v156[7], 0x208uLL);
    sub_1CEFCCBDC(v129, v135, &unk_1EC4BFC20, &unk_1CFA0A290);
    memcpy(v153, v129, sizeof(v153));
  }

  memcpy(&v144[7], v125, 0x208uLL);
  memcpy(v143, v124, sizeof(v143));
  memcpy(&v142[7], v153, 0x208uLL);
  v145 = v85;
  if (v69 == 1)
  {
    sub_1CEFCCBDC(v125, v129, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCBDC(v124, v129, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CF44DD2C(&v126);
    v80 = v123;
    (*(*v118 + 208))(&v126, v120, &v159, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    if (!v80)
    {
      sub_1CEFD0994(v126, v127, v128);
      memcpy(v129, v158, 0x208uLL);
      sub_1CEFCCC44(v129, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCC44(v125, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v74 = v121;
      v73 = v122;
      goto LABEL_93;
    }

    goto LABEL_89;
  }

  if (v69)
  {
    sub_1CEFCCBDC(v125, v129, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCBDC(v124, v129, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v73 = v122;
    v74 = v121;
    goto LABEL_91;
  }

  sub_1CEFCCBDC(v125, v129, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v124, v129, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CF44DD2C(&v126);
  v71 = v123;
  (*(*v118 + 216))(&v126, v120, &v159, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
  if (v71)
  {
LABEL_89:
    sub_1CEFD0994(v126, v127, v128);
    *&v129[0] = v84;
    BYTE8(v129[0]) = v145;
    memcpy(v129 + 9, v144, 0x20FuLL);
    memcpy(&v129[33] + 8, v143, 0x208uLL);
    v130 = v119;
    v131 = v60;
    v132 = v111;
    v133 = v112;
    memcpy(v134, v142, sizeof(v134));
    sub_1CEFCCC44(v129, &qword_1EC4BFC48, &qword_1CFA05388);
    memcpy(v135, v158, sizeof(v135));
    sub_1CEFCCC44(v135, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCC44(v125, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    goto LABEL_36;
  }

  sub_1CEFD0994(v126, v127, v128);
  v72 = v183;
  v74 = v121;
  v73 = v122;
  if (v183 == 255)
  {
    goto LABEL_91;
  }

  v75 = v109;
  if (!v109)
  {
    goto LABEL_91;
  }

  v123 = v60;
  result = swift_weakLoadStrong();
  if (result)
  {
    v76 = result;
    v77 = v114;
    *v114 = v106;
    *(v77 + 8) = v72;
    *(v77 + 16) = v75;
    swift_storeEnumTagMultiPayload();
    v78 = *(*v76 + 312);
    v79 = v75;
    v78(v77);

    sub_1CEFCCC44(v77, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v74 = v121;
    v73 = v122;
    v60 = v123;
LABEL_91:
    memcpy(v129, v158, 0x208uLL);
    sub_1CEFCCC44(v129, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCC44(v125, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
LABEL_93:
    v81 = v145;
    v82 = v115;
    *v115 = v84;
    *(v82 + 8) = v81;
    memcpy(v82 + 9, v144, 0x20FuLL);
    memcpy(v82 + 67, v143, 0x208uLL);
    v82[132] = v119;
    v82[133] = v60;
    v82[134] = v111;
    *(v82 + 1080) = v112;
    memcpy(v82 + 1081, v142, 0x20FuLL);
    memcpy(v129, v157, sizeof(v129));
    v130 = v117;
    v131 = v73;
    v132 = v74;
    v133 = v184;
    memcpy(v134, v156, sizeof(v134));
    v45 = v129;
    return sub_1CEFCCC44(v45, &qword_1EC4BFC40, &qword_1CFA05380);
  }

  __break(1u);
  return result;
}

void *sub_1CF445058@<X0>(void *a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  sub_1CF445254(__src);
  if ((a2 & 0x100) != 0)
  {
    v18 = *&__src[408];
    v19 = *&__src[424];
    v20 = *&__src[440];
    v14 = *&__src[344];
    v15 = *&__src[360];
    v16 = *&__src[376];
    v17 = *&__src[392];
    v8 = *&__src[248];
    v9 = *&__src[264];
    v10 = *&__src[280];
    v11 = *&__src[296];
    v12 = *&__src[312];
    v13 = *&__src[328];
    v6 = a1;
    sub_1CEFCCC44(&v8, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    *&__src[264] = 0;
    __src[272] = 5;
    *&__src[288] = 0;
    *&__src[280] = 0;
    *&__src[296] = 1;
    memset(&__src[304], 0, 41);
    *&__src[345] = 6;
    *&__src[352] = xmmword_1CF9FD920;
    __src[368] = 4;
    memset(&__src[376], 0, 24);
    *&__src[400] = 0xB000000000000000;
    memset(&__src[408], 0, 48);
    *&__src[248] = a1;
    *&__src[256] = 0;
  }

  else
  {
    v20 = *&__src[192];
    v21 = *&__src[208];
    v22 = *&__src[224];
    v23 = *&__src[240];
    v16 = *&__src[128];
    v17 = *&__src[144];
    v18 = *&__src[160];
    v19 = *&__src[176];
    v12 = *&__src[64];
    v13 = *&__src[80];
    v14 = *&__src[96];
    v15 = *&__src[112];
    v8 = *__src;
    v9 = *&__src[16];
    v10 = *&__src[32];
    v11 = *&__src[48];
    sub_1CEFCCC44(&v8, &unk_1EC4BFE00, &unk_1CF9FEF00);
    *&__src[16] = 0;
    *&__src[24] = 0;
    __src[32] = 5;
    memset(&__src[40], 0, 97);
    *&__src[137] = 6;
    *&__src[144] = xmmword_1CF9FD920;
    __src[160] = 4;
    memset(&__src[168], 0, 24);
    *&__src[192] = 0xB000000000000000;
    memset(&__src[200], 0, 48);
    *__src = a1;
    __src[8] = a2;
  }

  return memcpy(a3, __src, 0x208uLL);
}

uint64_t sub_1CF445254@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 5;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 137) = 6;
  *(a1 + 144) = xmmword_1CF9FD920;
  *(a1 + 160) = 4;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0xB000000000000000;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 272) = 5;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 329) = 0u;
  *(a1 + 345) = 6;
  *(a1 + 352) = xmmword_1CF9FD920;
  *(a1 + 368) = 4;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0xB000000000000000;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 456) = 4;
  *(a1 + 464) = MEMORY[0x1E69E7CC0];
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v8 = v7;
  result = (*(v3 + 8))(v6, v2);
  v10 = v8 * 1000000000.0;
  if (COERCE__INT64(fabs(v8 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v10 < 9.22337204e18)
  {
    *(a1 + 472) = 0x2000000000000000;
    *(a1 + 480) = v10;
    *(a1 + 512) = 0;
    *(a1 + 488) = 0;
    *(a1 + 496) = 0;
    *(a1 + 504) = 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CF445458(unsigned __int8 *a1, uint64_t a2, void *a3, char a4, void *a5, int a6, uint64_t a7, int a8, void *a9)
{
  v186 = a2;
  LODWORD(v182) = a8;
  v179 = a7;
  LODWORD(v184) = a6;
  v183 = a5;
  v181 = a9;
  v12 = sub_1CF9E6118();
  v180 = *(v12 - 8);
  v13 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v178.i8[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8) - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v178.i8[-v18];
  v20 = *a1;
  v21 = *(a1 + 1);
  v22 = v21 | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v24 = *(a1 + 1);
  v23 = *(a1 + 2);
  v25 = *(a1 + 3);
  v27 = *(a1 + 2);
  v26 = *(a1 + 3);
  v28 = a1[64];
  v29 = a1[65];
  v30 = a1[66];
  v31 = v20 | (v22 << 8);
  switch(v30)
  {
    case 1:
      v61 = v186;
      if (!*v186)
      {
        sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 518);
      }

      v62 = *(v186 + 8);
      *(v186 + 16) &= ~v31;
      if (v62)
      {
        *(v61 + 8) = v62 & 0xFFFFFFFFFFFFFFFELL;
      }

      goto LABEL_49;
    case 2:
      v55 = v186;
      if ((*(v186 + 8) & 9) == 1)
      {
        goto LABEL_81;
      }

      v56 = *(v186 + 8) & 0xFFFFFFFFFFFFFFF6 | 1;
      goto LABEL_80;
    case 3:
      if (!*v186)
      {
        sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 574);
      }

      v59 = *(v186 + 8);
      if (v20)
      {
        if ((v59 & 2) == 0)
        {
          *(v186 + 8) = v59 | 2;
        }
      }

      else if ((v59 & 0x22) != 0)
      {
        *(v186 + 8) = v59 & 0xFFFFFFFFFFFFFFDDLL;
      }

      goto LABEL_93;
    case 4:
      v49 = v186;
      if (!*v186)
      {
        sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 593);
      }

      v50 = *(v186 + 8);
      if (v20)
      {
        if ((v50 & 4) != 0)
        {
          goto LABEL_93;
        }

        v51 = v50 | 4;
      }

      else
      {
        if ((v50 & 4) == 0)
        {
          goto LABEL_93;
        }

        v51 = v50 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_92;
    case 5:
      v49 = v186;
      if (!*v186)
      {
        sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 602);
      }

      v63 = *(v186 + 8);
      if (v20)
      {
        if ((v63 & 0x10) != 0)
        {
          goto LABEL_93;
        }

        v51 = v63 | 0x10;
      }

      else
      {
        if ((v63 & 0x30) == 0)
        {
          goto LABEL_93;
        }

        v51 = v63 & 0xFFFFFFFFFFFFFFCFLL;
      }

      goto LABEL_92;
    case 6:
      v49 = v186;
      v67 = *(v186 + 8);
      if (v20)
      {
        if ((v67 & 0x20) != 0)
        {
          goto LABEL_93;
        }

        v51 = v67 | 0x20;
      }

      else
      {
        if ((v67 & 0x20) == 0)
        {
          goto LABEL_93;
        }

        v51 = v67 & 0xFFFFFFFFFFFFFFDFLL;
      }

      goto LABEL_92;
    case 7:
      v49 = v186;
      v60 = *(v186 + 8);
      if (v20)
      {
        if ((v60 & 0x40) != 0)
        {
          goto LABEL_93;
        }

        v51 = v60 | 0x40;
      }

      else
      {
        if ((v60 & 0x40) == 0)
        {
          goto LABEL_93;
        }

        v51 = v60 & 0xFFFFFFFFFFFFFFBFLL;
      }

LABEL_92:
      *(v49 + 8) = v51;
      goto LABEL_93;
    case 8:
      v199.i8[0] = v20;
      *(v199.i32 + 1) = v22;
      v199.i8[7] = BYTE6(v22);
      *(&v199.i16[2] + 1) = WORD2(v22);
      v199.i64[1] = v24;
      v200.i64[0] = v23;
      v200.i64[1] = v25;
      v201 = v27;
      *v202 = v26;
      v69 = v186;
      if (!*v186)
      {
        sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 557);
      }

      v70 = v29;
      v178 = v27;
      v184 = v25;
      v185 = v24;
      if (*(v186 + 48) == 1)
      {
        v71 = v199.i64[0];
        v72 = v17;
        v73 = objc_opt_self();
        sub_1CEFCCBDC(v72, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
        v74 = [v73 beforeFirstSyncComponent];
        v75 = sub_1CF9E5B88();
        v77 = v76;

        v187.i64[0] = v75;
        v187.i64[1] = v77;
        v204.i64[1] = MEMORY[0x1E6969080];
        v205.i64[0] = MEMORY[0x1E6969078];
        v78 = v185;
        v203.i64[0] = v71;
        v203.i64[1] = v185;
        v79 = __swift_project_boxed_opaque_existential_1(&v203, MEMORY[0x1E6969080]);
        v81 = *v79;
        v80 = v79[1];
        sub_1CEFE42D4(v75, v77);
        sub_1CEFE42D4(v71, v78);
        sub_1CF3283DC(v81, v80);
        sub_1CEFE4714(v75, v77);
        __swift_destroy_boxed_opaque_existential_1(v203.i64);
        v182 = v187.i64[1];
        v183 = v187.i64[0];
        v82 = [v73 beforeFirstSyncComponent];
        v83 = sub_1CF9E5B88();
        v85 = v84;

        v187.i64[0] = v83;
        v187.i64[1] = v85;
        v204.i64[1] = MEMORY[0x1E6969080];
        v205.i64[0] = MEMORY[0x1E6969078];
        v86 = v184;
        v203.i64[0] = v184;
        v87 = v178.i64[0];
        v203.i64[1] = v178.i64[0];
        v88 = __swift_project_boxed_opaque_existential_1(&v203, MEMORY[0x1E6969080]);
        v89 = *v88;
        v90 = v88[1];
        sub_1CEFE42D4(v83, v85);
        sub_1CEFE42D4(v86, v87);
        v91 = v89;
        v69 = v186;
        sub_1CF3283DC(v91, v90);
        sub_1CEFE4714(v83, v85);
        __swift_destroy_boxed_opaque_existential_1(v203.i64);
        v92 = v187;
        v93 = *(v69 + 48);
        v203 = *(v69 + 32);
        v204 = v93;
        v94 = *(v69 + 80);
        v205 = *(v69 + 64);
        *v206 = v94;
        sub_1CEFCCC44(&v203, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        v95 = v182;
        *(v69 + 32) = v183;
        *(v69 + 40) = v95;
        *(v69 + 48) = 0;
        *(v69 + 56) = v92;
        *(v69 + 72) = 0;
        *(v69 + 80) = 0;
        *(v69 + 88) = 0;
      }

      else
      {
        sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
      }

      v99 = v178.i64[0];
      v100 = v70;
      if ((v28 & 1) != 0 && *(v69 + 48) != 1)
      {
        v101 = v199.i64[0];
        v102 = *(v69 + 32);
        v103 = *(v69 + 40);
        v104 = v185;
        sub_1CEFE42D4(v199.i64[0], v185);
        sub_1CEFE4714(v102, v103);
        v100 = v70;
        v99 = v178.i64[0];
        *(v69 + 32) = v101;
        *(v69 + 40) = v104;
      }

      if ((v100 & 1) == 0 || *(v69 + 48) == 1)
      {
        v105 = &unk_1EC4BF250;
        v106 = &unk_1CFA01B50;
        v107 = &v199;
        goto LABEL_101;
      }

      v120 = *(v69 + 56);
      v121 = *(v69 + 64);
      v122 = v184;
      sub_1CEFE42D4(v184, v99);
      sub_1CEFE4714(v120, v121);
      sub_1CEFCCC44(&v199, &unk_1EC4BF250, &unk_1CFA01B50);
      *(v69 + 56) = v122;
      *(v69 + 64) = v178.i64[0];
      return 0;
    case 9:
      v53 = v186;
      v54 = *(v186 + 192);
      sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);

      result = 0;
      *(v53 + 192) = v31;
      return result;
    case 10:
      v68 = *(v186 + 96);
      if (v68 > 1)
      {
        if (v68 == 2)
        {
          if (!v20)
          {
            goto LABEL_118;
          }

          if (v20 != 1)
          {
            if (v20 != 3)
            {
              goto LABEL_141;
            }

            goto LABEL_118;
          }

          if (a4 == 1 || a4 == 4)
          {
            goto LABEL_141;
          }
        }

        else
        {
          if (v68 == 3)
          {
            if (v20 >= 3)
            {
              goto LABEL_141;
            }

LABEL_118:
            v123 = v186;
            *(v186 + 96) = v20;
            if (!v20)
            {
              v124 = v19;
              v133 = v123[9];
              v199 = v123[8];
              v200 = v133;
              v134 = v123[11];
              v201 = v123[10];
              *v202 = v134;
              v191 = v199;
              *&v192 = v123[9].i64[0];
              v135 = v133.i64[1];
              v187 = v201;
              v188 = v134;
              if (v133.i64[1] >> 60 != 11)
              {
                v136 = v17;
                Strong = swift_weakLoadStrong();
                if (Strong)
                {
                  v138 = Strong;
                  *v124 = v191;
                  *(v124 + 16) = v192;
                  *(v124 + 24) = v135;
                  v139 = v188;
                  *(v124 + 32) = v187;
                  *(v124 + 48) = v139;
                  swift_storeEnumTagMultiPayload();
                  v180 = *v138 + 312;
                  v178.i64[0] = *v180;
                  sub_1CEFCCBDC(&v199, &v203, &unk_1EC4BF260, &unk_1CFA01B60);
                  sub_1CEFCCBDC(v136, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
                  sub_1CEFCCBDC(&v199, &v203, &unk_1EC4BF260, &unk_1CFA01B60);
                  (v178.i64[0])(v124);

                  v123 = v186;
                  sub_1CEFCCC44(&v199, &unk_1EC4BF260, &unk_1CFA01B60);
                  sub_1CEFCCC44(v124, &qword_1EC4BE710, &qword_1CF9FE5A8);
                }

                else
                {
                  sub_1CEFCCBDC(v136, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
                }

                v167 = v123[9];
                v203 = v123[8];
                v204 = v167;
                v168 = v123[11];
                v205 = v123[10];
                *v206 = v168;
                sub_1CEFCCC44(&v203, &unk_1EC4BF260, &unk_1CFA01B60);
                v123[8].i64[0] = 0;
                v123[8].i64[1] = 0;
                v123[9].i64[0] = 0;
                v123[9].i64[1] = 0xB000000000000000;
                v123[10] = 0u;
                v123[11] = 0u;
                v125 = v184;
                if ((v184 & 0x100) != 0)
                {
LABEL_121:
                  if (v182 != 0xFF)
                  {
                    result = swift_weakLoadStrong();
                    if (!result)
                    {
                      return result;
                    }

                    v126 = result;
                    v127 = v183;
                    *v124 = v183;
                    *(v124 + 8) = v125;
                    *(v124 + 9) = 1;
                    v128 = v182;
                    *(v124 + 16) = v179;
                    *(v124 + 24) = v128;
                    *(v124 + 26) = v68;
                    *(v124 + 27) = v20;
                    swift_storeEnumTagMultiPayload();
                    v129 = *(*v126 + 312);
                    v130 = v127;
                    v129(v124);

                    v105 = &qword_1EC4BE710;
                    v106 = &qword_1CF9FE5A8;
                    v107 = v124;
                    goto LABEL_101;
                  }

LABEL_177:
                  result = swift_weakLoadStrong();
                  if (!result)
                  {
                    return result;
                  }

                  v174 = result;
                  v175 = v124;
                  v176 = v183;
                  *v124 = v183;
                  *(v124 + 8) = v125;
                  *(v124 + 9) = BYTE1(v125) & 1;
                  *(v124 + 16) = 0;
                  *(v124 + 24) = -256;
                  *(v124 + 26) = v68;
                  *(v124 + 27) = v20;
                  swift_storeEnumTagMultiPayload();
                  v177 = *(*v174 + 312);
                  sub_1CEFD0988(v176, v125, BYTE1(v125) & 1);
                  v177(v175);

                  v105 = &qword_1EC4BE710;
                  v106 = &qword_1CF9FE5A8;
                  v107 = v175;
LABEL_101:
                  sub_1CEFCCC44(v107, v105, v106);
                  return 0;
                }

LABEL_174:
                if (v181)
                {
                  result = swift_weakLoadStrong();
                  if (result)
                  {
                    v169 = result;
                    v170 = v124;
                    *v124 = v183;
                    *(v124 + 8) = v125;
                    *(v124 + 9) = 0;
                    v171 = v181;
                    *(v124 + 16) = v181;
                    *(v124 + 24) = 256;
                    *(v124 + 26) = v68;
                    *(v124 + 27) = v20;
                    swift_storeEnumTagMultiPayload();
                    v172 = *(*v169 + 312);
                    v173 = v171;
                    v172(v170);

                    sub_1CEFCCC44(v170, &qword_1EC4BE710, &qword_1CF9FE5A8);

                    return 0;
                  }

                  return result;
                }

                goto LABEL_177;
              }

LABEL_120:
              sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
              v125 = v184;
              if ((v184 & 0x100) != 0)
              {
                goto LABEL_121;
              }

              goto LABEL_174;
            }

LABEL_119:
            v124 = v19;
            goto LABEL_120;
          }

          if ((v20 - 1) >= 2)
          {
            if (!v20)
            {
              goto LABEL_142;
            }

            goto LABEL_141;
          }
        }

LABEL_116:
        *(v186 + 96) = v20;
        goto LABEL_119;
      }

      if (!*(v186 + 96))
      {
        if ((v20 - 1) >= 3)
        {
          goto LABEL_141;
        }

        goto LABEL_116;
      }

      if (v20 != 1)
      {
        goto LABEL_118;
      }

LABEL_141:
      if (v68 == v20)
      {
LABEL_142:
        sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
        return 3;
      }

      sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
      v144 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v145 = sub_1CF9E6108();
      v146 = sub_1CF9E72A8();
      if (os_log_type_enabled(v145, v146))
      {
        LODWORD(v186) = v146;
        v147 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v203.i64[0] = v185;
        *v147 = 136446466;
        v148 = 0xE800000000000000;
        v149 = 0x676E696863746177;
        v150 = 0xD000000000000011;
        if (v68 == 3)
        {
          v151 = 0x80000001CFA45AC0;
        }

        else
        {
          v150 = 0xD000000000000015;
          v151 = 0x80000001CFA45AA0;
        }

        if (v68 != 2)
        {
          v149 = v150;
          v148 = v151;
        }

        v152 = 0x746F687370616E73;
        v153 = 0xEC000000676E6974;
        if (!v68)
        {
          v152 = 0x7265746E49746F6ELL;
          v153 = 0xED00006465747365;
        }

        if (v68 <= 1)
        {
          v154 = v152;
        }

        else
        {
          v154 = v149;
        }

        if (v68 <= 1)
        {
          v155 = v153;
        }

        else
        {
          v155 = v148;
        }

        v156 = sub_1CEFD0DF0(v154, v155, v203.i64);

        *(v147 + 4) = v156;
        *(v147 + 12) = 2082;
        v157 = 0xE800000000000000;
        v158 = 0x676E696863746177;
        v159 = 0xD000000000000011;
        if (v20 == 3)
        {
          v160 = 0x80000001CFA45AC0;
        }

        else
        {
          v159 = 0xD000000000000015;
          v160 = 0x80000001CFA45AA0;
        }

        if (v20 != 2)
        {
          v158 = v159;
          v157 = v160;
        }

        v161 = 0x746F687370616E73;
        v162 = 0xEC000000676E6974;
        if (!v20)
        {
          v161 = 0x7265746E49746F6ELL;
          v162 = 0xED00006465747365;
        }

        if (v20 <= 1)
        {
          v163 = v161;
        }

        else
        {
          v163 = v158;
        }

        if (v20 <= 1)
        {
          v164 = v162;
        }

        else
        {
          v164 = v157;
        }

        v165 = sub_1CEFD0DF0(v163, v164, v203.i64);

        *(v147 + 14) = v165;
        _os_log_impl(&dword_1CEFC7000, v145, v186, "❌  invalid transition %{public}s -> %{public}s", v147, 0x16u);
        v166 = v185;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v166, -1, -1);
        MEMORY[0x1D386CDC0](v147, -1, -1);
      }

      (*(v180 + 8))(v15, v12);
      return 3;
    case 11:
      v203.i8[0] = v20;
      *(v203.i32 + 1) = v22;
      v203.i8[7] = BYTE6(v22);
      *(&v203.i16[2] + 1) = WORD2(v22);
      v203.i64[1] = v24;
      v204.i64[0] = v23;
      v204.i64[1] = v25;
      v205 = v27;
      *v206 = v26;
      v206[16] = v28;
      v206[17] = v29;
      v206[18] = 11;
      v41 = v203.i64[0];
      v42 = v23;
      v43 = v186;
      v44 = *(v186 + 104);
      v45 = *(v186 + 112);
      v46 = *(v186 + 120);
      if (v46 > 2)
      {
        if (v46 != 3 && (v46 != 4 || v44 != 1 || v45))
        {
          goto LABEL_75;
        }
      }

      else if (v46 != 1)
      {
        if (v46 == 2 && (v23 == 3 || v23 == 4 && __PAIR128__(v24, v203.u64[0]) < 2))
        {
          v47 = v24;
          sub_1CEFCCBDC(v17, &v199, &qword_1EC4BFEE0, &qword_1CFA055B0);
          sub_1CF03D7A8(v44, v45, 2u);
          v48 = *(v43 + 8);
          if ((v48 & 8) != 0)
          {
            *(v43 + 8) = v48 & 0xFFFFFFFFFFFFFFF7;
          }

          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (v23 == 2)
      {
        v47 = v24;
        sub_1CEFCCBDC(v17, &v199, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF03D7A8(v44, v45, v46);
LABEL_74:
        result = 0;
        *(v43 + 104) = v41;
        *(v43 + 112) = v47;
        *(v43 + 120) = v42;
        return result;
      }

LABEL_75:
      sub_1CEFCCBDC(v17, &v199, &qword_1EC4BFEE0, &qword_1CFA055B0);
      sub_1CEFCCC44(&v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
      return 3;
    case 12:
      v52 = v186;
      if (v20 != 5 && *(v186 + 24) != v20)
      {
        goto LABEL_142;
      }

      *(v186 + 24) = v21;
      if (((1 << v21) & 0x2E) == 0)
      {
        *(v52 + 98) = 0;
      }

      goto LABEL_93;
    case 13:
      v199.i8[0] = v20;
      *(v199.i32 + 1) = v22;
      v199.i8[7] = BYTE6(v22);
      *(&v199.i16[2] + 1) = WORD2(v22);
      v199.i64[1] = v24;
      v200.i64[0] = v23;
      v200.i64[1] = v25;
      v201 = v27;
      *v202 = v26;
      v204 = v200;
      v205 = v27;
      v202[16] = v28;
      v202[17] = v29;
      v202[18] = 13;
      *v206 = v26;
      *&v206[15] = *&v202[15];
      v203 = v199;
      v64 = v28;
      v65 = v29;
      if (v64 == 1 && (v29 & 1) == 0)
      {
        sub_1CEFCCBDC(v17, &v187, &qword_1EC4BFEE0, &qword_1CFA055B0);
        v66 = v186;
        goto LABEL_134;
      }

      v66 = v186;
      v96 = *(v186 + 144);
      v191 = *(v186 + 128);
      v192 = v96;
      v97 = *(v186 + 176);
      v193 = *(v186 + 160);
      v198 = *(v186 + 144);
      v194 = v97;
      v195 = v193;
      v98 = *(&v96 + 1);
      v196 = v97;
      v197 = v191;
      if (*(&v96 + 1) >> 60 == 11)
      {
        goto LABEL_133;
      }

      v108 = v19;
      v109 = v17;
      v110 = swift_weakLoadStrong();
      v111 = v110;
      if (v65)
      {
        if (v110)
        {
          v112 = v108;
          v113 = v183;
          v112->i64[0] = v183;
          v114 = v184;
          v115 = (v184 >> 8) & 1;
          LODWORD(v185) = v115;
          v112->i8[8] = v184;
          v112->i8[9] = v115;
          v116 = v196;
          v112[1] = v197;
          v112[2].i64[0] = v198;
          v112[2].i64[1] = v98;
          v112[3] = v195;
          v112[4] = v116;
          v117 = v112;
          swift_storeEnumTagMultiPayload();
          v118 = *(*v111 + 312);
          sub_1CEFCCBDC(&v191, &v187, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFCCBDC(v109, &v187, &qword_1EC4BFEE0, &qword_1CFA055B0);
          sub_1CEFD0988(v113, v114, v185);
          sub_1CEFCCBDC(&v191, &v187, &unk_1EC4BF260, &unk_1CFA01B60);
          v118(v117);

          sub_1CEFCCC44(&v191, &unk_1EC4BF260, &unk_1CFA01B60);
          v119 = v117;
LABEL_126:
          sub_1CEFCCC44(v119, &qword_1EC4BE710, &qword_1CF9FE5A8);
          goto LABEL_134;
        }
      }

      else if (v110)
      {
        v131 = v196;
        *v108 = v197;
        v108[1].i64[0] = v198;
        v108[1].i64[1] = v98;
        v108[2] = v195;
        v108[3] = v131;
        swift_storeEnumTagMultiPayload();
        v132 = *(*v111 + 312);
        sub_1CEFCCBDC(&v191, &v187, &unk_1EC4BF260, &unk_1CFA01B60);
        sub_1CEFCCBDC(v109, &v187, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CEFCCBDC(&v191, &v187, &unk_1EC4BF260, &unk_1CFA01B60);
        v132(v108);

        sub_1CEFCCC44(&v191, &unk_1EC4BF260, &unk_1CFA01B60);
        v119 = v108;
        goto LABEL_126;
      }

      v17 = v109;
LABEL_133:
      sub_1CEFCCBDC(v17, &v187, &qword_1EC4BFEE0, &qword_1CFA055B0);
LABEL_134:
      v140 = v66[9];
      v187 = v66[8];
      v188 = v140;
      v141 = v66[11];
      v189 = v66[10];
      v190 = v141;
      v142 = v204;
      v66[8] = v203;
      v66[9] = v142;
      v143 = *v206;
      v66[10] = v205;
      v66[11] = v143;
      sub_1CEFCCBDC(&v203, &v191, &unk_1EC4BF260, &unk_1CFA01B60);
      sub_1CEFCCC44(&v187, &unk_1EC4BF260, &unk_1CFA01B60);
      if (v204.i64[1] >> 60 == 11)
      {
        return 0;
      }

      sub_1CEFCCC44(&v199, &qword_1EC4BFEE0, &qword_1CFA055B0);
      return 1;
    case 14:
      v34 = v17;
      v35 = v186;
      if (!*v186)
      {
        sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 584);
      }

      v17 = swift_weakLoadStrong();
      if (!v17)
      {
        __break(1u);
LABEL_180:
        sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 508);
      }

      v36 = *(*v17 + 152);
      v37 = sub_1CEFCCBDC(v34, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
      v38 = v36(v37);

      v39 = *(v35 + 8);
      if (v38 & 0x4000) != 0 && (v20)
      {
        result = 0;
        if ((v39 & 0x80) == 0)
        {
          *(v35 + 8) = v39 | 0x80;
        }
      }

      else
      {
        result = 0;
        if ((v39 & 0x80) != 0)
        {
          *(v35 + 8) = v39 & 0xFFFFFFFFFFFFFF7FLL;
        }
      }

      return result;
    case 15:
      v57 = vorrq_s8(v26, v27);
      if (v31 | *&vorr_s8(*v57.i8, *&vextq_s8(v57, v57, 8uLL)) | v25 | v23 | v24)
      {
        v58 = 0;
      }

      else
      {
        v58 = (v28 | (v29 << 8)) == 0;
      }

      if (!v58)
      {
        *(v186 + 98) = 1;
LABEL_49:
        sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
        return 1;
      }

      v55 = v186;
      if ((*(v186 + 8) & 9) != 8)
      {
        v56 = ~*(v186 + 8) & 8 | *(v186 + 8) & 0xFFFFFFFFFFFFFFFELL;
LABEL_80:
        *(v55 + 8) = v56;
      }

LABEL_81:
      *(v55 + 16) = 0;
LABEL_93:
      sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
      return 0;
    default:
      v32 = v186;
      if (!*v186)
      {
        goto LABEL_180;
      }

      if ((v31 & ~*a3) != 0)
      {
        *a3 |= v31;
      }

      sub_1CEFCCBDC(v17, &v203, &qword_1EC4BFEE0, &qword_1CFA055B0);
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v33 = *(v32 + 8);
      *(v32 + 16) |= v31 & 0xFFFFFFFFFF7FFFEFLL & (qword_1EDEABDE8 | 0x409000000C000);
      if ((v33 & 9) != 0)
      {
        *(v32 + 8) = v33 & 0xFFFFFFFFFFFFFFF6;
      }

      return 1;
  }
}

uint64_t sub_1CF446A64(unsigned __int8 *a1, uint64_t a2, void *a3, char a4, void *a5, int a6, uint64_t a7, int a8, void *a9)
{
  v157 = a8;
  v154 = a7;
  LODWORD(v159) = a6;
  v158 = a5;
  v161 = a2;
  v156 = a9;
  v12 = sub_1CF9E6118();
  v155 = *(v12 - 8);
  v13 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8) - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v152 - v19;
  v21 = *a1;
  v22 = *(a1 + 1);
  v23 = v22 | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v24 = *(a1 + 1);
  v25 = *(a1 + 2);
  v26 = *(a1 + 24);
  v27 = *(a1 + 5);
  v28 = *(a1 + 6);
  v29 = *(a1 + 7);
  v31 = *(a1 + 4);
  v30 = *(a1 + 5);
  v32 = a1[96];
  v33 = a1[97];
  v34 = v21 | (v23 << 8);
  switch(v17[98])
  {
    case 1:
      v64 = v161;
      if (*(v161 + 8) == 255)
      {
        sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 518);
      }

      v65 = *(v161 + 16);
      *(v161 + 24) &= ~v34;
      if (v65)
      {
        *(v64 + 16) = v65 & 0xFFFFFFFFFFFFFFFELL;
      }

      goto LABEL_49;
    case 2:
      v58 = v161;
      if ((*(v161 + 16) & 9) == 1)
      {
        goto LABEL_82;
      }

      v59 = *(v161 + 16) & 0xFFFFFFFFFFFFFFF6 | 1;
      goto LABEL_81;
    case 3:
      if (*(v161 + 8) == 255)
      {
        sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 574);
      }

      v62 = *(v161 + 16);
      if (v21)
      {
        if ((v62 & 2) == 0)
        {
          *(v161 + 16) = v62 | 2;
        }
      }

      else if ((v62 & 0x22) != 0)
      {
        *(v161 + 16) = v62 & 0xFFFFFFFFFFFFFFDDLL;
      }

      goto LABEL_94;
    case 4:
      v52 = v161;
      if (*(v161 + 8) == 255)
      {
        sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 593);
      }

      v53 = *(v161 + 16);
      if (v21)
      {
        if ((v53 & 4) != 0)
        {
          goto LABEL_94;
        }

        v54 = v53 | 4;
      }

      else
      {
        if ((v53 & 4) == 0)
        {
          goto LABEL_94;
        }

        v54 = v53 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_93;
    case 5:
      v52 = v161;
      if (*(v161 + 8) == 255)
      {
        sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 602);
      }

      v66 = *(v161 + 16);
      if (v21)
      {
        if ((v66 & 0x10) != 0)
        {
          goto LABEL_94;
        }

        v54 = v66 | 0x10;
      }

      else
      {
        if ((v66 & 0x30) == 0)
        {
          goto LABEL_94;
        }

        v54 = v66 & 0xFFFFFFFFFFFFFFCFLL;
      }

      goto LABEL_93;
    case 6:
      v52 = v161;
      v69 = *(v161 + 16);
      if (v21)
      {
        if ((v69 & 0x20) != 0)
        {
          goto LABEL_94;
        }

        v54 = v69 | 0x20;
      }

      else
      {
        if ((v69 & 0x20) == 0)
        {
          goto LABEL_94;
        }

        v54 = v69 & 0xFFFFFFFFFFFFFFDFLL;
      }

      goto LABEL_93;
    case 7:
      v52 = v161;
      v63 = *(v161 + 16);
      if (v21)
      {
        if ((v63 & 0x40) != 0)
        {
          goto LABEL_94;
        }

        v54 = v63 | 0x40;
      }

      else
      {
        if ((v63 & 0x40) == 0)
        {
          goto LABEL_94;
        }

        v54 = v63 & 0xFFFFFFFFFFFFFFBFLL;
      }

LABEL_93:
      *(v52 + 16) = v54;
      goto LABEL_94;
    case 8:
      LOBYTE(v175) = v21;
      *(&v175 + 1) = v23;
      BYTE7(v175) = BYTE6(v23);
      *(&v175 + 5) = WORD2(v23);
      *(&v175 + 1) = v24;
      *&v176[0] = v25;
      v162 = v26;
      *(v176 + 8) = v26;
      v71 = v26;
      *(&v176[1] + 1) = v27;
      *&v177 = v28;
      *(&v177 + 1) = v29;
      v178 = v31;
      v179[0] = v30;
      v72 = v161;
      if (*(v161 + 8) == 255)
      {
        sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 557);
      }

      v160 = v31;
      v73 = v27;
      v158 = v28;
      v159 = v29;
      v74 = v24;
      if (*(v161 + 104))
      {
        sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
        if ((v32 & 1) == 0)
        {
          goto LABEL_103;
        }
      }

      else
      {
        *&v163 = 0;
        *(&v163 + 1) = 0xE000000000000000;
        *&v167 = 58;
        *(&v167 + 1) = 0xE100000000000000;
        *&v171 = 47;
        *(&v171 + 1) = 0xE100000000000000;
        sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CEFE4E68();
        v78 = sub_1CF9E7668();
        v80 = v79;
        v81 = *(v72 + 88);
        *&v181[16] = *(v72 + 72);
        v182 = v81;
        v82 = *(v72 + 120);
        v183 = *(v72 + 104);
        *v184 = v82;
        v83 = *(v72 + 56);
        v180 = *(v72 + 40);
        *v181 = v83;
        sub_1CEFCCC44(&v180, &unk_1EC4BECD0, &unk_1CF9FEF80);
        *(v72 + 40) = 0;
        *(v72 + 48) = 0;
        *(v72 + 56) = 0;
        *(v72 + 64) = 1;
        *(v72 + 72) = 0;
        *(v72 + 80) = 0;
        *(v72 + 88) = 2;
        *(v72 + 96) = v78;
        *(v72 + 104) = v80;
        *(v72 + 120) = 0;
        *(v72 + 128) = 0;
        *(v72 + 112) = 0;
        if ((v32 & 1) == 0)
        {
          goto LABEL_103;
        }
      }

      if (*(v72 + 104))
      {
        *(v72 + 40) = v175;
        *(v72 + 48) = v74;
        *(v72 + 56) = v25;
        *(v72 + 64) = v71 & 1;
      }

LABEL_103:
      if ((v33 & 1) != 0 && *(v72 + 104))
      {
        v84 = v160.i64[0];

        sub_1CEFCCC44(&v175, &unk_1EC4BE330, &unk_1CF9FF010);
        *(v72 + 80) = v73;
        v85 = v159;
        *(v72 + 88) = v158;
        *(v72 + 96) = v85;
        *(v72 + 104) = v84;
        return 0;
      }

      v86 = &unk_1EC4BE330;
      v87 = &unk_1CF9FF010;
      v88 = &v175;
      goto LABEL_129;
    case 9:
      v56 = v161;
      v57 = *(v161 + 232);
      sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);

      result = 0;
      *(v56 + 232) = v34;
      return result;
    case 0xA:
      v70 = *(v161 + 136);
      if (v70 > 1)
      {
        if (v70 == 2)
        {
          if (!v21)
          {
            goto LABEL_117;
          }

          if (v21 != 1)
          {
            if (v21 != 3)
            {
              goto LABEL_148;
            }

            goto LABEL_117;
          }

          if (a4 == 1 || a4 == 4)
          {
            goto LABEL_148;
          }
        }

        else
        {
          if (v70 == 3)
          {
            if (v21 >= 3)
            {
              goto LABEL_148;
            }

LABEL_117:
            v98 = v161;
            *(v161 + 136) = v21;
            if (!v21)
            {
              v155 = v18;
              v99 = v20;
              v115 = *(v98 + 184);
              v175 = *(v98 + 168);
              v176[0] = v115;
              v116 = *(v98 + 216);
              v176[1] = *(v98 + 200);
              v177 = v116;
              v167 = v175;
              *&v168 = *(v98 + 184);
              v117 = *(&v115 + 1);
              v163 = v176[1];
              v164 = v116;
              v100 = v159;
              if (*(&v115 + 1) >> 60 == 11)
              {
                sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
              }

              else
              {
                v122 = v17;
                Strong = swift_weakLoadStrong();
                if (Strong)
                {
                  v124 = Strong;
                  *v99 = v167;
                  *(v99 + 16) = v168;
                  *(v99 + 24) = v117;
                  v125 = v164;
                  *(v99 + 32) = v163;
                  *(v99 + 48) = v125;
                  swift_storeEnumTagMultiPayload();
                  v153 = (*v124 + 312);
                  v126 = *v153;
                  sub_1CEFCCBDC(&v175, &v180, &unk_1EC4BF260, &unk_1CFA01B60);
                  sub_1CEFCCBDC(v122, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
                  sub_1CEFCCBDC(&v175, &v180, &unk_1EC4BF260, &unk_1CFA01B60);
                  v126(v99);

                  v100 = v159;
                  v98 = v161;
                  sub_1CEFCCC44(&v175, &unk_1EC4BF260, &unk_1CFA01B60);
                  sub_1CEFCCC44(v99, &qword_1EC4BE710, &qword_1CF9FE5A8);
                }

                else
                {
                  sub_1CEFCCBDC(v122, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
                }

                v150 = *(v98 + 184);
                v180 = *(v98 + 168);
                *v181 = v150;
                v151 = *(v98 + 216);
                *&v181[16] = *(v98 + 200);
                v182 = v151;
                sub_1CEFCCC44(&v180, &unk_1EC4BF260, &unk_1CFA01B60);
                *(v98 + 168) = 0;
                *(v98 + 176) = 0;
                *(v98 + 184) = 0;
                *(v98 + 192) = 0xB000000000000000;
                *(v98 + 200) = 0u;
                *(v98 + 216) = 0u;
              }

LABEL_119:
              if ((v100 & 0x100) != 0)
              {
                if (v157 != 0xFF)
                {
                  result = swift_weakLoadStrong();
                  if (!result)
                  {
                    return result;
                  }

                  v101 = result;
                  v102 = v158;
                  *v99 = v158;
                  *(v99 + 8) = v100;
                  *(v99 + 9) = 1;
                  v103 = v157;
                  *(v99 + 16) = v154;
                  *(v99 + 24) = v103;
                  *(v99 + 26) = v70;
                  *(v99 + 27) = v21;
                  swift_storeEnumTagMultiPayload();
                  v104 = *(*v101 + 312);
                  v105 = v102;
                  v104(v99);
LABEL_128:

                  v86 = &qword_1EC4BE710;
                  v87 = &qword_1CF9FE5A8;
                  v88 = v99;
LABEL_129:
                  sub_1CEFCCC44(v88, v86, v87);
                  return 0;
                }
              }

              else if (v156)
              {
                result = swift_weakLoadStrong();
                if (result)
                {
                  v106 = result;
                  *v99 = v158;
                  *(v99 + 8) = v100;
                  *(v99 + 9) = 0;
                  v107 = v156;
                  *(v99 + 16) = v156;
                  *(v99 + 24) = 256;
                  *(v99 + 26) = v70;
                  *(v99 + 27) = v21;
                  swift_storeEnumTagMultiPayload();
                  v108 = *(*v106 + 312);
                  v109 = v107;
                  v108(v99);

                  sub_1CEFCCC44(v99, &qword_1EC4BE710, &qword_1CF9FE5A8);

                  return 0;
                }

                return result;
              }

              result = swift_weakLoadStrong();
              if (!result)
              {
                return result;
              }

              v110 = result;
              v111 = v158;
              *v99 = v158;
              *(v99 + 8) = v100;
              *(v99 + 9) = BYTE1(v100) & 1;
              *(v99 + 16) = 0;
              *(v99 + 24) = -256;
              *(v99 + 26) = v70;
              *(v99 + 27) = v21;
              swift_storeEnumTagMultiPayload();
              v112 = *(*v110 + 312);
              sub_1CEFD0988(v111, v100, BYTE1(v100) & 1);
              v112(v99);
              goto LABEL_128;
            }

LABEL_118:
            v155 = v18;
            v99 = v20;
            sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
            v100 = v159;
            goto LABEL_119;
          }

          if ((v21 - 1) >= 2)
          {
            if (!v21)
            {
              goto LABEL_149;
            }

            goto LABEL_148;
          }
        }

LABEL_115:
        *(v161 + 136) = v21;
        goto LABEL_118;
      }

      if (!*(v161 + 136))
      {
        if ((v21 - 1) >= 3)
        {
          goto LABEL_148;
        }

        goto LABEL_115;
      }

      if (v21 != 1)
      {
        goto LABEL_117;
      }

LABEL_148:
      if (v70 == v21)
      {
LABEL_149:
        sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
        return 3;
      }

      sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
      v127 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v128 = sub_1CF9E6108();
      v129 = sub_1CF9E72A8();
      if (os_log_type_enabled(v128, v129))
      {
        LODWORD(v161) = v129;
        v130 = swift_slowAlloc();
        v160.i64[0] = swift_slowAlloc();
        *&v180 = v160.i64[0];
        *v130 = 136446466;
        v131 = 0xE800000000000000;
        v132 = 0x676E696863746177;
        v133 = 0xD000000000000011;
        if (v70 == 3)
        {
          v134 = 0x80000001CFA45AC0;
        }

        else
        {
          v133 = 0xD000000000000015;
          v134 = 0x80000001CFA45AA0;
        }

        if (v70 != 2)
        {
          v132 = v133;
          v131 = v134;
        }

        v135 = 0x746F687370616E73;
        v136 = 0xEC000000676E6974;
        if (!v70)
        {
          v135 = 0x7265746E49746F6ELL;
          v136 = 0xED00006465747365;
        }

        if (v70 <= 1)
        {
          v137 = v135;
        }

        else
        {
          v137 = v132;
        }

        if (v70 <= 1)
        {
          v138 = v136;
        }

        else
        {
          v138 = v131;
        }

        v139 = sub_1CEFD0DF0(v137, v138, &v180);

        *(v130 + 4) = v139;
        *(v130 + 12) = 2082;
        v140 = 0xE800000000000000;
        v141 = 0x676E696863746177;
        v142 = 0xD000000000000011;
        if (v21 == 3)
        {
          v143 = 0x80000001CFA45AC0;
        }

        else
        {
          v142 = 0xD000000000000015;
          v143 = 0x80000001CFA45AA0;
        }

        if (v21 != 2)
        {
          v141 = v142;
          v140 = v143;
        }

        v144 = 0x746F687370616E73;
        v145 = 0xEC000000676E6974;
        if (!v21)
        {
          v144 = 0x7265746E49746F6ELL;
          v145 = 0xED00006465747365;
        }

        if (v21 <= 1)
        {
          v146 = v144;
        }

        else
        {
          v146 = v141;
        }

        if (v21 <= 1)
        {
          v147 = v145;
        }

        else
        {
          v147 = v140;
        }

        v148 = sub_1CEFD0DF0(v146, v147, &v180);

        *(v130 + 14) = v148;
        _os_log_impl(&dword_1CEFC7000, v128, v161, "❌  invalid transition %{public}s -> %{public}s", v130, 0x16u);
        v149 = v160.i64[0];
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v149, -1, -1);
        MEMORY[0x1D386CDC0](v130, -1, -1);
      }

      (*(v155 + 8))(v15, v12);
      return 3;
    case 0xB:
      LOBYTE(v180) = v21;
      *(&v180 + 1) = v23;
      BYTE7(v180) = BYTE6(v23);
      *(&v180 + 5) = WORD2(v23);
      *(&v180 + 1) = v24;
      *v181 = v25;
      *&v181[8] = v26;
      *&v181[24] = v27;
      *&v182 = v28;
      *(&v182 + 1) = v29;
      v183 = v31;
      *v184 = v30;
      v184[16] = v32;
      v184[17] = v33;
      v184[18] = 11;
      v44 = v180;
      v45 = v25;
      v46 = v161;
      v47 = *(v161 + 144);
      v48 = *(v161 + 152);
      v49 = *(v161 + 160);
      if (v49 > 2)
      {
        if (v49 != 3 && (v49 != 4 || v47 != 1 || v48))
        {
          goto LABEL_76;
        }
      }

      else if (v49 != 1)
      {
        if (v49 == 2 && (v45 == 3 || v45 == 4 && __PAIR128__(v24, v180) < 2))
        {
          v50 = v24;
          sub_1CEFCCBDC(v17, &v175, &qword_1EC4BFEE8, &qword_1CFA055B8);
          sub_1CF03D7A8(v47, v48, 2u);
          v51 = *(v46 + 16);
          if ((v51 & 8) != 0)
          {
            *(v46 + 16) = v51 & 0xFFFFFFFFFFFFFFF7;
          }

          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (v45 == 2)
      {
        v50 = v24;
        sub_1CEFCCBDC(v17, &v175, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF03D7A8(v47, v48, v49);
LABEL_75:
        result = 0;
        *(v46 + 144) = v44;
        *(v46 + 152) = v50;
        *(v46 + 160) = v45;
        return result;
      }

LABEL_76:
      sub_1CEFCCBDC(v17, &v175, &qword_1EC4BFEE8, &qword_1CFA055B8);
      sub_1CEFCCC44(&v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
      return 3;
    case 0xC:
      v55 = v161;
      if (v21 != 5 && *(v161 + 32) != v21)
      {
        goto LABEL_149;
      }

      *(v161 + 32) = v22;
      if (((1 << v22) & 0x2E) == 0)
      {
        *(v55 + 138) = 0;
      }

      goto LABEL_94;
    case 0xD:
      LOBYTE(v175) = v21;
      *(&v175 + 1) = v23;
      BYTE7(v175) = BYTE6(v23);
      *(&v175 + 5) = WORD2(v23);
      *(&v175 + 1) = v24;
      *&v176[0] = v25;
      *(v176 + 8) = v26;
      *(&v176[1] + 1) = v27;
      *&v177 = v28;
      *(&v177 + 1) = v29;
      v178 = v31;
      v179[0] = v30;
      LOBYTE(v179[1]) = v32;
      BYTE1(v179[1]) = v33;
      BYTE2(v179[1]) = 13;
      v183 = v31;
      *v184 = v30;
      *&v184[15] = *(v179 + 15);
      *&v181[16] = v176[1];
      v182 = v177;
      v180 = v175;
      *v181 = v176[0];
      v67 = v31.i8[1];
      if (v31.u8[0] == 1 && (v31.i8[1] & 1) == 0)
      {
        sub_1CEFCCBDC(v17, &v163, &qword_1EC4BFEE8, &qword_1CFA055B8);
        v68 = v161;
        goto LABEL_139;
      }

      v68 = v161;
      v75 = *(v161 + 184);
      v167 = *(v161 + 168);
      v168 = v75;
      v76 = *(v161 + 216);
      v169 = *(v161 + 200);
      v170 = v76;
      v172 = v76;
      v173 = v167;
      v174 = *(v161 + 184);
      v77 = *(&v75 + 1);
      v171 = v169;
      if (*(&v75 + 1) >> 60 == 11)
      {
        goto LABEL_138;
      }

      v89 = v20;
      v90 = v17;
      v91 = swift_weakLoadStrong();
      v92 = v91;
      if (v67)
      {
        if (v91)
        {
          v93 = v158;
          *v89 = v158;
          v94 = v159;
          v89[8] = v159;
          v89[9] = BYTE1(v94) & 1;
          v95 = v172;
          *(v89 + 1) = v173;
          *(v89 + 4) = v174;
          *(v89 + 5) = v77;
          *(v89 + 3) = v171;
          *(v89 + 4) = v95;
          v96 = v89;
          swift_storeEnumTagMultiPayload();
          v97 = *(*v92 + 312);
          sub_1CEFCCBDC(&v167, &v163, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFCCBDC(v90, &v163, &qword_1EC4BFEE8, &qword_1CFA055B8);
          sub_1CEFD0988(v93, v94, BYTE1(v94) & 1);
          sub_1CEFCCBDC(&v167, &v163, &unk_1EC4BF260, &unk_1CFA01B60);
          v97(v89);

LABEL_132:
          sub_1CEFCCC44(&v167, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFCCC44(v96, &qword_1EC4BE710, &qword_1CF9FE5A8);
          goto LABEL_139;
        }
      }

      else if (v91)
      {
        v113 = v172;
        *v89 = v173;
        *(v89 + 2) = v174;
        *(v89 + 3) = v77;
        *(v89 + 2) = v171;
        *(v89 + 3) = v113;
        v96 = v89;
        swift_storeEnumTagMultiPayload();
        v114 = *(*v92 + 312);
        sub_1CEFCCBDC(&v167, &v163, &unk_1EC4BF260, &unk_1CFA01B60);
        sub_1CEFCCBDC(v90, &v163, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CEFCCBDC(&v167, &v163, &unk_1EC4BF260, &unk_1CFA01B60);
        v114(v89);

        goto LABEL_132;
      }

      v17 = v90;
LABEL_138:
      sub_1CEFCCBDC(v17, &v163, &qword_1EC4BFEE8, &qword_1CFA055B8);
LABEL_139:
      v118 = *(v68 + 184);
      v163 = *(v68 + 168);
      v164 = v118;
      v119 = *(v68 + 216);
      v165 = *(v68 + 200);
      v166 = v119;
      v120 = *v181;
      *(v68 + 168) = v180;
      *(v68 + 184) = v120;
      v121 = v182;
      *(v68 + 200) = *&v181[16];
      *(v68 + 216) = v121;
      sub_1CEFCCBDC(&v180, &v167, &unk_1EC4BF260, &unk_1CFA01B60);
      sub_1CEFCCC44(&v163, &unk_1EC4BF260, &unk_1CFA01B60);
      if (*&v181[8] >> 60 == 11)
      {
        return 0;
      }

      sub_1CEFCCC44(&v175, &qword_1EC4BFEE8, &qword_1CFA055B8);
      return 1;
    case 0xE:
      v37 = v17;
      v38 = v161;
      if (*(v161 + 8) == 255)
      {
        sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 584);
      }

      v17 = swift_weakLoadStrong();
      if (!v17)
      {
        __break(1u);
LABEL_182:
        sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 508);
      }

      v39 = *(*v17 + 152);
      v40 = sub_1CEFCCBDC(v37, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
      v41 = v39(v40);

      v42 = *(v38 + 16);
      if (v41 & 0x4000) != 0 && (v21)
      {
        result = 0;
        if ((v42 & 0x80) == 0)
        {
          *(v38 + 16) = v42 | 0x80;
        }
      }

      else
      {
        result = 0;
        if ((v42 & 0x80) != 0)
        {
          *(v38 + 16) = v42 & 0xFFFFFFFFFFFFFF7FLL;
        }
      }

      return result;
    case 0xF:
      v60 = vorrq_s8(v30, v31);
      if (v25 | *&vorr_s8(*v60.i8, *&vextq_s8(v60, v60, 8uLL)) | v27 | v28 | v29 | v24 | v34 | *(&v26 + 1) | v26)
      {
        v61 = 0;
      }

      else
      {
        v61 = (v32 | (v33 << 8)) == 0;
      }

      if (!v61)
      {
        *(v161 + 138) = 1;
LABEL_49:
        sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
        return 1;
      }

      v58 = v161;
      if ((*(v161 + 16) & 9) != 8)
      {
        v59 = ~*(v161 + 16) & 8 | *(v161 + 16) & 0xFFFFFFFFFFFFFFFELL;
LABEL_81:
        *(v58 + 16) = v59;
      }

LABEL_82:
      *(v58 + 24) = 0;
LABEL_94:
      sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
      return 0;
    default:
      v35 = v161;
      if (*(v161 + 8) == 255)
      {
        goto LABEL_182;
      }

      if ((v34 & ~*a3) != 0)
      {
        *a3 |= v34;
      }

      sub_1CEFCCBDC(v17, &v180, &qword_1EC4BFEE8, &qword_1CFA055B8);
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v36 = *(v35 + 16);
      *(v35 + 24) |= v34 & 0xFFFFFFFFFF7FFFEFLL & (qword_1EDEABDE8 | 0x409000000C000);
      if ((v36 & 9) != 0)
      {
        *(v35 + 16) = v36 & 0xFFFFFFFFFFFFFFF6;
      }

      return 1;
  }
}

void sub_1CF447FF8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, char a6)
{
  v187 = a2;
  v185 = a3;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8) - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v180 - v15;
  v221 = a5;
  v222 = a6;
  v189 = *v14;
  v17 = *(v14 + 8);
  v241 = *(v14 + 9);
  v242 = v17;
  v18 = *(v14 + 10);
  v19 = *(v14 + 11);
  v20 = *(v14 + 12);
  v21 = *(v14 + 16);
  v22 = *(v14 + 24);
  v23 = *(v14 + 25);
  v24 = *(v14 + 26) | (*(v14 + 30) << 32);
  v25 = *(v14 + 80);
  v218 = *(v14 + 64);
  v219 = v25;
  v220[0] = *(v14 + 96);
  *(v220 + 15) = *(v14 + 111);
  v26 = *(v14 + 48);
  v216 = *(v14 + 32);
  v217 = v26;
  switch(*(v14 + 115))
  {
    case 1:
      v72 = v187;
      v73 = *(v187 + 8);
      v184 = v21;
      v182 = v22;
      if (v73 == 255)
      {
        v74 = v242;
        v75 = v189;
        if (v242 == 255)
        {
LABEL_97:
          v134 = *(v187 + 248);
          v183 = (v187 + 248);
          if (v134)
          {
            v185 = v14;
            v135 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v137 = v136;
            if (v135 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v137 == v138)
            {
              v241 = 1;
            }

            else
            {
              v241 = sub_1CF9E8048();
            }

            v143 = v134;
            v142 = v184;
            v144 = v184;
            sub_1CEFCCBDC(v185, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);

            if (v241)
            {
              sub_1CF47EB94(v72, v189, v242, v144, v182);

              return;
            }
          }

          else
          {
            sub_1CEFCCBDC(v14, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
            v142 = v184;
          }

          v212 = v142;
          v213 = 256;
          v210 = a5;
          v211 = a6;
          v145 = v186;
          v146 = *(*v186 + 168);
          v147 = v142;
          v148 = v188;
          v146(v209, &v212, 1, &v210, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v148)
          {

            return;
          }

          memcpy(v208, v209, sizeof(v208));
          if (sub_1CF08B99C(v208) == 1)
          {
            memcpy(v207, v209, sizeof(v207));
            sub_1CEFCCC44(v207, &unk_1EC4BFD20, &unk_1CFA05440);
            sub_1CF445058(v212, v213 | (HIBYTE(v213) << 8), v214);

            memcpy(v215, v214, 0x208uLL);
            v74 = v242;
            v75 = v189;
          }

          else
          {

            memcpy(v215, v209, 0x208uLL);
            (*(*v145 + 200))(v215, *(&v209[32] + 1), 0, &v221, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
            v74 = v242;
            v75 = v189;
            v201 = *(&v215[25] + 8);
            v202 = *(&v215[26] + 8);
            v203 = *(&v215[27] + 8);
            v197 = *(&v215[21] + 8);
            v198 = *(&v215[22] + 8);
            v199 = *(&v215[23] + 8);
            v200 = *(&v215[24] + 8);
            v191 = *(&v215[15] + 8);
            v192 = *(&v215[16] + 8);
            v193 = *(&v215[17] + 8);
            v194 = *(&v215[18] + 8);
            v195 = *(&v215[19] + 8);
            v196 = *(&v215[20] + 8);
            v165 = v183;
            v166 = *(v183 + 11);
            v207[10] = *(v183 + 10);
            v207[11] = v166;
            v207[12] = *(v183 + 12);
            v167 = *(v183 + 7);
            v207[6] = *(v183 + 6);
            v207[7] = v167;
            v168 = *(v183 + 9);
            v207[8] = *(v183 + 8);
            v207[9] = v168;
            v169 = *(v183 + 3);
            v207[2] = *(v183 + 2);
            v207[3] = v169;
            v170 = *(v183 + 5);
            v207[4] = *(v183 + 4);
            v207[5] = v170;
            v171 = *(v183 + 1);
            v207[0] = *v183;
            v207[1] = v171;
            sub_1CEFCCBDC(&v191, v190, &unk_1EC4C4E60, &unk_1CF9FCAD0);
            sub_1CEFCCC44(v207, &unk_1EC4C4E60, &unk_1CF9FCAD0);
            v172 = v202;
            v165[10] = v201;
            v165[11] = v172;
            v165[12] = v203;
            v173 = v198;
            v165[6] = v197;
            v165[7] = v173;
            v174 = v200;
            v165[8] = v199;
            v165[9] = v174;
            v175 = v194;
            v165[2] = v193;
            v165[3] = v175;
            v176 = v196;
            v165[4] = v195;
            v165[5] = v176;
            v177 = v192;
            *v165 = v191;
            v165[1] = v177;
          }

          goto LABEL_115;
        }
      }

      else
      {
        v74 = v242;
        v75 = v189;
        if (v242 != 255)
        {
          v122 = *v187;
          if (v73)
          {
            if (v73 == 1)
            {
              if (v242 == 1 && v122 == v189)
              {
                goto LABEL_97;
              }
            }

            else if (v122)
            {
              if (v242 == 2 && v189 == 1)
              {
                goto LABEL_97;
              }
            }

            else if (v242 == 2 && !v189)
            {
              goto LABEL_97;
            }
          }

          else if (!v242 && v122 == v189)
          {
            goto LABEL_97;
          }
        }
      }

      v212 = v75;
      v213 = v74;
      v210 = a5;
      v211 = a6;
      v139 = v186;
      v140 = *(*v186 + 168);
      sub_1CEFCCBDC(v14, v208, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v141 = v188;
      v140(v209, &v212, 1, &v210, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v141)
      {

        return;
      }

      memcpy(v208, v209, sizeof(v208));
      if (sub_1CF08B99C(v208) != 1)
      {
        memcpy(v215, v209, 0x208uLL);
        (*(*v139 + 200))(v215, *(&v209[32] + 1), 0, &v221, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
        v203 = v215[12];
        v204 = v215[13];
        v205 = v215[14];
        v206 = *&v215[15];
        v199 = v215[8];
        v200 = v215[9];
        v201 = v215[10];
        v202 = v215[11];
        v195 = v215[4];
        v196 = v215[5];
        v197 = v215[6];
        v198 = v215[7];
        v191 = v215[0];
        v192 = v215[1];
        v193 = v215[2];
        v194 = v215[3];
        v149 = v187;
        v150 = *(v187 + 208);
        v207[12] = *(v187 + 192);
        v207[13] = v150;
        v207[14] = *(v187 + 224);
        *&v207[15] = *(v187 + 240);
        v151 = *(v187 + 144);
        v207[8] = *(v187 + 128);
        v207[9] = v151;
        v152 = *(v187 + 176);
        v207[10] = *(v187 + 160);
        v207[11] = v152;
        v153 = *(v187 + 80);
        v207[4] = *(v187 + 64);
        v207[5] = v153;
        v154 = *(v187 + 112);
        v207[6] = *(v187 + 96);
        v207[7] = v154;
        v155 = *(v187 + 16);
        v207[0] = *v187;
        v207[1] = v155;
        v156 = *(v187 + 48);
        v207[2] = *(v187 + 32);
        v207[3] = v156;
        sub_1CEFCCBDC(&v191, v190, &unk_1EC4BFE00, &unk_1CF9FEF00);
        sub_1CEFCCC44(v207, &unk_1EC4BFE00, &unk_1CF9FEF00);
        v157 = v149;
        v158 = v204;
        *(v149 + 192) = v203;
        *(v149 + 208) = v158;
        *(v149 + 224) = v205;
        *(v149 + 240) = v206;
        v159 = v200;
        *(v149 + 128) = v199;
        *(v149 + 144) = v159;
        v160 = v202;
        *(v149 + 160) = v201;
        *(v149 + 176) = v160;
        v161 = v196;
        *(v149 + 64) = v195;
        *(v149 + 80) = v161;
        v162 = v198;
        *(v149 + 96) = v197;
        *(v149 + 112) = v162;
        v163 = v192;
        *v149 = v191;
        *(v149 + 16) = v163;
        v164 = v194;
        *(v149 + 32) = v193;
        *(v149 + 48) = v164;
        goto LABEL_116;
      }

      memcpy(v207, v209, sizeof(v207));
      sub_1CEFCCC44(v207, &unk_1EC4BFD20, &unk_1CFA05440);
      sub_1CF445058(v212, v213 | (HIBYTE(v213) << 8), v214);
      memcpy(v215, v214, 0x208uLL);
LABEL_115:
      v157 = v187;
LABEL_116:
      v178 = v184;
      sub_1CF47EB94(v157, v75, v74, v184, v182);

      memcpy(v209, v215, 0x208uLL);
      sub_1CEFCCC44(v209, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      return;
    case 2:
      v48 = v241;
      if ((v18 ^ v241))
      {
        sub_1CEFCCBDC(v14, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
        v49 = v189;
        v50 = v242;
        sub_1CEFD0988(v189, v242, v48 & 1);
        sub_1CEFD0994(v49, v50, v48 & 1);
        v51 = v187;
        v52 = *(v187 + 208);
        v209[12] = *(v187 + 192);
        v209[13] = v52;
        v209[14] = *(v187 + 224);
        v53 = *(v187 + 144);
        v209[8] = *(v187 + 128);
        v209[9] = v53;
        v54 = *(v187 + 176);
        v209[10] = *(v187 + 160);
        v209[11] = v54;
        v55 = *(v187 + 80);
        v209[4] = *(v187 + 64);
        v209[5] = v55;
        v56 = *(v187 + 112);
        v209[6] = *(v187 + 96);
        v209[7] = v56;
        v57 = *(v187 + 16);
        v209[0] = *v187;
        v209[1] = v57;
        v58 = *(v187 + 48);
        v209[2] = *(v187 + 32);
        *&v209[15] = *(v187 + 240);
        v209[3] = v58;
        sub_1CEFCCC44(v209, &unk_1EC4BFE00, &unk_1CF9FEF00);
        *v51 = 0;
        *(v51 + 8) = -1;
        *(v51 + 16) = 0;
        *(v51 + 24) = 0;
        *(v51 + 32) = 5;
        *(v51 + 40) = 0u;
        *(v51 + 56) = 0u;
        *(v51 + 72) = 0u;
        *(v51 + 88) = 0u;
        *(v51 + 104) = 0u;
        *(v51 + 120) = 0u;
        *(v51 + 136) = 0;
        *(v51 + 137) = 6;
        *(v51 + 144) = xmmword_1CF9FD920;
        *(v51 + 160) = 4;
        *(v51 + 168) = 0;
        *(v51 + 176) = 0;
        *(v51 + 184) = 0;
        *(v51 + 192) = 0xB000000000000000;
        *(v51 + 200) = 0u;
        *(v51 + 216) = 0u;
        *(v51 + 232) = 0u;
      }

      else
      {
        sub_1CEFCCBDC(v14, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
        v49 = v189;
        v50 = v242;
        sub_1CEFD0988(v189, v242, v48 & 1);
        sub_1CEFD0994(v49, v50, v48 & 1);
        v114 = v187;
        v115 = *(v187 + 408);
        v209[9] = *(v187 + 392);
        v209[10] = v115;
        v116 = *(v187 + 440);
        v209[11] = *(v187 + 424);
        v209[12] = v116;
        v117 = *(v187 + 344);
        v209[5] = *(v187 + 328);
        v209[6] = v117;
        v118 = *(v187 + 376);
        v209[7] = *(v187 + 360);
        v209[8] = v118;
        v119 = *(v187 + 280);
        v209[1] = *(v187 + 264);
        v209[2] = v119;
        v120 = *(v187 + 312);
        v209[3] = *(v187 + 296);
        v209[4] = v120;
        v209[0] = *(v187 + 248);
        sub_1CEFCCC44(v209, &unk_1EC4C4E60, &unk_1CF9FCAD0);
        *(v114 + 264) = 0;
        v51 = v114;
        *(v114 + 248) = 0;
        *(v114 + 256) = 0;
        *(v114 + 272) = 5;
        *(v114 + 280) = 0;
        *(v114 + 288) = 0;
        *(v114 + 296) = 1;
        *(v114 + 304) = 0u;
        *(v114 + 320) = 0u;
        *(v114 + 329) = 0u;
        *(v114 + 345) = 6;
        *(v114 + 352) = xmmword_1CF9FD920;
        *(v114 + 368) = 4;
        *(v114 + 376) = 0;
        *(v114 + 384) = 0;
        *(v114 + 392) = 0;
        *(v114 + 400) = 0xB000000000000000;
        *(v114 + 424) = 0u;
        *(v114 + 440) = 0u;
        *(v114 + 408) = 0u;
      }

      sub_1CEFD0994(v49, v50, v48 & 1);
      v121 = *(v51 + 464);

      *(v51 + 464) = MEMORY[0x1E69E7CC0];
      return;
    case 3:
      *(v187 + 456) = v18;
      goto LABEL_12;
    case 4:
      v76 = v187;
      v77 = *(v187 + 208);
      v209[12] = *(v187 + 192);
      v209[13] = v77;
      v209[14] = *(v187 + 224);
      v78 = *(v187 + 144);
      v209[8] = *(v187 + 128);
      v209[9] = v78;
      v79 = *(v187 + 176);
      v209[10] = *(v187 + 160);
      v209[11] = v79;
      v80 = *(v187 + 80);
      v209[4] = *(v187 + 64);
      v209[5] = v80;
      v81 = *(v187 + 112);
      v209[6] = *(v187 + 96);
      v209[7] = v81;
      v82 = *(v187 + 16);
      v209[0] = *v187;
      v209[1] = v82;
      v83 = *(v187 + 48);
      v209[2] = *(v187 + 32);
      *&v209[15] = *(v187 + 240);
      v209[3] = v83;
      v182 = v22;
      v184 = v21;
      LODWORD(v183) = v18;
      v186 = v23;
      v181 = v19;
      LODWORD(v185) = v20;
      v84 = v24;
      sub_1CEFCCBDC(v14, v208, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFCCC44(v209, &unk_1EC4BFE00, &unk_1CF9FEF00);
      *v76 = 0;
      *(v76 + 8) = -1;
      *(v76 + 16) = 0;
      *(v76 + 24) = 0;
      *(v76 + 32) = 5;
      *(v76 + 40) = 0u;
      *(v76 + 56) = 0u;
      *(v76 + 72) = 0u;
      *(v76 + 88) = 0u;
      *(v76 + 104) = 0u;
      *(v76 + 120) = 0u;
      *(v76 + 136) = 0;
      *(v76 + 137) = 6;
      v85 = *(v76 + 392);
      v86 = *(v76 + 424);
      v87 = *(v76 + 440);
      v208[10] = *(v76 + 408);
      v208[11] = v86;
      v208[12] = v87;
      v88 = *(v76 + 328);
      v89 = *(v76 + 360);
      v90 = *(v76 + 376);
      v208[6] = *(v76 + 344);
      v208[7] = v89;
      v208[8] = v90;
      v208[9] = v85;
      v91 = *(v76 + 264);
      v92 = *(v76 + 296);
      v93 = *(v76 + 312);
      v208[2] = *(v76 + 280);
      v208[3] = v92;
      v180 = xmmword_1CF9FD920;
      *(v76 + 144) = xmmword_1CF9FD920;
      *(v76 + 160) = 4;
      *(v76 + 168) = 0;
      *(v76 + 176) = 0;
      *(v76 + 184) = 0;
      *(v76 + 192) = 0xB000000000000000;
      *(v76 + 200) = 0u;
      *(v76 + 216) = 0u;
      *(v76 + 232) = 0u;
      v208[4] = v93;
      v208[5] = v88;
      v208[0] = *(v76 + 248);
      v208[1] = v91;
      sub_1CEFCCC44(v208, &unk_1EC4C4E60, &unk_1CF9FCAD0);
      *(v76 + 264) = 0;
      *(v76 + 248) = 0;
      *(v76 + 256) = 0;
      *(v76 + 272) = 5;
      *(v76 + 280) = 0;
      *(v76 + 288) = 0;
      *(v76 + 296) = 1;
      *(v76 + 304) = 0u;
      *(v76 + 320) = 0u;
      *(v76 + 329) = 0u;
      *(v76 + 345) = 6;
      *(v76 + 352) = v180;
      *(v76 + 368) = 4;
      *(v76 + 376) = 0;
      *(v76 + 384) = 0;
      *(v76 + 392) = 0;
      *(v76 + 400) = 0xB000000000000000;
      *(v76 + 424) = 0u;
      *(v76 + 440) = 0u;
      *(v76 + 408) = 0u;
      v94 = *(v76 + 464);

      *(v76 + 464) = MEMORY[0x1E69E7CC0];
      *&v207[0] = v189;
      BYTE8(v207[0]) = v242;
      BYTE9(v207[0]) = v241;
      BYTE10(v207[0]) = v183;
      BYTE11(v207[0]) = v181;
      HIDWORD(v207[0]) = v185;
      *&v207[1] = v184;
      BYTE8(v207[1]) = v182;
      BYTE9(v207[1]) = v186;
      HIWORD(v207[1]) = WORD2(v84);
      *(&v207[1] + 10) = v84;
      v207[4] = v218;
      v207[5] = v219;
      v207[6] = v220[0];
      *(&v207[6] + 15) = *(v220 + 15);
      v207[2] = v216;
      v207[3] = v217;
      BYTE3(v207[7]) = 4;
      sub_1CEFCCC44(v207, &qword_1EC4BE6D0, &qword_1CF9FE560);
      return;
    case 5:
    case 6:
    case 0xC:
      goto LABEL_12;
    case 7:
      v108 = v21;
      v109 = v22;
      v110 = v23;
      sub_1CEFCCBDC(v14, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CF7E2EF0(v108, v109 & 0xFEFF | ((v110 & 1) << 8));
      goto LABEL_36;
    case 8:
      *&v208[0] = v21;
      BYTE8(v208[0]) = v22;
      BYTE9(v208[0]) = v23 & 1;
      v44 = MEMORY[0x1EEE9AC00](v14);
      v179 = v208;
      sub_1CEFCCBDC(v44, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v45 = v187;
      sub_1CF8DF6A8(sub_1CF480978, (&v180 - 2));
      v47 = *(*(v45 + 464) + 16);
      if (v47 >= v46)
      {
        sub_1CF47EAD4(v46, v47);
        sub_1CEFD0994(*&v208[0], BYTE8(v208[0]), SBYTE9(v208[0]));
        sub_1CEFD0994(v189, v242, v241 & 1);
        return;
      }

      __break(1u);
      goto LABEL_118;
    case 9:
      v223 = v21;
      v224 = v22;
      v225 = v23;
      v226 = v24;
      v227 = WORD2(v24);
      v102 = *(v14 + 48);
      v228 = *(v14 + 32);
      v229 = v102;
      *v230 = *(v14 + 64);
      v185 = v14;
      *&v230[15] = *(v14 + 79);
      v103 = v187 + 248;
      v104 = *(v187 + 248);
      LODWORD(v184) = *(v187 + 456);
      v183 = a4;
      if (v104)
      {
        v105 = 0;
        v106 = 1;
        v107 = v104;
      }

      else
      {
        v126 = v241;
        v105 = v242;
        v107 = v189;
        sub_1CEFD0988(v189, v242, v241 & 1);
        v106 = v126;
      }

      v127 = *v187;
      v128 = *(v187 + 8);
      v129 = v104;
      sub_1CEFCCBDC(v185, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v130 = v129;
      sub_1CF445458(&v223, v103, v183, v184, v107, v105 & 0xFFFFFEFF | ((v106 & 1) << 8), v127, v128, v104);

      sub_1CEFD0994(v107, v105, v106 & 1);
      sub_1CEFCCC44(&v223, &qword_1EC4BFEE0, &qword_1CFA055B0);
      v125 = v241 & 1;
      goto LABEL_61;
    case 0xA:
      v231 = v21;
      v232 = v22;
      v233 = v23;
      v234 = v24;
      v235 = WORD2(v24);
      v30 = *(v14 + 80);
      v238 = *(v14 + 64);
      v239 = v30;
      v240[0] = *(v14 + 96);
      *(v240 + 15) = *(v14 + 111);
      v31 = *(v14 + 48);
      v236 = *(v14 + 32);
      v237 = v31;
      v32 = v187;
      LODWORD(v184) = *(v187 + 456);
      v33 = *(v187 + 8);
      if (v33 == 255)
      {
        v38 = v241;
        v37 = v242;
        v123 = v14;
        v36 = v189;
        sub_1CEFD0988(v189, v242, v241 & 1);
        v14 = v123;
        v32 = v187;
        v35 = *v187;
        v33 = *(v187 + 8);
        v34 = v38;
      }

      else
      {
        v34 = 0;
        v35 = *v187;
        v36 = *v187;
        v37 = *(v187 + 8);
        v38 = v241;
      }

      v124 = *(v32 + 248);
      sub_1CEFCCBDC(v14, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CF446A64(&v231, v32, v185, v184, v36, v37 & 0xFFFFFEFF | ((v34 & 1) << 8), v35, v33, v124);
      sub_1CEFD0994(v36, v37, v34 & 1);
      sub_1CEFCCC44(&v231, &qword_1EC4BFEE8, &qword_1CFA055B8);
      v125 = v38 & 1;
LABEL_61:
      sub_1CEFD0994(v189, v242, v125);
      return;
    case 0xB:
      v39 = *(v187 + 240);
      if (v22)
      {
        v40 = v39 & ~v21;
        v41 = v189;
        v43 = v241;
        v42 = v242;
LABEL_45:
        *(v187 + 240) = v40;
        goto LABEL_46;
      }

      v111 = (*(v187 + 240) & 3) != 0 && (v21 & 3) != 0;
      if (v111)
      {
        v39 &= 0xFFFFFFFFFFFFFFFCLL;
      }

      v112 = (v39 & v21);
      v41 = v189;
      v43 = v241;
      v42 = v242;
      if (v111 || v112 != v21)
      {
        if (v112 == v21)
        {
          v113 = 0;
        }

        else
        {
          v113 = v21;
        }

        v40 = v113 | v39;
        goto LABEL_45;
      }

LABEL_46:
      sub_1CEFCCBDC(v14, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFD0994(v41, v42, v43 & 1);
      return;
    case 0xD:
      LODWORD(v183) = v18;
      v95 = v187;
      if (*(v187 + 504) == (v18 & 1))
      {
        sub_1CEFCCBDC(v14, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
        v100 = v241;
        v97 = v242;
        v99 = v189;
        goto LABEL_56;
      }

      v185 = v14;
      Strong = swift_weakLoadStrong();
      v97 = v242;
      if (Strong)
      {
        v98 = Strong;
        v99 = v189;
        *v16 = v189;
        v16[8] = v97;
        v100 = v241;
        v16[9] = v241 & 1;
        swift_storeEnumTagMultiPayload();
        v101 = *(*v98 + 312);
        sub_1CEFCCBDC(v185, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
        sub_1CEFD0988(v99, v97, v100 & 1);
        v101(v16);

        sub_1CEFCCC44(v16, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v95 = v187;
LABEL_56:
        sub_1CEFD0994(v99, v97, v100 & 1);
        *(v95 + 504) = v183 & 1;
        return;
      }

LABEL_118:
      __break(1u);
      return;
    case 0xE:
      v27 = v22 | (v23 << 8) | (v24 << 16);
      v28 = *(v187 + 512);
      if ((v21 & ~v28) != 0)
      {
        v29 = v21;
      }

      else
      {
        v29 = 0;
      }

      *(v187 + 512) = (v29 | v28) & ~v27;
      goto LABEL_12;
    case 0xF:
      v59 = v187;
      v60 = *(v187 + 8);
      if (v60 == 255)
      {
        goto LABEL_12;
      }

      v61 = *v187;
      v62 = *(v187 + 137);
      if (v19)
      {
        goto LABEL_21;
      }

      if (*(v187 + 137) <= 2u)
      {
        if (*(v187 + 137))
        {
          if (v62 == 1)
          {
            if (v18 != 2)
            {
              goto LABEL_12;
            }
          }

          else if (v18 != 3)
          {
            goto LABEL_12;
          }
        }

        else if (v18 > 6 || ((1 << v18) & 0x4E) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      if (*(v187 + 137) > 4u)
      {
        if (v62 != 5)
        {
          if (v18 && v18 != 5)
          {
            goto LABEL_12;
          }

          goto LABEL_21;
        }

        if (!v18)
        {
          goto LABEL_21;
        }

        goto LABEL_85;
      }

      if (v62 != 3)
      {
LABEL_85:
        if (v18 != 6)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      if ((v18 | 2) != 6)
      {
LABEL_12:
        sub_1CEFCCBDC(v14, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
        sub_1CEFD0994(v189, v242, v241 & 1);
        return;
      }

LABEL_21:
      v185 = v14;
      *(v187 + 137) = v18;
      v63 = *(v59 + 248);
      v64 = v18;
      v65 = swift_weakLoadStrong();
      if (v65)
      {
        v66 = v65;
        *v13 = v61;
        v13[8] = v60;
        v13[9] = 0;
        if (v63)
        {
          v67 = 256;
        }

        else
        {
          v67 = -256;
        }

        *(v13 + 2) = v63;
        *(v13 + 12) = v67;
        v13[26] = v62;
        v68 = v64;
        v13[27] = v64;
        swift_storeEnumTagMultiPayload();
        v69 = *(*v66 + 312);
        v70 = v63;
        sub_1CEFCCBDC(v185, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
        v71 = v70;
        v69(v13);

        sub_1CEFCCC44(v13, &qword_1EC4BE710, &qword_1CF9FE5A8);

        v64 = v68;
      }

      else
      {
        sub_1CEFCCBDC(v185, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
      }

      v132 = v241;
      v131 = v242;
      v133 = v189;
      if (v64 == 6)
      {
        *(v187 + 138) = 0;
      }

      sub_1CEFD0994(v133, v131, v132 & 1);
      return;
    case 0x10:
      *(v187 + 496) = v21;
      goto LABEL_4;
    default:
      *(v187 + 456) = v18;
LABEL_4:
      sub_1CEFCCBDC(v14, v209, &qword_1EC4BE6D0, &qword_1CF9FE560);
LABEL_36:
      sub_1CEFD0994(v189, v242, v241 & 1);
      return;
  }
}

void sub_1CF44961C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v9 = *(a2 + 137);
  v10 = sub_1CF9E5CF8();
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a3;
  v64 = a3;
  v54 = a4;
  v65 = a4;
  v14 = *(a1 + 16);
  v63 = *a2;
  v15 = a2[2];
  memcpy(v62, a2 + 3, sizeof(v62));
  v67 = *a2;
  memcpy(v69, a2 + 3, sizeof(v69));
  v68 = v15;
  if (sub_1CF08B99C(&v67) == 1)
  {
    v59 = v63;
    v60 = v15;
    memcpy(v61, v62, sizeof(v61));
    sub_1CEFCCBDC(a2, &v57, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFCCC44(&v59, &unk_1EC4BFC20, &unk_1CFA0A290);
    if ((v14 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

  v59 = v63;
  v60 = v15;
  memcpy(v61, v62, sizeof(v61));
  sub_1CEFCCBDC(a2, &v57, &unk_1EC4BFC20, &unk_1CFA0A290);
  sub_1CEFCCC44(&v59, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  if ((v14 & 0x10) != 0)
  {
    if ((v15 & 0x10) != 0)
    {
      return;
    }

LABEL_19:
    memcpy(v66, a2, sizeof(v66));
    v29 = sub_1CF08B99C(v66);
    v30 = 0x2000000;
    v31 = 0x40000000;
    if (v9)
    {
      v31 = 0x2000000;
    }

    if (v29 != 1)
    {
      v30 = v31;
    }

    v52 = v30;
    v32 = *(a1 + 8);
    if (v32 != 255)
    {
      v33 = *a1;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v35 = v34;
      v16 = *(v55 + 8);
      v36 = v10;
      (v16)(v13, v10);
      v37 = v35 * 1000000000.0;
      if (COERCE__INT64(fabs(v35 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v37 > -9.22337204e18)
      {
        if (v37 < 9.22337204e18)
        {
          v38 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA00, &qword_1CF9FADC8);
          a1 = swift_allocObject();
          *(a1 + 152) = v32;
          *(a1 + 16) = 0u;
          *(a1 + 32) = 0u;
          *(a1 + 48) = 1;
          *(a1 + 56) = 0u;
          *(a1 + 72) = 0u;
          *(a1 + 88) = 0;
          *(a1 + 120) = 0;
          *(a1 + 128) = v38;
          *(a1 + 136) = v52;
          *(a1 + 144) = v33;
          *(a1 + 96) = xmmword_1CFA04F00;
          *(a1 + 112) = 0;
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v33 = Strong;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v41 = v40;
            (v16)(v13, v36);
            v42 = v41 * 1000000000.0;
            v4 = v56;
            if (COERCE__INT64(fabs(v41 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v42 > -9.22337204e18)
              {
                if (v42 < 9.22337204e18)
                {
                  sub_1CF902E70(a1, v42, v53, v54);

                  return;
                }

                goto LABEL_57;
              }

LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              swift_once();
              goto LABEL_37;
            }

LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if ((v15 & 0x10) == 0)
  {
    return;
  }

  v16 = v14;
  if ((v14 & 5) != 0)
  {
    return;
  }

  if (*(a1 + 456) != 1 || (v17 = *(a1 + 8), v17 == 255))
  {
    v4 = v56;
    goto LABEL_34;
  }

  v18 = v10;
  v19 = *a1;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v21 = v20;
  v22 = *(v55 + 8);
  v55 += 8;
  v22(v13, v18);
  v23 = v21 * 1000000000.0;
  if (COERCE__INT64(fabs(v21 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_60;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v52 = v22;
  if (v23 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
  v25 = swift_allocObject();
  *(v25 + 152) = v17;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 1;
  *(v25 + 56) = 0u;
  *(v25 + 72) = 0u;
  *(v25 + 88) = 0;
  *(v25 + 120) = 0;
  *(v25 + 128) = v24;
  *(v25 + 136) = 0x4000000;
  *(v25 + 144) = v19;
  *(v25 + 96) = xmmword_1CFA04E20;
  *(v25 + 112) = 0;
  if (!swift_weakLoadStrong())
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return;
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v27 = v26;
  v52(v13, v18);
  v28 = v27 * 1000000000.0;
  v4 = v56;
  if (COERCE__INT64(fabs(v27 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_1CF902E70(v25, v28, v53, v54);

  if (v4)
  {
    return;
  }

LABEL_34:
  v33 = *(a1 + 248);
  if (*(a1 + 8) != 255 && v33)
  {
    goto LABEL_39;
  }

  if (qword_1EDEABDE0 != -1)
  {
    goto LABEL_58;
  }

LABEL_37:
  *(a1 + 24) |= qword_1EDEABDE8 & 0xFFFFFFFFFF7FFFEFLL;
  if ((v16 & 8) != 0)
  {
    *(a1 + 16) = v16 & 0xFFFFFFFFFFFFFFE2;
  }

LABEL_39:
  v43 = *(a1 + 456);
  if (v43 != 1)
  {
    if (v43 != 4)
    {
      goto LABEL_44;
    }

    __break(1u);
  }

  v44 = *(a1 + 24);
  if ((v44 & 0x100000000000) == 0)
  {
    *(a1 + 24) = v44 | 0x100000000000;
  }

LABEL_44:
  v45 = *(a1 + 8);
  if (v45 == 255)
  {
    goto LABEL_49;
  }

  v57 = *a1;
  v58 = v45;
  v46 = swift_weakLoadStrong();
  if (!v46)
  {
    goto LABEL_67;
  }

  v47 = *(v46 + 24);

  (*(*v47 + 392))(&v57, &v64, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
  if (v4)
  {

    return;
  }

LABEL_49:
  if (v33)
  {
    v57 = v33;
    v48 = swift_weakLoadStrong();
    if (v48)
    {
      v49 = *(v48 + 24);
      v50 = v33;

      (*(*v49 + 400))(&v57, &v64, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);

      return;
    }

    goto LABEL_69;
  }
}

void sub_1CF449E04(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v202 = v1;
  v203 = v2;
  v5 = v4;
  v7 = v6;
  LODWORD(v200) = v8;
  v198 = v10;
  v199 = v9;
  v11 = v3;
  v201 = v12;
  memcpy(v237, v12, sizeof(v237));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v195 = *(v13 - 8);
  v196 = v13;
  v14 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v192 = (&v173 - v15);
  v16 = sub_1CF9E5CF8();
  v193 = *(v16 - 8);
  v17 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDE8, &qword_1CFA054E8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v173 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDF0, &unk_1CFA054F0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v173 - v26;
  v223 = v7;
  v224 = v5;
  memcpy(v234, v11, sizeof(v234));
  v28 = v203;
  sub_1CF44C2CC();
  if (v28)
  {
    return;
  }

  v190 = v27;
  v191 = v23;
  v197 = v7;
  v194 = v5;
  v188 = v16;
  v189 = v19;
  v29 = v201;
  if (v200)
  {
    sub_1CF44961C(v11, v201, v197, v194);
  }

  if (!swift_weakLoadStrong())
  {
    goto LABEL_206;
  }

  v30 = sub_1CF44C598(v29);
  v203 = v28;
  v184 = v30;

  v200 = v11;
  memcpy(v233, v11, sizeof(v233));
  v31 = v190;
  (*(v195 + 56))(v190, 1, 1, v196);
  sub_1CEFCCBDC(v233, v222, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  if (qword_1EDEA72F0 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDEBB8C0;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_207;
  }

  v33 = v233[18];
  v34 = v233[19];
  v35 = LOBYTE(v233[20]);
  v187 = v32;
  if (LOBYTE(v233[20]))
  {
    sub_1CF03C530(v233[18], v233[19], v233[20]);

    v36 = v33;
    v37 = v34;
    LODWORD(v195) = v35;
  }

  else
  {
    v183 = 0;
    v38 = v233[18];
    v39 = v233[18] & v32;
    v185 = v233[18];
    v186 = v233[19];
    if ((v233[18] & v32) != 0)
    {

      v40 = v38;
      while (1)
      {
        v41 = v39 & -v39;
        v42 = v203;
        sub_1CF45AD80(v222);
        v203 = v42;
        if (v42)
        {
          break;
        }

        v44 = v43;
        sub_1CF47FDFC(v222[0], LOWORD(v222[1]));
        v45 = -1;
        if ((v44 & ((v40 & v41) != 0)) != 0)
        {
          v45 = ~v41;
        }

        v40 &= v45;
        v46 = v39 == v41;
        v39 ^= v41;
        v31 = v190;
        if (v46)
        {
          goto LABEL_22;
        }
      }

      sub_1CF03D7A8(v185, v186, 0);

      sub_1CEFCCC44(v31, &unk_1EC4BFDF0, &unk_1CFA054F0);
      v75 = &qword_1EC4BFBC0;
      v76 = &unk_1CF9FCAC0;
      v77 = v233;
      goto LABEL_59;
    }

    sub_1CF03C530(v233[18], v186, 0);
    v40 = v38;
LABEL_22:

    LODWORD(v195) = v40 == 0;
    v33 = v185;
    v34 = v186;
    if (v40)
    {
      v36 = v40;
    }

    else
    {
      v36 = v186;
    }

    if (v40)
    {
      v37 = v186;
    }

    else
    {
      v37 = 0;
    }

    LOBYTE(v35) = v183;
  }

  sub_1CEFCCC44(v31, &unk_1EC4BFDF0, &unk_1CFA054F0);
  sub_1CEFCCC44(v233, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CF03D7A8(v33, v34, v35);
  v47 = v200;
  v200[18] = v36;
  v47[19] = v37;
  *(v47 + 160) = v195;
  memcpy(v232, v47, sizeof(v232));
  sub_1CF7F62D0(v222);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  (*(*(v48 - 8) + 56))(v191, 1, 1, v48);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_208:
    __break(1u);
    goto LABEL_209;
  }

  (*(*Strong + 176))(Strong);

  memcpy(v231, v222, sizeof(v231));
  v50 = v231[13];
  v190 = v231[14];
  v51 = LOBYTE(v231[15]);
  v52 = v194;
  v182 = v36;
  if (!LOBYTE(v231[15]))
  {
    v54 = v231[13] & v187;
    if ((v231[13] & v187) == 0)
    {

      v55 = v50;
LABEL_42:

      v51 = v55 == 0;
      v62 = v190;
      if (v55)
      {
        v53 = v55;
      }

      else
      {
        v53 = v190;
      }

      if (!v55)
      {
        v62 = 0;
      }

      v190 = v62;
      v52 = v194;
      goto LABEL_48;
    }

    v187 = v50;
    v55 = v50;
    while (1)
    {
      v56 = v54 & -v54;
      v57 = v191;
      v58 = v203;
      sub_1CF44F5F8(v220);
      v203 = v58;
      if (v58)
      {
        break;
      }

      v60 = v59;
      sub_1CF4804C0(v220[0], LOWORD(v220[1]));
      if ((v60 & ((v55 & v56) != 0)) != 0)
      {
        v61 = ~v56;
      }

      else
      {
        v61 = -1;
      }

      v55 &= v61;
      v46 = v54 == v56;
      v54 ^= v56;
      if (v46)
      {
        goto LABEL_42;
      }
    }

    sub_1CF03D7A8(v187, v190, 0);

    sub_1CEFCCC44(v57, &qword_1EC4BFDE8, &qword_1CFA054E8);
    memcpy(v221, v222, sizeof(v221));
    v75 = &unk_1EC4BFC90;
    v76 = &unk_1CFA053E0;
    v77 = v221;
LABEL_59:
    sub_1CEFCCC44(v77, v75, v76);
    return;
  }

  v53 = v231[13];
  sub_1CF03C530(v231[13], v190, v231[15]);

LABEL_48:
  v63 = *&v232[248];
  v181 = *&v232[256];
  v235 = *&v232[352];
  v236 = v232[368];
  v64 = *&v232[472];
  v65 = *&v232[480];
  v187 = *&v232[16];
  v185 = *&v232[264];
  v186 = *&v232[24];
  v183 = v232[32];
  v180 = v232[137];
  sub_1CEFCCC44(v191, &qword_1EC4BFDE8, &qword_1CFA054E8);
  memcpy(v221, v222, sizeof(v221));
  sub_1CEFCCC44(v221, &unk_1EC4BFC90, &unk_1CFA053E0);
  sub_1CF480580(&v235);
  v66 = v200;
  v68 = v189;
  v67 = v190;
  v200[44] = v53;
  v66[45] = v67;
  *(v66 + 368) = v51;
  v69 = v53;
  if (!v195)
  {
    if ((v182 & 0x100) != 0)
    {
      if (v64 >= 0x2000000000000000)
      {
        v64 = 0x2000000000000000;
      }

      v71 = v199;
      v70 = v200;
      v200[59] = v64;
      v70[60] = v65;
      if (v71)
      {
        memcpy(v220, v70, sizeof(v220));
        v72 = swift_weakLoadStrong();
        if (!v72)
        {
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

        v63 = v220[31];
        *&v204[0] = v197;
        BYTE8(v204[0]) = v52;
        if (LOBYTE(v220[1]) == 255)
        {
        }

        else
        {
          v73 = v220[31];
          v191 = v72;
          v218 = v220[0];
          v219 = v220[1];
          v74 = v201;
          memcpy(v216, v201, sizeof(v216));
          memcpy(v217, v201, sizeof(v217));
          if (sub_1CF08B99C(v217) == 1)
          {
            memcpy(v214, v216, 0x208uLL);
            sub_1CEFCCBDC(v74, v213, &unk_1EC4BFC20, &unk_1CFA0A290);
            sub_1CEFCCC44(v214, &unk_1EC4BFC20, &unk_1CFA0A290);

            v68 = v189;
          }

          else
          {
            v78 = v51;
            v212[12] = *&v216[192];
            v212[13] = *&v216[208];
            v212[14] = *&v216[224];
            *&v212[15] = *&v216[240];
            v212[8] = *&v216[128];
            v212[9] = *&v216[144];
            v212[10] = *&v216[160];
            v212[11] = *&v216[176];
            v212[4] = *&v216[64];
            v212[5] = *&v216[80];
            v212[6] = *&v216[96];
            v212[7] = *&v216[112];
            v212[0] = *v216;
            v212[1] = *&v216[16];
            v212[2] = *&v216[32];
            v212[3] = *&v216[48];
            memcpy(v214, v216, 0x208uLL);
            sub_1CEFCCBDC(v74, v213, &unk_1EC4BFC20, &unk_1CFA0A290);
            sub_1CEFCCBDC(v220, v213, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            sub_1CEFCCBDC(v212, v213, &unk_1EC4BFE00, &unk_1CF9FEF00);
            sub_1CEFCCC44(v214, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            v79 = v212[9];
            v80 = LOBYTE(v212[10]);
            sub_1CF03C530(*&v212[9], *(&v212[9] + 1), v212[10]);
            sub_1CEFCCC44(v212, &unk_1EC4BFE00, &unk_1CF9FEF00);
            if (v80)
            {
              sub_1CF03D7A8(v79, *(&v79 + 1), v80);
            }

            else
            {
              sub_1CF03D7A8(v79, *(&v79 + 1), 0);
              if ((v79 & 0x100) != 0)
              {
                v146 = *(v191 + 3);
                v147 = v203;
                (*(*v146 + 392))(&v218, v204, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
                if (v147)
                {
                  goto LABEL_161;
                }

                v203 = 0;
                if (v73)
                {
                  *&v213[0] = v73;
                  v155 = *(*v146 + 400);
                  v140 = v73;
                  v156 = v203;
                  v155(v213, v204, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
                  v203 = v156;
                  if (v156)
                  {
                    goto LABEL_168;
                  }
                }
              }
            }

            sub_1CEFCCC44(v220, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

            v68 = v189;
            v51 = v78;
            v52 = v194;
          }

          v63 = v73;
        }

        v186 = v220[3];
        v187 = v220[2];
        v181 = v220[32];
        v185 = v220[33];
        v64 = v220[59];
        v65 = v220[60];
        v183 = LOBYTE(v220[4]);
        v180 = BYTE1(v220[17]);
      }
    }

    if ((v182 & 0x200) != 0)
    {
      v190 = v63;
      v81 = v201;
      memcpy(v217, v201, sizeof(v217));
      memcpy(v220, v201, sizeof(v220));
      if (sub_1CF08B99C(v220) == 1)
      {
        memcpy(v216, v217, sizeof(v216));
        sub_1CEFCCBDC(v81, v214, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v216, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      else
      {
        LODWORD(v191) = v51;
        v213[12] = *&v217[192];
        v213[13] = *&v217[208];
        v213[14] = *&v217[224];
        *&v213[15] = *&v217[240];
        v213[8] = *&v217[128];
        v213[9] = *&v217[144];
        v213[10] = *&v217[160];
        v213[11] = *&v217[176];
        v213[4] = *&v217[64];
        v213[5] = *&v217[80];
        v213[6] = *&v217[96];
        v213[7] = *&v217[112];
        v213[0] = *v217;
        v213[1] = *&v217[16];
        v213[2] = *&v217[32];
        v213[3] = *&v217[48];
        memcpy(v216, v217, sizeof(v216));
        sub_1CEFCCBDC(v81, v214, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCBDC(v213, v214, &unk_1EC4BFE00, &unk_1CF9FEF00);
        sub_1CEFCCC44(v216, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v82 = v213[9];
        v83 = LOBYTE(v213[10]);
        sub_1CF03C530(*&v213[9], *(&v213[9] + 1), v213[10]);
        sub_1CEFCCC44(v213, &unk_1EC4BFE00, &unk_1CF9FEF00);
        if (v83)
        {
          sub_1CF03D7A8(v82, *(&v82 + 1), v83);
          v51 = v191;
          v52 = v194;
        }

        else
        {
          sub_1CF03D7A8(v82, *(&v82 + 1), 0);
          v51 = v191;
          v52 = v194;
          if ((v82 & 0x200) != 0)
          {
LABEL_75:
            v68 = v189;
            v63 = v190;
            goto LABEL_76;
          }
        }
      }

      v84 = swift_weakLoadStrong();
      if (!v84)
      {
LABEL_215:
        __break(1u);
        goto LABEL_216;
      }

      v85 = *(v84 + 32);

      v86 = *(v85 + 16);

      (*(*v86 + 920))(v87);

      goto LABEL_75;
    }
  }

LABEL_76:
  if (v51 || (v69 & 0x100) == 0)
  {
    v90 = v183;
    goto LABEL_81;
  }

  v88 = v63;
  v89 = v201;
  memcpy(v217, v201, sizeof(v217));
  memcpy(v220, v201, sizeof(v220));
  if (sub_1CF08B99C(v220) == 1)
  {
    memcpy(v216, v217, sizeof(v216));
    sub_1CEFCCBDC(v89, v214, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFCCC44(v216, &unk_1EC4BFC20, &unk_1CFA0A290);
    v68 = v189;
  }

  else
  {
    LODWORD(v191) = 0;
    v213[10] = *&v217[408];
    v213[11] = *&v217[424];
    v213[12] = *&v217[440];
    v213[6] = *&v217[344];
    v213[7] = *&v217[360];
    v213[9] = *&v217[392];
    v213[8] = *&v217[376];
    v213[0] = *&v217[248];
    v213[1] = *&v217[264];
    v213[2] = *&v217[280];
    v213[3] = *&v217[296];
    v213[5] = *&v217[328];
    v213[4] = *&v217[312];
    memcpy(v216, v217, sizeof(v216));
    sub_1CEFCCBDC(v89, v214, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFCCBDC(v213, v214, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    sub_1CEFCCC44(v216, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v92 = *(&v213[6] + 1);
    v93 = *&v213[7];
    v94 = BYTE8(v213[7]);
    sub_1CF03C530(*(&v213[6] + 1), *&v213[7], BYTE8(v213[7]));
    sub_1CEFCCC44(v213, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    if (v94)
    {
      sub_1CF03D7A8(v92, v93, v94);
      v52 = v194;
    }

    else
    {
      sub_1CF03D7A8(v92, v93, 0);
      v52 = v194;
      if ((v92 & 0x100) != 0)
      {
        v90 = v183;
        v91 = v200;
        v103 = v188;
        v68 = v189;
        v51 = v191;
        v63 = v88;
        goto LABEL_97;
      }
    }

    v68 = v189;
    v51 = v191;
  }

  v95 = 0x2000000000000000;
  if (v64 < 0x2000000000000000)
  {
    v95 = v64;
  }

  v96 = v200;
  v200[59] = v95;
  v96[60] = v65;
  v91 = v96;
  v97 = *(v96 + 8);
  v63 = v88;
  if (v97 == 255)
  {
    v90 = v183;
    goto LABEL_96;
  }

  v90 = v183;
  if (!v88)
  {
LABEL_96:
    v103 = v188;
    goto LABEL_97;
  }

  v98 = *v96;
  *&v204[0] = v88;
  if (v183 == 5 || v180 != 6)
  {
LABEL_81:
    v91 = v200;
    goto LABEL_96;
  }

  memcpy(v230, v200, sizeof(v230));
  v99 = v88;
  sub_1CF7F62D0(v217);
  v100 = swift_weakLoadStrong();
  if (!v100)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  v101 = (*(*v100 + 176))(v100);

  memcpy(v229, v217, sizeof(v229));
  v102 = v203;
  sub_1CF3F9E7C(v101, 1, v212);
  v203 = v102;
  if (v102)
  {

    memcpy(v216, v217, sizeof(v216));
    sub_1CEFCCC44(v216, &unk_1EC4BFC90, &unk_1CFA053E0);

    return;
  }

  v63 = v230[31];
  v181 = v230[32];
  v187 = v230[2];
  v185 = v230[33];
  v186 = v230[3];
  v90 = LOBYTE(v230[4]);
  memcpy(v216, v217, sizeof(v216));
  sub_1CEFCCC44(v216, &unk_1EC4BFC90, &unk_1CFA053E0);

  v138 = LOBYTE(v212[0]);
  if (LOBYTE(v212[0]) == 89)
  {

    v91 = v200;
    v103 = v188;
    v68 = v189;
    v52 = v194;
    goto LABEL_97;
  }

  v190 = v63;
  v142 = swift_weakLoadStrong();
  if (!v142)
  {
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  v143 = *(v142 + 24);

  v144 = v203;
  v145 = (*(*v143 + 376))(v204, v138, 0, 1, &v223, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v203 = v144;
  if (v144)
  {

    goto LABEL_6;
  }

  v148 = v145;

  if (!*(v148 + 16))
  {

    LODWORD(v182) = 0;
    v151 = 0;
    v178 = 0;
    v179 = 0;
    v154 = 0;
    v180 = 0;
    v176 = 0u;
    v177 = 0u;
    v175 = 0u;
    v91 = v200;
    v103 = v188;
    goto LABEL_186;
  }

  LODWORD(v191) = v51;
  v149 = *(v148 + 48);
  v214[0] = *(v148 + 32);
  v214[1] = v149;
  v150 = *(v148 + 80);
  v214[2] = *(v148 + 64);
  v214[3] = v150;
  v214[4] = *(v148 + 96);
  v151 = *(v148 + 112);
  *&v214[5] = v151;
  v180 = BYTE8(v214[0]);
  LODWORD(v182) = BYTE9(v214[0]);
  v174 = HIWORD(v214[0]);
  v152 = *(v214 + 10);
  v175 = v214[2];
  v178 = v150;
  v179 = *&v214[0];
  v153 = *(&v150 + 1);
  v176 = v214[4];
  v177 = v214[1];
  sub_1CEFCCBDC(v214, v213, &qword_1EC4BE5B8, &qword_1CF9FDE98);

  if (v153 != 1)
  {
    v157 = v153;

    sub_1CF1E53F8(v179, v180, v182 & 1);
    v182 = v153;
    if (!v153)
    {
LABEL_201:

      v91 = v200;
      v103 = v188;
      v68 = v189;
      v51 = v191;
      goto LABEL_202;
    }

    if (v183 <= 1)
    {
      if (v183)
      {
        v167 = swift_weakLoadStrong();
        if (!v167)
        {
LABEL_221:
          __break(1u);
          return;
        }

        v159 = v167;
        v168 = v192;
        *v192 = v98;
        *(v168 + 8) = v97;
        *(v168 + 9) = 0;
        v168[2] = v182;
        *(v168 + 24) = 0;
LABEL_200:
        v169 = v192;
        swift_storeEnumTagMultiPayload();
        v170 = *(*v159 + 312);
        v171 = v182;
        v172 = v182;
        v170(v169);

        sub_1CEFCCC44(v169, &qword_1EC4BE710, &qword_1CF9FE5A8);
        goto LABEL_201;
      }
    }

    else
    {
      if (v183 == 2)
      {
        sub_1CF24CD3C();
        swift_allocError();
        v164 = v163;
        *&v214[0] = 0;
        *(&v214[0] + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA459B0);
        memcpy(v228, v200, sizeof(v228));
        v165 = sub_1CF38B634();
        MEMORY[0x1D3868CC0](v165);

        v166 = *(&v214[0] + 1);
        *v164 = *&v214[0];
        *(v164 + 8) = v166;
        *(v164 + 48) = 8;
        swift_willThrow();

        return;
      }

      if (v183 == 3)
      {
        v158 = swift_weakLoadStrong();
        if (!v158)
        {
LABEL_220:
          __break(1u);
          goto LABEL_221;
        }

        v159 = v158;
        v160 = v192;
        *v192 = v98;
        *(v160 + 8) = v97;
        *(v160 + 9) = 0;
        v160[2] = v182;
        *(v160 + 24) = 1;
        goto LABEL_200;
      }
    }

    v161 = swift_weakLoadStrong();
    if (!v161)
    {
LABEL_219:
      __break(1u);
      goto LABEL_220;
    }

    v159 = v161;
    v162 = v192;
    *v192 = v98;
    *(v162 + 8) = v97;
    *(v162 + 9) = 0;
    v162[2] = v182;
    goto LABEL_200;
  }

  v154 = v152 | (v174 << 32);
  v91 = v200;
  v103 = v188;
  v51 = v191;
LABEL_186:

  *&v214[0] = v179;
  BYTE8(v214[0]) = v180;
  BYTE9(v214[0]) = v182;
  HIWORD(v214[0]) = WORD2(v154);
  *(v214 + 10) = v154;
  v214[1] = v177;
  v214[2] = v175;
  *&v214[3] = v178;
  *(&v214[3] + 1) = 1;
  v214[4] = v176;
  *&v214[5] = v151;
  sub_1CEFCCC44(v214, &unk_1EC4BFE10, &unk_1CFA05500);
  v68 = v189;
LABEL_202:
  v52 = v194;
  v63 = v190;
LABEL_97:
  if (!v199)
  {
    v108 = v181;
    if (!v198)
    {
      goto LABEL_126;
    }

LABEL_112:
    memcpy(v227, v91, sizeof(v227));
    sub_1CF7F62D0(v217);
    v111 = v201;
    memcpy(v225, v201, sizeof(v225));
    if (sub_1CF08B99C(v225) == 1)
    {
      sub_1CF095754(v216);
    }

    else
    {
      memcpy(v226, v237, sizeof(v226));
      memcpy(v213, v237, 0x208uLL);
      sub_1CEFCCBDC(v213, v216, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CF7F62D0(v214);
      sub_1CEFCCC44(v111, &unk_1EC4BFC20, &unk_1CFA0A290);
      memcpy(v216, v214, sizeof(v216));
      nullsub_1(v216);
    }

    memcpy(v220, v216, sizeof(v220));
    v112 = swift_weakLoadStrong();
    if (!v112)
    {
      goto LABEL_212;
    }

    v113 = (*(*v112 + 176))(v112);

    v114 = *v217;
    v115 = *&v217[208];
    v116 = v217[216];
    v218 = v197;
    v219 = v194;
    if (*v217)
    {
      LODWORD(v191) = v51;
      v215 = *v217;
      memcpy(v214, v220, 0x208uLL);
      memcpy(v216, v220, sizeof(v216));
      if (sub_1CF08B99C(v216) == 1)
      {
        memcpy(v213, v214, 0x208uLL);
        sub_1CEFCCBDC(v220, v212, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v213, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_119:
        sub_1CEFCCC44(v220, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v91 = v200;
LABEL_124:
        v51 = v191;
        goto LABEL_125;
      }

      v201 = v115;
      v209 = v214[10];
      v210 = v214[11];
      v211 = v214[12];
      v205 = v214[6];
      v206 = v214[7];
      v207 = v214[8];
      v208 = v214[9];
      v204[2] = v214[2];
      v204[3] = v214[3];
      v204[4] = v214[4];
      v204[5] = v214[5];
      v204[0] = v214[0];
      v204[1] = v214[1];
      memcpy(v213, v214, 0x208uLL);
      v117 = v114;
      sub_1CEFCCBDC(v220, v212, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCBDC(v204, v212, &unk_1EC4C4E60, &unk_1CF9FCAD0);
      sub_1CEFCCC44(v213, &unk_1EC4BFC90, &unk_1CFA053E0);
      v118 = *(&v205 + 1);
      v119 = v206;
      v120 = BYTE8(v206);
      sub_1CF03C530(*(&v205 + 1), v206, BYTE8(v206));
      sub_1CEFCCC44(v204, &unk_1EC4C4E60, &unk_1CF9FCAD0);
      if (v120)
      {
        sub_1CF03D7A8(v118, v119, v120);

        sub_1CEFCCC44(v220, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v91 = v200;
        v103 = v188;
        goto LABEL_124;
      }

      sub_1CF03D7A8(v118, v119, 0);
      v103 = v188;
      if ((v118 & 0x100) == 0)
      {

        goto LABEL_119;
      }

      v136 = *(v113 + 24);
      v137 = v203;
      (*(*v136 + 392))(&v215, &v218, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      v51 = v191;
      if (v137)
      {

        sub_1CEFCCC44(v220, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v212, v217, 0x208uLL);
        sub_1CEFCCC44(v212, &unk_1EC4BFC90, &unk_1CFA053E0);
        return;
      }

      if (v116 != 255)
      {
        *&v212[0] = v201;
        BYTE8(v212[0]) = v116;
        (*(*v136 + 400))(v212, &v218, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      }

      v203 = 0;
    }

    else
    {
    }

    sub_1CEFCCC44(v220, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v91 = v200;
LABEL_125:
    v63 = v227[31];
    v108 = v227[32];
    v187 = v227[2];
    v185 = v227[33];
    v186 = v227[3];
    v90 = LOBYTE(v227[4]);
    memcpy(v216, v217, sizeof(v216));
    sub_1CEFCCC44(v216, &unk_1EC4BFC90, &unk_1CFA053E0);
    v68 = v189;
    goto LABEL_126;
  }

  memcpy(v220, v91, sizeof(v220));
  v104 = swift_weakLoadStrong();
  if (!v104)
  {
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  v63 = v220[31];
  *&v204[0] = v197;
  BYTE8(v204[0]) = v52;
  v105 = v201;
  if (LOBYTE(v220[1]) == 255)
  {

    goto LABEL_111;
  }

  v106 = v220[31];
  v107 = v104;
  v218 = v220[0];
  v219 = v220[1];
  memcpy(v216, v201, sizeof(v216));
  memcpy(v217, v201, sizeof(v217));
  if (sub_1CF08B99C(v217) != 1)
  {
    LODWORD(v191) = v51;
    v212[12] = *&v216[192];
    v212[13] = *&v216[208];
    v212[14] = *&v216[224];
    *&v212[15] = *&v216[240];
    v212[8] = *&v216[128];
    v212[9] = *&v216[144];
    v212[10] = *&v216[160];
    v212[11] = *&v216[176];
    v212[4] = *&v216[64];
    v212[5] = *&v216[80];
    v212[6] = *&v216[96];
    v212[7] = *&v216[112];
    v212[0] = *v216;
    v212[1] = *&v216[16];
    v212[2] = *&v216[32];
    v212[3] = *&v216[48];
    memcpy(v214, v216, 0x208uLL);
    sub_1CEFCCBDC(v105, v213, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFCCBDC(v220, v213, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCBDC(v212, v213, &unk_1EC4BFE00, &unk_1CF9FEF00);
    sub_1CEFCCC44(v214, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v109 = v212[9];
    v110 = LOBYTE(v212[10]);
    sub_1CF03C530(*&v212[9], *(&v212[9] + 1), v212[10]);
    sub_1CEFCCC44(v212, &unk_1EC4BFE00, &unk_1CF9FEF00);
    if (v110)
    {
      sub_1CF03D7A8(v109, *(&v109 + 1), v110);
      sub_1CEFCCC44(v220, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

      v103 = v188;
LABEL_109:
      v68 = v189;
      v51 = v191;
      goto LABEL_110;
    }

    sub_1CF03D7A8(v109, *(&v109 + 1), 0);
    v103 = v188;
    if ((v109 & 0x100) == 0)
    {
      sub_1CEFCCC44(v220, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

      goto LABEL_109;
    }

    v134 = *(v107 + 24);
    v135 = v203;
    (*(*v134 + 392))(&v218, v204, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    v68 = v189;
    v51 = v191;
    if (v135)
    {
LABEL_161:
      sub_1CEFCCC44(v220, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

      return;
    }

    v203 = 0;
    if (v106)
    {
      *&v213[0] = v106;
      v139 = *(*v134 + 400);
      v140 = v106;
      v141 = v203;
      v139(v213, v204, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      v203 = v141;
      if (v141)
      {
LABEL_168:

        sub_1CEFCCC44(v220, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        goto LABEL_6;
      }

      v68 = v189;
      v51 = v191;
    }

    sub_1CEFCCC44(v220, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

    goto LABEL_110;
  }

  memcpy(v214, v216, 0x208uLL);
  sub_1CEFCCBDC(v105, v213, &unk_1EC4BFC20, &unk_1CFA0A290);
  sub_1CEFCCC44(v214, &unk_1EC4BFC20, &unk_1CFA0A290);

  v68 = v189;
LABEL_110:
  v63 = v106;
LABEL_111:
  v186 = v220[3];
  v187 = v220[2];
  v108 = v220[32];
  v185 = v220[33];
  v90 = LOBYTE(v220[4]);
  if (v198)
  {
    goto LABEL_112;
  }

LABEL_126:
  if (*(v91 + 8) == 255 || !v63)
  {
    goto LABEL_146;
  }

  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  v121 = qword_1EDEABDE8;
  if (!qword_1EDEABDE8)
  {
    v122 = v186 & 0x10;
    goto LABEL_134;
  }

  if ((qword_1EDEABDE8 & 0x10) == 0)
  {
    v122 = (qword_1EDEABDE8 | 0x10) & v186;
LABEL_134:
    if (v122 | v187 & 0x51)
    {
      goto LABEL_146;
    }

    v121 = qword_1EDEABDE8 | 0x10;
    goto LABEL_137;
  }

  if (qword_1EDEABDE8 & v186 | v187 & 0x51)
  {
    goto LABEL_146;
  }

LABEL_137:
  if ((v121 & v185) == 0 && (v108 & 0x51) == 0 && v90 == 5 && v195 != 2 && v51 != 2)
  {
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v124 = v123;
    (*(v193 + 8))(v68, v103);
    v125 = v124 * 1000000000.0;
    if (COERCE__INT64(fabs(v124 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v125 > -9.22337204e18)
    {
      if (v125 < 9.22337204e18)
      {
        v91[59] = 0x2000000000000000;
        v91[60] = v125;
        goto LABEL_146;
      }

      goto LABEL_205;
    }

    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

LABEL_146:
  v126 = v51;
  v127 = swift_weakLoadStrong();
  if (!v127)
  {
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  v128 = (*(*v127 + 152))(v127);

  v129 = v184 ^ 1;
  if ((v128 & 8) != 0 && ((v184 ^ 1) & 1) == 0 && v195 == 1)
  {
    v130 = swift_weakLoadStrong();
    if (!v130)
    {
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
      goto LABEL_215;
    }

    (*(*v130 + 304))(v130);
  }

  v131 = swift_weakLoadStrong();
  if (!v131)
  {
    goto LABEL_210;
  }

  v132 = (*(*v131 + 152))(v131);

  if (!(((v132 & 8) == 0) | v129 & 1) && v126 == 1)
  {
    v133 = swift_weakLoadStrong();
    if (v133)
    {
      (*(*v133 + 304))(v133);
LABEL_6:

      return;
    }

    goto LABEL_214;
  }
}

void sub_1CF44C000()
{
  if (!*v0)
  {
    if (*(v0 + 216) == 255)
    {
      sub_1CF24CD3C();
      swift_allocError();
      v5 = v15;
      sub_1CF9E7948();
      v16 = MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA45930);
      v17 = sub_1CF38C048(v16);
      MEMORY[0x1D3868CC0](v17);

      *v5 = 0;
      *(v5 + 8) = 0xE000000000000000;
      v11 = 5;
      goto LABEL_19;
    }

    if (*(v0 + 456) != 4)
    {
      return;
    }

    goto LABEL_15;
  }

  if (*(v0 + 456) == 4)
  {
LABEL_15:
    sub_1CF24CD3C();
    swift_allocError();
    v5 = v8;
    sub_1CF9E7948();
    v9 = MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA45950);
    v10 = sub_1CF38C048(v9);
    MEMORY[0x1D3868CC0](v10);

    *v5 = 0;
    *(v5 + 8) = 0xE000000000000000;
    v11 = 6;
LABEL_19:
    *(v5 + 48) = v11;
    swift_willThrow();
    return;
  }

  v1 = *(v0 + 216);
  if (v1 != 255 && *(v0 + 48) == 1)
  {
    sub_1CF24CD3C();
    swift_allocError();
    v5 = v12;
    sub_1CF9E7948();
    v13 = MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA45990);
    v14 = sub_1CF38C048(v13);
    MEMORY[0x1D3868CC0](v14);

    *v5 = 0;
    goto LABEL_17;
  }

  if (v1 != 255 && *(v0 + 312) == 0)
  {
    sub_1CF24CD3C();
    swift_allocError();
    v5 = v4;
    sub_1CF9E7948();
    v6 = MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA45970);
    v7 = sub_1CF38C048(v6);
    MEMORY[0x1D3868CC0](v7);

    *v5 = 1;
LABEL_17:
    *(v5 + 8) = 0;
    *(v5 + 16) = 0xE000000000000000;
    v11 = 7;
    goto LABEL_19;
  }
}

void sub_1CF44C2CC()
{
  if (*(v0 + 8) == 255)
  {
    if (!*(v0 + 248))
    {
      sub_1CF24CD3C();
      swift_allocError();
      v4 = v11;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA45930);
      v12 = sub_1CF38B634();
      MEMORY[0x1D3868CC0](v12);

      *v4 = 0;
      *(v4 + 8) = 0xE000000000000000;
      v8 = 5;
      goto LABEL_16;
    }

    if (*(v0 + 456) != 4)
    {
      return;
    }

    goto LABEL_12;
  }

  if (*(v0 + 456) == 4)
  {
LABEL_12:
    sub_1CF24CD3C();
    swift_allocError();
    v4 = v6;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA45950);
    v7 = sub_1CF38B634();
    MEMORY[0x1D3868CC0](v7);

    *v4 = 0;
    *(v4 + 8) = 0xE000000000000000;
    v8 = 6;
LABEL_16:
    *(v4 + 48) = v8;
    swift_willThrow();
    return;
  }

  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 104) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    sub_1CF24CD3C();
    swift_allocError();
    v4 = v9;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA45990);
    v10 = sub_1CF38B634();
    MEMORY[0x1D3868CC0](v10);

    *v4 = 0;
    goto LABEL_14;
  }

  if (v1 && *(v0 + 296) == 1)
  {
    sub_1CF24CD3C();
    swift_allocError();
    v4 = v3;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA45970);
    v5 = sub_1CF38B634();
    MEMORY[0x1D3868CC0](v5);

    *v4 = 1;
LABEL_14:
    *(v4 + 8) = 0;
    *(v4 + 16) = 0xE000000000000000;
    v8 = 7;
    goto LABEL_16;
  }
}

uint64_t sub_1CF44C598(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  memcpy(v40, v3, sizeof(v40));
  memcpy(__dst, v10, sizeof(__dst));
  if (sub_1CF08B99C(__dst) == 1)
  {
    v41 = v7;
    v11 = 0;
    v12 = 0;
    v13 = 89;
  }

  else
  {
    memcpy(v39, v40, sizeof(v39));
    memcpy(__src, v40, sizeof(__src));
    sub_1CEFCCBDC(__src, v29, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CF3FA99C(v5, 1, v28);
    if (v2)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BFC20, &unk_1CFA0A290);
      return v14 & 1;
    }

    v41 = v7;
    sub_1CEFCCC44(v10, &unk_1EC4BFC20, &unk_1CFA0A290);
    v13 = v28[0];
    if (LOBYTE(v28[0]) == 89)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = v28[1];
      v12 = v28[2];
    }
  }

  memcpy(v38, v1, sizeof(v38));
  sub_1CF3FA99C(v5, 1, __src);
  if (!v2)
  {
    if (LOBYTE(__src[0]) == 89)
    {
      v15 = 0;
    }

    else
    {
      v15 = __src[1];
    }

    if (LOBYTE(__src[0]) == 89)
    {
      v16 = 0;
    }

    else
    {
      v16 = __src[2];
    }

    v17 = sub_1CF46C784(v13, v11, v12, __src[0], v15, v16, v9);
    memcpy(v32, v10, sizeof(v32));
    if (sub_1CF08B99C(v32) == 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 89;
    }

    else
    {
      memcpy(v37, v40, sizeof(v37));
      memcpy(__src, v40, sizeof(__src));
      sub_1CEFCCBDC(__src, v28, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CF7F62D0(v29);
      v23 = sub_1CEFCCC44(v10, &unk_1EC4BFC20, &unk_1CFA0A290);
      v24 = (*(*v5 + 176))(v23);
      memcpy(v36, v29, sizeof(v36));
      sub_1CF3F9E7C(v24, 1, v31);
      memcpy(v28, v29, sizeof(v28));
      sub_1CEFCCC44(v28, &unk_1EC4BFC90, &unk_1CFA053E0);

      v20 = v31[0];
      if (LOBYTE(v31[0]) == 89)
      {
        v18 = 0;
        v19 = 0;
      }

      else
      {
        v19 = v31[2];
        v18 = v31[1];
      }
    }

    memcpy(v35, v1, sizeof(v35));
    v21 = sub_1CF7F62D0(__src);
    v22 = (*(*v5 + 176))(v21);
    memcpy(v34, __src, sizeof(v34));
    sub_1CF3F9E7C(v22, 1, v28);
    memcpy(v29, __src, sizeof(v29));
    sub_1CEFCCC44(v29, &unk_1EC4BFC90, &unk_1CFA053E0);

    if (LOBYTE(v28[0]) == 89)
    {
      v26 = 0;
    }

    else
    {
      v26 = v28[1];
    }

    if (LOBYTE(v28[0]) == 89)
    {
      v27 = 0;
    }

    else
    {
      v27 = v28[2];
    }

    v14 = v17 | sub_1CF46C8F8(v20, v18, v19, v28[0], v26, v27, v41);
  }

  return v14 & 1;
}

uint64_t sub_1CF44C9F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 128);
  v84 = *(v2 + 144);
  v85 = *(v2 + 160);
  v4 = *(v2 + 112);
  v79 = *(v2 + 96);
  v80 = v4;
  v81 = v3;
  v5 = *(v2 + 48);
  v75 = *(v2 + 32);
  v76 = v5;
  v6 = *(v2 + 80);
  v77 = *(v2 + 64);
  v78 = v6;
  v7 = *(v2 + 16);
  v73 = *v2;
  v74 = v7;
  v9 = *(v2 + 144);
  v8 = *(v2 + 152);
  v10 = *(v2 + 160);
  v11 = *(v2 + 305);
  v70 = *(v2 + 289);
  v71 = v11;
  v72[0] = *(v2 + 321);
  *(v72 + 15) = *(v2 + 336);
  v12 = *(v2 + 241);
  v66 = *(v2 + 225);
  v67 = v12;
  v13 = *(v2 + 273);
  v68 = *(v2 + 257);
  v69 = v13;
  v14 = *(v2 + 177);
  v62 = *(v2 + 161);
  v63 = v14;
  v15 = *(v2 + 209);
  v64 = *(v2 + 193);
  v65 = v15;
  v17 = *(v2 + 352);
  v16 = *(v2 + 360);
  v18 = *(v2 + 368);
  v19 = *(v2 + 481);
  v59 = *(v2 + 465);
  v60 = v19;
  v61[0] = *(v2 + 497);
  *(v61 + 15) = *(v2 + 512);
  v20 = *(v2 + 417);
  v55 = *(v2 + 401);
  v56 = v20;
  v21 = *(v2 + 449);
  v57 = *(v2 + 433);
  v58 = v21;
  v22 = *(v2 + 385);
  v53 = *(v2 + 369);
  v54 = v22;
  if (v85 || v84 != 0x2000)
  {
    sub_1CEFCCBDC(v2, v26, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  }

  else
  {
    sub_1CEFCCBDC(v2, v26, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CF480580(&v84);
    v8 = 0;
    v9 = 0;
    v10 = 1;
  }

  v82 = *(v2 + 352);
  v83 = *(v2 + 368);
  if (!v83 && v82 == 0x2000)
  {
    sub_1CF480580(&v82);
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  v92 = v79;
  v93 = v80;
  v94 = v81;
  v88 = v75;
  v89 = v76;
  v91 = v78;
  v90 = v77;
  v87 = v74;
  v86 = v73;
  v95 = v9;
  v96 = v8;
  v97 = v10;
  v106 = v70;
  v107 = v71;
  *v108 = v72[0];
  v104 = v68;
  v105 = v69;
  *&v108[15] = *(v72 + 15);
  v102 = v66;
  v103 = v67;
  v98 = v62;
  v99 = v63;
  v100 = v64;
  v101 = v65;
  v109 = v17;
  v110 = v16;
  v111 = v18;
  v118 = v59;
  v119 = v60;
  *v120 = v61[0];
  v114 = v55;
  v115 = v56;
  v116 = v57;
  v117 = v58;
  v112 = v53;
  v113 = v54;
  *&v120[15] = *(v61 + 15);
  sub_1CF44DF5C(a1, 1, a2);
  v26[6] = v79;
  v26[7] = v80;
  v26[8] = v81;
  v26[2] = v75;
  v26[3] = v76;
  v26[4] = v77;
  v26[5] = v78;
  v26[0] = v73;
  v26[1] = v74;
  v27 = v9;
  v28 = v8;
  v29 = v10;
  v38 = v70;
  v39 = v71;
  *v40 = v72[0];
  v36 = v68;
  v37 = v69;
  *&v40[15] = *(v72 + 15);
  v34 = v66;
  v35 = v67;
  v30 = v62;
  v31 = v63;
  v32 = v64;
  v33 = v65;
  v41 = v17;
  v42 = v16;
  v43 = v18;
  v50 = v59;
  v51 = v60;
  *v52 = v61[0];
  v46 = v55;
  v47 = v56;
  v48 = v57;
  v49 = v58;
  v44 = v53;
  v45 = v54;
  *&v52[15] = *(v61 + 15);
  return sub_1CEFCCC44(v26, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
}

uint64_t sub_1CF44CD74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v131 = a1;
  v93 = *(v2 + 104);
  v94 = *(v2 + 120);
  v3 = *(v2 + 80);
  v88 = *(v2 + 64);
  v89 = v3;
  v4 = *(v2 + 104);
  v90 = *(v2 + 96);
  v5 = *(v2 + 16);
  v84 = *v2;
  v85 = v5;
  v6 = *(v2 + 48);
  v86 = *(v2 + 32);
  v87 = v6;
  v7 = *(v2 + 112);
  v8 = *(v2 + 120);
  v9 = *(v2 + 297);
  v10 = *(v2 + 329);
  v82 = *(v2 + 313);
  v83[0] = v10;
  v11 = *(v2 + 352);
  *(v83 + 15) = *(v2 + 344);
  v12 = *(v2 + 233);
  v13 = *(v2 + 265);
  v14 = *(v2 + 281);
  v78 = *(v2 + 249);
  v79 = v13;
  v80 = v14;
  v81 = v9;
  v15 = *(v2 + 169);
  v16 = *(v2 + 201);
  v74 = *(v2 + 185);
  v75 = v16;
  v76 = *(v2 + 217);
  v77 = v12;
  v17 = *(v2 + 137);
  v70 = *(v2 + 121);
  v71 = v17;
  v72 = *(v2 + 153);
  v73 = v15;
  v18 = *(v2 + 360);
  v19 = *(v2 + 368);
  v20 = *(v2 + 481);
  v67 = *(v2 + 465);
  v68 = v20;
  v69[0] = *(v2 + 497);
  *(v69 + 15) = *(v2 + 512);
  v21 = *(v2 + 417);
  v63 = *(v2 + 401);
  v64 = v21;
  v22 = *(v2 + 449);
  v65 = *(v2 + 433);
  v66 = v22;
  v23 = *(v2 + 385);
  v61 = *(v2 + 369);
  v62 = v23;
  if (v94 || v93 != 0x2000)
  {
    sub_1CEFCCBDC(v2, v30, &unk_1EC4BFC90, &unk_1CFA053E0);
  }

  else
  {
    sub_1CEFCCBDC(v2, v30, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CF480580(&v93);
    v7 = 0;
    v4 = 0;
    v8 = 1;
  }

  v91 = *(v2 + 352);
  v92 = *(v2 + 368);
  v24 = v11;
  if (!v92 && v91 == 0x2000)
  {
    sub_1CF480580(&v91);
    v18 = 0;
    v24 = 0;
    v19 = 1;
  }

  v99 = v88;
  v100 = v89;
  v95 = v84;
  v96 = v85;
  v98 = v87;
  v97 = v86;
  v114 = v79;
  v115 = v80;
  v117 = v82;
  *v118 = v83[0];
  v116 = v81;
  v107 = v72;
  v106 = v71;
  v105 = v70;
  v111 = v76;
  v110 = v75;
  v109 = v74;
  v108 = v73;
  v101 = v90;
  v102 = v4;
  v103 = v7;
  v104 = v8;
  v113 = v78;
  v112 = v77;
  *&v118[15] = *(v83 + 15);
  v119 = v24;
  v120 = v18;
  v121 = v19;
  v128 = v67;
  v129 = v68;
  *v130 = v69[0];
  v124 = v63;
  v125 = v64;
  v126 = v65;
  v127 = v66;
  v122 = v61;
  v123 = v62;
  *&v130[15] = *(v69 + 15);
  v25 = v19;
  v26 = v18;
  v27 = v24;
  sub_1CF44E780(v131, 1, a2);
  v30[4] = v88;
  v30[5] = v89;
  v30[0] = v84;
  v30[1] = v85;
  v30[2] = v86;
  v30[3] = v87;
  v31 = v90;
  v32 = v4;
  v33 = v7;
  v34 = v8;
  v47 = v82;
  *v48 = v83[0];
  v45 = v80;
  v46 = v81;
  v44 = v79;
  v43 = v78;
  v42 = v77;
  v41 = v76;
  v40 = v75;
  v39 = v74;
  v38 = v73;
  v37 = v72;
  v36 = v71;
  v35 = v70;
  *&v48[15] = *(v83 + 15);
  v49 = v27;
  v50 = v26;
  v51 = v25;
  v58 = v67;
  v59 = v68;
  *v60 = v69[0];
  v54 = v63;
  v55 = v64;
  v56 = v65;
  v57 = v66;
  v52 = v61;
  v53 = v62;
  *&v60[15] = *(v69 + 15);
  return sub_1CEFCCC44(v30, &unk_1EC4BFC90, &unk_1CFA053E0);
}

unint64_t sub_1CF44D124(void *__src, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v77 = a4;
  v76 = a3;
  memcpy(v83, __src, sizeof(v83));
  v7 = a2[136];
  v8 = a2[160];
  v74 = a2[344];
  LODWORD(v75) = v7;
  v9 = a2[368];
  v10 = sub_1CF9E5248();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v65 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5268();
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFE98, &qword_1CFA05568);
  v16 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEA0, &unk_1CFA05570);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v63 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v70 = &v61 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v71 = &v61 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v61 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v72 = *(v28 - 8);
  v29 = *(v72 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v62 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v73 = &v61 - v32;
  v78 = v4;
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_30;
  }

  v34 = (*(*result + 152))(result);

  if (v34 < 0)
  {
    memcpy(v81, a2, sizeof(v81));
    result = sub_1CF08B99C(v81);
    if (result == 1 || v8 != 2 && v9 != 2 && v75 != 1 && v74 != 1)
    {
      result = swift_weakLoadStrong();
      if (result)
      {
        v35 = result;
        memcpy(v80, v83, sizeof(v80));
        nullsub_1(v80);
        memcpy(v82, v80, sizeof(v82));
        sub_1CEFCCBDC(__src, &v79, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v36 = v84;
        sub_1CF391290(v82, v35, v76, v77, v27);
        sub_1CEFCCC44(__src, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

        if (v36)
        {
          return result;
        }

        v37 = v72;
        v38 = *(v72 + 48);
        if (v38(v27, 1, v28) == 1)
        {
          v39 = &unk_1EC4BFEA0;
          v40 = &unk_1CFA05570;
          v41 = v27;
          return sub_1CEFCCC44(v41, v39, v40);
        }

        v75 = v38;
        v84 = 0;
        v42 = v73;
        sub_1CEFE55D0(v27, v73, &unk_1EC4BF650, &unk_1CF9FCB40);
        v43 = v71;
        sub_1CEFCCBDC(v42, v71, &unk_1EC4BF650, &unk_1CF9FCB40);
        (*(v37 + 56))(v43, 0, 1, v28);
        result = swift_weakLoadStrong();
        if (result)
        {
          v44 = v70;
          v45 = v84;
          sub_1CF391290(a2, result, v76, v77, v70);

          if (v45)
          {
            sub_1CEFCCC44(v43, &unk_1EC4BFEA0, &unk_1CFA05570);
            v39 = &unk_1EC4BF650;
            v40 = &unk_1CF9FCB40;
            v41 = v73;
            return sub_1CEFCCC44(v41, v39, v40);
          }

          v84 = 0;
          v46 = v69;
          v47 = *(v68 + 48);
          sub_1CEFCCBDC(v43, v69, &unk_1EC4BFEA0, &unk_1CFA05570);
          sub_1CEFCCBDC(v44, v46 + v47, &unk_1EC4BFEA0, &unk_1CFA05570);
          v48 = v75;
          if (v75(v46, 1, v28) == 1)
          {
            sub_1CEFCCC44(v44, &unk_1EC4BFEA0, &unk_1CFA05570);
            v46 = v69;
            sub_1CEFCCC44(v71, &unk_1EC4BFEA0, &unk_1CFA05570);
            if (v48(v46 + v47, 1, v28) == 1)
            {
              sub_1CEFCCC44(v46, &unk_1EC4BFEA0, &unk_1CFA05570);
              v49 = v73;
              return sub_1CEFCCC44(v49, &unk_1EC4BF650, &unk_1CF9FCB40);
            }
          }

          else
          {
            v50 = v63;
            sub_1CEFCCBDC(v46, v63, &unk_1EC4BFEA0, &unk_1CFA05570);
            if (v48(v46 + v47, 1, v28) != 1)
            {
              v55 = v46 + v47;
              v56 = v62;
              sub_1CEFE55D0(v55, v62, &unk_1EC4BF650, &unk_1CF9FCB40);
              v57 = sub_1CF46B5A8(v50, v56);
              v58 = v50;
              v59 = v46;
              v60 = v57;
              sub_1CEFCCC44(v56, &unk_1EC4BF650, &unk_1CF9FCB40);
              sub_1CEFCCC44(v70, &unk_1EC4BFEA0, &unk_1CFA05570);
              sub_1CEFCCC44(v71, &unk_1EC4BFEA0, &unk_1CFA05570);
              sub_1CEFCCC44(v58, &unk_1EC4BF650, &unk_1CF9FCB40);
              sub_1CEFCCC44(v59, &unk_1EC4BFEA0, &unk_1CFA05570);
              v49 = v73;
              if (v60)
              {
                return sub_1CEFCCC44(v49, &unk_1EC4BF650, &unk_1CF9FCB40);
              }

LABEL_24:
              result = swift_weakLoadStrong();
              if (result)
              {
                v51 = result;
                sub_1CF9E5198();
                sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                sub_1CF042F54(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
                v52 = v64;
                v53 = v67;
                sub_1CF9E57D8();
                v54 = sub_1CF9E50D8();
                (*(v66 + 8))(v52, v53);
                (*(*v51 + 520))(v49, v54);

                return sub_1CEFCCC44(v49, &unk_1EC4BF650, &unk_1CF9FCB40);
              }

LABEL_32:
              __break(1u);
              return result;
            }

            sub_1CEFCCC44(v70, &unk_1EC4BFEA0, &unk_1CFA05570);
            sub_1CEFCCC44(v71, &unk_1EC4BFEA0, &unk_1CFA05570);
            sub_1CEFCCC44(v50, &unk_1EC4BF650, &unk_1CF9FCB40);
          }

          sub_1CEFCCC44(v46, &qword_1EC4BFE98, &qword_1CFA05568);
          v49 = v73;
          goto LABEL_24;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  return result;
}

uint64_t sub_1CF44D9C4(uint64_t a1)
{
  v3 = *(v1 + 544);
  v4 = *(v1 + 784);
  if (v3 == 255)
  {
    goto LABEL_5;
  }

  v5 = *(v1 + 536);
  sub_1CF44DD2C(&v24);
  v6 = v24;
  v7 = BYTE9(v24);
  v8 = BYTE8(v24);
  v9 = sub_1CF7BC790(v24, BYTE8(v24) | (BYTE9(v24) << 8), v5, v3);
  sub_1CEFD0994(v6, v8, v7);
  if ((v9 & 1) == 0)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 115);
    if (v11 != 1)
    {
      v24 = *a1;
      v25 = v10;
      v28 = *(a1 + 56);
      v29 = *(a1 + 72);
      *v30 = *(a1 + 88);
      *&v30[11] = *(a1 + 99);
      v26 = *(a1 + 24);
      v27 = *(a1 + 40);
      v31 = v11;
      sub_1CEFCCBDC(a1, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFCCC44(&v24, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CF47FDFC(0, 65280);
      sub_1CF47FDFC(v5, v3);
      if (!v4)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    sub_1CEFCCBDC(a1, &v24, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CF480960(v10, 256);
    sub_1CF480960(v10, 256);
    v12 = sub_1CF7BC790(v10, 256, v5, v3);
    sub_1CF47FDFC(v5, v3);
    sub_1CF47FDFC(v10, 256);
    sub_1CF47FDFC(v10, 256);
    sub_1CF47FDFC(v10, 256);
    if ((v12 & 1) == 0)
    {
LABEL_5:
      if (!v4)
      {
        goto LABEL_14;
      }

LABEL_8:
      v13 = v4;
      sub_1CF44DD2C(&v24);
      v14 = v24;
      v15 = BYTE9(v24);
      v16 = BYTE8(v24);
      v17 = v13;
      LOBYTE(v13) = sub_1CF7BC790(v14, v16 | (v15 << 8), v4, 256);

      sub_1CEFD0994(v14, v16, v15);
      if (v13)
      {

        goto LABEL_10;
      }

      v19 = *(a1 + 16);
      v20 = *(a1 + 115);
      if (v20 == 1)
      {
        sub_1CEFCCBDC(a1, &v24, &qword_1EC4BE6D0, &qword_1CF9FE560);
        v21 = v17;
        sub_1CF480960(v19, 256);
        sub_1CF480960(v19, 256);
        v18 = sub_1CF7BC790(v19, 256, v4, 256);
        sub_1CF47FDFC(v4, 256);

        sub_1CF47FDFC(v19, 256);
        sub_1CF47FDFC(v19, 256);
        sub_1CF47FDFC(v19, 256);
        return v18 & 1;
      }

      v24 = *a1;
      v25 = v19;
      v28 = *(a1 + 56);
      v29 = *(a1 + 72);
      *v30 = *(a1 + 88);
      *&v30[11] = *(a1 + 99);
      v26 = *(a1 + 24);
      v27 = *(a1 + 40);
      v31 = v20;
      sub_1CEFCCBDC(a1, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFCCC44(&v24, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CF47FDFC(0, 65280);
      sub_1CF47FDFC(v4, 256);
LABEL_14:
      v18 = 0;
      return v18 & 1;
    }
  }

LABEL_10:
  v18 = 1;
  return v18 & 1;
}

void sub_1CF44DD2C(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v2 + 25);
  v9 = *(v2 + 26) | (*(v2 + 30) << 32);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  v14 = *(v2 + 64);
  v15 = *(v2 + 72);
  v16 = *(v2 + 80);
  switch(*(v2 + 115))
  {
    case 1:
      *a1 = v3;
      *(a1 + 8) = v4;
      *(a1 + 9) = 0;
      sub_1CEFCCBDC(v2, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);

      break;
    case 7:
    case 8:
      *a1 = v3;
      *(a1 + 8) = v4;
      *(a1 + 9) = v5 & 1;
      sub_1CEFCCBDC(v2, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFD0994(v6, v7, v8 & 1);
      break;
    case 9:
      *a1 = v3;
      *(a1 + 8) = v4;
      *(a1 + 9) = v5 & 1;
      v18 = v7 | (v8 << 8) | (v9 << 16);
      sub_1CEFCCBDC(v2, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CF480AA8(v6, v18, v10, v11, v12, v13, v14, v15, v16, BYTE2(v16));
      break;
    case 0xA:
      v21 = *(v2 + 112);
      v22 = *(v2 + 114);
      v20 = *(v2 + 104);
      v19 = *(v2 + 88);
      *a1 = v3;
      *(a1 + 8) = v4;
      v17 = v7 | (v8 << 8) | (v9 << 16);
      *(a1 + 9) = v5 & 1;
      sub_1CEFCCBDC(v2, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CF480998(v6, v17, v10, v11, v12, v13, v14, v15, v16, v19, *(&v19 + 1), v20, v21, v22);
      break;
    default:
      *a1 = v3;
      *(a1 + 8) = v4;
      *(a1 + 9) = v5 & 1;
      sub_1CEFCCBDC(v2, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      break;
  }
}

void sub_1CF44DF5C(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (*(*(v3 + 464) + 16))
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0x8000000000000001;
    return;
  }

  v5 = v3;
  v82 = a3;
  sub_1CF46DAC0(a1, a2 & 1, __src);
  if (v4)
  {
    return;
  }

  v68 = __src[0];
  v8 = __src[1];
  v9 = __src[2];
  v10 = LOBYTE(__src[3]);
  v11 = sub_1CF7F62D0(__src);
  v12 = (*(*a1 + 176))(v11);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1CF46DC58(v12, a2 & 1, &v77);
  memcpy(v75, __src, sizeof(v75));
  sub_1CEFCCC44(v75, &unk_1EC4BFC90, &unk_1CFA053E0);

  v13 = v78;
  v14 = v80;
  v69[0] = v68;
  v69[1] = v8;
  v69[2] = v9;
  v70 = v10;
  v71 = v77;
  v72 = v78;
  v73 = v79;
  v15 = v80 >> 6;
  v74 = v80;
  v16 = v8;
  v17 = v9;
  if (!v15)
  {
    if ((v10 & 0xC0) != 0x40)
    {
LABEL_22:
      if (v10 >= 0x40 && v15)
      {
        if (v15 != 2 || (v10 & 0xC0) != 0x80 || v8 | v68 | v9 || v10 != 128)
        {
          v59 = v10;
          v60 = v77;
          v61 = v79;
          sub_1CF480560(v77, v78, v79, v80);
          sub_1CF480560(v68, v16, v9, v59);
          sub_1CF480560(v60, v13, v61, v14);
          sub_1CF480560(v68, v16, v9, v59);
          sub_1CF515664("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/types/ItemReconciliation.swift", 126, 2, 1473, v68, v16, v9, v59, v60, v13, v61, v14);
        }

        sub_1CEFCCC44(v69, &qword_1EC4BFDE0, &qword_1CFA054E0);
        v19 = 0x8000000000000000;
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (v68 == 2)
    {
      if (v80)
      {
LABEL_24:
        sub_1CEFCCC44(v69, &qword_1EC4BFDE0, &qword_1CFA054E0);
LABEL_25:
        v19 = 0x8000000000000001;
        goto LABEL_26;
      }

      if (v79 == 2)
      {
        v63 = *(*a1 + 152);
        v66 = v77;
        v20 = v77;
        sub_1CF480560(v68, v8, v9, v10);
        sub_1CF480560(v20, v13, 2, v14);
        v21 = sub_1CF480560(v68, v8, v9, v10);
        v16 = v8;
        LOWORD(v20) = v63(v21);
        sub_1CEFCCC44(v69, &qword_1EC4BFDE0, &qword_1CFA054E0);
        sub_1CF480540(v66, v13, 2, v14);
        sub_1CF480540(v68, v8, v9, v10);
        if ((v20 & 0x4000) == 0)
        {
          v22 = v68;
          v23 = v8;
          v24 = v9;
          v25 = v10;
LABEL_62:
          sub_1CF480540(v22, v23, v24, v25);
          goto LABEL_25;
        }

        v27 = 2;
LABEL_21:
        v28 = v82;
        *v82 = v27;
        v28[1] = v16;
        v28[2] = v9;
        return;
      }

      v35 = v79;
      v36 = v17;
      v46 = v17;
      sub_1CEFCCC44(v69, &qword_1EC4BFDE0, &qword_1CFA054E0);
    }

    else
    {
      v35 = v79;
      v36 = v17;
      v37 = v17;
      sub_1CEFCCC44(v69, &qword_1EC4BFDE0, &qword_1CFA054E0);
      if (v14)
      {
        v38 = v68;
        v39 = v16;
        v40 = v36;
LABEL_45:
        sub_1CF480540(v38, v39, v40, v10);
        goto LABEL_25;
      }
    }

    v40 = v36;
    if ((v35 & 0x100) != 0)
    {
      v47 = v82;
      *v82 = v68;
      v47[1] = v16;
      v47[2] = v40;
      return;
    }

    v38 = v68;
    v39 = v16;
    goto LABEL_45;
  }

  if (v15 != 1)
  {
    if ((v10 & 0xC0) == 0x40)
    {
      v26 = v9;
      sub_1CEFCCC44(v69, &qword_1EC4BFDE0, &qword_1CFA054E0);
      v27 = v68;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if ((v78 & 0x10) != 0)
  {
LABEL_27:
    v30 = v79;
    v31 = v77;
    v32 = v79;
    sub_1CEFCCC44(v69, &qword_1EC4BFDE0, &qword_1CFA054E0);
    v33 = v31 | 0x4000000000000000;
    v34 = v82;
    *v82 = v33;
    v34[1] = v13;
    v34[2] = v30;
    return;
  }

  v18 = v77;
  if (!(v10 >> 6))
  {
    if (v77)
    {
      if (v77 == 23 && (v10 & 1) == 0 && v9 == 512)
      {
        v64 = *(*a1 + 152);
        v41 = v10;
        v42 = v77;
        v43 = v79;
        sub_1CF480560(v77, v78, v79, v80);
        sub_1CF480560(v42, v13, v43, v14);
        v44 = sub_1CF480560(v68, v8, 0x200, v41);
        v45 = v64(v44);
        sub_1CEFCCC44(v69, &qword_1EC4BFDE0, &qword_1CFA054E0);
        sub_1CF480540(v42, v13, v43, v14);
        sub_1CF480540(v68, v8, 512, v41);
        if ((v45 & 0x4000) != 0)
        {
          v58 = v82;
          *v82 = 0x4000000000000017;
          v58[1] = v13;
          v58[2] = v43;
          return;
        }

        v22 = v42;
        v23 = v13;
        v24 = v43;
        goto LABEL_61;
      }
    }

    else if ((v10 & 1) == 0 && v9 == 512)
    {
      v65 = *(*a1 + 152);
      v52 = v10;
      v53 = v77;
      v54 = v79;
      sub_1CF480560(v77, v78, v79, v80);
      sub_1CF480560(v53, v13, v54, v14);
      v55 = sub_1CF480560(v68, v8, 0x200, v52);
      v56 = v65(v55);
      sub_1CEFCCC44(v69, &qword_1EC4BFDE0, &qword_1CFA054E0);
      sub_1CF480540(v53, v13, v54, v14);
      sub_1CF480540(v68, v8, 512, v52);
      if ((v56 & 0x4000) != 0 && (v13 & 2) != 0)
      {
        v57 = v82;
        *v82 = 0x4000000000000000;
        v57[1] = v13;
        v57[2] = v54;
        return;
      }

      v22 = v53;
      v23 = v13;
      v24 = v54;
LABEL_61:
      v25 = v14;
      goto LABEL_62;
    }

    goto LABEL_24;
  }

  if (v10 >> 6 != 1)
  {
    goto LABEL_27;
  }

  if (v68)
  {
    if (v68 == 2 && v77 == 2)
    {
      sub_1CEFCCC44(v69, &qword_1EC4BFDE0, &qword_1CFA054E0);
      v19 = 0x8000000000000002;
LABEL_26:
      v29 = v82;
      v82[1] = 0;
      v29[2] = 0;
      *v29 = v19;
      return;
    }
  }

  else if (!v77)
  {
    sub_1CF480560(v77, v78, v79, v80);
    sub_1CF480560(v68, v8, v9, v10);
    sub_1CF510054("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/types/ItemReconciliation.swift", 126, 2, 1437);
  }

  v48 = *(v5 + 240);
  v67 = v77;
  v62 = v79;
  sub_1CF480560(v77, v78, v79, v80);
  v49 = v8;
  sub_1CF480560(v68, v8, v9, v10);
  sub_1CEFCCC44(v69, &qword_1EC4BFDE0, &qword_1CFA054E0);
  if ((v48 & 7) != 0 && v18 == 2)
  {
    sub_1CF480540(v68, v8, v9, v10);
    v50 = v82;
    *v82 = 0x4000000000000002;
    v50[1] = v13;
    v51 = v62;
  }

  else
  {
    sub_1CF480540(v67, v13, v62, v14);
    v50 = v82;
    *v82 = v68;
    v50[1] = v49;
    v51 = v9;
  }

  v50[2] = v51;
}

void sub_1CF44E780(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (*(*(v3 + 464) + 16))
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0x8000000000000001;
    return;
  }

  v5 = v3;
  v82 = a3;
  sub_1CF46DC58(a1, a2 & 1, __src);
  if (v4)
  {
    return;
  }

  v68 = __src[0];
  v8 = __src[1];
  v9 = __src[2];
  v10 = LOBYTE(__src[3]);
  v11 = sub_1CF7F6024(__src);
  v12 = (*(*a1 + 176))(v11);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1CF46DAC0(v12, a2 & 1, &v77);
  memcpy(v75, __src, sizeof(v75));
  sub_1CEFCCC44(v75, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

  v13 = v78;
  v14 = v80;
  v69[0] = v68;
  v69[1] = v8;
  v69[2] = v9;
  v70 = v10;
  v71 = v77;
  v72 = v78;
  v73 = v79;
  v15 = v80 >> 6;
  v74 = v80;
  v16 = v8;
  v17 = v9;
  if (!v15)
  {
    if ((v10 & 0xC0) != 0x40)
    {
LABEL_22:
      if (v10 >= 0x40 && v15)
      {
        if (v15 != 2 || (v10 & 0xC0) != 0x80 || v8 | v68 | v9 || v10 != 128)
        {
          v59 = v10;
          v60 = v77;
          v61 = v79;
          sub_1CF480560(v77, v78, v79, v80);
          sub_1CF480560(v68, v16, v9, v59);
          sub_1CF480560(v60, v13, v61, v14);
          sub_1CF480560(v68, v16, v9, v59);
          sub_1CF515664("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/types/ItemReconciliation.swift", 126, 2, 1473, v68, v16, v9, v59, v60, v13, v61, v14);
        }

        sub_1CEFCCC44(v69, &qword_1EC4BFE90, &qword_1CFA05560);
        v19 = 0x8000000000000000;
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (v68 == 2)
    {
      if (v80)
      {
LABEL_24:
        sub_1CEFCCC44(v69, &qword_1EC4BFE90, &qword_1CFA05560);
LABEL_25:
        v19 = 0x8000000000000001;
        goto LABEL_26;
      }

      if (v79 == 2)
      {
        v63 = *(*a1 + 152);
        v66 = v77;
        v20 = v77;
        sub_1CF480560(v68, v8, v9, v10);
        sub_1CF480560(v20, v13, 2, v14);
        v21 = sub_1CF480560(v68, v8, v9, v10);
        v16 = v8;
        LOWORD(v20) = v63(v21);
        sub_1CEFCCC44(v69, &qword_1EC4BFE90, &qword_1CFA05560);
        sub_1CF480540(v66, v13, 2, v14);
        sub_1CF480540(v68, v8, v9, v10);
        if ((v20 & 0x4000) == 0)
        {
          v22 = v68;
          v23 = v8;
          v24 = v9;
          v25 = v10;
LABEL_62:
          sub_1CF480540(v22, v23, v24, v25);
          goto LABEL_25;
        }

        v27 = 2;
LABEL_21:
        v28 = v82;
        *v82 = v27;
        v28[1] = v16;
        v28[2] = v9;
        return;
      }

      v35 = v79;
      v36 = v17;
      v46 = v17;
      sub_1CEFCCC44(v69, &qword_1EC4BFE90, &qword_1CFA05560);
    }

    else
    {
      v35 = v79;
      v36 = v17;
      v37 = v17;
      sub_1CEFCCC44(v69, &qword_1EC4BFE90, &qword_1CFA05560);
      if (v14)
      {
        v38 = v68;
        v39 = v16;
        v40 = v36;
LABEL_45:
        sub_1CF480540(v38, v39, v40, v10);
        goto LABEL_25;
      }
    }

    v40 = v36;
    if ((v35 & 0x100) != 0)
    {
      v47 = v82;
      *v82 = v68;
      v47[1] = v16;
      v47[2] = v40;
      return;
    }

    v38 = v68;
    v39 = v16;
    goto LABEL_45;
  }

  if (v15 != 1)
  {
    if ((v10 & 0xC0) == 0x40)
    {
      v26 = v9;
      sub_1CEFCCC44(v69, &qword_1EC4BFE90, &qword_1CFA05560);
      v27 = v68;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if ((v78 & 0x10) != 0)
  {
LABEL_27:
    v30 = v79;
    v31 = v77;
    v32 = v79;
    sub_1CEFCCC44(v69, &qword_1EC4BFE90, &qword_1CFA05560);
    v33 = v31 | 0x4000000000000000;
    v34 = v82;
    *v82 = v33;
    v34[1] = v13;
    v34[2] = v30;
    return;
  }

  v18 = v77;
  if (!(v10 >> 6))
  {
    if (v77)
    {
      if (v77 == 23 && (v10 & 1) == 0 && v9 == 512)
      {
        v64 = *(*a1 + 152);
        v41 = v10;
        v42 = v77;
        v43 = v79;
        sub_1CF480560(v77, v78, v79, v80);
        sub_1CF480560(v42, v13, v43, v14);
        v44 = sub_1CF480560(v68, v8, 0x200, v41);
        v45 = v64(v44);
        sub_1CEFCCC44(v69, &qword_1EC4BFE90, &qword_1CFA05560);
        sub_1CF480540(v42, v13, v43, v14);
        sub_1CF480540(v68, v8, 512, v41);
        if ((v45 & 0x4000) != 0)
        {
          v58 = v82;
          *v82 = 0x4000000000000017;
          v58[1] = v13;
          v58[2] = v43;
          return;
        }

        v22 = v42;
        v23 = v13;
        v24 = v43;
        goto LABEL_61;
      }
    }

    else if ((v10 & 1) == 0 && v9 == 512)
    {
      v65 = *(*a1 + 152);
      v52 = v10;
      v53 = v77;
      v54 = v79;
      sub_1CF480560(v77, v78, v79, v80);
      sub_1CF480560(v53, v13, v54, v14);
      v55 = sub_1CF480560(v68, v8, 0x200, v52);
      v56 = v65(v55);
      sub_1CEFCCC44(v69, &qword_1EC4BFE90, &qword_1CFA05560);
      sub_1CF480540(v53, v13, v54, v14);
      sub_1CF480540(v68, v8, 512, v52);
      if ((v56 & 0x4000) != 0 && (v13 & 2) != 0)
      {
        v57 = v82;
        *v82 = 0x4000000000000000;
        v57[1] = v13;
        v57[2] = v54;
        return;
      }

      v22 = v53;
      v23 = v13;
      v24 = v54;
LABEL_61:
      v25 = v14;
      goto LABEL_62;
    }

    goto LABEL_24;
  }

  if (v10 >> 6 != 1)
  {
    goto LABEL_27;
  }

  if (v68)
  {
    if (v68 == 2 && v77 == 2)
    {
      sub_1CEFCCC44(v69, &qword_1EC4BFE90, &qword_1CFA05560);
      v19 = 0x8000000000000002;
LABEL_26:
      v29 = v82;
      v82[1] = 0;
      v29[2] = 0;
      *v29 = v19;
      return;
    }
  }

  else if (!v77)
  {
    sub_1CF480560(v77, v78, v79, v80);
    sub_1CF480560(v68, v8, v9, v10);
    sub_1CF510054("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/types/ItemReconciliation.swift", 126, 2, 1437);
  }

  v48 = *(v5 + 200);
  v67 = v77;
  v62 = v79;
  sub_1CF480560(v77, v78, v79, v80);
  v49 = v8;
  sub_1CF480560(v68, v8, v9, v10);
  sub_1CEFCCC44(v69, &qword_1EC4BFE90, &qword_1CFA05560);
  if ((v48 & 7) != 0 && v18 == 2)
  {
    sub_1CF480540(v68, v8, v9, v10);
    v50 = v82;
    *v82 = 0x4000000000000002;
    v50[1] = v13;
    v51 = v62;
  }

  else
  {
    sub_1CF480540(v67, v13, v62, v14);
    v50 = v82;
    *v82 = v68;
    v50[1] = v49;
    v51 = v9;
  }

  v50[2] = v51;
}

uint64_t sub_1CF44EFA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) == 0)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v14 = v13;
    result = (*(v8 + 8))(v11, v7);
    v15 = v14 * 1000000000.0;
    if (COERCE__INT64(fabs(v14 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v15 > -9.22337204e18)
    {
      if (v15 < 9.22337204e18)
      {
        sub_1CF902E70(a1, v15, a3, a4);
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 176))(result);

    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v17 = v16;
    result = (*(v8 + 8))(v11, v7);
    v18 = v17 * 1000000000.0;
    if (COERCE__INT64(fabs(v17 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v18 > -9.22337204e18)
      {
        if (v18 < 9.22337204e18)
        {
          sub_1CF902E70(a1 & 0x7FFFFFFFFFFFFFFFLL, v18, a3, a4);
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1CF44F21C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 115);
  switch(v7)
  {
    case 9:
      v17 = *(v1 + 16);
      v18 = v6;
      *&v21[15] = *(v1 + 79);
      v12 = *(v1 + 48);
      v19 = *(v1 + 32);
      v20 = v12;
      *v21 = *(v1 + 64);
      if (v21[18] != 12)
      {
        if (v21[18] == 2)
        {
          goto LABEL_16;
        }

        if (v21[18])
        {
          sub_1CEFCCBDC(v1, &v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
          v10 = &qword_1EC4BFEE0;
          v11 = &qword_1CFA055B0;
          goto LABEL_18;
        }

LABEL_12:
        v5 = v6;
        goto LABEL_16;
      }

LABEL_15:
      v15 = 1 << SBYTE1(v5);
      v5 = v6;
      if ((v15 & 0x1B) == 0)
      {
        sub_1CEFCCBDC(v1, &v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
        goto LABEL_20;
      }

LABEL_16:
      sub_1CEFCCBDC(v1, &v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
LABEL_21:
      sub_1CEFD0994(v2, v3, v4 & 1);
      return v5;
    case 12:
      sub_1CEFCCBDC(v1, &v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFD0994(v2, v3, v4 & 1);
      break;
    case 10:
      v17 = *(v1 + 16);
      v18 = v6;
      *&v22[15] = *(v1 + 111);
      v8 = *(v1 + 80);
      *v21 = *(v1 + 64);
      *&v21[16] = v8;
      *v22 = *(v1 + 96);
      v9 = *(v1 + 48);
      v19 = *(v1 + 32);
      v20 = v9;
      if (v22[18] != 12)
      {
        if (v22[18] == 2)
        {
          goto LABEL_16;
        }

        if (v22[18])
        {
          sub_1CEFCCBDC(v1, &v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
          v10 = &qword_1EC4BFEE8;
          v11 = &qword_1CFA055B8;
LABEL_18:
          sub_1CEFCCC44(&v17, v10, v11);
LABEL_20:
          v5 = 0;
          goto LABEL_21;
        }

        goto LABEL_12;
      }

      goto LABEL_15;
    default:
      v23 = v2;
      v24 = v3;
      v25 = v4;
      v26 = *(v1 + 10);
      v27 = *(v1 + 14);
      v28 = v5;
      v29 = v6;
      v13 = *(v1 + 80);
      v32 = *(v1 + 64);
      v33 = v13;
      *v34 = *(v1 + 96);
      *&v34[15] = *(v1 + 111);
      v14 = *(v1 + 48);
      v30 = *(v1 + 32);
      v31 = v14;
      v35 = v7;
      sub_1CEFCCBDC(v1, &v17, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFCCC44(&v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      return 0;
  }

  return v5;
}

BOOL sub_1CF44F4AC()
{
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  if ((*(v0 + 24) & (qword_1EDEABDE8 | 0x10)) != 0 || (*(v0 + 16) & 0x51) != 0 || (*(v0 + 264) & (qword_1EDEABDE8 | 0x10)) != 0)
  {
    return 0;
  }

  result = 0;
  if ((*(v0 + 256) & 0x51) == 0 && *(v0 + 136) != 1 && *(v0 + 344) != 1 && *(v0 + 32) == 5 && *(v0 + 137) == 6)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 368);
    if ((*(v0 + 8) == 255 || !*(v0 + 248) || (*(v0 + 192) & 0xF000000000000000) == 0xB000000000000000 || *(v0 + 344)) && (v2 == 3 || v2 == 4 && !(*(v0 + 144) & 0xFFFFFFFFFFFFFFFELL | *(v0 + 152))))
    {
      if (v3 == 3)
      {
        return 1;
      }

      if (v3 == 4)
      {
        return (*(v0 + 352) & 0xFFFFFFFFFFFFFFFELL | *(v0 + 360)) == 0;
      }
    }

    return 0;
  }

  return result;
}

void sub_1CF44F5F8(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v1095 = v1;
  LODWORD(v1064) = v3;
  v5 = v4;
  v1062 = v6;
  LODWORD(v1057) = v7;
  v1058 = v8;
  v1061 = v9;
  v1063 = v2;
  v10 = sub_1CF9E5248();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v1011 = &v995 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5268();
  v1012 = *(v13 - 8);
  v1013 = v13;
  v14 = *(v1012 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v1009 = &v995 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1033 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD38, &unk_1CFA05450);
  v16 = *(*(v1033 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1033);
  v1010 = &v995 - v17;
  v1038 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFE70, &qword_1CFA05550);
  v18 = *(*(v1038 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1038);
  v1041 = &v995 - v19;
  v1037 = type metadata accessor for ItemMetadata();
  v20 = *(*(v1037 - 1) + 64);
  MEMORY[0x1EEE9AC00](v1037);
  v1036 = &v995 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1040 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v1044 = *(v1040 - 1);
  v22 = *(v1044 + 64);
  v23 = MEMORY[0x1EEE9AC00](v1040);
  v1023 = &v995 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v1025 = &v995 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v1029 = &v995 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v1034 = &v995 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v1051 = *(v30 - 8);
  v1052 = v30;
  v31 = *(v1051 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v1027 = &v995 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v1024 = &v995 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v1046 = &v995 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v1031 = &v995 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v1005 = &v995 - v41;
  v1006 = v42;
  MEMORY[0x1EEE9AC00](v40);
  v1019 = &v995 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v1028 = &v995 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v1048 = (&v995 - v49);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v1056 = (&v995 - v51);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v1014 = &v995 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v1022 = (&v995 - v55);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v1020 = &v995 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v1026 = &v995 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x1EEE9AC00](v59 - 8);
  v1030 = &v995 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v1015 = &v995 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v1018 = &v995 - v65;
  v1060 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  v1059 = *(v1060 - 8);
  isa = v1059[8].isa;
  MEMORY[0x1EEE9AC00](v1060);
  v1016 = (&v995 - v67);
  v68 = sub_1CF9E6118();
  v1007 = *(v68 - 8);
  v1008 = v68;
  v69 = *(v1007 + 64);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v1003 = &v995 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v1002 = &v995 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v1000 = &v995 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v1001 = &v995 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v999 = &v995 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v998 = &v995 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v1017 = &v995 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v1004 = &v995 - v85;
  MEMORY[0x1EEE9AC00](v84);
  v997 = &v995 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDE8, &qword_1CFA054E8);
  v88 = *(*(v87 - 8) + 64);
  v89 = MEMORY[0x1EEE9AC00](v87 - 8);
  v1021 = &v995 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x1EEE9AC00](v89);
  v92 = MEMORY[0x1EEE9AC00](v91);
  v94 = (&v995 - v93);
  v95 = MEMORY[0x1EEE9AC00](v92);
  v1053 = &v995 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v98 = MEMORY[0x1EEE9AC00](v97);
  v100 = &v995 - v99;
  v101 = MEMORY[0x1EEE9AC00](v98);
  v102 = MEMORY[0x1EEE9AC00](v101);
  v1054 = &v995 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v1055 = (&v995 - v105);
  v106 = MEMORY[0x1EEE9AC00](v104);
  v107 = MEMORY[0x1EEE9AC00](v106);
  v108 = MEMORY[0x1EEE9AC00](v107);
  v109 = MEMORY[0x1EEE9AC00](v108);
  v110 = MEMORY[0x1EEE9AC00](v109);
  v111 = MEMORY[0x1EEE9AC00](v110);
  v1045 = (&v995 - v112);
  v113 = MEMORY[0x1EEE9AC00](v111);
  v115 = &v995 - v114;
  v116 = MEMORY[0x1EEE9AC00](v113);
  v118 = &v995 - v117;
  v119 = MEMORY[0x1EEE9AC00](v116);
  v121 = (&v995 - v120);
  v122 = MEMORY[0x1EEE9AC00](v119);
  v1035 = &v995 - v123;
  v124 = MEMORY[0x1EEE9AC00](v122);
  v126 = &v995 - v125;
  v127 = MEMORY[0x1EEE9AC00](v124);
  v1039 = &v995 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v131 = &v995 - v130;
  v132 = MEMORY[0x1EEE9AC00](v129);
  v134 = &v995 - v133;
  v135 = MEMORY[0x1EEE9AC00](v132);
  v1042 = &v995 - v136;
  v137 = MEMORY[0x1EEE9AC00](v135);
  v1049 = &v995 - v138;
  v139 = MEMORY[0x1EEE9AC00](v137);
  v1043 = &v995 - v140;
  v141 = MEMORY[0x1EEE9AC00](v139);
  v1047 = &v995 - v142;
  MEMORY[0x1EEE9AC00](v141);
  v144 = MEMORY[0x1EEE9AC00](&v995 - v143);
  v145 = MEMORY[0x1EEE9AC00](v144);
  v1032 = &v995 - v146;
  v147 = MEMORY[0x1EEE9AC00](v145);
  v159 = &v995 - v158;
  v1050 = v5;
  v1085 = v5;
  v1086 = v1064;
  v160 = *v155;
  if (!*v155)
  {
    v181 = v1063;
    *v1063 = 0;
    *(v181 + 8) = -256;
    return;
  }

  v996 = v148;
  v162 = *(v155 + 8);
  v161 = *(v155 + 16);
  v163 = *(v155 + 97);
  v164 = *(v155 + 104);
  v165 = *(v155 + 120);
  v1084 = v160;
  if (v1061 > 4095)
  {
    if (v1061 >= 0x8000)
    {
      v182 = v1062;
      if (v1061 < 0x80000)
      {
        if (v1061 == 0x8000)
        {
          v183 = v162;
          v184 = v160;
          v185 = v1062[4];
          if (sub_1CF902E34())
          {
            if (!v163)
            {
LABEL_725:
              v712 = v1063;
              *v1063 = 0;
              *(v712 + 8) = -256;
              return;
            }

            if (sub_1CF06D930(16, v183))
            {
              v186 = v1063;
              *v1063 = 0;
              *(v186 + 8) = -256;
              return;
            }

            v296 = *(*v185 + 488);
            v201 = v184;
            v297 = v1095;
            v296(&v1084, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            if (!v297)
            {
LABEL_145:

              v298 = v1063;
              *v1063 = 0;
              *(v298 + 8) = -256;
              return;
            }

LABEL_184:

            return;
          }

          v201 = v184;
          v270 = v1095;
          sub_1CF3F9E7C(v182, v1057 & 1, v1083);
          if (v270)
          {
            goto LABEL_184;
          }

          if (v1083[0] == 89)
          {
LABEL_95:

            goto LABEL_110;
          }

          if (v1083[0] > 0xBu)
          {
            if (v1083[0] == 12 || v1083[0] == 23)
            {
              goto LABEL_95;
            }
          }

          else if (v1083[0])
          {
            if (v1083[0] == 6)
            {
              goto LABEL_95;
            }
          }

          else
          {
            if (*(v182[5] + 33))
            {
              goto LABEL_95;
            }

            (*(*v185 + 288))(v1083, &v1084, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v434 = *v1083;
            if (*v1083)
            {
              v435 = v182[2];
              sub_1CF7EBA74(*v1083, v1050, v1064, v1083);

              memcpy(v1082, v1083, sizeof(v1082));
              if (sub_1CF08B99C(v1082) == 1)
              {
                memcpy(v1081, v1083, 0x208uLL);
                sub_1CEFCCC44(v1081, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              }

              else
              {
                memcpy(v1081, v1083, 0x208uLL);
                v643 = LOBYTE(v1081[15]);
                sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
                if (!v643)
                {
                  goto LABEL_53;
                }
              }

              v182 = v1062;
            }
          }

          v368 = v182[5];
          if (v368[33] == 1)
          {
            goto LABEL_53;
          }

          (*(*v185 + 288))(v1083, &v1084, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v369 = *v1083;
          if (!*v1083)
          {
            goto LABEL_53;
          }

          *&v1081[0] = *v1083;
          (*(*v182[2] + 160))(v1082, v1081, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v1082[8] == 255)
          {

            goto LABEL_53;
          }

          *v1083 = *v1082;
          v1083[8] = v1082[8];
          v563 = (*(*v368 + 480))(v1083, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

          if ((v563 & 1) == 0)
          {
            goto LABEL_110;
          }

LABEL_64:
          v245 = v1063;
          *v1063 = 0;
          *(v245 + 8) = -256;
          return;
        }

        v163 = v1095;
        if (v1061 != 0x40000)
        {
          goto LABEL_965;
        }

        if (v165)
        {
          goto LABEL_110;
        }

        v249 = v160;
        v250 = v155;
        if ((sub_1CF06D930(256, v164) & 1) == 0)
        {
          goto LABEL_110;
        }

        v222 = v249;
        sub_1CF3F9E7C(v182, v1057 & 1, v1083);
        if (!v163)
        {
          if (v1083[0] == 89)
          {
            goto LABEL_109;
          }

          v1095 = v1083[0];
          v251 = v1035;
          sub_1CEFCCBDC(v1058, v1035, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if ((v1059[6].isa)(v251, 1, v1060) == 1)
          {
LABEL_74:
            sub_1CEFCCC44(v251, &qword_1EC4BFDE8, &qword_1CFA054E8);
            (*(*v182[3] + 360))(v1095, &v1084, *(v250 + 472), 1, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

            v252 = v1063;
            *v1063 = 0;
            *(v252 + 8) = -256;
            return;
          }

          sub_1CEFCCBDC(v251, v121, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if (swift_getEnumCaseMultiPayload() == 14)
          {
            if (*(v121 + 9))
            {

              sub_1CF1E53F8(*v121, *(v121 + 8), *(v121 + 9));
            }

            else
            {
              v488 = *(v121 + 10);
              v489 = *v121;
              v490 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v492 = v491;
              if (v490 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v492 == v493)
              {
              }

              else
              {
                v521 = sub_1CF9E8048();

                if ((v521 & 1) == 0)
                {

                  v251 = v1035;
                  goto LABEL_366;
                }
              }

              v522 = qword_1CFA05BE8[v488];
              v182 = v1062;
              v251 = v1035;
              if (qword_1CFA05BE8[v1095] == v522)
              {
                goto LABEL_74;
              }
            }
          }

          else
          {

            sub_1CEFCCC44(v121, &unk_1EC4C4E20, &unk_1CFA05350);
          }

LABEL_366:
          v463 = v1063;
          *v1063 = 0;
          *(v463 + 8) = -256;
          sub_1CEFCCC44(v251, &qword_1EC4BFDE8, &qword_1CFA054E8);
          return;
        }

LABEL_80:

        return;
      }

      if (v1061 == 0x80000)
      {
        v216 = v160;
        v217 = v1062[4];
        if (sub_1CF902E34())
        {
          v218 = *(*v182 + 160);
          v219 = v216;
          v218();

          v220 = v1063;
          *v1063 = 0;
          *(v220 + 8) = -256;
          return;
        }

        goto LABEL_110;
      }

      v260 = v1095;
      if (v1061 != 0x100000)
      {
        goto LABEL_965;
      }

      v261 = v155;
      v222 = v160;
      sub_1CF3F9E7C(v182, v1057 & 1, v1083);
      if (v260)
      {
        goto LABEL_80;
      }

      v278 = v261;
      v279 = v1083[0];
      if (v1083[0] == 89)
      {
        goto LABEL_109;
      }

      if (v1083[0] <= 5u)
      {
        if (v1083[0] >= 3u)
        {
          goto LABEL_109;
        }

        v293 = *&v1083[8];
        *v1083 = 0;
        v1083[8] = -1;
        v294 = sub_1CF07F344(v279, 1);
        if (v294 && (sub_1CF06D930(2, v293) & 1) != 0 || sub_1CF07F344(v279, 0))
        {
          sub_1CF4664AC(v182, v222, v1050, v1064, v1083);
          if (sub_1CF082780(v295 & 1, 0))
          {

LABEL_257:
            v381 = v1063;
            *v1063 = 0;
            *(v381 + 8) = -256;
            return;
          }
        }

        if (v294 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430), v375 = swift_allocObject(), v376 = sub_1CF06DA80(v375, 3), *v377 = xmmword_1CFA04F10, *(v377 + 16) = 1, v378 = nullsub_1(v376), sub_1CEFF5464(v378, v1082), !sub_1CF95EDE0(*v1082, v293)) || sub_1CF07F344(v279, 2))
        {
          sub_1CF4668EC(v278, v182, v1050, v1064, v1083);
          v380 = sub_1CF082780(v379 & 1, 0);

          if (v380)
          {
            goto LABEL_257;
          }
        }

        else
        {
        }

        v189 = v1063;
        goto LABEL_111;
      }

      if (v1083[0] != 12)
      {
        goto LABEL_109;
      }

      (*(*v182[4] + 288))(v1083, &v1084, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v418 = *v1083;
      if (!*v1083)
      {
        goto LABEL_109;
      }

      v419 = v182[2];
      sub_1CF7EBA74(*v1083, v1050, v1064, v1083);

      memcpy(v1082, v1083, sizeof(v1082));
      if (sub_1CF08B99C(v1082) != 1)
      {
        memcpy(v1081, v1083, 0x208uLL);
        v556 = LOBYTE(v1081[6]);
        sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
        sub_1CF06EE7C(v556, 1);
        v557 = v1063;
        *v1063 = 0;
        *(v557 + 8) = -256;
        return;
      }

      memcpy(v1081, v1083, 0x208uLL);
      v420 = &unk_1EC4BFD80;
      v421 = &unk_1CFA0A2A0;
LABEL_297:
      sub_1CEFCCC44(v1081, v420, v421);
      goto LABEL_110;
    }

    v163 = v1095;
    v198 = v1062;
    if (v1061 != 4096)
    {
      if (v1061 == 0x2000)
      {
        v199 = v161;
        v200 = *(*v1062 + 152);
        v1057 = v160;
        v201 = v160;
        v202 = v200();
        if ((sub_1CF06D930(128, v202) & 1) == 0 || sub_1CF9526EC(v199, 0x20000000000))
        {
          goto LABEL_95;
        }

        sub_1CF44CD74(v198, v1083);
        if (v163)
        {
          goto LABEL_184;
        }

        v203 = *v1083;
        v204 = *&v1083[8];
        v205 = *&v1083[16];
        v206 = v1041;
        v207 = &v1041[*(v1038 + 48)];
        sub_1CEFCCBDC(v1058, v1041, &qword_1EC4BFDE8, &qword_1CFA054E8);
        *v207 = v203;
        v207[1] = v204;
        v1061 = v204;
        v1064 = v205;
        v207[2] = v205;
        v208 = v1059[6].isa;
        v1059 += 6;
        if ((v208)(v206, 1, v1060) == 1)
        {

          v209 = v206;
LABEL_306:
          v429 = v1063;
          *v1063 = 0;
          *(v429 + 8) = -256;
          sub_1CEFCCC44(v209, &qword_1EC4BFE70, &qword_1CFA05550);
          return;
        }

        v364 = v206;
        v365 = v996;
        sub_1CEFCCBDC(v364, v996, &qword_1EC4BFDE8, &qword_1CFA054E8);
        if (swift_getEnumCaseMultiPayload() != 28)
        {

          v366 = &unk_1EC4C4E20;
          v367 = &unk_1CFA05350;
          goto LABEL_303;
        }

        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v366 = &qword_1EC4BFD38;
          v367 = &unk_1CFA05450;
LABEL_303:
          v428 = v365;
LABEL_304:
          sub_1CEFCCC44(v428, v366, v367);
LABEL_305:
          v209 = v1041;
          goto LABEL_306;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          switch(EnumCaseMultiPayload)
          {
            case 2:
              v523 = v996[16];
              sub_1CF48048C(v203, v1061, v1064);

              if (v203 >> 62 || (v1095 = 0, v203 != 2))
              {

                sub_1CF480498(v203);
                v589 = v996;
                v990 = v996[13];
                v994 = v996[14];
                sub_1CF1D5750(v996[3], v996[4], v996[5], v996[6], v996[7], v996[8], v996[9], v996[10], v996[11]);
                v531 = *v589;
                goto LABEL_505;
              }

              v524 = *v996;
              v988 = v996[13];
              v992 = v996[14];
              sub_1CF1D5750(v996[3], v996[4], v996[5], v996[6], v996[7], v996[8], v996[9], v996[10], v996[11]);
LABEL_452:
              v525 = v207[1];
              v526 = v207[2];
              sub_1CF480498(*v207);
              sub_1CEFCCC44(v1041, &qword_1EC4BFDE8, &qword_1CFA054E8);
              v527 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v529 = v528;
              if (v527 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v529 != v530)
              {
                sub_1CF9E8048();
              }

              v582 = v524;
              v583 = v201;
              v584 = v582;

              sub_1CF480498(v203);

              v585 = v1084;
              v586 = v1063;
              *v1063 = 0;
              *(v586 + 8) = -256;
              return;
            case 4:
              if (!(v203 >> 62))
              {
                v1095 = 0;
                if (v203 != 23)
                {
                  goto LABEL_350;
                }

LABEL_451:
                v524 = *v996;
                sub_1CF48048C(v203, v1061, v1064);
                goto LABEL_452;
              }

LABEL_455:

              v531 = *v996;
LABEL_505:

              goto LABEL_305;
            case 5:
              if (!(v203 >> 62))
              {
                v1095 = 0;
                if (v203 != 6)
                {
LABEL_350:

LABEL_504:
                  v531 = *v996;
                  goto LABEL_505;
                }

                goto LABEL_451;
              }

              goto LABEL_455;
          }

LABEL_463:

          v366 = &unk_1EC4BFD70;
          v367 = &qword_1CFA12AC0;
          v428 = v996;
          goto LABEL_304;
        }

        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_463;
          }

          v1095 = 0;
          v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
          v478 = v996 + v477[12];
          v479 = (v996 + v477[20]);
          v480 = *(v996 + v477[28]);
          v481 = *(v996 + v477[32]);
          sub_1CF48048C(v203, v1061, v1064);

          if (!(v203 >> 62) && v203 == 1)
          {
            v1056 = *v996;
            *v1083 = v1056;
            v987 = v479[10];
            v991 = v479[11];
            sub_1CF1D5750(*v479, v479[1], v479[2], v479[3], v479[4], v479[5], v479[6], v479[7], v479[8]);
LABEL_664:
            sub_1CEFCCC44(v478, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            v644 = v207[1];
            v645 = v207[2];
            sub_1CF480498(*v207);
            sub_1CEFCCC44(v1041, &qword_1EC4BFDE8, &qword_1CFA054E8);
            v646 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v648 = v647;
            if (v646 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v648 == v649)
            {
              v650 = v1056;
              v651 = v201;
            }

            else
            {
              v652 = sub_1CF9E8048();
              v653 = v1056;
              v654 = v201;

              if ((v652 & 1) == 0)
              {
                sub_1CF480498(v203);

                v682 = v1063;
                *v1063 = 0;
                *(v682 + 8) = -256;
                return;
              }
            }

            v655 = v1095;
            v656 = (*(*v1062[4] + 312))(v1083, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            if (v655)
            {
              sub_1CF480498(v203);

              goto LABEL_39;
            }

            v668 = v656;
            v669 = v657;

            if ((v669 & 1) == 0 && v668 == v480)
            {

              sub_1CF480498(v203);
              goto LABEL_110;
            }

            v713 = v1021;
            sub_1CEFCCBDC(v1058, v1021, &qword_1EC4BFDE8, &qword_1CFA054E8);
            if ((v208)(v713, 1, v1060) == 1)
            {

              sub_1CF480498(v203);
              v714 = &qword_1EC4BFDE8;
              v715 = &qword_1CFA054E8;
            }

            else
            {
              if (swift_getEnumCaseMultiPayload() == 28)
              {
                v737 = v1010;
                sub_1CEFE55D0(v1021, v1010, &qword_1EC4BFD38, &unk_1CFA05450);
                sub_1CF9E5198();
                sub_1CF4C3DAC();
                sub_1CF042F54(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
                v738 = v1009;
                v739 = v1013;
                sub_1CF9E57D8();
                v740 = sub_1CF9E50D8();
                (*(v1012 + 8))(v738, v739);
                (*(*v1062 + 520))(v737, v740);

                sub_1CF480498(v203);
                sub_1CEFCCC44(v737, &qword_1EC4BFD38, &unk_1CFA05450);

                goto LABEL_257;
              }

              sub_1CF480498(v203);
              v714 = &unk_1EC4C4E20;
              v715 = &unk_1CFA05350;
            }

            sub_1CEFCCC44(v1021, v714, v715);
            goto LABEL_257;
          }

          sub_1CF480498(v203);
          v989 = v479[10];
          v993 = v479[11];
          sub_1CF1D5750(*v479, v479[1], v479[2], v479[3], v479[4], v479[5], v479[6], v479[7], v479[8]);
        }

        else
        {
          v1095 = 0;
          v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
          v478 = v996 + v532[12];
          v480 = *(v996 + v532[16]);
          v533 = *(v996 + v532[20]);
          sub_1CF48048C(v203, v1061, v1064);

          if (!(v203 >> 62) && !v203)
          {
            v1056 = *v996;
            *v1083 = v1056;
            goto LABEL_664;
          }

          sub_1CF480498(v203);
        }

        sub_1CEFCCC44(v478, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        goto LABEL_504;
      }

      if (v1061 != 0x4000)
      {
        goto LABEL_965;
      }

      v239 = v160;
      v240 = v1062[4];
      if (!sub_1CF902E34())
      {
        goto LABEL_110;
      }

      v241 = v198[3];
      v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF18, &qword_1CF9FB3C8);
      v243 = *(*v241 + 328);
      v201 = v239;
      v244 = v243(&v1084, v242, 0, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v163)
      {
        goto LABEL_184;
      }

      if (v244)
      {

        goto LABEL_64;
      }

      (*(*v240 + 328))(v1087, &v1084, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v1088)
      {
        goto LABEL_95;
      }

      if (v1087[0])
      {
        goto LABEL_145;
      }

      v474 = v1028;
      (*(*v240 + 240))(&v1084, 1, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v475 = v1052;
      if ((*(v1051 + 48))(v474, 1, v1052) == 1)
      {

        sub_1CEFCCC44(v474, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        goto LABEL_110;
      }

      v552 = v1027;
      sub_1CEFE55D0(v474, v1027, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v553 = (v552 + *(v475 + 48));
      if (v553[v1037[21]])
      {
        sub_1CEFCCC44(v1027, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

        v554 = v1063;
        *v1063 = 0;
        *(v554 + 8) = -256;
        return;
      }

      if (!sub_1CF06DA5C(*v553, 1) || (v553[v1037[15]] & 1) != 0)
      {
        sub_1CEFCCC44(v1027, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        goto LABEL_53;
      }

      if (v553[v1037[16]])
      {
        sub_1CEFCCC44(v1027, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

        goto LABEL_64;
      }

      v744 = (*v241 + 384);
      v745 = *v744;
      v746 = (*v744)(v1027, 1, 0, 1, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      sub_1CF661BC0(v746, v1083);

      if (*&v1083[56] == 1)
      {
        *&v1082[32] = *&v1083[32];
        *&v1082[48] = *&v1083[48];
        *&v1082[64] = *&v1083[64];
        *&v1082[80] = *&v1083[80];
        *v1082 = *v1083;
        *&v1082[16] = *&v1083[16];
        sub_1CEFCCC44(v1082, &unk_1EC4BFE10, &unk_1CFA05500);
      }

      else
      {
        v863 = v1083[64];

        sub_1CF1E53F8(*v1083, v1083[8], v1083[9]);
        if (v863 == 6)
        {
          sub_1CEFCCC44(v1027, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

          goto LABEL_919;
        }
      }

      v864 = v745(v1027, 0, 0, 1, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      sub_1CF661BC0(v864, v1082);
      sub_1CEFCCC44(v1027, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v907 = v1084;

      if (*&v1082[56] == 1)
      {
        v1081[2] = *&v1082[32];
        v1081[3] = *&v1082[48];
        v1081[4] = *&v1082[64];
        *&v1081[5] = *&v1082[80];
        v1081[0] = *v1082;
        v1081[1] = *&v1082[16];
        v420 = &unk_1EC4BFE10;
        v421 = &unk_1CFA05500;
        goto LABEL_297;
      }

      v912 = v1082[64];

      sub_1CF1E53F8(*v1082, v1082[8], v1082[9]);
      if (v912 != 6)
      {
        goto LABEL_110;
      }

LABEL_919:
      v913 = v1063;
      *v1063 = 0;
      *(v913 + 8) = -256;
      return;
    }

    v227 = v155;
    v228 = v160;
    fp_precondition(_:_:file:line:)(sub_1CF4858FC, v198, sub_1CF6B8D1C, 0, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 2467);
    v229 = v1053;
    sub_1CEFCCBDC(v1058, v1053, &qword_1EC4BFDE8, &qword_1CFA054E8);
    if ((v1059[6].isa)(v229, 1, v1060) == 1)
    {
LABEL_49:
      sub_1CEFCCC44(v229, &qword_1EC4BFDE8, &qword_1CFA054E8);
      v230 = v198[5];
      v231 = *(**(v230 + 16) + 848);

      LOBYTE(v231) = v231(v232);

      if (((v231 & 1) != 0 || (*(v230 + 33) & 1) == 0) && (!sub_1CF75C2AC() || (sub_1CF06D930(16, *(v227 + 224)) & 1) == 0))
      {
        v280 = v1048;
        (*(*v198[4] + 240))(&v1084, 1, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v163)
        {
          goto LABEL_39;
        }

        v281 = v1052;
        if ((*(v1051 + 48))(v280, 1, v1052) == 1)
        {
          sub_1CEFCCC44(v280, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        }

        else
        {
          v344 = v1036;
          sub_1CEFDA214(v280 + *(v281 + 48), v1036, type metadata accessor for ItemMetadata);
          sub_1CEFCCC44(v280, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v345 = *(v344 + v1037[21]);
          sub_1CEFD5278(v344, type metadata accessor for ItemMetadata);
          if (!v345)
          {
            goto LABEL_110;
          }
        }

        v346 = v1063;
        *v1063 = 0;
        *(v346 + 8) = -256;
        return;
      }

      goto LABEL_53;
    }

    sub_1CEFCCBDC(v229, v94, &qword_1EC4BFDE8, &qword_1CFA054E8);
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      if (*(v94 + 9))
      {
        sub_1CF1E53F8(*v94, *(v94 + 8), 1);
        goto LABEL_49;
      }

      sub_1CF1E53F8(*v94, *(v94 + 8), *(v94 + 9));
    }

    else
    {

      sub_1CEFCCC44(v94, &unk_1EC4C4E20, &unk_1CFA05350);
    }

    v305 = v1063;
    *v1063 = 0;
    *(v305 + 8) = -256;
    sub_1CEFCCC44(v229, &qword_1EC4BFDE8, &qword_1CFA054E8);
    return;
  }

  if (v1061 <= 15)
  {
    v163 = v1095;
    v187 = v1062;
    if (v1061 != 2)
    {
      if (v1061 == 4)
      {
        v188 = *(v155 + 216);
        v189 = v1063;
        v190 = v1059;
        if (v188 == 255)
        {
          goto LABEL_111;
        }

        v191 = *(v155 + 224);
        v192 = *(v155 + 208);
        *v1082 = v192;
        v1082[8] = v188;
        if (*(v155 + 456) != 1)
        {
          goto LABEL_111;
        }

        v1064 = v191;
        v193 = v160;
        v134 = v1047;
        sub_1CEFCCBDC(v1058, v1047, &qword_1EC4BFDE8, &qword_1CFA054E8);
        if (v190[6](v134, 1, v1060) == 1)
        {
          v194 = v193;
LABEL_25:
          v195 = sub_1CEFCCC44(v134, &qword_1EC4BFDE8, &qword_1CFA054E8);
          (*(*v187 + 248))(v195);
          sub_1CF9E7B08();

          sub_1CF9E7C08();
          for (i = *&v1081[0]; (~*&v1081[0] & 0xF000000000000007) != 0; i = *&v1081[0])
          {
            if (i < 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
              v328 = swift_dynamicCastClass();
              if (v328 && (v329 = v328, (sub_1CF06D930(1, *(v328 + 136)) & 1) != 0) && (swift_beginAccess(), (v330 = *(v329 + 232)) != 0))
              {
                v331 = v1084;
                v332 = *(v329 + 232);
                v333 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v335 = v334;
                if (v333 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v335 == v336)
                {
                  v482 = v331;
                  v483 = v330;
                  v484 = v482;

LABEL_401:

                  v485 = *(v329 + 144);
                  v486 = v1063;
                  *v1063 = v485;
                  v487 = v485;

                  *(v486 + 9) = 0;
                  return;
                }

                v338 = sub_1CF9E8048();
                v339 = v331;
                v340 = v330;
                v341 = v339;

                if (v338)
                {
                  goto LABEL_401;
                }

                v163 = v1095;
                v187 = v1062;
              }

              else
              {
                v187 = v1062;
              }
            }

            sub_1CF9E7C08();
          }

          if (sub_1CF06D930(16, v1064))
          {
            v197 = 1;
          }

          else
          {
            v342 = (*(*v187[5] + 488))(v1082, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            if (v163)
            {
              goto LABEL_39;
            }

            v197 = v342;
          }

          (*(*v187[4] + 432))(v1081, &v1084, (v197 & 1) == 0, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v163)
          {
            goto LABEL_39;
          }

          if (*&v1081[0])
          {
            v343 = v1063;
            *v1063 = *&v1081[0];
            *(v343 + 8) = 0;
            return;
          }

          goto LABEL_110;
        }

        v306 = v1043;
        sub_1CEFCCBDC(v134, v1043, &qword_1EC4BFDE8, &qword_1CFA054E8);
        v307 = swift_getEnumCaseMultiPayload();
        if (v307 != 6)
        {
          if (v307 != 7)
          {
            if (v307 == 13)
            {
              v308 = *(v306 + 2);
              v309 = v193;

              if ((v306[9] & 1) != 0 || v306[10] && v306[10] != 23)
              {

                sub_1CF1E53F8(*v306, v306[8], v306[9]);
                goto LABEL_529;
              }

              sub_1CF1E53F8(*v306, v306[8], 0);
              goto LABEL_25;
            }

            v387 = &unk_1EC4C4E20;
            v388 = &unk_1CFA05350;
            v386 = v306;
LABEL_275:
            sub_1CEFCCC44(v386, v387, v388);
            goto LABEL_529;
          }

          v385 = &v306[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48)];
          if ((*(v1044 + 48))(v385, 1, v1040) == 1)
          {
            sub_1CEFCCC44(v385, &qword_1EC4C1B40, &unk_1CF9FCB70);
            v386 = v306;
            v387 = &qword_1EC4C1B40;
            v388 = &unk_1CF9FCB70;
            goto LABEL_275;
          }

          v436 = *(v385 + 16);
          v437 = *(v385 + 24);
          v438 = v193;
          sub_1CEFCCC44(v385, &unk_1EC4BE360, &qword_1CF9FE650);
          if (v437)
          {
            if (v437 == 1)
            {
              v134 = v1047;
              if (v188 != 1 || v436 != v192)
              {
LABEL_462:

                v387 = &qword_1EC4C1B40;
                v388 = &unk_1CF9FCB70;
                v386 = v1043;
                goto LABEL_275;
              }
            }

            else
            {
              v134 = v1047;
              if (v436)
              {
                if (v188 != 2 || v192 != 1)
                {
                  goto LABEL_462;
                }
              }

              else if (v188 != 2 || v192)
              {
                goto LABEL_462;
              }
            }
          }

          else
          {
            v134 = v1047;
            if (v188 || v436 != v192)
            {
              goto LABEL_462;
            }
          }

          sub_1CEFCCC44(v1043, &qword_1EC4C1B40, &unk_1CF9FCB70);
          goto LABEL_25;
        }

        v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
        v390 = v306;
        v391 = *(v389 + 48);
        if ((*(v1051 + 48))(v390, 1, v1052) == 1)
        {
          sub_1CEFCCC44(v390 + v391, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v386 = v390;
          v387 = &unk_1EC4BFBB0;
          v388 = &qword_1CF9FCB90;
          goto LABEL_275;
        }

        v439 = *(v390 + *(v389 + 64));
        v440 = v1031;
        sub_1CEFE55D0(v390, v1031, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        if (sub_1CF06D930(2, v439))
        {
          v441 = *(v440 + 8);
          v442 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v444 = v443;
          if (v442 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v444 == v445)
          {
            v446 = v193;

            sub_1CEFCCC44(v440, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_418:
            sub_1CEFCCC44(&v1043[v391], &unk_1EC4BFBB0, &qword_1CF9FCB90);
            v134 = v1047;
            goto LABEL_25;
          }

          v508 = sub_1CF9E8048();
          v509 = v193;

          sub_1CEFCCC44(v440, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          if (v508)
          {
            goto LABEL_418;
          }
        }

        else
        {
          v465 = v193;
          sub_1CEFCCC44(v440, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        }

        sub_1CEFCCC44(&v1043[v391], &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v134 = v1047;
        goto LABEL_529;
      }

      if (v1061 != 8)
      {
        goto LABEL_965;
      }

      v233 = *(v155 + 216);
      if (v233 == 255)
      {
        goto LABEL_110;
      }

      v234 = *(v155 + 208);
      v1079[0] = v234;
      LOBYTE(v1079[1]) = v233;
      if (*(v155 + 456) != 1)
      {
        goto LABEL_110;
      }

      v1061 = v162;
      v235 = v160;
      v236 = v1049;
      sub_1CEFCCBDC(v1058, v1049, &qword_1EC4BFDE8, &qword_1CFA054E8);
      if ((v1059[6].isa)(v236, 1, v1060) == 1)
      {
        v237 = v235;
        v238 = v236;
LABEL_223:
        sub_1CEFCCC44(v238, &qword_1EC4BFDE8, &qword_1CFA054E8);
        v355 = v187[5];
        v356 = sub_1CF06D930(2, v1061);
        (*(*v355 + 400))(v1083, v1079, v356 & 1, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v163)
        {
          goto LABEL_39;
        }

        if (v1083[8] != 255)
        {

          v357 = v1083[8] | 0x100;
          v358 = v1063;
          *v1063 = *v1083;
          *(v358 + 8) = v357;
          return;
        }

        (*(*v187[4] + 408))(v1083, &v1084, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v401 = *v1083;
        if (*v1083)
        {

          v402 = v1063;
          *v1063 = v401;
          *(v402 + 8) = 0;
          return;
        }

        (*(*v355 + 472))(v1083, v1079, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

        v494 = v1083[8];
        if (v1083[8] != 255)
        {
          v495 = v1063;
          *v1063 = *v1083;
          *(v495 + 8) = v494 | 0x100;
          return;
        }

        goto LABEL_110;
      }

      v310 = v236;
      v311 = v1042;
      sub_1CEFCCBDC(v310, v1042, &qword_1EC4BFDE8, &qword_1CFA054E8);
      v312 = swift_getEnumCaseMultiPayload();
      if (v312 > 21)
      {
        if (v312 != 22 && v312 != 33)
        {
          goto LABEL_298;
        }

LABEL_220:
        v351 = v235;
        v352 = &unk_1EC4C4E20;
        v353 = &unk_1CFA05350;
LABEL_221:
        v354 = v311;
LABEL_222:
        sub_1CEFCCC44(v354, v352, v353);
        v238 = v1049;
        goto LABEL_223;
      }

      if (v312 != 7)
      {
        if (v312 != 9)
        {
LABEL_298:
          v422 = &unk_1EC4C4E20;
          v423 = &unk_1CFA05350;
LABEL_299:
          v424 = v311;
LABEL_538:
          sub_1CEFCCC44(v424, v422, v423);
          v575 = v1049;
          v576 = v1063;
          *v1063 = 0;
          *(v576 + 8) = -256;
          sub_1CEFCCC44(v575, &qword_1EC4BFDE8, &qword_1CFA054E8);
          return;
        }

        goto LABEL_220;
      }

      v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
      v1060 = *(v425 + 48);
      v426 = *(v1044 + 48);
      v1044 += 48;
      v1059 = v426;
      if ((v426)(v311, 1, v1040) == 1)
      {
        v427 = v235;
        goto LABEL_536;
      }

      v449 = *&v311[*(v425 + 64)];
      v450 = v311;
      v451 = v1030;
      sub_1CEFCCBDC(v450, v1030, &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFE55D0(v451, v1034, &unk_1EC4BE360, &qword_1CF9FE650);
      if (sub_1CF06D930(2, v449))
      {
        v452 = *(v1034 + 16);
        if (*(v1034 + 24))
        {
          if (*(v1034 + 24) == 1)
          {
            if (v233 != 1 || v452 != v234)
            {
              goto LABEL_535;
            }
          }

          else if (v452)
          {
            if (v233 != 2 || v234 != 1)
            {
              goto LABEL_535;
            }
          }

          else if (v233 != 2 || v234)
          {
            goto LABEL_535;
          }
        }

        else if (v233 || v452 != v234)
        {
          goto LABEL_535;
        }

        v571 = v235;
        sub_1CEFCCC44(v1034, &unk_1EC4BE360, &qword_1CF9FE650);
        v572 = v1042;
        sub_1CEFCCC44(&v1042[v1060], &qword_1EC4C1B40, &unk_1CF9FCB70);
        v354 = v572;
        v352 = &qword_1EC4C1B40;
        v353 = &unk_1CF9FCB70;
        goto LABEL_222;
      }

LABEL_535:
      v573 = v235;
      sub_1CEFCCC44(v1034, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_536:
      v311 = v1042;
      v574 = v1060;
      if ((v1059)(&v1042[v1060], 1, v1040) == 1)
      {

        sub_1CEFCCC44(&v311[v574], &qword_1EC4C1B40, &unk_1CF9FCB70);
        v424 = v311;
        v422 = &qword_1EC4C1B40;
        v423 = &unk_1CF9FCB70;
        goto LABEL_538;
      }

      v577 = &v311[v574];
      v578 = v1029;
      sub_1CEFE55D0(v577, v1029, &unk_1EC4BE360, &qword_1CF9FE650);
      v579 = *(v578 + 16);
      if (*(v578 + 24))
      {
        v580 = v1061;
        if (*(v578 + 24) == 1)
        {
          if (v233 != 1 || v579 != v234)
          {
LABEL_556:
            sub_1CEFCCC44(v578, &unk_1EC4BE360, &qword_1CF9FE650);

            v422 = &qword_1EC4C1B40;
            v423 = &unk_1CF9FCB70;
            goto LABEL_299;
          }
        }

        else if (v579)
        {
          if (v233 != 2 || v234 != 1)
          {
            goto LABEL_556;
          }
        }

        else if (v233 != 2 || v234)
        {
          goto LABEL_556;
        }
      }

      else
      {
        v580 = v1061;
        if (v233 || v579 != v234)
        {
          goto LABEL_556;
        }
      }

      if (sub_1CF06D930(2, v580))
      {
        sub_1CEFCCC44(v578, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_555:
        v352 = &qword_1EC4C1B40;
        v353 = &unk_1CF9FCB70;
        goto LABEL_221;
      }

      v581 = v187[2];
      sub_1CF7F5D3C(*v578, *(v578 + 8), v1050, v1064, v1083);
      if (v163)
      {
        sub_1CEFCCC44(v578, &unk_1EC4BE360, &qword_1CF9FE650);

        sub_1CEFCCC44(v311, &qword_1EC4C1B40, &unk_1CF9FCB70);
        sub_1CEFCCC44(v1049, &qword_1EC4BFDE8, &qword_1CFA054E8);
        return;
      }

      sub_1CEFCCC44(v578, &unk_1EC4BE360, &qword_1CF9FE650);
      memcpy(v1082, v1083, sizeof(v1082));
      if (sub_1CF08B99C(v1082) == 1)
      {
        memcpy(v1081, v1083, 0x208uLL);
        sub_1CEFCCC44(v1081, &unk_1EC4BFC20, &unk_1CFA0A290);
LABEL_561:
        v187 = v1062;
        v311 = v1042;
        goto LABEL_555;
      }

      memcpy(v1081, v1083, 0x208uLL);
      if (sub_1CF902E40(*(&v1081[1] + 1)))
      {
        sub_1CEFCCBDC(v1081, v1080, &unk_1EC4BFE00, &unk_1CF9FEF00);
        sub_1CEFCCC44(v1081, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v587 = v1081[9];
        v588 = LOBYTE(v1081[10]);
        sub_1CF03C530(*&v1081[9], *(&v1081[9] + 1), v1081[10]);
        sub_1CEFCCC44(v1081, &unk_1EC4BFE00, &unk_1CF9FEF00);
        if (v588 != 2)
        {
          sub_1CF03D7A8(v587, *(&v587 + 1), v588);
          goto LABEL_561;
        }
      }

      else
      {
        sub_1CEFCCC44(v1081, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      }

      v667 = v1063;
      *v1063 = 0;
      *(v667 + 8) = -256;
      sub_1CEFCCC44(v1042, &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFCCC44(v1049, &qword_1EC4BFDE8, &qword_1CFA054E8);
      return;
    }

    v1056 = v149;
    v1057 = v161;
    v134 = v159;
    v1055 = v147;
    v1061 = v155;
    v221 = qword_1EDEA34B0;
    v222 = v160;
    if (v221 != -1)
    {
      swift_once();
    }

    v223 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v225 = v224;
    if (v223 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v225 != v226)
    {
      v262 = sub_1CF9E8048();

      if (v262)
      {
        goto LABEL_109;
      }

      if (qword_1EDEA3498 != -1)
      {
        swift_once();
      }

      v263 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v265 = v264;
      if (v263 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v265 != v266)
      {
        v267 = sub_1CF9E8048();

        if (v267)
        {
          goto LABEL_109;
        }

        v268 = v1061;
        v269 = sub_1CF75C2AC();
        if (v269)
        {
          if ((sub_1CF06D930(2, v1057) & 1) == 0)
          {
            goto LABEL_109;
          }
        }

        else if (*(v268 + 240) == 2)
        {
          goto LABEL_109;
        }

        v382 = v134;
        sub_1CEFCCBDC(v1058, v134, &qword_1EC4BFDE8, &qword_1CFA054E8);
        v163 = v1059[6].isa;
        v1059 += 6;
        if (v163(v134, 1, v1060) != 1)
        {
          v383 = v1032;
          sub_1CEFCCBDC(v134, v1032, &qword_1EC4BFDE8, &qword_1CFA054E8);
          v384 = swift_getEnumCaseMultiPayload();
          if (v384 <= 10)
          {
            if (v384 <= 6)
            {
              if (v384 == 1)
              {

                goto LABEL_468;
              }

              if (v384 != 3)
              {
                goto LABEL_493;
              }

              goto LABEL_413;
            }

            if (v384 != 7)
            {
              if (v384 == 8)
              {
LABEL_413:
                sub_1CEFCCC44(v383, &unk_1EC4C4E20, &unk_1CFA05350);
LABEL_468:
                v382 = v134;
                goto LABEL_469;
              }

LABEL_493:

              sub_1CEFCCC44(v383, &unk_1EC4C4E20, &unk_1CFA05350);
              goto LABEL_529;
            }

            v545 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
            v546 = *(v545 + 48);
            if ((*(v1044 + 48))(v383, 1, v1040) == 1)
            {

              sub_1CEFCCC44(v383 + v546, &qword_1EC4C1B40, &unk_1CF9FCB70);
              v547 = v383;
LABEL_527:
              sub_1CEFCCC44(v547, &qword_1EC4C1B40, &unk_1CF9FCB70);
              goto LABEL_529;
            }

            v564 = *(v383 + *(v545 + 64));
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
            v565 = swift_allocObject();
            v566 = sub_1CF06DA80(v565, 2);
            *v567 = xmmword_1CFA04F20;
            v568 = nullsub_1(v566);
            sub_1CEFF5464(v568, v1083);
            if (sub_1CF95EDE0(*v1083, v564))
            {

              v569 = v1032;
              sub_1CEFCCC44(v1032, &qword_1EC4C1B40, &unk_1CF9FCB70);
              v547 = v569 + v546;
              goto LABEL_527;
            }

            if (!v269 || *(v1061 + 456) != 1)
            {

              v658 = v1063;
              *v1063 = 0;
              *(v658 + 8) = -256;
              v659 = v1032;
              sub_1CEFCCC44(v1032, &qword_1EC4C1B40, &unk_1CF9FCB70);
              sub_1CEFCCC44(v659 + v546, &qword_1EC4C1B40, &unk_1CF9FCB70);
              sub_1CEFCCC44(v134, &qword_1EC4BFDE8, &qword_1CFA054E8);
              return;
            }

            v639 = v1032;
            sub_1CEFCCC44(v1032, &qword_1EC4C1B40, &unk_1CF9FCB70);
            sub_1CEFCCC44(v639 + v546, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_467:
            v187 = v1062;
            goto LABEL_468;
          }

          if (v384 <= 22)
          {
            if (v384 != 11)
            {
              if (v384 != 22)
              {
                goto LABEL_493;
              }

              goto LABEL_413;
            }

            if (*(v383 + 27) != 2)
            {

              sub_1CF4804C0(*(v383 + 16), *(v383 + 24));
              sub_1CF1E53F8(*v383, *(v383 + 8), *(v383 + 9));
              goto LABEL_529;
            }

            sub_1CF4804C0(*(v383 + 16), *(v383 + 24));
            sub_1CF1E53F8(*v383, *(v383 + 8), *(v383 + 9));
            goto LABEL_467;
          }

          if (v384 != 23)
          {
            if (v384 == 27)
            {
              sub_1CF1E53F8(*v383, *(v383 + 8), *(v383 + 9));
              goto LABEL_468;
            }

            goto LABEL_493;
          }

          if ((*v383 & 1) == 0)
          {
            goto LABEL_528;
          }

          v187 = v1062;
          v548 = (*(*v1062 + 152))();
          v382 = v134;
          if ((v269 & sub_1CF06D930(0x4000, v548) & 1) == 0 || (sub_1CF06D930(128, v1061[28]) & 1) == 0 || (sub_1CF06D930(2, v1057) & 1) == 0)
          {

            v549 = v1063;
            *v1063 = 0;
            *(v549 + 8) = -256;
            sub_1CEFCCC44(v134, &qword_1EC4BFDE8, &qword_1CFA054E8);
            return;
          }
        }

LABEL_469:
        sub_1CEFCCC44(v382, &qword_1EC4BFDE8, &qword_1CFA054E8);
        v534 = v187[4];
        v535 = v1095;
        (*(*v534 + 288))(v1083, &v1084, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v535)
        {
          goto LABEL_39;
        }

        v536 = *v1083;
        if (!*v1083)
        {
LABEL_660:

          v642 = v1063;
          *v1063 = 0;
          *(v642 + 8) = -256;
          return;
        }

        v1054 = v187[2];
        sub_1CF7EBA74(*v1083, v1050, v1064, v1083);
        v1095 = 0;
        v1053 = v536;
        v537 = (*(*v187 + 152))();
        if (v269 & sub_1CF06D930(0x4000, v537))
        {
          v538 = *(v1061 + 216);
          if (v538 != 255)
          {
            v539 = v1061[28];
            v541 = v1061[44];
            v540 = v1061[45];
            v542 = *(v1061 + 368);
            v1076[0] = v1061[26];
            LOBYTE(v1076[1]) = v538;
            if (sub_1CF06D930(128, v539) & 1) != 0 && (sub_1CF06D930(2, v1057))
            {
              *&v1082[160] = *&v1083[160];
              *&v1082[176] = *&v1083[176];
              *&v1082[192] = *&v1083[192];
              *&v1082[208] = *&v1083[208];
              *&v1082[96] = *&v1083[96];
              *&v1082[112] = *&v1083[112];
              *&v1082[128] = *&v1083[128];
              *&v1082[144] = *&v1083[144];
              *&v1082[32] = *&v1083[32];
              *&v1082[48] = *&v1083[48];
              *&v1082[64] = *&v1083[64];
              *&v1082[80] = *&v1083[80];
              *v1082 = *v1083;
              *&v1082[16] = *&v1083[16];
              v543 = *&v1083[224];
              memcpy(&v1082[232], &v1083[232], 0x120uLL);
              *&v1082[224] = *&v1083[224];
              if (sub_1CF08B99C(v1082) != 1 && (sub_1CF06D930(128, v543) & 1) != 0)
              {
                goto LABEL_760;
              }

              if (sub_1CF06D930(32, v539))
              {
                goto LABEL_481;
              }

              if (!sub_1CF95EEA0(512, v541, v540, v542))
              {
LABEL_760:
                memcpy(v1081, v1083, 0x208uLL);
                sub_1CEFCCC44(v1081, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                v736 = v1063;
                *v1063 = v1053;
                *(v736 + 8) = 0;
                return;
              }

              v734 = v1095;
              (*(*v1062[5] + 288))(v1080, v1076, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v1095 = v734;
              if (v734)
              {
                memcpy(v1081, v1083, 0x208uLL);
                v735 = v1081;
LABEL_820:
                sub_1CEFCCC44(v735, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                goto LABEL_39;
              }

              v793 = LOBYTE(v1080[1]);
              if (LOBYTE(v1080[1]) == 255)
              {
                memcpy(v1081, v1083, 0x208uLL);
                sub_1CEFCCC44(v1081, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_924:
                v914 = v1063;
                *v1063 = v1053;
                *(v914 + 8) = 0;
                return;
              }

              v794 = v1080[0];
              v795 = v1095;
              sub_1CF7F5D3C(v1080[0], v1080[1], v1050, v1064, v1081);
              v1095 = v795;
              memcpy(v1080, v1081, sizeof(v1080));
              if (sub_1CF08B99C(v1080) == 1)
              {
                memcpy(v1078, v1083, sizeof(v1078));
                sub_1CEFCCC44(v1078, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                memcpy(v1079, v1081, sizeof(v1079));
                sub_1CEFCCC44(v1079, &unk_1EC4BFC20, &unk_1CFA0A290);
                goto LABEL_924;
              }

              memcpy(v1079, v1081, sizeof(v1079));
              v935 = v1079[2];
              sub_1CEFCCC44(v1079, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
              if ((sub_1CF06D930(128, v935) & 1) == 0)
              {
                memcpy(v1078, v1083, sizeof(v1078));
                sub_1CEFCCC44(v1078, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                v936 = v1063;
                *v1063 = v794;
                *(v936 + 8) = v793 | 0x100;
                return;
              }
            }
          }
        }

LABEL_481:
        memcpy(v1081, v1083, 0x208uLL);
        memcpy(v1082, v1083, sizeof(v1082));
        if (sub_1CF08B99C(v1082) == 1)
        {
          goto LABEL_838;
        }

        memcpy(v1080, v1081, sizeof(v1080));
        if (LOBYTE(v1080[27]) == 255)
        {
          goto LABEL_838;
        }

        v1076[0] = v1080[26];
        LOBYTE(v1076[1]) = v1080[27];
        v544 = sub_1CF946F4C(16, v1080[28]);
        if (!sub_1CF902E40(v544))
        {
          goto LABEL_838;
        }

        if (LOBYTE(v1080[57]) <= 1u && LOBYTE(v1080[57]))
        {
          v728 = v1062[3];
          v729 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
          v730 = *(*v728 + 320);
          sub_1CEFCCBDC(v1081, v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v731 = v1095;
          v732 = v730(v1076, v729, 8512, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v1095 = v731;
          if (v731)
          {
            goto LABEL_819;
          }

          if (v732)
          {
            sub_1CEFCCC44(v1080, &unk_1EC4BFC90, &unk_1CFA053E0);
            memcpy(v1079, v1083, sizeof(v1079));
            sub_1CEFCCC44(v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);

            v733 = v1063;
            *v1063 = 0;
            *(v733 + 8) = -256;
            return;
          }
        }

        else
        {
          sub_1CEFCCBDC(v1081, v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        }

        if (v269)
        {
          if (*(v1061 + 456) == 1)
          {
            v684 = v1062[5];
            v1089 = v1061[26];
            v685 = *(v1061 + 216);
            v1090 = v685;
            LOBYTE(v1078[1]) = v685;
            v1078[0] = v1089;
            if (v685 == 255)
            {
LABEL_966:
              __break(1u);
              goto LABEL_967;
            }

            v686 = v1095;
            v687 = (*(*v684 + 560))(v1076, v1078, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v1095 = v686;
            if (v686)
            {
              goto LABEL_819;
            }

            if (v687)
            {
              if (!sub_1CF902E34())
              {
                goto LABEL_897;
              }

              LOBYTE(v1078[1]) = v1090;
              v1078[0] = v1089;
              if (v1090 == 255)
              {
LABEL_967:
                __break(1u);
                goto LABEL_968;
              }

              v688 = v1095;
              v689 = (*(*v684 + 568))(v1076, v1078, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v1095 = v688;
              if (!v688)
              {
                if (v689)
                {
                  sub_1CF19BFD0();
                  v690 = swift_allocObject();
                  v691 = v1061;
                  memcpy((v690 + 16), v1061, 0x208uLL);
                  v692 = swift_allocObject();
                  *(v692 + 16) = sub_1CF48093C;
                  *(v692 + 24) = v690;
                  v693 = v1076[0];
                  v694 = v1076[1];
                  v695 = swift_allocObject();
                  *(v695 + 16) = v693;
                  *(v695 + 24) = v694;
                  v696 = swift_allocObject();
                  *(v696 + 16) = sub_1CF485958;
                  *(v696 + 24) = v695;
                  sub_1CEFCCBDC(v691, v1079, &unk_1EC4BFC90, &unk_1CFA053E0);
                  v1064 = sub_1CF9E6108();
                  LODWORD(v1062) = sub_1CF9E72C8();
                  v697 = swift_allocObject();
                  *(v697 + 16) = 32;
                  v698 = swift_allocObject();
                  *(v698 + 16) = 8;
                  v699 = swift_allocObject();
                  *(v699 + 16) = sub_1CF48595C;
                  *(v699 + 24) = v692;
                  v700 = swift_allocObject();
                  *(v700 + 16) = sub_1CF485960;
                  *(v700 + 24) = v699;
                  v701 = swift_allocObject();
                  *(v701 + 16) = 32;
                  v702 = swift_allocObject();
                  *(v702 + 16) = 8;
                  v703 = swift_allocObject();
                  *(v703 + 16) = sub_1CF48595C;
                  *(v703 + 24) = v696;
                  v704 = swift_allocObject();
                  *(v704 + 16) = sub_1CF485960;
                  *(v704 + 24) = v703;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
                  v705 = swift_allocObject();
                  sub_1CF06DA80(v705, 6);
                  *v706 = sub_1CF485A70;
                  v706[1] = v697;
                  v706[2] = sub_1CF485A70;
                  v706[3] = v698;
                  v706[4] = sub_1CF485884;
                  v706[5] = v700;
                  v706[6] = sub_1CF485A70;
                  v706[7] = v701;
                  v706[8] = sub_1CF485A70;
                  v706[9] = v702;
                  v706[10] = sub_1CF485884;
                  v706[11] = v704;

                  v707 = v702;

                  if (os_log_type_enabled(v1064, v1062))
                  {
                    v708 = sub_1CF1B5D40();
                    v709 = swift_slowAlloc();
                    v1074[0] = 0;
                    v1071[0] = v709;
                    v1061 = v708;
                    *v708 = 514;
                    v1075[0] = v708 + 2;
                    v1078[0] = sub_1CF485A70;
                    v1078[1] = v697;
                    v710 = v1095;
                    sub_1CF1B5D64(v1078, v1075, v1074, v1071);
                    v711 = v710;
                    if (!v710)
                    {

                      v1078[0] = sub_1CF485A70;
                      v1078[1] = v698;
                      sub_1CF1B5D64(v1078, v1075, v1074, v1071);

                      v1078[0] = sub_1CF485884;
                      v1078[1] = v700;
                      sub_1CF1B5D64(v1078, v1075, v1074, v1071);

                      v1078[0] = sub_1CF485A70;
                      v1078[1] = v701;
                      sub_1CF1B5D64(v1078, v1075, v1074, v1071);

                      v1078[0] = sub_1CF485A70;
                      v1078[1] = v707;
                      sub_1CF1B5D64(v1078, v1075, v1074, v1071);

                      v1078[0] = sub_1CF485884;
                      v1078[1] = v704;
                      sub_1CF1B5D64(v1078, v1075, v1074, v1071);
                      v1095 = 0;

                      _os_log_impl(&dword_1CEFC7000, v1064, v1062, "♻️  move of %s -> %s: breaking concurrent rename cycle", v1061, 0x16u);
                      swift_arrayDestroy();
                      MEMORY[0x1D386CDC0](v709, -1, -1);
                      sub_1CF1B5D48();
                    }

                    goto LABEL_970;
                  }

                  (*(v1007 + 8))(v997, v1008);
                  goto LABEL_723;
                }

LABEL_897:
                sub_1CF19BFD0();
                v884 = swift_allocObject();
                v885 = v1061;
                memcpy((v884 + 16), v1061, 0x208uLL);
                v886 = swift_allocObject();
                *(v886 + 16) = sub_1CF485AA0;
                *(v886 + 24) = v884;
                v887 = v1076[0];
                v888 = v1076[1];
                v889 = swift_allocObject();
                *(v889 + 16) = v887;
                *(v889 + 24) = v888;
                v890 = swift_allocObject();
                *(v890 + 16) = sub_1CF485958;
                *(v890 + 24) = v889;
                sub_1CEFCCBDC(v885, v1079, &unk_1EC4BFC90, &unk_1CFA053E0);
                v1059 = sub_1CF9E6108();
                LODWORD(v1064) = sub_1CF9E72C8();
                v891 = swift_allocObject();
                *(v891 + 16) = 32;
                v892 = swift_allocObject();
                *(v892 + 16) = 8;
                v893 = swift_allocObject();
                *(v893 + 16) = sub_1CF48595C;
                *(v893 + 24) = v886;
                v894 = swift_allocObject();
                *(v894 + 16) = sub_1CF485960;
                *(v894 + 24) = v893;
                v895 = swift_allocObject();
                *(v895 + 16) = 32;
                v896 = swift_allocObject();
                *(v896 + 16) = 8;
                v897 = swift_allocObject();
                *(v897 + 16) = sub_1CF48595C;
                *(v897 + 24) = v890;
                v898 = swift_allocObject();
                *(v898 + 16) = sub_1CF485960;
                *(v898 + 24) = v897;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
                v899 = swift_allocObject();
                sub_1CF06DA80(v899, 6);
                *v900 = sub_1CF485A70;
                v900[1] = v891;
                v900[2] = sub_1CF485A70;
                v900[3] = v892;
                v900[4] = sub_1CF485884;
                v900[5] = v894;
                v900[6] = sub_1CF485A70;
                v900[7] = v895;
                v900[8] = sub_1CF485A70;
                v900[9] = v896;
                v900[10] = sub_1CF485884;
                v900[11] = v898;

                v1061 = v896;

                v901 = v1059;
                if (!os_log_type_enabled(v1059, v1064))
                {

                  (*(v1007 + 8))(v1004, v1008);
                  v908 = v1076[1];
                  v909 = v1016;
                  *v1016 = v1076[0];
                  *(v909 + 8) = v908;
                  *(v909 + 9) = 1;
                  swift_storeEnumTagMultiPayload();
                  (*(*v1062 + 312))(v909);
                  sub_1CEFCCC44(v909, &unk_1EC4C4E20, &unk_1CFA05350);
                  sub_1CEFCCC44(v1080, &unk_1EC4BFC90, &unk_1CFA053E0);
                  memcpy(v1079, v1083, sizeof(v1079));
                  sub_1CEFCCC44(v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                  v910 = LOBYTE(v1076[1]) | 0x100;
                  v911 = v1063;
                  *v1063 = v1076[0];
                  *(v911 + 8) = v910;
                  return;
                }

                v902 = sub_1CF1B5D40();
                v903 = swift_slowAlloc();
                v1075[0] = 0;
                v1074[0] = v903;
                v1058 = v902;
                *v902 = 514;
                v1078[0] = v902 + 2;
                v1079[0] = sub_1CF485A70;
                v1079[1] = v891;
                v710 = v1095;
                sub_1CF1B5D64(v1079, v1078, v1075, v1074);
                v711 = v710;
                if (!v710)
                {

                  v1079[0] = sub_1CF485A70;
                  v1079[1] = v892;
                  sub_1CF1B5D64(v1079, v1078, v1075, v1074);

                  v1079[0] = sub_1CF485884;
                  v1079[1] = v894;
                  sub_1CF1B5D64(v1079, v1078, v1075, v1074);

                  v1079[0] = sub_1CF485A70;
                  v1079[1] = v895;
                  sub_1CF1B5D64(v1079, v1078, v1075, v1074);

                  v1079[0] = sub_1CF485A70;
                  v1079[1] = v1061;
                  sub_1CF1B5D64(v1079, v1078, v1075, v1074);

                  v1079[0] = sub_1CF485884;
                  v1079[1] = v898;
                  sub_1CF1B5D64(v1079, v1078, v1075, v1074);
                  v1095 = 0;

                  _os_log_impl(&dword_1CEFC7000, v901, v1064, "♻️  move of %s -> %s: reparent cycle detected", v1058, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1D386CDC0](v903, -1, -1);
                  sub_1CF1B5D48();
                }

LABEL_970:

                while (1)
                {

                  __break(1u);
                }
              }

              goto LABEL_819;
            }
          }

          v724 = v1056;
          sub_1CEFCCBDC(v1058, v1056, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if (v163(v724, 1, v1060) == 1)
          {
            v725 = &qword_1EC4BFDE8;
            v726 = &qword_1CFA054E8;
LABEL_810:
            sub_1CEFCCC44(v1056, v725, v726);
LABEL_811:
            v771 = v1055;
            sub_1CEFCCBDC(v1058, v1055, &qword_1EC4BFDE8, &qword_1CFA054E8);
            if (v163(v771, 1, v1060) == 1)
            {
              v772 = &qword_1EC4BFDE8;
              v773 = &qword_1CFA054E8;
            }

            else
            {
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                sub_1CEFCCC44(v1080, &unk_1EC4BFC90, &unk_1CFA053E0);
                memcpy(v1079, v1083, sizeof(v1079));
                sub_1CEFCCC44(v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                sub_1CEFCCC44(v1055, &unk_1EC4C4E20, &unk_1CFA05350);
                v774 = LOBYTE(v1076[1]) | 0x100;
                v775 = v1063;
                *v1063 = v1076[0];
                *(v775 + 8) = v774;
                return;
              }

              v772 = &unk_1EC4C4E20;
              v773 = &unk_1CFA05350;
            }

            sub_1CEFCCC44(v1055, v772, v773);
            v777 = v1095;
            (*(*v1062[5] + 240))(v1076, 1, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v1095 = v777;
            if (v777)
            {
              goto LABEL_819;
            }

            if ((*(v1044 + 48))(v1018, 1, v1040) == 1)
            {
              sub_1CEFCCC44(v1080, &unk_1EC4BFC90, &unk_1CFA053E0);
              sub_1CEFCCC44(v1018, &qword_1EC4C1B40, &unk_1CF9FCB70);
            }

            else
            {
              v798 = v1018;
              v799 = sub_1CF7E6990();
              sub_1CEFCCC44(v1080, &unk_1EC4BFC90, &unk_1CFA053E0);
              sub_1CEFCCC44(v798, &unk_1EC4BE360, &qword_1CF9FE650);
              if ((v799 & 1) == 0)
              {
                goto LABEL_724;
              }
            }

LABEL_838:
            memcpy(v1079, v1083, sizeof(v1079));
            memcpy(v1080, v1083, sizeof(v1080));
            if (sub_1CF08B99C(v1080) == 1)
            {
              memcpy(v1078, v1083, sizeof(v1078));
              sub_1CEFCCC44(v1078, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_857:
              v819 = v1063;
              *v1063 = v1053;
              *(v819 + 8) = 0;
              return;
            }

            memcpy(v1078, v1079, sizeof(v1078));
            v800 = v1078[0];
            if (!v1078[0])
            {
              memcpy(v1075, v1083, 0x208uLL);
              memcpy(v1076, v1079, 0x208uLL);
              v810 = &unk_1EC4BFC90;
              v811 = &unk_1CFA053E0;
              sub_1CEFCCBDC(v1076, v1074, &unk_1EC4BFC90, &unk_1CFA053E0);
              sub_1CEFCCC44(v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);

              v812 = v1078;
LABEL_855:
              v813 = v810;
              v814 = v811;
              goto LABEL_856;
            }

            v1077 = v1078[0];
            v801 = *(v1061 + 216);
            if (v801 == 255)
            {
              memcpy(v1076, v1083, 0x208uLL);
              sub_1CEFCCBDC(v1079, v1075, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              goto LABEL_848;
            }

            v1072 = v1061[26];
            v1073 = v801;
            (*(v1051 + 56))(v1026, 1, 1, v1052);
            v802 = v1078[13];
            v803 = v1078[14];
            v804 = v1078[15];
            if (sub_1CF95EEA0(1024, v1078[13], v1078[14], v1078[15]))
            {
              v805 = *(*v534 + 240);
              sub_1CEFCCBDC(v1079, v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              v806 = v800;
              v807 = v1095;
              v805(&v1077, 1, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v1095 = v807;
              if (!v807)
              {
                v808 = v1026;
                sub_1CEFCCC44(v1026, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                v809 = v1020;
LABEL_845:
                sub_1CEFE55D0(v809, v808, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_853:
                v818 = v1022;
                sub_1CEFCCBDC(v1026, v1022, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                if ((*(v1051 + 48))(v818, 1, v1052) == 1)
                {
                  v810 = &unk_1EC4BFBB0;
                  v811 = &qword_1CF9FCB90;
                  sub_1CEFCCC44(v1026, &unk_1EC4BFBB0, &qword_1CF9FCB90);

                  memcpy(v1076, v1083, 0x208uLL);
                  sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                  sub_1CEFCCC44(v1078, &unk_1EC4BFC90, &unk_1CFA053E0);
                  v812 = v1022;
                  goto LABEL_855;
                }

                v820 = v1019;
                sub_1CEFE55D0(v1022, v1019, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                v821 = *(v820 + 88);
                v1075[0] = *(v820 + 80);
                v1075[1] = v821;
                v1074[0] = *v820;
                v822 = *(*v534 + 256);
                v1059 = v1074[0];
                v1061 = v1074[0];

                v823 = v1095;
                v824 = v822(v820 + 8, v1075, v1074, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
                v1095 = v823;
                if (v823)
                {

                  sub_1CEFCCC44(v1019, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                  sub_1CEFCCC44(v1026, &unk_1EC4BFBB0, &qword_1CF9FCB90);

                  goto LABEL_860;
                }

                v828 = v824;

                if (sub_1CF55B5A0(v828))
                {
                  v829 = 0;
                  v1045 = (v1007 + 8);
                  while (1)
                  {
                    sub_1CF90333C(v829, 1, v828);
                    v831 = v829 + 1;
                    if (__OFADD__(v829, 1))
                    {
                      break;
                    }

                    v832 = *(v828 + 8 * v829 + 32);
                    v833 = v1095;
                    sub_1CF7EBA74(v832, v1050, v1064, v1076);
                    v1095 = v833;
                    if (v833)
                    {

                      sub_1CEFCCC44(v1019, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                      sub_1CEFCCC44(v1026, &unk_1EC4BFBB0, &qword_1CF9FCB90);

                      memcpy(v1075, v1083, 0x208uLL);
                      v825 = v1075;
                      goto LABEL_861;
                    }

                    memcpy(v1074, v1076, sizeof(v1074));
                    memcpy(v1075, v1076, 0x208uLL);
                    if (sub_1CF08B99C(v1075) == 1)
                    {
                      memcpy(v1071, v1076, sizeof(v1071));
                      v830 = v1071;
                    }

                    else
                    {
                      memcpy(v1071, v1074, sizeof(v1071));
                      memcpy(v1091, v1074, sizeof(v1091));
                      if (sub_1CF75C2AC() && LOBYTE(v1071[27]) != 255)
                      {
                        v1068 = v1071[26];
                        v1069 = v1071[27];
                        v834 = *(*v1062[5] + 728);
                        sub_1CEFCCBDC(v1074, v1070, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                        v835 = v1095;
                        v836 = v834(&v1072, &v1068, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
                        v1095 = v835;
                        if (v835)
                        {

                          sub_1CEFCCC44(v1071, &unk_1EC4BFC90, &unk_1CFA053E0);
                          memcpy(v1067, v1076, sizeof(v1067));
                          sub_1CEFCCC44(v1067, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                          sub_1CEFCCC44(v1019, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                          sub_1CEFCCC44(v1026, &unk_1EC4BFBB0, &qword_1CF9FCB90);

                          memcpy(v1070, v1083, sizeof(v1070));
                          sub_1CEFCCC44(v1070, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                          goto LABEL_862;
                        }

                        if (v836)
                        {
                          sub_1CF19BFD0();
                          v837 = v1084;
                          v1058 = v1084;
                          v838 = swift_allocObject();
                          *(v838 + 16) = v837;
                          v839 = swift_allocObject();
                          *(v839 + 16) = sub_1CF4858A0;
                          *(v839 + 24) = v838;
                          v840 = v1005;
                          sub_1CEFCCBDC(v1019, v1005, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                          v841 = (*(v1051 + 80) + 16) & ~*(v1051 + 80);
                          v842 = swift_allocObject();
                          sub_1CEFE55D0(v840, v842 + v841, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                          v843 = swift_allocObject();
                          v1049 = v843;
                          *(v843 + 16) = sub_1CF4808A8;
                          *(v843 + 24) = v842;
                          v844 = v1058;
                          v1055 = sub_1CF9E6108();
                          LODWORD(v1052) = sub_1CF9E72C8();
                          v1056 = swift_allocObject();
                          *(v1056 + 16) = 32;
                          v1057 = swift_allocObject();
                          v1057[16] = 8;
                          v845 = swift_allocObject();
                          *(v845 + 16) = sub_1CF485964;
                          *(v845 + 24) = v839;
                          v846 = swift_allocObject();
                          v846[2] = sub_1CF485960;
                          v846[3] = v845;
                          v1058 = swift_allocObject();
                          v1058[16] = 32;
                          v847 = swift_allocObject();
                          *(v847 + 16) = 8;
                          v848 = swift_allocObject();
                          v849 = v1049;
                          *(v848 + 16) = sub_1CF480934;
                          *(v848 + 24) = v849;
                          v850 = swift_allocObject();
                          *(v850 + 16) = sub_1CF485960;
                          *(v850 + 24) = v848;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
                          v851 = swift_allocObject();
                          v1046 = sub_1CF06DA80(v851, 6);
                          v852 = v1056;
                          v853 = v1057;
                          *v854 = sub_1CF485A70;
                          v854[1] = v852;
                          v854[2] = sub_1CF485A70;
                          v854[3] = v853;
                          v854[4] = sub_1CF485884;
                          v854[5] = v846;
                          v855 = v1058;
                          v854[6] = sub_1CF485A70;
                          v854[7] = v855;
                          v854[8] = sub_1CF485A70;
                          v854[9] = v847;
                          v854[10] = sub_1CF485884;
                          v854[11] = v850;

                          v1048 = v846;

                          v1049 = v847;

                          v1047 = v850;

                          if (os_log_type_enabled(v1055, v1052))
                          {
                            v856 = sub_1CF1B5D40();
                            v857 = swift_slowAlloc();
                            v1066 = 0;
                            *v856 = 514;
                            v1046 = v857;
                            v1065 = v857;
                            v1067[0] = v856 + 2;
                            v1070[0] = sub_1CF485A70;
                            v1070[1] = v1056;
                            v858 = v1095;
                            sub_1CF1B5D64(v1070, v1067, &v1066, &v1065);
                            v163 = v858;
                            if (!v858)
                            {

                              v1070[0] = sub_1CF485A70;
                              v1070[1] = v1057;
                              sub_1CF1B5D64(v1070, v1067, &v1066, &v1065);

                              v1070[0] = sub_1CF485884;
                              v1070[1] = v1048;
                              sub_1CF1B5D64(v1070, v1067, &v1066, &v1065);

                              v1070[0] = sub_1CF485A70;
                              v1070[1] = v1058;
                              sub_1CF1B5D64(v1070, v1067, &v1066, &v1065);

                              v1070[0] = sub_1CF485A70;
                              v1070[1] = v1049;
                              sub_1CF1B5D64(v1070, v1067, &v1066, &v1065);

                              v1070[0] = sub_1CF485884;
                              v1070[1] = v1047;
                              sub_1CF1B5D64(v1070, v1067, &v1066, &v1065);
                              v1095 = 0;

                              _os_log_impl(&dword_1CEFC7000, v1055, v1052, "♻️  move of %s -> %s: reparent cycle detected", v856, 0x16u);
                              v859 = v1046;
                              swift_arrayDestroy();
                              MEMORY[0x1D386CDC0](v859, -1, -1);
                              sub_1CF1B5D48();
                            }

LABEL_968:

                            while (1)
                            {

                              __break(1u);
                            }
                          }

                          (*v1045)(v1017, v1008);
                          v860 = v1016;
                          *v1016 = v1059;
                          *(v860 + 8) = 0;
                          swift_storeEnumTagMultiPayload();
                          v861 = *(*v1062 + 312);
                          v862 = v1061;
                          v861(v860);
                          sub_1CEFCCC44(v860, &unk_1EC4C4E20, &unk_1CFA05350);
                        }

                        sub_1CEFCCC44(v1071, &unk_1EC4BFC90, &unk_1CFA053E0);
                      }

                      memcpy(v1070, v1076, sizeof(v1070));
                      v830 = v1070;
                    }

                    sub_1CEFCCC44(v830, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                    ++v829;
                    if (v831 == sub_1CF55B5A0(v828))
                    {
                      goto LABEL_882;
                    }
                  }

                  __break(1u);
                  goto LABEL_957;
                }

LABEL_882:

                sub_1CEFCCC44(v1019, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                sub_1CEFCCC44(v1026, &unk_1EC4BFBB0, &qword_1CF9FCB90);

                memcpy(v1076, v1083, 0x208uLL);
LABEL_848:
                sub_1CEFCCC44(v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                v813 = &unk_1EC4BFC90;
                v814 = &unk_1CFA053E0;
                v812 = v1078;
LABEL_856:
                sub_1CEFCCC44(v812, v813, v814);
                goto LABEL_857;
              }
            }

            else
            {
              if (!sub_1CF95EEA0(2, v802, v803, v804))
              {
                sub_1CEFCCBDC(v1079, v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                v817 = v800;
                goto LABEL_853;
              }

              v815 = *(*v534 + 720);
              sub_1CEFCCBDC(v1079, v1076, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              v806 = v800;
              v816 = v1095;
              v815(v1074, &v1077, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v1095 = v816;
              if (!v816)
              {
                v826 = v1074[0];
                if (!v1074[0])
                {
                  goto LABEL_853;
                }

                v1075[0] = v1074[0];
                v827 = v1095;
                (*(*v534 + 240))(v1075, 1, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
                v1095 = v827;

                v808 = v1026;
                sub_1CEFCCC44(v1026, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                v809 = v1014;
                goto LABEL_845;
              }
            }

            sub_1CEFCCC44(v1026, &unk_1EC4BFBB0, &qword_1CF9FCB90);

LABEL_860:
            memcpy(v1076, v1083, 0x208uLL);
            v825 = v1076;
LABEL_861:
            sub_1CEFCCC44(v825, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_862:
            sub_1CEFCCC44(v1078, &unk_1EC4BFC90, &unk_1CFA053E0);
            return;
          }

          if (swift_getEnumCaseMultiPayload() != 3)
          {
            v725 = &unk_1EC4C4E20;
            v726 = &unk_1CFA05350;
            goto LABEL_810;
          }

          v756 = *v1056;
          v757 = *(v1056 + 8);
          if ((*(v1056 + 9) & 1) == 0)
          {
            sub_1CF1E53F8(v756, v757, 0);
            goto LABEL_811;
          }

          if (LOBYTE(v1076[1]))
          {
            if (LOBYTE(v1076[1]) == 1)
            {
              if (v757 != 1 || v1076[0] != v756)
              {
                goto LABEL_811;
              }
            }

            else if (v1076[0])
            {
              if (v757 != 2 || v756 != 1)
              {
                goto LABEL_811;
              }
            }

            else if (v757 != 2 || v756)
            {
              goto LABEL_811;
            }
          }

          else if (*(v1056 + 8) || LODWORD(v1076[0]) != v756)
          {
            goto LABEL_811;
          }

LABEL_723:
          sub_1CEFCCC44(v1080, &unk_1EC4BFC90, &unk_1CFA053E0);
LABEL_724:
          memcpy(v1079, v1083, sizeof(v1079));
          sub_1CEFCCC44(v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);

          goto LABEL_725;
        }

        if (sub_1CF902E34())
        {
          goto LABEL_723;
        }

        if ((sub_1CF06EE7C(LOBYTE(v1080[12]), 2) & 1) == 0)
        {
          sub_1CEFCCC44(v1080, &unk_1EC4BFC90, &unk_1CFA053E0);
          memcpy(v1079, v1083, sizeof(v1079));
          sub_1CEFCCC44(v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);

          goto LABEL_793;
        }

        v727 = v1095;
        (*(*v1062[5] + 240))(v1076, 1, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v1095 = v727;
        if (!v727)
        {
          if ((*(v1044 + 48))(v1015, 1, v1040) == 1)
          {
            sub_1CEFCCC44(v1080, &unk_1EC4BFC90, &unk_1CFA053E0);
            memcpy(v1079, v1083, sizeof(v1079));
            sub_1CEFCCC44(v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);

            sub_1CEFCCC44(v1015, &qword_1EC4C1B40, &unk_1CF9FCB70);
          }

          else
          {
            v905 = v1015;
            v906 = sub_1CF7E6990();
            sub_1CEFCCC44(v1080, &unk_1EC4BFC90, &unk_1CFA053E0);
            memcpy(v1079, v1083, sizeof(v1079));
            sub_1CEFCCC44(v1079, &unk_1EC4BFD80, &unk_1CFA0A2A0);

            sub_1CEFCCC44(v905, &unk_1EC4BE360, &qword_1CF9FE650);
            if ((v906 & 1) == 0)
            {
              goto LABEL_725;
            }
          }

LABEL_793:
          v761 = LOBYTE(v1076[1]) | 0x100;
          v762 = v1063;
          *v1063 = v1076[0];
          *(v762 + 8) = v761;
          return;
        }

LABEL_819:
        sub_1CEFCCC44(v1080, &unk_1EC4BFC90, &unk_1CFA053E0);
        memcpy(v1079, v1083, sizeof(v1079));
        v735 = v1079;
        goto LABEL_820;
      }
    }

LABEL_109:

    goto LABEL_110;
  }

  v163 = v1095;
  v166 = v1060;
  if (v1061 <= 511)
  {
    v167 = v1062;
    if (v1061 == 16)
    {
      v168 = *(v155 + 216);
      if (v168 != 255)
      {
        v169 = v160;
        v170 = *(v155 + 208);
        *v1083 = v170;
        v1083[8] = v168;
        sub_1CEFCCBDC(v1058, v134, &qword_1EC4BFDE8, &qword_1CFA054E8);
        if ((v1059[6].isa)(v134, 1, v166) == 1)
        {
          v171 = v169;
LABEL_9:
          sub_1CEFCCC44(v134, &qword_1EC4BFDE8, &qword_1CFA054E8);
          v172 = v167[3];
          v173 = sub_1CF8DCAA0();
          v174 = *(v173 + 52);
          v175 = (*(v173 + 48) + 7) & 0x1FFFFFFF8;
          v176 = swift_allocObject();
          v177 = sub_1CF06DA80(v176, 1);
          *v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA48, &qword_1CF9FAE48);
          v179 = nullsub_1(v177);
          v180 = (*(*v172 + 304))(v1083, v179, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v163)
          {

LABEL_39:

            return;
          }

          v299 = v180;

          v300 = sub_1CF663828(v299);

          if (v300)
          {
            v301 = *(v300 + 96);
            v302 = *(v300 + 104);
            v303 = *(v300 + 112);
            sub_1CF03C530(v301, v302, *(v300 + 112));

            if (v303 == 1)
            {

              v304 = v1063;
              *v1063 = 0;
              *(v304 + 8) = -256;
              return;
            }

            sub_1CF03D7A8(v301, v302, v303);
          }

          (*(*v167[5] + 416))(v1082, v1083, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

          v371 = v1082[8];
          if (v1082[8] != 255)
          {
            v372 = v1063;
            *v1063 = *v1082;
            *(v372 + 8) = v371 | 0x100;
            return;
          }

          goto LABEL_110;
        }

        sub_1CEFCCBDC(v134, v131, &qword_1EC4BFDE8, &qword_1CFA054E8);
        v286 = swift_getEnumCaseMultiPayload();
        if (v286 != 5)
        {
          if (v286 == 7)
          {
            v347 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48);
            v348 = v169;
            sub_1CEFCCC44(&v131[v347], &qword_1EC4C1B40, &unk_1CF9FCB70);
            sub_1CEFCCC44(v131, &qword_1EC4C1B40, &unk_1CF9FCB70);
            goto LABEL_9;
          }

          if (v286 == 22)
          {
            v287 = v169;
            sub_1CEFCCC44(v131, &unk_1EC4C4E20, &unk_1CFA05350);
            goto LABEL_9;
          }

          sub_1CEFCCC44(v131, &unk_1EC4C4E20, &unk_1CFA05350);
LABEL_529:
          v570 = v1063;
          *v1063 = 0;
          *(v570 + 8) = -256;
          sub_1CEFCCC44(v134, &qword_1EC4BFDE8, &qword_1CFA054E8);
          return;
        }

        v349 = *(v131 + 2);
        v350 = v131[24];
        if (v131[25])
        {
          if (v168)
          {
            if (v168 == 1)
            {
              if (v350 != 1 || v170 != v349)
              {
                goto LABEL_273;
              }
            }

            else if (v170)
            {
              if (v350 != 2 || v349 != 1)
              {
                goto LABEL_273;
              }
            }

            else if (v350 != 2 || v349)
            {
              goto LABEL_273;
            }
          }

          else if (v131[24] || v170 != v349)
          {
            goto LABEL_273;
          }

          v516 = *v131;
          v517 = v131[9];
          v518 = v131[8];
          v519 = v169;
          sub_1CF1E53F8(v516, v518, v517);
          goto LABEL_9;
        }

        sub_1CF1E53F8(v349, v350, 0);
LABEL_273:
        sub_1CF1E53F8(*v131, v131[8], v131[9]);
        goto LABEL_529;
      }

LABEL_110:
      v189 = v1063;
LABEL_111:
      *v189 = 0;
      *(v189 + 8) = -256;
      return;
    }

    if (v1061 == 256)
    {
      v1061 = v155;
      v246 = *(*v1062 + 152);
      v247 = v160;
      v248 = v246();
      if (sub_1CF06D930(256, v248))
      {
        goto LABEL_67;
      }

      sub_1CF3F9E7C(v167, v1057 & 1, v1083);
      if (v163)
      {

        return;
      }

      v291 = v1083[0];
      if (v1083[0] == 89)
      {
LABEL_67:

        goto LABEL_110;
      }

      v134 = v1039;
      sub_1CEFCCBDC(v1058, v1039, &qword_1EC4BFDE8, &qword_1CFA054E8);
      if ((v1059[6].isa)(v134, 1, v1060) == 1)
      {
        goto LABEL_135;
      }

      sub_1CEFCCBDC(v134, v126, &qword_1EC4BFDE8, &qword_1CFA054E8);
      v370 = swift_getEnumCaseMultiPayload();
      if (v370 != 14)
      {
        if (v370 != 22)
        {

          sub_1CEFCCC44(v126, &unk_1EC4C4E20, &unk_1CFA05350);
          goto LABEL_529;
        }

        if ((*v126 & 0x8000000000000000) != 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
          v476 = swift_dynamicCastClass();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE80, &qword_1CF9FB420);
          if (swift_dynamicCastClass())
          {

            v134 = v1039;
LABEL_135:
            sub_1CEFCCC44(v134, &qword_1EC4BFDE8, &qword_1CFA054E8);
            v292 = v167[3];
            if ((*(*v292 + 360))(v291, &v1084, v1061[59], 0, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
            {
              goto LABEL_660;
            }

            v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
            v454 = (*v292 + 328);
            v455 = *v454;
            if ((*v454)(&v1084, v453, 8512, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
            {

              goto LABEL_343;
            }

            v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE80, &qword_1CF9FB420);
            if (v455(&v1084, v520, 0x10000, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
            {
              goto LABEL_660;
            }

            v640 = *(v1061 + 216);
            if (v640 != 255)
            {
              *v1083 = v1061[26];
              v1083[8] = v640;
              if (sub_1CF07F344(v291, 1) || sub_1CF07F344(v291, 2))
              {
                v641 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
                if ((*(*v292 + 320))(v1083, v641, 8512, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
                {
                  goto LABEL_660;
                }
              }
            }

            if (sub_1CF07F344(v291, 12))
            {
              v666 = v455(&v1084, v453, 8512, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

              if ((v666 & 1) == 0)
              {
                goto LABEL_110;
              }

LABEL_343:
              v456 = v1063;
              *v1063 = 0;
              *(v456 + 8) = -256;
              return;
            }

LABEL_53:

            goto LABEL_110;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
          v476 = swift_dynamicCastClass();
        }

        v134 = v1039;
        if (v476)
        {
          goto LABEL_135;
        }

LABEL_528:

        goto LABEL_529;
      }

      if (v126[9])
      {

        sub_1CF1E53F8(*v126, v126[8], v126[9]);
        goto LABEL_529;
      }

      v466 = v126[10];
      v467 = *v126;
      v468 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v470 = v469;
      if (v468 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v470 == v471)
      {
      }

      else
      {
        v510 = sub_1CF9E8048();

        if ((v510 & 1) == 0)
        {
          goto LABEL_422;
        }
      }

      if (qword_1CFA05BE8[v291] == qword_1CFA05BE8[v466])
      {

        goto LABEL_426;
      }

LABEL_422:
      if (v466 != 3)
      {

        v134 = v1039;
        goto LABEL_529;
      }

      v511 = *v126;
      v512 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v514 = v513;
      if (v512 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v514 != v515)
      {
        v555 = sub_1CF9E8048();

        v167 = v1062;
        v134 = v1039;
        if (v555)
        {
          goto LABEL_135;
        }

        goto LABEL_528;
      }

LABEL_426:
      v167 = v1062;
      v134 = v1039;
      goto LABEL_135;
    }

    goto LABEL_965;
  }

  if (v1061 == 512)
  {
    v1056 = v152;
    v1057 = v154;
    v1061 = v153;
    v1054 = v150;
    v1055 = v151;
    v210 = v160;
    sub_1CEFCCBDC(v1058, v118, &qword_1EC4BFDE8, &qword_1CFA054E8);
    v211 = v1059 + 6;
    v212 = v1059[6].isa;
    if ((v212)(v118, 1, v166) == 1)
    {
LABEL_37:
      v213 = v210;
      goto LABEL_38;
    }

    sub_1CEFCCBDC(v118, v115, &qword_1EC4BFDE8, &qword_1CFA054E8);
    v271 = swift_getEnumCaseMultiPayload();
    if (v271 > 23)
    {
      v272 = v1063;
      if (v271 == 24)
      {
        goto LABEL_131;
      }

      if (v271 != 42)
      {
LABEL_175:
        sub_1CEFCCC44(v115, &unk_1EC4C4E20, &unk_1CFA05350);
        goto LABEL_176;
      }

      v288 = *v115;
      v289 = v115[8];
      if (v115[9])
      {
        sub_1CF1E53F8(*v115, v115[8], 1);
LABEL_176:
        v272 = v1063;
        goto LABEL_177;
      }

      v363 = v210;
      sub_1CF1E53F8(v288, v289, 0);
    }

    else
    {
      v272 = v1063;
      if (v271 != 19)
      {
        if (v271 != 23)
        {
          goto LABEL_175;
        }

LABEL_131:
        if (*v115 == *(v1062[4] + 32))
        {
          goto LABEL_37;
        }

LABEL_177:
        *v272 = 0;
        *(v272 + 8) = -256;
        sub_1CEFCCC44(v118, &qword_1EC4BFDE8, &qword_1CFA054E8);
        return;
      }

      v325 = *v115;
      v326 = v210;
    }

LABEL_38:
    sub_1CEFCCC44(v118, &qword_1EC4BFDE8, &qword_1CFA054E8);
    v214 = v1062[4];
    v215 = v1095;
    ((*v214)[36])(v1083, &v1084, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (v215)
    {
      goto LABEL_39;
    }

    v282 = *v1083;
    if (!*v1083)
    {
      goto LABEL_364;
    }

    v1079[0] = *v1083;
    v283 = v1045;
    sub_1CEFCCBDC(v1058, v1045, &qword_1EC4BFDE8, &qword_1CFA054E8);
    if ((v212)(v283, 1, v166) == 1)
    {
      v284 = &qword_1EC4BFDE8;
      v285 = &qword_1CFA054E8;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 42)
      {
        v327 = *v283;
        if (*(v283 + 9))
        {
          sub_1CF1E53F8(*v283, *(v283 + 8), 1);
        }

        else
        {
          v1059 = v211;
          v430 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v432 = v431;
          if (v430 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v432 == v433)
          {

LABEL_363:

LABEL_364:
            goto LABEL_173;
          }

          v458 = sub_1CF9E8048();

          v211 = v1059;
          if (v458)
          {
            goto LABEL_363;
          }
        }

LABEL_251:
        v373 = v1062;
        v374 = v1062[2];
        sub_1CF7EBA74(v282, v1050, v1064, v1083);
        memcpy(v1082, v1083, sizeof(v1082));
        if (sub_1CF08B99C(v1082) == 1)
        {

          memcpy(v1081, v1083, 0x208uLL);
          sub_1CEFCCC44(v1081, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          goto LABEL_173;
        }

        v1059 = v211;
        memcpy(v1081, v1083, 0x208uLL);
        memcpy(v1092, v1083, sizeof(v1092));
        if (qword_1EDEA3498 == -1)
        {
          v392 = *&v1081[0];
          if (*&v1081[0])
          {
            goto LABEL_278;
          }
        }

        else
        {
          swift_once();
          v392 = *&v1081[0];
          if (*&v1081[0])
          {
LABEL_278:
            v393 = qword_1EDEA34A0;
            v394 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v396 = v395;
            if (v394 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v396 == v397)
            {
              v398 = v393;
              v399 = v392;
              v400 = v398;

LABEL_362:
              sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
              goto LABEL_363;
            }

            LODWORD(v1095) = sub_1CF9E8048();
            v459 = v393;
            v460 = v392;
            v461 = v459;

            v373 = v1062;
            if (v1095)
            {
              goto LABEL_362;
            }
          }
        }

        v462 = *(&v1081[0] + 1);
        if (sub_1CF06D930(16, *(&v1081[0] + 1)))
        {
          goto LABEL_362;
        }

        if ((v212)(v1058, 1, v1060) == 1)
        {
          goto LABEL_368;
        }

        v496 = sub_1CF75C2AC();
        if (v496)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE50, &unk_1CFA05540);
          v497 = swift_allocObject();
          v498 = sub_1CF06DA80(v497, 2);
          *v499 = xmmword_1CFA04F30;
          v500 = nullsub_1(v498);
          v501 = sub_1CEFF8C8C(v500);

          v502 = v501;
          v373 = v1062;
          if (!sub_1CF95EDE0(v502, v462))
          {
            sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);

            v562 = v1063;
            *v1063 = 0;
            *(v562 + 8) = -256;
            return;
          }
        }

        v503 = v373[3];
        v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
        v505 = *v503;
        v506 = (*v503)[41].isa;
        v1053 = v504;
        v1064 = v505 + 41;
        v507 = v506(v1079);
        v1095 = 0;
        if (v507)
        {
          v558 = v1061;
          sub_1CEFCCBDC(v1058, v1061, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if ((v212)(v558, 1, v1060) == 1)
          {
            sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);

LABEL_706:
            sub_1CEFCCC44(v1061, &qword_1EC4BFDE8, &qword_1CFA054E8);
LABEL_707:
            v683 = v1063;
            *v1063 = 0;
            *(v683 + 8) = -256;
            return;
          }

          sub_1CEFCCBDC(v1061, v1057, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if (swift_getEnumCaseMultiPayload() - 23 >= 2)
          {
            sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);

            sub_1CEFCCC44(v1057, &unk_1EC4C4E20, &unk_1CFA05350);
            goto LABEL_706;
          }

          sub_1CEFCCC44(v1061, &qword_1EC4BFDE8, &qword_1CFA054E8);
          v660 = v1095;
          v661 = ((*v503)[45].isa)(3, v1079, *(&v1081[29] + 1), 0, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v1095 = v660;
          if (v660)
          {
LABEL_740:
            sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);

            goto LABEL_39;
          }

          if ((v661 & 1) == 0)
          {
            sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);

            goto LABEL_707;
          }
        }

        (*(*v214[2] + 96))(v1080);
        v662 = v1080[0];
        v1078[0] = v1080[0];
        v663 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEF8, &unk_1CF9FB390);
        v664 = v1095;
        v665 = (v506)(v1078, v663, 0, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v1095 = v664;
        if (v664)
        {

          goto LABEL_740;
        }

        v678 = v665;

        if (v678)
        {
          v679 = v1056;
          sub_1CEFCCBDC(v1058, v1056, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if ((v212)(v679, 1, v1060) == 1)
          {
            sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);

            v680 = &qword_1EC4BFDE8;
            v681 = &qword_1CFA054E8;
          }

          else
          {
            if (swift_getEnumCaseMultiPayload() == 24)
            {
              v753 = v1016;
              *v1016 = v282;
              *(v753 + 8) = 0;
              swift_storeEnumTagMultiPayload();
              v754 = *(*v1062 + 312);
              v755 = v282;
              v754(v753);
              sub_1CEFCCC44(v753, &unk_1EC4C4E20, &unk_1CFA05350);
              sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);

LABEL_807:
              v770 = v1063;
              *v1063 = 0;
              *(v770 + 8) = -256;
              return;
            }

            sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);

            v680 = &unk_1EC4C4E20;
            v681 = &unk_1CFA05350;
          }

          sub_1CEFCCC44(v1056, v680, v681);
          goto LABEL_807;
        }

        v722 = v1095;
        v723 = ((*v214)[57])(v1079, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v722)
        {
          goto LABEL_740;
        }

        if (v723 & 1) != 0 || (v496 & ((*v214)[61])(&v1084, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
        {
          v758 = v1055;
          sub_1CEFCCBDC(v1058, v1055, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if ((v212)(v758, 1, v1060) == 1)
          {
            sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);

            v759 = &qword_1EC4BFDE8;
            v760 = &qword_1CFA054E8;
          }

          else
          {
            if (swift_getEnumCaseMultiPayload() == 23)
            {
              v796 = v1016;
              *v1016 = v282;
              *(v796 + 8) = 0;
              swift_storeEnumTagMultiPayload();
              v797 = *(*v1062 + 312);
              v282 = v282;
              v797(v796);
              sub_1CEFCCC44(v796, &unk_1EC4C4E20, &unk_1CFA05350);
LABEL_368:
              sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);

LABEL_369:
              v464 = v1063;
              *v1063 = 0;
              *(v464 + 8) = -256;
              return;
            }

            sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);

            v759 = &unk_1EC4C4E20;
            v760 = &unk_1CFA05350;
          }

          sub_1CEFCCC44(v1055, v759, v760);
          goto LABEL_369;
        }

        v776 = (v506)(&v1084, v1053, 0, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v933 = v776;
        sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);

        if (v933)
        {
          v934 = v1063;
          *v1063 = 0;
          *(v934 + 8) = -256;
          return;
        }

        v941 = v1054;
        sub_1CEFCCBDC(v1058, v1054, &qword_1EC4BFDE8, &qword_1CFA054E8);
        if ((v212)(v941, 1, v1060) == 1)
        {
          v942 = &qword_1EC4BFDE8;
          v943 = &qword_1CFA054E8;
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 24)
          {
            v944 = v1063;
            *v1063 = 0;
            *(v944 + 8) = -256;
            return;
          }

          v942 = &unk_1EC4C4E20;
          v943 = &unk_1CFA05350;
        }

        v973 = v1054;
        goto LABEL_964;
      }

      v284 = &unk_1EC4C4E20;
      v285 = &unk_1CFA05350;
    }

    sub_1CEFCCC44(v283, v284, v285);
    goto LABEL_251;
  }

  v1048 = v156;
  v1049 = v100;
  v1053 = v157;
  v253 = v1062;
  if (v1061 != 1024)
  {
LABEL_965:
    sub_1CF9E7B68();
    __break(1u);
    goto LABEL_966;
  }

  v1057 = v160;
  v1061 = v155;
  v254 = v1055;
  sub_1CEFCCBDC(v1058, v1055, &qword_1EC4BFDE8, &qword_1CFA054E8);
  v255 = v1059[6].isa;
  v1059 += 6;
  v256 = (v255)(v254, 1, v1060);
  v257 = v1056;
  v258 = v1054;
  if (v256 == 1)
  {
    v259 = v1057;
    goto LABEL_169;
  }

  sub_1CEFCCBDC(v254, v1054, &qword_1EC4BFDE8, &qword_1CFA054E8);
  v273 = swift_getEnumCaseMultiPayload();
  if (v273 > 20)
  {
    v290 = v1063;
    if (v273 > 33)
    {
      if (v273 != 34)
      {
        if (v273 == 40)
        {
          *v1063 = 0;
          *(v290 + 8) = -256;
          sub_1CEFCCC44(v258, &unk_1EC4C4E20, &unk_1CFA05350);
          sub_1CEFCCC44(v254, &qword_1EC4BFDE8, &qword_1CFA054E8);
          return;
        }

        goto LABEL_231;
      }
    }

    else if (v273 != 21 && v273 != 22)
    {
      goto LABEL_231;
    }

    goto LABEL_168;
  }

  if (v273 > 8)
  {
    if (v273 != 9)
    {
      if (v273 == 13)
      {
        v313 = *(v258 + 2);
        v314 = v1057;

        sub_1CF1E53F8(*v258, v258[8], v258[9]);
        goto LABEL_169;
      }

      goto LABEL_231;
    }

LABEL_168:
    v315 = v1057;
    sub_1CEFCCC44(v258, &unk_1EC4C4E20, &unk_1CFA05350);
    goto LABEL_169;
  }

  if (v273 == 6)
  {
    v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
    v275 = *(v359 + 48);
    if ((*(v1051 + 48))(v258, 1, v1052) == 1)
    {
      v276 = &unk_1EC4BFBB0;
      v277 = &qword_1CF9FCB90;
      goto LABEL_230;
    }

    v405 = *&v258[*(v359 + 64)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
    v406 = swift_allocObject();
    v407 = sub_1CF06DA80(v406, 2);
    *v408 = xmmword_1CFA04F20;
    v409 = nullsub_1(v407);
    v410 = v1057;
    sub_1CEFF5464(v409, v1083);
    if (sub_1CF95EDE0(*v1083, v405))
    {

      v276 = &unk_1EC4BFBB0;
      v277 = &qword_1CF9FCB90;
LABEL_291:
      sub_1CEFCCC44(v258, v276, v277);
      v360 = &v258[v275];
      goto LABEL_292;
    }

    v447 = &unk_1EC4BFBB0;
    v448 = &qword_1CF9FCB90;
    goto LABEL_334;
  }

  if (v273 != 7)
  {
LABEL_231:
    v361 = &unk_1EC4C4E20;
    v362 = &unk_1CFA05350;
    v360 = v258;
LABEL_293:
    sub_1CEFCCC44(v360, v361, v362);
    v417 = v1063;
    *v1063 = 0;
    *(v417 + 8) = -256;
    sub_1CEFCCC44(v254, &qword_1EC4BFDE8, &qword_1CFA054E8);
    return;
  }

  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
  v275 = *(v274 + 48);
  if ((*(v1044 + 48))(v258, 1, v1040) == 1)
  {
    v276 = &qword_1EC4C1B40;
    v277 = &unk_1CF9FCB70;
LABEL_230:
    sub_1CEFCCC44(&v258[v275], v276, v277);
    v360 = v258;
LABEL_292:
    v361 = v276;
    v362 = v277;
    goto LABEL_293;
  }

  v411 = *&v258[*(v274 + 64)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
  v412 = swift_allocObject();
  v413 = sub_1CF06DA80(v412, 2);
  *v414 = xmmword_1CFA04F20;
  v415 = nullsub_1(v413);
  v416 = v1057;
  sub_1CEFF5464(v415, v1083);
  if (sub_1CF95EDE0(*v1083, v411))
  {

    v276 = &qword_1EC4C1B40;
    v277 = &unk_1CF9FCB70;
    goto LABEL_291;
  }

  v447 = &qword_1EC4C1B40;
  v448 = &unk_1CF9FCB70;
LABEL_334:
  sub_1CEFCCC44(v258, v447, v448);
  sub_1CEFCCC44(&v258[v275], v447, v448);
  v257 = v1056;
LABEL_169:
  sub_1CEFCCC44(v254, &qword_1EC4BFDE8, &qword_1CFA054E8);
  v316 = v253[4];
  v317 = v1095;
  (*(*v316 + 240))(&v1084, 1, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v317)
  {
    goto LABEL_39;
  }

  v318 = *(v1051 + 48);
  if (v318(v257, 1, v1052) == 1)
  {

    v319 = &unk_1EC4BFBB0;
    v320 = &qword_1CF9FCB90;
    v321 = v257;
LABEL_172:
    sub_1CEFCCC44(v321, v319, v320);
LABEL_173:
    v322 = v1063;
    *v1063 = 0;
    *(v322 + 8) = -256;
    return;
  }

  v1095 = v255;
  v323 = v1046;
  sub_1CEFE55D0(v257, v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v324 = v253[2];
  sub_1CF7EBA74(*(v323 + 8), v1050, v1064, v1083);
  v1056 = v324;
  memcpy(v1082, v1083, sizeof(v1082));
  if (sub_1CF08B99C(v1082) == 1)
  {
    sub_1CEFCCC44(v323, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    memcpy(v1081, v1083, 0x208uLL);
    v319 = &unk_1EC4BFD80;
    v320 = &unk_1CFA0A2A0;
    v321 = v1081;
    goto LABEL_172;
  }

  memcpy(v1081, v1083, 0x208uLL);
  memcpy(v1094, v1083, 0x208uLL);
  v403 = BYTE8(v1081[13]);
  if (BYTE8(v1081[13]) == 255 || (v404 = *&v1081[13], v1055 = v1062[5], sub_1CF902E34()) && !LOBYTE(v1081[15]))
  {
    sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    goto LABEL_173;
  }

  v472 = v1053;
  sub_1CEFCCBDC(v1058, v1053, &qword_1EC4BFDE8, &qword_1CFA054E8);
  if ((v1095)(v472, 1, v1060) == 1)
  {
    goto LABEL_576;
  }

  sub_1CEFCCBDC(v472, v1049, &qword_1EC4BFDE8, &qword_1CFA054E8);
  v473 = swift_getEnumCaseMultiPayload();
  if (v473 > 12)
  {
    if (v473 > 21)
    {
      if (v473 != 22 && v473 != 34)
      {
        goto LABEL_573;
      }
    }

    else
    {
      if (v473 == 13)
      {
        v598 = v1049;

        sub_1CF1E53F8(*v598, *(v598 + 8), *(v598 + 9));
        goto LABEL_575;
      }

      if (v473 != 21)
      {
        goto LABEL_573;
      }
    }

    v559 = &unk_1EC4C4E20;
    v560 = &unk_1CFA05350;
    v561 = v1049;
LABEL_518:
    sub_1CEFCCC44(v561, v559, v560);
LABEL_575:
    v472 = v1053;
    goto LABEL_576;
  }

  if (v473 == 6)
  {
    v590 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308) + 48);
    if (v318(v1049, 1, v1052) != 1)
    {
      v670 = v1024;
      sub_1CEFE55D0(v1049, v1024, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v671 = *(v670 + 8);
      v672 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v674 = v673;
      if (v672 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v674 == v675)
      {
      }

      else
      {
        v716 = sub_1CF9E8048();

        if ((v716 & 1) == 0)
        {
          v717 = *(v1024 + 88);
          v718 = *(v1046 + 80);
          v719 = *(v1046 + 88);
          v1080[0] = *(v1024 + 80);
          v1080[1] = v717;
          v1079[0] = v718;
          v1079[1] = v719;
          sub_1CEFE4E68();
          if (sub_1CF9E7678())
          {
            sub_1CEFCCC44(v1024, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
            sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

            v595 = &unk_1EC4BFBB0;
            v596 = &qword_1CF9FCB90;
            v597 = (v1049 + v590);
            goto LABEL_802;
          }
        }
      }

      if (sub_1CF902E34() && !sub_1CF75C2AC())
      {
        sub_1CEFCCC44(v1024, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      }

      else
      {
        v720 = sub_1CF75C2AC();
        sub_1CEFCCC44(v1024, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        if (!v720 && *(v1061 + 456) != 1)
        {
          sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
          sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

          v721 = v1063;
          *v1063 = 0;
          *(v721 + 8) = -256;
          sub_1CEFCCC44(v1049 + v590, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_804:
          sub_1CEFCCC44(v1053, &qword_1EC4BFDE8, &qword_1CFA054E8);
          return;
        }
      }

      v559 = &unk_1EC4BFBB0;
      v560 = &qword_1CF9FCB90;
      v561 = (v1049 + v590);
      goto LABEL_518;
    }

    sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    v591 = &unk_1EC4BFBB0;
    v592 = &qword_1CF9FCB90;
    v593 = v1049;
    v594 = (v1049 + v590);
LABEL_652:
    sub_1CEFCCC44(v594, v591, v592);
    v597 = v593;
    v595 = v591;
    v596 = v592;
    goto LABEL_802;
  }

  if (v473 == 7)
  {
    v1054 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48);
    if ((*(v1044 + 48))(v1049, 1, v1040) == 1)
    {
      sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
      sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

      v591 = &qword_1EC4C1B40;
      v592 = &unk_1CF9FCB70;
      v593 = v1049;
      v594 = (v1049 + v1054);
      goto LABEL_652;
    }

    v676 = v1023;
    sub_1CEFE55D0(v1049, v1023, &unk_1EC4BE360, &qword_1CF9FE650);
    v677 = *(v676 + 16);
    if (*(v676 + 24))
    {
      if (*(v676 + 24) == 1)
      {
        if (v403 != 1 || v677 != v404)
        {
LABEL_800:
          sub_1CEFCCC44(v1023, &unk_1EC4BE360, &qword_1CF9FE650);
          goto LABEL_801;
        }
      }

      else if (v677)
      {
        if (v403 != 2 || v404 != 1)
        {
          goto LABEL_800;
        }
      }

      else if (v403 != 2 || v404)
      {
        goto LABEL_800;
      }
    }

    else if (v403 || v677 != v404)
    {
      goto LABEL_800;
    }

    v763 = v1055[2].isa;
    v764 = v1023;
    v765 = *(v1023 + 128);
    v766 = *(v1023 + 136);
    v767 = *(v1046 + 80);
    v768 = *(v1046 + 88);

    LOBYTE(v767) = sub_1CF39B038(v765, v766, v767, v768);

    sub_1CEFCCC44(v764, &unk_1EC4BE360, &qword_1CF9FE650);
    if (v767)
    {
      v559 = &qword_1EC4C1B40;
      v560 = &unk_1CF9FCB70;
      v561 = (v1049 + v1054);
      goto LABEL_518;
    }

LABEL_801:
    sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    v595 = &qword_1EC4C1B40;
    v596 = &unk_1CF9FCB70;
    v597 = (v1049 + v1054);
    goto LABEL_802;
  }

  if (v473 != 9)
  {
LABEL_573:
    sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    v595 = &unk_1EC4C4E20;
    v596 = &unk_1CFA05350;
    v597 = v1049;
LABEL_802:
    sub_1CEFCCC44(v597, v595, v596);
    goto LABEL_803;
  }

  v550 = v1025;
  sub_1CEFE55D0(v1049, v1025, &unk_1EC4BE360, &qword_1CF9FE650);
  v551 = *(v550 + 16);
  if (*(v550 + 24))
  {
    if (*(v550 + 24) == 1)
    {
      if (v403 != 1 || v551 != v404)
      {
LABEL_775:
        sub_1CEFCCC44(v1025, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_776:
        sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
        sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

LABEL_803:
        v769 = v1063;
        *v1063 = 0;
        *(v769 + 8) = -256;
        goto LABEL_804;
      }
    }

    else if (v551)
    {
      if (v403 != 2 || v404 != 1)
      {
        goto LABEL_775;
      }
    }

    else if (v403 != 2 || v404)
    {
      goto LABEL_775;
    }
  }

  else if (v403 || v551 != v404)
  {
    goto LABEL_775;
  }

  v747 = v1055[2].isa;
  v748 = v1025;
  v749 = *(v1025 + 128);
  v750 = *(v1025 + 136);
  v751 = *(v1046 + 80);
  v752 = *(v1046 + 88);

  LOBYTE(v751) = sub_1CF39B038(v749, v750, v751, v752);

  sub_1CEFCCC44(v748, &unk_1EC4BE360, &qword_1CF9FE650);
  v472 = v1053;
  if ((v751 & 1) == 0)
  {
    goto LABEL_776;
  }

LABEL_576:
  sub_1CEFCCC44(v472, &qword_1EC4BFDE8, &qword_1CFA054E8);
  v599 = v1046;
  sub_1CF415C48(v1074, v1061, v1046, v1094, v1062, v1050, v1064);
  if ((v601 & 1) == 0)
  {

    sub_1CF4804C0(v1074[0], LOWORD(v1074[1]));
    sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
    v637 = v599;
LABEL_767:
    sub_1CEFCCC44(v637, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

LABEL_768:
    v743 = v1063;
    *v1063 = 0;
    *(v743 + 8) = -256;
    return;
  }

  v602 = v600;
  v603 = v1074[0];
  v604 = LOWORD(v1074[1]);
  if (HIBYTE(LOWORD(v1074[1])) <= 0xFEu)
  {
    sub_1CF48034C(v1074[0], LOWORD(v1074[1]), BYTE1(v1074[1]) & 1);

    sub_1CF4804C0(v603, v604);
    sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    v638 = v1063;
    *v1063 = v603;
    *(v638 + 8) = v604;
    return;
  }

  if (!v600)
  {
LABEL_765:
    v741 = v603;
    v742 = v604;
LABEL_766:
    sub_1CF4804C0(v741, v742);
    sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
    v637 = v1046;
    goto LABEL_767;
  }

  if (!sub_1CF55B5A0(v600))
  {
LABEL_764:

    goto LABEL_765;
  }

  v605 = v1061[26];
  v606 = *(v1061 + 216);
  v607 = v602;

  v608 = 1;
  sub_1CF90333C(0, 1, v602);
  v609 = v605 == 1 && v606 == 2;
  LODWORD(v1051) = v609;
  v1053 = v605;
  if (v605)
  {
    v610 = 0;
  }

  else
  {
    v610 = v606 == 2;
  }

  LODWORD(v1049) = v610;
  v611 = 40;
  do
  {
    v612 = *(v607 + v611);
    v613 = *(v607 + v611 - 8);
    v1071[0] = v613;
    LOBYTE(v1071[1]) = v612;
    if (v612 == 255)
    {
      if (v606 == 255)
      {
        goto LABEL_781;
      }
    }

    else if (v606 != 255)
    {
      if (v612)
      {
        if (v612 == 1)
        {
          if (v606 == 1 && v613 == v1053)
          {
            goto LABEL_781;
          }
        }

        else if (v613)
        {
          if (v1051)
          {
            goto LABEL_781;
          }
        }

        else if (v1049)
        {
          goto LABEL_781;
        }
      }

      else if (!v606 && v613 == v1053)
      {
LABEL_781:
        swift_bridgeObjectRelease_n();
        v741 = v1074[0];
        v742 = LOWORD(v1074[1]);
        goto LABEL_766;
      }
    }

    sub_1CF7F5D3C(v613, v612, v1050, v1064, v1080);
    memcpy(v1079, v1080, sizeof(v1079));
    if (sub_1CF08B99C(v1079) == 1)
    {
      memcpy(v1078, v1080, sizeof(v1078));
      v614 = &unk_1EC4BFC20;
      v615 = &unk_1CFA0A290;
      goto LABEL_620;
    }

    memcpy(v1078, v1080, sizeof(v1078));
    memcpy(v1093, v1080, sizeof(v1093));
    v1054 = v1078[31];
    if (v1078[31])
    {
      v1070[0] = v1054;
      v616 = v1048;
      sub_1CEFCCBDC(v1058, v1048, &qword_1EC4BFDE8, &qword_1CFA054E8);
      if ((v1095)(v616, 1, v1060) == 1)
      {
        v617 = v1054;
        v618 = v1048;
        v619 = &qword_1EC4BFDE8;
        v620 = &qword_1CFA054E8;
LABEL_616:
        sub_1CEFCCC44(v618, v619, v620);
LABEL_617:
        sub_1CF465F90(v1093, v1050, v1064, v1062, v1076);
        v631 = v1076[0];
        if (sub_1CF902E40(v1076[0]))
        {

          goto LABEL_619;
        }

        v778 = sub_1CF06EDF4();
        if (sub_1CF9526EC(v631, *v778))
        {
          if (!LOBYTE(v1078[46]) && (sub_1CF06D930(8, v1078[44]) & 1) != 0)
          {
            if (v606 != 255)
            {
              goto LABEL_939;
            }

            goto LABEL_827;
          }

          goto LABEL_894;
        }

        if ((sub_1CF06D930(2, v631) & 1) != 0 && LOBYTE(v1078[57]) == 1 && *(v1061 + 456) == 1)
        {
          v1076[0] = v1057;
          v865 = *(*v316 + 560);
          v866 = v1057;
          v867 = v865(v1070, v1076, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

          if (v867)
          {

            sub_1CF19BFD0();
            v868 = v1084;
            v869 = swift_allocObject();
            *(v869 + 16) = v868;
            v870 = swift_allocObject();
            *(v870 + 16) = sub_1CF4858A0;
            *(v870 + 24) = v869;
            v871 = v868;
            v1095 = sub_1CF9E6108();
            v872 = sub_1CF9E72C8();
            v873 = swift_allocObject();
            *(v873 + 16) = 32;
            v874 = swift_allocObject();
            *(v874 + 16) = 8;
            v875 = swift_allocObject();
            *(v875 + 16) = sub_1CF485964;
            *(v875 + 24) = v870;
            v876 = swift_allocObject();
            *(v876 + 16) = sub_1CF485960;
            *(v876 + 24) = v875;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
            v877 = swift_allocObject();
            sub_1CF06DA80(v877, 3);
            *v878 = sub_1CF485A70;
            v878[1] = v873;
            v878[2] = sub_1CF485A70;
            v878[3] = v874;
            v878[4] = sub_1CF485884;
            v878[5] = v876;

            LODWORD(v1064) = v872;
            if (os_log_type_enabled(v1095, v872))
            {
              v879 = sub_1CF1B5D40();
              v880 = swift_slowAlloc();
              v1067[0] = 0;
              v1072 = v880;
              *v879 = 258;
              v1075[0] = v879 + 2;
              v1076[0] = sub_1CF485A70;
              v1076[1] = v873;
              sub_1CF1B5D64(v1076, v1075, v1067, &v1072);

              v1076[0] = sub_1CF485A70;
              v1076[1] = v874;
              sub_1CF1B5D64(v1076, v1075, v1067, &v1072);

              v1076[0] = sub_1CF485884;
              v1076[1] = v876;
              sub_1CF1B5D64(v1076, v1075, v1067, &v1072);

              _os_log_impl(&dword_1CEFC7000, v1095, v1064, "♻️  breaking reparent cycle by disabling path-matching condition for propagation of %s", v879, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v880);
              MEMORY[0x1D386CDC0](v880, -1, -1);
              sub_1CF1B5D48();
            }

            (*(v1007 + 8))(v1000, v1008);
LABEL_962:
            v986 = v1054;
LABEL_963:

            sub_1CF4804C0(v1074[0], LOWORD(v1074[1]));
            sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
            sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

            v942 = &qword_1EC4BFBC0;
            v943 = &unk_1CF9FCAC0;
            v973 = v1078;
LABEL_964:
            sub_1CEFCCC44(v973, v942, v943);
            goto LABEL_768;
          }
        }

        if (LOBYTE(v1078[46]))
        {
          goto LABEL_901;
        }

        v915 = v1078[44];
        if ((sub_1CF06D930(2, v1078[44]) & 1) == 0)
        {
          if (sub_1CF06D930(1024, v915))
          {
            v1076[0] = v1057;
            v937 = *(*v316 + 576);
            v938 = v1057;
            v939 = v937(v1070, v1076, 1, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v958 = v939;
            v959 = v1076[0];

            if (v958)
            {
              sub_1CF19BFD0();
              v960 = v1084;
              v961 = swift_allocObject();
              *(v961 + 16) = v960;
              v962 = swift_allocObject();
              *(v962 + 16) = sub_1CF4858A0;
              *(v962 + 24) = v961;
              v963 = v960;
              v1095 = sub_1CF9E6108();
              v964 = sub_1CF9E72C8();
              v965 = swift_allocObject();
              *(v965 + 16) = 32;
              v966 = swift_allocObject();
              *(v966 + 16) = 8;
              v967 = swift_allocObject();
              *(v967 + 16) = sub_1CF485964;
              *(v967 + 24) = v962;
              v968 = swift_allocObject();
              *(v968 + 16) = sub_1CF485960;
              *(v968 + 24) = v967;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
              v969 = swift_allocObject();
              sub_1CF06DA80(v969, 3);
              *v970 = sub_1CF485A70;
              v970[1] = v965;
              v970[2] = sub_1CF485A70;
              v970[3] = v966;
              v970[4] = sub_1CF485884;
              v970[5] = v968;

              LODWORD(v1064) = v964;
              if (os_log_type_enabled(v1095, v964))
              {
                v971 = sub_1CF1B5D40();
                v972 = swift_slowAlloc();
                v1067[0] = 0;
                v1072 = v972;
                *v971 = 258;
                v1075[0] = v971 + 2;
                v1076[0] = sub_1CF485A70;
                v1076[1] = v965;
                sub_1CF1B5D64(v1076, v1075, v1067, &v1072);

                v1076[0] = sub_1CF485A70;
                v1076[1] = v966;
                sub_1CF1B5D64(v1076, v1075, v1067, &v1072);

                v1076[0] = sub_1CF485884;
                v1076[1] = v968;
                sub_1CF1B5D64(v1076, v1075, v1067, &v1072);

                _os_log_impl(&dword_1CEFC7000, v1095, v1064, "♻️  detected move cycle by disabling path-matching condition for propagation of %s", v971, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v972);
                MEMORY[0x1D386CDC0](v972, -1, -1);
                sub_1CF1B5D48();
              }

              (*(v1007 + 8))(v1003, v1008);
              goto LABEL_962;
            }

LABEL_902:

            sub_1CF4804C0(v1074[0], LOWORD(v1074[1]));
            sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
            sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

            sub_1CEFCCC44(v1078, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            v904 = v1063;
            *v1063 = v1054;
            *(v904 + 9) = 0;
            return;
          }

LABEL_901:

          goto LABEL_902;
        }

        v1076[0] = v1057;
        v916 = *(*v316 + 560);
        v917 = v1057;
        v918 = v916(v1070, v1076, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v919 = v1076[0];

        if ((v918 & 1) == 0)
        {
          goto LABEL_902;
        }

        sub_1CF19BFD0();
        v920 = v1084;
        v921 = swift_allocObject();
        *(v921 + 16) = v920;
        v922 = swift_allocObject();
        *(v922 + 16) = sub_1CF4858A0;
        *(v922 + 24) = v921;
        v923 = v920;
        v1095 = sub_1CF9E6108();
        v924 = sub_1CF9E72C8();
        v925 = swift_allocObject();
        *(v925 + 16) = 32;
        v926 = swift_allocObject();
        *(v926 + 16) = 8;
        v927 = swift_allocObject();
        *(v927 + 16) = sub_1CF485964;
        *(v927 + 24) = v922;
        v928 = swift_allocObject();
        *(v928 + 16) = sub_1CF485960;
        *(v928 + 24) = v927;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
        v929 = swift_allocObject();
        sub_1CF06DA80(v929, 3);
        *v930 = sub_1CF485A70;
        v930[1] = v925;
        v930[2] = sub_1CF485A70;
        v930[3] = v926;
        v930[4] = sub_1CF485884;
        v930[5] = v928;

        LODWORD(v1064) = v924;
        if (os_log_type_enabled(v1095, v924))
        {
          v931 = sub_1CF1B5D40();
          v932 = swift_slowAlloc();
          v1067[0] = 0;
          v1072 = v932;
          *v931 = 258;
          v1075[0] = v931 + 2;
          v1076[0] = sub_1CF485A70;
          v1076[1] = v925;
          sub_1CF1B5D64(v1076, v1075, v1067, &v1072);

          v1076[0] = sub_1CF485A70;
          v1076[1] = v926;
          sub_1CF1B5D64(v1076, v1075, v1067, &v1072);

          v1076[0] = sub_1CF485884;
          v1076[1] = v928;
          sub_1CF1B5D64(v1076, v1075, v1067, &v1072);

          _os_log_impl(&dword_1CEFC7000, v1095, v1064, "♻️  breaking parent creation cycle by disabling path-matching condition for propagation of %s", v931, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v932);
          MEMORY[0x1D386CDC0](v932, -1, -1);
          sub_1CF1B5D48();
        }

LABEL_957:

        (*(v1007 + 8))(v1002, v1008);
        goto LABEL_962;
      }

      if (swift_getEnumCaseMultiPayload() != 22)
      {
        v630 = v1054;
        v618 = v1048;
        v619 = &unk_1EC4C4E20;
        v620 = &unk_1CFA05350;
        goto LABEL_616;
      }

      v1052 = *v1048;
      if (v1052 < 0)
      {
        v634 = v1054;

        goto LABEL_617;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
      v621 = swift_dynamicCastClass();
      if (v621 && (v622 = v621, *(v621 + 112) == 3))
      {
        v623 = *(v621 + 96);
        v1047 = *(v621 + 104);
        v1067[0] = v623;
        v1045 = v1054;
        sub_1CF03C530(v623, v1047, 3u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
        if ((swift_dynamicCast() & 1) == 0)
        {

          memset(v1076, 0, 88);
          LOBYTE(v1076[11]) = -1;
          memset(&v1075[4], 0, 48);
          *(&v1075[9] + 1) = *(&v1076[9] + 1);
          memset(v1075, 0, 32);
          v618 = v1075;
          v619 = &qword_1EC4BFE78;
          v620 = &qword_1CFA05558;
          goto LABEL_616;
        }

        if (LOBYTE(v1076[11]) != 1)
        {

          sub_1CF480678(v1076[0], v1076[1], v1076[2], v1076[3], v1076[4], v1076[5], v1076[6], v1076[7], v1076[8], v1076[9], v1076[10], v1076[11]);
          goto LABEL_617;
        }

        sub_1CF480620(v1076[4], v1076[5]);

        v624 = v1076[0];
        v1043 = v624;
        v625 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v1044 = v626;
        v627 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v1047 = v628;
        if (v625 == v627 && v1044 == v1047)
        {
          v629 = v1043;
          v1042 = v1057;

LABEL_632:
          v636 = *(v622 + 144);
          if (*(v622 + 152))
          {
            if (*(v622 + 152) == 1)
            {
              if (LOBYTE(v1071[1]) == 1 && v636 == v1071[0])
              {
                goto LABEL_954;
              }
            }

            else if (v636)
            {
              if (LOBYTE(v1071[1]) == 2 && v1071[0] == 1)
              {
                goto LABEL_954;
              }
            }

            else if (LOBYTE(v1071[1]) == 2 && !v1071[0])
            {
              goto LABEL_954;
            }
          }

          else if (!LOBYTE(v1071[1]) && v636 == LODWORD(v1071[0]))
          {
LABEL_954:

            sub_1CF19BFD0();
            v974 = swift_allocObject();
            v975 = v1043;
            *(v974 + 16) = v1043;
            v976 = swift_allocObject();
            *(v976 + 16) = sub_1CF48089C;
            *(v976 + 24) = v974;
            v1095 = v975;
            v977 = sub_1CF9E6108();
            LODWORD(v975) = sub_1CF9E72C8();
            v978 = swift_allocObject();
            *(v978 + 16) = 32;
            v979 = swift_allocObject();
            *(v979 + 16) = 8;
            v980 = swift_allocObject();
            *(v980 + 16) = sub_1CF485964;
            *(v980 + 24) = v976;
            v981 = swift_allocObject();
            *(v981 + 16) = sub_1CF485960;
            *(v981 + 24) = v980;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
            v982 = swift_allocObject();
            sub_1CF06DA80(v982, 3);
            *v983 = sub_1CF485A70;
            v983[1] = v978;
            v983[2] = sub_1CF485A70;
            v983[3] = v979;
            v983[4] = sub_1CF485884;
            v983[5] = v981;

            LODWORD(v1062) = v975;
            v1064 = v977;
            if (os_log_type_enabled(v977, v975))
            {
              v984 = sub_1CF1B5D40();
              v985 = swift_slowAlloc();
              v1067[0] = 0;
              v1072 = v985;
              *v984 = 258;
              v1075[0] = v984 + 2;
              v1076[0] = sub_1CF485A70;
              v1076[1] = v978;
              sub_1CF1B5D64(v1076, v1075, v1067, &v1072);

              v1076[0] = sub_1CF485A70;
              v1076[1] = v979;
              sub_1CF1B5D64(v1076, v1075, v1067, &v1072);

              v1076[0] = sub_1CF485884;
              v1076[1] = v981;
              sub_1CF1B5D64(v1076, v1075, v1067, &v1072);

              _os_log_impl(&dword_1CEFC7000, v1064, v1062, "♻️  breaking move-back vs creation cycle by disabling path-matching condition for propagation of %s", v984, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v985);
              MEMORY[0x1D386CDC0](v985, -1, -1);
              sub_1CF1B5D48();
            }

            (*(v1007 + 8))(v998, v1008);
            v986 = v1095;
            goto LABEL_963;
          }

          goto LABEL_617;
        }

        LODWORD(v1042) = sub_1CF9E8048();
        v635 = v1043;
        v1041 = v1057;

        v1040 = v635;

        if (v1042)
        {
          goto LABEL_632;
        }
      }

      else
      {
        v633 = v1054;
      }

      goto LABEL_617;
    }

LABEL_619:
    v614 = &qword_1EC4BFBC0;
    v615 = &unk_1CF9FCAC0;
LABEL_620:
    sub_1CEFCCC44(v1078, v614, v615);
    v607 = v602;
    if (v608 == sub_1CF55B5A0(v602))
    {

      v603 = v1074[0];
      v604 = LOWORD(v1074[1]);
      goto LABEL_764;
    }

    sub_1CF90333C(v608, 1, v602);
    v611 += 16;
  }

  while (!__OFADD__(v608++, 1));
  __break(1u);
LABEL_939:
  v1075[0] = v1053;
  LOBYTE(v1075[1]) = v606;
  v940 = (*(v1055->isa + 70))(v1075, v1071, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v940)
  {

    sub_1CF19BFD0();
    v945 = v1084;
    v946 = swift_allocObject();
    *(v946 + 16) = v945;
    v947 = swift_allocObject();
    *(v947 + 16) = sub_1CF4858A0;
    *(v947 + 24) = v946;
    v948 = v945;
    v1095 = sub_1CF9E6108();
    v949 = sub_1CF9E72C8();
    v950 = swift_allocObject();
    *(v950 + 16) = 32;
    v951 = swift_allocObject();
    *(v951 + 16) = 8;
    v952 = swift_allocObject();
    *(v952 + 16) = sub_1CF485964;
    *(v952 + 24) = v947;
    v953 = swift_allocObject();
    *(v953 + 16) = sub_1CF485960;
    *(v953 + 24) = v952;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
    v954 = swift_allocObject();
    sub_1CF06DA80(v954, 3);
    *v955 = sub_1CF485A70;
    v955[1] = v950;
    v955[2] = sub_1CF485A70;
    v955[3] = v951;
    v955[4] = sub_1CF485884;
    v955[5] = v953;

    LODWORD(v1064) = v949;
    if (os_log_type_enabled(v1095, v949))
    {
      v956 = sub_1CF1B5D40();
      v957 = swift_slowAlloc();
      v1072 = 0;
      v1068 = v957;
      *v956 = 258;
      v1067[0] = v956 + 2;
      v1076[0] = sub_1CF485A70;
      v1076[1] = v950;
      sub_1CF1B5D64(v1076, v1067, &v1072, &v1068);

      v1076[0] = sub_1CF485A70;
      v1076[1] = v951;
      sub_1CF1B5D64(v1076, v1067, &v1072, &v1068);

      v1076[0] = sub_1CF485884;
      v1076[1] = v953;
      sub_1CF1B5D64(v1076, v1067, &v1072, &v1068);

      _os_log_impl(&dword_1CEFC7000, v1095, v1064, "♻️  breaking replacing a parent cycle by disabling path-matching condition for propagation of %s", v956, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v957);
      MEMORY[0x1D386CDC0](v957, -1, -1);
      sub_1CF1B5D48();
    }

    (*(v1007 + 8))(v999, v1008);
    goto LABEL_962;
  }

LABEL_827:
  if (LOBYTE(v1078[1]) == 255)
  {
LABEL_894:

    goto LABEL_895;
  }

  v1075[0] = v1078[0];
  LOBYTE(v1075[1]) = v1078[1];
  v779 = (*(v1055->isa + 73))(v1075, &v1084, &v1085, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

  if (v779)
  {
    sub_1CF19BFD0();
    v780 = v1084;
    v781 = swift_allocObject();
    *(v781 + 16) = v780;
    v782 = swift_allocObject();
    *(v782 + 16) = sub_1CF4858A0;
    *(v782 + 24) = v781;
    v783 = v780;
    v1095 = sub_1CF9E6108();
    v784 = sub_1CF9E72C8();
    v785 = swift_allocObject();
    *(v785 + 16) = 32;
    v786 = swift_allocObject();
    *(v786 + 16) = 8;
    v787 = swift_allocObject();
    *(v787 + 16) = sub_1CF485964;
    *(v787 + 24) = v782;
    v788 = swift_allocObject();
    *(v788 + 16) = sub_1CF485960;
    *(v788 + 24) = v787;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
    v789 = swift_allocObject();
    sub_1CF06DA80(v789, 3);
    *v790 = sub_1CF485A70;
    v790[1] = v785;
    v790[2] = sub_1CF485A70;
    v790[3] = v786;
    v790[4] = sub_1CF485884;
    v790[5] = v788;

    LODWORD(v1064) = v784;
    if (os_log_type_enabled(v1095, v784))
    {
      v791 = sub_1CF1B5D40();
      v792 = swift_slowAlloc();
      v1072 = 0;
      v1068 = v792;
      *v791 = 258;
      v1067[0] = v791 + 2;
      v1076[0] = sub_1CF485A70;
      v1076[1] = v785;
      sub_1CF1B5D64(v1076, v1067, &v1072, &v1068);

      v1076[0] = sub_1CF485A70;
      v1076[1] = v786;
      sub_1CF1B5D64(v1076, v1067, &v1072, &v1068);

      v1076[0] = sub_1CF485884;
      v1076[1] = v788;
      sub_1CF1B5D64(v1076, v1067, &v1072, &v1068);

      _os_log_impl(&dword_1CEFC7000, v1095, v1064, "♻️  breaking reparent-to-new cycle by disabling path-matching condition for propagation of %s", v791, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v792);
      MEMORY[0x1D386CDC0](v792, -1, -1);
      sub_1CF1B5D48();
    }

    (*(v1007 + 8))(v1001, v1008);
    goto LABEL_962;
  }

LABEL_895:
  v881 = v1078[1];
  if (LOBYTE(v1078[1]) == 255)
  {

    sub_1CF4804C0(v1074[0], LOWORD(v1074[1]));
    sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    sub_1CEFCCC44(v1078, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v882 = 0;
    *(v1063 + 8) = -256;
  }

  else
  {
    v882 = v1078[0];

    sub_1CF4804C0(v1074[0], LOWORD(v1074[1]));
    sub_1CEFCCC44(v1081, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1046, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    sub_1CEFCCC44(v1078, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v883 = v1063;
    *(v1063 + 8) = v881;
    *(v883 + 9) = 1;
  }

  *v1063 = v882;
}