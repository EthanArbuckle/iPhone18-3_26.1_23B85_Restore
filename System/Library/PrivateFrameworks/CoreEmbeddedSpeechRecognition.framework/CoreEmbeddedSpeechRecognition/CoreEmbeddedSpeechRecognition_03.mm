uint64_t sub_225F537A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v12 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x277D82BE0](a2);
  v15[0] = a2;
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v8 = sub_226099C88();
    MEMORY[0x277D82BD8](a3);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v15[1] = v9;
  MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v6 = sub_226099C88();
    MEMORY[0x277D82BD8](a4);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v15[2] = v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7866F0, &unk_2260A0810);
  sub_225F53974(v12, v15, v4);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  return MEMORY[0x277D82BD8](a2);
}

uint64_t sub_225F539A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v64 = 0;
  v79[4] = a1;
  v79[3] = a2;
  v79[1] = a3;
  v79[2] = a4;
  v79[0] = sub_22609A4F8();
  v78 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F156F8();
  v53 = sub_22609A008();
  sub_2260998E8();
  if (v53)
  {
    v49 = sub_22609A008();
  }

  else
  {
    v49 = 0;
  }

  if (v49)
  {
    v43 = sub_22609A4F8();
    sub_225EFE6E8(v79);
    result = v43;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = v43;
LABEL_48:
    *a5 = v44;
    a5[1] = v45;
    a5[2] = v46;
    a5[3] = v47;
    a5[4] = v48;
    return result;
  }

  v77 = a1;
  if (sub_22609A008())
  {
    v40 = sub_226099CD8();
    v41 = sub_226099CD8();
    v42 = sub_22609A4F8();
    sub_225EFE6E8(v79);
    result = v42;
    v44 = 0;
    v45 = 0;
    v46 = v40;
    v47 = v41;
    v48 = v42;
    goto LABEL_48;
  }

  v76 = a2;
  if (sub_22609A008())
  {
    v38 = sub_226099CD8();
    v39 = sub_22609A4F8();
    sub_225EFE6E8(v79);
    result = v39;
    v44 = 0;
    v45 = v38;
    v46 = 0;
    v47 = 0;
    v48 = v39;
    goto LABEL_48;
  }

  sub_2260998E8();
  sub_2260998E8();
  v37 = sub_226099CD8();
  if (v37 != sub_226099CD8())
  {
    sub_225F7B77C();
    sub_22609A3C8();
    __break(1u);
  }

  v75 = 0;
  v74 = 0;
  v73 = 0;
  v36 = sub_226099CD8();
  v72 = v36;
  if (v36 < 0)
  {
    sub_22609A3B8();
    __break(1u);
  }

  v67 = 0;
  v68 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786260, &qword_2260A02C8);
  sub_225F7BB14();
  sub_22609A028();
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  for (i = 0; ; i = v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786468, &unk_2260A0590);
    sub_22609A388();
    if (v66)
    {
      break;
    }

    v64 = v65;
    sub_2260998E8();
    sub_2260998E8();
    sub_2260998E8();
    sub_226099D38();
    v29 = MEMORY[0x22AA72BD0](v63);

    sub_2260998E8();
    sub_2260998E8();
    if (v29)
    {
      sub_226099D38();
      v27 = MEMORY[0x22AA72BD0]();

      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      sub_225F7B77C();
      sub_22609A3C8();
      __break(1u);
    }

    sub_226099D38();
    v26 = MEMORY[0x22AA72BD0](v62);

    result = v26;
    if (v26)
    {
      if (__OFADD__(i, 1))
      {
        goto LABEL_52;
      }

      v74 = i + 1;
      v20 = i + 1;
      v21 = v31;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      v25 = i + 1;
    }

    else
    {
      sub_226099D38();
      v19 = MEMORY[0x22AA72BD0](v61);

      result = v19;
      if (v19)
      {
        if (__OFADD__(v34, 1))
        {
          goto LABEL_51;
        }

        v75 = v34 + 1;
        v15 = v34 + 1;
        v16 = v32;
        v17 = v33;
        v18 = v34 + 1;
      }

      else
      {
        sub_226099D38();
        v57 = v59;
        v58 = v60;
        sub_226099D38();
        v54[0] = v55;
        v54[1] = v56;
        v14 = MEMORY[0x22AA72BD0](v57, v58, v55, v56);
        sub_225EFE6BC(v54);
        sub_225EFE6BC(&v57);
        result = v14;
        if (v14)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786478, &unk_2260A0DF0);
          sub_226099CE8();
          v12 = v32;
          v13 = v33;
        }

        else
        {
          if (__OFADD__(v33, 1))
          {
            goto LABEL_50;
          }

          v73 = v33 + 1;
          v12 = v33 + 1;
          v13 = v33 + 1;
        }

        v15 = v31;
        v16 = v12;
        v17 = v13;
        v18 = v34;
      }

      v20 = v30;
      v21 = v15;
      v22 = v16;
      v23 = v17;
      v24 = v18;
      v25 = i;
    }

    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v34 = v24;
  }

  result = sub_226099CD8();
  v11 = result - v31;
  if (!__OFSUB__(result, v31))
  {
    v10 = v79[0];
    sub_2260998E8();
    result = sub_225EFE6E8(v79);
    v44 = v32;
    v45 = v31;
    v46 = v30;
    v47 = v11;
    v48 = v10;
    goto LABEL_48;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_225F54384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v363 = a4;
  v362 = a3;
  v372 = a2;
  v364 = a1;
  v360 = 0;
  v433 = 0;
  v432 = 0;
  v431 = 0;
  v430 = 0;
  v429 = 0;
  v428 = 0;
  v427 = 0;
  v426 = 0;
  v425 = 0;
  v424 = 0;
  v423 = 0;
  v422 = 0;
  v421 = 0;
  v420 = 0;
  v416[0] = 0;
  v415 = 0;
  v414 = 0;
  v413 = 0;
  v412 = 0;
  v411[1] = 0;
  v411[0] = 0;
  v406 = 0;
  v405 = 0;
  v361 = 0;
  v394 = 0;
  v365 = sub_226098C58();
  v366 = *(v365 - 8);
  v367 = v366;
  v368 = *(v366 + 64);
  MEMORY[0x28223BE20](v364, v372, v362, v363);
  v370 = (v368 + 15) & 0xFFFFFFFFFFFFFFF0;
  v369 = &v78 - v370;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v371 = &v78 - v370;
  v433 = v8;
  v432 = v9;
  v430 = v10;
  v431 = v11;
  v373 = sub_226099CD8();
  sub_2260998E8();
  if (v373)
  {
    v359 = sub_226099CD8() == 0;
  }

  else
  {
    v359 = 1;
  }

  v358 = v359;

  if (v358)
  {
    v348 = MEMORY[0x277D837D0];
    v349 = 0;
    v351 = sub_22609A4F8();
    v350 = sub_22609A4F8();
    v352 = v350;
    v353 = sub_22609A4F8();
    v354 = v351;
    v355 = v352;
    v356 = v353;
    v357 = v361;
    return v354;
  }

  v347 = sub_226099CD8();
  v338 = v347;
  v429 = v347;
  v341 = &unk_2839385B8;
  v339 = 24;
  v340 = 7;
  v342 = swift_allocObject();
  v343 = (v342 + 16);
  v428 = v342 + 16;
  *(v342 + 16) = -1;
  v344 = swift_allocObject();
  v345 = (v344 + 16);
  v427 = v344 + 16;
  v346 = 0;
  *(v344 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786480, &qword_2260A05A0);
  v426 = sub_22609A4F8();
  v424 = sub_225F563A0;
  v425 = v346;
  if (v347 < 0)
  {
    LODWORD(v76) = 0;
    v75 = 409;
    LOBYTE(v74) = 2;
    sub_22609A3B8();
    __break(1u);
  }

  v418 = 0;
  v419 = v338;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786398, &qword_2260A0520);
  sub_225F51430();
  sub_22609A028();
  for (i = v361; ; i = v200)
  {
    v334 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863B0, &qword_2260A0528);
    sub_22609A388();
    v335 = v416[1];
    if (v417)
    {
      break;
    }

    v333 = v335;
    v332 = v335;
    v394 = v335;
    sub_2260998E8();
    sub_2260998E8();
    if (v332 == v338)
    {
      v331 = 1;
    }

    else
    {
      v326 = MEMORY[0x277D837D0];
      sub_226099D38();
      v327 = v393[5];
      v329 = v393[6];
      sub_226099D38();
      v328 = v393[4];
      v330 = MEMORY[0x22AA72BD0](v327, v329, v393[3]);

      v331 = v330;
    }

    v325 = v331;

    if (v325)
    {
      if (v332 < v338)
      {
        sub_2260998E8();
        sub_2260998E8();
        sub_2260998E8();
        sub_226099D38();
        v323 = v377;
        v324 = MEMORY[0x22AA72BD0](v376);

        sub_2260998E8();
        sub_2260998E8();
        if (v324)
        {
          sub_226099D38();
          v320 = v375;
          v321 = MEMORY[0x22AA72BD0](v374);

          v322 = v321;
        }

        else
        {
          v322 = 0;
        }

        v319 = v322;

        if (v319)
        {
          sub_225F7B77C();
          LODWORD(v77) = 0;
          v76 = 265;
          sub_22609A3C8();
          __break(1u);
        }
      }

      v316 = &v390;
      swift_beginAccess();
      v318 = *v343;
      v317 = v318;
      swift_endAccess();
      if (v318 == -1)
      {
        v315 = 0;
      }

      else
      {
        v313 = &v378;
        swift_beginAccess();
        v314 = *v345;
        swift_endAccess();
        v315 = v314 > 0;
      }

      v312 = v315;
      sub_2260998E8();
      sub_2260998E8();
      sub_2260998E8();
      if (v312)
      {
        v307 = 32;
        v306 = &v380;
        v308 = 0;
        swift_beginAccess();
        swift_endAccess();
        v309 = &v379;
        swift_beginAccess();
        v310 = *v345;
        swift_endAccess();
        v311 = sub_225F563A0(v317, v310, v364, v372, v362, v363);
      }

      else
      {
        v311 = 0;
      }

      v305 = v311;

      if (v305)
      {
        v12 = v371;
        v13 = sub_225F4C7E0();
        (*(v367 + 16))(v12, v13, v365);

        v304 = sub_226098C48();
        v279 = v304;
        v303 = sub_22609A078();
        v280 = v303;
        v286 = 17;
        v291 = 7;
        v294 = swift_allocObject();
        v281 = v294;
        v285 = 0;
        *(v294 + 16) = 0;
        v295 = swift_allocObject();
        v282 = v295;
        v288 = 8;
        *(v295 + 16) = 8;
        v290 = 32;
        v14 = swift_allocObject();
        v15 = v342;
        v283 = v14;
        *(v14 + 16) = sub_225F2D274;
        *(v14 + 24) = v15;
        v16 = swift_allocObject();
        v17 = v283;
        v296 = v16;
        v284 = v16;
        *(v16 + 16) = sub_225F2D374;
        *(v16 + 24) = v17;
        v297 = swift_allocObject();
        v287 = v297;
        *(v297 + 16) = v285;
        v298 = swift_allocObject();
        v289 = v298;
        *(v298 + 16) = v288;
        v18 = swift_allocObject();
        v19 = v344;
        v292 = v18;
        *(v18 + 16) = sub_225F2D274;
        *(v18 + 24) = v19;
        v20 = swift_allocObject();
        v21 = v292;
        v301 = v20;
        v293 = v20;
        *(v20 + 16) = sub_225F2D374;
        *(v20 + 24) = v21;
        v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v299 = sub_22609A4F8();
        v300 = v22;

        v23 = v294;
        v24 = v300;
        *v300 = sub_225EF7434;
        v24[1] = v23;

        v25 = v295;
        v26 = v300;
        v300[2] = sub_225EF7434;
        v26[3] = v25;

        v27 = v296;
        v28 = v300;
        v300[4] = sub_225EF71D0;
        v28[5] = v27;

        v29 = v297;
        v30 = v300;
        v300[6] = sub_225EF7434;
        v30[7] = v29;

        v31 = v298;
        v32 = v300;
        v300[8] = sub_225EF7434;
        v32[9] = v31;

        v33 = v300;
        v34 = v301;
        v300[10] = sub_225EF71D0;
        v33[11] = v34;
        sub_225EF5418();

        if (os_log_type_enabled(v304, v303))
        {
          v35 = v334;
          v267 = sub_22609A188();
          v263 = v267;
          v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v265 = 0;
          v268 = sub_225EF5468(0);
          v266 = v268;
          v269 = sub_225EF5468(v265);
          v385[0] = v267;
          v384 = v268;
          v383 = v269;
          v270 = v385;
          sub_225EF54BC(0, v385);
          sub_225EF54BC(2, v270);
          v381 = sub_225EF7434;
          v382 = v281;
          sub_225EF73E8(&v381, v270, &v384, &v383);
          v271 = v35;
          v272 = v281;
          v273 = v282;
          v274 = v284;
          v275 = v287;
          v276 = v289;
          v277 = v293;
          v278 = v35;
          if (v35)
          {
            v255 = v272;
            v256 = v273;
            v257 = v274;
            v258 = v275;
            v259 = v276;
            v260 = v277;
            v261 = 0;
            v213 = v277;
            v212 = v276;
            v211 = v275;
            v210 = v274;
            v209 = v273;

            __break(1u);
          }

          else
          {
            v381 = sub_225EF7434;
            v382 = v282;
            sub_225EF73E8(&v381, v385, &v384, &v383);
            v247 = 0;
            v248 = v281;
            v249 = v282;
            v250 = v284;
            v251 = v287;
            v252 = v289;
            v253 = v293;
            v254 = 0;
            v381 = sub_225EF71D0;
            v382 = v284;
            sub_225EF73E8(&v381, v385, &v384, &v383);
            v239 = 0;
            v240 = v281;
            v241 = v282;
            v242 = v284;
            v243 = v287;
            v244 = v289;
            v245 = v293;
            v246 = 0;
            v381 = sub_225EF7434;
            v382 = v287;
            sub_225EF73E8(&v381, v385, &v384, &v383);
            v231 = 0;
            v232 = v281;
            v233 = v282;
            v234 = v284;
            v235 = v287;
            v236 = v289;
            v237 = v293;
            v238 = 0;
            v381 = sub_225EF7434;
            v382 = v289;
            sub_225EF73E8(&v381, v385, &v384, &v383);
            v223 = 0;
            v224 = v281;
            v225 = v282;
            v226 = v284;
            v227 = v287;
            v228 = v289;
            v229 = v293;
            v230 = 0;
            v381 = sub_225EF71D0;
            v382 = v293;
            sub_225EF73E8(&v381, v385, &v384, &v383);
            v215 = 0;
            v216 = v281;
            v217 = v282;
            v218 = v284;
            v219 = v287;
            v220 = v289;
            v221 = v293;
            v222 = 0;
            _os_log_impl(&dword_225EEB000, v279, v280, "ASRFullPayloadCorrectionWorker::Span generated offset %ld length %ld", v263, 0x16u);
            v214 = 0;
            sub_225EF7AF4(v266);
            sub_225EF7AF4(v269);
            sub_22609A168();

            v262 = v215;
          }
        }

        else
        {
          v36 = v334;

          v262 = v36;
        }

        v207 = v262;

        (*(v367 + 8))(v371, v365);
        v202 = 32;
        v201 = &v387;
        v203 = 0;
        swift_beginAccess();
        v205 = *v343;
        swift_endAccess();
        v204 = &v386;
        swift_beginAccess();
        v206 = *v345;
        swift_endAccess();
        v385[1] = v205;
        v385[2] = v206;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786488, &qword_2260A05A8);
        sub_226099CE8();
        v208 = v207;
      }

      else
      {
        v208 = v334;
      }

      v199 = v208;
      v196 = 33;
      v195 = &v389;
      v197 = 0;
      swift_beginAccess();
      *v343 = -1;
      swift_endAccess();
      v198 = &v388;
      swift_beginAccess();
      *v345 = v197;
      swift_endAccess();
      v200 = v199;
    }

    else
    {
      v193 = v393;
      swift_beginAccess();
      v194 = *v343;
      swift_endAccess();
      if (v194 == -1)
      {
        v189 = 33;
        v188 = &v392;
        v190 = 0;
        swift_beginAccess();
        *v343 = v332;
        swift_endAccess();
        v191 = &v391;
        swift_beginAccess();
        *v345 = 1;
        swift_endAccess();
      }

      else
      {
        result = swift_beginAccess();
        v38 = __OFADD__(*v345, 1);
        v192 = *v345 + 1;
        if (v38)
        {
          goto LABEL_117;
        }

        *v345 = v192;
        swift_endAccess();
      }

      v200 = v334;
    }
  }

  v180 = MEMORY[0x277D837D0];
  v183 = 0;
  v416[0] = sub_22609A4F8();
  v415 = sub_22609A4F8();
  v414 = sub_22609A4F8();
  v413 = v183;
  v412 = v183;
  v181 = v426;
  sub_2260998E8();
  v410 = v181;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786488, &qword_2260A05A8);
  sub_225F7BBB8();
  sub_22609A028();
  v184 = v183;
  v185 = v183;
  v186 = v183;
  v187 = v334;
  while (2)
  {
    v176 = v186;
    v177 = v185;
    v178 = v184;
    for (j = v187; ; j = v173)
    {
      v173 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786498, &unk_2260A05B0);
      sub_22609A388();
      v174 = v407;
      result = v408;
      v175 = v408;
      if (v409)
      {
        sub_225EFE6E8(v411);
        v79 = v416[0];
        sub_2260998E8();
        v80 = v415;
        sub_2260998E8();
        v81 = v414;
        sub_2260998E8();
        sub_225EFE6E8(&v414);
        sub_225EFE6E8(&v415);
        sub_225EFE6E8(v416);
        sub_225EFE6E8(&v426);

        v354 = v79;
        v355 = v80;
        v356 = v81;
        v357 = v173;
        return v354;
      }

      v171 = v174;
      v172 = v175;
      v169 = v175;
      v170 = v174;
      v405 = v174;
      v406 = v175;
      v168 = v174 != -1 && v169 > 0;
      if (v168 && v170 < v338)
      {
        v39 = __OFADD__(v170, v169);
        v166 = v170 + v169;
        if (v39)
        {
          goto LABEL_116;
        }

        v165 = v338 >= v166;
      }

      else
      {
        v165 = 0;
      }

      v163 = v170;
      v164 = v169;
      if (v165)
      {
        break;
      }
    }

    v157 = v164;
    v158 = v163;
    v159 = v178;
    v160 = v177;
    v161 = v176;
    for (k = v173; ; k = v153)
    {
      v153 = k;
      v154 = v161;
      v155 = v160;
      v156 = v159;
      v151 = v161 < v158 && v154 < v338;
      v152 = v154;
      v147 = v154;
      v148 = v156;
      v149 = v155;
      v150 = v154;
      if (!v151)
      {
        break;
      }

      sub_226099D38();
      v143 = v395;
      v145 = v396;
      v40 = sub_226099AA8();
      v144 = v41;
      v146 = MEMORY[0x22AA72BD0](v143, v145, v40);

      result = v146;
      if (v146)
      {
        v42 = __OFADD__(v155, 1);
        v142 = v155 + 1;
        if (v42)
        {
          goto LABEL_115;
        }

        v413 = v142;
        v140 = v142;
        v141 = v142;
      }

      else
      {
        v140 = v156;
        v141 = v155;
      }

      result = v140;
      v137 = v141;
      v138 = v140;
      v43 = __OFADD__(v147, 1);
      v139 = v147 + 1;
      if (v43)
      {
        goto LABEL_114;
      }

      v412 = v139;
      v159 = v138;
      v160 = v137;
      v161 = v139;
    }

    result = v149;
    v134 = v150;
    v135 = v149;
    v136 = v148;
    if (v158 < v148)
    {
      v67 = v369;
      v68 = sub_225F4C7E0();
      (*(v367 + 16))(v67, v68, v365);
      v102 = sub_226098C48();
      v99 = v102;
      v101 = sub_22609A098();
      v100 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v103 = sub_22609A4F8();
      if (os_log_type_enabled(v102, v101))
      {
        v69 = v153;
        v89 = sub_22609A188();
        v85 = v89;
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v87 = 0;
        v90 = sub_225EF5468(0);
        v88 = v90;
        v91 = sub_225EF5468(v87);
        v404 = v89;
        v403 = v90;
        v402 = v91;
        v92 = 0;
        v93 = &v404;
        sub_225EF54BC(0, &v404);
        sub_225EF54BC(v92, v93);
        v401[6] = v103;
        v96 = &v78;
        MEMORY[0x28223BE20](&v78, v70, v71, v72);
        v94 = &v78 - 6;
        v74 = v73;
        v75 = &v403;
        v76 = &v402;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v97 = v69;
        v98 = v96;
        if (v69)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v99, v100, "Placeholder count mismatch in span", v85, 2u);
          v83 = 0;
          sub_225EF7AF4(v88);
          sub_225EF7AF4(v91);
          sub_22609A168();

          v84 = v97;
        }
      }

      else
      {

        v84 = v153;
      }

      v82 = v84;

      (*(v367 + 8))(v369, v365);
      v104 = v82;
      goto LABEL_105;
    }

    v44 = __OFADD__(v158, v157);
    v133 = v158 + v157;
    if (v44)
    {
      goto LABEL_111;
    }

    if (v133 < v158)
    {
      LODWORD(v76) = 0;
      v75 = 760;
      LOBYTE(v74) = 2;
      sub_22609A3B8();
      __break(1u);
    }

    v45 = v153;
    v401[1] = sub_226099D28();
    v401[2] = v46;
    v401[3] = v47;
    v401[4] = v48;
    sub_2260998E8();
    v129 = &v78;
    MEMORY[0x28223BE20](&v78, v49, v50, v51);
    v126 = &v74;
    v76 = v362;
    v77 = v52;
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7864A0, &qword_2260A01C0);
    v125 = v127;
    v128 = sub_225F7BC70();
    v53 = sub_22609A2D8();
    v130 = v45;
    v131 = v53;
    v132 = v129;
    if (v45)
    {

      __break(1u);
LABEL_110:

      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      break;
    }

    v115 = v131;

    v401[0] = v115;
    v117 = sub_226099AA8();
    v119 = v54;
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    v116 = v122;
    v118 = sub_225F3F050();
    v120 = v401;
    v123 = sub_2260999C8();
    v121 = v55;

    sub_225EFE6E8(v120);
    v400[5] = v123;
    v400[6] = v121;
    result = sub_226099CE8();
    v56 = __OFADD__(v158, v157);
    v124 = v158 + v157;
    if (v56)
    {
      goto LABEL_112;
    }

    if (v124 < v158)
    {
      LODWORD(v76) = 0;
      v75 = 760;
      LOBYTE(v74) = 2;
      sub_22609A3B8();
      __break(1u);
    }

    v57 = v130;
    v400[1] = sub_226099D28();
    v400[2] = v58;
    v400[3] = v59;
    v400[4] = v60;
    sub_2260998E8();
    v111 = &v78;
    MEMORY[0x28223BE20](&v78, v61, v125, v128);
    v76 = v362;
    v77 = v62;
    v63 = sub_22609A2D8();
    v112 = v57;
    v113 = v63;
    v114 = v111;
    if (v57)
    {
      goto LABEL_110;
    }

    v105 = v113;

    v400[0] = v105;
    sub_226099AA8();
    v106 = v64;
    v107 = v400;
    v109 = sub_2260999C8();
    v108 = v65;

    sub_225EFE6E8(v107);
    v398 = v109;
    v399 = v108;
    result = sub_226099CE8();
    v66 = __OFSUB__(v158, v136);
    v110 = v158 - v136;
    if (!v66)
    {
      v397 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786478, &unk_2260A0DF0);
      sub_226099CE8();
      v104 = v112;
LABEL_105:
      v184 = v136;
      v185 = v135;
      v186 = v134;
      v187 = v104;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
  return result;
}

uint64_t sub_225F563A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = result;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v32 = 0;
  v45 = result;
  v44 = a2;
  v43 = a3;
  v42 = a4;
  v40 = a5;
  v41 = a6;
  v16 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    if (v16 < result)
    {
      sub_22609A3B8();
      __break(1u);
    }

    v35 = v13;
    v36 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786260, &qword_2260A02C8);
    sub_225F7BB14();
    sub_22609A028();
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786468, &unk_2260A0590);
      sub_22609A388();
      if (v34)
      {
        v12 = 0;
        return v12 & 1;
      }

      v32 = v33;
      sub_226099D38();
      v29[0] = v30;
      v29[1] = v31;
      v27 = a5;
      v28 = a6;
      v11 = MEMORY[0x22AA72BD0](v30, v31, a5, a6);
      sub_225EFE6BC(v29);
      sub_2260998E8();
      sub_2260998E8();
      if (v11)
      {
        v10 = 0;
      }

      else
      {
        sub_226099D38();
        v17[0] = v18;
        v17[1] = v19;
        v9 = MEMORY[0x22AA72BD0](v18, v19, a5, a6) ^ 1;
        sub_225EFE6BC(v17);
        v10 = v9;
      }

      sub_2260998E8();
      sub_2260998E8();
      if (v10)
      {
        sub_226099D38();
        v23 = v25;
        v24 = v26;
        sub_226099D38();
        v20[0] = v21;
        v20[1] = v22;
        v7 = MEMORY[0x22AA72BD0](v23, v24, v21, v22) ^ 1;
        sub_225EFE6BC(v20);
        sub_225EFE6BC(&v23);
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    while ((v8 & 1) == 0);
    v12 = 1;
    return v12 & 1;
  }

  return result;
}

uint64_t sub_225F567E0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F56818()
{
  v2 = *(v0 + 48);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_225F56844()
{
  v2 = *(v0 + 56);
  MEMORY[0x277D82BE0]();
  return v2;
}

uint64_t sub_225F56878()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  swift_endAccess();
  return v2;
}

uint64_t sub_225F568DC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
  return swift_endAccess();
}

uint64_t sub_225F569A4()
{
  v2 = *(v0 + 80);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F569F0()
{
  v2 = *(v0 + 104);

  return v2;
}

uint64_t ASRFullPayloadCorrectionWorker.init(taskId:taskName:maxRecords:locales:generateConfusionPairs:calculateAlignmentWithUserEdits:euclidThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9)
{
  v41 = a1;
  v62 = a2;
  v42 = a3;
  v61 = a4;
  v45 = a5;
  v60 = a6;
  v46 = a7;
  v47 = a8;
  v48 = a9;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0.0;
  v65 = 0;
  v59 = 0;
  v39 = (*(*(sub_226099398() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v10, v11, v12);
  v58 = &v38 - v39;
  v53 = sub_226099388();
  v51 = *(v53 - 8);
  v52 = v53 - 8;
  v40 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v62, v13, v42, v61);
  v57 = &v38 - v40;
  v73 = v15;
  v74 = v16;
  v71 = v17;
  v72 = v18;
  v70 = v19;
  v69 = v20;
  v50 = 1;
  v68 = v21 & 1;
  v67 = v22 & 1;
  v66 = v14;
  v65 = v9;
  sub_2260998E8();
  v23 = v62;
  v9[2] = v41;
  v9[3] = v23;
  sub_2260998E8();
  v24 = v61;
  v9[4] = v42;
  v9[5] = v24;
  v9[6] = [objc_opt_self() sharedStream];
  sub_226098C88();
  v25 = sub_226098C78();
  v26 = v63;
  *(v63 + 56) = v25;
  *(v26 + 64) = 0;
  *(v26 + 68) = 0;
  v43 = (v26 + 64);
  v44 = &v64;
  swift_beginAccess();
  mach_timebase_info(v43);
  swift_endAccess();
  *(v26 + 72) = v45;
  sub_2260998E8();
  v27 = v46;
  v28 = v47;
  v29 = v48;
  *(v26 + 80) = v60;
  *(v26 + 88) = v27;
  *(v26 + 89) = v28;
  *(v26 + 96) = v29;
  sub_2260993E8();
  v30 = sub_226098AB8();
  v49 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v31, v32, v33);
  v54 = &v38 - v49;
  sub_226099AA8();
  sub_226098A88();
  v55 = sub_226099AA8();
  v56 = v34;
  (*(v51 + 104))(v57, *MEMORY[0x277CDCC88], v53);
  sub_225F56EB4(v58);
  v35 = sub_2260993B8();
  v36 = v63;
  *(v63 + 104) = v35;
  *(v36 + 112) = sub_22609A4F8();

  return v63;
}

uint64_t sub_225F56EB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CDCC90];
  v1 = sub_226099398();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t ASRFullPayloadCorrectionWorker.__allocating_init(taskId:taskName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2260998E8();
  sub_2260998E8();
  v8 = sub_22609A4F8();
  v7 = v4;
  *v4 = sub_226099AA8();
  v7[1] = v5;
  sub_225EF5418();
  v13 = ASRFullPayloadCorrectionWorker.__allocating_init(taskId:taskName:maxRecords:locales:generateConfusionPairs:calculateAlignmentWithUserEdits:euclidThreshold:)(a1, a2, a3, a4, 10, v8, 1, 1, 1.0);

  return v13;
}

uint64_t sub_225F57040(uint64_t a1, void *a2, uint64_t a3)
{
  v231 = a3;
  v243 = a2;
  v232 = a1;
  v229 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v268 = 0;
  v230 = 0;
  v263 = 0;
  v258 = 0;
  v253 = 0;
  v233 = sub_226098C58();
  v234 = *(v233 - 8);
  v235 = v234;
  v239 = *(v234 + 64);
  MEMORY[0x28223BE20](v232, v243, v231, v233);
  v241 = (v239 + 15) & 0xFFFFFFFFFFFFFFF0;
  v236 = v76 - v241;
  MEMORY[0x28223BE20](v4, v5, v6, v76 - v241);
  v237 = v76 - v241;
  MEMORY[0x28223BE20](v7, v8, v9, v76 - v241);
  v238 = v76 - v241;
  MEMORY[0x28223BE20](v10, v11, v12, v76 - v241);
  v240 = v76 - v241;
  MEMORY[0x28223BE20](v13, v14, v15, v76 - v241);
  v242 = v76 - v241;
  v271 = v16;
  v270 = v17;
  v269 = v18;
  v268 = v3;
  v19 = v17;
  if (v243)
  {
    v227 = v243;
    v225 = v243;
    v263 = v243;
    sub_225F7BCF8();
    v226 = sub_225F26174();
    if (v226)
    {
      v224 = v226;
      v220 = v226;
      v258 = v226;
      v222 = 0;
      sub_225F7BD5C();
      v20 = sub_226098A78();
      v216 = *(v20 - 8);
      v217 = v216;
      v21 = *(v216 + 64);
      v219 = v76;
      v23 = MEMORY[0x28223BE20](v76, v232, v20, v22);
      v218 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v217 + 16))(v23);
      v221 = sub_22603E5E0(v218);
      [v220 setDodMlId_];

      sub_225F7BDC0();
      v223 = sub_225F26174();
      if (v223)
      {
        v215 = v223;
        v214 = v223;
        v253 = v223;
        v25 = v220;
        [v214 setEventMetadata_];

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v26 = v225;
          objc_opt_self();
          v213 = swift_dynamicCastObjCClass();
          if (v213)
          {
            v212 = v213;
          }

          else
          {

            v212 = 0;
          }

          v210 = v212;
          [v214 setFullPayloadCorrectionExperimentContext_];

          v211 = v230;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v27 = v225;
            objc_opt_self();
            v209 = swift_dynamicCastObjCClass();
            if (v209)
            {
              v208 = v209;
            }

            else
            {

              v208 = 0;
            }

            v207 = v208;
            [v214 setFullPayloadCorrectionExperimentTier1_];

            v211 = v230;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v28 = v225;
              objc_opt_self();
              v206 = swift_dynamicCastObjCClass();
              if (v206)
              {
                v205 = v206;
              }

              else
              {

                v205 = 0;
              }

              v204 = v205;
              [v214 setUserEditExperimentContext_];

              v211 = v230;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v29 = v225;
                objc_opt_self();
                v203 = swift_dynamicCastObjCClass();
                if (v203)
                {
                  v202 = v203;
                }

                else
                {

                  v202 = 0;
                }

                v201 = v202;
                [v214 setUserEditExperimentEndedTier1_];

                v211 = v230;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v30 = v225;
                  objc_opt_self();
                  v200 = swift_dynamicCastObjCClass();
                  if (v200)
                  {
                    v199 = v200;
                  }

                  else
                  {

                    v199 = 0;
                  }

                  v198 = v199;
                  [v214 setFullPayloadCorrectionExperimentPostAnalysis_];

                  v211 = v230;
                }

                else
                {
                  v31 = v242;
                  v32 = sub_225F4C7E0();
                  (*(v235 + 16))(v31, v32, v233);
                  v196 = sub_226098C48();
                  v193 = v196;
                  v195 = sub_22609A098();
                  v194 = v195;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
                  v197 = sub_22609A4F8();
                  if (os_log_type_enabled(v196, v195))
                  {
                    v33 = v230;
                    v184 = sub_22609A188();
                    v180 = v184;
                    v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                    v182 = 0;
                    v185 = sub_225EF5468(0);
                    v183 = v185;
                    v186 = sub_225EF5468(v182);
                    v247 = v184;
                    v246 = v185;
                    v245 = v186;
                    v187 = 0;
                    v188 = &v247;
                    sub_225EF54BC(0, &v247);
                    sub_225EF54BC(v187, v188);
                    v244 = v197;
                    v189 = v76;
                    MEMORY[0x28223BE20](v76, v34, v35, v36);
                    v190 = &v76[-6];
                    v76[-4] = v37;
                    v76[-3] = &v246;
                    v76[-2] = &v245;
                    v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
                    sub_225EFE598();
                    sub_226099C28();
                    v192 = v33;
                    if (v33)
                    {
                      __break(1u);
                    }

                    else
                    {
                      _os_log_impl(&dword_225EEB000, v193, v194, "SELF: Failed trying to wrap and emit top-level DODML event because event type was not mapped to loggable message type in the DODML SELF schema.", v180, 2u);
                      v178 = 0;
                      sub_225EF7AF4(v183);
                      sub_225EF7AF4(v186);
                      sub_22609A168();

                      v179 = v192;
                    }
                  }

                  else
                  {

                    v179 = v230;
                  }

                  v177 = v179;

                  (*(v235 + 8))(v242, v233);
                  v211 = v177;
                }
              }
            }
          }
        }

        v38 = v240;
        v158 = v211;
        v39 = sub_225F4C7E0();
        (*(v235 + 16))(v38, v39, v233);
        v40 = v225;
        v165 = 7;
        v166 = swift_allocObject();
        *(v166 + 16) = v225;
        v176 = sub_226098C48();
        v159 = v176;
        v175 = sub_22609A088();
        v160 = v175;
        v161 = 17;
        v169 = swift_allocObject();
        v162 = v169;
        *(v169 + 16) = 64;
        v170 = swift_allocObject();
        v163 = v170;
        *(v170 + 16) = 8;
        v164 = 32;
        v41 = swift_allocObject();
        v42 = v166;
        v167 = v41;
        *(v41 + 16) = sub_225F3E198;
        *(v41 + 24) = v42;
        v43 = swift_allocObject();
        v44 = v167;
        v173 = v43;
        v168 = v43;
        *(v43 + 16) = sub_225F3E1C8;
        *(v43 + 24) = v44;
        v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v171 = sub_22609A4F8();
        v172 = v45;

        v46 = v169;
        v47 = v172;
        *v172 = sub_225EF7434;
        v47[1] = v46;

        v48 = v170;
        v49 = v172;
        v172[2] = sub_225EF7434;
        v49[3] = v48;

        v50 = v172;
        v51 = v173;
        v172[4] = sub_225F3E358;
        v50[5] = v51;
        sub_225EF5418();

        if (os_log_type_enabled(v176, v175))
        {
          v52 = v158;
          v151 = sub_22609A188();
          v148 = v151;
          v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v154 = 1;
          v152 = sub_225EF5468(1);
          v150 = v152;
          v153 = sub_225EF5468(0);
          v252 = v151;
          v251 = v152;
          v250 = v153;
          v155 = &v252;
          sub_225EF54BC(2, &v252);
          sub_225EF54BC(v154, v155);
          v248 = sub_225EF7434;
          v249 = v162;
          sub_225EF73E8(&v248, v155, &v251, &v250);
          v156 = v52;
          v157 = v52;
          if (v52)
          {
            v146 = 0;

            __break(1u);
          }

          else
          {
            v248 = sub_225EF7434;
            v249 = v163;
            sub_225EF73E8(&v248, &v252, &v251, &v250);
            v144 = 0;
            v145 = 0;
            v248 = sub_225F3E358;
            v249 = v168;
            sub_225EF73E8(&v248, &v252, &v251, &v250);
            v142 = 0;
            v143 = 0;
            _os_log_impl(&dword_225EEB000, v159, v160, "SELF: Wrapping and logging an event of type %@", v148, 0xCu);
            sub_225EF7AF4(v150);
            sub_225EF7AF4(v153);
            sub_22609A168();

            v147 = v142;
          }
        }

        else
        {
          v53 = v158;

          v147 = v53;
        }

        v141 = v147;

        (*(v235 + 8))(v240, v233);
        if (v231)
        {
          v140 = *(v228 + 48);
          swift_unknownObjectRetain();
          swift_getObjectType();
          [v140 emitMessage:v214 timestamp:v231];
        }

        else
        {
          v139 = *(v228 + 48);
          swift_unknownObjectRetain();
          swift_getObjectType();
          [v139 emitMessage_];
        }

        swift_unknownObjectRelease();

        return v141;
      }

      else
      {
        v54 = v238;
        v55 = sub_225F4C7E0();
        (*(v235 + 16))(v54, v55, v233);
        v136 = sub_226098C48();
        v133 = v136;
        v135 = sub_22609A098();
        v134 = v135;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v137 = sub_22609A4F8();
        if (os_log_type_enabled(v136, v135))
        {
          v56 = v230;
          v124 = sub_22609A188();
          v120 = v124;
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v122 = 0;
          v125 = sub_225EF5468(0);
          v123 = v125;
          v126 = sub_225EF5468(v122);
          v257 = v124;
          v256 = v125;
          v255 = v126;
          v127 = 0;
          v128 = &v257;
          sub_225EF54BC(0, &v257);
          sub_225EF54BC(v127, v128);
          v254 = v137;
          v129 = v76;
          MEMORY[0x28223BE20](v76, v57, v58, v59);
          v130 = &v76[-6];
          v76[-4] = v60;
          v76[-3] = &v256;
          v76[-2] = &v255;
          v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v132 = v56;
          if (v56)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v133, v134, "Failed to create SELF event", v120, 2u);
            v118 = 0;
            sub_225EF7AF4(v123);
            sub_225EF7AF4(v126);
            sub_22609A168();

            v119 = v132;
          }
        }

        else
        {

          v119 = v230;
        }

        v117 = v119;

        (*(v235 + 8))(v238, v233);
        return v117;
      }
    }

    else
    {
      v61 = v237;
      v62 = sub_225F4C7E0();
      (*(v235 + 16))(v61, v62, v233);
      v115 = sub_226098C48();
      v112 = v115;
      v114 = sub_22609A098();
      v113 = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v116 = sub_22609A4F8();
      if (os_log_type_enabled(v115, v114))
      {
        v63 = v230;
        v103 = sub_22609A188();
        v99 = v103;
        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v101 = 0;
        v104 = sub_225EF5468(0);
        v102 = v104;
        v105 = sub_225EF5468(v101);
        v262 = v103;
        v261 = v104;
        v260 = v105;
        v106 = 0;
        v107 = &v262;
        sub_225EF54BC(0, &v262);
        sub_225EF54BC(v106, v107);
        v259 = v116;
        v108 = v76;
        MEMORY[0x28223BE20](v76, v64, v65, v66);
        v109 = &v76[-6];
        v76[-4] = v67;
        v76[-3] = &v261;
        v76[-2] = &v260;
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v111 = v63;
        if (v63)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v112, v113, "Failed to create SELF event metadata", v99, 2u);
          v97 = 0;
          sub_225EF7AF4(v102);
          sub_225EF7AF4(v105);
          sub_22609A168();

          v98 = v111;
        }
      }

      else
      {

        v98 = v230;
      }

      v96 = v98;

      (*(v235 + 8))(v237, v233);
      return v96;
    }
  }

  else
  {
    v68 = v236;
    v69 = sub_225F4C7E0();
    (*(v235 + 16))(v68, v69, v233);
    v94 = sub_226098C48();
    v91 = v94;
    v93 = sub_22609A098();
    v92 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v95 = sub_22609A4F8();
    if (os_log_type_enabled(v94, v93))
    {
      v70 = v230;
      v82 = sub_22609A188();
      v78 = v82;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v80 = 0;
      v83 = sub_225EF5468(0);
      v81 = v83;
      v84 = sub_225EF5468(v80);
      v267 = v82;
      v266 = v83;
      v265 = v84;
      v85 = 0;
      v86 = &v267;
      sub_225EF54BC(0, &v267);
      sub_225EF54BC(v85, v86);
      v264 = v95;
      v87 = v76;
      MEMORY[0x28223BE20](v76, v71, v72, v73);
      v88 = &v76[-6];
      v76[-4] = v74;
      v76[-3] = &v266;
      v76[-2] = &v265;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v90 = v70;
      if (v70)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v91, v92, "topLevelEvent is nil", v78, 2u);
        v76[1] = 0;
        sub_225EF7AF4(v81);
        sub_225EF7AF4(v84);
        sub_22609A168();

        v77 = v90;
      }
    }

    else
    {

      v77 = v230;
    }

    v76[0] = v77;

    (*(v235 + 8))(v236, v233);
    return v76[0];
  }
}

void sub_225F58E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v44 = a2;
  v45 = a1;
  v46 = 0;
  v54 = 0;
  v51 = 0;
  v50 = 0;
  v57 = a1;
  v56 = a2;
  v55 = a3;
  sub_225F7BE24();
  v47 = sub_225F26174();
  v53 = v47;
  sub_225F7BE88();
  v49 = sub_225F26174();
  v48 = v49;
  v52 = v49;
  v3 = v49;
  if (v49)
  {
    v42 = v48;
    v41 = v48;
    [v48 setStartedOrChanged_];
  }

  sub_225F7BEEC();
  v40 = sub_225F26174();
  v39 = v40;
  v51 = v40;
  v4 = v40;
  if (v40)
  {
    v38 = v39;
    v37 = v39;
    [v39 setFullPayloadCorrectionContext_];
  }

  v35 = sub_226098A78();
  v25 = v35;
  v26 = *(v35 - 8);
  v34 = v26;
  v27 = v26;
  v28 = *(v26 + 64);
  v29 = &v17;
  MEMORY[0x28223BE20](&v17, v35, v5, v6);
  v30 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v30;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v31 = &v17;
  v32 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43, &v17, v9, v10);
  v36 = &v17 - v32;
  v33 = &v17 - v32;
  sub_225F7BF50(v11, &v17 - v32);
  if ((*(v34 + 48))(v36, 1, v35) == 1)
  {
    sub_225F7C078(v33);
  }

  else
  {
    (*(v27 + 32))(v30, v33, v25);
    v12 = v39;
    if (v39)
    {
      v24 = v39;
      v23 = v39;
      sub_225F7BD5C();
      v21 = &v17;
      v14 = MEMORY[0x28223BE20](&v17, v30, v25, v13);
      v20 = &v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v14);
      v22 = sub_22603E5E0(v20);
      [v23 setOriginalAsrId_];
    }

    (*(v27 + 8))(v30, v25);
  }

  v16 = v39;
  if (v39)
  {
    v19 = v39;
    v18 = v39;
  }

  else
  {
    v18 = 0;
  }

  v17 = v18;
  sub_225F57040(v45, v18, v44);
}

void sub_225F59320(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v112 = a6;
  v113 = a4;
  v114 = a3;
  v115 = a2;
  v116 = a1;
  v117 = 0;
  v130 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v118 = a5;
  v136 = a1;
  v135 = a2;
  v134 = a3;
  v132 = a4;
  v133 = a5 & 1;
  v131 = a6;
  sub_225F7C120();
  v120 = sub_225F26174();
  v119 = v120;
  v129 = v120;
  v6 = v120;
  if (v120)
  {
    v111 = v119;
    v110 = v119;
    [v119 setErrorType_];
  }

  v7 = v114;
  v128 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  if (swift_dynamicCast())
  {
    v109 = v127[1];
  }

  else
  {
    v109 = 4;
  }

  v107 = v109;
  v108 = v127;
  v126 = v109;
  v127[0] = 3;
  if (v109 != 4)
  {
    v121 = v107;
    if (*v108 != 4)
    {
      v106 = sub_225F4C84C(v121, *v108);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (*v108 != 4)
  {
LABEL_14:
    v106 = 0;
    goto LABEL_12;
  }

  v106 = 1;
LABEL_12:
  if (v106)
  {
    v8 = v119;
    if (v119)
    {
      v105 = v119;
      v104 = v119;
      [v119 setErrorType_];
    }
  }

  else
  {
    v9 = v114;
    v98 = sub_2260988D8();
    v102 = [v98 domain];
    v99 = sub_226099A08();
    v101 = v10;

    v11 = sub_226099AA8();
    v100 = v12;
    v103 = MEMORY[0x22AA72BD0](v99, v101, v11);

    if (v103)
    {
      v13 = v114;
      v95 = sub_2260988D8();
      v97 = [v95 code];
      v96 = v97;

      if (v97 == 1)
      {
        v14 = v119;
        if (v119)
        {
          v94 = v119;
          v93 = v119;
          [v119 setErrorType_];
        }
      }

      else if (v96 == 2)
      {
        v15 = v119;
        if (v119)
        {
          v92 = v119;
          v91 = v119;
          [v119 setErrorType_];
        }
      }

      else if (v96 == 3)
      {
        v16 = v119;
        if (v119)
        {
          v90 = v119;
          v89 = v119;
          [v119 setErrorType_];
        }
      }

      else if (v96 == 7)
      {
        v17 = v119;
        if (v119)
        {
          v88 = v119;
          v87 = v119;
          [v119 setErrorType_];
        }
      }

      else if (v96 == 8)
      {
        v18 = v119;
        if (v119)
        {
          v86 = v119;
          v85 = v119;
          [v119 setErrorType_];
        }
      }

      else if (v96 == 9)
      {
        v19 = v119;
        if (v119)
        {
          v84 = v119;
          v83 = v119;
          [v119 setErrorType_];
        }
      }

      else if (v96 == 19)
      {
        v20 = v119;
        if (v119)
        {
          v82 = v119;
          v81 = v119;
          [v119 setErrorType_];
        }
      }

      else if (v96 == 24)
      {
        v21 = v119;
        if (v119)
        {
          v80 = v119;
          v79 = v119;
          [v119 setErrorType_];
        }
      }

      else if (v96 == 32)
      {
        v22 = v119;
        if (v119)
        {
          v78 = v119;
          v77 = v119;
          [v119 setErrorType_];
        }
      }

      else if (v96 == 34)
      {
        v23 = v119;
        if (v119)
        {
          v76 = v119;
          v75 = v119;
          [v119 setErrorType_];
        }
      }

      else
      {
        v24 = v119;
        if (v119)
        {
          v74 = v119;
          v73 = v119;
          [v119 setErrorType_];
        }
      }
    }
  }

  if ((v118 & 1) == 0)
  {
    v72 = v113;
    v71 = v113;
    v122 = v113;
    v25 = v119;
    if (v119)
    {
      v70 = v119;
      v69 = v119;
      [v119 setResponseTimeInNs_];
    }
  }

  sub_225F7BE88();
  v68 = sub_225F26174();
  v67 = v68;
  v125 = v68;
  v26 = v68;
  if (v68)
  {
    v66 = v67;
    v65 = v67;
    [v67 setFailed_];
  }

  sub_225F7BEEC();
  v64 = sub_225F26174();
  v63 = v64;
  v124 = v64;
  v27 = v64;
  if (v64)
  {
    v62 = v63;
    v61 = v63;
    [v63 setFullPayloadCorrectionContext_];
  }

  v59 = sub_226098A78();
  v49 = v59;
  v50 = *(v59 - 8);
  v58 = v50;
  v51 = v50;
  v52 = *(v50 + 64);
  v53 = &v40;
  MEMORY[0x28223BE20](&v40, v59, v28, v29);
  v54 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v54;
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v55 = &v40;
  v56 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112, &v40, v32, v33);
  v60 = &v40 - v56;
  v57 = &v40 - v56;
  sub_225F7BF50(v34, &v40 - v56);
  if ((*(v58 + 48))(v60, 1, v59) == 1)
  {
    sub_225F7C078(v57);
  }

  else
  {
    (*(v51 + 32))(v54, v57, v49);
    v35 = v63;
    if (v63)
    {
      v48 = v63;
      v47 = v63;
      sub_225F7BD5C();
      v45 = &v40;
      v37 = MEMORY[0x28223BE20](&v40, v54, v49, v36);
      v44 = &v40 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v51 + 16))(v37);
      v46 = sub_22603E5E0(v44);
      [v47 setOriginalAsrId_];
    }

    (*(v51 + 8))(v54, v49);
  }

  v39 = v63;
  if (v63)
  {
    v43 = v63;
    v42 = v63;
  }

  else
  {
    v42 = 0;
  }

  v41 = v42;
  sub_225F57040(v116, v42, v115);
}

void sub_225F5A138(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v85 = a8;
  v86 = a7;
  v87 = a6;
  v88 = a5;
  v101 = a4;
  v89 = a3;
  v90 = a2;
  v91 = a1;
  v92 = a9;
  v94 = 0;
  v113 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v122 = a1;
  v121 = a2;
  v119 = a3;
  v120 = a4 & 1;
  v117 = a5;
  v118 = a6;
  v115 = a7;
  v116 = a8;
  v114 = a9;
  sub_225F7C184();
  v93 = sub_225F26174();
  v112 = v93;
  v95 = sub_225F7BD5C();
  v96 = sub_226098A78();
  v97 = *(v96 - 8);
  v98 = v97;
  v99 = *(v97 + 64);
  MEMORY[0x28223BE20](v96 - 8, v96, v9, v10);
  v100 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226098A68();
  v102 = sub_22603E5E0(v100);
  v111 = v102;
  if ((v101 & 1) == 0)
  {
    v84 = v89;
    v83 = v89;
    v103 = v89;
    v12 = v93;
    if (v93)
    {
      v82 = v93;
      v81 = v93;
      [v93 setResponseTimeInNs_];
    }
  }

  v13 = v93;
  if (v93)
  {
    v80 = v93;
    v79 = v93;
    v14 = v102;
    [v79 setLinkId_];
  }

  sub_225F7BE88();
  v78 = sub_225F26174();
  v77 = v78;
  v110 = v78;
  v15 = v78;
  if (v78)
  {
    v76 = v77;
    v75 = v77;
    [v77 setEnded_];
  }

  sub_225F7BEEC();
  v74 = sub_225F26174();
  v73 = v74;
  v109 = v74;
  v16 = v74;
  if (v74)
  {
    v72 = v73;
    v71 = v73;
    [v73 setFullPayloadCorrectionContext_];
  }

  v65 = &v36;
  MEMORY[0x28223BE20](&v36, v17, v18, v19);
  v66 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v66;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v67 = &v36;
  v68 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v92, &v36, v22, v23);
  v70 = &v36 - v68;
  v69 = &v36 - v68;
  sub_225F7BF50(v24, &v36 - v68);
  if ((*(v98 + 48))(v70, 1, v96) == 1)
  {
    sub_225F7C078(v69);
  }

  else
  {
    (*(v98 + 32))(v66, v69, v96);
    v25 = v73;
    if (v73)
    {
      v64 = v73;
      v63 = v73;
      v61 = &v36;
      v27 = MEMORY[0x28223BE20](&v36, v66, v96, v26);
      v60 = &v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v98 + 16))(v27);
      v62 = sub_22603E5E0(v60);
      [v63 setOriginalAsrId_];
    }

    (*(v98 + 8))(v66, v96);
  }

  v29 = v73;
  if (v73)
  {
    v59 = v73;
    v58 = v73;
  }

  else
  {
    v58 = 0;
  }

  v55 = v58;
  sub_225F57040(v91, v58, v90);

  sub_225F7C1E8();
  v57 = sub_225F26174();
  v56 = v57;
  v107 = v57;
  v30 = v57;
  if (v57)
  {
    v54 = v56;
    v53 = v56;
    sub_2260998E8();
    v52 = sub_2260999F8();

    [v53 setFullPayloadCorrectorInput_];
  }

  sub_2260998E8();
  if (v85)
  {
    v50 = v86;
    v51 = v85;
    v48 = v85;
    v49 = v86;
    v104 = v86;
    v105 = v85;
    v31 = v56;
    if (v56)
    {
      v47 = v56;
      v46 = v56;
      sub_2260998E8();
      v45 = sub_2260999F8();

      [v46 setFullPayloadCorrectorOutput_];
    }
  }

  v32 = v56;
  if (v56)
  {
    v44 = v56;
    v43 = v56;
    v33 = v102;
    [v43 setLinkId_];
  }

  sub_225F7C24C();
  v42 = sub_225F26174();
  v41 = v42;
  v106 = v42;
  v34 = v42;
  if (v42)
  {
    v40 = v41;
    v39 = v41;
    [v41 setInfoTier1_];
  }

  v35 = v41;
  if (v41)
  {
    v38 = v41;
    v37 = v41;
  }

  else
  {
    v37 = 0;
  }

  v36 = v37;
  sub_225F57040(v91, v37, v90);
}

unint64_t sub_225F5AC0C(unint64_t a1)
{
  v80 = a1;
  v72 = 0;
  v65 = sub_225F2CE08;
  v66 = sub_225F4C3B4;
  v67 = sub_225EF7B84;
  v68 = sub_225EF7434;
  v69 = sub_225EF7434;
  v70 = sub_225EF7B90;
  v95 = 0;
  v94 = 0;
  v89 = 0.0;
  v87 = 0;
  v71 = 0;
  v73 = sub_226098C58();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v80, v2, v3, 0);
  v77 = v32 - v76;
  v95 = v4;
  v94 = v1;
  v78 = &v93;
  swift_beginAccess();
  v79 = *(v1 + 64);
  swift_endAccess();
  result = v80;
  v81 = v80 * v79;
  if (is_mul_ok(v80, v79))
  {
    v6 = v77;
    v40 = &v92;
    v92 = v81;
    sub_225F7C2B0();
    sub_226099EC8();
    v44 = v7;
    v41 = &v91;
    v52 = 32;
    swift_beginAccess();
    v42 = *(v64 + 68);
    swift_endAccess();
    v43 = &v90;
    v90 = v42;
    sub_225EF92C0();
    sub_226099EC8();
    v45 = v44 / v8;
    v89 = v44 / v8;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786328, &unk_2260A05C0);
    v47 = sub_22609A4F8();
    v46 = v9;
    v10 = sub_226099AA8();
    v11 = v45;
    v12 = v46;
    *v46 = v10;
    v12[1] = v13;
    v88 = v11;
    v14 = sub_226099BD8();
    v15 = v46;
    v46[2] = v14;
    v15[3] = v16;
    sub_225EF5418();
    v49 = sub_2260998A8();
    v87 = v49;
    v17 = sub_225F4C7E0();
    (*(v74 + 16))(v6, v17, v73);
    sub_2260998E8();
    v53 = 7;
    v50 = swift_allocObject();
    *(v50 + 16) = v49;

    v18 = swift_allocObject();
    v19 = v50;
    v54 = v18;
    *(v18 + 16) = v65;
    *(v18 + 24) = v19;

    v62 = sub_226098C48();
    v63 = sub_22609A078();
    v51 = 17;
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v20 = swift_allocObject();
    v21 = v54;
    v55 = v20;
    *(v20 + 16) = v66;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v55;
    v59 = v22;
    *(v22 + 16) = v67;
    *(v22 + 24) = v23;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v58 = sub_22609A4F8();
    v60 = v24;

    v25 = v56;
    v26 = v60;
    *v60 = v68;
    v26[1] = v25;

    v27 = v57;
    v28 = v60;
    v60[2] = v69;
    v28[3] = v27;

    v29 = v59;
    v30 = v60;
    v60[4] = v70;
    v30[5] = v29;
    sub_225EF5418();

    if (os_log_type_enabled(v62, v63))
    {
      v31 = v71;
      v33 = sub_22609A188();
      v32[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v34 = sub_225EF5468(0);
      v35 = sub_225EF5468(1);
      v36 = &v86;
      v86 = v33;
      v37 = &v85;
      v85 = v34;
      v38 = &v84;
      v84 = v35;
      sub_225EF54BC(2, &v86);
      sub_225EF54BC(1, v36);
      v82 = v68;
      v83 = v56;
      sub_225EF73E8(&v82, v36, v37, v38);
      v39 = v31;
      if (v31)
      {

        __break(1u);
      }

      else
      {
        v82 = v69;
        v83 = v57;
        sub_225EF73E8(&v82, &v86, &v85, &v84);
        v32[0] = 0;
        v82 = v70;
        v83 = v59;
        sub_225EF73E8(&v82, &v86, &v85, &v84);
        _os_log_impl(&dword_225EEB000, v62, v63, "FullPayloadCorrector::loggingInfo %s", v33, 0xCu);
        sub_225EF7AF4(v34);
        sub_225EF7AF4(v35);
        sub_22609A168();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v62);
    (*(v74 + 8))(v77, v73);
    return v49;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225F5B548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[56] = v3;
  v4[55] = a3;
  v4[54] = a2;
  v4[53] = a1;
  v4[33] = v4;
  v4[34] = 0;
  v4[35] = 0;
  v4[36] = 0;
  v4[37] = 0;
  v4[38] = 0;
  v4[39] = 0;
  v4[40] = 0;
  memset(v4 + 2, 0, 0x30uLL);
  v4[43] = 0;
  v4[21] = 0;
  v4[22] = 0;
  v4[23] = 0;
  v4[24] = 0;
  v4[44] = 0;
  v5 = sub_226098C58();
  v4[57] = v5;
  v8 = *(v5 - 8);
  v4[58] = v8;
  v9 = *(v8 + 64);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = a3;
  v4[37] = v3;
  v6 = v4[33];

  return MEMORY[0x2822009F8](sub_225F5B6F0, 0, 0);
}

uint64_t sub_225F5B6F0()
{
  v29 = v0[55];
  v30 = v0[53];
  v0[33] = v0;
  v0[38] = sub_22609A4F8();
  v0[39] = sub_22609A4F8();
  v0[40] = sub_22609A4F8();
  v31 = sub_226099CD8();
  if (v31 == sub_226099CD8())
  {
    v1 = v28[54];
    v28[41] = v28[53];
    v28[42] = v1;
    v28[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    sub_225F3006C();
    sub_22609A538();
    v2 = v28[16];
    v28[17] = v28[15];
    v28[18] = v2;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786528, &qword_2260A05D8);
    v3 = sub_225F7C328();
    MEMORY[0x22AA72D20](v22, v3);
    sub_225F7C3B0(v28 + 17);
    v4 = v28[14];
    v28[19] = v28[13];
    v28[20] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786538, &qword_2260A05E0);
    sub_22609A3F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786540, &qword_2260A05E8);
    sub_22609A408();
    v23 = v28[8];
    v28[62] = v23;
    v24 = v28[9];
    v28[63] = v24;
    v25 = v28[10];
    v28[64] = v25;
    v26 = v28[11];
    v28[65] = v26;
    v27 = v28[12];
    v28[66] = v27;
    if (v25)
    {
      v5 = v28[56];
      v28[43] = v23;
      v28[21] = v24;
      v28[22] = v25;
      v28[23] = v26;
      v28[24] = v27;
      v28[67] = *(v5 + 104);

      v6 = *(MEMORY[0x277CDCCA0] + 4);
      v7 = swift_task_alloc();
      v28[68] = v7;
      *v7 = v28[33];
      v7[1] = sub_225F5BC38;

      return MEMORY[0x28212BFE8](v24, v25, v26, v27);
    }

    sub_225F7C3E8(v28 + 2);
    v16 = v28[38];
    sub_2260998E8();
    v17 = v28[39];
    sub_2260998E8();
    v18 = v28[40];
    sub_2260998E8();
    sub_225EFE6E8(v28 + 40);
    sub_225EFE6E8(v28 + 39);
    sub_225EFE6E8(v28 + 38);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    v15 = v28[55];
    v14 = v28[54];
    v8 = v28[53];
    sub_2260998E8();
    sub_2260998E8();
    sub_2260998E8();
    sub_225EFE6E8(v28 + 40);
    sub_225EFE6E8(v28 + 39);
    sub_225EFE6E8(v28 + 38);
    v19 = v28[53];
    v20 = v28[54];
    v21 = v28[55];
  }

  v9 = v28[60];
  v13 = v28[59];

  v10 = *(v28[33] + 8);
  v11 = v28[33];

  return v10(v19, v20, v21);
}

uint64_t sub_225F5BC38(double a1)
{
  v11 = *v2;
  v9 = *v2 + 16;
  v10 = (v11 + 264);
  v3 = *(*v2 + 544);
  *(v11 + 264) = *v2;
  *(v11 + 552) = a1;
  *(v11 + 560) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_225F5CF7C;
  }

  else
  {
    v4 = *(v9 + 520);

    v5 = *v10;
    v6 = sub_225F5BDBC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_225F5BDBC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 448);
  *(v0 + 264) = v0;
  *(v0 + 352) = v1;
  if (v1 < *(v2 + 96))
  {
    v56 = *(v70 + 496);
    v6 = *(v70 + 480);
    v55 = *(v70 + 456);
    v54 = *(v70 + 464);
    v7 = sub_225F4C7E0();
    (*(v54 + 16))(v6, v7, v55);
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    v63 = sub_226098C48();
    v64 = sub_22609A078();
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_225F2D734;
    *(v58 + 24) = v57;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_225F2D374;
    *(v61 + 24) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v62 = v8;

    *v62 = sub_225EF7434;
    v62[1] = v59;

    v62[2] = sub_225EF7434;
    v62[3] = v60;

    v62[4] = sub_225EF71D0;
    v62[5] = v61;
    sub_225EF5418();

    if (os_log_type_enabled(v63, v64))
    {
      v9 = *(v70 + 560);
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v52 = sub_225EF5468(0);
      v53 = sub_225EF5468(0);
      *(v70 + 400) = buf;
      *(v70 + 408) = v52;
      *(v70 + 416) = v53;
      sub_225EF54BC(0, (v70 + 400));
      sub_225EF54BC(1, (v70 + 400));
      *(v70 + 248) = sub_225EF7434;
      *(v70 + 256) = v59;
      sub_225EF73E8(v70 + 248, v70 + 400, v70 + 408, v70 + 416);
      if (v9)
      {
        goto LABEL_16;
      }

      *(v70 + 248) = sub_225EF7434;
      *(v70 + 256) = v60;
      sub_225EF73E8(v70 + 248, v70 + 400, v70 + 408, v70 + 416);
      *(v70 + 248) = sub_225EF71D0;
      *(v70 + 256) = v61;
      sub_225EF73E8(v70 + 248, v70 + 400, v70 + 408, v70 + 416);
      _os_log_impl(&dword_225EEB000, v63, v64, "Confusion pair accepted at index %ld", buf, 0xCu);
      sub_225EF7AF4(v52);
      sub_225EF7AF4(v53);
      sub_22609A168();
    }

    else
    {
    }

    v46 = *(v70 + 520);
    v44 = *(v70 + 504);
    v49 = *(v70 + 496);
    v48 = *(v70 + 488);
    v42 = *(v70 + 480);
    v43 = *(v70 + 456);
    v50 = *(v70 + 440);
    v47 = *(v70 + 528);
    v45 = *(v70 + 512);
    v41 = *(v70 + 464);
    MEMORY[0x277D82BD8](v63);
    (*(v41 + 8))(v42, v43);
    sub_2260998E8();
    *(v70 + 216) = v44;
    *(v70 + 224) = v45;
    sub_226099CE8();
    sub_2260998E8();
    *(v70 + 232) = v46;
    *(v70 + 240) = v47;
    sub_226099CE8();
    sub_226099D38();
    *(v70 + 392) = *(v70 + 384);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786478, &unk_2260A0DF0);
    sub_226099CE8();
    goto LABEL_18;
  }

  v32 = *(v70 + 496);
  v10 = *(v70 + 472);
  v31 = *(v70 + 456);
  v30 = *(v70 + 464);
  v11 = sub_225F4C7E0();
  (*(v30 + 16))(v10, v11, v31);
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  oslog = sub_226098C48();
  v40 = sub_22609A078();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_225F2D734;
  *(v34 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_225F2D374;
  *(v37 + 24) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v38 = v12;

  *v38 = sub_225EF7434;
  v38[1] = v35;

  v38[2] = sub_225EF7434;
  v38[3] = v36;

  v38[4] = sub_225EF71D0;
  v38[5] = v37;
  sub_225EF5418();

  if (!os_log_type_enabled(oslog, v40))
  {

    goto LABEL_17;
  }

  v13 = *(v70 + 560);
  v27 = sub_22609A188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
  v28 = sub_225EF5468(0);
  v29 = sub_225EF5468(0);
  *(v70 + 360) = v27;
  *(v70 + 368) = v28;
  *(v70 + 376) = v29;
  sub_225EF54BC(0, (v70 + 360));
  sub_225EF54BC(1, (v70 + 360));
  *(v70 + 200) = sub_225EF7434;
  *(v70 + 208) = v35;
  sub_225EF73E8(v70 + 200, v70 + 360, v70 + 368, v70 + 376);
  if (v13)
  {
LABEL_16:
  }

  *(v70 + 200) = sub_225EF7434;
  *(v70 + 208) = v36;
  sub_225EF73E8(v70 + 200, v70 + 360, v70 + 368, v70 + 376);
  *(v70 + 200) = sub_225EF71D0;
  *(v70 + 208) = v37;
  sub_225EF73E8(v70 + 200, v70 + 360, v70 + 368, v70 + 376);
  _os_log_impl(&dword_225EEB000, oslog, v40, "Confusion pair rejected at index %ld", v27, 0xCu);
  sub_225EF7AF4(v28);
  sub_225EF7AF4(v29);
  sub_22609A168();

LABEL_17:
  v25 = *(v70 + 472);
  v26 = *(v70 + 456);
  v24 = *(v70 + 464);
  MEMORY[0x277D82BD8](oslog);
  (*(v24 + 8))(v25, v26);
LABEL_18:
  v14 = *(v70 + 528);
  v23 = *(v70 + 512);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786540, &qword_2260A05E8);
  sub_22609A408();
  v67 = *(v70 + 64);
  *(v70 + 496) = v67;
  v69 = *(v70 + 72);
  *(v70 + 504) = v69;
  v65 = *(v70 + 80);
  *(v70 + 512) = v65;
  v68 = *(v70 + 88);
  *(v70 + 520) = v68;
  v66 = *(v70 + 96);
  *(v70 + 528) = v66;
  if (v65)
  {
    v3 = *(v70 + 448);
    *(v70 + 344) = v67;
    *(v70 + 168) = v69;
    *(v70 + 176) = v65;
    *(v70 + 184) = v68;
    *(v70 + 192) = v66;
    *(v70 + 536) = *(v3 + 104);

    v4 = *(MEMORY[0x277CDCCA0] + 4);
    v5 = swift_task_alloc();
    *(v70 + 544) = v5;
    *v5 = *(v70 + 264);
    v5[1] = sub_225F5BC38;

    return MEMORY[0x28212BFE8](v69, v65, v68, v66);
  }

  else
  {
    sub_225F7C3E8((v70 + 16));
    v20 = *(v70 + 304);
    sub_2260998E8();
    v21 = *(v70 + 312);
    sub_2260998E8();
    v22 = *(v70 + 320);
    sub_2260998E8();
    sub_225EFE6E8((v70 + 320));
    sub_225EFE6E8((v70 + 312));
    sub_225EFE6E8((v70 + 304));
    v15 = *(v70 + 480);
    v19 = *(v70 + 472);

    v16 = *(*(v70 + 264) + 8);
    v17 = *(v70 + 264);

    return v16(v20, v21, v22);
  }
}

uint64_t sub_225F5CF7C()
{
  v1 = v0[67];
  v6 = v0[66];
  v7 = v0[64];
  v8 = v0[60];
  v9 = v0[59];
  v0[33] = v0;

  sub_225F7C3E8(v0 + 2);
  sub_225EFE6E8(v0 + 40);
  sub_225EFE6E8(v0 + 39);
  sub_225EFE6E8(v0 + 38);

  v2 = *(*(v10 + 264) + 8);
  v3 = *(v10 + 264);
  v4 = *(v10 + 560);

  return v2();
}

uint64_t sub_225F5D098(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v207 = a3;
  v210 = a2;
  v209 = a1;
  v204 = a3;
  v205 = 0;
  v272 = 0;
  v271 = 0;
  v208 = 0;
  v270 = 0;
  v269 = 0;
  v268 = 0;
  v206 = 0;
  v257 = 0;
  v256 = 0;
  v255 = 0;
  v254 = 0;
  v253 = 0;
  v252 = 0;
  v251 = 0;
  v250 = 0;
  v249[1] = 0;
  v249[0] = 0;
  v246 = 0;
  v241 = 0;
  v236 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v222 = 0;
  v218 = 0;
  v211 = sub_226098C58();
  v212 = *(v211 - 8);
  v213 = v212;
  v214 = *(v212 + 64);
  MEMORY[0x28223BE20](v209, v210, v207, v211);
  v215 = v42 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = v4;
  v271 = v5;
  v270 = v6;
  v269 = v3;
  v268 = v7;
  v216 = [objc_opt_self() sharedConnection];
  if (v216)
  {
    v203 = v216;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v200 = v203;
  v198 = *MEMORY[0x277D25E50];
  v8 = v198;
  sub_226099A08();
  v197 = v9;
  v199 = sub_2260999F8();

  v201 = [v200 effectiveBoolValueForSetting_];
  v267 = v201;
  v266 = 1;
  v202 = type metadata accessor for MCRestrictedBoolType();
  sub_225F7C420();
  v268 = sub_22609A508() & 1;
  if (!v268)
  {
    v35 = v215;
    v36 = sub_225F4C7E0();
    (*(v213 + 16))(v35, v36, v211);
    v60 = sub_226098C48();
    v57 = v60;
    v59 = sub_22609A078();
    v58 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v61 = sub_22609A4F8();
    if (os_log_type_enabled(v60, v59))
    {
      v37 = v206;
      v48 = sub_22609A188();
      v44 = v48;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v46 = 0;
      v49 = sub_225EF5468(0);
      v47 = v49;
      v50 = sub_225EF5468(v46);
      v265 = v48;
      v264 = v49;
      v263 = v50;
      v51 = 0;
      v52 = &v265;
      sub_225EF54BC(0, &v265);
      sub_225EF54BC(v51, v52);
      v262 = v61;
      v53 = v42;
      MEMORY[0x28223BE20](v42, v38, v39, v40);
      v54 = &v42[-6];
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v56 = v37;
      if (v37)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v57, v58, "FullPayloadCorrector::Confusion pair logging disabled", v44, 2u);
        v42[1] = 0;
        sub_225EF7AF4(v47);
        sub_225EF7AF4(v50);
        sub_22609A168();

        v43 = v56;
      }
    }

    else
    {

      v43 = v206;
    }

    v42[0] = v43;

    (*(v213 + 8))(v215, v211);
    return v42[0];
  }

  v258[0] = sub_226099AA8();
  v258[1] = v10;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
  v196 = v258;
  sub_226099938();
  sub_225EFE6BC(v196);
  if (*(&v260 + 1) == 1)
  {
    sub_225F7C4A0(&v259);
  }

  else
  {
    v261[1] = v260;
    v261[0] = v259;
    if (*(&v260 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786588, &qword_2260A0600);
      if (swift_dynamicCast())
      {
        v194 = v217;
      }

      else
      {
        v194 = 0;
      }

      v193 = v194;
      goto LABEL_13;
    }

    sub_225F186BC(v261);
  }

  v193 = 0;
LABEL_13:
  v192 = v193;
  v257 = v193;
  sub_2260998E8();
  if (!v192)
  {

    return v206;
  }

  v191 = v192;
  v190 = v192;
  v256 = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786558, &qword_2260A05F8);
  if (sub_226099CD8() < 1)
  {

    return v206;
  }

  v186 = 0;
  v185 = sub_225F7C4F4();
  v189 = sub_225F26174();
  v187 = v189;
  v255 = v189;
  sub_225F7C558();
  v188 = sub_225F26174();
  v254 = v188;
  v11 = v189;
  if (v189)
  {
    v184 = v187;
    v183 = v187;
    [v187 setStartedOrChanged_];
  }

  v182 = sub_225F26174();
  v177 = v182;
  v253 = v182;
  v178 = 0;
  sub_225F7C5BC();
  v179 = sub_225F26174();
  v252 = v179;
  v180 = sub_225F7C620();
  v181 = sub_225F26174();
  v251 = v181;
  v12 = v182;
  if (v182)
  {
    v176 = v177;
    v175 = v177;
    [v177 setEnded_];
  }

  v13 = v181;
  if (v181)
  {
    v174 = v181;
    v173 = v181;
    v218 = v181;
    v14 = v179;
    if (v179)
    {
      v172 = v179;
      v171 = v179;
      v168 = sub_22609A4F8();
      v167 = v15;
      v16 = v173;
      v17 = v168;
      *v167 = v173;
      sub_225EF5418();
      v169 = v17;
      v170 = sub_226099C78();

      [v171 setRedecodingResults_];
    }
  }

  v18 = v181;
  if (v181)
  {
    v166 = v181;
    v165 = v181;
    v161 = 0;
    v162 = sub_225F7C770();
    v163 = sub_22609A4F8();
    v164 = sub_226099C78();

    [v165 setConfusionPairs_];
  }

  sub_225F7C684();
  v160 = sub_225F26174();
  v159 = v160;
  v250 = v160;
  v19 = v160;
  if (v160)
  {
    v158 = v159;
    v157 = v159;
    v153 = 0;
    v154 = sub_225F7C7D4();
    v155 = sub_22609A4F8();
    v156 = sub_226099C78();

    [v157 setConfusionPairs_];
  }

  sub_2260998E8();
  v248 = v190;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786588, &qword_2260A0600);
  sub_225F7C6E8();
  sub_22609A028();
  for (i = v206; ; i = v149)
  {
    v149 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786598, &qword_2260A0608);
    sub_22609A388();
    v150 = v247;
    if (!v247)
    {
      break;
    }

    v148 = v150;
    v146 = v150;
    v246 = v150;
    v242[0] = sub_226099AA8();
    v242[1] = v20;
    v147 = v242;
    sub_226099938();
    sub_225EFE6BC(v147);
    if (*(&v244 + 1) == 1)
    {
      sub_225F7C4A0(&v243);
LABEL_114:
      v144 = 0;
      goto LABEL_40;
    }

    v245[1] = v244;
    v245[0] = v243;
    if (!*(&v244 + 1))
    {
      sub_225F186BC(v245);
      goto LABEL_114;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    if (swift_dynamicCast())
    {
      v145 = v219;
    }

    else
    {
      v145 = 0;
    }

    v144 = v145;
LABEL_40:
    v142 = v144;
    v241 = v144;
    v237[0] = sub_226099AA8();
    v237[1] = v21;
    v143 = v237;
    sub_226099938();
    sub_225EFE6BC(v143);
    if (*(&v239 + 1) == 1)
    {
      sub_225F7C4A0(&v238);
LABEL_113:
      v140 = 0;
      goto LABEL_48;
    }

    v240[1] = v239;
    v240[0] = v238;
    if (!*(&v239 + 1))
    {
      sub_225F186BC(v240);
      goto LABEL_113;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    if (swift_dynamicCast())
    {
      v141 = v220;
    }

    else
    {
      v141 = 0;
    }

    v140 = v141;
LABEL_48:
    v138 = v140;
    v236 = v140;
    v232[0] = sub_226099AA8();
    v232[1] = v22;
    v139 = v232;
    sub_226099938();
    sub_225EFE6BC(v139);
    if (*(&v234 + 1) == 1)
    {
      sub_225F7C4A0(&v233);
LABEL_112:
      v134 = 0;
      v135 = 1;
      goto LABEL_56;
    }

    v235[1] = v234;
    v235[0] = v233;
    if (!*(&v234 + 1))
    {
      sub_225F186BC(v235);
      goto LABEL_112;
    }

    if (swift_dynamicCast())
    {
      v136 = v221;
      v137 = 0;
    }

    else
    {
      v136 = 0;
      v137 = 1;
    }

    v134 = v136;
    v135 = v137;
LABEL_56:
    v132 = v135;
    v133 = v134;
    v230 = v134;
    v231 = v135 & 1;
    sub_2260998E8();
    if (!v142)
    {
      goto LABEL_110;
    }

    v131 = v142;
    v130 = v142;
    v229 = v142;
    sub_2260998E8();
    if (!v138)
    {

LABEL_110:

      continue;
    }

    v129 = v138;
    v127 = v138;
    v228 = v138;
    v128 = sub_226099CD8();
    sub_2260998E8();
    v126 = v128 >= 1 || sub_226099CD8() > 0;
    v125 = v126;

    if (v125 && (v123 = sub_225F7C770(), (v124 = sub_225F26174()) != 0))
    {
      v122 = v124;
      v121 = v124;
      v227 = v124;
      if ((v132 & 1) == 0)
      {
        v120 = v133;
        v119 = v120;
        v222 = v120;
        if (v120 <= 0xFFFFFFFF7FFFFFFFLL)
        {
          sub_22609A3B8();
          __break(1u);
        }

        if (v119 >= 0x80000000)
        {
          sub_22609A3B8();
          __break(1u);
        }

        [v121 setRecognizedTextStartIndex_];
      }

      v23 = v181;
      if (v181)
      {
        v118 = v181;
        v116 = v181;
        v24 = [v181 confusionPairs];
        v117 = v24;
        if (v24)
        {
          v115 = v117;
          v112 = v117;
          v113 = sub_226099C88();

          v114 = v113;
        }

        else
        {
          v114 = 0;
        }

        v224[0] = v114;
        if (v114)
        {
          v25 = v121;
          v223 = v121;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7865B8, &qword_2260A0618);
          sub_226099CE8();
          v104 = v224[0];
          if (v224[0])
          {
            v103 = v104;
            v100 = v104;
            v101 = sub_226099C78();

            v102 = v101;
          }

          else
          {
            v102 = 0;
          }

          v99 = v102;
          [v116 setConfusionPairs_];
        }

        else
        {
          v111 = 0;
          v110 = 0;
          sub_2260998E8();
          if (v111)
          {
            v109 = v110;
            v106 = v110;
            v107 = sub_226099C78();

            v108 = v107;
          }

          else
          {
            v108 = 0;
          }

          v105 = v108;
          [v116 setConfusionPairs_];

          sub_225EFE6E8(v224);
        }
      }

      v97 = sub_225F7C7D4();
      v98 = sub_225F26174();
      if (v98)
      {
        v96 = v98;
        v94 = v98;
        v226 = v98;
        sub_2260998E8();
        v93 = MEMORY[0x277D837D0];
        v92 = sub_226099C78();

        [v94 setRecognizedTokens_];

        sub_2260998E8();
        v95 = sub_226099C78();

        [v94 setCorrectedTokens_];

        v26 = v159;
        if (v159)
        {
          v91 = v159;
          v89 = v159;
          v27 = [v159 confusionPairs];
          v90 = v27;
          if (v27)
          {
            v88 = v90;
            v85 = v90;
            v86 = sub_226099C88();

            v87 = v86;
          }

          else
          {
            v87 = 0;
          }

          v225 = v87;
          if (v87)
          {
            v28 = v94;
            v224[1] = v94;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7865B0, &qword_2260A0610);
            sub_226099CE8();
            v77 = v225;
            if (v225)
            {
              v76 = v77;
              v73 = v77;
              v74 = sub_226099C78();

              v75 = v74;
            }

            else
            {
              v75 = 0;
            }

            v72 = v75;
            [v89 setConfusionPairs_];
          }

          else
          {
            v84 = 0;
            v83 = 0;
            sub_2260998E8();
            if (v84)
            {
              v82 = v83;
              v79 = v83;
              v80 = sub_226099C78();

              v81 = v80;
            }

            else
            {
              v81 = 0;
            }

            v78 = v81;
            [v89 setConfusionPairs_];

            sub_225EFE6E8(&v225);
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  sub_225EFE6E8(v249);
  v29 = v187;
  if (v187)
  {
    v71 = v187;
    v70 = v187;
  }

  else
  {
    v70 = 0;
  }

  v69 = v70;
  v30 = mach_absolute_time();
  sub_225F57040(v209, v69, v30);

  v31 = v177;
  if (v177)
  {
    v68 = v177;
    v67 = v177;
  }

  else
  {
    v67 = 0;
  }

  v66 = v67;
  v32 = mach_absolute_time();
  sub_225F57040(v209, v66, v32);

  if (v204)
  {
    v33 = v159;
    if (v159)
    {
      v65 = v159;
      v64 = v159;
    }

    else
    {
      v64 = 0;
    }

    v63 = v64;
    v34 = mach_absolute_time();
    sub_225F57040(v209, v63, v34);
  }

  return v149;
}

uint64_t sub_225F5E894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = 0;
  v95 = a1;
  v94 = a2;
  v93 = a3;
  v92 = a4;
  v91 = a5;
  v87[0] = sub_226099AA8();
  v87[1] = v5;
  sub_226099938();
  sub_225EFE6BC(v87);
  v24 = v88;
  v41 = v89;
  v85 = v88;
  v86 = v89 & 1;
  v82[0] = sub_226099AA8();
  v82[1] = v6;
  sub_226099938();
  sub_225EFE6BC(v82);
  v25 = v83;
  v26 = v84;
  v80 = v83;
  v81 = v84 & 1;
  v77[0] = sub_226099AA8();
  v77[1] = v7;
  sub_226099938();
  sub_225EFE6BC(v77);
  v27 = v78;
  v28 = v79;
  v75 = v78;
  v76 = v79 & 1;
  v72[0] = sub_226099AA8();
  v72[1] = v8;
  sub_226099938();
  sub_225EFE6BC(v72);
  v29 = v73;
  v30 = v74;
  v70 = v73;
  v71 = v74 & 1;
  v67[0] = sub_226099AA8();
  v67[1] = v9;
  sub_226099938();
  sub_225EFE6BC(v67);
  v31 = v68;
  v32 = v69;
  v65 = v68;
  v66 = v69 & 1;
  v62[0] = sub_226099AA8();
  v62[1] = v10;
  sub_226099938();
  sub_225EFE6BC(v62);
  v33 = v63;
  v34 = v64;
  v60 = v63;
  v61 = v64 & 1;
  v57[0] = sub_226099AA8();
  v57[1] = v11;
  sub_226099938();
  sub_225EFE6BC(v57);
  v35 = v58;
  v36 = v59;
  v55 = v58;
  v56 = v59 & 1;
  v52[0] = sub_226099AA8();
  v52[1] = v12;
  sub_226099938();
  sub_225EFE6BC(v52);
  v37 = v53;
  v38 = v54;
  v50 = v53;
  v51 = v54 & 1;
  v47[0] = sub_226099AA8();
  v47[1] = v13;
  sub_226099938();
  sub_225EFE6BC(v47);
  v39 = v48;
  v40 = v49;
  v45 = v48;
  v46 = v49 & 1;
  v43[0] = sub_226099AA8();
  v43[1] = v14;
  sub_226099938();
  result = sub_225EFE6BC(v43);
  v42 = v43[2];
  if ((v41 & 1) == 0 && (v26 & 1) == 0 && (v28 & 1) == 0 && (v30 & 1) == 0 && (v32 & 1) == 0 && (v34 & 1) == 0 && (v36 & 1) == 0 && (v38 & 1) == 0 && (v40 & 1) == 0 && (v44 & 1) == 0)
  {
    sub_225F7C838();
    v18 = sub_225F26174();
    sub_225F7C89C();
    v20 = sub_225F26174();
    v19 = sub_225F26174();
    MEMORY[0x277D82BE0](v20);
    if (v20)
    {
      if (v24 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v24 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      else
      {
        [v20 setEditDistance_];
        MEMORY[0x277D82BD8](v20);
      }
    }

    MEMORY[0x277D82BE0](v20);
    if (v20)
    {
      if (v25 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v25 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      else
      {
        [v20 setNumInsertions_];
        MEMORY[0x277D82BD8](v20);
      }
    }

    MEMORY[0x277D82BE0](v20);
    if (v20)
    {
      if (v27 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v27 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      else
      {
        [v20 setNumDeletions_];
        MEMORY[0x277D82BD8](v20);
      }
    }

    MEMORY[0x277D82BE0](v20);
    if (v20)
    {
      if (v29 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v29 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      else
      {
        [v20 setNumSubstitutions_];
        MEMORY[0x277D82BD8](v20);
      }
    }

    MEMORY[0x277D82BE0](v20);
    if (v20)
    {
      if (v31 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v31 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      else
      {
        [v20 setReferenceSize_];
        MEMORY[0x277D82BD8](v20);
      }
    }

    MEMORY[0x277D82BE0](v19);
    if (v19)
    {
      if (v33 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v33 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      else
      {
        [v19 setEditDistance_];
        MEMORY[0x277D82BD8](v19);
      }
    }

    MEMORY[0x277D82BE0](v19);
    if (v19)
    {
      if (v35 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v35 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      else
      {
        [v19 setNumInsertions_];
        MEMORY[0x277D82BD8](v19);
      }
    }

    MEMORY[0x277D82BE0](v19);
    if (v19)
    {
      if (v37 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v37 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      else
      {
        [v19 setNumDeletions_];
        MEMORY[0x277D82BD8](v19);
      }
    }

    MEMORY[0x277D82BE0](v19);
    if (v19)
    {
      if (v39 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v39 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      else
      {
        [v19 setNumSubstitutions_];
        MEMORY[0x277D82BD8](v19);
      }
    }

    MEMORY[0x277D82BE0](v19);
    if (v19)
    {
      if (v42 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v42 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      else
      {
        [v19 setReferenceSize_];
        MEMORY[0x277D82BD8](v19);
      }
    }

    MEMORY[0x277D82BE0](v18);
    if (v18)
    {
      [v18 setAsrOutputToUserEdit_];
      MEMORY[0x277D82BD8](v18);
    }

    MEMORY[0x277D82BE0](v18);
    if (v18)
    {
      [v18 setAsrFullPayloadCorrectedToUserEdit_];
      MEMORY[0x277D82BD8](v18);
    }

    MEMORY[0x277D82BE0](v18);
    if (v18)
    {
      if (a4 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (a4 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      else
      {
        [v18 setTrueCorrections_];
        MEMORY[0x277D82BD8](v18);
      }
    }

    MEMORY[0x277D82BE0](v18);
    if (v18)
    {
      if (a5 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (a5 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      else
      {
        [v18 setTrueRegressions_];
        MEMORY[0x277D82BD8](v18);
      }
    }

    MEMORY[0x277D82BE0](v18);
    if (v18)
    {
      v17 = v18;
    }

    else
    {
      v17 = 0;
    }

    v16 = mach_absolute_time();
    sub_225F57040(a1, v17, v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    return MEMORY[0x277D82BD8](v18);
  }

  return result;
}

uint64_t sub_225F5FED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 312) = v3;
  *(v4 + 304) = a2;
  *(v4 + 296) = a1;
  *(v4 + 152) = v4;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = sub_226098C58();
  *(v4 + 320) = v5;
  v8 = *(v5 - 8);
  *(v4 + 328) = v8;
  v9 = *(v8 + 64);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 88) = a1;
  *(v4 + 96) = a2;
  *(v4 + 160) = a3;
  *(v4 + 168) = v3;
  v6 = *(v4 + 152);

  return MEMORY[0x2822009F8](sub_225F60078, 0, 0);
}

uint64_t sub_225F60078()
{
  v51 = v0;
  v1 = v0[43];
  v40 = v0[41];
  v41 = v0[40];
  v0[19] = v0;
  v2 = mach_absolute_time();
  v0[44] = v2;
  v0[22] = v2;
  v3 = sub_225F4C7E0();
  v42 = *(v40 + 16);
  v42(v1, v3, v41);
  v44 = sub_226098C48();
  v43 = sub_22609A078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v45 = sub_22609A4F8();
  if (os_log_type_enabled(v44, v43))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v36 = sub_225EF5468(0);
    v37 = sub_225EF5468(0);
    *(v39 + 264) = buf;
    *(v39 + 272) = v36;
    *(v39 + 280) = v37;
    sub_225EF54BC(0, (v39 + 264));
    sub_225EF54BC(0, (v39 + 264));
    *(v39 + 288) = v45;
    v38 = swift_task_alloc();
    v38[2] = v39 + 264;
    v38[3] = v39 + 272;
    v38[4] = v39 + 280;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, v44, v43, "FullPayloadCorrector::Running rewritePostITNOutput", buf, 2u);
    sub_225EF7AF4(v36);
    sub_225EF7AF4(v37);
    sub_22609A168();
  }

  v19 = *(v39 + 344);
  v21 = *(v39 + 336);
  v25 = *(v39 + 320);
  v22 = *(v39 + 304);
  v23 = *(v39 + 296);
  v18 = *(v39 + 328);
  MEMORY[0x277D82BD8](v44);
  v20 = *(v18 + 8);
  v20(v19, v25);
  sub_225F7C900();
  sub_2260998E8();
  v24 = sub_225F51668();
  *(v39 + 360) = v24;
  *(v39 + 184) = v24;
  v4 = sub_226099AE8();
  v26 = MEMORY[0x22AA72C90](v4);
  *(v39 + 192) = v26;

  v5 = sub_225F4C7E0();
  v42(v21, v5, v25);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  oslog = sub_226098C48();
  v34 = sub_22609A078();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_225F2D734;
  *(v28 + 24) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_225F2D374;
  *(v31 + 24) = v28;
  sub_22609A4F8();
  v32 = v6;

  *v32 = sub_225EF7434;
  v32[1] = v29;

  v32[2] = sub_225EF7434;
  v32[3] = v30;

  v32[4] = sub_225EF71D0;
  v32[5] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v34))
  {
    v15 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v16 = sub_225EF5468(0);
    v17 = sub_225EF5468(0);
    v46 = v15;
    v47 = v16;
    v48 = v17;
    sub_225EF54BC(0, &v46);
    sub_225EF54BC(1, &v46);
    v49 = sub_225EF7434;
    v50 = v29;
    sub_225EF73E8(&v49, &v46, &v47, &v48);
    v49 = sub_225EF7434;
    v50 = v30;
    sub_225EF73E8(&v49, &v46, &v47, &v48);
    v49 = sub_225EF71D0;
    v50 = v31;
    sub_225EF73E8(&v49, &v46, &v47, &v48);
    _os_log_impl(&dword_225EEB000, oslog, v34, "FullPayloadCorrector::Input: REDACTED InputUtf16Length: %ld", v15, 0xCu);
    sub_225EF7AF4(v16);
    sub_225EF7AF4(v17);
    sub_22609A168();
  }

  else
  {
  }

  v11 = *(v39 + 336);
  v12 = *(v39 + 320);
  v13 = *(v39 + 312);
  MEMORY[0x277D82BD8](oslog);
  v20(v11, v12);
  v7 = *(v13 + 56);
  *(v39 + 368) = v7;
  MEMORY[0x277D82BE0](v7);
  v14 = (MEMORY[0x277D4B190] + *MEMORY[0x277D4B190]);
  v8 = *(MEMORY[0x277D4B190] + 4);
  v9 = swift_task_alloc();
  *(v39 + 376) = v9;
  *v9 = *(v39 + 152);
  v9[1] = sub_225F60B50;

  return v14(v24, 0, v26, 0);
}

uint64_t sub_225F60B50(uint64_t a1, uint64_t a2)
{
  v10 = *v3;
  v5 = *(*v3 + 376);
  *(v10 + 152) = *v3;
  v11 = (v10 + 152);
  *(v10 + 384) = v2;
  *(v10 + 392) = a1;
  *(v10 + 400) = a2;

  if (v2)
  {
    v8 = *v11;
    v7 = sub_225F613F8;
  }

  else
  {

    v6 = *v11;
    v7 = sub_225F60CD8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_225F60CD8()
{
  v37 = v0[50];
  v38 = v0[49];
  v0[19] = v0;
  sub_2260998E8();
  v0[13] = v38;
  v0[14] = v37;
  v0[26] = sub_22609A4F8();
  v0[27] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7865D8, &qword_2260A0628);
  sub_225F7C964();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7865E8, &qword_2260A0630);
    sub_22609A388();
    v35 = *(v36 + 224);
    if (!v35)
    {
      break;
    }

    *(v36 + 240) = v35;
    *(v36 + 248) = [v35 resultType];
    *(v36 + 256) = 4;
    type metadata accessor for CheckingType();
    sub_225F7CA30();
    if (sub_22609A508())
    {
      v39 = [v35 range];
      v34 = [v35 grammarDetails];
      if (v34)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
        sub_226099C88();
        MEMORY[0x277D82BD8](v34);
      }

      v31 = nullsub_1(v39);
      v32 = v1;
      v33 = v2;
      *(v36 + 16) = v31;
      *(v36 + 24) = v1;
      *(v36 + 32) = v2;
      sub_2260998E8();
      *(v36 + 40) = v31;
      *(v36 + 48) = v32;
      *(v36 + 56) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786380, &qword_2260A0510);
      sub_226099CE8();

      MEMORY[0x277D82BD8](v35);
    }

    else
    {
      MEMORY[0x277D82BD8](v35);
    }
  }

  v26 = *(v36 + 304);
  v25 = *(v36 + 296);
  sub_225EFE6E8((v36 + 120));
  v27 = *(v36 + 208);
  sub_2260998E8();
  v28 = sub_225F4CBEC(v25, v26, v27, v3);
  v29 = v4;
  v30 = v5;

  *(v36 + 64) = v28;
  *(v36 + 72) = v29;
  *(v36 + 80) = v30 & 1;
  if ((v30 & 1) == 0)
  {
    v17 = *(v36 + 352);
    sub_2260998E8();
    *(v36 + 136) = v28;
    *(v36 + 144) = v29;
    result = mach_absolute_time();
    if (result >= v17)
    {
      v15 = *(v36 + 360);
      v10 = *(v36 + 312);
      v16 = sub_225F5AC0C(result - v17);
      sub_225F7C9EC(v28, v29, v30 & 1);
      sub_225EFE6E8((v36 + 208));
      sub_225F7C3B0((v36 + 104));
      MEMORY[0x277D82BD8](v15);
      v20 = v28;
      v21 = v29;
      v22 = 0;
      v23 = v16;
      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v24 = *(v36 + 352);
  v6 = v28;
  *(v36 + 232) = v28;
  v7 = v28;
  result = mach_absolute_time();
  if (result < v24)
  {
    goto LABEL_17;
  }

  v18 = *(v36 + 360);
  v9 = *(v36 + 312);
  v19 = sub_225F5AC0C(result - v24);

  sub_225F7C9EC(v28, v29, v30 & 1);
  sub_225EFE6E8((v36 + 208));
  sub_225F7C3B0((v36 + 104));
  MEMORY[0x277D82BD8](v18);
  v20 = v28;
  v21 = 0;
  v22 = 1;
  v23 = v19;
LABEL_13:
  v11 = *(v36 + 344);
  v14 = *(v36 + 336);

  v12 = *(*(v36 + 152) + 8);
  v13 = *(v36 + 152);

  return v12(v20, v21, v22 & 1, v23);
}

uint64_t sub_225F613F8()
{
  v14 = v0[48];
  v1 = v0[46];
  v15 = v0[44];
  v0[19] = v0;
  MEMORY[0x277D82BD8](v1);
  v2 = v14;
  v0[25] = v14;
  v3 = v14;
  result = mach_absolute_time();
  if (result < v15)
  {
    __break(1u);
  }

  else
  {
    v9 = v13[48];
    v10 = v13[45];
    v5 = v13[39];
    v12 = sub_225F5AC0C(result - v15);

    MEMORY[0x277D82BD8](v10);
    v6 = v13[43];
    v11 = v13[42];

    v7 = *(v13[19] + 8);
    v8 = v13[19];

    return v7(v14, 0, 1, v12);
  }

  return result;
}

uint64_t ASRFullPayloadCorrectionWorker.runWorker()()
{
  *(v1 + 2192) = v0;
  *(v1 + 1424) = v1;
  *(v1 + 1432) = 0;
  *(v1 + 1472) = 0;
  *(v1 + 1480) = 0;
  *(v1 + 1488) = 0;
  *(v1 + 1496) = 0;
  *(v1 + 1504) = 0;
  *(v1 + 1512) = 0;
  *(v1 + 73) = 0;
  *(v1 + 1024) = 0;
  *(v1 + 1032) = 0;
  *(v1 + 1616) = 0;
  *(v1 + 736) = 0;
  *(v1 + 744) = 0;
  *(v1 + 752) = 0;
  *(v1 + 1648) = 0;
  *(v1 + 1664) = 0;
  *(v1 + 1672) = 0;
  *(v1 + 1680) = 0;
  *(v1 + 1688) = 0;
  *(v1 + 1704) = 0;
  *(v1 + 1088) = 0;
  *(v1 + 1096) = 0;
  *(v1 + 504) = 0u;
  *(v1 + 520) = 0u;
  *(v1 + 1000) = 0;
  *(v1 + 1008) = 0;
  *(v1 + 1016) = 0;
  *(v1 + 1104) = 0;
  *(v1 + 1112) = 0;
  *(v1 + 1120) = 0;
  *(v1 + 1128) = 0;
  *(v1 + 1136) = 0;
  *(v1 + 1144) = 0;
  *(v1 + 808) = 0;
  *(v1 + 816) = 0;
  *(v1 + 824) = 0;
  *(v1 + 832) = 0;
  *(v1 + 840) = 0;
  *(v1 + 848) = 0;
  *(v1 + 1712) = 0;
  *(v1 + 856) = 0;
  *(v1 + 864) = 0;
  *(v1 + 872) = 0;
  *(v1 + 880) = 0;
  *(v1 + 888) = 0;
  *(v1 + 896) = 0;
  memset((v1 + 256), 0, 0x28uLL);
  memset((v1 + 296), 0, 0x28uLL);
  *(v1 + 1720) = 0;
  *(v1 + 1728) = 0;
  *(v1 + 1736) = 0;
  *(v1 + 1744) = 0;
  *(v1 + 904) = 0;
  *(v1 + 912) = 0;
  *(v1 + 920) = 0;
  *(v1 + 1832) = 0;
  memset((v1 + 16), 0, 0x39uLL);
  *(v1 + 1864) = 0;
  *(v1 + 1216) = 0;
  *(v1 + 1224) = 0;
  *(v1 + 1232) = 0;
  *(v1 + 1240) = 0;
  *(v1 + 1872) = 0;
  *(v1 + 1968) = 0;
  *(v1 + 2000) = 0;
  *(v1 + 1328) = 0;
  *(v1 + 1336) = 0;
  *(v1 + 1408) = 0;
  *(v1 + 1416) = 0;
  *(v1 + 2008) = 0;
  *(v1 + 1432) = v0;
  v2 = *(v1 + 1424);

  return MEMORY[0x2822009F8](sub_225F617A4, 0, 0);
}

uint64_t sub_225F617A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v324 = v4;
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v300 = v4;
  v4[178] = v4;
  v302 = sub_225F4C7E0();
  v303 = sub_226098C58();
  v4[275] = v303;
  v301 = *(v303 - 8);
  v4[276] = v301[8];
  v304 = swift_task_alloc();
  v305 = v301[2];
  v4[277] = v305;
  v4[278] = (v301 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v305(v304, v302, v303);
  oslog = sub_226098C48();
  v306 = sub_22609A078();
  v4[279] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v308 = sub_22609A4F8();
  if (os_log_type_enabled(oslog, v306))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v297 = sub_225EF5468(0);
    v298 = sub_225EF5468(0);
    v4[270] = buf;
    v4[271] = v297;
    v4[272] = v298;
    sub_225EF54BC(0, v4 + 270);
    sub_225EF54BC(0, v4 + 270);
    v4[273] = v308;
    v299 = swift_task_alloc();
    v299[2] = v4 + 270;
    v299[3] = v4 + 271;
    v299[4] = v4 + 272;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, oslog, v306, "ASRFullPayloadCorrectionWorker::Running", buf, 2u);
    sub_225EF7AF4(v297);
    sub_225EF7AF4(v298);
    sub_22609A168();

    v295 = 0;
  }

  else
  {
  }

  MEMORY[0x277D82BD8](oslog);
  v294 = v301[1];
  v4[280] = v294;
  v4[281] = (v301 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v294(v304, v303);

  if (sub_226099E58())
  {
    v283 = v4[274];
    v280 = sub_225F4C7E0();
    v281 = swift_task_alloc();
    v305(v281, v280, v303);

    log = sub_226098C48();
    v293 = sub_22609A078();
    v285 = swift_allocObject();
    *(v285 + 16) = 32;
    v286 = swift_allocObject();
    *(v286 + 16) = 8;
    v282 = swift_allocObject();
    *(v282 + 16) = sub_225F7D2E0;
    *(v282 + 24) = v283;
    v287 = swift_allocObject();
    *(v287 + 16) = sub_225EF7B84;
    *(v287 + 24) = v282;
    v288 = swift_allocObject();
    *(v288 + 16) = 32;
    v289 = swift_allocObject();
    *(v289 + 16) = 8;
    v284 = swift_allocObject();
    *(v284 + 16) = sub_225F7D2E8;
    *(v284 + 24) = v283;
    v290 = swift_allocObject();
    *(v290 + 16) = sub_225EF7B84;
    *(v290 + 24) = v284;
    sub_22609A4F8();
    v291 = v5;

    *v291 = sub_225EF7434;
    v291[1] = v285;

    v291[2] = sub_225EF7434;
    v291[3] = v286;

    v291[4] = sub_225EF7B90;
    v291[5] = v287;

    v291[6] = sub_225EF7434;
    v291[7] = v288;

    v291[8] = sub_225EF7434;
    v291[9] = v289;

    v291[10] = sub_225EF7B90;
    v291[11] = v290;
    sub_225EF5418();

    if (os_log_type_enabled(log, v293))
    {
      v277 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v278 = sub_225EF5468(0);
      v279 = sub_225EF5468(2);
      v319 = v277;
      v320 = v278;
      v321 = v279;
      sub_225EF54BC(2, &v319);
      sub_225EF54BC(2, &v319);
      v322 = sub_225EF7434;
      v323 = v285;
      sub_225EF73E8(&v322, &v319, &v320, &v321);
      v322 = sub_225EF7434;
      v323 = v286;
      sub_225EF73E8(&v322, &v319, &v320, &v321);
      v322 = sub_225EF7B90;
      v323 = v287;
      sub_225EF73E8(&v322, &v319, &v320, &v321);
      v322 = sub_225EF7434;
      v323 = v288;
      sub_225EF73E8(&v322, &v319, &v320, &v321);
      v322 = sub_225EF7434;
      v323 = v289;
      sub_225EF73E8(&v322, &v319, &v320, &v321);
      v322 = sub_225EF7B90;
      v323 = v290;
      sub_225EF73E8(&v322, &v319, &v320, &v321);
      _os_log_impl(&dword_225EEB000, log, v293, "TaskId: %s, TaskName: %s: asked to stop!", v277, 0x16u);
      sub_225EF7AF4(v278);
      sub_225EF7AF4(v279);
      sub_22609A168();
    }

    else
    {
    }

    MEMORY[0x277D82BD8](log);
    v294(v281, v303);

    sub_226099D58();
    sub_225F7D2F0();
    swift_allocError();
    sub_226099858();
    swift_willThrow();
    goto LABEL_93;
  }

  if (!sub_225F7CAB0())
  {
    v49 = sub_225F4C7E0();
    v50 = swift_task_alloc();
    v305(v50, v49, v303);
    v52 = sub_226098C48();
    v51 = sub_22609A078();
    v53 = sub_22609A4F8();
    if (os_log_type_enabled(v52, v51))
    {
      v45 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v46 = sub_225EF5468(0);
      v47 = sub_225EF5468(0);
      v4[180] = v45;
      v4[181] = v46;
      v4[182] = v47;
      sub_225EF54BC(0, v4 + 180);
      sub_225EF54BC(0, v4 + 180);
      v4[183] = v53;
      v48 = swift_task_alloc();
      v48[2] = v4 + 180;
      v48[3] = v4 + 181;
      v48[4] = v4 + 182;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v52, v51, "ASRFullPayloadCorrectionWorker::Unsupported device", v45, 2u);
      sub_225EF7AF4(v46);
      sub_225EF7AF4(v47);
      sub_22609A168();
    }

    MEMORY[0x277D82BD8](v52);
    v294(v50, v303);

    goto LABEL_90;
  }

  v273 = sub_226098B28();
  v4[282] = v273;
  v272 = *(v273 - 8);
  v270 = *(v272 + 64);
  v271 = swift_task_alloc();
  v4[283] = v271;
  v268 = sub_226098B88();
  v267 = *(v268 - 8);
  v6 = *(v267 + 64) + 15;
  v269 = swift_task_alloc();
  v265 = sub_226098B48();
  v264 = *(v265 - 8);
  v7 = *(v264 + 64) + 15;
  v266 = swift_task_alloc();
  sub_22609A4F8();
  v260 = v8;
  *v8 = sub_226099AA8();
  v260[1] = v9;
  sub_225EF5418();
  v262 = sub_226098B68();
  v261 = *(v262 - 8);
  v10 = *(v261 + 64) + 15;
  v263 = swift_task_alloc();
  sub_226099AA8();
  sub_226098AA8();
  (*(v261 + 104))(v263, *MEMORY[0x277D0E2C8], v262);
  sub_226098B38();

  sub_226098B78();
  (*(v264 + 8))(v266, v265);

  sub_226098B58();
  (*(v267 + 8))(v269, v268);

  v275 = swift_task_alloc();
  (*(v272 + 104))(v275, *MEMORY[0x277D0E270], v273);
  sub_225F7CAC4();
  v276 = sub_2260999D8();
  v274 = *(v272 + 8);
  v4[284] = v274;
  v4[285] = (v272 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v274(v275, v273);

  if ((v276 & 1) == 0)
  {
    v255 = sub_225F4C7E0();
    v256 = swift_task_alloc();
    v305(v256, v255, v303);
    v258 = sub_226098C48();
    v257 = sub_22609A078();
    v259 = sub_22609A4F8();
    if (os_log_type_enabled(v258, v257))
    {
      v251 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v252 = sub_225EF5468(0);
      v253 = sub_225EF5468(0);
      v4[266] = v251;
      v4[267] = v252;
      v4[268] = v253;
      sub_225EF54BC(0, v4 + 266);
      sub_225EF54BC(0, v4 + 266);
      v4[269] = v259;
      v254 = swift_task_alloc();
      v254[2] = v4 + 266;
      v254[3] = v4 + 267;
      v254[4] = v4 + 268;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v258, v257, "ASRFullPayloadCorrectionWorker::Worker unable to run", v251, 2u);
      sub_225EF7AF4(v252);
      sub_225EF7AF4(v253);
      sub_22609A168();
    }

    MEMORY[0x277D82BD8](v258);
    v294(v256, v303);

    sub_225F7B6F4();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v274(v271, v273);

    goto LABEL_93;
  }

  v246 = sub_225F4C7E0();
  v247 = swift_task_alloc();
  v305(v247, v246, v303);
  v249 = sub_226098C48();
  v248 = sub_22609A078();
  v250 = sub_22609A4F8();
  if (os_log_type_enabled(v249, v248))
  {
    v242 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v243 = sub_225EF5468(0);
    v244 = sub_225EF5468(0);
    v4[262] = v242;
    v4[263] = v243;
    v4[264] = v244;
    sub_225EF54BC(0, v4 + 262);
    sub_225EF54BC(0, v4 + 262);
    v4[265] = v250;
    v245 = swift_task_alloc();
    v245[2] = v4 + 262;
    v245[3] = v4 + 263;
    v245[4] = v4 + 264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, v249, v248, "ASRFullPayloadCorrectionWorker::Worker able to run", v242, 2u);
    sub_225EF7AF4(v243);
    sub_225EF7AF4(v244);
    sub_22609A168();

    v241 = 0;
  }

  else
  {

    v241 = v295;
  }

  v232 = v4[274];
  MEMORY[0x277D82BD8](v249);
  v294(v247, v303);

  v222 = BiomeLibrary();
  swift_getObjectType();
  v221 = [v222 Dictation];
  swift_getObjectType();
  v228 = [v221 UserEdit];
  v4[286] = v228;
  v4[184] = v228;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_225F7CB3C();
  v223 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640) - 8) + 64);
  v227 = swift_task_alloc();
  v224 = sub_226098A08();
  v225 = *(*(v224 - 8) + 56);
  v225(v227, 1);
  v226 = swift_task_alloc();
  (v225)(v226, 1, 1, v224);
  v12 = *(v232 + 72);
  v229 = sub_225F79254(v227, v226);
  v4[287] = v229;

  v4[185] = v229;
  v234 = loadBookmark(1);
  v4[288] = v234;
  v4[186] = v234;
  v231 = swift_allocObject();
  v4[289] = v231;
  v4[187] = v231 + 16;
  *(v231 + 16) = 0;
  v239 = swift_allocObject();
  v4[290] = v239;
  v4[188] = v239 + 16;
  *(v239 + 16) = 0;
  v233 = swift_allocObject();
  v4[291] = v233;
  v4[189] = v233 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786670, &qword_2260A0650);
  *(v233 + 16) = sub_22609A4F8();
  sub_226099AA8();
  sub_2260998E8();
  v230 = sub_2260999F8();
  MEMORY[0x277D82BE0](v230);

  MEMORY[0x277D82BD8](v230);
  MEMORY[0x277D82BE0](v229);
  v237 = [v228 publisherWithUseCase:v230 options:v229];
  MEMORY[0x277D82BD8](v229);
  MEMORY[0x277D82BD8](v230);

  v13 = swift_allocObject();
  *(v13 + 16) = v239;
  *(v13 + 24) = v231;
  v4[14] = sub_225F7CBA0;
  v4[15] = v13;
  v4[10] = MEMORY[0x277D85DD0];
  *(v4 + 22) = 1107296256;
  *(v4 + 23) = 0;
  v4[12] = sub_225F7A030;
  v4[13] = &block_descriptor_251;
  v236 = _Block_copy(v4 + 10);
  v14 = v4[15];

  v15 = swift_allocObject();
  *(v15 + 16) = v232;
  *(v15 + 24) = v233;
  v4[20] = sub_225F7CC10;
  v4[21] = v15;
  v4[16] = MEMORY[0x277D85DD0];
  *(v4 + 34) = 1107296256;
  *(v4 + 35) = 0;
  v4[18] = sub_225F7B140;
  v4[19] = &block_descriptor_257;
  aBlock = _Block_copy(v4 + 16);
  v16 = v4[21];

  v238 = [v237 drivableSinkWithBookmark:v234 completion:v236 shouldContinue:aBlock];
  _Block_release(aBlock);
  _Block_release(v236);
  MEMORY[0x277D82BD8](v237);
  MEMORY[0x277D82BD8](v238);
  swift_beginAccess();
  v240 = *(v239 + 16);
  swift_endAccess();
  if ((v240 & 1) == 0)
  {
    sub_225F7B6F4();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v229);
    MEMORY[0x277D82BD8](v228);
    v274(v271, v273);

LABEL_93:
    v43 = *(v4[178] + 8);
    v44 = v4[178];

    return v43();
  }

  swift_beginAccess();
  v219 = *(v233 + 16);
  sub_2260998E8();
  swift_endAccess();
  v4[190] = v219;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786678, &qword_2260A0658);
  sub_225F7CC80();
  v220 = sub_22609A008();

  if (v220)
  {

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v229);
    MEMORY[0x277D82BD8](v228);
    v274(v271, v273);

LABEL_90:
    v41 = *(v4[178] + 8);
    v42 = v4[178];

    return v41();
  }

  *(v4 + 73) = 0;
  swift_beginAccess();
  v217 = *(v233 + 16);
  sub_2260998E8();
  swift_endAccess();
  v4[191] = v217;
  sub_22609A028();
  *(v4 + 74) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786688, &qword_2260A0660);
  sub_22609A388();
  v218 = v4[192];
  v4[292] = v218;
  if (!v218)
  {
    v122 = v4[274];
    sub_225EFE6E8(v4 + 128);
    swift_beginAccess();
    v123 = *(v122 + 112);
    sub_2260998E8();
    swift_endAccess();
    v124 = sub_226099CD8();

    if (v124 > 0)
    {
      v119 = v4[274];
      swift_beginAccess();
      v120 = *(v119 + 112);
      sub_2260998E8();
      swift_endAccess();
      v121 = sub_226099CD8();

      if (v121 < 0)
      {
        return sub_22609A3B8();
      }

      v114 = v4[274];
      v4[130] = 0;
      v4[131] = v121;
      sub_225EF9438();
      sub_22609A3A8();
      v113 = v4[201];
      v4[202] = v113;
      swift_beginAccess();
      v115 = *(v114 + 112);
      sub_2260998E8();
      swift_endAccess();
      v4[204] = v115;
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786418, &unk_2260A0568);
      v32 = sub_225F7CD08();
      MEMORY[0x22AA72D20](v116, v32);
      sub_225EFE6E8(v4 + 204);
      v4[205] = v4[203];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786698, &qword_2260A0668);
      sub_22609A3F8();
      v117 = 0;
      for (i = v241; ; i = v108)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7866A0, &qword_2260A0670);
        sub_22609A408();
        memcpy(v4 + 22, v4 + 27, 0x28uLL);
        if (!v4[26])
        {
          break;
        }

        v112 = v4[22];
        v4[206] = v112;
        sub_225EF9790((v4 + 23), (v4 + 47));
        sub_225EF3E30((v4 + 47), (v4 + 51));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
        if (swift_dynamicCast())
        {
          v111 = v4[207];
        }

        else
        {
          v111 = 0;
        }

        v4[208] = v111;
        sub_2260998E8();
        if (v111)
        {
          v4[209] = v111;
          v109 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
          v110 = swift_task_alloc();
          v4[132] = sub_226099AA8();
          v4[133] = v33;
          sub_226099938();
          sub_225EFE6BC((v4 + 132));
          if (v4[58])
          {
            v106 = sub_226098A78();
            v34 = swift_dynamicCast();
            if (v34)
            {
              (*(*(v106 - 8) + 56))(v110, 0, 1);
            }

            else
            {
              (*(*(v106 - 8) + 56))(v110, 1);
            }
          }

          else
          {
            sub_225F186BC(v4 + 55);
            v39 = sub_226098A78();
            (*(*(v39 - 8) + 56))(v110, 1);
          }

          v4[134] = sub_226099AA8();
          v4[135] = v35;
          sub_226099938();
          sub_225EFE6BC((v4 + 134));
          if (v4[62])
          {
            if (swift_dynamicCast())
            {
              v105 = v4[212];
            }

            else
            {
              v105 = 0;
            }

            v104 = v105;
          }

          else
          {
            sub_225F186BC(v4 + 59);
            v104 = 0;
          }

          v4[210] = v104;
          v102 = sub_226098A78();
          v101 = *(v102 - 8);
          v99 = *(v101 + 64);
          v100 = swift_task_alloc();
          v103 = swift_task_alloc();
          sub_225F7BF50(v110, v103);
          if ((*(v101 + 48))(v103, 1, v102) == 1)
          {
            sub_225F7C078(v103);

            v97 = v117;
            v98 = i;
          }

          else
          {
            v96 = *(v101 + 32);
            v96(v100, v103, v102);

            sub_2260998E8();
            if (v104)
            {
              v4[211] = v104;
              if (v113 == v112)
              {
                v93 = v4[279];
                v81 = v4[278];
                v82 = v4[277];
                v78 = v4[276];
                v80 = v4[275];
                v79 = sub_225F4C7E0();
                v83 = swift_task_alloc();
                v82(v83, v79, v80);
                v85 = swift_task_alloc();
                (*(v101 + 16))(v85, v100, v102);
                v84 = (*(v101 + 80) + 16) & ~*(v101 + 80);
                v86 = swift_allocObject();
                v96(v86 + v84, v85, v102);

                v87 = swift_allocObject();
                *(v87 + 16) = sub_225F7CD90;
                *(v87 + 24) = v86;

                v94 = sub_226098C48();
                v95 = sub_22609A078();
                v89 = swift_allocObject();
                *(v89 + 16) = 32;
                v90 = swift_allocObject();
                *(v90 + 16) = 8;
                v88 = swift_allocObject();
                *(v88 + 16) = sub_225F7CE04;
                *(v88 + 24) = v87;
                v91 = swift_allocObject();
                *(v91 + 16) = sub_225EF7B84;
                *(v91 + 24) = v88;
                sub_22609A4F8();
                v92 = v36;

                *v92 = sub_225EF7434;
                v92[1] = v89;

                v92[2] = sub_225EF7434;
                v92[3] = v90;

                v92[4] = sub_225EF7B90;
                v92[5] = v91;
                sub_225EF5418();

                if (os_log_type_enabled(v94, v95))
                {
                  v75 = sub_22609A188();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                  v76 = sub_225EF5468(0);
                  v77 = sub_225EF5468(1);
                  v309 = v75;
                  v310 = v76;
                  v311 = v77;
                  sub_225EF54BC(2, &v309);
                  sub_225EF54BC(1, &v309);
                  v312 = sub_225EF7434;
                  v313 = v89;
                  sub_225EF73E8(&v312, &v309, &v310, &v311);
                  v312 = sub_225EF7434;
                  v313 = v90;
                  sub_225EF73E8(&v312, &v309, &v310, &v311);
                  v312 = sub_225EF7B90;
                  v313 = v91;
                  sub_225EF73E8(&v312, &v309, &v310, &v311);
                  _os_log_impl(&dword_225EEB000, v94, v95, "ASRFullPayloadCorrectionWorker::Chosen record is %s", v75, 0xCu);
                  sub_225EF7AF4(v76);
                  sub_225EF7AF4(v77);
                  sub_22609A168();

                  v73 = 0;
                  v74 = 0;
                }

                else
                {

                  v73 = v117;
                  v74 = i;
                }

                v68 = v4[281];
                v69 = v4[280];
                v67 = v4[275];
                v37 = v4[274];
                MEMORY[0x277D82BD8](v94);
                v69(v83, v67);

                sub_2260998E8();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
                v70 = sub_22609A3E8();
                sub_225F5D098(v100, v70, 1u);

                v71 = v73;
                v72 = v74;
              }

              else
              {
                v38 = v4[274];
                sub_2260998E8();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
                v66 = sub_22609A3E8();
                sub_225F5D098(v100, v66, 0);

                v71 = v117;
                v72 = i;
              }

              (*(v101 + 8))(v100, v102);

              v97 = v71;
              v98 = v72;
            }

            else
            {
              (*(v101 + 8))(v100, v102);

              v97 = v117;
              v98 = i;
            }
          }

          sub_225F7C078(v110);

          v107 = v97;
          v108 = v98;
        }

        else
        {
          v107 = v117;
          v108 = i;
        }

        __swift_destroy_boxed_opaque_existential_0(v4 + 47);
        v117 = v107;
      }

      v65 = v4[274];
      sub_225EFE6E8(v4 + 92);
      swift_beginAccess();
      sub_225F7B3F4();
      sub_226099CF8();
      swift_endAccess();
    }

    v63 = v4[290];
    swift_beginAccess();
    v64 = *(v63 + 16);
    swift_endAccess();
    v40 = v4[291];
    v54 = v4[290];
    v55 = v4[289];
    v56 = v4[288];
    v57 = v4[287];
    v58 = v4[286];
    v60 = v4[285];
    v61 = v4[284];
    v62 = v4[283];
    v59 = v4[282];

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v58);
    v61(v62, v59);

    goto LABEL_90;
  }

  v4[213] = v218;
  if (sub_226099E58())
  {
    v214 = v4[279];
    v201 = v4[278];
    v202 = v4[277];
    v198 = v4[276];
    v200 = v4[275];
    v205 = v4[274];
    v199 = sub_225F4C7E0();
    v203 = swift_task_alloc();
    v202(v203, v199, v200);

    v215 = sub_226098C48();
    v216 = sub_22609A078();
    v207 = swift_allocObject();
    *(v207 + 16) = 32;
    v208 = swift_allocObject();
    *(v208 + 16) = 8;
    v204 = swift_allocObject();
    *(v204 + 16) = sub_225F7D2E0;
    *(v204 + 24) = v205;
    v209 = swift_allocObject();
    *(v209 + 16) = sub_225EF7B84;
    *(v209 + 24) = v204;
    v210 = swift_allocObject();
    *(v210 + 16) = 32;
    v211 = swift_allocObject();
    *(v211 + 16) = 8;
    v206 = swift_allocObject();
    *(v206 + 16) = sub_225F7D2E8;
    *(v206 + 24) = v205;
    v212 = swift_allocObject();
    *(v212 + 16) = sub_225EF7B84;
    *(v212 + 24) = v206;
    sub_22609A4F8();
    v213 = v18;

    *v213 = sub_225EF7434;
    v213[1] = v207;

    v213[2] = sub_225EF7434;
    v213[3] = v208;

    v213[4] = sub_225EF7B90;
    v213[5] = v209;

    v213[6] = sub_225EF7434;
    v213[7] = v210;

    v213[8] = sub_225EF7434;
    v213[9] = v211;

    v213[10] = sub_225EF7B90;
    v213[11] = v212;
    sub_225EF5418();

    if (os_log_type_enabled(v215, v216))
    {
      v195 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v196 = sub_225EF5468(0);
      v197 = sub_225EF5468(2);
      v314 = v195;
      v315 = v196;
      v316 = v197;
      sub_225EF54BC(2, &v314);
      sub_225EF54BC(2, &v314);
      v317 = sub_225EF7434;
      v318 = v207;
      sub_225EF73E8(&v317, &v314, &v315, &v316);
      v317 = sub_225EF7434;
      v318 = v208;
      sub_225EF73E8(&v317, &v314, &v315, &v316);
      v317 = sub_225EF7B90;
      v318 = v209;
      sub_225EF73E8(&v317, &v314, &v315, &v316);
      v317 = sub_225EF7434;
      v318 = v210;
      sub_225EF73E8(&v317, &v314, &v315, &v316);
      v317 = sub_225EF7434;
      v318 = v211;
      sub_225EF73E8(&v317, &v314, &v315, &v316);
      v317 = sub_225EF7B90;
      v318 = v212;
      sub_225EF73E8(&v317, &v314, &v315, &v316);
      _os_log_impl(&dword_225EEB000, v215, v216, "TaskId: %s, TaskName: %s: asked to stop!", v195, 0x16u);
      sub_225EF7AF4(v196);
      sub_225EF7AF4(v197);
      sub_22609A168();
    }

    else
    {
    }

    v185 = v4[291];
    v186 = v4[290];
    v187 = v4[289];
    v188 = v4[288];
    v189 = v4[287];
    v190 = v4[286];
    v192 = v4[285];
    v193 = v4[284];
    v194 = v4[283];
    v191 = v4[282];
    v183 = v4[281];
    v184 = v4[280];
    v182 = v4[275];
    MEMORY[0x277D82BD8](v215);
    v184(v203, v182);

    sub_226099D58();
    sub_225F7D2F0();
    swift_allocError();
    sub_226099858();
    swift_willThrow();
    MEMORY[0x277D82BD8](v218);
    sub_225EFE6E8(v4 + 128);

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v189);
    MEMORY[0x277D82BD8](v190);
    v193(v194, v191);

    goto LABEL_93;
  }

  v178 = v4[279];
  v175 = v4[278];
  v176 = v4[277];
  v172 = v4[276];
  v174 = v4[275];
  v173 = sub_225F4C7E0();
  v177 = swift_task_alloc();
  v176(v177, v173, v174);
  v180 = sub_226098C48();
  v179 = sub_22609A078();
  v181 = sub_22609A4F8();
  if (os_log_type_enabled(v180, v179))
  {
    v168 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v169 = sub_225EF5468(0);
    v170 = sub_225EF5468(0);
    v4[258] = v168;
    v4[259] = v169;
    v4[260] = v170;
    sub_225EF54BC(0, v4 + 258);
    sub_225EF54BC(0, v4 + 258);
    v4[261] = v181;
    v171 = swift_task_alloc();
    v171[2] = v4 + 258;
    v171[3] = v4 + 259;
    v171[4] = v4 + 260;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, v180, v179, "ASRFullPayloadCorrectionWorker::Processing individual Biome record", v168, 2u);
    sub_225EF7AF4(v169);
    sub_225EF7AF4(v170);
    sub_22609A168();
  }

  v165 = v4[281];
  v166 = v4[280];
  v164 = v4[275];
  MEMORY[0x277D82BD8](v180);
  v166(v177, v164);

  v167 = [v218 eventBody];
  if (!v167)
  {
    return sub_22609A3B8();
  }

  v163 = [v167 recognizedText];
  if (v163)
  {
    v159 = sub_226099A08();
    v160 = v19;
    MEMORY[0x277D82BD8](v163);
    v161 = v159;
    v162 = v160;
  }

  else
  {
    v161 = 0;
    v162 = 0;
  }

  v4[294] = v162;
  v4[293] = v161;
  MEMORY[0x277D82BD8](v167);
  if (!v162)
  {
    return sub_22609A3B8();
  }

  v4[136] = v161;
  v4[137] = v162;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64) + 15;
  v157 = swift_task_alloc();
  v4[295] = v157;
  v21 = [v218 eventBody];
  v158 = v21;
  if (!v21)
  {
    return sub_22609A3B8();
  }

  v22 = [v21 asrID];
  v156 = v22;
  if (v22)
  {
    sub_226099A08();
    v154 = v23;
    MEMORY[0x277D82BD8](v156);
    v155 = v154;
  }

  else
  {
    v155 = 0;
  }

  MEMORY[0x277D82BD8](v158);
  if (!v155)
  {
    return sub_22609A3B8();
  }

  v151 = v4[279];
  v134 = v4[278];
  v135 = v4[277];
  v131 = v4[276];
  v133 = v4[275];
  sub_226098A18();

  v142 = sub_226098A78();
  v4[296] = v142;
  v24 = *(v142 - 8);
  v141 = v24;
  v4[297] = v24;
  v138 = v24;
  v139 = *(v24 + 64);
  v137 = swift_task_alloc();
  v4[298] = v137;
  sub_226098A68();
  v132 = sub_225F4C7E0();
  v136 = swift_task_alloc();
  v135(v136, v132, v133);
  v143 = swift_task_alloc();
  v25 = *(v141 + 16);
  v4[299] = v25;
  v4[300] = (v141 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v143, v137, v142);
  v140 = (*(v138 + 80) + 16) & ~*(v138 + 80);
  v144 = swift_allocObject();
  (*(v141 + 32))(v144 + v140, v143, v142);

  v145 = swift_allocObject();
  *(v145 + 16) = sub_225F7CD90;
  *(v145 + 24) = v144;

  v152 = sub_226098C48();
  v153 = sub_22609A078();
  v147 = swift_allocObject();
  *(v147 + 16) = 32;
  v148 = swift_allocObject();
  *(v148 + 16) = 8;
  v146 = swift_allocObject();
  *(v146 + 16) = sub_225F7CE04;
  *(v146 + 24) = v145;
  v149 = swift_allocObject();
  *(v149 + 16) = sub_225EF7B84;
  *(v149 + 24) = v146;
  sub_22609A4F8();
  v150 = v26;

  *v150 = sub_225EF7434;
  v150[1] = v147;

  v150[2] = sub_225EF7434;
  v150[3] = v148;

  v150[4] = sub_225EF7B90;
  v150[5] = v149;
  sub_225EF5418();

  if (os_log_type_enabled(v152, v153))
  {
    v128 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v129 = sub_225EF5468(0);
    v130 = sub_225EF5468(1);
    v4[255] = v128;
    v4[256] = v129;
    v4[257] = v130;
    sub_225EF54BC(2, v4 + 255);
    sub_225EF54BC(1, v4 + 255);
    v4[172] = sub_225EF7434;
    v4[173] = v147;
    sub_225EF73E8((v4 + 172), (v4 + 255), (v4 + 256), (v4 + 257));
    v4[172] = sub_225EF7434;
    v4[173] = v148;
    sub_225EF73E8((v4 + 172), (v4 + 255), (v4 + 256), (v4 + 257));
    v4[172] = sub_225EF7B90;
    v4[173] = v149;
    sub_225EF73E8((v4 + 172), (v4 + 255), (v4 + 256), (v4 + 257));
    _os_log_impl(&dword_225EEB000, v152, v153, "ASRFullPayloadCorrectionWorker::dodMLID for SELF logs %s", v128, 0xCu);
    sub_225EF7AF4(v129);
    sub_225EF7AF4(v130);
    sub_22609A168();
  }

  v4[301] = 0;
  v126 = v4[281];
  v127 = v4[280];
  v125 = v4[275];
  v27 = v4[274];
  MEMORY[0x277D82BD8](v152);
  v127(v136, v125);

  v28 = mach_absolute_time();
  sub_225F58E70(v137, v28, v157);
  v29 = swift_task_alloc();
  v300[302] = v29;
  *v29 = v300[178];
  v29[1] = sub_225F67044;
  v30 = v300[274];

  return sub_225F5FED4(v161, v162, 0);
}

uint64_t sub_225F67044(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *v4;
  v6 = *(*v4 + 2416);
  *(v9 + 1424) = *v4;
  *(v9 + 2424) = a1;
  *(v9 + 2432) = a2;
  *(v9 + 75) = a3;
  *(v9 + 2440) = a4;

  v7 = *(v9 + 1424);

  return MEMORY[0x2822009F8](sub_225F67194, 0, 0);
}

uint64_t sub_225F67194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v425 = v4;
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v410 = v4;
  v414 = *(v4 + 2440);
  v5 = *(v4 + 75);
  v413 = v5;
  v412 = *(v4 + 2432);
  v411 = *(v4 + 2424);
  *(v4 + 1424) = v4;
  *(v4 + 504) = v411;
  *(v4 + 512) = v412;
  *(v4 + 520) = v5 & 1;
  *(v4 + 528) = v414;
  sub_225F7CED8(v411, v412, v5 & 1);
  sub_2260998E8();
  *(v4 + 1000) = v411;
  *(v4 + 1008) = v412;
  *(v4 + 1016) = v413 & 1;

  *(v4 + 1392) = 0;
  *(v4 + 1400) = 1;
  sub_225F7CED8(v411, v412, v413 & 1);
  sub_2260998E8();
  if (v414)
  {
    v304 = *(v4 + 2440);
    v19 = *(v4 + 75);
    v20 = *(v4 + 2432);
    v21 = *(v4 + 2424);
    v312 = *(v4 + 2232);
    v301 = *(v4 + 2224);
    v302 = *(v4 + 2216);
    v298 = *(v4 + 2208);
    v300 = *(v4 + 2200);
    *(v4 + 2000) = v304;
    sub_225F7C9EC(v21, v20, v19 & 1);
    v299 = sub_225F4C7E0();
    v303 = swift_task_alloc();
    v302(v303, v299, v300);
    sub_2260998E8();
    v305 = swift_allocObject();
    *(v305 + 16) = v304;

    v306 = swift_allocObject();
    *(v306 + 16) = sub_225F2CE08;
    *(v306 + 24) = v305;

    v313 = sub_226098C48();
    v314 = sub_22609A078();
    v308 = swift_allocObject();
    *(v308 + 16) = 32;
    v309 = swift_allocObject();
    *(v309 + 16) = 8;
    v307 = swift_allocObject();
    *(v307 + 16) = sub_225F4C3B4;
    *(v307 + 24) = v306;
    v310 = swift_allocObject();
    *(v310 + 16) = sub_225EF7B84;
    *(v310 + 24) = v307;
    sub_22609A4F8();
    v311 = v22;

    *v311 = sub_225EF7434;
    v311[1] = v308;

    v311[2] = sub_225EF7434;
    v311[3] = v309;

    v311[4] = sub_225EF7B90;
    v311[5] = v310;
    sub_225EF5418();

    if (os_log_type_enabled(v313, v314))
    {
      v23 = *(v4 + 2408);
      v292 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v293 = sub_225EF5468(0);
      v294 = sub_225EF5468(1);
      *(v4 + 2016) = v292;
      *(v4 + 2024) = v293;
      *(v4 + 2032) = v294;
      sub_225EF54BC(2, (v4 + 2016));
      sub_225EF54BC(1, (v4 + 2016));
      *(v4 + 1360) = sub_225EF7434;
      *(v4 + 1368) = v308;
      sub_225EF73E8(v4 + 1360, v4 + 2016, v4 + 2024, v4 + 2032);
      if (v23)
      {
        goto LABEL_68;
      }

      *(v4 + 1360) = sub_225EF7434;
      *(v4 + 1368) = v309;
      sub_225EF73E8(v4 + 1360, v4 + 2016, v4 + 2024, v4 + 2032);
      *(v4 + 1360) = sub_225EF7B90;
      *(v4 + 1368) = v310;
      sub_225EF73E8(v4 + 1360, v4 + 2016, v4 + 2024, v4 + 2032);
      _os_log_impl(&dword_225EEB000, v313, v314, "ASRFullPayloadCorrectionWorker::Logging Info %s", v292, 0xCu);
      sub_225EF7AF4(v293);
      sub_225EF7AF4(v294);
      sub_22609A168();

      v291 = 0;
      v290 = 0;
    }

    else
    {

      v291 = *(v4 + 2408);
    }

    v286 = *(v4 + 2248);
    v287 = *(v4 + 2240);
    v285 = *(v4 + 2200);
    MEMORY[0x277D82BD8](v313);
    v287(v303, v285);

    *(v4 + 1312) = sub_226099AA8();
    *(v4 + 1320) = v24;
    sub_226099938();
    sub_225EFE6BC(v4 + 1312);
    v288 = *(v4 + 1296);
    v289 = *(v4 + 1304);
    if (v289)
    {
      *(v4 + 1328) = v288;
      *(v4 + 1336) = v289;
      sub_2260998E8();
      *(v4 + 1344) = v288;
      *(v4 + 1352) = v289;
      sub_225F2CF00();
      v284 = COERCE_DOUBLE(sub_226099EB8());
      *(v4 + 1408) = v284;
      *(v4 + 1416) = v25 & 1;
      if (v25)
      {
        v280 = 0;
        v281 = 1;
      }

      else
      {
        *(v4 + 2008) = v284;
        if (((*&v284 >> 52) & 0x7FFLL) == 0x7FF || v284 <= -1.0 || v284 >= 1.84467441e19)
        {
          return sub_22609A3B8();
        }

        *(v4 + 1392) = v284;
        *(v4 + 1400) = 0;
        v280 = v284;
        v281 = 0;
      }

      v282 = v280;
      v283 = v281;
    }

    else
    {
      v282 = 0;
      v283 = 1;
    }

    v295 = v291;
    v296 = v282;
    v297 = v283;
    v279 = v290;
  }

  else
  {
    sub_225F7C9EC(*(v4 + 2424), *(v4 + 2432), *(v4 + 75) & 1);
    v295 = *(v4 + 2408);
    v296 = 0;
    v297 = 1;
  }

  if (*(v4 + 75))
  {
    v268 = *(v4 + 2424);
    v261 = *(v4 + 2384);
    v260 = *(v4 + 2360);
    v276 = *(v4 + 2232);
    v265 = *(v4 + 2224);
    v266 = *(v4 + 2216);
    v262 = *(v4 + 2208);
    v264 = *(v4 + 2200);
    v26 = *(v4 + 2192);
    v27 = v268;
    *(v4 + 1968) = v268;
    v28 = mach_absolute_time();
    sub_225F59320(v261, v28, v268, v296, v297 & 1, v260);
    v263 = sub_225F4C7E0();
    v267 = swift_task_alloc();
    v266(v267, v263, v264);
    v29 = v268;
    v269 = swift_allocObject();
    *(v269 + 16) = v268;
    sub_225F3EAE8();

    v277 = sub_226098C48();
    v278 = sub_22609A078();
    v272 = swift_allocObject();
    *(v272 + 16) = 64;
    v273 = swift_allocObject();
    *(v273 + 16) = 8;
    v270 = swift_allocObject();
    *(v270 + 16) = sub_225F3EA68;
    *(v270 + 24) = v269;
    v271 = swift_allocObject();
    *(v271 + 16) = sub_225F3EA70;
    *(v271 + 24) = v270;
    v274 = swift_allocObject();
    *(v274 + 16) = sub_225F3E1C8;
    *(v274 + 24) = v271;
    sub_22609A4F8();
    v275 = v30;

    *v275 = sub_225EF7434;
    v275[1] = v272;

    v275[2] = sub_225EF7434;
    v275[3] = v273;

    v275[4] = sub_225F3E358;
    v275[5] = v274;
    sub_225EF5418();

    if (os_log_type_enabled(v277, v278))
    {
      v257 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v258 = sub_225EF5468(1);
      v259 = sub_225EF5468(0);
      *(v4 + 1976) = v257;
      *(v4 + 1984) = v258;
      *(v4 + 1992) = v259;
      sub_225EF54BC(2, (v4 + 1976));
      sub_225EF54BC(1, (v4 + 1976));
      *(v4 + 1280) = sub_225EF7434;
      *(v4 + 1288) = v272;
      sub_225EF73E8(v4 + 1280, v4 + 1976, v4 + 1984, v4 + 1992);
      if (v295)
      {
        goto LABEL_68;
      }

      *(v4 + 1280) = sub_225EF7434;
      *(v4 + 1288) = v273;
      sub_225EF73E8(v4 + 1280, v4 + 1976, v4 + 1984, v4 + 1992);
      *(v4 + 1280) = sub_225F3E358;
      *(v4 + 1288) = v274;
      sub_225EF73E8(v4 + 1280, v4 + 1976, v4 + 1984, v4 + 1992);
      _os_log_impl(&dword_225EEB000, v277, v278, "ASRFullPayloadCorrectionWorker::Processing individual Biome record failed with error %@", v257, 0xCu);
      sub_225EF7AF4(v258);
      sub_225EF7AF4(v259);
      sub_22609A168();

      v255 = 0;
      v256 = 0;
    }

    else
    {

      v255 = v295;
      v256 = v279;
    }

    v250 = *(v4 + 2248);
    v251 = *(v4 + 2240);
    v249 = *(v4 + 2200);
    MEMORY[0x277D82BD8](v277);
    v251(v267, v249);

    v252 = v255;
    v253 = *(v4 + 74);
    v254 = v256;
    goto LABEL_89;
  }

  v239 = *(v4 + 2432);
  v238 = *(v4 + 2424);
  v231 = *(v4 + 2384);
  v228 = *(v4 + 2360);
  v229 = *(v4 + 2344);
  v246 = *(v4 + 2232);
  v235 = *(v4 + 2224);
  v236 = *(v4 + 2216);
  v232 = *(v4 + 2208);
  v234 = *(v4 + 2200);
  v31 = *(v4 + 2192);
  v230 = *(v4 + 2352);
  sub_2260998E8();
  *(v4 + 1104) = v238;
  *(v4 + 1112) = v239;
  *(v4 + 73) = 1;
  v32 = mach_absolute_time();
  sub_225F5A138(v231, v32, v296, v297 & 1, v229, v230, v238, v239, v228);
  v233 = sub_225F4C7E0();
  v237 = swift_task_alloc();
  v236(v237, v233, v234);
  sub_2260998E8();
  v240 = swift_allocObject();
  *(v240 + 16) = v238;
  *(v240 + 24) = v239;
  v247 = sub_226098C48();
  v248 = sub_22609A078();
  v242 = swift_allocObject();
  *(v242 + 16) = 32;
  v243 = swift_allocObject();
  *(v243 + 16) = 8;
  v241 = swift_allocObject();
  *(v241 + 16) = sub_225F7CF1C;
  *(v241 + 24) = v240;
  v244 = swift_allocObject();
  *(v244 + 16) = sub_225EF7B84;
  *(v244 + 24) = v241;
  sub_22609A4F8();
  v245 = v33;

  *v245 = sub_225EF7434;
  v245[1] = v242;

  v245[2] = sub_225EF7434;
  v245[3] = v243;

  v245[4] = sub_225EF7B90;
  v245[5] = v244;
  sub_225EF5418();

  if (os_log_type_enabled(v247, v248))
  {
    v225 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v226 = sub_225EF5468(0);
    v227 = sub_225EF5468(1);
    *(v4 + 1944) = v225;
    *(v4 + 1952) = v226;
    *(v4 + 1960) = v227;
    sub_225EF54BC(2, (v4 + 1944));
    sub_225EF54BC(1, (v4 + 1944));
    *(v4 + 1264) = sub_225EF7434;
    *(v4 + 1272) = v242;
    sub_225EF73E8(v4 + 1264, v4 + 1944, v4 + 1952, v4 + 1960);
    if (v295)
    {
      goto LABEL_68;
    }

    *(v4 + 1264) = sub_225EF7434;
    *(v4 + 1272) = v243;
    sub_225EF73E8(v4 + 1264, v4 + 1944, v4 + 1952, v4 + 1960);
    *(v4 + 1264) = sub_225EF7B90;
    *(v4 + 1272) = v244;
    sub_225EF73E8(v4 + 1264, v4 + 1944, v4 + 1952, v4 + 1960);
    _os_log_impl(&dword_225EEB000, v247, v248, "ASRFullPayloadCorrectionWorker::Processing individual Biome record succeeded with outputString: %s", v225, 0xCu);
    sub_225EF7AF4(v226);
    sub_225EF7AF4(v227);
    sub_22609A168();

    v223 = 0;
    v224 = 0;
  }

  else
  {

    v223 = v295;
    v224 = v279;
  }

  v222 = *(v4 + 2432);
  v220 = *(v4 + 2248);
  v221 = *(v4 + 2240);
  v219 = *(v4 + 2200);
  MEMORY[0x277D82BD8](v247);
  v221(v237, v219);

  sub_2260998E8();
  if (!v222)
  {
    v217 = v223;
LABEL_88:
    v42 = *(v4 + 2432);

    v252 = v217;
    v253 = 1;
    v254 = v224;
LABEL_89:
    v178 = *(v4 + 2440);
    v177 = *(v4 + 75);
    v176 = *(v4 + 2432);
    v175 = *(v4 + 2424);
    v181 = *(v4 + 2384);
    v180 = *(v4 + 2368);
    v182 = *(v4 + 2360);
    v179 = *(v4 + 2376);
    v183 = *(v4 + 2352);
    v184 = *(v4 + 2336);
    sub_225F7C9EC(v175, v176, v177 & 1);
    sub_225F7C9EC(v175, v176, v177 & 1);

    (*(v179 + 8))(v181, v180);

    sub_225F7C078(v182);

    MEMORY[0x277D82BD8](v184);
    *(v4 + 74) = v253 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786688, &qword_2260A0660);
    sub_22609A388();
    v409 = *(v4 + 1536);
    *(v4 + 2336) = v409;
    if (!v409)
    {
      v172 = *(v4 + 2192);
      sub_225EFE6E8((v4 + 1024));
      swift_beginAccess();
      v173 = *(v172 + 112);
      sub_2260998E8();
      swift_endAccess();
      v174 = sub_226099CD8();

      if (v174 <= 0)
      {
        v115 = v252;
      }

      else
      {
        v169 = *(v4 + 2192);
        swift_beginAccess();
        v170 = *(v169 + 112);
        sub_2260998E8();
        swift_endAccess();
        v171 = sub_226099CD8();

        if (v171 < 0)
        {
          return sub_22609A3B8();
        }

        v164 = *(v4 + 2192);
        *(v4 + 1040) = 0;
        *(v4 + 1048) = v171;
        sub_225EF9438();
        sub_22609A3A8();
        v163 = *(v4 + 1608);
        *(v4 + 1616) = v163;
        swift_beginAccess();
        v165 = *(v164 + 112);
        sub_2260998E8();
        swift_endAccess();
        *(v4 + 1632) = v165;
        v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786418, &unk_2260A0568);
        v43 = sub_225F7CD08();
        MEMORY[0x22AA72D20](v166, v43);
        sub_225EFE6E8((v4 + 1632));
        *(v4 + 1640) = *(v4 + 1624);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786698, &qword_2260A0668);
        sub_22609A3F8();
        v167 = v252;
        for (i = v254; ; i = v158)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7866A0, &qword_2260A0670);
          sub_22609A408();
          memcpy((v4 + 176), (v4 + 216), 0x28uLL);
          if (!*(v4 + 208))
          {
            break;
          }

          v162 = *(v4 + 176);
          *(v4 + 1648) = v162;
          sub_225EF9790(v4 + 184, v4 + 376);
          sub_225EF3E30(v4 + 376, v4 + 408);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
          if (swift_dynamicCast())
          {
            v161 = *(v4 + 1656);
          }

          else
          {
            v161 = 0;
          }

          *(v4 + 1664) = v161;
          sub_2260998E8();
          if (v161)
          {
            *(v4 + 1672) = v161;
            v159 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
            v160 = swift_task_alloc();
            *(v4 + 1056) = sub_226099AA8();
            *(v4 + 1064) = v44;
            sub_226099938();
            sub_225EFE6BC(v4 + 1056);
            if (*(v4 + 464))
            {
              v156 = sub_226098A78();
              v45 = swift_dynamicCast();
              if (v45)
              {
                (*(*(v156 - 8) + 56))(v160, 0, 1);
              }

              else
              {
                (*(*(v156 - 8) + 56))(v160, 1);
              }
            }

            else
            {
              sub_225F186BC((v4 + 440));
              v50 = sub_226098A78();
              (*(*(v50 - 8) + 56))(v160, 1);
            }

            *(v4 + 1072) = sub_226099AA8();
            *(v4 + 1080) = v46;
            sub_226099938();
            sub_225EFE6BC(v4 + 1072);
            if (*(v4 + 496))
            {
              if (swift_dynamicCast())
              {
                v155 = *(v4 + 1696);
              }

              else
              {
                v155 = 0;
              }

              v154 = v155;
            }

            else
            {
              sub_225F186BC((v4 + 472));
              v154 = 0;
            }

            *(v4 + 1680) = v154;
            v152 = sub_226098A78();
            v151 = *(v152 - 8);
            v149 = *(v151 + 64);
            v150 = swift_task_alloc();
            v153 = swift_task_alloc();
            sub_225F7BF50(v160, v153);
            if ((*(v151 + 48))(v153, 1, v152) == 1)
            {
              sub_225F7C078(v153);

              v147 = v167;
              v148 = i;
            }

            else
            {
              v146 = *(v151 + 32);
              v146(v150, v153, v152);

              sub_2260998E8();
              if (v154)
              {
                *(v4 + 1688) = v154;
                if (v163 == v162)
                {
                  v143 = *(v4 + 2232);
                  v131 = *(v4 + 2224);
                  v132 = *(v4 + 2216);
                  v128 = *(v4 + 2208);
                  v130 = *(v4 + 2200);
                  v129 = sub_225F4C7E0();
                  v133 = swift_task_alloc();
                  v132(v133, v129, v130);
                  v135 = swift_task_alloc();
                  (*(v151 + 16))(v135, v150, v152);
                  v134 = (*(v151 + 80) + 16) & ~*(v151 + 80);
                  v136 = swift_allocObject();
                  v146(v136 + v134, v135, v152);

                  v137 = swift_allocObject();
                  *(v137 + 16) = sub_225F7CD90;
                  *(v137 + 24) = v136;

                  v144 = sub_226098C48();
                  v145 = sub_22609A078();
                  v139 = swift_allocObject();
                  *(v139 + 16) = 32;
                  v140 = swift_allocObject();
                  *(v140 + 16) = 8;
                  v138 = swift_allocObject();
                  *(v138 + 16) = sub_225F7CE04;
                  *(v138 + 24) = v137;
                  v141 = swift_allocObject();
                  *(v141 + 16) = sub_225EF7B84;
                  *(v141 + 24) = v138;
                  sub_22609A4F8();
                  v142 = v47;

                  *v142 = sub_225EF7434;
                  v142[1] = v139;

                  v142[2] = sub_225EF7434;
                  v142[3] = v140;

                  v142[4] = sub_225EF7B90;
                  v142[5] = v141;
                  sub_225EF5418();

                  if (os_log_type_enabled(v144, v145))
                  {
                    v125 = sub_22609A188();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                    v126 = sub_225EF5468(0);
                    v127 = sub_225EF5468(1);
                    v415 = v125;
                    v416 = v126;
                    v417 = v127;
                    sub_225EF54BC(2, &v415);
                    sub_225EF54BC(1, &v415);
                    v418 = sub_225EF7434;
                    v419 = v139;
                    sub_225EF73E8(&v418, &v415, &v416, &v417);
                    if (v167)
                    {
                    }

                    v418 = sub_225EF7434;
                    v419 = v140;
                    sub_225EF73E8(&v418, &v415, &v416, &v417);
                    v418 = sub_225EF7B90;
                    v419 = v141;
                    sub_225EF73E8(&v418, &v415, &v416, &v417);
                    _os_log_impl(&dword_225EEB000, v144, v145, "ASRFullPayloadCorrectionWorker::Chosen record is %s", v125, 0xCu);
                    sub_225EF7AF4(v126);
                    sub_225EF7AF4(v127);
                    sub_22609A168();

                    v123 = 0;
                    v124 = 0;
                  }

                  else
                  {

                    v123 = v167;
                    v124 = i;
                  }

                  v118 = *(v4 + 2248);
                  v119 = *(v4 + 2240);
                  v117 = *(v4 + 2200);
                  v48 = *(v4 + 2192);
                  MEMORY[0x277D82BD8](v144);
                  v119(v133, v117);

                  sub_2260998E8();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
                  v120 = sub_22609A3E8();
                  sub_225F5D098(v150, v120, 1u);

                  v121 = v123;
                  v122 = v124;
                }

                else
                {
                  v49 = *(v4 + 2192);
                  sub_2260998E8();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
                  v116 = sub_22609A3E8();
                  sub_225F5D098(v150, v116, 0);

                  v121 = v167;
                  v122 = i;
                }

                (*(v151 + 8))(v150, v152);

                v147 = v121;
                v148 = v122;
              }

              else
              {
                (*(v151 + 8))(v150, v152);

                v147 = v167;
                v148 = i;
              }
            }

            sub_225F7C078(v160);

            v157 = v147;
            v158 = v148;
          }

          else
          {
            v157 = v167;
            v158 = i;
          }

          __swift_destroy_boxed_opaque_existential_0((v4 + 376));
          v167 = v157;
        }

        v114 = *(v4 + 2192);
        sub_225EFE6E8((v4 + 736));
        swift_beginAccess();
        sub_225F7B3F4();
        sub_226099CF8();
        swift_endAccess();
        v115 = v167;
      }

      v112 = *(v4 + 2320);
      swift_beginAccess();
      v113 = *(v112 + 16);
      swift_endAccess();
      if ((v113 & 1) == 0 || (v253 & 1) == 0)
      {
        goto LABEL_146;
      }

      v109 = *(v4 + 2312);
      swift_beginAccess();
      v110 = *(v109 + 16);
      swift_unknownObjectRetain();
      swift_endAccess();
      v111 = saveBookmark(1, v110);
      swift_unknownObjectRelease();
      if ((v111 & 1) == 0)
      {
        v105 = *(v4 + 2232);
        v102 = *(v4 + 2224);
        v103 = *(v4 + 2216);
        v99 = *(v4 + 2208);
        v101 = *(v4 + 2200);
        v100 = sub_225F4C7E0();
        v104 = swift_task_alloc();
        v103(v104, v100, v101);
        v107 = sub_226098C48();
        v106 = sub_22609A098();
        v108 = sub_22609A4F8();
        if (!os_log_type_enabled(v107, v106))
        {

          goto LABEL_139;
        }

        v95 = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v96 = sub_225EF5468(0);
        v97 = sub_225EF5468(0);
        *(v4 + 1544) = v95;
        *(v4 + 1552) = v96;
        *(v4 + 1560) = v97;
        sub_225EF54BC(0, (v4 + 1544));
        sub_225EF54BC(0, (v4 + 1544));
        *(v4 + 1568) = v108;
        v98 = swift_task_alloc();
        v98[2] = v4 + 1544;
        v98[3] = v4 + 1552;
        v98[4] = v4 + 1560;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        if (!v115)
        {

          _os_log_impl(&dword_225EEB000, v107, v106, "ASRFullPayloadCorrectionWorker::Biome bookmark failed to update", v95, 2u);
          sub_225EF7AF4(v96);
          sub_225EF7AF4(v97);
          sub_22609A168();

LABEL_139:
          v85 = *(v4 + 2328);
          v86 = *(v4 + 2320);
          v87 = *(v4 + 2312);
          v88 = *(v4 + 2304);
          v89 = *(v4 + 2296);
          v90 = *(v4 + 2288);
          v92 = *(v4 + 2280);
          v93 = *(v4 + 2272);
          v94 = *(v4 + 2264);
          v91 = *(v4 + 2256);
          v83 = *(v4 + 2248);
          v84 = *(v4 + 2240);
          v82 = *(v4 + 2200);
          MEMORY[0x277D82BD8](v107);
          v84(v104, v82);

          sub_225F7B6F4();
          swift_allocError();
          *v51 = 2;
          swift_willThrow();

          swift_unknownObjectRelease();
          MEMORY[0x277D82BD8](v89);
          MEMORY[0x277D82BD8](v90);
          v93(v94, v91);

LABEL_149:
          v53 = *(*(v4 + 1424) + 8);
          v55 = *(v4 + 1424);

          return v53();
        }
      }

      v78 = *(v4 + 2232);
      v75 = *(v4 + 2224);
      v76 = *(v4 + 2216);
      v72 = *(v4 + 2208);
      v74 = *(v4 + 2200);
      v73 = sub_225F4C7E0();
      v77 = swift_task_alloc();
      v76(v77, v73, v74);
      v80 = sub_226098C48();
      v79 = sub_22609A078();
      v81 = sub_22609A4F8();
      if (os_log_type_enabled(v80, v79))
      {
        v68 = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v69 = sub_225EF5468(0);
        v70 = sub_225EF5468(0);
        *(v4 + 1576) = v68;
        *(v4 + 1584) = v69;
        *(v4 + 1592) = v70;
        sub_225EF54BC(0, (v4 + 1576));
        sub_225EF54BC(0, (v4 + 1576));
        *(v4 + 1600) = v81;
        v71 = swift_task_alloc();
        v71[2] = v4 + 1576;
        v71[3] = v4 + 1584;
        v71[4] = v4 + 1592;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        if (v115)
        {
        }

        _os_log_impl(&dword_225EEB000, v80, v79, "ASRFullPayloadCorrectionWorker::Biome bookmark updated", v68, 2u);
        sub_225EF7AF4(v69);
        sub_225EF7AF4(v70);
        sub_22609A168();
      }

      else
      {
      }

      v66 = *(v4 + 2248);
      v67 = *(v4 + 2240);
      v65 = *(v4 + 2200);
      MEMORY[0x277D82BD8](v80);
      v67(v77, v65);

LABEL_146:
      v52 = *(v4 + 2328);
      v56 = *(v4 + 2320);
      v57 = *(v4 + 2312);
      v58 = *(v4 + 2304);
      v59 = *(v4 + 2296);
      v60 = *(v4 + 2288);
      v62 = *(v4 + 2280);
      v63 = *(v4 + 2272);
      v64 = *(v4 + 2264);
      v61 = *(v4 + 2256);

      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v60);
      v63(v64, v61);

      v53 = *(*(v4 + 1424) + 8);
      v54 = *(v4 + 1424);

      return v53();
    }

    *(v4 + 1704) = v409;
    if (sub_226099E58())
    {
      v406 = *(v4 + 2232);
      v393 = *(v4 + 2224);
      v394 = *(v4 + 2216);
      v390 = *(v4 + 2208);
      v392 = *(v4 + 2200);
      v397 = *(v4 + 2192);
      v391 = sub_225F4C7E0();
      v395 = swift_task_alloc();
      v394(v395, v391, v392);

      oslog = sub_226098C48();
      v408 = sub_22609A078();
      v399 = swift_allocObject();
      *(v399 + 16) = 32;
      v400 = swift_allocObject();
      *(v400 + 16) = 8;
      v396 = swift_allocObject();
      *(v396 + 16) = sub_225F7D2E0;
      *(v396 + 24) = v397;
      v401 = swift_allocObject();
      *(v401 + 16) = sub_225EF7B84;
      *(v401 + 24) = v396;
      v402 = swift_allocObject();
      *(v402 + 16) = 32;
      v403 = swift_allocObject();
      *(v403 + 16) = 8;
      v398 = swift_allocObject();
      *(v398 + 16) = sub_225F7D2E8;
      *(v398 + 24) = v397;
      v404 = swift_allocObject();
      *(v404 + 16) = sub_225EF7B84;
      *(v404 + 24) = v398;
      sub_22609A4F8();
      v405 = v6;

      *v405 = sub_225EF7434;
      v405[1] = v399;

      v405[2] = sub_225EF7434;
      v405[3] = v400;

      v405[4] = sub_225EF7B90;
      v405[5] = v401;

      v405[6] = sub_225EF7434;
      v405[7] = v402;

      v405[8] = sub_225EF7434;
      v405[9] = v403;

      v405[10] = sub_225EF7B90;
      v405[11] = v404;
      sub_225EF5418();

      if (os_log_type_enabled(oslog, v408))
      {
        buf = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v388 = sub_225EF5468(0);
        v389 = sub_225EF5468(2);
        v420 = buf;
        v421 = v388;
        v422 = v389;
        sub_225EF54BC(2, &v420);
        sub_225EF54BC(2, &v420);
        v423 = sub_225EF7434;
        v424 = v399;
        sub_225EF73E8(&v423, &v420, &v421, &v422);
        if (v252)
        {
        }

        v423 = sub_225EF7434;
        v424 = v400;
        sub_225EF73E8(&v423, &v420, &v421, &v422);
        v423 = sub_225EF7B90;
        v424 = v401;
        sub_225EF73E8(&v423, &v420, &v421, &v422);
        v423 = sub_225EF7434;
        v424 = v402;
        sub_225EF73E8(&v423, &v420, &v421, &v422);
        v423 = sub_225EF7434;
        v424 = v403;
        sub_225EF73E8(&v423, &v420, &v421, &v422);
        v423 = sub_225EF7B90;
        v424 = v404;
        sub_225EF73E8(&v423, &v420, &v421, &v422);
        _os_log_impl(&dword_225EEB000, oslog, v408, "TaskId: %s, TaskName: %s: asked to stop!", buf, 0x16u);
        sub_225EF7AF4(v388);
        sub_225EF7AF4(v389);
        sub_22609A168();
      }

      else
      {
      }

      v377 = *(v4 + 2328);
      v378 = *(v4 + 2320);
      v379 = *(v4 + 2312);
      v380 = *(v4 + 2304);
      v381 = *(v4 + 2296);
      v382 = *(v4 + 2288);
      v384 = *(v4 + 2280);
      v385 = *(v4 + 2272);
      v386 = *(v4 + 2264);
      v383 = *(v4 + 2256);
      v375 = *(v4 + 2248);
      v376 = *(v4 + 2240);
      v374 = *(v4 + 2200);
      MEMORY[0x277D82BD8](oslog);
      v376(v395, v374);

      sub_226099D58();
      sub_225F7D2F0();
      swift_allocError();
      sub_226099858();
      swift_willThrow();
      MEMORY[0x277D82BD8](v409);
      sub_225EFE6E8((v4 + 1024));

      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v381);
      MEMORY[0x277D82BD8](v382);
      v385(v386, v383);

      goto LABEL_149;
    }

    v370 = *(v4 + 2232);
    v367 = *(v4 + 2224);
    v368 = *(v4 + 2216);
    v364 = *(v4 + 2208);
    v366 = *(v4 + 2200);
    v365 = sub_225F4C7E0();
    v369 = swift_task_alloc();
    v368(v369, v365, v366);
    log = sub_226098C48();
    v371 = sub_22609A078();
    v373 = sub_22609A4F8();
    if (!os_log_type_enabled(log, v371))
    {

      v359 = v252;
LABEL_15:
      v356 = *(v4 + 2248);
      v357 = *(v4 + 2240);
      v355 = *(v4 + 2200);
      MEMORY[0x277D82BD8](log);
      v357(v369, v355);

      v358 = [v409 eventBody];
      if (!v358)
      {
        return sub_22609A3B8();
      }

      v354 = [v358 recognizedText];
      if (v354)
      {
        v350 = sub_226099A08();
        v351 = v8;
        MEMORY[0x277D82BD8](v354);
        v352 = v350;
        v353 = v351;
      }

      else
      {
        v352 = 0;
        v353 = 0;
      }

      *(v4 + 2352) = v353;
      *(v4 + 2344) = v352;
      MEMORY[0x277D82BD8](v358);
      if (!v353)
      {
        return sub_22609A3B8();
      }

      *(v4 + 1088) = v352;
      *(v4 + 1096) = v353;
      v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64) + 15;
      v348 = swift_task_alloc();
      *(v4 + 2360) = v348;
      v349 = [v409 eventBody];
      if (!v349)
      {
        return sub_22609A3B8();
      }

      v10 = [v349 asrID];
      v347 = v10;
      if (v10)
      {
        sub_226099A08();
        v345 = v11;
        MEMORY[0x277D82BD8](v347);
        v346 = v345;
      }

      else
      {
        v346 = 0;
      }

      MEMORY[0x277D82BD8](v349);
      if (!v346)
      {
        return sub_22609A3B8();
      }

      v342 = *(v4 + 2232);
      v325 = *(v4 + 2224);
      v326 = *(v4 + 2216);
      v322 = *(v4 + 2208);
      v324 = *(v4 + 2200);
      sub_226098A18();

      v333 = sub_226098A78();
      *(v4 + 2368) = v333;
      v12 = *(v333 - 8);
      v332 = v12;
      *(v4 + 2376) = v12;
      v329 = v12;
      v330 = *(v12 + 64);
      v328 = swift_task_alloc();
      *(v4 + 2384) = v328;
      sub_226098A68();
      v323 = sub_225F4C7E0();
      v327 = swift_task_alloc();
      v326(v327, v323, v324);
      v334 = swift_task_alloc();
      v13 = *(v332 + 16);
      *(v4 + 2392) = v13;
      *(v4 + 2400) = (v332 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v13(v334, v328, v333);
      v331 = (*(v329 + 80) + 16) & ~*(v329 + 80);
      v335 = swift_allocObject();
      (*(v332 + 32))(v335 + v331, v334, v333);

      v336 = swift_allocObject();
      *(v336 + 16) = sub_225F7CD90;
      *(v336 + 24) = v335;

      v343 = sub_226098C48();
      v344 = sub_22609A078();
      v338 = swift_allocObject();
      *(v338 + 16) = 32;
      v339 = swift_allocObject();
      *(v339 + 16) = 8;
      v337 = swift_allocObject();
      *(v337 + 16) = sub_225F7CE04;
      *(v337 + 24) = v336;
      v340 = swift_allocObject();
      *(v340 + 16) = sub_225EF7B84;
      *(v340 + 24) = v337;
      sub_22609A4F8();
      v341 = v14;

      *v341 = sub_225EF7434;
      v341[1] = v338;

      v341[2] = sub_225EF7434;
      v341[3] = v339;

      v341[4] = sub_225EF7B90;
      v341[5] = v340;
      sub_225EF5418();

      if (!os_log_type_enabled(v343, v344))
      {

        v318 = v359;
LABEL_35:
        *(v4 + 2408) = v318;
        v316 = *(v4 + 2248);
        v317 = *(v4 + 2240);
        v315 = *(v4 + 2200);
        v15 = *(v4 + 2192);
        MEMORY[0x277D82BD8](v343);
        v317(v327, v315);

        v16 = mach_absolute_time();
        sub_225F58E70(v328, v16, v348);
        v17 = swift_task_alloc();
        v410[302] = v17;
        *v17 = v410[178];
        v17[1] = sub_225F67044;
        v18 = v410[274];

        return sub_225F5FED4(v352, v353, 0);
      }

      v319 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v320 = sub_225EF5468(0);
      v321 = sub_225EF5468(1);
      *(v4 + 2040) = v319;
      *(v4 + 2048) = v320;
      *(v4 + 2056) = v321;
      sub_225EF54BC(2, (v4 + 2040));
      sub_225EF54BC(1, (v4 + 2040));
      *(v4 + 1376) = sub_225EF7434;
      *(v4 + 1384) = v338;
      sub_225EF73E8(v4 + 1376, v4 + 2040, v4 + 2048, v4 + 2056);
      if (!v359)
      {
        *(v4 + 1376) = sub_225EF7434;
        *(v4 + 1384) = v339;
        sub_225EF73E8(v4 + 1376, v4 + 2040, v4 + 2048, v4 + 2056);
        *(v4 + 1376) = sub_225EF7B90;
        *(v4 + 1384) = v340;
        sub_225EF73E8(v4 + 1376, v4 + 2040, v4 + 2048, v4 + 2056);
        _os_log_impl(&dword_225EEB000, v343, v344, "ASRFullPayloadCorrectionWorker::dodMLID for SELF logs %s", v319, 0xCu);
        sub_225EF7AF4(v320);
        sub_225EF7AF4(v321);
        sub_22609A168();

        v318 = 0;
        goto LABEL_35;
      }

LABEL_68:
    }

    v360 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v361 = sub_225EF5468(0);
    v362 = sub_225EF5468(0);
    *(v4 + 2064) = v360;
    *(v4 + 2072) = v361;
    *(v4 + 2080) = v362;
    sub_225EF54BC(0, (v4 + 2064));
    sub_225EF54BC(0, (v4 + 2064));
    *(v4 + 2088) = v373;
    v363 = swift_task_alloc();
    v363[2] = v4 + 2064;
    v363[3] = v4 + 2072;
    v363[4] = v4 + 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (!v252)
    {

      _os_log_impl(&dword_225EEB000, log, v371, "ASRFullPayloadCorrectionWorker::Processing individual Biome record", v360, 2u);
      sub_225EF7AF4(v361);
      sub_225EF7AF4(v362);
      sub_22609A168();

      v359 = 0;
      goto LABEL_15;
    }
  }

  v34 = *(v4 + 2432);
  v35 = *(v4 + 2336);
  *(v4 + 1120) = *(v4 + 2424);
  *(v4 + 1128) = v34;
  v218 = [v35 eventBody];
  if (v218)
  {
    v36 = [v218 correctedText];
    v216 = v36;
    if (v36)
    {
      v212 = sub_226099A08();
      v213 = v37;
      MEMORY[0x277D82BD8](v216);
      v214 = v212;
      v215 = v213;
    }

    else
    {
      v214 = 0;
      v215 = 0;
    }

    MEMORY[0x277D82BD8](v218);
    v210 = v214;
    v211 = v215;
  }

  else
  {
    v210 = 0;
    v211 = 0;
  }

  *(v4 + 2456) = v211;
  *(v4 + 2448) = v210;
  if (!v211)
  {

    v217 = v223;
    goto LABEL_88;
  }

  v206 = *(v4 + 2232);
  v203 = *(v4 + 2224);
  v204 = *(v4 + 2216);
  v200 = *(v4 + 2208);
  v202 = *(v4 + 2200);
  *(v4 + 1136) = v210;
  *(v4 + 1144) = v211;
  v201 = sub_225F4C7E0();
  v205 = swift_task_alloc();
  v204(v205, v201, v202);
  v208 = sub_226098C48();
  v207 = sub_22609A078();
  v209 = sub_22609A4F8();
  if (os_log_type_enabled(v208, v207))
  {
    v196 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v197 = sub_225EF5468(0);
    v198 = sub_225EF5468(0);
    *(v4 + 1912) = v196;
    *(v4 + 1920) = v197;
    *(v4 + 1928) = v198;
    sub_225EF54BC(0, (v4 + 1912));
    sub_225EF54BC(0, (v4 + 1912));
    *(v4 + 1936) = v209;
    v199 = swift_task_alloc();
    v199[2] = v4 + 1912;
    v199[3] = v4 + 1920;
    v199[4] = v4 + 1928;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v223)
    {
    }

    _os_log_impl(&dword_225EEB000, v208, v207, "ASRFullPayloadCorrectionWorker::Generating confusion pairs for chosen record", v196, 2u);
    sub_225EF7AF4(v197);
    sub_225EF7AF4(v198);
    sub_22609A168();
  }

  else
  {
  }

  v188 = *(v4 + 2344);
  v186 = *(v4 + 2248);
  v187 = *(v4 + 2240);
  v185 = *(v4 + 2200);
  v189 = *(v4 + 2352);
  MEMORY[0x277D82BD8](v208);
  v187(v205, v185);

  v195 = sub_225F51708(v188, v189);
  v190 = v38;
  *(v4 + 2464) = v38;
  v191 = sub_225F51708(v210, v211);
  v192 = v39;
  *(v4 + 2472) = v39;
  v193 = sub_226099AA8();
  v194 = v40;
  *(v4 + 2480) = v40;
  v41 = swift_task_alloc();
  v410[311] = v41;
  *v41 = v410[178];
  v41[1] = sub_225F6DD20;

  return sub_225F518C4(v195, v190, v191, v192, v193, v194);
}

uint64_t sub_225F6DD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *v3;
  v5 = *(*v3 + 2488);
  v8 = *(*v3 + 2480);
  v9 = *(*v3 + 2472);
  v10 = *(*v3 + 2464);
  v11[178] = *v3;
  v11[312] = a1;
  v11[313] = a2;
  v11[314] = a3;

  v6 = v11[178];

  return MEMORY[0x2822009F8](sub_225F6DEAC, 0, 0);
}

uint64_t sub_225F6DEAC()
{
  v1 = v0[314];
  v10 = v0[313];
  v9 = v0[312];
  v0[178] = v0;
  v0[101] = v9;
  v0[102] = v10;
  v0[103] = v1;
  v2 = sub_226099AA8();
  v14 = sub_225F54384(v9, v10, v2, v3);
  v12 = v4;
  v13 = v5;
  v0[315] = v14;
  v0[316] = v4;
  v0[317] = v5;

  v0[104] = v14;
  v0[105] = v12;
  v0[106] = v13;
  v6 = swift_task_alloc();
  v11[318] = v6;
  *v6 = v11[178];
  v6[1] = sub_225F6E048;
  v7 = v11[274];

  return sub_225F5B548(v14, v12, v13);
}

uint64_t sub_225F6E048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *v4;
  v11 = v12 + 178;
  v6 = *(*v4 + 2544);
  v12[178] = *v4;
  v12[319] = v3;
  v12[320] = a1;
  v12[321] = a2;
  v12[322] = a3;

  if (v3)
  {
    v9 = *v11;
    v8 = sub_225F78B88;
  }

  else
  {
    v7 = *v11;
    v8 = sub_225F6E1D0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_225F6E1D0()
{
  v92 = v0[322];
  v90 = v0[321];
  v89 = v0[320];
  v0[178] = v0;
  v0[113] = v89;
  v0[114] = v90;
  v0[115] = v92;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
  v0[229] = sub_22609A4F8();
  v0[230] = v89;
  v0[231] = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3006C();
  sub_22609A538();
  v1 = v0[149];
  v0[150] = v0[148];
  v0[151] = v1;
  v0[232] = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786528, &qword_2260A05D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786478, &unk_2260A0DF0);
  sub_225F7C328();
  sub_225F7D194();
  sub_22609A538();
  sub_225F7C3B0(v0 + 150);
  v2 = v0[117];
  v3 = v0[118];
  v0[119] = v0[116];
  v0[120] = v2;
  v0[121] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7866C8, &qword_2260A0680);
  sub_22609A288();
  v93 = v0[319];
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7866D0, &qword_2260A0688);
    sub_22609A298();
    v82 = *(v87 + 336);
    v83 = *(v87 + 344);
    v84 = *(v87 + 352);
    v85 = *(v87 + 360);
    v86 = *(v87 + 368);
    if (!v83)
    {
      break;
    }

    v78 = *(v87 + 2232);
    v69 = *(v87 + 2224);
    v70 = *(v87 + 2216);
    v66 = *(v87 + 2208);
    v68 = *(v87 + 2200);
    *(v87 + 1216) = v82;
    *(v87 + 1224) = v83;
    *(v87 + 1232) = v84;
    *(v87 + 1240) = v85;
    *(v87 + 1872) = v86;
    v67 = sub_225F4C7E0();
    v71 = swift_task_alloc();
    v70(v71, v67, v68);
    v72 = swift_allocObject();
    *(v72 + 16) = v86;
    oslog = sub_226098C48();
    v80 = sub_22609A078();
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    v75 = swift_allocObject();
    *(v75 + 16) = 8;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_225F2D734;
    *(v73 + 24) = v72;
    v76 = swift_allocObject();
    *(v76 + 16) = sub_225F2D374;
    *(v76 + 24) = v73;
    sub_22609A4F8();
    v77 = v4;

    *v77 = sub_225EF7434;
    v77[1] = v74;

    v77[2] = sub_225EF7434;
    v77[3] = v75;

    v77[4] = sub_225EF71D0;
    v77[5] = v76;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v80))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v64 = sub_225EF5468(0);
      v65 = sub_225EF5468(0);
      *(v87 + 1888) = buf;
      *(v87 + 1896) = v64;
      *(v87 + 1904) = v65;
      sub_225EF54BC(0, (v87 + 1888));
      sub_225EF54BC(1, (v87 + 1888));
      *(v87 + 1248) = sub_225EF7434;
      *(v87 + 1256) = v74;
      sub_225EF73E8(v87 + 1248, v87 + 1888, v87 + 1896, v87 + 1904);
      if (v93)
      {
      }

      *(v87 + 1248) = sub_225EF7434;
      *(v87 + 1256) = v75;
      sub_225EF73E8(v87 + 1248, v87 + 1888, v87 + 1896, v87 + 1904);
      *(v87 + 1248) = sub_225EF71D0;
      *(v87 + 1256) = v76;
      sub_225EF73E8(v87 + 1248, v87 + 1888, v87 + 1896, v87 + 1904);
      _os_log_impl(&dword_225EEB000, oslog, v80, "ASRFullPayloadCorrectionWorker:: ConfusionPair at index %ld", buf, 0xCu);
      sub_225EF7AF4(v64);
      sub_225EF7AF4(v65);
      sub_22609A168();

      v61 = 0;
      v62 = 0;
    }

    else
    {

      v61 = v93;
      v62 = v81;
    }

    v54 = *(v87 + 2248);
    v55 = *(v87 + 2240);
    v53 = *(v87 + 2200);
    MEMORY[0x277D82BD8](oslog);
    v55(v71, v53);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786C70, &qword_2260A0560);
    sub_22609A4F8();
    v60 = v6;
    *v6 = sub_226099AA8();
    v60[1] = v7;
    v56 = sub_22609A4F8();
    v57 = v8;
    sub_2260998E8();
    *v57 = v82;
    v57[1] = v83;
    sub_225EF5418();
    v60[5] = v91;
    v60[2] = v56;
    v60[6] = sub_226099AA8();
    v60[7] = v9;
    v58 = sub_22609A4F8();
    v59 = v10;
    sub_2260998E8();
    *v59 = v84;
    v59[1] = v85;
    sub_225EF5418();
    v60[11] = v91;
    v60[8] = v58;
    v60[12] = sub_226099AA8();
    v60[13] = v11;
    v60[17] = MEMORY[0x277D83B88];
    v60[14] = v86;
    sub_225EF5418();
    *(v87 + 1880) = sub_2260998A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862D0, &qword_2260A0530);
    sub_226099CE8();

    v93 = v61;
    v81 = v62;
  }

  v47 = *(v87 + 2424);
  v48 = *(v87 + 2432);
  sub_225F7D21C((v87 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786C70, &qword_2260A0560);
  sub_22609A4F8();
  v49 = v12;
  *v12 = sub_226099AA8();
  v49[1] = v13;
  sub_2260998E8();
  v49[5] = MEMORY[0x277D837D0];
  v49[2] = v47;
  v49[3] = v48;
  v49[6] = sub_226099AA8();
  v49[7] = v14;
  v51 = *(v87 + 1832);
  sub_2260998E8();
  sub_2260998E8();
  v49[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862D0, &qword_2260A0530);
  v49[8] = v51;
  sub_225EF5418();
  v50 = sub_2260998A8();
  *(v87 + 1864) = v50;
  v52 = sub_226099CD8();

  if (v52 > 0)
  {
    v43 = *(v87 + 2400);
    v44 = *(v87 + 2392);
    v41 = *(v87 + 2384);
    v42 = *(v87 + 2368);
    v46 = *(v87 + 2192);
    sub_22609A4F8();
    v45 = v15;
    v40 = v15 + 2;
    *v15 = sub_226099AA8();
    v45[1] = v16;
    v45[5] = v42;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v40);
    v44(boxed_opaque_existential_0, v41, v42);
    v45[6] = sub_226099AA8();
    v45[7] = v18;
    sub_2260998E8();
    v45[11] = v88;
    v45[8] = v50;
    sub_225EF5418();
    v19 = sub_2260998A8();
    *(v87 + 560) = v88;
    *(v87 + 536) = v19;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786418, &unk_2260A0568);
    sub_226099CE8();
    swift_endAccess();
  }

  v26 = *(v87 + 2576);
  v25 = *(v87 + 2568);
  v24 = *(v87 + 2560);
  v29 = *(v87 + 2536);
  v28 = *(v87 + 2528);
  v27 = *(v87 + 2520);
  v31 = *(v87 + 2504);
  v30 = *(v87 + 2496);

  sub_225EFE6E8((v87 + 1832));

  *(v87 + 2584) = v93;
  v32 = *(v87 + 2448);
  v33 = *(v87 + 2456);
  v39 = sub_225F51708(*(v87 + 2344), *(v87 + 2352));
  v34 = v20;
  *(v87 + 2592) = v20;
  v35 = sub_225F51708(v32, v33);
  v36 = v21;
  *(v87 + 2600) = v21;
  v37 = sub_226099AA8();
  v38 = v22;
  *(v87 + 2608) = v22;
  v23 = swift_task_alloc();
  *(v87 + 2616) = v23;
  *v23 = *(v87 + 1424);
  v23[1] = sub_225F6F5A4;

  return sub_225F518C4(v39, v34, v35, v36, v37, v38);
}

uint64_t sub_225F6F5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *v3;
  v5 = *(*v3 + 2616);
  v8 = *(*v3 + 2608);
  v9 = *(*v3 + 2600);
  v10 = *(*v3 + 2592);
  v11[178] = *v3;
  v11[328] = a1;
  v11[329] = a2;
  v11[330] = a3;

  v6 = v11[178];

  return MEMORY[0x2822009F8](sub_225F6F730, 0, 0);
}

uint64_t sub_225F6F730()
{
  v1 = v0[330];
  v2 = v0[329];
  v3 = v0[328];
  v12 = v0[307];
  v11 = v0[306];
  v4 = v0[304];
  v5 = v0[303];
  v0[178] = v0;
  v0[107] = v3;
  v0[108] = v2;
  v0[109] = v1;
  v19 = sub_225F51708(v5, v4);
  v14 = v6;
  v0[331] = v6;
  v15 = sub_225F51708(v11, v12);
  v16 = v7;
  v0[332] = v7;
  v17 = sub_226099AA8();
  v18 = v8;
  v0[333] = v8;
  v9 = swift_task_alloc();
  *(v13 + 2672) = v9;
  *v9 = *(v13 + 1424);
  v9[1] = sub_225F6F884;

  return sub_225F518C4(v19, v14, v15, v16, v17, v18);
}

uint64_t sub_225F6F884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *v3;
  v5 = *(*v3 + 2672);
  v8 = *(*v3 + 2664);
  v9 = *(*v3 + 2656);
  v10 = *(*v3 + 2648);
  v11[178] = *v3;
  v11[335] = a1;
  v11[336] = a2;
  v11[337] = a3;

  v6 = v11[178];

  return MEMORY[0x2822009F8](sub_225F6FA10, 0, 0);
}

uint64_t sub_225F6FA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v419 = v4;
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v363 = v4;
  v5 = *(v4 + 2696);
  v6 = *(v4 + 2688);
  v7 = *(v4 + 2680);
  v365 = *(v4 + 2632);
  v364 = *(v4 + 2624);
  v404 = *(v4 + 2232);
  v369 = *(v4 + 2224);
  v370 = *(v4 + 2216);
  v366 = *(v4 + 2208);
  v368 = *(v4 + 2200);
  *(v4 + 1424) = v4;
  *(v4 + 880) = v7;
  *(v4 + 888) = v6;
  *(v4 + 896) = v5;
  v8 = sub_226099AA8();
  sub_225F539A8(v364, v365, v8, v9, v412);
  v372 = v412[0];
  v373 = v412[1];
  v374 = v412[2];
  v375 = v412[3];
  v376 = v412[4];

  *(v4 + 256) = v372;
  *(v4 + 264) = v373;
  *(v4 + 272) = v374;
  *(v4 + 280) = v375;
  *(v4 + 288) = v376;
  v367 = sub_225F4C7E0();
  v371 = swift_task_alloc();
  v370(v371, v367, v368);
  sub_2260998E8();
  v378 = swift_allocObject();
  v378[2] = v372;
  v378[3] = v373;
  v378[4] = v374;
  v378[5] = v375;
  v378[6] = v376;
  sub_2260998E8();
  v380 = swift_allocObject();
  v380[2] = v372;
  v380[3] = v373;
  v380[4] = v374;
  v380[5] = v375;
  v380[6] = v376;
  sub_2260998E8();
  v382 = swift_allocObject();
  v382[2] = v372;
  v382[3] = v373;
  v382[4] = v374;
  v382[5] = v375;
  v382[6] = v376;
  sub_2260998E8();
  v384 = swift_allocObject();
  v384[2] = v372;
  v384[3] = v373;
  v384[4] = v374;
  v384[5] = v375;
  v384[6] = v376;
  sub_2260998E8();
  v377 = swift_allocObject();
  v377[2] = v372;
  v377[3] = v373;
  v377[4] = v374;
  v377[5] = v375;
  v377[6] = v376;

  v386 = swift_allocObject();
  *(v386 + 16) = sub_225F7D058;
  *(v386 + 24) = v377;

  oslog = sub_226098C48();
  v406 = sub_22609A078();
  v388 = swift_allocObject();
  *(v388 + 16) = 0;
  v389 = swift_allocObject();
  *(v389 + 16) = 8;
  v379 = swift_allocObject();
  *(v379 + 16) = sub_225F7CF28;
  *(v379 + 24) = v378;
  v390 = swift_allocObject();
  *(v390 + 16) = sub_225F2D374;
  *(v390 + 24) = v379;
  v391 = swift_allocObject();
  *(v391 + 16) = 0;
  v392 = swift_allocObject();
  *(v392 + 16) = 8;
  v381 = swift_allocObject();
  *(v381 + 16) = sub_225F7CF74;
  *(v381 + 24) = v380;
  v393 = swift_allocObject();
  *(v393 + 16) = sub_225F2D374;
  *(v393 + 24) = v381;
  v394 = swift_allocObject();
  *(v394 + 16) = 0;
  v395 = swift_allocObject();
  *(v395 + 16) = 8;
  v383 = swift_allocObject();
  *(v383 + 16) = sub_225F7CFC0;
  *(v383 + 24) = v382;
  v396 = swift_allocObject();
  *(v396 + 16) = sub_225F2D374;
  *(v396 + 24) = v383;
  v397 = swift_allocObject();
  *(v397 + 16) = 0;
  v398 = swift_allocObject();
  *(v398 + 16) = 8;
  v385 = swift_allocObject();
  *(v385 + 16) = sub_225F7D00C;
  *(v385 + 24) = v384;
  v399 = swift_allocObject();
  *(v399 + 16) = sub_225F2D374;
  *(v399 + 24) = v385;
  v400 = swift_allocObject();
  *(v400 + 16) = 32;
  v401 = swift_allocObject();
  *(v401 + 16) = 8;
  v387 = swift_allocObject();
  *(v387 + 16) = sub_225F7D0A4;
  *(v387 + 24) = v386;
  v402 = swift_allocObject();
  *(v402 + 16) = sub_225EF7B84;
  *(v402 + 24) = v387;
  sub_22609A4F8();
  v403 = v10;

  *v403 = sub_225EF7434;
  v403[1] = v388;

  v403[2] = sub_225EF7434;
  v403[3] = v389;

  v403[4] = sub_225EF71D0;
  v403[5] = v390;

  v403[6] = sub_225EF7434;
  v403[7] = v391;

  v403[8] = sub_225EF7434;
  v403[9] = v392;

  v403[10] = sub_225EF71D0;
  v403[11] = v393;

  v403[12] = sub_225EF7434;
  v403[13] = v394;

  v403[14] = sub_225EF7434;
  v403[15] = v395;

  v403[16] = sub_225EF71D0;
  v403[17] = v396;

  v403[18] = sub_225EF7434;
  v403[19] = v397;

  v403[20] = sub_225EF7434;
  v403[21] = v398;

  v403[22] = sub_225EF71D0;
  v403[23] = v399;

  v403[24] = sub_225EF7434;
  v403[25] = v400;

  v403[26] = sub_225EF7434;
  v403[27] = v401;

  v403[28] = sub_225EF7B90;
  v403[29] = v402;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v406))
  {
    v25 = *(v4 + 2584);
    v265 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v266 = sub_225EF5468(0);
    v267 = sub_225EF5468(1);
    *(v4 + 1776) = v265;
    *(v4 + 1784) = v266;
    *(v4 + 1792) = v267;
    sub_225EF54BC(2, (v4 + 1776));
    sub_225EF54BC(5, (v4 + 1776));
    *(v4 + 1168) = sub_225EF7434;
    *(v4 + 1176) = v388;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    if (v25)
    {
      goto LABEL_40;
    }

    *(v4 + 1168) = sub_225EF7434;
    *(v4 + 1176) = v389;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF71D0;
    *(v4 + 1176) = v390;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF7434;
    *(v4 + 1176) = v391;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF7434;
    *(v4 + 1176) = v392;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF71D0;
    *(v4 + 1176) = v393;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF7434;
    *(v4 + 1176) = v394;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF7434;
    *(v4 + 1176) = v395;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF71D0;
    *(v4 + 1176) = v396;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF7434;
    *(v4 + 1176) = v397;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF7434;
    *(v4 + 1176) = v398;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF71D0;
    *(v4 + 1176) = v399;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF7434;
    *(v4 + 1176) = v400;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF7434;
    *(v4 + 1176) = v401;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    *(v4 + 1168) = sub_225EF7B90;
    *(v4 + 1176) = v402;
    sub_225EF73E8(v4 + 1168, v4 + 1776, v4 + 1784, v4 + 1792);
    _os_log_impl(&dword_225EEB000, oslog, v406, "FullPayloadCorrector:: asrOutputToUserEditAlignmentInfo Substitutions: %ld Insertions: %ld Deletions %ld referenceSize %ld correctIndexes %s", v265, 0x34u);
    sub_225EF7AF4(v266);
    sub_225EF7AF4(v267);
    sub_22609A168();

    v264 = 0;
    v263 = 0;
  }

  else
  {

    v264 = *(v4 + 2584);
  }

  v221 = *(v4 + 2688);
  v220 = *(v4 + 2680);
  v218 = *(v4 + 2248);
  v219 = *(v4 + 2240);
  v260 = *(v4 + 2232);
  v225 = *(v4 + 2224);
  v226 = *(v4 + 2216);
  v222 = *(v4 + 2208);
  v224 = *(v4 + 2200);
  MEMORY[0x277D82BD8](oslog);
  v219(v371, v224);

  v26 = sub_226099AA8();
  sub_225F539A8(v220, v221, v26, v27, v413);
  v228 = v413[0];
  v229 = v413[1];
  v230 = v413[2];
  v231 = v413[3];
  v232 = v413[4];

  *(v4 + 296) = v228;
  *(v4 + 304) = v229;
  *(v4 + 312) = v230;
  *(v4 + 320) = v231;
  *(v4 + 328) = v232;
  v223 = sub_225F4C7E0();
  v227 = swift_task_alloc();
  v226(v227, v223, v224);
  sub_2260998E8();
  v234 = swift_allocObject();
  v234[2] = v228;
  v234[3] = v229;
  v234[4] = v230;
  v234[5] = v231;
  v234[6] = v232;
  sub_2260998E8();
  v236 = swift_allocObject();
  v236[2] = v228;
  v236[3] = v229;
  v236[4] = v230;
  v236[5] = v231;
  v236[6] = v232;
  sub_2260998E8();
  v238 = swift_allocObject();
  v238[2] = v228;
  v238[3] = v229;
  v238[4] = v230;
  v238[5] = v231;
  v238[6] = v232;
  sub_2260998E8();
  v240 = swift_allocObject();
  v240[2] = v228;
  v240[3] = v229;
  v240[4] = v230;
  v240[5] = v231;
  v240[6] = v232;
  sub_2260998E8();
  v233 = swift_allocObject();
  v233[2] = v228;
  v233[3] = v229;
  v233[4] = v230;
  v233[5] = v231;
  v233[6] = v232;

  v242 = swift_allocObject();
  *(v242 + 16) = sub_225F7D058;
  *(v242 + 24) = v233;

  v261 = sub_226098C48();
  v262 = sub_22609A078();
  v244 = swift_allocObject();
  *(v244 + 16) = 0;
  v245 = swift_allocObject();
  *(v245 + 16) = 8;
  v235 = swift_allocObject();
  *(v235 + 16) = sub_225F7CF28;
  *(v235 + 24) = v234;
  v246 = swift_allocObject();
  *(v246 + 16) = sub_225F2D374;
  *(v246 + 24) = v235;
  v247 = swift_allocObject();
  *(v247 + 16) = 0;
  v248 = swift_allocObject();
  *(v248 + 16) = 8;
  v237 = swift_allocObject();
  *(v237 + 16) = sub_225F7CF74;
  *(v237 + 24) = v236;
  v249 = swift_allocObject();
  *(v249 + 16) = sub_225F2D374;
  *(v249 + 24) = v237;
  v250 = swift_allocObject();
  *(v250 + 16) = 0;
  v251 = swift_allocObject();
  *(v251 + 16) = 8;
  v239 = swift_allocObject();
  *(v239 + 16) = sub_225F7CFC0;
  *(v239 + 24) = v238;
  v252 = swift_allocObject();
  *(v252 + 16) = sub_225F2D374;
  *(v252 + 24) = v239;
  v253 = swift_allocObject();
  *(v253 + 16) = 0;
  v254 = swift_allocObject();
  *(v254 + 16) = 8;
  v241 = swift_allocObject();
  *(v241 + 16) = sub_225F7D00C;
  *(v241 + 24) = v240;
  v255 = swift_allocObject();
  *(v255 + 16) = sub_225F2D374;
  *(v255 + 24) = v241;
  v256 = swift_allocObject();
  *(v256 + 16) = 32;
  v257 = swift_allocObject();
  *(v257 + 16) = 8;
  v243 = swift_allocObject();
  *(v243 + 16) = sub_225F7D0A4;
  *(v243 + 24) = v242;
  v258 = swift_allocObject();
  *(v258 + 16) = sub_225EF7B84;
  *(v258 + 24) = v243;
  sub_22609A4F8();
  v259 = v28;

  *v259 = sub_225EF7434;
  v259[1] = v244;

  v259[2] = sub_225EF7434;
  v259[3] = v245;

  v259[4] = sub_225EF71D0;
  v259[5] = v246;

  v259[6] = sub_225EF7434;
  v259[7] = v247;

  v259[8] = sub_225EF7434;
  v259[9] = v248;

  v259[10] = sub_225EF71D0;
  v259[11] = v249;

  v259[12] = sub_225EF7434;
  v259[13] = v250;

  v259[14] = sub_225EF7434;
  v259[15] = v251;

  v259[16] = sub_225EF71D0;
  v259[17] = v252;

  v259[18] = sub_225EF7434;
  v259[19] = v253;

  v259[20] = sub_225EF7434;
  v259[21] = v254;

  v259[22] = sub_225EF71D0;
  v259[23] = v255;

  v259[24] = sub_225EF7434;
  v259[25] = v256;

  v259[26] = sub_225EF7434;
  v259[27] = v257;

  v259[28] = sub_225EF7B90;
  v259[29] = v258;
  sub_225EF5418();

  if (os_log_type_enabled(v261, v262))
  {
    v215 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v216 = sub_225EF5468(0);
    v217 = sub_225EF5468(1);
    *(v4 + 1752) = v215;
    *(v4 + 1760) = v216;
    *(v4 + 1768) = v217;
    sub_225EF54BC(2, (v4 + 1752));
    sub_225EF54BC(5, (v4 + 1752));
    *(v4 + 1152) = sub_225EF7434;
    *(v4 + 1160) = v244;
    sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
    if (!v264)
    {
      *(v4 + 1152) = sub_225EF7434;
      *(v4 + 1160) = v245;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF71D0;
      *(v4 + 1160) = v246;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF7434;
      *(v4 + 1160) = v247;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF7434;
      *(v4 + 1160) = v248;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF71D0;
      *(v4 + 1160) = v249;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF7434;
      *(v4 + 1160) = v250;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF7434;
      *(v4 + 1160) = v251;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF71D0;
      *(v4 + 1160) = v252;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF7434;
      *(v4 + 1160) = v253;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF7434;
      *(v4 + 1160) = v254;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF71D0;
      *(v4 + 1160) = v255;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF7434;
      *(v4 + 1160) = v256;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF7434;
      *(v4 + 1160) = v257;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      *(v4 + 1152) = sub_225EF7B90;
      *(v4 + 1160) = v258;
      sub_225EF73E8(v4 + 1152, v4 + 1752, v4 + 1760, v4 + 1768);
      _os_log_impl(&dword_225EEB000, v261, v262, "FullPayloadCorrector:: asrFullPayloadCorrectedToUserEditAlignmentInfo Substitutions: %ld Insertions: %ld Deletions %ld referenceSize %ld correctIndexes %s", v215, 0x34u);
      sub_225EF7AF4(v216);
      sub_225EF7AF4(v217);
      sub_22609A168();

      v213 = 0;
      v214 = 0;
      goto LABEL_46;
    }

LABEL_40:
  }

  v213 = v264;
  v214 = v263;
LABEL_46:
  v210 = *(v4 + 2248);
  v211 = *(v4 + 2240);
  v209 = *(v4 + 2200);
  MEMORY[0x277D82BD8](v261);
  v211(v227, v209);

  sub_2260998E8();
  *(v4 + 1720) = v376;
  sub_2260998E8();
  *(v4 + 1728) = v232;
  *(v4 + 1736) = 0;
  v212 = sub_226099CD8();
  if (sub_226099CD8() >= v212)
  {
    v206 = 0;
  }

  else
  {
    v207 = sub_226099CD8();
    v29 = sub_226099CD8();
    result = v207;
    v208 = v207 - v29;
    if (__OFSUB__(v207, v29))
    {
      goto LABEL_123;
    }

    *(v4 + 1736) = v208;
    v206 = v208;
  }

  *(v4 + 1744) = 0;
  v205 = sub_226099CD8();
  if (v205 < sub_226099CD8())
  {
    v203 = sub_226099CD8();
    v31 = sub_226099CD8();
    result = v203;
    v204 = v203 - v31;
    if (!__OFSUB__(v203, v31))
    {
      *(v4 + 1744) = v204;
      v202 = v204;
      goto LABEL_60;
    }

    __break(1u);
LABEL_123:
    __break(1u);
    return result;
  }

  v202 = 0;
LABEL_60:
  v181 = *(v4 + 2696);
  v187 = *(v4 + 2688);
  v186 = *(v4 + 2680);
  v179 = *(v4 + 2640);
  v189 = *(v4 + 2632);
  v188 = *(v4 + 2624);
  v183 = *(v4 + 2384);
  v33 = *(v4 + 2192);
  v190 = *(v4 + 2456);
  v191 = *(v4 + 2432);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7866B8, &qword_2260A0678);
  sub_22609A4F8();
  v180 = v34;
  *v34 = sub_226099AA8();
  v180[1] = v35;
  sub_2260998E8();
  sub_2260998E8();
  v180[2] = v179;
  v180[3] = sub_226099AA8();
  v180[4] = v36;
  sub_2260998E8();
  v180[5] = v373;
  v180[6] = sub_226099AA8();
  v180[7] = v37;
  sub_2260998E8();
  v180[8] = v374;
  v180[9] = sub_226099AA8();
  v180[10] = v38;
  sub_2260998E8();
  v180[11] = v372;
  v180[12] = sub_226099AA8();
  v180[13] = v39;
  sub_2260998E8();
  v180[14] = v375;
  sub_225EF5418();

  v185 = sub_2260998A8();
  sub_22609A4F8();
  v182 = v40;
  *v40 = sub_226099AA8();
  v182[1] = v41;
  sub_2260998E8();
  sub_2260998E8();
  v182[2] = v181;
  v182[3] = sub_226099AA8();
  v182[4] = v42;
  sub_2260998E8();
  v182[5] = v229;
  v182[6] = sub_226099AA8();
  v182[7] = v43;
  sub_2260998E8();
  v182[8] = v230;
  v182[9] = sub_226099AA8();
  v182[10] = v44;
  sub_2260998E8();
  v182[11] = v228;
  v182[12] = sub_226099AA8();
  v182[13] = v45;
  sub_2260998E8();
  v182[14] = v231;
  sub_225EF5418();

  v184 = sub_2260998A8();
  sub_225F5E894(v183, v185, v184, v206, v202);

  v46 = *(v4 + 2432);

  v195 = *(v4 + 2440);
  v194 = *(v4 + 75);
  v193 = *(v4 + 2432);
  v192 = *(v4 + 2424);
  v198 = *(v4 + 2384);
  v197 = *(v4 + 2368);
  v199 = *(v4 + 2360);
  v196 = *(v4 + 2376);
  v200 = *(v4 + 2352);
  v201 = *(v4 + 2336);
  sub_225F7C9EC(v192, v193, v194 & 1);
  sub_225F7C9EC(v192, v193, v194 & 1);

  (*(v196 + 8))(v198, v197);

  sub_225F7C078(v199);

  MEMORY[0x277D82BD8](v201);
  *(v4 + 74) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786688, &qword_2260A0660);
  sub_22609A388();
  v362 = *(v4 + 1536);
  *(v4 + 2336) = v362;
  if (!v362)
  {
    v176 = *(v4 + 2192);
    sub_225EFE6E8((v4 + 1024));
    swift_beginAccess();
    v177 = *(v176 + 112);
    sub_2260998E8();
    swift_endAccess();
    v178 = sub_226099CD8();

    if (v178 <= 0)
    {
      v119 = v213;
    }

    else
    {
      v173 = *(v4 + 2192);
      swift_beginAccess();
      v174 = *(v173 + 112);
      sub_2260998E8();
      swift_endAccess();
      v175 = sub_226099CD8();

      if (v175 < 0)
      {
        return sub_22609A3B8();
      }

      v168 = *(v4 + 2192);
      *(v4 + 1040) = 0;
      *(v4 + 1048) = v175;
      sub_225EF9438();
      sub_22609A3A8();
      v167 = *(v4 + 1608);
      *(v4 + 1616) = v167;
      swift_beginAccess();
      v169 = *(v168 + 112);
      sub_2260998E8();
      swift_endAccess();
      *(v4 + 1632) = v169;
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786418, &unk_2260A0568);
      v47 = sub_225F7CD08();
      MEMORY[0x22AA72D20](v170, v47);
      sub_225EFE6E8((v4 + 1632));
      *(v4 + 1640) = *(v4 + 1624);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786698, &qword_2260A0668);
      sub_22609A3F8();
      v171 = v213;
      for (i = v214; ; i = v162)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7866A0, &qword_2260A0670);
        sub_22609A408();
        memcpy((v4 + 176), (v4 + 216), 0x28uLL);
        if (!*(v4 + 208))
        {
          break;
        }

        v166 = *(v4 + 176);
        *(v4 + 1648) = v166;
        sub_225EF9790(v4 + 184, v4 + 376);
        sub_225EF3E30(v4 + 376, v4 + 408);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
        if (swift_dynamicCast())
        {
          v165 = *(v4 + 1656);
        }

        else
        {
          v165 = 0;
        }

        *(v4 + 1664) = v165;
        sub_2260998E8();
        if (v165)
        {
          *(v4 + 1672) = v165;
          v163 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
          v164 = swift_task_alloc();
          *(v4 + 1056) = sub_226099AA8();
          *(v4 + 1064) = v48;
          sub_226099938();
          sub_225EFE6BC(v4 + 1056);
          if (*(v4 + 464))
          {
            v160 = sub_226098A78();
            v49 = swift_dynamicCast();
            if (v49)
            {
              (*(*(v160 - 8) + 56))(v164, 0, 1);
            }

            else
            {
              (*(*(v160 - 8) + 56))(v164, 1);
            }
          }

          else
          {
            sub_225F186BC((v4 + 440));
            v54 = sub_226098A78();
            (*(*(v54 - 8) + 56))(v164, 1);
          }

          *(v4 + 1072) = sub_226099AA8();
          *(v4 + 1080) = v50;
          sub_226099938();
          sub_225EFE6BC(v4 + 1072);
          if (*(v4 + 496))
          {
            if (swift_dynamicCast())
            {
              v159 = *(v4 + 1696);
            }

            else
            {
              v159 = 0;
            }

            v158 = v159;
          }

          else
          {
            sub_225F186BC((v4 + 472));
            v158 = 0;
          }

          *(v4 + 1680) = v158;
          v156 = sub_226098A78();
          v155 = *(v156 - 8);
          v153 = *(v155 + 64);
          v154 = swift_task_alloc();
          v157 = swift_task_alloc();
          sub_225F7BF50(v164, v157);
          if ((*(v155 + 48))(v157, 1, v156) == 1)
          {
            sub_225F7C078(v157);

            v151 = v171;
            v152 = i;
          }

          else
          {
            v150 = *(v155 + 32);
            v150(v154, v157, v156);

            sub_2260998E8();
            if (v158)
            {
              *(v4 + 1688) = v158;
              if (v167 == v166)
              {
                v147 = *(v4 + 2232);
                v135 = *(v4 + 2224);
                v136 = *(v4 + 2216);
                v132 = *(v4 + 2208);
                v134 = *(v4 + 2200);
                v133 = sub_225F4C7E0();
                v137 = swift_task_alloc();
                v136(v137, v133, v134);
                v139 = swift_task_alloc();
                (*(v155 + 16))(v139, v154, v156);
                v138 = (*(v155 + 80) + 16) & ~*(v155 + 80);
                v140 = swift_allocObject();
                v150(v140 + v138, v139, v156);

                v141 = swift_allocObject();
                *(v141 + 16) = sub_225F7CD90;
                *(v141 + 24) = v140;

                v148 = sub_226098C48();
                v149 = sub_22609A078();
                v143 = swift_allocObject();
                *(v143 + 16) = 32;
                v144 = swift_allocObject();
                *(v144 + 16) = 8;
                v142 = swift_allocObject();
                *(v142 + 16) = sub_225F7CE04;
                *(v142 + 24) = v141;
                v145 = swift_allocObject();
                *(v145 + 16) = sub_225EF7B84;
                *(v145 + 24) = v142;
                sub_22609A4F8();
                v146 = v51;

                *v146 = sub_225EF7434;
                v146[1] = v143;

                v146[2] = sub_225EF7434;
                v146[3] = v144;

                v146[4] = sub_225EF7B90;
                v146[5] = v145;
                sub_225EF5418();

                if (os_log_type_enabled(v148, v149))
                {
                  v129 = sub_22609A188();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                  v130 = sub_225EF5468(0);
                  v131 = sub_225EF5468(1);
                  v407 = v129;
                  v408 = v130;
                  v409 = v131;
                  sub_225EF54BC(2, &v407);
                  sub_225EF54BC(1, &v407);
                  v410 = sub_225EF7434;
                  v411 = v143;
                  sub_225EF73E8(&v410, &v407, &v408, &v409);
                  if (v171)
                  {
                  }

                  v410 = sub_225EF7434;
                  v411 = v144;
                  sub_225EF73E8(&v410, &v407, &v408, &v409);
                  v410 = sub_225EF7B90;
                  v411 = v145;
                  sub_225EF73E8(&v410, &v407, &v408, &v409);
                  _os_log_impl(&dword_225EEB000, v148, v149, "ASRFullPayloadCorrectionWorker::Chosen record is %s", v129, 0xCu);
                  sub_225EF7AF4(v130);
                  sub_225EF7AF4(v131);
                  sub_22609A168();

                  v127 = 0;
                  v128 = 0;
                }

                else
                {

                  v127 = v171;
                  v128 = i;
                }

                v122 = *(v4 + 2248);
                v123 = *(v4 + 2240);
                v121 = *(v4 + 2200);
                v52 = *(v4 + 2192);
                MEMORY[0x277D82BD8](v148);
                v123(v137, v121);

                sub_2260998E8();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
                v124 = sub_22609A3E8();
                sub_225F5D098(v154, v124, 1u);

                v125 = v127;
                v126 = v128;
              }

              else
              {
                v53 = *(v4 + 2192);
                sub_2260998E8();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
                v120 = sub_22609A3E8();
                sub_225F5D098(v154, v120, 0);

                v125 = v171;
                v126 = i;
              }

              (*(v155 + 8))(v154, v156);

              v151 = v125;
              v152 = v126;
            }

            else
            {
              (*(v155 + 8))(v154, v156);

              v151 = v171;
              v152 = i;
            }
          }

          sub_225F7C078(v164);

          v161 = v151;
          v162 = v152;
        }

        else
        {
          v161 = v171;
          v162 = i;
        }

        __swift_destroy_boxed_opaque_existential_0((v4 + 376));
        v171 = v161;
      }

      v118 = *(v4 + 2192);
      sub_225EFE6E8((v4 + 736));
      swift_beginAccess();
      sub_225F7B3F4();
      sub_226099CF8();
      swift_endAccess();
      v119 = v171;
    }

    v116 = *(v4 + 2320);
    swift_beginAccess();
    v117 = *(v116 + 16);
    swift_endAccess();
    if (v117)
    {
      v113 = *(v4 + 2312);
      swift_beginAccess();
      v114 = *(v113 + 16);
      swift_unknownObjectRetain();
      swift_endAccess();
      v115 = saveBookmark(1, v114);
      swift_unknownObjectRelease();
      if ((v115 & 1) == 0)
      {
        v109 = *(v4 + 2232);
        v106 = *(v4 + 2224);
        v107 = *(v4 + 2216);
        v103 = *(v4 + 2208);
        v105 = *(v4 + 2200);
        v104 = sub_225F4C7E0();
        v108 = swift_task_alloc();
        v107(v108, v104, v105);
        v111 = sub_226098C48();
        v110 = sub_22609A098();
        v112 = sub_22609A4F8();
        if (!os_log_type_enabled(v111, v110))
        {

          goto LABEL_109;
        }

        v99 = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v100 = sub_225EF5468(0);
        v101 = sub_225EF5468(0);
        *(v4 + 1544) = v99;
        *(v4 + 1552) = v100;
        *(v4 + 1560) = v101;
        sub_225EF54BC(0, (v4 + 1544));
        sub_225EF54BC(0, (v4 + 1544));
        *(v4 + 1568) = v112;
        v102 = swift_task_alloc();
        v102[2] = v4 + 1544;
        v102[3] = v4 + 1552;
        v102[4] = v4 + 1560;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        if (!v119)
        {

          _os_log_impl(&dword_225EEB000, v111, v110, "ASRFullPayloadCorrectionWorker::Biome bookmark failed to update", v99, 2u);
          sub_225EF7AF4(v100);
          sub_225EF7AF4(v101);
          sub_22609A168();

LABEL_109:
          v89 = *(v4 + 2328);
          v90 = *(v4 + 2320);
          v91 = *(v4 + 2312);
          v92 = *(v4 + 2304);
          v93 = *(v4 + 2296);
          v94 = *(v4 + 2288);
          v96 = *(v4 + 2280);
          v97 = *(v4 + 2272);
          v98 = *(v4 + 2264);
          v95 = *(v4 + 2256);
          v87 = *(v4 + 2248);
          v88 = *(v4 + 2240);
          v86 = *(v4 + 2200);
          MEMORY[0x277D82BD8](v111);
          v88(v108, v86);

          sub_225F7B6F4();
          swift_allocError();
          *v55 = 2;
          swift_willThrow();

          swift_unknownObjectRelease();
          MEMORY[0x277D82BD8](v93);
          MEMORY[0x277D82BD8](v94);
          v97(v98, v95);

LABEL_119:
          v57 = *(*(v4 + 1424) + 8);
          v59 = *(v4 + 1424);

          return v57();
        }
      }

      v82 = *(v4 + 2232);
      v79 = *(v4 + 2224);
      v80 = *(v4 + 2216);
      v76 = *(v4 + 2208);
      v78 = *(v4 + 2200);
      v77 = sub_225F4C7E0();
      v81 = swift_task_alloc();
      v80(v81, v77, v78);
      v84 = sub_226098C48();
      v83 = sub_22609A078();
      v85 = sub_22609A4F8();
      if (os_log_type_enabled(v84, v83))
      {
        v72 = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v73 = sub_225EF5468(0);
        v74 = sub_225EF5468(0);
        *(v4 + 1576) = v72;
        *(v4 + 1584) = v73;
        *(v4 + 1592) = v74;
        sub_225EF54BC(0, (v4 + 1576));
        sub_225EF54BC(0, (v4 + 1576));
        *(v4 + 1600) = v85;
        v75 = swift_task_alloc();
        v75[2] = v4 + 1576;
        v75[3] = v4 + 1584;
        v75[4] = v4 + 1592;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        if (v119)
        {
        }

        _os_log_impl(&dword_225EEB000, v84, v83, "ASRFullPayloadCorrectionWorker::Biome bookmark updated", v72, 2u);
        sub_225EF7AF4(v73);
        sub_225EF7AF4(v74);
        sub_22609A168();
      }

      else
      {
      }

      v70 = *(v4 + 2248);
      v71 = *(v4 + 2240);
      v69 = *(v4 + 2200);
      MEMORY[0x277D82BD8](v84);
      v71(v81, v69);
    }

    v56 = *(v4 + 2328);
    v60 = *(v4 + 2320);
    v61 = *(v4 + 2312);
    v62 = *(v4 + 2304);
    v63 = *(v4 + 2296);
    v64 = *(v4 + 2288);
    v66 = *(v4 + 2280);
    v67 = *(v4 + 2272);
    v68 = *(v4 + 2264);
    v65 = *(v4 + 2256);

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    v67(v68, v65);

    v57 = *(*(v4 + 1424) + 8);
    v58 = *(v4 + 1424);

    return v57();
  }

  *(v4 + 1704) = v362;
  if (sub_226099E58())
  {
    v359 = *(v4 + 2232);
    v346 = *(v4 + 2224);
    v347 = *(v4 + 2216);
    v343 = *(v4 + 2208);
    v345 = *(v4 + 2200);
    v350 = *(v4 + 2192);
    v344 = sub_225F4C7E0();
    v348 = swift_task_alloc();
    v347(v348, v344, v345);

    log = sub_226098C48();
    v361 = sub_22609A078();
    v352 = swift_allocObject();
    *(v352 + 16) = 32;
    v353 = swift_allocObject();
    *(v353 + 16) = 8;
    v349 = swift_allocObject();
    *(v349 + 16) = sub_225F7D2E0;
    *(v349 + 24) = v350;
    v354 = swift_allocObject();
    *(v354 + 16) = sub_225EF7B84;
    *(v354 + 24) = v349;
    v355 = swift_allocObject();
    *(v355 + 16) = 32;
    v356 = swift_allocObject();
    *(v356 + 16) = 8;
    v351 = swift_allocObject();
    *(v351 + 16) = sub_225F7D2E8;
    *(v351 + 24) = v350;
    v357 = swift_allocObject();
    *(v357 + 16) = sub_225EF7B84;
    *(v357 + 24) = v351;
    sub_22609A4F8();
    v358 = v11;

    *v358 = sub_225EF7434;
    v358[1] = v352;

    v358[2] = sub_225EF7434;
    v358[3] = v353;

    v358[4] = sub_225EF7B90;
    v358[5] = v354;

    v358[6] = sub_225EF7434;
    v358[7] = v355;

    v358[8] = sub_225EF7434;
    v358[9] = v356;

    v358[10] = sub_225EF7B90;
    v358[11] = v357;
    sub_225EF5418();

    if (os_log_type_enabled(log, v361))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v341 = sub_225EF5468(0);
      v342 = sub_225EF5468(2);
      v414 = buf;
      v415 = v341;
      v416 = v342;
      sub_225EF54BC(2, &v414);
      sub_225EF54BC(2, &v414);
      v417 = sub_225EF7434;
      v418 = v352;
      sub_225EF73E8(&v417, &v414, &v415, &v416);
      if (v213)
      {
      }

      v417 = sub_225EF7434;
      v418 = v353;
      sub_225EF73E8(&v417, &v414, &v415, &v416);
      v417 = sub_225EF7B90;
      v418 = v354;
      sub_225EF73E8(&v417, &v414, &v415, &v416);
      v417 = sub_225EF7434;
      v418 = v355;
      sub_225EF73E8(&v417, &v414, &v415, &v416);
      v417 = sub_225EF7434;
      v418 = v356;
      sub_225EF73E8(&v417, &v414, &v415, &v416);
      v417 = sub_225EF7B90;
      v418 = v357;
      sub_225EF73E8(&v417, &v414, &v415, &v416);
      _os_log_impl(&dword_225EEB000, log, v361, "TaskId: %s, TaskName: %s: asked to stop!", buf, 0x16u);
      sub_225EF7AF4(v341);
      sub_225EF7AF4(v342);
      sub_22609A168();
    }

    else
    {
    }

    v330 = *(v4 + 2328);
    v331 = *(v4 + 2320);
    v332 = *(v4 + 2312);
    v333 = *(v4 + 2304);
    v334 = *(v4 + 2296);
    v335 = *(v4 + 2288);
    v337 = *(v4 + 2280);
    v338 = *(v4 + 2272);
    v339 = *(v4 + 2264);
    v336 = *(v4 + 2256);
    v328 = *(v4 + 2248);
    v329 = *(v4 + 2240);
    v327 = *(v4 + 2200);
    MEMORY[0x277D82BD8](log);
    v329(v348, v327);

    sub_226099D58();
    sub_225F7D2F0();
    swift_allocError();
    sub_226099858();
    swift_willThrow();
    MEMORY[0x277D82BD8](v362);
    sub_225EFE6E8((v4 + 1024));

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v334);
    MEMORY[0x277D82BD8](v335);
    v338(v339, v336);

    goto LABEL_119;
  }

  v323 = *(v4 + 2232);
  v320 = *(v4 + 2224);
  v321 = *(v4 + 2216);
  v317 = *(v4 + 2208);
  v319 = *(v4 + 2200);
  v318 = sub_225F4C7E0();
  v322 = swift_task_alloc();
  v321(v322, v318, v319);
  v325 = sub_226098C48();
  v324 = sub_22609A078();
  v326 = sub_22609A4F8();
  if (os_log_type_enabled(v325, v324))
  {
    v313 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v314 = sub_225EF5468(0);
    v315 = sub_225EF5468(0);
    *(v4 + 2064) = v313;
    *(v4 + 2072) = v314;
    *(v4 + 2080) = v315;
    sub_225EF54BC(0, (v4 + 2064));
    sub_225EF54BC(0, (v4 + 2064));
    *(v4 + 2088) = v326;
    v316 = swift_task_alloc();
    v316[2] = v4 + 2064;
    v316[3] = v4 + 2072;
    v316[4] = v4 + 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v213)
    {
    }

    _os_log_impl(&dword_225EEB000, v325, v324, "ASRFullPayloadCorrectionWorker::Processing individual Biome record", v313, 2u);
    sub_225EF7AF4(v314);
    sub_225EF7AF4(v315);
    sub_22609A168();

    v312 = 0;
  }

  else
  {

    v312 = v213;
  }

  v309 = *(v4 + 2248);
  v310 = *(v4 + 2240);
  v308 = *(v4 + 2200);
  MEMORY[0x277D82BD8](v325);
  v310(v322, v308);

  v311 = [v362 eventBody];
  if (!v311)
  {
    return sub_22609A3B8();
  }

  v307 = [v311 recognizedText];
  if (v307)
  {
    v303 = sub_226099A08();
    v304 = v13;
    MEMORY[0x277D82BD8](v307);
    v305 = v303;
    v306 = v304;
  }

  else
  {
    v305 = 0;
    v306 = 0;
  }

  *(v4 + 2352) = v306;
  *(v4 + 2344) = v305;
  MEMORY[0x277D82BD8](v311);
  if (!v306)
  {
    return sub_22609A3B8();
  }

  *(v4 + 1088) = v305;
  *(v4 + 1096) = v306;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64) + 15;
  v301 = swift_task_alloc();
  *(v4 + 2360) = v301;
  v15 = [v362 eventBody];
  v302 = v15;
  if (!v15)
  {
    return sub_22609A3B8();
  }

  v16 = [v15 asrID];
  v300 = v16;
  if (v16)
  {
    sub_226099A08();
    v298 = v17;
    MEMORY[0x277D82BD8](v300);
    v299 = v298;
  }

  else
  {
    v299 = 0;
  }

  MEMORY[0x277D82BD8](v302);
  if (!v299)
  {
    return sub_22609A3B8();
  }

  v295 = *(v4 + 2232);
  v278 = *(v4 + 2224);
  v279 = *(v4 + 2216);
  v275 = *(v4 + 2208);
  v277 = *(v4 + 2200);
  sub_226098A18();

  v286 = sub_226098A78();
  *(v4 + 2368) = v286;
  v18 = *(v286 - 8);
  v285 = v18;
  *(v4 + 2376) = v18;
  v282 = v18;
  v283 = *(v18 + 64);
  v281 = swift_task_alloc();
  *(v4 + 2384) = v281;
  sub_226098A68();
  v276 = sub_225F4C7E0();
  v280 = swift_task_alloc();
  v279(v280, v276, v277);
  v287 = swift_task_alloc();
  v19 = *(v285 + 16);
  *(v4 + 2392) = v19;
  *(v4 + 2400) = (v285 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v287, v281, v286);
  v284 = (*(v282 + 80) + 16) & ~*(v282 + 80);
  v288 = swift_allocObject();
  (*(v285 + 32))(v288 + v284, v287, v286);

  v289 = swift_allocObject();
  *(v289 + 16) = sub_225F7CD90;
  *(v289 + 24) = v288;

  v296 = sub_226098C48();
  v297 = sub_22609A078();
  v291 = swift_allocObject();
  *(v291 + 16) = 32;
  v292 = swift_allocObject();
  *(v292 + 16) = 8;
  v290 = swift_allocObject();
  *(v290 + 16) = sub_225F7CE04;
  *(v290 + 24) = v289;
  v293 = swift_allocObject();
  *(v293 + 16) = sub_225EF7B84;
  *(v293 + 24) = v290;
  sub_22609A4F8();
  v294 = v20;

  *v294 = sub_225EF7434;
  v294[1] = v291;

  v294[2] = sub_225EF7434;
  v294[3] = v292;

  v294[4] = sub_225EF7B90;
  v294[5] = v293;
  sub_225EF5418();

  if (os_log_type_enabled(v296, v297))
  {
    v272 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v273 = sub_225EF5468(0);
    v274 = sub_225EF5468(1);
    *(v4 + 2040) = v272;
    *(v4 + 2048) = v273;
    *(v4 + 2056) = v274;
    sub_225EF54BC(2, (v4 + 2040));
    sub_225EF54BC(1, (v4 + 2040));
    *(v4 + 1376) = sub_225EF7434;
    *(v4 + 1384) = v291;
    sub_225EF73E8(v4 + 1376, v4 + 2040, v4 + 2048, v4 + 2056);
    if (v312)
    {
    }

    *(v4 + 1376) = sub_225EF7434;
    *(v4 + 1384) = v292;
    sub_225EF73E8(v4 + 1376, v4 + 2040, v4 + 2048, v4 + 2056);
    *(v4 + 1376) = sub_225EF7B90;
    *(v4 + 1384) = v293;
    sub_225EF73E8(v4 + 1376, v4 + 2040, v4 + 2048, v4 + 2056);
    _os_log_impl(&dword_225EEB000, v296, v297, "ASRFullPayloadCorrectionWorker::dodMLID for SELF logs %s", v272, 0xCu);
    sub_225EF7AF4(v273);
    sub_225EF7AF4(v274);
    sub_22609A168();

    v271 = 0;
  }

  else
  {

    v271 = v312;
  }

  *(v4 + 2408) = v271;
  v269 = *(v4 + 2248);
  v270 = *(v4 + 2240);
  v268 = *(v4 + 2200);
  v21 = *(v4 + 2192);
  MEMORY[0x277D82BD8](v296);
  v270(v280, v268);

  v22 = mach_absolute_time();
  sub_225F58E70(v281, v22, v301);
  v23 = swift_task_alloc();
  v363[302] = v23;
  *v23 = v363[178];
  v23[1] = sub_225F67044;
  v24 = v363[274];

  return sub_225F5FED4(v305, v306, 0);
}

uint64_t sub_225F78B88()
{
  v29 = v0[319];
  v26 = v0[317];
  v25 = v0[316];
  v1 = v0[315];
  v28 = v0[313];
  v27 = v0[312];
  v36 = v0[279];
  v33 = v0[278];
  v34 = v0[277];
  v30 = v0[276];
  v32 = v0[275];
  v0[178] = v0;

  v2 = v29;
  v0[214] = v29;
  v31 = sub_225F4C7E0();
  v35 = swift_task_alloc();
  v34(v35, v31, v32);
  oslog = sub_226098C48();
  v37 = sub_22609A098();
  v39 = sub_22609A4F8();
  if (os_log_type_enabled(oslog, v37))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v21 = sub_225EF5468(0);
    v22 = sub_225EF5468(0);
    *(v24 + 1800) = buf;
    *(v24 + 1808) = v21;
    *(v24 + 1816) = v22;
    sub_225EF54BC(0, (v24 + 1800));
    sub_225EF54BC(0, (v24 + 1800));
    *(v24 + 1824) = v39;
    v23 = swift_task_alloc();
    v23[2] = v24 + 1800;
    v23[3] = v24 + 1808;
    v23[4] = v24 + 1816;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, oslog, v37, "ASRFullPayloadCorrectionWorker::Failed to generate confusion pairs", buf, 2u);
    sub_225EF7AF4(v21);
    sub_225EF7AF4(v22);
    sub_22609A168();
  }

  v11 = *(v24 + 2552);
  v9 = *(v24 + 2248);
  v10 = *(v24 + 2240);
  v8 = *(v24 + 2200);
  MEMORY[0x277D82BD8](oslog);
  v10(v35, v8);

  *(v24 + 2584) = 0;
  v12 = *(v24 + 2448);
  v13 = *(v24 + 2456);
  v19 = sub_225F51708(*(v24 + 2344), *(v24 + 2352));
  v14 = v3;
  *(v24 + 2592) = v3;
  v15 = sub_225F51708(v12, v13);
  v16 = v4;
  *(v24 + 2600) = v4;
  v17 = sub_226099AA8();
  v18 = v5;
  *(v24 + 2608) = v5;
  v6 = swift_task_alloc();
  *(v24 + 2616) = v6;
  *v6 = *(v24 + 1424);
  v6[1] = sub_225F6F5A4;

  return sub_225F518C4(v19, v14, v15, v16, v17, v18);
}

uint64_t sub_225F791E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F7921C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F792B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v108 = a4;
  v107 = a3;
  v110 = a2;
  v109 = a1;
  v127 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v106 = 0;
  v122 = sub_226098C58();
  v111 = v122;
  v112 = *(v122 - 8);
  v121 = v112;
  v113 = v112;
  v115 = *(v112 + 64);
  MEMORY[0x28223BE20](v109, v110, v107, v108);
  v117 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  v114 = &v39 - v117;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v116 = &v39 - v117;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v12 = &v39 - v117;
  v118 = &v39 - v117;
  v148 = v13;
  v147 = v14;
  v119 = (v15 + 16);
  v146 = v15 + 16;
  v120 = (v16 + 16);
  v145 = v16 + 16;
  v17 = sub_225F4C7E0();
  v123 = *(v121 + 16);
  v124 = (v121 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v123(v12, v17, v122);
  v130 = sub_226098C48();
  v125 = v130;
  v129 = sub_22609A078();
  v126 = v129;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v131 = sub_22609A4F8();
  if (os_log_type_enabled(v130, v129))
  {
    v18 = v106;
    v97 = sub_22609A188();
    v93 = v97;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v95 = 0;
    v98 = sub_225EF5468(0);
    v96 = v98;
    v99 = sub_225EF5468(v95);
    v135[0] = v97;
    v134 = v98;
    v133 = v99;
    v100 = 0;
    v101 = v135;
    sub_225EF54BC(0, v135);
    sub_225EF54BC(v100, v101);
    v132 = v131;
    v102 = &v39;
    MEMORY[0x28223BE20](&v39, v19, v20, v21);
    v103 = &v39 - 6;
    *(&v39 - 4) = v22;
    *(&v39 - 3) = &v134;
    *(&v39 - 2) = &v133;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v105 = v18;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v125, v126, "ASRFullPayloadCorrectionWorker::BMDictationUserEdit reading completed", v93, 2u);
      v91 = 0;
      sub_225EF7AF4(v96);
      sub_225EF7AF4(v99);
      sub_22609A168();

      v92 = v105;
    }
  }

  else
  {

    v92 = v106;
  }

  v87 = v92;

  v88 = *(v113 + 8);
  v89 = (v113 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88(v118, v111);
  v144[2] = [v109 state];
  v144[1] = 0;
  v90 = type metadata accessor for BPSCompletionState();
  sub_225F7DC4C();
  if (sub_22609A508())
  {
    v23 = v116;
    v24 = sub_225F4C7E0();
    v123(v23, v24, v111);
    v85 = sub_226098C48();
    v82 = v85;
    v84 = sub_22609A078();
    v83 = v84;
    v86 = sub_22609A4F8();
    if (os_log_type_enabled(v85, v84))
    {
      v25 = v87;
      v73 = sub_22609A188();
      v69 = v73;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v71 = 0;
      v74 = sub_225EF5468(0);
      v72 = v74;
      v75 = sub_225EF5468(v71);
      v138 = v73;
      v137 = v74;
      v136 = v75;
      v76 = 0;
      v77 = &v138;
      sub_225EF54BC(0, &v138);
      sub_225EF54BC(v76, v77);
      v135[1] = v86;
      v78 = &v39;
      MEMORY[0x28223BE20](&v39, v26, v27, v28);
      v79 = &v39 - 6;
      *(&v39 - 4) = v29;
      *(&v39 - 3) = &v137;
      *(&v39 - 2) = &v136;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v81 = v25;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v82, v83, "ASRFullPayloadCorrectionWorker::BMDictationUserEdit reading completed successfully, saving bookmark", v69, 2u);
        v67 = 0;
        sub_225EF7AF4(v72);
        sub_225EF7AF4(v75);
        sub_22609A168();

        v68 = v81;
      }
    }

    else
    {

      v68 = v87;
    }

    v65 = v68;

    v88(v116, v111);
    v62 = 33;
    v61 = &v140;
    v63 = 0;
    swift_beginAccess();
    *v119 = 1;
    swift_endAccess();
    swift_unknownObjectRetain();
    v64 = &v139;
    swift_beginAccess();
    v30 = *v120;
    *v120 = v110;
    swift_unknownObjectRelease();
    swift_endAccess();
    return v65;
  }

  else
  {
    v31 = v114;
    v32 = sub_225F4C7E0();
    v123(v31, v32, v111);
    v59 = sub_226098C48();
    v56 = v59;
    v58 = sub_22609A078();
    v57 = v58;
    v60 = sub_22609A4F8();
    if (os_log_type_enabled(v59, v58))
    {
      v33 = v87;
      v47 = sub_22609A188();
      v43 = v47;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v45 = 0;
      v48 = sub_225EF5468(0);
      v46 = v48;
      v49 = sub_225EF5468(v45);
      v144[0] = v47;
      v143 = v48;
      v142 = v49;
      v50 = 0;
      v51 = v144;
      sub_225EF54BC(0, v144);
      sub_225EF54BC(v50, v51);
      v141 = v60;
      v52 = &v39;
      MEMORY[0x28223BE20](&v39, v34, v35, v36);
      v53 = &v39 - 6;
      *(&v39 - 4) = v37;
      *(&v39 - 3) = &v143;
      *(&v39 - 2) = &v142;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v55 = v33;
      if (v33)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v56, v57, "ASRFullPayloadCorrectionWorker::Failed to read from Biome", v43, 2u);
        v41 = 0;
        sub_225EF7AF4(v46);
        sub_225EF7AF4(v49);
        sub_22609A168();

        v42 = v55;
      }
    }

    else
    {

      v42 = v87;
    }

    v40 = v42;

    v88(v114, v111);
    return v40;
  }
}

uint64_t sub_225F7A030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2);
  swift_unknownObjectRetain();
  v4(a2, a3);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a2);
}

uint64_t sub_225F7A0C0(void *a1, uint64_t a2, uint64_t a3)
{
  v125 = a3;
  v127 = a2;
  v126 = a1;
  v142 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v124 = 0;
  v137 = sub_226098C58();
  v128 = v137;
  v129 = *(v137 - 8);
  v136 = v129;
  v130 = v129;
  v131 = *(v129 + 64);
  MEMORY[0x28223BE20](v126, v127, v125, v137);
  v133 = (v131 + 15) & 0xFFFFFFFFFFFFFFF0;
  v132 = &v32 - v133;
  MEMORY[0x28223BE20](v3, v4, v5, &v32 - v133);
  v6 = &v32 - v133;
  v134 = &v32 - v133;
  v166 = v7;
  v165 = v8;
  v135 = v9 + 16;
  v164 = v9 + 16;
  v10 = sub_225F4C7E0();
  v138 = *(v136 + 16);
  v139 = (v136 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v138(v6, v10, v137);
  v145 = sub_226098C48();
  v140 = v145;
  v144 = sub_22609A078();
  v141 = v144;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v146 = sub_22609A4F8();
  if (os_log_type_enabled(v145, v144))
  {
    v11 = v124;
    v115 = sub_22609A188();
    v111 = v115;
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v113 = 0;
    v116 = sub_225EF5468(0);
    v114 = v116;
    v117 = sub_225EF5468(v113);
    v150[0] = v115;
    v149 = v116;
    v148 = v117;
    v118 = 0;
    v119 = v150;
    sub_225EF54BC(0, v150);
    sub_225EF54BC(v118, v119);
    v147 = v146;
    v120 = &v32;
    MEMORY[0x28223BE20](&v32, v12, v13, v14);
    v121 = &v32 - 6;
    *(&v32 - 4) = v15;
    *(&v32 - 3) = &v149;
    *(&v32 - 2) = &v148;
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v123 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v140, v141, "ASRFullPayloadCorrectionWorker::Individual Biome record read start", v111, 2u);
      v109 = 0;
      sub_225EF7AF4(v114);
      sub_225EF7AF4(v117);
      sub_22609A168();

      v110 = v123;
    }
  }

  else
  {

    v110 = v124;
  }

  v105 = v110;

  v106 = *(v130 + 8);
  v107 = (v130 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v106(v134, v128);
  v108 = [v126 eventBody];
  if (v108)
  {
    v104 = v108;
    v101 = v108;
    v163 = v108;
    sub_225F7DBE8();
    if ([v101 isKindOfClass_])
    {
      v100 = [v101 asrID];
      if (v100)
      {
        v99 = v100;
        v94 = v100;
        v95 = sub_226099A08();
        v96 = v16;

        v97 = v95;
        v98 = v96;
      }

      else
      {
        v97 = 0;
        v98 = 0;
      }

      v162[0] = v97;
      v162[1] = v98;
      v93 = v98 != 0;
      v92 = v93;
      sub_225EFE6BC(v162);
      if (!v92)
      {
        goto LABEL_28;
      }

      v91 = [v101 recognizedText];
      if (v91)
      {
        v90 = v91;
        v85 = v91;
        v86 = sub_226099A08();
        v87 = v17;

        v88 = v86;
        v89 = v87;
      }

      else
      {
        v88 = 0;
        v89 = 0;
      }

      v84 = v89;
      if (!v89)
      {
        goto LABEL_28;
      }

      v83 = v84;

      v18 = [v101 correctedText];
      v82 = v18;
      if (v18)
      {
        v81 = v82;
        v76 = v82;
        v77 = sub_226099A08();
        v78 = v19;

        v79 = v77;
        v80 = v78;
      }

      else
      {
        v79 = 0;
        v80 = 0;
      }

      v75 = v80;
      if (v80 && (v74 = v75, , v20 = [v101 metadata], (v73 = v20) != 0))
      {
        v72 = v73;
        v70 = v73;
        v161 = v73;
        v21 = [v73 language];
        v71 = v21;
        if (v21)
        {
          v69 = v71;
          v64 = v71;
          v65 = sub_226099A08();
          v66 = v22;

          v67 = v65;
          v68 = v66;
        }

        else
        {
          v67 = 0;
          v68 = 0;
        }

        v62 = v68;
        v63 = v67;
        if (v68)
        {
          v60 = v63;
          v61 = v62;
          v56 = v62;
          v55 = v63;
          v159 = v63;
          v160 = v62;
          v54 = *(v127 + 80);
          sub_2260998E8();
          v158 = v54;
          v156 = v55;
          v157 = v56;
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
          sub_225F3006C();
          v58 = &v158;
          v59 = sub_226099C38();
          sub_225EFE6E8(v58);
          if (v59)
          {
            v23 = v132;
            v24 = sub_225F4C7E0();
            v138(v23, v24, v128);
            v52 = sub_226098C48();
            v49 = v52;
            v51 = sub_22609A078();
            v50 = v51;
            v53 = sub_22609A4F8();
            if (os_log_type_enabled(v52, v51))
            {
              v25 = v105;
              v40 = sub_22609A188();
              v36 = v40;
              v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v38 = 0;
              v41 = sub_225EF5468(0);
              v39 = v41;
              v42 = sub_225EF5468(v38);
              v153 = v40;
              v152 = v41;
              v151 = v42;
              v43 = 0;
              v44 = &v153;
              sub_225EF54BC(0, &v153);
              sub_225EF54BC(v43, v44);
              v150[2] = v53;
              v45 = &v32;
              MEMORY[0x28223BE20](&v32, v26, v27, v28);
              v46 = &v32 - 6;
              *(&v32 - 4) = v29;
              *(&v32 - 3) = &v152;
              *(&v32 - 2) = &v151;
              v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
              sub_225EFE598();
              sub_226099C28();
              v48 = v25;
              if (v25)
              {
                __break(1u);
              }

              else
              {
                _os_log_impl(&dword_225EEB000, v49, v50, "ASRFullPayloadCorrectionWorker::Individual Biome record accepted", v36, 2u);
                v34 = 0;
                sub_225EF7AF4(v39);
                sub_225EF7AF4(v42);
                sub_22609A168();

                v35 = v48;
              }
            }

            else
            {

              v35 = v105;
            }

            v33 = v35;

            v106(v132, v128);
            v30 = v126;
            v155 = v126;
            v32 = &v154;
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786678, &qword_2260A0658);
            sub_226099CE8();
            swift_endAccess();

            v102 = 1;
            v103 = v33;
          }

          else
          {

            v102 = 1;
            v103 = v105;
          }
        }

        else
        {

          v102 = 1;
          v103 = v105;
        }
      }

      else
      {
LABEL_28:

        v102 = 1;
        v103 = v105;
      }
    }

    else
    {

      v102 = 0;
      v103 = v105;
    }
  }

  else
  {
    v102 = 0;
    v103 = v105;
  }

  return v102 & 1;
}